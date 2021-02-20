; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $050", ROMX[$4000], BANK[$50]

    db $10, $40, $c1, $58, $6c, $50, $8d, $68, $f1, $70, $a4, $71

    and e                                         ; $400c: $a3
    ld [hl], d                                    ; $400d: $72
    cpl                                           ; $400e: $2f
    ld [hl], a                                    ; $400f: $77

    db $1a, $40, $4a, $40

    ld b, c                                       ; $4014: $41
    ld c, e                                       ; $4015: $4b

    db $41, $4d, $30, $4f, $33, $01, $3f, $02, $ea, $03, $a4, $02, $ff, $63, $ef, $03
    db $ea, $03, $a4, $02, $40, $71, $c0, $7e, $d4, $00, $a4, $02, $ff, $7f, $ea, $03
    db $a4, $02, $20, $11, $bf, $00, $86, $3f, $24, $2e, $20, $11, $08, $25, $08, $25
    db $08, $25, $08, $25, $d5, $00, $ff, $e0, $05, $fb, $e0, $0b, $f7, $e1, $00, $02
    db $eb, $00, $28, $ef, $e0, $90, $eb, $e0, $f5, $00, $c8, $fe, $e5, $e0, $80, $00
    db $ec, $ff, $f8, $ff, $e0, $ff, $fe, $42, $f8, $c8, $f0, $80, $e0, $10, $ef, $e0
    db $00, $c0, $ff, $ff, $e2, $f7, $ff, $bc, $7f, $ff, $e8, $ff, $81, $fe, $08, $f0
    db $f8, $e5, $fb, $20, $c0, $bf, $e2, $00, $7f, $ff, $2f, $ff, $ff, $3f, $ff, $1f
    db $ff, $b7, $7f, $1f, $7f, $ff, $0f, $7f, $4f, $3f, $07, $1f, $02, $1f, $ff, $13
    db $0f, $01, $0f, $0b, $07, $01, $07, $ff, $00, $07, $04, $03, $5c, $ff, $00, $ff
    db $e7, $81, $3c, $10, $d3, $e3, $83, $e0, $20, $c0, $80, $bf, $c0, $00, $e0, $90
    db $e0, $80, $fe, $e0, $00, $fb, $c0, $20, $a0, $e0, $7d, $ff, $ef, $ff, $3a, $fa
    db $da, $e2, $08, $63, $e0, $a4, $f8, $e0, $f8, $f0, $ff, $fc, $d0, $fc, $f2, $fc
    db $e0, $fc, $b0, $f7, $f8, $e4, $f8, $80, $e5, $be, $ff, $e3, $ff, $ff, $40, $ff
    db $00, $e7, $fc, $ff, $f6, $ff, $7f, $fc, $ff, $f8, $fe, $e8, $fe, $f8, $f8, $e0
    db $0b, $f4, $ff, $78, $e0, $80, $a3, $e6, $23, $e1, $f0, $e0, $ef, $ea, $e3, $c0
    db $40, $e0, $ea, $d0, $e1, $cf, $e9, $02, $81, $a0, $ff, $c1, $80, $c1, $85, $c3
    db $a1, $c3, $00, $7f, $83, $05, $83, $40, $81, $41, $80, $c0, $e0, $ff, $c0, $a0
    db $c0, $c0, $e0, $68, $f0, $f1, $ff, $fc, $dc, $ff, $1e, $ff, $80, $1e, $12, $7e
    db $d4, $c2, $48, $00, $01, $78, $58, $ff, $b0, $e9, $ff, $02, $01, $00, $03, $00
    db $00, $40, $40, $7f, $00, $20, $00, $10, $08, $00, $04, $b2, $c0, $c0, $a2, $c1
    db $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $f3, $c3, $3c, $e3, $c3, $3c, $fd
    db $e0, $fe, $e2, $f4, $e1, $1b, $e7, $2f, $ff, $dc, $1e, $f1, $3c, $e3, $7c, $c3
    db $7c, $7f, $c3, $e3, $9c, $c3, $bc, $18, $e7, $e2, $e1, $ff, $1a, $e5, $12, $ef
    db $5f, $b8, $7f, $e0, $ff, $f3, $8c, $13, $ef, $1f, $f8, $fc, $63, $bf, $fc, $83
    db $fc, $03, $bc, $43, $c4, $e1, $98, $ff, $e7, $fc, $43, $dc, $63, $f8, $27, $68
    db $ff, $b7, $6c, $93, $fc, $13, $e8, $17, $f8, $ff, $0f, $de, $25, $3c, $c7, $3e
    db $c3, $3f, $ff, $c2, $3e, $c1, $c3, $3d, $c3, $3d, $bb, $f7, $d7, $ff, $00, $a0
    db $e9, $c3, $bc, $c3, $bc, $c9, $7c, $c2, $e0, $be, $e1, $43, $f4, $e0, $a0, $e1
    db $00, $ff, $bf, $dd, $eb, $ff, $00, $7e, $81, $80, $e2, $f4, $ff, $0f, $f0, $1c
    db $e3, $1c, $f3, $1c, $e3, $ff, $0c, $f3, $3f, $d0, $1b, $f4, $57, $ff, $5f, $af
    db $fc, $7e, $f1, $bc, $70, $e0, $fc, $70, $e2, $ff, $fb, $ff, $de, $ff, $f5, $ff
    db $aa, $ff, $b7, $57, $ff, $bf, $67, $a0, $f3, $8c, $f8, $e1, $7c, $fd, $e3, $70
    db $e7, $ef, $ff, $d7, $7f, $ed, $7f, $ff, $f7, $3f, $6b, $bf, $76, $9f, $fb, $1f
    db $ff, $f5, $1f, $fa, $0f, $dd, $27, $3e, $c7, $f3, $3f, $c3, $6e, $e0, $70, $e2
    db $ed, $ff, $d3, $3c, $3b, $7e, $81, $70, $e9, $e3, $9c, $bc, $14, $e0, $69, $e0
    db $eb, $c3, $63, $10, $e0, $57, $a4, $e0, $7d, $ff, $d3, $f9, $ef, $4a, $e1, $e4
    db $c1, $bb, $f4, $5b, $f4, $ac, $ff, $f3, $6c, $f3, $bc, $e3, $6c, $f3, $bb, $ff
    db $f4, $db, $f4, $bd, $c3, $e7, $ff, $ba, $bf, $ff, $55, $ff, $ab, $ff, $fe, $58
    db $a0, $ff, $ef, $ff, $db, $ff, $6f, $8e, $e0, $af, $7f, $b5, $cf, $7f, $ef, $7f
    db $57, $46, $a0, $d0, $c3, $18, $e7, $fe, $f8, $e5, $57, $ff, $ac, $ff, $74, $fb
    db $b8, $6f, $e7, $58, $e7, $fc, $05, $e0, $98, $e7, $40, $e7, $df, $ba, $ff, $ec
    db $f3, $98, $e0, $e0, $ba, $ff, $e9, $6c, $f8, $e0, $c8, $e5, $ef, $26, $e0, $6d
    db $ff, $37, $ff, $ff, $2b, $ff, $16, $ff, $3b, $ff, $15, $ff, $ff, $1a, $ef, $35
    db $cf, $3e, $c7, $1b, $ff, $e7, $1a, $e7, $3d, $c3, $3f, $c3, $19, $db, $e7, $d7
    db $e4, $80, $2c, $d3, $a0, $e7, $98, $e7, $8a, $42, $e1, $d8, $a0, $e0, $bc, $de
    db $c0, $b0, $e1, $40, $e1, $cb, $fe, $78, $e6, $b0, $ff, $54, $fb, $a4, $fb, $78
    db $ff, $f7, $a8, $f7, $64, $fb, $b4, $fb, $d0, $ff, $ff, $c1, $ff, $b7, $ff, $5d
    db $ff, $ea, $54, $3e, $e0, $3a, $81, $ff, $94, $80, $57, $3e, $e0, $35, $3a, $e0
    db $f6, $ae, $c0, $ff, $d7, $21, $83, $ff, $dd, $ff, $77, $5c, $9c, $c0, $dc, $e1
    db $af, $ff, $df, $ce, $e0, $df, $f8, $e6, $14, $ff, $e5, $de, $e5, $5f, $ca, $e0
    db $6f, $c6, $e0, $f8, $e5, $e0, $63, $ca, $f8, $e1, $5f, $96, $e0, $5f, $d0, $e6
    db $c7, $e5, $69, $ff, $ff, $d4, $fc, $81, $f0, $46, $e0, $8b, $c0, $7f, $57, $c0
    db $1d, $80, $af, $80, $fd, $af, $60, $fd, $da, $48, $80, $a0, $fc, $41, $f0, $0b
    db $c0, $fb, $16, $00, $f8, $e1, $0a, $c0, $17, $00, $bd, $f7, $00, $6f, $00, $d5
    db $60, $00, $f8, $fe, $f4, $ff, $fe, $d8, $fc, $f1, $fc, $e2, $f8, $d1, $ff, $f8
    db $63, $f0, $c6, $f0, $8b, $e0, $47, $ff, $e0, $8f, $c0, $1b, $c0, $2f, $80, $1f
    db $ff, $80, $37, $00, $5f, $00, $24, $3c, $42, $bf, $00, $ad, $00, $f7, $00, $7d
    db $d2, $e2, $ff, $f5, $00, $ec, $e1, $bf, $e4, $e0, $2f, $80, $bf, $80, $df, $57
    db $00, $3f, $00, $f5, $3e, $e0, $45, $ff, $ff, $00, $c7, $10, $00, $6d, $00, $bb
    db $00, $ff, $ef, $00, $e7, $f0, $43, $f0, $e5, $f0, $ff, $47, $e0, $8a, $e0, $c7
    db $e0, $a5, $f0, $eb, $c3, $f0, $30, $63, $df, $2e, $60, $ad, $ff, $42, $ff, $ff
    db $00, $c3, $fc, $ff, $fa, $ff, $fc, $de, $8c, $e0, $f8, $fe, $ec, $fe, $f6, $e0
    db $ff, $ff, $ff, $80, $3f, $80, $7f, $c0, $9f, $c0, $4f, $ff, $e0, $87, $f0, $d5
    db $fc, $69, $ff, $3f, $ff, $00, $0f, $c0, $43, $f0, $a0, $fc, $f4, $c6, $4a, $e0
    db $ff, $ff, $42, $e0, $88, $e4, $e8, $e5, $e3, $0f, $ff, $e6, $0f, $cb, $1f, $c7
    db $1f, $8f, $3f, $f7, $9b, $3f, $2f, $fc, $40, $fe, $00, $fe, $00, $ff, $fc, $01
    db $fc, $01, $f8, $03, $f9, $03, $cf, $f2, $07, $f1, $07, $d0, $e5, $24, $e1, $d3
    db $00, $5f, $42, $7e, $fe, $00, $ff, $e2, $e0, $fe, $de, $e0, $cf, $fc, $01, $ff
    db $01, $f2, $e0, $0a, $e2, $3c, $00, $f7, $00, $c7, $45, $84, $c0, $f5, $ff, $e7
    db $0f, $ef, $e2, $0f, $f7, $0f, $c6, $e1, $f3, $07, $e5, $bf, $0f, $e3, $0f, $18
    db $c3, $42, $56, $e0, $f7, $ea, $76, $c6, $3f, $7e, $c0, $3f, $80, $a0, $9f, $7f
    db $37, $fd, $7f, $f6, $e0, $ff, $08, $00, $55, $00, $be, $74, $f0, $c0, $68, $e5
    db $5f, $fc, $c0, $7f, $00, $af, $fc, $e0, $9d, $3f, $f4, $e2, $11, $80, $2a, $d4
    db $c0, $f0, $e5, $bf, $f0, $fa, $e4, $6a, $e9, $f4, $eb, $00, $83, $1b, $e4, $15
    db $ee, $ff, $2d, $d0, $05, $fa, $34, $c0, $57, $aa, $df, $a4, $0a, $4b, $80, $42
    db $e0, $20, $1d, $02, $ff, $bc, $03, $98, $67, $17, $aa, $e4, $0a, $ff, $8b, $20
    db $22, $00, $dd, $00, $bd, $42, $fe, $08, $a1, $16, $a9, $e8, $03, $85, $22, $2a
    db $ff, $07, $db, $00, $bc, $43, $3f, $c0, $19, $fb, $e6, $18, $60, $a0, $3c, $c3
    db $b8, $e7, $08, $ff, $f7, $cc, $fb, $90, $6f, $2a, $ff, $1f, $ff, $e0, $d0, $01
    db $5a, $a1, $48, $07, $f8, $f7, $07, $1c, $03, $c0, $e1, $b0, $0f, $cc, $3f, $ff
    db $79, $86, $12, $ef, $1b, $e0, $3c, $c3, $fe, $d0, $e1, $3d, $c0, $4f, $a0, $30
    db $c9, $52, $ff, $a1, $6d, $c2, $34, $c9, $48, $b3, $1a, $ff, $e5, $15, $bf, $ce
    db $3f, $56, $bf, $6d, $ff, $bf, $9e, $7f, $6a, $bf, $1d, $ff, $4e, $ff, $bf, $35
    db $c0, $4e, $a1, $32, $c9, $57, $ff, $a2, $7f, $c5, $32, $cf, $55, $bf, $2b, $de
    db $90, $82, $bc, $43, $58, $a7, $00, $a0, $e3, $c4, $ff, $f3, $b4, $eb, $9a, $7f
    db $ef, $3f, $3a, $ff, $df, $4d, $ff, $b4, $ff, $7a, $ff, $a8, $fb, $ff, $74, $be
    db $80, $23, $df, $05, $ff, $1a, $fe, $70, $86, $d4, $ff, $bb, $fe, $74, $ff, $ae
    db $fa, $9a, $20, $ae, $3a, $80, $03, $ff, $52, $fc, $aa, $af, $fd, $77, $fb, $a2
    db $b0, $60, $0d, $ac, $60, $0a, $ff, $ff, $67, $88, $cd, $bb, $32, $ef, $eb, $fa
    db $de, $e0, $fe, $1c, $80, $ba, $ff, $27, $c8, $6d, $ff, $9b, $22, $ff, $7b, $ff
    db $b6, $ff, $5e, $fb, $ff, $bb, $84, $60, $0e, $bf, $dd, $3f, $6e, $bb, $bf, $57
    db $70, $e0, $6d, $bf, $1e, $70, $e0, $52, $ff, $fd, $ee, $f9, $49, $f6, $a7, $f8
    db $47, $ff, $f0, $b4, $c9, $4a, $b1, $1b, $e4, $ff, $ff, $1f, $4a, $bf, $69, $97
    db $12, $ef, $19, $f7, $e2, $38, $c7, $00, $e1, $2b, $d0, $aa, $41, $bf, $fe, $01
    db $a8, $07, $78, $87, $10, $e3, $a1, $ff, $1e, $8c, $7a, $57, $a8, $38, $c2, $0d
    db $f7, $f0, $3d, $c2, $d8, $61, $2f, $90, $f9, $00, $ff, $8a, $21, $28, $07, $d8
    db $07, $bc, $43, $fc, $c8, $61, $39, $a3, $02, $fd, $01, $fe, $0d, $f0, $ff, $02
    db $fd, $2a, $d0, $2b, $d6, $f5, $0a, $ff, $5f, $80, $a9, $02, $7f, $80, $10, $0f
    db $ff, $e0, $1f, $80, $7f, $57, $aa, $f5, $0a, $bf, $9f, $20, $b9, $02, $67, $98
    db $0f, $a3, $4a, $ff, $b5, $f4, $0b, $9d, $22, $ba, $07, $7b, $5f, $80, $0c, $f3
    db $07, $f8, $bf, $a1, $80, $9e, $00, $ed, $a0, $9a, $00, $68, $ff, $90, $c1, $17
    db $e8, $d1, $e7, $00, $2e, $d1, $80, $e1, $c0, $e3, $b0, $0f, $c6, $fc, $90, $c4
    db $d0, $e3, $3d, $c0, $5f, $a0, $34, $c9, $d7, $5a, $a1, $7d, $90, $c0, $4c, $90
    db $c0, $55, $bf, $fb, $8e, $7f, $90, $ca, $c8, $5a, $a1, $3c, $c3, $7f, $53, $ae
    db $77, $cd, $42, $bf, $15, $6a, $60, $fe, $6b, $81, $c0, $3f, $40, $bf, $40, $ff
    db $b0, $df, $ef, $cc, $f3, $a4, $fb, $90, $cf, $03, $ff, $a7, $05, $ff, $02, $19
    db $a6, $90, $cd, $53, $90, $c0, $75, $ae, $90, $c8, $77, $88, $cc, $90, $ca, $37
    db $90, $cc, $4e, $6e, $90, $ce, $ae, $f9, $79, $90, $c8, $bf, $5f, $90, $c3, $ef
    db $1d, $e2, $08, $f7, $00, $e1, $2d, $d0, $9a, $ef, $61, $7e, $81, $e8, $10, $e6
    db $61, $1e, $95, $de, $90, $c0, $39, $c2, $0f, $f0, $df, $63, $57, $a8, $ff, $fb
    db $00, $9e, $21, $a8, $07, $70, $8f, $fe, $cf, $63, $0c, $f7, $d9, $6f, $08, $ff
    db $63, $ff, $bd, $d6, $6b, $6a, $df, $30, $df, $53, $ff, $fd, $00, $ff, $5d, $e7
    db $08, $ff, $40, $6f, $bf, $6c, $b7, $48, $bc, $c0, $40, $ff, $24, $05, $dc, $ff
    db $ff, $e4, $e3, $55, $00, $ba, $7e, $80, $ab, $00, $d7, $5d, $00, $ea, $76, $80
    db $ae, $72, $80, $8a, $00, $f7, $54, $00, $aa, $f0, $e0, $aa, $00, $15, $00, $ff
    db $a8, $00, $51, $00, $08, $00, $22, $00, $7f, $94, $00, $29, $00, $44, $00, $10
    db $e4, $e0, $75, $00, $53, $00, $01, $74, $00, $20, $00, $80, $6e, $00, $fe, $a0
    db $f0, $18, $3c, $7e, $7e, $ff, $70, $ff, $ff, $78, $fc, $3c, $fe, $80, $7c, $64
    db $00, $ff, $00, $08, $1c, $3e, $36, $7f, $a6, $7f, $9f, $84, $6f, $40, $0e, $08
    db $30, $01, $3c, $a0, $07, $ff, $fe, $1b, $fc, $1e, $f1, $28, $f7, $7a, $ff, $e5
    db $70, $cf, $3c, $ff, $fb, $e7, $fd, $ff, $42, $e7, $18, $4a, $b5, $00, $ff, $54
    db $fe, $4e, $a0, $8e, $f3, $9a, $e7, $4d, $f3, $97, $ff, $e9, $c7, $f9, $8f, $f3
    db $5e, $e7, $8e, $fb, $f3, $f5, $ea, $80, $e0, $ff, $8a, $f5, $57, $7f, $e8, $8d
    db $f2, $19, $e7, $8f, $f3, $5f, $4d, $ff, $df, $99, $9f, $4d, $27, $17, $a3, $f3
    db $ff, $db, $e1, $ee, $f1, $b4, $fb, $41, $ff, $ff, $df, $9f, $9c, $4f, $26, $17
    db $a2, $f3, $ff, $da, $e1, $ee, $71, $f4, $3b, $f9, $ff, $ff, $e7, $18, $c3, $24
    db $e7, $24, $ff, $3c, $ef, $db, $3c, $e7, $18, $60, $41, $67, $9a, $c4, $ff, $8a
    db $0b, $c0, $42, $a0, $10, $c0, $e9, $ff, $80, $60, $91, $8b, $60, $16, $a9, $e1
    db $ff, $0b, $8a, $27, $27, $0f, $ad, $1f, $d6, $f3, $3f, $7d, $46, $80, $f0, $07
    db $24, $db, $0c, $f7, $ff, $36, $cf, $18, $e7, $d6, $0f, $59, $a6, $ff, $42, $0f
    db $fb, $00, $1c, $03, $bf, $00, $fb, $99, $66, $08, $21, $3d, $c2, $18, $e7, $19
    db $7c, $00, $24, $e0, $61, $56, $a9, $22, $ff, $75, $60, $84, $fe, $50, $a3, $11
    db $ef, $1f, $e0, $3d, $c7, $33, $f7, $cf, $2d, $d7, $b0, $65, $28, $d7, $44, $fb
    db $ff, $b4, $ff, $d0, $ff, $fb, $1c, $ed, $26, $ff, $8b, $46, $db, $66, $c6, $4f
    db $0b, $87, $ff, $9b, $87, $b3, $cf, $af, $9f, $e6, $5f, $ff, $bf, $7e, $eb, $3c
    db $ff, $2e, $ef, $2f, $fe, $f1, $40, $1e, $1c, $ff, $2e, $e7, $4a, $c7, $df, $5a
    db $e7, $47, $cf, $8b, $e0, $e4, $66, $df, $ff, $7e, $ff, $28, $ff, $3e, $ef, $2f
    db $ef, $fc, $e1, $e0, $00, $c0, $d1, $6f, $18, $ff, $67, $a5, $ff, $a4, $67, $7e
    db $ff, $38, $df, $43, $fd, $1a, $78, $02, $db, $1d, $e0, $e7, $7e, $1b, $e0, $70
    db $80, $0d, $cd, $c6, $a6, $80, $18, $ff, $e0, $e3, $ff, $c1, $5c, $21, $e7, $00
    db $e5, $db, $fe, $e0, $81, $f8, $e0, $d1, $af, $ab, $ff, $05, $ff, $fe, $ab, $fc
    db $0d, $fa, $b2, $fd, $55, $ff, $ea, $a8, $d7, $f4, $8b, $b0, $0f, $de, $bf, $7f
    db $29, $fe, $55, $ff, $be, $1e, $e0, $aa, $5f, $ff, $c0, $ff, $98, $67, $30, $e1
    db $58, $60, $66, $fa, $90, $4b, $2b, $d0, $48, $3c, $03, $84, $73, $b4, $f9, $eb
    db $e1, $ae, $28, $62, $19, $e7, $17, $ee, $3f, $bf, $c8, $2f, $d8, $1f, $f0, $fd
    db $2a, $00, $da, $fe, $c8, $20, $af, $fe, $df, $f8, $6f, $f8, $df, $f5, $f0, $43
    db $40, $3c, $a6, $41, $3f, $c3, $3e, $c7, $ef, $dd, $2f, $da, $2f, $f0, $e5, $3d
    db $c3, $3c, $1f, $c7, $d0, $2f, $d8, $2f, $2e, $bf, $ff, $ff, $ff, $ff, $e0, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f0, $ef, $ff, $fc, $fe, $ff, $f9, $fc, $fb
    db $fe, $e1, $f4, $cb, $e0, $fd, $df, $fe, $e1, $bf, $7f, $5f, $bf, $1f, $ff, $ff
    db $37, $cf, $0b, $f7, $63, $ff, $d3, $9f, $ff, $93, $9f, $f8, $87, $d0, $2f, $80
    db $7f, $ff, $8c, $7f, $9a, $73, $52, $b3, $8c, $ff, $ff, $f0, $ef, $6d, $f3, $02
    db $fd, $c0, $3f, $ff, $80, $7f, $02, $ff, $16, $ff, $01, $ff, $ff, $17, $ff, $e8
    db $f7, $f1, $ff, $fe, $fe, $ff, $ff, $fe, $f7, $fe, $ad, $fc, $46, $fe, $df, $eb
    db $ff, $37, $ff, $8f, $b7, $80, $7f, $7f, $ff, $6f, $7f, $3e, $3f, $7b, $7f, $ff
    db $ff, $ff, $fc, $ff, $fa, $fd, $fc, $fb, $e1, $ff, $ff, $d0, $ef, $e5, $df, $ca
    db $ff, $e7, $df, $df, $3f, $ff, $1f, $ff, $bf, $02, $60, $eb, $ff, $f7, $7f, $ff
    db $db, $8d, $80, $8b, $ff, $45, $bf, $ff, $97, $7f, $2b, $ff, $9f, $7f, $2d, $ff
    db $5d, $9f, $ea, $e0, $75, $ff, $fa, $77, $80, $7e, $73, $80, $77, $fe, $ff, $f9
    db $6d, $80, $e5, $ff, $f3, $a0, $e1, $be, $9c, $e0, $ee, $fe, $5e, $fe, $fb, $22
    db $c0, $cf, $e8, $a0, $e2, $fc, $e3, $43, $88, $fe, $95, $e0, $f8, $ff, $f0, $ff
    db $fb, $e7, $f5, $cb, $f2, $8d, $f1, $0e, $db, $f0, $0f, $fe, $e1, $e8, $17, $2a
    db $83, $7f, $ff, $1e, $28, $e1, $2f, $df, $17, $ef, $11, $8c, $a6, $e0, $08, $82
    db $ff, $e0, $fc, $c3, $fc, $83, $fc, $03, $fc, $ff, $03, $ff, $e0, $ef, $d0, $df
    db $a0, $2e, $ff, $d1, $96, $6b, $4c, $b7, $28, $df, $15, $ff, $ef, $c0, $3f, $84
    db $7f, $0a, $ff, $14, $eb, $ff, $2a, $72, $80, $aa, $6e, $80, $0b, $f7, $03, $8b
    db $ff, $fb, $fe, $e0, $ff, $fc, $e2, $3f, $a0, $c0, $6a, $f7, $ff, $0f, $fe, $fd
    db $fd, $fa, $fa, $f5, $f0, $f3, $ef, $c0, $78, $20, $ce, $e1, $fc, $03, $54, $ab
    db $7f, $ac, $57, $1a, $ef, $35, $df, $2a, $0e, $e0, $7f, $ff, $ff, $0a, $f7, $05
    db $fb, $02, $9a, $40, $d5, $7e, $10, $40, $7f, $0c, $42, $57, $54, $a0, $de, $fd
    db $fe, $45, $e0, $ff, $ea, $ff, $d5, $ff, $de, $a1, $ff, $aa, $55, $56, $ab, $0d
    db $f7, $1a, $ef, $a5, $15, $d8, $c0, $7f, $90, $e0, $d0, $e3, $be, $ec, $c0, $bf
    db $fe, $51, $e1, $fe, $ff, $f8, $f9, $e0, $e7, $80, $ff, $99, $00, $e6, $00, $98
    db $00, $e1, $00, $ff, $ff, $7f, $9f, $1f, $87, $07, $81, $01, $ff, $80, $00, $60
    db $00, $18, $00, $c6, $00, $ff, $87, $00, $1e, $00, $7c, $00, $ec, $80, $ff, $c4
    db $80, $c5, $80, $fc, $80, $d4, $80, $7d, $f1, $f2, $e0, $3f, $01, $37, $01, $23
    db $fe, $e0, $0f, $3f, $01, $2b, $01, $ee, $bf, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00

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
    nop                                           ; $4b9f: $00
    nop                                           ; $4ba0: $00
    nop                                           ; $4ba1: $00
    nop                                           ; $4ba2: $00
    nop                                           ; $4ba3: $00
    nop                                           ; $4ba4: $00
    nop                                           ; $4ba5: $00
    nop                                           ; $4ba6: $00
    nop                                           ; $4ba7: $00
    nop                                           ; $4ba8: $00
    nop                                           ; $4ba9: $00
    nop                                           ; $4baa: $00
    nop                                           ; $4bab: $00
    nop                                           ; $4bac: $00
    nop                                           ; $4bad: $00
    nop                                           ; $4bae: $00
    nop                                           ; $4baf: $00
    nop                                           ; $4bb0: $00
    nop                                           ; $4bb1: $00
    nop                                           ; $4bb2: $00
    nop                                           ; $4bb3: $00
    nop                                           ; $4bb4: $00
    nop                                           ; $4bb5: $00
    nop                                           ; $4bb6: $00
    nop                                           ; $4bb7: $00
    nop                                           ; $4bb8: $00
    nop                                           ; $4bb9: $00
    nop                                           ; $4bba: $00
    nop                                           ; $4bbb: $00
    nop                                           ; $4bbc: $00
    nop                                           ; $4bbd: $00
    nop                                           ; $4bbe: $00
    nop                                           ; $4bbf: $00
    nop                                           ; $4bc0: $00
    nop                                           ; $4bc1: $00
    nop                                           ; $4bc2: $00
    nop                                           ; $4bc3: $00
    nop                                           ; $4bc4: $00
    nop                                           ; $4bc5: $00
    nop                                           ; $4bc6: $00
    nop                                           ; $4bc7: $00
    nop                                           ; $4bc8: $00
    nop                                           ; $4bc9: $00
    nop                                           ; $4bca: $00
    nop                                           ; $4bcb: $00
    nop                                           ; $4bcc: $00
    nop                                           ; $4bcd: $00
    nop                                           ; $4bce: $00
    nop                                           ; $4bcf: $00
    nop                                           ; $4bd0: $00
    nop                                           ; $4bd1: $00
    nop                                           ; $4bd2: $00
    nop                                           ; $4bd3: $00
    nop                                           ; $4bd4: $00
    nop                                           ; $4bd5: $00
    nop                                           ; $4bd6: $00
    nop                                           ; $4bd7: $00
    nop                                           ; $4bd8: $00
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    nop                                           ; $4bdb: $00
    nop                                           ; $4bdc: $00
    nop                                           ; $4bdd: $00
    nop                                           ; $4bde: $00
    nop                                           ; $4bdf: $00
    nop                                           ; $4be0: $00
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    nop                                           ; $4be3: $00
    nop                                           ; $4be4: $00
    nop                                           ; $4be5: $00
    nop                                           ; $4be6: $00
    nop                                           ; $4be7: $00
    nop                                           ; $4be8: $00
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    nop                                           ; $4beb: $00
    nop                                           ; $4bec: $00
    nop                                           ; $4bed: $00
    nop                                           ; $4bee: $00
    nop                                           ; $4bef: $00
    nop                                           ; $4bf0: $00
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    nop                                           ; $4bf3: $00
    nop                                           ; $4bf4: $00
    nop                                           ; $4bf5: $00
    nop                                           ; $4bf6: $00
    nop                                           ; $4bf7: $00
    nop                                           ; $4bf8: $00
    nop                                           ; $4bf9: $00
    nop                                           ; $4bfa: $00
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    nop                                           ; $4bfd: $00
    nop                                           ; $4bfe: $00
    nop                                           ; $4bff: $00
    nop                                           ; $4c00: $00
    nop                                           ; $4c01: $00
    nop                                           ; $4c02: $00
    nop                                           ; $4c03: $00
    nop                                           ; $4c04: $00
    nop                                           ; $4c05: $00
    nop                                           ; $4c06: $00
    nop                                           ; $4c07: $00
    nop                                           ; $4c08: $00
    nop                                           ; $4c09: $00
    nop                                           ; $4c0a: $00
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
    nop                                           ; $4c27: $00
    nop                                           ; $4c28: $00
    nop                                           ; $4c29: $00
    nop                                           ; $4c2a: $00
    nop                                           ; $4c2b: $00
    nop                                           ; $4c2c: $00
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
    nop                                           ; $4ca1: $00
    nop                                           ; $4ca2: $00
    nop                                           ; $4ca3: $00
    nop                                           ; $4ca4: $00
    nop                                           ; $4ca5: $00
    nop                                           ; $4ca6: $00
    nop                                           ; $4ca7: $00
    nop                                           ; $4ca8: $00
    nop                                           ; $4ca9: $00
    nop                                           ; $4caa: $00
    nop                                           ; $4cab: $00
    nop                                           ; $4cac: $00
    nop                                           ; $4cad: $00
    nop                                           ; $4cae: $00
    nop                                           ; $4caf: $00
    nop                                           ; $4cb0: $00
    nop                                           ; $4cb1: $00
    nop                                           ; $4cb2: $00
    nop                                           ; $4cb3: $00
    nop                                           ; $4cb4: $00
    nop                                           ; $4cb5: $00
    nop                                           ; $4cb6: $00
    nop                                           ; $4cb7: $00
    nop                                           ; $4cb8: $00
    nop                                           ; $4cb9: $00
    nop                                           ; $4cba: $00
    nop                                           ; $4cbb: $00
    nop                                           ; $4cbc: $00
    nop                                           ; $4cbd: $00
    nop                                           ; $4cbe: $00
    nop                                           ; $4cbf: $00
    nop                                           ; $4cc0: $00
    nop                                           ; $4cc1: $00
    nop                                           ; $4cc2: $00
    nop                                           ; $4cc3: $00
    nop                                           ; $4cc4: $00
    nop                                           ; $4cc5: $00
    nop                                           ; $4cc6: $00
    nop                                           ; $4cc7: $00
    nop                                           ; $4cc8: $00
    nop                                           ; $4cc9: $00
    nop                                           ; $4cca: $00
    nop                                           ; $4ccb: $00
    nop                                           ; $4ccc: $00
    nop                                           ; $4ccd: $00
    nop                                           ; $4cce: $00
    nop                                           ; $4ccf: $00
    nop                                           ; $4cd0: $00
    nop                                           ; $4cd1: $00
    nop                                           ; $4cd2: $00
    nop                                           ; $4cd3: $00
    nop                                           ; $4cd4: $00
    nop                                           ; $4cd5: $00
    nop                                           ; $4cd6: $00
    nop                                           ; $4cd7: $00
    nop                                           ; $4cd8: $00
    nop                                           ; $4cd9: $00
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
    nop                                           ; $4ce7: $00
    nop                                           ; $4ce8: $00
    nop                                           ; $4ce9: $00
    nop                                           ; $4cea: $00
    nop                                           ; $4ceb: $00
    nop                                           ; $4cec: $00
    nop                                           ; $4ced: $00
    nop                                           ; $4cee: $00
    nop                                           ; $4cef: $00
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    nop                                           ; $4cf2: $00
    nop                                           ; $4cf3: $00
    nop                                           ; $4cf4: $00
    nop                                           ; $4cf5: $00
    nop                                           ; $4cf6: $00
    nop                                           ; $4cf7: $00
    nop                                           ; $4cf8: $00
    nop                                           ; $4cf9: $00
    nop                                           ; $4cfa: $00
    nop                                           ; $4cfb: $00
    nop                                           ; $4cfc: $00
    nop                                           ; $4cfd: $00
    nop                                           ; $4cfe: $00
    nop                                           ; $4cff: $00
    nop                                           ; $4d00: $00
    nop                                           ; $4d01: $00
    nop                                           ; $4d02: $00
    nop                                           ; $4d03: $00
    nop                                           ; $4d04: $00
    nop                                           ; $4d05: $00
    nop                                           ; $4d06: $00
    nop                                           ; $4d07: $00
    nop                                           ; $4d08: $00
    nop                                           ; $4d09: $00
    nop                                           ; $4d0a: $00
    nop                                           ; $4d0b: $00
    nop                                           ; $4d0c: $00
    nop                                           ; $4d0d: $00
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
    nop                                           ; $4d1b: $00
    nop                                           ; $4d1c: $00
    nop                                           ; $4d1d: $00
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
    nop                                           ; $4d2c: $00
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

    db $7d, $33, $ff, $ec, $11, $13, $11, $33, $13, $f8, $e1, $46, $ff, $e1, $13, $13
    db $f0, $e0, $f2, $e1, $f0, $e1, $31, $fe, $e0, $35, $33, $fe, $e1, $31, $fe, $e0
    db $33, $31, $e9, $e3, $c1, $e0, $01, $13, $d0, $e6, $c0, $e2, $fe, $e5, $bf, $e2
    db $b0, $e2, $fe, $e2, $98, $ed, $0c, $88, $ed, $ba, $e0, $31, $13, $a6, $e2, $8c
    db $e0, $7a, $e0, $94, $e0, $44, $72, $e2, $60, $e5, $ff, $ff, $ff, $ff, $ff, $f1
    db $f0, $66, $ff, $e4, $1f, $00, $06, $06, $66, $06, $f8, $e1, $ff, $e1, $f0, $e1
    db $de, $e7, $e4, $60, $00, $60, $00, $f3, $e0, $00, $66, $c1, $60, $fe, $e0, $ff
    db $f0, $d1, $e4, $dd, $e2, $d7, $e1, $99, $96, $37, $96, $66, $96, $ab, $e0, $11
    db $99, $ff, $e0, $a3, $e0, $bc, $fc, $e1, $9c, $e1, $69, $91, $69, $91, $f3, $e0
    db $99, $03, $66, $69, $fe, $e0, $f0, $e1, $db, $e1, $83, $e2, $d0, $e3, $d1, $e4
    db $a8, $dd, $e2, $fc, $e2, $c0, $e0, $19, $7b, $c0, $99, $fe, $e1, $91, $f3, $99
    db $11, $68, $e2, $63, $e0, $99, $90, $90, $00, $e1, $90, $5b, $e0, $a0, $e2, $f0
    db $e1, $e7, $e4, $09, $91, $09, $1d, $91, $f3, $e0, $99, $00, $09, $fe, $e0, $f0
    db $e1, $db, $e1, $60, $33, $e2, $d0, $e3, $d1, $e4, $dd, $e2, $d9, $e1, $90, $09
    db $a0, $e0, $09, $91, $a0, $e1, $c6, $e1, $99, $11, $c2, $4d, $e1, $90, $e2, $8a
    db $e0, $b2, $f0, $f1, $91, $e8, $e4, $d4, $e4, $22, $92, $fe, $e0, $11, $7f, $19
    db $19, $99, $99, $92, $92, $22, $fc, $e1, $fe, $ff, $e1, $11, $99, $19, $92, $19
    db $92, $99, $1d, $22, $e2, $e3, $22, $22, $29, $e9, $e3, $e4, $e0, $f0, $e3, $40
    db $e9, $c1, $d7, $e1, $de, $e1, $da, $e1, $88, $e5, $89, $e4, $99, $ac, $e1, $fc
    db $c2, $e0, $f8, $e0, $99, $92, $19, $99, $11, $19, $1c, $c6, $e3, $f1, $e1, $29
    db $91, $29, $f8, $c0, $ad, $e1, $fe, $e0, $00, $bc, $e2, $a2, $e4, $f0, $e1, $84
    db $e2, $a4, $e2, $a7, $e4, $35, $e2, $c0, $c5, $00, $ba, $c0, $7a, $e5, $fe, $fd
    db $98, $c5, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $e6, $a3, $67
    db $c6, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $7a, $9d, $62, $55, $ff
    db $e7, $51, $55, $11, $51, $18, $a6, $f0, $0e, $ed, $c0, $7d, $a0, $75, $38, $60
    db $17, $11, $77, $17, $2f, $77, $11, $11, $77, $ff, $e3, $71, $fe, $e4, $ff, $fc
    db $80, $8e, $df, $ff, $ff, $58, $df, $00, $e7, $30, $d5, $68, $ad, $d0, $c0, $57
    db $e7, $55, $77, $57, $60, $ff, $ea, $e9, $06, $00, $66, $ab, $11, $19, $66, $80
    db $96, $72, $64, $69, $69, $64, $60, $00, $11, $63, $ff, $ff, $ff, $ff, $ff, $ff
    db $f4, $f3, $78, $dd, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $a0, $bf, $ff, $ff, $ff, $ff, $ff, $ff, $00, $a8, $89, $00, $00

    nop                                           ; $4f2f: $00

    db $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $00, $0d, $00, $dd, $0d, $dd, $dd, $7b, $dd, $ee, $ff, $e0
    db $de, $ee, $d0, $00, $f8, $e1, $f7, $ee, $ee, $00, $f8, $e3, $ef, $00, $0f, $f0
    db $7f, $00, $ff, $00, $ff, $f0, $ff, $ff, $dd, $e0, $ff, $d0, $dd, $00, $d0, $00
    db $ff, $ff, $0f, $2e, $ef, $e0, $00, $0f, $bb, $ff, $e4, $99, $ff, $e4, $f0, $e3
    db $ff, $0b, $bb, $00, $00, $b0, $00, $bb, $00, $f3, $bb, $b0, $e8, $e5, $ee, $e0
    db $bb, $00, $0b, $00, $7d, $00, $d0, $e5, $bb, $aa, $bb, $aa, $ba, $fe, $e0, $ca
    db $ff, $e5, $9a, $fe, $e0, $99, $fe, $e1, $b8, $ea, $bb, $bb, $db, $88, $88, $98
    db $e3, $cc, $cc, $88, $e4, $fe, $0f, $7b, $ee, $00, $68, $e0, $ed, $dd, $ee, $d0
    db $61, $e0, $00, $48, $ff, $48, $ff, $90, $ea, $48, $ff, $48, $ff, $48, $ff, $ff
    db $ff, $ff, $ff, $f8, $ff, $ff, $ff, $ff, $f8, $f7, $0e, $ee, $cd, $ee, $bc, $ff
    db $d0, $bb, $b0, $ee, $e0, $ee, $f8, $0f, $f7, $89, $09, $99, $db, $a4, $e0, $dd
    db $ef, $dd, $d7, $ef, $d0, $0f, $c0, $e2, $0c, $ba, $e1, $dd, $d0, $b3, $cc, $cc
    db $10, $c1, $f2, $a2, $08, $00, $d8, $e0, $f0, $1f, $00, $88, $00, $99, $90, $9e
    db $ff, $ff, $ff, $f2, $f1, $43, $08, $88, $96, $a2, $a0, $e0, $9d, $e6, $fe, $a0
    db $0c, $e2, $a4, $01, $cc, $bf, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $e6, $00, $00

    nop                                           ; $506b: $00

    db $70, $50, $70, $58

    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00
    dec b                                         ; $5074: $05
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    nop                                           ; $5077: $00
    dec bc                                        ; $5078: $0b
    nop                                           ; $5079: $00
    nop                                           ; $507a: $00
    nop                                           ; $507b: $00
    nop                                           ; $507c: $00
    nop                                           ; $507d: $00
    ld [bc], a                                    ; $507e: $02
    nop                                           ; $507f: $00
    jr z, jr_050_5082                             ; $5080: $28 $00

