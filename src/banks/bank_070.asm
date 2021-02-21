; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $070", ROMX[$4000], BANK[$70]

    db $10, $40

    cp h                                          ; $4002: $bc
    ld c, b                                       ; $4003: $48
    ld hl, $dc4d                                  ; $4004: $21 $4d $dc
    ld e, b                                       ; $4007: $58
    xor h                                         ; $4008: $ac
    ld h, b                                       ; $4009: $60
    ld a, [$9764]                                 ; $400a: $fa $64 $97
    ld a, b                                       ; $400d: $78
    ld e, c                                       ; $400e: $59
    ld [hl], h                                    ; $400f: $74

    db $18, $40, $54, $43, $36, $48, $51, $48, $3f, $0d, $0d, $0d, $0e, $0e, $0e, $fa
    db $ff, $f4, $f7, $00, $ff, $ff, $ff, $ff, $ff, $ff, $f9, $f8, $5b, $ff, $f4, $f8
    db $a1, $ff, $ff, $ff, $00, $ff, $ff, $43, $ff, $fa, $ff, $80, $df, $ff, $ff, $ff
    db $ff, $ff, $ff, $3d, $ff, $00, $fa, $ff, $80, $df, $ff, $ff, $ff, $ff, $ff, $ff
    db $6d, $f4, $46, $e0, $43, $e2, $00, $fa, $e3, $80, $df, $ab, $ee, $03, $e4, $60
    db $df, $c0, $f7, $da, $ff, $80, $d0, $00, $49, $e5, $3a, $e4, $f9, $e6, $80, $df
    db $ca, $e4, $09, $e6, $80, $e4, $79, $ff, $0c, $c0, $ea, $ba, $e6, $4d, $2d, $7b
    db $e4, $ca, $ff, $9e, $c9, $85, $c4, $07, $6d, $0b, $0b, $bf, $e0, $75, $c7, $6e
    db $c7, $80, $db, $45, $c2, $0b, $4d, $4d, $c1, $e0, $0b, $7e, $e2, $f8, $cb, $73
    db $ff, $84, $e2, $0b, $0d, $0d, $c1, $e0, $0b, $3d, $e3, $f8, $c9, $c0, $f6, $c9
    db $aa, $f8, $c1, $e0, $c0, $e0, $bf, $a1, $0b, $4d, $4d, $4d, $2d, $03, $4d, $2d
    db $ba, $c8, $b1, $b1, $81, $ed, $82, $e2, $7d, $e0, $7a, $e3, $00, $f8, $c9, $b1
    db $bf, $47, $a3, $c1, $e2, $7d, $e3, $7a, $e2, $f8, $c3, $5e, $c7, $04, $43, $93
    db $00, $c5, $0b, $42, $e1, $85, $e3, $f9, $c3, $bf, $e3, $b1, $b8, $00, $0e, $a7
    db $c0, $e4, $45, $e5, $bf, $e7, $33, $c3, $bc, $da, $8b, $84, $c8, $a0, $80, $81
    db $e2, $84, $c3, $f3, $e0, $f7, $c3, $b1, $a3, $3c, $d4, $c3, $a8, $0e, $f7, $0e
    db $4d, $2d, $41, $e2, $0d, $2d, $2b, $0a, $21, $6a, $79, $c1, $b6, $e0, $f2, $a4
    db $e4, $e0, $4d, $00, $ba, $05, $84, $de, $c0, $e3, $2b, $0a, $0a, $2a, $38, $c2
    db $2d, $2d, $d0, $f2, $a2, $71, $a1, $4b, $9f, $be, $c5, $2d, $c0, $e0, $2a, $2b
    db $83, $2b, $2b, $b8, $c7, $7a, $c7, $80, $db, $04, $a0, $8c, $e1, $2d, $03, $0b
    db $6b, $fe, $e0, $c0, $e2, $bb, $e3, $80, $e3, $80, $df, $c5, $80, $04, $4c, $e4
    db $fb, $80, $4b, $be, $e1, $38, $e1, $c0, $e3, $d0, $38, $ca, $65, $bc, $c5, $81
    db $7f, $a3, $0b, $4b, $4b, $6b, $82, $e1, $2b, $c7, $2a, $0a, $0a, $80, $e9, $00
    db $bc, $c0, $e7, $0a, $0a, $09, $6a, $bf, $e1, $f8, $e0, $4b, $2f, $c4, $74, $71
    db $00, $b2, $41, $a3, $1b, $4b, $0a, $7f, $e2, $0a, $4a, $f8, $84, $3f, $9f, $02
    db $c0, $2c, $c8, $84, $be, $82, $0d, $6b, $86, $e1, $2a, $80, $e2, $af, $63, $40
    db $43, $9b, $4d, $20, $c1, $a0, $00, $e5, $fc, $61, $3f, $c2, $4b, $75, $83, $40
    db $3c, $a6, $37, $ec, $0c, $47, $7e, $e3, $c2, $62, $c2, $84, $6b, $fe, $c2, $00
    db $ae, $63, $be, $a7, $3a, $b3, $48, $44, $7e, $e2, $ce, $e5, $fa, $a0, $fb, $a0
    db $80, $6e, $63, $fe, $c7, $0a, $6d, $b6, $0b, $3d, $e1, $7b, $62, $ba, $a2, $4b
    db $00, $83, $c0, $b5, $6a, $5a, $48, $00, $51, $fc, $c1, $87, $81, $06, $a5, $78
    db $a0, $00, $c1, $c2, $7c, $c5, $9e, $27, $00, $53, $6f, $23, $b9, $c4, $fb, $ed
    db $ef, $41, $00, $78, $cc, $00, $4f, $2d, $22, $f8, $61, $f7, $a6, $f7, $60, $bb
    db $e9, $a5, $23, $18, $ef, $51, $7e, $e8, $76, $a6, $6d, $0d, $7d, $40, $70, $e9
    db $f4, $63, $30, $f4, $92, $c2, $07, $f7, $a4, $75, $20, $0e, $0e, $3d, $40, $ec
    db $22, $00, $30, $81, $2e, $80, $e2, $c3, $93, $eb, $80, $67, $b6, $07, $4a, $83
    db $65, $00, $00, $c0, $e1, $6d, $21, $f2, $60, $ef, $61, $b4, $65, $80, $75, $7e
    db $e6, $c0, $e6, $c4, $ea, $23, $f3, $64, $2b, $5d, $21, $80, $79, $36, $06, $0b
    db $0b, $05, $6d, $bb, $01, $2d, $40, $e2, $74, $62, $35, $60, $b2, $a0, $2d, $e0
    db $20, $b4, $27, $aa, $11, $78, $63, $39, $21, $0a, $65, $0d, $75, $62, $2f, $63
    db $80, $b6, $67, $2d, $75, $78, $62, $7a, $43, $06, $26, $2c, $41, $ef, $40, $2b
    db $03, $6b, $4b, $27, $04, $b7, $5b, $7b, $04, $b2, $01, $e8, $03, $bc, $61, $02
    db $c1, $e2, $2b, $71, $24, $bd, $b4, $ba, $05, $b9, $02, $d7, $c1, $3f, $40, $00
    db $ea, $21, $f5, $61, $82, $e1, $f6, $46, $80, $10, $42, $c9, $7b, $24, $64, $25
    db $00, $bf, $e2, $c1, $e2, $ab, $e3, $3d, $fd, $c0, $61, $82, $c0, $4b, $27, $7e
    db $e1, $00, $c1, $e3, $14, $c7, $43, $f3, $be, $84, $cc, $24, $7e, $e8, $ff, $e2
    db $2d, $e2, $00, $f5, $44, $30, $50, $22, $84, $40, $e2, $4c, $22, $55, $a7, $48
    db $89, $78, $1e, $02, $02, $c1, $2d, $8c, $28, $66, $aa, $49, $4f, $30, $4b, $c3
    db $a1, $82, $a5, $00, $18, $af, $4a, $73, $82, $cc, $40, $e2, $0c, $49, $7e, $e9
    db $76, $1e, $00, $e4, $00, $16, $83, $c0, $fb, $c3, $ad, $7a, $28, $98, $60, $d4
    db $a6, $d6, $94, $80, $d7, $20, $c0, $23, $16, $88, $ff, $ff, $7e, $68, $44, $81
    db $4d, $00, $40, $96, $6c, $20, $cc, $f8, $80, $cb, $02, $e2, $80, $88, $43, $f6
    db $0d, $00, $00

    nop                                           ; $4353: $00

    db $3f, $a0, $a0, $a0, $dc, $dd, $de, $fa, $ff, $f4, $f5, $3f, $e4, $df, $e0, $e1
    db $e2, $e3, $fa, $ff, $f4, $f5, $3f, $ea, $e5, $e6, $e7, $e8, $e9, $fa, $ff, $f4
    db $f5, $00, $5b, $ff, $fa, $fb, $5b, $ff, $fa, $fb, $5b, $ff, $fa, $fb, $5b, $ff
    db $80, $df, $00, $55, $ff, $80, $df, $fa, $ff, $80, $df, $fa, $ff, $80, $df, $fa
    db $ff, $80, $df, $0c, $fa, $ff, $80, $da, $d6, $d7, $46, $e0, $43, $e0, $f8, $e3
    db $80, $df, $3e, $5b, $ed, $d8, $d9, $a0, $d0, $d1, $c6, $e0, $f8, $e0, $f9, $a0
    db $80, $df, $5b, $ef, $da, $db, $a0, $d2, $d3, $1e, $bd, $e0, $da, $db, $d6, $d7
    db $80, $df, $98, $c8, $47, $e3, $06, $84, $e1, $d4, $d5, $bd, $e1, $7e, $e1, $33
    db $e1, $80, $df, $98, $c1, $32, $4f, $e3, $a0, $c7, $e2, $08, $e0, $d4, $d5, $7e
    db $e1, $3b, $e0, $ec, $80, $df, $36, $a5, $da, $db, $84, $e4, $9f, $a2, $9d, $c1
    db $9f, $b7, $e2, $3b, $e1, $80, $df, $d5, $a7, $84, $e3, $9f, $9c, $0f, $46, $46
    db $9c, $9f, $3b, $e5, $76, $c6, $80, $df, $84, $e2, $1b, $9d, $9d, $c1, $e0, $46
    db $ae, $bf, $e0, $f8, $c2, $75, $c1, $d8, $f8, $c3, $80, $df, $84, $e2, $ae, $ae
    db $c1, $e0, $46, $af, $88, $bf, $e3, $f1, $c1, $f8, $c4, $a0, $00, $bc, $c9, $a2
    db $c1, $e0, $af, $ff, $af, $46, $46, $79, $7a, $7d, $af, $46, $37, $9c, $9d, $9d
    db $f8, $c0, $d4, $d5, $33, $c6, $b1, $b1, $de, $c9, $aa, $a0, $a0, $9e, $ae, $c2
    db $e0, $46, $79, $0f, $7e, $46, $7f, $7d, $7a, $e1, $f8, $c9, $b1, $b3, $c9, $a9
    db $e6, $8a, $a0, $a1, $af, $42, $e0, $c1, $e0, $46, $46, $8e, $0d, $7b, $ff, $e0
    db $7c, $7d, $b7, $c1, $33, $c6, $3d, $f0, $1e, $a5, $2c, $0b, $a1, $8a, $a0, $9e
    db $46, $42, $e0, $80, $85, $e3, $f9, $c1, $00, $79, $e0, $f8, $c3, $b1, $a1, $e7
    db $80, $b1, $ae, $c3, $a5, $13, $a1, $8a, $a0, $3f, $9e, $46, $ae, $46, $79, $8d
    db $c0, $e7, $bf, $e2, $80, $f2, $a1, $6e, $a0, $ef, $81, $b1, $ae, $f9, $45, $62
    db $e1, $05, $c2, $af, $6e, $81, $e2, $83, $89, $88, $ff, $e0, $89, $83, $7e, $e2
    db $60, $f2, $a2, $ef, $82, $9d, $a0, $80, $77, $48, $80, $d0, $d1, $c4, $a0, $fe
    db $41, $e1, $8a, $85, $45, $48, $53, $45, $85, $1f, $86, $83, $46, $83, $84, $f2
    db $a4, $28, $a3, $00, $b8, $f8, $48, $80, $fe, $c2, $01, $e1, $81, $45, $48, $60
    db $54, $7f, $44, $46, $85, $87, $88, $87, $85, $f2, $a2, $8d, $9e, $ac, $80, $d6
    db $d7, $00, $ba, $48, $80, $88, $80, $a1, $fe, $c1, $c1, $83, $84, $44, $54, $54
    db $2d, $2c, $0d, $bd, $b7, $c6, $af, $9e, $ef, $62, $80, $db, $ca, $61, $04, $a0
    db $ff, $82, $83, $83, $86, $85, $46, $45, $bd, $ff, $be, $20, $32, $43, $45, $46
    db $46, $45, $0e, $fc, $e0, $46, $46, $9e, $00, $e3, $80, $da, $ca, $60, $c5, $81
    db $fb, $85, $87, $4c, $e2, $32, $20, $20, $24, $3b, $5f, $36, $45, $46, $4a, $47
    db $bf, $e1, $a1, $28, $83, $c6, $80, $da, $d4, $d5, $86, $81, $02, $a1, $fc, $81
    db $bd, $31, $ff, $2b, $3c, $35, $35, $38, $37, $55, $61, $21, $5c, $80, $e2, $00
    db $e1, $80, $d9, $c9, $41, $9e, $c4, $82, $c2, $80, $be, $fc, $80, $51, $5f, $54
    db $3a, $35, $ff, $e0, $4a, $81, $56, $3f, $e1, $00, $e3, $00, $bd, $41, $a0, $be
    db $e4, $be, $80, $43, $9b, $5b, $39, $c0, $e0, $3c, $4f, $c0, $e2, $31, $81, $da
    db $e1, $db, $00, $bd, $c1, $a0, $c0, $81, $be, $82, $8e, $7c, $7d, $cb, $45, $36
    db $7f, $e0, $55, $80, $e2, $af, $61, $d0, $d1, $a0, $00, $56, $0c, $42, $c0, $c4
    db $7f, $83, $03, $a2, $44, $fe, $c0, $39, $05, $43, $2b, $e3, $9e, $fc, $85, $e6
    db $23, $80, $0b, $96, $42, $cd, $41, $6c, $be, $c3, $be, $84, $81, $45, $fe, $c0
    db $3a, $45, $6c, $81, $0c, $7e, $c1, $ad, $41, $d8, $d9, $e4, $20, $ab, $48, $0c
    db $47, $3e, $c8, $30, $fd, $a0, $7c, $61, $45, $a0, $fe, $c0, $3c, $44, $ec, $62
    db $37, $82, $0f, $d2, $d3, $da, $db, $e4, $20, $ab, $48, $9e, $07, $d1, $21, $f4
    db $7e, $e5, $07, $a1, $46, $ba, $a2, $37, $38, $35, $42, $00, $ed, $c3, $ad, $44
    db $27, $42, $3d, $e7, $00, $4d, $bc, $a1, $be, $40, $07, $a0, $0e, $06, $a3, $46
    db $45, $3f, $80, $a2, $7e, $e5, $de, $25, $e8, $25, $20, $00, $4b, $fc, $c1, $c1
    db $01, $b8, $a5, $fa, $ec, $9c, $ef, $40, $f4, $62, $00, $e8, $27, $9e, $0b, $cd
    db $01, $de, $c2, $79, $40, $cc, $e6, $ff, $e0, $b1, $e9, $00, $f8, $c3, $7a, $c5
    db $00, $4b, $cd, $01, $de, $c2, $f7, $40, $4c, $e7, $6a, $c5, $c0, $24, $a4, $f8
    db $c4, $25, $23, $00, $4d, $38, $64, $f7, $a4, $9c, $9d, $11, $9f, $35, $00, $e8
    db $42, $f5, $c1, $41, $75, $81, $f4, $61, $94, $02, $00, $25, $22, $80, $6b, $82
    db $e1, $36, $84, $ce, $e2, $0a, $80, $35, $00, $a8, $84, $37, $45, $36, $a6, $71
    db $80, $46, $ae, $f4, $60, $f8, $a1, $88, $80, $71, $00, $e3, $76, $43, $91, $4a
    db $82, $55, $e3, $a8, $81, $45, $2f, $36, $62, $a7, $66, $30, $80, $af, $34, $62
    db $f4, $85, $f8, $80, $6b, $1c, $41, $36, $83, $a0, $9e, $90, $46, $46, $e1, $91
    db $ca, $61, $a8, $61, $f2, $c0, $c1, $e0, $67, $a3, $68, $02, $bf, $e0, $9c, $2d
    db $e0, $72, $41, $80, $11, $9e, $03, $78, $63, $80, $e0, $7d, $90, $0c, $a1, $d6
    db $d7, $d2, $d3, $9e, $c1, $e2, $3f, $35, $35, $6c, $b7, $b8, $42, $f8, $83, $80
    db $12, $f0, $7a, $04, $78, $62, $41, $e1, $c0, $e0, $d4, $d5, $d8, $d9, $ff, $d4
    db $d5, $9e, $ae, $36, $b9, $ba, $a3, $3f, $35, $6c, $6f, $6e, $36, $45, $b6, $41
    db $37, $27, $e0, $b0, $0d, $7a, $01, $42, $e4, $8f, $a4, $48, $21, $9e, $af, $36
    db $07, $6e, $6f, $6c, $c1, $e2, $ec, $c1, $37, $28, $b0, $6d, $9a, $03, $10, $c0
    db $e3, $0d, $82, $88, $40, $ea, $21, $45, $bf, $e0, $c1, $e2, $b6, $42, $00, $38
    db $a3, $80, $6b, $7a, $67, $b8, $01, $82, $c1, $42, $c2, $29, $00, $a8, $42, $00
    db $bf, $e0, $c1, $e2, $b6, $23, $1b, $a0, $80, $0d, $7a, $05, $d0, $c1, $d0, $a2
    db $00, $82, $c0, $01, $e2, $82, $02, $7e, $e1, $c1, $e3, $82, $c2, $33, $00, $80
    db $d0, $08, $43, $e2, $d0, $c1, $02, $c2, $90, $16, $e2, $af, $a2, $6a, $83, $f6
    db $81, $06, $38, $24, $da, $db, $80, $d1, $7a, $62, $b6, $02, $02, $c1, $42, $c0
    db $00, $01, $e2, $7e, $e4, $a0, $23, $04, $c1, $43, $e6, $00, $ad, $7a, $64, $02
    db $a1, $00, $c2, $a3, $01, $e2, $65, $02, $0c, $81, $fc, $e5, $43, $e6, $80, $d0
    db $7a, $41, $00, $42, $81, $82, $a3, $01, $e2, $4f, $22, $c2, $01, $fc, $e5, $43
    db $e6, $80, $d0, $06, $04, $a3, $ae, $af, $40, $e1, $0c, $49, $e4, $65, $3d, $2d
    db $30, $4d, $04, $7a, $41, $d1, $a0, $90, $42, $a1, $bf, $e1, $0c, $45, $e8, $83
    db $e0, $83, $d8, $80, $11, $3d, $25, $00, $e2, $9e, $90, $81, $a1, $91, $90, $20
    db $00, $a2, $d5, $a6, $fa, $f2, $c3, $ad, $00, $e2, $a1, $81, $e1, $7f, $e1, $42
    db $ca, $04, $a0, $dc, $8e, $80, $d6, $04, $83, $44, $81, $91, $7f, $e0, $00, $ca
    db $04, $49, $2f, $00, $b8, $04, $84, $3d, $e1, $be, $a0, $92, $cb, $80, $0f, $00
    db $00, $00, $c1, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00
    db $01, $80, $fe, $e0, $ff, $ff, $ff, $ff, $ff, $e8, $00, $00

    nop                                           ; $4850: $00

    db $02, $00, $18, $14, $02, $01, $12, $15, $02, $02, $13, $15, $02, $03, $19, $15
    db $02, $04, $11, $16, $02, $05, $10, $17, $02, $06, $11, $18, $02, $07, $11, $1a
    db $02, $08, $26, $1c, $02, $09, $27, $1d, $02, $0a, $16, $21, $02, $0b, $17, $21
    db $02, $0c, $0f, $22, $02, $0d, $10, $23, $02, $0e, $11, $23, $02, $0f, $24, $25
    db $02, $10, $25, $26, $02, $11, $24, $27, $02, $12, $19, $2b, $02, $13, $32, $2c
    db $02, $14, $33, $2d, $02, $15, $32, $2e, $02, $16, $27, $2f, $02, $17, $27, $32
    db $02, $18, $17, $3a, $02, $19, $16, $3b, $ff, $ff, $ff, $c4, $48, $bc, $4a, $fe
    db $4c, $1e, $4d, $3f, $0d, $0d, $0d, $0e, $0e, $0e, $fa, $ff, $f4, $f7, $00, $ff
    db $ff, $ff, $ff, $ff, $ff, $f9, $f8, $5b, $ff, $f4, $f8, $a1, $ff, $ff, $ff, $00
    db $ff, $ff, $43, $ff, $fa, $ff, $80, $df, $ff, $ff, $ff, $ff, $ff, $ff, $3d, $ff
    db $00, $fa, $ff, $80, $df, $ff, $ff, $ff, $ff, $ff, $ff, $5b, $ff, $fa, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $3d, $ff, $fa, $ff, $80, $df, $ff, $ff, $ff, $ff
    db $ff, $ff, $7c, $43, $ff, $43, $e6, $2d, $0d, $2d, $2d, $2d, $80, $df, $00, $98
    db $f6, $c2, $e0, $bf, $e0, $79, $ff, $c0, $ff, $3d, $ff, $92, $c9, $48, $e2, $40
    db $c5, $e3, $bd, $e3, $80, $df, $89, $f1, $45, $e1, $3a, $c1, $0d, $3d, $ff, $00
    db $6b, $ed, $ce, $ea, $fd, $d7, $db, $ac, $90, $c0, $cb, $a0, $8a, $e1, $8e, $e4
    db $00, $f1, $e1, $ef, $e2, $7a, $d6, $8b, $ea, $54, $e1, $c0, $e2, $8a, $e5, $fe
    db $c2, $e0, $7d, $fb, $92, $c8, $4e, $a1, $d2, $e3, $8c, $e3, $4d, $0d, $0d, $07
    db $4d, $2d, $4d, $80, $df, $8c, $c5, $d8, $c1, $3e, $e5, $90, $e0, $3f, $4d, $0d
    db $6d, $0b, $0b, $4d, $bb, $c2, $3e, $e2, $60, $7a, $d0, $15, $c9, $49, $c1, $8e
    db $a2, $08, $c1, $4d, $4d, $be, $80, $0f, $6d, $0b, $2b, $0b, $be, $e1, $fb, $c3
    db $3d, $fb, $55, $e0, $b3, $6d, $4d, $ff, $e0, $fb, $e1, $2d, $0d, $fc, $e0, $4d
    db $2b, $4d, $0d, $c3, $e0, $2b, $bd, $e0, $6d, $ac, $c1, $38, $a0, $a4, $fd, $d0
    db $cf, $a7, $0d, $13, $e0, $c7, $a0, $0b, $7a, $c1, $4d, $04, $48, $e1, $b5, $e0
    db $2b, $ff, $e1, $3d, $e1, $d5, $83, $00, $b7, $24, $e2, $f0, $c0, $e1, $0d, $e0
    db $44, $e0, $f4, $e2, $2d, $0b, $0b, $6b, $1d, $6b, $be, $e0, $4b, $4b, $0b, $81
    db $a3, $bc, $da, $02, $e1, $b4, $fc, $e3, $b2, $e5, $4d, $73, $e0, $6b, $4b, $fe
    db $e0, $0b, $43, $0d, $6d, $80, $df, $b0, $66, $82, $c6, $44, $c1, $6b, $83, $e0
    db $00, $c1, $e0, $3d, $a2, $37, $92, $8d, $90, $80, $a3, $3f, $c4, $ef, $c1, $82
    db $e4, $00, $65, $a2, $ff, $ff, $97, $a3, $ba, $e6, $ef, $c1, $39, $a3, $25, $e2
    db $43, $9f, $00, $7c, $a4, $08, $a5, $31, $a7, $00, $bf, $2d, $64, $41, $a6, $c5
    db $84, $ec, $83, $00, $00, $bf, $e5, $e4, $4f, $a0, $ff, $c6, $7a, $85, $3d, $9f

    jp Jump_000_3651                              ; $4a51: $c3 $51 $36


    add [hl]                                      ; $4a54: $86
    nop                                           ; $4a55: $00
    add b                                         ; $4a56: $80
    ld a, a                                       ; $4a57: $7f
    inc bc                                        ; $4a58: $03
    ld [hl], l                                    ; $4a59: $75
    db $fd                                        ; $4a5a: $fd
    ld e, a                                       ; $4a5b: $5f
    jp $c05d                                      ; $4a5c: $c3 $5d $c0


    ei                                            ; $4a5f: $fb
    ld e, e                                       ; $4a60: $5b
    ccf                                           ; $4a61: $3f
    add b                                         ; $4a62: $80
    rra                                           ; $4a63: $1f
    rst $38                                       ; $4a64: $ff
    rst $38                                       ; $4a65: $ff
    nop                                           ; $4a66: $00
    rst $38                                       ; $4a67: $ff
    rst $38                                       ; $4a68: $ff
    rst $38                                       ; $4a69: $ff
    rst $38                                       ; $4a6a: $ff
    nop                                           ; $4a6b: $00
    cp a                                          ; $4a6c: $bf
    ld a, [$80ff]                                 ; $4a6d: $fa $ff $80
    rst $18                                       ; $4a70: $df
    rst $38                                       ; $4a71: $ff
    rst $38                                       ; $4a72: $ff
    rst $38                                       ; $4a73: $ff
    rst $38                                       ; $4a74: $ff
    rst $38                                       ; $4a75: $ff
    rst $38                                       ; $4a76: $ff
    nop                                           ; $4a77: $00
    ld b, e                                       ; $4a78: $43
    rst $38                                       ; $4a79: $ff
    ld a, [$80ff]                                 ; $4a7a: $fa $ff $80
    rst $18                                       ; $4a7d: $df
    rst $38                                       ; $4a7e: $ff
    rst $38                                       ; $4a7f: $ff
    rst $38                                       ; $4a80: $ff
    rst $38                                       ; $4a81: $ff
    rst $38                                       ; $4a82: $ff
    rst $38                                       ; $4a83: $ff
    ld e, e                                       ; $4a84: $5b
    rst $38                                       ; $4a85: $ff
    add b                                         ; $4a86: $80
    rst $18                                       ; $4a87: $df
    nop                                           ; $4a88: $00
    rst $38                                       ; $4a89: $ff
    rst $38                                       ; $4a8a: $ff
    rst $38                                       ; $4a8b: $ff
    rst $38                                       ; $4a8c: $ff
    rst $38                                       ; $4a8d: $ff
    rst $38                                       ; $4a8e: $ff
    ld b, e                                       ; $4a8f: $43
    rst $38                                       ; $4a90: $ff
    ld a, [$80ff]                                 ; $4a91: $fa $ff $80
    rst $18                                       ; $4a94: $df
    rst $38                                       ; $4a95: $ff
    rst $38                                       ; $4a96: $ff
    rst $38                                       ; $4a97: $ff
    rst $38                                       ; $4a98: $ff
    nop                                           ; $4a99: $00
    rst $38                                       ; $4a9a: $ff
    rst $38                                       ; $4a9b: $ff
    dec a                                         ; $4a9c: $3d
    rst $38                                       ; $4a9d: $ff
    ld a, [$80ff]                                 ; $4a9e: $fa $ff $80
    rst $18                                       ; $4aa1: $df
    rst $38                                       ; $4aa2: $ff
    rst $38                                       ; $4aa3: $ff
    rst $38                                       ; $4aa4: $ff
    rst $38                                       ; $4aa5: $ff
    ld b, e                                       ; $4aa6: $43
    rst $38                                       ; $4aa7: $ff
    ld a, [$00ff]                                 ; $4aa8: $fa $ff $00
    add b                                         ; $4aab: $80
    rst $18                                       ; $4aac: $df
    rst $38                                       ; $4aad: $ff
    rst $38                                       ; $4aae: $ff
    rst $38                                       ; $4aaf: $ff
    rst $38                                       ; $4ab0: $ff
    rst $38                                       ; $4ab1: $ff
    rst $38                                       ; $4ab2: $ff
    dec a                                         ; $4ab3: $3d
    rst $38                                       ; $4ab4: $ff
    ld a, [$80ff]                                 ; $4ab5: $fa $ff $80
    rlc b                                         ; $4ab8: $cb $00
    nop                                           ; $4aba: $00
    nop                                           ; $4abb: $00
    ccf                                           ; $4abc: $3f
    add hl, de                                    ; $4abd: $19

jr_070_4abe:
    add hl, de                                    ; $4abe: $19
    add hl, de                                    ; $4abf: $19
    ld h, $27                                     ; $4ac0: $26 $27
    jr z, jr_070_4abe                             ; $4ac2: $28 $fa

    rst $38                                       ; $4ac4: $ff
    db $f4                                        ; $4ac5: $f4
    push af                                       ; $4ac6: $f5
    ccf                                           ; $4ac7: $3f
    ld l, $29                                     ; $4ac8: $2e $29
    ld a, [hl+]                                   ; $4aca: $2a
    dec hl                                        ; $4acb: $2b
    inc l                                         ; $4acc: $2c
    dec l                                         ; $4acd: $2d
    ld a, [$f4ff]                                 ; $4ace: $fa $ff $f4
    push af                                       ; $4ad1: $f5
    ccf                                           ; $4ad2: $3f
    inc [hl]                                      ; $4ad3: $34
    cpl                                           ; $4ad4: $2f
    jr nc, jr_070_4b08                            ; $4ad5: $30 $31

    ld [hl-], a                                   ; $4ad7: $32
    inc sp                                        ; $4ad8: $33
    ld a, [$f4ff]                                 ; $4ad9: $fa $ff $f4
    push af                                       ; $4adc: $f5
    nop                                           ; $4add: $00
    ld e, e                                       ; $4ade: $5b
    rst $38                                       ; $4adf: $ff
    ld a, [$5bfb]                                 ; $4ae0: $fa $fb $5b
    rst $38                                       ; $4ae3: $ff
    ld a, [$5bfb]                                 ; $4ae4: $fa $fb $5b
    rst $38                                       ; $4ae7: $ff
    ld a, [$5bfb]                                 ; $4ae8: $fa $fb $5b
    rst $38                                       ; $4aeb: $ff
    add b                                         ; $4aec: $80
    rst $18                                       ; $4aed: $df
    nop                                           ; $4aee: $00
    ld d, l                                       ; $4aef: $55
    rst $38                                       ; $4af0: $ff
    add b                                         ; $4af1: $80
    rst $18                                       ; $4af2: $df
    ld a, [$80ff]                                 ; $4af3: $fa $ff $80
    rst $18                                       ; $4af6: $df
    ld a, [$80ff]                                 ; $4af7: $fa $ff $80
    rst $18                                       ; $4afa: $df
    ld a, [$80ff]                                 ; $4afb: $fa $ff $80
    rst $18                                       ; $4afe: $df
    nop                                           ; $4aff: $00
    ld a, [$80ff]                                 ; $4b00: $fa $ff $80
    rst $18                                       ; $4b03: $df
    ld a, [$80ff]                                 ; $4b04: $fa $ff $80
    rst $18                                       ; $4b07: $df

jr_070_4b08:
    ld a, [$80ff]                                 ; $4b08: $fa $ff $80
    rst $18                                       ; $4b0b: $df
    add b                                         ; $4b0c: $80
    rst $18                                       ; $4b0d: $df
    ld e, e                                       ; $4b0e: $5b
    rst $38                                       ; $4b0f: $ff
    nop                                           ; $4b10: $00
    add b                                         ; $4b11: $80
    rst $18                                       ; $4b12: $df
    ld a, [$80ff]                                 ; $4b13: $fa $ff $80
    rst $18                                       ; $4b16: $df
    ld a, [$80ff]                                 ; $4b17: $fa $ff $80
    rst $18                                       ; $4b1a: $df
    ld c, a                                       ; $4b1b: $4f
    ldh a, [$fd]                                  ; $4b1c: $f0 $fd
    db $e3                                        ; $4b1e: $e3
    add b                                         ; $4b1f: $80
    rst $18                                       ; $4b20: $df
    add b                                         ; $4b21: $80
    ld d, l                                       ; $4b22: $55
    di                                            ; $4b23: $f3
    cp a                                          ; $4b24: $bf
    db $e3                                        ; $4b25: $e3
    add b                                         ; $4b26: $80
    rst $18                                       ; $4b27: $df
    ld h, c                                       ; $4b28: $61
    ld hl, sp-$47                                 ; $4b29: $f8 $b9
    ret nz                                        ; $4b2b: $c0

    add b                                         ; $4b2c: $80
    rst $18                                       ; $4b2d: $df
    ld c, c                                       ; $4b2e: $49
    db $f4                                        ; $4b2f: $f4
    add hl, de                                    ; $4b30: $19
    rst $00                                       ; $4b31: $c7
    add hl, de                                    ; $4b32: $19
    jr nz, @+$23                                  ; $4b33: $20 $21

    dec a                                         ; $4b35: $3d
    ei                                            ; $4b36: $fb
    ld c, c                                       ; $4b37: $49
    ld sp, hl                                     ; $4b38: $f9
    call nz, Call_000_22e1                        ; $4b39: $c4 $e1 $22
    inc hl                                        ; $4b3c: $23
    ldh a, [$bc]                                  ; $4b3d: $f0 $bc
    db $e3                                        ; $4b3f: $e3
    add b                                         ; $4b40: $80
    rst $18                                       ; $4b41: $df
    sub d                                         ; $4b42: $92
    ret                                           ; $4b43: $c9


    adc d                                         ; $4b44: $8a
    pop hl                                        ; $4b45: $e1
    jr nz, jr_070_4b69                            ; $4b46: $20 $21

    ld [hl+], a                                   ; $4b48: $22
    inc hl                                        ; $4b49: $23
    ccf                                           ; $4b4a: $3f

Call_070_4b4b:
    ld a, [de]                                    ; $4b4b: $1a
    dec de                                        ; $4b4c: $1b
    inc h                                         ; $4b4d: $24
    dec h                                         ; $4b4e: $25
    ld a, [de]                                    ; $4b4f: $1a
    dec de                                        ; $4b50: $1b
    cp h                                          ; $4b51: $bc
    pop hl                                        ; $4b52: $e1
    add b                                         ; $4b53: $80
    rst $18                                       ; $4b54: $df
    ld hl, sp-$6e                                 ; $4b55: $f8 $92
    add $4d                                       ; $4b57: $c6 $4d
    ldh [$8a], a                                  ; $4b59: $e0 $8a
    pop hl                                        ; $4b5b: $e1
    ld [hl+], a                                   ; $4b5c: $22
    inc hl                                        ; $4b5d: $23
    inc h                                         ; $4b5e: $24
    dec h                                         ; $4b5f: $25
    inc e                                         ; $4b60: $1c
    ld a, a                                       ; $4b61: $7f
    dec e                                         ; $4b62: $1d
    add hl, de                                    ; $4b63: $19
    add hl, de                                    ; $4b64: $19
    inc e                                         ; $4b65: $1c
    dec e                                         ; $4b66: $1d
    inc h                                         ; $4b67: $24
    dec h                                         ; $4b68: $25

jr_070_4b69:
    add hl, sp                                    ; $4b69: $39
    db $e4                                        ; $4b6a: $e4
    ld [hl], b                                    ; $4b6b: $70
    add b                                         ; $4b6c: $80

Jump_070_4b6d:
    db $dd                                        ; $4b6d: $dd
    jp $8ae6                                      ; $4b6e: $c3 $e6 $8a


    pop hl                                        ; $4b71: $e1
    jp z, $19e0                                   ; $4b72: $ca $e0 $19

    ld e, $1f                                     ; $4b75: $1e $1f
    db $fc                                        ; $4b77: $fc
    ld [c], a                                     ; $4b78: $e2
    ret nz                                        ; $4b79: $c0

    ld a, l                                       ; $4b7a: $7d
    db $e3                                        ; $4b7b: $e3
    add b                                         ; $4b7c: $80
    rst $18                                       ; $4b7d: $df
    ld c, [hl]                                    ; $4b7e: $4e
    and b                                         ; $4b7f: $a0
    jp $8ae4                                      ; $4b80: $c3 $e4 $8a


    ldh [$ca], a                                  ; $4b83: $e0 $ca
    ldh [rNR24], a                                ; $4b85: $e0 $19
    add hl, de                                    ; $4b87: $19
    ld l, a                                       ; $4b88: $6f
    ld d, $18                                     ; $4b89: $16 $18
    inc d                                         ; $4b8b: $14
    ld d, $7d                                     ; $4b8c: $16 $7d
    db $e3                                        ; $4b8e: $e3

jr_070_4b8f:
    jr nz, @+$23                                  ; $4b8f: $20 $21

    add b                                         ; $4b91: $80
    sbc $e0                                       ; $4b92: $de $e0
    jp nc, $8aa1                                  ; $4b94: $d2 $a1 $8a

    pop hl                                        ; $4b97: $e1
    jp $86e1                                      ; $4b98: $c3 $e1 $86


    ldh [rSCX], a                                 ; $4b9b: $e0 $43
    ldh [rNR21], a                                ; $4b9d: $e0 $16
    inc de                                        ; $4b9f: $13
    ld de, $110f                                  ; $4ba0: $11 $0f $11
    inc de                                        ; $4ba3: $13
    jr jr_070_4bbc                                ; $4ba4: $18 $16

    ld a, c                                       ; $4ba6: $79
    pop hl                                        ; $4ba7: $e1
    or a                                          ; $4ba8: $b7
    pop bc                                        ; $4ba9: $c1
    add b                                         ; $4baa: $80
    jp c, $80d1                                   ; $4bab: $da $d1 $80

    pop bc                                        ; $4bae: $c1
    ld d, $94                                     ; $4baf: $16 $94
    ldh [$fb], a                                  ; $4bb1: $e0 $fb
    pop hl                                        ; $4bb3: $e1
    ld c, c                                       ; $4bb4: $49
    pop hl                                        ; $4bb5: $e1
    ld b, e                                       ; $4bb6: $43
    pop hl                                        ; $4bb7: $e1
    pop bc                                        ; $4bb8: $c1
    ldh [rNR10], a                                ; $4bb9: $e0 $10
    db $10                                        ; $4bbb: $10

jr_070_4bbc:
    ld [c], a                                     ; $4bbc: $e2
    cp [hl]                                       ; $4bbd: $be
    ldh [rNR21], a                                ; $4bbe: $e0 $16
    ld a, $e0                                     ; $4bc0: $3e $e0
    and a                                         ; $4bc2: $a7
    ld [c], a                                     ; $4bc3: $e2
    add b                                         ; $4bc4: $80
    reti                                          ; $4bc5: $d9


    add hl, de                                    ; $4bc6: $19
    ld d, $14                                     ; $4bc7: $16 $14
    ld l, a                                       ; $4bc9: $6f
    inc de                                        ; $4bca: $13
    inc de                                        ; $4bcb: $13
    inc d                                         ; $4bcc: $14
    inc d                                         ; $4bcd: $14
    ei                                            ; $4bce: $fb
    ld [c], a                                     ; $4bcf: $e2
    ld d, $16                                     ; $4bd0: $16 $16
    db $fc                                        ; $4bd2: $fc
    ldh [rIE], a                                  ; $4bd3: $e0 $ff
    add hl, de                                    ; $4bd5: $19
    add hl, de                                    ; $4bd6: $19
    rla                                           ; $4bd7: $17
    ld de, $0312                                  ; $4bd8: $11 $12 $03
    inc bc                                        ; $4bdb: $03
    ld [$1207], sp                                ; $4bdc: $08 $07 $12
    ld de, $3115                                  ; $4bdf: $11 $15 $31
    pop hl                                        ; $4be2: $e1
    or a                                          ; $4be3: $b7
    or e                                          ; $4be4: $b3
    jr jr_070_4b8f                                ; $4be5: $18 $a8

    call z, $c2e0                                 ; $4be7: $cc $e0 $c2
    ldh [$cd], a                                  ; $4bea: $e0 $cd
    ld de, $e0bc                                  ; $4bec: $11 $bc $e0
    inc de                                        ; $4bef: $13
    inc de                                        ; $4bf0: $13
    ld c, b                                       ; $4bf1: $48
    pop hl                                        ; $4bf2: $e1
    or l                                          ; $4bf3: $b5
    ldh [rNR10], a                                ; $4bf4: $e0 $10
    dec b                                         ; $4bf6: $05
    ccf                                           ; $4bf7: $3f
    nop                                           ; $4bf8: $00
    nop                                           ; $4bf9: $00
    nop                                           ; $4bfa: $00
    dec b                                         ; $4bfb: $05
    db $10                                        ; $4bfc: $10
    inc de                                        ; $4bfd: $13
    ld a, $e0                                     ; $4bfe: $3e $e0
    or a                                          ; $4c00: $b7
    and c                                         ; $4c01: $a1
    ld b, h                                       ; $4c02: $44
    nop                                           ; $4c03: $00
    or a                                          ; $4c04: $b7
    rst $10                                       ; $4c05: $d7
    add [hl]                                      ; $4c06: $86
    ld d, $d0                                     ; $4c07: $16 $d0
    pop bc                                        ; $4c09: $c1
    or [hl]                                       ; $4c0a: $b6
    ld [c], a                                     ; $4c0b: $e2
    or l                                          ; $4c0c: $b5
    ldh [rNR11], a                                ; $4c0d: $e0 $11
    ret nz                                        ; $4c0f: $c0

    db $e4                                        ; $4c10: $e4
    add e                                         ; $4c11: $83
    ld de, $b717                                  ; $4c12: $11 $17 $b7
    and c                                         ; $4c15: $a1
    add b                                         ; $4c16: $80
    reti                                          ; $4c17: $d9


    ld c, [hl]                                    ; $4c18: $4e
    xor b                                         ; $4c19: $a8
    adc b                                         ; $4c1a: $88
    jp nz, $e370                                  ; $4c1b: $c2 $70 $e3

    inc de                                        ; $4c1e: $13
    scf                                           ; $4c1f: $37
    ld de, $0604                                  ; $4c20: $11 $04 $06
    ld b, b                                       ; $4c23: $40
    pop hl                                        ; $4c24: $e1
    inc de                                        ; $4c25: $13
    ld d, $b7                                     ; $4c26: $16 $b7
    and c                                         ; $4c28: $a1
    nop                                           ; $4c29: $00
    cp a                                          ; $4c2a: $bf
    ld [hl], b                                    ; $4c2b: $70
    adc h                                         ; $4c2c: $8c
    ld h, b                                       ; $4c2d: $60
    db $10                                        ; $4c2e: $10
    and b                                         ; $4c2f: $a0
    ld b, l                                       ; $4c30: $45
    jp $c242                                      ; $4c31: $c3 $42 $c2


    inc de                                        ; $4c34: $13
    db $10                                        ; $4c35: $10
    ld c, $c0                                     ; $4c36: $0e $c0
    jp $0000                                      ; $4c38: $c3 $00 $00


    db $e4                                        ; $4c3b: $e4
    nop                                           ; $4c3c: $00
    cp a                                          ; $4c3d: $bf
    db $10                                        ; $4c3e: $10
    and b                                         ; $4c3f: $a0
    ld b, l                                       ; $4c40: $45
    jp $a2ff                                      ; $4c41: $c3 $ff $a2


    cp c                                          ; $4c44: $b9
    ret nz                                        ; $4c45: $c0

    rst $28                                       ; $4c46: $ef
    ret nz                                        ; $4c47: $c0

    add d                                         ; $4c48: $82
    ldh [$30], a                                  ; $4c49: $e0 $30
    nop                                           ; $4c4b: $00
    db $e3                                        ; $4c4c: $e3
    add b                                         ; $4c4d: $80
    jp c, Jump_070_6392                           ; $4c4e: $da $92 $63

    adc d                                         ; $4c51: $8a
    and c                                         ; $4c52: $a1
    jr nz, jr_070_4c76                            ; $4c53: $20 $21

    adc b                                         ; $4c55: $88
    and b                                         ; $4c56: $a0
    rst $38                                       ; $4c57: $ff
    and e                                         ; $4c58: $a3
    nop                                           ; $4c59: $00
    cp l                                          ; $4c5a: $bd
    pop hl                                        ; $4c5b: $e1
    add d                                         ; $4c5c: $82
    db $e3                                        ; $4c5d: $e3
    nop                                           ; $4c5e: $00
    jp nz, Jump_070_7f80                          ; $4c5f: $c2 $80 $7f

    ret                                           ; $4c62: $c9


    ld b, c                                       ; $4c63: $41
    adc h                                         ; $4c64: $8c
    add b                                         ; $4c65: $80
    ld c, c                                       ; $4c66: $49
    add b                                         ; $4c67: $80
    cp d                                          ; $4c68: $ba
    ld [c], a                                     ; $4c69: $e2
    nop                                           ; $4c6a: $00
    ld a, c                                       ; $4c6b: $79
    and e                                         ; $4c6c: $a3
    add d                                         ; $4c6d: $82
    pop bc                                        ; $4c6e: $c1
    ld sp, $80a1                                  ; $4c6f: $31 $a1 $80
    ld a, a                                       ; $4c72: $7f
    adc h                                         ; $4c73: $8c
    ld h, d                                       ; $4c74: $62
    ret nc                                        ; $4c75: $d0

jr_070_4c76:
    add b                                         ; $4c76: $80
    ld c, c                                       ; $4c77: $49
    add b                                         ; $4c78: $80
    cp d                                          ; $4c79: $ba
    ld [c], a                                     ; $4c7a: $e2
    nop                                           ; $4c7b: $00
    ld a, c                                       ; $4c7c: $79
    and d                                         ; $4c7d: $a2
    xor a                                         ; $4c7e: $af
    add h                                         ; $4c7f: $84
    nop                                           ; $4c80: $00
    cp a                                          ; $4c81: $bf
    adc h                                         ; $4c82: $8c
    ld h, a                                       ; $4c83: $67
    adc l                                         ; $4c84: $8d
    add b                                         ; $4c85: $80
    cp d                                          ; $4c86: $ba
    db $e3                                        ; $4c87: $e3
    inc [hl]                                      ; $4c88: $34
    pop hl                                        ; $4c89: $e1
    xor a                                         ; $4c8a: $af
    add d                                         ; $4c8b: $82
    nop                                           ; $4c8c: $00
    ld a, d                                       ; $4c8d: $7a
    ld [hl], h                                    ; $4c8e: $74
    ld e, $5a                                     ; $4c8f: $1e $5a
    ld [hl], a                                    ; $4c91: $77
    db $e3                                        ; $4c92: $e3
    db $ec                                        ; $4c93: $ec
    add e                                         ; $4c94: $83
    add b                                         ; $4c95: $80
    ld a, a                                       ; $4c96: $7f
    jp $c452                                      ; $4c97: $c3 $52 $c4


    db $e3                                        ; $4c9a: $e3
    add b                                         ; $4c9b: $80
    ld a, a                                       ; $4c9c: $7f
    nop                                           ; $4c9d: $00
    jp $bd57                                      ; $4c9e: $c3 $57 $bd


    ld e, e                                       ; $4ca1: $5b
    ld e, e                                       ; $4ca2: $5b
    ccf                                           ; $4ca3: $3f
    add b                                         ; $4ca4: $80
    rra                                           ; $4ca5: $1f
    ld d, l                                       ; $4ca6: $55
    ccf                                           ; $4ca7: $3f
    nop                                           ; $4ca8: $00
    ld e, a                                       ; $4ca9: $5f
    ld a, [$00ff]                                 ; $4caa: $fa $ff $00
    ld e, a                                       ; $4cad: $5f
    nop                                           ; $4cae: $00
    ld a, [$80ff]                                 ; $4caf: $fa $ff $80
    rst $18                                       ; $4cb2: $df
    ld a, [$80ff]                                 ; $4cb3: $fa $ff $80
    rst $18                                       ; $4cb6: $df
    ld a, [$80ff]                                 ; $4cb7: $fa $ff $80
    rst $18                                       ; $4cba: $df
    ld a, [$80ff]                                 ; $4cbb: $fa $ff $80
    rst $18                                       ; $4cbe: $df
    nop                                           ; $4cbf: $00
    ld a, [$80ff]                                 ; $4cc0: $fa $ff $80
    rst $18                                       ; $4cc3: $df
    add b                                         ; $4cc4: $80
    rst $18                                       ; $4cc5: $df
    ld e, e                                       ; $4cc6: $5b
    rst $38                                       ; $4cc7: $ff
    add b                                         ; $4cc8: $80
    rst $18                                       ; $4cc9: $df
    ld a, [$80ff]                                 ; $4cca: $fa $ff $80
    rst $18                                       ; $4ccd: $df
    ld a, [$00ff]                                 ; $4cce: $fa $ff $00
    add b                                         ; $4cd1: $80
    rst $18                                       ; $4cd2: $df
    ld a, [$80ff]                                 ; $4cd3: $fa $ff $80
    rst $18                                       ; $4cd6: $df
    ld a, [$80ff]                                 ; $4cd7: $fa $ff $80
    rst $18                                       ; $4cda: $df
    ld a, [$80ff]                                 ; $4cdb: $fa $ff $80
    rst $18                                       ; $4cde: $df
    ld a, [$00ff]                                 ; $4cdf: $fa $ff $00
    add b                                         ; $4ce2: $80
    rst $18                                       ; $4ce3: $df
    ld a, [$5bff]                                 ; $4ce4: $fa $ff $5b
    rst $38                                       ; $4ce7: $ff
    add b                                         ; $4ce8: $80
    rst $18                                       ; $4ce9: $df
    ld d, l                                       ; $4cea: $55
    rst $38                                       ; $4ceb: $ff
    add b                                         ; $4cec: $80
    rst $18                                       ; $4ced: $df
    ld a, [$80ff]                                 ; $4cee: $fa $ff $80
    rst $18                                       ; $4cf1: $df
    nop                                           ; $4cf2: $00
    ld a, [$80ff]                                 ; $4cf3: $fa $ff $80
    rst $18                                       ; $4cf6: $df
    ld a, [$e8ff]                                 ; $4cf7: $fa $ff $e8
    db $eb                                        ; $4cfa: $eb
    nop                                           ; $4cfb: $00
    nop                                           ; $4cfc: $00
    nop                                           ; $4cfd: $00
    ld sp, hl                                     ; $4cfe: $f9
    nop                                           ; $4cff: $00
    rst $38                                       ; $4d00: $ff
    rst $38                                       ; $4d01: $ff
    xor $ed                                       ; $4d02: $ee $ed
    ld d, $10                                     ; $4d04: $16 $10
    rla                                           ; $4d06: $17
    ld h, $20                                     ; $4d07: $26 $20
    rrca                                          ; $4d09: $0f
    daa                                           ; $4d0a: $27
    jr nc, jr_070_4d43                            ; $4d0b: $30 $36

    scf                                           ; $4d0d: $37
    push de                                       ; $4d0e: $d5
    rst $38                                       ; $4d0f: $ff
    rst $38                                       ; $4d10: $ff
    rst $38                                       ; $4d11: $ff
    rst $38                                       ; $4d12: $ff
    rst $38                                       ; $4d13: $ff
    rst $38                                       ; $4d14: $ff
    rst $38                                       ; $4d15: $ff
    nop                                           ; $4d16: $00
    rst $38                                       ; $4d17: $ff
    rst $38                                       ; $4d18: $ff
    rst $38                                       ; $4d19: $ff
    rst $30                                       ; $4d1a: $f7
    nop                                           ; $4d1b: $00
    nop                                           ; $4d1c: $00
    nop                                           ; $4d1d: $00
    rst $38                                       ; $4d1e: $ff
    rst $38                                       ; $4d1f: $ff
    rst $38                                       ; $4d20: $ff
    add hl, hl                                    ; $4d21: $29
    ld c, l                                       ; $4d22: $4d
    add e                                         ; $4d23: $83
    ld d, c                                       ; $4d24: $51
    ld a, [c]                                     ; $4d25: $f2
    ld d, a                                       ; $4d26: $57
    dec c                                         ; $4d27: $0d
    ld e, b                                       ; $4d28: $58
    rrca                                          ; $4d29: $0f
    dec c                                         ; $4d2a: $0d
    ld c, $0e                                     ; $4d2b: $0e $0e
    ld c, $fc                                     ; $4d2d: $0e $fc
    jp hl                                         ; $4d2f: $e9


    ld a, [c]                                     ; $4d30: $f2
    ldh [rIE], a                                  ; $4d31: $e0 $ff
    ldh [$fa], a                                  ; $4d33: $e0 $fa
    pop hl                                        ; $4d35: $e1
    nop                                           ; $4d36: $00
    add sp, -$1e                                  ; $4d37: $e8 $e2
    or $e5                                        ; $4d39: $f6 $e5
    db $ed                                        ; $4d3b: $ed
    pop hl                                        ; $4d3c: $e1
    ret c                                         ; $4d3d: $d8

    ld [$e7d0], a                                 ; $4d3e: $ea $d0 $e7
    ei                                            ; $4d41: $fb
    db $ed                                        ; $4d42: $ed

jr_070_4d43:
    jp z, $ddea                                   ; $4d43: $ca $ea $dd

    db $e4                                        ; $4d46: $e4
    ld l, b                                       ; $4d47: $68
    ld hl, sp-$1b                                 ; $4d48: $f8 $e5
    rst $38                                       ; $4d4a: $ff
    rst $38                                       ; $4d4b: $ff
    adc d                                         ; $4d4c: $8a
    rst $20                                       ; $4d4d: $e7
    ld c, l                                       ; $4d4e: $4d
    rst $38                                       ; $4d4f: $ff
    pop hl                                        ; $4d50: $e1
    dec l                                         ; $4d51: $2d
    dec l                                         ; $4d52: $2d
    cp b                                          ; $4d53: $b8
    ld [$ffd8], a                                 ; $4d54: $ea $d8 $ff
    rst $38                                       ; $4d57: $ff
    inc a                                         ; $4d58: $3c
    ld [c], a                                     ; $4d59: $e2
    dec a                                         ; $4d5a: $3d
    ldh [$6d], a                                  ; $4d5b: $e0 $6d
    dec bc                                        ; $4d5d: $0b
    rst $38                                       ; $4d5e: $ff
    db $e3                                        ; $4d5f: $e3
    ld c, l                                       ; $4d60: $4d
    dec l                                         ; $4d61: $2d
    ld c, b                                       ; $4d62: $48
    add d                                         ; $4d63: $82
    db $fd                                        ; $4d64: $fd
    cp $ca                                        ; $4d65: $fe $ca
    inc de                                        ; $4d67: $13
    db $e4                                        ; $4d68: $e4
    ld c, l                                       ; $4d69: $4d
    pop bc                                        ; $4d6a: $c1
    ldh [$f8], a                                  ; $4d6b: $e0 $f8
    pop bc                                        ; $4d6d: $c1
    dec c                                         ; $4d6e: $0d
    cp a                                          ; $4d6f: $bf
    pop hl                                        ; $4d70: $e1
    ld [hl], b                                    ; $4d71: $70
    ld [hl], l                                    ; $4d72: $75
    ldh [$fe], a                                  ; $4d73: $e0 $fe
    rst $18                                       ; $4d75: $df
    ld [bc], a                                    ; $4d76: $02
    jp hl                                         ; $4d77: $e9


    add h                                         ; $4d78: $84
    ld [c], a                                     ; $4d79: $e2
    dec c                                         ; $4d7a: $0d
    dec c                                         ; $4d7b: $0d
    dec hl                                        ; $4d7c: $2b
    cp h                                          ; $4d7d: $bc
    pop hl                                        ; $4d7e: $e1
    add b                                         ; $4d7f: $80
    ld a, [hl]                                    ; $4d80: $7e
    ldh [$3b], a                                  ; $4d81: $e0 $3b
    ldh [rOBP0], a                                ; $4d83: $e0 $48
    rst $38                                       ; $4d85: $ff
    jp nz, $45c6                                  ; $4d86: $c2 $c6 $45

    ldh [$8a], a                                  ; $4d89: $e0 $8a
    ldh [$c6], a                                  ; $4d8b: $e0 $c6
    ld [c], a                                     ; $4d8d: $e2
    dec bc                                        ; $4d8e: $0b
    dec b                                         ; $4d8f: $05
    dec hl                                        ; $4d90: $2b
    cp a                                          ; $4d91: $bf
    pop hl                                        ; $4d92: $e1
    ld c, e                                       ; $4d93: $4b
    ld a, h                                       ; $4d94: $7c
    ld [c], a                                     ; $4d95: $e2
    add $ff                                       ; $4d96: $c6 $ff
    ret nz                                        ; $4d98: $c0

    and $4a                                       ; $4d99: $e6 $4a
    pop hl                                        ; $4d9b: $e1
    add d                                         ; $4d9c: $82
    ldh [$0e], a                                  ; $4d9d: $e0 $0e
    add c                                         ; $4d9f: $81
    ldh [rOCPD], a                                ; $4da0: $e0 $6b
    ld a, [bc]                                    ; $4da2: $0a
    dec bc                                        ; $4da3: $0b
    ret nz                                        ; $4da4: $c0

    ldh [$bd], a                                  ; $4da5: $e0 $bd
    ldh [$fa], a                                  ; $4da7: $e0 $fa
    pop bc                                        ; $4da9: $c1
    ld [bc], a                                    ; $4daa: $02
    rst $38                                       ; $4dab: $ff
    db $fc                                        ; $4dac: $fc
    ld b, $c5                                     ; $4dad: $06 $c5
    ld b, d                                       ; $4daf: $42
    db $e3                                        ; $4db0: $e3
    ld c, e                                       ; $4db1: $4b
    ld c, e                                       ; $4db2: $4b
    ld l, e                                       ; $4db3: $6b
    ld a, [bc]                                    ; $4db4: $0a
    ld a, [hl+]                                   ; $4db5: $2a
    ld a, [bc]                                    ; $4db6: $0a
    add b                                         ; $4db7: $80
    or h                                          ; $4db8: $b4
    pop hl                                        ; $4db9: $e1
    cp e                                          ; $4dba: $bb
    ldh [$fb], a                                  ; $4dbb: $e0 $fb
    ret nz                                        ; $4dbd: $c0

    cp $d3                                        ; $4dbe: $fe $d3
    ld b, d                                       ; $4dc0: $42
    db $ed                                        ; $4dc1: $ed
    or d                                          ; $4dc2: $b2
    and b                                         ; $4dc3: $a0
    adc $e2                                       ; $4dc4: $ce $e2
    dec c                                         ; $4dc6: $0d
    ccf                                           ; $4dc7: $3f
    ld l, e                                       ; $4dc8: $6b
    ld c, e                                       ; $4dc9: $4b
    dec hl                                        ; $4dca: $2b
    ld a, [bc]                                    ; $4dcb: $0a
    ld a, [bc]                                    ; $4dcc: $0a
    ld a, [bc]                                    ; $4dcd: $0a
    add e                                         ; $4dce: $83
    ldh [$f4], a                                  ; $4dcf: $e0 $f4
    pop bc                                        ; $4dd1: $c1
    ld hl, sp-$40                                 ; $4dd2: $f8 $c0
    db $e3                                        ; $4dd4: $e3
    ld b, d                                       ; $4dd5: $42
    rst $38                                       ; $4dd6: $ff
    ret nz                                        ; $4dd7: $c0

    rst $20                                       ; $4dd8: $e7
    dec bc                                        ; $4dd9: $0b
    dec hl                                        ; $4dda: $2b
    ld c, e                                       ; $4ddb: $4b
    ld l, e                                       ; $4ddc: $6b
    ld a, [hl+]                                   ; $4ddd: $2a
    rla                                           ; $4dde: $17
    ld a, [hl+]                                   ; $4ddf: $2a
    ld c, e                                       ; $4de0: $4b
    dec l                                         ; $4de1: $2d
    ret nz                                        ; $4de2: $c0

    ld [c], a                                     ; $4de3: $e2
    dec bc                                        ; $4de4: $0b
    add b                                         ; $4de5: $80
    ldh [$91], a                                  ; $4de6: $e0 $91
    or l                                          ; $4de8: $b5
    ret nz                                        ; $4de9: $c0

    rst $08                                       ; $4dea: $cf
    cp $82                                        ; $4deb: $fe $82
    call nz, Call_070_4b4b                        ; $4ded: $c4 $4b $4b
    dec bc                                        ; $4df0: $0b
    ld c, e                                       ; $4df1: $4b
    dec l                                         ; $4df2: $2d
    dec l                                         ; $4df3: $2d
    dec l                                         ; $4df4: $2d
    db $10                                        ; $4df5: $10
    ret nz                                        ; $4df6: $c0

    cp $02                                        ; $4df7: $fe $02
    db $ed                                        ; $4df9: $ed
    ld b, d                                       ; $4dfa: $42
    call nz, $c083                                ; $4dfb: $c4 $83 $c0
    dec bc                                        ; $4dfe: $0b
    pop bc                                        ; $4dff: $c1
    ldh [$80], a                                  ; $4e00: $e0 $80
    db $e4                                        ; $4e02: $e4
    cp c                                          ; $4e03: $b9
    and e                                         ; $4e04: $a3
    ld b, h                                       ; $4e05: $44
    cp $dc                                        ; $4e06: $fe $dc
    ret z                                         ; $4e08: $c8

    add d                                         ; $4e09: $82
    ld l, l                                       ; $4e0a: $6d
    rst $00                                       ; $4e0b: $c7
    and c                                         ; $4e0c: $a1
    ld b, l                                       ; $4e0d: $45
    pop bc                                        ; $4e0e: $c1
    ld c, d                                       ; $4e0f: $4a
    pop hl                                        ; $4e10: $e1
    dec l                                         ; $4e11: $2d
    push af                                       ; $4e12: $f5
    jp nz, $b920                                  ; $4e13: $c2 $20 $b9

    and h                                         ; $4e16: $a4
    ld a, $fe                                     ; $4e17: $3e $fe
    add [hl]                                      ; $4e19: $86
    add c                                         ; $4e1a: $81
    pop bc                                        ; $4e1b: $c1
    ld [c], a                                     ; $4e1c: $e2
    add d                                         ; $4e1d: $82
    pop hl                                        ; $4e1e: $e1
    ld c, e                                       ; $4e1f: $4b
    rst $38                                       ; $4e20: $ff
    ldh [$b8], a                                  ; $4e21: $e0 $b8
    and e                                         ; $4e23: $a3
    ld b, [hl]                                    ; $4e24: $46
    or d                                          ; $4e25: $b2
    pop bc                                        ; $4e26: $c1
    dec bc                                        ; $4e27: $0b
    dec c                                         ; $4e28: $0d
    scf                                           ; $4e29: $37
    and d                                         ; $4e2a: $a2
    ld [bc], a                                    ; $4e2b: $02
    rst $38                                       ; $4e2c: $ff
    call nc, $2de2                                ; $4e2d: $d4 $e2 $2d
    ld [bc], a                                    ; $4e30: $02
    ret nz                                        ; $4e31: $c0

    add b                                         ; $4e32: $80
    ret nz                                        ; $4e33: $c0

    pop hl                                        ; $4e34: $e1
    ld a, e                                       ; $4e35: $7b
    pop hl                                        ; $4e36: $e1
    ld b, d                                       ; $4e37: $42
    pop bc                                        ; $4e38: $c1
    dec [hl]                                      ; $4e39: $35
    and d                                         ; $4e3a: $a2
    ret nz                                        ; $4e3b: $c0

    di                                            ; $4e3c: $f3
    inc b                                         ; $4e3d: $04
    adc l                                         ; $4e3e: $8d
    ld c, l                                       ; $4e3f: $4d
    and d                                         ; $4e40: $a2
    dec c                                         ; $4e41: $0d
    inc bc                                        ; $4e42: $03
    dec l                                         ; $4e43: $2d
    dec bc                                        ; $4e44: $0b
    add c                                         ; $4e45: $81
    pop hl                                        ; $4e46: $e1
    ld a, a                                       ; $4e47: $7f
    ld [c], a                                     ; $4e48: $e2
    add c                                         ; $4e49: $81
    db $e4                                        ; $4e4a: $e4
    xor e                                         ; $4e4b: $ab
    pop hl                                        ; $4e4c: $e1
    db $fc                                        ; $4e4d: $fc
    or c                                          ; $4e4e: $b1
    add b                                         ; $4e4f: $80
    pop af                                        ; $4e50: $f1
    inc a                                         ; $4e51: $3c
    add c                                         ; $4e52: $81
    ldh [$c1], a                                  ; $4e53: $e0 $c1
    ld [c], a                                     ; $4e55: $e2
    dec hl                                        ; $4e56: $2b
    dec bc                                        ; $4e57: $0b
    ld a, [bc]                                    ; $4e58: $0a
    ld l, d                                       ; $4e59: $6a
    ld bc, $bce4                                  ; $4e5a: $01 $e4 $bc
    and b                                         ; $4e5d: $a0
    pop bc                                        ; $4e5e: $c1
    ld l, l                                       ; $4e5f: $6d
    xor l                                         ; $4e60: $ad
    ld h, h                                       ; $4e61: $64
    ld b, h                                       ; $4e62: $44
    cp e                                          ; $4e63: $bb
    adc c                                         ; $4e64: $89
    add b                                         ; $4e65: $80
    ld c, e                                       ; $4e66: $4b
    ret nz                                        ; $4e67: $c0

    ret nz                                        ; $4e68: $c0

    db $e3                                        ; $4e69: $e3
    ld c, e                                       ; $4e6a: $4b
    ld a, [bc]                                    ; $4e6b: $0a
    rrca                                          ; $4e6c: $0f
    ld c, d                                       ; $4e6d: $4a
    ld a, [hl+]                                   ; $4e6e: $2a
    dec bc                                        ; $4e6f: $0b
    dec hl                                        ; $4e70: $2b
    ret nz                                        ; $4e71: $c0

    db $e4                                        ; $4e72: $e4
    ld a, [hl]                                    ; $4e73: $7e
    and c                                         ; $4e74: $a1
    ret nz                                        ; $4e75: $c0

    rst $38                                       ; $4e76: $ff
    ld d, d                                       ; $4e77: $52
    add c                                         ; $4e78: $81
    ld l, a                                       ; $4e79: $6f
    dec l                                         ; $4e7a: $2d
    dec l                                         ; $4e7b: $2d
    ld l, e                                       ; $4e7c: $6b
    ld l, e                                       ; $4e7d: $6b
    ret nz                                        ; $4e7e: $c0

    db $e4                                        ; $4e7f: $e4
    ld a, [bc]                                    ; $4e80: $0a
    dec hl                                        ; $4e81: $2b
    pop bc                                        ; $4e82: $c1
    add b                                         ; $4e83: $80
    or b                                          ; $4e84: $b0
    ret nz                                        ; $4e85: $c0

    push hl                                       ; $4e86: $e5
    pop hl                                        ; $4e87: $e1
    ld h, [hl]                                    ; $4e88: $66
    nop                                           ; $4e89: $00
    sub $03                                       ; $4e8a: $d6 $03
    and h                                         ; $4e8c: $a4
    dec bc                                        ; $4e8d: $0b
    ld l, e                                       ; $4e8e: $6b
    ld bc, $6be2                                  ; $4e8f: $01 $e2 $6b
    rlca                                          ; $4e92: $07
    ld c, e                                       ; $4e93: $4b
    ld a, [hl+]                                   ; $4e94: $2a
    ld a, [bc]                                    ; $4e95: $0a
    cp d                                          ; $4e96: $ba
    ld h, d                                       ; $4e97: $62
    ld sp, $76a1                                  ; $4e98: $31 $a1 $76
    and b                                         ; $4e9b: $a0
    add hl, sp                                    ; $4e9c: $39
    ld h, h                                       ; $4e9d: $64
    cp $55                                        ; $4e9e: $fe $55
    ld [bc], a                                    ; $4ea0: $02

Call_070_4ea1:
    ret nz                                        ; $4ea1: $c0

    add sp, $0b                                   ; $4ea2: $e8 $0b
    add b                                         ; $4ea4: $80
    pop hl                                        ; $4ea5: $e1
    add b                                         ; $4ea6: $80
    add c                                         ; $4ea7: $81
    cp e                                          ; $4ea8: $bb
    jp $e2c0                                      ; $4ea9: $c3 $c0 $e2


    ld b, b                                       ; $4eac: $40
    rst $18                                       ; $4ead: $df
    call nz, Call_000_0c69                        ; $4eae: $c4 $69 $0c
    add b                                         ; $4eb1: $80
    jp nz, $81fa                                  ; $4eb2: $c2 $fa $81

    dec hl                                        ; $4eb5: $2b
    ld l, e                                       ; $4eb6: $6b
    ret nz                                        ; $4eb7: $c0

    pop hl                                        ; $4eb8: $e1
    or a                                          ; $4eb9: $b7
    ld h, c                                       ; $4eba: $61
    ld [hl], a                                    ; $4ebb: $77
    ld h, c                                       ; $4ebc: $61
    call nz, Call_000_127f                        ; $4ebd: $c4 $7f $12
    ld b, e                                       ; $4ec0: $43
    and h                                         ; $4ec1: $a4
    dec bc                                        ; $4ec2: $0b
    ccf                                           ; $4ec3: $3f
    ret nz                                        ; $4ec4: $c0

    ld c, b                                       ; $4ec5: $48
    add b                                         ; $4ec6: $80
    dec hl                                        ; $4ec7: $2b
    ret nz                                        ; $4ec8: $c0

    pop hl                                        ; $4ec9: $e1
    rst $28                                       ; $4eca: $ef
    ld h, h                                       ; $4ecb: $64
    cp d                                          ; $4ecc: $ba
    ld [hl], e                                    ; $4ecd: $73
    nop                                           ; $4ece: $00
    ld b, $67                                     ; $4ecf: $06 $67
    ld hl, sp+$20                                 ; $4ed1: $f8 $20
    add hl, bc                                    ; $4ed3: $09
    ld h, l                                       ; $4ed4: $65
    call nz, $8481                                ; $4ed5: $c4 $81 $84
    ld h, b                                       ; $4ed8: $60
    add b                                         ; $4ed9: $80
    ld h, b                                       ; $4eda: $60
    cp b                                          ; $4edb: $b8
    and c                                         ; $4edc: $a1
    cp [hl]                                       ; $4edd: $be
    and d                                         ; $4ede: $a2
    jr nz, jr_070_4f5c                            ; $4edf: $20 $7b

    pop hl                                        ; $4ee1: $e1
    dec sp                                        ; $4ee2: $3b
    add l                                         ; $4ee3: $85
    ld [bc], a                                    ; $4ee4: $02
    or l                                          ; $4ee5: $b5
    adc h                                         ; $4ee6: $8c
    ld b, c                                       ; $4ee7: $41
    ld b, h                                       ; $4ee8: $44
    and d                                         ; $4ee9: $a2
    dec hl                                        ; $4eea: $2b
    add [hl]                                      ; $4eeb: $86
    and b                                         ; $4eec: $a0
    add e                                         ; $4eed: $83
    and c                                         ; $4eee: $a1
    add b                                         ; $4eef: $80
    add c                                         ; $4ef0: $81
    ldh [$79], a                                  ; $4ef1: $e0 $79
    ld h, b                                       ; $4ef3: $60
    cp [hl]                                       ; $4ef4: $be
    and l                                         ; $4ef5: $a5
    ld a, l                                       ; $4ef6: $7d
    call nz, Call_070_5608                        ; $4ef7: $c4 $08 $56
    ld [$d761], sp                                ; $4efa: $08 $61 $d7
    db $e3                                        ; $4efd: $e3
    ld c, e                                       ; $4efe: $4b
    nop                                           ; $4eff: $00
    ld c, b                                       ; $4f00: $48
    ldh [rSB], a                                  ; $4f01: $e0 $01
    db $e4                                        ; $4f03: $e4
    cp e                                          ; $4f04: $bb
    ld b, d                                       ; $4f05: $42
    cp [hl]                                       ; $4f06: $be
    and [hl]                                      ; $4f07: $a6
    ret z                                         ; $4f08: $c8

    ld a, [hl-]                                   ; $4f09: $3a
    ld e, b                                       ; $4f0a: $58
    and e                                         ; $4f0b: $a3
    adc c                                         ; $4f0c: $89
    pop hl                                        ; $4f0d: $e1
    ld c, c                                       ; $4f0e: $49
    ld [c], a                                     ; $4f0f: $e2
    ld [bc], a                                    ; $4f10: $02
    rst $38                                       ; $4f11: $ff
    ret nz                                        ; $4f12: $c0

    ld l, e                                       ; $4f13: $6b
    ld a, a                                       ; $4f14: $7f
    push hl                                       ; $4f15: $e5
    ccf                                           ; $4f16: $3f
    ld h, c                                       ; $4f17: $61
    inc a                                         ; $4f18: $3c
    ld h, c                                       ; $4f19: $61
    cp $56                                        ; $4f1a: $fe $56
    ld e, d                                       ; $4f1c: $5a
    and [hl]                                      ; $4f1d: $a6
    ld b, l                                       ; $4f1e: $45
    add c                                         ; $4f1f: $81
    ld b, $c3                                     ; $4f20: $06 $c3
    add [hl]                                      ; $4f22: $86
    ld l, e                                       ; $4f23: $6b
    ld l, e                                       ; $4f24: $6b
    cp [hl]                                       ; $4f25: $be
    pop hl                                        ; $4f26: $e1
    push af                                       ; $4f27: $f5
    ld [hl+], a                                   ; $4f28: $22
    or a                                          ; $4f29: $b7
    ld h, b                                       ; $4f2a: $60
    ld [hl], l                                    ; $4f2b: $75

jr_070_4f2c:
    jr z, jr_070_4f2c                             ; $4f2c: $28 $fe

    dec c                                         ; $4f2e: $0d
    db $10                                        ; $4f2f: $10
    add $a6                                       ; $4f30: $c6 $a6
    ret nz                                        ; $4f32: $c0

    db $e3                                        ; $4f33: $e3
    jp $4183                                      ; $4f34: $c3 $83 $41


    add c                                         ; $4f37: $81
    ld l, e                                       ; $4f38: $6b
    ei                                            ; $4f39: $fb
    inc h                                         ; $4f3a: $24
    inc a                                         ; $4f3b: $3c
    ld h, [hl]                                    ; $4f3c: $66
    ld a, h                                       ; $4f3d: $7c
    or $00                                        ; $4f3e: $f6 $00
    add $a4                                       ; $4f40: $c6 $a4
    ret z                                         ; $4f42: $c8

    ld h, d                                       ; $4f43: $62
    ld b, h                                       ; $4f44: $44
    ld hl, $a1c8                                  ; $4f45: $21 $c8 $a1
    ld [bc], a                                    ; $4f48: $02
    ret nz                                        ; $4f49: $c0

    ei                                            ; $4f4a: $fb
    inc h                                         ; $4f4b: $24
    xor a                                         ; $4f4c: $af
    ld hl, $b63e                                  ; $4f4d: $21 $3e $b6
    nop                                           ; $4f50: $00
    adc d                                         ; $4f51: $8a
    ld h, $4b                                     ; $4f52: $26 $4b
    ld h, d                                       ; $4f54: $62
    jp nz, $fde3                                  ; $4f55: $c2 $e3 $fd

    add b                                         ; $4f58: $80
    ld bc, $c1c0                                  ; $4f59: $01 $c0 $c1

jr_070_4f5c:
    pop hl                                        ; $4f5c: $e1
    ld a, [hl]                                    ; $4f5d: $7e
    pop bc                                        ; $4f5e: $c1
    dec sp                                        ; $4f5f: $3b
    ld b, d                                       ; $4f60: $42
    ret nz                                        ; $4f61: $c0

    cp a                                          ; $4f62: $bf
    and e                                         ; $4f63: $a3
    ld c, e                                       ; $4f64: $4b
    inc c                                         ; $4f65: $0c
    ld [$ca85], sp                                ; $4f66: $08 $85 $ca
    inc hl                                        ; $4f69: $23
    add d                                         ; $4f6a: $82
    db $e4                                        ; $4f6b: $e4
    ret nz                                        ; $4f6c: $c0

    add c                                         ; $4f6d: $81
    ld l, e                                       ; $4f6e: $6b
    ld l, e                                       ; $4f6f: $6b
    add b                                         ; $4f70: $80
    ld a, [hl-]                                   ; $4f71: $3a
    ld h, d                                       ; $4f72: $62
    dec a                                         ; $4f73: $3d
    pop bc                                        ; $4f74: $c1
    ld a, l                                       ; $4f75: $7d
    ld h, h                                       ; $4f76: $64
    cp a                                          ; $4f77: $bf
    add $02                                       ; $4f78: $c6 $02
    cpl                                           ; $4f7a: $2f
    ld c, d                                       ; $4f7b: $4a
    dec h                                         ; $4f7c: $25
    ld b, d                                       ; $4f7d: $42
    db $e3                                        ; $4f7e: $e3
    ld l, e                                       ; $4f7f: $6b
    rra                                           ; $4f80: $1f
    inc c                                         ; $4f81: $0c
    inc c                                         ; $4f82: $0c
    inc c                                         ; $4f83: $0c
    inc l                                         ; $4f84: $2c
    inc l                                         ; $4f85: $2c
    ret nz                                        ; $4f86: $c0

    ldh [rSC], a                                  ; $4f87: $e0 $02
    ldh [$81], a                                  ; $4f89: $e0 $81
    db $e3                                        ; $4f8b: $e3
    jp nz, Jump_000_22ba                          ; $4f8c: $c2 $ba $22

    dec bc                                        ; $4f8f: $0b
    cp $99                                        ; $4f90: $fe $99
    db $10                                        ; $4f92: $10
    inc hl                                        ; $4f93: $23
    jp z, $c142                                   ; $4f94: $ca $42 $c1

    ldh [$6c], a                                  ; $4f97: $e0 $6c
    ld c, h                                       ; $4f99: $4c
    ld bc, $bf4c                                  ; $4f9a: $01 $4c $bf
    ldh [$80], a                                  ; $4f9d: $e0 $80
    ret nz                                        ; $4f9f: $c0

    cp l                                          ; $4fa0: $bd
    and d                                         ; $4fa1: $a2
    jp $fbe2                                      ; $4fa2: $c3 $e2 $fb


    ld hl, $f502                                  ; $4fa5: $21 $02 $f5
    ld c, d                                       ; $4fa8: $4a
    dec h                                         ; $4fa9: $25
    ld [bc], a                                    ; $4faa: $02
    adc e                                         ; $4fab: $8b
    ld b, c                                       ; $4fac: $41
    ld l, e                                       ; $4fad: $6b
    pop bc                                        ; $4fae: $c1
    pop hl                                        ; $4faf: $e1
    ld [hl], $20                                  ; $4fb0: $36 $20
    cp a                                          ; $4fb2: $bf
    ldh [$b0], a                                  ; $4fb3: $e0 $b0
    pop hl                                        ; $4fb5: $e1
    scf                                           ; $4fb6: $37
    ld [hl+], a                                   ; $4fb7: $22
    cp d                                          ; $4fb8: $ba
    inc h                                         ; $4fb9: $24
    adc [hl]                                      ; $4fba: $8e
    cp $57                                        ; $4fbb: $fe $57
    ld c, $0e                                     ; $4fbd: $0e $0e
    ld c, l                                       ; $4fbf: $4d
    ld d, l                                       ; $4fc0: $55
    ld b, c                                       ; $4fc1: $41
    call $4401                                    ; $4fc2: $cd $01 $44
    ldh [$4c], a                                  ; $4fc5: $e0 $4c
    ld [$0044], sp                                ; $4fc7: $08 $44 $00
    cp a                                          ; $4fca: $bf
    ld [c], a                                     ; $4fcb: $e2
    ld a, $02                                     ; $4fcc: $3e $02
    dec hl                                        ; $4fce: $2b
    cp d                                          ; $4fcf: $ba
    dec h                                         ; $4fd0: $25
    ld a, $63                                     ; $4fd1: $3e $63
    cp $12                                        ; $4fd3: $fe $12
    add [hl]                                      ; $4fd5: $86
    ld h, e                                       ; $4fd6: $63
    and $09                                       ; $4fd7: $e6 $09
    add b                                         ; $4fd9: $80
    ld l, e                                       ; $4fda: $6b
    inc l                                         ; $4fdb: $2c
    ld b, e                                       ; $4fdc: $43
    pop hl                                        ; $4fdd: $e1
    adc b                                         ; $4fde: $88
    add c                                         ; $4fdf: $81
    dec c                                         ; $4fe0: $0d
    dec c                                         ; $4fe1: $0d
    ld l, h                                       ; $4fe2: $6c
    adc e                                         ; $4fe3: $8b
    inc l                                         ; $4fe4: $2c
    inc c                                         ; $4fe5: $0c
    ld b, c                                       ; $4fe6: $41
    pop bc                                        ; $4fe7: $c1
    ld l, e                                       ; $4fe8: $6b
    pop bc                                        ; $4fe9: $c1
    db $eb                                        ; $4fea: $eb
    ld b, $96                                     ; $4feb: $06 $96
    add [hl]                                      ; $4fed: $86
    ld h, c                                       ; $4fee: $61
    ld l, e                                       ; $4fef: $6b
    rst $08                                       ; $4ff0: $cf
    ld c, e                                       ; $4ff1: $4b
    inc l                                         ; $4ff2: $2c
    inc l                                         ; $4ff3: $2c
    ld l, h                                       ; $4ff4: $6c
    ld b, d                                       ; $4ff5: $42
    ldh [$0a], a                                  ; $4ff6: $e0 $0a
    ret nz                                        ; $4ff8: $c0

    ld c, e                                       ; $4ff9: $4b
    dec c                                         ; $4ffa: $0d
    inc bc                                        ; $4ffb: $03
    ld l, h                                       ; $4ffc: $6c
    inc c                                         ; $4ffd: $0c
    ret nz                                        ; $4ffe: $c0

    pop hl                                        ; $4fff: $e1

Jump_070_5000:
    cp d                                          ; $5000: $ba
    inc h                                         ; $5001: $24
    jp nz, $499b                                  ; $5002: $c2 $9b $49

    dec b                                         ; $5005: $05
    add a                                         ; $5006: $87
    ret nz                                        ; $5007: $c0

    ld b, d                                       ; $5008: $42
    ld [c], a                                     ; $5009: $e2
    ld c, $44                                     ; $500a: $0e $44
    ld hl, $2c0d                                  ; $500c: $21 $0d $2c
    inc c                                         ; $500f: $0c
    ccf                                           ; $5010: $3f
    ldh [$be], a                                  ; $5011: $e0 $be
    add d                                         ; $5013: $82
    ret nz                                        ; $5014: $c0

    ld hl, sp+$06                                 ; $5015: $f8 $06
    ld l, d                                       ; $5017: $6a
    db $f4                                        ; $5018: $f4
    ld b, e                                       ; $5019: $43
    ldh [rSCY], a                                 ; $501a: $e0 $42
    pop hl                                        ; $501c: $e1
    ld c, e                                       ; $501d: $4b
    ccf                                           ; $501e: $3f
    and b                                         ; $501f: $a0
    ld l, e                                       ; $5020: $6b
    dec c                                         ; $5021: $0d
    dec l                                         ; $5022: $2d
    inc l                                         ; $5023: $2c
    add b                                         ; $5024: $80
    rst $38                                       ; $5025: $ff
    pop bc                                        ; $5026: $c1
    ret nz                                        ; $5027: $c0

    db $e3                                        ; $5028: $e3
    daa                                           ; $5029: $27
    add c                                         ; $502a: $81
    db $fd                                        ; $502b: $fd
    inc b                                         ; $502c: $04
    ld [bc], a                                    ; $502d: $02
    or l                                          ; $502e: $b5
    ld b, c                                       ; $502f: $41
    add c                                         ; $5030: $81
    ret nz                                        ; $5031: $c0

    pop hl                                        ; $5032: $e1
    inc l                                         ; $5033: $2c
    ld de, $814b                                  ; $5034: $11 $4b $81
    pop hl                                        ; $5037: $e1
    add d                                         ; $5038: $82
    ld h, b                                       ; $5039: $60
    or $c0                                        ; $503a: $f6 $c0
    ld c, h                                       ; $503c: $4c
    rst $38                                       ; $503d: $ff
    ld h, d                                       ; $503e: $62
    ccf                                           ; $503f: $3f
    jp $207f                                      ; $5040: $c3 $7f $20


    or b                                          ; $5043: $b0
    pop bc                                        ; $5044: $c1
    inc h                                         ; $5045: $24
    ld [bc], a                                    ; $5046: $02
    or e                                          ; $5047: $b3
    jp z, $4101                                   ; $5048: $ca $01 $41

    pop hl                                        ; $504b: $e1
    inc l                                         ; $504c: $2c
    inc c                                         ; $504d: $0c
    dec [hl]                                      ; $504e: $35
    jp nz, $412d                                  ; $504f: $c2 $2d $41

    dec c                                         ; $5052: $0d
    ld a, [$c0a1]                                 ; $5053: $fa $a1 $c0
    db $e3                                        ; $5056: $e3
    cp l                                          ; $5057: $bd
    ld b, h                                       ; $5058: $44
    cp [hl]                                       ; $5059: $be
    ld d, $68                                     ; $505a: $16 $68
    add h                                         ; $505c: $84
    dec bc                                        ; $505d: $0b
    adc [hl]                                      ; $505e: $8e
    ret nz                                        ; $505f: $c0

    inc h                                         ; $5060: $24
    ld a, $e1                                     ; $5061: $3e $e1
    ret nz                                        ; $5063: $c0

    db $e3                                        ; $5064: $e3
    dec l                                         ; $5065: $2d
    ld a, h                                       ; $5066: $7c
    and b                                         ; $5067: $a0
    ld b, c                                       ; $5068: $41
    and e                                         ; $5069: $a3
    dec hl                                        ; $506a: $2b
    cp b                                          ; $506b: $b8
    inc bc                                        ; $506c: $03
    add b                                         ; $506d: $80
    add e                                         ; $506e: $83
    inc c                                         ; $506f: $0c
    cp $16                                        ; $5070: $fe $16
    call c, Call_070_6c41                         ; $5072: $dc $41 $6c
    ld c, h                                       ; $5075: $4c
    ld b, [hl]                                    ; $5076: $46
    and e                                         ; $5077: $a3
    nop                                           ; $5078: $00
    ld b, d                                       ; $5079: $42
    pop bc                                        ; $507a: $c1
    push bc                                       ; $507b: $c5
    ld a, [hl]                                    ; $507c: $7e
    ld b, c                                       ; $507d: $41
    ld d, b                                       ; $507e: $50
    ld bc, $02c4                                  ; $507f: $01 $c4 $02
    xor [hl]                                      ; $5082: $ae
    nop                                           ; $5083: $00
    adc c                                         ; $5084: $89
    ld e, c                                       ; $5085: $59
    ld b, c                                       ; $5086: $41
    ld c, h                                       ; $5087: $4c
    cp a                                          ; $5088: $bf
    ld [c], a                                     ; $5089: $e2
    inc c                                         ; $508a: $0c
    add b                                         ; $508b: $80
    add b                                         ; $508c: $80
    ret nz                                        ; $508d: $c0

    halt                                          ; $508e: $76
    jp nz, $43fd                                  ; $508f: $c2 $fd $43

    ret nz                                        ; $5092: $c0

    db $e3                                        ; $5093: $e3
    nop                                           ; $5094: $00
    ld hl, $d900                                  ; $5095: $21 $00 $d9
    ld b, [hl]                                    ; $5098: $46
    ld hl, $0b0b                                  ; $5099: $21 $0b $0b
    ld h, b                                       ; $509c: $60
    inc c                                         ; $509d: $0c
    ret nz                                        ; $509e: $c0

    jp Jump_000_3c80                              ; $509f: $c3 $80 $3c


    and c                                         ; $50a2: $a1
    rst $30                                       ; $50a3: $f7
    and b                                         ; $50a4: $a0
    ret nz                                        ; $50a5: $c0

    jp hl                                         ; $50a6: $e9


    dec c                                         ; $50a7: $0d
    ld l, l                                       ; $50a8: $6d
    add c                                         ; $50a9: $81
    inc h                                         ; $50aa: $24
    ld h, h                                       ; $50ab: $64
    add $16                                       ; $50ac: $c6 $16
    ld a, a                                       ; $50ae: $7f
    and c                                         ; $50af: $a1
    dec bc                                        ; $50b0: $0b
    ld a, $e4                                     ; $50b1: $3e $e4
    ld hl, sp-$5f                                 ; $50b3: $f8 $a1
    ld l, h                                       ; $50b5: $6c
    ld l, h                                       ; $50b6: $6c
    or $64                                        ; $50b7: $f6 $64
    db $10                                        ; $50b9: $10
    ld bc, $43e2                                  ; $50ba: $01 $e2 $43
    ld h, c                                       ; $50bd: $61
    nop                                           ; $50be: $00
    ld e, c                                       ; $50bf: $59

Jump_070_50c0:
    ld [bc], a                                    ; $50c0: $02
    ld b, c                                       ; $50c1: $41
    dec c                                         ; $50c2: $0d
    add hl, de                                    ; $50c3: $19
    and b                                         ; $50c4: $a0
    ld a, $e2                                     ; $50c5: $3e $e2
    pop bc                                        ; $50c7: $c1
    db $e3                                        ; $50c8: $e3
    ld b, b                                       ; $50c9: $40
    ld [hl], e                                    ; $50ca: $73
    add e                                         ; $50cb: $83
    add hl, sp                                    ; $50cc: $39
    ld h, d                                       ; $50cd: $62
    ld b, h                                       ; $50ce: $44
    ld b, l                                       ; $50cf: $45
    nop                                           ; $50d0: $00
    ld e, c                                       ; $50d1: $59
    ret nz                                        ; $50d2: $c0

    ld hl, $a056                                  ; $50d3: $21 $56 $a0
    ld c, h                                       ; $50d6: $4c
    db $fc                                        ; $50d7: $fc
    ret nz                                        ; $50d8: $c0

    db $10                                        ; $50d9: $10
    ld b, c                                       ; $50da: $41
    add b                                         ; $50db: $80
    add d                                         ; $50dc: $82
    db $e3                                        ; $50dd: $e3
    ld a, d                                       ; $50de: $7a
    ld h, c                                       ; $50df: $61
    cp [hl]                                       ; $50e0: $be
    inc bc                                        ; $50e1: $03
    ld c, l                                       ; $50e2: $4d
    ld a, [$3e80]                                 ; $50e3: $fa $80 $3e
    ld sp, hl                                     ; $50e6: $f9
    db $fc                                        ; $50e7: $fc
    ld h, e                                       ; $50e8: $63
    nop                                           ; $50e9: $00
    inc a                                         ; $50ea: $3c
    ld [c], a                                     ; $50eb: $e2
    jp Jump_070_7ae0                              ; $50ec: $c3 $e0 $7a


    ld h, h                                       ; $50ef: $64
    add [hl]                                      ; $50f0: $86
    call nz, $63c3                                ; $50f1: $c4 $c3 $63
    ld a, [de]                                    ; $50f4: $1a
    add e                                         ; $50f5: $83
    inc b                                         ; $50f6: $04
    scf                                           ; $50f7: $37
    cp d                                          ; $50f8: $ba
    ld h, [hl]                                    ; $50f9: $66
    nop                                           ; $50fa: $00
    cp [hl]                                       ; $50fb: $be
    ld b, l                                       ; $50fc: $45
    jp nz, $82e6                                  ; $50fd: $c2 $e6 $82

    ld e, e                                       ; $5100: $5b
    cp $0a                                        ; $5101: $fe $0a
    jr jr_070_5127                                ; $5103: $18 $22

    cp $f2                                        ; $5105: $fe $f2
    cp a                                          ; $5107: $bf
    add $fe                                       ; $5108: $c6 $fe
    jp c, $c004                                   ; $510a: $da $04 $c0

    ei                                            ; $510d: $fb
    ld b, b                                       ; $510e: $40
    rra                                           ; $510f: $1f
    ld l, l                                       ; $5110: $6d
    nop                                           ; $5111: $00
    ld b, [hl]                                    ; $5112: $46
    ld a, c                                       ; $5113: $79
    db $ed                                        ; $5114: $ed
    ld b, d                                       ; $5115: $42
    ld b, c                                       ; $5116: $41
    ret nz                                        ; $5117: $c0

    db $fc                                        ; $5118: $fc
    db $fc                                        ; $5119: $fc
    ld bc, $7e00                                  ; $511a: $01 $00 $7e
    ld b, c                                       ; $511d: $41
    db $fc                                        ; $511e: $fc
    pop af                                        ; $511f: $f1
    ld b, b                                       ; $5120: $40
    add e                                         ; $5121: $83
    ld [bc], a                                    ; $5122: $02
    ld sp, hl                                     ; $5123: $f9
    cp d                                          ; $5124: $ba
    ld b, d                                       ; $5125: $42
    add b                                         ; $5126: $80

jr_070_5127:
    daa                                           ; $5127: $27
    ld sp, hl                                     ; $5128: $f9
    call $80c0                                    ; $5129: $cd $c0 $80
    nop                                           ; $512c: $00
    nop                                           ; $512d: $00
    reti                                          ; $512e: $d9


    ld [hl+], a                                   ; $512f: $22
    db $e3                                        ; $5130: $e3
    add c                                         ; $5131: $81
    ld bc, $22d7                                  ; $5132: $01 $d7 $22
    db $fc                                        ; $5135: $fc
    db $ec                                        ; $5136: $ec
    ld b, c                                       ; $5137: $41
    ld b, [hl]                                    ; $5138: $46
    cp $5b                                        ; $5139: $fe $5b
    sbc e                                         ; $513b: $9b
    jr nz, @-$3e                                  ; $513c: $20 $c0

    nop                                           ; $513e: $00
    or $bf                                        ; $513f: $f6 $bf
    add e                                         ; $5141: $83
    cp [hl]                                       ; $5142: $be
    ld e, d                                       ; $5143: $5a
    ld b, b                                       ; $5144: $40
    ei                                            ; $5145: $fb
    ld b, c                                       ; $5146: $41
    add c                                         ; $5147: $81
    nop                                           ; $5148: $00
    db $dd                                        ; $5149: $dd
    ld c, l                                       ; $514a: $4d
    dec l                                         ; $514b: $2d
    sbc b                                         ; $514c: $98
    db $10                                        ; $514d: $10
    and b                                         ; $514e: $a0
    adc $80                                       ; $514f: $ce $80
    db $fc                                        ; $5151: $fc
    db $ed                                        ; $5152: $ed
    dec c                                         ; $5153: $0d
    ld c, e                                       ; $5154: $4b
    inc bc                                        ; $5155: $03
    ld b, e                                       ; $5156: $43
    nop                                           ; $5157: $00
    sbc $4d                                       ; $5158: $de $4d
    ld bc, $512d                                  ; $515a: $01 $2d $51
    add b                                         ; $515d: $80
    cp [hl]                                       ; $515e: $be
    rst $28                                       ; $515f: $ef
    ld [c], a                                     ; $5160: $e2
    ld b, c                                       ; $5161: $41
    ld b, h                                       ; $5162: $44
    db $dd                                        ; $5163: $dd
    ld a, [hl-]                                   ; $5164: $3a
    add h                                         ; $5165: $84
    or $42                                        ; $5166: $f6 $42
    ei                                            ; $5168: $fb
    db $e3                                        ; $5169: $e3
    nop                                           ; $516a: $00
    adc d                                         ; $516b: $8a
    ld hl, $0381                                  ; $516c: $21 $81 $03
    add d                                         ; $516f: $82
    db $e4                                        ; $5170: $e4
    ret nz                                        ; $5171: $c0

    cp [hl]                                       ; $5172: $be
    ld [hl], $04                                  ; $5173: $36 $04
    cp h                                          ; $5175: $bc
    db $e4                                        ; $5176: $e4
    inc l                                         ; $5177: $2c
    jr nz, jr_070_51b9                            ; $5178: $20 $3f

    nop                                           ; $517a: $00
    nop                                           ; $517b: $00
    ret z                                         ; $517c: $c8

    rst $00                                       ; $517d: $c7
    ld [bc], a                                    ; $517e: $02
    or c                                          ; $517f: $b1
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    rst $28                                       ; $5183: $ef
    and b                                         ; $5184: $a0
    call c, $dedd                                 ; $5185: $dc $dd $de
    db $fc                                        ; $5188: $fc
    jp hl                                         ; $5189: $e9


    sub $d7                                       ; $518a: $d6 $d7
    and b                                         ; $518c: $a0
    cp $ff                                        ; $518d: $fe $ff
    ldh [$d0], a                                  ; $518f: $e0 $d0
    pop de                                        ; $5191: $d1
    and b                                         ; $5192: $a0
    and b                                         ; $5193: $a0
    jp nc, $a0d3                                  ; $5194: $d2 $d3 $a0

    ccf                                           ; $5197: $3f
    call nc, $a0d5                                ; $5198: $d4 $d5 $a0
    ret c                                         ; $519b: $d8

    reti                                          ; $519c: $d9


    and b                                         ; $519d: $a0
    db $fc                                        ; $519e: $fc
    ld [c], a                                     ; $519f: $e2
    ret c                                         ; $51a0: $d8

    db $ed                                        ; $51a1: $ed
    ld e, $c8                                     ; $51a2: $1e $c8
    push hl                                       ; $51a4: $e5
    rst $18                                       ; $51a5: $df
    ldh [$e1], a                                  ; $51a6: $e0 $e1
    ld [c], a                                     ; $51a8: $e2
    db $fc                                        ; $51a9: $fc
    jp hl                                         ; $51aa: $e9


    ret nc                                        ; $51ab: $d0

    ldh [$c3], a                                  ; $51ac: $e0 $c3
    ldh [$f8], a                                  ; $51ae: $e0 $f8
    call nz, $c3e0                                ; $51b0: $c4 $e0 $c3
    pop hl                                        ; $51b3: $e1
    or l                                          ; $51b4: $b5
    ldh [$da], a                                  ; $51b5: $e0 $da
    db $db                                        ; $51b7: $db
    ret nc                                        ; $51b8: $d0

jr_070_51b9:
    pop de                                        ; $51b9: $d1
    jp c, $dbe7                                   ; $51ba: $da $e7 $db

    and b                                         ; $51bd: $a0
    and b                                         ; $51be: $a0
    ret c                                         ; $51bf: $d8

    db $ed                                        ; $51c0: $ed
    ret z                                         ; $51c1: $c8

    push hl                                       ; $51c2: $e5
    db $e3                                        ; $51c3: $e3
    db $e4                                        ; $51c4: $e4
    push hl                                       ; $51c5: $e5
    ld [hl], c                                    ; $51c6: $71
    and $fc                                       ; $51c7: $e6 $fc
    jp hl                                         ; $51c9: $e9


    call nc, $87e0                                ; $51ca: $d4 $e0 $87
    ld [c], a                                     ; $51cd: $e2
    sbc a                                         ; $51ce: $9f
    and d                                         ; $51cf: $a2
    sbc l                                         ; $51d0: $9d
    rst $38                                       ; $51d1: $ff
    pop hl                                        ; $51d2: $e1
    sbc e                                         ; $51d3: $9b
    and d                                         ; $51d4: $a2
    sbc a                                         ; $51d5: $9f
    or h                                          ; $51d6: $b4
    ld [c], a                                     ; $51d7: $e2
    and b                                         ; $51d8: $a0
    and b                                         ; $51d9: $a0
    ret c                                         ; $51da: $d8

    db $ed                                        ; $51db: $ed
    ret z                                         ; $51dc: $c8

    push hl                                       ; $51dd: $e5
    rst $20                                       ; $51de: $e7
    rst $00                                       ; $51df: $c7
    add sp, -$17                                  ; $51e0: $e8 $e9
    ld [$e9fc], a                                 ; $51e2: $ea $fc $e9
    ld b, l                                       ; $51e5: $45
    ldh [$87], a                                  ; $51e6: $e0 $87
    pop hl                                        ; $51e8: $e1
    sbc a                                         ; $51e9: $9f
    sbc h                                         ; $51ea: $9c
    ld l, l                                       ; $51eb: $6d
    ld b, [hl]                                    ; $51ec: $46
    rst $38                                       ; $51ed: $ff
    db $e3                                        ; $51ee: $e3
    sbc h                                         ; $51ef: $9c
    sbc a                                         ; $51f0: $9f
    ld a, b                                       ; $51f1: $78
    pop hl                                        ; $51f2: $e1
    ret nc                                        ; $51f3: $d0

    pop de                                        ; $51f4: $d1
    ret c                                         ; $51f5: $d8

    db $ed                                        ; $51f6: $ed
    ldh [$c8], a                                  ; $51f7: $e0 $c8
    push hl                                       ; $51f9: $e5
    ld a, [hl+]                                   ; $51fa: $2a
    db $ec                                        ; $51fb: $ec
    add hl, bc                                    ; $51fc: $09
    ld [c], a                                     ; $51fd: $e2
    add h                                         ; $51fe: $84
    ldh [$c1], a                                  ; $51ff: $e0 $c1
    ldh [$79], a                                  ; $5201: $e0 $79
    ld a, d                                       ; $5203: $7a
    ld a, e                                       ; $5204: $7b
    inc bc                                        ; $5205: $03
    ld a, h                                       ; $5206: $7c
    ld a, l                                       ; $5207: $7d
    cp a                                          ; $5208: $bf
    pop hl                                        ; $5209: $e1
    db $eb                                        ; $520a: $eb
    db $e3                                        ; $520b: $e3
    cp $d4                                        ; $520c: $fe $d4
    ld [bc], a                                    ; $520e: $02
    db $eb                                        ; $520f: $eb
    jp nz, $45c0                                  ; $5210: $c2 $c0 $45

    ldh [$7e], a                                  ; $5213: $e0 $7e
    add h                                         ; $5215: $84
    ld [c], a                                     ; $5216: $e2
    ld a, c                                       ; $5217: $79
    ld a, [hl]                                    ; $5218: $7e
    ld b, l                                       ; $5219: $45
    ld b, c                                       ; $521a: $41
    ld b, l                                       ; $521b: $45
    ld a, a                                       ; $521c: $7f
    cp a                                          ; $521d: $bf
    pop hl                                        ; $521e: $e1
    ld e, $3b                                     ; $521f: $1e $3b
    ldh [$d4], a                                  ; $5221: $e0 $d4
    push de                                       ; $5223: $d5
    ret nc                                        ; $5224: $d0

    pop de                                        ; $5225: $d1
    cp $d3                                        ; $5226: $fe $d3
    ld [bc], a                                    ; $5228: $02
    db $eb                                        ; $5229: $eb
    sub d                                         ; $522a: $92
    pop bc                                        ; $522b: $c1
    rst $30                                       ; $522c: $f7
    sbc a                                         ; $522d: $9f
    sbc h                                         ; $522e: $9c
    xor [hl]                                      ; $522f: $ae
    pop bc                                        ; $5230: $c1
    ld [c], a                                     ; $5231: $e2
    cp l                                          ; $5232: $bd
    inc l                                         ; $5233: $2c
    ld h, $2a                                     ; $5234: $26 $2a
    adc h                                         ; $5236: $8c
    cp a                                          ; $5237: $bf
    ld [c], a                                     ; $5238: $e2
    ld a, h                                       ; $5239: $7c
    ld [c], a                                     ; $523a: $e2
    jp nc, $fed3                                  ; $523b: $d2 $d3 $fe

    db $d3                                        ; $523e: $d3
    ld [bc], a                                    ; $523f: $02
    db $eb                                        ; $5240: $eb
    sub [hl]                                      ; $5241: $96
    pop bc                                        ; $5242: $c1
    sbc [hl]                                      ; $5243: $9e
    ei                                            ; $5244: $fb
    xor [hl]                                      ; $5245: $ae
    xor a                                         ; $5246: $af
    add d                                         ; $5247: $82
    ld [c], a                                     ; $5248: $e2
    ld l, $20                                     ; $5249: $2e $20
    jr nz, jr_070_5277                            ; $524b: $20 $2a

    ld d, b                                       ; $524d: $50
    rrca                                          ; $524e: $0f
    ld b, e                                       ; $524f: $43
    add c                                         ; $5250: $81
    ld b, [hl]                                    ; $5251: $46
    ld b, [hl]                                    ; $5252: $46
    or c                                          ; $5253: $b1
    ldh [$fa], a                                  ; $5254: $e0 $fa
    pop bc                                        ; $5256: $c1
    cp $d3                                        ; $5257: $fe $d3
    ld [bc], a                                    ; $5259: $02
    db $ec                                        ; $525a: $ec
    ld a, [$c006]                                 ; $525b: $fa $06 $c0
    sbc [hl]                                      ; $525e: $9e
    pop bc                                        ; $525f: $c1
    ldh [rDMA], a                                 ; $5260: $e0 $46
    add b                                         ; $5262: $80
    xor [hl]                                      ; $5263: $ae
    ld b, d                                       ; $5264: $42
    inc hl                                        ; $5265: $23
    ld e, a                                       ; $5266: $5f
    ld h, $2a                                     ; $5267: $26 $2a

jr_070_5269:
    ld b, a                                       ; $5269: $47
    ld e, l                                       ; $526a: $5d
    ld d, l                                       ; $526b: $55
    ret nz                                        ; $526c: $c0

    ldh [$af], a                                  ; $526d: $e0 $af
    cp [hl]                                       ; $526f: $be
    ldh [$71], a                                  ; $5270: $e0 $71
    sbc [hl]                                      ; $5272: $9e
    ld [$00a1], a                                 ; $5273: $ea $a1 $00
    db $dd                                        ; $5276: $dd

jr_070_5277:
    call nz, $d2a1                                ; $5277: $c4 $a1 $d2
    db $d3                                        ; $527a: $d3
    and c                                         ; $527b: $a1
    adc [hl]                                      ; $527c: $8e
    pop hl                                        ; $527d: $e1
    rst $38                                       ; $527e: $ff
    add b                                         ; $527f: $80
    xor a                                         ; $5280: $af
    ld b, b                                       ; $5281: $40
    dec [hl]                                      ; $5282: $35
    inc a                                         ; $5283: $3c
    ld c, d                                       ; $5284: $4a
    ld h, b                                       ; $5285: $60
    ld d, l                                       ; $5286: $55
    pop bc                                        ; $5287: $c1
    ld b, l                                       ; $5288: $45
    add b                                         ; $5289: $80
    ldh [$be], a                                  ; $528a: $e0 $be
    pop hl                                        ; $528c: $e1
    ret nz                                        ; $528d: $c0

    ld [c], a                                     ; $528e: $e2
    nop                                           ; $528f: $00
    db $dd                                        ; $5290: $dd
    sub h                                         ; $5291: $94
    and c                                         ; $5292: $a1
    call nc, $fdd5                                ; $5293: $d4 $d5 $fd
    sbc [hl]                                      ; $5296: $9e
    adc [hl]                                      ; $5297: $8e
    pop hl                                        ; $5298: $e1
    add b                                         ; $5299: $80
    ld b, [hl]                                    ; $529a: $46
    add hl, sp                                    ; $529b: $39
    dec [hl]                                      ; $529c: $35
    dec [hl]                                      ; $529d: $35
    ld d, l                                       ; $529e: $55
    cpl                                           ; $529f: $2f
    ld d, d                                       ; $52a0: $52
    ld b, l                                       ; $52a1: $45
    add e                                         ; $52a2: $83
    add h                                         ; $52a3: $84
    jr c, jr_070_5269                             ; $52a4: $38 $c3

    sbc [hl]                                      ; $52a6: $9e
    ld l, l                                       ; $52a7: $6d
    and c                                         ; $52a8: $a1
    nop                                           ; $52a9: $00
    db $dd                                        ; $52aa: $dd
    ld hl, sp-$6c                                 ; $52ab: $f8 $94
    and c                                         ; $52ad: $a1
    nop                                           ; $52ae: $00
    ldh [rTMA], a                                 ; $52af: $e0 $06
    pop bc                                        ; $52b1: $c1
    add d                                         ; $52b2: $82
    add e                                         ; $52b3: $83
    ld a, [hl-]                                   ; $52b4: $3a
    dec [hl]                                      ; $52b5: $35
    dec [hl]                                      ; $52b6: $35
    ld e, a                                       ; $52b7: $5f
    add hl, sp                                    ; $52b8: $39
    ld b, l                                       ; $52b9: $45
    add e                                         ; $52ba: $83
    add [hl]                                      ; $52bb: $86
    add l                                         ; $52bc: $85
    ld hl, sp-$5d                                 ; $52bd: $f8 $a3
    and c                                         ; $52bf: $a1
    ld sp, $f8a1                                  ; $52c0: $31 $a1 $f8
    nop                                           ; $52c3: $00
    call c, $c403                                 ; $52c4: $dc $03 $c4
    add $a2                                       ; $52c7: $c6 $a2
    add l                                         ; $52c9: $85
    add a                                         ; $52ca: $87
    ld [hl], c                                    ; $52cb: $71
    ld [hl], d                                    ; $52cc: $72
    ld l, h                                       ; $52cd: $6c
    add c                                         ; $52ce: $81
    ld a, [hl-]                                   ; $52cf: $3a
    pop bc                                        ; $52d0: $c1
    ldh [$74], a                                  ; $52d1: $e0 $74
    pop bc                                        ; $52d3: $c1
    cp c                                          ; $52d4: $b9
    and [hl]                                      ; $52d5: $a6
    ld a, [$0290]                                 ; $52d6: $fa $90 $02
    db $eb                                        ; $52d9: $eb
    inc bc                                        ; $52da: $03
    jp nz, $fd79                                  ; $52db: $c2 $79 $fd

    ld a, d                                       ; $52de: $7a
    ret                                           ; $52df: $c9


    and b                                         ; $52e0: $a0
    ld b, h                                       ; $52e1: $44

Call_070_52e2:
    inc a                                         ; $52e2: $3c
    ld l, [hl]                                    ; $52e3: $6e
    ld [hl], b                                    ; $52e4: $70
    ld [hl], c                                    ; $52e5: $71
    add a                                         ; $52e6: $87
    dec c                                         ; $52e7: $0d
    add l                                         ; $52e8: $85
    jp Jump_070_79c0                              ; $52e9: $c3 $c0 $79


    ld a, d                                       ; $52ec: $7a
    cp c                                          ; $52ed: $b9
    and h                                         ; $52ee: $a4
    xor e                                         ; $52ef: $ab
    add b                                         ; $52f0: $80
    nop                                           ; $52f1: $00
    reti                                          ; $52f2: $d9


    sbc d                                         ; $52f3: $9a
    add d                                         ; $52f4: $82
    add [hl]                                      ; $52f5: $86
    pop bc                                        ; $52f6: $c1
    pop hl                                        ; $52f7: $e1
    ld a, [hl]                                    ; $52f8: $7e
    xor [hl]                                      ; $52f9: $ae
    ret                                           ; $52fa: $c9


    and b                                         ; $52fb: $a0
    ld bc, $3fe0                                  ; $52fc: $01 $e0 $3f
    ldh [$b8], a                                  ; $52ff: $e0 $b8
    and d                                         ; $5301: $a2
    xor [hl]                                      ; $5302: $ae
    dec e                                         ; $5303: $1d
    ld b, [hl]                                    ; $5304: $46
    cp c                                          ; $5305: $b9
    and b                                         ; $5306: $a0
    xor [hl]                                      ; $5307: $ae
    sbc h                                         ; $5308: $9c
    sbc a                                         ; $5309: $9f
    ld l, a                                       ; $530a: $6f
    add b                                         ; $530b: $80
    nop                                           ; $530c: $00
    reti                                          ; $530d: $d9


    ld [bc], a                                    ; $530e: $02
    ld [c], a                                     ; $530f: $e2
    ld a, l                                       ; $5310: $7d
    and c                                         ; $5311: $a1
    adc b                                         ; $5312: $88
    and b                                         ; $5313: $a0
    ld b, [hl]                                    ; $5314: $46
    xor a                                         ; $5315: $af
    add e                                         ; $5316: $83
    add h                                         ; $5317: $84
    ld b, l                                       ; $5318: $45
    ld bc, $e7e0                                  ; $5319: $01 $e0 $e7
    dec [hl]                                      ; $531c: $35
    dec [hl]                                      ; $531d: $35
    ld a, $36                                     ; $531e: $3e $36
    pop bc                                        ; $5320: $c1
    ld b, b                                       ; $5321: $40
    pop bc                                        ; $5322: $c1
    ld a, a                                       ; $5323: $7f
    ld a, l                                       ; $5324: $7d
    xor a                                         ; $5325: $af
    and e                                         ; $5326: $a3
    xor [hl]                                      ; $5327: $ae
    sbc [hl]                                      ; $5328: $9e
    ld [hl-], a                                   ; $5329: $32
    add b                                         ; $532a: $80
    nop                                           ; $532b: $00
    db $db                                        ; $532c: $db
    ld c, $80                                     ; $532d: $0e $80
    sbc [hl]                                      ; $532f: $9e
    ld b, $c0                                     ; $5330: $06 $c0
    ld b, [hl]                                    ; $5332: $46
    rst $08                                       ; $5333: $cf
    ld b, [hl]                                    ; $5334: $46
    adc d                                         ; $5335: $8a
    add l                                         ; $5336: $85
    ld [hl], $81                                  ; $5337: $36 $81
    pop hl                                        ; $5339: $e1
    add b                                         ; $533a: $80
    ld [c], a                                     ; $533b: $e2
    add d                                         ; $533c: $82
    add e                                         ; $533d: $83
    dec e                                         ; $533e: $1d
    ld b, [hl]                                    ; $533f: $46
    xor a                                         ; $5340: $af
    and b                                         ; $5341: $a0
    add c                                         ; $5342: $81
    ld b, [hl]                                    ; $5343: $46
    xor a                                         ; $5344: $af
    db $fd                                        ; $5345: $fd
    and e                                         ; $5346: $a3
    nop                                           ; $5347: $00
    sbc c                                         ; $5348: $99
    pop de                                        ; $5349: $d1
    ld h, b                                       ; $534a: $60
    sbc $c0                                       ; $534b: $de $c0
    ldh [$af], a                                  ; $534d: $e0 $af
    ld b, [hl]                                    ; $534f: $46
    add e                                         ; $5350: $83
    add h                                         ; $5351: $84
    ld b, d                                       ; $5352: $42

jr_070_5353:
    ld [c], a                                     ; $5353: $e2
    dec [hl]                                      ; $5354: $35
    inc a                                         ; $5355: $3c
    ld a, a                                       ; $5356: $7f
    ld b, h                                       ; $5357: $44
    ld c, b                                       ; $5358: $48
    ld d, e                                       ; $5359: $53
    ld b, l                                       ; $535a: $45
    add l                                         ; $535b: $85
    add [hl]                                      ; $535c: $86
    add e                                         ; $535d: $83
    ld [hl], b                                    ; $535e: $70
    and b                                         ; $535f: $a0
    ld hl, $b881                                  ; $5360: $21 $81 $b8
    add d                                         ; $5363: $82
    and e                                         ; $5364: $a3
    ld h, b                                       ; $5365: $60
    nop                                           ; $5366: $00
    sbc c                                         ; $5367: $99
    add [hl]                                      ; $5368: $86
    ld h, b                                       ; $5369: $60
    sbc [hl]                                      ; $536a: $9e
    ld b, [hl]                                    ; $536b: $46
    ret nz                                        ; $536c: $c0

    ld c, e                                       ; $536d: $4b
    ret nz                                        ; $536e: $c0

    cp $42                                        ; $536f: $fe $42
    ld [c], a                                     ; $5371: $e2
    dec [hl]                                      ; $5372: $35
    ld a, [hl-]                                   ; $5373: $3a
    ld d, c                                       ; $5374: $51
    ld e, [hl]                                    ; $5375: $5e
    ld d, h                                       ; $5376: $54
    dec hl                                        ; $5377: $2b
    cp l                                          ; $5378: $bd
    ret nz                                        ; $5379: $c0

    cp a                                          ; $537a: $bf
    ldh [$c0], a                                  ; $537b: $e0 $c0
    pop hl                                        ; $537d: $e1
    ld a, [hl]                                    ; $537e: $7e
    and c                                         ; $537f: $a1
    ld [hl], e                                    ; $5380: $73
    ld h, b                                       ; $5381: $60
    nop                                           ; $5382: $00
    sbc c                                         ; $5383: $99
    ret nz                                        ; $5384: $c0

    jp nz, $8785                                  ; $5385: $c2 $85 $87

    rst $30                                       ; $5388: $f7
    add a                                         ; $5389: $87
    add l                                         ; $538a: $85
    ld b, h                                       ; $538b: $44
    ret nz                                        ; $538c: $c0

    db $e3                                        ; $538d: $e3
    add hl, sp                                    ; $538e: $39
    ld c, d                                       ; $538f: $4a
    ld e, b                                       ; $5390: $58
    dec l                                         ; $5391: $2d
    ld e, a                                       ; $5392: $5f
    jr nz, jr_070_5353                            ; $5393: $20 $be

    ld b, h                                       ; $5395: $44
    add l                                         ; $5396: $85
    adc e                                         ; $5397: $8b
    add b                                         ; $5398: $80
    pop hl                                        ; $5399: $e1
    and c                                         ; $539a: $a1
    dec hl                                        ; $539b: $2b
    ld h, b                                       ; $539c: $60
    or b                                          ; $539d: $b0
    ld [hl], a                                    ; $539e: $77
    ld h, b                                       ; $539f: $60
    nop                                           ; $53a0: $00
    jp c, Jump_070_6009                           ; $53a1: $da $09 $60

    jp nz, $45a2                                  ; $53a4: $c2 $a2 $45

    ld a, $82                                     ; $53a7: $3e $82
    pop bc                                        ; $53a9: $c1
    ld [hl], $7f                                  ; $53aa: $36 $7f
    ld b, l                                       ; $53ac: $45
    ld d, l                                       ; $53ad: $55

Jump_070_53ae:
    ld d, [hl]                                    ; $53ae: $56
    ld [hl-], a                                   ; $53af: $32
    jr nz, jr_070_53d2                            ; $53b0: $20 $20

    dec l                                         ; $53b2: $2d
    ld [hl], e                                    ; $53b3: $73
    and b                                         ; $53b4: $a0
    ld bc, $80ae                                  ; $53b5: $01 $ae $80
    pop hl                                        ; $53b8: $e1
    dec hl                                        ; $53b9: $2b
    ld h, c                                       ; $53ba: $61
    nop                                           ; $53bb: $00
    sbc b                                         ; $53bc: $98
    call nz, $0263                                ; $53bd: $c4 $63 $02
    and b                                         ; $53c0: $a0
    add [hl]                                      ; $53c1: $86
    ld h, b                                       ; $53c2: $60
    ld b, d                                       ; $53c3: $42
    pop bc                                        ; $53c4: $c1
    rst $38                                       ; $53c5: $ff
    inc a                                         ; $53c6: $3c
    ld b, h                                       ; $53c7: $44
    ld b, [hl]                                    ; $53c8: $46
    ld b, l                                       ; $53c9: $45
    ld b, e                                       ; $53ca: $43
    cp l                                          ; $53cb: $bd
    inc hl                                        ; $53cc: $23
    ld h, $82                                     ; $53cd: $26 $82
    ret nz                                        ; $53cf: $c0

    pop hl                                        ; $53d0: $e1
    xor a                                         ; $53d1: $af

jr_070_53d2:
    nop                                           ; $53d2: $00
    pop hl                                        ; $53d3: $e1
    or d                                          ; $53d4: $b2
    ld b, b                                       ; $53d5: $40
    nop                                           ; $53d6: $00
    sbc c                                         ; $53d7: $99
    adc h                                         ; $53d8: $8c
    ld b, b                                       ; $53d9: $40
    call nz, Call_070_7a66                        ; $53da: $c4 $66 $7a
    push de                                       ; $53dd: $d5
    ld h, [hl]                                    ; $53de: $66
    ld [bc], a                                    ; $53df: $02
    ldh [rLYC], a                                 ; $53e0: $e0 $45
    ld b, [hl]                                    ; $53e2: $46
    add b                                         ; $53e3: $80
    add hl, sp                                    ; $53e4: $39
    cp c                                          ; $53e5: $b9
    pop hl                                        ; $53e6: $e1
    add b                                         ; $53e7: $80
    ld b, [hl]                                    ; $53e8: $46
    add a                                         ; $53e9: $87
    ld b, [hl]                                    ; $53ea: $46
    adc h                                         ; $53eb: $8c
    ld a, l                                       ; $53ec: $7d
    ld [hl], a                                    ; $53ed: $77
    ld h, d                                       ; $53ee: $62
    nop                                           ; $53ef: $00
    sbc c                                         ; $53f0: $99
    adc h                                         ; $53f1: $8c
    ld b, c                                       ; $53f2: $41
    add l                                         ; $53f3: $85
    ld h, l                                       ; $53f4: $65
    ld [hl], $7f                                  ; $53f5: $36 $7f
    ld l, b                                       ; $53f7: $68
    ld h, [hl]                                    ; $53f8: $66
    dec [hl]                                      ; $53f9: $35
    add hl, sp                                    ; $53fa: $39
    xor [hl]                                      ; $53fb: $ae
    ld b, [hl]                                    ; $53fc: $46
    xor a                                         ; $53fd: $af
    ld sp, hl                                     ; $53fe: $f9
    and b                                         ; $53ff: $a0
    rrca                                          ; $5400: $0f
    inc a                                         ; $5401: $3c
    ld b, h                                       ; $5402: $44
    ld a, c                                       ; $5403: $79
    adc l                                         ; $5404: $8d
    xor a                                         ; $5405: $af
    ld h, b                                       ; $5406: $60
    halt                                          ; $5407: $76
    ld h, b                                       ; $5408: $60
    ld [hl], $60                                  ; $5409: $36 $60
    nop                                           ; $540b: $00
    sbc b                                         ; $540c: $98
    db $f4                                        ; $540d: $f4
    adc h                                         ; $540e: $8c
    ld b, c                                       ; $540f: $41
    add hl, bc                                    ; $5410: $09
    ld h, h                                       ; $5411: $64
    adc a                                         ; $5412: $8f
    add h                                         ; $5413: $84
    add b                                         ; $5414: $80
    ld l, d                                       ; $5415: $6a
    dec [hl]                                      ; $5416: $35
    ld b, b                                       ; $5417: $40
    xor a                                         ; $5418: $af
    dec de                                        ; $5419: $1b
    ld b, [hl]                                    ; $541a: $46
    ld b, l                                       ; $541b: $45
    ld sp, hl                                     ; $541c: $f9
    and b                                         ; $541d: $a0
    ld a, [hl-]                                   ; $541e: $3a
    ld b, l                                       ; $541f: $45
    cp [hl]                                       ; $5420: $be
    and d                                         ; $5421: $a2
    cp $a0                                        ; $5422: $fe $a0
    ei                                            ; $5424: $fb
    ld h, e                                       ; $5425: $63
    ld h, b                                       ; $5426: $60
    nop                                           ; $5427: $00
    ld d, h                                       ; $5428: $54
    adc $20                                       ; $5429: $ce $20
    adc h                                         ; $542b: $8c
    ld b, d                                       ; $542c: $42
    ld d, c                                       ; $542d: $51
    and c                                         ; $542e: $a1
    add e                                         ; $542f: $83
    and b                                         ; $5430: $a0
    ld l, h                                       ; $5431: $6c
    ld l, l                                       ; $5432: $6d
    pop bc                                        ; $5433: $c1
    ret nz                                        ; $5434: $c0

    or d                                          ; $5435: $b2
    dec sp                                        ; $5436: $3b
    and d                                         ; $5437: $a2
    ld a, $be                                     ; $5438: $3e $be
    and [hl]                                      ; $543a: $a6
    cp e                                          ; $543b: $bb
    ld h, b                                       ; $543c: $60
    sub $d7                                       ; $543d: $d6 $d7
    nop                                           ; $543f: $00
    ld d, l                                       ; $5440: $55
    jp nc, $d3f9                                  ; $5441: $d2 $f9 $d3

    ld [$4262], sp                                ; $5444: $08 $62 $42
    and c                                         ; $5447: $a1
    scf                                           ; $5448: $37
    jr c, jr_070_5480                             ; $5449: $38 $35

    ld l, h                                       ; $544b: $6c
    ld l, a                                       ; $544c: $6f

jr_070_544d:
    push de                                       ; $544d: $d5
    ld l, [hl]                                    ; $544e: $6e
    ld b, c                                       ; $544f: $41
    add b                                         ; $5450: $80
    xor [hl]                                      ; $5451: $ae
    ld a, c                                       ; $5452: $79
    pop bc                                        ; $5453: $c1
    ld a, [hl-]                                   ; $5454: $3a
    cp [hl]                                       ; $5455: $be
    xor c                                         ; $5456: $a9
    ret c                                         ; $5457: $d8

    reti                                          ; $5458: $d9


    ld a, $00                                     ; $5459: $3e $00
    ld d, l                                       ; $545b: $55
    call nc, $a1d5                                ; $545c: $d4 $d5 $a1
    ld b, [hl]                                    ; $545f: $46
    xor a                                         ; $5460: $af
    adc b                                         ; $5461: $88
    ld h, b                                       ; $5462: $60
    ld c, h                                       ; $5463: $4c
    pop hl                                        ; $5464: $e1
    ld [hl], a                                    ; $5465: $77
    ld l, h                                       ; $5466: $6c
    ld [hl], d                                    ; $5467: $72
    ld [hl], b                                    ; $5468: $70
    pop bc                                        ; $5469: $c1
    ldh [$35], a                                  ; $546a: $e0 $35
    add hl, sp                                    ; $546c: $39
    xor a                                         ; $546d: $af
    cp e                                          ; $546e: $bb
    add d                                         ; $546f: $82
    ld sp, $7d36                                  ; $5470: $31 $36 $7d
    and c                                         ; $5473: $a1
    ld l, h                                       ; $5474: $6c
    and b                                         ; $5475: $a0
    inc a                                         ; $5476: $3c
    ld h, c                                       ; $5477: $61
    jp c, Jump_000_00db                           ; $5478: $da $db $00

    ld d, h                                       ; $547b: $54
    add l                                         ; $547c: $85
    and d                                         ; $547d: $a2
    ld b, $16                                     ; $547e: $06 $16

jr_070_5480:
    ld h, b                                       ; $5480: $60
    add d                                         ; $5481: $82
    add e                                         ; $5482: $83
    pop bc                                        ; $5483: $c1
    ldh [$83], a                                  ; $5484: $e0 $83
    pop hl                                        ; $5486: $e1
    ld b, b                                       ; $5487: $40
    jp $81ba                                      ; $5488: $c3 $ba $81


    jr c, jr_070_544d                             ; $548b: $38 $c0

    rlca                                          ; $548d: $07
    add l                                         ; $548e: $85
    add a                                         ; $548f: $87
    adc b                                         ; $5490: $88
    dec [hl]                                      ; $5491: $35
    add b                                         ; $5492: $80
    cp [hl]                                       ; $5493: $be
    and c                                         ; $5494: $a1
    ld a, [$044e]                                 ; $5495: $fa $4e $04
    call nz, $a5c6                                ; $5498: $c4 $c6 $a5
    jp nc, Jump_070_60c8                          ; $549b: $d2 $c8 $60

    ld [hl], c                                    ; $549e: $71
    add e                                         ; $549f: $83
    ld [c], a                                     ; $54a0: $e2
    ld b, b                                       ; $54a1: $40
    jp nz, $b846                                  ; $54a2: $c2 $46 $b8

    and b                                         ; $54a5: $a0
    ld h, d                                       ; $54a6: $62
    ld h, e                                       ; $54a7: $63
    nop                                           ; $54a8: $00
    cp d                                          ; $54a9: $ba
    ld hl, $633c                                  ; $54aa: $21 $3c $63
    dec [hl]                                      ; $54ad: $35
    ld [hl+], a                                   ; $54ae: $22
    nop                                           ; $54af: $00
    ld d, c                                       ; $54b0: $51
    sub e                                         ; $54b1: $93
    ld bc, $6248                                  ; $54b2: $01 $48 $62
    ret z                                         ; $54b5: $c8

    ld h, b                                       ; $54b6: $60
    add [hl]                                      ; $54b7: $86
    add d                                         ; $54b8: $82
    ld a, d                                       ; $54b9: $7a
    inc bc                                        ; $54ba: $03
    add d                                         ; $54bb: $82
    xor [hl]                                      ; $54bc: $ae
    ld a, [hl-]                                   ; $54bd: $3a
    add b                                         ; $54be: $80
    ld h, d                                       ; $54bf: $62
    ld h, a                                       ; $54c0: $67
    dec [hl]                                      ; $54c1: $35
    add hl, sp                                    ; $54c2: $39
    ei                                            ; $54c3: $fb
    inc hl                                        ; $54c4: $23
    inc bc                                        ; $54c5: $03
    xor [hl]                                      ; $54c6: $ae
    sbc [hl]                                      ; $54c7: $9e
    ld [hl], b                                    ; $54c8: $70
    nop                                           ; $54c9: $00
    ld h, c                                       ; $54ca: $61
    nop                                           ; $54cb: $00
    nop                                           ; $54cc: $00
    ld d, c                                       ; $54cd: $51
    adc d                                         ; $54ce: $8a
    inc h                                         ; $54cf: $24
    add l                                         ; $54d0: $85
    ret nz                                        ; $54d1: $c0

    ld b, a                                       ; $54d2: $47
    add e                                         ; $54d3: $83
    ccf                                           ; $54d4: $3f
    dec [hl]                                      ; $54d5: $35
    dec sp                                        ; $54d6: $3b
    jr c, jr_070_5510                             ; $54d7: $38 $37

    ld b, l                                       ; $54d9: $45
    ld b, [hl]                                    ; $54da: $46
    nop                                           ; $54db: $00
    ldh [$c1], a                                  ; $54dc: $e0 $c1
    ldh [rDIV], a                                 ; $54de: $e0 $04
    ld a, [$fb60]                                 ; $54e0: $fa $60 $fb
    ld [hl+], a                                   ; $54e3: $22
    xor a                                         ; $54e4: $af
    ld [hl], $21                                  ; $54e5: $36 $21
    ld sp, $0000                                  ; $54e7: $31 $00 $00
    ld c, a                                       ; $54ea: $4f
    ld c, b                                       ; $54eb: $48
    ld b, c                                       ; $54ec: $41
    ret                                           ; $54ed: $c9


    jr nz, jr_070_554c                            ; $54ee: $20 $5c

    ld d, $40                                     ; $54f0: $16 $40
    pop bc                                        ; $54f2: $c1
    db $e4                                        ; $54f3: $e4
    jr c, @+$39                                   ; $54f4: $38 $37

    ld b, e                                       ; $54f6: $43
    ld b, e                                       ; $54f7: $43
    ldh [$ae], a                                  ; $54f8: $e0 $ae
    ld b, c                                       ; $54fa: $41
    ldh [rTIMA], a                                ; $54fb: $e0 $05
    ld l, c                                       ; $54fd: $69
    cp d                                          ; $54fe: $ba
    ld h, c                                       ; $54ff: $61
    xor [hl]                                      ; $5500: $ae
    add d                                         ; $5501: $82
    and b                                         ; $5502: $a0
    and h                                         ; $5503: $a4
    ret nz                                        ; $5504: $c0

    cp a                                          ; $5505: $bf
    jp Jump_070_5000                              ; $5506: $c3 $00 $50


    ld c, d                                       ; $5509: $4a
    inc hl                                        ; $550a: $23
    db $fc                                        ; $550b: $fc
    ret                                           ; $550c: $c9


    ld hl, $8308                                  ; $550d: $21 $08 $83

jr_070_5510:
    ld [hl], $03                                  ; $5510: $36 $03
    inc b                                         ; $5512: $04
    rlca                                          ; $5513: $07
    inc b                                         ; $5514: $04
    inc bc                                        ; $5515: $03
    ld c, d                                       ; $5516: $4a
    ret z                                         ; $5517: $c8

    jr nz, jr_070_5553                            ; $5518: $20 $39

    ret nz                                        ; $551a: $c0

    ld [c], a                                     ; $551b: $e2
    ld a, [hl-]                                   ; $551c: $3a
    inc bc                                        ; $551d: $03
    jp nz, $206b                                  ; $551e: $c2 $6b $20

    sbc [hl]                                      ; $5521: $9e
    cp $50                                        ; $5522: $fe $50
    db $e4                                        ; $5524: $e4
    nop                                           ; $5525: $00
    ld b, c                                       ; $5526: $41
    ld b, [hl]                                    ; $5527: $46
    ld h, c                                       ; $5528: $61
    and c                                         ; $5529: $a1
    dec bc                                        ; $552a: $0b
    ld hl, $634a                                  ; $552b: $21 $4a $63
    ld [hl], $02                                  ; $552e: $36 $02
    rrca                                          ; $5530: $0f
    rra                                           ; $5531: $1f
    inc b                                         ; $5532: $04
    add hl, bc                                    ; $5533: $09
    inc b                                         ; $5534: $04
    rrca                                          ; $5535: $0f
    ld [bc], a                                    ; $5536: $02
    ldh a, [$e1]                                  ; $5537: $f0 $e1
    add b                                         ; $5539: $80
    pop hl                                        ; $553a: $e1
    or a                                          ; $553b: $b7
    add b                                         ; $553c: $80
    ld h, [hl]                                    ; $553d: $66
    cp d                                          ; $553e: $ba
    ld [hl+], a                                   ; $553f: $22
    ld b, [hl]                                    ; $5540: $46
    sbc [hl]                                      ; $5541: $9e
    cp $50                                        ; $5542: $fe $50
    ld [$d283], sp                                ; $5544: $08 $83 $d2
    db $d3                                        ; $5547: $d3
    ld c, d                                       ; $5548: $4a
    ld [hl+], a                                   ; $5549: $22
    ld a, $c3                                     ; $554a: $3e $c3

jr_070_554c:
    pop bc                                        ; $554c: $c1
    jr c, jr_070_5586                             ; $554d: $38 $37

    ld [bc], a                                    ; $554f: $02
    rrca                                          ; $5550: $0f
    ld [bc], a                                    ; $5551: $02
    ld a, l                                       ; $5552: $7d

jr_070_5553:
    ld b, b                                       ; $5553: $40
    ld a, [$06e0]                                 ; $5554: $fa $e0 $06
    ret nz                                        ; $5557: $c0

    pop hl                                        ; $5558: $e1
    xor h                                         ; $5559: $ac
    xor h                                         ; $555a: $ac
    or a                                          ; $555b: $b7
    add b                                         ; $555c: $80
    cp d                                          ; $555d: $ba
    inc h                                         ; $555e: $24
    cp $51                                        ; $555f: $fe $51
    jr nc, jr_070_5566                            ; $5561: $30 $03

    ld c, e                                       ; $5563: $4b
    ld [bc], a                                    ; $5564: $02
    rst $30                                       ; $5565: $f7

jr_070_5566:
    xor [hl]                                      ; $5566: $ae
    ld b, [hl]                                    ; $5567: $46
    ld b, b                                       ; $5568: $40
    ld b, h                                       ; $5569: $44
    ld [c], a                                     ; $556a: $e2
    rrca                                          ; $556b: $0f
    ld b, $79                                     ; $556c: $06 $79
    ld a, [hl]                                    ; $556e: $7e
    ei                                            ; $556f: $fb
    ld b, e                                       ; $5570: $43
    ld a, a                                       ; $5571: $7f

jr_070_5572:
    cp a                                          ; $5572: $bf
    pop hl                                        ; $5573: $e1
    ld b, h                                       ; $5574: $44
    inc a                                         ; $5575: $3c
    ld l, c                                       ; $5576: $69
    xor l                                         ; $5577: $ad
    xor l                                         ; $5578: $ad
    add e                                         ; $5579: $83
    dec [hl]                                      ; $557a: $35
    add hl, sp                                    ; $557b: $39
    cp d                                          ; $557c: $ba
    inc h                                         ; $557d: $24
    ld a, $61                                     ; $557e: $3e $61
    nop                                           ; $5580: $00
    ld d, h                                       ; $5581: $54
    ld b, [hl]                                    ; $5582: $46
    ld b, d                                       ; $5583: $42
    ret nc                                        ; $5584: $d0

    add c                                         ; $5585: $81

jr_070_5586:
    ld [hl], $ff                                  ; $5586: $36 $ff
    dec b                                         ; $5588: $05
    rrca                                          ; $5589: $0f
    sbc b                                         ; $558a: $98
    ld c, $05                                     ; $558b: $0e $05
    add b                                         ; $558d: $80
    dec l                                         ; $558e: $2d
    inc l                                         ; $558f: $2c
    rst $38                                       ; $5590: $ff
    cp l                                          ; $5591: $bd
    ld a, a                                       ; $5592: $7f
    ld a, l                                       ; $5593: $7d
    ld b, $0e                                     ; $5594: $06 $0e
    dec b                                         ; $5596: $05
    ld a, [hl-]                                   ; $5597: $3a
    ld l, e                                       ; $5598: $6b
    rst $00                                       ; $5599: $c7
    ld l, h                                       ; $559a: $6c
    dec [hl]                                      ; $559b: $35
    inc a                                         ; $559c: $3c
    pop bc                                        ; $559d: $c1
    add sp, $00                                   ; $559e: $e8 $00
    ld d, l                                       ; $55a0: $55
    add [hl]                                      ; $55a1: $86
    ld h, l                                       ; $55a2: $65
    ld b, l                                       ; $55a3: $45
    ld b, l                                       ; $55a4: $45
    ei                                            ; $55a5: $fb
    ld b, $9a                                     ; $55a6: $06 $9a
    ld b, d                                       ; $55a8: $42
    ldh [$8d], a                                  ; $55a9: $e0 $8d
    ld [hl-], a                                   ; $55ab: $32
    jr nz, jr_070_55e0                            ; $55ac: $20 $32

    ld b, [hl]                                    ; $55ae: $46
    rra                                           ; $55af: $1f
    add c                                         ; $55b0: $81
    dec b                                         ; $55b1: $05
    sbc b                                         ; $55b2: $98
    ld b, $39                                     ; $55b3: $06 $39
    cp e                                          ; $55b5: $bb
    jr nz, jr_070_5572                            ; $55b6: $20 $ba

    ld hl, $217a                                  ; $55b8: $21 $7a $21
    ret nc                                        ; $55bb: $d0

    ccf                                           ; $55bc: $3f
    ld h, c                                       ; $55bd: $61
    nop                                           ; $55be: $00
    ld d, l                                       ; $55bf: $55
    ret nz                                        ; $55c0: $c0

    and l                                         ; $55c1: $a5
    ld b, e                                       ; $55c2: $43
    ldh [$98], a                                  ; $55c3: $e0 $98
    ld b, d                                       ; $55c5: $42
    ldh [rLYC], a                                 ; $55c6: $e0 $45
    ld l, $7f                                     ; $55c8: $2e $7f
    jr nz, jr_070_55fa                            ; $55ca: $20 $2e

    add e                                         ; $55cc: $83
    add h                                         ; $55cd: $84
    dec b                                         ; $55ce: $05
    sbc c                                         ; $55cf: $99
    ld [$a2b2], sp                                ; $55d0: $08 $b2 $a2
    nop                                           ; $55d3: $00
    cp d                                          ; $55d4: $ba
    jr nz, jr_070_5604                            ; $55d5: $20 $2d

    ld bc, $613f                                  ; $55d7: $01 $3f $61

jr_070_55da:
    nop                                           ; $55da: $00
    sub h                                         ; $55db: $94
    adc c                                         ; $55dc: $89
    ld bc, $01c8                                  ; $55dd: $01 $c8 $01

jr_070_55e0:
    ld b, e                                       ; $55e0: $43
    ldh [rSCY], a                                 ; $55e1: $e0 $42
    pop hl                                        ; $55e3: $e1
    rst $38                                       ; $55e4: $ff
    ld b, [hl]                                    ; $55e5: $46
    add hl, sp                                    ; $55e6: $39
    ld hl, $2a26                                  ; $55e7: $21 $26 $2a
    adc d                                         ; $55ea: $8a
    add l                                         ; $55eb: $85
    ld b, $03                                     ; $55ec: $06 $03
    sbc e                                         ; $55ee: $9b
    ld [$c0ef], sp                                ; $55ef: $08 $ef $c0
    scf                                           ; $55f2: $37
    and e                                         ; $55f3: $a3
    and h                                         ; $55f4: $a4
    and b                                         ; $55f5: $a0
    db $fd                                        ; $55f6: $fd
    inc b                                         ; $55f7: $04
    nop                                           ; $55f8: $00
    ld d, b                                       ; $55f9: $50

jr_070_55fa:
    jr z, jr_070_563d                             ; $55fa: $28 $41

jr_070_55fc:
    cp $ff                                        ; $55fc: $fe $ff
    and b                                         ; $55fe: $a0
    xor [hl]                                      ; $55ff: $ae
    ld b, [hl]                                    ; $5600: $46
    ld b, $98                                     ; $5601: $06 $98
    sub a                                         ; $5603: $97

jr_070_5604:
    sbc b                                         ; $5604: $98
    ld [$46fb], sp                                ; $5605: $08 $fb $46

Call_070_5608:
    add b                                         ; $5608: $80
    add e                                         ; $5609: $83
    jr nz, jr_070_5646                            ; $560a: $20 $3a

    ld b, l                                       ; $560c: $45
    add c                                         ; $560d: $81
    dec b                                         ; $560e: $05
    ld c, $00                                     ; $560f: $0e $00
    ld b, b                                       ; $5611: $40
    ldh [$f0], a                                  ; $5612: $e0 $f0
    and e                                         ; $5614: $a3
    ld [hl], $61                                  ; $5615: $36 $61
    ld a, a                                       ; $5617: $7f
    jr nz, jr_070_55da                            ; $5618: $20 $c0

    ld hl, $5100                                  ; $561a: $21 $00 $51
    jr z, @+$43                                   ; $561d: $28 $41

    add b                                         ; $561f: $80
    and b                                         ; $5620: $a0
    rst $28                                       ; $5621: $ef
    xor a                                         ; $5622: $af
    ld b, [hl]                                    ; $5623: $46
    ld [$8098], sp                                ; $5624: $08 $98 $80
    pop hl                                        ; $5627: $e1
    add d                                         ; $5628: $82
    add e                                         ; $5629: $83
    inc a                                         ; $562a: $3c
    rra                                           ; $562b: $1f
    dec [hl]                                      ; $562c: $35
    ld a, [hl-]                                   ; $562d: $3a
    add e                                         ; $562e: $83
    add h                                         ; $562f: $84
    ld a, [bc]                                    ; $5630: $0a
    or a                                          ; $5631: $b7
    ret nz                                        ; $5632: $c0

    ld hl, sp+$24                                 ; $5633: $f8 $24
    dec [hl]                                      ; $5635: $35
    and b                                         ; $5636: $a0
    or b                                          ; $5637: $b0
    ld a, e                                       ; $5638: $7b
    jr nz, jr_070_55fc                            ; $5639: $20 $c1

    ld h, c                                       ; $563b: $61
    nop                                           ; $563c: $00

jr_070_563d:
    db $d3                                        ; $563d: $d3
    jr z, jr_070_5680                             ; $563e: $28 $40

    and b                                         ; $5640: $a0
    and c                                         ; $5641: $a1
    ld e, e                                       ; $5642: $5b
    ld h, b                                       ; $5643: $60
    ld b, $9f                                     ; $5644: $06 $9f

jr_070_5646:
    ld bc, $9800                                  ; $5646: $01 $00 $98
    sbc b                                         ; $5649: $98
    ld b, $7c                                     ; $564a: $06 $7c
    add c                                         ; $564c: $81
    add l                                         ; $564d: $85
    nop                                           ; $564e: $00
    ld a, [bc]                                    ; $564f: $0a
    ret z                                         ; $5650: $c8

    ld bc, $b9e4                                  ; $5651: $01 $e4 $b9
    inc bc                                        ; $5654: $03
    inc a                                         ; $5655: $3c
    ld h, b                                       ; $5656: $60
    sbc [hl]                                      ; $5657: $9e
    ld [bc], a                                    ; $5658: $02
    xor a                                         ; $5659: $af
    nop                                           ; $565a: $00
    ld b, [hl]                                    ; $565b: $46
    ret nc                                        ; $565c: $d0

    pop de                                        ; $565d: $d1
    inc a                                         ; $565e: $3c
    ld bc, $4d81                                  ; $565f: $01 $81 $4d
    ldh [$97], a                                  ; $5662: $e0 $97
    sbc b                                         ; $5664: $98
    rrca                                          ; $5665: $0f
    ld [bc], a                                    ; $5666: $02
    ld b, b                                       ; $5667: $40
    ld [c], a                                     ; $5668: $e2
    inc sp                                        ; $5669: $33
    ldh [$0e], a                                  ; $566a: $e0 $0e
    ld bc, $35e3                                  ; $566c: $01 $e3 $35
    dec [hl]                                      ; $566f: $35
    ld b, b                                       ; $5670: $40
    ld h, [hl]                                    ; $5671: $66
    add d                                         ; $5672: $82
    ld a, $00                                     ; $5673: $3e $00
    ld [bc], a                                    ; $5675: $02
    xor [hl]                                      ; $5676: $ae
    nop                                           ; $5677: $00
    add [hl]                                      ; $5678: $86
    db $ec                                        ; $5679: $ec
    ld a, a                                       ; $567a: $7f
    and b                                         ; $567b: $a0
    ld e, e                                       ; $567c: $5b
    pop bc                                        ; $567d: $c1
    ld [bc], a                                    ; $567e: $02
    rrca                                          ; $567f: $0f

jr_070_5680:
    cp $c0                                        ; $5680: $fe $c0
    ld c, $05                                     ; $5682: $0e $05
    ld a, $0f                                     ; $5684: $3e $0f
    dec [hl]                                      ; $5686: $35
    add hl, sp                                    ; $5687: $39
    ld [bc], a                                    ; $5688: $02
    rlca                                          ; $5689: $07
    halt                                          ; $568a: $76
    ret nz                                        ; $568b: $c0

    ld sp, hl                                     ; $568c: $f9
    dec b                                         ; $568d: $05
    ld bc, $00c5                                  ; $568e: $01 $c5 $00
    rst $10                                       ; $5691: $d7
    ret z                                         ; $5692: $c8

    ld b, $41                                     ; $5693: $06 $41
    sbc l                                         ; $5695: $9d
    add c                                         ; $5696: $81
    cp [hl]                                       ; $5697: $be
    ret nz                                        ; $5698: $c0

jr_070_5699:
    sub a                                         ; $5699: $97
    add hl, bc                                    ; $569a: $09
    ret nz                                        ; $569b: $c0

    db $fd                                        ; $569c: $fd
    add b                                         ; $569d: $80
    ld bc, $4000                                  ; $569e: $01 $00 $40
    ld bc, $b7e5                                  ; $56a1: $01 $e5 $b7
    ld b, b                                       ; $56a4: $40
    jp nz, $83a1                                  ; $56a5: $c2 $a1 $83

    ld h, c                                       ; $56a8: $61
    nop                                           ; $56a9: $00
    sub $7f                                       ; $56aa: $d6 $7f
    and h                                         ; $56ac: $a4
    ld b, [hl]                                    ; $56ad: $46
    adc e                                         ; $56ae: $8b
    ret nz                                        ; $56af: $c0

    adc a                                         ; $56b0: $8f
    sbc b                                         ; $56b1: $98
    sbc b                                         ; $56b2: $98
    rrca                                          ; $56b3: $0f
    inc b                                         ; $56b4: $04
    ld sp, hl                                     ; $56b5: $f9
    and b                                         ; $56b6: $a0
    jr c, jr_070_5699                             ; $56b7: $38 $e0

    dec sp                                        ; $56b9: $3b
    ld [bc], a                                    ; $56ba: $02
    dec sp                                        ; $56bb: $3b
    ret nz                                        ; $56bc: $c0

    pop bc                                        ; $56bd: $c1
    ld [c], a                                     ; $56be: $e2
    jp nz, $83a0                                  ; $56bf: $c2 $a0 $83

    ld h, c                                       ; $56c2: $61
    nop                                           ; $56c3: $00
    ld d, a                                       ; $56c4: $57
    db $fc                                        ; $56c5: $fc
    ld h, b                                       ; $56c6: $60
    ld bc, $0242                                  ; $56c7: $01 $42 $02
    dec c                                         ; $56ca: $0d
    rst $38                                       ; $56cb: $ff
    nop                                           ; $56cc: $00
    ld bc, $9998                                  ; $56cd: $01 $98 $99
    sbc d                                         ; $56d0: $9a
    sbc c                                         ; $56d1: $99
    sbc b                                         ; $56d2: $98
    dec c                                         ; $56d3: $0d
    pop bc                                        ; $56d4: $c1
    ld [bc], a                                    ; $56d5: $02
    jp nz, $f643                                  ; $56d6: $c2 $43 $f6

    ld h, c                                       ; $56d9: $61
    ld b, e                                       ; $56da: $43
    ld h, d                                       ; $56db: $62
    add e                                         ; $56dc: $83
    ld h, d                                       ; $56dd: $62
    nop                                           ; $56de: $00
    ld d, [hl]                                    ; $56df: $56
    ret c                                         ; $56e0: $d8

    reti                                          ; $56e1: $d9


    cp $fe                                        ; $56e2: $fe $fe
    inc hl                                        ; $56e4: $23
    xor [hl]                                      ; $56e5: $ae
    inc bc                                        ; $56e6: $03
    inc b                                         ; $56e7: $04
    dec c                                         ; $56e8: $0d
    sbc e                                         ; $56e9: $9b
    dec c                                         ; $56ea: $0d
    rlca                                          ; $56eb: $07
    add b                                         ; $56ec: $80
    nop                                           ; $56ed: $00
    add c                                         ; $56ee: $81
    cp e                                          ; $56ef: $bb
    nop                                           ; $56f0: $00
    ld a, d                                       ; $56f1: $7a
    ld h, c                                       ; $56f2: $61
    ld b, h                                       ; $56f3: $44
    ld h, d                                       ; $56f4: $62
    ld b, d                                       ; $56f5: $42
    ld [hl+], a                                   ; $56f6: $22
    ret c                                         ; $56f7: $d8

    ld h, c                                       ; $56f8: $61
    nop                                           ; $56f9: $00
    ld d, l                                       ; $56fa: $55
    jp c, $db39                                   ; $56fb: $da $39 $db

    ld b, b                                       ; $56fe: $40
    inc hl                                        ; $56ff: $23
    add hl, sp                                    ; $5700: $39
    add b                                         ; $5701: $80
    inc bc                                        ; $5702: $03
    add hl, bc                                    ; $5703: $09
    inc bc                                        ; $5704: $03
    cp e                                          ; $5705: $bb
    inc bc                                        ; $5706: $03
    jp nz, $80e5                                  ; $5707: $c2 $e5 $80

    jp $4263                                      ; $570a: $c3 $63 $42


    ld b, c                                       ; $570d: $41
    cp $0f                                        ; $570e: $fe $0f
    ld [hl-], a                                   ; $5710: $32
    ld h, l                                       ; $5711: $65
    dec a                                         ; $5712: $3d
    and c                                         ; $5713: $a1
    ld b, c                                       ; $5714: $41
    dec b                                         ; $5715: $05
    set 4, h                                      ; $5716: $cb $e4
    ld b, l                                       ; $5718: $45
    nop                                           ; $5719: $00
    jp nz, $82e5                                  ; $571a: $c2 $e5 $82

    ld b, h                                       ; $571d: $44
    ld b, d                                       ; $571e: $42
    ld b, d                                       ; $571f: $42
    nop                                           ; $5720: $00
    call nc, Call_000_22fc                        ; $5721: $d4 $fc $22
    ld b, c                                       ; $5724: $41
    ld [bc], a                                    ; $5725: $02
    ld a, b                                       ; $5726: $78
    ld h, c                                       ; $5727: $61
    db $fd                                        ; $5728: $fd
    pop af                                        ; $5729: $f1
    jr jr_070_576e                                ; $572a: $18 $42

    ld b, e                                       ; $572c: $43
    nop                                           ; $572d: $00
    call nc, Call_000_01fa                        ; $572e: $d4 $fa $01
    sub $d7                                       ; $5731: $d6 $d7
    cp e                                          ; $5733: $bb
    add d                                         ; $5734: $82
    ld a, b                                       ; $5735: $78
    ld h, c                                       ; $5736: $61
    ret nz                                        ; $5737: $c0

    di                                            ; $5738: $f3
    nop                                           ; $5739: $00
    sbc h                                         ; $573a: $9c
    add b                                         ; $573b: $80
    nop                                           ; $573c: $00
    push de                                       ; $573d: $d5
    ld a, [$ba01]                                 ; $573e: $fa $01 $ba
    ld b, e                                       ; $5741: $43
    add d                                         ; $5742: $82
    db $f4                                        ; $5743: $f4
    ret nz                                        ; $5744: $c0

    and h                                         ; $5745: $a4
    nop                                           ; $5746: $00
    sub l                                         ; $5747: $95
    inc l                                         ; $5748: $2c
    ld b, c                                       ; $5749: $41
    cp $ba                                        ; $574a: $fe $ba
    ld b, c                                       ; $574c: $41
    sbc [hl]                                      ; $574d: $9e
    ld b, [hl]                                    ; $574e: $46
    ld b, l                                       ; $574f: $45
    ld b, c                                       ; $5750: $41
    ld b, c                                       ; $5751: $41
    scf                                           ; $5752: $37
    scf                                           ; $5753: $37
    ret nz                                        ; $5754: $c0

    db $fc                                        ; $5755: $fc
    rst $28                                       ; $5756: $ef
    ld a, [hl]                                    ; $5757: $7e
    add b                                         ; $5758: $80
    cp [hl]                                       ; $5759: $be
    and c                                         ; $575a: $a1
    nop                                           ; $575b: $00
    rst $10                                       ; $575c: $d7
    cp [hl]                                       ; $575d: $be
    and c                                         ; $575e: $a1
    dec sp                                        ; $575f: $3b
    and c                                         ; $5760: $a1
    ld b, d                                       ; $5761: $42
    and h                                         ; $5762: $a4
    dec l                                         ; $5763: $2d
    ld h, h                                       ; $5764: $64
    rst $38                                       ; $5765: $ff
    ldh a, [$a5]                                  ; $5766: $f0 $a5
    ld b, d                                       ; $5768: $42
    ret nz                                        ; $5769: $c0

    add b                                         ; $576a: $80
    and c                                         ; $576b: $a1
    ld b, c                                       ; $576c: $41
    ld [hl+], a                                   ; $576d: $22

jr_070_576e:
    nop                                           ; $576e: $00
    call nc, $fcfe                                ; $576f: $d4 $fe $fc
    ld h, c                                       ; $5772: $61
    call nc, $9ed5                                ; $5773: $d4 $d5 $9e
    ld b, [hl]                                    ; $5776: $46
    ld b, b                                       ; $5777: $40
    ld l, c                                       ; $5778: $69
    and e                                         ; $5779: $a3
    rla                                           ; $577a: $17
    dec [hl]                                      ; $577b: $35
    dec [hl]                                      ; $577c: $35
    and e                                         ; $577d: $a3
    db $fc                                        ; $577e: $fc
    db $ed                                        ; $577f: $ed
    ld l, d                                       ; $5780: $6a
    cp l                                          ; $5781: $bd
    add c                                         ; $5782: $81
    add c                                         ; $5783: $81
    ld b, c                                       ; $5784: $41
    nop                                           ; $5785: $00
    sub $64                                       ; $5786: $d6 $64
    db $e3                                        ; $5788: $e3
    and d                                         ; $5789: $a2
    db $fc                                        ; $578a: $fc
    nop                                           ; $578b: $00
    ld b, d                                       ; $578c: $42
    adc [hl]                                      ; $578d: $8e
    ld hl, $eefd                                  ; $578e: $21 $fd $ee
    ld l, d                                       ; $5791: $6a
    ld b, d                                       ; $5792: $42
    cp a                                          ; $5793: $bf
    add h                                         ; $5794: $84
    jr c, jr_070_5797                             ; $5795: $38 $00

jr_070_5797:
    rst $10                                       ; $5797: $d7
    db $e3                                        ; $5798: $e3
    and b                                         ; $5799: $a0
    cp d                                          ; $579a: $ba
    jr nz, @+$48                                  ; $579b: $20 $46

    ld b, b                                       ; $579d: $40
    ld l, e                                       ; $579e: $6b
    inc bc                                        ; $579f: $03
    add b                                         ; $57a0: $80
    db $fd                                        ; $57a1: $fd
    xor $e3                                       ; $57a2: $ee $e3
    ld l, l                                       ; $57a4: $6d
    ld b, b                                       ; $57a5: $40
    ld b, c                                       ; $57a6: $41
    add c                                         ; $57a7: $81
    jr jr_070_57cb                                ; $57a8: $18 $21

    nop                                           ; $57aa: $00
    db $db                                        ; $57ab: $db
    sbc a                                         ; $57ac: $9f
    sbc h                                         ; $57ad: $9c
    ld b, l                                       ; $57ae: $45
    rst $18                                       ; $57af: $df
    scf                                           ; $57b0: $37
    dec a                                         ; $57b1: $3d
    jr c, @+$3a                                   ; $57b2: $38 $38

    dec a                                         ; $57b4: $3d
    db $fc                                        ; $57b5: $fc
    db $ed                                        ; $57b6: $ed
    xor [hl]                                      ; $57b7: $ae
    ld b, l                                       ; $57b8: $45
    ld a, b                                       ; $57b9: $78
    jp Jump_000_0004                              ; $57ba: $c3 $04 $00


    db $dd                                        ; $57bd: $dd
    ccf                                           ; $57be: $3f
    ret nz                                        ; $57bf: $c0

    ld b, l                                       ; $57c0: $45
    ld b, e                                       ; $57c1: $43
    ld b, e                                       ; $57c2: $43
    ld b, l                                       ; $57c3: $45
    db $fc                                        ; $57c4: $fc
    db $ed                                        ; $57c5: $ed
    sbc [hl]                                      ; $57c6: $9e
    add h                                         ; $57c7: $84
    ld bc, $d1d0                                  ; $57c8: $01 $d0 $d1

jr_070_57cb:
    jp c, Jump_000_00db                           ; $57cb: $da $db $00

    db $dd                                        ; $57ce: $dd
    cp $a0                                        ; $57cf: $fe $a0
    sbc l                                         ; $57d1: $9d
    add h                                         ; $57d2: $84
    rst $38                                       ; $57d3: $ff
    rst $20                                       ; $57d4: $e7
    di                                            ; $57d5: $f3
    and h                                         ; $57d6: $a4
    sbc h                                         ; $57d7: $9c
    db $ed                                        ; $57d8: $ed
    ldh [$c4], a                                  ; $57d9: $e0 $c4
    jr nz, jr_070_581d                            ; $57db: $20 $40

    add c                                         ; $57dd: $81
    nop                                           ; $57de: $00
    db $db                                        ; $57df: $db
    and b                                         ; $57e0: $a0
    ld [$4277], sp                                ; $57e1: $08 $77 $42
    cp $e7                                        ; $57e4: $fe $e7
    ld [hl], e                                    ; $57e6: $73
    pop hl                                        ; $57e7: $e1
    ld b, l                                       ; $57e8: $45
    ret z                                         ; $57e9: $c8

    call nz, $a262                                ; $57ea: $c4 $62 $a2
    nop                                           ; $57ed: $00
    sub b                                         ; $57ee: $90
    nop                                           ; $57ef: $00
    nop                                           ; $57f0: $00
    nop                                           ; $57f1: $00
    pop bc                                        ; $57f2: $c1
    nop                                           ; $57f3: $00
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
    nop                                           ; $57fe: $00
    nop                                           ; $57ff: $00
    ld bc, $fe80                                  ; $5800: $01 $80 $fe
    ldh [rIE], a                                  ; $5803: $e0 $ff
    rst $38                                       ; $5805: $ff
    rst $38                                       ; $5806: $ff
    rst $38                                       ; $5807: $ff
    rst $38                                       ; $5808: $ff
    add sp, $00                                   ; $5809: $e8 $00
    nop                                           ; $580b: $00
    nop                                           ; $580c: $00
    ld [bc], a                                    ; $580d: $02
    nop                                           ; $580e: $00
    inc d                                         ; $580f: $14
    rlca                                          ; $5810: $07
    ld [bc], a                                    ; $5811: $02
    ld bc, $0813                                  ; $5812: $01 $13 $08
    ld [bc], a                                    ; $5815: $02
    ld [bc], a                                    ; $5816: $02
    inc hl                                        ; $5817: $23
    ld [$0302], sp                                ; $5818: $08 $02 $03
    jr jr_070_5826                                ; $581b: $18 $09

jr_070_581d:
    ld [bc], a                                    ; $581d: $02
    inc b                                         ; $581e: $04
    dec h                                         ; $581f: $25
    add hl, bc                                    ; $5820: $09
    ld [bc], a                                    ; $5821: $02
    dec b                                         ; $5822: $05
    dec d                                         ; $5823: $15
    ld a, [bc]                                    ; $5824: $0a
    ld [bc], a                                    ; $5825: $02

jr_070_5826:
    ld b, $20                                     ; $5826: $06 $20
    dec c                                         ; $5828: $0d
    ld [bc], a                                    ; $5829: $02
    rlca                                          ; $582a: $07
    inc d                                         ; $582b: $14
    rrca                                          ; $582c: $0f
    ld [bc], a                                    ; $582d: $02
    ld [$0f23], sp                                ; $582e: $08 $23 $0f
    ld [bc], a                                    ; $5831: $02
    add hl, bc                                    ; $5832: $09
    jr z, jr_070_5844                             ; $5833: $28 $0f

    ld [bc], a                                    ; $5835: $02
    ld a, [bc]                                    ; $5836: $0a
    dec h                                         ; $5837: $25
    db $10                                        ; $5838: $10
    ld [bc], a                                    ; $5839: $02
    dec bc                                        ; $583a: $0b
    add hl, hl                                    ; $583b: $29
    db $10                                        ; $583c: $10
    ld [bc], a                                    ; $583d: $02
    inc c                                         ; $583e: $0c
    ld [de], a                                    ; $583f: $12
    ld de, $0d02                                  ; $5840: $11 $02 $0d
    inc h                                         ; $5843: $24

jr_070_5844:
    ld de, $0e02                                  ; $5844: $11 $02 $0e
    ld h, $15                                     ; $5847: $26 $15
    ld [bc], a                                    ; $5849: $02
    rrca                                          ; $584a: $0f
    dec e                                         ; $584b: $1d
    rla                                           ; $584c: $17
    ld [bc], a                                    ; $584d: $02
    db $10                                        ; $584e: $10
    dec de                                        ; $584f: $1b
    jr @+$04                                      ; $5850: $18 $02

    ld de, $1825                                  ; $5852: $11 $25 $18
    ld [bc], a                                    ; $5855: $02
    ld [de], a                                    ; $5856: $12
    daa                                           ; $5857: $27
    add hl, de                                    ; $5858: $19
    ld [bc], a                                    ; $5859: $02
    inc de                                        ; $585a: $13
    ld [de], a                                    ; $585b: $12
    ld a, [de]                                    ; $585c: $1a
    ld [bc], a                                    ; $585d: $02
    inc d                                         ; $585e: $14
    ld h, $1a                                     ; $585f: $26 $1a
    ld [bc], a                                    ; $5861: $02
    dec d                                         ; $5862: $15
    inc c                                         ; $5863: $0c
    dec de                                        ; $5864: $1b
    ld [bc], a                                    ; $5865: $02
    ld d, $1c                                     ; $5866: $16 $1c
    dec de                                        ; $5868: $1b
    ld [bc], a                                    ; $5869: $02
    rla                                           ; $586a: $17
    dec c                                         ; $586b: $0d
    inc e                                         ; $586c: $1c
    ld [bc], a                                    ; $586d: $02
    jr jr_070_588c                                ; $586e: $18 $1c

    rra                                           ; $5870: $1f
    ld [bc], a                                    ; $5871: $02
    add hl, de                                    ; $5872: $19
    ld a, [hl+]                                   ; $5873: $2a
    rra                                           ; $5874: $1f
    ld [bc], a                                    ; $5875: $02
    ld a, [de]                                    ; $5876: $1a
    dec c                                         ; $5877: $0d
    jr nz, @+$04                                  ; $5878: $20 $02

    dec de                                        ; $587a: $1b
    jr z, jr_070_589d                             ; $587b: $28 $20

    ld [bc], a                                    ; $587d: $02
    inc e                                         ; $587e: $1c
    ld a, [bc]                                    ; $587f: $0a
    ld hl, $1d02                                  ; $5880: $21 $02 $1d
    dec de                                        ; $5883: $1b
    ld hl, $1e02                                  ; $5884: $21 $02 $1e
    inc h                                         ; $5887: $24
    ld hl, $1f02                                  ; $5888: $21 $02 $1f
    add hl, hl                                    ; $588b: $29

jr_070_588c:
    ld hl, $2002                                  ; $588c: $21 $02 $20
    add hl, bc                                    ; $588f: $09
    inc hl                                        ; $5890: $23
    ld [bc], a                                    ; $5891: $02
    ld hl, $2420                                  ; $5892: $21 $20 $24
    ld [bc], a                                    ; $5895: $02
    ld [hl+], a                                   ; $5896: $22
    ld hl, $0224                                  ; $5897: $21 $24 $02
    inc hl                                        ; $589a: $23
    dec bc                                        ; $589b: $0b
    dec h                                         ; $589c: $25

jr_070_589d:
    ld [bc], a                                    ; $589d: $02
    inc h                                         ; $589e: $24
    ld h, $27                                     ; $589f: $26 $27
    ld [bc], a                                    ; $58a1: $02
    dec h                                         ; $58a2: $25
    add hl, hl                                    ; $58a3: $29
    add hl, hl                                    ; $58a4: $29
    ld [bc], a                                    ; $58a5: $02
    ld h, $0b                                     ; $58a6: $26 $0b
    ld a, [hl+]                                   ; $58a8: $2a
    ld [bc], a                                    ; $58a9: $02
    daa                                           ; $58aa: $27
    daa                                           ; $58ab: $27
    ld a, [hl+]                                   ; $58ac: $2a
    ld [bc], a                                    ; $58ad: $02
    jr z, jr_070_58da                             ; $58ae: $28 $2a

    ld a, [hl+]                                   ; $58b0: $2a
    ld [bc], a                                    ; $58b1: $02
    add hl, hl                                    ; $58b2: $29
    ld a, [bc]                                    ; $58b3: $0a
    dec hl                                        ; $58b4: $2b
    ld [bc], a                                    ; $58b5: $02
    ld a, [hl+]                                   ; $58b6: $2a
    add hl, hl                                    ; $58b7: $29
    dec hl                                        ; $58b8: $2b
    ld [bc], a                                    ; $58b9: $02
    dec hl                                        ; $58ba: $2b
    inc c                                         ; $58bb: $0c
    inc l                                         ; $58bc: $2c
    ld [bc], a                                    ; $58bd: $02
    inc l                                         ; $58be: $2c
    dec bc                                        ; $58bf: $0b
    ld l, $02                                     ; $58c0: $2e $02
    dec l                                         ; $58c2: $2d
    inc c                                         ; $58c3: $0c
    cpl                                           ; $58c4: $2f
    ld [bc], a                                    ; $58c5: $02
    ld l, $10                                     ; $58c6: $2e $10
    ld [hl-], a                                   ; $58c8: $32
    ld [bc], a                                    ; $58c9: $02
    cpl                                           ; $58ca: $2f
    ld h, $32                                     ; $58cb: $26 $32
    ld [bc], a                                    ; $58cd: $02
    jr nc, jr_070_58e1                            ; $58ce: $30 $11

    dec [hl]                                      ; $58d0: $35
    ld [bc], a                                    ; $58d1: $02
    ld sp, $3829                                  ; $58d2: $31 $29 $38
    ld [bc], a                                    ; $58d5: $02
    ld [hl-], a                                   ; $58d6: $32
    ld h, $3d                                     ; $58d7: $26 $3d
    rst $38                                       ; $58d9: $ff

jr_070_58da:
    rst $38                                       ; $58da: $ff
    rst $38                                       ; $58db: $ff
    db $e4                                        ; $58dc: $e4
    ld e, b                                       ; $58dd: $58
    jp c, $125b                                   ; $58de: $da $5b $12

jr_070_58e1:
    ld h, b                                       ; $58e1: $60
    dec l                                         ; $58e2: $2d
    ld h, b                                       ; $58e3: $60
    rrca                                          ; $58e4: $0f
    dec c                                         ; $58e5: $0d
    ld c, $0e                                     ; $58e6: $0e $0e
    ld c, $fc                                     ; $58e8: $0e $fc
    rst $38                                       ; $58ea: $ff
    ld hl, sp-$09                                 ; $58eb: $f8 $f7
    rst $38                                       ; $58ed: $ff
    rst $38                                       ; $58ee: $ff
    rst $38                                       ; $58ef: $ff
    rst $38                                       ; $58f0: $ff
    nop                                           ; $58f1: $00
    rst $38                                       ; $58f2: $ff
    rst $38                                       ; $58f3: $ff
    rst $38                                       ; $58f4: $ff
    rst $38                                       ; $58f5: $ff
    rst $38                                       ; $58f6: $ff
    rst $38                                       ; $58f7: $ff
    or $f5                                        ; $58f8: $f6 $f5
    ld a, [de]                                    ; $58fa: $1a
    rst $38                                       ; $58fb: $ff
    cp $df                                        ; $58fc: $fe $df
    rst $38                                       ; $58fe: $ff
    rst $38                                       ; $58ff: $ff
    rst $38                                       ; $5900: $ff
    rst $38                                       ; $5901: $ff
    nop                                           ; $5902: $00
    rst $38                                       ; $5903: $ff
    rst $38                                       ; $5904: $ff
    rst $38                                       ; $5905: $ff
    rst $38                                       ; $5906: $ff
    rst $38                                       ; $5907: $ff
    rst $38                                       ; $5908: $ff
    ld [bc], a                                    ; $5909: $02
    rst $38                                       ; $590a: $ff
    db $fc                                        ; $590b: $fc
    rst $38                                       ; $590c: $ff
    ld [bc], a                                    ; $590d: $02
    rst $38                                       ; $590e: $ff
    rst $38                                       ; $590f: $ff
    rst $38                                       ; $5910: $ff
    rst $38                                       ; $5911: $ff
    rst $38                                       ; $5912: $ff
    nop                                           ; $5913: $00
    rst $38                                       ; $5914: $ff
    rst $38                                       ; $5915: $ff
    rst $38                                       ; $5916: $ff
    rst $38                                       ; $5917: $ff
    rst $38                                       ; $5918: $ff
    rst $38                                       ; $5919: $ff
    ld e, $fc                                     ; $591a: $1e $fc
    rst $38                                       ; $591c: $ff
    push hl                                       ; $591d: $e5
    cp $df                                        ; $591e: $fe $df
    and h                                         ; $5920: $a4
    di                                            ; $5921: $f3
    add $e1                                       ; $5922: $c6 $e1
    nop                                           ; $5924: $00
    pop bc                                        ; $5925: $c1
    db $e3                                        ; $5926: $e3
    rst $38                                       ; $5927: $ff
    rst $38                                       ; $5928: $ff
    ret nz                                        ; $5929: $c0

    or $d8                                        ; $592a: $f6 $d8
    rst $38                                       ; $592c: $ff
    inc h                                         ; $592d: $24
    ld sp, hl                                     ; $592e: $f9
    ret nz                                        ; $592f: $c0

    ei                                            ; $5930: $fb
    ld a, [bc]                                    ; $5931: $0a
    ld hl, sp+$01                                 ; $5932: $f8 $01
    pop hl                                        ; $5934: $e1
    ld [hl], b                                    ; $5935: $70
    dec a                                         ; $5936: $3d
    jp hl                                         ; $5937: $e9


    ld a, [$aad2]                                 ; $5938: $fa $d2 $aa
    or $c0                                        ; $593b: $f6 $c0
    and $4d                                       ; $593d: $e6 $4d
    dec l                                         ; $593f: $2d
    dec l                                         ; $5940: $2d
    rst $38                                       ; $5941: $ff
    jp Jump_000_383c                              ; $5942: $c3 $3c $38


    rst $38                                       ; $5945: $ff
    ret nz                                        ; $5946: $c0

    rst $28                                       ; $5947: $ef
    dec c                                         ; $5948: $0d
    dec c                                         ; $5949: $0d
    ld l, l                                       ; $594a: $6d
    dec c                                         ; $594b: $0d
    cp [hl]                                       ; $594c: $be
    ldh [$c0], a                                  ; $594d: $e0 $c0
    rst $38                                       ; $594f: $ff
    or $80                                        ; $5950: $f6 $80
    rst $28                                       ; $5952: $ef
    ld c, l                                       ; $5953: $4d
    ld c, l                                       ; $5954: $4d
    db $fd                                        ; $5955: $fd
    ldh [rKEY1], a                                ; $5956: $e0 $4d
    ld l, l                                       ; $5958: $6d
    dec bc                                        ; $5959: $0b
    dec c                                         ; $595a: $0d
    adc a                                         ; $595b: $8f
    dec c                                         ; $595c: $0d
    dec bc                                        ; $595d: $0b
    ld c, l                                       ; $595e: $4d
    dec l                                         ; $595f: $2d
    ld a, d                                       ; $5960: $7a
    ret c                                         ; $5961: $d8

    db $10                                        ; $5962: $10
    rrc h                                         ; $5963: $cb $0c
    add $6d                                       ; $5965: $c6 $6d
    rrca                                          ; $5967: $0f
    dec c                                         ; $5968: $0d
    dec bc                                        ; $5969: $0b
    dec c                                         ; $596a: $0d
    dec bc                                        ; $596b: $0b
    rst $38                                       ; $596c: $ff
    push hl                                       ; $596d: $e5
    ld a, [hl]                                    ; $596e: $7e
    ld [c], a                                     ; $596f: $e2
    add b                                         ; $5970: $80
    db $e4                                        ; $5971: $e4
    cp $dd                                        ; $5972: $fe $dd
    add b                                         ; $5974: $80
    call z, $88a0                                 ; $5975: $cc $a0 $88
    db $e3                                        ; $5978: $e3
    add [hl]                                      ; $5979: $86
    pop hl                                        ; $597a: $e1
    cp [hl]                                       ; $597b: $be
    db $e4                                        ; $597c: $e4
    ei                                            ; $597d: $fb
    ret nz                                        ; $597e: $c0

    ld c, e                                       ; $597f: $4b
    rst $38                                       ; $5980: $ff
    ld [hl], b                                    ; $5981: $70
    and l                                         ; $5982: $a5
    ld l, l                                       ; $5983: $6d
    inc b                                         ; $5984: $04
    jp z, $c0e6                                   ; $5985: $ca $e6 $c0

    rst $20                                       ; $5988: $e7
    dec c                                         ; $5989: $0d
    ret nz                                        ; $598a: $c0

    rst $38                                       ; $598b: $ff
    adc [hl]                                      ; $598c: $8e
    and l                                         ; $598d: $a5
    ld b, a                                       ; $598e: $47
    ldh [$8a], a                                  ; $598f: $e0 $8a
    push hl                                       ; $5991: $e5
    ld b, b                                       ; $5992: $40
    and $03                                       ; $5993: $e6 $03
    dec bc                                        ; $5995: $0b
    dec c                                         ; $5996: $0d
    ld a, h                                       ; $5997: $7c
    call nz, $dd00                                ; $5998: $c4 $00 $dd
    sub b                                         ; $599b: $90
    jp nz, $e7c9                                  ; $599c: $c2 $c9 $e7

    ld a, d                                       ; $599f: $7a
    rst $20                                       ; $59a0: $e7
    inc a                                         ; $59a1: $3c
    ret nz                                        ; $59a2: $c0

    nop                                           ; $59a3: $00
    db $fc                                        ; $59a4: $fc
    or d                                          ; $59a5: $b2
    ld a, [bc]                                    ; $59a6: $0a

jr_070_59a7:
    call $e108                                    ; $59a7: $cd $08 $e1
    ret nz                                        ; $59aa: $c0

    db $f4                                        ; $59ab: $f4
    ld [hl], h                                    ; $59ac: $74
    cp a                                          ; $59ad: $bf
    sub c                                         ; $59ae: $91
    ld h, b                                       ; $59af: $60
    adc e                                         ; $59b0: $8b
    jp $c4c6                                      ; $59b1: $c3 $c6 $c4


    nop                                           ; $59b4: $00
    add c                                         ; $59b5: $81
    add c                                         ; $59b6: $81
    ld a, [hl]                                    ; $59b7: $7e
    ret                                           ; $59b8: $c9


    ret nz                                        ; $59b9: $c0

    db $fd                                        ; $59ba: $fd
    ld d, c                                       ; $59bb: $51
    add d                                         ; $59bc: $82
    add $c6                                       ; $59bd: $c6 $c6
    jp Jump_070_7ce2                              ; $59bf: $c3 $e2 $7c


    push bc                                       ; $59c2: $c5
    ld a, [hl]                                    ; $59c3: $7e
    jp nz, Jump_070_7610                          ; $59c4: $c2 $10 $76

    sub d                                         ; $59c7: $92
    ld [bc], a                                    ; $59c8: $02
    ld [$e803], a                                 ; $59c9: $ea $03 $e8
    ld b, d                                       ; $59cc: $42
    pop bc                                        ; $59cd: $c1
    dec hl                                        ; $59ce: $2b
    ld [hl], l                                    ; $59cf: $75

Jump_070_59d0:
    add sp, -$04                                  ; $59d0: $e8 $fc
    and e                                         ; $59d2: $a3
    db $f4                                        ; $59d3: $f4
    ld l, a                                       ; $59d4: $6f
    nop                                           ; $59d5: $00
    sub h                                         ; $59d6: $94
    adc e                                         ; $59d7: $8b
    res 4, [hl]                                   ; $59d8: $cb $a6
    adc c                                         ; $59da: $89
    and b                                         ; $59db: $a0
    jp nz, $bee0                                  ; $59dc: $c2 $e0 $be

    ldh [$34], a                                  ; $59df: $e0 $34
    push hl                                       ; $59e1: $e5
    ld a, d                                       ; $59e2: $7a
    and d                                         ; $59e3: $a2
    ld a, [hl-]                                   ; $59e4: $3a
    cp b                                          ; $59e5: $b8
    nop                                           ; $59e6: $00
    ld hl, $19a2                                  ; $59e7: $21 $a2 $19
    ldh [rDIV], a                                 ; $59ea: $e0 $04
    push bc                                       ; $59ec: $c5
    jp nz, Jump_070_7ee1                          ; $59ed: $c2 $e1 $7e

    db $eb                                        ; $59f0: $eb
    ret nz                                        ; $59f1: $c0

    db $fc                                        ; $59f2: $fc
    sub d                                         ; $59f3: $92
    add h                                         ; $59f4: $84
    add d                                         ; $59f5: $82
    and $ff                                       ; $59f6: $e6 $ff
    ld c, e                                       ; $59f8: $4b
    ld c, e                                       ; $59f9: $4b
    ld c, e                                       ; $59fa: $4b
    ld l, e                                       ; $59fb: $6b
    ld c, e                                       ; $59fc: $4b
    ld l, e                                       ; $59fd: $6b
    ld a, [bc]                                    ; $59fe: $0a
    ld c, d                                       ; $59ff: $4a
    ret nz                                        ; $5a00: $c0

    jr c, jr_070_59a7                             ; $5a01: $38 $a4

    cp h                                          ; $5a03: $bc
    and b                                         ; $5a04: $a0
    or d                                          ; $5a05: $b2
    ld [hl], b                                    ; $5a06: $70
    ld [bc], a                                    ; $5a07: $02
    xor a                                         ; $5a08: $af
    ld b, e                                       ; $5a09: $43
    push hl                                       ; $5a0a: $e5
    ret nz                                        ; $5a0b: $c0

    ldh [rOCPD], a                                ; $5a0c: $e0 $6b
    ld a, [bc]                                    ; $5a0e: $0a
    rrca                                          ; $5a0f: $0f
    ld a, [hl+]                                   ; $5a10: $2a
    ld a, [hl+]                                   ; $5a11: $2a
    ld a, [bc]                                    ; $5a12: $0a
    ld a, [bc]                                    ; $5a13: $0a
    ld hl, sp-$7b                                 ; $5a14: $f8 $85
    ld [hl], l                                    ; $5a16: $75
    add b                                         ; $5a17: $80
    ld [bc], a                                    ; $5a18: $02
    cp a                                          ; $5a19: $bf
    add b                                         ; $5a1a: $80
    call nz, $c5fe                                ; $5a1b: $c4 $fe $c5
    pop bc                                        ; $5a1e: $c1
    ld c, e                                       ; $5a1f: $4b
    ld c, e                                       ; $5a20: $4b
    dec bc                                        ; $5a21: $0b
    ld a, [bc]                                    ; $5a22: $0a
    ld a, [hl+]                                   ; $5a23: $2a
    ld a, [bc]                                    ; $5a24: $0a

jr_070_5a25:
    ld a, [hl+]                                   ; $5a25: $2a
    add hl, bc                                    ; $5a26: $09
    ld c, e                                       ; $5a27: $4b
    dec l                                         ; $5a28: $2d
    pop hl                                        ; $5a29: $e1
    or a                                          ; $5a2a: $b7
    pop bc                                        ; $5a2b: $c1
    ld l, l                                       ; $5a2c: $6d
    ld b, d                                       ; $5a2d: $42
    cp a                                          ; $5a2e: $bf
    add b                                         ; $5a2f: $80
    jp hl                                         ; $5a30: $e9


    ret nz                                        ; $5a31: $c0

    pop hl                                        ; $5a32: $e1
    cp l                                          ; $5a33: $bd
    ldh [$3f], a                                  ; $5a34: $e0 $3f
    dec hl                                        ; $5a36: $2b
    dec l                                         ; $5a37: $2d
    dec l                                         ; $5a38: $2d
    dec l                                         ; $5a39: $2d
    dec hl                                        ; $5a3a: $2b
    dec hl                                        ; $5a3b: $2b
    halt                                          ; $5a3c: $76
    ret nz                                        ; $5a3d: $c0

    rst $38                                       ; $5a3e: $ff
    and e                                         ; $5a3f: $a3
    sbc h                                         ; $5a40: $9c
    ret nc                                        ; $5a41: $d0

    ld e, [hl]                                    ; $5a42: $5e
    ret nz                                        ; $5a43: $c0

    and h                                         ; $5a44: $a4
    dec c                                         ; $5a45: $0d
    ld l, e                                       ; $5a46: $6b
    ld l, e                                       ; $5a47: $6b
    ld bc, $47e1                                  ; $5a48: $01 $e1 $47
    and b                                         ; $5a4b: $a0
    dec l                                         ; $5a4c: $2d
    nop                                           ; $5a4d: $00
    xor $c1                                       ; $5a4e: $ee $c1
    scf                                           ; $5a50: $37
    ret nz                                        ; $5a51: $c0

    ld b, c                                       ; $5a52: $41
    jp $9ffe                                      ; $5a53: $c3 $fe $9f


    add l                                         ; $5a56: $85
    add [hl]                                      ; $5a57: $86
    ret nz                                        ; $5a58: $c0

    ld [c], a                                     ; $5a59: $e2
    pop bc                                        ; $5a5a: $c1
    pop hl                                        ; $5a5b: $e1
    add d                                         ; $5a5c: $82
    pop hl                                        ; $5a5d: $e1
    ld b, b                                       ; $5a5e: $40
    add b                                         ; $5a5f: $80
    pop hl                                        ; $5a60: $e1
    ld hl, sp+$33                                 ; $5a61: $f8 $33
    ld a, $ae                                     ; $5a63: $3e $ae
    add h                                         ; $5a65: $84
    add h                                         ; $5a66: $84
    add b                                         ; $5a67: $80
    ldh [$fe], a                                  ; $5a68: $e0 $fe
    ret nz                                        ; $5a6a: $c0

    dec c                                         ; $5a6b: $0d
    pop bc                                        ; $5a6c: $c1
    ld [c], a                                     ; $5a6d: $e2
    nop                                           ; $5a6e: $00
    or $a1                                        ; $5a6f: $f6 $a1
    ld b, b                                       ; $5a71: $40
    rst $38                                       ; $5a72: $ff
    sub d                                         ; $5a73: $92
    ld [bc], a                                    ; $5a74: $02
    ccf                                           ; $5a75: $3f
    ret nz                                        ; $5a76: $c0

    add $a1                                       ; $5a77: $c6 $a1
    ld b, b                                       ; $5a79: $40
    jp $813c                                      ; $5a7a: $c3 $3c $81


    ld a, h                                       ; $5a7d: $7c
    and b                                         ; $5a7e: $a0
    nop                                           ; $5a7f: $00
    ld bc, $82e1                                  ; $5a80: $01 $e1 $82
    jp nz, $ff00                                  ; $5a83: $c2 $00 $ff

    jp nc, $8542                                  ; $5a86: $d2 $42 $85

    ld h, c                                       ; $5a89: $61
    ld b, b                                       ; $5a8a: $40
    ret nz                                        ; $5a8b: $c0

    ld bc, $b9e1                                  ; $5a8c: $01 $e1 $b9
    and c                                         ; $5a8f: $a1
    nop                                           ; $5a90: $00
    ld a, b                                       ; $5a91: $78
    and c                                         ; $5a92: $a1
    add d                                         ; $5a93: $82
    push de                                       ; $5a94: $d5
    ld [de], a                                    ; $5a95: $12
    dec l                                         ; $5a96: $2d
    ld c, a                                       ; $5a97: $4f
    ld b, d                                       ; $5a98: $42
    dec b                                         ; $5a99: $05
    ld h, c                                       ; $5a9a: $61
    ld b, b                                       ; $5a9b: $40
    pop bc                                        ; $5a9c: $c1
    ld bc, $fae0                                  ; $5a9d: $01 $e0 $fa
    ld b, b                                       ; $5aa0: $40
    jr c, jr_070_5a25                             ; $5aa1: $38 $82

    and $00                                       ; $5aa3: $e6 $00
    ld e, a                                       ; $5aa5: $5f
    ld d, $23                                     ; $5aa6: $16 $23
    ld c, l                                       ; $5aa8: $4d
    dec l                                         ; $5aa9: $2d
    dec hl                                        ; $5aaa: $2b
    add c                                         ; $5aab: $81
    pop hl                                        ; $5aac: $e1
    pop bc                                        ; $5aad: $c1
    pop hl                                        ; $5aae: $e1
    nop                                           ; $5aaf: $00
    add e                                         ; $5ab0: $83
    ret nz                                        ; $5ab1: $c0

    ld a, d                                       ; $5ab2: $7a
    add d                                         ; $5ab3: $82
    ld a, [hl-]                                   ; $5ab4: $3a
    ld b, b                                       ; $5ab5: $40
    ld b, d                                       ; $5ab6: $42
    rst $38                                       ; $5ab7: $ff
    cp h                                          ; $5ab8: $bc
    xor b                                         ; $5ab9: $a8
    pop bc                                        ; $5aba: $c1
    ret nz                                        ; $5abb: $c0

    ccf                                           ; $5abc: $3f
    ret nz                                        ; $5abd: $c0

    add e                                         ; $5abe: $83
    jp nz, $f600                                  ; $5abf: $c2 $00 $f6

    add c                                         ; $5ac2: $81
    ld b, h                                       ; $5ac3: $44
    push de                                       ; $5ac4: $d5
    adc [hl]                                      ; $5ac5: $8e
    ld de, HeaderDestinationCode                  ; $5ac6: $11 $4a $01
    set 4, b                                      ; $5ac9: $cb $e0
    ld b, h                                       ; $5acb: $44
    call nz, $43fa                                ; $5acc: $c4 $fa $43
    ret nz                                        ; $5acf: $c0

    ld sp, hl                                     ; $5ad0: $f9
    nop                                           ; $5ad1: $00
    ld [bc], a                                    ; $5ad2: $02
    db $ec                                        ; $5ad3: $ec
    adc h                                         ; $5ad4: $8c
    ld [hl+], a                                   ; $5ad5: $22
    call nz, $8762                                ; $5ad6: $c4 $62 $87
    and h                                         ; $5ad9: $a4
    ld b, e                                       ; $5ada: $43
    pop bc                                        ; $5adb: $c1
    ld b, l                                       ; $5adc: $45
    add h                                         ; $5add: $84
    cp $1a                                        ; $5ade: $fe $1a
    ld d, b                                       ; $5ae0: $50
    inc h                                         ; $5ae1: $24
    inc b                                         ; $5ae2: $04
    adc h                                         ; $5ae3: $8c
    ld [hl+], a                                   ; $5ae4: $22
    ld a, [bc]                                    ; $5ae5: $0a
    add c                                         ; $5ae6: $81
    dec c                                         ; $5ae7: $0d
    add a                                         ; $5ae8: $87
    and l                                         ; $5ae9: $a5
    ld b, c                                       ; $5aea: $41
    ld l, b                                       ; $5aeb: $68
    inc c                                         ; $5aec: $0c
    ld a, $04                                     ; $5aed: $3e $04
    ld b, [hl]                                    ; $5aef: $46
    ld [bc], a                                    ; $5af0: $02
    add d                                         ; $5af1: $82
    nop                                           ; $5af2: $00
    add h                                         ; $5af3: $84
    ld [c], a                                     ; $5af4: $e2
    jp Jump_070_73a1                              ; $5af5: $c3 $a1 $73


    ldh [$c0], a                                  ; $5af8: $e0 $c0
    rst $38                                       ; $5afa: $ff
    push bc                                       ; $5afb: $c5
    ld hl, $634c                                  ; $5afc: $21 $4c $63
    ld b, a                                       ; $5aff: $47
    ld h, d                                       ; $5b00: $62
    call z, $0681                                 ; $5b01: $cc $81 $06
    inc b                                         ; $5b04: $04
    jp Jump_000_2b2b                              ; $5b05: $c3 $2b $2b


    inc sp                                        ; $5b08: $33
    ldh [$c0], a                                  ; $5b09: $e0 $c0
    inc d                                         ; $5b0b: $14
    ld [bc], a                                    ; $5b0c: $02
    ld l, h                                       ; $5b0d: $6c
    sub c                                         ; $5b0e: $91
    and h                                         ; $5b0f: $a4
    cp $29                                        ; $5b10: $fe $29
    nop                                           ; $5b12: $00
    ld a, $62                                     ; $5b13: $3e $62
    ld b, e                                       ; $5b15: $43
    add c                                         ; $5b16: $81
    ld [bc], a                                    ; $5b17: $02
    rst $38                                       ; $5b18: $ff
    inc c                                         ; $5b19: $0c
    ld h, h                                       ; $5b1a: $64
    cp a                                          ; $5b1b: $bf
    db $ec                                        ; $5b1c: $ec
    add hl, sp                                    ; $5b1d: $39
    ld b, c                                       ; $5b1e: $41
    push bc                                       ; $5b1f: $c5
    ld h, l                                       ; $5b20: $65
    ld b, d                                       ; $5b21: $42
    ld sp, hl                                     ; $5b22: $f9
    nop                                           ; $5b23: $00
    ld [bc], a                                    ; $5b24: $02
    ld b, c                                       ; $5b25: $41
    ld d, l                                       ; $5b26: $55
    and d                                         ; $5b27: $a2
    jp z, $bdc4                                   ; $5b28: $ca $c4 $bd

    pop bc                                        ; $5b2b: $c1
    add [hl]                                      ; $5b2c: $86
    ld l, c                                       ; $5b2d: $69
    inc b                                         ; $5b2e: $04
    ld e, l                                       ; $5b2f: $5d
    ret nz                                        ; $5b30: $c0

    push hl                                       ; $5b31: $e5
    ret                                           ; $5b32: $c9


    ld b, l                                       ; $5b33: $45
    nop                                           ; $5b34: $00
    adc h                                         ; $5b35: $8c
    and b                                         ; $5b36: $a0
    ld a, [c]                                     ; $5b37: $f2
    ld b, e                                       ; $5b38: $43
    add [hl]                                      ; $5b39: $86
    ld h, e                                       ; $5b3a: $63
    nop                                           ; $5b3b: $00
    sbc $82                                       ; $5b3c: $de $82
    ld b, c                                       ; $5b3e: $41
    adc $61                                       ; $5b3f: $ce $61
    ld b, c                                       ; $5b41: $41
    ld h, h                                       ; $5b42: $64
    ld de, $0043                                  ; $5b43: $11 $43 $00
    ld b, h                                       ; $5b46: $44
    inc hl                                        ; $5b47: $23
    sub $10                                       ; $5b48: $d6 $10
    cp $50                                        ; $5b4a: $fe $50
    call c, $bf21                                 ; $5b4c: $dc $21 $bf
    ld [c], a                                     ; $5b4f: $e2
    call z, $43a0                                 ; $5b50: $cc $a0 $43
    and b                                         ; $5b53: $a0
    or d                                          ; $5b54: $b2
    ld b, l                                       ; $5b55: $45
    add c                                         ; $5b56: $81
    ld l, l                                       ; $5b57: $6d
    ld b, d                                       ; $5b58: $42
    cp a                                          ; $5b59: $bf
    and $e5                                       ; $5b5a: $e6 $e5
    ld [bc], a                                    ; $5b5c: $02
    ld b, b                                       ; $5b5d: $40
    ld c, h                                       ; $5b5e: $4c
    ld h, c                                       ; $5b5f: $61
    pop bc                                        ; $5b60: $c1
    pop hl                                        ; $5b61: $e1
    inc c                                         ; $5b62: $0c
    db $e4                                        ; $5b63: $e4
    ld c, l                                       ; $5b64: $4d
    nop                                           ; $5b65: $00
    ld b, e                                       ; $5b66: $43
    ret nz                                        ; $5b67: $c0

    add h                                         ; $5b68: $84
    ld [bc], a                                    ; $5b69: $02
    ret nz                                        ; $5b6a: $c0

    rst $38                                       ; $5b6b: $ff
    ret nz                                        ; $5b6c: $c0

    db $e3                                        ; $5b6d: $e3
    cp a                                          ; $5b6e: $bf
    pop hl                                        ; $5b6f: $e1
    pop bc                                        ; $5b70: $c1
    ld [c], a                                     ; $5b71: $e2
    cpl                                           ; $5b72: $2f
    push bc                                       ; $5b73: $c5
    ld a, l                                       ; $5b74: $7d
    ld h, b                                       ; $5b75: $60
    add b                                         ; $5b76: $80
    ld [$0250], sp                                ; $5b77: $08 $50 $02
    ld [hl], c                                    ; $5b7a: $71
    add b                                         ; $5b7b: $80
    ldh [$c1], a                                  ; $5b7c: $e0 $c1
    ld hl, $20cb                                  ; $5b7e: $21 $cb $20
    add d                                         ; $5b81: $82
    push hl                                       ; $5b82: $e5
    xor [hl]                                      ; $5b83: $ae
    nop                                           ; $5b84: $00
    dec hl                                        ; $5b85: $2b
    ld bc, $eb2b                                  ; $5b86: $01 $2b $eb
    ldh [rTMA], a                                 ; $5b89: $e0 $06
    inc sp                                        ; $5b8b: $33
    ld [bc], a                                    ; $5b8c: $02
    ld l, [hl]                                    ; $5b8d: $6e
    ld b, c                                       ; $5b8e: $41
    ld h, e                                       ; $5b8f: $63
    ld b, $60                                     ; $5b90: $06 $60
    adc [hl]                                      ; $5b92: $8e
    call nz, $c2ed                                ; $5b93: $c4 $ed $c2
    nop                                           ; $5b96: $00
    ld a, $80                                     ; $5b97: $3e $80
    add h                                         ; $5b99: $84
    ld [bc], a                                    ; $5b9a: $02
    ld b, d                                       ; $5b9b: $42
    rst $38                                       ; $5b9c: $ff
    add d                                         ; $5b9d: $82
    ld h, e                                       ; $5b9e: $63
    ld a, a                                       ; $5b9f: $7f
    add d                                         ; $5ba0: $82
    or e                                          ; $5ba1: $b3
    add e                                         ; $5ba2: $83
    ldh a, [rSC]                                  ; $5ba3: $f0 $02
    ld a, a                                       ; $5ba5: $7f
    ldh [rNR41], a                                ; $5ba6: $e0 $20
    cp $c2                                        ; $5ba8: $fe $c2
    ret nz                                        ; $5baa: $c0

    rst $38                                       ; $5bab: $ff
    ld b, b                                       ; $5bac: $40
    add [hl]                                      ; $5bad: $86
    ld [hl], $85                                  ; $5bae: $36 $85
    inc sp                                        ; $5bb0: $33
    ld h, d                                       ; $5bb1: $62
    ld c, l                                       ; $5bb2: $4d
    cp $c3                                        ; $5bb3: $fe $c3
    adc b                                         ; $5bb5: $88
    ld a, [de]                                    ; $5bb6: $1a
    ret nz                                        ; $5bb7: $c0

    db $fc                                        ; $5bb8: $fc
    dec l                                         ; $5bb9: $2d
    xor $49                                       ; $5bba: $ee $49
    cp [hl]                                       ; $5bbc: $be
    jp $df00                                      ; $5bbd: $c3 $00 $df


    ld hl, sp+$69                                 ; $5bc0: $f8 $69
    db $ec                                        ; $5bc2: $ec
    ld l, d                                       ; $5bc3: $6a
    ld c, l                                       ; $5bc4: $4d
    ld l, l                                       ; $5bc5: $6d
    nop                                           ; $5bc6: $00
    ret nz                                        ; $5bc7: $c0

    ld [c], a                                     ; $5bc8: $e2
    ld b, e                                       ; $5bc9: $43
    ld a, [de]                                    ; $5bca: $1a
    ret nz                                        ; $5bcb: $c0

    ld sp, hl                                     ; $5bcc: $f9
    or l                                          ; $5bcd: $b5
    ld h, c                                       ; $5bce: $61
    rst $00                                       ; $5bcf: $c7
    rst $38                                       ; $5bd0: $ff
    db $fc                                        ; $5bd1: $fc
    ld a, [hl+]                                   ; $5bd2: $2a
    ret nz                                        ; $5bd3: $c0

    rst $28                                       ; $5bd4: $ef
    ld [bc], a                                    ; $5bd5: $02
    or l                                          ; $5bd6: $b5
    nop                                           ; $5bd7: $00
    nop                                           ; $5bd8: $00
    nop                                           ; $5bd9: $00
    rst $08                                       ; $5bda: $cf
    and b                                         ; $5bdb: $a0
    call c, $dedd                                 ; $5bdc: $dc $dd $de
    db $fc                                        ; $5bdf: $fc
    rst $38                                       ; $5be0: $ff
    ld hl, sp-$09                                 ; $5be1: $f8 $f7
    rst $18                                       ; $5be3: $df
    ldh [$f3], a                                  ; $5be4: $e0 $f3
    pop hl                                        ; $5be6: $e1
    ld [c], a                                     ; $5be7: $e2
    db $fc                                        ; $5be8: $fc
    rst $38                                       ; $5be9: $ff
    ld hl, sp-$09                                 ; $5bea: $f8 $f7
    db $e3                                        ; $5bec: $e3
    db $e4                                        ; $5bed: $e4
    push hl                                       ; $5bee: $e5
    and $3c                                       ; $5bef: $e6 $3c
    db $fc                                        ; $5bf1: $fc
    rst $38                                       ; $5bf2: $ff
    ld hl, sp-$09                                 ; $5bf3: $f8 $f7
    rst $20                                       ; $5bf5: $e7
    add sp, -$17                                  ; $5bf6: $e8 $e9
    ld [$fffc], a                                 ; $5bf8: $ea $fc $ff
    ld hl, sp-$09                                 ; $5bfb: $f8 $f7
    nop                                           ; $5bfd: $00
    ld e, $ff                                     ; $5bfe: $1e $ff
    db $fc                                        ; $5c00: $fc
    ei                                            ; $5c01: $fb
    ld e, $ff                                     ; $5c02: $1e $ff
    db $fc                                        ; $5c04: $fc
    ei                                            ; $5c05: $fb
    ld e, $ff                                     ; $5c06: $1e $ff
    db $fc                                        ; $5c08: $fc
    ei                                            ; $5c09: $fb
    ld e, $ff                                     ; $5c0a: $1e $ff
    db $fc                                        ; $5c0c: $fc
    ei                                            ; $5c0d: $fb
    nop                                           ; $5c0e: $00
    ld e, $ff                                     ; $5c0f: $1e $ff
    nop                                           ; $5c11: $00
    rst $18                                       ; $5c12: $df
    db $fc                                        ; $5c13: $fc
    rst $38                                       ; $5c14: $ff
    nop                                           ; $5c15: $00
    rst $18                                       ; $5c16: $df
    db $fc                                        ; $5c17: $fc
    rst $38                                       ; $5c18: $ff
    nop                                           ; $5c19: $00
    rst $18                                       ; $5c1a: $df
    db $fc                                        ; $5c1b: $fc
    rst $38                                       ; $5c1c: $ff
    nop                                           ; $5c1d: $00
    rst $18                                       ; $5c1e: $df
    ld h, b                                       ; $5c1f: $60
    ld c, $ec                                     ; $5c20: $0e $ec
    rst $38                                       ; $5c22: $ff
    push hl                                       ; $5c23: $e5
    nop                                           ; $5c24: $00
    rst $18                                       ; $5c25: $df
    ld [de], a                                    ; $5c26: $12
    ld a, [c]                                     ; $5c27: $f2
    ret nz                                        ; $5c28: $c0

    ldh [$d6], a                                  ; $5c29: $e0 $d6
    rst $10                                       ; $5c2b: $d7
    cp e                                          ; $5c2c: $bb
    ldh [$f8], a                                  ; $5c2d: $e0 $f8
    nop                                           ; $5c2f: $00
    rst $18                                       ; $5c30: $df
    ld d, $f3                                     ; $5c31: $16 $f3
    add b                                         ; $5c33: $80
    ldh [$d8], a                                  ; $5c34: $e0 $d8
    reti                                          ; $5c36: $d9


    and b                                         ; $5c37: $a0
    ret nc                                        ; $5c38: $d0

    pop de                                        ; $5c39: $d1

jr_070_5c3a:
    ld hl, sp+$00                                 ; $5c3a: $f8 $00
    rst $18                                       ; $5c3c: $df
    ld d, $f3                                     ; $5c3d: $16 $f3
    push bc                                       ; $5c3f: $c5
    ldh [$da], a                                  ; $5c40: $e0 $da
    db $db                                        ; $5c42: $db
    and b                                         ; $5c43: $a0
    jp nc, $d8d3                                  ; $5c44: $d2 $d3 $d8

    nop                                           ; $5c47: $00
    rst $18                                       ; $5c48: $df
    ld a, [bc]                                    ; $5c49: $0a
    ldh a, [rDMA]                                 ; $5c4a: $f0 $46
    pop hl                                        ; $5c4c: $e1
    jp nc, $fdd3                                  ; $5c4d: $d2 $d3 $fd

    ret nz                                        ; $5c50: $c0

    call nc, Call_000_30d5                        ; $5c51: $d4 $d5 $30
    jr c, jr_070_5c3a                             ; $5c54: $38 $e4

    nop                                           ; $5c56: $00
    rst $18                                       ; $5c57: $df
    inc c                                         ; $5c58: $0c
    jp nz, $e00d                                  ; $5c59: $c2 $0d $e0

    ret nc                                        ; $5c5c: $d0

    pop de                                        ; $5c5d: $d1
    ld b, [hl]                                    ; $5c5e: $46
    ld [c], a                                     ; $5c5f: $e2
    push bc                                       ; $5c60: $c5
    ldh [$1f], a                                  ; $5c61: $e0 $1f
    sbc a                                         ; $5c63: $9f
    sbc l                                         ; $5c64: $9d
    and d                                         ; $5c65: $a2
    sbc a                                         ; $5c66: $9f
    and b                                         ; $5c67: $a0
    dec a                                         ; $5c68: $3d
    ldh [$38], a                                  ; $5c69: $e0 $38
    ldh [rP1], a                                  ; $5c6b: $e0 $00
    rst $18                                       ; $5c6d: $df
    ldh a, [rNR10]                                ; $5c6e: $f0 $10
    jp $e00d                                      ; $5c70: $c3 $0d $e0


    adc b                                         ; $5c73: $88
    pop hl                                        ; $5c74: $e1
    ld b, [hl]                                    ; $5c75: $46
    ldh [$a0], a                                  ; $5c76: $e0 $a0
    and b                                         ; $5c78: $a0
    sbc a                                         ; $5c79: $9f
    sbc h                                         ; $5c7a: $9c
    rrca                                          ; $5c7b: $0f
    xor [hl]                                      ; $5c7c: $ae
    xor [hl]                                      ; $5c7d: $ae
    sbc h                                         ; $5c7e: $9c
    sbc a                                         ; $5c7f: $9f
    dec a                                         ; $5c80: $3d
    ldh [$38], a                                  ; $5c81: $e0 $38
    ldh [rP1], a                                  ; $5c83: $e0 $00
    rst $18                                       ; $5c85: $df
    db $10                                        ; $5c86: $10
    jp Jump_000_0dfc                              ; $5c87: $c3 $fc $0d


    ldh [$88], a                                  ; $5c8a: $e0 $88
    pop hl                                        ; $5c8c: $e1
    sbc l                                         ; $5c8d: $9d
    and d                                         ; $5c8e: $a2
    sbc l                                         ; $5c8f: $9d
    sbc l                                         ; $5c90: $9d
    sbc l                                         ; $5c91: $9d
    sbc h                                         ; $5c92: $9c
    ccf                                           ; $5c93: $3f
    ld b, [hl]                                    ; $5c94: $46
    xor a                                         ; $5c95: $af
    xor a                                         ; $5c96: $af
    ld b, [hl]                                    ; $5c97: $46
    sbc h                                         ; $5c98: $9c
    sbc a                                         ; $5c99: $9f
    dec a                                         ; $5c9a: $3d
    ld [c], a                                     ; $5c9b: $e2
    nop                                           ; $5c9c: $00
    rst $18                                       ; $5c9d: $df
    jr c, @+$59                                   ; $5c9e: $38 $57

    pop hl                                        ; $5ca0: $e1
    inc c                                         ; $5ca1: $0c
    jp $e088                                      ; $5ca2: $c3 $88 $e0


    ld b, [hl]                                    ; $5ca5: $46
    xor [hl]                                      ; $5ca6: $ae
    ld b, [hl]                                    ; $5ca7: $46
    rst $38                                       ; $5ca8: $ff
    push hl                                       ; $5ca9: $e5
    ld a, [hl]                                    ; $5caa: $7e
    ldh [$58], a                                  ; $5cab: $e0 $58
    ld l, $e0                                     ; $5cad: $2e $e0
    pop af                                        ; $5caf: $f1
    add b                                         ; $5cb0: $80
    nop                                           ; $5cb1: $00
    call c, $d7d6                                 ; $5cb2: $dc $d6 $d7
    rst $08                                       ; $5cb5: $cf
    ret nz                                        ; $5cb6: $c0

    sbc a                                         ; $5cb7: $9f
    adc b                                         ; $5cb8: $88
    db $e4                                        ; $5cb9: $e4
    inc sp                                        ; $5cba: $33
    ld b, [hl]                                    ; $5cbb: $46
    xor a                                         ; $5cbc: $af
    cp a                                          ; $5cbd: $bf
    and $3d                                       ; $5cbe: $e6 $3d
    ldh [$d2], a                                  ; $5cc0: $e0 $d2
    db $d3                                        ; $5cc2: $d3
    pop af                                        ; $5cc3: $f1
    add c                                         ; $5cc4: $81
    nop                                           ; $5cc5: $00
    call c, $d8ab                                 ; $5cc6: $dc $ab $d8
    reti                                          ; $5cc9: $d9


    rst $08                                       ; $5cca: $cf
    ret nz                                        ; $5ccb: $c0

    sbc h                                         ; $5ccc: $9c
    jp z, $afe6                                   ; $5ccd: $ca $e6 $af

    ld a, a                                       ; $5cd0: $7f
    push hl                                       ; $5cd1: $e5
    xor a                                         ; $5cd2: $af
    rrca                                          ; $5cd3: $0f
    xor [hl]                                      ; $5cd4: $ae
    sbc [hl]                                      ; $5cd5: $9e
    call nc, $f1d5                                ; $5cd6: $d4 $d5 $f1
    add c                                         ; $5cd9: $81
    nop                                           ; $5cda: $00
    call c, $c013                                 ; $5cdb: $dc $13 $c0
    ld b, a                                       ; $5cde: $47
    pop hl                                        ; $5cdf: $e1
    inc e                                         ; $5ce0: $1c
    jp z, $40e5                                   ; $5ce1: $ca $e5 $40

    and $46                                       ; $5ce4: $e6 $46
    xor a                                         ; $5ce6: $af
    sbc [hl]                                      ; $5ce7: $9e
    ld bc, $00e3                                  ; $5ce8: $01 $e3 $00
    db $db                                        ; $5ceb: $db
    ld c, d                                       ; $5cec: $4a
    ret nz                                        ; $5ced: $c0

    db $10                                        ; $5cee: $10
    sub b                                         ; $5cef: $90
    ret nz                                        ; $5cf0: $c0

    ret                                           ; $5cf1: $c9


    add sp, $44                                   ; $5cf2: $e8 $44
    ld [c], a                                     ; $5cf4: $e2
    ld sp, hl                                     ; $5cf5: $f9
    jp nz, $eea1                                  ; $5cf6: $c2 $a1 $ee

    and l                                         ; $5cf9: $a5
    nop                                           ; $5cfa: $00
    ret c                                         ; $5cfb: $d8

    sub a                                         ; $5cfc: $97
    and b                                         ; $5cfd: $a0
    add b                                         ; $5cfe: $80
    ld b, e                                       ; $5cff: $43
    ldh [$c1], a                                  ; $5d00: $e0 $c1
    db $ec                                        ; $5d02: $ec
    add b                                         ; $5d03: $80
    pop bc                                        ; $5d04: $c1
    cp b                                          ; $5d05: $b8
    ret nz                                        ; $5d06: $c0

    add b                                         ; $5d07: $80
    ldh [$fc], a                                  ; $5d08: $e0 $fc
    or d                                          ; $5d0a: $b2
    ld [de], a                                    ; $5d0b: $12
    xor d                                         ; $5d0c: $aa
    call nc, $d5f3                                ; $5d0d: $d4 $f3 $d5
    sbc [hl]                                      ; $5d10: $9e
    adc e                                         ; $5d11: $8b
    jp $e38c                                      ; $5d12: $c3 $8c $e3


    ld b, [hl]                                    ; $5d15: $46
    ld a, c                                       ; $5d16: $79
    ld a, d                                       ; $5d17: $7a
    ld a, h                                       ; $5d18: $7c
    ld [hl], c                                    ; $5d19: $71
    ld a, l                                       ; $5d1a: $7d
    ld a, [hl]                                    ; $5d1b: $7e
    rst $00                                       ; $5d1c: $c7
    db $fc                                        ; $5d1d: $fc
    or d                                          ; $5d1e: $b2
    ld [de], a                                    ; $5d1f: $12
    xor d                                         ; $5d20: $aa
    and b                                         ; $5d21: $a0
    and b                                         ; $5d22: $a0
    and c                                         ; $5d23: $a1
    call z, Call_070_7ec3                         ; $5d24: $cc $c3 $7e
    adc h                                         ; $5d27: $8c
    ld [c], a                                     ; $5d28: $e2
    ld a, c                                       ; $5d29: $79
    ld a, d                                       ; $5d2a: $7a
    adc a                                         ; $5d2b: $8f
    ld b, [hl]                                    ; $5d2c: $46
    ld b, [hl]                                    ; $5d2d: $46
    ld a, a                                       ; $5d2e: $7f
    cp a                                          ; $5d2f: $bf
    db $e4                                        ; $5d30: $e4
    ret nc                                        ; $5d31: $d0

    cp e                                          ; $5d32: $bb
    and b                                         ; $5d33: $a0
    db $fc                                        ; $5d34: $fc
    or d                                          ; $5d35: $b2
    ld e, $68                                     ; $5d36: $1e $68
    ld d, [hl]                                    ; $5d38: $56
    add c                                         ; $5d39: $81
    sbc [hl]                                      ; $5d3a: $9e
    call z, $79c7                                 ; $5d3b: $cc $c7 $79
    ld a, [hl]                                    ; $5d3e: $7e
    ld e, a                                       ; $5d3f: $5f
    ld b, [hl]                                    ; $5d40: $46
    ld b, [hl]                                    ; $5d41: $46
    ld b, l                                       ; $5d42: $45
    ld b, c                                       ; $5d43: $41
    ld b, l                                       ; $5d44: $45
    cp a                                          ; $5d45: $bf
    db $e4                                        ; $5d46: $e4
    xor a                                         ; $5d47: $af
    ld a, d                                       ; $5d48: $7a
    and c                                         ; $5d49: $a1
    sbc b                                         ; $5d4a: $98
    db $e3                                        ; $5d4b: $e3
    and e                                         ; $5d4c: $a3
    nop                                           ; $5d4d: $00
    sub h                                         ; $5d4e: $94
    ld d, [hl]                                    ; $5d4f: $56
    add b                                         ; $5d50: $80
    ret nc                                        ; $5d51: $d0

    pop de                                        ; $5d52: $d1
    ld b, b                                       ; $5d53: $40
    db $e4                                        ; $5d54: $e4
    pop bc                                        ; $5d55: $c1
    db $e3                                        ; $5d56: $e3
    ld b, l                                       ; $5d57: $45
    rst $08                                       ; $5d58: $cf
    dec hl                                        ; $5d59: $2b
    inc l                                         ; $5d5a: $2c
    ld h, $2a                                     ; $5d5b: $26 $2a
    cp a                                          ; $5d5d: $bf
    and $7a                                       ; $5d5e: $e6 $7a
    and b                                         ; $5d60: $a0
    jp nc, $e0d3                                  ; $5d61: $d2 $d3 $e0

    ld a, [c]                                     ; $5d64: $f2
    ld h, b                                       ; $5d65: $60
    nop                                           ; $5d66: $00
    sub l                                         ; $5d67: $95
    db $10                                        ; $5d68: $10
    and b                                         ; $5d69: $a0
    ret nz                                        ; $5d6a: $c0

    pop bc                                        ; $5d6b: $c1
    inc c                                         ; $5d6c: $0c
    call nz, Call_070_7e79                        ; $5d6d: $c4 $79 $7e
    ld b, l                                       ; $5d70: $45
    ld a, a                                       ; $5d71: $7f
    scf                                           ; $5d72: $37
    jr c, jr_070_5d9c                             ; $5d73: $38 $27

    jr nz, jr_070_5d97                            ; $5d75: $20 $20

    daa                                           ; $5d77: $27
    ld b, d                                       ; $5d78: $42
    ld a, [hl]                                    ; $5d79: $7e
    push hl                                       ; $5d7a: $e5
    rra                                           ; $5d7b: $1f
    xor [hl]                                      ; $5d7c: $ae
    xor [hl]                                      ; $5d7d: $ae
    and c                                         ; $5d7e: $a1
    call nc, $f2d5                                ; $5d7f: $d4 $d5 $f2
    ld h, b                                       ; $5d82: $60
    nop                                           ; $5d83: $00
    sub l                                         ; $5d84: $95
    ld d, a                                       ; $5d85: $57
    add e                                         ; $5d86: $83
    db $fc                                        ; $5d87: $fc
    jp nz, $43a4                                  ; $5d88: $c2 $a4 $43

    ldh [$39], a                                  ; $5d8b: $e0 $39
    dec [hl]                                      ; $5d8d: $35
    dec [hl]                                      ; $5d8e: $35
    ld hl, $312c                                  ; $5d8f: $21 $2c $31
    rra                                           ; $5d92: $1f
    dec hl                                        ; $5d93: $2b
    ld c, e                                       ; $5d94: $4b
    ld d, l                                       ; $5d95: $55
    ld b, [hl]                                    ; $5d96: $46

jr_070_5d97:
    add c                                         ; $5d97: $81
    ld a, b                                       ; $5d98: $78
    call nz, $a0fc                                ; $5d99: $c4 $fc $a0

jr_070_5d9c:
    ld a, [c]                                     ; $5d9c: $f2
    ld h, b                                       ; $5d9d: $60
    db $f4                                        ; $5d9e: $f4
    nop                                           ; $5d9f: $00
    sbc b                                         ; $5da0: $98
    ld c, c                                       ; $5da1: $49
    add c                                         ; $5da2: $81
    sbc [hl]                                      ; $5da3: $9e
    ld b, e                                       ; $5da4: $43
    push hl                                       ; $5da5: $e5
    ld a, [hl-]                                   ; $5da6: $3a
    dec [hl]                                      ; $5da7: $35
    dec [hl]                                      ; $5da8: $35
    ld [hl], $0f                                  ; $5da9: $36 $0f
    ld b, a                                       ; $5dab: $47
    ld e, l                                       ; $5dac: $5d
    ld e, l                                       ; $5dad: $5d
    ld h, b                                       ; $5dae: $60
    ret nz                                        ; $5daf: $c0

    push hl                                       ; $5db0: $e5
    ei                                            ; $5db1: $fb
    add c                                         ; $5db2: $81
    inc sp                                        ; $5db3: $33
    ld h, b                                       ; $5db4: $60
    nop                                           ; $5db5: $00
    sbc b                                         ; $5db6: $98
    db $fc                                        ; $5db7: $fc
    ld [bc], a                                    ; $5db8: $02
    and d                                         ; $5db9: $a2
    ret nz                                        ; $5dba: $c0

    ld [c], a                                     ; $5dbb: $e2
    add b                                         ; $5dbc: $80
    ld b, [hl]                                    ; $5dbd: $46
    ld b, [hl]                                    ; $5dbe: $46
    ld b, h                                       ; $5dbf: $44
    inc a                                         ; $5dc0: $3c
    dec [hl]                                      ; $5dc1: $35
    rst $38                                       ; $5dc2: $ff
    dec [hl]                                      ; $5dc3: $35
    add hl, sp                                    ; $5dc4: $39
    ld d, d                                       ; $5dc5: $52
    ld d, h                                       ; $5dc6: $54
    ld e, c                                       ; $5dc7: $59
    ld d, e                                       ; $5dc8: $53
    ld b, l                                       ; $5dc9: $45
    add e                                         ; $5dca: $83
    pop bc                                        ; $5dcb: $c1
    add h                                         ; $5dcc: $84
    cp h                                          ; $5dcd: $bc
    add h                                         ; $5dce: $84
    ei                                            ; $5dcf: $fb
    ld h, c                                       ; $5dd0: $61
    nop                                           ; $5dd1: $00
    sbc c                                         ; $5dd2: $99
    ld [bc], a                                    ; $5dd3: $02
    and c                                         ; $5dd4: $a1
    add b                                         ; $5dd5: $80
    db $e3                                        ; $5dd6: $e3
    add d                                         ; $5dd7: $82
    add e                                         ; $5dd8: $83
    rst $38                                       ; $5dd9: $ff
    ld b, [hl]                                    ; $5dda: $46
    ld b, b                                       ; $5ddb: $40
    dec [hl]                                      ; $5ddc: $35
    dec [hl]                                      ; $5ddd: $35
    dec [hl]                                      ; $5dde: $35
    ld a, [hl-]                                   ; $5ddf: $3a
    ld b, h                                       ; $5de0: $44
    ld b, l                                       ; $5de1: $45
    ld e, a                                       ; $5de2: $5f
    ld b, [hl]                                    ; $5de3: $46
    ld b, [hl]                                    ; $5de4: $46
    add e                                         ; $5de5: $83
    add [hl]                                      ; $5de6: $86
    add l                                         ; $5de7: $85
    ld a, b                                       ; $5de8: $78
    add d                                         ; $5de9: $82
    sbc [hl]                                      ; $5dea: $9e
    ei                                            ; $5deb: $fb
    ld h, d                                       ; $5dec: $62
    ld [hl], h                                    ; $5ded: $74
    nop                                           ; $5dee: $00
    sbc c                                         ; $5def: $99
    rst $08                                       ; $5df0: $cf
    ld h, d                                       ; $5df1: $62
    and c                                         ; $5df2: $a1
    ld c, e                                       ; $5df3: $4b
    add c                                         ; $5df4: $81
    add l                                         ; $5df5: $85
    add [hl]                                      ; $5df6: $86
    add e                                         ; $5df7: $83
    ld b, b                                       ; $5df8: $40
    pop hl                                        ; $5df9: $e1
    inc bc                                        ; $5dfa: $03
    dec [hl]                                      ; $5dfb: $35
    ld b, b                                       ; $5dfc: $40
    pop bc                                        ; $5dfd: $c1
    rst $20                                       ; $5dfe: $e7
    ld a, [hl]                                    ; $5dff: $7e
    and b                                         ; $5e00: $a0
    jr c, jr_070_5e64                             ; $5e01: $38 $61

    nop                                           ; $5e03: $00
    ld e, h                                       ; $5e04: $5c
    ld a, $c1                                     ; $5e05: $3e $c1
    cp a                                          ; $5e07: $bf
    ld [c], a                                     ; $5e08: $e2
    ld a, a                                       ; $5e09: $7f
    adc e                                         ; $5e0a: $8b
    ld b, [hl]                                    ; $5e0b: $46
    ld a, $35                                     ; $5e0c: $3e $35
    dec [hl]                                      ; $5e0e: $35
    inc a                                         ; $5e0f: $3c
    ld b, h                                       ; $5e10: $44
    pop bc                                        ; $5e11: $c1
    rst $20                                       ; $5e12: $e7
    jr @+$40                                      ; $5e13: $18 $3e

    and c                                         ; $5e15: $a1
    ld hl, sp+$30                                 ; $5e16: $f8 $30
    db $10                                        ; $5e18: $10
    ld c, h                                       ; $5e19: $4c
    jp nc, $c0d3                                  ; $5e1a: $d2 $d3 $c0

    db $e3                                        ; $5e1d: $e3
    cp $c0                                        ; $5e1e: $fe $c0
    add b                                         ; $5e20: $80
    ret nz                                        ; $5e21: $c0

    rst $08                                       ; $5e22: $cf
    ld a, [hl-]                                   ; $5e23: $3a
    ld b, l                                       ; $5e24: $45
    ld b, [hl]                                    ; $5e25: $46
    adc d                                         ; $5e26: $8a
    pop bc                                        ; $5e27: $c1
    push hl                                       ; $5e28: $e5
    cp [hl]                                       ; $5e29: $be
    add b                                         ; $5e2a: $80
    sub $d7                                       ; $5e2b: $d6 $d7
    ld h, h                                       ; $5e2d: $64
    nop                                           ; $5e2e: $00
    ld e, l                                       ; $5e2f: $5d
    ret nc                                        ; $5e30: $d0

    ld b, c                                       ; $5e31: $41
    sbc h                                         ; $5e32: $9c
    adc b                                         ; $5e33: $88
    ld h, d                                       ; $5e34: $62
    ret nz                                        ; $5e35: $c0

    ld [c], a                                     ; $5e36: $e2
    add hl, sp                                    ; $5e37: $39
    ld b, [hl]                                    ; $5e38: $46
    add h                                         ; $5e39: $84
    push bc                                       ; $5e3a: $c5
    add $7d                                       ; $5e3b: $c6 $7d
    ld h, d                                       ; $5e3d: $62
    ret c                                         ; $5e3e: $d8

    reti                                          ; $5e3f: $d9


    nop                                           ; $5e40: $00
    ld e, l                                       ; $5e41: $5d
    ld b, [hl]                                    ; $5e42: $46
    ld h, e                                       ; $5e43: $63
    adc b                                         ; $5e44: $88
    ld h, b                                       ; $5e45: $60
    ld a, c                                       ; $5e46: $79
    adc l                                         ; $5e47: $8d
    jr nc, @+$42                                  ; $5e48: $30 $40

    ret nz                                        ; $5e4a: $c0

    ld b, c                                       ; $5e4b: $41
    ldh [$c0], a                                  ; $5e4c: $e0 $c0
    and $82                                       ; $5e4e: $e6 $82
    pop bc                                        ; $5e50: $c1
    jp c, Jump_000_00db                           ; $5e51: $da $db $00

    ld e, h                                       ; $5e54: $5c
    ld d, c                                       ; $5e55: $51
    inc hl                                        ; $5e56: $23
    ld [bc], a                                    ; $5e57: $02
    ld a, h                                       ; $5e58: $7c

jr_070_5e59:
    and c                                         ; $5e59: $a1
    add b                                         ; $5e5a: $80
    ld b, b                                       ; $5e5b: $40
    pop bc                                        ; $5e5c: $c1
    ld b, c                                       ; $5e5d: $41
    ldh [rLY], a                                  ; $5e5e: $e0 $44
    ret nz                                        ; $5e60: $c0

    ld a, [$7d42]                                 ; $5e61: $fa $42 $7d

jr_070_5e64:
    ld b, d                                       ; $5e64: $42
    nop                                           ; $5e65: $00
    ld e, l                                       ; $5e66: $5d
    nop                                           ; $5e67: $00
    dec d                                         ; $5e68: $15
    ld hl, $81fb                                  ; $5e69: $21 $fb $81
    ld a, $60                                     ; $5e6c: $3e $60
    ld b, c                                       ; $5e6e: $41
    db $e4                                        ; $5e6f: $e4
    ld b, h                                       ; $5e70: $44
    pop bc                                        ; $5e71: $c1
    ld a, [$3e41]                                 ; $5e72: $fa $41 $3e
    ld b, b                                       ; $5e75: $40
    cp d                                          ; $5e76: $ba
    jr nz, jr_070_5e59                            ; $5e77: $20 $e0

    nop                                           ; $5e79: $00
    ld e, l                                       ; $5e7a: $5d
    cp a                                          ; $5e7b: $bf
    add c                                         ; $5e7c: $81
    ei                                            ; $5e7d: $fb
    add c                                         ; $5e7e: $81
    inc a                                         ; $5e7f: $3c
    ret nz                                        ; $5e80: $c0

    pop bc                                        ; $5e81: $c1
    ret nz                                        ; $5e82: $c0

    jr c, jr_070_5ebc                             ; $5e83: $38 $37

    ld b, l                                       ; $5e85: $45
    add h                                         ; $5e86: $84
    dec b                                         ; $5e87: $05
    jp nz, $41fa                                  ; $5e88: $c2 $fa $41

    sbc [hl]                                      ; $5e8b: $9e
    xor a                                         ; $5e8c: $af
    ld [hl+], a                                   ; $5e8d: $22
    nop                                           ; $5e8e: $00
    ld e, l                                       ; $5e8f: $5d
    call nz, Call_070_52e2                        ; $5e90: $c4 $e2 $52
    ld hl, $229e                                  ; $5e93: $21 $9e $22
    cp a                                          ; $5e96: $bf
    and b                                         ; $5e97: $a0
    ld b, l                                       ; $5e98: $45
    ld b, e                                       ; $5e99: $43
    ldh [$c6], a                                  ; $5e9a: $e0 $c6
    and d                                         ; $5e9c: $a2
    cp e                                          ; $5e9d: $bb
    ld b, c                                       ; $5e9e: $41
    and c                                         ; $5e9f: $a1
    scf                                           ; $5ea0: $37
    ld [hl+], a                                   ; $5ea1: $22
    nop                                           ; $5ea2: $00
    ld e, h                                       ; $5ea3: $5c
    nop                                           ; $5ea4: $00
    ld d, $25                                     ; $5ea5: $16 $25
    cp h                                          ; $5ea7: $bc
    add c                                         ; $5ea8: $81
    cp a                                          ; $5ea9: $bf
    and b                                         ; $5eaa: $a0
    dec b                                         ; $5eab: $05
    ret z                                         ; $5eac: $c8

    cp a                                          ; $5ead: $bf
    ld [hl+], a                                   ; $5eae: $22
    scf                                           ; $5eaf: $37
    ld [bc], a                                    ; $5eb0: $02
    nop                                           ; $5eb1: $00
    ld e, b                                       ; $5eb2: $58
    inc c                                         ; $5eb3: $0c
    ld [hl+], a                                   ; $5eb4: $22
    inc e                                         ; $5eb5: $1c
    inc b                                         ; $5eb6: $04
    ld b, h                                       ; $5eb7: $44
    ld a, [hl]                                    ; $5eb8: $7e
    and b                                         ; $5eb9: $a0
    add a                                         ; $5eba: $87
    adc b                                         ; $5ebb: $88

jr_070_5ebc:
    add a                                         ; $5ebc: $87
    dec b                                         ; $5ebd: $05
    add $42                                       ; $5ebe: $c6 $42
    call nz, $db00                                ; $5ec0: $c4 $00 $db
    jr nc, jr_070_5e59                            ; $5ec3: $30 $94

    ld bc, $4704                                  ; $5ec5: $01 $04 $47
    ld a, h                                       ; $5ec8: $7c
    ld c, h                                       ; $5ec9: $4c
    ret nz                                        ; $5eca: $c0

    ld b, b                                       ; $5ecb: $40
    jp c, Jump_000_00db                           ; $5ecc: $da $db $00

    db $db                                        ; $5ecf: $db
    call nz, Call_000_38a2                        ; $5ed0: $c4 $a2 $38
    ld c, l                                       ; $5ed3: $4d
    jr nz, jr_070_5f22                            ; $5ed4: $20 $4c

    ld h, b                                       ; $5ed6: $60
    cp e                                          ; $5ed7: $bb
    xor $af                                       ; $5ed8: $ee $af
    ld b, [hl]                                    ; $5eda: $46
    sbc [hl]                                      ; $5edb: $9e
    ld l, [hl]                                    ; $5edc: $6e
    nop                                           ; $5edd: $00
    nop                                           ; $5ede: $00
    jp c, $023c                                   ; $5edf: $da $3c $02

    ld h, d                                       ; $5ee2: $62
    adc [hl]                                      ; $5ee3: $8e
    jr nz, jr_070_5f2b                            ; $5ee4: $20 $45

    ld [hl], $a6                                  ; $5ee6: $36 $a6
    ld [hl], $bf                                  ; $5ee8: $36 $bf
    db $ec                                        ; $5eea: $ec
    cp $20                                        ; $5eeb: $fe $20
    ldh [rLCDC], a                                ; $5eed: $e0 $40
    ld hl, $b002                                  ; $5eef: $21 $02 $b0
    nop                                           ; $5ef2: $00
    ld b, a                                       ; $5ef3: $47
    ld [bc], a                                    ; $5ef4: $02
    ld h, b                                       ; $5ef5: $60
    jp nz, $4542                                  ; $5ef6: $c2 $42 $45

    ld [hl], $62                                  ; $5ef9: $36 $62
    dec de                                        ; $5efb: $1b
    and a                                         ; $5efc: $a7
    ld h, [hl]                                    ; $5efd: $66
    cp a                                          ; $5efe: $bf
    db $ec                                        ; $5eff: $ec
    xor a                                         ; $5f00: $af
    xor a                                         ; $5f01: $af
    ld a, $00                                     ; $5f02: $3e $00
    and l                                         ; $5f04: $a5
    ret nz                                        ; $5f05: $c0

    nop                                           ; $5f06: $00
    reti                                          ; $5f07: $d9


    cp b                                          ; $5f08: $b8
    ld [bc], a                                    ; $5f09: $02
    ld h, b                                       ; $5f0a: $60
    jp nz, $c141                                  ; $5f0b: $c2 $41 $c1

    ldh [$67], a                                  ; $5f0e: $e0 $67
    and e                                         ; $5f10: $a3
    ld l, b                                       ; $5f11: $68
    cp a                                          ; $5f12: $bf
    db $e3                                        ; $5f13: $e3
    sbc h                                         ; $5f14: $9c
    ldh [$b6], a                                  ; $5f15: $e0 $b6
    jp Jump_070_6686                              ; $5f17: $c3 $86 $66


    nop                                           ; $5f1a: $00
    jp c, $004a                                   ; $5f1b: $da $4a $00

    add h                                         ; $5f1e: $84
    add c                                         ; $5f1f: $81
    ld b, d                                       ; $5f20: $42
    xor b                                         ; $5f21: $a8

jr_070_5f22:
    xor c                                         ; $5f22: $a9
    rlca                                          ; $5f23: $07
    ld l, h                                       ; $5f24: $6c
    dec [hl]                                      ; $5f25: $35
    dec [hl]                                      ; $5f26: $35
    cp a                                          ; $5f27: $bf
    ld [c], a                                     ; $5f28: $e2
    adc h                                         ; $5f29: $8c
    and c                                         ; $5f2a: $a1

jr_070_5f2b:
    or h                                          ; $5f2b: $b4
    inc bc                                        ; $5f2c: $03
    add [hl]                                      ; $5f2d: $86
    ld h, e                                       ; $5f2e: $63
    nop                                           ; $5f2f: $00
    sbc $fe                                       ; $5f30: $de $fe
    ret nz                                        ; $5f32: $c0

    pop bc                                        ; $5f33: $c1
    ld b, l                                       ; $5f34: $45
    ld [hl], $6e                                  ; $5f35: $36 $6e
    ld l, a                                       ; $5f37: $6f
    ld l, h                                       ; $5f38: $6c
    dec [hl]                                      ; $5f39: $35
    and e                                         ; $5f3a: $a3
    rrca                                          ; $5f3b: $0f
    xor d                                         ; $5f3c: $aa
    xor e                                         ; $5f3d: $ab
    ld [hl], $45                                  ; $5f3e: $36 $45
    adc h                                         ; $5f40: $8c
    and d                                         ; $5f41: $a2
    ld a, [c]                                     ; $5f42: $f2
    ld b, d                                       ; $5f43: $42
    jp nz, $a4a1                                  ; $5f44: $c2 $a1 $a4

    ld h, b                                       ; $5f47: $60
    ldh a, [rSC]                                  ; $5f48: $f0 $02
    or b                                          ; $5f4a: $b0
    nop                                           ; $5f4b: $00
    adc c                                         ; $5f4c: $89
    ldh [$a1], a                                  ; $5f4d: $e0 $a1
    cp a                                          ; $5f4f: $bf
    db $e4                                        ; $5f50: $e4
    ld l, h                                       ; $5f51: $6c
    ld l, a                                       ; $5f52: $6f
    ld l, [hl]                                    ; $5f53: $6e
    ld [hl], $09                                  ; $5f54: $36 $09
    ld b, l                                       ; $5f56: $45
    adc h                                         ; $5f57: $8c
    and d                                         ; $5f58: $a2
    or d                                          ; $5f59: $b2
    ld b, c                                       ; $5f5a: $41
    sub c                                         ; $5f5b: $91
    add [hl]                                      ; $5f5c: $86
    ld h, e                                       ; $5f5d: $63
    ld [bc], a                                    ; $5f5e: $02
    or c                                          ; $5f5f: $b1
    nop                                           ; $5f60: $00
    ld c, c                                       ; $5f61: $49
    ld [bc], a                                    ; $5f62: $02
    and c                                         ; $5f63: $a1
    ldh a, [$82]                                  ; $5f64: $f0 $82
    ld b, b                                       ; $5f66: $40
    ld a, [hl]                                    ; $5f67: $7e
    pop hl                                        ; $5f68: $e1
    pop bc                                        ; $5f69: $c1
    pop hl                                        ; $5f6a: $e1
    call $9ec3                                    ; $5f6b: $cd $c3 $9e
    sub c                                         ; $5f6e: $91
    ld b, [hl]                                    ; $5f6f: $46
    ld b, [hl]                                    ; $5f70: $46
    ld bc, $8690                                  ; $5f71: $01 $90 $86
    ld h, d                                       ; $5f74: $62
    ld [bc], a                                    ; $5f75: $02
    or d                                          ; $5f76: $b2
    nop                                           ; $5f77: $00
    ld c, c                                       ; $5f78: $49
    add $84                                       ; $5f79: $c6 $84
    cp a                                          ; $5f7b: $bf
    pop hl                                        ; $5f7c: $e1
    pop bc                                        ; $5f7d: $c1
    ld [c], a                                     ; $5f7e: $e2
    ld d, b                                       ; $5f7f: $50
    and d                                         ; $5f80: $a2
    add e                                         ; $5f81: $83
    sbc [hl]                                      ; $5f82: $9e
    sub b                                         ; $5f83: $90
    ret nz                                        ; $5f84: $c0

    db $e3                                        ; $5f85: $e3
    ld b, [hl]                                    ; $5f86: $46
    jr nz, jr_070_5f8b                            ; $5f87: $20 $02

    or c                                          ; $5f89: $b1
    nop                                           ; $5f8a: $00

jr_070_5f8b:
    ld c, e                                       ; $5f8b: $4b
    pop bc                                        ; $5f8c: $c1
    inc h                                         ; $5f8d: $24
    ld b, l                                       ; $5f8e: $45
    ld de, $8236                                  ; $5f8f: $11 $36 $82
    ld [c], a                                     ; $5f92: $e2
    cpl                                           ; $5f93: $2f
    pop bc                                        ; $5f94: $c1
    ret nz                                        ; $5f95: $c0

    ld [c], a                                     ; $5f96: $e2
    sub c                                         ; $5f97: $91
    inc bc                                        ; $5f98: $03
    add e                                         ; $5f99: $83
    ld [bc], a                                    ; $5f9a: $02
    ld [hl], c                                    ; $5f9b: $71
    nop                                           ; $5f9c: $00
    ld c, e                                       ; $5f9d: $4b
    ld h, b                                       ; $5f9e: $60
    jp nz, $bf61                                  ; $5f9f: $c2 $61 $bf

    ld [c], a                                     ; $5fa2: $e2
    ld b, e                                       ; $5fa3: $43
    ldh [$92], a                                  ; $5fa4: $e0 $92
    ld h, c                                       ; $5fa6: $61
    adc d                                         ; $5fa7: $8a
    ldh [$a1], a                                  ; $5fa8: $e0 $a1
    sub b                                         ; $5faa: $90
    ccf                                           ; $5fab: $3f
    pop hl                                        ; $5fac: $e1
    or b                                          ; $5fad: $b0
    add h                                         ; $5fae: $84
    ld [bc], a                                    ; $5faf: $02
    ld [bc], a                                    ; $5fb0: $02
    ld [hl], c                                    ; $5fb1: $71
    nop                                           ; $5fb2: $00
    ld c, e                                       ; $5fb3: $4b
    jp nz, $a061                                  ; $5fb4: $c2 $61 $a0

    sbc a                                         ; $5fb7: $9f
    cp a                                          ; $5fb8: $bf
    add b                                         ; $5fb9: $80
    sbc l                                         ; $5fba: $9d
    nop                                           ; $5fbb: $00
    adc a                                         ; $5fbc: $8f
    db $e4                                        ; $5fbd: $e4
    ldh a, [rSB]                                  ; $5fbe: $f0 $01
    ld a, a                                       ; $5fc0: $7f
    pop hl                                        ; $5fc1: $e1
    cp $c2                                        ; $5fc2: $fe $c2
    ld [bc], a                                    ; $5fc4: $02
    ld [hl], c                                    ; $5fc5: $71
    nop                                           ; $5fc6: $00
    ld c, e                                       ; $5fc7: $4b
    ld hl, $ff22                                  ; $5fc8: $21 $22 $ff
    db $e4                                        ; $5fcb: $e4
    nop                                           ; $5fcc: $00
    ld [hl], $82                                  ; $5fcd: $36 $82
    ldh a, [rSC]                                  ; $5fcf: $f0 $02
    cp [hl]                                       ; $5fd1: $be
    push bc                                       ; $5fd2: $c5
    ld [bc], a                                    ; $5fd3: $02
    ld [hl], c                                    ; $5fd4: $71
    nop                                           ; $5fd5: $00
    ld c, [hl]                                    ; $5fd6: $4e
    or $85                                        ; $5fd7: $f6 $85
    xor $47                                       ; $5fd9: $ee $47
    cp [hl]                                       ; $5fdb: $be
    call nz, Call_000_06f0                        ; $5fdc: $c4 $f0 $06
    cpl                                           ; $5fdf: $2f
    nop                                           ; $5fe0: $00
    ld d, c                                       ; $5fe1: $51
    or $85                                        ; $5fe2: $f6 $85
    ldh a, [rNR52]                                ; $5fe4: $f0 $26
    sub $d7                                       ; $5fe6: $d6 $d7
    sbc [hl]                                      ; $5fe8: $9e
    sub b                                         ; $5fe9: $90
    add hl, bc                                    ; $5fea: $09
    sub c                                         ; $5feb: $91
    ld b, b                                       ; $5fec: $40
    pop hl                                        ; $5fed: $e1
    ld b, $23                                     ; $5fee: $06 $23
    and b                                         ; $5ff0: $a0
    nop                                           ; $5ff1: $00
    ld e, h                                       ; $5ff2: $5c
    or $84                                        ; $5ff3: $f6 $84
    ld d, $66                                     ; $5ff5: $16 $66
    dec c                                         ; $5ff7: $0d
    ld b, b                                       ; $5ff8: $40
    add e                                         ; $5ff9: $83
    sbc [hl]                                      ; $5ffa: $9e
    sub b                                         ; $5ffb: $90
    rst $38                                       ; $5ffc: $ff
    ldh [rSC], a                                  ; $5ffd: $e0 $02
    add c                                         ; $5fff: $81
    nop                                           ; $6000: $00
    db $dd                                        ; $6001: $dd
    db $fc                                        ; $6002: $fc
    add hl, hl                                    ; $6003: $29
    ld [$da86], a                                 ; $6004: $ea $86 $da
    add hl, de                                    ; $6007: $19
    db $db                                        ; $6008: $db

Jump_070_6009:
    ret nz                                        ; $6009: $c0

    db $e4                                        ; $600a: $e4
    ld [bc], a                                    ; $600b: $02
    ld [hl], e                                    ; $600c: $73
    rst $20                                       ; $600d: $e7
    add sp, $00                                   ; $600e: $e8 $00
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    pop bc                                        ; $6012: $c1
    nop                                           ; $6013: $00
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
    nop                                           ; $601e: $00
    nop                                           ; $601f: $00
    ld bc, $fe80                                  ; $6020: $01 $80 $fe
    ldh [rIE], a                                  ; $6023: $e0 $ff
    rst $38                                       ; $6025: $ff
    rst $38                                       ; $6026: $ff
    rst $38                                       ; $6027: $ff
    rst $38                                       ; $6028: $ff
    add sp, $00                                   ; $6029: $e8 $00
    nop                                           ; $602b: $00
    nop                                           ; $602c: $00
    ld [bc], a                                    ; $602d: $02
    nop                                           ; $602e: $00
    ld [hl+], a                                   ; $602f: $22
    inc de                                        ; $6030: $13
    ld [bc], a                                    ; $6031: $02
    ld bc, $1323                                  ; $6032: $01 $23 $13
    ld [bc], a                                    ; $6035: $02
    ld [bc], a                                    ; $6036: $02
    ld a, [de]                                    ; $6037: $1a
    dec d                                         ; $6038: $15
    ld [bc], a                                    ; $6039: $02
    inc bc                                        ; $603a: $03
    inc e                                         ; $603b: $1c
    dec d                                         ; $603c: $15
    ld [bc], a                                    ; $603d: $02
    inc b                                         ; $603e: $04
    dec e                                         ; $603f: $1d
    ld d, $02                                     ; $6040: $16 $02
    dec b                                         ; $6042: $05
    ld h, $16                                     ; $6043: $26 $16
    ld [bc], a                                    ; $6045: $02
    ld b, $1c                                     ; $6046: $06 $1c
    rla                                           ; $6048: $17
    ld [bc], a                                    ; $6049: $02
    rlca                                          ; $604a: $07
    daa                                           ; $604b: $27
    rla                                           ; $604c: $17
    ld [bc], a                                    ; $604d: $02
    ld [$1813], sp                                ; $604e: $08 $13 $18
    ld [bc], a                                    ; $6051: $02
    add hl, bc                                    ; $6052: $09
    ld [de], a                                    ; $6053: $12
    add hl, de                                    ; $6054: $19
    ld [bc], a                                    ; $6055: $02
    ld a, [bc]                                    ; $6056: $0a
    ld [hl+], a                                   ; $6057: $22
    add hl, de                                    ; $6058: $19
    ld [bc], a                                    ; $6059: $02
    dec bc                                        ; $605a: $0b
    inc hl                                        ; $605b: $23
    add hl, de                                    ; $605c: $19
    ld [bc], a                                    ; $605d: $02
    inc c                                         ; $605e: $0c
    ld de, $021b                                  ; $605f: $11 $1b $02
    dec c                                         ; $6062: $0d
    ld d, $1b                                     ; $6063: $16 $1b
    ld [bc], a                                    ; $6065: $02
    ld c, $17                                     ; $6066: $0e $17
    dec de                                        ; $6068: $1b
    ld [bc], a                                    ; $6069: $02
    rrca                                          ; $606a: $0f
    db $10                                        ; $606b: $10
    inc e                                         ; $606c: $1c
    ld [bc], a                                    ; $606d: $02
    db $10                                        ; $606e: $10
    jr z, jr_070_608d                             ; $606f: $28 $1c

    ld [bc], a                                    ; $6071: $02
    ld de, $1d29                                  ; $6072: $11 $29 $1d
    ld [bc], a                                    ; $6075: $02
    ld [de], a                                    ; $6076: $12
    ld de, $021e                                  ; $6077: $11 $1e $02
    inc de                                        ; $607a: $13
    ld a, [hl+]                                   ; $607b: $2a
    rra                                           ; $607c: $1f
    ld [bc], a                                    ; $607d: $02
    inc d                                         ; $607e: $14
    dec hl                                        ; $607f: $2b
    rra                                           ; $6080: $1f
    ld [bc], a                                    ; $6081: $02
    dec d                                         ; $6082: $15
    inc d                                         ; $6083: $14
    daa                                           ; $6084: $27
    ld [bc], a                                    ; $6085: $02
    ld d, $15                                     ; $6086: $16 $15
    jr z, jr_070_608c                             ; $6088: $28 $02

    rla                                           ; $608a: $17
    ld [hl+], a                                   ; $608b: $22

jr_070_608c:
    add hl, hl                                    ; $608c: $29

jr_070_608d:
    ld [bc], a                                    ; $608d: $02
    jr jr_070_60b3                                ; $608e: $18 $23

    ld a, [hl+]                                   ; $6090: $2a
    ld [bc], a                                    ; $6091: $02
    add hl, de                                    ; $6092: $19
    ld [hl+], a                                   ; $6093: $22
    dec hl                                        ; $6094: $2b
    ld [bc], a                                    ; $6095: $02
    ld a, [de]                                    ; $6096: $1a
    ld h, $2f                                     ; $6097: $26 $2f
    ld [bc], a                                    ; $6099: $02
    dec de                                        ; $609a: $1b
    rrca                                          ; $609b: $0f
    jr nc, @+$04                                  ; $609c: $30 $02

    inc e                                         ; $609e: $1c
    ld c, $31                                     ; $609f: $0e $31
    ld [bc], a                                    ; $60a1: $02
    dec e                                         ; $60a2: $1d
    inc h                                         ; $60a3: $24
    ld sp, $1e02                                  ; $60a4: $31 $02 $1e
    dec h                                         ; $60a7: $25
    ld sp, $ffff                                  ; $60a8: $31 $ff $ff
    rst $38                                       ; $60ab: $ff
    or h                                          ; $60ac: $b4
    ld h, b                                       ; $60ad: $60
    ld a, e                                       ; $60ae: $7b
    ld h, d                                       ; $60af: $62
    rst $10                                       ; $60b0: $d7
    ld h, h                                       ; $60b1: $64
    rst $30                                       ; $60b2: $f7

jr_070_60b3:
    ld h, h                                       ; $60b3: $64
    rrca                                          ; $60b4: $0f
    dec c                                         ; $60b5: $0d
    ld c, $0e                                     ; $60b6: $0e $0e
    ld c, $fc                                     ; $60b8: $0e $fc
    rst $38                                       ; $60ba: $ff
    ld hl, sp-$09                                 ; $60bb: $f8 $f7
    rst $38                                       ; $60bd: $ff
    rst $38                                       ; $60be: $ff
    rst $38                                       ; $60bf: $ff
    rst $38                                       ; $60c0: $ff
    nop                                           ; $60c1: $00
    rst $38                                       ; $60c2: $ff
    rst $38                                       ; $60c3: $ff
    rst $38                                       ; $60c4: $ff
    rst $38                                       ; $60c5: $ff
    rst $38                                       ; $60c6: $ff
    rst $38                                       ; $60c7: $ff

Jump_070_60c8:
    or $f5                                        ; $60c8: $f6 $f5
    ld a, [de]                                    ; $60ca: $1a
    rst $38                                       ; $60cb: $ff
    cp $df                                        ; $60cc: $fe $df
    rst $38                                       ; $60ce: $ff
    rst $38                                       ; $60cf: $ff
    rst $38                                       ; $60d0: $ff
    rst $38                                       ; $60d1: $ff
    nop                                           ; $60d2: $00
    rst $38                                       ; $60d3: $ff
    rst $38                                       ; $60d4: $ff
    rst $38                                       ; $60d5: $ff
    rst $38                                       ; $60d6: $ff
    rst $38                                       ; $60d7: $ff
    rst $38                                       ; $60d8: $ff
    ld [bc], a                                    ; $60d9: $02
    rst $38                                       ; $60da: $ff
    db $fc                                        ; $60db: $fc
    rst $38                                       ; $60dc: $ff
    ld [bc], a                                    ; $60dd: $02
    rst $38                                       ; $60de: $ff
    rst $38                                       ; $60df: $ff
    rst $38                                       ; $60e0: $ff
    rst $38                                       ; $60e1: $ff
    rst $38                                       ; $60e2: $ff
    nop                                           ; $60e3: $00
    rst $38                                       ; $60e4: $ff
    rst $38                                       ; $60e5: $ff
    rst $38                                       ; $60e6: $ff
    rst $38                                       ; $60e7: $ff
    rst $38                                       ; $60e8: $ff
    rst $38                                       ; $60e9: $ff
    ld e, $ff                                     ; $60ea: $1e $ff
    cp $df                                        ; $60ec: $fe $df
    rst $38                                       ; $60ee: $ff
    rst $38                                       ; $60ef: $ff
    rst $38                                       ; $60f0: $ff
    rst $38                                       ; $60f1: $ff
    rst $38                                       ; $60f2: $ff
    rst $38                                       ; $60f3: $ff
    nop                                           ; $60f4: $00
    rst $38                                       ; $60f5: $ff

jr_070_60f6:
    rst $38                                       ; $60f6: $ff
    rst $38                                       ; $60f7: $ff
    rst $38                                       ; $60f8: $ff
    ld [bc], a                                    ; $60f9: $02
    rst $38                                       ; $60fa: $ff
    ld c, $ea                                     ; $60fb: $0e $ea
    rst $38                                       ; $60fd: $ff
    push hl                                       ; $60fe: $e5
    ld [bc], a                                    ; $60ff: $02
    rst $38                                       ; $6100: $ff
    and h                                         ; $6101: $a4
    di                                            ; $6102: $f3
    call nz, Call_000_00e3                        ; $6103: $c4 $e3 $00
    db $db                                        ; $6106: $db
    rst $18                                       ; $6107: $df
    ld h, h                                       ; $6108: $64
    rst $30                                       ; $6109: $f7
    ret nz                                        ; $610a: $c0

    rst $38                                       ; $610b: $ff
    ret nz                                        ; $610c: $c0

    rst $38                                       ; $610d: $ff
    ret nz                                        ; $610e: $c0

    db $fc                                        ; $610f: $fc
    ld b, $f8                                     ; $6110: $06 $f8
    db $fd                                        ; $6112: $fd
    ret z                                         ; $6113: $c8

    ld a, [$00d7]                                 ; $6114: $fa $d7 $00
    ld b, $f5                                     ; $6117: $06 $f5
    ret nz                                        ; $6119: $c0

    jp nz, $c5bb                                  ; $611a: $c2 $bb $c5

    ld a, [hl-]                                   ; $611d: $3a
    rst $38                                       ; $611e: $ff
    ret nz                                        ; $611f: $c0

    or $f8                                        ; $6120: $f6 $f8
    rst $20                                       ; $6122: $e7
    rst $38                                       ; $6123: $ff
    rst $38                                       ; $6124: $ff
    ld b, $e9                                     ; $6125: $06 $e9
    jr nc, jr_070_60f6                            ; $6127: $30 $cd

    db $e4                                        ; $6129: $e4
    ret nz                                        ; $612a: $c0

    db $fc                                        ; $612b: $fc
    ld [$03d4], sp                                ; $612c: $08 $d4 $03
    pop bc                                        ; $612f: $c1
    ld c, l                                       ; $6130: $4d
    ld c, l                                       ; $6131: $4d
    cp l                                          ; $6132: $bd
    ld [$b3f8], a                                 ; $6133: $ea $f8 $b3
    nop                                           ; $6136: $00
    ld [$7dd4], sp                                ; $6137: $08 $d4 $7d
    add sp, $7a                                   ; $613a: $e8 $7a
    rst $20                                       ; $613c: $e7
    ld c, b                                       ; $613d: $48
    rst $38                                       ; $613e: $ff
    ret z                                         ; $613f: $c8

    and l                                         ; $6140: $a5
    db $fc                                        ; $6141: $fc
    push hl                                       ; $6142: $e5
    rlca                                          ; $6143: $07
    and $c0                                       ; $6144: $e6 $c0
    rst $38                                       ; $6146: $ff
    adc [hl]                                      ; $6147: $8e
    ret nz                                        ; $6148: $c0

    ld a, [c]                                     ; $6149: $f2
    ld c, l                                       ; $614a: $4d
    ld c, l                                       ; $614b: $4d
    dec l                                         ; $614c: $2d
    ld [hl], a                                    ; $614d: $77
    ret z                                         ; $614e: $c8

    cp $df                                        ; $614f: $fe $df
    ld c, $a0                                     ; $6151: $0e $a0
    ld c, l                                       ; $6153: $4d
    db $fc                                        ; $6154: $fc
    rrca                                          ; $6155: $0f
    and h                                         ; $6156: $a4
    ld [bc], a                                    ; $6157: $02
    and b                                         ; $6158: $a0
    ld l, l                                       ; $6159: $6d
    ld c, e                                       ; $615a: $4b
    ld c, e                                       ; $615b: $4b
    ld c, e                                       ; $615c: $4b
    ld c, l                                       ; $615d: $4d
    ld l, l                                       ; $615e: $6d
    db $e3                                        ; $615f: $e3
    dec l                                         ; $6160: $2d
    dec l                                         ; $6161: $2d
    ld [hl], l                                    ; $6162: $75
    and $00                                       ; $6163: $e6 $00
    sbc $08                                       ; $6165: $de $08
    ld [$4b4d], a                                 ; $6167: $ea $4d $4b
    dec hl                                        ; $616a: $2b
    ld a, a                                       ; $616b: $7f
    dec bc                                        ; $616c: $0b
    dec hl                                        ; $616d: $2b
    dec bc                                        ; $616e: $0b
    ld c, e                                       ; $616f: $4b
    dec bc                                        ; $6170: $0b
    ld c, l                                       ; $6171: $4d
    dec l                                         ; $6172: $2d
    push af                                       ; $6173: $f5
    and h                                         ; $6174: $a4
    sbc h                                         ; $6175: $9c
    rst $38                                       ; $6176: $ff
    rst $38                                       ; $6177: $ff
    ret z                                         ; $6178: $c8

    jp z, Jump_070_4b6d                           ; $6179: $ca $6d $4b

    dec hl                                        ; $617c: $2b
    cp a                                          ; $617d: $bf
    ldh [$be], a                                  ; $617e: $e0 $be
    ldh [$6d], a                                  ; $6180: $e0 $6d
    ldh a, [$59]                                  ; $6182: $f0 $59
    ld h, l                                       ; $6184: $65
    ret nz                                        ; $6185: $c0

    rst $38                                       ; $6186: $ff
    dec b                                         ; $6187: $05
    add $44                                       ; $6188: $c6 $44
    add b                                         ; $618a: $80
    ld c, e                                       ; $618b: $4b
    ld l, e                                       ; $618c: $6b
    dec hl                                        ; $618d: $2b
    dec bc                                        ; $618e: $0b
    ccf                                           ; $618f: $3f
    dec bc                                        ; $6190: $0b
    dec bc                                        ; $6191: $0b
    dec hl                                        ; $6192: $2b
    ld c, e                                       ; $6193: $4b
    ld c, e                                       ; $6194: $4b
    ld l, l                                       ; $6195: $6d
    nop                                           ; $6196: $00
    rst $18                                       ; $6197: $df
    inc d                                         ; $6198: $14
    add a                                         ; $6199: $87
    xor h                                         ; $619a: $ac
    rst $08                                       ; $619b: $cf
    ret nz                                        ; $619c: $c0

    set 0, c                                      ; $619d: $cb $c1
    ld c, l                                       ; $619f: $4d
    ld c, l                                       ; $61a0: $4d
    add c                                         ; $61a1: $81
    ldh [rOCPD], a                                ; $61a2: $e0 $6b
    ret nz                                        ; $61a4: $c0

    ldh [rWX], a                                  ; $61a5: $e0 $4b
    ld b, e                                       ; $61a7: $43
    ld c, e                                       ; $61a8: $4b
    dec c                                         ; $61a9: $0d
    add b                                         ; $61aa: $80
    db $e3                                        ; $61ab: $e3
    nop                                           ; $61ac: $00
    db $db                                        ; $61ad: $db
    add $c1                                       ; $61ae: $c6 $c1
    rst $38                                       ; $61b0: $ff
    pop hl                                        ; $61b1: $e1
    ld l, l                                       ; $61b2: $6d
    rst $00                                       ; $61b3: $c7
    pop hl                                        ; $61b4: $e1
    inc c                                         ; $61b5: $0c
    jp $ffe1                                      ; $61b6: $c3 $e1 $ff


    pop hl                                        ; $61b9: $e1
    ld l, e                                       ; $61ba: $6b
    ld l, e                                       ; $61bb: $6b
    ld sp, hl                                     ; $61bc: $f9
    pop hl                                        ; $61bd: $e1
    ret nz                                        ; $61be: $c0

    push bc                                       ; $61bf: $c5
    ld a, $fa                                     ; $61c0: $3e $fa
    add a                                         ; $61c2: $87
    jp nz, Jump_070_53ae                          ; $61c3: $c2 $ae $53

    ret nz                                        ; $61c6: $c0

    dec c                                         ; $61c7: $0d
    dec l                                         ; $61c8: $2d
    ld c, e                                       ; $61c9: $4b
    db $fd                                        ; $61ca: $fd
    ldh [rWX], a                                  ; $61cb: $e0 $4b
    halt                                          ; $61cd: $76
    ld [c], a                                     ; $61ce: $e2
    ld c, e                                       ; $61cf: $4b
    inc d                                         ; $61d0: $14
    pop bc                                        ; $61d1: $c1
    ldh [$be], a                                  ; $61d2: $e0 $be
    ldh [$6d], a                                  ; $61d4: $e0 $6d
    ld [bc], a                                    ; $61d6: $02
    and e                                         ; $61d7: $a3
    ld c, l                                       ; $61d8: $4d
    ret nz                                        ; $61d9: $c0

    db $fc                                        ; $61da: $fc
    ld b, h                                       ; $61db: $44
    pop bc                                        ; $61dc: $c1
    ld d, $e0                                     ; $61dd: $16 $e0
    rlca                                          ; $61df: $07
    ld c, l                                       ; $61e0: $4d
    dec c                                         ; $61e1: $0d
    ld l, l                                       ; $61e2: $6d
    dec a                                         ; $61e3: $3d
    ret nz                                        ; $61e4: $c0

    dec c                                         ; $61e5: $0d
    ldh [$36], a                                  ; $61e6: $e0 $36
    ret nz                                        ; $61e8: $c0

    or a                                          ; $61e9: $b7
    ldh [$b6], a                                  ; $61ea: $e0 $b6
    ldh [rP1], a                                  ; $61ec: $e0 $00
    pop bc                                        ; $61ee: $c1
    ret nz                                        ; $61ef: $c0

    nop                                           ; $61f0: $00
    rst $18                                       ; $61f1: $df
    jr jr_070_623a                                ; $61f2: $18 $46

    dec b                                         ; $61f4: $05
    add a                                         ; $61f5: $87
    adc l                                         ; $61f6: $8d
    pop hl                                        ; $61f7: $e1
    or [hl]                                       ; $61f8: $b6
    ld [c], a                                     ; $61f9: $e2
    cp c                                          ; $61fa: $b9
    ld h, a                                       ; $61fb: $67
    nop                                           ; $61fc: $00
    rst $18                                       ; $61fd: $df
    nop                                           ; $61fe: $00
    db $fd                                        ; $61ff: $fd
    di                                            ; $6200: $f3
    ld b, d                                       ; $6201: $42
    cp a                                          ; $6202: $bf
    ret nz                                        ; $6203: $c0

    ld hl, sp+$02                                 ; $6204: $f8 $02
    cp a                                          ; $6206: $bf
    adc b                                         ; $6207: $88
    ld l, l                                       ; $6208: $6d
    ld a, e                                       ; $6209: $7b
    add [hl]                                      ; $620a: $86
    ret nz                                        ; $620b: $c0

    rst $38                                       ; $620c: $ff
    nop                                           ; $620d: $00
    sbc b                                         ; $620e: $98
    nop                                           ; $620f: $00
    pop bc                                        ; $6210: $c1
    ld c, c                                       ; $6211: $49
    ld [bc], a                                    ; $6212: $02
    cp a                                          ; $6213: $bf
    nop                                           ; $6214: $00
    sub b                                         ; $6215: $90
    ld a, [hl-]                                   ; $6216: $3a
    add [hl]                                      ; $6217: $86
    ld b, d                                       ; $6218: $42
    cp a                                          ; $6219: $bf
    ret z                                         ; $621a: $c8

    cpl                                           ; $621b: $2f
    nop                                           ; $621c: $00
    add a                                         ; $621d: $87
    ret nz                                        ; $621e: $c0

    rst $38                                       ; $621f: $ff
    nop                                           ; $6220: $00
    ret nz                                        ; $6221: $c0

    ld hl, sp+$3d                                 ; $6222: $f8 $3d
    jr z, jr_070_6226                             ; $6224: $28 $00

jr_070_6226:
    ld e, a                                       ; $6226: $5f
    db $fc                                        ; $6227: $fc
    rst $38                                       ; $6228: $ff
    cp $df                                        ; $6229: $fe $df
    rst $38                                       ; $622b: $ff
    rst $38                                       ; $622c: $ff
    rst $38                                       ; $622d: $ff
    rst $38                                       ; $622e: $ff
    rst $38                                       ; $622f: $ff
    rst $38                                       ; $6230: $ff
    nop                                           ; $6231: $00
    rst $38                                       ; $6232: $ff
    rst $38                                       ; $6233: $ff
    rst $38                                       ; $6234: $ff
    rst $38                                       ; $6235: $ff
    ld [bc], a                                    ; $6236: $02
    rst $38                                       ; $6237: $ff
    db $fc                                        ; $6238: $fc
    rst $38                                       ; $6239: $ff

jr_070_623a:
    rst $38                                       ; $623a: $ff
    rst $38                                       ; $623b: $ff
    rst $38                                       ; $623c: $ff
    rst $38                                       ; $623d: $ff
    rst $38                                       ; $623e: $ff
    rst $38                                       ; $623f: $ff
    rst $38                                       ; $6240: $ff
    rst $38                                       ; $6241: $ff
    nop                                           ; $6242: $00
    rst $38                                       ; $6243: $ff
    rst $38                                       ; $6244: $ff
    cp $df                                        ; $6245: $fe $df
    db $fc                                        ; $6247: $fc
    rst $38                                       ; $6248: $ff
    cp $df                                        ; $6249: $fe $df
    rst $38                                       ; $624b: $ff
    rst $38                                       ; $624c: $ff
    rst $38                                       ; $624d: $ff
    rst $38                                       ; $624e: $ff
    rst $38                                       ; $624f: $ff
    rst $38                                       ; $6250: $ff
    rst $38                                       ; $6251: $ff
    rst $38                                       ; $6252: $ff
    nop                                           ; $6253: $00
    rst $38                                       ; $6254: $ff
    rst $38                                       ; $6255: $ff
    ld [bc], a                                    ; $6256: $02
    rst $38                                       ; $6257: $ff
    db $fc                                        ; $6258: $fc
    rst $38                                       ; $6259: $ff
    and c                                         ; $625a: $a1
    rst $38                                       ; $625b: $ff
    rst $38                                       ; $625c: $ff
    rst $38                                       ; $625d: $ff
    rst $38                                       ; $625e: $ff
    rst $38                                       ; $625f: $ff
    rst $38                                       ; $6260: $ff
    rst $38                                       ; $6261: $ff
    rst $38                                       ; $6262: $ff
    rst $38                                       ; $6263: $ff
    nop                                           ; $6264: $00
    cp $df                                        ; $6265: $fe $df
    db $fc                                        ; $6267: $fc
    rst $38                                       ; $6268: $ff
    cp $df                                        ; $6269: $fe $df
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
    nop                                           ; $6275: $00
    ld [bc], a                                    ; $6276: $02
    and $00                                       ; $6277: $e6 $00
    nop                                           ; $6279: $00
    nop                                           ; $627a: $00
    rst $08                                       ; $627b: $cf
    add hl, de                                    ; $627c: $19

jr_070_627d:
    ld h, $27                                     ; $627d: $26 $27
    jr z, jr_070_627d                             ; $627f: $28 $fc

    rst $38                                       ; $6281: $ff
    ld hl, sp-$09                                 ; $6282: $f8 $f7
    add hl, hl                                    ; $6284: $29
    ld a, [hl+]                                   ; $6285: $2a
    di                                            ; $6286: $f3
    dec hl                                        ; $6287: $2b
    inc l                                         ; $6288: $2c
    db $fc                                        ; $6289: $fc
    rst $38                                       ; $628a: $ff
    ld hl, sp-$09                                 ; $628b: $f8 $f7
    dec l                                         ; $628d: $2d
    ld l, $2f                                     ; $628e: $2e $2f
    jr nc, jr_070_62ce                            ; $6290: $30 $3c

    db $fc                                        ; $6292: $fc
    rst $38                                       ; $6293: $ff
    ld hl, sp-$09                                 ; $6294: $f8 $f7
    ld sp, $3332                                  ; $6296: $31 $32 $33
    inc [hl]                                      ; $6299: $34
    db $fc                                        ; $629a: $fc
    rst $38                                       ; $629b: $ff
    ld hl, sp-$09                                 ; $629c: $f8 $f7
    nop                                           ; $629e: $00
    ld e, $ff                                     ; $629f: $1e $ff
    db $fc                                        ; $62a1: $fc
    ei                                            ; $62a2: $fb
    ld e, $ff                                     ; $62a3: $1e $ff
    db $fc                                        ; $62a5: $fc
    ei                                            ; $62a6: $fb
    ld e, $ff                                     ; $62a7: $1e $ff
    db $fc                                        ; $62a9: $fc
    ei                                            ; $62aa: $fb
    ld e, $ff                                     ; $62ab: $1e $ff
    db $fc                                        ; $62ad: $fc
    ei                                            ; $62ae: $fb
    nop                                           ; $62af: $00
    ld e, $ff                                     ; $62b0: $1e $ff
    nop                                           ; $62b2: $00
    rst $18                                       ; $62b3: $df
    db $fc                                        ; $62b4: $fc
    rst $38                                       ; $62b5: $ff
    nop                                           ; $62b6: $00
    rst $18                                       ; $62b7: $df
    db $fc                                        ; $62b8: $fc
    rst $38                                       ; $62b9: $ff
    nop                                           ; $62ba: $00
    rst $18                                       ; $62bb: $df
    db $fc                                        ; $62bc: $fc
    rst $38                                       ; $62bd: $ff
    nop                                           ; $62be: $00
    rst $18                                       ; $62bf: $df
    nop                                           ; $62c0: $00
    db $fc                                        ; $62c1: $fc
    rst $38                                       ; $62c2: $ff
    nop                                           ; $62c3: $00
    rst $18                                       ; $62c4: $df
    db $fc                                        ; $62c5: $fc
    rst $38                                       ; $62c6: $ff
    nop                                           ; $62c7: $00
    rst $18                                       ; $62c8: $df
    db $fc                                        ; $62c9: $fc
    rst $38                                       ; $62ca: $ff
    nop                                           ; $62cb: $00
    rst $18                                       ; $62cc: $df
    db $fc                                        ; $62cd: $fc

jr_070_62ce:
    rst $38                                       ; $62ce: $ff
    nop                                           ; $62cf: $00
    call c, $ff70                                 ; $62d0: $dc $70 $ff
    push hl                                       ; $62d3: $e5
    nop                                           ; $62d4: $00
    rst $18                                       ; $62d5: $df
    ld d, $f2                                     ; $62d6: $16 $f2
    ret nz                                        ; $62d8: $c0

    ld [c], a                                     ; $62d9: $e2
    jr nz, jr_070_62fd                            ; $62da: $20 $21

    add hl, de                                    ; $62dc: $19
    nop                                           ; $62dd: $00
    rst $18                                       ; $62de: $df
    inc a                                         ; $62df: $3c
    ld d, $f3                                     ; $62e0: $16 $f3
    call nz, $19e1                                ; $62e2: $c4 $e1 $19
    ld [hl+], a                                   ; $62e5: $22
    inc hl                                        ; $62e6: $23
    add hl, de                                    ; $62e7: $19
    nop                                           ; $62e8: $00
    rst $18                                       ; $62e9: $df
    ld d, $f3                                     ; $62ea: $16 $f3
    ld e, $c4                                     ; $62ec: $1e $c4
    pop hl                                        ; $62ee: $e1
    add hl, de                                    ; $62ef: $19
    inc h                                         ; $62f0: $24
    dec h                                         ; $62f1: $25
    add hl, de                                    ; $62f2: $19
    nop                                           ; $62f3: $00
    rst $18                                       ; $62f4: $df
    ld b, $f4                                     ; $62f5: $06 $f4
    call nz, Call_000_00e0                        ; $62f7: $c4 $e0 $00
    rst $38                                       ; $62fa: $ff
    add sp, $00                                   ; $62fb: $e8 $00

jr_070_62fd:
    rst $18                                       ; $62fd: $df
    ld b, $ea                                     ; $62fe: $06 $ea
    ld b, e                                       ; $6300: $43
    pop hl                                        ; $6301: $e1
    ei                                            ; $6302: $fb
    db $e3                                        ; $6303: $e3
    ld a, [$06d9]                                 ; $6304: $fa $d9 $06
    db $f4                                        ; $6307: $f4
    add l                                         ; $6308: $85
    ret nz                                        ; $6309: $c0

    add b                                         ; $630a: $80
    ld b, e                                       ; $630b: $43
    pop hl                                        ; $630c: $e1
    ld [bc], a                                    ; $630d: $02
    pop hl                                        ; $630e: $e1
    cp b                                          ; $630f: $b8
    ld [c], a                                     ; $6310: $e2
    ld a, [$06d6]                                 ; $6311: $fa $d6 $06
    db $f4                                        ; $6314: $f4
    adc d                                         ; $6315: $8a
    ret nz                                        ; $6316: $c0

    rlca                                          ; $6317: $07
    ldh [rNR30], a                                ; $6318: $e0 $1a
    pop bc                                        ; $631a: $c1
    dec de                                        ; $631b: $1b
    ld [bc], a                                    ; $631c: $02
    ldh [$b8], a                                  ; $631d: $e0 $b8
    ld [c], a                                     ; $631f: $e2
    ld a, [$08d6]                                 ; $6320: $fa $d6 $08
    call nc, $e283                                ; $6323: $d4 $83 $e2
    add hl, de                                    ; $6326: $19
    inc e                                         ; $6327: $1c
    pop bc                                        ; $6328: $c1
    dec e                                         ; $6329: $1d
    cp l                                          ; $632a: $bd
    db $e3                                        ; $632b: $e3
    ld a, [hl-]                                   ; $632c: $3a
    push hl                                       ; $632d: $e5
    nop                                           ; $632e: $00
    rst $18                                       ; $632f: $df
    ld [$83c5], sp                                ; $6330: $08 $c5 $83
    ld [c], a                                     ; $6333: $e2
    add hl, de                                    ; $6334: $19
    ld e, $01                                     ; $6335: $1e $01
    rra                                           ; $6337: $1f
    cp l                                          ; $6338: $bd
    db $e3                                        ; $6339: $e3
    ld a, [hl-]                                   ; $633a: $3a
    db $e4                                        ; $633b: $e4
    nop                                           ; $633c: $00
    rst $18                                       ; $633d: $df
    ld [bc], a                                    ; $633e: $02
    push hl                                       ; $633f: $e5
    rlca                                          ; $6340: $07
    pop bc                                        ; $6341: $c1
    add e                                         ; $6342: $83
    ldh [$7f], a                                  ; $6343: $e0 $7f
    and b                                         ; $6345: $a0
    ldh [$bd], a                                  ; $6346: $e0 $bd
    ld [c], a                                     ; $6348: $e2
    ld a, [hl-]                                   ; $6349: $3a
    db $e4                                        ; $634a: $e4
    nop                                           ; $634b: $00
    rst $18                                       ; $634c: $df
    ld [$07c4], sp                                ; $634d: $08 $c4 $07
    jp nz, $1f1e                                  ; $6350: $c2 $1e $1f

    ld d, $0f                                     ; $6353: $16 $0f
    jr jr_070_636b                                ; $6355: $18 $14

    inc d                                         ; $6357: $14
    ld d, $bd                                     ; $6358: $16 $bd
    ld [c], a                                     ; $635a: $e2
    dec [hl]                                      ; $635b: $35
    jp $df00                                      ; $635c: $c3 $00 $df


    ld c, $a5                                     ; $635f: $0e $a5
    ei                                            ; $6361: $fb
    inc h                                         ; $6362: $24
    dec h                                         ; $6363: $25
    ld b, d                                       ; $6364: $42
    ldh [rNR21], a                                ; $6365: $e0 $16
    inc de                                        ; $6367: $13
    ld de, $1111                                  ; $6368: $11 $11 $11

jr_070_636b:
    rrca                                          ; $636b: $0f
    inc de                                        ; $636c: $13
    inc d                                         ; $636d: $14
    jr jr_070_6386                                ; $636e: $18 $16

    dec [hl]                                      ; $6370: $35
    pop hl                                        ; $6371: $e1
    nop                                           ; $6372: $00
    rst $18                                       ; $6373: $df
    ld c, $a2                                     ; $6374: $0e $a2
    ld [de], a                                    ; $6376: $12
    and b                                         ; $6377: $a0
    ld hl, sp+$0f                                 ; $6378: $f8 $0f
    and b                                         ; $637a: $a0
    dec b                                         ; $637b: $05
    ldh [$c5], a                                  ; $637c: $e0 $c5
    ret nz                                        ; $637e: $c0

    dec d                                         ; $637f: $15
    ld de, $0e10                                  ; $6380: $11 $10 $0e
    db $10                                        ; $6383: $10
    dec b                                         ; $6384: $05
    db $10                                        ; $6385: $10

jr_070_6386:
    cp l                                          ; $6386: $bd
    ldh [rNR21], a                                ; $6387: $e0 $16
    dec [hl]                                      ; $6389: $35
    ld [c], a                                     ; $638a: $e2
    nop                                           ; $638b: $00
    rst $18                                       ; $638c: $df
    ld c, $a0                                     ; $638d: $0e $a0
    ld [de], a                                    ; $638f: $12
    and b                                         ; $6390: $a0
    rrca                                          ; $6391: $0f

Jump_070_6392:
    and b                                         ; $6392: $a0
    db $fc                                        ; $6393: $fc
    adc b                                         ; $6394: $88
    ret nz                                        ; $6395: $c0

    ld b, d                                       ; $6396: $42
    ldh [rNR13], a                                ; $6397: $e0 $13
    ld de, $0304                                  ; $6399: $11 $04 $03
    inc bc                                        ; $639c: $03
    inc bc                                        ; $639d: $03
    ccf                                           ; $639e: $3f
    ld [bc], a                                    ; $639f: $02
    db $10                                        ; $63a0: $10
    ld de, $1e15                                  ; $63a1: $11 $15 $1e
    rra                                           ; $63a4: $1f
    cp d                                          ; $63a5: $ba
    add b                                         ; $63a6: $80
    nop                                           ; $63a7: $00
    rst $18                                       ; $63a8: $df
    ldh a, [$0e]                                  ; $63a9: $f0 $0e
    and b                                         ; $63ab: $a0
    ld [de], a                                    ; $63ac: $12
    and b                                         ; $63ad: $a0
    rrca                                          ; $63ae: $0f
    and b                                         ; $63af: $a0
    ld c, $e2                                     ; $63b0: $0e $e2
    rla                                           ; $63b2: $17
    ld de, $050f                                  ; $63b3: $11 $0f $05
    ld a, a                                       ; $63b6: $7f
    nop                                           ; $63b7: $00
    nop                                           ; $63b8: $00
    nop                                           ; $63b9: $00
    rlca                                          ; $63ba: $07
    rrca                                          ; $63bb: $0f
    ld de, $ba15                                  ; $63bc: $11 $15 $ba
    add d                                         ; $63bf: $82
    cp h                                          ; $63c0: $bc
    nop                                           ; $63c1: $00
    call c, $8413                                 ; $63c2: $dc $13 $84
    ld d, $16                                     ; $63c5: $16 $16
    add hl, de                                    ; $63c7: $19
    ld d, $cb                                     ; $63c8: $16 $cb
    ret nz                                        ; $63ca: $c0

    ld d, $f7                                     ; $63cb: $16 $f7
    inc d                                         ; $63cd: $14
    inc d                                         ; $63ce: $14
    inc de                                        ; $63cf: $13
    ret nz                                        ; $63d0: $c0

jr_070_63d1:
    db $e3                                        ; $63d1: $e3
    dec b                                         ; $63d2: $05
    db $10                                        ; $63d3: $10
    inc de                                        ; $63d4: $13
    ld d, $68                                     ; $63d5: $16 $68
    cp b                                          ; $63d7: $b8
    and d                                         ; $63d8: $a2
    nop                                           ; $63d9: $00
    db $db                                        ; $63da: $db
    add $e0                                       ; $63db: $c6 $e0
    inc d                                         ; $63dd: $14
    rst $38                                       ; $63de: $ff
    pop hl                                        ; $63df: $e1
    inc de                                        ; $63e0: $13
    inc de                                        ; $63e1: $13
    rst $00                                       ; $63e2: $c7
    ldh [$fc], a                                  ; $63e3: $e0 $fc
    db $fc                                        ; $63e5: $fc
    pop hl                                        ; $63e6: $e1
    rst $38                                       ; $63e7: $ff
    pop hl                                        ; $63e8: $e1
    inc b                                         ; $63e9: $04
    inc bc                                        ; $63ea: $03
    ld [$0403], sp                                ; $63eb: $08 $03 $04
    ld de, $1701                                  ; $63ee: $11 $01 $17
    dec [hl]                                      ; $63f1: $35
    call nz, $da00                                ; $63f2: $c4 $00 $da
    ret nz                                        ; $63f5: $c0

    ld [c], a                                     ; $63f6: $e2
    jp $c2e0                                      ; $63f7: $c3 $e0 $c2


    pop hl                                        ; $63fa: $e1
    adc b                                         ; $63fb: $88
    ret nz                                        ; $63fc: $c0

    rst $30                                       ; $63fd: $f7
    ldh [rNR34], a                                ; $63fe: $e0 $1e
    ld a, a                                       ; $6400: $7f
    ldh [rNR10], a                                ; $6401: $e0 $10
    ld c, $11                                     ; $6403: $0e $11
    ld c, $01                                     ; $6405: $0e $01
    ldh [$b8], a                                  ; $6407: $e0 $b8
    and c                                         ; $6409: $a1
    push af                                       ; $640a: $f5
    ld h, c                                       ; $640b: $61
    nop                                           ; $640c: $00
    nop                                           ; $640d: $00
    reti                                          ; $640e: $d9


    ld b, e                                       ; $640f: $43
    push hl                                       ; $6410: $e5
    ld b, d                                       ; $6411: $42
    pop hl                                        ; $6412: $e1
    ld b, e                                       ; $6413: $43
    ldh [$09], a                                  ; $6414: $e0 $09
    ret nz                                        ; $6416: $c0

    jr c, @-$1e                                   ; $6417: $38 $e0

    ccf                                           ; $6419: $3f
    jp $e041                                      ; $641a: $c3 $41 $e0


    jr nc, jr_070_63d1                            ; $641d: $30 $b2

    add e                                         ; $641f: $83
    nop                                           ; $6420: $00
    rst $18                                       ; $6421: $df
    ld d, b                                       ; $6422: $50
    add [hl]                                      ; $6423: $86
    ld b, d                                       ; $6424: $42
    and c                                         ; $6425: $a1
    ld a, [de]                                    ; $6426: $1a
    dec de                                        ; $6427: $1b
    dec l                                         ; $6428: $2d
    pop hl                                        ; $6429: $e1
    cp a                                          ; $642a: $bf
    and b                                         ; $642b: $a0
    ld [$a176], sp                                ; $642c: $08 $76 $a1
    cp c                                          ; $642f: $b9
    ld h, b                                       ; $6430: $60
    nop                                           ; $6431: $00
    rst $18                                       ; $6432: $df
    inc l                                         ; $6433: $2c
    ld d, b                                       ; $6434: $50
    add h                                         ; $6435: $84
    nop                                           ; $6436: $00
    jp $82c2                                      ; $6437: $c3 $c2 $82


    ld sp, hl                                     ; $643a: $f9
    add e                                         ; $643b: $83
    ld h, b                                       ; $643c: $60
    ld [bc], a                                    ; $643d: $02
    or l                                          ; $643e: $b5
    nop                                           ; $643f: $00
    adc $50                                       ; $6440: $ce $50
    add e                                         ; $6442: $83
    nop                                           ; $6443: $00
    jp nz, $84c2                                  ; $6444: $c2 $c2 $84

    inc e                                         ; $6447: $1c
    dec e                                         ; $6448: $1d
    cp [hl]                                       ; $6449: $be
    ld b, b                                       ; $644a: $40
    nop                                           ; $644b: $00
    ld [bc], a                                    ; $644c: $02
    or l                                          ; $644d: $b5
    nop                                           ; $644e: $00
    adc $4b                                       ; $644f: $ce $4b
    ld h, e                                       ; $6451: $63
    adc a                                         ; $6452: $8f
    db $e3                                        ; $6453: $e3
    add l                                         ; $6454: $85
    ld b, b                                       ; $6455: $40
    cp d                                          ; $6456: $ba
    ld [c], a                                     ; $6457: $e2
    cp [hl]                                       ; $6458: $be
    ld b, b                                       ; $6459: $40
    ld [bc], a                                    ; $645a: $02
    or l                                          ; $645b: $b5
    ret nz                                        ; $645c: $c0

    nop                                           ; $645d: $00
    sbc e                                         ; $645e: $9b
    pop bc                                        ; $645f: $c1
    ld b, c                                       ; $6460: $41
    or a                                          ; $6461: $b7
    ld h, d                                       ; $6462: $62
    ld a, b                                       ; $6463: $78
    ld b, c                                       ; $6464: $41
    nop                                           ; $6465: $00
    ld e, a                                       ; $6466: $5f
    nop                                           ; $6467: $00
    adc h                                         ; $6468: $8c
    jr nz, jr_070_648c                            ; $6469: $20 $21

    nop                                           ; $646b: $00
    pop bc                                        ; $646c: $c1
    ld b, c                                       ; $646d: $41
    ld a, [hl-]                                   ; $646e: $3a
    ld h, l                                       ; $646f: $65
    nop                                           ; $6470: $00
    ld e, a                                       ; $6471: $5f
    ld [bc], a                                    ; $6472: $02
    ld l, e                                       ; $6473: $6b
    ld a, l                                       ; $6474: $7d
    ld h, l                                       ; $6475: $65
    ld a, l                                       ; $6476: $7d
    ld b, d                                       ; $6477: $42
    inc a                                         ; $6478: $3c
    ld b, b                                       ; $6479: $40
    nop                                           ; $647a: $00
    ld e, a                                       ; $647b: $5f
    nop                                           ; $647c: $00
    ld a, [$43cb]                                 ; $647d: $fa $cb $43
    ld c, l                                       ; $6480: $4d
    nop                                           ; $6481: $00
    ld e, a                                       ; $6482: $5f
    db $fc                                        ; $6483: $fc
    rst $38                                       ; $6484: $ff
    nop                                           ; $6485: $00
    rst $18                                       ; $6486: $df
    db $fc                                        ; $6487: $fc
    rst $38                                       ; $6488: $ff
    nop                                           ; $6489: $00
    ld e, a                                       ; $648a: $5f
    db $fc                                        ; $648b: $fc

jr_070_648c:
    rst $38                                       ; $648c: $ff
    nop                                           ; $648d: $00
    nop                                           ; $648e: $00
    ld e, a                                       ; $648f: $5f
    db $fc                                        ; $6490: $fc
    rst $38                                       ; $6491: $ff
    nop                                           ; $6492: $00
    jp c, $fffc                                   ; $6493: $da $fc $ff

    nop                                           ; $6496: $00
    jp c, $fffc                                   ; $6497: $da $fc $ff

    nop                                           ; $649a: $00
    ld e, e                                       ; $649b: $5b
    db $fc                                        ; $649c: $fc
    rst $38                                       ; $649d: $ff
    nop                                           ; $649e: $00
    nop                                           ; $649f: $00
    ld e, e                                       ; $64a0: $5b
    db $fc                                        ; $64a1: $fc
    rst $38                                       ; $64a2: $ff
    nop                                           ; $64a3: $00
    rst $18                                       ; $64a4: $df
    db $fc                                        ; $64a5: $fc
    rst $38                                       ; $64a6: $ff
    nop                                           ; $64a7: $00
    rst $18                                       ; $64a8: $df
    db $fc                                        ; $64a9: $fc
    rst $38                                       ; $64aa: $ff
    nop                                           ; $64ab: $00
    rst $18                                       ; $64ac: $df
    nop                                           ; $64ad: $00
    rst $18                                       ; $64ae: $df
    nop                                           ; $64af: $00
    ld a, [de]                                    ; $64b0: $1a
    rst $38                                       ; $64b1: $ff
    nop                                           ; $64b2: $00
    rst $18                                       ; $64b3: $df
    db $fc                                        ; $64b4: $fc
    rst $38                                       ; $64b5: $ff
    nop                                           ; $64b6: $00
    rst $18                                       ; $64b7: $df
    db $fc                                        ; $64b8: $fc
    rst $38                                       ; $64b9: $ff
    nop                                           ; $64ba: $00
    rst $18                                       ; $64bb: $df
    db $fc                                        ; $64bc: $fc
    rst $38                                       ; $64bd: $ff
    nop                                           ; $64be: $00
    rst $18                                       ; $64bf: $df
    nop                                           ; $64c0: $00
    db $fc                                        ; $64c1: $fc
    rst $38                                       ; $64c2: $ff
    nop                                           ; $64c3: $00
    rst $18                                       ; $64c4: $df
    db $fc                                        ; $64c5: $fc
    rst $38                                       ; $64c6: $ff
    nop                                           ; $64c7: $00
    rst $18                                       ; $64c8: $df
    db $fc                                        ; $64c9: $fc
    rst $38                                       ; $64ca: $ff
    nop                                           ; $64cb: $00
    rst $18                                       ; $64cc: $df
    db $fc                                        ; $64cd: $fc
    rst $38                                       ; $64ce: $ff
    ld e, $ff                                     ; $64cf: $1e $ff
    nop                                           ; $64d1: $00
    nop                                           ; $64d2: $00
    db $db                                        ; $64d3: $db
    nop                                           ; $64d4: $00
    nop                                           ; $64d5: $00
    nop                                           ; $64d6: $00
    ld sp, hl                                     ; $64d7: $f9
    nop                                           ; $64d8: $00
    rst $38                                       ; $64d9: $ff
    rst $38                                       ; $64da: $ff
    xor $ed                                       ; $64db: $ee $ed
    ld d, $10                                     ; $64dd: $16 $10
    rla                                           ; $64df: $17
    ld h, $20                                     ; $64e0: $26 $20
    rrca                                          ; $64e2: $0f
    daa                                           ; $64e3: $27
    jr nc, jr_070_651c                            ; $64e4: $30 $36

    scf                                           ; $64e6: $37
    push de                                       ; $64e7: $d5
    rst $38                                       ; $64e8: $ff
    rst $38                                       ; $64e9: $ff
    rst $38                                       ; $64ea: $ff
    rst $38                                       ; $64eb: $ff
    rst $38                                       ; $64ec: $ff
    rst $38                                       ; $64ed: $ff
    rst $38                                       ; $64ee: $ff
    nop                                           ; $64ef: $00
    rst $38                                       ; $64f0: $ff
    rst $38                                       ; $64f1: $ff
    rst $38                                       ; $64f2: $ff
    rst $30                                       ; $64f3: $f7
    nop                                           ; $64f4: $00
    nop                                           ; $64f5: $00
    nop                                           ; $64f6: $00
    rst $38                                       ; $64f7: $ff
    rst $38                                       ; $64f8: $ff
    rst $38                                       ; $64f9: $ff
    ld [bc], a                                    ; $64fa: $02
    ld h, l                                       ; $64fb: $65
    sbc d                                         ; $64fc: $9a
    ld l, e                                       ; $64fd: $6b
    inc b                                         ; $64fe: $04
    ld [hl], e                                    ; $64ff: $73
    ld h, $73                                     ; $6500: $26 $73
    rst $38                                       ; $6502: $ff
    ld l, [hl]                                    ; $6503: $6e
    ld l, $4e                                     ; $6504: $2e $4e
    ld c, $4d                                     ; $6506: $0e $4d
    ld c, l                                       ; $6508: $4d
    ld c, l                                       ; $6509: $4d
    ld l, $ff                                     ; $650a: $2e $ff
    ld l, $2e                                     ; $650c: $2e $2e
    ld c, $2e                                     ; $650e: $0e $2e
    ld c, $0e                                     ; $6510: $0e $0e
    ld c, l                                       ; $6512: $4d
    dec c                                         ; $6513: $0d
    ld b, a                                       ; $6514: $47
    dec c                                         ; $6515: $0d
    ld c, l                                       ; $6516: $4d
    dec c                                         ; $6517: $0d
    pop af                                        ; $6518: $f1
    ldh [$fc], a                                  ; $6519: $e0 $fc
    db $e4                                        ; $651b: $e4

jr_070_651c:
    ld a, [c]                                     ; $651c: $f2
    ldh [$6e], a                                  ; $651d: $e0 $6e
    db $eb                                        ; $651f: $eb
    ldh [$60], a                                  ; $6520: $e0 $60
    ldh a, [$e3]                                  ; $6522: $f0 $e3
    call c, $dde1                                 ; $6524: $dc $e1 $dd
    ldh [$fe], a                                  ; $6527: $e0 $fe
    ldh [$dd], a                                  ; $6529: $e0 $dd
    ldh [$0d], a                                  ; $652b: $e0 $0d
    ld l, l                                       ; $652d: $6d
    ld a, [c]                                     ; $652e: $f2
    pop hl                                        ; $652f: $e1
    daa                                           ; $6530: $27
    ld c, [hl]                                    ; $6531: $4e
    ld c, $4e                                     ; $6532: $0e $4e
    db $ed                                        ; $6534: $ed
    pop hl                                        ; $6535: $e1
    ret nz                                        ; $6536: $c0

    and $6d                                       ; $6537: $e6 $6d
    ret nz                                        ; $6539: $c0

    pop hl                                        ; $653a: $e1
    cp h                                          ; $653b: $bc
    ldh [rNR21], a                                ; $653c: $e0 $16
    push bc                                       ; $653e: $c5
    pop hl                                        ; $653f: $e1
    ld c, l                                       ; $6540: $4d
    dec c                                         ; $6541: $0d
    or d                                          ; $6542: $b2
    pop hl                                        ; $6543: $e1
    dec c                                         ; $6544: $0d
    xor b                                         ; $6545: $a8
    ldh [$b7], a                                  ; $6546: $e0 $b7
    db $e3                                        ; $6548: $e3
    ret nz                                        ; $6549: $c0

    db $eb                                        ; $654a: $eb
    push bc                                       ; $654b: $c5
    ld c, l                                       ; $654c: $4d
    ret nz                                        ; $654d: $c0

    ldh [$6e], a                                  ; $654e: $e0 $6e
    add h                                         ; $6550: $84
    pop hl                                        ; $6551: $e1
    adc d                                         ; $6552: $8a
    ld [c], a                                     ; $6553: $e2
    pop af                                        ; $6554: $f1
    ld [c], a                                     ; $6555: $e2
    ld c, $6d                                     ; $6556: $0e $6d
    ld [hl], e                                    ; $6558: $73
    ld l, l                                       ; $6559: $6d
    ld l, l                                       ; $655a: $6d
    add l                                         ; $655b: $85
    pop hl                                        ; $655c: $e1
    sub h                                         ; $655d: $94
    ld [c], a                                     ; $655e: $e2
    dec l                                         ; $655f: $2d
    dec c                                         ; $6560: $0d
    ld l, l                                       ; $6561: $6d
    ld [hl], d                                    ; $6562: $72
    ld [c], a                                     ; $6563: $e2
    pop bc                                        ; $6564: $c1
    dec c                                         ; $6565: $0d
    ld l, e                                       ; $6566: $6b
    ldh [$6f], a                                  ; $6567: $e0 $6f
    push hl                                       ; $6569: $e5
    ld e, c                                       ; $656a: $59
    pop hl                                        ; $656b: $e1
    add b                                         ; $656c: $80
    ldh [$60], a                                  ; $656d: $e0 $60
    db $e3                                        ; $656f: $e3
    ld l, $6e                                     ; $6570: $2e $6e
    cp b                                          ; $6572: $b8
    ld [hl], d                                    ; $6573: $72
    db $e4                                        ; $6574: $e4
    add b                                         ; $6575: $80
    db $e3                                        ; $6576: $e3
    ld c, b                                       ; $6577: $48
    pop hl                                        ; $6578: $e1
    dec c                                         ; $6579: $0d
    ld c, l                                       ; $657a: $4d
    ld c, $85                                     ; $657b: $0e $85
    pop hl                                        ; $657d: $e1
    ld l, l                                       ; $657e: $6d
    rrca                                          ; $657f: $0f
    dec bc                                        ; $6580: $0b
    dec bc                                        ; $6581: $0b
    dec bc                                        ; $6582: $0b
    dec c                                         ; $6583: $0d
    cp a                                          ; $6584: $bf
    ldh [rLCDC], a                                ; $6585: $e0 $40
    db $e3                                        ; $6587: $e3
    dec hl                                        ; $6588: $2b
    ld [c], a                                     ; $6589: $e2
    add sp, -$20                                  ; $658a: $e8 $e0
    jr nz, jr_070_65f7                            ; $658c: $20 $69

    db $e4                                        ; $658e: $e4
    cp c                                          ; $658f: $b9
    db $e3                                        ; $6590: $e3
    dec e                                         ; $6591: $1d
    ldh [$33], a                                  ; $6592: $e0 $33
    pop hl                                        ; $6594: $e1
    ret nz                                        ; $6595: $c0

    db $e4                                        ; $6596: $e4
    ld l, l                                       ; $6597: $6d
    add e                                         ; $6598: $83
    pop hl                                        ; $6599: $e1
    cp a                                          ; $659a: $bf
    db $e3                                        ; $659b: $e3
    ld c, l                                       ; $659c: $4d
    dec c                                         ; $659d: $0d
    jp $6be0                                      ; $659e: $c3 $e0 $6b


    ld l, e                                       ; $65a1: $6b
    ret nz                                        ; $65a2: $c0

    ldh [$fb], a                                  ; $65a3: $e0 $fb
    ret nz                                        ; $65a5: $c0

    dec l                                         ; $65a6: $2d
    cp h                                          ; $65a7: $bc
    db $e4                                        ; $65a8: $e4
    add e                                         ; $65a9: $83
    ld c, l                                       ; $65aa: $4d
    ld c, l                                       ; $65ab: $4d
    ld a, l                                       ; $65ac: $7d
    db $e3                                        ; $65ad: $e3
    cp a                                          ; $65ae: $bf
    db $e4                                        ; $65af: $e4
    xor b                                         ; $65b0: $a8
    push hl                                       ; $65b1: $e5
    ld a, [c]                                     ; $65b2: $f2
    push bc                                       ; $65b3: $c5
    ld c, d                                       ; $65b4: $4a
    ldh [$6d], a                                  ; $65b5: $e0 $6d
    inc e                                         ; $65b7: $1c
    db $db                                        ; $65b8: $db
    pop bc                                        ; $65b9: $c1
    ld b, $e2                                     ; $65ba: $06 $e2
    ld l, l                                       ; $65bc: $6d
    ld c, e                                       ; $65bd: $4b
    ld l, e                                       ; $65be: $6b
    ld [bc], a                                    ; $65bf: $02
    ldh [$fd], a                                  ; $65c0: $e0 $fd
    pop hl                                        ; $65c2: $e1
    ld a, e                                       ; $65c3: $7b
    ldh [rNR11], a                                ; $65c4: $e0 $11
    dec bc                                        ; $65c6: $0b
    ld a, [hl-]                                   ; $65c7: $3a
    ldh [rNR14], a                                ; $65c8: $e0 $14
    db $e3                                        ; $65ca: $e3
    sbc [hl]                                      ; $65cb: $9e
    ld [c], a                                     ; $65cc: $e2
    ld l, l                                       ; $65cd: $6d
    add b                                         ; $65ce: $80
    rst $20                                       ; $65cf: $e7
    ld b, b                                       ; $65d0: $40
    pop hl                                        ; $65d1: $e1
    or d                                          ; $65d2: $b2
    call nz, $9492                                ; $65d3: $c4 $92 $94
    ret nz                                        ; $65d6: $c0

    ld c, $82                                     ; $65d7: $0e $82
    ret nz                                        ; $65d9: $c0

    add [hl]                                      ; $65da: $86
    jp $846d                                      ; $65db: $c3 $6d $84


    ldh [$c5], a                                  ; $65de: $e0 $c5
    pop hl                                        ; $65e0: $e1
    dec hl                                        ; $65e1: $2b
    rlca                                          ; $65e2: $07
    dec c                                         ; $65e3: $0d
    dec c                                         ; $65e4: $0d
    ld c, e                                       ; $65e5: $4b
    push af                                       ; $65e6: $f5
    pop hl                                        ; $65e7: $e1
    ld a, [hl-]                                   ; $65e8: $3a
    pop hl                                        ; $65e9: $e1
    ld l, $e1                                     ; $65ea: $2e $e1
    call nc, $59c0                                ; $65ec: $d4 $c0 $59
    call nz, Call_070_7270                        ; $65ef: $c4 $70 $72
    jp nz, $e940                                  ; $65f2: $c2 $40 $e9

    ld h, d                                       ; $65f5: $62
    ld [c], a                                     ; $65f6: $e2

jr_070_65f7:
    ld b, [hl]                                    ; $65f7: $46
    jp Jump_070_6d0d                              ; $65f8: $c3 $0d $6d


    dec c                                         ; $65fb: $0d
    ld b, l                                       ; $65fc: $45
    ldh [$75], a                                  ; $65fd: $e0 $75
    ld c, e                                       ; $65ff: $4b
    ei                                            ; $6600: $fb
    ldh [$2b], a                                  ; $6601: $e0 $2b
    ccf                                           ; $6603: $3f
    ldh [rWX], a                                  ; $6604: $e0 $4b
    ld c, e                                       ; $6606: $4b
    ld c, e                                       ; $6607: $4b
    inc sp                                        ; $6608: $33
    ret nz                                        ; $6609: $c0

    ld [$e1bf], sp                                ; $660a: $08 $bf $e1
    call nc, $cbc5                                ; $660d: $d4 $c5 $cb
    pop bc                                        ; $6610: $c1
    ld c, $8e                                     ; $6611: $0e $8e
    ret nz                                        ; $6613: $c0

    add b                                         ; $6614: $80
    db $ec                                        ; $6615: $ec
    ld [de], a                                    ; $6616: $12
    ret nz                                        ; $6617: $c0

    cp h                                          ; $6618: $bc
    push bc                                       ; $6619: $c5
    ld [bc], a                                    ; $661a: $02
    jp z, $2be3                                   ; $661b: $ca $e3 $2b

    ld a, a                                       ; $661e: $7f
    ldh [$bf], a                                  ; $661f: $e0 $bf
    ld [c], a                                     ; $6621: $e2
    scf                                           ; $6622: $37
    pop bc                                        ; $6623: $c1
    cp b                                          ; $6624: $b8
    pop bc                                        ; $6625: $c1
    db $e3                                        ; $6626: $e3
    and h                                         ; $6627: $a4
    dec bc                                        ; $6628: $0b
    pop hl                                        ; $6629: $e1
    ld [$c000], sp                                ; $662a: $08 $00 $c0
    ret nc                                        ; $662d: $d0

    and b                                         ; $662e: $a0
    sbc d                                         ; $662f: $9a
    pop bc                                        ; $6630: $c1
    dec l                                         ; $6631: $2d
    call Call_070_4ea1                            ; $6632: $cd $a1 $4e
    add $80                                       ; $6635: $c6 $80
    jp nz, $c007                                  ; $6637: $c2 $07 $c0

    dec de                                        ; $663a: $1b
    ld l, e                                       ; $663b: $6b
    dec bc                                        ; $663c: $0b
    rst $38                                       ; $663d: $ff
    ret nz                                        ; $663e: $c0

    ld c, e                                       ; $663f: $4b
    ld c, e                                       ; $6640: $4b
    ld sp, hl                                     ; $6641: $f9
    pop hl                                        ; $6642: $e1
    halt                                          ; $6643: $76
    ldh [$39], a                                  ; $6644: $e0 $39
    ldh [$03], a                                  ; $6646: $e0 $03
    dec l                                         ; $6648: $2d
    ld l, l                                       ; $6649: $6d
    ret nz                                        ; $664a: $c0

    db $eb                                        ; $664b: $eb
    adc h                                         ; $664c: $8c
    and $97                                       ; $664d: $e6 $97
    and [hl]                                      ; $664f: $a6
    ld a, d                                       ; $6650: $7a
    and $0b                                       ; $6651: $e6 $0b
    ret nz                                        ; $6653: $c0

    ld c, e                                       ; $6654: $4b
    ldh [rLCDC], a                                ; $6655: $e0 $40
    adc d                                         ; $6657: $8a
    pop hl                                        ; $6658: $e1
    ld a, [hl]                                    ; $6659: $7e
    ldh [$f4], a                                  ; $665a: $e0 $f4
    ld [c], a                                     ; $665c: $e2
    dec sp                                        ; $665d: $3b
    ldh [$ec], a                                  ; $665e: $e0 $ec
    and c                                         ; $6660: $a1
    and e                                         ; $6661: $a3
    and h                                         ; $6662: $a4
    ld l, l                                       ; $6663: $6d
    ret nz                                        ; $6664: $c0

    push hl                                       ; $6665: $e5
    ld c, b                                       ; $6666: $48
    ld e, h                                       ; $6667: $5c

Jump_070_6668:
    and c                                         ; $6668: $a1
    xor b                                         ; $6669: $a8
    and e                                         ; $666a: $a3
    xor $a1                                       ; $666b: $ee $a1

jr_070_666d:
    ld l, [hl]                                    ; $666d: $6e
    ld a, [hl+]                                   ; $666e: $2a
    ldh [$ab], a                                  ; $666f: $e0 $ab
    and h                                         ; $6671: $a4
    dec l                                         ; $6672: $2d
    call z, Call_000_0ee3                         ; $6673: $cc $e3 $0e
    ccf                                           ; $6676: $3f
    ldh [$0b], a                                  ; $6677: $e0 $0b
    dec l                                         ; $6679: $2d
    dec l                                         ; $667a: $2d
    db $f4                                        ; $667b: $f4
    pop bc                                        ; $667c: $c1
    ret nz                                        ; $667d: $c0

    ldh [$30], a                                  ; $667e: $e0 $30
    and b                                         ; $6680: $a0
    and e                                         ; $6681: $a3
    and h                                         ; $6682: $a4
    add b                                         ; $6683: $80
    or [hl]                                       ; $6684: $b6
    pop hl                                        ; $6685: $e1

Jump_070_6686:
    add b                                         ; $6686: $80
    and $28                                       ; $6687: $e6 $28
    and b                                         ; $6689: $a0
    ld e, b                                       ; $668a: $58
    and c                                         ; $668b: $a1
    ld h, b                                       ; $668c: $60
    and b                                         ; $668d: $a0
    db $eb                                        ; $668e: $eb
    pop bc                                        ; $668f: $c1
    ld [$6dc1], a                                 ; $6690: $ea $c1 $6d
    call nz, $c05f                                ; $6693: $c4 $5f $c0
    adc h                                         ; $6696: $8c
    ld [c], a                                     ; $6697: $e2
    dec hl                                        ; $6698: $2b
    rst $38                                       ; $6699: $ff
    ret nz                                        ; $669a: $c0

    jp $f8c0                                      ; $669b: $c3 $c0 $f8


    and c                                         ; $669e: $a1
    ld c, e                                       ; $669f: $4b
    dec bc                                        ; $66a0: $0b
    add b                                         ; $66a1: $80
    ld l, l                                       ; $66a2: $6d
    and b                                         ; $66a3: $a0
    ret c                                         ; $66a4: $d8

    ld [c], a                                     ; $66a5: $e2
    cp h                                          ; $66a6: $bc
    and e                                         ; $66a7: $a3
    ld a, [hl]                                    ; $66a8: $7e
    jp $c2ac                                      ; $66a9: $c3 $ac $c2


    call $b8a1                                    ; $66ac: $cd $a1 $b8
    xor b                                         ; $66af: $a8
    ld c, [hl]                                    ; $66b0: $4e
    ld h, b                                       ; $66b1: $60
    db $f4                                        ; $66b2: $f4
    pop bc                                        ; $66b3: $c1
    ld c, d                                       ; $66b4: $4a
    jp $c104                                      ; $66b5: $c3 $04 $c1


    ld a, [hl]                                    ; $66b8: $7e
    ret nz                                        ; $66b9: $c0

    add d                                         ; $66ba: $82
    pop hl                                        ; $66bb: $e1
    ld c, e                                       ; $66bc: $4b
    ld c, e                                       ; $66bd: $4b
    cp c                                          ; $66be: $b9
    and b                                         ; $66bf: $a0
    db $10                                        ; $66c0: $10
    ld l, e                                       ; $66c1: $6b
    and d                                         ; $66c2: $a2
    db $fc                                        ; $66c3: $fc
    and d                                         ; $66c4: $a2
    inc e                                         ; $66c5: $1c
    and c                                         ; $66c6: $a1
    sub $c3                                       ; $66c7: $d6 $c3
    ld l, l                                       ; $66c9: $6d
    jr z, jr_070_666d                             ; $66ca: $28 $a1

    add b                                         ; $66cc: $80
    db $e4                                        ; $66cd: $e4
    xor d                                         ; $66ce: $aa
    add h                                         ; $66cf: $84
    ld [$c292], sp                                ; $66d0: $08 $92 $c2
    ld c, e                                       ; $66d3: $4b
    pop bc                                        ; $66d4: $c1
    ld b, c                                       ; $66d5: $41
    pop hl                                        ; $66d6: $e1
    dec hl                                        ; $66d7: $2b
    jp Jump_000_30e2                              ; $66d8: $c3 $e2 $30


    pop bc                                        ; $66db: $c1
    ld [hl], $a2                                  ; $66dc: $36 $a2
    sub c                                         ; $66de: $91
    add a                                         ; $66df: $87
    nop                                           ; $66e0: $00
    ld d, a                                       ; $66e1: $57
    and h                                         ; $66e2: $a4
    or $81                                        ; $66e3: $f6 $81
    ret nz                                        ; $66e5: $c0

    db $ec                                        ; $66e6: $ec
    and [hl]                                      ; $66e7: $a6
    ld [c], a                                     ; $66e8: $e2
    add b                                         ; $66e9: $80
    and b                                         ; $66ea: $a0
    ld b, c                                       ; $66eb: $41
    and b                                         ; $66ec: $a0
    ld b, $e2                                     ; $66ed: $06 $e2
    rst $30                                       ; $66ef: $f7
    and b                                         ; $66f0: $a0
    nop                                           ; $66f1: $00

jr_070_66f2:
    cp c                                          ; $66f2: $b9
    and d                                         ; $66f3: $a2
    adc b                                         ; $66f4: $88
    and b                                         ; $66f5: $a0
    sub b                                         ; $66f6: $90
    pop hl                                        ; $66f7: $e1
    sub c                                         ; $66f8: $91
    add h                                         ; $66f9: $84
    ld [hl-], a                                   ; $66fa: $32
    add e                                         ; $66fb: $83
    scf                                           ; $66fc: $37
    and e                                         ; $66fd: $a3
    ld b, b                                       ; $66fe: $40
    jp hl                                         ; $66ff: $e9


    ret nz                                        ; $6700: $c0

    ld [c], a                                     ; $6701: $e2
    ld bc, $0b6d                                  ; $6702: $01 $6d $0b
    jp nz, $e2bf                                  ; $6705: $c2 $bf $e2

    scf                                           ; $6708: $37
    pop bc                                        ; $6709: $c1
    ld a, a                                       ; $670a: $7f
    jp nz, $c1be                                  ; $670b: $c2 $be $c1

    sub c                                         ; $670e: $91
    adc b                                         ; $670f: $88
    ld [hl-], a                                   ; $6710: $32
    add c                                         ; $6711: $81
    add b                                         ; $6712: $80
    ret z                                         ; $6713: $c8

    and l                                         ; $6714: $a5
    or a                                          ; $6715: $b7
    ld [c], a                                     ; $6716: $e2
    add b                                         ; $6717: $80
    rst $20                                       ; $6718: $e7
    ld b, b                                       ; $6719: $40
    add b                                         ; $671a: $80
    ret nz                                        ; $671b: $c0

    db $e3                                        ; $671c: $e3
    ld a, [hl]                                    ; $671d: $7e
    and $76                                       ; $671e: $e6 $76
    ret nz                                        ; $6720: $c0

    ld c, e                                       ; $6721: $4b
    inc bc                                        ; $6722: $03
    dec c                                         ; $6723: $0d
    dec l                                         ; $6724: $2d
    ld l, c                                       ; $6725: $69
    add c                                         ; $6726: $81
    add hl, de                                    ; $6727: $19
    add sp, $4e                                   ; $6728: $e8 $4e
    rst $00                                       ; $672a: $c7
    rst $30                                       ; $672b: $f7
    add [hl]                                      ; $672c: $86
    nop                                           ; $672d: $00
    db $e3                                        ; $672e: $e3
    jr z, jr_070_66f2                             ; $672f: $28 $c1

    ld hl, sp+$0b                                 ; $6731: $f8 $0b
    jp nz, $81c4                                  ; $6733: $c2 $c4 $81

    add $e0                                       ; $6736: $c6 $e0
    ld c, e                                       ; $6738: $4b
    dec bc                                        ; $6739: $0b
    dec hl                                        ; $673a: $2b
    ld a, [bc]                                    ; $673b: $0a
    ld l, d                                       ; $673c: $6a
    inc bc                                        ; $673d: $03
    dec bc                                        ; $673e: $0b
    dec c                                         ; $673f: $0d
    db $eb                                        ; $6740: $eb
    ld h, c                                       ; $6741: $61
    ld e, c                                       ; $6742: $59
    add sp, $4e                                   ; $6743: $e8 $4e
    ret z                                         ; $6745: $c8

    ld sp, $ea85                                  ; $6746: $31 $85 $ea
    ld h, e                                       ; $6749: $63
    cp $c1                                        ; $674a: $fe $c1
    ld hl, sp-$02                                 ; $674c: $f8 $fe
    add b                                         ; $674e: $80
    ret nz                                        ; $674f: $c0

    db $e4                                        ; $6750: $e4
    inc a                                         ; $6751: $3c
    and c                                         ; $6752: $a1
    ld l, e                                       ; $6753: $6b
    dec hl                                        ; $6754: $2b
    ld a, [bc]                                    ; $6755: $0a
    ld a, [bc]                                    ; $6756: $0a
    ld c, e                                       ; $6757: $4b
    nop                                           ; $6758: $00
    push af                                       ; $6759: $f5
    ld h, b                                       ; $675a: $60
    ret nz                                        ; $675b: $c0

    xor $4e                                       ; $675c: $ee $4e
    push bc                                       ; $675e: $c5
    inc de                                        ; $675f: $13
    ld h, d                                       ; $6760: $62
    xor h                                         ; $6761: $ac
    add h                                         ; $6762: $84
    ld a, e                                       ; $6763: $7b
    ld h, c                                       ; $6764: $61
    rst $38                                       ; $6765: $ff
    add d                                         ; $6766: $82
    rst $38                                       ; $6767: $ff
    jp nz, $fc1e                                  ; $6768: $c2 $1e $fc

    add d                                         ; $676b: $82
    dec bc                                        ; $676c: $0b
    ld c, e                                       ; $676d: $4b
    ld a, [bc]                                    ; $676e: $0a
    ld c, d                                       ; $676f: $4a
    push af                                       ; $6770: $f5
    ld h, b                                       ; $6771: $60
    db $fd                                        ; $6772: $fd
    and c                                         ; $6773: $a1
    ld de, $8087                                  ; $6774: $11 $87 $80
    adc [hl]                                      ; $6777: $8e
    ret                                           ; $6778: $c9


    ld [$ac42], a                                 ; $6779: $ea $42 $ac
    add h                                         ; $677c: $84
    add [hl]                                      ; $677d: $86
    ld h, c                                       ; $677e: $61
    nop                                           ; $677f: $00
    and b                                         ; $6780: $a0
    jp z, Jump_000_3e82                           ; $6781: $ca $82 $3e

    add b                                         ; $6784: $80
    dec hl                                        ; $6785: $2b
    dec de                                        ; $6786: $1b
    ld c, e                                       ; $6787: $4b
    dec hl                                        ; $6788: $2b
    dec a                                         ; $6789: $3d
    add b                                         ; $678a: $80
    ld a, [hl+]                                   ; $678b: $2a
    ld a, [hl+]                                   ; $678c: $2a
    ld a, d                                       ; $678d: $7a
    add b                                         ; $678e: $80
    ret nz                                        ; $678f: $c0

    db $eb                                        ; $6790: $eb
    adc [hl]                                      ; $6791: $8e
    ret z                                         ; $6792: $c8

    ld [$c4c0], sp                                ; $6793: $08 $c0 $c4
    xor h                                         ; $6796: $ac
    add d                                         ; $6797: $82
    ld [hl], e                                    ; $6798: $73
    and d                                         ; $6799: $a2
    ld l, l                                       ; $679a: $6d
    pop bc                                        ; $679b: $c1
    ldh [rOBP0], a                                ; $679c: $e0 $48
    add b                                         ; $679e: $80
    cp a                                          ; $679f: $bf
    jp nz, $a17a                                  ; $67a0: $c2 $7a $a1

    nop                                           ; $67a3: $00
    ei                                            ; $67a4: $fb
    pop bc                                        ; $67a5: $c1
    ld a, a                                       ; $67a6: $7f
    jp $8591                                      ; $67a7: $c3 $91 $85


    ld e, e                                       ; $67aa: $5b
    and b                                         ; $67ab: $a0
    ret nz                                        ; $67ac: $c0

    add sp, -$49                                  ; $67ad: $e8 $b7
    ld h, e                                       ; $67af: $63
    db $ec                                        ; $67b0: $ec
    add e                                         ; $67b1: $83
    ld [bc], a                                    ; $67b2: $02
    jp nz, $ca00                                  ; $67b3: $c2 $00 $ca

    and e                                         ; $67b6: $a3
    add c                                         ; $67b7: $81
    add b                                         ; $67b8: $80
    ld hl, sp+$63                                 ; $67b9: $f8 $63
    ld hl, sp-$5d                                 ; $67bb: $f8 $a3
    ret nz                                        ; $67bd: $c0

    db $e3                                        ; $67be: $e3
    ld e, b                                       ; $67bf: $58
    ld h, c                                       ; $67c0: $61
    ei                                            ; $67c1: $fb
    add h                                         ; $67c2: $84
    dec [hl]                                      ; $67c3: $35
    ret z                                         ; $67c4: $c8

    nop                                           ; $67c5: $00
    ret nz                                        ; $67c6: $c0

    add sp, $0a                                   ; $67c7: $e8 $0a
    ld b, b                                       ; $67c9: $40
    adc [hl]                                      ; $67ca: $8e
    add d                                         ; $67cb: $82
    ld a, $61                                     ; $67cc: $3e $61
    ld b, d                                       ; $67ce: $42
    ld h, c                                       ; $67cf: $61
    ld sp, hl                                     ; $67d0: $f9
    jp nz, $817d                                  ; $67d1: $c2 $7d $81

    ld a, $a3                                     ; $67d4: $3e $a3
    nop                                           ; $67d6: $00
    ld h, c                                       ; $67d7: $61
    jp nz, $422a                                  ; $67d8: $c2 $2a $42

    ld c, [hl]                                    ; $67db: $4e
    xor d                                         ; $67dc: $aa
    xor h                                         ; $67dd: $ac
    add l                                         ; $67de: $85
    rst $18                                       ; $67df: $df
    add b                                         ; $67e0: $80
    add d                                         ; $67e1: $82
    and d                                         ; $67e2: $a2
    ret                                           ; $67e3: $c9


    ld h, d                                       ; $67e4: $62

jr_070_67e5:
    ld a, a                                       ; $67e5: $7f
    add c                                         ; $67e6: $81
    nop                                           ; $67e7: $00
    cp h                                          ; $67e8: $bc
    jp $813d                                      ; $67e9: $c3 $3d $81


    ld a, $a3                                     ; $67ec: $3e $a3
    ld c, c                                       ; $67ee: $49
    add d                                         ; $67ef: $82
    cp c                                          ; $67f0: $b9
    add b                                         ; $67f1: $80
    ccf                                           ; $67f2: $3f
    ld h, d                                       ; $67f3: $62
    ld a, [hl-]                                   ; $67f4: $3a
    add h                                         ; $67f5: $84
    ld l, l                                       ; $67f6: $6d
    ld b, h                                       ; $67f7: $44
    jr nz, @+$80                                  ; $67f8: $20 $7e

    push bc                                       ; $67fa: $c5
    dec c                                         ; $67fb: $0d
    add e                                         ; $67fc: $83
    ld bc, $c080                                  ; $67fd: $01 $80 $c0
    db $e3                                        ; $6800: $e3
    ccf                                           ; $6801: $3f
    push hl                                       ; $6802: $e5
    dec bc                                        ; $6803: $0b
    rst $28                                       ; $6804: $ef
    inc hl                                        ; $6805: $23
    sbc l                                         ; $6806: $9d
    ld h, e                                       ; $6807: $63
    nop                                           ; $6808: $00
    or e                                          ; $6809: $b3
    ld b, [hl]                                    ; $680a: $46
    sbc l                                         ; $680b: $9d
    ld [hl+], a                                   ; $680c: $22
    cp [hl]                                       ; $680d: $be
    push hl                                       ; $680e: $e5
    ld a, [hl+]                                   ; $680f: $2a
    ld b, e                                       ; $6810: $43
    add d                                         ; $6811: $82
    ld b, b                                       ; $6812: $40
    ld b, b                                       ; $6813: $40
    ld h, h                                       ; $6814: $64
    db $fd                                        ; $6815: $fd
    add d                                         ; $6816: $82
    scf                                           ; $6817: $37
    ld h, e                                       ; $6818: $63
    add b                                         ; $6819: $80
    db $ed                                        ; $681a: $ed
    call nz, Call_000_20ad                        ; $681b: $c4 $ad $20
    or e                                          ; $681e: $b3
    ld c, d                                       ; $681f: $4a
    ld l, c                                       ; $6820: $69
    ld b, d                                       ; $6821: $42
    ld d, h                                       ; $6822: $54
    inc hl                                        ; $6823: $23
    add d                                         ; $6824: $82
    ld b, [hl]                                    ; $6825: $46
    pop bc                                        ; $6826: $c1
    ld [c], a                                     ; $6827: $e2
    ld l, e                                       ; $6828: $6b
    nop                                           ; $6829: $00
    add b                                         ; $682a: $80
    add e                                         ; $682b: $83
    pop bc                                        ; $682c: $c1

jr_070_682d:
    db $e3                                        ; $682d: $e3
    or [hl]                                       ; $682e: $b6
    jr nz, jr_070_682d                            ; $682f: $20 $fc

    add d                                         ; $6831: $82
    ld l, d                                       ; $6832: $6a
    ldh [$ac], a                                  ; $6833: $e0 $ac
    ld [hl+], a                                   ; $6835: $22
    db $10                                        ; $6836: $10
    jp nz, Jump_000_02f9                          ; $6837: $c2 $f9 $02

    ld b, b                                       ; $683a: $40
    ld l, h                                       ; $683b: $6c
    pop bc                                        ; $683c: $c1
    db $fc                                        ; $683d: $fc
    ld bc, $04dd                                  ; $683e: $01 $dd $04
    jp nz, $cec2                                  ; $6841: $c2 $c2 $ce

    add c                                         ; $6844: $81
    ld b, b                                       ; $6845: $40
    add e                                         ; $6846: $83
    dec hl                                        ; $6847: $2b
    nop                                           ; $6848: $00
    ret nz                                        ; $6849: $c0

    nop                                           ; $684a: $00
    ld [hl], a                                    ; $684b: $77
    add d                                         ; $684c: $82
    ld [hl], $40                                  ; $684d: $36 $40
    ld l, d                                       ; $684f: $6a
    jp Jump_000_21ed                              ; $6850: $c3 $ed $21


    ldh a, [rNR43]                                ; $6853: $f0 $22
    or e                                          ; $6855: $b3
    ld b, l                                       ; $6856: $45
    cp a                                          ; $6857: $bf
    inc b                                         ; $6858: $04
    add h                                         ; $6859: $84
    ld [bc], a                                    ; $685a: $02
    jr c, jr_070_67e5                             ; $685b: $38 $88

    inc bc                                        ; $685d: $03
    sub c                                         ; $685e: $91
    add e                                         ; $685f: $83
    jp Jump_000_2bc3                              ; $6860: $c3 $c3 $2b


    ld l, e                                       ; $6863: $6b
    ld a, [bc]                                    ; $6864: $0a
    add h                                         ; $6865: $84
    and b                                         ; $6866: $a0
    ld a, b                                       ; $6867: $78
    ld h, d                                       ; $6868: $62
    add h                                         ; $6869: $84
    dec hl                                        ; $686a: $2b
    jp $e077                                      ; $686b: $c3 $77 $e0


    ld l, e                                       ; $686e: $6b
    inc sp                                        ; $686f: $33
    ld h, b                                       ; $6870: $60
    add c                                         ; $6871: $81
    and d                                         ; $6872: $a2
    ret nz                                        ; $6873: $c0

    push hl                                       ; $6874: $e5
    cp a                                          ; $6875: $bf
    ld bc, $644d                                  ; $6876: $01 $4d $64
    jp nz, $8220                                  ; $6879: $c2 $20 $82

    inc h                                         ; $687c: $24
    dec l                                         ; $687d: $2d
    ld bc, $41e1                                  ; $687e: $01 $e1 $41
    add h                                         ; $6881: $84
    ld c, e                                       ; $6882: $4b
    ld a, [bc]                                    ; $6883: $0a
    rst $38                                       ; $6884: $ff
    ldh [rP1], a                                  ; $6885: $e0 $00
    ld hl, sp+$61                                 ; $6887: $f8 $61
    xor h                                         ; $6889: $ac
    ld b, e                                       ; $688a: $43
    or h                                          ; $688b: $b4
    add b                                         ; $688c: $80
    db $e4                                        ; $688d: $e4
    pop bc                                        ; $688e: $c1
    ret nz                                        ; $688f: $c0

    ldh [rRP], a                                  ; $6890: $e0 $56
    ld b, $38                                     ; $6892: $06 $38
    push hl                                       ; $6894: $e5
    dec l                                         ; $6895: $2d
    ld h, l                                       ; $6896: $65
    ld a, [c]                                     ; $6897: $f2
    ld l, [hl]                                    ; $6898: $6e
    ld b, b                                       ; $6899: $40
    ld l, e                                       ; $689a: $6b
    ld b, d                                       ; $689b: $42
    ld hl, $e2c9                                  ; $689c: $21 $c9 $e2
    dec bc                                        ; $689f: $0b
    dec bc                                        ; $68a0: $0b
    ld a, [hl+]                                   ; $68a1: $2a
    ld a, [bc]                                    ; $68a2: $0a
    dec b                                         ; $68a3: $05
    ld a, [bc]                                    ; $68a4: $0a
    ld hl, sp+$23                                 ; $68a5: $f8 $23
    dec l                                         ; $68a7: $2d
    ld l, h                                       ; $68a8: $6c
    and e                                         ; $68a9: $a3
    inc sp                                        ; $68aa: $33
    ld h, d                                       ; $68ab: $62
    ld h, b                                       ; $68ac: $60
    ld bc, $0556                                  ; $68ad: $01 $56 $05
    cp a                                          ; $68b0: $bf
    inc b                                         ; $68b1: $04
    ldh [$64], a                                  ; $68b2: $e0 $64
    inc b                                         ; $68b4: $04
    db $eb                                        ; $68b5: $eb
    ld [bc], a                                    ; $68b6: $02
    add c                                         ; $68b7: $81
    ret nz                                        ; $68b8: $c0

    pop bc                                        ; $68b9: $c1
    ldh [$c0], a                                  ; $68ba: $e0 $c0
    db $e3                                        ; $68bc: $e3
    dec bc                                        ; $68bd: $0b
    ld a, [hl+]                                   ; $68be: $2a
    ld a, [hl+]                                   ; $68bf: $2a
    nop                                           ; $68c0: $00
    cp c                                          ; $68c1: $b9
    ld b, e                                       ; $68c2: $43
    ld l, [hl]                                    ; $68c3: $6e
    and e                                         ; $68c4: $a3
    ld h, l                                       ; $68c5: $65
    and e                                         ; $68c6: $a3
    db $f4                                        ; $68c7: $f4
    ld b, b                                       ; $68c8: $40
    cp a                                          ; $68c9: $bf
    ldh [$bb], a                                  ; $68ca: $e0 $bb
    pop hl                                        ; $68cc: $e1
    ld a, [c]                                     ; $68cd: $f2
    ld b, d                                       ; $68ce: $42
    ld sp, hl                                     ; $68cf: $f9
    add c                                         ; $68d0: $81
    jr z, @+$7e                                   ; $68d1: $28 $7c

    ld h, $42                                     ; $68d3: $26 $42
    add b                                         ; $68d5: $80
    ld c, l                                       ; $68d6: $4d
    ld hl, $c14a                                  ; $68d7: $21 $4a $c1
    db $e4                                        ; $68da: $e4
    dec hl                                        ; $68db: $2b
    add hl, sp                                    ; $68dc: $39
    ld h, d                                       ; $68dd: $62
    add b                                         ; $68de: $80
    and d                                         ; $68df: $a2

jr_070_68e0:
    nop                                           ; $68e0: $00
    ld [hl], a                                    ; $68e1: $77
    ld [hl+], a                                   ; $68e2: $22
    and $22                                       ; $68e3: $e6 $22
    or e                                          ; $68e5: $b3
    ld b, c                                       ; $68e6: $41
    ld [$3fc4], sp                                ; $68e7: $08 $c4 $3f
    dec b                                         ; $68ea: $05
    ld [bc], a                                    ; $68eb: $02
    ld b, l                                       ; $68ec: $45
    ld sp, $4441                                  ; $68ed: $31 $41 $44
    and c                                         ; $68f0: $a1
    dec b                                         ; $68f1: $05
    ld l, e                                       ; $68f2: $6b
    pop bc                                        ; $68f3: $c1
    jp $fb0b                                      ; $68f4: $c3 $0b $fb


    ld [hl+], a                                   ; $68f7: $22
    ret nz                                        ; $68f8: $c0

    push hl                                       ; $68f9: $e5
    xor h                                         ; $68fa: $ac
    ld h, c                                       ; $68fb: $61
    jr nc, @+$23                                  ; $68fc: $30 $21

    or e                                          ; $68fe: $b3
    ld b, d                                       ; $68ff: $42
    nop                                           ; $6900: $00
    sub $60                                       ; $6901: $d6 $60
    ccf                                           ; $6903: $3f
    ld [$66b4], sp                                ; $6904: $08 $b4 $66
    inc bc                                        ; $6907: $03
    ld hl, $60c3                                  ; $6908: $21 $c3 $60
    add h                                         ; $690b: $84
    and d                                         ; $690c: $a2
    ld b, c                                       ; $690d: $41
    ret nz                                        ; $690e: $c0

    inc a                                         ; $690f: $3c
    and e                                         ; $6910: $a3
    nop                                           ; $6911: $00
    pop bc                                        ; $6912: $c1
    ret nz                                        ; $6913: $c0

    or l                                          ; $6914: $b5
    nop                                           ; $6915: $00
    dec l                                         ; $6916: $2d
    inc b                                         ; $6917: $04
    cp e                                          ; $6918: $bb
    pop bc                                        ; $6919: $c1
    di                                            ; $691a: $f3
    ld b, c                                       ; $691b: $41
    add b                                         ; $691c: $80
    ld [$4502], a                                 ; $691d: $ea $02 $45
    xor e                                         ; $6920: $ab
    ld b, c                                       ; $6921: $41
    nop                                           ; $6922: $00
    ld b, e                                       ; $6923: $43
    and d                                         ; $6924: $a2
    pop bc                                        ; $6925: $c1
    db $e3                                        ; $6926: $e3
    ld bc, $c220                                  ; $6927: $01 $20 $c2
    jp Jump_000_00c0                              ; $692a: $c3 $c0 $00


    xor a                                         ; $692d: $af
    jr nz, jr_070_68e0                            ; $692e: $20 $b0

    ldh [$c0], a                                  ; $6930: $e0 $c0
    db $e4                                        ; $6932: $e4
    nop                                           ; $6933: $00
    ld c, a                                       ; $6934: $4f
    and l                                         ; $6935: $a5
    ld l, $85                                     ; $6936: $2e $85
    db $f4                                        ; $6938: $f4
    ld l, b                                       ; $6939: $68
    nop                                           ; $693a: $00
    ld hl, $e4c0                                  ; $693b: $21 $c0 $e4
    db $fc                                        ; $693e: $fc
    ld h, e                                       ; $693f: $63
    cp d                                          ; $6940: $ba
    and b                                         ; $6941: $a0
    ld sp, $0000                                  ; $6942: $31 $00 $00
    pop bc                                        ; $6945: $c1
    pop hl                                        ; $6946: $e1
    db $ed                                        ; $6947: $ed
    add b                                         ; $6948: $80
    jp hl                                         ; $6949: $e9


    ld b, b                                       ; $694a: $40
    ret nz                                        ; $694b: $c0

    ld [c], a                                     ; $694c: $e2
    ld c, l                                       ; $694d: $4d
    ld hl, $2213                                  ; $694e: $21 $13 $22
    inc b                                         ; $6951: $04
    ld h, h                                       ; $6952: $64
    add d                                         ; $6953: $82
    ld b, [hl]                                    ; $6954: $46
    nop                                           ; $6955: $00
    pop bc                                        ; $6956: $c1
    inc hl                                        ; $6957: $23
    inc b                                         ; $6958: $04
    ld hl, $63bb                                  ; $6959: $21 $bb $63
    add hl, bc                                    ; $695c: $09
    call nz, $e1c5                                ; $695d: $c4 $c5 $e1
    ld [hl-], a                                   ; $6960: $32
    ldh [$3f], a                                  ; $6961: $e0 $3f
    and b                                         ; $6963: $a0
    xor b                                         ; $6964: $a8
    ld b, b                                       ; $6965: $40
    ld b, b                                       ; $6966: $40
    pop af                                        ; $6967: $f1
    ld [bc], a                                    ; $6968: $02
    dec b                                         ; $6969: $05
    ld hl, $6509                                  ; $696a: $21 $09 $65
    or c                                          ; $696d: $b1
    and d                                         ; $696e: $a2
    ret nz                                        ; $696f: $c0

    and $44                                       ; $6970: $e6 $44
    ld b, h                                       ; $6972: $44
    ld l, e                                       ; $6973: $6b
    cp e                                          ; $6974: $bb
    ld b, c                                       ; $6975: $41
    nop                                           ; $6976: $00
    add h                                         ; $6977: $84
    ld h, e                                       ; $6978: $63
    rst $38                                       ; $6979: $ff
    add b                                         ; $697a: $80
    add d                                         ; $697b: $82
    ld [c], a                                     ; $697c: $e2
    rst $30                                       ; $697d: $f7
    ld h, b                                       ; $697e: $60
    ld l, b                                       ; $697f: $68
    ld b, c                                       ; $6980: $41
    ld [hl], e                                    ; $6981: $73
    ld b, b                                       ; $6982: $40
    inc [hl]                                      ; $6983: $34
    ld b, c                                       ; $6984: $41
    ld d, b                                       ; $6985: $50
    and b                                         ; $6986: $a0
    nop                                           ; $6987: $00
    add hl, bc                                    ; $6988: $09
    ld h, l                                       ; $6989: $65
    ld [hl], h                                    ; $698a: $74
    ld h, a                                       ; $698b: $67
    jp c, $8302                                   ; $698c: $da $02 $83

    ld h, c                                       ; $698f: $61
    ld a, e                                       ; $6990: $7b
    add d                                         ; $6991: $82
    ld sp, hl                                     ; $6992: $f9
    db $e3                                        ; $6993: $e3
    ld [hl], h                                    ; $6994: $74
    nop                                           ; $6995: $00
    ld sp, $0081                                  ; $6996: $31 $81 $00
    pop af                                        ; $6999: $f1
    add c                                         ; $699a: $81
    add sp, $01                                   ; $699b: $e8 $01
    ld h, b                                       ; $699d: $60
    ld b, b                                       ; $699e: $40
    sub b                                         ; $699f: $90
    and l                                         ; $69a0: $a5

jr_070_69a1:
    add hl, bc                                    ; $69a1: $09
    ld h, l                                       ; $69a2: $65
    db $f4                                        ; $69a3: $f4
    ld b, [hl]                                    ; $69a4: $46
    cp l                                          ; $69a5: $bd
    ld b, c                                       ; $69a6: $41
    ld d, l                                       ; $69a7: $55
    ld [hl+], a                                   ; $69a8: $22
    inc h                                         ; $69a9: $24
    sub c                                         ; $69aa: $91
    and l                                         ; $69ab: $a5
    ret nz                                        ; $69ac: $c0

    and $2d                                       ; $69ad: $e6 $2d
    ld b, [hl]                                    ; $69af: $46
    add b                                         ; $69b0: $80
    cp $e1                                        ; $69b1: $fe $e1
    dec c                                         ; $69b3: $0d
    ret nz                                        ; $69b4: $c0

    and c                                         ; $69b5: $a1
    adc l                                         ; $69b6: $8d
    pop hl                                        ; $69b7: $e1
    db $10                                        ; $69b8: $10
    adc b                                         ; $69b9: $88
    db $e3                                        ; $69ba: $e3
    dec [hl]                                      ; $69bb: $35
    dec b                                         ; $69bc: $05
    ld [bc], a                                    ; $69bd: $02
    ld b, e                                       ; $69be: $43
    dec hl                                        ; $69bf: $2b
    ld hl, $d76d                                  ; $69c0: $21 $6d $d7
    and c                                         ; $69c3: $a1
    sub b                                         ; $69c4: $90
    add h                                         ; $69c5: $84
    ld a, b                                       ; $69c6: $78
    nop                                           ; $69c7: $00
    ld b, $7b                                     ; $69c8: $06 $7b
    daa                                           ; $69ca: $27
    ld a, [bc]                                    ; $69cb: $0a
    ld a, [hl+]                                   ; $69cc: $2a
    cp d                                          ; $69cd: $ba
    pop hl                                        ; $69ce: $e1
    ld b, d                                       ; $69cf: $42
    pop bc                                        ; $69d0: $c1
    adc d                                         ; $69d1: $8a
    dec h                                         ; $69d2: $25
    cp e                                          ; $69d3: $bb
    pop bc                                        ; $69d4: $c1
    rst $00                                       ; $69d5: $c7
    db $e4                                        ; $69d6: $e4
    ldh [rOBP0], a                                ; $69d7: $e0 $48
    ld [hl+], a                                   ; $69d9: $22
    pop bc                                        ; $69da: $c1
    ld h, [hl]                                    ; $69db: $66
    db $fd                                        ; $69dc: $fd
    ld hl, $a48c                                  ; $69dd: $21 $8c $a4
    ld a, [hl-]                                   ; $69e0: $3a
    inc hl                                        ; $69e1: $23
    dec c                                         ; $69e2: $0d
    ld c, e                                       ; $69e3: $4b
    ld a, [bc]                                    ; $69e4: $0a
    rlca                                          ; $69e5: $07
    ld a, [hl+]                                   ; $69e6: $2a
    ld a, [bc]                                    ; $69e7: $0a
    ld a, [hl+]                                   ; $69e8: $2a
    ld [hl], d                                    ; $69e9: $72
    ld hl, $2175                                  ; $69ea: $21 $75 $21
    jr c, jr_070_69f5                             ; $69ed: $38 $06

    add hl, bc                                    ; $69ef: $09
    ld h, h                                       ; $69f0: $64
    ld l, [hl]                                    ; $69f1: $6e
    add c                                         ; $69f2: $81
    jr nz, jr_070_6a29                            ; $69f3: $20 $34

jr_070_69f5:
    add b                                         ; $69f5: $80
    pop bc                                        ; $69f6: $c1
    ld h, a                                       ; $69f7: $67
    ret nz                                        ; $69f8: $c0

    rst $20                                       ; $69f9: $e7
    ld a, [hl-]                                   ; $69fa: $3a
    ld b, d                                       ; $69fb: $42
    ld c, b                                       ; $69fc: $48
    add b                                         ; $69fd: $80
    ld l, e                                       ; $69fe: $6b
    dec l                                         ; $69ff: $2d
    and b                                         ; $6a00: $a0
    ld [hl-], a                                   ; $6a01: $32
    ld [hl+], a                                   ; $6a02: $22
    ld [$2136], sp                                ; $6a03: $08 $36 $21
    jr c, jr_070_6a0f                             ; $6a06: $38 $07

    add a                                         ; $6a08: $87
    dec h                                         ; $6a09: $25
    ld l, l                                       ; $6a0a: $6d
    jr c, jr_070_6a4d                             ; $6a0b: $38 $40

    ld b, l                                       ; $6a0d: $45
    inc bc                                        ; $6a0e: $03

jr_070_6a0f:
    pop bc                                        ; $6a0f: $c1
    add c                                         ; $6a10: $81
    dec d                                         ; $6a11: $15
    and h                                         ; $6a12: $a4
    nop                                           ; $6a13: $00
    or h                                          ; $6a14: $b4
    ld h, d                                       ; $6a15: $62
    scf                                           ; $6a16: $37
    ld [bc], a                                    ; $6a17: $02
    rst $30                                       ; $6a18: $f7
    inc hl                                        ; $6a19: $23
    xor c                                         ; $6a1a: $a9
    jr nz, jr_070_69a1                            ; $6a1b: $20 $84

    and e                                         ; $6a1d: $a3
    jr c, jr_070_6a27                             ; $6a1e: $38 $07

    ld [hl], d                                    ; $6a20: $72
    ld b, d                                       ; $6a21: $42
    pop af                                        ; $6a22: $f1
    add h                                         ; $6a23: $84
    ldh [$c1], a                                  ; $6a24: $e0 $c1
    ld h, e                                       ; $6a26: $63

jr_070_6a27:
    add h                                         ; $6a27: $84
    inc hl                                        ; $6a28: $23

jr_070_6a29:
    adc a                                         ; $6a29: $8f
    add h                                         ; $6a2a: $84
    ld a, [$b721]                                 ; $6a2b: $fa $21 $b7
    ld bc, $0b4b                                  ; $6a2e: $01 $4b $0b
    ld a, [bc]                                    ; $6a31: $0a
    rlca                                          ; $6a32: $07
    ld c, d                                       ; $6a33: $4a
    ld c, e                                       ; $6a34: $4b
    ld l, e                                       ; $6a35: $6b
    db $fc                                        ; $6a36: $fc
    ldh [rLY], a                                  ; $6a37: $e0 $44
    call nz, $0638                                ; $6a39: $c4 $38 $06
    call z, Call_070_7b44                         ; $6a3c: $cc $44 $7b
    db $e4                                        ; $6a3f: $e4
    ret nz                                        ; $6a40: $c0

    db $e4                                        ; $6a41: $e4
    ldh [rLYC], a                                 ; $6a42: $e0 $45
    ld h, c                                       ; $6a44: $61
    ld a, [de]                                    ; $6a45: $1a
    pop bc                                        ; $6a46: $c1
    ld de, $fb84                                  ; $6a47: $11 $84 $fb
    jr nz, jr_070_6ac8                            ; $6a4a: $20 $7c

    and d                                         ; $6a4c: $a2

jr_070_6a4d:
    ld c, e                                       ; $6a4d: $4b
    ld c, d                                       ; $6a4e: $4a
    ld bc, $b44a                                  ; $6a4f: $01 $4a $b4
    ld h, c                                       ; $6a52: $61
    ret nz                                        ; $6a53: $c0

    push hl                                       ; $6a54: $e5
    jp $4428                                      ; $6a55: $c3 $28 $44


    ld b, d                                       ; $6a58: $42
    ld [bc], a                                    ; $6a59: $02
    inc hl                                        ; $6a5a: $23
    ret nz                                        ; $6a5b: $c0

    and $d4                                       ; $6a5c: $e6 $d4
    ld h, a                                       ; $6a5e: $67
    inc b                                         ; $6a5f: $04
    or b                                          ; $6a60: $b0
    add d                                         ; $6a61: $82
    ld a, [hl-]                                   ; $6a62: $3a
    ld bc, $c06b                                  ; $6a63: $01 $6b $c0
    pop bc                                        ; $6a66: $c1
    ld a, a                                       ; $6a67: $7f
    ld h, c                                       ; $6a68: $61
    ld a, b                                       ; $6a69: $78
    nop                                           ; $6a6a: $00
    ld b, e                                       ; $6a6b: $43
    dec hl                                        ; $6a6c: $2b
    add b                                         ; $6a6d: $80
    db $e4                                        ; $6a6e: $e4
    nop                                           ; $6a6f: $00
    jp nz, $8381                                  ; $6a70: $c2 $81 $83

    ld [hl+], a                                   ; $6a73: $22
    ld b, h                                       ; $6a74: $44
    nop                                           ; $6a75: $00
    rst $38                                       ; $6a76: $ff
    inc bc                                        ; $6a77: $03
    dec bc                                        ; $6a78: $0b
    add l                                         ; $6a79: $85
    or $20                                        ; $6a7a: $f6 $20
    add e                                         ; $6a7c: $83
    ld h, [hl]                                    ; $6a7d: $66
    ld b, d                                       ; $6a7e: $42
    jp nz, $0300                                  ; $6a7f: $c2 $00 $03

    add hl, hl                                    ; $6a82: $29
    add e                                         ; $6a83: $83
    ld [hl+], a                                   ; $6a84: $22
    ld b, b                                       ; $6a85: $40
    ldh [$b4], a                                  ; $6a86: $e0 $b4
    ld [hl+], a                                   ; $6a88: $22
    ld b, b                                       ; $6a89: $40
    pop hl                                        ; $6a8a: $e1
    add h                                         ; $6a8b: $84
    ld [bc], a                                    ; $6a8c: $02
    ret nz                                        ; $6a8d: $c0

    rst $20                                       ; $6a8e: $e7
    or a                                          ; $6a8f: $b7
    ld [bc], a                                    ; $6a90: $02
    nop                                           ; $6a91: $00
    ld [hl], b                                    ; $6a92: $70
    nop                                           ; $6a93: $00
    xor h                                         ; $6a94: $ac
    ld [bc], a                                    ; $6a95: $02
    db $f4                                        ; $6a96: $f4
    ret nz                                        ; $6a97: $c0

    ld b, d                                       ; $6a98: $42
    ld h, d                                       ; $6a99: $62
    ld a, b                                       ; $6a9a: $78
    ld [$2584], sp                                ; $6a9b: $08 $84 $25
    ret nz                                        ; $6a9e: $c0

    and l                                         ; $6a9f: $a5
    ld e, d                                       ; $6aa0: $5a
    ld b, e                                       ; $6aa1: $43
    nop                                           ; $6aa2: $00
    ld a, $e8                                     ; $6aa3: $3e $e8
    cp e                                          ; $6aa5: $bb
    add [hl]                                      ; $6aa6: $86
    ld hl, sp-$7e                                 ; $6aa7: $f8 $82
    ld b, e                                       ; $6aa9: $43
    and d                                         ; $6aaa: $a2
    jr c, jr_070_6ab6                             ; $6aab: $38 $09

    rst $38                                       ; $6aad: $ff
    jr nz, jr_070_6b23                            ; $6aae: $20 $73

    add c                                         ; $6ab0: $81
    ld a, $65                                     ; $6ab1: $3e $65
    add b                                         ; $6ab3: $80
    inc b                                         ; $6ab4: $04
    ld b, c                                       ; $6ab5: $41

jr_070_6ab6:
    rst $38                                       ; $6ab6: $ff
    ld [hl+], a                                   ; $6ab7: $22
    jp z, $84e6                                   ; $6ab8: $ca $e6 $84

    pop hl                                        ; $6abb: $e1
    ld a, a                                       ; $6abc: $7f
    push hl                                       ; $6abd: $e5
    or a                                          ; $6abe: $b7
    jr nz, jr_070_6ac2                            ; $6abf: $20 $01

    pop bc                                        ; $6ac1: $c1

jr_070_6ac2:
    ld c, l                                       ; $6ac2: $4d
    nop                                           ; $6ac3: $00
    jr c, jr_070_6ace                             ; $6ac4: $38 $08

    ret z                                         ; $6ac6: $c8

    ld b, l                                       ; $6ac7: $45

jr_070_6ac8:
    ld a, e                                       ; $6ac8: $7b
    ld b, c                                       ; $6ac9: $41
    ld b, e                                       ; $6aca: $43
    add e                                         ; $6acb: $83
    rst $00                                       ; $6acc: $c7
    add e                                         ; $6acd: $83

jr_070_6ace:
    pop bc                                        ; $6ace: $c1
    jp hl                                         ; $6acf: $e9


    inc a                                         ; $6ad0: $3c
    ld [c], a                                     ; $6ad1: $e2
    ld a, b                                       ; $6ad2: $78
    add h                                         ; $6ad3: $84
    add d                                         ; $6ad4: $82
    ld [c], a                                     ; $6ad5: $e2
    add d                                         ; $6ad6: $82
    ld l, l                                       ; $6ad7: $6d
    cp e                                          ; $6ad8: $bb
    ret nz                                        ; $6ad9: $c0

    pop bc                                        ; $6ada: $c1
    inc bc                                        ; $6adb: $03
    add hl, bc                                    ; $6adc: $09
    ld h, $86                                     ; $6add: $26 $86
    add c                                         ; $6adf: $81
    ld [hl], l                                    ; $6ae0: $75
    nop                                           ; $6ae1: $00
    ld l, l                                       ; $6ae2: $6d
    add b                                         ; $6ae3: $80
    ld [bc], a                                    ; $6ae4: $02
    add c                                         ; $6ae5: $81
    inc e                                         ; $6ae6: $1c
    ld h, c                                       ; $6ae7: $61
    add a                                         ; $6ae8: $87
    ld [bc], a                                    ; $6ae9: $02
    db $fc                                        ; $6aea: $fc
    xor $01                                       ; $6aeb: $ee $01
    ret nz                                        ; $6aed: $c0

    sbc d                                         ; $6aee: $9a
    and c                                         ; $6aef: $a1
    ret nz                                        ; $6af0: $c0

    pop hl                                        ; $6af1: $e1
    ld l, $00                                     ; $6af2: $2e $00
    bit 0, [hl]                                   ; $6af4: $cb $46
    ld b, h                                       ; $6af6: $44
    ld b, h                                       ; $6af7: $44
    ld h, h                                       ; $6af8: $64
    ld bc, $c6fe                                  ; $6af9: $01 $fe $c6
    ld b, d                                       ; $6afc: $42
    ld b, e                                       ; $6afd: $43
    ld a, [$84ee]                                 ; $6afe: $fa $ee $84
    ld [hl+], a                                   ; $6b01: $22
    add l                                         ; $6b02: $85
    ld h, c                                       ; $6b03: $61
    nop                                           ; $6b04: $00
    db $fc                                        ; $6b05: $fc
    and d                                         ; $6b06: $a2
    bit 0, l                                      ; $6b07: $cb $45
    inc b                                         ; $6b09: $04
    ld b, l                                       ; $6b0a: $45
    db $fc                                        ; $6b0b: $fc
    inc hl                                        ; $6b0c: $23
    ld a, $a2                                     ; $6b0d: $3e $a2
    adc b                                         ; $6b0f: $88
    add c                                         ; $6b10: $81
    jp z, $fc40                                   ; $6b11: $ca $40 $fc

    db $eb                                        ; $6b14: $eb
    nop                                           ; $6b15: $00
    ld [hl], a                                    ; $6b16: $77
    ld hl, $21cb                                  ; $6b17: $21 $cb $21
    add l                                         ; $6b1a: $85
    ld h, c                                       ; $6b1b: $61
    cp h                                          ; $6b1c: $bc
    add $03                                       ; $6b1d: $c6 $03
    ld [hl+], a                                   ; $6b1f: $22
    call nz, Call_070_7e22                        ; $6b20: $c4 $22 $7e

jr_070_6b23:
    ld bc, $00fc                                  ; $6b23: $01 $fc $00
    nop                                           ; $6b26: $00
    ld b, c                                       ; $6b27: $41
    nop                                           ; $6b28: $00
    ld b, c                                       ; $6b29: $41
    ld b, e                                       ; $6b2a: $43
    add b                                         ; $6b2b: $80
    di                                            ; $6b2c: $f3
    ld a, [de]                                    ; $6b2d: $1a
    ldh [rHDMA5], a                               ; $6b2e: $e0 $55
    ld bc, $c73c                                  ; $6b30: $01 $3c $c7
    adc e                                         ; $6b33: $8b
    ld h, c                                       ; $6b34: $61
    or h                                          ; $6b35: $b4
    ld [hl+], a                                   ; $6b36: $22
    nop                                           ; $6b37: $00
    ld a, [hl]                                    ; $6b38: $7e
    nop                                           ; $6b39: $00
    ld a, $a3                                     ; $6b3a: $3e $a3
    nop                                           ; $6b3c: $00
    ld h, e                                       ; $6b3d: $63
    ld b, b                                       ; $6b3e: $40
    di                                            ; $6b3f: $f3
    sub a                                         ; $6b40: $97
    add c                                         ; $6b41: $81
    push bc                                       ; $6b42: $c5
    ld h, h                                       ; $6b43: $64
    ret nz                                        ; $6b44: $c0

    db $ed                                        ; $6b45: $ed
    dec l                                         ; $6b46: $2d
    inc h                                         ; $6b47: $24
    nop                                           ; $6b48: $00
    cp a                                          ; $6b49: $bf
    pop bc                                        ; $6b4a: $c1
    adc l                                         ; $6b4b: $8d
    jp nz, $eef8                                  ; $6b4c: $c2 $f8 $ee

    ld l, b                                       ; $6b4f: $68
    add b                                         ; $6b50: $80
    add $41                                       ; $6b51: $c6 $41
    jp nc, $4681                                  ; $6b53: $d2 $81 $46

    ld h, $bc                                     ; $6b56: $26 $bc
    add a                                         ; $6b58: $87
    inc b                                         ; $6b59: $04
    or h                                          ; $6b5a: $b4
    ld b, e                                       ; $6b5b: $43
    ld a, [hl]                                    ; $6b5c: $7e
    call nz, $be2b                                ; $6b5d: $c4 $2b $be
    pop af                                        ; $6b60: $f1
    ld b, e                                       ; $6b61: $43
    jp nz, $61c4                                  ; $6b62: $c2 $c4 $61

    ret nz                                        ; $6b65: $c0

    ld h, c                                       ; $6b66: $61
    ld b, l                                       ; $6b67: $45
    ld [hl+], a                                   ; $6b68: $22
    nop                                           ; $6b69: $00
    cp h                                          ; $6b6a: $bc
    add [hl]                                      ; $6b6b: $86
    xor $44                                       ; $6b6c: $ee $44
    ld a, e                                       ; $6b6e: $7b
    ld h, c                                       ; $6b6f: $61
    daa                                           ; $6b70: $27
    ld [hl+], a                                   ; $6b71: $22
    inc h                                         ; $6b72: $24
    jr nz, @+$39                                  ; $6b73: $20 $37

    jp nz, $8333                                  ; $6b75: $c2 $33 $83

    add e                                         ; $6b78: $83
    dec h                                         ; $6b79: $25
    add b                                         ; $6b7a: $80
    and $42                                       ; $6b7b: $e6 $42
    jp c, $bf01                                   ; $6b7d: $da $01 $bf

    ld b, d                                       ; $6b80: $42
    inc a                                         ; $6b81: $3c
    adc e                                         ; $6b82: $8b
    dec a                                         ; $6b83: $3d
    ld h, e                                       ; $6b84: $63
    rst $38                                       ; $6b85: $ff
    ld [hl+], a                                   ; $6b86: $22
    rst $28                                       ; $6b87: $ef
    and h                                         ; $6b88: $a4
    dec l                                         ; $6b89: $2d
    nop                                           ; $6b8a: $00
    ld b, d                                       ; $6b8b: $42
    ld b, c                                       ; $6b8c: $41
    sub b                                         ; $6b8d: $90
    and d                                         ; $6b8e: $a2
    call c, $d1a8                                 ; $6b8f: $dc $a8 $d1
    ld h, h                                       ; $6b92: $64
    ret                                           ; $6b93: $c9


    inc h                                         ; $6b94: $24
    add d                                         ; $6b95: $82
    push hl                                       ; $6b96: $e5
    nop                                           ; $6b97: $00
    nop                                           ; $6b98: $00
    nop                                           ; $6b99: $00
    rst $38                                       ; $6b9a: $ff
    jp nc, $d2d0                                  ; $6b9b: $d2 $d0 $d2

    ret c                                         ; $6b9e: $d8

    and b                                         ; $6b9f: $a0
    and b                                         ; $6ba0: $a0
    and b                                         ; $6ba1: $a0
    jp c, $d7ff                                   ; $6ba2: $da $ff $d7

    call nc, $d9d7                                ; $6ba5: $d4 $d7 $d9
    jp c, $a0dc                                   ; $6ba8: $da $dc $a0

    and $b9                                       ; $6bab: $e6 $b9
    rst $20                                       ; $6bad: $e7
    di                                            ; $6bae: $f3
    ldh [$fd], a                                  ; $6baf: $e0 $fd
    jp hl                                         ; $6bb1: $e9


    db $d3                                        ; $6bb2: $d3
    ret nc                                        ; $6bb3: $d0

    db $d3                                        ; $6bb4: $d3
    xor $e5                                       ; $6bb5: $ee $e5
    jp c, $d9cf                                   ; $6bb7: $da $cf $d9

    reti                                          ; $6bba: $d9


    rst $10                                       ; $6bbb: $d7
    call nc, $e1d9                                ; $6bbc: $d4 $d9 $e1
    db $dd                                        ; $6bbf: $dd
    ld [c], a                                     ; $6bc0: $e2
    ret c                                         ; $6bc1: $d8

    push de                                       ; $6bc2: $d5
    rst $38                                       ; $6bc3: $ff
    push de                                       ; $6bc4: $d5
    sub $d4                                       ; $6bc5: $d6 $d4
    sub $d2                                       ; $6bc7: $d6 $d2
    pop de                                        ; $6bc9: $d1
    ret nc                                        ; $6bca: $d0

    jp nc, $d7fd                                  ; $6bcb: $d2 $fd $d7

    ret nz                                        ; $6bce: $c0

    ldh [$dc], a                                  ; $6bcf: $e0 $dc
    jp c, $dad9                                   ; $6bd1: $da $d9 $da

    db $db                                        ; $6bd4: $db
    call c, $a0ef                                 ; $6bd5: $dc $ef $a0
    and b                                         ; $6bd8: $a0
    add sp, -$17                                  ; $6bd9: $e8 $e9
    ret nz                                        ; $6bdb: $c0

    rst $20                                       ; $6bdc: $e7
    db $eb                                        ; $6bdd: $eb
    and b                                         ; $6bde: $a0
    sbc $73                                       ; $6bdf: $de $73
    rst $18                                       ; $6be1: $df
    and b                                         ; $6be2: $a0
    xor b                                         ; $6be3: $a8
    ldh [$ae], a                                  ; $6be4: $e0 $ae
    push hl                                       ; $6be6: $e5
    call c, $dbdb                                 ; $6be7: $dc $db $db
    cp l                                          ; $6bea: $bd
    ldh [$ec], a                                  ; $6beb: $e0 $ec
    reti                                          ; $6bed: $d9


    ld [c], a                                     ; $6bee: $e2
    and a                                         ; $6bef: $a7
    pop hl                                        ; $6bf0: $e1
    sub $d4                                       ; $6bf1: $d6 $d4
    add h                                         ; $6bf3: $84
    ldh [$d6], a                                  ; $6bf4: $e0 $d6
    jp nc, $f5d4                                  ; $6bf6: $d2 $d4 $f5

    rst $10                                       ; $6bf9: $d7
    or b                                          ; $6bfa: $b0
    ld [c], a                                     ; $6bfb: $e2
    call c, $e4e9                                 ; $6bfc: $dc $e9 $e4
    and b                                         ; $6bff: $a0
    and b                                         ; $6c00: $a0
    sbc a                                         ; $6c01: $9f
    sbc l                                         ; $6c02: $9d
    cp $ff                                        ; $6c03: $fe $ff
    ldh [$9f], a                                  ; $6c05: $e0 $9f
    and b                                         ; $6c07: $a0
    and b                                         ; $6c08: $a0
    db $ec                                        ; $6c09: $ec
    db $ed                                        ; $6c0a: $ed
    and b                                         ; $6c0b: $a0
    ldh [$e1], a                                  ; $6c0c: $e0 $e1
    pop hl                                        ; $6c0e: $e1
    adc e                                         ; $6c0f: $8b
    ldh [$91], a                                  ; $6c10: $e0 $91
    db $e3                                        ; $6c12: $e3
    cp l                                          ; $6c13: $bd
    and $d9                                       ; $6c14: $e6 $d9
    db $e4                                        ; $6c16: $e4
    ret c                                         ; $6c17: $d8

    jp nc, $e6d7                                  ; $6c18: $d2 $d7 $e6

    ld b, l                                       ; $6c1b: $45
    ldh [$d4], a                                  ; $6c1c: $e0 $d4
    rst $10                                       ; $6c1e: $d7
    ld c, d                                       ; $6c1f: $4a
    ld [c], a                                     ; $6c20: $e2
    ld c, h                                       ; $6c21: $4c
    push hl                                       ; $6c22: $e5
    ld [$9fa0], a                                 ; $6c23: $ea $a0 $9f
    rst $38                                       ; $6c26: $ff
    and d                                         ; $6c27: $a2
    sbc l                                         ; $6c28: $9d

jr_070_6c29:
    sbc h                                         ; $6c29: $9c
    ld b, [hl]                                    ; $6c2a: $46
    ld b, [hl]                                    ; $6c2b: $46
    ld b, [hl]                                    ; $6c2c: $46
    xor [hl]                                      ; $6c2d: $ae
    sbc h                                         ; $6c2e: $9c
    ld e, [hl]                                    ; $6c2f: $5e
    cp a                                          ; $6c30: $bf
    ldh [$a0], a                                  ; $6c31: $e0 $a0
    and b                                         ; $6c33: $a0
    ld [c], a                                     ; $6c34: $e2
    db $e3                                        ; $6c35: $e3
    xor b                                         ; $6c36: $a8
    db $e3                                        ; $6c37: $e3
    db $eb                                        ; $6c38: $eb
    dec hl                                        ; $6c39: $2b
    ld [c], a                                     ; $6c3a: $e2
    call nc, $e072                                ; $6c3b: $d4 $72 $e0
    jr z, jr_070_6c29                             ; $6c3e: $28 $e9

    db $dd                                        ; $6c40: $dd

Call_070_6c41:
    dec c                                         ; $6c41: $0d
    pop hl                                        ; $6c42: $e1
    db $dd                                        ; $6c43: $dd
    ld c, d                                       ; $6c44: $4a
    ld [c], a                                     ; $6c45: $e2
    ret c                                         ; $6c46: $d8

    push de                                       ; $6c47: $d5
    ldh a, [$fc]                                  ; $6c48: $f0 $fc
    pop bc                                        ; $6c4a: $c1
    add h                                         ; $6c4b: $84
    pop hl                                        ; $6c4c: $e1
    jp $c0e1                                      ; $6c4d: $c3 $e1 $c0


    ldh [$af], a                                  ; $6c50: $e0 $af
    xor [hl]                                      ; $6c52: $ae
    sbc h                                         ; $6c53: $9c
    sbc l                                         ; $6c54: $9d
    add c                                         ; $6c55: $81
    and d                                         ; $6c56: $a2
    ld a, e                                       ; $6c57: $7b
    pop hl                                        ; $6c58: $e1
    ld a, [c]                                     ; $6c59: $f2
    jp nz, $e076                                  ; $6c5a: $c2 $76 $e0

    ld [$72c1], a                                 ; $6c5d: $ea $c1 $72
    ldh [$e8], a                                  ; $6c60: $e0 $e8
    ret                                           ; $6c62: $c9


    pop de                                        ; $6c63: $d1
    rra                                           ; $6c64: $1f
    db $dd                                        ; $6c65: $dd
    reti                                          ; $6c66: $d9


    db $dd                                        ; $6c67: $dd
    ret nc                                        ; $6c68: $d0

    ret nc                                        ; $6c69: $d0

    inc sp                                        ; $6c6a: $33
    ld [c], a                                     ; $6c6b: $e2
    db $db                                        ; $6c6c: $db
    pop bc                                        ; $6c6d: $c1
    and d                                         ; $6c6e: $a2
    pop hl                                        ; $6c6f: $e1
    cp $c1                                        ; $6c70: $fe $c1
    pop hl                                        ; $6c72: $e1
    xor [hl]                                      ; $6c73: $ae
    ld a, c                                       ; $6c74: $79
    ld a, d                                       ; $6c75: $7a
    ld a, e                                       ; $6c76: $7b
    ld a, h                                       ; $6c77: $7c
    ld a, l                                       ; $6c78: $7d
    xor a                                         ; $6c79: $af
    add h                                         ; $6c7a: $84
    cp b                                          ; $6c7b: $b8
    pop hl                                        ; $6c7c: $e1
    ld a, e                                       ; $6c7d: $7b
    ldh [$ea], a                                  ; $6c7e: $e0 $ea
    or c                                          ; $6c80: $b1
    call nz, $e19e                                ; $6c81: $c4 $9e $e1
    ld [hl], d                                    ; $6c84: $72
    ldh [$a3], a                                  ; $6c85: $e0 $a3
    rst $00                                       ; $6c87: $c7
    rst $10                                       ; $6c88: $d7
    add h                                         ; $6c89: $84
    ld [bc], a                                    ; $6c8a: $02
    ldh [rLCDC], a                                ; $6c8b: $e0 $40
    ldh [$d4], a                                  ; $6c8d: $e0 $d4
    ret c                                         ; $6c8f: $d8

    jp nz, $c1db                                  ; $6c90: $c2 $db $c1

    inc d                                         ; $6c93: $14
    ldh [$82], a                                  ; $6c94: $e0 $82
    ld [c], a                                     ; $6c96: $e2
    xor a                                         ; $6c97: $af
    ccf                                           ; $6c98: $3f
    add b                                         ; $6c99: $80
    cp l                                          ; $6c9a: $bd
    inc l                                         ; $6c9b: $2c
    ld a, [hl+]                                   ; $6c9c: $2a
    ld a, a                                       ; $6c9d: $7f
    ld a, l                                       ; $6c9e: $7d
    ld a, b                                       ; $6c9f: $78
    pop hl                                        ; $6ca0: $e1
    ld a, [hl-]                                   ; $6ca1: $3a
    ld [c], a                                     ; $6ca2: $e2
    add e                                         ; $6ca3: $83
    db $e4                                        ; $6ca4: $e4
    push hl                                       ; $6ca5: $e5
    sub h                                         ; $6ca6: $94
    pop bc                                        ; $6ca7: $c1
    ld e, c                                       ; $6ca8: $59
    call nz, $e657                                ; $6ca9: $c4 $57 $e6
    ld [hl], e                                    ; $6cac: $73
    ret nz                                        ; $6cad: $c0

    ld [hl], h                                    ; $6cae: $74
    jp nz, Jump_070_7cd9                          ; $6caf: $c2 $d9 $7c

    ret c                                         ; $6cb2: $d8

    jp nz, $c1db                                  ; $6cb3: $c2 $db $c1

    ld [c], a                                     ; $6cb6: $e2
    db $e3                                        ; $6cb7: $e3
    sbc a                                         ; $6cb8: $9f
    sbc h                                         ; $6cb9: $9c
    xor [hl]                                      ; $6cba: $ae
    ld b, d                                       ; $6cbb: $42
    pop hl                                        ; $6cbc: $e1
    sbc a                                         ; $6cbd: $9f
    add b                                         ; $6cbe: $80
    dec l                                         ; $6cbf: $2d
    jr nz, jr_070_6ce9                            ; $6cc0: $20 $27

    ld b, d                                       ; $6cc2: $42
    cp a                                          ; $6cc3: $bf
    ld [c], a                                     ; $6cc4: $e2
    ld a, [hl-]                                   ; $6cc5: $3a
    ldh [$9f], a                                  ; $6cc6: $e0 $9f
    ld c, [hl]                                    ; $6cc8: $4e
    ld l, $c1                                     ; $6cc9: $2e $c1
    ret c                                         ; $6ccb: $d8

    jp nc, Jump_070_59d0                          ; $6ccc: $d2 $d0 $59

    jp $e0f7                                      ; $6ccf: $c3 $f7 $e0


    jp nc, $e415                                  ; $6cd2: $d2 $15 $e4

    push hl                                       ; $6cd5: $e5
    call c, $c374                                 ; $6cd6: $dc $74 $c3
    db $db                                        ; $6cd9: $db
    ld h, [hl]                                    ; $6cda: $66
    call nz, $c16c                                ; $6cdb: $c4 $6c $c1
    sbc [hl]                                      ; $6cde: $9e
    xor [hl]                                      ; $6cdf: $ae
    xor a                                         ; $6ce0: $af
    ld a, [hl]                                    ; $6ce1: $7e
    cp a                                          ; $6ce2: $bf
    pop hl                                        ; $6ce3: $e1
    add b                                         ; $6ce4: $80
    ld b, d                                       ; $6ce5: $42
    daa                                           ; $6ce6: $27
    jr nz, jr_070_6d13                            ; $6ce7: $20 $2a

jr_070_6ce9:
    ld b, l                                       ; $6ce9: $45
    ld a, [hl]                                    ; $6cea: $7e
    pop hl                                        ; $6ceb: $e1
    ld b, $f0                                     ; $6cec: $06 $f0
    ldh [$9c], a                                  ; $6cee: $e0 $9c
    sbc a                                         ; $6cf0: $9f
    ld l, $c0                                     ; $6cf1: $2e $c0
    sub [hl]                                      ; $6cf3: $96
    jp $c009                                      ; $6cf4: $c3 $09 $c0


    adc l                                         ; $6cf7: $8d
    ret nz                                        ; $6cf8: $c0

    db $10                                        ; $6cf9: $10
    ret nz                                        ; $6cfa: $c0

    cp b                                          ; $6cfb: $b8
    call nc, Call_070_74c4                        ; $6cfc: $d4 $c4 $74
    rst $00                                       ; $6cff: $c7
    call $a1a4                                    ; $6d00: $cd $a4 $a1

jr_070_6d03:
    xor a                                         ; $6d03: $af
    xor [hl]                                      ; $6d04: $ae
    add hl, bc                                    ; $6d05: $09
    pop hl                                        ; $6d06: $e1
    add d                                         ; $6d07: $82
    ld a, a                                       ; $6d08: $7f
    add e                                         ; $6d09: $83
    ld a, [hl+]                                   ; $6d0a: $2a
    ld h, $21                                     ; $6d0b: $26 $21

Jump_070_6d0d:
    add hl, sp                                    ; $6d0d: $39
    ld b, [hl]                                    ; $6d0e: $46
    add c                                         ; $6d0f: $81
    cp d                                          ; $6d10: $ba
    pop bc                                        ; $6d11: $c1
    rlca                                          ; $6d12: $07

jr_070_6d13:
    xor a                                         ; $6d13: $af
    ld b, [hl]                                    ; $6d14: $46
    and c                                         ; $6d15: $a1
    and e                                         ; $6d16: $a3
    xor b                                         ; $6d17: $a8
    sbc d                                         ; $6d18: $9a
    and c                                         ; $6d19: $a1
    sub b                                         ; $6d1a: $90
    and b                                         ; $6d1b: $a0
    rst $28                                       ; $6d1c: $ef
    and [hl]                                      ; $6d1d: $a6
    push hl                                       ; $6d1e: $e5
    push bc                                       ; $6d1f: $c5
    or $82                                        ; $6d20: $f6 $82
    call nz, $9c9f                                ; $6d22: $c4 $9f $9c
    jp z, $85c2                                   ; $6d25: $ca $c2 $85

    add a                                         ; $6d28: $87
    adc b                                         ; $6d29: $88
    ld [hl], d                                    ; $6d2a: $72
    rst $28                                       ; $6d2b: $ef
    ld l, h                                       ; $6d2c: $6c
    ld a, [hl-]                                   ; $6d2d: $3a
    add e                                         ; $6d2e: $83
    add h                                         ; $6d2f: $84
    ld a, c                                       ; $6d30: $79
    pop bc                                        ; $6d31: $c1
    ld b, [hl]                                    ; $6d32: $46
    ld b, [hl]                                    ; $6d33: $46
    sbc [hl]                                      ; $6d34: $9e
    nop                                           ; $6d35: $00
    and e                                         ; $6d36: $a3
    xor b                                         ; $6d37: $a8
    sbc d                                         ; $6d38: $9a
    and c                                         ; $6d39: $a1
    ld e, b                                       ; $6d3a: $58
    and b                                         ; $6d3b: $a0
    add b                                         ; $6d3c: $80
    and d                                         ; $6d3d: $a2
    ld c, l                                       ; $6d3e: $4d
    push bc                                       ; $6d3f: $c5

jr_070_6d40:
    push hl                                       ; $6d40: $e5
    ret nz                                        ; $6d41: $c0

    ld a, c                                       ; $6d42: $79
    and b                                         ; $6d43: $a0
    cp l                                          ; $6d44: $bd
    db $e3                                        ; $6d45: $e3
    db $fc                                        ; $6d46: $fc
    ld b, d                                       ; $6d47: $42
    jp nz, $c0fc                                  ; $6d48: $c2 $fc $c0

    add hl, sp                                    ; $6d4b: $39
    ld l, [hl]                                    ; $6d4c: $6e
    ld [hl], b                                    ; $6d4d: $70
    ld [hl], c                                    ; $6d4e: $71
    add a                                         ; $6d4f: $87
    add l                                         ; $6d50: $85
    ret nz                                        ; $6d51: $c0

    ld [hl], $c3                                  ; $6d52: $36 $c3
    ret nz                                        ; $6d54: $c0

    pop hl                                        ; $6d55: $e1
    and e                                         ; $6d56: $a3
    and a                                         ; $6d57: $a7
    ld a, [bc]                                    ; $6d58: $0a
    pop hl                                        ; $6d59: $e1
    ret nc                                        ; $6d5a: $d0

    and e                                         ; $6d5b: $a3
    jr z, jr_070_6d03                             ; $6d5c: $28 $a5

    db $d3                                        ; $6d5e: $d3
    ret nc                                        ; $6d5f: $d0

    push de                                       ; $6d60: $d5
    sub $b8                                       ; $6d61: $d6 $b8
    and c                                         ; $6d63: $a1
    sub $1a                                       ; $6d64: $d6 $1a
    and d                                         ; $6d66: $a2
    sbc [hl]                                      ; $6d67: $9e
    adc h                                         ; $6d68: $8c
    ld [c], a                                     ; $6d69: $e2
    ld b, l                                       ; $6d6a: $45
    ld a, [hl-]                                   ; $6d6b: $3a

Call_070_6d6c:
    rrca                                          ; $6d6c: $0f
    dec [hl]                                      ; $6d6d: $35
    dec [hl]                                      ; $6d6e: $35
    ld a, [hl-]                                   ; $6d6f: $3a
    ld b, l                                       ; $6d70: $45
    or h                                          ; $6d71: $b4
    jp nz, $e4c0                                  ; $6d72: $c2 $c0 $e4

jr_070_6d75:
    and h                                         ; $6d75: $a4
    and e                                         ; $6d76: $a3
    push de                                       ; $6d77: $d5
    add $8c                                       ; $6d78: $c6 $8c
    ld l, l                                       ; $6d7a: $6d
    pop bc                                        ; $6d7b: $c1
    jr z, @-$59                                   ; $6d7c: $28 $a5

    db $d3                                        ; $6d7e: $d3
    ret nc                                        ; $6d7f: $d0

    inc l                                         ; $6d80: $2c
    db $e3                                        ; $6d81: $e3
    cp d                                          ; $6d82: $ba
    add d                                         ; $6d83: $82
    ret nz                                        ; $6d84: $c0

    pop hl                                        ; $6d85: $e1
    ld b, [hl]                                    ; $6d86: $46
    ccf                                           ; $6d87: $3f
    ld a, c                                       ; $6d88: $79
    ld a, d                                       ; $6d89: $7a
    ld h, l                                       ; $6d8a: $65
    ld h, [hl]                                    ; $6d8b: $66
    dec [hl]                                      ; $6d8c: $35
    ld a, $44                                     ; $6d8d: $3e $44
    pop hl                                        ; $6d8f: $e1
    db $fc                                        ; $6d90: $fc
    and h                                         ; $6d91: $a4
    ld [hl], b                                    ; $6d92: $70
    adc b                                         ; $6d93: $88
    and l                                         ; $6d94: $a5
    rla                                           ; $6d95: $17
    and $9b                                       ; $6d96: $e6 $9b
    add c                                         ; $6d98: $81
    jr z, jr_070_6d40                             ; $6d99: $28 $a5

    rst $10                                       ; $6d9b: $d7
    jp nc, Jump_000_2cdd                          ; $6d9c: $d2 $dd $2c

    pop hl                                        ; $6d9f: $e1
    db $ed                                        ; $6da0: $ed
    db $dd                                        ; $6da1: $dd
    sbc c                                         ; $6da2: $99
    add b                                         ; $6da3: $80
    db $e4                                        ; $6da4: $e4
    push hl                                       ; $6da5: $e5
    add c                                         ; $6da6: $81
    and c                                         ; $6da7: $a1
    ld a, c                                       ; $6da8: $79
    ld a, [hl]                                    ; $6da9: $7e
    add hl, sp                                    ; $6daa: $39
    rst $08                                       ; $6dab: $cf
    dec [hl]                                      ; $6dac: $35
    ld l, b                                       ; $6dad: $68
    ld h, [hl]                                    ; $6dae: $66
    ld a, $78                                     ; $6daf: $3e $78
    and d                                         ; $6db1: $a2
    jr nc, jr_070_6d75                            ; $6db2: $30 $c1

    sbc h                                         ; $6db4: $9c
    sbc a                                         ; $6db5: $9f
    ldh [$88], a                                  ; $6db6: $e0 $88
    and d                                         ; $6db8: $a2
    sub c                                         ; $6db9: $91
    add h                                         ; $6dba: $84
    ld d, a                                       ; $6dbb: $57
    and d                                         ; $6dbc: $a2
    sbc e                                         ; $6dbd: $9b
    add c                                         ; $6dbe: $81
    ret nc                                        ; $6dbf: $d0

    add l                                         ; $6dc0: $85
    jp c, $d0d3                                   ; $6dc1: $da $d3 $d0

    push bc                                       ; $6dc4: $c5
    ret nc                                        ; $6dc5: $d0

    ld [hl], a                                    ; $6dc6: $77
    and b                                         ; $6dc7: $a0
    pop de                                        ; $6dc8: $d1
    ld e, c                                       ; $6dc9: $59
    add b                                         ; $6dca: $80
    ld b, h                                       ; $6dcb: $44
    add b                                         ; $6dcc: $80
    ccf                                           ; $6dcd: $3f
    ldh [$80], a                                  ; $6dce: $e0 $80
    ld b, [hl]                                    ; $6dd0: $46
    sbc a                                         ; $6dd1: $9f
    ld a, $35                                     ; $6dd2: $3e $35
    dec [hl]                                      ; $6dd4: $35
    ld l, d                                       ; $6dd5: $6a
    add hl, sp                                    ; $6dd6: $39
    or $c2                                        ; $6dd7: $f6 $c2
    jr nc, @-$3c                                  ; $6dd9: $30 $c2

    sbc [hl]                                      ; $6ddb: $9e
    ld b, b                                       ; $6ddc: $40
    adc b                                         ; $6ddd: $88
    and d                                         ; $6dde: $a2
    sub c                                         ; $6ddf: $91
    add h                                         ; $6de0: $84
    ld [hl-], a                                   ; $6de1: $32
    add a                                         ; $6de2: $87
    ld l, e                                       ; $6de3: $6b
    add l                                         ; $6de4: $85
    dec l                                         ; $6de5: $2d
    add b                                         ; $6de6: $80
    halt                                          ; $6de7: $76
    and d                                         ; $6de8: $a2
    rst $10                                       ; $6de9: $d7
    ld b, h                                       ; $6dea: $44
    add c                                         ; $6deb: $81
    dec b                                         ; $6dec: $05
    and c                                         ; $6ded: $a1
    ld b, c                                       ; $6dee: $41
    pop bc                                        ; $6def: $c1
    add hl, sp                                    ; $6df0: $39
    ret nz                                        ; $6df1: $c0

    db $e4                                        ; $6df2: $e4
    inc a                                         ; $6df3: $3c
    and b                                         ; $6df4: $a0
    add hl, sp                                    ; $6df5: $39
    and c                                         ; $6df6: $a1
    cp [hl]                                       ; $6df7: $be
    jp nz, $8591                                  ; $6df8: $c2 $91 $85

    or b                                          ; $6dfb: $b0
    ld a, [c]                                     ; $6dfc: $f2
    ld h, d                                       ; $6dfd: $62
    ld c, [hl]                                    ; $6dfe: $4e
    add $ea                                       ; $6dff: $c6 $ea
    ld l, [hl]                                    ; $6e01: $6e
    cp a                                          ; $6e02: $bf
    ret nz                                        ; $6e03: $c0

    add l                                         ; $6e04: $85
    adc e                                         ; $6e05: $8b
    ret nz                                        ; $6e06: $c0

    ret nz                                        ; $6e07: $c0

    ld l, d                                       ; $6e08: $6a
    ei                                            ; $6e09: $fb
    ld a, [hl-]                                   ; $6e0a: $3a
    ld b, l                                       ; $6e0b: $45
    or a                                          ; $6e0c: $b7
    add d                                         ; $6e0d: $82
    ld b, l                                       ; $6e0e: $45
    ld b, l                                       ; $6e0f: $45
    ld b, [hl]                                    ; $6e10: $46
    xor [hl]                                      ; $6e11: $ae
    and c                                         ; $6e12: $a1
    nop                                           ; $6e13: $00
    ei                                            ; $6e14: $fb
    add c                                         ; $6e15: $81
    sub c                                         ; $6e16: $91
    add l                                         ; $6e17: $85
    db $d3                                        ; $6e18: $d3
    ld h, b                                       ; $6e19: $60
    ld c, [hl]                                    ; $6e1a: $4e
    ret                                           ; $6e1b: $c9


    ld [$5a6a], a                                 ; $6e1c: $ea $6a $5a
    add b                                         ; $6e1f: $80
    ld a, a                                       ; $6e20: $7f
    pop bc                                        ; $6e21: $c1
    ccf                                           ; $6e22: $3f
    pop hl                                        ; $6e23: $e1
    rst $30                                       ; $6e24: $f7
    ld [hl], l                                    ; $6e25: $75
    ld h, [hl]                                    ; $6e26: $66
    ld [hl], $bf                                  ; $6e27: $36 $bf
    ldh [$bd], a                                  ; $6e29: $e0 $bd
    dec hl                                        ; $6e2b: $2b
    ld c, d                                       ; $6e2c: $4a
    ld d, d                                       ; $6e2d: $52
    inc sp                                        ; $6e2e: $33
    ld b, l                                       ; $6e2f: $45
    xor a                                         ; $6e30: $af
    ld a, $c2                                     ; $6e31: $3e $c2
    sub c                                         ; $6e33: $91
    add l                                         ; $6e34: $85
    db $d3                                        ; $6e35: $d3
    jp c, $cb4e                                   ; $6e36: $da $4e $cb

    ld [$f868], a                                 ; $6e39: $ea $68 $f8
    ret nc                                        ; $6e3c: $d0

    ld h, b                                       ; $6e3d: $60
    cp $82                                        ; $6e3e: $fe $82
    rst $38                                       ; $6e40: $ff
    jp nz, Jump_070_6668                          ; $6e41: $c2 $68 $66

    add hl, sp                                    ; $6e44: $39
    ld b, l                                       ; $6e45: $45
    dec hl                                        ; $6e46: $2b
    sbc a                                         ; $6e47: $9f
    cp [hl]                                       ; $6e48: $be
    daa                                           ; $6e49: $27
    ld c, a                                       ; $6e4a: $4f
    ld d, [hl]                                    ; $6e4b: $56
    ld b, l                                       ; $6e4c: $45
    push af                                       ; $6e4d: $f5
    ld h, e                                       ; $6e4e: $63
    sub c                                         ; $6e4f: $91
    add l                                         ; $6e50: $85
    rst $10                                       ; $6e51: $d7
    pop hl                                        ; $6e52: $e1
    call c, $cb4e                                 ; $6e53: $dc $4e $cb
    xor h                                         ; $6e56: $ac
    adc d                                         ; $6e57: $8a
    cp $81                                        ; $6e58: $fe $81
    rst $38                                       ; $6e5a: $ff
    call nz, Call_070_6d6c                        ; $6e5b: $c4 $6c $6d
    ld a, [hl-]                                   ; $6e5e: $3a
    ld a, [hl]                                    ; $6e5f: $7e
    ld sp, hl                                     ; $6e60: $f9
    add b                                         ; $6e61: $80
    ld l, $4b                                     ; $6e62: $2e $4b
    ld d, [hl]                                    ; $6e64: $56
    ld b, l                                       ; $6e65: $45
    xor a                                         ; $6e66: $af
    xor [hl]                                      ; $6e67: $ae
    ld a, l                                       ; $6e68: $7d
    and c                                         ; $6e69: $a1
    ld b, b                                       ; $6e6a: $40
    sub c                                         ; $6e6b: $91
    add l                                         ; $6e6c: $85
    ei                                            ; $6e6d: $fb
    add d                                         ; $6e6e: $82
    ld c, [hl]                                    ; $6e6f: $4e
    add $77                                       ; $6e70: $c6 $77
    ld h, e                                       ; $6e72: $63
    xor h                                         ; $6e73: $ac
    add e                                         ; $6e74: $83
    and d                                         ; $6e75: $a2
    ld h, c                                       ; $6e76: $61
    sbc [hl]                                      ; $6e77: $9e
    add hl, bc                                    ; $6e78: $09
    add c                                         ; $6e79: $81
    cp $40                                        ; $6e7a: $fe $40
    and b                                         ; $6e7c: $a0
    ld [hl], c                                    ; $6e7d: $71
    ld [hl], c                                    ; $6e7e: $71
    ld [hl], b                                    ; $6e7f: $70
    ld l, [hl]                                    ; $6e80: $6e
    ld a, [hl-]                                   ; $6e81: $3a
    ld b, d                                       ; $6e82: $42
    ld hl, $233f                                  ; $6e83: $21 $3f $23
    cp l                                          ; $6e86: $bd
    ld d, h                                       ; $6e87: $54
    ld d, e                                       ; $6e88: $53
    ld b, l                                       ; $6e89: $45
    ld b, [hl]                                    ; $6e8a: $46
    ccf                                           ; $6e8b: $3f
    ld [c], a                                     ; $6e8c: $e2
    sub c                                         ; $6e8d: $91
    add l                                         ; $6e8e: $85
    add b                                         ; $6e8f: $80
    ei                                            ; $6e90: $fb
    add c                                         ; $6e91: $81
    ld c, [hl]                                    ; $6e92: $4e
    rst $00                                       ; $6e93: $c7
    rst $38                                       ; $6e94: $ff
    and e                                         ; $6e95: $a3
    xor h                                         ; $6e96: $ac
    add e                                         ; $6e97: $83
    nop                                           ; $6e98: $00
    add l                                         ; $6e99: $85
    jp z, Jump_070_7fc1                           ; $6e9a: $ca $c1 $7f

    and b                                         ; $6e9d: $a0
    dec [hl]                                      ; $6e9e: $35
    rrca                                          ; $6e9f: $0f
    ld a, $44                                     ; $6ea0: $3e $44
    inc a                                         ; $6ea2: $3c
    dec [hl]                                      ; $6ea3: $35
    ei                                            ; $6ea4: $fb
    pop bc                                        ; $6ea5: $c1
    db $fd                                        ; $6ea6: $fd
    add c                                         ; $6ea7: $81
    db $fc                                        ; $6ea8: $fc
    ld h, c                                       ; $6ea9: $61

jr_070_6eaa:
    dec b                                         ; $6eaa: $05
    ld h, [hl]                                    ; $6eab: $66
    add b                                         ; $6eac: $80
    ld c, [hl]                                    ; $6ead: $4e
    ret z                                         ; $6eae: $c8

    ld l, d                                       ; $6eaf: $6a
    ld b, d                                       ; $6eb0: $42
    xor h                                         ; $6eb1: $ac
    add h                                         ; $6eb2: $84
    inc d                                         ; $6eb3: $14
    ld h, b                                       ; $6eb4: $60
    add c                                         ; $6eb5: $81
    and d                                         ; $6eb6: $a2
    cp $81                                        ; $6eb7: $fe $81
    ld a, $c0                                     ; $6eb9: $3e $c0
    dec [hl]                                      ; $6ebb: $35
    inc bc                                        ; $6ebc: $03
    add hl, sp                                    ; $6ebd: $39
    xor [hl]                                      ; $6ebe: $ae
    add hl, sp                                    ; $6ebf: $39
    and b                                         ; $6ec0: $a0
    ld sp, hl                                     ; $6ec1: $f9
    and c                                         ; $6ec2: $a1
    cp l                                          ; $6ec3: $bd
    add b                                         ; $6ec4: $80
    ld a, [hl+]                                   ; $6ec5: $2a
    ld c, e                                       ; $6ec6: $4b
    jr c, jr_070_6f14                             ; $6ec7: $38 $4b

    xor h                                         ; $6ec9: $ac
    adc b                                         ; $6eca: $88
    or h                                          ; $6ecb: $b4
    ld [bc], a                                    ; $6ecc: $02
    ret nz                                        ; $6ecd: $c0

    cp [hl]                                       ; $6ece: $be
    ld h, c                                       ; $6ecf: $61
    xor a                                         ; $6ed0: $af
    ld a, $a2                                     ; $6ed1: $3e $a2
    add hl, sp                                    ; $6ed3: $39
    xor a                                         ; $6ed4: $af
    ld hl, sp-$60                                 ; $6ed5: $f8 $a0
    ld a, $02                                     ; $6ed7: $3e $02
    or c                                          ; $6ed9: $b1
    add c                                         ; $6eda: $81
    and c                                         ; $6edb: $a1
    ld a, [hl+]                                   ; $6edc: $2a
    ld b, e                                       ; $6edd: $43
    cp e                                          ; $6ede: $bb
    ld b, e                                       ; $6edf: $43
    ld a, [hl+]                                   ; $6ee0: $2a
    ld b, b                                       ; $6ee1: $40
    jr c, jr_070_6f2b                             ; $6ee2: $38 $47

    ld h, h                                       ; $6ee4: $64
    ld h, c                                       ; $6ee5: $61
    xor h                                         ; $6ee6: $ac
    add [hl]                                      ; $6ee7: $86
    ld sp, $c1ea                                  ; $6ee8: $31 $ea $c1
    add c                                         ; $6eeb: $81
    cp [hl]                                       ; $6eec: $be
    ld h, c                                       ; $6eed: $61
    ld a, $a3                                     ; $6eee: $3e $a3
    ld a, [hl-]                                   ; $6ef0: $3a
    ld b, l                                       ; $6ef1: $45
    ccf                                           ; $6ef2: $3f
    ldh [$f9], a                                  ; $6ef3: $e0 $f9
    add d                                         ; $6ef5: $82
    nop                                           ; $6ef6: $00
    ld [hl], h                                    ; $6ef7: $74
    ld b, e                                       ; $6ef8: $43
    cp e                                          ; $6ef9: $bb
    ld b, c                                       ; $6efa: $41
    ldh a, [rNR41]                                ; $6efb: $f0 $20
    or h                                          ; $6efd: $b4
    ld b, e                                       ; $6efe: $43
    jr c, jr_070_6f45                             ; $6eff: $38 $44

    sub d                                         ; $6f01: $92
    inc h                                         ; $6f02: $24
    inc b                                         ; $6f03: $04
    ld b, l                                       ; $6f04: $45
    add c                                         ; $6f05: $81
    add e                                         ; $6f06: $83
    ld c, e                                       ; $6f07: $4b
    ld a, c                                       ; $6f08: $79
    ld a, [hl]                                    ; $6f09: $7e
    ld a, a                                       ; $6f0a: $7f
    add c                                         ; $6f0b: $81
    ld l, d                                       ; $6f0c: $6a
    ccf                                           ; $6f0d: $3f
    ld [c], a                                     ; $6f0e: $e2
    cp c                                          ; $6f0f: $b9
    and e                                         ; $6f10: $a3
    sbc h                                         ; $6f11: $9c
    rst $28                                       ; $6f12: $ef
    inc hl                                        ; $6f13: $23

jr_070_6f14:
    ldh [$7e], a                                  ; $6f14: $e0 $7e
    ld b, [hl]                                    ; $6f16: $46
    ld d, c                                       ; $6f17: $51
    ld b, [hl]                                    ; $6f18: $46
    sub d                                         ; $6f19: $92
    jr nz, jr_070_6f47                            ; $6f1a: $20 $2b

    ld c, b                                       ; $6f1c: $48
    ld b, e                                       ; $6f1d: $43
    ld b, h                                       ; $6f1e: $44
    add b                                         ; $6f1f: $80
    ld b, l                                       ; $6f20: $45
    ld [hl], $84                                  ; $6f21: $36 $84
    pop bc                                        ; $6f23: $c1
    ret nz                                        ; $6f24: $c0

    ret nz                                        ; $6f25: $c0

    ldh [$af], a                                  ; $6f26: $e0 $af
    jr c, jr_070_6eaa                             ; $6f28: $38 $80

    cp [hl]                                       ; $6f2a: $be

jr_070_6f2b:
    jp $60eb                                      ; $6f2b: $c3 $eb $60


    jr nc, jr_070_6f70                            ; $6f2e: $30 $40

    sbc a                                         ; $6f30: $9f
    jr nz, jr_070_6fb1                            ; $6f31: $20 $7e

    ld b, e                                       ; $6f33: $43

jr_070_6f34:
    or e                                          ; $6f34: $b3
    ld b, [hl]                                    ; $6f35: $46
    dec hl                                        ; $6f36: $2b
    ld b, l                                       ; $6f37: $45
    ld [bc], a                                    ; $6f38: $02
    ld b, h                                       ; $6f39: $44
    inc b                                         ; $6f3a: $04
    ld b, l                                       ; $6f3b: $45
    add b                                         ; $6f3c: $80
    jp nz, Jump_000_00c1                          ; $6f3d: $c2 $c1 $00

    ret nz                                        ; $6f40: $c0

    ld a, a                                       ; $6f41: $7f
    xor [hl]                                      ; $6f42: $ae
    add hl, sp                                    ; $6f43: $39
    dec [hl]                                      ; $6f44: $35

jr_070_6f45:
    ld h, d                                       ; $6f45: $62
    ld h, e                                       ; $6f46: $63

jr_070_6f47:
    ld h, l                                       ; $6f47: $65
    ld a, l                                       ; $6f48: $7d
    db $ed                                        ; $6f49: $ed
    jp $a900                                      ; $6f4a: $c3 $00 $a9


    ld h, b                                       ; $6f4d: $60
    xor h                                         ; $6f4e: $ac
    inc h                                         ; $6f4f: $24
    or e                                          ; $6f50: $b3
    ld b, [hl]                                    ; $6f51: $46
    db $fc                                        ; $6f52: $fc
    inc bc                                        ; $6f53: $03
    sbc l                                         ; $6f54: $9d
    jr nz, jr_070_6f34                            ; $6f55: $20 $dd

    inc b                                         ; $6f57: $04
    jp $8060                                      ; $6f58: $c3 $60 $80


    ld b, c                                       ; $6f5b: $41
    cp e                                          ; $6f5c: $bb
    ld a, c                                       ; $6f5d: $79
    adc l                                         ; $6f5e: $8d
    pop bc                                        ; $6f5f: $c1
    ld h, b                                       ; $6f60: $60
    ld l, h                                       ; $6f61: $6c
    ld l, a                                       ; $6f62: $6f
    ld l, [hl]                                    ; $6f63: $6e
    ret nz                                        ; $6f64: $c0

    ret nz                                        ; $6f65: $c0

    ld h, d                                       ; $6f66: $62
    rrca                                          ; $6f67: $0f
    ld h, a                                       ; $6f68: $67
    dec [hl]                                      ; $6f69: $35
    inc a                                         ; $6f6a: $3c
    ld a, a                                       ; $6f6b: $7f
    push af                                       ; $6f6c: $f5
    inc hl                                        ; $6f6d: $23
    db $f4                                        ; $6f6e: $f4
    ld b, d                                       ; $6f6f: $42

jr_070_6f70:
    ldh a, [rNR43]                                ; $6f70: $f0 $22
    or e                                          ; $6f72: $b3
    ld b, [hl]                                    ; $6f73: $46
    call nz, Call_000_03bf                        ; $6f74: $c4 $bf $03
    push af                                       ; $6f77: $f5
    ld [hl+], a                                   ; $6f78: $22
    rst $10                                       ; $6f79: $d7
    ld a, [de]                                    ; $6f7a: $1a
    ld b, c                                       ; $6f7b: $41
    jp nz, $81c1                                  ; $6f7c: $c2 $c1 $81

    push hl                                       ; $6f7f: $e5
    ld [hl], e                                    ; $6f80: $73
    ld l, [hl]                                    ; $6f81: $6e
    rra                                           ; $6f82: $1f
    ld [hl], $47                                  ; $6f83: $36 $47
    ld c, h                                       ; $6f85: $4c
    ld d, l                                       ; $6f86: $55
    ld l, c                                       ; $6f87: $69
    ld a, b                                       ; $6f88: $78
    ld h, c                                       ; $6f89: $61
    cp b                                          ; $6f8a: $b8
    ld b, b                                       ; $6f8b: $40
    ld l, l                                       ; $6f8c: $6d
    inc hl                                        ; $6f8d: $23
    add b                                         ; $6f8e: $80
    inc sp                                        ; $6f8f: $33
    ld h, h                                       ; $6f90: $64
    or e                                          ; $6f91: $b3
    ld b, [hl]                                    ; $6f92: $46
    cp a                                          ; $6f93: $bf
    inc bc                                        ; $6f94: $03
    inc c                                         ; $6f95: $0c
    jr nz, @-$21                                  ; $6f96: $20 $dd

    ld bc, $0048                                  ; $6f98: $01 $48 $00
    ld b, h                                       ; $6f9b: $44
    inc hl                                        ; $6f9c: $23
    ld a, c                                       ; $6f9d: $79
    ld a, l                                       ; $6f9e: $7d
    adc l                                         ; $6f9f: $8d
    inc bc                                        ; $6fa0: $03
    pop bc                                        ; $6fa1: $c1
    ld l, d                                       ; $6fa2: $6a
    ld a, [hl-]                                   ; $6fa3: $3a
    ld c, e                                       ; $6fa4: $4b
    ld h, b                                       ; $6fa5: $60
    ld h, c                                       ; $6fa6: $61
    ret nz                                        ; $6fa7: $c0

    pop hl                                        ; $6fa8: $e1
    ld bc, $b839                                  ; $6fa9: $01 $39 $b8
    ld b, d                                       ; $6fac: $42
    db $fd                                        ; $6fad: $fd
    push hl                                       ; $6fae: $e5
    or e                                          ; $6faf: $b3
    ld c, c                                       ; $6fb0: $49

jr_070_6fb1:
    cp a                                          ; $6fb1: $bf
    inc b                                         ; $6fb2: $04
    add l                                         ; $6fb3: $85
    inc b                                         ; $6fb4: $04
    ld c, b                                       ; $6fb5: $48
    ld bc, $8003                                  ; $6fb6: $01 $03 $80
    xor $82                                       ; $6fb9: $ee $82
    ld h, b                                       ; $6fbb: $60
    ld b, a                                       ; $6fbc: $47
    ld e, d                                       ; $6fbd: $5a
    inc a                                         ; $6fbe: $3c
    ret nz                                        ; $6fbf: $c0

    pop hl                                        ; $6fc0: $e1
    ld d, [hl]                                    ; $6fc1: $56
    ld h, c                                       ; $6fc2: $61
    ld h, c                                       ; $6fc3: $61
    ccf                                           ; $6fc4: $3f
    add hl, sp                                    ; $6fc5: $39
    ld l, c                                       ; $6fc6: $69
    dec [hl]                                      ; $6fc7: $35
    inc a                                         ; $6fc8: $3c
    ld b, h                                       ; $6fc9: $44
    adc d                                         ; $6fca: $8a
    cp b                                          ; $6fcb: $b8
    ld b, h                                       ; $6fcc: $44
    or e                                          ; $6fcd: $b3
    ld c, [hl]                                    ; $6fce: $4e
    cp b                                          ; $6fcf: $b8
    cp a                                          ; $6fd0: $bf
    inc b                                         ; $6fd1: $04
    or c                                          ; $6fd2: $b1
    ld l, b                                       ; $6fd3: $68
    ld b, e                                       ; $6fd4: $43
    add d                                         ; $6fd5: $82
    ld c, d                                       ; $6fd6: $4a
    ld h, b                                       ; $6fd7: $60
    ld d, l                                       ; $6fd8: $55
    ld b, e                                       ; $6fd9: $43
    and b                                         ; $6fda: $a0
    ld [hl], l                                    ; $6fdb: $75
    ccf                                           ; $6fdc: $3f
    ld h, [hl]                                    ; $6fdd: $66
    add hl, sp                                    ; $6fde: $39
    ld d, [hl]                                    ; $6fdf: $56
    ld d, d                                       ; $6fe0: $52
    ld a, [hl-]                                   ; $6fe1: $3a
    ld l, c                                       ; $6fe2: $69
    ld b, c                                       ; $6fe3: $41
    push hl                                       ; $6fe4: $e5
    jp Jump_070_50c0                              ; $6fe5: $c3 $c0 $50


    xor b                                         ; $6fe8: $a8
    ld [bc], a                                    ; $6fe9: $02
    di                                            ; $6fea: $f3
    ld hl, $0cbf                                  ; $6feb: $21 $bf $0c
    ld [bc], a                                    ; $6fee: $02
    ld b, [hl]                                    ; $6fef: $46
    db $eb                                        ; $6ff0: $eb
    ret nz                                        ; $6ff1: $c0

    db $e4                                        ; $6ff2: $e4
    ld d, [hl]                                    ; $6ff3: $56
    ld b, d                                       ; $6ff4: $42
    pop bc                                        ; $6ff5: $c1
    ld a, a                                       ; $6ff6: $7f
    dec [hl]                                      ; $6ff7: $35
    ld l, d                                       ; $6ff8: $6a
    ld a, $45                                     ; $6ff9: $3e $45
    ld [hl], $62                                  ; $6ffb: $36 $62
    halt                                          ; $6ffd: $76
    cp c                                          ; $6ffe: $b9
    ld b, b                                       ; $6fff: $40
    nop                                           ; $7000: $00
    ld bc, $a7e2                                  ; $7001: $01 $e2 $a7
    inc hl                                        ; $7004: $23
    ld a, [hl+]                                   ; $7005: $2a
    dec b                                         ; $7006: $05
    dec [hl]                                      ; $7007: $35
    inc bc                                        ; $7008: $03
    cp a                                          ; $7009: $bf
    inc b                                         ; $700a: $04
    ld [bc], a                                    ; $700b: $02
    ld b, l                                       ; $700c: $45

jr_070_700d:
    ld e, h                                       ; $700d: $5c
    nop                                           ; $700e: $00
    jp Jump_000_0962                              ; $700f: $c3 $62 $09


    ld b, l                                       ; $7012: $45
    inc b                                         ; $7013: $04
    and c                                         ; $7014: $a1
    ld b, c                                       ; $7015: $41
    add b                                         ; $7016: $80
    add hl, sp                                    ; $7017: $39
    add d                                         ; $7018: $82
    pop bc                                        ; $7019: $c1
    ret nz                                        ; $701a: $c0

    push hl                                       ; $701b: $e5
    or a                                          ; $701c: $b7
    ld hl, $00e4                                  ; $701d: $21 $e4 $00
    ld b, h                                       ; $7020: $44
    ld a, [hl]                                    ; $7021: $7e
    jp nz, Jump_000_00b0                          ; $7022: $c2 $b0 $00

    ld [$c10a], a                                 ; $7025: $ea $0a $c1
    cp a                                          ; $7028: $bf
    inc b                                         ; $7029: $04
    ld [bc], a                                    ; $702a: $02

jr_070_702b:
    ld c, h                                       ; $702b: $4c
    add b                                         ; $702c: $80
    add h                                         ; $702d: $84
    add d                                         ; $702e: $82
    ld [hl+], a                                   ; $702f: $22
    ld b, c                                       ; $7030: $41
    ret nz                                        ; $7031: $c0

    xor [hl]                                      ; $7032: $ae
    ld b, d                                       ; $7033: $42
    ldh [$c1], a                                  ; $7034: $e0 $c1
    jp RST_30                                     ; $7036: $c3 $30 $00


    ld a, e                                       ; $7039: $7b
    ld l, $01                                     ; $703a: $2e $01
    and e                                         ; $703c: $a3
    ld [bc], a                                    ; $703d: $02
    db $10                                        ; $703e: $10
    or h                                          ; $703f: $b4
    add h                                         ; $7040: $84
    dec [hl]                                      ; $7041: $35
    nop                                           ; $7042: $00
    cp a                                          ; $7043: $bf
    inc b                                         ; $7044: $04
    ld [bc], a                                    ; $7045: $02
    ld c, d                                       ; $7046: $4a
    xor [hl]                                      ; $7047: $ae
    inc bc                                        ; $7048: $03
    jr nz, jr_070_700d                            ; $7049: $20 $c2

    ret nz                                        ; $704b: $c0

    ld [bc], a                                    ; $704c: $02
    ret nz                                        ; $704d: $c0

    rst $38                                       ; $704e: $ff
    ld [hl], $af                                  ; $704f: $36 $af
    inc a                                         ; $7051: $3c
    ld l, e                                       ; $7052: $6b
    ld l, h                                       ; $7053: $6c
    ld l, h                                       ; $7054: $6c
    ld [hl], d                                    ; $7055: $72
    adc b                                         ; $7056: $88

jr_070_7057:
    ld c, a                                       ; $7057: $4f
    add a                                         ; $7058: $87
    add l                                         ; $7059: $85
    ld a, c                                       ; $705a: $79
    ld a, [hl]                                    ; $705b: $7e
    ld b, b                                       ; $705c: $40
    jp nz, $a4f8                                  ; $705d: $c2 $f8 $a4

    sbc [hl]                                      ; $7060: $9e
    or h                                          ; $7061: $b4
    add e                                         ; $7062: $83
    cp b                                          ; $7063: $b8
    cp a                                          ; $7064: $bf
    rlca                                          ; $7065: $07
    or h                                          ; $7066: $b4
    ld l, b                                       ; $7067: $68
    nop                                           ; $7068: $00
    ld hl, $8785                                  ; $7069: $21 $85 $87
    ld [hl], c                                    ; $706c: $71
    jp $4562                                      ; $706d: $c3 $62 $45


    cp a                                          ; $7070: $bf
    ld b, l                                       ; $7071: $45
    ld a, [hl-]                                   ; $7072: $3a
    ld l, [hl]                                    ; $7073: $6e
    ld [hl], b                                    ; $7074: $70
    ld [hl], b                                    ; $7075: $70
    ld l, [hl]                                    ; $7076: $6e
    ld a, [$8040]                                 ; $7077: $fa $40 $80
    or b                                          ; $707a: $b0
    rst $30                                       ; $707b: $f7
    inc h                                         ; $707c: $24
    ld hl, sp-$5d                                 ; $707d: $f8 $a3
    pop af                                        ; $707f: $f1
    ld bc, $684f                                  ; $7080: $01 $4f $68
    and b                                         ; $7083: $a0
    and b                                         ; $7084: $a0
    or h                                          ; $7085: $b4
    ld h, a                                       ; $7086: $67
    sbc $01                                       ; $7087: $de $01
    rst $18                                       ; $7089: $df
    ld a, $a1                                     ; $708a: $3e $a1
    ld bc, $08e2                                  ; $708c: $01 $e2 $08
    add c                                         ; $708f: $81
    rst $30                                       ; $7090: $f7
    push hl                                       ; $7091: $e5
    ret nz                                        ; $7092: $c0

    ldh [$f7], a                                  ; $7093: $e0 $f7
    jr nz, jr_070_7057                            ; $7095: $20 $c0

    jp hl                                         ; $7097: $e9


    ret nc                                        ; $7098: $d0

    ld d, b                                       ; $7099: $50
    and e                                         ; $709a: $a3
    ld a, [bc]                                    ; $709b: $0a
    and h                                         ; $709c: $a4
    or h                                          ; $709d: $b4
    ld h, a                                       ; $709e: $67
    ld a, a                                       ; $709f: $7f
    ld h, b                                       ; $70a0: $60
    and c                                         ; $70a1: $a1
    push bc                                       ; $70a2: $c5
    ld h, e                                       ; $70a3: $63
    jr c, jr_070_70dd                             ; $70a4: $38 $37

    sbc b                                         ; $70a6: $98
    ld [bc], a                                    ; $70a7: $02
    jr nz, jr_070_702b                            ; $70a8: $20 $81

    ld h, b                                       ; $70aa: $60
    ld a, d                                       ; $70ab: $7a
    ld h, b                                       ; $70ac: $60
    ld a, [hl-]                                   ; $70ad: $3a
    ld b, l                                       ; $70ae: $45
    add b                                         ; $70af: $80
    ldh [rBCPD], a                                ; $70b0: $e0 $69
    ld [bc], a                                    ; $70b2: $02
    adc h                                         ; $70b3: $8c
    add c                                         ; $70b4: $81
    ld a, l                                       ; $70b5: $7d
    ld [hl-], a                                   ; $70b6: $32
    inc hl                                        ; $70b7: $23
    dec b                                         ; $70b8: $05
    inc h                                         ; $70b9: $24
    add hl, bc                                    ; $70ba: $09
    ld h, l                                       ; $70bb: $65
    ld [bc], a                                    ; $70bc: $02
    ld b, a                                       ; $70bd: $47
    ld a, a                                       ; $70be: $7f
    ld h, c                                       ; $70bf: $61
    ret c                                         ; $70c0: $d8

    add b                                         ; $70c1: $80
    ld [hl], $b8                                  ; $70c2: $36 $b8
    jp nz, $bae0                                  ; $70c4: $c2 $e0 $ba

    dec b                                         ; $70c7: $05
    add hl, sp                                    ; $70c8: $39
    ld h, b                                       ; $70c9: $60
    ld [hl], $82                                  ; $70ca: $36 $82
    add e                                         ; $70cc: $83
    ccf                                           ; $70cd: $3f
    and h                                         ; $70ce: $a4
    add c                                         ; $70cf: $81
    add b                                         ; $70d0: $80
    ld a, e                                       ; $70d1: $7b
    add b                                         ; $70d2: $80
    ld a, [hl-]                                   ; $70d3: $3a
    add d                                         ; $70d4: $82
    dec b                                         ; $70d5: $05
    ld [hl+], a                                   ; $70d6: $22
    add hl, bc                                    ; $70d7: $09
    ld h, l                                       ; $70d8: $65
    ld [bc], a                                    ; $70d9: $02
    ld b, [hl]                                    ; $70da: $46
    and b                                         ; $70db: $a0
    nop                                           ; $70dc: $00

jr_070_70dd:
    ld b, c                                       ; $70dd: $41
    ld b, b                                       ; $70de: $40
    xor [hl]                                      ; $70df: $ae
    sub e                                         ; $70e0: $93
    xor a                                         ; $70e1: $af
    xor [hl]                                      ; $70e2: $ae
    add $23                                       ; $70e3: $c6 $23
    ld [hl], $e5                                  ; $70e5: $36 $e5
    inc a                                         ; $70e7: $3c
    or c                                          ; $70e8: $b1
    ld b, b                                       ; $70e9: $40
    rst $38                                       ; $70ea: $ff
    ldh [$89], a                                  ; $70eb: $e0 $89
    rrca                                          ; $70ed: $0f
    add e                                         ; $70ee: $83
    add e                                         ; $70ef: $83
    add h                                         ; $70f0: $84
    xor a                                         ; $70f1: $af
    ret nz                                        ; $70f2: $c0

    and c                                         ; $70f3: $a1
    ld a, d                                       ; $70f4: $7a
    ld h, b                                       ; $70f5: $60
    pop de                                        ; $70f6: $d1
    ld h, d                                       ; $70f7: $62
    add hl, bc                                    ; $70f8: $09
    ld h, l                                       ; $70f9: $65
    ld h, h                                       ; $70fa: $64
    rst $20                                       ; $70fb: $e7
    ld c, b                                       ; $70fc: $48
    ccf                                           ; $70fd: $3f
    add b                                         ; $70fe: $80
    xor a                                         ; $70ff: $af
    sub $a0                                       ; $7100: $d6 $a0
    ld b, a                                       ; $7102: $47
    inc b                                         ; $7103: $04
    ld b, [hl]                                    ; $7104: $46
    ld a, c                                       ; $7105: $79
    ld a, c                                       ; $7106: $79
    nop                                           ; $7107: $00
    cp $37                                        ; $7108: $fe $37
    ld bc, $4546                                  ; $710a: $01 $46 $45
    ld b, e                                       ; $710d: $43
    ld c, b                                       ; $710e: $48
    ld c, b                                       ; $710f: $48
    add l                                         ; $7110: $85
    add a                                         ; $7111: $87
    dec b                                         ; $7112: $05
    add a                                         ; $7113: $87
    scf                                           ; $7114: $37
    and b                                         ; $7115: $a0
    sbc [hl]                                      ; $7116: $9e
    add c                                         ; $7117: $81
    ld h, h                                       ; $7118: $64
    add hl, bc                                    ; $7119: $09
    ld l, e                                       ; $711a: $6b
    pop bc                                        ; $711b: $c1
    ld l, d                                       ; $711c: $6a
    sub l                                         ; $711d: $95
    and c                                         ; $711e: $a1
    ld d, e                                       ; $711f: $53
    and d                                         ; $7120: $a2
    rst $28                                       ; $7121: $ef
    ld a, c                                       ; $7122: $79
    ld a, [hl]                                    ; $7123: $7e
    inc a                                         ; $7124: $3c
    ld l, b                                       ; $7125: $68
    cp a                                          ; $7126: $bf
    ldh [$39], a                                  ; $7127: $e0 $39
    xor [hl]                                      ; $7129: $ae
    ld b, [hl]                                    ; $712a: $46
    rra                                           ; $712b: $1f
    ld c, d                                       ; $712c: $4a
    ld e, l                                       ; $712d: $5d
    ld h, b                                       ; $712e: $60
    ld d, h                                       ; $712f: $54
    ld b, h                                       ; $7130: $44
    inc [hl]                                      ; $7131: $34
    inc b                                         ; $7132: $04
    jr c, jr_070_713c                             ; $7133: $38 $07

    add hl, bc                                    ; $7135: $09
    ld h, l                                       ; $7136: $65
    add b                                         ; $7137: $80
    rst $20                                       ; $7138: $e7
    ld b, d                                       ; $7139: $42
    rst $30                                       ; $713a: $f7
    ld b, b                                       ; $713b: $40

jr_070_713c:
    pop bc                                        ; $713c: $c1
    ld h, h                                       ; $713d: $64
    add b                                         ; $713e: $80
    pop hl                                        ; $713f: $e1
    ld c, $82                                     ; $7140: $0e $82
    or [hl]                                       ; $7142: $b6
    and c                                         ; $7143: $a1
    cp a                                          ; $7144: $bf
    ldh [$39], a                                  ; $7145: $e0 $39
    ccf                                           ; $7147: $3f
    xor a                                         ; $7148: $af
    ld b, [hl]                                    ; $7149: $46
    ld c, d                                       ; $714a: $4a
    ld d, [hl]                                    ; $714b: $56
    inc l                                         ; $714c: $2c
    inc l                                         ; $714d: $2c
    pop af                                        ; $714e: $f1
    ld bc, $62c0                                  ; $714f: $01 $c0 $62
    nop                                           ; $7152: $00
    jr c, jr_070_715d                             ; $7153: $38 $08

    add hl, bc                                    ; $7155: $09
    ld h, h                                       ; $7156: $64
    rst $20                                       ; $7157: $e7
    ld b, c                                       ; $7158: $41
    ld b, l                                       ; $7159: $45
    inc bc                                        ; $715a: $03
    ld c, l                                       ; $715b: $4d
    inc bc                                        ; $715c: $03

jr_070_715d:
    ret nc                                        ; $715d: $d0

    ld h, c                                       ; $715e: $61
    add hl, sp                                    ; $715f: $39
    ld [hl+], a                                   ; $7160: $22
    ld a, b                                       ; $7161: $78
    nop                                           ; $7162: $00
    cp [hl]                                       ; $7163: $be
    cp c                                          ; $7164: $b9
    ld b, c                                       ; $7165: $41
    ld b, l                                       ; $7166: $45
    ld b, e                                       ; $7167: $43
    ld a, [hl+]                                   ; $7168: $2a
    jr nz, jr_070_7195                            ; $7169: $20 $2a

    add b                                         ; $716b: $80
    pop hl                                        ; $716c: $e1
    sbc [hl]                                      ; $716d: $9e
    sub b                                         ; $716e: $90
    inc de                                        ; $716f: $13
    ld h, c                                       ; $7170: $61
    jr c, jr_070_7186                             ; $7171: $38 $13

    ld b, l                                       ; $7173: $45
    nop                                           ; $7174: $00
    inc bc                                        ; $7175: $03
    ld b, d                                       ; $7176: $42
    xor a                                         ; $7177: $af
    cp a                                          ; $7178: $bf
    ret nz                                        ; $7179: $c0

    db $10                                        ; $717a: $10
    and h                                         ; $717b: $a4
    add b                                         ; $717c: $80
    db $fd                                        ; $717d: $fd
    ld b, [hl]                                    ; $717e: $46
    ld hl, sp+$41                                 ; $717f: $f8 $41
    ld l, d                                       ; $7181: $6a
    dec [hl]                                      ; $7182: $35
    ld b, d                                       ; $7183: $42
    ld c, d                                       ; $7184: $4a
    ld d, [hl]                                    ; $7185: $56

jr_070_7186:
    ld a, [hl+]                                   ; $7186: $2a
    rla                                           ; $7187: $17
    ld a, [hl+]                                   ; $7188: $2a
    ld c, e                                       ; $7189: $4b
    ld d, l                                       ; $718a: $55
    jp nz, $9e80                                  ; $718b: $c2 $80 $9e

    inc de                                        ; $718e: $13
    ld h, b                                       ; $718f: $60
    jr c, jr_070_719c                             ; $7190: $38 $0a

    or h                                          ; $7192: $b4
    ld c, d                                       ; $7193: $4a
    ret nz                                        ; $7194: $c0

jr_070_7195:
    inc bc                                        ; $7195: $03
    ld b, c                                       ; $7196: $41
    rst $10                                       ; $7197: $d7
    and b                                         ; $7198: $a0
    ld d, d                                       ; $7199: $52
    ld h, e                                       ; $719a: $63
    sub e                                         ; $719b: $93

jr_070_719c:
    add b                                         ; $719c: $80
    ld c, b                                       ; $719d: $48
    ret nz                                        ; $719e: $c0

    scf                                           ; $719f: $37

jr_070_71a0:
    ld bc, $443c                                  ; $71a0: $01 $3c $44
    sbc a                                         ; $71a3: $9f
    ld c, d                                       ; $71a4: $4a
    ld h, b                                       ; $71a5: $60
    ld e, l                                       ; $71a6: $5d
    ld e, l                                       ; $71a7: $5d
    ld h, b                                       ; $71a8: $60
    ret nz                                        ; $71a9: $c0

    ldh [rPCM34], a                               ; $71aa: $e0 $77
    nop                                           ; $71ac: $00
    ld [c], a                                     ; $71ad: $e2
    add c                                         ; $71ae: $81
    db $e3                                        ; $71af: $e3
    jr c, @+$0a                                   ; $71b0: $38 $08

    adc b                                         ; $71b2: $88
    ld b, e                                       ; $71b3: $43
    ld [bc], a                                    ; $71b4: $02
    inc h                                         ; $71b5: $24
    ld [bc], a                                    ; $71b6: $02
    add d                                         ; $71b7: $82
    jp $f9e7                                      ; $71b8: $c3 $e7 $f9


    ld bc, $7786                                  ; $71bb: $01 $86 $77
    add e                                         ; $71be: $83
    ld b, [hl]                                    ; $71bf: $46
    add hl, sp                                    ; $71c0: $39
    cp c                                          ; $71c1: $b9
    nop                                           ; $71c2: $00
    ld b, l                                       ; $71c3: $45
    ld b, l                                       ; $71c4: $45
    ld d, e                                       ; $71c5: $53
    rst $38                                       ; $71c6: $ff
    ldh [rP1], a                                  ; $71c7: $e0 $00
    scf                                           ; $71c9: $37
    ld hl, $8102                                  ; $71ca: $21 $02 $81
    jr c, jr_070_71d7                             ; $71cd: $38 $08

    ret nz                                        ; $71cf: $c0

    push hl                                       ; $71d0: $e5
    ld [bc], a                                    ; $71d1: $02
    ld [hl+], a                                   ; $71d2: $22
    jp nz, $d963                                  ; $71d3: $c2 $63 $d9

    ld h, h                                       ; $71d6: $64

jr_070_71d7:
    jp nc, $0663                                  ; $71d7: $d2 $63 $06

    rlca                                          ; $71da: $07
    pop bc                                        ; $71db: $c1
    ld [hl], b                                    ; $71dc: $70
    ld l, [hl]                                    ; $71dd: $6e
    ld a, $22                                     ; $71de: $3e $22
    ld b, d                                       ; $71e0: $42
    ld h, l                                       ; $71e1: $65
    jp nz, Jump_000_3840                          ; $71e2: $c2 $40 $38

    rlca                                          ; $71e5: $07
    ld b, $43                                     ; $71e6: $06 $43
    nop                                           ; $71e8: $00
    ld sp, hl                                     ; $71e9: $f9
    and [hl]                                      ; $71ea: $a6
    nop                                           ; $71eb: $00
    db $e4                                        ; $71ec: $e4
    call nc, $b746                                ; $71ed: $d4 $46 $b7
    inc bc                                        ; $71f0: $03
    nop                                           ; $71f1: $00
    ld b, h                                       ; $71f2: $44
    ld [bc], a                                    ; $71f3: $02
    ld h, [hl]                                    ; $71f4: $66
    jr c, @+$0a                                   ; $71f5: $38 $08

    or e                                          ; $71f7: $b3
    inc hl                                        ; $71f8: $23
    nop                                           ; $71f9: $00
    ld [bc], a                                    ; $71fa: $02
    ld h, $80                                     ; $71fb: $26 $80
    jp $e93e                                      ; $71fd: $c3 $3e $e9


    halt                                          ; $7200: $76
    ld bc, $e8c1                                  ; $7201: $01 $c1 $e8
    ret nz                                        ; $7204: $c0

    ret nz                                        ; $7205: $c0

    jr c, jr_070_7212                             ; $7206: $38 $0a

    or e                                          ; $7208: $b3
    ld [hl+], a                                   ; $7209: $22
    db $10                                        ; $720a: $10
    ld sp, hl                                     ; $720b: $f9
    and a                                         ; $720c: $a7
    add b                                         ; $720d: $80
    jp $ebc1                                      ; $720e: $c3 $c1 $eb


    or e                                          ; $7211: $b3

jr_070_7212:
    jp hl                                         ; $7212: $e9


    xor [hl]                                      ; $7213: $ae
    ret nz                                        ; $7214: $c0

    ret nz                                        ; $7215: $c0

    dec b                                         ; $7216: $05
    jr z, jr_070_71a0                             ; $7217: $28 $87

    and a                                         ; $7219: $a7
    ld [hl], b                                    ; $721a: $70
    ld [bc], a                                    ; $721b: $02
    ld [hl+], a                                   ; $721c: $22
    ld b, e                                       ; $721d: $43
    add e                                         ; $721e: $83
    cp $c7                                        ; $721f: $fe $c7
    cp b                                          ; $7221: $b8
    rst $28                                       ; $7222: $ef
    xor a                                         ; $7223: $af
    sbc h                                         ; $7224: $9c
    sbc a                                         ; $7225: $9f
    sub c                                         ; $7226: $91
    ld [bc], a                                    ; $7227: $02
    db $e4                                        ; $7228: $e4
    ld a, [hl]                                    ; $7229: $7e
    and a                                         ; $722a: $a7
    ld b, h                                       ; $722b: $44
    xor b                                         ; $722c: $a8
    db $eb                                        ; $722d: $eb
    and $00                                       ; $722e: $e6 $00
    ld b, b                                       ; $7230: $40
    and h                                         ; $7231: $a4
    ld b, c                                       ; $7232: $41
    ld b, c                                       ; $7233: $41
    scf                                           ; $7234: $37
    dec b                                         ; $7235: $05
    scf                                           ; $7236: $37
    db $fc                                        ; $7237: $fc
    rst $28                                       ; $7238: $ef
    ld b, l                                       ; $7239: $45
    dec b                                         ; $723a: $05
    ld h, c                                       ; $723b: $61
    sub c                                         ; $723c: $91
    inc b                                         ; $723d: $04
    rst $38                                       ; $723e: $ff
    nop                                           ; $723f: $00
    bit 0, h                                      ; $7240: $cb $44
    push bc                                       ; $7242: $c5
    dec b                                         ; $7243: $05
    di                                            ; $7244: $f3
    db $ec                                        ; $7245: $ec
    db $ed                                        ; $7246: $ed
    and $01                                       ; $7247: $e6 $01
    nop                                           ; $7249: $00
    ld b, c                                       ; $724a: $41
    ld b, [hl]                                    ; $724b: $46
    xor [hl]                                      ; $724c: $ae
    and h                                         ; $724d: $a4
    ld h, h                                       ; $724e: $64
    or [hl]                                       ; $724f: $b6
    rst $38                                       ; $7250: $ff
    ldh a, [$a5]                                  ; $7251: $f0 $a5
    ld b, d                                       ; $7253: $42
    add h                                         ; $7254: $84
    ld hl, $e9e8                                  ; $7255: $21 $e8 $e9
    push de                                       ; $7258: $d5
    ld [bc], a                                    ; $7259: $02
    db $d3                                        ; $725a: $d3
    ld sp, hl                                     ; $725b: $f9
    ret nc                                        ; $725c: $d0

    bit 1, b                                      ; $725d: $cb $48
    nop                                           ; $725f: $00
    ld c, h                                       ; $7260: $4c
    ld b, [hl]                                    ; $7261: $46
    xor a                                         ; $7262: $af
    ld l, c                                       ; $7263: $69
    and e                                         ; $7264: $a3
    dec [hl]                                      ; $7265: $35
    sbc e                                         ; $7266: $9b
    dec [hl]                                      ; $7267: $35
    and e                                         ; $7268: $a3
    db $fc                                        ; $7269: $fc
    db $ed                                        ; $726a: $ed
    ld l, d                                       ; $726b: $6a
    ld b, b                                       ; $726c: $40
    inc b                                         ; $726d: $04
    ld b, e                                       ; $726e: $43
    push de                                       ; $726f: $d5

Call_070_7270:
    ld [bc], a                                    ; $7270: $02
    db $d3                                        ; $7271: $d3
    add hl, hl                                    ; $7272: $29
    ret nc                                        ; $7273: $d0

    bit 1, b                                      ; $7274: $cb $48
    cpl                                           ; $7276: $2f
    ld b, $ea                                     ; $7277: $06 $ea
    cp $83                                        ; $7279: $fe $83
    ld b, d                                       ; $727b: $42
    adc c                                         ; $727c: $89
    ld b, c                                       ; $727d: $41
    db $fd                                        ; $727e: $fd
    xor $35                                       ; $727f: $ee $35
    ld l, d                                       ; $7281: $6a
    add b                                         ; $7282: $80
    ld [c], a                                     ; $7283: $e2
    db $eb                                        ; $7284: $eb
    add l                                         ; $7285: $85
    ld h, e                                       ; $7286: $63
    rst $10                                       ; $7287: $d7
    jp nc, $48cb                                  ; $7288: $d2 $cb $48

    or h                                          ; $728b: $b4
    inc h                                         ; $728c: $24
    call z, $81f1                                 ; $728d: $cc $f1 $81
    cp [hl]                                       ; $7290: $be
    add d                                         ; $7291: $82
    ld b, b                                       ; $7292: $40
    ld l, e                                       ; $7293: $6b
    cp a                                          ; $7294: $bf
    ld b, b                                       ; $7295: $40
    db $fd                                        ; $7296: $fd
    xor $6d                                       ; $7297: $ee $6d

jr_070_7299:
    ld b, b                                       ; $7299: $40
    inc c                                         ; $729a: $0c
    inc b                                         ; $729b: $04
    add e                                         ; $729c: $83
    add l                                         ; $729d: $85
    ld h, d                                       ; $729e: $62

jr_070_729f:
    jp c, $cbd3                                   ; $729f: $da $d3 $cb

    ld b, a                                       ; $72a2: $47
    ld b, e                                       ; $72a3: $43
    inc hl                                        ; $72a4: $23
    ld l, $62                                     ; $72a5: $2e $62
    cp a                                          ; $72a7: $bf
    inc bc                                        ; $72a8: $03
    cp a                                          ; $72a9: $bf
    ld b, l                                       ; $72aa: $45
    scf                                           ; $72ab: $37
    dec a                                         ; $72ac: $3d
    jr c, jr_070_72e7                             ; $72ad: $38 $38

    dec a                                         ; $72af: $3d
    db $fc                                        ; $72b0: $fc
    db $ed                                        ; $72b1: $ed
    xor [hl]                                      ; $72b2: $ae
    add hl, bc                                    ; $72b3: $09
    ld b, l                                       ; $72b4: $45
    inc b                                         ; $72b5: $04
    add e                                         ; $72b6: $83
    inc b                                         ; $72b7: $04
    ld [hl+], a                                   ; $72b8: $22
    call c, Call_000_20c7                         ; $72b9: $dc $c7 $20
    bit 0, l                                      ; $72bc: $cb $45
    inc bc                                        ; $72be: $03
    inc hl                                        ; $72bf: $23
    ld l, $62                                     ; $72c0: $2e $62
    ld c, $be                                     ; $72c2: $0e $be
    ld h, l                                       ; $72c4: $65
    ld b, l                                       ; $72c5: $45
    ld b, e                                       ; $72c6: $43
    ld b, e                                       ; $72c7: $43
    ld c, h                                       ; $72c8: $4c
    add b                                         ; $72c9: $80
    db $fc                                        ; $72ca: $fc
    db $eb                                        ; $72cb: $eb
    ld b, e                                       ; $72cc: $43
    ret nz                                        ; $72cd: $c0

    sub [hl]                                      ; $72ce: $96
    ld l, b                                       ; $72cf: $68
    jr nc, jr_070_7299                            ; $72d0: $30 $c7

    jr nz, jr_070_729f                            ; $72d2: $20 $cb

    ld b, l                                       ; $72d4: $45
    db $fd                                        ; $72d5: $fd
    xor b                                         ; $72d6: $a8
    cp e                                          ; $72d7: $bb
    ld h, b                                       ; $72d8: $60
    sbc a                                         ; $72d9: $9f
    sbc l                                         ; $72da: $9d
    rst $38                                       ; $72db: $ff
    ld [c], a                                     ; $72dc: $e2
    or [hl]                                       ; $72dd: $b6
    ld h, e                                       ; $72de: $63
    inc de                                        ; $72df: $13
    ld b, [hl]                                    ; $72e0: $46
    sbc h                                         ; $72e1: $9c
    ld a, [c]                                     ; $72e2: $f2
    db $e3                                        ; $72e3: $e3
    db $ec                                        ; $72e4: $ec
    ld [c], a                                     ; $72e5: $e2
    sbc a                                         ; $72e6: $9f

jr_070_72e7:
    ld de, $daa4                                  ; $72e7: $11 $a4 $da
    ld b, b                                       ; $72ea: $40
    rst $00                                       ; $72eb: $c7
    ld [hl+], a                                   ; $72ec: $22
    nop                                           ; $72ed: $00
    bit 0, h                                      ; $72ee: $cb $44
    ei                                            ; $72f0: $fb
    xor d                                         ; $72f1: $aa
    ld hl, $f7c4                                  ; $72f2: $21 $c4 $f7
    ld b, d                                       ; $72f5: $42
    ld b, a                                       ; $72f6: $47
    and b                                         ; $72f7: $a0
    adc l                                         ; $72f8: $8d
    ld [$a511], a                                 ; $72f9: $ea $11 $a5
    add h                                         ; $72fc: $84
    ld a, [hl+]                                   ; $72fd: $2a
    nop                                           ; $72fe: $00
    ld a, a                                       ; $72ff: $7f
    and c                                         ; $7300: $a1
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    nop                                           ; $7303: $00
    pop bc                                        ; $7304: $c1
    nop                                           ; $7305: $00
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
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    dec c                                         ; $7312: $0d
    add b                                         ; $7313: $80
    cp $e0                                        ; $7314: $fe $e0
    nop                                           ; $7316: $00
    ld b, b                                       ; $7317: $40
    ret c                                         ; $7318: $d8

    push hl                                       ; $7319: $e5
    rst $30                                       ; $731a: $f7
    and $eb                                       ; $731b: $e6 $eb
    ldh [rIE], a                                  ; $731d: $e0 $ff
    rst $38                                       ; $731f: $ff
    nop                                           ; $7320: $00
    rst $38                                       ; $7321: $ff
    db $f4                                        ; $7322: $f4
    nop                                           ; $7323: $00
    nop                                           ; $7324: $00
    nop                                           ; $7325: $00
    ld [bc], a                                    ; $7326: $02
    nop                                           ; $7327: $00
    ld d, $04                                     ; $7328: $16 $04
    ld [bc], a                                    ; $732a: $02
    ld bc, $0517                                  ; $732b: $01 $17 $05
    ld [bc], a                                    ; $732e: $02
    ld [bc], a                                    ; $732f: $02
    ld de, $0206                                  ; $7330: $11 $06 $02
    inc bc                                        ; $7333: $03
    inc e                                         ; $7334: $1c
    rlca                                          ; $7335: $07
    ld [bc], a                                    ; $7336: $02
    inc b                                         ; $7337: $04
    dec c                                         ; $7338: $0d
    ld [$0502], sp                                ; $7339: $08 $02 $05
    dec e                                         ; $733c: $1d
    ld [$0602], sp                                ; $733d: $08 $02 $06
    inc c                                         ; $7340: $0c
    add hl, bc                                    ; $7341: $09
    ld [bc], a                                    ; $7342: $02
    rlca                                          ; $7343: $07
    ld c, $09                                     ; $7344: $0e $09
    ld [bc], a                                    ; $7346: $02
    ld [$091c], sp                                ; $7347: $08 $1c $09
    ld [bc], a                                    ; $734a: $02
    add hl, bc                                    ; $734b: $09
    ld e, $09                                     ; $734c: $1e $09
    ld [bc], a                                    ; $734e: $02
    ld a, [bc]                                    ; $734f: $0a
    dec c                                         ; $7350: $0d
    ld a, [bc]                                    ; $7351: $0a
    ld [bc], a                                    ; $7352: $02
    dec bc                                        ; $7353: $0b
    dec e                                         ; $7354: $1d
    ld a, [bc]                                    ; $7355: $0a
    ld [bc], a                                    ; $7356: $02
    inc c                                         ; $7357: $0c
    ld de, $020c                                  ; $7358: $11 $0c $02
    dec c                                         ; $735b: $0d
    add hl, de                                    ; $735c: $19
    dec c                                         ; $735d: $0d
    ld [bc], a                                    ; $735e: $02
    ld c, $1d                                     ; $735f: $0e $1d
    rrca                                          ; $7361: $0f
    ld [bc], a                                    ; $7362: $02
    rrca                                          ; $7363: $0f
    dec de                                        ; $7364: $1b
    db $10                                        ; $7365: $10
    ld [bc], a                                    ; $7366: $02
    db $10                                        ; $7367: $10
    ld e, $10                                     ; $7368: $1e $10
    ld [bc], a                                    ; $736a: $02
    ld de, $1221                                  ; $736b: $11 $21 $12
    ld [bc], a                                    ; $736e: $02
    ld [de], a                                    ; $736f: $12
    rrca                                          ; $7370: $0f
    inc d                                         ; $7371: $14
    ld [bc], a                                    ; $7372: $02
    inc de                                        ; $7373: $13
    ld hl, $0214                                  ; $7374: $21 $14 $02
    inc d                                         ; $7377: $14
    ld c, $15                                     ; $7378: $0e $15
    ld [bc], a                                    ; $737a: $02
    dec d                                         ; $737b: $15
    ld [hl+], a                                   ; $737c: $22
    dec d                                         ; $737d: $15
    ld [bc], a                                    ; $737e: $02
    ld d, $13                                     ; $737f: $16 $13
    jr jr_070_7385                                ; $7381: $18 $02

    rla                                           ; $7383: $17
    ld a, [de]                                    ; $7384: $1a

jr_070_7385:
    jr jr_070_7389                                ; $7385: $18 $02

    jr jr_070_7398                                ; $7387: $18 $0f

jr_070_7389:
    add hl, de                                    ; $7389: $19
    ld [bc], a                                    ; $738a: $02
    add hl, de                                    ; $738b: $19
    jr nz, jr_070_73a7                            ; $738c: $20 $19

    ld [bc], a                                    ; $738e: $02
    ld a, [de]                                    ; $738f: $1a
    db $10                                        ; $7390: $10
    ld a, [de]                                    ; $7391: $1a
    ld [bc], a                                    ; $7392: $02
    dec de                                        ; $7393: $1b
    dec de                                        ; $7394: $1b
    dec de                                        ; $7395: $1b
    ld [bc], a                                    ; $7396: $02
    inc e                                         ; $7397: $1c

jr_070_7398:
    ld h, $1c                                     ; $7398: $26 $1c
    ld [bc], a                                    ; $739a: $02
    dec e                                         ; $739b: $1d
    ld a, [de]                                    ; $739c: $1a
    dec e                                         ; $739d: $1d
    ld [bc], a                                    ; $739e: $02
    ld e, $22                                     ; $739f: $1e $22

Jump_070_73a1:
    dec e                                         ; $73a1: $1d
    ld [bc], a                                    ; $73a2: $02
    rra                                           ; $73a3: $1f
    jr z, jr_070_73c3                             ; $73a4: $28 $1d

    ld [bc], a                                    ; $73a6: $02

jr_070_73a7:
    jr nz, jr_070_73d3                            ; $73a7: $20 $2a

    dec e                                         ; $73a9: $1d
    ld [bc], a                                    ; $73aa: $02
    ld hl, $1e0d                                  ; $73ab: $21 $0d $1e
    ld [bc], a                                    ; $73ae: $02
    ld [hl+], a                                   ; $73af: $22
    add hl, hl                                    ; $73b0: $29
    ld e, $02                                     ; $73b1: $1e $02
    inc hl                                        ; $73b3: $23
    dec h                                         ; $73b4: $25
    ld [hl+], a                                   ; $73b5: $22
    ld [bc], a                                    ; $73b6: $02
    inc h                                         ; $73b7: $24
    daa                                           ; $73b8: $27
    ld [hl+], a                                   ; $73b9: $22
    ld [bc], a                                    ; $73ba: $02
    dec h                                         ; $73bb: $25
    ld h, $23                                     ; $73bc: $26 $23
    ld [bc], a                                    ; $73be: $02
    ld h, $2c                                     ; $73bf: $26 $2c
    inc hl                                        ; $73c1: $23
    ld [bc], a                                    ; $73c2: $02

jr_070_73c3:
    daa                                           ; $73c3: $27
    add hl, hl                                    ; $73c4: $29
    inc h                                         ; $73c5: $24
    ld [bc], a                                    ; $73c6: $02
    jr z, jr_070_73e1                             ; $73c7: $28 $18

    dec h                                         ; $73c9: $25
    ld [bc], a                                    ; $73ca: $02
    add hl, hl                                    ; $73cb: $29
    ld a, [hl+]                                   ; $73cc: $2a
    dec h                                         ; $73cd: $25
    ld [bc], a                                    ; $73ce: $02
    ld a, [hl+]                                   ; $73cf: $2a
    dec c                                         ; $73d0: $0d
    ld h, $02                                     ; $73d1: $26 $02

jr_070_73d3:
    dec hl                                        ; $73d3: $2b
    ld h, $27                                     ; $73d4: $26 $27
    ld [bc], a                                    ; $73d6: $02
    inc l                                         ; $73d7: $2c
    inc h                                         ; $73d8: $24
    jr z, @+$04                                   ; $73d9: $28 $02

    dec l                                         ; $73db: $2d
    ld c, $29                                     ; $73dc: $0e $29
    ld [bc], a                                    ; $73de: $02
    ld l, $17                                     ; $73df: $2e $17

jr_070_73e1:
    add hl, hl                                    ; $73e1: $29
    ld [bc], a                                    ; $73e2: $02
    cpl                                           ; $73e3: $2f
    db $10                                        ; $73e4: $10
    ld a, [hl+]                                   ; $73e5: $2a
    ld [bc], a                                    ; $73e6: $02
    jr nc, jr_070_7414                            ; $73e7: $30 $2b

    ld a, [hl+]                                   ; $73e9: $2a
    ld [bc], a                                    ; $73ea: $02
    ld sp, $2b0e                                  ; $73eb: $31 $0e $2b
    ld [bc], a                                    ; $73ee: $02
    ld [hl-], a                                   ; $73ef: $32
    rrca                                          ; $73f0: $0f
    dec hl                                        ; $73f1: $2b
    ld [bc], a                                    ; $73f2: $02
    inc sp                                        ; $73f3: $33
    ld de, $022b                                  ; $73f4: $11 $2b $02
    inc [hl]                                      ; $73f7: $34
    db $10                                        ; $73f8: $10
    inc l                                         ; $73f9: $2c
    ld [bc], a                                    ; $73fa: $02
    dec [hl]                                      ; $73fb: $35
    ld [de], a                                    ; $73fc: $12
    inc l                                         ; $73fd: $2c
    ld [bc], a                                    ; $73fe: $02
    ld [hl], $11                                  ; $73ff: $36 $11
    dec l                                         ; $7401: $2d
    ld [bc], a                                    ; $7402: $02
    scf                                           ; $7403: $37
    inc d                                         ; $7404: $14
    dec l                                         ; $7405: $2d
    ld [bc], a                                    ; $7406: $02
    jr c, @+$23                                   ; $7407: $38 $21

    dec l                                         ; $7409: $2d
    ld [bc], a                                    ; $740a: $02
    add hl, sp                                    ; $740b: $39
    db $10                                        ; $740c: $10
    ld l, $02                                     ; $740d: $2e $02
    ld a, [hl-]                                   ; $740f: $3a
    ld [de], a                                    ; $7410: $12
    ld l, $02                                     ; $7411: $2e $02
    dec sp                                        ; $7413: $3b

jr_070_7414:
    ld c, $2f                                     ; $7414: $0e $2f
    ld [bc], a                                    ; $7416: $02
    inc a                                         ; $7417: $3c
    ld de, $022f                                  ; $7418: $11 $2f $02
    dec a                                         ; $741b: $3d
    ld d, $2f                                     ; $741c: $16 $2f
    ld [bc], a                                    ; $741e: $02
    ld a, $0f                                     ; $741f: $3e $0f
    jr nc, jr_070_7425                            ; $7421: $30 $02

    ccf                                           ; $7423: $3f
    db $10                                        ; $7424: $10

jr_070_7425:
    jr nc, jr_070_7429                            ; $7425: $30 $02

    ld b, b                                       ; $7427: $40
    ld a, [hl+]                                   ; $7428: $2a

jr_070_7429:
    jr nc, jr_070_742d                            ; $7429: $30 $02

    ld b, c                                       ; $742b: $41
    inc c                                         ; $742c: $0c

jr_070_742d:
    ld sp, $4202                                  ; $742d: $31 $02 $42
    dec c                                         ; $7430: $0d
    ld sp, $4302                                  ; $7431: $31 $02 $43
    ld c, $33                                     ; $7434: $0e $33
    ld [bc], a                                    ; $7436: $02
    ld b, h                                       ; $7437: $44
    dec d                                         ; $7438: $15
    inc sp                                        ; $7439: $33
    ld [bc], a                                    ; $743a: $02
    ld b, l                                       ; $743b: $45
    rrca                                          ; $743c: $0f
    inc [hl]                                      ; $743d: $34
    ld [bc], a                                    ; $743e: $02
    ld b, [hl]                                    ; $743f: $46
    ld c, $35                                     ; $7440: $0e $35
    ld [bc], a                                    ; $7442: $02
    ld b, a                                       ; $7443: $47
    ld a, [hl+]                                   ; $7444: $2a
    dec [hl]                                      ; $7445: $35
    ld [bc], a                                    ; $7446: $02
    ld c, b                                       ; $7447: $48
    add hl, hl                                    ; $7448: $29
    ld [hl], $02                                  ; $7449: $36 $02
    ld c, c                                       ; $744b: $49
    db $10                                        ; $744c: $10
    scf                                           ; $744d: $37
    ld [bc], a                                    ; $744e: $02
    ld c, d                                       ; $744f: $4a
    db $10                                        ; $7450: $10
    add hl, sp                                    ; $7451: $39
    ld [bc], a                                    ; $7452: $02
    ld c, e                                       ; $7453: $4b
    ld h, $3d                                     ; $7454: $26 $3d
    rst $38                                       ; $7456: $ff
    rst $38                                       ; $7457: $ff
    rst $38                                       ; $7458: $ff
    ld h, c                                       ; $7459: $61
    ld [hl], h                                    ; $745a: $74
    sub c                                         ; $745b: $91
    ld [hl], h                                    ; $745c: $74
    ld a, c                                       ; $745d: $79
    halt                                          ; $745e: $76
    ld h, e                                       ; $745f: $63
    ld a, b                                       ; $7460: $78
    ld [$c503], a                                 ; $7461: $ea $03 $c5
    ld b, $e2                                     ; $7464: $06 $e2
    ld bc, $00a0                                  ; $7466: $01 $a0 $00
    ld [$f003], a                                 ; $7469: $ea $03 $f0
    inc bc                                        ; $746c: $03
    push bc                                       ; $746d: $c5
    ld b, $e2                                     ; $746e: $06 $e2
    ld bc, $023f                                  ; $7470: $01 $3f $02
    xor e                                         ; $7473: $ab
    nop                                           ; $7474: $00
    inc sp                                        ; $7475: $33
    ld bc, $06c5                                  ; $7476: $01 $c5 $06
    ld [$0825], sp                                ; $7479: $08 $25 $08
    dec h                                         ; $747c: $25
    ld [$0825], sp                                ; $747d: $08 $25 $08
    dec h                                         ; $7480: $25
    ld [$0825], sp                                ; $7481: $08 $25 $08
    dec h                                         ; $7484: $25
    ld [$0825], sp                                ; $7485: $08 $25 $08
    dec h                                         ; $7488: $25
    ld [$0825], sp                                ; $7489: $08 $25 $08
    dec h                                         ; $748c: $25
    ld [$0825], sp                                ; $748d: $08 $25 $08
    dec h                                         ; $7490: $25
    ld a, a                                       ; $7491: $7f
    dec bc                                        ; $7492: $0b
    dec bc                                        ; $7493: $0b
    dec hl                                        ; $7494: $2b
    dec bc                                        ; $7495: $0b
    inc c                                         ; $7496: $0c
    ld l, h                                       ; $7497: $6c
    inc c                                         ; $7498: $0c
    rst $38                                       ; $7499: $ff
    ld [c], a                                     ; $749a: $e2
    db $fd                                        ; $749b: $fd
    dec bc                                        ; $749c: $0b
    rst $38                                       ; $749d: $ff
    pop hl                                        ; $749e: $e1
    ld a, [bc]                                    ; $749f: $0a
    dec bc                                        ; $74a0: $0b
    ld c, e                                       ; $74a1: $4b
    inc c                                         ; $74a2: $0c
    ld c, h                                       ; $74a3: $4c
    inc c                                         ; $74a4: $0c
    sub c                                         ; $74a5: $91
    ld c, h                                       ; $74a6: $4c
    rst $38                                       ; $74a7: $ff
    ldh [$fb], a                                  ; $74a8: $e0 $fb
    pop hl                                        ; $74aa: $e1
    rst $30                                       ; $74ab: $f7
    ldh [$0c], a                                  ; $74ac: $e0 $0c
    db $fc                                        ; $74ae: $fc
    ld [c], a                                     ; $74af: $e2
    cp $f5                                        ; $74b0: $fe $f5
    ld a, [bc]                                    ; $74b2: $0a
    sbc h                                         ; $74b3: $9c
    ret nz                                        ; $74b4: $c0

    ldh [$d3], a                                  ; $74b5: $e0 $d3
    ld [c], a                                     ; $74b7: $e2
    inc c                                         ; $74b8: $0c
    dec hl                                        ; $74b9: $2b
    dec hl                                        ; $74ba: $2b
    ret nz                                        ; $74bb: $c0

    pop hl                                        ; $74bc: $e1
    ld a, [$0ae0]                                 ; $74bd: $fa $e0 $0a
    ret nz                                        ; $74c0: $c0

    adc $e1                                       ; $74c1: $ce $e1

jr_070_74c3:
    ret                                           ; $74c3: $c9


Call_070_74c4:
    db $e4                                        ; $74c4: $e4
    push bc                                       ; $74c5: $c5
    ld [c], a                                     ; $74c6: $e2
    ret nz                                        ; $74c7: $c0

    ld sp, hl                                     ; $74c8: $f9
    add b                                         ; $74c9: $80
    pop hl                                        ; $74ca: $e1
    rst $38                                       ; $74cb: $ff
    db $eb                                        ; $74cc: $eb
    ld c, e                                       ; $74cd: $4b
    dec bc                                        ; $74ce: $0b
    ld hl, sp-$40                                 ; $74cf: $f8 $c0
    db $ed                                        ; $74d1: $ed
    db $fd                                        ; $74d2: $fd
    ld sp, hl                                     ; $74d3: $f9
    ret nz                                        ; $74d4: $c0

    jp hl                                         ; $74d5: $e9


    ld l, e                                       ; $74d6: $6b
    ld l, e                                       ; $74d7: $6b
    ld c, e                                       ; $74d8: $4b
    ld c, e                                       ; $74d9: $4b
    ld c, e                                       ; $74da: $4b
    add h                                         ; $74db: $84
    ret nz                                        ; $74dc: $c0

    ld [c], a                                     ; $74dd: $e2
    jr nc, jr_070_74c3                            ; $74de: $30 $e3

    inc l                                         ; $74e0: $2c
    rst $38                                       ; $74e1: $ff
    ldh [$c1], a                                  ; $74e2: $e0 $c1
    db $fc                                        ; $74e4: $fc
    inc c                                         ; $74e5: $0c
    pop hl                                        ; $74e6: $e1
    ret                                           ; $74e7: $c9


    ld [c], a                                     ; $74e8: $e2
    ld c, e                                       ; $74e9: $4b
    dec de                                        ; $74ea: $1b
    dec hl                                        ; $74eb: $2b
    ld l, e                                       ; $74ec: $6b
    pop bc                                        ; $74ed: $c1
    pop hl                                        ; $74ee: $e1
    ld l, e                                       ; $74ef: $6b
    ld c, e                                       ; $74f0: $4b
    ei                                            ; $74f1: $fb
    ret nz                                        ; $74f2: $c0

    call z, $a2fd                                 ; $74f3: $cc $fd $a2
    db $e4                                        ; $74f6: $e4
    ld e, d                                       ; $74f7: $5a
    set 0, d                                      ; $74f8: $cb $c2
    ld l, e                                       ; $74fa: $6b
    adc c                                         ; $74fb: $89
    ldh [$0b], a                                  ; $74fc: $e0 $0b
    dec hl                                        ; $74fe: $2b
    adc d                                         ; $74ff: $8a
    ldh [rWX], a                                  ; $7500: $e0 $4b
    or $e0                                        ; $7502: $f6 $e0
    ret nc                                        ; $7504: $d0

    ld b, e                                       ; $7505: $43
    ldh [$7f], a                                  ; $7506: $e0 $7f
    pop hl                                        ; $7508: $e1
    call nz, $b0ff                                ; $7509: $c4 $ff $b0
    rst $00                                       ; $750c: $c7
    ld l, e                                       ; $750d: $6b

jr_070_750e:
    ld c, d                                       ; $750e: $4a
    ldh [$2b], a                                  ; $750f: $e0 $2b
    dec hl                                        ; $7511: $2b
    jr nz, jr_070_755c                            ; $7512: $20 $48

    ldh [$86], a                                  ; $7514: $e0 $86
    ld [c], a                                     ; $7516: $e2
    ld [bc], a                                    ; $7517: $02
    pop hl                                        ; $7518: $e1
    ret nz                                        ; $7519: $c0

    rst $38                                       ; $751a: $ff
    ret nz                                        ; $751b: $c0

    bit 5, e                                      ; $751c: $cb $6b
    adc e                                         ; $751e: $8b
    pop hl                                        ; $751f: $e1
    ld b, [hl]                                    ; $7520: $46
    ldh [rNR10], a                                ; $7521: $e0 $10
    inc bc                                        ; $7523: $03
    ld [c], a                                     ; $7524: $e2
    dec a                                         ; $7525: $3d
    jp nz, $ffca                                  ; $7526: $c2 $ca $ff

    add b                                         ; $7529: $80
    ret z                                         ; $752a: $c8

    ld l, e                                       ; $752b: $6b
    ret nz                                        ; $752c: $c0

    ldh [rOBP0], a                                ; $752d: $e0 $48
    pop hl                                        ; $752f: $e1
    ld a, e                                       ; $7530: $7b
    ld [c], a                                     ; $7531: $e2
    nop                                           ; $7532: $00
    add d                                         ; $7533: $82
    pop hl                                        ; $7534: $e1
    ret nz                                        ; $7535: $c0

    rst $38                                       ; $7536: $ff
    ld b, b                                       ; $7537: $40
    jp z, $e143                                   ; $7538: $ca $43 $e1

    ret nz                                        ; $753b: $c0

    ld [$c780], a                                 ; $753c: $ea $80 $c7
    rst $38                                       ; $753f: $ff
    rst $38                                       ; $7540: $ff
    nop                                           ; $7541: $00
    jp nz, $c000                                  ; $7542: $c2 $00 $c0

    db $e3                                        ; $7545: $e3
    add c                                         ; $7546: $81
    jp nz, $e37d                                  ; $7547: $c2 $7d $e3

    jp z, $83ff                                   ; $754a: $ca $ff $83

    call nz, $a3c0                                ; $754d: $c4 $c0 $a3
    adc b                                         ; $7550: $88
    and e                                         ; $7551: $a3
    rst $38                                       ; $7552: $ff
    jp $fd28                                      ; $7553: $c3 $28 $fd


    jp nz, $ffc1                                  ; $7556: $c2 $c1 $ff

    ld a, [hl-]                                   ; $7559: $3a
    ret z                                         ; $755a: $c8

    inc l                                         ; $755b: $2c

jr_070_755c:
    ld a, a                                       ; $755c: $7f
    and d                                         ; $755d: $a2
    dec hl                                        ; $755e: $2b
    ld a, h                                       ; $755f: $7c
    ret nz                                        ; $7560: $c0

    ret nz                                        ; $7561: $c0

    rst $38                                       ; $7562: $ff
    add b                                         ; $7563: $80
    ret nz                                        ; $7564: $c0

    ld a, [c]                                     ; $7565: $f2
    cp [hl]                                       ; $7566: $be
    ldh [$3b], a                                  ; $7567: $e0 $3b
    and d                                         ; $7569: $a2
    ret nz                                        ; $756a: $c0

    jp nz, $c23b                                  ; $756b: $c2 $3b $c2

    jp z, $c0ff                                   ; $756e: $ca $ff $c0

    ld [$406c], a                                 ; $7571: $ea $6c $40
    ret nz                                        ; $7574: $c0

    db $e3                                        ; $7575: $e3
    ld a, [hl]                                    ; $7576: $7e
    jp nz, $81bc                                  ; $7577: $c2 $bc $81

    ret nz                                        ; $757a: $c0

    add b                                         ; $757b: $80
    rst $38                                       ; $757c: $ff
    rst $38                                       ; $757d: $ff
    add b                                         ; $757e: $80
    rst $28                                       ; $757f: $ef
    dec bc                                        ; $7580: $0b
    cp b                                          ; $7581: $b8
    and b                                         ; $7582: $a0
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    rst $18                                       ; $7585: $df
    ld [hl], $8d                                  ; $7586: $36 $8d
    add hl, de                                    ; $7588: $19
    add e                                         ; $7589: $83
    jr jr_070_750e                                ; $758a: $18 $82

    inc c                                         ; $758c: $0c
    add l                                         ; $758d: $85
    adc l                                         ; $758e: $8d
    sbc l                                         ; $758f: $9d
    ret nz                                        ; $7590: $c0

    db $eb                                        ; $7591: $eb
    push de                                       ; $7592: $d5
    ld a, a                                       ; $7593: $7f
    nop                                           ; $7594: $00
    ld a, a                                       ; $7595: $7f
    db $fd                                        ; $7596: $fd
    push de                                       ; $7597: $d5
    ld a, a                                       ; $7598: $7f
    ret nz                                        ; $7599: $c0

    rst $38                                       ; $759a: $ff
    add l                                         ; $759b: $85
    rst $38                                       ; $759c: $ff
    cp c                                          ; $759d: $b9
    rst $18                                       ; $759e: $df
    jp c, $ffff                                   ; $759f: $da $ff $ff

    rst $38                                       ; $75a2: $ff
    rst $38                                       ; $75a3: $ff
    rst $38                                       ; $75a4: $ff
    nop                                           ; $75a5: $00
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
    nop                                           ; $75b6: $00
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
    nop                                           ; $75c7: $00
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
    nop                                           ; $75d8: $00
    rst $18                                       ; $75d9: $df
    ld h, l                                       ; $75da: $65
    pop hl                                        ; $75db: $e1
    ld h, [hl]                                    ; $75dc: $66
    reti                                          ; $75dd: $d9


    ld h, c                                       ; $75de: $61
    ld d, e                                       ; $75df: $53
    sbc a                                         ; $75e0: $9f
    ld e, h                                       ; $75e1: $5c
    ld l, e                                       ; $75e2: $6b
    inc de                                        ; $75e3: $13
    ld l, b                                       ; $75e4: $68
    pop de                                        ; $75e5: $d1
    rst $38                                       ; $75e6: $ff
    pop bc                                        ; $75e7: $c1
    pop af                                        ; $75e8: $f1
    nop                                           ; $75e9: $00
    ret                                           ; $75ea: $c9


    ld [c], a                                     ; $75eb: $e2
    ld e, e                                       ; $75ec: $5b
    ld h, l                                       ; $75ed: $65
    db $d3                                        ; $75ee: $d3
    ld a, a                                       ; $75ef: $7f
    sbc a                                         ; $75f0: $9f
    ld c, [hl]                                    ; $75f1: $4e
    ccf                                           ; $75f2: $3f
    jp hl                                         ; $75f3: $e9


    ret nz                                        ; $75f4: $c0

    rst $38                                       ; $75f5: $ff
    sbc a                                         ; $75f6: $9f
    ld c, [hl]                                    ; $75f7: $4e
    sbc c                                         ; $75f8: $99
    ld b, d                                       ; $75f9: $42
    nop                                           ; $75fa: $00
    ld b, c                                       ; $75fb: $41
    rst $38                                       ; $75fc: $ff
    ldh [rHDMA4], a                               ; $75fd: $e0 $54
    db $fd                                        ; $75ff: $fd
    ld [c], a                                     ; $7600: $e2
    dec d                                         ; $7601: $15
    ld b, h                                       ; $7602: $44
    rst $08                                       ; $7603: $cf
    rst $38                                       ; $7604: $ff
    sbc l                                         ; $7605: $9d
    ld a, [bc]                                    ; $7606: $0a
    adc l                                         ; $7607: $8d
    db $e4                                        ; $7608: $e4
    ret                                           ; $7609: $c9


    db $e4                                        ; $760a: $e4
    nop                                           ; $760b: $00
    ld a, a                                       ; $760c: $7f
    rst $38                                       ; $760d: $ff
    add [hl]                                      ; $760e: $86
    rst $08                                       ; $760f: $cf

Jump_070_7610:
    ld c, l                                       ; $7610: $4d
    push bc                                       ; $7611: $c5
    ld b, [hl]                                    ; $7612: $46
    jp $ff7f                                      ; $7613: $c3 $7f $ff


    add b                                         ; $7616: $80
    add sp, -$12                                  ; $7617: $e8 $ee
    inc h                                         ; $7619: $24
    inc hl                                        ; $761a: $23
    ld b, a                                       ; $761b: $47
    nop                                           ; $761c: $00
    add b                                         ; $761d: $80
    rst $38                                       ; $761e: $ff
    ld b, b                                       ; $761f: $40
    pop af                                        ; $7620: $f1
    ld h, b                                       ; $7621: $60
    ccf                                           ; $7622: $3f
    ld b, b                                       ; $7623: $40
    ei                                            ; $7624: $fb
    ld h, b                                       ; $7625: $60
    ccf                                           ; $7626: $3f
    and h                                         ; $7627: $a4
    rla                                           ; $7628: $17
    ld h, b                                       ; $7629: $60
    ccf                                           ; $762a: $3f
    rst $38                                       ; $762b: $ff
    rst $38                                       ; $762c: $ff
    nop                                           ; $762d: $00
    ld h, b                                       ; $762e: $60
    ccf                                           ; $762f: $3f
    rst $38                                       ; $7630: $ff
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rst $38                                       ; $7633: $ff
    sub [hl]                                      ; $7634: $96
    rst $38                                       ; $7635: $ff
    reti                                          ; $7636: $d9


    cp b                                          ; $7637: $b8
    rst $38                                       ; $7638: $ff
    rst $38                                       ; $7639: $ff
    rst $38                                       ; $763a: $ff
    rst $38                                       ; $763b: $ff
    rst $38                                       ; $763c: $ff
    rst $38                                       ; $763d: $ff
    nop                                           ; $763e: $00
    rst $38                                       ; $763f: $ff
    rst $38                                       ; $7640: $ff
    scf                                           ; $7641: $37
    db $eb                                        ; $7642: $eb
    call c, $ffff                                 ; $7643: $dc $ff $ff
    rst $38                                       ; $7646: $ff
    rst $38                                       ; $7647: $ff
    rst $38                                       ; $7648: $ff
    rst $38                                       ; $7649: $ff
    rst $38                                       ; $764a: $ff
    rst $38                                       ; $764b: $ff
    rst $38                                       ; $764c: $ff
    rst $38                                       ; $764d: $ff
    rst $38                                       ; $764e: $ff
    nop                                           ; $764f: $00
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
    nop                                           ; $7660: $00
    rst $38                                       ; $7661: $ff
    rst $38                                       ; $7662: $ff
    rst $38                                       ; $7663: $ff
    rst $38                                       ; $7664: $ff
    rst $38                                       ; $7665: $ff
    rst $38                                       ; $7666: $ff
    rst $38                                       ; $7667: $ff
    rst $38                                       ; $7668: $ff
    nop                                           ; $7669: $00
    cp a                                          ; $766a: $bf
    rst $38                                       ; $766b: $ff
    rst $38                                       ; $766c: $ff
    rst $38                                       ; $766d: $ff
    rst $38                                       ; $766e: $ff
    rst $38                                       ; $766f: $ff
    rst $38                                       ; $7670: $ff
    nop                                           ; $7671: $00
    rst $38                                       ; $7672: $ff
    rst $38                                       ; $7673: $ff
    rst $38                                       ; $7674: $ff
    di                                            ; $7675: $f3
    nop                                           ; $7676: $00
    nop                                           ; $7677: $00
    nop                                           ; $7678: $00
    ld a, a                                       ; $7679: $7f
    ld e, e                                       ; $767a: $5b
    ld e, e                                       ; $767b: $5b
    ld h, c                                       ; $767c: $61
    ld sp, $102b                                  ; $767d: $31 $2b $10
    jr nz, @+$01                                  ; $7680: $20 $ff

    ldh [rIE], a                                  ; $7682: $e0 $ff
    ld a, [bc]                                    ; $7684: $0a
    dec bc                                        ; $7685: $0b
    ld sp, $5b61                                  ; $7686: $31 $61 $5b
    ld e, e                                       ; $7689: $5b
    ld e, e                                       ; $768a: $5b
    ld e, d                                       ; $768b: $5a
    and a                                         ; $768c: $a7
    ld e, e                                       ; $768d: $5b
    ld e, e                                       ; $768e: $5b
    nop                                           ; $768f: $00
    rst $38                                       ; $7690: $ff
    rst $38                                       ; $7691: $ff
    rst $20                                       ; $7692: $e7
    and $5a                                       ; $7693: $e6 $5a
    ret nz                                        ; $7695: $c0

    ldh [$29], a                                  ; $7696: $e0 $29
    rst $20                                       ; $7698: $e7
    daa                                           ; $7699: $27
    dec b                                         ; $769a: $05
    dec b                                         ; $769b: $05
    jp nz, $ffe0                                  ; $769c: $c2 $e0 $ff

    ldh [$62], a                                  ; $769f: $e0 $62
    ld h, d                                       ; $76a1: $62
    ld e, l                                       ; $76a2: $5d
    add a                                         ; $76a3: $87
    ld e, h                                       ; $76a4: $5c
    ld e, e                                       ; $76a5: $5b
    ld e, d                                       ; $76a6: $5a
    jp z, $e8ff                                   ; $76a7: $ca $ff $e8

    rst $20                                       ; $76aa: $e7
    add b                                         ; $76ab: $80
    pop hl                                        ; $76ac: $e1
    rst $38                                       ; $76ad: $ff
    db $eb                                        ; $76ae: $eb
    ld e, a                                       ; $76af: $5f
    db $fc                                        ; $76b0: $fc
    add b                                         ; $76b1: $80
    rst $38                                       ; $76b2: $ff
    ret nz                                        ; $76b3: $c0

    db $f4                                        ; $76b4: $f4
    ld b, a                                       ; $76b5: $47
    ld b, [hl]                                    ; $76b6: $46
    ld d, h                                       ; $76b7: $54
    ld b, [hl]                                    ; $76b8: $46
    ld c, l                                       ; $76b9: $4d
    ld sp, $5ef9                                  ; $76ba: $31 $f9 $5e
    ret nz                                        ; $76bd: $c0

    rst $38                                       ; $76be: $ff
    add b                                         ; $76bf: $80
    jp hl                                         ; $76c0: $e9


    ld h, b                                       ; $76c1: $60

jr_070_76c2:
    ld sp, $3a4d                                  ; $76c2: $31 $4d $3a
    ld d, l                                       ; $76c5: $55
    rst $30                                       ; $76c6: $f7
    ld d, h                                       ; $76c7: $54
    ld b, [hl]                                    ; $76c8: $46
    ld b, a                                       ; $76c9: $47
    jp nz, Jump_000_36e0                          ; $76ca: $c2 $e0 $36

    jr nc, jr_070_76ff                            ; $76cd: $30 $30

    jr nc, jr_070_76c2                            ; $76cf: $30 $f1

    add hl, sp                                    ; $76d1: $39
    ei                                            ; $76d2: $fb
    ret nz                                        ; $76d3: $c0

    jp z, $e8ff                                   ; $76d4: $ca $ff $e8

    rst $20                                       ; $76d7: $e7
    ld e, a                                       ; $76d8: $5f
    ld sp, $3931                                  ; $76d9: $31 $31 $39
    cp $c9                                        ; $76dc: $fe $c9
    ldh [$30], a                                  ; $76de: $e0 $30
    ld [hl], $54                                  ; $76e0: $36 $54
    ld [hl], $6d                                  ; $76e2: $36 $6d
    ld l, h                                       ; $76e4: $6c
    ld l, h                                       ; $76e5: $6c
    ccf                                           ; $76e6: $3f
    ld l, l                                       ; $76e7: $6d
    jr nc, @+$4a                                  ; $76e8: $30 $48

    ld c, c                                       ; $76ea: $49
    ld sp, $ca5f                                  ; $76eb: $31 $5f $ca
    rst $38                                       ; $76ee: $ff
    add sp, -$19                                  ; $76ef: $e8 $e7
    rst $38                                       ; $76f1: $ff
    ld e, [hl]                                    ; $76f2: $5e
    ld sp, $4849                                  ; $76f3: $31 $49 $48
    jr nc, jr_070_7728                            ; $76f6: $30 $30

    ld l, d                                       ; $76f8: $6a
    ld l, b                                       ; $76f9: $68
    ei                                            ; $76fa: $fb
    ld l, b                                       ; $76fb: $68
    ld l, d                                       ; $76fc: $6a
    ei                                            ; $76fd: $fb
    ld [c], a                                     ; $76fe: $e2

jr_070_76ff:
    ld l, l                                       ; $76ff: $6d
    jr nc, @+$52                                  ; $7700: $30 $50

    ld sp, $a85e                                  ; $7702: $31 $5e $a8
    jp z, $e8ff                                   ; $7705: $ca $ff $e8

    rst $20                                       ; $7708: $e7
    add c                                         ; $7709: $81
    ld [c], a                                     ; $770a: $e2
    ld l, d                                       ; $770b: $6a
    add l                                         ; $770c: $85
    pop hl                                        ; $770d: $e1
    ld l, d                                       ; $770e: $6a
    ld b, d                                       ; $770f: $42
    ldh [rOCPS], a                                ; $7710: $e0 $6a
    rra                                           ; $7712: $1f
    ld l, d                                       ; $7713: $6a
    ld l, l                                       ; $7714: $6d
    ld d, c                                       ; $7715: $51
    ld sp, $ca31                                  ; $7716: $31 $31 $ca
    rst $38                                       ; $7719: $ff
    ret nz                                        ; $771a: $c0

    add sp, -$7f                                  ; $771b: $e8 $81
    pop hl                                        ; $771d: $e1
    cp a                                          ; $771e: $bf
    ld l, c                                       ; $771f: $69
    ld l, e                                       ; $7720: $6b
    jr nc, jr_070_7753                            ; $7721: $30 $30

    ld l, e                                       ; $7723: $6b
    ld l, c                                       ; $7724: $69
    add hl, sp                                    ; $7725: $39
    pop hl                                        ; $7726: $e1
    ld l, c                                       ; $7727: $69

jr_070_7728:
    inc bc                                        ; $7728: $03
    ld l, e                                       ; $7729: $6b
    add hl, sp                                    ; $772a: $39
    ret nz                                        ; $772b: $c0

    rst $38                                       ; $772c: $ff
    ret nz                                        ; $772d: $c0

    ld a, [$c0ff]                                 ; $772e: $fa $ff $c0
    jp z, $40ff                                   ; $7731: $ca $ff $40

    db $ec                                        ; $7734: $ec
    add b                                         ; $7735: $80
    pop hl                                        ; $7736: $e1
    inc sp                                        ; $7737: $33
    ld l, l                                       ; $7738: $6d
    ld l, d                                       ; $7739: $6a
    ccf                                           ; $773a: $3f
    ldh [rLCDC], a                                ; $773b: $e0 $40
    ldh [$30], a                                  ; $773d: $e0 $30
    ld d, c                                       ; $773f: $51
    ret nz                                        ; $7740: $c0

    rst $38                                       ; $7741: $ff
    nop                                           ; $7742: $00
    ld [$377f], a                                 ; $7743: $ea $7f $37
    ld [hl], $36                                  ; $7746: $36 $36
    ld d, h                                       ; $7748: $54
    ld d, l                                       ; $7749: $55
    ld d, h                                       ; $774a: $54
    ld [hl], $bf                                  ; $774b: $36 $bf
    ldh [$f8], a                                  ; $774d: $e0 $f8
    ret nz                                        ; $774f: $c0

    jp nz, $ff80                                  ; $7750: $c2 $80 $ff

jr_070_7753:
    db $eb                                        ; $7753: $eb
    ld [$1112], a                                 ; $7754: $ea $12 $11
    ld sp, $4747                                  ; $7757: $31 $47 $47
    ccf                                           ; $775a: $3f
    ld sp, $5031                                  ; $775b: $31 $31 $50
    ld l, a                                       ; $775e: $6f
    ld l, [hl]                                    ; $775f: $6e
    ld b, d                                       ; $7760: $42
    ld b, b                                       ; $7761: $40
    jp nz, $a0ff                                  ; $7762: $c2 $ff $a0

    db $ec                                        ; $7765: $ec
    add b                                         ; $7766: $80
    rst $18                                       ; $7767: $df
    jp hl                                         ; $7768: $e9


    add sp, $22                                   ; $7769: $e8 $22
    ld hl, $e0be                                  ; $776b: $21 $be $e0
    ld sp, $5131                                  ; $776e: $31 $31 $51
    rst $00                                       ; $7771: $c7
    add b                                         ; $7772: $80
    add b                                         ; $7773: $80
    add e                                         ; $7774: $83
    ld sp, hl                                     ; $7775: $f9
    and c                                         ; $7776: $a1
    nop                                           ; $7777: $00
    rst $18                                       ; $7778: $df
    db $ed                                        ; $7779: $ed
    db $ec                                        ; $777a: $ec
    jr nz, jr_070_778d                            ; $777b: $20 $10

    ei                                            ; $777d: $fb
    ld [hl+], a                                   ; $777e: $22
    dec hl                                        ; $777f: $2b
    add $80                                       ; $7780: $c6 $80
    ld d, b                                       ; $7782: $50
    add b                                         ; $7783: $80
    add b                                         ; $7784: $80
    ld a, b                                       ; $7785: $78
    ld a, [hl]                                    ; $7786: $7e
    ld [hl-], a                                   ; $7787: $32
    add b                                         ; $7788: $80
    and e                                         ; $7789: $a3
    ld e, [hl]                                    ; $778a: $5e
    ret nz                                        ; $778b: $c0

    sbc a                                         ; $778c: $9f

jr_070_778d:
    ret nz                                        ; $778d: $c0

    jp hl                                         ; $778e: $e9


    jr nz, jr_070_77b1                            ; $778f: $20 $20

    ret nz                                        ; $7791: $c0

    pop hl                                        ; $7792: $e1
    add b                                         ; $7793: $80
    ldh [rIF], a                                  ; $7794: $e0 $0f
    add b                                         ; $7796: $80
    add b                                         ; $7797: $80
    ld l, a                                       ; $7798: $6f
    ld l, [hl]                                    ; $7799: $6e
    nop                                           ; $779a: $00
    and c                                         ; $779b: $a1
    ret nz                                        ; $779c: $c0

    sbc a                                         ; $779d: $9f
    rst $38                                       ; $779e: $ff
    rst $38                                       ; $779f: $ff
    rst $38                                       ; $77a0: $ff
    rst $38                                       ; $77a1: $ff
    nop                                           ; $77a2: $00
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

jr_070_77b1:
    rst $38                                       ; $77b1: $ff
    rst $38                                       ; $77b2: $ff
    nop                                           ; $77b3: $00
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
    nop                                           ; $77c4: $00
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
    nop                                           ; $77d5: $00
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
    nop                                           ; $77e6: $00
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
    nop                                           ; $77f7: $00
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
    nop                                           ; $7808: $00
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
    nop                                           ; $7819: $00
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
    nop                                           ; $782a: $00
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
    nop                                           ; $783b: $00
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
    nop                                           ; $784c: $00
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
    nop                                           ; $785d: $00
    rst $38                                       ; $785e: $ff
    push af                                       ; $785f: $f5
    nop                                           ; $7860: $00
    nop                                           ; $7861: $00
    nop                                           ; $7862: $00
    and l                                         ; $7863: $a5
    nop                                           ; $7864: $00
    rst $38                                       ; $7865: $ff
    push hl                                       ; $7866: $e5
    ld [hl-], a                                   ; $7867: $32
    or $e6                                        ; $7868: $f6 $e6
    rst $30                                       ; $786a: $f7
    rst $20                                       ; $786b: $e7
    dec [hl]                                      ; $786c: $35
    db $ec                                        ; $786d: $ec
    xor $37                                       ; $786e: $ee $37
    db $ec                                        ; $7870: $ec
    jp c, $c7f0                                   ; $7871: $da $f0 $c7

    add sp, $33                                   ; $7874: $e8 $33
    ld sp, $f2e0                                  ; $7876: $31 $e0 $f2
    ld [hl], $30                                  ; $7879: $36 $30
    scf                                           ; $787b: $37
    cp a                                          ; $787c: $bf
    ld h, $20                                     ; $787d: $26 $20
    daa                                           ; $787f: $27
    db $10                                        ; $7880: $10
    ld d, $17                                     ; $7881: $16 $17
    jp nz, Jump_000_34f6                          ; $7883: $c2 $f6 $34

    rst $38                                       ; $7886: $ff
    ld [hl], $32                                  ; $7887: $36 $32
    jr nc, jr_070_78c2                            ; $7889: $30 $37

    ld sp, $3133                                  ; $788b: $31 $33 $31
    inc sp                                        ; $788e: $33
    nop                                           ; $788f: $00
    and b                                         ; $7890: $a0
    ei                                            ; $7891: $fb
    rst $38                                       ; $7892: $ff
    rst $28                                       ; $7893: $ef
    nop                                           ; $7894: $00
    nop                                           ; $7895: $00
    nop                                           ; $7896: $00
    sbc a                                         ; $7897: $9f
    ld a, b                                       ; $7898: $78
    rst $08                                       ; $7899: $cf
    ld a, b                                       ; $789a: $78
    ld d, h                                       ; $789b: $54
    ld a, e                                       ; $789c: $7b
    ld sp, $ea7d                                  ; $789d: $31 $7d $ea
    inc bc                                        ; $78a0: $03
    push bc                                       ; $78a1: $c5
    ld b, $e2                                     ; $78a2: $06 $e2
    ld bc, $00a0                                  ; $78a4: $01 $a0 $00
    ld [$f003], a                                 ; $78a7: $ea $03 $f0
    inc bc                                        ; $78aa: $03
    push bc                                       ; $78ab: $c5
    ld b, $e2                                     ; $78ac: $06 $e2
    ld bc, $023f                                  ; $78ae: $01 $3f $02
    xor e                                         ; $78b1: $ab
    nop                                           ; $78b2: $00
    inc sp                                        ; $78b3: $33
    ld bc, $06c5                                  ; $78b4: $01 $c5 $06
    ld [$0825], sp                                ; $78b7: $08 $25 $08
    dec h                                         ; $78ba: $25
    ld [$0825], sp                                ; $78bb: $08 $25 $08
    dec h                                         ; $78be: $25
    ld [$0825], sp                                ; $78bf: $08 $25 $08

jr_070_78c2:
    dec h                                         ; $78c2: $25
    ld [$0825], sp                                ; $78c3: $08 $25 $08
    dec h                                         ; $78c6: $25
    ld [$0825], sp                                ; $78c7: $08 $25 $08
    dec h                                         ; $78ca: $25
    ld [$0825], sp                                ; $78cb: $08 $25 $08
    dec h                                         ; $78ce: $25
    db $dd                                        ; $78cf: $dd
    dec bc                                        ; $78d0: $0b
    rst $38                                       ; $78d1: $ff
    db $e4                                        ; $78d2: $e4
    inc c                                         ; $78d3: $0c
    inc c                                         ; $78d4: $0c
    ld c, h                                       ; $78d5: $4c
    rst $38                                       ; $78d6: $ff
    pop hl                                        ; $78d7: $e1
    inc l                                         ; $78d8: $2c
    inc c                                         ; $78d9: $0c
    add $ff                                       ; $78da: $c6 $ff
    ld [c], a                                     ; $78dc: $e2
    ld c, h                                       ; $78dd: $4c
    ld c, h                                       ; $78de: $4c
    db $fd                                        ; $78df: $fd
    db $e3                                        ; $78e0: $e3
    ld sp, hl                                     ; $78e1: $f9
    ldh [$f2], a                                  ; $78e2: $e0 $f2
    db $e4                                        ; $78e4: $e4
    inc l                                         ; $78e5: $2c
    inc l                                         ; $78e6: $2c
    ldh a, [$ed]                                  ; $78e7: $f0 $ed
    db $e3                                        ; $78e9: $e3
    ld hl, sp-$1f                                 ; $78ea: $f8 $e1
    rst $38                                       ; $78ec: $ff
    jp hl                                         ; $78ed: $e9


    ret nz                                        ; $78ee: $c0

    push hl                                       ; $78ef: $e5
    inc l                                         ; $78f0: $2c
    ld l, h                                       ; $78f1: $6c
    ld l, h                                       ; $78f2: $6c
    ld l, h                                       ; $78f3: $6c
    jr nz, @-$3f                                  ; $78f4: $20 $bf

    add sp, -$4e                                  ; $78f6: $e8 $b2
    db $e3                                        ; $78f8: $e3
    or a                                          ; $78f9: $b7
    ld [c], a                                     ; $78fa: $e2
    cp l                                          ; $78fb: $bd
    pop hl                                        ; $78fc: $e1
    and a                                         ; $78fd: $a7
    ldh [$2c], a                                  ; $78fe: $e0 $2c
    pop af                                        ; $7900: $f1
    db $e3                                        ; $7901: $e3
    ret nz                                        ; $7902: $c0

    rst $28                                       ; $7903: $ef
    rrca                                          ; $7904: $0f
    ld l, e                                       ; $7905: $6b
    ld l, e                                       ; $7906: $6b
    ld c, e                                       ; $7907: $4b
    ld c, e                                       ; $7908: $4b
    ld a, d                                       ; $7909: $7a
    db $e3                                        ; $790a: $e3
    ld a, [hl]                                    ; $790b: $7e
    ld [c], a                                     ; $790c: $e2
    adc e                                         ; $790d: $8b
    db $e3                                        ; $790e: $e3
    add d                                         ; $790f: $82
    db $e4                                        ; $7910: $e4
    jr nz, jr_070_797e                            ; $7911: $20 $6b

    ld [c], a                                     ; $7913: $e2
    ld [hl], b                                    ; $7914: $70
    db $e3                                        ; $7915: $e3
    halt                                          ; $7916: $76
    push hl                                       ; $7917: $e5
    ld l, [hl]                                    ; $7918: $6e
    ld [c], a                                     ; $7919: $e2
    ld a, l                                       ; $791a: $7d
    rst $20                                       ; $791b: $e7
    ld l, e                                       ; $791c: $6b
    pop bc                                        ; $791d: $c1
    ldh [$bf], a                                  ; $791e: $e0 $bf
    ldh [rLCDC], a                                ; $7920: $e0 $40
    cp [hl]                                       ; $7922: $be
    ld [$e5dc], a                                 ; $7923: $ea $dc $e5
    ld d, [hl]                                    ; $7926: $56
    and $38                                       ; $7927: $e6 $38
    db $e4                                        ; $7929: $e4
    ld hl, sp-$1a                                 ; $792a: $f8 $e6
    ret nz                                        ; $792c: $c0

    jp hl                                         ; $792d: $e9


jr_070_792e:
    dec hl                                        ; $792e: $2b
    cp $c2                                        ; $792f: $fe $c2
    nop                                           ; $7931: $00
    cp [hl]                                       ; $7932: $be
    ldh [$bb], a                                  ; $7933: $e0 $bb
    db $e3                                        ; $7935: $e3
    adc a                                         ; $7936: $8f
    db $e4                                        ; $7937: $e4
    pop bc                                        ; $7938: $c1
    push hl                                       ; $7939: $e5
    ret                                           ; $793a: $c9


    db $e3                                        ; $793b: $e3
    jr c, @-$1b                                   ; $793c: $38 $e3

    ld hl, sp-$1b                                 ; $793e: $f8 $e5
    call c, $12c4                                 ; $7940: $dc $c4 $12
    push de                                       ; $7943: $d5
    jp $c00b                                      ; $7944: $c3 $0b $c0


    db $e3                                        ; $7947: $e3
    cp c                                          ; $7948: $b9
    pop bc                                        ; $7949: $c1
    dec hl                                        ; $794a: $2b
    jr c, jr_070_792e                             ; $794b: $38 $e1

    add hl, de                                    ; $794d: $19
    ldh [$c7], a                                  ; $794e: $e0 $c7
    call nz, $f9b0                                ; $7950: $c4 $b0 $f9
    push hl                                       ; $7953: $e5
    ccf                                           ; $7954: $3f
    xor $c0                                       ; $7955: $ee $c0
    set 0, b                                      ; $7957: $cb $c0
    and $2b                                       ; $7959: $e6 $2b
    dec hl                                        ; $795b: $2b
    ld a, d                                       ; $795c: $7a
    ldh [$0b], a                                  ; $795d: $e0 $0b
    ld hl, $8b4b                                  ; $795f: $21 $4b $8b
    call nz, $c681                                ; $7962: $c4 $81 $c6
    ld [hl], l                                    ; $7965: $75
    call nz, $f441                                ; $7966: $c4 $41 $f4
    inc c                                         ; $7969: $0c
    jp z, $81e0                                   ; $796a: $ca $e0 $81

    push hl                                       ; $796d: $e5
    inc b                                         ; $796e: $04
    add hl, sp                                    ; $796f: $39
    ld [c], a                                     ; $7970: $e2
    ld a, a                                       ; $7971: $7f
    ldh [$6c], a                                  ; $7972: $e0 $6c
    adc [hl]                                      ; $7974: $8e
    jp $c5b3                                      ; $7975: $c3 $b3 $c5


    inc sp                                        ; $7978: $33
    call nz, $e7f8                                ; $7979: $c4 $f8 $e7
    ret nz                                        ; $797c: $c0

    rst $30                                       ; $797d: $f7

jr_070_797e:
    ld b, b                                       ; $797e: $40
    ld a, b                                       ; $797f: $78
    call nz, $c7ce                                ; $7980: $c4 $ce $c7
    inc d                                         ; $7983: $14
    call nz, $d8c0                                ; $7984: $c4 $c0 $d8
    ld c, c                                       ; $7987: $49
    pop hl                                        ; $7988: $e1
    cp [hl]                                       ; $7989: $be
    jp $c16b                                      ; $798a: $c3 $6b $c1


    push hl                                       ; $798d: $e5
    ld b, b                                       ; $798e: $40
    or h                                          ; $798f: $b4
    and c                                         ; $7990: $a1
    ld c, l                                       ; $7991: $4d
    ret z                                         ; $7992: $c8

    ret nz                                        ; $7993: $c0

    adc $c0                                       ; $7994: $ce $c0
    xor h                                         ; $7996: $ac
    ld a, $e6                                     ; $7997: $3e $e6
    pop bc                                        ; $7999: $c1
    push hl                                       ; $799a: $e5
    dec bc                                        ; $799b: $0b
    adc e                                         ; $799c: $8b
    and h                                         ; $799d: $a4
    nop                                           ; $799e: $00
    ret nz                                        ; $799f: $c0

    and l                                         ; $79a0: $a5
    ld b, b                                       ; $79a1: $40
    pop de                                        ; $79a2: $d1
    sbc c                                         ; $79a3: $99
    and l                                         ; $79a4: $a5
    add b                                         ; $79a5: $80
    and c                                         ; $79a6: $a1
    db $fd                                        ; $79a7: $fd
    rst $00                                       ; $79a8: $c7
    inc [hl]                                      ; $79a9: $34
    and [hl]                                      ; $79aa: $a6
    ld d, b                                       ; $79ab: $50
    and b                                         ; $79ac: $a0
    push bc                                       ; $79ad: $c5
    and e                                         ; $79ae: $a3
    jr jr_070_7a27                                ; $79af: $18 $76

    call nz, $eafc                                ; $79b1: $c4 $fc $ea
    ld b, b                                       ; $79b4: $40
    xor d                                         ; $79b5: $aa
    inc l                                         ; $79b6: $2c
    inc l                                         ; $79b7: $2c
    add $ec                                       ; $79b8: $c6 $ec
    ld d, b                                       ; $79ba: $50
    and c                                         ; $79bb: $a1
    ld bc, $02b4                                  ; $79bc: $01 $b4 $02
    ld b, b                                       ; $79bf: $40

Jump_070_79c0:
    pop de                                        ; $79c0: $d1
    inc l                                         ; $79c1: $2c

Call_070_79c2:
    rst $38                                       ; $79c2: $ff
    ldh [$87], a                                  ; $79c3: $e0 $87
    jp $e4c2                                      ; $79c5: $c3 $c2 $e4


    ld bc, $47b6                                  ; $79c8: $01 $b6 $47
    and [hl]                                      ; $79cb: $a6
    sbc h                                         ; $79cc: $9c
    add b                                         ; $79cd: $80
    ld [$e1ca], sp                                ; $79ce: $08 $ca $e1
    ret nz                                        ; $79d1: $c0

    rst $20                                       ; $79d2: $e7
    ld a, l                                       ; $79d3: $7d
    ld [c], a                                     ; $79d4: $e2
    dec hl                                        ; $79d5: $2b
    pop bc                                        ; $79d6: $c1
    rst $20                                       ; $79d7: $e7
    ld bc, $40b4                                  ; $79d8: $01 $b4 $40
    ret z                                         ; $79db: $c8

    ret nz                                        ; $79dc: $c0

    rst $20                                       ; $79dd: $e7
    ld bc, $114c                                  ; $79de: $01 $4c $11
    ret nz                                        ; $79e1: $c0

    ld bc, $7cc5                                  ; $79e2: $01 $c5 $7c
    add c                                         ; $79e5: $81
    ld l, [hl]                                    ; $79e6: $6e
    add c                                         ; $79e7: $81
    ld bc, $f8b5                                  ; $79e8: $01 $b5 $f8
    add [hl]                                      ; $79eb: $86
    add c                                         ; $79ec: $81
    rst $20                                       ; $79ed: $e7
    nop                                           ; $79ee: $00
    ld l, a                                       ; $79ef: $6f
    and [hl]                                      ; $79f0: $a6
    ld d, l                                       ; $79f1: $55
    and l                                         ; $79f2: $a5
    nop                                           ; $79f3: $00
    and a                                         ; $79f4: $a7
    ld bc, $40ae                                  ; $79f5: $01 $ae $40
    rst $00                                       ; $79f8: $c7
    ret nz                                        ; $79f9: $c0

    add sp, -$2b                                  ; $79fa: $e8 $d5
    ld [hl], h                                    ; $79fc: $74
    bit 4, [hl]                                   ; $79fd: $cb $66
    nop                                           ; $79ff: $00
    ld b, b                                       ; $7a00: $40
    add a                                         ; $7a01: $87
    ccf                                           ; $7a02: $3f
    or h                                          ; $7a03: $b4
    call nc, $cbd3                                ; $7a04: $d4 $d3 $cb
    ld h, a                                       ; $7a07: $67
    ld bc, $78aa                                  ; $7a08: $01 $aa $78
    add e                                         ; $7a0b: $83
    call z, Call_070_79c2                         ; $7a0c: $cc $c2 $79
    add h                                         ; $7a0f: $84
    nop                                           ; $7a10: $00
    push de                                       ; $7a11: $d5
    ld [hl], e                                    ; $7a12: $73
    bit 5, c                                      ; $7a13: $cb $69
    ld bc, $c0a8                                  ; $7a15: $01 $a8 $c0
    ldh a, [$d4]                                  ; $7a18: $f0 $d4
    sub $f6                                       ; $7a1a: $d6 $f6
    xor $45                                       ; $7a1c: $ee $45
    adc c                                         ; $7a1e: $89
    rst $38                                       ; $7a1f: $ff
    ret                                           ; $7a20: $c9


    nop                                           ; $7a21: $00
    call nc, $fdd3                                ; $7a22: $d4 $d3 $fd
    adc b                                         ; $7a25: $88
    db $ec                                        ; $7a26: $ec

jr_070_7a27:
    add sp, -$50                                  ; $7a27: $e8 $b0
    ld b, e                                       ; $7a29: $43
    ld b, h                                       ; $7a2a: $44
    ldh [rLCDC], a                                ; $7a2b: $e0 $40
    ret z                                         ; $7a2d: $c8

    push de                                       ; $7a2e: $d5
    ld [hl], d                                    ; $7a2f: $72
    jp z, Jump_000_00c9                           ; $7a30: $ca $c9 $00

    ld b, c                                       ; $7a33: $41
    ld h, a                                       ; $7a34: $67
    nop                                           ; $7a35: $00
    push hl                                       ; $7a36: $e5
    add [hl]                                      ; $7a37: $86
    db $eb                                        ; $7a38: $eb
    push de                                       ; $7a39: $d5
    ld [hl], b                                    ; $7a3a: $70
    or $e8                                        ; $7a3b: $f6 $e8
    dec b                                         ; $7a3d: $05
    xor e                                         ; $7a3e: $ab
    inc hl                                        ; $7a3f: $23
    ld h, h                                       ; $7a40: $64
    ret nz                                        ; $7a41: $c0

    xor b                                         ; $7a42: $a8
    nop                                           ; $7a43: $00
    push de                                       ; $7a44: $d5
    ld [hl], d                                    ; $7a45: $72
    db $d3                                        ; $7a46: $d3
    ld l, b                                       ; $7a47: $68
    ld a, a                                       ; $7a48: $7f
    xor h                                         ; $7a49: $ac
    nop                                           ; $7a4a: $00
    rst $28                                       ; $7a4b: $ef
    push de                                       ; $7a4c: $d5
    ld [hl], e                                    ; $7a4d: $73
    cp l                                          ; $7a4e: $bd
    ld h, a                                       ; $7a4f: $67
    ld a, d                                       ; $7a50: $7a
    ld c, d                                       ; $7a51: $4a
    ld b, c                                       ; $7a52: $41
    adc l                                         ; $7a53: $8d
    nop                                           ; $7a54: $00
    push de                                       ; $7a55: $d5
    ld [hl], h                                    ; $7a56: $74
    or $e9                                        ; $7a57: $f6 $e9
    and e                                         ; $7a59: $a3
    pop af                                        ; $7a5a: $f1
    add e                                         ; $7a5b: $83
    rst $00                                       ; $7a5c: $c7
    push de                                       ; $7a5d: $d5
    ld [hl], l                                    ; $7a5e: $75
    add b                                         ; $7a5f: $80
    ld [$6c78], a                                 ; $7a60: $ea $78 $6c
    add c                                         ; $7a63: $81
    xor h                                         ; $7a64: $ac
    nop                                           ; $7a65: $00

Call_070_7a66:
    push de                                       ; $7a66: $d5
    ld [hl], b                                    ; $7a67: $70
    dec bc                                        ; $7a68: $0b
    ld a, [hl+]                                   ; $7a69: $2a
    and e                                         ; $7a6a: $a3
    pop af                                        ; $7a6b: $f1
    dec b                                         ; $7a6c: $05
    ret                                           ; $7a6d: $c9


    dec c                                         ; $7a6e: $0d
    ld b, d                                       ; $7a6f: $42
    sbc l                                         ; $7a70: $9d
    call Call_000_250b                            ; $7a71: $cd $0b $25
    and e                                         ; $7a74: $a3
    di                                            ; $7a75: $f3
    nop                                           ; $7a76: $00
    rst $10                                       ; $7a77: $d7
    ld l, c                                       ; $7a78: $69
    ld d, c                                       ; $7a79: $51
    and h                                         ; $7a7a: $a4
    ld h, d                                       ; $7a7b: $62
    ld l, d                                       ; $7a7c: $6a
    dec bc                                        ; $7a7d: $0b
    daa                                           ; $7a7e: $27
    and e                                         ; $7a7f: $a3
    ld a, [c]                                     ; $7a80: $f2
    add [hl]                                      ; $7a81: $86
    xor d                                         ; $7a82: $aa
    push de                                       ; $7a83: $d5
    inc d                                         ; $7a84: $14
    push af                                       ; $7a85: $f5
    and a                                         ; $7a86: $a7
    nop                                           ; $7a87: $00
    dec b                                         ; $7a88: $05
    ld [hl], c                                    ; $7a89: $71
    ld b, b                                       ; $7a8a: $40
    adc b                                         ; $7a8b: $88
    call nc, $ce75                                ; $7a8c: $d4 $75 $ce
    add a                                         ; $7a8f: $87
    inc hl                                        ; $7a90: $23
    adc a                                         ; $7a91: $8f
    ld bc, $d5ac                                  ; $7a92: $01 $ac $d5
    ld c, $75                                     ; $7a95: $0e $75
    adc d                                         ; $7a97: $8a
    nop                                           ; $7a98: $00
    inc hl                                        ; $7a99: $23
    adc a                                         ; $7a9a: $8f
    add c                                         ; $7a9b: $81
    jp hl                                         ; $7a9c: $e9


    nop                                           ; $7a9d: $00
    or h                                          ; $7a9e: $b4
    ld b, b                                       ; $7a9f: $40
    xor c                                         ; $7aa0: $a9
    inc hl                                        ; $7aa1: $23
    rst $28                                       ; $7aa2: $ef
    ld b, c                                       ; $7aa3: $41
    ld [$11d5], a                                 ; $7aa4: $ea $d5 $11
    inc de                                        ; $7aa7: $13
    ld a, [hl+]                                   ; $7aa8: $2a
    nop                                           ; $7aa9: $00
    inc hl                                        ; $7aaa: $23
    sub b                                         ; $7aab: $90
    ret nz                                        ; $7aac: $c0

    adc e                                         ; $7aad: $8b
    nop                                           ; $7aae: $00
    or b                                          ; $7aaf: $b0
    or $cb                                        ; $7ab0: $f6 $cb
    add b                                         ; $7ab2: $80
    adc h                                         ; $7ab3: $8c
    ld [bc], a                                    ; $7ab4: $02
    adc d                                         ; $7ab5: $8a
    push de                                       ; $7ab6: $d5
    ld de, $290b                                  ; $7ab7: $11 $0b $29
    nop                                           ; $7aba: $00
    inc hl                                        ; $7abb: $23
    adc [hl]                                      ; $7abc: $8e
    jp nz, $d56b                                  ; $7abd: $c2 $6b $d5

    inc de                                        ; $7ac0: $13
    adc d                                         ; $7ac1: $8a
    ld l, c                                       ; $7ac2: $69
    inc hl                                        ; $7ac3: $23
    rst $28                                       ; $7ac4: $ef
    add [hl]                                      ; $7ac5: $86
    ld l, l                                       ; $7ac6: $6d
    push de                                       ; $7ac7: $d5
    ld c, $0b                                     ; $7ac8: $0e $0b
    add hl, hl                                    ; $7aca: $29
    nop                                           ; $7acb: $00
    inc hl                                        ; $7acc: $23
    ld a, [c]                                     ; $7acd: $f2
    nop                                           ; $7ace: $00
    cp l                                          ; $7acf: $bd
    adc c                                         ; $7ad0: $89
    add hl, hl                                    ; $7ad1: $29
    inc hl                                        ; $7ad2: $23
    sub c                                         ; $7ad3: $91
    nop                                           ; $7ad4: $00
    cp l                                          ; $7ad5: $bd
    ld a, [bc]                                    ; $7ad6: $0a
    adc d                                         ; $7ad7: $8a
    add b                                         ; $7ad8: $80
    sbc c                                         ; $7ad9: $99
    nop                                           ; $7ada: $00
    or e                                          ; $7adb: $b3
    nop                                           ; $7adc: $00
    reti                                          ; $7add: $d9


    inc bc                                        ; $7ade: $03
    dec c                                         ; $7adf: $0d

Jump_070_7ae0:
    call nz, $9b80                                ; $7ae0: $c4 $80 $9b
    di                                            ; $7ae3: $f3
    ld a, [c]                                     ; $7ae4: $f2
    inc hl                                        ; $7ae5: $23
    ld h, c                                       ; $7ae6: $61
    rra                                           ; $7ae7: $1f
    ld h, d                                       ; $7ae8: $62
    add b                                         ; $7ae9: $80
    sbc [hl]                                      ; $7aea: $9e
    ldh a, [$d7]                                  ; $7aeb: $f0 $d7
    nop                                           ; $7aed: $00
    ld a, [hl]                                    ; $7aee: $7e
    ld [c], a                                     ; $7aef: $e2
    inc hl                                        ; $7af0: $23
    sub e                                         ; $7af1: $93
    pop bc                                        ; $7af2: $c1
    ld a, [$61f0]                                 ; $7af3: $fa $f0 $61
    cp d                                          ; $7af6: $ba
    add sp, -$80                                  ; $7af7: $e8 $80
    sub e                                         ; $7af9: $93
    pop bc                                        ; $7afa: $c1
    ld hl, sp+$10                                 ; $7afb: $f8 $10
    ld b, h                                       ; $7afd: $44
    nop                                           ; $7afe: $00
    xor d                                         ; $7aff: $aa
    ld h, e                                       ; $7b00: $63
    adc a                                         ; $7b01: $8f
    dec [hl]                                      ; $7b02: $35
    cp b                                          ; $7b03: $b8
    rst $38                                       ; $7b04: $ff
    ld a, [hl-]                                   ; $7b05: $3a
    and $ff                                       ; $7b06: $e6 $ff
    rst $38                                       ; $7b08: $ff
    push bc                                       ; $7b09: $c5
    sla h                                         ; $7b0a: $cb $24
    inc b                                         ; $7b0c: $04
    cp a                                          ; $7b0d: $bf
    rst $38                                       ; $7b0e: $ff
    nop                                           ; $7b0f: $00
    dec [hl]                                      ; $7b10: $35
    ld c, [hl]                                    ; $7b11: $4e
    ld l, d                                       ; $7b12: $6a
    ld l, d                                       ; $7b13: $6a
    ccf                                           ; $7b14: $3f
    db $ec                                        ; $7b15: $ec
    rst $38                                       ; $7b16: $ff
    rst $38                                       ; $7b17: $ff
    add hl, hl                                    ; $7b18: $29
    or c                                          ; $7b19: $b1
    rst $10                                       ; $7b1a: $d7
    rst $38                                       ; $7b1b: $ff
    scf                                           ; $7b1c: $37
    ld sp, hl                                     ; $7b1d: $f9
    call c, Call_000_00ff                         ; $7b1e: $dc $ff $00
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
    nop                                           ; $7b31: $00
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
    nop                                           ; $7b42: $00
    rst $38                                       ; $7b43: $ff

Call_070_7b44:
    rst $38                                       ; $7b44: $ff
    nop                                           ; $7b45: $00
    or e                                          ; $7b46: $b3
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
    nop                                           ; $7b51: $00
    nop                                           ; $7b52: $00
    nop                                           ; $7b53: $00
    db $dd                                        ; $7b54: $dd
    ld sp, $e4ff                                  ; $7b55: $31 $ff $e4
    dec hl                                        ; $7b58: $2b
    inc l                                         ; $7b59: $2c
    jr nz, @+$01                                  ; $7b5a: $20 $ff

    pop hl                                        ; $7b5c: $e1
    ld hl, $e214                                  ; $7b5d: $21 $14 $e2
    rst $38                                       ; $7b60: $ff
    ldh [rP1], a                                  ; $7b61: $e0 $00
    rst $38                                       ; $7b63: $ff
    rst $38                                       ; $7b64: $ff
    rst $20                                       ; $7b65: $e7
    and $c0                                       ; $7b66: $e6 $c0
    push hl                                       ; $7b68: $e5
    rrca                                          ; $7b69: $0f
    dec b                                         ; $7b6a: $05
    dec b                                         ; $7b6b: $05
    ccf                                           ; $7b6c: $3f
    dec b                                         ; $7b6d: $05

jr_070_7b6e:
    ld [hl+], a                                   ; $7b6e: $22
    inc hl                                        ; $7b6f: $23
    jr nz, @+$22                                  ; $7b70: $20 $20

    inc h                                         ; $7b72: $24
    rst $38                                       ; $7b73: $ff
    ldh [$ca], a                                  ; $7b74: $e0 $ca
    rst $38                                       ; $7b76: $ff
    sbc $c0                                       ; $7b77: $de $c0
    jp hl                                         ; $7b79: $e9


    ld b, a                                       ; $7b7a: $47
    ld b, [hl]                                    ; $7b7b: $46
    ld b, [hl]                                    ; $7b7c: $46
    ld b, a                                       ; $7b7d: $47
    ld a, d                                       ; $7b7e: $7a
    db $e3                                        ; $7b7f: $e3
    ld de, $e312                                  ; $7b80: $11 $12 $e3
    ld hl, $7a22                                  ; $7b83: $21 $22 $7a
    pop hl                                        ; $7b86: $e1
    jp z, $e8ff                                   ; $7b87: $ca $ff $e8

    rst $20                                       ; $7b8a: $e7
    ld c, l                                       ; $7b8b: $4d
    ld b, [hl]                                    ; $7b8c: $46
    ld [hl], $87                                  ; $7b8d: $36 $87
    jr nc, jr_070_7bc1                            ; $7b8f: $30 $30

    ld [hl], $be                                  ; $7b91: $36 $be
    rst $20                                       ; $7b93: $e7
    cp a                                          ; $7b94: $bf
    pop hl                                        ; $7b95: $e1
    jp z, $e8ff                                   ; $7b96: $ca $ff $e8

    rst $20                                       ; $7b99: $e7
    add hl, sp                                    ; $7b9a: $39
    rst $38                                       ; $7b9b: $ff
    ld l, c                                       ; $7b9c: $69
    ld h, [hl]                                    ; $7b9d: $66
    jr nc, @+$32                                  ; $7b9e: $30 $30

    ld l, e                                       ; $7ba0: $6b
    jr nc, jr_070_7bd9                            ; $7ba1: $30 $36

    ld d, l                                       ; $7ba3: $55
    ld l, a                                       ; $7ba4: $6f
    ld d, h                                       ; $7ba5: $54
    ld d, l                                       ; $7ba6: $55
    dec sp                                        ; $7ba7: $3b
    ld c, l                                       ; $7ba8: $4d
    di                                            ; $7ba9: $f3
    ret nz                                        ; $7baa: $c0

    rla                                           ; $7bab: $17
    jr z, jr_070_7b6e                             ; $7bac: $28 $c0

    rst $38                                       ; $7bae: $ff
    cp $ea                                        ; $7baf: $fe $ea
    jp hl                                         ; $7bb1: $e9


    ld d, d                                       ; $7bb2: $52
    ld l, c                                       ; $7bb3: $69
    ld h, [hl]                                    ; $7bb4: $66
    ld l, b                                       ; $7bb5: $68
    ld l, b                                       ; $7bb6: $68
    ld l, l                                       ; $7bb7: $6d
    jr nc, jr_070_7bf0                            ; $7bb8: $30 $36

    rst $38                                       ; $7bba: $ff
    pop hl                                        ; $7bbb: $e1
    ld l, l                                       ; $7bbc: $6d
    ld [hl-], a                                   ; $7bbd: $32
    cp a                                          ; $7bbe: $bf
    ldh [$15], a                                  ; $7bbf: $e0 $15

jr_070_7bc1:
    ld d, $c0                                     ; $7bc1: $16 $c0
    rst $38                                       ; $7bc3: $ff
    ret nz                                        ; $7bc4: $c0

    db $ec                                        ; $7bc5: $ec
    rst $38                                       ; $7bc6: $ff
    jr nc, jr_070_7bf9                            ; $7bc7: $30 $30

    ld l, d                                       ; $7bc9: $6a
    ld l, l                                       ; $7bca: $6d
    ld l, h                                       ; $7bcb: $6c
    ld l, h                                       ; $7bcc: $6c
    ld l, h                                       ; $7bcd: $6c
    ld l, l                                       ; $7bce: $6d
    jp Jump_000_3067                              ; $7bcf: $c3 $67 $30


    cp a                                          ; $7bd2: $bf
    pop hl                                        ; $7bd3: $e1
    ld a, a                                       ; $7bd4: $7f
    ldh [$ca], a                                  ; $7bd5: $e0 $ca
    rst $38                                       ; $7bd7: $ff
    ld b, b                                       ; $7bd8: $40

jr_070_7bd9:
    db $ec                                        ; $7bd9: $ec
    jr nc, jr_070_7c46                            ; $7bda: $30 $6a

    rst $08                                       ; $7bdc: $cf
    ld h, l                                       ; $7bdd: $65
    ld h, l                                       ; $7bde: $65
    ld h, l                                       ; $7bdf: $65
    ld h, a                                       ; $7be0: $67
    ld a, e                                       ; $7be1: $7b
    ldh [$7e], a                                  ; $7be2: $e0 $7e
    ldh [$15], a                                  ; $7be4: $e0 $15
    inc d                                         ; $7be6: $14
    ld sp, hl                                     ; $7be7: $f9
    dec b                                         ; $7be8: $05
    jp z, $c0ff                                   ; $7be9: $ca $ff $c0

    ret z                                         ; $7bec: $c8

    ld [hl-], a                                   ; $7bed: $32
    ld l, d                                       ; $7bee: $6a
    ld l, d                                       ; $7bef: $6a

jr_070_7bf0:
    ld l, d                                       ; $7bf0: $6a
    ld l, l                                       ; $7bf1: $6d
    sbc a                                         ; $7bf2: $9f
    jr nc, jr_070_7c5b                            ; $7bf3: $30 $66

    ld l, e                                       ; $7bf5: $6b
    rra                                           ; $7bf6: $1f
    rra                                           ; $7bf7: $1f
    ld a, b                                       ; $7bf8: $78

jr_070_7bf9:
    ldh [$3e], a                                  ; $7bf9: $e0 $3e
    pop hl                                        ; $7bfb: $e1
    ld sp, $3101                                  ; $7bfc: $31 $01 $31
    jp z, Jump_000_00ff                           ; $7bff: $ca $ff $00

    ret z                                         ; $7c02: $c8

    cp a                                          ; $7c03: $bf
    db $e3                                        ; $7c04: $e3
    ret nz                                        ; $7c05: $c0

    ld [c], a                                     ; $7c06: $e2
    pop bc                                        ; $7c07: $c1
    db $e4                                        ; $7c08: $e4
    ret nz                                        ; $7c09: $c0

    rst $38                                       ; $7c0a: $ff
    ret nz                                        ; $7c0b: $c0

    xor d                                         ; $7c0c: $aa
    add $7e                                       ; $7c0d: $c6 $7e
    ld [c], a                                     ; $7c0f: $e2
    ld h, [hl]                                    ; $7c10: $66
    ld l, e                                       ; $7c11: $6b
    add d                                         ; $7c12: $82
    and $c0                                       ; $7c13: $e6 $c0
    rst $38                                       ; $7c15: $ff
    add b                                         ; $7c16: $80
    xor h                                         ; $7c17: $ac
    ld c, l                                       ; $7c18: $4d
    ld b, [hl]                                    ; $7c19: $46
    ld h, b                                       ; $7c1a: $60
    ld b, e                                       ; $7c1b: $43
    ret nz                                        ; $7c1c: $c0

    cp $e0                                        ; $7c1d: $fe $e0
    ld b, b                                       ; $7c1f: $40
    jp nz, $ffc0                                  ; $7c20: $c2 $c0 $ff

    db $ec                                        ; $7c23: $ec
    db $eb                                        ; $7c24: $eb
    ld [de], a                                    ; $7c25: $12
    ld de, $85fe                                  ; $7c26: $11 $fe $85
    ld h, h                                       ; $7c29: $64
    ld a, [hl]                                    ; $7c2a: $7e
    and e                                         ; $7c2b: $a3
    nop                                           ; $7c2c: $00
    and b                                         ; $7c2d: $a0
    ld c, $ca                                     ; $7c2e: $0e $ca
    rst $38                                       ; $7c30: $ff
    add sp, -$19                                  ; $7c31: $e8 $e7
    ld [hl+], a                                   ; $7c33: $22
    ld hl, $e2be                                  ; $7c34: $21 $be $e2
    dec sp                                        ; $7c37: $3b
    ld h, d                                       ; $7c38: $62
    ld h, d                                       ; $7c39: $62
    ld b, b                                       ; $7c3a: $40
    and h                                         ; $7c3b: $a4
    inc h                                         ; $7c3c: $24
    inc h                                         ; $7c3d: $24
    inc hl                                        ; $7c3e: $23
    set 7, a                                      ; $7c3f: $cb $ff
    jp hl                                         ; $7c41: $e9


    add sp, -$01                                  ; $7c42: $e8 $ff
    jr nz, jr_070_7c56                            ; $7c44: $20 $10

jr_070_7c46:
    ld [hl+], a                                   ; $7c46: $22
    ld hl, $3101                                  ; $7c47: $21 $01 $31
    ld e, [hl]                                    ; $7c4a: $5e
    ld e, e                                       ; $7c4b: $5b
    rst $18                                       ; $7c4c: $df
    ld e, e                                       ; $7c4d: $5b
    ld e, [hl]                                    ; $7c4e: $5e
    ld sp, $2101                                  ; $7c4f: $31 $01 $21
    cp a                                          ; $7c52: $bf
    add c                                         ; $7c53: $81
    jr nz, @+$0c                                  ; $7c54: $20 $0a

jr_070_7c56:
    pop af                                        ; $7c56: $f1
    dec bc                                        ; $7c57: $0b
    jp z, $e8ff                                   ; $7c58: $ca $ff $e8

jr_070_7c5b:
    rst $20                                       ; $7c5b: $e7
    adc c                                         ; $7c5c: $89
    add b                                         ; $7c5d: $80
    rrca                                          ; $7c5e: $0f
    ld sp, $5f31                                  ; $7c5f: $31 $31 $5f
    scf                                           ; $7c62: $37
    ld e, e                                       ; $7c63: $5b
    ld e, e                                       ; $7c64: $5b
    ld e, a                                       ; $7c65: $5f
    ld a, h                                       ; $7c66: $7c
    add e                                         ; $7c67: $83
    ld a, [bc]                                    ; $7c68: $0a
    dec bc                                        ; $7c69: $0b
    nop                                           ; $7c6a: $00
    rst $38                                       ; $7c6b: $ff
    rst $38                                       ; $7c6c: $ff
    rst $38                                       ; $7c6d: $ff
    nop                                           ; $7c6e: $00
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
    nop                                           ; $7c7f: $00
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
    nop                                           ; $7c90: $00
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
    nop                                           ; $7ca1: $00
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
    nop                                           ; $7cb2: $00
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
    nop                                           ; $7cc3: $00
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
    nop                                           ; $7cd4: $00
    rst $38                                       ; $7cd5: $ff
    rst $38                                       ; $7cd6: $ff
    rst $38                                       ; $7cd7: $ff
    rst $38                                       ; $7cd8: $ff

Jump_070_7cd9:
    rst $38                                       ; $7cd9: $ff
    rst $38                                       ; $7cda: $ff
    rst $38                                       ; $7cdb: $ff
    rst $38                                       ; $7cdc: $ff
    rst $38                                       ; $7cdd: $ff
    rst $38                                       ; $7cde: $ff
    rst $38                                       ; $7cdf: $ff
    rst $38                                       ; $7ce0: $ff
    rst $38                                       ; $7ce1: $ff

Jump_070_7ce2:
    rst $38                                       ; $7ce2: $ff
    rst $38                                       ; $7ce3: $ff
    rst $38                                       ; $7ce4: $ff
    nop                                           ; $7ce5: $00
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
    nop                                           ; $7cf6: $00
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
    nop                                           ; $7d07: $00
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
    nop                                           ; $7d18: $00
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
    nop                                           ; $7d29: $00
    rst $38                                       ; $7d2a: $ff
    rst $38                                       ; $7d2b: $ff
    rst $38                                       ; $7d2c: $ff
    push af                                       ; $7d2d: $f5
    nop                                           ; $7d2e: $00
    nop                                           ; $7d2f: $00
    nop                                           ; $7d30: $00
    and l                                         ; $7d31: $a5
    nop                                           ; $7d32: $00
    rst $38                                       ; $7d33: $ff
    push hl                                       ; $7d34: $e5
    ld [hl-], a                                   ; $7d35: $32
    or $e6                                        ; $7d36: $f6 $e6
    rst $30                                       ; $7d38: $f7
    rst $20                                       ; $7d39: $e7
    dec [hl]                                      ; $7d3a: $35
    db $ec                                        ; $7d3b: $ec
    xor $37                                       ; $7d3c: $ee $37
    db $ec                                        ; $7d3e: $ec
    jp c, $c7f0                                   ; $7d3f: $da $f0 $c7

    add sp, $33                                   ; $7d42: $e8 $33
    ld sp, $f2e0                                  ; $7d44: $31 $e0 $f2
    ld [hl], $30                                  ; $7d47: $36 $30
    scf                                           ; $7d49: $37
    cp a                                          ; $7d4a: $bf
    ld h, $20                                     ; $7d4b: $26 $20
    daa                                           ; $7d4d: $27
    db $10                                        ; $7d4e: $10
    ld d, $17                                     ; $7d4f: $16 $17
    jp nz, Jump_000_34f6                          ; $7d51: $c2 $f6 $34

    rst $38                                       ; $7d54: $ff
    ld [hl], $32                                  ; $7d55: $36 $32
    jr nc, jr_070_7d90                            ; $7d57: $30 $37

    ld sp, $3133                                  ; $7d59: $31 $33 $31
    inc sp                                        ; $7d5c: $33
    nop                                           ; $7d5d: $00
    and b                                         ; $7d5e: $a0
    ei                                            ; $7d5f: $fb
    rst $38                                       ; $7d60: $ff
    rst $28                                       ; $7d61: $ef
    nop                                           ; $7d62: $00
    nop                                           ; $7d63: $00
    nop                                           ; $7d64: $00
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

jr_070_7d90:
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

Call_070_7e22:
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

Call_070_7e79:
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

Call_070_7ec3:
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

Jump_070_7ee1:
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

Jump_070_7f80:
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

Jump_070_7fc1:
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
