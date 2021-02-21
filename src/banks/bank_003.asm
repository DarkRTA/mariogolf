; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    db $fe, $4b

    ld b, l                                       ; $4002: $45
    ld c, e                                       ; $4003: $4b

    db $60, $4c, $89, $4b

    pop af                                        ; $4008: $f1
    ld c, h                                       ; $4009: $4c

    db $41, $4d, $93, $4d, $f0, $4d, $7d, $4f

    or a                                          ; $4012: $b7
    ld c, a                                       ; $4013: $4f
    add hl, sp                                    ; $4014: $39
    ld d, b                                       ; $4015: $50

    db $87, $50, $6a, $4e, $b8, $4e, $dc, $4e, $02, $4f, $58, $4f, $21, $4f, $6c, $4f

    call $cd50                                    ; $4026: $cd $50 $cd
    or [hl]                                       ; $4029: $b6
    inc hl                                        ; $402a: $23
    xor a                                         ; $402b: $af
    ldh [$c1], a                                  ; $402c: $e0 $c1
    call Call_000_304d                            ; $402e: $cd $4d $30
    call Call_000_0341                            ; $4031: $cd $41 $03
    ld a, $01                                     ; $4034: $3e $01
    ldh [$96], a                                  ; $4036: $e0 $96
    ldh [rSVBK], a                                ; $4038: $e0 $70
    call Call_000_2683                            ; $403a: $cd $83 $26
    ld hl, $40ab                                  ; $403d: $21 $ab $40
    ld de, $d000                                  ; $4040: $11 $00 $d0
    call Call_000_1f2f                            ; $4043: $cd $2f $1f
    ld hl, $d000                                  ; $4046: $21 $00 $d0
    ld de, $b000                                  ; $4049: $11 $00 $b0
    ld c, $80                                     ; $404c: $0e $80
    call Call_000_04db                            ; $404e: $cd $db $04
    ld hl, $d800                                  ; $4051: $21 $00 $d8
    ld de, $a800                                  ; $4054: $11 $00 $a8
    ld c, $80                                     ; $4057: $0e $80
    call Call_000_04db                            ; $4059: $cd $db $04
    ld hl, $4950                                  ; $405c: $21 $50 $49
    ld de, $d000                                  ; $405f: $11 $00 $d0
    call Call_000_1f2f                            ; $4062: $cd $2f $1f
    ld hl, $d000                                  ; $4065: $21 $00 $d0
    ld de, $9800                                  ; $4068: $11 $00 $98
    ld c, $40                                     ; $406b: $0e $40
    call Call_000_04db                            ; $406d: $cd $db $04
    ld hl, $4a9e                                  ; $4070: $21 $9e $4a
    ld de, $d000                                  ; $4073: $11 $00 $d0
    call Call_000_1f2f                            ; $4076: $cd $2f $1f
    ld hl, $d000                                  ; $4079: $21 $00 $d0
    ld de, $b800                                  ; $407c: $11 $00 $b8
    ld c, $40                                     ; $407f: $0e $40
    call Call_000_04db                            ; $4081: $cd $db $04
    xor a                                         ; $4084: $af
    ldh [$8b], a                                  ; $4085: $e0 $8b
    ldh [$8a], a                                  ; $4087: $e0 $8a
    ld a, $07                                     ; $4089: $3e $07
    ldh [rWX], a                                  ; $408b: $e0 $4b
    ld a, $90                                     ; $408d: $3e $90
    ldh [rWY], a                                  ; $408f: $e0 $4a
    ld hl, $4b05                                  ; $4091: $21 $05 $4b
    ld de, $0008                                  ; $4094: $11 $08 $00
    call Call_000_056c                            ; $4097: $cd $6c $05
    call Call_000_05f6                            ; $409a: $cd $f6 $05
    call Call_000_0371                            ; $409d: $cd $71 $03
    rst $08                                       ; $40a0: $cf
    ld b, $cd                                     ; $40a1: $06 $cd
    add d                                         ; $40a3: $82
    cpl                                           ; $40a4: $2f
    ldh a, [$94]                                  ; $40a5: $f0 $94
    or a                                          ; $40a7: $b7
    jr z, @-$06                                   ; $40a8: $28 $f8

    ret                                           ; $40aa: $c9


    sub l                                         ; $40ab: $95
    nop                                           ; $40ac: $00
    rst $38                                       ; $40ad: $ff
    db $ec                                        ; $40ae: $ec
    rst $38                                       ; $40af: $ff
    rst $38                                       ; $40b0: $ff
    db $ec                                        ; $40b1: $ec
    nop                                           ; $40b2: $00
    cp $ed                                        ; $40b3: $fe $ed
    rst $08                                       ; $40b5: $cf
    db $e4                                        ; $40b6: $e4
    add d                                         ; $40b7: $82
    cp a                                          ; $40b8: $bf
    nop                                           ; $40b9: $00
    ld [de], a                                    ; $40ba: $12
    nop                                           ; $40bb: $00
    ld [hl], $00                                  ; $40bc: $36 $00
    ld h, [hl]                                    ; $40be: $66
    pop bc                                        ; $40bf: $c1
    ld [c], a                                     ; $40c0: $e2
    inc b                                         ; $40c1: $04
    rst $38                                       ; $40c2: $ff
    nop                                           ; $40c3: $00
    ld [$1900], sp                                ; $40c4: $08 $00 $19
    nop                                           ; $40c7: $00
    inc de                                        ; $40c8: $13
    nop                                           ; $40c9: $00
    inc sp                                        ; $40ca: $33
    jp Jump_000_3700                              ; $40cb: $c3 $00 $37


    cp a                                          ; $40ce: $bf
    ldh [$ce], a                                  ; $40cf: $e0 $ce
    push hl                                       ; $40d1: $e5
    push de                                       ; $40d2: $d5
    ldh [$fa], a                                  ; $40d3: $e0 $fa
    pop hl                                        ; $40d5: $e1
    rst $38                                       ; $40d6: $ff
    add b                                         ; $40d7: $80
    add $fd                                       ; $40d8: $c6 $fd
    ldh [$c8], a                                  ; $40da: $e0 $c8
    or a                                          ; $40dc: $b7
    ld a, [$f4e0]                                 ; $40dd: $fa $e0 $f4
    db $e3                                        ; $40e0: $e3
    and $e2                                       ; $40e1: $e6 $e2
    xor l                                         ; $40e3: $ad
    ld d, d                                       ; $40e4: $52
    cp e                                          ; $40e5: $bb
    ld b, b                                       ; $40e6: $40
    cp a                                          ; $40e7: $bf
    and d                                         ; $40e8: $a2
    db $e3                                        ; $40e9: $e3
    rst $38                                       ; $40ea: $ff
    rst $38                                       ; $40eb: $ff
    ld bc, $e0fd                                  ; $40ec: $01 $fd $e0
    ld l, e                                       ; $40ef: $6b
    pop af                                        ; $40f0: $f1
    sub l                                         ; $40f1: $95
    ld a, [$92e0]                                 ; $40f2: $fa $e0 $92
    db $e4                                        ; $40f5: $e4
    adc $e1                                       ; $40f6: $ce $e1
    and e                                         ; $40f8: $a3
    call c, $a1de                                 ; $40f9: $dc $de $a1
    db $fc                                        ; $40fc: $fc
    adc $e3                                       ; $40fd: $ce $e3
    ld l, a                                       ; $40ff: $6f
    pop hl                                        ; $4100: $e1
    nop                                           ; $4101: $00
    rst $38                                       ; $4102: $ff
    dec l                                         ; $4103: $2d
    jp nc, Jump_000_0df2                          ; $4104: $d2 $f2 $0d

    cp h                                          ; $4107: $bc
    ld h, l                                       ; $4108: $65
    db $e3                                        ; $4109: $e3
    adc $e3                                       ; $410a: $ce $e3
    dec de                                        ; $410c: $1b
    push hl                                       ; $410d: $e5
    push af                                       ; $410e: $f5
    dec bc                                        ; $410f: $0b
    adc $e3                                       ; $4110: $ce $e3
    ld l, [hl]                                    ; $4112: $6e
    adc $5f                                       ; $4113: $ce $5f
    db $ec                                        ; $4115: $ec
    ld [hl], a                                    ; $4116: $77
    nop                                           ; $4117: $00
    ld a, a                                       ; $4118: $7f
    cp $e0                                        ; $4119: $fe $e0
    ld c, c                                       ; $411b: $49
    pop hl                                        ; $411c: $e1
    rst $30                                       ; $411d: $f7
    ld [$f30f], sp                                ; $411e: $08 $0f $f3
    inc c                                         ; $4121: $0c
    ld sp, hl                                     ; $4122: $f9
    ld b, $2f                                     ; $4123: $06 $2f
    jp hl                                         ; $4125: $e9


    or h                                          ; $4126: $b4
    db $e3                                        ; $4127: $e3
    ld h, [hl]                                    ; $4128: $66
    push hl                                       ; $4129: $e5
    ld e, [hl]                                    ; $412a: $5e
    db $e3                                        ; $412b: $e3
    rst $38                                       ; $412c: $ff
    cp h                                          ; $412d: $bc
    jp $9ce3                                      ; $412e: $c3 $e3 $9c


    sbc a                                         ; $4131: $9f
    ldh [$f0], a                                  ; $4132: $e0 $f0
    adc a                                         ; $4134: $8f
    rst $38                                       ; $4135: $ff
    adc a                                         ; $4136: $8f
    ldh a, [$f0]                                  ; $4137: $f0 $f0
    adc a                                         ; $4139: $8f
    rst $18                                       ; $413a: $df
    and b                                         ; $413b: $a0
    add b                                         ; $413c: $80
    rst $38                                       ; $413d: $ff
    rst $38                                       ; $413e: $ff
    adc $31                                       ; $413f: $ce $31
    add hl, sp                                    ; $4141: $39
    add $c7                                       ; $4142: $c6 $c7
    jr c, jr_003_41be                             ; $4144: $38 $78

    add a                                         ; $4146: $87
    rst $38                                       ; $4147: $ff
    adc a                                         ; $4148: $8f
    ld [hl], b                                    ; $4149: $70
    ldh a, [rIF]                                  ; $414a: $f0 $0f
    rra                                           ; $414c: $1f
    ldh [rP1], a                                  ; $414d: $e0 $00
    rst $38                                       ; $414f: $ff
    rst $38                                       ; $4150: $ff
    call z, Call_000_3b33                         ; $4151: $cc $33 $3b
    call nz, Call_000_39c6                        ; $4154: $c4 $c6 $39
    ld a, c                                       ; $4157: $79
    add [hl]                                      ; $4158: $86
    sbc $f0                                       ; $4159: $de $f0
    push hl                                       ; $415b: $e5
    dec e                                         ; $415c: $1d
    db $e3                                        ; $415d: $e3
    rst $20                                       ; $415e: $e7
    add hl, de                                    ; $415f: $19
    add d                                         ; $4160: $82
    pop hl                                        ; $4161: $e1
    rrca                                          ; $4162: $0f
    pop af                                        ; $4163: $f1
    rst $28                                       ; $4164: $ef
    ld sp, hl                                     ; $4165: $f9
    rlca                                          ; $4166: $07
    rlca                                          ; $4167: $07
    ld sp, hl                                     ; $4168: $f9
    ld c, d                                       ; $4169: $4a
    pop hl                                        ; $416a: $e1
    ret                                           ; $416b: $c9


    rst $30                                       ; $416c: $f7
    jp z, $f57f                                   ; $416d: $ca $7f $f5

    set 6, h                                      ; $4170: $cb $f4
    ret                                           ; $4172: $c9


    or $cb                                        ; $4173: $f6 $cb
    db $f4                                        ; $4175: $f4
    cp $e1                                        ; $4176: $fe $e1
    cp $c0                                        ; $4178: $fe $c0
    pop bc                                        ; $417a: $c1
    ld a, a                                       ; $417b: $7f
    rst $38                                       ; $417c: $ff
    rra                                           ; $417d: $1f
    rst $38                                       ; $417e: $ff
    ld c, a                                       ; $417f: $4f
    cp a                                          ; $4180: $bf
    ld c, a                                       ; $4181: $4f
    rst $38                                       ; $4182: $ff
    cp a                                          ; $4183: $bf
    dec hl                                        ; $4184: $2b
    rst $18                                       ; $4185: $df
    ld l, e                                       ; $4186: $6b
    rst $18                                       ; $4187: $df
    rst $18                                       ; $4188: $df
    jr nz, @-$2f                                  ; $4189: $20 $cf

    rst $38                                       ; $418b: $ff
    jr nc, jr_003_41f5                            ; $418c: $30 $67

    sbc b                                         ; $418e: $98
    ld h, a                                       ; $418f: $67
    sbc b                                         ; $4190: $98
    inc hl                                        ; $4191: $23
    call c, $ff23                                 ; $4192: $dc $23 $ff
    call c, $fe01                                 ; $4195: $dc $01 $fe
    ld bc, $f8fe                                  ; $4198: $01 $fe $f8
    rlca                                          ; $419b: $07
    db $fc                                        ; $419c: $fc
    rst $38                                       ; $419d: $ff

jr_003_419e:
    inc bc                                        ; $419e: $03
    sbc h                                         ; $419f: $9c
    ld h, e                                       ; $41a0: $63
    call z, Call_003_6633                         ; $41a1: $cc $33 $66
    sbc c                                         ; $41a4: $99
    ld h, [hl]                                    ; $41a5: $66
    rra                                           ; $41a6: $1f
    sbc c                                         ; $41a7: $99
    ld [hl+], a                                   ; $41a8: $22
    db $dd                                        ; $41a9: $dd
    ld [bc], a                                    ; $41aa: $02
    db $fd                                        ; $41ab: $fd
    ld a, [$62c5]                                 ; $41ac: $fa $c5 $62
    db $eb                                        ; $41af: $eb
    sub a                                         ; $41b0: $97
    jp nz, $83fe                                  ; $41b1: $c2 $fe $83

    jp $9b80                                      ; $41b4: $c3 $80 $9b


    db $e4                                        ; $41b7: $e4
    or $89                                        ; $41b8: $f6 $89
    call $ffb2                                    ; $41ba: $cd $b2 $ff
    cp e                                          ; $41bd: $bb

jr_003_41be:
    call nz, $99e6                                ; $41be: $c4 $e6 $99
    sbc c                                         ; $41c1: $99
    and $f7                                       ; $41c2: $e6 $f7
    adc b                                         ; $41c4: $88
    rst $38                                       ; $41c5: $ff
    rst $38                                       ; $41c6: $ff
    nop                                           ; $41c7: $00
    rst $08                                       ; $41c8: $cf
    jr nc, jr_003_423b                            ; $41c9: $30 $70

    adc a                                         ; $41cb: $8f
    adc a                                         ; $41cc: $8f
    ld [hl], b                                    ; $41cd: $70
    rst $38                                       ; $41ce: $ff
    halt                                          ; $41cf: $76
    adc c                                         ; $41d0: $89
    sbc c                                         ; $41d1: $99
    ld h, [hl]                                    ; $41d2: $66
    and $19                                       ; $41d3: $e6 $19
    jr c, jr_003_419e                             ; $41d5: $38 $c7

    rst $38                                       ; $41d7: $ff
    rst $38                                       ; $41d8: $ff
    nop                                           ; $41d9: $00
    jp $fc3c                                      ; $41da: $c3 $3c $fc


    inc bc                                        ; $41dd: $03
    inc bc                                        ; $41de: $03

jr_003_41df:
    db $fc                                        ; $41df: $fc
    rst $38                                       ; $41e0: $ff
    db $fc                                        ; $41e1: $fc
    inc bc                                        ; $41e2: $03
    daa                                           ; $41e3: $27
    ret c                                         ; $41e4: $d8

    call c, Call_000_3323                         ; $41e5: $dc $23 $33
    call z, $ffff                                 ; $41e8: $cc $ff $ff
    ld bc, $619f                                  ; $41eb: $01 $9f $61
    ld [hl], c                                    ; $41ee: $71
    adc a                                         ; $41ef: $8f
    adc a                                         ; $41f0: $8f
    ld [hl], c                                    ; $41f1: $71
    rst $38                                       ; $41f2: $ff
    ld a, c                                       ; $41f3: $79
    add a                                         ; $41f4: $87

jr_003_41f5:
    rst $00                                       ; $41f5: $c7
    add hl, sp                                    ; $41f6: $39
    dec a                                         ; $41f7: $3d

jr_003_41f8:
    jp $1de3                                      ; $41f8: $c3 $e3 $1d


    cp $6a                                        ; $41fb: $fe $6a
    pop hl                                        ; $41fd: $e1
    call $cdf2                                    ; $41fe: $cd $f2 $cd
    or $c9                                        ; $4201: $f6 $c9
    or $cd                                        ; $4203: $f6 $cd
    db $fd                                        ; $4205: $fd
    ld a, [c]                                     ; $4206: $f2
    ld e, [hl]                                    ; $4207: $5e
    pop hl                                        ; $4208: $e1

jr_003_4209:
    ld l, e                                       ; $4209: $6b
    rst $18                                       ; $420a: $df
    dec hl                                        ; $420b: $2b
    rst $18                                       ; $420c: $df
    ld c, e                                       ; $420d: $4b
    cp a                                          ; $420e: $bf
    sbc $fe                                       ; $420f: $de $fe
    db $e3                                        ; $4211: $e3
    dec bc                                        ; $4212: $0b
    rst $38                                       ; $4213: $ff
    ld c, e                                       ; $4214: $4b
    cp a                                          ; $4215: $bf
    jr nz, jr_003_41df                            ; $4216: $20 $c7

    ld bc, $f7ff                                  ; $4218: $01 $ff $f7
    inc bc                                        ; $421b: $03
    rst $38                                       ; $421c: $ff
    rlca                                          ; $421d: $07
    db $10                                        ; $421e: $10
    jp nz, $ff10                                  ; $421f: $c2 $10 $ff

    ld h, b                                       ; $4222: $60
    rst $38                                       ; $4223: $ff

jr_003_4224:
    dec e                                         ; $4224: $1d
    ret nz                                        ; $4225: $c0

    ld c, b                                       ; $4226: $48
    ret nz                                        ; $4227: $c0

    adc b                                         ; $4228: $88
    rst $38                                       ; $4229: $ff
    jr jr_003_41f8                                ; $422a: $18 $cc

    add $c4                                       ; $422c: $c6 $c4
    rst $00                                       ; $422e: $c7
    push af                                       ; $422f: $f5
    xor c                                         ; $4230: $a9
    rst $18                                       ; $4231: $df
    rst $38                                       ; $4232: $ff
    nop                                           ; $4233: $00
    rrca                                          ; $4234: $0f
    rst $38                                       ; $4235: $ff
    sbc [hl]                                      ; $4236: $9e
    cp $e0                                        ; $4237: $fe $e0
    cp [hl]                                       ; $4239: $be
    rst $38                                       ; $423a: $ff

jr_003_423b:
    rst $30                                       ; $423b: $f7
    inc a                                         ; $423c: $3c
    rst $38                                       ; $423d: $ff
    ld a, l                                       ; $423e: $7d
    cp $e0                                        ; $423f: $fe $e0
    rst $38                                       ; $4241: $ff
    rst $38                                       ; $4242: $ff
    jr nc, @+$01                                  ; $4243: $30 $ff

    rst $38                                       ; $4245: $ff
    ld [hl], b                                    ; $4246: $70
    rst $38                                       ; $4247: $ff
    ld [hl], c                                    ; $4248: $71
    rst $38                                       ; $4249: $ff
    db $e3                                        ; $424a: $e3
    rst $38                                       ; $424b: $ff
    rst $20                                       ; $424c: $e7
    rst $38                                       ; $424d: $ff
    db $fd                                        ; $424e: $fd
    rst $28                                       ; $424f: $ef
    or l                                          ; $4250: $b5
    and d                                         ; $4251: $a2
    inc c                                         ; $4252: $0c
    di                                            ; $4253: $f3
    ei                                            ; $4254: $fb
    inc b                                         ; $4255: $04
    call z, $fb33                                 ; $4256: $cc $33 $fb
    scf                                           ; $4259: $37
    ret z                                         ; $425a: $c8

    or d                                          ; $425b: $b2
    pop bc                                        ; $425c: $c1
    pop hl                                        ; $425d: $e1
    ld e, $00                                     ; $425e: $1e $00
    rst $38                                       ; $4260: $ff
    rst $00                                       ; $4261: $c7
    ld a, a                                       ; $4262: $7f
    jr c, jr_003_4224                             ; $4263: $38 $bf

    ld b, b                                       ; $4265: $40
    ld [hl], b                                    ; $4266: $70
    adc a                                         ; $4267: $8f
    rst $08                                       ; $4268: $cf
    jr nc, jr_003_4209                            ; $4269: $30 $9e

    pop bc                                        ; $426b: $c1
    rst $38                                       ; $426c: $ff
    di                                            ; $426d: $f3
    inc c                                         ; $426e: $0c
    nop                                           ; $426f: $00
    rst $38                                       ; $4270: $ff
    ld a, $c1                                     ; $4271: $3e $c1
    pop bc                                        ; $4273: $c1
    ld a, $ff                                     ; $4274: $3e $ff
    ld a, a                                       ; $4276: $7f
    add b                                         ; $4277: $80
    add b                                         ; $4278: $80
    ld a, a                                       ; $4279: $7f
    ld a, a                                       ; $427a: $7f
    add b                                         ; $427b: $80
    ret nz                                        ; $427c: $c0

    ccf                                           ; $427d: $3f
    rst $38                                       ; $427e: $ff
    ccf                                           ; $427f: $3f
    ret nz                                        ; $4280: $c0

    nop                                           ; $4281: $00
    rst $38                                       ; $4282: $ff
    ccf                                           ; $4283: $3f
    ret nz                                        ; $4284: $c0

    ldh [$1f], a                                  ; $4285: $e0 $1f
    rst $38                                       ; $4287: $ff
    rra                                           ; $4288: $1f
    ldh [$f0], a                                  ; $4289: $e0 $f0
    rrca                                          ; $428b: $0f
    adc a                                         ; $428c: $8f
    ld [hl], b                                    ; $428d: $70
    ld [hl], b                                    ; $428e: $70
    adc a                                         ; $428f: $8f
    rst $38                                       ; $4290: $ff
    rst $18                                       ; $4291: $df
    jr nz, jr_003_4294                            ; $4292: $20 $00

jr_003_4294:
    rst $38                                       ; $4294: $ff
    cp d                                          ; $4295: $ba
    ld a, l                                       ; $4296: $7d
    ld b, l                                       ; $4297: $45
    add $ff                                       ; $4298: $c6 $ff
    rst $00                                       ; $429a: $c7
    ld b, h                                       ; $429b: $44
    ld b, h                                       ; $429c: $44
    rst $00                                       ; $429d: $c7
    rst $00                                       ; $429e: $c7
    ld b, h                                       ; $429f: $44
    call nz, $ff47                                ; $42a0: $c4 $47 $ff
    ld b, a                                       ; $42a3: $47
    call nz, $c744                                ; $42a4: $c4 $44 $c7
    rst $20                                       ; $42a7: $e7
    jr jr_003_42e2                                ; $42a8: $18 $38

    rst $00                                       ; $42aa: $c7
    rst $38                                       ; $42ab: $ff
    adc a                                         ; $42ac: $8f
    ld [hl], b                                    ; $42ad: $70
    ld e, b                                       ; $42ae: $58
    cp a                                          ; $42af: $bf
    xor a                                         ; $42b0: $af
    ld h, h                                       ; $42b1: $64
    rst $20                                       ; $42b2: $e7
    daa                                           ; $42b3: $27
    rst $38                                       ; $42b4: $ff
    inc h                                         ; $42b5: $24
    db $e4                                        ; $42b6: $e4
    inc h                                         ; $42b7: $24
    db $e4                                        ; $42b8: $e4
    inc c                                         ; $42b9: $0c
    di                                            ; $42ba: $f3
    ld sp, hl                                     ; $42bb: $f9
    rlca                                          ; $42bc: $07
    rst $38                                       ; $42bd: $ff
    swap [hl]                                     ; $42be: $cb $36
    ld [hl], $cc                                  ; $42c0: $36 $cc
    db $f4                                        ; $42c2: $f4
    inc c                                         ; $42c3: $0c
    sbc h                                         ; $42c4: $9c
    db $e4                                        ; $42c5: $e4
    rst $28                                       ; $42c6: $ef
    db $f4                                        ; $42c7: $f4
    ld a, h                                       ; $42c8: $7c
    jr jr_003_42d7                                ; $42c9: $18 $0c

    and b                                         ; $42cb: $a0
    ldh [$c0], a                                  ; $42cc: $e0 $c0
    ld [hl], b                                    ; $42ce: $70
    ld c, a                                       ; $42cf: $4f
    rst $38                                       ; $42d0: $ff
    ld c, a                                       ; $42d1: $4f
    ld [hl], b                                    ; $42d2: $70
    ld a, b                                       ; $42d3: $78
    ld b, a                                       ; $42d4: $47
    ld [hl], a                                    ; $42d5: $77
    ld a, b                                       ; $42d6: $78

jr_003_42d7:
    ld c, e                                       ; $42d7: $4b
    ld c, h                                       ; $42d8: $4c
    ei                                            ; $42d9: $fb
    ld c, b                                       ; $42da: $48
    rrca                                          ; $42db: $0f
    ret nc                                        ; $42dc: $d0

    db $e3                                        ; $42dd: $e3
    ld a, b                                       ; $42de: $78
    add a                                         ; $42df: $87
    add a                                         ; $42e0: $87
    ld a, b                                       ; $42e1: $78

jr_003_42e2:
    ld hl, sp-$09                                 ; $42e2: $f8 $f7
    rlca                                          ; $42e4: $07
    rlca                                          ; $42e5: $07
    ld hl, sp+$6a                                 ; $42e6: $f8 $6a
    and c                                         ; $42e8: $a1
    inc a                                         ; $42e9: $3c
    jp Jump_000_38c7                              ; $42ea: $c3 $c7 $38


    rst $38                                       ; $42ed: $ff
    ld sp, hl                                     ; $42ee: $f9
    ld b, $0e                                     ; $42ef: $06 $0e
    pop af                                        ; $42f1: $f1
    or $09                                        ; $42f2: $f6 $09
    add hl, de                                    ; $42f4: $19
    and $fd                                       ; $42f5: $e6 $fd
    rst $20                                       ; $42f7: $e7
    rra                                           ; $42f8: $1f
    ldh [$dc], a                                  ; $42f9: $e0 $dc
    inc hl                                        ; $42fb: $23
    ld h, a                                       ; $42fc: $67
    sbc b                                         ; $42fd: $98
    cp b                                          ; $42fe: $b8
    ld b, a                                       ; $42ff: $47
    rst $38                                       ; $4300: $ff
    rst $08                                       ; $4301: $cf
    jr nc, @-$08                                  ; $4302: $30 $f6

    add hl, bc                                    ; $4304: $09
    add hl, sp                                    ; $4305: $39
    add $cf                                       ; $4306: $c6 $cf
    jr nc, jr_003_4385                            ; $4308: $30 $7b

    rst $38                                       ; $430a: $ff
    nop                                           ; $430b: $00
    ld h, d                                       ; $430c: $62
    pop hl                                        ; $430d: $e1
    ld sp, $fece                                  ; $430e: $31 $ce $fe
    ld bc, $c1ac                                  ; $4311: $01 $ac $c1
    rst $38                                       ; $4314: $ff
    adc a                                         ; $4315: $8f
    ld [hl], b                                    ; $4316: $70
    rst $38                                       ; $4317: $ff
    nop                                           ; $4318: $00
    sbc d                                         ; $4319: $9a
    ld h, l                                       ; $431a: $65
    halt                                          ; $431b: $76
    adc c                                         ; $431c: $89
    rst $28                                       ; $431d: $ef
    call Call_000_3b32                            ; $431e: $cd $32 $3b
    call nz, $e1d0                                ; $4321: $c4 $d0 $e1
    rst $30                                       ; $4324: $f7
    ld [$fdc7], sp                                ; $4325: $08 $c7 $fd
    ld b, h                                       ; $4328: $44
    halt                                          ; $4329: $76
    pop hl                                        ; $432a: $e1
    rst $00                                       ; $432b: $c7
    ld b, e                                       ; $432c: $43
    ld b, b                                       ; $432d: $40
    ret nz                                        ; $432e: $c0

    ret nz                                        ; $432f: $c0

    ld b, b                                       ; $4330: $40
    rst $38                                       ; $4331: $ff
    ret nz                                        ; $4332: $c0

    ld b, b                                       ; $4333: $40
    ccf                                           ; $4334: $3f
    rst $38                                       ; $4335: $ff
    db $e4                                        ; $4336: $e4
    inc h                                         ; $4337: $24
    and h                                         ; $4338: $a4
    ld h, h                                       ; $4339: $64
    rst $38                                       ; $433a: $ff
    inc h                                         ; $433b: $24
    db $e4                                        ; $433c: $e4
    call nz, Call_000_24e4                        ; $433d: $c4 $e4 $24
    inc h                                         ; $4340: $24
    inc [hl]                                      ; $4341: $34
    inc h                                         ; $4342: $24
    rst $38                                       ; $4343: $ff
    inc [hl]                                      ; $4344: $34
    inc [hl]                                      ; $4345: $34
    set 7, a                                      ; $4346: $cb $ff
    inc c                                         ; $4348: $0c
    inc b                                         ; $4349: $04
    inc b                                         ; $434a: $04
    inc b                                         ; $434b: $04
    rst $30                                       ; $434c: $f7
    ld h, h                                       ; $434d: $64
    ld b, h                                       ; $434e: $44
    ld h, h                                       ; $434f: $64
    rst $38                                       ; $4350: $ff
    db $e4                                        ; $4351: $e4
    sbc e                                         ; $4352: $9b
    rst $38                                       ; $4353: $ff
    rra                                           ; $4354: $1f
    ld [$34ff], sp                                ; $4355: $08 $ff $34
    dec sp                                        ; $4358: $3b
    scf                                           ; $4359: $37
    jr jr_003_436c                                ; $435a: $18 $10

    rra                                           ; $435c: $1f
    dec de                                        ; $435d: $1b
    inc c                                         ; $435e: $0c
    cp a                                          ; $435f: $bf
    ld c, [hl]                                    ; $4360: $4e
    ld b, l                                       ; $4361: $45
    ld h, l                                       ; $4362: $65
    ld b, [hl]                                    ; $4363: $46
    cp c                                          ; $4364: $b9
    cp $50                                        ; $4365: $fe $50
    jp $ff9b                                      ; $4367: $c3 $9b $ff


    ld h, h                                       ; $436a: $64
    ld l, h                                       ; $436b: $6c

jr_003_436c:
    sub e                                         ; $436c: $93
    rst $00                                       ; $436d: $c7
    jr c, @-$06                                   ; $436e: $38 $f8

    rlca                                          ; $4370: $07
    rrca                                          ; $4371: $0f
    ld a, a                                       ; $4372: $7f
    ldh a, [rIE]                                  ; $4373: $f0 $ff
    nop                                           ; $4375: $00
    sbc [hl]                                      ; $4376: $9e
    ld h, c                                       ; $4377: $61
    ld [hl], c                                    ; $4378: $71
    adc [hl]                                      ; $4379: $8e
    ld e, [hl]                                    ; $437a: $5e
    pop hl                                        ; $437b: $e1
    rst $38                                       ; $437c: $ff
    rst $00                                       ; $437d: $c7
    jr c, @+$3e                                   ; $437e: $38 $3c

    jp $1ce3                                      ; $4380: $c3 $e3 $1c


    ld e, $e1                                     ; $4383: $1e $e1

jr_003_4385:
    rst $38                                       ; $4385: $ff
    di                                            ; $4386: $f3
    inc c                                         ; $4387: $0c
    rrca                                          ; $4388: $0f
    ldh a, [$d8]                                  ; $4389: $f0 $d8
    ccf                                           ; $438b: $3f
    xor a                                         ; $438c: $af
    ld h, h                                       ; $438d: $64
    ei                                            ; $438e: $fb
    ld h, a                                       ; $438f: $67
    and a                                         ; $4390: $a7
    xor e                                         ; $4391: $ab
    ldh [$e4], a                                  ; $4392: $e0 $e4
    ld [hl-], a                                   ; $4394: $32
    call Call_000_02fd                            ; $4395: $cd $fd $02
    ei                                            ; $4398: $fb
    inc bc                                        ; $4399: $03
    db $fc                                        ; $439a: $fc
    ld [hl], d                                    ; $439b: $72
    ldh [rIE], a                                  ; $439c: $e0 $ff
    cp h                                          ; $439e: $bc
    call nz, Call_003_7cf4                        ; $439f: $c4 $f4 $7c
    rst $38                                       ; $43a2: $ff
    dec de                                        ; $43a3: $1b
    rrca                                          ; $43a4: $0f
    ld a, c                                       ; $43a5: $79
    add [hl]                                      ; $43a6: $86
    add $39                                       ; $43a7: $c6 $39
    ld e, a                                       ; $43a9: $5f
    ldh [rIE], a                                  ; $43aa: $e0 $ff
    and b                                         ; $43ac: $a0
    cp a                                          ; $43ad: $bf
    or a                                          ; $43ae: $b7
    cp b                                          ; $43af: $b8
    ld [$0d0f], sp                                ; $43b0: $08 $0f $0d
    dec bc                                        ; $43b3: $0b
    rst $38                                       ; $43b4: $ff
    or e                                          ; $43b5: $b3
    cp [hl]                                       ; $43b6: $be
    call z, Call_000_3a33                         ; $43b7: $cc $33 $3a
    push bc                                       ; $43ba: $c5
    call nz, Call_003_7f3b                        ; $43bb: $c4 $3b $7f
    ld a, c                                       ; $43be: $79
    add [hl]                                      ; $43bf: $86

jr_003_43c0:
    ld [hl], e                                    ; $43c0: $73
    rst $38                                       ; $43c1: $ff
    ret c                                         ; $43c2: $d8

    adc h                                         ; $43c3: $8c
    adc h                                         ; $43c4: $8c
    add h                                         ; $43c5: $84
    ldh [$ef], a                                  ; $43c6: $e0 $ef
    dec sp                                        ; $43c8: $3b
    call nz, $837c                                ; $43c9: $c4 $7c $83
    and [hl]                                      ; $43cc: $a6
    pop hl                                        ; $43cd: $e1
    ld h, [hl]                                    ; $43ce: $66
    rst $38                                       ; $43cf: $ff
    pop af                                        ; $43d0: $f1
    rst $38                                       ; $43d1: $ff
    sbc c                                         ; $43d2: $99
    sbc c                                         ; $43d3: $99
    ld [$0808], sp                                ; $43d4: $08 $08 $08
    jr jr_003_43c0                                ; $43d7: $18 $e7

    or d                                          ; $43d9: $b2
    rst $38                                       ; $43da: $ff
    ld c, l                                       ; $43db: $4d
    cpl                                           ; $43dc: $2f
    ret nc                                        ; $43dd: $d0

    ld l, b                                       ; $43de: $68
    sub a                                         ; $43df: $97
    jp c, $eee5                                   ; $43e0: $da $e5 $ee

    rst $38                                       ; $43e3: $ff
    ccf                                           ; $43e4: $3f
    inc sp                                        ; $43e5: $33
    ld de, $1111                                  ; $43e6: $11 $11 $11
    ld a, [de]                                    ; $43e9: $1a
    push hl                                       ; $43ea: $e5
    ld h, e                                       ; $43eb: $63
    rst $38                                       ; $43ec: $ff
    sbc a                                         ; $43ed: $9f
    call nz, $943c                                ; $43ee: $c4 $3c $94
    ld l, h                                       ; $43f1: $6c
    inc d                                         ; $43f2: $14
    db $ec                                        ; $43f3: $ec

jr_003_43f4:
    db $ec                                        ; $43f4: $ec
    rst $38                                       ; $43f5: $ff
    inc d                                         ; $43f6: $14
    cp b                                          ; $43f7: $b8
    ld a, h                                       ; $43f8: $7c
    ld h, [hl]                                    ; $43f9: $66
    call nz, $cb34                                ; $43fa: $c4 $34 $cb
    call c, $e3ff                                 ; $43fd: $dc $ff $e3
    ld h, e                                       ; $4400: $63
    inc a                                         ; $4401: $3c
    ld [hl], $19                                  ; $4402: $36 $19
    dec de                                        ; $4404: $1b
    rrca                                          ; $4405: $0f
    ld [$0cff], sp                                ; $4406: $08 $ff $0c
    ld c, h                                       ; $4409: $4c
    ld b, h                                       ; $440a: $44
    ld c, a                                       ; $440b: $4f
    ld b, a                                       ; $440c: $47
    ld a, c                                       ; $440d: $79
    add [hl]                                      ; $440e: $86
    ld b, [hl]                                    ; $440f: $46
    ld l, l                                       ; $4410: $6d
    cp c                                          ; $4411: $b9
    and b                                         ; $4412: $a0
    push hl                                       ; $4413: $e5
    add hl, bc                                    ; $4414: $09
    rrca                                          ; $4415: $0f
    and b                                         ; $4416: $a0
    pop hl                                        ; $4417: $e1
    dec sp                                        ; $4418: $3b
    call nz, $81f0                                ; $4419: $c4 $f0 $81
    rst $38                                       ; $441c: $ff
    ld [hl], a                                    ; $441d: $77
    ld hl, sp-$28                                 ; $441e: $f8 $d8
    adc a                                         ; $4420: $8f
    adc [hl]                                      ; $4421: $8e
    dec b                                         ; $4422: $05
    dec b                                         ; $4423: $05
    rlca                                          ; $4424: $07
    rst $38                                       ; $4425: $ff
    db $ed                                        ; $4426: $ed
    ld e, $1a                                     ; $4427: $1e $1a
    di                                            ; $4429: $f3
    di                                            ; $442a: $f3
    ld [hl+], a                                   ; $442b: $22
    ld h, d                                       ; $442c: $62
    and e                                         ; $442d: $a3
    rst $38                                       ; $442e: $ff
    and e                                         ; $442f: $a3
    ld h, d                                       ; $4430: $62
    and e                                         ; $4431: $a3
    ld h, d                                       ; $4432: $62
    ld [c], a                                     ; $4433: $e2
    jp $0382                                      ; $4434: $c3 $82 $03


    rst $38                                       ; $4437: $ff
    ld e, $e1                                     ; $4438: $1e $e1
    pop hl                                        ; $443a: $e1
    ld e, $9f                                     ; $443b: $1e $9f
    ld h, b                                       ; $443d: $60
    ld h, b                                       ; $443e: $60
    sbc a                                         ; $443f: $9f
    ld a, a                                       ; $4440: $7f
    rst $18                                       ; $4441: $df
    jr nz, jr_003_43f4                            ; $4442: $20 $b0

    ld c, a                                       ; $4444: $4f
    ld a, a                                       ; $4445: $7f
    add b                                         ; $4446: $80
    nop                                           ; $4447: $00
    ldh a, [$c2]                                  ; $4448: $f0 $c2
    ei                                            ; $444a: $fb
    ld h, h                                       ; $444b: $64
    and h                                         ; $444c: $a4
    ld b, [hl]                                    ; $444d: $46
    pop hl                                        ; $444e: $e1
    db $f4                                        ; $444f: $f4
    inc h                                         ; $4450: $24
    inc d                                         ; $4451: $14
    db $f4                                        ; $4452: $f4
    set 7, a                                      ; $4453: $cb $ff
    ccf                                           ; $4455: $3f
    rrca                                          ; $4456: $0f
    inc b                                         ; $4457: $04
    ld b, $05                                     ; $4458: $06 $05
    ld h, l                                       ; $445a: $65
    ld b, [hl]                                    ; $445b: $46
    ld h, [hl]                                    ; $445c: $66
    rst $38                                       ; $445d: $ff
    ld h, l                                       ; $445e: $65
    ld h, a                                       ; $445f: $67
    ld h, h                                       ; $4460: $64
    ld h, h                                       ; $4461: $64
    ld h, a                                       ; $4462: $67
    ld h, a                                       ; $4463: $67
    ld h, h                                       ; $4464: $64
    sbc c                                         ; $4465: $99
    rst $38                                       ; $4466: $ff
    cp $b6                                        ; $4467: $fe $b6
    xor h                                         ; $4469: $ac
    xor h                                         ; $446a: $ac
    cp b                                          ; $446b: $b8
    cp b                                          ; $446c: $b8
    sbc b                                         ; $446d: $98
    sub h                                         ; $446e: $94
    rst $38                                       ; $446f: $ff
    sbc b                                         ; $4470: $98
    call c, Call_003_4e8c                         ; $4471: $dc $8c $4e
    call z, $cf4b                                 ; $4474: $cc $4b $cf
    or [hl]                                       ; $4477: $b6
    rst $38                                       ; $4478: $ff
    ld a, c                                       ; $4479: $79
    ld c, h                                       ; $447a: $4c
    ld b, h                                       ; $447b: $44
    jr jr_003_448a                                ; $447c: $18 $0c

    ld [hl], h                                    ; $447e: $74
    inc a                                         ; $447f: $3c
    ld h, h                                       ; $4480: $64
    rst $38                                       ; $4481: $ff
    ld a, h                                       ; $4482: $7c
    inc [hl]                                      ; $4483: $34
    inc e                                         ; $4484: $1c
    inc e                                         ; $4485: $1c
    inc c                                         ; $4486: $0c
    adc h                                         ; $4487: $8c
    inc c                                         ; $4488: $0c
    di                                            ; $4489: $f3

jr_003_448a:
    rst $38                                       ; $448a: $ff
    rst $38                                       ; $448b: $ff
    ld [hl], b                                    ; $448c: $70
    jr c, @-$25                                   ; $448d: $38 $d9

    ld l, b                                       ; $448f: $68
    adc c                                         ; $4490: $89
    ld sp, hl                                     ; $4491: $f9
    cp c                                          ; $4492: $b9
    rst $38                                       ; $4493: $ff
    ret                                           ; $4494: $c9


    ret                                           ; $4495: $c9


    cp c                                          ; $4496: $b9
    ret                                           ; $4497: $c9


    cp c                                          ; $4498: $b9
    sbc c                                         ; $4499: $99
    jp hl                                         ; $449a: $e9


    ld [hl], $ff                                  ; $449b: $36 $ff
    rst $08                                       ; $449d: $cf
    pop hl                                        ; $449e: $e1
    ld [hl], c                                    ; $449f: $71
    sbc c                                         ; $44a0: $99
    pop af                                        ; $44a1: $f1
    add hl, bc                                    ; $44a2: $09
    ld hl, sp-$04                                 ; $44a3: $f8 $fc
    rst $38                                       ; $44a5: $ff
    ld [$4cb4], sp                                ; $44a6: $08 $b4 $4c
    ld b, $fc                                     ; $44a9: $06 $fc
    inc bc                                        ; $44ab: $03
    cp $0d                                        ; $44ac: $fe $0d
    rst $38                                       ; $44ae: $ff
    di                                            ; $44af: $f3
    ld b, [hl]                                    ; $44b0: $46
    add $4e                                       ; $44b1: $c6 $4e
    add $ca                                       ; $44b3: $c6 $ca
    adc [hl]                                      ; $44b5: $8e
    ld c, $ff                                     ; $44b6: $0e $ff
    ld a, [bc]                                    ; $44b8: $0a
    ld a, [de]                                    ; $44b9: $1a
    ld c, $36                                     ; $44ba: $0e $36
    ld a, [de]                                    ; $44bc: $1a
    ld h, d                                       ; $44bd: $62
    ld a, $d1                                     ; $44be: $3e $d1
    rst $38                                       ; $44c0: $ff
    rst $28                                       ; $44c1: $ef
    dec de                                        ; $44c2: $1b
    inc c                                         ; $44c3: $0c
    ld [hl], $19                                  ; $44c4: $36 $19
    ld h, c                                       ; $44c6: $61
    ld a, $4e                                     ; $44c7: $3e $4e
    rst $38                                       ; $44c9: $ff
    ld [hl], c                                    ; $44ca: $71
    ld b, e                                       ; $44cb: $43
    ld a, h                                       ; $44cc: $7c
    ld d, b                                       ; $44cd: $50
    ld l, a                                       ; $44ce: $6f
    ld h, c                                       ; $44cf: $61
    ld e, [hl]                                    ; $44d0: $5e
    or b                                          ; $44d1: $b0
    rst $28                                       ; $44d2: $ef
    rst $08                                       ; $44d3: $cf
    ld c, a                                       ; $44d4: $4f
    ld b, [hl]                                    ; $44d5: $46
    ld a, [de]                                    ; $44d6: $1a
    or b                                          ; $44d7: $b0

jr_003_44d8:
    ldh [$66], a                                  ; $44d8: $e0 $66
    ld a, h                                       ; $44da: $7c
    inc sp                                        ; $44db: $33
    rst $38                                       ; $44dc: $ff
    ld e, $1d                                     ; $44dd: $1e $1d
    dec bc                                        ; $44df: $0b
    adc [hl]                                      ; $44e0: $8e
    add hl, bc                                    ; $44e1: $09
    ldh a, [rIE]                                  ; $44e2: $f0 $ff
    inc bc                                        ; $44e4: $03
    rst $38                                       ; $44e5: $ff
    ld [bc], a                                    ; $44e6: $02
    inc hl                                        ; $44e7: $23
    ld [bc], a                                    ; $44e8: $02
    ld [hl-], a                                   ; $44e9: $32
    inc hl                                        ; $44ea: $23
    inc sp                                        ; $44eb: $33
    ld [de], a                                    ; $44ec: $12
    inc bc                                        ; $44ed: $03
    rst $38                                       ; $44ee: $ff
    ld [bc], a                                    ; $44ef: $02
    add e                                         ; $44f0: $83
    ld [bc], a                                    ; $44f1: $02
    ld [c], a                                     ; $44f2: $e2
    db $e3                                        ; $44f3: $e3
    db $dd                                        ; $44f4: $dd
    ld a, $ff                                     ; $44f5: $3e $ff
    rst $38                                       ; $44f7: $ff
    nop                                           ; $44f8: $00
    rst $00                                       ; $44f9: $c7
    jr c, jr_003_4534                             ; $44fa: $38 $38

    rst $00                                       ; $44fc: $c7
    cp e                                          ; $44fd: $bb
    ld a, h                                       ; $44fe: $7c
    ld l, h                                       ; $44ff: $6c
    sbc [hl]                                      ; $4500: $9e
    xor [hl]                                      ; $4501: $ae
    and b                                         ; $4502: $a0
    ld l, [hl]                                    ; $4503: $6e
    push bc                                       ; $4504: $c5
    cp c                                          ; $4505: $b9
    ld a, [hl]                                    ; $4506: $7e
    adc h                                         ; $4507: $8c
    pop bc                                        ; $4508: $c1
    ld a, [hl]                                    ; $4509: $7e
    pop bc                                        ; $450a: $c1
    rst $08                                       ; $450b: $cf
    rst $30                                       ; $450c: $f7
    jr nc, jr_003_4541                            ; $450d: $30 $32

    call Call_003_614e                            ; $450f: $cd $4e $61
    rlca                                          ; $4512: $07
    rst $38                                       ; $4513: $ff
    ld hl, sp+$08                                 ; $4514: $f8 $08
    ei                                            ; $4516: $fb
    ld [$fcf8], sp                                ; $4517: $08 $f8 $fc
    db $e3                                        ; $451a: $e3
    xor b                                         ; $451b: $a8
    ld e, b                                       ; $451c: $58
    ld [$ccf8], sp                                ; $451d: $08 $f8 $cc
    rst $38                                       ; $4520: $ff
    di                                            ; $4521: $f3
    ld [hl], d                                    ; $4522: $72
    dec a                                         ; $4523: $3d
    jr jr_003_4535                                ; $4524: $18 $0f

    dec c                                         ; $4526: $0d
    ld b, $c7                                     ; $4527: $06 $c7
    ei                                            ; $4529: $fb
    add e                                         ; $452a: $83
    jp nz, $e1ff                                  ; $452b: $c2 $ff $e1

    add d                                         ; $452e: $82
    ld l, [hl]                                    ; $452f: $6e
    sub c                                         ; $4530: $91
    ld e, b                                       ; $4531: $58
    and a                                         ; $4532: $a7
    rst $38                                       ; $4533: $ff

jr_003_4534:
    inc [hl]                                      ; $4534: $34

jr_003_4535:
    sra l                                         ; $4535: $cb $2d
    jp nc, $feb1                                  ; $4537: $d2 $b1 $fe

    ld a, b                                       ; $453a: $78
    ld c, a                                       ; $453b: $4f
    db $fd                                        ; $453c: $fd
    ld c, [hl]                                    ; $453d: $4e
    ldh a, [$c0]                                  ; $453e: $f0 $c0
    ld h, b                                       ; $4540: $60

jr_003_4541:
    sbc a                                         ; $4541: $9f
    pop hl                                        ; $4542: $e1
    ld e, $8b                                     ; $4543: $1e $8b
    ld [hl], h                                    ; $4545: $74
    rst $28                                       ; $4546: $ef
    sbc d                                         ; $4547: $9a
    ld h, l                                       ; $4548: $65
    jr c, @+$01                                   ; $4549: $38 $ff

    xor [hl]                                      ; $454b: $ae
    ldh [$83], a                                  ; $454c: $e0 $83
    add e                                         ; $454e: $83
    ld [bc], a                                    ; $454f: $02
    rst $38                                       ; $4550: $ff
    rst $20                                       ; $4551: $e7
    jr jr_003_44d8                                ; $4552: $18 $84

    ld a, e                                       ; $4554: $7b
    rst $30                                       ; $4555: $f7
    ld [$f936], sp                                ; $4556: $08 $36 $f9
    rst $38                                       ; $4559: $ff
    ld l, c                                       ; $455a: $69
    rst $08                                       ; $455b: $cf
    res 1, [hl]                                   ; $455c: $cb $8e
    adc [hl]                                      ; $455e: $8e
    inc c                                         ; $455f: $0c
    inc [hl]                                      ; $4560: $34
    jr @+$01                                      ; $4561: $18 $ff

    daa                                           ; $4563: $27
    ret c                                         ; $4564: $d8

    rst $28                                       ; $4565: $ef
    db $10                                        ; $4566: $10
    sbc [hl]                                      ; $4567: $9e
    ld h, c                                       ; $4568: $61
    ret nc                                        ; $4569: $d0

    rst $28                                       ; $456a: $ef
    rst $38                                       ; $456b: $ff
    and a                                         ; $456c: $a7
    jr c, jr_003_459d                             ; $456d: $38 $2e

    ld sp, $3f20                                  ; $456f: $31 $20 $3f
    call $ff73                                    ; $4572: $cd $73 $ff
    ld c, $f1                                     ; $4575: $0e $f1
    add a                                         ; $4577: $87
    ld a, b                                       ; $4578: $78
    ld de, $4cee                                  ; $4579: $11 $ee $4c
    cp a                                          ; $457c: $bf
    rst $38                                       ; $457d: $ff
    ld a, $f3                                     ; $457e: $3e $f3
    ld h, e                                       ; $4580: $63
    pop bc                                        ; $4581: $c1
    pop bc                                        ; $4582: $c1
    add c                                         ; $4583: $81
    add c                                         ; $4584: $81
    ld bc, $6cff                                  ; $4585: $01 $ff $6c
    sub e                                         ; $4588: $93
    ld [hl], d                                    ; $4589: $72
    adc l                                         ; $458a: $8d
    inc e                                         ; $458b: $1c
    db $e3                                        ; $458c: $e3
    jr nz, @-$1f                                  ; $458d: $20 $df

    rst $38                                       ; $458f: $ff
    sbc c                                         ; $4590: $99
    ld h, [hl]                                    ; $4591: $66
    ld [hl], c                                    ; $4592: $71
    cp $9e                                        ; $4593: $fe $9e
    adc a                                         ; $4595: $8f
    add e                                         ; $4596: $83
    add c                                         ; $4597: $81
    rst $38                                       ; $4598: $ff
    ld l, a                                       ; $4599: $6f
    sub b                                         ; $459a: $90
    ld l, c                                       ; $459b: $69
    rst $30                                       ; $459c: $f7

jr_003_459d:
    cp e                                          ; $459d: $bb
    sbc [hl]                                      ; $459e: $9e
    adc [hl]                                      ; $459f: $8e
    add h                                         ; $45a0: $84
    rst $38                                       ; $45a1: $ff
    call nz, Call_003_7084                        ; $45a2: $c4 $84 $70
    ldh [rNR24], a                                ; $45a5: $e0 $19
    ldh a, [$09]                                  ; $45a7: $f0 $09
    ld sp, hl                                     ; $45a9: $f9
    rst $38                                       ; $45aa: $ff
    ld l, [hl]                                    ; $45ab: $6e
    pop af                                        ; $45ac: $f1
    db $d3                                        ; $45ad: $d3
    sbc h                                         ; $45ae: $9c
    inc e                                         ; $45af: $1c
    inc de                                        ; $45b0: $13
    ld [hl], $19                                  ; $45b1: $36 $19
    rst $38                                       ; $45b3: $ff
    ld l, e                                       ; $45b4: $6b
    inc [hl]                                      ; $45b5: $34
    call z, $b773                                 ; $45b6: $cc $73 $b7
    ret z                                         ; $45b9: $c8

    nop                                           ; $45ba: $00
    rst $38                                       ; $45bb: $ff
    cp a                                          ; $45bc: $bf
    ld a, a                                       ; $45bd: $7f
    add b                                         ; $45be: $80
    adc h                                         ; $45bf: $8c
    ld [hl], e                                    ; $45c0: $73
    di                                            ; $45c1: $f3
    inc c                                         ; $45c2: $0c
    adc d                                         ; $45c3: $8a
    pop bc                                        ; $45c4: $c1
    ld a, a                                       ; $45c5: $7f
    rst $20                                       ; $45c6: $e7
    add b                                         ; $45c7: $80
    sbc h                                         ; $45c8: $9c
    ld h, e                                       ; $45c9: $63
    sbc d                                         ; $45ca: $9a
    ld b, c                                       ; $45cb: $41
    ret nc                                        ; $45cc: $d0

    adc c                                         ; $45cd: $89
    ld sp, $f8ce                                  ; $45ce: $31 $ce $f8
    rst $38                                       ; $45d1: $ff
    ld [$c838], sp                                ; $45d2: $08 $38 $c8
    ret z                                         ; $45d5: $c8

    jr c, @+$6a                                   ; $45d6: $38 $68

    sbc b                                         ; $45d8: $98
    sbc b                                         ; $45d9: $98
    rst $38                                       ; $45da: $ff
    ld [hl], b                                    ; $45db: $70
    pop af                                        ; $45dc: $f1
    db $10                                        ; $45dd: $10
    ld de, $eef1                                  ; $45de: $11 $f1 $ee
    rra                                           ; $45e1: $1f
    ld b, $ff                                     ; $45e2: $06 $ff
    ld [bc], a                                    ; $45e4: $02
    inc e                                         ; $45e5: $1c
    ld c, $72                                     ; $45e6: $0e $72
    ld a, $d2                                     ; $45e8: $3e $d2
    xor $82                                       ; $45ea: $ee $82
    rst $38                                       ; $45ec: $ff
    cp $f2                                        ; $45ed: $fe $f2
    adc [hl]                                      ; $45ef: $8e
    ld [bc], a                                    ; $45f0: $02
    cp $f1                                        ; $45f1: $fe $f1
    rrca                                          ; $45f3: $0f
    dec sp                                        ; $45f4: $3b
    rst $38                                       ; $45f5: $ff
    ld e, $66                                     ; $45f6: $1e $66
    inc a                                         ; $45f8: $3c
    ld b, h                                       ; $45f9: $44
    ld a, h                                       ; $45fa: $7c
    halt                                          ; $45fb: $76
    ld c, h                                       ; $45fc: $4c
    ld d, d                                       ; $45fd: $52
    rst $38                                       ; $45fe: $ff
    ld l, [hl]                                    ; $45ff: $6e
    ld b, e                                       ; $4600: $43
    ld a, [hl]                                    ; $4601: $7e
    ld h, c                                       ; $4602: $61
    ld e, a                                       ; $4603: $5f
    add b                                         ; $4604: $80
    rst $38                                       ; $4605: $ff
    ld h, $ff                                     ; $4606: $26 $ff
    ld [hl+], a                                   ; $4608: $22
    dec c                                         ; $4609: $0d
    ld b, $39                                     ; $460a: $06 $39
    rra                                           ; $460c: $1f
    ld [hl-], a                                   ; $460d: $32
    dec a                                         ; $460e: $3d
    dec de                                        ; $460f: $1b
    rst $38                                       ; $4610: $ff
    dec c                                         ; $4611: $0d
    dec c                                         ; $4612: $0d
    rlca                                          ; $4613: $07
    push bc                                       ; $4614: $c5
    add a                                         ; $4615: $87
    ld a, d                                       ; $4616: $7a
    db $fd                                        ; $4617: $fd
    ld a, c                                       ; $4618: $79
    rst $38                                       ; $4619: $ff
    jr c, jr_003_4638                             ; $461a: $38 $1c

    ld [$0c8e], sp                                ; $461c: $08 $8e $0c
    adc d                                         ; $461f: $8a
    adc [hl]                                      ; $4620: $8e
    sbc [hl]                                      ; $4621: $9e
    rst $38                                       ; $4622: $ff
    inc c                                         ; $4623: $0c
    inc [hl]                                      ; $4624: $34
    inc e                                         ; $4625: $1c
    ld l, l                                       ; $4626: $6d
    inc [hl]                                      ; $4627: $34
    di                                            ; $4628: $f3
    rst $08                                       ; $4629: $cf
    db $d3                                        ; $462a: $d3
    rst $38                                       ; $462b: $ff
    xor $62                                       ; $462c: $ee $62
    ld a, $2a                                     ; $462e: $3e $2a
    ld [hl], $2a                                  ; $4630: $36 $2a
    ld [hl], $61                                  ; $4632: $36 $61
    rst $38                                       ; $4634: $ff
    ccf                                           ; $4635: $3f
    ret nz                                        ; $4636: $c0

    ld a, a                                       ; $4637: $7f

jr_003_4638:
    sbc b                                         ; $4638: $98
    rst $20                                       ; $4639: $e7
    jr nc, @-$2f                                  ; $463a: $30 $cf

    ld sp, $11ff                                  ; $463c: $31 $ff $11
    ld sp, $3131                                  ; $463f: $31 $31 $31
    ld de, $0101                                  ; $4642: $11 $01 $01
    add b                                         ; $4645: $80
    rst $38                                       ; $4646: $ff
    nop                                           ; $4647: $00
    ldh [$c0], a                                  ; $4648: $e0 $c0
    cp h                                          ; $464a: $bc
    ld a, b                                       ; $464b: $78
    ld h, a                                       ; $464c: $67
    sbc a                                         ; $464d: $9f
    add c                                         ; $464e: $81
    ld a, a                                       ; $464f: $7f
    add b                                         ; $4650: $80
    add b                                         ; $4651: $80
    add b                                         ; $4652: $80
    adc h                                         ; $4653: $8c
    adc b                                         ; $4654: $88
    inc c                                         ; $4655: $0c
    adc h                                         ; $4656: $8c
    rst $38                                       ; $4657: $ff
    db $e3                                        ; $4658: $e3
    rst $38                                       ; $4659: $ff
    ld [hl], e                                    ; $465a: $73
    rst $38                                       ; $465b: $ff
    sbc c                                         ; $465c: $99
    jp hl                                         ; $465d: $e9


    sbc c                                         ; $465e: $99
    jp hl                                         ; $465f: $e9


    ret                                           ; $4660: $c9


    cp c                                          ; $4661: $b9
    res 1, c                                      ; $4662: $cb $89
    ld sp, hl                                     ; $4664: $f9
    db $fc                                        ; $4665: $fc
    db $e3                                        ; $4666: $e3
    ld b, $bf                                     ; $4667: $06 $bf
    jr nz, jr_003_467b                            ; $4669: $20 $10

    adc c                                         ; $466b: $89
    ld l, [hl]                                    ; $466c: $6e
    sub c                                         ; $466d: $91
    ld a, e                                       ; $466e: $7b
    rst $38                                       ; $466f: $ff
    nop                                           ; $4670: $00
    db $10                                        ; $4671: $10
    adc c                                         ; $4672: $89
    ldh [$1f], a                                  ; $4673: $e0 $1f
    rst $28                                       ; $4675: $ef
    db $10                                        ; $4676: $10
    and b                                         ; $4677: $a0
    adc c                                         ; $4678: $89
    rst $38                                       ; $4679: $ff
    nop                                           ; $467a: $00

jr_003_467b:
    rst $38                                       ; $467b: $ff
    ld [hl], $cf                                  ; $467c: $36 $cf
    ret                                           ; $467e: $c9


    add hl, sp                                    ; $467f: $39
    ld sp, hl                                     ; $4680: $f9
    add hl, bc                                    ; $4681: $09
    cp a                                          ; $4682: $bf
    sbc c                                         ; $4683: $99
    ld l, c                                       ; $4684: $69
    ld l, c                                       ; $4685: $69
    sbc c                                         ; $4686: $99
    ret                                           ; $4687: $c9


    add hl, sp                                    ; $4688: $39
    halt                                          ; $4689: $76
    pop bc                                        ; $468a: $c1
    ld h, e                                       ; $468b: $63
    rst $38                                       ; $468c: $ff
    sbc h                                         ; $468d: $9c
    sbc b                                         ; $468e: $98
    ld h, a                                       ; $468f: $67
    ld [hl], c                                    ; $4690: $71
    adc [hl]                                      ; $4691: $8e
    adc h                                         ; $4692: $8c
    ld [hl], e                                    ; $4693: $73
    ld a, b                                       ; $4694: $78
    rst $38                                       ; $4695: $ff
    add a                                         ; $4696: $87
    adc [hl]                                      ; $4697: $8e
    rst $38                                       ; $4698: $ff
    db $d3                                        ; $4699: $d3
    ld [hl], c                                    ; $469a: $71
    ld h, c                                       ; $469b: $61
    ld sp, $ffd0                                  ; $469c: $31 $d0 $ff
    cpl                                           ; $469f: $2f
    add hl, sp                                    ; $46a0: $39
    add $c3                                       ; $46a1: $c6 $c3
    inc a                                         ; $46a3: $3c
    di                                            ; $46a4: $f3
    inc c                                         ; $46a5: $0c
    inc bc                                        ; $46a6: $03
    rst $38                                       ; $46a7: $ff
    rst $38                                       ; $46a8: $ff
    inc [hl]                                      ; $46a9: $34
    call z, $fc38                                 ; $46aa: $cc $38 $fc
    ld h, a                                       ; $46ad: $67
    rst $00                                       ; $46ae: $c7
    ld b, [hl]                                    ; $46af: $46
    rst $38                                       ; $46b0: $ff
    cp c                                          ; $46b1: $b9
    ret nz                                        ; $46b2: $c0

    ccf                                           ; $46b3: $3f
    ld h, b                                       ; $46b4: $60
    rst $38                                       ; $46b5: $ff
    sub b                                         ; $46b6: $90
    sbc a                                         ; $46b7: $9f
    sbc e                                         ; $46b8: $9b
    db $fd                                        ; $46b9: $fd
    sbc a                                         ; $46ba: $9f
    add a                                         ; $46bb: $87
    add b                                         ; $46bc: $80
    inc b                                         ; $46bd: $04
    sbc e                                         ; $46be: $9b
    sbc a                                         ; $46bf: $9f
    ld a, a                                       ; $46c0: $7f
    add b                                         ; $46c1: $80
    ld [hl], b                                    ; $46c2: $70
    rst $38                                       ; $46c3: $ff
    adc a                                         ; $46c4: $8f
    ld l, a                                       ; $46c5: $6f
    ldh a, [$91]                                  ; $46c6: $f0 $91
    sbc [hl]                                      ; $46c8: $9e
    sbc d                                         ; $46c9: $9a
    sbc l                                         ; $46ca: $9d
    ld b, $de                                     ; $46cb: $06 $de
    ld d, d                                       ; $46cd: $52
    and b                                         ; $46ce: $a0
    sbc e                                         ; $46cf: $9b
    sbc [hl]                                      ; $46d0: $9e
    xor $11                                       ; $46d1: $ee $11
    ld b, b                                       ; $46d3: $40
    add c                                         ; $46d4: $81
    call z, $ff33                                 ; $46d5: $cc $33 $ff
    jr nc, @+$01                                  ; $46d8: $30 $ff

    ld sp, hl                                     ; $46da: $f9
    rst $08                                       ; $46db: $cf
    adc [hl]                                      ; $46dc: $8e
    ld b, $04                                     ; $46dd: $06 $04
    ld b, $ff                                     ; $46df: $06 $ff

jr_003_46e1:
    ld h, d                                       ; $46e1: $62
    sbc l                                         ; $46e2: $9d
    ld b, e                                       ; $46e3: $43
    cp h                                          ; $46e4: $bc
    ld [bc], a                                    ; $46e5: $02
    db $fd                                        ; $46e6: $fd
    rlca                                          ; $46e7: $07
    ld hl, sp+$7f                                 ; $46e8: $f8 $7f
    inc e                                         ; $46ea: $1c
    db $e3                                        ; $46eb: $e3

jr_003_46ec:
    rst $10                                       ; $46ec: $d7
    add sp, $78                                   ; $46ed: $e8 $78
    ccf                                           ; $46ef: $3f
    inc c                                         ; $46f0: $0c
    ld a, [hl]                                    ; $46f1: $7e
    add b                                         ; $46f2: $80
    rst $38                                       ; $46f3: $ff
    sbc [hl]                                      ; $46f4: $9e
    ld h, c                                       ; $46f5: $61
    ld d, e                                       ; $46f6: $53
    xor a                                         ; $46f7: $af
    adc h                                         ; $46f8: $8c
    ld [hl], h                                    ; $46f9: $74
    ld e, h                                       ; $46fa: $5c
    cp h                                          ; $46fb: $bc
    rst $38                                       ; $46fc: $ff
    ldh [rNR41], a                                ; $46fd: $e0 $20
    jr nz, jr_003_46e1                            ; $46ff: $20 $e0

    inc e                                         ; $4701: $1c
    db $fc                                        ; $4702: $fc
    swap h                                        ; $4703: $cb $34
    rst $38                                       ; $4705: $ff
    inc e                                         ; $4706: $1c
    db $e3                                        ; $4707: $e3
    rla                                           ; $4708: $17
    add sp, -$47                                  ; $4709: $e8 $b9
    add $cd                                       ; $470b: $c6 $cd
    di                                            ; $470d: $f3
    rst $38                                       ; $470e: $ff
    scf                                           ; $470f: $37
    ld l, $2c                                     ; $4710: $2e $2c
    jr c, jr_003_46ec                             ; $4712: $38 $d8

    ldh a, [$b3]                                  ; $4714: $f0 $b3
    ld c, h                                       ; $4716: $4c
    cp $e0                                        ; $4717: $fe $e0
    ld h, e                                       ; $4719: $63
    adc a                                         ; $471a: $8f
    ldh a, [$d6]                                  ; $471b: $f0 $d6
    ld l, c                                       ; $471d: $69
    ld a, c                                       ; $471e: $79
    ld h, $20                                     ; $471f: $26 $20
    rst $00                                       ; $4721: $c7
    ccf                                           ; $4722: $3f
    sbc a                                         ; $4723: $9f
    ld h, b                                       ; $4724: $60
    ldh [rBCPD], a                                ; $4725: $e0 $69
    ld a, [de]                                    ; $4727: $1a
    ld hl, $83e0                                  ; $4728: $21 $e0 $83
    adc a                                         ; $472b: $8f
    ld [hl], b                                    ; $472c: $70
    cp $a0                                        ; $472d: $fe $a0
    ld h, c                                       ; $472f: $61
    db $fc                                        ; $4730: $fc
    inc bc                                        ; $4731: $03
    add sp, $18                                   ; $4732: $e8 $18
    add hl, sp                                    ; $4734: $39
    pop de                                        ; $4735: $d1
    pop de                                        ; $4736: $d1
    rst $38                                       ; $4737: $ff
    ld sp, $9070                                  ; $4738: $31 $70 $90
    sub b                                         ; $473b: $90
    ld [hl], b                                    ; $473c: $70
    ldh a, [rNR10]                                ; $473d: $f0 $10
    rla                                           ; $473f: $17
    rst $38                                       ; $4740: $ff
    di                                            ; $4741: $f3
    db $ed                                        ; $4742: $ed
    ld e, $31                                     ; $4743: $1e $31
    ld de, $1119                                  ; $4745: $11 $19 $11
    add hl, de                                    ; $4748: $19
    rst $38                                       ; $4749: $ff
    jr jr_003_4788                                ; $474a: $18 $3c

    jr jr_003_47b2                                ; $474c: $18 $64

    inc a                                         ; $474e: $3c
    sub $ec                                       ; $474f: $d6 $ec
    ld a, e                                       ; $4751: $7b
    rst $38                                       ; $4752: $ff
    add [hl]                                      ; $4753: $86
    pop bc                                        ; $4754: $c1
    ccf                                           ; $4755: $3f
    push bc                                       ; $4756: $c5
    ld b, [hl]                                    ; $4757: $46
    call $c846                                    ; $4758: $cd $46 $c8
    rst $38                                       ; $475b: $ff
    adc a                                         ; $475c: $8f
    ld [$1e0f], sp                                ; $475d: $08 $0f $1e
    add hl, bc                                    ; $4760: $09
    inc [hl]                                      ; $4761: $34
    dec de                                        ; $4762: $1b
    ld h, e                                       ; $4763: $63
    rst $38                                       ; $4764: $ff
    inc a                                         ; $4765: $3c
    sbc $e1                                       ; $4766: $de $e1
    sbc a                                         ; $4768: $9f
    sub b                                         ; $4769: $90
    sub l                                         ; $476a: $95
    sbc d                                         ; $476b: $9a
    sbc e                                         ; $476c: $9b
    rst $38                                       ; $476d: $ff
    adc h                                         ; $476e: $8c
    adc d                                         ; $476f: $8a
    adc l                                         ; $4770: $8d
    call Call_003_4786                            ; $4771: $cd $86 $47
    call nz, $ffc4                                ; $4774: $c4 $c4 $ff
    ld b, a                                       ; $4777: $47
    dec sp                                        ; $4778: $3b
    db $fc                                        ; $4779: $fc
    sub d                                         ; $477a: $92
    sbc [hl]                                      ; $477b: $9e
    sub [hl]                                      ; $477c: $96
    sbc h                                         ; $477d: $9c
    sbc h                                         ; $477e: $9c
    rst $38                                       ; $477f: $ff
    adc h                                         ; $4780: $8c
    adc b                                         ; $4781: $88
    adc h                                         ; $4782: $8c
    adc $84                                       ; $4783: $ce $84
    ld b, a                                       ; $4785: $47

Call_003_4786:
    add $c5                                       ; $4786: $c6 $c5

jr_003_4788:
    cp a                                          ; $4788: $bf
    ld b, a                                       ; $4789: $47
    cp d                                          ; $478a: $ba
    ld a, l                                       ; $478b: $7d
    ld h, [hl]                                    ; $478c: $66
    ld [bc], a                                    ; $478d: $02
    ld h, d                                       ; $478e: $62
    rst $38                                       ; $478f: $ff
    ldh [$66], a                                  ; $4790: $e0 $66
    rst $38                                       ; $4792: $ff
    ld b, d                                       ; $4793: $42
    inc b                                         ; $4794: $04
    ld b, $1a                                     ; $4795: $06 $1a
    ld c, $b6                                     ; $4797: $0e $b6
    ld a, [hl-]                                   ; $4799: $3a
    push bc                                       ; $479a: $c5
    rst $38                                       ; $479b: $ff
    ei                                            ; $479c: $fb
    rlca                                          ; $479d: $07
    ld [bc], a                                    ; $479e: $02
    ld [bc], a                                    ; $479f: $02
    inc bc                                        ; $47a0: $03
    inc sp                                        ; $47a1: $33
    ld [hl+], a                                   ; $47a2: $22
    ld [hl-], a                                   ; $47a3: $32
    db $fd                                        ; $47a4: $fd
    inc sp                                        ; $47a5: $33
    cp $e1                                        ; $47a6: $fe $e1
    inc sp                                        ; $47a8: $33
    ld [hl-], a                                   ; $47a9: $32
    call $9cfe                                    ; $47aa: $cd $fe $9c
    ld h, h                                       ; $47ad: $64
    rst $38                                       ; $47ae: $ff
    sub h                                         ; $47af: $94
    ld l, h                                       ; $47b0: $6c
    inc a                                         ; $47b1: $3c

jr_003_47b2:
    call nz, $dc24                                ; $47b2: $c4 $24 $dc
    ld a, [hl]                                    ; $47b5: $7e
    add h                                         ; $47b6: $84
    rst $38                                       ; $47b7: $ff
    ld a, [c]                                     ; $47b8: $f2
    ld c, $fe                                     ; $47b9: $0e $fe
    ld [bc], a                                    ; $47bb: $02
    pop bc                                        ; $47bc: $c1
    ccf                                           ; $47bd: $3f
    db $d3                                        ; $47be: $d3
    or b                                          ; $47bf: $b0
    rst $38                                       ; $47c0: $ff
    or e                                          ; $47c1: $b3
    db $e3                                        ; $47c2: $e3
    db $e3                                        ; $47c3: $e3
    ld h, e                                       ; $47c4: $63
    ld b, e                                       ; $47c5: $43
    ld h, d                                       ; $47c6: $62
    ld [hl], b                                    ; $47c7: $70
    jr nz, @+$01                                  ; $47c8: $20 $ff

    jr c, jr_003_47fc                             ; $47ca: $38 $30

    dec l                                         ; $47cc: $2d
    add hl, sp                                    ; $47cd: $39
    sub $ef                                       ; $47ce: $d6 $ef
    ccf                                           ; $47d0: $3f
    db $10                                        ; $47d1: $10
    rst $38                                       ; $47d2: $ff
    dec e                                         ; $47d3: $1d
    ld [de], a                                    ; $47d4: $12
    inc de                                        ; $47d5: $13
    inc e                                         ; $47d6: $1c
    ld a, $11                                     ; $47d7: $3e $11
    ld hl, $f73e                                  ; $47d9: $21 $3e $f7
    rst $18                                       ; $47dc: $df
    ld h, b                                       ; $47dd: $60
    add b                                         ; $47de: $80
    jp nz, $ffa0                                  ; $47df: $c2 $a0 $ff

    nop                                           ; $47e2: $00
    add $39                                       ; $47e3: $c6 $39
    rst $28                                       ; $47e5: $ef
    cp a                                          ; $47e6: $bf
    ld b, b                                       ; $47e7: $40
    ld h, b                                       ; $47e8: $60
    sbc a                                         ; $47e9: $9f
    jr c, @-$1b                                   ; $47ea: $38 $e3

    cp d                                          ; $47ec: $ba
    ld b, l                                       ; $47ed: $45
    sub e                                         ; $47ee: $93
    rst $38                                       ; $47ef: $ff
    ld l, h                                       ; $47f0: $6c
    xor $11                                       ; $47f1: $ee $11
    xor c                                         ; $47f3: $a9
    ld d, [hl]                                    ; $47f4: $56
    ld d, [hl]                                    ; $47f5: $56
    xor c                                         ; $47f6: $a9
    pop de                                        ; $47f7: $d1
    rst $30                                       ; $47f8: $f7
    ld l, $26                                     ; $47f9: $2e $26
    reti                                          ; $47fb: $d9


jr_003_47fc:
    sub b                                         ; $47fc: $90
    ld b, c                                       ; $47fd: $41
    sbc b                                         ; $47fe: $98
    ld h, a                                       ; $47ff: $67
    ld a, a                                       ; $4800: $7f
    add b                                         ; $4801: $80
    rst $38                                       ; $4802: $ff
    call nz, Call_000_3f3b                        ; $4803: $c4 $3b $3f
    ret nz                                        ; $4806: $c0

    jp Jump_003_7d3c                              ; $4807: $c3 $3c $7d


    add d                                         ; $480a: $82
    xor a                                         ; $480b: $af
    add [hl]                                      ; $480c: $86
    ld a, c                                       ; $480d: $79
    nop                                           ; $480e: $00
    rst $38                                       ; $480f: $ff
    jp nc, Jump_000_3841                          ; $4810: $d2 $41 $38

    adc d                                         ; $4813: $8a
    ld b, b                                       ; $4814: $40
    inc a                                         ; $4815: $3c
    rst $38                                       ; $4816: $ff
    jp Jump_000_3cc3                              ; $4817: $c3 $c3 $3c


    ld a, [hl]                                    ; $481a: $7e
    add c                                         ; $481b: $81
    nop                                           ; $481c: $00
    rst $38                                       ; $481d: $ff
    pop hl                                        ; $481e: $e1
    rst $38                                       ; $481f: $ff
    ld e, $9e                                     ; $4820: $1e $9e
    ld h, c                                       ; $4822: $61
    ld h, c                                       ; $4823: $61
    sbc [hl]                                      ; $4824: $9e
    rst $18                                       ; $4825: $df
    jr nz, jr_003_4894                            ; $4826: $20 $6c

    rst $38                                       ; $4828: $ff
    rst $38                                       ; $4829: $ff
    sbc [hl]                                      ; $482a: $9e
    sub e                                         ; $482b: $93
    sub e                                         ; $482c: $93
    add c                                         ; $482d: $81
    add c                                         ; $482e: $81
    add c                                         ; $482f: $81
    sub c                                         ; $4830: $91
    rst $38                                       ; $4831: $ff
    ld l, [hl]                                    ; $4832: $6e
    ld a, h                                       ; $4833: $7c
    add e                                         ; $4834: $83
    ret nz                                        ; $4835: $c0

    ccf                                           ; $4836: $3f
    ld a, $c1                                     ; $4837: $3e $c1
    xor $ff                                       ; $4839: $ee $ff
    rra                                           ; $483b: $1f
    sbc e                                         ; $483c: $9b
    ld [hl], c                                    ; $483d: $71
    ld sp, $60e0                                  ; $483e: $31 $e0 $60
    ret nz                                        ; $4841: $c0

    ld d, l                                       ; $4842: $55
    rst $38                                       ; $4843: $ff
    xor d                                         ; $4844: $aa
    ld d, d                                       ; $4845: $52
    xor l                                         ; $4846: $ad
    ld l, b                                       ; $4847: $68
    sub a                                         ; $4848: $97
    dec c                                         ; $4849: $0d

jr_003_484a:
    cp $9a                                        ; $484a: $fe $9a
    cp a                                          ; $484c: $bf
    ld [hl], e                                    ; $484d: $73

jr_003_484e:
    ld [hl-], a                                   ; $484e: $32
    db $e3                                        ; $484f: $e3
    ld [c], a                                     ; $4850: $e2
    jp $b8cc                                      ; $4851: $c3 $cc $b8


    nop                                           ; $4854: $00
    adc $ff                                       ; $4855: $ce $ff
    ld sp, $e718                                  ; $4857: $31 $18 $e7
    ldh a, [rIF]                                  ; $485a: $f0 $0f
    call c, Call_000_363f                         ; $485c: $dc $3f $36
    db $fd                                        ; $485f: $fd
    db $e3                                        ; $4860: $e3
    ld c, $a1                                     ; $4861: $0e $a1
    adc [hl]                                      ; $4863: $8e
    ld [hl], c                                    ; $4864: $71
    ccf                                           ; $4865: $3f
    ret nz                                        ; $4866: $c0

    ld e, b                                       ; $4867: $58
    cp a                                          ; $4868: $bf
    rst $18                                       ; $4869: $df
    rst $20                                       ; $486a: $e7
    inc h                                         ; $486b: $24
    and $e7                                       ; $486c: $e6 $e7
    ld bc, $e0ff                                  ; $486e: $01 $ff $e0
    and $e7                                       ; $4871: $e6 $e7
    ld a, [$e5b0]                                 ; $4873: $fa $b0 $e5
    jr nz, jr_003_484e                            ; $4876: $20 $d6

    nop                                           ; $4878: $00
    jr nc, jr_003_484a                            ; $4879: $30 $cf

    nop                                           ; $487b: $00
    rst $38                                       ; $487c: $ff
    add c                                         ; $487d: $81
    rst $38                                       ; $487e: $ff
    ld a, [hl]                                    ; $487f: $7e
    ld a, [hl]                                    ; $4880: $7e
    add c                                         ; $4881: $81
    pop bc                                        ; $4882: $c1
    ld a, $3e                                     ; $4883: $3e $3e
    pop bc                                        ; $4885: $c1
    db $e3                                        ; $4886: $e3
    rst $38                                       ; $4887: $ff
    inc e                                         ; $4888: $1c
    sbc h                                         ; $4889: $9c
    ld h, e                                       ; $488a: $63
    ld [hl], a                                    ; $488b: $77
    adc b                                         ; $488c: $88
    nop                                           ; $488d: $00
    rst $38                                       ; $488e: $ff
    ld d, l                                       ; $488f: $55
    rst $38                                       ; $4890: $ff
    xor d                                         ; $4891: $aa
    ld d, [hl]                                    ; $4892: $56
    xor c                                         ; $4893: $a9

jr_003_4894:
    jp hl                                         ; $4894: $e9


    ld d, $6f                                     ; $4895: $16 $6f
    sub b                                         ; $4897: $90
    or b                                          ; $4898: $b0
    rst $18                                       ; $4899: $df
    ld c, a                                       ; $489a: $4f
    rst $18                                       ; $489b: $df
    jr nz, @+$63                                  ; $489c: $20 $61

    sbc [hl]                                      ; $489e: $9e
    ld b, h                                       ; $489f: $44
    ld bc, $6699                                  ; $48a0: $01 $99 $66
    rst $28                                       ; $48a3: $ef
    halt                                          ; $48a4: $76
    adc c                                         ; $48a5: $89
    rst $08                                       ; $48a6: $cf
    jr nc, jr_003_4915                            ; $48a7: $30 $6c

    pop hl                                        ; $48a9: $e1
    inc e                                         ; $48aa: $1c
    db $e3                                        ; $48ab: $e3
    di                                            ; $48ac: $f3
    rst $38                                       ; $48ad: $ff
    inc c                                         ; $48ae: $0c
    rst $38                                       ; $48af: $ff
    nop                                           ; $48b0: $00
    di                                            ; $48b1: $f3
    inc c                                         ; $48b2: $0c
    inc e                                         ; $48b3: $1c
    db $e3                                        ; $48b4: $e3
    and $ff                                       ; $48b5: $e6 $ff
    add hl, de                                    ; $48b7: $19
    dec sp                                        ; $48b8: $3b
    call nz, Call_000_33cc                        ; $48b9: $c4 $cc $33
    ld [hl], a                                    ; $48bc: $77
    adc b                                         ; $48bd: $88
    cp b                                          ; $48be: $b8
    rst $30                                       ; $48bf: $f7
    ld b, a                                       ; $48c0: $47
    rst $38                                       ; $48c1: $ff
    nop                                           ; $48c2: $00
    ldh [$89], a                                  ; $48c3: $e0 $89
    db $e3                                        ; $48c5: $e3
    inc e                                         ; $48c6: $1c
    adc [hl]                                      ; $48c7: $8e
    add a                                         ; $48c8: $87
    rst $38                                       ; $48c9: $ff
    sbc e                                         ; $48ca: $9b
    adc l                                         ; $48cb: $8d
    sub a                                         ; $48cc: $97
    sbc c                                         ; $48cd: $99
    sub c                                         ; $48ce: $91
    sbc a                                         ; $48cf: $9f
    sbc [hl]                                      ; $48d0: $9e
    sub c                                         ; $48d1: $91
    rst $38                                       ; $48d2: $ff
    sub d                                         ; $48d3: $92
    sbc l                                         ; $48d4: $9d
    sbc a                                         ; $48d5: $9f
    sub b                                         ; $48d6: $90
    ld h, b                                       ; $48d7: $60
    rst $38                                       ; $48d8: $ff
    ret                                           ; $48d9: $c9


    adc b                                         ; $48da: $88
    rst $38                                       ; $48db: $ff
    add e                                         ; $48dc: $83
    ld bc, $070e                                  ; $48dd: $01 $0e $07
    adc h                                         ; $48e0: $8c
    rrca                                          ; $48e1: $0f
    add [hl]                                      ; $48e2: $86
    add e                                         ; $48e3: $83
    rst $38                                       ; $48e4: $ff
    jp Jump_003_7181                              ; $48e5: $c3 $81 $71


    pop hl                                        ; $48e8: $e1
    ld e, $ff                                     ; $48e9: $1e $ff
    sbc l                                         ; $48eb: $9d
    adc a                                         ; $48ec: $8f
    rst $38                                       ; $48ed: $ff
    ld b, a                                       ; $48ee: $47
    add d                                         ; $48ef: $82
    ld h, d                                       ; $48f0: $62
    jp nz, $e223                                  ; $48f1: $c2 $23 $e2

    rst $20                                       ; $48f4: $e7
    ld b, e                                       ; $48f5: $43
    rst $38                                       ; $48f6: $ff
    call Call_003_5847                            ; $48f7: $cd $47 $58
    rst $08                                       ; $48fa: $cf
    cp a                                          ; $48fb: $bf
    ld [hl], b                                    ; $48fc: $70
    sub e                                         ; $48fd: $93
    ld de, $06ff                                  ; $48fe: $11 $ff $06
    inc bc                                        ; $4901: $03
    inc e                                         ; $4902: $1c
    rrca                                          ; $4903: $0f
    dec de                                        ; $4904: $1b
    inc e                                         ; $4905: $1c
    inc c                                         ; $4906: $0c
    rlca                                          ; $4907: $07
    rst $38                                       ; $4908: $ff
    add a                                         ; $4909: $87
    ld [bc], a                                    ; $490a: $02
    ld [c], a                                     ; $490b: $e2

jr_003_490c:
    jp Jump_003_7ebd                              ; $490c: $c3 $bd $7e


    rst $20                                       ; $490f: $e7
    inc h                                         ; $4910: $24
    rst $38                                       ; $4911: $ff
    push hl                                       ; $4912: $e5
    ld h, $26                                     ; $4913: $26 $26

jr_003_4915:
    db $e3                                        ; $4915: $e3
    ld [c], a                                     ; $4916: $e2
    inc hl                                        ; $4917: $23
    inc sp                                        ; $4918: $33
    pop hl                                        ; $4919: $e1
    cp a                                          ; $491a: $bf
    pop de                                        ; $491b: $d1
    ld sp, $9171                                  ; $491c: $31 $71 $91
    xor [hl]                                      ; $491f: $ae
    ld e, a                                       ; $4920: $5f
    and b                                         ; $4921: $a0
    db $e3                                        ; $4922: $e3
    inc e                                         ; $4923: $1c
    ld a, a                                       ; $4924: $7f
    rst $38                                       ; $4925: $ff
    rst $30                                       ; $4926: $f7
    ld [hl+], a                                   ; $4927: $22
    ld h, e                                       ; $4928: $63
    and d                                         ; $4929: $a2
    or [hl]                                       ; $492a: $b6
    ld h, e                                       ; $492b: $63
    or b                                          ; $492c: $b0
    ld h, c                                       ; $492d: $61
    or [hl]                                       ; $492e: $b6
    ret nz                                        ; $492f: $c0

    ld l, c                                       ; $4930: $69
    ret nz                                        ; $4931: $c0

    ccf                                           ; $4932: $3f
    ldh [rSB], a                                  ; $4933: $e0 $01
    ld bc, $c2fe                                  ; $4935: $01 $fe $c2
    inc hl                                        ; $4938: $23
    and a                                         ; $4939: $a7
    rst $38                                       ; $493a: $ff
    ld e, b                                       ; $493b: $58
    add hl, sp                                    ; $493c: $39
    add $ff                                       ; $493d: $c6 $ff
    nop                                           ; $493f: $00
    inc sp                                        ; $4940: $33
    call z, $dfdc                                 ; $4941: $cc $dc $df
    inc hl                                        ; $4944: $23
    ld h, e                                       ; $4945: $63
    sbc h                                         ; $4946: $9c
    cp [hl]                                       ; $4947: $be
    ld b, c                                       ; $4948: $41
    cp d                                          ; $4949: $ba
    ld b, c                                       ; $494a: $41
    sbc a                                         ; $494b: $9f
    ld h, b                                       ; $494c: $60
    nop                                           ; $494d: $00
    nop                                           ; $494e: $00
    nop                                           ; $494f: $00
    ld b, l                                       ; $4950: $45
    ld bc, $f0ff                                  ; $4951: $01 $ff $f0
    nop                                           ; $4954: $00
    rst $38                                       ; $4955: $ff
    add sp, -$20                                  ; $4956: $e8 $e0
    rst $38                                       ; $4958: $ff
    ldh [$fb], a                                  ; $4959: $e0 $fb
    ld c, $ff                                     ; $495b: $0e $ff
    ldh a, [$de]                                  ; $495d: $f0 $de
    ret nz                                        ; $495f: $c0

    jp hl                                         ; $4960: $e9


    jr @+$1a                                      ; $4961: $18 $18

    ld b, $07                                     ; $4963: $06 $07
    rst $38                                       ; $4965: $ff
    ld [$1808], a                                 ; $4966: $ea $08 $18
    db $fd                                        ; $4969: $fd
    jr jr_003_490c                                ; $496a: $18 $a0

    jp hl                                         ; $496c: $e9


    ld [hl+], a                                   ; $496d: $22
    ld [hl+], a                                   ; $496e: $22
    db $10                                        ; $496f: $10
    ld de, $2726                                  ; $4970: $11 $26 $27
    rst $38                                       ; $4973: $ff
    jr z, jr_003_499f                             ; $4974: $28 $29

    ld a, [hl+]                                   ; $4976: $2a
    dec hl                                        ; $4977: $2b
    inc l                                         ; $4978: $2c
    dec l                                         ; $4979: $2d
    jr z, jr_003_49a5                             ; $497a: $28 $29

    cp a                                          ; $497c: $bf
    ld de, $122e                                  ; $497d: $11 $2e $12
    inc de                                        ; $4980: $13
    ld [hl+], a                                   ; $4981: $22
    ld [hl+], a                                   ; $4982: $22
    add b                                         ; $4983: $80
    jp hl                                         ; $4984: $e9


    ld [bc], a                                    ; $4985: $02
    rst $38                                       ; $4986: $ff
    ld [bc], a                                    ; $4987: $02
    ld a, [de]                                    ; $4988: $1a
    dec de                                        ; $4989: $1b
    cpl                                           ; $498a: $2f
    jr nc, jr_003_49be                            ; $498b: $30 $31

    ld [hl-], a                                   ; $498d: $32
    inc sp                                        ; $498e: $33
    rst $38                                       ; $498f: $ff
    inc [hl]                                      ; $4990: $34
    dec [hl]                                      ; $4991: $35
    ld [hl], $31                                  ; $4992: $36 $31
    ld [hl-], a                                   ; $4994: $32
    scf                                           ; $4995: $37
    jr c, jr_003_49b4                             ; $4996: $38 $1c

    rst $30                                       ; $4998: $f7
    dec e                                         ; $4999: $1d
    ld [bc], a                                    ; $499a: $02
    ld [bc], a                                    ; $499b: $02
    ld h, b                                       ; $499c: $60
    jp hl                                         ; $499d: $e9


    dec b                                         ; $499e: $05

jr_003_499f:
    dec b                                         ; $499f: $05
    db $10                                        ; $49a0: $10
    ld de, $39ff                                  ; $49a1: $11 $ff $39
    ld a, [hl-]                                   ; $49a4: $3a

jr_003_49a5:
    dec sp                                        ; $49a5: $3b
    inc a                                         ; $49a6: $3c
    dec a                                         ; $49a7: $3d
    ld a, $3f                                     ; $49a8: $3e $3f
    ld b, b                                       ; $49aa: $40
    rst $38                                       ; $49ab: $ff
    ld b, c                                       ; $49ac: $41
    ld b, d                                       ; $49ad: $42
    ld b, e                                       ; $49ae: $43
    ld b, h                                       ; $49af: $44
    ld [de], a                                    ; $49b0: $12
    inc de                                        ; $49b1: $13
    dec b                                         ; $49b2: $05
    dec b                                         ; $49b3: $05

jr_003_49b4:
    cp $40                                        ; $49b4: $fe $40
    jp hl                                         ; $49b6: $e9


    rrca                                          ; $49b7: $0f

jr_003_49b8:
    rrca                                          ; $49b8: $0f
    ld a, [de]                                    ; $49b9: $1a
    dec de                                        ; $49ba: $1b
    ld b, l                                       ; $49bb: $45
    ld b, [hl]                                    ; $49bc: $46
    ld b, a                                       ; $49bd: $47

jr_003_49be:
    rst $38                                       ; $49be: $ff
    ld c, b                                       ; $49bf: $48
    ld c, c                                       ; $49c0: $49
    ld c, d                                       ; $49c1: $4a
    ld c, e                                       ; $49c2: $4b
    ld c, h                                       ; $49c3: $4c
    ld b, a                                       ; $49c4: $47
    ld c, l                                       ; $49c5: $4d
    ld c, [hl]                                    ; $49c6: $4e
    rst $18                                       ; $49c7: $df
    ld c, a                                       ; $49c8: $4f
    inc e                                         ; $49c9: $1c
    dec e                                         ; $49ca: $1d
    rrca                                          ; $49cb: $0f
    rrca                                          ; $49cc: $0f
    jr nz, jr_003_49b8                            ; $49cd: $20 $e9

    add hl, de                                    ; $49cf: $19
    add hl, de                                    ; $49d0: $19
    rst $38                                       ; $49d1: $ff
    db $10                                        ; $49d2: $10
    ld de, $5150                                  ; $49d3: $11 $50 $51
    ld d, d                                       ; $49d6: $52
    ld d, e                                       ; $49d7: $53
    ld d, h                                       ; $49d8: $54
    ld d, l                                       ; $49d9: $55
    rst $38                                       ; $49da: $ff
    ld d, [hl]                                    ; $49db: $56
    ld d, a                                       ; $49dc: $57
    ld e, b                                       ; $49dd: $58
    ld e, c                                       ; $49de: $59
    ld e, d                                       ; $49df: $5a
    ld e, e                                       ; $49e0: $5b
    ld [de], a                                    ; $49e1: $12
    inc de                                        ; $49e2: $13
    ei                                            ; $49e3: $fb
    add hl, de                                    ; $49e4: $19
    add hl, de                                    ; $49e5: $19
    nop                                           ; $49e6: $00
    jp hl                                         ; $49e7: $e9


    inc hl                                        ; $49e8: $23
    inc hl                                        ; $49e9: $23
    ld a, [de]                                    ; $49ea: $1a
    dec de                                        ; $49eb: $1b
    ld e, h                                       ; $49ec: $5c
    rst $38                                       ; $49ed: $ff
    ld e, l                                       ; $49ee: $5d
    ld e, [hl]                                    ; $49ef: $5e
    ld e, a                                       ; $49f0: $5f
    ld h, b                                       ; $49f1: $60
    ld h, c                                       ; $49f2: $61
    ld h, d                                       ; $49f3: $62
    ld h, e                                       ; $49f4: $63
    ld h, h                                       ; $49f5: $64
    ld a, a                                       ; $49f6: $7f
    ld h, l                                       ; $49f7: $65
    ld h, [hl]                                    ; $49f8: $66
    ld h, a                                       ; $49f9: $67
    inc e                                         ; $49fa: $1c
    dec e                                         ; $49fb: $1d
    inc hl                                        ; $49fc: $23
    inc hl                                        ; $49fd: $23
    ldh [$c9], a                                  ; $49fe: $e0 $c9
    rst $38                                       ; $4a00: $ff
    nop                                           ; $4a01: $00
    nop                                           ; $4a02: $00
    db $10                                        ; $4a03: $10
    ld de, $6968                                  ; $4a04: $11 $68 $69
    ld l, d                                       ; $4a07: $6a
    ld l, e                                       ; $4a08: $6b
    rst $38                                       ; $4a09: $ff
    ld l, h                                       ; $4a0a: $6c
    ld l, l                                       ; $4a0b: $6d
    ld l, [hl]                                    ; $4a0c: $6e
    ld l, a                                       ; $4a0d: $6f
    ld [hl], b                                    ; $4a0e: $70
    ld [hl], c                                    ; $4a0f: $71
    ld [hl], d                                    ; $4a10: $72
    ld [hl], e                                    ; $4a11: $73
    ei                                            ; $4a12: $fb
    ld [de], a                                    ; $4a13: $12
    inc de                                        ; $4a14: $13
    ld [c], a                                     ; $4a15: $e2
    db $eb                                        ; $4a16: $eb
    inc bc                                        ; $4a17: $03
    inc b                                         ; $4a18: $04
    ld a, [de]                                    ; $4a19: $1a
    dec de                                        ; $4a1a: $1b
    ld [hl], h                                    ; $4a1b: $74
    rst $38                                       ; $4a1c: $ff
    ld [hl], l                                    ; $4a1d: $75
    halt                                          ; $4a1e: $76
    ld [hl], a                                    ; $4a1f: $77
    ld a, b                                       ; $4a20: $78
    ld a, c                                       ; $4a21: $79
    ld a, d                                       ; $4a22: $7a
    ld a, e                                       ; $4a23: $7b
    ld a, h                                       ; $4a24: $7c
    ld a, a                                       ; $4a25: $7f
    ld a, l                                       ; $4a26: $7d
    ld a, [hl]                                    ; $4a27: $7e
    ld a, a                                       ; $4a28: $7f
    inc e                                         ; $4a29: $1c
    dec e                                         ; $4a2a: $1d
    inc bc                                        ; $4a2b: $03
    inc b                                         ; $4a2c: $04
    and b                                         ; $4a2d: $a0
    ret                                           ; $4a2e: $c9


    rst $38                                       ; $4a2f: $ff
    inc c                                         ; $4a30: $0c
    dec c                                         ; $4a31: $0d
    db $10                                        ; $4a32: $10
    ld de, $8180                                  ; $4a33: $11 $80 $81
    add d                                         ; $4a36: $82
    add e                                         ; $4a37: $83
    rst $38                                       ; $4a38: $ff
    add h                                         ; $4a39: $84
    add l                                         ; $4a3a: $85
    add [hl]                                      ; $4a3b: $86
    add a                                         ; $4a3c: $87
    add d                                         ; $4a3d: $82
    adc b                                         ; $4a3e: $88
    adc c                                         ; $4a3f: $89
    adc d                                         ; $4a40: $8a
    rst $28                                       ; $4a41: $ef
    ld [de], a                                    ; $4a42: $12
    inc de                                        ; $4a43: $13
    inc c                                         ; $4a44: $0c
    dec c                                         ; $4a45: $0d
    add b                                         ; $4a46: $80
    ret                                           ; $4a47: $c9


    ld d, $17                                     ; $4a48: $16 $17
    ld a, [de]                                    ; $4a4a: $1a

jr_003_4a4b:
    rst $38                                       ; $4a4b: $ff
    dec de                                        ; $4a4c: $1b
    adc e                                         ; $4a4d: $8b
    adc h                                         ; $4a4e: $8c
    adc l                                         ; $4a4f: $8d
    adc [hl]                                      ; $4a50: $8e
    adc a                                         ; $4a51: $8f
    sub b                                         ; $4a52: $90
    sub c                                         ; $4a53: $91
    rst $38                                       ; $4a54: $ff
    sub d                                         ; $4a55: $92
    sub e                                         ; $4a56: $93
    sub h                                         ; $4a57: $94
    sub l                                         ; $4a58: $95
    sub [hl]                                      ; $4a59: $96
    inc e                                         ; $4a5a: $1c
    dec e                                         ; $4a5b: $1d
    ld d, $bd                                     ; $4a5c: $16 $bd
    rla                                           ; $4a5e: $17
    ld h, b                                       ; $4a5f: $60
    ret                                           ; $4a60: $c9


    jr nz, jr_003_4a84                            ; $4a61: $20 $21

    add hl, bc                                    ; $4a63: $09
    ld a, [bc]                                    ; $4a64: $0a
    rst $38                                       ; $4a65: $ff
    ld [$db0b], a                                 ; $4a66: $ea $0b $db
    jr nz, jr_003_4a8c                            ; $4a69: $20 $21

    ld b, b                                       ; $4a6b: $40
    ret                                           ; $4a6c: $c9


    inc h                                         ; $4a6d: $24
    dec h                                         ; $4a6e: $25
    cp $e4                                        ; $4a6f: $fe $e4
    inc d                                         ; $4a71: $14
    dec d                                         ; $4a72: $15
    ld a, [de]                                    ; $4a73: $1a
    or $e5                                        ; $4a74: $f6 $e5
    dec h                                         ; $4a76: $25
    jr nz, jr_003_4a4b                            ; $4a77: $20 $d2

    ld e, $1f                                     ; $4a79: $1e $1f
    nop                                           ; $4a7b: $00
    jp nc, $ffff                                  ; $4a7c: $d2 $ff $ff

    rst $38                                       ; $4a7f: $ff
    rst $38                                       ; $4a80: $ff
    nop                                           ; $4a81: $00
    rst $38                                       ; $4a82: $ff
    rst $38                                       ; $4a83: $ff

jr_003_4a84:
    rst $38                                       ; $4a84: $ff
    rst $38                                       ; $4a85: $ff
    rst $38                                       ; $4a86: $ff
    rst $38                                       ; $4a87: $ff
    rst $38                                       ; $4a88: $ff
    rst $38                                       ; $4a89: $ff
    rst $38                                       ; $4a8a: $ff
    rst $38                                       ; $4a8b: $ff

jr_003_4a8c:
    rst $38                                       ; $4a8c: $ff
    rst $38                                       ; $4a8d: $ff
    rst $38                                       ; $4a8e: $ff
    rst $38                                       ; $4a8f: $ff
    rst $38                                       ; $4a90: $ff
    rst $38                                       ; $4a91: $ff
    nop                                           ; $4a92: $00
    rst $38                                       ; $4a93: $ff
    rst $38                                       ; $4a94: $ff
    rst $38                                       ; $4a95: $ff
    rst $38                                       ; $4a96: $ff
    rst $38                                       ; $4a97: $ff
    rst $38                                       ; $4a98: $ff
    rst $38                                       ; $4a99: $ff
    db $e3                                        ; $4a9a: $e3
    nop                                           ; $4a9b: $00
    nop                                           ; $4a9c: $00
    nop                                           ; $4a9d: $00
    adc l                                         ; $4a9e: $8d
    dec c                                         ; $4a9f: $0d
    rst $38                                       ; $4aa0: $ff
    ldh a, [rBCPS]                                ; $4aa1: $f0 $68
    ld [$e7ff], sp                                ; $4aa3: $08 $ff $e7
    ldh [rIE], a                                  ; $4aa6: $e0 $ff
    sbc $ef                                       ; $4aa8: $de $ef
    ld c, b                                       ; $4aaa: $48
    ld b, h                                       ; $4aab: $44
    ret nz                                        ; $4aac: $c0

    rst $38                                       ; $4aad: $ff
    ldh [$e8], a                                  ; $4aae: $e0 $e8
    adc e                                         ; $4ab0: $8b
    rst $38                                       ; $4ab1: $ff
    db $ec                                        ; $4ab2: $ec
    ldh [rIE], a                                  ; $4ab3: $e0 $ff
    ld h, b                                       ; $4ab5: $60
    db $eb                                        ; $4ab6: $eb
    dec bc                                        ; $4ab7: $0b
    rst $38                                       ; $4ab8: $ff
    db $ec                                        ; $4ab9: $ec
    ret nz                                        ; $4aba: $c0

    ldh [rIE], a                                  ; $4abb: $e0 $ff
    ld h, b                                       ; $4abd: $60
    db $eb                                        ; $4abe: $eb
    ldh [rIE], a                                  ; $4abf: $e0 $ff
    ldh [rIE], a                                  ; $4ac1: $e0 $ff
    ldh [rIE], a                                  ; $4ac3: $e0 $ff
    ldh [$f5], a                                  ; $4ac5: $e0 $f5
    ld a, [bc]                                    ; $4ac7: $0a
    ld a, [bc]                                    ; $4ac8: $0a
    ld b, $40                                     ; $4ac9: $06 $40
    db $ed                                        ; $4acb: $ed
    ld a, [bc]                                    ; $4acc: $0a
    ld a, [bc]                                    ; $4acd: $0a
    ldh [rIE], a                                  ; $4ace: $e0 $ff
    ldh [rIE], a                                  ; $4ad0: $e0 $ff
    ldh [rIE], a                                  ; $4ad2: $e0 $ff
    ldh [$e5], a                                  ; $4ad4: $e0 $e5
    cp $e4                                        ; $4ad6: $fe $e4
    db $10                                        ; $4ad8: $10
    rst $00                                       ; $4ad9: $c7
    pop hl                                        ; $4ada: $e1
    di                                            ; $4adb: $f3
    db $e4                                        ; $4adc: $e4
    ldh [rIE], a                                  ; $4add: $e0 $ff
    rst $38                                       ; $4adf: $ff
    db $eb                                        ; $4ae0: $eb
    ld c, b                                       ; $4ae1: $48
    rst $38                                       ; $4ae2: $ff
    db $ec                                        ; $4ae3: $ec
    pop hl                                        ; $4ae4: $e1
    db $ec                                        ; $4ae5: $ec
    rst $38                                       ; $4ae6: $ff
    rst $38                                       ; $4ae7: $ff
    nop                                           ; $4ae8: $00
    rst $38                                       ; $4ae9: $ff
    rst $38                                       ; $4aea: $ff
    rst $38                                       ; $4aeb: $ff
    rst $38                                       ; $4aec: $ff
    rst $38                                       ; $4aed: $ff
    rst $38                                       ; $4aee: $ff
    rst $38                                       ; $4aef: $ff
    rst $38                                       ; $4af0: $ff
    rst $38                                       ; $4af1: $ff
    rst $38                                       ; $4af2: $ff
    rst $38                                       ; $4af3: $ff
    rst $38                                       ; $4af4: $ff
    rst $38                                       ; $4af5: $ff
    rst $38                                       ; $4af6: $ff
    rst $38                                       ; $4af7: $ff
    rst $38                                       ; $4af8: $ff
    nop                                           ; $4af9: $00
    rst $38                                       ; $4afa: $ff
    rst $38                                       ; $4afb: $ff
    rst $38                                       ; $4afc: $ff
    rst $38                                       ; $4afd: $ff
    rst $38                                       ; $4afe: $ff
    rst $38                                       ; $4aff: $ff
    ld e, d                                       ; $4b00: $5a
    add d                                         ; $4b01: $82
    nop                                           ; $4b02: $00
    nop                                           ; $4b03: $00
    nop                                           ; $4b04: $00
    ret nz                                        ; $4b05: $c0

    add hl, de                                    ; $4b06: $19
    ld e, a                                       ; $4b07: $5f
    ld h, a                                       ; $4b08: $67
    cp $3d                                        ; $4b09: $fe $3d
    rrca                                          ; $4b0b: $0f
    nop                                           ; $4b0c: $00
    ld h, b                                       ; $4b0d: $60
    ld bc, $7fff                                  ; $4b0e: $01 $ff $7f
    rst $28                                       ; $4b11: $ef
    dec a                                         ; $4b12: $3d
    nop                                           ; $4b13: $00
    nop                                           ; $4b14: $00
    ld hl, sp+$03                                 ; $4b15: $f8 $03
    ld b, h                                       ; $4b17: $44
    inc bc                                        ; $4b18: $03
    nop                                           ; $4b19: $00
    ld [bc], a                                    ; $4b1a: $02
    ld b, b                                       ; $4b1b: $40
    ld bc, $7f56                                  ; $4b1c: $01 $56 $7f
    rra                                           ; $4b1f: $1f
    ld [de], a                                    ; $4b20: $12
    sub $00                                       ; $4b21: $d6 $00
    nop                                           ; $4b23: $00
    nop                                           ; $4b24: $00
    rst $38                                       ; $4b25: $ff
    inc bc                                        ; $4b26: $03
    rra                                           ; $4b27: $1f
    ld [de], a                                    ; $4b28: $12
    sub $00                                       ; $4b29: $d6 $00
    nop                                           ; $4b2b: $00
    nop                                           ; $4b2c: $00
    sbc $7b                                       ; $4b2d: $de $7b
    adc [hl]                                      ; $4b2f: $8e
    ld a, a                                       ; $4b30: $7f
    add b                                         ; $4b31: $80
    ld a, [hl]                                    ; $4b32: $7e
    add b                                         ; $4b33: $80
    ld a, l                                       ; $4b34: $7d
    sbc $7b                                       ; $4b35: $de $7b
    jr jr_003_4b9c                                ; $4b37: $18 $63

    ld d, d                                       ; $4b39: $52
    ld c, d                                       ; $4b3a: $4a
    adc h                                         ; $4b3b: $8c
    ld sp, $7bde                                  ; $4b3c: $31 $de $7b
    jr @+$65                                      ; $4b3f: $18 $63

    ld d, d                                       ; $4b41: $52
    ld c, d                                       ; $4b42: $4a
    adc h                                         ; $4b43: $8c
    db $31                                        ; $4b44: $31

Call_003_4b45:
    push af                                       ; $4b45: $f5
    push bc                                       ; $4b46: $c5
    push hl                                       ; $4b47: $e5
    sub $20                                       ; $4b48: $d6 $20
    push af                                       ; $4b4a: $f5
    ld h, $00                                     ; $4b4b: $26 $00
    ld l, a                                       ; $4b4d: $6f
    add hl, hl                                    ; $4b4e: $29
    add hl, hl                                    ; $4b4f: $29
    add hl, hl                                    ; $4b50: $29
    add hl, hl                                    ; $4b51: $29
    ld bc, $50f0                                  ; $4b52: $01 $f0 $50
    add hl, bc                                    ; $4b55: $09
    push de                                       ; $4b56: $d5
    ld c, $10                                     ; $4b57: $0e $10

jr_003_4b59:
    ld a, [hl+]                                   ; $4b59: $2a
    call Call_003_4b9d                            ; $4b5a: $cd $9d $4b
    ld a, $08                                     ; $4b5d: $3e $08
    add e                                         ; $4b5f: $83
    ld e, a                                       ; $4b60: $5f
    jr nc, jr_003_4b64                            ; $4b61: $30 $01

    inc d                                         ; $4b63: $14

jr_003_4b64:
    dec c                                         ; $4b64: $0d
    jr nz, jr_003_4b59                            ; $4b65: $20 $f2

    pop de                                        ; $4b67: $d1
    pop af                                        ; $4b68: $f1
    call Call_003_4b93                            ; $4b69: $cd $93 $4b
    ld a, e                                       ; $4b6c: $7b
    and $07                                       ; $4b6d: $e6 $07
    add c                                         ; $4b6f: $81
    ld b, a                                       ; $4b70: $47
    bit 3, a                                      ; $4b71: $cb $5f
    jr z, jr_003_4b7c                             ; $4b73: $28 $07

    ld a, $80                                     ; $4b75: $3e $80
    add e                                         ; $4b77: $83
    ld e, a                                       ; $4b78: $5f
    jr nc, jr_003_4b7c                            ; $4b79: $30 $01

    inc d                                         ; $4b7b: $14

jr_003_4b7c:
    ld a, b                                       ; $4b7c: $78
    and $07                                       ; $4b7d: $e6 $07
    ld b, a                                       ; $4b7f: $47
    ld a, e                                       ; $4b80: $7b
    and $f8                                       ; $4b81: $e6 $f8
    or b                                          ; $4b83: $b0
    ld e, a                                       ; $4b84: $5f
    pop hl                                        ; $4b85: $e1
    pop bc                                        ; $4b86: $c1
    pop af                                        ; $4b87: $f1
    ret                                           ; $4b88: $c9


    push af                                       ; $4b89: $f5
    push hl                                       ; $4b8a: $e5
    sub $20                                       ; $4b8b: $d6 $20
    call Call_003_4b93                            ; $4b8d: $cd $93 $4b
    pop hl                                        ; $4b90: $e1
    pop af                                        ; $4b91: $f1
    ret                                           ; $4b92: $c9


Call_003_4b93:
    ld hl, $5750                                  ; $4b93: $21 $50 $57
    add l                                         ; $4b96: $85
    ld l, a                                       ; $4b97: $6f
    jr nc, jr_003_4b9b                            ; $4b98: $30 $01

    inc h                                         ; $4b9a: $24

jr_003_4b9b:
    ld c, [hl]                                    ; $4b9b: $4e

jr_003_4b9c:
    ret                                           ; $4b9c: $c9


Call_003_4b9d:
    push af                                       ; $4b9d: $f5
    push bc                                       ; $4b9e: $c5
    push de                                       ; $4b9f: $d5
    push hl                                       ; $4ba0: $e5
    ld b, a                                       ; $4ba1: $47
    ld a, e                                       ; $4ba2: $7b
    and $07                                       ; $4ba3: $e6 $07
    ld c, a                                       ; $4ba5: $4f
    push de                                       ; $4ba6: $d5
    ld de, $ffff                                  ; $4ba7: $11 $ff $ff
    push bc                                       ; $4baa: $c5
    or a                                          ; $4bab: $b7
    ld a, b                                       ; $4bac: $78
    jr z, jr_003_4bba                             ; $4bad: $28 $0b

jr_003_4baf:
    sra a                                         ; $4baf: $cb $2f
    res 7, a                                      ; $4bb1: $cb $bf
    sra e                                         ; $4bb3: $cb $2b
    res 7, e                                      ; $4bb5: $cb $bb
    dec c                                         ; $4bb7: $0d
    jr nz, jr_003_4baf                            ; $4bb8: $20 $f5

jr_003_4bba:
    pop bc                                        ; $4bba: $c1
    ld h, a                                       ; $4bbb: $67
    ld a, $08                                     ; $4bbc: $3e $08
    sub c                                         ; $4bbe: $91
    ld c, a                                       ; $4bbf: $4f
    or a                                          ; $4bc0: $b7
    ld a, b                                       ; $4bc1: $78
    jr z, jr_003_4bcb                             ; $4bc2: $28 $07

jr_003_4bc4:
    sla a                                         ; $4bc4: $cb $27
    sla d                                         ; $4bc6: $cb $22
    dec c                                         ; $4bc8: $0d
    jr nz, jr_003_4bc4                            ; $4bc9: $20 $f9

jr_003_4bcb:
    ld c, a                                       ; $4bcb: $4f
    ld b, h                                       ; $4bcc: $44
    ld h, d                                       ; $4bcd: $62
    ld l, e                                       ; $4bce: $6b
    pop de                                        ; $4bcf: $d1
    push hl                                       ; $4bd0: $e5
    sra d                                         ; $4bd1: $cb $2a
    rr e                                          ; $4bd3: $cb $1b
    sra d                                         ; $4bd5: $cb $2a
    rr e                                          ; $4bd7: $cb $1b
    sra d                                         ; $4bd9: $cb $2a
    rr e                                          ; $4bdb: $cb $1b
    ld hl, $d000                                  ; $4bdd: $21 $00 $d0
    add hl, de                                    ; $4be0: $19
    pop de                                        ; $4be1: $d1
    ld a, [hl]                                    ; $4be2: $7e
    and d                                         ; $4be3: $a2
    or b                                          ; $4be4: $b0
    ld [hl+], a                                   ; $4be5: $22
    inc hl                                        ; $4be6: $23
    inc hl                                        ; $4be7: $23
    inc hl                                        ; $4be8: $23
    inc hl                                        ; $4be9: $23
    inc hl                                        ; $4bea: $23
    inc hl                                        ; $4beb: $23
    inc hl                                        ; $4bec: $23
    inc hl                                        ; $4bed: $23
    inc hl                                        ; $4bee: $23
    inc hl                                        ; $4bef: $23
    inc hl                                        ; $4bf0: $23
    inc hl                                        ; $4bf1: $23
    inc hl                                        ; $4bf2: $23
    inc hl                                        ; $4bf3: $23
    inc hl                                        ; $4bf4: $23
    ld a, [hl]                                    ; $4bf5: $7e
    and e                                         ; $4bf6: $a3
    or c                                          ; $4bf7: $b1
    ld [hl], a                                    ; $4bf8: $77
    pop hl                                        ; $4bf9: $e1
    pop de                                        ; $4bfa: $d1
    pop bc                                        ; $4bfb: $c1
    pop af                                        ; $4bfc: $f1
    ret                                           ; $4bfd: $c9


Call_003_4bfe:
    push af                                       ; $4bfe: $f5
    push bc                                       ; $4bff: $c5
    push de                                       ; $4c00: $d5
    push hl                                       ; $4c01: $e5
    ld de, $d000                                  ; $4c02: $11 $00 $d0
    ld b, $80                                     ; $4c05: $06 $80

jr_003_4c07:
    ld hl, $50f0                                  ; $4c07: $21 $f0 $50
    ld c, $01                                     ; $4c0a: $0e $01
    call Call_000_03eb                            ; $4c0c: $cd $eb $03
    dec b                                         ; $4c0f: $05
    jr nz, jr_003_4c07                            ; $4c10: $20 $f5

    pop hl                                        ; $4c12: $e1
    pop de                                        ; $4c13: $d1
    pop bc                                        ; $4c14: $c1
    pop af                                        ; $4c15: $f1
    ret                                           ; $4c16: $c9


Call_003_4c17:
    push af                                       ; $4c17: $f5
    push bc                                       ; $4c18: $c5
    push de                                       ; $4c19: $d5
    push hl                                       ; $4c1a: $e5
    ld a, $05                                     ; $4c1b: $3e $05
    ldh [$96], a                                  ; $4c1d: $e0 $96
    ldh [rSVBK], a                                ; $4c1f: $e0 $70
    ld a, [$d821]                                 ; $4c21: $fa $21 $d8
    rst $18                                       ; $4c24: $df

    db $78, $05

    inc hl                                        ; $4c27: $23
    inc hl                                        ; $4c28: $23
    inc hl                                        ; $4c29: $23
    ld a, [hl+]                                   ; $4c2a: $2a
    dec a                                         ; $4c2b: $3d
    dec a                                         ; $4c2c: $3d
    ld b, [hl]                                    ; $4c2d: $46
    dec b                                         ; $4c2e: $05
    dec b                                         ; $4c2f: $05
    sra b                                         ; $4c30: $cb $28
    inc b                                         ; $4c32: $04
    ld l, b                                       ; $4c33: $68
    ld h, $00                                     ; $4c34: $26 $00
    call Call_000_08b9                            ; $4c36: $cd $b9 $08
    ld b, l                                       ; $4c39: $45
    ld de, $d000                                  ; $4c3a: $11 $00 $d0
    ld a, [$c36e]                                 ; $4c3d: $fa $6e $c3
    ld l, a                                       ; $4c40: $6f
    ld h, $00                                     ; $4c41: $26 $00
    add hl, hl                                    ; $4c43: $29
    add hl, hl                                    ; $4c44: $29
    add hl, hl                                    ; $4c45: $29
    add hl, hl                                    ; $4c46: $29
    add hl, de                                    ; $4c47: $19
    ld d, h                                       ; $4c48: $54
    ld e, l                                       ; $4c49: $5d
    ld a, $07                                     ; $4c4a: $3e $07
    ldh [$96], a                                  ; $4c4c: $e0 $96
    ldh [rSVBK], a                                ; $4c4e: $e0 $70

jr_003_4c50:
    ld hl, $50f0                                  ; $4c50: $21 $f0 $50
    ld c, $01                                     ; $4c53: $0e $01
    call Call_000_03eb                            ; $4c55: $cd $eb $03
    dec b                                         ; $4c58: $05
    jr nz, jr_003_4c50                            ; $4c59: $20 $f5

    pop hl                                        ; $4c5b: $e1
    pop de                                        ; $4c5c: $d1
    pop bc                                        ; $4c5d: $c1
    pop af                                        ; $4c5e: $f1
    ret                                           ; $4c5f: $c9


    push af                                       ; $4c60: $f5
    push bc                                       ; $4c61: $c5
    push de                                       ; $4c62: $d5
    push hl                                       ; $4c63: $e5
    ldh a, [$96]                                  ; $4c64: $f0 $96
    push af                                       ; $4c66: $f5
    rst $20                                       ; $4c67: $e7

    db $00, $03

    call Call_000_2e3b                            ; $4c6a: $cd $3b $2e
    ld hl, $8c00                                  ; $4c6d: $21 $00 $8c
    ld a, $05                                     ; $4c70: $3e $05
    ldh [$96], a                                  ; $4c72: $e0 $96
    ldh [rSVBK], a                                ; $4c74: $e0 $70
    ld a, [$d84d]                                 ; $4c76: $fa $4d $d8
    bit 3, a                                      ; $4c79: $cb $5f
    jr z, jr_003_4c80                             ; $4c7b: $28 $03

    ld hl, $ac00                                  ; $4c7d: $21 $00 $ac

jr_003_4c80:
    push hl                                       ; $4c80: $e5
    ld de, $ff00                                  ; $4c81: $11 $00 $ff
    add hl, de                                    ; $4c84: $19
    push hl                                       ; $4c85: $e5
    add hl, de                                    ; $4c86: $19
    push hl                                       ; $4c87: $e5
    add hl, de                                    ; $4c88: $19
    push hl                                       ; $4c89: $e5
    add hl, de                                    ; $4c8a: $19
    ld d, h                                       ; $4c8b: $54
    ld e, l                                       ; $4c8c: $5d
    ld a, $07                                     ; $4c8d: $3e $07
    ldh [$96], a                                  ; $4c8f: $e0 $96
    ldh [rSVBK], a                                ; $4c91: $e0 $70
    ld hl, $d000                                  ; $4c93: $21 $00 $d0
    ld c, $10                                     ; $4c96: $0e $10
    call Call_000_0468                            ; $4c98: $cd $68 $04
    call Call_000_0684                            ; $4c9b: $cd $84 $06
    call Call_000_2e3b                            ; $4c9e: $cd $3b $2e
    ld hl, $d100                                  ; $4ca1: $21 $00 $d1
    pop de                                        ; $4ca4: $d1
    ld c, $10                                     ; $4ca5: $0e $10
    call Call_000_0468                            ; $4ca7: $cd $68 $04
    call Call_000_0684                            ; $4caa: $cd $84 $06
    call Call_000_2e3b                            ; $4cad: $cd $3b $2e
    ld hl, $d200                                  ; $4cb0: $21 $00 $d2
    pop de                                        ; $4cb3: $d1
    ld c, $10                                     ; $4cb4: $0e $10
    call Call_000_0468                            ; $4cb6: $cd $68 $04
    call Call_000_0684                            ; $4cb9: $cd $84 $06
    call Call_000_2e3b                            ; $4cbc: $cd $3b $2e
    ld hl, $d300                                  ; $4cbf: $21 $00 $d3
    pop de                                        ; $4cc2: $d1
    ld c, $10                                     ; $4cc3: $0e $10
    call Call_000_0468                            ; $4cc5: $cd $68 $04
    call Call_000_0684                            ; $4cc8: $cd $84 $06
    call Call_000_2e3b                            ; $4ccb: $cd $3b $2e
    ld c, $10                                     ; $4cce: $0e $10
    rst $30                                       ; $4cd0: $f7

    db $60, $03

    jr z, jr_003_4cd7                             ; $4cd3: $28 $02

    ld c, $07                                     ; $4cd5: $0e $07

jr_003_4cd7:
    ld hl, $d400                                  ; $4cd7: $21 $00 $d4
    pop de                                        ; $4cda: $d1
    call Call_000_0468                            ; $4cdb: $cd $68 $04
    call Call_000_0684                            ; $4cde: $cd $84 $06
    call Call_000_2e3b                            ; $4ce1: $cd $3b $2e
    rst $28                                       ; $4ce4: $ef

    db $00, $03

    pop af                                        ; $4ce7: $f1
    ldh [$96], a                                  ; $4ce8: $e0 $96
    ldh [rSVBK], a                                ; $4cea: $e0 $70
    pop hl                                        ; $4cec: $e1
    pop de                                        ; $4ced: $d1
    pop bc                                        ; $4cee: $c1
    pop af                                        ; $4cef: $f1
    ret                                           ; $4cf0: $c9


    push af                                       ; $4cf1: $f5
    push bc                                       ; $4cf2: $c5
    push de                                       ; $4cf3: $d5
    push hl                                       ; $4cf4: $e5
    ldh a, [$96]                                  ; $4cf5: $f0 $96
    push af                                       ; $4cf7: $f5
    push hl                                       ; $4cf8: $e5
    ld a, $05                                     ; $4cf9: $3e $05
    ldh [$96], a                                  ; $4cfb: $e0 $96
    ldh [rSVBK], a                                ; $4cfd: $e0 $70
    ld a, [$d821]                                 ; $4cff: $fa $21 $d8
    rst $18                                       ; $4d02: $df
    ld a, b                                       ; $4d03: $78
    dec b                                         ; $4d04: $05
    inc hl                                        ; $4d05: $23
    inc hl                                        ; $4d06: $23
    inc hl                                        ; $4d07: $23
    ld b, [hl]                                    ; $4d08: $46
    dec b                                         ; $4d09: $05
    dec b                                         ; $4d0a: $05
    ld c, b                                       ; $4d0b: $48
    pop hl                                        ; $4d0c: $e1
    ld a, $07                                     ; $4d0d: $3e $07
    ldh [$96], a                                  ; $4d0f: $e0 $96
    ldh [rSVBK], a                                ; $4d11: $e0 $70
    call Call_003_4bfe                            ; $4d13: $cd $fe $4b
    ld de, $0000                                  ; $4d16: $11 $00 $00

jr_003_4d19:
    ld a, [hl+]                                   ; $4d19: $2a
    cp $02                                        ; $4d1a: $fe $02
    jr z, jr_003_4d37                             ; $4d1c: $28 $19

    cp $03                                        ; $4d1e: $fe $03
    jr z, jr_003_4d37                             ; $4d20: $28 $15

    cp $01                                        ; $4d22: $fe $01
    jr nz, jr_003_4d32                            ; $4d24: $20 $0c

    ld e, $00                                     ; $4d26: $1e $00
    ld d, c                                       ; $4d28: $51
    sra d                                         ; $4d29: $cb $2a
    rr e                                          ; $4d2b: $cb $1b
    ld a, c                                       ; $4d2d: $79
    add b                                         ; $4d2e: $80
    ld c, a                                       ; $4d2f: $4f
    jr jr_003_4d19                                ; $4d30: $18 $e7

jr_003_4d32:
    call Call_003_4b45                            ; $4d32: $cd $45 $4b
    jr jr_003_4d19                                ; $4d35: $18 $e2

jr_003_4d37:
    pop af                                        ; $4d37: $f1
    ldh [$96], a                                  ; $4d38: $e0 $96
    ldh [rSVBK], a                                ; $4d3a: $e0 $70
    pop hl                                        ; $4d3c: $e1
    pop de                                        ; $4d3d: $d1
    pop bc                                        ; $4d3e: $c1
    pop af                                        ; $4d3f: $f1
    ret                                           ; $4d40: $c9


    push af                                       ; $4d41: $f5
    push bc                                       ; $4d42: $c5
    push de                                       ; $4d43: $d5
    push hl                                       ; $4d44: $e5
    ldh a, [$96]                                  ; $4d45: $f0 $96
    push af                                       ; $4d47: $f5
    ld a, $05                                     ; $4d48: $3e $05
    ldh [$96], a                                  ; $4d4a: $e0 $96
    ldh [rSVBK], a                                ; $4d4c: $e0 $70
    ld de, $0000                                  ; $4d4e: $11 $00 $00
    ld a, [$d821]                                 ; $4d51: $fa $21 $d8
    or a                                          ; $4d54: $b7
    jr z, jr_003_4d61                             ; $4d55: $28 $0a

    ld a, [$c36e]                                 ; $4d57: $fa $6e $c3
    ld d, a                                       ; $4d5a: $57
    ld e, $00                                     ; $4d5b: $1e $00
    sra d                                         ; $4d5d: $cb $2a
    rr e                                          ; $4d5f: $cb $1b

jr_003_4d61:
    ld hl, $c36a                                  ; $4d61: $21 $6a $c3
    ld [hl], e                                    ; $4d64: $73
    inc hl                                        ; $4d65: $23
    ld [hl], d                                    ; $4d66: $72
    ld a, [$d821]                                 ; $4d67: $fa $21 $d8
    rst $18                                       ; $4d6a: $df

    db $78, $05

    inc hl                                        ; $4d6d: $23
    inc hl                                        ; $4d6e: $23
    inc hl                                        ; $4d6f: $23
    ld a, [hl]                                    ; $4d70: $7e
    dec a                                         ; $4d71: $3d
    dec a                                         ; $4d72: $3d
    ld d, a                                       ; $4d73: $57
    ld e, a                                       ; $4d74: $5f
    ld a, [$d821]                                 ; $4d75: $fa $21 $d8
    or a                                          ; $4d78: $b7
    jr z, jr_003_4d80                             ; $4d79: $28 $05

    ld a, [$c36e]                                 ; $4d7b: $fa $6e $c3
    add e                                         ; $4d7e: $83
    ld e, a                                       ; $4d7f: $5f

jr_003_4d80:
    ld hl, $c36c                                  ; $4d80: $21 $6c $c3
    ld [hl], d                                    ; $4d83: $72
    inc hl                                        ; $4d84: $23
    ld [hl], e                                    ; $4d85: $73
    call Call_003_4c17                            ; $4d86: $cd $17 $4c
    pop af                                        ; $4d89: $f1
    ldh [$96], a                                  ; $4d8a: $e0 $96
    ldh [rSVBK], a                                ; $4d8c: $e0 $70
    pop hl                                        ; $4d8e: $e1
    pop de                                        ; $4d8f: $d1
    pop bc                                        ; $4d90: $c1
    pop af                                        ; $4d91: $f1
    ret                                           ; $4d92: $c9


    push af                                       ; $4d93: $f5
    push bc                                       ; $4d94: $c5
    push de                                       ; $4d95: $d5
    push hl                                       ; $4d96: $e5
    ldh a, [$96]                                  ; $4d97: $f0 $96
    push af                                       ; $4d99: $f5
    ld a, $05                                     ; $4d9a: $3e $05
    ldh [$96], a                                  ; $4d9c: $e0 $96
    ldh [rSVBK], a                                ; $4d9e: $e0 $70
    ld hl, $c36c                                  ; $4da0: $21 $6c $c3
    ld b, [hl]                                    ; $4da3: $46
    inc hl                                        ; $4da4: $23
    ld c, [hl]                                    ; $4da5: $4e
    ld hl, $c36a                                  ; $4da6: $21 $6a $c3
    ld a, [hl+]                                   ; $4da9: $2a
    ld d, [hl]                                    ; $4daa: $56
    ld e, a                                       ; $4dab: $5f
    ld hl, $d869                                  ; $4dac: $21 $69 $d8
    ld a, [hl+]                                   ; $4daf: $2a
    ld h, [hl]                                    ; $4db0: $66
    ld l, a                                       ; $4db1: $6f
    ld a, [hl+]                                   ; $4db2: $2a
    cp $02                                        ; $4db3: $fe $02
    jr z, jr_003_4dd8                             ; $4db5: $28 $21

    cp $03                                        ; $4db7: $fe $03
    jr z, jr_003_4dd8                             ; $4db9: $28 $1d

    cp $01                                        ; $4dbb: $fe $01
    jr nz, jr_003_4dcd                            ; $4dbd: $20 $0e

    ld e, $00                                     ; $4dbf: $1e $00
    ld d, c                                       ; $4dc1: $51
    sra d                                         ; $4dc2: $cb $2a
    rr e                                          ; $4dc4: $cb $1b
    ld a, c                                       ; $4dc6: $79
    add b                                         ; $4dc7: $80
    ld [$c36d], a                                 ; $4dc8: $ea $6d $c3
    jr jr_003_4dd8                                ; $4dcb: $18 $0b

jr_003_4dcd:
    push af                                       ; $4dcd: $f5
    ld a, $07                                     ; $4dce: $3e $07
    ldh [$96], a                                  ; $4dd0: $e0 $96
    ldh [rSVBK], a                                ; $4dd2: $e0 $70
    pop af                                        ; $4dd4: $f1
    call Call_003_4b45                            ; $4dd5: $cd $45 $4b

jr_003_4dd8:
    ld hl, $c36a                                  ; $4dd8: $21 $6a $c3
    ld a, e                                       ; $4ddb: $7b
    ld [hl+], a                                   ; $4ddc: $22
    ld [hl], d                                    ; $4ddd: $72
    sla e                                         ; $4dde: $cb $23
    rl d                                          ; $4de0: $cb $12
    ld a, d                                       ; $4de2: $7a
    ld [$c36e], a                                 ; $4de3: $ea $6e $c3
    pop af                                        ; $4de6: $f1
    ldh [$96], a                                  ; $4de7: $e0 $96
    ldh [rSVBK], a                                ; $4de9: $e0 $70
    pop hl                                        ; $4deb: $e1
    pop de                                        ; $4dec: $d1
    pop bc                                        ; $4ded: $c1
    pop af                                        ; $4dee: $f1
    ret                                           ; $4def: $c9


    push af                                       ; $4df0: $f5
    push bc                                       ; $4df1: $c5
    push de                                       ; $4df2: $d5
    push hl                                       ; $4df3: $e5
    ld a, [$d821]                                 ; $4df4: $fa $21 $d8
    ld b, a                                       ; $4df7: $47
    ld a, [$d820]                                 ; $4df8: $fa $20 $d8
    cp b                                          ; $4dfb: $b8
    jr nz, jr_003_4e15                            ; $4dfc: $20 $17

    ld b, a                                       ; $4dfe: $47
    ld a, [$d824]                                 ; $4dff: $fa $24 $d8
    cp b                                          ; $4e02: $b8
    jr z, jr_003_4e0a                             ; $4e03: $28 $05

    pop hl                                        ; $4e05: $e1
    pop de                                        ; $4e06: $d1
    pop bc                                        ; $4e07: $c1
    pop af                                        ; $4e08: $f1
    ret                                           ; $4e09: $c9


jr_003_4e0a:
    ld a, [$c82d]                                 ; $4e0a: $fa $2d $c8
    bit 7, a                                      ; $4e0d: $cb $7f
    jr nz, jr_003_4e15                            ; $4e0f: $20 $04

    and $7f                                       ; $4e11: $e6 $7f
    jr nz, jr_003_4e1a                            ; $4e13: $20 $05

jr_003_4e15:
    pop hl                                        ; $4e15: $e1
    pop de                                        ; $4e16: $d1
    pop bc                                        ; $4e17: $c1
    pop af                                        ; $4e18: $f1
    ret                                           ; $4e19: $c9


jr_003_4e1a:
    ldh a, [$96]                                  ; $4e1a: $f0 $96
    push af                                       ; $4e1c: $f5
    ld a, $07                                     ; $4e1d: $3e $07
    ldh [$96], a                                  ; $4e1f: $e0 $96
    ldh [rSVBK], a                                ; $4e21: $e0 $70
    ld a, [$c96d]                                 ; $4e23: $fa $6d $c9
    or a                                          ; $4e26: $b7
    jr z, jr_003_4e2d                             ; $4e27: $28 $04

    ld b, $5f                                     ; $4e29: $06 $5f
    jr jr_003_4e2f                                ; $4e2b: $18 $02

jr_003_4e2d:
    ld b, $7f                                     ; $4e2d: $06 $7f

jr_003_4e2f:
    ld a, [$c36e]                                 ; $4e2f: $fa $6e $c3
    cp b                                          ; $4e32: $b8
    jr nc, jr_003_4e60                            ; $4e33: $30 $2b

    ld hl, $c36a                                  ; $4e35: $21 $6a $c3
    ld a, [hl+]                                   ; $4e38: $2a
    ld h, [hl]                                    ; $4e39: $66
    ld l, a                                       ; $4e3a: $6f
    rl l                                          ; $4e3b: $cb $15
    ld l, h                                       ; $4e3d: $6c
    rl l                                          ; $4e3e: $cb $15
    ld h, $00                                     ; $4e40: $26 $00
    rl h                                          ; $4e42: $cb $14
    ld a, h                                       ; $4e44: $7c
    or l                                          ; $4e45: $b5
    jr z, jr_003_4e49                             ; $4e46: $28 $01

    dec hl                                        ; $4e48: $2b

jr_003_4e49:
    add hl, hl                                    ; $4e49: $29
    add hl, hl                                    ; $4e4a: $29
    add hl, hl                                    ; $4e4b: $29
    add hl, hl                                    ; $4e4c: $29
    ld d, h                                       ; $4e4d: $54
    ld e, l                                       ; $4e4e: $5d
    ld bc, $d000                                  ; $4e4f: $01 $00 $d0
    add hl, bc                                    ; $4e52: $09
    push hl                                       ; $4e53: $e5
    ld hl, $8800                                  ; $4e54: $21 $00 $88
    add hl, de                                    ; $4e57: $19
    ld d, h                                       ; $4e58: $54
    ld e, l                                       ; $4e59: $5d
    pop hl                                        ; $4e5a: $e1
    ld c, $02                                     ; $4e5b: $0e $02
    call Call_000_0468                            ; $4e5d: $cd $68 $04

jr_003_4e60:
    pop af                                        ; $4e60: $f1
    ldh [$96], a                                  ; $4e61: $e0 $96
    ldh [rSVBK], a                                ; $4e63: $e0 $70
    pop hl                                        ; $4e65: $e1
    pop de                                        ; $4e66: $d1
    pop bc                                        ; $4e67: $c1
    pop af                                        ; $4e68: $f1
    ret                                           ; $4e69: $c9


    push af                                       ; $4e6a: $f5
    push bc                                       ; $4e6b: $c5
    push de                                       ; $4e6c: $d5
    push hl                                       ; $4e6d: $e5
    ldh a, [$96]                                  ; $4e6e: $f0 $96
    push af                                       ; $4e70: $f5
    push hl                                       ; $4e71: $e5
    ld hl, $c36c                                  ; $4e72: $21 $6c $c3
    ld b, [hl]                                    ; $4e75: $46
    inc hl                                        ; $4e76: $23
    ld c, [hl]                                    ; $4e77: $4e
    ld hl, $c36a                                  ; $4e78: $21 $6a $c3
    ld a, [hl+]                                   ; $4e7b: $2a
    ld d, [hl]                                    ; $4e7c: $56
    ld e, a                                       ; $4e7d: $5f
    pop hl                                        ; $4e7e: $e1
    ld a, [hl+]                                   ; $4e7f: $2a
    cp $02                                        ; $4e80: $fe $02
    jr z, jr_003_4ea8                             ; $4e82: $28 $24

    cp $03                                        ; $4e84: $fe $03
    jr z, jr_003_4ea8                             ; $4e86: $28 $20

    cp $01                                        ; $4e88: $fe $01
    jr nz, jr_003_4e9d                            ; $4e8a: $20 $11

Call_003_4e8c:
    ld e, $00                                     ; $4e8c: $1e $00
    ld d, c                                       ; $4e8e: $51
    sra d                                         ; $4e8f: $cb $2a
    rr e                                          ; $4e91: $cb $1b
    ld a, c                                       ; $4e93: $79
    add b                                         ; $4e94: $80
    ld [$c36d], a                                 ; $4e95: $ea $6d $c3
    ld [$c36e], a                                 ; $4e98: $ea $6e $c3
    jr jr_003_4ea8                                ; $4e9b: $18 $0b

jr_003_4e9d:
    push af                                       ; $4e9d: $f5
    ld a, $07                                     ; $4e9e: $3e $07
    ldh [$96], a                                  ; $4ea0: $e0 $96
    ldh [rSVBK], a                                ; $4ea2: $e0 $70
    pop af                                        ; $4ea4: $f1
    call Call_003_4b45                            ; $4ea5: $cd $45 $4b

jr_003_4ea8:
    ld hl, $c36a                                  ; $4ea8: $21 $6a $c3
    ld a, e                                       ; $4eab: $7b
    ld [hl+], a                                   ; $4eac: $22
    ld [hl], d                                    ; $4ead: $72
    pop af                                        ; $4eae: $f1
    ldh [$96], a                                  ; $4eaf: $e0 $96
    ldh [rSVBK], a                                ; $4eb1: $e0 $70
    pop hl                                        ; $4eb3: $e1
    pop de                                        ; $4eb4: $d1
    pop bc                                        ; $4eb5: $c1
    pop af                                        ; $4eb6: $f1
    ret                                           ; $4eb7: $c9


    push af                                       ; $4eb8: $f5
    push bc                                       ; $4eb9: $c5
    push de                                       ; $4eba: $d5
    push hl                                       ; $4ebb: $e5
    ldh a, [$96]                                  ; $4ebc: $f0 $96
    push af                                       ; $4ebe: $f5
    xor a                                         ; $4ebf: $af
    ld hl, $c36a                                  ; $4ec0: $21 $6a $c3
    ld [hl+], a                                   ; $4ec3: $22
    ld [hl+], a                                   ; $4ec4: $22
    ld [hl+], a                                   ; $4ec5: $22
    ld [hl+], a                                   ; $4ec6: $22
    ld [hl+], a                                   ; $4ec7: $22
    ld [hl], a                                    ; $4ec8: $77
    ld a, $07                                     ; $4ec9: $3e $07
    ldh [$96], a                                  ; $4ecb: $e0 $96
    ldh [rSVBK], a                                ; $4ecd: $e0 $70
    call Call_003_4bfe                            ; $4ecf: $cd $fe $4b
    pop af                                        ; $4ed2: $f1
    ldh [$96], a                                  ; $4ed3: $e0 $96
    ldh [rSVBK], a                                ; $4ed5: $e0 $70
    pop hl                                        ; $4ed7: $e1
    pop de                                        ; $4ed8: $d1
    pop bc                                        ; $4ed9: $c1
    pop af                                        ; $4eda: $f1
    ret                                           ; $4edb: $c9


    push af                                       ; $4edc: $f5
    push bc                                       ; $4edd: $c5
    push de                                       ; $4ede: $d5
    push hl                                       ; $4edf: $e5
    ldh a, [$96]                                  ; $4ee0: $f0 $96
    push af                                       ; $4ee2: $f5
    xor a                                         ; $4ee3: $af
    ld hl, $c36a                                  ; $4ee4: $21 $6a $c3
    ld [hl+], a                                   ; $4ee7: $22
    ld [hl+], a                                   ; $4ee8: $22
    ld [hl+], a                                   ; $4ee9: $22
    ld [hl+], a                                   ; $4eea: $22
    ld a, $00                                     ; $4eeb: $3e $00
    ld [hl+], a                                   ; $4eed: $22
    ld [hl+], a                                   ; $4eee: $22
    ld a, $07                                     ; $4eef: $3e $07
    ldh [$96], a                                  ; $4ef1: $e0 $96
    ldh [rSVBK], a                                ; $4ef3: $e0 $70
    call Call_003_4bfe                            ; $4ef5: $cd $fe $4b
    pop af                                        ; $4ef8: $f1
    ldh [$96], a                                  ; $4ef9: $e0 $96
    ldh [rSVBK], a                                ; $4efb: $e0 $70
    pop hl                                        ; $4efd: $e1
    pop de                                        ; $4efe: $d1
    pop bc                                        ; $4eff: $c1
    pop af                                        ; $4f00: $f1
    ret                                           ; $4f01: $c9


    push af                                       ; $4f02: $f5
    push bc                                       ; $4f03: $c5
    push de                                       ; $4f04: $d5
    push hl                                       ; $4f05: $e5
    ld a, [$c36e]                                 ; $4f06: $fa $6e $c3
    ld d, a                                       ; $4f09: $57
    ld e, $00                                     ; $4f0a: $1e $00
    sra d                                         ; $4f0c: $cb $2a
    rr e                                          ; $4f0e: $cb $1b
    ld hl, $c36a                                  ; $4f10: $21 $6a $c3
    ld [hl], e                                    ; $4f13: $73
    inc hl                                        ; $4f14: $23
    ld [hl], d                                    ; $4f15: $72
    ld hl, $c36c                                  ; $4f16: $21 $6c $c3
    ld [hl], c                                    ; $4f19: $71
    inc hl                                        ; $4f1a: $23
    ld [hl], c                                    ; $4f1b: $71
    pop hl                                        ; $4f1c: $e1
    pop de                                        ; $4f1d: $d1
    pop bc                                        ; $4f1e: $c1
    pop af                                        ; $4f1f: $f1
    ret                                           ; $4f20: $c9


    push af                                       ; $4f21: $f5
    push bc                                       ; $4f22: $c5
    push de                                       ; $4f23: $d5
    push hl                                       ; $4f24: $e5
    ld hl, $c36a                                  ; $4f25: $21 $6a $c3
    ld a, [hl+]                                   ; $4f28: $2a
    ld h, [hl]                                    ; $4f29: $66
    ld l, a                                       ; $4f2a: $6f
    rl l                                          ; $4f2b: $cb $15
    ld l, h                                       ; $4f2d: $6c
    rl l                                          ; $4f2e: $cb $15
    ld a, [$c36f]                                 ; $4f30: $fa $6f $c3
    ld b, a                                       ; $4f33: $47
    ld a, l                                       ; $4f34: $7d
    inc a                                         ; $4f35: $3c
    sub b                                         ; $4f36: $90
    ld l, a                                       ; $4f37: $6f
    ld a, [$c36e]                                 ; $4f38: $fa $6e $c3
    ld b, $80                                     ; $4f3b: $06 $80
    add b                                         ; $4f3d: $80
    ld c, l                                       ; $4f3e: $4d
    ld b, l                                       ; $4f3f: $45
    ld h, d                                       ; $4f40: $62
    ld l, e                                       ; $4f41: $6b

jr_003_4f42:
    ld [hl+], a                                   ; $4f42: $22
    inc a                                         ; $4f43: $3c
    dec c                                         ; $4f44: $0d
    jr nz, jr_003_4f42                            ; $4f45: $20 $fb

    ld b, $80                                     ; $4f47: $06 $80
    sub b                                         ; $4f49: $90
    bit 7, a                                      ; $4f4a: $cb $7f
    jr z, jr_003_4f50                             ; $4f4c: $28 $02

    ld a, $7f                                     ; $4f4e: $3e $7f

jr_003_4f50:
    ld [$c36e], a                                 ; $4f50: $ea $6e $c3
    pop hl                                        ; $4f53: $e1
    pop de                                        ; $4f54: $d1
    pop bc                                        ; $4f55: $c1
    pop af                                        ; $4f56: $f1
    ret                                           ; $4f57: $c9


    push af                                       ; $4f58: $f5
    push bc                                       ; $4f59: $c5
    push hl                                       ; $4f5a: $e5
    ld hl, $c36e                                  ; $4f5b: $21 $6e $c3
    ld a, [hl+]                                   ; $4f5e: $2a
    ld b, [hl]                                    ; $4f5f: $46
    ld c, a                                       ; $4f60: $4f
    sub b                                         ; $4f61: $90
    inc hl                                        ; $4f62: $23
    ld [hl+], a                                   ; $4f63: $22
    ld [hl], b                                    ; $4f64: $70
    dec hl                                        ; $4f65: $2b
    dec hl                                        ; $4f66: $2b
    ld [hl], c                                    ; $4f67: $71
    pop hl                                        ; $4f68: $e1
    pop bc                                        ; $4f69: $c1
    pop af                                        ; $4f6a: $f1
    ret                                           ; $4f6b: $c9


    push af                                       ; $4f6c: $f5
    ldh a, [rLCDC]                                ; $4f6d: $f0 $40
    bit 7, a                                      ; $4f6f: $cb $7f
    jr z, jr_003_4f78                             ; $4f71: $28 $05

    call Call_003_4fb7                            ; $4f73: $cd $b7 $4f
    jr jr_003_4f7b                                ; $4f76: $18 $03

jr_003_4f78:
    call Call_003_5039                            ; $4f78: $cd $39 $50

jr_003_4f7b:
    pop af                                        ; $4f7b: $f1
    ret                                           ; $4f7c: $c9


    push af                                       ; $4f7d: $f5
    push bc                                       ; $4f7e: $c5
    ld a, [$d821]                                 ; $4f7f: $fa $21 $d8
    ld b, a                                       ; $4f82: $47
    ld a, [$d824]                                 ; $4f83: $fa $24 $d8
    cp b                                          ; $4f86: $b8
    jr nz, jr_003_4f94                            ; $4f87: $20 $0b

    ld a, [$c82d]                                 ; $4f89: $fa $2d $c8
    bit 7, a                                      ; $4f8c: $cb $7f
    jr nz, jr_003_4f94                            ; $4f8e: $20 $04

    and $7f                                       ; $4f90: $e6 $7f
    jr nz, jr_003_4fa2                            ; $4f92: $20 $0e

jr_003_4f94:
    ldh a, [rLCDC]                                ; $4f94: $f0 $40
    bit 7, a                                      ; $4f96: $cb $7f
    jr z, jr_003_4f9f                             ; $4f98: $28 $05

    call Call_003_4fb7                            ; $4f9a: $cd $b7 $4f
    jr jr_003_4fa2                                ; $4f9d: $18 $03

jr_003_4f9f:
    call Call_003_5039                            ; $4f9f: $cd $39 $50

jr_003_4fa2:
    ld hl, $c36c                                  ; $4fa2: $21 $6c $c3
    ld b, [hl]                                    ; $4fa5: $46
    inc hl                                        ; $4fa6: $23
    ld c, [hl]                                    ; $4fa7: $4e
    ld a, [$c36e]                                 ; $4fa8: $fa $6e $c3
    ld [$c36f], a                                 ; $4fab: $ea $6f $c3
    ld a, c                                       ; $4fae: $79
    add b                                         ; $4faf: $80
    ld [hl], a                                    ; $4fb0: $77
    ld [$c36e], a                                 ; $4fb1: $ea $6e $c3
    pop bc                                        ; $4fb4: $c1
    pop af                                        ; $4fb5: $f1
    ret                                           ; $4fb6: $c9


Call_003_4fb7:
    push af                                       ; $4fb7: $f5
    push bc                                       ; $4fb8: $c5
    push de                                       ; $4fb9: $d5
    push hl                                       ; $4fba: $e5
    ldh a, [$96]                                  ; $4fbb: $f0 $96
    push af                                       ; $4fbd: $f5
    rst $20                                       ; $4fbe: $e7

    db $00, $03

    ld a, $07                                     ; $4fc1: $3e $07
    ldh [$96], a                                  ; $4fc3: $e0 $96
    ldh [rSVBK], a                                ; $4fc5: $e0 $70
    ld a, [$c96d]                                 ; $4fc7: $fa $6d $c9
    or a                                          ; $4fca: $b7
    jr z, jr_003_4fd1                             ; $4fcb: $28 $04

    ld b, $60                                     ; $4fcd: $06 $60
    jr jr_003_4fd3                                ; $4fcf: $18 $02

jr_003_4fd1:
    ld b, $80                                     ; $4fd1: $06 $80

jr_003_4fd3:
    ld a, [$c36e]                                 ; $4fd3: $fa $6e $c3
    cp b                                          ; $4fd6: $b8
    jr c, jr_003_4fda                             ; $4fd7: $38 $01

    ld a, b                                       ; $4fd9: $78

jr_003_4fda:
    ld b, $00                                     ; $4fda: $06 $00

jr_003_4fdc:
    inc b                                         ; $4fdc: $04
    sub $10                                       ; $4fdd: $d6 $10
    jr c, jr_003_4fe3                             ; $4fdf: $38 $02

    jr jr_003_4fdc                                ; $4fe1: $18 $f9

jr_003_4fe3:
    push bc                                       ; $4fe3: $c5
    ld hl, $0000                                  ; $4fe4: $21 $00 $00
    ld b, h                                       ; $4fe7: $44
    ld c, l                                       ; $4fe8: $4d
    ld de, $8800                                  ; $4fe9: $11 $00 $88
    add hl, de                                    ; $4fec: $19
    ldh a, [$96]                                  ; $4fed: $f0 $96
    push af                                       ; $4fef: $f5
    ld a, $05                                     ; $4ff0: $3e $05
    ldh [$96], a                                  ; $4ff2: $e0 $96
    ldh [rSVBK], a                                ; $4ff4: $e0 $70
    ld a, [$d84d]                                 ; $4ff6: $fa $4d $d8
    bit 3, a                                      ; $4ff9: $cb $5f
    jr z, jr_003_5001                             ; $4ffb: $28 $04

    ld de, $2000                                  ; $4ffd: $11 $00 $20
    add hl, de                                    ; $5000: $19

jr_003_5001:
    pop af                                        ; $5001: $f1
    ldh [$96], a                                  ; $5002: $e0 $96
    ldh [rSVBK], a                                ; $5004: $e0 $70
    push hl                                       ; $5006: $e5
    ld h, b                                       ; $5007: $60
    ld l, c                                       ; $5008: $69
    ld de, $d000                                  ; $5009: $11 $00 $d0
    add hl, de                                    ; $500c: $19
    pop de                                        ; $500d: $d1
    pop bc                                        ; $500e: $c1
    ld c, $1a                                     ; $500f: $0e $1a

jr_003_5011:
    push bc                                       ; $5011: $c5
    push hl                                       ; $5012: $e5
    push de                                       ; $5013: $d5
    call Call_000_0468                            ; $5014: $cd $68 $04
    ld bc, $0100                                  ; $5017: $01 $00 $01
    pop hl                                        ; $501a: $e1
    add hl, bc                                    ; $501b: $09
    ld d, h                                       ; $501c: $54
    ld e, l                                       ; $501d: $5d
    pop hl                                        ; $501e: $e1
    add hl, bc                                    ; $501f: $09
    pop bc                                        ; $5020: $c1
    push hl                                       ; $5021: $e5
    call Call_000_0684                            ; $5022: $cd $84 $06
    pop hl                                        ; $5025: $e1
    call Call_000_2e3b                            ; $5026: $cd $3b $2e
    dec b                                         ; $5029: $05
    jr nz, jr_003_5011                            ; $502a: $20 $e5

    rst $28                                       ; $502c: $ef

    db $00, $03

    pop af                                        ; $502f: $f1
    ldh [$96], a                                  ; $5030: $e0 $96
    ldh [rSVBK], a                                ; $5032: $e0 $70
    pop hl                                        ; $5034: $e1
    pop de                                        ; $5035: $d1
    pop bc                                        ; $5036: $c1
    pop af                                        ; $5037: $f1
    ret                                           ; $5038: $c9


Call_003_5039:
    push af                                       ; $5039: $f5
    push bc                                       ; $503a: $c5
    push de                                       ; $503b: $d5
    push hl                                       ; $503c: $e5
    ldh a, [$96]                                  ; $503d: $f0 $96
    push af                                       ; $503f: $f5
    ld hl, $c36a                                  ; $5040: $21 $6a $c3
    ld a, [hl+]                                   ; $5043: $2a
    ld h, [hl]                                    ; $5044: $66
    ld l, a                                       ; $5045: $6f
    rl l                                          ; $5046: $cb $15
    ld l, h                                       ; $5048: $6c
    rl l                                          ; $5049: $cb $15
    ld b, l                                       ; $504b: $45
    ld a, $07                                     ; $504c: $3e $07
    ldh [$96], a                                  ; $504e: $e0 $96
    ldh [rSVBK], a                                ; $5050: $e0 $70
    ld a, b                                       ; $5052: $78
    ld b, $00                                     ; $5053: $06 $00

jr_003_5055:
    inc b                                         ; $5055: $04
    sub $20                                       ; $5056: $d6 $20
    jr z, jr_003_505e                             ; $5058: $28 $04

    jr c, jr_003_505e                             ; $505a: $38 $02

    jr jr_003_5055                                ; $505c: $18 $f7

jr_003_505e:
    ld hl, $d000                                  ; $505e: $21 $00 $d0
    ld de, $8800                                  ; $5061: $11 $00 $88
    ld c, $20                                     ; $5064: $0e $20

jr_003_5066:
    push bc                                       ; $5066: $c5
    push hl                                       ; $5067: $e5
    push de                                       ; $5068: $d5
    ld a, $00                                     ; $5069: $3e $00
    ldh [rVBK], a                                 ; $506b: $e0 $4f
    call Call_000_2096                            ; $506d: $cd $96 $20
    ld bc, $0200                                  ; $5070: $01 $00 $02
    pop hl                                        ; $5073: $e1
    add hl, bc                                    ; $5074: $09
    ld d, h                                       ; $5075: $54
    ld e, l                                       ; $5076: $5d
    pop hl                                        ; $5077: $e1
    add hl, bc                                    ; $5078: $09
    pop bc                                        ; $5079: $c1
    dec b                                         ; $507a: $05
    jr nz, jr_003_5066                            ; $507b: $20 $e9

    pop af                                        ; $507d: $f1
    ldh [$96], a                                  ; $507e: $e0 $96
    ldh [rSVBK], a                                ; $5080: $e0 $70
    pop hl                                        ; $5082: $e1
    pop de                                        ; $5083: $d1
    pop bc                                        ; $5084: $c1
    pop af                                        ; $5085: $f1
    ret                                           ; $5086: $c9


    push bc                                       ; $5087: $c5
    push de                                       ; $5088: $d5
    push hl                                       ; $5089: $e5
    ldh a, [$96]                                  ; $508a: $f0 $96
    push af                                       ; $508c: $f5
    ld a, $07                                     ; $508d: $3e $07
    ldh [$96], a                                  ; $508f: $e0 $96
    ldh [rSVBK], a                                ; $5091: $e0 $70
    ld a, [$c371]                                 ; $5093: $fa $71 $c3
    ld l, a                                       ; $5096: $6f
    ld h, $00                                     ; $5097: $26 $00
    add hl, hl                                    ; $5099: $29
    add hl, hl                                    ; $509a: $29
    add hl, hl                                    ; $509b: $29
    add hl, hl                                    ; $509c: $29
    ld b, h                                       ; $509d: $44
    ld c, l                                       ; $509e: $4d
    ld de, $8800                                  ; $509f: $11 $00 $88
    add hl, de                                    ; $50a2: $19
    ld a, [$c372]                                 ; $50a3: $fa $72 $c3
    or a                                          ; $50a6: $b7
    jr z, jr_003_50ad                             ; $50a7: $28 $04

    ld de, $2000                                  ; $50a9: $11 $00 $20
    add hl, de                                    ; $50ac: $19

jr_003_50ad:
    push hl                                       ; $50ad: $e5
    ld h, b                                       ; $50ae: $60
    ld l, c                                       ; $50af: $69
    ld de, $d000                                  ; $50b0: $11 $00 $d0
    add hl, de                                    ; $50b3: $19
    pop de                                        ; $50b4: $d1
    ld a, [$c370]                                 ; $50b5: $fa $70 $c3
    cp $20                                        ; $50b8: $fe $20
    jr c, jr_003_50be                             ; $50ba: $38 $02

    ld a, $20                                     ; $50bc: $3e $20

jr_003_50be:
    ld c, a                                       ; $50be: $4f
    call Call_000_0468                            ; $50bf: $cd $68 $04
    ld b, a                                       ; $50c2: $47
    pop af                                        ; $50c3: $f1
    ldh [$96], a                                  ; $50c4: $e0 $96
    ldh [rSVBK], a                                ; $50c6: $e0 $70
    ld a, b                                       ; $50c8: $78
    pop hl                                        ; $50c9: $e1
    pop de                                        ; $50ca: $d1
    pop bc                                        ; $50cb: $c1
    ret                                           ; $50cc: $c9


    push af                                       ; $50cd: $f5
    push bc                                       ; $50ce: $c5
    push de                                       ; $50cf: $d5
    push hl                                       ; $50d0: $e5
    ld a, d                                       ; $50d1: $7a
    and $0f                                       ; $50d2: $e6 $0f
    ld d, a                                       ; $50d4: $57
    sla e                                         ; $50d5: $cb $23
    rl d                                          ; $50d7: $cb $12
    sla e                                         ; $50d9: $cb $23
    rl d                                          ; $50db: $cb $12
    sla e                                         ; $50dd: $cb $23
    rl d                                          ; $50df: $cb $12

jr_003_50e1:
    ld a, [hl+]                                   ; $50e1: $2a
    cp $00                                        ; $50e2: $fe $00
    jr z, jr_003_50eb                             ; $50e4: $28 $05

    call Call_003_4b45                            ; $50e6: $cd $45 $4b
    jr jr_003_50e1                                ; $50e9: $18 $f6

jr_003_50eb:
    pop hl                                        ; $50eb: $e1
    pop de                                        ; $50ec: $d1
    pop bc                                        ; $50ed: $c1
    pop af                                        ; $50ee: $f1
    ret                                           ; $50ef: $c9


    db $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00
    db $ff, $40, $df, $60, $df, $60, $df, $60, $df, $60, $df, $20, $ff, $40, $df, $20
    db $ff, $d8, $db, $6c, $db, $b4, $b7, $48, $ff, $00, $ff, $00, $ff, $00, $ff, $00

    rst $38                                       ; $5120: $ff
    ld d, b                                       ; $5121: $50
    rst $18                                       ; $5122: $df
    ld a, b                                       ; $5123: $78
    di                                            ; $5124: $f3
    ld a, h                                       ; $5125: $7c
    rst $18                                       ; $5126: $df
    ld hl, sp-$0d                                 ; $5127: $f8 $f3
    ld a, h                                       ; $5129: $7c
    rst $10                                       ; $512a: $d7
    ld hl, sp-$29                                 ; $512b: $f8 $d7
    ld a, b                                       ; $512d: $78
    rst $10                                       ; $512e: $d7
    jr z, @+$01                                   ; $512f: $28 $ff

    jr nz, @+$01                                  ; $5131: $20 $ff

    ld a, b                                       ; $5133: $78
    db $e3                                        ; $5134: $e3
    cp h                                          ; $5135: $bc

jr_003_5136:
    rst $38                                       ; $5136: $ff
    ld [hl], b                                    ; $5137: $70
    rst $28                                       ; $5138: $ef
    jr c, jr_003_5136                             ; $5139: $38 $fb

    db $f4                                        ; $513b: $f4
    and a                                         ; $513c: $a7
    ld a, b                                       ; $513d: $78
    rst $28                                       ; $513e: $ef
    db $10                                        ; $513f: $10
    rst $38                                       ; $5140: $ff
    add sp, -$55                                  ; $5141: $e8 $ab
    db $fc                                        ; $5143: $fc
    ei                                            ; $5144: $fb
    db $f4                                        ; $5145: $f4
    and a                                         ; $5146: $a7
    ld a, b                                       ; $5147: $78
    rst $38                                       ; $5148: $ff
    ld a, b                                       ; $5149: $78
    db $eb                                        ; $514a: $eb
    cp h                                          ; $514b: $bc
    cp e                                          ; $514c: $bb
    db $fc                                        ; $514d: $fc
    and e                                         ; $514e: $a3
    ld e, h                                       ; $514f: $5c
    rst $38                                       ; $5150: $ff
    jr nz, @+$01                                  ; $5151: $20 $ff

    ld d, b                                       ; $5153: $50
    rst $30                                       ; $5154: $f7
    jr z, @+$01                                   ; $5155: $28 $ff

    ld d, h                                       ; $5157: $54
    db $dd                                        ; $5158: $dd
    xor d                                         ; $5159: $aa
    cp e                                          ; $515a: $bb
    call z, Call_003_74ff                         ; $515b: $cc $ff $74
    push bc                                       ; $515e: $c5
    ld a, [hl-]                                   ; $515f: $3a

    db $ff, $c0, $df, $60, $df, $a0, $bf, $40, $ff, $00, $ff, $00, $ff, $00, $ff, $00

    rst $38                                       ; $5170: $ff
    ld b, b                                       ; $5171: $40
    rst $18                                       ; $5172: $df
    and b                                         ; $5173: $a0
    cp a                                          ; $5174: $bf
    ret nz                                        ; $5175: $c0

    cp a                                          ; $5176: $bf
    ret nz                                        ; $5177: $c0

    cp a                                          ; $5178: $bf
    ret nz                                        ; $5179: $c0

    cp a                                          ; $517a: $bf
    ret nz                                        ; $517b: $c0

    rst $38                                       ; $517c: $ff
    ld b, b                                       ; $517d: $40
    rst $18                                       ; $517e: $df
    jr nz, @+$01                                  ; $517f: $20 $ff

    add b                                         ; $5181: $80
    rst $38                                       ; $5182: $ff
    ld b, b                                       ; $5183: $40
    rst $18                                       ; $5184: $df
    ld h, b                                       ; $5185: $60
    rst $18                                       ; $5186: $df
    ld h, b                                       ; $5187: $60
    rst $18                                       ; $5188: $df
    ld h, b                                       ; $5189: $60
    rst $18                                       ; $518a: $df
    ld h, b                                       ; $518b: $60
    rst $18                                       ; $518c: $df
    and b                                         ; $518d: $a0
    cp a                                          ; $518e: $bf
    ld b, b                                       ; $518f: $40
    rst $38                                       ; $5190: $ff
    nop                                           ; $5191: $00
    rst $38                                       ; $5192: $ff
    adc b                                         ; $5193: $88

jr_003_5194:
    ei                                            ; $5194: $fb
    ld d, h                                       ; $5195: $54
    rst $30                                       ; $5196: $f7
    jr z, @+$01                                   ; $5197: $28 $ff

    ld d, b                                       ; $5199: $50
    rst $18                                       ; $519a: $df
    xor b                                         ; $519b: $a8

jr_003_519c:
    cp e                                          ; $519c: $bb
    ld b, h                                       ; $519d: $44
    rst $38                                       ; $519e: $ff
    nop                                           ; $519f: $00
    rst $38                                       ; $51a0: $ff
    nop                                           ; $51a1: $00
    rst $38                                       ; $51a2: $ff
    jr nz, jr_003_5194                            ; $51a3: $20 $ef

    jr nc, @+$01                                  ; $51a5: $30 $ff

    ld hl, sp-$5d                                 ; $51a7: $f8 $a3
    ld a, h                                       ; $51a9: $7c
    rst $28                                       ; $51aa: $ef
    jr nc, jr_003_519c                            ; $51ab: $30 $ef

    db $10                                        ; $51ad: $10
    rst $38                                       ; $51ae: $ff
    nop                                           ; $51af: $00

    db $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $c0, $df, $60, $df, $a0
    db $ff, $00, $ff, $00, $ff, $00, $ff, $f8, $83, $7c, $ff, $00, $ff, $00, $ff, $00
    db $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $60, $cf, $30

    rst $38                                       ; $51e0: $ff
    ld [$14fb], sp                                ; $51e1: $08 $fb $14
    rst $30                                       ; $51e4: $f7
    jr @-$07                                      ; $51e5: $18 $f7

    jr z, @-$0f                                   ; $51e7: $28 $ef

    ld d, b                                       ; $51e9: $50
    rst $18                                       ; $51ea: $df
    ld h, b                                       ; $51eb: $60
    rst $18                                       ; $51ec: $df
    and b                                         ; $51ed: $a0
    cp a                                          ; $51ee: $bf
    ld b, b                                       ; $51ef: $40
    rst $38                                       ; $51f0: $ff
    ld [hl], b                                    ; $51f1: $70
    rst $08                                       ; $51f2: $cf
    cp b                                          ; $51f3: $b8
    cp e                                          ; $51f4: $bb
    call z, $ccbb                                 ; $51f5: $cc $bb $cc
    cp e                                          ; $51f8: $bb
    call z, $ccbb                                 ; $51f9: $cc $bb $cc
    ei                                            ; $51fc: $fb
    ld [hl], h                                    ; $51fd: $74
    rst $00                                       ; $51fe: $c7
    db $38                                        ; $51ff: $38

    db $ff, $40, $df, $e0, $df, $60, $df, $60, $df, $60, $df, $60, $df, $60, $df, $20
    db $ff, $70, $cf, $b8, $bb, $4c, $fb, $34, $e7, $58, $df, $a0, $ff, $f8, $83, $7c
    db $ff, $70, $cf, $b8, $bb, $4c, $fb, $74, $cf, $38, $fb, $8c, $fb, $74, $c7, $38
    db $ff, $10, $f7, $38, $f7, $58, $d7, $b8, $ff, $f8, $93, $7c, $f7, $18, $f7, $08

    rst $38                                       ; $5240: $ff
    ld hl, sp-$7d                                 ; $5241: $f8 $83
    db $fc                                        ; $5243: $fc
    rst $38                                       ; $5244: $ff
    ldh a, [$8f]                                  ; $5245: $f0 $8f
    ld a, b                                       ; $5247: $78
    ei                                            ; $5248: $fb
    inc c                                         ; $5249: $0c
    ei                                            ; $524a: $fb
    adc h                                         ; $524b: $8c
    ei                                            ; $524c: $fb
    ld [hl], h                                    ; $524d: $74
    rst $00                                       ; $524e: $c7
    jr c, @+$01                                   ; $524f: $38 $ff

    ld [hl], b                                    ; $5251: $70
    rst $08                                       ; $5252: $cf
    cp b                                          ; $5253: $b8
    cp e                                          ; $5254: $bb
    call nz, $f0ff                                ; $5255: $c4 $ff $f0
    adc a                                         ; $5258: $8f
    ld hl, sp-$45                                 ; $5259: $f8 $bb
    call z, Call_003_74fb                         ; $525b: $cc $fb $74

jr_003_525e:
    rst $00                                       ; $525e: $c7
    jr c, @+$01                                   ; $525f: $38 $ff

    ld hl, sp-$75                                 ; $5261: $f8 $8b
    db $fc                                        ; $5263: $fc
    cp e                                          ; $5264: $bb
    ld c, h                                       ; $5265: $4c
    ei                                            ; $5266: $fb
    inc d                                         ; $5267: $14
    rst $30                                       ; $5268: $f7
    jr z, @-$0f                                   ; $5269: $28 $ef

    jr nc, @-$0f                                  ; $526b: $30 $ef

    jr nc, jr_003_525e                            ; $526d: $30 $ef

    db $10                                        ; $526f: $10
    rst $38                                       ; $5270: $ff
    ld [hl], b                                    ; $5271: $70
    rst $08                                       ; $5272: $cf
    cp b                                          ; $5273: $b8
    cp e                                          ; $5274: $bb
    call z, Call_003_74fb                         ; $5275: $cc $fb $74
    rst $08                                       ; $5278: $cf
    cp b                                          ; $5279: $b8
    cp e                                          ; $527a: $bb
    call z, Call_003_74fb                         ; $527b: $cc $fb $74
    rst $00                                       ; $527e: $c7
    jr c, @+$01                                   ; $527f: $38 $ff

    ld [hl], b                                    ; $5281: $70
    rst $08                                       ; $5282: $cf
    cp b                                          ; $5283: $b8
    cp e                                          ; $5284: $bb
    call z, Call_003_7cfb                         ; $5285: $cc $fb $7c
    srl h                                         ; $5288: $cb $3c
    ei                                            ; $528a: $fb
    adc h                                         ; $528b: $8c
    ei                                            ; $528c: $fb
    ld [hl], h                                    ; $528d: $74
    rst $00                                       ; $528e: $c7
    jr c, @+$01                                   ; $528f: $38 $ff

    nop                                           ; $5291: $00
    rst $38                                       ; $5292: $ff
    ret nz                                        ; $5293: $c0

    sbc a                                         ; $5294: $9f
    ld h, b                                       ; $5295: $60
    rst $38                                       ; $5296: $ff
    nop                                           ; $5297: $00
    rst $38                                       ; $5298: $ff
    nop                                           ; $5299: $00
    rst $38                                       ; $529a: $ff
    ret nz                                        ; $529b: $c0

    sbc a                                         ; $529c: $9f
    ld h, b                                       ; $529d: $60
    rst $38                                       ; $529e: $ff
    nop                                           ; $529f: $00
    rst $38                                       ; $52a0: $ff
    nop                                           ; $52a1: $00
    rst $38                                       ; $52a2: $ff
    ret nz                                        ; $52a3: $c0

jr_003_52a4:
    sbc a                                         ; $52a4: $9f
    ld h, b                                       ; $52a5: $60
    rst $38                                       ; $52a6: $ff
    nop                                           ; $52a7: $00
    rst $38                                       ; $52a8: $ff
    ret nz                                        ; $52a9: $c0

    rst $18                                       ; $52aa: $df
    ld h, b                                       ; $52ab: $60
    rst $18                                       ; $52ac: $df
    and b                                         ; $52ad: $a0
    cp a                                          ; $52ae: $bf
    ld b, b                                       ; $52af: $40
    rst $38                                       ; $52b0: $ff
    db $10                                        ; $52b1: $10
    rst $30                                       ; $52b2: $f7
    jr z, jr_003_52a4                             ; $52b3: $28 $ef

    ld d, b                                       ; $52b5: $50
    rst $18                                       ; $52b6: $df
    and b                                         ; $52b7: $a0
    rst $38                                       ; $52b8: $ff
    ld b, b                                       ; $52b9: $40
    rst $38                                       ; $52ba: $ff
    jr nz, @+$01                                  ; $52bb: $20 $ff

    db $10                                        ; $52bd: $10
    rst $30                                       ; $52be: $f7
    ld [$00ff], sp                                ; $52bf: $08 $ff $00
    rst $38                                       ; $52c2: $ff
    ld hl, sp-$7d                                 ; $52c3: $f8 $83
    ld a, h                                       ; $52c5: $7c
    rst $38                                       ; $52c6: $ff
    nop                                           ; $52c7: $00
    rst $38                                       ; $52c8: $ff
    ld hl, sp-$7d                                 ; $52c9: $f8 $83
    ld a, h                                       ; $52cb: $7c
    rst $38                                       ; $52cc: $ff
    nop                                           ; $52cd: $00
    rst $38                                       ; $52ce: $ff
    nop                                           ; $52cf: $00
    rst $38                                       ; $52d0: $ff
    add b                                         ; $52d1: $80
    rst $38                                       ; $52d2: $ff
    ld b, b                                       ; $52d3: $40
    rst $38                                       ; $52d4: $ff
    jr nz, @+$01                                  ; $52d5: $20 $ff

    db $10                                        ; $52d7: $10
    rst $30                                       ; $52d8: $f7
    jr z, @-$0f                                   ; $52d9: $28 $ef

    ld d, b                                       ; $52db: $50
    rst $18                                       ; $52dc: $df
    and b                                         ; $52dd: $a0
    cp a                                          ; $52de: $bf
    ld b, b                                       ; $52df: $40

    db $ff, $70, $cf, $b8, $bb, $cc, $bb, $54, $f7, $28, $ef, $10, $ff, $20, $ef, $10

    rst $38                                       ; $52f0: $ff
    jr c, @-$17                                   ; $52f1: $38 $e7

    ld e, h                                       ; $52f3: $5c
    rst $38                                       ; $52f4: $ff
    cp d                                          ; $52f5: $ba
    and d                                         ; $52f6: $a2
    rst $38                                       ; $52f7: $ff
    cp [hl]                                       ; $52f8: $be
    ei                                            ; $52f9: $fb
    and $5d                                       ; $52fa: $e6 $5d
    db $fd                                        ; $52fc: $fd
    ld a, [hl-]                                   ; $52fd: $3a
    db $e3                                        ; $52fe: $e3
    inc e                                         ; $52ff: $1c

    db $ff, $20, $ff, $50, $d7, $78, $db, $ac, $fb, $fc, $8b, $fc, $bb, $cc, $bb, $44

    rst $38                                       ; $5310: $ff
    ldh a, [$8f]                                  ; $5311: $f0 $8f
    ld hl, sp-$45                                 ; $5313: $f8 $bb
    call z, $f4fb                                 ; $5315: $cc $fb $f4
    adc a                                         ; $5318: $8f
    ld hl, sp-$45                                 ; $5319: $f8 $bb
    call z, $f4fb                                 ; $531b: $cc $fb $f4
    add a                                         ; $531e: $87
    ld a, b                                       ; $531f: $78

    db $ff, $70, $cf, $b8, $bb, $c4, $bf, $c0, $bf, $c0, $bf, $c8, $fb, $74, $c7, $38
    db $ff, $f0, $8f, $f8, $bb, $cc, $bb, $cc, $bb, $cc, $bb, $cc, $fb, $f4, $87, $78

    rst $38                                       ; $5340: $ff
    ld hl, sp-$7d                                 ; $5341: $f8 $83
    db $fc                                        ; $5343: $fc
    cp a                                          ; $5344: $bf
    ret nz                                        ; $5345: $c0

    rst $38                                       ; $5346: $ff
    ldh a, [$87]                                  ; $5347: $f0 $87
    ld hl, sp-$41                                 ; $5349: $f8 $bf
    ret nz                                        ; $534b: $c0

    rst $38                                       ; $534c: $ff
    ld hl, sp-$7d                                 ; $534d: $f8 $83
    ld a, h                                       ; $534f: $7c

    db $ff, $f8, $83, $fc, $bf, $c0, $ff, $f0, $87, $f8, $bf, $c0, $bf, $c0, $bf, $40
    db $ff, $70, $cf, $b8, $bb, $c4, $bf, $f8, $ab, $dc, $bb, $dc, $fb, $6c, $cb, $34
    db $ff, $88, $bb, $cc, $bb, $cc, $fb, $fc, $8b, $fc, $bb, $cc, $bb, $cc, $bb, $44
    db $ff, $e0, $cf, $70, $df, $60, $df, $60, $df, $60, $df, $60, $ff, $e0, $8f, $70

jr_003_5390:
    rst $38                                       ; $5390: $ff
    db $10                                        ; $5391: $10

jr_003_5392:
    rst $30                                       ; $5392: $f7
    jr @-$07                                      ; $5393: $18 $f7

    jr @-$07                                      ; $5395: $18 $f7

    jr jr_003_5390                                ; $5397: $18 $f7

    jr jr_003_5392                                ; $5399: $18 $f7

    sbc b                                         ; $539b: $98
    rst $30                                       ; $539c: $f7
    ld l, b                                       ; $539d: $68
    rst $08                                       ; $539e: $cf
    db $30                                        ; $539f: $30

    db $ff, $88, $bb, $d4, $b7, $e8, $ef, $d0, $bf, $e0, $bf, $d0, $bf, $c8, $bb, $44
    db $ff, $80, $bf, $c0, $bf, $c0, $bf, $c0, $bf, $c0, $bf, $c0, $ff, $f8, $83, $7c
    db $ff, $82, $fe, $c7, $de, $e7, $be, $eb, $aa, $ff, $ba, $d7, $b6, $cb, $be, $41
    db $ff, $88, $fb, $cc, $db, $ec, $bb, $ec, $bb, $dc, $bb, $dc, $bb, $cc, $bb, $44
    db $ff, $78, $c7, $bc, $bd, $c6, $bd, $c6, $bd, $c6, $bd, $c6, $fd, $7a, $c3, $3c
    db $ff, $f0, $8f, $f8, $bb, $cc, $fb, $f4, $87, $f8, $bf, $c0, $bf, $c0, $bf, $40
    db $ff, $78, $c7, $bc, $bd, $c6, $bd, $c6, $bd, $f6, $ad, $da, $ff, $74, $c5, $3a
    db $ff, $f0, $8f, $f8, $bb, $cc, $fb, $f4, $97, $f8, $bf, $c8, $bb, $cc, $bb, $44
    db $ff, $70, $cf, $b8, $bb, $c4, $ff, $70, $cf, $38, $fb, $8c, $fb, $74, $c7, $38
    db $ff, $f8, $a3, $7c, $ef, $30, $ef, $30, $ef, $30, $ef, $30, $ef, $30, $ef, $10
    db $ff, $88, $bb, $cc, $bb, $cc, $bb, $cc, $bb, $cc, $bb, $cc, $fb, $74, $c7, $38
    db $ff, $88, $bb, $cc, $bb, $cc, $fb, $54, $d7, $78, $f7, $28, $ef, $30, $ef, $10
    db $ff, $82, $be, $d3, $b6, $db, $b6, $db, $be, $eb, $aa, $ff, $ee, $55, $dd, $22

    rst $38                                       ; $5470: $ff
    adc b                                         ; $5471: $88
    ei                                            ; $5472: $fb
    ld d, h                                       ; $5473: $54
    rst $10                                       ; $5474: $d7
    ld a, b                                       ; $5475: $78
    rst $30                                       ; $5476: $f7
    jr z, @+$01                                   ; $5477: $28 $ff

    ld d, b                                       ; $5479: $50
    rst $10                                       ; $547a: $d7
    ld a, b                                       ; $547b: $78
    rst $18                                       ; $547c: $df
    xor b                                         ; $547d: $a8
    cp e                                          ; $547e: $bb
    ld b, h                                       ; $547f: $44

    db $ff, $88, $fb, $54, $f7, $58, $f7, $28, $ef, $30, $ef, $30, $ef, $30, $ef, $10

    rst $38                                       ; $5490: $ff
    ld hl, sp-$75                                 ; $5491: $f8 $8b
    ld a, h                                       ; $5493: $7c
    ei                                            ; $5494: $fb
    inc d                                         ; $5495: $14
    rst $30                                       ; $5496: $f7
    jr z, @-$0f                                   ; $5497: $28 $ef

    ld d, b                                       ; $5499: $50
    rst $18                                       ; $549a: $df
    and b                                         ; $549b: $a0
    rst $38                                       ; $549c: $ff
    ld hl, sp-$7d                                 ; $549d: $f8 $83
    ld a, h                                       ; $549f: $7c
    rst $38                                       ; $54a0: $ff
    ret nz                                        ; $54a1: $c0

    sbc a                                         ; $54a2: $9f
    ldh [$bf], a                                  ; $54a3: $e0 $bf
    ret nz                                        ; $54a5: $c0

    cp a                                          ; $54a6: $bf
    ret nz                                        ; $54a7: $c0

    cp a                                          ; $54a8: $bf
    ret nz                                        ; $54a9: $c0

    cp a                                          ; $54aa: $bf
    ret nz                                        ; $54ab: $c0

    rst $38                                       ; $54ac: $ff
    ret nz                                        ; $54ad: $c0

    sbc a                                         ; $54ae: $9f
    ld h, b                                       ; $54af: $60
    rst $38                                       ; $54b0: $ff
    add b                                         ; $54b1: $80
    rst $38                                       ; $54b2: $ff
    ld b, b                                       ; $54b3: $40
    rst $18                                       ; $54b4: $df
    ld h, b                                       ; $54b5: $60
    rst $38                                       ; $54b6: $ff
    jr nz, @+$01                                  ; $54b7: $20 $ff

    db $10                                        ; $54b9: $10
    rst $30                                       ; $54ba: $f7
    jr @+$01                                      ; $54bb: $18 $ff

    ld [$04fb], sp                                ; $54bd: $08 $fb $04
    rst $38                                       ; $54c0: $ff
    ret nz                                        ; $54c1: $c0

    rst $18                                       ; $54c2: $df
    ld h, b                                       ; $54c3: $60
    rst $18                                       ; $54c4: $df
    ld h, b                                       ; $54c5: $60
    rst $18                                       ; $54c6: $df
    ld h, b                                       ; $54c7: $60
    rst $18                                       ; $54c8: $df
    ld h, b                                       ; $54c9: $60
    rst $18                                       ; $54ca: $df
    ld h, b                                       ; $54cb: $60
    rst $18                                       ; $54cc: $df
    ldh [$9f], a                                  ; $54cd: $e0 $9f
    ld h, b                                       ; $54cf: $60
    rst $38                                       ; $54d0: $ff
    jr nz, @+$01                                  ; $54d1: $20 $ff

    ld d, b                                       ; $54d3: $50
    rst $18                                       ; $54d4: $df
    xor b                                         ; $54d5: $a8
    cp e                                          ; $54d6: $bb
    ld b, h                                       ; $54d7: $44
    rst $38                                       ; $54d8: $ff
    nop                                           ; $54d9: $00
    rst $38                                       ; $54da: $ff
    nop                                           ; $54db: $00
    rst $38                                       ; $54dc: $ff
    nop                                           ; $54dd: $00
    rst $38                                       ; $54de: $ff
    nop                                           ; $54df: $00
    rst $38                                       ; $54e0: $ff
    nop                                           ; $54e1: $00
    rst $38                                       ; $54e2: $ff
    nop                                           ; $54e3: $00
    rst $38                                       ; $54e4: $ff
    nop                                           ; $54e5: $00
    rst $38                                       ; $54e6: $ff
    nop                                           ; $54e7: $00
    rst $38                                       ; $54e8: $ff
    nop                                           ; $54e9: $00
    rst $38                                       ; $54ea: $ff
    nop                                           ; $54eb: $00
    rst $38                                       ; $54ec: $ff
    ld hl, sp-$7d                                 ; $54ed: $f8 $83
    ld a, h                                       ; $54ef: $7c
    rst $38                                       ; $54f0: $ff
    nop                                           ; $54f1: $00
    rst $38                                       ; $54f2: $ff
    nop                                           ; $54f3: $00
    rst $38                                       ; $54f4: $ff
    nop                                           ; $54f5: $00
    rst $38                                       ; $54f6: $ff
    nop                                           ; $54f7: $00
    rst $38                                       ; $54f8: $ff
    nop                                           ; $54f9: $00
    rst $38                                       ; $54fa: $ff
    nop                                           ; $54fb: $00
    rst $38                                       ; $54fc: $ff
    nop                                           ; $54fd: $00
    rst $38                                       ; $54fe: $ff
    nop                                           ; $54ff: $00

    db $ff, $00, $ff, $00, $ff, $70, $cf, $38, $fb, $7c, $cb, $bc, $ff, $74, $c5, $3a
    db $ff, $80, $bf, $c0, $bf, $f0, $ef, $d8, $9b, $ec, $fb, $cc, $fb, $b4, $e7, $18
    db $ff, $00, $ff, $00, $ff, $70, $cf, $b8, $bb, $c4, $bf, $c8, $fb, $74, $c7, $38
    db $ff, $08, $fb, $0c, $fb, $6c, $db, $bc, $bb, $cc, $bb, $dc, $fb, $6c, $cb, $34
    db $ff, $00, $ff, $00, $ff, $70, $cf, $b8, $fb, $f4, $87, $f8, $ff, $70, $c7, $38
    db $ff, $30, $e7, $58, $df, $60, $ff, $e0, $cf, $70, $df, $60, $df, $60, $df, $20
    db $ff, $00, $ff, $00, $ff, $70, $cf, $b8, $bb, $dc, $fb, $6c, $cb, $3c, $fb, $74
    db $ff, $80, $bf, $c0, $bf, $f0, $cf, $f8, $bb, $cc, $bb, $cc, $bb, $cc, $bb, $44
    db $ff, $40, $df, $20, $ff, $c0, $df, $60, $df, $60, $df, $60, $df, $60, $df, $20

    rst $38                                       ; $5590: $ff
    jr nz, @-$0f                                  ; $5591: $20 $ef

    db $10                                        ; $5593: $10
    rst $38                                       ; $5594: $ff
    ld h, b                                       ; $5595: $60
    rst $28                                       ; $5596: $ef
    jr nc, @-$0f                                  ; $5597: $30 $ef

    jr nc, @-$0f                                  ; $5599: $30 $ef

    jr nc, @-$0f                                  ; $559b: $30 $ef

    jr nc, @-$0f                                  ; $559d: $30 $ef

    ret nc                                        ; $559f: $d0

    db $ff, $80, $bf, $c0, $bf, $c8, $bb, $d4, $b7, $e8, $ff, $d0, $9f, $e8, $bb, $44
    db $ff, $c0, $df, $60, $df, $60, $df, $60, $df, $60, $df, $60, $df, $60, $df, $20
    db $ff, $00, $ff, $00, $ff, $b4, $ff, $da, $92, $ff, $b6, $db, $b6, $db, $b6, $49
    db $ff, $00, $ff, $00, $ff, $b0, $ef, $d8, $9b, $ec, $bb, $cc, $bb, $cc, $bb, $44
    db $ff, $00, $ff, $00, $ff, $70, $cf, $b8, $bb, $cc, $bb, $cc, $fb, $74, $c7, $38
    db $ff, $00, $ff, $00, $ff, $b0, $ef, $d8, $9b, $ec, $fb, $cc, $bb, $f4, $a7, $d8
    db $ff, $00, $ff, $00, $ff, $68, $db, $bc, $bb, $cc, $bb, $dc, $fb, $6c, $cb, $3c
    db $ff, $00, $ff, $00, $ff, $b0, $e7, $d8, $9f, $e0, $bf, $c0, $bf, $c0, $bf, $40
    db $ff, $00, $ff, $00, $ff, $78, $c3, $bc, $ff, $70, $cf, $38, $fb, $f4, $87, $78
    db $ff, $40, $df, $60, $ff, $e0, $cf, $70, $df, $60, $df, $60, $ff, $30, $e7, $18
    db $ff, $00, $ff, $00, $ff, $88, $bb, $cc, $bb, $cc, $bb, $dc, $fb, $6c, $cb, $34
    db $ff, $00, $ff, $00, $ff, $88, $bb, $cc, $fb, $54, $d7, $78, $f7, $28, $ef, $10
    db $ff, $00, $ff, $00, $ff, $82, $be, $d3, $b6, $db, $b6, $db, $fe, $6d, $c9, $36
    db $ff, $00, $ff, $00, $ff, $88, $fb, $54, $f7, $28, $ff, $50, $df, $a8, $bb, $44
    db $ff, $00, $ff, $00, $ff, $88, $bb, $cc, $bb, $dc, $fb, $6c, $cb, $3c, $fb, $74

    rst $38                                       ; $5690: $ff
    nop                                           ; $5691: $00
    rst $38                                       ; $5692: $ff
    nop                                           ; $5693: $00
    rst $38                                       ; $5694: $ff
    ld hl, sp-$75                                 ; $5695: $f8 $8b
    ld a, h                                       ; $5697: $7c
    ei                                            ; $5698: $fb
    ld [hl], h                                    ; $5699: $74
    rst $00                                       ; $569a: $c7
    cp b                                          ; $569b: $b8
    rst $38                                       ; $569c: $ff
    ld hl, sp-$7d                                 ; $569d: $f8 $83
    ld a, h                                       ; $569f: $7c
    rst $38                                       ; $56a0: $ff
    nop                                           ; $56a1: $00
    rst $38                                       ; $56a2: $ff
    nop                                           ; $56a3: $00
    rst $38                                       ; $56a4: $ff
    nop                                           ; $56a5: $00
    rst $38                                       ; $56a6: $ff
    nop                                           ; $56a7: $00
    rst $38                                       ; $56a8: $ff
    nop                                           ; $56a9: $00
    rst $38                                       ; $56aa: $ff
    nop                                           ; $56ab: $00
    rst $38                                       ; $56ac: $ff
    nop                                           ; $56ad: $00
    rst $38                                       ; $56ae: $ff
    nop                                           ; $56af: $00
    rst $38                                       ; $56b0: $ff
    nop                                           ; $56b1: $00
    rst $38                                       ; $56b2: $ff
    nop                                           ; $56b3: $00
    rst $38                                       ; $56b4: $ff
    nop                                           ; $56b5: $00
    rst $38                                       ; $56b6: $ff
    nop                                           ; $56b7: $00
    rst $38                                       ; $56b8: $ff
    nop                                           ; $56b9: $00
    rst $38                                       ; $56ba: $ff
    nop                                           ; $56bb: $00
    rst $38                                       ; $56bc: $ff
    nop                                           ; $56bd: $00
    rst $38                                       ; $56be: $ff
    nop                                           ; $56bf: $00
    rst $38                                       ; $56c0: $ff
    nop                                           ; $56c1: $00
    rst $38                                       ; $56c2: $ff
    nop                                           ; $56c3: $00
    rst $38                                       ; $56c4: $ff
    nop                                           ; $56c5: $00
    rst $38                                       ; $56c6: $ff
    nop                                           ; $56c7: $00
    rst $38                                       ; $56c8: $ff
    nop                                           ; $56c9: $00
    rst $38                                       ; $56ca: $ff
    nop                                           ; $56cb: $00
    rst $38                                       ; $56cc: $ff
    nop                                           ; $56cd: $00
    rst $38                                       ; $56ce: $ff
    nop                                           ; $56cf: $00
    rst $38                                       ; $56d0: $ff
    nop                                           ; $56d1: $00
    rst $38                                       ; $56d2: $ff
    nop                                           ; $56d3: $00
    rst $38                                       ; $56d4: $ff
    nop                                           ; $56d5: $00
    rst $38                                       ; $56d6: $ff
    nop                                           ; $56d7: $00
    rst $38                                       ; $56d8: $ff
    nop                                           ; $56d9: $00
    rst $38                                       ; $56da: $ff
    nop                                           ; $56db: $00
    rst $38                                       ; $56dc: $ff
    nop                                           ; $56dd: $00
    rst $38                                       ; $56de: $ff
    nop                                           ; $56df: $00
    rst $38                                       ; $56e0: $ff
    nop                                           ; $56e1: $00
    rst $38                                       ; $56e2: $ff
    nop                                           ; $56e3: $00
    rst $38                                       ; $56e4: $ff
    nop                                           ; $56e5: $00
    rst $38                                       ; $56e6: $ff
    nop                                           ; $56e7: $00
    rst $38                                       ; $56e8: $ff
    nop                                           ; $56e9: $00
    rst $38                                       ; $56ea: $ff
    nop                                           ; $56eb: $00
    rst $38                                       ; $56ec: $ff
    nop                                           ; $56ed: $00
    rst $38                                       ; $56ee: $ff
    nop                                           ; $56ef: $00
    nop                                           ; $56f0: $00
    ld bc, $0000                                  ; $56f1: $01 $00 $00
    nop                                           ; $56f4: $00
    nop                                           ; $56f5: $00
    nop                                           ; $56f6: $00
    nop                                           ; $56f7: $00
    nop                                           ; $56f8: $00
    nop                                           ; $56f9: $00
    nop                                           ; $56fa: $00
    nop                                           ; $56fb: $00
    nop                                           ; $56fc: $00
    nop                                           ; $56fd: $00
    nop                                           ; $56fe: $00
    nop                                           ; $56ff: $00
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    nop                                           ; $5704: $00
    nop                                           ; $5705: $00
    nop                                           ; $5706: $00
    nop                                           ; $5707: $00
    nop                                           ; $5708: $00
    nop                                           ; $5709: $00
    nop                                           ; $570a: $00
    nop                                           ; $570b: $00
    nop                                           ; $570c: $00
    nop                                           ; $570d: $00
    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    nop                                           ; $5715: $00
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571a: $00
    nop                                           ; $571b: $00
    nop                                           ; $571c: $00
    nop                                           ; $571d: $00
    nop                                           ; $571e: $00
    nop                                           ; $571f: $00
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    nop                                           ; $5723: $00
    nop                                           ; $5724: $00
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    nop                                           ; $572a: $00
    nop                                           ; $572b: $00
    nop                                           ; $572c: $00
    nop                                           ; $572d: $00
    nop                                           ; $572e: $00
    nop                                           ; $572f: $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    nop                                           ; $5734: $00
    nop                                           ; $5735: $00
    nop                                           ; $5736: $00
    nop                                           ; $5737: $00
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    nop                                           ; $573a: $00
    nop                                           ; $573b: $00
    nop                                           ; $573c: $00
    nop                                           ; $573d: $00
    nop                                           ; $573e: $00
    nop                                           ; $573f: $00
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
    nop                                           ; $5744: $00
    nop                                           ; $5745: $00
    nop                                           ; $5746: $00
    nop                                           ; $5747: $00
    nop                                           ; $5748: $00
    nop                                           ; $5749: $00
    nop                                           ; $574a: $00
    nop                                           ; $574b: $00
    nop                                           ; $574c: $00
    nop                                           ; $574d: $00
    nop                                           ; $574e: $00
    nop                                           ; $574f: $00

    db $05, $04, $06

    ld b, $06                                     ; $5753: $06 $06
    ld b, $07                                     ; $5755: $06 $07

    db $04

    inc b                                         ; $5758: $04
    inc b                                         ; $5759: $04
    ld b, $06                                     ; $575a: $06 $06

    db $04, $06, $04

    db $06                                        ; $575f: $06

    db $06, $04, $06, $06, $06

    ld b, $06                                     ; $5765: $06 $06
    ld b, $06                                     ; $5767: $06 $06
    ld b, $04                                     ; $5769: $06 $04
    inc b                                         ; $576b: $04
    dec b                                         ; $576c: $05
    ld b, $05                                     ; $576d: $06 $05

    db $06

    db $08                                        ; $5770: $08

    db $06

    db $06                                        ; $5772: $06

    db $06, $06

    db $06                                        ; $5775: $06

    db $06, $06, $06, $04

    dec b                                         ; $577a: $05

    db $06, $06, $08, $06, $07, $06, $07, $06, $06, $06, $06, $06, $08

    db $06                                        ; $5788: $06

    db $06

    ld b, $04                                     ; $578a: $06 $04
    ld b, $04                                     ; $578c: $06 $04
    ld b, $06                                     ; $578e: $06 $06
    dec b                                         ; $5790: $05

    db $07, $06, $06, $06, $06, $04, $06, $06, $03

    inc b                                         ; $579a: $04

    db $06, $04, $08, $06, $06, $06, $06, $05, $06, $04, $06, $06, $08, $06, $06

    ld b, $05                                     ; $57aa: $06 $05
    dec b                                         ; $57ac: $05
    dec b                                         ; $57ad: $05
    dec b                                         ; $57ae: $05
    dec b                                         ; $57af: $05
    rst $38                                       ; $57b0: $ff
    rst $38                                       ; $57b1: $ff
    rst $38                                       ; $57b2: $ff
    rst $38                                       ; $57b3: $ff
    rst $38                                       ; $57b4: $ff
    rst $38                                       ; $57b5: $ff
    rst $38                                       ; $57b6: $ff
    rst $38                                       ; $57b7: $ff
    rst $38                                       ; $57b8: $ff
    rst $38                                       ; $57b9: $ff
    rst $38                                       ; $57ba: $ff
    rst $38                                       ; $57bb: $ff
    rst $38                                       ; $57bc: $ff
    rst $38                                       ; $57bd: $ff
    rst $38                                       ; $57be: $ff
    rst $38                                       ; $57bf: $ff
    rst $38                                       ; $57c0: $ff
    rst $38                                       ; $57c1: $ff
    rst $38                                       ; $57c2: $ff
    rst $38                                       ; $57c3: $ff
    rst $38                                       ; $57c4: $ff
    rst $38                                       ; $57c5: $ff
    rst $38                                       ; $57c6: $ff
    rst $38                                       ; $57c7: $ff
    rst $38                                       ; $57c8: $ff
    rst $38                                       ; $57c9: $ff
    rst $38                                       ; $57ca: $ff
    rst $38                                       ; $57cb: $ff
    rst $38                                       ; $57cc: $ff
    rst $38                                       ; $57cd: $ff
    rst $38                                       ; $57ce: $ff
    rst $38                                       ; $57cf: $ff
    rst $38                                       ; $57d0: $ff
    rst $38                                       ; $57d1: $ff
    rst $38                                       ; $57d2: $ff
    rst $38                                       ; $57d3: $ff
    rst $38                                       ; $57d4: $ff
    rst $38                                       ; $57d5: $ff
    rst $38                                       ; $57d6: $ff
    rst $38                                       ; $57d7: $ff
    rst $38                                       ; $57d8: $ff
    rst $38                                       ; $57d9: $ff
    rst $38                                       ; $57da: $ff
    rst $38                                       ; $57db: $ff
    rst $38                                       ; $57dc: $ff
    rst $38                                       ; $57dd: $ff
    rst $38                                       ; $57de: $ff
    rst $38                                       ; $57df: $ff
    rst $38                                       ; $57e0: $ff
    rst $38                                       ; $57e1: $ff
    rst $38                                       ; $57e2: $ff
    rst $38                                       ; $57e3: $ff
    rst $38                                       ; $57e4: $ff
    rst $38                                       ; $57e5: $ff
    rst $38                                       ; $57e6: $ff
    rst $38                                       ; $57e7: $ff
    rst $38                                       ; $57e8: $ff
    rst $38                                       ; $57e9: $ff
    rst $38                                       ; $57ea: $ff
    rst $38                                       ; $57eb: $ff
    rst $38                                       ; $57ec: $ff
    rst $38                                       ; $57ed: $ff
    rst $38                                       ; $57ee: $ff
    rst $38                                       ; $57ef: $ff
    rst $38                                       ; $57f0: $ff
    rst $38                                       ; $57f1: $ff
    rst $38                                       ; $57f2: $ff
    rst $38                                       ; $57f3: $ff
    rst $38                                       ; $57f4: $ff
    rst $38                                       ; $57f5: $ff
    rst $38                                       ; $57f6: $ff
    rst $38                                       ; $57f7: $ff
    rst $38                                       ; $57f8: $ff
    rst $38                                       ; $57f9: $ff
    rst $38                                       ; $57fa: $ff
    rst $38                                       ; $57fb: $ff
    rst $38                                       ; $57fc: $ff
    rst $38                                       ; $57fd: $ff
    rst $38                                       ; $57fe: $ff
    rst $38                                       ; $57ff: $ff
    rst $38                                       ; $5800: $ff
    rst $38                                       ; $5801: $ff
    rst $38                                       ; $5802: $ff
    rst $38                                       ; $5803: $ff
    rst $38                                       ; $5804: $ff
    rst $38                                       ; $5805: $ff
    rst $38                                       ; $5806: $ff
    rst $38                                       ; $5807: $ff
    rst $38                                       ; $5808: $ff
    rst $38                                       ; $5809: $ff
    rst $38                                       ; $580a: $ff
    rst $38                                       ; $580b: $ff
    rst $38                                       ; $580c: $ff
    rst $38                                       ; $580d: $ff
    rst $38                                       ; $580e: $ff
    rst $38                                       ; $580f: $ff
    rst $38                                       ; $5810: $ff
    rst $38                                       ; $5811: $ff
    rst $38                                       ; $5812: $ff
    rst $38                                       ; $5813: $ff
    rst $38                                       ; $5814: $ff
    rst $38                                       ; $5815: $ff
    rst $38                                       ; $5816: $ff
    rst $38                                       ; $5817: $ff
    rst $38                                       ; $5818: $ff
    rst $38                                       ; $5819: $ff
    rst $38                                       ; $581a: $ff
    rst $38                                       ; $581b: $ff
    rst $38                                       ; $581c: $ff
    rst $38                                       ; $581d: $ff
    rst $38                                       ; $581e: $ff
    rst $38                                       ; $581f: $ff
    rst $38                                       ; $5820: $ff
    rst $38                                       ; $5821: $ff
    rst $38                                       ; $5822: $ff
    rst $38                                       ; $5823: $ff
    rst $38                                       ; $5824: $ff
    rst $38                                       ; $5825: $ff
    rst $38                                       ; $5826: $ff
    rst $38                                       ; $5827: $ff
    rst $38                                       ; $5828: $ff
    rst $38                                       ; $5829: $ff
    rst $38                                       ; $582a: $ff
    rst $38                                       ; $582b: $ff
    rst $38                                       ; $582c: $ff
    rst $38                                       ; $582d: $ff
    rst $38                                       ; $582e: $ff
    rst $38                                       ; $582f: $ff
    rst $38                                       ; $5830: $ff
    rst $38                                       ; $5831: $ff
    rst $38                                       ; $5832: $ff
    rst $38                                       ; $5833: $ff
    rst $38                                       ; $5834: $ff
    rst $38                                       ; $5835: $ff
    rst $38                                       ; $5836: $ff
    rst $38                                       ; $5837: $ff
    rst $38                                       ; $5838: $ff
    rst $38                                       ; $5839: $ff
    rst $38                                       ; $583a: $ff
    rst $38                                       ; $583b: $ff
    rst $38                                       ; $583c: $ff
    rst $38                                       ; $583d: $ff
    rst $38                                       ; $583e: $ff
    rst $38                                       ; $583f: $ff
    rst $38                                       ; $5840: $ff
    rst $38                                       ; $5841: $ff
    rst $38                                       ; $5842: $ff
    rst $38                                       ; $5843: $ff
    rst $38                                       ; $5844: $ff
    rst $38                                       ; $5845: $ff
    rst $38                                       ; $5846: $ff

Call_003_5847:
    rst $38                                       ; $5847: $ff
    rst $38                                       ; $5848: $ff
    rst $38                                       ; $5849: $ff
    rst $38                                       ; $584a: $ff
    rst $38                                       ; $584b: $ff
    rst $38                                       ; $584c: $ff
    rst $38                                       ; $584d: $ff
    rst $38                                       ; $584e: $ff
    rst $38                                       ; $584f: $ff
    rst $38                                       ; $5850: $ff
    rst $38                                       ; $5851: $ff
    rst $38                                       ; $5852: $ff
    rst $38                                       ; $5853: $ff
    rst $38                                       ; $5854: $ff
    rst $38                                       ; $5855: $ff
    rst $38                                       ; $5856: $ff
    rst $38                                       ; $5857: $ff
    rst $38                                       ; $5858: $ff
    rst $38                                       ; $5859: $ff
    rst $38                                       ; $585a: $ff
    rst $38                                       ; $585b: $ff
    rst $38                                       ; $585c: $ff
    rst $38                                       ; $585d: $ff
    rst $38                                       ; $585e: $ff
    rst $38                                       ; $585f: $ff
    rst $38                                       ; $5860: $ff
    rst $38                                       ; $5861: $ff
    rst $38                                       ; $5862: $ff
    rst $38                                       ; $5863: $ff
    rst $38                                       ; $5864: $ff
    rst $38                                       ; $5865: $ff
    rst $38                                       ; $5866: $ff
    rst $38                                       ; $5867: $ff
    rst $38                                       ; $5868: $ff
    rst $38                                       ; $5869: $ff
    rst $38                                       ; $586a: $ff
    rst $38                                       ; $586b: $ff
    rst $38                                       ; $586c: $ff
    rst $38                                       ; $586d: $ff
    rst $38                                       ; $586e: $ff
    rst $38                                       ; $586f: $ff
    rst $38                                       ; $5870: $ff
    rst $38                                       ; $5871: $ff
    rst $38                                       ; $5872: $ff
    rst $38                                       ; $5873: $ff
    rst $38                                       ; $5874: $ff
    rst $38                                       ; $5875: $ff
    rst $38                                       ; $5876: $ff
    rst $38                                       ; $5877: $ff
    rst $38                                       ; $5878: $ff
    rst $38                                       ; $5879: $ff
    rst $38                                       ; $587a: $ff
    rst $38                                       ; $587b: $ff
    rst $38                                       ; $587c: $ff
    rst $38                                       ; $587d: $ff
    rst $38                                       ; $587e: $ff
    rst $38                                       ; $587f: $ff
    rst $38                                       ; $5880: $ff
    rst $38                                       ; $5881: $ff
    rst $38                                       ; $5882: $ff
    rst $38                                       ; $5883: $ff
    rst $38                                       ; $5884: $ff
    rst $38                                       ; $5885: $ff
    rst $38                                       ; $5886: $ff
    rst $38                                       ; $5887: $ff
    rst $38                                       ; $5888: $ff
    rst $38                                       ; $5889: $ff
    rst $38                                       ; $588a: $ff
    rst $38                                       ; $588b: $ff
    rst $38                                       ; $588c: $ff
    rst $38                                       ; $588d: $ff
    rst $38                                       ; $588e: $ff
    rst $38                                       ; $588f: $ff
    rst $38                                       ; $5890: $ff
    rst $38                                       ; $5891: $ff
    rst $38                                       ; $5892: $ff
    rst $38                                       ; $5893: $ff
    rst $38                                       ; $5894: $ff
    rst $38                                       ; $5895: $ff
    rst $38                                       ; $5896: $ff
    rst $38                                       ; $5897: $ff
    rst $38                                       ; $5898: $ff
    rst $38                                       ; $5899: $ff
    rst $38                                       ; $589a: $ff
    rst $38                                       ; $589b: $ff
    rst $38                                       ; $589c: $ff
    rst $38                                       ; $589d: $ff
    rst $38                                       ; $589e: $ff
    rst $38                                       ; $589f: $ff
    rst $38                                       ; $58a0: $ff
    rst $38                                       ; $58a1: $ff
    rst $38                                       ; $58a2: $ff
    rst $38                                       ; $58a3: $ff
    rst $38                                       ; $58a4: $ff
    rst $38                                       ; $58a5: $ff
    rst $38                                       ; $58a6: $ff
    rst $38                                       ; $58a7: $ff
    rst $38                                       ; $58a8: $ff
    rst $38                                       ; $58a9: $ff
    rst $38                                       ; $58aa: $ff
    rst $38                                       ; $58ab: $ff
    rst $38                                       ; $58ac: $ff
    rst $38                                       ; $58ad: $ff
    rst $38                                       ; $58ae: $ff
    rst $38                                       ; $58af: $ff
    rst $38                                       ; $58b0: $ff
    rst $38                                       ; $58b1: $ff
    rst $38                                       ; $58b2: $ff
    rst $38                                       ; $58b3: $ff
    rst $38                                       ; $58b4: $ff
    rst $38                                       ; $58b5: $ff
    rst $38                                       ; $58b6: $ff
    rst $38                                       ; $58b7: $ff
    rst $38                                       ; $58b8: $ff
    rst $38                                       ; $58b9: $ff
    rst $38                                       ; $58ba: $ff
    rst $38                                       ; $58bb: $ff
    rst $38                                       ; $58bc: $ff
    rst $38                                       ; $58bd: $ff
    rst $38                                       ; $58be: $ff
    rst $38                                       ; $58bf: $ff
    rst $38                                       ; $58c0: $ff
    rst $38                                       ; $58c1: $ff
    rst $38                                       ; $58c2: $ff
    rst $38                                       ; $58c3: $ff
    rst $38                                       ; $58c4: $ff
    rst $38                                       ; $58c5: $ff
    rst $38                                       ; $58c6: $ff
    rst $38                                       ; $58c7: $ff
    rst $38                                       ; $58c8: $ff
    rst $38                                       ; $58c9: $ff
    rst $38                                       ; $58ca: $ff
    rst $38                                       ; $58cb: $ff
    rst $38                                       ; $58cc: $ff
    rst $38                                       ; $58cd: $ff
    rst $38                                       ; $58ce: $ff
    rst $38                                       ; $58cf: $ff
    rst $38                                       ; $58d0: $ff
    rst $38                                       ; $58d1: $ff
    rst $38                                       ; $58d2: $ff
    rst $38                                       ; $58d3: $ff
    rst $38                                       ; $58d4: $ff
    rst $38                                       ; $58d5: $ff
    rst $38                                       ; $58d6: $ff
    rst $38                                       ; $58d7: $ff
    rst $38                                       ; $58d8: $ff
    rst $38                                       ; $58d9: $ff
    rst $38                                       ; $58da: $ff
    rst $38                                       ; $58db: $ff
    rst $38                                       ; $58dc: $ff
    rst $38                                       ; $58dd: $ff
    rst $38                                       ; $58de: $ff
    rst $38                                       ; $58df: $ff
    rst $38                                       ; $58e0: $ff
    rst $38                                       ; $58e1: $ff
    rst $38                                       ; $58e2: $ff
    rst $38                                       ; $58e3: $ff
    rst $38                                       ; $58e4: $ff
    rst $38                                       ; $58e5: $ff
    rst $38                                       ; $58e6: $ff
    rst $38                                       ; $58e7: $ff
    rst $38                                       ; $58e8: $ff
    rst $38                                       ; $58e9: $ff
    rst $38                                       ; $58ea: $ff
    rst $38                                       ; $58eb: $ff
    rst $38                                       ; $58ec: $ff
    rst $38                                       ; $58ed: $ff
    rst $38                                       ; $58ee: $ff
    rst $38                                       ; $58ef: $ff
    rst $38                                       ; $58f0: $ff
    rst $38                                       ; $58f1: $ff
    rst $38                                       ; $58f2: $ff
    rst $38                                       ; $58f3: $ff
    rst $38                                       ; $58f4: $ff
    rst $38                                       ; $58f5: $ff
    rst $38                                       ; $58f6: $ff
    rst $38                                       ; $58f7: $ff
    rst $38                                       ; $58f8: $ff
    rst $38                                       ; $58f9: $ff
    rst $38                                       ; $58fa: $ff
    rst $38                                       ; $58fb: $ff
    rst $38                                       ; $58fc: $ff
    rst $38                                       ; $58fd: $ff
    rst $38                                       ; $58fe: $ff
    rst $38                                       ; $58ff: $ff
    rst $38                                       ; $5900: $ff
    rst $38                                       ; $5901: $ff
    rst $38                                       ; $5902: $ff
    rst $38                                       ; $5903: $ff
    rst $38                                       ; $5904: $ff
    rst $38                                       ; $5905: $ff
    rst $38                                       ; $5906: $ff
    rst $38                                       ; $5907: $ff
    rst $38                                       ; $5908: $ff
    rst $38                                       ; $5909: $ff
    rst $38                                       ; $590a: $ff
    rst $38                                       ; $590b: $ff
    rst $38                                       ; $590c: $ff
    rst $38                                       ; $590d: $ff
    rst $38                                       ; $590e: $ff
    rst $38                                       ; $590f: $ff
    rst $38                                       ; $5910: $ff
    rst $38                                       ; $5911: $ff
    rst $38                                       ; $5912: $ff
    rst $38                                       ; $5913: $ff
    rst $38                                       ; $5914: $ff
    rst $38                                       ; $5915: $ff
    rst $38                                       ; $5916: $ff
    rst $38                                       ; $5917: $ff
    rst $38                                       ; $5918: $ff
    rst $38                                       ; $5919: $ff
    rst $38                                       ; $591a: $ff
    rst $38                                       ; $591b: $ff
    rst $38                                       ; $591c: $ff
    rst $38                                       ; $591d: $ff
    rst $38                                       ; $591e: $ff
    rst $38                                       ; $591f: $ff
    rst $38                                       ; $5920: $ff
    rst $38                                       ; $5921: $ff
    rst $38                                       ; $5922: $ff
    rst $38                                       ; $5923: $ff
    rst $38                                       ; $5924: $ff
    rst $38                                       ; $5925: $ff
    rst $38                                       ; $5926: $ff
    rst $38                                       ; $5927: $ff
    rst $38                                       ; $5928: $ff
    rst $38                                       ; $5929: $ff
    rst $38                                       ; $592a: $ff
    rst $38                                       ; $592b: $ff
    rst $38                                       ; $592c: $ff
    rst $38                                       ; $592d: $ff
    rst $38                                       ; $592e: $ff
    rst $38                                       ; $592f: $ff
    rst $38                                       ; $5930: $ff
    rst $38                                       ; $5931: $ff
    rst $38                                       ; $5932: $ff
    rst $38                                       ; $5933: $ff
    rst $38                                       ; $5934: $ff
    rst $38                                       ; $5935: $ff
    rst $38                                       ; $5936: $ff
    rst $38                                       ; $5937: $ff
    rst $38                                       ; $5938: $ff
    rst $38                                       ; $5939: $ff
    rst $38                                       ; $593a: $ff
    rst $38                                       ; $593b: $ff
    rst $38                                       ; $593c: $ff
    rst $38                                       ; $593d: $ff
    rst $38                                       ; $593e: $ff
    rst $38                                       ; $593f: $ff
    rst $38                                       ; $5940: $ff
    rst $38                                       ; $5941: $ff
    rst $38                                       ; $5942: $ff
    rst $38                                       ; $5943: $ff
    rst $38                                       ; $5944: $ff
    rst $38                                       ; $5945: $ff
    rst $38                                       ; $5946: $ff
    rst $38                                       ; $5947: $ff
    rst $38                                       ; $5948: $ff
    rst $38                                       ; $5949: $ff
    rst $38                                       ; $594a: $ff
    rst $38                                       ; $594b: $ff
    rst $38                                       ; $594c: $ff
    rst $38                                       ; $594d: $ff
    rst $38                                       ; $594e: $ff
    rst $38                                       ; $594f: $ff
    rst $38                                       ; $5950: $ff
    rst $38                                       ; $5951: $ff
    rst $38                                       ; $5952: $ff
    rst $38                                       ; $5953: $ff
    rst $38                                       ; $5954: $ff
    rst $38                                       ; $5955: $ff
    rst $38                                       ; $5956: $ff
    rst $38                                       ; $5957: $ff
    rst $38                                       ; $5958: $ff
    rst $38                                       ; $5959: $ff
    rst $38                                       ; $595a: $ff
    rst $38                                       ; $595b: $ff
    rst $38                                       ; $595c: $ff
    rst $38                                       ; $595d: $ff
    rst $38                                       ; $595e: $ff
    rst $38                                       ; $595f: $ff
    rst $38                                       ; $5960: $ff
    rst $38                                       ; $5961: $ff
    rst $38                                       ; $5962: $ff
    rst $38                                       ; $5963: $ff
    rst $38                                       ; $5964: $ff
    rst $38                                       ; $5965: $ff
    rst $38                                       ; $5966: $ff
    rst $38                                       ; $5967: $ff
    rst $38                                       ; $5968: $ff
    rst $38                                       ; $5969: $ff
    rst $38                                       ; $596a: $ff
    rst $38                                       ; $596b: $ff
    rst $38                                       ; $596c: $ff
    rst $38                                       ; $596d: $ff
    rst $38                                       ; $596e: $ff
    rst $38                                       ; $596f: $ff
    rst $38                                       ; $5970: $ff
    rst $38                                       ; $5971: $ff
    rst $38                                       ; $5972: $ff
    rst $38                                       ; $5973: $ff
    rst $38                                       ; $5974: $ff
    rst $38                                       ; $5975: $ff
    rst $38                                       ; $5976: $ff
    rst $38                                       ; $5977: $ff
    rst $38                                       ; $5978: $ff
    rst $38                                       ; $5979: $ff
    rst $38                                       ; $597a: $ff
    rst $38                                       ; $597b: $ff
    rst $38                                       ; $597c: $ff
    rst $38                                       ; $597d: $ff
    rst $38                                       ; $597e: $ff
    rst $38                                       ; $597f: $ff
    rst $38                                       ; $5980: $ff
    rst $38                                       ; $5981: $ff
    rst $38                                       ; $5982: $ff
    rst $38                                       ; $5983: $ff
    rst $38                                       ; $5984: $ff
    rst $38                                       ; $5985: $ff
    rst $38                                       ; $5986: $ff
    rst $38                                       ; $5987: $ff
    rst $38                                       ; $5988: $ff
    rst $38                                       ; $5989: $ff
    rst $38                                       ; $598a: $ff
    rst $38                                       ; $598b: $ff
    rst $38                                       ; $598c: $ff
    rst $38                                       ; $598d: $ff
    rst $38                                       ; $598e: $ff
    rst $38                                       ; $598f: $ff
    rst $38                                       ; $5990: $ff
    rst $38                                       ; $5991: $ff
    rst $38                                       ; $5992: $ff
    rst $38                                       ; $5993: $ff
    rst $38                                       ; $5994: $ff
    rst $38                                       ; $5995: $ff
    rst $38                                       ; $5996: $ff
    rst $38                                       ; $5997: $ff
    rst $38                                       ; $5998: $ff
    rst $38                                       ; $5999: $ff
    rst $38                                       ; $599a: $ff
    rst $38                                       ; $599b: $ff
    rst $38                                       ; $599c: $ff
    rst $38                                       ; $599d: $ff
    rst $38                                       ; $599e: $ff
    rst $38                                       ; $599f: $ff
    rst $38                                       ; $59a0: $ff
    rst $38                                       ; $59a1: $ff
    rst $38                                       ; $59a2: $ff
    rst $38                                       ; $59a3: $ff
    rst $38                                       ; $59a4: $ff
    rst $38                                       ; $59a5: $ff
    rst $38                                       ; $59a6: $ff
    rst $38                                       ; $59a7: $ff
    rst $38                                       ; $59a8: $ff
    rst $38                                       ; $59a9: $ff
    rst $38                                       ; $59aa: $ff
    rst $38                                       ; $59ab: $ff
    rst $38                                       ; $59ac: $ff
    rst $38                                       ; $59ad: $ff
    rst $38                                       ; $59ae: $ff
    rst $38                                       ; $59af: $ff
    rst $38                                       ; $59b0: $ff
    rst $38                                       ; $59b1: $ff
    rst $38                                       ; $59b2: $ff
    rst $38                                       ; $59b3: $ff
    rst $38                                       ; $59b4: $ff
    rst $38                                       ; $59b5: $ff
    rst $38                                       ; $59b6: $ff
    rst $38                                       ; $59b7: $ff
    rst $38                                       ; $59b8: $ff
    rst $38                                       ; $59b9: $ff
    rst $38                                       ; $59ba: $ff
    rst $38                                       ; $59bb: $ff
    rst $38                                       ; $59bc: $ff
    rst $38                                       ; $59bd: $ff
    rst $38                                       ; $59be: $ff
    rst $38                                       ; $59bf: $ff
    rst $38                                       ; $59c0: $ff
    rst $38                                       ; $59c1: $ff
    rst $38                                       ; $59c2: $ff
    rst $38                                       ; $59c3: $ff
    rst $38                                       ; $59c4: $ff
    rst $38                                       ; $59c5: $ff
    rst $38                                       ; $59c6: $ff
    rst $38                                       ; $59c7: $ff
    rst $38                                       ; $59c8: $ff
    rst $38                                       ; $59c9: $ff
    rst $38                                       ; $59ca: $ff
    rst $38                                       ; $59cb: $ff
    rst $38                                       ; $59cc: $ff
    rst $38                                       ; $59cd: $ff
    rst $38                                       ; $59ce: $ff
    rst $38                                       ; $59cf: $ff
    rst $38                                       ; $59d0: $ff
    rst $38                                       ; $59d1: $ff
    rst $38                                       ; $59d2: $ff
    rst $38                                       ; $59d3: $ff
    rst $38                                       ; $59d4: $ff
    rst $38                                       ; $59d5: $ff
    rst $38                                       ; $59d6: $ff
    rst $38                                       ; $59d7: $ff
    rst $38                                       ; $59d8: $ff
    rst $38                                       ; $59d9: $ff
    rst $38                                       ; $59da: $ff
    rst $38                                       ; $59db: $ff
    rst $38                                       ; $59dc: $ff
    rst $38                                       ; $59dd: $ff
    rst $38                                       ; $59de: $ff
    rst $38                                       ; $59df: $ff
    rst $38                                       ; $59e0: $ff
    rst $38                                       ; $59e1: $ff
    rst $38                                       ; $59e2: $ff
    rst $38                                       ; $59e3: $ff
    rst $38                                       ; $59e4: $ff
    rst $38                                       ; $59e5: $ff
    rst $38                                       ; $59e6: $ff
    rst $38                                       ; $59e7: $ff
    rst $38                                       ; $59e8: $ff
    rst $38                                       ; $59e9: $ff
    rst $38                                       ; $59ea: $ff
    rst $38                                       ; $59eb: $ff
    rst $38                                       ; $59ec: $ff
    rst $38                                       ; $59ed: $ff
    rst $38                                       ; $59ee: $ff
    rst $38                                       ; $59ef: $ff
    rst $38                                       ; $59f0: $ff
    rst $38                                       ; $59f1: $ff
    rst $38                                       ; $59f2: $ff
    rst $38                                       ; $59f3: $ff
    rst $38                                       ; $59f4: $ff
    rst $38                                       ; $59f5: $ff
    rst $38                                       ; $59f6: $ff
    rst $38                                       ; $59f7: $ff
    rst $38                                       ; $59f8: $ff
    rst $38                                       ; $59f9: $ff
    rst $38                                       ; $59fa: $ff
    rst $38                                       ; $59fb: $ff
    rst $38                                       ; $59fc: $ff
    rst $38                                       ; $59fd: $ff
    rst $38                                       ; $59fe: $ff
    rst $38                                       ; $59ff: $ff
    rst $38                                       ; $5a00: $ff
    rst $38                                       ; $5a01: $ff
    rst $38                                       ; $5a02: $ff
    rst $38                                       ; $5a03: $ff
    rst $38                                       ; $5a04: $ff
    rst $38                                       ; $5a05: $ff
    rst $38                                       ; $5a06: $ff
    rst $38                                       ; $5a07: $ff
    rst $38                                       ; $5a08: $ff
    rst $38                                       ; $5a09: $ff
    rst $38                                       ; $5a0a: $ff
    rst $38                                       ; $5a0b: $ff
    rst $38                                       ; $5a0c: $ff
    rst $38                                       ; $5a0d: $ff
    rst $38                                       ; $5a0e: $ff
    rst $38                                       ; $5a0f: $ff
    rst $38                                       ; $5a10: $ff
    rst $38                                       ; $5a11: $ff
    rst $38                                       ; $5a12: $ff
    rst $38                                       ; $5a13: $ff
    rst $38                                       ; $5a14: $ff
    rst $38                                       ; $5a15: $ff
    rst $38                                       ; $5a16: $ff
    rst $38                                       ; $5a17: $ff
    rst $38                                       ; $5a18: $ff
    rst $38                                       ; $5a19: $ff
    rst $38                                       ; $5a1a: $ff
    rst $38                                       ; $5a1b: $ff
    rst $38                                       ; $5a1c: $ff
    rst $38                                       ; $5a1d: $ff
    rst $38                                       ; $5a1e: $ff
    rst $38                                       ; $5a1f: $ff
    rst $38                                       ; $5a20: $ff
    rst $38                                       ; $5a21: $ff
    rst $38                                       ; $5a22: $ff
    rst $38                                       ; $5a23: $ff
    rst $38                                       ; $5a24: $ff
    rst $38                                       ; $5a25: $ff
    rst $38                                       ; $5a26: $ff
    rst $38                                       ; $5a27: $ff
    rst $38                                       ; $5a28: $ff
    rst $38                                       ; $5a29: $ff
    rst $38                                       ; $5a2a: $ff
    rst $38                                       ; $5a2b: $ff
    rst $38                                       ; $5a2c: $ff
    rst $38                                       ; $5a2d: $ff
    rst $38                                       ; $5a2e: $ff
    rst $38                                       ; $5a2f: $ff
    rst $38                                       ; $5a30: $ff
    rst $38                                       ; $5a31: $ff
    rst $38                                       ; $5a32: $ff
    rst $38                                       ; $5a33: $ff
    rst $38                                       ; $5a34: $ff
    rst $38                                       ; $5a35: $ff
    rst $38                                       ; $5a36: $ff
    rst $38                                       ; $5a37: $ff
    rst $38                                       ; $5a38: $ff
    rst $38                                       ; $5a39: $ff
    rst $38                                       ; $5a3a: $ff
    rst $38                                       ; $5a3b: $ff
    rst $38                                       ; $5a3c: $ff
    rst $38                                       ; $5a3d: $ff
    rst $38                                       ; $5a3e: $ff
    rst $38                                       ; $5a3f: $ff
    rst $38                                       ; $5a40: $ff
    rst $38                                       ; $5a41: $ff
    rst $38                                       ; $5a42: $ff
    rst $38                                       ; $5a43: $ff
    rst $38                                       ; $5a44: $ff
    rst $38                                       ; $5a45: $ff
    rst $38                                       ; $5a46: $ff
    rst $38                                       ; $5a47: $ff
    rst $38                                       ; $5a48: $ff
    rst $38                                       ; $5a49: $ff
    rst $38                                       ; $5a4a: $ff
    rst $38                                       ; $5a4b: $ff
    rst $38                                       ; $5a4c: $ff
    rst $38                                       ; $5a4d: $ff
    rst $38                                       ; $5a4e: $ff
    rst $38                                       ; $5a4f: $ff
    rst $38                                       ; $5a50: $ff
    rst $38                                       ; $5a51: $ff
    rst $38                                       ; $5a52: $ff
    rst $38                                       ; $5a53: $ff
    rst $38                                       ; $5a54: $ff
    rst $38                                       ; $5a55: $ff
    rst $38                                       ; $5a56: $ff
    rst $38                                       ; $5a57: $ff
    rst $38                                       ; $5a58: $ff
    rst $38                                       ; $5a59: $ff
    rst $38                                       ; $5a5a: $ff
    rst $38                                       ; $5a5b: $ff
    rst $38                                       ; $5a5c: $ff
    rst $38                                       ; $5a5d: $ff
    rst $38                                       ; $5a5e: $ff
    rst $38                                       ; $5a5f: $ff
    rst $38                                       ; $5a60: $ff
    rst $38                                       ; $5a61: $ff
    rst $38                                       ; $5a62: $ff
    rst $38                                       ; $5a63: $ff
    rst $38                                       ; $5a64: $ff
    rst $38                                       ; $5a65: $ff
    rst $38                                       ; $5a66: $ff
    rst $38                                       ; $5a67: $ff
    rst $38                                       ; $5a68: $ff
    rst $38                                       ; $5a69: $ff
    rst $38                                       ; $5a6a: $ff
    rst $38                                       ; $5a6b: $ff
    rst $38                                       ; $5a6c: $ff
    rst $38                                       ; $5a6d: $ff
    rst $38                                       ; $5a6e: $ff
    rst $38                                       ; $5a6f: $ff
    rst $38                                       ; $5a70: $ff
    rst $38                                       ; $5a71: $ff
    rst $38                                       ; $5a72: $ff
    rst $38                                       ; $5a73: $ff
    rst $38                                       ; $5a74: $ff
    rst $38                                       ; $5a75: $ff
    rst $38                                       ; $5a76: $ff
    rst $38                                       ; $5a77: $ff
    rst $38                                       ; $5a78: $ff
    rst $38                                       ; $5a79: $ff
    rst $38                                       ; $5a7a: $ff
    rst $38                                       ; $5a7b: $ff
    rst $38                                       ; $5a7c: $ff
    rst $38                                       ; $5a7d: $ff
    rst $38                                       ; $5a7e: $ff
    rst $38                                       ; $5a7f: $ff
    rst $38                                       ; $5a80: $ff
    rst $38                                       ; $5a81: $ff
    rst $38                                       ; $5a82: $ff
    rst $38                                       ; $5a83: $ff
    rst $38                                       ; $5a84: $ff
    rst $38                                       ; $5a85: $ff
    rst $38                                       ; $5a86: $ff
    rst $38                                       ; $5a87: $ff
    rst $38                                       ; $5a88: $ff
    rst $38                                       ; $5a89: $ff
    rst $38                                       ; $5a8a: $ff
    rst $38                                       ; $5a8b: $ff
    rst $38                                       ; $5a8c: $ff
    rst $38                                       ; $5a8d: $ff
    rst $38                                       ; $5a8e: $ff
    rst $38                                       ; $5a8f: $ff
    rst $38                                       ; $5a90: $ff
    rst $38                                       ; $5a91: $ff
    rst $38                                       ; $5a92: $ff
    rst $38                                       ; $5a93: $ff
    rst $38                                       ; $5a94: $ff
    rst $38                                       ; $5a95: $ff
    rst $38                                       ; $5a96: $ff
    rst $38                                       ; $5a97: $ff
    rst $38                                       ; $5a98: $ff
    rst $38                                       ; $5a99: $ff
    rst $38                                       ; $5a9a: $ff
    rst $38                                       ; $5a9b: $ff
    rst $38                                       ; $5a9c: $ff
    rst $38                                       ; $5a9d: $ff
    rst $38                                       ; $5a9e: $ff
    rst $38                                       ; $5a9f: $ff
    rst $38                                       ; $5aa0: $ff
    rst $38                                       ; $5aa1: $ff
    rst $38                                       ; $5aa2: $ff
    rst $38                                       ; $5aa3: $ff
    rst $38                                       ; $5aa4: $ff
    rst $38                                       ; $5aa5: $ff
    rst $38                                       ; $5aa6: $ff
    rst $38                                       ; $5aa7: $ff
    rst $38                                       ; $5aa8: $ff
    rst $38                                       ; $5aa9: $ff
    rst $38                                       ; $5aaa: $ff
    rst $38                                       ; $5aab: $ff
    rst $38                                       ; $5aac: $ff
    rst $38                                       ; $5aad: $ff
    rst $38                                       ; $5aae: $ff
    rst $38                                       ; $5aaf: $ff
    rst $38                                       ; $5ab0: $ff
    rst $38                                       ; $5ab1: $ff
    rst $38                                       ; $5ab2: $ff
    rst $38                                       ; $5ab3: $ff
    rst $38                                       ; $5ab4: $ff
    rst $38                                       ; $5ab5: $ff
    rst $38                                       ; $5ab6: $ff
    rst $38                                       ; $5ab7: $ff
    rst $38                                       ; $5ab8: $ff
    rst $38                                       ; $5ab9: $ff
    rst $38                                       ; $5aba: $ff
    rst $38                                       ; $5abb: $ff
    rst $38                                       ; $5abc: $ff
    rst $38                                       ; $5abd: $ff
    rst $38                                       ; $5abe: $ff
    rst $38                                       ; $5abf: $ff
    rst $38                                       ; $5ac0: $ff
    rst $38                                       ; $5ac1: $ff
    rst $38                                       ; $5ac2: $ff
    rst $38                                       ; $5ac3: $ff
    rst $38                                       ; $5ac4: $ff
    rst $38                                       ; $5ac5: $ff
    rst $38                                       ; $5ac6: $ff
    rst $38                                       ; $5ac7: $ff
    rst $38                                       ; $5ac8: $ff
    rst $38                                       ; $5ac9: $ff
    rst $38                                       ; $5aca: $ff
    rst $38                                       ; $5acb: $ff
    rst $38                                       ; $5acc: $ff
    rst $38                                       ; $5acd: $ff
    rst $38                                       ; $5ace: $ff
    rst $38                                       ; $5acf: $ff
    rst $38                                       ; $5ad0: $ff
    rst $38                                       ; $5ad1: $ff
    rst $38                                       ; $5ad2: $ff
    rst $38                                       ; $5ad3: $ff
    rst $38                                       ; $5ad4: $ff
    rst $38                                       ; $5ad5: $ff
    rst $38                                       ; $5ad6: $ff
    rst $38                                       ; $5ad7: $ff
    rst $38                                       ; $5ad8: $ff
    rst $38                                       ; $5ad9: $ff
    rst $38                                       ; $5ada: $ff
    rst $38                                       ; $5adb: $ff
    rst $38                                       ; $5adc: $ff
    rst $38                                       ; $5add: $ff
    rst $38                                       ; $5ade: $ff
    rst $38                                       ; $5adf: $ff
    rst $38                                       ; $5ae0: $ff
    rst $38                                       ; $5ae1: $ff
    rst $38                                       ; $5ae2: $ff
    rst $38                                       ; $5ae3: $ff
    rst $38                                       ; $5ae4: $ff
    rst $38                                       ; $5ae5: $ff
    rst $38                                       ; $5ae6: $ff
    rst $38                                       ; $5ae7: $ff
    rst $38                                       ; $5ae8: $ff
    rst $38                                       ; $5ae9: $ff
    rst $38                                       ; $5aea: $ff
    rst $38                                       ; $5aeb: $ff
    rst $38                                       ; $5aec: $ff
    rst $38                                       ; $5aed: $ff
    rst $38                                       ; $5aee: $ff
    rst $38                                       ; $5aef: $ff
    rst $38                                       ; $5af0: $ff
    rst $38                                       ; $5af1: $ff
    rst $38                                       ; $5af2: $ff
    rst $38                                       ; $5af3: $ff
    rst $38                                       ; $5af4: $ff
    rst $38                                       ; $5af5: $ff
    rst $38                                       ; $5af6: $ff
    rst $38                                       ; $5af7: $ff
    rst $38                                       ; $5af8: $ff
    rst $38                                       ; $5af9: $ff
    rst $38                                       ; $5afa: $ff
    rst $38                                       ; $5afb: $ff
    rst $38                                       ; $5afc: $ff
    rst $38                                       ; $5afd: $ff
    rst $38                                       ; $5afe: $ff
    rst $38                                       ; $5aff: $ff
    rst $38                                       ; $5b00: $ff
    rst $38                                       ; $5b01: $ff
    rst $38                                       ; $5b02: $ff
    rst $38                                       ; $5b03: $ff
    rst $38                                       ; $5b04: $ff
    rst $38                                       ; $5b05: $ff
    rst $38                                       ; $5b06: $ff
    rst $38                                       ; $5b07: $ff
    rst $38                                       ; $5b08: $ff
    rst $38                                       ; $5b09: $ff
    rst $38                                       ; $5b0a: $ff
    rst $38                                       ; $5b0b: $ff
    rst $38                                       ; $5b0c: $ff
    rst $38                                       ; $5b0d: $ff
    rst $38                                       ; $5b0e: $ff
    rst $38                                       ; $5b0f: $ff
    rst $38                                       ; $5b10: $ff
    rst $38                                       ; $5b11: $ff
    rst $38                                       ; $5b12: $ff
    rst $38                                       ; $5b13: $ff
    rst $38                                       ; $5b14: $ff
    rst $38                                       ; $5b15: $ff
    rst $38                                       ; $5b16: $ff
    rst $38                                       ; $5b17: $ff
    rst $38                                       ; $5b18: $ff
    rst $38                                       ; $5b19: $ff
    rst $38                                       ; $5b1a: $ff
    rst $38                                       ; $5b1b: $ff
    rst $38                                       ; $5b1c: $ff
    rst $38                                       ; $5b1d: $ff
    rst $38                                       ; $5b1e: $ff
    rst $38                                       ; $5b1f: $ff
    rst $38                                       ; $5b20: $ff
    rst $38                                       ; $5b21: $ff
    rst $38                                       ; $5b22: $ff
    rst $38                                       ; $5b23: $ff
    rst $38                                       ; $5b24: $ff
    rst $38                                       ; $5b25: $ff
    rst $38                                       ; $5b26: $ff
    rst $38                                       ; $5b27: $ff
    rst $38                                       ; $5b28: $ff
    rst $38                                       ; $5b29: $ff
    rst $38                                       ; $5b2a: $ff
    rst $38                                       ; $5b2b: $ff
    rst $38                                       ; $5b2c: $ff
    rst $38                                       ; $5b2d: $ff
    rst $38                                       ; $5b2e: $ff
    rst $38                                       ; $5b2f: $ff
    rst $38                                       ; $5b30: $ff
    rst $38                                       ; $5b31: $ff
    rst $38                                       ; $5b32: $ff
    rst $38                                       ; $5b33: $ff
    rst $38                                       ; $5b34: $ff
    rst $38                                       ; $5b35: $ff
    rst $38                                       ; $5b36: $ff
    rst $38                                       ; $5b37: $ff
    rst $38                                       ; $5b38: $ff
    rst $38                                       ; $5b39: $ff
    rst $38                                       ; $5b3a: $ff
    rst $38                                       ; $5b3b: $ff
    rst $38                                       ; $5b3c: $ff
    rst $38                                       ; $5b3d: $ff
    rst $38                                       ; $5b3e: $ff
    rst $38                                       ; $5b3f: $ff
    rst $38                                       ; $5b40: $ff
    rst $38                                       ; $5b41: $ff
    rst $38                                       ; $5b42: $ff
    rst $38                                       ; $5b43: $ff
    rst $38                                       ; $5b44: $ff
    rst $38                                       ; $5b45: $ff
    rst $38                                       ; $5b46: $ff
    rst $38                                       ; $5b47: $ff
    rst $38                                       ; $5b48: $ff
    rst $38                                       ; $5b49: $ff
    rst $38                                       ; $5b4a: $ff
    rst $38                                       ; $5b4b: $ff
    rst $38                                       ; $5b4c: $ff
    rst $38                                       ; $5b4d: $ff
    rst $38                                       ; $5b4e: $ff
    rst $38                                       ; $5b4f: $ff
    rst $38                                       ; $5b50: $ff
    rst $38                                       ; $5b51: $ff
    rst $38                                       ; $5b52: $ff
    rst $38                                       ; $5b53: $ff
    rst $38                                       ; $5b54: $ff
    rst $38                                       ; $5b55: $ff
    rst $38                                       ; $5b56: $ff
    rst $38                                       ; $5b57: $ff
    rst $38                                       ; $5b58: $ff
    rst $38                                       ; $5b59: $ff
    rst $38                                       ; $5b5a: $ff
    rst $38                                       ; $5b5b: $ff
    rst $38                                       ; $5b5c: $ff
    rst $38                                       ; $5b5d: $ff
    rst $38                                       ; $5b5e: $ff
    rst $38                                       ; $5b5f: $ff
    rst $38                                       ; $5b60: $ff
    rst $38                                       ; $5b61: $ff
    rst $38                                       ; $5b62: $ff
    rst $38                                       ; $5b63: $ff
    rst $38                                       ; $5b64: $ff
    rst $38                                       ; $5b65: $ff
    rst $38                                       ; $5b66: $ff
    rst $38                                       ; $5b67: $ff
    rst $38                                       ; $5b68: $ff
    rst $38                                       ; $5b69: $ff
    rst $38                                       ; $5b6a: $ff
    rst $38                                       ; $5b6b: $ff
    rst $38                                       ; $5b6c: $ff
    rst $38                                       ; $5b6d: $ff
    rst $38                                       ; $5b6e: $ff
    rst $38                                       ; $5b6f: $ff
    rst $38                                       ; $5b70: $ff
    rst $38                                       ; $5b71: $ff
    rst $38                                       ; $5b72: $ff
    rst $38                                       ; $5b73: $ff
    rst $38                                       ; $5b74: $ff
    rst $38                                       ; $5b75: $ff
    rst $38                                       ; $5b76: $ff
    rst $38                                       ; $5b77: $ff
    rst $38                                       ; $5b78: $ff
    rst $38                                       ; $5b79: $ff
    rst $38                                       ; $5b7a: $ff
    rst $38                                       ; $5b7b: $ff
    rst $38                                       ; $5b7c: $ff
    rst $38                                       ; $5b7d: $ff
    rst $38                                       ; $5b7e: $ff
    rst $38                                       ; $5b7f: $ff
    rst $38                                       ; $5b80: $ff
    rst $38                                       ; $5b81: $ff
    rst $38                                       ; $5b82: $ff
    rst $38                                       ; $5b83: $ff
    rst $38                                       ; $5b84: $ff
    rst $38                                       ; $5b85: $ff
    rst $38                                       ; $5b86: $ff
    rst $38                                       ; $5b87: $ff
    rst $38                                       ; $5b88: $ff
    rst $38                                       ; $5b89: $ff
    rst $38                                       ; $5b8a: $ff
    rst $38                                       ; $5b8b: $ff
    rst $38                                       ; $5b8c: $ff
    rst $38                                       ; $5b8d: $ff
    rst $38                                       ; $5b8e: $ff
    rst $38                                       ; $5b8f: $ff
    rst $38                                       ; $5b90: $ff
    rst $38                                       ; $5b91: $ff
    rst $38                                       ; $5b92: $ff
    rst $38                                       ; $5b93: $ff
    rst $38                                       ; $5b94: $ff
    rst $38                                       ; $5b95: $ff
    rst $38                                       ; $5b96: $ff
    rst $38                                       ; $5b97: $ff
    rst $38                                       ; $5b98: $ff
    rst $38                                       ; $5b99: $ff
    rst $38                                       ; $5b9a: $ff
    rst $38                                       ; $5b9b: $ff
    rst $38                                       ; $5b9c: $ff
    rst $38                                       ; $5b9d: $ff
    rst $38                                       ; $5b9e: $ff
    rst $38                                       ; $5b9f: $ff
    rst $38                                       ; $5ba0: $ff
    rst $38                                       ; $5ba1: $ff
    rst $38                                       ; $5ba2: $ff
    rst $38                                       ; $5ba3: $ff
    rst $38                                       ; $5ba4: $ff
    rst $38                                       ; $5ba5: $ff
    rst $38                                       ; $5ba6: $ff
    rst $38                                       ; $5ba7: $ff
    rst $38                                       ; $5ba8: $ff
    rst $38                                       ; $5ba9: $ff
    rst $38                                       ; $5baa: $ff
    rst $38                                       ; $5bab: $ff
    rst $38                                       ; $5bac: $ff
    rst $38                                       ; $5bad: $ff
    rst $38                                       ; $5bae: $ff
    rst $38                                       ; $5baf: $ff
    rst $38                                       ; $5bb0: $ff
    rst $38                                       ; $5bb1: $ff
    rst $38                                       ; $5bb2: $ff
    rst $38                                       ; $5bb3: $ff
    rst $38                                       ; $5bb4: $ff
    rst $38                                       ; $5bb5: $ff
    rst $38                                       ; $5bb6: $ff
    rst $38                                       ; $5bb7: $ff
    rst $38                                       ; $5bb8: $ff
    rst $38                                       ; $5bb9: $ff
    rst $38                                       ; $5bba: $ff
    rst $38                                       ; $5bbb: $ff
    rst $38                                       ; $5bbc: $ff
    rst $38                                       ; $5bbd: $ff
    rst $38                                       ; $5bbe: $ff
    rst $38                                       ; $5bbf: $ff
    rst $38                                       ; $5bc0: $ff
    rst $38                                       ; $5bc1: $ff
    rst $38                                       ; $5bc2: $ff
    rst $38                                       ; $5bc3: $ff
    rst $38                                       ; $5bc4: $ff
    rst $38                                       ; $5bc5: $ff
    rst $38                                       ; $5bc6: $ff
    rst $38                                       ; $5bc7: $ff
    rst $38                                       ; $5bc8: $ff
    rst $38                                       ; $5bc9: $ff
    rst $38                                       ; $5bca: $ff
    rst $38                                       ; $5bcb: $ff
    rst $38                                       ; $5bcc: $ff
    rst $38                                       ; $5bcd: $ff
    rst $38                                       ; $5bce: $ff
    rst $38                                       ; $5bcf: $ff
    rst $38                                       ; $5bd0: $ff
    rst $38                                       ; $5bd1: $ff
    rst $38                                       ; $5bd2: $ff
    rst $38                                       ; $5bd3: $ff
    rst $38                                       ; $5bd4: $ff
    rst $38                                       ; $5bd5: $ff
    rst $38                                       ; $5bd6: $ff
    rst $38                                       ; $5bd7: $ff
    rst $38                                       ; $5bd8: $ff
    rst $38                                       ; $5bd9: $ff
    rst $38                                       ; $5bda: $ff
    rst $38                                       ; $5bdb: $ff
    rst $38                                       ; $5bdc: $ff
    rst $38                                       ; $5bdd: $ff
    rst $38                                       ; $5bde: $ff
    rst $38                                       ; $5bdf: $ff
    rst $38                                       ; $5be0: $ff
    rst $38                                       ; $5be1: $ff
    rst $38                                       ; $5be2: $ff
    rst $38                                       ; $5be3: $ff
    rst $38                                       ; $5be4: $ff
    rst $38                                       ; $5be5: $ff
    rst $38                                       ; $5be6: $ff
    rst $38                                       ; $5be7: $ff
    rst $38                                       ; $5be8: $ff
    rst $38                                       ; $5be9: $ff
    rst $38                                       ; $5bea: $ff
    rst $38                                       ; $5beb: $ff
    rst $38                                       ; $5bec: $ff
    rst $38                                       ; $5bed: $ff
    rst $38                                       ; $5bee: $ff
    rst $38                                       ; $5bef: $ff
    rst $38                                       ; $5bf0: $ff
    rst $38                                       ; $5bf1: $ff
    rst $38                                       ; $5bf2: $ff
    rst $38                                       ; $5bf3: $ff
    rst $38                                       ; $5bf4: $ff
    rst $38                                       ; $5bf5: $ff
    rst $38                                       ; $5bf6: $ff
    rst $38                                       ; $5bf7: $ff
    rst $38                                       ; $5bf8: $ff
    rst $38                                       ; $5bf9: $ff
    rst $38                                       ; $5bfa: $ff
    rst $38                                       ; $5bfb: $ff
    rst $38                                       ; $5bfc: $ff
    rst $38                                       ; $5bfd: $ff
    rst $38                                       ; $5bfe: $ff
    rst $38                                       ; $5bff: $ff
    rst $38                                       ; $5c00: $ff
    rst $38                                       ; $5c01: $ff
    rst $38                                       ; $5c02: $ff
    rst $38                                       ; $5c03: $ff
    rst $38                                       ; $5c04: $ff
    rst $38                                       ; $5c05: $ff
    rst $38                                       ; $5c06: $ff
    rst $38                                       ; $5c07: $ff
    rst $38                                       ; $5c08: $ff
    rst $38                                       ; $5c09: $ff
    rst $38                                       ; $5c0a: $ff
    rst $38                                       ; $5c0b: $ff
    rst $38                                       ; $5c0c: $ff
    rst $38                                       ; $5c0d: $ff
    rst $38                                       ; $5c0e: $ff
    rst $38                                       ; $5c0f: $ff
    rst $38                                       ; $5c10: $ff
    rst $38                                       ; $5c11: $ff
    rst $38                                       ; $5c12: $ff
    rst $38                                       ; $5c13: $ff
    rst $38                                       ; $5c14: $ff
    rst $38                                       ; $5c15: $ff
    rst $38                                       ; $5c16: $ff
    rst $38                                       ; $5c17: $ff
    rst $38                                       ; $5c18: $ff
    rst $38                                       ; $5c19: $ff
    rst $38                                       ; $5c1a: $ff
    rst $38                                       ; $5c1b: $ff
    rst $38                                       ; $5c1c: $ff
    rst $38                                       ; $5c1d: $ff
    rst $38                                       ; $5c1e: $ff
    rst $38                                       ; $5c1f: $ff
    rst $38                                       ; $5c20: $ff
    rst $38                                       ; $5c21: $ff
    rst $38                                       ; $5c22: $ff
    rst $38                                       ; $5c23: $ff
    rst $38                                       ; $5c24: $ff
    rst $38                                       ; $5c25: $ff
    rst $38                                       ; $5c26: $ff
    rst $38                                       ; $5c27: $ff
    rst $38                                       ; $5c28: $ff
    rst $38                                       ; $5c29: $ff
    rst $38                                       ; $5c2a: $ff
    rst $38                                       ; $5c2b: $ff
    rst $38                                       ; $5c2c: $ff
    rst $38                                       ; $5c2d: $ff
    rst $38                                       ; $5c2e: $ff
    rst $38                                       ; $5c2f: $ff
    rst $38                                       ; $5c30: $ff
    rst $38                                       ; $5c31: $ff
    rst $38                                       ; $5c32: $ff
    rst $38                                       ; $5c33: $ff
    rst $38                                       ; $5c34: $ff
    rst $38                                       ; $5c35: $ff
    rst $38                                       ; $5c36: $ff
    rst $38                                       ; $5c37: $ff
    rst $38                                       ; $5c38: $ff
    rst $38                                       ; $5c39: $ff
    rst $38                                       ; $5c3a: $ff
    rst $38                                       ; $5c3b: $ff
    rst $38                                       ; $5c3c: $ff
    rst $38                                       ; $5c3d: $ff
    rst $38                                       ; $5c3e: $ff
    rst $38                                       ; $5c3f: $ff
    rst $38                                       ; $5c40: $ff
    rst $38                                       ; $5c41: $ff
    rst $38                                       ; $5c42: $ff
    rst $38                                       ; $5c43: $ff
    rst $38                                       ; $5c44: $ff
    rst $38                                       ; $5c45: $ff
    rst $38                                       ; $5c46: $ff
    rst $38                                       ; $5c47: $ff
    rst $38                                       ; $5c48: $ff
    rst $38                                       ; $5c49: $ff
    rst $38                                       ; $5c4a: $ff
    rst $38                                       ; $5c4b: $ff
    rst $38                                       ; $5c4c: $ff
    rst $38                                       ; $5c4d: $ff
    rst $38                                       ; $5c4e: $ff
    rst $38                                       ; $5c4f: $ff
    rst $38                                       ; $5c50: $ff
    rst $38                                       ; $5c51: $ff
    rst $38                                       ; $5c52: $ff
    rst $38                                       ; $5c53: $ff
    rst $38                                       ; $5c54: $ff
    rst $38                                       ; $5c55: $ff
    rst $38                                       ; $5c56: $ff
    rst $38                                       ; $5c57: $ff
    rst $38                                       ; $5c58: $ff
    rst $38                                       ; $5c59: $ff
    rst $38                                       ; $5c5a: $ff
    rst $38                                       ; $5c5b: $ff
    rst $38                                       ; $5c5c: $ff
    rst $38                                       ; $5c5d: $ff
    rst $38                                       ; $5c5e: $ff
    rst $38                                       ; $5c5f: $ff
    rst $38                                       ; $5c60: $ff
    rst $38                                       ; $5c61: $ff
    rst $38                                       ; $5c62: $ff
    rst $38                                       ; $5c63: $ff
    rst $38                                       ; $5c64: $ff
    rst $38                                       ; $5c65: $ff
    rst $38                                       ; $5c66: $ff
    rst $38                                       ; $5c67: $ff
    rst $38                                       ; $5c68: $ff
    rst $38                                       ; $5c69: $ff
    rst $38                                       ; $5c6a: $ff
    rst $38                                       ; $5c6b: $ff
    rst $38                                       ; $5c6c: $ff
    rst $38                                       ; $5c6d: $ff
    rst $38                                       ; $5c6e: $ff
    rst $38                                       ; $5c6f: $ff
    rst $38                                       ; $5c70: $ff
    rst $38                                       ; $5c71: $ff
    rst $38                                       ; $5c72: $ff
    rst $38                                       ; $5c73: $ff
    rst $38                                       ; $5c74: $ff
    rst $38                                       ; $5c75: $ff
    rst $38                                       ; $5c76: $ff
    rst $38                                       ; $5c77: $ff
    rst $38                                       ; $5c78: $ff
    rst $38                                       ; $5c79: $ff
    rst $38                                       ; $5c7a: $ff
    rst $38                                       ; $5c7b: $ff
    rst $38                                       ; $5c7c: $ff
    rst $38                                       ; $5c7d: $ff
    rst $38                                       ; $5c7e: $ff
    rst $38                                       ; $5c7f: $ff
    rst $38                                       ; $5c80: $ff
    rst $38                                       ; $5c81: $ff
    rst $38                                       ; $5c82: $ff
    rst $38                                       ; $5c83: $ff
    rst $38                                       ; $5c84: $ff
    rst $38                                       ; $5c85: $ff
    rst $38                                       ; $5c86: $ff
    rst $38                                       ; $5c87: $ff
    rst $38                                       ; $5c88: $ff
    rst $38                                       ; $5c89: $ff
    rst $38                                       ; $5c8a: $ff
    rst $38                                       ; $5c8b: $ff
    rst $38                                       ; $5c8c: $ff
    rst $38                                       ; $5c8d: $ff
    rst $38                                       ; $5c8e: $ff
    rst $38                                       ; $5c8f: $ff
    rst $38                                       ; $5c90: $ff
    rst $38                                       ; $5c91: $ff
    rst $38                                       ; $5c92: $ff
    rst $38                                       ; $5c93: $ff
    rst $38                                       ; $5c94: $ff
    rst $38                                       ; $5c95: $ff
    rst $38                                       ; $5c96: $ff
    rst $38                                       ; $5c97: $ff
    rst $38                                       ; $5c98: $ff
    rst $38                                       ; $5c99: $ff
    rst $38                                       ; $5c9a: $ff
    rst $38                                       ; $5c9b: $ff
    rst $38                                       ; $5c9c: $ff
    rst $38                                       ; $5c9d: $ff
    rst $38                                       ; $5c9e: $ff
    rst $38                                       ; $5c9f: $ff
    rst $38                                       ; $5ca0: $ff
    rst $38                                       ; $5ca1: $ff
    rst $38                                       ; $5ca2: $ff
    rst $38                                       ; $5ca3: $ff
    rst $38                                       ; $5ca4: $ff
    rst $38                                       ; $5ca5: $ff
    rst $38                                       ; $5ca6: $ff
    rst $38                                       ; $5ca7: $ff
    rst $38                                       ; $5ca8: $ff
    rst $38                                       ; $5ca9: $ff
    rst $38                                       ; $5caa: $ff
    rst $38                                       ; $5cab: $ff
    rst $38                                       ; $5cac: $ff
    rst $38                                       ; $5cad: $ff
    rst $38                                       ; $5cae: $ff
    rst $38                                       ; $5caf: $ff
    rst $38                                       ; $5cb0: $ff
    rst $38                                       ; $5cb1: $ff
    rst $38                                       ; $5cb2: $ff
    rst $38                                       ; $5cb3: $ff
    rst $38                                       ; $5cb4: $ff
    rst $38                                       ; $5cb5: $ff
    rst $38                                       ; $5cb6: $ff
    rst $38                                       ; $5cb7: $ff
    rst $38                                       ; $5cb8: $ff
    rst $38                                       ; $5cb9: $ff
    rst $38                                       ; $5cba: $ff
    rst $38                                       ; $5cbb: $ff
    rst $38                                       ; $5cbc: $ff
    rst $38                                       ; $5cbd: $ff
    rst $38                                       ; $5cbe: $ff
    rst $38                                       ; $5cbf: $ff
    rst $38                                       ; $5cc0: $ff
    rst $38                                       ; $5cc1: $ff
    rst $38                                       ; $5cc2: $ff
    rst $38                                       ; $5cc3: $ff
    rst $38                                       ; $5cc4: $ff
    rst $38                                       ; $5cc5: $ff
    rst $38                                       ; $5cc6: $ff
    rst $38                                       ; $5cc7: $ff
    rst $38                                       ; $5cc8: $ff
    rst $38                                       ; $5cc9: $ff
    rst $38                                       ; $5cca: $ff
    rst $38                                       ; $5ccb: $ff
    rst $38                                       ; $5ccc: $ff
    rst $38                                       ; $5ccd: $ff
    rst $38                                       ; $5cce: $ff
    rst $38                                       ; $5ccf: $ff
    rst $38                                       ; $5cd0: $ff
    rst $38                                       ; $5cd1: $ff
    rst $38                                       ; $5cd2: $ff
    rst $38                                       ; $5cd3: $ff
    rst $38                                       ; $5cd4: $ff
    rst $38                                       ; $5cd5: $ff
    rst $38                                       ; $5cd6: $ff
    rst $38                                       ; $5cd7: $ff
    rst $38                                       ; $5cd8: $ff
    rst $38                                       ; $5cd9: $ff
    rst $38                                       ; $5cda: $ff
    rst $38                                       ; $5cdb: $ff
    rst $38                                       ; $5cdc: $ff
    rst $38                                       ; $5cdd: $ff
    rst $38                                       ; $5cde: $ff
    rst $38                                       ; $5cdf: $ff
    rst $38                                       ; $5ce0: $ff
    rst $38                                       ; $5ce1: $ff
    rst $38                                       ; $5ce2: $ff
    rst $38                                       ; $5ce3: $ff
    rst $38                                       ; $5ce4: $ff
    rst $38                                       ; $5ce5: $ff
    rst $38                                       ; $5ce6: $ff
    rst $38                                       ; $5ce7: $ff
    rst $38                                       ; $5ce8: $ff
    rst $38                                       ; $5ce9: $ff
    rst $38                                       ; $5cea: $ff
    rst $38                                       ; $5ceb: $ff
    rst $38                                       ; $5cec: $ff
    rst $38                                       ; $5ced: $ff
    rst $38                                       ; $5cee: $ff
    rst $38                                       ; $5cef: $ff
    rst $38                                       ; $5cf0: $ff
    rst $38                                       ; $5cf1: $ff
    rst $38                                       ; $5cf2: $ff
    rst $38                                       ; $5cf3: $ff
    rst $38                                       ; $5cf4: $ff
    rst $38                                       ; $5cf5: $ff
    rst $38                                       ; $5cf6: $ff
    rst $38                                       ; $5cf7: $ff
    rst $38                                       ; $5cf8: $ff
    rst $38                                       ; $5cf9: $ff
    rst $38                                       ; $5cfa: $ff
    rst $38                                       ; $5cfb: $ff
    rst $38                                       ; $5cfc: $ff
    rst $38                                       ; $5cfd: $ff
    rst $38                                       ; $5cfe: $ff
    rst $38                                       ; $5cff: $ff
    rst $38                                       ; $5d00: $ff
    rst $38                                       ; $5d01: $ff
    rst $38                                       ; $5d02: $ff
    rst $38                                       ; $5d03: $ff
    rst $38                                       ; $5d04: $ff
    rst $38                                       ; $5d05: $ff
    rst $38                                       ; $5d06: $ff
    rst $38                                       ; $5d07: $ff
    rst $38                                       ; $5d08: $ff
    rst $38                                       ; $5d09: $ff
    rst $38                                       ; $5d0a: $ff
    rst $38                                       ; $5d0b: $ff
    rst $38                                       ; $5d0c: $ff
    rst $38                                       ; $5d0d: $ff
    rst $38                                       ; $5d0e: $ff
    rst $38                                       ; $5d0f: $ff
    rst $38                                       ; $5d10: $ff
    rst $38                                       ; $5d11: $ff
    rst $38                                       ; $5d12: $ff
    rst $38                                       ; $5d13: $ff
    rst $38                                       ; $5d14: $ff
    rst $38                                       ; $5d15: $ff
    rst $38                                       ; $5d16: $ff
    rst $38                                       ; $5d17: $ff
    rst $38                                       ; $5d18: $ff
    rst $38                                       ; $5d19: $ff
    rst $38                                       ; $5d1a: $ff
    rst $38                                       ; $5d1b: $ff
    rst $38                                       ; $5d1c: $ff
    rst $38                                       ; $5d1d: $ff
    rst $38                                       ; $5d1e: $ff
    rst $38                                       ; $5d1f: $ff
    rst $38                                       ; $5d20: $ff
    rst $38                                       ; $5d21: $ff
    rst $38                                       ; $5d22: $ff
    rst $38                                       ; $5d23: $ff
    rst $38                                       ; $5d24: $ff
    rst $38                                       ; $5d25: $ff
    rst $38                                       ; $5d26: $ff
    rst $38                                       ; $5d27: $ff
    rst $38                                       ; $5d28: $ff
    rst $38                                       ; $5d29: $ff
    rst $38                                       ; $5d2a: $ff
    rst $38                                       ; $5d2b: $ff
    rst $38                                       ; $5d2c: $ff
    rst $38                                       ; $5d2d: $ff
    rst $38                                       ; $5d2e: $ff
    rst $38                                       ; $5d2f: $ff
    rst $38                                       ; $5d30: $ff
    rst $38                                       ; $5d31: $ff
    rst $38                                       ; $5d32: $ff
    rst $38                                       ; $5d33: $ff
    rst $38                                       ; $5d34: $ff
    rst $38                                       ; $5d35: $ff
    rst $38                                       ; $5d36: $ff
    rst $38                                       ; $5d37: $ff
    rst $38                                       ; $5d38: $ff
    rst $38                                       ; $5d39: $ff
    rst $38                                       ; $5d3a: $ff
    rst $38                                       ; $5d3b: $ff
    rst $38                                       ; $5d3c: $ff
    rst $38                                       ; $5d3d: $ff
    rst $38                                       ; $5d3e: $ff
    rst $38                                       ; $5d3f: $ff
    rst $38                                       ; $5d40: $ff
    rst $38                                       ; $5d41: $ff
    rst $38                                       ; $5d42: $ff
    rst $38                                       ; $5d43: $ff
    rst $38                                       ; $5d44: $ff
    rst $38                                       ; $5d45: $ff
    rst $38                                       ; $5d46: $ff
    rst $38                                       ; $5d47: $ff
    rst $38                                       ; $5d48: $ff
    rst $38                                       ; $5d49: $ff
    rst $38                                       ; $5d4a: $ff
    rst $38                                       ; $5d4b: $ff
    rst $38                                       ; $5d4c: $ff
    rst $38                                       ; $5d4d: $ff
    rst $38                                       ; $5d4e: $ff
    rst $38                                       ; $5d4f: $ff
    rst $38                                       ; $5d50: $ff
    rst $38                                       ; $5d51: $ff
    rst $38                                       ; $5d52: $ff
    rst $38                                       ; $5d53: $ff
    rst $38                                       ; $5d54: $ff
    rst $38                                       ; $5d55: $ff
    rst $38                                       ; $5d56: $ff
    rst $38                                       ; $5d57: $ff
    rst $38                                       ; $5d58: $ff
    rst $38                                       ; $5d59: $ff
    rst $38                                       ; $5d5a: $ff
    rst $38                                       ; $5d5b: $ff
    rst $38                                       ; $5d5c: $ff
    rst $38                                       ; $5d5d: $ff
    rst $38                                       ; $5d5e: $ff
    rst $38                                       ; $5d5f: $ff
    rst $38                                       ; $5d60: $ff
    rst $38                                       ; $5d61: $ff
    rst $38                                       ; $5d62: $ff
    rst $38                                       ; $5d63: $ff
    rst $38                                       ; $5d64: $ff
    rst $38                                       ; $5d65: $ff
    rst $38                                       ; $5d66: $ff
    rst $38                                       ; $5d67: $ff
    rst $38                                       ; $5d68: $ff
    rst $38                                       ; $5d69: $ff
    rst $38                                       ; $5d6a: $ff
    rst $38                                       ; $5d6b: $ff
    rst $38                                       ; $5d6c: $ff
    rst $38                                       ; $5d6d: $ff
    rst $38                                       ; $5d6e: $ff
    rst $38                                       ; $5d6f: $ff
    rst $38                                       ; $5d70: $ff
    rst $38                                       ; $5d71: $ff
    rst $38                                       ; $5d72: $ff
    rst $38                                       ; $5d73: $ff
    rst $38                                       ; $5d74: $ff
    rst $38                                       ; $5d75: $ff
    rst $38                                       ; $5d76: $ff
    rst $38                                       ; $5d77: $ff
    rst $38                                       ; $5d78: $ff
    rst $38                                       ; $5d79: $ff
    rst $38                                       ; $5d7a: $ff
    rst $38                                       ; $5d7b: $ff
    rst $38                                       ; $5d7c: $ff
    rst $38                                       ; $5d7d: $ff
    rst $38                                       ; $5d7e: $ff
    rst $38                                       ; $5d7f: $ff
    rst $38                                       ; $5d80: $ff
    rst $38                                       ; $5d81: $ff
    rst $38                                       ; $5d82: $ff
    rst $38                                       ; $5d83: $ff
    rst $38                                       ; $5d84: $ff
    rst $38                                       ; $5d85: $ff
    rst $38                                       ; $5d86: $ff
    rst $38                                       ; $5d87: $ff
    rst $38                                       ; $5d88: $ff
    rst $38                                       ; $5d89: $ff
    rst $38                                       ; $5d8a: $ff
    rst $38                                       ; $5d8b: $ff
    rst $38                                       ; $5d8c: $ff
    rst $38                                       ; $5d8d: $ff
    rst $38                                       ; $5d8e: $ff
    rst $38                                       ; $5d8f: $ff
    rst $38                                       ; $5d90: $ff
    rst $38                                       ; $5d91: $ff
    rst $38                                       ; $5d92: $ff
    rst $38                                       ; $5d93: $ff
    rst $38                                       ; $5d94: $ff
    rst $38                                       ; $5d95: $ff
    rst $38                                       ; $5d96: $ff
    rst $38                                       ; $5d97: $ff
    rst $38                                       ; $5d98: $ff
    rst $38                                       ; $5d99: $ff
    rst $38                                       ; $5d9a: $ff
    rst $38                                       ; $5d9b: $ff
    rst $38                                       ; $5d9c: $ff
    rst $38                                       ; $5d9d: $ff
    rst $38                                       ; $5d9e: $ff
    rst $38                                       ; $5d9f: $ff
    rst $38                                       ; $5da0: $ff
    rst $38                                       ; $5da1: $ff
    rst $38                                       ; $5da2: $ff
    rst $38                                       ; $5da3: $ff
    rst $38                                       ; $5da4: $ff
    rst $38                                       ; $5da5: $ff
    rst $38                                       ; $5da6: $ff
    rst $38                                       ; $5da7: $ff
    rst $38                                       ; $5da8: $ff
    rst $38                                       ; $5da9: $ff
    rst $38                                       ; $5daa: $ff
    rst $38                                       ; $5dab: $ff
    rst $38                                       ; $5dac: $ff
    rst $38                                       ; $5dad: $ff
    rst $38                                       ; $5dae: $ff
    rst $38                                       ; $5daf: $ff
    rst $38                                       ; $5db0: $ff
    rst $38                                       ; $5db1: $ff
    rst $38                                       ; $5db2: $ff
    rst $38                                       ; $5db3: $ff
    rst $38                                       ; $5db4: $ff
    rst $38                                       ; $5db5: $ff
    rst $38                                       ; $5db6: $ff
    rst $38                                       ; $5db7: $ff
    rst $38                                       ; $5db8: $ff
    rst $38                                       ; $5db9: $ff
    rst $38                                       ; $5dba: $ff
    rst $38                                       ; $5dbb: $ff
    rst $38                                       ; $5dbc: $ff
    rst $38                                       ; $5dbd: $ff
    rst $38                                       ; $5dbe: $ff
    rst $38                                       ; $5dbf: $ff
    rst $38                                       ; $5dc0: $ff
    rst $38                                       ; $5dc1: $ff
    rst $38                                       ; $5dc2: $ff
    rst $38                                       ; $5dc3: $ff
    rst $38                                       ; $5dc4: $ff
    rst $38                                       ; $5dc5: $ff
    rst $38                                       ; $5dc6: $ff
    rst $38                                       ; $5dc7: $ff
    rst $38                                       ; $5dc8: $ff
    rst $38                                       ; $5dc9: $ff
    rst $38                                       ; $5dca: $ff
    rst $38                                       ; $5dcb: $ff
    rst $38                                       ; $5dcc: $ff
    rst $38                                       ; $5dcd: $ff
    rst $38                                       ; $5dce: $ff
    rst $38                                       ; $5dcf: $ff
    rst $38                                       ; $5dd0: $ff
    rst $38                                       ; $5dd1: $ff
    rst $38                                       ; $5dd2: $ff
    rst $38                                       ; $5dd3: $ff
    rst $38                                       ; $5dd4: $ff
    rst $38                                       ; $5dd5: $ff
    rst $38                                       ; $5dd6: $ff
    rst $38                                       ; $5dd7: $ff
    rst $38                                       ; $5dd8: $ff
    rst $38                                       ; $5dd9: $ff
    rst $38                                       ; $5dda: $ff
    rst $38                                       ; $5ddb: $ff
    rst $38                                       ; $5ddc: $ff
    rst $38                                       ; $5ddd: $ff
    rst $38                                       ; $5dde: $ff
    rst $38                                       ; $5ddf: $ff
    rst $38                                       ; $5de0: $ff
    rst $38                                       ; $5de1: $ff
    rst $38                                       ; $5de2: $ff
    rst $38                                       ; $5de3: $ff
    rst $38                                       ; $5de4: $ff
    rst $38                                       ; $5de5: $ff
    rst $38                                       ; $5de6: $ff
    rst $38                                       ; $5de7: $ff
    rst $38                                       ; $5de8: $ff
    rst $38                                       ; $5de9: $ff
    rst $38                                       ; $5dea: $ff
    rst $38                                       ; $5deb: $ff
    rst $38                                       ; $5dec: $ff
    rst $38                                       ; $5ded: $ff
    rst $38                                       ; $5dee: $ff
    rst $38                                       ; $5def: $ff
    rst $38                                       ; $5df0: $ff
    rst $38                                       ; $5df1: $ff
    rst $38                                       ; $5df2: $ff
    rst $38                                       ; $5df3: $ff
    rst $38                                       ; $5df4: $ff
    rst $38                                       ; $5df5: $ff
    rst $38                                       ; $5df6: $ff
    rst $38                                       ; $5df7: $ff
    rst $38                                       ; $5df8: $ff
    rst $38                                       ; $5df9: $ff
    rst $38                                       ; $5dfa: $ff
    rst $38                                       ; $5dfb: $ff
    rst $38                                       ; $5dfc: $ff
    rst $38                                       ; $5dfd: $ff
    rst $38                                       ; $5dfe: $ff
    rst $38                                       ; $5dff: $ff
    rst $38                                       ; $5e00: $ff
    rst $38                                       ; $5e01: $ff
    rst $38                                       ; $5e02: $ff
    rst $38                                       ; $5e03: $ff
    rst $38                                       ; $5e04: $ff
    rst $38                                       ; $5e05: $ff
    rst $38                                       ; $5e06: $ff
    rst $38                                       ; $5e07: $ff
    rst $38                                       ; $5e08: $ff
    rst $38                                       ; $5e09: $ff
    rst $38                                       ; $5e0a: $ff
    rst $38                                       ; $5e0b: $ff
    rst $38                                       ; $5e0c: $ff
    rst $38                                       ; $5e0d: $ff
    rst $38                                       ; $5e0e: $ff
    rst $38                                       ; $5e0f: $ff
    rst $38                                       ; $5e10: $ff
    rst $38                                       ; $5e11: $ff
    rst $38                                       ; $5e12: $ff
    rst $38                                       ; $5e13: $ff
    rst $38                                       ; $5e14: $ff
    rst $38                                       ; $5e15: $ff
    rst $38                                       ; $5e16: $ff
    rst $38                                       ; $5e17: $ff
    rst $38                                       ; $5e18: $ff
    rst $38                                       ; $5e19: $ff
    rst $38                                       ; $5e1a: $ff
    rst $38                                       ; $5e1b: $ff
    rst $38                                       ; $5e1c: $ff
    rst $38                                       ; $5e1d: $ff
    rst $38                                       ; $5e1e: $ff
    rst $38                                       ; $5e1f: $ff
    rst $38                                       ; $5e20: $ff
    rst $38                                       ; $5e21: $ff
    rst $38                                       ; $5e22: $ff
    rst $38                                       ; $5e23: $ff
    rst $38                                       ; $5e24: $ff
    rst $38                                       ; $5e25: $ff
    rst $38                                       ; $5e26: $ff
    rst $38                                       ; $5e27: $ff
    rst $38                                       ; $5e28: $ff
    rst $38                                       ; $5e29: $ff
    rst $38                                       ; $5e2a: $ff
    rst $38                                       ; $5e2b: $ff
    rst $38                                       ; $5e2c: $ff
    rst $38                                       ; $5e2d: $ff
    rst $38                                       ; $5e2e: $ff
    rst $38                                       ; $5e2f: $ff
    rst $38                                       ; $5e30: $ff
    rst $38                                       ; $5e31: $ff
    rst $38                                       ; $5e32: $ff
    rst $38                                       ; $5e33: $ff
    rst $38                                       ; $5e34: $ff
    rst $38                                       ; $5e35: $ff
    rst $38                                       ; $5e36: $ff
    rst $38                                       ; $5e37: $ff
    rst $38                                       ; $5e38: $ff
    rst $38                                       ; $5e39: $ff
    rst $38                                       ; $5e3a: $ff
    rst $38                                       ; $5e3b: $ff
    rst $38                                       ; $5e3c: $ff
    rst $38                                       ; $5e3d: $ff
    rst $38                                       ; $5e3e: $ff
    rst $38                                       ; $5e3f: $ff
    rst $38                                       ; $5e40: $ff
    rst $38                                       ; $5e41: $ff
    rst $38                                       ; $5e42: $ff
    rst $38                                       ; $5e43: $ff
    rst $38                                       ; $5e44: $ff
    rst $38                                       ; $5e45: $ff
    rst $38                                       ; $5e46: $ff
    rst $38                                       ; $5e47: $ff
    rst $38                                       ; $5e48: $ff
    rst $38                                       ; $5e49: $ff
    rst $38                                       ; $5e4a: $ff
    rst $38                                       ; $5e4b: $ff
    rst $38                                       ; $5e4c: $ff
    rst $38                                       ; $5e4d: $ff
    rst $38                                       ; $5e4e: $ff
    rst $38                                       ; $5e4f: $ff
    rst $38                                       ; $5e50: $ff
    rst $38                                       ; $5e51: $ff
    rst $38                                       ; $5e52: $ff
    rst $38                                       ; $5e53: $ff
    rst $38                                       ; $5e54: $ff
    rst $38                                       ; $5e55: $ff
    rst $38                                       ; $5e56: $ff
    rst $38                                       ; $5e57: $ff
    rst $38                                       ; $5e58: $ff
    rst $38                                       ; $5e59: $ff
    rst $38                                       ; $5e5a: $ff
    rst $38                                       ; $5e5b: $ff
    rst $38                                       ; $5e5c: $ff
    rst $38                                       ; $5e5d: $ff
    rst $38                                       ; $5e5e: $ff
    rst $38                                       ; $5e5f: $ff
    rst $38                                       ; $5e60: $ff
    rst $38                                       ; $5e61: $ff
    rst $38                                       ; $5e62: $ff
    rst $38                                       ; $5e63: $ff
    rst $38                                       ; $5e64: $ff
    rst $38                                       ; $5e65: $ff
    rst $38                                       ; $5e66: $ff
    rst $38                                       ; $5e67: $ff
    rst $38                                       ; $5e68: $ff
    rst $38                                       ; $5e69: $ff
    rst $38                                       ; $5e6a: $ff
    rst $38                                       ; $5e6b: $ff
    rst $38                                       ; $5e6c: $ff
    rst $38                                       ; $5e6d: $ff
    rst $38                                       ; $5e6e: $ff
    rst $38                                       ; $5e6f: $ff
    rst $38                                       ; $5e70: $ff
    rst $38                                       ; $5e71: $ff
    rst $38                                       ; $5e72: $ff
    rst $38                                       ; $5e73: $ff
    rst $38                                       ; $5e74: $ff
    rst $38                                       ; $5e75: $ff
    rst $38                                       ; $5e76: $ff
    rst $38                                       ; $5e77: $ff
    rst $38                                       ; $5e78: $ff
    rst $38                                       ; $5e79: $ff
    rst $38                                       ; $5e7a: $ff
    rst $38                                       ; $5e7b: $ff
    rst $38                                       ; $5e7c: $ff
    rst $38                                       ; $5e7d: $ff
    rst $38                                       ; $5e7e: $ff
    rst $38                                       ; $5e7f: $ff
    rst $38                                       ; $5e80: $ff
    rst $38                                       ; $5e81: $ff
    rst $38                                       ; $5e82: $ff
    rst $38                                       ; $5e83: $ff
    rst $38                                       ; $5e84: $ff
    rst $38                                       ; $5e85: $ff
    rst $38                                       ; $5e86: $ff
    rst $38                                       ; $5e87: $ff
    rst $38                                       ; $5e88: $ff
    rst $38                                       ; $5e89: $ff
    rst $38                                       ; $5e8a: $ff
    rst $38                                       ; $5e8b: $ff
    rst $38                                       ; $5e8c: $ff
    rst $38                                       ; $5e8d: $ff
    rst $38                                       ; $5e8e: $ff
    rst $38                                       ; $5e8f: $ff
    rst $38                                       ; $5e90: $ff
    rst $38                                       ; $5e91: $ff
    rst $38                                       ; $5e92: $ff
    rst $38                                       ; $5e93: $ff
    rst $38                                       ; $5e94: $ff
    rst $38                                       ; $5e95: $ff
    rst $38                                       ; $5e96: $ff
    rst $38                                       ; $5e97: $ff
    rst $38                                       ; $5e98: $ff
    rst $38                                       ; $5e99: $ff
    rst $38                                       ; $5e9a: $ff
    rst $38                                       ; $5e9b: $ff
    rst $38                                       ; $5e9c: $ff
    rst $38                                       ; $5e9d: $ff
    rst $38                                       ; $5e9e: $ff
    rst $38                                       ; $5e9f: $ff
    rst $38                                       ; $5ea0: $ff
    rst $38                                       ; $5ea1: $ff
    rst $38                                       ; $5ea2: $ff
    rst $38                                       ; $5ea3: $ff
    rst $38                                       ; $5ea4: $ff
    rst $38                                       ; $5ea5: $ff
    rst $38                                       ; $5ea6: $ff
    rst $38                                       ; $5ea7: $ff
    rst $38                                       ; $5ea8: $ff
    rst $38                                       ; $5ea9: $ff
    rst $38                                       ; $5eaa: $ff
    rst $38                                       ; $5eab: $ff
    rst $38                                       ; $5eac: $ff
    rst $38                                       ; $5ead: $ff
    rst $38                                       ; $5eae: $ff
    rst $38                                       ; $5eaf: $ff
    rst $38                                       ; $5eb0: $ff
    rst $38                                       ; $5eb1: $ff
    rst $38                                       ; $5eb2: $ff
    rst $38                                       ; $5eb3: $ff
    rst $38                                       ; $5eb4: $ff
    rst $38                                       ; $5eb5: $ff
    rst $38                                       ; $5eb6: $ff
    rst $38                                       ; $5eb7: $ff
    rst $38                                       ; $5eb8: $ff
    rst $38                                       ; $5eb9: $ff
    rst $38                                       ; $5eba: $ff
    rst $38                                       ; $5ebb: $ff
    rst $38                                       ; $5ebc: $ff
    rst $38                                       ; $5ebd: $ff
    rst $38                                       ; $5ebe: $ff
    rst $38                                       ; $5ebf: $ff
    rst $38                                       ; $5ec0: $ff
    rst $38                                       ; $5ec1: $ff
    rst $38                                       ; $5ec2: $ff
    rst $38                                       ; $5ec3: $ff
    rst $38                                       ; $5ec4: $ff
    rst $38                                       ; $5ec5: $ff
    rst $38                                       ; $5ec6: $ff
    rst $38                                       ; $5ec7: $ff
    rst $38                                       ; $5ec8: $ff
    rst $38                                       ; $5ec9: $ff
    rst $38                                       ; $5eca: $ff
    rst $38                                       ; $5ecb: $ff
    rst $38                                       ; $5ecc: $ff
    rst $38                                       ; $5ecd: $ff
    rst $38                                       ; $5ece: $ff
    rst $38                                       ; $5ecf: $ff
    rst $38                                       ; $5ed0: $ff
    rst $38                                       ; $5ed1: $ff
    rst $38                                       ; $5ed2: $ff
    rst $38                                       ; $5ed3: $ff
    rst $38                                       ; $5ed4: $ff
    rst $38                                       ; $5ed5: $ff
    rst $38                                       ; $5ed6: $ff
    rst $38                                       ; $5ed7: $ff
    rst $38                                       ; $5ed8: $ff
    rst $38                                       ; $5ed9: $ff
    rst $38                                       ; $5eda: $ff
    rst $38                                       ; $5edb: $ff
    rst $38                                       ; $5edc: $ff
    rst $38                                       ; $5edd: $ff
    rst $38                                       ; $5ede: $ff
    rst $38                                       ; $5edf: $ff
    rst $38                                       ; $5ee0: $ff
    rst $38                                       ; $5ee1: $ff
    rst $38                                       ; $5ee2: $ff
    rst $38                                       ; $5ee3: $ff
    rst $38                                       ; $5ee4: $ff
    rst $38                                       ; $5ee5: $ff
    rst $38                                       ; $5ee6: $ff
    rst $38                                       ; $5ee7: $ff
    rst $38                                       ; $5ee8: $ff
    rst $38                                       ; $5ee9: $ff
    rst $38                                       ; $5eea: $ff
    rst $38                                       ; $5eeb: $ff
    rst $38                                       ; $5eec: $ff
    rst $38                                       ; $5eed: $ff
    rst $38                                       ; $5eee: $ff
    rst $38                                       ; $5eef: $ff
    rst $38                                       ; $5ef0: $ff
    rst $38                                       ; $5ef1: $ff
    rst $38                                       ; $5ef2: $ff
    rst $38                                       ; $5ef3: $ff
    rst $38                                       ; $5ef4: $ff
    rst $38                                       ; $5ef5: $ff
    rst $38                                       ; $5ef6: $ff
    rst $38                                       ; $5ef7: $ff
    rst $38                                       ; $5ef8: $ff
    rst $38                                       ; $5ef9: $ff
    rst $38                                       ; $5efa: $ff
    rst $38                                       ; $5efb: $ff
    rst $38                                       ; $5efc: $ff
    rst $38                                       ; $5efd: $ff
    rst $38                                       ; $5efe: $ff
    rst $38                                       ; $5eff: $ff
    rst $38                                       ; $5f00: $ff
    rst $38                                       ; $5f01: $ff
    rst $38                                       ; $5f02: $ff
    rst $38                                       ; $5f03: $ff
    rst $38                                       ; $5f04: $ff
    rst $38                                       ; $5f05: $ff
    rst $38                                       ; $5f06: $ff
    rst $38                                       ; $5f07: $ff
    rst $38                                       ; $5f08: $ff
    rst $38                                       ; $5f09: $ff
    rst $38                                       ; $5f0a: $ff
    rst $38                                       ; $5f0b: $ff
    rst $38                                       ; $5f0c: $ff
    rst $38                                       ; $5f0d: $ff
    rst $38                                       ; $5f0e: $ff
    rst $38                                       ; $5f0f: $ff
    rst $38                                       ; $5f10: $ff
    rst $38                                       ; $5f11: $ff
    rst $38                                       ; $5f12: $ff
    rst $38                                       ; $5f13: $ff
    rst $38                                       ; $5f14: $ff
    rst $38                                       ; $5f15: $ff
    rst $38                                       ; $5f16: $ff
    rst $38                                       ; $5f17: $ff
    rst $38                                       ; $5f18: $ff
    rst $38                                       ; $5f19: $ff
    rst $38                                       ; $5f1a: $ff
    rst $38                                       ; $5f1b: $ff
    rst $38                                       ; $5f1c: $ff
    rst $38                                       ; $5f1d: $ff
    rst $38                                       ; $5f1e: $ff
    rst $38                                       ; $5f1f: $ff
    rst $38                                       ; $5f20: $ff
    rst $38                                       ; $5f21: $ff
    rst $38                                       ; $5f22: $ff
    rst $38                                       ; $5f23: $ff
    rst $38                                       ; $5f24: $ff
    rst $38                                       ; $5f25: $ff
    rst $38                                       ; $5f26: $ff
    rst $38                                       ; $5f27: $ff
    rst $38                                       ; $5f28: $ff
    rst $38                                       ; $5f29: $ff
    rst $38                                       ; $5f2a: $ff
    rst $38                                       ; $5f2b: $ff
    rst $38                                       ; $5f2c: $ff
    rst $38                                       ; $5f2d: $ff
    rst $38                                       ; $5f2e: $ff
    rst $38                                       ; $5f2f: $ff
    rst $38                                       ; $5f30: $ff
    rst $38                                       ; $5f31: $ff
    rst $38                                       ; $5f32: $ff
    rst $38                                       ; $5f33: $ff
    rst $38                                       ; $5f34: $ff
    rst $38                                       ; $5f35: $ff
    rst $38                                       ; $5f36: $ff
    rst $38                                       ; $5f37: $ff
    rst $38                                       ; $5f38: $ff
    rst $38                                       ; $5f39: $ff
    rst $38                                       ; $5f3a: $ff
    rst $38                                       ; $5f3b: $ff
    rst $38                                       ; $5f3c: $ff
    rst $38                                       ; $5f3d: $ff
    rst $38                                       ; $5f3e: $ff
    rst $38                                       ; $5f3f: $ff
    rst $38                                       ; $5f40: $ff
    rst $38                                       ; $5f41: $ff
    rst $38                                       ; $5f42: $ff
    rst $38                                       ; $5f43: $ff
    rst $38                                       ; $5f44: $ff
    rst $38                                       ; $5f45: $ff
    rst $38                                       ; $5f46: $ff
    rst $38                                       ; $5f47: $ff
    rst $38                                       ; $5f48: $ff
    rst $38                                       ; $5f49: $ff
    rst $38                                       ; $5f4a: $ff
    rst $38                                       ; $5f4b: $ff
    rst $38                                       ; $5f4c: $ff
    rst $38                                       ; $5f4d: $ff
    rst $38                                       ; $5f4e: $ff
    rst $38                                       ; $5f4f: $ff
    rst $38                                       ; $5f50: $ff
    rst $38                                       ; $5f51: $ff
    rst $38                                       ; $5f52: $ff
    rst $38                                       ; $5f53: $ff
    rst $38                                       ; $5f54: $ff
    rst $38                                       ; $5f55: $ff
    rst $38                                       ; $5f56: $ff
    rst $38                                       ; $5f57: $ff
    rst $38                                       ; $5f58: $ff
    rst $38                                       ; $5f59: $ff
    rst $38                                       ; $5f5a: $ff
    rst $38                                       ; $5f5b: $ff
    rst $38                                       ; $5f5c: $ff
    rst $38                                       ; $5f5d: $ff
    rst $38                                       ; $5f5e: $ff
    rst $38                                       ; $5f5f: $ff
    rst $38                                       ; $5f60: $ff
    rst $38                                       ; $5f61: $ff
    rst $38                                       ; $5f62: $ff
    rst $38                                       ; $5f63: $ff
    rst $38                                       ; $5f64: $ff
    rst $38                                       ; $5f65: $ff
    rst $38                                       ; $5f66: $ff
    rst $38                                       ; $5f67: $ff
    rst $38                                       ; $5f68: $ff
    rst $38                                       ; $5f69: $ff
    rst $38                                       ; $5f6a: $ff
    rst $38                                       ; $5f6b: $ff
    rst $38                                       ; $5f6c: $ff
    rst $38                                       ; $5f6d: $ff
    rst $38                                       ; $5f6e: $ff
    rst $38                                       ; $5f6f: $ff
    rst $38                                       ; $5f70: $ff
    rst $38                                       ; $5f71: $ff
    rst $38                                       ; $5f72: $ff
    rst $38                                       ; $5f73: $ff
    rst $38                                       ; $5f74: $ff
    rst $38                                       ; $5f75: $ff
    rst $38                                       ; $5f76: $ff
    rst $38                                       ; $5f77: $ff
    rst $38                                       ; $5f78: $ff
    rst $38                                       ; $5f79: $ff
    rst $38                                       ; $5f7a: $ff
    rst $38                                       ; $5f7b: $ff
    rst $38                                       ; $5f7c: $ff
    rst $38                                       ; $5f7d: $ff
    rst $38                                       ; $5f7e: $ff
    rst $38                                       ; $5f7f: $ff
    rst $38                                       ; $5f80: $ff
    rst $38                                       ; $5f81: $ff
    rst $38                                       ; $5f82: $ff
    rst $38                                       ; $5f83: $ff
    rst $38                                       ; $5f84: $ff
    rst $38                                       ; $5f85: $ff
    rst $38                                       ; $5f86: $ff
    rst $38                                       ; $5f87: $ff
    rst $38                                       ; $5f88: $ff
    rst $38                                       ; $5f89: $ff
    rst $38                                       ; $5f8a: $ff
    rst $38                                       ; $5f8b: $ff
    rst $38                                       ; $5f8c: $ff
    rst $38                                       ; $5f8d: $ff
    rst $38                                       ; $5f8e: $ff
    rst $38                                       ; $5f8f: $ff
    rst $38                                       ; $5f90: $ff
    rst $38                                       ; $5f91: $ff
    rst $38                                       ; $5f92: $ff
    rst $38                                       ; $5f93: $ff
    rst $38                                       ; $5f94: $ff
    rst $38                                       ; $5f95: $ff
    rst $38                                       ; $5f96: $ff
    rst $38                                       ; $5f97: $ff
    rst $38                                       ; $5f98: $ff
    rst $38                                       ; $5f99: $ff
    rst $38                                       ; $5f9a: $ff
    rst $38                                       ; $5f9b: $ff
    rst $38                                       ; $5f9c: $ff
    rst $38                                       ; $5f9d: $ff
    rst $38                                       ; $5f9e: $ff
    rst $38                                       ; $5f9f: $ff
    rst $38                                       ; $5fa0: $ff
    rst $38                                       ; $5fa1: $ff
    rst $38                                       ; $5fa2: $ff
    rst $38                                       ; $5fa3: $ff
    rst $38                                       ; $5fa4: $ff
    rst $38                                       ; $5fa5: $ff
    rst $38                                       ; $5fa6: $ff
    rst $38                                       ; $5fa7: $ff
    rst $38                                       ; $5fa8: $ff
    rst $38                                       ; $5fa9: $ff
    rst $38                                       ; $5faa: $ff
    rst $38                                       ; $5fab: $ff
    rst $38                                       ; $5fac: $ff
    rst $38                                       ; $5fad: $ff
    rst $38                                       ; $5fae: $ff
    rst $38                                       ; $5faf: $ff
    rst $38                                       ; $5fb0: $ff
    rst $38                                       ; $5fb1: $ff
    rst $38                                       ; $5fb2: $ff
    rst $38                                       ; $5fb3: $ff
    rst $38                                       ; $5fb4: $ff
    rst $38                                       ; $5fb5: $ff
    rst $38                                       ; $5fb6: $ff
    rst $38                                       ; $5fb7: $ff
    rst $38                                       ; $5fb8: $ff
    rst $38                                       ; $5fb9: $ff
    rst $38                                       ; $5fba: $ff
    rst $38                                       ; $5fbb: $ff
    rst $38                                       ; $5fbc: $ff
    rst $38                                       ; $5fbd: $ff
    rst $38                                       ; $5fbe: $ff
    rst $38                                       ; $5fbf: $ff
    rst $38                                       ; $5fc0: $ff
    rst $38                                       ; $5fc1: $ff
    rst $38                                       ; $5fc2: $ff
    rst $38                                       ; $5fc3: $ff
    rst $38                                       ; $5fc4: $ff
    rst $38                                       ; $5fc5: $ff
    rst $38                                       ; $5fc6: $ff
    rst $38                                       ; $5fc7: $ff
    rst $38                                       ; $5fc8: $ff
    rst $38                                       ; $5fc9: $ff
    rst $38                                       ; $5fca: $ff
    rst $38                                       ; $5fcb: $ff
    rst $38                                       ; $5fcc: $ff
    rst $38                                       ; $5fcd: $ff
    rst $38                                       ; $5fce: $ff
    rst $38                                       ; $5fcf: $ff
    rst $38                                       ; $5fd0: $ff
    rst $38                                       ; $5fd1: $ff
    rst $38                                       ; $5fd2: $ff
    rst $38                                       ; $5fd3: $ff
    rst $38                                       ; $5fd4: $ff
    rst $38                                       ; $5fd5: $ff
    rst $38                                       ; $5fd6: $ff
    rst $38                                       ; $5fd7: $ff
    rst $38                                       ; $5fd8: $ff
    rst $38                                       ; $5fd9: $ff
    rst $38                                       ; $5fda: $ff
    rst $38                                       ; $5fdb: $ff
    rst $38                                       ; $5fdc: $ff
    rst $38                                       ; $5fdd: $ff
    rst $38                                       ; $5fde: $ff
    rst $38                                       ; $5fdf: $ff
    rst $38                                       ; $5fe0: $ff
    rst $38                                       ; $5fe1: $ff
    rst $38                                       ; $5fe2: $ff
    rst $38                                       ; $5fe3: $ff
    rst $38                                       ; $5fe4: $ff
    rst $38                                       ; $5fe5: $ff
    rst $38                                       ; $5fe6: $ff
    rst $38                                       ; $5fe7: $ff
    rst $38                                       ; $5fe8: $ff
    rst $38                                       ; $5fe9: $ff
    rst $38                                       ; $5fea: $ff
    rst $38                                       ; $5feb: $ff
    rst $38                                       ; $5fec: $ff
    rst $38                                       ; $5fed: $ff
    rst $38                                       ; $5fee: $ff
    rst $38                                       ; $5fef: $ff
    rst $38                                       ; $5ff0: $ff
    rst $38                                       ; $5ff1: $ff
    rst $38                                       ; $5ff2: $ff
    rst $38                                       ; $5ff3: $ff
    rst $38                                       ; $5ff4: $ff
    rst $38                                       ; $5ff5: $ff
    rst $38                                       ; $5ff6: $ff
    rst $38                                       ; $5ff7: $ff
    rst $38                                       ; $5ff8: $ff
    rst $38                                       ; $5ff9: $ff
    rst $38                                       ; $5ffa: $ff
    rst $38                                       ; $5ffb: $ff
    rst $38                                       ; $5ffc: $ff
    rst $38                                       ; $5ffd: $ff
    rst $38                                       ; $5ffe: $ff
    rst $38                                       ; $5fff: $ff
    rst $38                                       ; $6000: $ff
    rst $38                                       ; $6001: $ff
    rst $38                                       ; $6002: $ff
    rst $38                                       ; $6003: $ff
    rst $38                                       ; $6004: $ff
    rst $38                                       ; $6005: $ff
    rst $38                                       ; $6006: $ff
    rst $38                                       ; $6007: $ff
    rst $38                                       ; $6008: $ff
    rst $38                                       ; $6009: $ff
    rst $38                                       ; $600a: $ff
    rst $38                                       ; $600b: $ff
    rst $38                                       ; $600c: $ff
    rst $38                                       ; $600d: $ff
    rst $38                                       ; $600e: $ff
    rst $38                                       ; $600f: $ff
    rst $38                                       ; $6010: $ff
    rst $38                                       ; $6011: $ff
    rst $38                                       ; $6012: $ff
    rst $38                                       ; $6013: $ff
    rst $38                                       ; $6014: $ff
    rst $38                                       ; $6015: $ff
    rst $38                                       ; $6016: $ff
    rst $38                                       ; $6017: $ff
    rst $38                                       ; $6018: $ff
    rst $38                                       ; $6019: $ff
    rst $38                                       ; $601a: $ff
    rst $38                                       ; $601b: $ff
    rst $38                                       ; $601c: $ff
    rst $38                                       ; $601d: $ff
    rst $38                                       ; $601e: $ff
    rst $38                                       ; $601f: $ff
    rst $38                                       ; $6020: $ff
    rst $38                                       ; $6021: $ff
    rst $38                                       ; $6022: $ff
    rst $38                                       ; $6023: $ff
    rst $38                                       ; $6024: $ff
    rst $38                                       ; $6025: $ff
    rst $38                                       ; $6026: $ff
    rst $38                                       ; $6027: $ff
    rst $38                                       ; $6028: $ff
    rst $38                                       ; $6029: $ff
    rst $38                                       ; $602a: $ff
    rst $38                                       ; $602b: $ff
    rst $38                                       ; $602c: $ff
    rst $38                                       ; $602d: $ff
    rst $38                                       ; $602e: $ff
    rst $38                                       ; $602f: $ff
    rst $38                                       ; $6030: $ff
    rst $38                                       ; $6031: $ff
    rst $38                                       ; $6032: $ff
    rst $38                                       ; $6033: $ff
    rst $38                                       ; $6034: $ff
    rst $38                                       ; $6035: $ff
    rst $38                                       ; $6036: $ff
    rst $38                                       ; $6037: $ff
    rst $38                                       ; $6038: $ff
    rst $38                                       ; $6039: $ff
    rst $38                                       ; $603a: $ff
    rst $38                                       ; $603b: $ff
    rst $38                                       ; $603c: $ff
    rst $38                                       ; $603d: $ff
    rst $38                                       ; $603e: $ff
    rst $38                                       ; $603f: $ff
    rst $38                                       ; $6040: $ff
    rst $38                                       ; $6041: $ff
    rst $38                                       ; $6042: $ff
    rst $38                                       ; $6043: $ff
    rst $38                                       ; $6044: $ff
    rst $38                                       ; $6045: $ff
    rst $38                                       ; $6046: $ff
    rst $38                                       ; $6047: $ff
    rst $38                                       ; $6048: $ff
    rst $38                                       ; $6049: $ff
    rst $38                                       ; $604a: $ff
    rst $38                                       ; $604b: $ff
    rst $38                                       ; $604c: $ff
    rst $38                                       ; $604d: $ff
    rst $38                                       ; $604e: $ff
    rst $38                                       ; $604f: $ff
    rst $38                                       ; $6050: $ff
    rst $38                                       ; $6051: $ff
    rst $38                                       ; $6052: $ff
    rst $38                                       ; $6053: $ff
    rst $38                                       ; $6054: $ff
    rst $38                                       ; $6055: $ff
    rst $38                                       ; $6056: $ff
    rst $38                                       ; $6057: $ff
    rst $38                                       ; $6058: $ff
    rst $38                                       ; $6059: $ff
    rst $38                                       ; $605a: $ff
    rst $38                                       ; $605b: $ff
    rst $38                                       ; $605c: $ff
    rst $38                                       ; $605d: $ff
    rst $38                                       ; $605e: $ff
    rst $38                                       ; $605f: $ff
    rst $38                                       ; $6060: $ff
    rst $38                                       ; $6061: $ff
    rst $38                                       ; $6062: $ff
    rst $38                                       ; $6063: $ff
    rst $38                                       ; $6064: $ff
    rst $38                                       ; $6065: $ff
    rst $38                                       ; $6066: $ff
    rst $38                                       ; $6067: $ff
    rst $38                                       ; $6068: $ff
    rst $38                                       ; $6069: $ff
    rst $38                                       ; $606a: $ff
    rst $38                                       ; $606b: $ff
    rst $38                                       ; $606c: $ff
    rst $38                                       ; $606d: $ff
    rst $38                                       ; $606e: $ff
    rst $38                                       ; $606f: $ff
    rst $38                                       ; $6070: $ff
    rst $38                                       ; $6071: $ff
    rst $38                                       ; $6072: $ff
    rst $38                                       ; $6073: $ff
    rst $38                                       ; $6074: $ff
    rst $38                                       ; $6075: $ff
    rst $38                                       ; $6076: $ff
    rst $38                                       ; $6077: $ff
    rst $38                                       ; $6078: $ff
    rst $38                                       ; $6079: $ff
    rst $38                                       ; $607a: $ff
    rst $38                                       ; $607b: $ff
    rst $38                                       ; $607c: $ff
    rst $38                                       ; $607d: $ff
    rst $38                                       ; $607e: $ff
    rst $38                                       ; $607f: $ff
    rst $38                                       ; $6080: $ff
    rst $38                                       ; $6081: $ff
    rst $38                                       ; $6082: $ff
    rst $38                                       ; $6083: $ff
    rst $38                                       ; $6084: $ff
    rst $38                                       ; $6085: $ff
    rst $38                                       ; $6086: $ff
    rst $38                                       ; $6087: $ff
    rst $38                                       ; $6088: $ff
    rst $38                                       ; $6089: $ff
    rst $38                                       ; $608a: $ff
    rst $38                                       ; $608b: $ff
    rst $38                                       ; $608c: $ff
    rst $38                                       ; $608d: $ff
    rst $38                                       ; $608e: $ff
    rst $38                                       ; $608f: $ff
    rst $38                                       ; $6090: $ff
    rst $38                                       ; $6091: $ff
    rst $38                                       ; $6092: $ff
    rst $38                                       ; $6093: $ff
    rst $38                                       ; $6094: $ff
    rst $38                                       ; $6095: $ff
    rst $38                                       ; $6096: $ff
    rst $38                                       ; $6097: $ff
    rst $38                                       ; $6098: $ff
    rst $38                                       ; $6099: $ff
    rst $38                                       ; $609a: $ff
    rst $38                                       ; $609b: $ff
    rst $38                                       ; $609c: $ff
    rst $38                                       ; $609d: $ff
    rst $38                                       ; $609e: $ff
    rst $38                                       ; $609f: $ff
    rst $38                                       ; $60a0: $ff
    rst $38                                       ; $60a1: $ff
    rst $38                                       ; $60a2: $ff
    rst $38                                       ; $60a3: $ff
    rst $38                                       ; $60a4: $ff
    rst $38                                       ; $60a5: $ff
    rst $38                                       ; $60a6: $ff
    rst $38                                       ; $60a7: $ff
    rst $38                                       ; $60a8: $ff
    rst $38                                       ; $60a9: $ff
    rst $38                                       ; $60aa: $ff
    rst $38                                       ; $60ab: $ff
    rst $38                                       ; $60ac: $ff
    rst $38                                       ; $60ad: $ff
    rst $38                                       ; $60ae: $ff
    rst $38                                       ; $60af: $ff
    rst $38                                       ; $60b0: $ff
    rst $38                                       ; $60b1: $ff
    rst $38                                       ; $60b2: $ff
    rst $38                                       ; $60b3: $ff
    rst $38                                       ; $60b4: $ff
    rst $38                                       ; $60b5: $ff
    rst $38                                       ; $60b6: $ff
    rst $38                                       ; $60b7: $ff
    rst $38                                       ; $60b8: $ff
    rst $38                                       ; $60b9: $ff
    rst $38                                       ; $60ba: $ff
    rst $38                                       ; $60bb: $ff
    rst $38                                       ; $60bc: $ff
    rst $38                                       ; $60bd: $ff
    rst $38                                       ; $60be: $ff
    rst $38                                       ; $60bf: $ff
    rst $38                                       ; $60c0: $ff
    rst $38                                       ; $60c1: $ff
    rst $38                                       ; $60c2: $ff
    rst $38                                       ; $60c3: $ff
    rst $38                                       ; $60c4: $ff
    rst $38                                       ; $60c5: $ff
    rst $38                                       ; $60c6: $ff
    rst $38                                       ; $60c7: $ff
    rst $38                                       ; $60c8: $ff
    rst $38                                       ; $60c9: $ff
    rst $38                                       ; $60ca: $ff
    rst $38                                       ; $60cb: $ff
    rst $38                                       ; $60cc: $ff
    rst $38                                       ; $60cd: $ff
    rst $38                                       ; $60ce: $ff
    rst $38                                       ; $60cf: $ff
    rst $38                                       ; $60d0: $ff
    rst $38                                       ; $60d1: $ff
    rst $38                                       ; $60d2: $ff
    rst $38                                       ; $60d3: $ff
    rst $38                                       ; $60d4: $ff
    rst $38                                       ; $60d5: $ff
    rst $38                                       ; $60d6: $ff
    rst $38                                       ; $60d7: $ff
    rst $38                                       ; $60d8: $ff
    rst $38                                       ; $60d9: $ff
    rst $38                                       ; $60da: $ff
    rst $38                                       ; $60db: $ff
    rst $38                                       ; $60dc: $ff
    rst $38                                       ; $60dd: $ff
    rst $38                                       ; $60de: $ff
    rst $38                                       ; $60df: $ff
    rst $38                                       ; $60e0: $ff
    rst $38                                       ; $60e1: $ff
    rst $38                                       ; $60e2: $ff
    rst $38                                       ; $60e3: $ff
    rst $38                                       ; $60e4: $ff
    rst $38                                       ; $60e5: $ff
    rst $38                                       ; $60e6: $ff
    rst $38                                       ; $60e7: $ff
    rst $38                                       ; $60e8: $ff
    rst $38                                       ; $60e9: $ff
    rst $38                                       ; $60ea: $ff
    rst $38                                       ; $60eb: $ff
    rst $38                                       ; $60ec: $ff
    rst $38                                       ; $60ed: $ff
    rst $38                                       ; $60ee: $ff
    rst $38                                       ; $60ef: $ff
    rst $38                                       ; $60f0: $ff
    rst $38                                       ; $60f1: $ff
    rst $38                                       ; $60f2: $ff
    rst $38                                       ; $60f3: $ff
    rst $38                                       ; $60f4: $ff
    rst $38                                       ; $60f5: $ff
    rst $38                                       ; $60f6: $ff
    rst $38                                       ; $60f7: $ff
    rst $38                                       ; $60f8: $ff
    rst $38                                       ; $60f9: $ff
    rst $38                                       ; $60fa: $ff
    rst $38                                       ; $60fb: $ff
    rst $38                                       ; $60fc: $ff
    rst $38                                       ; $60fd: $ff
    rst $38                                       ; $60fe: $ff
    rst $38                                       ; $60ff: $ff
    rst $38                                       ; $6100: $ff
    rst $38                                       ; $6101: $ff
    rst $38                                       ; $6102: $ff
    rst $38                                       ; $6103: $ff
    rst $38                                       ; $6104: $ff
    rst $38                                       ; $6105: $ff
    rst $38                                       ; $6106: $ff
    rst $38                                       ; $6107: $ff
    rst $38                                       ; $6108: $ff
    rst $38                                       ; $6109: $ff
    rst $38                                       ; $610a: $ff
    rst $38                                       ; $610b: $ff
    rst $38                                       ; $610c: $ff
    rst $38                                       ; $610d: $ff
    rst $38                                       ; $610e: $ff
    rst $38                                       ; $610f: $ff
    rst $38                                       ; $6110: $ff
    rst $38                                       ; $6111: $ff
    rst $38                                       ; $6112: $ff
    rst $38                                       ; $6113: $ff
    rst $38                                       ; $6114: $ff
    rst $38                                       ; $6115: $ff
    rst $38                                       ; $6116: $ff
    rst $38                                       ; $6117: $ff
    rst $38                                       ; $6118: $ff
    rst $38                                       ; $6119: $ff
    rst $38                                       ; $611a: $ff
    rst $38                                       ; $611b: $ff
    rst $38                                       ; $611c: $ff
    rst $38                                       ; $611d: $ff
    rst $38                                       ; $611e: $ff
    rst $38                                       ; $611f: $ff
    rst $38                                       ; $6120: $ff
    rst $38                                       ; $6121: $ff
    rst $38                                       ; $6122: $ff
    rst $38                                       ; $6123: $ff
    rst $38                                       ; $6124: $ff
    rst $38                                       ; $6125: $ff
    rst $38                                       ; $6126: $ff
    rst $38                                       ; $6127: $ff
    rst $38                                       ; $6128: $ff
    rst $38                                       ; $6129: $ff
    rst $38                                       ; $612a: $ff
    rst $38                                       ; $612b: $ff
    rst $38                                       ; $612c: $ff
    rst $38                                       ; $612d: $ff
    rst $38                                       ; $612e: $ff
    rst $38                                       ; $612f: $ff
    rst $38                                       ; $6130: $ff
    rst $38                                       ; $6131: $ff
    rst $38                                       ; $6132: $ff
    rst $38                                       ; $6133: $ff
    rst $38                                       ; $6134: $ff
    rst $38                                       ; $6135: $ff
    rst $38                                       ; $6136: $ff
    rst $38                                       ; $6137: $ff
    rst $38                                       ; $6138: $ff
    rst $38                                       ; $6139: $ff
    rst $38                                       ; $613a: $ff
    rst $38                                       ; $613b: $ff
    rst $38                                       ; $613c: $ff
    rst $38                                       ; $613d: $ff
    rst $38                                       ; $613e: $ff
    rst $38                                       ; $613f: $ff
    rst $38                                       ; $6140: $ff
    rst $38                                       ; $6141: $ff
    rst $38                                       ; $6142: $ff
    rst $38                                       ; $6143: $ff
    rst $38                                       ; $6144: $ff
    rst $38                                       ; $6145: $ff
    rst $38                                       ; $6146: $ff
    rst $38                                       ; $6147: $ff
    rst $38                                       ; $6148: $ff
    rst $38                                       ; $6149: $ff
    rst $38                                       ; $614a: $ff
    rst $38                                       ; $614b: $ff
    rst $38                                       ; $614c: $ff
    rst $38                                       ; $614d: $ff

Call_003_614e:
    rst $38                                       ; $614e: $ff
    rst $38                                       ; $614f: $ff
    rst $38                                       ; $6150: $ff
    rst $38                                       ; $6151: $ff
    rst $38                                       ; $6152: $ff
    rst $38                                       ; $6153: $ff
    rst $38                                       ; $6154: $ff
    rst $38                                       ; $6155: $ff
    rst $38                                       ; $6156: $ff
    rst $38                                       ; $6157: $ff
    rst $38                                       ; $6158: $ff
    rst $38                                       ; $6159: $ff
    rst $38                                       ; $615a: $ff
    rst $38                                       ; $615b: $ff
    rst $38                                       ; $615c: $ff
    rst $38                                       ; $615d: $ff
    rst $38                                       ; $615e: $ff
    rst $38                                       ; $615f: $ff
    rst $38                                       ; $6160: $ff
    rst $38                                       ; $6161: $ff
    rst $38                                       ; $6162: $ff
    rst $38                                       ; $6163: $ff
    rst $38                                       ; $6164: $ff
    rst $38                                       ; $6165: $ff
    rst $38                                       ; $6166: $ff
    rst $38                                       ; $6167: $ff
    rst $38                                       ; $6168: $ff
    rst $38                                       ; $6169: $ff
    rst $38                                       ; $616a: $ff
    rst $38                                       ; $616b: $ff
    rst $38                                       ; $616c: $ff
    rst $38                                       ; $616d: $ff
    rst $38                                       ; $616e: $ff
    rst $38                                       ; $616f: $ff
    rst $38                                       ; $6170: $ff
    rst $38                                       ; $6171: $ff
    rst $38                                       ; $6172: $ff
    rst $38                                       ; $6173: $ff
    rst $38                                       ; $6174: $ff
    rst $38                                       ; $6175: $ff
    rst $38                                       ; $6176: $ff
    rst $38                                       ; $6177: $ff
    rst $38                                       ; $6178: $ff
    rst $38                                       ; $6179: $ff
    rst $38                                       ; $617a: $ff
    rst $38                                       ; $617b: $ff
    rst $38                                       ; $617c: $ff
    rst $38                                       ; $617d: $ff
    rst $38                                       ; $617e: $ff
    rst $38                                       ; $617f: $ff
    rst $38                                       ; $6180: $ff
    rst $38                                       ; $6181: $ff
    rst $38                                       ; $6182: $ff
    rst $38                                       ; $6183: $ff
    rst $38                                       ; $6184: $ff
    rst $38                                       ; $6185: $ff
    rst $38                                       ; $6186: $ff
    rst $38                                       ; $6187: $ff
    rst $38                                       ; $6188: $ff
    rst $38                                       ; $6189: $ff
    rst $38                                       ; $618a: $ff
    rst $38                                       ; $618b: $ff
    rst $38                                       ; $618c: $ff
    rst $38                                       ; $618d: $ff
    rst $38                                       ; $618e: $ff
    rst $38                                       ; $618f: $ff
    rst $38                                       ; $6190: $ff
    rst $38                                       ; $6191: $ff
    rst $38                                       ; $6192: $ff
    rst $38                                       ; $6193: $ff
    rst $38                                       ; $6194: $ff
    rst $38                                       ; $6195: $ff
    rst $38                                       ; $6196: $ff
    rst $38                                       ; $6197: $ff
    rst $38                                       ; $6198: $ff
    rst $38                                       ; $6199: $ff
    rst $38                                       ; $619a: $ff
    rst $38                                       ; $619b: $ff
    rst $38                                       ; $619c: $ff
    rst $38                                       ; $619d: $ff
    rst $38                                       ; $619e: $ff
    rst $38                                       ; $619f: $ff
    rst $38                                       ; $61a0: $ff
    rst $38                                       ; $61a1: $ff
    rst $38                                       ; $61a2: $ff
    rst $38                                       ; $61a3: $ff
    rst $38                                       ; $61a4: $ff
    rst $38                                       ; $61a5: $ff
    rst $38                                       ; $61a6: $ff
    rst $38                                       ; $61a7: $ff
    rst $38                                       ; $61a8: $ff
    rst $38                                       ; $61a9: $ff
    rst $38                                       ; $61aa: $ff
    rst $38                                       ; $61ab: $ff
    rst $38                                       ; $61ac: $ff
    rst $38                                       ; $61ad: $ff
    rst $38                                       ; $61ae: $ff
    rst $38                                       ; $61af: $ff
    rst $38                                       ; $61b0: $ff
    rst $38                                       ; $61b1: $ff
    rst $38                                       ; $61b2: $ff
    rst $38                                       ; $61b3: $ff
    rst $38                                       ; $61b4: $ff
    rst $38                                       ; $61b5: $ff
    rst $38                                       ; $61b6: $ff
    rst $38                                       ; $61b7: $ff
    rst $38                                       ; $61b8: $ff
    rst $38                                       ; $61b9: $ff
    rst $38                                       ; $61ba: $ff
    rst $38                                       ; $61bb: $ff
    rst $38                                       ; $61bc: $ff
    rst $38                                       ; $61bd: $ff
    rst $38                                       ; $61be: $ff
    rst $38                                       ; $61bf: $ff
    rst $38                                       ; $61c0: $ff
    rst $38                                       ; $61c1: $ff
    rst $38                                       ; $61c2: $ff
    rst $38                                       ; $61c3: $ff
    rst $38                                       ; $61c4: $ff
    rst $38                                       ; $61c5: $ff
    rst $38                                       ; $61c6: $ff
    rst $38                                       ; $61c7: $ff
    rst $38                                       ; $61c8: $ff
    rst $38                                       ; $61c9: $ff
    rst $38                                       ; $61ca: $ff
    rst $38                                       ; $61cb: $ff
    rst $38                                       ; $61cc: $ff
    rst $38                                       ; $61cd: $ff
    rst $38                                       ; $61ce: $ff
    rst $38                                       ; $61cf: $ff
    rst $38                                       ; $61d0: $ff
    rst $38                                       ; $61d1: $ff
    rst $38                                       ; $61d2: $ff
    rst $38                                       ; $61d3: $ff
    rst $38                                       ; $61d4: $ff
    rst $38                                       ; $61d5: $ff
    rst $38                                       ; $61d6: $ff
    rst $38                                       ; $61d7: $ff
    rst $38                                       ; $61d8: $ff
    rst $38                                       ; $61d9: $ff
    rst $38                                       ; $61da: $ff
    rst $38                                       ; $61db: $ff
    rst $38                                       ; $61dc: $ff
    rst $38                                       ; $61dd: $ff
    rst $38                                       ; $61de: $ff
    rst $38                                       ; $61df: $ff
    rst $38                                       ; $61e0: $ff
    rst $38                                       ; $61e1: $ff
    rst $38                                       ; $61e2: $ff
    rst $38                                       ; $61e3: $ff
    rst $38                                       ; $61e4: $ff
    rst $38                                       ; $61e5: $ff
    rst $38                                       ; $61e6: $ff
    rst $38                                       ; $61e7: $ff
    rst $38                                       ; $61e8: $ff
    rst $38                                       ; $61e9: $ff
    rst $38                                       ; $61ea: $ff
    rst $38                                       ; $61eb: $ff
    rst $38                                       ; $61ec: $ff
    rst $38                                       ; $61ed: $ff
    rst $38                                       ; $61ee: $ff
    rst $38                                       ; $61ef: $ff
    rst $38                                       ; $61f0: $ff
    rst $38                                       ; $61f1: $ff
    rst $38                                       ; $61f2: $ff
    rst $38                                       ; $61f3: $ff
    rst $38                                       ; $61f4: $ff
    rst $38                                       ; $61f5: $ff
    rst $38                                       ; $61f6: $ff
    rst $38                                       ; $61f7: $ff
    rst $38                                       ; $61f8: $ff
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

Call_003_6633:
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

Call_003_7084:
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

Jump_003_7181:
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

Call_003_74fb:
    rst $38                                       ; $74fb: $ff
    rst $38                                       ; $74fc: $ff
    rst $38                                       ; $74fd: $ff
    rst $38                                       ; $74fe: $ff

Call_003_74ff:
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

Call_003_7cf4:
    rst $38                                       ; $7cf4: $ff
    rst $38                                       ; $7cf5: $ff
    rst $38                                       ; $7cf6: $ff
    rst $38                                       ; $7cf7: $ff
    rst $38                                       ; $7cf8: $ff
    rst $38                                       ; $7cf9: $ff
    rst $38                                       ; $7cfa: $ff

Call_003_7cfb:
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

Jump_003_7d3c:
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

Jump_003_7ebd:
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

Call_003_7f3b:
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