jr_050_5082:
    nop                                           ; $5082: $00
    nop                                           ; $5083: $00
    sub b                                         ; $5084: $90
    nop                                           ; $5085: $00
    nop                                           ; $5086: $00
    nop                                           ; $5087: $00
    push af                                       ; $5088: $f5
    nop                                           ; $5089: $00
    ret z                                         ; $508a: $c8

    nop                                           ; $508b: $00
    nop                                           ; $508c: $00
    nop                                           ; $508d: $00
    add b                                         ; $508e: $80
    nop                                           ; $508f: $00
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    nop                                           ; $5093: $00
    ld [bc], a                                    ; $5094: $02
    nop                                           ; $5095: $00
    nop                                           ; $5096: $00
    nop                                           ; $5097: $00
    rla                                           ; $5098: $17
    nop                                           ; $5099: $00
    ld bc, $0000                                  ; $509a: $01 $00 $00
    nop                                           ; $509d: $00
    dec b                                         ; $509e: $05
    nop                                           ; $509f: $00
    ld d, b                                       ; $50a0: $50
    nop                                           ; $50a1: $00
    nop                                           ; $50a2: $00
    nop                                           ; $50a3: $00
    ret z                                         ; $50a4: $c8

    nop                                           ; $50a5: $00
    nop                                           ; $50a6: $00
    nop                                           ; $50a7: $00
    ld [$9000], a                                 ; $50a8: $ea $00 $90
    nop                                           ; $50ab: $00
    nop                                           ; $50ac: $00
    nop                                           ; $50ad: $00
    nop                                           ; $50ae: $00
    nop                                           ; $50af: $00
    nop                                           ; $50b0: $00
    nop                                           ; $50b1: $00
    nop                                           ; $50b2: $00
    nop                                           ; $50b3: $00
    ld bc, $0000                                  ; $50b4: $01 $00 $00
    nop                                           ; $50b7: $00
    cpl                                           ; $50b8: $2f
    nop                                           ; $50b9: $00
    inc bc                                        ; $50ba: $03
    nop                                           ; $50bb: $00
    nop                                           ; $50bc: $00
    nop                                           ; $50bd: $00
    ld [bc], a                                    ; $50be: $02
    nop                                           ; $50bf: $00
    and b                                         ; $50c0: $a0
    nop                                           ; $50c1: $00
    nop                                           ; $50c2: $00
    nop                                           ; $50c3: $00
    ld h, h                                       ; $50c4: $64
    nop                                           ; $50c5: $00
    nop                                           ; $50c6: $00
    nop                                           ; $50c7: $00
    call nc, Call_000_2000                        ; $50c8: $d4 $00 $20
    nop                                           ; $50cb: $00
    nop                                           ; $50cc: $00
    nop                                           ; $50cd: $00
    add b                                         ; $50ce: $80
    nop                                           ; $50cf: $00
    ld bc, $0000                                  ; $50d0: $01 $00 $00
    nop                                           ; $50d3: $00
    nop                                           ; $50d4: $00
    nop                                           ; $50d5: $00
    nop                                           ; $50d6: $00
    nop                                           ; $50d7: $00
    ld e, a                                       ; $50d8: $5f
    nop                                           ; $50d9: $00
    ld b, $00                                     ; $50da: $06 $00
    nop                                           ; $50dc: $00
    nop                                           ; $50dd: $00
    dec b                                         ; $50de: $05
    nop                                           ; $50df: $00
    ld b, b                                       ; $50e0: $40
    nop                                           ; $50e1: $00
    nop                                           ; $50e2: $00
    nop                                           ; $50e3: $00
    or d                                          ; $50e4: $b2
    nop                                           ; $50e5: $00
    nop                                           ; $50e6: $00
    nop                                           ; $50e7: $00
    xor b                                         ; $50e8: $a8
    nop                                           ; $50e9: $00
    ld b, b                                       ; $50ea: $40
    nop                                           ; $50eb: $00
    nop                                           ; $50ec: $00
    nop                                           ; $50ed: $00
    nop                                           ; $50ee: $00
    nop                                           ; $50ef: $00
    ld [bc], a                                    ; $50f0: $02
    nop                                           ; $50f1: $00
    nop                                           ; $50f2: $00
    nop                                           ; $50f3: $00
    nop                                           ; $50f4: $00
    nop                                           ; $50f5: $00
    nop                                           ; $50f6: $00
    nop                                           ; $50f7: $00
    cp a                                          ; $50f8: $bf
    nop                                           ; $50f9: $00
    inc c                                         ; $50fa: $0c

Call_050_50fb:
    nop                                           ; $50fb: $00
    nop                                           ; $50fc: $00
    nop                                           ; $50fd: $00
    ld [bc], a                                    ; $50fe: $02
    nop                                           ; $50ff: $00
    add b                                         ; $5100: $80
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    ld e, c                                       ; $5104: $59
    nop                                           ; $5105: $00
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    ld d, b                                       ; $5108: $50
    nop                                           ; $5109: $00
    add b                                         ; $510a: $80
    nop                                           ; $510b: $00
    nop                                           ; $510c: $00
    nop                                           ; $510d: $00
    add b                                         ; $510e: $80
    nop                                           ; $510f: $00
    db $ec                                        ; $5110: $ec
    rst $38                                       ; $5111: $ff
    ld hl, sp-$01                                 ; $5112: $f8 $ff
    ldh [$fe], a                                  ; $5114: $e0 $fe
    ld b, d                                       ; $5116: $42
    ld hl, sp-$38                                 ; $5117: $f8 $c8
    ldh a, [$80]                                  ; $5119: $f0 $80
    ldh [rNR10], a                                ; $511b: $e0 $10
    ldh [rP1], a                                  ; $511d: $e0 $00
    ret nz                                        ; $511f: $c0

    rst $38                                       ; $5120: $ff
    rst $38                                       ; $5121: $ff
    rst $38                                       ; $5122: $ff
    rst $38                                       ; $5123: $ff
    rst $38                                       ; $5124: $ff
    rst $38                                       ; $5125: $ff
    rst $30                                       ; $5126: $f7
    rst $38                                       ; $5127: $ff
    cp h                                          ; $5128: $bc
    rst $38                                       ; $5129: $ff
    add sp, -$01                                  ; $512a: $e8 $ff
    add c                                         ; $512c: $81
    cp $08                                        ; $512d: $fe $08
    ldh a, [$bc]                                  ; $512f: $f0 $bc
    rst $38                                       ; $5131: $ff

jr_050_5132:
    add sp, -$01                                  ; $5132: $e8 $ff
    add c                                         ; $5134: $81
    cp $08                                        ; $5135: $fe $08
    ldh a, [rNR41]                                ; $5137: $f0 $20
    ret nz                                        ; $5139: $c0

    nop                                           ; $513a: $00
    nop                                           ; $513b: $00
    nop                                           ; $513c: $00
    nop                                           ; $513d: $00
    nop                                           ; $513e: $00
    nop                                           ; $513f: $00

jr_050_5140:
    ld a, a                                       ; $5140: $7f
    rst $38                                       ; $5141: $ff
    cpl                                           ; $5142: $2f
    rst $38                                       ; $5143: $ff
    ccf                                           ; $5144: $3f
    rst $38                                       ; $5145: $ff
    rra                                           ; $5146: $1f
    rst $38                                       ; $5147: $ff
    or a                                          ; $5148: $b7
    ld a, a                                       ; $5149: $7f
    rra                                           ; $514a: $1f
    ld a, a                                       ; $514b: $7f
    rrca                                          ; $514c: $0f
    ld a, a                                       ; $514d: $7f
    ld c, a                                       ; $514e: $4f
    ccf                                           ; $514f: $3f
    rlca                                          ; $5150: $07
    rra                                           ; $5151: $1f
    ld [bc], a                                    ; $5152: $02
    rra                                           ; $5153: $1f
    inc de                                        ; $5154: $13
    rrca                                          ; $5155: $0f
    ld bc, $0b0f                                  ; $5156: $01 $0f $0b
    rlca                                          ; $5159: $07
    ld bc, $0007                                  ; $515a: $01 $07 $00
    rlca                                          ; $515d: $07
    inc b                                         ; $515e: $04
    inc bc                                        ; $515f: $03
    ld e, h                                       ; $5160: $5c
    rst $38                                       ; $5161: $ff
    nop                                           ; $5162: $00
    rst $38                                       ; $5163: $ff
    add c                                         ; $5164: $81
    inc a                                         ; $5165: $3c
    stop                                          ; $5166: $10 $00
    nop                                           ; $5168: $00
    nop                                           ; $5169: $00
    nop                                           ; $516a: $00
    nop                                           ; $516b: $00
    nop                                           ; $516c: $00
    nop                                           ; $516d: $00
    nop                                           ; $516e: $00
    nop                                           ; $516f: $00
    jr nz, jr_050_5132                            ; $5170: $20 $c0

    add b                                         ; $5172: $80
    ret nz                                        ; $5173: $c0

    nop                                           ; $5174: $00
    ldh [$90], a                                  ; $5175: $e0 $90
    ldh [$80], a                                  ; $5177: $e0 $80
    ldh [$80], a                                  ; $5179: $e0 $80
    ldh [rP1], a                                  ; $517b: $e0 $00
    ret nz                                        ; $517d: $c0

    jr nz, jr_050_5140                            ; $517e: $20 $c0

    rst $38                                       ; $5180: $ff
    rst $38                                       ; $5181: $ff

jr_050_5182:
    ld a, l                                       ; $5182: $7d
    rst $38                                       ; $5183: $ff
    rst $28                                       ; $5184: $ef
    rst $38                                       ; $5185: $ff
    ld a, [hl-]                                   ; $5186: $3a
    rst $38                                       ; $5187: $ff
    nop                                           ; $5188: $00
    rst $38                                       ; $5189: $ff
    add c                                         ; $518a: $81
    inc a                                         ; $518b: $3c
    ld [$0000], sp                                ; $518c: $08 $00 $00
    nop                                           ; $518f: $00
    and h                                         ; $5190: $a4
    ld hl, sp-$20                                 ; $5191: $f8 $e0
    ld hl, sp-$10                                 ; $5193: $f8 $f0
    db $fc                                        ; $5195: $fc
    ret nc                                        ; $5196: $d0

    db $fc                                        ; $5197: $fc
    ld a, [c]                                     ; $5198: $f2
    db $fc                                        ; $5199: $fc
    ldh [$fc], a                                  ; $519a: $e0 $fc
    or b                                          ; $519c: $b0
    ld hl, sp-$1c                                 ; $519d: $f8 $e4
    ld hl, sp-$01                                 ; $519f: $f8 $ff
    rst $38                                       ; $51a1: $ff
    rst $38                                       ; $51a2: $ff
    rst $38                                       ; $51a3: $ff
    rst $38                                       ; $51a4: $ff
    rst $38                                       ; $51a5: $ff
    rst $30                                       ; $51a6: $f7
    rst $38                                       ; $51a7: $ff
    cp [hl]                                       ; $51a8: $be
    rst $38                                       ; $51a9: $ff
    db $e3                                        ; $51aa: $e3
    rst $38                                       ; $51ab: $ff
    ld b, b                                       ; $51ac: $40
    rst $38                                       ; $51ad: $ff
    nop                                           ; $51ae: $00
    rst $20                                       ; $51af: $e7
    db $fc                                        ; $51b0: $fc
    rst $38                                       ; $51b1: $ff

jr_050_51b2:
    or $ff                                        ; $51b2: $f6 $ff
    db $fc                                        ; $51b4: $fc
    rst $38                                       ; $51b5: $ff
    ld hl, sp-$02                                 ; $51b6: $f8 $fe
    add sp, -$02                                  ; $51b8: $e8 $fe
    ld hl, sp-$01                                 ; $51ba: $f8 $ff
    db $fc                                        ; $51bc: $fc
    rst $38                                       ; $51bd: $ff
    db $f4                                        ; $51be: $f4
    rst $38                                       ; $51bf: $ff
    jr nz, jr_050_5182                            ; $51c0: $20 $c0

    nop                                           ; $51c2: $00
    add b                                         ; $51c3: $80
    nop                                           ; $51c4: $00
    nop                                           ; $51c5: $00
    nop                                           ; $51c6: $00
    nop                                           ; $51c7: $00
    nop                                           ; $51c8: $00
    nop                                           ; $51c9: $00
    nop                                           ; $51ca: $00
    nop                                           ; $51cb: $00
    nop                                           ; $51cc: $00
    nop                                           ; $51cd: $00

jr_050_51ce:
    nop                                           ; $51ce: $00
    nop                                           ; $51cf: $00
    nop                                           ; $51d0: $00
    ret nz                                        ; $51d1: $c0

    nop                                           ; $51d2: $00
    add b                                         ; $51d3: $80
    add b                                         ; $51d4: $80
    nop                                           ; $51d5: $00
    nop                                           ; $51d6: $00
    nop                                           ; $51d7: $00
    nop                                           ; $51d8: $00
    nop                                           ; $51d9: $00
    nop                                           ; $51da: $00
    nop                                           ; $51db: $00
    nop                                           ; $51dc: $00
    nop                                           ; $51dd: $00
    nop                                           ; $51de: $00
    nop                                           ; $51df: $00
    nop                                           ; $51e0: $00
    ret nz                                        ; $51e1: $c0

    ld b, b                                       ; $51e2: $40
    add b                                         ; $51e3: $80
    nop                                           ; $51e4: $00
    nop                                           ; $51e5: $00
    nop                                           ; $51e6: $00
    nop                                           ; $51e7: $00
    nop                                           ; $51e8: $00
    nop                                           ; $51e9: $00
    nop                                           ; $51ea: $00
    nop                                           ; $51eb: $00
    nop                                           ; $51ec: $00
    nop                                           ; $51ed: $00
    nop                                           ; $51ee: $00
    nop                                           ; $51ef: $00
    jr nz, jr_050_51b2                            ; $51f0: $20 $c0

    nop                                           ; $51f2: $00
    add b                                         ; $51f3: $80
    add b                                         ; $51f4: $80
    nop                                           ; $51f5: $00
    nop                                           ; $51f6: $00
    nop                                           ; $51f7: $00
    nop                                           ; $51f8: $00
    nop                                           ; $51f9: $00
    nop                                           ; $51fa: $00
    nop                                           ; $51fb: $00
    nop                                           ; $51fc: $00
    nop                                           ; $51fd: $00
    nop                                           ; $51fe: $00
    nop                                           ; $51ff: $00
    db $ec                                        ; $5200: $ec
    rst $38                                       ; $5201: $ff
    ld sp, hl                                     ; $5202: $f9
    cp $e6                                        ; $5203: $fe $e6
    ld hl, sp+$48                                 ; $5205: $f8 $48
    ldh a, [$d0]                                  ; $5207: $f0 $d0
    ldh [$a8], a                                  ; $5209: $e0 $a8
    ret nz                                        ; $520b: $c0

    jr nz, jr_050_51ce                            ; $520c: $20 $c0

    ld b, b                                       ; $520e: $40
    add b                                         ; $520f: $80
    rst $38                                       ; $5210: $ff
    rst $38                                       ; $5211: $ff
    rst $38                                       ; $5212: $ff
    rst $38                                       ; $5213: $ff
    rst $38                                       ; $5214: $ff
    rst $38                                       ; $5215: $ff
    rst $30                                       ; $5216: $f7
    rst $38                                       ; $5217: $ff
    cp h                                          ; $5218: $bc
    rst $38                                       ; $5219: $ff
    jp hl                                         ; $521a: $e9


    cp $8e                                        ; $521b: $fe $8e
    ldh a, [$30]                                  ; $521d: $f0 $30
    ret nz                                        ; $521f: $c0

    cp h                                          ; $5220: $bc
    rst $38                                       ; $5221: $ff
    jp hl                                         ; $5222: $e9


    cp $8e                                        ; $5223: $fe $8e
    ldh a, [$30]                                  ; $5225: $f0 $30
    ret nz                                        ; $5227: $c0

    ret z                                         ; $5228: $c8

    nop                                           ; $5229: $00
    nop                                           ; $522a: $00
    nop                                           ; $522b: $00
    nop                                           ; $522c: $00
    nop                                           ; $522d: $00
    nop                                           ; $522e: $00
    nop                                           ; $522f: $00
    ld a, a                                       ; $5230: $7f
    rst $38                                       ; $5231: $ff
    cpl                                           ; $5232: $2f
    rst $38                                       ; $5233: $ff
    cp a                                          ; $5234: $bf
    ld a, a                                       ; $5235: $7f
    sbc a                                         ; $5236: $9f
    ld a, a                                       ; $5237: $7f
    ld [hl], a                                    ; $5238: $77
    ccf                                           ; $5239: $3f
    ld e, a                                       ; $523a: $5f
    ccf                                           ; $523b: $3f
    ld c, a                                       ; $523c: $4f
    ccf                                           ; $523d: $3f
    cpl                                           ; $523e: $2f
    rra                                           ; $523f: $1f
    rla                                           ; $5240: $17
    rrca                                          ; $5241: $0f
    ld [de], a                                    ; $5242: $12
    rrca                                          ; $5243: $0f
    dec bc                                        ; $5244: $0b
    rlca                                          ; $5245: $07
    add hl, bc                                    ; $5246: $09
    rlca                                          ; $5247: $07
    rla                                           ; $5248: $17
    inc bc                                        ; $5249: $03
    dec b                                         ; $524a: $05
    inc bc                                        ; $524b: $03
    inc b                                         ; $524c: $04
    inc bc                                        ; $524d: $03
    ld [bc], a                                    ; $524e: $02
    ld bc, $ff5c                                  ; $524f: $01 $5c $ff
    jp Jump_000_3c3c                              ; $5252: $c3 $3c $3c


    nop                                           ; $5255: $00
    ld [bc], a                                    ; $5256: $02
    nop                                           ; $5257: $00
    nop                                           ; $5258: $00
    nop                                           ; $5259: $00
    nop                                           ; $525a: $00
    nop                                           ; $525b: $00
    nop                                           ; $525c: $00
    nop                                           ; $525d: $00
    nop                                           ; $525e: $00
    nop                                           ; $525f: $00
    ld b, b                                       ; $5260: $40
    add b                                         ; $5261: $80
    ret nz                                        ; $5262: $c0

    add b                                         ; $5263: $80
    jr nz, @-$3e                                  ; $5264: $20 $c0

    and b                                         ; $5266: $a0
    ret nz                                        ; $5267: $c0

    and b                                         ; $5268: $a0
    ret nz                                        ; $5269: $c0

    and b                                         ; $526a: $a0
    ret nz                                        ; $526b: $c0

    ld d, b                                       ; $526c: $50
    add b                                         ; $526d: $80
    ld b, b                                       ; $526e: $40
    add b                                         ; $526f: $80
    rst $38                                       ; $5270: $ff
    rst $38                                       ; $5271: $ff
    ld a, l                                       ; $5272: $7d
    rst $38                                       ; $5273: $ff
    rst $28                                       ; $5274: $ef
    rst $38                                       ; $5275: $ff
    ld a, [hl-]                                   ; $5276: $3a
    rst $38                                       ; $5277: $ff
    jp Jump_000_3c3c                              ; $5278: $c3 $3c $3c


    nop                                           ; $527b: $00
    ld b, b                                       ; $527c: $40
    nop                                           ; $527d: $00
    nop                                           ; $527e: $00
    nop                                           ; $527f: $00
    xor b                                         ; $5280: $a8
    ldh a, [$ea]                                  ; $5281: $f0 $ea
    ldh a, [$f4]                                  ; $5283: $f0 $f4
    ld hl, sp-$2c                                 ; $5285: $f8 $d4
    ld hl, sp-$0c                                 ; $5287: $f8 $f4
    ld hl, sp-$1c                                 ; $5289: $f8 $e4
    ld hl, sp-$48                                 ; $528b: $f8 $b8
    ldh a, [$e8]                                  ; $528d: $f0 $e8
    ldh a, [rIE]                                  ; $528f: $f0 $ff
    rst $38                                       ; $5291: $ff
    rst $38                                       ; $5292: $ff
    rst $38                                       ; $5293: $ff
    rst $38                                       ; $5294: $ff
    rst $38                                       ; $5295: $ff
    rst $30                                       ; $5296: $f7
    rst $38                                       ; $5297: $ff
    cp [hl]                                       ; $5298: $be
    rst $38                                       ; $5299: $ff
    db $e3                                        ; $529a: $e3
    rst $38                                       ; $529b: $ff
    ld e, b                                       ; $529c: $58
    rst $20                                       ; $529d: $e7
    ld h, [hl]                                    ; $529e: $66
    add c                                         ; $529f: $81
    db $fc                                        ; $52a0: $fc
    rst $38                                       ; $52a1: $ff
    rst $30                                       ; $52a2: $f7
    cp $fd                                        ; $52a3: $fe $fd
    cp $fa                                        ; $52a5: $fe $fa
    db $fc                                        ; $52a7: $fc
    ld [$f9fc], a                                 ; $52a8: $ea $fc $f9
    cp $fd                                        ; $52ab: $fe $fd
    cp $f4                                        ; $52ad: $fe $f4
    rst $38                                       ; $52af: $ff
    ld c, b                                       ; $52b0: $48
    add b                                         ; $52b1: $80
    add b                                         ; $52b2: $80
    nop                                           ; $52b3: $00
    nop                                           ; $52b4: $00
    nop                                           ; $52b5: $00
    nop                                           ; $52b6: $00
    nop                                           ; $52b7: $00
    nop                                           ; $52b8: $00
    nop                                           ; $52b9: $00
    nop                                           ; $52ba: $00
    nop                                           ; $52bb: $00
    nop                                           ; $52bc: $00
    nop                                           ; $52bd: $00
    nop                                           ; $52be: $00
    nop                                           ; $52bf: $00
    ld b, b                                       ; $52c0: $40
    add b                                         ; $52c1: $80
    add b                                         ; $52c2: $80
    nop                                           ; $52c3: $00
    nop                                           ; $52c4: $00
    nop                                           ; $52c5: $00
    nop                                           ; $52c6: $00
    nop                                           ; $52c7: $00
    add b                                         ; $52c8: $80
    nop                                           ; $52c9: $00
    nop                                           ; $52ca: $00
    nop                                           ; $52cb: $00
    nop                                           ; $52cc: $00
    nop                                           ; $52cd: $00
    nop                                           ; $52ce: $00
    nop                                           ; $52cf: $00
    ret nz                                        ; $52d0: $c0

    nop                                           ; $52d1: $00
    add b                                         ; $52d2: $80
    nop                                           ; $52d3: $00
    nop                                           ; $52d4: $00
    nop                                           ; $52d5: $00
    nop                                           ; $52d6: $00
    nop                                           ; $52d7: $00
    nop                                           ; $52d8: $00
    nop                                           ; $52d9: $00
    nop                                           ; $52da: $00
    nop                                           ; $52db: $00
    nop                                           ; $52dc: $00
    nop                                           ; $52dd: $00
    nop                                           ; $52de: $00
    nop                                           ; $52df: $00
    add b                                         ; $52e0: $80
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    nop                                           ; $52e3: $00
    nop                                           ; $52e4: $00
    nop                                           ; $52e5: $00
    nop                                           ; $52e6: $00
    nop                                           ; $52e7: $00
    nop                                           ; $52e8: $00
    nop                                           ; $52e9: $00
    nop                                           ; $52ea: $00
    nop                                           ; $52eb: $00
    nop                                           ; $52ec: $00
    nop                                           ; $52ed: $00
    nop                                           ; $52ee: $00
    nop                                           ; $52ef: $00
    db $ed                                        ; $52f0: $ed
    cp $fe                                        ; $52f1: $fe $fe
    ld hl, sp-$18                                 ; $52f3: $f8 $e8
    ldh a, [rHDMA2]                               ; $52f5: $f0 $52
    ldh [$e8], a                                  ; $52f7: $e0 $e8
    ret nz                                        ; $52f9: $c0

    ret nz                                        ; $52fa: $c0

    add b                                         ; $52fb: $80
    ld d, b                                       ; $52fc: $50
    add b                                         ; $52fd: $80
    add b                                         ; $52fe: $80
    nop                                           ; $52ff: $00
    rst $38                                       ; $5300: $ff
    rst $38                                       ; $5301: $ff
    rst $38                                       ; $5302: $ff
    rst $38                                       ; $5303: $ff
    rst $38                                       ; $5304: $ff
    rst $38                                       ; $5305: $ff
    rst $30                                       ; $5306: $f7
    rst $38                                       ; $5307: $ff
    cp l                                          ; $5308: $bd
    cp $ee                                        ; $5309: $fe $ee
    ldh a, [$b1]                                  ; $530b: $f0 $b1
    ret nz                                        ; $530d: $c0

    ret z                                         ; $530e: $c8

    nop                                           ; $530f: $00
    cp l                                          ; $5310: $bd
    cp $ee                                        ; $5311: $fe $ee
    ldh a, [$b1]                                  ; $5313: $f0 $b1
    ret nz                                        ; $5315: $c0

    ret z                                         ; $5316: $c8

    nop                                           ; $5317: $00
    jr nz, jr_050_531a                            ; $5318: $20 $00

jr_050_531a:
    nop                                           ; $531a: $00
    nop                                           ; $531b: $00
    nop                                           ; $531c: $00
    nop                                           ; $531d: $00
    nop                                           ; $531e: $00
    nop                                           ; $531f: $00
    rst $38                                       ; $5320: $ff
    ld a, a                                       ; $5321: $7f
    xor a                                         ; $5322: $af
    ld a, a                                       ; $5323: $7f
    ld a, a                                       ; $5324: $7f
    ccf                                           ; $5325: $3f
    ld e, a                                       ; $5326: $5f
    ccf                                           ; $5327: $3f
    or a                                          ; $5328: $b7
    rra                                           ; $5329: $1f
    ccf                                           ; $532a: $3f
    rra                                           ; $532b: $1f
    cpl                                           ; $532c: $2f
    rra                                           ; $532d: $1f
    ld e, a                                       ; $532e: $5f
    rrca                                          ; $532f: $0f
    rrca                                          ; $5330: $0f
    rlca                                          ; $5331: $07
    ld a, [bc]                                    ; $5332: $0a
    rlca                                          ; $5333: $07
    rla                                           ; $5334: $17
    inc bc                                        ; $5335: $03
    dec b                                         ; $5336: $05
    inc bc                                        ; $5337: $03
    dec bc                                        ; $5338: $0b
    ld bc, $0103                                  ; $5339: $01 $03 $01
    ld [bc], a                                    ; $533c: $02
    ld bc, $0005                                  ; $533d: $01 $05 $00
    rst $18                                       ; $5340: $df
    inc a                                         ; $5341: $3c
    inc a                                         ; $5342: $3c
    nop                                           ; $5343: $00
    ld b, d                                       ; $5344: $42
    nop                                           ; $5345: $00
    nop                                           ; $5346: $00
    nop                                           ; $5347: $00
    nop                                           ; $5348: $00
    nop                                           ; $5349: $00
    nop                                           ; $534a: $00
    nop                                           ; $534b: $00
    nop                                           ; $534c: $00
    nop                                           ; $534d: $00
    nop                                           ; $534e: $00
    nop                                           ; $534f: $00
    add b                                         ; $5350: $80
    nop                                           ; $5351: $00
    and b                                         ; $5352: $a0
    nop                                           ; $5353: $00
    ld b, b                                       ; $5354: $40
    add b                                         ; $5355: $80
    ret nz                                        ; $5356: $c0

    add b                                         ; $5357: $80
    ret nz                                        ; $5358: $c0

    add b                                         ; $5359: $80
    ret nz                                        ; $535a: $c0

    add b                                         ; $535b: $80
    and b                                         ; $535c: $a0
    nop                                           ; $535d: $00
    add b                                         ; $535e: $80
    nop                                           ; $535f: $00
    rst $38                                       ; $5360: $ff
    rst $38                                       ; $5361: $ff
    ld a, l                                       ; $5362: $7d
    rst $38                                       ; $5363: $ff
    rst $28                                       ; $5364: $ef
    rst $38                                       ; $5365: $ff
    ei                                            ; $5366: $fb
    inc a                                         ; $5367: $3c
    inc a                                         ; $5368: $3c
    nop                                           ; $5369: $00
    ld b, d                                       ; $536a: $42
    nop                                           ; $536b: $00
    nop                                           ; $536c: $00
    nop                                           ; $536d: $00
    nop                                           ; $536e: $00
    nop                                           ; $536f: $00
    or b                                          ; $5370: $b0
    ldh [$f4], a                                  ; $5371: $e0 $f4
    ldh [$f8], a                                  ; $5373: $e0 $f8
    ldh a, [$d8]                                  ; $5375: $f0 $d8
    ldh a, [$f8]                                  ; $5377: $f0 $f8
    ldh a, [$e8]                                  ; $5379: $f0 $e8
    ldh a, [$b4]                                  ; $537b: $f0 $b4
    ldh [$f0], a                                  ; $537d: $e0 $f0
    ldh [rIE], a                                  ; $537f: $e0 $ff
    rst $38                                       ; $5381: $ff
    rst $38                                       ; $5382: $ff
    rst $38                                       ; $5383: $ff
    rst $38                                       ; $5384: $ff
    rst $38                                       ; $5385: $ff
    rst $30                                       ; $5386: $f7
    rst $38                                       ; $5387: $ff
    cp [hl]                                       ; $5388: $be
    rst $38                                       ; $5389: $ff
    ei                                            ; $538a: $fb
    rst $20                                       ; $538b: $e7
    ld h, [hl]                                    ; $538c: $66
    add c                                         ; $538d: $81
    sub c                                         ; $538e: $91
    nop                                           ; $538f: $00
    db $fd                                        ; $5390: $fd
    cp $f6                                        ; $5391: $fe $f6
    db $fc                                        ; $5393: $fc
    cp $fc                                        ; $5394: $fe $fc
    db $fd                                        ; $5396: $fd
    ld hl, sp-$14                                 ; $5397: $f8 $ec
    ld hl, sp-$06                                 ; $5399: $f8 $fa
    db $fc                                        ; $539b: $fc
    cp $fc                                        ; $539c: $fe $fc
    push af                                       ; $539e: $f5
    cp $20                                        ; $539f: $fe $20
    nop                                           ; $53a1: $00
    nop                                           ; $53a2: $00
    nop                                           ; $53a3: $00
    nop                                           ; $53a4: $00
    nop                                           ; $53a5: $00
    nop                                           ; $53a6: $00
    nop                                           ; $53a7: $00
    nop                                           ; $53a8: $00
    nop                                           ; $53a9: $00
    nop                                           ; $53aa: $00
    nop                                           ; $53ab: $00
    nop                                           ; $53ac: $00
    nop                                           ; $53ad: $00
    nop                                           ; $53ae: $00
    nop                                           ; $53af: $00
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    nop                                           ; $53b2: $00
    nop                                           ; $53b3: $00
    add b                                         ; $53b4: $80
    nop                                           ; $53b5: $00
    nop                                           ; $53b6: $00
    nop                                           ; $53b7: $00
    nop                                           ; $53b8: $00
    nop                                           ; $53b9: $00
    nop                                           ; $53ba: $00
    nop                                           ; $53bb: $00
    nop                                           ; $53bc: $00
    nop                                           ; $53bd: $00
    nop                                           ; $53be: $00
    nop                                           ; $53bf: $00
    and b                                         ; $53c0: $a0
    nop                                           ; $53c1: $00
    nop                                           ; $53c2: $00
    nop                                           ; $53c3: $00
    add b                                         ; $53c4: $80
    nop                                           ; $53c5: $00
    nop                                           ; $53c6: $00
    nop                                           ; $53c7: $00
    nop                                           ; $53c8: $00
    nop                                           ; $53c9: $00
    nop                                           ; $53ca: $00
    nop                                           ; $53cb: $00
    nop                                           ; $53cc: $00
    nop                                           ; $53cd: $00
    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    ld b, b                                       ; $53d2: $40
    nop                                           ; $53d3: $00
    nop                                           ; $53d4: $00
    nop                                           ; $53d5: $00
    nop                                           ; $53d6: $00
    nop                                           ; $53d7: $00
    nop                                           ; $53d8: $00
    nop                                           ; $53d9: $00
    nop                                           ; $53da: $00
    nop                                           ; $53db: $00
    nop                                           ; $53dc: $00
    nop                                           ; $53dd: $00
    nop                                           ; $53de: $00
    nop                                           ; $53df: $00
    ld [bc], a                                    ; $53e0: $02
    add c                                         ; $53e1: $81
    and b                                         ; $53e2: $a0
    pop bc                                        ; $53e3: $c1
    add b                                         ; $53e4: $80
    pop bc                                        ; $53e5: $c1
    add l                                         ; $53e6: $85
    jp $c3a1                                      ; $53e7: $c3 $a1 $c3


    nop                                           ; $53ea: $00
    add e                                         ; $53eb: $83
    dec b                                         ; $53ec: $05
    add e                                         ; $53ed: $83
    ld b, b                                       ; $53ee: $40
    add c                                         ; $53ef: $81
    ld b, c                                       ; $53f0: $41
    add b                                         ; $53f1: $80
    nop                                           ; $53f2: $00
    add b                                         ; $53f3: $80
    add b                                         ; $53f4: $80
    ret nz                                        ; $53f5: $c0

    and b                                         ; $53f6: $a0
    ret nz                                        ; $53f7: $c0

    ret nz                                        ; $53f8: $c0

    ldh [rBCPS], a                                ; $53f9: $e0 $68
    ldh a, [$f1]                                  ; $53fb: $f0 $f1
    db $fc                                        ; $53fd: $fc
    call c, Call_000_1eff                         ; $53fe: $dc $ff $1e
    rst $38                                       ; $5401: $ff
    add b                                         ; $5402: $80
    ld e, $12                                     ; $5403: $1e $12
    nop                                           ; $5405: $00
    nop                                           ; $5406: $00
    nop                                           ; $5407: $00
    nop                                           ; $5408: $00
    nop                                           ; $5409: $00
    ld c, b                                       ; $540a: $48
    nop                                           ; $540b: $00
    ld bc, $5878                                  ; $540c: $01 $78 $58
    rst $38                                       ; $540f: $ff
    ld b, b                                       ; $5410: $40
    add c                                         ; $5411: $81
    add d                                         ; $5412: $82
    pop bc                                        ; $5413: $c1
    and b                                         ; $5414: $a0
    pop bc                                        ; $5415: $c1
    and c                                         ; $5416: $a1
    jp $c385                                      ; $5417: $c3 $85 $c3


    inc b                                         ; $541a: $04
    add e                                         ; $541b: $83
    ld b, c                                       ; $541c: $41
    add e                                         ; $541d: $83
    ld [bc], a                                    ; $541e: $02
    add c                                         ; $541f: $81
    nop                                           ; $5420: $00
    add b                                         ; $5421: $80
    nop                                           ; $5422: $00
    add b                                         ; $5423: $80
    and b                                         ; $5424: $a0
    ret nz                                        ; $5425: $c0

    add b                                         ; $5426: $80
    ret nz                                        ; $5427: $c0

    ret nc                                        ; $5428: $d0

    ldh [$64], a                                  ; $5429: $e0 $64
    ldh a, [$f0]                                  ; $542b: $f0 $f0
    db $fc                                        ; $542d: $fc
    call c, Call_000_1eff                         ; $542e: $dc $ff $1e
    rst $38                                       ; $5431: $ff
    ld b, c                                       ; $5432: $41
    ld e, $0c                                     ; $5433: $1e $0c
    nop                                           ; $5435: $00
    nop                                           ; $5436: $00
    nop                                           ; $5437: $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    jr nc, jr_050_543c                            ; $543a: $30 $00

