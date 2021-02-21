; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $040", ROMX[$4000], BANK[$40]

    db $32, $40

    ld h, [hl]                                    ; $4002: $66
    ld h, [hl]                                    ; $4003: $66
    or l                                          ; $4004: $b5
    ld h, [hl]                                    ; $4005: $66

    db $0e, $64

    or $66                                        ; $4008: $f6 $66
    xor a                                         ; $400a: $af
    ld l, a                                       ; $400b: $6f
    ccf                                           ; $400c: $3f
    ld [hl], b                                    ; $400d: $70
    xor h                                         ; $400e: $ac
    ld [hl], b                                    ; $400f: $70
    ld d, b                                       ; $4010: $50
    ld [hl], c                                    ; $4011: $71
    db $f4                                        ; $4012: $f4
    ld [hl], c                                    ; $4013: $71
    ld h, b                                       ; $4014: $60
    ld [hl], d                                    ; $4015: $72
    rst $08                                       ; $4016: $cf
    ld [hl], d                                    ; $4017: $72
    ld h, e                                       ; $4018: $63
    ld [hl], e                                    ; $4019: $73
    ret nc                                        ; $401a: $d0

    ld [hl], e                                    ; $401b: $73
    add hl, sp                                    ; $401c: $39
    ld [hl], h                                    ; $401d: $74
    and b                                         ; $401e: $a0
    ld [hl], h                                    ; $401f: $74
    dec b                                         ; $4020: $05
    ld [hl], l                                    ; $4021: $75
    sub [hl]                                      ; $4022: $96
    ld [hl], l                                    ; $4023: $75
    ld a, [hl+]                                   ; $4024: $2a
    halt                                          ; $4025: $76
    or b                                          ; $4026: $b0
    halt                                          ; $4027: $76
    dec d                                         ; $4028: $15
    ld [hl], a                                    ; $4029: $77
    adc a                                         ; $402a: $8f
    ld [hl], a                                    ; $402b: $77
    db $10                                        ; $402c: $10
    ld a, b                                       ; $402d: $78
    ld a, e                                       ; $402e: $7b
    ld a, b                                       ; $402f: $78
    xor $78                                       ; $4030: $ee $78

    ld b, a                                       ; $4032: $47
    ldh a, [$9e]                                  ; $4033: $f0 $9e
    push af                                       ; $4035: $f5
    xor a                                         ; $4036: $af
    ldh [$9e], a                                  ; $4037: $e0 $9e
    push bc                                       ; $4039: $c5
    ld c, $7f                                     ; $403a: $0e $7f
    call Call_000_25a1                            ; $403c: $cd $a1 $25
    call Call_000_2625                            ; $403f: $cd $25 $26
    pop bc                                        ; $4042: $c1
    ld a, b                                       ; $4043: $78
    or a                                          ; $4044: $b7
    jp nz, Jump_040_4069                          ; $4045: $c2 $69 $40

Jump_040_4048:
    call Call_000_23b6                            ; $4048: $cd $b6 $23
    rst $08                                       ; $404b: $cf

    db $00

    call Call_040_61cb                            ; $404d: $cd $cb $61
    jp nz, Jump_040_4069                          ; $4050: $c2 $69 $40

    rst $08                                       ; $4053: $cf

    db $29

    ld a, $00                                     ; $4055: $3e $00

jr_040_4057:
    push af                                       ; $4057: $f5
    call Call_040_5c72                            ; $4058: $cd $72 $5c
    jp nz, Jump_040_4066                          ; $405b: $c2 $66 $40

    pop af                                        ; $405e: $f1
    inc a                                         ; $405f: $3c
    cp $10                                        ; $4060: $fe $10
    jr c, jr_040_4057                             ; $4062: $38 $f3

    jr jr_040_4069                                ; $4064: $18 $03

Jump_040_4066:
    rst $08                                       ; $4066: $cf

    db $5c

    pop af                                        ; $4068: $f1

Jump_040_4069:
jr_040_4069:
    rst $08                                       ; $4069: $cf

    db $24

    ldh a, [rLCDC]                                ; $406b: $f0 $40
    or $40                                        ; $406d: $f6 $40
    ldh [rLCDC], a                                ; $406f: $e0 $40
    ld a, $07                                     ; $4071: $3e $07
    ldh [rWX], a                                  ; $4073: $e0 $4b
    ld a, $98                                     ; $4075: $3e $98
    ldh [rWY], a                                  ; $4077: $e0 $4a
    rst $18                                       ; $4079: $df

    db $0a, $01

Call_040_407c:
    call Call_000_0341                            ; $407c: $cd $41 $03
    call Call_000_23b6                            ; $407f: $cd $b6 $23
    ld a, $01                                     ; $4082: $3e $01
    ldh [$96], a                                  ; $4084: $e0 $96
    ldh [rSVBK], a                                ; $4086: $e0 $70
    ld hl, $41ce                                  ; $4088: $21 $ce $41
    ld de, $d000                                  ; $408b: $11 $00 $d0
    call Call_000_1f2f                            ; $408e: $cd $2f $1f
    ld hl, $d000                                  ; $4091: $21 $00 $d0
    ld de, $b000                                  ; $4094: $11 $00 $b0
    ld c, $80                                     ; $4097: $0e $80
    call Call_000_0468                            ; $4099: $cd $68 $04
    ld hl, $d800                                  ; $409c: $21 $00 $d8
    ld de, $a800                                  ; $409f: $11 $00 $a8
    ld c, $80                                     ; $40a2: $0e $80
    call Call_000_04db                            ; $40a4: $cd $db $04
    ld hl, $4b8d                                  ; $40a7: $21 $8d $4b
    ld de, $d000                                  ; $40aa: $11 $00 $d0
    call Call_000_1f2f                            ; $40ad: $cd $2f $1f
    ld hl, $4c30                                  ; $40b0: $21 $30 $4c
    ld de, $d0a0                                  ; $40b3: $11 $a0 $d0
    call Call_000_1f2f                            ; $40b6: $cd $2f $1f
    ld hl, $d000                                  ; $40b9: $21 $00 $d0
    ld de, $a140                                  ; $40bc: $11 $40 $a1
    ld c, $12                                     ; $40bf: $0e $12
    call Call_000_04db                            ; $40c1: $cd $db $04
    ld hl, $48eb                                  ; $40c4: $21 $eb $48
    ld de, $0107                                  ; $40c7: $11 $07 $01
    call Call_000_0595                            ; $40ca: $cd $95 $05
    ld hl, $4ca6                                  ; $40cd: $21 $a6 $4c
    ld de, $0902                                  ; $40d0: $11 $02 $09
    call Call_000_0595                            ; $40d3: $cd $95 $05
    ld hl, $4a3f                                  ; $40d6: $21 $3f $4a
    ld de, $d000                                  ; $40d9: $11 $00 $d0
    call Call_000_1f2f                            ; $40dc: $cd $2f $1f
    ld hl, $4aa2                                  ; $40df: $21 $a2 $4a
    ld de, $d400                                  ; $40e2: $11 $00 $d4
    call Call_000_1f2f                            ; $40e5: $cd $2f $1f
    ld hl, $d000                                  ; $40e8: $21 $00 $d0
    ld de, $b800                                  ; $40eb: $11 $00 $b8
    ld c, $40                                     ; $40ee: $0e $40
    call Call_000_0468                            ; $40f0: $cd $68 $04
    ld hl, $d400                                  ; $40f3: $21 $00 $d4
    ld de, $9800                                  ; $40f6: $11 $00 $98
    ld c, $40                                     ; $40f9: $0e $40
    call Call_000_04db                            ; $40fb: $cd $db $04
    ld hl, $4923                                  ; $40fe: $21 $23 $49
    ld de, $d000                                  ; $4101: $11 $00 $d0
    call Call_000_1f2f                            ; $4104: $cd $2f $1f
    ld hl, $4976                                  ; $4107: $21 $76 $49
    ld de, $d400                                  ; $410a: $11 $00 $d4
    call Call_000_1f2f                            ; $410d: $cd $2f $1f
    ld hl, $d100                                  ; $4110: $21 $00 $d1
    ld de, $bc00                                  ; $4113: $11 $00 $bc
    ld c, $24                                     ; $4116: $0e $24
    call Call_000_0468                            ; $4118: $cd $68 $04
    ld hl, $d500                                  ; $411b: $21 $00 $d5
    ld de, $9c00                                  ; $411e: $11 $00 $9c
    ld c, $24                                     ; $4121: $0e $24
    call Call_000_04db                            ; $4123: $cd $db $04
    ld a, $40                                     ; $4126: $3e $40
    ldh [rWY], a                                  ; $4128: $e0 $4a
    call Call_000_0371                            ; $412a: $cd $71 $03
    ld a, $01                                     ; $412d: $3e $01
    ld hl, $4d53                                  ; $412f: $21 $53 $4d
    call Call_000_23e8                            ; $4132: $cd $e8 $23
    ld c, $08                                     ; $4135: $0e $08
    call Call_000_25af                            ; $4137: $cd $af $25
    call Call_000_2625                            ; $413a: $cd $25 $26
    call Call_000_2ed5                            ; $413d: $cd $d5 $2e

    db $3c

    ld a, $01                                     ; $4141: $3e $01
    ld hl, $4d1d                                  ; $4143: $21 $1d $4d
    call Call_000_23e8                            ; $4146: $cd $e8 $23
    ld bc, $04b0                                  ; $4149: $01 $b0 $04

jr_040_414c:
    call Call_000_05dd                            ; $414c: $cd $dd $05
    call Call_040_4cb6                            ; $414f: $cd $b6 $4c
    call Call_000_2e3b                            ; $4152: $cd $3b $2e
    push bc                                       ; $4155: $c5
    call Call_000_0a61                            ; $4156: $cd $61 $0a
    pop bc                                        ; $4159: $c1
    ld a, [$cb40]                                 ; $415a: $fa $40 $cb
    cp $10                                        ; $415d: $fe $10
    jr nz, jr_040_416d                            ; $415f: $20 $0c

    ld a, $20                                     ; $4161: $3e $20
    ld [$cb00], a                                 ; $4163: $ea $00 $cb
    ld a, $01                                     ; $4166: $3e $01
    call Call_000_3081                            ; $4168: $cd $81 $30
    jr jr_040_4187                                ; $416b: $18 $1a

jr_040_416d:
    ldh a, [$90]                                  ; $416d: $f0 $90
    bit 3, a                                      ; $416f: $cb $5f
    jr nz, jr_040_4187                            ; $4171: $20 $14

    bit 0, a                                      ; $4173: $cb $47
    jr nz, jr_040_4187                            ; $4175: $20 $10

    dec bc                                        ; $4177: $0b
    ld a, b                                       ; $4178: $78
    or c                                          ; $4179: $b1
    jr nz, jr_040_414c                            ; $417a: $20 $d0

    ld c, $08                                     ; $417c: $0e $08
    call Call_000_25a1                            ; $417e: $cd $a1 $25
    call Call_000_2625                            ; $4181: $cd $25 $26
    jp Jump_040_4048                              ; $4184: $c3 $48 $40


jr_040_4187:
    rst $08                                       ; $4187: $cf

    db $5c

    ld c, $08                                     ; $4189: $0e $08
    call Call_000_25a1                            ; $418b: $cd $a1 $25
    call Call_000_2625                            ; $418e: $cd $25 $26
    ld hl, $4d53                                  ; $4191: $21 $53 $4d
    call Call_000_2449                            ; $4194: $cd $49 $24
    ld a, $90                                     ; $4197: $3e $90
    ldh [rWY], a                                  ; $4199: $e0 $4a
    xor a                                         ; $419b: $af
    ldh [$8b], a                                  ; $419c: $e0 $8b
    ldh [$8a], a                                  ; $419e: $e0 $8a
    call Call_000_0341                            ; $41a0: $cd $41 $03
    ld a, $02                                     ; $41a3: $3e $02
    ldh [$96], a                                  ; $41a5: $e0 $96
    ldh [rSVBK], a                                ; $41a7: $e0 $70
    ld hl, $d000                                  ; $41a9: $21 $00 $d0
    ld c, $24                                     ; $41ac: $0e $24
    call Call_000_03a7                            ; $41ae: $cd $a7 $03
    ld hl, $d000                                  ; $41b1: $21 $00 $d0
    ld de, $9c00                                  ; $41b4: $11 $00 $9c
    ld c, $24                                     ; $41b7: $0e $24
    call Call_000_04db                            ; $41b9: $cd $db $04
    ld hl, $d000                                  ; $41bc: $21 $00 $d0
    ld de, $bc00                                  ; $41bf: $11 $00 $bc
    ld c, $24                                     ; $41c2: $0e $24
    call Call_000_04db                            ; $41c4: $cd $db $04
    call Call_000_0371                            ; $41c7: $cd $71 $03
    pop af                                        ; $41ca: $f1
    ldh [$9e], a                                  ; $41cb: $e0 $9e
    ret                                           ; $41cd: $c9


    db $f3, $ff, $00, $fe, $ff, $e2, $e2, $0f, $f8, $08, $f8, $f7, $08, $fb, $11, $d6
    db $e6, $ff, $1c, $08, $00, $f7, $00, $f7, $f3, $c6, $e6, $e7, $3c, $18, $18, $f7
    db $08, $c3, $81, $b6, $e4, $01, $ff, $c1, $7f, $df, $39, $0e, $06, $e2, $c2, $a6
    db $e2, $c0, $ff, $ff, $30, $ff, $0c, $ff, $c3, $7f, $30, $ff, $fd, $7e, $96, $e6
    db $1f, $f0, $10, $f0, $d0, $f3, $fd, $33, $86, $e6, $fc, $07, $04, $07, $04, $e7
    db $f5, $c5, $76, $ec, $fe, $66, $e6, $03, $fe, $04, $fc, $97, $08, $f9, $10, $80
    db $e7, $00, $ff, $e0, $e0, $e8, $81, $9f, $ff, $41, $7f, $21, $3f, $60, $e8, $e0
    db $e1, $3f, $fd, $3f, $26, $e6, $f8, $0f, $08, $0f, $0f, $c8, $bd, $c0, $b0, $e8
    db $fc, $80, $00, $03, $08, $fe, $12, $ff, $f3, $12, $f2, $13, $f2, $23, $f6, $25
    db $ff, $e6, $25, $e4, $27, $e4, $47, $ec, $ef, $f7, $1c, $f7, $08, $d2, $c9, $42
    db $e7, $a4, $67, $ff, $e4, $3f, $d8, $3f, $f8, $1f, $e8, $1f, $7f, $f8, $0f, $f5
    db $0f, $30, $f2, $10, $d7, $c1, $ff, $fc, $04, $fc, $84, $fe, $82, $fe, $42, $ef
    db $7f, $81, $ff, $80, $fe, $e0, $84, $ff, $86, $fc, $fc, $e0, $f6, $e1, $8f, $fc
    db $67, $fc, $1f, $fc, $fd, $0f, $fe, $e4, $37, $fc, $e6, $27, $e0, $20, $ff, $f1
    db $3b, $ee, $3f, $e8, $2f, $f0, $3f, $fd, $e0, $fe, $e0, $01, $03, $00, $01, $f8
    db $fc, $f7, $04, $fe, $02, $bd, $c0, $01, $ff, $41, $ff, $ff, $f3, $21, $e6, $a2
    db $ec, $45, $08, $0b, $ff, $08, $0f, $18, $0f, $18, $17, $10, $16, $ff, $01, $7d
    db $00, $fe, $00, $ff, $78, $fb, $ff, $64, $45, $cf, $43, $ff, $bf, $a3, $b9, $ff
    db $9f, $0f, $c0, $80, $7f, $5f, $20, $af, $ff, $c0, $5f, $80, $bf, $00, $7f, $82
    db $ba, $ff, $20, $3f, $20, $3f, $e0, $ff, $20, $af, $ff, $10, $d7, $08, $ee, $09
    db $fe, $09, $ff, $ff, $41, $c0, $4f, $4f, $c8, $4f, $c8, $8f, $fd, $88, $fe, $e0
    db $98, $8f, $98, $17, $ff, $ff, $ff, $81, $3f, $01, $fd, $03, $fe, $e2, $ce, $bf
    db $be, $bc, $f8, $f8, $09, $f9, $06, $dc, $01, $f7, $4b, $cc, $4b, $c1, $e1, $d8
    db $97, $98, $97, $ff, $90, $9f, $90, $1f, $90, $de, $21, $ed, $ff, $33, $f2, $3f
    db $ec, $3f, $e1, $21, $e1, $ff, $21, $e0, $21, $e4, $24, $fd, $07, $7a, $ff, $87
    db $be, $c3, $fd, $c3, $7f, $c1, $7d, $3f, $c3, $f6, $cf, $58, $7c, $c1, $48, $e2
    db $44, $e1, $a7, $c1, $ff, $21, $74, $e0, $a7, $a1, $04, $fe, $e0, $06, $ff, $ff
    db $05, $ff, $f8, $fd, $80, $80, $4b, $e7, $ec, $2b, $f8, $d7, $c0, $fe, $e2, $8f
    db $f8, $5f, $f9, $f8, $0c, $e1, $fc, $e3, $f0, $3f, $e8, $3f, $e4, $df, $2f, $e1
    db $ff, $a1, $bf, $bc, $e5, $0e, $ff, $ff, $70, $f8, $11, $1e, $f1, $9f, $71, $6f
    db $ff, $20, $ee, $f0, $d7, $78, $3b, $4c, $05, $ff, $66, $42, $e0, $bf, $c0, $5f
    db $44, $77, $ef, $fc, $bf, $60, $4f, $ed, $a0, $f9, $1f, $ce, $ff, $47, $ff, $45
    db $fd, $47, $fa, $40, $ff, $fe, $fe, $e0, $df, $e0, $ae, $33, $11, $09, $ff, $ff
    db $09, $fd, $0b, $ff, $38, $ff, $44, $d5, $ff, $82, $be, $81, $fd, $31, $f7, $10
    db $17, $f7, $10, $1f, $fc, $7e, $e1, $f7, $08, $fb, $08, $ff, $ef, $f0, $f7, $09
    db $f9, $09, $f9, $e9, $ef, $c9, $f9, $b9, $81, $ff, $e0, $9f, $9f, $9f, $31, $90
    db $0e, $ef, $3f, $e4, $ee, $84, $3f, $1f, $98, $a2, $91, $a0, $3e, $dc, $83, $e6
    db $e4, $07, $06, $07, $35, $e0, $ce, $85, $ff, $71, $60, $07, $03, $9f, $0c, $ff
    db $f0, $6e, $be, $85, $bf, $bf, $80, $ff, $e0, $ff, $7f, $ae, $85, $bf, $83, $82
    db $1f, $1f, $1f, $10, $e0, $e7, $7f, $df, $37, $80, $00, $d8, $90, $e0, $e7, $e7
    db $c3, $bf, $08, $00, $1c, $08, $ff, $f7, $7e, $85, $c3, $e7, $81, $1f, $0e, $d8
    db $80, $58, $a6, $f3, $a1, $f8, $df, $10, $fc, $08, $ff, $07, $5e, $85, $f9, $fd
    db $ef, $0c, $05, $1f, $0f, $90, $e7, $ee, $ce, $3e, $7f, $bb, $05, $75, $e2, $cc
    db $f8, $33, $d1, $c0, $fe, $4a, $e0, $59, $df, $a9, $ad, $53, $5b, $a7, $0f, $34
    db $4f, $a8, $3f, $ba, $e2, $40, $e1, $70, $e0, $40, $e6, $02, $3c, $c0, $10, $70
    db $e9, $fe, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $28, $fe, $ff, $fe, $ff
    db $f8, $f8, $f0, $e8, $c1, $3f, $a0, $67, $ce, $e4, $de, $ff, $e9, $01, $03, $02
    db $07, $ef, $e3, $0c, $1e, $5f, $1e, $1f, $7f, $ff, $87, $19, $60, $04, $a9, $60
    db $29, $08, $ad, $c1, $c1, $e2, $30, $10, $a0, $40, $43, $c7, $89, $e0, $ff, $80
    db $80, $40, $c0, $42, $e7, $27, $ed, $ff, $2b, $ef, $2f, $ef, $6f, $ef, $47, $ef
    db $f8, $af, $e4, $db, $a1, $d7, $a0, $00, $80, $28, $7f, $48, $ff, $7f, $46, $7f
    db $41, $7f, $40, $7f, $20, $af, $7f, $10, $3f, $1c, $d0, $80, $01, $13, $c0, $fa
    db $fe, $0f, $c0, $07, $ff, $0f, $f9, $3f, $ff, $a7, $ff, $e7, $25, $e7, $27, $e7
    db $45, $e5, $87, $7f, $c5, $07, $05, $07, $05, $87, $c5, $6f, $ea, $fe, $fd, $40
    db $23, $7f, $4f, $7f, $5b, $ff, $9b, $ff, $ff, $bb, $ff, $5b, $ff, $73, $7f, $57
    db $bb, $ff, $de, $55, $a0, $ff, $ff, $fb, $fe, $e0, $fd, $fe, $fe, $e2, $47, $e5
    db $a7, $f5, $d7, $fd, $ef, $3e, $fe, $e0, $fd, $fd, $f7, $ff, $e3, $c3, $47, $fa
    db $e4, $18, $d1, $60, $cd, $60, $83, $e0, $40, $7f, $bb, $81, $45, $e9, $00, $e4
    db $ec, $fc, $e3, $f6, $e3, $b7, $78, $f0, $e5, $fb, $07, $0c, $57, $1f, $b0, $7f
    db $b1, $40, $01, $f6, $e1, $d0, $8c, $60, $5d, $04, $4e, $62, $78, $ff, $8f, $d5
    db $20, $17, $0f, $40, $f5, $ff, $eb, $80, $ff, $0f, $40, $90, $ff, $df, $ff, $d7
    db $bf, $f8, $ff, $ee, $e4, $e1, $f0, $42, $f0, $ff, $ff, $48, $ff, $7c, $ff, $cc
    db $ff, $3c, $ff, $7f, $80, $c0, $67, $f0, $19, $ff, $16, $5f, $c0, $f1, $02, $d8
    db $60, $19, $a0, $56, $c0, $e0, $f0, $57, $f8, $c9, $0b, $c0, $41, $b9, $20, $cb
    db $c2, $60, $b8, $c2, $ff, $60, $5c, $fe, $e0, $41, $41, $a0, $ff, $c4, $31, $ca
    db $30, $23, $c2, $37, $28, $ff, $70, $69, $23, $ff, $1f, $13, $c0, $d9, $28, $38
    db $f0, $c2, $de, $e3, $d6, $e1, $f8, $ff, $e0, $61, $22, $dc, $e1, $d9, $02, $b9
    db $22, $e4, $a8, $ff, $82, $f0, $eb, $b8, $4f, $e5, $58, $c7, $a3, $31, $79, $27
    db $fe, $e0, $05, $ff, $1d, $ff, $ff, $15, $ff, $14, $ff, $24, $ff, $26, $ec, $79
    db $22, $2a, $80, $80, $7f, $19, $40, $80, $80, $bf, $81, $c0, $60, $cd, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $f6, $f5, $ee, $b7, $ff, $ee, $3b, $fe, $e1, $ff
    db $3b, $dc, $83, $0f, $ff, $b8, $af, $f8, $ef, $f8, $ef, $b8, $ff, $81, $b8, $00
    db $a4, $be, $c4, $ba, $c3, $fc, $e3, $f0, $ff, $f0, $f3, $07, $ab, $fd, $fc, $5e
    db $c2, $3f, $b1, $40, $fe, $ad, $40, $a0, $bc, $f6, $e0, $a5, $41, $f7, $ff, $bd
    db $c3, $c6, $40, $c0, $f9, $7d, $eb, $e0, $4e, $c3, $7f, $ff, $fb, $07, $f7, $f7
    db $0f, $b8, $7f, $a0, $e7, $df, $ff, $b7, $cf, $01, $78, $79, $41, $ff, $ff, $ff
    db $ff, $2a, $88, $e6, $7e, $1c, $e6, $12, $e7, $fc, $f0, $ff, $8c, $a3, $f7, $ff
    db $5e, $e1, $ff, $ff, $ef, $ef, $bc, $8f, $fd, $c0, $20, $a8, $ff, $a9, $ff, $fe
    db $8b, $fe, $8b, $ff, $ff, $fd, $37, $fb, $f1, $bf, $b0, $20, $15, $ff, $95, $7f
    db $d1, $1b, $7f, $d1, $b0, $eb, $ec, $1f, $a0, $fd, $2e, $ff, $ff, $ff, $fc, $ff
    db $ff, $df, $c9, $ff, $ff, $55, $ef, $7f, $c0, $fb, $36, $f9, $ba, $83, $02, $ff
    db $fb, $fc, $2f, $ef, $f0, $9b, $fc, $87, $ed, $04, $d0, $ff, $f5, $fd, $0f, $a2
    db $41, $df, $e0, $ff, $ff, $05, $fe, $7f, $03, $ff, $be, $c1, $eb, $fc, $fa, $52
    db $22, $ff, $df, $e0, $3f, $ff, $60, $9f, $ab, $fe, $af, $ff, $00, $da, $f5, $dc
    db $e1, $bf, $d2, $60, $02, $bb, $fd, $d5, $e6, $00, $5b, $af, $af, $d0, $00, $bf
    db $ff, $c0, $7f, $ff, $80, $7f, $7a, $87, $5f, $f9, $ff, $c4, $80, $78, $c0, $ef
    db $1f, $f2, $ff, $2c, $fd, $df, $95, $01, $c1, $ff, $a6, $7f, $cb, $fc, $3e, $a0
    db $e5, $77, $8f, $fd, $03, $f6, $f4, $a4, $00, $ff, $30, $ff, $ff, $ff, $ff, $df
    db $bf, $f8, $f7, $eb, $f4, $80, $61, $d8, $e7, $7f, $af, $5f, $f0, $ff, $50, $ef
    db $3d, $e6, $c0, $fe, $c4, $e3, $ea, $f5, $1f, $ff, $14, $ef, $b8, $04, $c6, $41
    db $b2, $e2, $70, $f2, $40, $aa, $ff, $6f, $34, $ff, $ff, $ff, $ff, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $20, $de, $00, $ff
    db $ed, $80, $dd, $d0, $ef, $f4, $ef, $40, $8a, $f8, $f0, $8b, $70, $60, $06, $00
    db $54, $03, $76, $44, $64, $10, $5e, $05, $fa, $e5, $f8, $e7, $f6, $e9, $f8, $f7
    db $ff, $3c, $7e, $5a, $e7, $bd, $db, $ff, $a7, $ff, $ff, $a7, $bd, $db, $5a, $e7
    db $3c, $7e, $ff, $0f, $1f, $17, $19, $1f, $11, $1f, $19, $ff, $0f, $09, $1f, $19
    db $ff, $10, $1f, $1f, $ef, $bf, $ff, $de, $e1, $57, $00, $cc, $5f, $e0, $cf, $bf
    db $fc, $de, $e1, $47, $61, $54, $40, $99, $ff, $df, $99, $bf, $c1, $fe, $f9, $4a
    db $40, $ff, $fd, $ff, $ff, $7b, $87, $ff, $33, $ff, $33, $7f, $ff, $83, $fe, $f3
    db $7b, $86, $fc, $ff, $0f, $7f, $0f, $0e, $09, $0f, $08, $0f, $08, $fa, $e0, $ff
    db $09, $ff, $09, $0f, $0f, $fe, $fe, $fe, $ff, $92, $7f, $9f, $ff, $12, $ff, $12
    db $7f, $f7, $92, $ff, $92, $40, $41, $07, $07, $ff, $fc, $cf, $ef, $18, $ff, $6c
    db $fe, $e2, $5d, $e0, $bc, $fe, $ff, $db, $e7, $ff, $5a, $ff, $c2, $ff, $de, $df
    db $df, $e2, $ff, $ff, $01, $ff, $e0, $ff, $ff, $7f, $eb, $1c, $ff, $6b, $ff, $6b
    db $fb, $e0, $e0, $ff, $e0, $e0, $e0, $20, $fe, $3f, $ed, $33, $ef, $ff, $2d, $ff
    db $2d, $fa, $e0, $ff, $1c, $1d, $ff, $1d, $37, $3a, $2f, $3b, $6a, $73, $5a, $ff
    db $72, $d3, $ed, $b3, $e0, $e1, $f1, $fb, $ff, $6a, $9f, $f5, $6e, $ff, $7c, $ff
    db $64, $ff, $f7, $6c, $6f, $9c, $f3, $ff, $e7, $ff, $ff, $de, $39, $ef, $d8, $fe
    db $c9, $ff, $c9, $ff, $ff, $09, $ff, $c9, $36, $ff, $77, $ff, $7f, $bf, $c8, $7f
    db $89, $bf, $48, $7f, $ee, $e1, $ff, $48, $37, $7f, $ec, $fe, $fe, $12, $fe, $fd
    db $f2, $fc, $e1, $ff, $f3, $ff, $10, $ef, $ff, $ff, $1e, $3f, $2d, $73, $5e, $6d
    db $7f, $4c, $ff, $7f, $4c, $de, $ed, $ed, $33, $de, $ff, $ff, $7e, $ff, $ff, $81
    db $fe, $e7, $bc, $a4, $1e, $fe, $e1, $7f, $a4, $18, $3c, $be, $df, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $f2, $f1, $00, $00

    nop                                           ; $48ea: $00

    db $8e, $7b, $de, $7b, $9f, $01, $00, $00, $c8, $02, $1f, $03, $9f, $20, $00, $00
    db $c8, $02, $42, $7d, $5a, $6b, $00, $00, $c8, $02, $1f, $03, $4c, $7d, $00, $00
    db $c8, $02, $1f, $03, $42, $7d, $00, $00, $de, $7b, $8e, $7f, $80, $7e, $80, $7d
    db $80, $7e, $de, $7b, $9f, $00, $00, $00, $05, $0d, $ff, $fc, $0b, $ff, $e6, $eb
    db $f2, $f6, $f2, $e0, $ff, $e0, $ff, $28, $e0, $ff, $e0, $ff, $44, $e1, $0e, $ff
    db $e4, $4e, $ff, $e8, $0c, $e9, $c0, $e0, $e5, $f8, $e9, $a1, $e9, $e0, $fd, $a8
    db $e6, $b7, $e6, $4e, $4e, $16, $c0, $ec, $0f, $0f, $c0, $fb, $0f, $ff, $e0, $61
    db $e9, $c0, $ef, $08, $be, $ec, $e0, $ef, $40, $f8, $09, $ff, $ee, $20, $ea, $eb
    db $e6, $00, $f4, $00, $ca, $e7, $e0, $d3, $00, $00

    nop                                           ; $4975: $00

    db $05, $d0, $ff, $fc, $00, $ff, $e6, $eb, $f2, $f6, $f2, $e0, $ff, $e0, $ff, $48
    db $e0, $ff, $e0, $ff, $44, $e1, $d4, $ff, $f0, $0c, $e9, $d5, $ff, $e5, $ff, $82
    db $83, $84, $85, $86, $87, $88, $89, $d7, $8a, $d5, $d5, $a1, $e9, $d6, $ff, $e5
    db $92, $93, $ff, $94, $95, $96, $97, $98, $99, $9a, $d6, $f5, $d6, $81, $e9, $d7
    db $ff, $e5, $a2, $a3, $a4, $a5, $7f, $a6, $a7, $a8, $a9, $aa, $d7, $d7, $61, $e9
    db $df, $d2, $d2, $d2, $52, $53, $fb, $e0, $d2, $b2, $ff, $b3, $b4, $b5, $b6, $b7
    db $b8, $b9, $ba, $7b, $d2, $d2, $e0, $ec, $54, $55, $56, $57, $de, $e1, $fc, $fc
    db $e6, $21, $e9, $d8, $d8, $d8, $58, $59, $5a, $f1, $5b, $f9, $e0, $fd, $e7, $01
    db $e9, $d9, $d9, $d9, $5c, $c7, $5d, $5e, $5f, $f9, $e0, $fd, $e7, $e1, $c9, $db
    db $e0, $ff, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $ff, $e9, $ea, $eb, $ec, $ed
    db $ee, $ef, $f0, $fb, $f1, $db, $c1, $c9, $62, $63, $64, $65, $66, $cf, $67, $68
    db $69, $dc, $ff, $e8, $a1, $c9, $6a, $6b, $ff, $6c, $6d, $6e, $6f, $72, $73, $74
    db $dd, $00, $ff, $e7, $81, $c9, $00, $00

    nop                                           ; $4a3e: $00

    db $85, $0d, $ff, $f0, $0b, $ff, $e9, $e0, $fd, $f3, $ef, $e0, $ed, $0d, $7f, $0a
    db $0a, $0a, $0c, $0c, $0a, $0a, $e0, $f6, $00, $df, $e0, $e0, $f9, $a0, $fd, $80
    db $fa, $20, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $90, $ff, $ff, $ff, $ff, $ff
    db $ff, $37, $a0, $4e, $ff, $e4, $cc, $b5, $0e, $00, $ff, $e4, $e0, $ff, $e0, $f9
    db $a0, $ff, $60, $ff, $c0, $ff, $e0, $ff, $e6, $8f, $01, $09, $ff, $e3, $c0, $f6
    db $00, $00

    nop                                           ; $4aa1: $00

    db $e5, $d0, $ff, $f0, $00, $ff, $e9, $e0, $fd, $00, $01, $02, $ff, $03, $04, $05
    db $06, $07, $08, $09, $0a, $7f, $0b, $0c, $0d, $0e, $0f, $50, $51, $c0, $eb, $ff
    db $10, $11, $12, $13, $14, $15, $16, $17, $ff, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $1f, $fb, $60, $61, $a0, $eb, $20, $21, $22, $23, $24, $ff, $25, $26, $27, $28
    db $29, $2a, $2b, $2c, $df, $2d, $2e, $2f, $70, $71, $80, $eb, $30, $31, $ff, $32
    db $33, $34, $35, $36, $37, $38, $39, $ff, $3a, $3b, $3c, $3d, $3e, $3f, $80, $81
    db $fe, $60, $eb, $40, $41, $42, $43, $44, $45, $46, $ff, $47, $48, $49, $4a, $4b
    db $4c, $4d, $4e, $07, $4f, $90, $91, $40, $ea, $20, $fe, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $90, $ff, $ff, $ff, $ff, $ff, $ff, $37, $a0, $d4, $ff, $e4, $d6, $f5
    db $85, $7f, $86, $87, $88, $89, $8a, $d5, $d5, $b6, $f5, $ff, $95, $96, $97, $98
    db $99, $9a, $d6, $d6, $fe, $96, $f5, $a5, $a6, $a7, $a8, $a9, $aa, $d7, $fd, $d7
    db $76, $f5, $b5, $b6, $b7, $b8, $b9, $ba, $4b, $d2, $d2, $56, $f5, $d2, $ff, $e4
    db $36, $f5, $d8, $ff, $e4, $f2, $16, $f5, $d9, $ff, $e4, $f6, $d5, $eb, $ec, $ed
    db $ee, $0f, $ef, $f0, $f1, $db, $d6, $d5, $00, $00

    nop                                           ; $4b8c: $00

    db $ff, $00, $01, $01, $02, $03, $00, $0f, $10, $ff, $1f, $20, $3f, $00, $3f, $40
    db $7f, $80, $ff, $9f, $60, $8f, $70, $40, $bf, $20, $5f, $ff, $10, $0f, $08, $17
    db $06, $09, $01, $02, $ff, $c0, $20, $e0, $13, $f3, $04, $f7, $08, $fb, $ff, $00
    db $fe, $e1, $ef, $10, $c6, $39, $80, $fd, $7f, $f5, $e1, $0c, $f3, $12, $ed, $61
    db $92, $ef, $80, $40, $02, $05, $c4, $e0, $a0, $bf, $40, $fe, $e0, $e2, $24, $ff
    db $24, $fd, $02, $f8, $07, $fb, $70, $8f, $d3, $e2, $ff, $c3, $3c, $3c, $42, $ff
    db $00, $00, $81, $42, $c7, $28, $ef, $10, $7e, $c0, $e3, $ff, $00, $be, $41, $1c
    db $e3, $b5, $e1, $ff, $41, $be, $a2, $5d, $14, $aa, $08, $14, $ff, $00, $00, $00
    db $80, $80, $40, $c0, $00, $ff, $e0, $10, $f0, $08, $f8, $00, $fc, $02, $ff, $fa
    db $05, $71, $8e, $01, $fe, $02, $fd, $ff, $0c, $f2, $b0, $48, $40, $a0, $00, $00
    db $00, $00, $00, $fd, $00, $ff, $e3, $01, $01, $00, $1d, $22, $3f, $ff, $40, $7f
    db $80, $fd, $02, $98, $67, $40, $ff, $bf, $20, $5f, $1e, $21, $01, $02, $00, $fd
    db $01, $e2, $e1, $30, $48, $78, $84, $fc, $02, $ef, $fe, $01, $ff, $00, $fe, $e0
    db $02, $f7, $0a, $fb, $e3, $1c, $f7, $e1, $01, $fe, $02, $fd, $cc, $f7, $32, $30
    db $48, $c0, $e1, $02, $05, $0f, $d0, $fb, $df, $20, $e0, $e2, $40, $ff, $40, $7e
    db $81, $ff, $3c, $c3, $00, $ff, $81, $7e, $42, $bd, $fb, $1c, $22, $a2, $e4, $80
    db $80, $40, $c0, $00, $fb, $d8, $24, $ba, $e1, $7f, $80, $39, $c6, $06, $1f, $f9
    db $88, $76, $48, $b4, $c4, $e3, $00, $00

    nop                                           ; $4ca5: $00

    db $80, $7e, $1f, $68, $4c, $68, $00, $00, $80, $7e, $d0, $7f, $48, $7f, $a0, $61

Call_040_4cb6:
    ldh a, [$96]                                  ; $4cb6: $f0 $96
    push af                                       ; $4cb8: $f5
    ld a, $06                                     ; $4cb9: $3e $06
    ldh [$96], a                                  ; $4cbb: $e0 $96
    ldh [rSVBK], a                                ; $4cbd: $e0 $70
    ldh a, [$cf]                                  ; $4cbf: $f0 $cf
    or a                                          ; $4cc1: $b7
    jr nz, jr_040_4cef                            ; $4cc2: $20 $2b

    ld hl, $d254                                  ; $4cc4: $21 $54 $d2
    ld a, [hl]                                    ; $4cc7: $7e
    ld de, $4cf5                                  ; $4cc8: $11 $f5 $4c
    add e                                         ; $4ccb: $83
    ld e, a                                       ; $4ccc: $5f
    jr nc, jr_040_4cd0                            ; $4ccd: $30 $01

    inc d                                         ; $4ccf: $14

jr_040_4cd0:
    ld a, [de]                                    ; $4cd0: $1a
    cp $ff                                        ; $4cd1: $fe $ff
    jr z, jr_040_4ce9                             ; $4cd3: $28 $14

    ld d, a                                       ; $4cd5: $57
    ldh a, [$90]                                  ; $4cd6: $f0 $90
    cp d                                          ; $4cd8: $ba
    jr z, jr_040_4ce6                             ; $4cd9: $28 $0b

    or a                                          ; $4cdb: $b7
    jr z, jr_040_4cef                             ; $4cdc: $28 $11

    ld a, d                                       ; $4cde: $7a
    or d                                          ; $4cdf: $b2
    jr z, jr_040_4cef                             ; $4ce0: $28 $0d

    ld [hl], $00                                  ; $4ce2: $36 $00
    jr jr_040_4cef                                ; $4ce4: $18 $09

jr_040_4ce6:
    inc [hl]                                      ; $4ce6: $34
    jr jr_040_4cef                                ; $4ce7: $18 $06

jr_040_4ce9:
    rst $08                                       ; $4ce9: $cf
    ld h, e                                       ; $4cea: $63
    ld a, $01                                     ; $4ceb: $3e $01
    ldh [$cf], a                                  ; $4ced: $e0 $cf

jr_040_4cef:
    pop af                                        ; $4cef: $f1
    ldh [$96], a                                  ; $4cf0: $e0 $96
    ldh [rSVBK], a                                ; $4cf2: $e0 $70
    ret                                           ; $4cf4: $c9


    db $40

    nop                                           ; $4cf6: $00
    ld b, b                                       ; $4cf7: $40
    nop                                           ; $4cf8: $00
    add b                                         ; $4cf9: $80
    nop                                           ; $4cfa: $00
    ld b, b                                       ; $4cfb: $40
    nop                                           ; $4cfc: $00
    jr nz, jr_040_4cff                            ; $4cfd: $20 $00

jr_040_4cff:
    stop                                          ; $4cff: $10 $00
    jr nz, jr_040_4d03                            ; $4d01: $20 $00

jr_040_4d03:
    stop                                          ; $4d03: $10 $00
    ld [bc], a                                    ; $4d05: $02
    nop                                           ; $4d06: $00
    inc b                                         ; $4d07: $04
    nop                                           ; $4d08: $00
    ld b, b                                       ; $4d09: $40
    nop                                           ; $4d0a: $00
    ld b, b                                       ; $4d0b: $40
    nop                                           ; $4d0c: $00
    add b                                         ; $4d0d: $80
    nop                                           ; $4d0e: $00
    ld b, b                                       ; $4d0f: $40
    nop                                           ; $4d10: $00
    jr nz, jr_040_4d13                            ; $4d11: $20 $00

jr_040_4d13:
    stop                                          ; $4d13: $10 $00
    jr nz, jr_040_4d17                            ; $4d15: $20 $00

jr_040_4d17:
    stop                                          ; $4d17: $10 $00
    ld [bc], a                                    ; $4d19: $02
    nop                                           ; $4d1a: $00
    inc b                                         ; $4d1b: $04
    rst $38                                       ; $4d1c: $ff

    ld hl, $4d2a                                  ; $4d1d: $21 $2a $4d
    ld de, $1854                                  ; $4d20: $11 $54 $18
    ld bc, $0900                                  ; $4d23: $01 $00 $09
    call Call_000_26ea                            ; $4d26: $cd $ea $26
    ret                                           ; $4d29: $c9


    db $1a, $30, $00, $00, $1a, $38, $02, $00, $1a, $40, $04, $00, $1a, $48, $06, $00
    db $1a, $50, $08, $00, $1a, $58, $0a, $00, $1a, $60, $0c, $00, $1a, $68, $0e, $00
    db $1a, $70, $10, $00, $1a, $78, $12, $00, $80

    ld a, $06                                     ; $4d53: $3e $06
    ldh [$96], a                                  ; $4d55: $e0 $96
    ldh [rSVBK], a                                ; $4d57: $e0 $70
    ld hl, $4eb2                                  ; $4d59: $21 $b2 $4e
    ldh a, [$8c]                                  ; $4d5c: $f0 $8c
    rrca                                          ; $4d5e: $0f
    ld a, [$d24f]                                 ; $4d5f: $fa $4f $d2
    adc $00                                       ; $4d62: $ce $00
    cp $a0                                        ; $4d64: $fe $a0
    jr nz, jr_040_4d6a                            ; $4d66: $20 $02

    sub $78                                       ; $4d68: $d6 $78

jr_040_4d6a:
    ld [$d24f], a                                 ; $4d6a: $ea $4f $d2
    ld de, $0030                                  ; $4d6d: $11 $30 $00
    ld d, a                                       ; $4d70: $57
    ld bc, $0014                                  ; $4d71: $01 $14 $00
    call Call_000_26ea                            ; $4d74: $cd $ea $26
    ld a, [$d24f]                                 ; $4d77: $fa $4f $d2
    cp $64                                        ; $4d7a: $fe $64
    jr c, jr_040_4d80                             ; $4d7c: $38 $02

    sub $f0                                       ; $4d7e: $d6 $f0

jr_040_4d80:
    add $78                                       ; $4d80: $c6 $78
    ld hl, $4eb2                                  ; $4d82: $21 $b2 $4e
    ld de, $0030                                  ; $4d85: $11 $30 $00
    ld d, a                                       ; $4d88: $57
    ld bc, $0014                                  ; $4d89: $01 $14 $00
    call Call_000_26ea                            ; $4d8c: $cd $ea $26
    ld a, [$d24f]                                 ; $4d8f: $fa $4f $d2
    ld l, a                                       ; $4d92: $6f
    ldh a, [$8c]                                  ; $4d93: $f0 $8c
    and l                                         ; $4d95: $a5
    rrca                                          ; $4d96: $0f
    ld hl, $4ec7                                  ; $4d97: $21 $c7 $4e
    ld a, [$d250]                                 ; $4d9a: $fa $50 $d2
    adc $00                                       ; $4d9d: $ce $00
    cp $a0                                        ; $4d9f: $fe $a0
    jr nz, jr_040_4da5                            ; $4da1: $20 $02

    sub $60                                       ; $4da3: $d6 $60

jr_040_4da5:
    ld [$d250], a                                 ; $4da5: $ea $50 $d2
    ld de, $0030                                  ; $4da8: $11 $30 $00
    ld d, a                                       ; $4dab: $57
    ld bc, $0014                                  ; $4dac: $01 $14 $00
    call Call_000_26ea                            ; $4daf: $cd $ea $26
    ld a, [$d250]                                 ; $4db2: $fa $50 $d2
    cp $64                                        ; $4db5: $fe $64
    jr c, jr_040_4dbb                             ; $4db7: $38 $02

    sub $c0                                       ; $4db9: $d6 $c0

jr_040_4dbb:
    add $60                                       ; $4dbb: $c6 $60
    ld hl, $4ec7                                  ; $4dbd: $21 $c7 $4e
    ld de, $0030                                  ; $4dc0: $11 $30 $00
    ld d, a                                       ; $4dc3: $57
    ld bc, $0014                                  ; $4dc4: $01 $14 $00
    call Call_000_26ea                            ; $4dc7: $cd $ea $26
    ld a, $01                                     ; $4dca: $3e $01
    ldh [$96], a                                  ; $4dcc: $e0 $96
    ldh [rSVBK], a                                ; $4dce: $e0 $70
    ld hl, $4ca6                                  ; $4dd0: $21 $a6 $4c
    ld de, $d200                                  ; $4dd3: $11 $00 $d2
    ld bc, $0010                                  ; $4dd6: $01 $10 $00
    call Call_000_03d3                            ; $4dd9: $cd $d3 $03
    ldh a, [$8c]                                  ; $4ddc: $f0 $8c
    and $0f                                       ; $4dde: $e6 $0f
    add a                                         ; $4de0: $87
    ld hl, $5755                                  ; $4de1: $21 $55 $57
    add l                                         ; $4de4: $85
    ld l, a                                       ; $4de5: $6f
    jr nc, jr_040_4de9                            ; $4de6: $30 $01

    inc h                                         ; $4de8: $24

jr_040_4de9:
    ld de, $d202                                  ; $4de9: $11 $02 $d2
    ld a, [hl+]                                   ; $4dec: $2a
    ld [de], a                                    ; $4ded: $12
    inc de                                        ; $4dee: $13
    ld a, [hl+]                                   ; $4def: $2a
    ld [de], a                                    ; $4df0: $12
    ld hl, $d200                                  ; $4df1: $21 $00 $d2
    ld de, $0902                                  ; $4df4: $11 $02 $09
    call Call_000_0595                            ; $4df7: $cd $95 $05
    ld hl, $4ed8                                  ; $4dfa: $21 $d8 $4e
    ldh a, [$8c]                                  ; $4dfd: $f0 $8c
    rrca                                          ; $4dff: $0f
    and $1e                                       ; $4e00: $e6 $1e
    add l                                         ; $4e02: $85
    ld l, a                                       ; $4e03: $6f
    jr nc, jr_040_4e07                            ; $4e04: $30 $01

    inc h                                         ; $4e06: $24

jr_040_4e07:
    ld a, [hl+]                                   ; $4e07: $2a
    ld h, [hl]                                    ; $4e08: $66
    ld l, a                                       ; $4e09: $6f
    ld de, $d000                                  ; $4e0a: $11 $00 $d0
    call Call_000_1f2f                            ; $4e0d: $cd $2f $1f
    ld hl, $4ef8                                  ; $4e10: $21 $f8 $4e
    ldh a, [$8c]                                  ; $4e13: $f0 $8c
    rrca                                          ; $4e15: $0f
    and $1e                                       ; $4e16: $e6 $1e
    add l                                         ; $4e18: $85
    ld l, a                                       ; $4e19: $6f
    jr nc, jr_040_4e1d                            ; $4e1a: $30 $01

    inc h                                         ; $4e1c: $24

jr_040_4e1d:
    ld a, [hl+]                                   ; $4e1d: $2a
    ld h, [hl]                                    ; $4e1e: $66
    ld l, a                                       ; $4e1f: $6f
    ld de, $d0a0                                  ; $4e20: $11 $a0 $d0
    call Call_000_1f2f                            ; $4e23: $cd $2f $1f
    ld hl, $d000                                  ; $4e26: $21 $00 $d0
    ld de, $a000                                  ; $4e29: $11 $00 $a0
    ld c, $14                                     ; $4e2c: $0e $14
    call Call_000_0468                            ; $4e2e: $cd $68 $04
    ldh a, [$90]                                  ; $4e31: $f0 $90
    and $f0                                       ; $4e33: $e6 $f0
    jr nz, jr_040_4e4d                            ; $4e35: $20 $16

    ldh a, [$8c]                                  ; $4e37: $f0 $8c
    rrca                                          ; $4e39: $0f
    and $3f                                       ; $4e3a: $e6 $3f
    ld hl, $4e72                                  ; $4e3c: $21 $72 $4e
    add l                                         ; $4e3f: $85
    ld l, a                                       ; $4e40: $6f
    jr nc, jr_040_4e44                            ; $4e41: $30 $01

    inc h                                         ; $4e43: $24

jr_040_4e44:
    ld a, [hl]                                    ; $4e44: $7e
    add $04                                       ; $4e45: $c6 $04
    ldh [$8a], a                                  ; $4e47: $e0 $8a
    xor a                                         ; $4e49: $af
    ldh [$8b], a                                  ; $4e4a: $e0 $8b
    ret                                           ; $4e4c: $c9


jr_040_4e4d:
    ldh a, [$8c]                                  ; $4e4d: $f0 $8c
    rrca                                          ; $4e4f: $0f
    and $3f                                       ; $4e50: $e6 $3f
    ld hl, $4e72                                  ; $4e52: $21 $72 $4e
    add l                                         ; $4e55: $85
    ld l, a                                       ; $4e56: $6f
    jr nc, jr_040_4e5a                            ; $4e57: $30 $01

    inc h                                         ; $4e59: $24

jr_040_4e5a:
    ld a, [hl]                                    ; $4e5a: $7e
    add $04                                       ; $4e5b: $c6 $04
    ldh [$8a], a                                  ; $4e5d: $e0 $8a
    ldh a, [$8c]                                  ; $4e5f: $f0 $8c
    rrca                                          ; $4e61: $0f
    add $10                                       ; $4e62: $c6 $10
    and $3f                                       ; $4e64: $e6 $3f
    ld hl, $4e72                                  ; $4e66: $21 $72 $4e
    add l                                         ; $4e69: $85
    ld l, a                                       ; $4e6a: $6f
    jr nc, jr_040_4e6e                            ; $4e6b: $30 $01

    inc h                                         ; $4e6d: $24

jr_040_4e6e:
    ld a, [hl]                                    ; $4e6e: $7e
    ldh [$8b], a                                  ; $4e6f: $e0 $8b
    ret                                           ; $4e71: $c9


    db $00, $00

    nop                                           ; $4e74: $00
    ld bc, $0101                                  ; $4e75: $01 $01 $01
    ld [bc], a                                    ; $4e78: $02
    ld [bc], a                                    ; $4e79: $02
    ld [bc], a                                    ; $4e7a: $02
    inc bc                                        ; $4e7b: $03
    inc bc                                        ; $4e7c: $03
    inc bc                                        ; $4e7d: $03
    inc bc                                        ; $4e7e: $03

    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $02, $02, $02, $01, $01
    db $01, $00, $00, $00, $00, $00, $ff, $ff, $ff, $fe, $fe, $fe, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fe, $fe, $fe, $ff, $ff
    db $ff, $00, $00, $14, $e0, $00, $0a, $14, $e8, $02, $0a, $14, $f0, $04, $0a, $14
    db $f8, $06, $0a, $14, $00, $08, $0a, $80, $24, $e8, $0a, $0a, $24, $f0, $0c, $0a
    db $24, $f8, $0e, $0a, $24, $00, $10, $0a, $80, $18, $4f, $9b, $4f, $1e, $50, $a0
    db $50, $24, $51, $ad, $51, $33, $52, $b7, $52, $18, $4f, $18, $4f, $18, $4f, $18
    db $4f, $18, $4f, $18, $4f, $18, $4f, $18, $4f, $3c, $53, $3c, $53, $3c, $53, $3c
    db $53, $3c, $53, $3c, $53, $3c, $53, $3c, $53, $3c, $53, $bc, $53, $3c, $54, $bb
    db $54, $42, $55, $cb, $55, $4e, $56, $d3, $56, $fd, $00, $ff, $e0, $3f, $3f, $3e
    db $21, $3f, $20, $eb, $3f, $22, $fe, $e0, $20, $f6, $e0, $23, $3f, $23, $f1, $3e
    db $ff, $e0, $e6, $e1, $fc, $e3, $7e, $ff, $fd, $c3, $bf, $7e, $c1, $ff, $44, $ff
    db $44, $fa, $e0, $c1, $ff, $ff, $c4, $7f, $c4, $7f, $7f, $7b, $7f, $de, $e0, $e7
    db $ff, $ff, $ff, $81, $fe, $e0, $8f, $ff, $c5, $83, $fe, $e0, $8f, $f4, $e2, $ed
    db $e0, $c0, $e7, $78, $fd, $ff, $b5, $cf, $7a, $87, $ff, $32, $6e, $9f, $ff, $db
    db $e7, $ff, $32, $7a, $87, $b7, $cf, $ef, $fd, $ff, $78, $fd, $a0, $e7, $f0, $f8
    db $68, $ff, $9c, $f4, $0c, $fc, $64, $dc, $3c, $b4, $ff, $cc, $fc, $64, $f4, $0c
    db $6c, $9c, $f8, $07, $fc, $f0, $f8, $80, $e3, $00, $00

    nop                                           ; $4f9a: $00

    db $ff, $00, $00, $3f, $3f, $3e, $21, $3f, $20, $eb, $3f, $22, $fe, $e0, $20, $f6
    db $e0, $23, $3f, $23, $f5, $3e, $ff, $e0, $00, $ff, $e7, $80, $fe, $ff, $7d, $ff
    db $c3, $fe, $41, $ff, $44, $7f, $c4, $fe, $ff, $c1, $ff, $c1, $7f, $c4, $7f, $44
    db $7f, $f7, $7f, $7b, $7f, $de, $e7, $ff, $ff, $ff, $81, $2e, $fe, $e0, $8f, $ff
    db $83, $fe, $e0, $8f, $f4, $e2, $ed, $e0, $fe, $be, $e7, $78, $fd, $b5, $cf, $7a
    db $87, $ff, $ff, $32, $6e, $9f, $db, $e7, $ff, $32, $7a, $7f, $87, $b7, $cf, $fd
    db $ff, $78, $fd, $9e, $e7, $ff, $f0, $f8, $68, $9c, $f4, $0c, $fc, $64, $ff, $dc
    db $3c, $b4, $cc, $fc, $64, $f4, $0c, $3f, $6c, $9c, $f8, $fc, $f0, $f8, $7e, $e3
    db $00, $00

    nop                                           ; $501d: $00

    db $ff, $3f, $3f, $3e, $21, $3f, $20, $3f, $22, $7a, $fe, $e0, $20, $f6, $e0, $23
    db $3f, $23, $3e, $ff, $e0, $fd, $00, $ff, $e7, $80, $fe, $ff, $7d, $c3, $fe, $ff
    db $41, $ff, $44, $7f, $c4, $fe, $c1, $ff, $ff, $c1, $7f, $c4, $7f, $44, $7f, $7f
    db $7b, $7d, $7f, $de, $e8, $00, $ff, $ff, $ff, $81, $fe, $e0, $17, $8f, $ff, $83
    db $fe, $e0, $8f, $f4, $e2, $ed, $e0, $bc, $e7, $ff, $78, $fd, $b5, $cf, $7a, $87
    db $ff, $32, $ff, $6e, $9f, $db, $e7, $ff, $32, $7a, $87, $bf, $b7, $cf, $fd, $ff
    db $78, $fd, $9c, $e7, $f0, $ff, $f8, $68, $9c, $f4, $0c, $fc, $64, $dc, $ff, $3c
    db $b4, $cc, $fc, $64, $f4, $0c, $6c, $1f, $9c, $f8, $fc, $f0, $f8, $9e, $e3, $00
    db $00

    nop                                           ; $509f: $00

    db $ff, $00, $00, $3f, $3f, $3e, $21, $3f, $20, $eb, $3f, $22, $fe, $e0, $20, $f6
    db $e0, $23, $3f, $23, $f5, $3e, $ff, $e0, $00, $ff, $e4, $7e, $7f, $7d, $c3, $ff
    db $fe, $c1, $7f, $c4, $ff, $44, $fe, $41, $ff, $7f, $c1, $ff, $c4, $ff, $c4, $7f
    db $ff, $f3, $7b, $7f, $e2, $e5, $da, $e1, $ff, $ff, $ff, $81, $2e, $fe, $e0, $8f
    db $ff, $83, $fe, $e0, $8f, $f4, $e2, $ed, $e0, $fe, $de, $e9, $78, $fd, $b5, $cf
    db $7a, $87, $ff, $ff, $32, $6e, $9f, $db, $e7, $ff, $32, $7a, $7f, $87, $b7, $cf
    db $fd, $ff, $78, $fd, $bc, $e7, $ff, $f0, $f8, $68, $9c, $f4, $0c, $fc, $64, $ff
    db $dc, $3c, $b4, $cc, $fc, $64, $f4, $0c, $3f, $6c, $9c, $f8, $fc, $f0, $f8, $9c
    db $e3, $00, $00

    nop                                           ; $5123: $00

    db $fd, $00, $ff, $e0, $3f, $3f, $3e, $21, $3f, $20, $eb, $3f, $22, $fe, $e0, $20
    db $f6, $e0, $23, $3f, $23, $f1, $3e, $ff, $e0, $e6, $e1, $e2, $e1, $7e, $7f, $7d
    db $c3, $ff, $fe, $c1, $7f, $c4, $ff, $44, $fe, $41, $ff, $7f, $c1, $ff, $c4, $ff
    db $c4, $7f, $ff, $7b, $7b, $7f, $e2, $e5, $ff, $ff, $ff, $81, $fe, $e0, $17, $8f
    db $ff, $83, $fe, $e0, $8f, $f4, $e2, $ed, $e0, $c4, $e5, $fe, $a2, $e1, $78, $fc
    db $b4, $cf, $7b, $87, $fe, $ff, $33, $6f, $9e, $da, $e7, $ff, $33, $7b, $ff, $86
    db $b6, $cf, $fd, $ff, $79, $fd, $00, $fd, $01, $dc, $e7, $f0, $f8, $68, $9c, $f4
    db $0c, $ff, $fc, $64, $dc, $3c, $b4, $cc, $fc, $64, $ff, $f4, $0c, $6c, $9c, $f8
    db $fc, $f0, $f8, $00, $bc, $e3, $00, $00

    nop                                           ; $51ac: $00

    db $fd, $00, $ff, $e0, $3f, $3f, $3e, $21, $3f, $20, $eb, $3f, $22, $fe, $e0, $20
    db $f6, $e0, $23, $3f, $23, $f1, $3e, $ff, $e0, $e6, $e1, $fc, $e3, $7e, $ff, $fd
    db $c3, $bf, $7e, $c1, $ff, $44, $ff, $44, $fa, $e0, $c1, $ff, $ff, $c4, $7f, $c4
    db $7f, $7f, $7b, $7f, $de, $e0, $e5, $ff, $ff, $ff, $81, $fe, $e0, $8f, $ff, $75
    db $83, $fe, $e0, $8f, $f4, $e2, $ff, $7f, $ff, $c2, $e5, $ff, $78, $fc, $b4, $cf
    db $7b, $87, $fe, $33, $ff, $6f, $9e, $da, $e7, $ff, $33, $7b, $86, $ff, $b6, $cf
    db $fd, $ff, $79, $fd, $00, $01, $fe, $a2, $e7, $f0, $f8, $68, $9c, $f4, $0c, $fc
    db $ff, $64, $dc, $3c, $b4, $cc, $fc, $64, $f4, $7f, $0c, $6c, $9c, $f8, $fc, $f0
    db $f8, $82, $e5, $00, $00, $00, $fd, $00, $ff, $e0, $3f, $3f, $3e, $21, $3f, $20
    db $eb, $3f, $22, $fe, $e0, $20, $f6, $e0, $23, $3f, $23, $f1, $3e, $ff, $e0, $e6
    db $e1, $fc, $e3, $7e, $ff, $fd, $c3, $bf, $7e, $c1, $ff, $44, $ff, $44, $fa, $e0
    db $c1, $ff, $ff, $c4, $7f, $c4, $7f, $7f, $7b, $7f, $de, $e0, $e7, $ff, $ff, $ff
    db $81, $fe, $e0, $8f, $ff, $c5, $83, $fe, $e0, $8f, $f4, $e2, $ed, $e0, $c0, $e4
    db $01, $79, $ff, $ff, $b6, $cf, $7b, $86, $fe, $33, $6f, $ff, $9f, $db, $e6, $fe
    db $33, $7b, $87, $b7, $df, $cf, $fc, $ff, $78, $fc, $a2, $e5, $f0, $f8, $ff, $68
    db $9c, $f4, $0c, $fc, $64, $dc, $3c, $ff, $b4, $cc, $fc, $64, $f4, $0c, $6c, $9c
    db $0f, $f8, $fc, $f0, $f8, $84, $e7, $00, $00

    nop                                           ; $52b6: $00

    db $fd, $00, $ff, $e0, $3f, $3f, $3e, $21, $3f, $20, $eb, $3f, $22, $fe, $e0, $20
    db $f6, $e0, $23, $3f, $23, $f1, $3e, $ff, $e0, $e6, $e1, $fc, $e3, $7e, $ff, $fd
    db $c3, $bf, $7e, $c1, $ff, $44, $ff, $44, $fa, $e0, $c1, $ff, $ff, $c4, $7f, $c4
    db $7f, $7f, $7b, $7f, $de, $e0, $e7, $ff, $ff, $ff, $81, $fe, $e0, $8f, $ff, $75
    db $83, $fe, $e0, $8f, $f4, $e2, $ff, $7f, $ff, $c0, $e6, $ff, $01, $79, $ff, $b6
    db $cf, $7b, $86, $fe, $ff, $33, $6f, $9f, $db, $e6, $fe, $33, $7b, $7f, $87, $b7
    db $cf, $fc, $ff, $78, $fc, $a0, $e5, $ff, $f0, $f8, $68, $9c, $f4, $0c, $fc, $64
    db $ff, $dc, $3c, $b4, $cc, $fc, $64, $f4, $0c, $3f, $6c, $9c, $f8, $fc, $f0, $f8
    db $82, $e5, $00, $00

    nop                                           ; $533b: $00

    db $fd, $00, $ff, $e0, $0f, $1f, $16, $39, $2f, $30, $ff, $3f, $26, $2d, $33, $3b
    db $3c, $3f, $26, $ff, $2f, $30, $36, $39, $1f, $3f, $0f, $1f, $fc, $e6, $e1, $fc
    db $e3, $7f, $ff, $ff, $c0, $7f, $c0, $ff, $ff, $73, $ff, $f3, $5e, $d2, $de, $52
    db $be, $fc, $e0, $d2, $9e, $de, $1e, $9e, $e0, $e7, $bd, $7f, $ff, $db, $e7, $bd
    db $c3, $ff, $89, $fe, $e0, $b9, $81, $fe, $e0, $f8, $e1, $ff, $f7, $ff, $c0, $e7
    db $fb, $ff, $ff, $f7, $0e, $fb, $06, $ff, $13, $ff, $7f, $13, $fa, $06, $fe, $06
    db $fe, $12, $fe, $e0, $f7, $fe, $ee, $fe, $a0, $e7, $fc, $fc, $fc, $04, $3e, $fe
    db $e0, $9c, $fc, $9c, $f0, $90, $fe, $e4, $ff, $e0, $00, $80, $e3, $00, $00

    nop                                           ; $53bb: $00

    db $ff, $00, $00, $0f, $1f, $16, $39, $2f, $30, $ff, $3f, $26, $2d, $33, $3b, $3c
    db $3f, $26, $ff, $2f, $30, $36, $39, $1f, $3f, $0f, $1f, $fd, $00, $ff, $e7, $80
    db $ff, $ff, $7f, $c0, $ff, $ff, $40, $ff, $f3, $7f, $f3, $de, $52, $5e, $ff, $d2
    db $de, $d2, $9e, $d2, $1e, $9e, $1e, $fd, $1e, $de, $e7, $bd, $ff, $db, $e7, $bd
    db $c3, $cb, $ff, $89, $fe, $e0, $81, $fe, $e0, $f8, $e1, $ff, $f7, $fd, $ff, $be
    db $e7, $fb, $ff, $f7, $0e, $fb, $06, $ff, $ff, $13, $ff, $13, $fa, $06, $fe, $06
    db $bb, $fe, $12, $fe, $e0, $fe, $ee, $fe, $9e, $e7, $fc, $f7, $fc, $fc, $04, $fe
    db $e0, $9c, $fc, $9c, $f0, $01, $90, $fe, $e4, $ff, $e0, $7e, $e3, $00, $00

    nop                                           ; $543b: $00

    db $ff, $0f, $1f, $16, $39, $2f, $30, $3f, $26, $ff, $2d, $33, $3b, $3c, $3f, $26
    db $2f, $30, $7f, $36, $39, $1f, $3f, $0f, $1f, $00, $ff, $e7, $ff, $80, $ff, $ff
    db $7f, $c0, $ff, $40, $ff, $ff, $f3, $7f, $f3, $de, $52, $5e, $d2, $de, $7f, $d2
    db $9e, $d2, $1e, $9e, $1e, $1e, $df, $e8, $ff, $80, $bd, $ff, $db, $e7, $bd, $c3
    db $ff, $e5, $89, $fe, $e0, $81, $fe, $e0, $f8, $e1, $ff, $f7, $ff, $fe, $bc, $e7
    db $fb, $ff, $f7, $0e, $fb, $06, $ff, $ff, $13, $ff, $13, $fa, $06, $fe, $06, $fe
    db $dd, $12, $fe, $e0, $fe, $ee, $fe, $9c, $e7, $fc, $fc, $fb, $fc, $04, $fe, $e0
    db $9c, $fc, $9c, $f0, $90, $00, $fe, $e4, $ff, $e0, $7c, $e3, $00, $00

    nop                                           ; $54ba: $00

    db $ff, $00, $00, $0f, $1f, $16, $39, $2f, $30, $ff, $3f, $26, $2d, $33, $3b, $3c
    db $3f, $26, $ff, $2f, $30, $36, $39, $1f, $3f, $0f, $1f, $fd, $00, $ff, $e4, $7f
    db $7f, $7f, $c0, $ff, $c0, $ff, $7f, $f3, $ff, $73, $de, $d2, $5e, $d2, $fb, $de
    db $52, $fc, $e0, $de, $9e, $de, $00, $80, $fe, $e0, $e5, $80, $80, $bc, $fe, $db
    db $e7, $bd, $97, $c3, $ff, $89, $fe, $e0, $81, $fe, $e0, $f8, $e1, $ff, $ef, $f7
    db $ff, $01, $01, $be, $e5, $00, $00, $fb, $ff, $ff, $f7, $0e, $fb, $06, $ff, $13
    db $ff, $7f, $13, $fa, $06, $fe, $06, $fe, $12, $fe, $e0, $f7, $fe, $ee, $fe, $e0
    db $e7, $fc, $fc, $fc, $04, $3e, $fe, $e0, $9c, $fc, $9c, $f0, $90, $fe, $e4, $ff
    db $e0, $00, $c0, $e3, $00, $00

    nop                                           ; $5541: $00

    db $fd, $00, $ff, $e0, $0f, $1f, $16, $39, $2f, $30, $ff, $3f, $26, $2d, $33, $3b
    db $3c, $3f, $26, $ff, $2f, $30, $36, $39, $1f, $3f, $0f, $1f, $fc, $e6, $e1, $e2
    db $e1, $7f, $7f, $7f, $c0, $ff, $c0, $ff, $7f, $f3, $ff, $73, $de, $d2, $5e, $d2
    db $fb, $de, $52, $fc, $e0, $de, $9e, $de, $00, $80, $fe, $e0, $e3, $3c, $7e, $db
    db $e7, $bd, $c3, $ff, $e5, $89, $fe, $e0, $81, $fe, $e0, $f8, $e1, $ff, $f7, $ff
    db $fb, $01, $01, $c2, $e5, $00, $00, $f8, $fc, $f7, $ff, $0f, $fb, $06, $ff, $12
    db $ff, $13, $fb, $df, $07, $fe, $06, $fe, $12, $fe, $e0, $fe, $ee, $fd, $fe, $e0
    db $e7, $00, $00, $fc, $fc, $fc, $04, $3e, $fe, $e0, $9c, $fc, $9c, $f0, $90, $fe
    db $e4, $ff, $e0, $00, $de, $e3, $00, $00

    nop                                           ; $55ca: $00

    db $fd, $00, $ff, $e0, $0f, $1f, $16, $39, $2f, $30, $ff, $3f, $26, $2d, $33, $3b
    db $3c, $3f, $26, $ff, $2f, $30, $36, $39, $1f, $3f, $0f, $1f, $fc, $e6, $e1, $fc
    db $e3, $7f, $ff, $ff, $c0, $7f, $c0, $ff, $ff, $73, $ff, $f3, $5e, $d2, $de, $52
    db $be, $fc, $e0, $d2, $9e, $de, $1e, $9e, $e0, $e3, $01, $ff, $01, $3d, $7f, $db
    db $e7, $bd, $c3, $ff, $e5, $89, $fe, $e0, $81, $fe, $e0, $f8, $e1, $ff, $f6, $fe
    db $fe, $c2, $e5, $f8, $fc, $f7, $0f, $fb, $06, $ff, $ff, $12, $ff, $13, $fb, $07
    db $fe, $06, $fe, $cd, $12, $fe, $e0, $fe, $ee, $e2, $e6, $82, $e1, $fc, $fc, $fb
    db $fc, $04, $fe, $e0, $9c, $fc, $9c, $f0, $90, $00, $fe, $e4, $ff, $e0, $de, $e5
    db $00, $00

    nop                                           ; $564d: $00

    db $fd, $00, $ff, $e0, $0f, $1f, $16, $39, $2f, $30, $ff, $3f, $26, $2d, $33, $3b
    db $3c, $3f, $26, $ff, $2f, $30, $36, $39, $1f, $3f, $0f, $1f, $fc, $e6, $e1, $fc
    db $e3, $7f, $ff, $ff, $c0, $7f, $c0, $ff, $ff, $73, $ff, $f3, $5e, $d2, $de, $52
    db $be, $fc, $e0, $d2, $9e, $de, $1e, $9e, $e0, $e5, $01, $ff, $01, $bd, $ff, $db
    db $e7, $bd, $c3, $ff, $e5, $89, $fe, $e0, $81, $fe, $e0, $f8, $e1, $ff, $f6, $fe
    db $fe, $c0, $e3, $03, $03, $fb, $fe, $f7, $0e, $fb, $ff, $07, $ff, $13, $fe, $12
    db $fa, $06, $fe, $b7, $06, $fe, $12, $fe, $e0, $fe, $ee, $e2, $e4, $00, $df, $00
    db $fc, $fc, $fc, $04, $fe, $e0, $9c, $fc, $07, $9c, $f0, $90, $fe, $e4, $ff, $e0
    db $84, $e7, $00, $00

    nop                                           ; $56d2: $00

    db $fd, $00, $ff, $e0, $0f, $1f, $16, $39, $2f, $30, $ff, $3f, $26, $2d, $33, $3b
    db $3c, $3f, $26, $ff, $2f, $30, $36, $39, $1f, $3f, $0f, $1f, $fc, $e6, $e1, $fc
    db $e3, $7f, $ff, $ff, $c0, $7f, $c0, $ff, $ff, $73, $ff, $f3, $5e, $d2, $de, $52
    db $be, $fc, $e0, $d2, $9e, $de, $1e, $9e, $e0, $e7, $bd, $7f, $ff, $db, $e7, $bd
    db $c3, $ff, $89, $fe, $e0, $b9, $81, $fe, $e0, $f8, $e1, $ff, $f7, $ff, $c0, $e5
    db $03, $ff, $03, $fb, $fe, $f7, $0e, $fb, $07, $ff, $ff, $13, $fe, $12, $fa, $06
    db $fe, $06, $fe, $dd, $12, $fe, $e0, $fe, $ee, $fe, $a0, $e5, $fc, $fc, $fb, $fc
    db $04, $fe, $e0, $9c, $fc, $9c, $f0, $90, $00, $fe, $e4, $ff, $e0, $82, $e5, $00
    db $00

    nop                                           ; $5754: $00

    db $1f, $68, $5f, $70, $9f, $7c, $df, $7c, $1f, $7d, $5f, $7d, $9f, $7d, $df, $7d
    db $1f, $7e, $df, $7d, $9f, $7d, $5f, $7d, $1f, $7d, $df, $7c, $9f, $7c, $5f, $70

Call_040_5775:
    push bc                                       ; $5775: $c5
    push de                                       ; $5776: $d5
    cpl                                           ; $5777: $2f
    ld d, a                                       ; $5778: $57
    ld a, l                                       ; $5779: $7d
    cpl                                           ; $577a: $2f
    ld c, a                                       ; $577b: $4f
    ld a, h                                       ; $577c: $7c
    cpl                                           ; $577d: $2f
    ld b, a                                       ; $577e: $47
    and c                                         ; $577f: $a1
    and d                                         ; $5780: $a2
    inc a                                         ; $5781: $3c
    jp z, Jump_040_593c                           ; $5782: $ca $3c $59

    add sp, -$10                                  ; $5785: $e8 $f0
    ld hl, sp+$04                                 ; $5787: $f8 $04
    ld [hl], d                                    ; $5789: $72
    ld de, $4000                                  ; $578a: $11 $00 $40
    ld l, e                                       ; $578d: $6b
    ld h, d                                       ; $578e: $62
    xor a                                         ; $578f: $af
    add hl, bc                                    ; $5790: $09
    jr c, jr_040_579d                             ; $5791: $38 $0a

    ld c, l                                       ; $5793: $4d
    ld b, h                                       ; $5794: $44
    set 3, a                                      ; $5795: $cb $df
    ld hl, $8000                                  ; $5797: $21 $00 $80
    add hl, de                                    ; $579a: $19
    ld e, l                                       ; $579b: $5d
    ld d, h                                       ; $579c: $54

jr_040_579d:
    ld hl, $e000                                  ; $579d: $21 $00 $e0
    add hl, de                                    ; $57a0: $19
    srl h                                         ; $57a1: $cb $3c
    rr l                                          ; $57a3: $cb $1d
    ld e, l                                       ; $57a5: $5d
    ld d, h                                       ; $57a6: $54
    add hl, bc                                    ; $57a7: $09
    jr c, jr_040_57b4                             ; $57a8: $38 $0a

    ld c, l                                       ; $57aa: $4d
    ld b, h                                       ; $57ab: $44
    set 2, a                                      ; $57ac: $cb $d7
    ld hl, $2000                                  ; $57ae: $21 $00 $20
    add hl, de                                    ; $57b1: $19
    ld e, l                                       ; $57b2: $5d
    ld d, h                                       ; $57b3: $54

jr_040_57b4:
    ld hl, $f800                                  ; $57b4: $21 $00 $f8
    add hl, de                                    ; $57b7: $19
    srl h                                         ; $57b8: $cb $3c
    rr l                                          ; $57ba: $cb $1d
    ld e, l                                       ; $57bc: $5d
    ld d, h                                       ; $57bd: $54
    add hl, bc                                    ; $57be: $09
    jr c, jr_040_57cb                             ; $57bf: $38 $0a

    ld c, l                                       ; $57c1: $4d
    ld b, h                                       ; $57c2: $44
    set 1, a                                      ; $57c3: $cb $cf
    ld hl, $0800                                  ; $57c5: $21 $00 $08
    add hl, de                                    ; $57c8: $19
    ld e, l                                       ; $57c9: $5d
    ld d, h                                       ; $57ca: $54

jr_040_57cb:
    ld hl, $fe00                                  ; $57cb: $21 $00 $fe
    add hl, de                                    ; $57ce: $19
    srl h                                         ; $57cf: $cb $3c
    rr l                                          ; $57d1: $cb $1d
    ld e, l                                       ; $57d3: $5d
    ld d, h                                       ; $57d4: $54
    add hl, bc                                    ; $57d5: $09
    jr c, jr_040_57e2                             ; $57d6: $38 $0a

    ld c, l                                       ; $57d8: $4d
    ld b, h                                       ; $57d9: $44
    set 0, a                                      ; $57da: $cb $c7
    ld hl, $0200                                  ; $57dc: $21 $00 $02
    add hl, de                                    ; $57df: $19
    ld e, l                                       ; $57e0: $5d
    ld d, h                                       ; $57e1: $54

jr_040_57e2:
    ld hl, $ff80                                  ; $57e2: $21 $80 $ff
    add hl, de                                    ; $57e5: $19
    srl h                                         ; $57e6: $cb $3c
    rr l                                          ; $57e8: $cb $1d
    ld e, l                                       ; $57ea: $5d
    ld d, h                                       ; $57eb: $54
    add hl, bc                                    ; $57ec: $09
    jr c, jr_040_57f9                             ; $57ed: $38 $0a

    ld c, l                                       ; $57ef: $4d
    ld b, h                                       ; $57f0: $44
    set 7, a                                      ; $57f1: $cb $ff
    ld hl, $0080                                  ; $57f3: $21 $80 $00
    add hl, de                                    ; $57f6: $19
    ld e, l                                       ; $57f7: $5d
    ld d, h                                       ; $57f8: $54

jr_040_57f9:
    ld hl, $ffe0                                  ; $57f9: $21 $e0 $ff
    add hl, de                                    ; $57fc: $19
    srl h                                         ; $57fd: $cb $3c
    rr l                                          ; $57ff: $cb $1d
    ld e, l                                       ; $5801: $5d
    ld d, h                                       ; $5802: $54
    add hl, bc                                    ; $5803: $09
    jr c, jr_040_5810                             ; $5804: $38 $0a

    ld c, l                                       ; $5806: $4d
    ld b, h                                       ; $5807: $44
    set 6, a                                      ; $5808: $cb $f7
    ld hl, $0020                                  ; $580a: $21 $20 $00
    add hl, de                                    ; $580d: $19
    ld e, l                                       ; $580e: $5d
    ld d, h                                       ; $580f: $54

jr_040_5810:
    ld hl, $fff8                                  ; $5810: $21 $f8 $ff
    add hl, de                                    ; $5813: $19
    srl h                                         ; $5814: $cb $3c
    rr l                                          ; $5816: $cb $1d
    ld e, l                                       ; $5818: $5d
    ld d, h                                       ; $5819: $54
    add hl, bc                                    ; $581a: $09
    jr c, jr_040_5827                             ; $581b: $38 $0a

    ld c, l                                       ; $581d: $4d
    ld b, h                                       ; $581e: $44
    set 5, a                                      ; $581f: $cb $ef
    ld hl, $0008                                  ; $5821: $21 $08 $00
    add hl, de                                    ; $5824: $19
    ld e, l                                       ; $5825: $5d
    ld d, h                                       ; $5826: $54

jr_040_5827:
    ld hl, $fffe                                  ; $5827: $21 $fe $ff
    add hl, de                                    ; $582a: $19
    srl h                                         ; $582b: $cb $3c
    rr l                                          ; $582d: $cb $1d
    ld e, l                                       ; $582f: $5d
    ld d, h                                       ; $5830: $54
    add hl, bc                                    ; $5831: $09
    jr c, jr_040_583e                             ; $5832: $38 $0a

    ld c, l                                       ; $5834: $4d
    ld b, h                                       ; $5835: $44
    set 4, a                                      ; $5836: $cb $e7
    ld hl, $0002                                  ; $5838: $21 $02 $00
    add hl, de                                    ; $583b: $19
    ld e, l                                       ; $583c: $5d
    ld d, h                                       ; $583d: $54

jr_040_583e:
    ld hl, sp+$03                                 ; $583e: $f8 $03
    ld [hl], a                                    ; $5840: $77
    srl d                                         ; $5841: $cb $3a
    rr e                                          ; $5843: $cb $1b
    ld hl, sp+$00                                 ; $5845: $f8 $00
    ld [hl], d                                    ; $5847: $72
    ld d, e                                       ; $5848: $53
    ld e, $80                                     ; $5849: $1e $80
    rr e                                          ; $584b: $cb $1b
    ld hl, sp+$02                                 ; $584d: $f8 $02
    ld [hl], $00                                  ; $584f: $36 $00
    ld hl, sp+$01                                 ; $5851: $f8 $01
    ld [hl], b                                    ; $5853: $70
    ld b, c                                       ; $5854: $41
    ld hl, sp+$04                                 ; $5855: $f8 $04
    ld c, [hl]                                    ; $5857: $4e
    ld hl, sp+$01                                 ; $5858: $f8 $01
    ld hl, sp+$00                                 ; $585a: $f8 $00
    ld hl, sp+$00                                 ; $585c: $f8 $00
    ld a, [hl]                                    ; $585e: $7e
    ld l, e                                       ; $585f: $6b
    ld h, d                                       ; $5860: $62
    add hl, bc                                    ; $5861: $09
    push hl                                       ; $5862: $e5
    push af                                       ; $5863: $f5
    ld hl, sp+$05                                 ; $5864: $f8 $05
    pop af                                        ; $5866: $f1
    adc [hl]                                      ; $5867: $8e
    jr c, jr_040_587b                             ; $5868: $38 $11

    ld [hl+], a                                   ; $586a: $22
    set 3, [hl]                                   ; $586b: $cb $de
    pop bc                                        ; $586d: $c1
    ld hl, $0060                                  ; $586e: $21 $60 $00
    add hl, de                                    ; $5871: $19
    ld e, l                                       ; $5872: $5d
    ld d, h                                       ; $5873: $54
    jr nc, jr_040_5887                            ; $5874: $30 $11

    ld hl, sp+$00                                 ; $5876: $f8 $00
    inc [hl]                                      ; $5878: $34
    jr jr_040_5887                                ; $5879: $18 $0c

jr_040_587b:
    pop hl                                        ; $587b: $e1
    ld hl, $ffe0                                  ; $587c: $21 $e0 $ff
    add hl, de                                    ; $587f: $19
    ld e, l                                       ; $5880: $5d
    ld d, h                                       ; $5881: $54
    jr c, jr_040_5887                             ; $5882: $38 $03

    ld hl, sp+$00                                 ; $5884: $f8 $00
    dec [hl]                                      ; $5886: $35

jr_040_5887:
    ld hl, sp+$00                                 ; $5887: $f8 $00
    srl [hl]                                      ; $5889: $cb $3e
    rr d                                          ; $588b: $cb $1a
    rr e                                          ; $588d: $cb $1b
    ld hl, sp+$00                                 ; $588f: $f8 $00
    ld a, [hl]                                    ; $5891: $7e
    ld l, e                                       ; $5892: $6b
    ld h, d                                       ; $5893: $62
    add hl, bc                                    ; $5894: $09
    push hl                                       ; $5895: $e5
    push af                                       ; $5896: $f5
    ld hl, sp+$05                                 ; $5897: $f8 $05
    pop af                                        ; $5899: $f1
    adc [hl]                                      ; $589a: $8e
    jr c, jr_040_58ae                             ; $589b: $38 $11

    ld [hl+], a                                   ; $589d: $22
    set 2, [hl]                                   ; $589e: $cb $d6
    pop bc                                        ; $58a0: $c1
    ld hl, $0018                                  ; $58a1: $21 $18 $00
    add hl, de                                    ; $58a4: $19
    ld e, l                                       ; $58a5: $5d
    ld d, h                                       ; $58a6: $54
    jr nc, jr_040_58ba                            ; $58a7: $30 $11

    ld hl, sp+$00                                 ; $58a9: $f8 $00
    inc [hl]                                      ; $58ab: $34
    jr jr_040_58ba                                ; $58ac: $18 $0c

jr_040_58ae:
    pop hl                                        ; $58ae: $e1
    ld hl, $fff8                                  ; $58af: $21 $f8 $ff
    add hl, de                                    ; $58b2: $19
    ld e, l                                       ; $58b3: $5d
    ld d, h                                       ; $58b4: $54
    jr c, jr_040_58ba                             ; $58b5: $38 $03

    ld hl, sp+$00                                 ; $58b7: $f8 $00
    dec [hl]                                      ; $58b9: $35

jr_040_58ba:
    ld hl, sp+$00                                 ; $58ba: $f8 $00
    srl [hl]                                      ; $58bc: $cb $3e
    rr d                                          ; $58be: $cb $1a
    rr e                                          ; $58c0: $cb $1b
    ld hl, sp+$00                                 ; $58c2: $f8 $00
    ld a, [hl]                                    ; $58c4: $7e
    ld l, e                                       ; $58c5: $6b
    ld h, d                                       ; $58c6: $62
    add hl, bc                                    ; $58c7: $09
    push hl                                       ; $58c8: $e5
    push af                                       ; $58c9: $f5
    ld hl, sp+$05                                 ; $58ca: $f8 $05
    pop af                                        ; $58cc: $f1
    adc [hl]                                      ; $58cd: $8e
    jr c, jr_040_58e1                             ; $58ce: $38 $11

    ld [hl+], a                                   ; $58d0: $22
    set 1, [hl]                                   ; $58d1: $cb $ce
    pop bc                                        ; $58d3: $c1
    ld hl, $0006                                  ; $58d4: $21 $06 $00
    add hl, de                                    ; $58d7: $19
    ld e, l                                       ; $58d8: $5d
    ld d, h                                       ; $58d9: $54
    jr nc, jr_040_58ed                            ; $58da: $30 $11

    ld hl, sp+$00                                 ; $58dc: $f8 $00
    inc [hl]                                      ; $58de: $34
    jr jr_040_58ed                                ; $58df: $18 $0c

jr_040_58e1:
    pop hl                                        ; $58e1: $e1
    ld hl, $fffe                                  ; $58e2: $21 $fe $ff
    add hl, de                                    ; $58e5: $19
    ld e, l                                       ; $58e6: $5d
    ld d, h                                       ; $58e7: $54
    jr c, jr_040_58ed                             ; $58e8: $38 $03

    ld hl, sp+$00                                 ; $58ea: $f8 $00
    dec [hl]                                      ; $58ec: $35

jr_040_58ed:
    ld hl, sp+$00                                 ; $58ed: $f8 $00
    srl [hl]                                      ; $58ef: $cb $3e
    rr d                                          ; $58f1: $cb $1a
    rr e                                          ; $58f3: $cb $1b
    ld hl, sp+$00                                 ; $58f5: $f8 $00
    ld a, [hl]                                    ; $58f7: $7e
    ld l, e                                       ; $58f8: $6b
    ld h, d                                       ; $58f9: $62
    add hl, bc                                    ; $58fa: $09
    push hl                                       ; $58fb: $e5
    push af                                       ; $58fc: $f5
    ld hl, sp+$05                                 ; $58fd: $f8 $05
    pop af                                        ; $58ff: $f1
    adc [hl]                                      ; $5900: $8e
    jr c, jr_040_5914                             ; $5901: $38 $11

    ld [hl+], a                                   ; $5903: $22
    set 0, [hl]                                   ; $5904: $cb $c6
    pop bc                                        ; $5906: $c1
    ld hl, $0002                                  ; $5907: $21 $02 $00
    add hl, de                                    ; $590a: $19
    ld e, l                                       ; $590b: $5d
    ld d, h                                       ; $590c: $54
    jr nc, jr_040_5920                            ; $590d: $30 $11

    ld hl, sp+$00                                 ; $590f: $f8 $00
    inc [hl]                                      ; $5911: $34
    jr jr_040_5920                                ; $5912: $18 $0c

jr_040_5914:
    pop hl                                        ; $5914: $e1
    ld hl, $0000                                  ; $5915: $21 $00 $00
    add hl, de                                    ; $5918: $19
    ld e, l                                       ; $5919: $5d
    ld d, h                                       ; $591a: $54
    jr c, jr_040_5920                             ; $591b: $38 $03

    ld hl, sp+$00                                 ; $591d: $f8 $00
    dec [hl]                                      ; $591f: $35

jr_040_5920:
    ld hl, sp+$00                                 ; $5920: $f8 $00
    srl [hl]                                      ; $5922: $cb $3e
    rr d                                          ; $5924: $cb $1a
    rr e                                          ; $5926: $cb $1b
    ld hl, sp+$03                                 ; $5928: $f8 $03
    ld a, [hl]                                    ; $592a: $7e
    ld hl, sp+$02                                 ; $592b: $f8 $02
    ld b, [hl]                                    ; $592d: $46
    ld h, a                                       ; $592e: $67
    and $f0                                       ; $592f: $e6 $f0
    ld l, a                                       ; $5931: $6f
    xor h                                         ; $5932: $ac
    ld h, a                                       ; $5933: $67
    ld a, b                                       ; $5934: $78
    or l                                          ; $5935: $b5
    ld l, a                                       ; $5936: $6f
    add sp, $10                                   ; $5937: $e8 $10

jr_040_5939:
    pop de                                        ; $5939: $d1
    pop bc                                        ; $593a: $c1
    ret                                           ; $593b: $c9


Jump_040_593c:
    ld hl, $0000                                  ; $593c: $21 $00 $00
    jr jr_040_5939                                ; $593f: $18 $f8

    ld a, h                                       ; $5941: $7c
    bit 7, a                                      ; $5942: $cb $7f
    jr z, jr_040_5948                             ; $5944: $28 $02

    cpl                                           ; $5946: $2f
    inc a                                         ; $5947: $3c

jr_040_5948:
    ld b, a                                       ; $5948: $47
    ld a, d                                       ; $5949: $7a
    bit 7, a                                      ; $594a: $cb $7f
    jr z, jr_040_5950                             ; $594c: $28 $02

    cpl                                           ; $594e: $2f
    inc a                                         ; $594f: $3c

jr_040_5950:
    cp b                                          ; $5950: $b8
    jr nc, jr_040_5954                            ; $5951: $30 $01

    ld a, b                                       ; $5953: $78

jr_040_5954:
    ld b, $01                                     ; $5954: $06 $01
    cp $20                                        ; $5956: $fe $20
    jr nc, jr_040_596f                            ; $5958: $30 $15

    inc b                                         ; $595a: $04
    cp $10                                        ; $595b: $fe $10
    jr nc, jr_040_596f                            ; $595d: $30 $10

    inc b                                         ; $595f: $04
    cp $08                                        ; $5960: $fe $08
    jr nc, jr_040_596f                            ; $5962: $30 $0b

    inc b                                         ; $5964: $04
    cp $04                                        ; $5965: $fe $04
    jr nc, jr_040_596f                            ; $5967: $30 $06

    inc b                                         ; $5969: $04
    cp $02                                        ; $596a: $fe $02
    jr nc, jr_040_596f                            ; $596c: $30 $01

    inc b                                         ; $596e: $04

jr_040_596f:
    push bc                                       ; $596f: $c5

jr_040_5970:
    sla e                                         ; $5970: $cb $23
    rl d                                          ; $5972: $cb $12
    sla l                                         ; $5974: $cb $25
    rl h                                          ; $5976: $cb $14
    dec b                                         ; $5978: $05
    jr nz, jr_040_5970                            ; $5979: $20 $f5

    push de                                       ; $597b: $d5
    ld d, h                                       ; $597c: $54
    ld e, l                                       ; $597d: $5d
    call Call_000_0c8e                            ; $597e: $cd $8e $0c
    pop de                                        ; $5981: $d1
    push hl                                       ; $5982: $e5
    ld h, d                                       ; $5983: $62
    ld l, e                                       ; $5984: $6b
    call Call_000_0c8e                            ; $5985: $cd $8e $0c
    pop de                                        ; $5988: $d1
    add hl, de                                    ; $5989: $19
    call Call_000_0f04                            ; $598a: $cd $04 $0f
    ld h, a                                       ; $598d: $67
    ld l, $00                                     ; $598e: $2e $00
    pop bc                                        ; $5990: $c1

jr_040_5991:
    srl h                                         ; $5991: $cb $3c
    rr l                                          ; $5993: $cb $1d
    dec b                                         ; $5995: $05
    jr nz, jr_040_5991                            ; $5996: $20 $f9

    pop de                                        ; $5998: $d1
    pop bc                                        ; $5999: $c1
    pop af                                        ; $599a: $f1
    ret                                           ; $599b: $c9


    push bc                                       ; $599c: $c5
    ldh [$ac], a                                  ; $599d: $e0 $ac
    xor a                                         ; $599f: $af
    sub e                                         ; $59a0: $93
    ld c, a                                       ; $59a1: $4f
    sbc a                                         ; $59a2: $9f
    sub d                                         ; $59a3: $92
    ld b, a                                       ; $59a4: $47
    or c                                          ; $59a5: $b1
    jr nz, jr_040_59ae                            ; $59a6: $20 $06

    ld a, $ff                                     ; $59a8: $3e $ff
    ld h, a                                       ; $59aa: $67
    ld l, a                                       ; $59ab: $6f
    pop bc                                        ; $59ac: $c1
    ret                                           ; $59ad: $c9


jr_040_59ae:
    ld a, l                                       ; $59ae: $7d
    push af                                       ; $59af: $f5
    ldh a, [$ac]                                  ; $59b0: $f0 $ac
    push hl                                       ; $59b2: $e5
    scf                                           ; $59b3: $37
    ld hl, $0000                                  ; $59b4: $21 $00 $00
    adc a                                         ; $59b7: $8f
    rl l                                          ; $59b8: $cb $15
    add hl, bc                                    ; $59ba: $09
    jr c, jr_040_59bf                             ; $59bb: $38 $02

    dec a                                         ; $59bd: $3d
    add hl, de                                    ; $59be: $19

jr_040_59bf:
    adc a                                         ; $59bf: $8f
    rl l                                          ; $59c0: $cb $15
    add hl, bc                                    ; $59c2: $09
    jr c, jr_040_59c7                             ; $59c3: $38 $02

    dec a                                         ; $59c5: $3d
    add hl, de                                    ; $59c6: $19

jr_040_59c7:
    adc a                                         ; $59c7: $8f
    rl l                                          ; $59c8: $cb $15
    add hl, bc                                    ; $59ca: $09
    jr c, jr_040_59cf                             ; $59cb: $38 $02

    dec a                                         ; $59cd: $3d
    add hl, de                                    ; $59ce: $19

jr_040_59cf:
    adc a                                         ; $59cf: $8f
    rl l                                          ; $59d0: $cb $15
    add hl, bc                                    ; $59d2: $09
    jr c, jr_040_59d7                             ; $59d3: $38 $02

    dec a                                         ; $59d5: $3d
    add hl, de                                    ; $59d6: $19

jr_040_59d7:
    adc a                                         ; $59d7: $8f
    rl l                                          ; $59d8: $cb $15
    add hl, bc                                    ; $59da: $09
    jr c, jr_040_59df                             ; $59db: $38 $02

    dec a                                         ; $59dd: $3d
    add hl, de                                    ; $59de: $19

jr_040_59df:
    adc a                                         ; $59df: $8f
    rl l                                          ; $59e0: $cb $15
    add hl, bc                                    ; $59e2: $09
    jr c, jr_040_59e7                             ; $59e3: $38 $02

    dec a                                         ; $59e5: $3d
    add hl, de                                    ; $59e6: $19

jr_040_59e7:
    adc a                                         ; $59e7: $8f
    rl l                                          ; $59e8: $cb $15
    add hl, bc                                    ; $59ea: $09
    jr c, jr_040_59ef                             ; $59eb: $38 $02

    dec a                                         ; $59ed: $3d
    add hl, de                                    ; $59ee: $19

jr_040_59ef:
    adc a                                         ; $59ef: $8f
    rl l                                          ; $59f0: $cb $15
    add hl, bc                                    ; $59f2: $09
    jr c, jr_040_59f7                             ; $59f3: $38 $02

    dec a                                         ; $59f5: $3d
    add hl, de                                    ; $59f6: $19

jr_040_59f7:
    ldh [$ae], a                                  ; $59f7: $e0 $ae
    pop af                                        ; $59f9: $f1
    ld h, $00                                     ; $59fa: $26 $00
    scf                                           ; $59fc: $37
    adc a                                         ; $59fd: $8f
    rl l                                          ; $59fe: $cb $15
    rl h                                          ; $5a00: $cb $14
    add hl, bc                                    ; $5a02: $09
    jr c, jr_040_5a07                             ; $5a03: $38 $02

    dec a                                         ; $5a05: $3d
    add hl, de                                    ; $5a06: $19

jr_040_5a07:
    adc a                                         ; $5a07: $8f
    rl l                                          ; $5a08: $cb $15
    rl h                                          ; $5a0a: $cb $14
    add hl, bc                                    ; $5a0c: $09
    jr c, jr_040_5a11                             ; $5a0d: $38 $02

    dec a                                         ; $5a0f: $3d
    add hl, de                                    ; $5a10: $19

jr_040_5a11:
    adc a                                         ; $5a11: $8f
    rl l                                          ; $5a12: $cb $15
    rl h                                          ; $5a14: $cb $14
    add hl, bc                                    ; $5a16: $09
    jr c, jr_040_5a1b                             ; $5a17: $38 $02

    dec a                                         ; $5a19: $3d
    add hl, de                                    ; $5a1a: $19

jr_040_5a1b:
    adc a                                         ; $5a1b: $8f
    rl l                                          ; $5a1c: $cb $15
    rl h                                          ; $5a1e: $cb $14
    add hl, bc                                    ; $5a20: $09
    jr c, jr_040_5a25                             ; $5a21: $38 $02

    dec a                                         ; $5a23: $3d
    add hl, de                                    ; $5a24: $19

jr_040_5a25:
    adc a                                         ; $5a25: $8f
    rl l                                          ; $5a26: $cb $15
    rl h                                          ; $5a28: $cb $14
    add hl, bc                                    ; $5a2a: $09
    jr c, jr_040_5a2f                             ; $5a2b: $38 $02

    dec a                                         ; $5a2d: $3d
    add hl, de                                    ; $5a2e: $19

jr_040_5a2f:
    adc a                                         ; $5a2f: $8f
    rl l                                          ; $5a30: $cb $15
    rl h                                          ; $5a32: $cb $14
    add hl, bc                                    ; $5a34: $09
    jr c, jr_040_5a39                             ; $5a35: $38 $02

    dec a                                         ; $5a37: $3d
    add hl, de                                    ; $5a38: $19

jr_040_5a39:
    adc a                                         ; $5a39: $8f
    rl l                                          ; $5a3a: $cb $15
    rl h                                          ; $5a3c: $cb $14
    add hl, bc                                    ; $5a3e: $09
    jr c, jr_040_5a43                             ; $5a3f: $38 $02

    dec a                                         ; $5a41: $3d
    add hl, de                                    ; $5a42: $19

jr_040_5a43:
    adc a                                         ; $5a43: $8f
    rl l                                          ; $5a44: $cb $15
    rl h                                          ; $5a46: $cb $14
    add hl, bc                                    ; $5a48: $09
    jr c, jr_040_5a4d                             ; $5a49: $38 $02

    dec a                                         ; $5a4b: $3d
    add hl, de                                    ; $5a4c: $19

jr_040_5a4d:
    ldh [$ad], a                                  ; $5a4d: $e0 $ad
    pop af                                        ; $5a4f: $f1
    scf                                           ; $5a50: $37
    adc a                                         ; $5a51: $8f
    rl l                                          ; $5a52: $cb $15
    rl h                                          ; $5a54: $cb $14
    add hl, bc                                    ; $5a56: $09
    jr c, jr_040_5a5b                             ; $5a57: $38 $02

    dec a                                         ; $5a59: $3d
    add hl, de                                    ; $5a5a: $19

jr_040_5a5b:
    adc a                                         ; $5a5b: $8f
    rl l                                          ; $5a5c: $cb $15
    rl h                                          ; $5a5e: $cb $14
    add hl, bc                                    ; $5a60: $09
    jr c, jr_040_5a65                             ; $5a61: $38 $02

    dec a                                         ; $5a63: $3d
    add hl, de                                    ; $5a64: $19

jr_040_5a65:
    adc a                                         ; $5a65: $8f
    rl l                                          ; $5a66: $cb $15
    rl h                                          ; $5a68: $cb $14
    add hl, bc                                    ; $5a6a: $09
    jr c, jr_040_5a6f                             ; $5a6b: $38 $02

    dec a                                         ; $5a6d: $3d
    add hl, de                                    ; $5a6e: $19

jr_040_5a6f:
    adc a                                         ; $5a6f: $8f
    rl l                                          ; $5a70: $cb $15
    rl h                                          ; $5a72: $cb $14
    add hl, bc                                    ; $5a74: $09
    jr c, jr_040_5a79                             ; $5a75: $38 $02

    dec a                                         ; $5a77: $3d
    add hl, de                                    ; $5a78: $19

jr_040_5a79:
    adc a                                         ; $5a79: $8f
    rl l                                          ; $5a7a: $cb $15
    rl h                                          ; $5a7c: $cb $14
    add hl, bc                                    ; $5a7e: $09
    jr c, jr_040_5a83                             ; $5a7f: $38 $02

    dec a                                         ; $5a81: $3d
    add hl, de                                    ; $5a82: $19

jr_040_5a83:
    adc a                                         ; $5a83: $8f
    rl l                                          ; $5a84: $cb $15
    rl h                                          ; $5a86: $cb $14
    add hl, bc                                    ; $5a88: $09
    jr c, jr_040_5a8d                             ; $5a89: $38 $02

    dec a                                         ; $5a8b: $3d
    add hl, de                                    ; $5a8c: $19

jr_040_5a8d:
    adc a                                         ; $5a8d: $8f
    rl l                                          ; $5a8e: $cb $15
    rl h                                          ; $5a90: $cb $14
    add hl, bc                                    ; $5a92: $09
    jr c, jr_040_5a97                             ; $5a93: $38 $02

    dec a                                         ; $5a95: $3d
    add hl, de                                    ; $5a96: $19

jr_040_5a97:
    adc a                                         ; $5a97: $8f
    rl l                                          ; $5a98: $cb $15
    rl h                                          ; $5a9a: $cb $14
    add hl, bc                                    ; $5a9c: $09
    jr c, jr_040_5aa1                             ; $5a9d: $38 $02

    dec a                                         ; $5a9f: $3d
    add hl, de                                    ; $5aa0: $19

jr_040_5aa1:
    ld l, a                                       ; $5aa1: $6f
    ldh a, [$ad]                                  ; $5aa2: $f0 $ad
    ld h, a                                       ; $5aa4: $67
    ldh a, [$ae]                                  ; $5aa5: $f0 $ae
    pop bc                                        ; $5aa7: $c1
    ret                                           ; $5aa8: $c9


    push de                                       ; $5aa9: $d5
    push bc                                       ; $5aaa: $c5
    ld c, d                                       ; $5aab: $4a
    ld a, e                                       ; $5aac: $7b
    ld b, $00                                     ; $5aad: $06 $00
    push hl                                       ; $5aaf: $e5
    add a                                         ; $5ab0: $87
    jr c, jr_040_5ad1                             ; $5ab1: $38 $1e

    jr z, jr_040_5acc                             ; $5ab3: $28 $17

    ld e, l                                       ; $5ab5: $5d
    ld d, h                                       ; $5ab6: $54
    add a                                         ; $5ab7: $87
    jr c, jr_040_5ad9                             ; $5ab8: $38 $1f

    add a                                         ; $5aba: $87
    jr c, jr_040_5adf                             ; $5abb: $38 $22

    add a                                         ; $5abd: $87
    jr c, jr_040_5ae5                             ; $5abe: $38 $25

    add a                                         ; $5ac0: $87
    jr c, jr_040_5aeb                             ; $5ac1: $38 $28

    add a                                         ; $5ac3: $87
    jr c, jr_040_5af1                             ; $5ac4: $38 $2b

    add a                                         ; $5ac6: $87
    jr c, jr_040_5af7                             ; $5ac7: $38 $2e

    xor a                                         ; $5ac9: $af
    jr jr_040_5afd                                ; $5aca: $18 $31

jr_040_5acc:
    ld hl, $0000                                  ; $5acc: $21 $00 $00
    jr jr_040_5afd                                ; $5acf: $18 $2c

jr_040_5ad1:
    ld e, l                                       ; $5ad1: $5d
    ld d, h                                       ; $5ad2: $54
    add hl, hl                                    ; $5ad3: $29
    adc a                                         ; $5ad4: $8f
    jr nc, jr_040_5ad9                            ; $5ad5: $30 $02

    add hl, de                                    ; $5ad7: $19
    adc b                                         ; $5ad8: $88

jr_040_5ad9:
    add hl, hl                                    ; $5ad9: $29
    adc a                                         ; $5ada: $8f
    jr nc, jr_040_5adf                            ; $5adb: $30 $02

    add hl, de                                    ; $5add: $19
    adc b                                         ; $5ade: $88

jr_040_5adf:
    add hl, hl                                    ; $5adf: $29
    adc a                                         ; $5ae0: $8f
    jr nc, jr_040_5ae5                            ; $5ae1: $30 $02

    add hl, de                                    ; $5ae3: $19
    adc b                                         ; $5ae4: $88

jr_040_5ae5:
    add hl, hl                                    ; $5ae5: $29
    adc a                                         ; $5ae6: $8f
    jr nc, jr_040_5aeb                            ; $5ae7: $30 $02

    add hl, de                                    ; $5ae9: $19
    adc b                                         ; $5aea: $88

jr_040_5aeb:
    add hl, hl                                    ; $5aeb: $29
    adc a                                         ; $5aec: $8f
    jr nc, jr_040_5af1                            ; $5aed: $30 $02

    add hl, de                                    ; $5aef: $19
    adc b                                         ; $5af0: $88

jr_040_5af1:
    add hl, hl                                    ; $5af1: $29
    adc a                                         ; $5af2: $8f
    jr nc, jr_040_5af7                            ; $5af3: $30 $02

    add hl, de                                    ; $5af5: $19
    adc b                                         ; $5af6: $88

jr_040_5af7:
    add hl, hl                                    ; $5af7: $29
    adc a                                         ; $5af8: $8f
    jr nc, jr_040_5afd                            ; $5af9: $30 $02

    add hl, de                                    ; $5afb: $19
    adc b                                         ; $5afc: $88

jr_040_5afd:
    ld e, h                                       ; $5afd: $5c
    ld d, a                                       ; $5afe: $57
    ld a, c                                       ; $5aff: $79
    ld c, l                                       ; $5b00: $4d
    pop hl                                        ; $5b01: $e1
    push de                                       ; $5b02: $d5
    add a                                         ; $5b03: $87
    jr c, jr_040_5b24                             ; $5b04: $38 $1e

    jr z, jr_040_5b1f                             ; $5b06: $28 $17

    ld e, l                                       ; $5b08: $5d
    ld d, h                                       ; $5b09: $54
    add a                                         ; $5b0a: $87
    jr c, jr_040_5b2c                             ; $5b0b: $38 $1f

    add a                                         ; $5b0d: $87
    jr c, jr_040_5b32                             ; $5b0e: $38 $22

    add a                                         ; $5b10: $87
    jr c, jr_040_5b38                             ; $5b11: $38 $25

    add a                                         ; $5b13: $87
    jr c, jr_040_5b3e                             ; $5b14: $38 $28

    add a                                         ; $5b16: $87
    jr c, jr_040_5b44                             ; $5b17: $38 $2b

    add a                                         ; $5b19: $87
    jr c, jr_040_5b4a                             ; $5b1a: $38 $2e

    xor a                                         ; $5b1c: $af
    jr jr_040_5b50                                ; $5b1d: $18 $31

jr_040_5b1f:
    ld hl, $0000                                  ; $5b1f: $21 $00 $00
    jr jr_040_5b50                                ; $5b22: $18 $2c

jr_040_5b24:
    ld e, l                                       ; $5b24: $5d
    ld d, h                                       ; $5b25: $54
    add hl, hl                                    ; $5b26: $29
    adc a                                         ; $5b27: $8f
    jr nc, jr_040_5b2c                            ; $5b28: $30 $02

    add hl, de                                    ; $5b2a: $19
    adc b                                         ; $5b2b: $88

jr_040_5b2c:
    add hl, hl                                    ; $5b2c: $29
    adc a                                         ; $5b2d: $8f
    jr nc, jr_040_5b32                            ; $5b2e: $30 $02

    add hl, de                                    ; $5b30: $19
    adc b                                         ; $5b31: $88

jr_040_5b32:
    add hl, hl                                    ; $5b32: $29
    adc a                                         ; $5b33: $8f
    jr nc, jr_040_5b38                            ; $5b34: $30 $02

    add hl, de                                    ; $5b36: $19
    adc b                                         ; $5b37: $88

jr_040_5b38:
    add hl, hl                                    ; $5b38: $29
    adc a                                         ; $5b39: $8f
    jr nc, jr_040_5b3e                            ; $5b3a: $30 $02

    add hl, de                                    ; $5b3c: $19
    adc b                                         ; $5b3d: $88

jr_040_5b3e:
    add hl, hl                                    ; $5b3e: $29
    adc a                                         ; $5b3f: $8f
    jr nc, jr_040_5b44                            ; $5b40: $30 $02

    add hl, de                                    ; $5b42: $19
    adc b                                         ; $5b43: $88

jr_040_5b44:
    add hl, hl                                    ; $5b44: $29
    adc a                                         ; $5b45: $8f
    jr nc, jr_040_5b4a                            ; $5b46: $30 $02

    add hl, de                                    ; $5b48: $19
    adc b                                         ; $5b49: $88

jr_040_5b4a:
    add hl, hl                                    ; $5b4a: $29
    adc a                                         ; $5b4b: $8f
    jr nc, jr_040_5b50                            ; $5b4c: $30 $02

    add hl, de                                    ; $5b4e: $19
    adc b                                         ; $5b4f: $88

jr_040_5b50:
    pop de                                        ; $5b50: $d1
    add hl, de                                    ; $5b51: $19
    adc b                                         ; $5b52: $88
    ld b, a                                       ; $5b53: $47
    ld a, c                                       ; $5b54: $79
    ldh [$a8], a                                  ; $5b55: $e0 $a8
    ld a, l                                       ; $5b57: $7d
    ldh [$a9], a                                  ; $5b58: $e0 $a9
    ld a, h                                       ; $5b5a: $7c
    ld l, h                                       ; $5b5b: $6c
    ldh [$aa], a                                  ; $5b5c: $e0 $aa
    ld a, b                                       ; $5b5e: $78
    ld h, b                                       ; $5b5f: $60
    ldh [$ab], a                                  ; $5b60: $e0 $ab
    pop bc                                        ; $5b62: $c1
    pop de                                        ; $5b63: $d1
    ret                                           ; $5b64: $c9


jr_040_5b65:
    ld l, $00                                     ; $5b65: $2e $00
    ret                                           ; $5b67: $c9


Call_040_5b68:
    or a                                          ; $5b68: $b7
    jr z, jr_040_5b65                             ; $5b69: $28 $fa

    rra                                           ; $5b6b: $1f
    jr c, jr_040_5bb1                             ; $5b6c: $38 $43

    rra                                           ; $5b6e: $1f
    jr c, jr_040_5b87                             ; $5b6f: $38 $16

    rra                                           ; $5b71: $1f
    jr c, jr_040_5b8e                             ; $5b72: $38 $1a

    rra                                           ; $5b74: $1f
    jr c, jr_040_5b95                             ; $5b75: $38 $1e

    rra                                           ; $5b77: $1f
    jr c, jr_040_5b9c                             ; $5b78: $38 $22

    rra                                           ; $5b7a: $1f
    jr c, jr_040_5ba3                             ; $5b7b: $38 $26

    rra                                           ; $5b7d: $1f
    jr c, jr_040_5baa                             ; $5b7e: $38 $2a

    ld l, a                                       ; $5b80: $6f
    ld a, h                                       ; $5b81: $7c
    or a                                          ; $5b82: $b7
    jr nz, jr_040_5be0                            ; $5b83: $20 $5b

    jr jr_040_5b65                                ; $5b85: $18 $de

jr_040_5b87:
    ld l, a                                       ; $5b87: $6f
    ld a, h                                       ; $5b88: $7c
    or a                                          ; $5b89: $b7
    jr nz, jr_040_5bbc                            ; $5b8a: $20 $30

    jr jr_040_5b65                                ; $5b8c: $18 $d7

jr_040_5b8e:
    ld l, a                                       ; $5b8e: $6f
    ld a, h                                       ; $5b8f: $7c
    or a                                          ; $5b90: $b7
    jr nz, jr_040_5bc2                            ; $5b91: $20 $2f

    jr jr_040_5b65                                ; $5b93: $18 $d0

jr_040_5b95:
    ld l, a                                       ; $5b95: $6f
    ld a, h                                       ; $5b96: $7c
    or a                                          ; $5b97: $b7
    jr nz, jr_040_5bc8                            ; $5b98: $20 $2e

    jr jr_040_5b65                                ; $5b9a: $18 $c9

jr_040_5b9c:
    ld l, a                                       ; $5b9c: $6f
    ld a, h                                       ; $5b9d: $7c
    or a                                          ; $5b9e: $b7
    jr nz, jr_040_5bce                            ; $5b9f: $20 $2d

    jr jr_040_5b65                                ; $5ba1: $18 $c2

jr_040_5ba3:
    ld l, a                                       ; $5ba3: $6f
    ld a, h                                       ; $5ba4: $7c
    or a                                          ; $5ba5: $b7
    jr nz, jr_040_5bd4                            ; $5ba6: $20 $2c

    jr jr_040_5b65                                ; $5ba8: $18 $bb

jr_040_5baa:
    ld l, a                                       ; $5baa: $6f
    ld a, h                                       ; $5bab: $7c
    or a                                          ; $5bac: $b7
    jr nz, jr_040_5bda                            ; $5bad: $20 $2b

    jr jr_040_5b65                                ; $5baf: $18 $b4

jr_040_5bb1:
    ld l, a                                       ; $5bb1: $6f
    ld a, h                                       ; $5bb2: $7c
    or a                                          ; $5bb3: $b7
    jr z, jr_040_5b65                             ; $5bb4: $28 $af

    rra                                           ; $5bb6: $1f
    rr l                                          ; $5bb7: $cb $1d
    jr nc, jr_040_5bbc                            ; $5bb9: $30 $01

    add h                                         ; $5bbb: $84

jr_040_5bbc:
    rra                                           ; $5bbc: $1f
    rr l                                          ; $5bbd: $cb $1d
    jr nc, jr_040_5bc2                            ; $5bbf: $30 $01

    add h                                         ; $5bc1: $84

jr_040_5bc2:
    rra                                           ; $5bc2: $1f
    rr l                                          ; $5bc3: $cb $1d
    jr nc, jr_040_5bc8                            ; $5bc5: $30 $01

    add h                                         ; $5bc7: $84

jr_040_5bc8:
    rra                                           ; $5bc8: $1f
    rr l                                          ; $5bc9: $cb $1d
    jr nc, jr_040_5bce                            ; $5bcb: $30 $01

    add h                                         ; $5bcd: $84

jr_040_5bce:
    rra                                           ; $5bce: $1f
    rr l                                          ; $5bcf: $cb $1d
    jr nc, jr_040_5bd4                            ; $5bd1: $30 $01

    add h                                         ; $5bd3: $84

jr_040_5bd4:
    rra                                           ; $5bd4: $1f
    rr l                                          ; $5bd5: $cb $1d
    jr nc, jr_040_5bda                            ; $5bd7: $30 $01

    add h                                         ; $5bd9: $84

jr_040_5bda:
    rra                                           ; $5bda: $1f
    rr l                                          ; $5bdb: $cb $1d
    jr nc, jr_040_5be0                            ; $5bdd: $30 $01

    add h                                         ; $5bdf: $84

jr_040_5be0:
    rra                                           ; $5be0: $1f
    rr l                                          ; $5be1: $cb $1d
    ret                                           ; $5be3: $c9


    push de                                       ; $5be4: $d5
    ld e, a                                       ; $5be5: $5f
    ld d, l                                       ; $5be6: $55
    call Call_040_5b68                            ; $5be7: $cd $68 $5b
    ld h, d                                       ; $5bea: $62
    ld d, a                                       ; $5beb: $57
    ld a, e                                       ; $5bec: $7b
    ld e, l                                       ; $5bed: $5d
    call Call_040_5b68                            ; $5bee: $cd $68 $5b
    ld h, a                                       ; $5bf1: $67
    ld a, l                                       ; $5bf2: $7d
    ld l, h                                       ; $5bf3: $6c
    ld h, $00                                     ; $5bf4: $26 $00
    add hl, de                                    ; $5bf6: $19
    pop de                                        ; $5bf7: $d1
    ret                                           ; $5bf8: $c9


Call_040_5bf9:
    ld a, $01                                     ; $5bf9: $3e $01
    ldh [$96], a                                  ; $5bfb: $e0 $96
    ldh [rSVBK], a                                ; $5bfd: $e0 $70
    push hl                                       ; $5bff: $e5
    ld de, $d000                                  ; $5c00: $11 $00 $d0
    ld a, $00                                     ; $5c03: $3e $00
    ld c, $04                                     ; $5c05: $0e $04
    call Call_000_0749                            ; $5c07: $cd $49 $07
    ld hl, $d000                                  ; $5c0a: $21 $00 $d0
    ld de, $0008                                  ; $5c0d: $11 $08 $00
    call Call_000_0595                            ; $5c10: $cd $95 $05
    pop hl                                        ; $5c13: $e1
    push hl                                       ; $5c14: $e5
    ld de, $d000                                  ; $5c15: $11 $00 $d0
    ld a, $01                                     ; $5c18: $3e $01
    call Call_000_069a                            ; $5c1a: $cd $9a $06
    ld hl, $d000                                  ; $5c1d: $21 $00 $d0
    ld de, $b000                                  ; $5c20: $11 $00 $b0
    ld c, $80                                     ; $5c23: $0e $80
    call Call_000_0468                            ; $5c25: $cd $68 $04
    ld hl, $d800                                  ; $5c28: $21 $00 $d8
    ld de, $a800                                  ; $5c2b: $11 $00 $a8
    ld c, $80                                     ; $5c2e: $0e $80
    call Call_000_04db                            ; $5c30: $cd $db $04
    pop hl                                        ; $5c33: $e1
    push hl                                       ; $5c34: $e5
    ld de, $d000                                  ; $5c35: $11 $00 $d0
    ld a, $02                                     ; $5c38: $3e $02
    call Call_000_069a                            ; $5c3a: $cd $9a $06
    ld hl, $d000                                  ; $5c3d: $21 $00 $d0
    ld de, $b800                                  ; $5c40: $11 $00 $b8
    ld c, $40                                     ; $5c43: $0e $40
    call Call_000_04db                            ; $5c45: $cd $db $04
    pop hl                                        ; $5c48: $e1
    push hl                                       ; $5c49: $e5
    ld de, $d000                                  ; $5c4a: $11 $00 $d0
    ld a, $03                                     ; $5c4d: $3e $03
    call Call_000_069a                            ; $5c4f: $cd $9a $06
    ld hl, $d000                                  ; $5c52: $21 $00 $d0
    ld de, $9800                                  ; $5c55: $11 $00 $98
    ld c, $40                                     ; $5c58: $0e $40
    call Call_000_04db                            ; $5c5a: $cd $db $04
    pop hl                                        ; $5c5d: $e1
    call Call_000_0371                            ; $5c5e: $cd $71 $03
    ret                                           ; $5c61: $c9


Call_040_5c62:
jr_040_5c62:
    ldh a, [$a2]                                  ; $5c62: $f0 $a2
    or a                                          ; $5c64: $b7
    jr z, jr_040_5c71                             ; $5c65: $28 $0a

    call Call_000_2e3b                            ; $5c67: $cd $3b $2e
    call Call_040_6217                            ; $5c6a: $cd $17 $62
    jr nz, jr_040_5c71                            ; $5c6d: $20 $02

    jr jr_040_5c62                                ; $5c6f: $18 $f1

jr_040_5c71:
    ret                                           ; $5c71: $c9


Call_040_5c72:
    call Call_040_664b                            ; $5c72: $cd $4b $66
    ld de, $5d9f                                  ; $5c75: $11 $9f $5d
    ld h, $00                                     ; $5c78: $26 $00
    ld l, a                                       ; $5c7a: $6f
    add hl, hl                                    ; $5c7b: $29
    add hl, hl                                    ; $5c7c: $29
    add hl, hl                                    ; $5c7d: $29
    add hl, de                                    ; $5c7e: $19
    ld e, [hl]                                    ; $5c7f: $5e
    inc hl                                        ; $5c80: $23
    ld d, [hl]                                    ; $5c81: $56
    inc hl                                        ; $5c82: $23
    push de                                       ; $5c83: $d5
    ld e, [hl]                                    ; $5c84: $5e
    inc hl                                        ; $5c85: $23
    ld d, [hl]                                    ; $5c86: $56
    inc hl                                        ; $5c87: $23
    push de                                       ; $5c88: $d5
    ld e, [hl]                                    ; $5c89: $5e
    inc hl                                        ; $5c8a: $23
    ld d, [hl]                                    ; $5c8b: $56
    inc hl                                        ; $5c8c: $23
    push de                                       ; $5c8d: $d5
    ld a, [hl+]                                   ; $5c8e: $2a
    ld h, [hl]                                    ; $5c8f: $66
    ld l, a                                       ; $5c90: $6f
    ld a, h                                       ; $5c91: $7c
    or l                                          ; $5c92: $b5
    jp z, Jump_040_5c9b                           ; $5c93: $ca $9b $5c

    call Call_040_5bf9                            ; $5c96: $cd $f9 $5b
    jr jr_040_5cc9                                ; $5c99: $18 $2e

Jump_040_5c9b:
    ld a, $01                                     ; $5c9b: $3e $01
    ldh [$96], a                                  ; $5c9d: $e0 $96
    ldh [rSVBK], a                                ; $5c9f: $e0 $70
    ld hl, $d000                                  ; $5ca1: $21 $00 $d0
    ld bc, $0040                                  ; $5ca4: $01 $40 $00
    call Call_000_03bc                            ; $5ca7: $cd $bc $03
    ld hl, $d000                                  ; $5caa: $21 $00 $d0
    ld de, $b800                                  ; $5cad: $11 $00 $b8
    ld c, $40                                     ; $5cb0: $0e $40
    call Call_000_04db                            ; $5cb2: $cd $db $04
    ld hl, $d000                                  ; $5cb5: $21 $00 $d0
    ld bc, $0040                                  ; $5cb8: $01 $40 $00
    call Call_000_03bc                            ; $5cbb: $cd $bc $03
    ld hl, $d000                                  ; $5cbe: $21 $00 $d0
    ld de, $9800                                  ; $5cc1: $11 $00 $98
    ld c, $40                                     ; $5cc4: $0e $40
    call Call_000_04db                            ; $5cc6: $cd $db $04

jr_040_5cc9:
    pop hl                                        ; $5cc9: $e1
    call Call_000_0699                            ; $5cca: $cd $99 $06
    ld a, $06                                     ; $5ccd: $3e $06
    ldh [$96], a                                  ; $5ccf: $e0 $96
    ldh [rSVBK], a                                ; $5cd1: $e0 $70
    xor a                                         ; $5cd3: $af
    ld [$d24c], a                                 ; $5cd4: $ea $4c $d2
    call Call_000_0371                            ; $5cd7: $cd $71 $03
    pop hl                                        ; $5cda: $e1
    ld a, $06                                     ; $5cdb: $3e $06
    ldh [$96], a                                  ; $5cdd: $e0 $96
    ldh [rSVBK], a                                ; $5cdf: $e0 $70
    ld a, h                                       ; $5ce1: $7c
    ld [$d24d], a                                 ; $5ce2: $ea $4d $d2
    ld a, l                                       ; $5ce5: $7d
    ld [$d24e], a                                 ; $5ce6: $ea $4e $d2
    ld a, $01                                     ; $5ce9: $3e $01
    call Call_000_23e8                            ; $5ceb: $cd $e8 $23
    ld c, $10                                     ; $5cee: $0e $10
    call Call_000_25af                            ; $5cf0: $cd $af $25
    pop bc                                        ; $5cf3: $c1
    call Call_040_5c62                            ; $5cf4: $cd $62 $5c
    jp nz, Jump_040_5d8a                          ; $5cf7: $c2 $8a $5d

Jump_040_5cfa:
    ld a, $06                                     ; $5cfa: $3e $06
    ldh [$96], a                                  ; $5cfc: $e0 $96
    ldh [rSVBK], a                                ; $5cfe: $e0 $70
    ldh a, [$8c]                                  ; $5d00: $f0 $8c
    push de                                       ; $5d02: $d5
    push af                                       ; $5d03: $f5
    ld a, a                                       ; $5d04: $7f
    ld de, $0503                                  ; $5d05: $11 $03 $05
    call Call_000_22a5                            ; $5d08: $cd $a5 $22
    pop af                                        ; $5d0b: $f1
    pop de                                        ; $5d0c: $d1
    ld h, a                                       ; $5d0d: $67
    ldh a, [rDIV]                                 ; $5d0e: $f0 $04
    push de                                       ; $5d10: $d5
    push af                                       ; $5d11: $f5
    ld a, a                                       ; $5d12: $7f
    ld de, $0504                                  ; $5d13: $11 $04 $05
    call Call_000_22a5                            ; $5d16: $cd $a5 $22
    pop af                                        ; $5d19: $f1
    pop de                                        ; $5d1a: $d1
    ld l, a                                       ; $5d1b: $6f
    ld a, [$d24c]                                 ; $5d1c: $fa $4c $d2
    push de                                       ; $5d1f: $d5
    push af                                       ; $5d20: $f5
    ld a, a                                       ; $5d21: $7f
    ld de, $0505                                  ; $5d22: $11 $05 $05
    call Call_000_22a5                            ; $5d25: $cd $a5 $22
    pop af                                        ; $5d28: $f1
    pop de                                        ; $5d29: $d1
    ld d, a                                       ; $5d2a: $57
    call Call_040_5775                            ; $5d2b: $cd $75 $57
    push de                                       ; $5d2e: $d5
    push af                                       ; $5d2f: $f5
    ld a, h                                       ; $5d30: $7c
    ld de, $0508                                  ; $5d31: $11 $08 $05
    call Call_000_22a5                            ; $5d34: $cd $a5 $22
    pop af                                        ; $5d37: $f1
    pop de                                        ; $5d38: $d1
    push de                                       ; $5d39: $d5
    push af                                       ; $5d3a: $f5
    ld a, l                                       ; $5d3b: $7d
    ld de, $0509                                  ; $5d3c: $11 $09 $05
    call Call_000_22a5                            ; $5d3f: $cd $a5 $22
    pop af                                        ; $5d42: $f1
    pop de                                        ; $5d43: $d1
    push de                                       ; $5d44: $d5
    push af                                       ; $5d45: $f5
    ld a, a                                       ; $5d46: $7f
    ld de, $050a                                  ; $5d47: $11 $0a $05
    call Call_000_22a5                            ; $5d4a: $cd $a5 $22
    pop af                                        ; $5d4d: $f1
    pop de                                        ; $5d4e: $d1
    call Call_000_2e3b                            ; $5d4f: $cd $3b $2e
    call Call_040_6217                            ; $5d52: $cd $17 $62
    jr nz, jr_040_5d8a                            ; $5d55: $20 $33

    ld a, $06                                     ; $5d57: $3e $06
    ldh [$96], a                                  ; $5d59: $e0 $96
    ldh [rSVBK], a                                ; $5d5b: $e0 $70
    ld a, [$d24c]                                 ; $5d5d: $fa $4c $d2
    inc a                                         ; $5d60: $3c
    ld [$d24c], a                                 ; $5d61: $ea $4c $d2
    push de                                       ; $5d64: $d5
    push af                                       ; $5d65: $f5
    ld a, a                                       ; $5d66: $7f
    ld de, $0501                                  ; $5d67: $11 $01 $05
    call Call_000_22a5                            ; $5d6a: $cd $a5 $22
    pop af                                        ; $5d6d: $f1
    pop de                                        ; $5d6e: $d1
    dec bc                                        ; $5d6f: $0b
    ld a, c                                       ; $5d70: $79
    or b                                          ; $5d71: $b0
    jp nz, Jump_040_5cfa                          ; $5d72: $c2 $fa $5c

    rst $18                                       ; $5d75: $df

    db $0e, $05

    ld c, $10                                     ; $5d78: $0e $10
    call Call_000_25a1                            ; $5d7a: $cd $a1 $25
    ldh a, [$a2]                                  ; $5d7d: $f0 $a2
    or $80                                        ; $5d7f: $f6 $80
    ldh [$a2], a                                  ; $5d81: $e0 $a2
    call Call_040_5c62                            ; $5d83: $cd $62 $5c
    jr nz, jr_040_5d8a                            ; $5d86: $20 $02

    xor a                                         ; $5d88: $af
    ret                                           ; $5d89: $c9


Jump_040_5d8a:
jr_040_5d8a:
    ld hl, $5e26                                  ; $5d8a: $21 $26 $5e
    call Call_000_2449                            ; $5d8d: $cd $49 $24
    call Call_000_068a                            ; $5d90: $cd $8a $06
    ld c, $10                                     ; $5d93: $0e $10
    call Call_000_25a1                            ; $5d95: $cd $a1 $25
    call Call_000_2625                            ; $5d98: $cd $25 $26
    ld a, $ff                                     ; $5d9b: $3e $ff
    or a                                          ; $5d9d: $b7
    ret                                           ; $5d9e: $c9


    db $52, $00, $3d, $5e, $2d, $5e, $04, $78, $52, $00, $5f, $5e, $50, $5e, $06, $78

    cp d                                          ; $5daf: $ba
    nop                                           ; $5db0: $00
    ld e, a                                       ; $5db1: $5f
    ld e, [hl]                                    ; $5db2: $5e
    inc l                                         ; $5db3: $2c
    ld e, [hl]                                    ; $5db4: $5e
    ld [bc], a                                    ; $5db5: $02
    ld a, d                                       ; $5db6: $7a
    ld d, d                                       ; $5db7: $52
    nop                                           ; $5db8: $00
    halt                                          ; $5db9: $76
    ld e, [hl]                                    ; $5dba: $5e
    ld h, [hl]                                    ; $5dbb: $66
    ld e, [hl]                                    ; $5dbc: $5e
    nop                                           ; $5dbd: $00
    ld a, c                                       ; $5dbe: $79
    ld d, d                                       ; $5dbf: $52
    nop                                           ; $5dc0: $00
    rra                                           ; $5dc1: $1f
    ld e, [hl]                                    ; $5dc2: $5e
    xor $5e                                       ; $5dc3: $ee $5e
    ld [bc], a                                    ; $5dc5: $02
    ld a, c                                       ; $5dc6: $79
    cp d                                          ; $5dc7: $ba
    nop                                           ; $5dc8: $00
    rra                                           ; $5dc9: $1f
    ld e, [hl]                                    ; $5dca: $5e
    inc l                                         ; $5dcb: $2c
    ld e, [hl]                                    ; $5dcc: $5e
    inc b                                         ; $5dcd: $04
    ld a, d                                       ; $5dce: $7a
    ld d, d                                       ; $5dcf: $52
    nop                                           ; $5dd0: $00
    dec a                                         ; $5dd1: $3d
    ld e, [hl]                                    ; $5dd2: $5e
    dec l                                         ; $5dd3: $2d
    ld e, [hl]                                    ; $5dd4: $5e
    ld [$5278], sp                                ; $5dd5: $08 $78 $52
    nop                                           ; $5dd8: $00
    rra                                           ; $5dd9: $1f
    ld e, [hl]                                    ; $5dda: $5e
    xor $5e                                       ; $5ddb: $ee $5e
    ld a, [bc]                                    ; $5ddd: $0a
    ld a, b                                       ; $5dde: $78
    ld d, d                                       ; $5ddf: $52
    nop                                           ; $5de0: $00
    rra                                           ; $5de1: $1f
    ld e, [hl]                                    ; $5de2: $5e
    inc l                                         ; $5de3: $2c
    ld e, [hl]                                    ; $5de4: $5e
    ld b, $7a                                     ; $5de5: $06 $7a
    ld d, d                                       ; $5de7: $52
    nop                                           ; $5de8: $00
    halt                                          ; $5de9: $76
    ld e, [hl]                                    ; $5dea: $5e
    ld h, [hl]                                    ; $5deb: $66
    ld e, [hl]                                    ; $5dec: $5e
    nop                                           ; $5ded: $00
    ld a, b                                       ; $5dee: $78
    jr c, jr_040_5df1                             ; $5def: $38 $00

jr_040_5df1:
    ld l, e                                       ; $5df1: $6b
    ld h, c                                       ; $5df2: $61
    ld b, e                                       ; $5df3: $43
    ld h, c                                       ; $5df4: $61
    ld a, [bc]                                    ; $5df5: $0a
    ld a, d                                       ; $5df6: $7a
    jr c, jr_040_5df9                             ; $5df7: $38 $00

jr_040_5df9:
    xor c                                         ; $5df9: $a9
    ld h, c                                       ; $5dfa: $61
    sub h                                         ; $5dfb: $94
    ld h, c                                       ; $5dfc: $61
    inc c                                         ; $5dfd: $0c
    ld a, d                                       ; $5dfe: $7a
    ld d, d                                       ; $5dff: $52
    nop                                           ; $5e00: $00
    ld l, e                                       ; $5e01: $6b
    ld h, c                                       ; $5e02: $61
    ld b, e                                       ; $5e03: $43
    ld h, c                                       ; $5e04: $61
    ld [$867a], sp                                ; $5e05: $08 $7a $86
    nop                                           ; $5e08: $00
    sbc a                                         ; $5e09: $9f
    ld e, [hl]                                    ; $5e0a: $5e
    adc d                                         ; $5e0b: $8a
    ld e, [hl]                                    ; $5e0c: $5e
    ld [bc], a                                    ; $5e0d: $02
    ld a, b                                       ; $5e0e: $78
    ld d, d                                       ; $5e0f: $52
    nop                                           ; $5e10: $00
    call nc, $c05e                                ; $5e11: $d4 $5e $c0
    ld e, [hl]                                    ; $5e14: $5e
    inc b                                         ; $5e15: $04
    ld a, c                                       ; $5e16: $79
    xor d                                         ; $5e17: $aa
    nop                                           ; $5e18: $00
    ld de, $c05f                                  ; $5e19: $11 $5f $c0
    ld e, [hl]                                    ; $5e1c: $5e
    nop                                           ; $5e1d: $00
    ld a, d                                       ; $5e1e: $7a
    ld a, $06                                     ; $5e1f: $3e $06
    ldh [$96], a                                  ; $5e21: $e0 $96
    ldh [rSVBK], a                                ; $5e23: $e0 $70
    ret                                           ; $5e25: $c9


    ld a, [$d24b]                                 ; $5e26: $fa $4b $d2
    ldh [rWX], a                                  ; $5e29: $e0 $4b
    ret                                           ; $5e2b: $c9


    ret                                           ; $5e2c: $c9


    ld a, $06                                     ; $5e2d: $3e $06
    ldh [$96], a                                  ; $5e2f: $e0 $96
    ldh [rSVBK], a                                ; $5e31: $e0 $70
    ld a, $78                                     ; $5e33: $3e $78
    ld [$d247], a                                 ; $5e35: $ea $47 $d2
    xor a                                         ; $5e38: $af
    ld [$d248], a                                 ; $5e39: $ea $48 $d2
    ret                                           ; $5e3c: $c9


    ld a, $06                                     ; $5e3d: $3e $06
    ldh [$96], a                                  ; $5e3f: $e0 $96
    ldh [rSVBK], a                                ; $5e41: $e0 $70
    ld hl, $d247                                  ; $5e43: $21 $47 $d2
    ld a, [hl]                                    ; $5e46: $7e
    or a                                          ; $5e47: $b7
    jr z, jr_040_5e4f                             ; $5e48: $28 $05

    sub $06                                       ; $5e4a: $d6 $06
    ld [hl], a                                    ; $5e4c: $77
    ldh [$8b], a                                  ; $5e4d: $e0 $8b

jr_040_5e4f:
    ret                                           ; $5e4f: $c9


    ld a, $06                                     ; $5e50: $3e $06
    ldh [$96], a                                  ; $5e52: $e0 $96
    ldh [rSVBK], a                                ; $5e54: $e0 $70
    xor a                                         ; $5e56: $af
    ld [$d247], a                                 ; $5e57: $ea $47 $d2
    xor a                                         ; $5e5a: $af
    ld [$d248], a                                 ; $5e5b: $ea $48 $d2
    ret                                           ; $5e5e: $c9


    ld a, $06                                     ; $5e5f: $3e $06
    ldh [$96], a                                  ; $5e61: $e0 $96
    ldh [rSVBK], a                                ; $5e63: $e0 $70
    ret                                           ; $5e65: $c9


    ld a, $06                                     ; $5e66: $3e $06
    ldh [$96], a                                  ; $5e68: $e0 $96
    ldh [rSVBK], a                                ; $5e6a: $e0 $70
    ld a, $ec                                     ; $5e6c: $3e $ec
    ld [$d247], a                                 ; $5e6e: $ea $47 $d2
    xor a                                         ; $5e71: $af
    ld [$d248], a                                 ; $5e72: $ea $48 $d2
    ret                                           ; $5e75: $c9


    ld a, $06                                     ; $5e76: $3e $06
    ldh [$96], a                                  ; $5e78: $e0 $96
    ldh [rSVBK], a                                ; $5e7a: $e0 $70
    ld hl, $d247                                  ; $5e7c: $21 $47 $d2
    ld a, [hl]                                    ; $5e7f: $7e
    cp $58                                        ; $5e80: $fe $58
    jr z, jr_040_5e89                             ; $5e82: $28 $05

    add $06                                       ; $5e84: $c6 $06
    ld [hl], a                                    ; $5e86: $77
    ldh [$8b], a                                  ; $5e87: $e0 $8b

jr_040_5e89:
    ret                                           ; $5e89: $c9


    ld a, $06                                     ; $5e8a: $3e $06
    ldh [$96], a                                  ; $5e8c: $e0 $96
    ldh [rSVBK], a                                ; $5e8e: $e0 $70
    ld a, $70                                     ; $5e90: $3e $70
    ld [$d247], a                                 ; $5e92: $ea $47 $d2
    ldh [$8b], a                                  ; $5e95: $e0 $8b
    ld a, $70                                     ; $5e97: $3e $70
    ld [$d248], a                                 ; $5e99: $ea $48 $d2
    ldh [$8a], a                                  ; $5e9c: $e0 $8a
    ret                                           ; $5e9e: $c9


    ld a, $06                                     ; $5e9f: $3e $06
    ldh [$96], a                                  ; $5ea1: $e0 $96
    ldh [rSVBK], a                                ; $5ea3: $e0 $70
    ld a, [$d24c]                                 ; $5ea5: $fa $4c $d2
    cp $3c                                        ; $5ea8: $fe $3c
    jr c, jr_040_5ebf                             ; $5eaa: $38 $13

    ld hl, $d247                                  ; $5eac: $21 $47 $d2
    ld a, [hl]                                    ; $5eaf: $7e
    or a                                          ; $5eb0: $b7
    jr z, jr_040_5ebf                             ; $5eb1: $28 $0c

    sub $01                                       ; $5eb3: $d6 $01
    ld [hl], a                                    ; $5eb5: $77
    ldh [$8b], a                                  ; $5eb6: $e0 $8b
    ld hl, $d248                                  ; $5eb8: $21 $48 $d2
    dec [hl]                                      ; $5ebb: $35
    ld a, [hl]                                    ; $5ebc: $7e
    ldh [$8a], a                                  ; $5ebd: $e0 $8a

jr_040_5ebf:
    ret                                           ; $5ebf: $c9


    ld a, $06                                     ; $5ec0: $3e $06
    ldh [$96], a                                  ; $5ec2: $e0 $96
    ldh [rSVBK], a                                ; $5ec4: $e0 $70
    ld a, $28                                     ; $5ec6: $3e $28
    ld [$d247], a                                 ; $5ec8: $ea $47 $d2
    ld a, $28                                     ; $5ecb: $3e $28
    ld [$d248], a                                 ; $5ecd: $ea $48 $d2
    call Call_000_0684                            ; $5ed0: $cd $84 $06
    ret                                           ; $5ed3: $c9


    ld a, $06                                     ; $5ed4: $3e $06
    ldh [$96], a                                  ; $5ed6: $e0 $96
    ldh [rSVBK], a                                ; $5ed8: $e0 $70
    ld hl, $d247                                  ; $5eda: $21 $47 $d2
    ld a, [hl]                                    ; $5edd: $7e
    or a                                          ; $5ede: $b7
    jr z, jr_040_5eed                             ; $5edf: $28 $0c

    sub $01                                       ; $5ee1: $d6 $01
    ld [hl], a                                    ; $5ee3: $77
    ldh [$8b], a                                  ; $5ee4: $e0 $8b
    ld hl, $d248                                  ; $5ee6: $21 $48 $d2
    dec [hl]                                      ; $5ee9: $35
    ld a, [hl]                                    ; $5eea: $7e
    ldh [$8a], a                                  ; $5eeb: $e0 $8a

jr_040_5eed:
    ret                                           ; $5eed: $c9


    ld a, $06                                     ; $5eee: $3e $06
    ldh [$96], a                                  ; $5ef0: $e0 $96
    ldh [rSVBK], a                                ; $5ef2: $e0 $70
    xor a                                         ; $5ef4: $af
    ld [$d247], a                                 ; $5ef5: $ea $47 $d2
    ld [$d248], a                                 ; $5ef8: $ea $48 $d2
    ret                                           ; $5efb: $c9


    ld a, $06                                     ; $5efc: $3e $06
    ldh [$96], a                                  ; $5efe: $e0 $96
    ldh [rSVBK], a                                ; $5f00: $e0 $70
    ld hl, $d247                                  ; $5f02: $21 $47 $d2
    inc [hl]                                      ; $5f05: $34
    ld a, [hl]                                    ; $5f06: $7e
    ldh [$8b], a                                  ; $5f07: $e0 $8b
    ld hl, $d248                                  ; $5f09: $21 $48 $d2
    inc [hl]                                      ; $5f0c: $34
    ld a, [hl]                                    ; $5f0d: $7e
    ldh [$8a], a                                  ; $5f0e: $e0 $8a
    ret                                           ; $5f10: $c9


    ld a, $06                                     ; $5f11: $3e $06
    ldh [$96], a                                  ; $5f13: $e0 $96
    ldh [rSVBK], a                                ; $5f15: $e0 $70
    ld a, [$d24c]                                 ; $5f17: $fa $4c $d2
    cp $32                                        ; $5f1a: $fe $32
    jr nz, jr_040_5f4a                            ; $5f1c: $20 $2c

    ld a, $01                                     ; $5f1e: $3e $01
    ldh [$96], a                                  ; $5f20: $e0 $96
    ldh [rSVBK], a                                ; $5f22: $e0 $70
    ld hl, $7906                                  ; $5f24: $21 $06 $79
    push hl                                       ; $5f27: $e5
    ld de, $d000                                  ; $5f28: $11 $00 $d0
    ld a, $01                                     ; $5f2b: $3e $01
    call Call_000_069a                            ; $5f2d: $cd $9a $06
    ld hl, $d000                                  ; $5f30: $21 $00 $d0
    ld de, $9000                                  ; $5f33: $11 $00 $90
    ld c, $20                                     ; $5f36: $0e $20
    call Call_000_0468                            ; $5f38: $cd $68 $04
    ld hl, $d800                                  ; $5f3b: $21 $00 $d8
    ld de, $8800                                  ; $5f3e: $11 $00 $88
    ld c, $20                                     ; $5f41: $0e $20
    call Call_000_0468                            ; $5f43: $cd $68 $04
    pop hl                                        ; $5f46: $e1
    jp Jump_040_613c                              ; $5f47: $c3 $3c $61


jr_040_5f4a:
    cp $33                                        ; $5f4a: $fe $33
    jr nz, jr_040_5f7e                            ; $5f4c: $20 $30

    ld a, $01                                     ; $5f4e: $3e $01
    ldh [$96], a                                  ; $5f50: $e0 $96
    ldh [rSVBK], a                                ; $5f52: $e0 $70
    ld hl, $7906                                  ; $5f54: $21 $06 $79
    push hl                                       ; $5f57: $e5
    ld de, $d000                                  ; $5f58: $11 $00 $d0
    ld a, $01                                     ; $5f5b: $3e $01
    call Call_000_069a                            ; $5f5d: $cd $9a $06
    ld hl, $d200                                  ; $5f60: $21 $00 $d2
    ld de, $9200                                  ; $5f63: $11 $00 $92
    ld c, $20                                     ; $5f66: $0e $20
    call Call_000_0468                            ; $5f68: $cd $68 $04
    ld hl, $da00                                  ; $5f6b: $21 $00 $da
    ld de, $8a00                                  ; $5f6e: $11 $00 $8a
    ld c, $20                                     ; $5f71: $0e $20
    call Call_000_0468                            ; $5f73: $cd $68 $04
    pop hl                                        ; $5f76: $e1
    jp Jump_040_613c                              ; $5f77: $c3 $3c $61


    cp $32                                        ; $5f7a: $fe $32
    jr nz, jr_040_5fde                            ; $5f7c: $20 $60

jr_040_5f7e:
    cp $34                                        ; $5f7e: $fe $34
    jr nz, jr_040_5fae                            ; $5f80: $20 $2c

    ld a, $01                                     ; $5f82: $3e $01
    ldh [$96], a                                  ; $5f84: $e0 $96
    ldh [rSVBK], a                                ; $5f86: $e0 $70
    ld hl, $7906                                  ; $5f88: $21 $06 $79
    push hl                                       ; $5f8b: $e5
    ld de, $d000                                  ; $5f8c: $11 $00 $d0
    ld a, $01                                     ; $5f8f: $3e $01
    call Call_000_069a                            ; $5f91: $cd $9a $06
    ld hl, $d400                                  ; $5f94: $21 $00 $d4
    ld de, $9400                                  ; $5f97: $11 $00 $94
    ld c, $20                                     ; $5f9a: $0e $20
    call Call_000_0468                            ; $5f9c: $cd $68 $04
    ld hl, $dc00                                  ; $5f9f: $21 $00 $dc
    ld de, $8c00                                  ; $5fa2: $11 $00 $8c
    ld c, $20                                     ; $5fa5: $0e $20
    call Call_000_0468                            ; $5fa7: $cd $68 $04
    pop hl                                        ; $5faa: $e1
    jp Jump_040_613c                              ; $5fab: $c3 $3c $61


jr_040_5fae:
    cp $35                                        ; $5fae: $fe $35
    jr nz, jr_040_5fde                            ; $5fb0: $20 $2c

    ld a, $01                                     ; $5fb2: $3e $01
    ldh [$96], a                                  ; $5fb4: $e0 $96
    ldh [rSVBK], a                                ; $5fb6: $e0 $70
    ld hl, $7906                                  ; $5fb8: $21 $06 $79
    push hl                                       ; $5fbb: $e5
    ld de, $d000                                  ; $5fbc: $11 $00 $d0
    ld a, $01                                     ; $5fbf: $3e $01
    call Call_000_069a                            ; $5fc1: $cd $9a $06
    ld hl, $d600                                  ; $5fc4: $21 $00 $d6
    ld de, $9600                                  ; $5fc7: $11 $00 $96
    ld c, $20                                     ; $5fca: $0e $20
    call Call_000_0468                            ; $5fcc: $cd $68 $04
    ld hl, $de00                                  ; $5fcf: $21 $00 $de
    ld de, $8e00                                  ; $5fd2: $11 $00 $8e
    ld c, $20                                     ; $5fd5: $0e $20
    call Call_000_0468                            ; $5fd7: $cd $68 $04
    pop hl                                        ; $5fda: $e1
    jp Jump_040_613c                              ; $5fdb: $c3 $3c $61


jr_040_5fde:
    cp $3c                                        ; $5fde: $fe $3c
    jr nz, jr_040_6018                            ; $5fe0: $20 $36

    ld a, $01                                     ; $5fe2: $3e $01
    ldh [$96], a                                  ; $5fe4: $e0 $96
    ldh [rSVBK], a                                ; $5fe6: $e0 $70
    ld hl, $7906                                  ; $5fe8: $21 $06 $79
    push hl                                       ; $5feb: $e5
    ld de, $d000                                  ; $5fec: $11 $00 $d0
    ld a, $02                                     ; $5fef: $3e $02
    call Call_000_069a                            ; $5ff1: $cd $9a $06
    ld hl, $d000                                  ; $5ff4: $21 $00 $d0
    ld de, $b8c0                                  ; $5ff7: $11 $c0 $b8
    ld c, $12                                     ; $5ffa: $0e $12
    call Call_000_0468                            ; $5ffc: $cd $68 $04
    pop hl                                        ; $5fff: $e1
    push hl                                       ; $6000: $e5
    ld de, $d6c0                                  ; $6001: $11 $c0 $d6
    ld a, $03                                     ; $6004: $3e $03
    call Call_000_069a                            ; $6006: $cd $9a $06
    ld hl, $d6c0                                  ; $6009: $21 $c0 $d6
    ld de, $98c0                                  ; $600c: $11 $c0 $98
    ld c, $12                                     ; $600f: $0e $12
    call Call_000_0468                            ; $6011: $cd $68 $04
    pop hl                                        ; $6014: $e1
    jp Jump_040_613c                              ; $6015: $c3 $3c $61


jr_040_6018:
    cp $41                                        ; $6018: $fe $41
    jr nz, jr_040_6052                            ; $601a: $20 $36

    ld a, $01                                     ; $601c: $3e $01
    ldh [$96], a                                  ; $601e: $e0 $96
    ldh [rSVBK], a                                ; $6020: $e0 $70
    ld hl, $7906                                  ; $6022: $21 $06 $79
    push hl                                       ; $6025: $e5
    ld de, $d000                                  ; $6026: $11 $00 $d0
    ld a, $02                                     ; $6029: $3e $02
    call Call_000_069a                            ; $602b: $cd $9a $06
    ld hl, $d120                                  ; $602e: $21 $20 $d1
    ld de, $b8c0                                  ; $6031: $11 $c0 $b8

Call_040_6034:
    ld c, $12                                     ; $6034: $0e $12
    call Call_000_0468                            ; $6036: $cd $68 $04
    pop hl                                        ; $6039: $e1
    push hl                                       ; $603a: $e5
    ld de, $d6c0                                  ; $603b: $11 $c0 $d6
    ld a, $03                                     ; $603e: $3e $03
    call Call_000_069a                            ; $6040: $cd $9a $06
    ld hl, $d7e0                                  ; $6043: $21 $e0 $d7
    ld de, $98c0                                  ; $6046: $11 $c0 $98
    ld c, $12                                     ; $6049: $0e $12
    call Call_000_0468                            ; $604b: $cd $68 $04
    pop hl                                        ; $604e: $e1
    jp Jump_040_613c                              ; $604f: $c3 $3c $61


jr_040_6052:
    cp $69                                        ; $6052: $fe $69
    jr nz, jr_040_608c                            ; $6054: $20 $36

    ld a, $01                                     ; $6056: $3e $01
    ldh [$96], a                                  ; $6058: $e0 $96
    ldh [rSVBK], a                                ; $605a: $e0 $70
    ld hl, $7906                                  ; $605c: $21 $06 $79
    push hl                                       ; $605f: $e5
    ld de, $d000                                  ; $6060: $11 $00 $d0
    ld a, $02                                     ; $6063: $3e $02
    call Call_000_069a                            ; $6065: $cd $9a $06
    ld hl, $d240                                  ; $6068: $21 $40 $d2
    ld de, $b8c0                                  ; $606b: $11 $c0 $b8
    ld c, $12                                     ; $606e: $0e $12
    call Call_000_0468                            ; $6070: $cd $68 $04
    pop hl                                        ; $6073: $e1
    push hl                                       ; $6074: $e5
    ld de, $d6c0                                  ; $6075: $11 $c0 $d6
    ld a, $03                                     ; $6078: $3e $03
    call Call_000_069a                            ; $607a: $cd $9a $06
    ld hl, $d900                                  ; $607d: $21 $00 $d9
    ld de, $98c0                                  ; $6080: $11 $c0 $98
    ld c, $12                                     ; $6083: $0e $12
    call Call_000_0468                            ; $6085: $cd $68 $04
    pop hl                                        ; $6088: $e1
    jp Jump_040_613c                              ; $6089: $c3 $3c $61


jr_040_608c:
    cp $6e                                        ; $608c: $fe $6e
    jr nz, jr_040_60c6                            ; $608e: $20 $36

    ld a, $01                                     ; $6090: $3e $01
    ldh [$96], a                                  ; $6092: $e0 $96
    ldh [rSVBK], a                                ; $6094: $e0 $70
    ld hl, $7906                                  ; $6096: $21 $06 $79
    push hl                                       ; $6099: $e5
    ld de, $d000                                  ; $609a: $11 $00 $d0
    ld a, $02                                     ; $609d: $3e $02
    call Call_000_069a                            ; $609f: $cd $9a $06
    ld hl, $d360                                  ; $60a2: $21 $60 $d3
    ld de, $b8c0                                  ; $60a5: $11 $c0 $b8
    ld c, $12                                     ; $60a8: $0e $12
    call Call_000_0468                            ; $60aa: $cd $68 $04
    pop hl                                        ; $60ad: $e1
    push hl                                       ; $60ae: $e5
    ld de, $d6c0                                  ; $60af: $11 $c0 $d6
    ld a, $03                                     ; $60b2: $3e $03
    call Call_000_069a                            ; $60b4: $cd $9a $06
    ld hl, $da20                                  ; $60b7: $21 $20 $da
    ld de, $98c0                                  ; $60ba: $11 $c0 $98
    ld c, $12                                     ; $60bd: $0e $12
    call Call_000_0468                            ; $60bf: $cd $68 $04
    pop hl                                        ; $60c2: $e1
    jp Jump_040_613c                              ; $60c3: $c3 $3c $61


jr_040_60c6:
    cp $73                                        ; $60c6: $fe $73
    jr nz, jr_040_6100                            ; $60c8: $20 $36

    ld a, $01                                     ; $60ca: $3e $01
    ldh [$96], a                                  ; $60cc: $e0 $96
    ldh [rSVBK], a                                ; $60ce: $e0 $70
    ld hl, $7906                                  ; $60d0: $21 $06 $79
    push hl                                       ; $60d3: $e5
    ld de, $d000                                  ; $60d4: $11 $00 $d0
    ld a, $02                                     ; $60d7: $3e $02
    call Call_000_069a                            ; $60d9: $cd $9a $06
    ld hl, $d480                                  ; $60dc: $21 $80 $d4
    ld de, $b8c0                                  ; $60df: $11 $c0 $b8
    ld c, $12                                     ; $60e2: $0e $12
    call Call_000_0468                            ; $60e4: $cd $68 $04
    pop hl                                        ; $60e7: $e1
    push hl                                       ; $60e8: $e5
    ld de, $d6c0                                  ; $60e9: $11 $c0 $d6
    ld a, $03                                     ; $60ec: $3e $03
    call Call_000_069a                            ; $60ee: $cd $9a $06
    ld hl, $db40                                  ; $60f1: $21 $40 $db
    ld de, $98c0                                  ; $60f4: $11 $c0 $98
    ld c, $12                                     ; $60f7: $0e $12
    call Call_000_0468                            ; $60f9: $cd $68 $04
    pop hl                                        ; $60fc: $e1
    jp Jump_040_613c                              ; $60fd: $c3 $3c $61


jr_040_6100:
    cp $70                                        ; $6100: $fe $70
    jr nz, jr_040_613c                            ; $6102: $20 $38

    rst $08                                       ; $6104: $cf
    and l                                         ; $6105: $a5
    ld a, $01                                     ; $6106: $3e $01
    ldh [$96], a                                  ; $6108: $e0 $96
    ldh [rSVBK], a                                ; $610a: $e0 $70
    ld hl, $7906                                  ; $610c: $21 $06 $79
    push hl                                       ; $610f: $e5
    ld de, $d000                                  ; $6110: $11 $00 $d0
    ld a, $02                                     ; $6113: $3e $02
    call Call_000_069a                            ; $6115: $cd $9a $06
    ld hl, $d5a0                                  ; $6118: $21 $a0 $d5
    ld de, $b8c0                                  ; $611b: $11 $c0 $b8
    ld c, $12                                     ; $611e: $0e $12
    call Call_000_0468                            ; $6120: $cd $68 $04
    pop hl                                        ; $6123: $e1
    push hl                                       ; $6124: $e5
    ld de, $d7e0                                  ; $6125: $11 $e0 $d7
    ld a, $03                                     ; $6128: $3e $03
    call Call_000_069a                            ; $612a: $cd $9a $06
    ld hl, $dd80                                  ; $612d: $21 $80 $dd
    ld de, $98c0                                  ; $6130: $11 $c0 $98
    ld c, $12                                     ; $6133: $0e $12
    call Call_000_0468                            ; $6135: $cd $68 $04
    pop hl                                        ; $6138: $e1
    jp Jump_040_613c                              ; $6139: $c3 $3c $61


Jump_040_613c:
jr_040_613c:
    ld a, $06                                     ; $613c: $3e $06
    ldh [$96], a                                  ; $613e: $e0 $96
    ldh [rSVBK], a                                ; $6140: $e0 $70
    ret                                           ; $6142: $c9


    ld a, $06                                     ; $6143: $3e $06
    ldh [$96], a                                  ; $6145: $e0 $96
    ldh [rSVBK], a                                ; $6147: $e0 $70
    ld a, $78                                     ; $6149: $3e $78
    ld [$d247], a                                 ; $614b: $ea $47 $d2
    ld a, $48                                     ; $614e: $3e $48
    ld [$d248], a                                 ; $6150: $ea $48 $d2
    ld a, $48                                     ; $6153: $3e $48
    ldh [rWY], a                                  ; $6155: $e0 $4a
    ld a, $78                                     ; $6157: $3e $78
    ld [$d24b], a                                 ; $6159: $ea $4b $d2
    ld a, $01                                     ; $615c: $3e $01
    ld hl, $5e26                                  ; $615e: $21 $26 $5e
    call Call_000_23e8                            ; $6161: $cd $e8 $23
    ldh a, [rLCDC]                                ; $6164: $f0 $40
    and $bf                                       ; $6166: $e6 $bf
    ldh [rLCDC], a                                ; $6168: $e0 $40
    ret                                           ; $616a: $c9


    ld a, $06                                     ; $616b: $3e $06
    ldh [$96], a                                  ; $616d: $e0 $96
    ldh [rSVBK], a                                ; $616f: $e0 $70
    ld a, [$d24b]                                 ; $6171: $fa $4b $d2
    sub $06                                       ; $6174: $d6 $06
    jr c, jr_040_6181                             ; $6176: $38 $09

    cp $07                                        ; $6178: $fe $07
    jr nc, jr_040_617e                            ; $617a: $30 $02

    ld a, $07                                     ; $617c: $3e $07

jr_040_617e:
    ld [$d24b], a                                 ; $617e: $ea $4b $d2

jr_040_6181:
    ld hl, $d247                                  ; $6181: $21 $47 $d2
    ld a, [hl]                                    ; $6184: $7e
    or a                                          ; $6185: $b7
    jr z, jr_040_618d                             ; $6186: $28 $05

    sub $06                                       ; $6188: $d6 $06
    ld [hl], a                                    ; $618a: $77
    ldh [$8b], a                                  ; $618b: $e0 $8b

jr_040_618d:
    ld hl, $d248                                  ; $618d: $21 $48 $d2
    ld a, [hl]                                    ; $6190: $7e
    ldh [$8a], a                                  ; $6191: $e0 $8a
    ret                                           ; $6193: $c9


    ld a, $06                                     ; $6194: $3e $06
    ldh [$96], a                                  ; $6196: $e0 $96
    ldh [rSVBK], a                                ; $6198: $e0 $70
    ld a, $00                                     ; $619a: $3e $00
    ld [$d247], a                                 ; $619c: $ea $47 $d2
    ldh [$8b], a                                  ; $619f: $e0 $8b
    ld a, $00                                     ; $61a1: $3e $00
    ld [$d248], a                                 ; $61a3: $ea $48 $d2
    ldh [$8a], a                                  ; $61a6: $e0 $8a
    ret                                           ; $61a8: $c9


    ret                                           ; $61a9: $c9


    ld a, $06                                     ; $61aa: $3e $06
    ldh [$96], a                                  ; $61ac: $e0 $96
    ldh [rSVBK], a                                ; $61ae: $e0 $70
    ld a, [$d24c]                                 ; $61b0: $fa $4c $d2
    cp $3c                                        ; $61b3: $fe $3c
    jr c, jr_040_61ca                             ; $61b5: $38 $13

    ld hl, $d247                                  ; $61b7: $21 $47 $d2
    ld a, [hl]                                    ; $61ba: $7e
    or a                                          ; $61bb: $b7
    jr z, jr_040_61ca                             ; $61bc: $28 $0c

    sub $01                                       ; $61be: $d6 $01
    ld [hl], a                                    ; $61c0: $77
    ldh [$8b], a                                  ; $61c1: $e0 $8b
    ld hl, $d248                                  ; $61c3: $21 $48 $d2
    dec [hl]                                      ; $61c6: $35
    ld a, [hl]                                    ; $61c7: $7e
    ldh [$8a], a                                  ; $61c8: $e0 $8a

jr_040_61ca:
    ret                                           ; $61ca: $c9


Call_040_61cb:
    call Call_040_664b                            ; $61cb: $cd $4b $66
    ld hl, $4908                                  ; $61ce: $21 $08 $49
    call Call_040_5bf9                            ; $61d1: $cd $f9 $5b
    ld c, $7f                                     ; $61d4: $0e $7f
    call Call_000_258d                            ; $61d6: $cd $8d $25
    rst $08                                       ; $61d9: $cf

    db $5e

    ld c, $3c                                     ; $61db: $0e $3c

Jump_040_61dd:
    call Call_000_2e3b                            ; $61dd: $cd $3b $2e
    call Call_040_6238                            ; $61e0: $cd $38 $62
    jr nz, jr_040_6208                            ; $61e3: $20 $23

    dec c                                         ; $61e5: $0d
    jp nz, Jump_040_61dd                          ; $61e6: $c2 $dd $61

    ld a, $80                                     ; $61e9: $3e $80
    ldh [$8a], a                                  ; $61eb: $e0 $8a
    ld c, $3c                                     ; $61ed: $0e $3c

Jump_040_61ef:
    call Call_000_2e3b                            ; $61ef: $cd $3b $2e
    call Call_040_6238                            ; $61f2: $cd $38 $62
    jr nz, jr_040_6208                            ; $61f5: $20 $11

    dec c                                         ; $61f7: $0d
    jp nz, Jump_040_61ef                          ; $61f8: $c2 $ef $61

    ld c, $08                                     ; $61fb: $0e $08
    call Call_000_25a1                            ; $61fd: $cd $a1 $25
    call Call_040_5c62                            ; $6200: $cd $62 $5c
    jp nz, Jump_040_6208                          ; $6203: $c2 $08 $62

    xor a                                         ; $6206: $af
    ret                                           ; $6207: $c9


Jump_040_6208:
jr_040_6208:
    ld a, $80                                     ; $6208: $3e $80
    ldh [$8a], a                                  ; $620a: $e0 $8a
    ld c, $10                                     ; $620c: $0e $10
    call Call_000_25a1                            ; $620e: $cd $a1 $25
    call Call_000_2625                            ; $6211: $cd $25 $26
    xor a                                         ; $6214: $af
    inc a                                         ; $6215: $3c
    ret                                           ; $6216: $c9


Call_040_6217:
    ld a, [$cb40]                                 ; $6217: $fa $40 $cb
    cp $10                                        ; $621a: $fe $10
    jr z, jr_040_622a                             ; $621c: $28 $0c

    ldh a, [$90]                                  ; $621e: $f0 $90
    bit 3, a                                      ; $6220: $cb $5f
    jr nz, jr_040_6234                            ; $6222: $20 $10

    bit 0, a                                      ; $6224: $cb $47
    jr nz, jr_040_6234                            ; $6226: $20 $0c

    xor a                                         ; $6228: $af
    ret                                           ; $6229: $c9


jr_040_622a:
    ld a, $20                                     ; $622a: $3e $20
    ld [$cb00], a                                 ; $622c: $ea $00 $cb
    ld a, $01                                     ; $622f: $3e $01
    call Call_000_3081                            ; $6231: $cd $81 $30

jr_040_6234:
    ld a, $01                                     ; $6234: $3e $01
    or a                                          ; $6236: $b7
    ret                                           ; $6237: $c9


Call_040_6238:
    ld a, [$cb40]                                 ; $6238: $fa $40 $cb
    cp $10                                        ; $623b: $fe $10
    jr z, jr_040_624b                             ; $623d: $28 $0c

    ldh a, [$90]                                  ; $623f: $f0 $90
    bit 3, a                                      ; $6241: $cb $5f
    jr nz, jr_040_6255                            ; $6243: $20 $10

    bit 0, a                                      ; $6245: $cb $47
    jr nz, jr_040_6255                            ; $6247: $20 $0c

    xor a                                         ; $6249: $af
    ret                                           ; $624a: $c9


jr_040_624b:
    ld a, $20                                     ; $624b: $3e $20
    ld [$cb00], a                                 ; $624d: $ea $00 $cb
    ld a, $01                                     ; $6250: $3e $01
    call Call_000_3081                            ; $6252: $cd $81 $30

jr_040_6255:
    xor a                                         ; $6255: $af
    ret                                           ; $6256: $c9


    rst $38                                       ; $6257: $ff
    ld a, a                                       ; $6258: $7f
    rst $38                                       ; $6259: $ff
    ld l, e                                       ; $625a: $6b
    ld e, b                                       ; $625b: $58
    ld e, $00                                     ; $625c: $1e $00
    nop                                           ; $625e: $00
    ld h, b                                       ; $625f: $60
    ld bc, $7fff                                  ; $6260: $01 $ff $7f
    rst $28                                       ; $6263: $ef
    dec a                                         ; $6264: $3d
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    add a                                         ; $6267: $87
    ld h, l                                       ; $6268: $65
    rst $38                                       ; $6269: $ff
    ld a, a                                       ; $626a: $7f
    sub h                                         ; $626b: $94
    ld d, d                                       ; $626c: $52
    nop                                           ; $626d: $00
    nop                                           ; $626e: $00
    ld e, a                                       ; $626f: $5f
    ld c, d                                       ; $6270: $4a
    cp a                                          ; $6271: $bf
    ld e, a                                       ; $6272: $5f
    rst $18                                       ; $6273: $df
    jr z, jr_040_6276                             ; $6274: $28 $00

jr_040_6276:
    nop                                           ; $6276: $00
    ld a, [c]                                     ; $6277: $f2
    inc bc                                        ; $6278: $03
    ld c, e                                       ; $6279: $4b
    inc bc                                        ; $627a: $03
    ret z                                         ; $627b: $c8

    ld [de], a                                    ; $627c: $12
    ldh [rNR24], a                                ; $627d: $e0 $19
    jr nz, jr_040_6282                            ; $627f: $20 $01

    db $10                                        ; $6281: $10

jr_040_6282:
    ld [bc], a                                    ; $6282: $02
    jr jr_040_62a8                                ; $6283: $18 $23

    rst $38                                       ; $6285: $ff
    ld d, e                                       ; $6286: $53
    jr nz, jr_040_628a                            ; $6287: $20 $01

    rrca                                          ; $6289: $0f

jr_040_628a:
    nop                                           ; $628a: $00
    jr @+$23                                      ; $628b: $18 $21

    sbc a                                         ; $628d: $9f
    ld d, d                                       ; $628e: $52
    jr nz, jr_040_6292                            ; $628f: $20 $01

    nop                                           ; $6291: $00

jr_040_6292:
    ld b, b                                       ; $6292: $40
    add h                                         ; $6293: $84
    ld d, c                                       ; $6294: $51
    db $f4                                        ; $6295: $f4
    ld a, a                                       ; $6296: $7f

Call_040_6297:
    ld a, h                                       ; $6297: $7c
    xor d                                         ; $6298: $aa
    add a                                         ; $6299: $87
    jr c, jr_040_62a1                             ; $629a: $38 $05

    ld a, $ff                                     ; $629c: $3e $ff
    ld h, a                                       ; $629e: $67
    ld l, a                                       ; $629f: $6f
    ret                                           ; $62a0: $c9


jr_040_62a1:
    bit 7, h                                      ; $62a1: $cb $7c
    jr z, jr_040_62ab                             ; $62a3: $28 $06

    xor a                                         ; $62a5: $af
    sub l                                         ; $62a6: $95
    ld l, a                                       ; $62a7: $6f

jr_040_62a8:
    sbc a                                         ; $62a8: $9f
    sub h                                         ; $62a9: $94
    ld h, a                                       ; $62aa: $67

jr_040_62ab:
    bit 7, d                                      ; $62ab: $cb $7a
    jr z, jr_040_62b5                             ; $62ad: $28 $06

    xor a                                         ; $62af: $af
    sub e                                         ; $62b0: $93
    ld e, a                                       ; $62b1: $5f
    sbc a                                         ; $62b2: $9f
    sub d                                         ; $62b3: $92
    ld d, a                                       ; $62b4: $57

jr_040_62b5:
    ld a, h                                       ; $62b5: $7c
    ld h, l                                       ; $62b6: $65
    ld l, $00                                     ; $62b7: $2e $00
    jp Jump_000_0ddb                              ; $62b9: $c3 $db $0d


Call_040_62bc:
    ld hl, $d418                                  ; $62bc: $21 $18 $d4
    ld a, [hl+]                                   ; $62bf: $2a
    ld b, [hl]                                    ; $62c0: $46
    ld c, a                                       ; $62c1: $4f
    rst $18                                       ; $62c2: $df

    db $02, $10

    call Call_000_11ba                            ; $62c5: $cd $ba $11
    ret                                           ; $62c8: $c9


    xor a                                         ; $62c9: $af
    ld [$d36b], a                                 ; $62ca: $ea $6b $d3
    call Call_040_62bc                            ; $62cd: $cd $bc $62

Jump_040_62d0:
    push hl                                       ; $62d0: $e5
    ld hl, $d404                                  ; $62d1: $21 $04 $d4
    ld a, [hl+]                                   ; $62d4: $2a
    ld h, [hl]                                    ; $62d5: $66
    ld l, a                                       ; $62d6: $6f
    add hl, de                                    ; $62d7: $19
    pop de                                        ; $62d8: $d1
    push hl                                       ; $62d9: $e5
    ld hl, $d401                                  ; $62da: $21 $01 $d4
    ld a, [hl+]                                   ; $62dd: $2a
    ld h, [hl]                                    ; $62de: $66
    ld l, a                                       ; $62df: $6f
    add hl, de                                    ; $62e0: $19
    ld a, [$d443]                                 ; $62e1: $fa $43 $d4
    cp $01                                        ; $62e4: $fe $01
    jp z, Jump_040_637c                           ; $62e6: $ca $7c $63

    cp $02                                        ; $62e9: $fe $02
    jp z, Jump_040_637c                           ; $62eb: $ca $7c $63

    push hl                                       ; $62ee: $e5
    ld a, [$c329]                                 ; $62ef: $fa $29 $c3
    ld h, a                                       ; $62f2: $67
    ld l, $00                                     ; $62f3: $2e $00
    ld de, $0080                                  ; $62f5: $11 $80 $00
    add hl, de                                    ; $62f8: $19
    ld b, h                                       ; $62f9: $44
    ld c, l                                       ; $62fa: $4d
    pop de                                        ; $62fb: $d1
    push de                                       ; $62fc: $d5
    call Call_000_08ac                            ; $62fd: $cd $ac $08
    bit 7, h                                      ; $6300: $cb $7c
    pop hl                                        ; $6302: $e1
    jr nz, jr_040_630e                            ; $6303: $20 $09

    ld hl, $d36b                                  ; $6305: $21 $6b $d3
    set 1, [hl]                                   ; $6308: $cb $ce
    ld h, b                                       ; $630a: $60
    ld l, c                                       ; $630b: $69
    jr jr_040_632c                                ; $630c: $18 $1e

jr_040_630e:
    push hl                                       ; $630e: $e5
    ld a, [$c32b]                                 ; $630f: $fa $2b $c3
    ld h, a                                       ; $6312: $67
    ld l, $00                                     ; $6313: $2e $00
    ld de, $ff80                                  ; $6315: $11 $80 $ff
    add hl, de                                    ; $6318: $19
    ld b, h                                       ; $6319: $44
    ld c, l                                       ; $631a: $4d
    pop de                                        ; $631b: $d1
    push de                                       ; $631c: $d5
    call Call_000_08ac                            ; $631d: $cd $ac $08
    bit 7, h                                      ; $6320: $cb $7c
    pop hl                                        ; $6322: $e1
    jr z, jr_040_632c                             ; $6323: $28 $07

    ld hl, $d36b                                  ; $6325: $21 $6b $d3
    set 0, [hl]                                   ; $6328: $cb $c6
    ld h, b                                       ; $632a: $60
    ld l, c                                       ; $632b: $69

jr_040_632c:
    ld a, l                                       ; $632c: $7d
    ld [$d426], a                                 ; $632d: $ea $26 $d4
    ld a, h                                       ; $6330: $7c
    ld [$d427], a                                 ; $6331: $ea $27 $d4
    pop hl                                        ; $6334: $e1
    push hl                                       ; $6335: $e5
    ld a, [$c32a]                                 ; $6336: $fa $2a $c3
    ld h, a                                       ; $6339: $67
    ld l, $00                                     ; $633a: $2e $00
    ld de, $0080                                  ; $633c: $11 $80 $00
    add hl, de                                    ; $633f: $19
    ld b, h                                       ; $6340: $44
    ld c, l                                       ; $6341: $4d
    pop de                                        ; $6342: $d1
    push de                                       ; $6343: $d5
    call Call_000_08ac                            ; $6344: $cd $ac $08
    bit 7, h                                      ; $6347: $cb $7c
    pop hl                                        ; $6349: $e1
    jr nz, jr_040_6355                            ; $634a: $20 $09

    ld hl, $d36b                                  ; $634c: $21 $6b $d3
    set 3, [hl]                                   ; $634f: $cb $de
    ld h, b                                       ; $6351: $60
    ld l, c                                       ; $6352: $69
    jr jr_040_6373                                ; $6353: $18 $1e

jr_040_6355:
    push hl                                       ; $6355: $e5
    ld a, [$c32c]                                 ; $6356: $fa $2c $c3
    ld h, a                                       ; $6359: $67
    ld l, $00                                     ; $635a: $2e $00
    ld de, $fd80                                  ; $635c: $11 $80 $fd
    add hl, de                                    ; $635f: $19
    ld b, h                                       ; $6360: $44
    ld c, l                                       ; $6361: $4d
    pop de                                        ; $6362: $d1
    push de                                       ; $6363: $d5
    call Call_000_08ac                            ; $6364: $cd $ac $08
    bit 7, h                                      ; $6367: $cb $7c
    pop hl                                        ; $6369: $e1
    jr z, jr_040_6373                             ; $636a: $28 $07

    ld hl, $d36b                                  ; $636c: $21 $6b $d3
    set 2, [hl]                                   ; $636f: $cb $d6
    ld h, b                                       ; $6371: $60
    ld l, c                                       ; $6372: $69

jr_040_6373:
    ld a, l                                       ; $6373: $7d
    ld [$d428], a                                 ; $6374: $ea $28 $d4
    ld a, h                                       ; $6377: $7c
    ld [$d429], a                                 ; $6378: $ea $29 $d4
    ret                                           ; $637b: $c9


Jump_040_637c:
    push hl                                       ; $637c: $e5
    ld a, [$d441]                                 ; $637d: $fa $41 $d4
    ld h, a                                       ; $6380: $67
    ld l, $00                                     ; $6381: $2e $00
    ld de, $0020                                  ; $6383: $11 $20 $00
    add hl, de                                    ; $6386: $19
    ld b, h                                       ; $6387: $44
    ld c, l                                       ; $6388: $4d
    pop de                                        ; $6389: $d1
    push de                                       ; $638a: $d5
    call Call_000_08ac                            ; $638b: $cd $ac $08
    bit 7, h                                      ; $638e: $cb $7c
    pop hl                                        ; $6390: $e1
    jr nz, jr_040_639c                            ; $6391: $20 $09

    ld hl, $d36b                                  ; $6393: $21 $6b $d3
    set 1, [hl]                                   ; $6396: $cb $ce
    ld h, b                                       ; $6398: $60
    ld l, c                                       ; $6399: $69
    jr jr_040_63bc                                ; $639a: $18 $20

jr_040_639c:
    push hl                                       ; $639c: $e5
    ld a, [$d441]                                 ; $639d: $fa $41 $d4
    add $05                                       ; $63a0: $c6 $05
    ld h, a                                       ; $63a2: $67
    ld l, $00                                     ; $63a3: $2e $00
    ld de, $ffe0                                  ; $63a5: $11 $e0 $ff
    add hl, de                                    ; $63a8: $19
    ld b, h                                       ; $63a9: $44
    ld c, l                                       ; $63aa: $4d
    pop de                                        ; $63ab: $d1
    push de                                       ; $63ac: $d5
    call Call_000_08ac                            ; $63ad: $cd $ac $08
    bit 7, h                                      ; $63b0: $cb $7c
    pop hl                                        ; $63b2: $e1
    jr z, jr_040_63bc                             ; $63b3: $28 $07

    ld hl, $d36b                                  ; $63b5: $21 $6b $d3
    set 0, [hl]                                   ; $63b8: $cb $c6
    ld h, b                                       ; $63ba: $60
    ld l, c                                       ; $63bb: $69

jr_040_63bc:
    ld a, l                                       ; $63bc: $7d
    ld [$d426], a                                 ; $63bd: $ea $26 $d4
    ld a, h                                       ; $63c0: $7c
    ld [$d427], a                                 ; $63c1: $ea $27 $d4
    pop hl                                        ; $63c4: $e1
    push hl                                       ; $63c5: $e5
    ld a, [$d442]                                 ; $63c6: $fa $42 $d4
    ld h, a                                       ; $63c9: $67
    ld l, $00                                     ; $63ca: $2e $00
    ld de, $0020                                  ; $63cc: $11 $20 $00
    add hl, de                                    ; $63cf: $19
    ld b, h                                       ; $63d0: $44
    ld c, l                                       ; $63d1: $4d
    pop de                                        ; $63d2: $d1
    push de                                       ; $63d3: $d5
    call Call_000_08ac                            ; $63d4: $cd $ac $08
    bit 7, h                                      ; $63d7: $cb $7c
    pop hl                                        ; $63d9: $e1
    jr nz, jr_040_63e5                            ; $63da: $20 $09

    ld hl, $d36b                                  ; $63dc: $21 $6b $d3
    set 3, [hl]                                   ; $63df: $cb $de
    ld h, b                                       ; $63e1: $60
    ld l, c                                       ; $63e2: $69
    jr jr_040_6405                                ; $63e3: $18 $20

jr_040_63e5:
    push hl                                       ; $63e5: $e5
    ld a, [$d442]                                 ; $63e6: $fa $42 $d4
    add $04                                       ; $63e9: $c6 $04
    ld h, a                                       ; $63eb: $67
    ld l, $00                                     ; $63ec: $2e $00
    ld de, $ffe0                                  ; $63ee: $11 $e0 $ff
    add hl, de                                    ; $63f1: $19
    ld b, h                                       ; $63f2: $44
    ld c, l                                       ; $63f3: $4d
    pop de                                        ; $63f4: $d1
    push de                                       ; $63f5: $d5
    call Call_000_08ac                            ; $63f6: $cd $ac $08
    bit 7, h                                      ; $63f9: $cb $7c
    pop hl                                        ; $63fb: $e1
    jr z, jr_040_6405                             ; $63fc: $28 $07

    ld hl, $d36b                                  ; $63fe: $21 $6b $d3
    set 2, [hl]                                   ; $6401: $cb $d6
    ld h, b                                       ; $6403: $60
    ld l, c                                       ; $6404: $69

jr_040_6405:
    ld a, l                                       ; $6405: $7d
    ld [$d428], a                                 ; $6406: $ea $28 $d4
    ld a, h                                       ; $6409: $7c
    ld [$d429], a                                 ; $640a: $ea $29 $d4
    ret                                           ; $640d: $c9


    add sp, -$10                                  ; $640e: $e8 $f0
    xor a                                         ; $6410: $af
    ld [$d36b], a                                 ; $6411: $ea $6b $d3
    call Call_040_62bc                            ; $6414: $cd $bc $62
    push de                                       ; $6417: $d5
    push hl                                       ; $6418: $e5
    ld hl, sp+$06                                 ; $6419: $f8 $06
    ld a, e                                       ; $641b: $7b
    ld [hl+], a                                   ; $641c: $22
    ld [hl], d                                    ; $641d: $72
    pop de                                        ; $641e: $d1
    ld hl, sp+$02                                 ; $641f: $f8 $02
    ld a, e                                       ; $6421: $7b
    ld [hl+], a                                   ; $6422: $22
    ld [hl], d                                    ; $6423: $72
    ld l, e                                       ; $6424: $6b
    ld h, d                                       ; $6425: $62
    pop de                                        ; $6426: $d1
    push hl                                       ; $6427: $e5
    ld hl, $d404                                  ; $6428: $21 $04 $d4
    ld a, [hl+]                                   ; $642b: $2a
    ld h, [hl]                                    ; $642c: $66
    ld l, a                                       ; $642d: $6f
    add hl, de                                    ; $642e: $19
    pop de                                        ; $642f: $d1
    push hl                                       ; $6430: $e5
    ld hl, $d401                                  ; $6431: $21 $01 $d4
    ld a, [hl+]                                   ; $6434: $2a
    ld h, [hl]                                    ; $6435: $66
    ld l, a                                       ; $6436: $6f
    add hl, de                                    ; $6437: $19
    ld e, l                                       ; $6438: $5d
    ld d, h                                       ; $6439: $54
    ld a, [$d443]                                 ; $643a: $fa $43 $d4
    cp $01                                        ; $643d: $fe $01
    jp z, Jump_040_6591                           ; $643f: $ca $91 $65

    cp $02                                        ; $6442: $fe $02
    jp z, Jump_040_6591                           ; $6444: $ca $91 $65

    ld a, [$c329]                                 ; $6447: $fa $29 $c3
    ld h, a                                       ; $644a: $67
    ld l, $00                                     ; $644b: $2e $00
    ld bc, $0080                                  ; $644d: $01 $80 $00
    add hl, bc                                    ; $6450: $09
    ld a, l                                       ; $6451: $7d
    sub e                                         ; $6452: $93
    ld l, a                                       ; $6453: $6f
    ld a, h                                       ; $6454: $7c
    sbc d                                         ; $6455: $9a
    ld h, a                                       ; $6456: $67
    bit 7, h                                      ; $6457: $cb $7c
    jr nz, jr_040_6465                            ; $6459: $20 $0a

    call Call_040_6491                            ; $645b: $cd $91 $64
    ld hl, $d36b                                  ; $645e: $21 $6b $d3
    set 1, [hl]                                   ; $6461: $cb $ce
    jr jr_040_64b4                                ; $6463: $18 $4f

jr_040_6465:
    ld a, [$c32b]                                 ; $6465: $fa $2b $c3
    ld h, a                                       ; $6468: $67
    ld l, $00                                     ; $6469: $2e $00
    ld bc, $ff80                                  ; $646b: $01 $80 $ff
    add hl, bc                                    ; $646e: $09
    ld a, l                                       ; $646f: $7d
    sub e                                         ; $6470: $93
    ld l, a                                       ; $6471: $6f
    ld a, h                                       ; $6472: $7c
    sbc d                                         ; $6473: $9a
    ld h, a                                       ; $6474: $67
    bit 7, h                                      ; $6475: $cb $7c
    jr z, jr_040_6489                             ; $6477: $28 $10

    xor a                                         ; $6479: $af
    sub l                                         ; $647a: $95
    ld l, a                                       ; $647b: $6f
    sbc a                                         ; $647c: $9f
    sub h                                         ; $647d: $94
    ld h, a                                       ; $647e: $67
    call Call_040_6491                            ; $647f: $cd $91 $64
    ld hl, $d36b                                  ; $6482: $21 $6b $d3
    set 0, [hl]                                   ; $6485: $cb $c6
    jr jr_040_64b4                                ; $6487: $18 $2b

jr_040_6489:
    ld hl, sp+$06                                 ; $6489: $f8 $06
    xor a                                         ; $648b: $af
    ld [hl+], a                                   ; $648c: $22
    ld [hl+], a                                   ; $648d: $22
    ld [hl+], a                                   ; $648e: $22
    jr jr_040_64b4                                ; $648f: $18 $23

Call_040_6491:
    ld a, h                                       ; $6491: $7c
    ld h, l                                       ; $6492: $65
    ld l, $00                                     ; $6493: $2e $00
    push af                                       ; $6495: $f5
    push hl                                       ; $6496: $e5
    ld hl, sp+$08                                 ; $6497: $f8 $08
    ld a, [hl+]                                   ; $6499: $2a
    ld d, [hl]                                    ; $649a: $56
    ld e, a                                       ; $649b: $5f
    bit 7, d                                      ; $649c: $cb $7a
    jr z, jr_040_64a6                             ; $649e: $28 $06

    xor a                                         ; $64a0: $af
    sub e                                         ; $64a1: $93
    ld e, a                                       ; $64a2: $5f
    sbc a                                         ; $64a3: $9f
    sub d                                         ; $64a4: $92
    ld d, a                                       ; $64a5: $57

jr_040_64a6:
    pop hl                                        ; $64a6: $e1
    pop af                                        ; $64a7: $f1
    call Call_000_0ddb                            ; $64a8: $cd $db $0d
    ld e, l                                       ; $64ab: $5d
    ld d, h                                       ; $64ac: $54
    ld hl, sp+$0a                                 ; $64ad: $f8 $0a
    ld [hl-], a                                   ; $64af: $32
    ld a, d                                       ; $64b0: $7a
    ld [hl-], a                                   ; $64b1: $32
    ld [hl], e                                    ; $64b2: $73
    ret                                           ; $64b3: $c9


jr_040_64b4:
    ld a, [$c32a]                                 ; $64b4: $fa $2a $c3
    ld h, a                                       ; $64b7: $67
    ld l, $00                                     ; $64b8: $2e $00
    ld bc, $0080                                  ; $64ba: $01 $80 $00
    add hl, bc                                    ; $64bd: $09
    pop de                                        ; $64be: $d1
    ld a, l                                       ; $64bf: $7d
    sub e                                         ; $64c0: $93
    ld l, a                                       ; $64c1: $6f
    ld a, h                                       ; $64c2: $7c
    sbc d                                         ; $64c3: $9a
    ld h, a                                       ; $64c4: $67
    bit 7, h                                      ; $64c5: $cb $7c
    jr nz, jr_040_64d3                            ; $64c7: $20 $0a

    call Call_040_64ff                            ; $64c9: $cd $ff $64
    ld hl, $d36b                                  ; $64cc: $21 $6b $d3
    set 3, [hl]                                   ; $64cf: $cb $de
    jr jr_040_6522                                ; $64d1: $18 $4f

jr_040_64d3:
    ld a, [$c32c]                                 ; $64d3: $fa $2c $c3
    ld h, a                                       ; $64d6: $67
    ld l, $00                                     ; $64d7: $2e $00
    ld bc, $fd80                                  ; $64d9: $01 $80 $fd
    add hl, bc                                    ; $64dc: $09
    ld a, l                                       ; $64dd: $7d
    sub e                                         ; $64de: $93
    ld l, a                                       ; $64df: $6f
    ld a, h                                       ; $64e0: $7c
    sbc d                                         ; $64e1: $9a
    ld h, a                                       ; $64e2: $67
    bit 7, h                                      ; $64e3: $cb $7c
    jr z, jr_040_64f7                             ; $64e5: $28 $10

    xor a                                         ; $64e7: $af
    sub l                                         ; $64e8: $95
    ld l, a                                       ; $64e9: $6f
    sbc a                                         ; $64ea: $9f
    sub h                                         ; $64eb: $94
    ld h, a                                       ; $64ec: $67
    call Call_040_64ff                            ; $64ed: $cd $ff $64
    ld hl, $d36b                                  ; $64f0: $21 $6b $d3
    set 2, [hl]                                   ; $64f3: $cb $d6
    jr jr_040_6522                                ; $64f5: $18 $2b

jr_040_64f7:
    ld hl, sp+$07                                 ; $64f7: $f8 $07
    xor a                                         ; $64f9: $af
    ld [hl+], a                                   ; $64fa: $22
    ld [hl+], a                                   ; $64fb: $22
    ld [hl+], a                                   ; $64fc: $22
    jr jr_040_6522                                ; $64fd: $18 $23

Call_040_64ff:
    ld a, h                                       ; $64ff: $7c
    ld h, l                                       ; $6500: $65
    ld l, $00                                     ; $6501: $2e $00
    push af                                       ; $6503: $f5
    push hl                                       ; $6504: $e5
    ld hl, sp+$08                                 ; $6505: $f8 $08
    ld a, [hl+]                                   ; $6507: $2a
    ld d, [hl]                                    ; $6508: $56
    ld e, a                                       ; $6509: $5f
    bit 7, d                                      ; $650a: $cb $7a
    jr z, jr_040_6514                             ; $650c: $28 $06

    xor a                                         ; $650e: $af
    sub e                                         ; $650f: $93
    ld e, a                                       ; $6510: $5f
    sbc a                                         ; $6511: $9f
    sub d                                         ; $6512: $92
    ld d, a                                       ; $6513: $57

jr_040_6514:
    pop hl                                        ; $6514: $e1
    pop af                                        ; $6515: $f1
    call Call_000_0ddb                            ; $6516: $cd $db $0d
    ld e, l                                       ; $6519: $5d
    ld d, h                                       ; $651a: $54
    ld hl, sp+$0b                                 ; $651b: $f8 $0b
    ld [hl-], a                                   ; $651d: $32
    ld a, d                                       ; $651e: $7a
    ld [hl-], a                                   ; $651f: $32
    ld [hl], e                                    ; $6520: $73
    ret                                           ; $6521: $c9


Jump_040_6522:
jr_040_6522:
    ld hl, sp+$06                                 ; $6522: $f8 $06
    ld a, [hl+]                                   ; $6524: $2a
    inc hl                                        ; $6525: $23
    inc hl                                        ; $6526: $23
    cp [hl]                                       ; $6527: $be
    jr c, jr_040_6576                             ; $6528: $38 $4c

    jr nz, jr_040_654b                            ; $652a: $20 $1f

    ld hl, sp+$05                                 ; $652c: $f8 $05
    ld a, [hl+]                                   ; $652e: $2a
    inc hl                                        ; $652f: $23
    inc hl                                        ; $6530: $23
    cp [hl]                                       ; $6531: $be
    jr c, jr_040_6576                             ; $6532: $38 $42

    jr nz, jr_040_654b                            ; $6534: $20 $15

    ld hl, sp+$04                                 ; $6536: $f8 $04
    ld a, [hl+]                                   ; $6538: $2a
    inc hl                                        ; $6539: $23
    inc hl                                        ; $653a: $23
    cp [hl]                                       ; $653b: $be
    jr c, jr_040_6576                             ; $653c: $38 $38

    jr nz, jr_040_654b                            ; $653e: $20 $0b

    inc hl                                        ; $6540: $23
    or [hl]                                       ; $6541: $b6
    inc hl                                        ; $6542: $23
    or [hl]                                       ; $6543: $b6
    jp z, Jump_040_6582                           ; $6544: $ca $82 $65

    ld hl, sp+$06                                 ; $6547: $f8 $06
    jr jr_040_6555                                ; $6549: $18 $0a

jr_040_654b:
    ld a, [$d36b]                                 ; $654b: $fa $6b $d3
    and $f3                                       ; $654e: $e6 $f3
    ld [$d36b], a                                 ; $6550: $ea $6b $d3
    ld hl, sp+$06                                 ; $6553: $f8 $06

jr_040_6555:
    ld a, [hl-]                                   ; $6555: $3a
    or [hl]                                       ; $6556: $b6
    jr nz, jr_040_6582                            ; $6557: $20 $29

    dec hl                                        ; $6559: $2b
    xor a                                         ; $655a: $af
    sub [hl]                                      ; $655b: $96
    ld b, a                                       ; $655c: $47
    ld hl, sp+$02                                 ; $655d: $f8 $02
    ld a, [hl+]                                   ; $655f: $2a
    ld h, [hl]                                    ; $6560: $66
    ld l, a                                       ; $6561: $6f
    ld a, b                                       ; $6562: $78
    call Call_000_0bce                            ; $6563: $cd $ce $0b
    push hl                                       ; $6566: $e5
    ld hl, sp+$02                                 ; $6567: $f8 $02
    ld a, [hl+]                                   ; $6569: $2a
    ld h, [hl]                                    ; $656a: $66
    ld l, a                                       ; $656b: $6f
    ld a, b                                       ; $656c: $78
    call Call_000_0bce                            ; $656d: $cd $ce $0b
    pop de                                        ; $6570: $d1
    add sp, $10                                   ; $6571: $e8 $10
    jp Jump_040_62d0                              ; $6573: $c3 $d0 $62


jr_040_6576:
    ld a, [$d36b]                                 ; $6576: $fa $6b $d3
    and $fc                                       ; $6579: $e6 $fc
    ld [$d36b], a                                 ; $657b: $ea $6b $d3
    ld hl, sp+$09                                 ; $657e: $f8 $09
    jr jr_040_6555                                ; $6580: $18 $d3

Jump_040_6582:
jr_040_6582:
    ld hl, sp+$02                                 ; $6582: $f8 $02
    ld a, [hl+]                                   ; $6584: $2a
    ld d, [hl]                                    ; $6585: $56
    ld e, a                                       ; $6586: $5f
    ld hl, sp+$00                                 ; $6587: $f8 $00
    ld a, [hl+]                                   ; $6589: $2a
    ld h, [hl]                                    ; $658a: $66
    ld l, a                                       ; $658b: $6f
    add sp, $10                                   ; $658c: $e8 $10
    jp Jump_040_62d0                              ; $658e: $c3 $d0 $62


Jump_040_6591:
    ld a, [$d441]                                 ; $6591: $fa $41 $d4
    ld h, a                                       ; $6594: $67
    ld l, $00                                     ; $6595: $2e $00
    ld bc, $0020                                  ; $6597: $01 $20 $00
    add hl, bc                                    ; $659a: $09
    ld a, l                                       ; $659b: $7d
    sub e                                         ; $659c: $93
    ld l, a                                       ; $659d: $6f
    ld a, h                                       ; $659e: $7c
    sbc d                                         ; $659f: $9a
    ld h, a                                       ; $65a0: $67
    bit 7, h                                      ; $65a1: $cb $7c
    jr nz, jr_040_65af                            ; $65a3: $20 $0a

    call Call_040_65d7                            ; $65a5: $cd $d7 $65
    ld hl, $d36b                                  ; $65a8: $21 $6b $d3
    set 1, [hl]                                   ; $65ab: $cb $ce
    jr jr_040_65ec                                ; $65ad: $18 $3d

jr_040_65af:
    ld a, [$d441]                                 ; $65af: $fa $41 $d4
    add $05                                       ; $65b2: $c6 $05
    ld h, a                                       ; $65b4: $67
    ld l, $00                                     ; $65b5: $2e $00
    ld bc, $ffe0                                  ; $65b7: $01 $e0 $ff
    add hl, bc                                    ; $65ba: $09
    ld a, l                                       ; $65bb: $7d
    sub e                                         ; $65bc: $93
    ld l, a                                       ; $65bd: $6f
    ld a, h                                       ; $65be: $7c
    sbc d                                         ; $65bf: $9a
    ld h, a                                       ; $65c0: $67
    bit 7, h                                      ; $65c1: $cb $7c
    jr z, jr_040_65cf                             ; $65c3: $28 $0a

    call Call_040_65d7                            ; $65c5: $cd $d7 $65
    ld hl, $d36b                                  ; $65c8: $21 $6b $d3
    set 0, [hl]                                   ; $65cb: $cb $c6
    jr jr_040_65ec                                ; $65cd: $18 $1d

jr_040_65cf:
    ld hl, sp+$06                                 ; $65cf: $f8 $06
    xor a                                         ; $65d1: $af
    ld [hl+], a                                   ; $65d2: $22
    ld [hl+], a                                   ; $65d3: $22
    ld [hl+], a                                   ; $65d4: $22
    jr jr_040_65ec                                ; $65d5: $18 $15

Call_040_65d7:
    ld c, l                                       ; $65d7: $4d
    ld b, h                                       ; $65d8: $44
    ld hl, sp+$04                                 ; $65d9: $f8 $04
    ld a, [hl+]                                   ; $65db: $2a
    ld d, [hl]                                    ; $65dc: $56
    ld e, a                                       ; $65dd: $5f
    ld l, c                                       ; $65de: $69
    ld h, b                                       ; $65df: $60
    call Call_040_6297                            ; $65e0: $cd $97 $62
    ld e, l                                       ; $65e3: $5d
    ld d, h                                       ; $65e4: $54
    ld hl, sp+$0a                                 ; $65e5: $f8 $0a
    ld [hl-], a                                   ; $65e7: $32
    ld a, d                                       ; $65e8: $7a
    ld [hl-], a                                   ; $65e9: $32
    ld [hl], e                                    ; $65ea: $73
    ret                                           ; $65eb: $c9


jr_040_65ec:
    pop de                                        ; $65ec: $d1
    ld a, [$d442]                                 ; $65ed: $fa $42 $d4
    ld h, a                                       ; $65f0: $67
    ld l, $00                                     ; $65f1: $2e $00
    ld bc, $0020                                  ; $65f3: $01 $20 $00
    add hl, bc                                    ; $65f6: $09
    ld a, l                                       ; $65f7: $7d
    sub e                                         ; $65f8: $93
    ld l, a                                       ; $65f9: $6f
    ld a, h                                       ; $65fa: $7c
    sbc d                                         ; $65fb: $9a
    ld h, a                                       ; $65fc: $67
    bit 7, h                                      ; $65fd: $cb $7c
    jr nz, jr_040_660c                            ; $65ff: $20 $0b

    call Call_040_6636                            ; $6601: $cd $36 $66
    ld hl, $d36b                                  ; $6604: $21 $6b $d3
    set 3, [hl]                                   ; $6607: $cb $de
    jp Jump_040_6522                              ; $6609: $c3 $22 $65


jr_040_660c:
    ld a, [$d442]                                 ; $660c: $fa $42 $d4
    add $04                                       ; $660f: $c6 $04
    ld h, a                                       ; $6611: $67
    ld l, $00                                     ; $6612: $2e $00
    ld bc, $ffe0                                  ; $6614: $01 $e0 $ff
    add hl, bc                                    ; $6617: $09
    ld a, l                                       ; $6618: $7d
    sub e                                         ; $6619: $93
    ld l, a                                       ; $661a: $6f
    ld a, h                                       ; $661b: $7c
    sbc d                                         ; $661c: $9a
    ld h, a                                       ; $661d: $67
    bit 7, h                                      ; $661e: $cb $7c
    jr z, jr_040_662d                             ; $6620: $28 $0b

    call Call_040_6636                            ; $6622: $cd $36 $66
    ld hl, $d36b                                  ; $6625: $21 $6b $d3
    set 2, [hl]                                   ; $6628: $cb $d6
    jp Jump_040_6522                              ; $662a: $c3 $22 $65


jr_040_662d:
    ld hl, sp+$07                                 ; $662d: $f8 $07
    xor a                                         ; $662f: $af
    ld [hl+], a                                   ; $6630: $22
    ld [hl+], a                                   ; $6631: $22
    ld [hl+], a                                   ; $6632: $22
    jp Jump_040_6522                              ; $6633: $c3 $22 $65


Call_040_6636:
    ld c, l                                       ; $6636: $4d
    ld b, h                                       ; $6637: $44
    ld hl, sp+$04                                 ; $6638: $f8 $04
    ld a, [hl+]                                   ; $663a: $2a
    ld d, [hl]                                    ; $663b: $56
    ld e, a                                       ; $663c: $5f
    ld l, c                                       ; $663d: $69
    ld h, b                                       ; $663e: $60
    call Call_040_6297                            ; $663f: $cd $97 $62
    ld e, l                                       ; $6642: $5d
    ld d, h                                       ; $6643: $54
    ld hl, sp+$0b                                 ; $6644: $f8 $0b
    ld [hl-], a                                   ; $6646: $32
    ld a, d                                       ; $6647: $7a
    ld [hl-], a                                   ; $6648: $32
    ld [hl], e                                    ; $6649: $73
    ret                                           ; $664a: $c9


Call_040_664b:
    push af                                       ; $664b: $f5
    call Call_000_23b6                            ; $664c: $cd $b6 $23
    ld a, $01                                     ; $664f: $3e $01
    ldh [$96], a                                  ; $6651: $e0 $96
    ldh [rSVBK], a                                ; $6653: $e0 $70
    call Call_000_0341                            ; $6655: $cd $41 $03
    call Call_000_2683                            ; $6658: $cd $83 $26
    ld a, $90                                     ; $665b: $3e $90
    ldh [rWY], a                                  ; $665d: $e0 $4a
    xor a                                         ; $665f: $af
    ldh [$8b], a                                  ; $6660: $e0 $8b
    ldh [$8a], a                                  ; $6662: $e0 $8a
    pop af                                        ; $6664: $f1
    ret                                           ; $6665: $c9


    call Call_040_664b                            ; $6666: $cd $4b $66
    and $07                                       ; $6669: $e6 $07
    ld hl, $66a5                                  ; $666b: $21 $a5 $66
    add a                                         ; $666e: $87
    add l                                         ; $666f: $85
    ld l, a                                       ; $6670: $6f
    jr nc, jr_040_6674                            ; $6671: $30 $01

    inc h                                         ; $6673: $24

jr_040_6674:
    ld a, [hl+]                                   ; $6674: $2a
    ld h, [hl]                                    ; $6675: $66
    ld l, a                                       ; $6676: $6f
    call Call_040_5bf9                            ; $6677: $cd $f9 $5b
    ld c, $04                                     ; $667a: $0e $04
    call Call_000_258d                            ; $667c: $cd $8d $25
    call Call_000_2625                            ; $667f: $cd $25 $26
    call Call_000_2ed5                            ; $6682: $cd $d5 $2e
    inc a                                         ; $6685: $3c
    ld c, $02                                     ; $6686: $0e $02

jr_040_6688:
    xor a                                         ; $6688: $af
    ldh [$8a], a                                  ; $6689: $e0 $8a
    call Call_000_2e3b                            ; $668b: $cd $3b $2e
    xor $80                                       ; $668e: $ee $80
    ldh [$8a], a                                  ; $6690: $e0 $8a
    call Call_000_2e3b                            ; $6692: $cd $3b $2e
    dec c                                         ; $6695: $0d
    jr nz, jr_040_6688                            ; $6696: $20 $f0

    call Call_000_2ed5                            ; $6698: $cd $d5 $2e
    or h                                          ; $669b: $b4
    ld c, $04                                     ; $669c: $0e $04
    call Call_000_258a                            ; $669e: $cd $8a $25
    call Call_000_2625                            ; $66a1: $cd $25 $26
    ret                                           ; $66a4: $c9


    nop                                           ; $66a5: $00
    ld a, e                                       ; $66a6: $7b
    ld [bc], a                                    ; $66a7: $02
    ld a, e                                       ; $66a8: $7b
    inc b                                         ; $66a9: $04
    ld a, e                                       ; $66aa: $7b
    ld b, $7b                                     ; $66ab: $06 $7b
    ld [$0849], sp                                ; $66ad: $08 $49 $08
    ld c, c                                       ; $66b0: $49
    ld [$0849], sp                                ; $66b1: $08 $49 $08
    ld c, c                                       ; $66b4: $49
    call Call_040_664b                            ; $66b5: $cd $4b $66
    and $03                                       ; $66b8: $e6 $03
    ld hl, $66ee                                  ; $66ba: $21 $ee $66
    add a                                         ; $66bd: $87
    add l                                         ; $66be: $85
    ld l, a                                       ; $66bf: $6f
    jr nc, jr_040_66c3                            ; $66c0: $30 $01

    inc h                                         ; $66c2: $24

jr_040_66c3:
    ld a, [hl+]                                   ; $66c3: $2a
    ld h, [hl]                                    ; $66c4: $66
    ld l, a                                       ; $66c5: $6f
    call Call_040_5bf9                            ; $66c6: $cd $f9 $5b
    ld c, $04                                     ; $66c9: $0e $04
    call Call_000_258d                            ; $66cb: $cd $8d $25
    call Call_000_2625                            ; $66ce: $cd $25 $26
    ld bc, $0e10                                  ; $66d1: $01 $10 $0e

jr_040_66d4:
    call Call_000_2e3b                            ; $66d4: $cd $3b $2e
    ldh a, [$94]                                  ; $66d7: $f0 $94
    and $0f                                       ; $66d9: $e6 $0f
    jr nz, jr_040_66e2                            ; $66db: $20 $05

    dec bc                                        ; $66dd: $0b
    ld a, b                                       ; $66de: $78
    or c                                          ; $66df: $b1
    jr nz, jr_040_66d4                            ; $66e0: $20 $f2

jr_040_66e2:
    ld c, $04                                     ; $66e2: $0e $04
    call Call_000_258a                            ; $66e4: $cd $8a $25
    call Call_000_2625                            ; $66e7: $cd $25 $26
    call Call_000_2e3b                            ; $66ea: $cd $3b $2e
    ret                                           ; $66ed: $c9


    nop                                           ; $66ee: $00
    ld c, c                                       ; $66ef: $49
    ld [bc], a                                    ; $66f0: $02
    ld c, c                                       ; $66f1: $49
    inc b                                         ; $66f2: $04
    ld c, c                                       ; $66f3: $49
    ld b, $49                                     ; $66f4: $06 $49
    rst $38                                       ; $66f6: $ff
    pop bc                                        ; $66f7: $c1
    rst $38                                       ; $66f8: $ff
    and c                                         ; $66f9: $a1
    rst $38                                       ; $66fa: $ff
    sub c                                         ; $66fb: $91
    rst $38                                       ; $66fc: $ff
    adc c                                         ; $66fd: $89
    rst $38                                       ; $66fe: $ff
    rst $38                                       ; $66ff: $ff
    add l                                         ; $6700: $85
    rst $38                                       ; $6701: $ff
    add e                                         ; $6702: $83
    rst $38                                       ; $6703: $ff
    add c                                         ; $6704: $81
    rst $38                                       ; $6705: $ff
    add b                                         ; $6706: $80
    rst $38                                       ; $6707: $ff
    rst $38                                       ; $6708: $ff
    rst $38                                       ; $6709: $ff
    nop                                           ; $670a: $00
    rst $38                                       ; $670b: $ff
    nop                                           ; $670c: $00
    ld a, l                                       ; $670d: $7d
    cp $ba                                        ; $670e: $fe $ba
    rst $00                                       ; $6710: $c7
    cp a                                          ; $6711: $bf
    add e                                         ; $6712: $83
    rst $38                                       ; $6713: $ff
    rst $00                                       ; $6714: $c7
    rst $38                                       ; $6715: $ff

jr_040_6716:
    rst $28                                       ; $6716: $ef
    rst $38                                       ; $6717: $ff
    rst $38                                       ; $6718: $ff
    pop hl                                        ; $6719: $e1
    ret nc                                        ; $671a: $d0

    ld a, a                                       ; $671b: $7f
    rst $28                                       ; $671c: $ef
    sbc a                                         ; $671d: $9f
    rst $38                                       ; $671e: $ff
    and b                                         ; $671f: $a0
    rst $38                                       ; $6720: $ff
    xor a                                         ; $6721: $af
    ldh a, [$fe]                                  ; $6722: $f0 $fe
    db $e3                                        ; $6724: $e3
    ldh a, [$df]                                  ; $6725: $f0 $df
    pop hl                                        ; $6727: $e1
    db $fc                                        ; $6728: $fc
    ld [c], a                                     ; $6729: $e2
    ret c                                         ; $672a: $d8

    ldh [$fc], a                                  ; $672b: $e0 $fc
    ld [c], a                                     ; $672d: $e2
    rst $38                                       ; $672e: $ff
    rlca                                          ; $672f: $07
    rst $38                                       ; $6730: $ff
    di                                            ; $6731: $f3
    rra                                           ; $6732: $1f
    rst $38                                       ; $6733: $ff
    dec bc                                        ; $6734: $0b
    rst $38                                       ; $6735: $ff
    ei                                            ; $6736: $fb
    rrca                                          ; $6737: $0f
    cp $e3                                        ; $6738: $fe $e3
    ret c                                         ; $673a: $d8

    push hl                                       ; $673b: $e5
    ret nc                                        ; $673c: $d0

    push hl                                       ; $673d: $e5
    inc e                                         ; $673e: $1c
    add sp, -$1b                                  ; $673f: $e8 $e5
    ldh [$ed], a                                  ; $6741: $e0 $ed
    sbc a                                         ; $6743: $9f
    rst $38                                       ; $6744: $ff
    ret nz                                        ; $6745: $c0

    and d                                         ; $6746: $a2
    ld [c], a                                     ; $6747: $e2
    cp b                                          ; $6748: $b8
    rst $20                                       ; $6749: $e7
    xor b                                         ; $674a: $a8
    pop hl                                        ; $674b: $e1
    sbc l                                         ; $674c: $9d
    rst $38                                       ; $674d: $ff
    cp b                                          ; $674e: $b8
    db $e4                                        ; $674f: $e4
    db $eb                                        ; $6750: $eb
    rra                                           ; $6751: $1f
    di                                            ; $6752: $f3
    xor b                                         ; $6753: $a8
    ldh [$e0], a                                  ; $6754: $e0 $e0
    db $e3                                        ; $6756: $e3
    rst $10                                       ; $6757: $d7
    rst $38                                       ; $6758: $ff
    jr c, jr_040_6716                             ; $6759: $38 $bb

    ld a, h                                       ; $675b: $7c
    ld l, l                                       ; $675c: $6d
    cp $c6                                        ; $675d: $fe $c6
    rst $38                                       ; $675f: $ff
    add d                                         ; $6760: $82
    rst $18                                       ; $6761: $df
    rst $38                                       ; $6762: $ff
    cp $ff                                        ; $6763: $fe $ff
    add b                                         ; $6765: $80
    ld a, a                                       ; $6766: $7f
    ld h, b                                       ; $6767: $60

jr_040_6768:
    ldh [$fe], a                                  ; $6768: $e0 $fe
    add d                                         ; $676a: $82
    rst $38                                       ; $676b: $ff
    rst $38                                       ; $676c: $ff
    add $ff                                       ; $676d: $c6 $ff
    ld l, h                                       ; $676f: $6c
    rst $38                                       ; $6770: $ff
    cp c                                          ; $6771: $b9
    ld a, [hl]                                    ; $6772: $7e
    db $d3                                        ; $6773: $d3
    rst $38                                       ; $6774: $ff
    inc a                                         ; $6775: $3c
    rst $20                                       ; $6776: $e7
    jr jr_040_6768                                ; $6777: $18 $ef

    ld e, $da                                     ; $6779: $1e $da
    ccf                                           ; $677b: $3f
    or d                                          ; $677c: $b2
    rst $38                                       ; $677d: $ff
    ld a, a                                       ; $677e: $7f
    ld [c], a                                     ; $677f: $e2
    ld a, a                                       ; $6780: $7f
    or d                                          ; $6781: $b2
    ld a, a                                       ; $6782: $7f
    jp c, $ee3f                                   ; $6783: $da $3f $ee

    rst $38                                       ; $6786: $ff
    rra                                           ; $6787: $1f
    ldh a, [rIF]                                  ; $6788: $f0 $0f
    rst $30                                       ; $678a: $f7
    ld a, b                                       ; $678b: $78
    db $db                                        ; $678c: $db
    ld a, h                                       ; $678d: $7c
    call Call_040_7eff                            ; $678e: $cd $ff $7e
    add $7f                                       ; $6791: $c6 $7f
    call z, $d97f                                 ; $6793: $cc $7f $d9

jr_040_6796:
    ld a, [hl]                                    ; $6796: $7e
    di                                            ; $6797: $f3
    rst $30                                       ; $6798: $f7
    ld a, h                                       ; $6799: $7c
    rst $00                                       ; $679a: $c7
    jr c, jr_040_67ed                             ; $679b: $38 $50

    add sp, $0a                                   ; $679d: $e8 $0a
    ld a, [$fa0f]                                 ; $679f: $fa $0f $fa
    db $fd                                        ; $67a2: $fd
    dec b                                         ; $67a3: $05
    ld b, b                                       ; $67a4: $40
    and $0e                                       ; $67a5: $e6 $0e
    ld a, [$fe0f]                                 ; $67a7: $fa $0f $fe
    rrca                                          ; $67aa: $0f
    ld hl, sp+$41                                 ; $67ab: $f8 $41
    rlca                                          ; $67ad: $07
    jr c, jr_040_6796                             ; $67ae: $38 $e6

    ld [hl-], a                                   ; $67b0: $32
    db $e4                                        ; $67b1: $e4
    db $fd                                        ; $67b2: $fd
    ret nz                                        ; $67b3: $c0

    cp $eb                                        ; $67b4: $fe $eb
    ldh [$eb], a                                  ; $67b6: $e0 $eb
    nop                                           ; $67b8: $00
    ldh [$ec], a                                  ; $67b9: $e0 $ec
    rst $38                                       ; $67bb: $ff
    rst $38                                       ; $67bc: $ff
    cp l                                          ; $67bd: $bd
    inc a                                         ; $67be: $3c
    ld b, d                                       ; $67bf: $42
    ld a, [hl]                                    ; $67c0: $7e
    sbc c                                         ; $67c1: $99
    rst $38                                       ; $67c2: $ff
    cp l                                          ; $67c3: $bd
    rst $38                                       ; $67c4: $ff
    rst $20                                       ; $67c5: $e7
    cp l                                          ; $67c6: $bd
    rst $20                                       ; $67c7: $e7
    sbc c                                         ; $67c8: $99
    rst $38                                       ; $67c9: $ff
    ld b, d                                       ; $67ca: $42
    ld a, [hl]                                    ; $67cb: $7e
    cp l                                          ; $67cc: $bd
    ld a, l                                       ; $67cd: $7d
    inc a                                         ; $67ce: $3c
    ret nz                                        ; $67cf: $c0

    pop bc                                        ; $67d0: $c1
    cp l                                          ; $67d1: $bd
    inc a                                         ; $67d2: $3c
    jp $c37e                                      ; $67d3: $c3 $7e $c3


    db $f4                                        ; $67d6: $f4
    db $e4                                        ; $67d7: $e4
    rst $38                                       ; $67d8: $ff
    db $eb                                        ; $67d9: $eb
    ld [$1cf7], sp                                ; $67da: $08 $f7 $1c
    rst $30                                       ; $67dd: $f7
    ld a, a                                       ; $67de: $7f
    pop bc                                        ; $67df: $c1
    ld a, a                                       ; $67e0: $7f
    rst $38                                       ; $67e1: $ff
    and d                                         ; $67e2: $a2
    ld a, $aa                                     ; $67e3: $3e $aa
    ld a, $d5                                     ; $67e5: $3e $d5
    ld [hl], a                                    ; $67e7: $77
    db $eb                                        ; $67e8: $eb
    ld h, e                                       ; $67e9: $63
    cp a                                          ; $67ea: $bf
    rst $38                                       ; $67eb: $ff
    inc c                                         ; $67ec: $0c

jr_040_67ed:
    db $fd                                        ; $67ed: $fd
    ld e, $fd                                     ; $67ee: $1e $fd
    ld c, $fe                                     ; $67f0: $0e $fe
    push hl                                       ; $67f2: $e5
    ld sp, hl                                     ; $67f3: $f9
    rst $38                                       ; $67f4: $ff
    ld b, $ff                                     ; $67f5: $06 $ff
    cp [hl]                                       ; $67f7: $be
    rst $20                                       ; $67f8: $e7
    rst $38                                       ; $67f9: $ff
    adc $b7                                       ; $67fa: $ce $b7
    db $fc                                        ; $67fc: $fc
    rst $38                                       ; $67fd: $ff
    sbc a                                         ; $67fe: $9f
    pop af                                        ; $67ff: $f1
    cp [hl]                                       ; $6800: $be
    rst $20                                       ; $6801: $e7
    ld hl, sp-$01                                 ; $6802: $f8 $ff
    rst $38                                       ; $6804: $ff
    ret nz                                        ; $6805: $c0

    rst $38                                       ; $6806: $ff
    cp a                                          ; $6807: $bf
    rst $38                                       ; $6808: $ff
    cp [hl]                                       ; $6809: $be
    db $e3                                        ; $680a: $e3
    rst $38                                       ; $680b: $ff
    rst $08                                       ; $680c: $cf
    or e                                          ; $680d: $b3
    cp $ff                                        ; $680e: $fe $ff
    adc a                                         ; $6810: $8f
    ei                                            ; $6811: $fb
    add a                                         ; $6812: $87
    rst $38                                       ; $6813: $ff
    db $e3                                        ; $6814: $e3
    cp $bf                                        ; $6815: $fe $bf
    ldh [rIE], a                                  ; $6817: $e0 $ff
    sbc a                                         ; $6819: $9f
    rst $38                                       ; $681a: $ff
    adc [hl]                                      ; $681b: $8e
    cp $9f                                        ; $681c: $fe $9f
    or $bf                                        ; $681e: $f6 $bf
    xor $ff                                       ; $6820: $ee $ff
    rst $30                                       ; $6822: $f7
    rst $38                                       ; $6823: $ff
    rst $38                                       ; $6824: $ff
    add $bf                                       ; $6825: $c6 $bf
    cp $87                                        ; $6827: $fe $87
    db $fc                                        ; $6829: $fc
    rst $38                                       ; $682a: $ff
    add e                                         ; $682b: $83
    rst $38                                       ; $682c: $ff
    rst $38                                       ; $682d: $ff
    ldh [rIE], a                                  ; $682e: $e0 $ff
    rst $38                                       ; $6830: $ff
    cp $c3                                        ; $6831: $fe $c3
    ld sp, hl                                     ; $6833: $f9
    cp a                                          ; $6834: $bf
    ld d, c                                       ; $6835: $51
    ret nz                                        ; $6836: $c0

    ldh [$e2], a                                  ; $6837: $e0 $e2
    nop                                           ; $6839: $00
    nop                                           ; $683a: $00
    rlca                                          ; $683b: $07
    inc bc                                        ; $683c: $03
    rra                                           ; $683d: $1f
    rst $38                                       ; $683e: $ff
    inc c                                         ; $683f: $0c
    inc sp                                        ; $6840: $33
    inc e                                         ; $6841: $1c
    ld h, $39                                     ; $6842: $26 $39
    ld a, h                                       ; $6844: $7c
    inc hl                                        ; $6845: $23
    ld a, h                                       ; $6846: $7c
    rst $38                                       ; $6847: $ff
    ld b, e                                       ; $6848: $43
    ld e, [hl]                                    ; $6849: $5e
    ld h, c                                       ; $684a: $61
    nop                                           ; $684b: $00
    nop                                           ; $684c: $00
    ldh [$c0], a                                  ; $684d: $e0 $c0
    ld hl, sp-$01                                 ; $684f: $f8 $ff
    jr nc, @-$32                                  ; $6851: $30 $cc

    jr c, jr_040_68b9                             ; $6853: $38 $64

    sbc h                                         ; $6855: $9c
    ld a, $c4                                     ; $6856: $3e $c4
    ld a, $ff                                     ; $6858: $3e $ff
    jp nz, $867a                                  ; $685a: $c2 $7a $86

    ld c, a                                       ; $685d: $4f
    ld [hl], b                                    ; $685e: $70
    ld c, a                                       ; $685f: $4f
    ld [hl], b                                    ; $6860: $70
    ld a, a                                       ; $6861: $7f
    rst $38                                       ; $6862: $ff
    ld h, a                                       ; $6863: $67
    ld a, d                                       ; $6864: $7a
    ccf                                           ; $6865: $3f
    ld [hl-], a                                   ; $6866: $32
    rra                                           ; $6867: $1f
    db $10                                        ; $6868: $10
    rra                                           ; $6869: $1f
    jr @+$01                                      ; $686a: $18 $ff

    rrca                                          ; $686c: $0f
    rrca                                          ; $686d: $0f
    rlca                                          ; $686e: $07
    ld a, [c]                                     ; $686f: $f2
    ld c, $f2                                     ; $6870: $0e $f2
    ld c, $fe                                     ; $6872: $0e $fe
    rst $38                                       ; $6874: $ff
    and $5e                                       ; $6875: $e6 $5e
    db $fc                                        ; $6877: $fc
    ld c, h                                       ; $6878: $4c
    ld hl, sp+$08                                 ; $6879: $f8 $08
    ld hl, sp+$18                                 ; $687b: $f8 $18
    rst $30                                       ; $687d: $f7
    ldh a, [$f0]                                  ; $687e: $f0 $f0
    ldh [rNR10], a                                ; $6880: $e0 $10
    jp hl                                         ; $6882: $e9


    rst $30                                       ; $6883: $f7
    add a                                         ; $6884: $87
    ld hl, sp-$71                                 ; $6885: $f8 $8f
    cp $f0                                        ; $6887: $fe $f0
    ret                                           ; $6889: $c9


    rst $30                                       ; $688a: $f7
    ldh a, [rIF]                                  ; $688b: $f0 $0f
    ld hl, sp-$01                                 ; $688d: $f8 $ff
    add b                                         ; $688f: $80
    db $fd                                        ; $6890: $fd
    rst $38                                       ; $6891: $ff
    add c                                         ; $6892: $81
    or $87                                        ; $6893: $f6 $87
    jp hl                                         ; $6895: $e9


    adc a                                         ; $6896: $8f
    or $9e                                        ; $6897: $f6 $9e
    rst $10                                       ; $6899: $d7
    rst $38                                       ; $689a: $ff
    sbc h                                         ; $689b: $9c
    db $eb                                        ; $689c: $eb
    cp b                                          ; $689d: $b8
    rst $28                                       ; $689e: $ef
    cp b                                          ; $689f: $b8
    rst $38                                       ; $68a0: $ff
    nop                                           ; $68a1: $00
    rst $18                                       ; $68a2: $df
    rst $38                                       ; $68a3: $ff
    ret nz                                        ; $68a4: $c0

    scf                                           ; $68a5: $37
    ldh a, [$cb]                                  ; $68a6: $f0 $cb
    ld hl, sp-$49                                 ; $68a8: $f8 $b7
    inc a                                         ; $68aa: $3c
    push af                                       ; $68ab: $f5
    rst $38                                       ; $68ac: $ff
    inc e                                         ; $68ad: $1c
    db $eb                                        ; $68ae: $eb
    ld c, $fb                                     ; $68af: $0e $fb
    ld c, $ff                                     ; $68b1: $0e $ff
    add b                                         ; $68b3: $80
    cp $ff                                        ; $68b4: $fe $ff
    add b                                         ; $68b6: $80
    rst $38                                       ; $68b7: $ff
    add c                                         ; $68b8: $81

jr_040_68b9:
    db $fd                                        ; $68b9: $fd
    add c                                         ; $68ba: $81
    cp $83                                        ; $68bb: $fe $83
    sbc $ff                                       ; $68bd: $de $ff
    sbc a                                         ; $68bf: $9f
    ldh [$bf], a                                  ; $68c0: $e0 $bf
    pop de                                        ; $68c2: $d1
    sbc a                                         ; $68c3: $9f
    rst $38                                       ; $68c4: $ff
    nop                                           ; $68c5: $00
    cp a                                          ; $68c6: $bf
    rst $38                                       ; $68c7: $ff
    add b                                         ; $68c8: $80
    ld a, a                                       ; $68c9: $7f
    ret nz                                        ; $68ca: $c0

    ld e, a                                       ; $68cb: $5f
    ret nz                                        ; $68cc: $c0

    ccf                                           ; $68cd: $3f
    ldh [$3d], a                                  ; $68ce: $e0 $3d
    rst $38                                       ; $68d0: $ff
    db $fc                                        ; $68d1: $fc
    inc bc                                        ; $68d2: $03
    cp $45                                        ; $68d3: $fe $45
    db $fc                                        ; $68d5: $fc
    rst $38                                       ; $68d6: $ff
    ld hl, sp-$79                                 ; $68d7: $f8 $87
    rst $38                                       ; $68d9: $ff
    rst $38                                       ; $68da: $ff
    or l                                          ; $68db: $b5
    rst $38                                       ; $68dc: $ff
    adc l                                         ; $68dd: $8d
    rst $38                                       ; $68de: $ff
    or a                                          ; $68df: $b7
    rst $38                                       ; $68e0: $ff
    or l                                          ; $68e1: $b5
    rst $30                                       ; $68e2: $f7
    or l                                          ; $68e3: $b5
    add l                                         ; $68e4: $85
    add l                                         ; $68e5: $85
    xor a                                         ; $68e6: $af
    and b                                         ; $68e7: $a0
    rlca                                          ; $68e8: $07
    db $fd                                        ; $68e9: $fd
    rst $38                                       ; $68ea: $ff
    ld de, $ffff                                  ; $68eb: $11 $ff $ff
    ld d, l                                       ; $68ee: $55
    rst $38                                       ; $68ef: $ff
    ld [hl], l                                    ; $68f0: $75
    rst $38                                       ; $68f1: $ff
    ld [hl], l                                    ; $68f2: $75
    ld d, l                                       ; $68f3: $55
    ld [hl], c                                    ; $68f4: $71
    rst $30                                       ; $68f5: $f7
    ld d, c                                       ; $68f6: $51
    rst $38                                       ; $68f7: $ff
    rst $18                                       ; $68f8: $df
    sub b                                         ; $68f9: $90
    and b                                         ; $68fa: $a0
    ld hl, sp+$47                                 ; $68fb: $f8 $47
    db $fc                                        ; $68fd: $fc
    rst $10                                       ; $68fe: $d7
    ld a, a                                       ; $68ff: $7f
    db $fc                                        ; $6900: $fc
    ld b, a                                       ; $6901: $47
    db $fc                                        ; $6902: $fc
    ld e, a                                       ; $6903: $5f
    ld e, h                                       ; $6904: $5c
    ld b, a                                       ; $6905: $47
    ld b, h                                       ; $6906: $44
    adc a                                         ; $6907: $8f
    and b                                         ; $6908: $a0
    rst $28                                       ; $6909: $ef
    db $fc                                        ; $690a: $fc
    add a                                         ; $690b: $87
    rst $38                                       ; $690c: $ff
    cp h                                          ; $690d: $bc
    ld [hl], d                                    ; $690e: $72
    and b                                         ; $690f: $a0
    cp l                                          ; $6910: $bd
    rst $38                                       ; $6911: $ff
    cp l                                          ; $6912: $bd
    ld [hl], a                                    ; $6913: $77
    cp l                                          ; $6914: $bd
    add h                                         ; $6915: $84
    add h                                         ; $6916: $84
    sub l                                         ; $6917: $95
    and e                                         ; $6918: $a3
    ld h, d                                       ; $6919: $62
    rst $38                                       ; $691a: $ff
    ld l, d                                       ; $691b: $6a
    db $fc                                        ; $691c: $fc
    ldh [$ef], a                                  ; $691d: $e0 $ef
    ld a, d                                       ; $691f: $7a
    ld a, d                                       ; $6920: $7a
    ld [hl+], a                                   ; $6921: $22
    ld [hl+], a                                   ; $6922: $22
    add l                                         ; $6923: $85
    and d                                         ; $6924: $a2
    ldh a, [$8f]                                  ; $6925: $f0 $8f
    ld hl, sp-$01                                 ; $6927: $f8 $ff
    xor a                                         ; $6929: $af
    ld hl, sp-$71                                 ; $692a: $f8 $8f
    ld hl, sp-$41                                 ; $692c: $f8 $bf
    cp b                                          ; $692e: $b8
    adc a                                         ; $692f: $8f
    adc b                                         ; $6930: $88
    ldh a, [$c0]                                  ; $6931: $f0 $c0
    xor b                                         ; $6933: $a8
    cp d                                          ; $6934: $ba
    and l                                         ; $6935: $a5
    rst $38                                       ; $6936: $ff
    rst $38                                       ; $6937: $ff
    db $eb                                        ; $6938: $eb
    ld [$8ff8], a                                 ; $6939: $ea $f8 $8f
    rst $30                                       ; $693c: $f7
    add a                                         ; $693d: $87
    sbc $30                                       ; $693e: $de $30
    ret                                           ; $6940: $c9


    rrca                                          ; $6941: $0f
    ld hl, sp-$09                                 ; $6942: $f8 $f7

Call_040_6944:
    ldh a, [$f0]                                  ; $6944: $f0 $f0
    xor c                                         ; $6946: $a9
    db $eb                                        ; $6947: $eb
    cp b                                          ; $6948: $b8
    ld l, a                                       ; $6949: $6f
    rst $10                                       ; $694a: $d7
    sbc h                                         ; $694b: $9c
    or $9e                                        ; $694c: $f6 $9e
    nop                                           ; $694e: $00
    ldh [$87], a                                  ; $694f: $e0 $87
    db $fd                                        ; $6951: $fd
    pop hl                                        ; $6952: $e1
    add d                                         ; $6953: $82
    rst $38                                       ; $6954: $ff
    db $eb                                        ; $6955: $eb
    ld c, $f5                                     ; $6956: $0e $f5
    inc e                                         ; $6958: $1c
    or a                                          ; $6959: $b7
    inc a                                         ; $695a: $3c
    set 7, b                                      ; $695b: $cb $f8
    rst $28                                       ; $695d: $ef
    scf                                           ; $695e: $37
    ldh a, [$df]                                  ; $695f: $f0 $df
    ret nz                                        ; $6961: $c0

    push af                                       ; $6962: $f5
    add c                                         ; $6963: $81
    jp hl                                         ; $6964: $e9


    adc a                                         ; $6965: $8f
    db $f4                                        ; $6966: $f4
    ld a, [hl]                                    ; $6967: $7e
    jp z, $f8c0                                   ; $6968: $ca $c0 $f8

    adc a                                         ; $696b: $8f
    ei                                            ; $696c: $fb
    adc a                                         ; $696d: $8f
    push af                                       ; $696e: $f5
    add h                                         ; $696f: $84
    pop bc                                        ; $6970: $c1
    add c                                         ; $6971: $81
    rst $30                                       ; $6972: $f7
    ld c, e                                       ; $6973: $4b
    ld hl, sp+$17                                 ; $6974: $f8 $17
    jp z, $8fc0                                   ; $6976: $ca $c0 $8f

    ld hl, sp+$6f                                 ; $6979: $f8 $6f
    ld a, b                                       ; $697b: $78
    ld a, e                                       ; $697c: $7b
    rst $10                                       ; $697d: $d7
    db $10                                        ; $697e: $10
    push de                                       ; $697f: $d5
    add d                                         ; $6980: $82
    rra                                           ; $6981: $1f
    pop hl                                        ; $6982: $e1
    ccf                                           ; $6983: $3f
    db $ed                                        ; $6984: $ed
    cp $e2                                        ; $6985: $fe $e2
    rst $38                                       ; $6987: $ff
    pop hl                                        ; $6988: $e1
    ld hl, $2ded                                  ; $6989: $21 $ed $2d
    rst $38                                       ; $698c: $ff
    ccf                                           ; $698d: $3f

jr_040_698e:
    rst $38                                       ; $698e: $ff
    ldh a, [$67]                                  ; $698f: $f0 $67
    ld e, a                                       ; $6991: $5f
    rst $38                                       ; $6992: $ff
    ld b, h                                       ; $6993: $44
    nop                                           ; $6994: $00
    ldh [$fe], a                                  ; $6995: $e0 $fe
    ldh [rHDMA5], a                               ; $6997: $e0 $55
    ld b, h                                       ; $6999: $44
    db $10                                        ; $699a: $10
    pop hl                                        ; $699b: $e1
    db $eb                                        ; $699c: $eb
    jr c, jr_040_698e                             ; $699d: $38 $ef

    ldh a, [$e0]                                  ; $699f: $f0 $e0
    ld l, l                                       ; $69a1: $6d
    cp $e1                                        ; $69a2: $fe $e1
    ld l, l                                       ; $69a4: $6d
    dec h                                         ; $69a5: $25
    dec h                                         ; $69a6: $25
    db $fc                                        ; $69a7: $fc
    and l                                         ; $69a8: $a5
    add e                                         ; $69a9: $83
    ldh [$e1], a                                  ; $69aa: $e0 $e1
    call nc, $d7ff                                ; $69ac: $d4 $ff $d7
    ld d, a                                       ; $69af: $57
    call nz, Call_040_6944                        ; $69b0: $c4 $44 $69
    rst $38                                       ; $69b3: $ff
    db $10                                        ; $69b4: $10
    and c                                         ; $69b5: $a1
    db $e4                                        ; $69b6: $e4
    ret nz                                        ; $69b7: $c0

    rst $18                                       ; $69b8: $df
    ldh [$c0], a                                  ; $69b9: $e0 $c0
    ld [hl], a                                    ; $69bb: $77
    ld [hl], h                                    ; $69bc: $74
    ldh [$c0], a                                  ; $69bd: $e0 $c0
    cp a                                          ; $69bf: $bf
    db $fc                                        ; $69c0: $fc
    rst $38                                       ; $69c1: $ff
    db $fc                                        ; $69c2: $fc
    or a                                          ; $69c3: $b7
    rst $38                                       ; $69c4: $ff
    or h                                          ; $69c5: $b4
    ld d, d                                       ; $69c6: $52
    add b                                         ; $69c7: $80
    or l                                          ; $69c8: $b5
    or [hl]                                       ; $69c9: $b6
    or b                                          ; $69ca: $b0
    ret nz                                        ; $69cb: $c0

    or h                                          ; $69cc: $b4
    or h                                          ; $69cd: $b4
    ld [hl], l                                    ; $69ce: $75
    add d                                         ; $69cf: $82
    cp $51                                        ; $69d0: $fe $51
    or b                                          ; $69d2: $b0
    ret nz                                        ; $69d3: $c0

    ld d, c                                       ; $69d4: $51
    rst $18                                       ; $69d5: $df
    rst $38                                       ; $69d6: $ff
    ld d, a                                       ; $69d7: $57
    ld d, a                                       ; $69d8: $57
    ld d, c                                       ; $69d9: $51
    ld d, c                                       ; $69da: $51
    ld h, l                                       ; $69db: $65
    add d                                         ; $69dc: $82
    ld a, a                                       ; $69dd: $7f
    pop de                                        ; $69de: $d1
    rst $38                                       ; $69df: $ff
    ld a, a                                       ; $69e0: $7f
    push af                                       ; $69e1: $f5
    rst $38                                       ; $69e2: $ff
    ld d, l                                       ; $69e3: $55
    rst $18                                       ; $69e4: $df
    push de                                       ; $69e5: $d5
    push de                                       ; $69e6: $d5
    push de                                       ; $69e7: $d5
    db $fd                                        ; $69e8: $fd
    ld d, l                                       ; $69e9: $55
    ccf                                           ; $69ea: $3f
    add b                                         ; $69eb: $80
    ld a, [hl]                                    ; $69ec: $7e
    jp $da7f                                      ; $69ed: $c3 $7f $da


    ld a, a                                       ; $69f0: $7f
    jp c, $ff7f                                   ; $69f1: $da $7f $ff

    ld e, d                                       ; $69f4: $5a
    rst $38                                       ; $69f5: $ff
    jp c, $c2da                                   ; $69f6: $da $da $c2

    ld b, d                                       ; $69f9: $42
    ld b, l                                       ; $69fa: $45
    add d                                         ; $69fb: $82
    rst $38                                       ; $69fc: $ff
    db $fc                                        ; $69fd: $fc
    inc hl                                        ; $69fe: $23
    cp $ab                                        ; $69ff: $fe $ab
    cp $a3                                        ; $6a01: $fe $a3
    cp $af                                        ; $6a03: $fe $af
    cp a                                          ; $6a05: $bf
    xor [hl]                                      ; $6a06: $ae
    and e                                         ; $6a07: $a3
    and d                                         ; $6a08: $a2
    rst $38                                       ; $6a09: $ff
    cp $c0                                        ; $6a0a: $fe $c0
    inc h                                         ; $6a0c: $24
    add b                                         ; $6a0d: $80
    sub b                                         ; $6a0e: $90
    adc a                                         ; $6a0f: $8f
    rst $38                                       ; $6a10: $ff
    adc b                                         ; $6a11: $88
    rst $38                                       ; $6a12: $ff
    add h                                         ; $6a13: $84
    and b                                         ; $6a14: $a0
    add b                                         ; $6a15: $80
    nop                                           ; $6a16: $00
    add c                                         ; $6a17: $81
    inc de                                        ; $6a18: $13
    xor a                                         ; $6a19: $af
    add c                                         ; $6a1a: $81
    rst $38                                       ; $6a1b: $ff
    rst $38                                       ; $6a1c: $ff
    add a                                         ; $6a1d: $87
    rst $38                                       ; $6a1e: $ff
    adc a                                         ; $6a1f: $8f
    rst $38                                       ; $6a20: $ff
    sub a                                         ; $6a21: $97
    ld hl, sp-$68                                 ; $6a22: $f8 $98

jr_040_6a24:
    rst $18                                       ; $6a24: $df
    rst $30                                       ; $6a25: $f7
    cp c                                          ; $6a26: $b9
    or $b6                                        ; $6a27: $f6 $b6
    ld sp, hl                                     ; $6a29: $f9
    rst $38                                       ; $6a2a: $ff
    add c                                         ; $6a2b: $81
    ldh [rIE], a                                  ; $6a2c: $e0 $ff
    rst $38                                       ; $6a2e: $ff
    ldh a, [rIE]                                  ; $6a2f: $f0 $ff
    add sp, $1f                                   ; $6a31: $e8 $1f
    jr jr_040_6a24                                ; $6a33: $18 $ef

    sbc h                                         ; $6a35: $9c
    ld l, a                                       ; $6a36: $6f
    rst $38                                       ; $6a37: $ff
    inc e                                         ; $6a38: $1c
    rst $28                                       ; $6a39: $ef
    adc [hl]                                      ; $6a3a: $8e
    adc [hl]                                      ; $6a3b: $8e
    adc a                                         ; $6a3c: $8f
    adc a                                         ; $6a3d: $8f
    adc [hl]                                      ; $6a3e: $8e
    adc a                                         ; $6a3f: $8f
    rst $38                                       ; $6a40: $ff
    sub [hl]                                      ; $6a41: $96
    sbc a                                         ; $6a42: $9f
    and b                                         ; $6a43: $a0
    cp a                                          ; $6a44: $bf
    cp a                                          ; $6a45: $bf
    cp a                                          ; $6a46: $bf
    cp c                                          ; $6a47: $b9
    cp a                                          ; $6a48: $bf
    rst $38                                       ; $6a49: $ff
    xor c                                         ; $6a4a: $a9
    or [hl]                                       ; $6a4b: $b6
    nop                                           ; $6a4c: $00
    nop                                           ; $6a4d: $00
    add b                                         ; $6a4e: $80
    add b                                         ; $6a4f: $80
    ld h, b                                       ; $6a50: $60
    ldh [rIE], a                                  ; $6a51: $e0 $ff
    db $10                                        ; $6a53: $10
    ldh a, [$08]                                  ; $6a54: $f0 $08
    ld hl, sp-$78                                 ; $6a56: $f8 $88
    ld hl, sp-$1c                                 ; $6a58: $f8 $e4
    db $fc                                        ; $6a5a: $fc
    ld a, a                                       ; $6a5b: $7f
    inc [hl]                                      ; $6a5c: $34
    db $fc                                        ; $6a5d: $fc
    sbc b                                         ; $6a5e: $98
    sbc b                                         ; $6a5f: $98
    and a                                         ; $6a60: $a7
    cp a                                          ; $6a61: $bf
    jp z, $c019                                   ; $6a62: $ca $19 $c0

    rst $28                                       ; $6a65: $ef
    cp a                                          ; $6a66: $bf
    or b                                          ; $6a67: $b0
    cp a                                          ; $6a68: $bf
    and b                                         ; $6a69: $a0
    rst $18                                       ; $6a6a: $df
    pop hl                                        ; $6a6b: $e1
    inc b                                         ; $6a6c: $04
    inc b                                         ; $6a6d: $04
    set 7, a                                      ; $6a6e: $cb $ff
    rst $08                                       ; $6a70: $cf
    ld sp, $d0ff                                  ; $6a71: $31 $ff $d0

jr_040_6a74:
    rst $38                                       ; $6a74: $ff
    ret nc                                        ; $6a75: $d0

    ld a, a                                       ; $6a76: $7f
    rst $28                                       ; $6a77: $ef
    rst $38                                       ; $6a78: $ff
    ccf                                           ; $6a79: $3f
    db $e4                                        ; $6a7a: $e4
    cp h                                          ; $6a7b: $bc
    db $fc                                        ; $6a7c: $fc
    ld e, h                                       ; $6a7d: $5c
    add e                                         ; $6a7e: $83
    add e                                         ; $6a7f: $83
    add h                                         ; $6a80: $84
    rst $18                                       ; $6a81: $df
    add a                                         ; $6a82: $87

jr_040_6a83:
    adc a                                         ; $6a83: $8f
    adc a                                         ; $6a84: $8f
    sbc a                                         ; $6a85: $9f
    sub b                                         ; $6a86: $90
    cp $e0                                        ; $6a87: $fe $e0
    sbc a                                         ; $6a89: $9f
    cp a                                          ; $6a8a: $bf
    rst $38                                       ; $6a8b: $ff
    and b                                         ; $6a8c: $a0
    rst $38                                       ; $6a8d: $ff
    rst $18                                       ; $6a8e: $df
    ret nz                                        ; $6a8f: $c0

    ret nz                                        ; $6a90: $c0

    jr nc, jr_040_6a83                            ; $6a91: $30 $f0

    ret z                                         ; $6a93: $c8

    rst $38                                       ; $6a94: $ff
    ld hl, sp-$1c                                 ; $6a95: $f8 $e4

jr_040_6a97:
    inc a                                         ; $6a97: $3c
    db $f4                                        ; $6a98: $f4
    inc e                                         ; $6a99: $1c
    db $fc                                        ; $6a9a: $fc
    call c, $fffe                                 ; $6a9b: $dc $fe $ff
    ld [hl-], a                                   ; $6a9e: $32
    db $fd                                        ; $6a9f: $fd
    sbc a                                         ; $6aa0: $9f
    add $c6                                       ; $6aa1: $c6 $c6
    adc c                                         ; $6aa3: $89
    adc a                                         ; $6aa4: $8f
    sub b                                         ; $6aa5: $90
    rst $38                                       ; $6aa6: $ff
    sbc a                                         ; $6aa7: $9f
    sbc c                                         ; $6aa8: $99
    sbc a                                         ; $6aa9: $9f
    sbc a                                         ; $6aaa: $9f
    sub [hl]                                      ; $6aab: $96
    cp a                                          ; $6aac: $bf
    and b                                         ; $6aad: $a0
    xor h                                         ; $6aae: $ac
    db $fd                                        ; $6aaf: $fd
    or e                                          ; $6ab0: $b3
    jr nz, jr_040_6a74                            ; $6ab1: $20 $c1

    ret nz                                        ; $6ab3: $c0

    ret nz                                        ; $6ab4: $c0

    jr nz, jr_040_6a97                            ; $6ab5: $20 $e0

    sub b                                         ; $6ab7: $90
    ldh a, [rIE]                                  ; $6ab8: $f0 $ff
    ret z                                         ; $6aba: $c8

    ld a, b                                       ; $6abb: $78
    ret z                                         ; $6abc: $c8

    ld a, b                                       ; $6abd: $78
    add sp, $38                                   ; $6abe: $e8 $38
    add sp, -$08                                  ; $6ac0: $e8 $f8
    rst $38                                       ; $6ac2: $ff
    adc a                                         ; $6ac3: $8f
    adc a                                         ; $6ac4: $8f
    or [hl]                                       ; $6ac5: $b6
    cp a                                          ; $6ac6: $bf
    call nz, $acff                                ; $6ac7: $c4 $ff $ac
    rst $18                                       ; $6aca: $df
    xor a                                         ; $6acb: $af
    sbc [hl]                                      ; $6acc: $9e
    rst $30                                       ; $6acd: $f7
    cp a                                          ; $6ace: $bf
    db $e3                                        ; $6acf: $e3
    xor l                                         ; $6ad0: $ad
    ld h, b                                       ; $6ad1: $60
    db $e3                                        ; $6ad2: $e3
    add d                                         ; $6ad3: $82
    db $e3                                        ; $6ad4: $e3
    jr z, @+$01                                   ; $6ad5: $28 $ff

    ret c                                         ; $6ad7: $d8

    ld h, h                                       ; $6ad8: $64
    sbc h                                         ; $6ad9: $9c
    add h                                         ; $6ada: $84
    db $fc                                        ; $6adb: $fc
    adc $7e                                       ; $6adc: $ce $7e
    ld sp, hl                                     ; $6ade: $f9
    rst $38                                       ; $6adf: $ff
    ccf                                           ; $6ae0: $3f
    adc e                                         ; $6ae1: $8b
    adc e                                         ; $6ae2: $8b
    sbc a                                         ; $6ae3: $9f
    sub h                                         ; $6ae4: $94
    sbc l                                         ; $6ae5: $9d
    sub d                                         ; $6ae6: $92
    xor a                                         ; $6ae7: $af
    ei                                            ; $6ae8: $fb
    cp a                                          ; $6ae9: $bf
    ret nz                                        ; $6aea: $c0

    ld a, [de]                                    ; $6aeb: $1a
    ld h, b                                       ; $6aec: $60
    sub e                                         ; $6aed: $93
    cp $bf                                        ; $6aee: $fe $bf
    db $ec                                        ; $6af0: $ec
    ld h, b                                       ; $6af1: $60
    rst $38                                       ; $6af2: $ff
    ld h, b                                       ; $6af3: $60
    ldh [$a0], a                                  ; $6af4: $e0 $a0
    ldh a, [$30]                                  ; $6af6: $f0 $30
    ret z                                         ; $6af8: $c8

    ld hl, sp+$04                                 ; $6af9: $f8 $04
    ld a, a                                       ; $6afb: $7f
    db $fc                                        ; $6afc: $fc
    inc b                                         ; $6afd: $04
    db $fc                                        ; $6afe: $fc
    add d                                         ; $6aff: $82
    cp $c2                                        ; $6b00: $fe $c2
    ld a, [hl]                                    ; $6b02: $7e
    ld sp, $ff8c                                  ; $6b03: $31 $8c $ff
    rst $38                                       ; $6b06: $ff
    ld b, b                                       ; $6b07: $40
    rst $38                                       ; $6b08: $ff
    jr nz, @+$01                                  ; $6b09: $20 $ff

    db $10                                        ; $6b0b: $10
    rst $38                                       ; $6b0c: $ff
    ld [$ffbf], sp                                ; $6b0d: $08 $bf $ff
    inc b                                         ; $6b10: $04
    rst $38                                       ; $6b11: $ff
    ld [bc], a                                    ; $6b12: $02
    rst $38                                       ; $6b13: $ff
    ld bc, $6000                                  ; $6b14: $01 $00 $60
    cp [hl]                                       ; $6b17: $be
    rst $38                                       ; $6b18: $ff
    db $fd                                        ; $6b19: $fd
    sbc a                                         ; $6b1a: $9f
    db $fc                                        ; $6b1b: $fc
    sbc [hl]                                      ; $6b1c: $9e
    db $fd                                        ; $6b1d: $fd
    adc l                                         ; $6b1e: $8d
    cp $87                                        ; $6b1f: $fe $87
    cp $fa                                        ; $6b21: $fe $fa
    jp nz, $ffff                                  ; $6b23: $c2 $ff $ff

    ld l, h                                       ; $6b26: $6c
    sbc a                                         ; $6b27: $9f
    ld hl, sp+$3f                                 ; $6b28: $f8 $3f
    ld a, b                                       ; $6b2a: $78
    rst $28                                       ; $6b2b: $ef
    cp a                                          ; $6b2c: $bf
    or b                                          ; $6b2d: $b0
    ld a, a                                       ; $6b2e: $7f
    ldh [$fa], a                                  ; $6b2f: $e0 $fa
    jp nz, $ffff                                  ; $6b31: $c2 $ff $ff

    cp c                                          ; $6b34: $b9
    rst $28                                       ; $6b35: $ef
    xor a                                         ; $6b36: $af
    cp c                                          ; $6b37: $b9
    xor a                                         ; $6b38: $af
    call nz, Call_040_6034                        ; $6b39: $c4 $34 $60
    and [hl]                                      ; $6b3c: $a6
    cp a                                          ; $6b3d: $bf
    sub b                                         ; $6b3e: $90
    ei                                            ; $6b3f: $fb
    sbc a                                         ; $6b40: $9f
    adc h                                         ; $6b41: $8c
    rst $18                                       ; $6b42: $df
    ldh [$9a], a                                  ; $6b43: $e0 $9a
    ld a, [hl]                                    ; $6b45: $7e
    sbc [hl]                                      ; $6b46: $9e
    ld a, [hl]                                    ; $6b47: $7e
    ld h, $ff                                     ; $6b48: $26 $ff
    cp $16                                        ; $6b4a: $fe $16
    cp $0e                                        ; $6b4c: $fe $0e
    cp $3c                                        ; $6b4e: $fe $3c
    db $fc                                        ; $6b50: $fc
    ld hl, sp-$12                                 ; $6b51: $f8 $ee
    ld l, $80                                     ; $6b53: $2e $80
    or [hl]                                       ; $6b55: $b6
    xor c                                         ; $6b56: $a9
    rst $38                                       ; $6b57: $ff
    pop hl                                        ; $6b58: $e1
    ldh [$bf], a                                  ; $6b59: $e0 $bf
    and e                                         ; $6b5b: $a3
    sbc a                                         ; $6b5c: $9f
    rst $28                                       ; $6b5d: $ef
    sub b                                         ; $6b5e: $90
    adc a                                         ; $6b5f: $8f
    adc h                                         ; $6b60: $8c
    add e                                         ; $6b61: $83
    ld b, d                                       ; $6b62: $42
    add b                                         ; $6b63: $80
    cp $52                                        ; $6b64: $fe $52
    cp $ff                                        ; $6b66: $fe $ff
    ld a, [bc]                                    ; $6b68: $0a
    db $fc                                        ; $6b69: $fc
    inc b                                         ; $6b6a: $04
    ld hl, sp+$18                                 ; $6b6b: $f8 $18
    ldh [rNR41], a                                ; $6b6d: $e0 $20
    ret nz                                        ; $6b6f: $c0

    ei                                            ; $6b70: $fb
    ret nz                                        ; $6b71: $c0

    nop                                           ; $6b72: $00
    or l                                          ; $6b73: $b5
    ld b, c                                       ; $6b74: $41
    ld hl, sp-$29                                 ; $6b75: $f8 $d7
    ld hl, sp-$21                                 ; $6b77: $f8 $df
    db $f4                                        ; $6b79: $f4
    cp a                                          ; $6b7a: $bf
    rst $18                                       ; $6b7b: $df
    ldh a, [$af]                                  ; $6b7c: $f0 $af
    cp d                                          ; $6b7e: $ba
    sbc a                                         ; $6b7f: $9f
    sbc h                                         ; $6b80: $9c
    ldh [$e1], a                                  ; $6b81: $e0 $e1
    ld hl, sp-$01                                 ; $6b83: $f8 $ff
    rst $38                                       ; $6b85: $ff
    ld l, h                                       ; $6b86: $6c
    sub a                                         ; $6b87: $97
    db $fd                                        ; $6b88: $fd
    rlca                                          ; $6b89: $07
    ld sp, hl                                     ; $6b8a: $f9
    rra                                           ; $6b8b: $1f
    and $ef                                       ; $6b8c: $e6 $ef
    ld a, $f8                                     ; $6b8e: $3e $f8
    ld a, b                                       ; $6b90: $78
    add b                                         ; $6b91: $80
    ld l, a                                       ; $6b92: $6f
    pop hl                                        ; $6b93: $e1
    rst $38                                       ; $6b94: $ff
    cp a                                          ; $6b95: $bf
    or e                                          ; $6b96: $b3
    ccf                                           ; $6b97: $3f
    cp a                                          ; $6b98: $bf
    xor b                                         ; $6b99: $a8
    cp a                                          ; $6b9a: $bf
    and b                                         ; $6b9b: $a0
    sbc a                                         ; $6b9c: $9f
    sub [hl]                                      ; $6b9d: $96
    cp [hl]                                       ; $6b9e: $be
    ldh [rNR10], a                                ; $6b9f: $e0 $10
    and b                                         ; $6ba1: $a0
    rst $38                                       ; $6ba2: $ff
    ld hl, sp-$48                                 ; $6ba3: $f8 $b8
    db $fc                                        ; $6ba5: $fc
    inc h                                         ; $6ba6: $24
    db $fc                                        ; $6ba7: $fc
    inc d                                         ; $6ba8: $14
    db $fc                                        ; $6ba9: $fc
    inc c                                         ; $6baa: $0c
    cp a                                          ; $6bab: $bf
    ld a, [$f23e]                                 ; $6bac: $fa $3e $f2
    ld a, [hl]                                    ; $6baf: $7e
    adc [hl]                                      ; $6bb0: $8e
    adc [hl]                                      ; $6bb1: $8e
    ld e, a                                       ; $6bb2: $5f
    ld b, b                                       ; $6bb3: $40
    and d                                         ; $6bb4: $a2
    xor e                                         ; $6bb5: $ab
    db $dd                                        ; $6bb6: $dd
    and d                                         ; $6bb7: $a2
    or c                                          ; $6bb8: $b1
    ret nz                                        ; $6bb9: $c0

    call z, $e0de                                 ; $6bba: $cc $de $e0
    sub c                                         ; $6bbd: $91
    ldh a, [$e1]                                  ; $6bbe: $f0 $e1
    db $fd                                        ; $6bc0: $fd
    rst $38                                       ; $6bc1: $ff
    and a                                         ; $6bc2: $a7
    db $fd                                        ; $6bc3: $fd
    sub a                                         ; $6bc4: $97
    ld sp, hl                                     ; $6bc5: $f9
    rrca                                          ; $6bc6: $0f
    push af                                       ; $6bc7: $f5
    ccf                                           ; $6bc8: $3f
    db $db                                        ; $6bc9: $db
    rst $30                                       ; $6bca: $f7
    ld e, e                                       ; $6bcb: $5b
    add b                                         ; $6bcc: $80
    add b                                         ; $6bcd: $80
    and b                                         ; $6bce: $a0
    ld [c], a                                     ; $6bcf: $e2
    di                                            ; $6bd0: $f3
    rst $38                                       ; $6bd1: $ff
    jp nc, $ffad                                  ; $6bd2: $d2 $ad $ff

    or d                                          ; $6bd5: $b2
    cp a                                          ; $6bd6: $bf
    and b                                         ; $6bd7: $a0
    db $db                                        ; $6bd8: $db
    db $f4                                        ; $6bd9: $f4
    rst $08                                       ; $6bda: $cf
    ld sp, hl                                     ; $6bdb: $f9
    sub $fd                                       ; $6bdc: $d6 $fd
    or $50                                        ; $6bde: $f6 $50
    and b                                         ; $6be0: $a0
    cp a                                          ; $6be1: $bf
    jp hl                                         ; $6be2: $e9


    cp a                                          ; $6be3: $bf
    rst $38                                       ; $6be4: $ff
    scf                                           ; $6be5: $37
    cp $ff                                        ; $6be6: $fe $ff
    ld e, $f2                                     ; $6be8: $1e $f2
    ld a, [hl]                                    ; $6bea: $7e
    pop hl                                        ; $6beb: $e1
    rst $38                                       ; $6bec: $ff
    ld c, c                                       ; $6bed: $49
    ld a, a                                       ; $6bee: $7f
    rst $38                                       ; $6bef: $ff
    ei                                            ; $6bf0: $fb
    rst $38                                       ; $6bf1: $ff
    adc a                                         ; $6bf2: $8f
    ld b, h                                       ; $6bf3: $44
    ret nz                                        ; $6bf4: $c0

    xor a                                         ; $6bf5: $af
    cp c                                          ; $6bf6: $b9
    cp a                                          ; $6bf7: $bf
    cp a                                          ; $6bf8: $bf
    ldh [$ee], a                                  ; $6bf9: $e0 $ee
    ld e, h                                       ; $6bfb: $5c
    pop bc                                        ; $6bfc: $c1
    or l                                          ; $6bfd: $b5
    sbc a                                         ; $6bfe: $9f
    sbc l                                         ; $6bff: $9d
    and d                                         ; $6c00: $a2
    pop bc                                        ; $6c01: $c1
    db $10                                        ; $6c02: $10
    ldh a, [$98]                                  ; $6c03: $f0 $98
    rst $38                                       ; $6c05: $ff
    ld hl, sp+$44                                 ; $6c06: $f8 $44
    db $fc                                        ; $6c08: $fc
    and h                                         ; $6c09: $a4
    db $fc                                        ; $6c0a: $fc
    db $fc                                        ; $6c0b: $fc
    ld a, h                                       ; $6c0c: $7c
    db $fc                                        ; $6c0d: $fc
    rst $38                                       ; $6c0e: $ff
    inc [hl]                                      ; $6c0f: $34
    add c                                         ; $6c10: $81
    add c                                         ; $6c11: $81
    add d                                         ; $6c12: $82
    add e                                         ; $6c13: $83
    add e                                         ; $6c14: $83
    add e                                         ; $6c15: $83
    add a                                         ; $6c16: $87
    rst $28                                       ; $6c17: $ef
    add h                                         ; $6c18: $84
    add a                                         ; $6c19: $87
    add l                                         ; $6c1a: $85
    sbc a                                         ; $6c1b: $9f
    inc e                                         ; $6c1c: $1c
    ret nz                                        ; $6c1d: $c0

    call nc, $f0ff                                ; $6c1e: $d4 $ff $f0
    rst $38                                       ; $6c21: $ff
    ldh a, [$88]                                  ; $6c22: $f0 $88
    ld hl, sp-$18                                 ; $6c24: $f8 $e8
    ld hl, sp-$0c                                 ; $6c26: $f8 $f4
    sbc h                                         ; $6c28: $9c
    db $f4                                        ; $6c29: $f4
    rst $38                                       ; $6c2a: $ff
    db $fc                                        ; $6c2b: $fc
    db $f4                                        ; $6c2c: $f4
    call c, $fcf4                                 ; $6c2d: $dc $f4 $fc
    ld [bc], a                                    ; $6c30: $02
    cp $87                                        ; $6c31: $fe $87
    ld l, l                                       ; $6c33: $6d
    add a                                         ; $6c34: $87
    ld c, b                                       ; $6c35: $48
    pop bc                                        ; $6c36: $c1
    or e                                          ; $6c37: $b3
    xor h                                         ; $6c38: $ac
    ld b, h                                       ; $6c39: $44
    ld h, b                                       ; $6c3a: $60
    rst $38                                       ; $6c3b: $ff

jr_040_6c3c:
    cp [hl]                                       ; $6c3c: $be
    sub d                                         ; $6c3d: $92
    ldh [rIE], a                                  ; $6c3e: $e0 $ff
    ldh [$e0], a                                  ; $6c40: $e0 $e0
    jr jr_040_6c3c                                ; $6c42: $18 $f8

    add h                                         ; $6c44: $84
    db $fc                                        ; $6c45: $fc
    ld [c], a                                     ; $6c46: $e2
    ld a, [hl]                                    ; $6c47: $7e
    rst $38                                       ; $6c48: $ff
    ld a, [$fe3e]                                 ; $6c49: $fa $3e $fe
    and $3f                                       ; $6c4c: $e6 $3f
    di                                            ; $6c4e: $f3
    db $fd                                        ; $6c4f: $fd
    rst $38                                       ; $6c50: $ff
    rst $18                                       ; $6c51: $df
    add a                                         ; $6c52: $87
    add a                                         ; $6c53: $87
    adc b                                         ; $6c54: $88
    adc a                                         ; $6c55: $8f
    adc h                                         ; $6c56: $8c
    ld a, $c0                                     ; $6c57: $3e $c0
    and e                                         ; $6c59: $a3
    cp a                                          ; $6c5a: $bf
    cp a                                          ; $6c5b: $bf
    rst $38                                       ; $6c5c: $ff
    call c, $e3ff                                 ; $6c5d: $dc $ff $e3
    cp a                                          ; $6c60: $bf
    cp l                                          ; $6c61: $bd
    ld [c], a                                     ; $6c62: $e2
    and c                                         ; $6c63: $a1

jr_040_6c64:
    jr nc, jr_040_6c64                            ; $6c64: $30 $fe

    ld [c], a                                     ; $6c66: $e2
    and b                                         ; $6c67: $a0
    add h                                         ; $6c68: $84
    db $fc                                        ; $6c69: $fc
    add $7e                                       ; $6c6a: $c6 $7e
    rst $08                                       ; $6c6c: $cf
    ld a, c                                       ; $6c6d: $79
    rst $18                                       ; $6c6e: $df
    cp a                                          ; $6c6f: $bf
    ld [hl], l                                    ; $6c70: $75
    cp [hl]                                       ; $6c71: $be

jr_040_6c72:
    cp [hl]                                       ; $6c72: $be
    push bc                                       ; $6c73: $c5
    rst $38                                       ; $6c74: $ff
    and b                                         ; $6c75: $a0
    ld h, d                                       ; $6c76: $62
    ret nz                                        ; $6c77: $c0

    push bc                                       ; $6c78: $c5
    rst $38                                       ; $6c79: $ff
    rst $38                                       ; $6c7a: $ff
    rst $28                                       ; $6c7b: $ef
    ld a, [$b1be]                                 ; $6c7c: $fa $be $b1
    xor l                                         ; $6c7f: $ad
    or e                                          ; $6c80: $b3
    ld h, b                                       ; $6c81: $60
    cp e                                          ; $6c82: $bb
    ld h, b                                       ; $6c83: $60
    sbc b                                         ; $6c84: $98
    ld h, h                                       ; $6c85: $64
    ret nz                                        ; $6c86: $c0

    ld [bc], a                                    ; $6c87: $02
    cp $01                                        ; $6c88: $fe $01
    ld l, b                                       ; $6c8a: $68
    jr nz, jr_040_6d06                            ; $6c8b: $20 $79

    rst $28                                       ; $6c8d: $ef
    rst $38                                       ; $6c8e: $ff
    di                                            ; $6c8f: $f3
    sbc a                                         ; $6c90: $9f
    adc a                                         ; $6c91: $8f
    ld [bc], a                                    ; $6c92: $02
    ret nz                                        ; $6c93: $c0

    and a                                         ; $6c94: $a7
    cp a                                          ; $6c95: $bf
    xor a                                         ; $6c96: $af
    or a                                          ; $6c97: $b7
    cp b                                          ; $6c98: $b8
    xor a                                         ; $6c99: $af
    cp b                                          ; $6c9a: $b8
    add b                                         ; $6c9b: $80
    pop hl                                        ; $6c9c: $e1
    rst $18                                       ; $6c9d: $df
    rst $38                                       ; $6c9e: $ff
    ld h, b                                       ; $6c9f: $60
    push hl                                       ; $6ca0: $e5
    sub [hl]                                      ; $6ca1: $96
    ld a, a                                       ; $6ca2: $7f
    cp $81                                        ; $6ca3: $fe $81
    rst $38                                       ; $6ca5: $ff
    ld b, c                                       ; $6ca6: $41
    rst $38                                       ; $6ca7: $ff
    di                                            ; $6ca8: $f3
    cp a                                          ; $6ca9: $bf
    and b                                         ; $6caa: $a0
    pop hl                                        ; $6cab: $e1
    ld d, a                                       ; $6cac: $57
    adc a                                         ; $6cad: $8f
    adc b                                         ; $6cae: $88
    cp a                                          ; $6caf: $bf
    jr nz, jr_040_6c72                            ; $6cb0: $20 $c0

    rst $28                                       ; $6cb2: $ef
    sbc h                                         ; $6cb3: $9c
    and c                                         ; $6cb4: $a1
    and [hl]                                      ; $6cb5: $a6
    ret nz                                        ; $6cb6: $c0

    and c                                         ; $6cb7: $a1
    rst $38                                       ; $6cb8: $ff
    ld [$c4f8], sp                                ; $6cb9: $08 $f8 $c4
    db $fc                                        ; $6cbc: $fc
    ld [hl], h                                    ; $6cbd: $74
    db $fc                                        ; $6cbe: $fc
    adc [hl]                                      ; $6cbf: $8e
    cp $ef                                        ; $6cc0: $fe $ef
    di                                            ; $6cc2: $f3
    rst $38                                       ; $6cc3: $ff
    db $fd                                        ; $6cc4: $fd
    ld a, a                                       ; $6cc5: $7f
    and b                                         ; $6cc6: $a0
    and c                                         ; $6cc7: $a1
    adc b                                         ; $6cc8: $88
    adc a                                         ; $6cc9: $8f
    sbc a                                         ; $6cca: $9f
    ld a, e                                       ; $6ccb: $7b
    sbc a                                         ; $6ccc: $9f
    and c                                         ; $6ccd: $a1
    cp $a0                                        ; $6cce: $fe $a0
    rst $38                                       ; $6cd0: $ff
    rst $38                                       ; $6cd1: $ff
    sbc a                                         ; $6cd2: $9f
    sbc c                                         ; $6cd3: $99
    ld h, d                                       ; $6cd4: $62
    and l                                         ; $6cd5: $a5
    rst $38                                       ; $6cd6: $ff
    add h                                         ; $6cd7: $84
    db $fc                                        ; $6cd8: $fc
    ld b, d                                       ; $6cd9: $42
    cp $f2                                        ; $6cda: $fe $f2
    cp $de                                        ; $6cdc: $fe $de
    cp [hl]                                       ; $6cde: $be
    cp $8c                                        ; $6cdf: $fe $8c
    and b                                         ; $6ce1: $a0
    ret nz                                        ; $6ce2: $c0

    rst $38                                       ; $6ce3: $ff
    jp $bfbf                                      ; $6ce4: $c3 $bf $bf


    sbc a                                         ; $6ce7: $9f
    sbc [hl]                                      ; $6ce8: $9e
    rst $30                                       ; $6ce9: $f7
    adc a                                         ; $6cea: $8f
    adc b                                         ; $6ceb: $88
    add a                                         ; $6cec: $87
    sub b                                         ; $6ced: $90
    ld h, b                                       ; $6cee: $60
    cp $2a                                        ; $6cef: $fe $2a
    cp $82                                        ; $6cf1: $fe $82
    rst $38                                       ; $6cf3: $ff
    db $fc                                        ; $6cf4: $fc
    add h                                         ; $6cf5: $84
    ld hl, sp+$18                                 ; $6cf6: $f8 $18
    db $fc                                        ; $6cf8: $fc
    inc a                                         ; $6cf9: $3c
    ld hl, sp+$38                                 ; $6cfa: $f8 $38
    ei                                            ; $6cfc: $fb
    ret nz                                        ; $6cfd: $c0

    ld b, b                                       ; $6cfe: $40
    pop af                                        ; $6cff: $f1
    daa                                           ; $6d00: $27
    ret nz                                        ; $6d01: $c0

    rst $38                                       ; $6d02: $ff
    or b                                          ; $6d03: $b0
    cp a                                          ; $6d04: $bf
    adc a                                         ; $6d05: $8f

jr_040_6d06:
    ld a, [$a0ff]                                 ; $6d06: $fa $ff $a0
    ld bc, $a0ea                                  ; $6d09: $01 $ea $a0
    dec l                                         ; $6d0c: $2d
    di                                            ; $6d0d: $f3
    ccf                                           ; $6d0e: $3f
    pop hl                                        ; $6d0f: $e1
    ld a, [hl]                                    ; $6d10: $7e
    rst $30                                       ; $6d11: $f7

jr_040_6d12:
    ld a, [c]                                     ; $6d12: $f2
    db $fc                                        ; $6d13: $fc
    call nz, $c120                                ; $6d14: $c4 $20 $c1
    rst $38                                       ; $6d17: $ff
    pop de                                        ; $6d18: $d1
    xor $d1                                       ; $6d19: $ee $d1
    sbc a                                         ; $6d1b: $9f
    cp a                                          ; $6d1c: $bf
    xor b                                         ; $6d1d: $a8
    rst $38                                       ; $6d1e: $ff
    and $df                                       ; $6d1f: $e6 $df
    and $00                                       ; $6d21: $e6 $00
    ld d, b                                       ; $6d23: $50
    pop bc                                        ; $6d24: $c1
    pop af                                        ; $6d25: $f1
    rst $38                                       ; $6d26: $ff
    ld e, a                                       ; $6d27: $5f
    pop af                                        ; $6d28: $f1
    ld e, a                                       ; $6d29: $5f
    db $e3                                        ; $6d2a: $e3
    ccf                                           ; $6d2b: $3f
    db $e3                                        ; $6d2c: $e3
    ccf                                           ; $6d2d: $3f
    jp nz, Jump_040_7eef                          ; $6d2e: $c2 $ef $7e

    sbc h                                         ; $6d31: $9c
    db $fc                                        ; $6d32: $fc
    ldh a, [$d2]                                  ; $6d33: $f0 $d2
    nop                                           ; $6d35: $00
    cp a                                          ; $6d36: $bf
    and [hl]                                      ; $6d37: $a6
    rst $38                                       ; $6d38: $ff
    ld [hl], l                                    ; $6d39: $75

jr_040_6d3a:
    jp hl                                         ; $6d3a: $e9


    dec d                                         ; $6d3b: $15
    jr nz, jr_040_6d3a                            ; $6d3c: $20 $fc

    sbc h                                         ; $6d3e: $9c
    ldh [$b8], a                                  ; $6d3f: $e0 $b8
    sbc a                                         ; $6d41: $9f
    sub b                                         ; $6d42: $90
    xor a                                         ; $6d43: $af
    nop                                           ; $6d44: $00
    db $fd                                        ; $6d45: $fd
    push af                                       ; $6d46: $f5
    ld a, c                                       ; $6d47: $79
    and b                                         ; $6d48: $a0
    ld a, [bc]                                    ; $6d49: $0a
    db $fc                                        ; $6d4a: $fc
    ld l, h                                       ; $6d4b: $6c
    ld hl, sp-$78                                 ; $6d4c: $f8 $88
    ldh a, [$63]                                  ; $6d4e: $f0 $63
    jr nc, jr_040_6d12                            ; $6d50: $30 $c0

    db $fd                                        ; $6d52: $fd
    nop                                           ; $6d53: $00
    ld [hl+], a                                   ; $6d54: $22
    ret nz                                        ; $6d55: $c0

    jr nz, @-$3c                                  ; $6d56: $20 $c2

    cp a                                          ; $6d58: $bf
    xor h                                         ; $6d59: $ac
    sbc $a0                                       ; $6d5a: $de $a0
    cp $9f                                        ; $6d5c: $fe $9f
    and b                                         ; $6d5e: $a0
    rst $30                                       ; $6d5f: $f7
    ld e, a                                       ; $6d60: $5f
    rst $38                                       ; $6d61: $ff
    add hl, bc                                    ; $6d62: $09
    rst $38                                       ; $6d63: $ff
    dec b                                         ; $6d64: $05
    cp $df                                        ; $6d65: $fe $df
    ld [de], a                                    ; $6d67: $12
    db $fc                                        ; $6d68: $fc
    inc e                                         ; $6d69: $1c
    ldh a, [rSVBK]                                ; $6d6a: $f0 $70
    ldh [$e1], a                                  ; $6d6c: $e0 $e1
    rst $38                                       ; $6d6e: $ff
    ldh a, [$3f]                                  ; $6d6f: $f0 $3f
    sbc a                                         ; $6d71: $9f
    sub h                                         ; $6d72: $94
    sbc a                                         ; $6d73: $9f
    sbc h                                         ; $6d74: $9c
    cp a                                          ; $6d75: $bf
    and d                                         ; $6d76: $a2
    cp $a0                                        ; $6d77: $fe $a0
    ldh [$a2], a                                  ; $6d79: $e0 $a2
    cp a                                          ; $6d7b: $bf
    cp $1e                                        ; $6d7c: $fe $1e
    cp $92                                        ; $6d7e: $fe $92
    cp $aa                                        ; $6d80: $fe $aa
    cp [hl]                                       ; $6d82: $be
    and d                                         ; $6d83: $a2
    ld h, b                                       ; $6d84: $60
    or $e0                                        ; $6d85: $f6 $e0
    and c                                         ; $6d87: $a1
    cp a                                          ; $6d88: $bf
    or d                                          ; $6d89: $b2
    or a                                          ; $6d8a: $b7
    nop                                           ; $6d8b: $00
    ret z                                         ; $6d8c: $c8

    rst $38                                       ; $6d8d: $ff
    ldh a, [$bf]                                  ; $6d8e: $f0 $bf
    ld sp, hl                                     ; $6d90: $f9
    xor h                                         ; $6d91: $ac
    cp $a1                                        ; $6d92: $fe $a1
    ld c, a                                       ; $6d94: $4f
    nop                                           ; $6d95: $00
    ld b, a                                       ; $6d96: $47
    db $fc                                        ; $6d97: $fc
    inc d                                         ; $6d98: $14
    ld hl, sp+$08                                 ; $6d99: $f8 $08
    ld e, d                                       ; $6d9b: $5a
    and h                                         ; $6d9c: $a4
    ldh [rLCDC], a                                ; $6d9d: $e0 $40
    nop                                           ; $6d9f: $00
    jp $919f                                      ; $6da0: $c3 $9f $91


    adc b                                         ; $6da3: $88
    add b                                         ; $6da4: $80
    and b                                         ; $6da5: $a0
    add h                                         ; $6da6: $84
    pop hl                                        ; $6da7: $e1
    rst $30                                       ; $6da8: $f7
    sub c                                         ; $6da9: $91
    sbc [hl]                                      ; $6daa: $9e
    adc c                                         ; $6dab: $89
    ccf                                           ; $6dac: $3f
    and b                                         ; $6dad: $a0
    adc $32                                       ; $6dae: $ce $32
    adc $3a                                       ; $6db0: $ce $3a
    db $e3                                        ; $6db2: $e3
    call c, $8024                                 ; $6db3: $dc $24 $80
    and d                                         ; $6db6: $a2
    sbc $e0                                       ; $6db7: $de $e0
    nop                                           ; $6db9: $00
    rst $00                                       ; $6dba: $c7
    and b                                         ; $6dbb: $a0
    cp a                                          ; $6dbc: $bf
    sbc $be                                       ; $6dbd: $de $be
    inc de                                        ; $6dbf: $13
    ld h, b                                       ; $6dc0: $60
    cp a                                          ; $6dc1: $bf
    cp d                                          ; $6dc2: $ba
    add b                                         ; $6dc3: $80
    add b                                         ; $6dc4: $80
    ld b, b                                       ; $6dc5: $40
    cp $a6                                        ; $6dc6: $fe $a6
    db $e4                                        ; $6dc8: $e4
    ld a, a                                       ; $6dc9: $7f
    db $fc                                        ; $6dca: $fc
    db $fc                                        ; $6dcb: $fc
    inc a                                         ; $6dcc: $3c
    sub c                                         ; $6dcd: $91
    sub c                                         ; $6dce: $91
    cp e                                          ; $6dcf: $bb
    xor d                                         ; $6dd0: $aa
    ld h, h                                       ; $6dd1: $64
    ldh [rIE], a                                  ; $6dd2: $e0 $ff
    sub a                                         ; $6dd4: $97
    cp c                                          ; $6dd5: $b9
    cp a                                          ; $6dd6: $bf
    di                                            ; $6dd7: $f3
    sbc $ff                                       ; $6dd8: $de $ff
    db $ed                                        ; $6dda: $ed
    cp a                                          ; $6ddb: $bf
    rst $38                                       ; $6ddc: $ff
    cp [hl]                                       ; $6ddd: $be
    jp nz, $f7c2                                  ; $6dde: $c2 $c2 $f7

    ld [hl], l                                    ; $6de1: $75
    rst $38                                       ; $6de2: $ff
    dec e                                         ; $6de3: $1d
    rst $38                                       ; $6de4: $ff
    rst $38                                       ; $6de5: $ff
    cp c                                          ; $6de6: $b9
    cp $ea                                        ; $6de7: $fe $ea
    cp $66                                        ; $6de9: $fe $66
    sbc $fa                                       ; $6deb: $de $fa
    add $ff                                       ; $6ded: $c6 $ff
    ld a, [hl]                                    ; $6def: $7e
    adc a                                         ; $6df0: $8f
    adc a                                         ; $6df1: $8f
    sub d                                         ; $6df2: $92
    sbc l                                         ; $6df3: $9d
    and a                                         ; $6df4: $a7
    cp b                                          ; $6df5: $b8
    xor a                                         ; $6df6: $af
    cp e                                          ; $6df7: $bb
    cp a                                          ; $6df8: $bf
    ldh a, [$e2]                                  ; $6df9: $f0 $e2
    add c                                         ; $6dfb: $81
    ld sp, hl                                     ; $6dfc: $f9
    cp a                                          ; $6dfd: $bf
    xor a                                         ; $6dfe: $af
    ld h, d                                       ; $6dff: $62
    add c                                         ; $6e00: $81
    inc e                                         ; $6e01: $1c
    rst $38                                       ; $6e02: $ff
    db $fc                                        ; $6e03: $fc
    adc d                                         ; $6e04: $8a
    cp $63                                        ; $6e05: $fe $63
    rst $38                                       ; $6e07: $ff
    di                                            ; $6e08: $f3
    cp $ff                                        ; $6e09: $fe $ff
    cp a                                          ; $6e0b: $bf
    call c, $5ef7                                 ; $6e0c: $dc $f7 $5e
    adc a                                         ; $6e0f: $8f
    adc a                                         ; $6e10: $8f
    or b                                          ; $6e11: $b0
    add h                                         ; $6e12: $84
    add b                                         ; $6e13: $80
    jp $ff77                                      ; $6e14: $c3 $77 $ff


    or e                                          ; $6e17: $b3
    cp [hl]                                       ; $6e18: $be
    ld e, [hl]                                    ; $6e19: $5e
    ldh [$bf], a                                  ; $6e1a: $e0 $bf
    rst $38                                       ; $6e1c: $ff
    ld [$c360], a                                 ; $6e1d: $ea $60 $c3
    rst $28                                       ; $6e20: $ef
    add h                                         ; $6e21: $84
    db $fc                                        ; $6e22: $fc
    call nz, Call_040_407c                        ; $6e23: $c4 $7c $40
    add c                                         ; $6e26: $81
    ld hl, sp-$08                                 ; $6e27: $f8 $f8
    add e                                         ; $6e29: $83
    push af                                       ; $6e2a: $f5
    add e                                         ; $6e2b: $83
    ld [c], a                                     ; $6e2c: $e2
    and c                                         ; $6e2d: $a1
    and b                                         ; $6e2e: $a0
    dec e                                         ; $6e2f: $1d
    and b                                         ; $6e30: $a0
    call z, $deff                                 ; $6e31: $cc $ff $de
    di                                            ; $6e34: $f3
    ld b, e                                       ; $6e35: $43
    cp a                                          ; $6e36: $bf
    cp c                                          ; $6e37: $b9
    ret nz                                        ; $6e38: $c0

    and c                                         ; $6e39: $a1
    nop                                           ; $6e3a: $00
    pop bc                                        ; $6e3b: $c1
    cp $a1                                        ; $6e3c: $fe $a1
    sub h                                         ; $6e3e: $94
    pop bc                                        ; $6e3f: $c1
    add b                                         ; $6e40: $80
    rst $38                                       ; $6e41: $ff
    ldh [$fe], a                                  ; $6e42: $e0 $fe
    call c, $9be3                                 ; $6e44: $dc $e3 $9b
    sbc a                                         ; $6e47: $9f
    cp e                                          ; $6e48: $bb
    and h                                         ; $6e49: $a4
    cp e                                          ; $6e4a: $bb
    xor [hl]                                      ; $6e4b: $ae
    inc c                                         ; $6e4c: $0c

jr_040_6e4d:
    rst $38                                       ; $6e4d: $ff
    inc c                                         ; $6e4e: $0c
    ld c, $0e                                     ; $6e4f: $0e $0e
    cp $f6                                        ; $6e51: $fe $f6
    jr c, jr_040_6e4d                             ; $6e53: $38 $f8

    jr jr_040_6eb3                                ; $6e55: $18 $5c

    ld b, b                                       ; $6e57: $40
    jr nz, jr_040_6e96                            ; $6e58: $20 $3c

    add c                                         ; $6e5a: $81
    add a                                         ; $6e5b: $87
    add a                                         ; $6e5c: $87
    sbc b                                         ; $6e5d: $98
    add h                                         ; $6e5e: $84
    ld h, b                                       ; $6e5f: $60
    and b                                         ; $6e60: $a0
    add b                                         ; $6e61: $80
    ldh [$7f], a                                  ; $6e62: $e0 $7f
    cp a                                          ; $6e64: $bf
    rst $28                                       ; $6e65: $ef
    cp a                                          ; $6e66: $bf
    ldh a, [$8f]                                  ; $6e67: $f0 $8f
    rst $38                                       ; $6e69: $ff
    ldh [$84], a                                  ; $6e6a: $e0 $84
    ld h, d                                       ; $6e6c: $62
    rst $38                                       ; $6e6d: $ff
    ld e, $fe                                     ; $6e6e: $1e $fe
    ld sp, hl                                     ; $6e70: $f9
    rst $28                                       ; $6e71: $ef
    pop af                                        ; $6e72: $f1
    rra                                           ; $6e73: $1f
    ld [c], a                                     ; $6e74: $e2
    cp $c3                                        ; $6e75: $fe $c3
    inc e                                         ; $6e77: $1c
    db $fc                                        ; $6e78: $fc
    ld h, b                                       ; $6e79: $60
    db $fd                                        ; $6e7a: $fd
    ld [bc], a                                    ; $6e7b: $02
    pop bc                                        ; $6e7c: $c1
    sbc h                                         ; $6e7d: $9c
    add b                                         ; $6e7e: $80
    ld hl, sp-$60                                 ; $6e7f: $f8 $a0
    sbc a                                         ; $6e81: $9f

jr_040_6e82:
    sbc b                                         ; $6e82: $98
    ei                                            ; $6e83: $fb
    add a                                         ; $6e84: $87
    add a                                         ; $6e85: $87
    add c                                         ; $6e86: $81
    jr nz, jr_040_6efd                            ; $6e87: $20 $74

    cp $aa                                        ; $6e89: $fe $aa
    cp $02                                        ; $6e8b: $fe $02
    xor $5e                                       ; $6e8d: $ee $5e
    add b                                         ; $6e8f: $80
    jr c, jr_040_6e82                             ; $6e90: $38 $f0

    ldh a, [$60]                                  ; $6e92: $f0 $60
    add c                                         ; $6e94: $81
    ei                                            ; $6e95: $fb

jr_040_6e96:
    cp $fd                                        ; $6e96: $fe $fd
    sub a                                         ; $6e98: $97
    rst $00                                       ; $6e99: $c7
    rst $38                                       ; $6e9a: $ff
    xor d                                         ; $6e9b: $aa
    dec bc                                        ; $6e9c: $0b
    ld h, b                                       ; $6e9d: $60
    db $d3                                        ; $6e9e: $d3
    call c, $40a0                                 ; $6e9f: $dc $a0 $40
    ret nz                                        ; $6ea2: $c0

    ld a, [c]                                     ; $6ea3: $f2
    rst $38                                       ; $6ea4: $ff
    cp $fa                                        ; $6ea5: $fe $fa
    ld c, $fc                                     ; $6ea7: $0e $fc
    ld h, h                                       ; $6ea9: $64
    db $fc                                        ; $6eaa: $fc
    and h                                         ; $6eab: $a4
    ld hl, sp-$21                                 ; $6eac: $f8 $df
    ret z                                         ; $6eae: $c8

    ldh a, [$30]                                  ; $6eaf: $f0 $30
    ldh [rNR41], a                                ; $6eb1: $e0 $20

jr_040_6eb3:
    nop                                           ; $6eb3: $00
    add c                                         ; $6eb4: $81
    db $f4                                        ; $6eb5: $f4
    ei                                            ; $6eb6: $fb
    xor e                                         ; $6eb7: $ab
    cp c                                          ; $6eb8: $b9
    cp a                                          ; $6eb9: $bf
    jr c, jr_040_6edc                             ; $6eba: $38 $20

    reti                                          ; $6ebc: $d9


    ld e, h                                       ; $6ebd: $5c
    add b                                         ; $6ebe: $80
    sub d                                         ; $6ebf: $92

jr_040_6ec0:
    ld d, b                                       ; $6ec0: $50
    add b                                         ; $6ec1: $80
    ld [$458e], sp                                ; $6ec2: $08 $8e $45
    jr nz, jr_040_6ec0                            ; $6ec5: $20 $f9

    cp $e6                                        ; $6ec7: $fe $e6
    ld [c], a                                     ; $6ec9: $e2
    and b                                         ; $6eca: $a0
    ld a, d                                       ; $6ecb: $7a
    ret nz                                        ; $6ecc: $c0

    ld b, b                                       ; $6ecd: $40
    add b                                         ; $6ece: $80
    call nc, $bfff                                ; $6ecf: $d4 $ff $bf
    and a                                         ; $6ed2: $a7
    cp a                                          ; $6ed3: $bf
    and h                                         ; $6ed4: $a4
    sbc a                                         ; $6ed5: $9f
    sbc b                                         ; $6ed6: $98
    sbc a                                         ; $6ed7: $9f
    sub [hl]                                      ; $6ed8: $96
    ldh a, [$a0]                                  ; $6ed9: $f0 $a0
    and e                                         ; $6edb: $a3

jr_040_6edc:
    xor c                                         ; $6edc: $a9
    add b                                         ; $6edd: $80
    ld h, b                                       ; $6ede: $60
    call nz, $c380                                ; $6edf: $c4 $80 $c3
    cp a                                          ; $6ee2: $bf
    xor c                                         ; $6ee3: $a9
    sub a                                         ; $6ee4: $97
    sbc b                                         ; $6ee5: $98
    cp [hl]                                       ; $6ee6: $be
    ld e, $c0                                     ; $6ee7: $1e $c0
    sub b                                         ; $6ee9: $90
    adc a                                         ; $6eea: $8f
    adc d                                         ; $6eeb: $8a
    add a                                         ; $6eec: $87
    add h                                         ; $6eed: $84
    ldh [$61], a                                  ; $6eee: $e0 $61
    dec b                                         ; $6ef0: $05
    rst $38                                       ; $6ef1: $ff
    rst $38                                       ; $6ef2: $ff
    adc [hl]                                      ; $6ef3: $8e
    ld a, [$fa8e]                                 ; $6ef4: $fa $8e $fa
    call c, $da74                                 ; $6ef7: $dc $74 $da
    xor a                                         ; $6efa: $af
    ld a, [hl]                                    ; $6efb: $7e
    db $e4                                        ; $6efc: $e4

jr_040_6efd:
    db $e4                                        ; $6efd: $e4
    ld b, b                                       ; $6efe: $40
    add b                                         ; $6eff: $80
    and b                                         ; $6f00: $a0
    ret z                                         ; $6f01: $c8

    or $20                                        ; $6f02: $f6 $20
    ret z                                         ; $6f04: $c8

    xor $bf                                       ; $6f05: $ee $bf
    and b                                         ; $6f07: $a0
    di                                            ; $6f08: $f3
    rst $38                                       ; $6f09: $ff
    call z, $80d8                                 ; $6f0a: $cc $d8 $80
    rst $38                                       ; $6f0d: $ff
    rst $38                                       ; $6f0e: $ff
    inc b                                         ; $6f0f: $04
    ld l, e                                       ; $6f10: $6b
    db $fc                                        ; $6f11: $fc

jr_040_6f12:
    inc e                                         ; $6f12: $1c
    rst $38                                       ; $6f13: $ff
    ld h, b                                       ; $6f14: $60
    sub h                                         ; $6f15: $94
    ld b, d                                       ; $6f16: $42
    ld h, b                                       ; $6f17: $60
    jr c, jr_040_6f12                             ; $6f18: $38 $f8

    ldh [$a1], a                                  ; $6f1a: $e0 $a1
    xor e                                         ; $6f1c: $ab
    ret nz                                        ; $6f1d: $c0

    rst $38                                       ; $6f1e: $ff
    add a                                         ; $6f1f: $87
    ld b, b                                       ; $6f20: $40
    or b                                          ; $6f21: $b0
    cp [hl]                                       ; $6f22: $be
    ld [c], a                                     ; $6f23: $e2
    adc e                                         ; $6f24: $8b
    and b                                         ; $6f25: $a0
    ld [c], a                                     ; $6f26: $e2
    db $f4                                        ; $6f27: $f4
    scf                                           ; $6f28: $37
    cp h                                          ; $6f29: $bc
    call nc, Call_040_407c                        ; $6f2a: $d4 $7c $40
    and b                                         ; $6f2d: $a0
    ldh a, [rNR10]                                ; $6f2e: $f0 $10
    ld e, $c1                                     ; $6f30: $1e $c1
    ld h, b                                       ; $6f32: $60
    rst $38                                       ; $6f33: $ff
    db $f4                                        ; $6f34: $f4
    inc h                                         ; $6f35: $24
    add b                                         ; $6f36: $80
    ld h, $80                                     ; $6f37: $26 $80
    and c                                         ; $6f39: $a1
    rst $38                                       ; $6f3a: $ff
    ret nz                                        ; $6f3b: $c0

    sbc a                                         ; $6f3c: $9f
    sub c                                         ; $6f3d: $91
    sbc a                                         ; $6f3e: $9f
    sbc d                                         ; $6f3f: $9a
    db $eb                                        ; $6f40: $eb
    cp a                                          ; $6f41: $bf
    cp d                                          ; $6f42: $ba
    add b                                         ; $6f43: $80
    ld b, c                                       ; $6f44: $41
    ld c, b                                       ; $6f45: $48
    ret nz                                        ; $6f46: $c0

    add b                                         ; $6f47: $80
    ld [hl+], a                                   ; $6f48: $22
    cp $e2                                        ; $6f49: $fe $e2
    rst $38                                       ; $6f4b: $ff
    cp $fa                                        ; $6f4c: $fe $fa
    sbc [hl]                                      ; $6f4e: $9e
    db $fc                                        ; $6f4f: $fc
    inc a                                         ; $6f50: $3c
    add a                                         ; $6f51: $87
    add a                                         ; $6f52: $87
    adc [hl]                                      ; $6f53: $8e
    ld sp, $068b                                  ; $6f54: $31 $8b $06
    add c                                         ; $6f57: $81
    sbc $80                                       ; $6f58: $de $80
    ldh [$e0], a                                  ; $6f5a: $e0 $e0
    sbc a                                         ; $6f5c: $9f
    sbc d                                         ; $6f5d: $9a
    ldh [$e3], a                                  ; $6f5e: $e0 $e3
    ld b, b                                       ; $6f60: $40
    ret nz                                        ; $6f61: $c0

    ld a, a                                       ; $6f62: $7f
    db $fc                                        ; $6f63: $fc
    db $f4                                        ; $6f64: $f4
    inc a                                         ; $6f65: $3c
    db $fc                                        ; $6f66: $fc
    inc a                                         ; $6f67: $3c
    db $fc                                        ; $6f68: $fc
    ld h, h                                       ; $6f69: $64
    add b                                         ; $6f6a: $80
    inc c                                         ; $6f6b: $0c
    add b                                         ; $6f6c: $80
    cp $ff                                        ; $6f6d: $fe $ff
    cp $ff                                        ; $6f6f: $fe $ff
    cp $ff                                        ; $6f71: $fe $ff
    cp $ff                                        ; $6f73: $fe $ff
    cp $ff                                        ; $6f75: $fe $ff
    dec e                                         ; $6f77: $1d
    dec h                                         ; $6f78: $25
    ld [bc], a                                    ; $6f79: $02
    add d                                         ; $6f7a: $82
    cp a                                          ; $6f7b: $bf
    dec h                                         ; $6f7c: $25
    cp [hl]                                       ; $6f7d: $be
    ld h, b                                       ; $6f7e: $60
    ld b, [hl]                                    ; $6f7f: $46
    ld [hl], d                                    ; $6f80: $72
    nop                                           ; $6f81: $00
    jp $8000                                      ; $6f82: $c3 $00 $80


    ld hl, sp+$60                                 ; $6f85: $f8 $60
    ld b, c                                       ; $6f87: $41
    ld l, h                                       ; $6f88: $6c
    jr nz, jr_040_6fc2                            ; $6f89: $20 $37

    pop bc                                        ; $6f8b: $c1
    rst $38                                       ; $6f8c: $ff
    rst $00                                       ; $6f8d: $c7
    ldh [$67], a                                  ; $6f8e: $e0 $67
    db $fc                                        ; $6f90: $fc
    ld d, h                                       ; $6f91: $54
    ld b, d                                       ; $6f92: $42
    ld b, b                                       ; $6f93: $40
    and b                                         ; $6f94: $a0
    add b                                         ; $6f95: $80
    ccf                                           ; $6f96: $3f
    ldh [rNR41], a                                ; $6f97: $e0 $20
    ldh a, [rSVBK]                                ; $6f99: $f0 $70
    ldh [$60], a                                  ; $6f9b: $e0 $60
    add b                                         ; $6f9d: $80
    ld [bc], a                                    ; $6f9e: $02
    cp $ff                                        ; $6f9f: $fe $ff
    nop                                           ; $6fa1: $00
    cp $ff                                        ; $6fa2: $fe $ff
    cp $ff                                        ; $6fa4: $fe $ff
    cp $ff                                        ; $6fa6: $fe $ff
    cp $ff                                        ; $6fa8: $fe $ff
    ldh a, [$f0]                                  ; $6faa: $f0 $f0
    nop                                           ; $6fac: $00
    nop                                           ; $6fad: $00
    nop                                           ; $6fae: $00
    ei                                            ; $6faf: $fb
    rst $38                                       ; $6fb0: $ff
    nop                                           ; $6fb1: $00
    cp $ec                                        ; $6fb2: $fe $ec
    inc bc                                        ; $6fb4: $03
    cp $03                                        ; $6fb5: $fe $03
    rst $38                                       ; $6fb7: $ff
    inc bc                                        ; $6fb8: $03
    cp $ea                                        ; $6fb9: $fe $ea
    add sp, -$08                                  ; $6fbb: $e8 $f8
    rrca                                          ; $6fbd: $0f
    rst $38                                       ; $6fbe: $ff
    cp b                                          ; $6fbf: $b8
    rst $38                                       ; $6fc0: $ff
    cp d                                          ; $6fc1: $ba

jr_040_6fc2:
    rst $28                                       ; $6fc2: $ef
    cp $fe                                        ; $6fc3: $fe $fe
    ldh [$aa], a                                  ; $6fc5: $e0 $aa
    cp b                                          ; $6fc7: $b8
    xor b                                         ; $6fc8: $a8
    rst $38                                       ; $6fc9: $ff
    rst $28                                       ; $6fca: $ef
    rst $38                                       ; $6fcb: $ff
    ld bc, $ffdf                                  ; $6fcc: $01 $df $ff
    rst $38                                       ; $6fcf: $ff
    adc h                                         ; $6fd0: $8c
    rst $38                                       ; $6fd1: $ff
    xor l                                         ; $6fd2: $ad
    cp $e1                                        ; $6fd3: $fe $e1
    xor l                                         ; $6fd5: $ad
    add h                                         ; $6fd6: $84
    rst $38                                       ; $6fd7: $ff
    add h                                         ; $6fd8: $84
    rst $38                                       ; $6fd9: $ff
    rst $38                                       ; $6fda: $ff
    rst $38                                       ; $6fdb: $ff
    rst $18                                       ; $6fdc: $df
    ld [hl], b                                    ; $6fdd: $70
    rst $18                                       ; $6fde: $df
    ld a, l                                       ; $6fdf: $7d
    rst $30                                       ; $6fe0: $f7
    rst $18                                       ; $6fe1: $df
    ld a, l                                       ; $6fe2: $7d
    rst $00                                       ; $6fe3: $c7
    cp $e0                                        ; $6fe4: $fe $e0
    ld h, l                                       ; $6fe6: $65
    dec a                                         ; $6fe7: $3d
    dec h                                         ; $6fe8: $25
    rst $38                                       ; $6fe9: $ff
    rst $38                                       ; $6fea: $ff
    rst $20                                       ; $6feb: $e7
    rst $38                                       ; $6fec: $ff
    ret nz                                        ; $6fed: $c0

    ld a, a                                       ; $6fee: $7f
    rst $38                                       ; $6fef: $ff
    push bc                                       ; $6ff0: $c5
    rst $38                                       ; $6ff1: $ff
    push de                                       ; $6ff2: $d5
    ld a, l                                       ; $6ff3: $7d
    ld a, a                                       ; $6ff4: $7f
    cp $e0                                        ; $6ff5: $fe $e0
    ld d, l                                       ; $6ff7: $55
    call nz, $ff44                                ; $6ff8: $c4 $44 $ff
    ld a, a                                       ; $6ffb: $7f
    and b                                         ; $6ffc: $a0
    ldh [rIE], a                                  ; $6ffd: $e0 $ff
    rst $38                                       ; $6fff: $ff
    ld b, h                                       ; $7000: $44
    rst $38                                       ; $7001: $ff
    ld d, l                                       ; $7002: $55
    rst $38                                       ; $7003: $ff
    ld e, l                                       ; $7004: $5d
    rst $38                                       ; $7005: $ff
    ld e, l                                       ; $7006: $5d
    rst $18                                       ; $7007: $df
    ld d, l                                       ; $7008: $55
    ld e, l                                       ; $7009: $5d
    ld d, l                                       ; $700a: $55
    rst $38                                       ; $700b: $ff
    rst $30                                       ; $700c: $f7
    ldh a, [$e1]                                  ; $700d: $f0 $e1
    ld b, [hl]                                    ; $700f: $46
    rst $38                                       ; $7010: $ff
    sbc l                                         ; $7011: $9d
    ld d, [hl]                                    ; $7012: $56
    cp $e1                                        ; $7013: $fe $e1
    ld d, [hl]                                    ; $7015: $56
    ld b, d                                       ; $7016: $42
    ld b, d                                       ; $7017: $42
    ret nz                                        ; $7018: $c0

    ldh [$e0], a                                  ; $7019: $e0 $e0
    ldh [$08], a                                  ; $701b: $e0 $08
    rst $38                                       ; $701d: $ff
    rst $38                                       ; $701e: $ff
    xor d                                         ; $701f: $aa
    rst $38                                       ; $7020: $ff
    xor b                                         ; $7021: $a8
    rst $38                                       ; $7022: $ff
    xor e                                         ; $7023: $ab
    xor e                                         ; $7024: $ab
    xor b                                         ; $7025: $a8
    cp l                                          ; $7026: $bd
    xor b                                         ; $7027: $a8
    or b                                          ; $7028: $b0
    ldh [rTAC], a                                 ; $7029: $e0 $07
    db $fd                                        ; $702b: $fd
    rst $38                                       ; $702c: $ff
    adc b                                         ; $702d: $88
    and b                                         ; $702e: $a0
    db $e4                                        ; $702f: $e4
    xor h                                         ; $7030: $ac
    dec b                                         ; $7031: $05
    xor h                                         ; $7032: $ac
    ldh [$e2], a                                  ; $7033: $e0 $e2
    add b                                         ; $7035: $80
    cp $e2                                        ; $7036: $fe $e2
    ld hl, sp-$19                                 ; $7038: $f8 $e7
    ld c, [hl]                                    ; $703a: $4e
    ld [$0000], a                                 ; $703b: $ea $00 $00
    nop                                           ; $703e: $00
    di                                            ; $703f: $f3
    rst $38                                       ; $7040: $ff
    nop                                           ; $7041: $00
    cp $ff                                        ; $7042: $fe $ff
    ld [$0fea], a                                 ; $7044: $ea $ea $0f
    ei                                            ; $7047: $fb
    rrca                                          ; $7048: $0f
    ld a, [$0ffb]                                 ; $7049: $fa $fb $0f
    ld hl, sp-$02                                 ; $704c: $f8 $fe
    ldh [$fa], a                                  ; $704e: $e0 $fa
    ld a, [bc]                                    ; $7050: $0a
    ei                                            ; $7051: $fb
    dec bc                                        ; $7052: $0b
    rst $38                                       ; $7053: $ff
    rst $38                                       ; $7054: $ff
    rrca                                          ; $7055: $0f
    rst $38                                       ; $7056: $ff
    ldh [$3f], a                                  ; $7057: $e0 $3f
    rst $38                                       ; $7059: $ff
    ld h, d                                       ; $705a: $62
    rst $38                                       ; $705b: $ff
    ld [$fe7e], a                                 ; $705c: $ea $7e $fe
    ldh [rOCPS], a                                ; $705f: $e0 $6a
    ld l, d                                       ; $7061: $6a
    ld [hl+], a                                   ; $7062: $22
    ld [hl+], a                                   ; $7063: $22
    rst $38                                       ; $7064: $ff
    rst $38                                       ; $7065: $ff
    cp [hl]                                       ; $7066: $be
    ldh [$ef], a                                  ; $7067: $e0 $ef
    rst $38                                       ; $7069: $ff
    ld [hl+], a                                   ; $706a: $22
    rst $38                                       ; $706b: $ff
    xor d                                         ; $706c: $aa
    cp $e0                                        ; $706d: $fe $e0
    and d                                         ; $706f: $a2
    and d                                         ; $7070: $a2
    ld l, $ff                                     ; $7071: $2e $ff
    ld l, $ff                                     ; $7073: $2e $ff
    ei                                            ; $7075: $fb
    rst $38                                       ; $7076: $ff
    rlca                                          ; $7077: $07
    db $fc                                        ; $7078: $fc
    rst $20                                       ; $7079: $e7
    dec a                                         ; $707a: $3d
    ei                                            ; $707b: $fb
    rst $20                                       ; $707c: $e7
    cp l                                          ; $707d: $bd
    cp $e1                                        ; $707e: $fe $e1
    or l                                          ; $7080: $b5
    inc e                                         ; $7081: $1c
    inc d                                         ; $7082: $14
    rst $38                                       ; $7083: $ff
    rst $30                                       ; $7084: $f7
    rst $38                                       ; $7085: $ff
    rst $38                                       ; $7086: $ff
    ldh a, [$1f]                                  ; $7087: $f0 $1f
    rst $38                                       ; $7089: $ff
    push de                                       ; $708a: $d5
    rst $38                                       ; $708b: $ff
    push de                                       ; $708c: $d5
    ld a, a                                       ; $708d: $7f
    cp a                                          ; $708e: $bf
    push af                                       ; $708f: $f5
    ld a, a                                       ; $7090: $7f
    push de                                       ; $7091: $d5
    push de                                       ; $7092: $d5
    ld de, $d011                                  ; $7093: $11 $11 $d0
    ld [c], a                                     ; $7096: $e2
    ldh a, [$f7]                                  ; $7097: $f0 $f7
    rra                                           ; $7099: $1f
    ldh a, [$5f]                                  ; $709a: $f0 $5f
    cp $e0                                        ; $709c: $fe $e0
    rra                                           ; $709e: $1f
    db $10                                        ; $709f: $10
    ld a, a                                       ; $70a0: $7f
    ld [hl], b                                    ; $70a1: $70
    inc bc                                        ; $70a2: $03
    rst $38                                       ; $70a3: $ff
    ret nz                                        ; $70a4: $c0

    ld a, [hl]                                    ; $70a5: $7e
    rst $38                                       ; $70a6: $ff
    db $ec                                        ; $70a7: $ec
    db $eb                                        ; $70a8: $eb
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    nop                                           ; $70ab: $00
    rst $20                                       ; $70ac: $e7
    rst $38                                       ; $70ad: $ff
    inc bc                                        ; $70ae: $03
    cp $fe                                        ; $70af: $fe $fe
    ld [c], a                                     ; $70b1: $e2
    ld hl, sp-$20                                 ; $70b2: $f8 $e0
    ld [bc], a                                    ; $70b4: $02
    cp $02                                        ; $70b5: $fe $02
    rst $38                                       ; $70b7: $ff
    rst $38                                       ; $70b8: $ff
    inc bc                                        ; $70b9: $03
    rst $38                                       ; $70ba: $ff
    cp $0b                                        ; $70bb: $fe $0b
    rst $38                                       ; $70bd: $ff
    add sp, -$01                                  ; $70be: $e8 $ff
    rst $38                                       ; $70c0: $ff
    ld a, [de]                                    ; $70c1: $1a
    rst $38                                       ; $70c2: $ff
    ld [$eaff], a                                 ; $70c3: $ea $ff $ea
    ld [$0a0a], a                                 ; $70c6: $ea $0a $0a
    db $db                                        ; $70c9: $db
    rst $38                                       ; $70ca: $ff
    rst $38                                       ; $70cb: $ff
    ldh [$e0], a                                  ; $70cc: $e0 $e0
    ei                                            ; $70ce: $fb
    xor [hl]                                      ; $70cf: $ae
    cp $e0                                        ; $70d0: $fe $e0
    adc [hl]                                      ; $70d2: $8e
    ei                                            ; $70d3: $fb
    rst $38                                       ; $70d4: $ff
    xor $ea                                       ; $70d5: $ee $ea
    adc [hl]                                      ; $70d7: $8e
    adc d                                         ; $70d8: $8a
    rst $38                                       ; $70d9: $ff
    ei                                            ; $70da: $fb
    rst $38                                       ; $70db: $ff
    ld hl, sp-$23                                 ; $70dc: $f8 $dd
    rrca                                          ; $70de: $0f
    db $e4                                        ; $70df: $e4
    ldh [$fa], a                                  ; $70e0: $e0 $fa
    rst $38                                       ; $70e2: $ff
    adc d                                         ; $70e3: $8a
    ldh [$e0], a                                  ; $70e4: $e0 $e0
    ld [$fe08], sp                                ; $70e6: $08 $08 $fe
    ldh [$e3], a                                  ; $70e9: $e0 $e3
    xor a                                         ; $70eb: $af
    ei                                            ; $70ec: $fb
    xor a                                         ; $70ed: $af
    ld sp, hl                                     ; $70ee: $f9
    adc a                                         ; $70ef: $8f
    ld sp, hl                                     ; $70f0: $f9
    rst $28                                       ; $70f1: $ef
    db $fd                                        ; $70f2: $fd
    db $eb                                        ; $70f3: $eb
    ldh [$e2], a                                  ; $70f4: $e0 $e2
    pop hl                                        ; $70f6: $e1
    ccf                                           ; $70f7: $3f
    rst $38                                       ; $70f8: $ff
    ld h, d                                       ; $70f9: $62
    rst $38                                       ; $70fa: $ff
    ld l, e                                       ; $70fb: $6b
    xor $fe                                       ; $70fc: $ee $fe
    pop hl                                        ; $70fe: $e1
    ld l, e                                       ; $70ff: $6b
    dec hl                                        ; $7100: $2b
    dec hl                                        ; $7101: $2b
    ret nz                                        ; $7102: $c0

    ldh [$c0], a                                  ; $7103: $e0 $c0
    ld a, a                                       ; $7105: $7f
    rst $38                                       ; $7106: $ff
    rst $30                                       ; $7107: $f7
    ld [hl+], a                                   ; $7108: $22
    rst $38                                       ; $7109: $ff
    ld l, d                                       ; $710a: $6a
    db $ec                                        ; $710b: $ec
    ldh [$6e], a                                  ; $710c: $e0 $6e
    ld l, [hl]                                    ; $710e: $6e
    ld [hl+], a                                   ; $710f: $22
    ld [hl+], a                                   ; $7110: $22
    sub $b0                                       ; $7111: $d6 $b0
    ldh [rP1], a                                  ; $7113: $e0 $00
    rst $38                                       ; $7115: $ff
    ldh a, [$e0]                                  ; $7116: $f0 $e0
    xor d                                         ; $7118: $aa
    and b                                         ; $7119: $a0
    pop hl                                        ; $711a: $e1
    xor d                                         ; $711b: $aa
    ld [$aabf], a                                 ; $711c: $ea $bf $aa
    rst $38                                       ; $711f: $ff
    cp a                                          ; $7120: $bf
    rst $38                                       ; $7121: $ff
    inc e                                         ; $7122: $1c
    rst $30                                       ; $7123: $f7
    ldh [$e0], a                                  ; $7124: $e0 $e0
    or a                                          ; $7126: $b7
    ld a, a                                       ; $7127: $7f
    rst $38                                       ; $7128: $ff
    or [hl]                                       ; $7129: $b6
    rst $38                                       ; $712a: $ff
    or [hl]                                       ; $712b: $b6
    or [hl]                                       ; $712c: $b6
    ld [de], a                                    ; $712d: $12
    ld [de], a                                    ; $712e: $12
    ldh [$e3], a                                  ; $712f: $e0 $e3
    cp c                                          ; $7131: $b9
    adc b                                         ; $7132: $88
    ldh [$e0], a                                  ; $7133: $e0 $e0
    cp $e0                                        ; $7135: $fe $e0
    xor d                                         ; $7137: $aa
    adc d                                         ; $7138: $8a
    adc d                                         ; $7139: $8a
    add b                                         ; $713a: $80
    ldh [rTAC], a                                 ; $713b: $e0 $07
    rst $18                                       ; $713d: $df
    db $fd                                        ; $713e: $fd
    rst $38                                       ; $713f: $ff
    adc l                                         ; $7140: $8d
    rst $38                                       ; $7141: $ff
    xor l                                         ; $7142: $ad
    cp $e1                                        ; $7143: $fe $e1
    xor l                                         ; $7145: $ad
    add l                                         ; $7146: $85
    ld bc, $c085                                  ; $7147: $01 $85 $c0
    ld [c], a                                     ; $714a: $e2
    cp $ea                                        ; $714b: $fe $ea
    nop                                           ; $714d: $00
    nop                                           ; $714e: $00
    nop                                           ; $714f: $00
    ei                                            ; $7150: $fb
    rst $38                                       ; $7151: $ff
    nop                                           ; $7152: $00
    cp $ec                                        ; $7153: $fe $ec
    ld c, $fb                                     ; $7155: $0e $fb
    ld c, $fb                                     ; $7157: $0e $fb
    rrca                                          ; $7159: $0f
    rst $38                                       ; $715a: $ff
    db $fd                                        ; $715b: $fd
    rrca                                          ; $715c: $0f
    cp $07                                        ; $715d: $fe $07
    cp $02                                        ; $715f: $fe $02
    cp $02                                        ; $7161: $fe $02
    rst $38                                       ; $7163: $ff
    rst $38                                       ; $7164: $ff
    inc bc                                        ; $7165: $03
    rst $38                                       ; $7166: $ff
    ldh [$bf], a                                  ; $7167: $e0 $bf
    rst $38                                       ; $7169: $ff

jr_040_716a:
    and d                                         ; $716a: $a2
    rst $38                                       ; $716b: $ff
    rst $38                                       ; $716c: $ff
    ld l, d                                       ; $716d: $6a
    rst $38                                       ; $716e: $ff
    ld [$ebff], a                                 ; $716f: $ea $ff $eb
    xor e                                         ; $7172: $ab
    ld [c], a                                     ; $7173: $e2
    and d                                         ; $7174: $a2
    rst $38                                       ; $7175: $ff
    rst $38                                       ; $7176: $ff
    cp a                                          ; $7177: $bf
    rst $38                                       ; $7178: $ff
    jr c, jr_040_716a                             ; $7179: $38 $ef

    rst $38                                       ; $717b: $ff
    ld [hl+], a                                   ; $717c: $22
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    db $eb                                        ; $717f: $eb
    rst $38                                       ; $7180: $ff
    ld a, [hl+]                                   ; $7181: $2a
    rst $38                                       ; $7182: $ff
    xor d                                         ; $7183: $aa
    xor d                                         ; $7184: $aa
    ld a, [hl+]                                   ; $7185: $2a
    ld a, [hl+]                                   ; $7186: $2a
    rst $38                                       ; $7187: $ff
    rst $38                                       ; $7188: $ff
    rst $38                                       ; $7189: $ff
    rst $38                                       ; $718a: $ff
    ccf                                           ; $718b: $3f
    ldh [$bf], a                                  ; $718c: $e0 $bf
    xor $bf                                       ; $718e: $ee $bf
    rst $38                                       ; $7190: $ff
    xor $bb                                       ; $7191: $ee $bb
    rst $28                                       ; $7193: $ef
    cp e                                          ; $7194: $bb
    xor $ae                                       ; $7195: $ee $ae
    ldh [$a0], a                                  ; $7197: $e0 $a0
    call c, $e0e0                                 ; $7199: $dc $e0 $e0
    ret nc                                        ; $719c: $d0

    ldh [$88], a                                  ; $719d: $e0 $88
    rst $38                                       ; $719f: $ff
    xor d                                         ; $71a0: $aa
    cp $e1                                        ; $71a1: $fe $e1
    xor d                                         ; $71a3: $aa
    xor b                                         ; $71a4: $a8
    db $fd                                        ; $71a5: $fd
    xor b                                         ; $71a6: $a8
    ldh [$e0], a                                  ; $71a7: $e0 $e0
    nop                                           ; $71a9: $00
    rst $38                                       ; $71aa: $ff
    rst $38                                       ; $71ab: $ff
    pop bc                                        ; $71ac: $c1
    rst $38                                       ; $71ad: $ff
    push de                                       ; $71ae: $d5
    xor $fe                                       ; $71af: $ee $fe
    pop hl                                        ; $71b1: $e1
    push de                                       ; $71b2: $d5
    ld d, l                                       ; $71b3: $55
    ld d, l                                       ; $71b4: $55
    ldh a, [$e3]                                  ; $71b5: $f0 $e3
    inc d                                         ; $71b7: $14
    rst $38                                       ; $71b8: $ff
    ld e, l                                       ; $71b9: $5d
    rst $38                                       ; $71ba: $ff
    rst $38                                       ; $71bb: $ff
    ld d, l                                       ; $71bc: $55
    rst $38                                       ; $71bd: $ff
    dec d                                         ; $71be: $15
    dec d                                         ; $71bf: $15
    ld [hl], h                                    ; $71c0: $74
    ld [hl], h                                    ; $71c1: $74
    rst $38                                       ; $71c2: $ff
    push af                                       ; $71c3: $f5
    rst $18                                       ; $71c4: $df
    ldh [$e1], a                                  ; $71c5: $e0 $e1
    ld b, h                                       ; $71c7: $44
    ld a, [c]                                     ; $71c8: $f2
    ldh [rHDMA4], a                               ; $71c9: $e0 $54
    rst $38                                       ; $71cb: $ff
    ld d, a                                       ; $71cc: $57
    ld d, a                                       ; $71cd: $57
    ei                                            ; $71ce: $fb
    ld d, h                                       ; $71cf: $54
    ld d, h                                       ; $71d0: $54
    or b                                          ; $71d1: $b0
    ldh [rSVBK], a                                ; $71d2: $e0 $70
    rst $18                                       ; $71d4: $df
    rst $38                                       ; $71d5: $ff
    ld b, l                                       ; $71d6: $45
    rst $38                                       ; $71d7: $ff
    push hl                                       ; $71d8: $e5
    rst $10                                       ; $71d9: $d7
    ldh [$e0], a                                  ; $71da: $e0 $e0
    ld d, l                                       ; $71dc: $55
    rst $38                                       ; $71dd: $ff
    ldh [$c0], a                                  ; $71de: $e0 $c0
    ld [c], a                                     ; $71e0: $e2
    ldh a, [$1f]                                  ; $71e1: $f0 $1f
    ldh a, [$fd]                                  ; $71e3: $f0 $fd
    ld e, a                                       ; $71e5: $5f
    cp $e0                                        ; $71e6: $fe $e0
    rra                                           ; $71e8: $1f
    db $10                                        ; $71e9: $10
    ld a, a                                       ; $71ea: $7f
    ld [hl], b                                    ; $71eb: $70
    rst $38                                       ; $71ec: $ff
    ret nz                                        ; $71ed: $c0

    nop                                           ; $71ee: $00
    ld d, b                                       ; $71ef: $50
    db $ed                                        ; $71f0: $ed
    nop                                           ; $71f1: $00
    nop                                           ; $71f2: $00
    nop                                           ; $71f3: $00
    di                                            ; $71f4: $f3
    rst $38                                       ; $71f5: $ff
    nop                                           ; $71f6: $00
    cp $ff                                        ; $71f7: $fe $ff
    ld [$3fea], a                                 ; $71f9: $ea $ea $3f
    ldh [$3f], a                                  ; $71fc: $e0 $3f
    xor $fb                                       ; $71fe: $ee $fb
    ccf                                           ; $7200: $3f
    pop hl                                        ; $7201: $e1
    db $fc                                        ; $7202: $fc
    ldh [$ee], a                                  ; $7203: $e0 $ee
    ld l, $e0                                     ; $7205: $2e $e0
    jr nz, @+$01                                  ; $7207: $20 $ff

    rst $38                                       ; $7209: $ff
    ccf                                           ; $720a: $3f
    rst $38                                       ; $720b: $ff
    add b                                         ; $720c: $80
    rst $38                                       ; $720d: $ff
    rst $38                                       ; $720e: $ff
    adc b                                         ; $720f: $88
    rst $38                                       ; $7210: $ff
    xor d                                         ; $7211: $aa
    cp [hl]                                       ; $7212: $be
    cp $e1                                        ; $7213: $fe $e1
    xor d                                         ; $7215: $aa
    adc b                                         ; $7216: $88
    adc b                                         ; $7217: $88
    rst $38                                       ; $7218: $ff
    rst $38                                       ; $7219: $ff
    ldh [$e0], a                                  ; $721a: $e0 $e0
    cp a                                          ; $721c: $bf
    rst $38                                       ; $721d: $ff
    xor $bf                                       ; $721e: $ee $bf
    xor $bb                                       ; $7220: $ee $bb
    rst $28                                       ; $7222: $ef
    cp e                                          ; $7223: $bb
    xor $ae                                       ; $7224: $ee $ae
    rst $38                                       ; $7226: $ff
    ldh [$a0], a                                  ; $7227: $e0 $a0
    rst $38                                       ; $7229: $ff
    cp a                                          ; $722a: $bf
    rst $38                                       ; $722b: $ff
    ldh [$bf], a                                  ; $722c: $e0 $bf
    rst $38                                       ; $722e: $ff
    ld [hl], a                                    ; $722f: $77
    and e                                         ; $7230: $a3
    rst $38                                       ; $7231: $ff
    xor e                                         ; $7232: $ab
    cp $e1                                        ; $7233: $fe $e1
    xor e                                         ; $7235: $ab
    and c                                         ; $7236: $a1
    and c                                         ; $7237: $a1
    ldh [$e0], a                                  ; $7238: $e0 $e0
    cp a                                          ; $723a: $bf
    nop                                           ; $723b: $00
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    ld de, $77ff                                  ; $723e: $11 $ff $77
    db $fc                                        ; $7241: $fc
    ldh [$dd], a                                  ; $7242: $e0 $dd
    rst $30                                       ; $7244: $f7
    db $dd                                        ; $7245: $dd
    ld de, $f011                                  ; $7246: $11 $11 $f0
    ld [c], a                                     ; $7249: $e2
    db $fc                                        ; $724a: $fc
    ld b, a                                       ; $724b: $47
    db $fc                                        ; $724c: $fc
    rst $18                                       ; $724d: $df
    rst $38                                       ; $724e: $ff
    db $fc                                        ; $724f: $fc
    ld e, a                                       ; $7250: $5f
    ldh a, [$5f]                                  ; $7251: $f0 $5f
    ld e, h                                       ; $7253: $5c
    ld b, a                                       ; $7254: $47
    ld b, h                                       ; $7255: $44
    rst $38                                       ; $7256: $ff
    ld bc, $7efc                                  ; $7257: $01 $fc $7e
    rst $38                                       ; $725a: $ff
    db $ec                                        ; $725b: $ec
    db $eb                                        ; $725c: $eb
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00
    di                                            ; $7260: $f3
    rst $38                                       ; $7261: $ff
    nop                                           ; $7262: $00
    cp $ff                                        ; $7263: $fe $ff
    ld [$1dea], a                                 ; $7265: $ea $ea $1d
    rst $30                                       ; $7268: $f7
    rra                                           ; $7269: $1f
    ld a, [c]                                     ; $726a: $f2
    rst $38                                       ; $726b: $ff
    rra                                           ; $726c: $1f
    ldh a, [$1f]                                  ; $726d: $f0 $1f
    push af                                       ; $726f: $f5
    rra                                           ; $7270: $1f
    rst $30                                       ; $7271: $f7
    rla                                           ; $7272: $17
    rst $30                                       ; $7273: $f7
    rst $38                                       ; $7274: $ff
    dec d                                         ; $7275: $15
    rst $38                                       ; $7276: $ff
    dec e                                         ; $7277: $1d
    rst $38                                       ; $7278: $ff
    ret nz                                        ; $7279: $c0

    ld a, a                                       ; $727a: $7f
    rst $38                                       ; $727b: $ff
    ld b, [hl]                                    ; $727c: $46
    ei                                            ; $727d: $fb
    rst $38                                       ; $727e: $ff
    ld d, [hl]                                    ; $727f: $56
    cp $e1                                        ; $7280: $fe $e1
    ld d, [hl]                                    ; $7282: $56
    ld b, d                                       ; $7283: $42
    ld b, d                                       ; $7284: $42
    rst $38                                       ; $7285: $ff
    rst $38                                       ; $7286: $ff
    cp $be                                        ; $7287: $fe $be
    ldh [rIE], a                                  ; $7289: $e0 $ff
    jr z, @+$01                                   ; $728b: $28 $ff

    cp d                                          ; $728d: $ba
    rst $38                                       ; $728e: $ff
    ld [$ffff], a                                 ; $728f: $ea $ff $ff
    ld [$e8aa], a                                 ; $7292: $ea $aa $e8
    xor b                                         ; $7295: $a8
    rst $38                                       ; $7296: $ff
    cp a                                          ; $7297: $bf
    rst $38                                       ; $7298: $ff
    ccf                                           ; $7299: $3f
    cp a                                          ; $729a: $bf
    ldh [$bf], a                                  ; $729b: $e0 $bf
    xor $bf                                       ; $729d: $ee $bf
    xor $bb                                       ; $729f: $ee $bb
    cp $e0                                        ; $72a1: $fe $e0
    xor [hl]                                      ; $72a3: $ae
    ei                                            ; $72a4: $fb
    ldh [$a0], a                                  ; $72a5: $e0 $a0
    ldh a, [$e0]                                  ; $72a7: $f0 $e0
    add b                                         ; $72a9: $80
    rst $38                                       ; $72aa: $ff
    rst $38                                       ; $72ab: $ff
    adc b                                         ; $72ac: $88
    rst $38                                       ; $72ad: $ff
    rst $38                                       ; $72ae: $ff
    xor d                                         ; $72af: $aa
    rst $38                                       ; $72b0: $ff
    xor b                                         ; $72b1: $a8
    rst $38                                       ; $72b2: $ff
    adc e                                         ; $72b3: $8b
    adc e                                         ; $72b4: $8b
    cp b                                          ; $72b5: $b8
    cp b                                          ; $72b6: $b8
    ld a, e                                       ; $72b7: $7b
    rst $38                                       ; $72b8: $ff
    rst $28                                       ; $72b9: $ef
    adc [hl]                                      ; $72ba: $8e
    ldh [$f8], a                                  ; $72bb: $e0 $f8
    adc a                                         ; $72bd: $8f
    ld hl, sp-$51                                 ; $72be: $f8 $af
    cp $e1                                        ; $72c0: $fe $e1
    rra                                           ; $72c2: $1f
    xor b                                         ; $72c3: $a8
    xor a                                         ; $72c4: $af
    xor b                                         ; $72c5: $a8
    rst $38                                       ; $72c6: $ff
    ld hl, sp+$7e                                 ; $72c7: $f8 $7e
    rst $38                                       ; $72c9: $ff
    db $ec                                        ; $72ca: $ec
    db $eb                                        ; $72cb: $eb
    nop                                           ; $72cc: $00
    nop                                           ; $72cd: $00
    nop                                           ; $72ce: $00
    ei                                            ; $72cf: $fb
    rst $38                                       ; $72d0: $ff
    nop                                           ; $72d1: $00
    cp $ec                                        ; $72d2: $fe $ec
    inc bc                                        ; $72d4: $03
    cp $03                                        ; $72d5: $fe $03
    rst $38                                       ; $72d7: $ff
    inc bc                                        ; $72d8: $03
    cp $ea                                        ; $72d9: $fe $ea
    add sp, -$08                                  ; $72db: $e8 $f8
    rrca                                          ; $72dd: $0f
    rst $38                                       ; $72de: $ff
    cp b                                          ; $72df: $b8
    rst $38                                       ; $72e0: $ff
    cp d                                          ; $72e1: $ba
    rst $28                                       ; $72e2: $ef
    cp [hl]                                       ; $72e3: $be
    cp $e0                                        ; $72e4: $fe $e0
    xor d                                         ; $72e6: $aa
    cp b                                          ; $72e7: $b8
    xor b                                         ; $72e8: $a8
    rst $38                                       ; $72e9: $ff
    rst $28                                       ; $72ea: $ef
    ret nc                                        ; $72eb: $d0

    ldh [rIE], a                                  ; $72ec: $e0 $ff
    rst $38                                       ; $72ee: $ff
    xor b                                         ; $72ef: $a8
    rst $38                                       ; $72f0: $ff
    xor d                                         ; $72f1: $aa
    rst $38                                       ; $72f2: $ff
    xor e                                         ; $72f3: $ab
    rst $38                                       ; $72f4: $ff
    xor e                                         ; $72f5: $ab
    xor d                                         ; $72f6: $aa
    cpl                                           ; $72f7: $2f
    adc e                                         ; $72f8: $8b
    adc d                                         ; $72f9: $8a
    rst $38                                       ; $72fa: $ff
    cp $f0                                        ; $72fb: $fe $f0
    pop hl                                        ; $72fd: $e1
    adc b                                         ; $72fe: $88
    ldh a, [$e0]                                  ; $72ff: $f0 $e0
    cp $e0                                        ; $7301: $fe $e0
    rst $18                                       ; $7303: $df
    xor d                                         ; $7304: $aa
    xor b                                         ; $7305: $a8
    xor b                                         ; $7306: $a8
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    ldh [$e1], a                                  ; $7309: $e0 $e1
    pop bc                                        ; $730b: $c1
    rst $38                                       ; $730c: $ff
    db $dd                                        ; $730d: $dd
    push de                                       ; $730e: $d5
    cp $e1                                        ; $730f: $fe $e1
    push de                                       ; $7311: $d5
    ld d, l                                       ; $7312: $55
    ld d, l                                       ; $7313: $55
    ldh a, [$e3]                                  ; $7314: $f0 $e3
    ld de, $ffff                                  ; $7316: $11 $ff $ff
    ld d, l                                       ; $7319: $55
    rst $38                                       ; $731a: $ff
    dec d                                         ; $731b: $15
    rst $38                                       ; $731c: $ff
    ld [hl], l                                    ; $731d: $75
    ld [hl], l                                    ; $731e: $75
    dec d                                         ; $731f: $15
    dec d                                         ; $7320: $15
    cp $e0                                        ; $7321: $fe $e0
    ldh [$e7], a                                  ; $7323: $e0 $e7
    cp h                                          ; $7325: $bc
    rst $30                                       ; $7326: $f7
    rra                                           ; $7327: $1f
    rst $30                                       ; $7328: $f7
    cp a                                          ; $7329: $bf
    pop af                                        ; $732a: $f1
    rst $38                                       ; $732b: $ff
    cp a                                          ; $732c: $bf
    pop hl                                        ; $732d: $e1
    cp a                                          ; $732e: $bf
    or c                                          ; $732f: $b1
    sbc a                                         ; $7330: $9f
    sub c                                         ; $7331: $91
    rst $38                                       ; $7332: $ff
    pop af                                        ; $7333: $f1
    rst $38                                       ; $7334: $ff
    rst $38                                       ; $7335: $ff
    ldh a, [$1f]                                  ; $7336: $f0 $1f
    rst $38                                       ; $7338: $ff
    ld [hl], c                                    ; $7339: $71
    rst $38                                       ; $733a: $ff
    ld [hl], l                                    ; $733b: $75
    rst $18                                       ; $733c: $df
    cp $fe                                        ; $733d: $fe $fe
    ldh [rHDMA5], a                               ; $733f: $e0 $55
    ld [hl], c                                    ; $7341: $71
    ld d, c                                       ; $7342: $51
    rst $38                                       ; $7343: $ff
    rst $18                                       ; $7344: $df
    rst $38                                       ; $7345: $ff
    ldh [$75], a                                  ; $7346: $e0 $75
    cp a                                          ; $7348: $bf
    ret nc                                        ; $7349: $d0

    ldh [$b5], a                                  ; $734a: $e0 $b5
    cp $e1                                        ; $734c: $fe $e1
    or l                                          ; $734e: $b5
    sub b                                         ; $734f: $90
    sub b                                         ; $7350: $90
    or b                                          ; $7351: $b0
    ldh [$fb], a                                  ; $7352: $e0 $fb
    ldh [$bf], a                                  ; $7354: $e0 $bf
    cp $e5                                        ; $7356: $fe $e5
    and b                                         ; $7358: $a0
    cp a                                          ; $7359: $bf
    and b                                         ; $735a: $a0
    rst $38                                       ; $735b: $ff
    ldh [rP1], a                                  ; $735c: $e0 $00
    ld d, b                                       ; $735e: $50
    db $ed                                        ; $735f: $ed
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    di                                            ; $7363: $f3
    rst $38                                       ; $7364: $ff
    nop                                           ; $7365: $00
    cp $ff                                        ; $7366: $fe $ff
    ld [$3bea], a                                 ; $7368: $ea $ea $3b
    xor $3f                                       ; $736b: $ee $3f
    db $e4                                        ; $736d: $e4
    rst $38                                       ; $736e: $ff
    ccf                                           ; $736f: $3f
    ldh [$3f], a                                  ; $7370: $e0 $3f
    ld [$ee3f], a                                 ; $7372: $ea $3f $ee
    ld l, $ee                                     ; $7375: $2e $ee
    rst $38                                       ; $7377: $ff
    ld a, [hl+]                                   ; $7378: $2a
    rst $38                                       ; $7379: $ff
    dec sp                                        ; $737a: $3b
    rst $38                                       ; $737b: $ff
    add b                                         ; $737c: $80
    rst $38                                       ; $737d: $ff
    rst $38                                       ; $737e: $ff
    adc h                                         ; $737f: $8c
    ei                                            ; $7380: $fb
    rst $38                                       ; $7381: $ff
    xor l                                         ; $7382: $ad
    cp $e1                                        ; $7383: $fe $e1
    xor l                                         ; $7385: $ad
    add l                                         ; $7386: $85
    add l                                         ; $7387: $85
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    cp $be                                        ; $738a: $fe $be
    ldh [rIE], a                                  ; $738c: $e0 $ff
    ld d, c                                       ; $738e: $51
    rst $38                                       ; $738f: $ff
    ld [hl], l                                    ; $7390: $75
    rst $38                                       ; $7391: $ff
    push de                                       ; $7392: $d5
    rst $38                                       ; $7393: $ff
    rst $38                                       ; $7394: $ff
    push de                                       ; $7395: $d5
    ld d, l                                       ; $7396: $55
    pop de                                        ; $7397: $d1
    ld d, c                                       ; $7398: $51
    rst $38                                       ; $7399: $ff
    ld a, a                                       ; $739a: $7f
    rst $38                                       ; $739b: $ff
    rlca                                          ; $739c: $07
    rst $18                                       ; $739d: $df
    db $fc                                        ; $739e: $fc
    rst $30                                       ; $739f: $f7
    dec e                                         ; $73a0: $1d
    rst $30                                       ; $73a1: $f7
    ld e, l                                       ; $73a2: $5d
    cp $e1                                        ; $73a3: $fe $e1
    ld d, l                                       ; $73a5: $55
    ld e, h                                       ; $73a6: $5c
    cp a                                          ; $73a7: $bf
    ld d, h                                       ; $73a8: $54
    rst $38                                       ; $73a9: $ff
    rst $30                                       ; $73aa: $f7
    rst $38                                       ; $73ab: $ff
    db $fc                                        ; $73ac: $fc
    rla                                           ; $73ad: $17
    db $e4                                        ; $73ae: $e4
    pop hl                                        ; $73af: $e1
    ld a, a                                       ; $73b0: $7f
    cp a                                          ; $73b1: $bf
    push af                                       ; $73b2: $f5
    ld a, a                                       ; $73b3: $7f
    push de                                       ; $73b4: $d5
    push de                                       ; $73b5: $d5
    inc d                                         ; $73b6: $14
    inc d                                         ; $73b7: $14
    ret nc                                        ; $73b8: $d0

    ld [c], a                                     ; $73b9: $e2
    ldh a, [rIE]                                  ; $73ba: $f0 $ff
    ld e, a                                       ; $73bc: $5f
    db $fc                                        ; $73bd: $fc
    ld b, a                                       ; $73be: $47
    db $fc                                        ; $73bf: $fc
    ld d, a                                       ; $73c0: $57
    db $fc                                        ; $73c1: $fc
    ld d, a                                       ; $73c2: $57
    ld d, h                                       ; $73c3: $54
    rrca                                          ; $73c4: $0f
    ld b, a                                       ; $73c5: $47
    ld b, h                                       ; $73c6: $44
    rst $38                                       ; $73c7: $ff
    db $fc                                        ; $73c8: $fc
    ld a, [hl]                                    ; $73c9: $7e
    rst $38                                       ; $73ca: $ff
    db $ec                                        ; $73cb: $ec
    db $eb                                        ; $73cc: $eb
    nop                                           ; $73cd: $00
    nop                                           ; $73ce: $00
    nop                                           ; $73cf: $00
    di                                            ; $73d0: $f3
    rst $38                                       ; $73d1: $ff
    nop                                           ; $73d2: $00
    cp $ff                                        ; $73d3: $fe $ff
    ld [$07ea], a                                 ; $73d5: $ea $ea $07
    db $fc                                        ; $73d8: $fc
    rlca                                          ; $73d9: $07
    db $fd                                        ; $73da: $fd
    db $fc                                        ; $73db: $fc
    cp $e0                                        ; $73dc: $fe $e0
    ld a, [$05e0]                                 ; $73de: $fa $e0 $05
    db $fd                                        ; $73e1: $fd
    dec b                                         ; $73e2: $05
    rst $38                                       ; $73e3: $ff
    rlca                                          ; $73e4: $07
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    ldh a, [$1f]                                  ; $73e7: $f0 $1f
    rst $38                                       ; $73e9: $ff
    pop de                                        ; $73ea: $d1
    rst $38                                       ; $73eb: $ff
    push de                                       ; $73ec: $d5
    rst $38                                       ; $73ed: $ff
    dec d                                         ; $73ee: $15
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    push af                                       ; $73f1: $f5
    push af                                       ; $73f2: $f5
    ldh a, [rNR10]                                ; $73f3: $f0 $10
    rst $38                                       ; $73f5: $ff
    rra                                           ; $73f6: $1f
    rst $38                                       ; $73f7: $ff
    ccf                                           ; $73f8: $3f
    ldh [$bf], a                                  ; $73f9: $e0 $bf
    rst $38                                       ; $73fb: $ff
    and b                                         ; $73fc: $a0
    rst $38                                       ; $73fd: $ff
    xor d                                         ; $73fe: $aa
    cp $e1                                        ; $73ff: $fe $e1
    rst $38                                       ; $7401: $ff
    ldh [rIE], a                                  ; $7402: $e0 $ff
    rst $38                                       ; $7404: $ff
    rst $38                                       ; $7405: $ff
    rst $38                                       ; $7406: $ff
    ccf                                           ; $7407: $3f
    ldh [$bf], a                                  ; $7408: $e0 $bf
    xor $bf                                       ; $740a: $ee $bf
    rst $38                                       ; $740c: $ff
    xor $bb                                       ; $740d: $ee $bb
    rst $28                                       ; $740f: $ef
    cp e                                          ; $7410: $bb
    xor $ae                                       ; $7411: $ee $ae
    ldh [$a0], a                                  ; $7413: $e0 $a0
    ld h, e                                       ; $7415: $63
    rst $38                                       ; $7416: $ff
    cp a                                          ; $7417: $bf
    ldh [$e1], a                                  ; $7418: $e0 $e1
    ld [c], a                                     ; $741a: $e2
    ld [c], a                                     ; $741b: $e2
    ldh [$e0], a                                  ; $741c: $e0 $e0
    and d                                         ; $741e: $a2
    and d                                         ; $741f: $a2
    ldh [$e0], a                                  ; $7420: $e0 $e0
    rst $18                                       ; $7422: $df
    nop                                           ; $7423: $00
    rst $38                                       ; $7424: $ff
    add b                                         ; $7425: $80
    rst $38                                       ; $7426: $ff
    ldh [$db], a                                  ; $7427: $e0 $db
    ldh [$e0], a                                  ; $7429: $e0 $e0
    cp a                                          ; $742b: $bf
    rra                                           ; $742c: $1f
    and b                                         ; $742d: $a0
    ccf                                           ; $742e: $3f
    jr nz, @+$01                                  ; $742f: $20 $ff

    ldh [$7e], a                                  ; $7431: $e0 $7e
    rst $38                                       ; $7433: $ff
    db $ec                                        ; $7434: $ec
    db $eb                                        ; $7435: $eb
    nop                                           ; $7436: $00
    nop                                           ; $7437: $00
    nop                                           ; $7438: $00
    di                                            ; $7439: $f3
    rst $38                                       ; $743a: $ff
    nop                                           ; $743b: $00
    cp $ff                                        ; $743c: $fe $ff
    ld [$07ea], a                                 ; $743e: $ea $ea $07
    db $fc                                        ; $7441: $fc
    rlca                                          ; $7442: $07
    db $fd                                        ; $7443: $fd
    cp $fe                                        ; $7444: $fe $fe
    db $e3                                        ; $7446: $e3
    dec b                                         ; $7447: $05
    db $fc                                        ; $7448: $fc
    inc b                                         ; $7449: $04
    rst $38                                       ; $744a: $ff
    rlca                                          ; $744b: $07
    rst $38                                       ; $744c: $ff
    ldh [$bf], a                                  ; $744d: $e0 $bf
    ccf                                           ; $744f: $3f
    rst $38                                       ; $7450: $ff
    push de                                       ; $7451: $d5
    rst $38                                       ; $7452: $ff
    push de                                       ; $7453: $d5
    ld a, a                                       ; $7454: $7f
    cp $e0                                        ; $7455: $fe $e0
    push de                                       ; $7457: $d5
    rst $28                                       ; $7458: $ef
    ld sp, $ff31                                  ; $7459: $31 $31 $ff
    rst $38                                       ; $745c: $ff
    cp [hl]                                       ; $745d: $be
    ldh [rIE], a                                  ; $745e: $e0 $ff
    ld de, $ffff                                  ; $7460: $11 $ff $ff
    ld d, l                                       ; $7463: $55
    rst $38                                       ; $7464: $ff
    ld d, c                                       ; $7465: $51
    rst $38                                       ; $7466: $ff
    ld d, a                                       ; $7467: $57
    ld d, a                                       ; $7468: $57
    ld d, c                                       ; $7469: $51
    ld d, c                                       ; $746a: $51
    cp $f0                                        ; $746b: $fe $f0
    ldh [$7f], a                                  ; $746d: $e0 $7f
    pop bc                                        ; $746f: $c1
    ld a, a                                       ; $7470: $7f
    db $dd                                        ; $7471: $dd
    ld a, a                                       ; $7472: $7f
    db $dd                                        ; $7473: $dd
    ld [hl], a                                    ; $7474: $77
    rst $38                                       ; $7475: $ff
    rst $18                                       ; $7476: $df
    ld [hl], a                                    ; $7477: $77
    db $dd                                        ; $7478: $dd
    ld e, l                                       ; $7479: $5d
    pop bc                                        ; $747a: $c1
    ld b, c                                       ; $747b: $41
    rst $38                                       ; $747c: $ff
    ld a, a                                       ; $747d: $7f
    rst $10                                       ; $747e: $d7
    rst $38                                       ; $747f: $ff
    ret nz                                        ; $7480: $c0

    ld a, a                                       ; $7481: $7f
    ld [c], a                                     ; $7482: $e2
    ldh [rHDMA4], a                               ; $7483: $e0 $54
    sbc $e0                                       ; $7485: $de $e0
    ld d, l                                       ; $7487: $55
    ld d, l                                       ; $7488: $55
    bit 0, h                                      ; $7489: $cb $44
    ld b, h                                       ; $748b: $44
    ret nc                                        ; $748c: $d0

    ld [c], a                                     ; $748d: $e2
    nop                                           ; $748e: $00
    db $ec                                        ; $748f: $ec
    ldh [$fe], a                                  ; $7490: $e0 $fe
    pop hl                                        ; $7492: $e1
    ld b, b                                       ; $7493: $40
    ld a, a                                       ; $7494: $7f
    rlca                                          ; $7495: $07
    ld b, b                                       ; $7496: $40
    rst $38                                       ; $7497: $ff
    ret nz                                        ; $7498: $c0

    ld a, [hl]                                    ; $7499: $7e
    rst $38                                       ; $749a: $ff
    db $ec                                        ; $749b: $ec
    db $eb                                        ; $749c: $eb
    nop                                           ; $749d: $00
    nop                                           ; $749e: $00
    nop                                           ; $749f: $00
    or e                                          ; $74a0: $b3
    rst $38                                       ; $74a1: $ff
    nop                                           ; $74a2: $00
    cp $ff                                        ; $74a3: $fe $ff
    ld [$07ea], a                                 ; $74a5: $ea $ea $07
    db $fd                                        ; $74a8: $fd
    cp $e5                                        ; $74a9: $fe $e5
    dec b                                         ; $74ab: $05
    rst $28                                       ; $74ac: $ef
    db $fc                                        ; $74ad: $fc
    inc b                                         ; $74ae: $04
    rst $38                                       ; $74af: $ff
    rlca                                          ; $74b0: $07
    adc $e0                                       ; $74b1: $ce $e0
    ccf                                           ; $74b3: $3f
    add sp, $3f                                   ; $74b4: $e8 $3f
    rst $38                                       ; $74b6: $ff
    ld a, [$ea3f]                                 ; $74b7: $fa $3f $ea
    ccf                                           ; $74ba: $3f
    ld [$2aea], a                                 ; $74bb: $ea $ea $2a
    ld a, [hl+]                                   ; $74be: $2a
    ei                                            ; $74bf: $fb
    rst $38                                       ; $74c0: $ff
    rst $38                                       ; $74c1: $ff
    cp [hl]                                       ; $74c2: $be
    ldh [rIE], a                                  ; $74c3: $e0 $ff
    xor b                                         ; $74c5: $a8
    rst $38                                       ; $74c6: $ff
    adc e                                         ; $74c7: $8b
    rst $38                                       ; $74c8: $ff
    cp a                                          ; $74c9: $bf
    sbc b                                         ; $74ca: $98
    rst $38                                       ; $74cb: $ff
    adc [hl]                                      ; $74cc: $8e
    adc [hl]                                      ; $74cd: $8e
    xor b                                         ; $74ce: $a8
    xor b                                         ; $74cf: $a8
    ldh a, [$e0]                                  ; $74d0: $f0 $e0
    ccf                                           ; $74d2: $3f
    rst $38                                       ; $74d3: $ff
    ldh [$bf], a                                  ; $74d4: $e0 $bf
    xor $bf                                       ; $74d6: $ee $bf
    xor $bb                                       ; $74d8: $ee $bb
    rst $28                                       ; $74da: $ef
    cp e                                          ; $74db: $bb
    rst $38                                       ; $74dc: $ff
    xor $ae                                       ; $74dd: $ee $ae
    ldh [$a0], a                                  ; $74df: $e0 $a0
    rst $38                                       ; $74e1: $ff
    cp a                                          ; $74e2: $bf
    rst $38                                       ; $74e3: $ff
    ldh [rPCM34], a                               ; $74e4: $e0 $77
    cp a                                          ; $74e6: $bf
    rst $38                                       ; $74e7: $ff
    xor d                                         ; $74e8: $aa
    cp $e3                                        ; $74e9: $fe $e3
    xor d                                         ; $74eb: $aa
    and d                                         ; $74ec: $a2
    and d                                         ; $74ed: $a2
    ret nc                                        ; $74ee: $d0

    ld [c], a                                     ; $74ef: $e2
    rst $30                                       ; $74f0: $f7
    add b                                         ; $74f1: $80
    rst $38                                       ; $74f2: $ff
    ldh [$db], a                                  ; $74f3: $e0 $db
    ldh [$e0], a                                  ; $74f5: $e0 $e0
    cp a                                          ; $74f7: $bf
    and b                                         ; $74f8: $a0
    ccf                                           ; $74f9: $3f
    rlca                                          ; $74fa: $07
    jr nz, @+$01                                  ; $74fb: $20 $ff

    ldh [$7e], a                                  ; $74fd: $e0 $7e
    rst $38                                       ; $74ff: $ff
    db $ec                                        ; $7500: $ec
    db $eb                                        ; $7501: $eb
    nop                                           ; $7502: $00
    nop                                           ; $7503: $00
    nop                                           ; $7504: $00
    ld a, e                                       ; $7505: $7b
    rst $38                                       ; $7506: $ff
    nop                                           ; $7507: $00
    cp $fc                                        ; $7508: $fe $fc
    rrca                                          ; $750a: $0f
    ld hl, sp+$0f                                 ; $750b: $f8 $0f
    ei                                            ; $750d: $fb
    cp $e0                                        ; $750e: $fe $e0
    cp $fa                                        ; $7510: $fe $fa
    ldh [$0b], a                                  ; $7512: $e0 $0b
    ei                                            ; $7514: $fb
    ld a, [bc]                                    ; $7515: $0a
    rst $38                                       ; $7516: $ff
    ld c, $ff                                     ; $7517: $0e $ff
    ldh [rIE], a                                  ; $7519: $e0 $ff
    ccf                                           ; $751b: $3f
    rst $38                                       ; $751c: $ff
    and d                                         ; $751d: $a2
    rst $38                                       ; $751e: $ff
    xor d                                         ; $751f: $aa
    rst $38                                       ; $7520: $ff
    ld [hl+], a                                   ; $7521: $22
    rst $38                                       ; $7522: $ff
    rst $38                                       ; $7523: $ff
    xor $ee                                       ; $7524: $ee $ee
    ld [c], a                                     ; $7526: $e2
    ld [hl+], a                                   ; $7527: $22
    rst $38                                       ; $7528: $ff
    ccf                                           ; $7529: $3f
    rst $38                                       ; $752a: $ff
    ld bc, $ffff                                  ; $752b: $01 $ff $ff
    rst $38                                       ; $752e: $ff
    ld sp, $b5ff                                  ; $752f: $31 $ff $b5
    rst $38                                       ; $7532: $ff
    or a                                          ; $7533: $b7
    rst $38                                       ; $7534: $ff
    rst $38                                       ; $7535: $ff
    or l                                          ; $7536: $b5
    or l                                          ; $7537: $b5
    ld de, $ff11                                  ; $7538: $11 $11 $ff
    rst $38                                       ; $753b: $ff
    rst $38                                       ; $753c: $ff
    call c, $77ff                                 ; $753d: $dc $ff $77
    rst $38                                       ; $7540: $ff
    inc d                                         ; $7541: $14
    rst $30                                       ; $7542: $f7
    ld e, l                                       ; $7543: $5d
    rst $38                                       ; $7544: $ff
    ld e, h                                       ; $7545: $5c
    rst $30                                       ; $7546: $f7
    rst $38                                       ; $7547: $ff
    ld e, a                                       ; $7548: $5f
    ld d, a                                       ; $7549: $57
    ld e, h                                       ; $754a: $5c
    ld d, h                                       ; $754b: $54
    rst $38                                       ; $754c: $ff
    rst $30                                       ; $754d: $f7
    rst $38                                       ; $754e: $ff
    rra                                           ; $754f: $1f
    rst $38                                       ; $7550: $ff
    ldh a, [$df]                                  ; $7551: $f0 $df
    ld [hl], a                                    ; $7553: $77
    rst $18                                       ; $7554: $df
    rst $30                                       ; $7555: $f7
    db $dd                                        ; $7556: $dd
    ld [hl], a                                    ; $7557: $77
    db $dd                                        ; $7558: $dd
    rst $38                                       ; $7559: $ff
    ld [hl], a                                    ; $755a: $77
    ld d, a                                       ; $755b: $57
    ld [hl], b                                    ; $755c: $70
    ld d, b                                       ; $755d: $50
    rst $38                                       ; $755e: $ff
    rst $18                                       ; $755f: $df
    rst $38                                       ; $7560: $ff
    ret nz                                        ; $7561: $c0

    rst $38                                       ; $7562: $ff
    ld a, a                                       ; $7563: $7f
    rst $38                                       ; $7564: $ff
    ld b, [hl]                                    ; $7565: $46
    rst $38                                       ; $7566: $ff
    ld d, [hl]                                    ; $7567: $56
    rst $38                                       ; $7568: $ff
    sub $ff                                       ; $7569: $d6 $ff
    ld l, a                                       ; $756b: $6f
    ld d, a                                       ; $756c: $57
    ld d, a                                       ; $756d: $57
    ld b, d                                       ; $756e: $42
    ld b, d                                       ; $756f: $42
    ret nc                                        ; $7570: $d0

    ldh [$1f], a                                  ; $7571: $e0 $1f
    or $b4                                        ; $7573: $f6 $b4
    ldh [rIE], a                                  ; $7575: $e0 $ff
    or $ff                                        ; $7577: $f6 $ff
    ld [hl], $ff                                  ; $7579: $36 $ff
    or [hl]                                       ; $757b: $b6
    or [hl]                                       ; $757c: $b6
    ld [hl-], a                                   ; $757d: $32
    ld [hl-], a                                   ; $757e: $32
    ld a, [hl]                                    ; $757f: $7e
    ret nz                                        ; $7580: $c0

    ldh [$80], a                                  ; $7581: $e0 $80
    rst $38                                       ; $7583: $ff
    ld hl, sp-$71                                 ; $7584: $f8 $8f
    ld hl, sp-$51                                 ; $7586: $f8 $af
    db $fc                                        ; $7588: $fc
    ldh [$3f], a                                  ; $7589: $e0 $3f
    cp a                                          ; $758b: $bf
    cp b                                          ; $758c: $b8
    adc a                                         ; $758d: $8f
    adc b                                         ; $758e: $88
    rst $38                                       ; $758f: $ff
    ld hl, sp+$60                                 ; $7590: $f8 $60
    db $fd                                        ; $7592: $fd
    nop                                           ; $7593: $00
    nop                                           ; $7594: $00
    nop                                           ; $7595: $00
    ei                                            ; $7596: $fb
    rst $38                                       ; $7597: $ff
    nop                                           ; $7598: $00
    cp $ec                                        ; $7599: $fe $ec
    inc bc                                        ; $759b: $03
    cp $03                                        ; $759c: $fe $03
    rst $38                                       ; $759e: $ff
    inc bc                                        ; $759f: $03
    cp $ea                                        ; $75a0: $fe $ea
    add sp, -$08                                  ; $75a2: $e8 $f8
    rrca                                          ; $75a4: $0f
    rst $38                                       ; $75a5: $ff
    cp b                                          ; $75a6: $b8
    rst $38                                       ; $75a7: $ff
    cp d                                          ; $75a8: $ba
    rst $28                                       ; $75a9: $ef
    cp [hl]                                       ; $75aa: $be
    cp $e0                                        ; $75ab: $fe $e0
    xor d                                         ; $75ad: $aa
    cp b                                          ; $75ae: $b8
    xor b                                         ; $75af: $a8
    rst $38                                       ; $75b0: $ff
    rst $28                                       ; $75b1: $ef
    ret nc                                        ; $75b2: $d0

    ldh [rIE], a                                  ; $75b3: $e0 $ff
    rst $38                                       ; $75b5: $ff
    xor b                                         ; $75b6: $a8
    rst $38                                       ; $75b7: $ff
    xor d                                         ; $75b8: $aa
    rst $38                                       ; $75b9: $ff
    xor e                                         ; $75ba: $ab
    rst $38                                       ; $75bb: $ff
    xor e                                         ; $75bc: $ab
    xor d                                         ; $75bd: $aa
    cpl                                           ; $75be: $2f
    adc e                                         ; $75bf: $8b
    adc d                                         ; $75c0: $8a
    rst $38                                       ; $75c1: $ff
    cp $f0                                        ; $75c2: $fe $f0
    pop hl                                        ; $75c4: $e1
    adc b                                         ; $75c5: $88
    ldh a, [$e0]                                  ; $75c6: $f0 $e0
    cp $e0                                        ; $75c8: $fe $e0
    rst $18                                       ; $75ca: $df
    xor d                                         ; $75cb: $aa
    xor b                                         ; $75cc: $a8
    xor b                                         ; $75cd: $a8
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
    ldh [$e1], a                                  ; $75d0: $e0 $e1
    pop bc                                        ; $75d2: $c1
    rst $38                                       ; $75d3: $ff
    db $dd                                        ; $75d4: $dd
    push de                                       ; $75d5: $d5
    cp $e1                                        ; $75d6: $fe $e1
    push de                                       ; $75d8: $d5
    ld d, l                                       ; $75d9: $55
    ld d, l                                       ; $75da: $55
    ldh a, [$e3]                                  ; $75db: $f0 $e3
    ld de, $ffff                                  ; $75dd: $11 $ff $ff
    ld d, l                                       ; $75e0: $55
    rst $38                                       ; $75e1: $ff
    dec d                                         ; $75e2: $15
    rst $38                                       ; $75e3: $ff
    ld [hl], l                                    ; $75e4: $75
    ld [hl], l                                    ; $75e5: $75
    dec d                                         ; $75e6: $15
    dec d                                         ; $75e7: $15
    cp $e0                                        ; $75e8: $fe $e0
    ldh [$e7], a                                  ; $75ea: $e0 $e7
    cp h                                          ; $75ec: $bc
    rst $30                                       ; $75ed: $f7
    rra                                           ; $75ee: $1f
    rst $30                                       ; $75ef: $f7
    cp a                                          ; $75f0: $bf
    pop af                                        ; $75f1: $f1
    rst $38                                       ; $75f2: $ff
    cp a                                          ; $75f3: $bf
    pop hl                                        ; $75f4: $e1
    cp a                                          ; $75f5: $bf
    or c                                          ; $75f6: $b1
    sbc a                                         ; $75f7: $9f
    sub c                                         ; $75f8: $91
    rst $38                                       ; $75f9: $ff
    pop af                                        ; $75fa: $f1
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    ldh a, [$1f]                                  ; $75fd: $f0 $1f
    rst $38                                       ; $75ff: $ff
    ld [hl], c                                    ; $7600: $71
    rst $38                                       ; $7601: $ff
    ld [hl], l                                    ; $7602: $75
    rst $18                                       ; $7603: $df
    cp $fe                                        ; $7604: $fe $fe
    ldh [rHDMA5], a                               ; $7606: $e0 $55
    ld [hl], c                                    ; $7608: $71
    ld d, c                                       ; $7609: $51
    rst $38                                       ; $760a: $ff
    rst $18                                       ; $760b: $df
    rst $38                                       ; $760c: $ff
    ldh [$75], a                                  ; $760d: $e0 $75
    cp a                                          ; $760f: $bf
    ret nc                                        ; $7610: $d0

    ldh [$b5], a                                  ; $7611: $e0 $b5
    cp $e1                                        ; $7613: $fe $e1
    or l                                          ; $7615: $b5
    sub b                                         ; $7616: $90
    sub b                                         ; $7617: $90
    or b                                          ; $7618: $b0
    ldh [$fb], a                                  ; $7619: $e0 $fb
    ldh [$bf], a                                  ; $761b: $e0 $bf
    cp $e5                                        ; $761d: $fe $e5
    and b                                         ; $761f: $a0
    cp a                                          ; $7620: $bf
    and b                                         ; $7621: $a0
    rst $38                                       ; $7622: $ff
    ldh [rP1], a                                  ; $7623: $e0 $00
    ld d, b                                       ; $7625: $50
    db $ed                                        ; $7626: $ed
    nop                                           ; $7627: $00
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
    ei                                            ; $762a: $fb
    rst $38                                       ; $762b: $ff
    nop                                           ; $762c: $00
    cp $ec                                        ; $762d: $fe $ec
    ccf                                           ; $762f: $3f
    ldh [$3f], a                                  ; $7630: $e0 $3f
    ei                                            ; $7632: $fb
    ccf                                           ; $7633: $3f
    ei                                            ; $7634: $fb
    ei                                            ; $7635: $fb
    ld c, $fe                                     ; $7636: $0e $fe
    ldh [$0a], a                                  ; $7638: $e0 $0a
    ei                                            ; $763a: $fb
    ld a, [bc]                                    ; $763b: $0a
    rst $38                                       ; $763c: $ff
    ld c, $7f                                     ; $763d: $0e $7f
    rst $38                                       ; $763f: $ff
    add b                                         ; $7640: $80
    rst $38                                       ; $7641: $ff
    rst $38                                       ; $7642: $ff
    adc b                                         ; $7643: $88
    rst $38                                       ; $7644: $ff
    xor d                                         ; $7645: $aa
    cp $e1                                        ; $7646: $fe $e1
    rst $38                                       ; $7648: $ff
    xor d                                         ; $7649: $aa
    adc b                                         ; $764a: $88
    adc b                                         ; $764b: $88
    rst $38                                       ; $764c: $ff
    rst $38                                       ; $764d: $ff
    rst $38                                       ; $764e: $ff
    inc e                                         ; $764f: $1c
    rst $30                                       ; $7650: $f7
    rst $28                                       ; $7651: $ef
    db $fc                                        ; $7652: $fc
    rst $00                                       ; $7653: $c7
    db $fc                                        ; $7654: $fc
    rst $10                                       ; $7655: $d7
    cp $e1                                        ; $7656: $fe $e1
    sub $43                                       ; $7658: $d6 $43
    ld b, d                                       ; $765a: $42
    rst $38                                       ; $765b: $ff
    rst $38                                       ; $765c: $ff
    cp $ff                                        ; $765d: $fe $ff
    xor $bb                                       ; $765f: $ee $bb
    rst $28                                       ; $7661: $ef
    cp d                                          ; $7662: $ba
    rst $38                                       ; $7663: $ff
    rst $38                                       ; $7664: $ff
    add e                                         ; $7665: $83
    rst $38                                       ; $7666: $ff
    cp d                                          ; $7667: $ba
    rst $38                                       ; $7668: $ff
    cp d                                          ; $7669: $ba
    xor d                                         ; $766a: $aa
    cp d                                          ; $766b: $ba
    xor d                                         ; $766c: $aa
    rst $18                                       ; $766d: $df
    rst $38                                       ; $766e: $ff
    rst $28                                       ; $766f: $ef
    rst $38                                       ; $7670: $ff
    ld c, $fb                                     ; $7671: $0e $fb
    ret nc                                        ; $7673: $d0

    ld [c], a                                     ; $7674: $e2
    adc d                                         ; $7675: $8a
    rst $38                                       ; $7676: $ff
    rst $28                                       ; $7677: $ef
    ld [$8aea], a                                 ; $7678: $ea $ea $8a
    adc d                                         ; $767b: $8a
    ret nc                                        ; $767c: $d0

    ldh [$e0], a                                  ; $767d: $e0 $e0
    cp a                                          ; $767f: $bf
    rst $38                                       ; $7680: $ff
    ld [hl], a                                    ; $7681: $77
    and e                                         ; $7682: $a3
    rst $38                                       ; $7683: $ff
    xor e                                         ; $7684: $ab
    cp $e1                                        ; $7685: $fe $e1
    xor e                                         ; $7687: $ab
    and c                                         ; $7688: $a1
    and c                                         ; $7689: $a1
    ret nz                                        ; $768a: $c0

    ldh [$bf], a                                  ; $768b: $e0 $bf
    rlca                                          ; $768d: $07
    db $fd                                        ; $768e: $fd
    rst $38                                       ; $768f: $ff
    ld de, $55ff                                  ; $7690: $11 $ff $55
    cp $e1                                        ; $7693: $fe $e1
    ld d, l                                       ; $7695: $55
    ei                                            ; $7696: $fb
    ld d, b                                       ; $7697: $50
    ld d, b                                       ; $7698: $50
    or b                                          ; $7699: $b0
    ldh [rP1], a                                  ; $769a: $e0 $00
    rst $38                                       ; $769c: $ff
    ld hl, sp-$71                                 ; $769d: $f8 $8f
    ld hl, sp-$03                                 ; $769f: $f8 $fd
    cp a                                          ; $76a1: $bf
    db $fc                                        ; $76a2: $fc
    ldh [$ef], a                                  ; $76a3: $e0 $ef
    add sp, -$71                                  ; $76a5: $e8 $8f
    adc b                                         ; $76a7: $88
    rst $38                                       ; $76a8: $ff
    ld hl, sp+$00                                 ; $76a9: $f8 $00
    ld [hl], b                                    ; $76ab: $70
    db $ed                                        ; $76ac: $ed
    nop                                           ; $76ad: $00
    nop                                           ; $76ae: $00
    nop                                           ; $76af: $00
    ei                                            ; $76b0: $fb
    rst $38                                       ; $76b1: $ff
    nop                                           ; $76b2: $00
    cp $fc                                        ; $76b3: $fe $fc
    ccf                                           ; $76b5: $3f
    db $ec                                        ; $76b6: $ec
    ccf                                           ; $76b7: $3f
    jp hl                                         ; $76b8: $e9


    ccf                                           ; $76b9: $3f
    db $fd                                        ; $76ba: $fd
    db $e3                                        ; $76bb: $e3
    cp $e0                                        ; $76bc: $fe $e0
    jp hl                                         ; $76be: $e9


    add hl, hl                                    ; $76bf: $29
    db $ec                                        ; $76c0: $ec
    inc l                                         ; $76c1: $2c
    rst $38                                       ; $76c2: $ff
    ccf                                           ; $76c3: $3f
    ld a, a                                       ; $76c4: $7f
    rst $38                                       ; $76c5: $ff
    add b                                         ; $76c6: $80
    rst $38                                       ; $76c7: $ff
    rst $38                                       ; $76c8: $ff
    adc b                                         ; $76c9: $88
    rst $38                                       ; $76ca: $ff
    xor d                                         ; $76cb: $aa
    cp $e1                                        ; $76cc: $fe $e1
    sbc a                                         ; $76ce: $9f
    xor d                                         ; $76cf: $aa
    adc b                                         ; $76d0: $88
    adc b                                         ; $76d1: $88
    rst $38                                       ; $76d2: $ff
    rst $38                                       ; $76d3: $ff
    ret nz                                        ; $76d4: $c0

    ldh [$f0], a                                  ; $76d5: $e0 $f0
    db $e4                                        ; $76d7: $e4
    adc d                                         ; $76d8: $8a
    rst $38                                       ; $76d9: $ff
    adc d                                         ; $76da: $8a
    cp b                                          ; $76db: $b8
    cp b                                          ; $76dc: $b8
    rst $38                                       ; $76dd: $ff
    rst $28                                       ; $76de: $ef
    rst $38                                       ; $76df: $ff
    rra                                           ; $76e0: $1f
    ldh a, [$f3]                                  ; $76e1: $f0 $f3
    sbc a                                         ; $76e3: $9f
    rst $30                                       ; $76e4: $f7
    cp $e0                                        ; $76e5: $fe $e0
    ld a, [$d7e0]                                 ; $76e7: $fa $e0 $d7
    ld [hl], a                                    ; $76ea: $77
    ld d, h                                       ; $76eb: $54
    rst $38                                       ; $76ec: $ff
    rst $38                                       ; $76ed: $ff
    call c, $c0ff                                 ; $76ee: $dc $ff $c0
    ld a, a                                       ; $76f1: $7f
    rst $38                                       ; $76f2: $ff
    ld b, [hl]                                    ; $76f3: $46
    rst $38                                       ; $76f4: $ff
    ld d, [hl]                                    ; $76f5: $56
    ld a, [hl]                                    ; $76f6: $7e
    cp $e0                                        ; $76f7: $fe $e0
    sub $d6                                       ; $76f9: $d6 $d6
    jp nz, $ff42                                  ; $76fb: $c2 $42 $ff

    ld a, a                                       ; $76fe: $7f
    sub b                                         ; $76ff: $90
    ldh [rIE], a                                  ; $7700: $e0 $ff
    cp $2b                                        ; $7702: $fe $2b
    cp $a3                                        ; $7704: $fe $a3
    cp $e7                                        ; $7706: $fe $e7
    cp $e3                                        ; $7708: $fe $e3
    rra                                           ; $770a: $1f
    and d                                         ; $770b: $a2
    db $eb                                        ; $770c: $eb
    xor d                                         ; $770d: $aa
    rst $38                                       ; $770e: $ff
    cp [hl]                                       ; $770f: $be
    add b                                         ; $7710: $80
    db $fd                                        ; $7711: $fd
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    nop                                           ; $7714: $00
    ld a, e                                       ; $7715: $7b
    rst $38                                       ; $7716: $ff
    nop                                           ; $7717: $00
    cp $ec                                        ; $7718: $fe $ec
    rra                                           ; $771a: $1f
    ldh a, [$1f]                                  ; $771b: $f0 $1f
    rst $30                                       ; $771d: $f7
    db $fc                                        ; $771e: $fc
    ldh [rIE], a                                  ; $771f: $e0 $ff
    rst $38                                       ; $7721: $ff
    rra                                           ; $7722: $1f
    rst $30                                       ; $7723: $f7
    rla                                           ; $7724: $17
    ldh a, [rNR10]                                ; $7725: $f0 $10
    rst $38                                       ; $7727: $ff
    rra                                           ; $7728: $1f
    rst $38                                       ; $7729: $ff
    rst $38                                       ; $772a: $ff
    ldh a, [$5f]                                  ; $772b: $f0 $5f
    rst $38                                       ; $772d: $ff
    ld b, l                                       ; $772e: $45
    rst $38                                       ; $772f: $ff
    push de                                       ; $7730: $d5
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff
    ld d, h                                       ; $7733: $54
    rst $38                                       ; $7734: $ff
    ld d, a                                       ; $7735: $57
    ld d, a                                       ; $7736: $57
    ld d, h                                       ; $7737: $54
    ld d, h                                       ; $7738: $54
    rst $38                                       ; $7739: $ff
    rst $38                                       ; $773a: $ff
    or $e0                                        ; $773b: $f6 $e0
    ldh [$df], a                                  ; $773d: $e0 $df
    ld [hl], a                                    ; $773f: $77
    cp $e0                                        ; $7740: $fe $e0
    ld [hl], h                                    ; $7742: $74
    rst $18                                       ; $7743: $df
    ld [hl], a                                    ; $7744: $77
    ld d, a                                       ; $7745: $57
    rst $38                                       ; $7746: $ff
    ld [hl], b                                    ; $7747: $70
    ld d, b                                       ; $7748: $50
    rst $38                                       ; $7749: $ff
    rst $18                                       ; $774a: $df
    rst $38                                       ; $774b: $ff
    ret nz                                        ; $774c: $c0

    ld a, a                                       ; $774d: $7f
    rst $38                                       ; $774e: $ff
    dec l                                         ; $774f: $2d
    ld d, l                                       ; $7750: $55
    ldh [$e4], a                                  ; $7751: $e0 $e4
    ld b, h                                       ; $7753: $44
    ld b, h                                       ; $7754: $44
    ldh [$e6], a                                  ; $7755: $e0 $e6
    db $dd                                        ; $7757: $dd
    cp $e0                                        ; $7758: $fe $e0
    ldh [$e3], a                                  ; $775a: $e0 $e3
    rst $28                                       ; $775c: $ef
    add b                                         ; $775d: $80
    rst $38                                       ; $775e: $ff
    rst $38                                       ; $775f: $ff
    ld b, h                                       ; $7760: $44
    sbc $e0                                       ; $7761: $de $e0
    ld b, h                                       ; $7763: $44
    rst $38                                       ; $7764: $ff
    ld e, a                                       ; $7765: $5f
    ld d, a                                       ; $7766: $57
    ld e, a                                       ; $7767: $5f
    call nz, $c0c4                                ; $7768: $c4 $c4 $c0
    ldh [rP1], a                                  ; $776b: $e0 $00
    ldh a, [$e1]                                  ; $776d: $f0 $e1
    push de                                       ; $776f: $d5
    xor h                                         ; $7770: $ac
    ldh [$ef], a                                  ; $7771: $e0 $ef
    ld e, l                                       ; $7773: $5d
    ld e, l                                       ; $7774: $5d
    ld b, l                                       ; $7775: $45
    ld b, l                                       ; $7776: $45
    or b                                          ; $7777: $b0
    ldh [$38], a                                  ; $7778: $e0 $38
    rst $28                                       ; $777a: $ef
    db $fc                                        ; $777b: $fc
    rst $38                                       ; $777c: $ff
    ld b, a                                       ; $777d: $47
    db $fc                                        ; $777e: $fc
    ld l, a                                       ; $777f: $6f
    db $fc                                        ; $7780: $fc
    rst $28                                       ; $7781: $ef
    ld hl, sp-$11                                 ; $7782: $f8 $ef
    inc l                                         ; $7784: $2c
    rrca                                          ; $7785: $0f
    rst $20                                       ; $7786: $e7
    inc h                                         ; $7787: $24
    rst $38                                       ; $7788: $ff
    inc a                                         ; $7789: $3c
    ld [hl], b                                    ; $778a: $70
    db $ed                                        ; $778b: $ed
    nop                                           ; $778c: $00
    nop                                           ; $778d: $00
    nop                                           ; $778e: $00
    ei                                            ; $778f: $fb
    rst $38                                       ; $7790: $ff
    nop                                           ; $7791: $00
    cp $ec                                        ; $7792: $fe $ec
    ld c, $fb                                     ; $7794: $0e $fb
    ld c, $fb                                     ; $7796: $0e $fb
    rrca                                          ; $7798: $0f
    rst $38                                       ; $7799: $ff
    db $fd                                        ; $779a: $fd
    rrca                                          ; $779b: $0f
    cp $07                                        ; $779c: $fe $07
    cp $02                                        ; $779e: $fe $02
    cp $02                                        ; $77a0: $fe $02
    rst $38                                       ; $77a2: $ff
    rst $38                                       ; $77a3: $ff
    inc bc                                        ; $77a4: $03
    rst $38                                       ; $77a5: $ff
    ldh [$bf], a                                  ; $77a6: $e0 $bf
    rst $38                                       ; $77a8: $ff

jr_040_77a9:
    and d                                         ; $77a9: $a2
    rst $38                                       ; $77aa: $ff
    rst $38                                       ; $77ab: $ff
    ld l, d                                       ; $77ac: $6a
    rst $38                                       ; $77ad: $ff
    ld [$ebff], a                                 ; $77ae: $ea $ff $eb
    xor e                                         ; $77b1: $ab
    ld [c], a                                     ; $77b2: $e2
    and d                                         ; $77b3: $a2
    rst $38                                       ; $77b4: $ff
    rst $38                                       ; $77b5: $ff
    cp a                                          ; $77b6: $bf
    rst $38                                       ; $77b7: $ff
    jr c, jr_040_77a9                             ; $77b8: $38 $ef

    rst $38                                       ; $77ba: $ff
    ld [hl+], a                                   ; $77bb: $22
    rst $38                                       ; $77bc: $ff
    rst $38                                       ; $77bd: $ff
    db $eb                                        ; $77be: $eb
    rst $38                                       ; $77bf: $ff
    ld a, [hl+]                                   ; $77c0: $2a
    rst $38                                       ; $77c1: $ff
    xor d                                         ; $77c2: $aa
    xor d                                         ; $77c3: $aa
    ld a, [hl+]                                   ; $77c4: $2a
    ld a, [hl+]                                   ; $77c5: $2a
    ei                                            ; $77c6: $fb
    rst $38                                       ; $77c7: $ff
    rst $38                                       ; $77c8: $ff
    ldh [$e0], a                                  ; $77c9: $e0 $e0
    cp $a3                                        ; $77cb: $fe $a3
    cp [hl]                                       ; $77cd: $be
    rst $28                                       ; $77ce: $ef
    cp $ff                                        ; $77cf: $fe $ff
    db $e3                                        ; $77d1: $e3
    cp [hl]                                       ; $77d2: $be
    ei                                            ; $77d3: $fb
    cp d                                          ; $77d4: $ba
    db $e3                                        ; $77d5: $e3
    and d                                         ; $77d6: $a2
    rst $38                                       ; $77d7: $ff
    cp [hl]                                       ; $77d8: $be
    rst $38                                       ; $77d9: $ff
    rst $38                                       ; $77da: $ff
    ld hl, sp-$71                                 ; $77db: $f8 $8f
    rst $38                                       ; $77dd: $ff
    ret c                                         ; $77de: $d8

    rst $38                                       ; $77df: $ff
    db $db                                        ; $77e0: $db
    ld a, a                                       ; $77e1: $7f
    cp a                                          ; $77e2: $bf
    ret c                                         ; $77e3: $d8

    ld a, a                                       ; $77e4: $7f
    sbc $de                                       ; $77e5: $de $de
    adc b                                         ; $77e7: $88
    adc b                                         ; $77e8: $88
    ldh [$e2], a                                  ; $77e9: $e0 $e2
    rst $38                                       ; $77eb: $ff
    ld [hl], a                                    ; $77ec: $77
    and e                                         ; $77ed: $a3
    rst $38                                       ; $77ee: $ff
    xor e                                         ; $77ef: $ab
    cp $e1                                        ; $77f0: $fe $e1
    xor e                                         ; $77f2: $ab
    and c                                         ; $77f3: $a1
    and c                                         ; $77f4: $a1
    ret nc                                        ; $77f5: $d0

    ldh [$bf], a                                  ; $77f6: $e0 $bf
    rlca                                          ; $77f8: $07
    db $fd                                        ; $77f9: $fd
    rst $38                                       ; $77fa: $ff
    ld de, $55ff                                  ; $77fb: $11 $ff $55
    cp $e1                                        ; $77fe: $fe $e1
    ld d, l                                       ; $7800: $55
    inc de                                        ; $7801: $13
    ld d, b                                       ; $7802: $50
    ld d, b                                       ; $7803: $50
    ret nz                                        ; $7804: $c0

    ldh [$80], a                                  ; $7805: $e0 $80
    rst $20                                       ; $7807: $e7
    add b                                         ; $7808: $80
    cp $e2                                        ; $7809: $fe $e2
    ld [hl], b                                    ; $780b: $70
    db $ec                                        ; $780c: $ec
    nop                                           ; $780d: $00
    nop                                           ; $780e: $00
    nop                                           ; $780f: $00
    ld a, e                                       ; $7810: $7b
    rst $38                                       ; $7811: $ff
    nop                                           ; $7812: $00
    cp $fc                                        ; $7813: $fe $fc
    rrca                                          ; $7815: $0f
    ld hl, sp+$0f                                 ; $7816: $f8 $0f
    ei                                            ; $7818: $fb
    db $fc                                        ; $7819: $fc
    ld [c], a                                     ; $781a: $e2
    rst $38                                       ; $781b: $ff
    ei                                            ; $781c: $fb
    dec bc                                        ; $781d: $0b
    ld hl, sp+$08                                 ; $781e: $f8 $08
    rst $38                                       ; $7820: $ff
    rrca                                          ; $7821: $0f
    rst $38                                       ; $7822: $ff
    ldh [rIE], a                                  ; $7823: $e0 $ff
    ccf                                           ; $7825: $3f
    rst $38                                       ; $7826: $ff
    and d                                         ; $7827: $a2
    rst $38                                       ; $7828: $ff
    ld l, d                                       ; $7829: $6a
    rst $38                                       ; $782a: $ff
    xor d                                         ; $782b: $aa
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    xor d                                         ; $782e: $aa
    xor d                                         ; $782f: $aa
    ld [hl+], a                                   ; $7830: $22
    ld [hl+], a                                   ; $7831: $22
    rst $38                                       ; $7832: $ff
    rst $38                                       ; $7833: $ff
    rst $38                                       ; $7834: $ff
    ld c, $ff                                     ; $7835: $0e $ff
    ei                                            ; $7837: $fb
    xor $3b                                       ; $7838: $ee $3b
    xor $bb                                       ; $783a: $ee $bb
    rst $28                                       ; $783c: $ef
    cp l                                          ; $783d: $bd
    rst $28                                       ; $783e: $ef
    rst $38                                       ; $783f: $ff
    cp l                                          ; $7840: $bd
    and l                                         ; $7841: $a5
    inc a                                         ; $7842: $3c
    inc h                                         ; $7843: $24
    rst $38                                       ; $7844: $ff
    rst $20                                       ; $7845: $e7
    rst $38                                       ; $7846: $ff
    pop hl                                        ; $7847: $e1
    rst $38                                       ; $7848: $ff
    cp a                                          ; $7849: $bf
    rst $38                                       ; $784a: $ff
    and e                                         ; $784b: $a3
    rst $38                                       ; $784c: $ff
    xor e                                         ; $784d: $ab
    rst $38                                       ; $784e: $ff
    ld l, e                                       ; $784f: $6b
    rst $38                                       ; $7850: $ff
    rst $28                                       ; $7851: $ef
    ld l, e                                       ; $7852: $6b
    ld l, e                                       ; $7853: $6b
    ld h, c                                       ; $7854: $61
    ld h, c                                       ; $7855: $61
    ldh [$e0], a                                  ; $7856: $e0 $e0
    ldh a, [$5f]                                  ; $7858: $f0 $5f
    rst $38                                       ; $785a: $ff
    rst $30                                       ; $785b: $f7
    ld d, c                                       ; $785c: $51
    rst $38                                       ; $785d: $ff
    ld d, l                                       ; $785e: $55
    db $fc                                        ; $785f: $fc
    ldh [$57], a                                  ; $7860: $e0 $57
    ld d, a                                       ; $7862: $57
    ld d, c                                       ; $7863: $51
    ld d, c                                       ; $7864: $51
    ld a, [c]                                     ; $7865: $f2
    ret nc                                        ; $7866: $d0

    ldh [rP1], a                                  ; $7867: $e0 $00
    xor $e0                                       ; $7869: $ee $e0
    cp $e0                                        ; $786b: $fe $e0
    rra                                           ; $786d: $1f
    ldh a, [$df]                                  ; $786e: $f0 $df
    ret nc                                        ; $7870: $d0

    rrca                                          ; $7871: $0f
    rra                                           ; $7872: $1f
    db $10                                        ; $7873: $10
    rst $38                                       ; $7874: $ff
    ldh a, [$80]                                  ; $7875: $f0 $80
    db $fd                                        ; $7877: $fd
    nop                                           ; $7878: $00
    nop                                           ; $7879: $00
    nop                                           ; $787a: $00
    ei                                            ; $787b: $fb
    rst $38                                       ; $787c: $ff
    nop                                           ; $787d: $00
    cp $fc                                        ; $787e: $fe $fc
    xor $bb                                       ; $7880: $ee $bb
    rst $38                                       ; $7882: $ff
    sub d                                         ; $7883: $92
    rst $38                                       ; $7884: $ff
    rst $38                                       ; $7885: $ff
    add d                                         ; $7886: $82
    rst $38                                       ; $7887: $ff
    xor d                                         ; $7888: $aa
    rst $38                                       ; $7889: $ff
    cp d                                          ; $788a: $ba
    cp d                                          ; $788b: $ba
    cp d                                          ; $788c: $ba
    xor d                                         ; $788d: $aa
    ei                                            ; $788e: $fb
    rst $38                                       ; $788f: $ff
    rst $28                                       ; $7890: $ef
    ret nc                                        ; $7891: $d0

    ldh [rIE], a                                  ; $7892: $e0 $ff
    ld sp, $b5ff                                  ; $7894: $31 $ff $b5
    rst $38                                       ; $7897: $ff
    rst $38                                       ; $7898: $ff
    or a                                          ; $7899: $b7
    rst $38                                       ; $789a: $ff
    or a                                          ; $789b: $b7
    or l                                          ; $789c: $b5
    rla                                           ; $789d: $17
    dec d                                         ; $789e: $15
    rst $38                                       ; $789f: $ff
    db $fd                                        ; $78a0: $fd
    cp $f0                                        ; $78a1: $fe $f0
    pop hl                                        ; $78a3: $e1
    ld b, l                                       ; $78a4: $45
    rst $38                                       ; $78a5: $ff
    push de                                       ; $78a6: $d5
    db $fd                                        ; $78a7: $fd
    ld d, a                                       ; $78a8: $57
    rst $38                                       ; $78a9: $ff
    ld d, a                                       ; $78aa: $57
    rst $30                                       ; $78ab: $f7
    ld d, l                                       ; $78ac: $55
    ld b, a                                       ; $78ad: $47
    ld b, l                                       ; $78ae: $45
    ldh a, [$e0]                                  ; $78af: $f0 $e0
    rlca                                          ; $78b1: $07
    db $fc                                        ; $78b2: $fc
    rst $30                                       ; $78b3: $f7
    dec e                                         ; $78b4: $1d
    rst $38                                       ; $78b5: $ff
    rst $30                                       ; $78b6: $f7
    ld a, h                                       ; $78b7: $7c
    rst $30                                       ; $78b8: $f7
    rra                                           ; $78b9: $1f
    rst $30                                       ; $78ba: $f7
    db $dd                                        ; $78bb: $dd
    push de                                       ; $78bc: $d5
    inc e                                         ; $78bd: $1c
    rst $38                                       ; $78be: $ff
    inc d                                         ; $78bf: $14
    rst $38                                       ; $78c0: $ff
    rst $30                                       ; $78c1: $f7
    rst $38                                       ; $78c2: $ff
    cp $1b                                        ; $78c3: $fe $1b
    rst $38                                       ; $78c5: $ff
    pop de                                        ; $78c6: $d1
    rst $38                                       ; $78c7: $ff
    rst $38                                       ; $78c8: $ff
    dec sp                                        ; $78c9: $3b
    rst $38                                       ; $78ca: $ff
    db $db                                        ; $78cb: $db
    rst $38                                       ; $78cc: $ff
    db $db                                        ; $78cd: $db
    db $db                                        ; $78ce: $db
    add hl, de                                    ; $78cf: $19
    rst $30                                       ; $78d0: $f7
    add hl, de                                    ; $78d1: $19
    rst $38                                       ; $78d2: $ff
    rst $38                                       ; $78d3: $ff
    ret nz                                        ; $78d4: $c0

    pop hl                                        ; $78d5: $e1
    jr @+$01                                      ; $78d6: $18 $ff

    ld e, d                                       ; $78d8: $5a
    rst $38                                       ; $78d9: $ff
    rst $38                                       ; $78da: $ff
    ld e, e                                       ; $78db: $5b
    rst $38                                       ; $78dc: $ff
    ld e, e                                       ; $78dd: $5b
    ld e, d                                       ; $78de: $5a
    dec bc                                        ; $78df: $0b
    ld a, [bc]                                    ; $78e0: $0a
    rst $38                                       ; $78e1: $ff
    cp $02                                        ; $78e2: $fe $02
    add b                                         ; $78e4: $80
    ldh [$80], a                                  ; $78e5: $e0 $80
    cp $e4                                        ; $78e7: $fe $e4
    halt                                          ; $78e9: $76
    ld a, [c]                                     ; $78ea: $f2
    nop                                           ; $78eb: $00
    nop                                           ; $78ec: $00
    nop                                           ; $78ed: $00
    rst $38                                       ; $78ee: $ff
    rst $38                                       ; $78ef: $ff
    inc bc                                        ; $78f0: $03
    cp $03                                        ; $78f1: $fe $03
    rst $38                                       ; $78f3: $ff
    inc bc                                        ; $78f4: $03
    rst $38                                       ; $78f5: $ff
    nop                                           ; $78f6: $00
    cp $fe                                        ; $78f7: $fe $fe
    and $f8                                       ; $78f9: $e6 $f8
    rrca                                          ; $78fb: $0f
    rst $38                                       ; $78fc: $ff
    cp b                                          ; $78fd: $b8
    rst $38                                       ; $78fe: $ff
    cp d                                          ; $78ff: $ba
    rst $28                                       ; $7900: $ef
    cp [hl]                                       ; $7901: $be
    cp $e0                                        ; $7902: $fe $e0
    xor d                                         ; $7904: $aa
    cp b                                          ; $7905: $b8
    xor b                                         ; $7906: $a8
    rst $38                                       ; $7907: $ff
    rst $28                                       ; $7908: $ef
    and $e0                                       ; $7909: $e6 $e0
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    xor b                                         ; $790d: $a8
    rst $38                                       ; $790e: $ff
    xor d                                         ; $790f: $aa
    rst $38                                       ; $7910: $ff
    xor e                                         ; $7911: $ab
    rst $38                                       ; $7912: $ff
    xor e                                         ; $7913: $ab
    xor d                                         ; $7914: $aa
    cpl                                           ; $7915: $2f
    adc e                                         ; $7916: $8b
    adc d                                         ; $7917: $8a
    rst $38                                       ; $7918: $ff
    cp $f0                                        ; $7919: $fe $f0
    pop hl                                        ; $791b: $e1
    adc b                                         ; $791c: $88
    ldh a, [$e0]                                  ; $791d: $f0 $e0
    cp $e0                                        ; $791f: $fe $e0
    rst $18                                       ; $7921: $df
    xor d                                         ; $7922: $aa
    xor b                                         ; $7923: $a8
    xor b                                         ; $7924: $a8
    rst $38                                       ; $7925: $ff
    rst $38                                       ; $7926: $ff
    ldh [$e1], a                                  ; $7927: $e0 $e1
    pop bc                                        ; $7929: $c1
    rst $38                                       ; $792a: $ff
    db $dd                                        ; $792b: $dd
    push de                                       ; $792c: $d5
    cp $e1                                        ; $792d: $fe $e1
    push de                                       ; $792f: $d5
    ld d, l                                       ; $7930: $55
    ld d, l                                       ; $7931: $55
    ldh a, [$e3]                                  ; $7932: $f0 $e3
    ld de, $ffff                                  ; $7934: $11 $ff $ff
    ld d, l                                       ; $7937: $55
    rst $38                                       ; $7938: $ff
    dec d                                         ; $7939: $15
    rst $38                                       ; $793a: $ff
    ld [hl], l                                    ; $793b: $75
    ld [hl], l                                    ; $793c: $75
    dec d                                         ; $793d: $15
    dec d                                         ; $793e: $15
    cp $e0                                        ; $793f: $fe $e0
    ldh [$e7], a                                  ; $7941: $e0 $e7
    cp h                                          ; $7943: $bc
    rst $30                                       ; $7944: $f7
    rra                                           ; $7945: $1f
    rst $30                                       ; $7946: $f7
    cp a                                          ; $7947: $bf
    pop af                                        ; $7948: $f1
    rst $38                                       ; $7949: $ff
    cp a                                          ; $794a: $bf
    pop hl                                        ; $794b: $e1
    cp a                                          ; $794c: $bf
    or c                                          ; $794d: $b1
    sbc a                                         ; $794e: $9f
    sub c                                         ; $794f: $91
    rst $38                                       ; $7950: $ff
    pop af                                        ; $7951: $f1
    rst $38                                       ; $7952: $ff
    rst $38                                       ; $7953: $ff
    ldh a, [$1f]                                  ; $7954: $f0 $1f
    rst $38                                       ; $7956: $ff
    ld [hl], c                                    ; $7957: $71
    rst $38                                       ; $7958: $ff
    ld [hl], l                                    ; $7959: $75
    rst $18                                       ; $795a: $df
    cp $fe                                        ; $795b: $fe $fe
    ldh [rHDMA5], a                               ; $795d: $e0 $55
    ld [hl], c                                    ; $795f: $71
    ld d, c                                       ; $7960: $51
    rst $38                                       ; $7961: $ff
    rst $18                                       ; $7962: $df
    rst $38                                       ; $7963: $ff
    ldh [$75], a                                  ; $7964: $e0 $75
    cp a                                          ; $7966: $bf
    ret nc                                        ; $7967: $d0

    ldh [$b5], a                                  ; $7968: $e0 $b5
    cp $e1                                        ; $796a: $fe $e1
    or l                                          ; $796c: $b5
    sub b                                         ; $796d: $90
    sub b                                         ; $796e: $90
    or b                                          ; $796f: $b0
    ldh [$fb], a                                  ; $7970: $e0 $fb
    ldh [$bf], a                                  ; $7972: $e0 $bf
    cp $e5                                        ; $7974: $fe $e5
    and b                                         ; $7976: $a0
    cp a                                          ; $7977: $bf
    and b                                         ; $7978: $a0
    rst $38                                       ; $7979: $ff
    ldh [rP1], a                                  ; $797a: $e0 $00
    nop                                           ; $797c: $00
    nop                                           ; $797d: $00
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

Jump_040_7eef:
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

Call_040_7eff:
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
