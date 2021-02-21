; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    db $df, $46

    ld a, c                                       ; $4002: $79
    ld b, l                                       ; $4003: $45

    db $06, $43

    call nz, Call_000_0044                        ; $4006: $c4 $44 $00
    ld c, c                                       ; $4009: $49
    ld h, h                                       ; $400a: $64
    ld c, b                                       ; $400b: $48
    ld d, e                                       ; $400c: $53
    ld b, [hl]                                    ; $400d: $46
    sbc c                                         ; $400e: $99
    ld b, [hl]                                    ; $400f: $46

    db $c9, $45, $1d, $46

    db $e3                                        ; $4014: $e3
    ld b, l                                       ; $4015: $45
    scf                                           ; $4016: $37
    ld b, [hl]                                    ; $4017: $46
    sbc $59                                       ; $4018: $de $59
    ld d, h                                       ; $401a: $54
    ld e, a                                       ; $401b: $5f
    rst $08                                       ; $401c: $cf
    ld h, c                                       ; $401d: $61
    ld [hl-], a                                   ; $401e: $32
    ld b, a                                       ; $401f: $47
    ld a, l                                       ; $4020: $7d
    ld c, c                                       ; $4021: $49
    sbc l                                         ; $4022: $9d
    ld c, l                                       ; $4023: $4d
    ld e, l                                       ; $4024: $5d
    ld c, [hl]                                    ; $4025: $4e
    jp z, $b74e                                   ; $4026: $ca $4e $b7

    ld c, a                                       ; $4029: $4f
    push hl                                       ; $402a: $e5
    ld c, a                                       ; $402b: $4f
    add hl, bc                                    ; $402c: $09
    ld d, b                                       ; $402d: $50
    ld l, [hl]                                    ; $402e: $6e
    ld d, b                                       ; $402f: $50
    or [hl]                                       ; $4030: $b6
    ld d, b                                       ; $4031: $50
    db $eb                                        ; $4032: $eb
    ld d, b                                       ; $4033: $50
    inc sp                                        ; $4034: $33
    ld d, c                                       ; $4035: $51
    cp c                                          ; $4036: $b9
    ld d, c                                       ; $4037: $51
    rst $20                                       ; $4038: $e7
    ld d, c                                       ; $4039: $51
    dec l                                         ; $403a: $2d
    ld d, d                                       ; $403b: $52
    ld h, b                                       ; $403c: $60
    ld d, d                                       ; $403d: $52
    sub [hl]                                      ; $403e: $96
    ld d, d                                       ; $403f: $52
    jp nc, $0352                                  ; $4040: $d2 $52 $03

    ld d, e                                       ; $4043: $53
    sub l                                         ; $4044: $95
    ld d, e                                       ; $4045: $53
    or b                                          ; $4046: $b0
    ld e, b                                       ; $4047: $58

    db $04, $28, $06, $28, $08, $28, $0a, $28, $0c, $28, $0e, $28, $10, $28, $12, $28
    db $14, $28, $16, $28, $18, $28, $1a, $28, $1c, $28, $1e, $28, $20, $28, $22, $28
    db $24, $28, $26, $28, $28, $28, $2a, $28, $2c, $28, $2e, $28, $30, $28, $32, $28
    db $34, $28, $36, $28, $38, $28, $3a, $28, $3c, $28, $3e, $28, $40, $28, $42, $28
    db $44, $28, $46, $28, $48, $28, $4a, $28, $4c, $28, $4e, $28, $50, $28, $52, $28
    db $54, $28, $56, $28, $58, $28, $5a, $28, $5c, $28, $04, $29, $06, $29, $08, $29
    db $0a, $29, $0c, $29, $0e, $29, $10, $29, $12, $29, $14, $29, $16, $29, $18, $29
    db $1a, $29, $1c, $29, $1e, $29, $20, $29, $22, $29, $24, $29, $26, $29, $28, $29
    db $2a, $29, $2c, $29, $2e, $29, $30, $29, $32, $29, $34, $29, $36, $29, $38, $29
    db $04, $2a, $06, $2a, $08, $2a, $0a, $2a, $0c, $2a, $0e, $2a, $10, $2a, $12, $2a
    db $14, $2a, $16, $2a, $18, $2a, $1a, $2a, $1c, $2a, $1e, $2a, $20, $2a, $22, $2a
    db $24, $2a, $26, $2a, $04, $2b, $06, $2b, $08, $2b, $0a, $2b, $0c, $2b, $0e, $2b
    db $10, $2b, $12, $2b, $14, $2b, $16, $2b, $18, $2b, $1a, $2b, $1c, $2b, $1e, $2b
    db $20, $2b, $22, $2b, $24, $2b, $26, $2b, $28, $2b, $2a, $2b, $2c, $2b, $2e, $2b
    db $30, $2b, $32, $2b, $34, $2b, $36, $2b, $38, $2b, $04, $2c, $06, $2c, $08, $2c
    db $0a, $2c, $0c, $2c, $0e, $2c, $10, $2c, $12, $2c, $14, $2c, $16, $2c, $18, $2c
    db $1a, $2c, $1c, $2c, $1e, $2c, $20, $2c, $22, $2c, $24, $2c, $26, $2c, $28, $2c
    db $2a, $2c, $2c, $2c, $2e, $2c, $30, $2c, $32, $2c, $34, $2c, $36, $2c, $38, $2c
    db $3a, $2c, $3c, $2c, $3e, $2c, $40, $2c, $42, $2c, $44, $2c, $46, $2c, $48, $2c
    db $4a, $2c, $4c, $2c, $4e, $2c, $50, $2c, $52, $2c, $54, $2c, $56, $2c, $58, $2c
    db $5a, $2c, $5c, $2c, $04, $2d, $06, $2d, $08, $2d, $0a, $2d, $0c, $2d, $0e, $2d
    db $10, $2d, $12, $2d, $14, $2d, $16, $2d, $18, $2d, $1a, $2d, $1c, $2d, $1e, $2d
    db $20, $2d, $22, $2d, $24, $2d, $26, $2d, $04, $2e, $06, $2e, $08, $2e, $0a, $2e
    db $0c, $2e, $0e, $2e, $10, $2e, $12, $2e, $14, $2e, $16, $2e, $18, $2e, $1a, $2e
    db $1c, $2e, $1e, $2e, $20, $2e, $22, $2e, $24, $2e, $26, $2e, $28, $2e, $2a, $2e
    db $2c, $2e, $2e, $2e, $30, $2e, $32, $2e, $34, $2e, $36, $2e, $38, $2e, $04, $2f
    db $06, $2f, $08, $2f, $0a, $2f, $0c, $2f, $0e, $2f, $10, $2f, $12, $2f, $14, $2f
    db $16, $2f, $18, $2f, $1a, $2f, $1c, $2f, $1e, $2f, $20, $2f, $22, $2f, $24, $2f
    db $26, $2f, $28, $2f, $2a, $2f, $2c, $2f, $2e, $2f, $30, $2f, $32, $2f, $34, $2f
    db $36, $2f, $38, $2f, $04, $72, $06, $72, $08, $72, $0a, $72, $0c, $72, $0e, $72
    db $10, $72, $12, $72, $14, $72, $16, $72, $18, $72, $1a, $72, $1c, $72, $1e, $72
    db $20, $72, $22, $72, $24, $72, $26, $72, $28, $72, $2a, $72, $2c, $72, $2e, $72
    db $30, $72, $32, $72, $34, $72, $36, $72, $38, $72, $04, $73, $06, $73, $08, $73
    db $0a, $73, $0c, $73, $0e, $73, $10, $73, $12, $73, $14, $73, $16, $73, $18, $73
    db $1a, $73, $1c, $73, $1e, $73, $20, $73, $22, $73, $24, $73, $26, $73, $28, $73
    db $2a, $73, $2c, $73, $2e, $73, $30, $73, $32, $73, $34, $73, $36, $73, $38, $73
    db $04, $74, $06, $74, $08, $74, $0a, $74, $0c, $74, $0e, $74, $10, $74, $12, $74
    db $14, $74, $16, $74, $18, $74, $1a, $74, $1c, $74, $1e, $74, $20, $74, $22, $74
    db $24, $74, $26, $74, $28, $74, $2a, $74, $2c, $74, $2e, $74, $30, $74, $32, $74
    db $34, $74, $36, $74, $38, $74, $00, $00

    nop                                           ; $42c0: $00
    nop                                           ; $42c1: $00

    db $01, $00, $02, $00

    inc bc                                        ; $42c6: $03
    nop                                           ; $42c7: $00

    db $04, $00

    nop                                           ; $42ca: $00
    ld bc, $0101                                  ; $42cb: $01 $01 $01
    ld [bc], a                                    ; $42ce: $02
    ld bc, $0200                                  ; $42cf: $01 $00 $02
    ld bc, $0002                                  ; $42d2: $01 $02 $00
    inc bc                                        ; $42d5: $03
    ld bc, $0203                                  ; $42d6: $01 $03 $02
    inc bc                                        ; $42d9: $03
    nop                                           ; $42da: $00
    inc b                                         ; $42db: $04
    ld bc, $0204                                  ; $42dc: $01 $04 $02
    inc b                                         ; $42df: $04
    inc bc                                        ; $42e0: $03
    inc b                                         ; $42e1: $04
    inc b                                         ; $42e2: $04
    inc b                                         ; $42e3: $04
    nop                                           ; $42e4: $00
    dec b                                         ; $42e5: $05
    ld bc, $0005                                  ; $42e6: $01 $05 $00
    ld b, $01                                     ; $42e9: $06 $01
    ld b, $02                                     ; $42eb: $06 $02
    ld b, $00                                     ; $42ed: $06 $00
    rlca                                          ; $42ef: $07
    ld bc, $0207                                  ; $42f0: $01 $07 $02
    rlca                                          ; $42f3: $07
    nop                                           ; $42f4: $00
    ld [$0801], sp                                ; $42f5: $08 $01 $08
    ld [bc], a                                    ; $42f8: $02
    ld [$0900], sp                                ; $42f9: $08 $00 $09

    db $01, $09

    ld [bc], a                                    ; $42fe: $02
    add hl, bc                                    ; $42ff: $09
    nop                                           ; $4300: $00
    ld a, [bc]                                    ; $4301: $0a

    db $01, $0a

    ld [bc], a                                    ; $4304: $02
    ld a, [bc]                                    ; $4305: $0a

Call_00b_4306:
    push af                                       ; $4306: $f5
    push bc                                       ; $4307: $c5
    push de                                       ; $4308: $d5
    push hl                                       ; $4309: $e5
    or a                                          ; $430a: $b7
    jr z, jr_00b_4318                             ; $430b: $28 $0b

    ld a, [$c321]                                 ; $430d: $fa $21 $c3
    ld h, a                                       ; $4310: $67
    ld a, [$c323]                                 ; $4311: $fa $23 $c3
    ld l, a                                       ; $4314: $6f
    jp Jump_00b_431d                              ; $4315: $c3 $1d $43


jr_00b_4318:
    call Call_00b_49d3                            ; $4318: $cd $d3 $49
    ld h, b                                       ; $431b: $60
    ld l, d                                       ; $431c: $6a

Jump_00b_431d:
    push hl                                       ; $431d: $e5
    ld a, l                                       ; $431e: $7d
    and $1f                                       ; $431f: $e6 $1f
    ld l, a                                       ; $4321: $6f
    ld a, h                                       ; $4322: $7c
    and $1f                                       ; $4323: $e6 $1f
    ld h, $00                                     ; $4325: $26 $00
    add hl, hl                                    ; $4327: $29
    add hl, hl                                    ; $4328: $29
    add hl, hl                                    ; $4329: $29
    add hl, hl                                    ; $432a: $29
    add hl, hl                                    ; $432b: $29
    add l                                         ; $432c: $85
    ld l, a                                       ; $432d: $6f
    ld de, $9800                                  ; $432e: $11 $00 $98
    add hl, de                                    ; $4331: $19
    ld e, l                                       ; $4332: $5d
    ld d, h                                       ; $4333: $54
    pop hl                                        ; $4334: $e1
    push de                                       ; $4335: $d5
    ld a, h                                       ; $4336: $7c
    ld h, $00                                     ; $4337: $26 $00
    add hl, hl                                    ; $4339: $29
    add hl, hl                                    ; $433a: $29
    add hl, hl                                    ; $433b: $29
    add hl, hl                                    ; $433c: $29
    add hl, hl                                    ; $433d: $29
    add hl, hl                                    ; $433e: $29
    add l                                         ; $433f: $85
    ld l, a                                       ; $4340: $6f
    ld de, $d000                                  ; $4341: $11 $00 $d0
    add hl, de                                    ; $4344: $19
    pop de                                        ; $4345: $d1
    push hl                                       ; $4346: $e5
    push de                                       ; $4347: $d5
    ld a, $02                                     ; $4348: $3e $02
    ldh [$96], a                                  ; $434a: $e0 $96
    ldh [rSVBK], a                                ; $434c: $e0 $70
    ld a, $01                                     ; $434e: $3e $01
    ldh [rVBK], a                                 ; $4350: $e0 $4f
    ld b, $14                                     ; $4352: $06 $14

jr_00b_4354:
    ld c, $16                                     ; $4354: $0e $16
    push de                                       ; $4356: $d5
    push hl                                       ; $4357: $e5

jr_00b_4358:
    ld a, [hl+]                                   ; $4358: $2a
    ld [de], a                                    ; $4359: $12
    inc de                                        ; $435a: $13
    ld a, l                                       ; $435b: $7d
    and $3f                                       ; $435c: $e6 $3f
    jr nz, jr_00b_4368                            ; $435e: $20 $08

    push de                                       ; $4360: $d5
    ld de, $ffc0                                  ; $4361: $11 $c0 $ff
    add hl, de                                    ; $4364: $19
    pop de                                        ; $4365: $d1
    jr jr_00b_436d                                ; $4366: $18 $05

jr_00b_4368:
    ld a, e                                       ; $4368: $7b
    and $1f                                       ; $4369: $e6 $1f
    jr nz, jr_00b_4375                            ; $436b: $20 $08

jr_00b_436d:
    push hl                                       ; $436d: $e5
    ld hl, $ffe0                                  ; $436e: $21 $e0 $ff
    add hl, de                                    ; $4371: $19
    ld e, l                                       ; $4372: $5d
    ld d, h                                       ; $4373: $54
    pop hl                                        ; $4374: $e1

jr_00b_4375:
    dec c                                         ; $4375: $0d
    jr nz, jr_00b_4358                            ; $4376: $20 $e0

    pop hl                                        ; $4378: $e1
    ld a, $40                                     ; $4379: $3e $40
    add l                                         ; $437b: $85
    ld l, a                                       ; $437c: $6f
    jr nc, jr_00b_4386                            ; $437d: $30 $07

    ld a, h                                       ; $437f: $7c
    inc a                                         ; $4380: $3c
    and $0f                                       ; $4381: $e6 $0f
    or $d0                                        ; $4383: $f6 $d0
    ld h, a                                       ; $4385: $67

jr_00b_4386:
    pop de                                        ; $4386: $d1
    ld a, $20                                     ; $4387: $3e $20
    add e                                         ; $4389: $83
    ld e, a                                       ; $438a: $5f
    jr nc, jr_00b_4392                            ; $438b: $30 $05

    ld a, d                                       ; $438d: $7a
    inc a                                         ; $438e: $3c
    res 2, a                                      ; $438f: $cb $97
    ld d, a                                       ; $4391: $57

jr_00b_4392:
    dec b                                         ; $4392: $05
    jr nz, jr_00b_4354                            ; $4393: $20 $bf

    pop de                                        ; $4395: $d1
    pop hl                                        ; $4396: $e1
    ld a, $03                                     ; $4397: $3e $03
    ldh [$96], a                                  ; $4399: $e0 $96
    ldh [rSVBK], a                                ; $439b: $e0 $70
    xor a                                         ; $439d: $af
    ldh [rVBK], a                                 ; $439e: $e0 $4f
    ld b, $14                                     ; $43a0: $06 $14

jr_00b_43a2:
    ld c, $16                                     ; $43a2: $0e $16
    push de                                       ; $43a4: $d5
    push hl                                       ; $43a5: $e5

jr_00b_43a6:
    ld a, [hl+]                                   ; $43a6: $2a
    ld [de], a                                    ; $43a7: $12
    inc de                                        ; $43a8: $13
    ld a, l                                       ; $43a9: $7d
    and $3f                                       ; $43aa: $e6 $3f
    jr nz, jr_00b_43b6                            ; $43ac: $20 $08

    push de                                       ; $43ae: $d5
    ld de, $ffc0                                  ; $43af: $11 $c0 $ff
    add hl, de                                    ; $43b2: $19
    pop de                                        ; $43b3: $d1
    jr jr_00b_43bb                                ; $43b4: $18 $05

jr_00b_43b6:
    ld a, e                                       ; $43b6: $7b
    and $1f                                       ; $43b7: $e6 $1f
    jr nz, jr_00b_43c3                            ; $43b9: $20 $08

jr_00b_43bb:
    push hl                                       ; $43bb: $e5
    ld hl, $ffe0                                  ; $43bc: $21 $e0 $ff
    add hl, de                                    ; $43bf: $19
    ld e, l                                       ; $43c0: $5d
    ld d, h                                       ; $43c1: $54
    pop hl                                        ; $43c2: $e1

jr_00b_43c3:
    dec c                                         ; $43c3: $0d
    jr nz, jr_00b_43a6                            ; $43c4: $20 $e0

    pop hl                                        ; $43c6: $e1
    ld a, $40                                     ; $43c7: $3e $40
    add l                                         ; $43c9: $85
    ld l, a                                       ; $43ca: $6f
    jr nc, jr_00b_43d4                            ; $43cb: $30 $07

    ld a, h                                       ; $43cd: $7c
    inc a                                         ; $43ce: $3c
    and $0f                                       ; $43cf: $e6 $0f
    or $d0                                        ; $43d1: $f6 $d0
    ld h, a                                       ; $43d3: $67

jr_00b_43d4:
    pop de                                        ; $43d4: $d1
    ld a, $20                                     ; $43d5: $3e $20
    add e                                         ; $43d7: $83
    ld e, a                                       ; $43d8: $5f
    jr nc, jr_00b_43e0                            ; $43d9: $30 $05

    ld a, d                                       ; $43db: $7a
    inc a                                         ; $43dc: $3c
    res 2, a                                      ; $43dd: $cb $97

Jump_00b_43df:
    ld d, a                                       ; $43df: $57

jr_00b_43e0:
    dec b                                         ; $43e0: $05
    jr nz, jr_00b_43a2                            ; $43e1: $20 $bf

    pop hl                                        ; $43e3: $e1
    pop de                                        ; $43e4: $d1
    pop bc                                        ; $43e5: $c1
    pop af                                        ; $43e6: $f1
    ret                                           ; $43e7: $c9


Call_00b_43e8:
    push af                                       ; $43e8: $f5
    push bc                                       ; $43e9: $c5
    push de                                       ; $43ea: $d5
    ld b, a                                       ; $43eb: $47
    ld a, [$c32e]                                 ; $43ec: $fa $2e $c3
    ld h, $00                                     ; $43ef: $26 $00
    ld l, a                                       ; $43f1: $6f
    add hl, hl                                    ; $43f2: $29
    ld d, h                                       ; $43f3: $54
    ld e, l                                       ; $43f4: $5d
    add hl, hl                                    ; $43f5: $29
    add hl, hl                                    ; $43f6: $29
    add hl, hl                                    ; $43f7: $29
    add hl, de                                    ; $43f8: $19
    ld d, h                                       ; $43f9: $54
    ld e, l                                       ; $43fa: $5d
    ld hl, $4048                                  ; $43fb: $21 $48 $40
    add hl, de                                    ; $43fe: $19
    ld e, b                                       ; $43ff: $58
    sla e                                         ; $4400: $cb $23
    ld d, $00                                     ; $4402: $16 $00
    add hl, de                                    ; $4404: $19
    ld a, [hl+]                                   ; $4405: $2a
    ld h, [hl]                                    ; $4406: $66
    ld l, a                                       ; $4407: $6f
    pop de                                        ; $4408: $d1
    pop bc                                        ; $4409: $c1
    pop af                                        ; $440a: $f1
    ret                                           ; $440b: $c9


Call_00b_440c:
    push af                                       ; $440c: $f5
    push bc                                       ; $440d: $c5
    push de                                       ; $440e: $d5
    push hl                                       ; $440f: $e5
    ld h, $00                                     ; $4410: $26 $00
    ld l, a                                       ; $4412: $6f
    add hl, hl                                    ; $4413: $29
    ld d, h                                       ; $4414: $54
    ld e, l                                       ; $4415: $5d
    add hl, hl                                    ; $4416: $29
    add hl, hl                                    ; $4417: $29
    add hl, hl                                    ; $4418: $29
    add hl, de                                    ; $4419: $19
    ld d, h                                       ; $441a: $54
    ld e, l                                       ; $441b: $5d
    ld hl, $4048                                  ; $441c: $21 $48 $40
    add hl, de                                    ; $441f: $19
    inc hl                                        ; $4420: $23
    inc hl                                        ; $4421: $23
    ld a, [hl+]                                   ; $4422: $2a
    ld c, a                                       ; $4423: $4f
    ld a, [hl+]                                   ; $4424: $2a
    ld b, a                                       ; $4425: $47
    push bc                                       ; $4426: $c5
    ld a, [hl+]                                   ; $4427: $2a
    ld c, a                                       ; $4428: $4f
    ld a, [hl+]                                   ; $4429: $2a
    ld b, a                                       ; $442a: $47
    push bc                                       ; $442b: $c5
    ld a, [hl+]                                   ; $442c: $2a
    ld c, a                                       ; $442d: $4f
    ld a, [hl+]                                   ; $442e: $2a
    ld b, a                                       ; $442f: $47
    push bc                                       ; $4430: $c5
    ld a, [hl+]                                   ; $4431: $2a
    ld c, a                                       ; $4432: $4f
    ld a, [hl+]                                   ; $4433: $2a
    ld b, a                                       ; $4434: $47
    push bc                                       ; $4435: $c5
    ld a, [hl+]                                   ; $4436: $2a
    ld c, a                                       ; $4437: $4f
    ld a, [hl+]                                   ; $4438: $2a
    ld b, a                                       ; $4439: $47
    push bc                                       ; $443a: $c5
    ld a, [hl+]                                   ; $443b: $2a
    ld c, a                                       ; $443c: $4f
    ld a, [hl+]                                   ; $443d: $2a
    ld b, a                                       ; $443e: $47
    push bc                                       ; $443f: $c5
    ld a, [hl+]                                   ; $4440: $2a
    ld c, a                                       ; $4441: $4f
    ld a, [hl+]                                   ; $4442: $2a
    ld b, a                                       ; $4443: $47
    push bc                                       ; $4444: $c5
    ld a, $01                                     ; $4445: $3e $01
    ldh [$96], a                                  ; $4447: $e0 $96
    ldh [rSVBK], a                                ; $4449: $e0 $70
    ld a, $01                                     ; $444b: $3e $01
    ldh [rVBK], a                                 ; $444d: $e0 $4f
    ld a, [hl+]                                   ; $444f: $2a
    ld h, [hl]                                    ; $4450: $66
    ld l, a                                       ; $4451: $6f
    ld de, $d000                                  ; $4452: $11 $00 $d0
    call Call_000_0234                            ; $4455: $cd $34 $02
    ld hl, $d000                                  ; $4458: $21 $00 $d0
    ld de, $9000                                  ; $445b: $11 $00 $90
    ld bc, $0080                                  ; $445e: $01 $80 $00
    call Call_000_2096                            ; $4461: $cd $96 $20
    ld hl, $d800                                  ; $4464: $21 $00 $d8
    ld de, $8800                                  ; $4467: $11 $00 $88
    ld bc, $0080                                  ; $446a: $01 $80 $00
    call Call_000_2096                            ; $446d: $cd $96 $20
    ld a, $06                                     ; $4470: $3e $06
    ldh [$96], a                                  ; $4472: $e0 $96
    ldh [rSVBK], a                                ; $4474: $e0 $70
    pop hl                                        ; $4476: $e1
    ld de, $d800                                  ; $4477: $11 $00 $d8
    call Call_000_0234                            ; $447a: $cd $34 $02
    pop hl                                        ; $447d: $e1
    pop hl                                        ; $447e: $e1
    ld de, $d400                                  ; $447f: $11 $00 $d4
    call Call_000_0234                            ; $4482: $cd $34 $02
    pop hl                                        ; $4485: $e1
    ld de, $d000                                  ; $4486: $11 $00 $d0
    call Call_000_0234                            ; $4489: $cd $34 $02
    ld a, $02                                     ; $448c: $3e $02
    ldh [$96], a                                  ; $448e: $e0 $96
    ldh [rSVBK], a                                ; $4490: $e0 $70
    pop hl                                        ; $4492: $e1
    ld de, $d000                                  ; $4493: $11 $00 $d0
    call Call_000_0234                            ; $4496: $cd $34 $02
    ld a, $03                                     ; $4499: $3e $03
    ldh [$96], a                                  ; $449b: $e0 $96
    ldh [rSVBK], a                                ; $449d: $e0 $70
    pop hl                                        ; $449f: $e1
    ld de, $d000                                  ; $44a0: $11 $00 $d0
    call Call_000_0234                            ; $44a3: $cd $34 $02
    pop hl                                        ; $44a6: $e1
    ld a, $01                                     ; $44a7: $3e $01
    ldh [$96], a                                  ; $44a9: $e0 $96
    ldh [rSVBK], a                                ; $44ab: $e0 $70
    ld de, $d000                                  ; $44ad: $11 $00 $d0
    ld bc, $0040                                  ; $44b0: $01 $40 $00
    call Call_000_021a                            ; $44b3: $cd $1a $02
    ld hl, $d010                                  ; $44b6: $21 $10 $d0
    ld de, $0206                                  ; $44b9: $11 $06 $02
    call Call_000_0595                            ; $44bc: $cd $95 $05
    pop hl                                        ; $44bf: $e1
    pop de                                        ; $44c0: $d1
    pop bc                                        ; $44c1: $c1
    pop af                                        ; $44c2: $f1
    ret                                           ; $44c3: $c9


Call_00b_44c4:
    push bc                                       ; $44c4: $c5
    push af                                       ; $44c5: $f5
    call Call_000_0341                            ; $44c6: $cd $41 $03
    pop af                                        ; $44c9: $f1
    call Call_00b_440c                            ; $44ca: $cd $0c $44
    ld a, $00                                     ; $44cd: $3e $00
    call Call_00b_43e8                            ; $44cf: $cd $e8 $43
    ld de, $c600                                  ; $44d2: $11 $00 $c6
    ld bc, $0010                                  ; $44d5: $01 $10 $00
    call Call_000_021a                            ; $44d8: $cd $1a $02
    ld hl, $c600                                  ; $44db: $21 $00 $c6
    ld bc, $0002                                  ; $44de: $01 $02 $00
    add hl, bc                                    ; $44e1: $09
    ld a, [hl+]                                   ; $44e2: $2a
    ld [$c329], a                                 ; $44e3: $ea $29 $c3
    ld a, [hl+]                                   ; $44e6: $2a
    ld [$c32a], a                                 ; $44e7: $ea $2a $c3
    ld a, [hl+]                                   ; $44ea: $2a
    ld [$c32b], a                                 ; $44eb: $ea $2b $c3
    ld a, [hl+]                                   ; $44ee: $2a
    ld [$c32c], a                                 ; $44ef: $ea $2c $c3
    pop bc                                        ; $44f2: $c1
    ld a, b                                       ; $44f3: $78
    call Call_00b_4306                            ; $44f4: $cd $06 $43
    call Call_000_0371                            ; $44f7: $cd $71 $03
    call Call_000_2e3b                            ; $44fa: $cd $3b $2e
    call Call_000_2e3b                            ; $44fd: $cd $3b $2e
    ret                                           ; $4500: $c9


Call_00b_4501:
    ldh a, [$94]                                  ; $4501: $f0 $94
    bit 1, a                                      ; $4503: $cb $4f
    ret z                                         ; $4505: $c8

    ld a, [$c32d]                                 ; $4506: $fa $2d $c3
    dec a                                         ; $4509: $3d
    sra a                                         ; $450a: $cb $2f
    sra a                                         ; $450c: $cb $2f
    inc a                                         ; $450e: $3c
    push af                                       ; $450f: $f5
    ld a, [$c32e]                                 ; $4510: $fa $2e $c3
    ld [$c33d], a                                 ; $4513: $ea $3d $c3
    call Call_00b_497d                            ; $4516: $cd $7d $49
    pop af                                        ; $4519: $f1
    ld hl, $0123                                  ; $451a: $21 $23 $01
    rst $18                                       ; $451d: $df
    ld d, b                                       ; $451e: $50
    dec b                                         ; $451f: $05
    ld [$c32e], a                                 ; $4520: $ea $2e $c3
    cp $ff                                        ; $4523: $fe $ff
    jp z, Jump_00b_4533                           ; $4525: $ca $33 $45

    ld b, $01                                     ; $4528: $06 $01
    call Call_00b_44c4                            ; $452a: $cd $c4 $44
    ld a, [$c32e]                                 ; $452d: $fa $2e $c3
    call Call_00b_4900                            ; $4530: $cd $00 $49

Jump_00b_4533:
    ret                                           ; $4533: $c9


    ld hl, $0123                                  ; $4534: $21 $23 $01
    ld d, $01                                     ; $4537: $16 $01
    ld e, $01                                     ; $4539: $1e $01
    rst $18                                       ; $453b: $df
    ld a, [bc]                                    ; $453c: $0a
    dec b                                         ; $453d: $05
    ld a, [$d820]                                 ; $453e: $fa $20 $d8
    ld [$d82f], a                                 ; $4541: $ea $2f $d8
    rst $18                                       ; $4544: $df
    inc e                                         ; $4545: $1c
    dec b                                         ; $4546: $05
    rst $18                                       ; $4547: $df
    inc d                                         ; $4548: $14
    dec b                                         ; $4549: $05

jr_00b_454a:
    call Call_000_2e3b                            ; $454a: $cd $3b $2e
    ldh a, [$90]                                  ; $454d: $f0 $90
    and $02                                       ; $454f: $e6 $02
    jr nz, jr_00b_454a                            ; $4551: $20 $f7

    rst $18                                       ; $4553: $df
    ld c, [hl]                                    ; $4554: $4e
    dec b                                         ; $4555: $05
    ld [$c32e], a                                 ; $4556: $ea $2e $c3
    ld a, [$d82f]                                 ; $4559: $fa $2f $d8
    rst $18                                       ; $455c: $df
    inc c                                         ; $455d: $0c
    dec b                                         ; $455e: $05
    rst $18                                       ; $455f: $df
    inc e                                         ; $4560: $1c
    dec b                                         ; $4561: $05
    rst $18                                       ; $4562: $df
    inc d                                         ; $4563: $14
    dec b                                         ; $4564: $05
    ld a, [$c32e]                                 ; $4565: $fa $2e $c3
    cp $ff                                        ; $4568: $fe $ff
    jp z, Jump_00b_4578                           ; $456a: $ca $78 $45

    ld a, [$c32e]                                 ; $456d: $fa $2e $c3
    ld b, $01                                     ; $4570: $06 $01
    call Call_00b_44c4                            ; $4572: $cd $c4 $44
    rst $18                                       ; $4575: $df
    inc e                                         ; $4576: $1c
    dec b                                         ; $4577: $05

Jump_00b_4578:
    ret                                           ; $4578: $c9


    push af                                       ; $4579: $f5
    push hl                                       ; $457a: $e5
    ld a, [$c32d]                                 ; $457b: $fa $2d $c3
    dec a                                         ; $457e: $3d
    sra a                                         ; $457f: $cb $2f
    sra a                                         ; $4581: $cb $2f
    inc a                                         ; $4583: $3c
    push af                                       ; $4584: $f5
    ld a, [$c32e]                                 ; $4585: $fa $2e $c3
    ld [$c33d], a                                 ; $4588: $ea $3d $c3
    call Call_00b_497d                            ; $458b: $cd $7d $49
    pop af                                        ; $458e: $f1
    ld hl, $0123                                  ; $458f: $21 $23 $01
    rst $18                                       ; $4592: $df
    ld d, b                                       ; $4593: $50
    dec b                                         ; $4594: $05
    ld [$c32e], a                                 ; $4595: $ea $2e $c3
    cp $ff                                        ; $4598: $fe $ff
    jp z, Jump_00b_45a8                           ; $459a: $ca $a8 $45

    ld b, $01                                     ; $459d: $06 $01
    call Call_00b_44c4                            ; $459f: $cd $c4 $44
    ld a, [$c32e]                                 ; $45a2: $fa $2e $c3
    call Call_00b_4900                            ; $45a5: $cd $00 $49

Jump_00b_45a8:
    pop hl                                        ; $45a8: $e1
    pop af                                        ; $45a9: $f1
    ret                                           ; $45aa: $c9


Call_00b_45ab:
    push bc                                       ; $45ab: $c5
    push de                                       ; $45ac: $d5
    sra d                                         ; $45ad: $cb $2a
    sla d                                         ; $45af: $cb $22
    sra e                                         ; $45b1: $cb $2b
    sla e                                         ; $45b3: $cb $23
    ld h, $00                                     ; $45b5: $26 $00
    ld l, e                                       ; $45b7: $6b
    add hl, hl                                    ; $45b8: $29
    add hl, hl                                    ; $45b9: $29
    add hl, hl                                    ; $45ba: $29
    add hl, hl                                    ; $45bb: $29
    ld b, $00                                     ; $45bc: $06 $00
    ld c, d                                       ; $45be: $4a
    sra c                                         ; $45bf: $cb $29
    add hl, bc                                    ; $45c1: $09
    ld bc, $d000                                  ; $45c2: $01 $00 $d0
    add hl, bc                                    ; $45c5: $09
    pop de                                        ; $45c6: $d1
    pop bc                                        ; $45c7: $c1
    ret                                           ; $45c8: $c9


    push bc                                       ; $45c9: $c5
    push de                                       ; $45ca: $d5
    push hl                                       ; $45cb: $e5
    call Call_00b_45ab                            ; $45cc: $cd $ab $45
    ldh a, [$96]                                  ; $45cf: $f0 $96
    push af                                       ; $45d1: $f5
    ld a, $06                                     ; $45d2: $3e $06
    ldh [$96], a                                  ; $45d4: $e0 $96
    ldh [rSVBK], a                                ; $45d6: $e0 $70
    ld b, [hl]                                    ; $45d8: $46
    pop af                                        ; $45d9: $f1
    ldh [$96], a                                  ; $45da: $e0 $96
    ldh [rSVBK], a                                ; $45dc: $e0 $70
    ld a, b                                       ; $45de: $78
    pop hl                                        ; $45df: $e1
    pop de                                        ; $45e0: $d1
    pop bc                                        ; $45e1: $c1
    ret                                           ; $45e2: $c9


    push af                                       ; $45e3: $f5
    push bc                                       ; $45e4: $c5
    push de                                       ; $45e5: $d5
    push hl                                       ; $45e6: $e5
    call Call_00b_45ab                            ; $45e7: $cd $ab $45
    ld b, a                                       ; $45ea: $47
    ldh a, [$96]                                  ; $45eb: $f0 $96
    push af                                       ; $45ed: $f5
    ld a, $06                                     ; $45ee: $3e $06
    ldh [$96], a                                  ; $45f0: $e0 $96
    ldh [rSVBK], a                                ; $45f2: $e0 $70
    ld [hl], b                                    ; $45f4: $70
    pop af                                        ; $45f5: $f1
    ldh [$96], a                                  ; $45f6: $e0 $96
    ldh [rSVBK], a                                ; $45f8: $e0 $70
    pop hl                                        ; $45fa: $e1
    pop de                                        ; $45fb: $d1
    pop bc                                        ; $45fc: $c1
    pop af                                        ; $45fd: $f1
    ret                                           ; $45fe: $c9


Call_00b_45ff:
    push bc                                       ; $45ff: $c5
    push de                                       ; $4600: $d5
    sra d                                         ; $4601: $cb $2a
    sla d                                         ; $4603: $cb $22
    sra e                                         ; $4605: $cb $2b
    sla e                                         ; $4607: $cb $23
    ld h, $00                                     ; $4609: $26 $00
    ld l, e                                       ; $460b: $6b
    add hl, hl                                    ; $460c: $29
    add hl, hl                                    ; $460d: $29
    add hl, hl                                    ; $460e: $29
    add hl, hl                                    ; $460f: $29
    ld b, $00                                     ; $4610: $06 $00
    ld c, d                                       ; $4612: $4a
    sra c                                         ; $4613: $cb $29
    add hl, bc                                    ; $4615: $09
    ld bc, $d400                                  ; $4616: $01 $00 $d4
    add hl, bc                                    ; $4619: $09
    pop de                                        ; $461a: $d1
    pop bc                                        ; $461b: $c1
    ret                                           ; $461c: $c9


    push bc                                       ; $461d: $c5
    push de                                       ; $461e: $d5
    push hl                                       ; $461f: $e5
    call Call_00b_45ff                            ; $4620: $cd $ff $45
    ldh a, [$96]                                  ; $4623: $f0 $96
    push af                                       ; $4625: $f5
    ld a, $06                                     ; $4626: $3e $06
    ldh [$96], a                                  ; $4628: $e0 $96
    ldh [rSVBK], a                                ; $462a: $e0 $70
    ld b, [hl]                                    ; $462c: $46
    pop af                                        ; $462d: $f1
    ldh [$96], a                                  ; $462e: $e0 $96
    ldh [rSVBK], a                                ; $4630: $e0 $70
    ld a, b                                       ; $4632: $78
    pop hl                                        ; $4633: $e1
    pop de                                        ; $4634: $d1
    pop bc                                        ; $4635: $c1
    ret                                           ; $4636: $c9


    push af                                       ; $4637: $f5
    push bc                                       ; $4638: $c5
    push de                                       ; $4639: $d5
    push hl                                       ; $463a: $e5
    call Call_00b_45ff                            ; $463b: $cd $ff $45
    ld b, a                                       ; $463e: $47
    ldh a, [$96]                                  ; $463f: $f0 $96
    push af                                       ; $4641: $f5
    ld a, $06                                     ; $4642: $3e $06
    ldh [$96], a                                  ; $4644: $e0 $96
    ldh [rSVBK], a                                ; $4646: $e0 $70
    ld [hl], b                                    ; $4648: $70
    pop af                                        ; $4649: $f1
    ldh [$96], a                                  ; $464a: $e0 $96
    ldh [rSVBK], a                                ; $464c: $e0 $70
    pop hl                                        ; $464e: $e1
    pop de                                        ; $464f: $d1
    pop bc                                        ; $4650: $c1
    pop af                                        ; $4651: $f1
    ret                                           ; $4652: $c9


    push af                                       ; $4653: $f5
    push bc                                       ; $4654: $c5
    push de                                       ; $4655: $d5
    push hl                                       ; $4656: $e5
    ldh a, [$96]                                  ; $4657: $f0 $96
    push af                                       ; $4659: $f5
    sra h                                         ; $465a: $cb $2c
    sra l                                         ; $465c: $cb $2d
    push hl                                       ; $465e: $e5
    call Call_00b_45ab                            ; $465f: $cd $ab $45
    push hl                                       ; $4662: $e5
    ld d, b                                       ; $4663: $50
    ld e, c                                       ; $4664: $59
    call Call_00b_45ab                            ; $4665: $cd $ab $45
    pop de                                        ; $4668: $d1
    pop bc                                        ; $4669: $c1
    ld a, $06                                     ; $466a: $3e $06
    ldh [$96], a                                  ; $466c: $e0 $96
    ldh [rSVBK], a                                ; $466e: $e0 $70
    ld a, c                                       ; $4670: $79
    ld c, b                                       ; $4671: $48
    ld b, $00                                     ; $4672: $06 $00

jr_00b_4674:
    push af                                       ; $4674: $f5
    push bc                                       ; $4675: $c5
    push de                                       ; $4676: $d5
    push hl                                       ; $4677: $e5
    call MemCopy                            ; $4678: $cd $d3 $03
    pop hl                                        ; $467b: $e1
    pop de                                        ; $467c: $d1
    pop bc                                        ; $467d: $c1
    pop af                                        ; $467e: $f1
    push bc                                       ; $467f: $c5
    ld bc, $0020                                  ; $4680: $01 $20 $00
    push hl                                       ; $4683: $e5
    ld h, d                                       ; $4684: $62
    ld l, e                                       ; $4685: $6b
    add hl, bc                                    ; $4686: $09
    ld d, h                                       ; $4687: $54
    ld e, l                                       ; $4688: $5d
    pop hl                                        ; $4689: $e1
    add hl, bc                                    ; $468a: $09
    pop bc                                        ; $468b: $c1
    dec a                                         ; $468c: $3d
    jr nz, jr_00b_4674                            ; $468d: $20 $e5

    pop af                                        ; $468f: $f1
    ldh [$96], a                                  ; $4690: $e0 $96
    ldh [rSVBK], a                                ; $4692: $e0 $70
    pop hl                                        ; $4694: $e1
    pop de                                        ; $4695: $d1
    pop bc                                        ; $4696: $c1
    pop af                                        ; $4697: $f1
    ret                                           ; $4698: $c9


    push af                                       ; $4699: $f5
    push bc                                       ; $469a: $c5
    push de                                       ; $469b: $d5
    push hl                                       ; $469c: $e5
    ldh a, [$96]                                  ; $469d: $f0 $96
    push af                                       ; $469f: $f5
    sra h                                         ; $46a0: $cb $2c
    sra l                                         ; $46a2: $cb $2d
    push hl                                       ; $46a4: $e5
    call Call_00b_45ff                            ; $46a5: $cd $ff $45
    push hl                                       ; $46a8: $e5
    ld d, b                                       ; $46a9: $50
    ld e, c                                       ; $46aa: $59
    call Call_00b_45ff                            ; $46ab: $cd $ff $45
    pop de                                        ; $46ae: $d1
    pop bc                                        ; $46af: $c1
    ld a, $06                                     ; $46b0: $3e $06
    ldh [$96], a                                  ; $46b2: $e0 $96
    ldh [rSVBK], a                                ; $46b4: $e0 $70
    ld a, c                                       ; $46b6: $79
    ld c, b                                       ; $46b7: $48
    ld b, $00                                     ; $46b8: $06 $00

jr_00b_46ba:
    push af                                       ; $46ba: $f5
    push bc                                       ; $46bb: $c5
    push de                                       ; $46bc: $d5
    push hl                                       ; $46bd: $e5
    call MemCopy                            ; $46be: $cd $d3 $03
    pop hl                                        ; $46c1: $e1
    pop de                                        ; $46c2: $d1
    pop bc                                        ; $46c3: $c1
    pop af                                        ; $46c4: $f1
    push bc                                       ; $46c5: $c5
    ld bc, $0020                                  ; $46c6: $01 $20 $00
    push hl                                       ; $46c9: $e5
    ld h, d                                       ; $46ca: $62
    ld l, e                                       ; $46cb: $6b
    add hl, bc                                    ; $46cc: $09
    ld d, h                                       ; $46cd: $54
    ld e, l                                       ; $46ce: $5d
    pop hl                                        ; $46cf: $e1
    add hl, bc                                    ; $46d0: $09
    pop bc                                        ; $46d1: $c1
    dec a                                         ; $46d2: $3d
    jr nz, jr_00b_46ba                            ; $46d3: $20 $e5

    pop af                                        ; $46d5: $f1
    ldh [$96], a                                  ; $46d6: $e0 $96
    ldh [rSVBK], a                                ; $46d8: $e0 $70
    pop hl                                        ; $46da: $e1
    pop de                                        ; $46db: $d1
    pop bc                                        ; $46dc: $c1
    pop af                                        ; $46dd: $f1
    ret                                           ; $46de: $c9


    push af                                       ; $46df: $f5
    push bc                                       ; $46e0: $c5
    push de                                       ; $46e1: $d5
    push hl                                       ; $46e2: $e5
    push af                                       ; $46e3: $f5
    and $7f                                       ; $46e4: $e6 $7f
    ld [$c32e], a                                 ; $46e6: $ea $2e $c3
    xor a                                         ; $46e9: $af
    ldh [$8a], a                                  ; $46ea: $e0 $8a
    ldh [$8b], a                                  ; $46ec: $e0 $8b
    dec a                                         ; $46ee: $3d
    ld [$c33d], a                                 ; $46ef: $ea $3d $c3
    ld hl, $4048                                  ; $46f2: $21 $48 $40
    ld bc, $ffff                                  ; $46f5: $01 $ff $ff

jr_00b_46f8:
    inc bc                                        ; $46f8: $03
    ld a, [hl+]                                   ; $46f9: $2a
    ld d, a                                       ; $46fa: $57
    ld a, [hl+]                                   ; $46fb: $2a
    or d                                          ; $46fc: $b2
    jr nz, jr_00b_46f8                            ; $46fd: $20 $f9

    ld h, b                                       ; $46ff: $60
    ld l, c                                       ; $4700: $69
    ld de, $0009                                  ; $4701: $11 $09 $00
    call Call_000_09ae                            ; $4704: $cd $ae $09
    ld a, l                                       ; $4707: $7d
    ld [$c32d], a                                 ; $4708: $ea $2d $c3
    pop af                                        ; $470b: $f1
    bit 7, a                                      ; $470c: $cb $7f
    jr nz, jr_00b_4717                            ; $470e: $20 $07

    and $7f                                       ; $4710: $e6 $7f
    ld b, $00                                     ; $4712: $06 $00
    call Call_00b_44c4                            ; $4714: $cd $c4 $44

jr_00b_4717:
    xor a                                         ; $4717: $af
    ldh [$b9], a                                  ; $4718: $e0 $b9
    ldh [$b8], a                                  ; $471a: $e0 $b8
    rst $18                                       ; $471c: $df

    db $00, $05

    ld a, $01                                     ; $471f: $3e $01
    ld hl, $4784                                  ; $4721: $21 $84 $47
    call Call_000_23e8                            ; $4724: $cd $e8 $23
    ld a, [$c32e]                                 ; $4727: $fa $2e $c3
    call Call_00b_4900                            ; $472a: $cd $00 $49
    pop hl                                        ; $472d: $e1
    pop de                                        ; $472e: $d1
    pop bc                                        ; $472f: $c1
    pop af                                        ; $4730: $f1
    ret                                           ; $4731: $c9


    ld hl, $4784                                  ; $4732: $21 $84 $47
    call Call_000_2449                            ; $4735: $cd $49 $24
    ret                                           ; $4738: $c9


Call_00b_4739:
    push af                                       ; $4739: $f5
    push bc                                       ; $473a: $c5
    push de                                       ; $473b: $d5
    push hl                                       ; $473c: $e5
    xor a                                         ; $473d: $af
    ldh [$8a], a                                  ; $473e: $e0 $8a
    ldh [$8b], a                                  ; $4740: $e0 $8b
    ld hl, $4048                                  ; $4742: $21 $48 $40
    ld bc, $ffff                                  ; $4745: $01 $ff $ff

jr_00b_4748:
    inc c                                         ; $4748: $0c
    ld a, [hl+]                                   ; $4749: $2a
    ld d, a                                       ; $474a: $57
    ld a, [hl+]                                   ; $474b: $2a
    or d                                          ; $474c: $b2
    jr nz, jr_00b_4748                            ; $474d: $20 $f9

    ld h, b                                       ; $474f: $60
    ld l, c                                       ; $4750: $69
    ld de, $0009                                  ; $4751: $11 $09 $00
    call Call_000_09ae                            ; $4754: $cd $ae $09
    ld a, l                                       ; $4757: $7d
    ld [$c32d], a                                 ; $4758: $ea $2d $c3
    ld a, $00                                     ; $475b: $3e $00
    ld [$c32e], a                                 ; $475d: $ea $2e $c3
    ld b, $00                                     ; $4760: $06 $00
    call Call_00b_44c4                            ; $4762: $cd $c4 $44
    rst $18                                       ; $4765: $df
    nop                                           ; $4766: $00
    dec b                                         ; $4767: $05
    rst $18                                       ; $4768: $df
    inc e                                         ; $4769: $1c
    dec b                                         ; $476a: $05
    ld a, [$c32e]                                 ; $476b: $fa $2e $c3
    call Call_00b_4900                            ; $476e: $cd $00 $49
    pop hl                                        ; $4771: $e1
    pop de                                        ; $4772: $d1
    pop bc                                        ; $4773: $c1
    pop af                                        ; $4774: $f1
    ret                                           ; $4775: $c9


    call Call_00b_4739                            ; $4776: $cd $39 $47

jr_00b_4779:
    call Call_00b_4788                            ; $4779: $cd $88 $47
    call Call_00b_4501                            ; $477c: $cd $01 $45
    call Call_000_2e3b                            ; $477f: $cd $3b $2e
    jr jr_00b_4779                                ; $4782: $18 $f5

    rst $18                                       ; $4784: $df

    db $3c, $04

    ret                                           ; $4787: $c9


Call_00b_4788:
    ld a, [$c321]                                 ; $4788: $fa $21 $c3
    push af                                       ; $478b: $f5
    ld a, [$c323]                                 ; $478c: $fa $23 $c3
    push af                                       ; $478f: $f5
    call Call_00b_4826                            ; $4790: $cd $26 $48
    pop hl                                        ; $4793: $e1
    ld a, [$c323]                                 ; $4794: $fa $23 $c3
    cp h                                          ; $4797: $bc
    jr z, jr_00b_47aa                             ; $4798: $28 $10

    jr c, jr_00b_47a4                             ; $479a: $38 $08

    ld bc, $fb13                                  ; $479c: $01 $13 $fb
    call Call_000_2a8a                            ; $479f: $cd $8a $2a
    jr jr_00b_47aa                                ; $47a2: $18 $06

jr_00b_47a4:
    ld bc, $fb00                                  ; $47a4: $01 $00 $fb
    call Call_000_2a8a                            ; $47a7: $cd $8a $2a

jr_00b_47aa:
    pop hl                                        ; $47aa: $e1
    ld a, [$c321]                                 ; $47ab: $fa $21 $c3
    cp h                                          ; $47ae: $bc
    jr z, jr_00b_47c1                             ; $47af: $28 $10

    jr c, jr_00b_47bb                             ; $47b1: $38 $08

    ld bc, $15fa                                  ; $47b3: $01 $fa $15
    call Call_000_2af7                            ; $47b6: $cd $f7 $2a
    jr jr_00b_47c1                                ; $47b9: $18 $06

jr_00b_47bb:
    ld bc, $00fa                                  ; $47bb: $01 $fa $00
    call Call_000_2af7                            ; $47be: $cd $f7 $2a

jr_00b_47c1:
    ld a, [$c322]                                 ; $47c1: $fa $22 $c3
    ld c, a                                       ; $47c4: $4f
    ld a, [$c323]                                 ; $47c5: $fa $23 $c3
    sla c                                         ; $47c8: $cb $21
    rla                                           ; $47ca: $17
    sla c                                         ; $47cb: $cb $21
    rla                                           ; $47cd: $17
    sla c                                         ; $47ce: $cb $21
    rla                                           ; $47d0: $17
    ldh [$8a], a                                  ; $47d1: $e0 $8a
    ld a, [$c320]                                 ; $47d3: $fa $20 $c3
    ld c, a                                       ; $47d6: $4f
    ld a, [$c321]                                 ; $47d7: $fa $21 $c3
    sla c                                         ; $47da: $cb $21
    rla                                           ; $47dc: $17
    sla c                                         ; $47dd: $cb $21
    rla                                           ; $47df: $17
    sla c                                         ; $47e0: $cb $21
    rla                                           ; $47e2: $17
    ldh [$8b], a                                  ; $47e3: $e0 $8b
    ret                                           ; $47e5: $c9


    nop                                           ; $47e6: $00
    nop                                           ; $47e7: $00
    nop                                           ; $47e8: $00
    nop                                           ; $47e9: $00
    ld b, b                                       ; $47ea: $40
    nop                                           ; $47eb: $00
    nop                                           ; $47ec: $00
    nop                                           ; $47ed: $00
    ret nz                                        ; $47ee: $c0

    rst $38                                       ; $47ef: $ff
    nop                                           ; $47f0: $00
    nop                                           ; $47f1: $00
    nop                                           ; $47f2: $00
    nop                                           ; $47f3: $00
    nop                                           ; $47f4: $00
    nop                                           ; $47f5: $00
    nop                                           ; $47f6: $00
    nop                                           ; $47f7: $00
    ret nz                                        ; $47f8: $c0

    rst $38                                       ; $47f9: $ff
    dec l                                         ; $47fa: $2d
    nop                                           ; $47fb: $00
    db $d3                                        ; $47fc: $d3
    rst $38                                       ; $47fd: $ff
    db $d3                                        ; $47fe: $d3
    rst $38                                       ; $47ff: $ff
    db $d3                                        ; $4800: $d3
    rst $38                                       ; $4801: $ff
    nop                                           ; $4802: $00
    nop                                           ; $4803: $00
    ret nz                                        ; $4804: $c0

    rst $38                                       ; $4805: $ff
    nop                                           ; $4806: $00
    nop                                           ; $4807: $00
    ld b, b                                       ; $4808: $40
    nop                                           ; $4809: $00
    dec l                                         ; $480a: $2d
    nop                                           ; $480b: $00
    dec l                                         ; $480c: $2d
    nop                                           ; $480d: $00
    db $d3                                        ; $480e: $d3
    rst $38                                       ; $480f: $ff
    dec l                                         ; $4810: $2d
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    nop                                           ; $4813: $00
    ld b, b                                       ; $4814: $40
    nop                                           ; $4815: $00
    nop                                           ; $4816: $00
    nop                                           ; $4817: $00
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    ld b, b                                       ; $481a: $40
    nop                                           ; $481b: $00
    nop                                           ; $481c: $00
    nop                                           ; $481d: $00
    ret nz                                        ; $481e: $c0

    rst $38                                       ; $481f: $ff
    nop                                           ; $4820: $00
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00

Call_00b_4826:
    ldh a, [$90]                                  ; $4826: $f0 $90
    rra                                           ; $4828: $1f
    rra                                           ; $4829: $1f
    and $3c                                       ; $482a: $e6 $3c
    ld hl, $47e6                                  ; $482c: $21 $e6 $47
    ld d, $00                                     ; $482f: $16 $00
    ld e, a                                       ; $4831: $5f
    add hl, de                                    ; $4832: $19
    ld d, h                                       ; $4833: $54
    ld e, l                                       ; $4834: $5d
    ld a, [$c320]                                 ; $4835: $fa $20 $c3
    ld l, a                                       ; $4838: $6f
    ld a, [$c321]                                 ; $4839: $fa $21 $c3
    ld h, a                                       ; $483c: $67
    ld a, [de]                                    ; $483d: $1a
    ld c, a                                       ; $483e: $4f
    inc de                                        ; $483f: $13
    ld a, [de]                                    ; $4840: $1a
    ld b, a                                       ; $4841: $47
    inc de                                        ; $4842: $13
    add hl, bc                                    ; $4843: $09
    ld a, l                                       ; $4844: $7d
    ld [$c320], a                                 ; $4845: $ea $20 $c3
    ld a, h                                       ; $4848: $7c
    ld [$c321], a                                 ; $4849: $ea $21 $c3
    ld a, [$c322]                                 ; $484c: $fa $22 $c3
    ld l, a                                       ; $484f: $6f
    ld a, [$c323]                                 ; $4850: $fa $23 $c3
    ld h, a                                       ; $4853: $67
    ld a, [de]                                    ; $4854: $1a
    ld c, a                                       ; $4855: $4f
    inc de                                        ; $4856: $13
    ld a, [de]                                    ; $4857: $1a
    ld b, a                                       ; $4858: $47
    inc de                                        ; $4859: $13
    add hl, bc                                    ; $485a: $09
    ld a, l                                       ; $485b: $7d
    ld [$c322], a                                 ; $485c: $ea $22 $c3
    ld a, h                                       ; $485f: $7c
    ld [$c323], a                                 ; $4860: $ea $23 $c3
    ret                                           ; $4863: $c9


    push af                                       ; $4864: $f5
    push bc                                       ; $4865: $c5
    push de                                       ; $4866: $d5
    push hl                                       ; $4867: $e5
    ldh a, [$96]                                  ; $4868: $f0 $96
    push af                                       ; $486a: $f5
    push de                                       ; $486b: $d5
    push hl                                       ; $486c: $e5
    push hl                                       ; $486d: $e5
    ld h, d                                       ; $486e: $62
    ld l, e                                       ; $486f: $6b
    call Call_00b_48ea                            ; $4870: $cd $ea $48
    ld d, h                                       ; $4873: $54
    ld e, l                                       ; $4874: $5d
    ld h, b                                       ; $4875: $60
    ld l, c                                       ; $4876: $69
    call Call_00b_48ea                            ; $4877: $cd $ea $48
    pop bc                                        ; $487a: $c1
    push hl                                       ; $487b: $e5
    push de                                       ; $487c: $d5
    push bc                                       ; $487d: $c5
    ld a, $02                                     ; $487e: $3e $02
    ldh [$96], a                                  ; $4880: $e0 $96
    ldh [rSVBK], a                                ; $4882: $e0 $70
    ld a, c                                       ; $4884: $79
    ld c, b                                       ; $4885: $48
    ld b, $00                                     ; $4886: $06 $00

jr_00b_4888:
    push af                                       ; $4888: $f5
    push bc                                       ; $4889: $c5
    push de                                       ; $488a: $d5
    push hl                                       ; $488b: $e5
    call MemCopy                            ; $488c: $cd $d3 $03
    pop hl                                        ; $488f: $e1
    pop de                                        ; $4890: $d1
    pop bc                                        ; $4891: $c1
    pop af                                        ; $4892: $f1
    push bc                                       ; $4893: $c5
    ld bc, $0040                                  ; $4894: $01 $40 $00
    push hl                                       ; $4897: $e5
    ld h, d                                       ; $4898: $62
    ld l, e                                       ; $4899: $6b
    add hl, bc                                    ; $489a: $09
    ld d, h                                       ; $489b: $54
    ld e, l                                       ; $489c: $5d
    pop hl                                        ; $489d: $e1
    add hl, bc                                    ; $489e: $09
    pop bc                                        ; $489f: $c1
    dec a                                         ; $48a0: $3d
    jr nz, jr_00b_4888                            ; $48a1: $20 $e5

    pop bc                                        ; $48a3: $c1
    pop de                                        ; $48a4: $d1
    pop hl                                        ; $48a5: $e1
    ld a, $03                                     ; $48a6: $3e $03
    ldh [$96], a                                  ; $48a8: $e0 $96
    ldh [rSVBK], a                                ; $48aa: $e0 $70
    ld a, c                                       ; $48ac: $79
    ld c, b                                       ; $48ad: $48
    ld b, $00                                     ; $48ae: $06 $00

jr_00b_48b0:
    push af                                       ; $48b0: $f5
    push bc                                       ; $48b1: $c5
    push de                                       ; $48b2: $d5
    push hl                                       ; $48b3: $e5
    call MemCopy                            ; $48b4: $cd $d3 $03
    pop hl                                        ; $48b7: $e1
    pop de                                        ; $48b8: $d1
    pop bc                                        ; $48b9: $c1
    pop af                                        ; $48ba: $f1
    push bc                                       ; $48bb: $c5
    ld bc, $0040                                  ; $48bc: $01 $40 $00
    push hl                                       ; $48bf: $e5
    ld h, d                                       ; $48c0: $62
    ld l, e                                       ; $48c1: $6b
    add hl, bc                                    ; $48c2: $09
    ld d, h                                       ; $48c3: $54
    ld e, l                                       ; $48c4: $5d
    pop hl                                        ; $48c5: $e1
    add hl, bc                                    ; $48c6: $09
    pop bc                                        ; $48c7: $c1
    dec a                                         ; $48c8: $3d
    jr nz, jr_00b_48b0                            ; $48c9: $20 $e5

    pop hl                                        ; $48cb: $e1
    pop de                                        ; $48cc: $d1
    ld a, $05                                     ; $48cd: $3e $05
    ldh [$96], a                                  ; $48cf: $e0 $96
    ldh [rSVBK], a                                ; $48d1: $e0 $70
    rst $18                                       ; $48d3: $df
    inc e                                         ; $48d4: $1c
    dec b                                         ; $48d5: $05
    ld a, e                                       ; $48d6: $7b
    ld c, l                                       ; $48d7: $4d
    call Call_000_2e3b                            ; $48d8: $cd $3b $2e
    ld b, $05                                     ; $48db: $06 $05
    rst $18                                       ; $48dd: $df
    jr z, jr_00b_48e5                             ; $48de: $28 $05

    pop af                                        ; $48e0: $f1
    ldh [$96], a                                  ; $48e1: $e0 $96
    ldh [rSVBK], a                                ; $48e3: $e0 $70

jr_00b_48e5:
    pop hl                                        ; $48e5: $e1
    pop de                                        ; $48e6: $d1
    pop bc                                        ; $48e7: $c1
    pop af                                        ; $48e8: $f1
    ret                                           ; $48e9: $c9


Call_00b_48ea:
    push bc                                       ; $48ea: $c5
    ld c, $00                                     ; $48eb: $0e $00
    ld b, l                                       ; $48ed: $45
    sra b                                         ; $48ee: $cb $28
    rr c                                          ; $48f0: $cb $19
    sra b                                         ; $48f2: $cb $28
    rr c                                          ; $48f4: $cb $19
    ld l, h                                       ; $48f6: $6c
    ld h, $00                                     ; $48f7: $26 $00
    add hl, bc                                    ; $48f9: $09
    ld bc, $d000                                  ; $48fa: $01 $00 $d0
    add hl, bc                                    ; $48fd: $09
    pop bc                                        ; $48fe: $c1
    ret                                           ; $48ff: $c9


Call_00b_4900:
    push af                                       ; $4900: $f5
    push bc                                       ; $4901: $c5
    push de                                       ; $4902: $d5
    push hl                                       ; $4903: $e5
    ld l, a                                       ; $4904: $6f
    ld h, $00                                     ; $4905: $26 $00
    add hl, hl                                    ; $4907: $29
    ld bc, $42c0                                  ; $4908: $01 $c0 $42
    add hl, bc                                    ; $490b: $09
    ld a, [hl+]                                   ; $490c: $2a
    ld b, a                                       ; $490d: $47
    ld a, [hl]                                    ; $490e: $7e
    cp $00                                        ; $490f: $fe $00
    jr nz, jr_00b_491a                            ; $4911: $20 $07

    ld a, b                                       ; $4913: $78
    rst $18                                       ; $4914: $df

    db $00, $28

    jp Jump_00b_4978                              ; $4917: $c3 $78 $49


jr_00b_491a:
    cp $01                                        ; $491a: $fe $01
    jr nz, jr_00b_4924                            ; $491c: $20 $06

    ld a, b                                       ; $491e: $78
    rst $18                                       ; $491f: $df
    nop                                           ; $4920: $00
    add hl, hl                                    ; $4921: $29
    jr jr_00b_4978                                ; $4922: $18 $54

jr_00b_4924:
    cp $02                                        ; $4924: $fe $02
    jr nz, jr_00b_492e                            ; $4926: $20 $06

    ld a, b                                       ; $4928: $78
    rst $18                                       ; $4929: $df
    nop                                           ; $492a: $00
    ld a, [hl+]                                   ; $492b: $2a
    jr jr_00b_4978                                ; $492c: $18 $4a

jr_00b_492e:
    cp $03                                        ; $492e: $fe $03
    jr nz, jr_00b_4938                            ; $4930: $20 $06

    ld a, b                                       ; $4932: $78
    rst $18                                       ; $4933: $df
    nop                                           ; $4934: $00
    dec hl                                        ; $4935: $2b
    jr jr_00b_4978                                ; $4936: $18 $40

jr_00b_4938:
    cp $04                                        ; $4938: $fe $04
    jr nz, jr_00b_4942                            ; $493a: $20 $06

    ld a, b                                       ; $493c: $78
    rst $18                                       ; $493d: $df
    nop                                           ; $493e: $00
    inc l                                         ; $493f: $2c
    jr jr_00b_4978                                ; $4940: $18 $36

jr_00b_4942:
    cp $05                                        ; $4942: $fe $05
    jr nz, jr_00b_494c                            ; $4944: $20 $06

    ld a, b                                       ; $4946: $78
    rst $18                                       ; $4947: $df
    nop                                           ; $4948: $00
    dec l                                         ; $4949: $2d
    jr jr_00b_4978                                ; $494a: $18 $2c

jr_00b_494c:
    cp $06                                        ; $494c: $fe $06
    jr nz, jr_00b_4956                            ; $494e: $20 $06

    ld a, b                                       ; $4950: $78
    rst $18                                       ; $4951: $df
    nop                                           ; $4952: $00
    ld l, $18                                     ; $4953: $2e $18
    ld [hl+], a                                   ; $4955: $22

jr_00b_4956:
    cp $07                                        ; $4956: $fe $07
    jr nz, jr_00b_4960                            ; $4958: $20 $06

    ld a, b                                       ; $495a: $78
    rst $18                                       ; $495b: $df
    nop                                           ; $495c: $00
    cpl                                           ; $495d: $2f
    jr jr_00b_4978                                ; $495e: $18 $18

jr_00b_4960:
    cp $08                                        ; $4960: $fe $08
    jr nz, jr_00b_496a                            ; $4962: $20 $06

    ld a, b                                       ; $4964: $78
    rst $18                                       ; $4965: $df
    nop                                           ; $4966: $00
    ld [hl], d                                    ; $4967: $72
    jr jr_00b_4978                                ; $4968: $18 $0e

jr_00b_496a:
    cp $09                                        ; $496a: $fe $09
    jr nz, jr_00b_4974                            ; $496c: $20 $06

    ld a, b                                       ; $496e: $78
    rst $18                                       ; $496f: $df

    db $00, $73

    jr jr_00b_4978                                ; $4972: $18 $04

jr_00b_4974:
    ld a, b                                       ; $4974: $78
    rst $18                                       ; $4975: $df

    db $00, $74

Jump_00b_4978:
jr_00b_4978:
    pop hl                                        ; $4978: $e1
    pop de                                        ; $4979: $d1
    pop bc                                        ; $497a: $c1
    pop af                                        ; $497b: $f1
    ret                                           ; $497c: $c9


Call_00b_497d:
    push af                                       ; $497d: $f5
    push bc                                       ; $497e: $c5
    push de                                       ; $497f: $d5
    push hl                                       ; $4980: $e5
    ld l, a                                       ; $4981: $6f
    ld h, $00                                     ; $4982: $26 $00
    add hl, hl                                    ; $4984: $29
    ld bc, $42c0                                  ; $4985: $01 $c0 $42
    add hl, bc                                    ; $4988: $09
    ld a, [hl+]                                   ; $4989: $2a
    ld b, a                                       ; $498a: $47
    ld a, [hl]                                    ; $498b: $7e
    cp $00                                        ; $498c: $fe $00
    jr nz, jr_00b_4995                            ; $498e: $20 $05

    rst $18                                       ; $4990: $df
    ld [bc], a                                    ; $4991: $02
    jr z, jr_00b_49ac                             ; $4992: $28 $18

    add hl, sp                                    ; $4994: $39

jr_00b_4995:
    cp $01                                        ; $4995: $fe $01
    jr nz, jr_00b_499e                            ; $4997: $20 $05

    rst $18                                       ; $4999: $df
    ld [bc], a                                    ; $499a: $02
    add hl, hl                                    ; $499b: $29
    jr jr_00b_49ce                                ; $499c: $18 $30

jr_00b_499e:
    cp $02                                        ; $499e: $fe $02
    jr nz, jr_00b_49a7                            ; $49a0: $20 $05

    rst $18                                       ; $49a2: $df
    ld [bc], a                                    ; $49a3: $02
    ld a, [hl+]                                   ; $49a4: $2a
    jr jr_00b_49ce                                ; $49a5: $18 $27

jr_00b_49a7:
    cp $03                                        ; $49a7: $fe $03
    jr nz, jr_00b_49b0                            ; $49a9: $20 $05

    rst $18                                       ; $49ab: $df

jr_00b_49ac:
    ld [bc], a                                    ; $49ac: $02
    dec hl                                        ; $49ad: $2b
    jr jr_00b_49ce                                ; $49ae: $18 $1e

jr_00b_49b0:
    cp $04                                        ; $49b0: $fe $04
    jr nz, jr_00b_49b9                            ; $49b2: $20 $05

    rst $18                                       ; $49b4: $df
    ld [bc], a                                    ; $49b5: $02
    inc l                                         ; $49b6: $2c
    jr jr_00b_49ce                                ; $49b7: $18 $15

jr_00b_49b9:
    cp $05                                        ; $49b9: $fe $05
    jr nz, jr_00b_49c2                            ; $49bb: $20 $05

    rst $18                                       ; $49bd: $df
    ld [bc], a                                    ; $49be: $02
    dec l                                         ; $49bf: $2d
    jr jr_00b_49ce                                ; $49c0: $18 $0c

jr_00b_49c2:
    cp $06                                        ; $49c2: $fe $06
    jr nz, jr_00b_49cb                            ; $49c4: $20 $05

    rst $18                                       ; $49c6: $df
    ld [bc], a                                    ; $49c7: $02
    ld l, $18                                     ; $49c8: $2e $18
    inc bc                                        ; $49ca: $03

jr_00b_49cb:
    rst $18                                       ; $49cb: $df
    ld [bc], a                                    ; $49cc: $02
    cpl                                           ; $49cd: $2f

jr_00b_49ce:
    pop hl                                        ; $49ce: $e1
    pop de                                        ; $49cf: $d1
    pop bc                                        ; $49d0: $c1
    pop af                                        ; $49d1: $f1
    ret                                           ; $49d2: $c9


Call_00b_49d3:
    ld a, $04                                     ; $49d3: $3e $04
    ldh [$96], a                                  ; $49d5: $e0 $96
    ldh [rSVBK], a                                ; $49d7: $e0 $70
    ld hl, $c290                                  ; $49d9: $21 $90 $c2
    ld a, [hl+]                                   ; $49dc: $2a
    ld b, [hl]                                    ; $49dd: $46
    ld c, a                                       ; $49de: $4f
    ld hl, $0004                                  ; $49df: $21 $04 $00
    add hl, bc                                    ; $49e2: $09
    ld a, [hl+]                                   ; $49e3: $2a
    ld b, [hl]                                    ; $49e4: $46
    ld c, a                                       ; $49e5: $4f
    inc hl                                        ; $49e6: $23
    ld a, [hl+]                                   ; $49e7: $2a
    ld d, [hl]                                    ; $49e8: $56
    ld e, a                                       ; $49e9: $5f
    push de                                       ; $49ea: $d5
    ld hl, $f610                                  ; $49eb: $21 $10 $f6
    add hl, bc                                    ; $49ee: $09
    ld a, [$c329]                                 ; $49ef: $fa $29 $c3
    ld d, a                                       ; $49f2: $57
    ld a, h                                       ; $49f3: $7c
    sub d                                         ; $49f4: $92
    bit 7, a                                      ; $49f5: $cb $7f
    jr z, jr_00b_49fe                             ; $49f7: $28 $05

    ld h, d                                       ; $49f9: $62
    ld l, $00                                     ; $49fa: $2e $00
    jr jr_00b_4a0d                                ; $49fc: $18 $0f

jr_00b_49fe:
    ld a, [$c32b]                                 ; $49fe: $fa $2b $c3
    sub $14                                       ; $4a01: $d6 $14
    ld d, a                                       ; $4a03: $57
    ld a, h                                       ; $4a04: $7c
    sub d                                         ; $4a05: $92
    bit 7, a                                      ; $4a06: $cb $7f
    jr nz, jr_00b_4a0d                            ; $4a08: $20 $03

    ld h, d                                       ; $4a0a: $62
    ld l, $00                                     ; $4a0b: $2e $00

jr_00b_4a0d:
    ld b, h                                       ; $4a0d: $44
    ld c, l                                       ; $4a0e: $4d
    pop de                                        ; $4a0f: $d1
    ld hl, $f510                                  ; $4a10: $21 $10 $f5
    add hl, de                                    ; $4a13: $19
    ld a, [$c32a]                                 ; $4a14: $fa $2a $c3
    ld d, a                                       ; $4a17: $57
    ld a, h                                       ; $4a18: $7c
    sub d                                         ; $4a19: $92
    bit 7, a                                      ; $4a1a: $cb $7f
    jr z, jr_00b_4a23                             ; $4a1c: $28 $05

    ld h, d                                       ; $4a1e: $62
    ld l, $00                                     ; $4a1f: $2e $00
    jr jr_00b_4a32                                ; $4a21: $18 $0f

jr_00b_4a23:
    ld a, [$c32c]                                 ; $4a23: $fa $2c $c3
    sub $12                                       ; $4a26: $d6 $12
    ld d, a                                       ; $4a28: $57
    ld a, h                                       ; $4a29: $7c
    sub d                                         ; $4a2a: $92
    bit 7, a                                      ; $4a2b: $cb $7f
    jr nz, jr_00b_4a32                            ; $4a2d: $20 $03

    ld h, d                                       ; $4a2f: $62
    ld l, $00                                     ; $4a30: $2e $00

jr_00b_4a32:
    ld d, h                                       ; $4a32: $54
    ld e, l                                       ; $4a33: $5d
    ld hl, $c320                                  ; $4a34: $21 $20 $c3
    ld a, c                                       ; $4a37: $79
    ld [hl+], a                                   ; $4a38: $22
    ld a, b                                       ; $4a39: $78
    ld [hl+], a                                   ; $4a3a: $22
    ld a, e                                       ; $4a3b: $7b
    ld [hl+], a                                   ; $4a3c: $22
    ld a, d                                       ; $4a3d: $7a
    ld [hl], a                                    ; $4a3e: $77
    ret                                           ; $4a3f: $c9


    ld a, [$cbf0]                                 ; $4a40: $fa $f0 $cb
    or a                                          ; $4a43: $b7
    jr nz, jr_00b_4a8b                            ; $4a44: $20 $45

jr_00b_4a46:
    ld hl, $4a90                                  ; $4a46: $21 $90 $4a
    ld a, [$cbf1]                                 ; $4a49: $fa $f1 $cb
    add l                                         ; $4a4c: $85
    ld l, a                                       ; $4a4d: $6f
    ld a, h                                       ; $4a4e: $7c
    adc $00                                       ; $4a4f: $ce $00
    ld h, a                                       ; $4a51: $67
    ld a, [hl]                                    ; $4a52: $7e
    cp $ff                                        ; $4a53: $fe $ff
    jr nz, jr_00b_4a5d                            ; $4a55: $20 $06

    xor a                                         ; $4a57: $af
    ld [$cbf1], a                                 ; $4a58: $ea $f1 $cb
    jr jr_00b_4a46                                ; $4a5b: $18 $e9

jr_00b_4a5d:
    ld b, a                                       ; $4a5d: $47
    inc hl                                        ; $4a5e: $23
    ld c, [hl]                                    ; $4a5f: $4e
    inc hl                                        ; $4a60: $23
    ld e, [hl]                                    ; $4a61: $5e
    inc hl                                        ; $4a62: $23
    ld a, [hl]                                    ; $4a63: $7e
    push af                                       ; $4a64: $f5
    push bc                                       ; $4a65: $c5
    ld l, e                                       ; $4a66: $6b
    ld h, $00                                     ; $4a67: $26 $00
    add hl, hl                                    ; $4a69: $29
    add hl, hl                                    ; $4a6a: $29
    add hl, hl                                    ; $4a6b: $29
    add hl, hl                                    ; $4a6c: $29
    ld de, $b000                                  ; $4a6d: $11 $00 $b0
    add hl, de                                    ; $4a70: $19
    push hl                                       ; $4a71: $e5
    ld l, b                                       ; $4a72: $68
    ld h, $00                                     ; $4a73: $26 $00
    add hl, hl                                    ; $4a75: $29
    add hl, hl                                    ; $4a76: $29
    add hl, hl                                    ; $4a77: $29
    add hl, hl                                    ; $4a78: $29
    ld bc, $4a9d                                  ; $4a79: $01 $9d $4a
    add hl, bc                                    ; $4a7c: $09
    pop de                                        ; $4a7d: $d1
    pop bc                                        ; $4a7e: $c1
    call Call_000_0468                            ; $4a7f: $cd $68 $04
    ld a, [$cbf1]                                 ; $4a82: $fa $f1 $cb
    add $04                                       ; $4a85: $c6 $04
    ld [$cbf1], a                                 ; $4a87: $ea $f1 $cb
    pop af                                        ; $4a8a: $f1

jr_00b_4a8b:
    dec a                                         ; $4a8b: $3d
    ld [$cbf0], a                                 ; $4a8c: $ea $f0 $cb
    ret                                           ; $4a8f: $c9


    nop                                           ; $4a90: $00
    db $10                                        ; $4a91: $10
    ld d, b                                       ; $4a92: $50
    ld a, [bc]                                    ; $4a93: $0a
    db $10                                        ; $4a94: $10
    db $10                                        ; $4a95: $10
    ld d, b                                       ; $4a96: $50
    ld a, [bc]                                    ; $4a97: $0a
    jr nz, jr_00b_4aaa                            ; $4a98: $20 $10

    ld d, b                                       ; $4a9a: $50
    ld a, [bc]                                    ; $4a9b: $0a
    rst $38                                       ; $4a9c: $ff
    nop                                           ; $4a9d: $00
    nop                                           ; $4a9e: $00
    ld b, b                                       ; $4a9f: $40
    add b                                         ; $4aa0: $80
    jr nz, jr_00b_4ae3                            ; $4aa1: $20 $40

    nop                                           ; $4aa3: $00
    jr nc, jr_00b_4aa6                            ; $4aa4: $30 $00

jr_00b_4aa6:
    jr nc, jr_00b_4ac8                            ; $4aa6: $30 $20

    ld b, b                                       ; $4aa8: $40
    ld b, b                                       ; $4aa9: $40

jr_00b_4aaa:
    add b                                         ; $4aaa: $80
    nop                                           ; $4aab: $00
    nop                                           ; $4aac: $00
    nop                                           ; $4aad: $00
    nop                                           ; $4aae: $00
    db $10                                        ; $4aaf: $10
    jr nz, jr_00b_4aba                            ; $4ab0: $20 $08

    stop                                          ; $4ab2: $10 $00
    inc c                                         ; $4ab4: $0c
    nop                                           ; $4ab5: $00
    inc c                                         ; $4ab6: $0c
    ld [$1010], sp                                ; $4ab7: $08 $10 $10

jr_00b_4aba:
    jr nz, jr_00b_4abc                            ; $4aba: $20 $00

jr_00b_4abc:
    nop                                           ; $4abc: $00
    nop                                           ; $4abd: $00
    nop                                           ; $4abe: $00
    inc b                                         ; $4abf: $04
    ld [$0402], sp                                ; $4ac0: $08 $02 $04
    nop                                           ; $4ac3: $00
    inc bc                                        ; $4ac4: $03
    nop                                           ; $4ac5: $00
    inc bc                                        ; $4ac6: $03
    ld [bc], a                                    ; $4ac7: $02

jr_00b_4ac8:
    inc b                                         ; $4ac8: $04
    inc b                                         ; $4ac9: $04
    ld [$0000], sp                                ; $4aca: $08 $00 $00
    nop                                           ; $4acd: $00
    nop                                           ; $4ace: $00
    ld bc, $8002                                  ; $4acf: $01 $02 $80
    ld bc, $c000                                  ; $4ad2: $01 $00 $c0
    nop                                           ; $4ad5: $00
    ret nz                                        ; $4ad6: $c0

    add b                                         ; $4ad7: $80
    ld bc, $0201                                  ; $4ad8: $01 $01 $02
    nop                                           ; $4adb: $00
    nop                                           ; $4adc: $00
    nop                                           ; $4add: $00
    nop                                           ; $4ade: $00
    nop                                           ; $4adf: $00
    nop                                           ; $4ae0: $00
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00

jr_00b_4ae3:
    nop                                           ; $4ae3: $00
    nop                                           ; $4ae4: $00
    ret nz                                        ; $4ae5: $c0

    jr nc, jr_00b_4b08                            ; $4ae6: $30 $20

    ld d, b                                       ; $4ae8: $50
    db $10                                        ; $4ae9: $10
    jr nz, jr_00b_4afc                            ; $4aea: $20 $10

    nop                                           ; $4aec: $00
    nop                                           ; $4aed: $00
    nop                                           ; $4aee: $00
    nop                                           ; $4aef: $00
    nop                                           ; $4af0: $00
    jr nc, jr_00b_4aff                            ; $4af1: $30 $0c

    ld [$0414], sp                                ; $4af3: $08 $14 $04
    ld [$0004], sp                                ; $4af6: $08 $04 $00
    nop                                           ; $4af9: $00
    nop                                           ; $4afa: $00
    nop                                           ; $4afb: $00

jr_00b_4afc:
    nop                                           ; $4afc: $00
    inc c                                         ; $4afd: $0c
    inc bc                                        ; $4afe: $03

jr_00b_4aff:
    ld [bc], a                                    ; $4aff: $02
    dec b                                         ; $4b00: $05
    ld bc, $0102                                  ; $4b01: $01 $02 $01
    nop                                           ; $4b04: $00
    nop                                           ; $4b05: $00
    nop                                           ; $4b06: $00
    nop                                           ; $4b07: $00

jr_00b_4b08:
    nop                                           ; $4b08: $00
    nop                                           ; $4b09: $00
    nop                                           ; $4b0a: $00
    nop                                           ; $4b0b: $00
    nop                                           ; $4b0c: $00
    ld b, b                                       ; $4b0d: $40
    add b                                         ; $4b0e: $80
    ld b, b                                       ; $4b0f: $40
    nop                                           ; $4b10: $00
    nop                                           ; $4b11: $00
    nop                                           ; $4b12: $00
    nop                                           ; $4b13: $00
    nop                                           ; $4b14: $00
    nop                                           ; $4b15: $00
    nop                                           ; $4b16: $00
    nop                                           ; $4b17: $00
    nop                                           ; $4b18: $00
    inc bc                                        ; $4b19: $03
    nop                                           ; $4b1a: $00
    nop                                           ; $4b1b: $00
    ld bc, $0000                                  ; $4b1c: $01 $00 $00
    nop                                           ; $4b1f: $00
    nop                                           ; $4b20: $00
    nop                                           ; $4b21: $00
    nop                                           ; $4b22: $00
    nop                                           ; $4b23: $00
    nop                                           ; $4b24: $00
    nop                                           ; $4b25: $00
    nop                                           ; $4b26: $00
    nop                                           ; $4b27: $00
    nop                                           ; $4b28: $00
    nop                                           ; $4b29: $00
    ret nz                                        ; $4b2a: $c0

    add b                                         ; $4b2b: $80
    ld b, b                                       ; $4b2c: $40
    nop                                           ; $4b2d: $00
    nop                                           ; $4b2e: $00
    nop                                           ; $4b2f: $00
    nop                                           ; $4b30: $00
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    nop                                           ; $4b33: $00
    nop                                           ; $4b34: $00
    nop                                           ; $4b35: $00
    nop                                           ; $4b36: $00
    nop                                           ; $4b37: $00
    nop                                           ; $4b38: $00
    nop                                           ; $4b39: $00
    nop                                           ; $4b3a: $00
    nop                                           ; $4b3b: $00
    nop                                           ; $4b3c: $00
    nop                                           ; $4b3d: $00
    nop                                           ; $4b3e: $00
    nop                                           ; $4b3f: $00
    nop                                           ; $4b40: $00
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    nop                                           ; $4b43: $00
    nop                                           ; $4b44: $00
    nop                                           ; $4b45: $00
    nop                                           ; $4b46: $00
    nop                                           ; $4b47: $00
    nop                                           ; $4b48: $00
    nop                                           ; $4b49: $00
    nop                                           ; $4b4a: $00
    nop                                           ; $4b4b: $00
    nop                                           ; $4b4c: $00
    nop                                           ; $4b4d: $00
    nop                                           ; $4b4e: $00
    nop                                           ; $4b4f: $00
    nop                                           ; $4b50: $00
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    nop                                           ; $4b53: $00
    nop                                           ; $4b54: $00
    nop                                           ; $4b55: $00
    nop                                           ; $4b56: $00
    nop                                           ; $4b57: $00
    nop                                           ; $4b58: $00
    nop                                           ; $4b59: $00
    nop                                           ; $4b5a: $00
    nop                                           ; $4b5b: $00
    nop                                           ; $4b5c: $00
    nop                                           ; $4b5d: $00
    nop                                           ; $4b5e: $00
    nop                                           ; $4b5f: $00
    nop                                           ; $4b60: $00
    nop                                           ; $4b61: $00
    nop                                           ; $4b62: $00
    nop                                           ; $4b63: $00
    nop                                           ; $4b64: $00
    nop                                           ; $4b65: $00
    nop                                           ; $4b66: $00
    nop                                           ; $4b67: $00
    nop                                           ; $4b68: $00
    nop                                           ; $4b69: $00
    nop                                           ; $4b6a: $00
    nop                                           ; $4b6b: $00
    nop                                           ; $4b6c: $00
    nop                                           ; $4b6d: $00
    nop                                           ; $4b6e: $00
    nop                                           ; $4b6f: $00
    nop                                           ; $4b70: $00
    nop                                           ; $4b71: $00
    nop                                           ; $4b72: $00
    nop                                           ; $4b73: $00
    nop                                           ; $4b74: $00
    nop                                           ; $4b75: $00
    nop                                           ; $4b76: $00
    nop                                           ; $4b77: $00
    nop                                           ; $4b78: $00
    nop                                           ; $4b79: $00
    nop                                           ; $4b7a: $00
    nop                                           ; $4b7b: $00
    nop                                           ; $4b7c: $00
    nop                                           ; $4b7d: $00
    nop                                           ; $4b7e: $00
    nop                                           ; $4b7f: $00
    nop                                           ; $4b80: $00
    nop                                           ; $4b81: $00
    nop                                           ; $4b82: $00
    nop                                           ; $4b83: $00
    nop                                           ; $4b84: $00
    nop                                           ; $4b85: $00
    nop                                           ; $4b86: $00
    nop                                           ; $4b87: $00
    nop                                           ; $4b88: $00
    nop                                           ; $4b89: $00
    nop                                           ; $4b8a: $00
    nop                                           ; $4b8b: $00
    nop                                           ; $4b8c: $00
    nop                                           ; $4b8d: $00
    nop                                           ; $4b8e: $00
    nop                                           ; $4b8f: $00
    nop                                           ; $4b90: $00
    nop                                           ; $4b91: $00
    nop                                           ; $4b92: $00
    nop                                           ; $4b93: $00
    nop                                           ; $4b94: $00
    nop                                           ; $4b95: $00
    nop                                           ; $4b96: $00
    nop                                           ; $4b97: $00
    nop                                           ; $4b98: $00
    nop                                           ; $4b99: $00
    nop                                           ; $4b9a: $00
    nop                                           ; $4b9b: $00
    nop                                           ; $4b9c: $00
    nop                                           ; $4b9d: $00
    nop                                           ; $4b9e: $00
    ld b, b                                       ; $4b9f: $40
    nop                                           ; $4ba0: $00
    jr nz, jr_00b_4ba3                            ; $4ba1: $20 $00

jr_00b_4ba3:
    nop                                           ; $4ba3: $00
    stop                                          ; $4ba4: $10 $00
    db $10                                        ; $4ba6: $10
    jr nz, jr_00b_4ba9                            ; $4ba7: $20 $00

jr_00b_4ba9:
    ld b, b                                       ; $4ba9: $40
    nop                                           ; $4baa: $00
    nop                                           ; $4bab: $00
    nop                                           ; $4bac: $00
    nop                                           ; $4bad: $00
    nop                                           ; $4bae: $00
    stop                                          ; $4baf: $10 $00
    ld [$0000], sp                                ; $4bb1: $08 $00 $00
    inc b                                         ; $4bb4: $04
    nop                                           ; $4bb5: $00
    inc b                                         ; $4bb6: $04
    ld [$1000], sp                                ; $4bb7: $08 $00 $10
    nop                                           ; $4bba: $00
    nop                                           ; $4bbb: $00
    nop                                           ; $4bbc: $00
    nop                                           ; $4bbd: $00
    nop                                           ; $4bbe: $00
    inc b                                         ; $4bbf: $04
    nop                                           ; $4bc0: $00
    ld [bc], a                                    ; $4bc1: $02
    nop                                           ; $4bc2: $00
    nop                                           ; $4bc3: $00
    ld bc, $0100                                  ; $4bc4: $01 $00 $01
    ld [bc], a                                    ; $4bc7: $02
    nop                                           ; $4bc8: $00
    inc b                                         ; $4bc9: $04
    nop                                           ; $4bca: $00
    nop                                           ; $4bcb: $00
    nop                                           ; $4bcc: $00
    nop                                           ; $4bcd: $00
    nop                                           ; $4bce: $00
    ld bc, $8000                                  ; $4bcf: $01 $00 $80
    nop                                           ; $4bd2: $00
    nop                                           ; $4bd3: $00
    ld b, b                                       ; $4bd4: $40
    nop                                           ; $4bd5: $00
    ld b, b                                       ; $4bd6: $40
    add b                                         ; $4bd7: $80
    nop                                           ; $4bd8: $00
    ld bc, $0000                                  ; $4bd9: $01 $00 $00
    nop                                           ; $4bdc: $00
    nop                                           ; $4bdd: $00
    nop                                           ; $4bde: $00
    nop                                           ; $4bdf: $00
    nop                                           ; $4be0: $00
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    nop                                           ; $4be3: $00
    nop                                           ; $4be4: $00
    ret nz                                        ; $4be5: $c0

    jr nc, jr_00b_4be8                            ; $4be6: $30 $00

jr_00b_4be8:
    db $10                                        ; $4be8: $10
    stop                                          ; $4be9: $10 $00
    stop                                          ; $4beb: $10 $00
    nop                                           ; $4bed: $00
    nop                                           ; $4bee: $00
    nop                                           ; $4bef: $00
    nop                                           ; $4bf0: $00
    jr nc, jr_00b_4bff                            ; $4bf1: $30 $0c

    nop                                           ; $4bf3: $00
    inc b                                         ; $4bf4: $04
    inc b                                         ; $4bf5: $04
    nop                                           ; $4bf6: $00
    inc b                                         ; $4bf7: $04
    nop                                           ; $4bf8: $00
    nop                                           ; $4bf9: $00
    nop                                           ; $4bfa: $00
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    inc c                                         ; $4bfd: $0c
    inc bc                                        ; $4bfe: $03

jr_00b_4bff:
    nop                                           ; $4bff: $00
    ld bc, $0001                                  ; $4c00: $01 $01 $00
    ld bc, $0000                                  ; $4c03: $01 $00 $00
    nop                                           ; $4c06: $00
    nop                                           ; $4c07: $00
    nop                                           ; $4c08: $00
    nop                                           ; $4c09: $00
    nop                                           ; $4c0a: $00
    nop                                           ; $4c0b: $00
    nop                                           ; $4c0c: $00
    ld b, b                                       ; $4c0d: $40
    nop                                           ; $4c0e: $00
    ld b, b                                       ; $4c0f: $40
    nop                                           ; $4c10: $00
    nop                                           ; $4c11: $00
    nop                                           ; $4c12: $00
    nop                                           ; $4c13: $00
    nop                                           ; $4c14: $00
    nop                                           ; $4c15: $00
    nop                                           ; $4c16: $00
    nop                                           ; $4c17: $00
    nop                                           ; $4c18: $00
    inc bc                                        ; $4c19: $03
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
    nop                                           ; $4c27: $00
    nop                                           ; $4c28: $00
    nop                                           ; $4c29: $00
    ret nz                                        ; $4c2a: $c0

    nop                                           ; $4c2b: $00
    ld b, b                                       ; $4c2c: $40
    nop                                           ; $4c2d: $00
    nop                                           ; $4c2e: $00
    nop                                           ; $4c2f: $00
    nop                                           ; $4c30: $00
    nop                                           ; $4c31: $00
    nop                                           ; $4c32: $00
    nop                                           ; $4c33: $00
    nop                                           ; $4c34: $00
    nop                                           ; $4c35: $00
    nop                                           ; $4c36: $00
    nop                                           ; $4c37: $00
    nop                                           ; $4c38: $00
    nop                                           ; $4c39: $00
    nop                                           ; $4c3a: $00
    nop                                           ; $4c3b: $00
    nop                                           ; $4c3c: $00
    nop                                           ; $4c3d: $00
    nop                                           ; $4c3e: $00
    nop                                           ; $4c3f: $00
    nop                                           ; $4c40: $00
    nop                                           ; $4c41: $00
    nop                                           ; $4c42: $00
    nop                                           ; $4c43: $00
    nop                                           ; $4c44: $00
    nop                                           ; $4c45: $00
    nop                                           ; $4c46: $00
    nop                                           ; $4c47: $00
    nop                                           ; $4c48: $00
    nop                                           ; $4c49: $00
    nop                                           ; $4c4a: $00
    nop                                           ; $4c4b: $00
    nop                                           ; $4c4c: $00
    nop                                           ; $4c4d: $00
    nop                                           ; $4c4e: $00
    nop                                           ; $4c4f: $00
    nop                                           ; $4c50: $00
    nop                                           ; $4c51: $00
    nop                                           ; $4c52: $00
    nop                                           ; $4c53: $00
    nop                                           ; $4c54: $00
    nop                                           ; $4c55: $00
    nop                                           ; $4c56: $00
    nop                                           ; $4c57: $00
    nop                                           ; $4c58: $00
    nop                                           ; $4c59: $00
    nop                                           ; $4c5a: $00
    nop                                           ; $4c5b: $00
    nop                                           ; $4c5c: $00
    nop                                           ; $4c5d: $00
    nop                                           ; $4c5e: $00
    nop                                           ; $4c5f: $00
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00
    nop                                           ; $4c62: $00
    nop                                           ; $4c63: $00
    nop                                           ; $4c64: $00
    nop                                           ; $4c65: $00
    nop                                           ; $4c66: $00
    nop                                           ; $4c67: $00
    nop                                           ; $4c68: $00
    nop                                           ; $4c69: $00
    nop                                           ; $4c6a: $00
    nop                                           ; $4c6b: $00
    nop                                           ; $4c6c: $00
    nop                                           ; $4c6d: $00
    nop                                           ; $4c6e: $00
    nop                                           ; $4c6f: $00
    nop                                           ; $4c70: $00
    nop                                           ; $4c71: $00
    nop                                           ; $4c72: $00
    nop                                           ; $4c73: $00
    nop                                           ; $4c74: $00
    nop                                           ; $4c75: $00
    nop                                           ; $4c76: $00
    nop                                           ; $4c77: $00
    nop                                           ; $4c78: $00
    nop                                           ; $4c79: $00
    nop                                           ; $4c7a: $00
    nop                                           ; $4c7b: $00
    nop                                           ; $4c7c: $00
    nop                                           ; $4c7d: $00
    nop                                           ; $4c7e: $00
    nop                                           ; $4c7f: $00
    nop                                           ; $4c80: $00
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    nop                                           ; $4c83: $00
    nop                                           ; $4c84: $00
    nop                                           ; $4c85: $00
    nop                                           ; $4c86: $00
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
    jr nz, jr_00b_4ca3                            ; $4ca1: $20 $00

jr_00b_4ca3:
    nop                                           ; $4ca3: $00
    stop                                          ; $4ca4: $10 $00
    db $10                                        ; $4ca6: $10
    jr nz, jr_00b_4ca9                            ; $4ca7: $20 $00

jr_00b_4ca9:
    nop                                           ; $4ca9: $00
    nop                                           ; $4caa: $00
    nop                                           ; $4cab: $00
    nop                                           ; $4cac: $00
    nop                                           ; $4cad: $00
    nop                                           ; $4cae: $00
    nop                                           ; $4caf: $00
    nop                                           ; $4cb0: $00
    ld [$0000], sp                                ; $4cb1: $08 $00 $00
    inc b                                         ; $4cb4: $04
    nop                                           ; $4cb5: $00
    inc b                                         ; $4cb6: $04
    ld [$0000], sp                                ; $4cb7: $08 $00 $00
    nop                                           ; $4cba: $00
    nop                                           ; $4cbb: $00
    nop                                           ; $4cbc: $00
    nop                                           ; $4cbd: $00
    nop                                           ; $4cbe: $00
    nop                                           ; $4cbf: $00
    nop                                           ; $4cc0: $00
    ld [bc], a                                    ; $4cc1: $02
    nop                                           ; $4cc2: $00
    nop                                           ; $4cc3: $00
    ld bc, $0100                                  ; $4cc4: $01 $00 $01
    ld [bc], a                                    ; $4cc7: $02
    nop                                           ; $4cc8: $00
    nop                                           ; $4cc9: $00
    nop                                           ; $4cca: $00
    nop                                           ; $4ccb: $00
    nop                                           ; $4ccc: $00
    nop                                           ; $4ccd: $00
    nop                                           ; $4cce: $00
    nop                                           ; $4ccf: $00
    nop                                           ; $4cd0: $00
    ld bc, $0000                                  ; $4cd1: $01 $00 $00
    add b                                         ; $4cd4: $80
    nop                                           ; $4cd5: $00
    add b                                         ; $4cd6: $80
    ld bc, $0000                                  ; $4cd7: $01 $00 $00
    nop                                           ; $4cda: $00
    nop                                           ; $4cdb: $00
    nop                                           ; $4cdc: $00
    nop                                           ; $4cdd: $00
    nop                                           ; $4cde: $00
    nop                                           ; $4cdf: $00
    nop                                           ; $4ce0: $00
    nop                                           ; $4ce1: $00
    nop                                           ; $4ce2: $00
    nop                                           ; $4ce3: $00
    nop                                           ; $4ce4: $00
    nop                                           ; $4ce5: $00
    nop                                           ; $4ce6: $00
    ld b, b                                       ; $4ce7: $40
    jr nz, jr_00b_4d0a                            ; $4ce8: $20 $20

    nop                                           ; $4cea: $00
    nop                                           ; $4ceb: $00
    nop                                           ; $4cec: $00
    nop                                           ; $4ced: $00
    nop                                           ; $4cee: $00
    nop                                           ; $4cef: $00
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    nop                                           ; $4cf2: $00
    db $10                                        ; $4cf3: $10
    ld [$0008], sp                                ; $4cf4: $08 $08 $00
    nop                                           ; $4cf7: $00
    nop                                           ; $4cf8: $00
    nop                                           ; $4cf9: $00
    nop                                           ; $4cfa: $00
    nop                                           ; $4cfb: $00
    nop                                           ; $4cfc: $00
    nop                                           ; $4cfd: $00
    nop                                           ; $4cfe: $00
    inc b                                         ; $4cff: $04
    ld [bc], a                                    ; $4d00: $02
    ld [bc], a                                    ; $4d01: $02
    nop                                           ; $4d02: $00
    nop                                           ; $4d03: $00
    nop                                           ; $4d04: $00
    nop                                           ; $4d05: $00
    nop                                           ; $4d06: $00
    nop                                           ; $4d07: $00
    nop                                           ; $4d08: $00
    nop                                           ; $4d09: $00

jr_00b_4d0a:
    nop                                           ; $4d0a: $00
    nop                                           ; $4d0b: $00
    nop                                           ; $4d0c: $00
    add b                                         ; $4d0d: $80
    nop                                           ; $4d0e: $00
    nop                                           ; $4d0f: $00
    nop                                           ; $4d10: $00
    nop                                           ; $4d11: $00
    nop                                           ; $4d12: $00
    nop                                           ; $4d13: $00
    nop                                           ; $4d14: $00
    nop                                           ; $4d15: $00
    nop                                           ; $4d16: $00
    nop                                           ; $4d17: $00
    nop                                           ; $4d18: $00
    nop                                           ; $4d19: $00
    nop                                           ; $4d1a: $00
    ld bc, $0000                                  ; $4d1b: $01 $00 $00
    nop                                           ; $4d1e: $00
    nop                                           ; $4d1f: $00
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    nop                                           ; $4d22: $00
    nop                                           ; $4d23: $00
    nop                                           ; $4d24: $00
    nop                                           ; $4d25: $00
    nop                                           ; $4d26: $00
    nop                                           ; $4d27: $00
    nop                                           ; $4d28: $00
    nop                                           ; $4d29: $00
    nop                                           ; $4d2a: $00
    nop                                           ; $4d2b: $00
    add b                                         ; $4d2c: $80
    nop                                           ; $4d2d: $00
    nop                                           ; $4d2e: $00
    nop                                           ; $4d2f: $00
    nop                                           ; $4d30: $00
    nop                                           ; $4d31: $00
    nop                                           ; $4d32: $00
    nop                                           ; $4d33: $00
    nop                                           ; $4d34: $00
    nop                                           ; $4d35: $00
    nop                                           ; $4d36: $00
    nop                                           ; $4d37: $00
    nop                                           ; $4d38: $00
    nop                                           ; $4d39: $00
    nop                                           ; $4d3a: $00
    nop                                           ; $4d3b: $00
    nop                                           ; $4d3c: $00
    nop                                           ; $4d3d: $00
    nop                                           ; $4d3e: $00
    nop                                           ; $4d3f: $00
    nop                                           ; $4d40: $00
    nop                                           ; $4d41: $00
    nop                                           ; $4d42: $00
    nop                                           ; $4d43: $00
    nop                                           ; $4d44: $00
    nop                                           ; $4d45: $00
    nop                                           ; $4d46: $00
    nop                                           ; $4d47: $00
    nop                                           ; $4d48: $00
    nop                                           ; $4d49: $00
    nop                                           ; $4d4a: $00
    nop                                           ; $4d4b: $00
    nop                                           ; $4d4c: $00
    nop                                           ; $4d4d: $00
    nop                                           ; $4d4e: $00
    nop                                           ; $4d4f: $00
    nop                                           ; $4d50: $00
    nop                                           ; $4d51: $00
    nop                                           ; $4d52: $00
    nop                                           ; $4d53: $00
    nop                                           ; $4d54: $00
    nop                                           ; $4d55: $00
    nop                                           ; $4d56: $00
    nop                                           ; $4d57: $00
    nop                                           ; $4d58: $00
    nop                                           ; $4d59: $00
    nop                                           ; $4d5a: $00
    nop                                           ; $4d5b: $00
    nop                                           ; $4d5c: $00
    nop                                           ; $4d5d: $00
    nop                                           ; $4d5e: $00
    nop                                           ; $4d5f: $00
    nop                                           ; $4d60: $00
    nop                                           ; $4d61: $00
    nop                                           ; $4d62: $00
    nop                                           ; $4d63: $00
    nop                                           ; $4d64: $00
    nop                                           ; $4d65: $00
    nop                                           ; $4d66: $00
    nop                                           ; $4d67: $00
    nop                                           ; $4d68: $00
    nop                                           ; $4d69: $00
    nop                                           ; $4d6a: $00
    nop                                           ; $4d6b: $00
    nop                                           ; $4d6c: $00
    nop                                           ; $4d6d: $00
    nop                                           ; $4d6e: $00
    nop                                           ; $4d6f: $00
    nop                                           ; $4d70: $00
    nop                                           ; $4d71: $00
    nop                                           ; $4d72: $00
    nop                                           ; $4d73: $00
    nop                                           ; $4d74: $00
    nop                                           ; $4d75: $00
    nop                                           ; $4d76: $00
    nop                                           ; $4d77: $00
    nop                                           ; $4d78: $00
    nop                                           ; $4d79: $00
    nop                                           ; $4d7a: $00
    nop                                           ; $4d7b: $00
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    nop                                           ; $4d7e: $00
    nop                                           ; $4d7f: $00
    nop                                           ; $4d80: $00
    nop                                           ; $4d81: $00
    nop                                           ; $4d82: $00
    nop                                           ; $4d83: $00
    nop                                           ; $4d84: $00
    nop                                           ; $4d85: $00
    nop                                           ; $4d86: $00
    nop                                           ; $4d87: $00
    nop                                           ; $4d88: $00
    nop                                           ; $4d89: $00
    nop                                           ; $4d8a: $00
    nop                                           ; $4d8b: $00
    nop                                           ; $4d8c: $00
    nop                                           ; $4d8d: $00
    nop                                           ; $4d8e: $00
    nop                                           ; $4d8f: $00
    nop                                           ; $4d90: $00
    nop                                           ; $4d91: $00
    nop                                           ; $4d92: $00
    nop                                           ; $4d93: $00
    nop                                           ; $4d94: $00
    nop                                           ; $4d95: $00
    nop                                           ; $4d96: $00
    nop                                           ; $4d97: $00
    nop                                           ; $4d98: $00
    nop                                           ; $4d99: $00
    nop                                           ; $4d9a: $00
    nop                                           ; $4d9b: $00
    nop                                           ; $4d9c: $00
    push af                                       ; $4d9d: $f5
    push bc                                       ; $4d9e: $c5
    push de                                       ; $4d9f: $d5
    push hl                                       ; $4da0: $e5
    ldh a, [$96]                                  ; $4da1: $f0 $96
    push af                                       ; $4da3: $f5

Jump_00b_4da4:
jr_00b_4da4:
    rst $18                                       ; $4da4: $df
    nop                                           ; $4da5: $00
    rlca                                          ; $4da6: $07
    push de                                       ; $4da7: $d5
    push af                                       ; $4da8: $f5
    ld a, a                                       ; $4da9: $7f
    ld de, $0d0d                                  ; $4daa: $11 $0d $0d
    call Call_000_22a5                            ; $4dad: $cd $a5 $22
    pop af                                        ; $4db0: $f1
    pop de                                        ; $4db1: $d1
    cp $ff                                        ; $4db2: $fe $ff
    jp z, Jump_00b_4e3b                           ; $4db4: $ca $3b $4e

    or a                                          ; $4db7: $b7
    jr z, jr_00b_4dc7                             ; $4db8: $28 $0d

    cp $01                                        ; $4dba: $fe $01
    jp z, Jump_00b_4df8                           ; $4dbc: $ca $f8 $4d

    cp $02                                        ; $4dbf: $fe $02
    jp z, Jump_00b_4e28                           ; $4dc1: $ca $28 $4e

    jp Jump_00b_4e3b                              ; $4dc4: $c3 $3b $4e


jr_00b_4dc7:
    call Call_00b_4f51                            ; $4dc7: $cd $51 $4f
    call Call_00b_4fac                            ; $4dca: $cd $ac $4f
    or a                                          ; $4dcd: $b7
    jr z, jr_00b_4da4                             ; $4dce: $28 $d4

    call Call_000_2e3b                            ; $4dd0: $cd $3b $2e
    ld b, $01                                     ; $4dd3: $06 $01
    rst $18                                       ; $4dd5: $df
    ld c, $06                                     ; $4dd6: $0e $06
    rst $18                                       ; $4dd8: $df
    inc c                                         ; $4dd9: $0c
    ld b, $fe                                     ; $4dda: $06 $fe
    rst $38                                       ; $4ddc: $ff
    jr z, jr_00b_4da4                             ; $4ddd: $28 $c5

    ld b, a                                       ; $4ddf: $47
    ld hl, $c800                                  ; $4de0: $21 $00 $c8
    rst $18                                       ; $4de3: $df
    ld b, $02                                     ; $4de4: $06 $02
    call Call_000_2e3b                            ; $4de6: $cd $3b $2e
    call Call_000_2cde                            ; $4de9: $cd $de $2c
    ld b, $80                                     ; $4dec: $06 $80
    ld c, $00                                     ; $4dee: $0e $00
    rst $18                                       ; $4df0: $df
    ld e, $02                                     ; $4df1: $1e $02
    call Call_00b_4eca                            ; $4df3: $cd $ca $4e
    jr jr_00b_4da4                                ; $4df6: $18 $ac

Jump_00b_4df8:
    call Call_00b_4fac                            ; $4df8: $cd $ac $4f
    xor a                                         ; $4dfb: $af
    ld [$ca7f], a                                 ; $4dfc: $ea $7f $ca
    call Call_000_2e3b                            ; $4dff: $cd $3b $2e
    rst $18                                       ; $4e02: $df
    ld [$fe0c], sp                                ; $4e03: $08 $0c $fe
    cp $20                                        ; $4e06: $fe $20
    inc e                                         ; $4e08: $1c
    rst $18                                       ; $4e09: $df
    inc a                                         ; $4e0a: $3c
    db $10                                        ; $4e0b: $10
    ld c, $10                                     ; $4e0c: $0e $10
    call Call_000_258a                            ; $4e0e: $cd $8a $25
    call Call_000_2625                            ; $4e11: $cd $25 $26
    rst $08                                       ; $4e14: $cf
    ld bc, $b6cd                                  ; $4e15: $01 $cd $b6
    inc hl                                        ; $4e18: $23
    call Call_000_2683                            ; $4e19: $cd $83 $26
    ld a, $90                                     ; $4e1c: $3e $90
    ldh [rWY], a                                  ; $4e1e: $e0 $4a
    rst $18                                       ; $4e20: $df
    ld a, [bc]                                    ; $4e21: $0a
    ld bc, $da18                                  ; $4e22: $01 $18 $da
    jp Jump_00b_4da4                              ; $4e25: $c3 $a4 $4d


Jump_00b_4e28:
    call Call_00b_4e48                            ; $4e28: $cd $48 $4e
    call Call_00b_4fac                            ; $4e2b: $cd $ac $4f
    or a                                          ; $4e2e: $b7
    jp nz, Jump_00b_4da4                          ; $4e2f: $c2 $a4 $4d

    call Call_000_2e3b                            ; $4e32: $cd $3b $2e
    call Call_00b_4e5d                            ; $4e35: $cd $5d $4e
    jp Jump_00b_4da4                              ; $4e38: $c3 $a4 $4d


Jump_00b_4e3b:
    call Call_00b_4fac                            ; $4e3b: $cd $ac $4f
    pop af                                        ; $4e3e: $f1
    ldh [$96], a                                  ; $4e3f: $e0 $96
    ldh [rSVBK], a                                ; $4e41: $e0 $70
    pop hl                                        ; $4e43: $e1
    pop de                                        ; $4e44: $d1
    pop bc                                        ; $4e45: $c1
    pop af                                        ; $4e46: $f1
    ret                                           ; $4e47: $c9


Call_00b_4e48:
    push bc                                       ; $4e48: $c5
    push de                                       ; $4e49: $d5
    push hl                                       ; $4e4a: $e5
    rst $18                                       ; $4e4b: $df
    jr z, jr_00b_4e59                             ; $4e4c: $28 $0b

    push af                                       ; $4e4e: $f5
    or a                                          ; $4e4f: $b7
    jr z, jr_00b_4e55                             ; $4e50: $28 $03

    call Call_00b_4f66                            ; $4e52: $cd $66 $4f

jr_00b_4e55:
    call Call_000_2b54                            ; $4e55: $cd $54 $2b
    pop af                                        ; $4e58: $f1

jr_00b_4e59:
    pop hl                                        ; $4e59: $e1
    pop de                                        ; $4e5a: $d1
    pop bc                                        ; $4e5b: $c1
    ret                                           ; $4e5c: $c9


Call_00b_4e5d:
    push af                                       ; $4e5d: $f5
    push bc                                       ; $4e5e: $c5
    push de                                       ; $4e5f: $d5
    push hl                                       ; $4e60: $e5
    ldh a, [$96]                                  ; $4e61: $f0 $96
    push af                                       ; $4e63: $f5

Jump_00b_4e64:
jr_00b_4e64:
    rst $18                                       ; $4e64: $df
    ld [bc], a                                    ; $4e65: $02
    rlca                                          ; $4e66: $07
    cp $ff                                        ; $4e67: $fe $ff
    jp z, Jump_00b_4ebd                           ; $4e69: $ca $bd $4e

    or a                                          ; $4e6c: $b7
    jr z, jr_00b_4e86                             ; $4e6d: $28 $17

    cp $01                                        ; $4e6f: $fe $01
    jp z, Jump_00b_4e9a                           ; $4e71: $ca $9a $4e

    cp $02                                        ; $4e74: $fe $02
    jp z, Jump_00b_4ea2                           ; $4e76: $ca $a2 $4e

    cp $03                                        ; $4e79: $fe $03
    jp z, Jump_00b_4eab                           ; $4e7b: $ca $ab $4e

    cp $04                                        ; $4e7e: $fe $04
    jp z, Jump_00b_4eb4                           ; $4e80: $ca $b4 $4e

    jp Jump_00b_4ebd                              ; $4e83: $c3 $bd $4e


jr_00b_4e86:
    call Call_000_2e3b                            ; $4e86: $cd $3b $2e
    ld a, $06                                     ; $4e89: $3e $06
    ldh [$96], a                                  ; $4e8b: $e0 $96
    ldh [rSVBK], a                                ; $4e8d: $e0 $70
    xor a                                         ; $4e8f: $af
    ld [$d23b], a                                 ; $4e90: $ea $3b $d2
    ld c, $01                                     ; $4e93: $0e $01
    rst $18                                       ; $4e95: $df
    inc c                                         ; $4e96: $0c
    inc c                                         ; $4e97: $0c
    jr jr_00b_4e64                                ; $4e98: $18 $ca

Jump_00b_4e9a:
    call Call_000_2e3b                            ; $4e9a: $cd $3b $2e
    rst $18                                       ; $4e9d: $df
    ld a, [bc]                                    ; $4e9e: $0a
    inc c                                         ; $4e9f: $0c
    jr jr_00b_4e64                                ; $4ea0: $18 $c2

Jump_00b_4ea2:
    call Call_000_2e3b                            ; $4ea2: $cd $3b $2e
    rst $18                                       ; $4ea5: $df
    inc b                                         ; $4ea6: $04
    inc c                                         ; $4ea7: $0c
    jp Jump_00b_4e64                              ; $4ea8: $c3 $64 $4e


Jump_00b_4eab:
    call Call_000_2e3b                            ; $4eab: $cd $3b $2e
    rst $18                                       ; $4eae: $df
    ld [bc], a                                    ; $4eaf: $02
    inc c                                         ; $4eb0: $0c
    jp Jump_00b_4e64                              ; $4eb1: $c3 $64 $4e


Jump_00b_4eb4:
    call Call_000_2e3b                            ; $4eb4: $cd $3b $2e
    rst $18                                       ; $4eb7: $df
    nop                                           ; $4eb8: $00
    inc c                                         ; $4eb9: $0c
    jp Jump_00b_4e64                              ; $4eba: $c3 $64 $4e


Jump_00b_4ebd:
    call Call_000_2e3b                            ; $4ebd: $cd $3b $2e
    pop af                                        ; $4ec0: $f1
    ldh [$96], a                                  ; $4ec1: $e0 $96
    ldh [rSVBK], a                                ; $4ec3: $e0 $70
    pop hl                                        ; $4ec5: $e1
    pop de                                        ; $4ec6: $d1
    pop bc                                        ; $4ec7: $c1
    pop af                                        ; $4ec8: $f1
    ret                                           ; $4ec9: $c9


Call_00b_4eca:
    push af                                       ; $4eca: $f5
    push bc                                       ; $4ecb: $c5
    push de                                       ; $4ecc: $d5
    push hl                                       ; $4ecd: $e5
    ldh a, [$96]                                  ; $4ece: $f0 $96
    push af                                       ; $4ed0: $f5

Jump_00b_4ed1:
jr_00b_4ed1:
    rst $18                                       ; $4ed1: $df
    inc b                                         ; $4ed2: $04
    rlca                                          ; $4ed3: $07
    cp $ff                                        ; $4ed4: $fe $ff
    jp z, Jump_00b_4eee                           ; $4ed6: $ca $ee $4e

    or a                                          ; $4ed9: $b7
    jr z, jr_00b_4f11                             ; $4eda: $28 $35

    cp $01                                        ; $4edc: $fe $01
    jp z, Jump_00b_4f1f                           ; $4ede: $ca $1f $4f

    cp $02                                        ; $4ee1: $fe $02
    jp z, Jump_00b_4f33                           ; $4ee3: $ca $33 $4f

    cp $03                                        ; $4ee6: $fe $03
    jp z, Jump_00b_4f3b                           ; $4ee8: $ca $3b $4f

    jp Jump_00b_4f44                              ; $4eeb: $c3 $44 $4f


Jump_00b_4eee:
    call Call_000_2e3b                            ; $4eee: $cd $3b $2e
    ld de, $d658                                  ; $4ef1: $11 $58 $d6
    push de                                       ; $4ef4: $d5
    rst $18                                       ; $4ef5: $df
    ld d, b                                       ; $4ef6: $50
    ld [bc], a                                    ; $4ef7: $02
    pop hl                                        ; $4ef8: $e1
    ld b, $01                                     ; $4ef9: $06 $01
    rst $18                                       ; $4efb: $df
    inc c                                         ; $4efc: $0c
    ld b, $fe                                     ; $4efd: $06 $fe
    rst $38                                       ; $4eff: $ff
    jr z, jr_00b_4f44                             ; $4f00: $28 $42

    ld b, a                                       ; $4f02: $47
    ld hl, $c800                                  ; $4f03: $21 $00 $c8
    rst $18                                       ; $4f06: $df
    ld b, $02                                     ; $4f07: $06 $02
    call Call_000_2b54                            ; $4f09: $cd $54 $2b
    call Call_000_2e3b                            ; $4f0c: $cd $3b $2e
    jr jr_00b_4ed1                                ; $4f0f: $18 $c0

jr_00b_4f11:
    call Call_000_2e3b                            ; $4f11: $cd $3b $2e
    ld a, $01                                     ; $4f14: $3e $01
    ld b, $01                                     ; $4f16: $06 $01
    rst $18                                       ; $4f18: $df
    ld [hl+], a                                   ; $4f19: $22
    ld b, c                                       ; $4f1a: $41
    rst $08                                       ; $4f1b: $cf
    ld bc, $b218                                  ; $4f1c: $01 $18 $b2

Jump_00b_4f1f:
    call Call_000_2e3b                            ; $4f1f: $cd $3b $2e
    ld a, $06                                     ; $4f22: $3e $06
    ldh [$96], a                                  ; $4f24: $e0 $96
    ldh [rSVBK], a                                ; $4f26: $e0 $70
    ld a, $01                                     ; $4f28: $3e $01
    ld [$d23b], a                                 ; $4f2a: $ea $3b $d2
    rst $18                                       ; $4f2d: $df
    inc c                                         ; $4f2e: $0c
    inc c                                         ; $4f2f: $0c
    jp Jump_00b_4ed1                              ; $4f30: $c3 $d1 $4e


Jump_00b_4f33:
    call Call_000_2e3b                            ; $4f33: $cd $3b $2e
    rst $18                                       ; $4f36: $df
    ld b, $0c                                     ; $4f37: $06 $0c
    jr jr_00b_4ed1                                ; $4f39: $18 $96

Jump_00b_4f3b:
    call Call_000_2e3b                            ; $4f3b: $cd $3b $2e
    rst $18                                       ; $4f3e: $df
    ld e, b                                       ; $4f3f: $58
    ld a, [bc]                                    ; $4f40: $0a
    jp Jump_00b_4ed1                              ; $4f41: $c3 $d1 $4e


Jump_00b_4f44:
jr_00b_4f44:
    call Call_000_2e3b                            ; $4f44: $cd $3b $2e
    pop af                                        ; $4f47: $f1
    ldh [$96], a                                  ; $4f48: $e0 $96
    ldh [rSVBK], a                                ; $4f4a: $e0 $70
    pop hl                                        ; $4f4c: $e1
    pop de                                        ; $4f4d: $d1
    pop bc                                        ; $4f4e: $c1
    pop af                                        ; $4f4f: $f1
    ret                                           ; $4f50: $c9


Call_00b_4f51:
    push bc                                       ; $4f51: $c5
    push de                                       ; $4f52: $d5
    ld de, $d658                                  ; $4f53: $11 $58 $d6
    push de                                       ; $4f56: $d5
    rst $18                                       ; $4f57: $df
    ld d, b                                       ; $4f58: $50
    ld [bc], a                                    ; $4f59: $02
    pop hl                                        ; $4f5a: $e1
    push af                                       ; $4f5b: $f5
    or a                                          ; $4f5c: $b7
    jr nz, jr_00b_4f62                            ; $4f5d: $20 $03

    call Call_00b_4f66                            ; $4f5f: $cd $66 $4f

jr_00b_4f62:
    pop af                                        ; $4f62: $f1
    pop de                                        ; $4f63: $d1
    pop bc                                        ; $4f64: $c1
    ret                                           ; $4f65: $c9


Call_00b_4f66:
    ld a, $01                                     ; $4f66: $3e $01
    ldh [$96], a                                  ; $4f68: $e0 $96
    ldh [rSVBK], a                                ; $4f6a: $e0 $70
    ld hl, $4c38                                  ; $4f6c: $21 $38 $4c
    ld de, $d000                                  ; $4f6f: $11 $00 $d0
    call Call_000_0234                            ; $4f72: $cd $34 $02
    ld hl, $4c36                                  ; $4f75: $21 $36 $4c
    ld de, $d080                                  ; $4f78: $11 $80 $d0
    call Call_000_0234                            ; $4f7b: $cd $34 $02
    ld hl, $d000                                  ; $4f7e: $21 $00 $d0
    ld de, $b982                                  ; $4f81: $11 $82 $b9
    ld c, $08                                     ; $4f84: $0e $08
    call Call_000_0468                            ; $4f86: $cd $68 $04
    ld hl, $d080                                  ; $4f89: $21 $80 $d0
    ld de, $9982                                  ; $4f8c: $11 $82 $99
    ld c, $08                                     ; $4f8f: $0e $08
    call Call_000_0468                            ; $4f91: $cd $68 $04
    call Call_00b_4f98                            ; $4f94: $cd $98 $4f
    ret                                           ; $4f97: $c9


Call_00b_4f98:
    push af                                       ; $4f98: $f5
    push bc                                       ; $4f99: $c5
    push de                                       ; $4f9a: $d5
    push hl                                       ; $4f9b: $e5

jr_00b_4f9c:
    call Call_000_2e3b                            ; $4f9c: $cd $3b $2e
    ldh a, [$94]                                  ; $4f9f: $f0 $94
    or a                                          ; $4fa1: $b7
    jr z, jr_00b_4f9c                             ; $4fa2: $28 $f8

    call Call_000_2e3b                            ; $4fa4: $cd $3b $2e
    pop hl                                        ; $4fa7: $e1
    pop de                                        ; $4fa8: $d1
    pop bc                                        ; $4fa9: $c1
    pop af                                        ; $4faa: $f1
    ret                                           ; $4fab: $c9


Call_00b_4fac:
    push af                                       ; $4fac: $f5
    ld c, $10                                     ; $4fad: $0e $10
    call Call_000_25a1                            ; $4faf: $cd $a1 $25
    call Call_000_2625                            ; $4fb2: $cd $25 $26
    pop af                                        ; $4fb5: $f1
    ret                                           ; $4fb6: $c9


    push hl                                       ; $4fb7: $e5
    push de                                       ; $4fb8: $d5
    push bc                                       ; $4fb9: $c5
    ldh a, [$96]                                  ; $4fba: $f0 $96
    push af                                       ; $4fbc: $f5
    rst $18                                       ; $4fbd: $df
    ld [bc], a                                    ; $4fbe: $02
    ld [bc], a                                    ; $4fbf: $02
    or a                                          ; $4fc0: $b7
    jr z, jr_00b_4fc7                             ; $4fc1: $28 $04

    ld a, $ff                                     ; $4fc3: $3e $ff
    jr jr_00b_4fda                                ; $4fc5: $18 $13

jr_00b_4fc7:
    ld a, $06                                     ; $4fc7: $3e $06
    ldh [$96], a                                  ; $4fc9: $e0 $96
    ldh [rSVBK], a                                ; $4fcb: $e0 $70
    ld hl, $dc00                                  ; $4fcd: $21 $00 $dc
    ld b, $03                                     ; $4fd0: $06 $03
    rst $18                                       ; $4fd2: $df
    ld b, $02                                     ; $4fd3: $06 $02
    or a                                          ; $4fd5: $b7
    jr z, jr_00b_4fda                             ; $4fd6: $28 $02

    ld a, $ff                                     ; $4fd8: $3e $ff

jr_00b_4fda:
    ld b, a                                       ; $4fda: $47
    pop af                                        ; $4fdb: $f1
    ldh [$96], a                                  ; $4fdc: $e0 $96
    ldh [rSVBK], a                                ; $4fde: $e0 $70
    ld a, b                                       ; $4fe0: $78
    pop bc                                        ; $4fe1: $c1
    pop de                                        ; $4fe2: $d1
    pop hl                                        ; $4fe3: $e1
    ret                                           ; $4fe4: $c9


Call_00b_4fe5:
    ldh a, [$96]                                  ; $4fe5: $f0 $96
    push af                                       ; $4fe7: $f5
    ld a, $06                                     ; $4fe8: $3e $06
    ldh [$96], a                                  ; $4fea: $e0 $96
    ldh [rSVBK], a                                ; $4fec: $e0 $70
    ld h, $00                                     ; $4fee: $26 $00
    ld l, b                                       ; $4ff0: $68
    ld a, $32                                     ; $4ff1: $3e $32
    call Call_000_08b9                            ; $4ff3: $cd $b9 $08
    ld de, $dc00                                  ; $4ff6: $11 $00 $dc
    add hl, de                                    ; $4ff9: $19
    ld d, h                                       ; $4ffa: $54
    ld e, l                                       ; $4ffb: $5d
    ld hl, $d224                                  ; $4ffc: $21 $24 $d2
    ld a, e                                       ; $4fff: $7b
    ld [hl+], a                                   ; $5000: $22
    ld a, d                                       ; $5001: $7a
    ld [hl], a                                    ; $5002: $77
    pop af                                        ; $5003: $f1
    ldh [$96], a                                  ; $5004: $e0 $96
    ldh [rSVBK], a                                ; $5006: $e0 $70
    ret                                           ; $5008: $c9


Call_00b_5009:
    push af                                       ; $5009: $f5
    push hl                                       ; $500a: $e5
    push de                                       ; $500b: $d5
    ldh a, [$96]                                  ; $500c: $f0 $96
    push af                                       ; $500e: $f5
    ld a, $06                                     ; $500f: $3e $06
    ldh [$96], a                                  ; $5011: $e0 $96
    ldh [rSVBK], a                                ; $5013: $e0 $70
    bit 7, b                                      ; $5015: $cb $78
    jr z, jr_00b_501d                             ; $5017: $28 $04

    ld b, $00                                     ; $5019: $06 $00
    jr jr_00b_5024                                ; $501b: $18 $07

jr_00b_501d:
    ld a, b                                       ; $501d: $78
    cp $06                                        ; $501e: $fe $06
    jr c, jr_00b_5024                             ; $5020: $38 $02

    ld b, $05                                     ; $5022: $06 $05

jr_00b_5024:
    bit 7, c                                      ; $5024: $cb $79
    jr z, jr_00b_502c                             ; $5026: $28 $04

    ld c, $00                                     ; $5028: $0e $00
    jr jr_00b_5033                                ; $502a: $18 $07

jr_00b_502c:
    ld a, c                                       ; $502c: $79
    cp $06                                        ; $502d: $fe $06
    jr c, jr_00b_5033                             ; $502f: $38 $02

    ld c, $05                                     ; $5031: $0e $05

jr_00b_5033:
    push bc                                       ; $5033: $c5
    ld hl, $dc00                                  ; $5034: $21 $00 $dc
    ld de, $015f                                  ; $5037: $11 $5f $01
    add hl, de                                    ; $503a: $19
    ld a, b                                       ; $503b: $78
    add l                                         ; $503c: $85
    ld l, a                                       ; $503d: $6f
    jr nc, jr_00b_5041                            ; $503e: $30 $01

    inc h                                         ; $5040: $24

jr_00b_5041:
    ld a, [hl+]                                   ; $5041: $2a
    ld h, [hl]                                    ; $5042: $66
    ld l, a                                       ; $5043: $6f
    push hl                                       ; $5044: $e5
    ld c, $06                                     ; $5045: $0e $06
    ld a, l                                       ; $5047: $7d
    ld b, $00                                     ; $5048: $06 $00

jr_00b_504a:
    bit 0, a                                      ; $504a: $cb $47
    jr z, jr_00b_504f                             ; $504c: $28 $01

    inc b                                         ; $504e: $04

jr_00b_504f:
    srl a                                         ; $504f: $cb $3f
    dec c                                         ; $5051: $0d
    jr nz, jr_00b_504a                            ; $5052: $20 $f6

    ld d, b                                       ; $5054: $50
    pop hl                                        ; $5055: $e1
    pop bc                                        ; $5056: $c1
    ld a, c                                       ; $5057: $79

jr_00b_5058:
    or a                                          ; $5058: $b7
    jr z, jr_00b_5060                             ; $5059: $28 $05

    dec a                                         ; $505b: $3d
    srl l                                         ; $505c: $cb $3d
    jr jr_00b_5058                                ; $505e: $18 $f8

jr_00b_5060:
    ld a, l                                       ; $5060: $7d
    and $01                                       ; $5061: $e6 $01
    ld c, a                                       ; $5063: $4f
    ld b, d                                       ; $5064: $42
    pop af                                        ; $5065: $f1
    ldh [$96], a                                  ; $5066: $e0 $96
    ldh [rSVBK], a                                ; $5068: $e0 $70
    pop de                                        ; $506a: $d1
    pop hl                                        ; $506b: $e1
    pop af                                        ; $506c: $f1
    ret                                           ; $506d: $c9


    push af                                       ; $506e: $f5
    push bc                                       ; $506f: $c5
    push de                                       ; $5070: $d5
    push hl                                       ; $5071: $e5
    ldh a, [$96]                                  ; $5072: $f0 $96
    push af                                       ; $5074: $f5
    ld a, $06                                     ; $5075: $3e $06
    ldh [$96], a                                  ; $5077: $e0 $96
    ldh [rSVBK], a                                ; $5079: $e0 $70
    ld hl, $dc00                                  ; $507b: $21 $00 $dc
    ld de, $015e                                  ; $507e: $11 $5e $01
    add hl, de                                    ; $5081: $19
    ld a, [hl]                                    ; $5082: $7e
    ld b, a                                       ; $5083: $47
    ld c, $06                                     ; $5084: $0e $06
    ld d, $01                                     ; $5086: $16 $01
    ld a, $00                                     ; $5088: $3e $00

jr_00b_508a:
    bit 0, b                                      ; $508a: $cb $40
    jr z, jr_00b_5091                             ; $508c: $28 $03

    ld a, d                                       ; $508e: $7a
    jr jr_00b_5098                                ; $508f: $18 $07

jr_00b_5091:
    srl b                                         ; $5091: $cb $38
    inc d                                         ; $5093: $14
    dec c                                         ; $5094: $0d
    jr nz, jr_00b_508a                            ; $5095: $20 $f3

    ld a, b                                       ; $5097: $78

jr_00b_5098:
    bit 7, a                                      ; $5098: $cb $7f
    jr nz, jr_00b_50a2                            ; $509a: $20 $06

    cp $06                                        ; $509c: $fe $06
    jr nc, jr_00b_50a6                            ; $509e: $30 $06

    jr jr_00b_50a8                                ; $50a0: $18 $06

jr_00b_50a2:
    ld a, $00                                     ; $50a2: $3e $00
    jr jr_00b_50a8                                ; $50a4: $18 $02

jr_00b_50a6:
    ld a, $06                                     ; $50a6: $3e $06

jr_00b_50a8:
    ld hl, $d226                                  ; $50a8: $21 $26 $d2
    ld [hl], a                                    ; $50ab: $77
    pop af                                        ; $50ac: $f1
    ldh [$96], a                                  ; $50ad: $e0 $96
    ldh [rSVBK], a                                ; $50af: $e0 $70
    pop hl                                        ; $50b1: $e1
    pop de                                        ; $50b2: $d1
    pop bc                                        ; $50b3: $c1
    pop af                                        ; $50b4: $f1
    ret                                           ; $50b5: $c9


    push af                                       ; $50b6: $f5
    push bc                                       ; $50b7: $c5
    push de                                       ; $50b8: $d5
    push hl                                       ; $50b9: $e5
    ldh a, [$96]                                  ; $50ba: $f0 $96
    push af                                       ; $50bc: $f5
    ld b, $01                                     ; $50bd: $06 $01
    rst $30                                       ; $50bf: $f7
    nop                                           ; $50c0: $00
    ld c, $28                                     ; $50c1: $0e $28
    ld bc, $f704                                  ; $50c3: $01 $04 $f7
    jr nz, jr_00b_50d6                            ; $50c6: $20 $0e

    jr z, jr_00b_50cb                             ; $50c8: $28 $01

    inc b                                         ; $50ca: $04

jr_00b_50cb:
    rst $30                                       ; $50cb: $f7
    ld b, b                                       ; $50cc: $40
    ld c, $28                                     ; $50cd: $0e $28
    ld bc, $f704                                  ; $50cf: $01 $04 $f7
    ld h, b                                       ; $50d2: $60
    ld de, $0128                                  ; $50d3: $11 $28 $01

jr_00b_50d6:
    inc b                                         ; $50d6: $04
    ld a, $06                                     ; $50d7: $3e $06
    ldh [$96], a                                  ; $50d9: $e0 $96
    ldh [rSVBK], a                                ; $50db: $e0 $70
    ld a, b                                       ; $50dd: $78
    ld [$d226], a                                 ; $50de: $ea $26 $d2
    pop af                                        ; $50e1: $f1
    ldh [$96], a                                  ; $50e2: $e0 $96
    ldh [rSVBK], a                                ; $50e4: $e0 $70
    pop hl                                        ; $50e6: $e1
    pop de                                        ; $50e7: $d1
    pop bc                                        ; $50e8: $c1
    pop af                                        ; $50e9: $f1
    ret                                           ; $50ea: $c9


    push af                                       ; $50eb: $f5
    push bc                                       ; $50ec: $c5
    push de                                       ; $50ed: $d5
    push hl                                       ; $50ee: $e5
    ldh a, [$96]                                  ; $50ef: $f0 $96
    push af                                       ; $50f1: $f5
    ld a, $06                                     ; $50f2: $3e $06
    ldh [$96], a                                  ; $50f4: $e0 $96
    ldh [rSVBK], a                                ; $50f6: $e0 $70
    ld a, $00                                     ; $50f8: $3e $00
    ld c, $00                                     ; $50fa: $0e $00
    ld e, $06                                     ; $50fc: $1e $06

jr_00b_50fe:
    ld b, c                                       ; $50fe: $41
    push bc                                       ; $50ff: $c5
    call Call_00b_5009                            ; $5100: $cd $09 $50
    add b                                         ; $5103: $80
    pop bc                                        ; $5104: $c1
    inc c                                         ; $5105: $0c
    dec e                                         ; $5106: $1d
    jr nz, jr_00b_50fe                            ; $5107: $20 $f5

    ld b, $00                                     ; $5109: $06 $00
    cp $04                                        ; $510b: $fe $04
    jr c, jr_00b_5124                             ; $510d: $38 $15

    inc b                                         ; $510f: $04
    cp $08                                        ; $5110: $fe $08
    jr c, jr_00b_5124                             ; $5112: $38 $10

    inc b                                         ; $5114: $04
    cp $0c                                        ; $5115: $fe $0c
    jr c, jr_00b_5124                             ; $5117: $38 $0b

    inc b                                         ; $5119: $04
    cp $10                                        ; $511a: $fe $10
    jr c, jr_00b_5124                             ; $511c: $38 $06

    inc b                                         ; $511e: $04
    cp $14                                        ; $511f: $fe $14
    jr c, jr_00b_5124                             ; $5121: $38 $01

    inc b                                         ; $5123: $04

jr_00b_5124:
    ld hl, $d226                                  ; $5124: $21 $26 $d2
    ld a, b                                       ; $5127: $78
    ld [hl], a                                    ; $5128: $77
    pop af                                        ; $5129: $f1
    ldh [$96], a                                  ; $512a: $e0 $96
    ldh [rSVBK], a                                ; $512c: $e0 $70
    pop hl                                        ; $512e: $e1
    pop de                                        ; $512f: $d1
    pop bc                                        ; $5130: $c1
    pop af                                        ; $5131: $f1
    ret                                           ; $5132: $c9


    push hl                                       ; $5133: $e5
    push de                                       ; $5134: $d5
    ldh a, [$96]                                  ; $5135: $f0 $96
    push af                                       ; $5137: $f5
    ld a, $06                                     ; $5138: $3e $06
    ldh [$96], a                                  ; $513a: $e0 $96
    ldh [rSVBK], a                                ; $513c: $e0 $70
    ld hl, $dc00                                  ; $513e: $21 $00 $dc
    ld de, $0166                                  ; $5141: $11 $66 $01
    add hl, de                                    ; $5144: $19
    push hl                                       ; $5145: $e5
    ld hl, $5209                                  ; $5146: $21 $09 $52
    ld d, $00                                     ; $5149: $16 $00
    ld e, b                                       ; $514b: $58
    add hl, de                                    ; $514c: $19
    ld a, [hl]                                    ; $514d: $7e
    ld h, $00                                     ; $514e: $26 $00
    ld l, a                                       ; $5150: $6f
    add hl, hl                                    ; $5151: $29
    add hl, hl                                    ; $5152: $29
    ld d, h                                       ; $5153: $54
    ld e, l                                       ; $5154: $5d
    pop hl                                        ; $5155: $e1
    add hl, de                                    ; $5156: $19
    push hl                                       ; $5157: $e5
    ld a, [hl+]                                   ; $5158: $2a
    ld d, [hl]                                    ; $5159: $56
    ld e, a                                       ; $515a: $5f
    pop hl                                        ; $515b: $e1
    inc hl                                        ; $515c: $23
    inc hl                                        ; $515d: $23
    ld a, [hl+]                                   ; $515e: $2a
    ld h, [hl]                                    ; $515f: $66
    ld l, a                                       ; $5160: $6f
    push de                                       ; $5161: $d5
    push hl                                       ; $5162: $e5
    ld hl, $5209                                  ; $5163: $21 $09 $52
    ld d, $00                                     ; $5166: $16 $00
    ld e, c                                       ; $5168: $59
    add hl, de                                    ; $5169: $19
    ld a, [hl+]                                   ; $516a: $2a
    ld h, [hl]                                    ; $516b: $66
    ld l, a                                       ; $516c: $6f
    ld a, l                                       ; $516d: $7d
    ld c, l                                       ; $516e: $4d
    cp $08                                        ; $516f: $fe $08
    jr nc, jr_00b_5177                            ; $5171: $30 $04

    pop hl                                        ; $5173: $e1
    ld b, l                                       ; $5174: $45
    jr jr_00b_517b                                ; $5175: $18 $04

jr_00b_5177:
    add $f8                                       ; $5177: $c6 $f8
    pop hl                                        ; $5179: $e1
    ld b, h                                       ; $517a: $44

jr_00b_517b:
    bit 7, a                                      ; $517b: $cb $7f
    jr z, jr_00b_5181                             ; $517d: $28 $02

    ld a, $00                                     ; $517f: $3e $00

jr_00b_5181:
    or a                                          ; $5181: $b7
    jr z, jr_00b_5189                             ; $5182: $28 $05

    srl b                                         ; $5184: $cb $38
    dec a                                         ; $5186: $3d
    jr jr_00b_5181                                ; $5187: $18 $f8

jr_00b_5189:
    pop de                                        ; $5189: $d1
    ld a, b                                       ; $518a: $78
    and $01                                       ; $518b: $e6 $01
    or a                                          ; $518d: $b7
    jr z, jr_00b_5194                             ; $518e: $28 $04

    ld a, $02                                     ; $5190: $3e $02
    jr jr_00b_51b0                                ; $5192: $18 $1c

jr_00b_5194:
    ld a, c                                       ; $5194: $79
    cp $08                                        ; $5195: $fe $08
    jr nc, jr_00b_519c                            ; $5197: $30 $03

    ld b, e                                       ; $5199: $43
    jr jr_00b_519f                                ; $519a: $18 $03

jr_00b_519c:
    add $f8                                       ; $519c: $c6 $f8
    ld b, d                                       ; $519e: $42

jr_00b_519f:
    bit 7, a                                      ; $519f: $cb $7f
    jr z, jr_00b_51a5                             ; $51a1: $28 $02

    ld a, $00                                     ; $51a3: $3e $00

jr_00b_51a5:
    or a                                          ; $51a5: $b7
    jr z, jr_00b_51ad                             ; $51a6: $28 $05

    srl b                                         ; $51a8: $cb $38
    dec a                                         ; $51aa: $3d
    jr jr_00b_51a5                                ; $51ab: $18 $f8

jr_00b_51ad:
    ld a, b                                       ; $51ad: $78
    and $01                                       ; $51ae: $e6 $01

jr_00b_51b0:
    ld c, a                                       ; $51b0: $4f
    pop af                                        ; $51b1: $f1
    ldh [$96], a                                  ; $51b2: $e0 $96
    ldh [rSVBK], a                                ; $51b4: $e0 $70
    pop de                                        ; $51b6: $d1
    pop hl                                        ; $51b7: $e1
    ret                                           ; $51b8: $c9


    push bc                                       ; $51b9: $c5
    push hl                                       ; $51ba: $e5
    push de                                       ; $51bb: $d5
    ldh a, [$96]                                  ; $51bc: $f0 $96
    push af                                       ; $51be: $f5
    ld a, c                                       ; $51bf: $79
    ld hl, $51f7                                  ; $51c0: $21 $f7 $51
    add l                                         ; $51c3: $85
    ld l, a                                       ; $51c4: $6f
    jr nc, jr_00b_51c8                            ; $51c5: $30 $01

    inc h                                         ; $51c7: $24

jr_00b_51c8:
    ld a, [hl]                                    ; $51c8: $7e
    add $0e                                       ; $51c9: $c6 $0e
    ld c, a                                       ; $51cb: $4f
    call Call_00b_4fe5                            ; $51cc: $cd $e5 $4f
    ld hl, $d224                                  ; $51cf: $21 $24 $d2
    ld a, [hl+]                                   ; $51d2: $2a
    ld h, [hl]                                    ; $51d3: $66
    ld l, a                                       ; $51d4: $6f
    ld a, c                                       ; $51d5: $79
    add l                                         ; $51d6: $85
    ld l, a                                       ; $51d7: $6f
    jr nc, jr_00b_51db                            ; $51d8: $30 $01

    inc h                                         ; $51da: $24

jr_00b_51db:
    ld a, [hl]                                    ; $51db: $7e
    ld b, a                                       ; $51dc: $47
    pop af                                        ; $51dd: $f1
    ldh [$96], a                                  ; $51de: $e0 $96
    ldh [rSVBK], a                                ; $51e0: $e0 $70
    ld a, b                                       ; $51e2: $78
    pop de                                        ; $51e3: $d1
    pop hl                                        ; $51e4: $e1
    pop bc                                        ; $51e5: $c1
    ret                                           ; $51e6: $c9


    push hl                                       ; $51e7: $e5
    push af                                       ; $51e8: $f5
    ld hl, $521b                                  ; $51e9: $21 $1b $52
    ld a, c                                       ; $51ec: $79
    add l                                         ; $51ed: $85
    ld l, a                                       ; $51ee: $6f
    jr nc, jr_00b_51f2                            ; $51ef: $30 $01

    inc h                                         ; $51f1: $24

jr_00b_51f2:
    ld a, [hl]                                    ; $51f2: $7e
    ld c, a                                       ; $51f3: $4f
    pop af                                        ; $51f4: $f1
    pop hl                                        ; $51f5: $e1
    ret                                           ; $51f6: $c9


    nop                                           ; $51f7: $00
    ld bc, $0305                                  ; $51f8: $01 $05 $03
    inc b                                         ; $51fb: $04
    ld a, [bc]                                    ; $51fc: $0a
    ld b, $07                                     ; $51fd: $06 $07
    ld [$0209], sp                                ; $51ff: $08 $09 $02
    dec bc                                        ; $5202: $0b
    inc c                                         ; $5203: $0c
    dec c                                         ; $5204: $0d
    ld c, $0f                                     ; $5205: $0e $0f
    db $10                                        ; $5207: $10
    ld de, $0100                                  ; $5208: $11 $00 $01
    dec b                                         ; $520b: $05
    inc bc                                        ; $520c: $03
    inc b                                         ; $520d: $04
    ld a, [bc]                                    ; $520e: $0a
    ld b, $07                                     ; $520f: $06 $07
    ld [$0209], sp                                ; $5211: $08 $09 $02
    dec bc                                        ; $5214: $0b
    inc c                                         ; $5215: $0c
    dec c                                         ; $5216: $0d
    ld c, $0f                                     ; $5217: $0e $0f
    db $10                                        ; $5219: $10
    ld de, $0100                                  ; $521a: $11 $00 $01
    ld a, [bc]                                    ; $521d: $0a
    inc bc                                        ; $521e: $03
    inc b                                         ; $521f: $04
    ld [bc], a                                    ; $5220: $02
    ld b, $07                                     ; $5221: $06 $07
    ld [$0509], sp                                ; $5223: $08 $09 $05
    dec bc                                        ; $5226: $0b
    inc c                                         ; $5227: $0c
    dec c                                         ; $5228: $0d
    ld c, $0f                                     ; $5229: $0e $0f
    db $10                                        ; $522b: $10
    ld de, $c5f5                                  ; $522c: $11 $f5 $c5
    push de                                       ; $522f: $d5
    ldh a, [$96]                                  ; $5230: $f0 $96
    push af                                       ; $5232: $f5
    ld a, $06                                     ; $5233: $3e $06
    ldh [$96], a                                  ; $5235: $e0 $96
    ldh [rSVBK], a                                ; $5237: $e0 $70
    ld hl, $0000                                  ; $5239: $21 $00 $00
    ld de, $0032                                  ; $523c: $11 $32 $00

jr_00b_523f:
    ld a, b                                       ; $523f: $78
    or a                                          ; $5240: $b7
    jr z, jr_00b_5247                             ; $5241: $28 $04

    dec b                                         ; $5243: $05
    add hl, de                                    ; $5244: $19
    jr jr_00b_523f                                ; $5245: $18 $f8

jr_00b_5247:
    ld de, $dc00                                  ; $5247: $11 $00 $dc
    add hl, de                                    ; $524a: $19
    ld a, c                                       ; $524b: $79
    add a                                         ; $524c: $87
    add a                                         ; $524d: $87
    add c                                         ; $524e: $81
    ld d, $00                                     ; $524f: $16 $00
    ld e, a                                       ; $5251: $5f
    add hl, de                                    ; $5252: $19
    ld de, $0020                                  ; $5253: $11 $20 $00
    add hl, de                                    ; $5256: $19
    pop af                                        ; $5257: $f1
    ldh [$96], a                                  ; $5258: $e0 $96
    ldh [rSVBK], a                                ; $525a: $e0 $70
    pop de                                        ; $525c: $d1
    pop bc                                        ; $525d: $c1
    pop af                                        ; $525e: $f1
    ret                                           ; $525f: $c9


    push hl                                       ; $5260: $e5
    push de                                       ; $5261: $d5
    push bc                                       ; $5262: $c5
    ldh a, [$96]                                  ; $5263: $f0 $96
    push af                                       ; $5265: $f5
    ld a, $06                                     ; $5266: $3e $06
    ldh [$96], a                                  ; $5268: $e0 $96
    ldh [rSVBK], a                                ; $526a: $e0 $70
    ld hl, $dc00                                  ; $526c: $21 $00 $dc
    ld a, $04                                     ; $526f: $3e $04
    add c                                         ; $5271: $81
    ld b, a                                       ; $5272: $47
    rst $18                                       ; $5273: $df
    ld b, $02                                     ; $5274: $06 $02
    or a                                          ; $5276: $b7
    jr z, jr_00b_527d                             ; $5277: $28 $04

    ld a, $ff                                     ; $5279: $3e $ff
    jr jr_00b_528b                                ; $527b: $18 $0e

jr_00b_527d:
    ld a, $06                                     ; $527d: $3e $06
    ldh [$96], a                                  ; $527f: $e0 $96
    ldh [rSVBK], a                                ; $5281: $e0 $70
    ld hl, $dc00                                  ; $5283: $21 $00 $dc
    ld de, $000b                                  ; $5286: $11 $0b $00
    add hl, de                                    ; $5289: $19
    ld a, [hl]                                    ; $528a: $7e

jr_00b_528b:
    ld b, a                                       ; $528b: $47
    pop af                                        ; $528c: $f1
    ldh [$96], a                                  ; $528d: $e0 $96
    ldh [rSVBK], a                                ; $528f: $e0 $70
    ld a, b                                       ; $5291: $78
    pop bc                                        ; $5292: $c1
    pop de                                        ; $5293: $d1
    pop hl                                        ; $5294: $e1
    ret                                           ; $5295: $c9


    push bc                                       ; $5296: $c5
    push hl                                       ; $5297: $e5
    push de                                       ; $5298: $d5
    ldh a, [$96]                                  ; $5299: $f0 $96
    push af                                       ; $529b: $f5
    ld a, $06                                     ; $529c: $3e $06
    ldh [$96], a                                  ; $529e: $e0 $96
    ldh [rSVBK], a                                ; $52a0: $e0 $70
    ld a, c                                       ; $52a2: $79
    ld hl, $0000                                  ; $52a3: $21 $00 $00
    ld de, $0080                                  ; $52a6: $11 $80 $00

jr_00b_52a9:
    or a                                          ; $52a9: $b7
    jr z, jr_00b_52b0                             ; $52aa: $28 $04

    add hl, de                                    ; $52ac: $19
    dec a                                         ; $52ad: $3d
    jr jr_00b_52a9                                ; $52ae: $18 $f9

jr_00b_52b0:
    ld de, $0010                                  ; $52b0: $11 $10 $00
    add hl, de                                    ; $52b3: $19
    ld d, h                                       ; $52b4: $54
    ld e, l                                       ; $52b5: $5d
    ld hl, $dc00                                  ; $52b6: $21 $00 $dc
    add hl, de                                    ; $52b9: $19
    ld a, [hl]                                    ; $52ba: $7e
    bit 7, a                                      ; $52bb: $cb $7f
    jr nz, jr_00b_52c5                            ; $52bd: $20 $06

    cp $0b                                        ; $52bf: $fe $0b
    jr nc, jr_00b_52c5                            ; $52c1: $30 $02

    jr jr_00b_52c7                                ; $52c3: $18 $02

jr_00b_52c5:
    ld a, $ff                                     ; $52c5: $3e $ff

jr_00b_52c7:
    ld b, a                                       ; $52c7: $47
    pop af                                        ; $52c8: $f1
    ldh [$96], a                                  ; $52c9: $e0 $96
    ldh [rSVBK], a                                ; $52cb: $e0 $70
    ld a, b                                       ; $52cd: $78
    pop de                                        ; $52ce: $d1
    pop hl                                        ; $52cf: $e1
    pop bc                                        ; $52d0: $c1
    ret                                           ; $52d1: $c9


    push af                                       ; $52d2: $f5
    push hl                                       ; $52d3: $e5
    push de                                       ; $52d4: $d5
    ldh a, [$96]                                  ; $52d5: $f0 $96
    push af                                       ; $52d7: $f5
    ld a, $06                                     ; $52d8: $3e $06
    ldh [$96], a                                  ; $52da: $e0 $96
    ldh [rSVBK], a                                ; $52dc: $e0 $70
    ld a, c                                       ; $52de: $79
    ld hl, $0000                                  ; $52df: $21 $00 $00
    ld de, $0080                                  ; $52e2: $11 $80 $00

jr_00b_52e5:
    or a                                          ; $52e5: $b7
    jr z, jr_00b_52ec                             ; $52e6: $28 $04

    add hl, de                                    ; $52e8: $19
    dec a                                         ; $52e9: $3d
    jr jr_00b_52e5                                ; $52ea: $18 $f9

jr_00b_52ec:
    ld de, $0020                                  ; $52ec: $11 $20 $00
    add hl, de                                    ; $52ef: $19
    ld d, h                                       ; $52f0: $54
    ld e, l                                       ; $52f1: $5d
    ld hl, $dc00                                  ; $52f2: $21 $00 $dc
    add hl, de                                    ; $52f5: $19
    ld a, [hl+]                                   ; $52f6: $2a
    ld b, a                                       ; $52f7: $47
    ld a, [hl]                                    ; $52f8: $7e
    ld c, a                                       ; $52f9: $4f
    pop af                                        ; $52fa: $f1
    ldh [$96], a                                  ; $52fb: $e0 $96
    ldh [rSVBK], a                                ; $52fd: $e0 $70
    pop de                                        ; $52ff: $d1
    pop hl                                        ; $5300: $e1
    pop af                                        ; $5301: $f1
    ret                                           ; $5302: $c9


    push af                                       ; $5303: $f5
    push hl                                       ; $5304: $e5
    push de                                       ; $5305: $d5
    ldh a, [$96]                                  ; $5306: $f0 $96
    push af                                       ; $5308: $f5
    ld a, $06                                     ; $5309: $3e $06
    ldh [$96], a                                  ; $530b: $e0 $96
    ldh [rSVBK], a                                ; $530d: $e0 $70
    bit 7, c                                      ; $530f: $cb $79
    jr z, jr_00b_5317                             ; $5311: $28 $04

    ld c, $00                                     ; $5313: $0e $00
    jr jr_00b_531e                                ; $5315: $18 $07

jr_00b_5317:
    ld a, c                                       ; $5317: $79
    cp $12                                        ; $5318: $fe $12
    jr c, jr_00b_531e                             ; $531a: $38 $02

    ld c, $11                                     ; $531c: $0e $11

jr_00b_531e:
    ld hl, $d224                                  ; $531e: $21 $24 $d2
    ld a, [hl+]                                   ; $5321: $2a
    ld h, [hl]                                    ; $5322: $66
    ld l, a                                       ; $5323: $6f
    ld a, $2f                                     ; $5324: $3e $2f
    add l                                         ; $5326: $85
    ld l, a                                       ; $5327: $6f
    jr nc, jr_00b_532b                            ; $5328: $30 $01

    inc h                                         ; $532a: $24

jr_00b_532b:
    push hl                                       ; $532b: $e5
    ld d, $02                                     ; $532c: $16 $02
    ld b, $00                                     ; $532e: $06 $00

jr_00b_5330:
    ld a, [hl+]                                   ; $5330: $2a

jr_00b_5331:
    bit 0, a                                      ; $5331: $cb $47
    jr z, jr_00b_5336                             ; $5333: $28 $01

    inc b                                         ; $5335: $04

jr_00b_5336:
    srl a                                         ; $5336: $cb $3f
    or a                                          ; $5338: $b7
    jr nz, jr_00b_5331                            ; $5339: $20 $f6

    dec d                                         ; $533b: $15
    jr nz, jr_00b_5330                            ; $533c: $20 $f2

    ld a, [hl+]                                   ; $533e: $2a
    srl a                                         ; $533f: $cb $3f
    srl a                                         ; $5341: $cb $3f
    srl a                                         ; $5343: $cb $3f
    srl a                                         ; $5345: $cb $3f
    srl a                                         ; $5347: $cb $3f
    srl a                                         ; $5349: $cb $3f
    bit 0, a                                      ; $534b: $cb $47
    jr z, jr_00b_5350                             ; $534d: $28 $01

    inc b                                         ; $534f: $04

jr_00b_5350:
    srl a                                         ; $5350: $cb $3f
    bit 0, a                                      ; $5352: $cb $47
    jr z, jr_00b_5357                             ; $5354: $28 $01

    inc b                                         ; $5356: $04

jr_00b_5357:
    pop hl                                        ; $5357: $e1
    ld a, c                                       ; $5358: $79
    cp $10                                        ; $5359: $fe $10
    jr nc, jr_00b_5368                            ; $535b: $30 $0b

    cp $08                                        ; $535d: $fe $08
    jr nc, jr_00b_5363                            ; $535f: $30 $02

    jr jr_00b_536c                                ; $5361: $18 $09

jr_00b_5363:
    sub $08                                       ; $5363: $d6 $08
    inc hl                                        ; $5365: $23
    jr jr_00b_536c                                ; $5366: $18 $04

jr_00b_5368:
    sub $10                                       ; $5368: $d6 $10
    inc hl                                        ; $536a: $23
    inc hl                                        ; $536b: $23

jr_00b_536c:
    ld c, a                                       ; $536c: $4f
    ld a, $07                                     ; $536d: $3e $07
    sub c                                         ; $536f: $91
    ld c, a                                       ; $5370: $4f
    ld a, [hl]                                    ; $5371: $7e
    ld d, a                                       ; $5372: $57
    ld a, c                                       ; $5373: $79
    or a                                          ; $5374: $b7
    jr z, jr_00b_537c                             ; $5375: $28 $05

jr_00b_5377:
    srl d                                         ; $5377: $cb $3a
    dec c                                         ; $5379: $0d
    jr nz, jr_00b_5377                            ; $537a: $20 $fb

jr_00b_537c:
    ld a, d                                       ; $537c: $7a
    and $01                                       ; $537d: $e6 $01
    or a                                          ; $537f: $b7
    jr z, jr_00b_5384                             ; $5380: $28 $02

    ld c, $01                                     ; $5382: $0e $01

jr_00b_5384:
    pop af                                        ; $5384: $f1
    ldh [$96], a                                  ; $5385: $e0 $96
    ldh [rSVBK], a                                ; $5387: $e0 $70
    pop de                                        ; $5389: $d1
    pop hl                                        ; $538a: $e1
    pop af                                        ; $538b: $f1
    ret                                           ; $538c: $c9


Call_00b_538d:
jr_00b_538d:
    ld a, b                                       ; $538d: $78
    ld [hl+], a                                   ; $538e: $22
    dec de                                        ; $538f: $1b
    ld a, d                                       ; $5390: $7a
    or e                                          ; $5391: $b3
    jr nz, jr_00b_538d                            ; $5392: $20 $f9

    ret                                           ; $5394: $c9


    push af                                       ; $5395: $f5
    push bc                                       ; $5396: $c5
    push de                                       ; $5397: $d5
    push hl                                       ; $5398: $e5
    ld b, a                                       ; $5399: $47
    ldh a, [$96]                                  ; $539a: $f0 $96
    push af                                       ; $539c: $f5
    ld a, b                                       ; $539d: $78
    push af                                       ; $539e: $f5
    ld hl, $5430                                  ; $539f: $21 $30 $54
    ld de, $8ff0                                  ; $53a2: $11 $f0 $8f
    ld c, $01                                     ; $53a5: $0e $01
    call Call_000_0468                            ; $53a7: $cd $68 $04
    ld hl, $5440                                  ; $53aa: $21 $40 $54
    ld de, $bc00                                  ; $53ad: $11 $00 $bc
    ld c, $10                                     ; $53b0: $0e $10
    call Call_000_0468                            ; $53b2: $cd $68 $04
    ld hl, $5540                                  ; $53b5: $21 $40 $55
    ld de, $9c00                                  ; $53b8: $11 $00 $9c
    ld c, $10                                     ; $53bb: $0e $10
    call Call_000_0468                            ; $53bd: $cd $68 $04
    call Call_000_2e3b                            ; $53c0: $cd $3b $2e
    rst $18                                       ; $53c3: $df
    ld e, $0b                                     ; $53c4: $1e $0b
    ld a, $90                                     ; $53c6: $3e $90
    ldh [rWY], a                                  ; $53c8: $e0 $4a
    ld a, $06                                     ; $53ca: $3e $06
    ldh [$96], a                                  ; $53cc: $e0 $96
    ldh [rSVBK], a                                ; $53ce: $e0 $70
    xor a                                         ; $53d0: $af
    ld [$d242], a                                 ; $53d1: $ea $42 $d2
    ld [$c4b2], a                                 ; $53d4: $ea $b2 $c4
    pop af                                        ; $53d7: $f1
    push af                                       ; $53d8: $f5
    ld [$d5fe], a                                 ; $53d9: $ea $fe $d5
    ld a, $01                                     ; $53dc: $3e $01
    ld hl, $5640                                  ; $53de: $21 $40 $56
    call Call_000_23e8                            ; $53e1: $cd $e8 $23

jr_00b_53e4:
    call Call_000_2e3b                            ; $53e4: $cd $3b $2e
    ld a, [$d242]                                 ; $53e7: $fa $42 $d2
    or a                                          ; $53ea: $b7
    jr z, jr_00b_53e4                             ; $53eb: $28 $f7

    ld a, $20                                     ; $53ed: $3e $20

jr_00b_53ef:
    call Call_000_2e3b                            ; $53ef: $cd $3b $2e
    dec a                                         ; $53f2: $3d
    or a                                          ; $53f3: $b7
    jr nz, jr_00b_53ef                            ; $53f4: $20 $f9

    ld a, $01                                     ; $53f6: $3e $01
    ldh [$96], a                                  ; $53f8: $e0 $96
    ldh [rSVBK], a                                ; $53fa: $e0 $70
    ld hl, $d000                                  ; $53fc: $21 $00 $d0
    ld b, $20                                     ; $53ff: $06 $20
    ld de, $0300                                  ; $5401: $11 $00 $03
    call Call_00b_538d                            ; $5404: $cd $8d $53
    ld a, $05                                     ; $5407: $3e $05
    ldh [$96], a                                  ; $5409: $e0 $96
    ldh [rSVBK], a                                ; $540b: $e0 $70
    ld hl, $d000                                  ; $540d: $21 $00 $d0
    ld b, $20                                     ; $5410: $06 $20
    ld de, $0100                                  ; $5412: $11 $00 $01
    call Call_00b_538d                            ; $5415: $cd $8d $53
    call Call_000_2e3b                            ; $5418: $cd $3b $2e
    pop af                                        ; $541b: $f1
    call Call_00b_56ef                            ; $541c: $cd $ef $56
    call Call_00b_57e4                            ; $541f: $cd $e4 $57
    pop af                                        ; $5422: $f1
    ldh [$96], a                                  ; $5423: $e0 $96
    ldh [rSVBK], a                                ; $5425: $e0 $70
    pop hl                                        ; $5427: $e1
    pop de                                        ; $5428: $d1
    pop bc                                        ; $5429: $c1
    pop af                                        ; $542a: $f1
    ret                                           ; $542b: $c9


    nop                                           ; $542c: $00
    nop                                           ; $542d: $00
    nop                                           ; $542e: $00
    nop                                           ; $542f: $00
    rst $38                                       ; $5430: $ff
    rst $38                                       ; $5431: $ff
    rst $38                                       ; $5432: $ff
    rst $38                                       ; $5433: $ff
    rst $38                                       ; $5434: $ff
    rst $38                                       ; $5435: $ff
    rst $38                                       ; $5436: $ff
    rst $38                                       ; $5437: $ff
    rst $38                                       ; $5438: $ff
    rst $38                                       ; $5439: $ff
    rst $38                                       ; $543a: $ff
    rst $38                                       ; $543b: $ff
    rst $38                                       ; $543c: $ff
    rst $38                                       ; $543d: $ff
    rst $38                                       ; $543e: $ff
    rst $38                                       ; $543f: $ff
    add b                                         ; $5440: $80
    add b                                         ; $5441: $80
    add b                                         ; $5442: $80
    add b                                         ; $5443: $80
    add b                                         ; $5444: $80
    add b                                         ; $5445: $80
    add b                                         ; $5446: $80
    add b                                         ; $5447: $80
    add b                                         ; $5448: $80
    add b                                         ; $5449: $80
    add b                                         ; $544a: $80
    add b                                         ; $544b: $80
    add b                                         ; $544c: $80
    add b                                         ; $544d: $80
    add b                                         ; $544e: $80
    add b                                         ; $544f: $80
    add b                                         ; $5450: $80
    add b                                         ; $5451: $80
    add b                                         ; $5452: $80
    add b                                         ; $5453: $80
    add b                                         ; $5454: $80
    add b                                         ; $5455: $80
    add b                                         ; $5456: $80
    add b                                         ; $5457: $80
    add b                                         ; $5458: $80
    add b                                         ; $5459: $80
    add b                                         ; $545a: $80
    add b                                         ; $545b: $80
    add b                                         ; $545c: $80
    add b                                         ; $545d: $80
    add b                                         ; $545e: $80
    add b                                         ; $545f: $80
    add b                                         ; $5460: $80
    add b                                         ; $5461: $80
    add b                                         ; $5462: $80
    add b                                         ; $5463: $80
    add b                                         ; $5464: $80
    add b                                         ; $5465: $80
    add b                                         ; $5466: $80
    add b                                         ; $5467: $80
    add b                                         ; $5468: $80
    add b                                         ; $5469: $80
    add b                                         ; $546a: $80
    add b                                         ; $546b: $80
    add b                                         ; $546c: $80
    add b                                         ; $546d: $80
    add b                                         ; $546e: $80
    add b                                         ; $546f: $80
    add b                                         ; $5470: $80
    add b                                         ; $5471: $80
    add b                                         ; $5472: $80
    add b                                         ; $5473: $80
    add b                                         ; $5474: $80
    add b                                         ; $5475: $80
    add b                                         ; $5476: $80
    add b                                         ; $5477: $80
    add b                                         ; $5478: $80
    add b                                         ; $5479: $80
    add b                                         ; $547a: $80
    add b                                         ; $547b: $80
    add b                                         ; $547c: $80
    add b                                         ; $547d: $80
    add b                                         ; $547e: $80
    add b                                         ; $547f: $80
    add b                                         ; $5480: $80
    add b                                         ; $5481: $80
    add b                                         ; $5482: $80
    add b                                         ; $5483: $80
    add b                                         ; $5484: $80
    add b                                         ; $5485: $80
    add b                                         ; $5486: $80
    add b                                         ; $5487: $80
    add b                                         ; $5488: $80
    add b                                         ; $5489: $80
    add b                                         ; $548a: $80
    add b                                         ; $548b: $80
    add b                                         ; $548c: $80
    add b                                         ; $548d: $80
    add b                                         ; $548e: $80
    add b                                         ; $548f: $80
    add b                                         ; $5490: $80
    add b                                         ; $5491: $80
    add b                                         ; $5492: $80
    add b                                         ; $5493: $80
    add b                                         ; $5494: $80
    add b                                         ; $5495: $80
    add b                                         ; $5496: $80
    add b                                         ; $5497: $80
    add b                                         ; $5498: $80
    add b                                         ; $5499: $80
    add b                                         ; $549a: $80
    add b                                         ; $549b: $80
    add b                                         ; $549c: $80
    add b                                         ; $549d: $80
    add b                                         ; $549e: $80
    add b                                         ; $549f: $80
    add b                                         ; $54a0: $80
    add b                                         ; $54a1: $80
    add b                                         ; $54a2: $80
    add b                                         ; $54a3: $80
    add b                                         ; $54a4: $80
    add b                                         ; $54a5: $80
    add b                                         ; $54a6: $80
    add b                                         ; $54a7: $80
    add b                                         ; $54a8: $80
    add b                                         ; $54a9: $80
    add b                                         ; $54aa: $80
    add b                                         ; $54ab: $80
    add b                                         ; $54ac: $80
    add b                                         ; $54ad: $80
    add b                                         ; $54ae: $80
    add b                                         ; $54af: $80
    add b                                         ; $54b0: $80
    add b                                         ; $54b1: $80
    add b                                         ; $54b2: $80
    add b                                         ; $54b3: $80
    add b                                         ; $54b4: $80
    add b                                         ; $54b5: $80
    add b                                         ; $54b6: $80
    add b                                         ; $54b7: $80
    add b                                         ; $54b8: $80
    add b                                         ; $54b9: $80
    add b                                         ; $54ba: $80
    add b                                         ; $54bb: $80
    add b                                         ; $54bc: $80
    add b                                         ; $54bd: $80
    add b                                         ; $54be: $80
    add b                                         ; $54bf: $80
    add b                                         ; $54c0: $80
    add b                                         ; $54c1: $80
    add b                                         ; $54c2: $80
    add b                                         ; $54c3: $80
    add b                                         ; $54c4: $80
    add b                                         ; $54c5: $80
    add b                                         ; $54c6: $80
    add b                                         ; $54c7: $80
    add b                                         ; $54c8: $80
    add b                                         ; $54c9: $80
    add b                                         ; $54ca: $80
    add b                                         ; $54cb: $80
    add b                                         ; $54cc: $80
    add b                                         ; $54cd: $80
    add b                                         ; $54ce: $80
    add b                                         ; $54cf: $80
    add b                                         ; $54d0: $80
    add b                                         ; $54d1: $80
    add b                                         ; $54d2: $80
    add b                                         ; $54d3: $80
    add b                                         ; $54d4: $80
    add b                                         ; $54d5: $80
    add b                                         ; $54d6: $80
    add b                                         ; $54d7: $80
    add b                                         ; $54d8: $80
    add b                                         ; $54d9: $80
    add b                                         ; $54da: $80
    add b                                         ; $54db: $80
    add b                                         ; $54dc: $80
    add b                                         ; $54dd: $80
    add b                                         ; $54de: $80
    add b                                         ; $54df: $80
    add b                                         ; $54e0: $80
    add b                                         ; $54e1: $80
    add b                                         ; $54e2: $80
    add b                                         ; $54e3: $80
    add b                                         ; $54e4: $80
    add b                                         ; $54e5: $80
    add b                                         ; $54e6: $80
    add b                                         ; $54e7: $80
    add b                                         ; $54e8: $80
    add b                                         ; $54e9: $80
    add b                                         ; $54ea: $80
    add b                                         ; $54eb: $80
    add b                                         ; $54ec: $80
    add b                                         ; $54ed: $80
    add b                                         ; $54ee: $80
    add b                                         ; $54ef: $80
    add b                                         ; $54f0: $80
    add b                                         ; $54f1: $80
    add b                                         ; $54f2: $80
    add b                                         ; $54f3: $80
    add b                                         ; $54f4: $80
    add b                                         ; $54f5: $80
    add b                                         ; $54f6: $80
    add b                                         ; $54f7: $80
    add b                                         ; $54f8: $80
    add b                                         ; $54f9: $80
    add b                                         ; $54fa: $80
    add b                                         ; $54fb: $80
    add b                                         ; $54fc: $80
    add b                                         ; $54fd: $80
    add b                                         ; $54fe: $80
    add b                                         ; $54ff: $80
    add b                                         ; $5500: $80
    add b                                         ; $5501: $80
    add b                                         ; $5502: $80
    add b                                         ; $5503: $80
    add b                                         ; $5504: $80
    add b                                         ; $5505: $80
    add b                                         ; $5506: $80
    add b                                         ; $5507: $80
    add b                                         ; $5508: $80
    add b                                         ; $5509: $80
    add b                                         ; $550a: $80
    add b                                         ; $550b: $80
    add b                                         ; $550c: $80
    add b                                         ; $550d: $80
    add b                                         ; $550e: $80
    add b                                         ; $550f: $80
    add b                                         ; $5510: $80
    add b                                         ; $5511: $80
    add b                                         ; $5512: $80
    add b                                         ; $5513: $80
    add b                                         ; $5514: $80
    add b                                         ; $5515: $80
    add b                                         ; $5516: $80
    add b                                         ; $5517: $80
    add b                                         ; $5518: $80
    add b                                         ; $5519: $80
    add b                                         ; $551a: $80
    add b                                         ; $551b: $80
    add b                                         ; $551c: $80
    add b                                         ; $551d: $80
    add b                                         ; $551e: $80
    add b                                         ; $551f: $80
    add b                                         ; $5520: $80
    add b                                         ; $5521: $80
    add b                                         ; $5522: $80
    add b                                         ; $5523: $80
    add b                                         ; $5524: $80
    add b                                         ; $5525: $80
    add b                                         ; $5526: $80
    add b                                         ; $5527: $80
    add b                                         ; $5528: $80
    add b                                         ; $5529: $80
    add b                                         ; $552a: $80
    add b                                         ; $552b: $80
    add b                                         ; $552c: $80
    add b                                         ; $552d: $80
    add b                                         ; $552e: $80
    add b                                         ; $552f: $80
    add b                                         ; $5530: $80
    add b                                         ; $5531: $80
    add b                                         ; $5532: $80
    add b                                         ; $5533: $80
    add b                                         ; $5534: $80
    add b                                         ; $5535: $80
    add b                                         ; $5536: $80
    add b                                         ; $5537: $80
    add b                                         ; $5538: $80
    add b                                         ; $5539: $80
    add b                                         ; $553a: $80
    add b                                         ; $553b: $80
    add b                                         ; $553c: $80
    add b                                         ; $553d: $80
    add b                                         ; $553e: $80
    add b                                         ; $553f: $80
    jr nz, jr_00b_5562                            ; $5540: $20 $20

    jr nz, jr_00b_5564                            ; $5542: $20 $20

    jr nz, jr_00b_5566                            ; $5544: $20 $20

    jr nz, jr_00b_5568                            ; $5546: $20 $20

    jr nz, jr_00b_556a                            ; $5548: $20 $20

    jr nz, jr_00b_556c                            ; $554a: $20 $20

    jr nz, jr_00b_556e                            ; $554c: $20 $20

    jr nz, jr_00b_5570                            ; $554e: $20 $20

    jr nz, jr_00b_5572                            ; $5550: $20 $20

    jr nz, jr_00b_5574                            ; $5552: $20 $20

    jr nz, jr_00b_5576                            ; $5554: $20 $20

    jr nz, jr_00b_5578                            ; $5556: $20 $20

    jr nz, jr_00b_557a                            ; $5558: $20 $20

    jr nz, jr_00b_557c                            ; $555a: $20 $20

    jr nz, jr_00b_557e                            ; $555c: $20 $20

    jr nz, jr_00b_5580                            ; $555e: $20 $20

    jr nz, jr_00b_5582                            ; $5560: $20 $20

jr_00b_5562:
    jr nz, jr_00b_5584                            ; $5562: $20 $20

jr_00b_5564:
    jr nz, jr_00b_5586                            ; $5564: $20 $20

jr_00b_5566:
    jr nz, jr_00b_5588                            ; $5566: $20 $20

jr_00b_5568:
    jr nz, jr_00b_558a                            ; $5568: $20 $20

jr_00b_556a:
    jr nz, jr_00b_558c                            ; $556a: $20 $20

jr_00b_556c:
    jr nz, jr_00b_558e                            ; $556c: $20 $20

jr_00b_556e:
    jr nz, jr_00b_5590                            ; $556e: $20 $20

jr_00b_5570:
    jr nz, jr_00b_5592                            ; $5570: $20 $20

jr_00b_5572:
    jr nz, jr_00b_5594                            ; $5572: $20 $20

jr_00b_5574:
    jr nz, jr_00b_5596                            ; $5574: $20 $20

jr_00b_5576:
    jr nz, jr_00b_5598                            ; $5576: $20 $20

jr_00b_5578:
    jr nz, jr_00b_559a                            ; $5578: $20 $20

jr_00b_557a:
    jr nz, jr_00b_559c                            ; $557a: $20 $20

jr_00b_557c:
    jr nz, jr_00b_559e                            ; $557c: $20 $20

jr_00b_557e:
    jr nz, jr_00b_55a0                            ; $557e: $20 $20

jr_00b_5580:
    jr nz, jr_00b_55a2                            ; $5580: $20 $20

jr_00b_5582:
    jr nz, jr_00b_55a4                            ; $5582: $20 $20

jr_00b_5584:
    jr nz, jr_00b_55a6                            ; $5584: $20 $20

jr_00b_5586:
    jr nz, jr_00b_55a8                            ; $5586: $20 $20

jr_00b_5588:
    jr nz, jr_00b_55aa                            ; $5588: $20 $20

jr_00b_558a:
    jr nz, jr_00b_55ac                            ; $558a: $20 $20

jr_00b_558c:
    jr nz, jr_00b_55ae                            ; $558c: $20 $20

jr_00b_558e:
    jr nz, jr_00b_55b0                            ; $558e: $20 $20

jr_00b_5590:
    jr nz, jr_00b_55b2                            ; $5590: $20 $20

jr_00b_5592:
    jr nz, jr_00b_55b4                            ; $5592: $20 $20

jr_00b_5594:
    jr nz, jr_00b_55b6                            ; $5594: $20 $20

jr_00b_5596:
    jr nz, jr_00b_55b8                            ; $5596: $20 $20

jr_00b_5598:
    jr nz, jr_00b_55ba                            ; $5598: $20 $20

jr_00b_559a:
    jr nz, jr_00b_55bc                            ; $559a: $20 $20

jr_00b_559c:
    jr nz, jr_00b_55be                            ; $559c: $20 $20

jr_00b_559e:
    jr nz, jr_00b_55c0                            ; $559e: $20 $20

jr_00b_55a0:
    jr nz, jr_00b_55c2                            ; $55a0: $20 $20

jr_00b_55a2:
    jr nz, jr_00b_55c4                            ; $55a2: $20 $20

jr_00b_55a4:
    jr nz, jr_00b_55c6                            ; $55a4: $20 $20

jr_00b_55a6:
    jr nz, jr_00b_55c8                            ; $55a6: $20 $20

jr_00b_55a8:
    jr nz, jr_00b_55ca                            ; $55a8: $20 $20

jr_00b_55aa:
    jr nz, jr_00b_55cc                            ; $55aa: $20 $20

jr_00b_55ac:
    jr nz, jr_00b_55ce                            ; $55ac: $20 $20

jr_00b_55ae:
    jr nz, jr_00b_55d0                            ; $55ae: $20 $20

jr_00b_55b0:
    jr nz, jr_00b_55d2                            ; $55b0: $20 $20

jr_00b_55b2:
    jr nz, jr_00b_55d4                            ; $55b2: $20 $20

jr_00b_55b4:
    jr nz, jr_00b_55d6                            ; $55b4: $20 $20

jr_00b_55b6:
    jr nz, jr_00b_55d8                            ; $55b6: $20 $20

jr_00b_55b8:
    jr nz, jr_00b_55da                            ; $55b8: $20 $20

jr_00b_55ba:
    jr nz, jr_00b_55dc                            ; $55ba: $20 $20

jr_00b_55bc:
    jr nz, jr_00b_55de                            ; $55bc: $20 $20

jr_00b_55be:
    jr nz, jr_00b_55e0                            ; $55be: $20 $20

jr_00b_55c0:
    jr nz, jr_00b_55e2                            ; $55c0: $20 $20

jr_00b_55c2:
    jr nz, jr_00b_55e4                            ; $55c2: $20 $20

jr_00b_55c4:
    jr nz, jr_00b_55e6                            ; $55c4: $20 $20

jr_00b_55c6:
    jr nz, jr_00b_55e8                            ; $55c6: $20 $20

jr_00b_55c8:
    jr nz, jr_00b_55ea                            ; $55c8: $20 $20

jr_00b_55ca:
    jr nz, jr_00b_55ec                            ; $55ca: $20 $20

jr_00b_55cc:
    jr nz, jr_00b_55ee                            ; $55cc: $20 $20

jr_00b_55ce:
    jr nz, jr_00b_55f0                            ; $55ce: $20 $20

jr_00b_55d0:
    jr nz, jr_00b_55f2                            ; $55d0: $20 $20

jr_00b_55d2:
    jr nz, jr_00b_55f4                            ; $55d2: $20 $20

jr_00b_55d4:
    jr nz, jr_00b_55f6                            ; $55d4: $20 $20

jr_00b_55d6:
    jr nz, jr_00b_55f8                            ; $55d6: $20 $20

jr_00b_55d8:
    jr nz, jr_00b_55fa                            ; $55d8: $20 $20

jr_00b_55da:
    jr nz, jr_00b_55fc                            ; $55da: $20 $20

jr_00b_55dc:
    jr nz, jr_00b_55fe                            ; $55dc: $20 $20

jr_00b_55de:
    jr nz, jr_00b_5600                            ; $55de: $20 $20

jr_00b_55e0:
    jr nz, jr_00b_5602                            ; $55e0: $20 $20

jr_00b_55e2:
    jr nz, jr_00b_5604                            ; $55e2: $20 $20

jr_00b_55e4:
    jr nz, jr_00b_5606                            ; $55e4: $20 $20

jr_00b_55e6:
    jr nz, jr_00b_5608                            ; $55e6: $20 $20

jr_00b_55e8:
    jr nz, jr_00b_560a                            ; $55e8: $20 $20

jr_00b_55ea:
    jr nz, jr_00b_560c                            ; $55ea: $20 $20

jr_00b_55ec:
    jr nz, jr_00b_560e                            ; $55ec: $20 $20

jr_00b_55ee:
    jr nz, jr_00b_5610                            ; $55ee: $20 $20

jr_00b_55f0:
    jr nz, jr_00b_5612                            ; $55f0: $20 $20

jr_00b_55f2:
    jr nz, jr_00b_5614                            ; $55f2: $20 $20

jr_00b_55f4:
    jr nz, jr_00b_5616                            ; $55f4: $20 $20

jr_00b_55f6:
    jr nz, jr_00b_5618                            ; $55f6: $20 $20

jr_00b_55f8:
    jr nz, jr_00b_561a                            ; $55f8: $20 $20

jr_00b_55fa:
    jr nz, jr_00b_561c                            ; $55fa: $20 $20

jr_00b_55fc:
    jr nz, jr_00b_561e                            ; $55fc: $20 $20

jr_00b_55fe:
    jr nz, jr_00b_5620                            ; $55fe: $20 $20

jr_00b_5600:
    jr nz, jr_00b_5622                            ; $5600: $20 $20

jr_00b_5602:
    jr nz, jr_00b_5624                            ; $5602: $20 $20

jr_00b_5604:
    jr nz, jr_00b_5626                            ; $5604: $20 $20

jr_00b_5606:
    jr nz, jr_00b_5628                            ; $5606: $20 $20

jr_00b_5608:
    jr nz, jr_00b_562a                            ; $5608: $20 $20

jr_00b_560a:
    jr nz, jr_00b_562c                            ; $560a: $20 $20

jr_00b_560c:
    jr nz, jr_00b_562e                            ; $560c: $20 $20

jr_00b_560e:
    jr nz, jr_00b_5630                            ; $560e: $20 $20

jr_00b_5610:
    jr nz, jr_00b_5632                            ; $5610: $20 $20

jr_00b_5612:
    jr nz, jr_00b_5634                            ; $5612: $20 $20

jr_00b_5614:
    jr nz, jr_00b_5636                            ; $5614: $20 $20

jr_00b_5616:
    jr nz, jr_00b_5638                            ; $5616: $20 $20

jr_00b_5618:
    jr nz, jr_00b_563a                            ; $5618: $20 $20

jr_00b_561a:
    jr nz, jr_00b_563c                            ; $561a: $20 $20

jr_00b_561c:
    jr nz, jr_00b_563e                            ; $561c: $20 $20

jr_00b_561e:
    jr nz, jr_00b_5640                            ; $561e: $20 $20

jr_00b_5620:
    jr nz, jr_00b_5642                            ; $5620: $20 $20

jr_00b_5622:
    jr nz, @+$22                                  ; $5622: $20 $20

jr_00b_5624:
    jr nz, @+$22                                  ; $5624: $20 $20

jr_00b_5626:
    jr nz, @+$22                                  ; $5626: $20 $20

jr_00b_5628:
    jr nz, @+$22                                  ; $5628: $20 $20

jr_00b_562a:
    jr nz, jr_00b_564c                            ; $562a: $20 $20

jr_00b_562c:
    jr nz, @+$22                                  ; $562c: $20 $20

jr_00b_562e:
    jr nz, @+$22                                  ; $562e: $20 $20

jr_00b_5630:
    jr nz, @+$22                                  ; $5630: $20 $20

jr_00b_5632:
    jr nz, jr_00b_5654                            ; $5632: $20 $20

jr_00b_5634:
    jr nz, @+$22                                  ; $5634: $20 $20

jr_00b_5636:
    jr nz, jr_00b_5658                            ; $5636: $20 $20

jr_00b_5638:
    jr nz, jr_00b_565a                            ; $5638: $20 $20

jr_00b_563a:
    jr nz, @+$22                                  ; $563a: $20 $20

jr_00b_563c:
    jr nz, @+$22                                  ; $563c: $20 $20

jr_00b_563e:
    jr nz, @+$22                                  ; $563e: $20 $20

jr_00b_5640:
    ldh a, [$96]                                  ; $5640: $f0 $96

jr_00b_5642:
    push af                                       ; $5642: $f5
    ld a, $06                                     ; $5643: $3e $06
    ldh [$96], a                                  ; $5645: $e0 $96
    ldh [rSVBK], a                                ; $5647: $e0 $70
    ld a, [$d5fe]                                 ; $5649: $fa $fe $d5

jr_00b_564c:
    ld b, a                                       ; $564c: $47
    cp $07                                        ; $564d: $fe $07
    jr nz, jr_00b_567b                            ; $564f: $20 $2a

    ld a, [$c810]                                 ; $5651: $fa $10 $c8

jr_00b_5654:
    and a                                         ; $5654: $a7
    jr z, jr_00b_565f                             ; $5655: $28 $08

    dec a                                         ; $5657: $3d

jr_00b_5658:
    jr z, jr_00b_5666                             ; $5658: $28 $0c

jr_00b_565a:
    dec a                                         ; $565a: $3d
    jr z, jr_00b_566d                             ; $565b: $28 $10

    jr jr_00b_5674                                ; $565d: $18 $15

jr_00b_565f:
    ld c, $00                                     ; $565f: $0e $00
    ld de, $0000                                  ; $5661: $11 $00 $00
    jr jr_00b_568a                                ; $5664: $18 $24

jr_00b_5666:
    ld c, $01                                     ; $5666: $0e $01
    ld de, $0020                                  ; $5668: $11 $20 $00
    jr jr_00b_568a                                ; $566b: $18 $1d

jr_00b_566d:
    ld c, $01                                     ; $566d: $0e $01
    ld de, $0020                                  ; $566f: $11 $20 $00
    jr jr_00b_568a                                ; $5672: $18 $16

jr_00b_5674:
    ld c, $01                                     ; $5674: $0e $01
    ld de, $0020                                  ; $5676: $11 $20 $00
    jr jr_00b_568a                                ; $5679: $18 $0f

jr_00b_567b:
    ld hl, $56c9                                  ; $567b: $21 $c9 $56
    ld a, b                                       ; $567e: $78
    add a                                         ; $567f: $87
    add l                                         ; $5680: $85
    ld l, a                                       ; $5681: $6f
    jr nc, jr_00b_5685                            ; $5682: $30 $01

    inc h                                         ; $5684: $24

jr_00b_5685:
    ld a, [hl+]                                   ; $5685: $2a
    ld c, a                                       ; $5686: $4f
    ld e, [hl]                                    ; $5687: $5e
    ld d, $00                                     ; $5688: $16 $00

jr_00b_568a:
    pop af                                        ; $568a: $f1
    ldh [$96], a                                  ; $568b: $e0 $96
    ldh [rSVBK], a                                ; $568d: $e0 $70
    ldh a, [$8a]                                  ; $568f: $f0 $8a
    add c                                         ; $5691: $81
    ldh [$8a], a                                  ; $5692: $e0 $8a
    ld hl, $c322                                  ; $5694: $21 $22 $c3
    ld a, [hl+]                                   ; $5697: $2a
    ld h, [hl]                                    ; $5698: $66
    ld l, a                                       ; $5699: $6f
    add hl, de                                    ; $569a: $19
    ld a, l                                       ; $569b: $7d
    ld [$c322], a                                 ; $569c: $ea $22 $c3
    ld a, h                                       ; $569f: $7c
    ld [$c323], a                                 ; $56a0: $ea $23 $c3
    ld a, [$c4b2]                                 ; $56a3: $fa $b2 $c4
    inc a                                         ; $56a6: $3c
    ld [$c4b2], a                                 ; $56a7: $ea $b2 $c4
    and $3f                                       ; $56aa: $e6 $3f
    ld b, a                                       ; $56ac: $47
    ld a, $90                                     ; $56ad: $3e $90
    sub b                                         ; $56af: $90
    ldh [rWY], a                                  ; $56b0: $e0 $4a
    ld a, b                                       ; $56b2: $78
    cp $3f                                        ; $56b3: $fe $3f
    jr nz, jr_00b_56c8                            ; $56b5: $20 $11

    ld hl, $5640                                  ; $56b7: $21 $40 $56
    call Call_000_2449                            ; $56ba: $cd $49 $24
    ld a, $06                                     ; $56bd: $3e $06
    ldh [$96], a                                  ; $56bf: $e0 $96
    ldh [rSVBK], a                                ; $56c1: $e0 $70
    ld a, $01                                     ; $56c3: $3e $01
    ld [$d242], a                                 ; $56c5: $ea $42 $d2

jr_00b_56c8:
    ret                                           ; $56c8: $c9


    ld bc, $0020                                  ; $56c9: $01 $20 $00
    nop                                           ; $56cc: $00
    nop                                           ; $56cd: $00
    nop                                           ; $56ce: $00
    ld bc, $0120                                  ; $56cf: $01 $20 $01
    jr nz, @+$03                                  ; $56d2: $20 $01

    jr nz, jr_00b_56d6                            ; $56d4: $20 $00

jr_00b_56d6:
    nop                                           ; $56d6: $00
    nop                                           ; $56d7: $00
    nop                                           ; $56d8: $00
    ld bc, $0020                                  ; $56d9: $01 $20 $00
    nop                                           ; $56dc: $00
    ld bc, $0020                                  ; $56dd: $01 $20 $00
    nop                                           ; $56e0: $00
    ld [bc], a                                    ; $56e1: $02
    ld b, b                                       ; $56e2: $40
    nop                                           ; $56e3: $00
    nop                                           ; $56e4: $00
    ld bc, $0020                                  ; $56e5: $01 $20 $00
    nop                                           ; $56e8: $00
    nop                                           ; $56e9: $00
    nop                                           ; $56ea: $00
    nop                                           ; $56eb: $00
    nop                                           ; $56ec: $00
    nop                                           ; $56ed: $00
    nop                                           ; $56ee: $00

Call_00b_56ef:
    push af                                       ; $56ef: $f5
    push bc                                       ; $56f0: $c5
    push de                                       ; $56f1: $d5
    push hl                                       ; $56f2: $e5
    ld b, a                                       ; $56f3: $47
    ldh a, [$96]                                  ; $56f4: $f0 $96
    push af                                       ; $56f6: $f5
    and $0f                                       ; $56f7: $e6 $0f
    ld a, b                                       ; $56f9: $78
    ld c, a                                       ; $56fa: $4f
    add a                                         ; $56fb: $87
    add c                                         ; $56fc: $81
    add a                                         ; $56fd: $87
    add c                                         ; $56fe: $81
    ld hl, $572c                                  ; $56ff: $21 $2c $57
    add l                                         ; $5702: $85
    ld l, a                                       ; $5703: $6f
    jr nc, jr_00b_5707                            ; $5704: $30 $01

    inc h                                         ; $5706: $24

jr_00b_5707:
    ld a, $06                                     ; $5707: $3e $06
    ldh [$96], a                                  ; $5709: $e0 $96
    ldh [rSVBK], a                                ; $570b: $e0 $70
    ld a, [hl]                                    ; $570d: $7e
    ld [$d243], a                                 ; $570e: $ea $43 $d2
    ld b, a                                       ; $5711: $47
    inc hl                                        ; $5712: $23
    ld c, $00                                     ; $5713: $0e $00

jr_00b_5715:
    call $5795                                    ; $5715: $cd $95 $57
    call Call_000_2e3b                            ; $5718: $cd $3b $2e
    inc hl                                        ; $571b: $23
    inc hl                                        ; $571c: $23
    inc c                                         ; $571d: $0c
    ld a, c                                       ; $571e: $79
    cp b                                          ; $571f: $b8
    jr nz, jr_00b_5715                            ; $5720: $20 $f3

    pop af                                        ; $5722: $f1
    ldh [$96], a                                  ; $5723: $e0 $96
    ldh [rSVBK], a                                ; $5725: $e0 $70
    pop hl                                        ; $5727: $e1
    pop de                                        ; $5728: $d1
    pop bc                                        ; $5729: $c1
    pop af                                        ; $572a: $f1
    ret                                           ; $572b: $c9


    ld [bc], a                                    ; $572c: $02
    nop                                           ; $572d: $00
    dec b                                         ; $572e: $05
    dec bc                                        ; $572f: $0b
    dec b                                         ; $5730: $05
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    ld bc, $0716                                  ; $5733: $01 $16 $07
    nop                                           ; $5736: $00
    nop                                           ; $5737: $00
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    ld bc, $0323                                  ; $573a: $01 $23 $03
    nop                                           ; $573d: $00
    nop                                           ; $573e: $00
    nop                                           ; $573f: $00
    nop                                           ; $5740: $00
    inc bc                                        ; $5741: $03
    add hl, hl                                    ; $5742: $29
    dec b                                         ; $5743: $05
    ld l, $05                                     ; $5744: $2e $05
    ld [hl], $03                                  ; $5746: $36 $03
    ld bc, $053f                                  ; $5748: $01 $3f $05
    nop                                           ; $574b: $00
    nop                                           ; $574c: $00
    nop                                           ; $574d: $00
    nop                                           ; $574e: $00
    ld bc, $0548                                  ; $574f: $01 $48 $05
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    nop                                           ; $5754: $00
    nop                                           ; $5755: $00
    ld [bc], a                                    ; $5756: $02
    ld d, b                                       ; $5757: $50
    dec b                                         ; $5758: $05
    ld d, l                                       ; $5759: $55
    inc bc                                        ; $575a: $03
    nop                                           ; $575b: $00
    nop                                           ; $575c: $00
    inc bc                                        ; $575d: $03
    ld e, [hl]                                    ; $575e: $5e
    inc b                                         ; $575f: $04
    ld h, [hl]                                    ; $5760: $66
    inc b                                         ; $5761: $04
    ld l, [hl]                                    ; $5762: $6e
    inc bc                                        ; $5763: $03
    inc bc                                        ; $5764: $03
    ld [hl], l                                    ; $5765: $75
    dec b                                         ; $5766: $05
    ld a, d                                       ; $5767: $7a
    inc bc                                        ; $5768: $03
    add c                                         ; $5769: $81
    inc b                                         ; $576a: $04
    ld bc, $0389                                  ; $576b: $01 $89 $03
    nop                                           ; $576e: $00
    nop                                           ; $576f: $00
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    ld bc, $0690                                  ; $5772: $01 $90 $06
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    ld bc, $039a                                  ; $5779: $01 $9a $03
    nop                                           ; $577c: $00
    nop                                           ; $577d: $00
    nop                                           ; $577e: $00
    nop                                           ; $577f: $00
    ld [bc], a                                    ; $5780: $02
    and c                                         ; $5781: $a1
    inc b                                         ; $5782: $04
    xor c                                         ; $5783: $a9
    inc b                                         ; $5784: $04
    nop                                           ; $5785: $00
    nop                                           ; $5786: $00
    ld [bc], a                                    ; $5787: $02
    or c                                          ; $5788: $b1
    dec b                                         ; $5789: $05
    cp d                                          ; $578a: $ba
    inc b                                         ; $578b: $04
    nop                                           ; $578c: $00
    nop                                           ; $578d: $00
    inc bc                                        ; $578e: $03
    jp nz, $c705                                  ; $578f: $c2 $05 $c7

    dec b                                         ; $5792: $05
    call z, $f505                                 ; $5793: $cc $05 $f5
    push bc                                       ; $5796: $c5
    push de                                       ; $5797: $d5
    push hl                                       ; $5798: $e5
    ldh a, [$96]                                  ; $5799: $f0 $96
    push af                                       ; $579b: $f5
    push hl                                       ; $579c: $e5
    ld hl, $0014                                  ; $579d: $21 $14 $00
    ld a, c                                       ; $57a0: $79
    or a                                          ; $57a1: $b7
    jr nz, jr_00b_57aa                            ; $57a2: $20 $06

    ld h, $00                                     ; $57a4: $26 $00
    ld l, $00                                     ; $57a6: $2e $00
    jr jr_00b_57ad                                ; $57a8: $18 $03

jr_00b_57aa:
    call Call_000_08b9                            ; $57aa: $cd $b9 $08

jr_00b_57ad:
    ld de, $d063                                  ; $57ad: $11 $63 $d0
    add hl, de                                    ; $57b0: $19
    ld d, h                                       ; $57b1: $54
    ld e, l                                       ; $57b2: $5d
    pop hl                                        ; $57b3: $e1
    ld a, [hl+]                                   ; $57b4: $2a
    push af                                       ; $57b5: $f5
    ld a, [hl]                                    ; $57b6: $7e
    ld b, a                                       ; $57b7: $47
    ld hl, $1900                                  ; $57b8: $21 $00 $19
    pop af                                        ; $57bb: $f1
    add l                                         ; $57bc: $85
    ld l, a                                       ; $57bd: $6f
    jr nc, jr_00b_57c1                            ; $57be: $30 $01

    inc h                                         ; $57c0: $24

jr_00b_57c1:
    ld a, $01                                     ; $57c1: $3e $01
    ldh [$96], a                                  ; $57c3: $e0 $96
    ldh [rSVBK], a                                ; $57c5: $e0 $70

jr_00b_57c7:
    ld c, $50                                     ; $57c7: $0e $50
    call Call_00b_5884                            ; $57c9: $cd $84 $58
    call Call_000_2e3b                            ; $57cc: $cd $3b $2e
    ld a, $50                                     ; $57cf: $3e $50
    add e                                         ; $57d1: $83
    ld e, a                                       ; $57d2: $5f
    jr nc, jr_00b_57d6                            ; $57d3: $30 $01

    inc d                                         ; $57d5: $14

jr_00b_57d6:
    inc hl                                        ; $57d6: $23
    dec b                                         ; $57d7: $05
    jr nz, jr_00b_57c7                            ; $57d8: $20 $ed

    pop af                                        ; $57da: $f1
    ldh [$96], a                                  ; $57db: $e0 $96
    ldh [rSVBK], a                                ; $57dd: $e0 $70
    pop hl                                        ; $57df: $e1
    pop de                                        ; $57e0: $d1
    pop bc                                        ; $57e1: $c1
    pop af                                        ; $57e2: $f1
    ret                                           ; $57e3: $c9


Call_00b_57e4:
    push af                                       ; $57e4: $f5
    push bc                                       ; $57e5: $c5
    push de                                       ; $57e6: $d5
    push hl                                       ; $57e7: $e5
    ldh a, [$96]                                  ; $57e8: $f0 $96
    push af                                       ; $57ea: $f5
    ld a, $06                                     ; $57eb: $3e $06
    ldh [$96], a                                  ; $57ed: $e0 $96
    ldh [rSVBK], a                                ; $57ef: $e0 $70
    ld a, [$d243]                                 ; $57f1: $fa $43 $d2
    and $03                                       ; $57f4: $e6 $03
    jr nz, jr_00b_57fa                            ; $57f6: $20 $02

    ld a, $01                                     ; $57f8: $3e $01

jr_00b_57fa:
    ld b, a                                       ; $57fa: $47
    ld d, $00                                     ; $57fb: $16 $00
    ld c, $00                                     ; $57fd: $0e $00

jr_00b_57ff:
    call Call_000_2e3b                            ; $57ff: $cd $3b $2e
    ld e, $14                                     ; $5802: $1e $14

jr_00b_5804:
    call Call_00b_5822                            ; $5804: $cd $22 $58
    inc c                                         ; $5807: $0c
    dec e                                         ; $5808: $1d
    jr nz, jr_00b_5804                            ; $5809: $20 $f9

    ld e, $ff                                     ; $580b: $1e $ff

jr_00b_580d:
    call Call_000_2e3b                            ; $580d: $cd $3b $2e
    dec e                                         ; $5810: $1d
    jr nz, jr_00b_580d                            ; $5811: $20 $fa

    inc d                                         ; $5813: $14
    ld a, d                                       ; $5814: $7a
    cp b                                          ; $5815: $b8
    jr nz, jr_00b_57ff                            ; $5816: $20 $e7

    pop af                                        ; $5818: $f1
    ldh [$96], a                                  ; $5819: $e0 $96
    ldh [rSVBK], a                                ; $581b: $e0 $70
    pop hl                                        ; $581d: $e1
    pop de                                        ; $581e: $d1
    pop bc                                        ; $581f: $c1
    pop af                                        ; $5820: $f1
    ret                                           ; $5821: $c9


Call_00b_5822:
    push af                                       ; $5822: $f5
    push bc                                       ; $5823: $c5
    push de                                       ; $5824: $d5
    push hl                                       ; $5825: $e5
    ldh a, [$96]                                  ; $5826: $f0 $96
    push af                                       ; $5828: $f5
    ld hl, $d000                                  ; $5829: $21 $00 $d0
    ld a, c                                       ; $582c: $79
    add l                                         ; $582d: $85
    ld l, a                                       ; $582e: $6f
    jr nc, jr_00b_5832                            ; $582f: $30 $01

    inc h                                         ; $5831: $24

jr_00b_5832:
    ld b, $08                                     ; $5832: $06 $08
    ld de, $d000                                  ; $5834: $11 $00 $d0

jr_00b_5837:
    ld c, $14                                     ; $5837: $0e $14
    push hl                                       ; $5839: $e5
    push de                                       ; $583a: $d5

jr_00b_583b:
    ld a, $01                                     ; $583b: $3e $01
    ldh [$96], a                                  ; $583d: $e0 $96
    ldh [rSVBK], a                                ; $583f: $e0 $70
    ld a, [hl+]                                   ; $5841: $2a
    push hl                                       ; $5842: $e5
    ld h, d                                       ; $5843: $62
    ld l, e                                       ; $5844: $6b
    push af                                       ; $5845: $f5
    ld a, $05                                     ; $5846: $3e $05
    ldh [$96], a                                  ; $5848: $e0 $96
    ldh [rSVBK], a                                ; $584a: $e0 $70
    pop af                                        ; $584c: $f1
    ld [hl], a                                    ; $584d: $77
    inc de                                        ; $584e: $13
    pop hl                                        ; $584f: $e1
    dec c                                         ; $5850: $0d
    jr nz, jr_00b_583b                            ; $5851: $20 $e8

    pop de                                        ; $5853: $d1
    pop hl                                        ; $5854: $e1
    ld a, $50                                     ; $5855: $3e $50
    add l                                         ; $5857: $85
    ld l, a                                       ; $5858: $6f
    jr nc, jr_00b_585c                            ; $5859: $30 $01

    inc h                                         ; $585b: $24

jr_00b_585c:
    ld a, $20                                     ; $585c: $3e $20
    add e                                         ; $585e: $83
    ld e, a                                       ; $585f: $5f
    jr nc, jr_00b_5863                            ; $5860: $30 $01

    inc d                                         ; $5862: $14

jr_00b_5863:
    dec b                                         ; $5863: $05
    jr nz, jr_00b_5837                            ; $5864: $20 $d1

    ld a, $05                                     ; $5866: $3e $05
    ldh [$96], a                                  ; $5868: $e0 $96
    ldh [rSVBK], a                                ; $586a: $e0 $70
    ld hl, $d000                                  ; $586c: $21 $00 $d0
    ld de, $9c00                                  ; $586f: $11 $00 $9c
    ld c, $10                                     ; $5872: $0e $10
    call Call_000_0468                            ; $5874: $cd $68 $04
    call Call_000_2e3b                            ; $5877: $cd $3b $2e
    pop af                                        ; $587a: $f1
    ldh [$96], a                                  ; $587b: $e0 $96
    ldh [rSVBK], a                                ; $587d: $e0 $70
    pop hl                                        ; $587f: $e1
    pop de                                        ; $5880: $d1
    pop bc                                        ; $5881: $c1
    pop af                                        ; $5882: $f1
    ret                                           ; $5883: $c9


Call_00b_5884:
    push af                                       ; $5884: $f5
    push bc                                       ; $5885: $c5
    push de                                       ; $5886: $d5
    push hl                                       ; $5887: $e5
    ldh a, [$96]                                  ; $5888: $f0 $96
    push af                                       ; $588a: $f5
    rst $18                                       ; $588b: $df
    inc h                                         ; $588c: $24
    dec b                                         ; $588d: $05
    ld hl, $c600                                  ; $588e: $21 $00 $c6
    ld a, $01                                     ; $5891: $3e $01
    ldh [$96], a                                  ; $5893: $e0 $96
    ldh [rSVBK], a                                ; $5895: $e0 $70
    ld c, $14                                     ; $5897: $0e $14

jr_00b_5899:
    ld a, [hl+]                                   ; $5899: $2a
    or a                                          ; $589a: $b7
    jr z, jr_00b_58a6                             ; $589b: $28 $09

    push hl                                       ; $589d: $e5
    ld h, d                                       ; $589e: $62
    ld l, e                                       ; $589f: $6b
    ld [hl], a                                    ; $58a0: $77
    pop hl                                        ; $58a1: $e1
    inc de                                        ; $58a2: $13
    dec c                                         ; $58a3: $0d
    jr nz, jr_00b_5899                            ; $58a4: $20 $f3

jr_00b_58a6:
    pop af                                        ; $58a6: $f1
    ldh [$96], a                                  ; $58a7: $e0 $96
    ldh [rSVBK], a                                ; $58a9: $e0 $70
    pop hl                                        ; $58ab: $e1
    pop de                                        ; $58ac: $d1
    pop bc                                        ; $58ad: $c1
    pop af                                        ; $58ae: $f1
    ret                                           ; $58af: $c9


    push af                                       ; $58b0: $f5
    push bc                                       ; $58b1: $c5
    push de                                       ; $58b2: $d5
    push hl                                       ; $58b3: $e5
    ldh a, [$96]                                  ; $58b4: $f0 $96
    push af                                       ; $58b6: $f5
    ld a, $01                                     ; $58b7: $3e $01
    ldh [$96], a                                  ; $58b9: $e0 $96
    ldh [rSVBK], a                                ; $58bb: $e0 $70
    ld hl, $d000                                  ; $58bd: $21 $00 $d0
    ld de, $0240                                  ; $58c0: $11 $40 $02
    ld b, $80                                     ; $58c3: $06 $80
    call Call_00b_538d                            ; $58c5: $cd $8d $53
    ld hl, $d300                                  ; $58c8: $21 $00 $d3
    ld de, $0240                                  ; $58cb: $11 $40 $02
    ld b, $20                                     ; $58ce: $06 $20
    call Call_00b_538d                            ; $58d0: $cd $8d $53
    ld hl, $19da                                  ; $58d3: $21 $da $19
    ld de, $d3c0                                  ; $58d6: $11 $c0 $d3
    call Call_00b_5884                            ; $58d9: $cd $84 $58
    inc hl                                        ; $58dc: $23
    inc hl                                        ; $58dd: $23
    ld a, $40                                     ; $58de: $3e $40
    add e                                         ; $58e0: $83
    ld e, a                                       ; $58e1: $5f
    jr nc, jr_00b_58e5                            ; $58e2: $30 $01

    inc d                                         ; $58e4: $14

jr_00b_58e5:
    call Call_00b_5884                            ; $58e5: $cd $84 $58
    inc hl                                        ; $58e8: $23
    inc hl                                        ; $58e9: $23
    ld a, $40                                     ; $58ea: $3e $40
    add e                                         ; $58ec: $83
    ld e, a                                       ; $58ed: $5f
    jr nc, jr_00b_58f1                            ; $58ee: $30 $01

    inc d                                         ; $58f0: $14

jr_00b_58f1:
    call Call_00b_5884                            ; $58f1: $cd $84 $58
    ld hl, $d000                                  ; $58f4: $21 $00 $d0
    ld de, $b800                                  ; $58f7: $11 $00 $b8
    ld c, $24                                     ; $58fa: $0e $24
    call Call_000_0468                            ; $58fc: $cd $68 $04
    ld hl, $d300                                  ; $58ff: $21 $00 $d3
    ld de, $9800                                  ; $5902: $11 $00 $98
    ld c, $24                                     ; $5905: $0e $24
    call Call_000_0468                            ; $5907: $cd $68 $04
    xor a                                         ; $590a: $af
    ldh [$8b], a                                  ; $590b: $e0 $8b
    ldh [$8a], a                                  ; $590d: $e0 $8a
    ld [$c320], a                                 ; $590f: $ea $20 $c3
    ld [$c321], a                                 ; $5912: $ea $21 $c3
    ld [$c322], a                                 ; $5915: $ea $22 $c3
    ld [$c323], a                                 ; $5918: $ea $23 $c3
    call Call_000_2e3b                            ; $591b: $cd $3b $2e
    ld c, $10                                     ; $591e: $0e $10
    call Call_000_25af                            ; $5920: $cd $af $25
    call Call_000_2625                            ; $5923: $cd $25 $26
    ld c, $84                                     ; $5926: $0e $84

jr_00b_5928:
    call Call_000_2e3b                            ; $5928: $cd $3b $2e
    dec c                                         ; $592b: $0d
    jr nz, jr_00b_5928                            ; $592c: $20 $fa

    pop af                                        ; $592e: $f1
    ldh [$96], a                                  ; $592f: $e0 $96
    ldh [rSVBK], a                                ; $5931: $e0 $70
    pop hl                                        ; $5933: $e1
    pop de                                        ; $5934: $d1
    pop bc                                        ; $5935: $c1
    pop af                                        ; $5936: $f1
    ret                                           ; $5937: $c9


    db $dd                                        ; $5938: $dd
    ld e, c                                       ; $5939: $59
    nop                                           ; $593a: $00
    ld bc, $0600                                  ; $593b: $01 $00 $06
    nop                                           ; $593e: $00
    nop                                           ; $593f: $00
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00
    ld bc, $dd20                                  ; $5942: $01 $20 $dd
    ld e, c                                       ; $5945: $59
    nop                                           ; $5946: $00
    ld bc, $0800                                  ; $5947: $01 $00 $08
    nop                                           ; $594a: $00
    nop                                           ; $594b: $00
    nop                                           ; $594c: $00
    nop                                           ; $594d: $00
    ld bc, $dd21                                  ; $594e: $01 $21 $dd
    ld e, c                                       ; $5951: $59
    nop                                           ; $5952: $00
    ld bc, $0a00                                  ; $5953: $01 $00 $0a
    nop                                           ; $5956: $00
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    ld bc, $dd22                                  ; $595a: $01 $22 $dd
    ld e, c                                       ; $595d: $59
    nop                                           ; $595e: $00
    ld bc, $0c00                                  ; $595f: $01 $00 $0c
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00
    ld bc, $dd20                                  ; $5966: $01 $20 $dd
    ld e, c                                       ; $5969: $59
    nop                                           ; $596a: $00
    ld bc, $0e00                                  ; $596b: $01 $00 $0e
    nop                                           ; $596e: $00
    nop                                           ; $596f: $00
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    ld bc, $dd21                                  ; $5972: $01 $21 $dd
    ld e, c                                       ; $5975: $59
    nop                                           ; $5976: $00
    ld bc, $1000                                  ; $5977: $01 $00 $10
    nop                                           ; $597a: $00
    nop                                           ; $597b: $00
    nop                                           ; $597c: $00
    nop                                           ; $597d: $00
    ld bc, $dd22                                  ; $597e: $01 $22 $dd
    ld e, c                                       ; $5981: $59
    nop                                           ; $5982: $00
    dec b                                         ; $5983: $05
    add b                                         ; $5984: $80
    inc bc                                        ; $5985: $03
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
    nop                                           ; $598a: $00
    inc hl                                        ; $598b: $23
    db $dd                                        ; $598c: $dd
    ld e, c                                       ; $598d: $59
    nop                                           ; $598e: $00
    rlca                                          ; $598f: $07
    add b                                         ; $5990: $80
    inc bc                                        ; $5991: $03
    nop                                           ; $5992: $00
    nop                                           ; $5993: $00
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    ld bc, $dd23                                  ; $5996: $01 $23 $dd
    ld e, c                                       ; $5999: $59
    nop                                           ; $599a: $00
    add hl, bc                                    ; $599b: $09
    add b                                         ; $599c: $80
    inc bc                                        ; $599d: $03
    nop                                           ; $599e: $00
    nop                                           ; $599f: $00
    nop                                           ; $59a0: $00
    nop                                           ; $59a1: $00
    ld [bc], a                                    ; $59a2: $02
    inc hl                                        ; $59a3: $23
    db $dd                                        ; $59a4: $dd
    ld e, c                                       ; $59a5: $59
    nop                                           ; $59a6: $00
    dec b                                         ; $59a7: $05
    add b                                         ; $59a8: $80
    dec b                                         ; $59a9: $05
    nop                                           ; $59aa: $00
    nop                                           ; $59ab: $00
    nop                                           ; $59ac: $00
    nop                                           ; $59ad: $00
    nop                                           ; $59ae: $00
    inc h                                         ; $59af: $24
    db $dd                                        ; $59b0: $dd
    ld e, c                                       ; $59b1: $59
    nop                                           ; $59b2: $00
    rlca                                          ; $59b3: $07
    add b                                         ; $59b4: $80
    dec b                                         ; $59b5: $05
    nop                                           ; $59b6: $00
    nop                                           ; $59b7: $00
    nop                                           ; $59b8: $00
    nop                                           ; $59b9: $00
    ld bc, $dd24                                  ; $59ba: $01 $24 $dd
    ld e, c                                       ; $59bd: $59
    nop                                           ; $59be: $00
    add hl, bc                                    ; $59bf: $09
    add b                                         ; $59c0: $80
    dec b                                         ; $59c1: $05
    nop                                           ; $59c2: $00
    nop                                           ; $59c3: $00
    nop                                           ; $59c4: $00
    nop                                           ; $59c5: $00
    ld [bc], a                                    ; $59c6: $02
    inc h                                         ; $59c7: $24
    db $dd                                        ; $59c8: $dd
    ld e, c                                       ; $59c9: $59
    nop                                           ; $59ca: $00
    inc c                                         ; $59cb: $0c
    add b                                         ; $59cc: $80
    ld [$0000], sp                                ; $59cd: $08 $00 $00
    nop                                           ; $59d0: $00
    add b                                         ; $59d1: $80
    ld bc, $0025                                  ; $59d2: $01 $25 $00
    nop                                           ; $59d5: $00
    nop                                           ; $59d6: $00
    nop                                           ; $59d7: $00
    nop                                           ; $59d8: $00
    nop                                           ; $59d9: $00
    nop                                           ; $59da: $00
    nop                                           ; $59db: $00
    rst $38                                       ; $59dc: $ff
    nop                                           ; $59dd: $00
    push af                                       ; $59de: $f5
    push bc                                       ; $59df: $c5
    push de                                       ; $59e0: $d5
    push hl                                       ; $59e1: $e5
    call Call_000_2e3b                            ; $59e2: $cd $3b $2e
    ld [$c3e0], a                                 ; $59e5: $ea $e0 $c3
    push af                                       ; $59e8: $f5
    ld hl, $c878                                  ; $59e9: $21 $78 $c8
    ld a, [hl]                                    ; $59ec: $7e
    cp $01                                        ; $59ed: $fe $01
    jr nz, jr_00b_59f7                            ; $59ef: $20 $06

    pop af                                        ; $59f1: $f1
    pop hl                                        ; $59f2: $e1
    pop de                                        ; $59f3: $d1
    pop bc                                        ; $59f4: $c1
    pop af                                        ; $59f5: $f1
    ret                                           ; $59f6: $c9


jr_00b_59f7:
    ld c, $08                                     ; $59f7: $0e $08
    call Call_000_25a1                            ; $59f9: $cd $a1 $25
    call Call_000_2625                            ; $59fc: $cd $25 $26
    call Call_000_0341                            ; $59ff: $cd $41 $03
    call Call_000_23b6                            ; $5a02: $cd $b6 $23
    ld a, $90                                     ; $5a05: $3e $90
    ldh [rWY], a                                  ; $5a07: $e0 $4a
    call Call_000_2683                            ; $5a09: $cd $83 $26
    ld a, [$c96c]                                 ; $5a0c: $fa $6c $c9
    cp $04                                        ; $5a0f: $fe $04
    jr nc, jr_00b_5a16                            ; $5a11: $30 $03

    call Call_00b_666e                            ; $5a13: $cd $6e $66

jr_00b_5a16:
    call Call_000_0371                            ; $5a16: $cd $71 $03
    call Call_000_2e3b                            ; $5a19: $cd $3b $2e
    rst $18                                       ; $5a1c: $df
    inc b                                         ; $5a1d: $04
    inc b                                         ; $5a1e: $04
    rst $18                                       ; $5a1f: $df
    jr nc, @+$06                                  ; $5a20: $30 $04

    ldh a, [$96]                                  ; $5a22: $f0 $96
    push af                                       ; $5a24: $f5
    ld a, $04                                     ; $5a25: $3e $04
    ldh [$96], a                                  ; $5a27: $e0 $96
    ldh [rSVBK], a                                ; $5a29: $e0 $70
    ld de, $0000                                  ; $5a2b: $11 $00 $00
    ld hl, $c290                                  ; $5a2e: $21 $90 $c2
    ld a, [hl+]                                   ; $5a31: $2a
    ld b, [hl]                                    ; $5a32: $46
    ld c, a                                       ; $5a33: $4f
    ld hl, $0004                                  ; $5a34: $21 $04 $00
    add hl, bc                                    ; $5a37: $09
    ld a, e                                       ; $5a38: $7b
    ld [hl+], a                                   ; $5a39: $22
    ld [hl], d                                    ; $5a3a: $72
    ld hl, $c290                                  ; $5a3b: $21 $90 $c2
    ld a, [hl+]                                   ; $5a3e: $2a
    ld b, [hl]                                    ; $5a3f: $46
    ld c, a                                       ; $5a40: $4f
    ld hl, $0006                                  ; $5a41: $21 $06 $00
    add hl, bc                                    ; $5a44: $09
    ld a, e                                       ; $5a45: $7b
    ld [hl+], a                                   ; $5a46: $22
    ld [hl], d                                    ; $5a47: $72
    ld hl, $c290                                  ; $5a48: $21 $90 $c2
    ld a, [hl+]                                   ; $5a4b: $2a
    ld b, [hl]                                    ; $5a4c: $46
    ld c, a                                       ; $5a4d: $4f
    ld hl, $0016                                  ; $5a4e: $21 $16 $00
    add hl, bc                                    ; $5a51: $09
    ld a, $00                                     ; $5a52: $3e $00
    ld [hl], a                                    ; $5a54: $77
    pop af                                        ; $5a55: $f1
    ldh [$96], a                                  ; $5a56: $e0 $96
    ldh [rSVBK], a                                ; $5a58: $e0 $70
    xor a                                         ; $5a5a: $af
    ldh [$8b], a                                  ; $5a5b: $e0 $8b
    ldh [$8a], a                                  ; $5a5d: $e0 $8a
    ld [$c320], a                                 ; $5a5f: $ea $20 $c3
    ld [$c321], a                                 ; $5a62: $ea $21 $c3
    ld [$c322], a                                 ; $5a65: $ea $22 $c3
    ld [$c323], a                                 ; $5a68: $ea $23 $c3
    ld a, $0a                                     ; $5a6b: $3e $0a
    rst $18                                       ; $5a6d: $df
    nop                                           ; $5a6e: $00
    dec bc                                        ; $5a6f: $0b
    ld hl, $5938                                  ; $5a70: $21 $38 $59
    ld a, $0b                                     ; $5a73: $3e $0b
    rst $18                                       ; $5a75: $df
    ld l, $04                                     ; $5a76: $2e $04
    rst $18                                       ; $5a78: $df
    ld b, [hl]                                    ; $5a79: $46
    inc b                                         ; $5a7a: $04
    ld hl, $6527                                  ; $5a7b: $21 $27 $65
    ld d, $0b                                     ; $5a7e: $16 $0b
    ld e, $01                                     ; $5a80: $1e $01
    call Call_000_0595                            ; $5a82: $cd $95 $05
    pop af                                        ; $5a85: $f1
    cp $01                                        ; $5a86: $fe $01
    jr z, jr_00b_5b00                             ; $5a88: $28 $76

    push af                                       ; $5a8a: $f5
    ld a, [$c96c]                                 ; $5a8b: $fa $6c $c9
    cp $02                                        ; $5a8e: $fe $02
    jr z, jr_00b_5a9c                             ; $5a90: $28 $0a

    cp $03                                        ; $5a92: $fe $03
    jr z, jr_00b_5aa2                             ; $5a94: $28 $0c

    ld c, $00                                     ; $5a96: $0e $00
    ld e, $01                                     ; $5a98: $1e $01
    jr jr_00b_5aa6                                ; $5a9a: $18 $0a

jr_00b_5a9c:
    ld c, $01                                     ; $5a9c: $0e $01
    ld e, $00                                     ; $5a9e: $1e $00
    jr jr_00b_5aa6                                ; $5aa0: $18 $04

jr_00b_5aa2:
    ld c, $01                                     ; $5aa2: $0e $01
    ld e, $01                                     ; $5aa4: $1e $01

jr_00b_5aa6:
    ld a, [$c890]                                 ; $5aa6: $fa $90 $c8
    ld b, a                                       ; $5aa9: $47
    ld a, [$c899]                                 ; $5aaa: $fa $99 $c8
    and $10                                       ; $5aad: $e6 $10
    or b                                          ; $5aaf: $b0
    ld b, a                                       ; $5ab0: $47
    ld a, [$c8d0]                                 ; $5ab1: $fa $d0 $c8
    ld d, a                                       ; $5ab4: $57
    ld a, [$c8d9]                                 ; $5ab5: $fa $d9 $c8
    and $10                                       ; $5ab8: $e6 $10
    or d                                          ; $5aba: $b2
    ld d, a                                       ; $5abb: $57
    pop af                                        ; $5abc: $f1
    call Call_00b_5f54                            ; $5abd: $cd $54 $5f
    rst $18                                       ; $5ac0: $df
    inc e                                         ; $5ac1: $1c
    dec b                                         ; $5ac2: $05
    xor a                                         ; $5ac3: $af
    ld b, $05                                     ; $5ac4: $06 $05
    ld c, $04                                     ; $5ac6: $0e $04
    rst $18                                       ; $5ac8: $df
    jr z, @+$07                                   ; $5ac9: $28 $05

    ld a, $04                                     ; $5acb: $3e $04
    ld b, $05                                     ; $5acd: $06 $05
    ld c, $04                                     ; $5acf: $0e $04
    rst $18                                       ; $5ad1: $df
    jr z, @+$07                                   ; $5ad2: $28 $05

    ld a, $08                                     ; $5ad4: $3e $08
    ld b, $05                                     ; $5ad6: $06 $05
    ld c, $05                                     ; $5ad8: $0e $05
    rst $18                                       ; $5ada: $df
    jr z, @+$07                                   ; $5adb: $28 $05

    ld a, $0d                                     ; $5add: $3e $0d
    ld b, $05                                     ; $5adf: $06 $05
    ld c, $05                                     ; $5ae1: $0e $05
    rst $18                                       ; $5ae3: $df
    jr z, @+$07                                   ; $5ae4: $28 $05

    call Call_00b_6402                            ; $5ae6: $cd $02 $64
    xor a                                         ; $5ae9: $af
    ld [$c3f4], a                                 ; $5aea: $ea $f4 $c3
    ld c, $04                                     ; $5aed: $0e $04
    call Call_000_25af                            ; $5aef: $cd $af $25
    call Call_000_2625                            ; $5af2: $cd $25 $26
    ld a, $01                                     ; $5af5: $3e $01
    ld hl, $648f                                  ; $5af7: $21 $8f $64
    call Call_000_23e8                            ; $5afa: $cd $e8 $23
    jp Jump_00b_5bb9                              ; $5afd: $c3 $b9 $5b


jr_00b_5b00:
    ld a, [$c890]                                 ; $5b00: $fa $90 $c8
    ld b, a                                       ; $5b03: $47
    ld a, [$c96c]                                 ; $5b04: $fa $6c $c9
    ld c, a                                       ; $5b07: $4f
    call Call_00b_61cf                            ; $5b08: $cd $cf $61
    push hl                                       ; $5b0b: $e5
    ld b, $14                                     ; $5b0c: $06 $14
    ld c, $00                                     ; $5b0e: $0e $00
    ld d, $00                                     ; $5b10: $16 $00
    ld e, $00                                     ; $5b12: $1e $00
    ld h, $14                                     ; $5b14: $26 $14
    ld l, $12                                     ; $5b16: $2e $12
    call Call_00b_6dc7                            ; $5b18: $cd $c7 $6d
    pop hl                                        ; $5b1b: $e1
    call Call_000_2ed5                            ; $5b1c: $cd $d5 $2e
    ld bc, $1cdf                                  ; $5b1f: $01 $df $1c
    dec b                                         ; $5b22: $05
    xor a                                         ; $5b23: $af
    ld b, $05                                     ; $5b24: $06 $05
    ld c, $04                                     ; $5b26: $0e $04
    rst $18                                       ; $5b28: $df
    jr z, @+$07                                   ; $5b29: $28 $05

    ld a, $04                                     ; $5b2b: $3e $04
    ld b, $05                                     ; $5b2d: $06 $05
    ld c, $04                                     ; $5b2f: $0e $04
    rst $18                                       ; $5b31: $df
    jr z, @+$07                                   ; $5b32: $28 $05

    ld a, $08                                     ; $5b34: $3e $08
    ld b, $05                                     ; $5b36: $06 $05
    ld c, $05                                     ; $5b38: $0e $05
    rst $18                                       ; $5b3a: $df
    jr z, @+$07                                   ; $5b3b: $28 $05

    ld a, $0d                                     ; $5b3d: $3e $0d
    ld b, $05                                     ; $5b3f: $06 $05
    ld c, $05                                     ; $5b41: $0e $05
    rst $18                                       ; $5b43: $df
    jr z, jr_00b_5b4b                             ; $5b44: $28 $05

    ld a, $08                                     ; $5b46: $3e $08
    ld bc, $3f00                                  ; $5b48: $01 $00 $3f

jr_00b_5b4b:
    ld de, $3f00                                  ; $5b4b: $11 $00 $3f
    rst $18                                       ; $5b4e: $df
    jr nz, @+$0c                                  ; $5b4f: $20 $0a

    ld a, $09                                     ; $5b51: $3e $09
    ld bc, $3f00                                  ; $5b53: $01 $00 $3f
    ld de, $3f00                                  ; $5b56: $11 $00 $3f
    rst $18                                       ; $5b59: $df
    jr nz, @+$0c                                  ; $5b5a: $20 $0a

    ld a, $0a                                     ; $5b5c: $3e $0a
    ld bc, $3f00                                  ; $5b5e: $01 $00 $3f
    ld de, $3f00                                  ; $5b61: $11 $00 $3f
    rst $18                                       ; $5b64: $df
    jr nz, @+$0c                                  ; $5b65: $20 $0a

    ld a, $0b                                     ; $5b67: $3e $0b
    ld bc, $3f00                                  ; $5b69: $01 $00 $3f
    ld de, $3f00                                  ; $5b6c: $11 $00 $3f
    rst $18                                       ; $5b6f: $df
    jr nz, @+$0c                                  ; $5b70: $20 $0a

    ld a, $0c                                     ; $5b72: $3e $0c
    ld bc, $3f00                                  ; $5b74: $01 $00 $3f
    ld de, $3f00                                  ; $5b77: $11 $00 $3f
    rst $18                                       ; $5b7a: $df
    jr nz, @+$0c                                  ; $5b7b: $20 $0a

    ld a, $0d                                     ; $5b7d: $3e $0d
    ld bc, $3f00                                  ; $5b7f: $01 $00 $3f
    ld de, $3f00                                  ; $5b82: $11 $00 $3f
    rst $18                                       ; $5b85: $df
    jr nz, @+$0c                                  ; $5b86: $20 $0a

    ld a, $0e                                     ; $5b88: $3e $0e
    ld bc, $3f00                                  ; $5b8a: $01 $00 $3f
    ld de, $3f00                                  ; $5b8d: $11 $00 $3f
    rst $18                                       ; $5b90: $df
    jr nz, @+$0c                                  ; $5b91: $20 $0a

    call Call_00b_6402                            ; $5b93: $cd $02 $64
    xor a                                         ; $5b96: $af
    ld [$c3f4], a                                 ; $5b97: $ea $f4 $c3
    ld c, $04                                     ; $5b9a: $0e $04
    call Call_000_25af                            ; $5b9c: $cd $af $25
    call Call_000_2625                            ; $5b9f: $cd $25 $26
    ld a, [$c96c]                                 ; $5ba2: $fa $6c $c9
    cp $04                                        ; $5ba5: $fe $04
    jr nc, jr_00b_5bb9                            ; $5ba7: $30 $10

    ld a, $01                                     ; $5ba9: $3e $01
    ld hl, $648f                                  ; $5bab: $21 $8f $64
    call Call_000_23e8                            ; $5bae: $cd $e8 $23
    ld a, $01                                     ; $5bb1: $3e $01
    ld hl, $6694                                  ; $5bb3: $21 $94 $66
    call Call_000_23e8                            ; $5bb6: $cd $e8 $23

Jump_00b_5bb9:
jr_00b_5bb9:
    call Call_000_2e3b                            ; $5bb9: $cd $3b $2e
    ldh a, [$91]                                  ; $5bbc: $f0 $91
    and $0b                                       ; $5bbe: $e6 $0b
    jr z, jr_00b_5bb9                             ; $5bc0: $28 $f7

    ld hl, $648f                                  ; $5bc2: $21 $8f $64
    call Call_000_2449                            ; $5bc5: $cd $49 $24
    ld hl, $6694                                  ; $5bc8: $21 $94 $66
    call Call_000_2449                            ; $5bcb: $cd $49 $24
    ld a, $00                                     ; $5bce: $3e $00
    ld bc, $3f00                                  ; $5bd0: $01 $00 $3f
    ld de, $3f00                                  ; $5bd3: $11 $00 $3f
    rst $18                                       ; $5bd6: $df
    jr nz, jr_00b_5be3                            ; $5bd7: $20 $0a

    ld c, $08                                     ; $5bd9: $0e $08
    call Call_000_25a1                            ; $5bdb: $cd $a1 $25
    call Call_000_2625                            ; $5bde: $cd $25 $26
    pop hl                                        ; $5be1: $e1
    pop de                                        ; $5be2: $d1

jr_00b_5be3:
    pop bc                                        ; $5be3: $c1
    pop af                                        ; $5be4: $f1
    ret                                           ; $5be5: $c9


Call_00b_5be6:
    push af                                       ; $5be6: $f5
    push bc                                       ; $5be7: $c5
    push de                                       ; $5be8: $d5
    push hl                                       ; $5be9: $e5
    ld e, a                                       ; $5bea: $5f
    ldh a, [$96]                                  ; $5beb: $f0 $96
    push af                                       ; $5bed: $f5
    ld a, $04                                     ; $5bee: $3e $04
    ldh [$96], a                                  ; $5bf0: $e0 $96
    ldh [rSVBK], a                                ; $5bf2: $e0 $70
    ld a, $02                                     ; $5bf4: $3e $02
    rst $18                                       ; $5bf6: $df
    inc d                                         ; $5bf7: $14
    ld a, [bc]                                    ; $5bf8: $0a
    ld a, l                                       ; $5bf9: $7d
    ldh [$e0], a                                  ; $5bfa: $e0 $e0
    ld a, h                                       ; $5bfc: $7c
    ldh [$e1], a                                  ; $5bfd: $e0 $e1
    ld hl, $ffe0                                  ; $5bff: $21 $e0 $ff
    ld a, [hl+]                                   ; $5c02: $2a
    ld h, [hl]                                    ; $5c03: $66
    add $17                                       ; $5c04: $c6 $17
    ld l, a                                       ; $5c06: $6f
    xor a                                         ; $5c07: $af
    ld [hl+], a                                   ; $5c08: $22
    ld a, e                                       ; $5c09: $7b
    dec a                                         ; $5c0a: $3d
    ld [hl], a                                    ; $5c0b: $77
    inc hl                                        ; $5c0c: $23
    ld a, $cc                                     ; $5c0d: $3e $cc
    ld [hl], a                                    ; $5c0f: $77
    call Call_000_0a61                            ; $5c10: $cd $61 $0a
    call Call_000_0a61                            ; $5c13: $cd $61 $0a
    call Call_000_0a61                            ; $5c16: $cd $61 $0a
    ld c, l                                       ; $5c19: $4d
    ld hl, $ffe0                                  ; $5c1a: $21 $e0 $ff
    ld a, [hl+]                                   ; $5c1d: $2a
    ld h, [hl]                                    ; $5c1e: $66
    add $0e                                       ; $5c1f: $c6 $0e
    ld l, a                                       ; $5c21: $6f
    ld a, c                                       ; $5c22: $79
    and $07                                       ; $5c23: $e6 $07
    add $10                                       ; $5c25: $c6 $10
    ld [hl+], a                                   ; $5c27: $22
    xor a                                         ; $5c28: $af
    ld [hl], a                                    ; $5c29: $77
    ld a, $03                                     ; $5c2a: $3e $03
    rst $18                                       ; $5c2c: $df
    inc d                                         ; $5c2d: $14
    ld a, [bc]                                    ; $5c2e: $0a
    ld a, l                                       ; $5c2f: $7d
    ldh [$e0], a                                  ; $5c30: $e0 $e0
    ld a, h                                       ; $5c32: $7c
    ldh [$e1], a                                  ; $5c33: $e0 $e1
    ld hl, $ffe0                                  ; $5c35: $21 $e0 $ff
    ld a, [hl+]                                   ; $5c38: $2a
    ld h, [hl]                                    ; $5c39: $66
    add $17                                       ; $5c3a: $c6 $17
    ld l, a                                       ; $5c3c: $6f
    xor a                                         ; $5c3d: $af
    ld [hl+], a                                   ; $5c3e: $22
    ld a, e                                       ; $5c3f: $7b
    ld [hl], a                                    ; $5c40: $77
    inc hl                                        ; $5c41: $23
    ld a, $99                                     ; $5c42: $3e $99
    ld [hl], a                                    ; $5c44: $77
    call Call_000_0a61                            ; $5c45: $cd $61 $0a
    call Call_000_0a61                            ; $5c48: $cd $61 $0a
    ld c, l                                       ; $5c4b: $4d
    ld hl, $ffe0                                  ; $5c4c: $21 $e0 $ff
    ld a, [hl+]                                   ; $5c4f: $2a
    ld h, [hl]                                    ; $5c50: $66
    add $0e                                       ; $5c51: $c6 $0e
    ld l, a                                       ; $5c53: $6f
    ld a, c                                       ; $5c54: $79
    and $07                                       ; $5c55: $e6 $07
    add $10                                       ; $5c57: $c6 $10
    ld [hl+], a                                   ; $5c59: $22
    xor a                                         ; $5c5a: $af
    ld [hl], a                                    ; $5c5b: $77
    ld a, $04                                     ; $5c5c: $3e $04
    rst $18                                       ; $5c5e: $df
    inc d                                         ; $5c5f: $14
    ld a, [bc]                                    ; $5c60: $0a
    ld a, l                                       ; $5c61: $7d
    ldh [$e0], a                                  ; $5c62: $e0 $e0
    ld a, h                                       ; $5c64: $7c
    ldh [$e1], a                                  ; $5c65: $e0 $e1
    ld hl, $ffe0                                  ; $5c67: $21 $e0 $ff
    ld a, [hl+]                                   ; $5c6a: $2a
    ld h, [hl]                                    ; $5c6b: $66
    add $17                                       ; $5c6c: $c6 $17
    ld l, a                                       ; $5c6e: $6f
    xor a                                         ; $5c6f: $af
    ld [hl+], a                                   ; $5c70: $22
    ld a, e                                       ; $5c71: $7b
    ld [hl], a                                    ; $5c72: $77
    inc hl                                        ; $5c73: $23
    ld a, $66                                     ; $5c74: $3e $66
    ld [hl], a                                    ; $5c76: $77
    call Call_000_0a61                            ; $5c77: $cd $61 $0a
    ld c, l                                       ; $5c7a: $4d
    ld hl, $ffe0                                  ; $5c7b: $21 $e0 $ff
    ld a, [hl+]                                   ; $5c7e: $2a
    ld h, [hl]                                    ; $5c7f: $66
    add $0e                                       ; $5c80: $c6 $0e
    ld l, a                                       ; $5c82: $6f
    ld a, c                                       ; $5c83: $79
    and $07                                       ; $5c84: $e6 $07
    add $10                                       ; $5c86: $c6 $10
    ld [hl+], a                                   ; $5c88: $22
    xor a                                         ; $5c89: $af
    ld [hl], a                                    ; $5c8a: $77
    ld a, $05                                     ; $5c8b: $3e $05
    rst $18                                       ; $5c8d: $df
    inc d                                         ; $5c8e: $14
    ld a, [bc]                                    ; $5c8f: $0a
    ld a, l                                       ; $5c90: $7d
    ldh [$e0], a                                  ; $5c91: $e0 $e0
    ld a, h                                       ; $5c93: $7c
    ldh [$e1], a                                  ; $5c94: $e0 $e1
    ld hl, $ffe0                                  ; $5c96: $21 $e0 $ff
    ld a, [hl+]                                   ; $5c99: $2a
    ld h, [hl]                                    ; $5c9a: $66
    add $17                                       ; $5c9b: $c6 $17
    ld l, a                                       ; $5c9d: $6f
    xor a                                         ; $5c9e: $af
    ld [hl+], a                                   ; $5c9f: $22
    ld a, e                                       ; $5ca0: $7b
    dec a                                         ; $5ca1: $3d
    ld [hl], a                                    ; $5ca2: $77
    inc hl                                        ; $5ca3: $23
    ld a, $33                                     ; $5ca4: $3e $33
    ld [hl], a                                    ; $5ca6: $77
    call Call_000_0a61                            ; $5ca7: $cd $61 $0a
    call Call_000_0a61                            ; $5caa: $cd $61 $0a
    call Call_000_0a61                            ; $5cad: $cd $61 $0a
    ld c, l                                       ; $5cb0: $4d
    ld hl, $ffe0                                  ; $5cb1: $21 $e0 $ff
    ld a, [hl+]                                   ; $5cb4: $2a
    ld h, [hl]                                    ; $5cb5: $66
    add $0e                                       ; $5cb6: $c6 $0e
    ld l, a                                       ; $5cb8: $6f
    ld a, c                                       ; $5cb9: $79
    and $07                                       ; $5cba: $e6 $07
    add $10                                       ; $5cbc: $c6 $10
    ld [hl+], a                                   ; $5cbe: $22
    xor a                                         ; $5cbf: $af
    ld [hl], a                                    ; $5cc0: $77
    ld a, $06                                     ; $5cc1: $3e $06
    rst $18                                       ; $5cc3: $df
    inc d                                         ; $5cc4: $14
    ld a, [bc]                                    ; $5cc5: $0a
    ld a, l                                       ; $5cc6: $7d
    ldh [$e0], a                                  ; $5cc7: $e0 $e0
    ld a, h                                       ; $5cc9: $7c
    ldh [$e1], a                                  ; $5cca: $e0 $e1
    ld hl, $ffe0                                  ; $5ccc: $21 $e0 $ff
    ld a, [hl+]                                   ; $5ccf: $2a
    ld h, [hl]                                    ; $5cd0: $66
    add $17                                       ; $5cd1: $c6 $17
    ld l, a                                       ; $5cd3: $6f
    xor a                                         ; $5cd4: $af
    ld [hl+], a                                   ; $5cd5: $22
    ld a, e                                       ; $5cd6: $7b
    ld [hl], a                                    ; $5cd7: $77
    inc hl                                        ; $5cd8: $23
    ld a, $00                                     ; $5cd9: $3e $00
    ld [hl], a                                    ; $5cdb: $77
    call Call_000_0a61                            ; $5cdc: $cd $61 $0a
    call Call_000_0a61                            ; $5cdf: $cd $61 $0a
    ld c, l                                       ; $5ce2: $4d
    ld hl, $ffe0                                  ; $5ce3: $21 $e0 $ff
    ld a, [hl+]                                   ; $5ce6: $2a
    ld h, [hl]                                    ; $5ce7: $66
    add $0e                                       ; $5ce8: $c6 $0e
    ld l, a                                       ; $5cea: $6f
    ld a, c                                       ; $5ceb: $79
    and $07                                       ; $5cec: $e6 $07
    add $10                                       ; $5cee: $c6 $10
    ld [hl+], a                                   ; $5cf0: $22
    xor a                                         ; $5cf1: $af
    ld [hl], a                                    ; $5cf2: $77
    ld a, $07                                     ; $5cf3: $3e $07
    rst $18                                       ; $5cf5: $df
    inc d                                         ; $5cf6: $14
    ld a, [bc]                                    ; $5cf7: $0a
    ld a, l                                       ; $5cf8: $7d
    ldh [$e0], a                                  ; $5cf9: $e0 $e0
    ld a, h                                       ; $5cfb: $7c
    ldh [$e1], a                                  ; $5cfc: $e0 $e1
    ld hl, $ffe0                                  ; $5cfe: $21 $e0 $ff
    ld a, [hl+]                                   ; $5d01: $2a
    ld h, [hl]                                    ; $5d02: $66
    add $17                                       ; $5d03: $c6 $17
    ld l, a                                       ; $5d05: $6f
    xor a                                         ; $5d06: $af
    ld [hl+], a                                   ; $5d07: $22
    ld a, e                                       ; $5d08: $7b
    ld [hl], a                                    ; $5d09: $77
    inc hl                                        ; $5d0a: $23
    ld a, $00                                     ; $5d0b: $3e $00
    ld [hl], a                                    ; $5d0d: $77
    call Call_000_0a61                            ; $5d0e: $cd $61 $0a
    ld c, l                                       ; $5d11: $4d
    ld hl, $ffe0                                  ; $5d12: $21 $e0 $ff
    ld a, [hl+]                                   ; $5d15: $2a
    ld h, [hl]                                    ; $5d16: $66
    add $0e                                       ; $5d17: $c6 $0e
    ld l, a                                       ; $5d19: $6f
    ld a, c                                       ; $5d1a: $79
    and $07                                       ; $5d1b: $e6 $07
    add $08                                       ; $5d1d: $c6 $08
    ld [hl+], a                                   ; $5d1f: $22
    xor a                                         ; $5d20: $af
    ld [hl], a                                    ; $5d21: $77
    pop af                                        ; $5d22: $f1
    ldh [$96], a                                  ; $5d23: $e0 $96
    ldh [rSVBK], a                                ; $5d25: $e0 $70
    pop hl                                        ; $5d27: $e1
    pop de                                        ; $5d28: $d1
    pop bc                                        ; $5d29: $c1
    pop af                                        ; $5d2a: $f1
    ret                                           ; $5d2b: $c9


Call_00b_5d2c:
    rst $18                                       ; $5d2c: $df
    inc d                                         ; $5d2d: $14
    ld a, [bc]                                    ; $5d2e: $0a
    ld a, l                                       ; $5d2f: $7d
    ldh [$e0], a                                  ; $5d30: $e0 $e0
    ld a, h                                       ; $5d32: $7c
    ldh [$e1], a                                  ; $5d33: $e0 $e1
    ld a, $04                                     ; $5d35: $3e $04
    ldh [$96], a                                  ; $5d37: $e0 $96
    ldh [rSVBK], a                                ; $5d39: $e0 $70
    ld hl, $ffe0                                  ; $5d3b: $21 $e0 $ff
    ld a, [hl+]                                   ; $5d3e: $2a

Jump_00b_5d3f:
    ld h, [hl]                                    ; $5d3f: $66
    add $19                                       ; $5d40: $c6 $19
    ld l, a                                       ; $5d42: $6f
    ld b, [hl]                                    ; $5d43: $46
    ld hl, $ffe0                                  ; $5d44: $21 $e0 $ff
    ld a, [hl+]                                   ; $5d47: $2a
    ld h, [hl]                                    ; $5d48: $66
    add $06                                       ; $5d49: $c6 $06
    ld l, a                                       ; $5d4b: $6f
    ld a, [hl+]                                   ; $5d4c: $2a
    ld h, [hl]                                    ; $5d4d: $66
    ld l, a                                       ; $5d4e: $6f
    sra h                                         ; $5d4f: $cb $2c
    rr l                                          ; $5d51: $cb $1d
    sra h                                         ; $5d53: $cb $2c
    rr l                                          ; $5d55: $cb $1d
    sra h                                         ; $5d57: $cb $2c
    rr l                                          ; $5d59: $cb $1d
    ld a, l                                       ; $5d5b: $7d
    add b                                         ; $5d5c: $80
    ld hl, $0180                                  ; $5d5d: $21 $80 $01
    call Call_000_0af2                            ; $5d60: $cd $f2 $0a
    push hl                                       ; $5d63: $e5
    ld hl, $ffe0                                  ; $5d64: $21 $e0 $ff
    ld a, [hl+]                                   ; $5d67: $2a
    ld h, [hl]                                    ; $5d68: $66
    add $18                                       ; $5d69: $c6 $18
    ld l, a                                       ; $5d6b: $6f
    ld d, [hl]                                    ; $5d6c: $56
    ld e, $00                                     ; $5d6d: $1e $00
    pop hl                                        ; $5d6f: $e1
    add hl, de                                    ; $5d70: $19
    ld b, h                                       ; $5d71: $44
    ld c, l                                       ; $5d72: $4d
    ld hl, $ffe0                                  ; $5d73: $21 $e0 $ff
    ld a, [hl+]                                   ; $5d76: $2a
    ld h, [hl]                                    ; $5d77: $66
    add $04                                       ; $5d78: $c6 $04
    ld l, a                                       ; $5d7a: $6f
    ld [hl], c                                    ; $5d7b: $71
    inc hl                                        ; $5d7c: $23
    ld [hl], b                                    ; $5d7d: $70
    ld hl, $ffe0                                  ; $5d7e: $21 $e0 $ff
    ld a, [hl+]                                   ; $5d81: $2a
    ld h, [hl]                                    ; $5d82: $66
    add $06                                       ; $5d83: $c6 $06
    ld l, a                                       ; $5d85: $6f
    push hl                                       ; $5d86: $e5
    ld a, [hl+]                                   ; $5d87: $2a
    ld h, [hl]                                    ; $5d88: $66
    ld l, a                                       ; $5d89: $6f
    ld d, h                                       ; $5d8a: $54
    ld e, l                                       ; $5d8b: $5d
    ld hl, $ffe0                                  ; $5d8c: $21 $e0 $ff
    ld a, [hl+]                                   ; $5d8f: $2a
    ld h, [hl]                                    ; $5d90: $66
    add $0e                                       ; $5d91: $c6 $0e
    ld l, a                                       ; $5d93: $6f
    ld a, [hl+]                                   ; $5d94: $2a
    ld h, [hl]                                    ; $5d95: $66
    ld l, a                                       ; $5d96: $6f
    add hl, de                                    ; $5d97: $19
    ld d, h                                       ; $5d98: $54
    ld e, l                                       ; $5d99: $5d
    pop hl                                        ; $5d9a: $e1
    ld [hl], e                                    ; $5d9b: $73
    inc hl                                        ; $5d9c: $23
    ld [hl], d                                    ; $5d9d: $72
    ld a, [$c3e0]                                 ; $5d9e: $fa $e0 $c3
    cp $01                                        ; $5da1: $fe $01
    jr z, jr_00b_5dac                             ; $5da3: $28 $07

    ld a, d                                       ; $5da5: $7a
    cp $0f                                        ; $5da6: $fe $0f
    jr c, jr_00b_5de0                             ; $5da8: $38 $36

    jr jr_00b_5db1                                ; $5daa: $18 $05

jr_00b_5dac:
    ld a, d                                       ; $5dac: $7a
    cp $11                                        ; $5dad: $fe $11
    jr c, jr_00b_5de0                             ; $5daf: $38 $2f

jr_00b_5db1:
    ld hl, $ffe0                                  ; $5db1: $21 $e0 $ff
    ld a, [hl+]                                   ; $5db4: $2a
    ld h, [hl]                                    ; $5db5: $66
    add $06                                       ; $5db6: $c6 $06
    ld l, a                                       ; $5db8: $6f
    ld a, [$c3f5]                                 ; $5db9: $fa $f5 $c3
    or a                                          ; $5dbc: $b7
    jr nz, jr_00b_5dc7                            ; $5dbd: $20 $08

    ld a, $80                                     ; $5dbf: $3e $80
    ld [hl+], a                                   ; $5dc1: $22
    ld a, $06                                     ; $5dc2: $3e $06
    ld [hl], a                                    ; $5dc4: $77
    jr jr_00b_5dcc                                ; $5dc5: $18 $05

jr_00b_5dc7:
    xor a                                         ; $5dc7: $af
    ld [hl+], a                                   ; $5dc8: $22
    ld a, $06                                     ; $5dc9: $3e $06
    ld [hl], a                                    ; $5dcb: $77

jr_00b_5dcc:
    call Call_000_0a61                            ; $5dcc: $cd $61 $0a
    ld c, l                                       ; $5dcf: $4d
    ld hl, $ffe0                                  ; $5dd0: $21 $e0 $ff
    ld a, [hl+]                                   ; $5dd3: $2a
    ld h, [hl]                                    ; $5dd4: $66
    add $0e                                       ; $5dd5: $c6 $0e
    ld l, a                                       ; $5dd7: $6f
    ld a, c                                       ; $5dd8: $79
    and $07                                       ; $5dd9: $e6 $07
    add $10                                       ; $5ddb: $c6 $10
    ld [hl+], a                                   ; $5ddd: $22
    xor a                                         ; $5dde: $af
    ld [hl], a                                    ; $5ddf: $77

jr_00b_5de0:
    ret                                           ; $5de0: $c9


    push af                                       ; $5de1: $f5
    push bc                                       ; $5de2: $c5
    push de                                       ; $5de3: $d5
    push hl                                       ; $5de4: $e5
    ldh a, [$96]                                  ; $5de5: $f0 $96
    push af                                       ; $5de7: $f5
    ld a, $02                                     ; $5de8: $3e $02
    call Call_00b_5d2c                            ; $5dea: $cd $2c $5d
    ld a, $03                                     ; $5ded: $3e $03
    call Call_00b_5d2c                            ; $5def: $cd $2c $5d
    ld a, $04                                     ; $5df2: $3e $04
    call Call_00b_5d2c                            ; $5df4: $cd $2c $5d
    ld a, $05                                     ; $5df7: $3e $05
    call Call_00b_5d2c                            ; $5df9: $cd $2c $5d
    ld a, $06                                     ; $5dfc: $3e $06
    call Call_00b_5d2c                            ; $5dfe: $cd $2c $5d
    ld a, $07                                     ; $5e01: $3e $07
    call Call_00b_5d2c                            ; $5e03: $cd $2c $5d
    call Call_00b_652f                            ; $5e06: $cd $2f $65
    pop af                                        ; $5e09: $f1
    ldh [$96], a                                  ; $5e0a: $e0 $96
    ldh [rSVBK], a                                ; $5e0c: $e0 $70
    pop hl                                        ; $5e0e: $e1
    pop de                                        ; $5e0f: $d1
    pop bc                                        ; $5e10: $c1
    pop af                                        ; $5e11: $f1
    ret                                           ; $5e12: $c9


Call_00b_5e13:
    ldh a, [$96]                                  ; $5e13: $f0 $96
    push af                                       ; $5e15: $f5
    ld l, c                                       ; $5e16: $69
    ld h, $00                                     ; $5e17: $26 $00
    ld a, $10                                     ; $5e19: $3e $10
    push bc                                       ; $5e1b: $c5
    call Call_000_08b9                            ; $5e1c: $cd $b9 $08
    pop bc                                        ; $5e1f: $c1
    ld c, b                                       ; $5e20: $48
    ld b, $00                                     ; $5e21: $06 $00
    add hl, bc                                    ; $5e23: $09
    push hl                                       ; $5e24: $e5
    ld l, e                                       ; $5e25: $6b
    ld h, $00                                     ; $5e26: $26 $00
    ld a, $40                                     ; $5e28: $3e $40
    push de                                       ; $5e2a: $d5
    call Call_000_08b9                            ; $5e2b: $cd $b9 $08
    pop de                                        ; $5e2e: $d1
    ld e, d                                       ; $5e2f: $5a
    ld d, $00                                     ; $5e30: $16 $00
    add hl, de                                    ; $5e32: $19
    pop bc                                        ; $5e33: $c1
    ld a, $03                                     ; $5e34: $3e $03
    ldh [$96], a                                  ; $5e36: $e0 $96
    ldh [rSVBK], a                                ; $5e38: $e0 $70
    ld de, $d000                                  ; $5e3a: $11 $00 $d0
    add hl, de                                    ; $5e3d: $19
    ld a, c                                       ; $5e3e: $79
    ld de, $003c                                  ; $5e3f: $11 $3c $00
    ld c, $08                                     ; $5e42: $0e $08

jr_00b_5e44:
    ld b, $04                                     ; $5e44: $06 $04

jr_00b_5e46:
    ld [hl+], a                                   ; $5e46: $22
    inc a                                         ; $5e47: $3c
    dec b                                         ; $5e48: $05
    jr nz, jr_00b_5e46                            ; $5e49: $20 $fb

    add hl, de                                    ; $5e4b: $19
    dec c                                         ; $5e4c: $0d
    jr nz, jr_00b_5e44                            ; $5e4d: $20 $f5

    pop af                                        ; $5e4f: $f1
    ldh [$96], a                                  ; $5e50: $e0 $96
    ldh [rSVBK], a                                ; $5e52: $e0 $70
    ret                                           ; $5e54: $c9


Call_00b_5e55:
    ldh a, [$96]                                  ; $5e55: $f0 $96
    push af                                       ; $5e57: $f5
    ld l, e                                       ; $5e58: $6b
    ld h, $00                                     ; $5e59: $26 $00
    ld a, $40                                     ; $5e5b: $3e $40
    push de                                       ; $5e5d: $d5
    call Call_000_08b9                            ; $5e5e: $cd $b9 $08
    pop de                                        ; $5e61: $d1
    ld e, d                                       ; $5e62: $5a
    ld d, $00                                     ; $5e63: $16 $00
    add hl, de                                    ; $5e65: $19
    ld a, $02                                     ; $5e66: $3e $02
    ldh [$96], a                                  ; $5e68: $e0 $96
    ldh [rSVBK], a                                ; $5e6a: $e0 $70
    ld de, $d000                                  ; $5e6c: $11 $00 $d0
    add hl, de                                    ; $5e6f: $19
    ld de, $003c                                  ; $5e70: $11 $3c $00
    ld c, $08                                     ; $5e73: $0e $08

jr_00b_5e75:
    ld b, $04                                     ; $5e75: $06 $04

jr_00b_5e77:
    ld a, [hl]                                    ; $5e77: $7e
    and $f8                                       ; $5e78: $e6 $f8
    or $01                                        ; $5e7a: $f6 $01
    ld [hl+], a                                   ; $5e7c: $22
    dec b                                         ; $5e7d: $05
    jr nz, jr_00b_5e77                            ; $5e7e: $20 $f7

    add hl, de                                    ; $5e80: $19
    dec c                                         ; $5e81: $0d
    jr nz, jr_00b_5e75                            ; $5e82: $20 $f1

    pop af                                        ; $5e84: $f1
    ldh [$96], a                                  ; $5e85: $e0 $96
    ldh [rSVBK], a                                ; $5e87: $e0 $70
    ret                                           ; $5e89: $c9


    xor $6b                                       ; $5e8a: $ee $6b
    rst $38                                       ; $5e8c: $ff
    ld a, a                                       ; $5e8d: $7f
    adc $39                                       ; $5e8e: $ce $39
    nop                                           ; $5e90: $00
    nop                                           ; $5e91: $00
    sbc $7b                                       ; $5e92: $de $7b
    jr @+$65                                      ; $5e94: $18 $63

    ld d, d                                       ; $5e96: $52
    ld c, d                                       ; $5e97: $4a
    adc h                                         ; $5e98: $8c
    ld sp, $00df                                  ; $5e99: $31 $df $00
    rra                                           ; $5e9c: $1f
    inc bc                                        ; $5e9d: $03
    ld [$000b], sp                                ; $5e9e: $08 $0b $00
    nop                                           ; $5ea1: $00
    ld d, h                                       ; $5ea2: $54
    ld h, d                                       ; $5ea3: $62
    rst $38                                       ; $5ea4: $ff
    ld l, e                                       ; $5ea5: $6b
    inc b                                         ; $5ea6: $04
    ld a, a                                       ; $5ea7: $7f
    nop                                           ; $5ea8: $00
    nop                                           ; $5ea9: $00
    ld d, h                                       ; $5eaa: $54
    ld h, d                                       ; $5eab: $62
    rst $38                                       ; $5eac: $ff
    ld l, e                                       ; $5ead: $6b
    sbc a                                         ; $5eae: $9f
    jr nz, jr_00b_5eb1                            ; $5eaf: $20 $00

jr_00b_5eb1:
    nop                                           ; $5eb1: $00
    ld d, h                                       ; $5eb2: $54
    ld h, d                                       ; $5eb3: $62
    rst $38                                       ; $5eb4: $ff
    ld l, e                                       ; $5eb5: $6b
    nop                                           ; $5eb6: $00
    ld a, d                                       ; $5eb7: $7a
    nop                                           ; $5eb8: $00
    nop                                           ; $5eb9: $00
    ld d, h                                       ; $5eba: $54
    ld h, d                                       ; $5ebb: $62
    rst $38                                       ; $5ebc: $ff
    ld l, e                                       ; $5ebd: $6b
    sbc a                                         ; $5ebe: $9f
    ld d, c                                       ; $5ebf: $51
    nop                                           ; $5ec0: $00
    nop                                           ; $5ec1: $00
    ld d, h                                       ; $5ec2: $54
    ld h, d                                       ; $5ec3: $62
    rst $38                                       ; $5ec4: $ff
    ld l, e                                       ; $5ec5: $6b
    sbc a                                         ; $5ec6: $9f
    ld bc, $0000                                  ; $5ec7: $01 $00 $00
    ld b, $04                                     ; $5eca: $06 $04
    inc b                                         ; $5ecc: $04
    dec b                                         ; $5ecd: $05
    dec b                                         ; $5ece: $05
    ld b, $04                                     ; $5ecf: $06 $04
    rlca                                          ; $5ed1: $07
    ld b, $03                                     ; $5ed2: $06 $03
    dec b                                         ; $5ed4: $05
    nop                                           ; $5ed5: $00

Call_00b_5ed6:
    push af                                       ; $5ed6: $f5
    push bc                                       ; $5ed7: $c5
    push de                                       ; $5ed8: $d5
    push hl                                       ; $5ed9: $e5
    push de                                       ; $5eda: $d5
    push af                                       ; $5edb: $f5
    and $0f                                       ; $5edc: $e6 $0f
    ld h, a                                       ; $5ede: $67
    ld l, c                                       ; $5edf: $69
    push bc                                       ; $5ee0: $c5
    sla a                                         ; $5ee1: $cb $27
    add b                                         ; $5ee3: $80
    ld c, a                                       ; $5ee4: $4f
    ld d, $00                                     ; $5ee5: $16 $00
    ld a, $09                                     ; $5ee7: $3e $09
    add l                                         ; $5ee9: $85
    add l                                         ; $5eea: $85
    ld e, a                                       ; $5eeb: $5f
    push hl                                       ; $5eec: $e5
    rst $18                                       ; $5eed: $df
    ld d, $11                                     ; $5eee: $16 $11
    pop hl                                        ; $5ef0: $e1
    call Call_000_2e3b                            ; $5ef1: $cd $3b $2e
    call Call_00b_5f40                            ; $5ef4: $cd $40 $5f
    pop bc                                        ; $5ef7: $c1
    ld b, $00                                     ; $5ef8: $06 $00
    ld a, $09                                     ; $5efa: $3e $09
    add l                                         ; $5efc: $85
    add l                                         ; $5efd: $85
    ld c, a                                       ; $5efe: $4f
    push de                                       ; $5eff: $d5
    call Call_00b_5e13                            ; $5f00: $cd $13 $5e
    pop de                                        ; $5f03: $d1
    pop af                                        ; $5f04: $f1
    bit 4, a                                      ; $5f05: $cb $67
    jr z, jr_00b_5f2d                             ; $5f07: $28 $24

    push de                                       ; $5f09: $d5
    push af                                       ; $5f0a: $f5
    call Call_00b_5e55                            ; $5f0b: $cd $55 $5e
    pop af                                        ; $5f0e: $f1
    and $0f                                       ; $5f0f: $e6 $0f
    ld hl, $5eca                                  ; $5f11: $21 $ca $5e
    add l                                         ; $5f14: $85
    ld l, a                                       ; $5f15: $6f
    jr nc, jr_00b_5f19                            ; $5f16: $30 $01

    inc h                                         ; $5f18: $24

jr_00b_5f19:
    ld a, [hl]                                    ; $5f19: $7e
    ld hl, $5e8a                                  ; $5f1a: $21 $8a $5e
    add a                                         ; $5f1d: $87
    add a                                         ; $5f1e: $87
    add a                                         ; $5f1f: $87
    add l                                         ; $5f20: $85
    ld l, a                                       ; $5f21: $6f
    jr nc, jr_00b_5f25                            ; $5f22: $30 $01

    inc h                                         ; $5f24: $24

jr_00b_5f25:
    ld d, $01                                     ; $5f25: $16 $01
    ld e, $01                                     ; $5f27: $1e $01
    call Call_000_0595                            ; $5f29: $cd $95 $05
    pop de                                        ; $5f2c: $d1

jr_00b_5f2d:
    pop hl                                        ; $5f2d: $e1
    push hl                                       ; $5f2e: $e5
    ld b, d                                       ; $5f2f: $42
    ld c, e                                       ; $5f30: $4b
    ld d, h                                       ; $5f31: $54
    ld e, l                                       ; $5f32: $5d
    ld h, $04                                     ; $5f33: $26 $04
    ld l, $08                                     ; $5f35: $2e $08
    call Call_00b_6dc7                            ; $5f37: $cd $c7 $6d
    pop hl                                        ; $5f3a: $e1
    pop hl                                        ; $5f3b: $e1
    pop de                                        ; $5f3c: $d1
    pop bc                                        ; $5f3d: $c1
    pop af                                        ; $5f3e: $f1
    ret                                           ; $5f3f: $c9


Call_00b_5f40:
    ld e, $30                                     ; $5f40: $1e $30
    ld a, h                                       ; $5f42: $7c
    cp $06                                        ; $5f43: $fe $06
    jr c, jr_00b_5f4b                             ; $5f45: $38 $04

    sub $06                                       ; $5f47: $d6 $06
    ld e, $38                                     ; $5f49: $1e $38

jr_00b_5f4b:
    sla a                                         ; $5f4b: $cb $27
    add l                                         ; $5f4d: $85
    sla a                                         ; $5f4e: $cb $27
    sla a                                         ; $5f50: $cb $27
    ld d, a                                       ; $5f52: $57
    ret                                           ; $5f53: $c9


Call_00b_5f54:
    ld l, a                                       ; $5f54: $6f
    ld a, [$c878]                                 ; $5f55: $fa $78 $c8
    cp $01                                        ; $5f58: $fe $01
    ret z                                         ; $5f5a: $c8

    push af                                       ; $5f5b: $f5
    push bc                                       ; $5f5c: $c5
    push de                                       ; $5f5d: $d5
    push hl                                       ; $5f5e: $e5
    push bc                                       ; $5f5f: $c5
    push de                                       ; $5f60: $d5
    ld a, l                                       ; $5f61: $7d
    cp $02                                        ; $5f62: $fe $02
    jr nz, jr_00b_5fdc                            ; $5f64: $20 $76

    bit 0, c                                      ; $5f66: $cb $41
    jr z, jr_00b_5fdc                             ; $5f68: $28 $72

    bit 0, e                                      ; $5f6a: $cb $43
    jr z, jr_00b_5fdc                             ; $5f6c: $28 $6e

    rst $08                                       ; $5f6e: $cf
    ld [hl+], a                                   ; $5f6f: $22
    push af                                       ; $5f70: $f5
    push bc                                       ; $5f71: $c5
    push de                                       ; $5f72: $d5
    push hl                                       ; $5f73: $e5
    call Call_00b_6c79                            ; $5f74: $cd $79 $6c
    push hl                                       ; $5f77: $e5
    ld b, $18                                     ; $5f78: $06 $18
    ld c, $15                                     ; $5f7a: $0e $15
    ld d, $04                                     ; $5f7c: $16 $04
    ld e, $03                                     ; $5f7e: $1e $03
    ld h, $0e                                     ; $5f80: $26 $0e
    ld l, $02                                     ; $5f82: $2e $02
    call Call_00b_6dc7                            ; $5f84: $cd $c7 $6d
    pop hl                                        ; $5f87: $e1
    ld a, $08                                     ; $5f88: $3e $08
    ld bc, $0100                                  ; $5f8a: $01 $00 $01
    ld de, $0100                                  ; $5f8d: $11 $00 $01
    rst $18                                       ; $5f90: $df
    jr nz, @+$0c                                  ; $5f91: $20 $0a

    ld a, $09                                     ; $5f93: $3e $09
    ld bc, $0100                                  ; $5f95: $01 $00 $01
    ld de, $0100                                  ; $5f98: $11 $00 $01
    rst $18                                       ; $5f9b: $df
    jr nz, @+$0c                                  ; $5f9c: $20 $0a

    ld a, $0a                                     ; $5f9e: $3e $0a
    ld bc, $0100                                  ; $5fa0: $01 $00 $01
    ld de, $0100                                  ; $5fa3: $11 $00 $01
    rst $18                                       ; $5fa6: $df
    jr nz, @+$0c                                  ; $5fa7: $20 $0a

    ld a, $0b                                     ; $5fa9: $3e $0b
    ld bc, $0100                                  ; $5fab: $01 $00 $01
    ld de, $0100                                  ; $5fae: $11 $00 $01
    rst $18                                       ; $5fb1: $df
    jr nz, @+$0c                                  ; $5fb2: $20 $0a

    ld a, $0c                                     ; $5fb4: $3e $0c
    ld bc, $0100                                  ; $5fb6: $01 $00 $01
    ld de, $0100                                  ; $5fb9: $11 $00 $01
    rst $18                                       ; $5fbc: $df
    jr nz, @+$0c                                  ; $5fbd: $20 $0a

    ld a, $0d                                     ; $5fbf: $3e $0d
    ld bc, $0100                                  ; $5fc1: $01 $00 $01
    ld de, $0100                                  ; $5fc4: $11 $00 $01
    rst $18                                       ; $5fc7: $df
    jr nz, @+$0c                                  ; $5fc8: $20 $0a

    ld a, $0e                                     ; $5fca: $3e $0e
    ld bc, $0100                                  ; $5fcc: $01 $00 $01
    ld de, $0100                                  ; $5fcf: $11 $00 $01
    rst $18                                       ; $5fd2: $df
    jr nz, @+$0c                                  ; $5fd3: $20 $0a

    pop hl                                        ; $5fd5: $e1
    pop de                                        ; $5fd6: $d1
    pop bc                                        ; $5fd7: $c1
    pop af                                        ; $5fd8: $f1
    jp Jump_00b_607f                              ; $5fd9: $c3 $7f $60


jr_00b_5fdc:
    bit 0, c                                      ; $5fdc: $cb $41
    jr nz, jr_00b_5fef                            ; $5fde: $20 $0f

    ld a, [$c893]                                 ; $5fe0: $fa $93 $c8
    cp $03                                        ; $5fe3: $fe $03
    jr z, @+$06                                   ; $5fe5: $28 $04

    rst $08                                       ; $5fe7: $cf
    jr nz, jr_00b_6002                            ; $5fe8: $20 $18

    ld de, $21cf                                  ; $5fea: $11 $cf $21
    jr @+$0f                                      ; $5fed: $18 $0d

jr_00b_5fef:
    ld a, [$c893]                                 ; $5fef: $fa $93 $c8
    cp $03                                        ; $5ff2: $fe $03
    jr z, jr_00b_5ffa                             ; $5ff4: $28 $04

    rst $08                                       ; $5ff6: $cf
    ld hl, $0218                                  ; $5ff7: $21 $18 $02

jr_00b_5ffa:
    rst $08                                       ; $5ffa: $cf
    jr nz, jr_00b_6076                            ; $5ffb: $20 $79

    or a                                          ; $5ffd: $b7
    jp z, Jump_00b_607f                           ; $5ffe: $ca $7f $60

    push af                                       ; $6001: $f5

jr_00b_6002:
    push bc                                       ; $6002: $c5
    push de                                       ; $6003: $d5
    push hl                                       ; $6004: $e5
    push hl                                       ; $6005: $e5
    ld b, $05                                     ; $6006: $06 $05
    ld c, $24                                     ; $6008: $0e $24
    ld d, $04                                     ; $600a: $16 $04
    ld e, $03                                     ; $600c: $1e $03
    ld h, $05                                     ; $600e: $26 $05
    ld l, $02                                     ; $6010: $2e $02
    call Call_00b_6dc7                            ; $6012: $cd $c7 $6d
    pop hl                                        ; $6015: $e1
    push hl                                       ; $6016: $e5
    ld b, $00                                     ; $6017: $06 $00
    ld c, $24                                     ; $6019: $0e $24
    ld d, $0c                                     ; $601b: $16 $0c
    ld e, $03                                     ; $601d: $1e $03
    ld h, $05                                     ; $601f: $26 $05
    ld l, $02                                     ; $6021: $2e $02
    call Call_00b_6dc7                            ; $6023: $cd $c7 $6d
    pop hl                                        ; $6026: $e1
    ld a, $08                                     ; $6027: $3e $08
    ld bc, $0d00                                  ; $6029: $01 $00 $0d
    ld de, $0380                                  ; $602c: $11 $80 $03
    rst $18                                       ; $602f: $df
    jr nz, @+$0c                                  ; $6030: $20 $0a

    ld a, $09                                     ; $6032: $3e $09
    ld bc, $0f00                                  ; $6034: $01 $00 $0f
    ld de, $0380                                  ; $6037: $11 $80 $03
    rst $18                                       ; $603a: $df
    jr nz, @+$0c                                  ; $603b: $20 $0a

    ld a, $0a                                     ; $603d: $3e $0a
    ld bc, $1100                                  ; $603f: $01 $00 $11
    ld de, $0380                                  ; $6042: $11 $80 $03
    rst $18                                       ; $6045: $df
    jr nz, @+$0c                                  ; $6046: $20 $0a

    ld a, $0b                                     ; $6048: $3e $0b
    ld bc, $0d00                                  ; $604a: $01 $00 $0d
    ld de, $0580                                  ; $604d: $11 $80 $05
    rst $18                                       ; $6050: $df
    jr nz, @+$0c                                  ; $6051: $20 $0a

    ld a, $0c                                     ; $6053: $3e $0c
    ld bc, $0f00                                  ; $6055: $01 $00 $0f
    ld de, $0580                                  ; $6058: $11 $80 $05
    rst $18                                       ; $605b: $df
    jr nz, @+$0c                                  ; $605c: $20 $0a

    ld a, $0d                                     ; $605e: $3e $0d
    ld bc, $1100                                  ; $6060: $01 $00 $11
    ld de, $0580                                  ; $6063: $11 $80 $05
    rst $18                                       ; $6066: $df
    jr nz, @+$0c                                  ; $6067: $20 $0a

    ld a, $0e                                     ; $6069: $3e $0e
    ld bc, $0800                                  ; $606b: $01 $00 $08
    ld de, $0780                                  ; $606e: $11 $80 $07
    rst $18                                       ; $6071: $df
    jr nz, jr_00b_607e                            ; $6072: $20 $0a

    ld a, $0e                                     ; $6074: $3e $0e

jr_00b_6076:
    ld b, $00                                     ; $6076: $06 $00
    rst $18                                       ; $6078: $df
    inc l                                         ; $6079: $2c
    ld a, [bc]                                    ; $607a: $0a
    pop hl                                        ; $607b: $e1
    pop de                                        ; $607c: $d1
    pop bc                                        ; $607d: $c1

jr_00b_607e:
    pop af                                        ; $607e: $f1

Jump_00b_607f:
    push de                                       ; $607f: $d5
    ld a, b                                       ; $6080: $78
    and $0f                                       ; $6081: $e6 $0f
    cp $0b                                        ; $6083: $fe $0b
    jr c, jr_00b_609a                             ; $6085: $38 $13

    push hl                                       ; $6087: $e5
    ld b, $30                                     ; $6088: $06 $30
    ld c, $30                                     ; $608a: $0e $30
    ld d, $04                                     ; $608c: $16 $04
    ld e, $06                                     ; $608e: $1e $06
    ld h, $04                                     ; $6090: $26 $04
    ld l, $08                                     ; $6092: $2e $08
    call Call_00b_6dc7                            ; $6094: $cd $c7 $6d
    pop hl                                        ; $6097: $e1
    jr jr_00b_60a5                                ; $6098: $18 $0b

jr_00b_609a:
    ld a, b                                       ; $609a: $78
    ld b, c                                       ; $609b: $41
    ld c, $00                                     ; $609c: $0e $00
    ld d, $04                                     ; $609e: $16 $04
    ld e, $06                                     ; $60a0: $1e $06
    call Call_00b_5ed6                            ; $60a2: $cd $d6 $5e

jr_00b_60a5:
    pop de                                        ; $60a5: $d1
    ld a, d                                       ; $60a6: $7a
    and $0f                                       ; $60a7: $e6 $0f
    cp $0b                                        ; $60a9: $fe $0b
    jr c, jr_00b_60c0                             ; $60ab: $38 $13

    push hl                                       ; $60ad: $e5
    ld b, $30                                     ; $60ae: $06 $30
    ld c, $30                                     ; $60b0: $0e $30
    ld d, $0c                                     ; $60b2: $16 $0c
    ld e, $06                                     ; $60b4: $1e $06
    ld h, $04                                     ; $60b6: $26 $04
    ld l, $08                                     ; $60b8: $2e $08
    call Call_00b_6dc7                            ; $60ba: $cd $c7 $6d
    pop hl                                        ; $60bd: $e1
    jr jr_00b_60cb                                ; $60be: $18 $0b

jr_00b_60c0:
    ld a, d                                       ; $60c0: $7a
    ld b, e                                       ; $60c1: $43
    ld c, $01                                     ; $60c2: $0e $01
    ld d, $0c                                     ; $60c4: $16 $0c
    ld e, $06                                     ; $60c6: $1e $06
    call Call_00b_5ed6                            ; $60c8: $cd $d6 $5e

jr_00b_60cb:
    pop de                                        ; $60cb: $d1
    pop bc                                        ; $60cc: $c1
    ld a, l                                       ; $60cd: $7d
    cp $02                                        ; $60ce: $fe $02
    jr nz, jr_00b_60dc                            ; $60d0: $20 $0a

    bit 0, c                                      ; $60d2: $cb $41
    jr z, jr_00b_60dc                             ; $60d4: $28 $06

    bit 0, e                                      ; $60d6: $cb $43
    jr z, jr_00b_60dc                             ; $60d8: $28 $02

    jr jr_00b_60f9                                ; $60da: $18 $1d

jr_00b_60dc:
    push bc                                       ; $60dc: $c5
    ld a, c                                       ; $60dd: $79
    or a                                          ; $60de: $b7
    jr nz, jr_00b_60e5                            ; $60df: $20 $04

    ld a, $07                                     ; $60e1: $3e $07
    jr jr_00b_60e7                                ; $60e3: $18 $02

jr_00b_60e5:
    ld a, $0e                                     ; $60e5: $3e $0e

jr_00b_60e7:
    call Call_00b_5be6                            ; $60e7: $cd $e6 $5b
    push hl                                       ; $60ea: $e5
    ld a, $01                                     ; $60eb: $3e $01
    ld hl, $5de1                                  ; $60ed: $21 $e1 $5d
    call Call_000_23e8                            ; $60f0: $cd $e8 $23
    pop hl                                        ; $60f3: $e1
    xor a                                         ; $60f4: $af
    ld [$c3f5], a                                 ; $60f5: $ea $f5 $c3
    pop bc                                        ; $60f8: $c1

jr_00b_60f9:
    ld a, l                                       ; $60f9: $7d
    cp $02                                        ; $60fa: $fe $02
    jr z, jr_00b_6143                             ; $60fc: $28 $45

    ld a, c                                       ; $60fe: $79
    ld b, $05                                     ; $60ff: $06 $05
    ld c, $0e                                     ; $6101: $0e $0e
    or a                                          ; $6103: $b7
    jr z, jr_00b_612c                             ; $6104: $28 $26

    push hl                                       ; $6106: $e5
    ld b, $12                                     ; $6107: $06 $12
    ld c, $2d                                     ; $6109: $0e $2d
    ld d, $0f                                     ; $610b: $16 $0f
    ld e, $0f                                     ; $610d: $1e $0f
    ld h, $04                                     ; $610f: $26 $04
    ld l, $01                                     ; $6111: $2e $01
    call Call_00b_6dc7                            ; $6113: $cd $c7 $6d
    pop hl                                        ; $6116: $e1
    push hl                                       ; $6117: $e5
    ld b, $12                                     ; $6118: $06 $12
    ld c, $2e                                     ; $611a: $0e $2e
    ld d, $06                                     ; $611c: $16 $06
    ld e, $0f                                     ; $611e: $1e $0f
    ld h, $04                                     ; $6120: $26 $04
    ld l, $01                                     ; $6122: $2e $01
    call Call_00b_6dc7                            ; $6124: $cd $c7 $6d
    pop hl                                        ; $6127: $e1
    ld b, $05                                     ; $6128: $06 $05
    ld c, $0e                                     ; $612a: $0e $0e

jr_00b_612c:
    call Call_00b_65ae                            ; $612c: $cd $ae $65
    cp $0a                                        ; $612f: $fe $0a
    jr c, jr_00b_6135                             ; $6131: $38 $02

    dec b                                         ; $6133: $05
    dec c                                         ; $6134: $0d

jr_00b_6135:
    ld d, b                                       ; $6135: $50
    ld e, $0f                                     ; $6136: $1e $0f
    call Call_00b_65fe                            ; $6138: $cd $fe $65
    ld d, c                                       ; $613b: $51
    ld e, $0f                                     ; $613c: $1e $0f
    call Call_00b_65fe                            ; $613e: $cd $fe $65
    jr jr_00b_61a4                                ; $6141: $18 $61

jr_00b_6143:
    push hl                                       ; $6143: $e5
    ld b, $00                                     ; $6144: $06 $00
    ld c, $00                                     ; $6146: $0e $00
    ld d, $05                                     ; $6148: $16 $05
    ld e, $0f                                     ; $614a: $1e $0f
    ld h, $04                                     ; $614c: $26 $04
    ld l, $01                                     ; $614e: $2e $01
    call Call_00b_6dc7                            ; $6150: $cd $c7 $6d
    pop hl                                        ; $6153: $e1
    push hl                                       ; $6154: $e5
    ld b, $14                                     ; $6155: $06 $14
    ld c, $00                                     ; $6157: $0e $00
    ld d, $0e                                     ; $6159: $16 $0e
    ld e, $0f                                     ; $615b: $1e $0f
    ld h, $05                                     ; $615d: $26 $05
    ld l, $01                                     ; $615f: $2e $01
    call Call_00b_6dc7                            ; $6161: $cd $c7 $6d
    pop hl                                        ; $6164: $e1
    push hl                                       ; $6165: $e5
    ld b, $0a                                     ; $6166: $06 $0a
    ld c, $2d                                     ; $6168: $0e $2d
    ld d, $07                                     ; $616a: $16 $07
    ld e, $0f                                     ; $616c: $1e $0f
    ld h, $05                                     ; $616e: $26 $05
    ld l, $01                                     ; $6170: $2e $01
    call Call_00b_6dc7                            ; $6172: $cd $c7 $6d
    pop hl                                        ; $6175: $e1
    ld a, [$c8be]                                 ; $6176: $fa $be $c8
    ld d, $03                                     ; $6179: $16 $03
    ld e, $0f                                     ; $617b: $1e $0f
    call Call_00b_6646                            ; $617d: $cd $46 $66
    cp $ca                                        ; $6180: $fe $ca
    jr c, jr_00b_6186                             ; $6182: $38 $02

    cpl                                           ; $6184: $2f
    inc a                                         ; $6185: $3c

jr_00b_6186:
    ld d, $04                                     ; $6186: $16 $04
    ld e, $0f                                     ; $6188: $1e $0f
    call Call_00b_65fe                            ; $618a: $cd $fe $65
    ld a, [$c8fe]                                 ; $618d: $fa $fe $c8
    ld d, $0e                                     ; $6190: $16 $0e
    ld e, $0f                                     ; $6192: $1e $0f
    call Call_00b_6646                            ; $6194: $cd $46 $66
    cp $ca                                        ; $6197: $fe $ca
    jr c, jr_00b_619d                             ; $6199: $38 $02

    cpl                                           ; $619b: $2f
    inc a                                         ; $619c: $3c

jr_00b_619d:
    ld d, $0f                                     ; $619d: $16 $0f
    ld e, $0f                                     ; $619f: $1e $0f
    call Call_00b_65fe                            ; $61a1: $cd $fe $65

jr_00b_61a4:
    ld hl, $c897                                  ; $61a4: $21 $97 $c8
    ld a, [hl+]                                   ; $61a7: $2a
    ld d, $04                                     ; $61a8: $16 $04
    ld e, $10                                     ; $61aa: $1e $10
    call Call_00b_65fe                            ; $61ac: $cd $fe $65
    ld a, [hl]                                    ; $61af: $7e
    ld d, $04                                     ; $61b0: $16 $04
    ld e, $11                                     ; $61b2: $1e $11
    call Call_00b_65fe                            ; $61b4: $cd $fe $65
    ld hl, $c8d7                                  ; $61b7: $21 $d7 $c8
    ld a, [hl+]                                   ; $61ba: $2a
    ld d, $0f                                     ; $61bb: $16 $0f
    ld e, $10                                     ; $61bd: $1e $10
    call Call_00b_65fe                            ; $61bf: $cd $fe $65
    ld a, [hl]                                    ; $61c2: $7e
    ld d, $0f                                     ; $61c3: $16 $0f
    ld e, $11                                     ; $61c5: $1e $11
    call Call_00b_65fe                            ; $61c7: $cd $fe $65
    pop hl                                        ; $61ca: $e1
    pop de                                        ; $61cb: $d1
    pop bc                                        ; $61cc: $c1
    pop af                                        ; $61cd: $f1
    ret                                           ; $61ce: $c9


Call_00b_61cf:
    push af                                       ; $61cf: $f5
    push bc                                       ; $61d0: $c5
    push de                                       ; $61d1: $d5
    push hl                                       ; $61d2: $e5
    rst $08                                       ; $61d3: $cf
    jr nz, @-$31                                  ; $61d4: $20 $cd

    db $d3                                        ; $61d6: $d3
    ld h, a                                       ; $61d7: $67
    ld a, c                                       ; $61d8: $79
    cp $04                                        ; $61d9: $fe $04
    jr nc, jr_00b_61fd                            ; $61db: $30 $20

    push bc                                       ; $61dd: $c5
    ld a, c                                       ; $61de: $79
    cp $01                                        ; $61df: $fe $01
    jr z, jr_00b_61fc                             ; $61e1: $28 $19

    sub $02                                       ; $61e3: $d6 $02
    ld c, a                                       ; $61e5: $4f
    sla c                                         ; $61e6: $cb $21
    ld a, $0a                                     ; $61e8: $3e $0a
    add c                                         ; $61ea: $81
    ld c, a                                       ; $61eb: $4f
    push hl                                       ; $61ec: $e5
    ld b, c                                       ; $61ed: $41
    ld c, $24                                     ; $61ee: $0e $24
    ld d, $17                                     ; $61f0: $16 $17
    ld e, $0e                                     ; $61f2: $1e $0e
    ld h, $02                                     ; $61f4: $26 $02
    ld l, $02                                     ; $61f6: $2e $02
    call Call_00b_6dc7                            ; $61f8: $cd $c7 $6d
    pop hl                                        ; $61fb: $e1

jr_00b_61fc:
    pop bc                                        ; $61fc: $c1

jr_00b_61fd:
    push bc                                       ; $61fd: $c5
    ld a, c                                       ; $61fe: $79
    cp $01                                        ; $61ff: $fe $01
    jr z, jr_00b_6275                             ; $6201: $28 $72

    cp $02                                        ; $6203: $fe $02
    jr nz, jr_00b_622b                            ; $6205: $20 $24

    push hl                                       ; $6207: $e5
    ld b, $22                                     ; $6208: $06 $22
    ld c, $2b                                     ; $620a: $0e $2b
    ld d, $1f                                     ; $620c: $16 $1f
    ld e, $0c                                     ; $620e: $1e $0c
    ld h, $04                                     ; $6210: $26 $04
    ld l, $05                                     ; $6212: $2e $05
    call Call_00b_6dc7                            ; $6214: $cd $c7 $6d
    pop hl                                        ; $6217: $e1
    push hl                                       ; $6218: $e5
    ld b, $00                                     ; $6219: $06 $00
    ld c, $2b                                     ; $621b: $0e $2b
    ld d, $21                                     ; $621d: $16 $21
    ld e, $06                                     ; $621f: $1e $06
    ld h, $02                                     ; $6221: $26 $02
    ld l, $01                                     ; $6223: $2e $01
    call Call_00b_6dc7                            ; $6225: $cd $c7 $6d
    pop hl                                        ; $6228: $e1
    jr jr_00b_6275                                ; $6229: $18 $4a

jr_00b_622b:
    cp $03                                        ; $622b: $fe $03
    jr nz, jr_00b_6253                            ; $622d: $20 $24

    push hl                                       ; $622f: $e5
    ld b, $26                                     ; $6230: $06 $26
    ld c, $2b                                     ; $6232: $0e $2b
    ld d, $1f                                     ; $6234: $16 $1f
    ld e, $0c                                     ; $6236: $1e $0c
    ld h, $04                                     ; $6238: $26 $04
    ld l, $05                                     ; $623a: $2e $05
    call Call_00b_6dc7                            ; $623c: $cd $c7 $6d
    pop hl                                        ; $623f: $e1
    push hl                                       ; $6240: $e5
    ld b, $00                                     ; $6241: $06 $00
    ld c, $2c                                     ; $6243: $0e $2c
    ld d, $21                                     ; $6245: $16 $21
    ld e, $06                                     ; $6247: $1e $06
    ld h, $02                                     ; $6249: $26 $02
    ld l, $01                                     ; $624b: $2e $01
    call Call_00b_6dc7                            ; $624d: $cd $c7 $6d
    pop hl                                        ; $6250: $e1
    jr jr_00b_6275                                ; $6251: $18 $22

jr_00b_6253:
    push hl                                       ; $6253: $e5
    ld b, $23                                     ; $6254: $06 $23
    ld c, $0c                                     ; $6256: $0e $0c
    ld d, $1f                                     ; $6258: $16 $1f
    ld e, $0c                                     ; $625a: $1e $0c
    ld h, $04                                     ; $625c: $26 $04
    ld l, $05                                     ; $625e: $2e $05
    call Call_00b_6dc7                            ; $6260: $cd $c7 $6d
    pop hl                                        ; $6263: $e1
    push hl                                       ; $6264: $e5
    ld b, $00                                     ; $6265: $06 $00
    ld c, $2d                                     ; $6267: $0e $2d
    ld d, $21                                     ; $6269: $16 $21
    ld e, $06                                     ; $626b: $1e $06
    ld h, $02                                     ; $626d: $26 $02
    ld l, $01                                     ; $626f: $2e $01
    call Call_00b_6dc7                            ; $6271: $cd $c7 $6d
    pop hl                                        ; $6274: $e1

jr_00b_6275:
    pop bc                                        ; $6275: $c1
    push bc                                       ; $6276: $c5
    ld a, [$c836]                                 ; $6277: $fa $36 $c8
    cp $01                                        ; $627a: $fe $01
    jr z, jr_00b_62f1                             ; $627c: $28 $73

    cp $02                                        ; $627e: $fe $02
    jr nz, jr_00b_6295                            ; $6280: $20 $13

    push hl                                       ; $6282: $e5
    ld b, $0a                                     ; $6283: $06 $0a
    ld c, $28                                     ; $6285: $0e $28
    ld d, $14                                     ; $6287: $16 $14
    ld e, $03                                     ; $6289: $1e $03
    ld h, $14                                     ; $628b: $26 $14
    ld l, $01                                     ; $628d: $2e $01
    call Call_00b_6dc7                            ; $628f: $cd $c7 $6d
    pop hl                                        ; $6292: $e1
    jr jr_00b_62f1                                ; $6293: $18 $5c

jr_00b_6295:
    cp $03                                        ; $6295: $fe $03
    jr nz, jr_00b_62ac                            ; $6297: $20 $13

    push hl                                       ; $6299: $e5
    ld b, $0a                                     ; $629a: $06 $0a
    ld c, $29                                     ; $629c: $0e $29
    ld d, $14                                     ; $629e: $16 $14
    ld e, $03                                     ; $62a0: $1e $03
    ld h, $14                                     ; $62a2: $26 $14
    ld l, $01                                     ; $62a4: $2e $01
    call Call_00b_6dc7                            ; $62a6: $cd $c7 $6d
    pop hl                                        ; $62a9: $e1
    jr jr_00b_62f1                                ; $62aa: $18 $45

jr_00b_62ac:
    cp $04                                        ; $62ac: $fe $04
    jr nz, jr_00b_62c3                            ; $62ae: $20 $13

    push hl                                       ; $62b0: $e5
    ld b, $0a                                     ; $62b1: $06 $0a
    ld c, $2a                                     ; $62b3: $0e $2a
    ld d, $14                                     ; $62b5: $16 $14
    ld e, $03                                     ; $62b7: $1e $03
    ld h, $14                                     ; $62b9: $26 $14
    ld l, $01                                     ; $62bb: $2e $01
    call Call_00b_6dc7                            ; $62bd: $cd $c7 $6d
    pop hl                                        ; $62c0: $e1
    jr jr_00b_62f1                                ; $62c1: $18 $2e

jr_00b_62c3:
    cp $05                                        ; $62c3: $fe $05
    jr nz, jr_00b_62da                            ; $62c5: $20 $13

    push hl                                       ; $62c7: $e5
    ld b, $0a                                     ; $62c8: $06 $0a
    ld c, $2b                                     ; $62ca: $0e $2b
    ld d, $14                                     ; $62cc: $16 $14
    ld e, $03                                     ; $62ce: $1e $03
    ld h, $14                                     ; $62d0: $26 $14
    ld l, $01                                     ; $62d2: $2e $01
    call Call_00b_6dc7                            ; $62d4: $cd $c7 $6d
    pop hl                                        ; $62d7: $e1
    jr jr_00b_62f1                                ; $62d8: $18 $17

jr_00b_62da:
    cp $06                                        ; $62da: $fe $06
    jr nz, jr_00b_62f1                            ; $62dc: $20 $13

    push hl                                       ; $62de: $e5
    ld b, $0a                                     ; $62df: $06 $0a
    ld c, $2c                                     ; $62e1: $0e $2c
    ld d, $14                                     ; $62e3: $16 $14
    ld e, $03                                     ; $62e5: $1e $03
    ld h, $14                                     ; $62e7: $26 $14
    ld l, $01                                     ; $62e9: $2e $01
    call Call_00b_6dc7                            ; $62eb: $cd $c7 $6d
    pop hl                                        ; $62ee: $e1
    jr jr_00b_62f1                                ; $62ef: $18 $00

jr_00b_62f1:
    pop bc                                        ; $62f1: $c1
    push bc                                       ; $62f2: $c5
    ld a, c                                       ; $62f3: $79
    cp $01                                        ; $62f4: $fe $01
    jr z, jr_00b_6353                             ; $62f6: $28 $5b

    cp $04                                        ; $62f8: $fe $04
    jr nc, jr_00b_6320                            ; $62fa: $30 $24

    push hl                                       ; $62fc: $e5
    ld b, $07                                     ; $62fd: $06 $07
    ld c, $1c                                     ; $62ff: $0e $1c
    ld d, $1b                                     ; $6301: $16 $1b
    ld e, $0a                                     ; $6303: $1e $0a
    ld h, $0d                                     ; $6305: $26 $0d
    ld l, $02                                     ; $6307: $2e $02
    call Call_00b_6dc7                            ; $6309: $cd $c7 $6d
    pop hl                                        ; $630c: $e1
    push hl                                       ; $630d: $e5
    ld b, $02                                     ; $630e: $06 $02
    ld c, $13                                     ; $6310: $0e $13
    ld d, $16                                     ; $6312: $16 $16
    ld e, $01                                     ; $6314: $1e $01
    ld h, $0d                                     ; $6316: $26 $0d
    ld l, $01                                     ; $6318: $2e $01
    call Call_00b_6dc7                            ; $631a: $cd $c7 $6d
    pop hl                                        ; $631d: $e1
    jr jr_00b_6353                                ; $631e: $18 $33

jr_00b_6320:
    push hl                                       ; $6320: $e5
    ld b, $14                                     ; $6321: $06 $14
    ld c, $00                                     ; $6323: $0e $00
    ld d, $1b                                     ; $6325: $16 $1b
    ld e, $0a                                     ; $6327: $1e $0a
    ld h, $0d                                     ; $6329: $26 $0d
    ld l, $02                                     ; $632b: $2e $02
    call Call_00b_6dc7                            ; $632d: $cd $c7 $6d
    pop hl                                        ; $6330: $e1
    push hl                                       ; $6331: $e5
    ld b, $0e                                     ; $6332: $06 $0e
    ld c, $25                                     ; $6334: $0e $25
    ld d, $1b                                     ; $6336: $16 $1b
    ld e, $0b                                     ; $6338: $1e $0b
    ld h, $0d                                     ; $633a: $26 $0d
    ld l, $02                                     ; $633c: $2e $02
    call Call_00b_6dc7                            ; $633e: $cd $c7 $6d
    pop hl                                        ; $6341: $e1
    push hl                                       ; $6342: $e5
    ld b, $16                                     ; $6343: $06 $16
    ld c, $00                                     ; $6345: $0e $00
    ld d, $16                                     ; $6347: $16 $16
    ld e, $01                                     ; $6349: $1e $01
    ld h, $10                                     ; $634b: $26 $10
    ld l, $01                                     ; $634d: $2e $01
    call Call_00b_6dc7                            ; $634f: $cd $c7 $6d
    pop hl                                        ; $6352: $e1

jr_00b_6353:
    pop bc                                        ; $6353: $c1
    push bc                                       ; $6354: $c5
    ld a, [$c8be]                                 ; $6355: $fa $be $c8
    ld d, $23                                     ; $6358: $16 $23
    ld e, $08                                     ; $635a: $1e $08
    call Call_00b_6646                            ; $635c: $cd $46 $66
    cp $ca                                        ; $635f: $fe $ca
    jr c, jr_00b_6365                             ; $6361: $38 $02

    cpl                                           ; $6363: $2f
    inc a                                         ; $6364: $3c

jr_00b_6365:
    ld d, $24                                     ; $6365: $16 $24
    ld e, $08                                     ; $6367: $1e $08
    call Call_00b_65fe                            ; $6369: $cd $fe $65
    pop bc                                        ; $636c: $c1
    push bc                                       ; $636d: $c5
    ld a, c                                       ; $636e: $79
    cp $04                                        ; $636f: $fe $04
    jr nc, jr_00b_637c                            ; $6371: $30 $09

    ld a, b                                       ; $6373: $78
    ld b, $00                                     ; $6374: $06 $00
    ld d, $16                                     ; $6376: $16 $16
    ld e, $06                                     ; $6378: $1e $06
    jr jr_00b_639c                                ; $637a: $18 $20

jr_00b_637c:
    push af                                       ; $637c: $f5
    push bc                                       ; $637d: $c5
    push de                                       ; $637e: $d5
    push hl                                       ; $637f: $e5
    push hl                                       ; $6380: $e5
    ld b, $08                                     ; $6381: $06 $08
    ld c, $06                                     ; $6383: $0e $06
    ld d, $16                                     ; $6385: $16 $16
    ld e, $06                                     ; $6387: $1e $06
    ld h, $04                                     ; $6389: $26 $04
    ld l, $02                                     ; $638b: $2e $02
    call Call_00b_6dc7                            ; $638d: $cd $c7 $6d
    pop hl                                        ; $6390: $e1
    pop hl                                        ; $6391: $e1
    pop de                                        ; $6392: $d1
    pop bc                                        ; $6393: $c1
    pop af                                        ; $6394: $f1
    ld a, b                                       ; $6395: $78
    ld b, $01                                     ; $6396: $06 $01
    ld d, $16                                     ; $6398: $16 $16
    ld e, $08                                     ; $639a: $1e $08

jr_00b_639c:
    ld c, $00                                     ; $639c: $0e $00
    call Call_00b_5ed6                            ; $639e: $cd $d6 $5e
    pop bc                                        ; $63a1: $c1
    ld a, c                                       ; $63a2: $79
    cp $04                                        ; $63a3: $fe $04
    jr nc, jr_00b_63bb                            ; $63a5: $30 $14

    ld a, $01                                     ; $63a7: $3e $01
    ld [$c3f5], a                                 ; $63a9: $ea $f5 $c3
    ld a, $04                                     ; $63ac: $3e $04
    call Call_00b_5be6                            ; $63ae: $cd $e6 $5b
    ld a, $01                                     ; $63b1: $3e $01
    ld hl, $5de1                                  ; $63b3: $21 $e1 $5d
    call Call_000_23e8                            ; $63b6: $cd $e8 $23
    jr jr_00b_63fd                                ; $63b9: $18 $42

jr_00b_63bb:
    ld a, $02                                     ; $63bb: $3e $02
    ld bc, $3f00                                  ; $63bd: $01 $00 $3f
    ld de, $3f00                                  ; $63c0: $11 $00 $3f
    rst $18                                       ; $63c3: $df
    jr nz, @+$0c                                  ; $63c4: $20 $0a

    ld a, $03                                     ; $63c6: $3e $03
    ld bc, $3f00                                  ; $63c8: $01 $00 $3f
    ld de, $3f00                                  ; $63cb: $11 $00 $3f
    rst $18                                       ; $63ce: $df
    jr nz, @+$0c                                  ; $63cf: $20 $0a

    ld a, $04                                     ; $63d1: $3e $04
    ld bc, $3f00                                  ; $63d3: $01 $00 $3f
    ld de, $3f00                                  ; $63d6: $11 $00 $3f
    rst $18                                       ; $63d9: $df
    jr nz, @+$0c                                  ; $63da: $20 $0a

    ld a, $05                                     ; $63dc: $3e $05
    ld bc, $3f00                                  ; $63de: $01 $00 $3f
    ld de, $3f00                                  ; $63e1: $11 $00 $3f
    rst $18                                       ; $63e4: $df
    jr nz, @+$0c                                  ; $63e5: $20 $0a

    ld a, $06                                     ; $63e7: $3e $06
    ld bc, $3f00                                  ; $63e9: $01 $00 $3f
    ld de, $3f00                                  ; $63ec: $11 $00 $3f
    rst $18                                       ; $63ef: $df
    jr nz, @+$0c                                  ; $63f0: $20 $0a

    ld a, $07                                     ; $63f2: $3e $07
    ld bc, $3f00                                  ; $63f4: $01 $00 $3f
    ld de, $3f00                                  ; $63f7: $11 $00 $3f
    rst $18                                       ; $63fa: $df
    jr nz, @+$0c                                  ; $63fb: $20 $0a

jr_00b_63fd:
    pop hl                                        ; $63fd: $e1
    pop de                                        ; $63fe: $d1
    pop bc                                        ; $63ff: $c1
    pop af                                        ; $6400: $f1
    ret                                           ; $6401: $c9


Call_00b_6402:
    push af                                       ; $6402: $f5
    push bc                                       ; $6403: $c5
    push de                                       ; $6404: $d5
    push hl                                       ; $6405: $e5
    ld a, $04                                     ; $6406: $3e $04
    ldh [$96], a                                  ; $6408: $e0 $96
    ldh [rSVBK], a                                ; $640a: $e0 $70
    ld a, $08                                     ; $640c: $3e $08
    rst $18                                       ; $640e: $df
    inc d                                         ; $640f: $14
    ld a, [bc]                                    ; $6410: $0a
    ld a, l                                       ; $6411: $7d
    ldh [$e0], a                                  ; $6412: $e0 $e0
    ld a, h                                       ; $6414: $7c
    ldh [$e1], a                                  ; $6415: $e0 $e1
    ld hl, $ffe0                                  ; $6417: $21 $e0 $ff
    ld a, [hl+]                                   ; $641a: $2a
    ld h, [hl]                                    ; $641b: $66
    add $17                                       ; $641c: $c6 $17
    ld l, a                                       ; $641e: $6f
    xor a                                         ; $641f: $af
    ld [hl], a                                    ; $6420: $77
    ld a, $09                                     ; $6421: $3e $09
    rst $18                                       ; $6423: $df
    inc d                                         ; $6424: $14
    ld a, [bc]                                    ; $6425: $0a
    ld a, l                                       ; $6426: $7d
    ldh [$e0], a                                  ; $6427: $e0 $e0
    ld a, h                                       ; $6429: $7c
    ldh [$e1], a                                  ; $642a: $e0 $e1
    ld hl, $ffe0                                  ; $642c: $21 $e0 $ff
    ld a, [hl+]                                   ; $642f: $2a
    ld h, [hl]                                    ; $6430: $66
    add $17                                       ; $6431: $c6 $17
    ld l, a                                       ; $6433: $6f
    xor a                                         ; $6434: $af
    ld [hl], a                                    ; $6435: $77
    ld a, $0a                                     ; $6436: $3e $0a
    rst $18                                       ; $6438: $df
    inc d                                         ; $6439: $14
    ld a, [bc]                                    ; $643a: $0a
    ld a, l                                       ; $643b: $7d
    ldh [$e0], a                                  ; $643c: $e0 $e0
    ld a, h                                       ; $643e: $7c
    ldh [$e1], a                                  ; $643f: $e0 $e1
    ld hl, $ffe0                                  ; $6441: $21 $e0 $ff
    ld a, [hl+]                                   ; $6444: $2a
    ld h, [hl]                                    ; $6445: $66
    add $17                                       ; $6446: $c6 $17
    ld l, a                                       ; $6448: $6f
    xor a                                         ; $6449: $af
    ld [hl], a                                    ; $644a: $77
    ld a, $0b                                     ; $644b: $3e $0b
    rst $18                                       ; $644d: $df
    inc d                                         ; $644e: $14
    ld a, [bc]                                    ; $644f: $0a
    ld a, l                                       ; $6450: $7d
    ldh [$e0], a                                  ; $6451: $e0 $e0
    ld a, h                                       ; $6453: $7c
    ldh [$e1], a                                  ; $6454: $e0 $e1
    ld hl, $ffe0                                  ; $6456: $21 $e0 $ff
    ld a, [hl+]                                   ; $6459: $2a
    ld h, [hl]                                    ; $645a: $66
    add $17                                       ; $645b: $c6 $17
    ld l, a                                       ; $645d: $6f
    xor a                                         ; $645e: $af
    ld [hl], a                                    ; $645f: $77
    ld a, $0c                                     ; $6460: $3e $0c
    rst $18                                       ; $6462: $df
    inc d                                         ; $6463: $14
    ld a, [bc]                                    ; $6464: $0a
    ld a, l                                       ; $6465: $7d
    ldh [$e0], a                                  ; $6466: $e0 $e0
    ld a, h                                       ; $6468: $7c
    ldh [$e1], a                                  ; $6469: $e0 $e1
    ld hl, $ffe0                                  ; $646b: $21 $e0 $ff
    ld a, [hl+]                                   ; $646e: $2a
    ld h, [hl]                                    ; $646f: $66
    add $17                                       ; $6470: $c6 $17
    ld l, a                                       ; $6472: $6f
    xor a                                         ; $6473: $af
    ld [hl], a                                    ; $6474: $77
    ld a, $0d                                     ; $6475: $3e $0d
    rst $18                                       ; $6477: $df
    inc d                                         ; $6478: $14
    ld a, [bc]                                    ; $6479: $0a
    ld a, l                                       ; $647a: $7d
    ldh [$e0], a                                  ; $647b: $e0 $e0
    ld a, h                                       ; $647d: $7c
    ldh [$e1], a                                  ; $647e: $e0 $e1
    ld hl, $ffe0                                  ; $6480: $21 $e0 $ff
    ld a, [hl+]                                   ; $6483: $2a
    ld h, [hl]                                    ; $6484: $66
    add $17                                       ; $6485: $c6 $17
    ld l, a                                       ; $6487: $6f
    xor a                                         ; $6488: $af
    ld [hl], a                                    ; $6489: $77
    pop hl                                        ; $648a: $e1
    pop de                                        ; $648b: $d1
    pop bc                                        ; $648c: $c1
    pop af                                        ; $648d: $f1
    ret                                           ; $648e: $c9


    push af                                       ; $648f: $f5
    push bc                                       ; $6490: $c5
    push de                                       ; $6491: $d5
    push hl                                       ; $6492: $e5
    ld a, [$c3f4]                                 ; $6493: $fa $f4 $c3
    cp $27                                        ; $6496: $fe $27
    jr c, jr_00b_649e                             ; $6498: $38 $04

    xor a                                         ; $649a: $af
    ld [$c3f4], a                                 ; $649b: $ea $f4 $c3

jr_00b_649e:
    sla a                                         ; $649e: $cb $27
    ld hl, $64c9                                  ; $64a0: $21 $c9 $64
    ld e, a                                       ; $64a3: $5f
    ld d, $00                                     ; $64a4: $16 $00
    add hl, de                                    ; $64a6: $19
    push hl                                       ; $64a7: $e5
    ld d, $0a                                     ; $64a8: $16 $0a
    ld e, $01                                     ; $64aa: $1e $01
    call Call_000_056c                            ; $64ac: $cd $6c $05
    pop hl                                        ; $64af: $e1
    inc hl                                        ; $64b0: $23
    inc hl                                        ; $64b1: $23
    inc hl                                        ; $64b2: $23
    inc hl                                        ; $64b3: $23
    inc hl                                        ; $64b4: $23
    inc hl                                        ; $64b5: $23
    ld d, $0c                                     ; $64b6: $16 $0c
    ld e, $01                                     ; $64b8: $1e $01
    call Call_000_056c                            ; $64ba: $cd $6c $05
    ld a, [$c3f4]                                 ; $64bd: $fa $f4 $c3
    inc a                                         ; $64c0: $3c
    ld [$c3f4], a                                 ; $64c1: $ea $f4 $c3
    pop hl                                        ; $64c4: $e1
    pop de                                        ; $64c5: $d1
    pop bc                                        ; $64c6: $c1
    pop af                                        ; $64c7: $f1
    ret                                           ; $64c8: $c9


    jr nz, jr_00b_6549                            ; $64c9: $20 $7e

    ld b, b                                       ; $64cb: $40
    ld [hl], d                                    ; $64cc: $72
    ld h, b                                       ; $64cd: $60
    ld h, [hl]                                    ; $64ce: $66
    add c                                         ; $64cf: $81
    ld e, d                                       ; $64d0: $5a
    and h                                         ; $64d1: $a4
    ld c, [hl]                                    ; $64d2: $4e
    rst $00                                       ; $64d3: $c7
    ld b, d                                       ; $64d4: $42
    ld [$0d36], a                                 ; $64d5: $ea $36 $0d
    dec hl                                        ; $64d8: $2b
    jr nc, jr_00b_64fa                            ; $64d9: $30 $1f

    ld d, e                                       ; $64db: $53
    inc de                                        ; $64dc: $13
    halt                                          ; $64dd: $76
    rlca                                          ; $64de: $07
    cp c                                          ; $64df: $b9
    inc bc                                        ; $64e0: $03
    call c, $ff03                                 ; $64e1: $dc $03 $ff
    inc bc                                        ; $64e4: $03
    cp a                                          ; $64e5: $bf
    inc bc                                        ; $64e6: $03
    ld a, a                                       ; $64e7: $7f
    inc bc                                        ; $64e8: $03
    ccf                                           ; $64e9: $3f
    dec bc                                        ; $64ea: $0b
    rst $18                                       ; $64eb: $df
    ld [de], a                                    ; $64ec: $12
    cp a                                          ; $64ed: $bf
    ld a, [de]                                    ; $64ee: $1a
    ld a, a                                       ; $64ef: $7f
    ld [hl+], a                                   ; $64f0: $22
    ccf                                           ; $64f1: $3f
    ld a, [hl+]                                   ; $64f2: $2a
    rst $38                                       ; $64f3: $ff
    ld sp, $39bf                                  ; $64f4: $31 $bf $39
    ld a, a                                       ; $64f7: $7f
    ld b, c                                       ; $64f8: $41
    ccf                                           ; $64f9: $3f

jr_00b_64fa:
    ld c, c                                       ; $64fa: $49
    rst $38                                       ; $64fb: $ff
    ld d, b                                       ; $64fc: $50
    cp a                                          ; $64fd: $bf
    ld e, b                                       ; $64fe: $58
    cp h                                          ; $64ff: $bc
    ld e, h                                       ; $6500: $5c
    reti                                          ; $6501: $d9


    ld h, b                                       ; $6502: $60
    or $64                                        ; $6503: $f6 $64
    inc de                                        ; $6505: $13
    ld l, c                                       ; $6506: $69
    jr nc, @+$6f                                  ; $6507: $30 $6d

    ld c, l                                       ; $6509: $4d
    ld [hl], c                                    ; $650a: $71
    ld l, d                                       ; $650b: $6a
    ld [hl], l                                    ; $650c: $75
    add a                                         ; $650d: $87
    ld a, c                                       ; $650e: $79
    and h                                         ; $650f: $a4
    ld a, l                                       ; $6510: $7d
    pop bc                                        ; $6511: $c1
    ld a, l                                       ; $6512: $7d
    ldh [$7d], a                                  ; $6513: $e0 $7d
    nop                                           ; $6515: $00
    ld a, [hl]                                    ; $6516: $7e
    jr nz, jr_00b_6597                            ; $6517: $20 $7e

    ld b, b                                       ; $6519: $40
    ld [hl], d                                    ; $651a: $72
    ld h, b                                       ; $651b: $60
    ld h, [hl]                                    ; $651c: $66
    add c                                         ; $651d: $81
    ld e, d                                       ; $651e: $5a
    and h                                         ; $651f: $a4
    ld c, [hl]                                    ; $6520: $4e
    rst $00                                       ; $6521: $c7
    ld b, d                                       ; $6522: $42
    ld [$0d36], a                                 ; $6523: $ea $36 $0d
    dec hl                                        ; $6526: $2b
    ld d, h                                       ; $6527: $54
    ld h, d                                       ; $6528: $62
    rst $38                                       ; $6529: $ff
    ld l, e                                       ; $652a: $6b
    add b                                         ; $652b: $80
    ld [de], a                                    ; $652c: $12
    nop                                           ; $652d: $00
    nop                                           ; $652e: $00

Call_00b_652f:
    ld a, $0e                                     ; $652f: $3e $0e
    rst $18                                       ; $6531: $df
    inc d                                         ; $6532: $14
    ld a, [bc]                                    ; $6533: $0a
    ld a, l                                       ; $6534: $7d
    ldh [$e0], a                                  ; $6535: $e0 $e0
    ld a, h                                       ; $6537: $7c
    ldh [$e1], a                                  ; $6538: $e0 $e1
    ld a, $04                                     ; $653a: $3e $04
    ldh [$96], a                                  ; $653c: $e0 $96
    ldh [rSVBK], a                                ; $653e: $e0 $70
    ld hl, $ffe0                                  ; $6540: $21 $e0 $ff
    ld a, [hl+]                                   ; $6543: $2a
    ld h, [hl]                                    ; $6544: $66
    add $18                                       ; $6545: $c6 $18
    ld l, a                                       ; $6547: $6f
    ld a, [hl]                                    ; $6548: $7e

jr_00b_6549:
    ld b, a                                       ; $6549: $47
    bit 7, a                                      ; $654a: $cb $7f
    jr nz, jr_00b_6552                            ; $654c: $20 $04

    ld c, $02                                     ; $654e: $0e $02
    jr jr_00b_6554                                ; $6550: $18 $02

jr_00b_6552:
    ld c, $04                                     ; $6552: $0e $04

jr_00b_6554:
    add c                                         ; $6554: $81
    ld [hl], a                                    ; $6555: $77
    ld a, b                                       ; $6556: $78
    ld hl, $0040                                  ; $6557: $21 $40 $00
    call Call_000_0af2                            ; $655a: $cd $f2 $0a
    ld hl, $0800                                  ; $655d: $21 $00 $08
    add hl, de                                    ; $6560: $19
    ld d, h                                       ; $6561: $54
    ld e, l                                       ; $6562: $5d
    ld hl, $ffe0                                  ; $6563: $21 $e0 $ff
    ld a, [hl+]                                   ; $6566: $2a
    ld h, [hl]                                    ; $6567: $66
    add $06                                       ; $6568: $c6 $06
    ld l, a                                       ; $656a: $6f
    ld [hl], e                                    ; $656b: $73
    inc hl                                        ; $656c: $23
    ld [hl], d                                    ; $656d: $72
    ret                                           ; $656e: $c9


    push bc                                       ; $656f: $c5
    push hl                                       ; $6570: $e5
    ld b, $12                                     ; $6571: $06 $12
    ld c, $00                                     ; $6573: $0e $00
    ld d, $00                                     ; $6575: $16 $00

jr_00b_6577:
    push af                                       ; $6577: $f5
    call Call_00b_65de                            ; $6578: $cd $de $65
    add d                                         ; $657b: $82
    ld d, a                                       ; $657c: $57
    pop af                                        ; $657d: $f1
    inc c                                         ; $657e: $0c
    dec b                                         ; $657f: $05
    jr nz, jr_00b_6577                            ; $6580: $20 $f5

    pop hl                                        ; $6582: $e1
    pop bc                                        ; $6583: $c1
    ret                                           ; $6584: $c9


    push bc                                       ; $6585: $c5
    push hl                                       ; $6586: $e5
    ld c, $12                                     ; $6587: $0e $12
    ld de, $0000                                  ; $6589: $11 $00 $00

jr_00b_658c:
    xor a                                         ; $658c: $af
    call Call_00b_65de                            ; $658d: $cd $de $65
    ld b, a                                       ; $6590: $47
    ld a, $01                                     ; $6591: $3e $01
    call Call_00b_65de                            ; $6593: $cd $de $65
    cp b                                          ; $6596: $b8

jr_00b_6597:
    jr z, jr_00b_659f                             ; $6597: $28 $06

    jr c, jr_00b_659e                             ; $6599: $38 $03

    inc d                                         ; $659b: $14
    jr jr_00b_659f                                ; $659c: $18 $01

jr_00b_659e:
    inc e                                         ; $659e: $1c

jr_00b_659f:
    dec c                                         ; $659f: $0d
    jr nz, jr_00b_658c                            ; $65a0: $20 $ea

    ld a, e                                       ; $65a2: $7b
    cp d                                          ; $65a3: $ba
    jr c, jr_00b_65a9                             ; $65a4: $38 $03

    xor a                                         ; $65a6: $af
    jr jr_00b_65ab                                ; $65a7: $18 $02

jr_00b_65a9:
    ld a, $01                                     ; $65a9: $3e $01

jr_00b_65ab:
    pop hl                                        ; $65ab: $e1
    pop bc                                        ; $65ac: $c1
    ret                                           ; $65ad: $c9


Call_00b_65ae:
    push bc                                       ; $65ae: $c5
    push de                                       ; $65af: $d5
    push hl                                       ; $65b0: $e5
    ld a, [$c83a]                                 ; $65b1: $fa $3a $c8
    or a                                          ; $65b4: $b7
    ld a, $01                                     ; $65b5: $3e $01
    jr nz, jr_00b_65da                            ; $65b7: $20 $21

    ld c, $12                                     ; $65b9: $0e $12
    ld d, $00                                     ; $65bb: $16 $00
    ld e, $00                                     ; $65bd: $1e $00
    ld hl, $c96e                                  ; $65bf: $21 $6e $c9

jr_00b_65c2:
    ld a, [hl+]                                   ; $65c2: $2a
    cp $01                                        ; $65c3: $fe $01
    jr nz, jr_00b_65ca                            ; $65c5: $20 $03

    inc d                                         ; $65c7: $14
    jr jr_00b_65cf                                ; $65c8: $18 $05

jr_00b_65ca:
    cp $02                                        ; $65ca: $fe $02
    jr nz, jr_00b_65cf                            ; $65cc: $20 $01

    inc e                                         ; $65ce: $1c

jr_00b_65cf:
    dec c                                         ; $65cf: $0d
    jr nz, jr_00b_65c2                            ; $65d0: $20 $f0

    ld a, e                                       ; $65d2: $7b
    sub d                                         ; $65d3: $92
    cp $ca                                        ; $65d4: $fe $ca
    jr c, jr_00b_65da                             ; $65d6: $38 $02

    cpl                                           ; $65d8: $2f
    inc a                                         ; $65d9: $3c

jr_00b_65da:
    pop hl                                        ; $65da: $e1
    pop de                                        ; $65db: $d1
    pop bc                                        ; $65dc: $c1
    ret                                           ; $65dd: $c9


Call_00b_65de:
    push bc                                       ; $65de: $c5
    push hl                                       ; $65df: $e5
    or a                                          ; $65e0: $b7
    jr nz, jr_00b_65e8                            ; $65e1: $20 $05

    ld hl, $c8ac                                  ; $65e3: $21 $ac $c8
    jr jr_00b_65eb                                ; $65e6: $18 $03

jr_00b_65e8:
    ld hl, $c8ec                                  ; $65e8: $21 $ec $c8

jr_00b_65eb:
    ld b, $00                                     ; $65eb: $06 $00
    add hl, bc                                    ; $65ed: $09
    ld a, [hl]                                    ; $65ee: $7e
    ld b, a                                       ; $65ef: $47
    and $0f                                       ; $65f0: $e6 $0f
    sra b                                         ; $65f2: $cb $28
    sra b                                         ; $65f4: $cb $28
    sra b                                         ; $65f6: $cb $28
    sra b                                         ; $65f8: $cb $28
    add b                                         ; $65fa: $80
    pop hl                                        ; $65fb: $e1
    pop bc                                        ; $65fc: $c1
    ret                                           ; $65fd: $c9


Call_00b_65fe:
    push af                                       ; $65fe: $f5
    push bc                                       ; $65ff: $c5
    push de                                       ; $6600: $d5
    push hl                                       ; $6601: $e5
    ld c, $ff                                     ; $6602: $0e $ff
    ld hl, $ffff                                  ; $6604: $21 $ff $ff
    ld b, $64                                     ; $6607: $06 $64

jr_00b_6609:
    inc c                                         ; $6609: $0c
    sub b                                         ; $660a: $90
    jr nc, jr_00b_6609                            ; $660b: $30 $fc

    add b                                         ; $660d: $80
    ld b, $0a                                     ; $660e: $06 $0a

jr_00b_6610:
    inc h                                         ; $6610: $24
    sub b                                         ; $6611: $90
    jr nc, jr_00b_6610                            ; $6612: $30 $fc

    add b                                         ; $6614: $80
    ld l, a                                       ; $6615: $6f
    ld a, c                                       ; $6616: $79
    or a                                          ; $6617: $b7
    jr z, jr_00b_6628                             ; $6618: $28 $0e

    push hl                                       ; $661a: $e5
    ld b, c                                       ; $661b: $41
    ld c, $29                                     ; $661c: $0e $29
    ld hl, $0101                                  ; $661e: $21 $01 $01
    call Call_00b_6dc7                            ; $6621: $cd $c7 $6d
    pop hl                                        ; $6624: $e1
    inc d                                         ; $6625: $14
    jr jr_00b_662c                                ; $6626: $18 $04

jr_00b_6628:
    ld a, h                                       ; $6628: $7c
    or a                                          ; $6629: $b7
    jr z, jr_00b_6638                             ; $662a: $28 $0c

jr_00b_662c:
    push hl                                       ; $662c: $e5
    ld b, h                                       ; $662d: $44
    ld c, $29                                     ; $662e: $0e $29
    ld hl, $0101                                  ; $6630: $21 $01 $01
    call Call_00b_6dc7                            ; $6633: $cd $c7 $6d
    pop hl                                        ; $6636: $e1
    inc d                                         ; $6637: $14

jr_00b_6638:
    ld b, l                                       ; $6638: $45
    ld c, $29                                     ; $6639: $0e $29
    ld hl, $0101                                  ; $663b: $21 $01 $01
    call Call_00b_6dc7                            ; $663e: $cd $c7 $6d
    pop hl                                        ; $6641: $e1
    pop de                                        ; $6642: $d1
    pop bc                                        ; $6643: $c1
    pop af                                        ; $6644: $f1
    ret                                           ; $6645: $c9


Call_00b_6646:
    or a                                          ; $6646: $b7
    jr nz, jr_00b_6654                            ; $6647: $20 $0b

    ld b, $03                                     ; $6649: $06 $03
    ld c, $2a                                     ; $664b: $0e $2a
    ld hl, $0101                                  ; $664d: $21 $01 $01
    call Call_00b_6dc7                            ; $6650: $cd $c7 $6d
    ret                                           ; $6653: $c9


jr_00b_6654:
    cp $ca                                        ; $6654: $fe $ca
    jr c, jr_00b_6663                             ; $6656: $38 $0b

    ld b, $01                                     ; $6658: $06 $01
    ld c, $2a                                     ; $665a: $0e $2a
    ld hl, $0101                                  ; $665c: $21 $01 $01
    call Call_00b_6dc7                            ; $665f: $cd $c7 $6d
    ret                                           ; $6662: $c9


jr_00b_6663:
    ld b, $00                                     ; $6663: $06 $00
    ld c, $2a                                     ; $6665: $0e $2a
    ld hl, $0101                                  ; $6667: $21 $01 $01
    call Call_00b_6dc7                            ; $666a: $cd $c7 $6d
    ret                                           ; $666d: $c9


Call_00b_666e:
    dec a                                         ; $666e: $3d
    sla a                                         ; $666f: $cb $27
    ld hl, $66b9                                  ; $6671: $21 $b9 $66
    add l                                         ; $6674: $85
    ld l, a                                       ; $6675: $6f
    jr nc, jr_00b_6679                            ; $6676: $30 $01

    inc h                                         ; $6678: $24

jr_00b_6679:
    ld a, [hl+]                                   ; $6679: $2a
    ld h, [hl]                                    ; $667a: $66
    ld l, a                                       ; $667b: $6f
    ld a, $01                                     ; $667c: $3e $01
    ldh [$96], a                                  ; $667e: $e0 $96
    ldh [rSVBK], a                                ; $6680: $e0 $70
    ld de, $d000                                  ; $6682: $11 $00 $d0
    call Call_000_1f2f                            ; $6685: $cd $2f $1f
    ld hl, $d000                                  ; $6688: $21 $00 $d0
    ld de, $8600                                  ; $668b: $11 $00 $86
    ld c, $08                                     ; $668e: $0e $08
    call Call_000_04db                            ; $6690: $cd $db $04
    ret                                           ; $6693: $c9


    ld bc, $0260                                  ; $6694: $01 $60 $02
    ld de, $5c22                                  ; $6697: $11 $22 $5c
    call Call_000_2798                            ; $669a: $cd $98 $27
    ld bc, $0262                                  ; $669d: $01 $62 $02
    ld de, $6422                                  ; $66a0: $11 $22 $64
    call Call_000_2798                            ; $66a3: $cd $98 $27
    ld bc, $0464                                  ; $66a6: $01 $64 $04
    ld de, $5c32                                  ; $66a9: $11 $32 $5c
    call Call_000_2798                            ; $66ac: $cd $98 $27
    ld bc, $0466                                  ; $66af: $01 $66 $04
    ld de, $6432                                  ; $66b2: $11 $32 $64
    call Call_000_2798                            ; $66b5: $cd $98 $27
    ret                                           ; $66b8: $c9


    cp a                                          ; $66b9: $bf
    ld h, [hl]                                    ; $66ba: $66
    inc de                                        ; $66bb: $13
    ld h, a                                       ; $66bc: $67
    ld [hl], c                                    ; $66bd: $71
    ld h, a                                       ; $66be: $67
    db $fd                                        ; $66bf: $fd
    nop                                           ; $66c0: $00
    rst $38                                       ; $66c1: $ff
    add sp, $03                                   ; $66c2: $e8 $03
    nop                                           ; $66c4: $00
    inc b                                         ; $66c5: $04
    nop                                           ; $66c6: $00
    ld [$ff00], sp                                ; $66c7: $08 $00 $ff
    ld de, $2300                                  ; $66ca: $11 $00 $23
    nop                                           ; $66cd: $00
    nop                                           ; $66ce: $00
    daa                                           ; $66cf: $27
    nop                                           ; $66d0: $00
    ld hl, $00bf                                  ; $66d1: $21 $bf $00
    ld hl, $1919                                  ; $66d4: $21 $19 $19
    add hl, bc                                    ; $66d7: $09
    add hl, bc                                    ; $66d8: $09
    ldh [$e9], a                                  ; $66d9: $e0 $e9
    ldh a, [$4e]                                  ; $66db: $f0 $4e
    ld [c], a                                     ; $66dd: $e2
    ldh [$08], a                                  ; $66de: $e0 $08
    nop                                           ; $66e0: $00
    ret z                                         ; $66e1: $c8

    cp $e0                                        ; $66e2: $fe $e0
    ei                                            ; $66e4: $fb
    ld [c], a                                     ; $66e5: $e2
    ret z                                         ; $66e6: $c8

    rst $38                                       ; $66e7: $ff
    pop hl                                        ; $66e8: $e1
    db $eb                                        ; $66e9: $eb
    add hl, bc                                    ; $66ea: $09
    nop                                           ; $66eb: $00
    db $dd                                        ; $66ec: $dd
    ldh [$09], a                                  ; $66ed: $e0 $09
    set 4, b                                      ; $66ef: $cb $e0
    ld hl, $2323                                  ; $66f1: $21 $23 $23
    scf                                           ; $66f4: $37
    daa                                           ; $66f5: $27
    daa                                           ; $66f6: $27
    jr nz, @+$01                                  ; $66f7: $20 $ff

    ldh [$1f], a                                  ; $66f9: $e0 $1f
    rra                                           ; $66fb: $1f
    xor h                                         ; $66fc: $ac
    jp hl                                         ; $66fd: $e9


    jp nc, $ffe4                                  ; $66fe: $d2 $e4 $ff

    call nz, $c200                                ; $6701: $c4 $00 $c2
    ld [c], a                                     ; $6704: $e2
    ld [c], a                                     ; $6705: $e2
    ld a, [c]                                     ; $6706: $f2
    ld a, [c]                                     ; $6707: $f2
    ld [bc], a                                    ; $6708: $02
    ld b, $ff                                     ; $6709: $06 $ff
    ldh [$fc], a                                  ; $670b: $e0 $fc
    db $fc                                        ; $670d: $fc
    adc h                                         ; $670e: $8c
    jp hl                                         ; $670f: $e9


    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    nop                                           ; $6712: $00
    db $fd                                        ; $6713: $fd
    nop                                           ; $6714: $00
    rst $38                                       ; $6715: $ff
    add sp, $0f                                   ; $6716: $e8 $0f
    nop                                           ; $6718: $00
    jr nc, jr_00b_671b                            ; $6719: $30 $00

jr_00b_671b:
    ld b, b                                       ; $671b: $40
    nop                                           ; $671c: $00
    rst $38                                       ; $671d: $ff
    add a                                         ; $671e: $87
    nop                                           ; $671f: $00
    sbc a                                         ; $6720: $9f
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    sbc h                                         ; $6723: $9c
    nop                                           ; $6724: $00
    sbc b                                         ; $6725: $98
    rst $20                                       ; $6726: $e7
    nop                                           ; $6727: $00
    sbc b                                         ; $6728: $98
    add b                                         ; $6729: $80
    rst $38                                       ; $672a: $ff
    ldh [$e0], a                                  ; $672b: $e0 $e0
    jp hl                                         ; $672d: $e9


    ldh a, [rP1]                                  ; $672e: $f0 $00
    inc c                                         ; $6730: $0c
    rst $38                                       ; $6731: $ff
    nop                                           ; $6732: $00
    ld [bc], a                                    ; $6733: $02
    nop                                           ; $6734: $00
    pop hl                                        ; $6735: $e1
    nop                                           ; $6736: $00
    ld sp, hl                                     ; $6737: $f9
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    rst $38                                       ; $673a: $ff
    add hl, sp                                    ; $673b: $39
    nop                                           ; $673c: $00
    add hl, de                                    ; $673d: $19
    nop                                           ; $673e: $00
    add hl, de                                    ; $673f: $19
    add hl, sp                                    ; $6740: $39
    add hl, sp                                    ; $6741: $39
    ld a, c                                       ; $6742: $79
    rst $38                                       ; $6743: $ff
    ld a, c                                       ; $6744: $79
    ld [hl], c                                    ; $6745: $71
    nop                                           ; $6746: $00
    inc hl                                        ; $6747: $23
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    ld b, a                                       ; $674a: $47
    nop                                           ; $674b: $00
    rst $08                                       ; $674c: $cf
    ld c, [hl]                                    ; $674d: $4e
    nop                                           ; $674e: $00
    adc [hl]                                      ; $674f: $8e
    sbc a                                         ; $6750: $9f
    rst $38                                       ; $6751: $ff
    ldh [$ce], a                                  ; $6752: $e0 $ce
    pop hl                                        ; $6754: $e1
    ld a, a                                       ; $6755: $7f
    ld a, a                                       ; $6756: $7f
    ld a, [hl]                                    ; $6757: $7e
    xor h                                         ; $6758: $ac
    jp hl                                         ; $6759: $e9


    pop hl                                        ; $675a: $e1
    nop                                           ; $675b: $00
    add d                                         ; $675c: $82
    nop                                           ; $675d: $00
    nop                                           ; $675e: $00
    ld bc, $e0fe                                  ; $675f: $01 $fe $e0
    ld l, e                                       ; $6762: $6b
    add hl, de                                    ; $6763: $19
    ld sp, hl                                     ; $6764: $f9
    rst $38                                       ; $6765: $ff
    ldh [rSB], a                                  ; $6766: $e0 $01
    rst $38                                       ; $6768: $ff
    ldh [$fe], a                                  ; $6769: $e0 $fe
    cp $8c                                        ; $676b: $fe $8c
    jp hl                                         ; $676d: $e9


    nop                                           ; $676e: $00
    nop                                           ; $676f: $00
    nop                                           ; $6770: $00
    db $fd                                        ; $6771: $fd
    nop                                           ; $6772: $00
    rst $38                                       ; $6773: $ff
    add sp, $0f                                   ; $6774: $e8 $0f
    nop                                           ; $6776: $00
    jr nc, jr_00b_6779                            ; $6777: $30 $00

jr_00b_6779:
    ld b, b                                       ; $6779: $40
    nop                                           ; $677a: $00
    rst $38                                       ; $677b: $ff
    add a                                         ; $677c: $87
    nop                                           ; $677d: $00
    sbc a                                         ; $677e: $9f
    nop                                           ; $677f: $00
    nop                                           ; $6780: $00
    sbc h                                         ; $6781: $9c
    nop                                           ; $6782: $00
    sbc b                                         ; $6783: $98
    cp a                                          ; $6784: $bf
    nop                                           ; $6785: $00
    add b                                         ; $6786: $80
    add b                                         ; $6787: $80
    add b                                         ; $6788: $80
    ld a, c                                       ; $6789: $79
    ld a, c                                       ; $678a: $79
    ldh [$e9], a                                  ; $678b: $e0 $e9
    ldh a, [rIE]                                  ; $678d: $f0 $ff
    nop                                           ; $678f: $00
    inc c                                         ; $6790: $0c
    nop                                           ; $6791: $00
    ld [bc], a                                    ; $6792: $02
    nop                                           ; $6793: $00
    pop hl                                        ; $6794: $e1
    nop                                           ; $6795: $00
    ld sp, hl                                     ; $6796: $f9
    rst $38                                       ; $6797: $ff
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    add hl, sp                                    ; $679a: $39
    nop                                           ; $679b: $00
    add hl, de                                    ; $679c: $19
    nop                                           ; $679d: $00
    add hl, de                                    ; $679e: $19
    add hl, sp                                    ; $679f: $39
    ld a, a                                       ; $67a0: $7f
    add hl, sp                                    ; $67a1: $39
    pop af                                        ; $67a2: $f1
    pop af                                        ; $67a3: $f1
    ld a, c                                       ; $67a4: $79
    nop                                           ; $67a5: $00
    add b                                         ; $67a6: $80
    nop                                           ; $67a7: $00
    db $fd                                        ; $67a8: $fd
    ldh [rIE], a                                  ; $67a9: $e0 $ff
    sbc b                                         ; $67ab: $98
    nop                                           ; $67ac: $00
    sbc h                                         ; $67ad: $9c
    sbc a                                         ; $67ae: $9f
    sbc a                                         ; $67af: $9f
    add a                                         ; $67b0: $87
    add a                                         ; $67b1: $87
    ld b, b                                       ; $67b2: $40
    ld e, a                                       ; $67b3: $5f
    ld b, b                                       ; $67b4: $40
    jr nc, jr_00b_67e7                            ; $67b5: $30 $30

    rrca                                          ; $67b7: $0f
    rrca                                          ; $67b8: $0f
    xor h                                         ; $67b9: $ac
    jp hl                                         ; $67ba: $e9


    pop af                                        ; $67bb: $f1
    push de                                       ; $67bc: $d5
    ldh [$fe], a                                  ; $67bd: $e0 $fe
    call nc, Call_000_00e1                        ; $67bf: $d4 $e1 $00
    add hl, sp                                    ; $67c2: $39
    ld sp, hl                                     ; $67c3: $f9
    ld sp, hl                                     ; $67c4: $f9
    pop hl                                        ; $67c5: $e1
    pop hl                                        ; $67c6: $e1
    ld [bc], a                                    ; $67c7: $02
    rra                                           ; $67c8: $1f
    ld [bc], a                                    ; $67c9: $02
    inc c                                         ; $67ca: $0c
    inc c                                         ; $67cb: $0c
    ldh a, [$f0]                                  ; $67cc: $f0 $f0
    adc h                                         ; $67ce: $8c
    jp hl                                         ; $67cf: $e9


    nop                                           ; $67d0: $00
    nop                                           ; $67d1: $00
    nop                                           ; $67d2: $00
    push af                                       ; $67d3: $f5
    push bc                                       ; $67d4: $c5
    push de                                       ; $67d5: $d5
    push hl                                       ; $67d6: $e5
    call Call_000_0341                            ; $67d7: $cd $41 $03
    ld a, c                                       ; $67da: $79
    ld hl, $ffff                                  ; $67db: $21 $ff $ff
    ld b, $0a                                     ; $67de: $06 $0a

jr_00b_67e0:
    inc h                                         ; $67e0: $24
    sub b                                         ; $67e1: $90
    jr nc, jr_00b_67e0                            ; $67e2: $30 $fc

    add b                                         ; $67e4: $80
    ld l, a                                       ; $67e5: $6f
    ld a, h                                       ; $67e6: $7c

jr_00b_67e7:
    or a                                          ; $67e7: $b7
    jr nz, jr_00b_67fa                            ; $67e8: $20 $10

    push hl                                       ; $67ea: $e5
    ld bc, $1b04                                  ; $67eb: $01 $04 $1b
    ld de, $1d04                                  ; $67ee: $11 $04 $1d
    ld hl, $0203                                  ; $67f1: $21 $03 $02
    call Call_00b_6dc7                            ; $67f4: $cd $c7 $6d
    pop hl                                        ; $67f7: $e1
    jr jr_00b_683e                                ; $67f8: $18 $44

jr_00b_67fa:
    push af                                       ; $67fa: $f5
    push hl                                       ; $67fb: $e5
    ld hl, $688a                                  ; $67fc: $21 $8a $68
    add a                                         ; $67ff: $87
    add l                                         ; $6800: $85
    ld l, a                                       ; $6801: $6f
    jr nc, jr_00b_6805                            ; $6802: $30 $01

    inc h                                         ; $6804: $24

jr_00b_6805:
    ld a, [hl+]                                   ; $6805: $2a
    ld h, [hl]                                    ; $6806: $66
    ld l, a                                       ; $6807: $6f
    ld a, $01                                     ; $6808: $3e $01
    ldh [$96], a                                  ; $680a: $e0 $96
    ldh [rSVBK], a                                ; $680c: $e0 $70
    ld a, $01                                     ; $680e: $3e $01
    ldh [rVBK], a                                 ; $6810: $e0 $4f
    ld de, $d000                                  ; $6812: $11 $00 $d0
    call Call_000_1f2f                            ; $6815: $cd $2f $1f
    ld hl, $d000                                  ; $6818: $21 $00 $d0
    ld de, $9320                                  ; $681b: $11 $20 $93
    ld bc, $0002                                  ; $681e: $01 $02 $00
    call Call_000_2096                            ; $6821: $cd $96 $20
    ld hl, $d020                                  ; $6824: $21 $20 $d0
    ld de, $9420                                  ; $6827: $11 $20 $94
    ld bc, $0002                                  ; $682a: $01 $02 $00
    call Call_000_2096                            ; $682d: $cd $96 $20
    ld hl, $d040                                  ; $6830: $21 $40 $d0
    ld de, $9520                                  ; $6833: $11 $20 $95
    ld bc, $0002                                  ; $6836: $01 $02 $00
    call Call_000_2096                            ; $6839: $cd $96 $20
    pop hl                                        ; $683c: $e1
    pop af                                        ; $683d: $f1

jr_00b_683e:
    ld a, l                                       ; $683e: $7d
    ld hl, $688a                                  ; $683f: $21 $8a $68
    add a                                         ; $6842: $87
    add l                                         ; $6843: $85
    ld l, a                                       ; $6844: $6f
    jr nc, jr_00b_6848                            ; $6845: $30 $01

    inc h                                         ; $6847: $24

jr_00b_6848:
    ld a, [hl+]                                   ; $6848: $2a
    ld h, [hl]                                    ; $6849: $66
    ld l, a                                       ; $684a: $6f
    ld a, $01                                     ; $684b: $3e $01
    ldh [$96], a                                  ; $684d: $e0 $96
    ldh [rSVBK], a                                ; $684f: $e0 $70
    ld a, $01                                     ; $6851: $3e $01
    ldh [rVBK], a                                 ; $6853: $e0 $4f
    ld de, $d000                                  ; $6855: $11 $00 $d0
    call Call_000_1f2f                            ; $6858: $cd $2f $1f
    ld hl, $d000                                  ; $685b: $21 $00 $d0
    ld de, $9300                                  ; $685e: $11 $00 $93
    ld bc, $0002                                  ; $6861: $01 $02 $00
    call Call_000_2096                            ; $6864: $cd $96 $20
    ld hl, $d020                                  ; $6867: $21 $20 $d0
    ld de, $9400                                  ; $686a: $11 $00 $94
    ld bc, $0002                                  ; $686d: $01 $02 $00
    call Call_000_2096                            ; $6870: $cd $96 $20
    ld hl, $d040                                  ; $6873: $21 $40 $d0
    ld de, $9500                                  ; $6876: $11 $00 $95
    ld bc, $0002                                  ; $6879: $01 $02 $00
    call Call_000_2096                            ; $687c: $cd $96 $20
    call Call_000_0371                            ; $687f: $cd $71 $03
    call Call_000_2e3b                            ; $6882: $cd $3b $2e
    pop hl                                        ; $6885: $e1
    pop de                                        ; $6886: $d1
    pop bc                                        ; $6887: $c1
    pop af                                        ; $6888: $f1
    ret                                           ; $6889: $c9


    sbc [hl]                                      ; $688a: $9e
    ld l, b                                       ; $688b: $68
    rst $30                                       ; $688c: $f7
    ld l, b                                       ; $688d: $68
    ld e, l                                       ; $688e: $5d
    ld l, c                                       ; $688f: $69
    add $69                                       ; $6890: $c6 $69
    ld a, [hl+]                                   ; $6892: $2a
    ld l, d                                       ; $6893: $6a
    adc a                                         ; $6894: $8f
    ld l, d                                       ; $6895: $6a
    ld hl, sp+$6a                                 ; $6896: $f8 $6a
    ld d, a                                       ; $6898: $57
    ld l, e                                       ; $6899: $6b
    cp l                                          ; $689a: $bd
    ld l, e                                       ; $689b: $6b
    inc e                                         ; $689c: $1c
    ld l, h                                       ; $689d: $6c
    rst $38                                       ; $689e: $ff
    jp $5a3c                                      ; $689f: $c3 $3c $5a


    and l                                         ; $68a2: $a5
    inc a                                         ; $68a3: $3c
    jp $c33c                                      ; $68a4: $c3 $3c $c3


    rst $38                                       ; $68a7: $ff
    cpl                                           ; $68a8: $2f
    rst $18                                       ; $68a9: $df
    or a                                          ; $68aa: $b7
    ld [hl], b                                    ; $68ab: $70
    ld e, a                                       ; $68ac: $5f
    rst $00                                       ; $68ad: $c7
    cp b                                          ; $68ae: $b8
    sbc b                                         ; $68af: $98
    cp $f0                                        ; $68b0: $fe $f0
    push hl                                       ; $68b2: $e5
    db $f4                                        ; $68b3: $f4
    ei                                            ; $68b4: $fb
    db $ed                                        ; $68b5: $ed
    ld c, $fa                                     ; $68b6: $0e $fa
    db $e3                                        ; $68b8: $e3
    dec e                                         ; $68b9: $1d
    rst $38                                       ; $68ba: $ff
    add hl, de                                    ; $68bb: $19
    ldh [$a0], a                                  ; $68bc: $e0 $a0
    db $e3                                        ; $68be: $e3
    and e                                         ; $68bf: $a3
    push hl                                       ; $68c0: $e5
    and h                                         ; $68c1: $a4
    rst $20                                       ; $68c2: $e7
    db $fd                                        ; $68c3: $fd
    and l                                         ; $68c4: $a5
    cp $e5                                        ; $68c5: $fe $e5
    rlca                                          ; $68c7: $07
    dec b                                         ; $68c8: $05
    rst $00                                       ; $68c9: $c7
    push bc                                       ; $68ca: $c5
    and a                                         ; $68cb: $a7
    dec h                                         ; $68cc: $25
    cp $f0                                        ; $68cd: $fe $f0
    rst $20                                       ; $68cf: $e7
    rst $20                                       ; $68d0: $e7
    and l                                         ; $68d1: $a5
    push hl                                       ; $68d2: $e5
    and h                                         ; $68d3: $a4
    db $e3                                        ; $68d4: $e3
    and e                                         ; $68d5: $a3
    ldh [rIE], a                                  ; $68d6: $e0 $ff
    and b                                         ; $68d8: $a0
    cp b                                          ; $68d9: $b8
    sbc b                                         ; $68da: $98
    ld e, a                                       ; $68db: $5f
    rst $00                                       ; $68dc: $c7
    or a                                          ; $68dd: $b7
    ld [hl], b                                    ; $68de: $70
    rst $08                                       ; $68df: $cf
    rst $38                                       ; $68e0: $ff
    ccf                                           ; $68e1: $3f
    rst $20                                       ; $68e2: $e7
    and l                                         ; $68e3: $a5
    and a                                         ; $68e4: $a7
    dec h                                         ; $68e5: $25
    rst $00                                       ; $68e6: $c7
    push bc                                       ; $68e7: $c5
    rlca                                          ; $68e8: $07
    rst $38                                       ; $68e9: $ff
    dec b                                         ; $68ea: $05
    dec e                                         ; $68eb: $1d
    add hl, de                                    ; $68ec: $19
    ld a, [$ede3]                                 ; $68ed: $fa $e3 $ed
    ld c, $f3                                     ; $68f0: $0e $f3
    ld bc, $00fc                                  ; $68f2: $01 $fc $00
    nop                                           ; $68f5: $00
    nop                                           ; $68f6: $00
    rst $38                                       ; $68f7: $ff
    jp $5a3c                                      ; $68f8: $c3 $3c $5a


    and l                                         ; $68fb: $a5
    inc a                                         ; $68fc: $3c
    jp $c33c                                      ; $68fd: $c3 $3c $c3


    rst $38                                       ; $6900: $ff
    dec sp                                        ; $6901: $3b
    rst $00                                       ; $6902: $c7
    and l                                         ; $6903: $a5
    ld e, h                                       ; $6904: $5c
    srl c                                         ; $6905: $cb $39
    sub $32                                       ; $6907: $d6 $32
    cp $f0                                        ; $6909: $fe $f0
    push hl                                       ; $690b: $e5
    db $f4                                        ; $690c: $f4
    ei                                            ; $690d: $fb
    db $ed                                        ; $690e: $ed
    ld a, [bc]                                    ; $690f: $0a
    ei                                            ; $6910: $fb
    db $ec                                        ; $6911: $ec
    dec sp                                        ; $6912: $3b
    rst $38                                       ; $6913: $ff
    inc l                                         ; $6914: $2c
    db $ec                                        ; $6915: $ec
    inc h                                         ; $6916: $24
    ld a, b                                       ; $6917: $78
    xor b                                         ; $6918: $a8
    ld a, $ee                                     ; $6919: $3e $ee
    ld l, $ff                                     ; $691b: $2e $ff
    ld [c], a                                     ; $691d: $e2
    ld a, $da                                     ; $691e: $3e $da
    xor [hl]                                      ; $6920: $ae
    ld e, d                                       ; $6921: $5a
    adc $3a                                       ; $6922: $ce $3a
    adc $7f                                       ; $6924: $ce $7f

jr_00b_6926:
    ld a, [hl-]                                   ; $6926: $3a
    dec sp                                        ; $6927: $3b
    inc l                                         ; $6928: $2c

jr_00b_6929:
    ld a, [hl-]                                   ; $6929: $3a
    dec l                                         ; $692a: $2d
    inc a                                         ; $692b: $3c
    dec hl                                        ; $692c: $2b
    cp $e1                                        ; $692d: $fe $e1
    rst $38                                       ; $692f: $ff
    dec a                                         ; $6930: $3d
    ld a, [hl+]                                   ; $6931: $2a
    dec sp                                        ; $6932: $3b
    inc l                                         ; $6933: $2c
    dec sp                                        ; $6934: $3b
    inc l                                         ; $6935: $2c
    adc $3a                                       ; $6936: $ce $3a
    rst $38                                       ; $6938: $ff
    ld e, [hl]                                    ; $6939: $5e
    cp d                                          ; $693a: $ba
    ld l, $e6                                     ; $693b: $2e $e6
    inc a                                         ; $693d: $3c
    db $ec                                        ; $693e: $ec
    jr c, jr_00b_6929                             ; $693f: $38 $e8

    rst $38                                       ; $6941: $ff
    cp a                                          ; $6942: $bf
    ld l, a                                       ; $6943: $6f
    rst $28                                       ; $6944: $ef
    jr nz, jr_00b_6926                            ; $6945: $20 $df

    ccf                                           ; $6947: $3f
    dec sp                                        ; $6948: $3b
    inc l                                         ; $6949: $2c
    rst $38                                       ; $694a: $ff
    inc a                                         ; $694b: $3c
    cpl                                           ; $694c: $2f
    ld a, [hl-]                                   ; $694d: $3a
    inc sp                                        ; $694e: $33
    ld e, $1b                                     ; $694f: $1e $1b
    ld c, $0b                                     ; $6951: $0e $0b
    ccf                                           ; $6953: $3f
    rst $38                                       ; $6954: $ff
    ld a, [$02fb]                                 ; $6955: $fa $fb $02
    db $fd                                        ; $6958: $fd
    cp $00                                        ; $6959: $fe $00
    nop                                           ; $695b: $00
    nop                                           ; $695c: $00
    rst $38                                       ; $695d: $ff
    jp $5a3c                                      ; $695e: $c3 $3c $5a


    and l                                         ; $6961: $a5
    inc a                                         ; $6962: $3c
    jp $c33c                                      ; $6963: $c3 $3c $c3


    rst $38                                       ; $6966: $ff
    cpl                                           ; $6967: $2f
    rst $18                                       ; $6968: $df
    or a                                          ; $6969: $b7
    ld [hl], b                                    ; $696a: $70
    ld e, a                                       ; $696b: $5f
    rst $00                                       ; $696c: $c7
    cp b                                          ; $696d: $b8
    sbc b                                         ; $696e: $98
    cp $f0                                        ; $696f: $fe $f0
    push hl                                       ; $6971: $e5
    db $f4                                        ; $6972: $f4
    ei                                            ; $6973: $fb
    db $ed                                        ; $6974: $ed
    ld c, $fa                                     ; $6975: $0e $fa
    db $e3                                        ; $6977: $e3
    dec e                                         ; $6978: $1d
    rst $38                                       ; $6979: $ff
    add hl, de                                    ; $697a: $19
    ldh [$a0], a                                  ; $697b: $e0 $a0
    db $e3                                        ; $697d: $e3
    and e                                         ; $697e: $a3
    rst $20                                       ; $697f: $e7
    and h                                         ; $6980: $a4
    rst $20                                       ; $6981: $e7
    rst $38                                       ; $6982: $ff
    and l                                         ; $6983: $a5
    rst $38                                       ; $6984: $ff
    cp h                                          ; $6985: $bc
    cp a                                          ; $6986: $bf
    add c                                         ; $6987: $81
    halt                                          ; $6988: $76
    ld a, [c]                                     ; $6989: $f2
    xor h                                         ; $698a: $ac
    rst $38                                       ; $698b: $ff
    ld h, h                                       ; $698c: $64
    rlca                                          ; $698d: $07
    dec b                                         ; $698e: $05
    rst $00                                       ; $698f: $c7
    push bc                                       ; $6990: $c5
    rst $20                                       ; $6991: $e7
    dec h                                         ; $6992: $25
    ld h, a                                       ; $6993: $67
    rst $38                                       ; $6994: $ff
    dec h                                         ; $6995: $25
    rst $00                                       ; $6996: $c7
    ld b, l                                       ; $6997: $45
    add a                                         ; $6998: $87
    add l                                         ; $6999: $85
    dec e                                         ; $699a: $1d
    add hl, de                                    ; $699b: $19
    ld a, d                                       ; $699c: $7a
    rst $38                                       ; $699d: $ff
    ld h, e                                       ; $699e: $63
    ret c                                         ; $699f: $d8

    ld c, b                                       ; $69a0: $48
    ld [hl], c                                    ; $69a1: $71
    pop de                                        ; $69a2: $d1
    or c                                          ; $69a3: $b1
    sub c                                         ; $69a4: $91
    ldh [rIE], a                                  ; $69a5: $e0 $ff
    and b                                         ; $69a7: $a0
    ldh [$a0], a                                  ; $69a8: $e0 $a0
    rst $38                                       ; $69aa: $ff
    cp a                                          ; $69ab: $bf
    cp a                                          ; $69ac: $bf
    add b                                         ; $69ad: $80
    ld a, a                                       ; $69ae: $7f
    rst $38                                       ; $69af: $ff
    rst $38                                       ; $69b0: $ff
    db $fd                                        ; $69b1: $fd
    add c                                         ; $69b2: $81
    rst $38                                       ; $69b3: $ff
    dec a                                         ; $69b4: $3d
    rst $20                                       ; $69b5: $e7
    push hl                                       ; $69b6: $e5
    rlca                                          ; $69b7: $07
    rst $38                                       ; $69b8: $ff
    dec b                                         ; $69b9: $05
    rlca                                          ; $69ba: $07
    dec b                                         ; $69bb: $05
    rst $38                                       ; $69bc: $ff
    db $fd                                        ; $69bd: $fd
    db $fd                                        ; $69be: $fd
    ld bc, $01fe                                  ; $69bf: $01 $fe $01
    rst $38                                       ; $69c2: $ff
    nop                                           ; $69c3: $00
    nop                                           ; $69c4: $00
    nop                                           ; $69c5: $00
    rst $38                                       ; $69c6: $ff
    jp $5a3c                                      ; $69c7: $c3 $3c $5a


    and l                                         ; $69ca: $a5
    inc a                                         ; $69cb: $3c
    jp $c33c                                      ; $69cc: $c3 $3c $c3


    rst $38                                       ; $69cf: $ff
    cpl                                           ; $69d0: $2f
    rst $18                                       ; $69d1: $df
    or a                                          ; $69d2: $b7
    ld [hl], b                                    ; $69d3: $70
    ld e, a                                       ; $69d4: $5f
    rst $00                                       ; $69d5: $c7
    cp b                                          ; $69d6: $b8
    sbc b                                         ; $69d7: $98
    cp $f0                                        ; $69d8: $fe $f0
    push hl                                       ; $69da: $e5
    db $f4                                        ; $69db: $f4
    ei                                            ; $69dc: $fb
    db $ed                                        ; $69dd: $ed
    ld c, $fa                                     ; $69de: $0e $fa
    db $e3                                        ; $69e0: $e3
    dec e                                         ; $69e1: $1d
    rst $38                                       ; $69e2: $ff
    add hl, de                                    ; $69e3: $19
    ldh [$a0], a                                  ; $69e4: $e0 $a0
    db $e3                                        ; $69e6: $e3
    and e                                         ; $69e7: $a3
    rst $20                                       ; $69e8: $e7
    and h                                         ; $69e9: $a4
    rst $38                                       ; $69ea: $ff
    rst $38                                       ; $69eb: $ff
    cp h                                          ; $69ec: $bc
    cp l                                          ; $69ed: $bd
    add c                                         ; $69ee: $81
    ld a, [hl]                                    ; $69ef: $7e
    ld a, [$fa7e]                                 ; $69f0: $fa $7e $fa
    cp l                                          ; $69f3: $bd
    rst $38                                       ; $69f4: $ff
    add c                                         ; $69f5: $81
    rlca                                          ; $69f6: $07
    dec b                                         ; $69f7: $05
    rst $00                                       ; $69f8: $c7
    push bc                                       ; $69f9: $c5
    rst $20                                       ; $69fa: $e7
    dec h                                         ; $69fb: $25
    rst $20                                       ; $69fc: $e7
    rst $38                                       ; $69fd: $ff
    dec h                                         ; $69fe: $25
    rst $00                                       ; $69ff: $c7
    push bc                                       ; $6a00: $c5
    rrca                                          ; $6a01: $0f
    add hl, bc                                    ; $6a02: $09
    dec c                                         ; $6a03: $0d
    add hl, bc                                    ; $6a04: $09
    rst $00                                       ; $6a05: $c7
    rst $38                                       ; $6a06: $ff
    push bc                                       ; $6a07: $c5
    rst $38                                       ; $6a08: $ff
    cp h                                          ; $6a09: $bc
    rst $20                                       ; $6a0a: $e7
    and h                                         ; $6a0b: $a4
    db $e3                                        ; $6a0c: $e3
    and e                                         ; $6a0d: $a3
    ldh [rIE], a                                  ; $6a0e: $e0 $ff
    and b                                         ; $6a10: $a0
    cp b                                          ; $6a11: $b8
    sbc b                                         ; $6a12: $98
    ld e, a                                       ; $6a13: $5f
    rst $00                                       ; $6a14: $c7
    or a                                          ; $6a15: $b7
    ld [hl], b                                    ; $6a16: $70
    rst $08                                       ; $6a17: $cf
    db $fd                                        ; $6a18: $fd
    ccf                                           ; $6a19: $3f
    db $e4                                        ; $6a1a: $e4
    db $e3                                        ; $6a1b: $e3
    rlca                                          ; $6a1c: $07
    dec b                                         ; $6a1d: $05
    dec e                                         ; $6a1e: $1d
    add hl, de                                    ; $6a1f: $19
    ld a, [$0fe3]                                 ; $6a20: $fa $e3 $0f
    db $ed                                        ; $6a23: $ed
    ld c, $f3                                     ; $6a24: $0e $f3
    db $fc                                        ; $6a26: $fc
    nop                                           ; $6a27: $00
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    rst $38                                       ; $6a2a: $ff
    jp $5a3c                                      ; $6a2b: $c3 $3c $5a


    and l                                         ; $6a2e: $a5
    inc a                                         ; $6a2f: $3c
    jp $c33c                                      ; $6a30: $c3 $3c $c3


    rst $38                                       ; $6a33: $ff
    ccf                                           ; $6a34: $3f
    jp $5ca5                                      ; $6a35: $c3 $a5 $5c


    srl c                                         ; $6a38: $cb $39
    adc $3a                                       ; $6a3a: $ce $3a
    cp $f0                                        ; $6a3c: $fe $f0
    push hl                                       ; $6a3e: $e5
    ld hl, sp-$01                                 ; $6a3f: $f8 $ff
    push af                                       ; $6a41: $f5
    ld b, $ff                                     ; $6a42: $06 $ff
    db $f4                                        ; $6a44: $f4
    rra                                           ; $6a45: $1f
    rst $38                                       ; $6a46: $ff
    inc d                                         ; $6a47: $14
    sub $32                                       ; $6a48: $d6 $32
    ld e, h                                       ; $6a4a: $5c
    or h                                          ; $6a4b: $b4
    inc l                                         ; $6a4c: $2c
    db $e4                                        ; $6a4d: $e4
    jr c, @+$01                                   ; $6a4e: $38 $ff

    add sp, $59                                   ; $6a50: $e8 $59
    ret                                           ; $6a52: $c9


    ld [hl], c                                    ; $6a53: $71
    pop de                                        ; $6a54: $d1
    or e                                          ; $6a55: $b3
    sub e                                         ; $6a56: $93
    db $e3                                        ; $6a57: $e3
    ld a, a                                       ; $6a58: $7f
    and e                                         ; $6a59: $a3
    rra                                           ; $6a5a: $1f
    inc d                                         ; $6a5b: $14
    ld e, $15                                     ; $6a5c: $1e $15
    inc e                                         ; $6a5e: $1c
    rla                                           ; $6a5f: $17
    cp $e1                                        ; $6a60: $fe $e1
    rst $38                                       ; $6a62: $ff
    ld e, $17                                     ; $6a63: $1e $17
    dec e                                         ; $6a65: $1d
    ld de, $1d1f                                  ; $6a66: $11 $1f $1d
    ldh [$a0], a                                  ; $6a69: $e0 $a0
    rst $38                                       ; $6a6b: $ff
    ldh [$a0], a                                  ; $6a6c: $e0 $a0
    rst $38                                       ; $6a6e: $ff
    cp a                                          ; $6a6f: $bf
    cp a                                          ; $6a70: $bf
    add c                                         ; $6a71: $81
    rst $38                                       ; $6a72: $ff
    db $fd                                        ; $6a73: $fd
    rst $30                                       ; $6a74: $f7
    and a                                         ; $6a75: $a7
    ld e, l                                       ; $6a76: $5d
    push bc                                       ; $6a77: $c5
    cp c                                          ; $6a78: $b9
    ldh [rTAC], a                                 ; $6a79: $e0 $07
    dec b                                         ; $6a7b: $05
    rlca                                          ; $6a7c: $07
    dec b                                         ; $6a7d: $05
    rst $38                                       ; $6a7e: $ff
    rra                                           ; $6a7f: $1f
    dec e                                         ; $6a80: $1d
    dec e                                         ; $6a81: $1d
    ld de, $131a                                  ; $6a82: $11 $1a $13
    db $fd                                        ; $6a85: $fd
    or $0f                                        ; $6a86: $f6 $0f
    rst $30                                       ; $6a88: $f7
    inc b                                         ; $6a89: $04
    ei                                            ; $6a8a: $fb
    db $fc                                        ; $6a8b: $fc
    nop                                           ; $6a8c: $00
    nop                                           ; $6a8d: $00
    nop                                           ; $6a8e: $00
    rst $38                                       ; $6a8f: $ff
    jp $5a3c                                      ; $6a90: $c3 $3c $5a


    and l                                         ; $6a93: $a5
    inc a                                         ; $6a94: $3c
    jp $c33c                                      ; $6a95: $c3 $3c $c3


    rst $38                                       ; $6a98: $ff
    ld a, a                                       ; $6a99: $7f
    rst $38                                       ; $6a9a: $ff
    cp a                                          ; $6a9b: $bf
    add b                                         ; $6a9c: $80
    rst $38                                       ; $6a9d: $ff
    cp a                                          ; $6a9e: $bf
    ldh [$a0], a                                  ; $6a9f: $e0 $a0
    cp $f0                                        ; $6aa1: $fe $f0
    push hl                                       ; $6aa3: $e5
    cp $ff                                        ; $6aa4: $fe $ff
    db $fd                                        ; $6aa6: $fd
    ld bc, $fdff                                  ; $6aa7: $01 $ff $fd
    rlca                                          ; $6aaa: $07
    rst $38                                       ; $6aab: $ff
    dec b                                         ; $6aac: $05
    ldh [$a0], a                                  ; $6aad: $e0 $a0
    rst $20                                       ; $6aaf: $e7
    and a                                         ; $6ab0: $a7
    rst $20                                       ; $6ab1: $e7
    and h                                         ; $6ab2: $a4
    rst $20                                       ; $6ab3: $e7
    rst $38                                       ; $6ab4: $ff
    and a                                         ; $6ab5: $a7
    ldh [$a0], a                                  ; $6ab6: $e0 $a0
    ldh [$a0], a                                  ; $6ab8: $e0 $a0
    cp a                                          ; $6aba: $bf
    sbc a                                         ; $6abb: $9f
    cp a                                          ; $6abc: $bf
    rst $38                                       ; $6abd: $ff
    add b                                         ; $6abe: $80
    rlca                                          ; $6abf: $07
    dec b                                         ; $6ac0: $05
    rst $38                                       ; $6ac1: $ff
    db $fd                                        ; $6ac2: $fd
    db $fd                                        ; $6ac3: $fd
    ld bc, $fffa                                  ; $6ac4: $01 $fa $ff
    db $e3                                        ; $6ac7: $e3
    dec e                                         ; $6ac8: $1d
    add hl, de                                    ; $6ac9: $19
    rlca                                          ; $6aca: $07
    dec b                                         ; $6acb: $05
    rst $00                                       ; $6acc: $c7
    push bc                                       ; $6acd: $c5
    rst $20                                       ; $6ace: $e7
    rst $38                                       ; $6acf: $ff
    dec h                                         ; $6ad0: $25
    rst $38                                       ; $6ad1: $ff
    cp h                                          ; $6ad2: $bc
    rst $20                                       ; $6ad3: $e7
    and h                                         ; $6ad4: $a4
    db $e3                                        ; $6ad5: $e3
    and e                                         ; $6ad6: $a3
    ldh [rIE], a                                  ; $6ad7: $e0 $ff
    and b                                         ; $6ad9: $a0
    cp b                                          ; $6ada: $b8
    sbc b                                         ; $6adb: $98
    ld e, a                                       ; $6adc: $5f
    rst $00                                       ; $6add: $c7
    or a                                          ; $6ade: $b7
    ld [hl], b                                    ; $6adf: $70
    rst $08                                       ; $6ae0: $cf
    rst $38                                       ; $6ae1: $ff
    ccf                                           ; $6ae2: $3f
    rst $20                                       ; $6ae3: $e7
    dec h                                         ; $6ae4: $25
    rst $20                                       ; $6ae5: $e7
    dec h                                         ; $6ae6: $25
    rst $00                                       ; $6ae7: $c7
    push bc                                       ; $6ae8: $c5
    rlca                                          ; $6ae9: $07
    rst $38                                       ; $6aea: $ff
    dec b                                         ; $6aeb: $05
    dec e                                         ; $6aec: $1d
    add hl, de                                    ; $6aed: $19
    ld a, [$ede3]                                 ; $6aee: $fa $e3 $ed
    ld c, $f3                                     ; $6af1: $0e $f3
    ld bc, $00fc                                  ; $6af3: $01 $fc $00
    nop                                           ; $6af6: $00
    nop                                           ; $6af7: $00
    rst $38                                       ; $6af8: $ff
    jp $5a3c                                      ; $6af9: $c3 $3c $5a


    and l                                         ; $6afc: $a5
    inc a                                         ; $6afd: $3c
    jp $c33c                                      ; $6afe: $c3 $3c $c3


    rst $38                                       ; $6b01: $ff
    cpl                                           ; $6b02: $2f
    rst $18                                       ; $6b03: $df
    or a                                          ; $6b04: $b7
    ld [hl], b                                    ; $6b05: $70
    ld e, a                                       ; $6b06: $5f
    rst $00                                       ; $6b07: $c7
    cp b                                          ; $6b08: $b8
    sbc b                                         ; $6b09: $98
    cp $f0                                        ; $6b0a: $fe $f0
    push hl                                       ; $6b0c: $e5
    db $f4                                        ; $6b0d: $f4
    ei                                            ; $6b0e: $fb
    db $ed                                        ; $6b0f: $ed
    ld c, $fa                                     ; $6b10: $0e $fa
    db $e3                                        ; $6b12: $e3
    dec e                                         ; $6b13: $1d
    ld a, a                                       ; $6b14: $7f
    add hl, de                                    ; $6b15: $19
    ldh [$a0], a                                  ; $6b16: $e0 $a0
    db $e3                                        ; $6b18: $e3
    and e                                         ; $6b19: $a3
    rst $20                                       ; $6b1a: $e7
    and h                                         ; $6b1b: $a4
    cp $e0                                        ; $6b1c: $fe $e0
    rst $30                                       ; $6b1e: $f7
    and a                                         ; $6b1f: $a7
    db $e4                                        ; $6b20: $e4
    and h                                         ; $6b21: $a4
    db $f4                                        ; $6b22: $f4
    pop hl                                        ; $6b23: $e1
    rlca                                          ; $6b24: $07
    dec b                                         ; $6b25: $05
    rst $00                                       ; $6b26: $c7
    push bc                                       ; $6b27: $c5
    rra                                           ; $6b28: $1f
    rst $38                                       ; $6b29: $ff
    dec a                                         ; $6b2a: $3d
    db $fd                                        ; $6b2b: $fd
    ld bc, $e4fb                                  ; $6b2c: $01 $fb $e4
    ldh [$f4], a                                  ; $6b2f: $e0 $f4
    pop hl                                        ; $6b31: $e1
    db $e4                                        ; $6b32: $e4
    pop hl                                        ; $6b33: $e1
    rst $38                                       ; $6b34: $ff
    db $e3                                        ; $6b35: $e3
    and e                                         ; $6b36: $a3
    ldh [$a0], a                                  ; $6b37: $e0 $a0
    cp b                                          ; $6b39: $b8
    sbc b                                         ; $6b3a: $98
    ld e, a                                       ; $6b3b: $5f
    rst $00                                       ; $6b3c: $c7
    rst $38                                       ; $6b3d: $ff
    or a                                          ; $6b3e: $b7
    ld [hl], b                                    ; $6b3f: $70
    rst $08                                       ; $6b40: $cf
    ccf                                           ; $6b41: $3f
    rst $20                                       ; $6b42: $e7
    dec h                                         ; $6b43: $25
    rst $20                                       ; $6b44: $e7
    dec h                                         ; $6b45: $25
    rst $38                                       ; $6b46: $ff
    rst $00                                       ; $6b47: $c7
    push bc                                       ; $6b48: $c5
    rlca                                          ; $6b49: $07
    dec b                                         ; $6b4a: $05
    dec e                                         ; $6b4b: $1d
    add hl, de                                    ; $6b4c: $19
    ld a, [$0fe3]                                 ; $6b4d: $fa $e3 $0f
    db $ed                                        ; $6b50: $ed
    ld c, $f3                                     ; $6b51: $0e $f3
    db $fc                                        ; $6b53: $fc
    nop                                           ; $6b54: $00
    nop                                           ; $6b55: $00
    nop                                           ; $6b56: $00
    rst $38                                       ; $6b57: $ff
    jp $5a3c                                      ; $6b58: $c3 $3c $5a


    and l                                         ; $6b5b: $a5
    inc a                                         ; $6b5c: $3c
    jp $c33c                                      ; $6b5d: $c3 $3c $c3


    rst $38                                       ; $6b60: $ff
    ld a, a                                       ; $6b61: $7f
    rst $38                                       ; $6b62: $ff
    cp a                                          ; $6b63: $bf
    add b                                         ; $6b64: $80
    rst $38                                       ; $6b65: $ff
    cp a                                          ; $6b66: $bf
    ldh [$a0], a                                  ; $6b67: $e0 $a0
    cp $f0                                        ; $6b69: $fe $f0
    push hl                                       ; $6b6b: $e5
    cp $ff                                        ; $6b6c: $fe $ff
    db $fd                                        ; $6b6e: $fd
    ld bc, $fdff                                  ; $6b6f: $01 $ff $fd
    rlca                                          ; $6b72: $07
    rst $38                                       ; $6b73: $ff
    dec b                                         ; $6b74: $05
    ldh [$a0], a                                  ; $6b75: $e0 $a0
    db $e3                                        ; $6b77: $e3
    and e                                         ; $6b78: $a3
    db $e3                                        ; $6b79: $e3
    and d                                         ; $6b7a: $a2
    rst $38                                       ; $6b7b: $ff
    rst $38                                       ; $6b7c: $ff
    cp [hl]                                       ; $6b7d: $be
    cp a                                          ; $6b7e: $bf
    add b                                         ; $6b7f: $80
    ld a, a                                       ; $6b80: $7f
    db $fd                                        ; $6b81: $fd
    rst $00                                       ; $6b82: $c7
    dec a                                         ; $6b83: $3d
    set 7, a                                      ; $6b84: $cb $ff
    add hl, sp                                    ; $6b86: $39
    rlca                                          ; $6b87: $07
    dec b                                         ; $6b88: $05
    rst $00                                       ; $6b89: $c7
    push bc                                       ; $6b8a: $c5
    rst $00                                       ; $6b8b: $c7
    ld b, l                                       ; $6b8c: $45
    adc l                                         ; $6b8d: $8d
    rst $38                                       ; $6b8e: $ff
    adc c                                         ; $6b8f: $89
    sbc d                                         ; $6b90: $9a
    sub e                                         ; $6b91: $93
    dec e                                         ; $6b92: $1d
    ld d, $37                                     ; $6b93: $16 $37
    inc h                                         ; $6b95: $24
    dec sp                                        ; $6b96: $3b
    ld a, a                                       ; $6b97: $7f
    inc l                                         ; $6b98: $2c
    adc $3a                                       ; $6b99: $ce $3a
    ld e, [hl]                                    ; $6b9b: $5e
    xor d                                         ; $6b9c: $aa
    ld a, $ca                                     ; $6b9d: $3e $ca
    cp $e1                                        ; $6b9f: $fe $e1
    rst $38                                       ; $6ba1: $ff
    xor a                                         ; $6ba2: $af
    ld e, e                                       ; $6ba3: $5b
    srl b                                         ; $6ba4: $cb $38
    rst $00                                       ; $6ba6: $c7
    ccf                                           ; $6ba7: $3f
    dec sp                                        ; $6ba8: $3b
    inc l                                         ; $6ba9: $2c
    rst $38                                       ; $6baa: $ff
    ld l, d                                       ; $6bab: $6a
    ld c, l                                       ; $6bac: $4d
    ld [hl], h                                    ; $6bad: $74
    ld e, e                                       ; $6bae: $5b
    ld a, h                                       ; $6baf: $7c
    ld d, e                                       ; $6bb0: $53
    ld a, h                                       ; $6bb1: $7c
    ld d, e                                       ; $6bb2: $53
    ccf                                           ; $6bb3: $3f
    push af                                       ; $6bb4: $f5
    jp c, $1cd3                                   ; $6bb5: $da $d3 $1c

    db $e3                                        ; $6bb8: $e3
    db $fc                                        ; $6bb9: $fc
    nop                                           ; $6bba: $00
    nop                                           ; $6bbb: $00
    nop                                           ; $6bbc: $00
    rst $38                                       ; $6bbd: $ff
    jp $5a3c                                      ; $6bbe: $c3 $3c $5a


    and l                                         ; $6bc1: $a5
    inc a                                         ; $6bc2: $3c
    jp $c33c                                      ; $6bc3: $c3 $3c $c3


    rst $38                                       ; $6bc6: $ff
    cpl                                           ; $6bc7: $2f
    rst $18                                       ; $6bc8: $df
    or a                                          ; $6bc9: $b7
    ld [hl], b                                    ; $6bca: $70
    ld e, a                                       ; $6bcb: $5f
    rst $00                                       ; $6bcc: $c7
    cp b                                          ; $6bcd: $b8
    sbc b                                         ; $6bce: $98
    cp $f0                                        ; $6bcf: $fe $f0
    push hl                                       ; $6bd1: $e5
    db $f4                                        ; $6bd2: $f4
    ei                                            ; $6bd3: $fb
    db $ed                                        ; $6bd4: $ed
    ld c, $fa                                     ; $6bd5: $0e $fa
    db $e3                                        ; $6bd7: $e3
    dec e                                         ; $6bd8: $1d
    rst $38                                       ; $6bd9: $ff
    add hl, de                                    ; $6bda: $19
    ldh [$a0], a                                  ; $6bdb: $e0 $a0
    db $e3                                        ; $6bdd: $e3
    and e                                         ; $6bde: $a3
    rst $20                                       ; $6bdf: $e7
    and h                                         ; $6be0: $a4
    rst $20                                       ; $6be1: $e7
    rst $38                                       ; $6be2: $ff
    and h                                         ; $6be3: $a4
    db $e3                                        ; $6be4: $e3
    and e                                         ; $6be5: $a3
    ldh a, [$90]                                  ; $6be6: $f0 $90
    or b                                          ; $6be8: $b0
    sub b                                         ; $6be9: $90
    db $e3                                        ; $6bea: $e3
    rst $38                                       ; $6beb: $ff
    and e                                         ; $6bec: $a3
    rlca                                          ; $6bed: $07
    dec b                                         ; $6bee: $05
    rst $00                                       ; $6bef: $c7
    push bc                                       ; $6bf0: $c5
    rst $20                                       ; $6bf1: $e7
    dec h                                         ; $6bf2: $25
    rst $20                                       ; $6bf3: $e7
    ld a, a                                       ; $6bf4: $7f
    dec h                                         ; $6bf5: $25
    rst $00                                       ; $6bf6: $c7
    push bc                                       ; $6bf7: $c5
    rrca                                          ; $6bf8: $0f
    add hl, bc                                    ; $6bf9: $09
    dec c                                         ; $6bfa: $0d
    add hl, bc                                    ; $6bfb: $09
    db $f4                                        ; $6bfc: $f4
    ldh [$fe], a                                  ; $6bfd: $e0 $fe
    db $e4                                        ; $6bff: $e4
    ld [c], a                                     ; $6c00: $e2
    ldh [$a0], a                                  ; $6c01: $e0 $a0
    cp b                                          ; $6c03: $b8
    sbc b                                         ; $6c04: $98
    ld e, a                                       ; $6c05: $5f
    rst $00                                       ; $6c06: $c7
    or a                                          ; $6c07: $b7
    rst $30                                       ; $6c08: $f7
    ld [hl], b                                    ; $6c09: $70
    rst $08                                       ; $6c0a: $cf
    ccf                                           ; $6c0b: $3f
    db $e4                                        ; $6c0c: $e4
    db $e3                                        ; $6c0d: $e3
    rlca                                          ; $6c0e: $07
    dec b                                         ; $6c0f: $05
    dec e                                         ; $6c10: $1d
    add hl, de                                    ; $6c11: $19
    ccf                                           ; $6c12: $3f
    ld a, [$ede3]                                 ; $6c13: $fa $e3 $ed
    ld c, $f3                                     ; $6c16: $0e $f3
    db $fc                                        ; $6c18: $fc
    nop                                           ; $6c19: $00
    nop                                           ; $6c1a: $00
    nop                                           ; $6c1b: $00
    rst $38                                       ; $6c1c: $ff
    jp $5a3c                                      ; $6c1d: $c3 $3c $5a


    and l                                         ; $6c20: $a5
    inc a                                         ; $6c21: $3c
    jp $c33c                                      ; $6c22: $c3 $3c $c3


    rst $38                                       ; $6c25: $ff
    cpl                                           ; $6c26: $2f
    rst $18                                       ; $6c27: $df
    or a                                          ; $6c28: $b7
    ld [hl], b                                    ; $6c29: $70
    ld e, a                                       ; $6c2a: $5f
    rst $00                                       ; $6c2b: $c7
    cp b                                          ; $6c2c: $b8
    sbc b                                         ; $6c2d: $98
    cp $f0                                        ; $6c2e: $fe $f0
    push hl                                       ; $6c30: $e5
    db $f4                                        ; $6c31: $f4
    ei                                            ; $6c32: $fb
    db $ed                                        ; $6c33: $ed
    ld c, $fa                                     ; $6c34: $0e $fa
    db $e3                                        ; $6c36: $e3
    dec e                                         ; $6c37: $1d
    rst $38                                       ; $6c38: $ff
    add hl, de                                    ; $6c39: $19
    ldh [$a0], a                                  ; $6c3a: $e0 $a0
    db $e3                                        ; $6c3c: $e3
    and e                                         ; $6c3d: $a3
    rst $20                                       ; $6c3e: $e7
    and h                                         ; $6c3f: $a4
    rst $20                                       ; $6c40: $e7
    rst $38                                       ; $6c41: $ff
    and h                                         ; $6c42: $a4
    db $e3                                        ; $6c43: $e3
    and e                                         ; $6c44: $a3
    ldh [$a0], a                                  ; $6c45: $e0 $a0
    cp b                                          ; $6c47: $b8
    sbc b                                         ; $6c48: $98
    rst $18                                       ; $6c49: $df
    rst $38                                       ; $6c4a: $ff
    rst $00                                       ; $6c4b: $c7
    rlca                                          ; $6c4c: $07
    dec b                                         ; $6c4d: $05
    rst $00                                       ; $6c4e: $c7
    push bc                                       ; $6c4f: $c5
    rst $20                                       ; $6c50: $e7
    dec h                                         ; $6c51: $25
    rst $20                                       ; $6c52: $e7
    rst $38                                       ; $6c53: $ff
    dec h                                         ; $6c54: $25
    rst $00                                       ; $6c55: $c7
    push bc                                       ; $6c56: $c5
    rlca                                          ; $6c57: $07
    dec b                                         ; $6c58: $05
    daa                                           ; $6c59: $27
    dec h                                         ; $6c5a: $25
    rst $20                                       ; $6c5b: $e7
    rst $18                                       ; $6c5c: $df
    push hl                                       ; $6c5d: $e5
    cp a                                          ; $6c5e: $bf
    add b                                         ; $6c5f: $80
    rst $38                                       ; $6c60: $ff
    cp h                                          ; $6c61: $bc
    db $e4                                        ; $6c62: $e4
    db $e3                                        ; $6c63: $e3
    ld e, a                                       ; $6c64: $5f
    rst $00                                       ; $6c65: $c7
    rst $28                                       ; $6c66: $ef
    or a                                          ; $6c67: $b7
    ld [hl], b                                    ; $6c68: $70
    rst $08                                       ; $6c69: $cf
    ccf                                           ; $6c6a: $3f
    db $e4                                        ; $6c6b: $e4
    push hl                                       ; $6c6c: $e5
    dec e                                         ; $6c6d: $1d
    add hl, de                                    ; $6c6e: $19
    ld a, [$e31f]                                 ; $6c6f: $fa $1f $e3
    db $ed                                        ; $6c72: $ed
    ld c, $f3                                     ; $6c73: $0e $f3
    db $fc                                        ; $6c75: $fc
    nop                                           ; $6c76: $00
    nop                                           ; $6c77: $00
    nop                                           ; $6c78: $00

Call_00b_6c79:
    call Call_000_0341                            ; $6c79: $cd $41 $03
    ld a, $01                                     ; $6c7c: $3e $01
    ldh [$96], a                                  ; $6c7e: $e0 $96
    ldh [rSVBK], a                                ; $6c80: $e0 $70
    ld a, $01                                     ; $6c82: $3e $01
    ldh [rVBK], a                                 ; $6c84: $e0 $4f
    ld hl, $6cae                                  ; $6c86: $21 $ae $6c
    ld de, $d000                                  ; $6c89: $11 $00 $d0
    call Call_000_1f2f                            ; $6c8c: $cd $2f $1f
    ld hl, $d000                                  ; $6c8f: $21 $00 $d0
    ld de, $9100                                  ; $6c92: $11 $00 $91
    ld bc, $0008                                  ; $6c95: $01 $08 $00
    call Call_000_2096                            ; $6c98: $cd $96 $20
    ld hl, $d080                                  ; $6c9b: $21 $80 $d0
    ld de, $9200                                  ; $6c9e: $11 $00 $92
    ld bc, $0008                                  ; $6ca1: $01 $08 $00
    call Call_000_2096                            ; $6ca4: $cd $96 $20
    call Call_000_0371                            ; $6ca7: $cd $71 $03
    call Call_000_2e3b                            ; $6caa: $cd $3b $2e
    ret                                           ; $6cad: $c9


    rst $38                                       ; $6cae: $ff
    cp a                                          ; $6caf: $bf
    ld a, a                                       ; $6cb0: $7f
    ld a, [hl]                                    ; $6cb1: $7e
    ret nz                                        ; $6cb2: $c0

    ld e, a                                       ; $6cb3: $5f
    ret nz                                        ; $6cb4: $c0

    ccf                                           ; $6cb5: $3f
    ldh [rIE], a                                  ; $6cb6: $e0 $ff
    ccf                                           ; $6cb8: $3f
    ldh [$bf], a                                  ; $6cb9: $e0 $bf
    ld h, e                                       ; $6cbb: $63
    cp $23                                        ; $6cbc: $fe $23
    rst $38                                       ; $6cbe: $ff
    ld [hl+], a                                   ; $6cbf: $22
    rst $38                                       ; $6cc0: $ff
    ld b, e                                       ; $6cc1: $43
    cp h                                          ; $6cc2: $bc
    sbc d                                         ; $6cc3: $9a
    push hl                                       ; $6cc4: $e5
    ld l, h                                       ; $6cc5: $6c
    ld [hl], e                                    ; $6cc6: $73
    call nc, $ff1b                                ; $6cc7: $d4 $1b $ff
    add sp, $0f                                   ; $6cca: $e8 $0f
    ld [hl], l                                    ; $6ccc: $75
    ld b, $bb                                     ; $6ccd: $06 $bb
    add d                                         ; $6ccf: $82
    ld a, a                                       ; $6cd0: $7f
    jp nz, Jump_00b_7fff                          ; $6cd1: $c2 $ff $7f

    rst $38                                       ; $6cd4: $ff
    rst $38                                       ; $6cd5: $ff
    add b                                         ; $6cd6: $80
    cp a                                          ; $6cd7: $bf
    add b                                         ; $6cd8: $80
    ld a, a                                       ; $6cd9: $7f
    ret nz                                        ; $6cda: $c0

    rst $38                                       ; $6cdb: $ff
    ld a, a                                       ; $6cdc: $7f
    rst $00                                       ; $6cdd: $c7
    db $fc                                        ; $6cde: $fc
    ld b, a                                       ; $6cdf: $47
    db $fd                                        ; $6ce0: $fd
    ld b, a                                       ; $6ce1: $47
    cp $46                                        ; $6ce2: $fe $46
    rst $38                                       ; $6ce4: $ff
    jp $b2fc                                      ; $6ce5: $c3 $fc $b2


    dec a                                         ; $6ce8: $3d
    add sp, $0f                                   ; $6ce9: $e8 $0f
    db $f4                                        ; $6ceb: $f4
    rlca                                          ; $6cec: $07
    rst $38                                       ; $6ced: $ff
    ld a, d                                       ; $6cee: $7a
    inc bc                                        ; $6cef: $03
    rst $38                                       ; $6cf0: $ff
    jp nz, $c2fb                                  ; $6cf1: $c2 $fb $c2

    db $fd                                        ; $6cf4: $fd
    ld b, $ff                                     ; $6cf5: $06 $ff
    jp Jump_00b_5d3f                              ; $6cf7: $c3 $3f $5d


    and h                                         ; $6cfa: $a4
    scf                                           ; $6cfb: $37
    call z, $c83b                                 ; $6cfc: $cc $3b $c8
    rst $38                                       ; $6cff: $ff
    cpl                                           ; $6d00: $2f
    ret c                                         ; $6d01: $d8

    or a                                          ; $6d02: $b7
    ld d, b                                       ; $6d03: $50
    rst $18                                       ; $6d04: $df
    ld sp, $21ed                                  ; $6d05: $31 $ed $21
    rst $38                                       ; $6d08: $ff
    jp $bafc                                      ; $6d09: $c3 $fc $ba


    dec h                                         ; $6d0c: $25
    db $ec                                        ; $6d0d: $ec
    inc sp                                        ; $6d0e: $33
    call c, $ff13                                 ; $6d0f: $dc $13 $ff
    db $f4                                        ; $6d12: $f4
    dec de                                        ; $6d13: $1b
    db $ed                                        ; $6d14: $ed
    ld a, [bc]                                    ; $6d15: $0a
    ei                                            ; $6d16: $fb
    adc h                                         ; $6d17: $8c
    rst $30                                       ; $6d18: $f7
    add h                                         ; $6d19: $84
    rst $38                                       ; $6d1a: $ff
    ld [hl], e                                    ; $6d1b: $73
    db $fc                                        ; $6d1c: $fc
    ld [$f88d], a                                 ; $6d1d: $ea $8d $f8
    adc a                                         ; $6d20: $8f
    db $f4                                        ; $6d21: $f4
    add a                                         ; $6d22: $87
    rst $38                                       ; $6d23: $ff
    cp h                                          ; $6d24: $bc
    add a                                         ; $6d25: $87
    ld a, e                                       ; $6d26: $7b
    jp nz, Jump_00b_43df                          ; $6d27: $c2 $df $43

    cp [hl]                                       ; $6d2a: $be
    ld h, d                                       ; $6d2b: $62
    cp a                                          ; $6d2c: $bf
    adc $3f                                       ; $6d2d: $ce $3f
    ld d, a                                       ; $6d2f: $57
    or c                                          ; $6d30: $b1
    ccf                                           ; $6d31: $3f
    pop de                                        ; $6d32: $d1
    cp $e1                                        ; $6d33: $fe $e1
    sbc a                                         ; $6d35: $9f
    rst $38                                       ; $6d36: $ff
    ld [hl], c                                    ; $6d37: $71
    ld l, l                                       ; $6d38: $6d
    and c                                         ; $6d39: $a1
    cp [hl]                                       ; $6d3a: $be
    db $e3                                        ; $6d3b: $e3
    rst $38                                       ; $6d3c: $ff
    ld [hl+], a                                   ; $6d3d: $22
    ld a, [hl]                                    ; $6d3e: $7e
    rst $30                                       ; $6d3f: $f7
    and e                                         ; $6d40: $a3
    ccf                                           ; $6d41: $3f
    db $e3                                        ; $6d42: $e3
    add b                                         ; $6d43: $80
    ld [c], a                                     ; $6d44: $e2
    ld h, b                                       ; $6d45: $60
    cp $20                                        ; $6d46: $fe $20
    rst $18                                       ; $6d48: $df
    rst $38                                       ; $6d49: $ff
    ccf                                           ; $6d4a: $3f
    ld a, a                                       ; $6d4b: $7f
    jp nz, $83ba                                  ; $6d4c: $c2 $ba $83

    ld [hl], h                                    ; $6d4f: $74
    rlca                                          ; $6d50: $07
    add sp, -$01                                  ; $6d51: $e8 $ff
    rrca                                          ; $6d53: $0f
    call nc, $a51b                                ; $6d54: $d4 $1b $a5
    ld a, [hl-]                                   ; $6d57: $3a
    jp $43fc                                      ; $6d58: $c3 $fc $43


    rst $30                                       ; $6d5b: $f7
    cp h                                          ; $6d5c: $bc
    rst $38                                       ; $6d5d: $ff
    ld b, b                                       ; $6d5e: $40
    add h                                         ; $6d5f: $84
    ldh [$c0], a                                  ; $6d60: $e0 $c0
    ld a, l                                       ; $6d62: $7d
    call nz, $ff7f                                ; $6d63: $c4 $7f $ff
    rst $00                                       ; $6d66: $c7
    db $f4                                        ; $6d67: $f4
    ld b, a                                       ; $6d68: $47
    ei                                            ; $6d69: $fb
    ld c, h                                       ; $6d6a: $4c
    or e                                          ; $6d6b: $b3
    ld a, h                                       ; $6d6c: $7c
    rst $30                                       ; $6d6d: $f7
    rst $28                                       ; $6d6e: $ef
    inc b                                         ; $6d6f: $04
    jp c, $f41d                                   ; $6d70: $da $1d $f4

    ld h, d                                       ; $6d73: $62
    ldh [$74], a                                  ; $6d74: $e0 $74
    rlca                                          ; $6d76: $07
    or l                                          ; $6d77: $b5
    rst $38                                       ; $6d78: $ff
    add [hl]                                      ; $6d79: $86
    ld c, e                                       ; $6d7a: $4b
    call z, Call_00b_7cb3                         ; $6d7b: $cc $b3 $7c
    cp [hl]                                       ; $6d7e: $be
    ld h, d                                       ; $6d7f: $62
    ld e, a                                       ; $6d80: $5f
    cp $e0                                        ; $6d81: $fe $e0
    ldh [$7e], a                                  ; $6d83: $e0 $7e
    ret nz                                        ; $6d85: $c0

    or a                                          ; $6d86: $b7
    add a                                         ; $6d87: $87
    db $fd                                        ; $6d88: $fd
    adc d                                         ; $6d89: $8a
    db $eb                                        ; $6d8a: $eb
    rst $38                                       ; $6d8b: $ff
    adc h                                         ; $6d8c: $8c
    ld [hl], e                                    ; $6d8d: $73
    db $fc                                        ; $6d8e: $fc
    db $fd                                        ; $6d8f: $fd
    ld b, $fa                                     ; $6d90: $06 $fa
    inc bc                                        ; $6d92: $03
    cp $ff                                        ; $6d93: $fe $ff
    inc bc                                        ; $6d95: $03
    db $fd                                        ; $6d96: $fd
    pop hl                                        ; $6d97: $e1
    cpl                                           ; $6d98: $2f
    pop hl                                        ; $6d99: $e1
    sbc a                                         ; $6d9a: $9f
    ld [hl], c                                    ; $6d9b: $71
    rst $10                                       ; $6d9c: $d7
    rst $38                                       ; $6d9d: $ff
    ld sp, $3fce                                  ; $6d9e: $31 $ce $3f
    rst $38                                       ; $6da1: $ff
    ld [hl+], a                                   ; $6da2: $22
    ld a, a                                       ; $6da3: $7f
    and b                                         ; $6da4: $a0
    cpl                                           ; $6da5: $2f
    rst $38                                       ; $6da6: $ff
    ldh [$1f], a                                  ; $6da7: $e0 $1f
    ldh a, [$3f]                                  ; $6da9: $f0 $3f
    ret nc                                        ; $6dab: $d0

    or a                                          ; $6dac: $b7
    ld d, b                                       ; $6dad: $50
    jp z, Jump_000_38ff                           ; $6dae: $ca $ff $38

    rst $00                                       ; $6db1: $c7
    ccf                                           ; $6db2: $3f
    ld a, a                                       ; $6db3: $7f
    ld h, d                                       ; $6db4: $62
    sbc $03                                       ; $6db5: $de $03
    ld a, [$03ff]                                 ; $6db7: $fa $ff $03
    db $fc                                        ; $6dba: $fc
    rlca                                          ; $6dbb: $07
    db $fc                                        ; $6dbc: $fc
    rlca                                          ; $6dbd: $07
    ld [hl], l                                    ; $6dbe: $75
    ld b, $ab                                     ; $6dbf: $06 $ab
    nop                                           ; $6dc1: $00
    ret nc                                        ; $6dc2: $d0

    ldh [rP1], a                                  ; $6dc3: $e0 $00
    nop                                           ; $6dc5: $00
    nop                                           ; $6dc6: $00

Call_00b_6dc7:
    push af                                       ; $6dc7: $f5
    push bc                                       ; $6dc8: $c5
    push de                                       ; $6dc9: $d5
    push hl                                       ; $6dca: $e5
    ldh a, [$96]                                  ; $6dcb: $f0 $96
    push af                                       ; $6dcd: $f5
    push de                                       ; $6dce: $d5
    push hl                                       ; $6dcf: $e5
    push hl                                       ; $6dd0: $e5
    ld h, d                                       ; $6dd1: $62
    ld l, e                                       ; $6dd2: $6b
    call Call_00b_48ea                            ; $6dd3: $cd $ea $48
    ld d, h                                       ; $6dd6: $54
    ld e, l                                       ; $6dd7: $5d
    ld h, b                                       ; $6dd8: $60
    ld l, c                                       ; $6dd9: $69
    call Call_00b_48ea                            ; $6dda: $cd $ea $48
    pop bc                                        ; $6ddd: $c1
    push hl                                       ; $6dde: $e5
    push de                                       ; $6ddf: $d5
    push bc                                       ; $6de0: $c5
    ld a, $02                                     ; $6de1: $3e $02
    ldh [$96], a                                  ; $6de3: $e0 $96
    ldh [rSVBK], a                                ; $6de5: $e0 $70
    ld a, c                                       ; $6de7: $79
    ld c, b                                       ; $6de8: $48
    ld b, $00                                     ; $6de9: $06 $00

jr_00b_6deb:
    push af                                       ; $6deb: $f5
    push bc                                       ; $6dec: $c5
    push de                                       ; $6ded: $d5
    push hl                                       ; $6dee: $e5
    call MemCopy                            ; $6def: $cd $d3 $03
    pop hl                                        ; $6df2: $e1
    pop de                                        ; $6df3: $d1
    pop bc                                        ; $6df4: $c1
    pop af                                        ; $6df5: $f1
    push bc                                       ; $6df6: $c5
    ld bc, $0040                                  ; $6df7: $01 $40 $00
    push hl                                       ; $6dfa: $e5
    ld h, d                                       ; $6dfb: $62
    ld l, e                                       ; $6dfc: $6b
    add hl, bc                                    ; $6dfd: $09
    ld d, h                                       ; $6dfe: $54
    ld e, l                                       ; $6dff: $5d
    pop hl                                        ; $6e00: $e1
    add hl, bc                                    ; $6e01: $09
    pop bc                                        ; $6e02: $c1
    dec a                                         ; $6e03: $3d
    jr nz, jr_00b_6deb                            ; $6e04: $20 $e5

    pop bc                                        ; $6e06: $c1
    pop de                                        ; $6e07: $d1
    pop hl                                        ; $6e08: $e1
    ld a, $03                                     ; $6e09: $3e $03
    ldh [$96], a                                  ; $6e0b: $e0 $96
    ldh [rSVBK], a                                ; $6e0d: $e0 $70
    ld a, c                                       ; $6e0f: $79
    ld c, b                                       ; $6e10: $48
    ld b, $00                                     ; $6e11: $06 $00

jr_00b_6e13:
    push af                                       ; $6e13: $f5
    push bc                                       ; $6e14: $c5
    push de                                       ; $6e15: $d5
    push hl                                       ; $6e16: $e5
    call MemCopy                            ; $6e17: $cd $d3 $03
    pop hl                                        ; $6e1a: $e1
    pop de                                        ; $6e1b: $d1
    pop bc                                        ; $6e1c: $c1
    pop af                                        ; $6e1d: $f1
    push bc                                       ; $6e1e: $c5
    ld bc, $0040                                  ; $6e1f: $01 $40 $00
    push hl                                       ; $6e22: $e5
    ld h, d                                       ; $6e23: $62
    ld l, e                                       ; $6e24: $6b
    add hl, bc                                    ; $6e25: $09
    ld d, h                                       ; $6e26: $54
    ld e, l                                       ; $6e27: $5d
    pop hl                                        ; $6e28: $e1
    add hl, bc                                    ; $6e29: $09
    pop bc                                        ; $6e2a: $c1
    dec a                                         ; $6e2b: $3d
    jr nz, jr_00b_6e13                            ; $6e2c: $20 $e5

    pop hl                                        ; $6e2e: $e1
    pop de                                        ; $6e2f: $d1
    ld a, $05                                     ; $6e30: $3e $05
    ldh [$96], a                                  ; $6e32: $e0 $96
    ldh [rSVBK], a                                ; $6e34: $e0 $70
    ld a, e                                       ; $6e36: $7b
    ld c, l                                       ; $6e37: $4d
    pop af                                        ; $6e38: $f1
    ldh [$96], a                                  ; $6e39: $e0 $96
    ldh [rSVBK], a                                ; $6e3b: $e0 $70
    pop hl                                        ; $6e3d: $e1
    pop de                                        ; $6e3e: $d1
    pop bc                                        ; $6e3f: $c1
    pop af                                        ; $6e40: $f1
    ret                                           ; $6e41: $c9


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

Call_00b_7cb3:
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

Jump_00b_7fff:
    rst $38                                       ; $7fff: $ff