jr_050_543c:
    add d                                         ; $543c: $82
    ld a, b                                       ; $543d: $78
    ld e, b                                       ; $543e: $58
    rst $38                                       ; $543f: $ff
    nop                                           ; $5440: $00
    ret nz                                        ; $5441: $c0

    ld b, b                                       ; $5442: $40
    add b                                         ; $5443: $80
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    nop                                           ; $5446: $00
    nop                                           ; $5447: $00
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    nop                                           ; $544a: $00
    nop                                           ; $544b: $00
    ld [bc], a                                    ; $544c: $02
    ld bc, $0300                                  ; $544d: $01 $00 $03
    ret nz                                        ; $5450: $c0

    nop                                           ; $5451: $00
    add b                                         ; $5452: $80
    nop                                           ; $5453: $00
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    nop                                           ; $5456: $00
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545a: $00
    nop                                           ; $545b: $00
    ld bc, $0300                                  ; $545c: $01 $00 $03
    nop                                           ; $545f: $00
    and b                                         ; $5460: $a0
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    add b                                         ; $5464: $80
    nop                                           ; $5465: $00
    nop                                           ; $5466: $00
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    ld bc, $0000                                  ; $546a: $01 $00 $00
    nop                                           ; $546d: $00
    dec b                                         ; $546e: $05
    nop                                           ; $546f: $00
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    nop                                           ; $5474: $00
    nop                                           ; $5475: $00
    nop                                           ; $5476: $00
    nop                                           ; $5477: $00
    nop                                           ; $5478: $00
    nop                                           ; $5479: $00
    nop                                           ; $547a: $00
    nop                                           ; $547b: $00
    nop                                           ; $547c: $00
    nop                                           ; $547d: $00
    nop                                           ; $547e: $00
    nop                                           ; $547f: $00
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    nop                                           ; $5484: $00
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    nop                                           ; $548a: $00
    nop                                           ; $548b: $00
    nop                                           ; $548c: $00
    nop                                           ; $548d: $00
    nop                                           ; $548e: $00
    nop                                           ; $548f: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    nop                                           ; $5493: $00
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    nop                                           ; $5496: $00
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    nop                                           ; $549a: $00
    nop                                           ; $549b: $00
    nop                                           ; $549c: $00
    nop                                           ; $549d: $00
    nop                                           ; $549e: $00
    nop                                           ; $549f: $00
    nop                                           ; $54a0: $00
    nop                                           ; $54a1: $00
    nop                                           ; $54a2: $00
    nop                                           ; $54a3: $00
    nop                                           ; $54a4: $00
    nop                                           ; $54a5: $00
    nop                                           ; $54a6: $00
    nop                                           ; $54a7: $00
    nop                                           ; $54a8: $00
    nop                                           ; $54a9: $00
    nop                                           ; $54aa: $00
    nop                                           ; $54ab: $00
    nop                                           ; $54ac: $00
    nop                                           ; $54ad: $00
    nop                                           ; $54ae: $00
    nop                                           ; $54af: $00
    nop                                           ; $54b0: $00
    nop                                           ; $54b1: $00
    nop                                           ; $54b2: $00
    nop                                           ; $54b3: $00
    nop                                           ; $54b4: $00
    nop                                           ; $54b5: $00
    nop                                           ; $54b6: $00
    nop                                           ; $54b7: $00
    nop                                           ; $54b8: $00
    nop                                           ; $54b9: $00
    nop                                           ; $54ba: $00
    nop                                           ; $54bb: $00
    nop                                           ; $54bc: $00
    nop                                           ; $54bd: $00
    nop                                           ; $54be: $00
    nop                                           ; $54bf: $00
    nop                                           ; $54c0: $00
    nop                                           ; $54c1: $00
    nop                                           ; $54c2: $00
    nop                                           ; $54c3: $00
    nop                                           ; $54c4: $00
    nop                                           ; $54c5: $00
    nop                                           ; $54c6: $00
    nop                                           ; $54c7: $00
    nop                                           ; $54c8: $00
    nop                                           ; $54c9: $00
    nop                                           ; $54ca: $00
    nop                                           ; $54cb: $00
    nop                                           ; $54cc: $00
    nop                                           ; $54cd: $00
    nop                                           ; $54ce: $00
    nop                                           ; $54cf: $00
    nop                                           ; $54d0: $00
    nop                                           ; $54d1: $00
    nop                                           ; $54d2: $00
    nop                                           ; $54d3: $00
    nop                                           ; $54d4: $00
    nop                                           ; $54d5: $00
    nop                                           ; $54d6: $00
    nop                                           ; $54d7: $00
    nop                                           ; $54d8: $00
    nop                                           ; $54d9: $00
    nop                                           ; $54da: $00
    nop                                           ; $54db: $00
    nop                                           ; $54dc: $00
    nop                                           ; $54dd: $00
    nop                                           ; $54de: $00
    nop                                           ; $54df: $00
    nop                                           ; $54e0: $00
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    nop                                           ; $54e3: $00
    nop                                           ; $54e4: $00
    nop                                           ; $54e5: $00
    nop                                           ; $54e6: $00
    nop                                           ; $54e7: $00
    nop                                           ; $54e8: $00
    nop                                           ; $54e9: $00
    nop                                           ; $54ea: $00
    nop                                           ; $54eb: $00
    nop                                           ; $54ec: $00
    nop                                           ; $54ed: $00
    nop                                           ; $54ee: $00
    nop                                           ; $54ef: $00
    nop                                           ; $54f0: $00
    nop                                           ; $54f1: $00
    nop                                           ; $54f2: $00
    nop                                           ; $54f3: $00
    nop                                           ; $54f4: $00
    nop                                           ; $54f5: $00
    nop                                           ; $54f6: $00
    nop                                           ; $54f7: $00
    nop                                           ; $54f8: $00
    nop                                           ; $54f9: $00
    nop                                           ; $54fa: $00
    nop                                           ; $54fb: $00
    nop                                           ; $54fc: $00
    nop                                           ; $54fd: $00
    nop                                           ; $54fe: $00
    nop                                           ; $54ff: $00
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    nop                                           ; $5504: $00
    nop                                           ; $5505: $00
    nop                                           ; $5506: $00
    nop                                           ; $5507: $00
    nop                                           ; $5508: $00
    nop                                           ; $5509: $00
    nop                                           ; $550a: $00
    nop                                           ; $550b: $00
    nop                                           ; $550c: $00
    nop                                           ; $550d: $00
    nop                                           ; $550e: $00
    nop                                           ; $550f: $00
    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00
    nop                                           ; $5517: $00
    nop                                           ; $5518: $00
    nop                                           ; $5519: $00
    nop                                           ; $551a: $00
    nop                                           ; $551b: $00
    nop                                           ; $551c: $00
    nop                                           ; $551d: $00
    nop                                           ; $551e: $00
    nop                                           ; $551f: $00
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    nop                                           ; $552a: $00
    nop                                           ; $552b: $00
    nop                                           ; $552c: $00
    nop                                           ; $552d: $00
    nop                                           ; $552e: $00
    nop                                           ; $552f: $00
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    nop                                           ; $553a: $00
    nop                                           ; $553b: $00

Call_050_553c:
    nop                                           ; $553c: $00
    nop                                           ; $553d: $00
    nop                                           ; $553e: $00
    nop                                           ; $553f: $00
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
    nop                                           ; $5544: $00
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    nop                                           ; $5547: $00
    nop                                           ; $5548: $00
    nop                                           ; $5549: $00
    nop                                           ; $554a: $00
    nop                                           ; $554b: $00
    nop                                           ; $554c: $00
    nop                                           ; $554d: $00
    nop                                           ; $554e: $00
    nop                                           ; $554f: $00
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    nop                                           ; $5552: $00
    nop                                           ; $5553: $00
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00
    nop                                           ; $5558: $00
    nop                                           ; $5559: $00
    nop                                           ; $555a: $00
    nop                                           ; $555b: $00
    nop                                           ; $555c: $00
    nop                                           ; $555d: $00
    nop                                           ; $555e: $00
    nop                                           ; $555f: $00
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    nop                                           ; $5569: $00
    nop                                           ; $556a: $00
    nop                                           ; $556b: $00
    nop                                           ; $556c: $00
    nop                                           ; $556d: $00
    nop                                           ; $556e: $00
    nop                                           ; $556f: $00
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    nop                                           ; $5576: $00
    nop                                           ; $5577: $00
    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    nop                                           ; $557a: $00
    nop                                           ; $557b: $00
    nop                                           ; $557c: $00
    nop                                           ; $557d: $00
    nop                                           ; $557e: $00
    nop                                           ; $557f: $00
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00
    nop                                           ; $5584: $00
    nop                                           ; $5585: $00
    nop                                           ; $5586: $00
    nop                                           ; $5587: $00
    nop                                           ; $5588: $00
    nop                                           ; $5589: $00
    nop                                           ; $558a: $00
    nop                                           ; $558b: $00
    nop                                           ; $558c: $00
    nop                                           ; $558d: $00
    nop                                           ; $558e: $00
    nop                                           ; $558f: $00
    nop                                           ; $5590: $00
    nop                                           ; $5591: $00
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    nop                                           ; $5594: $00
    nop                                           ; $5595: $00
    nop                                           ; $5596: $00
    nop                                           ; $5597: $00
    nop                                           ; $5598: $00
    nop                                           ; $5599: $00
    nop                                           ; $559a: $00
    nop                                           ; $559b: $00
    nop                                           ; $559c: $00
    nop                                           ; $559d: $00
    nop                                           ; $559e: $00
    nop                                           ; $559f: $00
    nop                                           ; $55a0: $00
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
    nop                                           ; $55a3: $00
    nop                                           ; $55a4: $00
    nop                                           ; $55a5: $00
    nop                                           ; $55a6: $00
    nop                                           ; $55a7: $00
    nop                                           ; $55a8: $00
    nop                                           ; $55a9: $00
    nop                                           ; $55aa: $00
    nop                                           ; $55ab: $00
    nop                                           ; $55ac: $00
    nop                                           ; $55ad: $00
    nop                                           ; $55ae: $00
    nop                                           ; $55af: $00
    nop                                           ; $55b0: $00
    nop                                           ; $55b1: $00
    nop                                           ; $55b2: $00
    nop                                           ; $55b3: $00
    nop                                           ; $55b4: $00
    nop                                           ; $55b5: $00
    nop                                           ; $55b6: $00
    nop                                           ; $55b7: $00
    nop                                           ; $55b8: $00
    nop                                           ; $55b9: $00
    nop                                           ; $55ba: $00
    nop                                           ; $55bb: $00
    nop                                           ; $55bc: $00
    nop                                           ; $55bd: $00
    nop                                           ; $55be: $00
    nop                                           ; $55bf: $00
    nop                                           ; $55c0: $00
    nop                                           ; $55c1: $00
    nop                                           ; $55c2: $00
    nop                                           ; $55c3: $00
    nop                                           ; $55c4: $00
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
    nop                                           ; $55e1: $00
    nop                                           ; $55e2: $00
    nop                                           ; $55e3: $00
    nop                                           ; $55e4: $00
    nop                                           ; $55e5: $00
    nop                                           ; $55e6: $00
    nop                                           ; $55e7: $00
    nop                                           ; $55e8: $00
    nop                                           ; $55e9: $00
    nop                                           ; $55ea: $00
    nop                                           ; $55eb: $00
    nop                                           ; $55ec: $00
    nop                                           ; $55ed: $00
    nop                                           ; $55ee: $00
    nop                                           ; $55ef: $00
    nop                                           ; $55f0: $00
    nop                                           ; $55f1: $00
    nop                                           ; $55f2: $00
    nop                                           ; $55f3: $00
    nop                                           ; $55f4: $00
    nop                                           ; $55f5: $00
    nop                                           ; $55f6: $00
    nop                                           ; $55f7: $00
    nop                                           ; $55f8: $00
    nop                                           ; $55f9: $00
    nop                                           ; $55fa: $00
    nop                                           ; $55fb: $00
    nop                                           ; $55fc: $00
    nop                                           ; $55fd: $00
    nop                                           ; $55fe: $00
    nop                                           ; $55ff: $00
    nop                                           ; $5600: $00
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00
    nop                                           ; $5604: $00
    nop                                           ; $5605: $00
    nop                                           ; $5606: $00
    nop                                           ; $5607: $00
    nop                                           ; $5608: $00
    nop                                           ; $5609: $00
    nop                                           ; $560a: $00
    nop                                           ; $560b: $00
    nop                                           ; $560c: $00
    nop                                           ; $560d: $00
    nop                                           ; $560e: $00
    nop                                           ; $560f: $00
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    nop                                           ; $5614: $00
    nop                                           ; $5615: $00
    nop                                           ; $5616: $00
    nop                                           ; $5617: $00
    nop                                           ; $5618: $00
    nop                                           ; $5619: $00
    nop                                           ; $561a: $00
    nop                                           ; $561b: $00
    nop                                           ; $561c: $00
    nop                                           ; $561d: $00
    nop                                           ; $561e: $00
    nop                                           ; $561f: $00
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    nop                                           ; $5626: $00
    nop                                           ; $5627: $00
    nop                                           ; $5628: $00
    nop                                           ; $5629: $00
    nop                                           ; $562a: $00
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
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    nop                                           ; $5649: $00
    nop                                           ; $564a: $00
    nop                                           ; $564b: $00
    nop                                           ; $564c: $00
    nop                                           ; $564d: $00
    nop                                           ; $564e: $00
    nop                                           ; $564f: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    nop                                           ; $5655: $00
    nop                                           ; $5656: $00
    nop                                           ; $5657: $00
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    nop                                           ; $565a: $00
    nop                                           ; $565b: $00
    nop                                           ; $565c: $00
    nop                                           ; $565d: $00
    nop                                           ; $565e: $00
    nop                                           ; $565f: $00
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    nop                                           ; $5664: $00
    nop                                           ; $5665: $00
    nop                                           ; $5666: $00
    nop                                           ; $5667: $00
    nop                                           ; $5668: $00
    nop                                           ; $5669: $00
    nop                                           ; $566a: $00
    nop                                           ; $566b: $00
    nop                                           ; $566c: $00
    nop                                           ; $566d: $00
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    nop                                           ; $5673: $00
    nop                                           ; $5674: $00
    nop                                           ; $5675: $00
    nop                                           ; $5676: $00
    nop                                           ; $5677: $00
    nop                                           ; $5678: $00
    nop                                           ; $5679: $00
    nop                                           ; $567a: $00
    nop                                           ; $567b: $00
    nop                                           ; $567c: $00
    nop                                           ; $567d: $00
    nop                                           ; $567e: $00
    nop                                           ; $567f: $00
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    nop                                           ; $5684: $00
    nop                                           ; $5685: $00
    nop                                           ; $5686: $00
    nop                                           ; $5687: $00
    nop                                           ; $5688: $00
    nop                                           ; $5689: $00
    nop                                           ; $568a: $00
    nop                                           ; $568b: $00
    nop                                           ; $568c: $00
    nop                                           ; $568d: $00
    nop                                           ; $568e: $00
    nop                                           ; $568f: $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    nop                                           ; $5695: $00
    nop                                           ; $5696: $00
    nop                                           ; $5697: $00
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    nop                                           ; $569a: $00
    nop                                           ; $569b: $00
    nop                                           ; $569c: $00
    nop                                           ; $569d: $00
    nop                                           ; $569e: $00
    nop                                           ; $569f: $00
    nop                                           ; $56a0: $00
    nop                                           ; $56a1: $00
    nop                                           ; $56a2: $00
    nop                                           ; $56a3: $00
    nop                                           ; $56a4: $00
    nop                                           ; $56a5: $00
    nop                                           ; $56a6: $00
    nop                                           ; $56a7: $00
    nop                                           ; $56a8: $00
    nop                                           ; $56a9: $00
    nop                                           ; $56aa: $00
    nop                                           ; $56ab: $00
    nop                                           ; $56ac: $00
    nop                                           ; $56ad: $00
    nop                                           ; $56ae: $00
    nop                                           ; $56af: $00
    nop                                           ; $56b0: $00
    nop                                           ; $56b1: $00
    nop                                           ; $56b2: $00
    nop                                           ; $56b3: $00
    nop                                           ; $56b4: $00
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
    nop                                           ; $56c4: $00
    nop                                           ; $56c5: $00
    nop                                           ; $56c6: $00
    nop                                           ; $56c7: $00
    nop                                           ; $56c8: $00
    nop                                           ; $56c9: $00
    nop                                           ; $56ca: $00
    nop                                           ; $56cb: $00
    nop                                           ; $56cc: $00
    nop                                           ; $56cd: $00
    nop                                           ; $56ce: $00
    nop                                           ; $56cf: $00
    nop                                           ; $56d0: $00
    nop                                           ; $56d1: $00
    nop                                           ; $56d2: $00
    nop                                           ; $56d3: $00
    nop                                           ; $56d4: $00
    nop                                           ; $56d5: $00
    nop                                           ; $56d6: $00
    nop                                           ; $56d7: $00
    nop                                           ; $56d8: $00
    nop                                           ; $56d9: $00
    nop                                           ; $56da: $00
    nop                                           ; $56db: $00
    nop                                           ; $56dc: $00
    nop                                           ; $56dd: $00
    nop                                           ; $56de: $00
    nop                                           ; $56df: $00
    nop                                           ; $56e0: $00
    nop                                           ; $56e1: $00
    nop                                           ; $56e2: $00
    nop                                           ; $56e3: $00
    nop                                           ; $56e4: $00
    nop                                           ; $56e5: $00
    nop                                           ; $56e6: $00
    nop                                           ; $56e7: $00
    nop                                           ; $56e8: $00
    nop                                           ; $56e9: $00
    nop                                           ; $56ea: $00
    nop                                           ; $56eb: $00
    nop                                           ; $56ec: $00
    nop                                           ; $56ed: $00
    nop                                           ; $56ee: $00
    nop                                           ; $56ef: $00
    nop                                           ; $56f0: $00
    nop                                           ; $56f1: $00
    nop                                           ; $56f2: $00
    nop                                           ; $56f3: $00
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
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    nop                                           ; $5754: $00
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
    nop                                           ; $5764: $00
    nop                                           ; $5765: $00
    nop                                           ; $5766: $00
    nop                                           ; $5767: $00
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    nop                                           ; $576a: $00
    nop                                           ; $576b: $00
    nop                                           ; $576c: $00
    nop                                           ; $576d: $00
    nop                                           ; $576e: $00
    nop                                           ; $576f: $00
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    nop                                           ; $5779: $00
    nop                                           ; $577a: $00
    nop                                           ; $577b: $00
    nop                                           ; $577c: $00
    nop                                           ; $577d: $00
    nop                                           ; $577e: $00
    nop                                           ; $577f: $00
    nop                                           ; $5780: $00
    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    nop                                           ; $5784: $00
    nop                                           ; $5785: $00
    nop                                           ; $5786: $00
    nop                                           ; $5787: $00
    nop                                           ; $5788: $00
    nop                                           ; $5789: $00
    nop                                           ; $578a: $00
    nop                                           ; $578b: $00
    nop                                           ; $578c: $00
    nop                                           ; $578d: $00
    nop                                           ; $578e: $00
    nop                                           ; $578f: $00
    nop                                           ; $5790: $00
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
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
    nop                                           ; $57a4: $00
    nop                                           ; $57a5: $00
    nop                                           ; $57a6: $00
    nop                                           ; $57a7: $00
    nop                                           ; $57a8: $00
    nop                                           ; $57a9: $00
    nop                                           ; $57aa: $00
    nop                                           ; $57ab: $00
    nop                                           ; $57ac: $00
    nop                                           ; $57ad: $00
    nop                                           ; $57ae: $00
    nop                                           ; $57af: $00
    nop                                           ; $57b0: $00
    nop                                           ; $57b1: $00
    nop                                           ; $57b2: $00
    nop                                           ; $57b3: $00
    nop                                           ; $57b4: $00
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
    nop                                           ; $57c4: $00
    nop                                           ; $57c5: $00
    nop                                           ; $57c6: $00
    nop                                           ; $57c7: $00
    nop                                           ; $57c8: $00
    nop                                           ; $57c9: $00
    nop                                           ; $57ca: $00
    nop                                           ; $57cb: $00
    nop                                           ; $57cc: $00
    nop                                           ; $57cd: $00
    nop                                           ; $57ce: $00
    nop                                           ; $57cf: $00
    nop                                           ; $57d0: $00
    nop                                           ; $57d1: $00
    nop                                           ; $57d2: $00
    nop                                           ; $57d3: $00
    nop                                           ; $57d4: $00
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
    nop                                           ; $57e4: $00
    nop                                           ; $57e5: $00
    nop                                           ; $57e6: $00
    nop                                           ; $57e7: $00
    nop                                           ; $57e8: $00
    nop                                           ; $57e9: $00
    nop                                           ; $57ea: $00
    nop                                           ; $57eb: $00
    nop                                           ; $57ec: $00
    nop                                           ; $57ed: $00
    nop                                           ; $57ee: $00
    nop                                           ; $57ef: $00
    nop                                           ; $57f0: $00
    nop                                           ; $57f1: $00
    nop                                           ; $57f2: $00
    nop                                           ; $57f3: $00
    nop                                           ; $57f4: $00
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
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580a: $00
    nop                                           ; $580b: $00
    nop                                           ; $580c: $00
    nop                                           ; $580d: $00
    nop                                           ; $580e: $00
    nop                                           ; $580f: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
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
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    nop                                           ; $582b: $00
    nop                                           ; $582c: $00
    nop                                           ; $582d: $00
    nop                                           ; $582e: $00
    nop                                           ; $582f: $00
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
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
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    nop                                           ; $584a: $00
    nop                                           ; $584b: $00
    nop                                           ; $584c: $00
    nop                                           ; $584d: $00
    nop                                           ; $584e: $00
    nop                                           ; $584f: $00
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    nop                                           ; $5854: $00
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
    nop                                           ; $5864: $00
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    nop                                           ; $586a: $00
    nop                                           ; $586b: $00
    nop                                           ; $586c: $00
    nop                                           ; $586d: $00
    nop                                           ; $586e: $00
    nop                                           ; $586f: $00

    db $00, $02, $00, $0f, $02, $02, $00, $0f, $04, $02, $00, $0f, $06, $02, $00, $0f
    db $08, $02, $00, $0f, $06, $02, $00, $0f, $04, $02, $00, $0f, $02, $02, $00, $0f
    db $ff, $00, $0a, $0f, $02, $1e, $19, $0f, $02, $1e, $28, $0f, $02, $1e, $19, $0f
    db $02, $1e, $ff, $01, $37, $03, $11, $1e, $3a, $03, $11, $1e, $ff, $02

    dec a                                         ; $58ae: $3d
    ld bc, $1e14                                  ; $58af: $01 $14 $1e
    ld a, $01                                     ; $58b2: $3e $01
    inc d                                         ; $58b4: $14
    ld e, $3f                                     ; $58b5: $1e $3f
    ld bc, $1e14                                  ; $58b7: $01 $14 $1e
    ld a, $01                                     ; $58ba: $3e $01
    inc d                                         ; $58bc: $14
    ld e, $ff                                     ; $58bd: $1e $ff
    ld [bc], a                                    ; $58bf: $02
    db $fe                                        ; $58c0: $fe

    db $cb, $58, $fb, $58

    ld l, d                                       ; $58c5: $6a
    ld h, e                                       ; $58c6: $63

    db $6a, $65, $51, $67, $d8, $19, $5f, $3b, $eb, $03, $c0, $02, $ff, $7f, $f0, $03
    db $eb, $03, $c0, $02, $00, $7f, $f6, $7f, $90, $31, $c0, $02, $ff, $7f, $eb, $03
    db $c0, $02, $20, $15, $fa, $01, $ff, $43, $40, $43, $20, $15, $08, $25, $08, $25
    db $08, $25, $08, $25, $d5, $00, $ff, $e0, $05, $fb, $e0, $0b, $f7, $e1, $00, $02
    db $eb, $00, $28, $ef, $e0, $90, $eb, $e0, $f5, $00, $c8, $fe, $e5, $e0, $80, $00
    db $ec, $ff, $f8, $ff, $e0, $ff, $fe, $42, $f8, $c8, $f0, $80, $e0, $10, $ef, $e0
    db $00, $c0, $ff, $ff, $e2, $f7, $ff, $bc, $7f, $ff, $e8, $ff, $81, $fe, $08, $f0
    db $f8, $e5, $fb, $20, $c0, $bf, $e2, $00, $7f, $ff, $2f, $ff, $ff, $3f, $ff, $1f
    db $ff, $b7, $7f, $1f, $7f, $ff, $0f, $7f, $4f, $3f, $07, $1f, $02, $1f, $ff, $13
    db $0f, $01, $0f, $0b, $07, $01, $07, $ff, $00, $07, $04, $03, $5c, $ff, $00, $ff
    db $e7, $81, $3c, $10, $d3, $e3, $83, $e0, $20, $c0, $80, $bf, $c0, $00, $e0, $90
    db $e0, $80, $fe, $e0, $00, $fb, $c0, $20, $a0, $e0, $7d, $ff, $ef, $ff, $3a, $fa
    db $da, $e2, $08, $63, $e0, $a4, $f8, $e0, $f8, $f0, $ff, $fc, $d0, $fc, $f2, $fc
    db $e0, $fc, $b0, $f7, $f8, $e4, $f8, $80, $e5, $be, $ff, $e3, $ff, $ff, $40, $ff
    db $00, $e7, $fc, $ff, $f6, $ff, $7f, $fc, $ff, $f8, $fe, $e8, $fe, $f8, $f8, $e0
    db $0b, $f4, $ff, $78, $e0, $80, $a3, $e6, $23, $e1, $f0, $e0, $ef, $ea, $e3, $c0
    db $40, $e0, $ea, $d0, $e1, $cf, $e9, $02, $81, $a0, $ff, $c1, $80, $c1, $85, $c3
    db $a1, $c3, $00, $7f, $83, $05, $83, $40, $81, $41, $80, $c0, $e0, $ff, $c0, $a0
    db $c0, $c0, $e0, $68, $f0, $f1, $ff, $fc, $dc, $ff, $1e, $ff, $80, $1e, $12, $7e
    db $d4, $c2, $48, $00, $01, $78, $58, $ff, $b0, $e9, $ff, $02, $01, $00, $03, $00
    db $00, $40, $40, $7f, $00, $20, $00, $10, $08, $00, $04, $b2, $c0, $c0, $a2, $c1
    db $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $f3, $c3, $3c, $e3, $c3, $3c, $fd
    db $e0, $fe, $e2, $f4, $e1, $1b, $e7, $2f, $ff, $dc, $1e, $f1, $3c, $e3, $7c, $c3
    db $7c, $7f, $c3, $e3, $9c, $c3, $bc, $18, $e7, $e2, $e1, $ff, $1a, $e5, $12, $ef
    db $5f, $b8, $7f, $e0, $ff, $f3, $8c, $13, $ef, $1f, $f8, $fc, $63, $bf, $fc, $83
    db $fc, $03, $bc, $43, $c4, $e1, $98, $ff, $e7, $fc, $43, $dc, $63, $f8, $27, $68
    db $ff, $b7, $6c, $93, $fc, $13, $e8, $17, $f8, $ff, $0f, $de, $25, $3c, $c7, $3e
    db $c3, $3f, $ff, $c2, $3e, $c1, $c3, $3d, $c3, $3d, $bb, $f7, $d7, $ff, $00, $a0
    db $e9, $c3, $bc, $c3, $bc, $c9, $7c, $c2, $e0, $be, $e1, $43, $f4, $e0, $a0, $e1
    db $00, $ff, $bf, $dd, $eb, $ff, $00, $7e, $81, $80, $e2, $f4, $ff, $0f, $f0, $1c
    db $e3, $1c, $f3, $1c, $e3, $ff, $0c, $f3, $3f, $d0, $1b, $f4, $57, $ff, $5f, $af
    db $fc, $7e, $f1, $bc, $70, $e0, $fc, $70, $e2, $ff, $fb, $ff, $de, $ff, $f5, $ff
    db $aa, $ff, $b7, $57, $ff, $bf, $67, $a0, $f3, $8c, $f8, $e1, $7c, $fd, $e3, $70
    db $e7, $ef, $ff, $d7, $7f, $ed, $7f, $ff, $f7, $3f, $6b, $bf, $76, $9f, $fb, $1f
    db $ff, $f5, $1f, $fa, $0f, $dd, $27, $3e, $c7, $f3, $3f, $c3, $6e, $e0, $70, $e2
    db $ed, $ff, $d3, $3c, $3b, $7e, $81, $70, $e9, $e3, $9c, $bc, $14, $e0, $69, $e0
    db $eb, $c3, $63, $10, $e0, $57, $a4, $e0, $7d, $ff, $d3, $f9, $ef, $4a, $e1, $e4
    db $c1, $bb, $f4, $5b, $f4, $ac, $ff, $f3, $6c, $f3, $bc, $e3, $6c, $f3, $bb, $ff
    db $f4, $db, $f4, $bd, $c3, $e7, $ff, $ba, $bf, $ff, $55, $ff, $ab, $ff, $fe, $58
    db $a0, $ff, $ef, $ff, $db, $ff, $6f, $8e, $e0, $af, $7f, $b5, $cf, $7f, $ef, $7f
    db $57, $46, $a0, $d0, $c3, $18, $e7, $fe, $f8, $e5, $57, $ff, $ac, $ff, $74, $fb
    db $b8, $6f, $e7, $58, $e7, $fc, $05, $e0, $98, $e7, $40, $e7, $df, $ba, $ff, $ec
    db $f3, $98, $e0, $e0, $ba, $ff, $e9, $6c, $f8, $e0, $c8, $e5, $ef, $26, $e0, $6d
    db $ff, $37, $ff, $ff, $2b, $ff, $16, $ff, $3b, $ff, $15, $ff, $ff, $1a, $ef, $35
    db $cf, $3e, $c7, $1b, $ff, $e7, $1a, $e7, $3d, $c3, $3f, $c3, $19, $db, $e7, $d7
    db $e4, $80, $2c, $d3, $a0, $e7, $98, $e7, $8a, $42, $e1, $d8, $a0, $e0, $bc, $de
    db $c0, $b0, $e1, $40, $e1, $cb, $fe, $78, $e6, $b0, $ff, $54, $fb, $a4, $fb, $78
    db $ff, $f7, $a8, $f7, $64, $fb, $b4, $fb, $d0, $ff, $ff, $c1, $ff, $b7, $ff, $5d
    db $ff, $ea, $54, $3e, $e0, $3a, $81, $ff, $94, $80, $57, $3e, $e0, $35, $3a, $e0
    db $f6, $ae, $c0, $ff, $d7, $21, $83, $ff, $dd, $ff, $77, $5c, $9c, $c0, $dc, $e1
    db $af, $ff, $df, $ce, $e0, $df, $f8, $e6, $14, $ff, $e5, $de, $e5, $5f, $ca, $e0
    db $6f, $c6, $e0, $f8, $e5, $e0, $63, $ca, $f8, $e1, $5f, $96, $e0, $5f, $d0, $e6
    db $c7, $e5, $69, $ff, $ff, $d4, $fc, $81, $f0, $46, $e0, $8b, $c0, $7f, $57, $c0
    db $1d, $80, $af, $80, $fd, $af, $60, $fd, $da, $48, $80, $a0, $fc, $41, $f0, $0b
    db $c0, $fb, $16, $00, $f8, $e1, $0a, $c0, $17, $00, $bd, $f7, $00, $6f, $00, $d5
    db $60, $00, $f8, $fe, $f4, $ff, $fe, $d8, $fc, $f1, $fc, $e2, $f8, $d1, $ff, $f8
    db $63, $f0, $c6, $f0, $8b, $e0, $47, $ff, $e0, $8f, $c0, $1b, $c0, $2f, $80, $1f
    db $ff, $80, $37, $00, $5f, $00, $24, $3c, $42, $bf, $00, $ad, $00, $f7, $00, $7d
    db $d2, $e2, $ff, $f5, $00, $ec, $e1, $bf, $e4, $e0, $2f, $80, $bf, $80, $df, $57
    db $00, $3f, $00, $f5, $3e, $e0, $45, $ff, $ff, $00, $c7, $10, $00, $6d, $00, $bb
    db $00, $ff, $ef, $00, $e7, $f0, $43, $f0, $e5, $f0, $ff, $47, $e0, $8a, $e0, $c7
    db $e0, $a5, $f0, $eb, $c3, $f0, $30, $63, $df, $2e, $60, $ad, $ff, $42, $ff, $ff
    db $00, $c3, $fc, $ff, $fa, $ff, $fc, $de, $8c, $e0, $f8, $fe, $ec, $fe, $f6, $e0
    db $ff, $ff, $ff, $80, $3f, $80, $7f, $c0, $9f, $c0, $4f, $ff, $e0, $87, $f0, $d5
    db $fc, $69, $ff, $3f, $ff, $00, $0f, $c0, $43, $f0, $a0, $fc, $f4, $c6, $4a, $e0
    db $ff, $ff, $42, $e0, $88, $e4, $e8, $e5, $e3, $0f, $ff, $e6, $0f, $cb, $1f, $c7
    db $1f, $8f, $3f, $f7, $9b, $3f, $2f, $fc, $40, $fe, $00, $fe, $00, $ff, $fc, $01
    db $fc, $01, $f8, $03, $f9, $03, $cf, $f2, $07, $f1, $07, $d0, $e5, $24, $e1, $d3
    db $00, $5f, $42, $7e, $fe, $00, $ff, $e2, $e0, $fe, $de, $e0, $cf, $fc, $01, $ff
    db $01, $f2, $e0, $0a, $e2, $3c, $00, $f7, $00, $c7, $45, $84, $c0, $f5, $ff, $e7
    db $0f, $ef, $e2, $0f, $f7, $0f, $c6, $e1, $f3, $07, $e5, $bf, $0f, $e3, $0f, $18
    db $c3, $42, $56, $e0, $f7, $ea, $76, $c6, $3f, $7e, $c0, $3f, $80, $a0, $9f, $7f
    db $37, $fd, $7f, $f6, $e0, $ff, $08, $00, $55, $00, $be, $74, $f0, $c0, $68, $e5
    db $5f, $fc, $c0, $7f, $00, $af, $fc, $e0, $9d, $3f, $f4, $e2, $11, $80, $2a, $d4
    db $c0, $f0, $e5, $bf, $f0, $fa, $e4, $6a, $e9, $f4, $eb, $00, $83, $1b, $e4, $15
    db $ee, $ff, $2d, $d0, $05, $fa, $34, $c0, $57, $aa, $df, $a4, $0a, $4b, $80, $42
    db $e0, $20, $1d, $02, $ff, $bc, $03, $98, $67, $17, $aa, $e4, $0a, $ff, $8b, $20
    db $22, $00, $dd, $00, $bd, $42, $fe, $08, $a1, $16, $a9, $e8, $03, $85, $22, $2a
    db $ff, $07, $db, $00, $bc, $43, $3f, $c0, $19, $fb, $e6, $18, $60, $a0, $3c, $c3
    db $b8, $e7, $08, $ff, $f7, $cc, $fb, $90, $6f, $2a, $ff, $1f, $ff, $e0, $d0, $01
    db $5a, $a1, $48, $07, $f8, $f7, $07, $1c, $03, $c0, $e1, $b0, $0f, $cc, $3f, $ff
    db $79, $86, $12, $ef, $1b, $e0, $3c, $c3, $fe, $d0, $e1, $3d, $c0, $4f, $a0, $30
    db $c9, $52, $ff, $a1, $6d, $c2, $34, $c9, $48, $b3, $1a, $ff, $e5, $15, $bf, $ce
    db $3f, $56, $bf, $6d, $ff, $bf, $9e, $7f, $6a, $bf, $1d, $ff, $4e, $ff, $bf, $35
    db $c0, $4e, $a1, $32, $c9, $57, $ff, $a2, $7f, $c5, $32, $cf, $55, $bf, $2b, $de
    db $90, $82, $bc, $43, $58, $a7, $00, $a0, $e3, $c4, $ff, $f3, $b4, $eb, $9a, $7f
    db $ef, $3f, $3a, $ff, $df, $4d, $ff, $b4, $ff, $7a, $ff, $a8, $fb, $ff, $74, $be
    db $80, $23, $df, $05, $ff, $1a, $fe, $70, $86, $d4, $ff, $bb, $fe, $74, $ff, $ae
    db $fa, $9a, $20, $ae, $3a, $80, $03, $ff, $52, $fc, $aa, $af, $fd, $77, $fb, $a2
    db $b0, $60, $0d, $ac, $60, $0a, $ff, $ff, $67, $88, $cd, $bb, $32, $ef, $eb, $fa
    db $de, $e0, $fe, $1c, $80, $ba, $ff, $27, $c8, $6d, $ff, $9b, $22, $ff, $7b, $ff
    db $b6, $ff, $5e, $fb, $ff, $bb, $84, $60, $0e, $bf, $dd, $3f, $6e, $bb, $bf, $57
    db $70, $e0, $6d, $bf, $1e, $70, $e0, $52, $ff, $fd, $ee, $f9, $49, $f6, $a7, $f8
    db $47, $ff, $f0, $b4, $c9, $4a, $b1, $1b, $e4, $ff, $ff, $1f, $4a, $bf, $69, $97
    db $12, $ef, $19, $f7, $e2, $38, $c7, $00, $e1, $2b, $d0, $aa, $41, $bf, $fe, $01
    db $a8, $07, $78, $87, $10, $e3, $a1, $ff, $1e, $8c, $7a, $57, $a8, $38, $c2, $0d
    db $f7, $f0, $3d, $c2, $d8, $61, $2f, $90, $f9, $00, $ff, $8a, $21, $28, $07, $d8
    db $07, $bc, $43, $fc, $c8, $61, $39, $a3, $02, $fd, $01, $fe, $0d, $f0, $ff, $02
    db $fd, $2a, $d0, $2b, $d6, $f5, $0a, $ff, $5f, $80, $a9, $02, $7f, $80, $10, $0f
    db $ff, $e0, $1f, $80, $7f, $57, $aa, $f5, $0a, $bf, $9f, $20, $b9, $02, $67, $98
    db $0f, $a3, $4a, $ff, $b5, $f4, $0b, $9d, $22, $ba, $07, $7b, $5f, $80, $0c, $f3
    db $07, $f8, $bf, $a1, $80, $9e, $00, $ed, $a0, $9a, $00, $68, $ff, $90, $c1, $17
    db $e8, $d1, $e7, $00, $2e, $d1, $80, $e1, $c0, $e3, $b0, $0f, $c6, $fc, $90, $c4
    db $d0, $e3, $3d, $c0, $5f, $a0, $34, $c9, $d7, $5a, $a1, $7d, $90, $c0, $4c, $90
    db $c0, $55, $bf, $fb, $8e, $7f, $90, $ca, $c8, $5a, $a1, $3c, $c3, $7f, $53, $ae
    db $77, $cd, $42, $bf, $15, $6a, $60, $fe, $6b, $81, $c0, $3f, $40, $bf, $40, $ff
    db $b0, $df, $ef, $cc, $f3, $a4, $fb, $90, $cf, $03, $ff, $a7, $05, $ff, $02, $19
    db $a6, $90, $cd, $53, $90, $c0, $75, $ae, $90, $c8, $77, $88, $cc, $90, $ca, $37
    db $90, $cc, $4e, $6e, $90, $ce, $ae, $f9, $79, $90, $c8, $bf, $5f, $90, $c3, $ef
    db $1d, $e2, $08, $f7, $00, $e1, $2d, $d0, $9a, $ef, $61, $7e, $81, $e8, $10, $e6
    db $61, $1e, $95, $de, $90, $c0, $39, $c2, $0f, $f0, $df, $63, $57, $a8, $ff, $fb
    db $00, $9e, $21, $a8, $07, $70, $8f, $fe, $cf, $63, $0c, $f7, $d9, $6f, $08, $ff
    db $63, $ff, $bd, $d6, $6b, $6a, $df, $30, $df, $53, $ff, $fd, $00, $ff, $5d, $e7
    db $08, $ff, $40, $6f, $bf, $6c, $b7, $48, $bc, $c0, $40, $ff, $24, $05, $dc, $ff
    db $ff, $e4, $e3, $55, $00, $ba, $7e, $80, $ab, $00, $d7, $5d, $00, $ea, $76, $80
    db $ae, $72, $80, $8a, $00, $f7, $54, $00, $aa, $f0, $e0, $aa, $00, $15, $00, $ff
    db $a8, $00, $51, $00, $08, $00, $22, $00, $7f, $94, $00, $29, $00, $44, $00, $10
    db $e4, $e0, $75, $00, $53, $00, $01, $74, $00, $20, $00, $80, $6e, $00, $fe, $a0
    db $f0, $18, $3c, $7e, $7e, $ff, $70, $ff, $ff, $78, $fc, $3c, $fe, $80, $7c, $64
    db $00, $ff, $00, $08, $1c, $3e, $36, $7f, $a6, $7f, $df, $84, $6f, $40, $0e, $08
    db $30, $00, $02, $ff, $ff, $07, $fd, $07, $fc, $16, $fd, $3d, $ee, $ff, $3a, $e7
    db $b7, $e8, $68, $f7, $cc, $ff, $ff, $ee, $bb, $ff, $99, $bb, $55, $99, $66, $ff
    db $55, $ee, $66, $ff, $ee, $ff, $9f, $e7, $bf, $e7, $f9, $ce, $f3, $3c, $cf, $f8
    db $e5, $fe, $fe, $48, $20, $f8, $ff, $e3, $fc, $f9, $ff, $c2, $cf, $fd, $1d, $e2
    db $cb, $1f, $60, $5d, $4b, $df, $92, $ff, $9d, $4b, $25, $17, $a2, $f3, $db, $e1
    db $ff, $ee, $f1, $74, $fb, $99, $ff, $d6, $9f, $7f, $9e, $4f, $25, $16, $a3, $f2
    db $da, $f0, $e0, $ff, $b4, $fb, $59, $ff, $e7, $18, $c3, $24, $ff, $e7, $24, $ff
    db $3c, $db, $3c, $e7, $18, $fe, $60, $41, $67, $9a, $c4, $8a, $0b, $c0, $42, $ff
    db $a0, $10, $c0, $e9, $80, $60, $91, $8b, $ff, $60, $16, $a9, $e1, $0b, $8a, $27
    db $27, $3f, $0f, $ad, $1f, $d6, $3f, $7d, $46, $80, $f0, $07, $ff, $24, $db, $0c
    db $f7, $36, $cf, $18, $e7, $ff, $d6, $0f, $59, $a6, $42, $0f, $fb, $00, $bf, $1c
    db $03, $bf, $00, $99, $66, $08, $21, $3d, $cf, $c2, $18, $e7, $19, $00, $24, $e0
    db $61, $56, $a9, $e7, $22, $ff, $75, $60, $84, $50, $a3, $11, $ef, $1f, $7f, $e0
    db $3d, $c7, $33, $cf, $2d, $d7, $b0, $65, $ff, $28, $d7, $44, $fb, $b4, $ff, $d0
    db $ff, $ff, $fb, $3c, $d7, $56, $e7, $a5, $b7, $ed, $ff, $fd, $ef, $eb, $bf, $ff
    db $3a, $ef, $38, $7f, $ff, $38, $ff, $28, $ff, $38, $cf, $fc, $e1, $ff, $2e, $ef
    db $3f, $ff, $1e, $38, $ff, $56, $65, $d7, $e0, $e3, $ab, $c6, $00, $e5, $e0, $ff
    db $38, $db, $e0, $81, $28, $d7, $e0, $e1, $e2, $20, $df, $ff, $ff, $ff, $ff, $e9
    db $e8, $b0, $ff, $0f, $de, $7f, $29, $fe, $55, $ff, $be, $7e, $1e, $e0, $aa, $ff
    db $c0, $ff, $98, $67, $30, $e1, $e9, $58, $60, $66, $90, $4b, $2b, $d0, $48, $3c
    db $03, $84, $e7, $73, $b4, $eb, $e1, $ae, $28, $62, $19, $e7, $17, $ff, $ee, $3f
    db $c8, $2f, $d8, $1f, $f0, $fd, $fa, $2a, $00, $da, $c8, $20, $af, $fe, $df, $f8
    db $6f, $d7, $f8, $df, $f0, $43, $40, $3c, $a6, $41, $3f, $c3, $bf, $3e, $c7, $dd
    db $2f, $da, $2f, $f0, $e5, $3d, $7f, $c3, $3c, $c7, $d0, $2f, $d8, $2f, $4e, $ff
    db $80, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f0, $ef, $ef
    db $ff, $f0, $b8, $c7, $16, $f9, $fc, $e3, $db, $ff, $e7, $f3, $ce, $e6, $de, $8f
    db $ff, $7f, $ff, $ff, $53, $ef, $99, $e7, $f9, $ff, $ae, $ff, $df, $5f, $67, $4b
    db $77, $e7, $fb, $9f, $bf, $f9, $bd, $f9, $ff, $ff, $fe, $ff, $e0, $ff, $ff, $fe
    db $fd, $fd, $ff, $fe, $f1, $ff, $99, $3f, $9f, $bd, $bf, $ff, $ff, $7f, $ff, $e0
    db $fa, $e1, $3c, $ea, $e3, $e4, $e3, $f8, $f8, $fe, $fe, $ea, $e3, $e4, $e3, $ff
    db $1f, $1f, $7f, $7f, $ec, $f3, $8f, $ff, $ff, $79, $ff, $e8, $f7, $f3, $ef, $c6
    db $fe, $fb, $de, $fe, $c7, $e0, $ff, $67, $ff, $d3, $ef, $ff, $fd, $ff, $cf, $ff
    db $67, $7f, $f7, $ff, $3f, $fb, $ff, $fd, $f9, $fb, $fb, $86, $83, $9e, $e0, $0e
    db $98, $e0, $fb, $ff, $bf, $db, $e1, $6a, $86, $ea, $e3, $e4, $e4, $e9, $fb, $dc
    db $e1, $54, $88, $df, $4c, $80, $fc, $ff, $f8, $7f, $fe, $f8, $f6, $f0, $fe, $f0
    db $fc, $fc, $e2, $ff, $9f, $1f, $cf, $0f, $9f, $1f, $9f, $1f, $ff, $1f, $1f, $9c
    db $1c, $1e, $1e, $1c, $1c, $e0, $21, $87, $50, $e0, $fe, $e1, $95, $e2, $4e, $e2
    db $fc, $fe, $fe, $ff, $ed, $e1, $fc, $f0, $68, $00, $dc, $10, $f7, $08, $00, $8c
    db $68, $60, $34, $20, $18, $00, $ff, $1e, $1e, $3d, $3d, $36, $06, $63, $03, $ff
    db $c6, $86, $67, $07, $47, $07, $67, $07, $ef, $3f, $3f, $7f, $3f, $ff, $e1, $bf
    db $bf, $1f, $ff, $1f, $9f, $9f, $5f, $5f, $fa, $c0, $e1, $ff, $c1, $f1, $c1, $e3
    db $c3, $83, $80, $e6, $ff, $c0, $8c, $88, $90, $90, $b0, $a0, $a9, $ff, $a1, $f0
    db $e0, $e1, $e1, $72, $62, $c1, $ff, $c1, $e2, $e2, $d5, $d5, $47, $07, $c7, $ff
    db $07, $c5, $04, $87, $00, $4d, $08, $82, $fe, $30, $60, $90, $10, $ff, $ff, $9f
    db $9f, $cf, $ff, $0f, $87, $07, $4b, $0b, $87, $07, $03, $ff, $03, $05, $05, $8a
    db $8a, $55, $55, $be, $af, $be, $eb, $ff, $f1, $02, $a0, $57, $00, $e0, $eb, $bd
    db $eb, $aa, $c0, $ff, $af, $ff, $c5, $f2, $80, $5d, $fe, $50, $60, $22, $22, $55
    db $55, $bf, $bf, $6b, $f5, $7f, $e0, $e1, $d7, $e0, $c0, $23, $23, $55, $55, $5f
    db $bb, $bb, $ff, $ff, $77, $d2, $80, $77, $5d, $60, $00, $2e, $df, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $fc, $fb
    db $00, $00

    nop                                           ; $6369: $00
    nop                                           ; $636a: $00
    nop                                           ; $636b: $00
    nop                                           ; $636c: $00
    nop                                           ; $636d: $00
    nop                                           ; $636e: $00
    nop                                           ; $636f: $00
    nop                                           ; $6370: $00
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    nop                                           ; $6374: $00
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    nop                                           ; $637a: $00
    nop                                           ; $637b: $00
    nop                                           ; $637c: $00
    nop                                           ; $637d: $00
    nop                                           ; $637e: $00
    nop                                           ; $637f: $00
    nop                                           ; $6380: $00
    nop                                           ; $6381: $00
    nop                                           ; $6382: $00
    nop                                           ; $6383: $00
    nop                                           ; $6384: $00
    nop                                           ; $6385: $00
    nop                                           ; $6386: $00
    nop                                           ; $6387: $00
    nop                                           ; $6388: $00
    nop                                           ; $6389: $00
    nop                                           ; $638a: $00
    nop                                           ; $638b: $00
    nop                                           ; $638c: $00
    nop                                           ; $638d: $00
    nop                                           ; $638e: $00
    nop                                           ; $638f: $00
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    nop                                           ; $6396: $00
    nop                                           ; $6397: $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00
    nop                                           ; $639b: $00
    nop                                           ; $639c: $00
    nop                                           ; $639d: $00
    nop                                           ; $639e: $00
    nop                                           ; $639f: $00
    nop                                           ; $63a0: $00
    nop                                           ; $63a1: $00
    nop                                           ; $63a2: $00
    nop                                           ; $63a3: $00
    nop                                           ; $63a4: $00
    nop                                           ; $63a5: $00
    nop                                           ; $63a6: $00
    nop                                           ; $63a7: $00
    nop                                           ; $63a8: $00
    nop                                           ; $63a9: $00
    nop                                           ; $63aa: $00
    nop                                           ; $63ab: $00
    nop                                           ; $63ac: $00
    nop                                           ; $63ad: $00
    nop                                           ; $63ae: $00
    nop                                           ; $63af: $00
    nop                                           ; $63b0: $00
    nop                                           ; $63b1: $00
    nop                                           ; $63b2: $00
    nop                                           ; $63b3: $00
    nop                                           ; $63b4: $00
    nop                                           ; $63b5: $00
    nop                                           ; $63b6: $00
    nop                                           ; $63b7: $00
    nop                                           ; $63b8: $00
    nop                                           ; $63b9: $00
    nop                                           ; $63ba: $00
    nop                                           ; $63bb: $00
    nop                                           ; $63bc: $00
    nop                                           ; $63bd: $00
    nop                                           ; $63be: $00
    nop                                           ; $63bf: $00
    nop                                           ; $63c0: $00
    nop                                           ; $63c1: $00
    nop                                           ; $63c2: $00
    nop                                           ; $63c3: $00
    nop                                           ; $63c4: $00
    nop                                           ; $63c5: $00
    nop                                           ; $63c6: $00
    nop                                           ; $63c7: $00
    nop                                           ; $63c8: $00
    nop                                           ; $63c9: $00
    nop                                           ; $63ca: $00
    nop                                           ; $63cb: $00
    nop                                           ; $63cc: $00
    nop                                           ; $63cd: $00
    nop                                           ; $63ce: $00
    nop                                           ; $63cf: $00
    nop                                           ; $63d0: $00
    nop                                           ; $63d1: $00
    nop                                           ; $63d2: $00
    nop                                           ; $63d3: $00
    nop                                           ; $63d4: $00
    nop                                           ; $63d5: $00
    nop                                           ; $63d6: $00
    nop                                           ; $63d7: $00
    nop                                           ; $63d8: $00
    nop                                           ; $63d9: $00
    nop                                           ; $63da: $00
    nop                                           ; $63db: $00
    nop                                           ; $63dc: $00
    nop                                           ; $63dd: $00
    nop                                           ; $63de: $00
    nop                                           ; $63df: $00
    nop                                           ; $63e0: $00
    nop                                           ; $63e1: $00
    nop                                           ; $63e2: $00
    nop                                           ; $63e3: $00
    nop                                           ; $63e4: $00
    nop                                           ; $63e5: $00
    nop                                           ; $63e6: $00
    nop                                           ; $63e7: $00
    nop                                           ; $63e8: $00
    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    nop                                           ; $63eb: $00
    nop                                           ; $63ec: $00
    nop                                           ; $63ed: $00
    nop                                           ; $63ee: $00
    nop                                           ; $63ef: $00
    nop                                           ; $63f0: $00
    nop                                           ; $63f1: $00
    nop                                           ; $63f2: $00
    nop                                           ; $63f3: $00
    nop                                           ; $63f4: $00
    nop                                           ; $63f5: $00
    nop                                           ; $63f6: $00
    nop                                           ; $63f7: $00
    nop                                           ; $63f8: $00
    nop                                           ; $63f9: $00
    nop                                           ; $63fa: $00
    nop                                           ; $63fb: $00
    nop                                           ; $63fc: $00
    nop                                           ; $63fd: $00
    nop                                           ; $63fe: $00
    nop                                           ; $63ff: $00
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    nop                                           ; $6408: $00
    nop                                           ; $6409: $00
    nop                                           ; $640a: $00
    nop                                           ; $640b: $00
    nop                                           ; $640c: $00
    nop                                           ; $640d: $00
    nop                                           ; $640e: $00
    nop                                           ; $640f: $00
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    nop                                           ; $641a: $00
    nop                                           ; $641b: $00
    nop                                           ; $641c: $00
    nop                                           ; $641d: $00
    nop                                           ; $641e: $00
    nop                                           ; $641f: $00
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00
    nop                                           ; $6429: $00
    nop                                           ; $642a: $00
    nop                                           ; $642b: $00
    nop                                           ; $642c: $00
    nop                                           ; $642d: $00
    nop                                           ; $642e: $00
    nop                                           ; $642f: $00
    nop                                           ; $6430: $00
    nop                                           ; $6431: $00
    nop                                           ; $6432: $00
    nop                                           ; $6433: $00
    nop                                           ; $6434: $00
    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    nop                                           ; $6437: $00
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    nop                                           ; $643a: $00
    nop                                           ; $643b: $00
    nop                                           ; $643c: $00
    nop                                           ; $643d: $00
    nop                                           ; $643e: $00
    nop                                           ; $643f: $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    nop                                           ; $6444: $00
    nop                                           ; $6445: $00
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    nop                                           ; $644a: $00
    nop                                           ; $644b: $00
    nop                                           ; $644c: $00
    nop                                           ; $644d: $00
    nop                                           ; $644e: $00
    nop                                           ; $644f: $00
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    nop                                           ; $6452: $00
    nop                                           ; $6453: $00
    nop                                           ; $6454: $00
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    nop                                           ; $6459: $00
    nop                                           ; $645a: $00
    nop                                           ; $645b: $00
    nop                                           ; $645c: $00
    nop                                           ; $645d: $00
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00
    nop                                           ; $6463: $00
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00
    nop                                           ; $646b: $00
    nop                                           ; $646c: $00
    nop                                           ; $646d: $00
    nop                                           ; $646e: $00
    nop                                           ; $646f: $00
    nop                                           ; $6470: $00
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    nop                                           ; $6473: $00
    nop                                           ; $6474: $00
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    nop                                           ; $6478: $00
    nop                                           ; $6479: $00
    nop                                           ; $647a: $00
    nop                                           ; $647b: $00
    nop                                           ; $647c: $00
    nop                                           ; $647d: $00
    nop                                           ; $647e: $00
    nop                                           ; $647f: $00
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    nop                                           ; $6488: $00
    nop                                           ; $6489: $00
    nop                                           ; $648a: $00
    nop                                           ; $648b: $00
    nop                                           ; $648c: $00
    nop                                           ; $648d: $00
    nop                                           ; $648e: $00
    nop                                           ; $648f: $00
    nop                                           ; $6490: $00
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    nop                                           ; $6493: $00
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    nop                                           ; $6496: $00
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    nop                                           ; $649a: $00
    nop                                           ; $649b: $00
    nop                                           ; $649c: $00
    nop                                           ; $649d: $00
    nop                                           ; $649e: $00
    nop                                           ; $649f: $00
    nop                                           ; $64a0: $00
    nop                                           ; $64a1: $00
    nop                                           ; $64a2: $00
    nop                                           ; $64a3: $00
    nop                                           ; $64a4: $00
    nop                                           ; $64a5: $00
    nop                                           ; $64a6: $00
    nop                                           ; $64a7: $00
    nop                                           ; $64a8: $00
    nop                                           ; $64a9: $00
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    nop                                           ; $64ac: $00
    nop                                           ; $64ad: $00
    nop                                           ; $64ae: $00
    nop                                           ; $64af: $00
    nop                                           ; $64b0: $00
    nop                                           ; $64b1: $00
    nop                                           ; $64b2: $00
    nop                                           ; $64b3: $00
    nop                                           ; $64b4: $00
    nop                                           ; $64b5: $00
    nop                                           ; $64b6: $00
    nop                                           ; $64b7: $00
    nop                                           ; $64b8: $00
    nop                                           ; $64b9: $00
    nop                                           ; $64ba: $00
    nop                                           ; $64bb: $00
    nop                                           ; $64bc: $00
    nop                                           ; $64bd: $00
    nop                                           ; $64be: $00
    nop                                           ; $64bf: $00
    nop                                           ; $64c0: $00
    nop                                           ; $64c1: $00
    nop                                           ; $64c2: $00
    nop                                           ; $64c3: $00
    nop                                           ; $64c4: $00
    nop                                           ; $64c5: $00
    nop                                           ; $64c6: $00
    nop                                           ; $64c7: $00
    nop                                           ; $64c8: $00
    nop                                           ; $64c9: $00
    nop                                           ; $64ca: $00
    nop                                           ; $64cb: $00
    nop                                           ; $64cc: $00
    nop                                           ; $64cd: $00
    nop                                           ; $64ce: $00
    nop                                           ; $64cf: $00
    nop                                           ; $64d0: $00
    nop                                           ; $64d1: $00
    nop                                           ; $64d2: $00
    nop                                           ; $64d3: $00
    nop                                           ; $64d4: $00
    nop                                           ; $64d5: $00
    nop                                           ; $64d6: $00
    nop                                           ; $64d7: $00
    nop                                           ; $64d8: $00
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    nop                                           ; $64db: $00
    nop                                           ; $64dc: $00
    nop                                           ; $64dd: $00
    nop                                           ; $64de: $00
    nop                                           ; $64df: $00
    nop                                           ; $64e0: $00
    nop                                           ; $64e1: $00
    nop                                           ; $64e2: $00
    nop                                           ; $64e3: $00
    nop                                           ; $64e4: $00
    nop                                           ; $64e5: $00
    nop                                           ; $64e6: $00
    nop                                           ; $64e7: $00
    nop                                           ; $64e8: $00
    nop                                           ; $64e9: $00
    nop                                           ; $64ea: $00
    nop                                           ; $64eb: $00
    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    nop                                           ; $64ee: $00
    nop                                           ; $64ef: $00
    nop                                           ; $64f0: $00
    nop                                           ; $64f1: $00
    nop                                           ; $64f2: $00
    nop                                           ; $64f3: $00
    nop                                           ; $64f4: $00
    nop                                           ; $64f5: $00
    nop                                           ; $64f6: $00
    nop                                           ; $64f7: $00
    nop                                           ; $64f8: $00
    nop                                           ; $64f9: $00
    nop                                           ; $64fa: $00
    nop                                           ; $64fb: $00
    nop                                           ; $64fc: $00
    nop                                           ; $64fd: $00
    nop                                           ; $64fe: $00
    nop                                           ; $64ff: $00
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    nop                                           ; $6509: $00
    nop                                           ; $650a: $00
    nop                                           ; $650b: $00
    nop                                           ; $650c: $00
    nop                                           ; $650d: $00
    nop                                           ; $650e: $00
    nop                                           ; $650f: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    nop                                           ; $6517: $00
    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    nop                                           ; $651a: $00
    nop                                           ; $651b: $00
    nop                                           ; $651c: $00
    nop                                           ; $651d: $00
    nop                                           ; $651e: $00
    nop                                           ; $651f: $00
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    nop                                           ; $652a: $00
    nop                                           ; $652b: $00
    nop                                           ; $652c: $00
    nop                                           ; $652d: $00
    nop                                           ; $652e: $00
    nop                                           ; $652f: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    nop                                           ; $6536: $00
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    nop                                           ; $653a: $00
    nop                                           ; $653b: $00
    nop                                           ; $653c: $00
    nop                                           ; $653d: $00
    nop                                           ; $653e: $00
    nop                                           ; $653f: $00
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    nop                                           ; $6544: $00
    nop                                           ; $6545: $00
    nop                                           ; $6546: $00
    nop                                           ; $6547: $00
    nop                                           ; $6548: $00
    nop                                           ; $6549: $00
    nop                                           ; $654a: $00
    nop                                           ; $654b: $00
    nop                                           ; $654c: $00
    nop                                           ; $654d: $00
    nop                                           ; $654e: $00
    nop                                           ; $654f: $00
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    nop                                           ; $655a: $00
    nop                                           ; $655b: $00
    nop                                           ; $655c: $00
    nop                                           ; $655d: $00
    nop                                           ; $655e: $00
    nop                                           ; $655f: $00
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00

    db $7d, $33, $ff, $ec, $11, $13, $11, $33, $13, $f8, $e1, $46, $ff, $e1, $13, $13
    db $f0, $e0, $f2, $e1, $f0, $e1, $31, $fe, $e0, $35, $33, $fe, $e1, $31, $fe, $e0
    db $33, $31, $e9, $e3, $c1, $e0, $01, $13, $d0, $e6, $c0, $e2, $fe, $e5, $bf, $e2
    db $b0, $e2, $fe, $e2, $98, $ed, $0c, $88, $ed, $ba, $e0, $31, $13, $a6, $e2, $8c
    db $e0, $7a, $e0, $94, $e0, $44, $72, $e2, $60, $e5, $ff, $ff, $ff, $ff, $ff, $f1
    db $f0, $66, $ff, $e4, $1f, $00, $06, $06, $66, $06, $f8, $e1, $ff, $e1, $f0, $e1
    db $de, $e7, $e4, $60, $00, $60, $00, $f3, $e0, $00, $66, $c1, $60, $fe, $e0, $ff
    db $f0, $d1, $e4, $dd, $e2, $d7, $e1, $99, $96, $37, $96, $66, $96, $ab, $e0, $11
    db $99, $ff, $e0, $a3, $e0, $bc, $fc, $e1, $9c, $e1, $69, $91, $69, $91, $f3, $e0
    db $99, $03, $66, $69, $fe, $e0, $f0, $e1, $db, $e1, $83, $e2, $d0, $e3, $d1, $e4
    db $a8, $dd, $e2, $fc, $e2, $c0, $e0, $19, $7b, $c0, $99, $fe, $e1, $91, $f3, $99
    db $11, $68, $e2, $63, $e0, $99, $90, $90, $00, $e1, $90, $5b, $e0, $a0, $e2, $f0
    db $e1, $e7, $e4, $09, $91, $09, $1d, $91, $f3, $e0, $99, $00, $09, $fe, $e0, $f0
    db $e1, $db, $e1, $60, $33, $e2, $d0, $e3, $d1, $e4, $dd, $e2, $d9, $e1, $90, $09
    db $a0, $e0, $09, $91, $a0, $e1, $c6, $e1, $99, $11, $c2, $4d, $e1, $90, $e2, $8a
    db $e0, $b2, $f0, $f1, $91, $e8, $e4, $d4, $e4, $22, $92, $fe, $e0, $11, $7f, $19
    db $19, $99, $99, $92, $92, $22, $fc, $e1, $fe, $ff, $e1, $11, $99, $19, $92, $19
    db $92, $99, $1d, $22, $e2, $e3, $22, $22, $29, $e9, $e3, $e4, $e0, $f0, $e3, $40
    db $e9, $c1, $d7, $e1, $de, $e1, $da, $e1, $88, $e5, $89, $e4, $99, $ac, $e1, $fc
    db $c2, $e0, $f8, $e0, $99, $92, $19, $99, $11, $19, $1c, $c6, $e3, $f1, $e1, $29
    db $91, $29, $f8, $c0, $ad, $e1, $fe, $e0, $00, $bc, $e2, $a2, $e4, $f0, $e1, $84
    db $e2, $a4, $e2, $a7, $e4, $35, $e2, $c0, $c5, $00, $ba, $c0, $7a, $e5, $fe, $fd
    db $98, $c5, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $e6, $a3, $67
    db $c6, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $7a, $9d, $62, $55, $ff
    db $e7, $51, $55, $11, $51, $18, $a6, $f0, $0e, $ed, $c0, $7d, $a0, $75, $38, $60
    db $17, $11, $77, $17, $2f, $77, $11, $11, $77, $ff, $e3, $71, $fe, $e4, $ff, $fc
    db $08, $8e, $df, $ff, $ff, $58, $df, $11, $10, $f6, $ff, $ff, $ff, $ff, $e7, $e6
    db $5f, $06, $00, $66, $11, $19, $66, $80, $96, $72, $64, $05, $69, $69, $64, $60
    db $11, $63, $ff, $ff, $ff, $ff, $ff, $ff, $f4, $f3, $00, $78, $dd, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $c0, $bf, $ff, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $a8, $89, $00, $00

    nop                                           ; $6750: $00

    db $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $00, $0d, $00, $dd, $0d, $dd, $dd, $7b, $dd, $ee, $ff, $e0
    db $de, $ee, $d0, $00, $f8, $e1, $f7, $ee, $ee, $00, $f8, $e3, $ef, $00, $0f, $f0
    db $7f, $00, $ff, $00, $ff, $f0, $ff, $ff, $dd, $e0, $ff, $d0, $dd, $00, $d0, $00
    db $ff, $ff, $0f, $2e, $ef, $e0, $00, $0f, $bb, $ff, $e4, $99, $ff, $e4, $f0, $e3
    db $ff, $0b, $bb, $00, $00, $b0, $00, $bb, $00, $f3, $bb, $b0, $e8, $e5, $ee, $e0
    db $bb, $00, $0b, $00, $7d, $00, $d0, $e5, $bb, $aa, $bb, $aa, $ba, $fe, $e0, $ca
    db $ff, $e5, $9a, $fe, $e0, $99, $fe, $e1, $b8, $ea, $bb, $bb, $db, $88, $88, $98
    db $e3, $cc, $cc, $88, $e4, $fe, $0f, $7b, $ee, $00, $68, $e0, $ed, $dd, $ee, $d0
    db $61, $e0, $00, $48, $ff, $48, $ff, $90, $ea, $48, $ff, $48, $ff, $48, $ff, $ff
    db $ff, $ff, $ff, $f8, $ff, $ff, $ff, $ff, $f8, $f7, $0e, $ee, $cd, $ee, $bc, $ff
    db $d0, $bb, $b0, $ee, $e0, $ee, $f8, $0f, $f7, $89, $09, $99, $db, $a4, $e0, $dd
    db $ef, $dd, $d7, $ef, $d0, $0f, $c0, $e2, $0c, $ba, $e1, $dd, $d0, $b3, $cc, $cc
    db $10, $c1, $f2, $a2, $08, $00, $d8, $e0, $f0, $1f, $00, $88, $00, $99, $90, $9e
    db $ff, $ff, $ff, $f2, $f1, $43, $08, $88, $96, $a2, $a0, $e0, $9d, $e6, $fe, $a0
    db $0c, $e2, $a4, $01, $cc, $bf, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $e6, $00, $00

    nop                                           ; $688c: $00

    db $a0, $68, $a0, $70

    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    nop                                           ; $689a: $00
    nop                                           ; $689b: $00
    nop                                           ; $689c: $00
    nop                                           ; $689d: $00
    nop                                           ; $689e: $00
    nop                                           ; $689f: $00
    nop                                           ; $68a0: $00
    nop                                           ; $68a1: $00
    nop                                           ; $68a2: $00
    nop                                           ; $68a3: $00
    dec b                                         ; $68a4: $05
    nop                                           ; $68a5: $00
    nop                                           ; $68a6: $00
    nop                                           ; $68a7: $00
    dec bc                                        ; $68a8: $0b
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    ld [bc], a                                    ; $68ae: $02
    nop                                           ; $68af: $00
    jr z, jr_050_68b2                             ; $68b0: $28 $00

