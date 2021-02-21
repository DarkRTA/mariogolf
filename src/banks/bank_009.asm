; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    db $12, $4a

    push bc                                       ; $4002: $c5
    ld e, d                                       ; $4003: $5a
    ldh [rBGP], a                                 ; $4004: $e0 $47
    ld [hl], h                                    ; $4006: $74
    ld l, d                                       ; $4007: $6a
    sbc e                                         ; $4008: $9b
    ld l, d                                       ; $4009: $6a

Call_009_400a:
    ld a, $06                                     ; $400a: $3e $06
    ldh [$96], a                                  ; $400c: $e0 $96
    ldh [rSVBK], a                                ; $400e: $e0 $70
    ld a, b                                       ; $4010: $78
    ld [$d205], a                                 ; $4011: $ea $05 $d2
    ld a, l                                       ; $4014: $7d
    ld [$d200], a                                 ; $4015: $ea $00 $d2
    ld a, h                                       ; $4018: $7c
    ld [$d201], a                                 ; $4019: $ea $01 $d2
    ld a, d                                       ; $401c: $7a
    ld [$d202], a                                 ; $401d: $ea $02 $d2
    ld a, e                                       ; $4020: $7b
    ld [$d203], a                                 ; $4021: $ea $03 $d2
    push de                                       ; $4024: $d5
    call Call_000_23b6                            ; $4025: $cd $b6 $23
    rst $18                                       ; $4028: $df

    db $06, $01

    call Call_000_0341                            ; $402b: $cd $41 $03
    xor a                                         ; $402e: $af
    ldh [$8b], a                                  ; $402f: $e0 $8b
    ldh [$8a], a                                  ; $4031: $e0 $8a
    ld hl, $d200                                  ; $4033: $21 $00 $d2
    ld a, [hl+]                                   ; $4036: $2a
    ld h, [hl]                                    ; $4037: $66
    ld l, a                                       ; $4038: $6f
    ld de, $0028                                  ; $4039: $11 $28 $00
    add hl, de                                    ; $403c: $19
    ld a, [hl+]                                   ; $403d: $2a
    ld h, [hl]                                    ; $403e: $66
    ld l, a                                       ; $403f: $6f
    ld de, $d000                                  ; $4040: $11 $00 $d0
    ld a, $01                                     ; $4043: $3e $01
    ldh [$96], a                                  ; $4045: $e0 $96
    ldh [rSVBK], a                                ; $4047: $e0 $70
    call Call_000_1f2f                            ; $4049: $cd $2f $1f
    ld hl, $d000                                  ; $404c: $21 $00 $d0
    ld de, $8e00                                  ; $404f: $11 $00 $8e
    ld c, $14                                     ; $4052: $0e $14
    call Call_000_04db                            ; $4054: $cd $db $04
    ld hl, $40ce                                  ; $4057: $21 $ce $40
    ld de, $d000                                  ; $405a: $11 $00 $d0
    call Call_000_1f2f                            ; $405d: $cd $2f $1f
    ld hl, $d000                                  ; $4060: $21 $00 $d0
    ld de, $b000                                  ; $4063: $11 $00 $b0
    ld c, $80                                     ; $4066: $0e $80
    call Call_000_0468                            ; $4068: $cd $68 $04
    ld hl, $d800                                  ; $406b: $21 $00 $d8
    ld de, $a800                                  ; $406e: $11 $00 $a8
    ld c, $80                                     ; $4071: $0e $80
    call Call_000_04db                            ; $4073: $cd $db $04
    ld hl, $4325                                  ; $4076: $21 $25 $43
    ld de, $0206                                  ; $4079: $11 $06 $02
    call Call_000_0595                            ; $407c: $cd $95 $05
    ld hl, $4355                                  ; $407f: $21 $55 $43
    ld de, $0c01                                  ; $4082: $11 $01 $0c
    call Call_000_0595                            ; $4085: $cd $95 $05
    ld hl, $4360                                  ; $4088: $21 $60 $43
    ld de, $b800                                  ; $408b: $11 $00 $b8
    ld c, $24                                     ; $408e: $0e $24
    call Call_000_0468                            ; $4090: $cd $68 $04
    ld hl, $45a0                                  ; $4093: $21 $a0 $45
    ld de, $9800                                  ; $4096: $11 $00 $98
    ld c, $24                                     ; $4099: $0e $24
    call Call_000_04db                            ; $409b: $cd $db $04
    ld a, $06                                     ; $409e: $3e $06
    ldh [$96], a                                  ; $40a0: $e0 $96
    ldh [rSVBK], a                                ; $40a2: $e0 $70
    ld hl, $0100                                  ; $40a4: $21 $00 $01
    ld c, $0a                                     ; $40a7: $0e $0a

jr_009_40a9:
    push bc                                       ; $40a9: $c5
    push hl                                       ; $40aa: $e5
    call Call_009_4916                            ; $40ab: $cd $16 $49
    call Call_000_04de                            ; $40ae: $cd $de $04
    pop hl                                        ; $40b1: $e1
    ld c, $0b                                     ; $40b2: $0e $0b
    push hl                                       ; $40b4: $e5
    call Call_009_4949                            ; $40b5: $cd $49 $49
    call Call_000_04de                            ; $40b8: $cd $de $04
    pop hl                                        ; $40bb: $e1
    pop bc                                        ; $40bc: $c1
    inc l                                         ; $40bd: $2c
    dec c                                         ; $40be: $0d
    jr nz, jr_009_40a9                            ; $40bf: $20 $e8

    ld a, $01                                     ; $40c1: $3e $01
    ld hl, $4990                                  ; $40c3: $21 $90 $49
    call Call_000_23e8                            ; $40c6: $cd $e8 $23
    call Call_000_0371                            ; $40c9: $cd $71 $03
    pop de                                        ; $40cc: $d1
    ret                                           ; $40cd: $c9


    db $15, $00, $ff, $ec, $ff, $ff, $fc, $00, $fe, $ed, $ff, $ff, $9d, $e2, $7f, $82
    db $00, $12, $00, $36, $00, $66, $91, $e2, $ff, $04, $00, $08, $00, $19, $00, $13
    db $00, $87, $33, $00, $37, $90, $ee, $a0, $e7, $a5, $e0, $fa, $e1, $ff, $ff, $d0
    db $ef, $9f, $ff, $a0, $ff, $af, $f0, $f0, $fe, $e3, $7e, $e1, $fc, $e2, $d9, $e6
    db $07, $ff, $f3, $ff, $0f, $0b, $ff, $fb, $0f, $fe, $e3, $d8, $e5, $d0, $e5, $e8
    db $e5, $ae, $e0, $ed, $9f, $ff, $c0, $15, $e4, $80, $fd, $e0, $c8, $f1, $b7, $fa
    db $e0, $f4, $e3, $86, $e2, $ad, $52, $40, $bf, $6e, $12, $e3, $ff, $ff, $01, $fd
    db $e0, $6b, $95, $fa, $e0, $3c, $02, $e4, $ce, $e1, $a3, $dc, $de, $a1, $ce, $e3
    db $72, $e3, $cf, $2d, $d2, $f2, $0d, $c5, $c3, $ce, $e3, $1b, $e5, $eb, $f5, $0b
    db $ce, $e3, $6e, $cf, $cc, $77, $00, $7f, $fc, $fe, $e0, $b9, $c1, $f7, $08, $f3
    db $0c, $f9, $06, $80, $8f, $c9, $26, $e3, $06, $e5, $fe, $c3, $f1, $c8, $65, $c2
    db $18, $e3, $eb, $f3, $1f, $f3, $08, $e0, $54, $c2, $c6, $fe, $e7, $fe, $ff, $f7
    db $de, $ff, $de, $ef, $de, $e7, $de, $77, $e7, $9c, $63, $5f, $c2, $7c, $c7, $fe
    db $f2, $e1, $ef, $fc, $7f, $c1, $3e, $4f, $ce, $f8, $cf, $fc, $fb, $df, $e6, $d4
    db $e1, $dc, $ef, $f9, $fe, $83, $ff, $7c, $bc, $c3, $e3, $9c, $9f, $e0, $f0, $ff
    db $8f, $8f, $f0, $f0, $8f, $df, $a0, $80, $ff, $ff, $ce, $31, $39, $c6, $c7, $38
    db $78, $ff, $87, $8f, $70, $f0, $0f, $1f, $e0, $00, $ff, $ff, $cc, $33, $3b, $c4
    db $c6, $39, $79, $bd, $86, $f0, $e5, $1d, $e3, $e7, $19, $22, $e1, $0f, $df, $f1
    db $f9, $07, $07, $f9, $ea, $c1, $c9, $f7, $ff, $ca, $f5, $cb, $f4, $c9, $f6, $cb
    db $f4, $fc, $fe, $e1, $c0, $a1, $7f, $ff, $1f, $ff, $4f, $bf, $ff, $4f, $bf, $2b
    db $df, $6b, $df, $df, $20, $ff, $cf, $30, $67, $98, $67, $98, $23, $dc, $ff, $23
    db $dc, $01, $fe, $01, $fe, $f8, $07, $ff, $fc, $03, $9c, $63, $cc, $33, $66, $99
    db $3f, $66, $99, $22, $dd, $02, $fd, $9a, $c5, $02, $eb, $fc, $a7, $a2, $93, $a5
    db $7c, $c6, $3f, $fe, $7f, $e6, $ef, $ff, $ee, $f7, $fe, $30, $e1, $30, $f7, $38
    db $bf, $ff, $fc, $f1, $3e, $f7, $38, $f8, $e0, $3c, $e3, $e1, $1e, $6f, $af, $fe
    db $ff, $3b, $aa, $80, $9b, $e4, $ff, $f6, $89, $cd, $b2, $bb, $c4, $e6, $99, $ff
    db $99, $e6, $f7, $88, $ff, $00, $cf, $30, $ff, $70, $8f, $8f, $70, $76, $89, $99
    db $66, $ff, $e6, $19, $38, $c7, $ff, $00, $c3, $3c, $ff, $fc, $03, $03, $fc, $fc
    db $03, $27, $d8, $ff, $dc, $23, $33, $cc, $ff, $01, $9f, $61, $ff, $71, $8f, $8f
    db $71, $79, $87, $c7, $39, $ef, $3d, $c3, $e3, $1d, $0a, $e1, $cd, $f2, $cd, $df
    db $f6, $c9, $f6, $cd, $f2, $fe, $c1, $6b, $df, $ef, $2b, $df, $4b, $bf, $fe, $e3
    db $0b, $ff, $4b, $9d, $bf, $d0, $87, $01, $ff, $03, $54, $a0, $c0, $81, $10, $fb
    db $ff, $60, $82, $a0, $80, $ff, $88, $ff, $18, $00, $0c, $c6, $04, $c7, $a5, $89
    db $91, $9f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ee, $f6, $f5, $0f, $ff, $9e
    db $fe, $e0, $be, $ff, $3c, $fb, $ff, $7d, $fe, $e0, $ff, $ff, $30, $ff, $70, $ff
    db $ff, $71, $ff, $e3, $ff, $e7, $ff, $ef, $00, $b0, $63, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $e6, $00, $00

    nop                                           ; $4324: $00

    db $f8, $03, $44, $03, $00, $02, $40, $01, $96, $4a, $1f, $12, $d6, $00, $00, $00
    db $ff, $03, $1f, $12, $d6, $00, $00, $00, $de, $7b, $8e, $7f, $80, $7e, $80, $7d
    db $de, $7b, $18, $63, $52, $4a, $8c, $31, $de, $7b, $18, $63, $52, $4a, $8c, $31
    db $80, $7d, $1f, $68, $4c, $68, $00, $00

    nop                                           ; $435d: $00
    nop                                           ; $435e: $00
    nop                                           ; $435f: $00
    dec c                                         ; $4360: $0d
    dec c                                         ; $4361: $0d
    dec c                                         ; $4362: $0d
    dec c                                         ; $4363: $0d
    dec c                                         ; $4364: $0d
    dec c                                         ; $4365: $0d
    dec c                                         ; $4366: $0d
    dec c                                         ; $4367: $0d
    dec c                                         ; $4368: $0d
    dec c                                         ; $4369: $0d
    dec c                                         ; $436a: $0d
    dec c                                         ; $436b: $0d
    dec c                                         ; $436c: $0d
    dec c                                         ; $436d: $0d
    dec c                                         ; $436e: $0d
    dec c                                         ; $436f: $0d
    dec c                                         ; $4370: $0d
    dec c                                         ; $4371: $0d
    dec c                                         ; $4372: $0d
    dec c                                         ; $4373: $0d
    ld [$0808], sp                                ; $4374: $08 $08 $08
    ld [$0808], sp                                ; $4377: $08 $08 $08
    ld [$0808], sp                                ; $437a: $08 $08 $08
    ld [$0808], sp                                ; $437d: $08 $08 $08
    dec c                                         ; $4380: $0d
    dec c                                         ; $4381: $0d
    dec c                                         ; $4382: $0d
    dec c                                         ; $4383: $0d
    dec c                                         ; $4384: $0d
    dec c                                         ; $4385: $0d
    dec c                                         ; $4386: $0d
    dec c                                         ; $4387: $0d
    dec c                                         ; $4388: $0d
    dec c                                         ; $4389: $0d
    dec c                                         ; $438a: $0d
    dec c                                         ; $438b: $0d
    dec c                                         ; $438c: $0d
    dec c                                         ; $438d: $0d
    dec c                                         ; $438e: $0d
    dec c                                         ; $438f: $0d
    dec c                                         ; $4390: $0d
    dec c                                         ; $4391: $0d
    dec c                                         ; $4392: $0d
    dec c                                         ; $4393: $0d
    ld [$0808], sp                                ; $4394: $08 $08 $08
    ld [$0808], sp                                ; $4397: $08 $08 $08
    ld [$0808], sp                                ; $439a: $08 $08 $08
    ld [$0808], sp                                ; $439d: $08 $08 $08
    dec c                                         ; $43a0: $0d
    dec c                                         ; $43a1: $0d
    dec c                                         ; $43a2: $0d
    dec c                                         ; $43a3: $0d
    dec c                                         ; $43a4: $0d
    dec c                                         ; $43a5: $0d
    dec c                                         ; $43a6: $0d
    dec c                                         ; $43a7: $0d
    dec c                                         ; $43a8: $0d
    dec c                                         ; $43a9: $0d
    dec c                                         ; $43aa: $0d
    dec c                                         ; $43ab: $0d
    dec c                                         ; $43ac: $0d
    dec c                                         ; $43ad: $0d
    dec c                                         ; $43ae: $0d
    dec c                                         ; $43af: $0d
    dec c                                         ; $43b0: $0d
    dec c                                         ; $43b1: $0d
    dec c                                         ; $43b2: $0d
    dec c                                         ; $43b3: $0d
    ld [$0808], sp                                ; $43b4: $08 $08 $08
    ld [$0808], sp                                ; $43b7: $08 $08 $08
    ld [$0808], sp                                ; $43ba: $08 $08 $08
    ld [$0808], sp                                ; $43bd: $08 $08 $08
    dec c                                         ; $43c0: $0d
    dec c                                         ; $43c1: $0d
    dec c                                         ; $43c2: $0d
    dec c                                         ; $43c3: $0d
    dec c                                         ; $43c4: $0d
    dec c                                         ; $43c5: $0d
    dec c                                         ; $43c6: $0d
    dec c                                         ; $43c7: $0d
    dec c                                         ; $43c8: $0d
    dec c                                         ; $43c9: $0d
    dec c                                         ; $43ca: $0d
    dec c                                         ; $43cb: $0d
    dec c                                         ; $43cc: $0d
    dec c                                         ; $43cd: $0d
    dec c                                         ; $43ce: $0d
    dec c                                         ; $43cf: $0d
    dec c                                         ; $43d0: $0d
    dec c                                         ; $43d1: $0d
    dec c                                         ; $43d2: $0d
    dec c                                         ; $43d3: $0d
    ld [$0808], sp                                ; $43d4: $08 $08 $08
    ld [$0808], sp                                ; $43d7: $08 $08 $08
    ld [$0808], sp                                ; $43da: $08 $08 $08
    ld [$0808], sp                                ; $43dd: $08 $08 $08
    dec c                                         ; $43e0: $0d
    dec c                                         ; $43e1: $0d
    adc e                                         ; $43e2: $8b
    adc e                                         ; $43e3: $8b
    adc e                                         ; $43e4: $8b
    adc e                                         ; $43e5: $8b
    adc e                                         ; $43e6: $8b
    adc e                                         ; $43e7: $8b
    adc e                                         ; $43e8: $8b
    adc e                                         ; $43e9: $8b
    adc e                                         ; $43ea: $8b
    adc e                                         ; $43eb: $8b
    adc e                                         ; $43ec: $8b
    adc e                                         ; $43ed: $8b
    adc e                                         ; $43ee: $8b
    adc e                                         ; $43ef: $8b
    adc e                                         ; $43f0: $8b
    adc e                                         ; $43f1: $8b
    dec c                                         ; $43f2: $0d
    dec c                                         ; $43f3: $0d
    ld [$0808], sp                                ; $43f4: $08 $08 $08
    ld [$0808], sp                                ; $43f7: $08 $08 $08
    ld [$0808], sp                                ; $43fa: $08 $08 $08
    ld [$0808], sp                                ; $43fd: $08 $08 $08

    db $0d, $0d, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b
    db $8b, $8b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0a, $0a, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0a, $0a, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0a, $0a, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0a, $0a, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0a, $0a, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0a, $0a, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

    ld a, [bc]                                    ; $4540: $0a
    ld a, [bc]                                    ; $4541: $0a
    dec bc                                        ; $4542: $0b
    dec bc                                        ; $4543: $0b
    dec bc                                        ; $4544: $0b
    dec bc                                        ; $4545: $0b
    dec bc                                        ; $4546: $0b
    dec bc                                        ; $4547: $0b
    dec bc                                        ; $4548: $0b
    dec bc                                        ; $4549: $0b
    dec bc                                        ; $454a: $0b
    dec bc                                        ; $454b: $0b
    dec bc                                        ; $454c: $0b
    dec bc                                        ; $454d: $0b
    dec bc                                        ; $454e: $0b
    dec bc                                        ; $454f: $0b
    dec bc                                        ; $4550: $0b
    dec bc                                        ; $4551: $0b
    ld a, [bc]                                    ; $4552: $0a
    ld a, [bc]                                    ; $4553: $0a
    ld [$0808], sp                                ; $4554: $08 $08 $08
    ld [$0808], sp                                ; $4557: $08 $08 $08
    ld [$0808], sp                                ; $455a: $08 $08 $08
    ld [$0808], sp                                ; $455d: $08 $08 $08
    ld a, [bc]                                    ; $4560: $0a
    ld a, [bc]                                    ; $4561: $0a
    ld a, [bc]                                    ; $4562: $0a
    ld a, [bc]                                    ; $4563: $0a
    ld a, [bc]                                    ; $4564: $0a
    ld a, [bc]                                    ; $4565: $0a
    ld a, [bc]                                    ; $4566: $0a
    ld a, [bc]                                    ; $4567: $0a
    ld a, [bc]                                    ; $4568: $0a
    dec bc                                        ; $4569: $0b
    dec bc                                        ; $456a: $0b
    ld a, [bc]                                    ; $456b: $0a
    ld a, [bc]                                    ; $456c: $0a
    ld a, [bc]                                    ; $456d: $0a
    ld a, [bc]                                    ; $456e: $0a
    ld a, [bc]                                    ; $456f: $0a
    ld a, [bc]                                    ; $4570: $0a
    ld a, [bc]                                    ; $4571: $0a
    ld a, [bc]                                    ; $4572: $0a
    ld a, [bc]                                    ; $4573: $0a
    ld [$0808], sp                                ; $4574: $08 $08 $08
    ld [$0808], sp                                ; $4577: $08 $08 $08
    ld [$0808], sp                                ; $457a: $08 $08 $08
    ld [$0808], sp                                ; $457d: $08 $08 $08
    ld a, [bc]                                    ; $4580: $0a
    ld a, [bc]                                    ; $4581: $0a
    ld a, [bc]                                    ; $4582: $0a
    ld a, [bc]                                    ; $4583: $0a
    ld a, [bc]                                    ; $4584: $0a
    ld a, [bc]                                    ; $4585: $0a
    ld a, [bc]                                    ; $4586: $0a
    ld a, [bc]                                    ; $4587: $0a
    ld a, [bc]                                    ; $4588: $0a
    dec bc                                        ; $4589: $0b
    dec bc                                        ; $458a: $0b
    ld a, [bc]                                    ; $458b: $0a
    ld a, [bc]                                    ; $458c: $0a
    ld a, [bc]                                    ; $458d: $0a
    ld a, [bc]                                    ; $458e: $0a
    ld a, [bc]                                    ; $458f: $0a
    ld a, [bc]                                    ; $4590: $0a
    ld a, [bc]                                    ; $4591: $0a
    ld a, [bc]                                    ; $4592: $0a
    ld a, [bc]                                    ; $4593: $0a
    ld [$0808], sp                                ; $4594: $08 $08 $08
    ld [$0808], sp                                ; $4597: $08 $08 $08
    ld [$0808], sp                                ; $459a: $08 $08 $08
    ld [$0808], sp                                ; $459d: $08 $08 $08
    ld [bc], a                                    ; $45a0: $02
    ld [bc], a                                    ; $45a1: $02
    ld [bc], a                                    ; $45a2: $02
    ld [bc], a                                    ; $45a3: $02
    ld [bc], a                                    ; $45a4: $02
    ld [bc], a                                    ; $45a5: $02
    ld [bc], a                                    ; $45a6: $02
    ld [bc], a                                    ; $45a7: $02
    ld [bc], a                                    ; $45a8: $02
    ld [bc], a                                    ; $45a9: $02
    ld [bc], a                                    ; $45aa: $02
    ld [bc], a                                    ; $45ab: $02
    ld [bc], a                                    ; $45ac: $02
    ld [bc], a                                    ; $45ad: $02
    ld [bc], a                                    ; $45ae: $02
    ld [bc], a                                    ; $45af: $02
    ld [bc], a                                    ; $45b0: $02
    ld [bc], a                                    ; $45b1: $02
    ld [bc], a                                    ; $45b2: $02
    ld [bc], a                                    ; $45b3: $02
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
    ld [bc], a                                    ; $45c0: $02
    ld [bc], a                                    ; $45c1: $02
    ld [bc], a                                    ; $45c2: $02
    ld [bc], a                                    ; $45c3: $02
    ld [bc], a                                    ; $45c4: $02
    ld [bc], a                                    ; $45c5: $02
    ld [bc], a                                    ; $45c6: $02
    ld [bc], a                                    ; $45c7: $02
    ld [bc], a                                    ; $45c8: $02
    ld [bc], a                                    ; $45c9: $02
    ld [bc], a                                    ; $45ca: $02
    ld [bc], a                                    ; $45cb: $02
    ld [bc], a                                    ; $45cc: $02
    ld [bc], a                                    ; $45cd: $02
    ld [bc], a                                    ; $45ce: $02
    ld [bc], a                                    ; $45cf: $02
    ld [bc], a                                    ; $45d0: $02
    ld [bc], a                                    ; $45d1: $02
    ld [bc], a                                    ; $45d2: $02
    ld [bc], a                                    ; $45d3: $02
    nop                                           ; $45d4: $00
    nop                                           ; $45d5: $00
    nop                                           ; $45d6: $00
    nop                                           ; $45d7: $00
    nop                                           ; $45d8: $00
    nop                                           ; $45d9: $00
    nop                                           ; $45da: $00
    nop                                           ; $45db: $00
    nop                                           ; $45dc: $00
    nop                                           ; $45dd: $00
    nop                                           ; $45de: $00
    nop                                           ; $45df: $00
    ld [$0808], sp                                ; $45e0: $08 $08 $08
    ld [$0808], sp                                ; $45e3: $08 $08 $08
    ld [$0808], sp                                ; $45e6: $08 $08 $08
    ld [$0808], sp                                ; $45e9: $08 $08 $08
    ld [$0808], sp                                ; $45ec: $08 $08 $08
    ld [$0808], sp                                ; $45ef: $08 $08 $08
    ld [$0008], sp                                ; $45f2: $08 $08 $00
    nop                                           ; $45f5: $00
    nop                                           ; $45f6: $00
    nop                                           ; $45f7: $00
    nop                                           ; $45f8: $00
    nop                                           ; $45f9: $00
    nop                                           ; $45fa: $00
    nop                                           ; $45fb: $00
    nop                                           ; $45fc: $00
    nop                                           ; $45fd: $00
    nop                                           ; $45fe: $00
    nop                                           ; $45ff: $00
    jr jr_009_461a                                ; $4600: $18 $18

    jr jr_009_461c                                ; $4602: $18 $18

    jr jr_009_461e                                ; $4604: $18 $18

    jr jr_009_4620                                ; $4606: $18 $18

    jr jr_009_4622                                ; $4608: $18 $18

    jr @+$1a                                      ; $460a: $18 $18

    jr jr_009_4626                                ; $460c: $18 $18

    jr @+$1a                                      ; $460e: $18 $18

    jr @+$1a                                      ; $4610: $18 $18

    jr jr_009_462c                                ; $4612: $18 $18

    nop                                           ; $4614: $00
    nop                                           ; $4615: $00
    nop                                           ; $4616: $00
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    nop                                           ; $4619: $00

jr_009_461a:
    nop                                           ; $461a: $00
    nop                                           ; $461b: $00

jr_009_461c:
    nop                                           ; $461c: $00
    nop                                           ; $461d: $00

jr_009_461e:
    nop                                           ; $461e: $00
    nop                                           ; $461f: $00

jr_009_4620:
    jr z, jr_009_464a                             ; $4620: $28 $28

jr_009_4622:
    db $10                                        ; $4622: $10
    ld de, $1111                                  ; $4623: $11 $11 $11

jr_009_4626:
    ld de, $1111                                  ; $4626: $11 $11 $11
    ld de, $1111                                  ; $4629: $11 $11 $11

jr_009_462c:
    ld de, $1111                                  ; $462c: $11 $11 $11
    ld de, $1211                                  ; $462f: $11 $11 $12
    jr z, jr_009_465c                             ; $4632: $28 $28

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
    jr c, jr_009_467a                             ; $4640: $38 $38

    jr nz, jr_009_4665                            ; $4642: $20 $21

    ld h, b                                       ; $4644: $60
    ld h, c                                       ; $4645: $61
    ld h, d                                       ; $4646: $62
    ld h, e                                       ; $4647: $63
    ld h, h                                       ; $4648: $64
    ld h, l                                       ; $4649: $65

jr_009_464a:
    ld h, [hl]                                    ; $464a: $66
    ld h, a                                       ; $464b: $67
    ld l, b                                       ; $464c: $68
    ld l, c                                       ; $464d: $69
    ld l, d                                       ; $464e: $6a
    ld l, e                                       ; $464f: $6b
    ld [hl+], a                                   ; $4650: $22
    inc hl                                        ; $4651: $23
    jr c, jr_009_468c                             ; $4652: $38 $38

    nop                                           ; $4654: $00
    nop                                           ; $4655: $00
    nop                                           ; $4656: $00
    nop                                           ; $4657: $00
    nop                                           ; $4658: $00
    nop                                           ; $4659: $00
    nop                                           ; $465a: $00
    nop                                           ; $465b: $00

jr_009_465c:
    nop                                           ; $465c: $00
    nop                                           ; $465d: $00
    nop                                           ; $465e: $00
    nop                                           ; $465f: $00
    inc bc                                        ; $4660: $03
    inc bc                                        ; $4661: $03
    jr nc, jr_009_4695                            ; $4662: $30 $31

    ld [hl], b                                    ; $4664: $70

jr_009_4665:
    ld [hl], c                                    ; $4665: $71
    ld [hl], d                                    ; $4666: $72
    ld [hl], e                                    ; $4667: $73
    ld [hl], h                                    ; $4668: $74
    ld [hl], l                                    ; $4669: $75
    halt                                          ; $466a: $76
    ld [hl], a                                    ; $466b: $77
    ld a, b                                       ; $466c: $78
    ld a, c                                       ; $466d: $79
    ld a, d                                       ; $466e: $7a
    ld a, e                                       ; $466f: $7b
    ld [hl-], a                                   ; $4670: $32
    inc sp                                        ; $4671: $33
    inc bc                                        ; $4672: $03
    inc bc                                        ; $4673: $03
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00

jr_009_467a:
    nop                                           ; $467a: $00
    nop                                           ; $467b: $00
    nop                                           ; $467c: $00
    nop                                           ; $467d: $00
    nop                                           ; $467e: $00
    nop                                           ; $467f: $00
    add hl, bc                                    ; $4680: $09
    add hl, bc                                    ; $4681: $09
    jr nz, jr_009_46a5                            ; $4682: $20 $21

Call_009_4684:
    add b                                         ; $4684: $80
    add c                                         ; $4685: $81
    add d                                         ; $4686: $82
    add e                                         ; $4687: $83
    add h                                         ; $4688: $84
    add l                                         ; $4689: $85
    add [hl]                                      ; $468a: $86
    add a                                         ; $468b: $87

jr_009_468c:
    adc b                                         ; $468c: $88
    adc c                                         ; $468d: $89
    adc d                                         ; $468e: $8a
    adc e                                         ; $468f: $8b
    ld [hl+], a                                   ; $4690: $22
    inc hl                                        ; $4691: $23
    add hl, bc                                    ; $4692: $09
    add hl, bc                                    ; $4693: $09
    nop                                           ; $4694: $00

jr_009_4695:
    nop                                           ; $4695: $00
    nop                                           ; $4696: $00
    nop                                           ; $4697: $00
    nop                                           ; $4698: $00
    nop                                           ; $4699: $00
    nop                                           ; $469a: $00
    nop                                           ; $469b: $00
    nop                                           ; $469c: $00
    nop                                           ; $469d: $00
    nop                                           ; $469e: $00
    nop                                           ; $469f: $00
    add hl, de                                    ; $46a0: $19
    add hl, de                                    ; $46a1: $19
    jr nc, jr_009_46d5                            ; $46a2: $30 $31

    sub b                                         ; $46a4: $90

jr_009_46a5:
    sub c                                         ; $46a5: $91
    sub d                                         ; $46a6: $92
    sub e                                         ; $46a7: $93
    sub h                                         ; $46a8: $94
    sub l                                         ; $46a9: $95
    sub [hl]                                      ; $46aa: $96
    sub a                                         ; $46ab: $97
    sbc b                                         ; $46ac: $98
    sbc c                                         ; $46ad: $99
    sbc d                                         ; $46ae: $9a
    sbc e                                         ; $46af: $9b
    ld [hl-], a                                   ; $46b0: $32
    inc sp                                        ; $46b1: $33
    add hl, de                                    ; $46b2: $19
    add hl, de                                    ; $46b3: $19
    nop                                           ; $46b4: $00
    nop                                           ; $46b5: $00
    nop                                           ; $46b6: $00
    nop                                           ; $46b7: $00
    nop                                           ; $46b8: $00
    nop                                           ; $46b9: $00
    nop                                           ; $46ba: $00
    nop                                           ; $46bb: $00
    nop                                           ; $46bc: $00
    nop                                           ; $46bd: $00
    nop                                           ; $46be: $00
    nop                                           ; $46bf: $00
    add hl, hl                                    ; $46c0: $29
    add hl, hl                                    ; $46c1: $29
    jr nz, jr_009_46e5                            ; $46c2: $20 $21

    and b                                         ; $46c4: $a0
    and c                                         ; $46c5: $a1
    and d                                         ; $46c6: $a2
    and e                                         ; $46c7: $a3
    and h                                         ; $46c8: $a4
    and l                                         ; $46c9: $a5
    and [hl]                                      ; $46ca: $a6
    and a                                         ; $46cb: $a7
    xor b                                         ; $46cc: $a8
    xor c                                         ; $46cd: $a9
    xor d                                         ; $46ce: $aa
    xor e                                         ; $46cf: $ab
    ld [hl+], a                                   ; $46d0: $22
    inc hl                                        ; $46d1: $23
    add hl, hl                                    ; $46d2: $29
    add hl, hl                                    ; $46d3: $29
    nop                                           ; $46d4: $00

jr_009_46d5:
    nop                                           ; $46d5: $00
    nop                                           ; $46d6: $00
    nop                                           ; $46d7: $00
    nop                                           ; $46d8: $00
    nop                                           ; $46d9: $00
    nop                                           ; $46da: $00
    nop                                           ; $46db: $00
    nop                                           ; $46dc: $00
    nop                                           ; $46dd: $00
    nop                                           ; $46de: $00
    nop                                           ; $46df: $00
    add hl, sp                                    ; $46e0: $39
    add hl, sp                                    ; $46e1: $39
    jr nc, jr_009_4715                            ; $46e2: $30 $31

    or b                                          ; $46e4: $b0

jr_009_46e5:
    or c                                          ; $46e5: $b1
    or d                                          ; $46e6: $b2
    or e                                          ; $46e7: $b3
    or h                                          ; $46e8: $b4
    or l                                          ; $46e9: $b5
    or [hl]                                       ; $46ea: $b6
    or a                                          ; $46eb: $b7
    cp b                                          ; $46ec: $b8
    cp c                                          ; $46ed: $b9
    cp d                                          ; $46ee: $ba
    cp e                                          ; $46ef: $bb
    ld [hl-], a                                   ; $46f0: $32
    inc sp                                        ; $46f1: $33
    add hl, sp                                    ; $46f2: $39
    add hl, sp                                    ; $46f3: $39
    nop                                           ; $46f4: $00
    nop                                           ; $46f5: $00
    nop                                           ; $46f6: $00
    nop                                           ; $46f7: $00
    nop                                           ; $46f8: $00
    nop                                           ; $46f9: $00
    nop                                           ; $46fa: $00
    nop                                           ; $46fb: $00
    nop                                           ; $46fc: $00
    nop                                           ; $46fd: $00
    nop                                           ; $46fe: $00
    nop                                           ; $46ff: $00
    inc b                                         ; $4700: $04
    inc b                                         ; $4701: $04
    jr nz, jr_009_4725                            ; $4702: $20 $21

    ret nz                                        ; $4704: $c0

    pop bc                                        ; $4705: $c1
    jp nz, $c4c3                                  ; $4706: $c2 $c3 $c4

    push bc                                       ; $4709: $c5
    add $c7                                       ; $470a: $c6 $c7
    ret z                                         ; $470c: $c8

    ret                                           ; $470d: $c9


    jp z, Jump_000_22cb                           ; $470e: $ca $cb $22

    inc hl                                        ; $4711: $23
    inc b                                         ; $4712: $04
    inc b                                         ; $4713: $04
    nop                                           ; $4714: $00

jr_009_4715:
    nop                                           ; $4715: $00
    nop                                           ; $4716: $00
    nop                                           ; $4717: $00
    nop                                           ; $4718: $00
    nop                                           ; $4719: $00
    nop                                           ; $471a: $00
    nop                                           ; $471b: $00
    nop                                           ; $471c: $00
    nop                                           ; $471d: $00
    nop                                           ; $471e: $00
    nop                                           ; $471f: $00
    ld b, $07                                     ; $4720: $06 $07
    jr nc, jr_009_4755                            ; $4722: $30 $31

    ret nc                                        ; $4724: $d0

jr_009_4725:
    pop de                                        ; $4725: $d1
    jp nc, $d4d3                                  ; $4726: $d2 $d3 $d4

    push de                                       ; $4729: $d5
    sub $d7                                       ; $472a: $d6 $d7
    ret c                                         ; $472c: $d8

    reti                                          ; $472d: $d9


    jp c, Jump_000_32db                           ; $472e: $da $db $32

    inc sp                                        ; $4731: $33
    ld b, $07                                     ; $4732: $06 $07
    nop                                           ; $4734: $00
    nop                                           ; $4735: $00
    nop                                           ; $4736: $00
    nop                                           ; $4737: $00
    nop                                           ; $4738: $00
    nop                                           ; $4739: $00
    nop                                           ; $473a: $00
    nop                                           ; $473b: $00
    nop                                           ; $473c: $00
    nop                                           ; $473d: $00
    nop                                           ; $473e: $00
    nop                                           ; $473f: $00
    ld d, $17                                     ; $4740: $16 $17
    jr nz, @+$23                                  ; $4742: $20 $21

    ldh [$e1], a                                  ; $4744: $e0 $e1
    ld [c], a                                     ; $4746: $e2
    db $e3                                        ; $4747: $e3
    db $e4                                        ; $4748: $e4
    push hl                                       ; $4749: $e5
    and $e7                                       ; $474a: $e6 $e7
    add sp, -$17                                  ; $474c: $e8 $e9
    ld [$22eb], a                                 ; $474e: $ea $eb $22
    inc hl                                        ; $4751: $23
    ld d, $17                                     ; $4752: $16 $17
    nop                                           ; $4754: $00

jr_009_4755:
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    nop                                           ; $4758: $00
    nop                                           ; $4759: $00
    nop                                           ; $475a: $00
    nop                                           ; $475b: $00
    nop                                           ; $475c: $00
    nop                                           ; $475d: $00
    nop                                           ; $475e: $00
    nop                                           ; $475f: $00
    ld h, $27                                     ; $4760: $26 $27
    jr nc, jr_009_4795                            ; $4762: $30 $31

    ldh a, [$f1]                                  ; $4764: $f0 $f1
    ld a, [c]                                     ; $4766: $f2
    di                                            ; $4767: $f3
    db $f4                                        ; $4768: $f4
    push af                                       ; $4769: $f5
    or $f7                                        ; $476a: $f6 $f7
    ld hl, sp-$07                                 ; $476c: $f8 $f9
    ld a, [$32fb]                                 ; $476e: $fa $fb $32
    inc sp                                        ; $4771: $33
    ld h, $27                                     ; $4772: $26 $27
    nop                                           ; $4774: $00
    nop                                           ; $4775: $00
    nop                                           ; $4776: $00
    nop                                           ; $4777: $00
    nop                                           ; $4778: $00
    nop                                           ; $4779: $00
    nop                                           ; $477a: $00
    nop                                           ; $477b: $00
    nop                                           ; $477c: $00
    nop                                           ; $477d: $00
    nop                                           ; $477e: $00
    nop                                           ; $477f: $00
    ld [hl], $37                                  ; $4780: $36 $37
    inc de                                        ; $4782: $13
    inc d                                         ; $4783: $14
    inc d                                         ; $4784: $14
    inc d                                         ; $4785: $14
    inc d                                         ; $4786: $14
    inc d                                         ; $4787: $14
    inc d                                         ; $4788: $14
    inc d                                         ; $4789: $14
    inc d                                         ; $478a: $14
    inc d                                         ; $478b: $14
    inc d                                         ; $478c: $14
    inc d                                         ; $478d: $14
    inc d                                         ; $478e: $14
    inc d                                         ; $478f: $14
    inc d                                         ; $4790: $14
    dec d                                         ; $4791: $15
    ld [hl], $37                                  ; $4792: $36 $37
    nop                                           ; $4794: $00

jr_009_4795:
    nop                                           ; $4795: $00
    nop                                           ; $4796: $00
    nop                                           ; $4797: $00
    nop                                           ; $4798: $00
    nop                                           ; $4799: $00
    nop                                           ; $479a: $00
    nop                                           ; $479b: $00
    nop                                           ; $479c: $00
    nop                                           ; $479d: $00
    nop                                           ; $479e: $00
    nop                                           ; $479f: $00
    ld b, [hl]                                    ; $47a0: $46
    ld b, a                                       ; $47a1: $47
    ld b, [hl]                                    ; $47a2: $46
    ld b, a                                       ; $47a3: $47
    ld b, [hl]                                    ; $47a4: $46
    ld b, a                                       ; $47a5: $47
    ld b, [hl]                                    ; $47a6: $46
    ld b, a                                       ; $47a7: $47
    ld b, [hl]                                    ; $47a8: $46
    inc h                                         ; $47a9: $24
    dec h                                         ; $47aa: $25
    ld b, a                                       ; $47ab: $47
    ld b, [hl]                                    ; $47ac: $46
    ld b, a                                       ; $47ad: $47
    ld b, [hl]                                    ; $47ae: $46
    ld b, a                                       ; $47af: $47
    ld b, [hl]                                    ; $47b0: $46
    ld b, a                                       ; $47b1: $47
    ld b, [hl]                                    ; $47b2: $46
    ld b, a                                       ; $47b3: $47
    nop                                           ; $47b4: $00
    nop                                           ; $47b5: $00
    nop                                           ; $47b6: $00
    nop                                           ; $47b7: $00
    nop                                           ; $47b8: $00
    nop                                           ; $47b9: $00
    nop                                           ; $47ba: $00
    nop                                           ; $47bb: $00
    nop                                           ; $47bc: $00
    nop                                           ; $47bd: $00
    nop                                           ; $47be: $00
    nop                                           ; $47bf: $00
    ld bc, $0101                                  ; $47c0: $01 $01 $01
    ld bc, $0101                                  ; $47c3: $01 $01 $01
    ld bc, $0101                                  ; $47c6: $01 $01 $01
    inc [hl]                                      ; $47c9: $34
    dec [hl]                                      ; $47ca: $35
    ld bc, $0101                                  ; $47cb: $01 $01 $01
    ld bc, $0101                                  ; $47ce: $01 $01 $01
    ld bc, $0101                                  ; $47d1: $01 $01 $01
    nop                                           ; $47d4: $00
    nop                                           ; $47d5: $00
    nop                                           ; $47d6: $00
    nop                                           ; $47d7: $00
    nop                                           ; $47d8: $00
    nop                                           ; $47d9: $00
    nop                                           ; $47da: $00
    nop                                           ; $47db: $00
    nop                                           ; $47dc: $00
    nop                                           ; $47dd: $00
    nop                                           ; $47de: $00
    nop                                           ; $47df: $00

Call_009_47e0:
    ld b, a                                       ; $47e0: $47

Jump_009_47e1:
    ld a, $ff                                     ; $47e1: $3e $ff
    ld [$d204], a                                 ; $47e3: $ea $04 $d2
    ld c, $0c                                     ; $47e6: $0e $0c
    ld l, b                                       ; $47e8: $68
    call Call_009_48f9                            ; $47e9: $cd $f9 $48

Jump_009_47ec:
    ld hl, $d204                                  ; $47ec: $21 $04 $d2
    ld a, [hl]                                    ; $47ef: $7e
    inc [hl]                                      ; $47f0: $34
    xor [hl]                                      ; $47f1: $ae
    bit 4, a                                      ; $47f2: $cb $67
    jr z, jr_009_4800                             ; $47f4: $28 $0a

    ld a, [hl]                                    ; $47f6: $7e
    swap a                                        ; $47f7: $cb $37
    and $01                                       ; $47f9: $e6 $01
    ld h, a                                       ; $47fb: $67
    ld l, b                                       ; $47fc: $68
    call Call_009_48de                            ; $47fd: $cd $de $48

jr_009_4800:
    call Call_000_2e3b                            ; $4800: $cd $3b $2e
    ld a, [$d205]                                 ; $4803: $fa $05 $d2
    or a                                          ; $4806: $b7
    jr z, jr_009_4839                             ; $4807: $28 $30

    ld a, [$cb40]                                 ; $4809: $fa $40 $cb
    cp $10                                        ; $480c: $fe $10
    jr nz, jr_009_4839                            ; $480e: $20 $29

Jump_009_4810:
    ld a, $20                                     ; $4810: $3e $20
    ld [$cb00], a                                 ; $4812: $ea $00 $cb
    ld a, $01                                     ; $4815: $3e $01
    call Call_000_3081                            ; $4817: $cd $81 $30
    ld h, $01                                     ; $481a: $26 $01
    ld l, b                                       ; $481c: $68
    call Call_009_48de                            ; $481d: $cd $de $48
    ld c, $0b                                     ; $4820: $0e $0b
    ld l, b                                       ; $4822: $68
    call Call_009_48f9                            ; $4823: $cd $f9 $48
    ld h, $00                                     ; $4826: $26 $00
    ld l, $01                                     ; $4828: $2e $01
    call Call_009_48de                            ; $482a: $cd $de $48
    ld c, $0c                                     ; $482d: $0e $0c
    ld l, $01                                     ; $482f: $2e $01
    call Call_009_48f9                            ; $4831: $cd $f9 $48
    ld b, $11                                     ; $4834: $06 $11
    jp Jump_009_48c0                              ; $4836: $c3 $c0 $48


jr_009_4839:
    ldh a, [$91]                                  ; $4839: $f0 $91
    bit 1, a                                      ; $483b: $cb $4f
    jp nz, Jump_009_48cd                          ; $483d: $c2 $cd $48

    bit 0, a                                      ; $4840: $cb $47
    jr nz, jr_009_4882                            ; $4842: $20 $3e

    bit 6, a                                      ; $4844: $cb $77
    jr z, jr_009_4857                             ; $4846: $28 $0f

    xor a                                         ; $4848: $af
    cp b                                          ; $4849: $b8
    jr nz, jr_009_4853                            ; $484a: $20 $07

    ld a, [$d202]                                 ; $484c: $fa $02 $d2
    dec a                                         ; $484f: $3d
    ld d, a                                       ; $4850: $57
    jr jr_009_486e                                ; $4851: $18 $1b

jr_009_4853:
    ld d, $ff                                     ; $4853: $16 $ff
    jr jr_009_486e                                ; $4855: $18 $17

jr_009_4857:
    bit 7, a                                      ; $4857: $cb $7f
    jr z, jr_009_486b                             ; $4859: $28 $10

    ld a, [$d202]                                 ; $485b: $fa $02 $d2
    dec a                                         ; $485e: $3d
    cp b                                          ; $485f: $b8
    jr nz, jr_009_4867                            ; $4860: $20 $05

    cpl                                           ; $4862: $2f
    inc a                                         ; $4863: $3c
    ld d, a                                       ; $4864: $57
    jr jr_009_486e                                ; $4865: $18 $07

jr_009_4867:
    ld d, $01                                     ; $4867: $16 $01
    jr jr_009_486e                                ; $4869: $18 $03

jr_009_486b:
    jp Jump_009_47ec                              ; $486b: $c3 $ec $47


jr_009_486e:
    rst $08                                       ; $486e: $cf
    ld e, e                                       ; $486f: $5b
    ld h, $01                                     ; $4870: $26 $01
    ld l, b                                       ; $4872: $68
    call Call_009_48de                            ; $4873: $cd $de $48
    ld c, $0b                                     ; $4876: $0e $0b
    ld l, b                                       ; $4878: $68
    call Call_009_48f9                            ; $4879: $cd $f9 $48
    ld a, b                                       ; $487c: $78
    add d                                         ; $487d: $82
    ld b, a                                       ; $487e: $47
    jp Jump_009_47e1                              ; $487f: $c3 $e1 $47


jr_009_4882:
    ld a, [$d205]                                 ; $4882: $fa $05 $d2
    or a                                          ; $4885: $b7
    jr z, jr_009_48c0                             ; $4886: $28 $38

    ld a, b                                       ; $4888: $78
    cp $01                                        ; $4889: $fe $01
    jr nz, jr_009_48c0                            ; $488b: $20 $33

    call Call_000_306e                            ; $488d: $cd $6e $30
    call Call_000_2e3b                            ; $4890: $cd $3b $2e
    ldh a, [$c2]                                  ; $4893: $f0 $c2
    cp $02                                        ; $4895: $fe $02
    jp z, Jump_009_4810                           ; $4897: $ca $10 $48

    cp $01                                        ; $489a: $fe $01
    jp nz, Jump_009_48b8                          ; $489c: $c2 $b8 $48

    ld a, $10                                     ; $489f: $3e $10
    ld [$cb00], a                                 ; $48a1: $ea $00 $cb
    ld a, $10                                     ; $48a4: $3e $10
    call Call_000_3081                            ; $48a6: $cd $81 $30
    ld c, $0a                                     ; $48a9: $0e $0a

jr_009_48ab:
    call Call_000_2e3b                            ; $48ab: $cd $3b $2e
    ld a, [$cb40]                                 ; $48ae: $fa $40 $cb
    cp $20                                        ; $48b1: $fe $20
    jr z, jr_009_48c0                             ; $48b3: $28 $0b

    dec c                                         ; $48b5: $0d
    jr nz, jr_009_48ab                            ; $48b6: $20 $f3

Jump_009_48b8:
    rst $08                                       ; $48b8: $cf
    ld e, l                                       ; $48b9: $5d
    call Call_000_304d                            ; $48ba: $cd $4d $30
    jp Jump_009_47ec                              ; $48bd: $c3 $ec $47


Jump_009_48c0:
jr_009_48c0:
    rst $08                                       ; $48c0: $cf

    db $5c

    ld h, $00                                     ; $48c2: $26 $00
    ld a, b                                       ; $48c4: $78
    and $0f                                       ; $48c5: $e6 $0f
    ld l, a                                       ; $48c7: $6f
    call Call_009_48de                            ; $48c8: $cd $de $48
    ld a, b                                       ; $48cb: $78
    ret                                           ; $48cc: $c9


Jump_009_48cd:
    rst $08                                       ; $48cd: $cf

    db $5d

    ld h, $01                                     ; $48cf: $26 $01
    ld l, b                                       ; $48d1: $68
    call Call_009_48de                            ; $48d2: $cd $de $48
    ld c, $0b                                     ; $48d5: $0e $0b
    ld l, b                                       ; $48d7: $68
    call Call_009_48f9                            ; $48d8: $cd $f9 $48
    ld a, $ff                                     ; $48db: $3e $ff
    ret                                           ; $48dd: $c9


Call_009_48de:
    push af                                       ; $48de: $f5
    push bc                                       ; $48df: $c5
    push de                                       ; $48e0: $d5
    push hl                                       ; $48e1: $e5
    ld a, [$d203]                                 ; $48e2: $fa $03 $d2
    add l                                         ; $48e5: $85
    add l                                         ; $48e6: $85
    ld l, a                                       ; $48e7: $6f
    push hl                                       ; $48e8: $e5
    call Call_009_4916                            ; $48e9: $cd $16 $49
    pop hl                                        ; $48ec: $e1
    inc l                                         ; $48ed: $2c
    call Call_009_4916                            ; $48ee: $cd $16 $49
    call Call_000_2e3b                            ; $48f1: $cd $3b $2e
    pop hl                                        ; $48f4: $e1
    pop de                                        ; $48f5: $d1
    pop bc                                        ; $48f6: $c1
    pop af                                        ; $48f7: $f1
    ret                                           ; $48f8: $c9


Call_009_48f9:
    push af                                       ; $48f9: $f5
    push bc                                       ; $48fa: $c5
    push de                                       ; $48fb: $d5
    push hl                                       ; $48fc: $e5
    ld a, [$d203]                                 ; $48fd: $fa $03 $d2
    add l                                         ; $4900: $85
    add l                                         ; $4901: $85
    ld l, a                                       ; $4902: $6f
    push hl                                       ; $4903: $e5
    push bc                                       ; $4904: $c5
    call Call_009_4949                            ; $4905: $cd $49 $49
    pop bc                                        ; $4908: $c1
    pop hl                                        ; $4909: $e1
    inc l                                         ; $490a: $2c
    call Call_009_4949                            ; $490b: $cd $49 $49
    call Call_000_2e3b                            ; $490e: $cd $3b $2e
    pop hl                                        ; $4911: $e1
    pop de                                        ; $4912: $d1
    pop bc                                        ; $4913: $c1
    pop af                                        ; $4914: $f1
    ret                                           ; $4915: $c9


Call_009_4916:
    push hl                                       ; $4916: $e5
    ld b, l                                       ; $4917: $45
    ld a, l                                       ; $4918: $7d
    add a                                         ; $4919: $87
    add h                                         ; $491a: $84
    add a                                         ; $491b: $87
    ld d, $00                                     ; $491c: $16 $00
    ld e, a                                       ; $491e: $5f
    ld hl, $d200                                  ; $491f: $21 $00 $d2
    ld a, [hl+]                                   ; $4922: $2a
    ld h, [hl]                                    ; $4923: $66
    ld l, a                                       ; $4924: $6f
    add hl, de                                    ; $4925: $19
    ld a, [hl+]                                   ; $4926: $2a
    ld h, [hl]                                    ; $4927: $66
    ld l, a                                       ; $4928: $6f
    ld de, $d000                                  ; $4929: $11 $00 $d0
    bit 0, b                                      ; $492c: $cb $40
    jr z, jr_009_4931                             ; $492e: $28 $01

    inc d                                         ; $4930: $14

jr_009_4931:
    push de                                       ; $4931: $d5
    call Call_000_1f2f                            ; $4932: $cd $2f $1f
    ld a, b                                       ; $4935: $78
    add $a6                                       ; $4936: $c6 $a6
    bit 3, a                                      ; $4938: $cb $5f
    jr nz, jr_009_493e                            ; $493a: $20 $02

    or $10                                        ; $493c: $f6 $10

jr_009_493e:
    pop hl                                        ; $493e: $e1
    ld d, a                                       ; $493f: $57
    ld e, $00                                     ; $4940: $1e $00
    ld c, $10                                     ; $4942: $0e $10
    call Call_000_0468                            ; $4944: $cd $68 $04
    pop hl                                        ; $4947: $e1
    ret                                           ; $4948: $c9


Call_009_4949:
    push hl                                       ; $4949: $e5
    ld b, l                                       ; $494a: $45
    ld l, b                                       ; $494b: $68
    ld h, $00                                     ; $494c: $26 $00
    add hl, hl                                    ; $494e: $29
    add hl, hl                                    ; $494f: $29
    add hl, hl                                    ; $4950: $29
    add hl, hl                                    ; $4951: $29
    add hl, hl                                    ; $4952: $29
    push hl                                       ; $4953: $e5
    ld de, $4400                                  ; $4954: $11 $00 $44
    add hl, de                                    ; $4957: $19
    ld de, $d000                                  ; $4958: $11 $00 $d0
    bit 0, b                                      ; $495b: $cb $40
    jr z, jr_009_4960                             ; $495d: $28 $01

    inc d                                         ; $495f: $14

jr_009_4960:
    push hl                                       ; $4960: $e5
    push de                                       ; $4961: $d5
    push bc                                       ; $4962: $c5
    ld c, $02                                     ; $4963: $0e $02
    call Call_000_03eb                            ; $4965: $cd $eb $03
    pop bc                                        ; $4968: $c1
    pop de                                        ; $4969: $d1
    pop hl                                        ; $496a: $e1
    pop hl                                        ; $496b: $e1
    push de                                       ; $496c: $d5
    ld de, $b8a0                                  ; $496d: $11 $a0 $b8
    add hl, de                                    ; $4970: $19
    ld d, h                                       ; $4971: $54
    ld e, l                                       ; $4972: $5d
    pop hl                                        ; $4973: $e1
    ld a, c                                       ; $4974: $79
    push hl                                       ; $4975: $e5
    inc hl                                        ; $4976: $23
    inc hl                                        ; $4977: $23
    ld [hl+], a                                   ; $4978: $22
    ld [hl+], a                                   ; $4979: $22
    ld [hl+], a                                   ; $497a: $22
    ld [hl+], a                                   ; $497b: $22
    ld [hl+], a                                   ; $497c: $22
    ld [hl+], a                                   ; $497d: $22
    ld [hl+], a                                   ; $497e: $22
    ld [hl+], a                                   ; $497f: $22
    ld [hl+], a                                   ; $4980: $22
    ld [hl+], a                                   ; $4981: $22
    ld [hl+], a                                   ; $4982: $22
    ld [hl+], a                                   ; $4983: $22
    ld [hl+], a                                   ; $4984: $22
    ld [hl+], a                                   ; $4985: $22
    ld [hl+], a                                   ; $4986: $22
    ld [hl+], a                                   ; $4987: $22
    pop hl                                        ; $4988: $e1
    ld c, $02                                     ; $4989: $0e $02
    call Call_000_0468                            ; $498b: $cd $68 $04
    pop hl                                        ; $498e: $e1
    ret                                           ; $498f: $c9


    ldh a, [$8c]                                  ; $4990: $f0 $8c
    and $3f                                       ; $4992: $e6 $3f
    ld hl, $49a9                                  ; $4994: $21 $a9 $49
    add l                                         ; $4997: $85
    ld l, a                                       ; $4998: $6f
    jr nc, jr_009_499c                            ; $4999: $30 $01

    inc h                                         ; $499b: $24

jr_009_499c:
    ld d, $00                                     ; $499c: $16 $00
    ld e, [hl]                                    ; $499e: $5e
    ld hl, $49e9                                  ; $499f: $21 $e9 $49
    ld bc, $04e0                                  ; $49a2: $01 $e0 $04
    call Call_000_26ea                            ; $49a5: $cd $ea $26
    ret                                           ; $49a8: $c9


    db $00, $00, $00, $01, $01, $01, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $02, $02, $02, $01, $01, $01, $00, $00
    db $00, $00, $00, $ff, $ff, $ff, $fe

    cp $fe                                        ; $49d0: $fe $fe
    db $fd                                        ; $49d2: $fd
    db $fd                                        ; $49d3: $fd
    db $fd                                        ; $49d4: $fd
    db $fd                                        ; $49d5: $fd
    db $fd                                        ; $49d6: $fd
    db $fd                                        ; $49d7: $fd
    db $fd                                        ; $49d8: $fd
    db $fd                                        ; $49d9: $fd
    db $fd                                        ; $49da: $fd
    db $fd                                        ; $49db: $fd
    db $fd                                        ; $49dc: $fd

    db $fd, $fd, $fd, $fd, $fe, $fe, $fe, $ff, $ff, $ff, $00, $00, $1a, $30, $00, $00
    db $1a, $38, $02, $00, $1a, $40, $04, $00, $1a, $48, $06, $00, $1a, $50, $08, $00
    db $1a, $58, $0a, $00, $1a, $60, $0c, $00, $1a, $68, $0e, $00, $1a, $70, $10, $00
    db $1a, $78, $12, $00, $80

    ld hl, $4a4c                                  ; $4a12: $21 $4c $4a
    ld de, $0401                                  ; $4a15: $11 $01 $04
    ld b, $00                                     ; $4a18: $06 $00
    call Call_009_400a                            ; $4a1a: $cd $0a $40
    ld c, $10                                     ; $4a1d: $0e $10
    call Call_000_25af                            ; $4a1f: $cd $af $25
    call Call_000_2625                            ; $4a22: $cd $25 $26
    ld a, $01                                     ; $4a25: $3e $01
    ld [$d205], a                                 ; $4a27: $ea $05 $d2
    ld a, $06                                     ; $4a2a: $3e $06
    ldh [$96], a                                  ; $4a2c: $e0 $96
    ldh [rSVBK], a                                ; $4a2e: $e0 $70
    ld a, [$cab8]                                 ; $4a30: $fa $b8 $ca
    call Call_009_47e0                            ; $4a33: $cd $e0 $47
    bit 7, a                                      ; $4a36: $cb $7f
    jr nz, jr_009_4a41                            ; $4a38: $20 $07

    push af                                       ; $4a3a: $f5
    and $0f                                       ; $4a3b: $e6 $0f
    ld [$cab8], a                                 ; $4a3d: $ea $b8 $ca
    pop af                                        ; $4a40: $f1

jr_009_4a41:
    push af                                       ; $4a41: $f5
    ld c, $10                                     ; $4a42: $0e $10
    call Call_000_25a1                            ; $4a44: $cd $a1 $25
    call Call_000_2625                            ; $4a47: $cd $25 $26
    pop af                                        ; $4a4a: $f1

jr_009_4a4b:
    ret                                           ; $4a4b: $c9


    halt                                          ; $4a4c: $76
    ld c, d                                       ; $4a4d: $4a

    db $0b, $52, $e7, $4a, $7c, $52, $b2, $4b, $47, $53

    adc b                                         ; $4a58: $88
    ld c, h                                       ; $4a59: $4c

    db $17, $54

    ld h, e                                       ; $4a5c: $63
    ld c, l                                       ; $4a5d: $4d

    db $ee, $54

    ld a, $4e                                     ; $4a60: $3e $4e

    db $c9, $55

    dec d                                         ; $4a64: $15
    ld c, a                                       ; $4a65: $4f

    db $a2, $56

    ldh a, [rVBK]                                 ; $4a68: $f0 $4f

    db $7d, $57

    ret nz                                        ; $4a6c: $c0

    ld d, b                                       ; $4a6d: $50

    db $48, $58

    sub l                                         ; $4a70: $95
    ld d, c                                       ; $4a71: $51

    db $23, $59, $99, $59

    rst $38                                       ; $4a76: $ff
    inc c                                         ; $4a77: $0c
    di                                            ; $4a78: $f3
    ei                                            ; $4a79: $fb
    inc b                                         ; $4a7a: $04
    call z, Call_000_3733                         ; $4a7b: $cc $33 $37
    ret z                                         ; $4a7e: $c8

    rst $38                                       ; $4a7f: $ff
    ldh a, [rIF]                                  ; $4a80: $f0 $0f
    rra                                           ; $4a82: $1f
    ldh [$e1], a                                  ; $4a83: $e0 $e1
    ld e, $00                                     ; $4a85: $1e $00
    rst $38                                       ; $4a87: $ff
    rst $38                                       ; $4a88: $ff
    rst $00                                       ; $4a89: $c7
    jr c, jr_009_4a4b                             ; $4a8a: $38 $bf

    ld b, b                                       ; $4a8c: $40
    ld [hl], b                                    ; $4a8d: $70
    adc a                                         ; $4a8e: $8f
    rst $08                                       ; $4a8f: $cf
    jr nc, @+$01                                  ; $4a90: $30 $ff

    ld a, b                                       ; $4a92: $78
    add a                                         ; $4a93: $87
    adc a                                         ; $4a94: $8f
    ld [hl], b                                    ; $4a95: $70
    di                                            ; $4a96: $f3
    inc c                                         ; $4a97: $0c

jr_009_4a98:
    nop                                           ; $4a98: $00
    rst $38                                       ; $4a99: $ff
    rst $38                                       ; $4a9a: $ff
    ld a, $c1                                     ; $4a9b: $3e $c1
    pop bc                                        ; $4a9d: $c1
    ld a, $7f                                     ; $4a9e: $3e $7f
    add b                                         ; $4aa0: $80
    add b                                         ; $4aa1: $80
    ld a, a                                       ; $4aa2: $7f
    rst $38                                       ; $4aa3: $ff
    ld a, a                                       ; $4aa4: $7f
    add b                                         ; $4aa5: $80
    ret nz                                        ; $4aa6: $c0

    ccf                                           ; $4aa7: $3f
    ccf                                           ; $4aa8: $3f
    ret nz                                        ; $4aa9: $c0

    nop                                           ; $4aaa: $00
    rst $38                                       ; $4aab: $ff
    rst $38                                       ; $4aac: $ff
    ccf                                           ; $4aad: $3f
    ret nz                                        ; $4aae: $c0

    ldh [$1f], a                                  ; $4aaf: $e0 $1f
    rra                                           ; $4ab1: $1f
    ldh [$f0], a                                  ; $4ab2: $e0 $f0
    rrca                                          ; $4ab4: $0f
    rst $38                                       ; $4ab5: $ff
    adc a                                         ; $4ab6: $8f
    ld [hl], b                                    ; $4ab7: $70
    ld [hl], b                                    ; $4ab8: $70
    adc a                                         ; $4ab9: $8f
    rst $18                                       ; $4aba: $df
    jr nz, jr_009_4abd                            ; $4abb: $20 $00

jr_009_4abd:
    rst $38                                       ; $4abd: $ff
    ccf                                           ; $4abe: $3f
    adc $31                                       ; $4abf: $ce $31
    add hl, sp                                    ; $4ac1: $39
    add $c7                                       ; $4ac2: $c6 $c7
    jr c, jr_009_4a98                             ; $4ac4: $38 $d2

    pop hl                                        ; $4ac6: $e1
    cp [hl]                                       ; $4ac7: $be
    pop hl                                        ; $4ac8: $e1
    rst $38                                       ; $4ac9: $ff
    nop                                           ; $4aca: $00
    rst $38                                       ; $4acb: $ff
    rst $20                                       ; $4acc: $e7
    jr @+$3a                                      ; $4acd: $18 $38

    rst $00                                       ; $4acf: $c7
    adc a                                         ; $4ad0: $8f
    ld [hl], b                                    ; $4ad1: $70
    rst $38                                       ; $4ad2: $ff
    ld a, b                                       ; $4ad3: $78
    add a                                         ; $4ad4: $87
    add a                                         ; $4ad5: $87
    ld a, b                                       ; $4ad6: $78
    ld hl, sp+$07                                 ; $4ad7: $f8 $07
    rlca                                          ; $4ad9: $07
    ld hl, sp+$03                                 ; $4ada: $f8 $03
    nop                                           ; $4adc: $00
    rst $38                                       ; $4add: $ff
    and b                                         ; $4ade: $a0
    rst $38                                       ; $4adf: $ff
    and b                                         ; $4ae0: $a0
    rst $38                                       ; $4ae1: $ff
    and b                                         ; $4ae2: $a0
    ld sp, hl                                     ; $4ae3: $f9
    nop                                           ; $4ae4: $00
    nop                                           ; $4ae5: $00
    nop                                           ; $4ae6: $00

    db $ff, $ff, $00, $3c, $c3, $c7, $38, $f9, $06, $ff, $0e, $f1, $f6, $09, $19, $e6
    db $e7, $18, $ff, $ff, $00, $dc, $23, $67, $98, $b8, $47, $ff, $cf, $30, $f6, $09
    db $39, $c6, $cf, $30, $ff, $fd, $03, $72, $8e, $c6, $3c, $3c, $c8, $ff, $e8, $18
    db $18, $f0, $f8, $10, $8c, $78, $d7, $cf, $ff, $30, $ff, $e2, $31, $ff, $e4, $bf
    db $c0, $ff, $e3, $7c, $34, $1b, $1a, $0d, $cc, $87, $ff, $c5, $46, $c7, $44, $c7
    db $84, $df, $3f, $ff, $a1, $60, $20, $e0, $20, $e0, $63, $a3, $ff, $e3, $22, $22
    db $e3, $e3, $23, $76, $8f, $ff, $c9, $f9, $69, $39, $31, $19, $99, $09, $f5, $89
    db $ff, $e1, $09, $a0, $e3, $36, $cf, $1f, $f9, $ff, $b1, $60, $60, $c0, $c0, $80
    db $ff, $00, $ff, $30, $ff, $dd, $4f, $47, $c2, $62, $c2, $ff, $b8, $f0, $ec, $98
    db $84, $fc, $b7, $78, $ff, $ea, $cd, $8e, $09, $1d, $0a, $33, $1c, $ff, $66, $39
    db $d9, $66, $b7, $c8, $ff, $00, $ff, $c3, $3c, $fc, $03, $9b, $64, $6c, $93, $ff
    db $c7, $38, $f8, $07, $0f, $f0, $ff, $00, $ff, $9e, $61, $71, $8e, $8f, $70, $78
    db $87, $3f, $c7, $38, $3c, $c3, $e3, $1c, $00, $00

    nop                                           ; $4bb1: $00

    db $ff, $1e, $e1, $f3, $0c, $0f, $f0, $f8, $07, $ff, $87, $78, $7c, $83, $c3, $3c
    db $00, $ff, $ff, $32, $cd, $fd, $02, $03, $fc, $fe, $01, $ff, $01, $fe, $ff, $00
    db $80, $7f, $00, $ff, $ff, $76, $8e, $c6, $3a, $be, $42, $62, $9e, $ff, $9e, $62
    db $72, $8e, $ce, $32, $01, $ff, $fd, $30, $ff, $e2, $31, $31, $31, $21, $23, $21
    db $ff, $22, $23, $dc, $ff, $0f, $04, $38, $1f, $ff, $e7, $78, $b8, $c7, $8e, $71
    db $f2, $0d, $ff, $1c, $e3, $00, $ff, $20, $e0, $a0, $60, $ff, $21, $e0, $23, $e3
    db $e2, $43, $c6, $43, $ff, $c5, $46, $38, $ff, $19, $09, $71, $39, $ff, $c9, $f9
    db $19, $e9, $19, $e9, $e9, $19, $ff, $c9, $39, $06, $ff, $98, $08, $18, $18, $ff
    db $18, $08, $00, $00, $c0, $80, $70, $e0, $ff, $5e, $bc, $43, $bf, $fc, $84, $c4
    db $bc, $ff, $bc, $c4, $84, $fc, $4c, $74, $64, $5c, $ff, $44, $7c, $83, $ff, $cc
    db $b3, $bb, $c4, $ff, $c7, $b8, $f8, $87, $8f, $f0, $f8, $87, $ff, $87, $f8, $00
    db $ff, $f3, $0c, $3c, $c3, $ff, $c7, $38, $78, $87, $8f, $70, $f3, $0c, $fe, $a0
    db $e1, $1e, $e1, $e1, $1e, $9f, $60, $60, $ff, $9f, $df, $20, $b0, $4f, $7f, $80
    db $00, $01, $ff, $00, $00

    nop                                           ; $4c87: $00
    rst $38                                       ; $4c88: $ff
    rst $38                                       ; $4c89: $ff
    nop                                           ; $4c8a: $00
    sbc [hl]                                      ; $4c8b: $9e
    ld h, c                                       ; $4c8c: $61
    ld h, c                                       ; $4c8d: $61
    sbc [hl]                                      ; $4c8e: $9e
    rst $18                                       ; $4c8f: $df
    jr nz, @+$01                                  ; $4c90: $20 $ff

    jr nz, @-$1f                                  ; $4c92: $20 $df

    rst $18                                       ; $4c94: $df
    jr nz, @+$32                                  ; $4c95: $20 $30

    rst $08                                       ; $4c97: $cf
    rst $08                                       ; $4c98: $cf
    jr nc, @+$01                                  ; $4c99: $30 $ff

    rst $28                                       ; $4c9b: $ef
    rra                                           ; $4c9c: $1f
    ld [hl], c                                    ; $4c9d: $71
    sub b                                         ; $4c9e: $90
    ret c                                         ; $4c9f: $d8

    jr nc, jr_009_4cca                            ; $4ca0: $30 $28

    ret c                                         ; $4ca2: $d8

    rst $38                                       ; $4ca3: $ff
    db $ec                                        ; $4ca4: $ec
    jr @-$6a                                      ; $4ca5: $18 $94

    ld l, h                                       ; $4ca7: $6c
    ld h, [hl]                                    ; $4ca8: $66
    sbc h                                         ; $4ca9: $9c
    ld a, [c]                                     ; $4caa: $f2
    ld c, $ff                                     ; $4cab: $0e $ff
    ld [hl], a                                    ; $4cad: $77
    adc a                                         ; $4cae: $8f
    call c, $e8a8                                 ; $4caf: $dc $a8 $e8
    sbc b                                         ; $4cb2: $98
    xor b                                         ; $4cb3: $a8
    ret c                                         ; $4cb4: $d8

    rst $38                                       ; $4cb5: $ff
    ld sp, hl                                     ; $4cb6: $f9
    ld d, b                                       ; $4cb7: $50
    ld d, c                                       ; $4cb8: $51
    ld [hl], c                                    ; $4cb9: $71
    ld [hl], e                                    ; $4cba: $73
    ld hl, $2322                                  ; $4cbb: $21 $22 $23
    rst $38                                       ; $4cbe: $ff
    sbc e                                         ; $4cbf: $9b
    rst $20                                       ; $4cc0: $e7
    ld [hl], h                                    ; $4cc1: $74
    ld c, h                                       ; $4cc2: $4c
    db $ec                                        ; $4cc3: $ec
    ld e, b                                       ; $4cc4: $58
    sbc c                                         ; $4cc5: $99
    ldh a, [rIE]                                  ; $4cc6: $f0 $ff
    di                                            ; $4cc8: $f3
    and c                                         ; $4cc9: $a1

jr_009_4cca:
    ld h, e                                       ; $4cca: $63
    and e                                         ; $4ccb: $a3
    ld [hl], c                                    ; $4ccc: $71
    and b                                         ; $4ccd: $a0
    ld e, b                                       ; $4cce: $58
    or b                                          ; $4ccf: $b0
    rst $38                                       ; $4cd0: $ff
    cp a                                          ; $4cd1: $bf
    ret nz                                        ; $4cd2: $c0

    ld a, a                                       ; $4cd3: $7f
    ld b, b                                       ; $4cd4: $40
    call nz, $b07b                                ; $4cd5: $c4 $7b $b0
    rst $08                                       ; $4cd8: $cf
    rst $38                                       ; $4cd9: $ff
    ld b, e                                       ; $4cda: $43
    cp h                                          ; $4cdb: $bc
    ld c, [hl]                                    ; $4cdc: $4e
    or c                                          ; $4cdd: $b1
    call c, $68e3                                 ; $4cde: $dc $e3 $68
    scf                                           ; $4ce1: $37
    rst $38                                       ; $4ce2: $ff
    ld h, c                                       ; $4ce3: $61
    sbc a                                         ; $4ce4: $9f
    add e                                         ; $4ce5: $83
    ld a, [hl]                                    ; $4ce6: $7e
    ld a, [de]                                    ; $4ce7: $1a
    and $f6                                       ; $4ce8: $e6 $f6
    inc c                                         ; $4cea: $0c
    rst $38                                       ; $4ceb: $ff
    cp h                                          ; $4cec: $bc
    ld b, h                                       ; $4ced: $44
    inc b                                         ; $4cee: $04
    db $fc                                        ; $4cef: $fc
    inc c                                         ; $4cf0: $0c
    ld hl, sp+$08                                 ; $4cf1: $f8 $08
    ld hl, sp-$01                                 ; $4cf3: $f8 $ff
    db $fc                                        ; $4cf5: $fc
    rst $38                                       ; $4cf6: $ff
    ld h, [hl]                                    ; $4cf7: $66
    ld b, e                                       ; $4cf8: $43
    ld b, d                                       ; $4cf9: $42
    inc bc                                        ; $4cfa: $03
    ld [bc], a                                    ; $4cfb: $02
    inc bc                                        ; $4cfc: $03
    rst $38                                       ; $4cfd: $ff
    inc bc                                        ; $4cfe: $03
    ld bc, $0111                                  ; $4cff: $01 $11 $01
    or c                                          ; $4d02: $b1
    ld de, $b0b9                                  ; $4d03: $11 $b9 $b0

jr_009_4d06:
    rst $38                                       ; $4d06: $ff
    rst $38                                       ; $4d07: $ff
    nop                                           ; $4d08: $00
    cp $01                                        ; $4d09: $fe $01
    ld bc, $0efe                                  ; $4d0b: $01 $fe $0e
    pop af                                        ; $4d0e: $f1
    rst $38                                       ; $4d0f: $ff
    jp Jump_000_0f3f                              ; $4d10: $c3 $3f $0f


    db $fc                                        ; $4d13: $fc
    jr jr_009_4d06                                ; $4d14: $18 $f0

    or b                                          ; $4d16: $b0
    ldh [rIE], a                                  ; $4d17: $e0 $ff
    ld sp, hl                                     ; $4d19: $f9
    ld b, $54                                     ; $4d1a: $06 $54
    xor e                                         ; $4d1c: $ab
    jp hl                                         ; $4d1d: $e9


    rla                                           ; $4d1e: $17
    ld l, l                                       ; $4d1f: $6d
    sub e                                         ; $4d20: $93
    rst $38                                       ; $4d21: $ff
    ld sp, $9dcf                                  ; $4d22: $31 $cf $9d
    db $e3                                        ; $4d25: $e3
    rst $20                                       ; $4d26: $e7
    ld e, [hl]                                    ; $4d27: $5e
    ld c, h                                       ; $4d28: $4c
    ld a, b                                       ; $4d29: $78
    rst $38                                       ; $4d2a: $ff
    ld l, a                                       ; $4d2b: $6f
    ldh a, [$de]                                  ; $4d2c: $f0 $de
    sub c                                         ; $4d2e: $91
    sbc c                                         ; $4d2f: $99
    ld d, $16                                     ; $4d30: $16 $16
    add hl, de                                    ; $4d32: $19
    rst $38                                       ; $4d33: $ff
    db $10                                        ; $4d34: $10
    rra                                           ; $4d35: $1f
    dec d                                         ; $4d36: $15
    dec de                                        ; $4d37: $1b
    dec de                                        ; $4d38: $1b
    ld d, $16                                     ; $4d39: $16 $16
    inc e                                         ; $4d3b: $1c
    rst $38                                       ; $4d3c: $ff
    rst $38                                       ; $4d3d: $ff
    nop                                           ; $4d3e: $00
    ld a, a                                       ; $4d3f: $7f
    add b                                         ; $4d40: $80
    call nz, Call_000_3f3b                        ; $4d41: $c4 $3b $3f
    ret nz                                        ; $4d44: $c0

    rst $38                                       ; $4d45: $ff
    db $e3                                        ; $4d46: $e3
    db $fc                                        ; $4d47: $fc
    or l                                          ; $4d48: $b5
    ld a, [de]                                    ; $4d49: $1a
    ld e, $09                                     ; $4d4a: $1e $09
    add hl, bc                                    ; $4d4c: $09
    ld c, $ff                                     ; $4d4d: $0e $ff
    rst $38                                       ; $4d4f: $ff
    nop                                           ; $4d50: $00
    rst $00                                       ; $4d51: $c7
    jr c, jr_009_4d8c                             ; $4d52: $38 $38

    rst $00                                       ; $4d54: $c7
    rst $20                                       ; $4d55: $e7
    jr @+$01                                      ; $4d56: $18 $ff

    inc a                                         ; $4d58: $3c
    jp Jump_000_3cc3                              ; $4d59: $c3 $c3 $3c


    ld a, [hl]                                    ; $4d5c: $7e
    add c                                         ; $4d5d: $81
    pop bc                                        ; $4d5e: $c1
    ld a, $00                                     ; $4d5f: $3e $00
    nop                                           ; $4d61: $00
    nop                                           ; $4d62: $00
    rst $38                                       ; $4d63: $ff
    inc a                                         ; $4d64: $3c
    jp $1ce3                                      ; $4d65: $c3 $e3 $1c


    sbc [hl]                                      ; $4d68: $9e
    ld h, c                                       ; $4d69: $61
    ld [hl], c                                    ; $4d6a: $71
    adc [hl]                                      ; $4d6b: $8e
    rst $38                                       ; $4d6c: $ff
    rst $08                                       ; $4d6d: $cf
    jr nc, jr_009_4da2                            ; $4d6e: $30 $32

    call Call_000_00ff                            ; $4d70: $cd $ff $00
    nop                                           ; $4d73: $00
    rst $38                                       ; $4d74: $ff
    rst $38                                       ; $4d75: $ff
    ld c, $f2                                     ; $4d76: $0e $f2
    rst $38                                       ; $4d78: $ff
    ld [bc], a                                    ; $4d79: $02
    ld bc, $ffff                                  ; $4d7a: $01 $ff $ff
    ld bc, $02ff                                  ; $4d7d: $01 $ff $02
    db $fd                                        ; $4d80: $fd
    db $fc                                        ; $4d81: $fc
    inc bc                                        ; $4d82: $03
    and a                                         ; $4d83: $a7
    ld e, b                                       ; $4d84: $58
    nop                                           ; $4d85: $00
    rst $38                                       ; $4d86: $ff
    rst $38                                       ; $4d87: $ff
    ld [bc], a                                    ; $4d88: $02
    inc bc                                        ; $4d89: $03
    ld b, $03                                     ; $4d8a: $06 $03

jr_009_4d8c:
    inc b                                         ; $4d8c: $04
    rlca                                          ; $4d8d: $07
    adc a                                         ; $4d8e: $8f
    inc b                                         ; $4d8f: $04
    rst $38                                       ; $4d90: $ff
    adc d                                         ; $4d91: $8a
    adc l                                         ; $4d92: $8d
    rst $18                                       ; $4d93: $df
    adc b                                         ; $4d94: $88
    ld d, b                                       ; $4d95: $50
    rst $18                                       ; $4d96: $df
    jr nz, @+$01                                  ; $4d97: $20 $ff

    rst $38                                       ; $4d99: $ff
    ld l, h                                       ; $4d9a: $6c
    sbc b                                         ; $4d9b: $98
    ld d, [hl]                                    ; $4d9c: $56
    xor [hl]                                      ; $4d9d: $ae
    ld [hl], $cc                                  ; $4d9e: $36 $cc
    inc l                                         ; $4da0: $2c
    ret c                                         ; $4da1: $d8

jr_009_4da2:
    rst $38                                       ; $4da2: $ff
    add hl, sp                                    ; $4da3: $39
    ldh a, [$c3]                                  ; $4da4: $f0 $c3
    ld b, c                                       ; $4da6: $41
    ld b, d                                       ; $4da7: $42
    jp $ff3c                                      ; $4da8: $c3 $3c $ff


    rst $38                                       ; $4dab: $ff
    jr nc, jr_009_4dcd                            ; $4dac: $30 $1f

    ld sp, $6b1e                                  ; $4dae: $31 $1e $6b
    inc [hl]                                      ; $4db1: $34
    adc $7f                                       ; $4db2: $ce $7f
    rst $38                                       ; $4db4: $ff
    cp e                                          ; $4db5: $bb
    pop de                                        ; $4db6: $d1
    ld [hl], c                                    ; $4db7: $71
    sub c                                         ; $4db8: $91
    ld a, e                                       ; $4db9: $7b
    sub c                                         ; $4dba: $91
    ld c, [hl]                                    ; $4dbb: $4e
    cp a                                          ; $4dbc: $bf
    rst $38                                       ; $4dbd: $ff
    add sp, $18                                   ; $4dbe: $e8 $18
    sbc c                                         ; $4dc0: $99
    ld [hl], b                                    ; $4dc1: $70
    pop af                                        ; $4dc2: $f1
    ld de, $f111                                  ; $4dc3: $11 $11 $f1
    rst $38                                       ; $4dc6: $ff
    pop af                                        ; $4dc7: $f1
    ld de, $11f9                                  ; $4dc8: $11 $f9 $11
    adc l                                         ; $4dcb: $8d
    ld a, c                                       ; $4dcc: $79

jr_009_4dcd:
    ld [hl], $cf                                  ; $4dcd: $36 $cf
    rst $38                                       ; $4dcf: $ff
    add sp, -$48                                  ; $4dd0: $e8 $b8
    ret z                                         ; $4dd2: $c8

    ld hl, sp-$64                                 ; $4dd3: $f8 $9c
    ld l, b                                       ; $4dd5: $68
    ld [hl], h                                    ; $4dd6: $74
    adc h                                         ; $4dd7: $8c
    rst $38                                       ; $4dd8: $ff
    add $3c                                       ; $4dd9: $c6 $3c
    ld a, [hl+]                                   ; $4ddb: $2a
    sub $c3                                       ; $4ddc: $d6 $c3
    ld a, $0d                                     ; $4dde: $3e $0d
    di                                            ; $4de0: $f3
    rst $38                                       ; $4de1: $ff
    and [hl]                                      ; $4de2: $a6
    ldh [$a6], a                                  ; $4de3: $e0 $a6
    add $c6                                       ; $4de5: $c6 $c6
    ld b, [hl]                                    ; $4de7: $46
    ld b, [hl]                                    ; $4de8: $46
    ld b, h                                       ; $4de9: $44
    rst $38                                       ; $4dea: $ff
    ld h, b                                       ; $4deb: $60
    ld b, b                                       ; $4dec: $40
    ld [hl], c                                    ; $4ded: $71
    ld h, b                                       ; $4dee: $60
    ld e, e                                       ; $4def: $5b
    ld [hl], e                                    ; $4df0: $73
    adc h                                         ; $4df1: $8c
    rst $38                                       ; $4df2: $ff
    rst $38                                       ; $4df3: $ff
    ld a, b                                       ; $4df4: $78
    jr nc, jr_009_4e28                            ; $4df5: $30 $31

    jr nz, jr_009_4e1a                            ; $4df7: $20 $21

    ld hl, $2071                                  ; $4df9: $21 $71 $20
    rst $38                                       ; $4dfc: $ff
    ld e, b                                       ; $4dfd: $58
    ld [hl], b                                    ; $4dfe: $70
    adc h                                         ; $4dff: $8c
    ld hl, sp+$47                                 ; $4e00: $f8 $47
    cp a                                          ; $4e02: $bf
    ld b, b                                       ; $4e03: $40
    cp a                                          ; $4e04: $bf
    rst $38                                       ; $4e05: $ff
    inc e                                         ; $4e06: $1c
    jr jr_009_4e21                                ; $4e07: $18 $18

    db $10                                        ; $4e09: $10
    sub b                                         ; $4e0a: $90
    db $10                                        ; $4e0b: $10
    sbc b                                         ; $4e0c: $98
    sub b                                         ; $4e0d: $90
    rst $38                                       ; $4e0e: $ff
    jr jr_009_4e29                                ; $4e0f: $18 $18

    inc e                                         ; $4e11: $1c
    jr jr_009_4e2b                                ; $4e12: $18 $17

    ld e, $e1                                     ; $4e14: $1e $e1
    rst $38                                       ; $4e16: $ff
    rst $38                                       ; $4e17: $ff
    sbc [hl]                                      ; $4e18: $9e
    adc c                                         ; $4e19: $89

jr_009_4e1a:
    inc sp                                        ; $4e1a: $33
    inc e                                         ; $4e1b: $1c
    db $ec                                        ; $4e1c: $ec
    ld [hl], e                                    ; $4e1d: $73
    add $f9                                       ; $4e1e: $c6 $f9
    rst $38                                       ; $4e20: $ff

jr_009_4e21:
    ld l, e                                       ; $4e21: $6b
    inc [hl]                                      ; $4e22: $34
    inc a                                         ; $4e23: $3c
    inc de                                        ; $4e24: $13
    rla                                           ; $4e25: $17
    jr @-$1e                                      ; $4e26: $18 $e0

jr_009_4e28:
    rst $38                                       ; $4e28: $ff

jr_009_4e29:
    rst $38                                       ; $4e29: $ff
    ld a, a                                       ; $4e2a: $7f

jr_009_4e2b:
    add b                                         ; $4e2b: $80
    adc h                                         ; $4e2c: $8c
    ld [hl], e                                    ; $4e2d: $73
    di                                            ; $4e2e: $f3
    inc c                                         ; $4e2f: $0c
    ld e, $e1                                     ; $4e30: $1e $e1
    rst $38                                       ; $4e32: $ff
    pop hl                                        ; $4e33: $e1
    ld e, $7f                                     ; $4e34: $1e $7f
    add b                                         ; $4e36: $80
    sbc h                                         ; $4e37: $9c
    ld h, e                                       ; $4e38: $63
    nop                                           ; $4e39: $00
    rst $38                                       ; $4e3a: $ff
    nop                                           ; $4e3b: $00

Jump_009_4e3c:
    nop                                           ; $4e3c: $00
    nop                                           ; $4e3d: $00
    rst $38                                       ; $4e3e: $ff
    rst $38                                       ; $4e3f: $ff
    nop                                           ; $4e40: $00
    ldh [$1f], a                                  ; $4e41: $e0 $1f
    rra                                           ; $4e43: $1f
    ldh [$f0], a                                  ; $4e44: $e0 $f0
    rrca                                          ; $4e46: $0f
    rst $38                                       ; $4e47: $ff
    adc a                                         ; $4e48: $8f
    ld [hl], b                                    ; $4e49: $70
    ld [hl], b                                    ; $4e4a: $70
    adc a                                         ; $4e4b: $8f
    rst $18                                       ; $4e4c: $df
    jr nz, jr_009_4e80                            ; $4e4d: $20 $31

    adc $ff                                       ; $4e4f: $ce $ff
    rst $38                                       ; $4e51: $ff
    nop                                           ; $4e52: $00
    add hl, sp                                    ; $4e53: $39
    add $c7                                       ; $4e54: $c6 $c7
    jr c, jr_009_4ed0                             ; $4e56: $38 $78

    add a                                         ; $4e58: $87
    rst $38                                       ; $4e59: $ff
    adc a                                         ; $4e5a: $8f
    ld [hl], b                                    ; $4e5b: $70
    ldh a, [rIF]                                  ; $4e5c: $f0 $0f
    rra                                           ; $4e5e: $1f
    ldh [$e1], a                                  ; $4e5f: $e0 $e1
    ld e, $ff                                     ; $4e61: $1e $ff
    ld hl, sp+$07                                 ; $4e63: $f8 $07
    add hl, sp                                    ; $4e65: $39
    add $82                                       ; $4e66: $c6 $82
    ld a, l                                       ; $4e68: $7d
    ld [hl], c                                    ; $4e69: $71
    adc a                                         ; $4e6a: $8f
    rst $38                                       ; $4e6b: $ff
    add e                                         ; $4e6c: $83
    ld a, [hl]                                    ; $4e6d: $7e
    ld a, [c]                                     ; $4e6e: $f2
    ld c, $03                                     ; $4e6f: $0e $03
    cp $f1                                        ; $4e71: $fe $f1
    rrca                                          ; $4e73: $0f
    rst $38                                       ; $4e74: $ff
    cp e                                          ; $4e75: $bb
    ld a, h                                       ; $4e76: $7c
    ld b, a                                       ; $4e77: $47
    call nz, $87cc                                ; $4e78: $c4 $cc $87

jr_009_4e7b:
    sbc e                                         ; $4e7b: $9b
    inc c                                         ; $4e7c: $0c
    rst $38                                       ; $4e7d: $ff
    jr nc, jr_009_4e9f                            ; $4e7e: $30 $1f

jr_009_4e80:
    inc sp                                        ; $4e80: $33
    dec a                                         ; $4e81: $3d
    rra                                           ; $4e82: $1f
    rrca                                          ; $4e83: $0f
    add [hl]                                      ; $4e84: $86
    inc bc                                        ; $4e85: $03
    rst $38                                       ; $4e86: $ff
    ld a, d                                       ; $4e87: $7a
    add l                                         ; $4e88: $85
    ld a, [hl-]                                   ; $4e89: $3a
    push bc                                       ; $4e8a: $c5
    ld a, [de]                                    ; $4e8b: $1a
    db $fd                                        ; $4e8c: $fd
    and $25                                       ; $4e8d: $e6 $25
    rst $30                                       ; $4e8f: $f7
    and $e7                                       ; $4e90: $e6 $e7
    ld bc, $e0ff                                  ; $4e92: $01 $ff $e0
    and $e7                                       ; $4e95: $e6 $e7
    swap h                                        ; $4e97: $cb $34
    rst $38                                       ; $4e99: $ff
    add e                                         ; $4e9a: $83
    ld a, h                                       ; $4e9b: $7c
    sub e                                         ; $4e9c: $93
    ld l, h                                       ; $4e9d: $6c
    sub [hl]                                      ; $4e9e: $96

jr_009_4e9f:
    ld l, a                                       ; $4e9f: $6f
    ld e, a                                       ; $4ea0: $5f
    cp c                                          ; $4ea1: $b9
    rst $38                                       ; $4ea2: $ff
    ld sp, $60e0                                  ; $4ea3: $31 $e0 $60
    ret nz                                        ; $4ea6: $c0

    ret nz                                        ; $4ea7: $c0

    add b                                         ; $4ea8: $80
    db $d3                                        ; $4ea9: $d3
    inc l                                         ; $4eaa: $2c
    rst $38                                       ; $4eab: $ff
    ret nz                                        ; $4eac: $c0

    ccf                                           ; $4ead: $3f
    ld b, $ff                                     ; $4eae: $06 $ff
    add hl, bc                                    ; $4eb0: $09
    ld sp, hl                                     ; $4eb1: $f9
    add hl, sp                                    ; $4eb2: $39
    ld sp, hl                                     ; $4eb3: $f9
    db $fd                                        ; $4eb4: $fd
    ret nz                                        ; $4eb5: $c0

    rst $38                                       ; $4eb6: $ff
    ldh [$b9], a                                  ; $4eb7: $e0 $b9
    ld sp, hl                                     ; $4eb9: $f9
    ld e, [hl]                                    ; $4eba: $5e
    and c                                         ; $4ebb: $a1
    ld e, b                                       ; $4ebc: $58
    and a                                         ; $4ebd: $a7
    rst $38                                       ; $4ebe: $ff
    ld d, c                                       ; $4ebf: $51
    xor [hl]                                      ; $4ec0: $ae
    ld e, e                                       ; $4ec1: $5b
    and h                                         ; $4ec2: $a4
    sbc b                                         ; $4ec3: $98
    rst $20                                       ; $4ec4: $e7
    ld a, b                                       ; $4ec5: $78
    ld a, a                                       ; $4ec6: $7f
    rst $38                                       ; $4ec7: $ff
    ld c, h                                       ; $4ec8: $4c
    ld b, a                                       ; $4ec9: $47
    add l                                         ; $4eca: $85
    rst $00                                       ; $4ecb: $c7
    rst $20                                       ; $4ecc: $e7
    jr jr_009_4e7b                                ; $4ecd: $18 $ac

    ld d, e                                       ; $4ecf: $53

jr_009_4ed0:
    rst $38                                       ; $4ed0: $ff
    adc a                                         ; $4ed1: $8f
    ld [hl], b                                    ; $4ed2: $70
    ld l, c                                       ; $4ed3: $69
    sub a                                         ; $4ed4: $97
    adc e                                         ; $4ed5: $8b
    halt                                          ; $4ed6: $76
    add $3c                                       ; $4ed7: $c6 $3c
    rst $38                                       ; $4ed9: $ff
    db $ec                                        ; $4eda: $ec
    ld hl, sp-$67                                 ; $4edb: $f8 $99
    db $10                                        ; $4edd: $10
    rra                                           ; $4ede: $1f
    ldh [$9b], a                                  ; $4edf: $e0 $9b
    ld h, h                                       ; $4ee1: $64
    rst $38                                       ; $4ee2: $ff
    call z, $8f33                                 ; $4ee3: $cc $33 $8f
    ldh a, [rOBP0]                                ; $4ee6: $f0 $48
    ld [hl], a                                    ; $4ee8: $77
    ld c, a                                       ; $4ee9: $4f
    ld [hl], b                                    ; $4eea: $70
    rst $38                                       ; $4eeb: $ff
    ld c, c                                       ; $4eec: $49
    halt                                          ; $4eed: $76
    adc [hl]                                      ; $4eee: $8e
    pop af                                        ; $4eef: $f1
    rst $38                                       ; $4ef0: $ff
    nop                                           ; $4ef1: $00
    cp a                                          ; $4ef2: $bf
    ld b, b                                       ; $4ef3: $40
    rst $28                                       ; $4ef4: $ef
    ld [hl], b                                    ; $4ef5: $70
    adc a                                         ; $4ef6: $8f
    rst $08                                       ; $4ef7: $cf
    jr nc, jr_009_4f68                            ; $4ef8: $30 $6e

    pop hl                                        ; $4efa: $e1
    di                                            ; $4efb: $f3
    inc c                                         ; $4efc: $0c
    ld l, [hl]                                    ; $4efd: $6e
    rst $38                                       ; $4efe: $ff
    sub c                                         ; $4eff: $91
    rst $38                                       ; $4f00: $ff
    nop                                           ; $4f01: $00
    pop bc                                        ; $4f02: $c1
    ld a, $7f                                     ; $4f03: $3e $7f
    add b                                         ; $4f05: $80
    add b                                         ; $4f06: $80
    rst $38                                       ; $4f07: $ff
    ld a, a                                       ; $4f08: $7f
    ld a, a                                       ; $4f09: $7f
    add b                                         ; $4f0a: $80
    ret nz                                        ; $4f0b: $c0

    ccf                                           ; $4f0c: $3f
    ccf                                           ; $4f0d: $3f
    ret nz                                        ; $4f0e: $c0

    ldh [rSB], a                                  ; $4f0f: $e0 $01
    rra                                           ; $4f11: $1f
    nop                                           ; $4f12: $00
    nop                                           ; $4f13: $00
    nop                                           ; $4f14: $00
    rst $38                                       ; $4f15: $ff
    rst $28                                       ; $4f16: $ef
    db $10                                        ; $4f17: $10
    sbc d                                         ; $4f18: $9a
    ld h, l                                       ; $4f19: $65
    halt                                          ; $4f1a: $76
    adc c                                         ; $4f1b: $89
    call $ff32                                    ; $4f1c: $cd $32 $ff
    dec sp                                        ; $4f1f: $3b
    call nz, Call_000_09f6                        ; $4f20: $c4 $f6 $09
    add hl, de                                    ; $4f23: $19
    and $00                                       ; $4f24: $e6 $00
    rst $38                                       ; $4f26: $ff
    rst $38                                       ; $4f27: $ff
    ld a, $c1                                     ; $4f28: $3e $c1
    jp $fc3c                                      ; $4f2a: $c3 $3c $fc


    inc bc                                        ; $4f2d: $03

jr_009_4f2e:
    sbc e                                         ; $4f2e: $9b
    ld h, h                                       ; $4f2f: $64
    rst $38                                       ; $4f30: $ff
    ld l, h                                       ; $4f31: $6c
    sub e                                         ; $4f32: $93
    rst $00                                       ; $4f33: $c7
    jr c, jr_009_4f2e                             ; $4f34: $38 $f8

    rlca                                          ; $4f36: $07
    nop                                           ; $4f37: $00
    rst $38                                       ; $4f38: $ff
    rst $38                                       ; $4f39: $ff
    ld h, d                                       ; $4f3a: $62
    sbc l                                         ; $4f3b: $9d
    sbc b                                         ; $4f3c: $98
    ld h, a                                       ; $4f3d: $67
    ld [hl], c                                    ; $4f3e: $71
    adc [hl]                                      ; $4f3f: $8e
    adc h                                         ; $4f40: $8c
    ld [hl], e                                    ; $4f41: $73
    rst $38                                       ; $4f42: $ff
    ld a, e                                       ; $4f43: $7b
    add a                                         ; $4f44: $87
    call nz, Call_000_3c3c                        ; $4f45: $c4 $3c $3c
    call nz, $ff03                                ; $4f48: $c4 $03 $ff
    rst $38                                       ; $4f4b: $ff
    jp Jump_009_6381                              ; $4f4c: $c3 $81 $63


    pop hl                                        ; $4f4f: $e1
    and $43                                       ; $4f50: $e6 $43
    call $ff86                                    ; $4f52: $cd $86 $ff
    sbc d                                         ; $4f55: $9a
    dec c                                         ; $4f56: $0d
    ld [hl-], a                                   ; $4f57: $32
    dec e                                         ; $4f58: $1d
    inc hl                                        ; $4f59: $23
    inc a                                         ; $4f5a: $3c
    jp nz, $fffd                                  ; $4f5b: $c2 $fd $ff

    ld h, a                                       ; $4f5e: $67
    and l                                         ; $4f5f: $a5
    push hl                                       ; $4f60: $e5
    daa                                           ; $4f61: $27
    ld h, a                                       ; $4f62: $67
    and e                                         ; $4f63: $a3
    and e                                         ; $4f64: $a3
    ld h, e                                       ; $4f65: $63
    rst $38                                       ; $4f66: $ff
    di                                            ; $4f67: $f3

jr_009_4f68:
    ld hl, $31d1                                  ; $4f68: $21 $d1 $31
    add hl, sp                                    ; $4f6b: $39
    pop de                                        ; $4f6c: $d1
    ld c, $ff                                     ; $4f6d: $0e $ff
    rst $38                                       ; $4f6f: $ff
    sbc b                                         ; $4f70: $98
    ld [$1818], sp                                ; $4f71: $08 $18 $18
    jr jr_009_4f7e                                ; $4f74: $18 $08

    nop                                           ; $4f76: $00
    nop                                           ; $4f77: $00
    rst $38                                       ; $4f78: $ff
    ret nz                                        ; $4f79: $c0

    add b                                         ; $4f7a: $80

jr_009_4f7b:
    ld [hl], b                                    ; $4f7b: $70
    ldh [rNR34], a                                ; $4f7c: $e0 $1e

jr_009_4f7e:
    db $fc                                        ; $4f7e: $fc
    inc bc                                        ; $4f7f: $03
    rst $38                                       ; $4f80: $ff
    rst $38                                       ; $4f81: $ff
    jp hl                                         ; $4f82: $e9


    sbc c                                         ; $4f83: $99
    sbc c                                         ; $4f84: $99
    jp hl                                         ; $4f85: $e9


    ld sp, hl                                     ; $4f86: $f9
    adc b                                         ; $4f87: $88
    adc b                                         ; $4f88: $88
    ld hl, sp-$01                                 ; $4f89: $f8 $ff
    ld a, h                                       ; $4f8b: $7c
    ld c, b                                       ; $4f8c: $48
    ld [hl], h                                    ; $4f8d: $74
    ld c, h                                       ; $4f8e: $4c
    ld b, [hl]                                    ; $4f8f: $46
    ld a, h                                       ; $4f90: $7c
    add e                                         ; $4f91: $83
    rst $38                                       ; $4f92: $ff
    rst $38                                       ; $4f93: $ff
    ld b, a                                       ; $4f94: $47
    push bc                                       ; $4f95: $c5
    ld h, a                                       ; $4f96: $67
    push bc                                       ; $4f97: $c5
    and a                                         ; $4f98: $a7
    ld [c], a                                     ; $4f99: $e2
    or d                                          ; $4f9a: $b2
    ld [c], a                                     ; $4f9b: $e2
    rst $38                                       ; $4f9c: $ff
    ret nc                                        ; $4f9d: $d0

    ld [hl], b                                    ; $4f9e: $70
    ld e, b                                       ; $4f9f: $58
    ld [hl], b                                    ; $4fa0: $70
    ld c, l                                       ; $4fa1: $4d
    ld a, b                                       ; $4fa2: $78
    or a                                          ; $4fa3: $b7
    rst $08                                       ; $4fa4: $cf
    rst $38                                       ; $4fa5: $ff
    inc de                                        ; $4fa6: $13
    ld de, $1038                                  ; $4fa7: $11 $38 $10
    inc l                                         ; $4faa: $2c
    jr c, jr_009_4fd1                             ; $4fab: $38 $24

    inc a                                         ; $4fad: $3c
    rst $38                                       ; $4fae: $ff
    ld l, h                                       ; $4faf: $6c
    jr c, jr_009_4f7b                             ; $4fb0: $38 $c9

    ld a, b                                       ; $4fb2: $78
    adc e                                         ; $4fb3: $8b
    ld sp, hl                                     ; $4fb4: $f9
    rlca                                          ; $4fb5: $07
    cp $ff                                        ; $4fb6: $fe $ff
    res 6, h                                      ; $4fb8: $cb $b4
    call c, $5763                                 ; $4fba: $dc $63 $57
    ld l, b                                       ; $4fbd: $68
    ld a, c                                       ; $4fbe: $79
    ld b, [hl]                                    ; $4fbf: $46
    rst $38                                       ; $4fc0: $ff
    xor $51                                       ; $4fc1: $ee $51
    or [hl]                                       ; $4fc3: $b6
    ret                                           ; $4fc4: $c9


    ld e, c                                       ; $4fc5: $59
    and [hl]                                      ; $4fc6: $a6
    add b                                         ; $4fc7: $80
    ld a, a                                       ; $4fc8: $7f
    rst $38                                       ; $4fc9: $ff
    or e                                          ; $4fca: $b3
    ld c, h                                       ; $4fcb: $4c

jr_009_4fcc:
    call c, Call_009_6723                         ; $4fcc: $dc $23 $67
    sbc b                                         ; $4fcf: $98
    cp b                                          ; $4fd0: $b8

jr_009_4fd1:
    ld b, a                                       ; $4fd1: $47
    rst $38                                       ; $4fd2: $ff
    rst $08                                       ; $4fd3: $cf
    jr nc, jr_009_4fcc                            ; $4fd4: $30 $f6

    add hl, bc                                    ; $4fd6: $09
    add hl, sp                                    ; $4fd7: $39
    add $00                                       ; $4fd8: $c6 $00
    rst $38                                       ; $4fda: $ff
    rst $38                                       ; $4fdb: $ff
    sbc a                                         ; $4fdc: $9f
    ld h, b                                       ; $4fdd: $60
    ld [hl], b                                    ; $4fde: $70
    adc a                                         ; $4fdf: $8f
    rst $08                                       ; $4fe0: $cf
    jr nc, jr_009_5014                            ; $4fe1: $30 $31

    adc $ff                                       ; $4fe3: $ce $ff
    cp $01                                        ; $4fe5: $fe $01
    inc bc                                        ; $4fe7: $03
    db $fc                                        ; $4fe8: $fc
    db $fc                                        ; $4fe9: $fc
    inc bc                                        ; $4fea: $03
    nop                                           ; $4feb: $00
    rst $38                                       ; $4fec: $ff
    nop                                           ; $4fed: $00
    nop                                           ; $4fee: $00
    nop                                           ; $4fef: $00
    rst $38                                       ; $4ff0: $ff
    rst $38                                       ; $4ff1: $ff
    nop                                           ; $4ff2: $00
    dec sp                                        ; $4ff3: $3b
    call nz, Call_000_38c7                        ; $4ff4: $c4 $c7 $38
    ld a, b                                       ; $4ff7: $78
    add a                                         ; $4ff8: $87
    rst $38                                       ; $4ff9: $ff
    adc a                                         ; $4ffa: $8f
    ld [hl], b                                    ; $4ffb: $70
    ld hl, sp+$07                                 ; $4ffc: $f8 $07
    rlca                                          ; $4ffe: $07
    ld hl, sp-$04                                 ; $4fff: $f8 $fc
    inc bc                                        ; $5001: $03
    rst $28                                       ; $5002: $ef
    rst $38                                       ; $5003: $ff
    nop                                           ; $5004: $00
    inc a                                         ; $5005: $3c
    jp $e3f0                                      ; $5006: $c3 $f0 $e3


    di                                            ; $5009: $f3
    inc c                                         ; $500a: $0c
    inc e                                         ; $500b: $1c
    rst $38                                       ; $500c: $ff
    db $e3                                        ; $500d: $e3
    rst $20                                       ; $500e: $e7

jr_009_500f:
    jr jr_009_500f                                ; $500f: $18 $fe

    ld bc, $1fe1                                  ; $5011: $01 $e1 $1f

jr_009_5014:
    sbc e                                         ; $5014: $9b
    rst $38                                       ; $5015: $ff
    ld h, [hl]                                    ; $5016: $66
    ld h, [hl]                                    ; $5017: $66
    sbc h                                         ; $5018: $9c
    call z, $b838                                 ; $5019: $cc $38 $b8
    ld d, b                                       ; $501c: $50
    ld [hl], c                                    ; $501d: $71
    rst $38                                       ; $501e: $ff
    sub b                                         ; $501f: $90
    pop de                                        ; $5020: $d1
    ld sp, $fef9                                  ; $5021: $31 $f9 $fe
    adc l                                         ; $5024: $8d
    ld b, $06                                     ; $5025: $06 $06
    rst $38                                       ; $5027: $ff
    inc bc                                        ; $5028: $03
    inc bc                                        ; $5029: $03
    ld bc, $2071                                  ; $502a: $01 $71 $20
    ret c                                         ; $502d: $d8

    ld [hl], b                                    ; $502e: $70
    adc h                                         ; $502f: $8c
    rst $38                                       ; $5030: $ff
    ld hl, sp+$34                                 ; $5031: $f8 $34
    call z, Call_000_00ff                         ; $5033: $cc $ff $00
    cp l                                          ; $5036: $bd
    ld a, [hl]                                    ; $5037: $7e
    ld b, l                                       ; $5038: $45
    rst $38                                       ; $5039: $ff
    jp nz, $c343                                  ; $503a: $c2 $43 $c3

    add c                                         ; $503d: $81
    ret nz                                        ; $503e: $c0

    ret nz                                        ; $503f: $c0

    ld b, b                                       ; $5040: $40
    ld b, h                                       ; $5041: $44
    rst $38                                       ; $5042: $ff
    ld b, h                                       ; $5043: $44
    ld h, h                                       ; $5044: $64
    ld b, h                                       ; $5045: $44
    add b                                         ; $5046: $80
    ld a, a                                       ; $5047: $7f
    pop bc                                        ; $5048: $c1
    ld a, $96                                     ; $5049: $3e $96
    cp a                                          ; $504b: $bf
    ld l, a                                       ; $504c: $6f
    ld c, c                                       ; $504d: $49
    cp c                                          ; $504e: $b9
    cp c                                          ; $504f: $b9
    ld sp, hl                                     ; $5050: $f9
    add b                                         ; $5051: $80
    xor $e0                                       ; $5052: $ee $e0
    ld sp, hl                                     ; $5054: $f9
    rst $38                                       ; $5055: $ff
    ld a, c                                       ; $5056: $79
    ld bc, $83fe                                  ; $5057: $01 $fe $83
    ld a, h                                       ; $505a: $7c
    dec sp                                        ; $505b: $3b
    call nz, $ffb2                                ; $505c: $c4 $b2 $ff
    ld a, l                                       ; $505f: $7d
    db $db                                        ; $5060: $db
    call z, $4b4d                                 ; $5061: $cc $4d $4b
    ld c, e                                       ; $5064: $4b
    ld c, [hl]                                    ; $5065: $4e
    adc $fc                                       ; $5066: $ce $fc
    ret nc                                        ; $5068: $d0

    ldh [$a0], a                                  ; $5069: $e0 $a0
    db $e3                                        ; $506b: $e3
    ld l, [hl]                                    ; $506c: $6e
    pop af                                        ; $506d: $f1
    di                                            ; $506e: $f3
    sbc a                                         ; $506f: $9f
    inc e                                         ; $5070: $1c
    inc c                                         ; $5071: $0c
    rst $38                                       ; $5072: $ff
    ld [$9f0c], sp                                ; $5073: $08 $0c $9f
    ld h, b                                       ; $5076: $60
    sub c                                         ; $5077: $91
    ld l, [hl]                                    ; $5078: $6e
    ccf                                           ; $5079: $3f
    ret nz                                        ; $507a: $c0

    rst $38                                       ; $507b: $ff
    jr nz, @-$1f                                  ; $507c: $20 $df

    ld a, [hl]                                    ; $507e: $7e
    add c                                         ; $507f: $81
    or c                                          ; $5080: $b1
    rst $08                                       ; $5081: $cf
    di                                            ; $5082: $f3
    ld a, [hl]                                    ; $5083: $7e
    rst $38                                       ; $5084: $ff
    ld a, [de]                                    ; $5085: $1a
    inc c                                         ; $5086: $0c
    rst $38                                       ; $5087: $ff
    nop                                           ; $5088: $00
    di                                            ; $5089: $f3
    inc c                                         ; $508a: $0c
    rrca                                          ; $508b: $0f
    ldh a, [rIE]                                  ; $508c: $f0 $ff
    ld l, b                                       ; $508e: $68
    rst $30                                       ; $508f: $f7
    rst $10                                       ; $5090: $d7
    sbc b                                         ; $5091: $98
    sbc h                                         ; $5092: $9c
    inc de                                        ; $5093: $13
    inc de                                        ; $5094: $13
    inc e                                         ; $5095: $1c
    rst $38                                       ; $5096: $ff
    ld l, [hl]                                    ; $5097: $6e
    ld sp, $00ff                                  ; $5098: $31 $ff $00
    db $fd                                        ; $509b: $fd
    ld [bc], a                                    ; $509c: $02
    inc bc                                        ; $509d: $03
    db $fc                                        ; $509e: $fc
    rst $38                                       ; $509f: $ff
    cp $01                                        ; $50a0: $fe $01
    ld bc, $fffe                                  ; $50a2: $01 $fe $ff
    nop                                           ; $50a5: $00
    add b                                         ; $50a6: $80
    ld a, a                                       ; $50a7: $7f
    rst $38                                       ; $50a8: $ff
    ld a, a                                       ; $50a9: $7f
    add b                                         ; $50aa: $80
    rst $38                                       ; $50ab: $ff
    nop                                           ; $50ac: $00
    add $39                                       ; $50ad: $c6 $39
    cp a                                          ; $50af: $bf
    ld b, b                                       ; $50b0: $40
    rst $38                                       ; $50b1: $ff
    ld h, b                                       ; $50b2: $60
    sbc a                                         ; $50b3: $9f
    sbc a                                         ; $50b4: $9f
    ld h, b                                       ; $50b5: $60
    ld [hl], b                                    ; $50b6: $70
    adc a                                         ; $50b7: $8f
    rst $08                                       ; $50b8: $cf
    jr nc, jr_009_50be                            ; $50b9: $30 $03

    cp d                                          ; $50bb: $ba
    ld b, l                                       ; $50bc: $45
    nop                                           ; $50bd: $00

jr_009_50be:
    nop                                           ; $50be: $00
    nop                                           ; $50bf: $00
    rst $38                                       ; $50c0: $ff
    sub e                                         ; $50c1: $93
    ld l, h                                       ; $50c2: $6c
    xor $11                                       ; $50c3: $ee $11
    xor c                                         ; $50c5: $a9
    ld d, [hl]                                    ; $50c6: $56
    ld d, [hl]                                    ; $50c7: $56
    xor c                                         ; $50c8: $a9
    rst $38                                       ; $50c9: $ff
    pop de                                        ; $50ca: $d1
    ld l, $26                                     ; $50cb: $2e $26
    reti                                          ; $50cd: $d9


    rst $18                                       ; $50ce: $df
    jr nz, jr_009_50d1                            ; $50cf: $20 $00

jr_009_50d1:
    rst $38                                       ; $50d1: $ff
    rst $38                                       ; $50d2: $ff
    sbc b                                         ; $50d3: $98
    ld h, a                                       ; $50d4: $67
    ld a, a                                       ; $50d5: $7f
    add b                                         ; $50d6: $80
    call nz, Call_000_3f3b                        ; $50d7: $c4 $3b $3f
    ret nz                                        ; $50da: $c0

    rst $38                                       ; $50db: $ff
    jp $7d3c                                      ; $50dc: $c3 $3c $7d


    add d                                         ; $50df: $82
    add [hl]                                      ; $50e0: $86
    ld a, c                                       ; $50e1: $79
    nop                                           ; $50e2: $00
    rst $38                                       ; $50e3: $ff
    rst $38                                       ; $50e4: $ff
    ld sp, $d1d1                                  ; $50e5: $31 $d1 $d1
    ld sp, $d031                                  ; $50e8: $31 $31 $d0
    ld hl, sp+$10                                 ; $50eb: $f8 $10
    rst $38                                       ; $50ed: $ff
    inc l                                         ; $50ee: $2c
    ret c                                         ; $50ef: $d8

    add $3c                                       ; $50f0: $c6 $3c
    ld a, e                                       ; $50f2: $7b
    add [hl]                                      ; $50f3: $86
    ld bc, $ffff                                  ; $50f4: $01 $ff $ff
    db $e4                                        ; $50f7: $e4
    inc e                                         ; $50f8: $1c
    inc c                                         ; $50f9: $0c
    ld hl, sp-$68                                 ; $50fa: $f8 $98
    ldh a, [$e1]                                  ; $50fc: $f0 $e1
    ld h, b                                       ; $50fe: $60
    rst $38                                       ; $50ff: $ff
    inc bc                                        ; $5100: $03
    ld bc, $0306                                  ; $5101: $01 $06 $03
    inc e                                         ; $5104: $1c
    rrca                                          ; $5105: $0f
    ldh a, [rIE]                                  ; $5106: $f0 $ff
    rst $38                                       ; $5108: $ff
    ld h, c                                       ; $5109: $61
    ld h, b                                       ; $510a: $60
    ld h, e                                       ; $510b: $63
    ld h, c                                       ; $510c: $61
    ld [c], a                                     ; $510d: $e2
    ld h, e                                       ; $510e: $63
    and h                                         ; $510f: $a4
    db $e3                                        ; $5110: $e3
    rst $38                                       ; $5111: $ff
    ld h, a                                       ; $5112: $67
    and h                                         ; $5113: $a4
    and h                                         ; $5114: $a4
    ld h, a                                       ; $5115: $67
    ld h, a                                       ; $5116: $67
    and h                                         ; $5117: $a4
    jr @+$01                                      ; $5118: $18 $ff

    rst $38                                       ; $511a: $ff
    sbc c                                         ; $511b: $99
    jp hl                                         ; $511c: $e9


    ld e, c                                       ; $511d: $59
    xor c                                         ; $511e: $a9
    ld l, c                                       ; $511f: $69
    sbc b                                         ; $5120: $98
    ld [$fff8], sp                                ; $5121: $08 $f8 $ff
    adc h                                         ; $5124: $8c
    ld a, b                                       ; $5125: $78
    db $e4                                        ; $5126: $e4
    inc e                                         ; $5127: $1c
    ld l, [hl]                                    ; $5128: $6e
    sub h                                         ; $5129: $94
    inc bc                                        ; $512a: $03
    rst $38                                       ; $512b: $ff
    rst $28                                       ; $512c: $ef
    call z, $4c4c                                 ; $512d: $cc $4c $4c
    ret z                                         ; $5130: $c8

    rst $38                                       ; $5131: $ff
    pop hl                                        ; $5132: $e1
    call z, Call_009_6e48                         ; $5133: $cc $48 $6e
    rst $38                                       ; $5136: $ff
    ld c, h                                       ; $5137: $4c
    ld l, e                                       ; $5138: $6b
    ld l, [hl]                                    ; $5139: $6e
    sub c                                         ; $513a: $91

jr_009_513b:
    rst $38                                       ; $513b: $ff
    call z, $c404                                 ; $513c: $cc $04 $c4
    cp $ff                                        ; $513f: $fe $ff
    ldh [$cc], a                                  ; $5141: $e0 $cc
    add h                                         ; $5143: $84
    ld [$340c], sp                                ; $5144: $08 $0c $34
    inc e                                         ; $5147: $1c
    ld h, h                                       ; $5148: $64
    rst $38                                       ; $5149: $ff
    ld a, h                                       ; $514a: $7c
    add e                                         ; $514b: $83
    rst $38                                       ; $514c: $ff
    inc c                                         ; $514d: $0c
    inc b                                         ; $514e: $04
    ld b, $04                                     ; $514f: $06 $04
    ld h, a                                       ; $5151: $67
    rst $18                                       ; $5152: $df
    ld b, [hl]                                    ; $5153: $46
    ld h, l                                       ; $5154: $65
    ld h, a                                       ; $5155: $67
    ld h, a                                       ; $5156: $67
    ld h, [hl]                                    ; $5157: $66
    rst $38                                       ; $5158: $ff
    pop hl                                        ; $5159: $e1
    sbc c                                         ; $515a: $99
    rst $38                                       ; $515b: $ff
    rst $38                                       ; $515c: $ff
    pop hl                                        ; $515d: $e1
    ld a, [hl]                                    ; $515e: $7e
    ld a, $11                                     ; $515f: $3e $11
    ld de, $1f1e                                  ; $5161: $11 $1e $1f
    db $10                                        ; $5164: $10
    rst $38                                       ; $5165: $ff
    jr nc, @+$21                                  ; $5166: $30 $1f

jr_009_5168:
    ld l, a                                       ; $5168: $6f
    jr nc, jr_009_513b                            ; $5169: $30 $d0

    ld l, a                                       ; $516b: $6f
    add b                                         ; $516c: $80
    rst $38                                       ; $516d: $ff
    rst $38                                       ; $516e: $ff
    add c                                         ; $516f: $81
    ld a, [hl]                                    ; $5170: $7e
    ld a, [hl]                                    ; $5171: $7e
    add c                                         ; $5172: $81
    pop bc                                        ; $5173: $c1
    ld a, $3e                                     ; $5174: $3e $3e
    pop bc                                        ; $5176: $c1
    rst $38                                       ; $5177: $ff
    db $e3                                        ; $5178: $e3
    inc e                                         ; $5179: $1c
    sbc h                                         ; $517a: $9c
    ld h, e                                       ; $517b: $63
    ld [hl], a                                    ; $517c: $77
    adc b                                         ; $517d: $88
    nop                                           ; $517e: $00
    rst $38                                       ; $517f: $ff
    rst $38                                       ; $5180: $ff
    ld d, l                                       ; $5181: $55
    xor d                                         ; $5182: $aa
    ld d, [hl]                                    ; $5183: $56
    xor c                                         ; $5184: $a9
    jp hl                                         ; $5185: $e9


    ld d, $6f                                     ; $5186: $16 $6f
    sub b                                         ; $5188: $90
    rst $38                                       ; $5189: $ff
    or b                                          ; $518a: $b0
    ld c, a                                       ; $518b: $4f
    rst $18                                       ; $518c: $df
    jr nz, jr_009_51f0                            ; $518d: $20 $61

    sbc [hl]                                      ; $518f: $9e
    nop                                           ; $5190: $00
    rst $38                                       ; $5191: $ff
    nop                                           ; $5192: $00
    nop                                           ; $5193: $00
    nop                                           ; $5194: $00
    rst $38                                       ; $5195: $ff
    rst $38                                       ; $5196: $ff
    nop                                           ; $5197: $00
    sbc c                                         ; $5198: $99
    ld h, [hl]                                    ; $5199: $66
    halt                                          ; $519a: $76
    adc c                                         ; $519b: $89
    rst $08                                       ; $519c: $cf
    jr nc, @+$01                                  ; $519d: $30 $ff

    jr c, jr_009_5168                             ; $519f: $38 $c7

    rst $20                                       ; $51a1: $e7
    jr jr_009_51c0                                ; $51a2: $18 $1c

    db $e3                                        ; $51a4: $e3
    di                                            ; $51a5: $f3
    inc c                                         ; $51a6: $0c
    rst $38                                       ; $51a7: $ff
    rst $38                                       ; $51a8: $ff
    nop                                           ; $51a9: $00
    di                                            ; $51aa: $f3
    inc c                                         ; $51ab: $0c
    inc e                                         ; $51ac: $1c
    db $e3                                        ; $51ad: $e3
    and $19                                       ; $51ae: $e6 $19
    rst $38                                       ; $51b0: $ff
    dec sp                                        ; $51b1: $3b
    call nz, Call_000_33cc                        ; $51b2: $c4 $cc $33
    ld [hl], a                                    ; $51b5: $77
    adc b                                         ; $51b6: $88
    cp b                                          ; $51b7: $b8
    ld b, a                                       ; $51b8: $47
    rst $38                                       ; $51b9: $ff
    rst $38                                       ; $51ba: $ff
    nop                                           ; $51bb: $00
    adc h                                         ; $51bc: $8c
    ld [hl], e                                    ; $51bd: $73
    di                                            ; $51be: $f3
    inc c                                         ; $51bf: $0c

jr_009_51c0:
    ld e, $e1                                     ; $51c0: $1e $e1
    rst $38                                       ; $51c2: $ff
    pop hl                                        ; $51c3: $e1
    ld e, $7f                                     ; $51c4: $1e $7f
    add b                                         ; $51c6: $80
    sbc h                                         ; $51c7: $9c
    ld h, e                                       ; $51c8: $63
    db $e3                                        ; $51c9: $e3
    inc e                                         ; $51ca: $1c
    rst $38                                       ; $51cb: $ff
    rst $38                                       ; $51cc: $ff
    nop                                           ; $51cd: $00
    db $e3                                        ; $51ce: $e3
    inc e                                         ; $51cf: $1c
    sbc [hl]                                      ; $51d0: $9e
    ld h, c                                       ; $51d1: $61
    ld [hl], c                                    ; $51d2: $71
    adc [hl]                                      ; $51d3: $8e
    rst $38                                       ; $51d4: $ff
    rst $08                                       ; $51d5: $cf
    jr nc, jr_009_520a                            ; $51d6: $30 $32

    call Call_000_00ff                            ; $51d8: $cd $ff $00
    ret nz                                        ; $51db: $c0

    ccf                                           ; $51dc: $3f
    rst $38                                       ; $51dd: $ff
    rst $38                                       ; $51de: $ff
    nop                                           ; $51df: $00
    rst $38                                       ; $51e0: $ff
    nop                                           ; $51e1: $00
    ld bc, $fefe                                  ; $51e2: $01 $fe $fe
    ld bc, $03ff                                  ; $51e5: $01 $ff $03
    db $fc                                        ; $51e8: $fc
    db $fc                                        ; $51e9: $fc
    inc bc                                        ; $51ea: $03
    and a                                         ; $51eb: $a7
    ld e, b                                       ; $51ec: $58
    add hl, sp                                    ; $51ed: $39
    add $ff                                       ; $51ee: $c6 $ff

jr_009_51f0:
    rst $38                                       ; $51f0: $ff
    nop                                           ; $51f1: $00
    inc sp                                        ; $51f2: $33
    call z, $23dc                                 ; $51f3: $cc $dc $23
    ld h, e                                       ; $51f6: $63
    sbc h                                         ; $51f7: $9c
    rst $38                                       ; $51f8: $ff
    cp [hl]                                       ; $51f9: $be
    ld b, c                                       ; $51fa: $41
    rst $00                                       ; $51fb: $c7
    jr c, @+$7a                                   ; $51fc: $38 $78

    add a                                         ; $51fe: $87
    sbc a                                         ; $51ff: $9f
    ld h, b                                       ; $5200: $60
    nop                                           ; $5201: $00
    and b                                         ; $5202: $a0
    rst $38                                       ; $5203: $ff
    and b                                         ; $5204: $a0
    rst $38                                       ; $5205: $ff
    and b                                         ; $5206: $a0
    ld sp, hl                                     ; $5207: $f9
    nop                                           ; $5208: $00
    nop                                           ; $5209: $00

jr_009_520a:
    nop                                           ; $520a: $00

    db $ff, $0c, $f3, $fb, $04, $cc, $33, $37, $c8, $ff, $f0, $0f, $1f, $e0, $e1, $1e
    db $00, $ff, $ff, $c7, $38, $bf, $40, $70, $8f, $cf, $30, $ff, $78, $87, $8f, $70
    db $f3, $0c, $00, $ff, $ff, $3e, $c1, $c1, $3e, $7f, $80, $80, $7f, $ff, $7f, $80
    db $c0, $3f, $3f, $c0, $00, $ff, $ff, $3f, $c0, $e0, $1f, $1f, $e0, $f0, $0f, $ff
    db $8f, $70, $70, $8f, $df, $20, $00, $ff, $3f, $ce, $31, $39, $c6, $c7, $38, $d2
    db $e1, $be, $e1, $ff, $00, $ff, $e7, $18, $38, $c7, $8f, $70, $ff, $78, $87, $87
    db $78, $f8, $07, $07, $f8, $03, $00, $ff, $a0, $ff, $a0, $ff, $a0, $f9, $00, $00

    nop                                           ; $527b: $00

    db $ff, $ff, $00, $3c, $c3, $c7, $38, $f9, $06, $ff, $0e, $f1, $f6, $09, $19, $e6
    db $e7, $18, $ff, $ff, $00, $dc, $23, $67, $98, $b8, $47, $ff, $cf, $30, $f6, $09
    db $39, $c6, $cf, $30, $ff, $ff, $00, $70, $8f, $cf, $30, $30, $cf, $ff, $ff, $01
    db $01, $ff, $ff, $02, $8f, $72, $ff, $ff, $00, $9a, $65, $73, $ff, $cc, $8c, $fb
    db $8c, $0c, $ff, $e3, $ff, $00, $c3, $3c, $ec, $ff, $f3, $32, $1d, $18, $0f, $0d
    db $06, $e7, $ff, $c2, $a3, $e2, $ff, $00, $90, $6f, $0f, $ff, $ff, $10, $f0, $70
    db $90, $d0, $30, $33, $ff, $d3, $f3, $12, $ff, $00, $0c, $f3, $8d, $ff, $fe, $d6
    db $73, $62, $33, $32, $1b, $9b, $f7, $0a, $8a, $8b, $a0, $e3, $38, $c7, $0f, $f1
    db $bf, $9b, $7d, $7d, $e7, $c6, $83, $a0, $e1, $cd, $ff, $33, $f3, $ce, $66, $3c
    db $3c, $18, $99, $f7, $08, $c3, $81, $a0, $e1, $b6, $c9, $4d, $72, $ff, $7b, $44
    db $f6, $49, $99, $e6, $77, $88, $fe, $a0, $e1, $fc, $03, $9b, $64, $6c, $93, $c7
    db $ff, $38, $f8, $07, $0f, $f0, $ff, $00, $9e, $ff, $61, $71, $8e, $8f, $70, $78
    db $87, $c7, $1f, $38, $3c, $c3, $e3, $1c, $00, $00

    nop                                           ; $5346: $00

    db $ff, $1e, $e1, $f3, $0c, $0f, $f0, $f8, $07, $ff, $87, $78, $7c, $83, $c3, $3c
    db $00, $ff, $ff, $32, $cd, $fd, $02, $03, $fc, $fe, $01, $ff, $01, $fe, $ff, $00
    db $80, $7f, $00, $ff, $ff, $79, $87, $c6, $39, $bf, $40, $60, $9f, $ff, $9f, $60
    db $70, $8f, $cf, $30, $00, $ff, $f7, $8c, $0c, $8c, $ff, $e3, $88, $89, $88, $89
    db $ff, $89, $76, $ff, $e3, $c2, $06, $03, $1d, $ff, $0e, $f0, $ff, $8e, $f1, $f2
    db $8d, $1c, $ff, $e3, $00, $ff, $13, $f3, $b0, $50, $30, $ff, $d0, $53, $b3, $f2
    db $23, $a6, $63, $e5, $ff, $26, $18, $ff, $8b, $0b, $1b, $0a, $72, $ff, $3a, $d3
    db $f2, $13, $f3, $f2, $13, $d3, $ff, $32, $0c, $ff, $82, $03, $32, $33, $33, $ff
    db $12, $02, $03, $83, $01, $e1, $c1, $3d, $ff, $f9, $46, $bf, $66, $c3, $24, $e7
    db $27, $ff, $e4, $24, $e7, $a7, $64, $64, $a7, $e7, $ff, $24, $1a, $fd, $cc, $33
    db $3b, $c4, $c7, $ff, $38, $78, $87, $8f, $70, $f8, $07, $07, $7f, $f8, $00, $ff
    db $f3, $0c, $3c, $c3, $f0, $e3, $fb, $f3, $0c, $a0, $e1, $1e, $e1, $e1, $1e, $9f
    db $ff, $60, $60, $9f, $df, $20, $b0, $4f, $7f, $07, $80, $00, $ff, $00, $00

    nop                                           ; $5416: $00

    db $ff, $ff, $00, $9e, $61, $61, $9e, $df, $20, $ff, $20, $df, $df, $20, $30, $cf
    db $cf, $30, $ff, $ff, $00, $7e, $81, $c1, $3f, $3e, $c2, $ff, $e3, $1e, $9d, $63
    db $67, $99, $f0, $0f, $ff, $ff, $00, $56, $a9, $c8, $f7, $6f, $31, $ff, $21, $3f
    db $3f, $12, $92, $1e, $9e, $8c, $ff, $9f, $60, $be, $41, $e8, $f7, $95, $1b, $ff
    db $33, $1e, $26, $3c, $7c, $28, $5c, $68, $ff, $ff, $00, $7f, $80, $c4, $fb, $b0
    db $2f, $ff, $23, $3c, $6e, $31, $dc, $63, $68, $37, $ff, $60, $9f, $80, $7f, $1d
    db $e3, $f7, $0a, $ff, $ba, $46, $06, $fc, $04, $fc, $0c, $f8, $ff, $06, $f9, $00
    db $ff, $b8, $ff, $ef, $44, $ff, $44, $07, $04, $07, $06, $03, $92, $13, $ff, $ff
    db $00, $fe, $01, $01, $fe, $0e, $f1, $ff, $c3, $3c, $10, $ef, $2d, $de, $3e, $f3
    db $ff, $f9, $06, $55, $aa, $e9, $17, $6b, $96, $ff, $b6, $4c, $dc, $24, $64, $9c
    db $9c, $78, $ff, $ff, $00, $ee, $11, $29, $d6, $d6, $a9, $ff, $d1, $ae, $a6, $d9
    db $d6, $af, $df, $b9, $fe, $a0, $e2, $3b, $3f, $c0, $c3, $3c, $7d, $82, $ff, $86
    db $79, $79, $86, $ff, $00, $c7, $38, $ff, $38, $c7, $e7, $18, $3c, $c3, $c3, $3c
    db $02, $56, $e0, $3e, $00, $00

    nop                                           ; $54ed: $00

    db $ff, $3c, $c3, $e3, $1c, $9e, $61, $71, $8e, $ff, $cf, $30, $32, $cd, $ff, $00
    db $00, $ff, $ff, $0e, $f1, $ff, $00, $01, $fe, $fe, $01, $ff, $03, $fc, $fc, $03
    db $a7, $58, $00, $ff, $ff, $cc, $8c, $40, $c0, $e1, $40, $21, $e1, $ff, $b3, $61
    db $d2, $33, $7e, $93, $0c, $ff, $ff, $e6, $5c, $9b, $e6, $b5, $cb, $2b, $d6, $ff
    db $0e, $fc, $90, $70, $11, $f0, $0f, $ff, $ff, $30, $1f, $19, $0e, $9b, $0c, $32
    db $1d, $ff, $66, $3f, $c9, $79, $bd, $c9, $46, $bf, $ff, $e8, $18, $88, $78, $f9
    db $10, $11, $f1, $ff, $f1, $11, $f9, $11, $8d, $79, $36, $cf, $ff, $b2, $93, $eb
    db $b9, $d9, $e9, $79, $89, $ff, $cd, $38, $24, $dc, $c4, $3c, $0b, $f7, $ff, $61
    db $c1, $5d, $c8, $d4, $9c, $1d, $98, $ff, $c1, $81, $e6, $c3, $bc, $e7, $18, $ff
    db $ff, $30, $e0, $e0, $c0, $cc, $88, $cc, $84, $ff, $60, $c0, $30, $e0, $5c, $b8
    db $47, $bf, $ff, $b1, $e0, $ed, $cc, $cb, $81, $c6, $87, $ff, $c6, $c3, $e1, $c1
    db $b9, $f1, $0e, $ff, $ff, $8e, $f1, $f3, $8c, $1c, $e3, $e6, $19, $ff, $3b, $c4
    db $cc, $33, $77, $88, $00, $ff, $ff, $7f, $80, $8c, $73, $f3, $0c, $1e, $e1, $ff
    db $e1, $1e, $7f, $80, $9c, $63, $00, $ff, $00, $00, $00, $ff, $ff, $00, $e0, $1f
    db $1f, $e0, $f0, $0f, $ff, $8f, $70, $70, $8f, $df, $20, $31, $ce, $ff, $ff, $00
    db $39, $c6, $c7, $38, $78, $87, $ff, $8f, $70, $f0, $0f, $1f, $e0, $e1, $1e, $ff
    db $f8, $07, $39, $c6, $83, $7c, $72, $8d, $ff, $83, $7c, $f2, $0d, $03, $fc, $f2
    db $0d, $ff, $e7, $18, $f7, $08, $c6, $3f, $2d, $d9, $ff, $99, $71, $33, $e1, $e6
    db $43, $63, $c1, $ff, $7a, $85, $3a, $c5, $12, $ed, $da, $25, $ff, $0c, $ff, $33
    db $d2, $b2, $73, $41, $c1, $ff, $cb, $34, $83, $7c, $93, $6c, $90, $6f, $ff, $40
    db $bf, $06, $ff, $1f, $f9, $31, $e0, $ff, $d3, $2c, $c0, $3f, $09, $f6, $09, $f6
    db $ff, $0c, $ff, $f2, $13, $32, $f3, $c1, $c1, $ff, $5e, $a1, $58, $a7, $51, $ae
    db $5b, $a4, $ff, $d8, $27, $90, $6f, $65, $fa, $91, $9f, $ff, $e7, $18, $ac, $53
    db $8f, $70, $68, $97, $ff, $89, $76, $cd, $3e, $9f, $72, $b2, $e3, $ff, $1f, $e0
    db $9b, $64, $cc, $33, $0f, $f0, $ff, $c8, $37, $0f, $f0, $c9, $36, $0e, $f1, $ff
    db $ff, $00, $bf, $40, $70, $8f, $cf, $30, $fe, $6e, $e1, $f3, $0c, $6e, $91, $ff
    db $00, $c1, $ff, $3e, $7f, $80, $80, $7f, $7f, $80, $c0, $1f, $3f, $3f, $c0, $e0
    db $1f, $00, $00

    nop                                           ; $56a1: $00

    db $ff, $ef, $10, $9a, $65, $76, $89, $cd, $32, $ff, $3b, $c4, $f6, $09, $19, $e6
    db $00, $ff, $ff, $3e, $c1, $c3, $3c, $fc, $03, $9b, $64, $ff, $6c, $93, $c7, $38
    db $f8, $07, $00, $ff, $ff, $63, $9c, $98, $67, $71, $8e, $8c, $73, $ff, $78, $87
    db $c6, $39, $3c, $c3, $00, $ff, $ff, $b1, $60, $18, $f0, $cc, $38, $d9, $30, $ff
    db $73, $e1, $86, $83, $8d, $86, $7a, $fd, $ff, $b2, $f3, $d2, $73, $d2, $73, $b3
    db $d1, $ff, $59, $b1, $e9, $18, $3c, $c8, $07, $ff, $ff, $60, $c0, $cc, $8c, $8c
    db $84, $c0, $80, $ff, $60, $c0, $b8, $f0, $8f, $fe, $01, $ff, $ff, $b2, $f3, $92
    db $f3, $f2, $93, $93, $f1, $ff, $f9, $51, $69, $58, $4c, $78, $87, $ff, $ff, $92
    db $9e, $92, $9e, $d2, $9e, $5e, $cc, $ff, $61, $c0, $b3, $e1, $9e, $f3, $2c, $df
    db $ff, $67, $42, $4c, $47, $c3, $42, $b3, $e2, $ff, $e6, $c3, $4c, $c7, $58, $cf
    db $33, $fc, $ff, $cb, $34, $1c, $e3, $97, $68, $39, $c6, $ff, $2e, $d1, $76, $89
    db $d9, $26, $80, $7f, $ff, $b3, $4c, $dc, $23, $67, $98, $b8, $47, $ff, $cf, $30
    db $f6, $09, $39, $c6, $00, $ff, $ff, $9f, $60, $70, $8f, $cf, $30, $31, $ce, $ff
    db $fe, $01, $03, $fc, $fc, $03, $00, $ff, $00, $00, $00, $ff, $ff, $00, $3b, $c4
    db $c7, $38, $78, $87, $ff, $8f, $70, $f8, $07, $07, $f8, $fc, $03, $ef, $ff, $00
    db $3c, $c3, $f0, $e3, $f3, $0c, $1c, $ff, $e3, $e7, $18, $ff, $00, $e1, $1e, $9f
    db $ff, $60, $60, $9f, $df, $20, $b0, $4f, $7e, $ff, $81, $c3, $3d, $f9, $06, $f1
    db $0e, $0f, $ff, $ff, $d9, $30, $b0, $60, $60, $c0, $cf, $ff, $86, $99, $0f, $ff
    db $00, $fd, $02, $03, $ff, $fc, $ae, $df, $d3, $71, $61, $30, $30, $ff, $10, $93
    db $13, $80, $7f, $c1, $3e, $9c, $ff, $63, $41, $be, $06, $ff, $a9, $d9, $59, $ff
    db $79, $60, $20, $01, $fe, $83, $7c, $3b, $ff, $c4, $f2, $0d, $83, $7c, $36, $f9
    db $5e, $f7, $c9, $cb, $cf, $a0, $e5, $8e, $71, $f0, $0f, $ff, $d6, $ef, $eb, $39
    db $9f, $60, $91, $6e, $ff, $3f, $c0, $20, $df, $7f, $80, $f3, $0f, $ff, $f7, $0c
    db $cc, $f8, $ff, $00, $f3, $0c, $ff, $0f, $f0, $f8, $07, $87, $78, $7c, $83, $ef
    db $c3, $bc, $be, $c1, $a0, $e3, $fe, $01, $01, $ff, $fe, $ff, $00, $80, $7f, $7f
    db $80, $ff, $ff, $00, $c6, $39, $bf, $40, $60, $9f, $9f, $7f, $60, $70, $8f, $cf
    db $30, $ba, $45, $00, $00

    nop                                           ; $5847: $00

    db $ff, $93, $6c, $ee, $11, $a9, $56, $56, $a9, $ff, $d1, $2e, $26, $d9, $df, $20
    db $00, $ff, $ff, $98, $67, $7f, $80, $c4, $3b, $3f, $c0, $ff, $c3, $3c, $7d, $82
    db $86, $79, $00, $ff, $ff, $3d, $c3, $c7, $39, $39, $c7, $e7, $19, $ff, $3c, $c3
    db $c3, $3c, $7e, $81, $00, $ff, $ff, $30, $1f, $2e, $31, $31, $1f, $9f, $0e, $ff
    db $c0, $80, $60, $c0, $33, $e1, $1e, $ff, $ff, $9b, $92, $98, $98, $99, $18, $3b
    db $19, $ff, $6a, $3b, $da, $6b, $bb, $ca, $04, $ff, $ff, $79, $39, $d9, $69, $89
    db $f9, $09, $f8, $ff, $8c, $78, $e4, $1c, $6e, $94, $03, $ff, $ff, $4e, $cc, $cd
    db $4c, $4d, $c9, $c9, $c9, $ff, $8c, $c8, $ce, $4c, $6b, $4e, $b1, $ff, $ff, $18
    db $18, $d8, $88, $49, $c9, $d9, $89, $ff, $11, $19, $69, $39, $c9, $79, $86, $ff
    db $ff, $79, $30, $33, $11, $d0, $90, $cc, $58, $ff, $59, $d0, $d3, $51, $56, $d3
    db $2c, $ff, $ff, $e1, $9e, $1e, $e1, $e1, $9e, $df, $a0, $ff, $a0, $df, $5f, $a0
    db $30, $cf, $00, $ff, $ff, $81, $7e, $7e, $81, $c1, $3e, $3e, $c1, $ff, $e3, $1c
    db $9c, $63, $77, $88, $00, $ff, $ff, $55, $aa, $56, $a9, $e9, $16, $6f, $90, $ff
    db $b0, $4f, $df, $20, $61, $9e, $00, $ff, $00, $00, $00, $ff, $ff, $00, $99, $66
    db $76, $89, $cf, $30, $ff, $38, $c7, $e7, $18, $1c, $e3, $f3, $0c, $ff, $ff, $00
    db $f3, $0c, $1c, $e3, $e6, $19, $ff, $3b, $c4, $cc, $33, $77, $88, $b8, $47, $ff
    db $ff, $00, $8c, $73, $f3, $0c, $1e, $e1, $ff, $e1, $1e, $7f, $80, $9c, $63, $e3
    db $1c, $ff, $ff, $00, $e3, $1c, $9e, $61, $71, $8e, $ff, $cf, $30, $32, $cd, $ff
    db $00, $c0, $3f, $ff, $ff, $00, $ff, $00, $01, $fe, $fe, $01, $ff, $03, $fc, $fc
    db $03, $a7, $58, $39, $c6, $ff, $ff, $00, $33, $cc, $dc, $23, $63, $9c, $ff, $be
    db $41, $c7, $38, $78, $87, $9f, $60, $00, $a0, $ff, $a0, $ff, $a0, $f9, $00, $00

    nop                                           ; $5998: $00

    db $75, $00, $ff, $e1, $01, $ff, $e0, $03, $02, $03, $fd, $e0, $ff, $06, $05, $06
    db $07, $04, $07, $04, $05, $ff, $06, $02, $07, $01, $03, $00, $01, $00, $ff, $00
    db $6e, $ff, $95, $fb, $ef, $91, $7f, $ff, $81, $fe, $01, $df, $24, $f7, $2c, $ed
    db $ff, $3e, $bf, $7e, $fb, $7e, $e2, $63, $e1, $7f, $63, $e1, $61, $e0, $e1, $c0
    db $e0, $c2, $e2, $ff, $80, $80, $80, $83, $87, $8c, $df, $d7, $ff, $f8, $ef, $f0
    db $5f, $e6, $fb, $46, $df, $ff, $60, $af, $70, $fb, $3c, $f7, $3f, $f3, $e7, $f7
    db $60, $f0, $a2, $e2, $9d, $e0, $18, $bc, $b7, $df, $ef, $7e, $e5, $ff, $64, $fe
    db $e3, $bf, $64, $ff, $ff, $24, $6f, $b4, $ff, $ff, $6d, $ff, $fc, $e0, $e5, $ba
    db $e1, $e0, $f0, $d0, $38, $e8, $1d, $f7, $dd, $ed, $fd, $fe, $e2, $fc, $ed, $dc
    db $fc, $ff, $88, $dc, $00, $00, $1b, $3f, $25, $3e, $ff, $3b, $64, $5f, $60, $7f
    db $c0, $b7, $c9, $ff, $fd, $8b, $fb, $8f, $6f, $9f, $fe, $1f, $ff, $f8, $18, $78
    db $98, $b8, $d8, $78, $f8, $fb, $30, $78, $83, $e0, $c0, $40, $e0, $e0, $60, $ff
    db $c0, $60, $a0, $71, $f3, $37, $e5, $3e, $ff, $5b, $bd, $f6, $99, $f7, $98, $af
    db $d8, $ff, $7b, $cc, $7e, $4f, $3d, $7f, $18, $3d, $fe, $a0, $e7, $d8, $fc, $27
    db $ff, $de, $31, $df, $ff, $b0, $ae, $77, $df, $e7, $5f, $e7, $ff, $7f, $27, $ff
    db $27, $fe, $ff, $ec, $fe, $80, $e7, $ff, $60, $f0, $71, $9b, $bb, $da, $7b, $da
    db $ff, $f3, $5a, $ed, $5e, $de, $61, $ed, $73, $3f, $f3, $7f, $ef, $ff, $46, $ef
    db $60, $e8, $96, $e0, $ff, $c0, $60, $e0, $60, $60, $e0, $e0, $e0, $ff, $c0, $e0
    db $c0, $c0, $80, $c0, $00, $80, $00, $e2, $e1, $00, $00

    nop                                           ; $5ac4: $00
    ld hl, $5af6                                  ; $5ac5: $21 $f6 $5a
    ld de, $0201                                  ; $5ac8: $11 $01 $02
    ld b, $00                                     ; $5acb: $06 $00
    call Call_009_7ad5                            ; $5acd: $cd $d5 $7a
    ld c, $10                                     ; $5ad0: $0e $10
    call Call_000_25af                            ; $5ad2: $cd $af $25
    call Call_000_2625                            ; $5ad5: $cd $25 $26
    ld a, $06                                     ; $5ad8: $3e $06
    ldh [$96], a                                  ; $5ada: $e0 $96
    ldh [rSVBK], a                                ; $5adc: $e0 $70
    ld a, [$cab9]                                 ; $5ade: $fa $b9 $ca
    call Call_009_47e0                            ; $5ae1: $cd $e0 $47
    bit 7, a                                      ; $5ae4: $cb $7f
    jr nz, jr_009_5aeb                            ; $5ae6: $20 $03

    ld [$cab9], a                                 ; $5ae8: $ea $b9 $ca

jr_009_5aeb:
    push af                                       ; $5aeb: $f5
    ld c, $10                                     ; $5aec: $0e $10
    call Call_000_25a1                            ; $5aee: $cd $a1 $25
    call Call_000_2625                            ; $5af1: $cd $25 $26
    pop af                                        ; $5af4: $f1

jr_009_5af5:
    ret                                           ; $5af5: $c9


    jr nz, jr_009_5b53                            ; $5af6: $20 $5b

    ld e, a                                       ; $5af8: $5f
    ld h, d                                       ; $5af9: $62
    sub c                                         ; $5afa: $91
    ld e, e                                       ; $5afb: $5b
    ret nc                                        ; $5afc: $d0

    ld h, d                                       ; $5afd: $62
    ld h, l                                       ; $5afe: $65
    ld e, h                                       ; $5aff: $5c
    sbc e                                         ; $5b00: $9b
    ld h, e                                       ; $5b01: $63
    ld [hl], $5d                                  ; $5b02: $36 $5d
    ld [hl], c                                    ; $5b04: $71
    ld h, h                                       ; $5b05: $64
    ld [$485e], sp                                ; $5b06: $08 $5e $48
    ld h, l                                       ; $5b09: $65
    jp nc, $235e                                  ; $5b0a: $d2 $5e $23

    ld h, [hl]                                    ; $5b0d: $66
    xor e                                         ; $5b0e: $ab
    ld e, a                                       ; $5b0f: $5f
    db $fc                                        ; $5b10: $fc
    ld h, [hl]                                    ; $5b11: $66
    add d                                         ; $5b12: $82
    ld h, b                                       ; $5b13: $60
    db $d3                                        ; $5b14: $d3
    ld h, a                                       ; $5b15: $67
    ld b, d                                       ; $5b16: $42
    ld h, c                                       ; $5b17: $61
    sub e                                         ; $5b18: $93
    ld l, b                                       ; $5b19: $68
    jp hl                                         ; $5b1a: $e9


    ld h, c                                       ; $5b1b: $61
    ld a, [hl-]                                   ; $5b1c: $3a
    ld l, c                                       ; $5b1d: $69
    or b                                          ; $5b1e: $b0
    ld l, c                                       ; $5b1f: $69
    rst $38                                       ; $5b20: $ff
    inc c                                         ; $5b21: $0c
    di                                            ; $5b22: $f3
    ei                                            ; $5b23: $fb
    inc b                                         ; $5b24: $04
    call z, Call_000_3733                         ; $5b25: $cc $33 $37
    ret z                                         ; $5b28: $c8

    rst $38                                       ; $5b29: $ff
    ldh a, [rIF]                                  ; $5b2a: $f0 $0f
    rra                                           ; $5b2c: $1f
    ldh [$e1], a                                  ; $5b2d: $e0 $e1
    ld e, $00                                     ; $5b2f: $1e $00
    rst $38                                       ; $5b31: $ff
    rst $38                                       ; $5b32: $ff
    rst $00                                       ; $5b33: $c7
    jr c, jr_009_5af5                             ; $5b34: $38 $bf

    ld b, b                                       ; $5b36: $40
    ld [hl], b                                    ; $5b37: $70
    adc a                                         ; $5b38: $8f
    rst $08                                       ; $5b39: $cf
    jr nc, @+$01                                  ; $5b3a: $30 $ff

    ld a, b                                       ; $5b3c: $78
    add a                                         ; $5b3d: $87
    adc a                                         ; $5b3e: $8f
    ld [hl], b                                    ; $5b3f: $70
    di                                            ; $5b40: $f3
    inc c                                         ; $5b41: $0c

jr_009_5b42:
    nop                                           ; $5b42: $00
    rst $38                                       ; $5b43: $ff
    rst $38                                       ; $5b44: $ff
    ld a, $c1                                     ; $5b45: $3e $c1
    pop bc                                        ; $5b47: $c1
    ld a, $7f                                     ; $5b48: $3e $7f
    add b                                         ; $5b4a: $80
    add b                                         ; $5b4b: $80
    ld a, a                                       ; $5b4c: $7f
    rst $38                                       ; $5b4d: $ff
    ld a, a                                       ; $5b4e: $7f
    add b                                         ; $5b4f: $80
    ret nz                                        ; $5b50: $c0

    ccf                                           ; $5b51: $3f
    ccf                                           ; $5b52: $3f

jr_009_5b53:
    ret nz                                        ; $5b53: $c0

    nop                                           ; $5b54: $00
    rst $38                                       ; $5b55: $ff
    rst $38                                       ; $5b56: $ff
    ccf                                           ; $5b57: $3f
    ret nz                                        ; $5b58: $c0

    ldh [$1f], a                                  ; $5b59: $e0 $1f
    rra                                           ; $5b5b: $1f
    ldh [$f0], a                                  ; $5b5c: $e0 $f0
    rrca                                          ; $5b5e: $0f
    rst $38                                       ; $5b5f: $ff
    adc a                                         ; $5b60: $8f
    ld [hl], b                                    ; $5b61: $70
    ld [hl], b                                    ; $5b62: $70
    adc a                                         ; $5b63: $8f
    rst $18                                       ; $5b64: $df
    jr nz, jr_009_5b67                            ; $5b65: $20 $00

jr_009_5b67:
    rst $38                                       ; $5b67: $ff
    ccf                                           ; $5b68: $3f
    adc $31                                       ; $5b69: $ce $31
    add hl, sp                                    ; $5b6b: $39
    add $c7                                       ; $5b6c: $c6 $c7
    jr c, jr_009_5b42                             ; $5b6e: $38 $d2

    pop hl                                        ; $5b70: $e1
    cp [hl]                                       ; $5b71: $be
    pop hl                                        ; $5b72: $e1
    rst $38                                       ; $5b73: $ff
    nop                                           ; $5b74: $00
    rst $38                                       ; $5b75: $ff
    rst $20                                       ; $5b76: $e7
    jr jr_009_5bb1                                ; $5b77: $18 $38

    rst $00                                       ; $5b79: $c7
    adc a                                         ; $5b7a: $8f
    ld [hl], b                                    ; $5b7b: $70
    rst $38                                       ; $5b7c: $ff
    ld a, b                                       ; $5b7d: $78
    add a                                         ; $5b7e: $87
    add a                                         ; $5b7f: $87
    ld a, b                                       ; $5b80: $78
    ld hl, sp+$07                                 ; $5b81: $f8 $07
    rlca                                          ; $5b83: $07
    ld hl, sp+$03                                 ; $5b84: $f8 $03
    nop                                           ; $5b86: $00
    rst $38                                       ; $5b87: $ff
    and b                                         ; $5b88: $a0
    rst $38                                       ; $5b89: $ff
    and b                                         ; $5b8a: $a0
    rst $38                                       ; $5b8b: $ff
    and b                                         ; $5b8c: $a0
    ld sp, hl                                     ; $5b8d: $f9
    nop                                           ; $5b8e: $00
    nop                                           ; $5b8f: $00
    nop                                           ; $5b90: $00
    rst $38                                       ; $5b91: $ff
    rst $38                                       ; $5b92: $ff
    nop                                           ; $5b93: $00
    inc a                                         ; $5b94: $3c
    jp Jump_000_38c7                              ; $5b95: $c3 $c7 $38


    ld sp, hl                                     ; $5b98: $f9
    ld b, $ff                                     ; $5b99: $06 $ff
    ld c, $f1                                     ; $5b9b: $0e $f1
    or $09                                        ; $5b9d: $f6 $09
    add hl, de                                    ; $5b9f: $19
    and $e7                                       ; $5ba0: $e6 $e7
    jr @+$01                                      ; $5ba2: $18 $ff

    ld a, c                                       ; $5ba4: $79
    cp $8e                                        ; $5ba5: $fe $8e
    add a                                         ; $5ba7: $87
    jp $4081                                      ; $5ba8: $c3 $81 $40


    ret nz                                        ; $5bab: $c0

    rst $38                                       ; $5bac: $ff
    ret nz                                        ; $5bad: $c0

    ld b, b                                       ; $5bae: $40
    add $44                                       ; $5baf: $c6 $44

jr_009_5bb1:
    ld b, a                                       ; $5bb1: $47
    add $c5                                       ; $5bb2: $c6 $c5
    ld b, a                                       ; $5bb4: $47
    rst $38                                       ; $5bb5: $ff
    rst $38                                       ; $5bb6: $ff
    nop                                           ; $5bb7: $00
    ld [hl], b                                    ; $5bb8: $70
    adc a                                         ; $5bb9: $8f
    adc a                                         ; $5bba: $8f
    ldh a, [$d6]                                  ; $5bbb: $f0 $d6
    ld l, a                                       ; $5bbd: $6f
    rst $38                                       ; $5bbe: $ff
    ld l, e                                       ; $5bbf: $6b

jr_009_5bc0:
    add hl, sp                                    ; $5bc0: $39
    ld sp, $1919                                  ; $5bc1: $31 $19 $19
    add hl, bc                                    ; $5bc4: $09
    add hl, bc                                    ; $5bc5: $09
    add hl, bc                                    ; $5bc6: $09
    rst $38                                       ; $5bc7: $ff
    rst $38                                       ; $5bc8: $ff
    nop                                           ; $5bc9: $00
    sbc d                                         ; $5bca: $9a
    ld h, l                                       ; $5bcb: $65
    halt                                          ; $5bcc: $76
    adc c                                         ; $5bcd: $89
    call $ff32                                    ; $5bce: $cd $32 $ff
    inc l                                         ; $5bd1: $2c
    rst $18                                       ; $5bd2: $df
    cp e                                          ; $5bd3: $bb
    ld [hl], e                                    ; $5bd4: $73
    ld h, e                                       ; $5bd5: $63
    jp $83c2                                      ; $5bd6: $c3 $c2 $83


    rst $38                                       ; $5bd9: $ff
    rst $38                                       ; $5bda: $ff
    nop                                           ; $5bdb: $00
    jp $d83c                                      ; $5bdc: $c3 $3c $d8


    ccf                                           ; $5bdf: $3f
    and [hl]                                      ; $5be0: $a6
    ld h, l                                       ; $5be1: $65
    rst $30                                       ; $5be2: $f7
    and $e7                                       ; $5be3: $e6 $e7
    ld bc, $e0ff                                  ; $5be5: $01 $ff $e0
    and $e7                                       ; $5be8: $e6 $e7
    rst $38                                       ; $5bea: $ff
    nop                                           ; $5beb: $00
    rst $38                                       ; $5bec: $ff
    sub b                                         ; $5bed: $90
    ld l, a                                       ; $5bee: $6f
    nop                                           ; $5bef: $00
    rst $38                                       ; $5bf0: $ff
    rst $08                                       ; $5bf1: $cf
    ldh a, [$79]                                  ; $5bf2: $f0 $79
    daa                                           ; $5bf4: $27
    rst $38                                       ; $5bf5: $ff
    daa                                           ; $5bf6: $27
    ld a, $2c                                     ; $5bf7: $3e $2c
    jr c, jr_009_5c33                             ; $5bf9: $38 $38

    jr nc, @+$01                                  ; $5bfb: $30 $ff

    nop                                           ; $5bfd: $00
    rst $38                                       ; $5bfe: $ff
    inc c                                         ; $5bff: $0c
    di                                            ; $5c00: $f3
    ld bc, $f0fe                                  ; $5c01: $01 $fe $f0
    rrca                                          ; $5c04: $0f
    adc [hl]                                      ; $5c05: $8e
    pop af                                        ; $5c06: $f1
    rst $18                                       ; $5c07: $df
    adc $7f                                       ; $5c08: $ce $7f
    ld [hl], e                                    ; $5c0a: $73
    ld sp, $f020                                  ; $5c0b: $31 $20 $f0
    ldh [$dc], a                                  ; $5c0e: $e0 $dc
    inc hl                                        ; $5c10: $23
    rst $38                                       ; $5c11: $ff
    ld h, a                                       ; $5c12: $67
    sbc b                                         ; $5c13: $98
    jr c, @-$37                                   ; $5c14: $38 $c7

    dec c                                         ; $5c16: $0d
    di                                            ; $5c17: $f3
    add e                                         ; $5c18: $83
    ld a, [hl]                                    ; $5c19: $7e
    rst $28                                       ; $5c1a: $ef
    add $fc                                       ; $5c1b: $c6 $fc
    ld l, h                                       ; $5c1d: $6c
    jr c, jr_009_5bc0                             ; $5c1e: $38 $a0

    pop hl                                        ; $5c20: $e1
    rst $08                                       ; $5c21: $cf
    jr nc, jr_009_5c85                            ; $5c22: $30 $61

    rst $18                                       ; $5c24: $df
    cp $f3                                        ; $5c25: $fe $f3
    sbc a                                         ; $5c27: $9f
    inc e                                         ; $5c28: $1c
    inc c                                         ; $5c29: $0c
    rst $38                                       ; $5c2a: $ff
    pop hl                                        ; $5c2b: $e1
    rst $38                                       ; $5c2c: $ff
    nop                                           ; $5c2d: $00
    rst $38                                       ; $5c2e: $ff
    sub [hl]                                      ; $5c2f: $96
    ld l, a                                       ; $5c30: $6f
    ld a, e                                       ; $5c31: $7b
    adc c                                         ; $5c32: $89

jr_009_5c33:
    ret z                                         ; $5c33: $c8

    jr c, jr_009_5ca2                             ; $5c34: $38 $6c

    ld hl, sp-$01                                 ; $5c36: $f8 $ff
    rst $30                                       ; $5c38: $f7
    sbc [hl]                                      ; $5c39: $9e
    sbc c                                         ; $5c3a: $99
    rrca                                          ; $5c3b: $0f
    ld c, $09                                     ; $5c3c: $0e $09
    or $0f                                        ; $5c3e: $f6 $0f
    rst $38                                       ; $5c40: $ff
    db $dd                                        ; $5c41: $dd
    add hl, sp                                    ; $5c42: $39
    or c                                          ; $5c43: $b1
    pop hl                                        ; $5c44: $e1
    db $e3                                        ; $5c45: $e3
    ld b, c                                       ; $5c46: $41
    ld b, [hl]                                    ; $5c47: $46
    ld b, e                                       ; $5c48: $43
    rst $38                                       ; $5c49: $ff
    dec c                                         ; $5c4a: $0d
    ld b, $98                                     ; $5c4b: $06 $98
    rrca                                          ; $5c4d: $0f
    sub a                                         ; $5c4e: $97
    sbc b                                         ; $5c4f: $98
    rst $38                                       ; $5c50: $ff
    nop                                           ; $5c51: $00
    rst $38                                       ; $5c52: $ff
    sbc [hl]                                      ; $5c53: $9e
    ld h, c                                       ; $5c54: $61
    ld [hl], c                                    ; $5c55: $71
    adc [hl]                                      ; $5c56: $8e
    adc a                                         ; $5c57: $8f
    ld [hl], b                                    ; $5c58: $70
    ld a, b                                       ; $5c59: $78
    add a                                         ; $5c5a: $87
    ccf                                           ; $5c5b: $3f
    rst $00                                       ; $5c5c: $c7
    jr c, jr_009_5c9b                             ; $5c5d: $38 $3c

    jp $1ce3                                      ; $5c5f: $c3 $e3 $1c


    nop                                           ; $5c62: $00
    nop                                           ; $5c63: $00
    nop                                           ; $5c64: $00
    rst $38                                       ; $5c65: $ff
    ld e, $e1                                     ; $5c66: $1e $e1
    di                                            ; $5c68: $f3
    inc c                                         ; $5c69: $0c
    rrca                                          ; $5c6a: $0f
    ldh a, [$f8]                                  ; $5c6b: $f0 $f8
    rlca                                          ; $5c6d: $07
    rst $38                                       ; $5c6e: $ff
    add a                                         ; $5c6f: $87
    ld a, b                                       ; $5c70: $78
    ld a, h                                       ; $5c71: $7c
    add e                                         ; $5c72: $83
    jp Jump_000_003c                              ; $5c73: $c3 $3c $00


    rst $38                                       ; $5c76: $ff
    rst $38                                       ; $5c77: $ff
    ld b, l                                       ; $5c78: $45
    rst $00                                       ; $5c79: $c7

jr_009_5c7a:
    rst $00                                       ; $5c7a: $c7
    ld b, [hl]                                    ; $5c7b: $46
    ld b, [hl]                                    ; $5c7c: $46
    call nz, $40c0                                ; $5c7d: $c4 $c0 $40
    rst $38                                       ; $5c80: $ff
    ld b, b                                       ; $5c81: $40
    ret nz                                        ; $5c82: $c0

    pop bc                                        ; $5c83: $c1
    ld b, b                                       ; $5c84: $40

jr_009_5c85:
    rst $00                                       ; $5c85: $c7
    ld b, e                                       ; $5c86: $43
    inc a                                         ; $5c87: $3c
    rst $38                                       ; $5c88: $ff
    rst $38                                       ; $5c89: $ff
    add hl, bc                                    ; $5c8a: $09
    add hl, bc                                    ; $5c8b: $09
    add hl, de                                    ; $5c8c: $19
    add hl, bc                                    ; $5c8d: $09
    ld sp, $6919                                  ; $5c8e: $31 $19 $69
    add hl, sp                                    ; $5c91: $39
    rst $38                                       ; $5c92: $ff
    reti                                          ; $5c93: $d9


    ld l, c                                       ; $5c94: $69
    cp l                                          ; $5c95: $bd
    ret                                           ; $5c96: $c9


    ld b, l                                       ; $5c97: $45
    cp l                                          ; $5c98: $bd
    ld [bc], a                                    ; $5c99: $02
    rst $38                                       ; $5c9a: $ff

jr_009_5c9b:
    rst $38                                       ; $5c9b: $ff
    sbc h                                         ; $5c9c: $9c
    adc a                                         ; $5c9d: $8f
    sub d                                         ; $5c9e: $92
    dec e                                         ; $5c9f: $1d
    inc d                                         ; $5ca0: $14
    dec de                                        ; $5ca1: $1b

jr_009_5ca2:
    adc [hl]                                      ; $5ca2: $8e
    rrca                                          ; $5ca3: $0f
    rst $38                                       ; $5ca4: $ff
    pop bc                                        ; $5ca5: $c1
    add c                                         ; $5ca6: $81
    ld h, e                                       ; $5ca7: $63
    pop bc                                        ; $5ca8: $c1
    ld a, $f3                                     ; $5ca9: $3e $f3
    inc c                                         ; $5cab: $0c
    rst $38                                       ; $5cac: $ff
    rst $38                                       ; $5cad: $ff
    daa                                           ; $5cae: $27
    push hl                                       ; $5caf: $e5
    ld h, l                                       ; $5cb0: $65
    and a                                         ; $5cb1: $a7
    rst $20                                       ; $5cb2: $e7
    inc hl                                        ; $5cb3: $23
    ld [c], a                                     ; $5cb4: $e2
    inc hl                                        ; $5cb5: $23
    rst $38                                       ; $5cb6: $ff
    or e                                          ; $5cb7: $b3
    ld h, c                                       ; $5cb8: $61
    pop de                                        ; $5cb9: $d1
    ld sp, $f119                                  ; $5cba: $31 $19 $f1
    ld c, $ff                                     ; $5cbd: $0e $ff
    rst $28                                       ; $5cbf: $ef
    inc sp                                        ; $5cc0: $33
    jr nc, @+$35                                  ; $5cc1: $30 $33

    inc hl                                        ; $5cc3: $23
    rst $38                                       ; $5cc4: $ff
    ldh [rNR43], a                                ; $5cc5: $e0 $22
    jr nc, jr_009_5ce9                            ; $5cc7: $30 $20

    rst $38                                       ; $5cc9: $ff
    cp b                                          ; $5cca: $b8
    jr nc, jr_009_5c7a                            ; $5ccb: $30 $ad

    cp c                                          ; $5ccd: $b9
    ld b, [hl]                                    ; $5cce: $46
    rst $38                                       ; $5ccf: $ff
    jr nc, jr_009_5ce2                            ; $5cd0: $30 $10

    rst $38                                       ; $5cd2: $ff
    db $10                                        ; $5cd3: $10
    db $10                                        ; $5cd4: $10
    ld de, $3111                                  ; $5cd5: $11 $11 $31
    ld de, $3121                                  ; $5cd8: $11 $21 $31
    rst $10                                       ; $5cdb: $d7
    pop de                                        ; $5cdc: $d1

jr_009_5cdd:
    ld [hl], c                                    ; $5cdd: $71
    sub c                                         ; $5cde: $91
    ldh [$e0], a                                  ; $5cdf: $e0 $e0
    add hl, sp                                    ; $5ce1: $39

jr_009_5ce2:
    ld a, [c]                                     ; $5ce2: $f2
    ldh [$91], a                                  ; $5ce3: $e0 $91
    db $10                                        ; $5ce5: $10
    rst $38                                       ; $5ce6: $ff
    sub b                                         ; $5ce7: $90
    sub b                                         ; $5ce8: $90

jr_009_5ce9:
    sbc h                                         ; $5ce9: $9c
    sbc b                                         ; $5cea: $98
    sub a                                         ; $5ceb: $97
    sbc [hl]                                      ; $5cec: $9e
    sub c                                         ; $5ced: $91
    sbc a                                         ; $5cee: $9f
    ld [hl], a                                    ; $5cef: $77
    ld h, b                                       ; $5cf0: $60
    rst $38                                       ; $5cf1: $ff
    adc h                                         ; $5cf2: $8c
    rst $38                                       ; $5cf3: $ff
    ld [c], a                                     ; $5cf4: $e2
    ld [$040c], sp                                ; $5cf5: $08 $0c $04
    rst $38                                       ; $5cf8: $ff
    ldh [rIE], a                                  ; $5cf9: $e0 $ff
    db $e4                                        ; $5cfb: $e4
    call nz, $ff3b                                ; $5cfc: $c4 $3b $ff
    ld [hl], h                                    ; $5cff: $74
    dec sp                                        ; $5d00: $3b
    db $db                                        ; $5d01: $db
    ld h, h                                       ; $5d02: $64
    rst $38                                       ; $5d03: $ff
    add a                                         ; $5d04: $87
    ld hl, sp-$08                                 ; $5d05: $f8 $f8
    add a                                         ; $5d07: $87
    adc a                                         ; $5d08: $8f
    ldh a, [$f8]                                  ; $5d09: $f0 $f8
    add a                                         ; $5d0b: $87
    rst $38                                       ; $5d0c: $ff
    add a                                         ; $5d0d: $87
    ld hl, sp+$00                                 ; $5d0e: $f8 $00
    rst $38                                       ; $5d10: $ff
    sub e                                         ; $5d11: $93
    sbc h                                         ; $5d12: $9c
    sbc h                                         ; $5d13: $9c
    sub e                                         ; $5d14: $93
    cp a                                          ; $5d15: $bf
    sub a                                         ; $5d16: $97
    sbc b                                         ; $5d17: $98
    sbc b                                         ; $5d18: $98
    sub a                                         ; $5d19: $97
    sbc a                                         ; $5d1a: $9f
    sub b                                         ; $5d1b: $90
    or $e1                                        ; $5d1c: $f6 $e1
    ld h, b                                       ; $5d1e: $60
    rst $38                                       ; $5d1f: $ff
    rst $38                                       ; $5d20: $ff
    ld e, $e1                                     ; $5d21: $1e $e1
    pop hl                                        ; $5d23: $e1
    ld e, $9f                                     ; $5d24: $1e $9f
    ld h, b                                       ; $5d26: $60
    ld h, b                                       ; $5d27: $60
    rst $38                                       ; $5d28: $ff
    sbc a                                         ; $5d29: $9f
    rst $18                                       ; $5d2a: $df
    jr nz, jr_009_5cdd                            ; $5d2b: $20 $b0

    ld c, a                                       ; $5d2d: $4f
    ld a, a                                       ; $5d2e: $7f
    add b                                         ; $5d2f: $80
    nop                                           ; $5d30: $00
    ld bc, $00ff                                  ; $5d31: $01 $ff $00
    nop                                           ; $5d34: $00
    nop                                           ; $5d35: $00
    rst $38                                       ; $5d36: $ff
    rst $38                                       ; $5d37: $ff
    nop                                           ; $5d38: $00
    sbc [hl]                                      ; $5d39: $9e
    ld h, c                                       ; $5d3a: $61
    ld h, b                                       ; $5d3b: $60
    sbc a                                         ; $5d3c: $9f
    db $dd                                        ; $5d3d: $dd
    inc hl                                        ; $5d3e: $23
    rst $38                                       ; $5d3f: $ff
    inc hl                                        ; $5d40: $23
    sbc $de                                       ; $5d41: $de $de
    ld [hl+], a                                   ; $5d43: $22
    inc sp                                        ; $5d44: $33
    adc $cd                                       ; $5d45: $ce $cd
    inc sp                                        ; $5d47: $33
    rst $38                                       ; $5d48: $ff
    cp e                                          ; $5d49: $bb
    ld a, h                                       ; $5d4a: $7c
    ld b, [hl]                                    ; $5d4b: $46
    push bc                                       ; $5d4c: $c5
    call $9a86                                    ; $5d4d: $cd $86 $9a
    dec c                                         ; $5d50: $0d
    rst $38                                       ; $5d51: $ff
    inc sp                                        ; $5d52: $33
    inc e                                         ; $5d53: $1c
    inc [hl]                                      ; $5d54: $34
    dec sp                                        ; $5d55: $3b
    dec e                                         ; $5d56: $1d
    ld c, $86                                     ; $5d57: $0e $86
    inc bc                                        ; $5d59: $03
    rst $38                                       ; $5d5a: $ff
    rst $38                                       ; $5d5b: $ff
    nop                                           ; $5d5c: $00
    ld d, [hl]                                    ; $5d5d: $56
    xor c                                         ; $5d5e: $a9
    jp hl                                         ; $5d5f: $e9


    ld d, $66                                     ; $5d60: $16 $66
    sbc a                                         ; $5d62: $9f
    rst $38                                       ; $5d63: $ff
    sbc a                                         ; $5d64: $9f
    ld a, c                                       ; $5d65: $79
    or c                                          ; $5d66: $b1
    ld h, b                                       ; $5d67: $60
    ld h, b                                       ; $5d68: $60
    ret nz                                        ; $5d69: $c0

    ret nz                                        ; $5d6a: $c0

    add b                                         ; $5d6b: $80
    rst $38                                       ; $5d6c: $ff
    sbc a                                         ; $5d6d: $9f
    ld h, b                                       ; $5d6e: $60
    cp [hl]                                       ; $5d6f: $be
    ld b, c                                       ; $5d70: $41
    add hl, hl                                    ; $5d71: $29
    sub $36                                       ; $5d72: $d6 $36
    ret                                           ; $5d74: $c9


    rst $38                                       ; $5d75: $ff
    ld [hl], c                                    ; $5d76: $71
    adc [hl]                                      ; $5d77: $8e
    cp d                                          ; $5d78: $ba
    db $fd                                        ; $5d79: $fd
    add $c5                                       ; $5d7a: $c6 $c5
    push hl                                       ; $5d7c: $e5
    rst $00                                       ; $5d7d: $c7
    rst $38                                       ; $5d7e: $ff
    rst $38                                       ; $5d7f: $ff
    nop                                           ; $5d80: $00
    ld a, a                                       ; $5d81: $7f
    add b                                         ; $5d82: $80
    call nz, Call_000_303b                        ; $5d83: $c4 $3b $30
    rst $08                                       ; $5d86: $cf
    rst $38                                       ; $5d87: $ff
    ld h, e                                       ; $5d88: $63
    db $fc                                        ; $5d89: $fc
    or [hl]                                       ; $5d8a: $b6
    sbc c                                         ; $5d8b: $99
    adc l                                         ; $5d8c: $8d
    adc e                                         ; $5d8d: $8b

jr_009_5d8e:
    sbc e                                         ; $5d8e: $9b
    ld c, $ff                                     ; $5d8f: $0e $ff
    ld h, b                                       ; $5d91: $60
    sbc a                                         ; $5d92: $9f
    add b                                         ; $5d93: $80
    ld a, a                                       ; $5d94: $7f
    rra                                           ; $5d95: $1f
    ldh [$f7], a                                  ; $5d96: $e0 $f7
    ld [$74ff], sp                                ; $5d98: $08 $ff $74
    ei                                            ; $5d9b: $fb
    ret c                                         ; $5d9c: $d8

    adc a                                         ; $5d9d: $8f
    adc h                                         ; $5d9e: $8c
    rlca                                          ; $5d9f: $07
    rlca                                          ; $5da0: $07
    inc b                                         ; $5da1: $04
    rst $38                                       ; $5da2: $ff
    inc a                                         ; $5da3: $3c
    rst $38                                       ; $5da4: $ff
    ld b, a                                       ; $5da5: $47
    jp $40e1                                      ; $5da6: $c3 $e1 $40


    and b                                         ; $5da9: $a0
    ld h, b                                       ; $5daa: $60
    rst $38                                       ; $5dab: $ff
    jr nz, jr_009_5d8e                            ; $5dac: $20 $e0

    inc hl                                        ; $5dae: $23
    ld [c], a                                     ; $5daf: $e2
    inc hl                                        ; $5db0: $23
    db $e3                                        ; $5db1: $e3
    ld [c], a                                     ; $5db2: $e2
    inc hl                                        ; $5db3: $23
    rst $38                                       ; $5db4: $ff
    rst $38                                       ; $5db5: $ff
    nop                                           ; $5db6: $00
    ld a, [hl]                                    ; $5db7: $7e
    add c                                         ; $5db8: $81
    pop bc                                        ; $5db9: $c1
    cp $6e                                        ; $5dba: $fe $6e
    ld sp, $33ff                                  ; $5dbc: $31 $ff $33
    inc e                                         ; $5dbf: $1c
    jr jr_009_5dd1                                ; $5dc0: $18 $0f

    adc l                                         ; $5dc2: $8d
    rlca                                          ; $5dc3: $07
    add a                                         ; $5dc4: $87
    add [hl]                                      ; $5dc5: $86
    rst $38                                       ; $5dc6: $ff
    ld sp, hl                                     ; $5dc7: $f9
    ld b, $55                                     ; $5dc8: $06 $55
    xor d                                         ; $5dca: $aa
    add sp, $17                                   ; $5dcb: $e8 $17
    ld e, b                                       ; $5dcd: $58
    cp a                                          ; $5dce: $bf
    ld a, a                                       ; $5dcf: $7f
    ld a, h                                       ; $5dd0: $7c

jr_009_5dd1:
    rst $20                                       ; $5dd1: $e7
    rst $00                                       ; $5dd2: $c7
    add e                                         ; $5dd3: $83
    add e                                         ; $5dd4: $83
    inc bc                                        ; $5dd5: $03
    ld [bc], a                                    ; $5dd6: $02
    sub b                                         ; $5dd7: $90
    ldh [rIE], a                                  ; $5dd8: $e0 $ff
    xor $11                                       ; $5dda: $ee $11
    sbc c                                         ; $5ddc: $99
    ld a, [hl]                                    ; $5ddd: $7e
    and $25                                       ; $5dde: $e6 $25
    and $e7                                       ; $5de0: $e6 $e7
    db $ed                                        ; $5de2: $ed
    ld bc, $e0ff                                  ; $5de3: $01 $ff $e0
    and $e7                                       ; $5de6: $e6 $e7
    and b                                         ; $5de8: $a0
    db $e3                                        ; $5de9: $e3
    ld [hl], $cf                                  ; $5dea: $36 $cf
    rst $18                                       ; $5dec: $df
    rst $30                                       ; $5ded: $f7
    add hl, sp                                    ; $5dee: $39
    ld sp, $80e0                                  ; $5def: $31 $e0 $80
    pop hl                                        ; $5df2: $e1
    rst $38                                       ; $5df3: $ff
    nop                                           ; $5df4: $00
    rst $00                                       ; $5df5: $c7
    jr c, @+$01                                   ; $5df6: $38 $ff

    jr c, @-$37                                   ; $5df8: $38 $c7

    rst $20                                       ; $5dfa: $e7
    jr jr_009_5e39                                ; $5dfb: $18 $3c

    jp $bcc3                                      ; $5dfd: $c3 $c3 $bc


    rrca                                          ; $5e00: $0f
    cp $81                                        ; $5e01: $fe $81
    pop bc                                        ; $5e03: $c1
    cp [hl]                                       ; $5e04: $be
    nop                                           ; $5e05: $00
    nop                                           ; $5e06: $00
    nop                                           ; $5e07: $00
    rst $38                                       ; $5e08: $ff
    inc a                                         ; $5e09: $3c
    jp $1ce3                                      ; $5e0a: $c3 $e3 $1c


    sbc [hl]                                      ; $5e0d: $9e
    ld h, c                                       ; $5e0e: $61
    ld [hl], b                                    ; $5e0f: $70
    adc a                                         ; $5e10: $8f
    rst $38                                       ; $5e11: $ff
    swap a                                        ; $5e12: $cb $37
    inc [hl]                                      ; $5e14: $34
    call z, $04fc                                 ; $5e15: $cc $fc $04
    inc bc                                        ; $5e18: $03
    rst $38                                       ; $5e19: $ff
    rst $38                                       ; $5e1a: $ff
    jp Jump_009_6381                              ; $5e1b: $c3 $81 $63


    pop hl                                        ; $5e1e: $e1
    ld h, [hl]                                    ; $5e1f: $66
    jp $87cd                                      ; $5e20: $c3 $cd $87


    rst $38                                       ; $5e23: $ff
    sbc d                                         ; $5e24: $9a
    dec c                                         ; $5e25: $0d
    inc [hl]                                      ; $5e26: $34
    dec de                                        ; $5e27: $1b
    daa                                           ; $5e28: $27
    jr c, @-$3e                                   ; $5e29: $38 $c0

    rst $38                                       ; $5e2b: $ff
    rst $38                                       ; $5e2c: $ff
    sbc b                                         ; $5e2d: $98
    ld [$1818], sp                                ; $5e2e: $08 $18 $18
    jr jr_009_5e3b                                ; $5e31: $18 $08

    nop                                           ; $5e33: $00
    nop                                           ; $5e34: $00
    rst $38                                       ; $5e35: $ff
    ret nz                                        ; $5e36: $c0

    add b                                         ; $5e37: $80
    ld [hl], b                                    ; $5e38: $70

jr_009_5e39:
    ldh [$5e], a                                  ; $5e39: $e0 $5e

jr_009_5e3b:
    cp h                                          ; $5e3b: $bc
    inc bc                                        ; $5e3c: $03
    rst $38                                       ; $5e3d: $ff
    rst $38                                       ; $5e3e: $ff
    and l                                         ; $5e3f: $a5
    db $e3                                        ; $5e40: $e3
    di                                            ; $5e41: $f3
    and d                                         ; $5e42: $a2
    sbc d                                         ; $5e43: $9a
    ld a, [c]                                     ; $5e44: $f2
    cp b                                          ; $5e45: $b8
    ret nc                                        ; $5e46: $d0

    rst $38                                       ; $5e47: $ff
    ld c, h                                       ; $5e48: $4c
    ld a, b                                       ; $5e49: $78
    ld c, h                                       ; $5e4a: $4c
    ld a, b                                       ; $5e4b: $78
    ld b, l                                       ; $5e4c: $45
    ld a, h                                       ; $5e4d: $7c
    add e                                         ; $5e4e: $83
    rst $38                                       ; $5e4f: $ff
    rst $38                                       ; $5e50: $ff
    ld d, $1c                                     ; $5e51: $16 $1c
    inc a                                         ; $5e53: $3c
    jr jr_009_5e7e                                ; $5e54: $18 $28

    jr c, jr_009_5ed4                             ; $5e56: $38 $7c

    jr z, @+$01                                   ; $5e58: $28 $ff

    ld d, h                                       ; $5e5a: $54
    ld l, h                                       ; $5e5b: $6c
    xor $54                                       ; $5e5c: $ee $54
    or e                                          ; $5e5e: $b3
    rst $08                                       ; $5e5f: $cf
    ld b, d                                       ; $5e60: $42
    cp l                                          ; $5e61: $bd

jr_009_5e62:
    rst $38                                       ; $5e62: $ff
    ld c, a                                       ; $5e63: $4f
    ld b, h                                       ; $5e64: $44
    jr jr_009_5e76                                ; $5e65: $18 $0f

    ld [hl], a                                    ; $5e67: $77
    jr c, jr_009_5ed8                             ; $5e68: $38 $6e

    ld [hl], c                                    ; $5e6a: $71
    rst $38                                       ; $5e6b: $ff
    ld sp, $1f1e                                  ; $5e6c: $31 $1e $1f
    ld [$0f88], sp                                ; $5e6f: $08 $88 $0f
    ld a, [c]                                     ; $5e72: $f2
    db $fd                                        ; $5e73: $fd
    rst $38                                       ; $5e74: $ff
    ld [hl+], a                                   ; $5e75: $22

jr_009_5e76:
    db $e3                                        ; $5e76: $e3
    db $e3                                        ; $5e77: $e3
    inc hl                                        ; $5e78: $23
    and e                                         ; $5e79: $a3
    ld h, d                                       ; $5e7a: $62
    ld h, b                                       ; $5e7b: $60
    and b                                         ; $5e7c: $a0
    rst $38                                       ; $5e7d: $ff

jr_009_5e7e:
    ldh [rNR41], a                                ; $5e7e: $e0 $20
    jr nz, jr_009_5e62                            ; $5e80: $20 $e0

    db $e3                                        ; $5e82: $e3
    ld hl, $ff1e                                  ; $5e83: $21 $1e $ff
    rst $38                                       ; $5e86: $ff
    add [hl]                                      ; $5e87: $86
    add h                                         ; $5e88: $84
    adc h                                         ; $5e89: $8c
    inc b                                         ; $5e8a: $04
    jr jr_009_5e99                                ; $5e8b: $18 $0c

    inc [hl]                                      ; $5e8d: $34
    inc e                                         ; $5e8e: $1c
    rst $38                                       ; $5e8f: $ff
    ld h, e                                       ; $5e90: $63
    ld a, $dd                                     ; $5e91: $3e $dd
    ld h, e                                       ; $5e93: $63
    add [hl]                                      ; $5e94: $86
    ld sp, hl                                     ; $5e95: $f9
    db $10                                        ; $5e96: $10
    rst $28                                       ; $5e97: $ef
    rst $38                                       ; $5e98: $ff

jr_009_5e99:
    ld h, d                                       ; $5e99: $62
    inc hl                                        ; $5e9a: $23
    ld h, d                                       ; $5e9b: $62
    ld h, e                                       ; $5e9c: $63
    ld h, d                                       ; $5e9d: $62
    inc hl                                        ; $5e9e: $23
    ld [bc], a                                    ; $5e9f: $02
    inc bc                                        ; $5ea0: $03
    rst $38                                       ; $5ea1: $ff
    ld bc, $c101                                  ; $5ea2: $01 $01 $c1
    add c                                         ; $5ea5: $81
    ld a, c                                       ; $5ea6: $79
    pop af                                        ; $5ea7: $f1
    ld c, [hl]                                    ; $5ea8: $4e
    cp a                                          ; $5ea9: $bf
    rst $38                                       ; $5eaa: $ff
    ld h, a                                       ; $5eab: $67
    and l                                         ; $5eac: $a5
    ld h, l                                       ; $5ead: $65
    and a                                         ; $5eae: $a7
    rst $20                                       ; $5eaf: $e7
    inc hl                                        ; $5eb0: $23
    ld [c], a                                     ; $5eb1: $e2
    inc hl                                        ; $5eb2: $23
    ld a, a                                       ; $5eb3: $7f
    or e                                          ; $5eb4: $b3
    ld h, c                                       ; $5eb5: $61
    pop de                                        ; $5eb6: $d1
    ld sp, $f119                                  ; $5eb7: $31 $19 $f1
    ld c, $80                                     ; $5eba: $0e $80
    xor $ff                                       ; $5ebc: $ee $ff
    rst $38                                       ; $5ebe: $ff
    add b                                         ; $5ebf: $80
    adc h                                         ; $5ec0: $8c
    di                                            ; $5ec1: $f3
    di                                            ; $5ec2: $f3
    adc h                                         ; $5ec3: $8c
    sbc [hl]                                      ; $5ec4: $9e
    pop hl                                        ; $5ec5: $e1
    rst $38                                       ; $5ec6: $ff
    ld h, c                                       ; $5ec7: $61
    ld e, [hl]                                    ; $5ec8: $5e
    ld a, a                                       ; $5ec9: $7f
    ld b, b                                       ; $5eca: $40
    ld e, h                                       ; $5ecb: $5c
    ld h, e                                       ; $5ecc: $63
    add b                                         ; $5ecd: $80
    rst $38                                       ; $5ece: $ff
    nop                                           ; $5ecf: $00
    nop                                           ; $5ed0: $00
    nop                                           ; $5ed1: $00
    rst $38                                       ; $5ed2: $ff
    rst $38                                       ; $5ed3: $ff

jr_009_5ed4:
    nop                                           ; $5ed4: $00
    ldh [$1f], a                                  ; $5ed5: $e0 $1f
    rra                                           ; $5ed7: $1f

jr_009_5ed8:
    ldh [$f0], a                                  ; $5ed8: $e0 $f0
    rrca                                          ; $5eda: $0f
    rst $38                                       ; $5edb: $ff
    adc a                                         ; $5edc: $8f
    ld [hl], b                                    ; $5edd: $70
    ld [hl], b                                    ; $5ede: $70
    adc a                                         ; $5edf: $8f
    rst $18                                       ; $5ee0: $df
    jr nz, jr_009_5f14                            ; $5ee1: $20 $31

    adc $ff                                       ; $5ee3: $ce $ff
    rst $38                                       ; $5ee5: $ff
    nop                                           ; $5ee6: $00
    add hl, sp                                    ; $5ee7: $39
    add $c7                                       ; $5ee8: $c6 $c7
    jr c, jr_009_5f64                             ; $5eea: $38 $78

    add a                                         ; $5eec: $87
    rst $38                                       ; $5eed: $ff
    adc a                                         ; $5eee: $8f
    ld [hl], b                                    ; $5eef: $70
    ldh a, [rIF]                                  ; $5ef0: $f0 $0f
    rra                                           ; $5ef2: $1f
    ldh [$e1], a                                  ; $5ef3: $e0 $e1
    ld e, $ff                                     ; $5ef5: $1e $ff
    ld hl, sp+$07                                 ; $5ef7: $f8 $07
    add hl, sp                                    ; $5ef9: $39
    add $83                                       ; $5efa: $c6 $83
    ld a, h                                       ; $5efc: $7c
    ld [hl], d                                    ; $5efd: $72
    adc l                                         ; $5efe: $8d
    rst $38                                       ; $5eff: $ff
    add e                                         ; $5f00: $83
    ld a, h                                       ; $5f01: $7c
    ld a, [c]                                     ; $5f02: $f2

jr_009_5f03:
    dec c                                         ; $5f03: $0d
    inc bc                                        ; $5f04: $03
    db $fc                                        ; $5f05: $fc
    ld a, [c]                                     ; $5f06: $f2
    dec c                                         ; $5f07: $0d
    rst $38                                       ; $5f08: $ff
    rst $20                                       ; $5f09: $e7
    jr jr_009_5f03                                ; $5f0a: $18 $f7

    ld [$3bc4], sp                                ; $5f0c: $08 $c4 $3b
    scf                                           ; $5f0f: $37
    ret z                                         ; $5f10: $c8

    rst $38                                       ; $5f11: $ff

jr_009_5f12:
    sub b                                         ; $5f12: $90
    ld l, a                                       ; $5f13: $6f

jr_009_5f14:
    inc bc                                        ; $5f14: $03
    db $fc                                        ; $5f15: $fc
    db $e3                                        ; $5f16: $e3
    inc e                                         ; $5f17: $1c
    nop                                           ; $5f18: $00
    rst $38                                       ; $5f19: $ff
    rst $38                                       ; $5f1a: $ff
    ld a, d                                       ; $5f1b: $7a
    add l                                         ; $5f1c: $85
    ld a, [hl-]                                   ; $5f1d: $3a
    push bc                                       ; $5f1e: $c5

jr_009_5f1f:
    ld [de], a                                    ; $5f1f: $12
    db $ed                                        ; $5f20: $ed
    jp c, $ff25                                   ; $5f21: $da $25 $ff

    ld a, [de]                                    ; $5f24: $1a
    push hl                                       ; $5f25: $e5
    add hl, sp                                    ; $5f26: $39
    add $a1                                       ; $5f27: $c6 $a1
    ld e, [hl]                                    ; $5f29: $5e
    ld b, $f9                                     ; $5f2a: $06 $f9
    rst $38                                       ; $5f2c: $ff
    swap h                                        ; $5f2d: $cb $34
    add e                                         ; $5f2f: $83
    ld a, h                                       ; $5f30: $7c
    sub e                                         ; $5f31: $93
    ld l, h                                       ; $5f32: $6c
    sub b                                         ; $5f33: $90
    ld l, a                                       ; $5f34: $6f
    rst $38                                       ; $5f35: $ff
    ld b, b                                       ; $5f36: $40
    cp a                                          ; $5f37: $bf
    rlca                                          ; $5f38: $07
    ld hl, sp+$1f                                 ; $5f39: $f8 $1f
    ldh [$30], a                                  ; $5f3b: $e0 $30
    rst $08                                       ; $5f3d: $cf
    rst $38                                       ; $5f3e: $ff
    db $d3                                        ; $5f3f: $d3
    inc l                                         ; $5f40: $2c
    ret nz                                        ; $5f41: $c0

    ccf                                           ; $5f42: $3f
    add hl, bc                                    ; $5f43: $09
    or $09                                        ; $5f44: $f6 $09
    or $ff                                        ; $5f46: $f6 $ff
    ld [bc], a                                    ; $5f48: $02
    db $fd                                        ; $5f49: $fd
    ldh [$1f], a                                  ; $5f4a: $e0 $1f
    ret c                                         ; $5f4c: $d8

    daa                                           ; $5f4d: $27
    jr nc, jr_009_5f1f                            ; $5f4e: $30 $cf

    rst $38                                       ; $5f50: $ff
    ld e, [hl]                                    ; $5f51: $5e
    and c                                         ; $5f52: $a1
    ld e, b                                       ; $5f53: $58
    and a                                         ; $5f54: $a7
    ld d, c                                       ; $5f55: $51
    xor [hl]                                      ; $5f56: $ae
    ld e, e                                       ; $5f57: $5b
    and h                                         ; $5f58: $a4
    rst $38                                       ; $5f59: $ff
    ret c                                         ; $5f5a: $d8

    daa                                           ; $5f5b: $27
    sub b                                         ; $5f5c: $90
    ld l, a                                       ; $5f5d: $6f
    and l                                         ; $5f5e: $a5
    ld e, d                                       ; $5f5f: $5a
    ld h, b                                       ; $5f60: $60
    sbc a                                         ; $5f61: $9f
    rst $38                                       ; $5f62: $ff
    rst $20                                       ; $5f63: $e7

jr_009_5f64:
    jr jr_009_5f12                                ; $5f64: $18 $ac

    ld d, e                                       ; $5f66: $53
    adc a                                         ; $5f67: $8f
    ld [hl], b                                    ; $5f68: $70
    ld l, b                                       ; $5f69: $68
    sub a                                         ; $5f6a: $97
    rst $38                                       ; $5f6b: $ff
    adc c                                         ; $5f6c: $89
    halt                                          ; $5f6d: $76
    jp $873c                                      ; $5f6e: $c3 $3c $87


    ld a, b                                       ; $5f71: $78
    add b                                         ; $5f72: $80
    ld a, a                                       ; $5f73: $7f
    rst $38                                       ; $5f74: $ff
    rra                                           ; $5f75: $1f
    ldh [$9b], a                                  ; $5f76: $e0 $9b
    ld h, h                                       ; $5f78: $64
    call z, Call_000_0f33                         ; $5f79: $cc $33 $0f
    ldh a, [rIE]                                  ; $5f7c: $f0 $ff
    ret z                                         ; $5f7e: $c8

    scf                                           ; $5f7f: $37
    rrca                                          ; $5f80: $0f
    ldh a, [$c9]                                  ; $5f81: $f0 $c9
    ld [hl], $0e                                  ; $5f83: $36 $0e
    pop af                                        ; $5f85: $f1
    rst $38                                       ; $5f86: $ff
    rst $38                                       ; $5f87: $ff
    nop                                           ; $5f88: $00
    cp a                                          ; $5f89: $bf
    ld b, b                                       ; $5f8a: $40
    ld [hl], b                                    ; $5f8b: $70
    adc a                                         ; $5f8c: $8f
    rst $08                                       ; $5f8d: $cf

jr_009_5f8e:
    jr nc, jr_009_5f8e                            ; $5f8e: $30 $fe

    ld l, [hl]                                    ; $5f90: $6e
    pop hl                                        ; $5f91: $e1
    di                                            ; $5f92: $f3
    inc c                                         ; $5f93: $0c
    ld l, [hl]                                    ; $5f94: $6e
    sub c                                         ; $5f95: $91
    rst $38                                       ; $5f96: $ff
    nop                                           ; $5f97: $00
    pop bc                                        ; $5f98: $c1
    rst $38                                       ; $5f99: $ff
    ld a, $7f                                     ; $5f9a: $3e $7f
    add b                                         ; $5f9c: $80
    add b                                         ; $5f9d: $80
    ld a, a                                       ; $5f9e: $7f
    ld a, a                                       ; $5f9f: $7f
    add b                                         ; $5fa0: $80
    ret nz                                        ; $5fa1: $c0

    rra                                           ; $5fa2: $1f
    ccf                                           ; $5fa3: $3f
    ccf                                           ; $5fa4: $3f
    ret nz                                        ; $5fa5: $c0

    ldh [$1f], a                                  ; $5fa6: $e0 $1f
    nop                                           ; $5fa8: $00
    nop                                           ; $5fa9: $00
    nop                                           ; $5faa: $00
    rst $38                                       ; $5fab: $ff
    rst $28                                       ; $5fac: $ef
    db $10                                        ; $5fad: $10
    sbc d                                         ; $5fae: $9a
    ld h, l                                       ; $5faf: $65
    halt                                          ; $5fb0: $76
    adc c                                         ; $5fb1: $89
    call $ff32                                    ; $5fb2: $cd $32 $ff
    dec sp                                        ; $5fb5: $3b
    call nz, Call_000_09f6                        ; $5fb6: $c4 $f6 $09
    add hl, de                                    ; $5fb9: $19
    and $00                                       ; $5fba: $e6 $00
    rst $38                                       ; $5fbc: $ff
    rst $38                                       ; $5fbd: $ff
    ld a, $c1                                     ; $5fbe: $3e $c1
    jp $fc3c                                      ; $5fc0: $c3 $3c $fc


    inc bc                                        ; $5fc3: $03

jr_009_5fc4:
    sbc e                                         ; $5fc4: $9b
    ld h, h                                       ; $5fc5: $64
    rst $38                                       ; $5fc6: $ff
    ld l, h                                       ; $5fc7: $6c
    sub e                                         ; $5fc8: $93
    rst $00                                       ; $5fc9: $c7

jr_009_5fca:
    jr c, jr_009_5fc4                             ; $5fca: $38 $f8

    rlca                                          ; $5fcc: $07
    nop                                           ; $5fcd: $00
    rst $38                                       ; $5fce: $ff
    rst $38                                       ; $5fcf: $ff
    ld h, e                                       ; $5fd0: $63
    sbc h                                         ; $5fd1: $9c
    sbc b                                         ; $5fd2: $98
    ld h, a                                       ; $5fd3: $67
    ld [hl], c                                    ; $5fd4: $71
    adc [hl]                                      ; $5fd5: $8e
    adc h                                         ; $5fd6: $8c
    ld [hl], e                                    ; $5fd7: $73
    rst $38                                       ; $5fd8: $ff
    ld a, b                                       ; $5fd9: $78
    add a                                         ; $5fda: $87
    add $39                                       ; $5fdb: $c6 $39
    inc a                                         ; $5fdd: $3c
    jp $ff00                                      ; $5fde: $c3 $00 $ff


    rst $38                                       ; $5fe1: $ff
    ret nc                                        ; $5fe2: $d0

    cpl                                           ; $5fe3: $2f
    add hl, sp                                    ; $5fe4: $39
    add $c3                                       ; $5fe5: $c6 $c3
    inc a                                         ; $5fe7: $3c
    di                                            ; $5fe8: $f3
    inc c                                         ; $5fe9: $0c
    rst $38                                       ; $5fea: $ff
    ld [bc], a                                    ; $5feb: $02
    db $fd                                        ; $5fec: $fd
    ld [hl-], a                                   ; $5fed: $32
    call $fc03                                    ; $5fee: $cd $03 $fc
    ld b, d                                       ; $5ff1: $42
    cp l                                          ; $5ff2: $bd
    rst $38                                       ; $5ff3: $ff
    ld b, [hl]                                    ; $5ff4: $46
    cp c                                          ; $5ff5: $b9
    ret nz                                        ; $5ff6: $c0

    ccf                                           ; $5ff7: $3f
    ld b, b                                       ; $5ff8: $40
    cp a                                          ; $5ff9: $bf
    and b                                         ; $5ffa: $a0
    ld e, a                                       ; $5ffb: $5f
    rst $38                                       ; $5ffc: $ff
    ret z                                         ; $5ffd: $c8

    scf                                           ; $5ffe: $37
    ldh a, [rIF]                                  ; $5fff: $f0 $0f
    jr c, jr_009_5fca                             ; $6001: $38 $c7

    nop                                           ; $6003: $00
    rst $38                                       ; $6004: $ff
    rst $38                                       ; $6005: $ff

jr_009_6006:
    ld a, a                                       ; $6006: $7f
    add b                                         ; $6007: $80
    ld [hl], b                                    ; $6008: $70
    adc a                                         ; $6009: $8f
    ld c, a                                       ; $600a: $4f
    or b                                          ; $600b: $b0
    ld [hl], c                                    ; $600c: $71
    adc [hl]                                      ; $600d: $8e
    rst $38                                       ; $600e: $ff
    ld a, $c1                                     ; $600f: $3e $c1
    inc bc                                        ; $6011: $03
    db $fc                                        ; $6012: $fc
    nop                                           ; $6013: $00
    rst $38                                       ; $6014: $ff
    nop                                           ; $6015: $00
    rst $38                                       ; $6016: $ff
    ei                                            ; $6017: $fb
    xor $11                                       ; $6018: $ee $11
    and b                                         ; $601a: $a0
    pop hl                                        ; $601b: $e1
    call z, Call_000_3833                         ; $601c: $cc $33 $38
    rst $00                                       ; $601f: $c7
    ldh a, [$fd]                                  ; $6020: $f0 $fd
    rrca                                          ; $6022: $0f
    ldh a, [$e1]                                  ; $6023: $f0 $e1
    ld h, d                                       ; $6025: $62
    sbc l                                         ; $6026: $9d
    ld b, e                                       ; $6027: $43
    cp h                                          ; $6028: $bc
    ld [bc], a                                    ; $6029: $02
    db $fd                                        ; $602a: $fd
    rst $38                                       ; $602b: $ff
    rlca                                          ; $602c: $07
    ld hl, sp+$1c                                 ; $602d: $f8 $1c
    db $e3                                        ; $602f: $e3
    rla                                           ; $6030: $17
    add sp, $18                                   ; $6031: $e8 $18
    rst $20                                       ; $6033: $e7
    rst $38                                       ; $6034: $ff
    jr nc, jr_009_6006                            ; $6035: $30 $cf

    rrca                                          ; $6037: $0f
    ldh a, [$9e]                                  ; $6038: $f0 $9e
    ld h, c                                       ; $603a: $61
    ld d, c                                       ; $603b: $51
    xor [hl]                                      ; $603c: $ae
    rst $38                                       ; $603d: $ff
    adc a                                         ; $603e: $8f
    ld [hl], b                                    ; $603f: $70
    ld c, b                                       ; $6040: $48
    or a                                          ; $6041: $b7
    call z, Call_000_0033                         ; $6042: $cc $33 $00
    rst $38                                       ; $6045: $ff
    rst $38                                       ; $6046: $ff
    inc bc                                        ; $6047: $03
    db $fc                                        ; $6048: $fc
    swap h                                        ; $6049: $cb $34
    inc e                                         ; $604b: $1c
    db $e3                                        ; $604c: $e3
    sub a                                         ; $604d: $97
    ld l, b                                       ; $604e: $68
    rst $38                                       ; $604f: $ff
    add hl, sp                                    ; $6050: $39
    add $2e                                       ; $6051: $c6 $2e
    pop de                                        ; $6053: $d1
    halt                                          ; $6054: $76
    adc c                                         ; $6055: $89
    reti                                          ; $6056: $d9


    ld h, $ff                                     ; $6057: $26 $ff
    add b                                         ; $6059: $80
    ld a, a                                       ; $605a: $7f
    or e                                          ; $605b: $b3
    ld c, h                                       ; $605c: $4c

jr_009_605d:
    call c, Call_009_6723                         ; $605d: $dc $23 $67
    sbc b                                         ; $6060: $98
    rst $38                                       ; $6061: $ff
    cp b                                          ; $6062: $b8
    ld b, a                                       ; $6063: $47
    rst $08                                       ; $6064: $cf
    jr nc, jr_009_605d                            ; $6065: $30 $f6

    add hl, bc                                    ; $6067: $09
    add hl, sp                                    ; $6068: $39
    add $ff                                       ; $6069: $c6 $ff
    nop                                           ; $606b: $00
    rst $38                                       ; $606c: $ff
    sbc a                                         ; $606d: $9f
    ld h, b                                       ; $606e: $60
    ld [hl], b                                    ; $606f: $70
    adc a                                         ; $6070: $8f
    rst $08                                       ; $6071: $cf
    jr nc, @+$01                                  ; $6072: $30 $ff

    ld sp, $fece                                  ; $6074: $31 $ce $fe
    ld bc, $fc03                                  ; $6077: $01 $03 $fc
    db $fc                                        ; $607a: $fc
    inc bc                                        ; $607b: $03
    inc bc                                        ; $607c: $03
    nop                                           ; $607d: $00
    rst $38                                       ; $607e: $ff
    nop                                           ; $607f: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    rst $38                                       ; $6082: $ff
    rst $38                                       ; $6083: $ff
    nop                                           ; $6084: $00
    dec sp                                        ; $6085: $3b
    call nz, Call_000_38c7                        ; $6086: $c4 $c7 $38
    ld a, b                                       ; $6089: $78
    add a                                         ; $608a: $87
    rst $38                                       ; $608b: $ff
    adc a                                         ; $608c: $8f
    ld [hl], b                                    ; $608d: $70
    ld hl, sp+$07                                 ; $608e: $f8 $07
    rlca                                          ; $6090: $07
    ld hl, sp-$04                                 ; $6091: $f8 $fc
    inc bc                                        ; $6093: $03
    rst $28                                       ; $6094: $ef
    rst $38                                       ; $6095: $ff
    nop                                           ; $6096: $00
    inc a                                         ; $6097: $3c
    jp $e3f0                                      ; $6098: $c3 $f0 $e3


    di                                            ; $609b: $f3
    inc c                                         ; $609c: $0c
    inc e                                         ; $609d: $1c
    rst $38                                       ; $609e: $ff
    db $e3                                        ; $609f: $e3
    rst $20                                       ; $60a0: $e7
    jr @+$01                                      ; $60a1: $18 $ff

    nop                                           ; $60a3: $00
    pop hl                                        ; $60a4: $e1
    ld e, $9f                                     ; $60a5: $1e $9f
    rst $38                                       ; $60a7: $ff
    ld h, b                                       ; $60a8: $60
    ld h, b                                       ; $60a9: $60
    sbc a                                         ; $60aa: $9f
    rst $18                                       ; $60ab: $df
    jr nz, @-$4e                                  ; $60ac: $20 $b0

    ld c, a                                       ; $60ae: $4f
    ld a, a                                       ; $60af: $7f
    rst $38                                       ; $60b0: $ff
    add b                                         ; $60b1: $80
    jp $f93c                                      ; $60b2: $c3 $3c $f9


    ld b, $f1                                     ; $60b5: $06 $f1
    ld c, $0c                                     ; $60b7: $0e $0c
    rst $38                                       ; $60b9: $ff
    di                                            ; $60ba: $f3
    ld hl, sp+$07                                 ; $60bb: $f8 $07
    add [hl]                                      ; $60bd: $86
    ld a, c                                       ; $60be: $79
    ld a, h                                       ; $60bf: $7c
    add e                                         ; $60c0: $83
    jp Jump_000_3cff                              ; $60c1: $c3 $ff $3c


    ld a, $c1                                     ; $60c4: $3e $c1
    rst $38                                       ; $60c6: $ff
    nop                                           ; $60c7: $00
    db $fd                                        ; $60c8: $fd
    ld [bc], a                                    ; $60c9: $02
    inc bc                                        ; $60ca: $03
    rst $38                                       ; $60cb: $ff
    db $fc                                        ; $60cc: $fc
    cp $01                                        ; $60cd: $fe $01
    ld bc, $3ffe                                  ; $60cf: $01 $fe $3f
    ret nz                                        ; $60d2: $c0

    add b                                         ; $60d3: $80
    rst $38                                       ; $60d4: $ff
    ld a, a                                       ; $60d5: $7f
    ld b, e                                       ; $60d6: $43
    cp h                                          ; $60d7: $bc
    add b                                         ; $60d8: $80
    ld a, a                                       ; $60d9: $7f
    pop bc                                        ; $60da: $c1
    ld a, $9c                                     ; $60db: $3e $9c
    rst $38                                       ; $60dd: $ff
    ld h, e                                       ; $60de: $63
    ld b, c                                       ; $60df: $41
    cp [hl]                                       ; $60e0: $be
    add e                                         ; $60e1: $83
    ld a, h                                       ; $60e2: $7c
    ld h, b                                       ; $60e3: $60
    sbc a                                         ; $60e4: $9f
    add $ff                                       ; $60e5: $c6 $ff
    add hl, sp                                    ; $60e7: $39
    and [hl]                                      ; $60e8: $a6
    ld e, c                                       ; $60e9: $59
    ld bc, $83fe                                  ; $60ea: $01 $fe $83
    ld a, h                                       ; $60ed: $7c
    dec sp                                        ; $60ee: $3b

jr_009_60ef:
    rst $38                                       ; $60ef: $ff

Jump_009_60f0:
    call nz, Call_000_0df2                        ; $60f0: $c4 $f2 $0d
    add e                                         ; $60f3: $83
    ld a, h                                       ; $60f4: $7c
    ld b, $f9                                     ; $60f5: $06 $f9
    ld h, a                                       ; $60f7: $67

jr_009_60f8:
    rst $30                                       ; $60f8: $f7
    sbc b                                         ; $60f9: $98
    db $e4                                        ; $60fa: $e4
    dec de                                        ; $60fb: $1b
    and b                                         ; $60fc: $a0
    push hl                                       ; $60fd: $e5
    adc [hl]                                      ; $60fe: $8e
    ld [hl], c                                    ; $60ff: $71
    ldh a, [rIF]                                  ; $6100: $f0 $0f
    rst $38                                       ; $6102: $ff
    ld de, $c3ee                                  ; $6103: $11 $ee $c3
    inc a                                         ; $6106: $3c
    sbc a                                         ; $6107: $9f
    ld h, b                                       ; $6108: $60
    sub c                                         ; $6109: $91
    ld l, [hl]                                    ; $610a: $6e
    rst $38                                       ; $610b: $ff
    ccf                                           ; $610c: $3f
    ret nz                                        ; $610d: $c0

    jr nz, jr_009_60ef                            ; $610e: $20 $df

    ld a, a                                       ; $6110: $7f
    add b                                         ; $6111: $80
    ldh a, [rIF]                                  ; $6112: $f0 $0f
    rst $38                                       ; $6114: $ff
    rst $38                                       ; $6115: $ff
    nop                                           ; $6116: $00
    jp $ff3c                                      ; $6117: $c3 $3c $ff


    nop                                           ; $611a: $00
    di                                            ; $611b: $f3
    inc c                                         ; $611c: $0c
    cp a                                          ; $611d: $bf
    rrca                                          ; $611e: $0f
    ldh a, [$f8]                                  ; $611f: $f0 $f8
    rlca                                          ; $6121: $07
    add a                                         ; $6122: $87
    ld a, b                                       ; $6123: $78
    and b                                         ; $6124: $a0
    db $ed                                        ; $6125: $ed
    rst $38                                       ; $6126: $ff
    rst $38                                       ; $6127: $ff
    nop                                           ; $6128: $00
    add b                                         ; $6129: $80
    ld a, a                                       ; $612a: $7f
    ld a, a                                       ; $612b: $7f
    add b                                         ; $612c: $80
    rst $38                                       ; $612d: $ff
    nop                                           ; $612e: $00
    add $ff                                       ; $612f: $c6 $ff
    add hl, sp                                    ; $6131: $39
    cp a                                          ; $6132: $bf
    ld b, b                                       ; $6133: $40

jr_009_6134:
    ld h, b                                       ; $6134: $60
    sbc a                                         ; $6135: $9f
    sbc a                                         ; $6136: $9f
    ld h, b                                       ; $6137: $60
    ld [hl], b                                    ; $6138: $70
    rra                                           ; $6139: $1f
    adc a                                         ; $613a: $8f
    rst $08                                       ; $613b: $cf
    jr nc, jr_009_60f8                            ; $613c: $30 $ba

    ld b, l                                       ; $613e: $45
    nop                                           ; $613f: $00
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    rst $38                                       ; $6142: $ff
    sub e                                         ; $6143: $93
    ld l, h                                       ; $6144: $6c
    xor $11                                       ; $6145: $ee $11
    xor c                                         ; $6147: $a9
    ld d, [hl]                                    ; $6148: $56
    ld d, [hl]                                    ; $6149: $56
    xor c                                         ; $614a: $a9
    rst $38                                       ; $614b: $ff
    pop de                                        ; $614c: $d1
    ld l, $26                                     ; $614d: $2e $26
    reti                                          ; $614f: $d9


    rst $18                                       ; $6150: $df
    jr nz, jr_009_6153                            ; $6151: $20 $00

jr_009_6153:
    rst $38                                       ; $6153: $ff
    rst $38                                       ; $6154: $ff
    sbc b                                         ; $6155: $98
    ld h, a                                       ; $6156: $67
    ld a, a                                       ; $6157: $7f
    add b                                         ; $6158: $80
    call nz, Call_000_3f3b                        ; $6159: $c4 $3b $3f
    ret nz                                        ; $615c: $c0

    rst $38                                       ; $615d: $ff
    jp $7d3c                                      ; $615e: $c3 $3c $7d


    add d                                         ; $6161: $82
    add [hl]                                      ; $6162: $86

jr_009_6163:
    ld a, c                                       ; $6163: $79
    nop                                           ; $6164: $00
    rst $38                                       ; $6165: $ff
    rst $38                                       ; $6166: $ff
    inc a                                         ; $6167: $3c
    jp Jump_000_38c7                              ; $6168: $c3 $c7 $38


    jr c, jr_009_6134                             ; $616b: $38 $c7

    rst $20                                       ; $616d: $e7
    jr @+$01                                      ; $616e: $18 $ff

    inc a                                         ; $6170: $3c
    jp Jump_000_3cc3                              ; $6171: $c3 $c3 $3c


    ld a, [hl]                                    ; $6174: $7e
    add c                                         ; $6175: $81
    nop                                           ; $6176: $00
    rst $38                                       ; $6177: $ff
    rst $38                                       ; $6178: $ff
    pop hl                                        ; $6179: $e1
    ld e, $9e                                     ; $617a: $1e $9e
    ld h, c                                       ; $617c: $61
    ld h, c                                       ; $617d: $61
    sbc [hl]                                      ; $617e: $9e
    rst $18                                       ; $617f: $df
    jr nz, @+$01                                  ; $6180: $20 $ff

    jr nz, jr_009_6163                            ; $6182: $20 $df

    rst $18                                       ; $6184: $df
    jr nz, jr_009_61b7                            ; $6185: $20 $30

    rst $08                                       ; $6187: $cf
    nop                                           ; $6188: $00
    rst $38                                       ; $6189: $ff
    rst $38                                       ; $618a: $ff
    sub c                                         ; $618b: $91
    ld l, [hl]                                    ; $618c: $6e
    ld a, h                                       ; $618d: $7c
    add e                                         ; $618e: $83
    ret nz                                        ; $618f: $c0

    ccf                                           ; $6190: $3f
    ld a, $c1                                     ; $6191: $3e $c1
    rst $38                                       ; $6193: $ff
    db $e3                                        ; $6194: $e3
    inc e                                         ; $6195: $1c
    sbc h                                         ; $6196: $9c
    ld h, e                                       ; $6197: $63
    ld [hl], a                                    ; $6198: $77
    adc b                                         ; $6199: $88
    nop                                           ; $619a: $00
    rst $38                                       ; $619b: $ff

jr_009_619c:
    rst $38                                       ; $619c: $ff
    ld d, l                                       ; $619d: $55
    xor d                                         ; $619e: $aa
    ld d, d                                       ; $619f: $52
    xor l                                         ; $61a0: $ad
    ld l, b                                       ; $61a1: $68
    sub a                                         ; $61a2: $97
    rrca                                          ; $61a3: $0f
    ldh a, [rIE]                                  ; $61a4: $f0 $ff
    add b                                         ; $61a6: $80
    ld a, a                                       ; $61a7: $7f
    ldh [$1f], a                                  ; $61a8: $e0 $1f
    ld l, b                                       ; $61aa: $68
    sub a                                         ; $61ab: $97
    inc bc                                        ; $61ac: $03
    db $fc                                        ; $61ad: $fc
    rst $38                                       ; $61ae: $ff
    adc a                                         ; $61af: $8f
    ld [hl], b                                    ; $61b0: $70
    adc $31                                       ; $61b1: $ce $31
    jr jr_009_619c                                ; $61b3: $18 $e7

    ldh a, [rIF]                                  ; $61b5: $f0 $0f

jr_009_61b7:
    rst $38                                       ; $61b7: $ff
    pop bc                                        ; $61b8: $c1
    ld a, $07                                     ; $61b9: $3e $07
    ld hl, sp+$1f                                 ; $61bb: $f8 $1f
    ldh [$f0], a                                  ; $61bd: $e0 $f0
    rrca                                          ; $61bf: $0f
    rst $38                                       ; $61c0: $ff
    adc [hl]                                      ; $61c1: $8e
    ld [hl], c                                    ; $61c2: $71
    ccf                                           ; $61c3: $3f
    ret nz                                        ; $61c4: $c0

    ld h, h                                       ; $61c5: $64
    sbc e                                         ; $61c6: $9b
    rst $38                                       ; $61c7: $ff
    nop                                           ; $61c8: $00
    db $fc                                        ; $61c9: $fc
    and b                                         ; $61ca: $a0
    rst $38                                       ; $61cb: $ff
    and b                                         ; $61cc: $a0
    db $e3                                        ; $61cd: $e3
    add c                                         ; $61ce: $81
    ld a, [hl]                                    ; $61cf: $7e
    ld a, [hl]                                    ; $61d0: $7e
    add c                                         ; $61d1: $81
    pop bc                                        ; $61d2: $c1
    ld a, $fe                                     ; $61d3: $3e $fe
    and b                                         ; $61d5: $a0
    jp hl                                         ; $61d6: $e9


    ld d, [hl]                                    ; $61d7: $56
    xor c                                         ; $61d8: $a9
    jp hl                                         ; $61d9: $e9


    ld d, $6f                                     ; $61da: $16 $6f
    sub b                                         ; $61dc: $90
    or b                                          ; $61dd: $b0
    ld a, a                                       ; $61de: $7f
    ld c, a                                       ; $61df: $4f
    rst $18                                       ; $61e0: $df
    jr nz, jr_009_6244                            ; $61e1: $20 $61

    sbc [hl]                                      ; $61e3: $9e
    nop                                           ; $61e4: $00
    rst $38                                       ; $61e5: $ff
    nop                                           ; $61e6: $00
    nop                                           ; $61e7: $00
    nop                                           ; $61e8: $00
    rst $38                                       ; $61e9: $ff
    rst $38                                       ; $61ea: $ff
    nop                                           ; $61eb: $00
    sbc c                                         ; $61ec: $99
    ld h, [hl]                                    ; $61ed: $66
    halt                                          ; $61ee: $76
    adc c                                         ; $61ef: $89
    rst $08                                       ; $61f0: $cf
    jr nc, @+$01                                  ; $61f1: $30 $ff

    jr c, @-$37                                   ; $61f3: $38 $c7

    rst $20                                       ; $61f5: $e7
    jr jr_009_6214                                ; $61f6: $18 $1c

    db $e3                                        ; $61f8: $e3
    di                                            ; $61f9: $f3
    inc c                                         ; $61fa: $0c
    rst $38                                       ; $61fb: $ff
    rst $38                                       ; $61fc: $ff
    nop                                           ; $61fd: $00
    di                                            ; $61fe: $f3
    inc c                                         ; $61ff: $0c
    inc e                                         ; $6200: $1c
    db $e3                                        ; $6201: $e3
    and $19                                       ; $6202: $e6 $19
    rst $38                                       ; $6204: $ff
    dec sp                                        ; $6205: $3b
    call nz, Call_000_33cc                        ; $6206: $c4 $cc $33
    ld [hl], a                                    ; $6209: $77
    adc b                                         ; $620a: $88
    cp b                                          ; $620b: $b8
    ld b, a                                       ; $620c: $47
    rst $38                                       ; $620d: $ff
    rst $38                                       ; $620e: $ff
    nop                                           ; $620f: $00
    adc h                                         ; $6210: $8c
    ld [hl], e                                    ; $6211: $73
    di                                            ; $6212: $f3
    inc c                                         ; $6213: $0c

jr_009_6214:
    ld e, $e1                                     ; $6214: $1e $e1
    rst $38                                       ; $6216: $ff
    pop hl                                        ; $6217: $e1
    ld e, $7f                                     ; $6218: $1e $7f
    add b                                         ; $621a: $80
    sbc h                                         ; $621b: $9c
    ld h, e                                       ; $621c: $63
    db $e3                                        ; $621d: $e3
    inc e                                         ; $621e: $1c
    rst $38                                       ; $621f: $ff
    rst $38                                       ; $6220: $ff
    nop                                           ; $6221: $00
    db $e3                                        ; $6222: $e3
    inc e                                         ; $6223: $1c
    sbc [hl]                                      ; $6224: $9e
    ld h, c                                       ; $6225: $61
    ld [hl], c                                    ; $6226: $71
    adc [hl]                                      ; $6227: $8e
    rst $38                                       ; $6228: $ff
    rst $08                                       ; $6229: $cf
    jr nc, jr_009_625e                            ; $622a: $30 $32

    call Call_000_00ff                            ; $622c: $cd $ff $00
    ret nz                                        ; $622f: $c0

    ccf                                           ; $6230: $3f
    rst $38                                       ; $6231: $ff
    rst $38                                       ; $6232: $ff
    nop                                           ; $6233: $00

jr_009_6234:
    rst $38                                       ; $6234: $ff
    nop                                           ; $6235: $00
    ld bc, $fefe                                  ; $6236: $01 $fe $fe
    ld bc, $03ff                                  ; $6239: $01 $ff $03
    db $fc                                        ; $623c: $fc
    db $fc                                        ; $623d: $fc
    inc bc                                        ; $623e: $03
    and a                                         ; $623f: $a7
    ld e, b                                       ; $6240: $58
    add hl, sp                                    ; $6241: $39
    add $ff                                       ; $6242: $c6 $ff

jr_009_6244:
    rst $38                                       ; $6244: $ff
    nop                                           ; $6245: $00
    inc sp                                        ; $6246: $33
    call z, $23dc                                 ; $6247: $cc $dc $23
    ld h, e                                       ; $624a: $63
    sbc h                                         ; $624b: $9c
    rst $38                                       ; $624c: $ff
    cp [hl]                                       ; $624d: $be
    ld b, c                                       ; $624e: $41
    rst $00                                       ; $624f: $c7
    jr c, jr_009_62ca                             ; $6250: $38 $78

    add a                                         ; $6252: $87
    sbc a                                         ; $6253: $9f
    ld h, b                                       ; $6254: $60
    nop                                           ; $6255: $00
    and b                                         ; $6256: $a0
    rst $38                                       ; $6257: $ff
    and b                                         ; $6258: $a0
    rst $38                                       ; $6259: $ff
    and b                                         ; $625a: $a0
    ld sp, hl                                     ; $625b: $f9
    nop                                           ; $625c: $00
    nop                                           ; $625d: $00

jr_009_625e:
    nop                                           ; $625e: $00
    rst $38                                       ; $625f: $ff
    inc c                                         ; $6260: $0c
    di                                            ; $6261: $f3
    ei                                            ; $6262: $fb
    inc b                                         ; $6263: $04
    call z, Call_000_3733                         ; $6264: $cc $33 $37
    ret z                                         ; $6267: $c8

    rst $38                                       ; $6268: $ff
    ldh a, [rIF]                                  ; $6269: $f0 $0f
    rra                                           ; $626b: $1f
    ldh [$e1], a                                  ; $626c: $e0 $e1
    ld e, $00                                     ; $626e: $1e $00
    rst $38                                       ; $6270: $ff
    rst $38                                       ; $6271: $ff
    rst $00                                       ; $6272: $c7
    jr c, jr_009_6234                             ; $6273: $38 $bf

    ld b, b                                       ; $6275: $40
    ld [hl], b                                    ; $6276: $70
    adc a                                         ; $6277: $8f
    rst $08                                       ; $6278: $cf
    jr nc, @+$01                                  ; $6279: $30 $ff

    ld a, b                                       ; $627b: $78
    add a                                         ; $627c: $87
    adc a                                         ; $627d: $8f
    ld [hl], b                                    ; $627e: $70
    di                                            ; $627f: $f3
    inc c                                         ; $6280: $0c

jr_009_6281:
    nop                                           ; $6281: $00
    rst $38                                       ; $6282: $ff
    rst $38                                       ; $6283: $ff
    ld a, $c1                                     ; $6284: $3e $c1
    pop bc                                        ; $6286: $c1
    ld a, $7f                                     ; $6287: $3e $7f
    add b                                         ; $6289: $80
    add b                                         ; $628a: $80
    ld a, a                                       ; $628b: $7f
    rst $38                                       ; $628c: $ff
    ld a, a                                       ; $628d: $7f
    add b                                         ; $628e: $80
    ret nz                                        ; $628f: $c0

    ccf                                           ; $6290: $3f
    ccf                                           ; $6291: $3f
    ret nz                                        ; $6292: $c0

    nop                                           ; $6293: $00
    rst $38                                       ; $6294: $ff
    rst $38                                       ; $6295: $ff
    ccf                                           ; $6296: $3f
    ret nz                                        ; $6297: $c0

    ldh [$1f], a                                  ; $6298: $e0 $1f
    rra                                           ; $629a: $1f
    ldh [$f0], a                                  ; $629b: $e0 $f0
    rrca                                          ; $629d: $0f
    rst $38                                       ; $629e: $ff
    adc a                                         ; $629f: $8f
    ld [hl], b                                    ; $62a0: $70
    ld [hl], b                                    ; $62a1: $70
    adc a                                         ; $62a2: $8f
    rst $18                                       ; $62a3: $df
    jr nz, jr_009_62a6                            ; $62a4: $20 $00

jr_009_62a6:
    rst $38                                       ; $62a6: $ff
    ccf                                           ; $62a7: $3f
    adc $31                                       ; $62a8: $ce $31
    add hl, sp                                    ; $62aa: $39
    add $c7                                       ; $62ab: $c6 $c7
    jr c, jr_009_6281                             ; $62ad: $38 $d2

    pop hl                                        ; $62af: $e1
    cp [hl]                                       ; $62b0: $be
    pop hl                                        ; $62b1: $e1
    rst $38                                       ; $62b2: $ff
    nop                                           ; $62b3: $00
    rst $38                                       ; $62b4: $ff
    rst $20                                       ; $62b5: $e7
    jr jr_009_62f0                                ; $62b6: $18 $38

    rst $00                                       ; $62b8: $c7
    adc a                                         ; $62b9: $8f
    ld [hl], b                                    ; $62ba: $70
    rst $38                                       ; $62bb: $ff
    ld a, b                                       ; $62bc: $78
    add a                                         ; $62bd: $87
    add a                                         ; $62be: $87
    ld a, b                                       ; $62bf: $78
    ld hl, sp+$07                                 ; $62c0: $f8 $07
    rlca                                          ; $62c2: $07
    ld hl, sp+$03                                 ; $62c3: $f8 $03
    nop                                           ; $62c5: $00
    rst $38                                       ; $62c6: $ff
    and b                                         ; $62c7: $a0
    rst $38                                       ; $62c8: $ff
    and b                                         ; $62c9: $a0

jr_009_62ca:
    rst $38                                       ; $62ca: $ff
    and b                                         ; $62cb: $a0
    ld sp, hl                                     ; $62cc: $f9
    nop                                           ; $62cd: $00
    nop                                           ; $62ce: $00
    nop                                           ; $62cf: $00
    rst $38                                       ; $62d0: $ff
    rst $38                                       ; $62d1: $ff
    nop                                           ; $62d2: $00
    inc a                                         ; $62d3: $3c
    jp Jump_000_38c7                              ; $62d4: $c3 $c7 $38


    ld sp, hl                                     ; $62d7: $f9
    ld b, $ff                                     ; $62d8: $06 $ff
    ld c, $f1                                     ; $62da: $0e $f1
    or $09                                        ; $62dc: $f6 $09
    add hl, de                                    ; $62de: $19
    and $e7                                       ; $62df: $e6 $e7
    jr @+$01                                      ; $62e1: $18 $ff

    rst $38                                       ; $62e3: $ff
    nop                                           ; $62e4: $00
    call c, Call_009_6723                         ; $62e5: $dc $23 $67
    sbc a                                         ; $62e8: $9f
    cp b                                          ; $62e9: $b8
    ld c, b                                       ; $62ea: $48
    rst $38                                       ; $62eb: $ff
    call z, $f438                                 ; $62ec: $cc $38 $f4
    inc c                                         ; $62ef: $0c

jr_009_62f0:
    inc a                                         ; $62f0: $3c
    call nz, Call_000_34cc                        ; $62f1: $c4 $cc $34
    rst $38                                       ; $62f4: $ff
    rst $38                                       ; $62f5: $ff
    nop                                           ; $62f6: $00
    ld [hl], b                                    ; $62f7: $70
    adc a                                         ; $62f8: $8f
    rst $08                                       ; $62f9: $cf
    ldh a, [$61]                                  ; $62fa: $f0 $61
    ld a, $ff                                     ; $62fc: $3e $ff
    ld [hl], $19                                  ; $62fe: $36 $19
    ld a, [de]                                    ; $6300: $1a
    dec c                                         ; $6301: $0d
    call $e687                                    ; $6302: $cd $87 $e6
    jp $ffff                                      ; $6305: $c3 $ff $ff


    nop                                           ; $6308: $00
    sbc d                                         ; $6309: $9a
    ld h, l                                       ; $630a: $65
    halt                                          ; $630b: $76
    adc c                                         ; $630c: $89
    call $ff32                                    ; $630d: $cd $32 $ff
    dec sp                                        ; $6310: $3b
    call nz, $e9d6                                ; $6311: $c4 $d6 $e9
    ld a, e                                       ; $6314: $7b
    daa                                           ; $6315: $27
    ld l, $3c                                     ; $6316: $2e $3c
    rst $38                                       ; $6318: $ff
    rst $38                                       ; $6319: $ff
    nop                                           ; $631a: $00
    jp $fc3c                                      ; $631b: $c3 $3c $fc


    inc bc                                        ; $631e: $03
    sbc d                                         ; $631f: $9a
    ld h, l                                       ; $6320: $65
    rst $38                                       ; $6321: $ff
    ld l, h                                       ; $6322: $6c
    sbc a                                         ; $6323: $9f
    db $d3                                        ; $6324: $d3
    ld [hl-], a                                   ; $6325: $32
    or d                                          ; $6326: $b2
    di                                            ; $6327: $f3
    ld b, c                                       ; $6328: $41
    ld b, c                                       ; $6329: $41
    rst $38                                       ; $632a: $ff
    rst $38                                       ; $632b: $ff
    nop                                           ; $632c: $00
    sub b                                         ; $632d: $90
    ld l, a                                       ; $632e: $6f
    nop                                           ; $632f: $00
    rst $38                                       ; $6330: $ff
    rrca                                          ; $6331: $0f
    ldh a, [rIE]                                  ; $6332: $f0 $ff
    ld a, b                                       ; $6334: $78
    add a                                         ; $6335: $87
    ld h, a                                       ; $6336: $67
    ld hl, sp-$47                                 ; $6337: $f8 $b9
    sub a                                         ; $6339: $97
    sub a                                         ; $633a: $97
    sbc [hl]                                      ; $633b: $9e
    rst $38                                       ; $633c: $ff
    rst $38                                       ; $633d: $ff
    nop                                           ; $633e: $00
    inc c                                         ; $633f: $0c
    di                                            ; $6340: $f3
    ld bc, $f0fe                                  ; $6341: $01 $fe $f0
    rrca                                          ; $6344: $0f
    sbc $a0                                       ; $6345: $de $a0
    pop hl                                        ; $6347: $e1
    adc l                                         ; $6348: $8d
    cp $d7                                        ; $6349: $fe $d7
    ld [hl], e                                    ; $634b: $73
    and b                                         ; $634c: $a0
    ld [c], a                                     ; $634d: $e2
    sbc b                                         ; $634e: $98
    jr c, @+$01                                   ; $634f: $38 $ff

    rst $00                                       ; $6351: $c7
    rrca                                          ; $6352: $0f
    ldh a, [$85]                                  ; $6353: $f0 $85
    ld a, e                                       ; $6355: $7b
    daa                                           ; $6356: $27
    sbc $8c                                       ; $6357: $de $8c
    db $fd                                        ; $6359: $fd
    ld hl, sp-$60                                 ; $635a: $f8 $a0
    ld [c], a                                     ; $635c: $e2
    jr nc, jr_009_6390                            ; $635d: $30 $31

    adc $fe                                       ; $635f: $ce $fe
    ld bc, $df83                                  ; $6361: $01 $83 $df
    db $fc                                        ; $6364: $fc
    call Call_009_777f                            ; $6365: $cd $7f $77
    ld [hl-], a                                   ; $6368: $32
    and b                                         ; $6369: $a0
    db $e3                                        ; $636a: $e3
    cp h                                          ; $636b: $bc
    ld [hl], e                                    ; $636c: $73
    rst $38                                       ; $636d: $ff
    ld e, c                                       ; $636e: $59
    rst $08                                       ; $636f: $cf
    rst $08                                       ; $6370: $cf
    ld b, [hl]                                    ; $6371: $46
    and [hl]                                      ; $6372: $a6
    jp nz, Jump_009_60f0                          ; $6373: $c2 $f0 $60

    cp $a0                                        ; $6376: $fe $a0
    pop hl                                        ; $6378: $e1
    ld l, h                                       ; $6379: $6c
    di                                            ; $637a: $f3
    db $db                                        ; $637b: $db
    sub h                                         ; $637c: $94
    sbc h                                         ; $637d: $9c
    inc de                                        ; $637e: $13
    scf                                           ; $637f: $37
    rst $38                                       ; $6380: $ff

Jump_009_6381:
    jr jr_009_63eb                                ; $6381: $18 $68

    scf                                           ; $6383: $37
    rst $08                                       ; $6384: $cf
    ld [hl], b                                    ; $6385: $70
    rst $38                                       ; $6386: $ff
    nop                                           ; $6387: $00
    sbc [hl]                                      ; $6388: $9e
    rst $38                                       ; $6389: $ff
    ld h, c                                       ; $638a: $61
    ld [hl], c                                    ; $638b: $71

jr_009_638c:
    adc [hl]                                      ; $638c: $8e
    adc a                                         ; $638d: $8f
    ld [hl], b                                    ; $638e: $70
    ld a, b                                       ; $638f: $78

jr_009_6390:
    add a                                         ; $6390: $87
    rst $00                                       ; $6391: $c7
    rra                                           ; $6392: $1f
    jr c, @+$3e                                   ; $6393: $38 $3c

    jp $1ce3                                      ; $6395: $c3 $e3 $1c


    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00
    rst $38                                       ; $639b: $ff
    ld e, $e1                                     ; $639c: $1e $e1
    di                                            ; $639e: $f3
    inc c                                         ; $639f: $0c
    rrca                                          ; $63a0: $0f
    ldh a, [$f8]                                  ; $63a1: $f0 $f8
    rlca                                          ; $63a3: $07
    rst $38                                       ; $63a4: $ff
    add a                                         ; $63a5: $87
    ld a, b                                       ; $63a6: $78
    ld a, h                                       ; $63a7: $7c
    add e                                         ; $63a8: $83
    jp Jump_000_003c                              ; $63a9: $c3 $3c $00


    rst $38                                       ; $63ac: $ff
    cp a                                          ; $63ad: $bf
    inc [hl]                                      ; $63ae: $34
    call z, $04fc                                 ; $63af: $cc $fc $04
    inc b                                         ; $63b2: $04
    db $fc                                        ; $63b3: $fc
    db $fc                                        ; $63b4: $fc
    db $e3                                        ; $63b5: $e3
    add h                                         ; $63b6: $84
    rst $38                                       ; $63b7: $ff
    ld a, h                                       ; $63b8: $7c
    inc bc                                        ; $63b9: $03
    rst $38                                       ; $63ba: $ff
    di                                            ; $63bb: $f3
    and c                                         ; $63bc: $a1
    pop af                                        ; $63bd: $f1
    and c                                         ; $63be: $a1
    db $e3                                        ; $63bf: $e3
    rst $38                                       ; $63c0: $ff
    pop bc                                        ; $63c1: $c1
    add $83                                       ; $63c2: $c6 $83
    dec c                                         ; $63c4: $0d
    rlca                                          ; $63c5: $07
    add hl, de                                    ; $63c6: $19
    rrca                                          ; $63c7: $0f
    ld [hl], a                                    ; $63c8: $77
    rst $38                                       ; $63c9: $ff
    add hl, sp                                    ; $63ca: $39
    ret nz                                        ; $63cb: $c0

    rst $38                                       ; $63cc: $ff
    jr c, jr_009_63ff                             ; $63cd: $38 $30

    inc sp                                        ; $63cf: $33
    ld sp, $ff36                                  ; $63d0: $31 $36 $ff
    inc hl                                        ; $63d3: $23
    inc sp                                        ; $63d4: $33
    ld hl, $3038                                  ; $63d5: $21 $38 $30
    inc l                                         ; $63d8: $2c

jr_009_63d9:
    jr c, @-$57                                   ; $63d9: $38 $a7

    rst $38                                       ; $63db: $ff
    ld a, $d9                                     ; $63dc: $3e $d9
    rst $20                                       ; $63de: $e7
    ld [hl], d                                    ; $63df: $72
    ld [hl], e                                    ; $63e0: $73
    ld a, [c]                                     ; $63e1: $f2
    sub e                                         ; $63e2: $93
    jp nc, Jump_000_33ff                          ; $63e3: $d2 $ff $33

    or e                                          ; $63e6: $b3
    pop de                                        ; $63e7: $d1
    ld e, c                                       ; $63e8: $59
    ld [hl], c                                    ; $63e9: $71
    ld l, c                                       ; $63ea: $69

jr_009_63eb:
    ld e, b                                       ; $63eb: $58
    call c, Call_009_68ff                         ; $63ec: $dc $ff $68
    add a                                         ; $63ef: $87
    rst $38                                       ; $63f0: $ff
    sbc h                                         ; $63f1: $9c
    sbc b                                         ; $63f2: $98
    sbc e                                         ; $63f3: $9b
    sbc c                                         ; $63f4: $99
    sbc e                                         ; $63f5: $9b
    rst $38                                       ; $63f6: $ff
    sub d                                         ; $63f7: $92
    sub e                                         ; $63f8: $93
    sub e                                         ; $63f9: $93
    jr jr_009_638c                                ; $63fa: $18 $90

    sbc h                                         ; $63fc: $9c
    sbc b                                         ; $63fd: $98
    rst $10                                       ; $63fe: $d7

jr_009_63ff:
    rst $38                                       ; $63ff: $ff
    sbc h                                         ; $6400: $9c
    ld l, e                                       ; $6401: $6b
    rst $30                                       ; $6402: $f7
    jr nc, jr_009_6435                            ; $6403: $30 $30

    or b                                          ; $6405: $b0
    db $10                                        ; $6406: $10
    sub e                                         ; $6407: $93
    rst $38                                       ; $6408: $ff
    sub e                                         ; $6409: $93
    or d                                          ; $640a: $b2
    inc de                                        ; $640b: $13
    inc hl                                        ; $640c: $23
    ld [hl-], a                                   ; $640d: $32
    jp nc, $9373                                  ; $640e: $d2 $73 $93

    rst $38                                       ; $6411: $ff
    ld a, [c]                                     ; $6412: $f2
    inc c                                         ; $6413: $0c
    rst $38                                       ; $6414: $ff
    ret c                                         ; $6415: $d8

    ld [hl], b                                    ; $6416: $70
    ld [hl], e                                    ; $6417: $73

jr_009_6418:
    inc hl                                        ; $6418: $23
    and e                                         ; $6419: $a3
    rst $38                                       ; $641a: $ff
    ld hl, $a0b0                                  ; $641b: $21 $b0 $a0
    cp b                                          ; $641e: $b8
    or b                                          ; $641f: $b0
    xor [hl]                                      ; $6420: $ae
    cp h                                          ; $6421: $bc
    and e                                         ; $6422: $a3
    rst $28                                       ; $6423: $ef
    cp a                                          ; $6424: $bf
    ld b, b                                       ; $6425: $40
    rst $38                                       ; $6426: $ff
    jr nc, jr_009_63d9                            ; $6427: $30 $b0

jr_009_6429:
    ldh [$32], a                                  ; $6429: $e0 $32
    inc sp                                        ; $642b: $33
    ld [hl+], a                                   ; $642c: $22
    rst $38                                       ; $642d: $ff
    inc sp                                        ; $642e: $33
    inc sp                                        ; $642f: $33
    ld [de], a                                    ; $6430: $12
    ld [de], a                                    ; $6431: $12
    inc de                                        ; $6432: $13
    di                                            ; $6433: $f3
    sub d                                         ; $6434: $92

jr_009_6435:
    ld l, h                                       ; $6435: $6c
    rst $38                                       ; $6436: $ff
    rst $38                                       ; $6437: $ff
    ld e, c                                       ; $6438: $59
    ld [hl], b                                    ; $6439: $70
    xor c                                         ; $643a: $a9
    reti                                          ; $643b: $d9


    ret                                           ; $643c: $c9


    add hl, sp                                    ; $643d: $39
    ld a, c                                       ; $643e: $79
    rst $38                                       ; $643f: $ff
    adc c                                         ; $6440: $89
    adc c                                         ; $6441: $89
    ld a, c                                       ; $6442: $79
    ld sp, hl                                     ; $6443: $f9
    add hl, bc                                    ; $6444: $09
    add hl, bc                                    ; $6445: $09
    ld sp, hl                                     ; $6446: $f9
    ld b, $ff                                     ; $6447: $06 $ff
    rst $38                                       ; $6449: $ff
    or e                                          ; $644a: $b3
    call z, $c33c                                 ; $644b: $cc $3c $c3
    rst $00                                       ; $644e: $c7
    jr c, jr_009_64c9                             ; $644f: $38 $78

    rst $38                                       ; $6451: $ff
    add a                                         ; $6452: $87
    adc a                                         ; $6453: $8f
    ld [hl], b                                    ; $6454: $70
    di                                            ; $6455: $f3
    inc c                                         ; $6456: $0c
    inc e                                         ; $6457: $1c
    db $e3                                        ; $6458: $e3
    nop                                           ; $6459: $00
    rst $38                                       ; $645a: $ff
    rst $38                                       ; $645b: $ff

jr_009_645c:
    ld e, $e1                                     ; $645c: $1e $e1
    pop hl                                        ; $645e: $e1
    ld e, $9f                                     ; $645f: $1e $9f
    ld h, b                                       ; $6461: $60
    ld h, b                                       ; $6462: $60
    rst $38                                       ; $6463: $ff
    sbc a                                         ; $6464: $9f
    rst $18                                       ; $6465: $df
    jr nz, jr_009_6418                            ; $6466: $20 $b0

    ld c, a                                       ; $6468: $4f
    ld a, a                                       ; $6469: $7f
    add b                                         ; $646a: $80
    nop                                           ; $646b: $00
    ld bc, $00ff                                  ; $646c: $01 $ff $00
    nop                                           ; $646f: $00
    nop                                           ; $6470: $00
    rst $38                                       ; $6471: $ff
    rst $38                                       ; $6472: $ff
    nop                                           ; $6473: $00
    sbc [hl]                                      ; $6474: $9e
    ld h, c                                       ; $6475: $61
    ld h, c                                       ; $6476: $61
    sbc [hl]                                      ; $6477: $9e
    rst $18                                       ; $6478: $df
    jr nz, @+$01                                  ; $6479: $20 $ff

    jr nz, jr_009_645c                            ; $647b: $20 $df

    rst $18                                       ; $647d: $df
    jr nz, jr_009_64b0                            ; $647e: $20 $30

    rst $08                                       ; $6480: $cf
    rst $08                                       ; $6481: $cf
    jr nc, @+$01                                  ; $6482: $30 $ff

    rst $38                                       ; $6484: $ff
    nop                                           ; $6485: $00
    ld a, [hl]                                    ; $6486: $7e
    add c                                         ; $6487: $81
    jp Jump_000_363f                              ; $6488: $c3 $3f $36


    call z, $ecff                                 ; $648b: $cc $ff $ec
    jr jr_009_6429                                ; $648e: $18 $99

    ld [hl], b                                    ; $6490: $70
    ld [hl], e                                    ; $6491: $73
    and c                                         ; $6492: $a1
    pop af                                        ; $6493: $f1
    jr nz, @+$01                                  ; $6494: $20 $ff

    rst $38                                       ; $6496: $ff
    nop                                           ; $6497: $00
    ld d, [hl]                                    ; $6498: $56
    xor c                                         ; $6499: $a9
    ld l, c                                       ; $649a: $69
    sub [hl]                                      ; $649b: $96
    rst $28                                       ; $649c: $ef
    sub b                                         ; $649d: $90
    rst $38                                       ; $649e: $ff
    or b                                          ; $649f: $b0
    rst $08                                       ; $64a0: $cf
    db $dd                                        ; $64a1: $dd
    and e                                         ; $64a2: $a3
    ld h, a                                       ; $64a3: $67
    sbc [hl]                                      ; $64a4: $9e
    adc h                                         ; $64a5: $8c
    ld hl, sp-$01                                 ; $64a6: $f8 $ff
    sbc a                                         ; $64a8: $9f
    ld h, b                                       ; $64a9: $60
    cp [hl]                                       ; $64aa: $be
    ld b, c                                       ; $64ab: $41
    add hl, hl                                    ; $64ac: $29
    sub $36                                       ; $64ad: $d6 $36
    ret                                           ; $64af: $c9


jr_009_64b0:
    rst $38                                       ; $64b0: $ff
    ld [hl], c                                    ; $64b1: $71
    adc [hl]                                      ; $64b2: $8e
    and [hl]                                      ; $64b3: $a6
    reti                                          ; $64b4: $d9


    call Call_009_727e                            ; $64b5: $cd $7e $72
    inc sp                                        ; $64b8: $33
    rst $38                                       ; $64b9: $ff

jr_009_64ba:
    rst $38                                       ; $64ba: $ff
    nop                                           ; $64bb: $00
    ld a, a                                       ; $64bc: $7f
    add b                                         ; $64bd: $80
    call nz, Call_000_303b                        ; $64be: $c4 $3b $30
    rst $08                                       ; $64c1: $cf
    rst $38                                       ; $64c2: $ff
    jp Jump_009_4e3c                              ; $64c3: $c3 $3c $4e


    or c                                          ; $64c6: $b1
    sub h                                         ; $64c7: $94
    ld a, e                                       ; $64c8: $7b

jr_009_64c9:
    jr c, jr_009_64ba                             ; $64c9: $38 $ef

jr_009_64cb:
    rst $38                                       ; $64cb: $ff
    ld h, b                                       ; $64cc: $60
    sbc a                                         ; $64cd: $9f
    add b                                         ; $64ce: $80
    ld a, a                                       ; $64cf: $7f
    rra                                           ; $64d0: $1f
    ldh [$f7], a                                  ; $64d1: $e0 $f7
    ld [$bcff], sp                                ; $64d3: $08 $ff $bc
    ld b, e                                       ; $64d6: $43
    nop                                           ; $64d7: $00
    rst $38                                       ; $64d8: $ff
    jr nc, @+$01                                  ; $64d9: $30 $ff

    ei                                            ; $64db: $fb
    call z, Call_000_06ff                         ; $64dc: $cc $ff $06
    ld sp, hl                                     ; $64df: $f9
    nop                                           ; $64e0: $00
    rst $38                                       ; $64e1: $ff
    cp [hl]                                       ; $64e2: $be
    ld a, a                                       ; $64e3: $7f
    jp $ff41                                      ; $64e4: $c3 $41 $ff


    ld h, c                                       ; $64e7: $61
    ret nz                                        ; $64e8: $c0

    jr nz, jr_009_64cb                            ; $64e9: $20 $e0

    ld h, $e4                                     ; $64eb: $26 $e4
    rst $20                                       ; $64ed: $e7
    ld h, $ff                                     ; $64ee: $26 $ff
    rst $38                                       ; $64f0: $ff
    nop                                           ; $64f1: $00
    cp $01                                        ; $64f2: $fe $01
    ld bc, $0efe                                  ; $64f4: $01 $fe $0e
    pop af                                        ; $64f7: $f1
    rst $38                                       ; $64f8: $ff
    add e                                         ; $64f9: $83
    db $fc                                        ; $64fa: $fc
    ret nc                                        ; $64fb: $d0

    ld l, a                                       ; $64fc: $6f
    ld h, c                                       ; $64fd: $61
    ccf                                           ; $64fe: $3f
    inc sp                                        ; $64ff: $33
    ld e, $ff                                     ; $6500: $1e $ff
    ld sp, hl                                     ; $6502: $f9
    ld b, $55                                     ; $6503: $06 $55
    xor d                                         ; $6505: $aa
    add sp, $17                                   ; $6506: $e8 $17
    ld l, h                                       ; $6508: $6c
    sub e                                         ; $6509: $93
    rst $38                                       ; $650a: $ff
    or b                                          ; $650b: $b0
    ld c, a                                       ; $650c: $4f
    ld l, a                                       ; $650d: $6f
    pop af                                        ; $650e: $f1
    di                                            ; $650f: $f3
    sbc a                                         ; $6510: $9f
    inc e                                         ; $6511: $1c
    inc c                                         ; $6512: $0c
    rst $38                                       ; $6513: $ff
    rst $38                                       ; $6514: $ff
    nop                                           ; $6515: $00
    xor $11                                       ; $6516: $ee $11
    xor c                                         ; $6518: $a9
    ld d, [hl]                                    ; $6519: $56
    sub $29                                       ; $651a: $d6 $29
    rst $38                                       ; $651c: $ff
    pop de                                        ; $651d: $d1
    xor $26                                       ; $651e: $ee $26
    add hl, sp                                    ; $6520: $39
    dec l                                         ; $6521: $2d
    inc sp                                        ; $6522: $33
    inc de                                        ; $6523: $13
    ld e, $fe                                     ; $6524: $1e $fe
    and b                                         ; $6526: $a0
    db $e3                                        ; $6527: $e3
    ccf                                           ; $6528: $3f
    ret nz                                        ; $6529: $c0

    jp Jump_009_6d3c                              ; $652a: $c3 $3c $6d


    ld a, [c]                                     ; $652d: $f2
    or $ff                                        ; $652e: $f6 $ff
    sbc c                                         ; $6530: $99
    add hl, de                                    ; $6531: $19
    ld c, $ff                                     ; $6532: $0e $ff
    nop                                           ; $6534: $00
    rst $00                                       ; $6535: $c7
    jr c, jr_009_6570                             ; $6536: $38 $38

    rst $38                                       ; $6538: $ff
    rst $00                                       ; $6539: $c7
    rst $20                                       ; $653a: $e7
    jr jr_009_6579                                ; $653b: $18 $3c

    jp Jump_000_3cc3                              ; $653d: $c3 $c3 $3c


    ld a, [hl]                                    ; $6540: $7e
    rlca                                          ; $6541: $07
    add c                                         ; $6542: $81
    pop bc                                        ; $6543: $c1
    ld a, $00                                     ; $6544: $3e $00
    nop                                           ; $6546: $00
    nop                                           ; $6547: $00
    rst $38                                       ; $6548: $ff
    inc a                                         ; $6549: $3c
    jp $1ce3                                      ; $654a: $c3 $e3 $1c


jr_009_654d:
    sbc [hl]                                      ; $654d: $9e
    ld h, c                                       ; $654e: $61
    ld [hl], c                                    ; $654f: $71
    adc [hl]                                      ; $6550: $8e
    rst $38                                       ; $6551: $ff
    rst $08                                       ; $6552: $cf
    jr nc, jr_009_6587                            ; $6553: $30 $32

    call Call_000_00ff                            ; $6555: $cd $ff $00
    nop                                           ; $6558: $00
    rst $38                                       ; $6559: $ff
    rst $38                                       ; $655a: $ff
    jr jr_009_654d                                ; $655b: $18 $f0

    db $ec                                        ; $655d: $ec
    jr @+$08                                      ; $655e: $18 $06

    db $fc                                        ; $6560: $fc
    db $ec                                        ; $6561: $ec
    jr @+$01                                      ; $6562: $18 $ff

    add hl, sp                                    ; $6564: $39
    ldh a, [$c3]                                  ; $6565: $f0 $c3
    ld b, c                                       ; $6567: $41
    add $43                                       ; $6568: $c6 $43
    inc a                                         ; $656a: $3c
    rst $38                                       ; $656b: $ff
    rst $38                                       ; $656c: $ff
    ret c                                         ; $656d: $d8

    ld [hl], b                                    ; $656e: $70
    ld [hl], e                                    ; $656f: $73

jr_009_6570:
    inc hl                                        ; $6570: $23
    ld h, e                                       ; $6571: $63
    ld hl, $60f0                                  ; $6572: $21 $f0 $60
    rst $38                                       ; $6575: $ff
    sbc b                                         ; $6576: $98
    ldh a, [$4e]                                  ; $6577: $f0 $4e

jr_009_6579:
    cp h                                          ; $6579: $bc
    ld a, e                                       ; $657a: $7b
    add a                                         ; $657b: $87
    nop                                           ; $657c: $00
    rst $38                                       ; $657d: $ff
    rst $38                                       ; $657e: $ff
    dec sp                                        ; $657f: $3b
    ld sp, $3829                                  ; $6580: $31 $29 $38
    inc a                                         ; $6583: $3c
    jr z, @+$26                                   ; $6584: $28 $24

    inc a                                         ; $6586: $3c

jr_009_6587:
    rst $38                                       ; $6587: $ff
    ld a, $14                                     ; $6588: $3e $14
    ld [de], a                                    ; $658a: $12
    ld e, $f3                                     ; $658b: $1e $f3
    sbc [hl]                                      ; $658d: $9e
    ld h, l                                       ; $658e: $65
    ei                                            ; $658f: $fb
    rst $38                                       ; $6590: $ff
    ld l, l                                       ; $6591: $6d
    rst $00                                       ; $6592: $c7
    res 1, [hl]                                   ; $6593: $cb $8e
    sbc [hl]                                      ; $6595: $9e
    adc h                                         ; $6596: $8c
    ld a, $14                                     ; $6597: $3e $14
    rst $38                                       ; $6599: $ff
    ld a, [hl+]                                   ; $659a: $2a
    ld [hl], $6f                                  ; $659b: $36 $6f
    ld [hl-], a                                   ; $659d: $32
    ld d, c                                       ; $659e: $51
    ld l, a                                       ; $659f: $6f
    add e                                         ; $65a0: $83
    db $fc                                        ; $65a1: $fc

jr_009_65a2:
    rst $38                                       ; $65a2: $ff
    adc a                                         ; $65a3: $8f
    inc b                                         ; $65a4: $04
    ld l, h                                       ; $65a5: $6c
    ld h, a                                       ; $65a6: $67
    ld e, e                                       ; $65a7: $5b
    inc c                                         ; $65a8: $0c
    ld [hl], $39                                  ; $65a9: $36 $39
    rst $38                                       ; $65ab: $ff
    ld sp, $0f1e                                  ; $65ac: $31 $1e $0f
    ld [$8fc8], sp                                ; $65af: $08 $c8 $8f
    ld [hl], d                                    ; $65b2: $72
    db $fd                                        ; $65b3: $fd
    rst $38                                       ; $65b4: $ff
    daa                                           ; $65b5: $27
    push hl                                       ; $65b6: $e5
    rst $20                                       ; $65b7: $e7
    dec h                                         ; $65b8: $25
    and a                                         ; $65b9: $a7
    ld h, [hl]                                    ; $65ba: $66
    ld h, [hl]                                    ; $65bb: $66
    and h                                         ; $65bc: $a4
    rst $38                                       ; $65bd: $ff
    ldh [rNR41], a                                ; $65be: $e0 $20
    jr nz, jr_009_65a2                            ; $65c0: $20 $e0

    db $e3                                        ; $65c2: $e3
    ld hl, $ff1e                                  ; $65c3: $21 $1e $ff
    rst $38                                       ; $65c6: $ff
    sbc [hl]                                      ; $65c7: $9e
    inc c                                         ; $65c8: $0c
    adc h                                         ; $65c9: $8c
    ld [$0818], sp                                ; $65ca: $08 $18 $08
    inc a                                         ; $65cd: $3c
    jr @+$01                                      ; $65ce: $18 $ff

    ld h, [hl]                                    ; $65d0: $66
    inc a                                         ; $65d1: $3c
    db $db                                        ; $65d2: $db
    ld h, a                                       ; $65d3: $67
    add [hl]                                      ; $65d4: $86
    ld sp, hl                                     ; $65d5: $f9
    db $10                                        ; $65d6: $10
    rst $28                                       ; $65d7: $ef
    rst $38                                       ; $65d8: $ff
    dec bc                                        ; $65d9: $0b
    rrca                                          ; $65da: $0f
    set 1, l                                      ; $65db: $cb $cd
    call $094b                                    ; $65dd: $cd $4b $09
    rrca                                          ; $65e0: $0f
    rst $38                                       ; $65e1: $ff
    dec b                                         ; $65e2: $05
    rlca                                          ; $65e3: $07
    add h                                         ; $65e4: $84
    rlca                                          ; $65e5: $07
    db $fc                                        ; $65e6: $fc
    rst $20                                       ; $65e7: $e7
    ld e, b                                       ; $65e8: $58
    cp a                                          ; $65e9: $bf
    rst $38                                       ; $65ea: $ff
    ld h, $3c                                     ; $65eb: $26 $3c
    inc a                                         ; $65ed: $3c
    jr z, jr_009_6618                             ; $65ee: $28 $28

    jr c, jr_009_662e                             ; $65f0: $38 $3c

    jr @+$01                                      ; $65f2: $18 $ff

    sub [hl]                                      ; $65f4: $96
    inc e                                         ; $65f5: $1c
    sbc e                                         ; $65f6: $9b
    adc a                                         ; $65f7: $8f
    call z, Call_009_708b                         ; $65f8: $cc $8b $70
    rst $38                                       ; $65fb: $ff
    rst $38                                       ; $65fc: $ff
    ld c, $09                                     ; $65fd: $0e $09
    set 1, h                                      ; $65ff: $cb $cc
    call z, Call_000_0a4b                         ; $6601: $cc $4b $0a
    dec c                                         ; $6604: $0d
    rst $38                                       ; $6605: $ff
    rrca                                          ; $6606: $0f
    inc b                                         ; $6607: $04
    add h                                         ; $6608: $84
    rlca                                          ; $6609: $07
    rst $38                                       ; $660a: $ff
    db $e4                                        ; $660b: $e4
    jr @+$01                                      ; $660c: $18 $ff

    rst $38                                       ; $660e: $ff
    ld a, a                                       ; $660f: $7f
    add b                                         ; $6610: $80
    adc h                                         ; $6611: $8c
    ld [hl], e                                    ; $6612: $73
    di                                            ; $6613: $f3
    inc c                                         ; $6614: $0c
    ld e, $e1                                     ; $6615: $1e $e1
    rst $38                                       ; $6617: $ff

jr_009_6618:
    pop hl                                        ; $6618: $e1
    ld e, $7f                                     ; $6619: $1e $7f
    add b                                         ; $661b: $80
    sbc h                                         ; $661c: $9c
    ld h, e                                       ; $661d: $63
    nop                                           ; $661e: $00
    rst $38                                       ; $661f: $ff
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    nop                                           ; $6622: $00

Call_009_6623:
    rst $38                                       ; $6623: $ff
    rst $38                                       ; $6624: $ff
    nop                                           ; $6625: $00
    ldh [$1f], a                                  ; $6626: $e0 $1f
    rra                                           ; $6628: $1f
    ldh [$f0], a                                  ; $6629: $e0 $f0
    rrca                                          ; $662b: $0f
    rst $38                                       ; $662c: $ff
    adc a                                         ; $662d: $8f

jr_009_662e:
    ld [hl], b                                    ; $662e: $70
    ld [hl], b                                    ; $662f: $70
    adc a                                         ; $6630: $8f
    rst $18                                       ; $6631: $df
    jr nz, jr_009_6665                            ; $6632: $20 $31

    adc $ff                                       ; $6634: $ce $ff
    rst $38                                       ; $6636: $ff
    nop                                           ; $6637: $00
    add hl, sp                                    ; $6638: $39
    add $c7                                       ; $6639: $c6 $c7
    jr c, jr_009_66b5                             ; $663b: $38 $78

    add a                                         ; $663d: $87
    rst $38                                       ; $663e: $ff
    adc a                                         ; $663f: $8f
    ld [hl], b                                    ; $6640: $70
    ldh a, [rIF]                                  ; $6641: $f0 $0f
    rra                                           ; $6643: $1f
    ldh [$e1], a                                  ; $6644: $e0 $e1
    ld e, $ff                                     ; $6646: $1e $ff
    ld hl, sp+$07                                 ; $6648: $f8 $07
    add hl, sp                                    ; $664a: $39
    add $83                                       ; $664b: $c6 $83
    ld a, h                                       ; $664d: $7c
    ld [hl], d                                    ; $664e: $72
    adc l                                         ; $664f: $8d
    rst $38                                       ; $6650: $ff
    add e                                         ; $6651: $83
    ld a, h                                       ; $6652: $7c
    ld a, [c]                                     ; $6653: $f2

jr_009_6654:
    dec c                                         ; $6654: $0d
    inc bc                                        ; $6655: $03
    db $fc                                        ; $6656: $fc
    ld a, [c]                                     ; $6657: $f2
    dec c                                         ; $6658: $0d
    rst $38                                       ; $6659: $ff
    rst $20                                       ; $665a: $e7
    jr jr_009_6654                                ; $665b: $18 $f7

    ld [$3bc4], sp                                ; $665d: $08 $c4 $3b
    scf                                           ; $6660: $37
    ret z                                         ; $6661: $c8

    rst $38                                       ; $6662: $ff

jr_009_6663:
    sub b                                         ; $6663: $90
    ld l, a                                       ; $6664: $6f

jr_009_6665:
    inc bc                                        ; $6665: $03
    db $fc                                        ; $6666: $fc
    db $e3                                        ; $6667: $e3
    inc e                                         ; $6668: $1c
    nop                                           ; $6669: $00
    rst $38                                       ; $666a: $ff
    rst $38                                       ; $666b: $ff
    ld a, d                                       ; $666c: $7a
    add l                                         ; $666d: $85
    ld a, [hl-]                                   ; $666e: $3a
    push bc                                       ; $666f: $c5

jr_009_6670:
    ld [de], a                                    ; $6670: $12
    db $ed                                        ; $6671: $ed
    jp c, $ff25                                   ; $6672: $da $25 $ff

    ld a, [de]                                    ; $6675: $1a
    push hl                                       ; $6676: $e5
    add hl, sp                                    ; $6677: $39
    add $a1                                       ; $6678: $c6 $a1
    ld e, [hl]                                    ; $667a: $5e
    ld b, $f9                                     ; $667b: $06 $f9
    rst $38                                       ; $667d: $ff
    swap h                                        ; $667e: $cb $34
    add e                                         ; $6680: $83
    ld a, h                                       ; $6681: $7c
    sub e                                         ; $6682: $93
    ld l, h                                       ; $6683: $6c
    sub b                                         ; $6684: $90
    ld l, a                                       ; $6685: $6f
    rst $38                                       ; $6686: $ff
    ld b, b                                       ; $6687: $40
    cp a                                          ; $6688: $bf
    rlca                                          ; $6689: $07
    ld hl, sp+$1f                                 ; $668a: $f8 $1f
    ldh [$30], a                                  ; $668c: $e0 $30
    rst $08                                       ; $668e: $cf
    rst $38                                       ; $668f: $ff
    db $d3                                        ; $6690: $d3
    inc l                                         ; $6691: $2c
    ret nz                                        ; $6692: $c0

    ccf                                           ; $6693: $3f
    add hl, bc                                    ; $6694: $09
    or $09                                        ; $6695: $f6 $09
    or $ff                                        ; $6697: $f6 $ff
    ld [bc], a                                    ; $6699: $02
    db $fd                                        ; $669a: $fd
    ldh [$1f], a                                  ; $669b: $e0 $1f
    ret c                                         ; $669d: $d8

    daa                                           ; $669e: $27
    jr nc, jr_009_6670                            ; $669f: $30 $cf

    rst $38                                       ; $66a1: $ff
    ld e, [hl]                                    ; $66a2: $5e
    and c                                         ; $66a3: $a1
    ld e, b                                       ; $66a4: $58
    and a                                         ; $66a5: $a7
    ld d, c                                       ; $66a6: $51
    xor [hl]                                      ; $66a7: $ae
    ld e, e                                       ; $66a8: $5b
    and h                                         ; $66a9: $a4
    rst $38                                       ; $66aa: $ff
    ret c                                         ; $66ab: $d8

    daa                                           ; $66ac: $27
    sub b                                         ; $66ad: $90
    ld l, a                                       ; $66ae: $6f
    and l                                         ; $66af: $a5
    ld e, d                                       ; $66b0: $5a
    ld h, b                                       ; $66b1: $60
    sbc a                                         ; $66b2: $9f
    rst $38                                       ; $66b3: $ff
    rst $20                                       ; $66b4: $e7

jr_009_66b5:
    jr jr_009_6663                                ; $66b5: $18 $ac

    ld d, e                                       ; $66b7: $53
    adc a                                         ; $66b8: $8f
    ld [hl], b                                    ; $66b9: $70
    ld l, b                                       ; $66ba: $68
    sub a                                         ; $66bb: $97
    rst $38                                       ; $66bc: $ff
    adc c                                         ; $66bd: $89
    halt                                          ; $66be: $76
    jp $873c                                      ; $66bf: $c3 $3c $87


    ld a, b                                       ; $66c2: $78
    add b                                         ; $66c3: $80
    ld a, a                                       ; $66c4: $7f
    rst $38                                       ; $66c5: $ff
    rra                                           ; $66c6: $1f
    ldh [$9b], a                                  ; $66c7: $e0 $9b
    ld h, h                                       ; $66c9: $64
    call z, Call_000_0f33                         ; $66ca: $cc $33 $0f
    ldh a, [rIE]                                  ; $66cd: $f0 $ff
    ret z                                         ; $66cf: $c8

    scf                                           ; $66d0: $37
    rrca                                          ; $66d1: $0f
    ldh a, [$c9]                                  ; $66d2: $f0 $c9
    ld [hl], $0e                                  ; $66d4: $36 $0e
    pop af                                        ; $66d6: $f1
    rst $38                                       ; $66d7: $ff
    rst $38                                       ; $66d8: $ff
    nop                                           ; $66d9: $00
    cp a                                          ; $66da: $bf
    ld b, b                                       ; $66db: $40
    ld [hl], b                                    ; $66dc: $70
    adc a                                         ; $66dd: $8f
    rst $08                                       ; $66de: $cf

jr_009_66df:
    jr nc, jr_009_66df                            ; $66df: $30 $fe

    ld l, [hl]                                    ; $66e1: $6e
    pop hl                                        ; $66e2: $e1
    di                                            ; $66e3: $f3
    inc c                                         ; $66e4: $0c
    ld l, [hl]                                    ; $66e5: $6e
    sub c                                         ; $66e6: $91
    rst $38                                       ; $66e7: $ff
    nop                                           ; $66e8: $00
    pop bc                                        ; $66e9: $c1
    rst $38                                       ; $66ea: $ff
    ld a, $7f                                     ; $66eb: $3e $7f
    add b                                         ; $66ed: $80
    add b                                         ; $66ee: $80
    ld a, a                                       ; $66ef: $7f
    ld a, a                                       ; $66f0: $7f
    add b                                         ; $66f1: $80
    ret nz                                        ; $66f2: $c0

    rra                                           ; $66f3: $1f
    ccf                                           ; $66f4: $3f
    ccf                                           ; $66f5: $3f
    ret nz                                        ; $66f6: $c0

    ldh [$1f], a                                  ; $66f7: $e0 $1f
    nop                                           ; $66f9: $00
    nop                                           ; $66fa: $00
    nop                                           ; $66fb: $00
    rst $38                                       ; $66fc: $ff
    rst $28                                       ; $66fd: $ef
    db $10                                        ; $66fe: $10
    sbc d                                         ; $66ff: $9a
    ld h, l                                       ; $6700: $65
    halt                                          ; $6701: $76
    adc c                                         ; $6702: $89
    call $ff32                                    ; $6703: $cd $32 $ff
    dec sp                                        ; $6706: $3b
    call nz, Call_000_09f6                        ; $6707: $c4 $f6 $09
    add hl, de                                    ; $670a: $19
    and $00                                       ; $670b: $e6 $00
    rst $38                                       ; $670d: $ff
    rst $38                                       ; $670e: $ff
    ld a, $c1                                     ; $670f: $3e $c1
    jp $fc3c                                      ; $6711: $c3 $3c $fc


    inc bc                                        ; $6714: $03

jr_009_6715:
    sbc e                                         ; $6715: $9b
    ld h, h                                       ; $6716: $64
    rst $38                                       ; $6717: $ff
    ld l, h                                       ; $6718: $6c
    sub e                                         ; $6719: $93
    rst $00                                       ; $671a: $c7

jr_009_671b:
    jr c, jr_009_6715                             ; $671b: $38 $f8

    rlca                                          ; $671d: $07
    nop                                           ; $671e: $00
    rst $38                                       ; $671f: $ff
    rst $38                                       ; $6720: $ff
    ld h, e                                       ; $6721: $63
    sbc h                                         ; $6722: $9c

Call_009_6723:
    sbc b                                         ; $6723: $98
    ld h, a                                       ; $6724: $67
    ld [hl], c                                    ; $6725: $71
    adc [hl]                                      ; $6726: $8e
    adc h                                         ; $6727: $8c
    ld [hl], e                                    ; $6728: $73
    rst $38                                       ; $6729: $ff
    ld a, b                                       ; $672a: $78
    add a                                         ; $672b: $87
    add $39                                       ; $672c: $c6 $39
    inc a                                         ; $672e: $3c
    jp $ff00                                      ; $672f: $c3 $00 $ff


    rst $38                                       ; $6732: $ff
    ret nc                                        ; $6733: $d0

    cpl                                           ; $6734: $2f
    add hl, sp                                    ; $6735: $39
    add $c3                                       ; $6736: $c6 $c3
    inc a                                         ; $6738: $3c
    di                                            ; $6739: $f3
    inc c                                         ; $673a: $0c
    rst $38                                       ; $673b: $ff
    ld [bc], a                                    ; $673c: $02
    db $fd                                        ; $673d: $fd
    ld [hl-], a                                   ; $673e: $32
    call $fc03                                    ; $673f: $cd $03 $fc
    ld b, d                                       ; $6742: $42
    cp l                                          ; $6743: $bd
    rst $38                                       ; $6744: $ff
    ld b, [hl]                                    ; $6745: $46
    cp c                                          ; $6746: $b9
    ret nz                                        ; $6747: $c0

    ccf                                           ; $6748: $3f
    ld b, b                                       ; $6749: $40
    cp a                                          ; $674a: $bf
    and b                                         ; $674b: $a0
    ld e, a                                       ; $674c: $5f
    rst $38                                       ; $674d: $ff
    ret z                                         ; $674e: $c8

    scf                                           ; $674f: $37
    ldh a, [rIF]                                  ; $6750: $f0 $0f
    jr c, jr_009_671b                             ; $6752: $38 $c7

    nop                                           ; $6754: $00
    rst $38                                       ; $6755: $ff
    rst $38                                       ; $6756: $ff

jr_009_6757:
    ld a, a                                       ; $6757: $7f
    add b                                         ; $6758: $80
    ld [hl], b                                    ; $6759: $70
    adc a                                         ; $675a: $8f
    ld c, a                                       ; $675b: $4f
    or b                                          ; $675c: $b0
    ld [hl], c                                    ; $675d: $71
    adc [hl]                                      ; $675e: $8e
    rst $38                                       ; $675f: $ff
    ld a, $c1                                     ; $6760: $3e $c1
    inc bc                                        ; $6762: $03
    db $fc                                        ; $6763: $fc
    nop                                           ; $6764: $00
    rst $38                                       ; $6765: $ff
    nop                                           ; $6766: $00
    rst $38                                       ; $6767: $ff
    ei                                            ; $6768: $fb
    xor $11                                       ; $6769: $ee $11
    and b                                         ; $676b: $a0
    pop hl                                        ; $676c: $e1
    call z, Call_000_3833                         ; $676d: $cc $33 $38
    rst $00                                       ; $6770: $c7
    ldh a, [$fd]                                  ; $6771: $f0 $fd
    rrca                                          ; $6773: $0f
    ldh a, [$e1]                                  ; $6774: $f0 $e1
    ld h, d                                       ; $6776: $62
    sbc l                                         ; $6777: $9d
    ld b, e                                       ; $6778: $43
    cp h                                          ; $6779: $bc
    ld [bc], a                                    ; $677a: $02
    db $fd                                        ; $677b: $fd
    rst $38                                       ; $677c: $ff
    rlca                                          ; $677d: $07
    ld hl, sp+$1c                                 ; $677e: $f8 $1c
    db $e3                                        ; $6780: $e3
    rla                                           ; $6781: $17
    add sp, $18                                   ; $6782: $e8 $18
    rst $20                                       ; $6784: $e7
    rst $38                                       ; $6785: $ff
    jr nc, jr_009_6757                            ; $6786: $30 $cf

    rrca                                          ; $6788: $0f
    ldh a, [$9e]                                  ; $6789: $f0 $9e
    ld h, c                                       ; $678b: $61
    ld d, c                                       ; $678c: $51
    xor [hl]                                      ; $678d: $ae
    rst $38                                       ; $678e: $ff
    adc a                                         ; $678f: $8f
    ld [hl], b                                    ; $6790: $70
    ld c, b                                       ; $6791: $48
    or a                                          ; $6792: $b7
    call z, Call_000_0033                         ; $6793: $cc $33 $00
    rst $38                                       ; $6796: $ff
    rst $38                                       ; $6797: $ff
    inc bc                                        ; $6798: $03
    db $fc                                        ; $6799: $fc
    swap h                                        ; $679a: $cb $34
    inc e                                         ; $679c: $1c
    db $e3                                        ; $679d: $e3
    sub a                                         ; $679e: $97
    ld l, b                                       ; $679f: $68
    rst $38                                       ; $67a0: $ff
    add hl, sp                                    ; $67a1: $39
    add $2e                                       ; $67a2: $c6 $2e
    pop de                                        ; $67a4: $d1
    halt                                          ; $67a5: $76
    adc c                                         ; $67a6: $89
    reti                                          ; $67a7: $d9


    ld h, $ff                                     ; $67a8: $26 $ff
    add b                                         ; $67aa: $80
    ld a, a                                       ; $67ab: $7f
    or e                                          ; $67ac: $b3
    ld c, h                                       ; $67ad: $4c

jr_009_67ae:
    call c, Call_009_6723                         ; $67ae: $dc $23 $67
    sbc b                                         ; $67b1: $98
    rst $38                                       ; $67b2: $ff
    cp b                                          ; $67b3: $b8
    ld b, a                                       ; $67b4: $47
    rst $08                                       ; $67b5: $cf
    jr nc, jr_009_67ae                            ; $67b6: $30 $f6

    add hl, bc                                    ; $67b8: $09
    add hl, sp                                    ; $67b9: $39
    add $ff                                       ; $67ba: $c6 $ff
    nop                                           ; $67bc: $00
    rst $38                                       ; $67bd: $ff
    sbc a                                         ; $67be: $9f
    ld h, b                                       ; $67bf: $60
    ld [hl], b                                    ; $67c0: $70
    adc a                                         ; $67c1: $8f
    rst $08                                       ; $67c2: $cf
    jr nc, @+$01                                  ; $67c3: $30 $ff

    ld sp, $fece                                  ; $67c5: $31 $ce $fe
    ld bc, $fc03                                  ; $67c8: $01 $03 $fc
    db $fc                                        ; $67cb: $fc
    inc bc                                        ; $67cc: $03
    inc bc                                        ; $67cd: $03
    nop                                           ; $67ce: $00
    rst $38                                       ; $67cf: $ff
    nop                                           ; $67d0: $00
    nop                                           ; $67d1: $00
    nop                                           ; $67d2: $00
    rst $38                                       ; $67d3: $ff
    rst $38                                       ; $67d4: $ff
    nop                                           ; $67d5: $00
    dec sp                                        ; $67d6: $3b
    call nz, Call_000_38c7                        ; $67d7: $c4 $c7 $38
    ld a, b                                       ; $67da: $78
    add a                                         ; $67db: $87
    rst $38                                       ; $67dc: $ff
    adc a                                         ; $67dd: $8f
    ld [hl], b                                    ; $67de: $70
    ld hl, sp+$07                                 ; $67df: $f8 $07
    rlca                                          ; $67e1: $07
    ld hl, sp-$04                                 ; $67e2: $f8 $fc
    inc bc                                        ; $67e4: $03
    rst $28                                       ; $67e5: $ef
    rst $38                                       ; $67e6: $ff
    nop                                           ; $67e7: $00
    inc a                                         ; $67e8: $3c
    jp $e3f0                                      ; $67e9: $c3 $f0 $e3


    di                                            ; $67ec: $f3
    inc c                                         ; $67ed: $0c
    inc e                                         ; $67ee: $1c
    rst $38                                       ; $67ef: $ff
    db $e3                                        ; $67f0: $e3
    rst $20                                       ; $67f1: $e7
    jr @+$01                                      ; $67f2: $18 $ff

    nop                                           ; $67f4: $00
    pop hl                                        ; $67f5: $e1
    ld e, $9f                                     ; $67f6: $1e $9f
    rst $38                                       ; $67f8: $ff
    ld h, b                                       ; $67f9: $60
    ld h, b                                       ; $67fa: $60
    sbc a                                         ; $67fb: $9f
    rst $18                                       ; $67fc: $df
    jr nz, @-$4e                                  ; $67fd: $20 $b0

    ld c, a                                       ; $67ff: $4f
    ld a, a                                       ; $6800: $7f
    rst $38                                       ; $6801: $ff
    add b                                         ; $6802: $80
    jp $f93c                                      ; $6803: $c3 $3c $f9


    ld b, $f1                                     ; $6806: $06 $f1
    ld c, $0c                                     ; $6808: $0e $0c
    rst $38                                       ; $680a: $ff
    di                                            ; $680b: $f3
    ld hl, sp+$07                                 ; $680c: $f8 $07
    add [hl]                                      ; $680e: $86
    ld a, c                                       ; $680f: $79
    ld a, h                                       ; $6810: $7c
    add e                                         ; $6811: $83
    jp Jump_000_3cff                              ; $6812: $c3 $ff $3c


    ld a, $c1                                     ; $6815: $3e $c1
    rst $38                                       ; $6817: $ff
    nop                                           ; $6818: $00
    db $fd                                        ; $6819: $fd
    ld [bc], a                                    ; $681a: $02
    inc bc                                        ; $681b: $03
    rst $38                                       ; $681c: $ff
    db $fc                                        ; $681d: $fc
    cp $01                                        ; $681e: $fe $01
    ld bc, $3ffe                                  ; $6820: $01 $fe $3f
    ret nz                                        ; $6823: $c0

    add b                                         ; $6824: $80
    rst $38                                       ; $6825: $ff
    ld a, a                                       ; $6826: $7f
    ld b, e                                       ; $6827: $43
    cp h                                          ; $6828: $bc
    add b                                         ; $6829: $80
    ld a, a                                       ; $682a: $7f
    pop bc                                        ; $682b: $c1
    ld a, $9c                                     ; $682c: $3e $9c
    rst $38                                       ; $682e: $ff
    ld h, e                                       ; $682f: $63
    ld b, c                                       ; $6830: $41
    cp [hl]                                       ; $6831: $be
    add e                                         ; $6832: $83
    ld a, h                                       ; $6833: $7c
    ld h, b                                       ; $6834: $60
    sbc a                                         ; $6835: $9f
    add $ff                                       ; $6836: $c6 $ff
    add hl, sp                                    ; $6838: $39
    and [hl]                                      ; $6839: $a6
    ld e, c                                       ; $683a: $59
    ld bc, $83fe                                  ; $683b: $01 $fe $83
    ld a, h                                       ; $683e: $7c
    dec sp                                        ; $683f: $3b

jr_009_6840:
    rst $38                                       ; $6840: $ff
    call nz, Call_000_0df2                        ; $6841: $c4 $f2 $0d
    add e                                         ; $6844: $83
    ld a, h                                       ; $6845: $7c
    ld b, $f9                                     ; $6846: $06 $f9
    ld h, a                                       ; $6848: $67

jr_009_6849:
    rst $30                                       ; $6849: $f7
    sbc b                                         ; $684a: $98
    db $e4                                        ; $684b: $e4
    dec de                                        ; $684c: $1b
    and b                                         ; $684d: $a0
    push hl                                       ; $684e: $e5
    adc [hl]                                      ; $684f: $8e
    ld [hl], c                                    ; $6850: $71
    ldh a, [rIF]                                  ; $6851: $f0 $0f
    rst $38                                       ; $6853: $ff
    ld de, $c3ee                                  ; $6854: $11 $ee $c3
    inc a                                         ; $6857: $3c
    sbc a                                         ; $6858: $9f
    ld h, b                                       ; $6859: $60
    sub c                                         ; $685a: $91
    ld l, [hl]                                    ; $685b: $6e
    rst $38                                       ; $685c: $ff
    ccf                                           ; $685d: $3f
    ret nz                                        ; $685e: $c0

    jr nz, jr_009_6840                            ; $685f: $20 $df

    ld a, a                                       ; $6861: $7f
    add b                                         ; $6862: $80
    ldh a, [rIF]                                  ; $6863: $f0 $0f
    rst $38                                       ; $6865: $ff
    rst $38                                       ; $6866: $ff
    nop                                           ; $6867: $00
    jp $ff3c                                      ; $6868: $c3 $3c $ff


    nop                                           ; $686b: $00
    di                                            ; $686c: $f3
    inc c                                         ; $686d: $0c
    cp a                                          ; $686e: $bf
    rrca                                          ; $686f: $0f
    ldh a, [$f8]                                  ; $6870: $f0 $f8
    rlca                                          ; $6872: $07
    add a                                         ; $6873: $87
    ld a, b                                       ; $6874: $78
    and b                                         ; $6875: $a0
    db $ed                                        ; $6876: $ed
    rst $38                                       ; $6877: $ff
    rst $38                                       ; $6878: $ff
    nop                                           ; $6879: $00
    add b                                         ; $687a: $80
    ld a, a                                       ; $687b: $7f
    ld a, a                                       ; $687c: $7f
    add b                                         ; $687d: $80
    rst $38                                       ; $687e: $ff
    nop                                           ; $687f: $00
    add $ff                                       ; $6880: $c6 $ff
    add hl, sp                                    ; $6882: $39
    cp a                                          ; $6883: $bf
    ld b, b                                       ; $6884: $40

jr_009_6885:
    ld h, b                                       ; $6885: $60
    sbc a                                         ; $6886: $9f
    sbc a                                         ; $6887: $9f
    ld h, b                                       ; $6888: $60
    ld [hl], b                                    ; $6889: $70
    rra                                           ; $688a: $1f
    adc a                                         ; $688b: $8f
    rst $08                                       ; $688c: $cf
    jr nc, jr_009_6849                            ; $688d: $30 $ba

    ld b, l                                       ; $688f: $45
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    rst $38                                       ; $6893: $ff
    sub e                                         ; $6894: $93
    ld l, h                                       ; $6895: $6c
    xor $11                                       ; $6896: $ee $11
    xor c                                         ; $6898: $a9
    ld d, [hl]                                    ; $6899: $56
    ld d, [hl]                                    ; $689a: $56
    xor c                                         ; $689b: $a9
    rst $38                                       ; $689c: $ff
    pop de                                        ; $689d: $d1
    ld l, $26                                     ; $689e: $2e $26
    reti                                          ; $68a0: $d9


    rst $18                                       ; $68a1: $df
    jr nz, jr_009_68a4                            ; $68a2: $20 $00

jr_009_68a4:
    rst $38                                       ; $68a4: $ff
    rst $38                                       ; $68a5: $ff
    sbc b                                         ; $68a6: $98
    ld h, a                                       ; $68a7: $67
    ld a, a                                       ; $68a8: $7f
    add b                                         ; $68a9: $80
    call nz, Call_000_3f3b                        ; $68aa: $c4 $3b $3f
    ret nz                                        ; $68ad: $c0

    rst $38                                       ; $68ae: $ff
    jp $7d3c                                      ; $68af: $c3 $3c $7d


    add d                                         ; $68b2: $82
    add [hl]                                      ; $68b3: $86

jr_009_68b4:
    ld a, c                                       ; $68b4: $79
    nop                                           ; $68b5: $00
    rst $38                                       ; $68b6: $ff
    rst $38                                       ; $68b7: $ff
    inc a                                         ; $68b8: $3c
    jp Jump_000_38c7                              ; $68b9: $c3 $c7 $38


    jr c, jr_009_6885                             ; $68bc: $38 $c7

    rst $20                                       ; $68be: $e7
    jr @+$01                                      ; $68bf: $18 $ff

    inc a                                         ; $68c1: $3c
    jp Jump_000_3cc3                              ; $68c2: $c3 $c3 $3c


    ld a, [hl]                                    ; $68c5: $7e
    add c                                         ; $68c6: $81
    nop                                           ; $68c7: $00
    rst $38                                       ; $68c8: $ff
    rst $38                                       ; $68c9: $ff
    pop hl                                        ; $68ca: $e1
    ld e, $9e                                     ; $68cb: $1e $9e
    ld h, c                                       ; $68cd: $61
    ld h, c                                       ; $68ce: $61
    sbc [hl]                                      ; $68cf: $9e
    rst $18                                       ; $68d0: $df
    jr nz, @+$01                                  ; $68d1: $20 $ff

    jr nz, jr_009_68b4                            ; $68d3: $20 $df

    rst $18                                       ; $68d5: $df
    jr nz, jr_009_6908                            ; $68d6: $20 $30

    rst $08                                       ; $68d8: $cf
    nop                                           ; $68d9: $00
    rst $38                                       ; $68da: $ff
    rst $38                                       ; $68db: $ff
    sub c                                         ; $68dc: $91
    ld l, [hl]                                    ; $68dd: $6e
    ld a, h                                       ; $68de: $7c
    add e                                         ; $68df: $83
    ret nz                                        ; $68e0: $c0

    ccf                                           ; $68e1: $3f
    ld a, $c1                                     ; $68e2: $3e $c1
    rst $38                                       ; $68e4: $ff
    db $e3                                        ; $68e5: $e3
    inc e                                         ; $68e6: $1c
    sbc h                                         ; $68e7: $9c
    ld h, e                                       ; $68e8: $63
    ld [hl], a                                    ; $68e9: $77
    adc b                                         ; $68ea: $88
    nop                                           ; $68eb: $00
    rst $38                                       ; $68ec: $ff

jr_009_68ed:
    rst $38                                       ; $68ed: $ff
    ld d, l                                       ; $68ee: $55
    xor d                                         ; $68ef: $aa
    ld d, d                                       ; $68f0: $52
    xor l                                         ; $68f1: $ad
    ld l, b                                       ; $68f2: $68
    sub a                                         ; $68f3: $97
    rrca                                          ; $68f4: $0f
    ldh a, [rIE]                                  ; $68f5: $f0 $ff
    add b                                         ; $68f7: $80
    ld a, a                                       ; $68f8: $7f
    ldh [$1f], a                                  ; $68f9: $e0 $1f
    ld l, b                                       ; $68fb: $68
    sub a                                         ; $68fc: $97
    inc bc                                        ; $68fd: $03
    db $fc                                        ; $68fe: $fc

Call_009_68ff:
    rst $38                                       ; $68ff: $ff
    adc a                                         ; $6900: $8f
    ld [hl], b                                    ; $6901: $70
    adc $31                                       ; $6902: $ce $31
    jr jr_009_68ed                                ; $6904: $18 $e7

    ldh a, [rIF]                                  ; $6906: $f0 $0f

jr_009_6908:
    rst $38                                       ; $6908: $ff
    pop bc                                        ; $6909: $c1
    ld a, $07                                     ; $690a: $3e $07
    ld hl, sp+$1f                                 ; $690c: $f8 $1f
    ldh [$f0], a                                  ; $690e: $e0 $f0
    rrca                                          ; $6910: $0f
    rst $38                                       ; $6911: $ff
    adc [hl]                                      ; $6912: $8e
    ld [hl], c                                    ; $6913: $71
    ccf                                           ; $6914: $3f
    ret nz                                        ; $6915: $c0

    ld h, h                                       ; $6916: $64
    sbc e                                         ; $6917: $9b
    rst $38                                       ; $6918: $ff
    nop                                           ; $6919: $00
    db $fc                                        ; $691a: $fc
    and b                                         ; $691b: $a0
    rst $38                                       ; $691c: $ff
    and b                                         ; $691d: $a0
    db $e3                                        ; $691e: $e3
    add c                                         ; $691f: $81
    ld a, [hl]                                    ; $6920: $7e
    ld a, [hl]                                    ; $6921: $7e
    add c                                         ; $6922: $81
    pop bc                                        ; $6923: $c1
    ld a, $fe                                     ; $6924: $3e $fe
    and b                                         ; $6926: $a0
    jp hl                                         ; $6927: $e9


    ld d, [hl]                                    ; $6928: $56
    xor c                                         ; $6929: $a9
    jp hl                                         ; $692a: $e9


    ld d, $6f                                     ; $692b: $16 $6f
    sub b                                         ; $692d: $90
    or b                                          ; $692e: $b0
    ld a, a                                       ; $692f: $7f
    ld c, a                                       ; $6930: $4f
    rst $18                                       ; $6931: $df
    jr nz, jr_009_6995                            ; $6932: $20 $61

    sbc [hl]                                      ; $6934: $9e
    nop                                           ; $6935: $00
    rst $38                                       ; $6936: $ff
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00
    rst $38                                       ; $693a: $ff
    rst $38                                       ; $693b: $ff
    nop                                           ; $693c: $00
    sbc c                                         ; $693d: $99
    ld h, [hl]                                    ; $693e: $66
    halt                                          ; $693f: $76
    adc c                                         ; $6940: $89
    rst $08                                       ; $6941: $cf
    jr nc, @+$01                                  ; $6942: $30 $ff

    jr c, @-$37                                   ; $6944: $38 $c7

    rst $20                                       ; $6946: $e7
    jr jr_009_6965                                ; $6947: $18 $1c

    db $e3                                        ; $6949: $e3
    di                                            ; $694a: $f3
    inc c                                         ; $694b: $0c
    rst $38                                       ; $694c: $ff
    rst $38                                       ; $694d: $ff
    nop                                           ; $694e: $00
    di                                            ; $694f: $f3
    inc c                                         ; $6950: $0c
    inc e                                         ; $6951: $1c
    db $e3                                        ; $6952: $e3
    and $19                                       ; $6953: $e6 $19
    rst $38                                       ; $6955: $ff
    dec sp                                        ; $6956: $3b
    call nz, Call_000_33cc                        ; $6957: $c4 $cc $33
    ld [hl], a                                    ; $695a: $77
    adc b                                         ; $695b: $88
    cp b                                          ; $695c: $b8
    ld b, a                                       ; $695d: $47
    rst $38                                       ; $695e: $ff
    rst $38                                       ; $695f: $ff
    nop                                           ; $6960: $00
    adc h                                         ; $6961: $8c
    ld [hl], e                                    ; $6962: $73
    di                                            ; $6963: $f3
    inc c                                         ; $6964: $0c

jr_009_6965:
    ld e, $e1                                     ; $6965: $1e $e1
    rst $38                                       ; $6967: $ff
    pop hl                                        ; $6968: $e1
    ld e, $7f                                     ; $6969: $1e $7f
    add b                                         ; $696b: $80
    sbc h                                         ; $696c: $9c
    ld h, e                                       ; $696d: $63
    db $e3                                        ; $696e: $e3
    inc e                                         ; $696f: $1c
    rst $38                                       ; $6970: $ff
    rst $38                                       ; $6971: $ff
    nop                                           ; $6972: $00
    db $e3                                        ; $6973: $e3
    inc e                                         ; $6974: $1c
    sbc [hl]                                      ; $6975: $9e
    ld h, c                                       ; $6976: $61
    ld [hl], c                                    ; $6977: $71
    adc [hl]                                      ; $6978: $8e
    rst $38                                       ; $6979: $ff
    rst $08                                       ; $697a: $cf
    jr nc, jr_009_69af                            ; $697b: $30 $32

    call Call_000_00ff                            ; $697d: $cd $ff $00
    ret nz                                        ; $6980: $c0

    ccf                                           ; $6981: $3f
    rst $38                                       ; $6982: $ff
    rst $38                                       ; $6983: $ff
    nop                                           ; $6984: $00
    rst $38                                       ; $6985: $ff
    nop                                           ; $6986: $00
    ld bc, $fefe                                  ; $6987: $01 $fe $fe
    ld bc, $03ff                                  ; $698a: $01 $ff $03
    db $fc                                        ; $698d: $fc
    db $fc                                        ; $698e: $fc
    inc bc                                        ; $698f: $03
    and a                                         ; $6990: $a7
    ld e, b                                       ; $6991: $58
    add hl, sp                                    ; $6992: $39
    add $ff                                       ; $6993: $c6 $ff

jr_009_6995:
    rst $38                                       ; $6995: $ff
    nop                                           ; $6996: $00
    inc sp                                        ; $6997: $33
    call z, $23dc                                 ; $6998: $cc $dc $23
    ld h, e                                       ; $699b: $63
    sbc h                                         ; $699c: $9c
    rst $38                                       ; $699d: $ff
    cp [hl]                                       ; $699e: $be
    ld b, c                                       ; $699f: $41
    rst $00                                       ; $69a0: $c7
    jr c, @+$7a                                   ; $69a1: $38 $78

    add a                                         ; $69a3: $87
    sbc a                                         ; $69a4: $9f
    ld h, b                                       ; $69a5: $60
    nop                                           ; $69a6: $00
    and b                                         ; $69a7: $a0
    rst $38                                       ; $69a8: $ff
    and b                                         ; $69a9: $a0
    rst $38                                       ; $69aa: $ff
    and b                                         ; $69ab: $a0
    ld sp, hl                                     ; $69ac: $f9
    nop                                           ; $69ad: $00
    nop                                           ; $69ae: $00

jr_009_69af:
    nop                                           ; $69af: $00
    ld sp, hl                                     ; $69b0: $f9
    nop                                           ; $69b1: $00
    rst $38                                       ; $69b2: $ff
    rst $38                                       ; $69b3: $ff
    ei                                            ; $69b4: $fb
    ld a, [$0703]                                 ; $69b5: $fa $03 $07
    dec b                                         ; $69b8: $05
    ld c, $0b                                     ; $69b9: $0e $0b
    rst $38                                       ; $69bb: $ff
    inc e                                         ; $69bc: $1c
    rla                                           ; $69bd: $17
    jr c, jr_009_69ed                             ; $69be: $38 $2d

    ld [hl], e                                    ; $69c0: $73
    ld e, e                                       ; $69c1: $5b
    ld h, a                                       ; $69c2: $67
    ld [hl], a                                    ; $69c3: $77
    rst $38                                       ; $69c4: $ff
    ld c, a                                       ; $69c5: $4f
    ld a, [hl]                                    ; $69c6: $7e
    ld c, a                                       ; $69c7: $4f
    ld [hl], h                                    ; $69c8: $74
    ld c, a                                       ; $69c9: $4f
    ld e, e                                       ; $69ca: $5b
    ld h, a                                       ; $69cb: $67
    cpl                                           ; $69cc: $2f
    rst $38                                       ; $69cd: $ff
    ld [hl], b                                    ; $69ce: $70
    rla                                           ; $69cf: $17
    jr c, jr_009_69dd                             ; $69d0: $38 $0b

    inc e                                         ; $69d2: $1c
    rlca                                          ; $69d3: $07
    rrca                                          ; $69d4: $0f
    inc bc                                        ; $69d5: $03
    rst $38                                       ; $69d6: $ff
    rlca                                          ; $69d7: $07
    nop                                           ; $69d8: $00
    nop                                           ; $69d9: $00
    ret nz                                        ; $69da: $c0

    ldh [$a7], a                                  ; $69db: $e0 $a7

jr_009_69dd:
    ld a, a                                       ; $69dd: $7f
    sbc $ff                                       ; $69de: $de $ff
    add hl, sp                                    ; $69e0: $39
    db $eb                                        ; $69e1: $eb
    inc e                                         ; $69e2: $1c
    or a                                          ; $69e3: $b7
    call z, $e5df                                 ; $69e4: $cc $df $e5
    ccf                                           ; $69e7: $3f
    rst $38                                       ; $69e8: $ff
    push hl                                       ; $69e9: $e5
    ccf                                           ; $69ea: $3f
    ld h, h                                       ; $69eb: $64
    ld e, a                                       ; $69ec: $5f

jr_009_69ed:
    db $e4                                        ; $69ed: $e4
    or [hl]                                       ; $69ee: $b6
    call $ffef                                    ; $69ef: $cd $ef $ff
    dec e                                         ; $69f2: $1d
    rst $18                                       ; $69f3: $df
    dec a                                         ; $69f4: $3d
    ld a, a                                       ; $69f5: $7f
    db $fd                                        ; $69f6: $fd
    di                                            ; $69f7: $f3
    rst $38                                       ; $69f8: $ff
    pop bc                                        ; $69f9: $c1
    db $fd                                        ; $69fa: $fd
    db $e3                                        ; $69fb: $e3
    and b                                         ; $69fc: $a0
    ld [c], a                                     ; $69fd: $e2
    add b                                         ; $69fe: $80
    add [hl]                                      ; $69ff: $86
    rst $08                                       ; $6a00: $cf
    ld c, a                                       ; $6a01: $4f
    jp hl                                         ; $6a02: $e9


    rst $28                                       ; $6a03: $ef
    rst $38                                       ; $6a04: $ff
    add hl, sp                                    ; $6a05: $39
    rst $18                                       ; $6a06: $df
    or b                                          ; $6a07: $b0
    ld e, a                                       ; $6a08: $5f
    cp c                                          ; $6a09: $b9
    cp a                                          ; $6a0a: $bf
    ld a, c                                       ; $6a0b: $79
    ld a, a                                       ; $6a0c: $7f
    rst $38                                       ; $6a0d: $ff
    ld sp, hl                                     ; $6a0e: $f9
    xor $f9                                       ; $6a0f: $ee $f9

jr_009_6a11:
    set 5, h                                      ; $6a11: $cb $ec
    add a                                         ; $6a13: $87
    call z, $df85                                 ; $6a14: $cc $85 $df
    add [hl]                                      ; $6a17: $86
    add e                                         ; $6a18: $83
    add a                                         ; $6a19: $87
    ld bc, $8083                                  ; $6a1a: $01 $83 $80
    push hl                                       ; $6a1d: $e5
    ld h, b                                       ; $6a1e: $60
    ldh a, [rIE]                                  ; $6a1f: $f0 $ff
    db $d3                                        ; $6a21: $d3
    cp a                                          ; $6a22: $bf
    db $fc                                        ; $6a23: $fc
    sbc a                                         ; $6a24: $9f
    rst $30                                       ; $6a25: $f7
    sbc b                                         ; $6a26: $98
    ld a, [$ff97]                                 ; $6a27: $fa $97 $ff
    rst $38                                       ; $6a2a: $ff
    sub a                                         ; $6a2b: $97
    cp $97                                        ; $6a2c: $fe $97
    cp a                                          ; $6a2e: $bf
    ret nc                                        ; $6a2f: $d0

    halt                                          ; $6a30: $76
    reti                                          ; $6a31: $d9


    cp a                                          ; $6a32: $bf
    ld sp, hl                                     ; $6a33: $f9
    ld e, a                                       ; $6a34: $5f
    rst $38                                       ; $6a35: $ff
    rst $38                                       ; $6a36: $ff
    db $d3                                        ; $6a37: $d3
    rst $38                                       ; $6a38: $ff
    ld h, b                                       ; $6a39: $60
    rst $20                                       ; $6a3a: $e7
    jr nc, @+$01                                  ; $6a3b: $30 $ff

    ld hl, sp-$52                                 ; $6a3d: $f8 $ae
    rst $18                                       ; $6a3f: $df
    db $dd                                        ; $6a40: $dd
    ld h, e                                       ; $6a41: $63
    cp [hl]                                       ; $6a42: $be
    ld h, c                                       ; $6a43: $61
    db $fd                                        ; $6a44: $fd
    rst $38                                       ; $6a45: $ff
    ld l, $bf                                     ; $6a46: $2e $bf
    ld l, [hl]                                    ; $6a48: $6e
    rst $18                                       ; $6a49: $df
    ld l, [hl]                                    ; $6a4a: $6e
    rst $38                                       ; $6a4b: $ff
    adc $ff                                       ; $6a4c: $ce $ff
    rst $18                                       ; $6a4e: $df
    adc $bd                                       ; $6a4f: $ce $bd
    rst $38                                       ; $6a51: $ff
    jr jr_009_6a11                                ; $6a52: $18 $bd

    ld [c], a                                     ; $6a54: $e2
    and $78                                       ; $6a55: $e6 $78
    ld c, b                                       ; $6a57: $48
    rst $38                                       ; $6a58: $ff
    db $fc                                        ; $6a59: $fc
    cp h                                          ; $6a5a: $bc
    call z, $9cec                                 ; $6a5b: $cc $ec $9c
    call c, $fcbc                                 ; $6a5e: $dc $bc $fc
    ei                                            ; $6a61: $fb
    adc h                                         ; $6a62: $8c
    db $fc                                        ; $6a63: $fc
    ld hl, sp-$1e                                 ; $6a64: $f8 $e2
    cp b                                          ; $6a66: $b8
    db $fc                                        ; $6a67: $fc
    ldh a, [$f8]                                  ; $6a68: $f0 $f8
    and b                                         ; $6a6a: $a0
    ld bc, $20f0                                  ; $6a6b: $01 $f0 $20
    rst $38                                       ; $6a6e: $ff
    rst $38                                       ; $6a6f: $ff
    db $fd                                        ; $6a70: $fd
    nop                                           ; $6a71: $00
    nop                                           ; $6a72: $00
    nop                                           ; $6a73: $00
    ld hl, $6ac0                                  ; $6a74: $21 $c0 $6a
    ld de, $0301                                  ; $6a77: $11 $01 $03
    ld b, $00                                     ; $6a7a: $06 $00
    call Call_009_7ad5                            ; $6a7c: $cd $d5 $7a
    ld c, $10                                     ; $6a7f: $0e $10
    call Call_000_25af                            ; $6a81: $cd $af $25
    call Call_000_2625                            ; $6a84: $cd $25 $26
    ld a, $06                                     ; $6a87: $3e $06
    ldh [$96], a                                  ; $6a89: $e0 $96
    ldh [rSVBK], a                                ; $6a8b: $e0 $70
    ld a, [$caba]                                 ; $6a8d: $fa $ba $ca
    call Call_009_47e0                            ; $6a90: $cd $e0 $47
    bit 7, a                                      ; $6a93: $cb $7f
    jr nz, jr_009_6a9a                            ; $6a95: $20 $03

    ld [$caba], a                                 ; $6a97: $ea $ba $ca

jr_009_6a9a:
    ret                                           ; $6a9a: $c9


    ld c, $10                                     ; $6a9b: $0e $10
    call Call_000_25a1                            ; $6a9d: $cd $a1 $25
    call Call_000_2625                            ; $6aa0: $cd $25 $26
    call Call_000_0341                            ; $6aa3: $cd $41 $03
    rst $18                                       ; $6aa6: $df
    ld [$cd01], sp                                ; $6aa7: $08 $01 $cd
    ld [hl], c                                    ; $6aaa: $71
    inc bc                                        ; $6aab: $03
    ld hl, $6ac0                                  ; $6aac: $21 $c0 $6a
    ld de, $0301                                  ; $6aaf: $11 $01 $03
    ld b, $00                                     ; $6ab2: $06 $00
    call Call_009_7ad5                            ; $6ab4: $cd $d5 $7a
    ld c, $10                                     ; $6ab7: $0e $10
    call Call_000_25af                            ; $6ab9: $cd $af $25
    call Call_000_2625                            ; $6abc: $cd $25 $26

jr_009_6abf:
    ret                                           ; $6abf: $c9


    ld [$466a], a                                 ; $6ac0: $ea $6a $46
    ld [hl], d                                    ; $6ac3: $72
    ld e, e                                       ; $6ac4: $5b
    ld l, e                                       ; $6ac5: $6b
    or a                                          ; $6ac6: $b7
    ld [hl], d                                    ; $6ac7: $72
    ld [hl-], a                                   ; $6ac8: $32
    ld l, h                                       ; $6ac9: $6c
    add a                                         ; $6aca: $87
    ld [hl], e                                    ; $6acb: $73
    inc c                                         ; $6acc: $0c
    ld l, l                                       ; $6acd: $6d
    ld h, d                                       ; $6ace: $62
    ld [hl], h                                    ; $6acf: $74
    ld [c], a                                     ; $6ad0: $e2
    ld l, l                                       ; $6ad1: $6d
    add hl, sp                                    ; $6ad2: $39
    ld [hl], l                                    ; $6ad3: $75
    cp h                                          ; $6ad4: $bc
    ld l, [hl]                                    ; $6ad5: $6e
    inc d                                         ; $6ad6: $14
    halt                                          ; $6ad7: $76
    sub d                                         ; $6ad8: $92
    ld l, a                                       ; $6ad9: $6f
    db $ed                                        ; $6ada: $ed
    halt                                          ; $6adb: $76
    ld l, c                                       ; $6adc: $69
    ld [hl], b                                    ; $6add: $70
    ret z                                         ; $6ade: $c8

    ld [hl], a                                    ; $6adf: $77
    add hl, hl                                    ; $6ae0: $29
    ld [hl], c                                    ; $6ae1: $71
    adc b                                         ; $6ae2: $88
    ld a, b                                       ; $6ae3: $78
    ret nc                                        ; $6ae4: $d0

    ld [hl], c                                    ; $6ae5: $71
    cpl                                           ; $6ae6: $2f
    ld a, c                                       ; $6ae7: $79
    and l                                         ; $6ae8: $a5
    ld a, c                                       ; $6ae9: $79
    rst $38                                       ; $6aea: $ff
    inc c                                         ; $6aeb: $0c
    di                                            ; $6aec: $f3
    ei                                            ; $6aed: $fb
    inc b                                         ; $6aee: $04
    call z, Call_000_3733                         ; $6aef: $cc $33 $37
    ret z                                         ; $6af2: $c8

    rst $38                                       ; $6af3: $ff
    ldh a, [rIF]                                  ; $6af4: $f0 $0f
    rra                                           ; $6af6: $1f
    ldh [$e1], a                                  ; $6af7: $e0 $e1
    ld e, $00                                     ; $6af9: $1e $00
    rst $38                                       ; $6afb: $ff
    rst $38                                       ; $6afc: $ff
    rst $00                                       ; $6afd: $c7
    jr c, jr_009_6abf                             ; $6afe: $38 $bf

    ld b, b                                       ; $6b00: $40
    ld [hl], b                                    ; $6b01: $70
    adc a                                         ; $6b02: $8f
    rst $08                                       ; $6b03: $cf
    jr nc, @+$01                                  ; $6b04: $30 $ff

    ld a, b                                       ; $6b06: $78
    add a                                         ; $6b07: $87
    adc a                                         ; $6b08: $8f
    ld [hl], b                                    ; $6b09: $70
    di                                            ; $6b0a: $f3
    inc c                                         ; $6b0b: $0c

jr_009_6b0c:
    nop                                           ; $6b0c: $00
    rst $38                                       ; $6b0d: $ff
    rst $38                                       ; $6b0e: $ff
    ld a, $c1                                     ; $6b0f: $3e $c1
    pop bc                                        ; $6b11: $c1
    ld a, $7f                                     ; $6b12: $3e $7f
    add b                                         ; $6b14: $80
    add b                                         ; $6b15: $80
    ld a, a                                       ; $6b16: $7f
    rst $38                                       ; $6b17: $ff
    ld a, a                                       ; $6b18: $7f
    add b                                         ; $6b19: $80
    ret nz                                        ; $6b1a: $c0

    ccf                                           ; $6b1b: $3f
    ccf                                           ; $6b1c: $3f
    ret nz                                        ; $6b1d: $c0

    nop                                           ; $6b1e: $00
    rst $38                                       ; $6b1f: $ff
    rst $38                                       ; $6b20: $ff
    ccf                                           ; $6b21: $3f
    ret nz                                        ; $6b22: $c0

    ldh [$1f], a                                  ; $6b23: $e0 $1f
    rra                                           ; $6b25: $1f
    ldh [$f0], a                                  ; $6b26: $e0 $f0
    rrca                                          ; $6b28: $0f
    rst $38                                       ; $6b29: $ff
    adc a                                         ; $6b2a: $8f
    ld [hl], b                                    ; $6b2b: $70
    ld [hl], b                                    ; $6b2c: $70
    adc a                                         ; $6b2d: $8f
    rst $18                                       ; $6b2e: $df
    jr nz, jr_009_6b31                            ; $6b2f: $20 $00

jr_009_6b31:
    rst $38                                       ; $6b31: $ff
    ccf                                           ; $6b32: $3f
    adc $31                                       ; $6b33: $ce $31
    add hl, sp                                    ; $6b35: $39
    add $c7                                       ; $6b36: $c6 $c7
    jr c, jr_009_6b0c                             ; $6b38: $38 $d2

    pop hl                                        ; $6b3a: $e1
    cp [hl]                                       ; $6b3b: $be
    pop hl                                        ; $6b3c: $e1
    rst $38                                       ; $6b3d: $ff
    nop                                           ; $6b3e: $00
    rst $38                                       ; $6b3f: $ff
    rst $20                                       ; $6b40: $e7
    jr jr_009_6b7b                                ; $6b41: $18 $38

    rst $00                                       ; $6b43: $c7
    adc a                                         ; $6b44: $8f
    ld [hl], b                                    ; $6b45: $70
    rst $38                                       ; $6b46: $ff
    ld a, b                                       ; $6b47: $78
    add a                                         ; $6b48: $87
    add a                                         ; $6b49: $87
    ld a, b                                       ; $6b4a: $78
    ld hl, sp+$07                                 ; $6b4b: $f8 $07
    rlca                                          ; $6b4d: $07
    ld hl, sp+$03                                 ; $6b4e: $f8 $03
    nop                                           ; $6b50: $00
    rst $38                                       ; $6b51: $ff

jr_009_6b52:
    and b                                         ; $6b52: $a0
    rst $38                                       ; $6b53: $ff
    and b                                         ; $6b54: $a0
    rst $38                                       ; $6b55: $ff
    and b                                         ; $6b56: $a0
    ld sp, hl                                     ; $6b57: $f9
    nop                                           ; $6b58: $00
    nop                                           ; $6b59: $00
    nop                                           ; $6b5a: $00
    rst $38                                       ; $6b5b: $ff
    rst $38                                       ; $6b5c: $ff
    nop                                           ; $6b5d: $00
    inc a                                         ; $6b5e: $3c
    jp Jump_000_38c7                              ; $6b5f: $c3 $c7 $38


    ld sp, hl                                     ; $6b62: $f9
    ld b, $ff                                     ; $6b63: $06 $ff
    ld c, $f1                                     ; $6b65: $0e $f1
    or $09                                        ; $6b67: $f6 $09
    jr jr_009_6b52                                ; $6b69: $18 $e7

    rst $20                                       ; $6b6b: $e7
    add hl, de                                    ; $6b6c: $19
    rst $38                                       ; $6b6d: $ff
    or $0f                                        ; $6b6e: $f6 $0f
    rst $08                                       ; $6b70: $cf
    add hl, sp                                    ; $6b71: $39
    ld e, c                                       ; $6b72: $59
    or b                                          ; $6b73: $b0
    or c                                          ; $6b74: $b1
    ld h, b                                       ; $6b75: $60
    rst $38                                       ; $6b76: $ff
    ld h, e                                       ; $6b77: $63
    pop bc                                        ; $6b78: $c1
    adc $87                                       ; $6b79: $ce $87

jr_009_6b7b:
    adc c                                         ; $6b7b: $89
    adc [hl]                                      ; $6b7c: $8e
    adc a                                         ; $6b7d: $8f
    ld [$ffff], sp                                ; $6b7e: $08 $ff $ff
    nop                                           ; $6b81: $00
    ld [hl], b                                    ; $6b82: $70
    adc a                                         ; $6b83: $8f
    rst $08                                       ; $6b84: $cf
    or b                                          ; $6b85: $b0
    or c                                          ; $6b86: $b1
    adc $ff                                       ; $6b87: $ce $ff
    halt                                          ; $6b89: $76
    adc a                                         ; $6b8a: $8f
    rra                                           ; $6b8b: $1f
    ld sp, hl                                     ; $6b8c: $f9
    or c                                          ; $6b8d: $b1
    ld h, b                                       ; $6b8e: $60
    ldh [rLCDC], a                                ; $6b8f: $e0 $40
    rst $38                                       ; $6b91: $ff
    rst $38                                       ; $6b92: $ff
    nop                                           ; $6b93: $00
    cp h                                          ; $6b94: $bc
    ld a, a                                       ; $6b95: $7f
    ld b, [hl]                                    ; $6b96: $46
    jp $41c3                                      ; $6b97: $c3 $c3 $41


    rst $38                                       ; $6b9a: $ff
    ld b, c                                       ; $6b9b: $41

jr_009_6b9c:
    ret nz                                        ; $6b9c: $c0

    ld b, b                                       ; $6b9d: $40
    ret nz                                        ; $6b9e: $c0

    call nz, $a4c4                                ; $6b9f: $c4 $c4 $a4
    call nz, $ffff                                ; $6ba2: $c4 $ff $ff
    nop                                           ; $6ba5: $00
    or d                                          ; $6ba6: $b2
    ld a, l                                       ; $6ba7: $7d
    db $dd                                        ; $6ba8: $dd
    ld c, a                                       ; $6ba9: $4f
    ld b, a                                       ; $6baa: $47
    jp nz, $e2ff                                  ; $6bab: $c2 $ff $e2

    jp nz, $f0b8                                  ; $6bae: $c2 $b8 $f0

    call z, $c478                                 ; $6bb1: $cc $78 $c4
    ld a, h                                       ; $6bb4: $7c
    rst $38                                       ; $6bb5: $ff
    or a                                          ; $6bb6: $b7
    ld a, b                                       ; $6bb7: $78
    add sp, -$31                                  ; $6bb8: $e8 $cf
    adc b                                         ; $6bba: $88
    rrca                                          ; $6bbb: $0f
    rra                                           ; $6bbc: $1f
    ld [$30ff], sp                                ; $6bbd: $08 $ff $30
    rra                                           ; $6bc0: $1f
    ld h, a                                       ; $6bc1: $67
    jr c, jr_009_6b9c                             ; $6bc2: $38 $d8

    ld h, a                                       ; $6bc4: $67
    and e                                         ; $6bc5: $a3
    call c, Call_009_797f                         ; $6bc6: $dc $7f $79
    cp $8e                                        ; $6bc9: $fe $8e
    add a                                         ; $6bcb: $87
    jp $4081                                      ; $6bcc: $c3 $81 $40


    jp nc, $ffe0                                  ; $6bcf: $d2 $e0 $ff

    add $44                                       ; $6bd2: $c6 $44
    ld b, a                                       ; $6bd4: $47
    add $c5                                       ; $6bd5: $c6 $c5
    ld b, a                                       ; $6bd7: $47
    rst $38                                       ; $6bd8: $ff
    nop                                           ; $6bd9: $00
    rst $38                                       ; $6bda: $ff
    call c, $a723                                 ; $6bdb: $dc $23 $a7
    ret c                                         ; $6bde: $d8

jr_009_6bdf:
    ret c                                         ; $6bdf: $d8

    ld h, a                                       ; $6be0: $67
    ld l, [hl]                                    ; $6be1: $6e
    ld sp, $35bf                                  ; $6be2: $31 $bf $35
    dec de                                        ; $6be5: $1b
    dec de                                        ; $6be6: $1b
    ld c, $0e                                     ; $6be7: $0e $0e
    inc c                                         ; $6be9: $0c
    and b                                         ; $6bea: $a0
    ld [c], a                                     ; $6beb: $e2
    jr nc, @+$01                                  ; $6bec: $30 $ff

    ld sp, $f9fe                                  ; $6bee: $31 $fe $f9
    rst $08                                       ; $6bf1: $cf
    adc [hl]                                      ; $6bf2: $8e
    ld b, $06                                     ; $6bf3: $06 $06
    ld b, $ff                                     ; $6bf5: $06 $ff
    dec b                                         ; $6bf7: $05
    rlca                                          ; $6bf8: $07
    rst $38                                       ; $6bf9: $ff
    nop                                           ; $6bfa: $00
    sbc d                                         ; $6bfb: $9a
    ld h, l                                       ; $6bfc: $65
    ld [hl], $f9                                  ; $6bfd: $36 $f9
    rst $38                                       ; $6bff: $ff
    call $cd4a                                    ; $6c00: $cd $4a $cd
    adc $02                                       ; $6c03: $ce $02
    inc bc                                        ; $6c05: $03
    ld [bc], a                                    ; $6c06: $02
    inc bc                                        ; $6c07: $03
    rst $38                                       ; $6c08: $ff
    call $ffcf                                    ; $6c09: $cd $cf $ff
    nop                                           ; $6c0c: $00
    jp $fc3c                                      ; $6c0d: $c3 $3c $fc


    inc bc                                        ; $6c10: $03
    rst $38                                       ; $6c11: $ff
    adc l                                         ; $6c12: $8d
    ld a, [hl]                                    ; $6c13: $7e
    ld a, $f3                                     ; $6c14: $3e $f3
    ld h, e                                       ; $6c16: $63
    pop bc                                        ; $6c17: $c1
    pop bc                                        ; $6c18: $c1
    add c                                         ; $6c19: $81
    rst $38                                       ; $6c1a: $ff
    add c                                         ; $6c1b: $81
    ld bc, $00ff                                  ; $6c1c: $01 $ff $00
    sbc [hl]                                      ; $6c1f: $9e
    ld h, c                                       ; $6c20: $61
    ld [hl], c                                    ; $6c21: $71
    adc [hl]                                      ; $6c22: $8e
    rst $38                                       ; $6c23: $ff
    adc a                                         ; $6c24: $8f
    ld [hl], b                                    ; $6c25: $70
    ld a, b                                       ; $6c26: $78
    add a                                         ; $6c27: $87
    rst $00                                       ; $6c28: $c7
    jr c, @+$3e                                   ; $6c29: $38 $3c

    jp $e303                                      ; $6c2b: $c3 $03 $e3


    inc e                                         ; $6c2e: $1c
    nop                                           ; $6c2f: $00

jr_009_6c30:
    nop                                           ; $6c30: $00
    nop                                           ; $6c31: $00
    rst $38                                       ; $6c32: $ff
    rra                                           ; $6c33: $1f
    pop hl                                        ; $6c34: $e1
    ld a, [c]                                     ; $6c35: $f2
    dec c                                         ; $6c36: $0d
    rrca                                          ; $6c37: $0f
    ldh a, [$f8]                                  ; $6c38: $f0 $f8
    rlca                                          ; $6c3a: $07
    rst $38                                       ; $6c3b: $ff
    add a                                         ; $6c3c: $87
    ld a, b                                       ; $6c3d: $78
    ld a, h                                       ; $6c3e: $7c
    add e                                         ; $6c3f: $83
    jp Jump_000_003c                              ; $6c40: $c3 $3c $00


    rst $38                                       ; $6c43: $ff
    rst $38                                       ; $6c44: $ff
    adc d                                         ; $6c45: $8a
    dec c                                         ; $6c46: $0d
    adc l                                         ; $6c47: $8d
    adc d                                         ; $6c48: $8a
    rst $08                                       ; $6c49: $cf
    add a                                         ; $6c4a: $87
    ld h, b                                       ; $6c4b: $60
    ret nz                                        ; $6c4c: $c0

    rst $38                                       ; $6c4d: $ff
    jr nc, jr_009_6c30                            ; $6c4e: $30 $e0

    ret c                                         ; $6c50: $d8

    jr nc, jr_009_6bdf                            ; $6c51: $30 $8c

    ld a, b                                       ; $6c53: $78
    rlca                                          ; $6c54: $07
    rst $38                                       ; $6c55: $ff
    rst $38                                       ; $6c56: $ff
    ld c, h                                       ; $6c57: $4c
    ret nz                                        ; $6c58: $c0

    call z, Call_000_0c8c                         ; $6c59: $cc $8c $0c
    adc h                                         ; $6c5c: $8c
    adc h                                         ; $6c5d: $8c
    adc b                                         ; $6c5e: $88
    rst $38                                       ; $6c5f: $ff
    ret nz                                        ; $6c60: $c0

    add b                                         ; $6c61: $80
    db $e3                                        ; $6c62: $e3
    pop bc                                        ; $6c63: $c1
    or [hl]                                       ; $6c64: $b6
    rst $20                                       ; $6c65: $e7
    jr @+$01                                      ; $6c66: $18 $ff

    rst $38                                       ; $6c68: $ff
    pop hl                                        ; $6c69: $e1
    ld h, b                                       ; $6c6a: $60
    ld h, e                                       ; $6c6b: $63
    ld h, c                                       ; $6c6c: $61
    ld h, d                                       ; $6c6d: $62
    ld h, e                                       ; $6c6e: $63
    push hl                                       ; $6c6f: $e5
    ld h, d                                       ; $6c70: $62
    rst $38                                       ; $6c71: $ff
    and a                                         ; $6c72: $a7
    db $e4                                        ; $6c73: $e4
    ld h, [hl]                                    ; $6c74: $66
    and l                                         ; $6c75: $a5
    daa                                           ; $6c76: $27
    db $e4                                        ; $6c77: $e4
    jr @+$01                                      ; $6c78: $18 $ff

    rst $38                                       ; $6c7a: $ff
    cp h                                          ; $6c7b: $bc
    call nz, $847c                                ; $6c7c: $c4 $7c $84
    call nz, $fc3c                                ; $6c7f: $c4 $3c $fc
    inc b                                         ; $6c82: $04
    rst $38                                       ; $6c83: $ff
    adc h                                         ; $6c84: $8c
    ld [hl], h                                    ; $6c85: $74
    db $f4                                        ; $6c86: $f4
    inc c                                         ; $6c87: $0c
    inc e                                         ; $6c88: $1c
    db $e4                                        ; $6c89: $e4
    inc bc                                        ; $6c8a: $03
    rst $38                                       ; $6c8b: $ff
    rst $38                                       ; $6c8c: $ff
    sbc b                                         ; $6c8d: $98
    rst $20                                       ; $6c8e: $e7
    or d                                          ; $6c8f: $b2
    call $d0af                                    ; $6c90: $cd $af $d0
    add sp, -$69                                  ; $6c93: $e8 $97
    rst $38                                       ; $6c95: $ff
    jp c, $92a5                                   ; $6c96: $da $a5 $92

    db $ed                                        ; $6c99: $ed
    rst $20                                       ; $6c9a: $e7
    sbc b                                         ; $6c9b: $98
    inc c                                         ; $6c9c: $0c
    di                                            ; $6c9d: $f3
    rst $38                                       ; $6c9e: $ff
    ld b, l                                       ; $6c9f: $45
    rst $00                                       ; $6ca0: $c7
    ld b, a                                       ; $6ca1: $47
    add $c6                                       ; $6ca2: $c6 $c6
    ld b, h                                       ; $6ca4: $44
    ret nz                                        ; $6ca5: $c0

    ld b, b                                       ; $6ca6: $40
    rst $38                                       ; $6ca7: $ff
    ld b, b                                       ; $6ca8: $40
    ret nz                                        ; $6ca9: $c0

    pop bc                                        ; $6caa: $c1
    ld b, b                                       ; $6cab: $40
    rst $00                                       ; $6cac: $c7
    ld b, e                                       ; $6cad: $43
    inc a                                         ; $6cae: $3c
    rst $38                                       ; $6caf: $ff
    rst $38                                       ; $6cb0: $ff
    inc c                                         ; $6cb1: $0c
    ld [$0818], sp                                ; $6cb2: $08 $18 $08
    jr nc, jr_009_6ccf                            ; $6cb5: $30 $18

    ld l, b                                       ; $6cb7: $68
    jr c, @+$01                                   ; $6cb8: $38 $ff

    add $7c                                       ; $6cba: $c6 $7c
    cp e                                          ; $6cbc: $bb
    rst $00                                       ; $6cbd: $c7
    ld b, b                                       ; $6cbe: $40
    cp a                                          ; $6cbf: $bf
    ld b, b                                       ; $6cc0: $40
    cp a                                          ; $6cc1: $bf
    rst $38                                       ; $6cc2: $ff
    push bc                                       ; $6cc3: $c5
    ld b, [hl]                                    ; $6cc4: $46
    add $c5                                       ; $6cc5: $c6 $c5
    rst $00                                       ; $6cc7: $c7
    ld b, h                                       ; $6cc8: $44
    inc b                                         ; $6cc9: $04
    rlca                                          ; $6cca: $07
    rst $38                                       ; $6ccb: $ff
    inc bc                                        ; $6ccc: $03
    ld [bc], a                                    ; $6ccd: $02
    add d                                         ; $6cce: $82

jr_009_6ccf:
    inc bc                                        ; $6ccf: $03
    di                                            ; $6cd0: $f3
    ld [c], a                                     ; $6cd1: $e2
    inc e                                         ; $6cd2: $1c
    rst $38                                       ; $6cd3: $ff
    rst $38                                       ; $6cd4: $ff
    rst $08                                       ; $6cd5: $cf
    ld c, d                                       ; $6cd6: $4a
    ld c, d                                       ; $6cd7: $4a
    adc $ce                                       ; $6cd8: $ce $ce
    ld b, [hl]                                    ; $6cda: $46
    ld b, h                                       ; $6cdb: $44
    add $df                                       ; $6cdc: $c6 $df
    rst $20                                       ; $6cde: $e7
    ld b, e                                       ; $6cdf: $43
    and d                                         ; $6ce0: $a2
    ld h, e                                       ; $6ce1: $63
    inc sp                                        ; $6ce2: $33
    ldh a, [$e0]                                  ; $6ce3: $f0 $e0
    ld sp, $ff11                                  ; $6ce5: $31 $11 $ff
    ld sp, $3131                                  ; $6ce8: $31 $31 $31
    ld de, $0101                                  ; $6ceb: $11 $01 $01
    add b                                         ; $6cee: $80
    nop                                           ; $6cef: $00
    rst $38                                       ; $6cf0: $ff
    ldh [$c0], a                                  ; $6cf1: $e0 $c0
    inc a                                         ; $6cf3: $3c
    ld hl, sp+$07                                 ; $6cf4: $f8 $07
    rst $38                                       ; $6cf6: $ff
    ld e, $e1                                     ; $6cf7: $1e $e1
    rst $38                                       ; $6cf9: $ff
    pop hl                                        ; $6cfa: $e1
    ld e, $9f                                     ; $6cfb: $1e $9f
    ld h, b                                       ; $6cfd: $60
    ld h, b                                       ; $6cfe: $60
    sbc a                                         ; $6cff: $9f
    rst $18                                       ; $6d00: $df
    and b                                         ; $6d01: $a0
    ccf                                           ; $6d02: $3f
    or b                                          ; $6d03: $b0
    rst $08                                       ; $6d04: $cf
    rst $38                                       ; $6d05: $ff
    add b                                         ; $6d06: $80
    nop                                           ; $6d07: $00
    rst $38                                       ; $6d08: $ff
    nop                                           ; $6d09: $00
    nop                                           ; $6d0a: $00
    nop                                           ; $6d0b: $00
    rst $38                                       ; $6d0c: $ff
    ei                                            ; $6d0d: $fb
    rlca                                          ; $6d0e: $07
    sbc h                                         ; $6d0f: $9c
    ld h, h                                       ; $6d10: $64
    ld h, h                                       ; $6d11: $64
    sbc h                                         ; $6d12: $9c
    call c, $ff24                                 ; $6d13: $dc $24 $ff
    inc h                                         ; $6d16: $24
    call c, Call_000_24dc                         ; $6d17: $dc $dc $24
    inc [hl]                                      ; $6d1a: $34
    call z, Call_000_34cc                         ; $6d1b: $cc $cc $34
    rst $38                                       ; $6d1e: $ff
    db $fd                                        ; $6d1f: $fd
    cp $02                                        ; $6d20: $fe $02
    inc bc                                        ; $6d22: $03
    inc bc                                        ; $6d23: $03
    ld [bc], a                                    ; $6d24: $02
    ld [bc], a                                    ; $6d25: $02
    inc bc                                        ; $6d26: $03
    rst $38                                       ; $6d27: $ff
    ld a, e                                       ; $6d28: $7b
    ld [hl], e                                    ; $6d29: $73
    ld c, h                                       ; $6d2a: $4c
    ld a, [hl]                                    ; $6d2b: $7e
    ld h, [hl]                                    ; $6d2c: $66
    ld a, [hl-]                                   ; $6d2d: $3a
    ld [de], a                                    ; $6d2e: $12
    ld e, $ff                                     ; $6d2f: $1e $ff
    rst $38                                       ; $6d31: $ff
    nop                                           ; $6d32: $00
    ld d, [hl]                                    ; $6d33: $56
    xor c                                         ; $6d34: $a9
    jp hl                                         ; $6d35: $e9


    ld d, $6f                                     ; $6d36: $16 $6f
    sub b                                         ; $6d38: $90
    rst $38                                       ; $6d39: $ff
    or b                                          ; $6d3a: $b0
    rst $38                                       ; $6d3b: $ff

Jump_009_6d3c:
    ld a, d                                       ; $6d3c: $7a
    ld c, l                                       ; $6d3d: $4d
    ld c, l                                       ; $6d3e: $4d
    rlca                                          ; $6d3f: $07
    rlca                                          ; $6d40: $07
    ld b, $ff                                     ; $6d41: $06 $ff
    sbc a                                         ; $6d43: $9f
    ld h, b                                       ; $6d44: $60
    cp [hl]                                       ; $6d45: $be
    ld b, c                                       ; $6d46: $41
    add hl, hl                                    ; $6d47: $29
    sub $1a                                       ; $6d48: $d6 $1a
    db $fd                                        ; $6d4a: $fd
    rst $38                                       ; $6d4b: $ff
    ld a, l                                       ; $6d4c: $7d
    and $c6                                       ; $6d4d: $e6 $c6
    add e                                         ; $6d4f: $83
    add d                                         ; $6d50: $82
    inc bc                                        ; $6d51: $03
    inc bc                                        ; $6d52: $03
    inc bc                                        ; $6d53: $03

jr_009_6d54:
    rst $38                                       ; $6d54: $ff
    rst $38                                       ; $6d55: $ff
    nop                                           ; $6d56: $00
    ld a, a                                       ; $6d57: $7f
    add b                                         ; $6d58: $80
    call nz, Call_000_183b                        ; $6d59: $c4 $3b $18
    rst $38                                       ; $6d5c: $ff
    rst $38                                       ; $6d5d: $ff
    or a                                          ; $6d5e: $b7
    ld h, h                                       ; $6d5f: $64
    ld h, [hl]                                    ; $6d60: $66
    push bc                                       ; $6d61: $c5
    call nz, $9987                                ; $6d62: $c4 $87 $99
    rrca                                          ; $6d65: $0f
    rst $38                                       ; $6d66: $ff
    ld h, b                                       ; $6d67: $60
    sbc a                                         ; $6d68: $9f
    add b                                         ; $6d69: $80
    ld a, a                                       ; $6d6a: $7f
    rra                                           ; $6d6b: $1f
    ldh [$f7], a                                  ; $6d6c: $e0 $f7
    ld [$b8ff], sp                                ; $6d6e: $08 $ff $b8
    ld a, a                                       ; $6d71: $7f
    ld l, h                                       ; $6d72: $6c
    rst $00                                       ; $6d73: $c7
    add $83                                       ; $6d74: $c6 $83
    add e                                         ; $6d76: $83
    ld [bc], a                                    ; $6d77: $02
    rst $38                                       ; $6d78: $ff
    ld e, $ff                                     ; $6d79: $1e $ff
    inc hl                                        ; $6d7b: $23
    pop hl                                        ; $6d7c: $e1
    ldh a, [rNR41]                                ; $6d7d: $f0 $20
    ret nc                                        ; $6d7f: $d0

    jr nc, @+$01                                  ; $6d80: $30 $ff

    jr nc, jr_009_6d54                            ; $6d82: $30 $d0

    ld de, $11f1                                  ; $6d84: $11 $f1 $11
    pop af                                        ; $6d87: $f1
    pop af                                        ; $6d88: $f1
    ld de, $7fff                                  ; $6d89: $11 $ff $7f
    add b                                         ; $6d8c: $80
    cp [hl]                                       ; $6d8d: $be
    pop bc                                        ; $6d8e: $c1
    pop hl                                        ; $6d8f: $e1
    ld a, [hl]                                    ; $6d90: $7e
    ld [hl], $19                                  ; $6d91: $36 $19
    rst $38                                       ; $6d93: $ff
    dec de                                        ; $6d94: $1b
    inc c                                         ; $6d95: $0c
    adc h                                         ; $6d96: $8c
    rlca                                          ; $6d97: $07
    add $83                                       ; $6d98: $c6 $83
    ld b, e                                       ; $6d9a: $43
    jp $f9ff                                      ; $6d9b: $c3 $ff $f9


    ld b, $55                                     ; $6d9e: $06 $55
    xor d                                         ; $6da0: $aa
    add sp, $17                                   ; $6da1: $e8 $17
    ld l, h                                       ; $6da3: $6c
    sbc a                                         ; $6da4: $9f
    rst $38                                       ; $6da5: $ff
    cp [hl]                                       ; $6da6: $be
    ld [hl], e                                    ; $6da7: $73
    ld h, e                                       ; $6da8: $63
    pop bc                                        ; $6da9: $c1
    pop bc                                        ; $6daa: $c1
    add c                                         ; $6dab: $81
    add c                                         ; $6dac: $81
    ld bc, $ffff                                  ; $6dad: $01 $ff $ff
    nop                                           ; $6db0: $00
    xor $11                                       ; $6db1: $ee $11
    xor l                                         ; $6db3: $ad
    ld e, [hl]                                    ; $6db4: $5e
    jp nc, $b733                                  ; $6db5: $d2 $33 $b7

    ld [hl], e                                    ; $6db8: $73
    di                                            ; $6db9: $f3
    add b                                         ; $6dba: $80
    rst $38                                       ; $6dbb: $ff
    ldh [$73], a                                  ; $6dbc: $e0 $73
    di                                            ; $6dbe: $f3
    and b                                         ; $6dbf: $a0
    db $e3                                        ; $6dc0: $e3
    dec sp                                        ; $6dc1: $3b
    rst $38                                       ; $6dc2: $ff
    rst $00                                       ; $6dc3: $c7
    ld c, a                                       ; $6dc4: $4f
    cp h                                          ; $6dc5: $bc
    ret c                                         ; $6dc6: $d8

    or b                                          ; $6dc7: $b0
    or b                                          ; $6dc8: $b0
    ldh [$60], a                                  ; $6dc9: $e0 $60
    rst $38                                       ; $6dcb: $ff
    ret nz                                        ; $6dcc: $c0

    rst $38                                       ; $6dcd: $ff
    nop                                           ; $6dce: $00
    rst $00                                       ; $6dcf: $c7
    jr c, jr_009_6e0a                             ; $6dd0: $38 $38

    rst $00                                       ; $6dd2: $c7
    ld h, a                                       ; $6dd3: $67
    rst $38                                       ; $6dd4: $ff
    sbc b                                         ; $6dd5: $98
    cp h                                          ; $6dd6: $bc
    jp Jump_009_7cc3                              ; $6dd7: $c3 $c3 $7c


    ld a, [hl]                                    ; $6dda: $7e
    ld b, c                                       ; $6ddb: $41
    ld b, c                                       ; $6ddc: $41
    ld bc, $007e                                  ; $6ddd: $01 $7e $00
    nop                                           ; $6de0: $00
    nop                                           ; $6de1: $00
    rst $38                                       ; $6de2: $ff
    inc a                                         ; $6de3: $3c
    call nz, $1ce4                                ; $6de4: $c4 $e4 $1c
    sub h                                         ; $6de7: $94
    ld l, h                                       ; $6de8: $6c
    ld a, h                                       ; $6de9: $7c
    adc b                                         ; $6dea: $88
    rst $38                                       ; $6deb: $ff
    ret z                                         ; $6dec: $c8

    jr c, jr_009_6e25                             ; $6ded: $38 $36

    call z, Call_000_07fb                         ; $6def: $cc $fb $07
    nop                                           ; $6df2: $00
    rst $38                                       ; $6df3: $ff
    rst $38                                       ; $6df4: $ff
    ld e, $12                                     ; $6df5: $1e $12
    ld l, [hl]                                    ; $6df7: $6e
    ld [hl], d                                    ; $6df8: $72
    ld b, d                                       ; $6df9: $42
    ld a, [hl]                                    ; $6dfa: $7e
    ld a, d                                       ; $6dfb: $7a
    ld a, $fd                                     ; $6dfc: $3e $fd
    ld b, $ff                                     ; $6dfe: $06 $ff
    ldh [$86], a                                  ; $6e00: $e0 $86
    ld b, $f9                                     ; $6e02: $06 $f9
    rst $38                                       ; $6e04: $ff
    ld a, [hl-]                                   ; $6e05: $3a
    inc e                                         ; $6e06: $1c
    rst $38                                       ; $6e07: $ff
    ld h, h                                       ; $6e08: $64
    inc a                                         ; $6e09: $3c

jr_009_6e0a:
    ld e, h                                       ; $6e0a: $5c
    ld h, h                                       ; $6e0b: $64
    ld h, h                                       ; $6e0c: $64
    ld e, h                                       ; $6e0d: $5c
    ld a, e                                       ; $6e0e: $7b
    ld b, [hl]                                    ; $6e0f: $46
    rst $38                                       ; $6e10: $ff
    ld b, l                                       ; $6e11: $45
    ld a, e                                       ; $6e12: $7b
    ld a, b                                       ; $6e13: $78
    ld b, a                                       ; $6e14: $47
    add b                                         ; $6e15: $80
    rst $38                                       ; $6e16: $ff
    ld h, e                                       ; $6e17: $63
    inc hl                                        ; $6e18: $23
    rst $38                                       ; $6e19: $ff
    ld h, e                                       ; $6e1a: $63
    ld h, e                                       ; $6e1b: $63
    ld h, d                                       ; $6e1c: $62
    inc hl                                        ; $6e1d: $23
    ld [bc], a                                    ; $6e1e: $02
    inc bc                                        ; $6e1f: $03
    ld bc, $ff01                                  ; $6e20: $01 $01 $ff
    pop bc                                        ; $6e23: $c1
    add c                                         ; $6e24: $81

jr_009_6e25:
    ld a, c                                       ; $6e25: $79
    pop af                                        ; $6e26: $f1
    ld c, $ff                                     ; $6e27: $0e $ff
    dec sp                                        ; $6e29: $3b
    ld e, $ff                                     ; $6e2a: $1e $ff
    adc [hl]                                      ; $6e2c: $8e
    inc b                                         ; $6e2d: $04
    call nz, Call_009_4684                        ; $6e2e: $c4 $84 $46
    call nz, $86ce                                ; $6e31: $c4 $ce $86
    rst $38                                       ; $6e34: $ff
    sbc e                                         ; $6e35: $9b
    adc [hl]                                      ; $6e36: $8e
    or c                                          ; $6e37: $b1
    sbc a                                         ; $6e38: $9f
    ld h, e                                       ; $6e39: $63
    db $fc                                        ; $6e3a: $fc
    daa                                           ; $6e3b: $27
    ld [hl+], a                                   ; $6e3c: $22
    rst $38                                       ; $6e3d: $ff
    inc c                                         ; $6e3e: $0c
    rlca                                          ; $6e3f: $07
    dec sp                                        ; $6e40: $3b
    inc e                                         ; $6e41: $1c
    ld [hl], $39                                  ; $6e42: $36 $39
    add hl, de                                    ; $6e44: $19
    ld c, $ff                                     ; $6e45: $0e $ff
    rrca                                          ; $6e47: $0f

Call_009_6e48:
    inc b                                         ; $6e48: $04
    call nz, $7a87                                ; $6e49: $c4 $87 $7a
    db $fd                                        ; $6e4c: $fd
    ld sp, $ffd1                                  ; $6e4d: $31 $d1 $ff
    pop af                                        ; $6e50: $f1
    ld de, $7191                                  ; $6e51: $11 $91 $71
    ld [hl], b                                    ; $6e54: $70
    sub b                                         ; $6e55: $90
    ret nc                                        ; $6e56: $d0

    jr nc, @+$01                                  ; $6e57: $30 $ff

    jr nc, @-$2e                                  ; $6e59: $30 $d0

    pop de                                        ; $6e5b: $d1
    jr nc, jr_009_6e6d                            ; $6e5c: $30 $0f

    rst $38                                       ; $6e5e: $ff
    ld b, e                                       ; $6e5f: $43
    jp nz, $c6ff                                  ; $6e60: $c2 $ff $c6

    add d                                         ; $6e63: $82
    adc h                                         ; $6e64: $8c
    ld b, $1a                                     ; $6e65: $06 $1a
    ld c, $31                                     ; $6e67: $0e $31
    rra                                           ; $6e69: $1f
    rst $38                                       ; $6e6a: $ff
    ld l, h                                       ; $6e6b: $6c
    inc sp                                        ; $6e6c: $33

jr_009_6e6d:
    add $f9                                       ; $6e6d: $c6 $f9
    db $10                                        ; $6e6f: $10
    rst $28                                       ; $6e70: $ef
    ld sp, $ff11                                  ; $6e71: $31 $11 $ff
    ld sp, $3131                                  ; $6e74: $31 $31 $31
    ld de, $0101                                  ; $6e77: $11 $01 $01
    add b                                         ; $6e7a: $80
    nop                                           ; $6e7b: $00
    rst $38                                       ; $6e7c: $ff
    ldh [$c0], a                                  ; $6e7d: $e0 $c0
    inc a                                         ; $6e7f: $3c
    ld hl, sp+$47                                 ; $6e80: $f8 $47
    cp a                                          ; $6e82: $bf
    ld [hl], e                                    ; $6e83: $73
    sub d                                         ; $6e84: $92
    rst $38                                       ; $6e85: $ff
    ld d, d                                       ; $6e86: $52
    or e                                          ; $6e87: $b3
    di                                            ; $6e88: $f3
    ld de, $b151                                  ; $6e89: $11 $51 $b1
    cp c                                          ; $6e8c: $b9
    ret nc                                        ; $6e8d: $d0

    rst $38                                       ; $6e8e: $ff
    add sp, -$68                                  ; $6e8f: $e8 $98
    sbc h                                         ; $6e91: $9c
    add sp, $07                                   ; $6e92: $e8 $07
    rst $38                                       ; $6e94: $ff
    call z, $ff84                                 ; $6e95: $cc $84 $ff
    adc h                                         ; $6e98: $8c
    adc h                                         ; $6e99: $8c
    adc h                                         ; $6e9a: $8c
    add h                                         ; $6e9b: $84
    nop                                           ; $6e9c: $00
    add b                                         ; $6e9d: $80
    ldh [$c0], a                                  ; $6e9e: $e0 $c0
    rst $38                                       ; $6ea0: $ff
    cp b                                          ; $6ea1: $b8
    ldh a, [$ef]                                  ; $6ea2: $f0 $ef
    sbc [hl]                                      ; $6ea4: $9e
    ld bc, $7fff                                  ; $6ea5: $01 $ff $7f
    ld b, b                                       ; $6ea8: $40
    rst $38                                       ; $6ea9: $ff
    ld c, h                                       ; $6eaa: $4c
    ld [hl], e                                    ; $6eab: $73
    ld [hl], e                                    ; $6eac: $73
    ld c, h                                       ; $6ead: $4c
    ld e, [hl]                                    ; $6eae: $5e
    ld h, c                                       ; $6eaf: $61
    ld hl, $3f3e                                  ; $6eb0: $21 $3e $3f
    ccf                                           ; $6eb3: $3f
    jr nz, jr_009_6ef2                            ; $6eb4: $20 $3c

    inc hl                                        ; $6eb6: $23
    ret nz                                        ; $6eb7: $c0

    rst $38                                       ; $6eb8: $ff
    nop                                           ; $6eb9: $00
    nop                                           ; $6eba: $00
    nop                                           ; $6ebb: $00
    rst $38                                       ; $6ebc: $ff
    rst $38                                       ; $6ebd: $ff
    nop                                           ; $6ebe: $00
    ldh [$1f], a                                  ; $6ebf: $e0 $1f
    rra                                           ; $6ec1: $1f
    ldh [$f0], a                                  ; $6ec2: $e0 $f0
    rrca                                          ; $6ec4: $0f
    rst $38                                       ; $6ec5: $ff
    adc a                                         ; $6ec6: $8f
    ld [hl], b                                    ; $6ec7: $70
    ld [hl], b                                    ; $6ec8: $70
    adc a                                         ; $6ec9: $8f
    rst $18                                       ; $6eca: $df
    jr nz, jr_009_6efe                            ; $6ecb: $20 $31

    adc $ff                                       ; $6ecd: $ce $ff
    cp $01                                        ; $6ecf: $fe $01
    add hl, sp                                    ; $6ed1: $39
    rst $00                                       ; $6ed2: $c7
    rst $00                                       ; $6ed3: $c7
    add hl, sp                                    ; $6ed4: $39
    ld a, c                                       ; $6ed5: $79
    add a                                         ; $6ed6: $87
    rst $38                                       ; $6ed7: $ff
    adc a                                         ; $6ed8: $8f
    ld [hl], c                                    ; $6ed9: $71
    pop af                                        ; $6eda: $f1
    rrca                                          ; $6edb: $0f
    rra                                           ; $6edc: $1f
    pop hl                                        ; $6edd: $e1
    pop hl                                        ; $6ede: $e1
    rra                                           ; $6edf: $1f
    rst $30                                       ; $6ee0: $f7
    rst $38                                       ; $6ee1: $ff
    rst $38                                       ; $6ee2: $ff
    nop                                           ; $6ee3: $00
    rst $38                                       ; $6ee4: $ff
    ld [c], a                                     ; $6ee5: $e2
    ld e, $1c                                     ; $6ee6: $1e $1c
    inc de                                        ; $6ee8: $13
    rra                                           ; $6ee9: $1f
    rst $38                                       ; $6eea: $ff
    dec de                                        ; $6eeb: $1b
    inc c                                         ; $6eec: $0c
    ld b, $05                                     ; $6eed: $06 $05
    ld h, a                                       ; $6eef: $67
    sbc b                                         ; $6ef0: $98
    rst $30                                       ; $6ef1: $f7

jr_009_6ef2:
    adc b                                         ; $6ef2: $88
    rst $38                                       ; $6ef3: $ff
    call nz, $b7bb                                ; $6ef4: $c4 $bb $b7
    ret z                                         ; $6ef7: $c8

    db $ec                                        ; $6ef8: $ec
    rst $38                                       ; $6ef9: $ff
    ld e, $93                                     ; $6efa: $1e $93
    rst $38                                       ; $6efc: $ff
    sub e                                         ; $6efd: $93

jr_009_6efe:
    add c                                         ; $6efe: $81
    add c                                         ; $6eff: $81
    add c                                         ; $6f00: $81
    ld a, d                                       ; $6f01: $7a
    add l                                         ; $6f02: $85
    ld a, [hl-]                                   ; $6f03: $3a
    push bc                                       ; $6f04: $c5
    rst $38                                       ; $6f05: $ff
    ld [de], a                                    ; $6f06: $12
    db $ed                                        ; $6f07: $ed
    sub $2f                                       ; $6f08: $d6 $2f
    rra                                           ; $6f0a: $1f
    ld sp, hl                                     ; $6f0b: $f9
    ld sp, $ffe0                                  ; $6f0c: $31 $e0 $ff
    ld h, b                                       ; $6f0f: $60
    ret nz                                        ; $6f10: $c0

    ret nz                                        ; $6f11: $c0

    add b                                         ; $6f12: $80
    swap h                                        ; $6f13: $cb $34
    add e                                         ; $6f15: $83
    ld a, h                                       ; $6f16: $7c
    rst $38                                       ; $6f17: $ff
    sub e                                         ; $6f18: $93
    ld l, h                                       ; $6f19: $6c
    sub [hl]                                      ; $6f1a: $96
    ld l, a                                       ; $6f1b: $6f
    ld c, l                                       ; $6f1c: $4d
    cp c                                          ; $6f1d: $b9
    sbc c                                         ; $6f1e: $99
    pop af                                        ; $6f1f: $f1
    rst $38                                       ; $6f20: $ff
    or c                                          ; $6f21: $b1
    pop hl                                        ; $6f22: $e1
    and $c3                                       ; $6f23: $e6 $c3
    db $d3                                        ; $6f25: $d3
    inc l                                         ; $6f26: $2c
    ret nz                                        ; $6f27: $c0

    ccf                                           ; $6f28: $3f
    rst $38                                       ; $6f29: $ff
    add hl, bc                                    ; $6f2a: $09
    or $09                                        ; $6f2b: $f6 $09
    or $0e                                        ; $6f2d: $f6 $0e
    rst $38                                       ; $6f2f: $ff
    db $db                                        ; $6f30: $db
    ld sp, $b1ff                                  ; $6f31: $31 $ff $b1
    ld h, b                                       ; $6f34: $60
    ld h, b                                       ; $6f35: $60
    ret nz                                        ; $6f36: $c0

    ld e, [hl]                                    ; $6f37: $5e
    and c                                         ; $6f38: $a1
    ld e, b                                       ; $6f39: $58
    and a                                         ; $6f3a: $a7
    rst $38                                       ; $6f3b: $ff
    ld d, c                                       ; $6f3c: $51
    xor [hl]                                      ; $6f3d: $ae
    ld e, e                                       ; $6f3e: $5b
    and h                                         ; $6f3f: $a4
    ret c                                         ; $6f40: $d8

    daa                                           ; $6f41: $27
    ld de, $ffef                                  ; $6f42: $11 $ef $ff
    and l                                         ; $6f45: $a5
    db $db                                        ; $6f46: $db
    db $e3                                        ; $6f47: $e3
    sbc [hl]                                      ; $6f48: $9e
    cp e                                          ; $6f49: $bb
    ld a, h                                       ; $6f4a: $7c
    db $ec                                        ; $6f4b: $ec
    ld b, a                                       ; $6f4c: $47
    rst $38                                       ; $6f4d: $ff
    ld b, l                                       ; $6f4e: $45
    add $c6                                       ; $6f4f: $c6 $c6
    add e                                         ; $6f51: $83
    add d                                         ; $6f52: $82
    add e                                         ; $6f53: $83
    add e                                         ; $6f54: $83
    ld bc, $11ff                                  ; $6f55: $01 $ff $11
    ld de, $1031                                  ; $6f58: $11 $31 $10
    dec de                                        ; $6f5b: $1b
    rst $38                                       ; $6f5c: $ff
    and h                                         ; $6f5d: $a4
    ld h, h                                       ; $6f5e: $64
    rst $28                                       ; $6f5f: $ef
    db $e4                                        ; $6f60: $e4
    inc h                                         ; $6f61: $24
    inc h                                         ; $6f62: $24
    db $e4                                        ; $6f63: $e4
    db $fc                                        ; $6f64: $fc
    pop hl                                        ; $6f65: $e1
    ld h, h                                       ; $6f66: $64
    and h                                         ; $6f67: $a4
    and h                                         ; $6f68: $a4
    rst $38                                       ; $6f69: $ff
    db $e4                                        ; $6f6a: $e4
    ld a, a                                       ; $6f6b: $7f
    add b                                         ; $6f6c: $80
    cp a                                          ; $6f6d: $bf
    ret nz                                        ; $6f6e: $c0

    ldh a, [$8f]                                  ; $6f6f: $f0 $8f
    rst $08                                       ; $6f71: $cf
    rst $38                                       ; $6f72: $ff
    or b                                          ; $6f73: $b0
    ld hl, sp-$79                                 ; $6f74: $f8 $87
    adc a                                         ; $6f76: $8f
    ldh a, [$f3]                                  ; $6f77: $f0 $f3
    adc h                                         ; $6f79: $8c
    xor $ff                                       ; $6f7a: $ee $ff
    sub c                                         ; $6f7c: $91
    rst $38                                       ; $6f7d: $ff
    nop                                           ; $6f7e: $00
    pop bc                                        ; $6f7f: $c1
    ld a, $7f                                     ; $6f80: $3e $7f
    add b                                         ; $6f82: $80
    add b                                         ; $6f83: $80
    rst $38                                       ; $6f84: $ff
    ld a, a                                       ; $6f85: $7f
    ld a, a                                       ; $6f86: $7f
    add b                                         ; $6f87: $80
    ret nz                                        ; $6f88: $c0

    ccf                                           ; $6f89: $3f
    ccf                                           ; $6f8a: $3f
    ret nz                                        ; $6f8b: $c0

    ldh [rSB], a                                  ; $6f8c: $e0 $01
    rra                                           ; $6f8e: $1f
    nop                                           ; $6f8f: $00
    nop                                           ; $6f90: $00
    nop                                           ; $6f91: $00
    rst $38                                       ; $6f92: $ff
    rst $28                                       ; $6f93: $ef
    db $10                                        ; $6f94: $10
    sbc d                                         ; $6f95: $9a
    ld h, l                                       ; $6f96: $65
    halt                                          ; $6f97: $76
    adc c                                         ; $6f98: $89
    call $ff32                                    ; $6f99: $cd $32 $ff
    dec sp                                        ; $6f9c: $3b
    call nz, Call_000_09f6                        ; $6f9d: $c4 $f6 $09
    add hl, de                                    ; $6fa0: $19
    and $00                                       ; $6fa1: $e6 $00
    rst $38                                       ; $6fa3: $ff
    rst $38                                       ; $6fa4: $ff
    ccf                                           ; $6fa5: $3f
    pop bc                                        ; $6fa6: $c1
    jp $fd3d                                      ; $6fa7: $c3 $3d $fd


    inc bc                                        ; $6faa: $03
    sbc e                                         ; $6fab: $9b
    ld h, [hl]                                    ; $6fac: $66
    rst $38                                       ; $6fad: $ff
    ld l, [hl]                                    ; $6fae: $6e
    sub d                                         ; $6faf: $92
    push bc                                       ; $6fb0: $c5
    dec sp                                        ; $6fb1: $3b
    ld hl, sp+$07                                 ; $6fb2: $f8 $07
    nop                                           ; $6fb4: $00
    rst $38                                       ; $6fb5: $ff
    rst $38                                       ; $6fb6: $ff
    rlca                                          ; $6fb7: $07
    inc b                                         ; $6fb8: $04
    jr jr_009_6fda                                ; $6fb9: $18 $1f

    ld de, $1e1e                                  ; $6fbb: $11 $1e $1e
    rrca                                          ; $6fbe: $0f
    rst $38                                       ; $6fbf: $ff
    ld bc, $8101                                  ; $6fc0: $01 $01 $81
    ld bc, $c1e1                                  ; $6fc3: $01 $e1 $c1
    ld a, $ff                                     ; $6fc6: $3e $ff
    rst $38                                       ; $6fc8: $ff
    adc [hl]                                      ; $6fc9: $8e
    add a                                         ; $6fca: $87
    sbc c                                         ; $6fcb: $99
    adc a                                         ; $6fcc: $8f
    sub e                                         ; $6fcd: $93
    sbc l                                         ; $6fce: $9d
    sub e                                         ; $6fcf: $93
    sbc l                                         ; $6fd0: $9d
    db $fd                                        ; $6fd1: $fd
    sub d                                         ; $6fd2: $92
    cp $e0                                        ; $6fd3: $fe $e0
    sub e                                         ; $6fd5: $93
    sbc h                                         ; $6fd6: $9c
    ld h, d                                       ; $6fd7: $62
    db $fd                                        ; $6fd8: $fd
    sbc b                                         ; $6fd9: $98

jr_009_6fda:
    ld [$18ff], sp                                ; $6fda: $08 $ff $18
    jr jr_009_6ff7                                ; $6fdd: $18 $18

    ld [$0000], sp                                ; $6fdf: $08 $00 $00
    ret nz                                        ; $6fe2: $c0

    add b                                         ; $6fe3: $80
    rst $38                                       ; $6fe4: $ff
    ld [hl], b                                    ; $6fe5: $70
    ldh [rNR34], a                                ; $6fe6: $e0 $1e
    db $fc                                        ; $6fe8: $fc
    inc bc                                        ; $6fe9: $03
    rst $38                                       ; $6fea: $ff
    adc $c7                                       ; $6feb: $ce $c7
    rst $38                                       ; $6fed: $ff
    db $e3                                        ; $6fee: $e3
    pop bc                                        ; $6fef: $c1
    or c                                          ; $6ff0: $b1
    pop hl                                        ; $6ff1: $e1
    sub c                                         ; $6ff2: $91
    pop af                                        ; $6ff3: $f1
    ld [hl], e                                    ; $6ff4: $73
    ld h, c                                       ; $6ff5: $61
    rst $38                                       ; $6ff6: $ff

jr_009_6ff7:
    ld h, [hl]                                    ; $6ff7: $66
    ld h, e                                       ; $6ff8: $63
    ld l, h                                       ; $6ff9: $6c
    ld h, a                                       ; $6ffa: $67
    sbc b                                         ; $6ffb: $98
    rst $38                                       ; $6ffc: $ff
    ret                                           ; $6ffd: $c9


    adc b                                         ; $6ffe: $88
    rst $38                                       ; $6fff: $ff
    add e                                         ; $7000: $83
    ld bc, $070e                                  ; $7001: $01 $0e $07
    adc h                                         ; $7004: $8c

jr_009_7005:
    rrca                                          ; $7005: $0f
    add [hl]                                      ; $7006: $86
    add e                                         ; $7007: $83
    rst $38                                       ; $7008: $ff
    jp Jump_009_7181                              ; $7009: $c3 $81 $71


    pop hl                                        ; $700c: $e1
    ld e, $ff                                     ; $700d: $1e $ff
    ld [c], a                                     ; $700f: $e2
    sbc [hl]                                      ; $7010: $9e
    rst $38                                       ; $7011: $ff
    ld b, [hl]                                    ; $7012: $46
    cp h                                          ; $7013: $bc
    inc b                                         ; $7014: $04
    db $fc                                        ; $7015: $fc
    inc b                                         ; $7016: $04
    db $fc                                        ; $7017: $fc
    inc e                                         ; $7018: $1c
    add sp, -$01                                  ; $7019: $e8 $ff
    jr jr_009_7005                                ; $701b: $18 $e8

    add hl, de                                    ; $701d: $19
    add sp, $37                                   ; $701e: $e8 $37
    rst $08                                       ; $7020: $cf
    jr nz, jr_009_7043                            ; $7021: $20 $20

    db $fd                                        ; $7023: $fd
    nop                                           ; $7024: $00
    rst $38                                       ; $7025: $ff
    ldh [$3c], a                                  ; $7026: $e0 $3c
    inc e                                         ; $7028: $1c
    and $7c                                       ; $7029: $e6 $7c
    jp z, $ffb6                                   ; $702b: $ca $b6 $ff

    add e                                         ; $702e: $83
    cp $01                                        ; $702f: $fe $01
    rst $38                                       ; $7031: $ff
    and h                                         ; $7032: $a4
    db $e4                                        ; $7033: $e4
    db $e4                                        ; $7034: $e4
    ld h, h                                       ; $7035: $64
    cp a                                          ; $7036: $bf
    ld h, h                                       ; $7037: $64
    ld h, h                                       ; $7038: $64
    ld b, h                                       ; $7039: $44
    ld h, h                                       ; $703a: $64
    ld h, h                                       ; $703b: $64
    inc h                                         ; $703c: $24
    rst $38                                       ; $703d: $ff
    pop hl                                        ; $703e: $e1
    db $db                                        ; $703f: $db
    rst $38                                       ; $7040: $ff
    rst $38                                       ; $7041: $ff
    or e                                          ; $7042: $b3

jr_009_7043:
    call z, $a3dc                                 ; $7043: $cc $dc $a3
    rst $20                                       ; $7046: $e7
    sbc b                                         ; $7047: $98
    cp b                                          ; $7048: $b8
    rst $38                                       ; $7049: $ff
    rst $00                                       ; $704a: $c7
    rst $08                                       ; $704b: $cf
    or b                                          ; $704c: $b0
    or $89                                        ; $704d: $f6 $89
    cp c                                          ; $704f: $b9
    add $00                                       ; $7050: $c6 $00
    rst $38                                       ; $7052: $ff
    rst $38                                       ; $7053: $ff
    sbc a                                         ; $7054: $9f
    ld h, b                                       ; $7055: $60
    ld [hl], b                                    ; $7056: $70
    adc a                                         ; $7057: $8f
    rst $08                                       ; $7058: $cf
    jr nc, jr_009_708c                            ; $7059: $30 $31

    rst $38                                       ; $705b: $ff
    adc $fe                                       ; $705c: $ce $fe
    ld bc, $fc03                                  ; $705e: $01 $03 $fc
    db $fc                                        ; $7061: $fc
    inc bc                                        ; $7062: $03
    nop                                           ; $7063: $00
    ld bc, $00ff                                  ; $7064: $01 $ff $00
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    rst $38                                       ; $7069: $ff
    rst $38                                       ; $706a: $ff
    nop                                           ; $706b: $00
    dec sp                                        ; $706c: $3b
    call nz, Call_000_38c7                        ; $706d: $c4 $c7 $38
    ld a, b                                       ; $7070: $78
    add a                                         ; $7071: $87
    rst $38                                       ; $7072: $ff
    adc a                                         ; $7073: $8f
    ld [hl], b                                    ; $7074: $70
    ld hl, sp+$07                                 ; $7075: $f8 $07
    rlca                                          ; $7077: $07
    ld hl, sp-$04                                 ; $7078: $f8 $fc
    inc bc                                        ; $707a: $03
    rst $28                                       ; $707b: $ef
    rst $38                                       ; $707c: $ff
    nop                                           ; $707d: $00
    inc a                                         ; $707e: $3c
    jp $e3f0                                      ; $707f: $c3 $f0 $e3


    di                                            ; $7082: $f3
    inc c                                         ; $7083: $0c
    inc e                                         ; $7084: $1c
    rst $38                                       ; $7085: $ff
    db $e3                                        ; $7086: $e3
    rst $20                                       ; $7087: $e7
    jr @+$01                                      ; $7088: $18 $ff

    nop                                           ; $708a: $00

Call_009_708b:
    pop hl                                        ; $708b: $e1

jr_009_708c:
    ld e, $9f                                     ; $708c: $1e $9f
    rst $38                                       ; $708e: $ff
    ld h, b                                       ; $708f: $60
    ld h, b                                       ; $7090: $60
    sbc a                                         ; $7091: $9f
    rst $18                                       ; $7092: $df
    jr nz, @-$4e                                  ; $7093: $20 $b0

    ld c, a                                       ; $7095: $4f
    ld a, a                                       ; $7096: $7f
    rst $38                                       ; $7097: $ff
    add b                                         ; $7098: $80
    jp $f93c                                      ; $7099: $c3 $3c $f9


    ld b, $f1                                     ; $709c: $06 $f1
    ld c, $0c                                     ; $709e: $0e $0c
    rst $38                                       ; $70a0: $ff
    di                                            ; $70a1: $f3
    ld hl, sp+$07                                 ; $70a2: $f8 $07
    add [hl]                                      ; $70a4: $86
    ld a, c                                       ; $70a5: $79
    ld a, h                                       ; $70a6: $7c
    add e                                         ; $70a7: $83
    jp Jump_000_3cff                              ; $70a8: $c3 $ff $3c


    ld a, $c1                                     ; $70ab: $3e $c1
    rst $38                                       ; $70ad: $ff
    nop                                           ; $70ae: $00
    db $fd                                        ; $70af: $fd
    ld [bc], a                                    ; $70b0: $02
    inc bc                                        ; $70b1: $03
    rst $38                                       ; $70b2: $ff
    db $fc                                        ; $70b3: $fc
    cp $01                                        ; $70b4: $fe $01
    ld bc, $3ffe                                  ; $70b6: $01 $fe $3f
    ret nz                                        ; $70b9: $c0

    add b                                         ; $70ba: $80
    rst $38                                       ; $70bb: $ff
    ld a, a                                       ; $70bc: $7f
    ld b, e                                       ; $70bd: $43
    cp h                                          ; $70be: $bc
    add b                                         ; $70bf: $80
    ld a, a                                       ; $70c0: $7f
    pop bc                                        ; $70c1: $c1
    ld a, $9c                                     ; $70c2: $3e $9c
    rst $38                                       ; $70c4: $ff
    ld h, e                                       ; $70c5: $63
    ld b, c                                       ; $70c6: $41
    cp [hl]                                       ; $70c7: $be
    add e                                         ; $70c8: $83
    ld a, h                                       ; $70c9: $7c
    ld h, b                                       ; $70ca: $60
    sbc a                                         ; $70cb: $9f
    add $ff                                       ; $70cc: $c6 $ff
    add hl, sp                                    ; $70ce: $39
    and [hl]                                      ; $70cf: $a6
    ld e, c                                       ; $70d0: $59
    ld bc, $83fe                                  ; $70d1: $01 $fe $83
    ld a, h                                       ; $70d4: $7c
    dec sp                                        ; $70d5: $3b

jr_009_70d6:
    rst $38                                       ; $70d6: $ff
    call nz, Call_000_0df2                        ; $70d7: $c4 $f2 $0d
    add e                                         ; $70da: $83
    ld a, h                                       ; $70db: $7c
    ld b, $f9                                     ; $70dc: $06 $f9
    ld h, a                                       ; $70de: $67

jr_009_70df:
    rst $30                                       ; $70df: $f7
    sbc b                                         ; $70e0: $98
    db $e4                                        ; $70e1: $e4
    dec de                                        ; $70e2: $1b
    and b                                         ; $70e3: $a0
    push hl                                       ; $70e4: $e5
    adc [hl]                                      ; $70e5: $8e
    ld [hl], c                                    ; $70e6: $71
    ldh a, [rIF]                                  ; $70e7: $f0 $0f
    rst $38                                       ; $70e9: $ff
    ld de, $c3ee                                  ; $70ea: $11 $ee $c3
    inc a                                         ; $70ed: $3c
    sbc a                                         ; $70ee: $9f
    ld h, b                                       ; $70ef: $60
    sub c                                         ; $70f0: $91
    ld l, [hl]                                    ; $70f1: $6e
    rst $38                                       ; $70f2: $ff
    ccf                                           ; $70f3: $3f
    ret nz                                        ; $70f4: $c0

    jr nz, jr_009_70d6                            ; $70f5: $20 $df

    ld a, a                                       ; $70f7: $7f
    add b                                         ; $70f8: $80
    ldh a, [rIF]                                  ; $70f9: $f0 $0f
    rst $38                                       ; $70fb: $ff
    rst $38                                       ; $70fc: $ff
    nop                                           ; $70fd: $00
    jp $ff3c                                      ; $70fe: $c3 $3c $ff


    nop                                           ; $7101: $00
    di                                            ; $7102: $f3
    inc c                                         ; $7103: $0c
    cp a                                          ; $7104: $bf
    rrca                                          ; $7105: $0f
    ldh a, [$f8]                                  ; $7106: $f0 $f8
    rlca                                          ; $7108: $07
    add a                                         ; $7109: $87
    ld a, b                                       ; $710a: $78
    and b                                         ; $710b: $a0
    db $ed                                        ; $710c: $ed
    rst $38                                       ; $710d: $ff
    rst $38                                       ; $710e: $ff
    nop                                           ; $710f: $00
    add b                                         ; $7110: $80
    ld a, a                                       ; $7111: $7f
    ld a, a                                       ; $7112: $7f
    add b                                         ; $7113: $80
    rst $38                                       ; $7114: $ff
    nop                                           ; $7115: $00
    add $ff                                       ; $7116: $c6 $ff
    add hl, sp                                    ; $7118: $39
    cp a                                          ; $7119: $bf
    ld b, b                                       ; $711a: $40

jr_009_711b:
    ld h, b                                       ; $711b: $60
    sbc a                                         ; $711c: $9f
    sbc a                                         ; $711d: $9f
    ld h, b                                       ; $711e: $60
    ld [hl], b                                    ; $711f: $70
    rra                                           ; $7120: $1f
    adc a                                         ; $7121: $8f
    rst $08                                       ; $7122: $cf
    jr nc, jr_009_70df                            ; $7123: $30 $ba

    ld b, l                                       ; $7125: $45
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    nop                                           ; $7128: $00
    rst $38                                       ; $7129: $ff
    sub e                                         ; $712a: $93
    ld l, h                                       ; $712b: $6c
    xor $11                                       ; $712c: $ee $11
    xor c                                         ; $712e: $a9
    ld d, [hl]                                    ; $712f: $56
    ld d, [hl]                                    ; $7130: $56
    xor c                                         ; $7131: $a9
    rst $38                                       ; $7132: $ff
    pop de                                        ; $7133: $d1
    ld l, $26                                     ; $7134: $2e $26
    reti                                          ; $7136: $d9


    rst $18                                       ; $7137: $df
    jr nz, jr_009_713a                            ; $7138: $20 $00

jr_009_713a:
    rst $38                                       ; $713a: $ff
    rst $38                                       ; $713b: $ff
    sbc b                                         ; $713c: $98
    ld h, a                                       ; $713d: $67
    ld a, a                                       ; $713e: $7f
    add b                                         ; $713f: $80
    call nz, Call_000_3f3b                        ; $7140: $c4 $3b $3f
    ret nz                                        ; $7143: $c0

    rst $38                                       ; $7144: $ff
    jp $7d3c                                      ; $7145: $c3 $3c $7d


    add d                                         ; $7148: $82
    add [hl]                                      ; $7149: $86

jr_009_714a:
    ld a, c                                       ; $714a: $79
    nop                                           ; $714b: $00
    rst $38                                       ; $714c: $ff
    rst $38                                       ; $714d: $ff
    inc a                                         ; $714e: $3c
    jp Jump_000_38c7                              ; $714f: $c3 $c7 $38


    jr c, jr_009_711b                             ; $7152: $38 $c7

    rst $20                                       ; $7154: $e7
    jr @+$01                                      ; $7155: $18 $ff

    inc a                                         ; $7157: $3c
    jp Jump_000_3cc3                              ; $7158: $c3 $c3 $3c


    ld a, [hl]                                    ; $715b: $7e
    add c                                         ; $715c: $81
    nop                                           ; $715d: $00
    rst $38                                       ; $715e: $ff
    rst $38                                       ; $715f: $ff
    pop hl                                        ; $7160: $e1
    ld e, $9e                                     ; $7161: $1e $9e
    ld h, c                                       ; $7163: $61
    ld h, c                                       ; $7164: $61
    sbc [hl]                                      ; $7165: $9e
    rst $18                                       ; $7166: $df
    jr nz, @+$01                                  ; $7167: $20 $ff

    jr nz, jr_009_714a                            ; $7169: $20 $df

    rst $18                                       ; $716b: $df
    jr nz, jr_009_719e                            ; $716c: $20 $30

    rst $08                                       ; $716e: $cf
    nop                                           ; $716f: $00
    rst $38                                       ; $7170: $ff
    rst $38                                       ; $7171: $ff
    sub c                                         ; $7172: $91
    ld l, [hl]                                    ; $7173: $6e
    ld a, h                                       ; $7174: $7c
    add e                                         ; $7175: $83
    ret nz                                        ; $7176: $c0

    ccf                                           ; $7177: $3f
    ld a, $c1                                     ; $7178: $3e $c1
    rst $38                                       ; $717a: $ff
    db $e3                                        ; $717b: $e3
    inc e                                         ; $717c: $1c
    sbc h                                         ; $717d: $9c
    ld h, e                                       ; $717e: $63
    ld [hl], a                                    ; $717f: $77
    adc b                                         ; $7180: $88

Jump_009_7181:
    nop                                           ; $7181: $00
    rst $38                                       ; $7182: $ff

jr_009_7183:
    rst $38                                       ; $7183: $ff
    ld d, l                                       ; $7184: $55
    xor d                                         ; $7185: $aa
    ld d, d                                       ; $7186: $52
    xor l                                         ; $7187: $ad
    ld l, b                                       ; $7188: $68
    sub a                                         ; $7189: $97
    rrca                                          ; $718a: $0f
    ldh a, [rIE]                                  ; $718b: $f0 $ff
    add b                                         ; $718d: $80
    ld a, a                                       ; $718e: $7f
    ldh [$1f], a                                  ; $718f: $e0 $1f
    ld l, b                                       ; $7191: $68
    sub a                                         ; $7192: $97
    inc bc                                        ; $7193: $03
    db $fc                                        ; $7194: $fc
    rst $38                                       ; $7195: $ff
    adc a                                         ; $7196: $8f
    ld [hl], b                                    ; $7197: $70
    adc $31                                       ; $7198: $ce $31
    jr jr_009_7183                                ; $719a: $18 $e7

    ldh a, [rIF]                                  ; $719c: $f0 $0f

jr_009_719e:
    rst $38                                       ; $719e: $ff
    pop bc                                        ; $719f: $c1
    ld a, $07                                     ; $71a0: $3e $07
    ld hl, sp+$1f                                 ; $71a2: $f8 $1f
    ldh [$f0], a                                  ; $71a4: $e0 $f0
    rrca                                          ; $71a6: $0f
    rst $38                                       ; $71a7: $ff
    adc [hl]                                      ; $71a8: $8e
    ld [hl], c                                    ; $71a9: $71
    ccf                                           ; $71aa: $3f
    ret nz                                        ; $71ab: $c0

    ld h, h                                       ; $71ac: $64
    sbc e                                         ; $71ad: $9b
    rst $38                                       ; $71ae: $ff
    nop                                           ; $71af: $00
    db $fc                                        ; $71b0: $fc
    and b                                         ; $71b1: $a0
    rst $38                                       ; $71b2: $ff
    and b                                         ; $71b3: $a0
    db $e3                                        ; $71b4: $e3
    add c                                         ; $71b5: $81
    ld a, [hl]                                    ; $71b6: $7e
    ld a, [hl]                                    ; $71b7: $7e
    add c                                         ; $71b8: $81
    pop bc                                        ; $71b9: $c1
    ld a, $fe                                     ; $71ba: $3e $fe
    and b                                         ; $71bc: $a0
    jp hl                                         ; $71bd: $e9


    ld d, [hl]                                    ; $71be: $56
    xor c                                         ; $71bf: $a9
    jp hl                                         ; $71c0: $e9


    ld d, $6f                                     ; $71c1: $16 $6f
    sub b                                         ; $71c3: $90
    or b                                          ; $71c4: $b0
    ld a, a                                       ; $71c5: $7f
    ld c, a                                       ; $71c6: $4f
    rst $18                                       ; $71c7: $df
    jr nz, jr_009_722b                            ; $71c8: $20 $61

    sbc [hl]                                      ; $71ca: $9e
    nop                                           ; $71cb: $00
    rst $38                                       ; $71cc: $ff
    nop                                           ; $71cd: $00
    nop                                           ; $71ce: $00
    nop                                           ; $71cf: $00
    rst $38                                       ; $71d0: $ff
    rst $38                                       ; $71d1: $ff
    nop                                           ; $71d2: $00
    sbc c                                         ; $71d3: $99
    ld h, [hl]                                    ; $71d4: $66
    halt                                          ; $71d5: $76
    adc c                                         ; $71d6: $89
    rst $08                                       ; $71d7: $cf
    jr nc, @+$01                                  ; $71d8: $30 $ff

    jr c, @-$37                                   ; $71da: $38 $c7

    rst $20                                       ; $71dc: $e7
    jr jr_009_71fb                                ; $71dd: $18 $1c

    db $e3                                        ; $71df: $e3
    di                                            ; $71e0: $f3
    inc c                                         ; $71e1: $0c
    rst $38                                       ; $71e2: $ff
    rst $38                                       ; $71e3: $ff
    nop                                           ; $71e4: $00
    di                                            ; $71e5: $f3
    inc c                                         ; $71e6: $0c
    inc e                                         ; $71e7: $1c
    db $e3                                        ; $71e8: $e3
    and $19                                       ; $71e9: $e6 $19
    rst $38                                       ; $71eb: $ff
    dec sp                                        ; $71ec: $3b
    call nz, Call_000_33cc                        ; $71ed: $c4 $cc $33
    ld [hl], a                                    ; $71f0: $77
    adc b                                         ; $71f1: $88
    cp b                                          ; $71f2: $b8
    ld b, a                                       ; $71f3: $47
    rst $38                                       ; $71f4: $ff
    rst $38                                       ; $71f5: $ff
    nop                                           ; $71f6: $00
    adc h                                         ; $71f7: $8c
    ld [hl], e                                    ; $71f8: $73
    di                                            ; $71f9: $f3
    inc c                                         ; $71fa: $0c

jr_009_71fb:
    ld e, $e1                                     ; $71fb: $1e $e1
    rst $38                                       ; $71fd: $ff
    pop hl                                        ; $71fe: $e1
    ld e, $7f                                     ; $71ff: $1e $7f
    add b                                         ; $7201: $80
    sbc h                                         ; $7202: $9c
    ld h, e                                       ; $7203: $63
    db $e3                                        ; $7204: $e3
    inc e                                         ; $7205: $1c
    rst $38                                       ; $7206: $ff
    rst $38                                       ; $7207: $ff
    nop                                           ; $7208: $00
    db $e3                                        ; $7209: $e3
    inc e                                         ; $720a: $1c
    sbc [hl]                                      ; $720b: $9e
    ld h, c                                       ; $720c: $61
    ld [hl], c                                    ; $720d: $71
    adc [hl]                                      ; $720e: $8e
    rst $38                                       ; $720f: $ff
    rst $08                                       ; $7210: $cf
    jr nc, jr_009_7245                            ; $7211: $30 $32

    call Call_000_00ff                            ; $7213: $cd $ff $00
    ret nz                                        ; $7216: $c0

    ccf                                           ; $7217: $3f
    rst $38                                       ; $7218: $ff
    rst $38                                       ; $7219: $ff
    nop                                           ; $721a: $00

jr_009_721b:
    rst $38                                       ; $721b: $ff
    nop                                           ; $721c: $00
    ld bc, $fefe                                  ; $721d: $01 $fe $fe
    ld bc, $03ff                                  ; $7220: $01 $ff $03
    db $fc                                        ; $7223: $fc
    db $fc                                        ; $7224: $fc
    inc bc                                        ; $7225: $03
    and a                                         ; $7226: $a7
    ld e, b                                       ; $7227: $58
    add hl, sp                                    ; $7228: $39
    add $ff                                       ; $7229: $c6 $ff

jr_009_722b:
    rst $38                                       ; $722b: $ff
    nop                                           ; $722c: $00
    inc sp                                        ; $722d: $33
    call z, $23dc                                 ; $722e: $cc $dc $23
    ld h, e                                       ; $7231: $63
    sbc h                                         ; $7232: $9c
    rst $38                                       ; $7233: $ff
    cp [hl]                                       ; $7234: $be
    ld b, c                                       ; $7235: $41
    rst $00                                       ; $7236: $c7
    jr c, jr_009_72b1                             ; $7237: $38 $78

    add a                                         ; $7239: $87
    sbc a                                         ; $723a: $9f
    ld h, b                                       ; $723b: $60
    nop                                           ; $723c: $00
    and b                                         ; $723d: $a0
    rst $38                                       ; $723e: $ff
    and b                                         ; $723f: $a0
    rst $38                                       ; $7240: $ff
    and b                                         ; $7241: $a0
    ld sp, hl                                     ; $7242: $f9
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00

jr_009_7245:
    nop                                           ; $7245: $00
    rst $38                                       ; $7246: $ff
    inc c                                         ; $7247: $0c
    di                                            ; $7248: $f3
    ei                                            ; $7249: $fb
    inc b                                         ; $724a: $04
    call z, Call_000_3733                         ; $724b: $cc $33 $37
    ret z                                         ; $724e: $c8

    rst $38                                       ; $724f: $ff
    ldh a, [rIF]                                  ; $7250: $f0 $0f
    rra                                           ; $7252: $1f
    ldh [$e1], a                                  ; $7253: $e0 $e1
    ld e, $00                                     ; $7255: $1e $00
    rst $38                                       ; $7257: $ff
    rst $38                                       ; $7258: $ff
    rst $00                                       ; $7259: $c7
    jr c, jr_009_721b                             ; $725a: $38 $bf

    ld b, b                                       ; $725c: $40
    ld [hl], b                                    ; $725d: $70
    adc a                                         ; $725e: $8f
    rst $08                                       ; $725f: $cf
    jr nc, @+$01                                  ; $7260: $30 $ff

    ld a, b                                       ; $7262: $78
    add a                                         ; $7263: $87
    adc a                                         ; $7264: $8f
    ld [hl], b                                    ; $7265: $70
    di                                            ; $7266: $f3
    inc c                                         ; $7267: $0c

jr_009_7268:
    nop                                           ; $7268: $00
    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    ld a, $c1                                     ; $726b: $3e $c1
    pop bc                                        ; $726d: $c1
    ld a, $7f                                     ; $726e: $3e $7f
    add b                                         ; $7270: $80
    add b                                         ; $7271: $80
    ld a, a                                       ; $7272: $7f
    rst $38                                       ; $7273: $ff
    ld a, a                                       ; $7274: $7f
    add b                                         ; $7275: $80
    ret nz                                        ; $7276: $c0

    ccf                                           ; $7277: $3f
    ccf                                           ; $7278: $3f
    ret nz                                        ; $7279: $c0

    nop                                           ; $727a: $00
    rst $38                                       ; $727b: $ff
    rst $38                                       ; $727c: $ff
    ccf                                           ; $727d: $3f

Call_009_727e:
    ret nz                                        ; $727e: $c0

    ldh [$1f], a                                  ; $727f: $e0 $1f
    rra                                           ; $7281: $1f
    ldh [$f0], a                                  ; $7282: $e0 $f0
    rrca                                          ; $7284: $0f
    rst $38                                       ; $7285: $ff
    adc a                                         ; $7286: $8f
    ld [hl], b                                    ; $7287: $70
    ld [hl], b                                    ; $7288: $70
    adc a                                         ; $7289: $8f
    rst $18                                       ; $728a: $df
    jr nz, jr_009_728d                            ; $728b: $20 $00

jr_009_728d:
    rst $38                                       ; $728d: $ff
    ccf                                           ; $728e: $3f
    adc $31                                       ; $728f: $ce $31
    add hl, sp                                    ; $7291: $39
    add $c7                                       ; $7292: $c6 $c7
    jr c, jr_009_7268                             ; $7294: $38 $d2

    pop hl                                        ; $7296: $e1
    cp [hl]                                       ; $7297: $be
    pop hl                                        ; $7298: $e1
    rst $38                                       ; $7299: $ff
    nop                                           ; $729a: $00
    rst $38                                       ; $729b: $ff
    rst $20                                       ; $729c: $e7
    jr jr_009_72d7                                ; $729d: $18 $38

    rst $00                                       ; $729f: $c7
    adc a                                         ; $72a0: $8f
    ld [hl], b                                    ; $72a1: $70
    rst $38                                       ; $72a2: $ff
    ld a, b                                       ; $72a3: $78
    add a                                         ; $72a4: $87
    add a                                         ; $72a5: $87
    ld a, b                                       ; $72a6: $78
    ld hl, sp+$07                                 ; $72a7: $f8 $07
    rlca                                          ; $72a9: $07
    ld hl, sp+$03                                 ; $72aa: $f8 $03
    nop                                           ; $72ac: $00
    rst $38                                       ; $72ad: $ff
    and b                                         ; $72ae: $a0
    rst $38                                       ; $72af: $ff
    and b                                         ; $72b0: $a0

jr_009_72b1:
    rst $38                                       ; $72b1: $ff
    and b                                         ; $72b2: $a0
    ld sp, hl                                     ; $72b3: $f9
    nop                                           ; $72b4: $00
    nop                                           ; $72b5: $00
    nop                                           ; $72b6: $00
    rst $38                                       ; $72b7: $ff
    rst $38                                       ; $72b8: $ff
    nop                                           ; $72b9: $00
    inc a                                         ; $72ba: $3c
    jp Jump_000_38c7                              ; $72bb: $c3 $c7 $38


    ld sp, hl                                     ; $72be: $f9
    ld b, $ff                                     ; $72bf: $06 $ff
    ld c, $f1                                     ; $72c1: $0e $f1
    or $09                                        ; $72c3: $f6 $09
    add hl, de                                    ; $72c5: $19
    and $e7                                       ; $72c6: $e6 $e7
    jr @+$01                                      ; $72c8: $18 $ff

    rst $38                                       ; $72ca: $ff
    nop                                           ; $72cb: $00
    call c, Call_009_6623                         ; $72cc: $dc $23 $66
    sbc c                                         ; $72cf: $99
    cp c                                          ; $72d0: $b9
    ld b, a                                       ; $72d1: $47
    rst $38                                       ; $72d2: $ff
    swap [hl]                                     ; $72d3: $cb $36
    or $0c                                        ; $72d5: $f6 $0c

jr_009_72d7:
    inc [hl]                                      ; $72d7: $34
    call z, Call_000_38cd                         ; $72d8: $cc $cd $38
    rst $38                                       ; $72db: $ff
    rst $38                                       ; $72dc: $ff
    nop                                           ; $72dd: $00
    ld [hl], b                                    ; $72de: $70
    adc a                                         ; $72df: $8f
    rst $28                                       ; $72e0: $ef
    ldh a, [$b1]                                  ; $72e1: $f0 $b1
    ld e, $ff                                     ; $72e3: $1e $ff
    ld e, $11                                     ; $72e5: $1e $11
    inc de                                        ; $72e7: $13
    inc e                                         ; $72e8: $1c
    db $ed                                        ; $72e9: $ed
    ld [hl], e                                    ; $72ea: $73
    add a                                         ; $72eb: $87
    cp $ff                                        ; $72ec: $fe $ff
    rst $38                                       ; $72ee: $ff
    nop                                           ; $72ef: $00
    sbc d                                         ; $72f0: $9a
    ld h, l                                       ; $72f1: $65
    halt                                          ; $72f2: $76
    adc c                                         ; $72f3: $89
    adc $3f                                       ; $72f4: $ce $3f
    rst $38                                       ; $72f6: $ff
    inc sp                                        ; $72f7: $33
    pop de                                        ; $72f8: $d1
    pop af                                        ; $72f9: $f1
    db $10                                        ; $72fa: $10
    sub b                                         ; $72fb: $90
    ldh a, [$d3]                                  ; $72fc: $f0 $d3
    ld [hl], e                                    ; $72fe: $73
    rst $38                                       ; $72ff: $ff
    rst $38                                       ; $7300: $ff
    nop                                           ; $7301: $00
    jp $fc3c                                      ; $7302: $c3 $3c $fc


    inc bc                                        ; $7305: $03
    sbc d                                         ; $7306: $9a
    ld a, l                                       ; $7307: $7d
    rst $38                                       ; $7308: $ff
    ld l, h                                       ; $7309: $6c
    and a                                         ; $730a: $a7
    and a                                         ; $730b: $a7
    db $e3                                        ; $730c: $e3
    ld d, e                                       ; $730d: $53
    ld h, c                                       ; $730e: $61
    ld a, b                                       ; $730f: $78
    jr nc, @+$01                                  ; $7310: $30 $ff

    rst $38                                       ; $7312: $ff
    nop                                           ; $7313: $00
    sub b                                         ; $7314: $90
    ld l, a                                       ; $7315: $6f
    jr nc, @+$01                                  ; $7316: $30 $ff

    ld l, a                                       ; $7318: $6f
    ret z                                         ; $7319: $c8

    rst $38                                       ; $731a: $ff
    ret z                                         ; $731b: $c8

    adc a                                         ; $731c: $8f
    sbc a                                         ; $731d: $9f
    ld [$1f30], sp                                ; $731e: $08 $30 $1f
    ld h, e                                       ; $7321: $63
    inc a                                         ; $7322: $3c
    rst $38                                       ; $7323: $ff
    rst $38                                       ; $7324: $ff
    nop                                           ; $7325: $00
    inc c                                         ; $7326: $0c
    di                                            ; $7327: $f3
    ld a, l                                       ; $7328: $7d
    cp $86                                        ; $7329: $fe $86
    add e                                         ; $732b: $83
    rst $38                                       ; $732c: $ff
    jp $4181                                      ; $732d: $c3 $81 $41


    ret nz                                        ; $7330: $c0

    ld c, h                                       ; $7331: $4c
    ret z                                         ; $7332: $c8

    adc $4c                                       ; $7333: $ce $4c
    cp $a0                                        ; $7335: $fe $a0
    pop hl                                        ; $7337: $e1
    ld h, a                                       ; $7338: $67
    sbc b                                         ; $7339: $98
    jr c, @-$37                                   ; $733a: $38 $c7

    rrca                                          ; $733c: $0f
    ldh a, [$86]                                  ; $733d: $f0 $86
    rst $28                                       ; $733f: $ef
    ld sp, hl                                     ; $7340: $f9
    jp $667f                                      ; $7341: $c3 $7f $66


    ldh [$e0], a                                  ; $7344: $e0 $e0
    ld [hl], b                                    ; $7346: $70
    adc a                                         ; $7347: $8f
    rst $08                                       ; $7348: $cf
    rst $38                                       ; $7349: $ff
    jr nc, jr_009_737d                            ; $734a: $30 $31

    adc $fd                                       ; $734c: $ce $fd
    inc bc                                        ; $734e: $03
    jp nz, $e6fe                                  ; $734f: $c2 $fe $e6

    di                                            ; $7352: $f3
    ld a, $38                                     ; $7353: $3e $38
    add b                                         ; $7355: $80
    ldh [$a0], a                                  ; $7356: $e0 $a0
    pop hl                                        ; $7358: $e1
    call $bb32                                    ; $7359: $cd $32 $bb

jr_009_735c:
    call nz, Call_009_76bf                        ; $735c: $c4 $bf $76
    ld c, c                                       ; $735f: $49
    ld e, e                                       ; $7360: $5b
    ld h, a                                       ; $7361: $67
    ld [hl], $2c                                  ; $7362: $36 $2c
    and b                                         ; $7364: $a0
    db $e3                                        ; $7365: $e3
    sbc e                                         ; $7366: $9b
    rst $38                                       ; $7367: $ff
    ld h, h                                       ; $7368: $64
    ld l, h                                       ; $7369: $6c
    sub e                                         ; $736a: $93
    rst $00                                       ; $736b: $c7
    ld hl, sp-$18                                 ; $736c: $f8 $e8
    scf                                           ; $736e: $37
    ccf                                           ; $736f: $3f
    rst $38                                       ; $7370: $ff
    db $10                                        ; $7371: $10
    rst $38                                       ; $7372: $ff
    nop                                           ; $7373: $00
    sbc [hl]                                      ; $7374: $9e
    ld h, c                                       ; $7375: $61
    ld [hl], c                                    ; $7376: $71
    adc [hl]                                      ; $7377: $8e
    adc a                                         ; $7378: $8f
    rst $38                                       ; $7379: $ff
    ld [hl], b                                    ; $737a: $70
    ld a, b                                       ; $737b: $78
    add a                                         ; $737c: $87

jr_009_737d:
    rst $00                                       ; $737d: $c7
    jr c, jr_009_73bc                             ; $737e: $38 $3c

    jp Jump_000_01e3                              ; $7380: $c3 $e3 $01


    inc e                                         ; $7383: $1c
    nop                                           ; $7384: $00
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    rst $38                                       ; $7387: $ff
    ld e, $e1                                     ; $7388: $1e $e1
    di                                            ; $738a: $f3
    inc c                                         ; $738b: $0c
    rrca                                          ; $738c: $0f
    ldh a, [$f8]                                  ; $738d: $f0 $f8
    rlca                                          ; $738f: $07
    rst $38                                       ; $7390: $ff

jr_009_7391:
    add a                                         ; $7391: $87
    ld a, b                                       ; $7392: $78
    ld a, h                                       ; $7393: $7c
    add e                                         ; $7394: $83
    jp Jump_000_003c                              ; $7395: $c3 $3c $00


    rst $38                                       ; $7398: $ff
    rst $38                                       ; $7399: $ff
    add hl, sp                                    ; $739a: $39
    pop de                                        ; $739b: $d1
    ld sp, hl                                     ; $739c: $f9
    ld de, $f80d                                  ; $739d: $11 $0d $f8
    or $0c                                        ; $73a0: $f6 $0c
    rst $38                                       ; $73a2: $ff
    inc bc                                        ; $73a3: $03
    cp $fd                                        ; $73a4: $fe $fd
    inc bc                                        ; $73a6: $03

jr_009_73a7:
    add b                                         ; $73a7: $80
    ld a, a                                       ; $73a8: $7f
    nop                                           ; $73a9: $00
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    ld a, h                                       ; $73ac: $7c
    adc b                                         ; $73ad: $88
    ld c, e                                       ; $73ae: $4b
    cp c                                          ; $73af: $b9
    ei                                            ; $73b0: $fb
    ld a, [c]                                     ; $73b1: $f2
    inc sp                                        ; $73b2: $33
    inc de                                        ; $73b3: $13
    rst $38                                       ; $73b4: $ff
    jr jr_009_73c7                                ; $73b5: $18 $10

    sbc h                                         ; $73b7: $9c
    jr jr_009_7391                                ; $73b8: $18 $d7

    sbc h                                         ; $73ba: $9c
    ld h, e                                       ; $73bb: $63

jr_009_73bc:
    rst $38                                       ; $73bc: $ff
    rst $38                                       ; $73bd: $ff
    dec sp                                        ; $73be: $3b
    ld [hl-], a                                   ; $73bf: $32
    cp b                                          ; $73c0: $b8
    jr jr_009_735c                                ; $73c1: $18 $99

    sbc b                                         ; $73c3: $98
    cp e                                          ; $73c4: $bb
    add hl, de                                    ; $73c5: $19
    rst $38                                       ; $73c6: $ff

jr_009_73c7:
    ld a, [hl+]                                   ; $73c7: $2a
    dec sp                                        ; $73c8: $3b
    jp z, $8b7b                                   ; $73c9: $ca $7b $8b

    ld a, [$ef14]                                 ; $73cc: $fa $14 $ef
    rst $38                                       ; $73cf: $ff
    ld l, h                                       ; $73d0: $6c
    jr c, jr_009_73a7                             ; $73d1: $38 $d4

    ld l, h                                       ; $73d3: $6c
    add h                                         ; $73d4: $84
    db $fc                                        ; $73d5: $fc
    ld a, h                                       ; $73d6: $7c
    add h                                         ; $73d7: $84
    rst $38                                       ; $73d8: $ff
    adc h                                         ; $73d9: $8c
    ld [hl], h                                    ; $73da: $74
    db $f4                                        ; $73db: $f4
    inc c                                         ; $73dc: $0c
    inc e                                         ; $73dd: $1c
    db $e4                                        ; $73de: $e4
    inc bc                                        ; $73df: $03
    rst $38                                       ; $73e0: $ff
    rst $38                                       ; $73e1: $ff
    ret c                                         ; $73e2: $d8

    ld h, a                                       ; $73e3: $67
    or d                                          ; $73e4: $b2
    call $d0af                                    ; $73e5: $cd $af $d0
    add sp, -$69                                  ; $73e8: $e8 $97
    rst $38                                       ; $73ea: $ff
    jp c, $92a5                                   ; $73eb: $da $a5 $92

    db $ed                                        ; $73ee: $ed
    rst $20                                       ; $73ef: $e7
    sbc b                                         ; $73f0: $98
    inc c                                         ; $73f1: $0c
    di                                            ; $73f2: $f3
    rst $38                                       ; $73f3: $ff
    ld c, e                                       ; $73f4: $4b
    adc $4b                                       ; $73f5: $ce $4b
    adc $ce                                       ; $73f7: $ce $ce
    ld c, h                                       ; $73f9: $4c
    call z, $ff48                                 ; $73fa: $cc $48 $ff
    ld b, b                                       ; $73fd: $40
    ret nz                                        ; $73fe: $c0

    pop bc                                        ; $73ff: $c1
    ld b, b                                       ; $7400: $40
    rst $00                                       ; $7401: $c7
    ld b, e                                       ; $7402: $43
    inc a                                         ; $7403: $3c
    rst $38                                       ; $7404: $ff
    rst $38                                       ; $7405: $ff
    inc a                                         ; $7406: $3c
    jr jr_009_7422                                ; $7407: $18 $19

    ld de, $1031                                  ; $7409: $11 $31 $10
    ld a, b                                       ; $740c: $78
    jr nc, @+$01                                  ; $740d: $30 $ff

    call z, $b778                                 ; $740f: $cc $78 $b7
    adc $41                                       ; $7412: $ce $41
    cp a                                          ; $7414: $bf
    ld b, b                                       ; $7415: $40
    cp a                                          ; $7416: $bf
    rst $38                                       ; $7417: $ff
    ld d, $1e                                     ; $7418: $16 $1e
    sub [hl]                                      ; $741a: $96
    sbc d                                         ; $741b: $9a
    sbc [hl]                                      ; $741c: $9e
    sub d                                         ; $741d: $92
    ld [de], a                                    ; $741e: $12
    ld e, $ff                                     ; $741f: $1e $ff
    rra                                           ; $7421: $1f

jr_009_7422:
    ld a, [bc]                                    ; $7422: $0a
    add hl, bc                                    ; $7423: $09
    rrca                                          ; $7424: $0f
    db $eb                                        ; $7425: $eb
    call $fd32                                    ; $7426: $cd $32 $fd
    rst $38                                       ; $7429: $ff
    ld c, h                                       ; $742a: $4c
    ld a, b                                       ; $742b: $78
    ld a, c                                       ; $742c: $79
    ld d, c                                       ; $742d: $51
    ld d, c                                       ; $742e: $51
    ld [hl], b                                    ; $742f: $70
    ld a, b                                       ; $7430: $78
    jr nc, @+$01                                  ; $7431: $30 $ff

    inc l                                         ; $7433: $2c
    jr c, @+$39                                   ; $7434: $38 $37

    ld e, $95                                     ; $7436: $1e $95
    dec de                                        ; $7438: $1b
    ldh [rIE], a                                  ; $7439: $e0 $ff
    rst $38                                       ; $743b: $ff
    inc de                                        ; $743c: $13
    inc e                                         ; $743d: $1c
    sbc h                                         ; $743e: $9c
    sub e                                         ; $743f: $93
    sub a                                         ; $7440: $97
    sbc b                                         ; $7441: $98
    db $10                                        ; $7442: $10
    rra                                           ; $7443: $1f
    rst $38                                       ; $7444: $ff
    rra                                           ; $7445: $1f
    ld [$0c0b], sp                                ; $7446: $08 $0b $0c
    db $ec                                        ; $7449: $ec
    swap b                                        ; $744a: $cb $30
    rst $38                                       ; $744c: $ff

jr_009_744d:
    rst $38                                       ; $744d: $ff
    ld e, $e1                                     ; $744e: $1e $e1
    pop hl                                        ; $7450: $e1
    ld e, $9f                                     ; $7451: $1e $9f
    ld h, b                                       ; $7453: $60
    ld h, b                                       ; $7454: $60
    sbc a                                         ; $7455: $9f
    rst $38                                       ; $7456: $ff
    rst $18                                       ; $7457: $df
    jr nz, @-$4e                                  ; $7458: $20 $b0

    ld c, a                                       ; $745a: $4f
    ld a, a                                       ; $745b: $7f
    add b                                         ; $745c: $80

jr_009_745d:
    nop                                           ; $745d: $00
    rst $38                                       ; $745e: $ff
    nop                                           ; $745f: $00
    nop                                           ; $7460: $00
    nop                                           ; $7461: $00
    rst $38                                       ; $7462: $ff
    rst $38                                       ; $7463: $ff
    nop                                           ; $7464: $00
    sbc [hl]                                      ; $7465: $9e
    ld h, c                                       ; $7466: $61
    ld h, c                                       ; $7467: $61
    sbc [hl]                                      ; $7468: $9e
    rst $18                                       ; $7469: $df
    jr nz, @+$01                                  ; $746a: $20 $ff

    jr nz, jr_009_744d                            ; $746c: $20 $df

    rst $18                                       ; $746e: $df
    jr nz, jr_009_74a1                            ; $746f: $20 $30

    rst $08                                       ; $7471: $cf
    rst $08                                       ; $7472: $cf
    jr nc, @+$01                                  ; $7473: $30 $ff

    rst $38                                       ; $7475: $ff
    nop                                           ; $7476: $00
    ld a, [hl]                                    ; $7477: $7e
    add c                                         ; $7478: $81
    rst $18                                       ; $7479: $df
    ccf                                           ; $747a: $3f
    jr nz, jr_009_745d                            ; $747b: $20 $e0

    rst $38                                       ; $747d: $ff
    ldh [rNR41], a                                ; $747e: $e0 $20
    and a                                         ; $7480: $a7
    ld h, a                                       ; $7481: $67
    ld h, [hl]                                    ; $7482: $66
    and a                                         ; $7483: $a7
    db $e3                                        ; $7484: $e3
    ld hl, $ffff                                  ; $7485: $21 $ff $ff
    nop                                           ; $7488: $00
    ld d, [hl]                                    ; $7489: $56
    xor c                                         ; $748a: $a9
    ret                                           ; $748b: $c9


    or $2f                                        ; $748c: $f6 $2f
    jr nc, @+$01                                  ; $748e: $30 $ff

    jr nc, jr_009_74c1                            ; $7490: $30 $2f

    cp [hl]                                       ; $7492: $be
    ld hl, $ffdb                                  ; $7493: $21 $db $ff
    cpl                                           ; $7496: $2f
    db $e4                                        ; $7497: $e4
    rst $38                                       ; $7498: $ff
    sbc a                                         ; $7499: $9f
    ld h, b                                       ; $749a: $60
    cp [hl]                                       ; $749b: $be
    ld b, c                                       ; $749c: $41
    add hl, hl                                    ; $749d: $29
    sub $36                                       ; $749e: $d6 $36
    ret                                           ; $74a0: $c9


jr_009_74a1:
    rst $38                                       ; $74a1: $ff
    ld [hl], c                                    ; $74a2: $71
    adc [hl]                                      ; $74a3: $8e
    ld l, h                                       ; $74a4: $6c
    sbc a                                         ; $74a5: $9f
    ld a, $f3                                     ; $74a6: $3e $f3
    ld h, e                                       ; $74a8: $63
    pop bc                                        ; $74a9: $c1
    rst $38                                       ; $74aa: $ff
    rst $38                                       ; $74ab: $ff
    nop                                           ; $74ac: $00
    ld a, a                                       ; $74ad: $7f
    add b                                         ; $74ae: $80
    call nz, Call_000_303b                        ; $74af: $c4 $3b $30
    rst $08                                       ; $74b2: $cf
    rst $38                                       ; $74b3: $ff
    jp $5a3c                                      ; $74b4: $c3 $3c $5a


    cp l                                          ; $74b7: $bd
    cp h                                          ; $74b8: $bc
    ld h, a                                       ; $74b9: $67
    ld h, h                                       ; $74ba: $64
    rst $00                                       ; $74bb: $c7

jr_009_74bc:
    rst $38                                       ; $74bc: $ff
    ld h, b                                       ; $74bd: $60
    sbc a                                         ; $74be: $9f
    add b                                         ; $74bf: $80
    ld a, a                                       ; $74c0: $7f

jr_009_74c1:
    rra                                           ; $74c1: $1f
    ldh [$f7], a                                  ; $74c2: $e0 $f7
    ld [$bcff], sp                                ; $74c4: $08 $ff $bc
    ld b, e                                       ; $74c7: $43
    nop                                           ; $74c8: $00
    rst $38                                       ; $74c9: $ff
    jr nc, @+$01                                  ; $74ca: $30 $ff

    ei                                            ; $74cc: $fb
    call z, Call_000_06ff                         ; $74cd: $cc $ff $06
    ld sp, hl                                     ; $74d0: $f9
    nop                                           ; $74d1: $00
    rst $38                                       ; $74d2: $ff
    cp [hl]                                       ; $74d3: $be
    ld a, a                                       ; $74d4: $7f
    jp $ff41                                      ; $74d5: $c3 $41 $ff


    ld h, c                                       ; $74d8: $61
    ret nz                                        ; $74d9: $c0

    jr nz, jr_009_74bc                            ; $74da: $20 $e0

    ld h, $e4                                     ; $74dc: $26 $e4
    rst $20                                       ; $74de: $e7
    ld h, $ff                                     ; $74df: $26 $ff
    rst $38                                       ; $74e1: $ff
    nop                                           ; $74e2: $00
    cp $01                                        ; $74e3: $fe $01
    ld bc, $0efe                                  ; $74e5: $01 $fe $0e
    pop af                                        ; $74e8: $f1
    rst $38                                       ; $74e9: $ff
    add e                                         ; $74ea: $83
    db $fc                                        ; $74eb: $fc
    ret nc                                        ; $74ec: $d0

    ld l, a                                       ; $74ed: $6f
    ld h, c                                       ; $74ee: $61
    ccf                                           ; $74ef: $3f
    inc sp                                        ; $74f0: $33
    ld e, $ff                                     ; $74f1: $1e $ff
    ld sp, hl                                     ; $74f3: $f9
    ld b, $55                                     ; $74f4: $06 $55
    xor d                                         ; $74f6: $aa
    add sp, $17                                   ; $74f7: $e8 $17
    ld l, h                                       ; $74f9: $6c
    sub e                                         ; $74fa: $93
    rst $38                                       ; $74fb: $ff
    or b                                          ; $74fc: $b0
    ld c, a                                       ; $74fd: $4f
    ld l, a                                       ; $74fe: $6f
    pop af                                        ; $74ff: $f1
    di                                            ; $7500: $f3
    sbc a                                         ; $7501: $9f
    inc e                                         ; $7502: $1c
    inc c                                         ; $7503: $0c
    rst $38                                       ; $7504: $ff
    rst $38                                       ; $7505: $ff
    nop                                           ; $7506: $00
    xor $11                                       ; $7507: $ee $11
    xor c                                         ; $7509: $a9
    ld d, [hl]                                    ; $750a: $56
    sub $29                                       ; $750b: $d6 $29
    rst $38                                       ; $750d: $ff
    pop de                                        ; $750e: $d1
    xor $26                                       ; $750f: $ee $26
    add hl, sp                                    ; $7511: $39
    dec l                                         ; $7512: $2d
    inc sp                                        ; $7513: $33
    inc de                                        ; $7514: $13
    ld e, $fe                                     ; $7515: $1e $fe
    and b                                         ; $7517: $a0
    db $e3                                        ; $7518: $e3
    ccf                                           ; $7519: $3f
    ret nz                                        ; $751a: $c0

    jp Jump_009_6d3c                              ; $751b: $c3 $3c $6d


    ld a, [c]                                     ; $751e: $f2
    or $ff                                        ; $751f: $f6 $ff
    sbc c                                         ; $7521: $99
    add hl, de                                    ; $7522: $19
    ld c, $ff                                     ; $7523: $0e $ff
    nop                                           ; $7525: $00
    rst $00                                       ; $7526: $c7
    jr c, jr_009_7561                             ; $7527: $38 $38

    rst $38                                       ; $7529: $ff
    rst $00                                       ; $752a: $c7
    rst $20                                       ; $752b: $e7
    jr jr_009_756a                                ; $752c: $18 $3c

jr_009_752e:
    jp Jump_000_3cc3                              ; $752e: $c3 $c3 $3c


    ld a, [hl]                                    ; $7531: $7e
    rlca                                          ; $7532: $07
    add c                                         ; $7533: $81
    pop bc                                        ; $7534: $c1
    ld a, $00                                     ; $7535: $3e $00
    nop                                           ; $7537: $00
    nop                                           ; $7538: $00
    rst $38                                       ; $7539: $ff
    inc a                                         ; $753a: $3c
    jp $1ce3                                      ; $753b: $c3 $e3 $1c


    sbc [hl]                                      ; $753e: $9e
    ld h, c                                       ; $753f: $61
    ld [hl], c                                    ; $7540: $71
    adc [hl]                                      ; $7541: $8e
    rst $38                                       ; $7542: $ff
    rst $08                                       ; $7543: $cf
    jr nc, @+$34                                  ; $7544: $30 $32

    call Call_000_00ff                            ; $7546: $cd $ff $00
    nop                                           ; $7549: $00
    rst $38                                       ; $754a: $ff
    rst $38                                       ; $754b: $ff
    jr nz, jr_009_752e                            ; $754c: $20 $e0

    ldh [rNR41], a                                ; $754e: $e0 $20
    daa                                           ; $7550: $27
    rst $20                                       ; $7551: $e7
    rst $20                                       ; $7552: $e7
    ld b, e                                       ; $7553: $43
    rst $38                                       ; $7554: $ff
    ld b, b                                       ; $7555: $40
    ret nz                                        ; $7556: $c0

    or b                                          ; $7557: $b0
    ld h, b                                       ; $7558: $60
    sbc h                                         ; $7559: $9c
    ld a, b                                       ; $755a: $78
    rlca                                          ; $755b: $07
    rst $38                                       ; $755c: $ff
    rst $38                                       ; $755d: $ff
    ldh [$a1], a                                  ; $755e: $e0 $a1
    and a                                         ; $7560: $a7

jr_009_7561:
    db $e3                                        ; $7561: $e3
    ld h, l                                       ; $7562: $65
    and a                                         ; $7563: $a7
    and a                                         ; $7564: $a7
    push hl                                       ; $7565: $e5
    rst $38                                       ; $7566: $ff
    ld h, [hl]                                    ; $7567: $66
    ld h, l                                       ; $7568: $65
    ld h, a                                       ; $7569: $67

jr_009_756a:
    ld h, h                                       ; $756a: $64
    ld h, h                                       ; $756b: $64
    ld h, a                                       ; $756c: $67
    sbc b                                         ; $756d: $98
    rst $38                                       ; $756e: $ff
    rst $38                                       ; $756f: $ff
    pop bc                                        ; $7570: $c1
    add c                                         ; $7571: $81
    sbc c                                         ; $7572: $99
    add hl, de                                    ; $7573: $19
    add hl, de                                    ; $7574: $19
    add hl, bc                                    ; $7575: $09
    add c                                         ; $7576: $81
    ld bc, $c1ff                                  ; $7577: $01 $ff $c1
    add b                                         ; $757a: $80
    ld [hl], b                                    ; $757b: $70
    ldh [rNR34], a                                ; $757c: $e0 $1e
    db $fc                                        ; $757e: $fc
    inc bc                                        ; $757f: $03
    rst $38                                       ; $7580: $ff
    rst $38                                       ; $7581: $ff
    call $9b87                                    ; $7582: $cd $87 $9b
    adc [hl]                                      ; $7585: $8e
    add [hl]                                      ; $7586: $86
    add h                                         ; $7587: $84
    ld h, [hl]                                    ; $7588: $66
    call nz, $caff                                ; $7589: $c4 $ff $ca
    add [hl]                                      ; $758c: $86
    sbc e                                         ; $758d: $9b
    adc [hl]                                      ; $758e: $8e
    or c                                          ; $758f: $b1
    sbc a                                         ; $7590: $9f
    ld h, e                                       ; $7591: $63
    db $fc                                        ; $7592: $fc

jr_009_7593:
    rst $38                                       ; $7593: $ff
    adc a                                         ; $7594: $8f
    inc b                                         ; $7595: $04
    ld l, h                                       ; $7596: $6c
    ld h, a                                       ; $7597: $67
    ld e, e                                       ; $7598: $5b
    inc c                                         ; $7599: $0c
    ld [hl], $39                                  ; $759a: $36 $39
    rst $38                                       ; $759c: $ff
    ld sp, $0f1e                                  ; $759d: $31 $1e $0f
    ld [$8fc8], sp                                ; $75a0: $08 $c8 $8f
    ld [hl], d                                    ; $75a3: $72
    db $fd                                        ; $75a4: $fd
    rst $38                                       ; $75a5: $ff
    daa                                           ; $75a6: $27
    push hl                                       ; $75a7: $e5
    rst $20                                       ; $75a8: $e7
    dec h                                         ; $75a9: $25
    and a                                         ; $75aa: $a7
    ld h, [hl]                                    ; $75ab: $66
    ld h, [hl]                                    ; $75ac: $66
    and h                                         ; $75ad: $a4
    rst $38                                       ; $75ae: $ff
    ldh [rNR41], a                                ; $75af: $e0 $20
    jr nz, jr_009_7593                            ; $75b1: $20 $e0

    db $e3                                        ; $75b3: $e3
    ld hl, $ff1e                                  ; $75b4: $21 $1e $ff
    rst $38                                       ; $75b7: $ff
    sbc [hl]                                      ; $75b8: $9e
    inc c                                         ; $75b9: $0c
    adc h                                         ; $75ba: $8c
    ld [$0818], sp                                ; $75bb: $08 $18 $08
    inc a                                         ; $75be: $3c
    jr @+$01                                      ; $75bf: $18 $ff

    ld h, [hl]                                    ; $75c1: $66
    inc a                                         ; $75c2: $3c
    db $db                                        ; $75c3: $db
    ld h, a                                       ; $75c4: $67
    add [hl]                                      ; $75c5: $86
    ld sp, hl                                     ; $75c6: $f9
    db $10                                        ; $75c7: $10
    rst $28                                       ; $75c8: $ef
    rst $38                                       ; $75c9: $ff
    dec bc                                        ; $75ca: $0b
    rrca                                          ; $75cb: $0f
    set 1, l                                      ; $75cc: $cb $cd
    call $094b                                    ; $75ce: $cd $4b $09
    rrca                                          ; $75d1: $0f
    rst $38                                       ; $75d2: $ff
    dec c                                         ; $75d3: $0d
    rlca                                          ; $75d4: $07
    add h                                         ; $75d5: $84
    rlca                                          ; $75d6: $07
    db $f4                                        ; $75d7: $f4
    rst $20                                       ; $75d8: $e7
    ld e, b                                       ; $75d9: $58
    cp a                                          ; $75da: $bf
    rst $38                                       ; $75db: $ff
    ld h, $3c                                     ; $75dc: $26 $3c
    inc a                                         ; $75de: $3c
    jr z, jr_009_7609                             ; $75df: $28 $28

    jr c, jr_009_761f                             ; $75e1: $38 $3c

    jr @+$01                                      ; $75e3: $18 $ff

    sub [hl]                                      ; $75e5: $96
    inc e                                         ; $75e6: $1c
    sbc e                                         ; $75e7: $9b
    adc a                                         ; $75e8: $8f
    call z, Call_009_708b                         ; $75e9: $cc $8b $70
    rst $38                                       ; $75ec: $ff
    rst $38                                       ; $75ed: $ff
    ld c, $09                                     ; $75ee: $0e $09
    set 1, h                                      ; $75f0: $cb $cc
    call z, Call_000_0a4b                         ; $75f2: $cc $4b $0a
    dec c                                         ; $75f5: $0d
    rst $38                                       ; $75f6: $ff
    rrca                                          ; $75f7: $0f
    inc b                                         ; $75f8: $04
    add h                                         ; $75f9: $84
    rlca                                          ; $75fa: $07
    rst $30                                       ; $75fb: $f7
    db $e4                                        ; $75fc: $e4
    jr @+$01                                      ; $75fd: $18 $ff

    rst $38                                       ; $75ff: $ff
    ld a, a                                       ; $7600: $7f
    add b                                         ; $7601: $80
    adc h                                         ; $7602: $8c
    ld [hl], e                                    ; $7603: $73
    di                                            ; $7604: $f3
    inc c                                         ; $7605: $0c
    ld e, $e1                                     ; $7606: $1e $e1
    rst $38                                       ; $7608: $ff

jr_009_7609:
    pop hl                                        ; $7609: $e1
    ld e, $7f                                     ; $760a: $1e $7f
    add b                                         ; $760c: $80
    sbc h                                         ; $760d: $9c
    ld h, e                                       ; $760e: $63
    nop                                           ; $760f: $00
    rst $38                                       ; $7610: $ff
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    rst $38                                       ; $7614: $ff
    rst $38                                       ; $7615: $ff
    nop                                           ; $7616: $00
    ldh [$1f], a                                  ; $7617: $e0 $1f
    rra                                           ; $7619: $1f
    ldh [$f0], a                                  ; $761a: $e0 $f0
    rrca                                          ; $761c: $0f
    rst $38                                       ; $761d: $ff
    adc a                                         ; $761e: $8f

jr_009_761f:
    ld [hl], b                                    ; $761f: $70
    ld [hl], b                                    ; $7620: $70
    adc a                                         ; $7621: $8f
    rst $18                                       ; $7622: $df
    jr nz, jr_009_7656                            ; $7623: $20 $31

    adc $ff                                       ; $7625: $ce $ff
    rst $38                                       ; $7627: $ff
    nop                                           ; $7628: $00
    add hl, sp                                    ; $7629: $39
    add $c7                                       ; $762a: $c6 $c7
    jr c, jr_009_76a6                             ; $762c: $38 $78

    add a                                         ; $762e: $87
    rst $38                                       ; $762f: $ff
    adc a                                         ; $7630: $8f
    ld [hl], b                                    ; $7631: $70
    ldh a, [rIF]                                  ; $7632: $f0 $0f
    rra                                           ; $7634: $1f
    ldh [$e1], a                                  ; $7635: $e0 $e1
    ld e, $ff                                     ; $7637: $1e $ff
    ld hl, sp+$07                                 ; $7639: $f8 $07
    add hl, sp                                    ; $763b: $39
    add $8f                                       ; $763c: $c6 $8f
    ld a, a                                       ; $763e: $7f
    ld [hl], b                                    ; $763f: $70
    sub b                                         ; $7640: $90
    rst $38                                       ; $7641: $ff
    sub b                                         ; $7642: $90
    ld [hl], b                                    ; $7643: $70
    di                                            ; $7644: $f3

jr_009_7645:
    inc de                                        ; $7645: $13
    inc de                                        ; $7646: $13
    di                                            ; $7647: $f3
    pop af                                        ; $7648: $f1
    db $10                                        ; $7649: $10
    rst $38                                       ; $764a: $ff
    rst $20                                       ; $764b: $e7
    jr jr_009_7645                                ; $764c: $18 $f7

    ld [$fbe4], sp                                ; $764e: $08 $e4 $fb
    rla                                           ; $7651: $17
    jr @+$01                                      ; $7652: $18 $ff

jr_009_7654:
    db $10                                        ; $7654: $10
    rra                                           ; $7655: $1f

jr_009_7656:
    db $d3                                        ; $7656: $d3
    sbc h                                         ; $7657: $9c
    ld l, l                                       ; $7658: $6d
    rst $38                                       ; $7659: $ff
    sub a                                         ; $765a: $97
    ld a, [c]                                     ; $765b: $f2
    rst $38                                       ; $765c: $ff
    ld a, d                                       ; $765d: $7a
    add l                                         ; $765e: $85
    ld a, [hl-]                                   ; $765f: $3a
    push bc                                       ; $7660: $c5
    ld [de], a                                    ; $7661: $12
    db $ed                                        ; $7662: $ed
    jp c, $ff25                                   ; $7663: $da $25 $ff

    ld a, [de]                                    ; $7666: $1a
    push hl                                       ; $7667: $e5
    ld [hl], $cf                                  ; $7668: $36 $cf
    sbc a                                         ; $766a: $9f
    ld sp, hl                                     ; $766b: $f9
    or c                                          ; $766c: $b1
    ld h, b                                       ; $766d: $60
    rst $38                                       ; $766e: $ff
    swap h                                        ; $766f: $cb $34
    add e                                         ; $7671: $83
    ld a, h                                       ; $7672: $7c
    sub e                                         ; $7673: $93
    ld l, h                                       ; $7674: $6c
    sub b                                         ; $7675: $90
    ld l, a                                       ; $7676: $6f
    rst $38                                       ; $7677: $ff
    ld b, b                                       ; $7678: $40
    cp a                                          ; $7679: $bf
    dec c                                         ; $767a: $0d
    cp $1f                                        ; $767b: $fe $1f
    ld a, [c]                                     ; $767d: $f2
    or d                                          ; $767e: $b2
    db $e3                                        ; $767f: $e3
    rst $38                                       ; $7680: $ff
    db $d3                                        ; $7681: $d3
    inc l                                         ; $7682: $2c
    ret nz                                        ; $7683: $c0

    ccf                                           ; $7684: $3f
    add hl, bc                                    ; $7685: $09
    or $09                                        ; $7686: $f6 $09
    or $ff                                        ; $7688: $f6 $ff
    ld [bc], a                                    ; $768a: $02
    db $fd                                        ; $768b: $fd
    ldh [$1f], a                                  ; $768c: $e0 $1f
    ret c                                         ; $768e: $d8

    ccf                                           ; $768f: $3f
    ld a, h                                       ; $7690: $7c
    rst $20                                       ; $7691: $e7
    rst $38                                       ; $7692: $ff
    ld e, [hl]                                    ; $7693: $5e
    and c                                         ; $7694: $a1
    ld e, b                                       ; $7695: $58
    and a                                         ; $7696: $a7
    ld d, b                                       ; $7697: $50
    xor a                                         ; $7698: $af
    ld e, c                                       ; $7699: $59
    and a                                         ; $769a: $a7
    rst $38                                       ; $769b: $ff
    db $db                                        ; $769c: $db
    ld h, $92                                     ; $769d: $26 $92
    ld l, [hl]                                    ; $769f: $6e
    and [hl]                                      ; $76a0: $a6
    ld e, h                                       ; $76a1: $5c
    ld h, h                                       ; $76a2: $64
    sbc h                                         ; $76a3: $9c
    rst $38                                       ; $76a4: $ff
    rst $20                                       ; $76a5: $e7

jr_009_76a6:
    jr jr_009_7654                                ; $76a6: $18 $ac

    ld d, e                                       ; $76a8: $53
    xor $f1                                       ; $76a9: $ee $f1
    cp c                                          ; $76ab: $b9
    rla                                           ; $76ac: $17
    rst $38                                       ; $76ad: $ff
    ld de, $1b1f                                  ; $76ae: $11 $1f $1b
    dec c                                         ; $76b1: $0d
    dec bc                                        ; $76b2: $0b
    dec c                                         ; $76b3: $0d
    call $ffc7                                    ; $76b4: $cd $c7 $ff
    rra                                           ; $76b7: $1f
    ldh [$9b], a                                  ; $76b8: $e0 $9b
    ld h, h                                       ; $76ba: $64
    ret c                                         ; $76bb: $d8

    rst $38                                       ; $76bc: $ff
    ld l, a                                       ; $76bd: $6f
    inc h                                         ; $76be: $24

Call_009_76bf:
    rst $38                                       ; $76bf: $ff
    inc h                                         ; $76c0: $24
    daa                                           ; $76c1: $27
    daa                                           ; $76c2: $27
    inc h                                         ; $76c3: $24
    dec h                                         ; $76c4: $25
    ld h, $26                                     ; $76c5: $26 $26
    dec h                                         ; $76c7: $25
    rst $38                                       ; $76c8: $ff
    rst $38                                       ; $76c9: $ff
    nop                                           ; $76ca: $00
    cp a                                          ; $76cb: $bf
    ld b, b                                       ; $76cc: $40
    ld [hl], b                                    ; $76cd: $70
    adc a                                         ; $76ce: $8f
    rst $08                                       ; $76cf: $cf

jr_009_76d0:
    jr nc, jr_009_76d0                            ; $76d0: $30 $fe

    ld l, [hl]                                    ; $76d2: $6e
    pop hl                                        ; $76d3: $e1
    di                                            ; $76d4: $f3
    inc c                                         ; $76d5: $0c
    ld l, [hl]                                    ; $76d6: $6e
    sub c                                         ; $76d7: $91
    rst $38                                       ; $76d8: $ff
    nop                                           ; $76d9: $00
    pop bc                                        ; $76da: $c1
    rst $38                                       ; $76db: $ff
    ld a, $7f                                     ; $76dc: $3e $7f
    add b                                         ; $76de: $80
    add b                                         ; $76df: $80
    ld a, a                                       ; $76e0: $7f
    ld a, a                                       ; $76e1: $7f
    add b                                         ; $76e2: $80
    ret nz                                        ; $76e3: $c0

    rra                                           ; $76e4: $1f
    ccf                                           ; $76e5: $3f
    ccf                                           ; $76e6: $3f
    ret nz                                        ; $76e7: $c0

    ldh [$1f], a                                  ; $76e8: $e0 $1f
    nop                                           ; $76ea: $00
    nop                                           ; $76eb: $00
    nop                                           ; $76ec: $00
    rst $38                                       ; $76ed: $ff
    rst $28                                       ; $76ee: $ef
    db $10                                        ; $76ef: $10
    sbc d                                         ; $76f0: $9a
    ld h, l                                       ; $76f1: $65
    halt                                          ; $76f2: $76
    adc c                                         ; $76f3: $89
    call $ff32                                    ; $76f4: $cd $32 $ff
    dec sp                                        ; $76f7: $3b
    call nz, Call_000_09f6                        ; $76f8: $c4 $f6 $09
    add hl, de                                    ; $76fb: $19
    and $00                                       ; $76fc: $e6 $00
    rst $38                                       ; $76fe: $ff
    rst $38                                       ; $76ff: $ff
    ld a, $c1                                     ; $7700: $3e $c1
    jp $fc3c                                      ; $7702: $c3 $3c $fc


    inc bc                                        ; $7705: $03

jr_009_7706:
    sbc e                                         ; $7706: $9b
    ld h, h                                       ; $7707: $64
    rst $38                                       ; $7708: $ff
    ld l, h                                       ; $7709: $6c
    sub e                                         ; $770a: $93
    rst $00                                       ; $770b: $c7
    jr c, jr_009_7706                             ; $770c: $38 $f8

    rlca                                          ; $770e: $07
    nop                                           ; $770f: $00
    rst $38                                       ; $7710: $ff
    rst $38                                       ; $7711: $ff
    ld [hl], b                                    ; $7712: $70
    sub b                                         ; $7713: $90
    sub b                                         ; $7714: $90
    ld [hl], b                                    ; $7715: $70
    ld d, e                                       ; $7716: $53
    or e                                          ; $7717: $b3
    or e                                          ; $7718: $b3
    ld h, c                                       ; $7719: $61
    rst $38                                       ; $771a: $ff
    ld h, b                                       ; $771b: $60
    and b                                         ; $771c: $a0
    ret c                                         ; $771d: $d8

    jr nc, @+$30                                  ; $771e: $30 $2e

    call c, $ff03                                 ; $7720: $dc $03 $ff
    rst $38                                       ; $7723: $ff
    ld d, b                                       ; $7724: $50
    ld [hl], b                                    ; $7725: $70
    ld [hl], e                                    ; $7726: $73
    ld d, c                                       ; $7727: $51
    sub d                                         ; $7728: $92
    di                                            ; $7729: $f3
    db $d3                                        ; $772a: $d3
    ld a, [c]                                     ; $772b: $f2
    rst $38                                       ; $772c: $ff
    ld [hl-], a                                   ; $772d: $32
    inc sp                                        ; $772e: $33
    ld [hl-], a                                   ; $772f: $32
    inc sp                                        ; $7730: $33
    inc sp                                        ; $7731: $33
    ld [hl-], a                                   ; $7732: $32
    call z, $ffff                                 ; $7733: $cc $ff $ff
    ld h, b                                       ; $7736: $60
    ret nz                                        ; $7737: $c0

    call z, $8c8c                                 ; $7738: $cc $8c $8c
    add h                                         ; $773b: $84
    ret nz                                        ; $773c: $c0

    add b                                         ; $773d: $80
    rst $38                                       ; $773e: $ff
    ld h, b                                       ; $773f: $60
    ret nz                                        ; $7740: $c0

    cp b                                          ; $7741: $b8
    ld [hl], b                                    ; $7742: $70
    cpl                                           ; $7743: $2f
    sbc $01                                       ; $7744: $de $01
    rst $38                                       ; $7746: $ff
    rst $38                                       ; $7747: $ff
    and $c3                                       ; $7748: $e6 $c3
    call $c3c7                                    ; $774a: $cd $c7 $c3
    jp nz, $e2b3                                  ; $774d: $c2 $b3 $e2

    rst $38                                       ; $7750: $ff
    ld h, l                                       ; $7751: $65
    ld b, e                                       ; $7752: $43
    ld c, l                                       ; $7753: $4d
    ld b, a                                       ; $7754: $47
    ld e, b                                       ; $7755: $58
    ld c, a                                       ; $7756: $4f
    or b                                          ; $7757: $b0
    rst $38                                       ; $7758: $ff
    rst $38                                       ; $7759: $ff
    add $83                                       ; $775a: $c6 $83
    or [hl]                                       ; $775c: $b6
    inc sp                                        ; $775d: $33
    inc l                                         ; $775e: $2c
    rlca                                          ; $775f: $07
    jr jr_009_7781                                ; $7760: $18 $1f

jr_009_7762:
    rst $38                                       ; $7762: $ff
    jr @+$11                                      ; $7763: $18 $0f

    add h                                         ; $7765: $84
    rlca                                          ; $7766: $07
    db $e4                                        ; $7767: $e4
    rst $00                                       ; $7768: $c7
    jr c, @+$01                                   ; $7769: $38 $ff

    rst $38                                       ; $776b: $ff
    ld l, l                                       ; $776c: $6d
    sbc b                                         ; $776d: $98
    ld c, c                                       ; $776e: $49
    cp c                                          ; $776f: $b9
    jr jr_009_7762                                ; $7770: $18 $f0

    db $10                                        ; $7772: $10
    ldh a, [rIE]                                  ; $7773: $f0 $ff
    inc sp                                        ; $7775: $33
    pop hl                                        ; $7776: $e1
    ld [hl+], a                                   ; $7777: $22
    db $e3                                        ; $7778: $e3
    ld h, $e3                                     ; $7779: $26 $e3
    inc e                                         ; $777b: $1c
    rst $38                                       ; $777c: $ff
    rst $38                                       ; $777d: $ff
    push bc                                       ; $777e: $c5

Call_009_777f:
    rst $00                                       ; $777f: $c7
    add a                                         ; $7780: $87

jr_009_7781:
    inc bc                                        ; $7781: $03
    ld [bc], a                                    ; $7782: $02
    inc bc                                        ; $7783: $03
    di                                            ; $7784: $f3
    ld h, c                                       ; $7785: $61
    rst $38                                       ; $7786: $ff
    sub c                                         ; $7787: $91
    pop af                                        ; $7788: $f1
    reti                                          ; $7789: $d9


    ld sp, $f909                                  ; $778a: $31 $09 $f9
    ld b, $ff                                     ; $778d: $06 $ff
    rst $38                                       ; $778f: $ff
    daa                                           ; $7790: $27
    inc h                                         ; $7791: $24
    inc h                                         ; $7792: $24
    daa                                           ; $7793: $27
    daa                                           ; $7794: $27
    inc h                                         ; $7795: $24
    dec h                                         ; $7796: $25
    ld h, $ff                                     ; $7797: $26 $ff
    ld h, $25                                     ; $7799: $26 $25
    ld h, $25                                     ; $779b: $26 $25
    dec h                                         ; $779d: $25
    ld h, $d8                                     ; $779e: $26 $d8
    rst $38                                       ; $77a0: $ff
    rst $38                                       ; $77a1: $ff
    or e                                          ; $77a2: $b3
    ld c, h                                       ; $77a3: $4c

jr_009_77a4:
    call c, Call_009_6723                         ; $77a4: $dc $23 $67
    sbc b                                         ; $77a7: $98
    cp b                                          ; $77a8: $b8
    ld b, a                                       ; $77a9: $47
    rst $38                                       ; $77aa: $ff
    rst $08                                       ; $77ab: $cf
    jr nc, jr_009_77a4                            ; $77ac: $30 $f6

    add hl, bc                                    ; $77ae: $09
    add hl, sp                                    ; $77af: $39
    add $00                                       ; $77b0: $c6 $00
    rst $38                                       ; $77b2: $ff
    rst $38                                       ; $77b3: $ff
    sbc a                                         ; $77b4: $9f
    ld h, b                                       ; $77b5: $60
    ld [hl], b                                    ; $77b6: $70
    adc a                                         ; $77b7: $8f
    rst $08                                       ; $77b8: $cf
    jr nc, @+$33                                  ; $77b9: $30 $31

    adc $ff                                       ; $77bb: $ce $ff
    cp $01                                        ; $77bd: $fe $01
    inc bc                                        ; $77bf: $03
    db $fc                                        ; $77c0: $fc
    db $fc                                        ; $77c1: $fc
    inc bc                                        ; $77c2: $03
    nop                                           ; $77c3: $00
    rst $38                                       ; $77c4: $ff
    nop                                           ; $77c5: $00
    nop                                           ; $77c6: $00
    nop                                           ; $77c7: $00
    rst $38                                       ; $77c8: $ff
    rst $38                                       ; $77c9: $ff
    nop                                           ; $77ca: $00
    dec sp                                        ; $77cb: $3b
    call nz, Call_000_38c7                        ; $77cc: $c4 $c7 $38
    ld a, b                                       ; $77cf: $78
    add a                                         ; $77d0: $87
    rst $38                                       ; $77d1: $ff
    adc a                                         ; $77d2: $8f
    ld [hl], b                                    ; $77d3: $70
    ld hl, sp+$07                                 ; $77d4: $f8 $07
    rlca                                          ; $77d6: $07
    ld hl, sp-$04                                 ; $77d7: $f8 $fc
    inc bc                                        ; $77d9: $03
    rst $28                                       ; $77da: $ef
    rst $38                                       ; $77db: $ff
    nop                                           ; $77dc: $00
    inc a                                         ; $77dd: $3c
    jp $e3f0                                      ; $77de: $c3 $f0 $e3


    di                                            ; $77e1: $f3
    inc c                                         ; $77e2: $0c
    inc e                                         ; $77e3: $1c
    rst $38                                       ; $77e4: $ff
    db $e3                                        ; $77e5: $e3
    rst $20                                       ; $77e6: $e7
    jr @+$01                                      ; $77e7: $18 $ff

    nop                                           ; $77e9: $00
    pop hl                                        ; $77ea: $e1
    ld e, $9f                                     ; $77eb: $1e $9f
    rst $38                                       ; $77ed: $ff
    ld h, b                                       ; $77ee: $60
    ld h, b                                       ; $77ef: $60
    sbc a                                         ; $77f0: $9f
    rst $18                                       ; $77f1: $df
    jr nz, jr_009_77a4                            ; $77f2: $20 $b0

    ld c, a                                       ; $77f4: $4f
    ld a, a                                       ; $77f5: $7f
    rst $38                                       ; $77f6: $ff
    add b                                         ; $77f7: $80
    jp $f93c                                      ; $77f8: $c3 $3c $f9


    ld b, $f1                                     ; $77fb: $06 $f1
    ld c, $0c                                     ; $77fd: $0e $0c
    rst $38                                       ; $77ff: $ff
    di                                            ; $7800: $f3
    ld hl, sp+$07                                 ; $7801: $f8 $07
    add [hl]                                      ; $7803: $86
    ld a, c                                       ; $7804: $79
    ld a, h                                       ; $7805: $7c
    add e                                         ; $7806: $83
    jp Jump_000_3cff                              ; $7807: $c3 $ff $3c


    ld a, $c1                                     ; $780a: $3e $c1
    rst $38                                       ; $780c: $ff
    nop                                           ; $780d: $00
    db $fd                                        ; $780e: $fd
    ld [bc], a                                    ; $780f: $02
    inc bc                                        ; $7810: $03
    rst $38                                       ; $7811: $ff
    db $fc                                        ; $7812: $fc
    cp $01                                        ; $7813: $fe $01
    ld bc, $3ffe                                  ; $7815: $01 $fe $3f
    ret nz                                        ; $7818: $c0

    add b                                         ; $7819: $80
    rst $38                                       ; $781a: $ff
    ld a, a                                       ; $781b: $7f
    ld b, e                                       ; $781c: $43
    cp h                                          ; $781d: $bc
    add b                                         ; $781e: $80
    ld a, a                                       ; $781f: $7f
    pop bc                                        ; $7820: $c1
    ld a, $9c                                     ; $7821: $3e $9c
    rst $38                                       ; $7823: $ff
    ld h, e                                       ; $7824: $63
    ld b, c                                       ; $7825: $41
    cp [hl]                                       ; $7826: $be
    add e                                         ; $7827: $83
    ld a, h                                       ; $7828: $7c
    ld h, b                                       ; $7829: $60
    sbc a                                         ; $782a: $9f
    add $ff                                       ; $782b: $c6 $ff
    add hl, sp                                    ; $782d: $39
    and [hl]                                      ; $782e: $a6
    ld e, c                                       ; $782f: $59
    ld bc, $83fe                                  ; $7830: $01 $fe $83
    ld a, h                                       ; $7833: $7c
    dec sp                                        ; $7834: $3b

jr_009_7835:
    rst $38                                       ; $7835: $ff
    call nz, Call_000_0df2                        ; $7836: $c4 $f2 $0d
    add e                                         ; $7839: $83
    ld a, h                                       ; $783a: $7c
    ld b, $f9                                     ; $783b: $06 $f9
    ld h, a                                       ; $783d: $67

jr_009_783e:
    rst $30                                       ; $783e: $f7
    sbc b                                         ; $783f: $98
    db $e4                                        ; $7840: $e4
    dec de                                        ; $7841: $1b
    and b                                         ; $7842: $a0
    push hl                                       ; $7843: $e5
    adc [hl]                                      ; $7844: $8e
    ld [hl], c                                    ; $7845: $71
    ldh a, [rIF]                                  ; $7846: $f0 $0f
    rst $38                                       ; $7848: $ff
    ld de, $c3ee                                  ; $7849: $11 $ee $c3
    inc a                                         ; $784c: $3c
    sbc a                                         ; $784d: $9f
    ld h, b                                       ; $784e: $60
    sub c                                         ; $784f: $91
    ld l, [hl]                                    ; $7850: $6e
    rst $38                                       ; $7851: $ff
    ccf                                           ; $7852: $3f
    ret nz                                        ; $7853: $c0

    jr nz, jr_009_7835                            ; $7854: $20 $df

    ld a, a                                       ; $7856: $7f
    add b                                         ; $7857: $80
    ldh a, [rIF]                                  ; $7858: $f0 $0f
    rst $38                                       ; $785a: $ff
    rst $38                                       ; $785b: $ff
    nop                                           ; $785c: $00
    jp $ff3c                                      ; $785d: $c3 $3c $ff


    nop                                           ; $7860: $00
    di                                            ; $7861: $f3
    inc c                                         ; $7862: $0c
    cp a                                          ; $7863: $bf
    rrca                                          ; $7864: $0f
    ldh a, [$f8]                                  ; $7865: $f0 $f8
    rlca                                          ; $7867: $07
    add a                                         ; $7868: $87
    ld a, b                                       ; $7869: $78
    and b                                         ; $786a: $a0
    db $ed                                        ; $786b: $ed
    rst $38                                       ; $786c: $ff
    rst $38                                       ; $786d: $ff
    nop                                           ; $786e: $00
    add b                                         ; $786f: $80
    ld a, a                                       ; $7870: $7f
    ld a, a                                       ; $7871: $7f
    add b                                         ; $7872: $80
    rst $38                                       ; $7873: $ff
    nop                                           ; $7874: $00
    add $ff                                       ; $7875: $c6 $ff
    add hl, sp                                    ; $7877: $39
    cp a                                          ; $7878: $bf
    ld b, b                                       ; $7879: $40

jr_009_787a:
    ld h, b                                       ; $787a: $60
    sbc a                                         ; $787b: $9f
    sbc a                                         ; $787c: $9f
    ld h, b                                       ; $787d: $60
    ld [hl], b                                    ; $787e: $70
    rra                                           ; $787f: $1f
    adc a                                         ; $7880: $8f
    rst $08                                       ; $7881: $cf
    jr nc, jr_009_783e                            ; $7882: $30 $ba

    ld b, l                                       ; $7884: $45
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    nop                                           ; $7887: $00
    rst $38                                       ; $7888: $ff
    sub e                                         ; $7889: $93
    ld l, h                                       ; $788a: $6c
    xor $11                                       ; $788b: $ee $11
    xor c                                         ; $788d: $a9
    ld d, [hl]                                    ; $788e: $56
    ld d, [hl]                                    ; $788f: $56
    xor c                                         ; $7890: $a9
    rst $38                                       ; $7891: $ff
    pop de                                        ; $7892: $d1
    ld l, $26                                     ; $7893: $2e $26
    reti                                          ; $7895: $d9


    rst $18                                       ; $7896: $df
    jr nz, jr_009_7899                            ; $7897: $20 $00

jr_009_7899:
    rst $38                                       ; $7899: $ff
    rst $38                                       ; $789a: $ff
    sbc b                                         ; $789b: $98
    ld h, a                                       ; $789c: $67
    ld a, a                                       ; $789d: $7f
    add b                                         ; $789e: $80
    call nz, Call_000_3f3b                        ; $789f: $c4 $3b $3f
    ret nz                                        ; $78a2: $c0

    rst $38                                       ; $78a3: $ff
    jp $7d3c                                      ; $78a4: $c3 $3c $7d


    add d                                         ; $78a7: $82
    add [hl]                                      ; $78a8: $86

jr_009_78a9:
    ld a, c                                       ; $78a9: $79
    nop                                           ; $78aa: $00
    rst $38                                       ; $78ab: $ff
    rst $38                                       ; $78ac: $ff
    inc a                                         ; $78ad: $3c
    jp Jump_000_38c7                              ; $78ae: $c3 $c7 $38


    jr c, jr_009_787a                             ; $78b1: $38 $c7

    rst $20                                       ; $78b3: $e7
    jr @+$01                                      ; $78b4: $18 $ff

    inc a                                         ; $78b6: $3c
    jp Jump_000_3cc3                              ; $78b7: $c3 $c3 $3c


    ld a, [hl]                                    ; $78ba: $7e
    add c                                         ; $78bb: $81
    nop                                           ; $78bc: $00
    rst $38                                       ; $78bd: $ff
    rst $38                                       ; $78be: $ff
    pop hl                                        ; $78bf: $e1
    ld e, $9e                                     ; $78c0: $1e $9e
    ld h, c                                       ; $78c2: $61
    ld h, c                                       ; $78c3: $61
    sbc [hl]                                      ; $78c4: $9e
    rst $18                                       ; $78c5: $df
    jr nz, @+$01                                  ; $78c6: $20 $ff

    jr nz, jr_009_78a9                            ; $78c8: $20 $df

    rst $18                                       ; $78ca: $df
    jr nz, jr_009_78fd                            ; $78cb: $20 $30

    rst $08                                       ; $78cd: $cf
    nop                                           ; $78ce: $00
    rst $38                                       ; $78cf: $ff
    rst $38                                       ; $78d0: $ff
    sub c                                         ; $78d1: $91
    ld l, [hl]                                    ; $78d2: $6e
    ld a, h                                       ; $78d3: $7c
    add e                                         ; $78d4: $83
    ret nz                                        ; $78d5: $c0

    ccf                                           ; $78d6: $3f
    ld a, $c1                                     ; $78d7: $3e $c1
    rst $38                                       ; $78d9: $ff
    db $e3                                        ; $78da: $e3
    inc e                                         ; $78db: $1c
    sbc h                                         ; $78dc: $9c
    ld h, e                                       ; $78dd: $63
    ld [hl], a                                    ; $78de: $77
    adc b                                         ; $78df: $88
    nop                                           ; $78e0: $00
    rst $38                                       ; $78e1: $ff

jr_009_78e2:
    rst $38                                       ; $78e2: $ff
    ld d, l                                       ; $78e3: $55
    xor d                                         ; $78e4: $aa
    ld d, d                                       ; $78e5: $52
    xor l                                         ; $78e6: $ad
    ld l, b                                       ; $78e7: $68
    sub a                                         ; $78e8: $97
    rrca                                          ; $78e9: $0f
    ldh a, [rIE]                                  ; $78ea: $f0 $ff
    add b                                         ; $78ec: $80
    ld a, a                                       ; $78ed: $7f
    ldh [$1f], a                                  ; $78ee: $e0 $1f
    ld l, b                                       ; $78f0: $68
    sub a                                         ; $78f1: $97
    inc bc                                        ; $78f2: $03
    db $fc                                        ; $78f3: $fc
    rst $38                                       ; $78f4: $ff
    adc a                                         ; $78f5: $8f
    ld [hl], b                                    ; $78f6: $70
    adc $31                                       ; $78f7: $ce $31
    jr jr_009_78e2                                ; $78f9: $18 $e7

    ldh a, [rIF]                                  ; $78fb: $f0 $0f

jr_009_78fd:
    rst $38                                       ; $78fd: $ff
    pop bc                                        ; $78fe: $c1
    ld a, $07                                     ; $78ff: $3e $07
    ld hl, sp+$1f                                 ; $7901: $f8 $1f
    ldh [$f0], a                                  ; $7903: $e0 $f0
    rrca                                          ; $7905: $0f
    rst $38                                       ; $7906: $ff
    adc [hl]                                      ; $7907: $8e
    ld [hl], c                                    ; $7908: $71
    ccf                                           ; $7909: $3f
    ret nz                                        ; $790a: $c0

    ld h, h                                       ; $790b: $64
    sbc e                                         ; $790c: $9b
    rst $38                                       ; $790d: $ff
    nop                                           ; $790e: $00
    db $fc                                        ; $790f: $fc
    and b                                         ; $7910: $a0
    rst $38                                       ; $7911: $ff
    and b                                         ; $7912: $a0
    db $e3                                        ; $7913: $e3
    add c                                         ; $7914: $81
    ld a, [hl]                                    ; $7915: $7e
    ld a, [hl]                                    ; $7916: $7e
    add c                                         ; $7917: $81
    pop bc                                        ; $7918: $c1
    ld a, $fe                                     ; $7919: $3e $fe
    and b                                         ; $791b: $a0
    jp hl                                         ; $791c: $e9


    ld d, [hl]                                    ; $791d: $56
    xor c                                         ; $791e: $a9
    jp hl                                         ; $791f: $e9


    ld d, $6f                                     ; $7920: $16 $6f
    sub b                                         ; $7922: $90
    or b                                          ; $7923: $b0
    ld a, a                                       ; $7924: $7f
    ld c, a                                       ; $7925: $4f
    rst $18                                       ; $7926: $df
    jr nz, jr_009_798a                            ; $7927: $20 $61

    sbc [hl]                                      ; $7929: $9e
    nop                                           ; $792a: $00
    rst $38                                       ; $792b: $ff
    nop                                           ; $792c: $00
    nop                                           ; $792d: $00
    nop                                           ; $792e: $00
    rst $38                                       ; $792f: $ff
    rst $38                                       ; $7930: $ff
    nop                                           ; $7931: $00
    sbc c                                         ; $7932: $99
    ld h, [hl]                                    ; $7933: $66
    halt                                          ; $7934: $76
    adc c                                         ; $7935: $89
    rst $08                                       ; $7936: $cf
    jr nc, @+$01                                  ; $7937: $30 $ff

    jr c, @-$37                                   ; $7939: $38 $c7

    rst $20                                       ; $793b: $e7
    jr jr_009_795a                                ; $793c: $18 $1c

    db $e3                                        ; $793e: $e3
    di                                            ; $793f: $f3
    inc c                                         ; $7940: $0c
    rst $38                                       ; $7941: $ff
    rst $38                                       ; $7942: $ff
    nop                                           ; $7943: $00
    di                                            ; $7944: $f3
    inc c                                         ; $7945: $0c
    inc e                                         ; $7946: $1c
    db $e3                                        ; $7947: $e3
    and $19                                       ; $7948: $e6 $19
    rst $38                                       ; $794a: $ff
    dec sp                                        ; $794b: $3b
    call nz, Call_000_33cc                        ; $794c: $c4 $cc $33
    ld [hl], a                                    ; $794f: $77
    adc b                                         ; $7950: $88
    cp b                                          ; $7951: $b8
    ld b, a                                       ; $7952: $47
    rst $38                                       ; $7953: $ff
    rst $38                                       ; $7954: $ff
    nop                                           ; $7955: $00
    adc h                                         ; $7956: $8c
    ld [hl], e                                    ; $7957: $73
    di                                            ; $7958: $f3
    inc c                                         ; $7959: $0c

jr_009_795a:
    ld e, $e1                                     ; $795a: $1e $e1
    rst $38                                       ; $795c: $ff
    pop hl                                        ; $795d: $e1
    ld e, $7f                                     ; $795e: $1e $7f
    add b                                         ; $7960: $80
    sbc h                                         ; $7961: $9c
    ld h, e                                       ; $7962: $63
    db $e3                                        ; $7963: $e3
    inc e                                         ; $7964: $1c
    rst $38                                       ; $7965: $ff
    rst $38                                       ; $7966: $ff
    nop                                           ; $7967: $00
    db $e3                                        ; $7968: $e3
    inc e                                         ; $7969: $1c
    sbc [hl]                                      ; $796a: $9e
    ld h, c                                       ; $796b: $61
    ld [hl], c                                    ; $796c: $71
    adc [hl]                                      ; $796d: $8e
    rst $38                                       ; $796e: $ff
    rst $08                                       ; $796f: $cf
    jr nc, jr_009_79a4                            ; $7970: $30 $32

    call Call_000_00ff                            ; $7972: $cd $ff $00
    ret nz                                        ; $7975: $c0

    ccf                                           ; $7976: $3f
    rst $38                                       ; $7977: $ff
    rst $38                                       ; $7978: $ff
    nop                                           ; $7979: $00
    rst $38                                       ; $797a: $ff
    nop                                           ; $797b: $00
    ld bc, $fefe                                  ; $797c: $01 $fe $fe

Call_009_797f:
    ld bc, $03ff                                  ; $797f: $01 $ff $03
    db $fc                                        ; $7982: $fc
    db $fc                                        ; $7983: $fc
    inc bc                                        ; $7984: $03
    and a                                         ; $7985: $a7
    ld e, b                                       ; $7986: $58
    add hl, sp                                    ; $7987: $39
    add $ff                                       ; $7988: $c6 $ff

jr_009_798a:
    rst $38                                       ; $798a: $ff
    nop                                           ; $798b: $00
    inc sp                                        ; $798c: $33
    call z, $23dc                                 ; $798d: $cc $dc $23
    ld h, e                                       ; $7990: $63
    sbc h                                         ; $7991: $9c
    rst $38                                       ; $7992: $ff
    cp [hl]                                       ; $7993: $be
    ld b, c                                       ; $7994: $41
    rst $00                                       ; $7995: $c7
    jr c, jr_009_7a10                             ; $7996: $38 $78

    add a                                         ; $7998: $87
    sbc a                                         ; $7999: $9f

jr_009_799a:
    ld h, b                                       ; $799a: $60
    nop                                           ; $799b: $00
    and b                                         ; $799c: $a0
    rst $38                                       ; $799d: $ff
    and b                                         ; $799e: $a0
    rst $38                                       ; $799f: $ff
    and b                                         ; $79a0: $a0
    ld sp, hl                                     ; $79a1: $f9
    nop                                           ; $79a2: $00
    nop                                           ; $79a3: $00

jr_009_79a4:
    nop                                           ; $79a4: $00
    rst $38                                       ; $79a5: $ff
    nop                                           ; $79a6: $00
    ld bc, $0301                                  ; $79a7: $01 $01 $03
    ld [bc], a                                    ; $79aa: $02
    rlca                                          ; $79ab: $07
    dec b                                         ; $79ac: $05
    ld c, $ff                                     ; $79ad: $0e $ff
    dec bc                                        ; $79af: $0b
    inc c                                         ; $79b0: $0c
    dec bc                                        ; $79b1: $0b
    inc c                                         ; $79b2: $0c
    dec b                                         ; $79b3: $05
    ld c, $02                                     ; $79b4: $0e $02
    rlca                                          ; $79b6: $07
    cp $f2                                        ; $79b7: $fe $f2
    pop hl                                        ; $79b9: $e1
    dec c                                         ; $79ba: $0d
    ld e, $1f                                     ; $79bb: $1e $1f
    db $10                                        ; $79bd: $10
    ld e, $11                                     ; $79be: $1e $11
    rrca                                          ; $79c0: $0f
    rst $38                                       ; $79c1: $ff
    rra                                           ; $79c2: $1f
    rlca                                          ; $79c3: $07
    rrca                                          ; $79c4: $0f
    nop                                           ; $79c5: $00
    nop                                           ; $79c6: $00
    ret nz                                        ; $79c7: $c0

    ldh [$60], a                                  ; $79c8: $e0 $60
    rst $38                                       ; $79ca: $ff
    or b                                          ; $79cb: $b0
    ldh a, [$30]                                  ; $79cc: $f0 $30
    or b                                          ; $79ce: $b0
    ld [hl], c                                    ; $79cf: $71
    ld [hl], e                                    ; $79d0: $73
    rst $30                                       ; $79d1: $f7
    or l                                          ; $79d2: $b5
    rst $38                                       ; $79d3: $ff
    ld a, [hl]                                    ; $79d4: $7e
    db $db                                        ; $79d5: $db
    inc a                                         ; $79d6: $3c
    rst $28                                       ; $79d7: $ef
    add hl, de                                    ; $79d8: $19
    ld l, [hl]                                    ; $79d9: $6e
    sbc c                                         ; $79da: $99
    rst $10                                       ; $79db: $d7
    rst $38                                       ; $79dc: $ff
    jr c, jr_009_799a                             ; $79dd: $38 $bb

    ld a, h                                       ; $79df: $7c
    ld a, [hl]                                    ; $79e0: $7e
    rst $38                                       ; $79e1: $ff
    db $e3                                        ; $79e2: $e3
    rst $30                                       ; $79e3: $f7
    ret nz                                        ; $79e4: $c0

    rst $28                                       ; $79e5: $ef
    pop hl                                        ; $79e6: $e1
    add b                                         ; $79e7: $80
    ret nz                                        ; $79e8: $c0

    nop                                           ; $79e9: $00
    rst $38                                       ; $79ea: $ff
    db $e4                                        ; $79eb: $e4
    ret nz                                        ; $79ec: $c0

    ldh [rNR52], a                                ; $79ed: $e0 $26
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    rst $18                                       ; $79f1: $df
    add hl, sp                                    ; $79f2: $39
    ld a, [$ff1d]                                 ; $79f3: $fa $1d $ff
    sbc h                                         ; $79f6: $9c
    db $fd                                        ; $79f7: $fd
    rst $38                                       ; $79f8: $ff
    sbc [hl]                                      ; $79f9: $9e
    ei                                            ; $79fa: $fb
    ld e, $ea                                     ; $79fb: $1e $ea
    rra                                           ; $79fd: $1f
    db $fd                                        ; $79fe: $fd
    rrca                                          ; $79ff: $0f
    db $dd                                        ; $7a00: $dd
    rst $18                                       ; $7a01: $df
    db $ed                                        ; $7a02: $ed
    db $fc                                        ; $7a03: $fc
    db $fd                                        ; $7a04: $fd
    jr jr_009_7a43                                ; $7a05: $18 $3c

    ldh [$e5], a                                  ; $7a07: $e0 $e5
    nop                                           ; $7a09: $00
    nop                                           ; $7a0a: $00
    rst $38                                       ; $7a0b: $ff
    ld [$141c], sp                                ; $7a0c: $08 $1c $14
    cp a                                          ; $7a0f: $bf

jr_009_7a10:
    xor e                                         ; $7a10: $ab
    rst $30                                       ; $7a11: $f7
    ld e, h                                       ; $7a12: $5c
    rst $20                                       ; $7a13: $e7
    rst $38                                       ; $7a14: $ff
    push af                                       ; $7a15: $f5
    ld c, [hl]                                    ; $7a16: $4e
    db $ed                                        ; $7a17: $ed
    ld e, $ff                                     ; $7a18: $1e $ff
    ld e, $da                                     ; $7a1a: $1e $da
    ccf                                           ; $7a1c: $3f
    cp a                                          ; $7a1d: $bf
    ld a, c                                       ; $7a1e: $79
    cp e                                          ; $7a1f: $bb
    ldh a, [$f9]                                  ; $7a20: $f0 $f9
    ld h, b                                       ; $7a22: $60
    ldh a, [$e0]                                  ; $7a23: $f0 $e0
    rst $20                                       ; $7a25: $e7
    jr nc, @+$01                                  ; $7a26: $30 $ff

    ld a, b                                       ; $7a28: $78
    ret z                                         ; $7a29: $c8

    db $fc                                        ; $7a2a: $fc
    ld [hl], h                                    ; $7a2b: $74
    adc [hl]                                      ; $7a2c: $8e
    or $6e                                        ; $7a2d: $f6 $6e
    xor [hl]                                      ; $7a2f: $ae
    rst $38                                       ; $7a30: $ff
    ld e, [hl]                                    ; $7a31: $5e
    db $fc                                        ; $7a32: $fc
    ld a, $d8                                     ; $7a33: $3e $d8
    inc a                                         ; $7a35: $3c
    ld hl, sp+$0c                                 ; $7a36: $f8 $0c
    cp h                                          ; $7a38: $bc
    rst $38                                       ; $7a39: $ff
    call z, $fcfc                                 ; $7a3a: $cc $fc $fc
    jr c, jr_009_7abb                             ; $7a3d: $38 $7c

    nop                                           ; $7a3f: $00
    nop                                           ; $7a40: $00
    ld a, h                                       ; $7a41: $7c
    rst $38                                       ; $7a42: $ff

jr_009_7a43:
    cp $fa                                        ; $7a43: $fe $fa
    add a                                         ; $7a45: $87
    cp l                                          ; $7a46: $bd
    jp $c17e                                      ; $7a47: $c3 $7e $c1


    ld a, e                                       ; $7a4a: $7b
    rst $38                                       ; $7a4b: $ff
    ld c, h                                       ; $7a4c: $4c
    ld a, l                                       ; $7a4d: $7d
    ld c, [hl]                                    ; $7a4e: $4e
    ld a, [hl]                                    ; $7a4f: $7e
    ld c, a                                       ; $7a50: $4f
    ld a, [hl]                                    ; $7a51: $7e
    ld c, a                                       ; $7a52: $4f
    ld a, l                                       ; $7a53: $7d
    rst $38                                       ; $7a54: $ff
    ld c, [hl]                                    ; $7a55: $4e
    ld a, e                                       ; $7a56: $7b
    ld c, h                                       ; $7a57: $4c
    ld a, a                                       ; $7a58: $7f
    ld b, b                                       ; $7a59: $40
    ld a, [hl]                                    ; $7a5a: $7e
    ld b, c                                       ; $7a5b: $41
    ld a, e                                       ; $7a5c: $7b
    rst $18                                       ; $7a5d: $df
    ld b, a                                       ; $7a5e: $47
    ccf                                           ; $7a5f: $3f
    ld a, a                                       ; $7a60: $7f
    ld e, $3f                                     ; $7a61: $1e $3f
    add b                                         ; $7a63: $80
    db $e4                                        ; $7a64: $e4
    add b                                         ; $7a65: $80
    add c                                         ; $7a66: $81
    rst $38                                       ; $7a67: $ff
    jp $ef46                                      ; $7a68: $c3 $46 $ef


    xor e                                         ; $7a6b: $ab
    ld a, h                                       ; $7a6c: $7c
    rst $10                                       ; $7a6d: $d7
    jr c, @+$01                                   ; $7a6e: $38 $ff

    rst $38                                       ; $7a70: $ff
    inc de                                        ; $7a71: $13
    db $dd                                        ; $7a72: $dd
    inc sp                                        ; $7a73: $33
    xor a                                         ; $7a74: $af
    ld [hl], b                                    ; $7a75: $70
    ld [hl], a                                    ; $7a76: $77
    ld hl, sp-$13                                 ; $7a77: $f8 $ed
    rst $18                                       ; $7a79: $df
    cp $c7                                        ; $7a7a: $fe $c7
    rst $28                                       ; $7a7c: $ef
    add c                                         ; $7a7d: $81
    jp $e562                                      ; $7a7e: $c3 $62 $e5


    inc bc                                        ; $7a81: $03
    rlca                                          ; $7a82: $07
    rst $38                                       ; $7a83: $ff
    add a                                         ; $7a84: $87
    call nz, $fc4f                                ; $7a85: $c4 $4f $fc
    cp a                                          ; $7a88: $bf
    ld [hl], b                                    ; $7a89: $70
    rst $38                                       ; $7a8a: $ff
    inc a                                         ; $7a8b: $3c
    rst $38                                       ; $7a8c: $ff
    rst $30                                       ; $7a8d: $f7
    inc a                                         ; $7a8e: $3c
    rst $30                                       ; $7a8f: $f7
    inc [hl]                                      ; $7a90: $34
    rst $30                                       ; $7a91: $f7
    inc a                                         ; $7a92: $3c
    db $dd                                        ; $7a93: $dd
    ld a, $ff                                     ; $7a94: $3e $ff
    ei                                            ; $7a96: $fb
    ld e, $ba                                     ; $7a97: $1e $ba
    db $db                                        ; $7a99: $db
    ld sp, hl                                     ; $7a9a: $f9
    ei                                            ; $7a9b: $fb
    jr nc, jr_009_7b17                            ; $7a9c: $30 $79

    cp $c0                                        ; $7a9e: $fe $c0
    push hl                                       ; $7aa0: $e5
    add e                                         ; $7aa1: $83
    rst $00                                       ; $7aa2: $c7
    adc h                                         ; $7aa3: $8c
    rst $18                                       ; $7aa4: $df
    rst $10                                       ; $7aa5: $d7
    ld a, b                                       ; $7aa6: $78
    xor a                                         ; $7aa7: $af
    rst $38                                       ; $7aa8: $ff
    ldh a, [$df]                                  ; $7aa9: $f0 $df
    and $bb                                       ; $7aab: $e6 $bb
    add $7f                                       ; $7aad: $c6 $7f
    ret nz                                        ; $7aaf: $c0

    rst $08                                       ; $7ab0: $cf
    rst $38                                       ; $7ab1: $ff
    ld [hl], b                                    ; $7ab2: $70
    cp e                                          ; $7ab3: $bb
    ld a, h                                       ; $7ab4: $7c
    rst $30                                       ; $7ab5: $f7
    ccf                                           ; $7ab6: $3f
    di                                            ; $7ab7: $f3
    rst $30                                       ; $7ab8: $f7
    ldh [$fe], a                                  ; $7ab9: $e0 $fe

jr_009_7abb:
    ld h, b                                       ; $7abb: $60
    rst $20                                       ; $7abc: $e7
    add b                                         ; $7abd: $80
    add b                                         ; $7abe: $80
    ret nz                                        ; $7abf: $c0

    ld b, b                                       ; $7ac0: $40
    ldh [$e0], a                                  ; $7ac1: $e0 $e0
    ld h, b                                       ; $7ac3: $60
    cp $fe                                        ; $7ac4: $fe $fe
    db $e3                                        ; $7ac6: $e3
    and b                                         ; $7ac7: $a0
    ld [hl], b                                    ; $7ac8: $70
    ldh a, [$30]                                  ; $7ac9: $f0 $30
    ld [hl], b                                    ; $7acb: $70
    or b                                          ; $7acc: $b0
    ldh a, [rSB]                                  ; $7acd: $f0 $01
    ldh a, [rLCDC]                                ; $7acf: $f0 $40
    pop hl                                        ; $7ad1: $e1
    nop                                           ; $7ad2: $00
    nop                                           ; $7ad3: $00
    nop                                           ; $7ad4: $00

Call_009_7ad5:
    ld a, $06                                     ; $7ad5: $3e $06
    ldh [$96], a                                  ; $7ad7: $e0 $96
    ldh [rSVBK], a                                ; $7ad9: $e0 $70
    ld a, b                                       ; $7adb: $78
    ld [$d205], a                                 ; $7adc: $ea $05 $d2
    ld a, l                                       ; $7adf: $7d
    ld [$d200], a                                 ; $7ae0: $ea $00 $d2
    ld a, h                                       ; $7ae3: $7c
    ld [$d201], a                                 ; $7ae4: $ea $01 $d2
    ld a, d                                       ; $7ae7: $7a
    ld [$d202], a                                 ; $7ae8: $ea $02 $d2
    ld a, e                                       ; $7aeb: $7b
    ld [$d203], a                                 ; $7aec: $ea $03 $d2
    push de                                       ; $7aef: $d5
    call Call_000_0341                            ; $7af0: $cd $41 $03
    xor a                                         ; $7af3: $af
    ldh [$8a], a                                  ; $7af4: $e0 $8a
    ldh [$8b], a                                  ; $7af6: $e0 $8b
    call Call_000_23b6                            ; $7af8: $cd $b6 $23
    ld hl, $d200                                  ; $7afb: $21 $00 $d2
    ld a, [hl+]                                   ; $7afe: $2a
    ld h, [hl]                                    ; $7aff: $66
    ld l, a                                       ; $7b00: $6f
    ld de, $0028                                  ; $7b01: $11 $28 $00
    add hl, de                                    ; $7b04: $19
    ld a, [hl+]                                   ; $7b05: $2a
    ld h, [hl]                                    ; $7b06: $66
    ld l, a                                       ; $7b07: $6f
    ld de, $d000                                  ; $7b08: $11 $00 $d0
    ld a, $01                                     ; $7b0b: $3e $01
    ldh [$96], a                                  ; $7b0d: $e0 $96
    ldh [rSVBK], a                                ; $7b0f: $e0 $70
    call Call_000_1f2f                            ; $7b11: $cd $2f $1f
    ld hl, $d000                                  ; $7b14: $21 $00 $d0

jr_009_7b17:
    ld de, $8e00                                  ; $7b17: $11 $00 $8e
    ld c, $14                                     ; $7b1a: $0e $14
    call Call_000_04db                            ; $7b1c: $cd $db $04
    ld hl, $7bac                                  ; $7b1f: $21 $ac $7b
    ld de, $d000                                  ; $7b22: $11 $00 $d0
    call Call_000_1f2f                            ; $7b25: $cd $2f $1f
    ld hl, $d000                                  ; $7b28: $21 $00 $d0
    ld de, $b000                                  ; $7b2b: $11 $00 $b0
    ld c, $80                                     ; $7b2e: $0e $80
    call Call_000_0468                            ; $7b30: $cd $68 $04
    ld hl, $d800                                  ; $7b33: $21 $00 $d8
    ld de, $a800                                  ; $7b36: $11 $00 $a8
    ld c, $80                                     ; $7b39: $0e $80
    call Call_000_04db                            ; $7b3b: $cd $db $04
    ld hl, $7e03                                  ; $7b3e: $21 $03 $7e
    ld de, $0206                                  ; $7b41: $11 $06 $02
    call Call_000_0595                            ; $7b44: $cd $95 $05
    ld hl, $7e33                                  ; $7b47: $21 $33 $7e
    ld de, $0c01                                  ; $7b4a: $11 $01 $0c
    call Call_000_0595                            ; $7b4d: $cd $95 $05
    ld hl, $4360                                  ; $7b50: $21 $60 $43
    ld de, $b800                                  ; $7b53: $11 $00 $b8
    ld c, $24                                     ; $7b56: $0e $24
    call Call_000_0468                            ; $7b58: $cd $68 $04
    ld hl, $45a0                                  ; $7b5b: $21 $a0 $45
    ld de, $9800                                  ; $7b5e: $11 $00 $98
    ld c, $24                                     ; $7b61: $0e $24
    call Call_000_04db                            ; $7b63: $cd $db $04
    ld a, $06                                     ; $7b66: $3e $06
    ldh [$96], a                                  ; $7b68: $e0 $96
    ldh [rSVBK], a                                ; $7b6a: $e0 $70
    ld hl, $0100                                  ; $7b6c: $21 $00 $01
    ld c, $0a                                     ; $7b6f: $0e $0a

jr_009_7b71:
    push bc                                       ; $7b71: $c5
    push hl                                       ; $7b72: $e5
    call Call_009_4916                            ; $7b73: $cd $16 $49
    call Call_000_04de                            ; $7b76: $cd $de $04
    pop hl                                        ; $7b79: $e1
    ld c, $0b                                     ; $7b7a: $0e $0b
    push hl                                       ; $7b7c: $e5
    call Call_009_4949                            ; $7b7d: $cd $49 $49
    call Call_000_04de                            ; $7b80: $cd $de $04
    pop hl                                        ; $7b83: $e1
    pop bc                                        ; $7b84: $c1
    inc l                                         ; $7b85: $2c
    dec c                                         ; $7b86: $0d
    jr nz, jr_009_7b71                            ; $7b87: $20 $e8

    ld a, $01                                     ; $7b89: $3e $01
    ld hl, $4990                                  ; $7b8b: $21 $90 $49
    call Call_000_23e8                            ; $7b8e: $cd $e8 $23
    call Call_000_0371                            ; $7b91: $cd $71 $03
    push af                                       ; $7b94: $f5
    push bc                                       ; $7b95: $c5
    push de                                       ; $7b96: $d5
    push hl                                       ; $7b97: $e5
    ldh a, [$96]                                  ; $7b98: $f0 $96
    push af                                       ; $7b9a: $f5
    rst $18                                       ; $7b9b: $df
    nop                                           ; $7b9c: $00
    dec b                                         ; $7b9d: $05
    pop af                                        ; $7b9e: $f1
    ldh [$96], a                                  ; $7b9f: $e0 $96
    ldh [rSVBK], a                                ; $7ba1: $e0 $70
    pop hl                                        ; $7ba3: $e1
    pop de                                        ; $7ba4: $d1
    pop bc                                        ; $7ba5: $c1
    pop af                                        ; $7ba6: $f1
    call Call_009_7e3b                            ; $7ba7: $cd $3b $7e
    pop de                                        ; $7baa: $d1
    ret                                           ; $7bab: $c9


    dec d                                         ; $7bac: $15
    nop                                           ; $7bad: $00
    rst $38                                       ; $7bae: $ff
    db $ec                                        ; $7baf: $ec
    rst $38                                       ; $7bb0: $ff
    rst $38                                       ; $7bb1: $ff
    db $fc                                        ; $7bb2: $fc
    nop                                           ; $7bb3: $00
    cp $ed                                        ; $7bb4: $fe $ed
    rst $38                                       ; $7bb6: $ff
    rst $38                                       ; $7bb7: $ff
    sbc l                                         ; $7bb8: $9d
    ld [c], a                                     ; $7bb9: $e2
    ld a, a                                       ; $7bba: $7f
    add d                                         ; $7bbb: $82
    nop                                           ; $7bbc: $00
    ld [de], a                                    ; $7bbd: $12
    nop                                           ; $7bbe: $00
    ld [hl], $00                                  ; $7bbf: $36 $00
    ld h, [hl]                                    ; $7bc1: $66
    sub c                                         ; $7bc2: $91
    ld [c], a                                     ; $7bc3: $e2
    rst $38                                       ; $7bc4: $ff
    inc b                                         ; $7bc5: $04
    nop                                           ; $7bc6: $00
    ld [$1900], sp                                ; $7bc7: $08 $00 $19
    nop                                           ; $7bca: $00
    inc de                                        ; $7bcb: $13
    nop                                           ; $7bcc: $00
    add a                                         ; $7bcd: $87
    inc sp                                        ; $7bce: $33
    nop                                           ; $7bcf: $00
    scf                                           ; $7bd0: $37
    sub b                                         ; $7bd1: $90
    xor $a0                                       ; $7bd2: $ee $a0
    rst $20                                       ; $7bd4: $e7
    and l                                         ; $7bd5: $a5
    ldh [$fa], a                                  ; $7bd6: $e0 $fa
    pop hl                                        ; $7bd8: $e1
    rst $38                                       ; $7bd9: $ff
    rst $38                                       ; $7bda: $ff
    ret nc                                        ; $7bdb: $d0

    rst $28                                       ; $7bdc: $ef
    sbc a                                         ; $7bdd: $9f
    rst $38                                       ; $7bde: $ff
    and b                                         ; $7bdf: $a0
    rst $38                                       ; $7be0: $ff
    xor a                                         ; $7be1: $af
    ldh a, [$f0]                                  ; $7be2: $f0 $f0
    cp $e3                                        ; $7be4: $fe $e3
    ld a, [hl]                                    ; $7be6: $7e
    pop hl                                        ; $7be7: $e1
    db $fc                                        ; $7be8: $fc
    ld [c], a                                     ; $7be9: $e2
    reti                                          ; $7bea: $d9


    and $07                                       ; $7beb: $e6 $07
    rst $38                                       ; $7bed: $ff
    di                                            ; $7bee: $f3
    rst $38                                       ; $7bef: $ff
    rrca                                          ; $7bf0: $0f
    dec bc                                        ; $7bf1: $0b
    rst $38                                       ; $7bf2: $ff
    ei                                            ; $7bf3: $fb
    rrca                                          ; $7bf4: $0f
    cp $e3                                        ; $7bf5: $fe $e3
    ret c                                         ; $7bf7: $d8

    push hl                                       ; $7bf8: $e5
    ret nc                                        ; $7bf9: $d0

    push hl                                       ; $7bfa: $e5
    add sp, -$1b                                  ; $7bfb: $e8 $e5
    xor [hl]                                      ; $7bfd: $ae
    ldh [$ed], a                                  ; $7bfe: $e0 $ed
    sbc a                                         ; $7c00: $9f
    rst $38                                       ; $7c01: $ff
    ret nz                                        ; $7c02: $c0

    dec d                                         ; $7c03: $15
    db $e4                                        ; $7c04: $e4
    add b                                         ; $7c05: $80
    db $fd                                        ; $7c06: $fd
    ldh [$c8], a                                  ; $7c07: $e0 $c8
    pop af                                        ; $7c09: $f1
    or a                                          ; $7c0a: $b7
    ld a, [$f4e0]                                 ; $7c0b: $fa $e0 $f4
    db $e3                                        ; $7c0e: $e3
    add [hl]                                      ; $7c0f: $86
    ld [c], a                                     ; $7c10: $e2
    xor l                                         ; $7c11: $ad
    ld d, d                                       ; $7c12: $52
    ld b, b                                       ; $7c13: $40
    cp a                                          ; $7c14: $bf
    ld l, [hl]                                    ; $7c15: $6e
    ld [de], a                                    ; $7c16: $12
    db $e3                                        ; $7c17: $e3
    rst $38                                       ; $7c18: $ff
    rst $38                                       ; $7c19: $ff
    ld bc, $e0fd                                  ; $7c1a: $01 $fd $e0
    ld l, e                                       ; $7c1d: $6b
    sub l                                         ; $7c1e: $95
    ld a, [$3ce0]                                 ; $7c1f: $fa $e0 $3c
    ld [bc], a                                    ; $7c22: $02
    db $e4                                        ; $7c23: $e4
    adc $e1                                       ; $7c24: $ce $e1
    and e                                         ; $7c26: $a3
    call c, $a1de                                 ; $7c27: $dc $de $a1
    adc $e3                                       ; $7c2a: $ce $e3
    ld [hl], d                                    ; $7c2c: $72
    db $e3                                        ; $7c2d: $e3
    rst $08                                       ; $7c2e: $cf
    dec l                                         ; $7c2f: $2d
    jp nc, Jump_000_0df2                          ; $7c30: $d2 $f2 $0d

    push bc                                       ; $7c33: $c5
    jp $e3ce                                      ; $7c34: $c3 $ce $e3


    dec de                                        ; $7c37: $1b
    push hl                                       ; $7c38: $e5
    db $eb                                        ; $7c39: $eb
    push af                                       ; $7c3a: $f5
    dec bc                                        ; $7c3b: $0b
    adc $e3                                       ; $7c3c: $ce $e3
    ld l, [hl]                                    ; $7c3e: $6e
    rst $08                                       ; $7c3f: $cf
    call z, Call_000_0077                         ; $7c40: $cc $77 $00
    ld a, a                                       ; $7c43: $7f
    db $fc                                        ; $7c44: $fc
    cp $e0                                        ; $7c45: $fe $e0
    cp c                                          ; $7c47: $b9
    pop bc                                        ; $7c48: $c1
    rst $30                                       ; $7c49: $f7
    ld [$0cf3], sp                                ; $7c4a: $08 $f3 $0c
    ld sp, hl                                     ; $7c4d: $f9
    ld b, $80                                     ; $7c4e: $06 $80
    adc a                                         ; $7c50: $8f
    ret                                           ; $7c51: $c9


    ld h, $e3                                     ; $7c52: $26 $e3
    ld b, $e5                                     ; $7c54: $06 $e5
    cp $c3                                        ; $7c56: $fe $c3
    pop af                                        ; $7c58: $f1
    ret z                                         ; $7c59: $c8

    ld h, l                                       ; $7c5a: $65
    jp nz, $e318                                  ; $7c5b: $c2 $18 $e3

    db $eb                                        ; $7c5e: $eb
    di                                            ; $7c5f: $f3
    rra                                           ; $7c60: $1f
    di                                            ; $7c61: $f3
    ld [$54e0], sp                                ; $7c62: $08 $e0 $54
    jp nz, $fec6                                  ; $7c65: $c2 $c6 $fe

    rst $20                                       ; $7c68: $e7
    cp $ff                                        ; $7c69: $fe $ff
    rst $30                                       ; $7c6b: $f7
    sbc $ff                                       ; $7c6c: $de $ff
    sbc $ef                                       ; $7c6e: $de $ef
    sbc $e7                                       ; $7c70: $de $e7
    sbc $77                                       ; $7c72: $de $77
    rst $20                                       ; $7c74: $e7
    sbc h                                         ; $7c75: $9c
    ld h, e                                       ; $7c76: $63
    ld e, a                                       ; $7c77: $5f
    jp nz, $c77c                                  ; $7c78: $c2 $7c $c7

    cp $f2                                        ; $7c7b: $fe $f2
    pop hl                                        ; $7c7d: $e1
    rst $28                                       ; $7c7e: $ef
    db $fc                                        ; $7c7f: $fc
    ld a, a                                       ; $7c80: $7f
    pop bc                                        ; $7c81: $c1
    ld a, $4f                                     ; $7c82: $3e $4f
    adc $f8                                       ; $7c84: $ce $f8
    rst $08                                       ; $7c86: $cf
    db $fc                                        ; $7c87: $fc
    ei                                            ; $7c88: $fb
    rst $18                                       ; $7c89: $df
    and $d4                                       ; $7c8a: $e6 $d4
    pop hl                                        ; $7c8c: $e1
    call c, $f9ef                                 ; $7c8d: $dc $ef $f9
    cp $83                                        ; $7c90: $fe $83
    rst $38                                       ; $7c92: $ff
    ld a, h                                       ; $7c93: $7c
    cp h                                          ; $7c94: $bc
    jp $9ce3                                      ; $7c95: $c3 $e3 $9c


    sbc a                                         ; $7c98: $9f
    ldh [$f0], a                                  ; $7c99: $e0 $f0
    rst $38                                       ; $7c9b: $ff
    adc a                                         ; $7c9c: $8f
    adc a                                         ; $7c9d: $8f
    ldh a, [$f0]                                  ; $7c9e: $f0 $f0
    adc a                                         ; $7ca0: $8f
    rst $18                                       ; $7ca1: $df
    and b                                         ; $7ca2: $a0
    add b                                         ; $7ca3: $80
    rst $38                                       ; $7ca4: $ff
    rst $38                                       ; $7ca5: $ff
    adc $31                                       ; $7ca6: $ce $31
    add hl, sp                                    ; $7ca8: $39
    add $c7                                       ; $7ca9: $c6 $c7
    jr c, @+$7a                                   ; $7cab: $38 $78

    rst $38                                       ; $7cad: $ff
    add a                                         ; $7cae: $87
    adc a                                         ; $7caf: $8f
    ld [hl], b                                    ; $7cb0: $70
    ldh a, [rIF]                                  ; $7cb1: $f0 $0f
    rra                                           ; $7cb3: $1f
    ldh [rP1], a                                  ; $7cb4: $e0 $00
    rst $38                                       ; $7cb6: $ff
    rst $38                                       ; $7cb7: $ff
    call z, Call_000_3b33                         ; $7cb8: $cc $33 $3b
    call nz, Call_000_39c6                        ; $7cbb: $c4 $c6 $39
    ld a, c                                       ; $7cbe: $79
    cp l                                          ; $7cbf: $bd
    add [hl]                                      ; $7cc0: $86
    ldh a, [$e5]                                  ; $7cc1: $f0 $e5

Jump_009_7cc3:
    dec e                                         ; $7cc3: $1d
    db $e3                                        ; $7cc4: $e3
    rst $20                                       ; $7cc5: $e7
    add hl, de                                    ; $7cc6: $19
    ld [hl+], a                                   ; $7cc7: $22
    pop hl                                        ; $7cc8: $e1
    rrca                                          ; $7cc9: $0f
    rst $18                                       ; $7cca: $df
    pop af                                        ; $7ccb: $f1
    ld sp, hl                                     ; $7ccc: $f9
    rlca                                          ; $7ccd: $07
    rlca                                          ; $7cce: $07
    ld sp, hl                                     ; $7ccf: $f9
    ld [$c9c1], a                                 ; $7cd0: $ea $c1 $c9
    rst $30                                       ; $7cd3: $f7
    rst $38                                       ; $7cd4: $ff
    jp z, $cbf5                                   ; $7cd5: $ca $f5 $cb

    db $f4                                        ; $7cd8: $f4
    ret                                           ; $7cd9: $c9


    or $cb                                        ; $7cda: $f6 $cb
    db $f4                                        ; $7cdc: $f4
    db $fc                                        ; $7cdd: $fc
    cp $e1                                        ; $7cde: $fe $e1
    ret nz                                        ; $7ce0: $c0

    and c                                         ; $7ce1: $a1
    ld a, a                                       ; $7ce2: $7f
    rst $38                                       ; $7ce3: $ff
    rra                                           ; $7ce4: $1f
    rst $38                                       ; $7ce5: $ff
    ld c, a                                       ; $7ce6: $4f
    cp a                                          ; $7ce7: $bf
    rst $38                                       ; $7ce8: $ff
    ld c, a                                       ; $7ce9: $4f
    cp a                                          ; $7cea: $bf
    dec hl                                        ; $7ceb: $2b

jr_009_7cec:
    rst $18                                       ; $7cec: $df
    ld l, e                                       ; $7ced: $6b
    rst $18                                       ; $7cee: $df
    rst $18                                       ; $7cef: $df
    jr nz, @+$01                                  ; $7cf0: $20 $ff

    rst $08                                       ; $7cf2: $cf
    jr nc, jr_009_7d5c                            ; $7cf3: $30 $67

    sbc b                                         ; $7cf5: $98
    ld h, a                                       ; $7cf6: $67
    sbc b                                         ; $7cf7: $98
    inc hl                                        ; $7cf8: $23
    call c, $23ff                                 ; $7cf9: $dc $ff $23
    call c, $fe01                                 ; $7cfc: $dc $01 $fe
    ld bc, $f8fe                                  ; $7cff: $01 $fe $f8
    rlca                                          ; $7d02: $07
    rst $38                                       ; $7d03: $ff
    db $fc                                        ; $7d04: $fc
    inc bc                                        ; $7d05: $03
    sbc h                                         ; $7d06: $9c
    ld h, e                                       ; $7d07: $63
    call z, $6633                                 ; $7d08: $cc $33 $66
    sbc c                                         ; $7d0b: $99
    ccf                                           ; $7d0c: $3f
    ld h, [hl]                                    ; $7d0d: $66
    sbc c                                         ; $7d0e: $99
    ld [hl+], a                                   ; $7d0f: $22
    db $dd                                        ; $7d10: $dd
    ld [bc], a                                    ; $7d11: $02
    db $fd                                        ; $7d12: $fd
    sbc d                                         ; $7d13: $9a
    push bc                                       ; $7d14: $c5
    ld [bc], a                                    ; $7d15: $02
    db $eb                                        ; $7d16: $eb
    db $fc                                        ; $7d17: $fc
    and a                                         ; $7d18: $a7
    and d                                         ; $7d19: $a2
    sub e                                         ; $7d1a: $93
    and l                                         ; $7d1b: $a5
    ld a, h                                       ; $7d1c: $7c
    add $3f                                       ; $7d1d: $c6 $3f
    cp $7f                                        ; $7d1f: $fe $7f
    and $ef                                       ; $7d21: $e6 $ef
    rst $38                                       ; $7d23: $ff
    xor $f7                                       ; $7d24: $ee $f7
    cp $30                                        ; $7d26: $fe $30
    pop hl                                        ; $7d28: $e1

jr_009_7d29:
    jr nc, @-$07                                  ; $7d29: $30 $f7

    jr c, jr_009_7cec                             ; $7d2b: $38 $bf

    rst $38                                       ; $7d2d: $ff
    db $fc                                        ; $7d2e: $fc
    pop af                                        ; $7d2f: $f1
    ld a, $f7                                     ; $7d30: $3e $f7
    jr c, @-$06                                   ; $7d32: $38 $f8

    ldh [$3c], a                                  ; $7d34: $e0 $3c
    db $e3                                        ; $7d36: $e3
    pop hl                                        ; $7d37: $e1
    ld e, $6f                                     ; $7d38: $1e $6f
    xor a                                         ; $7d3a: $af
    cp $ff                                        ; $7d3b: $fe $ff
    dec sp                                        ; $7d3d: $3b
    xor d                                         ; $7d3e: $aa
    add b                                         ; $7d3f: $80
    sbc e                                         ; $7d40: $9b
    db $e4                                        ; $7d41: $e4
    rst $38                                       ; $7d42: $ff
    or $89                                        ; $7d43: $f6 $89
    call $bbb2                                    ; $7d45: $cd $b2 $bb
    call nz, $99e6                                ; $7d48: $c4 $e6 $99
    rst $38                                       ; $7d4b: $ff
    sbc c                                         ; $7d4c: $99
    and $f7                                       ; $7d4d: $e6 $f7
    adc b                                         ; $7d4f: $88
    rst $38                                       ; $7d50: $ff
    nop                                           ; $7d51: $00
    rst $08                                       ; $7d52: $cf
    jr nc, @+$01                                  ; $7d53: $30 $ff

    ld [hl], b                                    ; $7d55: $70
    adc a                                         ; $7d56: $8f
    adc a                                         ; $7d57: $8f
    ld [hl], b                                    ; $7d58: $70
    halt                                          ; $7d59: $76
    adc c                                         ; $7d5a: $89
    sbc c                                         ; $7d5b: $99

jr_009_7d5c:
    ld h, [hl]                                    ; $7d5c: $66
    rst $38                                       ; $7d5d: $ff
    and $19                                       ; $7d5e: $e6 $19
    jr c, jr_009_7d29                             ; $7d60: $38 $c7

    rst $38                                       ; $7d62: $ff
    nop                                           ; $7d63: $00
    jp $ff3c                                      ; $7d64: $c3 $3c $ff


    db $fc                                        ; $7d67: $fc
    inc bc                                        ; $7d68: $03
    inc bc                                        ; $7d69: $03
    db $fc                                        ; $7d6a: $fc
    db $fc                                        ; $7d6b: $fc
    inc bc                                        ; $7d6c: $03
    daa                                           ; $7d6d: $27
    ret c                                         ; $7d6e: $d8

    rst $38                                       ; $7d6f: $ff
    call c, Call_000_3323                         ; $7d70: $dc $23 $33
    call z, Call_000_01ff                         ; $7d73: $cc $ff $01
    sbc a                                         ; $7d76: $9f
    ld h, c                                       ; $7d77: $61
    rst $38                                       ; $7d78: $ff
    ld [hl], c                                    ; $7d79: $71
    adc a                                         ; $7d7a: $8f
    adc a                                         ; $7d7b: $8f
    ld [hl], c                                    ; $7d7c: $71
    ld a, c                                       ; $7d7d: $79
    add a                                         ; $7d7e: $87
    rst $00                                       ; $7d7f: $c7
    add hl, sp                                    ; $7d80: $39
    rst $28                                       ; $7d81: $ef
    dec a                                         ; $7d82: $3d
    jp $1de3                                      ; $7d83: $c3 $e3 $1d


    ld a, [bc]                                    ; $7d86: $0a
    pop hl                                        ; $7d87: $e1
    call $cdf2                                    ; $7d88: $cd $f2 $cd
    rst $18                                       ; $7d8b: $df
    or $c9                                        ; $7d8c: $f6 $c9
    or $cd                                        ; $7d8e: $f6 $cd
    ld a, [c]                                     ; $7d90: $f2
    cp $c1                                        ; $7d91: $fe $c1
    ld l, e                                       ; $7d93: $6b
    rst $18                                       ; $7d94: $df
    rst $28                                       ; $7d95: $ef
    dec hl                                        ; $7d96: $2b
    rst $18                                       ; $7d97: $df
    ld c, e                                       ; $7d98: $4b
    cp a                                          ; $7d99: $bf
    cp $e3                                        ; $7d9a: $fe $e3
    dec bc                                        ; $7d9c: $0b
    rst $38                                       ; $7d9d: $ff
    ld c, e                                       ; $7d9e: $4b
    sbc l                                         ; $7d9f: $9d
    cp a                                          ; $7da0: $bf
    ret nc                                        ; $7da1: $d0

    add a                                         ; $7da2: $87
    ld bc, $03ff                                  ; $7da3: $01 $ff $03
    ld d, h                                       ; $7da6: $54
    and b                                         ; $7da7: $a0
    ret nz                                        ; $7da8: $c0

    add c                                         ; $7da9: $81
    db $10                                        ; $7daa: $10
    ei                                            ; $7dab: $fb
    rst $38                                       ; $7dac: $ff
    ld h, b                                       ; $7dad: $60
    add d                                         ; $7dae: $82
    and b                                         ; $7daf: $a0
    add b                                         ; $7db0: $80
    rst $38                                       ; $7db1: $ff
    adc b                                         ; $7db2: $88
    rst $38                                       ; $7db3: $ff
    jr jr_009_7db6                                ; $7db4: $18 $00

jr_009_7db6:
    inc c                                         ; $7db6: $0c
    add $04                                       ; $7db7: $c6 $04
    rst $00                                       ; $7db9: $c7
    and l                                         ; $7dba: $a5
    adc c                                         ; $7dbb: $89
    sub c                                         ; $7dbc: $91
    sbc a                                         ; $7dbd: $9f
    rst $38                                       ; $7dbe: $ff
    rst $38                                       ; $7dbf: $ff
    rst $38                                       ; $7dc0: $ff
    rst $38                                       ; $7dc1: $ff
    rst $38                                       ; $7dc2: $ff
    rst $38                                       ; $7dc3: $ff
    rst $38                                       ; $7dc4: $ff
    rst $38                                       ; $7dc5: $ff
    xor $f6                                       ; $7dc6: $ee $f6
    push af                                       ; $7dc8: $f5
    rrca                                          ; $7dc9: $0f
    rst $38                                       ; $7dca: $ff
    sbc [hl]                                      ; $7dcb: $9e
    cp $e0                                        ; $7dcc: $fe $e0
    cp [hl]                                       ; $7dce: $be
    rst $38                                       ; $7dcf: $ff
    inc a                                         ; $7dd0: $3c
    ei                                            ; $7dd1: $fb
    rst $38                                       ; $7dd2: $ff
    ld a, l                                       ; $7dd3: $7d
    cp $e0                                        ; $7dd4: $fe $e0
    rst $38                                       ; $7dd6: $ff
    rst $38                                       ; $7dd7: $ff
    jr nc, @+$01                                  ; $7dd8: $30 $ff

    ld [hl], b                                    ; $7dda: $70
    rst $38                                       ; $7ddb: $ff
    rst $38                                       ; $7ddc: $ff
    ld [hl], c                                    ; $7ddd: $71
    rst $38                                       ; $7dde: $ff
    db $e3                                        ; $7ddf: $e3
    rst $38                                       ; $7de0: $ff
    rst $20                                       ; $7de1: $e7
    rst $38                                       ; $7de2: $ff
    rst $28                                       ; $7de3: $ef
    nop                                           ; $7de4: $00
    or b                                          ; $7de5: $b0
    ld h, e                                       ; $7de6: $63
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
    nop                                           ; $7df5: $00
    rst $38                                       ; $7df6: $ff
    rst $38                                       ; $7df7: $ff
    rst $38                                       ; $7df8: $ff
    rst $38                                       ; $7df9: $ff
    rst $38                                       ; $7dfa: $ff
    rst $38                                       ; $7dfb: $ff
    rst $38                                       ; $7dfc: $ff
    rst $38                                       ; $7dfd: $ff
    rst $38                                       ; $7dfe: $ff
    and $00                                       ; $7dff: $e6 $00
    nop                                           ; $7e01: $00
    nop                                           ; $7e02: $00
    ld hl, sp+$03                                 ; $7e03: $f8 $03
    ld b, h                                       ; $7e05: $44
    inc bc                                        ; $7e06: $03
    nop                                           ; $7e07: $00
    ld [bc], a                                    ; $7e08: $02
    ld b, b                                       ; $7e09: $40
    ld bc, $4a96                                  ; $7e0a: $01 $96 $4a
    rra                                           ; $7e0d: $1f
    ld [de], a                                    ; $7e0e: $12
    sub $00                                       ; $7e0f: $d6 $00
    nop                                           ; $7e11: $00
    nop                                           ; $7e12: $00
    rst $38                                       ; $7e13: $ff
    inc bc                                        ; $7e14: $03
    rra                                           ; $7e15: $1f
    ld [de], a                                    ; $7e16: $12
    sub $00                                       ; $7e17: $d6 $00
    nop                                           ; $7e19: $00
    nop                                           ; $7e1a: $00
    sbc $7b                                       ; $7e1b: $de $7b
    adc [hl]                                      ; $7e1d: $8e
    ld a, a                                       ; $7e1e: $7f
    add b                                         ; $7e1f: $80
    ld a, [hl]                                    ; $7e20: $7e
    add b                                         ; $7e21: $80
    ld a, l                                       ; $7e22: $7d
    sbc $7b                                       ; $7e23: $de $7b
    jr jr_009_7e8a                                ; $7e25: $18 $63

    ld d, d                                       ; $7e27: $52
    ld c, d                                       ; $7e28: $4a
    adc h                                         ; $7e29: $8c
    ld sp, $7bde                                  ; $7e2a: $31 $de $7b
    jr jr_009_7e92                                ; $7e2d: $18 $63

    ld d, d                                       ; $7e2f: $52
    ld c, d                                       ; $7e30: $4a
    adc h                                         ; $7e31: $8c
    ld sp, $7d80                                  ; $7e32: $31 $80 $7d
    rra                                           ; $7e35: $1f
    ld l, b                                       ; $7e36: $68
    ld c, h                                       ; $7e37: $4c
    ld l, b                                       ; $7e38: $68
    nop                                           ; $7e39: $00
    nop                                           ; $7e3a: $00

Call_009_7e3b:
    ldh a, [$96]                                  ; $7e3b: $f0 $96
    push af                                       ; $7e3d: $f5
    ld a, $01                                     ; $7e3e: $3e $01
    ldh [$96], a                                  ; $7e40: $e0 $96
    ldh [rSVBK], a                                ; $7e42: $e0 $70
    ld hl, $4360                                  ; $7e44: $21 $60 $43
    ld de, $d000                                  ; $7e47: $11 $00 $d0
    ld c, $40                                     ; $7e4a: $0e $40
    call Call_000_03eb                            ; $7e4c: $cd $eb $03
    ld hl, $45a0                                  ; $7e4f: $21 $a0 $45
    ld de, $d400                                  ; $7e52: $11 $00 $d4
    ld c, $40                                     ; $7e55: $0e $40
    call Call_000_03eb                            ; $7e57: $cd $eb $03
    call Call_000_0804                            ; $7e5a: $cd $04 $08
    pop af                                        ; $7e5d: $f1
    ldh [$96], a                                  ; $7e5e: $e0 $96
    ldh [rSVBK], a                                ; $7e60: $e0 $70
    ret                                           ; $7e62: $c9


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

jr_009_7e8a:
    rst $38                                       ; $7e8a: $ff
    rst $38                                       ; $7e8b: $ff
    rst $38                                       ; $7e8c: $ff
    rst $38                                       ; $7e8d: $ff
    rst $38                                       ; $7e8e: $ff
    rst $38                                       ; $7e8f: $ff
    rst $38                                       ; $7e90: $ff
    rst $38                                       ; $7e91: $ff

jr_009_7e92:
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
