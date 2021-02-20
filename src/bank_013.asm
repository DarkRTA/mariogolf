; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

    db $2b, $43, $76, $42, $a4, $44, $28, $45, $f6, $55, $ee, $49, $44, $70, $a2, $70

    xor b                                         ; $4010: $a8
    ld b, d                                       ; $4011: $42

    db $6d, $44

Call_013_4014:
    ldh a, [$b0]                                  ; $4014: $f0 $b0
    or a                                          ; $4016: $b7
    jp nz, Jump_013_4077                          ; $4017: $c2 $77 $40

    ld a, $02                                     ; $401a: $3e $02
    ldh [$96], a                                  ; $401c: $e0 $96
    ldh [rSVBK], a                                ; $401e: $e0 $70
    ld hl, $0100                                  ; $4020: $21 $00 $01
    call Call_013_49ee                            ; $4023: $cd $ee $49
    ld de, $d000                                  ; $4026: $11 $00 $d0
    call Call_000_069a                            ; $4029: $cd $9a $06
    ld a, $03                                     ; $402c: $3e $03
    ldh [$96], a                                  ; $402e: $e0 $96
    ldh [rSVBK], a                                ; $4030: $e0 $70
    ld hl, $0101                                  ; $4032: $21 $01 $01
    call Call_013_49ee                            ; $4035: $cd $ee $49
    ld de, $d000                                  ; $4038: $11 $00 $d0
    call Call_000_069a                            ; $403b: $cd $9a $06
    ld a, $06                                     ; $403e: $3e $06
    ldh [$96], a                                  ; $4040: $e0 $96
    ldh [rSVBK], a                                ; $4042: $e0 $70
    ld hl, $0102                                  ; $4044: $21 $02 $01
    call Call_013_49ee                            ; $4047: $cd $ee $49
    ld de, $d700                                  ; $404a: $11 $00 $d7
    call Call_000_069a                            ; $404d: $cd $9a $06
    ld hl, $0003                                  ; $4050: $21 $03 $00
    call Call_013_49ee                            ; $4053: $cd $ee $49
    ld de, $d800                                  ; $4056: $11 $00 $d8
    call Call_000_069a                            ; $4059: $cd $9a $06
    ld a, $04                                     ; $405c: $3e $04
    ldh [$96], a                                  ; $405e: $e0 $96
    ldh [rSVBK], a                                ; $4060: $e0 $70
    ld hl, $0103                                  ; $4062: $21 $03 $01
    call Call_013_49ee                            ; $4065: $cd $ee $49
    ld de, $dc00                                  ; $4068: $11 $00 $dc
    ld c, $20                                     ; $406b: $0e $20
    call Call_000_0749                            ; $406d: $cd $49 $07
    ld a, $06                                     ; $4070: $3e $06
    ldh [$96], a                                  ; $4072: $e0 $96
    ldh [rSVBK], a                                ; $4074: $e0 $70
    ret                                           ; $4076: $c9


Jump_013_4077:
    cp $01                                        ; $4077: $fe $01
    jr nz, jr_013_40be                            ; $4079: $20 $43

    ld a, $02                                     ; $407b: $3e $02
    ldh [$96], a                                  ; $407d: $e0 $96
    ldh [rSVBK], a                                ; $407f: $e0 $70
    ld hl, $0301                                  ; $4081: $21 $01 $03
    call Call_013_49ee                            ; $4084: $cd $ee $49
    ld de, $d000                                  ; $4087: $11 $00 $d0
    call Call_000_069a                            ; $408a: $cd $9a $06
    ld a, $03                                     ; $408d: $3e $03
    ldh [$96], a                                  ; $408f: $e0 $96
    ldh [rSVBK], a                                ; $4091: $e0 $70
    ld hl, $0302                                  ; $4093: $21 $02 $03
    call Call_013_49ee                            ; $4096: $cd $ee $49
    ld de, $d000                                  ; $4099: $11 $00 $d0
    call Call_000_069a                            ; $409c: $cd $9a $06
    ld a, $06                                     ; $409f: $3e $06
    ldh [$96], a                                  ; $40a1: $e0 $96
    ldh [rSVBK], a                                ; $40a3: $e0 $70
    ld hl, $0303                                  ; $40a5: $21 $03 $03
    call Call_013_49ee                            ; $40a8: $cd $ee $49
    ld de, $d700                                  ; $40ab: $11 $00 $d7
    call Call_000_069a                            ; $40ae: $cd $9a $06
    ld hl, $0202                                  ; $40b1: $21 $02 $02
    call Call_013_49ee                            ; $40b4: $cd $ee $49
    ld de, $d800                                  ; $40b7: $11 $00 $d8
    call Call_000_069a                            ; $40ba: $cd $9a $06
    ret                                           ; $40bd: $c9


jr_013_40be:
    cp $03                                        ; $40be: $fe $03
    jr nz, jr_013_40c3                            ; $40c0: $20 $01

    ret                                           ; $40c2: $c9


jr_013_40c3:
    ld a, $06                                     ; $40c3: $3e $06
    ldh [$96], a                                  ; $40c5: $e0 $96
    ldh [rSVBK], a                                ; $40c7: $e0 $70
    ret                                           ; $40c9: $c9


Call_013_40ca:
    ld a, $01                                     ; $40ca: $3e $01
    ldh [$96], a                                  ; $40cc: $e0 $96
    ldh [rSVBK], a                                ; $40ce: $e0 $70
    ld a, $01                                     ; $40d0: $3e $01
    ldh [rVBK], a                                 ; $40d2: $e0 $4f
    ldh a, [$b0]                                  ; $40d4: $f0 $b0
    or a                                          ; $40d6: $b7
    jr nz, jr_013_40f4                            ; $40d7: $20 $1b

    ld hl, $0001                                  ; $40d9: $21 $01 $00
    call Call_013_49ee                            ; $40dc: $cd $ee $49
    ld de, $d000                                  ; $40df: $11 $00 $d0
    call Call_000_069a                            ; $40e2: $cd $9a $06
    ld hl, $0000                                  ; $40e5: $21 $00 $00
    call Call_013_49ee                            ; $40e8: $cd $ee $49
    ld de, $c600                                  ; $40eb: $11 $00 $c6
    ld c, $40                                     ; $40ee: $0e $40
    call Call_000_06c2                            ; $40f0: $cd $c2 $06
    ret                                           ; $40f3: $c9


jr_013_40f4:
    cp $01                                        ; $40f4: $fe $01
    jr nz, jr_013_411c                            ; $40f6: $20 $24

    ld hl, $0200                                  ; $40f8: $21 $00 $02
    call Call_013_49ee                            ; $40fb: $cd $ee $49
    ld de, $d000                                  ; $40fe: $11 $00 $d0
    call Call_000_069a                            ; $4101: $cd $9a $06
    ld hl, $464b                                  ; $4104: $21 $4b $46
    ld de, $dc00                                  ; $4107: $11 $00 $dc
    call Call_000_1f2f                            ; $410a: $cd $2f $1f
    ld hl, $0300                                  ; $410d: $21 $00 $03
    call Call_013_49ee                            ; $4110: $cd $ee $49
    ld de, $c600                                  ; $4113: $11 $00 $c6
    ld c, $40                                     ; $4116: $0e $40
    call Call_000_06c2                            ; $4118: $cd $c2 $06
    ret                                           ; $411b: $c9


jr_013_411c:
    ret                                           ; $411c: $c9


Call_013_411d:
    ld a, $06                                     ; $411d: $3e $06
    ldh [$96], a                                  ; $411f: $e0 $96
    ldh [rSVBK], a                                ; $4121: $e0 $70
    ldh a, [$b0]                                  ; $4123: $f0 $b0
    or a                                          ; $4125: $b7
    jp z, Jump_013_412f                           ; $4126: $ca $2f $41

    ld hl, $0000                                  ; $4129: $21 $00 $00
    jp Jump_013_416b                              ; $412c: $c3 $6b $41


Jump_013_412f:
    ld hl, $d42e                                  ; $412f: $21 $2e $d4
    ld a, [hl+]                                   ; $4132: $2a
    ld h, [hl]                                    ; $4133: $66
    ld l, a                                       ; $4134: $6f
    ld a, l                                       ; $4135: $7d
    ld de, $c320                                  ; $4136: $11 $20 $c3
    ld [de], a                                    ; $4139: $12
    inc de                                        ; $413a: $13
    ld a, h                                       ; $413b: $7c
    ld [de], a                                    ; $413c: $12
    ld [$c324], a                                 ; $413d: $ea $24 $c3
    push hl                                       ; $4140: $e5
    ld hl, $d430                                  ; $4141: $21 $30 $d4
    ld a, [hl+]                                   ; $4144: $2a
    ld h, [hl]                                    ; $4145: $66
    ld l, a                                       ; $4146: $6f
    ld a, l                                       ; $4147: $7d
    ld de, $c322                                  ; $4148: $11 $22 $c3
    ld [de], a                                    ; $414b: $12
    inc de                                        ; $414c: $13
    ld a, h                                       ; $414d: $7c
    ld [de], a                                    ; $414e: $12
    ld [$c325], a                                 ; $414f: $ea $25 $c3
    pop de                                        ; $4152: $d1
    ld c, l                                       ; $4153: $4d
    ld a, h                                       ; $4154: $7c
    sla c                                         ; $4155: $cb $21
    rla                                           ; $4157: $17
    sla c                                         ; $4158: $cb $21
    rla                                           ; $415a: $17
    sla c                                         ; $415b: $cb $21
    rla                                           ; $415d: $17
    ld c, e                                       ; $415e: $4b
    ld a, d                                       ; $415f: $7a
    sla c                                         ; $4160: $cb $21
    rla                                           ; $4162: $17
    sla c                                         ; $4163: $cb $21
    rla                                           ; $4165: $17
    sla c                                         ; $4166: $cb $21
    rla                                           ; $4168: $17
    ld l, h                                       ; $4169: $6c
    ld h, d                                       ; $416a: $62

Jump_013_416b:
    push hl                                       ; $416b: $e5
    ld a, l                                       ; $416c: $7d
    and $1f                                       ; $416d: $e6 $1f
    ld l, a                                       ; $416f: $6f
    ld a, h                                       ; $4170: $7c
    and $1f                                       ; $4171: $e6 $1f
    ld h, $00                                     ; $4173: $26 $00
    add hl, hl                                    ; $4175: $29
    add hl, hl                                    ; $4176: $29
    add hl, hl                                    ; $4177: $29
    add hl, hl                                    ; $4178: $29
    add hl, hl                                    ; $4179: $29
    add l                                         ; $417a: $85
    ld l, a                                       ; $417b: $6f
    ld de, $9800                                  ; $417c: $11 $00 $98
    add hl, de                                    ; $417f: $19
    ld e, l                                       ; $4180: $5d
    ld d, h                                       ; $4181: $54
    pop hl                                        ; $4182: $e1
    push de                                       ; $4183: $d5
    ld a, h                                       ; $4184: $7c
    ld h, $00                                     ; $4185: $26 $00
    add hl, hl                                    ; $4187: $29
    add hl, hl                                    ; $4188: $29
    add hl, hl                                    ; $4189: $29
    add hl, hl                                    ; $418a: $29
    add hl, hl                                    ; $418b: $29
    add hl, hl                                    ; $418c: $29
    add l                                         ; $418d: $85
    ld l, a                                       ; $418e: $6f
    ld de, $d000                                  ; $418f: $11 $00 $d0
    add hl, de                                    ; $4192: $19
    pop de                                        ; $4193: $d1
    push hl                                       ; $4194: $e5
    push de                                       ; $4195: $d5
    ld a, $02                                     ; $4196: $3e $02
    ldh [$96], a                                  ; $4198: $e0 $96
    ldh [rSVBK], a                                ; $419a: $e0 $70
    ld a, $01                                     ; $419c: $3e $01
    ldh [rVBK], a                                 ; $419e: $e0 $4f
    ld b, $14                                     ; $41a0: $06 $14

jr_013_41a2:
    ld c, $16                                     ; $41a2: $0e $16
    push de                                       ; $41a4: $d5
    push hl                                       ; $41a5: $e5

jr_013_41a6:
    ld a, [hl+]                                   ; $41a6: $2a
    ld [de], a                                    ; $41a7: $12
    inc de                                        ; $41a8: $13
    ld a, l                                       ; $41a9: $7d
    and $3f                                       ; $41aa: $e6 $3f
    jr nz, jr_013_41b6                            ; $41ac: $20 $08

    push de                                       ; $41ae: $d5
    ld de, $ffc0                                  ; $41af: $11 $c0 $ff
    add hl, de                                    ; $41b2: $19
    pop de                                        ; $41b3: $d1
    jr jr_013_41bb                                ; $41b4: $18 $05

jr_013_41b6:
    ld a, e                                       ; $41b6: $7b
    and $1f                                       ; $41b7: $e6 $1f
    jr nz, jr_013_41c3                            ; $41b9: $20 $08

jr_013_41bb:
    push hl                                       ; $41bb: $e5
    ld hl, $ffe0                                  ; $41bc: $21 $e0 $ff
    add hl, de                                    ; $41bf: $19
    ld e, l                                       ; $41c0: $5d
    ld d, h                                       ; $41c1: $54
    pop hl                                        ; $41c2: $e1

jr_013_41c3:
    dec c                                         ; $41c3: $0d
    jr nz, jr_013_41a6                            ; $41c4: $20 $e0

    pop hl                                        ; $41c6: $e1
    ld a, $40                                     ; $41c7: $3e $40
    add l                                         ; $41c9: $85
    ld l, a                                       ; $41ca: $6f
    jr nc, jr_013_41d4                            ; $41cb: $30 $07

    ld a, h                                       ; $41cd: $7c
    inc a                                         ; $41ce: $3c
    and $0f                                       ; $41cf: $e6 $0f
    or $d0                                        ; $41d1: $f6 $d0
    ld h, a                                       ; $41d3: $67

jr_013_41d4:
    pop de                                        ; $41d4: $d1
    ld a, $20                                     ; $41d5: $3e $20
    add e                                         ; $41d7: $83
    ld e, a                                       ; $41d8: $5f
    jr nc, jr_013_41e0                            ; $41d9: $30 $05

    ld a, d                                       ; $41db: $7a
    inc a                                         ; $41dc: $3c
    res 2, a                                      ; $41dd: $cb $97
    ld d, a                                       ; $41df: $57

jr_013_41e0:
    dec b                                         ; $41e0: $05
    jr nz, jr_013_41a2                            ; $41e1: $20 $bf

    pop de                                        ; $41e3: $d1
    pop hl                                        ; $41e4: $e1
    ld a, $03                                     ; $41e5: $3e $03
    ldh [$96], a                                  ; $41e7: $e0 $96
    ldh [rSVBK], a                                ; $41e9: $e0 $70
    xor a                                         ; $41eb: $af
    ldh [rVBK], a                                 ; $41ec: $e0 $4f
    ld b, $14                                     ; $41ee: $06 $14

jr_013_41f0:
    ld c, $16                                     ; $41f0: $0e $16
    push de                                       ; $41f2: $d5
    push hl                                       ; $41f3: $e5

jr_013_41f4:
    ld a, [hl+]                                   ; $41f4: $2a
    ld [de], a                                    ; $41f5: $12
    inc de                                        ; $41f6: $13
    ld a, l                                       ; $41f7: $7d
    and $3f                                       ; $41f8: $e6 $3f
    jr nz, jr_013_4204                            ; $41fa: $20 $08

    push de                                       ; $41fc: $d5
    ld de, $ffc0                                  ; $41fd: $11 $c0 $ff
    add hl, de                                    ; $4200: $19
    pop de                                        ; $4201: $d1
    jr jr_013_4209                                ; $4202: $18 $05

jr_013_4204:
    ld a, e                                       ; $4204: $7b
    and $1f                                       ; $4205: $e6 $1f
    jr nz, jr_013_4211                            ; $4207: $20 $08

jr_013_4209:
    push hl                                       ; $4209: $e5
    ld hl, $ffe0                                  ; $420a: $21 $e0 $ff
    add hl, de                                    ; $420d: $19
    ld e, l                                       ; $420e: $5d
    ld d, h                                       ; $420f: $54
    pop hl                                        ; $4210: $e1

jr_013_4211:
    dec c                                         ; $4211: $0d
    jr nz, jr_013_41f4                            ; $4212: $20 $e0

    pop hl                                        ; $4214: $e1
    ld a, $40                                     ; $4215: $3e $40
    add l                                         ; $4217: $85
    ld l, a                                       ; $4218: $6f
    jr nc, jr_013_4222                            ; $4219: $30 $07

    ld a, h                                       ; $421b: $7c
    inc a                                         ; $421c: $3c
    and $0f                                       ; $421d: $e6 $0f
    or $d0                                        ; $421f: $f6 $d0
    ld h, a                                       ; $4221: $67

jr_013_4222:
    pop de                                        ; $4222: $d1
    ld a, $20                                     ; $4223: $3e $20
    add e                                         ; $4225: $83
    ld e, a                                       ; $4226: $5f
    jr nc, jr_013_422e                            ; $4227: $30 $05

    ld a, d                                       ; $4229: $7a
    inc a                                         ; $422a: $3c
    res 2, a                                      ; $422b: $cb $97
    ld d, a                                       ; $422d: $57

jr_013_422e:
    dec b                                         ; $422e: $05
    jr nz, jr_013_41f0                            ; $422f: $20 $bf

    ld a, $06                                     ; $4231: $3e $06
    ldh [$96], a                                  ; $4233: $e0 $96
    ldh [rSVBK], a                                ; $4235: $e0 $70
    ld hl, $c320                                  ; $4237: $21 $20 $c3
    ld de, $d432                                  ; $423a: $11 $32 $d4
    ld a, [hl+]                                   ; $423d: $2a
    ld [de], a                                    ; $423e: $12
    inc de                                        ; $423f: $13
    ld a, [hl+]                                   ; $4240: $2a
    ld [de], a                                    ; $4241: $12
    inc de                                        ; $4242: $13
    ld a, [hl+]                                   ; $4243: $2a
    ld [de], a                                    ; $4244: $12
    inc de                                        ; $4245: $13
    ld a, [hl]                                    ; $4246: $7e
    ld [de], a                                    ; $4247: $12
    ld a, [$c322]                                 ; $4248: $fa $22 $c3
    ld c, a                                       ; $424b: $4f
    ld a, [$c323]                                 ; $424c: $fa $23 $c3
    sla c                                         ; $424f: $cb $21
    rla                                           ; $4251: $17
    sla c                                         ; $4252: $cb $21
    rla                                           ; $4254: $17
    sla c                                         ; $4255: $cb $21
    rla                                           ; $4257: $17
    ldh [$8a], a                                  ; $4258: $e0 $8a
    ldh [rSCY], a                                 ; $425a: $e0 $42
    ld a, [$c320]                                 ; $425c: $fa $20 $c3
    ld c, a                                       ; $425f: $4f
    ld a, [$c321]                                 ; $4260: $fa $21 $c3
    sla c                                         ; $4263: $cb $21
    rla                                           ; $4265: $17
    sla c                                         ; $4266: $cb $21
    rla                                           ; $4268: $17
    sla c                                         ; $4269: $cb $21
    rla                                           ; $426b: $17
    ldh [$8b], a                                  ; $426c: $e0 $8b
    ldh [rSCX], a                                 ; $426e: $e0 $43
    xor a                                         ; $4270: $af
    ldh [$b9], a                                  ; $4271: $e0 $b9
    ldh [$b8], a                                  ; $4273: $e0 $b8
    ret                                           ; $4275: $c9


    ld a, [$d443]                                 ; $4276: $fa $43 $d4
    or a                                          ; $4279: $b7
    ret nz                                        ; $427a: $c0

    ldh [$b0], a                                  ; $427b: $e0 $b0
    rst $18                                       ; $427d: $df

    db $00, $11

    ld hl, $d42f                                  ; $4280: $21 $2f $d4
    ld a, [$c321]                                 ; $4283: $fa $21 $c3
    cp [hl]                                       ; $4286: $be
    jr nz, jr_013_4291                            ; $4287: $20 $08

    ld hl, $d431                                  ; $4289: $21 $31 $d4
    ld a, [$c323]                                 ; $428c: $fa $23 $c3
    cp [hl]                                       ; $428f: $be
    ret z                                         ; $4290: $c8

jr_013_4291:
    ld a, $06                                     ; $4291: $3e $06
    ldh [$96], a                                  ; $4293: $e0 $96
    ldh [rSVBK], a                                ; $4295: $e0 $70
    call Call_000_0341                            ; $4297: $cd $41 $03
    call Call_013_411d                            ; $429a: $cd $1d $41
    call Call_000_0371                            ; $429d: $cd $71 $03
    xor a                                         ; $42a0: $af
    ld [$d36c], a                                 ; $42a1: $ea $6c $d3
    call Call_000_2e3b                            ; $42a4: $cd $3b $2e
    ret                                           ; $42a7: $c9


    ld a, [$d443]                                 ; $42a8: $fa $43 $d4
    ldh [$b0], a                                  ; $42ab: $e0 $b0
    ld a, $06                                     ; $42ad: $3e $06
    ldh [$96], a                                  ; $42af: $e0 $96
    ldh [rSVBK], a                                ; $42b1: $e0 $70
    call Call_000_0341                            ; $42b3: $cd $41 $03
    ldh a, [$b0]                                  ; $42b6: $f0 $b0
    or a                                          ; $42b8: $b7
    jr nz, jr_013_42f3                            ; $42b9: $20 $38

    ld a, $02                                     ; $42bb: $3e $02
    ldh [$96], a                                  ; $42bd: $e0 $96
    ldh [rSVBK], a                                ; $42bf: $e0 $70
    ld hl, $0100                                  ; $42c1: $21 $00 $01
    call Call_013_49ee                            ; $42c4: $cd $ee $49
    ld de, $d000                                  ; $42c7: $11 $00 $d0
    call Call_000_069a                            ; $42ca: $cd $9a $06
    ld a, $03                                     ; $42cd: $3e $03
    ldh [$96], a                                  ; $42cf: $e0 $96
    ldh [rSVBK], a                                ; $42d1: $e0 $70
    ld hl, $0101                                  ; $42d3: $21 $01 $01
    call Call_013_49ee                            ; $42d6: $cd $ee $49
    ld de, $d000                                  ; $42d9: $11 $00 $d0
    call Call_000_069a                            ; $42dc: $cd $9a $06
    ld a, $01                                     ; $42df: $3e $01
    ldh [$96], a                                  ; $42e1: $e0 $96
    ldh [rSVBK], a                                ; $42e3: $e0 $70
    ld hl, $0004                                  ; $42e5: $21 $04 $00
    call Call_013_49ee                            ; $42e8: $cd $ee $49
    ld de, $d800                                  ; $42eb: $11 $00 $d8
    call Call_000_069a                            ; $42ee: $cd $9a $06
    jr jr_013_4317                                ; $42f1: $18 $24

jr_013_42f3:
    ld a, $02                                     ; $42f3: $3e $02
    ldh [$96], a                                  ; $42f5: $e0 $96
    ldh [rSVBK], a                                ; $42f7: $e0 $70
    ld hl, $0301                                  ; $42f9: $21 $01 $03
    call Call_013_49ee                            ; $42fc: $cd $ee $49
    ld de, $d000                                  ; $42ff: $11 $00 $d0
    call Call_000_069a                            ; $4302: $cd $9a $06
    ld a, $03                                     ; $4305: $3e $03
    ldh [$96], a                                  ; $4307: $e0 $96
    ldh [rSVBK], a                                ; $4309: $e0 $70
    ld hl, $0302                                  ; $430b: $21 $02 $03
    call Call_013_49ee                            ; $430e: $cd $ee $49
    ld de, $d000                                  ; $4311: $11 $00 $d0
    call Call_000_069a                            ; $4314: $cd $9a $06

jr_013_4317:
    ld a, $06                                     ; $4317: $3e $06
    ldh [$96], a                                  ; $4319: $e0 $96
    ldh [rSVBK], a                                ; $431b: $e0 $70
    call Call_013_411d                            ; $431d: $cd $1d $41
    call Call_000_0371                            ; $4320: $cd $71 $03
    xor a                                         ; $4323: $af
    ld [$d36c], a                                 ; $4324: $ea $6c $d3
    call Call_000_2e3b                            ; $4327: $cd $3b $2e
    ret                                           ; $432a: $c9


    ldh [$b0], a                                  ; $432b: $e0 $b0
    rst $18                                       ; $432d: $df

    db $00, $11

    xor a                                         ; $4330: $af
    ld [$d444], a                                 ; $4331: $ea $44 $d4
    xor a                                         ; $4334: $af
    ld hl, $ca80                                  ; $4335: $21 $80 $ca
    ld [hl+], a                                   ; $4338: $22
    ld [hl], a                                    ; $4339: $77
    rst $18                                       ; $433a: $df

    db $14, $11

    ldh a, [$b0]                                  ; $433d: $f0 $b0
    cp $04                                        ; $433f: $fe $04
    jp nz, Jump_013_43d6                          ; $4341: $c2 $d6 $43

    ld a, [$d443]                                 ; $4344: $fa $43 $d4
    or a                                          ; $4347: $b7
    jr z, jr_013_43a0                             ; $4348: $28 $56

    ld a, $02                                     ; $434a: $3e $02
    ldh [$96], a                                  ; $434c: $e0 $96
    ldh [rSVBK], a                                ; $434e: $e0 $70
    ld hl, $0100                                  ; $4350: $21 $00 $01
    call Call_013_49ee                            ; $4353: $cd $ee $49
    ld de, $d000                                  ; $4356: $11 $00 $d0
    call Call_000_069a                            ; $4359: $cd $9a $06
    ld a, $03                                     ; $435c: $3e $03
    ldh [$96], a                                  ; $435e: $e0 $96
    ldh [rSVBK], a                                ; $4360: $e0 $70
    ld hl, $0101                                  ; $4362: $21 $01 $01
    call Call_013_49ee                            ; $4365: $cd $ee $49
    ld de, $d000                                  ; $4368: $11 $00 $d0
    call Call_000_069a                            ; $436b: $cd $9a $06
    ld a, $06                                     ; $436e: $3e $06
    ldh [$96], a                                  ; $4370: $e0 $96
    ldh [rSVBK], a                                ; $4372: $e0 $70
    ld hl, $0102                                  ; $4374: $21 $02 $01
    call Call_013_49ee                            ; $4377: $cd $ee $49
    ld de, $d700                                  ; $437a: $11 $00 $d7
    call Call_000_069a                            ; $437d: $cd $9a $06
    ld hl, $0003                                  ; $4380: $21 $03 $00
    call Call_013_49ee                            ; $4383: $cd $ee $49
    ld de, $d800                                  ; $4386: $11 $00 $d8
    call Call_000_069a                            ; $4389: $cd $9a $06
    ld a, $04                                     ; $438c: $3e $04
    ldh [$96], a                                  ; $438e: $e0 $96
    ldh [rSVBK], a                                ; $4390: $e0 $70
    ld hl, $0103                                  ; $4392: $21 $03 $01
    call Call_013_49ee                            ; $4395: $cd $ee $49
    ld de, $dc00                                  ; $4398: $11 $00 $dc
    ld c, $20                                     ; $439b: $0e $20
    call Call_000_0749                            ; $439d: $cd $49 $07

jr_013_43a0:
    ld a, $06                                     ; $43a0: $3e $06
    ldh [$96], a                                  ; $43a2: $e0 $96
    ldh [rSVBK], a                                ; $43a4: $e0 $70
    ld a, $01                                     ; $43a6: $3e $01
    ld [$d328], a                                 ; $43a8: $ea $28 $d3
    rst $18                                       ; $43ab: $df

    db $02, $04

    rst $18                                       ; $43ae: $df

    db $00, $15

    rst $18                                       ; $43b1: $df

    db $12, $11

    ld a, $06                                     ; $43b4: $3e $06
    ldh [$96], a                                  ; $43b6: $e0 $96
    ldh [rSVBK], a                                ; $43b8: $e0 $70
    ldh a, [$b0]                                  ; $43ba: $f0 $b0
    ld [$d443], a                                 ; $43bc: $ea $43 $d4
    call Call_000_0371                            ; $43bf: $cd $71 $03
    xor a                                         ; $43c2: $af
    ld [$d480], a                                 ; $43c3: $ea $80 $d4
    rst $18                                       ; $43c6: $df

    db $0c, $12

    ld c, $10                                     ; $43c9: $0e $10
    call Call_000_25af                            ; $43cb: $cd $af $25
    call Call_000_2625                            ; $43ce: $cd $25 $26
    xor a                                         ; $43d1: $af
    ld [$d328], a                                 ; $43d2: $ea $28 $d3
    ret                                           ; $43d5: $c9


Jump_013_43d6:
    ldh a, [$b0]                                  ; $43d6: $f0 $b0
    or a                                          ; $43d8: $b7
    jr z, jr_013_43e3                             ; $43d9: $28 $08

    xor a                                         ; $43db: $af
    ld hl, $c320                                  ; $43dc: $21 $20 $c3
    ld [hl+], a                                   ; $43df: $22
    ld [hl+], a                                   ; $43e0: $22
    ld [hl+], a                                   ; $43e1: $22
    ld [hl], a                                    ; $43e2: $77

jr_013_43e3:
    ld a, $06                                     ; $43e3: $3e $06
    ldh [$96], a                                  ; $43e5: $e0 $96
    ldh [rSVBK], a                                ; $43e7: $e0 $70
    call Call_013_40ca                            ; $43e9: $cd $ca $40
    call Call_013_4014                            ; $43ec: $cd $14 $40
    ldh a, [$b0]                                  ; $43ef: $f0 $b0
    ld [$d443], a                                 ; $43f1: $ea $43 $d4
    ld a, $02                                     ; $43f4: $3e $02
    rst $18                                       ; $43f6: $df

    db $56, $10

    call Call_000_0341                            ; $43f9: $cd $41 $03
    ld a, $01                                     ; $43fc: $3e $01
    ldh [rVBK], a                                 ; $43fe: $e0 $4f
    ld a, $01                                     ; $4400: $3e $01
    ldh [$96], a                                  ; $4402: $e0 $96
    ldh [rSVBK], a                                ; $4404: $e0 $70
    ld hl, $d000                                  ; $4406: $21 $00 $d0
    ld de, $9000                                  ; $4409: $11 $00 $90
    ld c, $80                                     ; $440c: $0e $80
    call Call_000_2096                            ; $440e: $cd $96 $20
    ld hl, $d800                                  ; $4411: $21 $00 $d8
    ld de, $8800                                  ; $4414: $11 $00 $88
    ld c, $80                                     ; $4417: $0e $80
    call Call_000_2096                            ; $4419: $cd $96 $20
    ld hl, $c600                                  ; $441c: $21 $00 $c6
    ld de, $0205                                  ; $441f: $11 $05 $02
    call Call_000_056c                            ; $4422: $cd $6c $05
    ldh a, [$b0]                                  ; $4425: $f0 $b0
    cp $01                                        ; $4427: $fe $01
    jr nz, jr_013_442e                            ; $4429: $20 $03

    call Call_013_446d                            ; $442b: $cd $6d $44

jr_013_442e:
    call Call_000_05f6                            ; $442e: $cd $f6 $05
    call Call_013_411d                            ; $4431: $cd $1d $41
    ld a, [$d443]                                 ; $4434: $fa $43 $d4
    or a                                          ; $4437: $b7
    call nz, Call_013_70a2                        ; $4438: $c4 $a2 $70
    xor a                                         ; $443b: $af
    ld [$d36c], a                                 ; $443c: $ea $6c $d3
    ld [$d36b], a                                 ; $443f: $ea $6b $d3
    call Call_000_0371                            ; $4442: $cd $71 $03
    ldh a, [$b0]                                  ; $4445: $f0 $b0
    or a                                          ; $4447: $b7
    jr nz, jr_013_445c                            ; $4448: $20 $12

    ld a, $01                                     ; $444a: $3e $01
    ldh [$96], a                                  ; $444c: $e0 $96
    ldh [rSVBK], a                                ; $444e: $e0 $70
    ld hl, $0004                                  ; $4450: $21 $04 $00
    call Call_013_49ee                            ; $4453: $cd $ee $49
    ld de, $d800                                  ; $4456: $11 $00 $d8
    call Call_000_069a                            ; $4459: $cd $9a $06

jr_013_445c:
    ld a, $06                                     ; $445c: $3e $06
    ldh [$96], a                                  ; $445e: $e0 $96
    ldh [rSVBK], a                                ; $4460: $e0 $70
    call Call_000_2e3b                            ; $4462: $cd $3b $2e
    ld a, [$d443]                                 ; $4465: $fa $43 $d4
    or a                                          ; $4468: $b7
    call z, Call_013_7076                         ; $4469: $cc $76 $70
    ret                                           ; $446c: $c9


Call_013_446d:
    push af                                       ; $446d: $f5
    push bc                                       ; $446e: $c5
    push de                                       ; $446f: $d5
    push hl                                       ; $4470: $e5
    ld a, [$c836]                                 ; $4471: $fa $36 $c8
    ld hl, $45ab                                  ; $4474: $21 $ab $45
    and $0f                                       ; $4477: $e6 $0f
    add l                                         ; $4479: $85
    ld l, a                                       ; $447a: $6f
    jr nc, jr_013_447e                            ; $447b: $30 $01

    inc h                                         ; $447d: $24

jr_013_447e:
    ld a, [hl]                                    ; $447e: $7e
    ld h, a                                       ; $447f: $67
    add a                                         ; $4480: $87
    add h                                         ; $4481: $84
    add a                                         ; $4482: $87
    add a                                         ; $4483: $87
    add a                                         ; $4484: $87
    ld hl, $45bb                                  ; $4485: $21 $bb $45
    add l                                         ; $4488: $85
    ld l, a                                       ; $4489: $6f
    jr nc, jr_013_448d                            ; $448a: $30 $01

    inc h                                         ; $448c: $24

jr_013_448d:
    push hl                                       ; $448d: $e5
    ld de, $0502                                  ; $448e: $11 $02 $05
    call Call_000_056c                            ; $4491: $cd $6c $05
    pop hl                                        ; $4494: $e1
    ld de, $0010                                  ; $4495: $11 $10 $00
    add hl, de                                    ; $4498: $19
    ld de, $0a01                                  ; $4499: $11 $01 $0a
    call Call_000_056c                            ; $449c: $cd $6c $05
    pop hl                                        ; $449f: $e1
    pop de                                        ; $44a0: $d1
    pop bc                                        ; $44a1: $c1
    pop af                                        ; $44a2: $f1
    ret                                           ; $44a3: $c9


    ld de, $c600                                  ; $44a4: $11 $00 $c6
    ld hl, $ffb0                                  ; $44a7: $21 $b0 $ff
    ld a, $4e                                     ; $44aa: $3e $4e
    ld [hl+], a                                   ; $44ac: $22
    ld a, $49                                     ; $44ad: $3e $49
    ld [hl], a                                    ; $44af: $77
    ld b, $02                                     ; $44b0: $06 $02
    ld a, $02                                     ; $44b2: $3e $02
    ldh [$96], a                                  ; $44b4: $e0 $96
    ldh [rSVBK], a                                ; $44b6: $e0 $70

jr_013_44b8:
    ld hl, $d100                                  ; $44b8: $21 $00 $d1
    ld c, $08                                     ; $44bb: $0e $08

jr_013_44bd:
    push bc                                       ; $44bd: $c5
    ld a, [hl+]                                   ; $44be: $2a
    ld [de], a                                    ; $44bf: $12
    inc de                                        ; $44c0: $13
    ld a, [hl+]                                   ; $44c1: $2a
    ld [de], a                                    ; $44c2: $12
    inc de                                        ; $44c3: $13
    ld a, [hl+]                                   ; $44c4: $2a
    ld [de], a                                    ; $44c5: $12
    inc de                                        ; $44c6: $13
    ld a, [hl+]                                   ; $44c7: $2a
    ld [de], a                                    ; $44c8: $12
    inc de                                        ; $44c9: $13
    ld a, [hl+]                                   ; $44ca: $2a
    ld [de], a                                    ; $44cb: $12
    inc de                                        ; $44cc: $13
    ld bc, $000a                                  ; $44cd: $01 $0a $00
    add hl, bc                                    ; $44d0: $09
    push hl                                       ; $44d1: $e5
    ld hl, $ffb0                                  ; $44d2: $21 $b0 $ff
    ld a, [hl+]                                   ; $44d5: $2a
    ld h, [hl]                                    ; $44d6: $66
    ld l, a                                       ; $44d7: $6f
    ld a, [hl+]                                   ; $44d8: $2a
    ld [de], a                                    ; $44d9: $12
    inc de                                        ; $44da: $13
    ld a, [hl+]                                   ; $44db: $2a
    ld [de], a                                    ; $44dc: $12
    inc de                                        ; $44dd: $13
    ld a, [hl+]                                   ; $44de: $2a
    ld [de], a                                    ; $44df: $12
    inc de                                        ; $44e0: $13
    ld a, [hl+]                                   ; $44e1: $2a
    ld [de], a                                    ; $44e2: $12
    inc de                                        ; $44e3: $13
    ld a, [hl+]                                   ; $44e4: $2a
    ld [de], a                                    ; $44e5: $12
    inc de                                        ; $44e6: $13
    ld a, [hl+]                                   ; $44e7: $2a
    ld [de], a                                    ; $44e8: $12
    inc de                                        ; $44e9: $13
    ld a, [hl+]                                   ; $44ea: $2a
    ld [de], a                                    ; $44eb: $12
    inc de                                        ; $44ec: $13
    ld a, [hl+]                                   ; $44ed: $2a
    ld [de], a                                    ; $44ee: $12
    inc de                                        ; $44ef: $13
    ld a, [hl+]                                   ; $44f0: $2a
    ld [de], a                                    ; $44f1: $12
    inc de                                        ; $44f2: $13
    ld a, [hl+]                                   ; $44f3: $2a
    ld [de], a                                    ; $44f4: $12
    inc de                                        ; $44f5: $13
    ld a, l                                       ; $44f6: $7d
    ldh [$b0], a                                  ; $44f7: $e0 $b0
    ld a, h                                       ; $44f9: $7c
    ldh [$b1], a                                  ; $44fa: $e0 $b1
    pop hl                                        ; $44fc: $e1
    ld a, [hl+]                                   ; $44fd: $2a
    ld [de], a                                    ; $44fe: $12
    inc de                                        ; $44ff: $13
    ld a, [hl+]                                   ; $4500: $2a
    ld [de], a                                    ; $4501: $12
    inc de                                        ; $4502: $13
    ld a, [hl+]                                   ; $4503: $2a
    ld [de], a                                    ; $4504: $12
    inc de                                        ; $4505: $13
    ld a, [hl+]                                   ; $4506: $2a
    ld [de], a                                    ; $4507: $12
    inc de                                        ; $4508: $13
    ld a, [hl+]                                   ; $4509: $2a
    ld [de], a                                    ; $450a: $12
    inc de                                        ; $450b: $13
    ld bc, $002c                                  ; $450c: $01 $2c $00
    add hl, bc                                    ; $450f: $09
    ld a, $0c                                     ; $4510: $3e $0c
    add e                                         ; $4512: $83
    ld e, a                                       ; $4513: $5f
    ld a, d                                       ; $4514: $7a
    adc $00                                       ; $4515: $ce $00
    ld d, a                                       ; $4517: $57
    pop bc                                        ; $4518: $c1
    dec c                                         ; $4519: $0d
    jr nz, jr_013_44bd                            ; $451a: $20 $a1

    ld a, $03                                     ; $451c: $3e $03
    ldh [$96], a                                  ; $451e: $e0 $96
    ldh [rSVBK], a                                ; $4520: $e0 $70
    dec b                                         ; $4522: $05
    jr nz, jr_013_44b8                            ; $4523: $20 $93

    jp Jump_013_458e                              ; $4525: $c3 $8e $45


    ld de, $c600                                  ; $4528: $11 $00 $c6
    ld b, $02                                     ; $452b: $06 $02
    ld a, $02                                     ; $452d: $3e $02
    ldh [$96], a                                  ; $452f: $e0 $96
    ldh [rSVBK], a                                ; $4531: $e0 $70

jr_013_4533:
    ld hl, $d100                                  ; $4533: $21 $00 $d1
    ld c, $08                                     ; $4536: $0e $08

jr_013_4538:
    push bc                                       ; $4538: $c5
    ld a, [hl+]                                   ; $4539: $2a
    ld [de], a                                    ; $453a: $12
    inc de                                        ; $453b: $13
    ld a, [hl+]                                   ; $453c: $2a
    ld [de], a                                    ; $453d: $12
    inc de                                        ; $453e: $13
    ld a, [hl+]                                   ; $453f: $2a
    ld [de], a                                    ; $4540: $12
    inc de                                        ; $4541: $13
    ld a, [hl+]                                   ; $4542: $2a
    ld [de], a                                    ; $4543: $12
    inc de                                        ; $4544: $13
    ld a, [hl+]                                   ; $4545: $2a
    ld [de], a                                    ; $4546: $12
    inc de                                        ; $4547: $13
    ld a, [hl+]                                   ; $4548: $2a
    ld [de], a                                    ; $4549: $12
    inc de                                        ; $454a: $13
    ld a, [hl+]                                   ; $454b: $2a
    ld [de], a                                    ; $454c: $12
    inc de                                        ; $454d: $13
    ld a, [hl+]                                   ; $454e: $2a
    ld [de], a                                    ; $454f: $12
    inc de                                        ; $4550: $13
    ld a, [hl+]                                   ; $4551: $2a
    ld [de], a                                    ; $4552: $12
    inc de                                        ; $4553: $13
    ld a, [hl+]                                   ; $4554: $2a
    ld [de], a                                    ; $4555: $12
    inc de                                        ; $4556: $13
    ld a, [hl+]                                   ; $4557: $2a
    ld [de], a                                    ; $4558: $12
    inc de                                        ; $4559: $13
    ld a, [hl+]                                   ; $455a: $2a
    ld [de], a                                    ; $455b: $12
    inc de                                        ; $455c: $13
    ld a, [hl+]                                   ; $455d: $2a
    ld [de], a                                    ; $455e: $12
    inc de                                        ; $455f: $13
    ld a, [hl+]                                   ; $4560: $2a
    ld [de], a                                    ; $4561: $12
    inc de                                        ; $4562: $13
    ld a, [hl+]                                   ; $4563: $2a
    ld [de], a                                    ; $4564: $12
    inc de                                        ; $4565: $13
    ld a, [hl+]                                   ; $4566: $2a
    ld [de], a                                    ; $4567: $12
    inc de                                        ; $4568: $13
    ld a, [hl+]                                   ; $4569: $2a
    ld [de], a                                    ; $456a: $12
    inc de                                        ; $456b: $13
    ld a, [hl+]                                   ; $456c: $2a
    ld [de], a                                    ; $456d: $12
    inc de                                        ; $456e: $13
    ld a, [hl+]                                   ; $456f: $2a
    ld [de], a                                    ; $4570: $12
    inc de                                        ; $4571: $13
    ld a, [hl+]                                   ; $4572: $2a
    ld [de], a                                    ; $4573: $12
    inc de                                        ; $4574: $13
    ld bc, $002c                                  ; $4575: $01 $2c $00
    add hl, bc                                    ; $4578: $09
    ld a, $0c                                     ; $4579: $3e $0c
    add e                                         ; $457b: $83
    ld e, a                                       ; $457c: $5f
    ld a, d                                       ; $457d: $7a
    adc $00                                       ; $457e: $ce $00
    ld d, a                                       ; $4580: $57
    pop bc                                        ; $4581: $c1
    dec c                                         ; $4582: $0d
    jr nz, jr_013_4538                            ; $4583: $20 $b3

    ld a, $03                                     ; $4585: $3e $03
    ldh [$96], a                                  ; $4587: $e0 $96
    ldh [rSVBK], a                                ; $4589: $e0 $70
    dec b                                         ; $458b: $05
    jr nz, jr_013_4533                            ; $458c: $20 $a5

Jump_013_458e:
    ld hl, $c600                                  ; $458e: $21 $00 $c6
    ld de, $b880                                  ; $4591: $11 $80 $b8
    ld c, $10                                     ; $4594: $0e $10
    call Call_000_0468                            ; $4596: $cd $68 $04
    ld hl, $c700                                  ; $4599: $21 $00 $c7
    ld de, $9880                                  ; $459c: $11 $80 $98
    ld c, $10                                     ; $459f: $0e $10
    call Call_000_0468                            ; $45a1: $cd $68 $04
    ld a, $06                                     ; $45a4: $3e $06
    ldh [$96], a                                  ; $45a6: $e0 $96
    ldh [rSVBK], a                                ; $45a8: $e0 $70
    ret                                           ; $45aa: $c9


    nop                                           ; $45ab: $00
    nop                                           ; $45ac: $00

    db $01

    ld [bc], a                                    ; $45ae: $02
    inc bc                                        ; $45af: $03
    inc b                                         ; $45b0: $04
    dec b                                         ; $45b1: $05

    db $00

    nop                                           ; $45b3: $00
    nop                                           ; $45b4: $00
    nop                                           ; $45b5: $00
    nop                                           ; $45b6: $00
    nop                                           ; $45b7: $00
    nop                                           ; $45b8: $00
    nop                                           ; $45b9: $00
    nop                                           ; $45ba: $00

    db $f6, $03, $8c, $03, $c8, $02, $00, $00, $c8, $02, $e6, $01, $04, $01, $00, $00
    db $fb, $21, $c8, $02, $e6, $01, $04, $01, $fa, $03, $90, $03, $ca, $02, $00, $00
    db $ca, $02, $08, $02, $46, $01, $00, $00, $fb, $21, $ca, $02, $08, $02, $46, $01

    db $fc                                        ; $45eb: $fc
    inc bc                                        ; $45ec: $03
    ld d, h                                       ; $45ed: $54
    inc bc                                        ; $45ee: $03
    adc [hl]                                      ; $45ef: $8e
    ld [bc], a                                    ; $45f0: $02
    nop                                           ; $45f1: $00
    nop                                           ; $45f2: $00
    adc [hl]                                      ; $45f3: $8e
    ld [bc], a                                    ; $45f4: $02
    jp z, Jump_000_0601                           ; $45f5: $ca $01 $06

    ld bc, $0000                                  ; $45f8: $01 $00 $00
    ei                                            ; $45fb: $fb
    ld hl, $028e                                  ; $45fc: $21 $8e $02
    jp z, Jump_000_0601                           ; $45ff: $ca $01 $06

    ld bc, $33f4                                  ; $4602: $01 $f4 $33
    adc h                                         ; $4605: $8c
    dec hl                                        ; $4606: $2b
    add $22                                       ; $4607: $c6 $22
    nop                                           ; $4609: $00
    nop                                           ; $460a: $00
    add $22                                       ; $460b: $c6 $22
    db $e4                                        ; $460d: $e4
    add hl, de                                    ; $460e: $19
    ld [bc], a                                    ; $460f: $02
    ld de, $0000                                  ; $4610: $11 $00 $00
    ei                                            ; $4613: $fb
    ld hl, $22c6                                  ; $4614: $21 $c6 $22
    db $e4                                        ; $4617: $e4
    add hl, de                                    ; $4618: $19
    ld [bc], a                                    ; $4619: $02
    ld de, $03ff                                  ; $461a: $11 $ff $03
    sub h                                         ; $461d: $94
    inc bc                                        ; $461e: $03
    ld c, $03                                     ; $461f: $0e $03
    nop                                           ; $4621: $00
    nop                                           ; $4622: $00
    ld c, $03                                     ; $4623: $0e $03
    ld c, d                                       ; $4625: $4a
    ld [bc], a                                    ; $4626: $02
    add [hl]                                      ; $4627: $86
    ld bc, $0000                                  ; $4628: $01 $00 $00
    ei                                            ; $462b: $fb
    ld hl, $030e                                  ; $462c: $21 $0e $03
    ld c, d                                       ; $462f: $4a
    ld [bc], a                                    ; $4630: $02
    add [hl]                                      ; $4631: $86
    ld bc, $2bf4                                  ; $4632: $01 $f4 $2b
    adc d                                         ; $4635: $8a
    inc de                                        ; $4636: $13
    add $0a                                       ; $4637: $c6 $0a
    nop                                           ; $4639: $00
    nop                                           ; $463a: $00
    add $0a                                       ; $463b: $c6 $0a
    inc b                                         ; $463d: $04
    ld [bc], a                                    ; $463e: $02
    ld b, d                                       ; $463f: $42
    ld bc, $0000                                  ; $4640: $01 $00 $00
    ei                                            ; $4643: $fb
    ld hl, $0ac6                                  ; $4644: $21 $c6 $0a
    inc b                                         ; $4647: $04
    ld [bc], a                                    ; $4648: $02
    ld b, d                                       ; $4649: $42
    db $01                                        ; $464a: $01

    db $ff, $ff, $ff, $ca, $80, $dd, $80, $fe, $80, $ff, $ff, $80, $f7, $88, $e7, $98
    db $fe, $81, $ff, $ff, $ff, $a6, $00, $8d, $00, $ae, $00, $ff, $7a, $00, $d7, $00
    db $df, $00, $fb, $04, $ff, $ff, $ff, $20, $00, $49, $00, $95, $00, $ff, $66, $00
    db $be, $00, $3b, $00, $ea, $00, $ff, $ff, $ff, $22, $00, $2a, $00, $51, $00, $7f
    db $94, $00, $fd, $00, $96, $00, $fb, $f0, $e0, $ff, $28, $00, $55, $00, $0a, $00
    db $a9, $00, $ed, $c5, $e2, $e0, $4d, $00, $ff, $ed, $3c, $3c, $5a, $ff, $66, $bd
    db $c3, $fd, $83, $fd, $83, $b9, $df, $c7, $42, $7e, $3c, $3c, $df, $ed, $d4, $80
    db $ff, $d4, $80, $c9, $80, $98, $80, $aa, $80, $ff, $bb, $80, $d7, $80, $db, $80
    db $24, $00, $77, $64, $00, $40, $b0, $e0, $93, $00, $91, $aa, $e0, $fd, $58, $b0
    db $e2, $42, $00, $c0, $00, $04, $00, $f5, $26, $e8, $e0, $68, $a0, $e4, $10, $00
    db $41, $00, $f7, $28, $00, $88, $da, $e0, $77, $7f, $7f, $3f, $cf, $0f, $1f, $04
    db $03, $87, $ee, $76, $e4, $80, $00, $ff, $80, $40, $f0, $10, $fb, $07, $ff, $00
    db $fe, $fe, $e3, $dd, $22, $5f, $a0, $bb, $44, $95, $ff, $6a, $0d, $f2, $a6, $59
    db $6a, $95, $31, $ff, $ce, $ed, $92, $d9, $a6, $ea, $95, $af, $ff, $d0, $8e, $f1
    db $cd, $b2, $94, $eb, $aa, $fb, $d5, $ff, $0c, $e0, $d3, $2c, $77, $88, $5e, $7f
    db $a1, $f4, $0b, $a3, $5c, $6a, $95, $c8, $e1, $ff, $6f, $90, $de, $21, $cb, $34
    db $db, $24, $ff, $35, $ca, $6b, $94, $bf, $00, $f7, $08, $ff, $76, $89, $ef, $10
    db $c6, $39, $6c, $93, $ff, $4f, $b0, $b7, $48, $7b, $00, $ed, $00, $fd, $ef, $a4
    db $e2, $ed, $12, $6f, $90, $7b, $84, $ff, $bd, $42, $ab, $54, $52, $ad, $45, $ba
    db $ff, $a4, $5b, $90, $6f, $42, $bd, $40, $bf, $ea, $f6, $c9, $7e, $00, $f0, $b7
    db $84, $c0, $f5, $80, $f7, $eb, $80, $ee, $7c, $c0, $db, $7a, $c0, $b5, $00, $a2
    db $eb, $00, $fa, $b8, $c0, $4f, $fa, $e0, $a6, $00, $bf, $ff, $00, $cb, $00, $dd
    db $00, $9f, $00, $bd, $eb, $00, $c9, $f8, $e0, $f7, $ee, $e0, $19, $00, $a8, $ff
    db $00, $75, $00, $de, $00, $4a, $00, $b2, $ff, $00, $b5, $00, $e5, $00, $22, $00
    db $a0, $ff, $00, $44, $00, $6a, $00, $f2, $00, $59, $fa, $5a, $c0, $ce, $f9, $d4
    db $38, $38, $7c, $7c, $38, $7d, $38, $dc, $d1, $89, $f6, $82, $fd, $81, $01, $c0
    db $f3, $84, $fb, $fd, $a0, $fe, $e0, $4f, $b0, $24, $db, $ff, $28, $d7, $42, $bd
    db $08, $f7, $18, $e7, $ff, $00, $ff, $02, $fd, $48, $b7, $c5, $3a, $ff, $a9, $56
    db $22, $dd, $08, $f7, $08, $f7, $ff, $00, $ff, $10, $ef, $a7, $58, $ea, $15, $ff
    db $52, $ad, $65, $9a, $22, $dd, $80, $7f, $ef, $24, $db, $04, $fb, $a8, $c3, $ef
    db $10, $be, $ff, $41, $d7, $28, $77, $88, $6c, $93, $e6, $ff, $19, $57, $a8, $8a
    db $75, $21, $de, $b5, $ff, $4a, $4d, $b2, $4a, $b5, $1a, $e5, $3c, $db, $3c, $2c
    db $fe, $ea, $34, $2c, $fe, $eb, $f7, $88, $ff, $ff, $80, $bf, $c0, $bf, $c0, $ee
    db $91, $7f, $ae, $d1, $bb, $c4, $cb, $b4, $77, $1a, $e0, $ad, $7f, $54, $c2, $7f
    db $80, $4c, $c1, $bd, $7a, $a0, $3f, $ba, $00, $e0, $fd, $9a, $c2, $bf, $40, $de
    db $fa, $c0, $e7, $f0, $84, $a0, $30, $c1, $82, $a0, $e6, $c0, $f7, $00, $a5, $00
    db $d5, $bb, $76, $a0, $de, $1e, $c0, $fd, $80, $ae, $78, $78, $ff, $7f, $47, $6f
    db $51, $6f, $51, $6b, $55, $ff, $5b, $7d, $57, $77, $50, $70, $70, $50, $b8, $fe
    db $e1, $fb, $e2, $f4, $e2, $88, $80, $a0, $fe, $e0, $c4, $ff, $80, $cd, $80, $80
    db $80, $a2, $80, $a8, $75, $80, $3f, $a1, $40, $3a, $a2, $22, $00, $20, $ab, $b5
    db $fe, $1a, $a8, $14, $03, $2f, $1f, $75, $38, $6b, $ff, $74, $65, $fa, $e7, $ff
    db $ff, $ff, $78, $ff, $ff, $28, $c0, $f2, $f8, $0e, $fc, $96, $37, $6e, $c6, $3f
    db $f0, $e1, $1e, $ff, $02, $eb, $00, $ed, $ff, $24, $3c, $9e, $e1, $ab, $d4, $ca
    db $b5, $ef, $94, $eb, $84, $fb, $7a, $c1, $ff, $ff, $fd, $ff, $02, $bf, $40, $95
    db $6a, $e5, $1a, $aa, $d7, $55, $52, $ad, $93, $80, $ff, $70, $a1, $df, $20, $ff
    db $9d, $62, $7d, $82, $d2, $2d, $09, $f6, $fc, $f0, $e1, $36, $a1, $df, $20, $f7
    db $08, $be, $41, $fb, $19, $e6, $f0, $e3, $bd, $42, $bf, $40, $ef, $1f, $10, $fb
    db $04, $35, $ca, $d1, $e0, $7e, $8c, $14, $e9, $1e, $f4, $ed, $f8, $f8, $70, $70
    db $00, $00

    nop                                           ; $494d: $00

    db $0d, $0d, $0d, $0d, $0d, $2d, $2d, $2d, $2d, $2d, $0d, $0d, $0d, $0d, $0d, $2d
    db $2d, $2d, $2d, $2d, $0d, $0d, $0d, $0d, $0d, $2d, $2d, $2d, $2d, $2d, $0e, $0e
    db $0e, $0e, $0e, $0e, $2e, $2e, $2e, $2e, $0e, $0e, $0e, $0e, $0e, $2e, $2e, $2e
    db $2e, $2e, $0e, $0e, $0e, $0e, $0e, $2e, $2e, $2e, $2e, $2e, $0e, $0e, $0e, $0e
    db $0e, $2e, $2e, $2e, $2e, $2e, $0e, $0e, $0e, $0e, $0e, $2e, $2e, $2e, $2e, $2e
    db $c0, $c1, $c2, $c3, $c4, $c4, $c3, $c2, $c1, $c0, $d0, $d1, $d2, $d3, $d4, $d4
    db $d3, $d2, $d1, $d0, $e0, $e1, $e2, $e3, $e4, $e4, $e3, $e2, $e1, $e0, $f0, $f1
    db $f2, $f3, $f4, $f5, $f3, $f2, $f1, $f0, $c8, $c9, $ca, $cb, $cc, $cc, $cb, $ca
    db $c9, $c8, $d8, $d9, $da, $db, $dc, $dc, $db, $da, $d9, $d8, $e8, $e9, $ea, $eb
    db $ec, $ec, $eb, $ea, $e9, $e8, $f8, $f9, $fa, $fb, $fc, $fc, $fb, $fa, $f9, $f8

Call_013_49ee:
    ld a, l                                       ; $49ee: $7d
    push af                                       ; $49ef: $f5
    ldh a, [$96]                                  ; $49f0: $f0 $96
    push af                                       ; $49f2: $f5
    ld a, $06                                     ; $49f3: $3e $06
    ldh [$96], a                                  ; $49f5: $e0 $96
    ldh [rSVBK], a                                ; $49f7: $e0 $70
    ld a, [$d320]                                 ; $49f9: $fa $20 $d3
    ld d, $00                                     ; $49fc: $16 $00
    ld e, h                                       ; $49fe: $5c
    ld h, $00                                     ; $49ff: $26 $00
    ld l, a                                       ; $4a01: $6f
    add hl, hl                                    ; $4a02: $29
    add hl, hl                                    ; $4a03: $29
    add hl, hl                                    ; $4a04: $29
    add hl, hl                                    ; $4a05: $29
    add hl, de                                    ; $4a06: $19
    add hl, de                                    ; $4a07: $19
    ld de, $4a16                                  ; $4a08: $11 $16 $4a
    add hl, de                                    ; $4a0b: $19
    ld a, [hl+]                                   ; $4a0c: $2a
    ld h, [hl]                                    ; $4a0d: $66
    ld l, a                                       ; $4a0e: $6f
    pop af                                        ; $4a0f: $f1
    ldh [$96], a                                  ; $4a10: $e0 $96
    ldh [rSVBK], a                                ; $4a12: $e0 $70
    pop af                                        ; $4a14: $f1
    ret                                           ; $4a15: $c9


    inc c                                         ; $4a16: $0c
    ld d, h                                       ; $4a17: $54
    ld [bc], a                                    ; $4a18: $02
    ld e, [hl]                                    ; $4a19: $5e
    nop                                           ; $4a1a: $00
    ld d, l                                       ; $4a1b: $55
    nop                                           ; $4a1c: $00
    ld d, [hl]                                    ; $4a1d: $56
    ld c, $54                                     ; $4a1e: $0e $54
    nop                                           ; $4a20: $00
    nop                                           ; $4a21: $00
    nop                                           ; $4a22: $00
    nop                                           ; $4a23: $00
    nop                                           ; $4a24: $00
    nop                                           ; $4a25: $00
    nop                                           ; $4a26: $00
    ld d, e                                       ; $4a27: $53
    ld [bc], a                                    ; $4a28: $02
    ld [hl], b                                    ; $4a29: $70
    ld a, [bc]                                    ; $4a2a: $0a
    ld d, l                                       ; $4a2b: $55
    jr jr_013_4a8b                                ; $4a2c: $18 $5d

    ld a, [bc]                                    ; $4a2e: $0a
    ld d, e                                       ; $4a2f: $53
    nop                                           ; $4a30: $00
    nop                                           ; $4a31: $00
    nop                                           ; $4a32: $00
    nop                                           ; $4a33: $00
    nop                                           ; $4a34: $00
    nop                                           ; $4a35: $00
    ld [bc], a                                    ; $4a36: $02
    ld d, e                                       ; $4a37: $53
    ld [$0a70], sp                                ; $4a38: $08 $70 $0a
    ld d, l                                       ; $4a3b: $55
    inc c                                         ; $4a3c: $0c
    ld l, a                                       ; $4a3d: $6f
    inc c                                         ; $4a3e: $0c
    ld d, e                                       ; $4a3f: $53
    nop                                           ; $4a40: $00
    nop                                           ; $4a41: $00
    nop                                           ; $4a42: $00
    nop                                           ; $4a43: $00
    nop                                           ; $4a44: $00
    nop                                           ; $4a45: $00
    inc b                                         ; $4a46: $04
    ld d, e                                       ; $4a47: $53
    ld [bc], a                                    ; $4a48: $02
    ld [hl], c                                    ; $4a49: $71
    ld a, [bc]                                    ; $4a4a: $0a
    ld d, l                                       ; $4a4b: $55
    inc c                                         ; $4a4c: $0c
    ld h, h                                       ; $4a4d: $64
    ld c, $53                                     ; $4a4e: $0e $53
    nop                                           ; $4a50: $00
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    nop                                           ; $4a53: $00
    nop                                           ; $4a54: $00
    nop                                           ; $4a55: $00
    nop                                           ; $4a56: $00
    ld d, h                                       ; $4a57: $54
    ld b, $71                                     ; $4a58: $06 $71
    ld a, [bc]                                    ; $4a5a: $0a
    ld d, l                                       ; $4a5b: $55
    ld c, $64                                     ; $4a5c: $0e $64
    ld [bc], a                                    ; $4a5e: $02
    ld d, h                                       ; $4a5f: $54
    nop                                           ; $4a60: $00
    nop                                           ; $4a61: $00
    nop                                           ; $4a62: $00
    nop                                           ; $4a63: $00
    nop                                           ; $4a64: $00
    nop                                           ; $4a65: $00
    nop                                           ; $4a66: $00
    ld d, b                                       ; $4a67: $50
    ld [$0c54], sp                                ; $4a68: $08 $54 $0c
    ld e, a                                       ; $4a6b: $5f
    ld c, $70                                     ; $4a6c: $0e $70
    inc b                                         ; $4a6e: $04
    ld d, b                                       ; $4a6f: $50
    nop                                           ; $4a70: $00
    nop                                           ; $4a71: $00
    nop                                           ; $4a72: $00
    nop                                           ; $4a73: $00
    nop                                           ; $4a74: $00
    nop                                           ; $4a75: $00
    nop                                           ; $4a76: $00
    ld d, b                                       ; $4a77: $50
    inc b                                         ; $4a78: $04
    ld d, h                                       ; $4a79: $54
    inc c                                         ; $4a7a: $0c
    ld e, a                                       ; $4a7b: $5f
    ld b, $54                                     ; $4a7c: $06 $54
    inc b                                         ; $4a7e: $04
    ld d, b                                       ; $4a7f: $50
    nop                                           ; $4a80: $00
    nop                                           ; $4a81: $00
    nop                                           ; $4a82: $00
    nop                                           ; $4a83: $00
    nop                                           ; $4a84: $00
    nop                                           ; $4a85: $00
    nop                                           ; $4a86: $00
    ld d, b                                       ; $4a87: $50
    ld [$0a53], sp                                ; $4a88: $08 $53 $0a

jr_013_4a8b:
    ld d, l                                       ; $4a8b: $55
    ld [$0455], sp                                ; $4a8c: $08 $55 $04
    ld d, b                                       ; $4a8f: $50
    nop                                           ; $4a90: $00
    nop                                           ; $4a91: $00
    nop                                           ; $4a92: $00
    nop                                           ; $4a93: $00
    nop                                           ; $4a94: $00
    nop                                           ; $4a95: $00
    nop                                           ; $4a96: $00
    ld d, e                                       ; $4a97: $53
    inc b                                         ; $4a98: $04
    ld e, a                                       ; $4a99: $5f
    inc b                                         ; $4a9a: $04
    ld d, l                                       ; $4a9b: $55
    ld c, $5e                                     ; $4a9c: $0e $5e
    ld a, [bc]                                    ; $4a9e: $0a
    ld d, e                                       ; $4a9f: $53
    nop                                           ; $4aa0: $00
    nop                                           ; $4aa1: $00
    nop                                           ; $4aa2: $00
    nop                                           ; $4aa3: $00
    nop                                           ; $4aa4: $00
    nop                                           ; $4aa5: $00
    ld [bc], a                                    ; $4aa6: $02
    ld d, c                                       ; $4aa7: $51
    ld [$026e], sp                                ; $4aa8: $08 $6e $02
    ld d, l                                       ; $4aab: $55
    jr jr_013_4b07                                ; $4aac: $18 $59

    inc b                                         ; $4aae: $04
    ld d, b                                       ; $4aaf: $50
    nop                                           ; $4ab0: $00
    nop                                           ; $4ab1: $00
    nop                                           ; $4ab2: $00
    nop                                           ; $4ab3: $00
    nop                                           ; $4ab4: $00
    nop                                           ; $4ab5: $00
    nop                                           ; $4ab6: $00
    ld d, b                                       ; $4ab7: $50
    nop                                           ; $4ab8: $00
    ld h, c                                       ; $4ab9: $61
    nop                                           ; $4aba: $00
    ld d, l                                       ; $4abb: $55
    ld [bc], a                                    ; $4abc: $02
    ld d, [hl]                                    ; $4abd: $56
    inc b                                         ; $4abe: $04
    ld d, b                                       ; $4abf: $50
    nop                                           ; $4ac0: $00
    nop                                           ; $4ac1: $00
    nop                                           ; $4ac2: $00
    nop                                           ; $4ac3: $00
    nop                                           ; $4ac4: $00
    nop                                           ; $4ac5: $00
    nop                                           ; $4ac6: $00
    ld d, b                                       ; $4ac7: $50
    ld [bc], a                                    ; $4ac8: $02
    ld h, c                                       ; $4ac9: $61
    nop                                           ; $4aca: $00
    ld d, l                                       ; $4acb: $55
    inc b                                         ; $4acc: $04
    ld d, [hl]                                    ; $4acd: $56
    inc b                                         ; $4ace: $04
    ld d, b                                       ; $4acf: $50
    nop                                           ; $4ad0: $00
    nop                                           ; $4ad1: $00
    nop                                           ; $4ad2: $00
    nop                                           ; $4ad3: $00
    nop                                           ; $4ad4: $00
    nop                                           ; $4ad5: $00
    nop                                           ; $4ad6: $00
    ld d, b                                       ; $4ad7: $50
    inc b                                         ; $4ad8: $04
    ld h, c                                       ; $4ad9: $61
    nop                                           ; $4ada: $00
    ld d, l                                       ; $4adb: $55
    ld b, $56                                     ; $4adc: $06 $56
    inc b                                         ; $4ade: $04
    ld d, b                                       ; $4adf: $50
    nop                                           ; $4ae0: $00
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00
    nop                                           ; $4ae3: $00
    nop                                           ; $4ae4: $00
    nop                                           ; $4ae5: $00
    nop                                           ; $4ae6: $00
    ld d, b                                       ; $4ae7: $50
    ld b, $61                                     ; $4ae8: $06 $61
    nop                                           ; $4aea: $00
    ld d, l                                       ; $4aeb: $55
    ld [$0456], sp                                ; $4aec: $08 $56 $04
    ld d, b                                       ; $4aef: $50
    nop                                           ; $4af0: $00
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    nop                                           ; $4af4: $00
    nop                                           ; $4af5: $00
    nop                                           ; $4af6: $00
    ld d, b                                       ; $4af7: $50
    ld [$0061], sp                                ; $4af8: $08 $61 $00
    ld d, l                                       ; $4afb: $55
    ld a, [bc]                                    ; $4afc: $0a
    ld d, [hl]                                    ; $4afd: $56
    inc b                                         ; $4afe: $04
    ld d, b                                       ; $4aff: $50
    nop                                           ; $4b00: $00
    nop                                           ; $4b01: $00
    nop                                           ; $4b02: $00
    nop                                           ; $4b03: $00
    nop                                           ; $4b04: $00
    nop                                           ; $4b05: $00
    nop                                           ; $4b06: $00

jr_013_4b07:
    ld d, b                                       ; $4b07: $50
    ld a, [bc]                                    ; $4b08: $0a
    ld h, c                                       ; $4b09: $61
    nop                                           ; $4b0a: $00
    ld d, l                                       ; $4b0b: $55
    inc c                                         ; $4b0c: $0c
    ld d, [hl]                                    ; $4b0d: $56
    inc b                                         ; $4b0e: $04
    ld d, b                                       ; $4b0f: $50
    nop                                           ; $4b10: $00
    nop                                           ; $4b11: $00
    nop                                           ; $4b12: $00
    nop                                           ; $4b13: $00
    nop                                           ; $4b14: $00
    nop                                           ; $4b15: $00
    nop                                           ; $4b16: $00
    ld d, b                                       ; $4b17: $50
    ld a, [bc]                                    ; $4b18: $0a
    ld h, b                                       ; $4b19: $60
    nop                                           ; $4b1a: $00
    ld d, l                                       ; $4b1b: $55
    ld c, $56                                     ; $4b1c: $0e $56
    inc b                                         ; $4b1e: $04
    ld d, b                                       ; $4b1f: $50
    nop                                           ; $4b20: $00
    nop                                           ; $4b21: $00
    nop                                           ; $4b22: $00
    nop                                           ; $4b23: $00
    nop                                           ; $4b24: $00
    nop                                           ; $4b25: $00
    nop                                           ; $4b26: $00
    ld d, b                                       ; $4b27: $50
    nop                                           ; $4b28: $00
    ld h, d                                       ; $4b29: $62
    nop                                           ; $4b2a: $00
    ld d, l                                       ; $4b2b: $55
    db $10                                        ; $4b2c: $10
    ld d, [hl]                                    ; $4b2d: $56
    inc b                                         ; $4b2e: $04
    ld d, b                                       ; $4b2f: $50
    nop                                           ; $4b30: $00
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    nop                                           ; $4b33: $00
    nop                                           ; $4b34: $00
    nop                                           ; $4b35: $00
    nop                                           ; $4b36: $00
    ld d, b                                       ; $4b37: $50
    ld [bc], a                                    ; $4b38: $02
    ld h, d                                       ; $4b39: $62
    nop                                           ; $4b3a: $00
    ld d, l                                       ; $4b3b: $55
    ld [de], a                                    ; $4b3c: $12
    ld d, [hl]                                    ; $4b3d: $56
    inc b                                         ; $4b3e: $04
    ld d, b                                       ; $4b3f: $50
    nop                                           ; $4b40: $00
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    nop                                           ; $4b43: $00
    nop                                           ; $4b44: $00
    nop                                           ; $4b45: $00
    nop                                           ; $4b46: $00
    ld d, b                                       ; $4b47: $50
    inc b                                         ; $4b48: $04
    ld h, d                                       ; $4b49: $62
    nop                                           ; $4b4a: $00
    ld d, l                                       ; $4b4b: $55
    inc d                                         ; $4b4c: $14
    ld d, [hl]                                    ; $4b4d: $56
    inc b                                         ; $4b4e: $04
    ld d, b                                       ; $4b4f: $50
    nop                                           ; $4b50: $00
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    nop                                           ; $4b53: $00
    nop                                           ; $4b54: $00
    nop                                           ; $4b55: $00
    nop                                           ; $4b56: $00
    ld d, b                                       ; $4b57: $50
    ld b, $62                                     ; $4b58: $06 $62
    nop                                           ; $4b5a: $00
    ld d, l                                       ; $4b5b: $55
    ld d, $56                                     ; $4b5c: $16 $56
    inc b                                         ; $4b5e: $04
    ld d, b                                       ; $4b5f: $50
    nop                                           ; $4b60: $00
    nop                                           ; $4b61: $00
    nop                                           ; $4b62: $00
    nop                                           ; $4b63: $00
    nop                                           ; $4b64: $00
    nop                                           ; $4b65: $00
    nop                                           ; $4b66: $00
    ld d, b                                       ; $4b67: $50
    ld [$0062], sp                                ; $4b68: $08 $62 $00
    ld d, l                                       ; $4b6b: $55
    jr jr_013_4bc4                                ; $4b6c: $18 $56

    inc b                                         ; $4b6e: $04
    ld d, b                                       ; $4b6f: $50
    nop                                           ; $4b70: $00
    nop                                           ; $4b71: $00
    nop                                           ; $4b72: $00
    nop                                           ; $4b73: $00
    nop                                           ; $4b74: $00
    nop                                           ; $4b75: $00
    nop                                           ; $4b76: $00
    ld d, b                                       ; $4b77: $50
    ld a, [bc]                                    ; $4b78: $0a
    ld h, d                                       ; $4b79: $62
    nop                                           ; $4b7a: $00
    ld d, l                                       ; $4b7b: $55
    ld a, [de]                                    ; $4b7c: $1a
    ld d, [hl]                                    ; $4b7d: $56
    inc b                                         ; $4b7e: $04
    ld d, b                                       ; $4b7f: $50
    nop                                           ; $4b80: $00
    nop                                           ; $4b81: $00
    nop                                           ; $4b82: $00
    nop                                           ; $4b83: $00
    nop                                           ; $4b84: $00
    nop                                           ; $4b85: $00
    nop                                           ; $4b86: $00
    ld d, b                                       ; $4b87: $50
    inc c                                         ; $4b88: $0c
    ld h, d                                       ; $4b89: $62
    ld [bc], a                                    ; $4b8a: $02
    ld d, l                                       ; $4b8b: $55
    inc e                                         ; $4b8c: $1c
    ld d, [hl]                                    ; $4b8d: $56
    inc b                                         ; $4b8e: $04
    ld d, b                                       ; $4b8f: $50
    nop                                           ; $4b90: $00
    nop                                           ; $4b91: $00
    nop                                           ; $4b92: $00
    nop                                           ; $4b93: $00
    nop                                           ; $4b94: $00
    nop                                           ; $4b95: $00
    nop                                           ; $4b96: $00
    ld d, b                                       ; $4b97: $50
    nop                                           ; $4b98: $00
    ld h, e                                       ; $4b99: $63
    nop                                           ; $4b9a: $00
    ld d, l                                       ; $4b9b: $55
    ld e, $56                                     ; $4b9c: $1e $56
    inc b                                         ; $4b9e: $04
    ld d, b                                       ; $4b9f: $50
    nop                                           ; $4ba0: $00
    nop                                           ; $4ba1: $00
    nop                                           ; $4ba2: $00
    nop                                           ; $4ba3: $00
    nop                                           ; $4ba4: $00
    nop                                           ; $4ba5: $00
    nop                                           ; $4ba6: $00
    ld d, b                                       ; $4ba7: $50
    ld [bc], a                                    ; $4ba8: $02
    ld h, e                                       ; $4ba9: $63
    nop                                           ; $4baa: $00
    ld d, l                                       ; $4bab: $55
    nop                                           ; $4bac: $00
    ld d, a                                       ; $4bad: $57
    inc b                                         ; $4bae: $04
    ld d, b                                       ; $4baf: $50
    nop                                           ; $4bb0: $00
    nop                                           ; $4bb1: $00
    nop                                           ; $4bb2: $00
    nop                                           ; $4bb3: $00
    nop                                           ; $4bb4: $00
    nop                                           ; $4bb5: $00
    nop                                           ; $4bb6: $00
    ld d, b                                       ; $4bb7: $50
    inc b                                         ; $4bb8: $04
    ld h, e                                       ; $4bb9: $63
    nop                                           ; $4bba: $00
    ld d, l                                       ; $4bbb: $55
    ld [bc], a                                    ; $4bbc: $02
    ld d, a                                       ; $4bbd: $57
    inc b                                         ; $4bbe: $04
    ld d, b                                       ; $4bbf: $50
    nop                                           ; $4bc0: $00
    nop                                           ; $4bc1: $00
    nop                                           ; $4bc2: $00
    nop                                           ; $4bc3: $00

jr_013_4bc4:
    nop                                           ; $4bc4: $00
    nop                                           ; $4bc5: $00
    nop                                           ; $4bc6: $00
    ld d, b                                       ; $4bc7: $50
    ld b, $63                                     ; $4bc8: $06 $63
    nop                                           ; $4bca: $00
    ld d, l                                       ; $4bcb: $55
    inc b                                         ; $4bcc: $04
    ld d, a                                       ; $4bcd: $57
    inc b                                         ; $4bce: $04
    ld d, b                                       ; $4bcf: $50
    nop                                           ; $4bd0: $00
    nop                                           ; $4bd1: $00
    nop                                           ; $4bd2: $00
    nop                                           ; $4bd3: $00
    nop                                           ; $4bd4: $00
    nop                                           ; $4bd5: $00

    db $02, $50, $08, $63, $00, $55, $06, $57, $06, $50

    nop                                           ; $4be0: $00
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    nop                                           ; $4be3: $00
    nop                                           ; $4be4: $00
    nop                                           ; $4be5: $00

    db $02, $50, $0a, $63, $00, $55, $08, $57, $06, $50

    nop                                           ; $4bf0: $00
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    nop                                           ; $4bf3: $00
    nop                                           ; $4bf4: $00
    nop                                           ; $4bf5: $00

    db $02, $50, $00, $64, $00, $55, $0a, $57, $06, $50

    nop                                           ; $4c00: $00
    nop                                           ; $4c01: $00
    nop                                           ; $4c02: $00
    nop                                           ; $4c03: $00
    nop                                           ; $4c04: $00
    nop                                           ; $4c05: $00
    ld [bc], a                                    ; $4c06: $02
    ld d, b                                       ; $4c07: $50
    ld [bc], a                                    ; $4c08: $02
    ld h, h                                       ; $4c09: $64
    nop                                           ; $4c0a: $00
    ld d, l                                       ; $4c0b: $55
    inc c                                         ; $4c0c: $0c
    ld d, a                                       ; $4c0d: $57
    ld b, $50                                     ; $4c0e: $06 $50
    nop                                           ; $4c10: $00
    nop                                           ; $4c11: $00
    nop                                           ; $4c12: $00
    nop                                           ; $4c13: $00
    nop                                           ; $4c14: $00
    nop                                           ; $4c15: $00
    ld [bc], a                                    ; $4c16: $02
    ld d, b                                       ; $4c17: $50
    inc b                                         ; $4c18: $04
    ld h, h                                       ; $4c19: $64
    ld [bc], a                                    ; $4c1a: $02
    ld d, l                                       ; $4c1b: $55
    ld c, $57                                     ; $4c1c: $0e $57
    ld b, $50                                     ; $4c1e: $06 $50
    nop                                           ; $4c20: $00
    nop                                           ; $4c21: $00
    nop                                           ; $4c22: $00
    nop                                           ; $4c23: $00
    nop                                           ; $4c24: $00
    nop                                           ; $4c25: $00
    ld [bc], a                                    ; $4c26: $02
    ld d, b                                       ; $4c27: $50
    ld b, $64                                     ; $4c28: $06 $64
    nop                                           ; $4c2a: $00
    ld d, l                                       ; $4c2b: $55
    db $10                                        ; $4c2c: $10
    ld d, a                                       ; $4c2d: $57
    ld b, $50                                     ; $4c2e: $06 $50
    nop                                           ; $4c30: $00
    nop                                           ; $4c31: $00
    nop                                           ; $4c32: $00
    nop                                           ; $4c33: $00
    nop                                           ; $4c34: $00
    nop                                           ; $4c35: $00
    ld [bc], a                                    ; $4c36: $02
    ld d, b                                       ; $4c37: $50
    ld [$0064], sp                                ; $4c38: $08 $64 $00
    ld d, l                                       ; $4c3b: $55
    ld [de], a                                    ; $4c3c: $12
    ld d, a                                       ; $4c3d: $57
    ld b, $50                                     ; $4c3e: $06 $50
    nop                                           ; $4c40: $00
    nop                                           ; $4c41: $00
    nop                                           ; $4c42: $00
    nop                                           ; $4c43: $00
    nop                                           ; $4c44: $00
    nop                                           ; $4c45: $00
    ld [bc], a                                    ; $4c46: $02
    ld d, b                                       ; $4c47: $50
    ld a, [bc]                                    ; $4c48: $0a
    ld h, h                                       ; $4c49: $64
    nop                                           ; $4c4a: $00
    ld d, l                                       ; $4c4b: $55
    inc d                                         ; $4c4c: $14
    ld d, a                                       ; $4c4d: $57
    ld b, $50                                     ; $4c4e: $06 $50
    nop                                           ; $4c50: $00
    nop                                           ; $4c51: $00
    nop                                           ; $4c52: $00
    nop                                           ; $4c53: $00
    nop                                           ; $4c54: $00
    nop                                           ; $4c55: $00
    ld [bc], a                                    ; $4c56: $02
    ld d, b                                       ; $4c57: $50
    nop                                           ; $4c58: $00
    ld h, l                                       ; $4c59: $65
    nop                                           ; $4c5a: $00
    ld d, l                                       ; $4c5b: $55
    ld d, $57                                     ; $4c5c: $16 $57
    ld b, $50                                     ; $4c5e: $06 $50
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00
    nop                                           ; $4c62: $00
    nop                                           ; $4c63: $00
    nop                                           ; $4c64: $00
    nop                                           ; $4c65: $00
    ld [bc], a                                    ; $4c66: $02
    ld d, b                                       ; $4c67: $50
    ld [bc], a                                    ; $4c68: $02
    ld h, l                                       ; $4c69: $65
    nop                                           ; $4c6a: $00
    ld d, l                                       ; $4c6b: $55
    jr jr_013_4cc5                                ; $4c6c: $18 $57

    ld b, $50                                     ; $4c6e: $06 $50
    nop                                           ; $4c70: $00
    nop                                           ; $4c71: $00
    nop                                           ; $4c72: $00
    nop                                           ; $4c73: $00
    nop                                           ; $4c74: $00
    nop                                           ; $4c75: $00
    ld [bc], a                                    ; $4c76: $02
    ld d, b                                       ; $4c77: $50
    inc b                                         ; $4c78: $04
    ld h, l                                       ; $4c79: $65
    nop                                           ; $4c7a: $00
    ld d, l                                       ; $4c7b: $55
    ld a, [de]                                    ; $4c7c: $1a
    ld d, a                                       ; $4c7d: $57
    ld b, $50                                     ; $4c7e: $06 $50
    nop                                           ; $4c80: $00
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    nop                                           ; $4c83: $00
    nop                                           ; $4c84: $00
    nop                                           ; $4c85: $00
    ld [bc], a                                    ; $4c86: $02
    ld d, b                                       ; $4c87: $50
    ld b, $65                                     ; $4c88: $06 $65
    nop                                           ; $4c8a: $00
    ld d, l                                       ; $4c8b: $55
    nop                                           ; $4c8c: $00
    ld e, b                                       ; $4c8d: $58
    ld b, $50                                     ; $4c8e: $06 $50
    nop                                           ; $4c90: $00
    nop                                           ; $4c91: $00
    nop                                           ; $4c92: $00
    nop                                           ; $4c93: $00
    nop                                           ; $4c94: $00
    nop                                           ; $4c95: $00
    ld [bc], a                                    ; $4c96: $02
    ld d, b                                       ; $4c97: $50
    ld [$0065], sp                                ; $4c98: $08 $65 $00
    ld d, l                                       ; $4c9b: $55
    ld [bc], a                                    ; $4c9c: $02
    ld e, b                                       ; $4c9d: $58
    ld b, $50                                     ; $4c9e: $06 $50
    nop                                           ; $4ca0: $00
    nop                                           ; $4ca1: $00
    nop                                           ; $4ca2: $00
    nop                                           ; $4ca3: $00
    nop                                           ; $4ca4: $00
    nop                                           ; $4ca5: $00

    db $02, $50, $08, $6a

    nop                                           ; $4caa: $00
    ld d, l                                       ; $4cab: $55
    inc b                                         ; $4cac: $04
    ld e, b                                       ; $4cad: $58

    db $06, $50

    nop                                           ; $4cb0: $00
    nop                                           ; $4cb1: $00
    nop                                           ; $4cb2: $00
    nop                                           ; $4cb3: $00
    nop                                           ; $4cb4: $00
    nop                                           ; $4cb5: $00
    ld [bc], a                                    ; $4cb6: $02
    ld d, b                                       ; $4cb7: $50
    nop                                           ; $4cb8: $00
    ld h, [hl]                                    ; $4cb9: $66
    nop                                           ; $4cba: $00
    ld d, l                                       ; $4cbb: $55
    ld b, $58                                     ; $4cbc: $06 $58
    ld b, $50                                     ; $4cbe: $06 $50
    nop                                           ; $4cc0: $00
    nop                                           ; $4cc1: $00
    nop                                           ; $4cc2: $00
    nop                                           ; $4cc3: $00
    nop                                           ; $4cc4: $00

jr_013_4cc5:
    nop                                           ; $4cc5: $00
    ld [bc], a                                    ; $4cc6: $02
    ld d, b                                       ; $4cc7: $50
    ld [bc], a                                    ; $4cc8: $02
    ld h, [hl]                                    ; $4cc9: $66
    nop                                           ; $4cca: $00
    ld d, l                                       ; $4ccb: $55
    ld [$0658], sp                                ; $4ccc: $08 $58 $06
    ld d, b                                       ; $4ccf: $50
    nop                                           ; $4cd0: $00
    nop                                           ; $4cd1: $00
    nop                                           ; $4cd2: $00
    nop                                           ; $4cd3: $00
    nop                                           ; $4cd4: $00
    nop                                           ; $4cd5: $00
    ld [bc], a                                    ; $4cd6: $02
    ld d, b                                       ; $4cd7: $50
    inc b                                         ; $4cd8: $04
    ld h, [hl]                                    ; $4cd9: $66
    nop                                           ; $4cda: $00
    ld d, l                                       ; $4cdb: $55
    ld a, [bc]                                    ; $4cdc: $0a
    ld e, b                                       ; $4cdd: $58
    ld b, $50                                     ; $4cde: $06 $50
    nop                                           ; $4ce0: $00
    nop                                           ; $4ce1: $00
    nop                                           ; $4ce2: $00
    nop                                           ; $4ce3: $00
    nop                                           ; $4ce4: $00
    nop                                           ; $4ce5: $00
    ld [bc], a                                    ; $4ce6: $02
    ld d, b                                       ; $4ce7: $50
    ld b, $66                                     ; $4ce8: $06 $66
    nop                                           ; $4cea: $00
    ld d, l                                       ; $4ceb: $55
    inc c                                         ; $4cec: $0c
    ld e, b                                       ; $4ced: $58
    ld b, $50                                     ; $4cee: $06 $50
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    nop                                           ; $4cf2: $00
    nop                                           ; $4cf3: $00
    nop                                           ; $4cf4: $00
    nop                                           ; $4cf5: $00
    nop                                           ; $4cf6: $00
    ld d, c                                       ; $4cf7: $51
    inc b                                         ; $4cf8: $04
    ld h, a                                       ; $4cf9: $67
    nop                                           ; $4cfa: $00
    ld d, l                                       ; $4cfb: $55
    ld c, $58                                     ; $4cfc: $0e $58
    inc b                                         ; $4cfe: $04
    ld d, c                                       ; $4cff: $51
    nop                                           ; $4d00: $00
    nop                                           ; $4d01: $00
    nop                                           ; $4d02: $00
    nop                                           ; $4d03: $00
    nop                                           ; $4d04: $00
    nop                                           ; $4d05: $00
    nop                                           ; $4d06: $00
    ld d, c                                       ; $4d07: $51
    ld b, $67                                     ; $4d08: $06 $67
    nop                                           ; $4d0a: $00
    ld d, l                                       ; $4d0b: $55
    db $10                                        ; $4d0c: $10
    ld e, b                                       ; $4d0d: $58
    inc b                                         ; $4d0e: $04
    ld d, c                                       ; $4d0f: $51
    nop                                           ; $4d10: $00
    nop                                           ; $4d11: $00
    nop                                           ; $4d12: $00
    nop                                           ; $4d13: $00
    nop                                           ; $4d14: $00
    nop                                           ; $4d15: $00
    nop                                           ; $4d16: $00
    ld d, c                                       ; $4d17: $51
    ld [$0067], sp                                ; $4d18: $08 $67 $00
    ld d, l                                       ; $4d1b: $55
    ld [de], a                                    ; $4d1c: $12
    ld e, b                                       ; $4d1d: $58
    inc b                                         ; $4d1e: $04
    ld d, c                                       ; $4d1f: $51
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    nop                                           ; $4d22: $00
    nop                                           ; $4d23: $00
    nop                                           ; $4d24: $00
    nop                                           ; $4d25: $00
    nop                                           ; $4d26: $00
    ld d, c                                       ; $4d27: $51
    nop                                           ; $4d28: $00
    ld l, b                                       ; $4d29: $68
    nop                                           ; $4d2a: $00
    ld d, l                                       ; $4d2b: $55
    inc d                                         ; $4d2c: $14
    ld e, b                                       ; $4d2d: $58
    inc b                                         ; $4d2e: $04
    ld d, c                                       ; $4d2f: $51
    nop                                           ; $4d30: $00
    nop                                           ; $4d31: $00
    nop                                           ; $4d32: $00
    nop                                           ; $4d33: $00
    nop                                           ; $4d34: $00
    nop                                           ; $4d35: $00
    nop                                           ; $4d36: $00
    ld d, c                                       ; $4d37: $51
    ld [bc], a                                    ; $4d38: $02
    ld l, b                                       ; $4d39: $68
    nop                                           ; $4d3a: $00
    ld d, l                                       ; $4d3b: $55
    ld d, $58                                     ; $4d3c: $16 $58
    inc b                                         ; $4d3e: $04
    ld d, c                                       ; $4d3f: $51
    nop                                           ; $4d40: $00
    nop                                           ; $4d41: $00
    nop                                           ; $4d42: $00
    nop                                           ; $4d43: $00
    nop                                           ; $4d44: $00
    nop                                           ; $4d45: $00
    nop                                           ; $4d46: $00
    ld d, c                                       ; $4d47: $51
    inc b                                         ; $4d48: $04
    ld l, b                                       ; $4d49: $68
    nop                                           ; $4d4a: $00
    ld d, l                                       ; $4d4b: $55
    nop                                           ; $4d4c: $00
    ld e, c                                       ; $4d4d: $59
    inc b                                         ; $4d4e: $04
    ld d, c                                       ; $4d4f: $51
    nop                                           ; $4d50: $00
    nop                                           ; $4d51: $00
    nop                                           ; $4d52: $00
    nop                                           ; $4d53: $00
    nop                                           ; $4d54: $00
    nop                                           ; $4d55: $00
    nop                                           ; $4d56: $00
    ld d, c                                       ; $4d57: $51
    ld b, $68                                     ; $4d58: $06 $68
    nop                                           ; $4d5a: $00
    ld d, l                                       ; $4d5b: $55
    ld [bc], a                                    ; $4d5c: $02
    ld e, c                                       ; $4d5d: $59
    inc b                                         ; $4d5e: $04
    ld d, c                                       ; $4d5f: $51
    nop                                           ; $4d60: $00
    nop                                           ; $4d61: $00
    nop                                           ; $4d62: $00
    nop                                           ; $4d63: $00
    nop                                           ; $4d64: $00
    nop                                           ; $4d65: $00
    nop                                           ; $4d66: $00
    ld d, c                                       ; $4d67: $51
    ld [$0068], sp                                ; $4d68: $08 $68 $00
    ld d, l                                       ; $4d6b: $55
    inc b                                         ; $4d6c: $04
    ld e, c                                       ; $4d6d: $59
    inc b                                         ; $4d6e: $04
    ld d, c                                       ; $4d6f: $51
    nop                                           ; $4d70: $00
    nop                                           ; $4d71: $00
    nop                                           ; $4d72: $00
    nop                                           ; $4d73: $00
    nop                                           ; $4d74: $00
    nop                                           ; $4d75: $00
    nop                                           ; $4d76: $00
    ld d, c                                       ; $4d77: $51
    nop                                           ; $4d78: $00
    ld l, c                                       ; $4d79: $69
    nop                                           ; $4d7a: $00
    ld d, l                                       ; $4d7b: $55
    ld b, $59                                     ; $4d7c: $06 $59
    inc b                                         ; $4d7e: $04
    ld d, c                                       ; $4d7f: $51
    nop                                           ; $4d80: $00
    nop                                           ; $4d81: $00
    nop                                           ; $4d82: $00
    nop                                           ; $4d83: $00
    nop                                           ; $4d84: $00
    nop                                           ; $4d85: $00
    nop                                           ; $4d86: $00
    ld d, c                                       ; $4d87: $51
    ld [bc], a                                    ; $4d88: $02
    ld l, c                                       ; $4d89: $69
    nop                                           ; $4d8a: $00
    ld d, l                                       ; $4d8b: $55
    ld [$0459], sp                                ; $4d8c: $08 $59 $04
    ld d, c                                       ; $4d8f: $51
    nop                                           ; $4d90: $00
    nop                                           ; $4d91: $00
    nop                                           ; $4d92: $00
    nop                                           ; $4d93: $00
    nop                                           ; $4d94: $00
    nop                                           ; $4d95: $00
    nop                                           ; $4d96: $00
    ld d, c                                       ; $4d97: $51
    inc b                                         ; $4d98: $04
    ld l, c                                       ; $4d99: $69
    nop                                           ; $4d9a: $00
    ld d, l                                       ; $4d9b: $55
    ld a, [bc]                                    ; $4d9c: $0a
    ld e, c                                       ; $4d9d: $59
    inc b                                         ; $4d9e: $04
    ld d, c                                       ; $4d9f: $51
    nop                                           ; $4da0: $00
    nop                                           ; $4da1: $00
    nop                                           ; $4da2: $00
    nop                                           ; $4da3: $00
    nop                                           ; $4da4: $00
    nop                                           ; $4da5: $00
    nop                                           ; $4da6: $00
    ld d, c                                       ; $4da7: $51
    ld b, $69                                     ; $4da8: $06 $69
    nop                                           ; $4daa: $00
    ld d, l                                       ; $4dab: $55
    inc c                                         ; $4dac: $0c
    ld e, c                                       ; $4dad: $59
    inc b                                         ; $4dae: $04
    ld d, c                                       ; $4daf: $51
    nop                                           ; $4db0: $00
    nop                                           ; $4db1: $00
    nop                                           ; $4db2: $00
    nop                                           ; $4db3: $00
    nop                                           ; $4db4: $00
    nop                                           ; $4db5: $00
    nop                                           ; $4db6: $00
    ld d, c                                       ; $4db7: $51
    ld a, [bc]                                    ; $4db8: $0a
    ld h, [hl]                                    ; $4db9: $66
    nop                                           ; $4dba: $00
    ld d, l                                       ; $4dbb: $55
    ld c, $59                                     ; $4dbc: $0e $59
    inc b                                         ; $4dbe: $04
    ld d, c                                       ; $4dbf: $51
    nop                                           ; $4dc0: $00
    nop                                           ; $4dc1: $00
    nop                                           ; $4dc2: $00
    nop                                           ; $4dc3: $00
    nop                                           ; $4dc4: $00
    nop                                           ; $4dc5: $00
    nop                                           ; $4dc6: $00
    ld d, c                                       ; $4dc7: $51
    nop                                           ; $4dc8: $00
    ld l, d                                       ; $4dc9: $6a
    nop                                           ; $4dca: $00
    ld d, l                                       ; $4dcb: $55
    db $10                                        ; $4dcc: $10
    ld e, c                                       ; $4dcd: $59
    inc b                                         ; $4dce: $04
    ld d, c                                       ; $4dcf: $51
    nop                                           ; $4dd0: $00
    nop                                           ; $4dd1: $00
    nop                                           ; $4dd2: $00
    nop                                           ; $4dd3: $00
    nop                                           ; $4dd4: $00
    nop                                           ; $4dd5: $00
    nop                                           ; $4dd6: $00
    ld d, c                                       ; $4dd7: $51
    ld [bc], a                                    ; $4dd8: $02
    ld l, d                                       ; $4dd9: $6a
    nop                                           ; $4dda: $00
    ld d, l                                       ; $4ddb: $55
    ld [de], a                                    ; $4ddc: $12
    ld e, c                                       ; $4ddd: $59
    inc b                                         ; $4dde: $04
    ld d, c                                       ; $4ddf: $51
    nop                                           ; $4de0: $00
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    nop                                           ; $4de3: $00
    nop                                           ; $4de4: $00
    nop                                           ; $4de5: $00
    nop                                           ; $4de6: $00
    ld d, c                                       ; $4de7: $51
    inc b                                         ; $4de8: $04
    ld l, d                                       ; $4de9: $6a
    nop                                           ; $4dea: $00
    ld d, l                                       ; $4deb: $55
    inc d                                         ; $4dec: $14
    ld e, c                                       ; $4ded: $59
    inc b                                         ; $4dee: $04
    ld d, c                                       ; $4def: $51
    nop                                           ; $4df0: $00
    nop                                           ; $4df1: $00
    nop                                           ; $4df2: $00
    nop                                           ; $4df3: $00
    nop                                           ; $4df4: $00
    nop                                           ; $4df5: $00
    nop                                           ; $4df6: $00
    ld d, c                                       ; $4df7: $51
    ld b, $6a                                     ; $4df8: $06 $6a
    nop                                           ; $4dfa: $00
    ld d, l                                       ; $4dfb: $55
    ld d, $59                                     ; $4dfc: $16 $59
    inc b                                         ; $4dfe: $04
    ld d, c                                       ; $4dff: $51
    nop                                           ; $4e00: $00
    nop                                           ; $4e01: $00
    nop                                           ; $4e02: $00
    nop                                           ; $4e03: $00
    nop                                           ; $4e04: $00
    nop                                           ; $4e05: $00
    nop                                           ; $4e06: $00
    ld d, c                                       ; $4e07: $51
    ld a, [bc]                                    ; $4e08: $0a
    ld h, l                                       ; $4e09: $65
    nop                                           ; $4e0a: $00
    ld d, l                                       ; $4e0b: $55
    ld c, $52                                     ; $4e0c: $0e $52
    inc b                                         ; $4e0e: $04
    ld d, c                                       ; $4e0f: $51
    nop                                           ; $4e10: $00
    nop                                           ; $4e11: $00
    nop                                           ; $4e12: $00
    nop                                           ; $4e13: $00
    nop                                           ; $4e14: $00
    nop                                           ; $4e15: $00
    ld [bc], a                                    ; $4e16: $02
    ld d, c                                       ; $4e17: $51
    nop                                           ; $4e18: $00
    ld l, e                                       ; $4e19: $6b
    nop                                           ; $4e1a: $00
    ld d, l                                       ; $4e1b: $55
    nop                                           ; $4e1c: $00
    ld e, d                                       ; $4e1d: $5a
    ld b, $51                                     ; $4e1e: $06 $51
    nop                                           ; $4e20: $00
    nop                                           ; $4e21: $00
    nop                                           ; $4e22: $00
    nop                                           ; $4e23: $00
    nop                                           ; $4e24: $00
    nop                                           ; $4e25: $00
    ld [bc], a                                    ; $4e26: $02
    ld d, c                                       ; $4e27: $51
    ld [bc], a                                    ; $4e28: $02
    ld l, e                                       ; $4e29: $6b
    nop                                           ; $4e2a: $00
    ld d, l                                       ; $4e2b: $55
    ld [bc], a                                    ; $4e2c: $02
    ld e, d                                       ; $4e2d: $5a
    ld b, $51                                     ; $4e2e: $06 $51
    nop                                           ; $4e30: $00
    nop                                           ; $4e31: $00
    nop                                           ; $4e32: $00
    nop                                           ; $4e33: $00
    nop                                           ; $4e34: $00
    nop                                           ; $4e35: $00
    ld [bc], a                                    ; $4e36: $02
    ld d, c                                       ; $4e37: $51
    inc b                                         ; $4e38: $04
    ld l, e                                       ; $4e39: $6b
    nop                                           ; $4e3a: $00
    ld d, l                                       ; $4e3b: $55
    inc b                                         ; $4e3c: $04
    ld e, d                                       ; $4e3d: $5a
    ld b, $51                                     ; $4e3e: $06 $51
    nop                                           ; $4e40: $00
    nop                                           ; $4e41: $00
    nop                                           ; $4e42: $00
    nop                                           ; $4e43: $00
    nop                                           ; $4e44: $00
    nop                                           ; $4e45: $00
    ld [bc], a                                    ; $4e46: $02
    ld d, c                                       ; $4e47: $51
    ld b, $6b                                     ; $4e48: $06 $6b
    nop                                           ; $4e4a: $00
    ld d, l                                       ; $4e4b: $55
    ld b, $5a                                     ; $4e4c: $06 $5a
    ld b, $51                                     ; $4e4e: $06 $51
    nop                                           ; $4e50: $00
    nop                                           ; $4e51: $00
    nop                                           ; $4e52: $00
    nop                                           ; $4e53: $00
    nop                                           ; $4e54: $00
    nop                                           ; $4e55: $00
    ld [bc], a                                    ; $4e56: $02
    ld d, c                                       ; $4e57: $51
    ld [$006b], sp                                ; $4e58: $08 $6b $00
    ld d, l                                       ; $4e5b: $55
    ld [$065a], sp                                ; $4e5c: $08 $5a $06
    ld d, c                                       ; $4e5f: $51
    nop                                           ; $4e60: $00
    nop                                           ; $4e61: $00
    nop                                           ; $4e62: $00
    nop                                           ; $4e63: $00
    nop                                           ; $4e64: $00
    nop                                           ; $4e65: $00
    ld [bc], a                                    ; $4e66: $02
    ld d, c                                       ; $4e67: $51
    ld a, [bc]                                    ; $4e68: $0a
    ld l, l                                       ; $4e69: $6d
    nop                                           ; $4e6a: $00
    ld d, l                                       ; $4e6b: $55
    ld a, [bc]                                    ; $4e6c: $0a
    ld e, d                                       ; $4e6d: $5a
    ld b, $51                                     ; $4e6e: $06 $51
    nop                                           ; $4e70: $00
    nop                                           ; $4e71: $00
    nop                                           ; $4e72: $00
    nop                                           ; $4e73: $00
    nop                                           ; $4e74: $00
    nop                                           ; $4e75: $00
    ld [bc], a                                    ; $4e76: $02
    ld d, c                                       ; $4e77: $51
    ld b, $53                                     ; $4e78: $06 $53
    nop                                           ; $4e7a: $00
    ld d, l                                       ; $4e7b: $55
    inc c                                         ; $4e7c: $0c
    ld e, d                                       ; $4e7d: $5a
    ld b, $51                                     ; $4e7e: $06 $51
    nop                                           ; $4e80: $00
    nop                                           ; $4e81: $00
    nop                                           ; $4e82: $00
    nop                                           ; $4e83: $00
    nop                                           ; $4e84: $00
    nop                                           ; $4e85: $00
    ld [bc], a                                    ; $4e86: $02
    ld d, c                                       ; $4e87: $51
    nop                                           ; $4e88: $00
    ld l, h                                       ; $4e89: $6c
    nop                                           ; $4e8a: $00
    ld d, l                                       ; $4e8b: $55
    ld c, $5a                                     ; $4e8c: $0e $5a
    ld b, $51                                     ; $4e8e: $06 $51
    nop                                           ; $4e90: $00
    nop                                           ; $4e91: $00
    nop                                           ; $4e92: $00
    nop                                           ; $4e93: $00
    nop                                           ; $4e94: $00
    nop                                           ; $4e95: $00
    ld [bc], a                                    ; $4e96: $02
    ld d, c                                       ; $4e97: $51
    ld [bc], a                                    ; $4e98: $02
    ld l, h                                       ; $4e99: $6c
    nop                                           ; $4e9a: $00
    ld d, l                                       ; $4e9b: $55
    db $10                                        ; $4e9c: $10
    ld e, d                                       ; $4e9d: $5a
    ld b, $51                                     ; $4e9e: $06 $51
    nop                                           ; $4ea0: $00
    nop                                           ; $4ea1: $00
    nop                                           ; $4ea2: $00
    nop                                           ; $4ea3: $00
    nop                                           ; $4ea4: $00
    nop                                           ; $4ea5: $00
    ld [bc], a                                    ; $4ea6: $02
    ld d, c                                       ; $4ea7: $51
    inc b                                         ; $4ea8: $04
    ld l, h                                       ; $4ea9: $6c
    nop                                           ; $4eaa: $00
    ld d, l                                       ; $4eab: $55
    ld [de], a                                    ; $4eac: $12
    ld e, d                                       ; $4ead: $5a
    ld b, $51                                     ; $4eae: $06 $51
    nop                                           ; $4eb0: $00
    nop                                           ; $4eb1: $00
    nop                                           ; $4eb2: $00
    nop                                           ; $4eb3: $00
    nop                                           ; $4eb4: $00
    nop                                           ; $4eb5: $00
    ld [bc], a                                    ; $4eb6: $02
    ld d, c                                       ; $4eb7: $51
    ld b, $6c                                     ; $4eb8: $06 $6c
    nop                                           ; $4eba: $00
    ld d, l                                       ; $4ebb: $55
    inc d                                         ; $4ebc: $14
    ld e, d                                       ; $4ebd: $5a
    ld b, $51                                     ; $4ebe: $06 $51
    nop                                           ; $4ec0: $00
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00
    nop                                           ; $4ec4: $00
    nop                                           ; $4ec5: $00
    ld [bc], a                                    ; $4ec6: $02
    ld d, c                                       ; $4ec7: $51
    ld [$006c], sp                                ; $4ec8: $08 $6c $00
    ld d, l                                       ; $4ecb: $55
    ld d, $5a                                     ; $4ecc: $16 $5a
    ld b, $51                                     ; $4ece: $06 $51
    nop                                           ; $4ed0: $00
    nop                                           ; $4ed1: $00
    nop                                           ; $4ed2: $00
    nop                                           ; $4ed3: $00
    nop                                           ; $4ed4: $00
    nop                                           ; $4ed5: $00
    ld [bc], a                                    ; $4ed6: $02
    ld d, c                                       ; $4ed7: $51
    ld a, [bc]                                    ; $4ed8: $0a
    ld l, h                                       ; $4ed9: $6c
    ld [bc], a                                    ; $4eda: $02
    ld d, l                                       ; $4edb: $55
    jr jr_013_4f38                                ; $4edc: $18 $5a

    ld b, $51                                     ; $4ede: $06 $51
    nop                                           ; $4ee0: $00
    nop                                           ; $4ee1: $00
    nop                                           ; $4ee2: $00
    nop                                           ; $4ee3: $00
    nop                                           ; $4ee4: $00
    nop                                           ; $4ee5: $00
    ld [bc], a                                    ; $4ee6: $02
    ld d, c                                       ; $4ee7: $51
    nop                                           ; $4ee8: $00
    ld l, l                                       ; $4ee9: $6d
    nop                                           ; $4eea: $00
    ld d, l                                       ; $4eeb: $55
    inc c                                         ; $4eec: $0c
    ld d, b                                       ; $4eed: $50
    ld b, $51                                     ; $4eee: $06 $51
    nop                                           ; $4ef0: $00
    nop                                           ; $4ef1: $00
    nop                                           ; $4ef2: $00
    nop                                           ; $4ef3: $00
    nop                                           ; $4ef4: $00
    nop                                           ; $4ef5: $00
    ld [bc], a                                    ; $4ef6: $02
    ld d, c                                       ; $4ef7: $51
    ld [bc], a                                    ; $4ef8: $02
    ld l, l                                       ; $4ef9: $6d
    nop                                           ; $4efa: $00
    ld d, l                                       ; $4efb: $55
    ld c, $50                                     ; $4efc: $0e $50
    ld b, $51                                     ; $4efe: $06 $51
    nop                                           ; $4f00: $00
    nop                                           ; $4f01: $00
    nop                                           ; $4f02: $00
    nop                                           ; $4f03: $00
    nop                                           ; $4f04: $00
    nop                                           ; $4f05: $00
    ld [bc], a                                    ; $4f06: $02
    ld d, c                                       ; $4f07: $51
    inc b                                         ; $4f08: $04
    ld l, l                                       ; $4f09: $6d
    nop                                           ; $4f0a: $00
    ld d, l                                       ; $4f0b: $55
    inc c                                         ; $4f0c: $0c
    ld d, c                                       ; $4f0d: $51
    ld b, $51                                     ; $4f0e: $06 $51
    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    nop                                           ; $4f12: $00
    nop                                           ; $4f13: $00
    nop                                           ; $4f14: $00
    nop                                           ; $4f15: $00
    ld [bc], a                                    ; $4f16: $02
    ld d, c                                       ; $4f17: $51
    ld b, $6d                                     ; $4f18: $06 $6d
    nop                                           ; $4f1a: $00
    ld d, l                                       ; $4f1b: $55
    ld c, $51                                     ; $4f1c: $0e $51
    ld b, $51                                     ; $4f1e: $06 $51
    nop                                           ; $4f20: $00
    nop                                           ; $4f21: $00
    nop                                           ; $4f22: $00
    nop                                           ; $4f23: $00
    nop                                           ; $4f24: $00
    nop                                           ; $4f25: $00
    ld [bc], a                                    ; $4f26: $02
    ld d, c                                       ; $4f27: $51
    ld [$006d], sp                                ; $4f28: $08 $6d $00
    ld d, l                                       ; $4f2b: $55
    nop                                           ; $4f2c: $00
    ld e, e                                       ; $4f2d: $5b
    ld b, $51                                     ; $4f2e: $06 $51
    nop                                           ; $4f30: $00
    nop                                           ; $4f31: $00
    nop                                           ; $4f32: $00
    nop                                           ; $4f33: $00
    nop                                           ; $4f34: $00
    nop                                           ; $4f35: $00
    nop                                           ; $4f36: $00
    ld d, d                                       ; $4f37: $52

jr_013_4f38:
    ld a, [bc]                                    ; $4f38: $0a
    ld l, e                                       ; $4f39: $6b
    nop                                           ; $4f3a: $00
    ld d, l                                       ; $4f3b: $55
    ld [bc], a                                    ; $4f3c: $02
    ld e, e                                       ; $4f3d: $5b
    inc b                                         ; $4f3e: $04
    ld d, d                                       ; $4f3f: $52
    nop                                           ; $4f40: $00
    nop                                           ; $4f41: $00
    nop                                           ; $4f42: $00
    nop                                           ; $4f43: $00
    nop                                           ; $4f44: $00
    nop                                           ; $4f45: $00
    nop                                           ; $4f46: $00
    ld d, d                                       ; $4f47: $52
    ld b, $55                                     ; $4f48: $06 $55
    nop                                           ; $4f4a: $00
    ld d, l                                       ; $4f4b: $55
    inc b                                         ; $4f4c: $04
    ld e, e                                       ; $4f4d: $5b
    inc b                                         ; $4f4e: $04
    ld d, d                                       ; $4f4f: $52
    nop                                           ; $4f50: $00
    nop                                           ; $4f51: $00
    nop                                           ; $4f52: $00
    nop                                           ; $4f53: $00
    nop                                           ; $4f54: $00
    nop                                           ; $4f55: $00
    nop                                           ; $4f56: $00
    ld d, d                                       ; $4f57: $52
    nop                                           ; $4f58: $00
    ld l, [hl]                                    ; $4f59: $6e
    nop                                           ; $4f5a: $00
    ld d, l                                       ; $4f5b: $55
    ld b, $5b                                     ; $4f5c: $06 $5b
    inc b                                         ; $4f5e: $04
    ld d, d                                       ; $4f5f: $52
    nop                                           ; $4f60: $00
    nop                                           ; $4f61: $00
    nop                                           ; $4f62: $00
    nop                                           ; $4f63: $00
    nop                                           ; $4f64: $00
    nop                                           ; $4f65: $00
    nop                                           ; $4f66: $00
    ld d, d                                       ; $4f67: $52
    ld [$0071], sp                                ; $4f68: $08 $71 $00
    ld d, l                                       ; $4f6b: $55
    ld [$045b], sp                                ; $4f6c: $08 $5b $04
    ld d, d                                       ; $4f6f: $52
    nop                                           ; $4f70: $00
    nop                                           ; $4f71: $00
    nop                                           ; $4f72: $00
    nop                                           ; $4f73: $00
    nop                                           ; $4f74: $00
    nop                                           ; $4f75: $00
    nop                                           ; $4f76: $00
    ld d, d                                       ; $4f77: $52
    ld [bc], a                                    ; $4f78: $02
    ld l, [hl]                                    ; $4f79: $6e
    nop                                           ; $4f7a: $00
    ld d, l                                       ; $4f7b: $55
    ld a, [bc]                                    ; $4f7c: $0a
    ld e, e                                       ; $4f7d: $5b
    inc b                                         ; $4f7e: $04
    ld d, d                                       ; $4f7f: $52
    nop                                           ; $4f80: $00
    nop                                           ; $4f81: $00
    nop                                           ; $4f82: $00
    nop                                           ; $4f83: $00
    nop                                           ; $4f84: $00
    nop                                           ; $4f85: $00
    nop                                           ; $4f86: $00
    ld d, d                                       ; $4f87: $52
    ld a, [bc]                                    ; $4f88: $0a
    ld [hl], c                                    ; $4f89: $71
    ld [bc], a                                    ; $4f8a: $02
    ld d, l                                       ; $4f8b: $55
    inc c                                         ; $4f8c: $0c
    ld e, e                                       ; $4f8d: $5b
    inc b                                         ; $4f8e: $04
    ld d, d                                       ; $4f8f: $52
    nop                                           ; $4f90: $00
    nop                                           ; $4f91: $00
    nop                                           ; $4f92: $00
    nop                                           ; $4f93: $00
    nop                                           ; $4f94: $00
    nop                                           ; $4f95: $00
    nop                                           ; $4f96: $00
    ld d, d                                       ; $4f97: $52
    inc b                                         ; $4f98: $04
    ld l, [hl]                                    ; $4f99: $6e
    nop                                           ; $4f9a: $00
    ld d, l                                       ; $4f9b: $55
    ld c, $5b                                     ; $4f9c: $0e $5b
    inc b                                         ; $4f9e: $04
    ld d, d                                       ; $4f9f: $52
    nop                                           ; $4fa0: $00
    nop                                           ; $4fa1: $00
    nop                                           ; $4fa2: $00
    nop                                           ; $4fa3: $00
    nop                                           ; $4fa4: $00
    nop                                           ; $4fa5: $00
    nop                                           ; $4fa6: $00
    ld d, d                                       ; $4fa7: $52
    ld b, $6e                                     ; $4fa8: $06 $6e
    ld [bc], a                                    ; $4faa: $02
    ld d, l                                       ; $4fab: $55
    db $10                                        ; $4fac: $10
    ld e, e                                       ; $4fad: $5b
    inc b                                         ; $4fae: $04
    ld d, d                                       ; $4faf: $52
    nop                                           ; $4fb0: $00
    nop                                           ; $4fb1: $00
    nop                                           ; $4fb2: $00
    nop                                           ; $4fb3: $00
    nop                                           ; $4fb4: $00
    nop                                           ; $4fb5: $00
    nop                                           ; $4fb6: $00
    ld d, d                                       ; $4fb7: $52
    ld [$006f], sp                                ; $4fb8: $08 $6f $00
    ld d, l                                       ; $4fbb: $55
    ld [de], a                                    ; $4fbc: $12
    ld e, e                                       ; $4fbd: $5b
    inc b                                         ; $4fbe: $04
    ld d, d                                       ; $4fbf: $52
    nop                                           ; $4fc0: $00
    nop                                           ; $4fc1: $00
    nop                                           ; $4fc2: $00
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    nop                                           ; $4fc5: $00
    nop                                           ; $4fc6: $00
    ld d, d                                       ; $4fc7: $52
    nop                                           ; $4fc8: $00
    ld l, a                                       ; $4fc9: $6f
    nop                                           ; $4fca: $00
    ld d, l                                       ; $4fcb: $55
    inc d                                         ; $4fcc: $14
    ld e, e                                       ; $4fcd: $5b
    inc b                                         ; $4fce: $04
    ld d, d                                       ; $4fcf: $52
    nop                                           ; $4fd0: $00
    nop                                           ; $4fd1: $00
    nop                                           ; $4fd2: $00
    nop                                           ; $4fd3: $00
    nop                                           ; $4fd4: $00
    nop                                           ; $4fd5: $00
    nop                                           ; $4fd6: $00
    ld d, d                                       ; $4fd7: $52
    ld [bc], a                                    ; $4fd8: $02
    ld l, a                                       ; $4fd9: $6f
    nop                                           ; $4fda: $00
    ld d, l                                       ; $4fdb: $55
    ld d, $5b                                     ; $4fdc: $16 $5b
    inc b                                         ; $4fde: $04
    ld d, d                                       ; $4fdf: $52
    nop                                           ; $4fe0: $00
    nop                                           ; $4fe1: $00
    nop                                           ; $4fe2: $00
    nop                                           ; $4fe3: $00
    nop                                           ; $4fe4: $00
    nop                                           ; $4fe5: $00
    nop                                           ; $4fe6: $00
    ld d, d                                       ; $4fe7: $52
    inc b                                         ; $4fe8: $04
    ld l, a                                       ; $4fe9: $6f
    nop                                           ; $4fea: $00
    ld d, l                                       ; $4feb: $55
    jr @+$5d                                      ; $4fec: $18 $5b

    inc b                                         ; $4fee: $04
    ld d, d                                       ; $4fef: $52
    nop                                           ; $4ff0: $00
    nop                                           ; $4ff1: $00
    nop                                           ; $4ff2: $00
    nop                                           ; $4ff3: $00
    nop                                           ; $4ff4: $00
    nop                                           ; $4ff5: $00
    nop                                           ; $4ff6: $00
    ld d, d                                       ; $4ff7: $52
    ld b, $5f                                     ; $4ff8: $06 $5f
    ld [bc], a                                    ; $4ffa: $02
    ld d, l                                       ; $4ffb: $55
    inc c                                         ; $4ffc: $0c
    ld h, e                                       ; $4ffd: $63
    inc b                                         ; $4ffe: $04
    ld d, d                                       ; $4fff: $52
    nop                                           ; $5000: $00
    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00
    nop                                           ; $5004: $00
    nop                                           ; $5005: $00
    nop                                           ; $5006: $00
    ld d, d                                       ; $5007: $52
    ld b, $6f                                     ; $5008: $06 $6f
    nop                                           ; $500a: $00
    ld d, l                                       ; $500b: $55
    ld a, [bc]                                    ; $500c: $0a
    ld e, [hl]                                    ; $500d: $5e
    inc b                                         ; $500e: $04
    ld d, d                                       ; $500f: $52
    nop                                           ; $5010: $00
    nop                                           ; $5011: $00
    nop                                           ; $5012: $00
    nop                                           ; $5013: $00
    nop                                           ; $5014: $00
    nop                                           ; $5015: $00
    nop                                           ; $5016: $00
    ld d, d                                       ; $5017: $52
    ld [$005f], sp                                ; $5018: $08 $5f $00
    ld d, l                                       ; $501b: $55
    inc c                                         ; $501c: $0c
    ld e, [hl]                                    ; $501d: $5e
    inc b                                         ; $501e: $04
    ld d, d                                       ; $501f: $52
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    nop                                           ; $5024: $00
    nop                                           ; $5025: $00
    nop                                           ; $5026: $00
    ld d, d                                       ; $5027: $52
    ld a, [bc]                                    ; $5028: $0a
    ld l, a                                       ; $5029: $6f
    nop                                           ; $502a: $00
    ld d, l                                       ; $502b: $55
    inc c                                         ; $502c: $0c
    ld d, d                                       ; $502d: $52
    inc b                                         ; $502e: $04
    ld d, d                                       ; $502f: $52
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    nop                                           ; $5034: $00
    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    ld d, d                                       ; $5037: $52
    inc b                                         ; $5038: $04
    ld e, [hl]                                    ; $5039: $5e
    ld [bc], a                                    ; $503a: $02
    ld d, l                                       ; $503b: $55
    nop                                           ; $503c: $00
    ld e, h                                       ; $503d: $5c
    inc b                                         ; $503e: $04
    ld d, d                                       ; $503f: $52
    nop                                           ; $5040: $00
    nop                                           ; $5041: $00
    nop                                           ; $5042: $00
    nop                                           ; $5043: $00
    nop                                           ; $5044: $00
    nop                                           ; $5045: $00
    nop                                           ; $5046: $00
    ld d, d                                       ; $5047: $52
    ld b, $5e                                     ; $5048: $06 $5e
    nop                                           ; $504a: $00
    ld d, l                                       ; $504b: $55
    ld [bc], a                                    ; $504c: $02
    ld e, h                                       ; $504d: $5c
    inc b                                         ; $504e: $04
    ld d, d                                       ; $504f: $52
    nop                                           ; $5050: $00
    nop                                           ; $5051: $00
    nop                                           ; $5052: $00
    nop                                           ; $5053: $00
    nop                                           ; $5054: $00
    nop                                           ; $5055: $00
    ld [bc], a                                    ; $5056: $02
    ld d, d                                       ; $5057: $52
    ld [$005e], sp                                ; $5058: $08 $5e $00
    ld d, l                                       ; $505b: $55
    inc b                                         ; $505c: $04
    ld e, h                                       ; $505d: $5c
    ld b, $52                                     ; $505e: $06 $52
    nop                                           ; $5060: $00
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    nop                                           ; $5063: $00
    nop                                           ; $5064: $00
    nop                                           ; $5065: $00
    ld [bc], a                                    ; $5066: $02
    ld d, d                                       ; $5067: $52
    ld [$005e], sp                                ; $5068: $08 $5e $00
    ld d, l                                       ; $506b: $55
    ld b, $5c                                     ; $506c: $06 $5c
    ld b, $52                                     ; $506e: $06 $52
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    ld [bc], a                                    ; $5076: $02
    ld d, d                                       ; $5077: $52
    ld [$005e], sp                                ; $5078: $08 $5e $00
    ld d, l                                       ; $507b: $55
    inc b                                         ; $507c: $04
    ld e, h                                       ; $507d: $5c
    ld b, $52                                     ; $507e: $06 $52
    nop                                           ; $5080: $00
    nop                                           ; $5081: $00
    nop                                           ; $5082: $00
    nop                                           ; $5083: $00
    nop                                           ; $5084: $00
    nop                                           ; $5085: $00
    ld [bc], a                                    ; $5086: $02
    ld d, d                                       ; $5087: $52
    ld [$005e], sp                                ; $5088: $08 $5e $00
    ld d, l                                       ; $508b: $55
    ld b, $5c                                     ; $508c: $06 $5c
    ld b, $52                                     ; $508e: $06 $52
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    nop                                           ; $5093: $00
    nop                                           ; $5094: $00
    nop                                           ; $5095: $00
    ld [bc], a                                    ; $5096: $02
    ld d, d                                       ; $5097: $52
    ld [$005e], sp                                ; $5098: $08 $5e $00
    ld d, l                                       ; $509b: $55
    ld [$065c], sp                                ; $509c: $08 $5c $06
    ld d, d                                       ; $509f: $52
    nop                                           ; $50a0: $00
    nop                                           ; $50a1: $00
    nop                                           ; $50a2: $00
    nop                                           ; $50a3: $00
    nop                                           ; $50a4: $00
    nop                                           ; $50a5: $00
    ld [bc], a                                    ; $50a6: $02
    ld d, d                                       ; $50a7: $52
    ld [$005e], sp                                ; $50a8: $08 $5e $00
    ld d, l                                       ; $50ab: $55
    ld a, [bc]                                    ; $50ac: $0a
    ld e, h                                       ; $50ad: $5c
    ld b, $52                                     ; $50ae: $06 $52
    nop                                           ; $50b0: $00
    nop                                           ; $50b1: $00
    nop                                           ; $50b2: $00
    nop                                           ; $50b3: $00
    nop                                           ; $50b4: $00
    nop                                           ; $50b5: $00
    ld [bc], a                                    ; $50b6: $02
    ld d, d                                       ; $50b7: $52
    ld [$005e], sp                                ; $50b8: $08 $5e $00
    ld d, l                                       ; $50bb: $55
    ld [$065c], sp                                ; $50bc: $08 $5c $06
    ld d, d                                       ; $50bf: $52
    nop                                           ; $50c0: $00
    nop                                           ; $50c1: $00
    nop                                           ; $50c2: $00
    nop                                           ; $50c3: $00
    nop                                           ; $50c4: $00
    nop                                           ; $50c5: $00
    ld [bc], a                                    ; $50c6: $02
    ld d, d                                       ; $50c7: $52
    ld [$005e], sp                                ; $50c8: $08 $5e $00
    ld d, l                                       ; $50cb: $55
    ld a, [bc]                                    ; $50cc: $0a
    ld e, h                                       ; $50cd: $5c
    ld b, $52                                     ; $50ce: $06 $52
    nop                                           ; $50d0: $00
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    nop                                           ; $50d3: $00
    nop                                           ; $50d4: $00
    nop                                           ; $50d5: $00
    ld [bc], a                                    ; $50d6: $02
    ld d, d                                       ; $50d7: $52
    ld [$025e], sp                                ; $50d8: $08 $5e $02
    ld d, l                                       ; $50db: $55
    ld c, $5c                                     ; $50dc: $0e $5c
    ld b, $52                                     ; $50de: $06 $52
    nop                                           ; $50e0: $00
    nop                                           ; $50e1: $00
    nop                                           ; $50e2: $00
    nop                                           ; $50e3: $00
    nop                                           ; $50e4: $00
    nop                                           ; $50e5: $00
    ld [bc], a                                    ; $50e6: $02
    ld d, d                                       ; $50e7: $52
    ld [$005e], sp                                ; $50e8: $08 $5e $00
    ld d, l                                       ; $50eb: $55
    inc c                                         ; $50ec: $0c
    ld e, h                                       ; $50ed: $5c
    ld b, $52                                     ; $50ee: $06 $52
    nop                                           ; $50f0: $00
    nop                                           ; $50f1: $00
    nop                                           ; $50f2: $00
    nop                                           ; $50f3: $00
    nop                                           ; $50f4: $00
    nop                                           ; $50f5: $00
    ld [bc], a                                    ; $50f6: $02
    ld d, d                                       ; $50f7: $52
    ld [$025e], sp                                ; $50f8: $08 $5e $02
    ld d, l                                       ; $50fb: $55
    ld c, $5c                                     ; $50fc: $0e $5c
    ld b, $52                                     ; $50fe: $06 $52
    nop                                           ; $5100: $00
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    nop                                           ; $5104: $00
    nop                                           ; $5105: $00
    ld [bc], a                                    ; $5106: $02
    ld d, d                                       ; $5107: $52
    ld [$005e], sp                                ; $5108: $08 $5e $00
    ld d, l                                       ; $510b: $55
    inc c                                         ; $510c: $0c
    ld e, h                                       ; $510d: $5c
    ld b, $52                                     ; $510e: $06 $52
    nop                                           ; $5110: $00
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    ld [bc], a                                    ; $5116: $02
    ld d, d                                       ; $5117: $52
    ld [$025e], sp                                ; $5118: $08 $5e $02
    ld d, l                                       ; $511b: $55
    inc d                                         ; $511c: $14
    ld e, h                                       ; $511d: $5c
    ld b, $52                                     ; $511e: $06 $52
    nop                                           ; $5120: $00
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    nop                                           ; $5123: $00
    nop                                           ; $5124: $00
    nop                                           ; $5125: $00
    ld [bc], a                                    ; $5126: $02
    ld d, d                                       ; $5127: $52
    ld [$005e], sp                                ; $5128: $08 $5e $00
    ld d, l                                       ; $512b: $55
    ld [de], a                                    ; $512c: $12
    ld e, h                                       ; $512d: $5c
    ld b, $52                                     ; $512e: $06 $52
    nop                                           ; $5130: $00
    nop                                           ; $5131: $00
    nop                                           ; $5132: $00
    nop                                           ; $5133: $00
    nop                                           ; $5134: $00
    nop                                           ; $5135: $00
    ld [bc], a                                    ; $5136: $02
    ld d, d                                       ; $5137: $52
    ld [$025e], sp                                ; $5138: $08 $5e $02
    ld d, l                                       ; $513b: $55
    inc d                                         ; $513c: $14
    ld e, h                                       ; $513d: $5c
    ld b, $52                                     ; $513e: $06 $52
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00
    nop                                           ; $5144: $00
    nop                                           ; $5145: $00
    ld [bc], a                                    ; $5146: $02
    ld d, d                                       ; $5147: $52
    ld [$005e], sp                                ; $5148: $08 $5e $00
    ld d, l                                       ; $514b: $55
    db $10                                        ; $514c: $10
    ld e, h                                       ; $514d: $5c
    ld b, $52                                     ; $514e: $06 $52
    nop                                           ; $5150: $00
    nop                                           ; $5151: $00
    nop                                           ; $5152: $00
    nop                                           ; $5153: $00
    nop                                           ; $5154: $00
    nop                                           ; $5155: $00
    ld [bc], a                                    ; $5156: $02
    ld d, d                                       ; $5157: $52
    ld [$005e], sp                                ; $5158: $08 $5e $00
    ld d, l                                       ; $515b: $55
    ld [de], a                                    ; $515c: $12
    ld e, h                                       ; $515d: $5c
    ld b, $52                                     ; $515e: $06 $52
    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    nop                                           ; $5163: $00
    nop                                           ; $5164: $00
    nop                                           ; $5165: $00
    ld [bc], a                                    ; $5166: $02
    ld d, d                                       ; $5167: $52
    ld [$005e], sp                                ; $5168: $08 $5e $00
    ld d, l                                       ; $516b: $55
    db $10                                        ; $516c: $10
    ld e, h                                       ; $516d: $5c
    ld b, $52                                     ; $516e: $06 $52
    nop                                           ; $5170: $00
    nop                                           ; $5171: $00
    nop                                           ; $5172: $00
    nop                                           ; $5173: $00
    nop                                           ; $5174: $00
    nop                                           ; $5175: $00
    nop                                           ; $5176: $00
    ld d, b                                       ; $5177: $50
    ld [$0266], sp                                ; $5178: $08 $66 $02
    ld d, l                                       ; $517b: $55
    ld [bc], a                                    ; $517c: $02
    ld d, [hl]                                    ; $517d: $56
    inc b                                         ; $517e: $04
    ld d, b                                       ; $517f: $50
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    nop                                           ; $5184: $00
    nop                                           ; $5185: $00
    ld [bc], a                                    ; $5186: $02
    ld d, b                                       ; $5187: $50
    ld [$0069], sp                                ; $5188: $08 $69 $00
    ld d, l                                       ; $518b: $55
    inc b                                         ; $518c: $04
    ld d, [hl]                                    ; $518d: $56
    ld b, $50                                     ; $518e: $06 $50
    nop                                           ; $5190: $00
    nop                                           ; $5191: $00
    nop                                           ; $5192: $00
    nop                                           ; $5193: $00
    nop                                           ; $5194: $00
    nop                                           ; $5195: $00
    nop                                           ; $5196: $00
    ld d, c                                       ; $5197: $51
    nop                                           ; $5198: $00
    ld h, a                                       ; $5199: $67
    nop                                           ; $519a: $00
    ld d, l                                       ; $519b: $55
    ld b, $56                                     ; $519c: $06 $56
    inc b                                         ; $519e: $04
    ld d, c                                       ; $519f: $51
    nop                                           ; $51a0: $00
    nop                                           ; $51a1: $00
    nop                                           ; $51a2: $00
    nop                                           ; $51a3: $00
    nop                                           ; $51a4: $00
    nop                                           ; $51a5: $00
    ld [bc], a                                    ; $51a6: $02
    ld d, c                                       ; $51a7: $51
    ld [bc], a                                    ; $51a8: $02
    ld h, a                                       ; $51a9: $67
    nop                                           ; $51aa: $00
    ld d, l                                       ; $51ab: $55
    ld [$0656], sp                                ; $51ac: $08 $56 $06
    ld d, c                                       ; $51af: $51
    nop                                           ; $51b0: $00
    nop                                           ; $51b1: $00
    nop                                           ; $51b2: $00
    nop                                           ; $51b3: $00
    nop                                           ; $51b4: $00
    nop                                           ; $51b5: $00
    nop                                           ; $51b6: $00
    ld d, d                                       ; $51b7: $52
    inc b                                         ; $51b8: $04
    ld h, b                                       ; $51b9: $60
    nop                                           ; $51ba: $00
    ld d, l                                       ; $51bb: $55
    nop                                           ; $51bc: $00
    ld e, [hl]                                    ; $51bd: $5e
    inc b                                         ; $51be: $04
    ld d, d                                       ; $51bf: $52
    nop                                           ; $51c0: $00
    nop                                           ; $51c1: $00
    nop                                           ; $51c2: $00
    nop                                           ; $51c3: $00
    nop                                           ; $51c4: $00
    nop                                           ; $51c5: $00
    ld [bc], a                                    ; $51c6: $02
    ld d, d                                       ; $51c7: $52
    ld b, $60                                     ; $51c8: $06 $60
    nop                                           ; $51ca: $00
    ld d, l                                       ; $51cb: $55
    ld a, [bc]                                    ; $51cc: $0a
    ld e, a                                       ; $51cd: $5f
    ld b, $52                                     ; $51ce: $06 $52
    nop                                           ; $51d0: $00
    nop                                           ; $51d1: $00
    nop                                           ; $51d2: $00
    nop                                           ; $51d3: $00
    nop                                           ; $51d4: $00
    nop                                           ; $51d5: $00
    nop                                           ; $51d6: $00
    ld d, b                                       ; $51d7: $50
    ld [$0060], sp                                ; $51d8: $08 $60 $00
    ld d, l                                       ; $51db: $55
    nop                                           ; $51dc: $00
    ld e, l                                       ; $51dd: $5d
    inc b                                         ; $51de: $04
    ld d, b                                       ; $51df: $50
    nop                                           ; $51e0: $00
    nop                                           ; $51e1: $00
    nop                                           ; $51e2: $00
    nop                                           ; $51e3: $00
    nop                                           ; $51e4: $00
    nop                                           ; $51e5: $00

    db $00, $50, $00, $70, $00, $55, $02, $5d, $04, $50

    nop                                           ; $51f0: $00
    nop                                           ; $51f1: $00
    nop                                           ; $51f2: $00
    nop                                           ; $51f3: $00
    nop                                           ; $51f4: $00
    nop                                           ; $51f5: $00
    nop                                           ; $51f6: $00
    ld d, e                                       ; $51f7: $53
    ld [bc], a                                    ; $51f8: $02
    ld [hl], b                                    ; $51f9: $70
    inc b                                         ; $51fa: $04
    ld d, l                                       ; $51fb: $55
    inc b                                         ; $51fc: $04
    ld e, l                                       ; $51fd: $5d
    ld a, [bc]                                    ; $51fe: $0a
    ld d, e                                       ; $51ff: $53
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    nop                                           ; $5203: $00
    nop                                           ; $5204: $00
    nop                                           ; $5205: $00
    ld [bc], a                                    ; $5206: $02
    ld d, b                                       ; $5207: $50
    inc b                                         ; $5208: $04
    ld [hl], b                                    ; $5209: $70
    nop                                           ; $520a: $00
    ld d, l                                       ; $520b: $55
    ld b, $5d                                     ; $520c: $06 $5d
    ld b, $50                                     ; $520e: $06 $50
    nop                                           ; $5210: $00
    nop                                           ; $5211: $00
    nop                                           ; $5212: $00
    nop                                           ; $5213: $00
    nop                                           ; $5214: $00
    nop                                           ; $5215: $00
    ld [bc], a                                    ; $5216: $02
    ld d, b                                       ; $5217: $50
    ld b, $70                                     ; $5218: $06 $70
    nop                                           ; $521a: $00
    ld d, l                                       ; $521b: $55
    ld [$065d], sp                                ; $521c: $08 $5d $06
    ld d, b                                       ; $521f: $50
    nop                                           ; $5220: $00
    nop                                           ; $5221: $00
    nop                                           ; $5222: $00
    nop                                           ; $5223: $00
    nop                                           ; $5224: $00
    nop                                           ; $5225: $00
    ld [bc], a                                    ; $5226: $02
    ld d, e                                       ; $5227: $53
    ld [$0470], sp                                ; $5228: $08 $70 $04
    ld d, l                                       ; $522b: $55
    ld a, [bc]                                    ; $522c: $0a
    ld e, l                                       ; $522d: $5d
    inc c                                         ; $522e: $0c
    ld d, e                                       ; $522f: $53
    nop                                           ; $5230: $00
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    nop                                           ; $5233: $00
    nop                                           ; $5234: $00
    nop                                           ; $5235: $00
    nop                                           ; $5236: $00
    ld d, c                                       ; $5237: $51
    ld a, [bc]                                    ; $5238: $0a
    ld [hl], b                                    ; $5239: $70
    nop                                           ; $523a: $00
    ld d, l                                       ; $523b: $55
    inc c                                         ; $523c: $0c
    ld e, l                                       ; $523d: $5d
    inc b                                         ; $523e: $04
    ld d, c                                       ; $523f: $51
    nop                                           ; $5240: $00
    nop                                           ; $5241: $00
    nop                                           ; $5242: $00
    nop                                           ; $5243: $00
    nop                                           ; $5244: $00
    nop                                           ; $5245: $00
    nop                                           ; $5246: $00
    ld d, c                                       ; $5247: $51
    nop                                           ; $5248: $00
    ld [hl], c                                    ; $5249: $71
    nop                                           ; $524a: $00
    ld d, l                                       ; $524b: $55
    ld c, $5d                                     ; $524c: $0e $5d
    inc b                                         ; $524e: $04
    ld d, c                                       ; $524f: $51
    nop                                           ; $5250: $00
    nop                                           ; $5251: $00
    nop                                           ; $5252: $00
    nop                                           ; $5253: $00
    nop                                           ; $5254: $00
    nop                                           ; $5255: $00
    inc b                                         ; $5256: $04
    ld d, e                                       ; $5257: $53
    ld [bc], a                                    ; $5258: $02
    ld [hl], c                                    ; $5259: $71
    inc b                                         ; $525a: $04
    ld d, l                                       ; $525b: $55
    db $10                                        ; $525c: $10
    ld e, l                                       ; $525d: $5d
    ld c, $53                                     ; $525e: $0e $53
    nop                                           ; $5260: $00
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    nop                                           ; $5263: $00
    nop                                           ; $5264: $00
    nop                                           ; $5265: $00
    ld [bc], a                                    ; $5266: $02
    ld d, c                                       ; $5267: $51
    ld [$006e], sp                                ; $5268: $08 $6e $00
    ld d, l                                       ; $526b: $55
    ld [de], a                                    ; $526c: $12
    ld e, l                                       ; $526d: $5d
    ld b, $51                                     ; $526e: $06 $51
    nop                                           ; $5270: $00
    nop                                           ; $5271: $00
    nop                                           ; $5272: $00
    nop                                           ; $5273: $00
    nop                                           ; $5274: $00
    nop                                           ; $5275: $00
    ld [bc], a                                    ; $5276: $02
    ld d, c                                       ; $5277: $51
    inc b                                         ; $5278: $04
    ld [hl], c                                    ; $5279: $71
    nop                                           ; $527a: $00
    ld d, l                                       ; $527b: $55
    inc d                                         ; $527c: $14
    ld e, l                                       ; $527d: $5d
    ld b, $51                                     ; $527e: $06 $51
    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    nop                                           ; $5283: $00
    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    nop                                           ; $5286: $00
    ld d, h                                       ; $5287: $54
    ld b, $71                                     ; $5288: $06 $71
    inc b                                         ; $528a: $04
    ld d, l                                       ; $528b: $55
    ld d, $5d                                     ; $528c: $16 $5d
    ld [bc], a                                    ; $528e: $02
    ld d, h                                       ; $528f: $54
    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    nop                                           ; $5293: $00
    nop                                           ; $5294: $00
    nop                                           ; $5295: $00
    nop                                           ; $5296: $00
    ld d, b                                       ; $5297: $50
    ld a, [bc]                                    ; $5298: $0a
    ld d, h                                       ; $5299: $54
    inc c                                         ; $529a: $0c
    ld e, a                                       ; $529b: $5f
    ld a, [de]                                    ; $529c: $1a
    ld e, e                                       ; $529d: $5b
    inc b                                         ; $529e: $04
    ld d, b                                       ; $529f: $50
    nop                                           ; $52a0: $00
    nop                                           ; $52a1: $00
    nop                                           ; $52a2: $00
    nop                                           ; $52a3: $00
    nop                                           ; $52a4: $00
    nop                                           ; $52a5: $00
    nop                                           ; $52a6: $00
    ld d, b                                       ; $52a7: $50
    ld a, [bc]                                    ; $52a8: $0a
    ld d, h                                       ; $52a9: $54
    inc c                                         ; $52aa: $0c
    ld e, a                                       ; $52ab: $5f
    ld a, [de]                                    ; $52ac: $1a
    ld e, e                                       ; $52ad: $5b
    inc b                                         ; $52ae: $04
    ld d, b                                       ; $52af: $50
    nop                                           ; $52b0: $00
    nop                                           ; $52b1: $00
    nop                                           ; $52b2: $00
    nop                                           ; $52b3: $00
    nop                                           ; $52b4: $00
    nop                                           ; $52b5: $00
    nop                                           ; $52b6: $00
    ld d, b                                       ; $52b7: $50
    ld a, [bc]                                    ; $52b8: $0a
    ld d, h                                       ; $52b9: $54
    inc c                                         ; $52ba: $0c
    ld e, a                                       ; $52bb: $5f
    ld a, [de]                                    ; $52bc: $1a
    ld e, e                                       ; $52bd: $5b
    inc b                                         ; $52be: $04
    ld d, b                                       ; $52bf: $50
    nop                                           ; $52c0: $00
    nop                                           ; $52c1: $00
    nop                                           ; $52c2: $00
    nop                                           ; $52c3: $00
    nop                                           ; $52c4: $00
    nop                                           ; $52c5: $00
    nop                                           ; $52c6: $00
    ld d, b                                       ; $52c7: $50
    ld a, [bc]                                    ; $52c8: $0a
    ld d, h                                       ; $52c9: $54
    inc c                                         ; $52ca: $0c
    ld e, a                                       ; $52cb: $5f
    ld a, [de]                                    ; $52cc: $1a
    ld e, e                                       ; $52cd: $5b
    inc b                                         ; $52ce: $04
    ld d, b                                       ; $52cf: $50
    nop                                           ; $52d0: $00
    nop                                           ; $52d1: $00
    nop                                           ; $52d2: $00
    nop                                           ; $52d3: $00
    nop                                           ; $52d4: $00
    nop                                           ; $52d5: $00
    nop                                           ; $52d6: $00
    ld d, b                                       ; $52d7: $50
    ld a, [bc]                                    ; $52d8: $0a
    ld d, h                                       ; $52d9: $54
    inc c                                         ; $52da: $0c
    ld e, a                                       ; $52db: $5f
    ld a, [de]                                    ; $52dc: $1a
    ld e, e                                       ; $52dd: $5b
    inc b                                         ; $52de: $04
    ld d, b                                       ; $52df: $50
    nop                                           ; $52e0: $00
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    nop                                           ; $52e3: $00
    nop                                           ; $52e4: $00
    nop                                           ; $52e5: $00
    nop                                           ; $52e6: $00
    ld d, b                                       ; $52e7: $50
    ld a, [bc]                                    ; $52e8: $0a
    ld d, h                                       ; $52e9: $54
    inc c                                         ; $52ea: $0c
    ld e, a                                       ; $52eb: $5f
    ld a, [de]                                    ; $52ec: $1a
    ld e, e                                       ; $52ed: $5b
    inc b                                         ; $52ee: $04
    ld d, b                                       ; $52ef: $50
    nop                                           ; $52f0: $00
    nop                                           ; $52f1: $00
    nop                                           ; $52f2: $00
    nop                                           ; $52f3: $00
    nop                                           ; $52f4: $00
    nop                                           ; $52f5: $00
    nop                                           ; $52f6: $00
    ld d, b                                       ; $52f7: $50
    ld a, [bc]                                    ; $52f8: $0a
    ld d, h                                       ; $52f9: $54
    inc c                                         ; $52fa: $0c
    ld e, a                                       ; $52fb: $5f
    ld a, [de]                                    ; $52fc: $1a
    ld e, e                                       ; $52fd: $5b
    inc b                                         ; $52fe: $04
    ld d, b                                       ; $52ff: $50
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    nop                                           ; $5305: $00
    nop                                           ; $5306: $00
    ld d, b                                       ; $5307: $50
    ld a, [bc]                                    ; $5308: $0a
    ld d, h                                       ; $5309: $54
    inc c                                         ; $530a: $0c
    ld e, a                                       ; $530b: $5f
    ld a, [de]                                    ; $530c: $1a
    ld e, e                                       ; $530d: $5b
    inc b                                         ; $530e: $04
    ld d, b                                       ; $530f: $50
    nop                                           ; $5310: $00
    nop                                           ; $5311: $00
    nop                                           ; $5312: $00
    nop                                           ; $5313: $00
    nop                                           ; $5314: $00
    nop                                           ; $5315: $00
    nop                                           ; $5316: $00
    ld d, b                                       ; $5317: $50
    ld a, [bc]                                    ; $5318: $0a
    ld d, h                                       ; $5319: $54
    inc c                                         ; $531a: $0c
    ld e, a                                       ; $531b: $5f
    ld a, [de]                                    ; $531c: $1a
    ld e, e                                       ; $531d: $5b
    inc b                                         ; $531e: $04
    ld d, b                                       ; $531f: $50
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    nop                                           ; $5324: $00
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    ld d, b                                       ; $5327: $50
    ld a, [bc]                                    ; $5328: $0a
    ld d, h                                       ; $5329: $54
    inc c                                         ; $532a: $0c
    ld e, a                                       ; $532b: $5f
    ld a, [de]                                    ; $532c: $1a
    ld e, e                                       ; $532d: $5b
    inc b                                         ; $532e: $04
    ld d, b                                       ; $532f: $50
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    ld d, b                                       ; $5337: $50
    inc b                                         ; $5338: $04
    ld d, h                                       ; $5339: $54
    inc c                                         ; $533a: $0c
    ld e, a                                       ; $533b: $5f
    inc c                                         ; $533c: $0c
    ld [hl], b                                    ; $533d: $70
    inc b                                         ; $533e: $04
    ld d, b                                       ; $533f: $50
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    nop                                           ; $5342: $00
    nop                                           ; $5343: $00
    nop                                           ; $5344: $00
    nop                                           ; $5345: $00
    nop                                           ; $5346: $00
    ld d, b                                       ; $5347: $50
    inc c                                         ; $5348: $0c
    ld c, b                                       ; $5349: $48
    ld [bc], a                                    ; $534a: $02
    ld d, l                                       ; $534b: $55
    ld a, [bc]                                    ; $534c: $0a
    ld l, b                                       ; $534d: $68
    inc b                                         ; $534e: $04
    ld d, b                                       ; $534f: $50
    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    nop                                           ; $5355: $00
    nop                                           ; $5356: $00
    ld d, b                                       ; $5357: $50
    inc c                                         ; $5358: $0c
    ld c, b                                       ; $5359: $48
    ld [bc], a                                    ; $535a: $02
    ld d, l                                       ; $535b: $55
    ld a, [bc]                                    ; $535c: $0a
    ld l, b                                       ; $535d: $68
    inc b                                         ; $535e: $04
    ld d, b                                       ; $535f: $50
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    ld d, e                                       ; $5367: $53
    inc b                                         ; $5368: $04
    ld e, a                                       ; $5369: $5f
    inc b                                         ; $536a: $04
    ld d, l                                       ; $536b: $55
    ld c, $5e                                     ; $536c: $0e $5e
    ld a, [bc]                                    ; $536e: $0a
    ld d, e                                       ; $536f: $53
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    nop                                           ; $5372: $00
    nop                                           ; $5373: $00
    nop                                           ; $5374: $00
    nop                                           ; $5375: $00
    nop                                           ; $5376: $00
    ld d, e                                       ; $5377: $53
    inc b                                         ; $5378: $04
    ld e, a                                       ; $5379: $5f
    inc b                                         ; $537a: $04
    ld d, l                                       ; $537b: $55
    ld c, $5e                                     ; $537c: $0e $5e
    ld a, [bc]                                    ; $537e: $0a
    ld d, e                                       ; $537f: $53
    nop                                           ; $5380: $00
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    nop                                           ; $5384: $00
    nop                                           ; $5385: $00
    nop                                           ; $5386: $00
    ld d, e                                       ; $5387: $53
    inc b                                         ; $5388: $04
    ld e, a                                       ; $5389: $5f
    inc b                                         ; $538a: $04
    ld d, l                                       ; $538b: $55
    ld c, $5e                                     ; $538c: $0e $5e
    ld a, [bc]                                    ; $538e: $0a
    ld d, e                                       ; $538f: $53
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    nop                                           ; $5394: $00
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    ld d, e                                       ; $5397: $53
    inc b                                         ; $5398: $04
    ld e, a                                       ; $5399: $5f
    inc b                                         ; $539a: $04
    ld d, l                                       ; $539b: $55
    ld c, $5e                                     ; $539c: $0e $5e
    ld a, [bc]                                    ; $539e: $0a
    ld d, e                                       ; $539f: $53
    nop                                           ; $53a0: $00
    nop                                           ; $53a1: $00
    nop                                           ; $53a2: $00
    nop                                           ; $53a3: $00
    nop                                           ; $53a4: $00
    nop                                           ; $53a5: $00
    nop                                           ; $53a6: $00
    ld d, e                                       ; $53a7: $53
    inc b                                         ; $53a8: $04
    ld e, a                                       ; $53a9: $5f
    inc b                                         ; $53aa: $04
    ld d, l                                       ; $53ab: $55
    ld c, $5e                                     ; $53ac: $0e $5e
    ld a, [bc]                                    ; $53ae: $0a
    ld d, e                                       ; $53af: $53
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    nop                                           ; $53b2: $00
    nop                                           ; $53b3: $00
    nop                                           ; $53b4: $00
    nop                                           ; $53b5: $00
    ld [bc], a                                    ; $53b6: $02
    ld d, d                                       ; $53b7: $52
    ld [$005e], sp                                ; $53b8: $08 $5e $00
    ld d, l                                       ; $53bb: $55
    inc b                                         ; $53bc: $04
    ld e, h                                       ; $53bd: $5c
    ld b, $52                                     ; $53be: $06 $52
    nop                                           ; $53c0: $00
    nop                                           ; $53c1: $00
    nop                                           ; $53c2: $00
    nop                                           ; $53c3: $00
    nop                                           ; $53c4: $00
    nop                                           ; $53c5: $00
    ld [bc], a                                    ; $53c6: $02
    ld d, d                                       ; $53c7: $52
    ld [$005e], sp                                ; $53c8: $08 $5e $00
    ld d, l                                       ; $53cb: $55
    ld b, $5c                                     ; $53cc: $06 $5c
    ld b, $52                                     ; $53ce: $06 $52
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    nop                                           ; $53d2: $00
    nop                                           ; $53d3: $00
    nop                                           ; $53d4: $00
    nop                                           ; $53d5: $00
    ld [bc], a                                    ; $53d6: $02
    ld d, d                                       ; $53d7: $52
    ld [$005e], sp                                ; $53d8: $08 $5e $00
    ld d, l                                       ; $53db: $55
    ld [$065c], sp                                ; $53dc: $08 $5c $06
    ld d, d                                       ; $53df: $52
    nop                                           ; $53e0: $00
    nop                                           ; $53e1: $00
    nop                                           ; $53e2: $00
    nop                                           ; $53e3: $00
    nop                                           ; $53e4: $00
    nop                                           ; $53e5: $00
    ld [bc], a                                    ; $53e6: $02
    ld d, d                                       ; $53e7: $52
    ld [$005e], sp                                ; $53e8: $08 $5e $00
    ld d, l                                       ; $53eb: $55
    ld a, [bc]                                    ; $53ec: $0a
    ld e, h                                       ; $53ed: $5c
    ld b, $52                                     ; $53ee: $06 $52
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    nop                                           ; $53f2: $00
    nop                                           ; $53f3: $00
    nop                                           ; $53f4: $00
    nop                                           ; $53f5: $00
    ld [bc], a                                    ; $53f6: $02
    ld d, d                                       ; $53f7: $52
    ld [$005e], sp                                ; $53f8: $08 $5e $00
    ld d, l                                       ; $53fb: $55
    inc c                                         ; $53fc: $0c
    ld e, h                                       ; $53fd: $5c
    ld b, $52                                     ; $53fe: $06 $52
    nop                                           ; $5400: $00
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00
    nop                                           ; $5405: $00
    ld [bc], a                                    ; $5406: $02
    ld d, d                                       ; $5407: $52
    ld [$025e], sp                                ; $5408: $08 $5e $02
    ld d, l                                       ; $540b: $55
    ld c, $5c                                     ; $540c: $0e $5c
    ld b, $52                                     ; $540e: $06 $52
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    nop                                           ; $5413: $00
    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    ld [bc], a                                    ; $5416: $02
    ld d, d                                       ; $5417: $52
    ld [$005e], sp                                ; $5418: $08 $5e $00
    ld d, l                                       ; $541b: $55
    ld [de], a                                    ; $541c: $12
    ld e, h                                       ; $541d: $5c
    ld b, $52                                     ; $541e: $06 $52
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    ld [bc], a                                    ; $5426: $02
    ld d, d                                       ; $5427: $52
    ld [$025e], sp                                ; $5428: $08 $5e $02
    ld d, l                                       ; $542b: $55
    inc d                                         ; $542c: $14
    ld e, h                                       ; $542d: $5c
    ld b, $52                                     ; $542e: $06 $52
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    nop                                           ; $5434: $00
    nop                                           ; $5435: $00
    ld [bc], a                                    ; $5436: $02
    ld d, d                                       ; $5437: $52
    ld [$005e], sp                                ; $5438: $08 $5e $00
    ld d, l                                       ; $543b: $55
    db $10                                        ; $543c: $10
    ld e, h                                       ; $543d: $5c
    ld b, $52                                     ; $543e: $06 $52
    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    nop                                           ; $5446: $00
    ld d, b                                       ; $5447: $50
    ld a, [bc]                                    ; $5448: $0a
    ld d, h                                       ; $5449: $54
    inc c                                         ; $544a: $0c
    ld e, a                                       ; $544b: $5f
    ld a, [de]                                    ; $544c: $1a
    ld e, e                                       ; $544d: $5b
    inc b                                         ; $544e: $04
    ld d, b                                       ; $544f: $50
    nop                                           ; $5450: $00
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00
    nop                                           ; $5453: $00
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    ld [bc], a                                    ; $5456: $02
    ld d, e                                       ; $5457: $53
    ld [$0470], sp                                ; $5458: $08 $70 $04
    ld d, l                                       ; $545b: $55
    ld a, [bc]                                    ; $545c: $0a
    ld e, l                                       ; $545d: $5d
    inc c                                         ; $545e: $0c
    ld d, e                                       ; $545f: $53
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    nop                                           ; $5464: $00
    nop                                           ; $5465: $00
    ld [bc], a                                    ; $5466: $02
    ld d, e                                       ; $5467: $53
    ld [$0470], sp                                ; $5468: $08 $70 $04
    ld d, l                                       ; $546b: $55
    ld a, [bc]                                    ; $546c: $0a
    ld e, l                                       ; $546d: $5d
    inc c                                         ; $546e: $0c
    ld d, e                                       ; $546f: $53
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    nop                                           ; $5474: $00
    nop                                           ; $5475: $00
    nop                                           ; $5476: $00
    ld d, c                                       ; $5477: $51
    ld a, [bc]                                    ; $5478: $0a
    ld [hl], b                                    ; $5479: $70
    nop                                           ; $547a: $00
    ld d, l                                       ; $547b: $55
    inc c                                         ; $547c: $0c
    ld e, l                                       ; $547d: $5d
    inc b                                         ; $547e: $04
    ld d, c                                       ; $547f: $51
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    nop                                           ; $5484: $00
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    ld d, c                                       ; $5487: $51
    nop                                           ; $5488: $00
    ld [hl], c                                    ; $5489: $71
    nop                                           ; $548a: $00
    ld d, l                                       ; $548b: $55
    ld c, $5d                                     ; $548c: $0e $5d
    inc b                                         ; $548e: $04
    ld d, c                                       ; $548f: $51
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    nop                                           ; $5493: $00
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    inc b                                         ; $5496: $04
    ld d, e                                       ; $5497: $53
    ld [bc], a                                    ; $5498: $02
    ld [hl], c                                    ; $5499: $71
    inc b                                         ; $549a: $04
    ld d, l                                       ; $549b: $55
    db $10                                        ; $549c: $10
    ld e, l                                       ; $549d: $5d
    ld c, $53                                     ; $549e: $0e $53
    nop                                           ; $54a0: $00
    nop                                           ; $54a1: $00
    nop                                           ; $54a2: $00
    nop                                           ; $54a3: $00
    nop                                           ; $54a4: $00
    nop                                           ; $54a5: $00
    ld [bc], a                                    ; $54a6: $02
    ld d, c                                       ; $54a7: $51
    ld [$006e], sp                                ; $54a8: $08 $6e $00
    ld d, l                                       ; $54ab: $55
    ld [de], a                                    ; $54ac: $12
    ld e, l                                       ; $54ad: $5d
    ld b, $51                                     ; $54ae: $06 $51
    nop                                           ; $54b0: $00
    nop                                           ; $54b1: $00
    nop                                           ; $54b2: $00
    nop                                           ; $54b3: $00
    nop                                           ; $54b4: $00
    nop                                           ; $54b5: $00
    ld [bc], a                                    ; $54b6: $02
    ld d, c                                       ; $54b7: $51
    inc b                                         ; $54b8: $04
    ld [hl], c                                    ; $54b9: $71
    nop                                           ; $54ba: $00
    ld d, l                                       ; $54bb: $55
    inc d                                         ; $54bc: $14
    ld e, l                                       ; $54bd: $5d
    ld b, $51                                     ; $54be: $06 $51
    nop                                           ; $54c0: $00
    nop                                           ; $54c1: $00
    nop                                           ; $54c2: $00
    nop                                           ; $54c3: $00
    nop                                           ; $54c4: $00
    nop                                           ; $54c5: $00
    nop                                           ; $54c6: $00
    ld d, h                                       ; $54c7: $54
    ld b, $71                                     ; $54c8: $06 $71
    inc b                                         ; $54ca: $04
    ld d, l                                       ; $54cb: $55
    ld d, $5d                                     ; $54cc: $16 $5d
    ld [bc], a                                    ; $54ce: $02
    ld d, h                                       ; $54cf: $54
    nop                                           ; $54d0: $00
    nop                                           ; $54d1: $00
    nop                                           ; $54d2: $00
    nop                                           ; $54d3: $00
    nop                                           ; $54d4: $00
    nop                                           ; $54d5: $00
    nop                                           ; $54d6: $00
    ld d, b                                       ; $54d7: $50
    inc c                                         ; $54d8: $0c
    ld c, b                                       ; $54d9: $48
    ld [bc], a                                    ; $54da: $02
    ld d, l                                       ; $54db: $55
    ld a, [bc]                                    ; $54dc: $0a
    ld l, b                                       ; $54dd: $68
    inc b                                         ; $54de: $04
    ld d, b                                       ; $54df: $50
    nop                                           ; $54e0: $00
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    nop                                           ; $54e3: $00
    nop                                           ; $54e4: $00
    nop                                           ; $54e5: $00
    ld [bc], a                                    ; $54e6: $02
    ld d, e                                       ; $54e7: $53
    ld [$0a70], sp                                ; $54e8: $08 $70 $0a
    ld d, l                                       ; $54eb: $55
    inc c                                         ; $54ec: $0c
    ld l, a                                       ; $54ed: $6f
    inc c                                         ; $54ee: $0c
    ld d, e                                       ; $54ef: $53
    nop                                           ; $54f0: $00
    nop                                           ; $54f1: $00
    nop                                           ; $54f2: $00
    nop                                           ; $54f3: $00
    nop                                           ; $54f4: $00
    nop                                           ; $54f5: $00
    ld [bc], a                                    ; $54f6: $02
    ld d, e                                       ; $54f7: $53
    ld [$0a70], sp                                ; $54f8: $08 $70 $0a
    ld d, l                                       ; $54fb: $55
    inc c                                         ; $54fc: $0c
    ld l, a                                       ; $54fd: $6f
    inc c                                         ; $54fe: $0c
    ld d, e                                       ; $54ff: $53
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    nop                                           ; $5504: $00
    nop                                           ; $5505: $00
    ld [bc], a                                    ; $5506: $02
    ld d, e                                       ; $5507: $53
    ld [$0a70], sp                                ; $5508: $08 $70 $0a
    ld d, l                                       ; $550b: $55
    inc c                                         ; $550c: $0c
    ld l, a                                       ; $550d: $6f
    inc c                                         ; $550e: $0c
    ld d, e                                       ; $550f: $53
    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00
    nop                                           ; $5515: $00
    ld [bc], a                                    ; $5516: $02
    ld d, e                                       ; $5517: $53
    ld [$0a70], sp                                ; $5518: $08 $70 $0a
    ld d, l                                       ; $551b: $55
    inc c                                         ; $551c: $0c
    ld l, a                                       ; $551d: $6f
    inc c                                         ; $551e: $0c
    ld d, e                                       ; $551f: $53
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    ld [bc], a                                    ; $5526: $02
    ld d, e                                       ; $5527: $53
    ld [$0a70], sp                                ; $5528: $08 $70 $0a
    ld d, l                                       ; $552b: $55
    inc c                                         ; $552c: $0c
    ld l, a                                       ; $552d: $6f
    inc c                                         ; $552e: $0c
    ld d, e                                       ; $552f: $53
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    inc b                                         ; $5536: $04
    ld d, e                                       ; $5537: $53
    ld [bc], a                                    ; $5538: $02
    ld [hl], c                                    ; $5539: $71
    ld a, [bc]                                    ; $553a: $0a
    ld d, l                                       ; $553b: $55
    inc c                                         ; $553c: $0c
    ld h, h                                       ; $553d: $64
    ld c, $53                                     ; $553e: $0e $53
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
    nop                                           ; $5544: $00
    nop                                           ; $5545: $00
    inc b                                         ; $5546: $04
    ld d, e                                       ; $5547: $53
    ld [bc], a                                    ; $5548: $02
    ld [hl], c                                    ; $5549: $71
    ld a, [bc]                                    ; $554a: $0a
    ld d, l                                       ; $554b: $55
    inc c                                         ; $554c: $0c
    ld h, h                                       ; $554d: $64
    ld c, $53                                     ; $554e: $0e $53
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    nop                                           ; $5552: $00
    nop                                           ; $5553: $00
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    inc b                                         ; $5556: $04
    ld d, e                                       ; $5557: $53
    ld [bc], a                                    ; $5558: $02
    ld [hl], c                                    ; $5559: $71
    ld a, [bc]                                    ; $555a: $0a
    ld d, l                                       ; $555b: $55
    inc c                                         ; $555c: $0c
    ld h, h                                       ; $555d: $64
    ld c, $53                                     ; $555e: $0e $53
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    inc b                                         ; $5566: $04
    ld d, e                                       ; $5567: $53
    ld [bc], a                                    ; $5568: $02
    ld [hl], c                                    ; $5569: $71
    ld a, [bc]                                    ; $556a: $0a
    ld d, l                                       ; $556b: $55
    inc c                                         ; $556c: $0c
    ld h, h                                       ; $556d: $64
    ld c, $53                                     ; $556e: $0e $53
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    inc b                                         ; $5576: $04
    ld d, e                                       ; $5577: $53
    ld [bc], a                                    ; $5578: $02
    ld [hl], c                                    ; $5579: $71
    ld a, [bc]                                    ; $557a: $0a
    ld d, l                                       ; $557b: $55
    inc c                                         ; $557c: $0c
    ld h, h                                       ; $557d: $64
    ld c, $53                                     ; $557e: $0e $53
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00
    nop                                           ; $5584: $00
    nop                                           ; $5585: $00
    nop                                           ; $5586: $00
    ld d, h                                       ; $5587: $54
    ld b, $71                                     ; $5588: $06 $71
    ld a, [bc]                                    ; $558a: $0a
    ld d, l                                       ; $558b: $55
    ld c, $64                                     ; $558c: $0e $64
    ld [bc], a                                    ; $558e: $02
    ld d, h                                       ; $558f: $54
    nop                                           ; $5590: $00
    nop                                           ; $5591: $00
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    nop                                           ; $5594: $00
    nop                                           ; $5595: $00
    nop                                           ; $5596: $00
    ld d, h                                       ; $5597: $54
    ld b, $71                                     ; $5598: $06 $71
    ld a, [bc]                                    ; $559a: $0a
    ld d, l                                       ; $559b: $55
    ld c, $64                                     ; $559c: $0e $64
    ld [bc], a                                    ; $559e: $02
    ld d, h                                       ; $559f: $54
    nop                                           ; $55a0: $00
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
    nop                                           ; $55a3: $00
    nop                                           ; $55a4: $00
    nop                                           ; $55a5: $00
    nop                                           ; $55a6: $00
    ld d, h                                       ; $55a7: $54
    ld b, $71                                     ; $55a8: $06 $71
    ld a, [bc]                                    ; $55aa: $0a
    ld d, l                                       ; $55ab: $55
    ld c, $64                                     ; $55ac: $0e $64
    ld [bc], a                                    ; $55ae: $02
    ld d, h                                       ; $55af: $54
    nop                                           ; $55b0: $00
    nop                                           ; $55b1: $00
    nop                                           ; $55b2: $00
    nop                                           ; $55b3: $00
    nop                                           ; $55b4: $00
    nop                                           ; $55b5: $00
    nop                                           ; $55b6: $00
    ld d, h                                       ; $55b7: $54
    ld b, $71                                     ; $55b8: $06 $71
    ld a, [bc]                                    ; $55ba: $0a
    ld d, l                                       ; $55bb: $55
    ld c, $64                                     ; $55bc: $0e $64
    ld [bc], a                                    ; $55be: $02
    ld d, h                                       ; $55bf: $54
    nop                                           ; $55c0: $00
    nop                                           ; $55c1: $00
    nop                                           ; $55c2: $00
    nop                                           ; $55c3: $00
    nop                                           ; $55c4: $00
    nop                                           ; $55c5: $00
    nop                                           ; $55c6: $00
    ld d, h                                       ; $55c7: $54
    ld b, $71                                     ; $55c8: $06 $71
    ld a, [bc]                                    ; $55ca: $0a
    ld d, l                                       ; $55cb: $55
    ld c, $64                                     ; $55cc: $0e $64
    ld [bc], a                                    ; $55ce: $02
    ld d, h                                       ; $55cf: $54
    nop                                           ; $55d0: $00
    nop                                           ; $55d1: $00
    nop                                           ; $55d2: $00
    nop                                           ; $55d3: $00
    nop                                           ; $55d4: $00
    nop                                           ; $55d5: $00
    ld [bc], a                                    ; $55d6: $02
    ld d, c                                       ; $55d7: $51
    inc b                                         ; $55d8: $04
    ld [hl], c                                    ; $55d9: $71
    nop                                           ; $55da: $00
    ld d, l                                       ; $55db: $55
    inc d                                         ; $55dc: $14
    ld e, l                                       ; $55dd: $5d
    ld b, $51                                     ; $55de: $06 $51
    nop                                           ; $55e0: $00
    nop                                           ; $55e1: $00
    nop                                           ; $55e2: $00
    nop                                           ; $55e3: $00
    nop                                           ; $55e4: $00
    nop                                           ; $55e5: $00
    nop                                           ; $55e6: $00
    ld d, h                                       ; $55e7: $54
    ld b, $71                                     ; $55e8: $06 $71
    inc b                                         ; $55ea: $04
    ld d, l                                       ; $55eb: $55
    ld d, $5d                                     ; $55ec: $16 $5d
    ld [bc], a                                    ; $55ee: $02
    ld d, h                                       ; $55ef: $54
    nop                                           ; $55f0: $00
    nop                                           ; $55f1: $00
    nop                                           ; $55f2: $00
    nop                                           ; $55f3: $00
    nop                                           ; $55f4: $00
    nop                                           ; $55f5: $00

    ld a, [$d320]                                 ; $55f6: $fa $20 $d3
    ld h, $00                                     ; $55f9: $26 $00
    ld l, a                                       ; $55fb: $6f
    add hl, hl                                    ; $55fc: $29
    add hl, hl                                    ; $55fd: $29
    add hl, hl                                    ; $55fe: $29
    add hl, hl                                    ; $55ff: $29
    add hl, hl                                    ; $5600: $29
    ld de, $5884                                  ; $5601: $11 $84 $58
    add hl, de                                    ; $5604: $19
    ld a, [hl+]                                   ; $5605: $2a
    ld [$d325], a                                 ; $5606: $ea $25 $d3
    inc hl                                        ; $5609: $23
    inc hl                                        ; $560a: $23
    inc hl                                        ; $560b: $23
    ld de, $d323                                  ; $560c: $11 $23 $d3
    ld a, [hl+]                                   ; $560f: $2a
    ld [de], a                                    ; $5610: $12
    inc de                                        ; $5611: $13
    ld a, [hl+]                                   ; $5612: $2a
    ld [de], a                                    ; $5613: $12
    ld de, $c329                                  ; $5614: $11 $29 $c3
    ld a, [hl+]                                   ; $5617: $2a
    ld [de], a                                    ; $5618: $12
    inc de                                        ; $5619: $13
    ld a, [hl+]                                   ; $561a: $2a
    ld [de], a                                    ; $561b: $12
    inc de                                        ; $561c: $13
    ld a, [hl+]                                   ; $561d: $2a
    ld [de], a                                    ; $561e: $12
    inc de                                        ; $561f: $13
    ld a, [hl+]                                   ; $5620: $2a
    ld [de], a                                    ; $5621: $12
    ld de, $d441                                  ; $5622: $11 $41 $d4
    ld a, [hl+]                                   ; $5625: $2a
    ld [de], a                                    ; $5626: $12
    inc de                                        ; $5627: $13
    ld a, [hl+]                                   ; $5628: $2a
    ld [de], a                                    ; $5629: $12
    ld de, $d439                                  ; $562a: $11 $39 $d4
    ld a, [hl+]                                   ; $562d: $2a
    ld [de], a                                    ; $562e: $12
    inc de                                        ; $562f: $13
    ld a, [hl+]                                   ; $5630: $2a
    ld [de], a                                    ; $5631: $12
    inc de                                        ; $5632: $13
    ld a, [hl+]                                   ; $5633: $2a
    ld [de], a                                    ; $5634: $12
    inc de                                        ; $5635: $13
    ld a, [hl+]                                   ; $5636: $2a
    ld [de], a                                    ; $5637: $12
    ld a, [$c838]                                 ; $5638: $fa $38 $c8
    inc a                                         ; $563b: $3c

jr_013_563c:
    dec a                                         ; $563c: $3d
    jr z, jr_013_5645                             ; $563d: $28 $06

    inc hl                                        ; $563f: $23
    inc hl                                        ; $5640: $23
    inc hl                                        ; $5641: $23
    inc hl                                        ; $5642: $23
    jr jr_013_563c                                ; $5643: $18 $f7

jr_013_5645:
    ld de, $d43d                                  ; $5645: $11 $3d $d4
    ld a, [hl+]                                   ; $5648: $2a
    ld [de], a                                    ; $5649: $12
    inc de                                        ; $564a: $13
    ld a, [hl+]                                   ; $564b: $2a
    ld [de], a                                    ; $564c: $12
    inc de                                        ; $564d: $13
    ld a, [hl+]                                   ; $564e: $2a
    ld [de], a                                    ; $564f: $12
    inc de                                        ; $5650: $13
    ld a, [hl+]                                   ; $5651: $2a
    ld [de], a                                    ; $5652: $12
    ld a, [$d4de]                                 ; $5653: $fa $de $d4
    or a                                          ; $5656: $b7
    jr z, jr_013_566a                             ; $5657: $28 $11

    ld hl, $d4df                                  ; $5659: $21 $df $d4
    ld de, $d439                                  ; $565c: $11 $39 $d4
    ld a, [hl+]                                   ; $565f: $2a
    ld [de], a                                    ; $5660: $12
    inc de                                        ; $5661: $13
    ld a, [hl+]                                   ; $5662: $2a
    ld [de], a                                    ; $5663: $12
    inc de                                        ; $5664: $13
    ld a, [hl+]                                   ; $5665: $2a
    ld [de], a                                    ; $5666: $12
    inc de                                        ; $5667: $13
    ld a, [hl]                                    ; $5668: $7e
    ld [de], a                                    ; $5669: $12

jr_013_566a:
    ld a, [$c836]                                 ; $566a: $fa $36 $c8
    and $0f                                       ; $566d: $e6 $0f
    ld h, $00                                     ; $566f: $26 $00
    ld l, a                                       ; $5671: $6f
    add hl, hl                                    ; $5672: $29
    add hl, hl                                    ; $5673: $29
    add hl, hl                                    ; $5674: $29
    add hl, hl                                    ; $5675: $29
    add hl, hl                                    ; $5676: $29
    ld de, $5684                                  ; $5677: $11 $84 $56
    add hl, de                                    ; $567a: $19
    ld de, $d4f3                                  ; $567b: $11 $f3 $d4
    ld c, $02                                     ; $567e: $0e $02
    call Call_000_03eb                            ; $5680: $cd $eb $03
    ret                                           ; $5683: $c9


    ld hl, $2121                                  ; $5684: $21 $21 $21
    ld hl, $2121                                  ; $5687: $21 $21 $21
    ld hl, $2121                                  ; $568a: $21 $21 $21
    ld hl, $2121                                  ; $568d: $21 $21 $21
    ld hl, $2121                                  ; $5690: $21 $21 $21
    ld hl, $2121                                  ; $5693: $21 $21 $21
    ld hl, $2121                                  ; $5696: $21 $21 $21
    ld hl, $2121                                  ; $5699: $21 $21 $21
    nop                                           ; $569c: $00
    nop                                           ; $569d: $00
    nop                                           ; $569e: $00
    nop                                           ; $569f: $00
    nop                                           ; $56a0: $00
    nop                                           ; $56a1: $00
    nop                                           ; $56a2: $00
    nop                                           ; $56a3: $00
    ld de, $1111                                  ; $56a4: $11 $11 $11
    ld de, $4040                                  ; $56a7: $11 $40 $40
    ld d, b                                       ; $56aa: $50
    ld d, b                                       ; $56ab: $50
    ld d, b                                       ; $56ac: $50
    ld b, b                                       ; $56ad: $40
    ld b, b                                       ; $56ae: $40
    jr nc, @+$32                                  ; $56af: $30 $30

    jr nz, @+$22                                  ; $56b1: $20 $20

    stop                                          ; $56b3: $10 $00
    nop                                           ; $56b5: $00
    nop                                           ; $56b6: $00
    nop                                           ; $56b7: $00
    nop                                           ; $56b8: $00
    nop                                           ; $56b9: $00
    nop                                           ; $56ba: $00
    nop                                           ; $56bb: $00
    nop                                           ; $56bc: $00
    nop                                           ; $56bd: $00
    nop                                           ; $56be: $00
    nop                                           ; $56bf: $00
    nop                                           ; $56c0: $00
    nop                                           ; $56c1: $00
    nop                                           ; $56c2: $00
    nop                                           ; $56c3: $00

    db $11, $11, $11, $11, $11, $11, $11, $11, $40, $50, $50, $50, $50, $50, $40, $40
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    ld de, $1111                                  ; $56e4: $11 $11 $11
    ld de, $4010                                  ; $56e7: $11 $10 $40
    ld b, b                                       ; $56ea: $40
    ld d, b                                       ; $56eb: $50
    ld d, b                                       ; $56ec: $50
    ld d, b                                       ; $56ed: $50
    ld b, b                                       ; $56ee: $40
    ld b, b                                       ; $56ef: $40
    jr nc, jr_013_5722                            ; $56f0: $30 $30

    jr nc, jr_013_5704                            ; $56f2: $30 $10

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

jr_013_5704:
    ld de, $1111                                  ; $5704: $11 $11 $11
    ld de, $5050                                  ; $5707: $11 $50 $50
    ld d, b                                       ; $570a: $50
    ld d, b                                       ; $570b: $50
    ld d, b                                       ; $570c: $50
    ld b, b                                       ; $570d: $40
    ld b, b                                       ; $570e: $40
    jr nc, jr_013_5741                            ; $570f: $30 $30

    jr nz, jr_013_5723                            ; $5711: $20 $10

    stop                                          ; $5713: $10 $00
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

jr_013_5722:
    nop                                           ; $5722: $00

jr_013_5723:
    nop                                           ; $5723: $00
    ld de, $1111                                  ; $5724: $11 $11 $11
    ld de, $5020                                  ; $5727: $11 $20 $50
    ld d, b                                       ; $572a: $50
    ld d, b                                       ; $572b: $50
    ld d, b                                       ; $572c: $50
    ld d, b                                       ; $572d: $50
    ld d, b                                       ; $572e: $50
    ld d, b                                       ; $572f: $50
    ld b, b                                       ; $5730: $40
    jr nc, jr_013_5753                            ; $5731: $30 $20

    stop                                          ; $5733: $10 $00
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

jr_013_5741:
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
    ld de, $1111                                  ; $5744: $11 $11 $11
    ld de, $5030                                  ; $5747: $11 $30 $50
    ld d, b                                       ; $574a: $50
    ld d, b                                       ; $574b: $50
    ld d, b                                       ; $574c: $50
    ld d, b                                       ; $574d: $50
    ld d, b                                       ; $574e: $50
    ld b, b                                       ; $574f: $40
    ld b, b                                       ; $5750: $40
    jr nc, @+$22                                  ; $5751: $30 $20

jr_013_5753:
    stop                                          ; $5753: $10 $00
    nop                                           ; $5755: $00
    nop                                           ; $5756: $00
    nop                                           ; $5757: $00
    nop                                           ; $5758: $00
    nop                                           ; $5759: $00
    nop                                           ; $575a: $00
    nop                                           ; $575b: $00
    nop                                           ; $575c: $00
    nop                                           ; $575d: $00
    nop                                           ; $575e: $00
    nop                                           ; $575f: $00
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00

    db $31, $31, $31, $31, $31, $31, $60, $70, $70, $70, $60, $60, $50, $40, $40, $20
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    ld sp, $3131                                  ; $5784: $31 $31 $31
    ld sp, $3131                                  ; $5787: $31 $31 $31
    ld h, b                                       ; $578a: $60
    ld [hl], b                                    ; $578b: $70
    ld [hl], b                                    ; $578c: $70
    ld [hl], b                                    ; $578d: $70
    ld h, b                                       ; $578e: $60
    ld h, b                                       ; $578f: $60
    ld d, b                                       ; $5790: $50
    ld b, b                                       ; $5791: $40
    ld b, b                                       ; $5792: $40
    jr nz, jr_013_5795                            ; $5793: $20 $00

jr_013_5795:
    nop                                           ; $5795: $00
    nop                                           ; $5796: $00
    nop                                           ; $5797: $00
    nop                                           ; $5798: $00
    nop                                           ; $5799: $00
    nop                                           ; $579a: $00
    nop                                           ; $579b: $00
    nop                                           ; $579c: $00
    nop                                           ; $579d: $00
    nop                                           ; $579e: $00
    nop                                           ; $579f: $00
    nop                                           ; $57a0: $00
    nop                                           ; $57a1: $00
    nop                                           ; $57a2: $00
    nop                                           ; $57a3: $00
    ld sp, $3131                                  ; $57a4: $31 $31 $31
    ld sp, $3131                                  ; $57a7: $31 $31 $31
    ld h, b                                       ; $57aa: $60
    ld [hl], b                                    ; $57ab: $70
    ld [hl], b                                    ; $57ac: $70
    ld [hl], b                                    ; $57ad: $70
    ld h, b                                       ; $57ae: $60
    ld h, b                                       ; $57af: $60
    ld d, b                                       ; $57b0: $50
    ld b, b                                       ; $57b1: $40
    ld b, b                                       ; $57b2: $40
    jr nz, jr_013_57b5                            ; $57b3: $20 $00

jr_013_57b5:
    nop                                           ; $57b5: $00
    nop                                           ; $57b6: $00
    nop                                           ; $57b7: $00
    nop                                           ; $57b8: $00
    nop                                           ; $57b9: $00
    nop                                           ; $57ba: $00
    nop                                           ; $57bb: $00
    nop                                           ; $57bc: $00
    nop                                           ; $57bd: $00
    nop                                           ; $57be: $00
    nop                                           ; $57bf: $00
    nop                                           ; $57c0: $00
    nop                                           ; $57c1: $00
    nop                                           ; $57c2: $00
    nop                                           ; $57c3: $00
    ld sp, $3131                                  ; $57c4: $31 $31 $31
    ld sp, $3131                                  ; $57c7: $31 $31 $31
    ld h, b                                       ; $57ca: $60
    ld [hl], b                                    ; $57cb: $70
    ld [hl], b                                    ; $57cc: $70
    ld [hl], b                                    ; $57cd: $70
    ld h, b                                       ; $57ce: $60
    ld h, b                                       ; $57cf: $60
    ld d, b                                       ; $57d0: $50
    ld b, b                                       ; $57d1: $40
    ld b, b                                       ; $57d2: $40
    jr nz, jr_013_57d5                            ; $57d3: $20 $00

jr_013_57d5:
    nop                                           ; $57d5: $00
    nop                                           ; $57d6: $00
    nop                                           ; $57d7: $00
    nop                                           ; $57d8: $00
    nop                                           ; $57d9: $00
    nop                                           ; $57da: $00
    nop                                           ; $57db: $00
    nop                                           ; $57dc: $00
    nop                                           ; $57dd: $00
    nop                                           ; $57de: $00
    nop                                           ; $57df: $00
    nop                                           ; $57e0: $00
    nop                                           ; $57e1: $00
    nop                                           ; $57e2: $00
    nop                                           ; $57e3: $00
    ld sp, $3131                                  ; $57e4: $31 $31 $31
    ld sp, $3131                                  ; $57e7: $31 $31 $31
    ld h, b                                       ; $57ea: $60
    ld [hl], b                                    ; $57eb: $70
    ld [hl], b                                    ; $57ec: $70
    ld [hl], b                                    ; $57ed: $70
    ld h, b                                       ; $57ee: $60
    ld h, b                                       ; $57ef: $60
    ld d, b                                       ; $57f0: $50
    ld b, b                                       ; $57f1: $40
    ld b, b                                       ; $57f2: $40
    jr nz, jr_013_57f5                            ; $57f3: $20 $00

jr_013_57f5:
    nop                                           ; $57f5: $00
    nop                                           ; $57f6: $00
    nop                                           ; $57f7: $00
    nop                                           ; $57f8: $00
    nop                                           ; $57f9: $00
    nop                                           ; $57fa: $00
    nop                                           ; $57fb: $00
    nop                                           ; $57fc: $00
    nop                                           ; $57fd: $00
    nop                                           ; $57fe: $00
    nop                                           ; $57ff: $00
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    ld sp, $3131                                  ; $5804: $31 $31 $31
    ld sp, $3131                                  ; $5807: $31 $31 $31
    ld h, b                                       ; $580a: $60
    ld [hl], b                                    ; $580b: $70
    ld [hl], b                                    ; $580c: $70
    ld [hl], b                                    ; $580d: $70
    ld h, b                                       ; $580e: $60
    ld h, b                                       ; $580f: $60
    ld d, b                                       ; $5810: $50
    ld b, b                                       ; $5811: $40
    ld b, b                                       ; $5812: $40
    jr nz, jr_013_5815                            ; $5813: $20 $00

jr_013_5815:
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    nop                                           ; $5817: $00
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    nop                                           ; $581a: $00
    nop                                           ; $581b: $00
    nop                                           ; $581c: $00
    nop                                           ; $581d: $00
    nop                                           ; $581e: $00
    nop                                           ; $581f: $00
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    ld sp, $3131                                  ; $5824: $31 $31 $31
    ld sp, $3131                                  ; $5827: $31 $31 $31
    ld h, b                                       ; $582a: $60
    ld [hl], b                                    ; $582b: $70
    ld [hl], b                                    ; $582c: $70
    ld [hl], b                                    ; $582d: $70
    ld h, b                                       ; $582e: $60
    ld h, b                                       ; $582f: $60
    ld d, b                                       ; $5830: $50
    ld b, b                                       ; $5831: $40
    ld b, b                                       ; $5832: $40
    jr nz, jr_013_5835                            ; $5833: $20 $00

jr_013_5835:
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    nop                                           ; $5839: $00
    nop                                           ; $583a: $00
    nop                                           ; $583b: $00
    nop                                           ; $583c: $00
    nop                                           ; $583d: $00
    nop                                           ; $583e: $00
    nop                                           ; $583f: $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    ld sp, $3131                                  ; $5844: $31 $31 $31
    ld sp, $3131                                  ; $5847: $31 $31 $31
    ld h, b                                       ; $584a: $60
    ld [hl], b                                    ; $584b: $70
    ld [hl], b                                    ; $584c: $70
    ld [hl], b                                    ; $584d: $70
    ld h, b                                       ; $584e: $60
    ld h, b                                       ; $584f: $60
    ld d, b                                       ; $5850: $50
    ld b, b                                       ; $5851: $40
    ld b, b                                       ; $5852: $40

jr_013_5853:
    jr nz, jr_013_5855                            ; $5853: $20 $00

jr_013_5855:
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    nop                                           ; $585b: $00
    nop                                           ; $585c: $00
    nop                                           ; $585d: $00
    nop                                           ; $585e: $00
    nop                                           ; $585f: $00
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    ld sp, $3131                                  ; $5864: $31 $31 $31
    ld sp, $3131                                  ; $5867: $31 $31 $31
    ld h, b                                       ; $586a: $60
    ld [hl], b                                    ; $586b: $70
    ld [hl], b                                    ; $586c: $70
    ld [hl], b                                    ; $586d: $70
    ld h, b                                       ; $586e: $60
    ld h, b                                       ; $586f: $60
    ld d, b                                       ; $5870: $50
    ld b, b                                       ; $5871: $40
    ld b, b                                       ; $5872: $40
    jr nz, jr_013_5875                            ; $5873: $20 $00

jr_013_5875:
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    nop                                           ; $587a: $00
    nop                                           ; $587b: $00
    nop                                           ; $587c: $00
    nop                                           ; $587d: $00
    nop                                           ; $587e: $00
    nop                                           ; $587f: $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    dec b                                         ; $5884: $05
    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    ld hl, sp+$01                                 ; $5888: $f8 $01
    stop                                          ; $588a: $10 $00
    jr nc, @+$44                                  ; $588c: $30 $42

    stop                                          ; $588e: $10 $00
    nop                                           ; $5890: $00
    jr nz, jr_013_5893                            ; $5891: $20 $00

jr_013_5893:
    ccf                                           ; $5893: $3f
    nop                                           ; $5894: $00
    jr nz, jr_013_5897                            ; $5895: $20 $00

jr_013_5897:
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    jr nz, jr_013_589b                            ; $5899: $20 $00

jr_013_589b:
    nop                                           ; $589b: $00
    nop                                           ; $589c: $00
    jr nz, jr_013_589f                            ; $589d: $20 $00

jr_013_589f:
    nop                                           ; $589f: $00
    nop                                           ; $58a0: $00
    jr nz, jr_013_58a3                            ; $58a1: $20 $00

jr_013_58a3:
    nop                                           ; $58a3: $00
    rlca                                          ; $58a4: $07
    nop                                           ; $58a5: $00
    nop                                           ; $58a6: $00
    nop                                           ; $58a7: $00
    nop                                           ; $58a8: $00
    nop                                           ; $58a9: $00
    nop                                           ; $58aa: $00
    nop                                           ; $58ab: $00
    jr nc, jr_013_58de                            ; $58ac: $30 $30

    rra                                           ; $58ae: $1f
    dec e                                         ; $58af: $1d
    nop                                           ; $58b0: $00
    ld [hl+], a                                   ; $58b1: $22
    nop                                           ; $58b2: $00
    ld e, $e0                                     ; $58b3: $1e $e0
    ld hl, $1ec0                                  ; $58b5: $21 $c0 $1e
    ldh [rNR42], a                                ; $58b8: $e0 $21
    ret nz                                        ; $58ba: $c0

    ld e, $e0                                     ; $58bb: $1e $e0
    ld hl, $1ec0                                  ; $58bd: $21 $c0 $1e
    ldh [rNR42], a                                ; $58c0: $e0 $21
    ret nz                                        ; $58c2: $c0

    ld e, $07                                     ; $58c3: $1e $07
    nop                                           ; $58c5: $00
    nop                                           ; $58c6: $00
    nop                                           ; $58c7: $00
    nop                                           ; $58c8: $00
    nop                                           ; $58c9: $00
    nop                                           ; $58ca: $00
    nop                                           ; $58cb: $00
    ld b, b                                       ; $58cc: $40
    ld b, b                                       ; $58cd: $40
    dec e                                         ; $58ce: $1d
    ld e, $80                                     ; $58cf: $1e $80

jr_013_58d1:
    jr nz, jr_013_5853                            ; $58d1: $20 $80

    jr nz, jr_013_5915                            ; $58d3: $20 $40

    rra                                           ; $58d5: $1f
    ld b, b                                       ; $58d6: $40
    jr nz, jr_013_5919                            ; $58d7: $20 $40

    rra                                           ; $58d9: $1f
    ld b, b                                       ; $58da: $40
    jr nz, jr_013_591d                            ; $58db: $20 $40

    rra                                           ; $58dd: $1f

jr_013_58de:
    ld b, b                                       ; $58de: $40
    jr nz, jr_013_5921                            ; $58df: $20 $40

    rra                                           ; $58e1: $1f
    ld b, b                                       ; $58e2: $40
    jr nz, jr_013_58ec                            ; $58e3: $20 $07

    nop                                           ; $58e5: $00
    nop                                           ; $58e6: $00
    nop                                           ; $58e7: $00
    nop                                           ; $58e8: $00
    nop                                           ; $58e9: $00
    nop                                           ; $58ea: $00
    nop                                           ; $58eb: $00

jr_013_58ec:
    ld b, b                                       ; $58ec: $40
    ld b, b                                       ; $58ed: $40
    inc h                                         ; $58ee: $24
    rra                                           ; $58ef: $1f
    add b                                         ; $58f0: $80
    dec h                                         ; $58f1: $25
    nop                                           ; $58f2: $00
    ld [hl+], a                                   ; $58f3: $22
    ret nz                                        ; $58f4: $c0

    ld h, $00                                     ; $58f5: $26 $00
    ld hl, $26c0                                  ; $58f7: $21 $c0 $26
    nop                                           ; $58fa: $00
    ld hl, $26c0                                  ; $58fb: $21 $c0 $26
    nop                                           ; $58fe: $00
    ld hl, $26c0                                  ; $58ff: $21 $c0 $26
    nop                                           ; $5902: $00
    ld hl, $0007                                  ; $5903: $21 $07 $00
    nop                                           ; $5906: $00
    nop                                           ; $5907: $00
    nop                                           ; $5908: $00
    nop                                           ; $5909: $00
    nop                                           ; $590a: $00
    nop                                           ; $590b: $00
    ld b, b                                       ; $590c: $40
    ld b, b                                       ; $590d: $40
    inc hl                                        ; $590e: $23
    inc e                                         ; $590f: $1c
    nop                                           ; $5910: $00
    inc h                                         ; $5911: $24
    nop                                           ; $5912: $00
    rra                                           ; $5913: $1f
    add b                                         ; $5914: $80

jr_013_5915:
    dec h                                         ; $5915: $25
    ret nz                                        ; $5916: $c0

    dec e                                         ; $5917: $1d
    add b                                         ; $5918: $80

jr_013_5919:
    dec h                                         ; $5919: $25
    ret nz                                        ; $591a: $c0

    dec e                                         ; $591b: $1d
    add b                                         ; $591c: $80

jr_013_591d:
    dec h                                         ; $591d: $25
    ret nz                                        ; $591e: $c0

    dec e                                         ; $591f: $1d
    add b                                         ; $5920: $80

jr_013_5921:
    dec h                                         ; $5921: $25
    ret nz                                        ; $5922: $c0

    dec e                                         ; $5923: $1d
    add hl, bc                                    ; $5924: $09
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    nop                                           ; $592a: $00
    nop                                           ; $592b: $00
    ld b, b                                       ; $592c: $40
    ld b, b                                       ; $592d: $40
    ld e, $04                                     ; $592e: $1e $04
    nop                                           ; $5930: $00
    jr nz, jr_013_5933                            ; $5931: $20 $00

jr_013_5933:
    jr c, jr_013_5935                             ; $5933: $38 $00

jr_013_5935:
    jr nz, jr_013_5937                            ; $5935: $20 $00

jr_013_5937:
    ld b, $00                                     ; $5937: $06 $00
    jr nz, jr_013_593b                            ; $5939: $20 $00

jr_013_593b:
    ld b, $00                                     ; $593b: $06 $00
    jr nz, jr_013_593f                            ; $593d: $20 $00

jr_013_593f:
    ld b, $00                                     ; $593f: $06 $00
    jr nz, jr_013_5943                            ; $5941: $20 $00

jr_013_5943:
    ld b, $07                                     ; $5943: $06 $07
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00
    nop                                           ; $594a: $00
    nop                                           ; $594b: $00
    ld b, b                                       ; $594c: $40
    ld b, b                                       ; $594d: $40
    rrca                                          ; $594e: $0f
    jr nz, jr_013_58d1                            ; $594f: $20 $80

    ld [hl+], a                                   ; $5951: $22
    and b                                         ; $5952: $a0
    dec e                                         ; $5953: $1d
    nop                                           ; $5954: $00
    db $10                                        ; $5955: $10
    ret nz                                        ; $5956: $c0

    ld hl, $1000                                  ; $5957: $21 $00 $10
    ret nz                                        ; $595a: $c0

    ld hl, $1000                                  ; $595b: $21 $00 $10
    ret nz                                        ; $595e: $c0

    ld hl, $1000                                  ; $595f: $21 $00 $10
    ret nz                                        ; $5962: $c0

    ld hl, $0007                                  ; $5963: $21 $07 $00
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    nop                                           ; $596a: $00
    nop                                           ; $596b: $00
    ld b, b                                       ; $596c: $40
    ld b, b                                       ; $596d: $40
    dec e                                         ; $596e: $1d
    inc e                                         ; $596f: $1c
    and b                                         ; $5970: $a0
    rra                                           ; $5971: $1f
    jr nz, @+$22                                  ; $5972: $20 $20

    add b                                         ; $5974: $80

jr_013_5975:
    rra                                           ; $5975: $1f
    nop                                           ; $5976: $00
    ld e, $80                                     ; $5977: $1e $80
    rra                                           ; $5979: $1f
    nop                                           ; $597a: $00
    ld e, $80                                     ; $597b: $1e $80
    rra                                           ; $597d: $1f
    nop                                           ; $597e: $00
    ld e, $80                                     ; $597f: $1e $80
    rra                                           ; $5981: $1f
    nop                                           ; $5982: $00
    ld e, $07                                     ; $5983: $1e $07
    nop                                           ; $5985: $00
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
    nop                                           ; $598a: $00
    nop                                           ; $598b: $00
    jr nc, @+$32                                  ; $598c: $30 $30

    rra                                           ; $598e: $1f
    dec e                                         ; $598f: $1d
    nop                                           ; $5990: $00
    ld [hl+], a                                   ; $5991: $22
    nop                                           ; $5992: $00
    ld e, $80                                     ; $5993: $1e $80
    ld hl, $1f00                                  ; $5995: $21 $00 $1f
    add b                                         ; $5998: $80
    ld hl, $1f00                                  ; $5999: $21 $00 $1f
    add b                                         ; $599c: $80
    ld hl, $1f00                                  ; $599d: $21 $00 $1f
    add b                                         ; $59a0: $80
    ld hl, $1f00                                  ; $59a1: $21 $00 $1f
    add hl, bc                                    ; $59a4: $09
    nop                                           ; $59a5: $00
    nop                                           ; $59a6: $00
    nop                                           ; $59a7: $00
    nop                                           ; $59a8: $00
    nop                                           ; $59a9: $00
    nop                                           ; $59aa: $00
    nop                                           ; $59ab: $00
    ld b, b                                       ; $59ac: $40
    ld b, d                                       ; $59ad: $42
    inc h                                         ; $59ae: $24
    dec bc                                        ; $59af: $0b
    nop                                           ; $59b0: $00
    jr nz, jr_013_59b3                            ; $59b1: $20 $00

jr_013_59b3:
    ld a, [hl-]                                   ; $59b3: $3a
    nop                                           ; $59b4: $00
    ld h, $00                                     ; $59b5: $26 $00
    dec c                                         ; $59b7: $0d
    nop                                           ; $59b8: $00
    ld h, $00                                     ; $59b9: $26 $00
    dec c                                         ; $59bb: $0d
    nop                                           ; $59bc: $00
    ld h, $00                                     ; $59bd: $26 $00
    dec c                                         ; $59bf: $0d
    nop                                           ; $59c0: $00
    ld h, $00                                     ; $59c1: $26 $00
    dec c                                         ; $59c3: $0d
    inc b                                         ; $59c4: $04
    nop                                           ; $59c5: $00
    nop                                           ; $59c6: $00
    nop                                           ; $59c7: $00
    halt                                          ; $59c8: $76
    ld bc, $0008                                  ; $59c9: $01 $08 $00
    ld [hl], $42                                  ; $59cc: $36 $42
    dec e                                         ; $59ce: $1d
    add hl, bc                                    ; $59cf: $09
    nop                                           ; $59d0: $00
    jr nz, jr_013_59d3                            ; $59d1: $20 $00

jr_013_59d3:
    add hl, sp                                    ; $59d3: $39
    add b                                         ; $59d4: $80
    ld e, $00                                     ; $59d5: $1e $00
    ld a, [bc]                                    ; $59d7: $0a
    ld b, b                                       ; $59d8: $40

jr_013_59d9:
    rra                                           ; $59d9: $1f
    ret nz                                        ; $59da: $c0

    ld a, [bc]                                    ; $59db: $0a
    add b                                         ; $59dc: $80
    ld e, $00                                     ; $59dd: $1e $00
    ld a, [bc]                                    ; $59df: $0a
    ld b, b                                       ; $59e0: $40

jr_013_59e1:
    rra                                           ; $59e1: $1f
    ret nz                                        ; $59e2: $c0

    ld a, [bc]                                    ; $59e3: $0a
    inc b                                         ; $59e4: $04
    nop                                           ; $59e5: $00
    nop                                           ; $59e6: $00
    nop                                           ; $59e7: $00
    ld a, $01                                     ; $59e8: $3e $01
    ld [$3600], sp                                ; $59ea: $08 $00 $36
    ld b, d                                       ; $59ed: $42
    rra                                           ; $59ee: $1f
    rrca                                          ; $59ef: $0f
    nop                                           ; $59f0: $00
    jr nz, jr_013_59f3                            ; $59f1: $20 $00

jr_013_59f3:
    jr c, jr_013_5975                             ; $59f3: $38 $80

    ld [hl+], a                                   ; $59f5: $22
    add b                                         ; $59f6: $80
    stop                                          ; $59f7: $10 $00
    ld hl, $1100                                  ; $59f9: $21 $00 $11
    add b                                         ; $59fc: $80
    ld [hl+], a                                   ; $59fd: $22
    add b                                         ; $59fe: $80
    stop                                          ; $59ff: $10 $00
    ld hl, $1100                                  ; $5a01: $21 $00 $11
    inc bc                                        ; $5a04: $03
    nop                                           ; $5a05: $00
    nop                                           ; $5a06: $00
    nop                                           ; $5a07: $00
    and b                                         ; $5a08: $a0
    nop                                           ; $5a09: $00
    inc c                                         ; $5a0a: $0c
    ld b, $36                                     ; $5a0b: $06 $36
    inc a                                         ; $5a0d: $3c
    ld e, $17                                     ; $5a0e: $1e $17
    nop                                           ; $5a10: $00
    jr nz, jr_013_5a13                            ; $5a11: $20 $00

jr_013_5a13:
    inc l                                         ; $5a13: $2c
    add b                                         ; $5a14: $80
    jr nz, jr_013_5a17                            ; $5a15: $20 $00

jr_013_5a17:
    jr jr_013_59d9                                ; $5a17: $18 $c0

    rra                                           ; $5a19: $1f
    ret nz                                        ; $5a1a: $c0

    add hl, de                                    ; $5a1b: $19
    add b                                         ; $5a1c: $80
    jr nz, jr_013_5a1f                            ; $5a1d: $20 $00

jr_013_5a1f:
    jr jr_013_59e1                                ; $5a1f: $18 $c0

    rra                                           ; $5a21: $1f
    ret nz                                        ; $5a22: $c0

    add hl, de                                    ; $5a23: $19
    dec b                                         ; $5a24: $05
    nop                                           ; $5a25: $00
    nop                                           ; $5a26: $00
    nop                                           ; $5a27: $00
    ldh [rSB], a                                  ; $5a28: $e0 $01
    nop                                           ; $5a2a: $00
    nop                                           ; $5a2b: $00
    ld b, b                                       ; $5a2c: $40
    ld b, d                                       ; $5a2d: $42
    ld a, [bc]                                    ; $5a2e: $0a
    ld b, $00                                     ; $5a2f: $06 $00
    ld sp, $3780                                  ; $5a31: $31 $80 $37
    ret nz                                        ; $5a34: $c0

jr_013_5a35:
    inc c                                         ; $5a35: $0c
    ret nz                                        ; $5a36: $c0

    rlca                                          ; $5a37: $07
    nop                                           ; $5a38: $00
    inc c                                         ; $5a39: $0c
    add b                                         ; $5a3a: $80
    ld [$0cc0], sp                                ; $5a3b: $08 $c0 $0c
    ret nz                                        ; $5a3e: $c0

    rlca                                          ; $5a3f: $07
    nop                                           ; $5a40: $00
    inc c                                         ; $5a41: $0c
    add b                                         ; $5a42: $80
    ld [$0004], sp                                ; $5a43: $08 $04 $00
    nop                                           ; $5a46: $00
    nop                                           ; $5a47: $00
    inc [hl]                                      ; $5a48: $34
    ld bc, $0008                                  ; $5a49: $01 $08 $00
    ld [hl-], a                                   ; $5a4c: $32
    ld b, d                                       ; $5a4d: $42
    ld e, $10                                     ; $5a4e: $1e $10
    nop                                           ; $5a50: $00
    jr nz, jr_013_5a53                            ; $5a51: $20 $00

jr_013_5a53:
    jr c, jr_013_5a55                             ; $5a53: $38 $00

jr_013_5a55:
    rra                                           ; $5a55: $1f
    and b                                         ; $5a56: $a0
    ld de, $2180                                  ; $5a57: $11 $80 $21
    ret nz                                        ; $5a5a: $c0

    ld de, $1f00                                  ; $5a5b: $11 $00 $1f
    and b                                         ; $5a5e: $a0
    ld de, $2180                                  ; $5a5f: $11 $80 $21
    ret nz                                        ; $5a62: $c0

    ld de, $0004                                  ; $5a63: $11 $04 $00
    nop                                           ; $5a66: $00
    nop                                           ; $5a67: $00
    ld b, c                                       ; $5a68: $41
    ld bc, $0408                                  ; $5a69: $01 $08 $04
    ld [hl], $44                                  ; $5a6c: $36 $44
    dec d                                         ; $5a6e: $15
    dec c                                         ; $5a6f: $0d
    nop                                           ; $5a70: $00
    jr nz, jr_013_5a73                            ; $5a71: $20 $00

jr_013_5a73:
    inc sp                                        ; $5a73: $33
    ld b, b                                       ; $5a74: $40
    jr jr_013_5ab7                                ; $5a75: $18 $40

    ld c, $c0                                     ; $5a77: $0e $c0
    ld d, $40                                     ; $5a79: $16 $40

jr_013_5a7b:
    rrca                                          ; $5a7b: $0f
    ld b, b                                       ; $5a7c: $40
    jr jr_013_5abf                                ; $5a7d: $18 $40

    ld c, $c0                                     ; $5a7f: $0e $c0
    ld d, $40                                     ; $5a81: $16 $40

jr_013_5a83:
    rrca                                          ; $5a83: $0f
    dec b                                         ; $5a84: $05
    nop                                           ; $5a85: $00
    nop                                           ; $5a86: $00
    nop                                           ; $5a87: $00
    call $0801                                    ; $5a88: $cd $01 $08
    nop                                           ; $5a8b: $00
    inc [hl]                                      ; $5a8c: $34
    ld b, d                                       ; $5a8d: $42
    ld [hl+], a                                   ; $5a8e: $22
    rlca                                          ; $5a8f: $07
    nop                                           ; $5a90: $00
    jr z, jr_013_5a93                             ; $5a91: $28 $00

jr_013_5a93:
    add hl, sp                                    ; $5a93: $39
    add b                                         ; $5a94: $80
    inc h                                         ; $5a95: $24
    nop                                           ; $5a96: $00
    ld [$2300], sp                                ; $5a97: $08 $00 $23
    add b                                         ; $5a9a: $80
    add hl, bc                                    ; $5a9b: $09
    add b                                         ; $5a9c: $80
    inc h                                         ; $5a9d: $24
    nop                                           ; $5a9e: $00
    ld [$2300], sp                                ; $5a9f: $08 $00 $23
    add b                                         ; $5aa2: $80
    add hl, bc                                    ; $5aa3: $09
    inc bc                                        ; $5aa4: $03
    nop                                           ; $5aa5: $00
    nop                                           ; $5aa6: $00
    nop                                           ; $5aa7: $00
    adc b                                         ; $5aa8: $88
    nop                                           ; $5aa9: $00
    inc c                                         ; $5aaa: $0c
    ld [$3630], sp                                ; $5aab: $08 $30 $36
    dec e                                         ; $5aae: $1d
    dec d                                         ; $5aaf: $15
    nop                                           ; $5ab0: $00
    jr nz, jr_013_5ab3                            ; $5ab1: $20 $00

jr_013_5ab3:
    jr z, jr_013_5a35                             ; $5ab3: $28 $80

    ld e, $00                                     ; $5ab5: $1e $00

jr_013_5ab7:
    rla                                           ; $5ab7: $17
    ret nz                                        ; $5ab8: $c0

    jr nz, jr_013_5a7b                            ; $5ab9: $20 $c0

    ld d, $80                                     ; $5abb: $16 $80
    ld e, $00                                     ; $5abd: $1e $00

jr_013_5abf:
    rla                                           ; $5abf: $17
    ret nz                                        ; $5ac0: $c0

    jr nz, jr_013_5a83                            ; $5ac1: $20 $c0

    ld d, $04                                     ; $5ac3: $16 $04
    nop                                           ; $5ac5: $00
    nop                                           ; $5ac6: $00
    nop                                           ; $5ac7: $00
    ld [hl], d                                    ; $5ac8: $72
    ld bc, $000c                                  ; $5ac9: $01 $0c $00
    ld [hl], $42                                  ; $5acc: $36 $42
    jr nz, jr_013_5ad9                            ; $5ace: $20 $09

    nop                                           ; $5ad0: $00
    add hl, de                                    ; $5ad1: $19
    nop                                           ; $5ad2: $00
    scf                                           ; $5ad3: $37
    nop                                           ; $5ad4: $00
    ld [hl+], a                                   ; $5ad5: $22
    ld h, b                                       ; $5ad6: $60
    dec bc                                        ; $5ad7: $0b
    nop                                           ; $5ad8: $00

jr_013_5ad9:
    inc hl                                        ; $5ad9: $23
    ld b, b                                       ; $5ada: $40
    ld a, [bc]                                    ; $5adb: $0a
    nop                                           ; $5adc: $00
    ld [hl+], a                                   ; $5add: $22
    ld h, b                                       ; $5ade: $60
    dec bc                                        ; $5adf: $0b
    nop                                           ; $5ae0: $00
    inc hl                                        ; $5ae1: $23
    ld b, b                                       ; $5ae2: $40
    ld a, [bc]                                    ; $5ae3: $0a
    inc b                                         ; $5ae4: $04
    nop                                           ; $5ae5: $00
    nop                                           ; $5ae6: $00
    nop                                           ; $5ae7: $00
    ld e, a                                       ; $5ae8: $5f
    ld bc, $0008                                  ; $5ae9: $01 $08 $00
    inc [hl]                                      ; $5aec: $34
    ld a, $1b                                     ; $5aed: $3e $1b
    inc c                                         ; $5aef: $0c
    nop                                           ; $5af0: $00
    inc e                                         ; $5af1: $1c
    nop                                           ; $5af2: $00
    inc sp                                        ; $5af3: $33
    add b                                         ; $5af4: $80
    inc e                                         ; $5af5: $1c
    ld b, b                                       ; $5af6: $40
    ld c, $80                                     ; $5af7: $0e $80
    dec e                                         ; $5af9: $1d
    ld b, b                                       ; $5afa: $40
    rrca                                          ; $5afb: $0f
    add b                                         ; $5afc: $80
    inc e                                         ; $5afd: $1c
    ld b, b                                       ; $5afe: $40
    ld c, $80                                     ; $5aff: $0e $80
    dec e                                         ; $5b01: $1d
    ld b, b                                       ; $5b02: $40
    rrca                                          ; $5b03: $0f
    dec b                                         ; $5b04: $05
    nop                                           ; $5b05: $00
    nop                                           ; $5b06: $00
    nop                                           ; $5b07: $00
    rst $18                                       ; $5b08: $df
    ld bc, $0006                                  ; $5b09: $01 $06 $00
    ld b, b                                       ; $5b0c: $40
    ld b, d                                       ; $5b0d: $42
    inc e                                         ; $5b0e: $1c
    dec b                                         ; $5b0f: $05
    nop                                           ; $5b10: $00
    dec hl                                        ; $5b11: $2b
    ret nz                                        ; $5b12: $c0

    jr c, jr_013_5b55                             ; $5b13: $38 $40

    ld e, $40                                     ; $5b15: $1e $40
    ld b, $c0                                     ; $5b17: $06 $c0
    rra                                           ; $5b19: $1f
    ret nz                                        ; $5b1a: $c0

jr_013_5b1b:
    ld b, $40                                     ; $5b1b: $06 $40
    ld e, $40                                     ; $5b1d: $1e $40
    ld b, $c0                                     ; $5b1f: $06 $c0
    rra                                           ; $5b21: $1f
    ret nz                                        ; $5b22: $c0

jr_013_5b23:
    ld b, $03                                     ; $5b23: $06 $03
    nop                                           ; $5b25: $00
    nop                                           ; $5b26: $00
    nop                                           ; $5b27: $00
    sub l                                         ; $5b28: $95
    nop                                           ; $5b29: $00
    inc c                                         ; $5b2a: $0c
    ld [bc], a                                    ; $5b2b: $02
    ld [hl-], a                                   ; $5b2c: $32
    jr c, jr_013_5b4d                             ; $5b2d: $38 $1e

    ld d, $00                                     ; $5b2f: $16 $00
    jr nz, jr_013_5b33                            ; $5b31: $20 $00

jr_013_5b33:
    dec hl                                        ; $5b33: $2b
    ret nz                                        ; $5b34: $c0

    rra                                           ; $5b35: $1f
    nop                                           ; $5b36: $00
    rla                                           ; $5b37: $17
    ld b, b                                       ; $5b38: $40
    ld hl, $1880                                  ; $5b39: $21 $80 $18
    ret nz                                        ; $5b3c: $c0

    rra                                           ; $5b3d: $1f
    nop                                           ; $5b3e: $00
    rla                                           ; $5b3f: $17
    ld b, b                                       ; $5b40: $40
    ld hl, $1880                                  ; $5b41: $21 $80 $18
    inc b                                         ; $5b44: $04
    nop                                           ; $5b45: $00
    nop                                           ; $5b46: $00
    nop                                           ; $5b47: $00
    ld [hl], b                                    ; $5b48: $70
    ld bc, $0008                                  ; $5b49: $01 $08 $00
    inc [hl]                                      ; $5b4c: $34

jr_013_5b4d:
    ld b, d                                       ; $5b4d: $42
    rra                                           ; $5b4e: $1f
    add hl, bc                                    ; $5b4f: $09
    nop                                           ; $5b50: $00
    dec e                                         ; $5b51: $1d
    nop                                           ; $5b52: $00
    ld [hl], $80                                  ; $5b53: $36 $80

jr_013_5b55:
    ld hl, $0a40                                  ; $5b55: $21 $40 $0a
    nop                                           ; $5b58: $00
    jr nz, jr_013_5b1b                            ; $5b59: $20 $c0

    ld a, [bc]                                    ; $5b5b: $0a
    add b                                         ; $5b5c: $80
    ld hl, $0a40                                  ; $5b5d: $21 $40 $0a
    nop                                           ; $5b60: $00
    jr nz, jr_013_5b23                            ; $5b61: $20 $c0

    ld a, [bc]                                    ; $5b63: $0a
    inc b                                         ; $5b64: $04
    nop                                           ; $5b65: $00
    nop                                           ; $5b66: $00
    nop                                           ; $5b67: $00
    add [hl]                                      ; $5b68: $86
    ld bc, $0010                                  ; $5b69: $01 $10 $00
    jr nc, jr_013_5bb0                            ; $5b6c: $30 $42

    ld e, $07                                     ; $5b6e: $1e $07
    nop                                           ; $5b70: $00
    jr nz, jr_013_5b73                            ; $5b71: $20 $00

jr_013_5b73:
    add hl, sp                                    ; $5b73: $39
    add b                                         ; $5b74: $80
    ld hl, $0900                                  ; $5b75: $21 $00 $09
    nop                                           ; $5b78: $00
    rra                                           ; $5b79: $1f
    ret nz                                        ; $5b7a: $c0

    ld [$2180], sp                                ; $5b7b: $08 $80 $21
    nop                                           ; $5b7e: $00
    add hl, bc                                    ; $5b7f: $09
    nop                                           ; $5b80: $00
    rra                                           ; $5b81: $1f
    ret nz                                        ; $5b82: $c0

    ld [$0004], sp                                ; $5b83: $08 $04 $00
    nop                                           ; $5b86: $00
    nop                                           ; $5b87: $00
    ld e, b                                       ; $5b88: $58
    ld bc, $0008                                  ; $5b89: $01 $08 $00
    ld [hl-], a                                   ; $5b8c: $32
    ld b, d                                       ; $5b8d: $42
    add hl, de                                    ; $5b8e: $19
    dec c                                         ; $5b8f: $0d
    nop                                           ; $5b90: $00
    dec e                                         ; $5b91: $1d
    nop                                           ; $5b92: $00
    ld a, [hl-]                                   ; $5b93: $3a
    add b                                         ; $5b94: $80
    inc e                                         ; $5b95: $1c
    nop                                           ; $5b96: $00
    ld c, $00                                     ; $5b97: $0e $00
    ld a, [de]                                    ; $5b99: $1a
    nop                                           ; $5b9a: $00
    rrca                                          ; $5b9b: $0f
    add b                                         ; $5b9c: $80
    inc e                                         ; $5b9d: $1c
    nop                                           ; $5b9e: $00
    ld c, $00                                     ; $5b9f: $0e $00
    ld a, [de]                                    ; $5ba1: $1a
    nop                                           ; $5ba2: $00
    rrca                                          ; $5ba3: $0f
    inc b                                         ; $5ba4: $04
    nop                                           ; $5ba5: $00
    nop                                           ; $5ba6: $00
    nop                                           ; $5ba7: $00
    ld e, h                                       ; $5ba8: $5c
    ld bc, $0008                                  ; $5ba9: $01 $08 $00
    jr c, jr_013_5bee                             ; $5bac: $38 $40

    inc hl                                        ; $5bae: $23
    inc c                                         ; $5baf: $0c

jr_013_5bb0:
    nop                                           ; $5bb0: $00
    inc hl                                        ; $5bb1: $23
    nop                                           ; $5bb2: $00
    dec [hl]                                      ; $5bb3: $35
    ret nz                                        ; $5bb4: $c0

    inc h                                         ; $5bb5: $24
    ret nz                                        ; $5bb6: $c0

    ld c, $80                                     ; $5bb7: $0e $80
    ld h, $40                                     ; $5bb9: $26 $40
    ld c, $c0                                     ; $5bbb: $0e $c0
    inc h                                         ; $5bbd: $24
    ret nz                                        ; $5bbe: $c0

    ld c, $80                                     ; $5bbf: $0e $80
    ld h, $40                                     ; $5bc1: $26 $40
    ld c, $03                                     ; $5bc3: $0e $03
    nop                                           ; $5bc5: $00
    nop                                           ; $5bc6: $00
    nop                                           ; $5bc7: $00
    xor d                                         ; $5bc8: $aa
    nop                                           ; $5bc9: $00
    inc c                                         ; $5bca: $0c
    ld [bc], a                                    ; $5bcb: $02
    inc [hl]                                      ; $5bcc: $34
    ld a, $1e                                     ; $5bcd: $3e $1e
    dec d                                         ; $5bcf: $15
    nop                                           ; $5bd0: $00
    jr nz, jr_013_5bd3                            ; $5bd1: $20 $00

jr_013_5bd3:
    inc l                                         ; $5bd3: $2c
    ret nz                                        ; $5bd4: $c0

    rra                                           ; $5bd5: $1f
    and b                                         ; $5bd6: $a0
    ld d, $60                                     ; $5bd7: $16 $60
    ld hl, $1700                                  ; $5bd9: $21 $00 $17
    ret nz                                        ; $5bdc: $c0

    rra                                           ; $5bdd: $1f
    and b                                         ; $5bde: $a0
    ld d, $60                                     ; $5bdf: $16 $60
    ld hl, $1700                                  ; $5be1: $21 $00 $17
    dec b                                         ; $5be4: $05
    nop                                           ; $5be5: $00
    nop                                           ; $5be6: $00
    nop                                           ; $5be7: $00
    di                                            ; $5be8: $f3
    ld bc, $0006                                  ; $5be9: $01 $06 $00
    inc a                                         ; $5bec: $3c
    ld b, d                                       ; $5bed: $42

jr_013_5bee:
    add hl, de                                    ; $5bee: $19
    dec b                                         ; $5bef: $05
    nop                                           ; $5bf0: $00
    rla                                           ; $5bf1: $17
    ret nz                                        ; $5bf2: $c0

    jr c, jr_013_5bf5                             ; $5bf3: $38 $00

jr_013_5bf5:
    ld a, [de]                                    ; $5bf5: $1a
    ldh [rTMA], a                                 ; $5bf6: $e0 $06
    ret nz                                        ; $5bf8: $c0

    dec de                                        ; $5bf9: $1b
    ldh [rTMA], a                                 ; $5bfa: $e0 $06
    nop                                           ; $5bfc: $00
    ld a, [de]                                    ; $5bfd: $1a
    ldh [rTMA], a                                 ; $5bfe: $e0 $06
    ret nz                                        ; $5c00: $c0

    dec de                                        ; $5c01: $1b
    ldh [rTMA], a                                 ; $5c02: $e0 $06

    db $04

    nop                                           ; $5c05: $00
    nop                                           ; $5c06: $00
    nop                                           ; $5c07: $00

    db $6d, $01, $00, $00, $40, $40, $1f, $08, $00, $20, $00, $38

    add b                                         ; $5c14: $80
    ld hl, $0a80                                  ; $5c15: $21 $80 $0a

    db $a0, $22, $e0, $09

    add b                                         ; $5c1c: $80
    ld hl, $0a80                                  ; $5c1d: $21 $80 $0a
    and b                                         ; $5c20: $a0
    ld [hl+], a                                   ; $5c21: $22
    ldh [$09], a                                  ; $5c22: $e0 $09

    db $04

    nop                                           ; $5c25: $00
    nop                                           ; $5c26: $00
    nop                                           ; $5c27: $00

    db $75, $01, $00, $00, $40, $3e, $2d, $0e, $00, $0f, $00, $31

    ld b, b                                       ; $5c34: $40
    ld sp, $1080                                  ; $5c35: $31 $80 $10
    ret nz                                        ; $5c38: $c0

    cpl                                           ; $5c39: $2f
    ld b, b                                       ; $5c3a: $40
    db $10                                        ; $5c3b: $10
    ld b, b                                       ; $5c3c: $40
    ld sp, $1080                                  ; $5c3d: $31 $80 $10

    db $c0, $2f, $40, $10, $05

    nop                                           ; $5c45: $00
    nop                                           ; $5c46: $00
    nop                                           ; $5c47: $00

    db $dc, $01, $02, $00, $40, $42, $14, $09, $00, $35, $00, $39

    add b                                         ; $5c54: $80
    dec d                                         ; $5c55: $15
    jr nz, @+$0d                                  ; $5c56: $20 $0b

    nop                                           ; $5c58: $00
    rla                                           ; $5c59: $17
    ret nz                                        ; $5c5a: $c0

    ld a, [bc]                                    ; $5c5b: $0a
    add b                                         ; $5c5c: $80
    dec d                                         ; $5c5d: $15
    jr nz, @+$0d                                  ; $5c5e: $20 $0b

    db $00, $17, $c0, $0a, $04

    nop                                           ; $5c65: $00
    nop                                           ; $5c66: $00
    nop                                           ; $5c67: $00

    db $65, $01

    ld [$3600], sp                                ; $5c6a: $08 $00 $36
    ld b, d                                       ; $5c6d: $42
    add hl, de                                    ; $5c6e: $19
    dec bc                                        ; $5c6f: $0b
    nop                                           ; $5c70: $00
    dec de                                        ; $5c71: $1b
    nop                                           ; $5c72: $00
    ld [hl], $00                                  ; $5c73: $36 $00
    inc e                                         ; $5c75: $1c
    ld b, b                                       ; $5c76: $40
    inc c                                         ; $5c77: $0c
    add b                                         ; $5c78: $80
    ld a, [de]                                    ; $5c79: $1a
    ldh [$0d], a                                  ; $5c7a: $e0 $0d
    nop                                           ; $5c7c: $00
    inc e                                         ; $5c7d: $1c
    ld b, b                                       ; $5c7e: $40
    inc c                                         ; $5c7f: $0c
    add b                                         ; $5c80: $80
    ld a, [de]                                    ; $5c81: $1a
    ldh [$0d], a                                  ; $5c82: $e0 $0d

    db $03

    nop                                           ; $5c85: $00
    nop                                           ; $5c86: $00
    nop                                           ; $5c87: $00

    db $88, $00

    ld [$3200], sp                                ; $5c8a: $08 $00 $32
    ld b, d                                       ; $5c8d: $42
    inc hl                                        ; $5c8e: $23
    jr jr_013_5c91                                ; $5c8f: $18 $00

jr_013_5c91:
    add hl, de                                    ; $5c91: $19
    nop                                           ; $5c92: $00
    daa                                           ; $5c93: $27
    ld b, b                                       ; $5c94: $40
    inc h                                         ; $5c95: $24
    nop                                           ; $5c96: $00
    ld a, [de]                                    ; $5c97: $1a
    nop                                           ; $5c98: $00
    ld h, $80                                     ; $5c99: $26 $80
    ld a, [de]                                    ; $5c9b: $1a
    ld b, b                                       ; $5c9c: $40
    inc h                                         ; $5c9d: $24
    nop                                           ; $5c9e: $00
    ld a, [de]                                    ; $5c9f: $1a
    nop                                           ; $5ca0: $00
    ld h, $80                                     ; $5ca1: $26 $80
    ld a, [de]                                    ; $5ca3: $1a

    db $04

    nop                                           ; $5ca5: $00
    nop                                           ; $5ca6: $00
    nop                                           ; $5ca7: $00

    db $67, $01

    inc c                                         ; $5caa: $0c
    nop                                           ; $5cab: $00
    jr nc, jr_013_5cf0                            ; $5cac: $30 $42

    inc e                                         ; $5cae: $1c
    ld a, [bc]                                    ; $5caf: $0a
    nop                                           ; $5cb0: $00
    ld e, $00                                     ; $5cb1: $1e $00
    add hl, sp                                    ; $5cb3: $39
    ldh [rNR34], a                                ; $5cb4: $e0 $1e
    nop                                           ; $5cb6: $00
    dec bc                                        ; $5cb7: $0b
    ld h, b                                       ; $5cb8: $60
    ld e, $00                                     ; $5cb9: $1e $00
    dec c                                         ; $5cbb: $0d
    ldh [rNR34], a                                ; $5cbc: $e0 $1e
    nop                                           ; $5cbe: $00
    dec bc                                        ; $5cbf: $0b
    ld h, b                                       ; $5cc0: $60
    ld e, $00                                     ; $5cc1: $1e $00
    dec c                                         ; $5cc3: $0d

    db $05

    nop                                           ; $5cc5: $00
    nop                                           ; $5cc6: $00
    nop                                           ; $5cc7: $00

    db $bf, $01

    nop                                           ; $5cca: $00
    nop                                           ; $5ccb: $00
    ld b, b                                       ; $5ccc: $40
    ld b, b                                       ; $5ccd: $40
    dec l                                         ; $5cce: $2d
    inc c                                         ; $5ccf: $0c
    ld b, b                                       ; $5cd0: $40
    dec bc                                        ; $5cd1: $0b
    nop                                           ; $5cd2: $00
    add hl, sp                                    ; $5cd3: $39
    add b                                         ; $5cd4: $80
    jr nc, jr_013_5cd7                            ; $5cd5: $30 $00

jr_013_5cd7:
    dec c                                         ; $5cd7: $0d
    ret nz                                        ; $5cd8: $c0

    ld l, $c0                                     ; $5cd9: $2e $c0
    ld c, $80                                     ; $5cdb: $0e $80
    jr nc, jr_013_5cdf                            ; $5cdd: $30 $00

jr_013_5cdf:
    dec c                                         ; $5cdf: $0d
    ret nz                                        ; $5ce0: $c0

    ld l, $c0                                     ; $5ce1: $2e $c0
    db $0e                                        ; $5ce3: $0e

    db $03

    nop                                           ; $5ce5: $00
    nop                                           ; $5ce6: $00
    nop                                           ; $5ce7: $00

    db $a0, $00

    inc c                                         ; $5cea: $0c
    inc b                                         ; $5ceb: $04
    inc [hl]                                      ; $5cec: $34
    ld b, b                                       ; $5ced: $40
    dec e                                         ; $5cee: $1d
    inc d                                         ; $5cef: $14

jr_013_5cf0:
    nop                                           ; $5cf0: $00
    rra                                           ; $5cf1: $1f
    nop                                           ; $5cf2: $00
    ld a, [hl+]                                   ; $5cf3: $2a
    add b                                         ; $5cf4: $80
    rra                                           ; $5cf5: $1f
    nop                                           ; $5cf6: $00
    dec d                                         ; $5cf7: $15
    ld b, b                                       ; $5cf8: $40
    ld e, $c0                                     ; $5cf9: $1e $c0
    dec d                                         ; $5cfb: $15
    add b                                         ; $5cfc: $80
    rra                                           ; $5cfd: $1f
    nop                                           ; $5cfe: $00
    dec d                                         ; $5cff: $15
    ld b, b                                       ; $5d00: $40
    ld e, $c0                                     ; $5d01: $1e $c0
    dec d                                         ; $5d03: $15

    db $04

    nop                                           ; $5d05: $00
    nop                                           ; $5d06: $00
    nop                                           ; $5d07: $00

    db $60, $01

    nop                                           ; $5d0a: $00
    nop                                           ; $5d0b: $00
    inc [hl]                                      ; $5d0c: $34
    ld b, b                                       ; $5d0d: $40
    dec d                                         ; $5d0e: $15
    dec c                                         ; $5d0f: $0d
    nop                                           ; $5d10: $00
    ld a, [de]                                    ; $5d11: $1a
    nop                                           ; $5d12: $00
    dec [hl]                                      ; $5d13: $35
    ret nz                                        ; $5d14: $c0

    ld d, $00                                     ; $5d15: $16 $00
    rrca                                          ; $5d17: $0f
    ld b, b                                       ; $5d18: $40
    jr jr_013_5d1b                                ; $5d19: $18 $00

jr_013_5d1b:
    rrca                                          ; $5d1b: $0f
    ret nz                                        ; $5d1c: $c0

    ld d, $00                                     ; $5d1d: $16 $00
    rrca                                          ; $5d1f: $0f
    ld b, b                                       ; $5d20: $40
    jr jr_013_5d23                                ; $5d21: $18 $00

jr_013_5d23:
    rrca                                          ; $5d23: $0f

    db $04

    nop                                           ; $5d25: $00
    nop                                           ; $5d26: $00
    nop                                           ; $5d27: $00

    db $6c, $01

    ld [$3400], sp                                ; $5d2a: $08 $00 $34
    ld b, d                                       ; $5d2d: $42
    ld e, $08                                     ; $5d2e: $1e $08
    nop                                           ; $5d30: $00
    jr nz, jr_013_5d33                            ; $5d31: $20 $00

jr_013_5d33:
    jr c, jr_013_5d35                             ; $5d33: $38 $00

jr_013_5d35:
    rra                                           ; $5d35: $1f
    add b                                         ; $5d36: $80
    ld a, [bc]                                    ; $5d37: $0a
    add b                                         ; $5d38: $80
    ld hl, $0a40                                  ; $5d39: $21 $40 $0a
    nop                                           ; $5d3c: $00
    rra                                           ; $5d3d: $1f
    add b                                         ; $5d3e: $80
    ld a, [bc]                                    ; $5d3f: $0a
    add b                                         ; $5d40: $80
    ld hl, $0a40                                  ; $5d41: $21 $40 $0a

    db $04

    nop                                           ; $5d45: $00
    nop                                           ; $5d46: $00
    nop                                           ; $5d47: $00

    db $87, $01

    ld [$3800], sp                                ; $5d4a: $08 $00 $38
    ld b, d                                       ; $5d4d: $42
    dec e                                         ; $5d4e: $1d
    rlca                                          ; $5d4f: $07
    nop                                           ; $5d50: $00
    jr nz, jr_013_5d53                            ; $5d51: $20 $00

jr_013_5d53:
    ld a, [hl-]                                   ; $5d53: $3a
    ld b, b                                       ; $5d54: $40
    ld e, $00                                     ; $5d55: $1e $00
    ld a, [bc]                                    ; $5d57: $0a
    add b                                         ; $5d58: $80
    rra                                           ; $5d59: $1f
    jr nz, jr_013_5d65                            ; $5d5a: $20 $09

    ld b, b                                       ; $5d5c: $40
    ld e, $00                                     ; $5d5d: $1e $00
    ld a, [bc]                                    ; $5d5f: $0a
    add b                                         ; $5d60: $80
    rra                                           ; $5d61: $1f
    jr nz, jr_013_5d6d                            ; $5d62: $20 $09

    db $03

jr_013_5d65:
    nop                                           ; $5d65: $00
    nop                                           ; $5d66: $00
    nop                                           ; $5d67: $00

    db $a4, $00

    ld [$3604], sp                                ; $5d6a: $08 $04 $36

jr_013_5d6d:
    ld b, h                                       ; $5d6d: $44
    add hl, de                                    ; $5d6e: $19
    dec e                                         ; $5d6f: $1d
    nop                                           ; $5d70: $00
    ld a, [de]                                    ; $5d71: $1a
    nop                                           ; $5d72: $00
    inc [hl]                                      ; $5d73: $34
    add b                                         ; $5d74: $80
    inc e                                         ; $5d75: $1c
    ret nz                                        ; $5d76: $c0

    ld e, $00                                     ; $5d77: $1e $00
    dec de                                        ; $5d79: $1b
    ld h, b                                       ; $5d7a: $60
    rra                                           ; $5d7b: $1f
    add b                                         ; $5d7c: $80
    inc e                                         ; $5d7d: $1c
    ret nz                                        ; $5d7e: $c0

    ld e, $00                                     ; $5d7f: $1e $00
    dec de                                        ; $5d81: $1b
    ld h, b                                       ; $5d82: $60
    rra                                           ; $5d83: $1f

    db $05

    nop                                           ; $5d85: $00
    nop                                           ; $5d86: $00
    nop                                           ; $5d87: $00

    db $cb, $01

    nop                                           ; $5d8a: $00
    nop                                           ; $5d8b: $00
    ld b, b                                       ; $5d8c: $40
    ld b, b                                       ; $5d8d: $40
    ld a, [hl+]                                   ; $5d8e: $2a
    rlca                                          ; $5d8f: $07
    nop                                           ; $5d90: $00
    add hl, de                                    ; $5d91: $19
    nop                                           ; $5d92: $00
    jr c, jr_013_5dd5                             ; $5d93: $38 $40

jr_013_5d95:
    dec hl                                        ; $5d95: $2b
    ret nz                                        ; $5d96: $c0

    ld [$2e00], sp                                ; $5d97: $08 $00 $2e
    add b                                         ; $5d9a: $80
    add hl, bc                                    ; $5d9b: $09
    ld b, b                                       ; $5d9c: $40
    dec hl                                        ; $5d9d: $2b
    nop                                           ; $5d9e: $00
    ld [$2e00], sp                                ; $5d9f: $08 $00 $2e
    add b                                         ; $5da2: $80
    add hl, bc                                    ; $5da3: $09

    db $04

    nop                                           ; $5da5: $00
    nop                                           ; $5da6: $00
    nop                                           ; $5da7: $00

    db $78, $01, $04, $00, $30, $42, $1c, $08, $00, $20, $00, $36

    add b                                         ; $5db4: $80
    dec e                                         ; $5db5: $1d
    nop                                           ; $5db6: $00

jr_013_5db7:
    dec bc                                        ; $5db7: $0b

    db $c0, $1e, $c0, $09

    add b                                         ; $5dbc: $80
    dec e                                         ; $5dbd: $1d
    nop                                           ; $5dbe: $00

jr_013_5dbf:
    dec bc                                        ; $5dbf: $0b
    ret nz                                        ; $5dc0: $c0

    ld e, $c0                                     ; $5dc1: $1e $c0
    add hl, bc                                    ; $5dc3: $09

    db $03

    nop                                           ; $5dc5: $00
    nop                                           ; $5dc6: $00
    nop                                           ; $5dc7: $00

    db $95, $00

    ld [$3600], sp                                ; $5dca: $08 $00 $36
    ld b, d                                       ; $5dcd: $42
    ld [hl+], a                                   ; $5dce: $22
    jr jr_013_5dd1                                ; $5dcf: $18 $00

jr_013_5dd1:
    jr jr_013_5dd3                                ; $5dd1: $18 $00

jr_013_5dd3:
    jr z, jr_013_5d95                             ; $5dd3: $28 $c0

jr_013_5dd5:
    dec h                                         ; $5dd5: $25
    ld b, b                                       ; $5dd6: $40
    ld a, [de]                                    ; $5dd7: $1a
    ret nz                                        ; $5dd8: $c0

    inc hl                                        ; $5dd9: $23
    ld b, b                                       ; $5dda: $40
    ld a, [de]                                    ; $5ddb: $1a
    ret nz                                        ; $5ddc: $c0

    dec h                                         ; $5ddd: $25
    ld b, b                                       ; $5dde: $40
    ld a, [de]                                    ; $5ddf: $1a
    ret nz                                        ; $5de0: $c0

    inc hl                                        ; $5de1: $23
    ld b, b                                       ; $5de2: $40
    ld a, [de]                                    ; $5de3: $1a

    db $04

    nop                                           ; $5de5: $00
    nop                                           ; $5de6: $00
    nop                                           ; $5de7: $00

    db $64, $01

    ld [$3600], sp                                ; $5dea: $08 $00 $36
    ld b, d                                       ; $5ded: $42
    ld a, [de]                                    ; $5dee: $1a
    dec bc                                        ; $5def: $0b
    nop                                           ; $5df0: $00
    jr nz, jr_013_5df3                            ; $5df1: $20 $00

jr_013_5df3:
    scf                                           ; $5df3: $37
    jr nz, jr_013_5e13                            ; $5df4: $20 $1d

    jr nz, jr_013_5e05                            ; $5df6: $20 $0d

    ld h, b                                       ; $5df8: $60
    dec de                                        ; $5df9: $1b
    ldh [$0c], a                                  ; $5dfa: $e0 $0c
    jr nz, @+$1f                                  ; $5dfc: $20 $1d

    jr nz, jr_013_5e0d                            ; $5dfe: $20 $0d

    ld h, b                                       ; $5e00: $60
    dec de                                        ; $5e01: $1b
    ldh [$0c], a                                  ; $5e02: $e0 $0c

    db $05

jr_013_5e05:
    nop                                           ; $5e05: $00
    nop                                           ; $5e06: $00
    nop                                           ; $5e07: $00

    db $01, $02

    inc b                                         ; $5e0a: $04
    nop                                           ; $5e0b: $00
    inc a                                         ; $5e0c: $3c

jr_013_5e0d:
    ld b, d                                       ; $5e0d: $42
    ld de, $0008                                  ; $5e0e: $11 $08 $00
    cpl                                           ; $5e11: $2f
    nop                                           ; $5e12: $00

jr_013_5e13:
    jr c, jr_013_5e15                             ; $5e13: $38 $00

jr_013_5e15:
    inc d                                         ; $5e15: $14
    nop                                           ; $5e16: $00
    ld a, [bc]                                    ; $5e17: $0a
    ret nz                                        ; $5e18: $c0

    inc d                                         ; $5e19: $14
    jr nz, jr_013_5e27                            ; $5e1a: $20 $0b

    nop                                           ; $5e1c: $00
    inc d                                         ; $5e1d: $14
    nop                                           ; $5e1e: $00
    ld a, [bc]                                    ; $5e1f: $0a
    ret nz                                        ; $5e20: $c0

    inc d                                         ; $5e21: $14
    jr nz, jr_013_5e2f                            ; $5e22: $20 $0b

    db $04

    nop                                           ; $5e25: $00
    nop                                           ; $5e26: $00

jr_013_5e27:
    nop                                           ; $5e27: $00

    db $5f, $01

    ld [$3400], sp                                ; $5e2a: $08 $00 $34
    ld b, d                                       ; $5e2d: $42
    dec e                                         ; $5e2e: $1d

jr_013_5e2f:
    add hl, bc                                    ; $5e2f: $09
    nop                                           ; $5e30: $00
    rra                                           ; $5e31: $1f
    nop                                           ; $5e32: $00
    scf                                           ; $5e33: $37
    nop                                           ; $5e34: $00
    jr nz, jr_013_5db7                            ; $5e35: $20 $80

    dec bc                                        ; $5e37: $0b
    ldh [rNR34], a                                ; $5e38: $e0 $1e
    nop                                           ; $5e3a: $00
    ld a, [bc]                                    ; $5e3b: $0a
    nop                                           ; $5e3c: $00
    jr nz, jr_013_5dbf                            ; $5e3d: $20 $80

    dec bc                                        ; $5e3f: $0b
    ldh [rNR34], a                                ; $5e40: $e0 $1e
    nop                                           ; $5e42: $00
    ld a, [bc]                                    ; $5e43: $0a
    inc b                                         ; $5e44: $04
    nop                                           ; $5e45: $00
    nop                                           ; $5e46: $00
    nop                                           ; $5e47: $00
    ld a, h                                       ; $5e48: $7c
    ld bc, $0000                                  ; $5e49: $01 $00 $00
    ld b, b                                       ; $5e4c: $40
    ld b, b                                       ; $5e4d: $40
    inc e                                         ; $5e4e: $1c
    dec b                                         ; $5e4f: $05
    nop                                           ; $5e50: $00
    ld e, $00                                     ; $5e51: $1e $00
    jr c, jr_013_5e55                             ; $5e53: $38 $00

jr_013_5e55:
    ld e, $c0                                     ; $5e55: $1e $c0

jr_013_5e57:
    dec b                                         ; $5e57: $05
    jr nz, jr_013_5e79                            ; $5e58: $20 $1f

    ldh [rTAC], a                                 ; $5e5a: $e0 $07
    nop                                           ; $5e5c: $00
    ld e, $c0                                     ; $5e5d: $1e $c0
    dec b                                         ; $5e5f: $05
    jr nz, jr_013_5e81                            ; $5e60: $20 $1f

    ldh [rTAC], a                                 ; $5e62: $e0 $07
    inc b                                         ; $5e64: $04
    nop                                           ; $5e65: $00
    nop                                           ; $5e66: $00
    nop                                           ; $5e67: $00
    ld [hl], c                                    ; $5e68: $71
    ld bc, $0000                                  ; $5e69: $01 $00 $00
    ld b, b                                       ; $5e6c: $40
    ld b, b                                       ; $5e6d: $40
    inc h                                         ; $5e6e: $24
    add hl, bc                                    ; $5e6f: $09
    nop                                           ; $5e70: $00
    inc e                                         ; $5e71: $1c
    nop                                           ; $5e72: $00
    jr c, jr_013_5eb5                             ; $5e73: $38 $40

    daa                                           ; $5e75: $27
    nop                                           ; $5e76: $00
    ld a, [bc]                                    ; $5e77: $0a
    ret nz                                        ; $5e78: $c0

jr_013_5e79:
    dec h                                         ; $5e79: $25
    add b                                         ; $5e7a: $80
    ld a, [bc]                                    ; $5e7b: $0a
    ld b, b                                       ; $5e7c: $40
    daa                                           ; $5e7d: $27
    nop                                           ; $5e7e: $00
    ld a, [bc]                                    ; $5e7f: $0a
    ret nz                                        ; $5e80: $c0

jr_013_5e81:
    dec h                                         ; $5e81: $25
    add b                                         ; $5e82: $80
    ld a, [bc]                                    ; $5e83: $0a
    dec b                                         ; $5e84: $05
    nop                                           ; $5e85: $00
    nop                                           ; $5e86: $00
    nop                                           ; $5e87: $00
    inc c                                         ; $5e88: $0c
    ld [bc], a                                    ; $5e89: $02
    nop                                           ; $5e8a: $00
    nop                                           ; $5e8b: $00
    ld b, b                                       ; $5e8c: $40
    ld b, b                                       ; $5e8d: $40
    inc c                                         ; $5e8e: $0c
    add hl, bc                                    ; $5e8f: $09
    nop                                           ; $5e90: $00
    ld sp, $3800                                  ; $5e91: $31 $00 $38
    and b                                         ; $5e94: $a0

jr_013_5e95:
    rrca                                          ; $5e95: $0f
    ret nz                                        ; $5e96: $c0

    ld a, [bc]                                    ; $5e97: $0a
    ret nz                                        ; $5e98: $c0

    dec c                                         ; $5e99: $0d
    add b                                         ; $5e9a: $80
    dec bc                                        ; $5e9b: $0b
    and b                                         ; $5e9c: $a0
    rrca                                          ; $5e9d: $0f
    ret nz                                        ; $5e9e: $c0

    ld a, [bc]                                    ; $5e9f: $0a
    ret nz                                        ; $5ea0: $c0

    dec c                                         ; $5ea1: $0d
    add b                                         ; $5ea2: $80
    dec bc                                        ; $5ea3: $0b
    inc bc                                        ; $5ea4: $03
    nop                                           ; $5ea5: $00
    nop                                           ; $5ea6: $00
    nop                                           ; $5ea7: $00
    ld [hl], h                                    ; $5ea8: $74
    nop                                           ; $5ea9: $00
    nop                                           ; $5eaa: $00
    nop                                           ; $5eab: $00
    ld b, b                                       ; $5eac: $40
    ld b, b                                       ; $5ead: $40
    rra                                           ; $5eae: $1f
    dec d                                         ; $5eaf: $15
    nop                                           ; $5eb0: $00
    jr nz, jr_013_5eb3                            ; $5eb1: $20 $00

jr_013_5eb3:
    ld h, $20                                     ; $5eb3: $26 $20

jr_013_5eb5:
    jr nz, jr_013_5e57                            ; $5eb5: $20 $a0

    rla                                           ; $5eb7: $17
    ldh [rNR43], a                                ; $5eb8: $e0 $22
    jr nz, jr_013_5ed3                            ; $5eba: $20 $17

    jr nz, jr_013_5ede                            ; $5ebc: $20 $20

    and b                                         ; $5ebe: $a0
    rla                                           ; $5ebf: $17
    ldh [rNR43], a                                ; $5ec0: $e0 $22
    jr nz, jr_013_5edb                            ; $5ec2: $20 $17

    inc b                                         ; $5ec4: $04
    nop                                           ; $5ec5: $00
    nop                                           ; $5ec6: $00
    nop                                           ; $5ec7: $00
    sub a                                         ; $5ec8: $97
    ld bc, $0000                                  ; $5ec9: $01 $00 $00
    ld b, b                                       ; $5ecc: $40
    ld b, b                                       ; $5ecd: $40
    dec h                                         ; $5ece: $25
    rlca                                          ; $5ecf: $07
    nop                                           ; $5ed0: $00
    jr nz, jr_013_5ed3                            ; $5ed1: $20 $00

jr_013_5ed3:
    dec [hl]                                      ; $5ed3: $35
    nop                                           ; $5ed4: $00

jr_013_5ed5:
    daa                                           ; $5ed5: $27
    jr nz, jr_013_5ee1                            ; $5ed6: $20 $09

    and b                                         ; $5ed8: $a0
    jr z, @-$1e                                   ; $5ed9: $28 $e0

jr_013_5edb:
    rlca                                          ; $5edb: $07
    nop                                           ; $5edc: $00
    daa                                           ; $5edd: $27

jr_013_5ede:
    jr nz, jr_013_5ee9                            ; $5ede: $20 $09

    and b                                         ; $5ee0: $a0

jr_013_5ee1:
    jr z, @-$1e                                   ; $5ee1: $28 $e0

    rlca                                          ; $5ee3: $07
    inc b                                         ; $5ee4: $04
    nop                                           ; $5ee5: $00
    nop                                           ; $5ee6: $00
    nop                                           ; $5ee7: $00
    ld a, b                                       ; $5ee8: $78

jr_013_5ee9:
    ld bc, $0000                                  ; $5ee9: $01 $00 $00
    ld b, b                                       ; $5eec: $40
    ld b, b                                       ; $5eed: $40
    ld d, $08                                     ; $5eee: $16 $08
    nop                                           ; $5ef0: $00
    dec e                                         ; $5ef1: $1d
    nop                                           ; $5ef2: $00
    ld [hl], $00                                  ; $5ef3: $36 $00
    rla                                           ; $5ef5: $17
    nop                                           ; $5ef6: $00
    add hl, bc                                    ; $5ef7: $09
    add b                                         ; $5ef8: $80
    add hl, de                                    ; $5ef9: $19
    add b                                         ; $5efa: $80
    ld a, [bc]                                    ; $5efb: $0a
    nop                                           ; $5efc: $00
    rla                                           ; $5efd: $17
    nop                                           ; $5efe: $00
    add hl, bc                                    ; $5eff: $09
    add b                                         ; $5f00: $80
    add hl, de                                    ; $5f01: $19
    add b                                         ; $5f02: $80
    ld a, [bc]                                    ; $5f03: $0a
    inc b                                         ; $5f04: $04
    nop                                           ; $5f05: $00
    nop                                           ; $5f06: $00
    nop                                           ; $5f07: $00
    sub c                                         ; $5f08: $91
    ld bc, $0000                                  ; $5f09: $01 $00 $00
    ld b, b                                       ; $5f0c: $40
    ld b, b                                       ; $5f0d: $40
    rra                                           ; $5f0e: $1f
    dec b                                         ; $5f0f: $05
    nop                                           ; $5f10: $00
    ld [hl+], a                                   ; $5f11: $22
    nop                                           ; $5f12: $00
    jr c, jr_013_5e95                             ; $5f13: $38 $80

    ld hl, $07c0                                  ; $5f15: $21 $c0 $07
    add b                                         ; $5f18: $80
    ld hl, $0640                                  ; $5f19: $21 $40 $06
    add b                                         ; $5f1c: $80
    ld hl, $07c0                                  ; $5f1d: $21 $c0 $07
    add b                                         ; $5f20: $80
    ld hl, $0640                                  ; $5f21: $21 $40 $06
    inc bc                                        ; $5f24: $03
    nop                                           ; $5f25: $00
    nop                                           ; $5f26: $00
    nop                                           ; $5f27: $00
    xor e                                         ; $5f28: $ab
    nop                                           ; $5f29: $00
    nop                                           ; $5f2a: $00
    nop                                           ; $5f2b: $00
    ld b, b                                       ; $5f2c: $40
    ld b, b                                       ; $5f2d: $40
    ld e, $11                                     ; $5f2e: $1e $11
    nop                                           ; $5f30: $00
    jr nz, jr_013_5f33                            ; $5f31: $20 $00

jr_013_5f33:
    jr z, jr_013_5ed5                             ; $5f33: $28 $a0

    jr nz, jr_013_5f57                            ; $5f35: $20 $20

    inc de                                        ; $5f37: $13
    nop                                           ; $5f38: $00
    ld [hl+], a                                   ; $5f39: $22
    ld b, b                                       ; $5f3a: $40
    ld [de], a                                    ; $5f3b: $12
    and b                                         ; $5f3c: $a0
    jr nz, jr_013_5f5f                            ; $5f3d: $20 $20

    inc de                                        ; $5f3f: $13
    nop                                           ; $5f40: $00
    ld [hl+], a                                   ; $5f41: $22
    ld b, b                                       ; $5f42: $40
    ld [de], a                                    ; $5f43: $12
    dec b                                         ; $5f44: $05
    nop                                           ; $5f45: $00
    nop                                           ; $5f46: $00
    nop                                           ; $5f47: $00
    db $eb                                        ; $5f48: $eb
    ld bc, $0000                                  ; $5f49: $01 $00 $00
    ld b, b                                       ; $5f4c: $40
    ld b, b                                       ; $5f4d: $40
    ld hl, $0009                                  ; $5f4e: $21 $09 $00
    dec hl                                        ; $5f51: $2b
    nop                                           ; $5f52: $00
    add hl, sp                                    ; $5f53: $39
    jr nz, jr_013_5f7a                            ; $5f54: $20 $24

    nop                                           ; $5f56: $00

jr_013_5f57:
    ld a, [bc]                                    ; $5f57: $0a
    add b                                         ; $5f58: $80
    ld [hl+], a                                   ; $5f59: $22
    add b                                         ; $5f5a: $80
    ld a, [bc]                                    ; $5f5b: $0a
    jr nz, jr_013_5f82                            ; $5f5c: $20 $24

    nop                                           ; $5f5e: $00

jr_013_5f5f:
    ld a, [bc]                                    ; $5f5f: $0a
    add b                                         ; $5f60: $80
    ld [hl+], a                                   ; $5f61: $22
    add b                                         ; $5f62: $80
    ld a, [bc]                                    ; $5f63: $0a
    inc b                                         ; $5f64: $04
    nop                                           ; $5f65: $00
    nop                                           ; $5f66: $00
    nop                                           ; $5f67: $00
    add d                                         ; $5f68: $82
    ld bc, $0000                                  ; $5f69: $01 $00 $00
    ld b, b                                       ; $5f6c: $40
    ld b, b                                       ; $5f6d: $40
    add hl, de                                    ; $5f6e: $19
    ld [$1c00], sp                                ; $5f6f: $08 $00 $1c
    nop                                           ; $5f72: $00
    ld a, [hl-]                                   ; $5f73: $3a
    ret nz                                        ; $5f74: $c0

    ld a, [de]                                    ; $5f75: $1a
    ld b, b                                       ; $5f76: $40
    add hl, bc                                    ; $5f77: $09
    and b                                         ; $5f78: $a0
    inc e                                         ; $5f79: $1c

jr_013_5f7a:
    jr nz, jr_013_5f86                            ; $5f7a: $20 $0a

    ret nz                                        ; $5f7c: $c0

    ld a, [de]                                    ; $5f7d: $1a
    ld b, b                                       ; $5f7e: $40
    add hl, bc                                    ; $5f7f: $09
    and b                                         ; $5f80: $a0
    inc e                                         ; $5f81: $1c

jr_013_5f82:
    jr nz, jr_013_5f8e                            ; $5f82: $20 $0a

    inc bc                                        ; $5f84: $03
    nop                                           ; $5f85: $00

jr_013_5f86:
    nop                                           ; $5f86: $00
    nop                                           ; $5f87: $00
    and h                                         ; $5f88: $a4
    nop                                           ; $5f89: $00
    nop                                           ; $5f8a: $00
    nop                                           ; $5f8b: $00
    ld b, b                                       ; $5f8c: $40
    ld b, b                                       ; $5f8d: $40

jr_013_5f8e:
    dec e                                         ; $5f8e: $1d
    ld [de], a                                    ; $5f8f: $12
    nop                                           ; $5f90: $00
    ld h, $00                                     ; $5f91: $26 $00
    jr z, jr_013_5f95                             ; $5f93: $28 $00

jr_013_5f95:
    rra                                           ; $5f95: $1f
    jr nz, @+$15                                  ; $5f96: $20 $13

    add b                                         ; $5f98: $80
    rra                                           ; $5f99: $1f
    nop                                           ; $5f9a: $00
    inc d                                         ; $5f9b: $14
    nop                                           ; $5f9c: $00
    rra                                           ; $5f9d: $1f
    jr nz, @+$15                                  ; $5f9e: $20 $13

    add b                                         ; $5fa0: $80
    rra                                           ; $5fa1: $1f
    nop                                           ; $5fa2: $00
    inc d                                         ; $5fa3: $14
    inc b                                         ; $5fa4: $04
    nop                                           ; $5fa5: $00
    nop                                           ; $5fa6: $00
    nop                                           ; $5fa7: $00
    ld h, l                                       ; $5fa8: $65
    ld bc, $0000                                  ; $5fa9: $01 $00 $00
    ld b, b                                       ; $5fac: $40
    ld b, b                                       ; $5fad: $40
    inc hl                                        ; $5fae: $23
    add hl, bc                                    ; $5faf: $09
    nop                                           ; $5fb0: $00
    ld hl, $3700                                  ; $5fb1: $21 $00 $37
    nop                                           ; $5fb4: $00
    ld h, $40                                     ; $5fb5: $26 $40
    dec bc                                        ; $5fb7: $0b
    ld b, b                                       ; $5fb8: $40
    dec h                                         ; $5fb9: $25
    ret nz                                        ; $5fba: $c0

jr_013_5fbb:
    add hl, bc                                    ; $5fbb: $09
    nop                                           ; $5fbc: $00
    ld h, $40                                     ; $5fbd: $26 $40
    dec bc                                        ; $5fbf: $0b
    ld b, b                                       ; $5fc0: $40
    dec h                                         ; $5fc1: $25
    ret nz                                        ; $5fc2: $c0

jr_013_5fc3:
    add hl, bc                                    ; $5fc3: $09
    dec b                                         ; $5fc4: $05
    nop                                           ; $5fc5: $00
    nop                                           ; $5fc6: $00
    nop                                           ; $5fc7: $00
    ldh a, [rSB]                                  ; $5fc8: $f0 $01
    nop                                           ; $5fca: $00
    nop                                           ; $5fcb: $00
    ld b, b                                       ; $5fcc: $40
    ld b, b                                       ; $5fcd: $40
    dec hl                                        ; $5fce: $2b
    inc b                                         ; $5fcf: $04
    nop                                           ; $5fd0: $00
    inc de                                        ; $5fd1: $13
    nop                                           ; $5fd2: $00
    jr c, jr_013_6035                             ; $5fd3: $38 $60

    inc l                                         ; $5fd5: $2c
    jr nz, jr_013_5fde                            ; $5fd6: $20 $06

    ldh [$2e], a                                  ; $5fd8: $e0 $2e
    and b                                         ; $5fda: $a0
    ld b, $60                                     ; $5fdb: $06 $60
    inc l                                         ; $5fdd: $2c

jr_013_5fde:
    jr nz, jr_013_5fe6                            ; $5fde: $20 $06

    ldh [$2e], a                                  ; $5fe0: $e0 $2e
    and b                                         ; $5fe2: $a0
    ld b, $04                                     ; $5fe3: $06 $04
    nop                                           ; $5fe5: $00

jr_013_5fe6:
    nop                                           ; $5fe6: $00
    nop                                           ; $5fe7: $00
    and d                                         ; $5fe8: $a2
    ld bc, $0000                                  ; $5fe9: $01 $00 $00
    ld b, b                                       ; $5fec: $40
    ld b, b                                       ; $5fed: $40
    ld [de], a                                    ; $5fee: $12
    dec c                                         ; $5fef: $0d
    nop                                           ; $5ff0: $00
    dec e                                         ; $5ff1: $1d
    nop                                           ; $5ff2: $00
    scf                                           ; $5ff3: $37
    and b                                         ; $5ff4: $a0

jr_013_5ff5:
    dec d                                         ; $5ff5: $15
    and b                                         ; $5ff6: $a0
    rrca                                          ; $5ff7: $0f
    ld h, b                                       ; $5ff8: $60
    inc d                                         ; $5ff9: $14
    jr nz, jr_013_600b                            ; $5ffa: $20 $0f

    and b                                         ; $5ffc: $a0
    dec d                                         ; $5ffd: $15
    and b                                         ; $5ffe: $a0
    rrca                                          ; $5fff: $0f
    ld h, b                                       ; $6000: $60
    inc d                                         ; $6001: $14
    jr nz, @+$11                                  ; $6002: $20 $0f

    inc bc                                        ; $6004: $03
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00
    sub e                                         ; $6008: $93
    nop                                           ; $6009: $00
    nop                                           ; $600a: $00

jr_013_600b:
    nop                                           ; $600b: $00
    ld b, b                                       ; $600c: $40
    ld b, b                                       ; $600d: $40
    ld e, $15                                     ; $600e: $1e $15
    nop                                           ; $6010: $00
    ld hl, $2900                                  ; $6011: $21 $00 $29
    ld b, b                                       ; $6014: $40
    ld hl, $1600                                  ; $6015: $21 $00 $16
    ld b, b                                       ; $6018: $40
    jr nz, jr_013_601b                            ; $6019: $20 $00

jr_013_601b:
    rla                                           ; $601b: $17
    ld b, b                                       ; $601c: $40
    ld hl, $1600                                  ; $601d: $21 $00 $16
    ld b, b                                       ; $6020: $40
    jr nz, jr_013_6023                            ; $6021: $20 $00

jr_013_6023:
    rla                                           ; $6023: $17
    inc b                                         ; $6024: $04
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    adc a                                         ; $6028: $8f
    ld bc, $0000                                  ; $6029: $01 $00 $00
    ld b, b                                       ; $602c: $40
    ld b, b                                       ; $602d: $40
    ld h, $08                                     ; $602e: $26 $08
    nop                                           ; $6030: $00
    inc e                                         ; $6031: $1c
    nop                                           ; $6032: $00
    add hl, sp                                    ; $6033: $39
    and b                                         ; $6034: $a0

jr_013_6035:
    jr z, jr_013_6097                             ; $6035: $28 $60

    add hl, bc                                    ; $6037: $09
    add b                                         ; $6038: $80
    jr z, jr_013_5fbb                             ; $6039: $28 $80

    ld a, [bc]                                    ; $603b: $0a
    and b                                         ; $603c: $a0
    jr z, jr_013_609f                             ; $603d: $28 $60

    add hl, bc                                    ; $603f: $09
    add b                                         ; $6040: $80
    jr z, jr_013_5fc3                             ; $6041: $28 $80

    ld a, [bc]                                    ; $6043: $0a
    dec b                                         ; $6044: $05
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    rlca                                          ; $6048: $07
    ld [bc], a                                    ; $6049: $02
    nop                                           ; $604a: $00
    nop                                           ; $604b: $00
    ld b, b                                       ; $604c: $40
    ld b, b                                       ; $604d: $40
    inc h                                         ; $604e: $24
    ld [$0b00], sp                                ; $604f: $08 $00 $0b
    nop                                           ; $6052: $00
    add hl, sp                                    ; $6053: $39
    ld b, b                                       ; $6054: $40
    ld h, $c0                                     ; $6055: $26 $c0
    add hl, bc                                    ; $6057: $09
    jr nz, jr_013_6081                            ; $6058: $20 $27

    and b                                         ; $605a: $a0
    ld a, [bc]                                    ; $605b: $0a
    ld b, b                                       ; $605c: $40
    ld h, $c0                                     ; $605d: $26 $c0
    add hl, bc                                    ; $605f: $09
    jr nz, jr_013_6089                            ; $6060: $20 $27

    and b                                         ; $6062: $a0
    ld a, [bc]                                    ; $6063: $0a
    inc b                                         ; $6064: $04
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    add d                                         ; $6068: $82
    ld bc, $0000                                  ; $6069: $01 $00 $00
    ld b, b                                       ; $606c: $40
    ld b, b                                       ; $606d: $40
    rra                                           ; $606e: $1f
    ld b, $00                                     ; $606f: $06 $00
    ld e, $00                                     ; $6071: $1e $00
    jr c, jr_013_5ff5                             ; $6073: $38 $80

    ld hl, $0700                                  ; $6075: $21 $00 $07
    add b                                         ; $6078: $80
    ld hl, $0900                                  ; $6079: $21 $00 $09
    add b                                         ; $607c: $80
    ld hl, $0700                                  ; $607d: $21 $00 $07
    add b                                         ; $6080: $80

jr_013_6081:
    ld hl, $0900                                  ; $6081: $21 $00 $09
    inc b                                         ; $6084: $04
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    add d                                         ; $6088: $82

jr_013_6089:
    ld bc, $0000                                  ; $6089: $01 $00 $00
    ld b, b                                       ; $608c: $40
    ld b, b                                       ; $608d: $40
    inc e                                         ; $608e: $1c
    dec b                                         ; $608f: $05
    nop                                           ; $6090: $00
    ld a, [de]                                    ; $6091: $1a
    nop                                           ; $6092: $00
    add hl, sp                                    ; $6093: $39
    nop                                           ; $6094: $00
    jr nz, @+$42                                  ; $6095: $20 $40

jr_013_6097:
    rlca                                          ; $6097: $07
    add b                                         ; $6098: $80
    ld e, $80                                     ; $6099: $1e $80
    rlca                                          ; $609b: $07
    nop                                           ; $609c: $00
    jr nz, @+$42                                  ; $609d: $20 $40

jr_013_609f:
    rlca                                          ; $609f: $07
    add b                                         ; $60a0: $80
    ld e, $80                                     ; $60a1: $1e $80
    rlca                                          ; $60a3: $07
    dec b                                         ; $60a4: $05
    nop                                           ; $60a5: $00
    nop                                           ; $60a6: $00
    nop                                           ; $60a7: $00
    dec bc                                        ; $60a8: $0b
    ld [bc], a                                    ; $60a9: $02
    nop                                           ; $60aa: $00
    nop                                           ; $60ab: $00
    ld b, b                                       ; $60ac: $40
    ld b, b                                       ; $60ad: $40
    inc c                                         ; $60ae: $0c
    dec b                                         ; $60af: $05
    nop                                           ; $60b0: $00
    jr nc, jr_013_60b3                            ; $60b1: $30 $00

jr_013_60b3:
    ld a, [hl-]                                   ; $60b3: $3a
    ld h, b                                       ; $60b4: $60
    ld c, $60                                     ; $60b5: $0e $60
    ld b, $60                                     ; $60b7: $06 $60
    dec c                                         ; $60b9: $0d
    nop                                           ; $60ba: $00
    rlca                                          ; $60bb: $07
    ld h, b                                       ; $60bc: $60
    ld c, $60                                     ; $60bd: $0e $60
    ld b, $60                                     ; $60bf: $06 $60
    dec c                                         ; $60c1: $0d
    nop                                           ; $60c2: $00
    rlca                                          ; $60c3: $07
    inc bc                                        ; $60c4: $03
    nop                                           ; $60c5: $00
    nop                                           ; $60c6: $00
    nop                                           ; $60c7: $00
    sbc [hl]                                      ; $60c8: $9e
    nop                                           ; $60c9: $00
    nop                                           ; $60ca: $00
    nop                                           ; $60cb: $00
    ld b, b                                       ; $60cc: $40
    ld b, b                                       ; $60cd: $40
    ld e, $16                                     ; $60ce: $1e $16
    nop                                           ; $60d0: $00
    inc e                                         ; $60d1: $1c
    nop                                           ; $60d2: $00
    dec hl                                        ; $60d3: $2b
    jr nz, jr_013_60f6                            ; $60d4: $20 $20

    jr nz, @+$1a                                  ; $60d6: $20 $18

    ldh [rNR42], a                                ; $60d8: $e0 $21
    and b                                         ; $60da: $a0
    rla                                           ; $60db: $17
    jr nz, jr_013_60fe                            ; $60dc: $20 $20

    jr nz, jr_013_60f8                            ; $60de: $20 $18

    ldh [rNR42], a                                ; $60e0: $e0 $21
    and b                                         ; $60e2: $a0
    rla                                           ; $60e3: $17
    inc b                                         ; $60e4: $04
    nop                                           ; $60e5: $00
    nop                                           ; $60e6: $00
    nop                                           ; $60e7: $00
    sub a                                         ; $60e8: $97
    ld bc, $0000                                  ; $60e9: $01 $00 $00
    ld b, b                                       ; $60ec: $40
    ld b, b                                       ; $60ed: $40
    ld hl, $000c                                  ; $60ee: $21 $0c $00
    ld d, $00                                     ; $60f1: $16 $00
    add hl, sp                                    ; $60f3: $39
    ld b, b                                       ; $60f4: $40
    inc hl                                        ; $60f5: $23

jr_013_60f6:
    add b                                         ; $60f6: $80
    dec c                                         ; $60f7: $0d

jr_013_60f8:
    jr nz, jr_013_611d                            ; $60f8: $20 $23

    ldh [$0e], a                                  ; $60fa: $e0 $0e
    ld b, b                                       ; $60fc: $40
    inc hl                                        ; $60fd: $23

jr_013_60fe:
    add b                                         ; $60fe: $80
    dec c                                         ; $60ff: $0d
    jr nz, jr_013_6125                            ; $6100: $20 $23

    ldh [$0e], a                                  ; $6102: $e0 $0e
    inc b                                         ; $6104: $04
    nop                                           ; $6105: $00
    nop                                           ; $6106: $00
    nop                                           ; $6107: $00
    and b                                         ; $6108: $a0
    ld bc, $0000                                  ; $6109: $01 $00 $00
    ld b, b                                       ; $610c: $40
    ld b, b                                       ; $610d: $40
    ld hl, $0004                                  ; $610e: $21 $04 $00
    ld a, [de]                                    ; $6111: $1a
    nop                                           ; $6112: $00
    add hl, sp                                    ; $6113: $39
    ret nz                                        ; $6114: $c0

    inc hl                                        ; $6115: $23
    ld b, b                                       ; $6116: $40
    dec b                                         ; $6117: $05
    nop                                           ; $6118: $00
    inc hl                                        ; $6119: $23
    ret nz                                        ; $611a: $c0

    dec b                                         ; $611b: $05
    ret nz                                        ; $611c: $c0

jr_013_611d:
    inc hl                                        ; $611d: $23
    ld b, b                                       ; $611e: $40
    dec b                                         ; $611f: $05
    nop                                           ; $6120: $00
    inc hl                                        ; $6121: $23
    ret nz                                        ; $6122: $c0

    dec b                                         ; $6123: $05
    inc bc                                        ; $6124: $03

jr_013_6125:
    nop                                           ; $6125: $00
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    rst $00                                       ; $6128: $c7
    nop                                           ; $6129: $00
    nop                                           ; $612a: $00
    nop                                           ; $612b: $00
    ld b, b                                       ; $612c: $40
    ld b, b                                       ; $612d: $40
    inc hl                                        ; $612e: $23
    inc d                                         ; $612f: $14
    nop                                           ; $6130: $00
    ld a, [de]                                    ; $6131: $1a
    nop                                           ; $6132: $00
    dec l                                         ; $6133: $2d
    ret nz                                        ; $6134: $c0

    dec h                                         ; $6135: $25
    ret nz                                        ; $6136: $c0

    ld d, $40                                     ; $6137: $16 $40
    inc h                                         ; $6139: $24
    ret nz                                        ; $613a: $c0

    dec d                                         ; $613b: $15
    ret nz                                        ; $613c: $c0

    dec h                                         ; $613d: $25
    ret nz                                        ; $613e: $c0

    ld d, $40                                     ; $613f: $16 $40
    inc h                                         ; $6141: $24
    ret nz                                        ; $6142: $c0

    dec d                                         ; $6143: $15
    inc b                                         ; $6144: $04
    nop                                           ; $6145: $00
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    or c                                          ; $6148: $b1
    ld bc, $0000                                  ; $6149: $01 $00 $00
    ld b, b                                       ; $614c: $40
    ld b, b                                       ; $614d: $40
    inc hl                                        ; $614e: $23
    ld [$2900], sp                                ; $614f: $08 $00 $29
    nop                                           ; $6152: $00
    jr c, @+$42                                   ; $6153: $38 $40

    dec h                                         ; $6155: $25
    nop                                           ; $6156: $00
    ld a, [bc]                                    ; $6157: $0a
    ldh [rNR52], a                                ; $6158: $e0 $26
    ldh [$0a], a                                  ; $615a: $e0 $0a
    ld b, b                                       ; $615c: $40
    dec h                                         ; $615d: $25
    nop                                           ; $615e: $00
    ld a, [bc]                                    ; $615f: $0a
    ldh [rNR52], a                                ; $6160: $e0 $26
    ldh [$0a], a                                  ; $6162: $e0 $0a
    dec b                                         ; $6164: $05
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    inc b                                         ; $6168: $04
    ld [bc], a                                    ; $6169: $02
    nop                                           ; $616a: $00
    nop                                           ; $616b: $00
    ld b, b                                       ; $616c: $40
    ld b, b                                       ; $616d: $40
    cpl                                           ; $616e: $2f
    dec b                                         ; $616f: $05
    nop                                           ; $6170: $00
    ld c, $00                                     ; $6171: $0e $00
    add hl, sp                                    ; $6173: $39
    add b                                         ; $6174: $80
    ld sp, $0780                                  ; $6175: $31 $80 $07
    add b                                         ; $6178: $80
    ld [hl-], a                                   ; $6179: $32
    add b                                         ; $617a: $80
    ld b, $80                                     ; $617b: $06 $80
    ld sp, $0780                                  ; $617d: $31 $80 $07
    add b                                         ; $6180: $80
    ld [hl-], a                                   ; $6181: $32
    add b                                         ; $6182: $80
    ld b, $04                                     ; $6183: $06 $04
    nop                                           ; $6185: $00
    nop                                           ; $6186: $00
    nop                                           ; $6187: $00
    sbc h                                         ; $6188: $9c
    ld bc, $0000                                  ; $6189: $01 $00 $00
    ld b, b                                       ; $618c: $40
    ld b, b                                       ; $618d: $40
    ld e, $04                                     ; $618e: $1e $04
    nop                                           ; $6190: $00
    dec h                                         ; $6191: $25
    nop                                           ; $6192: $00
    add hl, sp                                    ; $6193: $39
    jr nz, @+$22                                  ; $6194: $20 $20

    ldh [rDIV], a                                 ; $6196: $e0 $04
    ret nz                                        ; $6198: $c0

    ld hl, $0600                                  ; $6199: $21 $00 $06
    jr nz, @+$22                                  ; $619c: $20 $20

    ldh [rDIV], a                                 ; $619e: $e0 $04
    ret nz                                        ; $61a0: $c0

    ld hl, $0600                                  ; $61a1: $21 $00 $06
    inc bc                                        ; $61a4: $03
    nop                                           ; $61a5: $00
    nop                                           ; $61a6: $00
    nop                                           ; $61a7: $00
    ret nz                                        ; $61a8: $c0

    nop                                           ; $61a9: $00
    nop                                           ; $61aa: $00
    nop                                           ; $61ab: $00
    ld b, b                                       ; $61ac: $40
    ld b, b                                       ; $61ad: $40
    dec e                                         ; $61ae: $1d
    dec d                                         ; $61af: $15
    nop                                           ; $61b0: $00
    jr nz, jr_013_61b3                            ; $61b1: $20 $00

jr_013_61b3:
    cpl                                           ; $61b3: $2f
    nop                                           ; $61b4: $00
    ld hl, $1800                                  ; $61b5: $21 $00 $18
    and b                                         ; $61b8: $a0
    ld e, $20                                     ; $61b9: $1e $20
    ld d, $00                                     ; $61bb: $16 $00
    ld hl, $1800                                  ; $61bd: $21 $00 $18
    and b                                         ; $61c0: $a0
    ld e, $20                                     ; $61c1: $1e $20
    ld d, $04                                     ; $61c3: $16 $04
    nop                                           ; $61c5: $00
    nop                                           ; $61c6: $00
    nop                                           ; $61c7: $00
    adc c                                         ; $61c8: $89
    ld bc, $0000                                  ; $61c9: $01 $00 $00
    ld b, b                                       ; $61cc: $40
    ld b, b                                       ; $61cd: $40
    rra                                           ; $61ce: $1f
    dec b                                         ; $61cf: $05
    nop                                           ; $61d0: $00
    ld h, $00                                     ; $61d1: $26 $00
    jr c, @-$3e                                   ; $61d3: $38 $c0

    ld [hl+], a                                   ; $61d5: $22
    and b                                         ; $61d6: $a0
    rlca                                          ; $61d7: $07
    add b                                         ; $61d8: $80
    jr nz, jr_013_621b                            ; $61d9: $20 $40

    rlca                                          ; $61db: $07
    ret nz                                        ; $61dc: $c0

    ld [hl+], a                                   ; $61dd: $22
    and b                                         ; $61de: $a0
    rlca                                          ; $61df: $07
    add b                                         ; $61e0: $80
    jr nz, jr_013_6223                            ; $61e1: $20 $40

    rlca                                          ; $61e3: $07
    dec b                                         ; $61e4: $05
    nop                                           ; $61e5: $00
    nop                                           ; $61e6: $00
    nop                                           ; $61e7: $00
    jr jr_013_61ec                                ; $61e8: $18 $02

    nop                                           ; $61ea: $00
    nop                                           ; $61eb: $00

jr_013_61ec:
    ld b, b                                       ; $61ec: $40
    ld b, b                                       ; $61ed: $40
    add hl, bc                                    ; $61ee: $09
    inc b                                         ; $61ef: $04
    nop                                           ; $61f0: $00
    inc [hl]                                      ; $61f1: $34
    nop                                           ; $61f2: $00
    add hl, sp                                    ; $61f3: $39
    jr nz, jr_013_6203                            ; $61f4: $20 $0d

    ldh [rTIMA], a                                ; $61f6: $e0 $05
    ret nz                                        ; $61f8: $c0

    dec bc                                        ; $61f9: $0b
    ld b, b                                       ; $61fa: $40
    ld b, $20                                     ; $61fb: $06 $20
    dec c                                         ; $61fd: $0d
    ldh [rTIMA], a                                ; $61fe: $e0 $05
    ret nz                                        ; $6200: $c0

    dec bc                                        ; $6201: $0b
    ld b, b                                       ; $6202: $40

jr_013_6203:
    ld b, $04                                     ; $6203: $06 $04
    nop                                           ; $6205: $00
    nop                                           ; $6206: $00
    nop                                           ; $6207: $00
    ld e, e                                       ; $6208: $5b
    ld bc, $0000                                  ; $6209: $01 $00 $00
    ld b, b                                       ; $620c: $40
    ld b, b                                       ; $620d: $40
    dec d                                         ; $620e: $15
    ld a, [bc]                                    ; $620f: $0a
    nop                                           ; $6210: $00
    inc e                                         ; $6211: $1c
    nop                                           ; $6212: $00
    ld [hl-], a                                   ; $6213: $32
    nop                                           ; $6214: $00
    jr @+$42                                      ; $6215: $18 $40

    inc c                                         ; $6217: $0c
    add b                                         ; $6218: $80
    rla                                           ; $6219: $17
    and b                                         ; $621a: $a0

jr_013_621b:
    dec bc                                        ; $621b: $0b
    nop                                           ; $621c: $00
    jr @+$42                                      ; $621d: $18 $40

    inc c                                         ; $621f: $0c
    add b                                         ; $6220: $80
    rla                                           ; $6221: $17
    and b                                         ; $6222: $a0

jr_013_6223:
    dec bc                                        ; $6223: $0b
    inc b                                         ; $6224: $04
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    nop                                           ; $6227: $00
    xor b                                         ; $6228: $a8
    ld bc, $0000                                  ; $6229: $01 $00 $00
    ld b, b                                       ; $622c: $40
    ld b, b                                       ; $622d: $40
    dec l                                         ; $622e: $2d
    inc c                                         ; $622f: $0c
    nop                                           ; $6230: $00
    rrca                                          ; $6231: $0f
    nop                                           ; $6232: $00
    jr c, jr_013_6275                             ; $6233: $38 $40

    jr nc, jr_013_6277                            ; $6235: $30 $40

    ld c, $40                                     ; $6237: $0e $40
    cpl                                           ; $6239: $2f
    ret nz                                        ; $623a: $c0

    dec c                                         ; $623b: $0d
    ld b, b                                       ; $623c: $40
    jr nc, jr_013_627f                            ; $623d: $30 $40

    ld c, $40                                     ; $623f: $0e $40
    cpl                                           ; $6241: $2f
    ret nz                                        ; $6242: $c0

    dec c                                         ; $6243: $0d
    inc bc                                        ; $6244: $03
    nop                                           ; $6245: $00
    nop                                           ; $6246: $00
    nop                                           ; $6247: $00
    or b                                          ; $6248: $b0
    nop                                           ; $6249: $00
    nop                                           ; $624a: $00
    nop                                           ; $624b: $00
    ld b, b                                       ; $624c: $40
    ld b, b                                       ; $624d: $40
    jr jr_013_626c                                ; $624e: $18 $1c

    nop                                           ; $6250: $00
    ld a, [hl+]                                   ; $6251: $2a
    nop                                           ; $6252: $00
    ld l, $a0                                     ; $6253: $2e $a0
    add hl, de                                    ; $6255: $19
    ldh [rNR34], a                                ; $6256: $e0 $1e
    nop                                           ; $6258: $00
    dec de                                        ; $6259: $1b
    ldh [rNR33], a                                ; $625a: $e0 $1d
    and b                                         ; $625c: $a0
    add hl, de                                    ; $625d: $19
    ldh [rNR34], a                                ; $625e: $e0 $1e
    nop                                           ; $6260: $00
    dec de                                        ; $6261: $1b
    ldh [rNR33], a                                ; $6262: $e0 $1d
    dec b                                         ; $6264: $05
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    dec b                                         ; $6268: $05
    ld [bc], a                                    ; $6269: $02
    nop                                           ; $626a: $00
    nop                                           ; $626b: $00

jr_013_626c:
    ld b, b                                       ; $626c: $40
    ld b, b                                       ; $626d: $40
    ld sp, $0009                                  ; $626e: $31 $09 $00
    ld c, $00                                     ; $6271: $0e $00
    jr c, jr_013_6275                             ; $6273: $38 $00

jr_013_6275:
    inc [hl]                                      ; $6275: $34
    add b                                         ; $6276: $80

jr_013_6277:
    ld a, [bc]                                    ; $6277: $0a
    add b                                         ; $6278: $80
    inc sp                                        ; $6279: $33
    ld b, b                                       ; $627a: $40
    dec bc                                        ; $627b: $0b
    nop                                           ; $627c: $00
    inc [hl]                                      ; $627d: $34
    add b                                         ; $627e: $80

jr_013_627f:
    ld a, [bc]                                    ; $627f: $0a
    add b                                         ; $6280: $80
    inc sp                                        ; $6281: $33
    ld b, b                                       ; $6282: $40
    dec bc                                        ; $6283: $0b
    inc b                                         ; $6284: $04
    nop                                           ; $6285: $00
    nop                                           ; $6286: $00
    nop                                           ; $6287: $00
    sbc b                                         ; $6288: $98
    ld bc, $0000                                  ; $6289: $01 $00 $00
    ld b, b                                       ; $628c: $40
    ld b, b                                       ; $628d: $40
    ld [hl+], a                                   ; $628e: $22
    dec b                                         ; $628f: $05
    nop                                           ; $6290: $00
    ld hl, $3a00                                  ; $6291: $21 $00 $3a
    ld h, b                                       ; $6294: $60
    inc h                                         ; $6295: $24
    jr nz, @+$09                                  ; $6296: $20 $07

    ret nz                                        ; $6298: $c0

    dec h                                         ; $6299: $25
    ret nz                                        ; $629a: $c0

    ld b, $60                                     ; $629b: $06 $60
    inc h                                         ; $629d: $24
    jr nz, jr_013_62a7                            ; $629e: $20 $07

    ret nz                                        ; $62a0: $c0

    dec h                                         ; $62a1: $25
    ret nz                                        ; $62a2: $c0

    ld b, $04                                     ; $62a3: $06 $04
    nop                                           ; $62a5: $00
    nop                                           ; $62a6: $00

jr_013_62a7:
    nop                                           ; $62a7: $00
    or b                                          ; $62a8: $b0
    ld bc, $0000                                  ; $62a9: $01 $00 $00
    ld b, b                                       ; $62ac: $40
    ld b, b                                       ; $62ad: $40
    ld c, $0e                                     ; $62ae: $0e $0e
    nop                                           ; $62b0: $00
    inc [hl]                                      ; $62b1: $34
    nop                                           ; $62b2: $00
    jr c, jr_013_62f5                             ; $62b3: $38 $40

    rrca                                          ; $62b5: $0f
    nop                                           ; $62b6: $00
    ld de, $1080                                  ; $62b7: $11 $80 $10
    ld b, b                                       ; $62ba: $40
    rrca                                          ; $62bb: $0f
    ld b, b                                       ; $62bc: $40
    rrca                                          ; $62bd: $0f
    nop                                           ; $62be: $00
    ld de, $1080                                  ; $62bf: $11 $80 $10
    ld b, b                                       ; $62c2: $40
    rrca                                          ; $62c3: $0f
    inc bc                                        ; $62c4: $03
    nop                                           ; $62c5: $00
    nop                                           ; $62c6: $00
    nop                                           ; $62c7: $00
    or [hl]                                       ; $62c8: $b6
    nop                                           ; $62c9: $00
    nop                                           ; $62ca: $00
    nop                                           ; $62cb: $00
    ld b, b                                       ; $62cc: $40
    ld b, b                                       ; $62cd: $40
    dec e                                         ; $62ce: $1d
    dec de                                        ; $62cf: $1b
    nop                                           ; $62d0: $00
    ld a, [hl+]                                   ; $62d1: $2a
    nop                                           ; $62d2: $00
    ld [hl-], a                                   ; $62d3: $32
    ld b, b                                       ; $62d4: $40
    rra                                           ; $62d5: $1f
    and b                                         ; $62d6: $a0
    inc e                                         ; $62d7: $1c
    nop                                           ; $62d8: $00
    rra                                           ; $62d9: $1f
    nop                                           ; $62da: $00
    ld e, $40                                     ; $62db: $1e $40
    rra                                           ; $62dd: $1f
    and b                                         ; $62de: $a0
    inc e                                         ; $62df: $1c
    nop                                           ; $62e0: $00
    rra                                           ; $62e1: $1f
    nop                                           ; $62e2: $00
    ld e, $04                                     ; $62e3: $1e $04
    nop                                           ; $62e5: $00
    nop                                           ; $62e6: $00
    nop                                           ; $62e7: $00
    sub c                                         ; $62e8: $91
    ld bc, $0000                                  ; $62e9: $01 $00 $00
    ld b, b                                       ; $62ec: $40
    ld b, b                                       ; $62ed: $40
    ld hl, $0007                                  ; $62ee: $21 $07 $00
    dec de                                        ; $62f1: $1b
    nop                                           ; $62f2: $00
    ld a, [hl-]                                   ; $62f3: $3a
    ret nz                                        ; $62f4: $c0

jr_013_62f5:
    inc hl                                        ; $62f5: $23
    ld b, b                                       ; $62f6: $40
    add hl, bc                                    ; $62f7: $09
    nop                                           ; $62f8: $00
    inc hl                                        ; $62f9: $23
    add b                                         ; $62fa: $80
    add hl, bc                                    ; $62fb: $09
    ret nz                                        ; $62fc: $c0

    inc hl                                        ; $62fd: $23
    ld b, b                                       ; $62fe: $40
    add hl, bc                                    ; $62ff: $09
    nop                                           ; $6300: $00
    inc hl                                        ; $6301: $23
    add b                                         ; $6302: $80
    add hl, bc                                    ; $6303: $09
    dec b                                         ; $6304: $05
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    ld a, [$0001]                                 ; $6308: $fa $01 $00
    nop                                           ; $630b: $00
    ld b, b                                       ; $630c: $40
    ld b, b                                       ; $630d: $40
    dec bc                                        ; $630e: $0b
    inc bc                                        ; $630f: $03
    nop                                           ; $6310: $00
    dec hl                                        ; $6311: $2b
    nop                                           ; $6312: $00
    scf                                           ; $6313: $37
    ld b, b                                       ; $6314: $40
    ld c, $c0                                     ; $6315: $0e $c0
    inc b                                         ; $6317: $04
    add b                                         ; $6318: $80
    dec c                                         ; $6319: $0d
    add b                                         ; $631a: $80
    dec b                                         ; $631b: $05
    ld b, b                                       ; $631c: $40
    ld c, $c0                                     ; $631d: $0e $c0
    inc b                                         ; $631f: $04
    add b                                         ; $6320: $80
    dec c                                         ; $6321: $0d
    add b                                         ; $6322: $80
    dec b                                         ; $6323: $05
    inc b                                         ; $6324: $04
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    nop                                           ; $6327: $00
    or d                                          ; $6328: $b2
    ld bc, $0000                                  ; $6329: $01 $00 $00
    ld b, b                                       ; $632c: $40
    ld b, d                                       ; $632d: $42
    ld de, $0007                                  ; $632e: $11 $07 $00
    ld sp, $3800                                  ; $6331: $31 $00 $38
    add b                                         ; $6334: $80
    inc de                                        ; $6335: $13
    and b                                         ; $6336: $a0
    ld [$1240], sp                                ; $6337: $08 $40 $12
    nop                                           ; $633a: $00
    add hl, bc                                    ; $633b: $09
    add b                                         ; $633c: $80
    inc de                                        ; $633d: $13
    and b                                         ; $633e: $a0
    ld [$1240], sp                                ; $633f: $08 $40 $12
    nop                                           ; $6342: $00
    add hl, bc                                    ; $6343: $09
    inc b                                         ; $6344: $04
    nop                                           ; $6345: $00
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    ld h, b                                       ; $6348: $60
    ld bc, $0000                                  ; $6349: $01 $00 $00
    ld b, b                                       ; $634c: $40
    ld b, d                                       ; $634d: $42
    add hl, de                                    ; $634e: $19
    dec c                                         ; $634f: $0d
    nop                                           ; $6350: $00
    inc de                                        ; $6351: $13
    nop                                           ; $6352: $00
    ld a, [hl-]                                   ; $6353: $3a
    nop                                           ; $6354: $00
    inc e                                         ; $6355: $1c
    nop                                           ; $6356: $00
    rrca                                          ; $6357: $0f
    and b                                         ; $6358: $a0
    dec de                                        ; $6359: $1b
    jr nz, @+$10                                  ; $635a: $20 $0e

    nop                                           ; $635c: $00
    inc e                                         ; $635d: $1c
    nop                                           ; $635e: $00
    rrca                                          ; $635f: $0f
    and b                                         ; $6360: $a0
    dec de                                        ; $6361: $1b
    jr nz, jr_013_6372                            ; $6362: $20 $0e

    inc b                                         ; $6364: $04
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    sbc l                                         ; $6368: $9d
    ld bc, $0000                                  ; $6369: $01 $00 $00
    ld b, b                                       ; $636c: $40
    ld b, d                                       ; $636d: $42
    dec e                                         ; $636e: $1d
    ld b, $00                                     ; $636f: $06 $00
    rra                                           ; $6371: $1f

jr_013_6372:
    nop                                           ; $6372: $00
    dec sp                                        ; $6373: $3b
    add b                                         ; $6374: $80
    rra                                           ; $6375: $1f
    nop                                           ; $6376: $00
    ld [$2080], sp                                ; $6377: $08 $80 $20
    nop                                           ; $637a: $00
    ld [$1f80], sp                                ; $637b: $08 $80 $1f
    nop                                           ; $637e: $00
    ld [$2080], sp                                ; $637f: $08 $80 $20
    nop                                           ; $6382: $00
    ld [$0005], sp                                ; $6383: $08 $05 $00
    nop                                           ; $6386: $00
    nop                                           ; $6387: $00
    or a                                          ; $6388: $b7
    ld bc, $0000                                  ; $6389: $01 $00 $00
    ld b, b                                       ; $638c: $40
    ld b, b                                       ; $638d: $40
    inc c                                         ; $638e: $0c
    ld de, $3400                                  ; $638f: $11 $00 $34
    nop                                           ; $6392: $00
    inc [hl]                                      ; $6393: $34
    add b                                         ; $6394: $80
    rrca                                          ; $6395: $0f
    nop                                           ; $6396: $00
    inc de                                        ; $6397: $13
    ldh [$0d], a                                  ; $6398: $e0 $0d
    nop                                           ; $639a: $00
    inc de                                        ; $639b: $13
    add b                                         ; $639c: $80
    rrca                                          ; $639d: $0f
    nop                                           ; $639e: $00
    inc de                                        ; $639f: $13
    ldh [$0d], a                                  ; $63a0: $e0 $0d
    nop                                           ; $63a2: $00
    inc de                                        ; $63a3: $13
    inc b                                         ; $63a4: $04
    nop                                           ; $63a5: $00
    nop                                           ; $63a6: $00
    nop                                           ; $63a7: $00
    sbc b                                         ; $63a8: $98
    ld bc, $0000                                  ; $63a9: $01 $00 $00
    ld b, b                                       ; $63ac: $40
    ld b, d                                       ; $63ad: $42
    ld hl, $000d                                  ; $63ae: $21 $0d $00
    inc hl                                        ; $63b1: $23
    nop                                           ; $63b2: $00
    ld a, [hl-]                                   ; $63b3: $3a
    add b                                         ; $63b4: $80

jr_013_63b5:
    inc hl                                        ; $63b5: $23
    nop                                           ; $63b6: $00
    ld c, $00                                     ; $63b7: $0e $00
    inc hl                                        ; $63b9: $23
    ret nz                                        ; $63ba: $c0

    rrca                                          ; $63bb: $0f
    add b                                         ; $63bc: $80
    inc hl                                        ; $63bd: $23
    nop                                           ; $63be: $00
    ld c, $00                                     ; $63bf: $0e $00
    inc hl                                        ; $63c1: $23
    ret nz                                        ; $63c2: $c0

    rrca                                          ; $63c3: $0f
    inc bc                                        ; $63c4: $03
    nop                                           ; $63c5: $00
    nop                                           ; $63c6: $00
    nop                                           ; $63c7: $00
    xor [hl]                                      ; $63c8: $ae
    nop                                           ; $63c9: $00
    nop                                           ; $63ca: $00
    nop                                           ; $63cb: $00
    ld b, b                                       ; $63cc: $40
    ld b, b                                       ; $63cd: $40
    ld e, $13                                     ; $63ce: $1e $13
    nop                                           ; $63d0: $00
    jr nz, jr_013_63d3                            ; $63d1: $20 $00

jr_013_63d3:
    inc l                                         ; $63d3: $2c
    nop                                           ; $63d4: $00
    ld [hl+], a                                   ; $63d5: $22
    add b                                         ; $63d6: $80
    ld d, $a0                                     ; $63d7: $16 $a0
    rra                                           ; $63d9: $1f
    ld b, b                                       ; $63da: $40
    dec d                                         ; $63db: $15
    nop                                           ; $63dc: $00
    ld [hl+], a                                   ; $63dd: $22
    add b                                         ; $63de: $80
    ld d, $a0                                     ; $63df: $16 $a0
    rra                                           ; $63e1: $1f
    ld b, b                                       ; $63e2: $40
    dec d                                         ; $63e3: $15
    dec b                                         ; $63e4: $05
    nop                                           ; $63e5: $00
    nop                                           ; $63e6: $00
    nop                                           ; $63e7: $00
    rst $20                                       ; $63e8: $e7
    ld bc, $0000                                  ; $63e9: $01 $00 $00
    ld b, b                                       ; $63ec: $40
    ld b, b                                       ; $63ed: $40
    ld c, $04                                     ; $63ee: $0e $04
    nop                                           ; $63f0: $00
    dec h                                         ; $63f1: $25
    nop                                           ; $63f2: $00
    jr c, jr_013_63b5                             ; $63f3: $38 $c0

    db $10                                        ; $63f5: $10
    ret nz                                        ; $63f6: $c0

    ld b, $20                                     ; $63f7: $06 $20
    rrca                                          ; $63f9: $0f
    ldh [rTMA], a                                 ; $63fa: $e0 $06
    ret nz                                        ; $63fc: $c0

    db $10                                        ; $63fd: $10
    ret nz                                        ; $63fe: $c0

    ld b, $20                                     ; $63ff: $06 $20
    rrca                                          ; $6401: $0f
    ldh [rTMA], a                                 ; $6402: $e0 $06
    inc b                                         ; $6404: $04
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    adc e                                         ; $6408: $8b
    ld bc, $0000                                  ; $6409: $01 $00 $00
    ld b, b                                       ; $640c: $40
    ld b, b                                       ; $640d: $40
    inc de                                        ; $640e: $13
    ld b, $00                                     ; $640f: $06 $00
    ld [de], a                                    ; $6411: $12
    nop                                           ; $6412: $00
    add hl, sp                                    ; $6413: $39
    jr nz, @+$16                                  ; $6414: $20 $14

    ldh [rTMA], a                                 ; $6416: $e0 $06
    ld h, b                                       ; $6418: $60
    dec d                                         ; $6419: $15
    and b                                         ; $641a: $a0
    ld [$1420], sp                                ; $641b: $08 $20 $14
    ldh [rTMA], a                                 ; $641e: $e0 $06
    ld h, b                                       ; $6420: $60
    dec d                                         ; $6421: $15
    and b                                         ; $6422: $a0
    ld [$0004], sp                                ; $6423: $08 $04 $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    cp b                                          ; $6428: $b8
    ld bc, $0000                                  ; $6429: $01 $00 $00
    ld b, b                                       ; $642c: $40
    ld b, b                                       ; $642d: $40
    ld c, $07                                     ; $642e: $0e $07
    nop                                           ; $6430: $00
    inc de                                        ; $6431: $13
    nop                                           ; $6432: $00
    inc sp                                        ; $6433: $33
    nop                                           ; $6434: $00
    ld de, $0800                                  ; $6435: $11 $00 $08
    nop                                           ; $6438: $00

jr_013_6439:
    ld de, $0940                                  ; $6439: $11 $40 $09
    nop                                           ; $643c: $00
    ld de, $0800                                  ; $643d: $11 $00 $08
    nop                                           ; $6440: $00

jr_013_6441:
    ld de, $0940                                  ; $6441: $11 $40 $09
    inc bc                                        ; $6444: $03
    nop                                           ; $6445: $00
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    sub d                                         ; $6448: $92
    nop                                           ; $6449: $00
    nop                                           ; $644a: $00
    nop                                           ; $644b: $00
    ld b, b                                       ; $644c: $40
    ld b, d                                       ; $644d: $42
    dec e                                         ; $644e: $1d
    rla                                           ; $644f: $17
    nop                                           ; $6450: $00
    add hl, de                                    ; $6451: $19
    nop                                           ; $6452: $00
    ld a, [hl+]                                   ; $6453: $2a
    ret nz                                        ; $6454: $c0

    rra                                           ; $6455: $1f
    and b                                         ; $6456: $a0
    jr jr_013_6439                                ; $6457: $18 $e0

    rra                                           ; $6459: $1f
    jr nz, jr_013_6475                            ; $645a: $20 $19

    ret nz                                        ; $645c: $c0

    rra                                           ; $645d: $1f
    and b                                         ; $645e: $a0
    jr jr_013_6441                                ; $645f: $18 $e0

    rra                                           ; $6461: $1f
    jr nz, jr_013_647d                            ; $6462: $20 $19

    inc b                                         ; $6464: $04
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    adc b                                         ; $6468: $88
    ld bc, $0000                                  ; $6469: $01 $00 $00
    ld b, b                                       ; $646c: $40
    ld b, d                                       ; $646d: $42
    dec l                                         ; $646e: $2d
    inc c                                         ; $646f: $0c
    nop                                           ; $6470: $00
    inc c                                         ; $6471: $0c
    nop                                           ; $6472: $00
    dec l                                         ; $6473: $2d
    ret nz                                        ; $6474: $c0

jr_013_6475:
    jr nc, @+$42                                  ; $6475: $30 $40

    dec c                                         ; $6477: $0d
    ld h, b                                       ; $6478: $60
    jr nc, @+$22                                  ; $6479: $30 $20

    ld c, $c0                                     ; $647b: $0e $c0

jr_013_647d:
    jr nc, @+$42                                  ; $647d: $30 $40

    dec c                                         ; $647f: $0d
    ld h, b                                       ; $6480: $60
    jr nc, @+$22                                  ; $6481: $30 $20

    ld c, $04                                     ; $6483: $0e $04
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    sbc [hl]                                      ; $6488: $9e
    ld bc, $0000                                  ; $6489: $01 $00 $00
    ld b, b                                       ; $648c: $40
    ld b, b                                       ; $648d: $40
    inc d                                         ; $648e: $14
    ld [$2200], sp                                ; $648f: $08 $00 $22
    nop                                           ; $6492: $00
    add hl, sp                                    ; $6493: $39
    jr nz, jr_013_64ad                            ; $6494: $20 $17

    ld h, b                                       ; $6496: $60
    ld a, [bc]                                    ; $6497: $0a
    add b                                         ; $6498: $80
    dec d                                         ; $6499: $15
    ldh [$08], a                                  ; $649a: $e0 $08
    jr nz, jr_013_64b5                            ; $649c: $20 $17

    ld h, b                                       ; $649e: $60
    ld a, [bc]                                    ; $649f: $0a
    add b                                         ; $64a0: $80
    dec d                                         ; $64a1: $15
    ldh [$08], a                                  ; $64a2: $e0 $08
    inc bc                                        ; $64a4: $03
    nop                                           ; $64a5: $00
    nop                                           ; $64a6: $00
    nop                                           ; $64a7: $00
    add $00                                       ; $64a8: $c6 $00
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    ld b, b                                       ; $64ac: $40

jr_013_64ad:
    ld b, b                                       ; $64ad: $40
    inc de                                        ; $64ae: $13
    inc de                                        ; $64af: $13
    nop                                           ; $64b0: $00
    dec l                                         ; $64b1: $2d
    nop                                           ; $64b2: $00
    dec e                                         ; $64b3: $1d
    and b                                         ; $64b4: $a0

jr_013_64b5:
    inc d                                         ; $64b5: $14
    jr nz, jr_013_64ce                            ; $64b6: $20 $16

    add b                                         ; $64b8: $80
    dec d                                         ; $64b9: $15
    ret nz                                        ; $64ba: $c0

    inc d                                         ; $64bb: $14
    and b                                         ; $64bc: $a0
    inc d                                         ; $64bd: $14
    jr nz, jr_013_64d6                            ; $64be: $20 $16

    add b                                         ; $64c0: $80
    dec d                                         ; $64c1: $15
    ret nz                                        ; $64c2: $c0

    inc d                                         ; $64c3: $14
    dec b                                         ; $64c4: $05
    nop                                           ; $64c5: $00
    nop                                           ; $64c6: $00
    nop                                           ; $64c7: $00
    inc c                                         ; $64c8: $0c
    ld [bc], a                                    ; $64c9: $02
    nop                                           ; $64ca: $00
    nop                                           ; $64cb: $00
    ld b, b                                       ; $64cc: $40
    ld b, b                                       ; $64cd: $40

jr_013_64ce:
    ld hl, $0004                                  ; $64ce: $21 $04 $00
    dec bc                                        ; $64d1: $0b
    nop                                           ; $64d2: $00
    scf                                           ; $64d3: $37
    ret nz                                        ; $64d4: $c0

    inc h                                         ; $64d5: $24

jr_013_64d6:
    ld b, b                                       ; $64d6: $40
    ld b, $80                                     ; $64d7: $06 $80
    inc hl                                        ; $64d9: $23
    ld h, b                                       ; $64da: $60
    dec b                                         ; $64db: $05
    ret nz                                        ; $64dc: $c0

    inc h                                         ; $64dd: $24
    ld b, b                                       ; $64de: $40
    ld b, $80                                     ; $64df: $06 $80
    inc hl                                        ; $64e1: $23
    ld h, b                                       ; $64e2: $60
    dec b                                         ; $64e3: $05
    inc b                                         ; $64e4: $04
    nop                                           ; $64e5: $00
    nop                                           ; $64e6: $00
    nop                                           ; $64e7: $00
    add [hl]                                      ; $64e8: $86
    ld bc, $0000                                  ; $64e9: $01 $00 $00
    ld b, b                                       ; $64ec: $40
    ld b, b                                       ; $64ed: $40
    dec e                                         ; $64ee: $1d
    rrca                                          ; $64ef: $0f
    nop                                           ; $64f0: $00
    stop                                          ; $64f1: $10 $00
    jr c, jr_013_64b5                             ; $64f3: $38 $c0

    rra                                           ; $64f5: $1f
    nop                                           ; $64f6: $00
    ld de, $1fc0                                  ; $64f7: $11 $c0 $1f
    nop                                           ; $64fa: $00
    ld [de], a                                    ; $64fb: $12
    ret nz                                        ; $64fc: $c0

    rra                                           ; $64fd: $1f
    nop                                           ; $64fe: $00
    ld de, $1fc0                                  ; $64ff: $11 $c0 $1f
    nop                                           ; $6502: $00
    ld [de], a                                    ; $6503: $12
    inc bc                                        ; $6504: $03
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    inc a                                         ; $6508: $3c
    nop                                           ; $6509: $00
    nop                                           ; $650a: $00
    nop                                           ; $650b: $00
    ld b, b                                       ; $650c: $40
    ld b, b                                       ; $650d: $40
    dec d                                         ; $650e: $15
    ld l, $20                                     ; $650f: $2e $20
    dec d                                         ; $6511: $15
    ldh [$37], a                                  ; $6512: $e0 $37
    jr nz, jr_013_652e                            ; $6514: $20 $18

    ldh [$30], a                                  ; $6516: $e0 $30
    jr nz, jr_013_6532                            ; $6518: $20 $18

    ldh [$30], a                                  ; $651a: $e0 $30
    jr nz, @+$1a                                  ; $651c: $20 $18

    ldh [$30], a                                  ; $651e: $e0 $30
    jr nz, @+$1a                                  ; $6520: $20 $18

    ldh [$30], a                                  ; $6522: $e0 $30
    inc bc                                        ; $6524: $03
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    xor b                                         ; $6528: $a8
    nop                                           ; $6529: $00
    nop                                           ; $652a: $00
    nop                                           ; $652b: $00
    ld b, b                                       ; $652c: $40
    ld b, b                                       ; $652d: $40

jr_013_652e:
    inc c                                         ; $652e: $0c
    ld [hl+], a                                   ; $652f: $22
    jr nz, jr_013_6547                            ; $6530: $20 $15

jr_013_6532:
    ldh [$37], a                                  ; $6532: $e0 $37
    nop                                           ; $6534: $00
    ld c, $00                                     ; $6535: $0e $00
    inc h                                         ; $6537: $24
    nop                                           ; $6538: $00
    ld c, $00                                     ; $6539: $0e $00
    inc h                                         ; $653b: $24
    nop                                           ; $653c: $00
    ld c, $00                                     ; $653d: $0e $00
    inc h                                         ; $653f: $24
    nop                                           ; $6540: $00
    ld c, $00                                     ; $6541: $0e $00
    inc h                                         ; $6543: $24
    inc bc                                        ; $6544: $03
    nop                                           ; $6545: $00
    nop                                           ; $6546: $00

jr_013_6547:
    nop                                           ; $6547: $00
    sbc b                                         ; $6548: $98
    nop                                           ; $6549: $00
    nop                                           ; $654a: $00
    nop                                           ; $654b: $00
    ld b, b                                       ; $654c: $40
    ld b, b                                       ; $654d: $40
    dec d                                         ; $654e: $15
    ld l, $e0                                     ; $654f: $2e $e0
    ld b, $40                                     ; $6551: $06 $40
    add hl, sp                                    ; $6553: $39
    jr nz, jr_013_656e                            ; $6554: $20 $18

    ldh [$30], a                                  ; $6556: $e0 $30
    jr nz, jr_013_6572                            ; $6558: $20 $18

    ldh [$30], a                                  ; $655a: $e0 $30
    jr nz, @+$1a                                  ; $655c: $20 $18

    ldh [$30], a                                  ; $655e: $e0 $30
    jr nz, @+$1a                                  ; $6560: $20 $18

    ldh [$30], a                                  ; $6562: $e0 $30
    inc bc                                        ; $6564: $03
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    or b                                          ; $6568: $b0
    nop                                           ; $6569: $00
    nop                                           ; $656a: $00
    nop                                           ; $656b: $00
    ld b, b                                       ; $656c: $40
    ld b, b                                       ; $656d: $40

jr_013_656e:
    inc c                                         ; $656e: $0c
    ld [hl+], a                                   ; $656f: $22
    ld b, b                                       ; $6570: $40
    rlca                                          ; $6571: $07

jr_013_6572:
    nop                                           ; $6572: $00
    add hl, sp                                    ; $6573: $39
    nop                                           ; $6574: $00
    ld c, $00                                     ; $6575: $0e $00
    inc h                                         ; $6577: $24
    nop                                           ; $6578: $00
    ld c, $00                                     ; $6579: $0e $00
    inc h                                         ; $657b: $24
    nop                                           ; $657c: $00
    ld c, $00                                     ; $657d: $0e $00
    inc h                                         ; $657f: $24
    nop                                           ; $6580: $00
    ld c, $00                                     ; $6581: $0e $00
    inc h                                         ; $6583: $24
    inc bc                                        ; $6584: $03
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    ld h, d                                       ; $6588: $62
    nop                                           ; $6589: $00
    nop                                           ; $658a: $00
    nop                                           ; $658b: $00
    ld b, b                                       ; $658c: $40
    ld b, b                                       ; $658d: $40
    dec de                                        ; $658e: $1b
    ld d, $20                                     ; $658f: $16 $20
    rla                                           ; $6591: $17
    jr nz, @+$24                                  ; $6592: $20 $22

    nop                                           ; $6594: $00
    ld e, $00                                     ; $6595: $1e $00
    jr jr_013_6599                                ; $6597: $18 $00

jr_013_6599:
    ld e, $00                                     ; $6599: $1e $00
    jr jr_013_659d                                ; $659b: $18 $00

jr_013_659d:
    ld e, $00                                     ; $659d: $1e $00
    jr jr_013_65a1                                ; $659f: $18 $00

jr_013_65a1:
    ld e, $00                                     ; $65a1: $1e $00
    jr jr_013_65a8                                ; $65a3: $18 $03

    nop                                           ; $65a5: $00
    nop                                           ; $65a6: $00
    nop                                           ; $65a7: $00

jr_013_65a8:
    sbc d                                         ; $65a8: $9a
    nop                                           ; $65a9: $00
    nop                                           ; $65aa: $00
    nop                                           ; $65ab: $00
    ld b, b                                       ; $65ac: $40
    ld b, b                                       ; $65ad: $40
    dec c                                         ; $65ae: $0d
    ld c, $20                                     ; $65af: $0e $20
    rla                                           ; $65b1: $17
    nop                                           ; $65b2: $00
    ld [hl+], a                                   ; $65b3: $22
    nop                                           ; $65b4: $00
    stop                                          ; $65b5: $10 $00
    stop                                          ; $65b7: $10 $00
    stop                                          ; $65b9: $10 $00
    stop                                          ; $65bb: $10 $00
    stop                                          ; $65bd: $10 $00
    stop                                          ; $65bf: $10 $00
    stop                                          ; $65c1: $10 $00
    db $10                                        ; $65c3: $10
    inc bc                                        ; $65c4: $03
    nop                                           ; $65c5: $00
    nop                                           ; $65c6: $00
    nop                                           ; $65c7: $00
    sub d                                         ; $65c8: $92
    nop                                           ; $65c9: $00
    nop                                           ; $65ca: $00
    nop                                           ; $65cb: $00
    ld b, b                                       ; $65cc: $40
    ld b, b                                       ; $65cd: $40
    dec de                                        ; $65ce: $1b
    ld d, $00                                     ; $65cf: $16 $00
    dec d                                         ; $65d1: $15
    ldh [rTAC], a                                 ; $65d2: $e0 $07
    nop                                           ; $65d4: $00
    ld e, $00                                     ; $65d5: $1e $00
    jr jr_013_65d9                                ; $65d7: $18 $00

jr_013_65d9:
    ld e, $00                                     ; $65d9: $1e $00
    jr jr_013_65dd                                ; $65db: $18 $00

jr_013_65dd:
    ld e, $00                                     ; $65dd: $1e $00
    jr jr_013_65e1                                ; $65df: $18 $00

jr_013_65e1:
    ld e, $00                                     ; $65e1: $1e $00
    jr jr_013_65e8                                ; $65e3: $18 $03

    nop                                           ; $65e5: $00
    nop                                           ; $65e6: $00
    nop                                           ; $65e7: $00

jr_013_65e8:
    ld c, e                                       ; $65e8: $4b
    nop                                           ; $65e9: $00
    nop                                           ; $65ea: $00
    nop                                           ; $65eb: $00
    ld b, b                                       ; $65ec: $40
    ld b, b                                       ; $65ed: $40
    dec c                                         ; $65ee: $0d
    ld c, $e0                                     ; $65ef: $0e $e0
    inc d                                         ; $65f1: $14
    ldh [rTAC], a                                 ; $65f2: $e0 $07
    nop                                           ; $65f4: $00
    stop                                          ; $65f5: $10 $00
    stop                                          ; $65f7: $10 $00
    stop                                          ; $65f9: $10 $00
    stop                                          ; $65fb: $10 $00
    stop                                          ; $65fd: $10 $00
    stop                                          ; $65ff: $10 $00
    stop                                          ; $6601: $10 $00
    db $10                                        ; $6603: $10
    inc bc                                        ; $6604: $03
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    ld [hl], d                                    ; $6608: $72
    nop                                           ; $6609: $00
    nop                                           ; $660a: $00
    nop                                           ; $660b: $00
    ld b, b                                       ; $660c: $40
    ld b, b                                       ; $660d: $40
    ld l, $10                                     ; $660e: $2e $10
    nop                                           ; $6610: $00
    jr z, jr_013_6633                             ; $6611: $28 $20

    dec e                                         ; $6613: $1d
    nop                                           ; $6614: $00
    ld sp, $1200                                  ; $6615: $31 $00 $12
    nop                                           ; $6618: $00
    ld sp, $1200                                  ; $6619: $31 $00 $12
    nop                                           ; $661c: $00
    ld sp, $1200                                  ; $661d: $31 $00 $12
    nop                                           ; $6620: $00
    ld sp, $1200                                  ; $6621: $31 $00 $12
    inc bc                                        ; $6624: $03
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    nop                                           ; $6627: $00
    ld e, e                                       ; $6628: $5b
    nop                                           ; $6629: $00
    nop                                           ; $662a: $00
    nop                                           ; $662b: $00
    ld b, b                                       ; $662c: $40
    ld b, b                                       ; $662d: $40
    ld sp, $0018                                  ; $662e: $31 $18 $00
    jr z, jr_013_6633                             ; $6631: $28 $00

jr_013_6633:
    dec e                                         ; $6633: $1d
    nop                                           ; $6634: $00
    inc sp                                        ; $6635: $33
    nop                                           ; $6636: $00
    ld a, [de]                                    ; $6637: $1a
    nop                                           ; $6638: $00
    inc sp                                        ; $6639: $33
    nop                                           ; $663a: $00
    ld a, [de]                                    ; $663b: $1a
    nop                                           ; $663c: $00
    inc sp                                        ; $663d: $33
    nop                                           ; $663e: $00
    ld a, [de]                                    ; $663f: $1a
    nop                                           ; $6640: $00
    inc sp                                        ; $6641: $33
    nop                                           ; $6642: $00
    ld a, [de]                                    ; $6643: $1a
    inc bc                                        ; $6644: $03
    nop                                           ; $6645: $00
    nop                                           ; $6646: $00
    nop                                           ; $6647: $00
    ld l, [hl]                                    ; $6648: $6e
    nop                                           ; $6649: $00
    nop                                           ; $664a: $00
    nop                                           ; $664b: $00
    ld b, b                                       ; $664c: $40
    ld b, b                                       ; $664d: $40
    ld l, $10                                     ; $664e: $2e $10
    and b                                         ; $6650: $a0
    jr c, @-$7e                                   ; $6651: $38 $80

    ld b, $00                                     ; $6653: $06 $00
    ld sp, $1200                                  ; $6655: $31 $00 $12
    nop                                           ; $6658: $00
    ld sp, $1200                                  ; $6659: $31 $00 $12
    nop                                           ; $665c: $00
    ld sp, $1200                                  ; $665d: $31 $00 $12
    nop                                           ; $6660: $00
    ld sp, $1200                                  ; $6661: $31 $00 $12
    inc bc                                        ; $6664: $03
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    nop                                           ; $6667: $00
    sbc [hl]                                      ; $6668: $9e
    nop                                           ; $6669: $00
    nop                                           ; $666a: $00
    nop                                           ; $666b: $00
    ld b, b                                       ; $666c: $40
    ld b, b                                       ; $666d: $40
    ld sp, $6018                                  ; $666e: $31 $18 $60
    jr c, jr_013_6633                             ; $6671: $38 $c0

    ld b, $00                                     ; $6673: $06 $00
    inc sp                                        ; $6675: $33
    nop                                           ; $6676: $00
    ld a, [de]                                    ; $6677: $1a
    nop                                           ; $6678: $00
    inc sp                                        ; $6679: $33
    nop                                           ; $667a: $00
    ld a, [de]                                    ; $667b: $1a
    nop                                           ; $667c: $00
    inc sp                                        ; $667d: $33
    nop                                           ; $667e: $00
    ld a, [de]                                    ; $667f: $1a
    nop                                           ; $6680: $00
    inc sp                                        ; $6681: $33
    nop                                           ; $6682: $00
    ld a, [de]                                    ; $6683: $1a
    inc bc                                        ; $6684: $03
    nop                                           ; $6685: $00
    nop                                           ; $6686: $00
    nop                                           ; $6687: $00
    ld c, d                                       ; $6688: $4a
    nop                                           ; $6689: $00
    nop                                           ; $668a: $00
    nop                                           ; $668b: $00
    ld b, b                                       ; $668c: $40
    ld b, b                                       ; $668d: $40
    inc hl                                        ; $668e: $23
    dec l                                         ; $668f: $2d
    ret nz                                        ; $6690: $c0

    inc hl                                        ; $6691: $23
    nop                                           ; $6692: $00
    ld h, $00                                     ; $6693: $26 $00
    ld h, $00                                     ; $6695: $26 $00
    cpl                                           ; $6697: $2f
    nop                                           ; $6698: $00
    ld h, $00                                     ; $6699: $26 $00
    cpl                                           ; $669b: $2f
    nop                                           ; $669c: $00
    ld h, $00                                     ; $669d: $26 $00
    cpl                                           ; $669f: $2f
    nop                                           ; $66a0: $00
    ld h, $00                                     ; $66a1: $26 $00
    cpl                                           ; $66a3: $2f
    inc bc                                        ; $66a4: $03
    nop                                           ; $66a5: $00
    nop                                           ; $66a6: $00
    nop                                           ; $66a7: $00
    ld l, h                                       ; $66a8: $6c
    nop                                           ; $66a9: $00
    nop                                           ; $66aa: $00
    nop                                           ; $66ab: $00
    ld b, b                                       ; $66ac: $40
    ld b, b                                       ; $66ad: $40
    inc l                                         ; $66ae: $2c
    dec l                                         ; $66af: $2d
    ret nz                                        ; $66b0: $c0

    inc hl                                        ; $66b1: $23
    nop                                           ; $66b2: $00
    ld h, $00                                     ; $66b3: $26 $00
    ld l, $00                                     ; $66b5: $2e $00
    cpl                                           ; $66b7: $2f
    nop                                           ; $66b8: $00
    ld l, $00                                     ; $66b9: $2e $00
    cpl                                           ; $66bb: $2f
    nop                                           ; $66bc: $00
    ld l, $00                                     ; $66bd: $2e $00
    cpl                                           ; $66bf: $2f
    nop                                           ; $66c0: $00
    ld l, $00                                     ; $66c1: $2e $00
    cpl                                           ; $66c3: $2f
    inc bc                                        ; $66c4: $03
    nop                                           ; $66c5: $00
    nop                                           ; $66c6: $00
    nop                                           ; $66c7: $00
    ld c, b                                       ; $66c8: $48
    nop                                           ; $66c9: $00
    nop                                           ; $66ca: $00
    nop                                           ; $66cb: $00
    ld b, b                                       ; $66cc: $40
    ld b, b                                       ; $66cd: $40
    inc hl                                        ; $66ce: $23
    dec l                                         ; $66cf: $2d
    nop                                           ; $66d0: $00
    add hl, hl                                    ; $66d1: $29
    ldh [$37], a                                  ; $66d2: $e0 $37
    nop                                           ; $66d4: $00
    ld h, $00                                     ; $66d5: $26 $00
    cpl                                           ; $66d7: $2f
    nop                                           ; $66d8: $00
    ld h, $00                                     ; $66d9: $26 $00
    cpl                                           ; $66db: $2f
    nop                                           ; $66dc: $00
    ld h, $00                                     ; $66dd: $26 $00
    cpl                                           ; $66df: $2f
    nop                                           ; $66e0: $00
    ld h, $00                                     ; $66e1: $26 $00
    cpl                                           ; $66e3: $2f
    inc bc                                        ; $66e4: $03
    nop                                           ; $66e5: $00
    nop                                           ; $66e6: $00
    nop                                           ; $66e7: $00
    adc b                                         ; $66e8: $88
    nop                                           ; $66e9: $00
    nop                                           ; $66ea: $00
    nop                                           ; $66eb: $00
    ld b, b                                       ; $66ec: $40
    ld b, b                                       ; $66ed: $40
    dec l                                         ; $66ee: $2d
    ld h, $00                                     ; $66ef: $26 $00
    add hl, hl                                    ; $66f1: $29
    jr nz, jr_013_672c                            ; $66f2: $20 $38

    nop                                           ; $66f4: $00
    cpl                                           ; $66f5: $2f
    nop                                           ; $66f6: $00
    jr z, jr_013_66f9                             ; $66f7: $28 $00

jr_013_66f9:
    cpl                                           ; $66f9: $2f
    nop                                           ; $66fa: $00
    jr z, jr_013_66fd                             ; $66fb: $28 $00

jr_013_66fd:
    cpl                                           ; $66fd: $2f
    nop                                           ; $66fe: $00
    jr z, jr_013_6701                             ; $66ff: $28 $00

jr_013_6701:
    cpl                                           ; $6701: $2f
    nop                                           ; $6702: $00
    jr z, jr_013_6708                             ; $6703: $28 $03

    nop                                           ; $6705: $00
    nop                                           ; $6706: $00
    nop                                           ; $6707: $00

jr_013_6708:
    ld e, [hl]                                    ; $6708: $5e
    nop                                           ; $6709: $00
    nop                                           ; $670a: $00
    nop                                           ; $670b: $00
    ld b, b                                       ; $670c: $40
    ld b, b                                       ; $670d: $40
    inc l                                         ; $670e: $2c
    dec l                                         ; $670f: $2d
    jr nz, @+$3a                                  ; $6710: $20 $38

    jr nz, jr_013_6749                            ; $6712: $20 $35

    nop                                           ; $6714: $00
    ld l, $00                                     ; $6715: $2e $00

jr_013_6717:
    cpl                                           ; $6717: $2f
    nop                                           ; $6718: $00
    ld l, $00                                     ; $6719: $2e $00

jr_013_671b:
    cpl                                           ; $671b: $2f
    nop                                           ; $671c: $00
    ld l, $00                                     ; $671d: $2e $00

jr_013_671f:
    cpl                                           ; $671f: $2f
    nop                                           ; $6720: $00
    ld l, $00                                     ; $6721: $2e $00

jr_013_6723:
    cpl                                           ; $6723: $2f
    inc bc                                        ; $6724: $03
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    ld a, [hl]                                    ; $6728: $7e
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    nop                                           ; $672b: $00

jr_013_672c:
    ld b, b                                       ; $672c: $40
    ld b, b                                       ; $672d: $40
    dec l                                         ; $672e: $2d
    ld h, $00                                     ; $672f: $26 $00
    jr c, jr_013_6733                             ; $6731: $38 $00

jr_013_6733:
    dec [hl]                                      ; $6733: $35
    nop                                           ; $6734: $00
    cpl                                           ; $6735: $2f
    nop                                           ; $6736: $00
    jr z, jr_013_6739                             ; $6737: $28 $00

jr_013_6739:
    cpl                                           ; $6739: $2f
    nop                                           ; $673a: $00
    jr z, jr_013_673d                             ; $673b: $28 $00

jr_013_673d:
    cpl                                           ; $673d: $2f
    nop                                           ; $673e: $00
    jr z, jr_013_6741                             ; $673f: $28 $00

jr_013_6741:
    cpl                                           ; $6741: $2f
    nop                                           ; $6742: $00
    jr z, jr_013_6749                             ; $6743: $28 $04

    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    add [hl]                                      ; $6748: $86

jr_013_6749:
    ld bc, $0010                                  ; $6749: $01 $10 $00
    jr nc, jr_013_6790                            ; $674c: $30 $42

    ld e, $07                                     ; $674e: $1e $07
    nop                                           ; $6750: $00
    jr nz, jr_013_6753                            ; $6751: $20 $00

jr_013_6753:
    add hl, sp                                    ; $6753: $39
    nop                                           ; $6754: $00
    ld hl, $0880                                  ; $6755: $21 $80 $08
    nop                                           ; $6758: $00
    ld hl, $0880                                  ; $6759: $21 $80 $08
    nop                                           ; $675c: $00
    ld hl, $0880                                  ; $675d: $21 $80 $08
    nop                                           ; $6760: $00
    ld hl, $0880                                  ; $6761: $21 $80 $08
    dec b                                         ; $6764: $05
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    dec [hl]                                      ; $6768: $35
    ld [bc], a                                    ; $6769: $02
    ld [$3400], sp                                ; $676a: $08 $00 $34
    ld b, d                                       ; $676d: $42
    ld [hl+], a                                   ; $676e: $22
    rlca                                          ; $676f: $07
    nop                                           ; $6770: $00
    jr z, jr_013_6773                             ; $6771: $28 $00

jr_013_6773:
    add hl, sp                                    ; $6773: $39
    ret nz                                        ; $6774: $c0

    inc h                                         ; $6775: $24
    nop                                           ; $6776: $00
    ld [$24c0], sp                                ; $6777: $08 $c0 $24
    nop                                           ; $677a: $00
    ld [$24c0], sp                                ; $677b: $08 $c0 $24
    nop                                           ; $677e: $00
    ld [$24c0], sp                                ; $677f: $08 $c0 $24
    nop                                           ; $6782: $00
    ld [$0004], sp                                ; $6783: $08 $04 $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    halt                                          ; $6788: $76
    ld bc, $0008                                  ; $6789: $01 $08 $00
    ld [hl], $42                                  ; $678c: $36 $42
    dec e                                         ; $678e: $1d
    add hl, bc                                    ; $678f: $09

jr_013_6790:
    nop                                           ; $6790: $00
    jr nz, jr_013_6793                            ; $6791: $20 $00

jr_013_6793:
    add hl, sp                                    ; $6793: $39
    nop                                           ; $6794: $00
    jr nz, jr_013_6717                            ; $6795: $20 $80

    ld a, [bc]                                    ; $6797: $0a
    nop                                           ; $6798: $00
    jr nz, jr_013_671b                            ; $6799: $20 $80

    ld a, [bc]                                    ; $679b: $0a
    nop                                           ; $679c: $00
    jr nz, jr_013_671f                            ; $679d: $20 $80

    ld a, [bc]                                    ; $679f: $0a
    nop                                           ; $67a0: $00
    jr nz, jr_013_6723                            ; $67a1: $20 $80

    ld a, [bc]                                    ; $67a3: $0a
    inc b                                         ; $67a4: $04
    nop                                           ; $67a5: $00
    nop                                           ; $67a6: $00
    nop                                           ; $67a7: $00
    ld [hl], d                                    ; $67a8: $72
    ld bc, $000c                                  ; $67a9: $01 $0c $00
    ld [hl], $42                                  ; $67ac: $36 $42
    jr nz, jr_013_67b9                            ; $67ae: $20 $09

    nop                                           ; $67b0: $00
    add hl, de                                    ; $67b1: $19
    nop                                           ; $67b2: $00
    scf                                           ; $67b3: $37
    nop                                           ; $67b4: $00
    ld [hl+], a                                   ; $67b5: $22
    add b                                         ; $67b6: $80
    ld a, [bc]                                    ; $67b7: $0a
    nop                                           ; $67b8: $00

jr_013_67b9:
    ld [hl+], a                                   ; $67b9: $22
    add b                                         ; $67ba: $80
    ld a, [bc]                                    ; $67bb: $0a
    nop                                           ; $67bc: $00
    ld [hl+], a                                   ; $67bd: $22
    add b                                         ; $67be: $80
    ld a, [bc]                                    ; $67bf: $0a
    nop                                           ; $67c0: $00
    ld [hl+], a                                   ; $67c1: $22
    add b                                         ; $67c2: $80
    ld a, [bc]                                    ; $67c3: $0a
    inc b                                         ; $67c4: $04
    nop                                           ; $67c5: $00
    nop                                           ; $67c6: $00
    nop                                           ; $67c7: $00
    ld [hl], d                                    ; $67c8: $72
    ld bc, $000c                                  ; $67c9: $01 $0c $00
    ld [hl], $42                                  ; $67cc: $36 $42
    jr nz, jr_013_67d9                            ; $67ce: $20 $09

    nop                                           ; $67d0: $00
    add hl, de                                    ; $67d1: $19
    nop                                           ; $67d2: $00
    scf                                           ; $67d3: $37
    nop                                           ; $67d4: $00
    ld [hl+], a                                   ; $67d5: $22
    add b                                         ; $67d6: $80
    ld a, [bc]                                    ; $67d7: $0a
    nop                                           ; $67d8: $00

jr_013_67d9:
    ld [hl+], a                                   ; $67d9: $22
    add b                                         ; $67da: $80
    ld a, [bc]                                    ; $67db: $0a
    nop                                           ; $67dc: $00
    ld [hl+], a                                   ; $67dd: $22
    add b                                         ; $67de: $80
    ld a, [bc]                                    ; $67df: $0a
    nop                                           ; $67e0: $00
    ld [hl+], a                                   ; $67e1: $22
    add b                                         ; $67e2: $80
    ld a, [bc]                                    ; $67e3: $0a
    inc b                                         ; $67e4: $04
    nop                                           ; $67e5: $00
    nop                                           ; $67e6: $00
    nop                                           ; $67e7: $00
    ld [hl], d                                    ; $67e8: $72
    ld bc, $000c                                  ; $67e9: $01 $0c $00
    ld [hl], $42                                  ; $67ec: $36 $42
    jr nz, jr_013_67f9                            ; $67ee: $20 $09

    nop                                           ; $67f0: $00
    add hl, de                                    ; $67f1: $19
    nop                                           ; $67f2: $00
    scf                                           ; $67f3: $37
    nop                                           ; $67f4: $00
    ld [hl+], a                                   ; $67f5: $22
    add b                                         ; $67f6: $80
    ld a, [bc]                                    ; $67f7: $0a
    nop                                           ; $67f8: $00

jr_013_67f9:
    ld [hl+], a                                   ; $67f9: $22
    add b                                         ; $67fa: $80
    ld a, [bc]                                    ; $67fb: $0a
    nop                                           ; $67fc: $00
    ld [hl+], a                                   ; $67fd: $22
    add b                                         ; $67fe: $80
    ld a, [bc]                                    ; $67ff: $0a
    nop                                           ; $6800: $00
    ld [hl+], a                                   ; $6801: $22
    add b                                         ; $6802: $80
    ld a, [bc]                                    ; $6803: $0a
    add hl, bc                                    ; $6804: $09
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    stop                                          ; $680a: $10 $00
    jr nc, jr_013_6850                            ; $680c: $30 $42

    inc e                                         ; $680e: $1c
    ld [hl+], a                                   ; $680f: $22
    nop                                           ; $6810: $00
    inc d                                         ; $6811: $14
    add b                                         ; $6812: $80
    add hl, sp                                    ; $6813: $39
    add b                                         ; $6814: $80
    ld e, $80                                     ; $6815: $1e $80
    inc hl                                        ; $6817: $23
    add b                                         ; $6818: $80
    ld e, $80                                     ; $6819: $1e $80
    inc hl                                        ; $681b: $23
    add b                                         ; $681c: $80
    ld e, $80                                     ; $681d: $1e $80
    inc hl                                        ; $681f: $23
    add b                                         ; $6820: $80
    ld e, $80                                     ; $6821: $1e $80
    inc hl                                        ; $6823: $23

    db $09

    nop                                           ; $6825: $00
    nop                                           ; $6826: $00
    nop                                           ; $6827: $00

    db $a7, $00, $08, $0a, $3a, $3a, $1a, $1d, $60, $1d, $80, $1f, $40, $1b, $80, $1f

    ld b, b                                       ; $6838: $40
    dec de                                        ; $6839: $1b
    add b                                         ; $683a: $80
    rra                                           ; $683b: $1f
    ld b, b                                       ; $683c: $40
    dec de                                        ; $683d: $1b
    add b                                         ; $683e: $80
    rra                                           ; $683f: $1f
    ld b, b                                       ; $6840: $40
    dec de                                        ; $6841: $1b
    add b                                         ; $6842: $80
    rra                                           ; $6843: $1f
    rlca                                          ; $6844: $07
    nop                                           ; $6845: $00
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    nop                                           ; $684a: $00
    nop                                           ; $684b: $00
    jr nc, jr_013_687e                            ; $684c: $30 $30

    rra                                           ; $684e: $1f
    dec e                                         ; $684f: $1d

jr_013_6850:
    nop                                           ; $6850: $00
    ld [hl+], a                                   ; $6851: $22
    nop                                           ; $6852: $00
    ld e, $80                                     ; $6853: $1e $80
    ld hl, $1f00                                  ; $6855: $21 $00 $1f
    add b                                         ; $6858: $80
    ld hl, $1f00                                  ; $6859: $21 $00 $1f
    add b                                         ; $685c: $80
    ld hl, $1f00                                  ; $685d: $21 $00 $1f
    add b                                         ; $6860: $80
    ld hl, $1f00                                  ; $6861: $21 $00 $1f
    add hl, bc                                    ; $6864: $09
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    nop                                           ; $6868: $00
    nop                                           ; $6869: $00
    stop                                          ; $686a: $10 $00
    jr nc, @+$44                                  ; $686c: $30 $42

    dec d                                         ; $686e: $15
    dec h                                         ; $686f: $25
    ret nz                                        ; $6870: $c0

    rla                                           ; $6871: $17
    ld b, b                                       ; $6872: $40
    ld a, [hl-]                                   ; $6873: $3a
    ld b, b                                       ; $6874: $40
    rla                                           ; $6875: $17
    add b                                         ; $6876: $80
    ld h, $40                                     ; $6877: $26 $40
    rla                                           ; $6879: $17
    add b                                         ; $687a: $80
    ld h, $40                                     ; $687b: $26 $40
    rla                                           ; $687d: $17

jr_013_687e:
    add b                                         ; $687e: $80
    ld h, $40                                     ; $687f: $26 $40
    rla                                           ; $6881: $17
    add b                                         ; $6882: $80
    ld h, $09                                     ; $6883: $26 $09
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    and a                                         ; $6888: $a7
    nop                                           ; $6889: $00
    ld [$3a0a], sp                                ; $688a: $08 $0a $3a
    ld b, b                                       ; $688d: $40
    inc e                                         ; $688e: $1c
    dec e                                         ; $688f: $1d
    nop                                           ; $6890: $00
    inc d                                         ; $6891: $14
    nop                                           ; $6892: $00
    inc [hl]                                      ; $6893: $34
    nop                                           ; $6894: $00
    jr nz, jr_013_6897                            ; $6895: $20 $00

jr_013_6897:
    ld e, $00                                     ; $6897: $1e $00
    jr nz, jr_013_689b                            ; $6899: $20 $00

jr_013_689b:
    ld e, $00                                     ; $689b: $1e $00
    jr nz, jr_013_689f                            ; $689d: $20 $00

jr_013_689f:
    ld e, $00                                     ; $689f: $1e $00
    jr nz, jr_013_68a3                            ; $68a1: $20 $00

jr_013_68a3:
    ld e, $07                                     ; $68a3: $1e $07
    nop                                           ; $68a5: $00
    nop                                           ; $68a6: $00
    nop                                           ; $68a7: $00
    nop                                           ; $68a8: $00
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    nop                                           ; $68ab: $00
    ld b, b                                       ; $68ac: $40
    ld b, b                                       ; $68ad: $40
    dec e                                         ; $68ae: $1d
    ld e, $80                                     ; $68af: $1e $80
    jr nz, @-$7e                                  ; $68b1: $20 $80

    jr nz, jr_013_68f5                            ; $68b3: $20 $40

    rra                                           ; $68b5: $1f
    ld b, b                                       ; $68b6: $40
    jr nz, jr_013_68f9                            ; $68b7: $20 $40

    rra                                           ; $68b9: $1f
    ld b, b                                       ; $68ba: $40
    jr nz, jr_013_68fd                            ; $68bb: $20 $40

    rra                                           ; $68bd: $1f
    ld b, b                                       ; $68be: $40
    jr nz, jr_013_6901                            ; $68bf: $20 $40

    rra                                           ; $68c1: $1f
    ld b, b                                       ; $68c2: $40
    jr nz, jr_013_68ce                            ; $68c3: $20 $09

    nop                                           ; $68c5: $00
    nop                                           ; $68c6: $00
    nop                                           ; $68c7: $00
    nop                                           ; $68c8: $00
    nop                                           ; $68c9: $00
    nop                                           ; $68ca: $00
    nop                                           ; $68cb: $00
    jr nc, jr_013_6910                            ; $68cc: $30 $42

jr_013_68ce:
    inc hl                                        ; $68ce: $23
    dec l                                         ; $68cf: $2d
    nop                                           ; $68d0: $00
    db $10                                        ; $68d1: $10
    add b                                         ; $68d2: $80
    dec l                                         ; $68d3: $2d
    nop                                           ; $68d4: $00
    dec h                                         ; $68d5: $25
    add b                                         ; $68d6: $80
    cpl                                           ; $68d7: $2f
    nop                                           ; $68d8: $00
    dec h                                         ; $68d9: $25
    add b                                         ; $68da: $80
    cpl                                           ; $68db: $2f
    nop                                           ; $68dc: $00
    dec h                                         ; $68dd: $25
    add b                                         ; $68de: $80
    cpl                                           ; $68df: $2f
    nop                                           ; $68e0: $00
    dec h                                         ; $68e1: $25
    add b                                         ; $68e2: $80
    cpl                                           ; $68e3: $2f
    add hl, bc                                    ; $68e4: $09
    nop                                           ; $68e5: $00
    nop                                           ; $68e6: $00
    nop                                           ; $68e7: $00
    and a                                         ; $68e8: $a7
    nop                                           ; $68e9: $00
    ld [$3a0a], sp                                ; $68ea: $08 $0a $3a
    ld a, [hl-]                                   ; $68ed: $3a
    rra                                           ; $68ee: $1f
    dec de                                        ; $68ef: $1b
    nop                                           ; $68f0: $00
    ld hl, $3000                                  ; $68f1: $21 $00 $30
    add b                                         ; $68f4: $80

jr_013_68f5:
    ld hl, $1c00                                  ; $68f5: $21 $00 $1c
    add b                                         ; $68f8: $80

jr_013_68f9:
    ld hl, $1c00                                  ; $68f9: $21 $00 $1c
    add b                                         ; $68fc: $80

jr_013_68fd:
    ld hl, $1c00                                  ; $68fd: $21 $00 $1c
    add b                                         ; $6900: $80

jr_013_6901:
    ld hl, $1c00                                  ; $6901: $21 $00 $1c
    rlca                                          ; $6904: $07
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    nop                                           ; $690a: $00
    nop                                           ; $690b: $00
    ld b, b                                       ; $690c: $40
    ld b, b                                       ; $690d: $40
    inc h                                         ; $690e: $24
    rra                                           ; $690f: $1f

jr_013_6910:
    add b                                         ; $6910: $80
    dec h                                         ; $6911: $25
    nop                                           ; $6912: $00
    ld [hl+], a                                   ; $6913: $22
    ret nz                                        ; $6914: $c0

jr_013_6915:
    ld h, $00                                     ; $6915: $26 $00
    ld hl, $26c0                                  ; $6917: $21 $c0 $26
    nop                                           ; $691a: $00
    ld hl, $26c0                                  ; $691b: $21 $c0 $26
    nop                                           ; $691e: $00
    ld hl, $26c0                                  ; $691f: $21 $c0 $26
    nop                                           ; $6922: $00
    ld hl, $0009                                  ; $6923: $21 $09 $00
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    nop                                           ; $6928: $00
    nop                                           ; $6929: $00
    nop                                           ; $692a: $00
    nop                                           ; $692b: $00
    ld b, b                                       ; $692c: $40
    ld b, d                                       ; $692d: $42
    ld d, $17                                     ; $692e: $16 $17
    nop                                           ; $6930: $00
    jr nz, jr_013_6933                            ; $6931: $20 $00

jr_013_6933:
    ld a, [hl-]                                   ; $6933: $3a
    nop                                           ; $6934: $00
    jr jr_013_6937                                ; $6935: $18 $00

jr_013_6937:
    add hl, de                                    ; $6937: $19
    nop                                           ; $6938: $00
    jr jr_013_693b                                ; $6939: $18 $00

jr_013_693b:
    add hl, de                                    ; $693b: $19
    nop                                           ; $693c: $00
    jr jr_013_693f                                ; $693d: $18 $00

jr_013_693f:
    add hl, de                                    ; $693f: $19
    nop                                           ; $6940: $00
    jr jr_013_6943                                ; $6941: $18 $00

jr_013_6943:
    add hl, de                                    ; $6943: $19
    add hl, bc                                    ; $6944: $09
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    and a                                         ; $6948: $a7
    nop                                           ; $6949: $00
    ld [$3a0a], sp                                ; $694a: $08 $0a $3a
    ld b, b                                       ; $694d: $40
    dec e                                         ; $694e: $1d
    jr nz, jr_013_6951                            ; $694f: $20 $00

jr_013_6951:
    add hl, hl                                    ; $6951: $29
    nop                                           ; $6952: $00
    dec [hl]                                      ; $6953: $35
    ret nz                                        ; $6954: $c0

    rra                                           ; $6955: $1f
    add b                                         ; $6956: $80
    ld [hl+], a                                   ; $6957: $22
    nop                                           ; $6958: $00
    jr nz, jr_013_695b                            ; $6959: $20 $00

jr_013_695b:
    ld [hl+], a                                   ; $695b: $22
    nop                                           ; $695c: $00
    jr nz, jr_013_695f                            ; $695d: $20 $00

jr_013_695f:
    ld [hl+], a                                   ; $695f: $22
    nop                                           ; $6960: $00
    jr nz, jr_013_6963                            ; $6961: $20 $00

jr_013_6963:
    ld [hl+], a                                   ; $6963: $22
    rlca                                          ; $6964: $07
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    nop                                           ; $696a: $00
    nop                                           ; $696b: $00
    ld b, b                                       ; $696c: $40
    ld b, b                                       ; $696d: $40
    inc hl                                        ; $696e: $23
    inc e                                         ; $696f: $1c
    nop                                           ; $6970: $00
    inc h                                         ; $6971: $24
    nop                                           ; $6972: $00
    rra                                           ; $6973: $1f
    add b                                         ; $6974: $80
    dec h                                         ; $6975: $25
    ret nz                                        ; $6976: $c0

    dec e                                         ; $6977: $1d
    add b                                         ; $6978: $80
    dec h                                         ; $6979: $25
    ret nz                                        ; $697a: $c0

    dec e                                         ; $697b: $1d
    add b                                         ; $697c: $80
    dec h                                         ; $697d: $25
    ret nz                                        ; $697e: $c0

    dec e                                         ; $697f: $1d
    add b                                         ; $6980: $80
    dec h                                         ; $6981: $25
    ret nz                                        ; $6982: $c0

    dec e                                         ; $6983: $1d
    add hl, bc                                    ; $6984: $09
    nop                                           ; $6985: $00
    nop                                           ; $6986: $00
    nop                                           ; $6987: $00
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00
    ccf                                           ; $698c: $3f
    ld b, b                                       ; $698d: $40
    inc e                                         ; $698e: $1c
    inc h                                         ; $698f: $24
    ld h, b                                       ; $6990: $60
    rra                                           ; $6991: $1f
    add b                                         ; $6992: $80
    jr z, jr_013_6915                             ; $6993: $28 $80

    ld e, $c0                                     ; $6995: $1e $c0
    inc h                                         ; $6997: $24
    add b                                         ; $6998: $80
    ld e, $c0                                     ; $6999: $1e $c0
    inc h                                         ; $699b: $24
    add b                                         ; $699c: $80
    ld e, $c0                                     ; $699d: $1e $c0
    inc h                                         ; $699f: $24
    add b                                         ; $69a0: $80
    ld e, $c0                                     ; $69a1: $1e $c0
    inc h                                         ; $69a3: $24
    add hl, bc                                    ; $69a4: $09
    nop                                           ; $69a5: $00
    nop                                           ; $69a6: $00
    nop                                           ; $69a7: $00
    nop                                           ; $69a8: $00
    nop                                           ; $69a9: $00
    nop                                           ; $69aa: $00
    nop                                           ; $69ab: $00
    ccf                                           ; $69ac: $3f
    ld b, b                                       ; $69ad: $40
    inc e                                         ; $69ae: $1c
    inc h                                         ; $69af: $24
    and b                                         ; $69b0: $a0
    jr nz, jr_013_6a13                            ; $69b1: $20 $60

    ld l, $80                                     ; $69b3: $2e $80
    ld e, $c0                                     ; $69b5: $1e $c0
    inc h                                         ; $69b7: $24
    add b                                         ; $69b8: $80
    ld e, $c0                                     ; $69b9: $1e $c0
    inc h                                         ; $69bb: $24
    add b                                         ; $69bc: $80
    ld e, $c0                                     ; $69bd: $1e $c0
    inc h                                         ; $69bf: $24
    add b                                         ; $69c0: $80
    ld e, $c0                                     ; $69c1: $1e $c0
    inc h                                         ; $69c3: $24
    add hl, bc                                    ; $69c4: $09
    nop                                           ; $69c5: $00
    nop                                           ; $69c6: $00
    nop                                           ; $69c7: $00
    nop                                           ; $69c8: $00
    nop                                           ; $69c9: $00
    nop                                           ; $69ca: $00
    nop                                           ; $69cb: $00
    ccf                                           ; $69cc: $3f
    ld b, b                                       ; $69cd: $40
    inc e                                         ; $69ce: $1c
    inc h                                         ; $69cf: $24
    add b                                         ; $69d0: $80
    inc e                                         ; $69d1: $1c
    nop                                           ; $69d2: $00
    daa                                           ; $69d3: $27
    add b                                         ; $69d4: $80
    ld e, $c0                                     ; $69d5: $1e $c0
    inc h                                         ; $69d7: $24
    add b                                         ; $69d8: $80
    ld e, $c0                                     ; $69d9: $1e $c0
    inc h                                         ; $69db: $24
    add b                                         ; $69dc: $80
    ld e, $c0                                     ; $69dd: $1e $c0
    inc h                                         ; $69df: $24
    add b                                         ; $69e0: $80
    ld e, $c0                                     ; $69e1: $1e $c0
    inc h                                         ; $69e3: $24
    add hl, bc                                    ; $69e4: $09
    nop                                           ; $69e5: $00
    nop                                           ; $69e6: $00
    nop                                           ; $69e7: $00
    nop                                           ; $69e8: $00
    nop                                           ; $69e9: $00
    nop                                           ; $69ea: $00
    nop                                           ; $69eb: $00
    ccf                                           ; $69ec: $3f
    ld b, b                                       ; $69ed: $40
    inc e                                         ; $69ee: $1c
    inc h                                         ; $69ef: $24
    and b                                         ; $69f0: $a0
    inc e                                         ; $69f1: $1c
    ld b, b                                       ; $69f2: $40
    ld a, [hl+]                                   ; $69f3: $2a
    add b                                         ; $69f4: $80
    ld e, $c0                                     ; $69f5: $1e $c0
    inc h                                         ; $69f7: $24
    add b                                         ; $69f8: $80
    ld e, $c0                                     ; $69f9: $1e $c0
    inc h                                         ; $69fb: $24
    add b                                         ; $69fc: $80
    ld e, $c0                                     ; $69fd: $1e $c0
    inc h                                         ; $69ff: $24
    add b                                         ; $6a00: $80
    ld e, $c0                                     ; $6a01: $1e $c0
    inc h                                         ; $6a03: $24
    add hl, bc                                    ; $6a04: $09
    nop                                           ; $6a05: $00
    nop                                           ; $6a06: $00
    nop                                           ; $6a07: $00
    nop                                           ; $6a08: $00
    nop                                           ; $6a09: $00
    nop                                           ; $6a0a: $00
    nop                                           ; $6a0b: $00
    ccf                                           ; $6a0c: $3f
    ld b, b                                       ; $6a0d: $40
    inc e                                         ; $6a0e: $1c
    inc h                                         ; $6a0f: $24
    add b                                         ; $6a10: $80
    dec e                                         ; $6a11: $1d
    nop                                           ; $6a12: $00

jr_013_6a13:
    dec l                                         ; $6a13: $2d
    add b                                         ; $6a14: $80

jr_013_6a15:
    ld e, $c0                                     ; $6a15: $1e $c0
    inc h                                         ; $6a17: $24
    add b                                         ; $6a18: $80
    ld e, $c0                                     ; $6a19: $1e $c0
    inc h                                         ; $6a1b: $24
    add b                                         ; $6a1c: $80
    ld e, $c0                                     ; $6a1d: $1e $c0
    inc h                                         ; $6a1f: $24
    add b                                         ; $6a20: $80
    ld e, $c0                                     ; $6a21: $1e $c0
    inc h                                         ; $6a23: $24
    add hl, bc                                    ; $6a24: $09
    nop                                           ; $6a25: $00
    nop                                           ; $6a26: $00
    nop                                           ; $6a27: $00
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    nop                                           ; $6a2a: $00
    nop                                           ; $6a2b: $00
    ccf                                           ; $6a2c: $3f
    ld b, b                                       ; $6a2d: $40
    inc e                                         ; $6a2e: $1c
    inc h                                         ; $6a2f: $24
    add b                                         ; $6a30: $80
    add hl, de                                    ; $6a31: $19
    add b                                         ; $6a32: $80
    daa                                           ; $6a33: $27
    add b                                         ; $6a34: $80
    ld e, $c0                                     ; $6a35: $1e $c0
    inc h                                         ; $6a37: $24
    add b                                         ; $6a38: $80
    ld e, $c0                                     ; $6a39: $1e $c0
    inc h                                         ; $6a3b: $24
    add b                                         ; $6a3c: $80
    ld e, $c0                                     ; $6a3d: $1e $c0
    inc h                                         ; $6a3f: $24
    add b                                         ; $6a40: $80
    ld e, $c0                                     ; $6a41: $1e $c0
    inc h                                         ; $6a43: $24
    add hl, bc                                    ; $6a44: $09
    nop                                           ; $6a45: $00
    nop                                           ; $6a46: $00
    nop                                           ; $6a47: $00
    nop                                           ; $6a48: $00
    nop                                           ; $6a49: $00
    nop                                           ; $6a4a: $00
    nop                                           ; $6a4b: $00
    ccf                                           ; $6a4c: $3f
    ld b, b                                       ; $6a4d: $40
    inc e                                         ; $6a4e: $1c
    inc h                                         ; $6a4f: $24
    add b                                         ; $6a50: $80

jr_013_6a51:
    add hl, de                                    ; $6a51: $19
    ld h, b                                       ; $6a52: $60
    inc h                                         ; $6a53: $24
    add b                                         ; $6a54: $80
    ld e, $c0                                     ; $6a55: $1e $c0
    inc h                                         ; $6a57: $24
    add b                                         ; $6a58: $80
    ld e, $c0                                     ; $6a59: $1e $c0
    inc h                                         ; $6a5b: $24
    add b                                         ; $6a5c: $80
    ld e, $c0                                     ; $6a5d: $1e $c0
    inc h                                         ; $6a5f: $24
    add b                                         ; $6a60: $80
    ld e, $c0                                     ; $6a61: $1e $c0
    inc h                                         ; $6a63: $24
    add hl, bc                                    ; $6a64: $09
    nop                                           ; $6a65: $00
    nop                                           ; $6a66: $00
    nop                                           ; $6a67: $00
    nop                                           ; $6a68: $00
    nop                                           ; $6a69: $00
    nop                                           ; $6a6a: $00
    nop                                           ; $6a6b: $00
    ccf                                           ; $6a6c: $3f
    ld b, b                                       ; $6a6d: $40
    inc e                                         ; $6a6e: $1c
    inc h                                         ; $6a6f: $24
    ret nz                                        ; $6a70: $c0

    ld d, $40                                     ; $6a71: $16 $40
    dec h                                         ; $6a73: $25
    add b                                         ; $6a74: $80
    ld e, $c0                                     ; $6a75: $1e $c0
    inc h                                         ; $6a77: $24
    add b                                         ; $6a78: $80
    ld e, $c0                                     ; $6a79: $1e $c0
    inc h                                         ; $6a7b: $24
    add b                                         ; $6a7c: $80
    ld e, $c0                                     ; $6a7d: $1e $c0
    inc h                                         ; $6a7f: $24
    add b                                         ; $6a80: $80
    ld e, $c0                                     ; $6a81: $1e $c0
    inc h                                         ; $6a83: $24
    add hl, bc                                    ; $6a84: $09
    nop                                           ; $6a85: $00
    nop                                           ; $6a86: $00
    nop                                           ; $6a87: $00
    nop                                           ; $6a88: $00
    nop                                           ; $6a89: $00
    nop                                           ; $6a8a: $00
    nop                                           ; $6a8b: $00
    ccf                                           ; $6a8c: $3f
    ld b, b                                       ; $6a8d: $40
    inc e                                         ; $6a8e: $1c
    inc h                                         ; $6a8f: $24
    and b                                         ; $6a90: $a0
    inc hl                                        ; $6a91: $23
    ld h, b                                       ; $6a92: $60

jr_013_6a93:
    jr nz, jr_013_6a15                            ; $6a93: $20 $80

    ld e, $c0                                     ; $6a95: $1e $c0
    inc h                                         ; $6a97: $24
    add b                                         ; $6a98: $80
    ld e, $c0                                     ; $6a99: $1e $c0
    inc h                                         ; $6a9b: $24
    add b                                         ; $6a9c: $80
    ld e, $c0                                     ; $6a9d: $1e $c0
    inc h                                         ; $6a9f: $24
    add b                                         ; $6aa0: $80
    ld e, $c0                                     ; $6aa1: $1e $c0
    inc h                                         ; $6aa3: $24
    add hl, bc                                    ; $6aa4: $09
    nop                                           ; $6aa5: $00
    nop                                           ; $6aa6: $00
    nop                                           ; $6aa7: $00
    nop                                           ; $6aa8: $00
    nop                                           ; $6aa9: $00
    nop                                           ; $6aaa: $00
    nop                                           ; $6aab: $00
    ccf                                           ; $6aac: $3f
    ld b, b                                       ; $6aad: $40
    inc e                                         ; $6aae: $1c
    inc h                                         ; $6aaf: $24
    add b                                         ; $6ab0: $80
    ld a, [hl+]                                   ; $6ab1: $2a
    ld b, b                                       ; $6ab2: $40
    inc h                                         ; $6ab3: $24
    add b                                         ; $6ab4: $80
    ld e, $c0                                     ; $6ab5: $1e $c0
    inc h                                         ; $6ab7: $24
    add b                                         ; $6ab8: $80
    ld e, $c0                                     ; $6ab9: $1e $c0
    inc h                                         ; $6abb: $24
    add b                                         ; $6abc: $80
    ld e, $c0                                     ; $6abd: $1e $c0
    inc h                                         ; $6abf: $24
    add b                                         ; $6ac0: $80
    ld e, $c0                                     ; $6ac1: $1e $c0
    inc h                                         ; $6ac3: $24
    rlca                                          ; $6ac4: $07
    nop                                           ; $6ac5: $00
    nop                                           ; $6ac6: $00
    nop                                           ; $6ac7: $00
    nop                                           ; $6ac8: $00
    nop                                           ; $6ac9: $00
    nop                                           ; $6aca: $00
    nop                                           ; $6acb: $00
    ld b, b                                       ; $6acc: $40
    ld b, b                                       ; $6acd: $40
    rrca                                          ; $6ace: $0f
    jr nz, jr_013_6a51                            ; $6acf: $20 $80

    ld [hl+], a                                   ; $6ad1: $22
    and b                                         ; $6ad2: $a0
    dec e                                         ; $6ad3: $1d
    add b                                         ; $6ad4: $80
    ld de, $2240                                  ; $6ad5: $11 $40 $22
    add b                                         ; $6ad8: $80
    ld de, $2240                                  ; $6ad9: $11 $40 $22
    add b                                         ; $6adc: $80
    ld de, $2240                                  ; $6add: $11 $40 $22
    add b                                         ; $6ae0: $80
    ld de, $2240                                  ; $6ae1: $11 $40 $22
    rlca                                          ; $6ae4: $07
    nop                                           ; $6ae5: $00
    nop                                           ; $6ae6: $00
    nop                                           ; $6ae7: $00
    add h                                         ; $6ae8: $84
    ld bc, $0000                                  ; $6ae9: $01 $00 $00
    ld b, b                                       ; $6aec: $40
    ld b, b                                       ; $6aed: $40
    inc e                                         ; $6aee: $1c
    dec bc                                        ; $6aef: $0b
    nop                                           ; $6af0: $00
    ld d, $00                                     ; $6af1: $16 $00
    jr c, jr_013_6b35                             ; $6af3: $38 $40

    ld e, $00                                     ; $6af5: $1e $00
    dec c                                         ; $6af7: $0d
    ld b, b                                       ; $6af8: $40
    ld e, $00                                     ; $6af9: $1e $00
    dec c                                         ; $6afb: $0d
    ld b, b                                       ; $6afc: $40
    ld e, $00                                     ; $6afd: $1e $00
    dec c                                         ; $6aff: $0d
    ld b, b                                       ; $6b00: $40
    ld e, $00                                     ; $6b01: $1e $00
    dec c                                         ; $6b03: $0d
    rlca                                          ; $6b04: $07
    nop                                           ; $6b05: $00
    nop                                           ; $6b06: $00
    nop                                           ; $6b07: $00
    nop                                           ; $6b08: $00
    nop                                           ; $6b09: $00
    nop                                           ; $6b0a: $00
    nop                                           ; $6b0b: $00
    ld b, b                                       ; $6b0c: $40
    ld b, b                                       ; $6b0d: $40
    inc e                                         ; $6b0e: $1c
    dec bc                                        ; $6b0f: $0b
    add b                                         ; $6b10: $80
    jr jr_013_6a93                                ; $6b11: $18 $80

    rra                                           ; $6b13: $1f
    ld b, b                                       ; $6b14: $40
    ld e, $00                                     ; $6b15: $1e $00
    dec c                                         ; $6b17: $0d
    ld b, b                                       ; $6b18: $40
    ld e, $00                                     ; $6b19: $1e $00
    dec c                                         ; $6b1b: $0d
    ld b, b                                       ; $6b1c: $40
    ld e, $00                                     ; $6b1d: $1e $00
    dec c                                         ; $6b1f: $0d
    ld b, b                                       ; $6b20: $40
    ld e, $00                                     ; $6b21: $1e $00
    dec c                                         ; $6b23: $0d
    rlca                                          ; $6b24: $07
    nop                                           ; $6b25: $00
    nop                                           ; $6b26: $00
    nop                                           ; $6b27: $00
    nop                                           ; $6b28: $00
    nop                                           ; $6b29: $00
    nop                                           ; $6b2a: $00
    nop                                           ; $6b2b: $00
    jr nc, @+$32                                  ; $6b2c: $30 $30

    rra                                           ; $6b2e: $1f
    dec e                                         ; $6b2f: $1d
    jr nz, jr_013_6b54                            ; $6b30: $20 $22

    jr nz, @+$20                                  ; $6b32: $20 $1e

    add b                                         ; $6b34: $80

jr_013_6b35:
    ld hl, $1f00                                  ; $6b35: $21 $00 $1f
    add b                                         ; $6b38: $80
    ld hl, $1f00                                  ; $6b39: $21 $00 $1f
    add b                                         ; $6b3c: $80
    ld hl, $1f00                                  ; $6b3d: $21 $00 $1f
    add b                                         ; $6b40: $80
    ld hl, $1f00                                  ; $6b41: $21 $00 $1f
    rlca                                          ; $6b44: $07
    nop                                           ; $6b45: $00
    nop                                           ; $6b46: $00
    nop                                           ; $6b47: $00
    nop                                           ; $6b48: $00
    nop                                           ; $6b49: $00
    nop                                           ; $6b4a: $00
    nop                                           ; $6b4b: $00
    jr nc, @+$32                                  ; $6b4c: $30 $30

    rra                                           ; $6b4e: $1f
    dec e                                         ; $6b4f: $1d
    nop                                           ; $6b50: $00
    jr nz, @+$22                                  ; $6b51: $20 $20

    rra                                           ; $6b53: $1f

jr_013_6b54:
    add b                                         ; $6b54: $80
    ld hl, $1f00                                  ; $6b55: $21 $00 $1f
    add b                                         ; $6b58: $80
    ld hl, $1f00                                  ; $6b59: $21 $00 $1f
    add b                                         ; $6b5c: $80
    ld hl, $1f00                                  ; $6b5d: $21 $00 $1f
    add b                                         ; $6b60: $80
    ld hl, $1f00                                  ; $6b61: $21 $00 $1f
    rlca                                          ; $6b64: $07
    nop                                           ; $6b65: $00
    nop                                           ; $6b66: $00
    nop                                           ; $6b67: $00
    nop                                           ; $6b68: $00
    nop                                           ; $6b69: $00
    nop                                           ; $6b6a: $00
    nop                                           ; $6b6b: $00
    jr nc, @+$32                                  ; $6b6c: $30 $30

    rra                                           ; $6b6e: $1f
    dec e                                         ; $6b6f: $1d
    ld b, b                                       ; $6b70: $40
    ld hl, $1e00                                  ; $6b71: $21 $00 $1e
    add b                                         ; $6b74: $80
    ld hl, $1f00                                  ; $6b75: $21 $00 $1f
    add b                                         ; $6b78: $80
    ld hl, $1f00                                  ; $6b79: $21 $00 $1f
    add b                                         ; $6b7c: $80
    ld hl, $1f00                                  ; $6b7d: $21 $00 $1f
    add b                                         ; $6b80: $80
    ld hl, $1f00                                  ; $6b81: $21 $00 $1f
    rlca                                          ; $6b84: $07
    nop                                           ; $6b85: $00
    nop                                           ; $6b86: $00
    nop                                           ; $6b87: $00
    nop                                           ; $6b88: $00
    nop                                           ; $6b89: $00
    nop                                           ; $6b8a: $00
    nop                                           ; $6b8b: $00
    jr nc, @+$32                                  ; $6b8c: $30 $30

    rra                                           ; $6b8e: $1f
    dec e                                         ; $6b8f: $1d
    ld b, b                                       ; $6b90: $40
    ld [hl+], a                                   ; $6b91: $22
    ldh [$1f], a                                  ; $6b92: $e0 $1f
    add b                                         ; $6b94: $80
    ld hl, $1f00                                  ; $6b95: $21 $00 $1f
    add b                                         ; $6b98: $80
    ld hl, $1f00                                  ; $6b99: $21 $00 $1f
    add b                                         ; $6b9c: $80
    ld hl, $1f00                                  ; $6b9d: $21 $00 $1f
    add b                                         ; $6ba0: $80
    ld hl, $1f00                                  ; $6ba1: $21 $00 $1f
    rlca                                          ; $6ba4: $07
    nop                                           ; $6ba5: $00
    nop                                           ; $6ba6: $00
    nop                                           ; $6ba7: $00
    nop                                           ; $6ba8: $00
    nop                                           ; $6ba9: $00
    nop                                           ; $6baa: $00
    nop                                           ; $6bab: $00
    jr nc, jr_013_6bde                            ; $6bac: $30 $30

    rra                                           ; $6bae: $1f
    dec e                                         ; $6baf: $1d
    nop                                           ; $6bb0: $00
    jr nz, jr_013_6bf3                            ; $6bb1: $20 $40

    jr nz, jr_013_6b35                            ; $6bb3: $20 $80

    ld hl, $1f00                                  ; $6bb5: $21 $00 $1f
    add b                                         ; $6bb8: $80
    ld hl, $1f00                                  ; $6bb9: $21 $00 $1f
    add b                                         ; $6bbc: $80
    ld hl, $1f00                                  ; $6bbd: $21 $00 $1f
    add b                                         ; $6bc0: $80
    ld hl, $1f00                                  ; $6bc1: $21 $00 $1f
    inc bc                                        ; $6bc4: $03
    nop                                           ; $6bc5: $00
    nop                                           ; $6bc6: $00
    nop                                           ; $6bc7: $00
    inc a                                         ; $6bc8: $3c
    nop                                           ; $6bc9: $00
    nop                                           ; $6bca: $00
    nop                                           ; $6bcb: $00
    ld b, b                                       ; $6bcc: $40
    ld b, b                                       ; $6bcd: $40
    dec d                                         ; $6bce: $15
    ld l, $20                                     ; $6bcf: $2e $20
    dec d                                         ; $6bd1: $15
    ldh [$37], a                                  ; $6bd2: $e0 $37
    jr nz, jr_013_6bee                            ; $6bd4: $20 $18

    ldh [$30], a                                  ; $6bd6: $e0 $30
    jr nz, jr_013_6bf2                            ; $6bd8: $20 $18

    ldh [$30], a                                  ; $6bda: $e0 $30
    jr nz, @+$1a                                  ; $6bdc: $20 $18

jr_013_6bde:
    ldh [$30], a                                  ; $6bde: $e0 $30
    jr nz, @+$1a                                  ; $6be0: $20 $18

    ldh [$30], a                                  ; $6be2: $e0 $30
    inc bc                                        ; $6be4: $03
    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    nop                                           ; $6be7: $00
    or b                                          ; $6be8: $b0
    nop                                           ; $6be9: $00
    nop                                           ; $6bea: $00
    nop                                           ; $6beb: $00
    ld b, b                                       ; $6bec: $40
    ld b, b                                       ; $6bed: $40

jr_013_6bee:
    inc c                                         ; $6bee: $0c
    ld [hl+], a                                   ; $6bef: $22
    ld b, b                                       ; $6bf0: $40
    rlca                                          ; $6bf1: $07

jr_013_6bf2:
    nop                                           ; $6bf2: $00

jr_013_6bf3:
    add hl, sp                                    ; $6bf3: $39
    nop                                           ; $6bf4: $00
    ld c, $00                                     ; $6bf5: $0e $00
    inc h                                         ; $6bf7: $24
    nop                                           ; $6bf8: $00
    ld c, $00                                     ; $6bf9: $0e $00
    inc h                                         ; $6bfb: $24
    nop                                           ; $6bfc: $00
    ld c, $00                                     ; $6bfd: $0e $00
    inc h                                         ; $6bff: $24
    nop                                           ; $6c00: $00
    ld c, $00                                     ; $6c01: $0e $00
    inc h                                         ; $6c03: $24
    inc bc                                        ; $6c04: $03
    nop                                           ; $6c05: $00
    nop                                           ; $6c06: $00
    nop                                           ; $6c07: $00
    ld h, d                                       ; $6c08: $62
    nop                                           ; $6c09: $00
    nop                                           ; $6c0a: $00
    nop                                           ; $6c0b: $00
    ld b, b                                       ; $6c0c: $40
    ld b, b                                       ; $6c0d: $40
    dec de                                        ; $6c0e: $1b
    ld d, $20                                     ; $6c0f: $16 $20
    rla                                           ; $6c11: $17
    jr nz, @+$24                                  ; $6c12: $20 $22

    nop                                           ; $6c14: $00
    ld e, $00                                     ; $6c15: $1e $00
    jr jr_013_6c19                                ; $6c17: $18 $00

jr_013_6c19:
    ld e, $00                                     ; $6c19: $1e $00
    jr jr_013_6c1d                                ; $6c1b: $18 $00

jr_013_6c1d:
    ld e, $00                                     ; $6c1d: $1e $00
    jr jr_013_6c21                                ; $6c1f: $18 $00

jr_013_6c21:
    ld e, $00                                     ; $6c21: $1e $00
    jr jr_013_6c28                                ; $6c23: $18 $03

    nop                                           ; $6c25: $00
    nop                                           ; $6c26: $00
    nop                                           ; $6c27: $00

jr_013_6c28:
    ld c, e                                       ; $6c28: $4b
    nop                                           ; $6c29: $00
    nop                                           ; $6c2a: $00
    nop                                           ; $6c2b: $00
    ld b, b                                       ; $6c2c: $40
    ld b, b                                       ; $6c2d: $40
    dec c                                         ; $6c2e: $0d
    ld c, $e0                                     ; $6c2f: $0e $e0
    inc d                                         ; $6c31: $14
    ldh [rTAC], a                                 ; $6c32: $e0 $07
    nop                                           ; $6c34: $00
    stop                                          ; $6c35: $10 $00
    stop                                          ; $6c37: $10 $00
    stop                                          ; $6c39: $10 $00
    stop                                          ; $6c3b: $10 $00
    stop                                          ; $6c3d: $10 $00
    stop                                          ; $6c3f: $10 $00
    stop                                          ; $6c41: $10 $00
    db $10                                        ; $6c43: $10
    inc bc                                        ; $6c44: $03
    nop                                           ; $6c45: $00
    nop                                           ; $6c46: $00
    nop                                           ; $6c47: $00
    ld e, e                                       ; $6c48: $5b
    nop                                           ; $6c49: $00
    nop                                           ; $6c4a: $00
    nop                                           ; $6c4b: $00
    ld b, b                                       ; $6c4c: $40
    ld b, b                                       ; $6c4d: $40
    ld sp, $0018                                  ; $6c4e: $31 $18 $00
    jr z, jr_013_6c53                             ; $6c51: $28 $00

jr_013_6c53:
    dec e                                         ; $6c53: $1d
    nop                                           ; $6c54: $00
    inc sp                                        ; $6c55: $33
    nop                                           ; $6c56: $00
    ld a, [de]                                    ; $6c57: $1a
    nop                                           ; $6c58: $00
    inc sp                                        ; $6c59: $33
    nop                                           ; $6c5a: $00
    ld a, [de]                                    ; $6c5b: $1a
    nop                                           ; $6c5c: $00
    inc sp                                        ; $6c5d: $33
    nop                                           ; $6c5e: $00
    ld a, [de]                                    ; $6c5f: $1a
    nop                                           ; $6c60: $00
    inc sp                                        ; $6c61: $33
    nop                                           ; $6c62: $00
    ld a, [de]                                    ; $6c63: $1a
    inc bc                                        ; $6c64: $03
    nop                                           ; $6c65: $00
    nop                                           ; $6c66: $00
    nop                                           ; $6c67: $00
    ld l, [hl]                                    ; $6c68: $6e
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    nop                                           ; $6c6b: $00
    ld b, b                                       ; $6c6c: $40
    ld b, b                                       ; $6c6d: $40
    ld l, $10                                     ; $6c6e: $2e $10
    and b                                         ; $6c70: $a0
    jr c, jr_013_6bf3                             ; $6c71: $38 $80

    ld b, $00                                     ; $6c73: $06 $00
    ld sp, $1200                                  ; $6c75: $31 $00 $12
    nop                                           ; $6c78: $00
    ld sp, $1200                                  ; $6c79: $31 $00 $12
    nop                                           ; $6c7c: $00
    ld sp, $1200                                  ; $6c7d: $31 $00 $12
    nop                                           ; $6c80: $00
    ld sp, $1200                                  ; $6c81: $31 $00 $12
    inc bc                                        ; $6c84: $03
    nop                                           ; $6c85: $00
    nop                                           ; $6c86: $00
    nop                                           ; $6c87: $00
    ld l, h                                       ; $6c88: $6c
    nop                                           ; $6c89: $00
    nop                                           ; $6c8a: $00
    nop                                           ; $6c8b: $00
    ld b, b                                       ; $6c8c: $40
    ld b, b                                       ; $6c8d: $40
    inc l                                         ; $6c8e: $2c
    dec l                                         ; $6c8f: $2d
    ret nz                                        ; $6c90: $c0

    inc hl                                        ; $6c91: $23
    nop                                           ; $6c92: $00
    ld h, $00                                     ; $6c93: $26 $00
    ld l, $00                                     ; $6c95: $2e $00
    cpl                                           ; $6c97: $2f
    nop                                           ; $6c98: $00
    ld l, $00                                     ; $6c99: $2e $00
    cpl                                           ; $6c9b: $2f
    nop                                           ; $6c9c: $00
    ld l, $00                                     ; $6c9d: $2e $00
    cpl                                           ; $6c9f: $2f
    nop                                           ; $6ca0: $00
    ld l, $00                                     ; $6ca1: $2e $00
    cpl                                           ; $6ca3: $2f
    inc bc                                        ; $6ca4: $03
    nop                                           ; $6ca5: $00
    nop                                           ; $6ca6: $00
    nop                                           ; $6ca7: $00
    ld b, e                                       ; $6ca8: $43
    nop                                           ; $6ca9: $00
    nop                                           ; $6caa: $00
    nop                                           ; $6cab: $00
    ld b, b                                       ; $6cac: $40
    ld b, b                                       ; $6cad: $40
    inc hl                                        ; $6cae: $23
    dec l                                         ; $6caf: $2d
    nop                                           ; $6cb0: $00
    add hl, hl                                    ; $6cb1: $29
    ldh [$37], a                                  ; $6cb2: $e0 $37
    nop                                           ; $6cb4: $00
    ld h, $00                                     ; $6cb5: $26 $00
    cpl                                           ; $6cb7: $2f
    nop                                           ; $6cb8: $00
    ld h, $00                                     ; $6cb9: $26 $00
    cpl                                           ; $6cbb: $2f
    nop                                           ; $6cbc: $00
    ld h, $00                                     ; $6cbd: $26 $00
    cpl                                           ; $6cbf: $2f
    nop                                           ; $6cc0: $00
    ld h, $00                                     ; $6cc1: $26 $00
    cpl                                           ; $6cc3: $2f
    inc bc                                        ; $6cc4: $03
    nop                                           ; $6cc5: $00
    nop                                           ; $6cc6: $00
    nop                                           ; $6cc7: $00
    ld a, [hl]                                    ; $6cc8: $7e
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    nop                                           ; $6ccb: $00
    ld b, b                                       ; $6ccc: $40
    ld b, b                                       ; $6ccd: $40
    dec l                                         ; $6cce: $2d
    ld h, $00                                     ; $6ccf: $26 $00
    jr c, jr_013_6cd3                             ; $6cd1: $38 $00

jr_013_6cd3:
    dec [hl]                                      ; $6cd3: $35
    nop                                           ; $6cd4: $00
    cpl                                           ; $6cd5: $2f
    nop                                           ; $6cd6: $00
    jr z, jr_013_6cd9                             ; $6cd7: $28 $00

jr_013_6cd9:
    cpl                                           ; $6cd9: $2f
    nop                                           ; $6cda: $00
    jr z, jr_013_6cdd                             ; $6cdb: $28 $00

jr_013_6cdd:
    cpl                                           ; $6cdd: $2f
    nop                                           ; $6cde: $00
    jr z, jr_013_6ce1                             ; $6cdf: $28 $00

jr_013_6ce1:
    cpl                                           ; $6ce1: $2f
    nop                                           ; $6ce2: $00
    jr z, jr_013_6ce8                             ; $6ce3: $28 $03

    nop                                           ; $6ce5: $00
    nop                                           ; $6ce6: $00
    nop                                           ; $6ce7: $00

jr_013_6ce8:
    nop                                           ; $6ce8: $00
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    nop                                           ; $6ceb: $00
    ld b, b                                       ; $6cec: $40
    ld b, b                                       ; $6ced: $40
    inc e                                         ; $6cee: $1c
    inc h                                         ; $6cef: $24
    add b                                         ; $6cf0: $80
    ld a, [hl+]                                   ; $6cf1: $2a
    ld b, b                                       ; $6cf2: $40
    inc h                                         ; $6cf3: $24
    add b                                         ; $6cf4: $80
    ld e, $c0                                     ; $6cf5: $1e $c0
    inc h                                         ; $6cf7: $24
    add b                                         ; $6cf8: $80
    ld e, $c0                                     ; $6cf9: $1e $c0
    inc h                                         ; $6cfb: $24
    add b                                         ; $6cfc: $80
    ld e, $c0                                     ; $6cfd: $1e $c0
    inc h                                         ; $6cff: $24
    add b                                         ; $6d00: $80
    ld e, $c0                                     ; $6d01: $1e $c0
    inc h                                         ; $6d03: $24
    inc bc                                        ; $6d04: $03
    nop                                           ; $6d05: $00
    nop                                           ; $6d06: $00
    nop                                           ; $6d07: $00
    nop                                           ; $6d08: $00
    nop                                           ; $6d09: $00
    nop                                           ; $6d0a: $00
    nop                                           ; $6d0b: $00
    ld b, b                                       ; $6d0c: $40
    ld b, b                                       ; $6d0d: $40
    inc e                                         ; $6d0e: $1c
    inc h                                         ; $6d0f: $24
    add b                                         ; $6d10: $80
    ld a, [hl+]                                   ; $6d11: $2a
    ld b, b                                       ; $6d12: $40
    inc h                                         ; $6d13: $24
    add b                                         ; $6d14: $80
    ld e, $c0                                     ; $6d15: $1e $c0
    inc h                                         ; $6d17: $24
    add b                                         ; $6d18: $80
    ld e, $c0                                     ; $6d19: $1e $c0
    inc h                                         ; $6d1b: $24
    add b                                         ; $6d1c: $80
    ld e, $c0                                     ; $6d1d: $1e $c0
    inc h                                         ; $6d1f: $24
    add b                                         ; $6d20: $80
    ld e, $c0                                     ; $6d21: $1e $c0
    inc h                                         ; $6d23: $24
    rlca                                          ; $6d24: $07
    nop                                           ; $6d25: $00
    nop                                           ; $6d26: $00
    nop                                           ; $6d27: $00
    nop                                           ; $6d28: $00
    nop                                           ; $6d29: $00
    nop                                           ; $6d2a: $00
    nop                                           ; $6d2b: $00
    ld b, b                                       ; $6d2c: $40
    ld b, b                                       ; $6d2d: $40
    dec e                                         ; $6d2e: $1d
    ld e, $80                                     ; $6d2f: $1e $80
    jr nz, @-$7e                                  ; $6d31: $20 $80

    jr nz, jr_013_6d75                            ; $6d33: $20 $40

    rra                                           ; $6d35: $1f
    ld b, b                                       ; $6d36: $40
    jr nz, jr_013_6d79                            ; $6d37: $20 $40

    rra                                           ; $6d39: $1f
    ld b, b                                       ; $6d3a: $40
    jr nz, jr_013_6d7d                            ; $6d3b: $20 $40

    rra                                           ; $6d3d: $1f
    ld b, b                                       ; $6d3e: $40
    jr nz, jr_013_6d81                            ; $6d3f: $20 $40

    rra                                           ; $6d41: $1f
    ld b, b                                       ; $6d42: $40
    jr nz, jr_013_6d48                            ; $6d43: $20 $03

    nop                                           ; $6d45: $00
    nop                                           ; $6d46: $00
    nop                                           ; $6d47: $00

jr_013_6d48:
    nop                                           ; $6d48: $00
    nop                                           ; $6d49: $00
    nop                                           ; $6d4a: $00
    nop                                           ; $6d4b: $00
    jr nc, jr_013_6d90                            ; $6d4c: $30 $42

    inc hl                                        ; $6d4e: $23
    dec h                                         ; $6d4f: $25
    nop                                           ; $6d50: $00
    db $10                                        ; $6d51: $10
    add b                                         ; $6d52: $80
    dec l                                         ; $6d53: $2d
    add b                                         ; $6d54: $80
    dec h                                         ; $6d55: $25
    ld b, b                                       ; $6d56: $40
    daa                                           ; $6d57: $27
    add b                                         ; $6d58: $80
    dec h                                         ; $6d59: $25
    ld b, b                                       ; $6d5a: $40
    daa                                           ; $6d5b: $27
    add b                                         ; $6d5c: $80
    dec h                                         ; $6d5d: $25
    ld b, b                                       ; $6d5e: $40
    daa                                           ; $6d5f: $27
    add b                                         ; $6d60: $80
    dec h                                         ; $6d61: $25
    ld b, b                                       ; $6d62: $40
    daa                                           ; $6d63: $27
    inc bc                                        ; $6d64: $03
    nop                                           ; $6d65: $00
    nop                                           ; $6d66: $00
    nop                                           ; $6d67: $00
    and a                                         ; $6d68: $a7
    nop                                           ; $6d69: $00
    ld [$3a0a], sp                                ; $6d6a: $08 $0a $3a
    ld a, [hl-]                                   ; $6d6d: $3a
    rra                                           ; $6d6e: $1f
    dec de                                        ; $6d6f: $1b
    nop                                           ; $6d70: $00
    ld hl, $3000                                  ; $6d71: $21 $00 $30
    add b                                         ; $6d74: $80

jr_013_6d75:
    ld hl, $1c00                                  ; $6d75: $21 $00 $1c
    add b                                         ; $6d78: $80

jr_013_6d79:
    ld hl, $1c00                                  ; $6d79: $21 $00 $1c
    add b                                         ; $6d7c: $80

jr_013_6d7d:
    ld hl, $1c00                                  ; $6d7d: $21 $00 $1c
    add b                                         ; $6d80: $80

jr_013_6d81:
    ld hl, $1c00                                  ; $6d81: $21 $00 $1c
    rlca                                          ; $6d84: $07
    nop                                           ; $6d85: $00
    nop                                           ; $6d86: $00
    nop                                           ; $6d87: $00
    nop                                           ; $6d88: $00
    nop                                           ; $6d89: $00
    nop                                           ; $6d8a: $00
    nop                                           ; $6d8b: $00
    ld b, b                                       ; $6d8c: $40
    ld b, b                                       ; $6d8d: $40
    inc h                                         ; $6d8e: $24
    rra                                           ; $6d8f: $1f

jr_013_6d90:
    add b                                         ; $6d90: $80
    dec h                                         ; $6d91: $25
    nop                                           ; $6d92: $00
    ld [hl+], a                                   ; $6d93: $22
    ret nz                                        ; $6d94: $c0

    ld h, $00                                     ; $6d95: $26 $00
    ld hl, $26c0                                  ; $6d97: $21 $c0 $26
    nop                                           ; $6d9a: $00
    ld hl, $26c0                                  ; $6d9b: $21 $c0 $26
    nop                                           ; $6d9e: $00
    ld hl, $26c0                                  ; $6d9f: $21 $c0 $26
    nop                                           ; $6da2: $00
    ld hl, $0003                                  ; $6da3: $21 $03 $00
    nop                                           ; $6da6: $00
    nop                                           ; $6da7: $00
    nop                                           ; $6da8: $00
    nop                                           ; $6da9: $00
    stop                                          ; $6daa: $10 $00
    jr nc, jr_013_6df0                            ; $6dac: $30 $42

    daa                                           ; $6dae: $27
    inc b                                         ; $6daf: $04
    nop                                           ; $6db0: $00
    ld hl, $3000                                  ; $6db1: $21 $00 $30
    nop                                           ; $6db4: $00
    ld a, [hl+]                                   ; $6db5: $2a
    ret nz                                        ; $6db6: $c0

    dec b                                         ; $6db7: $05
    nop                                           ; $6db8: $00
    ld a, [hl+]                                   ; $6db9: $2a
    ret nz                                        ; $6dba: $c0

    dec b                                         ; $6dbb: $05
    nop                                           ; $6dbc: $00
    ld a, [hl+]                                   ; $6dbd: $2a
    ret nz                                        ; $6dbe: $c0

    dec b                                         ; $6dbf: $05
    nop                                           ; $6dc0: $00
    ld a, [hl+]                                   ; $6dc1: $2a
    ret nz                                        ; $6dc2: $c0

    dec b                                         ; $6dc3: $05
    inc bc                                        ; $6dc4: $03
    nop                                           ; $6dc5: $00
    nop                                           ; $6dc6: $00
    nop                                           ; $6dc7: $00
    and a                                         ; $6dc8: $a7
    nop                                           ; $6dc9: $00
    ld [$3a0a], sp                                ; $6dca: $08 $0a $3a
    ld a, [hl-]                                   ; $6dcd: $3a
    dec e                                         ; $6dce: $1d
    jr nz, jr_013_6dd1                            ; $6dcf: $20 $00

jr_013_6dd1:
    add hl, hl                                    ; $6dd1: $29
    nop                                           ; $6dd2: $00
    dec [hl]                                      ; $6dd3: $35
    ret nz                                        ; $6dd4: $c0

    rra                                           ; $6dd5: $1f
    add b                                         ; $6dd6: $80
    ld [hl+], a                                   ; $6dd7: $22
    ret nz                                        ; $6dd8: $c0

    rra                                           ; $6dd9: $1f
    add b                                         ; $6dda: $80
    ld [hl+], a                                   ; $6ddb: $22
    ret nz                                        ; $6ddc: $c0

    rra                                           ; $6ddd: $1f
    add b                                         ; $6dde: $80
    ld [hl+], a                                   ; $6ddf: $22
    ret nz                                        ; $6de0: $c0

    rra                                           ; $6de1: $1f
    add b                                         ; $6de2: $80
    ld [hl+], a                                   ; $6de3: $22
    rlca                                          ; $6de4: $07
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    nop                                           ; $6de7: $00
    nop                                           ; $6de8: $00
    nop                                           ; $6de9: $00
    nop                                           ; $6dea: $00
    nop                                           ; $6deb: $00
    ld b, b                                       ; $6dec: $40
    ld b, b                                       ; $6ded: $40
    inc hl                                        ; $6dee: $23
    inc e                                         ; $6def: $1c

jr_013_6df0:
    nop                                           ; $6df0: $00
    inc h                                         ; $6df1: $24
    nop                                           ; $6df2: $00
    rra                                           ; $6df3: $1f
    add b                                         ; $6df4: $80
    dec h                                         ; $6df5: $25
    ret nz                                        ; $6df6: $c0

    dec e                                         ; $6df7: $1d
    add b                                         ; $6df8: $80
    dec h                                         ; $6df9: $25
    ret nz                                        ; $6dfa: $c0

    dec e                                         ; $6dfb: $1d
    add b                                         ; $6dfc: $80
    dec h                                         ; $6dfd: $25
    ret nz                                        ; $6dfe: $c0

    dec e                                         ; $6dff: $1d
    add b                                         ; $6e00: $80
    dec h                                         ; $6e01: $25
    ret nz                                        ; $6e02: $c0

    dec e                                         ; $6e03: $1d
    inc b                                         ; $6e04: $04
    nop                                           ; $6e05: $00
    nop                                           ; $6e06: $00
    nop                                           ; $6e07: $00
    add h                                         ; $6e08: $84
    ld bc, $0000                                  ; $6e09: $01 $00 $00
    ld b, b                                       ; $6e0c: $40
    ld b, b                                       ; $6e0d: $40
    inc e                                         ; $6e0e: $1c
    dec bc                                        ; $6e0f: $0b
    nop                                           ; $6e10: $00
    ld d, $00                                     ; $6e11: $16 $00
    jr c, jr_013_6e55                             ; $6e13: $38 $40

    ld e, $00                                     ; $6e15: $1e $00
    dec c                                         ; $6e17: $0d
    ld b, b                                       ; $6e18: $40
    ld e, $00                                     ; $6e19: $1e $00
    dec c                                         ; $6e1b: $0d
    ld b, b                                       ; $6e1c: $40
    ld e, $00                                     ; $6e1d: $1e $00
    dec c                                         ; $6e1f: $0d
    ld b, b                                       ; $6e20: $40
    ld e, $00                                     ; $6e21: $1e $00
    dec c                                         ; $6e23: $0d
    rlca                                          ; $6e24: $07
    nop                                           ; $6e25: $00
    nop                                           ; $6e26: $00
    nop                                           ; $6e27: $00
    nop                                           ; $6e28: $00
    nop                                           ; $6e29: $00
    nop                                           ; $6e2a: $00
    nop                                           ; $6e2b: $00
    ld b, b                                       ; $6e2c: $40
    ld b, b                                       ; $6e2d: $40
    dec e                                         ; $6e2e: $1d
    ld e, $60                                     ; $6e2f: $1e $60
    jr nz, jr_013_6e93                            ; $6e31: $20 $60

    rra                                           ; $6e33: $1f
    ld b, b                                       ; $6e34: $40
    rra                                           ; $6e35: $1f
    ld b, b                                       ; $6e36: $40
    jr nz, jr_013_6e79                            ; $6e37: $20 $40

    rra                                           ; $6e39: $1f
    ld b, b                                       ; $6e3a: $40
    jr nz, jr_013_6e7d                            ; $6e3b: $20 $40

    rra                                           ; $6e3d: $1f
    ld b, b                                       ; $6e3e: $40
    jr nz, jr_013_6e81                            ; $6e3f: $20 $40

    rra                                           ; $6e41: $1f
    ld b, b                                       ; $6e42: $40
    jr nz, jr_013_6e4c                            ; $6e43: $20 $07

    nop                                           ; $6e45: $00
    nop                                           ; $6e46: $00
    nop                                           ; $6e47: $00
    nop                                           ; $6e48: $00
    nop                                           ; $6e49: $00
    nop                                           ; $6e4a: $00
    nop                                           ; $6e4b: $00

jr_013_6e4c:
    ld b, b                                       ; $6e4c: $40
    ld b, b                                       ; $6e4d: $40
    dec e                                         ; $6e4e: $1d
    ld e, $00                                     ; $6e4f: $1e $00
    ld e, $80                                     ; $6e51: $1e $80
    jr nz, jr_013_6e95                            ; $6e53: $20 $40

jr_013_6e55:
    rra                                           ; $6e55: $1f
    ld b, b                                       ; $6e56: $40
    jr nz, jr_013_6e99                            ; $6e57: $20 $40

    rra                                           ; $6e59: $1f
    ld b, b                                       ; $6e5a: $40
    jr nz, jr_013_6e9d                            ; $6e5b: $20 $40

    rra                                           ; $6e5d: $1f
    ld b, b                                       ; $6e5e: $40
    jr nz, jr_013_6ea1                            ; $6e5f: $20 $40

    rra                                           ; $6e61: $1f
    ld b, b                                       ; $6e62: $40
    jr nz, jr_013_6e6c                            ; $6e63: $20 $07

    nop                                           ; $6e65: $00
    nop                                           ; $6e66: $00
    nop                                           ; $6e67: $00
    nop                                           ; $6e68: $00
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    nop                                           ; $6e6b: $00

jr_013_6e6c:
    ld b, b                                       ; $6e6c: $40
    ld b, b                                       ; $6e6d: $40
    dec e                                         ; $6e6e: $1d
    ld e, $20                                     ; $6e6f: $1e $20
    jr nz, jr_013_6ed3                            ; $6e71: $20 $60

    ld hl, $1f40                                  ; $6e73: $21 $40 $1f
    ld b, b                                       ; $6e76: $40
    jr nz, jr_013_6eb9                            ; $6e77: $20 $40

jr_013_6e79:
    rra                                           ; $6e79: $1f
    ld b, b                                       ; $6e7a: $40
    jr nz, jr_013_6ebd                            ; $6e7b: $20 $40

jr_013_6e7d:
    rra                                           ; $6e7d: $1f
    ld b, b                                       ; $6e7e: $40
    jr nz, jr_013_6ec1                            ; $6e7f: $20 $40

jr_013_6e81:
    rra                                           ; $6e81: $1f
    ld b, b                                       ; $6e82: $40
    jr nz, jr_013_6e8c                            ; $6e83: $20 $07

    nop                                           ; $6e85: $00
    nop                                           ; $6e86: $00
    nop                                           ; $6e87: $00
    nop                                           ; $6e88: $00
    nop                                           ; $6e89: $00
    nop                                           ; $6e8a: $00
    nop                                           ; $6e8b: $00

jr_013_6e8c:
    ld b, b                                       ; $6e8c: $40
    ld b, b                                       ; $6e8d: $40
    dec e                                         ; $6e8e: $1d
    ld e, $40                                     ; $6e8f: $1e $40
    ld e, $80                                     ; $6e91: $1e $80

jr_013_6e93:
    ld e, $40                                     ; $6e93: $1e $40

jr_013_6e95:
    rra                                           ; $6e95: $1f
    ld b, b                                       ; $6e96: $40
    jr nz, @+$42                                  ; $6e97: $20 $40

jr_013_6e99:
    rra                                           ; $6e99: $1f
    ld b, b                                       ; $6e9a: $40
    jr nz, @+$42                                  ; $6e9b: $20 $40

jr_013_6e9d:
    rra                                           ; $6e9d: $1f
    ld b, b                                       ; $6e9e: $40
    jr nz, @+$42                                  ; $6e9f: $20 $40

jr_013_6ea1:
    rra                                           ; $6ea1: $1f
    ld b, b                                       ; $6ea2: $40
    jr nz, jr_013_6eac                            ; $6ea3: $20 $07

    nop                                           ; $6ea5: $00
    nop                                           ; $6ea6: $00
    nop                                           ; $6ea7: $00
    nop                                           ; $6ea8: $00
    nop                                           ; $6ea9: $00
    nop                                           ; $6eaa: $00
    nop                                           ; $6eab: $00

jr_013_6eac:
    ld b, b                                       ; $6eac: $40
    ld b, b                                       ; $6ead: $40
    dec e                                         ; $6eae: $1d
    ld e, $40                                     ; $6eaf: $1e $40
    ld hl, $2060                                  ; $6eb1: $21 $60 $20
    ld b, b                                       ; $6eb4: $40
    rra                                           ; $6eb5: $1f
    ld b, b                                       ; $6eb6: $40
    jr nz, @+$42                                  ; $6eb7: $20 $40

jr_013_6eb9:
    rra                                           ; $6eb9: $1f
    ld b, b                                       ; $6eba: $40
    jr nz, @+$42                                  ; $6ebb: $20 $40

jr_013_6ebd:
    rra                                           ; $6ebd: $1f
    ld b, b                                       ; $6ebe: $40
    jr nz, @+$42                                  ; $6ebf: $20 $40

jr_013_6ec1:
    rra                                           ; $6ec1: $1f
    ld b, b                                       ; $6ec2: $40
    jr nz, jr_013_6ecc                            ; $6ec3: $20 $07

    nop                                           ; $6ec5: $00
    nop                                           ; $6ec6: $00
    nop                                           ; $6ec7: $00
    nop                                           ; $6ec8: $00
    nop                                           ; $6ec9: $00
    nop                                           ; $6eca: $00
    nop                                           ; $6ecb: $00

jr_013_6ecc:
    ld b, b                                       ; $6ecc: $40
    ld b, b                                       ; $6ecd: $40
    inc h                                         ; $6ece: $24
    rra                                           ; $6ecf: $1f
    ld h, b                                       ; $6ed0: $60
    ld h, $e0                                     ; $6ed1: $26 $e0

jr_013_6ed3:
    ld hl, $26c0                                  ; $6ed3: $21 $c0 $26
    nop                                           ; $6ed6: $00
    ld hl, $26c0                                  ; $6ed7: $21 $c0 $26
    nop                                           ; $6eda: $00
    ld hl, $26c0                                  ; $6edb: $21 $c0 $26
    nop                                           ; $6ede: $00
    ld hl, $26c0                                  ; $6edf: $21 $c0 $26
    nop                                           ; $6ee2: $00
    ld hl, $0007                                  ; $6ee3: $21 $07 $00
    nop                                           ; $6ee6: $00
    nop                                           ; $6ee7: $00
    nop                                           ; $6ee8: $00
    nop                                           ; $6ee9: $00
    nop                                           ; $6eea: $00
    nop                                           ; $6eeb: $00
    ld b, b                                       ; $6eec: $40
    ld b, b                                       ; $6eed: $40
    inc h                                         ; $6eee: $24
    rra                                           ; $6eef: $1f
    jr nz, jr_013_6f1a                            ; $6ef0: $20 $28

    ret nz                                        ; $6ef2: $c0

    ld hl, $26c0                                  ; $6ef3: $21 $c0 $26
    nop                                           ; $6ef6: $00
    ld hl, $26c0                                  ; $6ef7: $21 $c0 $26
    nop                                           ; $6efa: $00
    ld hl, $26c0                                  ; $6efb: $21 $c0 $26
    nop                                           ; $6efe: $00
    ld hl, $26c0                                  ; $6eff: $21 $c0 $26
    nop                                           ; $6f02: $00
    ld hl, $0007                                  ; $6f03: $21 $07 $00
    nop                                           ; $6f06: $00
    nop                                           ; $6f07: $00
    nop                                           ; $6f08: $00
    nop                                           ; $6f09: $00
    nop                                           ; $6f0a: $00
    nop                                           ; $6f0b: $00
    ld b, b                                       ; $6f0c: $40
    ld b, b                                       ; $6f0d: $40
    inc h                                         ; $6f0e: $24
    rra                                           ; $6f0f: $1f
    ld b, b                                       ; $6f10: $40
    jr z, jr_013_6e93                             ; $6f11: $28 $80

    jr nz, @-$3e                                  ; $6f13: $20 $c0

    ld h, $00                                     ; $6f15: $26 $00
    ld hl, $26c0                                  ; $6f17: $21 $c0 $26

jr_013_6f1a:
    nop                                           ; $6f1a: $00
    ld hl, $26c0                                  ; $6f1b: $21 $c0 $26
    nop                                           ; $6f1e: $00
    ld hl, $26c0                                  ; $6f1f: $21 $c0 $26
    nop                                           ; $6f22: $00
    ld hl, $0007                                  ; $6f23: $21 $07 $00
    nop                                           ; $6f26: $00
    nop                                           ; $6f27: $00
    nop                                           ; $6f28: $00
    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    nop                                           ; $6f2b: $00
    ld b, b                                       ; $6f2c: $40
    ld b, b                                       ; $6f2d: $40
    inc h                                         ; $6f2e: $24
    rra                                           ; $6f2f: $1f
    ldh [rNR51], a                                ; $6f30: $e0 $25
    ldh [$1f], a                                  ; $6f32: $e0 $1f
    ret nz                                        ; $6f34: $c0

    ld h, $00                                     ; $6f35: $26 $00
    ld hl, $26c0                                  ; $6f37: $21 $c0 $26
    nop                                           ; $6f3a: $00
    ld hl, $26c0                                  ; $6f3b: $21 $c0 $26
    nop                                           ; $6f3e: $00
    ld hl, $26c0                                  ; $6f3f: $21 $c0 $26
    nop                                           ; $6f42: $00
    ld hl, $0007                                  ; $6f43: $21 $07 $00
    nop                                           ; $6f46: $00
    nop                                           ; $6f47: $00
    nop                                           ; $6f48: $00
    nop                                           ; $6f49: $00
    nop                                           ; $6f4a: $00
    nop                                           ; $6f4b: $00
    ld b, b                                       ; $6f4c: $40
    ld b, b                                       ; $6f4d: $40
    inc h                                         ; $6f4e: $24
    rra                                           ; $6f4f: $1f
    add b                                         ; $6f50: $80
    dec h                                         ; $6f51: $25
    ld h, b                                       ; $6f52: $60
    ld [hl+], a                                   ; $6f53: $22
    ret nz                                        ; $6f54: $c0

    ld h, $00                                     ; $6f55: $26 $00
    ld hl, $26c0                                  ; $6f57: $21 $c0 $26
    nop                                           ; $6f5a: $00
    ld hl, $26c0                                  ; $6f5b: $21 $c0 $26
    nop                                           ; $6f5e: $00
    ld hl, $26c0                                  ; $6f5f: $21 $c0 $26
    nop                                           ; $6f62: $00
    ld hl, $0007                                  ; $6f63: $21 $07 $00
    nop                                           ; $6f66: $00
    nop                                           ; $6f67: $00
    nop                                           ; $6f68: $00
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    nop                                           ; $6f6b: $00
    ld b, b                                       ; $6f6c: $40
    ld b, b                                       ; $6f6d: $40
    inc hl                                        ; $6f6e: $23
    inc e                                         ; $6f6f: $1c
    ldh [rNR50], a                                ; $6f70: $e0 $24
    ret nz                                        ; $6f72: $c0

    ld e, $80                                     ; $6f73: $1e $80
    dec h                                         ; $6f75: $25
    ret nz                                        ; $6f76: $c0

    dec e                                         ; $6f77: $1d
    add b                                         ; $6f78: $80
    dec h                                         ; $6f79: $25
    ret nz                                        ; $6f7a: $c0

    dec e                                         ; $6f7b: $1d
    add b                                         ; $6f7c: $80
    dec h                                         ; $6f7d: $25
    ret nz                                        ; $6f7e: $c0

    dec e                                         ; $6f7f: $1d
    add b                                         ; $6f80: $80
    dec h                                         ; $6f81: $25
    ret nz                                        ; $6f82: $c0

    dec e                                         ; $6f83: $1d
    rlca                                          ; $6f84: $07
    nop                                           ; $6f85: $00
    nop                                           ; $6f86: $00
    nop                                           ; $6f87: $00
    nop                                           ; $6f88: $00
    nop                                           ; $6f89: $00
    nop                                           ; $6f8a: $00
    nop                                           ; $6f8b: $00
    ld b, b                                       ; $6f8c: $40
    ld b, b                                       ; $6f8d: $40
    inc hl                                        ; $6f8e: $23
    inc e                                         ; $6f8f: $1c
    nop                                           ; $6f90: $00
    inc h                                         ; $6f91: $24
    add b                                         ; $6f92: $80
    dec e                                         ; $6f93: $1d
    add b                                         ; $6f94: $80
    dec h                                         ; $6f95: $25
    ret nz                                        ; $6f96: $c0

    dec e                                         ; $6f97: $1d
    add b                                         ; $6f98: $80
    dec h                                         ; $6f99: $25
    ret nz                                        ; $6f9a: $c0

    dec e                                         ; $6f9b: $1d
    add b                                         ; $6f9c: $80
    dec h                                         ; $6f9d: $25
    ret nz                                        ; $6f9e: $c0

    dec e                                         ; $6f9f: $1d
    add b                                         ; $6fa0: $80
    dec h                                         ; $6fa1: $25
    ret nz                                        ; $6fa2: $c0

    dec e                                         ; $6fa3: $1d
    rlca                                          ; $6fa4: $07
    nop                                           ; $6fa5: $00
    nop                                           ; $6fa6: $00
    nop                                           ; $6fa7: $00
    nop                                           ; $6fa8: $00
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    nop                                           ; $6fab: $00
    ld b, b                                       ; $6fac: $40
    ld b, b                                       ; $6fad: $40
    inc hl                                        ; $6fae: $23
    inc e                                         ; $6faf: $1c
    ld h, b                                       ; $6fb0: $60
    ld h, $c0                                     ; $6fb1: $26 $c0
    inc e                                         ; $6fb3: $1c
    add b                                         ; $6fb4: $80
    dec h                                         ; $6fb5: $25
    ret nz                                        ; $6fb6: $c0

    dec e                                         ; $6fb7: $1d
    add b                                         ; $6fb8: $80
    dec h                                         ; $6fb9: $25
    ret nz                                        ; $6fba: $c0

    dec e                                         ; $6fbb: $1d
    add b                                         ; $6fbc: $80
    dec h                                         ; $6fbd: $25
    ret nz                                        ; $6fbe: $c0

    dec e                                         ; $6fbf: $1d
    add b                                         ; $6fc0: $80
    dec h                                         ; $6fc1: $25
    ret nz                                        ; $6fc2: $c0

    dec e                                         ; $6fc3: $1d
    rlca                                          ; $6fc4: $07
    nop                                           ; $6fc5: $00
    nop                                           ; $6fc6: $00
    nop                                           ; $6fc7: $00
    nop                                           ; $6fc8: $00
    nop                                           ; $6fc9: $00
    nop                                           ; $6fca: $00
    nop                                           ; $6fcb: $00
    ld b, b                                       ; $6fcc: $40
    ld b, b                                       ; $6fcd: $40
    inc hl                                        ; $6fce: $23
    inc e                                         ; $6fcf: $1c
    jr nz, jr_013_6ff9                            ; $6fd0: $20 $27

    ld h, b                                       ; $6fd2: $60
    dec e                                         ; $6fd3: $1d
    add b                                         ; $6fd4: $80
    dec h                                         ; $6fd5: $25
    ret nz                                        ; $6fd6: $c0

    dec e                                         ; $6fd7: $1d
    add b                                         ; $6fd8: $80
    dec h                                         ; $6fd9: $25
    ret nz                                        ; $6fda: $c0

    dec e                                         ; $6fdb: $1d
    add b                                         ; $6fdc: $80
    dec h                                         ; $6fdd: $25
    ret nz                                        ; $6fde: $c0

    dec e                                         ; $6fdf: $1d
    add b                                         ; $6fe0: $80
    dec h                                         ; $6fe1: $25
    ret nz                                        ; $6fe2: $c0

    dec e                                         ; $6fe3: $1d
    rlca                                          ; $6fe4: $07
    nop                                           ; $6fe5: $00
    nop                                           ; $6fe6: $00
    nop                                           ; $6fe7: $00
    nop                                           ; $6fe8: $00
    nop                                           ; $6fe9: $00
    nop                                           ; $6fea: $00
    nop                                           ; $6feb: $00
    ld b, b                                       ; $6fec: $40
    ld b, b                                       ; $6fed: $40
    inc hl                                        ; $6fee: $23
    inc e                                         ; $6fef: $1c
    ret nz                                        ; $6ff0: $c0

    inc hl                                        ; $6ff1: $23
    ldh [rNR34], a                                ; $6ff2: $e0 $1e
    add b                                         ; $6ff4: $80
    dec h                                         ; $6ff5: $25
    ret nz                                        ; $6ff6: $c0

    dec e                                         ; $6ff7: $1d
    add b                                         ; $6ff8: $80

jr_013_6ff9:
    dec h                                         ; $6ff9: $25
    ret nz                                        ; $6ffa: $c0

    dec e                                         ; $6ffb: $1d
    add b                                         ; $6ffc: $80
    dec h                                         ; $6ffd: $25
    ret nz                                        ; $6ffe: $c0

    dec e                                         ; $6fff: $1d
    add b                                         ; $7000: $80
    dec h                                         ; $7001: $25
    ret nz                                        ; $7002: $c0

    dec e                                         ; $7003: $1d
    inc bc                                        ; $7004: $03
    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    nop                                           ; $7007: $00
    and a                                         ; $7008: $a7
    nop                                           ; $7009: $00
    ld [$3a0a], sp                                ; $700a: $08 $0a $3a
    ld a, [hl-]                                   ; $700d: $3a
    dec e                                         ; $700e: $1d
    jr nz, jr_013_7011                            ; $700f: $20 $00

jr_013_7011:
    add hl, hl                                    ; $7011: $29
    nop                                           ; $7012: $00
    dec [hl]                                      ; $7013: $35
    ret nz                                        ; $7014: $c0

    rra                                           ; $7015: $1f
    add b                                         ; $7016: $80
    ld [hl+], a                                   ; $7017: $22
    nop                                           ; $7018: $00
    jr nz, jr_013_701b                            ; $7019: $20 $00

jr_013_701b:
    ld [hl+], a                                   ; $701b: $22
    ldh [rNR43], a                                ; $701c: $e0 $22
    ld b, b                                       ; $701e: $40
    ld h, $e0                                     ; $701f: $26 $e0
    ld [hl+], a                                   ; $7021: $22
    ld b, b                                       ; $7022: $40
    ld h, $07                                     ; $7023: $26 $07
    nop                                           ; $7025: $00
    nop                                           ; $7026: $00
    nop                                           ; $7027: $00
    nop                                           ; $7028: $00
    nop                                           ; $7029: $00
    nop                                           ; $702a: $00
    nop                                           ; $702b: $00
    ld b, b                                       ; $702c: $40
    ld b, b                                       ; $702d: $40
    inc hl                                        ; $702e: $23
    inc e                                         ; $702f: $1c
    nop                                           ; $7030: $00
    inc h                                         ; $7031: $24
    nop                                           ; $7032: $00
    rra                                           ; $7033: $1f
    add b                                         ; $7034: $80
    dec h                                         ; $7035: $25
    ret nz                                        ; $7036: $c0

    dec e                                         ; $7037: $1d
    nop                                           ; $7038: $00
    ld a, [hl+]                                   ; $7039: $2a
    ret nz                                        ; $703a: $c0

    dec b                                         ; $703b: $05
    nop                                           ; $703c: $00
    ld a, [hl+]                                   ; $703d: $2a
    ret nz                                        ; $703e: $c0

    dec b                                         ; $703f: $05
    nop                                           ; $7040: $00
    ld a, [hl+]                                   ; $7041: $2a
    ret nz                                        ; $7042: $c0

    dec b                                         ; $7043: $05

    push bc                                       ; $7044: $c5
    push de                                       ; $7045: $d5
    dec l                                         ; $7046: $2d
    ld d, h                                       ; $7047: $54
    ld e, l                                       ; $7048: $5d
    ld a, d                                       ; $7049: $7a
    or a                                          ; $704a: $b7
    ld a, e                                       ; $704b: $7b
    jr z, jr_013_705a                             ; $704c: $28 $0c

    add $0a                                       ; $704e: $c6 $0a
    dec d                                         ; $7050: $15

jr_013_7051:
    dec d                                         ; $7051: $15
    bit 7, d                                      ; $7052: $cb $7a
    jr nz, jr_013_705a                            ; $7054: $20 $04

    add $12                                       ; $7056: $c6 $12
    jr jr_013_7051                                ; $7058: $18 $f7

jr_013_705a:
    ld hl, $0020                                  ; $705a: $21 $20 $00
    call Call_000_08b9                            ; $705d: $cd $b9 $08
    ld de, $5884                                  ; $7060: $11 $84 $58
    add hl, de                                    ; $7063: $19
    push hl                                       ; $7064: $e5
    ld de, $0000                                  ; $7065: $11 $00 $00
    add hl, de                                    ; $7068: $19
    ld b, [hl]                                    ; $7069: $46
    pop hl                                        ; $706a: $e1
    ld de, $0004                                  ; $706b: $11 $04 $00
    add hl, de                                    ; $706e: $19
    ld a, [hl+]                                   ; $706f: $2a
    ld h, [hl]                                    ; $7070: $66
    ld l, a                                       ; $7071: $6f
    ld a, b                                       ; $7072: $78
    pop de                                        ; $7073: $d1
    pop bc                                        ; $7074: $c1
    ret                                           ; $7075: $c9


Call_013_7076:
    ld hl, $0400                                  ; $7076: $21 $00 $04
    rst $18                                       ; $7079: $df

    db $0a, $13

    ld a, h                                       ; $707c: $7c
    sub $50                                       ; $707d: $d6 $50
    or a                                          ; $707f: $b7
    jr nz, jr_013_7086                            ; $7080: $20 $04

    rst $18                                       ; $7082: $df

    db $08, $50

    ret                                           ; $7085: $c9


jr_013_7086:
    cp $01                                        ; $7086: $fe $01
    jr nz, jr_013_708e                            ; $7088: $20 $04

    rst $18                                       ; $708a: $df
    ld [$c951], sp                                ; $708b: $08 $51 $c9

jr_013_708e:
    cp $02                                        ; $708e: $fe $02
    jr nz, jr_013_7096                            ; $7090: $20 $04

    rst $18                                       ; $7092: $df
    ld [$c952], sp                                ; $7093: $08 $52 $c9

jr_013_7096:
    cp $03                                        ; $7096: $fe $03
    jr nz, jr_013_709e                            ; $7098: $20 $04

    rst $18                                       ; $709a: $df
    db $10                                        ; $709b: $10
    ld d, e                                       ; $709c: $53
    ret                                           ; $709d: $c9


jr_013_709e:
    rst $18                                       ; $709e: $df
    db $10                                        ; $709f: $10
    ld d, h                                       ; $70a0: $54
    ret                                           ; $70a1: $c9


Call_013_70a2:
    rst $18                                       ; $70a2: $df

    db $0a, $50

    rst $18                                       ; $70a5: $df

    db $0a, $51

    rst $18                                       ; $70a8: $df

    db $0a, $52

    rst $18                                       ; $70ab: $df

    db $12, $53

    rst $18                                       ; $70ae: $df

    db $12, $54

    ret                                           ; $70b1: $c9


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