jr_050_68b2:
    nop                                           ; $68b2: $00
    nop                                           ; $68b3: $00
    sub b                                         ; $68b4: $90
    nop                                           ; $68b5: $00
    nop                                           ; $68b6: $00
    nop                                           ; $68b7: $00
    push af                                       ; $68b8: $f5
    nop                                           ; $68b9: $00
    ret z                                         ; $68ba: $c8

    nop                                           ; $68bb: $00
    nop                                           ; $68bc: $00
    nop                                           ; $68bd: $00
    add b                                         ; $68be: $80
    nop                                           ; $68bf: $00
    nop                                           ; $68c0: $00
    nop                                           ; $68c1: $00
    nop                                           ; $68c2: $00
    nop                                           ; $68c3: $00
    ld [bc], a                                    ; $68c4: $02
    nop                                           ; $68c5: $00
    nop                                           ; $68c6: $00
    nop                                           ; $68c7: $00
    rla                                           ; $68c8: $17
    nop                                           ; $68c9: $00
    ld bc, $0000                                  ; $68ca: $01 $00 $00
    nop                                           ; $68cd: $00
    dec b                                         ; $68ce: $05
    nop                                           ; $68cf: $00
    ld d, b                                       ; $68d0: $50
    nop                                           ; $68d1: $00
    nop                                           ; $68d2: $00
    nop                                           ; $68d3: $00
    ret z                                         ; $68d4: $c8

    nop                                           ; $68d5: $00
    nop                                           ; $68d6: $00
    nop                                           ; $68d7: $00
    ld [$9000], a                                 ; $68d8: $ea $00 $90
    nop                                           ; $68db: $00
    nop                                           ; $68dc: $00
    nop                                           ; $68dd: $00
    nop                                           ; $68de: $00
    nop                                           ; $68df: $00
    nop                                           ; $68e0: $00
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    nop                                           ; $68e3: $00
    ld bc, $0000                                  ; $68e4: $01 $00 $00
    nop                                           ; $68e7: $00
    cpl                                           ; $68e8: $2f
    nop                                           ; $68e9: $00
    inc bc                                        ; $68ea: $03
    nop                                           ; $68eb: $00
    nop                                           ; $68ec: $00
    nop                                           ; $68ed: $00
    ld [bc], a                                    ; $68ee: $02
    nop                                           ; $68ef: $00
    and b                                         ; $68f0: $a0
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    nop                                           ; $68f3: $00
    ld h, h                                       ; $68f4: $64
    nop                                           ; $68f5: $00
    nop                                           ; $68f6: $00
    nop                                           ; $68f7: $00
    call nc, Call_000_2000                        ; $68f8: $d4 $00 $20
    nop                                           ; $68fb: $00
    nop                                           ; $68fc: $00
    nop                                           ; $68fd: $00
    add b                                         ; $68fe: $80
    nop                                           ; $68ff: $00
    ld bc, $0000                                  ; $6900: $01 $00 $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    ld e, a                                       ; $6908: $5f
    nop                                           ; $6909: $00
    ld b, $00                                     ; $690a: $06 $00
    nop                                           ; $690c: $00
    nop                                           ; $690d: $00
    dec b                                         ; $690e: $05
    nop                                           ; $690f: $00
    ld b, b                                       ; $6910: $40
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    or d                                          ; $6914: $b2
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    xor b                                         ; $6918: $a8
    nop                                           ; $6919: $00
    ld b, b                                       ; $691a: $40
    nop                                           ; $691b: $00
    nop                                           ; $691c: $00
    nop                                           ; $691d: $00
    nop                                           ; $691e: $00
    nop                                           ; $691f: $00
    ld [bc], a                                    ; $6920: $02
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    cp a                                          ; $6928: $bf
    nop                                           ; $6929: $00
    inc c                                         ; $692a: $0c
    nop                                           ; $692b: $00
    nop                                           ; $692c: $00
    nop                                           ; $692d: $00
    ld [bc], a                                    ; $692e: $02
    nop                                           ; $692f: $00
    add b                                         ; $6930: $80
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    ld e, c                                       ; $6934: $59
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    ld d, b                                       ; $6938: $50
    nop                                           ; $6939: $00
    add b                                         ; $693a: $80
    nop                                           ; $693b: $00
    nop                                           ; $693c: $00
    nop                                           ; $693d: $00
    add b                                         ; $693e: $80
    nop                                           ; $693f: $00
    db $ec                                        ; $6940: $ec
    rst $38                                       ; $6941: $ff
    ld hl, sp-$01                                 ; $6942: $f8 $ff
    ldh [$fe], a                                  ; $6944: $e0 $fe
    ld b, d                                       ; $6946: $42
    ld hl, sp-$38                                 ; $6947: $f8 $c8
    ldh a, [$80]                                  ; $6949: $f0 $80
    ldh [rNR10], a                                ; $694b: $e0 $10
    ldh [rP1], a                                  ; $694d: $e0 $00
    ret nz                                        ; $694f: $c0

    rst $38                                       ; $6950: $ff
    rst $38                                       ; $6951: $ff
    rst $38                                       ; $6952: $ff
    rst $38                                       ; $6953: $ff
    rst $38                                       ; $6954: $ff
    rst $38                                       ; $6955: $ff
    rst $30                                       ; $6956: $f7
    rst $38                                       ; $6957: $ff
    cp h                                          ; $6958: $bc
    rst $38                                       ; $6959: $ff
    add sp, -$01                                  ; $695a: $e8 $ff
    add c                                         ; $695c: $81
    cp $08                                        ; $695d: $fe $08
    ldh a, [$bc]                                  ; $695f: $f0 $bc
    rst $38                                       ; $6961: $ff

jr_050_6962:
    add sp, -$01                                  ; $6962: $e8 $ff
    add c                                         ; $6964: $81
    cp $08                                        ; $6965: $fe $08
    ldh a, [rNR41]                                ; $6967: $f0 $20
    ret nz                                        ; $6969: $c0

    nop                                           ; $696a: $00
    nop                                           ; $696b: $00
    nop                                           ; $696c: $00
    nop                                           ; $696d: $00
    nop                                           ; $696e: $00
    nop                                           ; $696f: $00

jr_050_6970:
    ld a, a                                       ; $6970: $7f
    rst $38                                       ; $6971: $ff
    cpl                                           ; $6972: $2f
    rst $38                                       ; $6973: $ff
    ccf                                           ; $6974: $3f
    rst $38                                       ; $6975: $ff
    rra                                           ; $6976: $1f
    rst $38                                       ; $6977: $ff
    or a                                          ; $6978: $b7
    ld a, a                                       ; $6979: $7f
    rra                                           ; $697a: $1f
    ld a, a                                       ; $697b: $7f
    rrca                                          ; $697c: $0f
    ld a, a                                       ; $697d: $7f
    ld c, a                                       ; $697e: $4f
    ccf                                           ; $697f: $3f
    rlca                                          ; $6980: $07
    rra                                           ; $6981: $1f
    ld [bc], a                                    ; $6982: $02
    rra                                           ; $6983: $1f
    inc de                                        ; $6984: $13
    rrca                                          ; $6985: $0f
    ld bc, $0b0f                                  ; $6986: $01 $0f $0b
    rlca                                          ; $6989: $07
    ld bc, $0007                                  ; $698a: $01 $07 $00
    rlca                                          ; $698d: $07
    inc b                                         ; $698e: $04
    inc bc                                        ; $698f: $03
    ld e, h                                       ; $6990: $5c
    rst $38                                       ; $6991: $ff
    nop                                           ; $6992: $00
    rst $38                                       ; $6993: $ff
    add c                                         ; $6994: $81
    inc a                                         ; $6995: $3c
    stop                                          ; $6996: $10 $00
    nop                                           ; $6998: $00
    nop                                           ; $6999: $00
    nop                                           ; $699a: $00
    nop                                           ; $699b: $00
    nop                                           ; $699c: $00
    nop                                           ; $699d: $00
    nop                                           ; $699e: $00
    nop                                           ; $699f: $00
    jr nz, jr_050_6962                            ; $69a0: $20 $c0

    add b                                         ; $69a2: $80
    ret nz                                        ; $69a3: $c0

    nop                                           ; $69a4: $00
    ldh [$90], a                                  ; $69a5: $e0 $90
    ldh [$80], a                                  ; $69a7: $e0 $80
    ldh [$80], a                                  ; $69a9: $e0 $80
    ldh [rP1], a                                  ; $69ab: $e0 $00
    ret nz                                        ; $69ad: $c0

    jr nz, jr_050_6970                            ; $69ae: $20 $c0

    rst $38                                       ; $69b0: $ff
    rst $38                                       ; $69b1: $ff

jr_050_69b2:
    ld a, l                                       ; $69b2: $7d
    rst $38                                       ; $69b3: $ff
    rst $28                                       ; $69b4: $ef
    rst $38                                       ; $69b5: $ff
    ld a, [hl-]                                   ; $69b6: $3a
    rst $38                                       ; $69b7: $ff
    nop                                           ; $69b8: $00
    rst $38                                       ; $69b9: $ff
    add c                                         ; $69ba: $81
    inc a                                         ; $69bb: $3c
    ld [$0000], sp                                ; $69bc: $08 $00 $00
    nop                                           ; $69bf: $00
    and h                                         ; $69c0: $a4
    ld hl, sp-$20                                 ; $69c1: $f8 $e0
    ld hl, sp-$10                                 ; $69c3: $f8 $f0
    db $fc                                        ; $69c5: $fc
    ret nc                                        ; $69c6: $d0

    db $fc                                        ; $69c7: $fc
    ld a, [c]                                     ; $69c8: $f2
    db $fc                                        ; $69c9: $fc
    ldh [$fc], a                                  ; $69ca: $e0 $fc
    or b                                          ; $69cc: $b0
    ld hl, sp-$1c                                 ; $69cd: $f8 $e4
    ld hl, sp-$01                                 ; $69cf: $f8 $ff
    rst $38                                       ; $69d1: $ff
    rst $38                                       ; $69d2: $ff
    rst $38                                       ; $69d3: $ff
    rst $38                                       ; $69d4: $ff
    rst $38                                       ; $69d5: $ff
    rst $30                                       ; $69d6: $f7
    rst $38                                       ; $69d7: $ff
    cp [hl]                                       ; $69d8: $be
    rst $38                                       ; $69d9: $ff
    db $e3                                        ; $69da: $e3
    rst $38                                       ; $69db: $ff
    ld b, b                                       ; $69dc: $40
    rst $38                                       ; $69dd: $ff
    nop                                           ; $69de: $00
    rst $20                                       ; $69df: $e7
    db $fc                                        ; $69e0: $fc
    rst $38                                       ; $69e1: $ff

jr_050_69e2:
    or $ff                                        ; $69e2: $f6 $ff
    db $fc                                        ; $69e4: $fc
    rst $38                                       ; $69e5: $ff
    ld hl, sp-$02                                 ; $69e6: $f8 $fe
    add sp, -$02                                  ; $69e8: $e8 $fe
    ld hl, sp-$01                                 ; $69ea: $f8 $ff
    db $fc                                        ; $69ec: $fc
    rst $38                                       ; $69ed: $ff
    db $f4                                        ; $69ee: $f4
    rst $38                                       ; $69ef: $ff
    jr nz, jr_050_69b2                            ; $69f0: $20 $c0

    nop                                           ; $69f2: $00
    add b                                         ; $69f3: $80
    nop                                           ; $69f4: $00
    nop                                           ; $69f5: $00
    nop                                           ; $69f6: $00
    nop                                           ; $69f7: $00
    nop                                           ; $69f8: $00
    nop                                           ; $69f9: $00
    nop                                           ; $69fa: $00
    nop                                           ; $69fb: $00
    nop                                           ; $69fc: $00
    nop                                           ; $69fd: $00

jr_050_69fe:
    nop                                           ; $69fe: $00
    nop                                           ; $69ff: $00
    nop                                           ; $6a00: $00
    ret nz                                        ; $6a01: $c0

    nop                                           ; $6a02: $00
    add b                                         ; $6a03: $80
    add b                                         ; $6a04: $80
    nop                                           ; $6a05: $00
    nop                                           ; $6a06: $00
    nop                                           ; $6a07: $00
    nop                                           ; $6a08: $00
    nop                                           ; $6a09: $00
    nop                                           ; $6a0a: $00
    nop                                           ; $6a0b: $00
    nop                                           ; $6a0c: $00
    nop                                           ; $6a0d: $00
    nop                                           ; $6a0e: $00
    nop                                           ; $6a0f: $00
    nop                                           ; $6a10: $00
    ret nz                                        ; $6a11: $c0

    ld b, b                                       ; $6a12: $40
    add b                                         ; $6a13: $80
    nop                                           ; $6a14: $00
    nop                                           ; $6a15: $00
    nop                                           ; $6a16: $00
    nop                                           ; $6a17: $00
    nop                                           ; $6a18: $00
    nop                                           ; $6a19: $00
    nop                                           ; $6a1a: $00
    nop                                           ; $6a1b: $00
    nop                                           ; $6a1c: $00
    nop                                           ; $6a1d: $00
    nop                                           ; $6a1e: $00
    nop                                           ; $6a1f: $00
    jr nz, jr_050_69e2                            ; $6a20: $20 $c0

    nop                                           ; $6a22: $00
    add b                                         ; $6a23: $80
    add b                                         ; $6a24: $80
    nop                                           ; $6a25: $00
    nop                                           ; $6a26: $00
    nop                                           ; $6a27: $00
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    nop                                           ; $6a2a: $00
    nop                                           ; $6a2b: $00
    nop                                           ; $6a2c: $00
    nop                                           ; $6a2d: $00
    nop                                           ; $6a2e: $00
    nop                                           ; $6a2f: $00

Jump_050_6a30:
    db $ec                                        ; $6a30: $ec
    rst $38                                       ; $6a31: $ff
    ld sp, hl                                     ; $6a32: $f9
    cp $e6                                        ; $6a33: $fe $e6
    ld hl, sp+$48                                 ; $6a35: $f8 $48
    ldh a, [$d0]                                  ; $6a37: $f0 $d0
    ldh [$a8], a                                  ; $6a39: $e0 $a8
    ret nz                                        ; $6a3b: $c0

    jr nz, jr_050_69fe                            ; $6a3c: $20 $c0

    ld b, b                                       ; $6a3e: $40
    add b                                         ; $6a3f: $80
    rst $38                                       ; $6a40: $ff
    rst $38                                       ; $6a41: $ff
    rst $38                                       ; $6a42: $ff
    rst $38                                       ; $6a43: $ff
    rst $38                                       ; $6a44: $ff
    rst $38                                       ; $6a45: $ff
    rst $30                                       ; $6a46: $f7
    rst $38                                       ; $6a47: $ff
    cp h                                          ; $6a48: $bc
    rst $38                                       ; $6a49: $ff
    jp hl                                         ; $6a4a: $e9


    cp $8e                                        ; $6a4b: $fe $8e
    ldh a, [$30]                                  ; $6a4d: $f0 $30
    ret nz                                        ; $6a4f: $c0

    cp h                                          ; $6a50: $bc
    rst $38                                       ; $6a51: $ff
    jp hl                                         ; $6a52: $e9


    cp $8e                                        ; $6a53: $fe $8e
    ldh a, [$30]                                  ; $6a55: $f0 $30
    ret nz                                        ; $6a57: $c0

    ret z                                         ; $6a58: $c8

    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    nop                                           ; $6a5b: $00
    nop                                           ; $6a5c: $00
    nop                                           ; $6a5d: $00
    nop                                           ; $6a5e: $00
    nop                                           ; $6a5f: $00
    ld a, a                                       ; $6a60: $7f
    rst $38                                       ; $6a61: $ff
    cpl                                           ; $6a62: $2f
    rst $38                                       ; $6a63: $ff
    cp a                                          ; $6a64: $bf
    ld a, a                                       ; $6a65: $7f
    sbc a                                         ; $6a66: $9f
    ld a, a                                       ; $6a67: $7f
    ld [hl], a                                    ; $6a68: $77
    ccf                                           ; $6a69: $3f
    ld e, a                                       ; $6a6a: $5f
    ccf                                           ; $6a6b: $3f
    ld c, a                                       ; $6a6c: $4f
    ccf                                           ; $6a6d: $3f
    cpl                                           ; $6a6e: $2f
    rra                                           ; $6a6f: $1f
    rla                                           ; $6a70: $17
    rrca                                          ; $6a71: $0f
    ld [de], a                                    ; $6a72: $12
    rrca                                          ; $6a73: $0f
    dec bc                                        ; $6a74: $0b
    rlca                                          ; $6a75: $07
    add hl, bc                                    ; $6a76: $09
    rlca                                          ; $6a77: $07
    rla                                           ; $6a78: $17
    inc bc                                        ; $6a79: $03
    dec b                                         ; $6a7a: $05
    inc bc                                        ; $6a7b: $03
    inc b                                         ; $6a7c: $04
    inc bc                                        ; $6a7d: $03
    ld [bc], a                                    ; $6a7e: $02
    ld bc, $ff5c                                  ; $6a7f: $01 $5c $ff
    jp Jump_000_3c3c                              ; $6a82: $c3 $3c $3c


    nop                                           ; $6a85: $00
    ld [bc], a                                    ; $6a86: $02
    nop                                           ; $6a87: $00
    nop                                           ; $6a88: $00
    nop                                           ; $6a89: $00
    nop                                           ; $6a8a: $00
    nop                                           ; $6a8b: $00
    nop                                           ; $6a8c: $00
    nop                                           ; $6a8d: $00
    nop                                           ; $6a8e: $00
    nop                                           ; $6a8f: $00
    ld b, b                                       ; $6a90: $40
    add b                                         ; $6a91: $80
    ret nz                                        ; $6a92: $c0

    add b                                         ; $6a93: $80
    jr nz, @-$3e                                  ; $6a94: $20 $c0

    and b                                         ; $6a96: $a0
    ret nz                                        ; $6a97: $c0

    and b                                         ; $6a98: $a0
    ret nz                                        ; $6a99: $c0

    and b                                         ; $6a9a: $a0
    ret nz                                        ; $6a9b: $c0

    ld d, b                                       ; $6a9c: $50
    add b                                         ; $6a9d: $80
    ld b, b                                       ; $6a9e: $40
    add b                                         ; $6a9f: $80
    rst $38                                       ; $6aa0: $ff
    rst $38                                       ; $6aa1: $ff
    ld a, l                                       ; $6aa2: $7d
    rst $38                                       ; $6aa3: $ff
    rst $28                                       ; $6aa4: $ef
    rst $38                                       ; $6aa5: $ff
    ld a, [hl-]                                   ; $6aa6: $3a
    rst $38                                       ; $6aa7: $ff
    jp Jump_000_3c3c                              ; $6aa8: $c3 $3c $3c


    nop                                           ; $6aab: $00
    ld b, b                                       ; $6aac: $40
    nop                                           ; $6aad: $00
    nop                                           ; $6aae: $00
    nop                                           ; $6aaf: $00
    xor b                                         ; $6ab0: $a8
    ldh a, [$ea]                                  ; $6ab1: $f0 $ea
    ldh a, [$f4]                                  ; $6ab3: $f0 $f4
    ld hl, sp-$2c                                 ; $6ab5: $f8 $d4
    ld hl, sp-$0c                                 ; $6ab7: $f8 $f4
    ld hl, sp-$1c                                 ; $6ab9: $f8 $e4
    ld hl, sp-$48                                 ; $6abb: $f8 $b8
    ldh a, [$e8]                                  ; $6abd: $f0 $e8
    ldh a, [rIE]                                  ; $6abf: $f0 $ff
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    rst $38                                       ; $6ac5: $ff
    rst $30                                       ; $6ac6: $f7
    rst $38                                       ; $6ac7: $ff
    cp [hl]                                       ; $6ac8: $be
    rst $38                                       ; $6ac9: $ff
    db $e3                                        ; $6aca: $e3
    rst $38                                       ; $6acb: $ff
    ld e, b                                       ; $6acc: $58
    rst $20                                       ; $6acd: $e7
    ld h, [hl]                                    ; $6ace: $66
    add c                                         ; $6acf: $81
    db $fc                                        ; $6ad0: $fc
    rst $38                                       ; $6ad1: $ff
    rst $30                                       ; $6ad2: $f7
    cp $fd                                        ; $6ad3: $fe $fd
    cp $fa                                        ; $6ad5: $fe $fa
    db $fc                                        ; $6ad7: $fc
    ld [$f9fc], a                                 ; $6ad8: $ea $fc $f9
    cp $fd                                        ; $6adb: $fe $fd
    cp $f4                                        ; $6add: $fe $f4
    rst $38                                       ; $6adf: $ff
    ld c, b                                       ; $6ae0: $48
    add b                                         ; $6ae1: $80
    add b                                         ; $6ae2: $80
    nop                                           ; $6ae3: $00
    nop                                           ; $6ae4: $00
    nop                                           ; $6ae5: $00
    nop                                           ; $6ae6: $00
    nop                                           ; $6ae7: $00
    nop                                           ; $6ae8: $00
    nop                                           ; $6ae9: $00
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    nop                                           ; $6aec: $00
    nop                                           ; $6aed: $00
    nop                                           ; $6aee: $00
    nop                                           ; $6aef: $00
    ld b, b                                       ; $6af0: $40
    add b                                         ; $6af1: $80
    add b                                         ; $6af2: $80
    nop                                           ; $6af3: $00
    nop                                           ; $6af4: $00
    nop                                           ; $6af5: $00
    nop                                           ; $6af6: $00
    nop                                           ; $6af7: $00
    add b                                         ; $6af8: $80
    nop                                           ; $6af9: $00
    nop                                           ; $6afa: $00
    nop                                           ; $6afb: $00
    nop                                           ; $6afc: $00
    nop                                           ; $6afd: $00
    nop                                           ; $6afe: $00
    nop                                           ; $6aff: $00
    ret nz                                        ; $6b00: $c0

    nop                                           ; $6b01: $00
    add b                                         ; $6b02: $80
    nop                                           ; $6b03: $00
    nop                                           ; $6b04: $00
    nop                                           ; $6b05: $00
    nop                                           ; $6b06: $00
    nop                                           ; $6b07: $00
    nop                                           ; $6b08: $00
    nop                                           ; $6b09: $00
    nop                                           ; $6b0a: $00
    nop                                           ; $6b0b: $00
    nop                                           ; $6b0c: $00
    nop                                           ; $6b0d: $00
    nop                                           ; $6b0e: $00
    nop                                           ; $6b0f: $00
    add b                                         ; $6b10: $80
    nop                                           ; $6b11: $00
    nop                                           ; $6b12: $00
    nop                                           ; $6b13: $00
    nop                                           ; $6b14: $00
    nop                                           ; $6b15: $00
    nop                                           ; $6b16: $00
    nop                                           ; $6b17: $00
    nop                                           ; $6b18: $00
    nop                                           ; $6b19: $00
    nop                                           ; $6b1a: $00
    nop                                           ; $6b1b: $00
    nop                                           ; $6b1c: $00
    nop                                           ; $6b1d: $00
    nop                                           ; $6b1e: $00
    nop                                           ; $6b1f: $00
    db $ed                                        ; $6b20: $ed
    cp $fe                                        ; $6b21: $fe $fe
    ld hl, sp-$18                                 ; $6b23: $f8 $e8
    ldh a, [rHDMA2]                               ; $6b25: $f0 $52
    ldh [$e8], a                                  ; $6b27: $e0 $e8
    ret nz                                        ; $6b29: $c0

    ret nz                                        ; $6b2a: $c0

    add b                                         ; $6b2b: $80
    ld d, b                                       ; $6b2c: $50
    add b                                         ; $6b2d: $80
    add b                                         ; $6b2e: $80
    nop                                           ; $6b2f: $00
    rst $38                                       ; $6b30: $ff
    rst $38                                       ; $6b31: $ff
    rst $38                                       ; $6b32: $ff
    rst $38                                       ; $6b33: $ff
    rst $38                                       ; $6b34: $ff
    rst $38                                       ; $6b35: $ff
    rst $30                                       ; $6b36: $f7
    rst $38                                       ; $6b37: $ff
    cp l                                          ; $6b38: $bd
    cp $ee                                        ; $6b39: $fe $ee
    ldh a, [$b1]                                  ; $6b3b: $f0 $b1
    ret nz                                        ; $6b3d: $c0

    ret z                                         ; $6b3e: $c8

    nop                                           ; $6b3f: $00
    cp l                                          ; $6b40: $bd
    cp $ee                                        ; $6b41: $fe $ee
    ldh a, [$b1]                                  ; $6b43: $f0 $b1
    ret nz                                        ; $6b45: $c0

    ret z                                         ; $6b46: $c8

    nop                                           ; $6b47: $00
    jr nz, jr_050_6b4a                            ; $6b48: $20 $00

jr_050_6b4a:
    nop                                           ; $6b4a: $00
    nop                                           ; $6b4b: $00
    nop                                           ; $6b4c: $00
    nop                                           ; $6b4d: $00
    nop                                           ; $6b4e: $00
    nop                                           ; $6b4f: $00
    rst $38                                       ; $6b50: $ff
    ld a, a                                       ; $6b51: $7f
    xor a                                         ; $6b52: $af
    ld a, a                                       ; $6b53: $7f
    ld a, a                                       ; $6b54: $7f
    ccf                                           ; $6b55: $3f
    ld e, a                                       ; $6b56: $5f
    ccf                                           ; $6b57: $3f
    or a                                          ; $6b58: $b7
    rra                                           ; $6b59: $1f
    ccf                                           ; $6b5a: $3f
    rra                                           ; $6b5b: $1f
    cpl                                           ; $6b5c: $2f
    rra                                           ; $6b5d: $1f
    ld e, a                                       ; $6b5e: $5f
    rrca                                          ; $6b5f: $0f
    rrca                                          ; $6b60: $0f
    rlca                                          ; $6b61: $07
    ld a, [bc]                                    ; $6b62: $0a
    rlca                                          ; $6b63: $07
    rla                                           ; $6b64: $17
    inc bc                                        ; $6b65: $03
    dec b                                         ; $6b66: $05
    inc bc                                        ; $6b67: $03
    dec bc                                        ; $6b68: $0b
    ld bc, $0103                                  ; $6b69: $01 $03 $01
    ld [bc], a                                    ; $6b6c: $02
    ld bc, $0005                                  ; $6b6d: $01 $05 $00
    rst $18                                       ; $6b70: $df
    inc a                                         ; $6b71: $3c
    inc a                                         ; $6b72: $3c
    nop                                           ; $6b73: $00
    ld b, d                                       ; $6b74: $42
    nop                                           ; $6b75: $00
    nop                                           ; $6b76: $00
    nop                                           ; $6b77: $00
    nop                                           ; $6b78: $00
    nop                                           ; $6b79: $00
    nop                                           ; $6b7a: $00
    nop                                           ; $6b7b: $00
    nop                                           ; $6b7c: $00
    nop                                           ; $6b7d: $00
    nop                                           ; $6b7e: $00
    nop                                           ; $6b7f: $00
    add b                                         ; $6b80: $80
    nop                                           ; $6b81: $00
    and b                                         ; $6b82: $a0
    nop                                           ; $6b83: $00
    ld b, b                                       ; $6b84: $40
    add b                                         ; $6b85: $80
    ret nz                                        ; $6b86: $c0

    add b                                         ; $6b87: $80
    ret nz                                        ; $6b88: $c0

    add b                                         ; $6b89: $80
    ret nz                                        ; $6b8a: $c0

    add b                                         ; $6b8b: $80
    and b                                         ; $6b8c: $a0
    nop                                           ; $6b8d: $00
    add b                                         ; $6b8e: $80
    nop                                           ; $6b8f: $00
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    ld a, l                                       ; $6b92: $7d
    rst $38                                       ; $6b93: $ff
    rst $28                                       ; $6b94: $ef
    rst $38                                       ; $6b95: $ff
    ei                                            ; $6b96: $fb
    inc a                                         ; $6b97: $3c
    inc a                                         ; $6b98: $3c
    nop                                           ; $6b99: $00
    ld b, d                                       ; $6b9a: $42
    nop                                           ; $6b9b: $00
    nop                                           ; $6b9c: $00
    nop                                           ; $6b9d: $00
    nop                                           ; $6b9e: $00
    nop                                           ; $6b9f: $00
    or b                                          ; $6ba0: $b0
    ldh [$f4], a                                  ; $6ba1: $e0 $f4
    ldh [$f8], a                                  ; $6ba3: $e0 $f8
    ldh a, [$d8]                                  ; $6ba5: $f0 $d8
    ldh a, [$f8]                                  ; $6ba7: $f0 $f8
    ldh a, [$e8]                                  ; $6ba9: $f0 $e8
    ldh a, [$b4]                                  ; $6bab: $f0 $b4
    ldh [$f0], a                                  ; $6bad: $e0 $f0
    ldh [rIE], a                                  ; $6baf: $e0 $ff
    rst $38                                       ; $6bb1: $ff
    rst $38                                       ; $6bb2: $ff
    rst $38                                       ; $6bb3: $ff
    rst $38                                       ; $6bb4: $ff
    rst $38                                       ; $6bb5: $ff
    rst $30                                       ; $6bb6: $f7
    rst $38                                       ; $6bb7: $ff
    cp [hl]                                       ; $6bb8: $be
    rst $38                                       ; $6bb9: $ff
    ei                                            ; $6bba: $fb
    rst $20                                       ; $6bbb: $e7
    ld h, [hl]                                    ; $6bbc: $66
    add c                                         ; $6bbd: $81
    sub c                                         ; $6bbe: $91
    nop                                           ; $6bbf: $00
    db $fd                                        ; $6bc0: $fd
    cp $f6                                        ; $6bc1: $fe $f6
    db $fc                                        ; $6bc3: $fc
    cp $fc                                        ; $6bc4: $fe $fc
    db $fd                                        ; $6bc6: $fd
    ld hl, sp-$14                                 ; $6bc7: $f8 $ec
    ld hl, sp-$06                                 ; $6bc9: $f8 $fa
    db $fc                                        ; $6bcb: $fc
    cp $fc                                        ; $6bcc: $fe $fc
    push af                                       ; $6bce: $f5
    cp $20                                        ; $6bcf: $fe $20
    nop                                           ; $6bd1: $00
    nop                                           ; $6bd2: $00
    nop                                           ; $6bd3: $00
    nop                                           ; $6bd4: $00
    nop                                           ; $6bd5: $00
    nop                                           ; $6bd6: $00
    nop                                           ; $6bd7: $00
    nop                                           ; $6bd8: $00
    nop                                           ; $6bd9: $00
    nop                                           ; $6bda: $00
    nop                                           ; $6bdb: $00
    nop                                           ; $6bdc: $00
    nop                                           ; $6bdd: $00
    nop                                           ; $6bde: $00
    nop                                           ; $6bdf: $00
    nop                                           ; $6be0: $00
    nop                                           ; $6be1: $00
    nop                                           ; $6be2: $00
    nop                                           ; $6be3: $00
    add b                                         ; $6be4: $80
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
    and b                                         ; $6bf0: $a0
    nop                                           ; $6bf1: $00
    nop                                           ; $6bf2: $00
    nop                                           ; $6bf3: $00
    add b                                         ; $6bf4: $80
    nop                                           ; $6bf5: $00
    nop                                           ; $6bf6: $00
    nop                                           ; $6bf7: $00
    nop                                           ; $6bf8: $00
    nop                                           ; $6bf9: $00
    nop                                           ; $6bfa: $00
    nop                                           ; $6bfb: $00
    nop                                           ; $6bfc: $00
    nop                                           ; $6bfd: $00
    nop                                           ; $6bfe: $00
    nop                                           ; $6bff: $00
    nop                                           ; $6c00: $00
    nop                                           ; $6c01: $00
    ld b, b                                       ; $6c02: $40
    nop                                           ; $6c03: $00
    nop                                           ; $6c04: $00
    nop                                           ; $6c05: $00
    nop                                           ; $6c06: $00
    nop                                           ; $6c07: $00
    nop                                           ; $6c08: $00
    nop                                           ; $6c09: $00
    nop                                           ; $6c0a: $00
    nop                                           ; $6c0b: $00
    nop                                           ; $6c0c: $00
    nop                                           ; $6c0d: $00
    nop                                           ; $6c0e: $00
    nop                                           ; $6c0f: $00
    ld [bc], a                                    ; $6c10: $02
    add c                                         ; $6c11: $81
    and b                                         ; $6c12: $a0
    pop bc                                        ; $6c13: $c1
    add b                                         ; $6c14: $80
    pop bc                                        ; $6c15: $c1
    add l                                         ; $6c16: $85
    jp $c3a1                                      ; $6c17: $c3 $a1 $c3


    nop                                           ; $6c1a: $00
    add e                                         ; $6c1b: $83
    dec b                                         ; $6c1c: $05
    add e                                         ; $6c1d: $83
    ld b, b                                       ; $6c1e: $40
    add c                                         ; $6c1f: $81
    ld b, c                                       ; $6c20: $41
    add b                                         ; $6c21: $80
    nop                                           ; $6c22: $00
    add b                                         ; $6c23: $80
    add b                                         ; $6c24: $80
    ret nz                                        ; $6c25: $c0

    and b                                         ; $6c26: $a0
    ret nz                                        ; $6c27: $c0

    ret nz                                        ; $6c28: $c0

    ldh [rBCPS], a                                ; $6c29: $e0 $68
    ldh a, [$f1]                                  ; $6c2b: $f0 $f1
    db $fc                                        ; $6c2d: $fc
    call c, Call_000_1eff                         ; $6c2e: $dc $ff $1e
    rst $38                                       ; $6c31: $ff
    add b                                         ; $6c32: $80
    ld e, $12                                     ; $6c33: $1e $12
    nop                                           ; $6c35: $00
    nop                                           ; $6c36: $00
    nop                                           ; $6c37: $00
    nop                                           ; $6c38: $00
    nop                                           ; $6c39: $00
    ld c, b                                       ; $6c3a: $48
    nop                                           ; $6c3b: $00
    ld bc, $5878                                  ; $6c3c: $01 $78 $58
    rst $38                                       ; $6c3f: $ff
    ld b, b                                       ; $6c40: $40
    add c                                         ; $6c41: $81
    add d                                         ; $6c42: $82
    pop bc                                        ; $6c43: $c1
    and b                                         ; $6c44: $a0
    pop bc                                        ; $6c45: $c1
    and c                                         ; $6c46: $a1
    jp $c385                                      ; $6c47: $c3 $85 $c3


    inc b                                         ; $6c4a: $04
    add e                                         ; $6c4b: $83
    ld b, c                                       ; $6c4c: $41
    add e                                         ; $6c4d: $83
    ld [bc], a                                    ; $6c4e: $02
    add c                                         ; $6c4f: $81
    nop                                           ; $6c50: $00
    add b                                         ; $6c51: $80
    nop                                           ; $6c52: $00
    add b                                         ; $6c53: $80
    and b                                         ; $6c54: $a0
    ret nz                                        ; $6c55: $c0

    add b                                         ; $6c56: $80
    ret nz                                        ; $6c57: $c0

    ret nc                                        ; $6c58: $d0

    ldh [$64], a                                  ; $6c59: $e0 $64
    ldh a, [$f0]                                  ; $6c5b: $f0 $f0
    db $fc                                        ; $6c5d: $fc
    call c, Call_000_1eff                         ; $6c5e: $dc $ff $1e
    rst $38                                       ; $6c61: $ff
    ld b, c                                       ; $6c62: $41
    ld e, $0c                                     ; $6c63: $1e $0c
    nop                                           ; $6c65: $00
    nop                                           ; $6c66: $00
    nop                                           ; $6c67: $00
    nop                                           ; $6c68: $00
    nop                                           ; $6c69: $00
    jr nc, jr_050_6c6c                            ; $6c6a: $30 $00

jr_050_6c6c:
    add d                                         ; $6c6c: $82
    ld a, b                                       ; $6c6d: $78
    ld e, b                                       ; $6c6e: $58
    rst $38                                       ; $6c6f: $ff
    nop                                           ; $6c70: $00
    ret nz                                        ; $6c71: $c0

    ld b, b                                       ; $6c72: $40
    add b                                         ; $6c73: $80
    nop                                           ; $6c74: $00
    nop                                           ; $6c75: $00
    nop                                           ; $6c76: $00
    nop                                           ; $6c77: $00
    nop                                           ; $6c78: $00
    nop                                           ; $6c79: $00
    nop                                           ; $6c7a: $00
    nop                                           ; $6c7b: $00
    ld [bc], a                                    ; $6c7c: $02
    ld bc, $0300                                  ; $6c7d: $01 $00 $03
    ret nz                                        ; $6c80: $c0

    nop                                           ; $6c81: $00
    add b                                         ; $6c82: $80
    nop                                           ; $6c83: $00
    nop                                           ; $6c84: $00
    nop                                           ; $6c85: $00
    nop                                           ; $6c86: $00
    nop                                           ; $6c87: $00
    nop                                           ; $6c88: $00
    nop                                           ; $6c89: $00
    nop                                           ; $6c8a: $00
    nop                                           ; $6c8b: $00
    ld bc, $0300                                  ; $6c8c: $01 $00 $03
    nop                                           ; $6c8f: $00
    and b                                         ; $6c90: $a0
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    nop                                           ; $6c93: $00
    add b                                         ; $6c94: $80
    nop                                           ; $6c95: $00
    nop                                           ; $6c96: $00
    nop                                           ; $6c97: $00
    nop                                           ; $6c98: $00
    nop                                           ; $6c99: $00
    ld bc, $0000                                  ; $6c9a: $01 $00 $00
    nop                                           ; $6c9d: $00
    dec b                                         ; $6c9e: $05
    nop                                           ; $6c9f: $00
    nop                                           ; $6ca0: $00
    nop                                           ; $6ca1: $00
    nop                                           ; $6ca2: $00
    nop                                           ; $6ca3: $00
    nop                                           ; $6ca4: $00
    nop                                           ; $6ca5: $00
    nop                                           ; $6ca6: $00
    nop                                           ; $6ca7: $00
    nop                                           ; $6ca8: $00
    nop                                           ; $6ca9: $00
    nop                                           ; $6caa: $00
    nop                                           ; $6cab: $00
    nop                                           ; $6cac: $00
    nop                                           ; $6cad: $00
    nop                                           ; $6cae: $00
    nop                                           ; $6caf: $00
    nop                                           ; $6cb0: $00
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    nop                                           ; $6cb3: $00
    nop                                           ; $6cb4: $00
    nop                                           ; $6cb5: $00
    nop                                           ; $6cb6: $00
    nop                                           ; $6cb7: $00
    nop                                           ; $6cb8: $00
    nop                                           ; $6cb9: $00
    nop                                           ; $6cba: $00
    nop                                           ; $6cbb: $00
    nop                                           ; $6cbc: $00
    nop                                           ; $6cbd: $00
    nop                                           ; $6cbe: $00
    nop                                           ; $6cbf: $00
    nop                                           ; $6cc0: $00
    nop                                           ; $6cc1: $00
    nop                                           ; $6cc2: $00
    nop                                           ; $6cc3: $00
    nop                                           ; $6cc4: $00
    nop                                           ; $6cc5: $00
    nop                                           ; $6cc6: $00
    nop                                           ; $6cc7: $00
    nop                                           ; $6cc8: $00
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    nop                                           ; $6ccb: $00
    nop                                           ; $6ccc: $00
    nop                                           ; $6ccd: $00
    nop                                           ; $6cce: $00
    nop                                           ; $6ccf: $00
    nop                                           ; $6cd0: $00
    nop                                           ; $6cd1: $00
    nop                                           ; $6cd2: $00
    nop                                           ; $6cd3: $00
    nop                                           ; $6cd4: $00
    nop                                           ; $6cd5: $00
    nop                                           ; $6cd6: $00
    nop                                           ; $6cd7: $00
    nop                                           ; $6cd8: $00
    nop                                           ; $6cd9: $00
    nop                                           ; $6cda: $00
    nop                                           ; $6cdb: $00
    nop                                           ; $6cdc: $00
    nop                                           ; $6cdd: $00
    nop                                           ; $6cde: $00
    nop                                           ; $6cdf: $00
    nop                                           ; $6ce0: $00
    nop                                           ; $6ce1: $00
    nop                                           ; $6ce2: $00
    nop                                           ; $6ce3: $00
    nop                                           ; $6ce4: $00
    nop                                           ; $6ce5: $00
    nop                                           ; $6ce6: $00
    nop                                           ; $6ce7: $00
    nop                                           ; $6ce8: $00
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    nop                                           ; $6ceb: $00
    nop                                           ; $6cec: $00
    nop                                           ; $6ced: $00
    nop                                           ; $6cee: $00
    nop                                           ; $6cef: $00
    nop                                           ; $6cf0: $00
    nop                                           ; $6cf1: $00
    nop                                           ; $6cf2: $00
    nop                                           ; $6cf3: $00
    nop                                           ; $6cf4: $00
    nop                                           ; $6cf5: $00
    nop                                           ; $6cf6: $00
    nop                                           ; $6cf7: $00
    nop                                           ; $6cf8: $00
    nop                                           ; $6cf9: $00
    nop                                           ; $6cfa: $00
    nop                                           ; $6cfb: $00
    nop                                           ; $6cfc: $00
    nop                                           ; $6cfd: $00
    nop                                           ; $6cfe: $00
    nop                                           ; $6cff: $00
    nop                                           ; $6d00: $00
    nop                                           ; $6d01: $00
    nop                                           ; $6d02: $00
    nop                                           ; $6d03: $00
    nop                                           ; $6d04: $00
    nop                                           ; $6d05: $00
    nop                                           ; $6d06: $00
    nop                                           ; $6d07: $00
    nop                                           ; $6d08: $00
    nop                                           ; $6d09: $00
    nop                                           ; $6d0a: $00
    nop                                           ; $6d0b: $00
    nop                                           ; $6d0c: $00
    nop                                           ; $6d0d: $00
    nop                                           ; $6d0e: $00
    nop                                           ; $6d0f: $00
    nop                                           ; $6d10: $00
    nop                                           ; $6d11: $00
    nop                                           ; $6d12: $00
    nop                                           ; $6d13: $00
    nop                                           ; $6d14: $00
    nop                                           ; $6d15: $00
    nop                                           ; $6d16: $00
    nop                                           ; $6d17: $00
    nop                                           ; $6d18: $00
    nop                                           ; $6d19: $00
    nop                                           ; $6d1a: $00
    nop                                           ; $6d1b: $00
    nop                                           ; $6d1c: $00
    nop                                           ; $6d1d: $00
    nop                                           ; $6d1e: $00
    nop                                           ; $6d1f: $00
    nop                                           ; $6d20: $00
    nop                                           ; $6d21: $00
    nop                                           ; $6d22: $00
    nop                                           ; $6d23: $00
    nop                                           ; $6d24: $00
    nop                                           ; $6d25: $00
    nop                                           ; $6d26: $00
    nop                                           ; $6d27: $00
    nop                                           ; $6d28: $00
    nop                                           ; $6d29: $00
    nop                                           ; $6d2a: $00
    nop                                           ; $6d2b: $00
    nop                                           ; $6d2c: $00
    nop                                           ; $6d2d: $00
    nop                                           ; $6d2e: $00
    nop                                           ; $6d2f: $00
    nop                                           ; $6d30: $00
    nop                                           ; $6d31: $00
    nop                                           ; $6d32: $00
    nop                                           ; $6d33: $00
    nop                                           ; $6d34: $00
    nop                                           ; $6d35: $00
    nop                                           ; $6d36: $00
    nop                                           ; $6d37: $00
    nop                                           ; $6d38: $00
    nop                                           ; $6d39: $00
    nop                                           ; $6d3a: $00
    nop                                           ; $6d3b: $00
    nop                                           ; $6d3c: $00
    nop                                           ; $6d3d: $00
    nop                                           ; $6d3e: $00
    nop                                           ; $6d3f: $00
    nop                                           ; $6d40: $00
    nop                                           ; $6d41: $00
    nop                                           ; $6d42: $00
    nop                                           ; $6d43: $00
    nop                                           ; $6d44: $00
    nop                                           ; $6d45: $00
    nop                                           ; $6d46: $00
    nop                                           ; $6d47: $00
    nop                                           ; $6d48: $00
    nop                                           ; $6d49: $00
    nop                                           ; $6d4a: $00
    nop                                           ; $6d4b: $00
    nop                                           ; $6d4c: $00
    nop                                           ; $6d4d: $00
    nop                                           ; $6d4e: $00
    nop                                           ; $6d4f: $00
    nop                                           ; $6d50: $00
    nop                                           ; $6d51: $00
    nop                                           ; $6d52: $00
    nop                                           ; $6d53: $00
    nop                                           ; $6d54: $00
    nop                                           ; $6d55: $00
    nop                                           ; $6d56: $00
    nop                                           ; $6d57: $00
    nop                                           ; $6d58: $00
    nop                                           ; $6d59: $00
    nop                                           ; $6d5a: $00
    nop                                           ; $6d5b: $00
    nop                                           ; $6d5c: $00
    nop                                           ; $6d5d: $00
    nop                                           ; $6d5e: $00
    nop                                           ; $6d5f: $00
    nop                                           ; $6d60: $00
    nop                                           ; $6d61: $00
    nop                                           ; $6d62: $00
    nop                                           ; $6d63: $00
    nop                                           ; $6d64: $00
    nop                                           ; $6d65: $00
    nop                                           ; $6d66: $00
    nop                                           ; $6d67: $00
    nop                                           ; $6d68: $00
    nop                                           ; $6d69: $00
    nop                                           ; $6d6a: $00
    nop                                           ; $6d6b: $00
    nop                                           ; $6d6c: $00
    nop                                           ; $6d6d: $00
    nop                                           ; $6d6e: $00
    nop                                           ; $6d6f: $00
    nop                                           ; $6d70: $00
    nop                                           ; $6d71: $00
    nop                                           ; $6d72: $00
    nop                                           ; $6d73: $00
    nop                                           ; $6d74: $00
    nop                                           ; $6d75: $00
    nop                                           ; $6d76: $00
    nop                                           ; $6d77: $00
    nop                                           ; $6d78: $00
    nop                                           ; $6d79: $00
    nop                                           ; $6d7a: $00
    nop                                           ; $6d7b: $00
    nop                                           ; $6d7c: $00
    nop                                           ; $6d7d: $00
    nop                                           ; $6d7e: $00
    nop                                           ; $6d7f: $00
    nop                                           ; $6d80: $00
    nop                                           ; $6d81: $00
    nop                                           ; $6d82: $00
    nop                                           ; $6d83: $00
    nop                                           ; $6d84: $00
    nop                                           ; $6d85: $00
    nop                                           ; $6d86: $00
    nop                                           ; $6d87: $00
    nop                                           ; $6d88: $00
    nop                                           ; $6d89: $00
    nop                                           ; $6d8a: $00
    nop                                           ; $6d8b: $00
    nop                                           ; $6d8c: $00
    nop                                           ; $6d8d: $00
    nop                                           ; $6d8e: $00
    nop                                           ; $6d8f: $00
    nop                                           ; $6d90: $00
    nop                                           ; $6d91: $00
    nop                                           ; $6d92: $00
    nop                                           ; $6d93: $00
    nop                                           ; $6d94: $00
    nop                                           ; $6d95: $00
    nop                                           ; $6d96: $00
    nop                                           ; $6d97: $00
    nop                                           ; $6d98: $00
    nop                                           ; $6d99: $00
    nop                                           ; $6d9a: $00
    nop                                           ; $6d9b: $00
    nop                                           ; $6d9c: $00
    nop                                           ; $6d9d: $00
    nop                                           ; $6d9e: $00
    nop                                           ; $6d9f: $00
    nop                                           ; $6da0: $00
    nop                                           ; $6da1: $00
    nop                                           ; $6da2: $00
    nop                                           ; $6da3: $00
    nop                                           ; $6da4: $00
    nop                                           ; $6da5: $00
    nop                                           ; $6da6: $00
    nop                                           ; $6da7: $00
    nop                                           ; $6da8: $00
    nop                                           ; $6da9: $00
    nop                                           ; $6daa: $00
    nop                                           ; $6dab: $00
    nop                                           ; $6dac: $00
    nop                                           ; $6dad: $00
    nop                                           ; $6dae: $00
    nop                                           ; $6daf: $00
    nop                                           ; $6db0: $00
    nop                                           ; $6db1: $00
    nop                                           ; $6db2: $00
    nop                                           ; $6db3: $00
    nop                                           ; $6db4: $00
    nop                                           ; $6db5: $00
    nop                                           ; $6db6: $00
    nop                                           ; $6db7: $00
    nop                                           ; $6db8: $00
    nop                                           ; $6db9: $00
    nop                                           ; $6dba: $00
    nop                                           ; $6dbb: $00
    nop                                           ; $6dbc: $00
    nop                                           ; $6dbd: $00
    nop                                           ; $6dbe: $00
    nop                                           ; $6dbf: $00
    nop                                           ; $6dc0: $00
    nop                                           ; $6dc1: $00
    nop                                           ; $6dc2: $00
    nop                                           ; $6dc3: $00
    nop                                           ; $6dc4: $00
    nop                                           ; $6dc5: $00
    nop                                           ; $6dc6: $00
    nop                                           ; $6dc7: $00
    nop                                           ; $6dc8: $00
    nop                                           ; $6dc9: $00
    nop                                           ; $6dca: $00
    nop                                           ; $6dcb: $00
    nop                                           ; $6dcc: $00
    nop                                           ; $6dcd: $00
    nop                                           ; $6dce: $00
    nop                                           ; $6dcf: $00
    nop                                           ; $6dd0: $00
    nop                                           ; $6dd1: $00
    nop                                           ; $6dd2: $00
    nop                                           ; $6dd3: $00
    nop                                           ; $6dd4: $00
    nop                                           ; $6dd5: $00
    nop                                           ; $6dd6: $00
    nop                                           ; $6dd7: $00
    nop                                           ; $6dd8: $00
    nop                                           ; $6dd9: $00
    nop                                           ; $6dda: $00
    nop                                           ; $6ddb: $00
    nop                                           ; $6ddc: $00
    nop                                           ; $6ddd: $00
    nop                                           ; $6dde: $00
    nop                                           ; $6ddf: $00
    nop                                           ; $6de0: $00
    nop                                           ; $6de1: $00
    nop                                           ; $6de2: $00
    nop                                           ; $6de3: $00
    nop                                           ; $6de4: $00
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    nop                                           ; $6de7: $00
    nop                                           ; $6de8: $00
    nop                                           ; $6de9: $00
    nop                                           ; $6dea: $00
    nop                                           ; $6deb: $00
    nop                                           ; $6dec: $00
    nop                                           ; $6ded: $00
    nop                                           ; $6dee: $00
    nop                                           ; $6def: $00
    nop                                           ; $6df0: $00
    nop                                           ; $6df1: $00
    nop                                           ; $6df2: $00
    nop                                           ; $6df3: $00
    nop                                           ; $6df4: $00
    nop                                           ; $6df5: $00
    nop                                           ; $6df6: $00
    nop                                           ; $6df7: $00
    nop                                           ; $6df8: $00
    nop                                           ; $6df9: $00
    nop                                           ; $6dfa: $00
    nop                                           ; $6dfb: $00
    nop                                           ; $6dfc: $00
    nop                                           ; $6dfd: $00
    nop                                           ; $6dfe: $00
    nop                                           ; $6dff: $00
    nop                                           ; $6e00: $00
    nop                                           ; $6e01: $00
    nop                                           ; $6e02: $00
    nop                                           ; $6e03: $00
    nop                                           ; $6e04: $00
    nop                                           ; $6e05: $00
    nop                                           ; $6e06: $00
    nop                                           ; $6e07: $00
    nop                                           ; $6e08: $00
    nop                                           ; $6e09: $00
    nop                                           ; $6e0a: $00
    nop                                           ; $6e0b: $00
    nop                                           ; $6e0c: $00
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    nop                                           ; $6e0f: $00
    nop                                           ; $6e10: $00
    nop                                           ; $6e11: $00
    nop                                           ; $6e12: $00
    nop                                           ; $6e13: $00
    nop                                           ; $6e14: $00
    nop                                           ; $6e15: $00
    nop                                           ; $6e16: $00
    nop                                           ; $6e17: $00
    nop                                           ; $6e18: $00
    nop                                           ; $6e19: $00
    nop                                           ; $6e1a: $00
    nop                                           ; $6e1b: $00
    nop                                           ; $6e1c: $00
    nop                                           ; $6e1d: $00
    nop                                           ; $6e1e: $00
    nop                                           ; $6e1f: $00
    nop                                           ; $6e20: $00
    nop                                           ; $6e21: $00
    nop                                           ; $6e22: $00
    nop                                           ; $6e23: $00
    nop                                           ; $6e24: $00
    nop                                           ; $6e25: $00
    nop                                           ; $6e26: $00
    nop                                           ; $6e27: $00
    nop                                           ; $6e28: $00
    nop                                           ; $6e29: $00
    nop                                           ; $6e2a: $00
    nop                                           ; $6e2b: $00
    nop                                           ; $6e2c: $00
    nop                                           ; $6e2d: $00
    nop                                           ; $6e2e: $00
    nop                                           ; $6e2f: $00
    nop                                           ; $6e30: $00
    nop                                           ; $6e31: $00
    nop                                           ; $6e32: $00
    nop                                           ; $6e33: $00
    nop                                           ; $6e34: $00
    nop                                           ; $6e35: $00
    nop                                           ; $6e36: $00
    nop                                           ; $6e37: $00
    nop                                           ; $6e38: $00
    nop                                           ; $6e39: $00
    nop                                           ; $6e3a: $00
    nop                                           ; $6e3b: $00
    nop                                           ; $6e3c: $00
    nop                                           ; $6e3d: $00
    nop                                           ; $6e3e: $00
    nop                                           ; $6e3f: $00
    nop                                           ; $6e40: $00
    nop                                           ; $6e41: $00
    nop                                           ; $6e42: $00
    nop                                           ; $6e43: $00
    nop                                           ; $6e44: $00
    nop                                           ; $6e45: $00
    nop                                           ; $6e46: $00
    nop                                           ; $6e47: $00
    nop                                           ; $6e48: $00
    nop                                           ; $6e49: $00
    nop                                           ; $6e4a: $00
    nop                                           ; $6e4b: $00
    nop                                           ; $6e4c: $00
    nop                                           ; $6e4d: $00
    nop                                           ; $6e4e: $00
    nop                                           ; $6e4f: $00
    nop                                           ; $6e50: $00
    nop                                           ; $6e51: $00
    nop                                           ; $6e52: $00
    nop                                           ; $6e53: $00
    nop                                           ; $6e54: $00
    nop                                           ; $6e55: $00
    nop                                           ; $6e56: $00
    nop                                           ; $6e57: $00
    nop                                           ; $6e58: $00
    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    nop                                           ; $6e5b: $00
    nop                                           ; $6e5c: $00
    nop                                           ; $6e5d: $00
    nop                                           ; $6e5e: $00
    nop                                           ; $6e5f: $00
    nop                                           ; $6e60: $00
    nop                                           ; $6e61: $00
    nop                                           ; $6e62: $00
    nop                                           ; $6e63: $00
    nop                                           ; $6e64: $00
    nop                                           ; $6e65: $00
    nop                                           ; $6e66: $00
    nop                                           ; $6e67: $00
    nop                                           ; $6e68: $00
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    nop                                           ; $6e6b: $00
    nop                                           ; $6e6c: $00
    nop                                           ; $6e6d: $00
    nop                                           ; $6e6e: $00
    nop                                           ; $6e6f: $00
    nop                                           ; $6e70: $00
    nop                                           ; $6e71: $00
    nop                                           ; $6e72: $00
    nop                                           ; $6e73: $00
    nop                                           ; $6e74: $00
    nop                                           ; $6e75: $00
    nop                                           ; $6e76: $00
    nop                                           ; $6e77: $00
    nop                                           ; $6e78: $00
    nop                                           ; $6e79: $00
    nop                                           ; $6e7a: $00
    nop                                           ; $6e7b: $00
    nop                                           ; $6e7c: $00
    nop                                           ; $6e7d: $00
    nop                                           ; $6e7e: $00
    nop                                           ; $6e7f: $00
    nop                                           ; $6e80: $00
    nop                                           ; $6e81: $00
    nop                                           ; $6e82: $00
    nop                                           ; $6e83: $00
    nop                                           ; $6e84: $00
    nop                                           ; $6e85: $00
    nop                                           ; $6e86: $00
    nop                                           ; $6e87: $00
    nop                                           ; $6e88: $00
    nop                                           ; $6e89: $00
    nop                                           ; $6e8a: $00
    nop                                           ; $6e8b: $00
    nop                                           ; $6e8c: $00
    nop                                           ; $6e8d: $00
    nop                                           ; $6e8e: $00
    nop                                           ; $6e8f: $00
    nop                                           ; $6e90: $00
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    nop                                           ; $6e93: $00
    nop                                           ; $6e94: $00
    nop                                           ; $6e95: $00
    nop                                           ; $6e96: $00
    nop                                           ; $6e97: $00
    nop                                           ; $6e98: $00
    nop                                           ; $6e99: $00
    nop                                           ; $6e9a: $00
    nop                                           ; $6e9b: $00
    nop                                           ; $6e9c: $00
    nop                                           ; $6e9d: $00
    nop                                           ; $6e9e: $00
    nop                                           ; $6e9f: $00
    nop                                           ; $6ea0: $00
    nop                                           ; $6ea1: $00
    nop                                           ; $6ea2: $00
    nop                                           ; $6ea3: $00
    nop                                           ; $6ea4: $00
    nop                                           ; $6ea5: $00
    nop                                           ; $6ea6: $00
    nop                                           ; $6ea7: $00
    nop                                           ; $6ea8: $00
    nop                                           ; $6ea9: $00
    nop                                           ; $6eaa: $00
    nop                                           ; $6eab: $00
    nop                                           ; $6eac: $00
    nop                                           ; $6ead: $00
    nop                                           ; $6eae: $00
    nop                                           ; $6eaf: $00
    nop                                           ; $6eb0: $00
    nop                                           ; $6eb1: $00
    nop                                           ; $6eb2: $00
    nop                                           ; $6eb3: $00
    nop                                           ; $6eb4: $00
    nop                                           ; $6eb5: $00
    nop                                           ; $6eb6: $00
    nop                                           ; $6eb7: $00
    nop                                           ; $6eb8: $00
    nop                                           ; $6eb9: $00
    nop                                           ; $6eba: $00
    nop                                           ; $6ebb: $00
    nop                                           ; $6ebc: $00
    nop                                           ; $6ebd: $00
    nop                                           ; $6ebe: $00
    nop                                           ; $6ebf: $00
    nop                                           ; $6ec0: $00
    nop                                           ; $6ec1: $00
    nop                                           ; $6ec2: $00
    nop                                           ; $6ec3: $00
    nop                                           ; $6ec4: $00
    nop                                           ; $6ec5: $00
    nop                                           ; $6ec6: $00
    nop                                           ; $6ec7: $00
    nop                                           ; $6ec8: $00
    nop                                           ; $6ec9: $00
    nop                                           ; $6eca: $00
    nop                                           ; $6ecb: $00
    nop                                           ; $6ecc: $00
    nop                                           ; $6ecd: $00
    nop                                           ; $6ece: $00
    nop                                           ; $6ecf: $00
    nop                                           ; $6ed0: $00
    nop                                           ; $6ed1: $00
    nop                                           ; $6ed2: $00
    nop                                           ; $6ed3: $00
    nop                                           ; $6ed4: $00
    nop                                           ; $6ed5: $00
    nop                                           ; $6ed6: $00
    nop                                           ; $6ed7: $00
    nop                                           ; $6ed8: $00
    nop                                           ; $6ed9: $00
    nop                                           ; $6eda: $00
    nop                                           ; $6edb: $00
    nop                                           ; $6edc: $00
    nop                                           ; $6edd: $00
    nop                                           ; $6ede: $00
    nop                                           ; $6edf: $00
    nop                                           ; $6ee0: $00
    nop                                           ; $6ee1: $00
    nop                                           ; $6ee2: $00
    nop                                           ; $6ee3: $00
    nop                                           ; $6ee4: $00
    nop                                           ; $6ee5: $00
    nop                                           ; $6ee6: $00
    nop                                           ; $6ee7: $00
    nop                                           ; $6ee8: $00
    nop                                           ; $6ee9: $00
    nop                                           ; $6eea: $00
    nop                                           ; $6eeb: $00
    nop                                           ; $6eec: $00
    nop                                           ; $6eed: $00
    nop                                           ; $6eee: $00
    nop                                           ; $6eef: $00
    nop                                           ; $6ef0: $00
    nop                                           ; $6ef1: $00
    nop                                           ; $6ef2: $00
    nop                                           ; $6ef3: $00
    nop                                           ; $6ef4: $00
    nop                                           ; $6ef5: $00
    nop                                           ; $6ef6: $00
    nop                                           ; $6ef7: $00
    nop                                           ; $6ef8: $00
    nop                                           ; $6ef9: $00
    nop                                           ; $6efa: $00
    nop                                           ; $6efb: $00
    nop                                           ; $6efc: $00
    nop                                           ; $6efd: $00
    nop                                           ; $6efe: $00
    nop                                           ; $6eff: $00
    nop                                           ; $6f00: $00
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    nop                                           ; $6f03: $00
    nop                                           ; $6f04: $00
    nop                                           ; $6f05: $00
    nop                                           ; $6f06: $00
    nop                                           ; $6f07: $00
    nop                                           ; $6f08: $00
    nop                                           ; $6f09: $00
    nop                                           ; $6f0a: $00
    nop                                           ; $6f0b: $00
    nop                                           ; $6f0c: $00
    nop                                           ; $6f0d: $00
    nop                                           ; $6f0e: $00
    nop                                           ; $6f0f: $00
    nop                                           ; $6f10: $00
    nop                                           ; $6f11: $00
    nop                                           ; $6f12: $00
    nop                                           ; $6f13: $00
    nop                                           ; $6f14: $00
    nop                                           ; $6f15: $00
    nop                                           ; $6f16: $00
    nop                                           ; $6f17: $00
    nop                                           ; $6f18: $00
    nop                                           ; $6f19: $00
    nop                                           ; $6f1a: $00
    nop                                           ; $6f1b: $00
    nop                                           ; $6f1c: $00
    nop                                           ; $6f1d: $00
    nop                                           ; $6f1e: $00
    nop                                           ; $6f1f: $00
    nop                                           ; $6f20: $00
    nop                                           ; $6f21: $00
    nop                                           ; $6f22: $00
    nop                                           ; $6f23: $00
    nop                                           ; $6f24: $00
    nop                                           ; $6f25: $00
    nop                                           ; $6f26: $00
    nop                                           ; $6f27: $00
    nop                                           ; $6f28: $00
    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    nop                                           ; $6f2b: $00
    nop                                           ; $6f2c: $00
    nop                                           ; $6f2d: $00
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00
    nop                                           ; $6f30: $00
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    nop                                           ; $6f33: $00
    nop                                           ; $6f34: $00
    nop                                           ; $6f35: $00
    nop                                           ; $6f36: $00
    nop                                           ; $6f37: $00
    nop                                           ; $6f38: $00
    nop                                           ; $6f39: $00
    nop                                           ; $6f3a: $00
    nop                                           ; $6f3b: $00
    nop                                           ; $6f3c: $00
    nop                                           ; $6f3d: $00
    nop                                           ; $6f3e: $00
    nop                                           ; $6f3f: $00
    nop                                           ; $6f40: $00
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    nop                                           ; $6f43: $00
    nop                                           ; $6f44: $00
    nop                                           ; $6f45: $00
    nop                                           ; $6f46: $00
    nop                                           ; $6f47: $00
    nop                                           ; $6f48: $00
    nop                                           ; $6f49: $00
    nop                                           ; $6f4a: $00
    nop                                           ; $6f4b: $00
    nop                                           ; $6f4c: $00
    nop                                           ; $6f4d: $00
    nop                                           ; $6f4e: $00
    nop                                           ; $6f4f: $00
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    nop                                           ; $6f53: $00
    nop                                           ; $6f54: $00
    nop                                           ; $6f55: $00
    nop                                           ; $6f56: $00
    nop                                           ; $6f57: $00
    nop                                           ; $6f58: $00
    nop                                           ; $6f59: $00
    nop                                           ; $6f5a: $00
    nop                                           ; $6f5b: $00
    nop                                           ; $6f5c: $00
    nop                                           ; $6f5d: $00
    nop                                           ; $6f5e: $00
    nop                                           ; $6f5f: $00
    nop                                           ; $6f60: $00
    nop                                           ; $6f61: $00
    nop                                           ; $6f62: $00
    nop                                           ; $6f63: $00
    nop                                           ; $6f64: $00
    nop                                           ; $6f65: $00
    nop                                           ; $6f66: $00
    nop                                           ; $6f67: $00
    nop                                           ; $6f68: $00
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    nop                                           ; $6f6b: $00
    nop                                           ; $6f6c: $00
    nop                                           ; $6f6d: $00
    nop                                           ; $6f6e: $00
    nop                                           ; $6f6f: $00
    nop                                           ; $6f70: $00
    nop                                           ; $6f71: $00
    nop                                           ; $6f72: $00
    nop                                           ; $6f73: $00
    nop                                           ; $6f74: $00
    nop                                           ; $6f75: $00
    nop                                           ; $6f76: $00
    nop                                           ; $6f77: $00
    nop                                           ; $6f78: $00
    nop                                           ; $6f79: $00
    nop                                           ; $6f7a: $00
    nop                                           ; $6f7b: $00
    nop                                           ; $6f7c: $00
    nop                                           ; $6f7d: $00
    nop                                           ; $6f7e: $00
    nop                                           ; $6f7f: $00
    nop                                           ; $6f80: $00
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    nop                                           ; $6f83: $00
    nop                                           ; $6f84: $00
    nop                                           ; $6f85: $00
    nop                                           ; $6f86: $00
    nop                                           ; $6f87: $00
    nop                                           ; $6f88: $00
    nop                                           ; $6f89: $00
    nop                                           ; $6f8a: $00
    nop                                           ; $6f8b: $00
    nop                                           ; $6f8c: $00
    nop                                           ; $6f8d: $00
    nop                                           ; $6f8e: $00
    nop                                           ; $6f8f: $00
    nop                                           ; $6f90: $00
    nop                                           ; $6f91: $00
    nop                                           ; $6f92: $00
    nop                                           ; $6f93: $00
    nop                                           ; $6f94: $00
    nop                                           ; $6f95: $00
    nop                                           ; $6f96: $00
    nop                                           ; $6f97: $00
    nop                                           ; $6f98: $00
    nop                                           ; $6f99: $00
    nop                                           ; $6f9a: $00
    nop                                           ; $6f9b: $00
    nop                                           ; $6f9c: $00
    nop                                           ; $6f9d: $00
    nop                                           ; $6f9e: $00
    nop                                           ; $6f9f: $00
    nop                                           ; $6fa0: $00
    nop                                           ; $6fa1: $00
    nop                                           ; $6fa2: $00
    nop                                           ; $6fa3: $00
    nop                                           ; $6fa4: $00
    nop                                           ; $6fa5: $00
    nop                                           ; $6fa6: $00
    nop                                           ; $6fa7: $00
    nop                                           ; $6fa8: $00
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    nop                                           ; $6fab: $00
    nop                                           ; $6fac: $00
    nop                                           ; $6fad: $00
    nop                                           ; $6fae: $00
    nop                                           ; $6faf: $00
    nop                                           ; $6fb0: $00
    nop                                           ; $6fb1: $00
    nop                                           ; $6fb2: $00
    nop                                           ; $6fb3: $00
    nop                                           ; $6fb4: $00
    nop                                           ; $6fb5: $00
    nop                                           ; $6fb6: $00
    nop                                           ; $6fb7: $00
    nop                                           ; $6fb8: $00
    nop                                           ; $6fb9: $00
    nop                                           ; $6fba: $00
    nop                                           ; $6fbb: $00
    nop                                           ; $6fbc: $00
    nop                                           ; $6fbd: $00
    nop                                           ; $6fbe: $00
    nop                                           ; $6fbf: $00
    nop                                           ; $6fc0: $00
    nop                                           ; $6fc1: $00
    nop                                           ; $6fc2: $00
    nop                                           ; $6fc3: $00
    nop                                           ; $6fc4: $00
    nop                                           ; $6fc5: $00
    nop                                           ; $6fc6: $00
    nop                                           ; $6fc7: $00
    nop                                           ; $6fc8: $00
    nop                                           ; $6fc9: $00
    nop                                           ; $6fca: $00
    nop                                           ; $6fcb: $00
    nop                                           ; $6fcc: $00
    nop                                           ; $6fcd: $00
    nop                                           ; $6fce: $00
    nop                                           ; $6fcf: $00
    nop                                           ; $6fd0: $00
    nop                                           ; $6fd1: $00
    nop                                           ; $6fd2: $00
    nop                                           ; $6fd3: $00
    nop                                           ; $6fd4: $00

Call_050_6fd5:
    nop                                           ; $6fd5: $00
    nop                                           ; $6fd6: $00
    nop                                           ; $6fd7: $00
    nop                                           ; $6fd8: $00
    nop                                           ; $6fd9: $00
    nop                                           ; $6fda: $00
    nop                                           ; $6fdb: $00
    nop                                           ; $6fdc: $00
    nop                                           ; $6fdd: $00
    nop                                           ; $6fde: $00
    nop                                           ; $6fdf: $00
    nop                                           ; $6fe0: $00
    nop                                           ; $6fe1: $00
    nop                                           ; $6fe2: $00
    nop                                           ; $6fe3: $00
    nop                                           ; $6fe4: $00
    nop                                           ; $6fe5: $00
    nop                                           ; $6fe6: $00
    nop                                           ; $6fe7: $00
    nop                                           ; $6fe8: $00
    nop                                           ; $6fe9: $00
    nop                                           ; $6fea: $00
    nop                                           ; $6feb: $00
    nop                                           ; $6fec: $00
    nop                                           ; $6fed: $00
    nop                                           ; $6fee: $00
    nop                                           ; $6fef: $00
    nop                                           ; $6ff0: $00
    nop                                           ; $6ff1: $00
    nop                                           ; $6ff2: $00
    nop                                           ; $6ff3: $00
    nop                                           ; $6ff4: $00
    nop                                           ; $6ff5: $00
    nop                                           ; $6ff6: $00
    nop                                           ; $6ff7: $00
    nop                                           ; $6ff8: $00
    nop                                           ; $6ff9: $00
    nop                                           ; $6ffa: $00
    nop                                           ; $6ffb: $00
    nop                                           ; $6ffc: $00
    nop                                           ; $6ffd: $00
    nop                                           ; $6ffe: $00
    nop                                           ; $6fff: $00
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    nop                                           ; $7007: $00
    nop                                           ; $7008: $00
    nop                                           ; $7009: $00
    nop                                           ; $700a: $00
    nop                                           ; $700b: $00
    nop                                           ; $700c: $00
    nop                                           ; $700d: $00
    nop                                           ; $700e: $00
    nop                                           ; $700f: $00
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    nop                                           ; $7013: $00
    nop                                           ; $7014: $00
    nop                                           ; $7015: $00
    nop                                           ; $7016: $00
    nop                                           ; $7017: $00
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701a: $00
    nop                                           ; $701b: $00
    nop                                           ; $701c: $00
    nop                                           ; $701d: $00
    nop                                           ; $701e: $00
    nop                                           ; $701f: $00
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    nop                                           ; $7023: $00
    nop                                           ; $7024: $00
    nop                                           ; $7025: $00
    nop                                           ; $7026: $00
    nop                                           ; $7027: $00
    nop                                           ; $7028: $00
    nop                                           ; $7029: $00
    nop                                           ; $702a: $00
    nop                                           ; $702b: $00
    nop                                           ; $702c: $00
    nop                                           ; $702d: $00
    nop                                           ; $702e: $00
    nop                                           ; $702f: $00
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    nop                                           ; $7033: $00
    nop                                           ; $7034: $00
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00
    nop                                           ; $7037: $00
    nop                                           ; $7038: $00
    nop                                           ; $7039: $00
    nop                                           ; $703a: $00
    nop                                           ; $703b: $00
    nop                                           ; $703c: $00
    nop                                           ; $703d: $00
    nop                                           ; $703e: $00
    nop                                           ; $703f: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    nop                                           ; $7043: $00
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    nop                                           ; $7046: $00
    nop                                           ; $7047: $00
    nop                                           ; $7048: $00
    nop                                           ; $7049: $00
    nop                                           ; $704a: $00
    nop                                           ; $704b: $00
    nop                                           ; $704c: $00
    nop                                           ; $704d: $00
    nop                                           ; $704e: $00
    nop                                           ; $704f: $00
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    nop                                           ; $7052: $00
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    nop                                           ; $7055: $00
    nop                                           ; $7056: $00
    nop                                           ; $7057: $00
    nop                                           ; $7058: $00
    nop                                           ; $7059: $00
    nop                                           ; $705a: $00
    nop                                           ; $705b: $00
    nop                                           ; $705c: $00
    nop                                           ; $705d: $00
    nop                                           ; $705e: $00
    nop                                           ; $705f: $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    nop                                           ; $7069: $00
    nop                                           ; $706a: $00
    nop                                           ; $706b: $00
    nop                                           ; $706c: $00
    nop                                           ; $706d: $00
    nop                                           ; $706e: $00
    nop                                           ; $706f: $00
    nop                                           ; $7070: $00
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    nop                                           ; $7073: $00
    nop                                           ; $7074: $00
    nop                                           ; $7075: $00
    nop                                           ; $7076: $00
    nop                                           ; $7077: $00
    nop                                           ; $7078: $00
    nop                                           ; $7079: $00
    nop                                           ; $707a: $00
    nop                                           ; $707b: $00
    nop                                           ; $707c: $00
    nop                                           ; $707d: $00
    nop                                           ; $707e: $00
    nop                                           ; $707f: $00
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    nop                                           ; $7089: $00
    nop                                           ; $708a: $00
    nop                                           ; $708b: $00
    nop                                           ; $708c: $00
    nop                                           ; $708d: $00
    nop                                           ; $708e: $00
    nop                                           ; $708f: $00
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    nop                                           ; $7097: $00
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    nop                                           ; $709a: $00
    nop                                           ; $709b: $00
    nop                                           ; $709c: $00
    nop                                           ; $709d: $00
    nop                                           ; $709e: $00
    nop                                           ; $709f: $00

    db $00, $02, $00, $0f, $02, $02, $00, $0f, $04, $02, $00, $0f, $06, $02, $00, $0f
    db $08, $02, $00, $0f, $06, $02, $00, $0f, $04, $02, $00, $0f, $02, $02, $00, $0f
    db $ff, $00, $0a, $0f, $02, $1e, $19, $0f, $02, $1e, $28, $0f, $02, $1e, $19, $0f
    db $02, $1e, $ff, $01, $37, $03, $11, $1e, $3a, $03, $11, $1e, $ff, $02

    dec a                                         ; $70de: $3d
    ld bc, $1e14                                  ; $70df: $01 $14 $1e
    ld a, $01                                     ; $70e2: $3e $01
    inc d                                         ; $70e4: $14
    ld e, $3f                                     ; $70e5: $1e $3f
    ld bc, $1e14                                  ; $70e7: $01 $14 $1e
    ld a, $01                                     ; $70ea: $3e $01
    inc d                                         ; $70ec: $14
    ld e, $ff                                     ; $70ed: $1e $ff
    ld [bc], a                                    ; $70ef: $02
    db $fe                                        ; $70f0: $fe

    push af                                       ; $70f1: $f5
    push bc                                       ; $70f2: $c5
    push de                                       ; $70f3: $d5
    push hl                                       ; $70f4: $e5
    ld a, $ff                                     ; $70f5: $3e $ff
    ld b, $01                                     ; $70f7: $06 $01
    ld hl, $c330                                  ; $70f9: $21 $30 $c3
    ld [hl+], a                                   ; $70fc: $22
    ld [hl], b                                    ; $70fd: $70
    inc hl                                        ; $70fe: $23
    ld [hl+], a                                   ; $70ff: $22
    ld [hl], b                                    ; $7100: $70
    inc hl                                        ; $7101: $23
    ld [hl+], a                                   ; $7102: $22
    ld [hl], b                                    ; $7103: $70
    inc hl                                        ; $7104: $23
    ld [hl+], a                                   ; $7105: $22
    ld [hl], b                                    ; $7106: $70
    inc hl                                        ; $7107: $23
    ld [hl+], a                                   ; $7108: $22
    ld [hl+], a                                   ; $7109: $22
    ld [hl+], a                                   ; $710a: $22
    ld [hl+], a                                   ; $710b: $22
    ld hl, $0401                                  ; $710c: $21 $01 $04
    rst $18                                       ; $710f: $df

    db $0a, $13

    ld de, $4000                                  ; $7112: $11 $00 $40
    ld h, $00                                     ; $7115: $26 $00
    add hl, de                                    ; $7117: $19
    ld e, a                                       ; $7118: $5f
    ld d, $00                                     ; $7119: $16 $00
    ld a, [hl+]                                   ; $711b: $2a
    ld h, [hl]                                    ; $711c: $66
    ld l, a                                       ; $711d: $6f
    add hl, de                                    ; $711e: $19
    add hl, de                                    ; $711f: $19
    ld a, [hl+]                                   ; $7120: $2a
    ld h, [hl]                                    ; $7121: $66
    ld l, a                                       ; $7122: $6f
    ld a, [hl]                                    ; $7123: $7e
    cp $fe                                        ; $7124: $fe $fe
    jr nz, jr_050_712b                            ; $7126: $20 $03

    jp Jump_050_719f                              ; $7128: $c3 $9f $71


jr_050_712b:
    add sp, -$02                                  ; $712b: $e8 $fe
    ld de, $c332                                  ; $712d: $11 $32 $c3
    push hl                                       ; $7130: $e5
    ld hl, sp+$02                                 ; $7131: $f8 $02
    ld [hl], e                                    ; $7133: $73
    inc hl                                        ; $7134: $23
    ld [hl], d                                    ; $7135: $72
    pop hl                                        ; $7136: $e1
    ld d, h                                       ; $7137: $54
    ld e, l                                       ; $7138: $5d
    ld b, $ff                                     ; $7139: $06 $ff
    ld c, $03                                     ; $713b: $0e $03
    xor a                                         ; $713d: $af
    ld hl, $c330                                  ; $713e: $21 $30 $c3
    ld [hl], a                                    ; $7141: $77
    ld hl, $c338                                  ; $7142: $21 $38 $c3
    ld [hl], a                                    ; $7145: $77
    inc hl                                        ; $7146: $23

jr_050_7147:
    inc b                                         ; $7147: $04
    ld a, [de]                                    ; $7148: $1a
    inc de                                        ; $7149: $13
    cp $fe                                        ; $714a: $fe $fe
    jr z, jr_050_7183                             ; $714c: $28 $35

    cp $ff                                        ; $714e: $fe $ff
    jr nz, jr_050_7147                            ; $7150: $20 $f5

    inc b                                         ; $7152: $04
    ld a, b                                       ; $7153: $78
    inc a                                         ; $7154: $3c
    ld [hl], a                                    ; $7155: $77
    push de                                       ; $7156: $d5
    push hl                                       ; $7157: $e5
    ld hl, sp+$04                                 ; $7158: $f8 $04
    ld e, [hl]                                    ; $715a: $5e
    inc hl                                        ; $715b: $23
    ld d, [hl]                                    ; $715c: $56
    pop hl                                        ; $715d: $e1
    ld [de], a                                    ; $715e: $12
    inc de                                        ; $715f: $13
    inc de                                        ; $7160: $13
    push hl                                       ; $7161: $e5
    ld hl, sp+$04                                 ; $7162: $f8 $04
    ld [hl], e                                    ; $7164: $73
    inc hl                                        ; $7165: $23
    ld [hl], d                                    ; $7166: $72
    pop hl                                        ; $7167: $e1
    pop de                                        ; $7168: $d1
    ld a, [de]                                    ; $7169: $1a
    inc a                                         ; $716a: $3c
    inc de                                        ; $716b: $13
    push hl                                       ; $716c: $e5
    push de                                       ; $716d: $d5
    ld d, a                                       ; $716e: $57
    ld a, $04                                     ; $716f: $3e $04
    sub c                                         ; $7171: $91
    ld hl, $c330                                  ; $7172: $21 $30 $c3
    ld e, a                                       ; $7175: $5f
    ld a, d                                       ; $7176: $7a
    ld d, $00                                     ; $7177: $16 $00
    add hl, de                                    ; $7179: $19
    add hl, de                                    ; $717a: $19
    inc hl                                        ; $717b: $23
    ld [hl], a                                    ; $717c: $77
    pop de                                        ; $717d: $d1
    pop hl                                        ; $717e: $e1
    inc hl                                        ; $717f: $23
    dec c                                         ; $7180: $0d
    jr nz, jr_050_7147                            ; $7181: $20 $c4

jr_050_7183:
    ld a, c                                       ; $7183: $79
    or a                                          ; $7184: $b7
    jr z, jr_050_7195                             ; $7185: $28 $0e

    ld a, $ff                                     ; $7187: $3e $ff
    dec hl                                        ; $7189: $2b
    ld [hl], a                                    ; $718a: $77
    push hl                                       ; $718b: $e5
    ld hl, sp+$02                                 ; $718c: $f8 $02
    ld e, [hl]                                    ; $718e: $5e
    inc hl                                        ; $718f: $23
    ld d, [hl]                                    ; $7190: $56
    pop hl                                        ; $7191: $e1
    dec de                                        ; $7192: $1b
    dec de                                        ; $7193: $1b
    ld [de], a                                    ; $7194: $12

jr_050_7195:
    ld a, $01                                     ; $7195: $3e $01
    ld hl, $71b3                                  ; $7197: $21 $b3 $71
    call Call_000_23e8                            ; $719a: $cd $e8 $23
    add sp, $02                                   ; $719d: $e8 $02

Jump_050_719f:
    pop hl                                        ; $719f: $e1
    pop de                                        ; $71a0: $d1
    pop bc                                        ; $71a1: $c1
    pop af                                        ; $71a2: $f1
    ret                                           ; $71a3: $c9


    push af                                       ; $71a4: $f5
    push bc                                       ; $71a5: $c5
    push de                                       ; $71a6: $d5
    push hl                                       ; $71a7: $e5
    ld hl, $71b3                                  ; $71a8: $21 $b3 $71
    call Call_000_2449                            ; $71ab: $cd $49 $24
    pop hl                                        ; $71ae: $e1
    pop de                                        ; $71af: $d1
    pop bc                                        ; $71b0: $c1
    pop af                                        ; $71b1: $f1
    ret                                           ; $71b2: $c9


    rst $30                                       ; $71b3: $f7

    db $80, $03

    jr nz, jr_050_71bc                            ; $71b6: $20 $04

    rst $30                                       ; $71b8: $f7

    db $00, $03

    ret nz                                        ; $71bb: $c0

jr_050_71bc:
    push af                                       ; $71bc: $f5
    push bc                                       ; $71bd: $c5
    push de                                       ; $71be: $d5
    push hl                                       ; $71bf: $e5
    ldh a, [$96]                                  ; $71c0: $f0 $96
    push af                                       ; $71c2: $f5
    ld a, $06                                     ; $71c3: $3e $06
    ldh [$96], a                                  ; $71c5: $e0 $96
    ldh [rSVBK], a                                ; $71c7: $e0 $70
    ld c, $00                                     ; $71c9: $0e $00
    ld hl, $c338                                  ; $71cb: $21 $38 $c3

jr_050_71ce:
    ld a, [hl]                                    ; $71ce: $7e
    cp $ff                                        ; $71cf: $fe $ff
    jr z, jr_050_71f7                             ; $71d1: $28 $24

    push hl                                       ; $71d3: $e5
    ld l, c                                       ; $71d4: $69
    ld h, $00                                     ; $71d5: $26 $00
    add hl, hl                                    ; $71d7: $29
    ld de, $c330                                  ; $71d8: $11 $30 $c3
    add hl, de                                    ; $71db: $19
    inc hl                                        ; $71dc: $23
    ld a, [hl]                                    ; $71dd: $7e
    dec a                                         ; $71de: $3d
    ld [hl], a                                    ; $71df: $77
    pop hl                                        ; $71e0: $e1
    inc hl                                        ; $71e1: $23
    ld b, c                                       ; $71e2: $41
    inc c                                         ; $71e3: $0c
    ld d, a                                       ; $71e4: $57
    ld a, c                                       ; $71e5: $79
    cp $04                                        ; $71e6: $fe $04
    jr z, jr_050_71f7                             ; $71e8: $28 $0d

    ld a, d                                       ; $71ea: $7a
    or a                                          ; $71eb: $b7
    jr nz, jr_050_71ce                            ; $71ec: $20 $e0

    ld a, b                                       ; $71ee: $78
    call Call_050_7201                            ; $71ef: $cd $01 $72
    ld a, c                                       ; $71f2: $79
    cp $04                                        ; $71f3: $fe $04
    jr nz, jr_050_71ce                            ; $71f5: $20 $d7

jr_050_71f7:
    pop af                                        ; $71f7: $f1
    ldh [$96], a                                  ; $71f8: $e0 $96
    ldh [rSVBK], a                                ; $71fa: $e0 $70
    pop hl                                        ; $71fc: $e1
    pop de                                        ; $71fd: $d1
    pop bc                                        ; $71fe: $c1
    pop af                                        ; $71ff: $f1
    ret                                           ; $7200: $c9


Call_050_7201:
    push af                                       ; $7201: $f5
    push bc                                       ; $7202: $c5
    push de                                       ; $7203: $d5
    push hl                                       ; $7204: $e5
    push af                                       ; $7205: $f5
    add sp, -$01                                  ; $7206: $e8 $ff
    ld hl, sp+$00                                 ; $7208: $f8 $00
    ld [hl], a                                    ; $720a: $77
    ld h, $00                                     ; $720b: $26 $00
    ld l, a                                       ; $720d: $6f
    add hl, hl                                    ; $720e: $29
    ld bc, $c330                                  ; $720f: $01 $30 $c3
    add hl, bc                                    ; $7212: $09
    ld a, [hl]                                    ; $7213: $7e
    ld [$c33c], a                                 ; $7214: $ea $3c $c3

jr_050_7217:
    ld hl, $0401                                  ; $7217: $21 $01 $04
    rst $18                                       ; $721a: $df

    db $0a, $13

    ld de, $4000                                  ; $721d: $11 $00 $40
    ld h, $00                                     ; $7220: $26 $00
    add hl, de                                    ; $7222: $19
    ld e, a                                       ; $7223: $5f
    ld d, $00                                     ; $7224: $16 $00
    ld a, [hl+]                                   ; $7226: $2a
    ld h, [hl]                                    ; $7227: $66
    ld l, a                                       ; $7228: $6f
    add hl, de                                    ; $7229: $19
    add hl, de                                    ; $722a: $19
    ld a, [hl+]                                   ; $722b: $2a
    ld h, [hl]                                    ; $722c: $66
    ld l, a                                       ; $722d: $6f
    ld a, [$c33c]                                 ; $722e: $fa $3c $c3
    ld c, a                                       ; $7231: $4f
    ld b, $00                                     ; $7232: $06 $00
    add hl, bc                                    ; $7234: $09
    ld a, [hl]                                    ; $7235: $7e
    cp $ff                                        ; $7236: $fe $ff
    jr nz, jr_050_7249                            ; $7238: $20 $0f

    ld hl, sp+$00                                 ; $723a: $f8 $00
    ld c, [hl]                                    ; $723c: $4e
    ld b, $00                                     ; $723d: $06 $00
    ld hl, $c338                                  ; $723f: $21 $38 $c3
    add hl, bc                                    ; $7242: $09
    ld a, [hl]                                    ; $7243: $7e
    ld [$c33c], a                                 ; $7244: $ea $3c $c3
    jr jr_050_7217                                ; $7247: $18 $ce

jr_050_7249:
    ld b, a                                       ; $7249: $47
    inc hl                                        ; $724a: $23
    ld c, [hl]                                    ; $724b: $4e
    inc hl                                        ; $724c: $23
    ld e, [hl]                                    ; $724d: $5e
    inc hl                                        ; $724e: $23
    ld a, [hl]                                    ; $724f: $7e
    push af                                       ; $7250: $f5
    push bc                                       ; $7251: $c5
    ld l, e                                       ; $7252: $6b
    ld h, $00                                     ; $7253: $26 $00
    add hl, hl                                    ; $7255: $29
    add hl, hl                                    ; $7256: $29
    add hl, hl                                    ; $7257: $29
    add hl, hl                                    ; $7258: $29
    ld de, $b000                                  ; $7259: $11 $00 $b0
    add hl, de                                    ; $725c: $19
    push hl                                       ; $725d: $e5
    ld l, b                                       ; $725e: $68
    ld h, $00                                     ; $725f: $26 $00
    add hl, hl                                    ; $7261: $29
    add hl, hl                                    ; $7262: $29
    add hl, hl                                    ; $7263: $29
    add hl, hl                                    ; $7264: $29
    ld b, h                                       ; $7265: $44
    ld c, l                                       ; $7266: $4d
    ld hl, $0400                                  ; $7267: $21 $00 $04
    rst $18                                       ; $726a: $df

    db $0a, $13

    ld de, $4000                                  ; $726d: $11 $00 $40
    ld h, $00                                     ; $7270: $26 $00
    add hl, de                                    ; $7272: $19
    ld e, a                                       ; $7273: $5f
    ld d, $00                                     ; $7274: $16 $00
    ld a, [hl+]                                   ; $7276: $2a
    ld h, [hl]                                    ; $7277: $66
    ld l, a                                       ; $7278: $6f
    add hl, de                                    ; $7279: $19
    add hl, de                                    ; $727a: $19
    ld a, [hl+]                                   ; $727b: $2a
    ld h, [hl]                                    ; $727c: $66
    ld l, a                                       ; $727d: $6f
    add hl, bc                                    ; $727e: $09
    pop de                                        ; $727f: $d1
    pop bc                                        ; $7280: $c1
    call Call_000_0468                            ; $7281: $cd $68 $04
    ld a, [$c33c]                                 ; $7284: $fa $3c $c3
    add $04                                       ; $7287: $c6 $04
    ld [$c33c], a                                 ; $7289: $ea $3c $c3
    pop af                                        ; $728c: $f1
    ld d, a                                       ; $728d: $57
    add sp, $01                                   ; $728e: $e8 $01
    pop af                                        ; $7290: $f1
    ld h, $00                                     ; $7291: $26 $00
    ld l, a                                       ; $7293: $6f
    add hl, hl                                    ; $7294: $29
    ld bc, $c330                                  ; $7295: $01 $30 $c3
    add hl, bc                                    ; $7298: $09
    ld a, [$c33c]                                 ; $7299: $fa $3c $c3
    ld [hl+], a                                   ; $729c: $22
    ld [hl], d                                    ; $729d: $72
    pop hl                                        ; $729e: $e1
    pop de                                        ; $729f: $d1
    pop bc                                        ; $72a0: $c1
    pop af                                        ; $72a1: $f1
    ret                                           ; $72a2: $c9


    xor e                                         ; $72a3: $ab
    ld [hl], d                                    ; $72a4: $72
    db $db                                        ; $72a5: $db
    ld [hl], d                                    ; $72a6: $72
    add hl, sp                                    ; $72a7: $39
    ld [hl], l                                    ; $72a8: $75
    ei                                            ; $72a9: $fb
    halt                                          ; $72aa: $76
    db $ec                                        ; $72ab: $ec
    dec hl                                        ; $72ac: $2b
    ld [hl+], a                                   ; $72ad: $22
    dec sp                                        ; $72ae: $3b
    ld b, b                                       ; $72af: $40
    ld [hl+], a                                   ; $72b0: $22
    nop                                           ; $72b1: $00
    add hl, bc                                    ; $72b2: $09
    and l                                         ; $72b3: $a5
    ld b, e                                       ; $72b4: $43
    xor $37                                       ; $72b5: $ee $37
    ld [hl+], a                                   ; $72b7: $22
    dec sp                                        ; $72b8: $3b
    ld b, b                                       ; $72b9: $40
    ld [hl+], a                                   ; $72ba: $22
    ccf                                           ; $72bb: $3f
    ld a, a                                       ; $72bc: $7f
    rla                                           ; $72bd: $17
    ld e, [hl]                                    ; $72be: $5e
    ld de, $2249                                  ; $72bf: $11 $49 $22
    dec sp                                        ; $72c2: $3b
    ld [$0825], sp                                ; $72c3: $08 $25 $08
    dec h                                         ; $72c6: $25
    ld [$0825], sp                                ; $72c7: $08 $25 $08
    dec h                                         ; $72ca: $25
    ld [$0825], sp                                ; $72cb: $08 $25 $08
    dec h                                         ; $72ce: $25
    ld [$0825], sp                                ; $72cf: $08 $25 $08
    dec h                                         ; $72d2: $25
    ld [$0825], sp                                ; $72d3: $08 $25 $08
    dec h                                         ; $72d6: $25
    ld [$0825], sp                                ; $72d7: $08 $25 $08
    dec h                                         ; $72da: $25
    rst $30                                       ; $72db: $f7
    ld c, e                                       ; $72dc: $4b
    ld c, e                                       ; $72dd: $4b
    dec bc                                        ; $72de: $0b
    rst $38                                       ; $72df: $ff
    pop hl                                        ; $72e0: $e1
    dec hl                                        ; $72e1: $2b
    dec hl                                        ; $72e2: $2b
    ld a, [bc]                                    ; $72e3: $0a
    ld c, e                                       ; $72e4: $4b
    ld l, $ff                                     ; $72e5: $2e $ff
    ldh [$2b], a                                  ; $72e7: $e0 $2b
    dec bc                                        ; $72e9: $0b
    inc c                                         ; $72ea: $0c
    rst $38                                       ; $72eb: $ff
    pop hl                                        ; $72ec: $e1
    ld c, h                                       ; $72ed: $4c
    rst $38                                       ; $72ee: $ff
    ldh [$f9], a                                  ; $72ef: $e0 $f9
    pop hl                                        ; $72f1: $e1
    nop                                           ; $72f2: $00
    db $fd                                        ; $72f3: $fd
    ld [c], a                                     ; $72f4: $e2
    ld hl, sp-$1d                                 ; $72f5: $f8 $e3
    db $f4                                        ; $72f7: $f4
    push hl                                       ; $72f8: $e5
    db $fc                                        ; $72f9: $fc
    db $ed                                        ; $72fa: $ed
    pop bc                                        ; $72fb: $c1
    db $e3                                        ; $72fc: $e3
    cp [hl]                                       ; $72fd: $be
    ld [c], a                                     ; $72fe: $e2
    ret nz                                        ; $72ff: $c0

    rst $20                                       ; $7300: $e7
    ret nc                                        ; $7301: $d0

    ld [c], a                                     ; $7302: $e2
    call c, $e5fd                                 ; $7303: $dc $fd $e5
    or l                                          ; $7306: $b5
    db $e3                                        ; $7307: $e3
    ld c, h                                       ; $7308: $4c
    inc c                                         ; $7309: $0c
    inc l                                         ; $730a: $2c
    ret nz                                        ; $730b: $c0

    ld a, [c]                                     ; $730c: $f2
    dec bc                                        ; $730d: $0b
    dec bc                                        ; $730e: $0b
    inc sp                                        ; $730f: $33
    ld l, e                                       ; $7310: $6b
    ld l, e                                       ; $7311: $6b
    add [hl]                                      ; $7312: $86
    pop hl                                        ; $7313: $e1
    ld a, c                                       ; $7314: $79
    ldh [$2b], a                                  ; $7315: $e0 $2b
    dec hl                                        ; $7317: $2b
    ld [hl], l                                    ; $7318: $75
    ldh [$c0], a                                  ; $7319: $e0 $c0
    db $ec                                        ; $731b: $ec
    ld [hl], h                                    ; $731c: $74
    cp c                                          ; $731d: $b9
    ldh [$b2], a                                  ; $731e: $e0 $b2
    db $e4                                        ; $7320: $e4
    inc l                                         ; $7321: $2c
    ret nz                                        ; $7322: $c0

    db $f4                                        ; $7323: $f4
    ld l, e                                       ; $7324: $6b
    ld l, e                                       ; $7325: $6b
    dec hl                                        ; $7326: $2b
    rst $38                                       ; $7327: $ff
    pop hl                                        ; $7328: $e1
    db $10                                        ; $7329: $10
    cp l                                          ; $732a: $bd
    db $e3                                        ; $732b: $e3
    ret nz                                        ; $732c: $c0

    and $7e                                       ; $732d: $e6 $7e
    push hl                                       ; $732f: $e5

jr_050_7330:
    ld b, a                                       ; $7330: $47
    push hl                                       ; $7331: $e5
    ld c, h                                       ; $7332: $4c
    ret nz                                        ; $7333: $c0

    rst $30                                       ; $7334: $f7
    pop bc                                        ; $7335: $c1
    ld [c], a                                     ; $7336: $e2
    db $fd                                        ; $7337: $fd
    pop bc                                        ; $7338: $c1
    jr nz, jr_050_7330                            ; $7339: $20 $f5

    jp nz, $e506                                  ; $733b: $c2 $06 $e5

    add d                                         ; $733e: $82
    db $e4                                        ; $733f: $e4
    ld b, b                                       ; $7340: $40
    add sp, $00                                   ; $7341: $e8 $00
    and $2c                                       ; $7343: $e6 $2c
    ld sp, hl                                     ; $7345: $f9
    jp hl                                         ; $7346: $e9


    add c                                         ; $7347: $81
    db $e4                                        ; $7348: $e4
    add b                                         ; $7349: $80

jr_050_734a:
    ld b, h                                       ; $734a: $44
    ld [c], a                                     ; $734b: $e2
    cp a                                          ; $734c: $bf
    ld [$c4c7], a                                 ; $734d: $ea $c7 $c4
    pop af                                        ; $7350: $f1

jr_050_7351:
    rst $00                                       ; $7351: $c7
    jp nz, $c0d1                                  ; $7352: $c2 $d1 $c0

    ldh [$c2], a                                  ; $7355: $e0 $c2
    and $0b                                       ; $7357: $e6 $0b
    ld bc, $bf2b                                  ; $7359: $01 $2b $bf
    push hl                                       ; $735c: $e5
    dec a                                         ; $735d: $3d
    and $b7                                       ; $735e: $e6 $b7
    push hl                                       ; $7360: $e5
    ld a, a                                       ; $7361: $7f
    call nz, $d2c0                                ; $7362: $c4 $c0 $d2
    ret nz                                        ; $7365: $c0

    add sp, -$41                                  ; $7366: $e8 $bf
    push hl                                       ; $7368: $e5
    ld e, b                                       ; $7369: $58
    ret nz                                        ; $736a: $c0

    srl a                                         ; $736b: $cb $3f
    ld [$ce38], a                                 ; $736d: $ea $38 $ce
    ld l, e                                       ; $7370: $6b
    ld c, e                                       ; $7371: $4b
    pop bc                                        ; $7372: $c1
    ret nz                                        ; $7373: $c0

    ld l, e                                       ; $7374: $6b

jr_050_7375:
    rst $38                                       ; $7375: $ff
    ldh [rP1], a                                  ; $7376: $e0 $00
    inc bc                                        ; $7378: $03
    ret nz                                        ; $7379: $c0

    cp a                                          ; $737a: $bf
    push hl                                       ; $737b: $e5
    ld c, $c5                                     ; $737c: $0e $c5
    add c                                         ; $737e: $81
    jp $c435                                      ; $737f: $c3 $35 $c4


    jr z, jr_050_734a                             ; $7382: $28 $c6

    jr c, jr_050_7351                             ; $7384: $38 $cb

    dec bc                                        ; $7386: $0b
    ldh [rP1], a                                  ; $7387: $e0 $00
    cp a                                          ; $7389: $bf

jr_050_738a:
    pop hl                                        ; $738a: $e1
    call nz, $40a1                                ; $738b: $c4 $a1 $40
    ret nz                                        ; $738e: $c0

    dec a                                         ; $738f: $3d
    db $e3                                        ; $7390: $e3
    ld c, h                                       ; $7391: $4c
    call nz, $e4fe                                ; $7392: $c4 $fe $e4
    ld [hl], l                                    ; $7395: $75
    add $38                                       ; $7396: $c6 $38
    jp nc, $ca00                                  ; $7398: $d2 $00 $ca

    pop bc                                        ; $739b: $c1
    add b                                         ; $739c: $80
    ld [c], a                                     ; $739d: $e2
    ld a, h                                       ; $739e: $7c
    ldh [$fe], a                                  ; $739f: $e0 $fe
    and d                                         ; $73a1: $a2
    ret nz                                        ; $73a2: $c0

    pop hl                                        ; $73a3: $e1
    adc $c7                                       ; $73a4: $ce $c7
    adc c                                         ; $73a6: $89
    rst $20                                       ; $73a7: $e7
    jr c, jr_050_7375                             ; $73a8: $38 $cb

    nop                                           ; $73aa: $00
    ld a, h                                       ; $73ab: $7c
    call nz, $a1c0                                ; $73ac: $c4 $c0 $a1
    ld a, [hl]                                    ; $73af: $7e
    ld [c], a                                     ; $73b0: $e2
    ld sp, hl                                     ; $73b1: $f9
    jp nz, $a2be                                  ; $73b2: $c2 $be $a2

    cp e                                          ; $73b5: $bb
    and b                                         ; $73b6: $a0
    ld c, l                                       ; $73b7: $4d
    xor e                                         ; $73b8: $ab
    rlca                                          ; $73b9: $07
    rst $20                                       ; $73ba: $e7
    nop                                           ; $73bb: $00
    jr c, jr_050_738a                             ; $73bc: $38 $cc

    ret nz                                        ; $73be: $c0

    push hl                                       ; $73bf: $e5
    ld c, b                                       ; $73c0: $48
    ret nz                                        ; $73c1: $c0

    ei                                            ; $73c2: $fb
    pop bc                                        ; $73c3: $c1
    ld a, b                                       ; $73c4: $78
    add $40                                       ; $73c5: $c6 $40
    ldh [$3f], a                                  ; $73c7: $e0 $3f
    push hl                                       ; $73c9: $e5
    adc b                                         ; $73ca: $88
    push bc                                       ; $73cb: $c5
    nop                                           ; $73cc: $00
    ld b, b                                       ; $73cd: $40
    push bc                                       ; $73ce: $c5

jr_050_73cf:
    jr c, @-$2f                                   ; $73cf: $38 $cf

    ld bc, $bda5                                  ; $73d1: $01 $a5 $bd
    add c                                         ; $73d4: $81
    cp b                                          ; $73d5: $b8
    pop bc                                        ; $73d6: $c1
    ld a, h                                       ; $73d7: $7c
    and l                                         ; $73d8: $a5
    dec b                                         ; $73d9: $05
    and l                                         ; $73da: $a5
    ld a, l                                       ; $73db: $7d
    jp $4004                                      ; $73dc: $c3 $04 $40


    call nz, $c638                                ; $73df: $c4 $38 $c6
    inc l                                         ; $73e2: $2c
    rst $38                                       ; $73e3: $ff
    ldh [$c0], a                                  ; $73e4: $e0 $c0
    db $ed                                        ; $73e6: $ed
    rst $38                                       ; $73e7: $ff
    add h                                         ; $73e8: $84
    db $fc                                        ; $73e9: $fc
    add e                                         ; $73ea: $83
    add [hl]                                      ; $73eb: $86

jr_050_73ec:
    and e                                         ; $73ec: $a3
    nop                                           ; $73ed: $00
    adc b                                         ; $73ee: $88
    add h                                         ; $73ef: $84
    ld a, a                                       ; $73f0: $7f
    xor c                                         ; $73f1: $a9
    ret nz                                        ; $73f2: $c0

    or $ba                                        ; $73f3: $f6 $ba

jr_050_73f5:
    add b                                         ; $73f5: $80
    ld [hl], l                                    ; $73f6: $75
    add l                                         ; $73f7: $85
    ld b, b                                       ; $73f8: $40
    and $c0                                       ; $73f9: $e6 $c0
    add sp, $79                                   ; $73fb: $e8 $79
    xor d                                         ; $73fd: $aa
    nop                                           ; $73fe: $00
    add c                                         ; $73ff: $81
    rst $20                                       ; $7400: $e7
    ld e, b                                       ; $7401: $58
    add sp, $50                                   ; $7402: $e8 $50
    and $03                                       ; $7404: $e6 $03
    sub [hl]                                      ; $7406: $96
    jr c, jr_050_73cf                             ; $7407: $38 $c6

jr_050_7409:
    ret nz                                        ; $7409: $c0

    ld [$72d5], a                                 ; $740a: $ea $d5 $72
    inc bc                                        ; $740d: $03
    sub h                                         ; $740e: $94
    jr nz, jr_050_7409                            ; $740f: $20 $f8

    sub c                                         ; $7411: $91
    push de                                       ; $7412: $d5
    ld [hl], d                                    ; $7413: $72
    inc bc                                        ; $7414: $03
    sub b                                         ; $7415: $90
    ccf                                           ; $7416: $3f
    and a                                         ; $7417: $a7
    jp nz, Jump_000_2cc1                          ; $7418: $c2 $c1 $2c

    db $fd                                        ; $741b: $fd
    and [hl]                                      ; $741c: $a6
    push de                                       ; $741d: $d5
    ld [hl], d                                    ; $741e: $72
    nop                                           ; $741f: $00
    inc bc                                        ; $7420: $03
    adc a                                         ; $7421: $8f
    jr c, jr_050_73ec                             ; $7422: $38 $c8

    ret nz                                        ; $7424: $c0

    db $eb                                        ; $7425: $eb
    push de                                       ; $7426: $d5
    ld [hl], e                                    ; $7427: $73
    inc bc                                        ; $7428: $03
    adc [hl]                                      ; $7429: $8e
    jr c, jr_050_73f5                             ; $742a: $38 $c9

    cp a                                          ; $742c: $bf
    jp z, Jump_050_75d5                           ; $742d: $ca $d5 $75

    nop                                           ; $7430: $00
    inc bc                                        ; $7431: $03
    adc [hl]                                      ; $7432: $8e
    or a                                          ; $7433: $b7
    ld h, [hl]                                    ; $7434: $66
    ld b, h                                       ; $7435: $44
    ldh [$7f], a                                  ; $7436: $e0 $7f
    rst $00                                       ; $7438: $c7
    push de                                       ; $7439: $d5
    ld [hl], l                                    ; $743a: $75
    inc bc                                        ; $743b: $03
    adc a                                         ; $743c: $8f
    rst $20                                       ; $743d: $e7
    ld h, [hl]                                    ; $743e: $66
    ld b, [hl]                                    ; $743f: $46
    rst $20                                       ; $7440: $e7
    nop                                           ; $7441: $00
    ld [de], a                                    ; $7442: $12
    ld h, a                                       ; $7443: $67
    push de                                       ; $7444: $d5
    ld l, h                                       ; $7445: $6c
    inc bc                                        ; $7446: $03
    adc a                                         ; $7447: $8f
    adc [hl]                                      ; $7448: $8e
    add sp, -$01                                  ; $7449: $e8 $ff
    xor d                                         ; $744b: $aa
    push de                                       ; $744c: $d5
    ld [hl], l                                    ; $744d: $75
    inc bc                                        ; $744e: $03
    adc a                                         ; $744f: $8f
    dec sp                                        ; $7450: $3b
    ld l, b                                       ; $7451: $68
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    ld [$71d5], a                                 ; $7454: $ea $d5 $71
    inc bc                                        ; $7457: $03
    adc a                                         ; $7458: $8f
    halt                                          ; $7459: $76
    xor d                                         ; $745a: $aa
    add h                                         ; $745b: $84
    ret z                                         ; $745c: $c8

    push de                                       ; $745d: $d5
    ld [hl], a                                    ; $745e: $77
    inc bc                                        ; $745f: $03
    adc [hl]                                      ; $7460: $8e
    cp $d4                                        ; $7461: $fe $d4
    nop                                           ; $7463: $00
    push de                                       ; $7464: $d5
    ld [hl], c                                    ; $7465: $71
    adc a                                         ; $7466: $8f
    dec h                                         ; $7467: $25
    ld a, [bc]                                    ; $7468: $0a
    ld [hl], h                                    ; $7469: $74
    push bc                                       ; $746a: $c5
    call z, Call_050_6fd5                         ; $746b: $cc $d5 $6f
    cp d                                          ; $746e: $ba
    and h                                         ; $746f: $a4
    dec bc                                        ; $7470: $0b
    sub h                                         ; $7471: $94
    ld b, d                                       ; $7472: $42
    xor e                                         ; $7473: $ab
    nop                                           ; $7474: $00
    push de                                       ; $7475: $d5
    ld [hl], d                                    ; $7476: $72
    adc h                                         ; $7477: $8c
    and e                                         ; $7478: $a3
    ld a, e                                       ; $7479: $7b
    inc l                                         ; $747a: $2c
    add hl, sp                                    ; $747b: $39
    ld d, e                                       ; $747c: $53
    push de                                       ; $747d: $d5
    ld [hl], e                                    ; $747e: $73
    inc bc                                        ; $747f: $03
    adc l                                         ; $7480: $8d
    cp c                                          ; $7481: $b9
    ld [hl], $d5                                  ; $7482: $36 $d5
    ld [hl], e                                    ; $7484: $73
    nop                                           ; $7485: $00
    ret nc                                        ; $7486: $d0

    adc c                                         ; $7487: $89
    ld e, b                                       ; $7488: $58
    and a                                         ; $7489: $a7
    cp c                                          ; $748a: $b9
    ld h, $00                                     ; $748b: $26 $00
    adc c                                         ; $748d: $89
    push de                                       ; $748e: $d5
    ld [hl], d                                    ; $748f: $72
    sub a                                         ; $7490: $97
    add [hl]                                      ; $7491: $86
    ld d, $ed                                     ; $7492: $16 $ed
    nop                                           ; $7494: $00
    push bc                                       ; $7495: $c5
    nop                                           ; $7496: $00
    ld [hl-], a                                   ; $7497: $32
    cpl                                           ; $7498: $2f
    jp nc, $4fea                                  ; $7499: $d2 $ea $4f

    ld l, b                                       ; $749c: $68
    and h                                         ; $749d: $a4
    rst $28                                       ; $749e: $ef
    add c                                         ; $749f: $81
    rst $20                                       ; $74a0: $e7
    nop                                           ; $74a1: $00
    push af                                       ; $74a2: $f5
    ret nc                                        ; $74a3: $d0

    dec c                                         ; $74a4: $0d
    and h                                         ; $74a5: $a4
    db $eb                                        ; $74a6: $eb
    nop                                           ; $74a7: $00
    ret nz                                        ; $74a8: $c0

    ld [$52d5], a                                 ; $74a9: $ea $d5 $52
    adc a                                         ; $74ac: $8f
    dec h                                         ; $74ad: $25
    ld a, c                                       ; $74ae: $79
    ld e, $d5                                     ; $74af: $1e $d5
    ld d, h                                       ; $74b1: $54
    ld c, a                                       ; $74b2: $4f
    add hl, bc                                    ; $74b3: $09
    ld a, c                                       ; $74b4: $79
    ld c, $73                                     ; $74b5: $0e $73
    db $ec                                        ; $74b7: $ec
    nop                                           ; $74b8: $00
    nop                                           ; $74b9: $00
    rst $30                                       ; $74ba: $f7
    and h                                         ; $74bb: $a4
    sub e                                         ; $74bc: $93
    ret nz                                        ; $74bd: $c0

    ldh a, [$8f]                                  ; $74be: $f0 $8f
    inc [hl]                                      ; $74c0: $34
    ld a, c                                       ; $74c1: $79
    ld d, $77                                     ; $74c2: $16 $77
    or e                                          ; $74c4: $b3
    adc a                                         ; $74c5: $8f
    cpl                                           ; $74c6: $2f
    ld a, c                                       ; $74c7: $79
    inc de                                        ; $74c8: $13
    nop                                           ; $74c9: $00
    ld a, [$8c96]                                 ; $74ca: $fa $96 $8c
    xor a                                         ; $74cd: $af
    and h                                         ; $74ce: $a4
    sub d                                         ; $74cf: $92
    ld a, [$8f97]                                 ; $74d0: $fa $97 $8f
    ld l, $79                                     ; $74d3: $2e $79
    inc d                                         ; $74d5: $14
    ei                                            ; $74d6: $fb
    ld hl, sp-$1b                                 ; $74d7: $f8 $e5
    ld c, l                                       ; $74d9: $4d
    nop                                           ; $74da: $00
    ld a, c                                       ; $74db: $79
    ld de, $ffff                                  ; $74dc: $11 $ff $ff
    sbc h                                         ; $74df: $9c
    ld h, l                                       ; $74e0: $65
    ld [$ffd4], a                                 ; $74e1: $ea $d4 $ff
    rst $38                                       ; $74e4: $ff
    ld [$ffda], a                                 ; $74e5: $ea $da $ff
    rst $38                                       ; $74e8: $ff
    and h                                         ; $74e9: $a4
    sbc e                                         ; $74ea: $9b
    nop                                           ; $74eb: $00
    rst $38                                       ; $74ec: $ff
    rst $38                                       ; $74ed: $ff
    and h                                         ; $74ee: $a4
    cp e                                          ; $74ef: $bb
    rst $38                                       ; $74f0: $ff
    rst $38                                       ; $74f1: $ff
    rst $38                                       ; $74f2: $ff
    rst $38                                       ; $74f3: $ff
    sub [hl]                                      ; $74f4: $96
    rst $38                                       ; $74f5: $ff
    rst $38                                       ; $74f6: $ff
    rst $38                                       ; $74f7: $ff
    ld [hl], e                                    ; $74f8: $73
    inc [hl]                                      ; $74f9: $34
    rst $38                                       ; $74fa: $ff
    rst $38                                       ; $74fb: $ff
    nop                                           ; $74fc: $00
    rst $38                                       ; $74fd: $ff
    rst $38                                       ; $74fe: $ff
    rst $38                                       ; $74ff: $ff
    rst $38                                       ; $7500: $ff
    scf                                           ; $7501: $37
    rst $38                                       ; $7502: $ff
    call c, $ffff                                 ; $7503: $dc $ff $ff
    rst $38                                       ; $7506: $ff
    rst $38                                       ; $7507: $ff
    rst $38                                       ; $7508: $ff
    rst $38                                       ; $7509: $ff
    rst $38                                       ; $750a: $ff
    rst $38                                       ; $750b: $ff
    rst $38                                       ; $750c: $ff
    nop                                           ; $750d: $00
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
    nop                                           ; $751e: $00
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
    nop                                           ; $7529: $00
    cp a                                          ; $752a: $bf
    rst $38                                       ; $752b: $ff
    rst $38                                       ; $752c: $ff
    rst $38                                       ; $752d: $ff
    rst $38                                       ; $752e: $ff
    nop                                           ; $752f: $00
    rst $38                                       ; $7530: $ff
    rst $38                                       ; $7531: $ff
    rst $38                                       ; $7532: $ff
    rst $38                                       ; $7533: $ff
    ld e, h                                       ; $7534: $5c
    ld [hl], e                                    ; $7535: $73
    nop                                           ; $7536: $00
    nop                                           ; $7537: $00
    nop                                           ; $7538: $00
    rst $38                                       ; $7539: $ff
    ld e, e                                       ; $753a: $5b
    ld e, e                                       ; $753b: $5b
    ld e, h                                       ; $753c: $5c
    ld e, l                                       ; $753d: $5d
    ld sp, $3131                                  ; $753e: $31 $31 $31
    ld e, l                                       ; $7541: $5d
    rst $30                                       ; $7542: $f7
    ld e, h                                       ; $7543: $5c
    ld e, d                                       ; $7544: $5a
    ld e, e                                       ; $7545: $5b
    rst $38                                       ; $7546: $ff
    ldh [$61], a                                  ; $7547: $e0 $61
    ld sp, $2c2b                                  ; $7549: $31 $2b $2c
    ld h, a                                       ; $754c: $67
    jr nz, @+$22                                  ; $754d: $20 $20

    nop                                           ; $754f: $00
    rst $38                                       ; $7550: $ff
    rst $38                                       ; $7551: $ff
    rst $20                                       ; $7552: $e7
    and $5b                                       ; $7553: $e6 $5b
    ld h, b                                       ; $7555: $60
    jp nz, $e6e0                                  ; $7556: $c2 $e0 $e6

    db $fd                                        ; $7559: $fd
    pop hl                                        ; $755a: $e1
    ld e, l                                       ; $755b: $5d
    ld e, h                                       ; $755c: $5c
    ret nz                                        ; $755d: $c0

    rst $38                                       ; $755e: $ff
    pop af                                        ; $755f: $f1
    ldh a, [$60]                                  ; $7560: $f0 $60
    ld sp, $3f47                                  ; $7562: $31 $47 $3f
    ld b, [hl]                                    ; $7565: $46
    ld d, h                                       ; $7566: $54
    ld d, l                                       ; $7567: $55
    ld d, h                                       ; $7568: $54
    ld b, [hl]                                    ; $7569: $46
    ld b, a                                       ; $756a: $47
    ld a, h                                       ; $756b: $7c
    pop hl                                        ; $756c: $e1
    or h                                          ; $756d: $b4
    ldh [$bc], a                                  ; $756e: $e0 $bc
    ret nz                                        ; $7570: $c0

    rst $38                                       ; $7571: $ff
    db $ec                                        ; $7572: $ec
    db $eb                                        ; $7573: $eb
    ld sp, $4849                                  ; $7574: $31 $49 $48
    ld l, e                                       ; $7577: $6b
    rst $38                                       ; $7578: $ff
    pop hl                                        ; $7579: $e1
    ld [hl], $47                                  ; $757a: $36 $47
    ld d, h                                       ; $757c: $54
    ld b, [hl]                                    ; $757d: $46
    ld c, l                                       ; $757e: $4d
    halt                                          ; $757f: $76
    pop hl                                        ; $7580: $e1
    ret nz                                        ; $7581: $c0

    rst $38                                       ; $7582: $ff
    ret nz                                        ; $7583: $c0

    db $ec                                        ; $7584: $ec
    add hl, sp                                    ; $7585: $39
    pop bc                                        ; $7586: $c1
    pop hl                                        ; $7587: $e1
    cp a                                          ; $7588: $bf
    ld h, a                                       ; $7589: $67
    ld h, l                                       ; $758a: $65
    ld l, b                                       ; $758b: $68
    ld l, d                                       ; $758c: $6a
    ld l, e                                       ; $758d: $6b
    ld [hl-], a                                   ; $758e: $32
    cp a                                          ; $758f: $bf
    pop hl                                        ; $7590: $e1
    add hl, hl                                    ; $7591: $29
    db $e3                                        ; $7592: $e3

jr_050_7593:
    daa                                           ; $7593: $27
    db $10                                        ; $7594: $10
    ret nz                                        ; $7595: $c0

    rst $38                                       ; $7596: $ff
    jp hl                                         ; $7597: $e9


    add sp, -$7f                                  ; $7598: $e8 $81
    ld [c], a                                     ; $759a: $e2
    ld h, a                                       ; $759b: $67
    ld h, a                                       ; $759c: $67
    ld l, h                                       ; $759d: $6c
    rrca                                          ; $759e: $0f
    ld l, h                                       ; $759f: $6c
    ld l, d                                       ; $75a0: $6a
    ld l, d                                       ; $75a1: $6a
    jr nc, @-$3f                                  ; $75a2: $30 $bf

    push hl                                       ; $75a4: $e5
    jp z, $e8ff                                   ; $75a5: $ca $ff $e8

    rst $20                                       ; $75a8: $e7
    add c                                         ; $75a9: $81
    ld [c], a                                     ; $75aa: $e2
    ld a, a                                       ; $75ab: $7f
    ld h, [hl]                                    ; $75ac: $66
    ld l, e                                       ; $75ad: $6b
    jr nc, jr_050_75e0                            ; $75ae: $30 $30

    ld l, e                                       ; $75b0: $6b
    ld l, c                                       ; $75b1: $69

jr_050_75b2:
    ld l, e                                       ; $75b2: $6b
    cp a                                          ; $75b3: $bf
    push hl                                       ; $75b4: $e5
    add h                                         ; $75b5: $84
    jp z, $e8ff                                   ; $75b6: $ca $ff $e8

    rst $20                                       ; $75b9: $e7
    ld d, d                                       ; $75ba: $52
    ret nz                                        ; $75bb: $c0

    add sp, -$41                                  ; $75bc: $e8 $bf
    push hl                                       ; $75be: $e5
    jp z, $e8ff                                   ; $75bf: $ca $ff $e8

    rst $20                                       ; $75c2: $e7
    ld [hl], h                                    ; $75c3: $74
    pop bc                                        ; $75c4: $c1
    ld [hl], c                                    ; $75c5: $71
    ld b, b                                       ; $75c6: $40
    and $b8                                       ; $75c7: $e6 $b8
    ret nz                                        ; $75c9: $c0

    dec a                                         ; $75ca: $3d
    db $e3                                        ; $75cb: $e3
    jp z, $e8ff                                   ; $75cc: $ca $ff $e8

    rst $20                                       ; $75cf: $e7
    add b                                         ; $75d0: $80
    ld a, c                                       ; $75d1: $79
    jr jr_050_7593                                ; $75d2: $18 $bf

    ld [c], a                                     ; $75d4: $e2

Jump_050_75d5:
    ret nz                                        ; $75d5: $c0

    pop bc                                        ; $75d6: $c1
    add b                                         ; $75d7: $80
    ldh [rOCPS], a                                ; $75d8: $e0 $6a
    ld l, b                                       ; $75da: $68
    cp e                                          ; $75db: $bb
    pop bc                                        ; $75dc: $c1
    jp z, $c0ff                                   ; $75dd: $ca $ff $c0

jr_050_75e0:
    add sp, -$04                                  ; $75e0: $e8 $fc
    cp a                                          ; $75e2: $bf
    db $e3                                        ; $75e3: $e3
    inc a                                         ; $75e4: $3c
    jp nz, Jump_050_6a30                          ; $75e5: $c2 $30 $6a

    ld l, d                                       ; $75e8: $6a
    ld l, h                                       ; $75e9: $6c
    ld l, h                                       ; $75ea: $6c
    add hl, sp                                    ; $75eb: $39
    sbc b                                         ; $75ec: $98
    ret nz                                        ; $75ed: $c0

    rst $38                                       ; $75ee: $ff
    ret nz                                        ; $75ef: $c0

    db $eb                                        ; $75f0: $eb
    ld a, [hl]                                    ; $75f1: $7e
    ld [c], a                                     ; $75f2: $e2
    ld c, d                                       ; $75f3: $4a

jr_050_75f4:
    ld [hl], $42                                  ; $75f4: $36 $42
    pop hl                                        ; $75f6: $e1
    cp l                                          ; $75f7: $bd
    ret nz                                        ; $75f8: $c0

    jr nc, jr_050_75f4                            ; $75f9: $30 $f9

    ld d, d                                       ; $75fb: $52
    ret nz                                        ; $75fc: $c0

    rst $38                                       ; $75fd: $ff
    ret nz                                        ; $75fe: $c0

    db $ec                                        ; $75ff: $ec
    add b                                         ; $7600: $80
    ld a, c                                       ; $7601: $79
    ld a, l                                       ; $7602: $7d
    ld a, h                                       ; $7603: $7c
    xor a                                         ; $7604: $af
    add a                                         ; $7605: $87
    ld b, a                                       ; $7606: $47
    ld b, [hl]                                    ; $7607: $46
    ld [hl], $c0                                  ; $7608: $36 $c0
    db $e3                                        ; $760a: $e3
    add b                                         ; $760b: $80
    rst $38                                       ; $760c: $ff
    ret nz                                        ; $760d: $c0

    xor $7c                                       ; $760e: $ee $7c
    ldh [$a1], a                                  ; $7610: $e0 $a1
    push af                                       ; $7612: $f5
    ld sp, $a038                                  ; $7613: $31 $38 $a0
    ld [hl], $40                                  ; $7616: $36 $40
    ldh [$36], a                                  ; $7618: $e0 $36
    scf                                           ; $761a: $37
    ld sp, $285e                                  ; $761b: $31 $5e $28
    jp z, $c0ff                                   ; $761e: $ca $ff $c0

    pop af                                        ; $7621: $f1
    cp [hl]                                       ; $7622: $be
    pop hl                                        ; $7623: $e1
    ld d, l                                       ; $7624: $55
    ld hl, sp-$7f                                 ; $7625: $f8 $81
    ld e, a                                       ; $7627: $5f
    jp z, $80ff                                   ; $7628: $ca $ff $80

    ldh a, [rNR24]                                ; $762b: $f0 $19
    ld h, b                                       ; $762d: $60
    jr c, jr_050_75b2                             ; $762e: $38 $82

    dec [hl]                                      ; $7630: $35
    add b                                         ; $7631: $80
    ld e, [hl]                                    ; $7632: $5e
    ld e, e                                       ; $7633: $5b
    jp z, $ffff                                   ; $7634: $ca $ff $ff

    rst $38                                       ; $7637: $ff
    rst $38                                       ; $7638: $ff
    rst $38                                       ; $7639: $ff
    nop                                           ; $763a: $00
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
    nop                                           ; $764b: $00
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
    nop                                           ; $765c: $00
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
    nop                                           ; $766d: $00
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
    nop                                           ; $767e: $00
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
    nop                                           ; $768f: $00
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
    nop                                           ; $76a0: $00
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
    nop                                           ; $76b1: $00
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
    nop                                           ; $76c2: $00
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
    nop                                           ; $76d3: $00
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
    nop                                           ; $76e4: $00
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
    nop                                           ; $76f5: $00
    rst $38                                       ; $76f6: $ff
    di                                            ; $76f7: $f3
    nop                                           ; $76f8: $00
    nop                                           ; $76f9: $00
    nop                                           ; $76fa: $00
    and l                                         ; $76fb: $a5
    nop                                           ; $76fc: $00
    rst $38                                       ; $76fd: $ff
    push hl                                       ; $76fe: $e5
    ld [hl-], a                                   ; $76ff: $32
    or $e6                                        ; $7700: $f6 $e6
    rst $30                                       ; $7702: $f7
    rst $20                                       ; $7703: $e7
    dec [hl]                                      ; $7704: $35
    db $ec                                        ; $7705: $ec
    xor $37                                       ; $7706: $ee $37
    db $ec                                        ; $7708: $ec
    jp c, $c7f0                                   ; $7709: $da $f0 $c7

    add sp, $33                                   ; $770c: $e8 $33
    ld sp, $f2e0                                  ; $770e: $31 $e0 $f2
    ld [hl], $30                                  ; $7711: $36 $30
    scf                                           ; $7713: $37
    cp a                                          ; $7714: $bf
    ld h, $20                                     ; $7715: $26 $20
    daa                                           ; $7717: $27
    db $10                                        ; $7718: $10
    ld d, $17                                     ; $7719: $16 $17
    jp nz, Jump_000_34f6                          ; $771b: $c2 $f6 $34

    rst $38                                       ; $771e: $ff
    ld [hl], $32                                  ; $771f: $36 $32
    jr nc, jr_050_775a                            ; $7721: $30 $37

    ld sp, $3133                                  ; $7723: $31 $33 $31
    inc sp                                        ; $7726: $33
    nop                                           ; $7727: $00
    and b                                         ; $7728: $a0
    ei                                            ; $7729: $fb
    rst $38                                       ; $772a: $ff
    rst $28                                       ; $772b: $ef
    nop                                           ; $772c: $00
    nop                                           ; $772d: $00
    nop                                           ; $772e: $00
    scf                                           ; $772f: $37
    ld [hl], a                                    ; $7730: $77
    ld h, a                                       ; $7731: $67
    ld [hl], a                                    ; $7732: $77
    add e                                         ; $7733: $83
    ld a, c                                       ; $7734: $79
    add hl, sp                                    ; $7735: $39
    ld a, e                                       ; $7736: $7b
    db $ec                                        ; $7737: $ec
    dec hl                                        ; $7738: $2b
    ld [hl+], a                                   ; $7739: $22
    dec sp                                        ; $773a: $3b
    ld b, b                                       ; $773b: $40
    ld [hl+], a                                   ; $773c: $22
    nop                                           ; $773d: $00
    add hl, bc                                    ; $773e: $09
    and l                                         ; $773f: $a5
    ld b, e                                       ; $7740: $43
    xor $37                                       ; $7741: $ee $37
    ld [hl+], a                                   ; $7743: $22
    dec sp                                        ; $7744: $3b
    ld b, b                                       ; $7745: $40
    ld [hl+], a                                   ; $7746: $22
    ccf                                           ; $7747: $3f
    ld a, a                                       ; $7748: $7f
    rla                                           ; $7749: $17
    ld e, [hl]                                    ; $774a: $5e
    ld de, $2249                                  ; $774b: $11 $49 $22
    dec sp                                        ; $774e: $3b
    ld [$0825], sp                                ; $774f: $08 $25 $08
    dec h                                         ; $7752: $25
    ld [$0825], sp                                ; $7753: $08 $25 $08
    dec h                                         ; $7756: $25
    ld [$0825], sp                                ; $7757: $08 $25 $08

jr_050_775a:
    dec h                                         ; $775a: $25
    ld [$0825], sp                                ; $775b: $08 $25 $08
    dec h                                         ; $775e: $25
    ld [$0825], sp                                ; $775f: $08 $25 $08
    dec h                                         ; $7762: $25
    ld [$0825], sp                                ; $7763: $08 $25 $08
    dec h                                         ; $7766: $25
    db $db                                        ; $7767: $db
    ld a, [hl+]                                   ; $7768: $2a
    ld a, [bc]                                    ; $7769: $0a
    rst $38                                       ; $776a: $ff
    rst $28                                       ; $776b: $ef
    inc c                                         ; $776c: $0c
    ld c, h                                       ; $776d: $4c
    rst $38                                       ; $776e: $ff
    ldh [$0c], a                                  ; $776f: $e0 $0c
    inc c                                         ; $7771: $0c
    ld b, c                                       ; $7772: $41
    inc c                                         ; $7773: $0c
    db $fc                                        ; $7774: $fc
    ldh [$f9], a                                  ; $7775: $e0 $f9
    pop hl                                        ; $7777: $e1
    ld hl, sp-$1e                                 ; $7778: $f8 $e2
    db $f4                                        ; $777a: $f4
    push hl                                       ; $777b: $e5
    db $fc                                        ; $777c: $fc
    db $ed                                        ; $777d: $ed
    ld c, d                                       ; $777e: $4a
    cp a                                          ; $777f: $bf
    rst $28                                       ; $7780: $ef
    push hl                                       ; $7781: $e5
    ld l, d                                       ; $7782: $6a
    push bc                                       ; $7783: $c5
    pop hl                                        ; $7784: $e1
    ld c, h                                       ; $7785: $4c
    db $fd                                        ; $7786: $fd
    and $b5                                       ; $7787: $e6 $b5
    db $e3                                        ; $7789: $e3
    ld c, h                                       ; $778a: $4c
    inc c                                         ; $778b: $0c
    inc l                                         ; $778c: $2c
    ld d, [hl]                                    ; $778d: $56
    or h                                          ; $778e: $b4
    ld [c], a                                     ; $778f: $e2
    inc l                                         ; $7790: $2c
    inc l                                         ; $7791: $2c
    cp d                                          ; $7792: $ba
    db $eb                                        ; $7793: $eb
    ld a, [bc]                                    ; $7794: $0a
    cp a                                          ; $7795: $bf
    xor $6a                                       ; $7796: $ee $6a
    ret nz                                        ; $7798: $c0

    jp hl                                         ; $7799: $e9


    sub h                                         ; $779a: $94
    cp c                                          ; $779b: $b9
    ldh [$b2], a                                  ; $779c: $e0 $b2
    db $e4                                        ; $779e: $e4
    inc l                                         ; $779f: $2c
    ret nz                                        ; $77a0: $c0

    ld [c], a                                     ; $77a1: $e2
    inc l                                         ; $77a2: $2c
    ret nz                                        ; $77a3: $c0

    xor $bf                                       ; $77a4: $ee $bf
    db $ed                                        ; $77a6: $ed
    ld l, d                                       ; $77a7: $6a
    adc b                                         ; $77a8: $88
    ret nz                                        ; $77a9: $c0

    ld [c], a                                     ; $77aa: $e2
    ld a, [hl]                                    ; $77ab: $7e
    push hl                                       ; $77ac: $e5
    ld b, a                                       ; $77ad: $47
    push hl                                       ; $77ae: $e5
    ld c, h                                       ; $77af: $4c
    ret nz                                        ; $77b0: $c0

    and $40                                       ; $77b1: $e6 $40
    db $ed                                        ; $77b3: $ed
    rst $38                                       ; $77b4: $ff
    ldh [$0b], a                                  ; $77b5: $e0 $0b
    ld [hl], $ff                                  ; $77b7: $36 $ff
    ldh [rWX], a                                  ; $77b9: $e0 $4b
    ld l, e                                       ; $77bb: $6b
    ld a, [$2be2]                                 ; $77bc: $fa $e2 $2b
    ld c, d                                       ; $77bf: $4a
    ret nz                                        ; $77c0: $c0

    ld [c], a                                     ; $77c1: $e2
    add d                                         ; $77c2: $82
    and $40                                       ; $77c3: $e6 $40
    ld b, b                                       ; $77c5: $40
    add sp, -$0c                                  ; $77c6: $e8 $f4
    jp nz, $e841                                  ; $77c8: $c2 $41 $e8

    scf                                           ; $77cb: $37
    db $e3                                        ; $77cc: $e3
    ret nz                                        ; $77cd: $c0

    pop hl                                        ; $77ce: $e1
    push bc                                       ; $77cf: $c5
    ldh [rWX], a                                  ; $77d0: $e0 $4b
    cp [hl]                                       ; $77d2: $be
    ldh [rIF], a                                  ; $77d3: $e0 $0f
    ld c, e                                       ; $77d5: $4b
    ld c, e                                       ; $77d6: $4b
    ld l, e                                       ; $77d7: $6b
    ld c, e                                       ; $77d8: $4b
    cp a                                          ; $77d9: $bf
    ld [c], a                                     ; $77da: $e2
    push bc                                       ; $77db: $c5
    jp $e6fa                                      ; $77dc: $c3 $fa $e6


    pop af                                        ; $77df: $f1
    call nz, $c2dc                                ; $77e0: $c4 $dc $c2
    pop de                                        ; $77e3: $d1
    ret nz                                        ; $77e4: $c0

    push hl                                       ; $77e5: $e5
    ld c, e                                       ; $77e6: $4b
    dec hl                                        ; $77e7: $2b
    dec hl                                        ; $77e8: $2b
    pop bc                                        ; $77e9: $c1
    ldh [rWX], a                                  ; $77ea: $e0 $4b
    ld l, e                                       ; $77ec: $6b
    rlca                                          ; $77ed: $07
    ld l, e                                       ; $77ee: $6b
    ld c, e                                       ; $77ef: $4b
    dec bc                                        ; $77f0: $0b
    ld a, [hl]                                    ; $77f1: $7e
    ldh [$ca], a                                  ; $77f2: $e0 $ca
    and $b7                                       ; $77f4: $e6 $b7
    push hl                                       ; $77f6: $e5
    ld a, a                                       ; $77f7: $7f
    call nz, $e102                                ; $77f8: $c4 $02 $e1
    ld d, b                                       ; $77fb: $50
    ld b, b                                       ; $77fc: $40
    ld a, [c]                                     ; $77fd: $f2
    jp z, $c1e0                                   ; $77fe: $ca $e0 $c1

    pop hl                                        ; $7801: $e1
    ld a, a                                       ; $7802: $7f
    ldh [$2b], a                                  ; $7803: $e0 $2b
    inc [hl]                                      ; $7805: $34
    ldh [rWY], a                                  ; $7806: $e0 $4a
    ret nz                                        ; $7808: $c0

    set 4, h                                      ; $7809: $cb $e4
    ccf                                           ; $780b: $3f
    rst $20                                       ; $780c: $e7
    ret nz                                        ; $780d: $c0

    push af                                       ; $780e: $f5
    dec hl                                        ; $780f: $2b
    add d                                         ; $7810: $82
    db $e3                                        ; $7811: $e3
    ld a, [hl]                                    ; $7812: $7e
    pop hl                                        ; $7813: $e1
    dec bc                                        ; $7814: $0b
    dec bc                                        ; $7815: $0b
    ld l, h                                       ; $7816: $6c
    nop                                           ; $7817: $00
    ld c, $c7                                     ; $7818: $0e $c7
    add c                                         ; $781a: $81
    jp $c435                                      ; $781b: $c3 $35 $c4


    ld b, c                                       ; $781e: $41
    di                                            ; $781f: $f3
    ret nz                                        ; $7820: $c0

    jp nz, $e1c9                                  ; $7821: $c2 $c9 $e1

    ld bc, $f8e1                                  ; $7824: $01 $e1 $f8
    ld [c], a                                     ; $7827: $e2
    add b                                         ; $7828: $80
    ld b, a                                       ; $7829: $47
    and $ff                                       ; $782a: $e6 $ff
    push hl                                       ; $782c: $e5
    ld [hl], l                                    ; $782d: $75
    add $00                                       ; $782e: $c6 $00
    or $4b                                        ; $7830: $f6 $4b
    pop hl                                        ; $7832: $e1
    pop bc                                        ; $7833: $c1
    jp nz, $c077                                  ; $7834: $c2 $77 $c0

    ld l, h                                       ; $7837: $6c
    nop                                           ; $7838: $00
    add h                                         ; $7839: $84
    pop bc                                        ; $783a: $c1
    adc $c7                                       ; $783b: $ce $c7
    adc h                                         ; $783d: $8c
    and h                                         ; $783e: $a4
    ret nz                                        ; $783f: $c0

    adc $ba                                       ; $7840: $ce $ba
    and [hl]                                      ; $7842: $a6
    ld b, b                                       ; $7843: $40
    ld [c], a                                     ; $7844: $e2
    ld b, h                                       ; $7845: $44
    pop bc                                        ; $7846: $c1
    add d                                         ; $7847: $82
    db $e3                                        ; $7848: $e3
    nop                                           ; $7849: $00
    add c                                         ; $784a: $81
    ld [c], a                                     ; $784b: $e2
    ld c, l                                       ; $784c: $4d
    xor e                                         ; $784d: $ab
    rst $38                                       ; $784e: $ff
    and l                                         ; $784f: $a5
    add b                                         ; $7850: $80
    ld hl, sp+$04                                 ; $7851: $f8 $04
    jp $e404                                      ; $7853: $c3 $04 $e4


    db $d3                                        ; $7856: $d3
    push bc                                       ; $7857: $c5
    ld b, h                                       ; $7858: $44
    and $06                                       ; $7859: $e6 $06
    ld b, b                                       ; $785b: $40
    sbc $2b                                       ; $785c: $de $2b
    ld l, e                                       ; $785e: $6b
    jp $bfa1                                      ; $785f: $c3 $a1 $bf


    and b                                         ; $7862: $a0
    rst $18                                       ; $7863: $df
    adc b                                         ; $7864: $88
    dec b                                         ; $7865: $05
    and l                                         ; $7866: $a5
    ld a, l                                       ; $7867: $7d
    jp $8000                                      ; $7868: $c3 $00 $80


    db $ed                                        ; $786b: $ed
    or l                                          ; $786c: $b5
    add a                                         ; $786d: $87
    add b                                         ; $786e: $80
    jp nz, $c007                                  ; $786f: $c2 $07 $c0

    ld a, l                                       ; $7872: $7d
    and c                                         ; $7873: $a1
    add c                                         ; $7874: $81
    push hl                                       ; $7875: $e5
    adc l                                         ; $7876: $8d
    add l                                         ; $7877: $85
    adc b                                         ; $7878: $88
    add l                                         ; $7879: $85
    nop                                           ; $787a: $00
    ld b, b                                       ; $787b: $40
    add $85                                       ; $787c: $c6 $85
    and [hl]                                      ; $787e: $a6
    or l                                          ; $787f: $b5
    add a                                         ; $7880: $87
    ld b, b                                       ; $7881: $40
    and d                                         ; $7882: $a2
    cp a                                          ; $7883: $bf
    jp nz, $e881                                  ; $7884: $c2 $81 $e8

    ld b, b                                       ; $7887: $40
    push hl                                       ; $7888: $e5
    ret nz                                        ; $7889: $c0

    add sp, $00                                   ; $788a: $e8 $00
    jp nz, $b5cb                                  ; $788c: $c2 $cb $b5

    add a                                         ; $788f: $87
    ld e, b                                       ; $7890: $58
    rst $20                                       ; $7891: $e7
    ld d, b                                       ; $7892: $50
    and $18                                       ; $7893: $e6 $18
    adc d                                         ; $7895: $8a
    adc l                                         ; $7896: $8d
    or b                                          ; $7897: $b0
    ret nz                                        ; $7898: $c0

    and $99                                       ; $7899: $e6 $99
    add e                                         ; $789b: $83
    nop                                           ; $789c: $00
    push de                                       ; $789d: $d5
    ld a, a                                       ; $789e: $7f
    ret z                                         ; $789f: $c8

    ld l, a                                       ; $78a0: $6f
    ld [hl], l                                    ; $78a1: $75
    adc c                                         ; $78a2: $89
    adc e                                         ; $78a3: $8b
    ldh a, [rIE]                                  ; $78a4: $f0 $ff
    rst $38                                       ; $78a6: $ff
    sub [hl]                                      ; $78a7: $96
    call $ef5c                                    ; $78a8: $cd $5c $ef
    ld a, [hl]                                    ; $78ab: $7e
    db $fc                                        ; $78ac: $fc
    nop                                           ; $78ad: $00
    or l                                          ; $78ae: $b5
    adc c                                         ; $78af: $89
    ld h, b                                       ; $78b0: $60
    cp c                                          ; $78b1: $b9
    ret nz                                        ; $78b2: $c0

    cp $17                                        ; $78b3: $fe $17
    ld h, e                                       ; $78b5: $63
    add b                                         ; $78b6: $80
    or $00                                        ; $78b7: $f6 $00
    db $d3                                        ; $78b9: $d3
    db $f4                                        ; $78ba: $f4
    or e                                          ; $78bb: $b3
    sub $d4                                       ; $78bc: $d6 $d4
    nop                                           ; $78be: $00
    nop                                           ; $78bf: $00
    rst $08                                       ; $78c0: $cf
    rst $38                                       ; $78c1: $ff
    rst $38                                       ; $78c2: $ff
    rst $38                                       ; $78c3: $ff
    rst $38                                       ; $78c4: $ff
    ld d, [hl]                                    ; $78c5: $56
    xor e                                         ; $78c6: $ab
    ld d, $fa                                     ; $78c7: $16 $fa
    ld e, a                                       ; $78c9: $5f
    rst $38                                       ; $78ca: $ff
    ld h, l                                       ; $78cb: $65
    rst $10                                       ; $78cc: $d7
    ld c, [hl]                                    ; $78cd: $4e
    ld c, a                                       ; $78ce: $4f
    nop                                           ; $78cf: $00
    or $af                                        ; $78d0: $f6 $af
    ld [bc], a                                    ; $78d2: $02
    jp c, $fc81                                   ; $78d3: $da $81 $fc

    and e                                         ; $78d6: $a3
    ld d, d                                       ; $78d7: $52
    sub d                                         ; $78d8: $92
    ld l, c                                       ; $78d9: $69

jr_050_78da:
    ret nz                                        ; $78da: $c0

    cp $63                                        ; $78db: $fe $63
    jp c, $dfc2                                   ; $78dd: $da $c2 $df

    nop                                           ; $78e0: $00
    ld h, e                                       ; $78e1: $63
    call c, $284f                                 ; $78e2: $dc $4f $28
    or l                                          ; $78e5: $b5
    sub d                                         ; $78e6: $92
    db $e3                                        ; $78e7: $e3
    daa                                           ; $78e8: $27
    pop hl                                        ; $78e9: $e1
    di                                            ; $78ea: $f3
    pop bc                                        ; $78eb: $c1
    call c, $d97f                                 ; $78ec: $dc $7f $d9
    add $df                                       ; $78ef: $c6 $df
    nop                                           ; $78f1: $00
    ld b, b                                       ; $78f2: $40
    rst $38                                       ; $78f3: $ff
    rst $38                                       ; $78f4: $ff
    rst $38                                       ; $78f5: $ff
    adc b                                         ; $78f6: $88
    rst $38                                       ; $78f7: $ff
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    ld h, e                                       ; $78fa: $63

jr_050_78fb:
    ld a, [$85b9]                                 ; $78fb: $fa $b9 $85
    ld a, c                                       ; $78fe: $79
    inc d                                         ; $78ff: $14
    rst $38                                       ; $7900: $ff
    rst $38                                       ; $7901: $ff
    nop                                           ; $7902: $00
    sub $b9                                       ; $7903: $d6 $b9
    rst $38                                       ; $7905: $ff
    rst $38                                       ; $7906: $ff
    ld c, a                                       ; $7907: $4f
    ld c, b                                       ; $7908: $48
    ld a, c                                       ; $7909: $79
    jr jr_050_78da                                ; $790a: $18 $ce

    ld e, l                                       ; $790c: $5d
    ld a, c                                       ; $790d: $79
    ld d, $55                                     ; $790e: $16 $55
    ld c, h                                       ; $7910: $4c
    rst $08                                       ; $7911: $cf
    ld d, a                                       ; $7912: $57
    nop                                           ; $7913: $00
    ld a, c                                       ; $7914: $79
    dec de                                        ; $7915: $1b
    and b                                         ; $7916: $a0
    cp c                                          ; $7917: $b9
    ld l, $25                                     ; $7918: $2e $25
    add hl, de                                    ; $791a: $19
    ld a, a                                       ; $791b: $7f
    jr c, jr_050_78fb                             ; $791c: $38 $dd

    ret nz                                        ; $791e: $c0

    rst $18                                       ; $791f: $df
    ld e, c                                       ; $7920: $59
    cp e                                          ; $7921: $bb
    sub [hl]                                      ; $7922: $96
    cp a                                          ; $7923: $bf
    nop                                           ; $7924: $00
    or $bb                                        ; $7925: $f6 $bb
    add b                                         ; $7927: $80
    rst $38                                       ; $7928: $ff
    ld a, c                                       ; $7929: $79
    ld e, a                                       ; $792a: $5f
    call nc, $82ff                                ; $792b: $d4 $ff $82
    ld c, l                                       ; $792e: $4d
    ld a, c                                       ; $792f: $79
    ld d, $8b                                     ; $7930: $16 $8b
    rst $38                                       ; $7932: $ff
    ld a, c                                       ; $7933: $79
    dec de                                        ; $7934: $1b
    nop                                           ; $7935: $00
    rst $38                                       ; $7936: $ff
    rst $38                                       ; $7937: $ff
    inc h                                         ; $7938: $24
    rst $18                                       ; $7939: $df
    rst $38                                       ; $793a: $ff
    rst $38                                       ; $793b: $ff
    rst $38                                       ; $793c: $ff
    rst $38                                       ; $793d: $ff
    sub [hl]                                      ; $793e: $96
    rst $38                                       ; $793f: $ff
    ret nc                                        ; $7940: $d0

    ld sp, hl                                     ; $7941: $f9
    db $dd                                        ; $7942: $dd
    rst $38                                       ; $7943: $ff
    rst $38                                       ; $7944: $ff
    rst $38                                       ; $7945: $ff
    nop                                           ; $7946: $00
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    rst $38                                       ; $7949: $ff
    rst $38                                       ; $794a: $ff
    ld b, c                                       ; $794b: $41
    cp a                                          ; $794c: $bf
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
    nop                                           ; $7957: $00
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
    nop                                           ; $7968: $00
    rst $38                                       ; $7969: $ff
    rst $38                                       ; $796a: $ff
    rst $38                                       ; $796b: $ff
    rst $38                                       ; $796c: $ff
    rst $38                                       ; $796d: $ff
    rst $38                                       ; $796e: $ff
    rst $38                                       ; $796f: $ff
    rst $38                                       ; $7970: $ff
    nop                                           ; $7971: $00
    cp a                                          ; $7972: $bf
    rst $38                                       ; $7973: $ff
    rst $38                                       ; $7974: $ff
    rst $38                                       ; $7975: $ff
    rst $38                                       ; $7976: $ff
    rst $38                                       ; $7977: $ff
    rst $38                                       ; $7978: $ff
    nop                                           ; $7979: $00
    rst $38                                       ; $797a: $ff
    rst $38                                       ; $797b: $ff
    rst $38                                       ; $797c: $ff
    rst $38                                       ; $797d: $ff
    ld e, h                                       ; $797e: $5c
    ld h, e                                       ; $797f: $63
    nop                                           ; $7980: $00
    nop                                           ; $7981: $00
    nop                                           ; $7982: $00
    sbc e                                         ; $7983: $9b
    adc e                                         ; $7984: $8b
    adc b                                         ; $7985: $88
    rst $38                                       ; $7986: $ff
    xor $8b                                       ; $7987: $ee $8b
    nop                                           ; $7989: $00
    rst $38                                       ; $798a: $ff
    rst $38                                       ; $798b: $ff
    rst $20                                       ; $798c: $e7
    and $87                                       ; $798d: $e6 $87
    add $bf                                       ; $798f: $c6 $bf
    xor $8b                                       ; $7991: $ee $8b
    ld c, [hl]                                    ; $7993: $4e
    jp z, $c0ff                                   ; $7994: $ca $ff $c0

    add sp, -$41                                  ; $7997: $e8 $bf
    db $ed                                        ; $7999: $ed
    adc e                                         ; $799a: $8b
    ld c, [hl]                                    ; $799b: $4e
    ret nz                                        ; $799c: $c0

    ret nz                                        ; $799d: $c0

    rst $38                                       ; $799e: $ff
    ret nz                                        ; $799f: $c0

    ld [$eb7e], a                                 ; $79a0: $ea $7e $eb
    pop bc                                        ; $79a3: $c1
    ldh [$c0], a                                  ; $79a4: $e0 $c0
    rst $38                                       ; $79a6: $ff
    ret nz                                        ; $79a7: $c0

    db $eb                                        ; $79a8: $eb
    add a                                         ; $79a9: $87
    ld e, e                                       ; $79aa: $5b
    rst $38                                       ; $79ab: $ff
    ld e, h                                       ; $79ac: $5c
    ld e, l                                       ; $79ad: $5d
    ld sp, $979e                                  ; $79ae: $31 $9e $97
    ld d, [hl]                                    ; $79b1: $56
    ld d, [hl]                                    ; $79b2: $56
    ld d, [hl]                                    ; $79b3: $56
    rst $08                                       ; $79b4: $cf
    ld d, a                                       ; $79b5: $57
    ld b, a                                       ; $79b6: $47
    ld h, b                                       ; $79b7: $60
    adc h                                         ; $79b8: $8c
    ret nz                                        ; $79b9: $c0

    rst $38                                       ; $79ba: $ff
    ret nz                                        ; $79bb: $c0

    xor $5f                                       ; $79bc: $ee $5f
    ld sp, $31ff                                  ; $79be: $31 $ff $31
    sub l                                         ; $79c1: $95
    sbc b                                         ; $79c2: $98
    sbc c                                         ; $79c3: $99
    ld l, d                                       ; $79c4: $6a
    ld l, b                                       ; $79c5: $68
    ld l, b                                       ; $79c6: $68
    ld l, d                                       ; $79c7: $6a
    db $e3                                        ; $79c8: $e3
    ld [hl], $37                                  ; $79c9: $36 $37
    cp a                                          ; $79cb: $bf
    pop hl                                        ; $79cc: $e1
    jp z, $80ff                                   ; $79cd: $ca $ff $80

    db $eb                                        ; $79d0: $eb
    ld e, [hl]                                    ; $79d1: $5e
    ld sp, $7795                                  ; $79d2: $31 $95 $77
    sbc l                                         ; $79d5: $9d
    jr nc, jr_050_7a42                            ; $79d6: $30 $6a

    ret nz                                        ; $79d8: $c0

    pop hl                                        ; $79d9: $e1
    ld l, d                                       ; $79da: $6a
    add hl, sp                                    ; $79db: $39
    ld sp, $e07e                                  ; $79dc: $31 $7e $e0
    db $fc                                        ; $79df: $fc
    jp z, $40ff                                   ; $79e0: $ca $ff $40

    db $eb                                        ; $79e3: $eb
    ld sp, $9c95                                  ; $79e4: $31 $95 $9c
    sub h                                         ; $79e7: $94
    ld l, d                                       ; $79e8: $6a
    ld l, d                                       ; $79e9: $6a
    db $fd                                        ; $79ea: $fd
    ld l, l                                       ; $79eb: $6d
    rst $38                                       ; $79ec: $ff
    ldh [rOCPS], a                                ; $79ed: $e0 $6a
    ld d, e                                       ; $79ef: $53
    ld sp, $5b61                                  ; $79f0: $31 $61 $5b
    adc h                                         ; $79f3: $8c
    call z, $ffca                                 ; $79f4: $cc $ca $ff
    nop                                           ; $79f7: $00
    db $eb                                        ; $79f8: $eb
    sbc a                                         ; $79f9: $9f

jr_050_79fa:
    sub c                                         ; $79fa: $91
    add d                                         ; $79fb: $82
    ldh [$c1], a                                  ; $79fc: $e0 $c1
    pop hl                                        ; $79fe: $e1
    ld l, l                                       ; $79ff: $6d
    ld l, l                                       ; $7a00: $6d
    sbc a                                         ; $7a01: $9f
    add hl, sp                                    ; $7a02: $39
    ld sp, $1415                                  ; $7a03: $31 $15 $14
    inc d                                         ; $7a06: $14
    jp z, $c0ff                                   ; $7a07: $ca $ff $c0

    res 2, d                                      ; $7a0a: $cb $92
    rst $28                                       ; $7a0c: $ef
    sub e                                         ; $7a0d: $93
    jr nc, jr_050_7a79                            ; $7a0e: $30 $69

    ld l, c                                       ; $7a10: $69
    ret nz                                        ; $7a11: $c0

    ld [c], a                                     ; $7a12: $e2
    ld [hl], $49                                  ; $7a13: $36 $49
    ld sp, $17b3                                  ; $7a15: $31 $b3 $17
    inc h                                         ; $7a18: $24
    set 7, a                                      ; $7a19: $cb $ff
    add b                                         ; $7a1b: $80
    call z, Call_000_3051                         ; $7a1c: $cc $51 $30
    ret nz                                        ; $7a1f: $c0

    db $e3                                        ; $7a20: $e3
    ld b, d                                       ; $7a21: $42
    ccf                                           ; $7a22: $3f
    ld b, [hl]                                    ; $7a23: $46
    ld b, a                                       ; $7a24: $47
    ld sp, $1615                                  ; $7a25: $31 $15 $16
    jr nz, @-$33                                  ; $7a28: $20 $cb

    rst $38                                       ; $7a2a: $ff
    ld b, b                                       ; $7a2b: $40
    call z, Call_050_50fb                         ; $7a2c: $cc $fb $50
    ld l, l                                       ; $7a2f: $6d
    ld b, b                                       ; $7a30: $40
    db $e3                                        ; $7a31: $e3
    add hl, sp                                    ; $7a32: $39
    ld sp, $3131                                  ; $7a33: $31 $31 $31
    rla                                           ; $7a36: $17
    reti                                          ; $7a37: $d9


    jr z, jr_050_79fa                             ; $7a38: $28 $c0

    rst $38                                       ; $7a3a: $ff
    add b                                         ; $7a3b: $80
    xor $6d                                       ; $7a3c: $ee $6d
    jr nc, @+$01                                  ; $7a3e: $30 $ff

    pop bc                                        ; $7a40: $c1
    ld c, b                                       ; $7a41: $48

jr_050_7a42:
    ld c, c                                       ; $7a42: $49
    and [hl]                                      ; $7a43: $a6
    inc b                                         ; $7a44: $04
    ldh [rNR21], a                                ; $7a45: $e0 $16
    jr nz, @-$3e                                  ; $7a47: $20 $c0

    rst $38                                       ; $7a49: $ff
    ret nz                                        ; $7a4a: $c0

    rst $28                                       ; $7a4b: $ef
    ld l, l                                       ; $7a4c: $6d
    rst $38                                       ; $7a4d: $ff
    ret nz                                        ; $7a4e: $c0

    ld b, d                                       ; $7a4f: $42
    call Call_000_043c                            ; $7a50: $cd $3c $04
    ldh [rNR50], a                                ; $7a53: $e0 $24
    jr nz, @-$3e                                  ; $7a55: $20 $c0

    rst $38                                       ; $7a57: $ff
    add b                                         ; $7a58: $80
    xor [hl]                                      ; $7a59: $ae
    ld c, c                                       ; $7a5a: $49
    ld b, d                                       ; $7a5b: $42
    rra                                           ; $7a5c: $1f
    ld l, l                                       ; $7a5d: $6d
    ld l, l                                       ; $7a5e: $6d
    ld l, c                                       ; $7a5f: $69
    ld [hl], $3c                                  ; $7a60: $36 $3c
    inc b                                         ; $7a62: $04
    pop hl                                        ; $7a63: $e1
    rst $38                                       ; $7a64: $ff
    pop hl                                        ; $7a65: $e1
    set 7, a                                      ; $7a66: $cb $ff
    ld c, $00                                     ; $7a68: $0e $00
    call Call_050_553c                            ; $7a6a: $cd $3c $55
    ld d, h                                       ; $7a6d: $54
    push bc                                       ; $7a6e: $c5
    ret nz                                        ; $7a6f: $c0

    inc b                                         ; $7a70: $04
    pop hl                                        ; $7a71: $e1
    ret nz                                        ; $7a72: $c0

    rst $38                                       ; $7a73: $ff
    rst $38                                       ; $7a74: $ff
    rst $38                                       ; $7a75: $ff
    nop                                           ; $7a76: $00
    rst $38                                       ; $7a77: $ff
    rst $38                                       ; $7a78: $ff

jr_050_7a79:
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
    nop                                           ; $7a87: $00
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
    nop                                           ; $7a98: $00
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
    nop                                           ; $7aa9: $00
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
    nop                                           ; $7aba: $00
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
    nop                                           ; $7acb: $00
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
    nop                                           ; $7adc: $00
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
    nop                                           ; $7aed: $00
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
    nop                                           ; $7afe: $00
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
    nop                                           ; $7b0f: $00
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
    nop                                           ; $7b20: $00
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
    ld hl, sp+$00                                 ; $7b35: $f8 $00
    nop                                           ; $7b37: $00
    nop                                           ; $7b38: $00
    and l                                         ; $7b39: $a5
    nop                                           ; $7b3a: $00
    rst $38                                       ; $7b3b: $ff
    push hl                                       ; $7b3c: $e5
    ld [hl-], a                                   ; $7b3d: $32
    or $e6                                        ; $7b3e: $f6 $e6
    rst $30                                       ; $7b40: $f7
    rst $20                                       ; $7b41: $e7
    dec [hl]                                      ; $7b42: $35
    db $ec                                        ; $7b43: $ec
    xor $37                                       ; $7b44: $ee $37
    db $ec                                        ; $7b46: $ec
    jp c, $c7f0                                   ; $7b47: $da $f0 $c7

    add sp, $33                                   ; $7b4a: $e8 $33
    ld sp, $f2e0                                  ; $7b4c: $31 $e0 $f2
    ld [hl], $30                                  ; $7b4f: $36 $30
    scf                                           ; $7b51: $37
    cp a                                          ; $7b52: $bf
    ld h, $20                                     ; $7b53: $26 $20
    daa                                           ; $7b55: $27
    db $10                                        ; $7b56: $10
    ld d, $17                                     ; $7b57: $16 $17
    jp nz, Jump_000_34f6                          ; $7b59: $c2 $f6 $34

    rst $38                                       ; $7b5c: $ff
    ld [hl], $32                                  ; $7b5d: $36 $32
    jr nc, jr_050_7b98                            ; $7b5f: $30 $37

    ld sp, $3133                                  ; $7b61: $31 $33 $31
    inc sp                                        ; $7b64: $33
    nop                                           ; $7b65: $00
    and b                                         ; $7b66: $a0
    ei                                            ; $7b67: $fb
    rst $38                                       ; $7b68: $ff
    rst $28                                       ; $7b69: $ef
    nop                                           ; $7b6a: $00
    nop                                           ; $7b6b: $00
    nop                                           ; $7b6c: $00
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

jr_050_7b98:
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
