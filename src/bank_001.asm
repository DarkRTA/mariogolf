; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    db $0e, $40

    ld a, b                                       ; $4002: $78
    ld d, d                                       ; $4003: $52

    db $2c, $42, $1a, $42

    or e                                          ; $4008: $b3
    ld b, c                                       ; $4009: $41

    db $e8, $41

    adc c                                         ; $400c: $89
    ld b, d                                       ; $400d: $42

    call Call_000_304d                            ; $400e: $cd $4d $30
    call Call_000_0341                            ; $4011: $cd $41 $03
    ld a, $01                                     ; $4014: $3e $01
    ldh [$96], a                                  ; $4016: $e0 $96
    ldh [rSVBK], a                                ; $4018: $e0 $70
    ld hl, $d000                                  ; $401a: $21 $00 $d0
    ld c, $00                                     ; $401d: $0e $00
    call Call_000_03a7                            ; $401f: $cd $a7 $03
    ld a, $02                                     ; $4022: $3e $02
    ldh [$96], a                                  ; $4024: $e0 $96
    ldh [rSVBK], a                                ; $4026: $e0 $70
    ld hl, $d000                                  ; $4028: $21 $00 $d0
    ld c, $00                                     ; $402b: $0e $00
    call Call_000_03a7                            ; $402d: $cd $a7 $03
    ld a, $03                                     ; $4030: $3e $03
    ldh [$96], a                                  ; $4032: $e0 $96
    ldh [rSVBK], a                                ; $4034: $e0 $70
    ld hl, $d000                                  ; $4036: $21 $00 $d0
    ld c, $00                                     ; $4039: $0e $00
    call Call_000_03a7                            ; $403b: $cd $a7 $03
    ld a, $04                                     ; $403e: $3e $04
    ldh [$96], a                                  ; $4040: $e0 $96
    ldh [rSVBK], a                                ; $4042: $e0 $70
    ld hl, $d000                                  ; $4044: $21 $00 $d0
    ld c, $00                                     ; $4047: $0e $00
    call Call_000_03a7                            ; $4049: $cd $a7 $03
    ld a, $05                                     ; $404c: $3e $05
    ldh [$96], a                                  ; $404e: $e0 $96
    ldh [rSVBK], a                                ; $4050: $e0 $70
    ld hl, $d000                                  ; $4052: $21 $00 $d0
    ld c, $00                                     ; $4055: $0e $00
    call Call_000_03a7                            ; $4057: $cd $a7 $03
    ld a, $06                                     ; $405a: $3e $06
    ldh [$96], a                                  ; $405c: $e0 $96
    ldh [rSVBK], a                                ; $405e: $e0 $70
    ld hl, $d000                                  ; $4060: $21 $00 $d0
    ld c, $00                                     ; $4063: $0e $00
    call Call_000_03a7                            ; $4065: $cd $a7 $03
    ld a, $07                                     ; $4068: $3e $07
    ldh [$96], a                                  ; $406a: $e0 $96
    ldh [rSVBK], a                                ; $406c: $e0 $70
    ld hl, $d000                                  ; $406e: $21 $00 $d0
    ld c, $00                                     ; $4071: $0e $00
    call Call_000_03a7                            ; $4073: $cd $a7 $03
    call Call_001_41ce                            ; $4076: $cd $ce $41
    call Call_001_41b3                            ; $4079: $cd $b3 $41
    call Call_000_05dd                            ; $407c: $cd $dd $05
    call Call_000_05f6                            ; $407f: $cd $f6 $05
    rst $18                                       ; $4082: $df

    db $02, $02

    rst $18                                       ; $4085: $df

    db $6a, $02

    rst $18                                       ; $4088: $df

    db $14, $02

    ld b, $a0                                     ; $408b: $06 $a0
    xor a                                         ; $408d: $af
    ld hl, $c000                                  ; $408e: $21 $00 $c0

jr_001_4091:
    ld [hl+], a                                   ; $4091: $22
    dec b                                         ; $4092: $05
    jr nz, jr_001_4091                            ; $4093: $20 $fc

    call Call_000_2036                            ; $4095: $cd $36 $20
    call Call_000_0371                            ; $4098: $cd $71 $03
    ld c, $7f                                     ; $409b: $0e $7f
    call Call_000_258d                            ; $409d: $cd $8d $25
    call Call_000_2e3b                            ; $40a0: $cd $3b $2e
    jp Jump_001_41a6                              ; $40a3: $c3 $a6 $41


    ld a, $01                                     ; $40a6: $3e $01
    ldh [$9e], a                                  ; $40a8: $e0 $9e
    ld hl, $0153                                  ; $40aa: $21 $53 $01
    ld de, $0511                                  ; $40ad: $11 $11 $05
    call Call_000_20b1                            ; $40b0: $cd $b1 $20
    ld a, $03                                     ; $40b3: $3e $03
    ldh [$9e], a                                  ; $40b5: $e0 $9e
    call Call_000_2e3b                            ; $40b7: $cd $3b $2e
    ld bc, $00b4                                  ; $40ba: $01 $b4 $00

Jump_001_40bd:
    ldh a, [$91]                                  ; $40bd: $f0 $91
    bit 6, a                                      ; $40bf: $cb $77
    jr z, jr_001_411d                             ; $40c1: $28 $5a

    ld a, $02                                     ; $40c3: $3e $02
    ldh [$9e], a                                  ; $40c5: $e0 $9e
    ld a, $03                                     ; $40c7: $3e $03
    ldh [$9e], a                                  ; $40c9: $e0 $9e
    xor b                                         ; $40cb: $a8

jr_001_40cc:
    ld a, b                                       ; $40cc: $78
    ld de, $0909                                  ; $40cd: $11 $09 $09
    call Call_000_22d2                            ; $40d0: $cd $d2 $22
    ld hl, $5160                                  ; $40d3: $21 $60 $51
    ld de, $0207                                  ; $40d6: $11 $07 $02
    call Call_000_20b1                            ; $40d9: $cd $b1 $20
    call Call_000_2e3b                            ; $40dc: $cd $3b $2e
    ldh a, [$91]                                  ; $40df: $f0 $91
    bit 4, a                                      ; $40e1: $cb $67
    jr z, jr_001_40ee                             ; $40e3: $28 $09

    inc b                                         ; $40e5: $04
    ld a, b                                       ; $40e6: $78
    and $03                                       ; $40e7: $e6 $03
    ld b, a                                       ; $40e9: $47
    rst $08                                       ; $40ea: $cf
    ld e, e                                       ; $40eb: $5b
    jr jr_001_40cc                                ; $40ec: $18 $de

jr_001_40ee:
    bit 5, a                                      ; $40ee: $cb $6f
    jr z, jr_001_40fb                             ; $40f0: $28 $09

    dec b                                         ; $40f2: $05
    ld a, b                                       ; $40f3: $78
    and $03                                       ; $40f4: $e6 $03
    ld b, a                                       ; $40f6: $47
    rst $08                                       ; $40f7: $cf
    ld e, e                                       ; $40f8: $5b
    jr jr_001_40cc                                ; $40f9: $18 $d1

jr_001_40fb:
    bit 0, a                                      ; $40fb: $cb $47
    jr z, jr_001_4103                             ; $40fd: $28 $04

    rst $08                                       ; $40ff: $cf
    ld e, h                                       ; $4100: $5c
    jr jr_001_4105                                ; $4101: $18 $02

jr_001_4103:
    jr jr_001_40cc                                ; $4103: $18 $c7

jr_001_4105:
    ld a, $01                                     ; $4105: $3e $01
    ldh [$9e], a                                  ; $4107: $e0 $9e
    ld hl, $c800                                  ; $4109: $21 $00 $c8
    ld a, l                                       ; $410c: $7d
    add $10                                       ; $410d: $c6 $10
    ld l, a                                       ; $410f: $6f
    ld a, h                                       ; $4110: $7c
    adc $00                                       ; $4111: $ce $00
    ld h, a                                       ; $4113: $67
    ld [hl], b                                    ; $4114: $70
    rst $18                                       ; $4115: $df
    ld h, $41                                     ; $4116: $26 $41
    rst $18                                       ; $4118: $df
    ld [bc], a                                    ; $4119: $02
    ld b, d                                       ; $411a: $42

jr_001_411b:
    jr jr_001_411b                                ; $411b: $18 $fe

jr_001_411d:
    bit 3, a                                      ; $411d: $cb $5f
    jr z, jr_001_4124                             ; $411f: $28 $03

    jp Jump_001_41a2                              ; $4121: $c3 $a2 $41


jr_001_4124:
    bit 7, a                                      ; $4124: $cb $7f
    jr z, jr_001_4159                             ; $4126: $28 $31

    rst $18                                       ; $4128: $df
    ld h, [hl]                                    ; $4129: $66
    ld [bc], a                                    ; $412a: $02
    ld a, $01                                     ; $412b: $3e $01
    ldh [$9e], a                                  ; $412d: $e0 $9e

jr_001_412f:
    ld a, $00                                     ; $412f: $3e $00
    rst $18                                       ; $4131: $df
    ld [bc], a                                    ; $4132: $02
    ld b, b                                       ; $4133: $40
    ld a, $01                                     ; $4134: $3e $01
    rst $18                                       ; $4136: $df
    ld [bc], a                                    ; $4137: $02
    ld b, b                                       ; $4138: $40
    ld a, $02                                     ; $4139: $3e $02
    rst $18                                       ; $413b: $df
    ld [bc], a                                    ; $413c: $02
    ld b, b                                       ; $413d: $40
    ld a, $03                                     ; $413e: $3e $03
    rst $18                                       ; $4140: $df
    ld [bc], a                                    ; $4141: $02
    ld b, b                                       ; $4142: $40
    ld a, $00                                     ; $4143: $3e $00
    rst $18                                       ; $4145: $df
    inc b                                         ; $4146: $04
    ld b, b                                       ; $4147: $40
    ld a, $01                                     ; $4148: $3e $01
    rst $18                                       ; $414a: $df
    inc b                                         ; $414b: $04
    ld b, b                                       ; $414c: $40
    ld a, $02                                     ; $414d: $3e $02
    rst $18                                       ; $414f: $df
    inc b                                         ; $4150: $04
    ld b, b                                       ; $4151: $40
    ld a, $03                                     ; $4152: $3e $03
    rst $18                                       ; $4154: $df
    inc b                                         ; $4155: $04
    ld b, b                                       ; $4156: $40
    jr jr_001_412f                                ; $4157: $18 $d6

jr_001_4159:
    bit 5, a                                      ; $4159: $cb $6f
    jr z, jr_001_415d                             ; $415b: $28 $00

jr_001_415d:
    bit 0, a                                      ; $415d: $cb $47
    jr z, jr_001_4168                             ; $415f: $28 $07

    ld a, $01                                     ; $4161: $3e $01
    ldh [$9e], a                                  ; $4163: $e0 $9e
    rst $18                                       ; $4165: $df
    nop                                           ; $4166: $00
    db $10                                        ; $4167: $10

jr_001_4168:
    bit 4, a                                      ; $4168: $cb $67
    jr z, jr_001_417d                             ; $416a: $28 $11

    ld a, $01                                     ; $416c: $3e $01
    ldh [$9e], a                                  ; $416e: $e0 $9e
    ld hl, $c450                                  ; $4170: $21 $50 $c4
    ld [hl], $01                                  ; $4173: $36 $01
    ld hl, $c46a                                  ; $4175: $21 $6a $c4
    ld [hl], $01                                  ; $4178: $36 $01
    rst $18                                       ; $417a: $df
    ld c, b                                       ; $417b: $48
    ld a, [bc]                                    ; $417c: $0a

jr_001_417d:
    bit 1, a                                      ; $417d: $cb $4f
    jr z, jr_001_4192                             ; $417f: $28 $11

    ld a, $01                                     ; $4181: $3e $01
    ldh [$9e], a                                  ; $4183: $e0 $9e
    ld hl, $c450                                  ; $4185: $21 $50 $c4
    ld [hl], $23                                  ; $4188: $36 $23
    ld hl, $c46a                                  ; $418a: $21 $6a $c4
    ld [hl], $01                                  ; $418d: $36 $01
    rst $18                                       ; $418f: $df
    ld c, b                                       ; $4190: $48
    ld a, [bc]                                    ; $4191: $0a

jr_001_4192:
    bit 2, a                                      ; $4192: $cb $57
    jr z, jr_001_4199                             ; $4194: $28 $03

    jp Jump_001_516e                              ; $4196: $c3 $6e $51


jr_001_4199:
    call Call_000_2e3b                            ; $4199: $cd $3b $2e
    dec bc                                        ; $419c: $0b
    ld a, b                                       ; $419d: $78
    or c                                          ; $419e: $b1
    jp nz, Jump_001_40bd                          ; $419f: $c2 $bd $40

Jump_001_41a2:
    ld a, $01                                     ; $41a2: $3e $01
    ldh [$9e], a                                  ; $41a4: $e0 $9e

Jump_001_41a6:
    ld hl, $c450                                  ; $41a6: $21 $50 $c4
    ld [hl], $00                                  ; $41a9: $36 $00
    ld hl, $c46a                                  ; $41ab: $21 $6a $c4
    ld [hl], $03                                  ; $41ae: $36 $03
    rst $18                                       ; $41b0: $df

    db $48, $0a

Call_001_41b3:
    push af                                       ; $41b3: $f5
    push bc                                       ; $41b4: $c5
    push de                                       ; $41b5: $d5
    push hl                                       ; $41b6: $e5
    ld hl, $50a0                                  ; $41b7: $21 $a0 $50
    ld de, $0008                                  ; $41ba: $11 $08 $00
    call Call_000_0595                            ; $41bd: $cd $95 $05
    ld hl, $50e0                                  ; $41c0: $21 $e0 $50
    ld de, $0808                                  ; $41c3: $11 $08 $08
    call Call_000_0595                            ; $41c6: $cd $95 $05
    pop hl                                        ; $41c9: $e1
    pop de                                        ; $41ca: $d1
    pop bc                                        ; $41cb: $c1
    pop af                                        ; $41cc: $f1
    ret                                           ; $41cd: $c9


Call_001_41ce:
    xor a                                         ; $41ce: $af
    ldh [rVBK], a                                 ; $41cf: $e0 $4f
    ld hl, $42a0                                  ; $41d1: $21 $a0 $42
    ld de, $9000                                  ; $41d4: $11 $00 $90
    ld c, $80                                     ; $41d7: $0e $80
    call Call_000_2096                            ; $41d9: $cd $96 $20
    ld hl, $4aa0                                  ; $41dc: $21 $a0 $4a
    ld de, $8800                                  ; $41df: $11 $00 $88
    ld c, $60                                     ; $41e2: $0e $60
    call Call_000_2096                            ; $41e4: $cd $96 $20
    ret                                           ; $41e7: $c9


    push af                                       ; $41e8: $f5
    push bc                                       ; $41e9: $c5
    push de                                       ; $41ea: $d5
    push hl                                       ; $41eb: $e5
    call Call_000_0341                            ; $41ec: $cd $41 $03
    call Call_001_41ce                            ; $41ef: $cd $ce $41
    xor a                                         ; $41f2: $af
    ldh [rVBK], a                                 ; $41f3: $e0 $4f
    ld hl, $5120                                  ; $41f5: $21 $20 $51
    ld de, $87c0                                  ; $41f8: $11 $c0 $87
    ld c, $04                                     ; $41fb: $0e $04
    call Call_000_2096                            ; $41fd: $cd $96 $20
    ld hl, $50a0                                  ; $4200: $21 $a0 $50
    ld de, $0008                                  ; $4203: $11 $08 $00
    call Call_000_0595                            ; $4206: $cd $95 $05
    ld hl, $50e0                                  ; $4209: $21 $e0 $50
    ld de, $0808                                  ; $420c: $11 $08 $08
    call Call_000_0595                            ; $420f: $cd $95 $05
    call Call_000_0371                            ; $4212: $cd $71 $03
    pop hl                                        ; $4215: $e1
    pop de                                        ; $4216: $d1
    pop bc                                        ; $4217: $c1
    pop af                                        ; $4218: $f1
    ret                                           ; $4219: $c9


    push af                                       ; $421a: $f5
    push bc                                       ; $421b: $c5
    push de                                       ; $421c: $d5
    push hl                                       ; $421d: $e5
    call Call_000_0341                            ; $421e: $cd $41 $03
    call Call_001_41ce                            ; $4221: $cd $ce $41
    call Call_000_0371                            ; $4224: $cd $71 $03
    pop hl                                        ; $4227: $e1
    pop de                                        ; $4228: $d1
    pop bc                                        ; $4229: $c1
    pop af                                        ; $422a: $f1
    ret                                           ; $422b: $c9


    push af                                       ; $422c: $f5
    push bc                                       ; $422d: $c5
    push de                                       ; $422e: $d5
    push hl                                       ; $422f: $e5
    ld hl, $44a0                                  ; $4230: $21 $a0 $44
    ld de, $9200                                  ; $4233: $11 $00 $92
    ld c, $20                                     ; $4236: $0e $20
    call Call_000_0468                            ; $4238: $cd $68 $04
    call Call_000_2e3b                            ; $423b: $cd $3b $2e
    ld hl, $46a0                                  ; $423e: $21 $a0 $46
    ld de, $9400                                  ; $4241: $11 $00 $94
    ld c, $20                                     ; $4244: $0e $20
    call Call_000_0468                            ; $4246: $cd $68 $04
    call Call_000_2e3b                            ; $4249: $cd $3b $2e
    ld hl, $48a0                                  ; $424c: $21 $a0 $48
    ld de, $9600                                  ; $424f: $11 $00 $96
    ld c, $20                                     ; $4252: $0e $20
    call Call_000_0468                            ; $4254: $cd $68 $04
    call Call_000_2e3b                            ; $4257: $cd $3b $2e
    ld hl, $4aa0                                  ; $425a: $21 $a0 $4a
    ld de, $8800                                  ; $425d: $11 $00 $88
    ld c, $20                                     ; $4260: $0e $20
    call Call_000_0468                            ; $4262: $cd $68 $04
    call Call_000_2e3b                            ; $4265: $cd $3b $2e
    ld hl, $4ca0                                  ; $4268: $21 $a0 $4c
    ld de, $8a00                                  ; $426b: $11 $00 $8a
    ld c, $20                                     ; $426e: $0e $20
    call Call_000_0468                            ; $4270: $cd $68 $04
    call Call_000_2e3b                            ; $4273: $cd $3b $2e
    ld hl, $4ea0                                  ; $4276: $21 $a0 $4e
    ld de, $8c00                                  ; $4279: $11 $00 $8c
    ld c, $20                                     ; $427c: $0e $20
    call Call_000_0468                            ; $427e: $cd $68 $04
    call Call_000_2e3b                            ; $4281: $cd $3b $2e
    pop hl                                        ; $4284: $e1
    pop de                                        ; $4285: $d1
    pop bc                                        ; $4286: $c1
    pop af                                        ; $4287: $f1
    ret                                           ; $4288: $c9


    push bc                                       ; $4289: $c5
    ld hl, $5120                                  ; $428a: $21 $20 $51
    ld c, $04                                     ; $428d: $0e $04
    call Call_000_0468                            ; $428f: $cd $68 $04
    pop bc                                        ; $4292: $c1
    ld a, b                                       ; $4293: $78
    add $08                                       ; $4294: $c6 $08
    ld d, a                                       ; $4296: $57
    ld e, $01                                     ; $4297: $1e $01
    ld hl, $50e0                                  ; $4299: $21 $e0 $50
    call Call_000_0595                            ; $429c: $cd $95 $05
    ret                                           ; $429f: $c9


    nop                                           ; $42a0: $00
    nop                                           ; $42a1: $00
    nop                                           ; $42a2: $00
    nop                                           ; $42a3: $00
    nop                                           ; $42a4: $00
    nop                                           ; $42a5: $00
    nop                                           ; $42a6: $00
    nop                                           ; $42a7: $00
    nop                                           ; $42a8: $00
    nop                                           ; $42a9: $00
    nop                                           ; $42aa: $00
    nop                                           ; $42ab: $00
    nop                                           ; $42ac: $00
    nop                                           ; $42ad: $00
    nop                                           ; $42ae: $00
    nop                                           ; $42af: $00
    rst $38                                       ; $42b0: $ff
    nop                                           ; $42b1: $00
    rst $38                                       ; $42b2: $ff
    nop                                           ; $42b3: $00
    ld a, l                                       ; $42b4: $7d
    cp $ba                                        ; $42b5: $fe $ba
    rst $00                                       ; $42b7: $c7
    add e                                         ; $42b8: $83
    rst $38                                       ; $42b9: $ff
    rst $00                                       ; $42ba: $c7
    rst $38                                       ; $42bb: $ff
    rst $28                                       ; $42bc: $ef
    rst $38                                       ; $42bd: $ff
    rst $38                                       ; $42be: $ff
    rst $38                                       ; $42bf: $ff
    rst $38                                       ; $42c0: $ff
    rst $38                                       ; $42c1: $ff
    ret nc                                        ; $42c2: $d0

    rst $28                                       ; $42c3: $ef
    sbc a                                         ; $42c4: $9f
    rst $38                                       ; $42c5: $ff
    and b                                         ; $42c6: $a0
    rst $38                                       ; $42c7: $ff
    xor a                                         ; $42c8: $af
    ldh a, [$af]                                  ; $42c9: $f0 $af
    ldh a, [$af]                                  ; $42cb: $f0 $af
    ldh a, [$af]                                  ; $42cd: $f0 $af
    ldh a, [rIE]                                  ; $42cf: $f0 $ff
    rst $38                                       ; $42d1: $ff
    nop                                           ; $42d2: $00
    rst $38                                       ; $42d3: $ff
    rst $38                                       ; $42d4: $ff
    rst $38                                       ; $42d5: $ff
    nop                                           ; $42d6: $00
    rst $38                                       ; $42d7: $ff
    rst $38                                       ; $42d8: $ff
    nop                                           ; $42d9: $00
    rst $38                                       ; $42da: $ff
    nop                                           ; $42db: $00
    rst $38                                       ; $42dc: $ff
    nop                                           ; $42dd: $00
    rst $38                                       ; $42de: $ff
    nop                                           ; $42df: $00
    rst $38                                       ; $42e0: $ff
    rst $38                                       ; $42e1: $ff
    rlca                                          ; $42e2: $07
    rst $38                                       ; $42e3: $ff
    di                                            ; $42e4: $f3
    rst $38                                       ; $42e5: $ff
    dec bc                                        ; $42e6: $0b
    rst $38                                       ; $42e7: $ff
    ei                                            ; $42e8: $fb
    rrca                                          ; $42e9: $0f
    ei                                            ; $42ea: $fb
    rrca                                          ; $42eb: $0f
    ei                                            ; $42ec: $fb
    rrca                                          ; $42ed: $0f
    ei                                            ; $42ee: $fb
    rrca                                          ; $42ef: $0f
    xor a                                         ; $42f0: $af
    ldh a, [$af]                                  ; $42f1: $f0 $af
    ldh a, [$af]                                  ; $42f3: $f0 $af
    ldh a, [$af]                                  ; $42f5: $f0 $af
    ldh a, [$af]                                  ; $42f7: $f0 $af
    ldh a, [$af]                                  ; $42f9: $f0 $af
    ldh a, [$af]                                  ; $42fb: $f0 $af
    ldh a, [$af]                                  ; $42fd: $f0 $af
    ldh a, [$fb]                                  ; $42ff: $f0 $fb
    rrca                                          ; $4301: $0f
    ei                                            ; $4302: $fb
    rrca                                          ; $4303: $0f
    ei                                            ; $4304: $fb
    rrca                                          ; $4305: $0f
    ei                                            ; $4306: $fb
    rrca                                          ; $4307: $0f
    ei                                            ; $4308: $fb
    rrca                                          ; $4309: $0f
    ei                                            ; $430a: $fb
    rrca                                          ; $430b: $0f
    ei                                            ; $430c: $fb
    rrca                                          ; $430d: $0f
    ei                                            ; $430e: $fb
    rrca                                          ; $430f: $0f
    xor a                                         ; $4310: $af
    ldh a, [$af]                                  ; $4311: $f0 $af
    ldh a, [$af]                                  ; $4313: $f0 $af
    ldh a, [$af]                                  ; $4315: $f0 $af
    ldh a, [$9f]                                  ; $4317: $f0 $9f
    rst $38                                       ; $4319: $ff
    ret nz                                        ; $431a: $c0

    rst $38                                       ; $431b: $ff
    rst $38                                       ; $431c: $ff
    rst $38                                       ; $431d: $ff
    rst $38                                       ; $431e: $ff
    rst $38                                       ; $431f: $ff
    rst $38                                       ; $4320: $ff
    nop                                           ; $4321: $00
    rst $38                                       ; $4322: $ff
    nop                                           ; $4323: $00
    rst $38                                       ; $4324: $ff
    nop                                           ; $4325: $00
    rst $38                                       ; $4326: $ff
    nop                                           ; $4327: $00
    rst $38                                       ; $4328: $ff
    rst $38                                       ; $4329: $ff
    nop                                           ; $432a: $00
    rst $38                                       ; $432b: $ff
    rst $38                                       ; $432c: $ff
    rst $38                                       ; $432d: $ff
    rst $38                                       ; $432e: $ff
    rst $38                                       ; $432f: $ff
    ei                                            ; $4330: $fb
    rrca                                          ; $4331: $0f
    ei                                            ; $4332: $fb
    rrca                                          ; $4333: $0f
    ei                                            ; $4334: $fb
    rrca                                          ; $4335: $0f
    db $eb                                        ; $4336: $eb
    rra                                           ; $4337: $1f
    di                                            ; $4338: $f3
    rst $38                                       ; $4339: $ff
    rlca                                          ; $433a: $07
    rst $38                                       ; $433b: $ff
    rst $38                                       ; $433c: $ff
    rst $38                                       ; $433d: $ff
    rst $38                                       ; $433e: $ff
    rst $38                                       ; $433f: $ff
    rst $38                                       ; $4340: $ff
    nop                                           ; $4341: $00
    rst $10                                       ; $4342: $d7
    jr c, @-$43                                   ; $4343: $38 $bb

    ld a, h                                       ; $4345: $7c
    ld l, l                                       ; $4346: $6d
    cp $c6                                        ; $4347: $fe $c6
    rst $38                                       ; $4349: $ff
    add d                                         ; $434a: $82
    rst $38                                       ; $434b: $ff
    cp $ff                                        ; $434c: $fe $ff
    add b                                         ; $434e: $80
    ld a, a                                       ; $434f: $7f

jr_001_4350:
    rst $38                                       ; $4350: $ff
    nop                                           ; $4351: $00
    rst $38                                       ; $4352: $ff
    cp $82                                        ; $4353: $fe $82
    rst $38                                       ; $4355: $ff
    add $ff                                       ; $4356: $c6 $ff
    ld l, h                                       ; $4358: $6c
    rst $38                                       ; $4359: $ff
    cp c                                          ; $435a: $b9
    ld a, [hl]                                    ; $435b: $7e
    db $d3                                        ; $435c: $d3
    inc a                                         ; $435d: $3c
    rst $20                                       ; $435e: $e7
    jr jr_001_4350                                ; $435f: $18 $ef

    ld e, $da                                     ; $4361: $1e $da
    ccf                                           ; $4363: $3f
    or d                                          ; $4364: $b2
    ld a, a                                       ; $4365: $7f
    ld [c], a                                     ; $4366: $e2
    ld a, a                                       ; $4367: $7f
    or d                                          ; $4368: $b2
    ld a, a                                       ; $4369: $7f
    jp c, $ee3f                                   ; $436a: $da $3f $ee

    rra                                           ; $436d: $1f
    ldh a, [rIF]                                  ; $436e: $f0 $0f
    rst $30                                       ; $4370: $f7
    ld a, b                                       ; $4371: $78
    db $db                                        ; $4372: $db
    ld a, h                                       ; $4373: $7c
    call $c67e                                    ; $4374: $cd $7e $c6
    ld a, a                                       ; $4377: $7f
    call z, $d97f                                 ; $4378: $cc $7f $d9
    ld a, [hl]                                    ; $437b: $7e
    di                                            ; $437c: $f3
    ld a, h                                       ; $437d: $7c
    rst $00                                       ; $437e: $c7
    jr c, @+$01                                   ; $437f: $38 $ff

    rst $38                                       ; $4381: $ff
    nop                                           ; $4382: $00
    rst $38                                       ; $4383: $ff
    rst $38                                       ; $4384: $ff
    rst $38                                       ; $4385: $ff
    nop                                           ; $4386: $00
    rst $38                                       ; $4387: $ff
    rst $38                                       ; $4388: $ff
    nop                                           ; $4389: $00
    rst $38                                       ; $438a: $ff
    ld a, [bc]                                    ; $438b: $0a
    ld a, [$fa0f]                                 ; $438c: $fa $0f $fa
    dec b                                         ; $438f: $05
    rst $38                                       ; $4390: $ff
    rst $38                                       ; $4391: $ff
    nop                                           ; $4392: $00
    rst $38                                       ; $4393: $ff
    rst $38                                       ; $4394: $ff
    rst $38                                       ; $4395: $ff
    nop                                           ; $4396: $00
    rst $38                                       ; $4397: $ff
    rst $38                                       ; $4398: $ff
    ld c, $fa                                     ; $4399: $0e $fa
    rrca                                          ; $439b: $0f
    cp $0f                                        ; $439c: $fe $0f
    ld hl, sp+$07                                 ; $439e: $f8 $07
    nop                                           ; $43a0: $00
    nop                                           ; $43a1: $00
    nop                                           ; $43a2: $00
    nop                                           ; $43a3: $00
    nop                                           ; $43a4: $00
    nop                                           ; $43a5: $00
    nop                                           ; $43a6: $00
    nop                                           ; $43a7: $00
    nop                                           ; $43a8: $00
    nop                                           ; $43a9: $00
    nop                                           ; $43aa: $00
    nop                                           ; $43ab: $00
    nop                                           ; $43ac: $00
    nop                                           ; $43ad: $00
    nop                                           ; $43ae: $00
    nop                                           ; $43af: $00
    nop                                           ; $43b0: $00
    nop                                           ; $43b1: $00
    nop                                           ; $43b2: $00
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
    nop                                           ; $43cf: $00
    nop                                           ; $43d0: $00
    nop                                           ; $43d1: $00
    nop                                           ; $43d2: $00
    nop                                           ; $43d3: $00
    nop                                           ; $43d4: $00
    nop                                           ; $43d5: $00
    nop                                           ; $43d6: $00
    nop                                           ; $43d7: $00
    nop                                           ; $43d8: $00
    nop                                           ; $43d9: $00
    nop                                           ; $43da: $00
    nop                                           ; $43db: $00
    nop                                           ; $43dc: $00
    nop                                           ; $43dd: $00
    nop                                           ; $43de: $00
    nop                                           ; $43df: $00
    nop                                           ; $43e0: $00
    nop                                           ; $43e1: $00
    nop                                           ; $43e2: $00
    nop                                           ; $43e3: $00
    nop                                           ; $43e4: $00
    nop                                           ; $43e5: $00
    nop                                           ; $43e6: $00
    nop                                           ; $43e7: $00
    nop                                           ; $43e8: $00
    nop                                           ; $43e9: $00
    nop                                           ; $43ea: $00
    nop                                           ; $43eb: $00
    nop                                           ; $43ec: $00
    nop                                           ; $43ed: $00
    nop                                           ; $43ee: $00
    nop                                           ; $43ef: $00
    nop                                           ; $43f0: $00
    nop                                           ; $43f1: $00
    nop                                           ; $43f2: $00
    nop                                           ; $43f3: $00
    nop                                           ; $43f4: $00
    nop                                           ; $43f5: $00
    nop                                           ; $43f6: $00
    nop                                           ; $43f7: $00
    nop                                           ; $43f8: $00
    nop                                           ; $43f9: $00
    nop                                           ; $43fa: $00
    nop                                           ; $43fb: $00
    nop                                           ; $43fc: $00
    nop                                           ; $43fd: $00
    nop                                           ; $43fe: $00
    nop                                           ; $43ff: $00
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    nop                                           ; $4404: $00
    nop                                           ; $4405: $00
    nop                                           ; $4406: $00
    nop                                           ; $4407: $00
    nop                                           ; $4408: $00
    nop                                           ; $4409: $00
    nop                                           ; $440a: $00
    nop                                           ; $440b: $00
    nop                                           ; $440c: $00
    nop                                           ; $440d: $00
    nop                                           ; $440e: $00
    nop                                           ; $440f: $00
    nop                                           ; $4410: $00
    nop                                           ; $4411: $00
    nop                                           ; $4412: $00
    nop                                           ; $4413: $00
    nop                                           ; $4414: $00
    nop                                           ; $4415: $00
    nop                                           ; $4416: $00
    nop                                           ; $4417: $00
    nop                                           ; $4418: $00
    nop                                           ; $4419: $00
    nop                                           ; $441a: $00
    nop                                           ; $441b: $00
    nop                                           ; $441c: $00
    nop                                           ; $441d: $00
    nop                                           ; $441e: $00
    nop                                           ; $441f: $00
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    nop                                           ; $4423: $00
    nop                                           ; $4424: $00
    nop                                           ; $4425: $00
    nop                                           ; $4426: $00
    nop                                           ; $4427: $00
    nop                                           ; $4428: $00
    nop                                           ; $4429: $00
    nop                                           ; $442a: $00
    nop                                           ; $442b: $00
    nop                                           ; $442c: $00
    nop                                           ; $442d: $00
    nop                                           ; $442e: $00
    nop                                           ; $442f: $00
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    nop                                           ; $4436: $00
    nop                                           ; $4437: $00
    nop                                           ; $4438: $00
    nop                                           ; $4439: $00
    nop                                           ; $443a: $00
    nop                                           ; $443b: $00
    nop                                           ; $443c: $00
    nop                                           ; $443d: $00
    nop                                           ; $443e: $00
    nop                                           ; $443f: $00
    nop                                           ; $4440: $00
    nop                                           ; $4441: $00
    nop                                           ; $4442: $00
    nop                                           ; $4443: $00
    nop                                           ; $4444: $00
    nop                                           ; $4445: $00
    nop                                           ; $4446: $00
    nop                                           ; $4447: $00
    nop                                           ; $4448: $00
    nop                                           ; $4449: $00
    nop                                           ; $444a: $00
    nop                                           ; $444b: $00
    nop                                           ; $444c: $00
    nop                                           ; $444d: $00
    nop                                           ; $444e: $00
    nop                                           ; $444f: $00
    nop                                           ; $4450: $00
    nop                                           ; $4451: $00
    nop                                           ; $4452: $00
    nop                                           ; $4453: $00
    nop                                           ; $4454: $00
    nop                                           ; $4455: $00
    nop                                           ; $4456: $00
    nop                                           ; $4457: $00
    nop                                           ; $4458: $00
    nop                                           ; $4459: $00
    nop                                           ; $445a: $00
    nop                                           ; $445b: $00
    nop                                           ; $445c: $00
    nop                                           ; $445d: $00
    nop                                           ; $445e: $00
    nop                                           ; $445f: $00
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    nop                                           ; $4465: $00
    nop                                           ; $4466: $00
    nop                                           ; $4467: $00
    nop                                           ; $4468: $00
    nop                                           ; $4469: $00
    nop                                           ; $446a: $00
    nop                                           ; $446b: $00
    nop                                           ; $446c: $00
    nop                                           ; $446d: $00
    nop                                           ; $446e: $00
    nop                                           ; $446f: $00
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    nop                                           ; $4473: $00
    nop                                           ; $4474: $00
    nop                                           ; $4475: $00
    nop                                           ; $4476: $00
    nop                                           ; $4477: $00
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    nop                                           ; $447a: $00
    nop                                           ; $447b: $00
    nop                                           ; $447c: $00
    nop                                           ; $447d: $00
    nop                                           ; $447e: $00
    nop                                           ; $447f: $00
    nop                                           ; $4480: $00
    nop                                           ; $4481: $00
    nop                                           ; $4482: $00
    nop                                           ; $4483: $00
    nop                                           ; $4484: $00
    nop                                           ; $4485: $00
    nop                                           ; $4486: $00
    nop                                           ; $4487: $00
    nop                                           ; $4488: $00
    nop                                           ; $4489: $00
    nop                                           ; $448a: $00
    nop                                           ; $448b: $00
    nop                                           ; $448c: $00
    nop                                           ; $448d: $00
    nop                                           ; $448e: $00
    nop                                           ; $448f: $00
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    nop                                           ; $4492: $00
    nop                                           ; $4493: $00
    nop                                           ; $4494: $00
    nop                                           ; $4495: $00
    nop                                           ; $4496: $00
    nop                                           ; $4497: $00
    nop                                           ; $4498: $00
    nop                                           ; $4499: $00
    nop                                           ; $449a: $00
    nop                                           ; $449b: $00
    nop                                           ; $449c: $00
    nop                                           ; $449d: $00
    nop                                           ; $449e: $00
    nop                                           ; $449f: $00
    rst $38                                       ; $44a0: $ff
    nop                                           ; $44a1: $00
    rst $38                                       ; $44a2: $ff
    nop                                           ; $44a3: $00
    rst $38                                       ; $44a4: $ff
    nop                                           ; $44a5: $00
    rst $38                                       ; $44a6: $ff
    nop                                           ; $44a7: $00
    rst $38                                       ; $44a8: $ff
    nop                                           ; $44a9: $00
    rst $38                                       ; $44aa: $ff
    nop                                           ; $44ab: $00
    rst $38                                       ; $44ac: $ff
    nop                                           ; $44ad: $00

jr_001_44ae:
    rst $38                                       ; $44ae: $ff
    nop                                           ; $44af: $00
    rst $38                                       ; $44b0: $ff
    jr jr_001_44ae                                ; $44b1: $18 $fb

    inc e                                         ; $44b3: $1c
    ei                                            ; $44b4: $fb
    inc e                                         ; $44b5: $1c
    ei                                            ; $44b6: $fb
    inc e                                         ; $44b7: $1c
    ei                                            ; $44b8: $fb
    inc e                                         ; $44b9: $1c
    di                                            ; $44ba: $f3
    inc c                                         ; $44bb: $0c
    rst $38                                       ; $44bc: $ff
    jr @-$0b                                      ; $44bd: $18 $f3

    inc c                                         ; $44bf: $0c
    rst $38                                       ; $44c0: $ff
    ld l, h                                       ; $44c1: $6c
    db $ed                                        ; $44c2: $ed
    ld [hl], $c9                                  ; $44c3: $36 $c9
    ld a, [hl]                                    ; $44c5: $7e
    db $db                                        ; $44c6: $db
    inc h                                         ; $44c7: $24
    rst $38                                       ; $44c8: $ff
    nop                                           ; $44c9: $00
    rst $38                                       ; $44ca: $ff
    nop                                           ; $44cb: $00
    rst $38                                       ; $44cc: $ff
    nop                                           ; $44cd: $00
    rst $38                                       ; $44ce: $ff
    nop                                           ; $44cf: $00
    rst $38                                       ; $44d0: $ff
    ld l, h                                       ; $44d1: $6c
    rst $38                                       ; $44d2: $ff
    ld a, [hl]                                    ; $44d3: $7e
    db $ec                                        ; $44d4: $ec
    rst $38                                       ; $44d5: $ff
    db $ed                                        ; $44d6: $ed
    ld a, [hl]                                    ; $44d7: $7e
    rst $28                                       ; $44d8: $ef
    ld a, [hl]                                    ; $44d9: $7e
    db $fc                                        ; $44da: $fc
    rst $38                                       ; $44db: $ff
    db $ed                                        ; $44dc: $ed
    ld a, [hl]                                    ; $44dd: $7e
    ret                                           ; $44de: $c9


    ld [hl], $ff                                  ; $44df: $36 $ff
    jr z, @+$01                                   ; $44e1: $28 $ff

    ld a, [hl]                                    ; $44e3: $7e

jr_001_44e4:
    add sp, -$41                                  ; $44e4: $e8 $bf
    rst $38                                       ; $44e6: $ff
    ld a, h                                       ; $44e7: $7c
    db $eb                                        ; $44e8: $eb
    ld a, $fc                                     ; $44e9: $3e $fc
    rst $38                                       ; $44eb: $ff
    xor c                                         ; $44ec: $a9
    ld a, [hl]                                    ; $44ed: $7e
    db $eb                                        ; $44ee: $eb
    inc d                                         ; $44ef: $14
    rst $38                                       ; $44f0: $ff
    db $e4                                        ; $44f1: $e4
    xor c                                         ; $44f2: $a9
    cp $eb                                        ; $44f3: $fe $eb
    db $fc                                        ; $44f5: $fc
    sub e                                         ; $44f6: $93
    ld a, h                                       ; $44f7: $7c
    rst $28                                       ; $44f8: $ef
    ld a, $ea                                     ; $44f9: $3e $ea
    ccf                                           ; $44fb: $3f
    adc $7f                                       ; $44fc: $ce $7f
    ret c                                         ; $44fe: $d8

    daa                                           ; $44ff: $27
    rst $38                                       ; $4500: $ff
    jr nc, @-$1f                                  ; $4501: $30 $df

    ld a, b                                       ; $4503: $78
    di                                            ; $4504: $f3
    ld a, $d4                                     ; $4505: $3e $d4
    ld a, a                                       ; $4507: $7f
    call $d9fe                                    ; $4508: $cd $fe $d9
    xor $f7                                       ; $450b: $ee $f7
    ld a, [hl]                                    ; $450d: $7e
    call nz, $ff3b                                ; $450e: $c4 $3b $ff
    ld h, b                                       ; $4511: $60
    rst $28                                       ; $4512: $ef
    jr nc, jr_001_44e4                            ; $4513: $30 $cf

    ld [hl], b                                    ; $4515: $70

jr_001_4516:
    rst $18                                       ; $4516: $df
    jr nz, @+$01                                  ; $4517: $20 $ff

    nop                                           ; $4519: $00
    rst $38                                       ; $451a: $ff
    nop                                           ; $451b: $00
    rst $38                                       ; $451c: $ff
    nop                                           ; $451d: $00

jr_001_451e:
    rst $38                                       ; $451e: $ff
    nop                                           ; $451f: $00

jr_001_4520:
    rst $38                                       ; $4520: $ff
    jr jr_001_4516                                ; $4521: $18 $f3

    inc a                                         ; $4523: $3c
    rst $30                                       ; $4524: $f7
    jr c, jr_001_451e                             ; $4525: $38 $f7

    jr c, jr_001_4520                             ; $4527: $38 $f7

    jr c, @-$07                                   ; $4529: $38 $f7

    jr c, @+$01                                   ; $452b: $38 $ff

    jr @-$0b                                      ; $452d: $18 $f3

    inc c                                         ; $452f: $0c

jr_001_4530:
    rst $38                                       ; $4530: $ff
    jr nc, @+$01                                  ; $4531: $30 $ff

    jr jr_001_4530                                ; $4533: $18 $fb

    inc e                                         ; $4535: $1c
    ei                                            ; $4536: $fb
    inc e                                         ; $4537: $1c
    ei                                            ; $4538: $fb
    inc e                                         ; $4539: $1c
    ei                                            ; $453a: $fb
    inc e                                         ; $453b: $1c
    di                                            ; $453c: $f3
    inc a                                         ; $453d: $3c
    rst $20                                       ; $453e: $e7
    jr @+$01                                      ; $453f: $18 $ff

    nop                                           ; $4541: $00
    rst $38                                       ; $4542: $ff
    ld h, [hl]                                    ; $4543: $66
    db $fc                                        ; $4544: $fc
    ccf                                           ; $4545: $3f
    ld sp, hl                                     ; $4546: $f9
    ld e, $ff                                     ; $4547: $1e $ff
    inc a                                         ; $4549: $3c
    rst $20                                       ; $454a: $e7
    ld a, [hl]                                    ; $454b: $7e
    call z, $ff33                                 ; $454c: $cc $33 $ff
    nop                                           ; $454f: $00

jr_001_4550:
    rst $38                                       ; $4550: $ff
    nop                                           ; $4551: $00
    rst $38                                       ; $4552: $ff
    jr jr_001_4550                                ; $4553: $18 $fb

    inc e                                         ; $4555: $1c
    rst $38                                       ; $4556: $ff
    ld a, [hl]                                    ; $4557: $7e
    ret c                                         ; $4558: $d8

    ccf                                           ; $4559: $3f
    ei                                            ; $455a: $fb
    inc e                                         ; $455b: $1c
    di                                            ; $455c: $f3
    inc c                                         ; $455d: $0c

jr_001_455e:
    rst $38                                       ; $455e: $ff
    nop                                           ; $455f: $00
    rst $38                                       ; $4560: $ff
    nop                                           ; $4561: $00

jr_001_4562:
    rst $38                                       ; $4562: $ff
    nop                                           ; $4563: $00
    rst $38                                       ; $4564: $ff
    nop                                           ; $4565: $00
    rst $38                                       ; $4566: $ff
    nop                                           ; $4567: $00
    rst $38                                       ; $4568: $ff
    jr nc, jr_001_4562                            ; $4569: $30 $f7

    jr @-$17                                      ; $456b: $18 $e7

    jr c, jr_001_455e                             ; $456d: $38 $ef

    db $10                                        ; $456f: $10
    rst $38                                       ; $4570: $ff
    nop                                           ; $4571: $00
    rst $38                                       ; $4572: $ff
    nop                                           ; $4573: $00

jr_001_4574:
    rst $38                                       ; $4574: $ff
    nop                                           ; $4575: $00
    rst $38                                       ; $4576: $ff
    ld a, [hl]                                    ; $4577: $7e
    ret nz                                        ; $4578: $c0

    ccf                                           ; $4579: $3f
    rst $38                                       ; $457a: $ff
    nop                                           ; $457b: $00
    rst $38                                       ; $457c: $ff
    nop                                           ; $457d: $00
    rst $38                                       ; $457e: $ff
    nop                                           ; $457f: $00
    rst $38                                       ; $4580: $ff
    nop                                           ; $4581: $00
    rst $38                                       ; $4582: $ff
    nop                                           ; $4583: $00
    rst $38                                       ; $4584: $ff
    nop                                           ; $4585: $00
    rst $38                                       ; $4586: $ff
    nop                                           ; $4587: $00
    rst $38                                       ; $4588: $ff
    nop                                           ; $4589: $00

jr_001_458a:
    rst $38                                       ; $458a: $ff
    jr nc, jr_001_4574                            ; $458b: $30 $e7

    jr @+$01                                      ; $458d: $18 $ff

    nop                                           ; $458f: $00
    db $fd                                        ; $4590: $fd
    ld b, $f9                                     ; $4591: $06 $f9
    ld c, $fb                                     ; $4593: $0e $fb
    inc c                                         ; $4595: $0c
    di                                            ; $4596: $f3
    inc e                                         ; $4597: $1c
    rst $20                                       ; $4598: $e7
    jr c, jr_001_458a                             ; $4599: $38 $ef

    jr nc, @-$2f                                  ; $459b: $30 $cf

    ld [hl], b                                    ; $459d: $70
    rst $18                                       ; $459e: $df
    jr nz, @+$01                                  ; $459f: $20 $ff

    ld a, h                                       ; $45a1: $7c
    rst $00                                       ; $45a2: $c7
    cp $de                                        ; $45a3: $fe $de
    rst $20                                       ; $45a5: $e7
    sbc $e7                                       ; $45a6: $de $e7
    sbc $e7                                       ; $45a8: $de $e7
    sbc $e7                                       ; $45aa: $de $e7
    db $fd                                        ; $45ac: $fd
    ld a, [hl]                                    ; $45ad: $7e

jr_001_45ae:
    jp $ff3c                                      ; $45ae: $c3 $3c $ff


    jr jr_001_45ae                                ; $45b1: $18 $fb

    inc a                                         ; $45b3: $3c
    ei                                            ; $45b4: $fb
    inc e                                         ; $45b5: $1c
    ei                                            ; $45b6: $fb
    inc e                                         ; $45b7: $1c
    ei                                            ; $45b8: $fb
    inc e                                         ; $45b9: $1c
    ei                                            ; $45ba: $fb
    inc e                                         ; $45bb: $1c
    ei                                            ; $45bc: $fb
    inc e                                         ; $45bd: $1c
    di                                            ; $45be: $f3
    inc c                                         ; $45bf: $0c
    rst $38                                       ; $45c0: $ff
    ld a, h                                       ; $45c1: $7c
    rst $08                                       ; $45c2: $cf
    cp $9c                                        ; $45c3: $fe $9c
    ld l, a                                       ; $45c5: $6f
    ld sp, hl                                     ; $45c6: $f9
    ld a, $e3                                     ; $45c7: $3e $e3
    ld a, h                                       ; $45c9: $7c
    rst $08                                       ; $45ca: $cf
    ldh a, [rIE]                                  ; $45cb: $f0 $ff
    cp $80                                        ; $45cd: $fe $80
    ld a, a                                       ; $45cf: $7f
    rst $38                                       ; $45d0: $ff
    ld a, h                                       ; $45d1: $7c
    rst $00                                       ; $45d2: $c7
    cp $9e                                        ; $45d3: $fe $9e
    ld h, a                                       ; $45d5: $67
    db $fc                                        ; $45d6: $fc
    rra                                           ; $45d7: $1f
    rst $30                                       ; $45d8: $f7
    ld c, $fe                                     ; $45d9: $0e $fe
    rst $00                                       ; $45db: $c7
    db $fc                                        ; $45dc: $fc
    ld a, a                                       ; $45dd: $7f
    pop bc                                        ; $45de: $c1
    ld a, $ff                                     ; $45df: $3e $ff
    inc e                                         ; $45e1: $1c
    db $fd                                        ; $45e2: $fd
    ld a, $ed                                     ; $45e3: $3e $ed
    ld a, [hl]                                    ; $45e5: $7e
    db $dd                                        ; $45e6: $dd
    xor $ff                                       ; $45e7: $ee $ff
    cp $8c                                        ; $45e9: $fe $8c
    ld a, a                                       ; $45eb: $7f
    db $fd                                        ; $45ec: $fd
    ld c, $f9                                     ; $45ed: $0e $f9
    ld b, $ff                                     ; $45ef: $06 $ff
    cp $c0                                        ; $45f1: $fe $c0
    rst $38                                       ; $45f3: $ff
    rst $38                                       ; $45f4: $ff
    db $fc                                        ; $45f5: $fc
    add a                                         ; $45f6: $87
    ld a, [hl]                                    ; $45f7: $7e
    rst $38                                       ; $45f8: $ff
    ld b, $fe                                     ; $45f9: $06 $fe
    rst $00                                       ; $45fb: $c7
    db $fc                                        ; $45fc: $fc
    ld a, a                                       ; $45fd: $7f
    pop bc                                        ; $45fe: $c1
    ld a, $ff                                     ; $45ff: $3e $ff
    ld a, h                                       ; $4601: $7c
    pop bc                                        ; $4602: $c1
    cp $df                                        ; $4603: $fe $df
    ldh [rIE], a                                  ; $4605: $e0 $ff
    db $fc                                        ; $4607: $fc
    rst $00                                       ; $4608: $c7
    cp $de                                        ; $4609: $fe $de
    rst $20                                       ; $460b: $e7
    db $fc                                        ; $460c: $fc
    ld a, a                                       ; $460d: $7f
    pop bc                                        ; $460e: $c1
    ld a, $ff                                     ; $460f: $3e $ff
    cp $c6                                        ; $4611: $fe $c6
    rst $38                                       ; $4613: $ff

jr_001_4614:
    sbc h                                         ; $4614: $9c
    ld l, a                                       ; $4615: $6f
    ld sp, hl                                     ; $4616: $f9
    ld e, $f3                                     ; $4617: $1e $f3
    inc a                                         ; $4619: $3c
    rst $30                                       ; $461a: $f7
    jr c, jr_001_4614                             ; $461b: $38 $f7

    jr c, @-$17                                   ; $461d: $38 $e7

    jr @+$01                                      ; $461f: $18 $ff

    ld a, h                                       ; $4621: $7c
    rst $00                                       ; $4622: $c7
    cp $de                                        ; $4623: $fe $de
    rst $20                                       ; $4625: $e7
    db $fc                                        ; $4626: $fc
    ld a, a                                       ; $4627: $7f
    rst $00                                       ; $4628: $c7
    cp $de                                        ; $4629: $fe $de
    rst $20                                       ; $462b: $e7
    db $fc                                        ; $462c: $fc
    ld a, a                                       ; $462d: $7f
    pop bc                                        ; $462e: $c1
    ld a, $ff                                     ; $462f: $3e $ff
    ld a, h                                       ; $4631: $7c
    rst $00                                       ; $4632: $c7
    cp $de                                        ; $4633: $fe $de
    rst $20                                       ; $4635: $e7
    cp $7f                                        ; $4636: $fe $7f

jr_001_4638:
    add $3f                                       ; $4638: $c6 $3f
    cp $c7                                        ; $463a: $fe $c7
    db $fc                                        ; $463c: $fc
    ld a, a                                       ; $463d: $7f
    pop bc                                        ; $463e: $c1
    ld a, $ff                                     ; $463f: $3e $ff
    nop                                           ; $4641: $00
    rst $38                                       ; $4642: $ff
    jr jr_001_4638                                ; $4643: $18 $f3

    inc c                                         ; $4645: $0c
    rst $38                                       ; $4646: $ff
    nop                                           ; $4647: $00

jr_001_4648:
    rst $38                                       ; $4648: $ff
    nop                                           ; $4649: $00
    rst $38                                       ; $464a: $ff
    jr @-$0b                                      ; $464b: $18 $f3

    inc c                                         ; $464d: $0c
    rst $38                                       ; $464e: $ff
    nop                                           ; $464f: $00
    rst $38                                       ; $4650: $ff
    nop                                           ; $4651: $00
    rst $38                                       ; $4652: $ff
    jr jr_001_4648                                ; $4653: $18 $f3

    inc c                                         ; $4655: $0c

jr_001_4656:
    rst $38                                       ; $4656: $ff
    nop                                           ; $4657: $00
    rst $38                                       ; $4658: $ff
    jr jr_001_4656                                ; $4659: $18 $fb

    inc c                                         ; $465b: $0c
    ei                                            ; $465c: $fb
    inc d                                         ; $465d: $14
    rst $30                                       ; $465e: $f7
    ld [$0cff], sp                                ; $465f: $08 $ff $0c
    ld sp, hl                                     ; $4662: $f9
    ld e, $f3                                     ; $4663: $1e $f3
    inc a                                         ; $4665: $3c
    rst $30                                       ; $4666: $f7
    jr c, @+$01                                   ; $4667: $38 $ff

    jr @+$01                                      ; $4669: $18 $ff

    inc c                                         ; $466b: $0c
    ld sp, hl                                     ; $466c: $f9
    ld b, $ff                                     ; $466d: $06 $ff
    nop                                           ; $466f: $00
    rst $38                                       ; $4670: $ff
    nop                                           ; $4671: $00
    rst $38                                       ; $4672: $ff
    ld a, h                                       ; $4673: $7c
    pop bc                                        ; $4674: $c1
    ld a, $ff                                     ; $4675: $3e $ff
    nop                                           ; $4677: $00
    rst $38                                       ; $4678: $ff
    ld a, h                                       ; $4679: $7c
    pop bc                                        ; $467a: $c1
    ld a, $ff                                     ; $467b: $3e $ff
    nop                                           ; $467d: $00
    rst $38                                       ; $467e: $ff
    nop                                           ; $467f: $00
    rst $38                                       ; $4680: $ff
    jr nc, @+$01                                  ; $4681: $30 $ff

    jr @+$01                                      ; $4683: $18 $ff

    inc c                                         ; $4685: $0c
    db $fd                                        ; $4686: $fd
    ld c, $f9                                     ; $4687: $0e $f9
    ld e, $f3                                     ; $4689: $1e $f3
    inc a                                         ; $468b: $3c
    rst $20                                       ; $468c: $e7
    jr @+$01                                      ; $468d: $18 $ff

    nop                                           ; $468f: $00
    rst $38                                       ; $4690: $ff
    inc a                                         ; $4691: $3c

jr_001_4692:
    rst $20                                       ; $4692: $e7
    ld a, [hl]                                    ; $4693: $7e
    xor $77                                       ; $4694: $ee $77
    call z, $f93f                                 ; $4696: $cc $3f $f9
    ld e, $f3                                     ; $4699: $1e $f3
    inc c                                         ; $469b: $0c
    rst $38                                       ; $469c: $ff
    jr jr_001_4692                                ; $469d: $18 $f3

    inc c                                         ; $469f: $0c
    rst $38                                       ; $46a0: $ff
    inc a                                         ; $46a1: $3c
    db $e3                                        ; $46a2: $e3
    ld e, [hl]                                    ; $46a3: $5e
    rst $18                                       ; $46a4: $df
    cp c                                          ; $46a5: $b9
    or e                                          ; $46a6: $b3
    db $ed                                        ; $46a7: $ed
    xor a                                         ; $46a8: $af
    push af                                       ; $46a9: $f5
    cp l                                          ; $46aa: $bd
    db $db                                        ; $46ab: $db
    di                                            ; $46ac: $f3
    ld c, [hl]                                    ; $46ad: $4e
    cp $3d                                        ; $46ae: $fe $3d
    rst $38                                       ; $46b0: $ff
    ld a, h                                       ; $46b1: $7c
    rst $00                                       ; $46b2: $c7
    cp $de                                        ; $46b3: $fe $de
    rst $20                                       ; $46b5: $e7
    sbc $e7                                       ; $46b6: $de $e7
    cp $ff                                        ; $46b8: $fe $ff
    add $ff                                       ; $46ba: $c6 $ff
    sbc $e7                                       ; $46bc: $de $e7
    sbc h                                         ; $46be: $9c
    ld h, e                                       ; $46bf: $63
    rst $38                                       ; $46c0: $ff
    db $fc                                        ; $46c1: $fc
    rst $00                                       ; $46c2: $c7
    cp $de                                        ; $46c3: $fe $de
    rst $20                                       ; $46c5: $e7
    db $fc                                        ; $46c6: $fc
    rst $38                                       ; $46c7: $ff
    rst $00                                       ; $46c8: $c7
    cp $de                                        ; $46c9: $fe $de
    rst $20                                       ; $46cb: $e7
    db $fc                                        ; $46cc: $fc
    rst $38                                       ; $46cd: $ff
    add c                                         ; $46ce: $81
    ld a, [hl]                                    ; $46cf: $7e
    rst $38                                       ; $46d0: $ff
    ld a, h                                       ; $46d1: $7c
    rst $00                                       ; $46d2: $c7
    cp $dc                                        ; $46d3: $fe $dc
    db $e3                                        ; $46d5: $e3
    rst $18                                       ; $46d6: $df
    ldh [$df], a                                  ; $46d7: $e0 $df
    ldh [$df], a                                  ; $46d9: $e0 $df
    and $fc                                       ; $46db: $e6 $fc
    ld a, a                                       ; $46dd: $7f
    pop bc                                        ; $46de: $c1
    ld a, $ff                                     ; $46df: $3e $ff
    ld hl, sp-$31                                 ; $46e1: $f8 $cf
    db $fc                                        ; $46e3: $fc
    rst $18                                       ; $46e4: $df
    and $de                                       ; $46e5: $e6 $de
    rst $20                                       ; $46e7: $e7
    sbc $e7                                       ; $46e8: $de $e7
    call c, $f9ef                                 ; $46ea: $dc $ef $f9
    cp $83                                        ; $46ed: $fe $83
    ld a, h                                       ; $46ef: $7c
    rst $38                                       ; $46f0: $ff
    cp $c0                                        ; $46f1: $fe $c0
    rst $38                                       ; $46f3: $ff
    rst $18                                       ; $46f4: $df
    ldh [rIE], a                                  ; $46f5: $e0 $ff
    db $fc                                        ; $46f7: $fc
    pop bc                                        ; $46f8: $c1
    cp $df                                        ; $46f9: $fe $df
    ldh [rIE], a                                  ; $46fb: $e0 $ff
    cp $80                                        ; $46fd: $fe $80
    ld a, a                                       ; $46ff: $7f
    rst $38                                       ; $4700: $ff
    cp $c0                                        ; $4701: $fe $c0
    rst $38                                       ; $4703: $ff
    rst $18                                       ; $4704: $df
    ldh [rIE], a                                  ; $4705: $e0 $ff
    db $fc                                        ; $4707: $fc
    pop bc                                        ; $4708: $c1
    cp $df                                        ; $4709: $fe $df
    ldh [$df], a                                  ; $470b: $e0 $df
    ldh [$9f], a                                  ; $470d: $e0 $9f
    ld h, b                                       ; $470f: $60
    rst $38                                       ; $4710: $ff
    ld a, [hl]                                    ; $4711: $7e
    ret nz                                        ; $4712: $c0

    rst $38                                       ; $4713: $ff
    rst $18                                       ; $4714: $df
    ldh [$df], a                                  ; $4715: $e0 $df
    xor $d6                                       ; $4717: $ee $d6
    rst $28                                       ; $4719: $ef
    sbc $e7                                       ; $471a: $de $e7
    db $fc                                        ; $471c: $fc
    ld a, a                                       ; $471d: $7f
    pop bc                                        ; $471e: $c1
    ld a, $ff                                     ; $471f: $3e $ff
    add $de                                       ; $4721: $c6 $de
    rst $20                                       ; $4723: $e7
    sbc $e7                                       ; $4724: $de $e7
    cp $ff                                        ; $4726: $fe $ff
    add $ff                                       ; $4728: $c6 $ff
    sbc $e7                                       ; $472a: $de $e7
    sbc $e7                                       ; $472c: $de $e7

jr_001_472e:
    sbc h                                         ; $472e: $9c
    ld h, e                                       ; $472f: $63

jr_001_4730:
    rst $38                                       ; $4730: $ff
    ld a, b                                       ; $4731: $78

jr_001_4732:
    di                                            ; $4732: $f3
    inc a                                         ; $4733: $3c
    rst $30                                       ; $4734: $f7
    jr c, jr_001_472e                             ; $4735: $38 $f7

    jr c, jr_001_4730                             ; $4737: $38 $f7

    jr c, jr_001_4732                             ; $4739: $38 $f7

    jr c, @+$01                                   ; $473b: $38 $ff

    ld a, b                                       ; $473d: $78
    jp $ff3c                                      ; $473e: $c3 $3c $ff


    ld a, [hl]                                    ; $4741: $7e
    call z, $fd3f                                 ; $4742: $cc $3f $fd
    ld c, $fd                                     ; $4745: $0e $fd
    ld c, $fd                                     ; $4747: $0e $fd
    ld c, $fd                                     ; $4749: $0e $fd
    ld c, [hl]                                    ; $474b: $4e
    ld sp, hl                                     ; $474c: $f9
    ld a, $e3                                     ; $474d: $3e $e3
    inc e                                         ; $474f: $1c
    rst $38                                       ; $4750: $ff
    add $dc                                       ; $4751: $c6 $dc
    rst $38                                       ; $4753: $ff
    pop af                                        ; $4754: $f1
    cp $e7                                        ; $4755: $fe $e7
    ld hl, sp-$01                                 ; $4757: $f8 $ff
    ldh a, [$df]                                  ; $4759: $f0 $df
    db $fc                                        ; $475b: $fc
    rst $10                                       ; $475c: $d7
    xor $9c                                       ; $475d: $ee $9c
    ld h, e                                       ; $475f: $63
    rst $38                                       ; $4760: $ff
    ret nz                                        ; $4761: $c0

    rst $18                                       ; $4762: $df
    ldh [$df], a                                  ; $4763: $e0 $df
    ldh [$df], a                                  ; $4765: $e0 $df
    ldh [$df], a                                  ; $4767: $e0 $df
    ldh [$df], a                                  ; $4769: $e0 $df
    ldh [rIE], a                                  ; $476b: $e0 $ff
    cp $80                                        ; $476d: $fe $80
    ld a, a                                       ; $476f: $7f
    rst $38                                       ; $4770: $ff
    add $fe                                       ; $4771: $c6 $fe
    rst $28                                       ; $4773: $ef
    xor $ff                                       ; $4774: $ee $ff
    sub $ff                                       ; $4776: $d6 $ff
    sub $ff                                       ; $4778: $d6 $ff
    sub $ef                                       ; $477a: $d6 $ef
    sbc $e7                                       ; $477c: $de $e7
    sbc h                                         ; $477e: $9c
    ld h, e                                       ; $477f: $63
    rst $38                                       ; $4780: $ff
    add $fe                                       ; $4781: $c6 $fe
    rst $20                                       ; $4783: $e7
    cp $f7                                        ; $4784: $fe $f7
    sbc $ff                                       ; $4786: $de $ff
    sbc $ef                                       ; $4788: $de $ef
    sbc $e7                                       ; $478a: $de $e7
    sbc $e7                                       ; $478c: $de $e7
    sbc h                                         ; $478e: $9c
    ld h, e                                       ; $478f: $63
    rst $38                                       ; $4790: $ff
    ld a, h                                       ; $4791: $7c
    rst $00                                       ; $4792: $c7
    cp $de                                        ; $4793: $fe $de
    rst $20                                       ; $4795: $e7
    sbc $e7                                       ; $4796: $de $e7
    sbc $e7                                       ; $4798: $de $e7
    sbc $e7                                       ; $479a: $de $e7
    db $fc                                        ; $479c: $fc
    ld a, a                                       ; $479d: $7f
    pop bc                                        ; $479e: $c1
    ld a, $ff                                     ; $479f: $3e $ff
    db $fc                                        ; $47a1: $fc
    rst $00                                       ; $47a2: $c7
    cp $de                                        ; $47a3: $fe $de
    rst $20                                       ; $47a5: $e7
    sbc $e7                                       ; $47a6: $de $e7
    db $fc                                        ; $47a8: $fc
    rst $38                                       ; $47a9: $ff
    pop bc                                        ; $47aa: $c1
    cp $df                                        ; $47ab: $fe $df
    ldh [$9f], a                                  ; $47ad: $e0 $9f
    ld h, b                                       ; $47af: $60
    rst $38                                       ; $47b0: $ff
    ld a, h                                       ; $47b1: $7c
    rst $00                                       ; $47b2: $c7
    cp $de                                        ; $47b3: $fe $de
    rst $20                                       ; $47b5: $e7
    sbc $e7                                       ; $47b6: $de $e7
    sbc $e7                                       ; $47b8: $de $e7
    call c, $f3ff                                 ; $47ba: $dc $ff $f3
    ld a, [hl]                                    ; $47bd: $7e
    call nz, $ff3b                                ; $47be: $c4 $3b $ff
    db $fc                                        ; $47c1: $fc
    rst $00                                       ; $47c2: $c7
    cp $de                                        ; $47c3: $fe $de
    rst $20                                       ; $47c5: $e7
    db $fc                                        ; $47c6: $fc
    rst $38                                       ; $47c7: $ff
    rst $00                                       ; $47c8: $c7
    cp $de                                        ; $47c9: $fe $de
    rst $20                                       ; $47cb: $e7
    sbc $e7                                       ; $47cc: $de $e7
    sbc h                                         ; $47ce: $9c
    ld h, e                                       ; $47cf: $63
    rst $38                                       ; $47d0: $ff
    ld a, h                                       ; $47d1: $7c
    rst $00                                       ; $47d2: $c7
    cp $d8                                        ; $47d3: $fe $d8
    rst $20                                       ; $47d5: $e7

jr_001_47d6:
    rst $38                                       ; $47d6: $ff
    ld a, h                                       ; $47d7: $7c
    rst $00                                       ; $47d8: $c7
    ld a, $fe                                     ; $47d9: $3e $fe
    rst $00                                       ; $47db: $c7
    db $fc                                        ; $47dc: $fc
    ld a, a                                       ; $47dd: $7f

jr_001_47de:
    pop bc                                        ; $47de: $c1
    ld a, $ff                                     ; $47df: $3e $ff
    db $fc                                        ; $47e1: $fc

jr_001_47e2:
    or c                                          ; $47e2: $b1
    ld a, [hl]                                    ; $47e3: $7e

jr_001_47e4:
    rst $30                                       ; $47e4: $f7
    jr c, jr_001_47de                             ; $47e5: $38 $f7

    jr c, @-$07                                   ; $47e7: $38 $f7

    jr c, jr_001_47e2                             ; $47e9: $38 $f7

    jr c, jr_001_47e4                             ; $47eb: $38 $f7

    jr c, jr_001_47d6                             ; $47ed: $38 $e7

    jr @+$01                                      ; $47ef: $18 $ff

    add $de                                       ; $47f1: $c6 $de
    rst $20                                       ; $47f3: $e7
    sbc $e7                                       ; $47f4: $de $e7
    sbc $e7                                       ; $47f6: $de $e7
    sbc $e7                                       ; $47f8: $de $e7
    sbc $e7                                       ; $47fa: $de $e7
    db $fc                                        ; $47fc: $fc
    ld a, a                                       ; $47fd: $7f
    pop bc                                        ; $47fe: $c1
    ld a, $ff                                     ; $47ff: $3e $ff
    add $de                                       ; $4801: $c6 $de
    rst $20                                       ; $4803: $e7
    cp $ef                                        ; $4804: $fe $ef
    db $ec                                        ; $4806: $ec
    ld a, a                                       ; $4807: $7f
    db $ed                                        ; $4808: $ed
    ld a, [hl]                                    ; $4809: $7e
    ld sp, hl                                     ; $480a: $f9
    ld a, $fb                                     ; $480b: $3e $fb
    inc a                                         ; $480d: $3c
    db $e3                                        ; $480e: $e3
    inc e                                         ; $480f: $1c
    rst $38                                       ; $4810: $ff
    add $de                                       ; $4811: $c6 $de
    rst $30                                       ; $4813: $f7
    sub $ff                                       ; $4814: $d6 $ff
    sub $ff                                       ; $4816: $d6 $ff
    sub $ff                                       ; $4818: $d6 $ff
    db $fc                                        ; $481a: $fc
    ld a, a                                       ; $481b: $7f
    db $ed                                        ; $481c: $ed
    ld a, [hl]                                    ; $481d: $7e
    ret                                           ; $481e: $c9


    ld [hl], $ff                                  ; $481f: $36 $ff
    add $fe                                       ; $4821: $c6 $fe
    rst $28                                       ; $4823: $ef
    db $fc                                        ; $4824: $fc
    ld a, a                                       ; $4825: $7f
    ld sp, hl                                     ; $4826: $f9
    ld a, $ff                                     ; $4827: $3e $ff
    ld a, h                                       ; $4829: $7c
    rst $28                                       ; $482a: $ef
    cp $ce                                        ; $482b: $fe $ce
    rst $30                                       ; $482d: $f7
    sbc h                                         ; $482e: $9c
    ld h, e                                       ; $482f: $63
    rst $38                                       ; $4830: $ff
    ld h, [hl]                                    ; $4831: $66
    xor $77                                       ; $4832: $ee $77
    db $fc                                        ; $4834: $fc
    ccf                                           ; $4835: $3f
    db $fd                                        ; $4836: $fd
    ld a, $f9                                     ; $4837: $3e $f9
    ld e, $fb                                     ; $4839: $1e $fb
    inc e                                         ; $483b: $1c
    ei                                            ; $483c: $fb
    inc e                                         ; $483d: $1c
    di                                            ; $483e: $f3
    inc c                                         ; $483f: $0c
    rst $38                                       ; $4840: $ff
    cp $86                                        ; $4841: $fe $86
    ld a, a                                       ; $4843: $7f
    db $fc                                        ; $4844: $fc
    rrca                                          ; $4845: $0f
    ld sp, hl                                     ; $4846: $f9
    ld a, $e3                                     ; $4847: $3e $e3
    ld a, h                                       ; $4849: $7c
    rst $08                                       ; $484a: $cf
    ldh a, [rIE]                                  ; $484b: $f0 $ff
    cp $80                                        ; $484d: $fe $80
    ld a, a                                       ; $484f: $7f
    rst $38                                       ; $4850: $ff
    inc e                                         ; $4851: $1c
    ld sp, hl                                     ; $4852: $f9
    ld e, $fb                                     ; $4853: $1e $fb
    inc e                                         ; $4855: $1c
    ei                                            ; $4856: $fb
    inc e                                         ; $4857: $1c
    ei                                            ; $4858: $fb
    inc e                                         ; $4859: $1c
    ei                                            ; $485a: $fb
    inc e                                         ; $485b: $1c
    rst $38                                       ; $485c: $ff
    inc e                                         ; $485d: $1c
    pop af                                        ; $485e: $f1
    ld c, $ff                                     ; $485f: $0e $ff
    ld b, h                                       ; $4861: $44
    jp hl                                         ; $4862: $e9


    ld a, $ff                                     ; $4863: $3e $ff
    ld a, h                                       ; $4865: $7c

jr_001_4866:
    pop de                                        ; $4866: $d1
    ld a, $ff                                     ; $4867: $3e $ff
    ld a, h                                       ; $4869: $7c
    pop de                                        ; $486a: $d1
    ld a, $f7                                     ; $486b: $3e $f7
    jr jr_001_4866                                ; $486d: $18 $f7

    ld [$70ff], sp                                ; $486f: $08 $ff $70

jr_001_4872:
    rst $30                                       ; $4872: $f7
    jr c, @-$07                                   ; $4873: $38 $f7

    jr c, @-$07                                   ; $4875: $38 $f7

    jr c, @-$07                                   ; $4877: $38 $f7

    jr c, jr_001_4872                             ; $4879: $38 $f7

    jr c, @-$07                                   ; $487b: $38 $f7

    ld a, b                                       ; $487d: $78
    rst $00                                       ; $487e: $c7
    jr c, @+$01                                   ; $487f: $38 $ff

    jr @+$01                                      ; $4881: $18 $ff

    inc a                                         ; $4883: $3c
    rst $20                                       ; $4884: $e7
    ld a, [hl]                                    ; $4885: $7e
    call z, $ff33                                 ; $4886: $cc $33 $ff
    nop                                           ; $4889: $00
    rst $38                                       ; $488a: $ff
    nop                                           ; $488b: $00
    rst $38                                       ; $488c: $ff
    nop                                           ; $488d: $00
    rst $38                                       ; $488e: $ff
    nop                                           ; $488f: $00
    rst $38                                       ; $4890: $ff
    nop                                           ; $4891: $00
    rst $38                                       ; $4892: $ff
    nop                                           ; $4893: $00
    rst $38                                       ; $4894: $ff
    nop                                           ; $4895: $00
    rst $38                                       ; $4896: $ff
    nop                                           ; $4897: $00
    rst $38                                       ; $4898: $ff
    nop                                           ; $4899: $00
    rst $38                                       ; $489a: $ff
    nop                                           ; $489b: $00
    rst $38                                       ; $489c: $ff
    db $fc                                        ; $489d: $fc

jr_001_489e:
    add c                                         ; $489e: $81
    ld a, [hl]                                    ; $489f: $7e
    rst $38                                       ; $48a0: $ff
    jr jr_001_489e                                ; $48a1: $18 $fb

    inc e                                         ; $48a3: $1c
    rst $38                                       ; $48a4: $ff
    ld a, [hl]                                    ; $48a5: $7e
    ret c                                         ; $48a6: $d8

    ccf                                           ; $48a7: $3f
    ei                                            ; $48a8: $fb
    inc e                                         ; $48a9: $1c
    di                                            ; $48aa: $f3
    inc c                                         ; $48ab: $0c
    rst $38                                       ; $48ac: $ff
    ld a, [hl]                                    ; $48ad: $7e
    ret nz                                        ; $48ae: $c0

    ccf                                           ; $48af: $3f
    rst $38                                       ; $48b0: $ff
    nop                                           ; $48b1: $00
    rst $38                                       ; $48b2: $ff
    ld a, h                                       ; $48b3: $7c
    add $3f                                       ; $48b4: $c6 $3f
    cp $7f                                        ; $48b6: $fe $7f
    and $ff                                       ; $48b8: $e6 $ff
    xor $f7                                       ; $48ba: $ee $f7
    cp $7f                                        ; $48bc: $fe $7f
    pop bc                                        ; $48be: $c1
    ld a, $ff                                     ; $48bf: $3e $ff
    ret nz                                        ; $48c1: $c0

    rst $18                                       ; $48c2: $df
    ldh [rIE], a                                  ; $48c3: $e0 $ff
    db $fc                                        ; $48c5: $fc
    rst $00                                       ; $48c6: $c7
    cp $df                                        ; $48c7: $fe $df
    and $de                                       ; $48c9: $e6 $de
    rst $20                                       ; $48cb: $e7
    db $fc                                        ; $48cc: $fc
    rst $38                                       ; $48cd: $ff
    add c                                         ; $48ce: $81
    ld a, [hl]                                    ; $48cf: $7e
    rst $38                                       ; $48d0: $ff
    nop                                           ; $48d1: $00
    rst $38                                       ; $48d2: $ff
    nop                                           ; $48d3: $00
    rst $38                                       ; $48d4: $ff
    ld a, h                                       ; $48d5: $7c
    rst $38                                       ; $48d6: $ff
    add $df                                       ; $48d7: $c6 $df
    ldh [$df], a                                  ; $48d9: $e0 $df
    and $fc                                       ; $48db: $e6 $fc
    ld a, a                                       ; $48dd: $7f
    pop bc                                        ; $48de: $c1
    ld a, $ff                                     ; $48df: $3e $ff
    ld b, $f7                                     ; $48e1: $06 $f7
    ld c, $ff                                     ; $48e3: $0e $ff
    ld a, [hl]                                    ; $48e5: $7e
    rst $00                                       ; $48e6: $c7
    cp $f7                                        ; $48e7: $fe $f7
    adc $f7                                       ; $48e9: $ce $f7
    adc $7f                                       ; $48eb: $ce $7f
    cp $03                                        ; $48ed: $fe $03
    db $fc                                        ; $48ef: $fc
    rst $38                                       ; $48f0: $ff
    nop                                           ; $48f1: $00
    rst $38                                       ; $48f2: $ff
    nop                                           ; $48f3: $00
    rst $38                                       ; $48f4: $ff
    ld a, h                                       ; $48f5: $7c

jr_001_48f6:
    rst $00                                       ; $48f6: $c7
    cp $fd                                        ; $48f7: $fe $fd
    cp $df                                        ; $48f9: $fe $df
    ldh [rIE], a                                  ; $48fb: $e0 $ff
    ld a, [hl]                                    ; $48fd: $7e
    add b                                         ; $48fe: $80
    ld a, a                                       ; $48ff: $7f
    rst $38                                       ; $4900: $ff
    ld e, $f0                                     ; $4901: $1e $f0
    ccf                                           ; $4903: $3f

jr_001_4904:
    rst $30                                       ; $4904: $f7
    jr c, @+$01                                   ; $4905: $38 $ff

    db $fc                                        ; $4907: $fc
    or c                                          ; $4908: $b1
    ld a, [hl]                                    ; $4909: $7e
    rst $30                                       ; $490a: $f7
    jr c, jr_001_4904                             ; $490b: $38 $f7

    jr c, jr_001_48f6                             ; $490d: $38 $e7

    jr @+$01                                      ; $490f: $18 $ff

    ld [$38ff], sp                                ; $4911: $08 $ff $38
    rst $00                                       ; $4914: $c7
    ld a, h                                       ; $4915: $7c

jr_001_4916:
    rst $38                                       ; $4916: $ff
    ld a, h                                       ; $4917: $7c
    rst $08                                       ; $4918: $cf
    jr c, jr_001_4916                             ; $4919: $38 $fb

    ld a, h                                       ; $491b: $7c

jr_001_491c:
    push bc                                       ; $491c: $c5
    ld a, [hl]                                    ; $491d: $7e
    db $fd                                        ; $491e: $fd
    ld a, $ff                                     ; $491f: $3e $ff
    ret nz                                        ; $4921: $c0

    rst $18                                       ; $4922: $df
    ldh [$df], a                                  ; $4923: $e0 $df
    ldh [rIE], a                                  ; $4925: $e0 $ff
    db $fc                                        ; $4927: $fc
    rst $00                                       ; $4928: $c7
    cp $de                                        ; $4929: $fe $de
    rst $20                                       ; $492b: $e7
    sbc $e7                                       ; $492c: $de $e7
    sbc h                                         ; $492e: $9c
    ld h, e                                       ; $492f: $63
    rst $38                                       ; $4930: $ff
    jr nc, @-$07                                  ; $4931: $30 $f7

    jr c, jr_001_491c                             ; $4933: $38 $e7

    jr @+$01                                      ; $4935: $18 $ff

    ld a, b                                       ; $4937: $78
    di                                            ; $4938: $f3
    inc a                                         ; $4939: $3c
    rst $30                                       ; $493a: $f7
    jr c, @+$01                                   ; $493b: $38 $ff

    ld a, b                                       ; $493d: $78

jr_001_493e:
    jp $ff3c                                      ; $493e: $c3 $3c $ff


    jr jr_001_493e                                ; $4941: $18 $fb

    inc e                                         ; $4943: $1c
    di                                            ; $4944: $f3
    inc c                                         ; $4945: $0c
    rst $38                                       ; $4946: $ff
    inc a                                         ; $4947: $3c
    ld sp, hl                                     ; $4948: $f9
    ld e, $fb                                     ; $4949: $1e $fb
    inc e                                         ; $494b: $1c
    ei                                            ; $494c: $fb
    sbc h                                         ; $494d: $9c
    di                                            ; $494e: $f3
    ld a, h                                       ; $494f: $7c
    rst $38                                       ; $4950: $ff
    ret nz                                        ; $4951: $c0

    rst $18                                       ; $4952: $df
    ldh [$df], a                                  ; $4953: $e0 $df
    and $dc                                       ; $4955: $e6 $dc
    rst $38                                       ; $4957: $ff
    pop af                                        ; $4958: $f1
    cp $df                                        ; $4959: $fe $df
    db $fc                                        ; $495b: $fc
    rst $10                                       ; $495c: $d7
    xor $9c                                       ; $495d: $ee $9c
    ld h, e                                       ; $495f: $63
    rst $38                                       ; $4960: $ff
    ld h, b                                       ; $4961: $60
    rst $28                                       ; $4962: $ef
    ld [hl], b                                    ; $4963: $70
    rst $28                                       ; $4964: $ef
    ld [hl], b                                    ; $4965: $70
    rst $28                                       ; $4966: $ef
    ld [hl], b                                    ; $4967: $70
    rst $28                                       ; $4968: $ef
    ld [hl], b                                    ; $4969: $70
    rst $28                                       ; $496a: $ef
    ld [hl], b                                    ; $496b: $70
    rst $28                                       ; $496c: $ef
    ld [hl], b                                    ; $496d: $70
    rst $08                                       ; $496e: $cf
    jr nc, @+$01                                  ; $496f: $30 $ff

    nop                                           ; $4971: $00
    rst $38                                       ; $4972: $ff
    nop                                           ; $4973: $00
    rst $38                                       ; $4974: $ff
    call nc, $feff                                ; $4975: $d4 $ff $fe
    cp $ff                                        ; $4978: $fe $ff
    sub $ff                                       ; $497a: $d6 $ff
    sub $ff                                       ; $497c: $d6 $ff
    sub h                                         ; $497e: $94
    ld l, e                                       ; $497f: $6b
    rst $38                                       ; $4980: $ff
    nop                                           ; $4981: $00
    rst $38                                       ; $4982: $ff
    nop                                           ; $4983: $00
    rst $38                                       ; $4984: $ff
    call c, $fffe                                 ; $4985: $dc $fe $ff
    and $ff                                       ; $4988: $e6 $ff
    adc $f7                                       ; $498a: $ce $f7
    sbc $e7                                       ; $498c: $de $e7
    sbc h                                         ; $498e: $9c
    ld h, e                                       ; $498f: $63
    rst $38                                       ; $4990: $ff
    nop                                           ; $4991: $00
    rst $38                                       ; $4992: $ff
    nop                                           ; $4993: $00
    rst $38                                       ; $4994: $ff
    ld a, h                                       ; $4995: $7c
    rst $00                                       ; $4996: $c7
    cp $de                                        ; $4997: $fe $de
    rst $20                                       ; $4999: $e7
    sbc $e7                                       ; $499a: $de $e7
    db $fc                                        ; $499c: $fc
    ld a, a                                       ; $499d: $7f
    pop bc                                        ; $499e: $c1
    ld a, $ff                                     ; $499f: $3e $ff
    nop                                           ; $49a1: $00
    rst $38                                       ; $49a2: $ff
    nop                                           ; $49a3: $00
    rst $38                                       ; $49a4: $ff
    db $fc                                        ; $49a5: $fc
    rst $00                                       ; $49a6: $c7
    cp $de                                        ; $49a7: $fe $de
    rst $20                                       ; $49a9: $e7
    sbc $e7                                       ; $49aa: $de $e7
    db $fc                                        ; $49ac: $fc
    rst $38                                       ; $49ad: $ff
    pop bc                                        ; $49ae: $c1
    cp $ff                                        ; $49af: $fe $ff
    nop                                           ; $49b1: $00
    rst $38                                       ; $49b2: $ff
    nop                                           ; $49b3: $00
    rst $38                                       ; $49b4: $ff
    ld a, [hl]                                    ; $49b5: $7e
    add $ff                                       ; $49b6: $c6 $ff
    sbc $e7                                       ; $49b8: $de $e7
    sbc $e7                                       ; $49ba: $de $e7
    cp $7f                                        ; $49bc: $fe $7f
    add $3f                                       ; $49be: $c6 $3f
    rst $38                                       ; $49c0: $ff
    nop                                           ; $49c1: $00
    rst $38                                       ; $49c2: $ff
    nop                                           ; $49c3: $00
    rst $38                                       ; $49c4: $ff
    call c, $fef1                                 ; $49c5: $dc $f1 $fe
    rst $20                                       ; $49c8: $e7
    ld hl, sp-$31                                 ; $49c9: $f8 $cf
    ldh a, [$df]                                  ; $49cb: $f0 $df
    ldh [$9f], a                                  ; $49cd: $e0 $9f
    ld h, b                                       ; $49cf: $60
    rst $38                                       ; $49d0: $ff
    nop                                           ; $49d1: $00
    rst $38                                       ; $49d2: $ff
    nop                                           ; $49d3: $00
    rst $38                                       ; $49d4: $ff
    ld a, [hl]                                    ; $49d5: $7e
    ret nz                                        ; $49d6: $c0

    rst $38                                       ; $49d7: $ff
    rst $38                                       ; $49d8: $ff
    cp $86                                        ; $49d9: $fe $86
    ld a, a                                       ; $49db: $7f
    db $fc                                        ; $49dc: $fc
    rst $38                                       ; $49dd: $ff
    add c                                         ; $49de: $81
    ld a, [hl]                                    ; $49df: $7e
    rst $38                                       ; $49e0: $ff
    jr nc, @-$07                                  ; $49e1: $30 $f7

    jr c, @+$01                                   ; $49e3: $38 $ff

    db $fc                                        ; $49e5: $fc
    pop af                                        ; $49e6: $f1
    ld a, $f7                                     ; $49e7: $3e $f7
    jr c, @-$07                                   ; $49e9: $38 $f7

    jr c, @+$01                                   ; $49eb: $38 $ff

    inc a                                         ; $49ed: $3c
    pop hl                                        ; $49ee: $e1
    ld e, $ff                                     ; $49ef: $1e $ff
    nop                                           ; $49f1: $00
    rst $38                                       ; $49f2: $ff
    nop                                           ; $49f3: $00
    rst $38                                       ; $49f4: $ff
    add $de                                       ; $49f5: $c6 $de
    rst $20                                       ; $49f7: $e7
    sbc $e7                                       ; $49f8: $de $e7
    sbc $e7                                       ; $49fa: $de $e7
    db $fc                                        ; $49fc: $fc
    ld a, a                                       ; $49fd: $7f
    pop bc                                        ; $49fe: $c1
    ld a, $ff                                     ; $49ff: $3e $ff
    nop                                           ; $4a01: $00
    rst $38                                       ; $4a02: $ff
    nop                                           ; $4a03: $00
    rst $38                                       ; $4a04: $ff
    add $fe                                       ; $4a05: $c6 $fe
    rst $28                                       ; $4a07: $ef
    db $ec                                        ; $4a08: $ec
    ld a, a                                       ; $4a09: $7f
    ld sp, hl                                     ; $4a0a: $f9
    ld a, $fb                                     ; $4a0b: $3e $fb
    inc a                                         ; $4a0d: $3c
    db $e3                                        ; $4a0e: $e3
    inc e                                         ; $4a0f: $1c
    rst $38                                       ; $4a10: $ff
    nop                                           ; $4a11: $00
    rst $38                                       ; $4a12: $ff
    nop                                           ; $4a13: $00
    rst $38                                       ; $4a14: $ff
    sub $d6                                       ; $4a15: $d6 $d6
    rst $38                                       ; $4a17: $ff
    sub $ff                                       ; $4a18: $d6 $ff
    db $fc                                        ; $4a1a: $fc
    ld a, a                                       ; $4a1b: $7f
    db $ed                                        ; $4a1c: $ed
    ld a, [hl]                                    ; $4a1d: $7e
    ret                                           ; $4a1e: $c9


    ld [hl], $ff                                  ; $4a1f: $36 $ff
    nop                                           ; $4a21: $00
    rst $38                                       ; $4a22: $ff
    nop                                           ; $4a23: $00
    rst $38                                       ; $4a24: $ff
    add $fe                                       ; $4a25: $c6 $fe
    rst $38                                       ; $4a27: $ff
    cp b                                          ; $4a28: $b8
    ld a, a                                       ; $4a29: $7f
    rst $38                                       ; $4a2a: $ff
    cp $c6                                        ; $4a2b: $fe $c6
    rst $38                                       ; $4a2d: $ff
    sbc h                                         ; $4a2e: $9c
    ld h, e                                       ; $4a2f: $63
    rst $38                                       ; $4a30: $ff
    nop                                           ; $4a31: $00
    rst $38                                       ; $4a32: $ff
    nop                                           ; $4a33: $00
    cp $c7                                        ; $4a34: $fe $c7
    sbc $e7                                       ; $4a36: $de $e7
    sbc $e7                                       ; $4a38: $de $e7
    cp $7f                                        ; $4a3a: $fe $7f
    add $3f                                       ; $4a3c: $c6 $3f
    db $fc                                        ; $4a3e: $fc
    ld a, a                                       ; $4a3f: $7f
    rst $38                                       ; $4a40: $ff
    nop                                           ; $4a41: $00
    rst $38                                       ; $4a42: $ff
    nop                                           ; $4a43: $00
    rst $38                                       ; $4a44: $ff
    cp $8e                                        ; $4a45: $fe $8e
    ld a, a                                       ; $4a47: $7f
    db $fc                                        ; $4a48: $fc
    ld a, a                                       ; $4a49: $7f
    pop hl                                        ; $4a4a: $e1
    cp $ff                                        ; $4a4b: $fe $ff
    cp $80                                        ; $4a4d: $fe $80
    ld a, a                                       ; $4a4f: $7f
    rst $38                                       ; $4a50: $ff
    nop                                           ; $4a51: $00
    rst $38                                       ; $4a52: $ff
    nop                                           ; $4a53: $00
    rst $38                                       ; $4a54: $ff
    nop                                           ; $4a55: $00
    rst $38                                       ; $4a56: $ff
    nop                                           ; $4a57: $00
    rst $38                                       ; $4a58: $ff
    nop                                           ; $4a59: $00
    rst $38                                       ; $4a5a: $ff
    nop                                           ; $4a5b: $00
    rst $38                                       ; $4a5c: $ff
    nop                                           ; $4a5d: $00
    rst $38                                       ; $4a5e: $ff
    nop                                           ; $4a5f: $00
    nop                                           ; $4a60: $00
    nop                                           ; $4a61: $00
    nop                                           ; $4a62: $00
    nop                                           ; $4a63: $00
    nop                                           ; $4a64: $00
    nop                                           ; $4a65: $00
    nop                                           ; $4a66: $00
    nop                                           ; $4a67: $00
    nop                                           ; $4a68: $00
    nop                                           ; $4a69: $00
    nop                                           ; $4a6a: $00
    nop                                           ; $4a6b: $00
    nop                                           ; $4a6c: $00
    nop                                           ; $4a6d: $00
    nop                                           ; $4a6e: $00
    nop                                           ; $4a6f: $00
    rst $38                                       ; $4a70: $ff
    nop                                           ; $4a71: $00
    rst $38                                       ; $4a72: $ff
    nop                                           ; $4a73: $00
    rst $38                                       ; $4a74: $ff
    nop                                           ; $4a75: $00
    rst $38                                       ; $4a76: $ff
    nop                                           ; $4a77: $00
    rst $38                                       ; $4a78: $ff
    nop                                           ; $4a79: $00
    rst $38                                       ; $4a7a: $ff
    nop                                           ; $4a7b: $00
    rst $38                                       ; $4a7c: $ff
    nop                                           ; $4a7d: $00
    rst $38                                       ; $4a7e: $ff
    nop                                           ; $4a7f: $00
    nop                                           ; $4a80: $00
    rst $38                                       ; $4a81: $ff
    nop                                           ; $4a82: $00
    rst $38                                       ; $4a83: $ff
    nop                                           ; $4a84: $00
    rst $38                                       ; $4a85: $ff
    nop                                           ; $4a86: $00
    rst $38                                       ; $4a87: $ff
    nop                                           ; $4a88: $00
    rst $38                                       ; $4a89: $ff
    nop                                           ; $4a8a: $00
    rst $38                                       ; $4a8b: $ff
    nop                                           ; $4a8c: $00
    rst $38                                       ; $4a8d: $ff
    nop                                           ; $4a8e: $00
    rst $38                                       ; $4a8f: $ff
    rst $38                                       ; $4a90: $ff
    rst $38                                       ; $4a91: $ff
    rst $38                                       ; $4a92: $ff
    rst $38                                       ; $4a93: $ff
    rst $38                                       ; $4a94: $ff
    rst $38                                       ; $4a95: $ff
    rst $38                                       ; $4a96: $ff
    rst $38                                       ; $4a97: $ff
    rst $38                                       ; $4a98: $ff
    rst $38                                       ; $4a99: $ff
    rst $38                                       ; $4a9a: $ff
    rst $38                                       ; $4a9b: $ff
    rst $38                                       ; $4a9c: $ff
    rst $38                                       ; $4a9d: $ff
    rst $38                                       ; $4a9e: $ff
    rst $38                                       ; $4a9f: $ff
    rst $38                                       ; $4aa0: $ff
    nop                                           ; $4aa1: $00
    rst $38                                       ; $4aa2: $ff
    nop                                           ; $4aa3: $00
    rst $38                                       ; $4aa4: $ff
    nop                                           ; $4aa5: $00
    rst $38                                       ; $4aa6: $ff
    nop                                           ; $4aa7: $00
    rst $38                                       ; $4aa8: $ff
    nop                                           ; $4aa9: $00
    rst $38                                       ; $4aaa: $ff
    nop                                           ; $4aab: $00
    rst $38                                       ; $4aac: $ff
    nop                                           ; $4aad: $00
    rst $38                                       ; $4aae: $ff
    nop                                           ; $4aaf: $00
    rst $38                                       ; $4ab0: $ff
    nop                                           ; $4ab1: $00
    rst $38                                       ; $4ab2: $ff
    nop                                           ; $4ab3: $00
    rst $38                                       ; $4ab4: $ff
    nop                                           ; $4ab5: $00
    rst $38                                       ; $4ab6: $ff
    nop                                           ; $4ab7: $00
    rst $38                                       ; $4ab8: $ff
    nop                                           ; $4ab9: $00
    rst $38                                       ; $4aba: $ff
    nop                                           ; $4abb: $00
    rst $38                                       ; $4abc: $ff
    nop                                           ; $4abd: $00
    rst $38                                       ; $4abe: $ff
    nop                                           ; $4abf: $00
    rst $38                                       ; $4ac0: $ff
    nop                                           ; $4ac1: $00
    rst $38                                       ; $4ac2: $ff
    nop                                           ; $4ac3: $00
    rst $38                                       ; $4ac4: $ff
    nop                                           ; $4ac5: $00
    rst $38                                       ; $4ac6: $ff
    nop                                           ; $4ac7: $00
    rst $38                                       ; $4ac8: $ff
    nop                                           ; $4ac9: $00
    rst $38                                       ; $4aca: $ff
    nop                                           ; $4acb: $00
    rst $38                                       ; $4acc: $ff
    nop                                           ; $4acd: $00
    rst $38                                       ; $4ace: $ff
    nop                                           ; $4acf: $00
    rst $38                                       ; $4ad0: $ff
    nop                                           ; $4ad1: $00
    rst $38                                       ; $4ad2: $ff
    nop                                           ; $4ad3: $00
    rst $38                                       ; $4ad4: $ff
    nop                                           ; $4ad5: $00
    rst $38                                       ; $4ad6: $ff
    nop                                           ; $4ad7: $00
    rst $38                                       ; $4ad8: $ff
    nop                                           ; $4ad9: $00
    rst $38                                       ; $4ada: $ff
    nop                                           ; $4adb: $00
    rst $38                                       ; $4adc: $ff
    nop                                           ; $4add: $00
    rst $38                                       ; $4ade: $ff
    nop                                           ; $4adf: $00
    rst $38                                       ; $4ae0: $ff
    nop                                           ; $4ae1: $00
    rst $38                                       ; $4ae2: $ff
    nop                                           ; $4ae3: $00
    rst $38                                       ; $4ae4: $ff
    nop                                           ; $4ae5: $00
    rst $38                                       ; $4ae6: $ff
    nop                                           ; $4ae7: $00
    rst $38                                       ; $4ae8: $ff
    nop                                           ; $4ae9: $00
    rst $38                                       ; $4aea: $ff
    nop                                           ; $4aeb: $00
    rst $38                                       ; $4aec: $ff
    nop                                           ; $4aed: $00
    rst $38                                       ; $4aee: $ff
    nop                                           ; $4aef: $00
    rst $38                                       ; $4af0: $ff
    nop                                           ; $4af1: $00
    rst $38                                       ; $4af2: $ff
    nop                                           ; $4af3: $00
    rst $38                                       ; $4af4: $ff
    nop                                           ; $4af5: $00
    rst $38                                       ; $4af6: $ff
    nop                                           ; $4af7: $00
    rst $38                                       ; $4af8: $ff
    nop                                           ; $4af9: $00
    rst $38                                       ; $4afa: $ff
    nop                                           ; $4afb: $00
    rst $38                                       ; $4afc: $ff
    nop                                           ; $4afd: $00
    rst $38                                       ; $4afe: $ff
    nop                                           ; $4aff: $00
    rst $38                                       ; $4b00: $ff
    nop                                           ; $4b01: $00
    rst $38                                       ; $4b02: $ff
    nop                                           ; $4b03: $00
    rst $38                                       ; $4b04: $ff
    nop                                           ; $4b05: $00
    rst $38                                       ; $4b06: $ff
    nop                                           ; $4b07: $00
    rst $38                                       ; $4b08: $ff
    nop                                           ; $4b09: $00
    rst $38                                       ; $4b0a: $ff
    nop                                           ; $4b0b: $00
    rst $38                                       ; $4b0c: $ff
    nop                                           ; $4b0d: $00
    rst $38                                       ; $4b0e: $ff
    nop                                           ; $4b0f: $00
    rst $38                                       ; $4b10: $ff
    nop                                           ; $4b11: $00
    rst $38                                       ; $4b12: $ff
    nop                                           ; $4b13: $00
    rst $38                                       ; $4b14: $ff
    nop                                           ; $4b15: $00
    rst $38                                       ; $4b16: $ff
    nop                                           ; $4b17: $00
    rst $38                                       ; $4b18: $ff
    nop                                           ; $4b19: $00
    rst $38                                       ; $4b1a: $ff
    nop                                           ; $4b1b: $00
    rst $38                                       ; $4b1c: $ff
    nop                                           ; $4b1d: $00
    rst $38                                       ; $4b1e: $ff
    nop                                           ; $4b1f: $00
    rst $38                                       ; $4b20: $ff
    nop                                           ; $4b21: $00
    rst $38                                       ; $4b22: $ff
    nop                                           ; $4b23: $00
    rst $38                                       ; $4b24: $ff
    nop                                           ; $4b25: $00
    rst $38                                       ; $4b26: $ff
    nop                                           ; $4b27: $00
    rst $38                                       ; $4b28: $ff
    nop                                           ; $4b29: $00
    rst $38                                       ; $4b2a: $ff
    nop                                           ; $4b2b: $00
    rst $38                                       ; $4b2c: $ff
    nop                                           ; $4b2d: $00
    rst $38                                       ; $4b2e: $ff
    nop                                           ; $4b2f: $00
    rst $38                                       ; $4b30: $ff
    nop                                           ; $4b31: $00
    rst $38                                       ; $4b32: $ff
    nop                                           ; $4b33: $00
    rst $38                                       ; $4b34: $ff
    nop                                           ; $4b35: $00
    rst $38                                       ; $4b36: $ff
    nop                                           ; $4b37: $00
    rst $38                                       ; $4b38: $ff
    nop                                           ; $4b39: $00
    rst $38                                       ; $4b3a: $ff
    nop                                           ; $4b3b: $00
    rst $38                                       ; $4b3c: $ff
    nop                                           ; $4b3d: $00
    rst $38                                       ; $4b3e: $ff
    nop                                           ; $4b3f: $00
    rst $38                                       ; $4b40: $ff
    nop                                           ; $4b41: $00
    rst $38                                       ; $4b42: $ff
    nop                                           ; $4b43: $00
    rst $38                                       ; $4b44: $ff
    nop                                           ; $4b45: $00
    rst $38                                       ; $4b46: $ff
    nop                                           ; $4b47: $00
    rst $38                                       ; $4b48: $ff
    nop                                           ; $4b49: $00
    rst $38                                       ; $4b4a: $ff
    nop                                           ; $4b4b: $00
    rst $38                                       ; $4b4c: $ff
    nop                                           ; $4b4d: $00
    rst $38                                       ; $4b4e: $ff
    nop                                           ; $4b4f: $00
    rst $38                                       ; $4b50: $ff
    nop                                           ; $4b51: $00
    rst $38                                       ; $4b52: $ff
    nop                                           ; $4b53: $00
    rst $38                                       ; $4b54: $ff
    nop                                           ; $4b55: $00
    rst $38                                       ; $4b56: $ff
    nop                                           ; $4b57: $00
    rst $38                                       ; $4b58: $ff
    nop                                           ; $4b59: $00
    rst $38                                       ; $4b5a: $ff
    nop                                           ; $4b5b: $00
    rst $38                                       ; $4b5c: $ff
    nop                                           ; $4b5d: $00
    rst $38                                       ; $4b5e: $ff
    nop                                           ; $4b5f: $00
    rst $38                                       ; $4b60: $ff
    nop                                           ; $4b61: $00
    rst $38                                       ; $4b62: $ff
    nop                                           ; $4b63: $00
    rst $38                                       ; $4b64: $ff
    nop                                           ; $4b65: $00
    rst $38                                       ; $4b66: $ff
    nop                                           ; $4b67: $00
    rst $38                                       ; $4b68: $ff
    nop                                           ; $4b69: $00
    rst $38                                       ; $4b6a: $ff
    nop                                           ; $4b6b: $00
    rst $38                                       ; $4b6c: $ff
    nop                                           ; $4b6d: $00
    rst $38                                       ; $4b6e: $ff
    nop                                           ; $4b6f: $00
    rst $38                                       ; $4b70: $ff
    nop                                           ; $4b71: $00
    rst $38                                       ; $4b72: $ff
    nop                                           ; $4b73: $00
    rst $38                                       ; $4b74: $ff
    nop                                           ; $4b75: $00
    rst $38                                       ; $4b76: $ff
    nop                                           ; $4b77: $00
    rst $38                                       ; $4b78: $ff
    nop                                           ; $4b79: $00
    rst $38                                       ; $4b7a: $ff
    nop                                           ; $4b7b: $00
    rst $38                                       ; $4b7c: $ff
    nop                                           ; $4b7d: $00
    rst $38                                       ; $4b7e: $ff
    nop                                           ; $4b7f: $00
    rst $38                                       ; $4b80: $ff
    nop                                           ; $4b81: $00
    rst $38                                       ; $4b82: $ff
    nop                                           ; $4b83: $00
    rst $38                                       ; $4b84: $ff
    nop                                           ; $4b85: $00
    rst $38                                       ; $4b86: $ff
    nop                                           ; $4b87: $00
    rst $38                                       ; $4b88: $ff
    nop                                           ; $4b89: $00
    rst $38                                       ; $4b8a: $ff
    nop                                           ; $4b8b: $00
    rst $38                                       ; $4b8c: $ff
    nop                                           ; $4b8d: $00
    rst $38                                       ; $4b8e: $ff
    nop                                           ; $4b8f: $00
    rst $38                                       ; $4b90: $ff
    nop                                           ; $4b91: $00
    rst $38                                       ; $4b92: $ff
    nop                                           ; $4b93: $00
    rst $38                                       ; $4b94: $ff
    nop                                           ; $4b95: $00
    rst $38                                       ; $4b96: $ff
    nop                                           ; $4b97: $00
    rst $38                                       ; $4b98: $ff
    nop                                           ; $4b99: $00
    rst $38                                       ; $4b9a: $ff
    nop                                           ; $4b9b: $00
    rst $38                                       ; $4b9c: $ff
    nop                                           ; $4b9d: $00
    rst $38                                       ; $4b9e: $ff
    nop                                           ; $4b9f: $00
    rst $38                                       ; $4ba0: $ff
    nop                                           ; $4ba1: $00
    rst $38                                       ; $4ba2: $ff
    nop                                           ; $4ba3: $00
    rst $38                                       ; $4ba4: $ff
    nop                                           ; $4ba5: $00
    rst $38                                       ; $4ba6: $ff
    nop                                           ; $4ba7: $00
    rst $38                                       ; $4ba8: $ff
    nop                                           ; $4ba9: $00
    rst $38                                       ; $4baa: $ff
    nop                                           ; $4bab: $00
    rst $38                                       ; $4bac: $ff
    nop                                           ; $4bad: $00
    rst $38                                       ; $4bae: $ff
    nop                                           ; $4baf: $00
    rst $38                                       ; $4bb0: $ff
    nop                                           ; $4bb1: $00
    rst $38                                       ; $4bb2: $ff
    nop                                           ; $4bb3: $00
    rst $38                                       ; $4bb4: $ff
    nop                                           ; $4bb5: $00
    rst $38                                       ; $4bb6: $ff
    nop                                           ; $4bb7: $00
    rst $38                                       ; $4bb8: $ff
    nop                                           ; $4bb9: $00
    rst $38                                       ; $4bba: $ff
    nop                                           ; $4bbb: $00
    rst $38                                       ; $4bbc: $ff
    nop                                           ; $4bbd: $00
    rst $38                                       ; $4bbe: $ff
    nop                                           ; $4bbf: $00
    rst $38                                       ; $4bc0: $ff
    nop                                           ; $4bc1: $00
    rst $38                                       ; $4bc2: $ff
    nop                                           ; $4bc3: $00
    rst $38                                       ; $4bc4: $ff
    nop                                           ; $4bc5: $00
    rst $38                                       ; $4bc6: $ff
    nop                                           ; $4bc7: $00
    rst $38                                       ; $4bc8: $ff
    nop                                           ; $4bc9: $00
    rst $38                                       ; $4bca: $ff
    nop                                           ; $4bcb: $00
    rst $38                                       ; $4bcc: $ff
    nop                                           ; $4bcd: $00
    rst $38                                       ; $4bce: $ff
    nop                                           ; $4bcf: $00
    rst $38                                       ; $4bd0: $ff
    nop                                           ; $4bd1: $00
    rst $38                                       ; $4bd2: $ff
    nop                                           ; $4bd3: $00
    rst $38                                       ; $4bd4: $ff
    nop                                           ; $4bd5: $00
    rst $38                                       ; $4bd6: $ff
    nop                                           ; $4bd7: $00
    rst $38                                       ; $4bd8: $ff
    nop                                           ; $4bd9: $00
    rst $38                                       ; $4bda: $ff
    nop                                           ; $4bdb: $00
    rst $38                                       ; $4bdc: $ff
    nop                                           ; $4bdd: $00
    rst $38                                       ; $4bde: $ff
    nop                                           ; $4bdf: $00
    rst $38                                       ; $4be0: $ff
    nop                                           ; $4be1: $00
    rst $38                                       ; $4be2: $ff
    nop                                           ; $4be3: $00
    rst $38                                       ; $4be4: $ff
    nop                                           ; $4be5: $00
    rst $38                                       ; $4be6: $ff
    nop                                           ; $4be7: $00
    rst $38                                       ; $4be8: $ff
    nop                                           ; $4be9: $00
    rst $38                                       ; $4bea: $ff
    nop                                           ; $4beb: $00
    rst $38                                       ; $4bec: $ff
    nop                                           ; $4bed: $00
    rst $38                                       ; $4bee: $ff
    nop                                           ; $4bef: $00
    rst $38                                       ; $4bf0: $ff
    nop                                           ; $4bf1: $00
    rst $38                                       ; $4bf2: $ff
    nop                                           ; $4bf3: $00
    rst $38                                       ; $4bf4: $ff
    nop                                           ; $4bf5: $00
    rst $38                                       ; $4bf6: $ff
    nop                                           ; $4bf7: $00
    rst $38                                       ; $4bf8: $ff
    nop                                           ; $4bf9: $00
    rst $38                                       ; $4bfa: $ff
    nop                                           ; $4bfb: $00
    rst $38                                       ; $4bfc: $ff
    nop                                           ; $4bfd: $00
    rst $38                                       ; $4bfe: $ff
    nop                                           ; $4bff: $00
    rst $38                                       ; $4c00: $ff
    nop                                           ; $4c01: $00
    rst $38                                       ; $4c02: $ff
    nop                                           ; $4c03: $00
    rst $38                                       ; $4c04: $ff
    nop                                           ; $4c05: $00
    rst $38                                       ; $4c06: $ff
    nop                                           ; $4c07: $00
    rst $38                                       ; $4c08: $ff
    nop                                           ; $4c09: $00
    rst $38                                       ; $4c0a: $ff
    nop                                           ; $4c0b: $00
    rst $38                                       ; $4c0c: $ff
    nop                                           ; $4c0d: $00
    rst $38                                       ; $4c0e: $ff
    nop                                           ; $4c0f: $00
    rst $38                                       ; $4c10: $ff
    nop                                           ; $4c11: $00
    rst $38                                       ; $4c12: $ff
    nop                                           ; $4c13: $00
    rst $38                                       ; $4c14: $ff
    nop                                           ; $4c15: $00
    rst $38                                       ; $4c16: $ff
    nop                                           ; $4c17: $00
    rst $38                                       ; $4c18: $ff
    nop                                           ; $4c19: $00
    rst $38                                       ; $4c1a: $ff
    nop                                           ; $4c1b: $00
    rst $38                                       ; $4c1c: $ff
    nop                                           ; $4c1d: $00
    rst $38                                       ; $4c1e: $ff
    nop                                           ; $4c1f: $00
    rst $38                                       ; $4c20: $ff
    nop                                           ; $4c21: $00
    rst $38                                       ; $4c22: $ff
    nop                                           ; $4c23: $00
    rst $38                                       ; $4c24: $ff
    nop                                           ; $4c25: $00
    rst $38                                       ; $4c26: $ff
    nop                                           ; $4c27: $00
    rst $38                                       ; $4c28: $ff
    nop                                           ; $4c29: $00
    rst $38                                       ; $4c2a: $ff
    nop                                           ; $4c2b: $00
    rst $38                                       ; $4c2c: $ff
    nop                                           ; $4c2d: $00
    rst $38                                       ; $4c2e: $ff
    nop                                           ; $4c2f: $00
    rst $38                                       ; $4c30: $ff
    nop                                           ; $4c31: $00
    rst $38                                       ; $4c32: $ff
    nop                                           ; $4c33: $00
    rst $38                                       ; $4c34: $ff
    nop                                           ; $4c35: $00
    rst $38                                       ; $4c36: $ff
    nop                                           ; $4c37: $00
    rst $38                                       ; $4c38: $ff
    nop                                           ; $4c39: $00
    rst $38                                       ; $4c3a: $ff
    nop                                           ; $4c3b: $00
    rst $38                                       ; $4c3c: $ff
    nop                                           ; $4c3d: $00
    rst $38                                       ; $4c3e: $ff
    nop                                           ; $4c3f: $00
    rst $38                                       ; $4c40: $ff
    nop                                           ; $4c41: $00
    rst $38                                       ; $4c42: $ff
    nop                                           ; $4c43: $00
    rst $38                                       ; $4c44: $ff
    nop                                           ; $4c45: $00
    rst $38                                       ; $4c46: $ff
    nop                                           ; $4c47: $00
    rst $38                                       ; $4c48: $ff
    nop                                           ; $4c49: $00
    rst $38                                       ; $4c4a: $ff
    nop                                           ; $4c4b: $00
    rst $38                                       ; $4c4c: $ff
    nop                                           ; $4c4d: $00
    rst $38                                       ; $4c4e: $ff
    nop                                           ; $4c4f: $00
    rst $38                                       ; $4c50: $ff
    nop                                           ; $4c51: $00
    rst $38                                       ; $4c52: $ff
    nop                                           ; $4c53: $00
    rst $38                                       ; $4c54: $ff
    nop                                           ; $4c55: $00
    rst $38                                       ; $4c56: $ff
    nop                                           ; $4c57: $00
    rst $38                                       ; $4c58: $ff
    nop                                           ; $4c59: $00
    rst $38                                       ; $4c5a: $ff
    nop                                           ; $4c5b: $00
    rst $38                                       ; $4c5c: $ff
    nop                                           ; $4c5d: $00
    rst $38                                       ; $4c5e: $ff
    nop                                           ; $4c5f: $00
    rst $38                                       ; $4c60: $ff
    nop                                           ; $4c61: $00
    rst $38                                       ; $4c62: $ff
    nop                                           ; $4c63: $00
    rst $38                                       ; $4c64: $ff
    nop                                           ; $4c65: $00
    rst $38                                       ; $4c66: $ff
    nop                                           ; $4c67: $00
    rst $38                                       ; $4c68: $ff
    nop                                           ; $4c69: $00
    rst $38                                       ; $4c6a: $ff
    nop                                           ; $4c6b: $00
    rst $38                                       ; $4c6c: $ff
    nop                                           ; $4c6d: $00
    rst $38                                       ; $4c6e: $ff
    nop                                           ; $4c6f: $00
    rst $38                                       ; $4c70: $ff
    nop                                           ; $4c71: $00
    rst $38                                       ; $4c72: $ff
    nop                                           ; $4c73: $00
    rst $38                                       ; $4c74: $ff
    nop                                           ; $4c75: $00
    rst $38                                       ; $4c76: $ff
    nop                                           ; $4c77: $00
    rst $38                                       ; $4c78: $ff
    nop                                           ; $4c79: $00
    rst $38                                       ; $4c7a: $ff
    nop                                           ; $4c7b: $00
    rst $38                                       ; $4c7c: $ff
    nop                                           ; $4c7d: $00
    rst $38                                       ; $4c7e: $ff
    nop                                           ; $4c7f: $00
    rst $38                                       ; $4c80: $ff
    nop                                           ; $4c81: $00
    rst $38                                       ; $4c82: $ff
    nop                                           ; $4c83: $00
    rst $38                                       ; $4c84: $ff
    nop                                           ; $4c85: $00
    rst $38                                       ; $4c86: $ff
    nop                                           ; $4c87: $00
    rst $38                                       ; $4c88: $ff
    nop                                           ; $4c89: $00
    rst $38                                       ; $4c8a: $ff
    nop                                           ; $4c8b: $00
    rst $38                                       ; $4c8c: $ff
    nop                                           ; $4c8d: $00
    rst $38                                       ; $4c8e: $ff
    nop                                           ; $4c8f: $00
    rst $38                                       ; $4c90: $ff
    nop                                           ; $4c91: $00
    rst $38                                       ; $4c92: $ff
    nop                                           ; $4c93: $00
    rst $38                                       ; $4c94: $ff
    nop                                           ; $4c95: $00
    rst $38                                       ; $4c96: $ff
    nop                                           ; $4c97: $00
    rst $38                                       ; $4c98: $ff
    nop                                           ; $4c99: $00
    rst $38                                       ; $4c9a: $ff
    nop                                           ; $4c9b: $00
    rst $38                                       ; $4c9c: $ff
    nop                                           ; $4c9d: $00
    rst $38                                       ; $4c9e: $ff
    nop                                           ; $4c9f: $00
    rst $38                                       ; $4ca0: $ff
    nop                                           ; $4ca1: $00
    rst $38                                       ; $4ca2: $ff
    nop                                           ; $4ca3: $00
    rst $38                                       ; $4ca4: $ff
    nop                                           ; $4ca5: $00
    rst $38                                       ; $4ca6: $ff
    nop                                           ; $4ca7: $00
    rst $38                                       ; $4ca8: $ff
    nop                                           ; $4ca9: $00
    rst $38                                       ; $4caa: $ff
    nop                                           ; $4cab: $00
    rst $38                                       ; $4cac: $ff
    nop                                           ; $4cad: $00
    rst $38                                       ; $4cae: $ff
    nop                                           ; $4caf: $00
    rst $38                                       ; $4cb0: $ff
    nop                                           ; $4cb1: $00
    rst $38                                       ; $4cb2: $ff
    nop                                           ; $4cb3: $00
    rst $38                                       ; $4cb4: $ff
    nop                                           ; $4cb5: $00
    rst $38                                       ; $4cb6: $ff
    nop                                           ; $4cb7: $00
    rst $38                                       ; $4cb8: $ff
    nop                                           ; $4cb9: $00
    rst $38                                       ; $4cba: $ff
    nop                                           ; $4cbb: $00
    rst $38                                       ; $4cbc: $ff
    nop                                           ; $4cbd: $00
    rst $38                                       ; $4cbe: $ff
    nop                                           ; $4cbf: $00
    rst $38                                       ; $4cc0: $ff
    nop                                           ; $4cc1: $00
    rst $38                                       ; $4cc2: $ff
    nop                                           ; $4cc3: $00
    rst $38                                       ; $4cc4: $ff
    nop                                           ; $4cc5: $00
    rst $38                                       ; $4cc6: $ff
    nop                                           ; $4cc7: $00
    rst $38                                       ; $4cc8: $ff
    nop                                           ; $4cc9: $00
    rst $38                                       ; $4cca: $ff
    nop                                           ; $4ccb: $00
    rst $38                                       ; $4ccc: $ff
    nop                                           ; $4ccd: $00
    rst $38                                       ; $4cce: $ff
    nop                                           ; $4ccf: $00
    rst $38                                       ; $4cd0: $ff
    nop                                           ; $4cd1: $00
    rst $38                                       ; $4cd2: $ff
    nop                                           ; $4cd3: $00
    rst $38                                       ; $4cd4: $ff
    nop                                           ; $4cd5: $00
    rst $38                                       ; $4cd6: $ff
    nop                                           ; $4cd7: $00
    rst $38                                       ; $4cd8: $ff
    nop                                           ; $4cd9: $00
    rst $38                                       ; $4cda: $ff
    nop                                           ; $4cdb: $00
    rst $38                                       ; $4cdc: $ff
    nop                                           ; $4cdd: $00
    rst $38                                       ; $4cde: $ff
    nop                                           ; $4cdf: $00
    rst $38                                       ; $4ce0: $ff
    nop                                           ; $4ce1: $00
    rst $38                                       ; $4ce2: $ff
    nop                                           ; $4ce3: $00
    rst $38                                       ; $4ce4: $ff
    nop                                           ; $4ce5: $00
    rst $38                                       ; $4ce6: $ff
    nop                                           ; $4ce7: $00
    rst $38                                       ; $4ce8: $ff
    nop                                           ; $4ce9: $00
    rst $38                                       ; $4cea: $ff
    nop                                           ; $4ceb: $00
    rst $38                                       ; $4cec: $ff
    nop                                           ; $4ced: $00
    rst $38                                       ; $4cee: $ff
    nop                                           ; $4cef: $00
    rst $38                                       ; $4cf0: $ff
    nop                                           ; $4cf1: $00
    rst $38                                       ; $4cf2: $ff
    nop                                           ; $4cf3: $00
    rst $38                                       ; $4cf4: $ff
    nop                                           ; $4cf5: $00
    rst $38                                       ; $4cf6: $ff
    nop                                           ; $4cf7: $00
    rst $38                                       ; $4cf8: $ff
    nop                                           ; $4cf9: $00
    rst $38                                       ; $4cfa: $ff
    nop                                           ; $4cfb: $00
    rst $38                                       ; $4cfc: $ff
    nop                                           ; $4cfd: $00
    rst $38                                       ; $4cfe: $ff
    nop                                           ; $4cff: $00
    rst $38                                       ; $4d00: $ff
    nop                                           ; $4d01: $00
    rst $38                                       ; $4d02: $ff
    nop                                           ; $4d03: $00
    rst $38                                       ; $4d04: $ff
    nop                                           ; $4d05: $00
    rst $38                                       ; $4d06: $ff
    nop                                           ; $4d07: $00
    rst $38                                       ; $4d08: $ff
    nop                                           ; $4d09: $00
    rst $38                                       ; $4d0a: $ff
    nop                                           ; $4d0b: $00
    rst $38                                       ; $4d0c: $ff
    nop                                           ; $4d0d: $00
    rst $38                                       ; $4d0e: $ff
    nop                                           ; $4d0f: $00
    rst $38                                       ; $4d10: $ff
    nop                                           ; $4d11: $00
    rst $38                                       ; $4d12: $ff
    nop                                           ; $4d13: $00
    rst $38                                       ; $4d14: $ff
    nop                                           ; $4d15: $00
    rst $38                                       ; $4d16: $ff
    nop                                           ; $4d17: $00
    rst $38                                       ; $4d18: $ff
    nop                                           ; $4d19: $00
    rst $38                                       ; $4d1a: $ff
    nop                                           ; $4d1b: $00
    rst $38                                       ; $4d1c: $ff
    nop                                           ; $4d1d: $00
    rst $38                                       ; $4d1e: $ff
    nop                                           ; $4d1f: $00
    rst $38                                       ; $4d20: $ff
    nop                                           ; $4d21: $00
    rst $38                                       ; $4d22: $ff
    nop                                           ; $4d23: $00
    rst $38                                       ; $4d24: $ff
    nop                                           ; $4d25: $00
    rst $38                                       ; $4d26: $ff
    nop                                           ; $4d27: $00
    rst $38                                       ; $4d28: $ff
    nop                                           ; $4d29: $00
    rst $38                                       ; $4d2a: $ff
    nop                                           ; $4d2b: $00
    rst $38                                       ; $4d2c: $ff
    nop                                           ; $4d2d: $00
    rst $38                                       ; $4d2e: $ff
    nop                                           ; $4d2f: $00
    rst $38                                       ; $4d30: $ff
    nop                                           ; $4d31: $00
    rst $38                                       ; $4d32: $ff
    nop                                           ; $4d33: $00
    rst $38                                       ; $4d34: $ff
    nop                                           ; $4d35: $00
    rst $38                                       ; $4d36: $ff
    nop                                           ; $4d37: $00
    rst $38                                       ; $4d38: $ff
    nop                                           ; $4d39: $00
    rst $38                                       ; $4d3a: $ff
    nop                                           ; $4d3b: $00
    rst $38                                       ; $4d3c: $ff
    nop                                           ; $4d3d: $00
    rst $38                                       ; $4d3e: $ff
    nop                                           ; $4d3f: $00
    rst $38                                       ; $4d40: $ff
    nop                                           ; $4d41: $00
    rst $38                                       ; $4d42: $ff
    nop                                           ; $4d43: $00
    rst $38                                       ; $4d44: $ff
    nop                                           ; $4d45: $00
    rst $38                                       ; $4d46: $ff
    nop                                           ; $4d47: $00
    rst $38                                       ; $4d48: $ff
    nop                                           ; $4d49: $00
    rst $38                                       ; $4d4a: $ff
    nop                                           ; $4d4b: $00
    rst $38                                       ; $4d4c: $ff
    nop                                           ; $4d4d: $00
    rst $38                                       ; $4d4e: $ff
    nop                                           ; $4d4f: $00
    rst $38                                       ; $4d50: $ff
    nop                                           ; $4d51: $00
    rst $38                                       ; $4d52: $ff
    nop                                           ; $4d53: $00
    rst $38                                       ; $4d54: $ff
    nop                                           ; $4d55: $00
    rst $38                                       ; $4d56: $ff
    nop                                           ; $4d57: $00
    rst $38                                       ; $4d58: $ff
    nop                                           ; $4d59: $00
    rst $38                                       ; $4d5a: $ff
    nop                                           ; $4d5b: $00
    rst $38                                       ; $4d5c: $ff
    nop                                           ; $4d5d: $00
    rst $38                                       ; $4d5e: $ff
    nop                                           ; $4d5f: $00
    rst $38                                       ; $4d60: $ff
    nop                                           ; $4d61: $00
    rst $38                                       ; $4d62: $ff
    nop                                           ; $4d63: $00
    rst $38                                       ; $4d64: $ff
    nop                                           ; $4d65: $00
    rst $38                                       ; $4d66: $ff
    nop                                           ; $4d67: $00
    rst $38                                       ; $4d68: $ff
    nop                                           ; $4d69: $00
    rst $38                                       ; $4d6a: $ff
    nop                                           ; $4d6b: $00
    rst $38                                       ; $4d6c: $ff
    nop                                           ; $4d6d: $00
    rst $38                                       ; $4d6e: $ff
    nop                                           ; $4d6f: $00
    rst $38                                       ; $4d70: $ff
    nop                                           ; $4d71: $00
    rst $38                                       ; $4d72: $ff
    nop                                           ; $4d73: $00
    rst $38                                       ; $4d74: $ff
    nop                                           ; $4d75: $00
    rst $38                                       ; $4d76: $ff
    nop                                           ; $4d77: $00
    rst $38                                       ; $4d78: $ff
    nop                                           ; $4d79: $00
    rst $38                                       ; $4d7a: $ff
    nop                                           ; $4d7b: $00
    rst $38                                       ; $4d7c: $ff
    nop                                           ; $4d7d: $00
    rst $38                                       ; $4d7e: $ff
    nop                                           ; $4d7f: $00
    rst $38                                       ; $4d80: $ff
    nop                                           ; $4d81: $00
    rst $38                                       ; $4d82: $ff
    nop                                           ; $4d83: $00
    rst $38                                       ; $4d84: $ff
    nop                                           ; $4d85: $00
    rst $38                                       ; $4d86: $ff
    nop                                           ; $4d87: $00
    rst $38                                       ; $4d88: $ff
    nop                                           ; $4d89: $00
    rst $38                                       ; $4d8a: $ff
    nop                                           ; $4d8b: $00
    rst $38                                       ; $4d8c: $ff
    nop                                           ; $4d8d: $00
    rst $38                                       ; $4d8e: $ff
    nop                                           ; $4d8f: $00
    rst $38                                       ; $4d90: $ff
    nop                                           ; $4d91: $00
    rst $38                                       ; $4d92: $ff
    nop                                           ; $4d93: $00
    rst $38                                       ; $4d94: $ff
    nop                                           ; $4d95: $00
    rst $38                                       ; $4d96: $ff
    nop                                           ; $4d97: $00
    rst $38                                       ; $4d98: $ff
    nop                                           ; $4d99: $00
    rst $38                                       ; $4d9a: $ff
    nop                                           ; $4d9b: $00
    rst $38                                       ; $4d9c: $ff
    nop                                           ; $4d9d: $00
    rst $38                                       ; $4d9e: $ff
    nop                                           ; $4d9f: $00
    rst $38                                       ; $4da0: $ff
    nop                                           ; $4da1: $00
    rst $38                                       ; $4da2: $ff
    nop                                           ; $4da3: $00
    rst $38                                       ; $4da4: $ff
    nop                                           ; $4da5: $00
    rst $38                                       ; $4da6: $ff
    nop                                           ; $4da7: $00
    rst $38                                       ; $4da8: $ff
    nop                                           ; $4da9: $00
    rst $38                                       ; $4daa: $ff
    nop                                           ; $4dab: $00
    rst $38                                       ; $4dac: $ff
    nop                                           ; $4dad: $00
    rst $38                                       ; $4dae: $ff
    nop                                           ; $4daf: $00
    rst $38                                       ; $4db0: $ff
    nop                                           ; $4db1: $00
    rst $38                                       ; $4db2: $ff
    nop                                           ; $4db3: $00
    rst $38                                       ; $4db4: $ff
    nop                                           ; $4db5: $00
    rst $38                                       ; $4db6: $ff
    nop                                           ; $4db7: $00
    rst $38                                       ; $4db8: $ff
    nop                                           ; $4db9: $00
    rst $38                                       ; $4dba: $ff
    nop                                           ; $4dbb: $00
    rst $38                                       ; $4dbc: $ff
    nop                                           ; $4dbd: $00
    rst $38                                       ; $4dbe: $ff
    nop                                           ; $4dbf: $00
    rst $38                                       ; $4dc0: $ff
    nop                                           ; $4dc1: $00
    rst $38                                       ; $4dc2: $ff
    nop                                           ; $4dc3: $00
    rst $38                                       ; $4dc4: $ff
    nop                                           ; $4dc5: $00
    rst $38                                       ; $4dc6: $ff
    nop                                           ; $4dc7: $00
    rst $38                                       ; $4dc8: $ff
    nop                                           ; $4dc9: $00
    rst $38                                       ; $4dca: $ff
    nop                                           ; $4dcb: $00
    rst $38                                       ; $4dcc: $ff
    nop                                           ; $4dcd: $00
    rst $38                                       ; $4dce: $ff
    nop                                           ; $4dcf: $00
    rst $38                                       ; $4dd0: $ff
    nop                                           ; $4dd1: $00
    rst $38                                       ; $4dd2: $ff
    nop                                           ; $4dd3: $00
    rst $38                                       ; $4dd4: $ff
    nop                                           ; $4dd5: $00
    rst $38                                       ; $4dd6: $ff
    nop                                           ; $4dd7: $00
    rst $38                                       ; $4dd8: $ff
    nop                                           ; $4dd9: $00
    rst $38                                       ; $4dda: $ff
    nop                                           ; $4ddb: $00
    rst $38                                       ; $4ddc: $ff
    nop                                           ; $4ddd: $00
    rst $38                                       ; $4dde: $ff
    nop                                           ; $4ddf: $00
    rst $38                                       ; $4de0: $ff
    nop                                           ; $4de1: $00
    rst $38                                       ; $4de2: $ff
    nop                                           ; $4de3: $00
    rst $38                                       ; $4de4: $ff
    nop                                           ; $4de5: $00
    rst $38                                       ; $4de6: $ff
    nop                                           ; $4de7: $00
    rst $38                                       ; $4de8: $ff
    nop                                           ; $4de9: $00
    rst $38                                       ; $4dea: $ff
    nop                                           ; $4deb: $00
    rst $38                                       ; $4dec: $ff
    nop                                           ; $4ded: $00
    rst $38                                       ; $4dee: $ff
    nop                                           ; $4def: $00
    rst $38                                       ; $4df0: $ff
    nop                                           ; $4df1: $00
    rst $38                                       ; $4df2: $ff
    nop                                           ; $4df3: $00
    rst $38                                       ; $4df4: $ff
    nop                                           ; $4df5: $00
    rst $38                                       ; $4df6: $ff
    nop                                           ; $4df7: $00
    rst $38                                       ; $4df8: $ff
    nop                                           ; $4df9: $00
    rst $38                                       ; $4dfa: $ff
    nop                                           ; $4dfb: $00
    rst $38                                       ; $4dfc: $ff
    nop                                           ; $4dfd: $00
    rst $38                                       ; $4dfe: $ff
    nop                                           ; $4dff: $00
    rst $38                                       ; $4e00: $ff
    nop                                           ; $4e01: $00
    rst $38                                       ; $4e02: $ff
    nop                                           ; $4e03: $00
    rst $38                                       ; $4e04: $ff
    nop                                           ; $4e05: $00
    rst $38                                       ; $4e06: $ff
    nop                                           ; $4e07: $00
    rst $38                                       ; $4e08: $ff
    nop                                           ; $4e09: $00
    rst $38                                       ; $4e0a: $ff
    nop                                           ; $4e0b: $00
    rst $38                                       ; $4e0c: $ff
    nop                                           ; $4e0d: $00
    rst $38                                       ; $4e0e: $ff
    nop                                           ; $4e0f: $00
    rst $38                                       ; $4e10: $ff
    nop                                           ; $4e11: $00
    rst $38                                       ; $4e12: $ff
    nop                                           ; $4e13: $00
    rst $38                                       ; $4e14: $ff
    nop                                           ; $4e15: $00
    rst $38                                       ; $4e16: $ff
    nop                                           ; $4e17: $00
    rst $38                                       ; $4e18: $ff
    nop                                           ; $4e19: $00
    rst $38                                       ; $4e1a: $ff
    nop                                           ; $4e1b: $00
    rst $38                                       ; $4e1c: $ff
    nop                                           ; $4e1d: $00
    rst $38                                       ; $4e1e: $ff
    nop                                           ; $4e1f: $00
    rst $38                                       ; $4e20: $ff
    nop                                           ; $4e21: $00
    rst $38                                       ; $4e22: $ff
    nop                                           ; $4e23: $00
    rst $38                                       ; $4e24: $ff
    nop                                           ; $4e25: $00
    rst $38                                       ; $4e26: $ff
    nop                                           ; $4e27: $00
    rst $38                                       ; $4e28: $ff
    nop                                           ; $4e29: $00
    rst $38                                       ; $4e2a: $ff
    nop                                           ; $4e2b: $00
    rst $38                                       ; $4e2c: $ff
    nop                                           ; $4e2d: $00
    rst $38                                       ; $4e2e: $ff
    nop                                           ; $4e2f: $00
    rst $38                                       ; $4e30: $ff
    nop                                           ; $4e31: $00
    rst $38                                       ; $4e32: $ff
    nop                                           ; $4e33: $00
    rst $38                                       ; $4e34: $ff
    nop                                           ; $4e35: $00
    rst $38                                       ; $4e36: $ff
    nop                                           ; $4e37: $00
    rst $38                                       ; $4e38: $ff
    nop                                           ; $4e39: $00
    rst $38                                       ; $4e3a: $ff
    nop                                           ; $4e3b: $00
    rst $38                                       ; $4e3c: $ff
    nop                                           ; $4e3d: $00
    rst $38                                       ; $4e3e: $ff
    nop                                           ; $4e3f: $00
    rst $38                                       ; $4e40: $ff
    nop                                           ; $4e41: $00
    rst $38                                       ; $4e42: $ff
    nop                                           ; $4e43: $00
    rst $38                                       ; $4e44: $ff
    nop                                           ; $4e45: $00
    rst $38                                       ; $4e46: $ff
    nop                                           ; $4e47: $00
    rst $38                                       ; $4e48: $ff
    nop                                           ; $4e49: $00
    rst $38                                       ; $4e4a: $ff
    nop                                           ; $4e4b: $00
    rst $38                                       ; $4e4c: $ff
    nop                                           ; $4e4d: $00
    rst $38                                       ; $4e4e: $ff
    nop                                           ; $4e4f: $00
    rst $38                                       ; $4e50: $ff
    nop                                           ; $4e51: $00
    rst $38                                       ; $4e52: $ff
    nop                                           ; $4e53: $00
    rst $38                                       ; $4e54: $ff
    nop                                           ; $4e55: $00
    rst $38                                       ; $4e56: $ff
    nop                                           ; $4e57: $00
    rst $38                                       ; $4e58: $ff
    nop                                           ; $4e59: $00
    rst $38                                       ; $4e5a: $ff
    nop                                           ; $4e5b: $00
    rst $38                                       ; $4e5c: $ff
    nop                                           ; $4e5d: $00
    rst $38                                       ; $4e5e: $ff
    nop                                           ; $4e5f: $00
    rst $38                                       ; $4e60: $ff
    nop                                           ; $4e61: $00
    rst $38                                       ; $4e62: $ff
    nop                                           ; $4e63: $00
    rst $38                                       ; $4e64: $ff
    nop                                           ; $4e65: $00
    rst $38                                       ; $4e66: $ff
    nop                                           ; $4e67: $00
    rst $38                                       ; $4e68: $ff
    nop                                           ; $4e69: $00
    rst $38                                       ; $4e6a: $ff
    nop                                           ; $4e6b: $00
    rst $38                                       ; $4e6c: $ff
    nop                                           ; $4e6d: $00
    rst $38                                       ; $4e6e: $ff
    nop                                           ; $4e6f: $00
    rst $38                                       ; $4e70: $ff
    nop                                           ; $4e71: $00
    rst $38                                       ; $4e72: $ff
    nop                                           ; $4e73: $00
    rst $38                                       ; $4e74: $ff
    nop                                           ; $4e75: $00
    rst $38                                       ; $4e76: $ff
    nop                                           ; $4e77: $00
    rst $38                                       ; $4e78: $ff
    nop                                           ; $4e79: $00
    rst $38                                       ; $4e7a: $ff
    nop                                           ; $4e7b: $00
    rst $38                                       ; $4e7c: $ff
    nop                                           ; $4e7d: $00
    rst $38                                       ; $4e7e: $ff
    nop                                           ; $4e7f: $00
    rst $38                                       ; $4e80: $ff
    nop                                           ; $4e81: $00
    rst $38                                       ; $4e82: $ff
    nop                                           ; $4e83: $00
    rst $38                                       ; $4e84: $ff
    nop                                           ; $4e85: $00
    rst $38                                       ; $4e86: $ff
    nop                                           ; $4e87: $00
    rst $38                                       ; $4e88: $ff
    nop                                           ; $4e89: $00
    rst $38                                       ; $4e8a: $ff
    nop                                           ; $4e8b: $00
    rst $38                                       ; $4e8c: $ff
    nop                                           ; $4e8d: $00
    rst $38                                       ; $4e8e: $ff
    nop                                           ; $4e8f: $00
    rst $38                                       ; $4e90: $ff
    nop                                           ; $4e91: $00
    rst $38                                       ; $4e92: $ff
    nop                                           ; $4e93: $00
    rst $38                                       ; $4e94: $ff
    nop                                           ; $4e95: $00
    rst $38                                       ; $4e96: $ff
    nop                                           ; $4e97: $00
    rst $38                                       ; $4e98: $ff
    nop                                           ; $4e99: $00
    rst $38                                       ; $4e9a: $ff
    nop                                           ; $4e9b: $00
    rst $38                                       ; $4e9c: $ff
    nop                                           ; $4e9d: $00
    rst $38                                       ; $4e9e: $ff
    nop                                           ; $4e9f: $00
    rst $38                                       ; $4ea0: $ff
    nop                                           ; $4ea1: $00
    rst $38                                       ; $4ea2: $ff
    nop                                           ; $4ea3: $00
    rst $38                                       ; $4ea4: $ff
    nop                                           ; $4ea5: $00
    rst $38                                       ; $4ea6: $ff
    nop                                           ; $4ea7: $00
    rst $38                                       ; $4ea8: $ff
    nop                                           ; $4ea9: $00
    rst $38                                       ; $4eaa: $ff
    nop                                           ; $4eab: $00
    rst $38                                       ; $4eac: $ff
    nop                                           ; $4ead: $00
    rst $38                                       ; $4eae: $ff
    nop                                           ; $4eaf: $00
    rst $38                                       ; $4eb0: $ff
    nop                                           ; $4eb1: $00
    rst $38                                       ; $4eb2: $ff
    nop                                           ; $4eb3: $00
    rst $38                                       ; $4eb4: $ff
    nop                                           ; $4eb5: $00
    rst $38                                       ; $4eb6: $ff
    nop                                           ; $4eb7: $00
    rst $38                                       ; $4eb8: $ff
    nop                                           ; $4eb9: $00
    rst $38                                       ; $4eba: $ff
    nop                                           ; $4ebb: $00
    rst $38                                       ; $4ebc: $ff
    nop                                           ; $4ebd: $00
    rst $38                                       ; $4ebe: $ff
    nop                                           ; $4ebf: $00
    rst $38                                       ; $4ec0: $ff
    nop                                           ; $4ec1: $00
    rst $38                                       ; $4ec2: $ff
    nop                                           ; $4ec3: $00
    rst $38                                       ; $4ec4: $ff
    nop                                           ; $4ec5: $00
    rst $38                                       ; $4ec6: $ff
    nop                                           ; $4ec7: $00
    rst $38                                       ; $4ec8: $ff
    nop                                           ; $4ec9: $00
    rst $38                                       ; $4eca: $ff
    nop                                           ; $4ecb: $00
    rst $38                                       ; $4ecc: $ff
    nop                                           ; $4ecd: $00
    rst $38                                       ; $4ece: $ff
    nop                                           ; $4ecf: $00
    rst $38                                       ; $4ed0: $ff
    nop                                           ; $4ed1: $00
    rst $38                                       ; $4ed2: $ff
    nop                                           ; $4ed3: $00
    rst $38                                       ; $4ed4: $ff
    nop                                           ; $4ed5: $00
    rst $38                                       ; $4ed6: $ff
    nop                                           ; $4ed7: $00
    rst $38                                       ; $4ed8: $ff
    nop                                           ; $4ed9: $00
    rst $38                                       ; $4eda: $ff
    nop                                           ; $4edb: $00
    rst $38                                       ; $4edc: $ff
    nop                                           ; $4edd: $00
    rst $38                                       ; $4ede: $ff
    nop                                           ; $4edf: $00
    rst $38                                       ; $4ee0: $ff
    nop                                           ; $4ee1: $00
    rst $38                                       ; $4ee2: $ff
    nop                                           ; $4ee3: $00
    rst $38                                       ; $4ee4: $ff
    nop                                           ; $4ee5: $00
    rst $38                                       ; $4ee6: $ff
    nop                                           ; $4ee7: $00
    rst $38                                       ; $4ee8: $ff
    nop                                           ; $4ee9: $00
    rst $38                                       ; $4eea: $ff
    nop                                           ; $4eeb: $00
    rst $38                                       ; $4eec: $ff
    nop                                           ; $4eed: $00
    rst $38                                       ; $4eee: $ff
    nop                                           ; $4eef: $00
    rst $38                                       ; $4ef0: $ff
    nop                                           ; $4ef1: $00
    rst $38                                       ; $4ef2: $ff
    nop                                           ; $4ef3: $00
    rst $38                                       ; $4ef4: $ff
    nop                                           ; $4ef5: $00
    rst $38                                       ; $4ef6: $ff
    nop                                           ; $4ef7: $00
    rst $38                                       ; $4ef8: $ff
    nop                                           ; $4ef9: $00
    rst $38                                       ; $4efa: $ff
    nop                                           ; $4efb: $00
    rst $38                                       ; $4efc: $ff
    nop                                           ; $4efd: $00
    rst $38                                       ; $4efe: $ff
    nop                                           ; $4eff: $00
    rst $38                                       ; $4f00: $ff
    nop                                           ; $4f01: $00
    rst $38                                       ; $4f02: $ff
    nop                                           ; $4f03: $00
    rst $38                                       ; $4f04: $ff
    nop                                           ; $4f05: $00
    rst $38                                       ; $4f06: $ff
    nop                                           ; $4f07: $00
    rst $38                                       ; $4f08: $ff
    nop                                           ; $4f09: $00
    rst $38                                       ; $4f0a: $ff
    nop                                           ; $4f0b: $00
    rst $38                                       ; $4f0c: $ff
    nop                                           ; $4f0d: $00
    rst $38                                       ; $4f0e: $ff
    nop                                           ; $4f0f: $00
    rst $38                                       ; $4f10: $ff
    nop                                           ; $4f11: $00
    rst $38                                       ; $4f12: $ff
    nop                                           ; $4f13: $00
    rst $38                                       ; $4f14: $ff
    nop                                           ; $4f15: $00
    rst $38                                       ; $4f16: $ff
    nop                                           ; $4f17: $00
    rst $38                                       ; $4f18: $ff
    nop                                           ; $4f19: $00
    rst $38                                       ; $4f1a: $ff
    nop                                           ; $4f1b: $00
    rst $38                                       ; $4f1c: $ff
    nop                                           ; $4f1d: $00
    rst $38                                       ; $4f1e: $ff
    nop                                           ; $4f1f: $00
    rst $38                                       ; $4f20: $ff
    nop                                           ; $4f21: $00
    rst $38                                       ; $4f22: $ff
    nop                                           ; $4f23: $00
    rst $38                                       ; $4f24: $ff
    nop                                           ; $4f25: $00
    rst $38                                       ; $4f26: $ff
    nop                                           ; $4f27: $00
    rst $38                                       ; $4f28: $ff
    nop                                           ; $4f29: $00
    rst $38                                       ; $4f2a: $ff
    nop                                           ; $4f2b: $00
    rst $38                                       ; $4f2c: $ff
    nop                                           ; $4f2d: $00
    rst $38                                       ; $4f2e: $ff
    nop                                           ; $4f2f: $00
    rst $38                                       ; $4f30: $ff
    nop                                           ; $4f31: $00
    rst $38                                       ; $4f32: $ff
    nop                                           ; $4f33: $00
    rst $38                                       ; $4f34: $ff
    nop                                           ; $4f35: $00
    rst $38                                       ; $4f36: $ff
    nop                                           ; $4f37: $00
    rst $38                                       ; $4f38: $ff
    nop                                           ; $4f39: $00
    rst $38                                       ; $4f3a: $ff
    nop                                           ; $4f3b: $00
    rst $38                                       ; $4f3c: $ff
    nop                                           ; $4f3d: $00
    rst $38                                       ; $4f3e: $ff
    nop                                           ; $4f3f: $00
    rst $38                                       ; $4f40: $ff
    nop                                           ; $4f41: $00
    rst $38                                       ; $4f42: $ff
    nop                                           ; $4f43: $00
    rst $38                                       ; $4f44: $ff
    nop                                           ; $4f45: $00
    rst $38                                       ; $4f46: $ff
    nop                                           ; $4f47: $00
    rst $38                                       ; $4f48: $ff
    nop                                           ; $4f49: $00
    rst $38                                       ; $4f4a: $ff
    nop                                           ; $4f4b: $00
    rst $38                                       ; $4f4c: $ff
    nop                                           ; $4f4d: $00
    rst $38                                       ; $4f4e: $ff
    nop                                           ; $4f4f: $00
    rst $38                                       ; $4f50: $ff
    nop                                           ; $4f51: $00
    rst $38                                       ; $4f52: $ff
    nop                                           ; $4f53: $00
    rst $38                                       ; $4f54: $ff
    nop                                           ; $4f55: $00
    rst $38                                       ; $4f56: $ff
    nop                                           ; $4f57: $00
    rst $38                                       ; $4f58: $ff
    nop                                           ; $4f59: $00
    rst $38                                       ; $4f5a: $ff
    nop                                           ; $4f5b: $00
    rst $38                                       ; $4f5c: $ff
    nop                                           ; $4f5d: $00
    rst $38                                       ; $4f5e: $ff
    nop                                           ; $4f5f: $00
    rst $38                                       ; $4f60: $ff
    nop                                           ; $4f61: $00
    rst $38                                       ; $4f62: $ff
    nop                                           ; $4f63: $00
    rst $38                                       ; $4f64: $ff
    nop                                           ; $4f65: $00
    rst $38                                       ; $4f66: $ff
    nop                                           ; $4f67: $00
    rst $38                                       ; $4f68: $ff
    nop                                           ; $4f69: $00
    rst $38                                       ; $4f6a: $ff
    nop                                           ; $4f6b: $00
    rst $38                                       ; $4f6c: $ff
    nop                                           ; $4f6d: $00
    rst $38                                       ; $4f6e: $ff
    nop                                           ; $4f6f: $00
    rst $38                                       ; $4f70: $ff
    nop                                           ; $4f71: $00
    rst $38                                       ; $4f72: $ff
    nop                                           ; $4f73: $00
    rst $38                                       ; $4f74: $ff
    nop                                           ; $4f75: $00
    rst $38                                       ; $4f76: $ff
    nop                                           ; $4f77: $00
    rst $38                                       ; $4f78: $ff
    nop                                           ; $4f79: $00
    rst $38                                       ; $4f7a: $ff
    nop                                           ; $4f7b: $00
    rst $38                                       ; $4f7c: $ff
    nop                                           ; $4f7d: $00
    rst $38                                       ; $4f7e: $ff
    nop                                           ; $4f7f: $00
    rst $38                                       ; $4f80: $ff
    nop                                           ; $4f81: $00
    rst $38                                       ; $4f82: $ff
    nop                                           ; $4f83: $00
    rst $38                                       ; $4f84: $ff
    nop                                           ; $4f85: $00
    rst $38                                       ; $4f86: $ff
    nop                                           ; $4f87: $00
    rst $38                                       ; $4f88: $ff
    nop                                           ; $4f89: $00
    rst $38                                       ; $4f8a: $ff
    nop                                           ; $4f8b: $00
    rst $38                                       ; $4f8c: $ff
    nop                                           ; $4f8d: $00
    rst $38                                       ; $4f8e: $ff
    nop                                           ; $4f8f: $00
    rst $38                                       ; $4f90: $ff
    nop                                           ; $4f91: $00
    rst $38                                       ; $4f92: $ff
    nop                                           ; $4f93: $00
    rst $38                                       ; $4f94: $ff
    nop                                           ; $4f95: $00
    rst $38                                       ; $4f96: $ff
    nop                                           ; $4f97: $00
    rst $38                                       ; $4f98: $ff
    nop                                           ; $4f99: $00
    rst $38                                       ; $4f9a: $ff
    nop                                           ; $4f9b: $00
    rst $38                                       ; $4f9c: $ff
    nop                                           ; $4f9d: $00
    rst $38                                       ; $4f9e: $ff
    nop                                           ; $4f9f: $00
    rst $38                                       ; $4fa0: $ff
    nop                                           ; $4fa1: $00
    rst $38                                       ; $4fa2: $ff
    nop                                           ; $4fa3: $00
    rst $38                                       ; $4fa4: $ff
    nop                                           ; $4fa5: $00
    rst $38                                       ; $4fa6: $ff
    nop                                           ; $4fa7: $00
    rst $38                                       ; $4fa8: $ff
    nop                                           ; $4fa9: $00
    rst $38                                       ; $4faa: $ff
    nop                                           ; $4fab: $00
    rst $38                                       ; $4fac: $ff
    nop                                           ; $4fad: $00
    rst $38                                       ; $4fae: $ff
    nop                                           ; $4faf: $00
    rst $38                                       ; $4fb0: $ff
    nop                                           ; $4fb1: $00
    rst $38                                       ; $4fb2: $ff
    nop                                           ; $4fb3: $00
    rst $38                                       ; $4fb4: $ff
    nop                                           ; $4fb5: $00
    rst $38                                       ; $4fb6: $ff
    nop                                           ; $4fb7: $00
    rst $38                                       ; $4fb8: $ff
    nop                                           ; $4fb9: $00
    rst $38                                       ; $4fba: $ff
    nop                                           ; $4fbb: $00
    rst $38                                       ; $4fbc: $ff
    nop                                           ; $4fbd: $00
    rst $38                                       ; $4fbe: $ff
    nop                                           ; $4fbf: $00
    rst $38                                       ; $4fc0: $ff
    nop                                           ; $4fc1: $00
    rst $38                                       ; $4fc2: $ff
    nop                                           ; $4fc3: $00
    rst $38                                       ; $4fc4: $ff
    nop                                           ; $4fc5: $00
    rst $38                                       ; $4fc6: $ff
    nop                                           ; $4fc7: $00
    rst $38                                       ; $4fc8: $ff
    nop                                           ; $4fc9: $00
    rst $38                                       ; $4fca: $ff
    nop                                           ; $4fcb: $00
    rst $38                                       ; $4fcc: $ff
    nop                                           ; $4fcd: $00
    rst $38                                       ; $4fce: $ff
    nop                                           ; $4fcf: $00
    rst $38                                       ; $4fd0: $ff
    nop                                           ; $4fd1: $00
    rst $38                                       ; $4fd2: $ff
    nop                                           ; $4fd3: $00
    rst $38                                       ; $4fd4: $ff
    nop                                           ; $4fd5: $00
    rst $38                                       ; $4fd6: $ff
    nop                                           ; $4fd7: $00
    rst $38                                       ; $4fd8: $ff
    nop                                           ; $4fd9: $00
    rst $38                                       ; $4fda: $ff
    nop                                           ; $4fdb: $00
    rst $38                                       ; $4fdc: $ff
    nop                                           ; $4fdd: $00
    rst $38                                       ; $4fde: $ff
    nop                                           ; $4fdf: $00
    rst $38                                       ; $4fe0: $ff
    nop                                           ; $4fe1: $00
    rst $38                                       ; $4fe2: $ff
    nop                                           ; $4fe3: $00
    rst $38                                       ; $4fe4: $ff
    nop                                           ; $4fe5: $00
    rst $38                                       ; $4fe6: $ff
    nop                                           ; $4fe7: $00
    rst $38                                       ; $4fe8: $ff
    nop                                           ; $4fe9: $00
    rst $38                                       ; $4fea: $ff
    nop                                           ; $4feb: $00
    rst $38                                       ; $4fec: $ff
    nop                                           ; $4fed: $00
    rst $38                                       ; $4fee: $ff
    nop                                           ; $4fef: $00
    rst $38                                       ; $4ff0: $ff
    nop                                           ; $4ff1: $00
    rst $38                                       ; $4ff2: $ff
    nop                                           ; $4ff3: $00
    rst $38                                       ; $4ff4: $ff
    nop                                           ; $4ff5: $00
    rst $38                                       ; $4ff6: $ff
    nop                                           ; $4ff7: $00
    rst $38                                       ; $4ff8: $ff
    nop                                           ; $4ff9: $00
    rst $38                                       ; $4ffa: $ff
    nop                                           ; $4ffb: $00
    rst $38                                       ; $4ffc: $ff
    nop                                           ; $4ffd: $00
    rst $38                                       ; $4ffe: $ff
    nop                                           ; $4fff: $00
    rst $38                                       ; $5000: $ff
    nop                                           ; $5001: $00
    rst $38                                       ; $5002: $ff
    nop                                           ; $5003: $00
    rst $38                                       ; $5004: $ff
    nop                                           ; $5005: $00
    rst $38                                       ; $5006: $ff
    nop                                           ; $5007: $00
    rst $38                                       ; $5008: $ff
    nop                                           ; $5009: $00
    rst $38                                       ; $500a: $ff
    nop                                           ; $500b: $00
    rst $38                                       ; $500c: $ff
    nop                                           ; $500d: $00
    rst $38                                       ; $500e: $ff
    nop                                           ; $500f: $00
    rst $38                                       ; $5010: $ff
    nop                                           ; $5011: $00
    rst $38                                       ; $5012: $ff
    nop                                           ; $5013: $00
    rst $38                                       ; $5014: $ff
    nop                                           ; $5015: $00
    rst $38                                       ; $5016: $ff
    nop                                           ; $5017: $00
    rst $38                                       ; $5018: $ff
    nop                                           ; $5019: $00
    rst $38                                       ; $501a: $ff
    nop                                           ; $501b: $00
    rst $38                                       ; $501c: $ff
    nop                                           ; $501d: $00
    rst $38                                       ; $501e: $ff
    nop                                           ; $501f: $00
    rst $38                                       ; $5020: $ff
    nop                                           ; $5021: $00
    rst $38                                       ; $5022: $ff
    nop                                           ; $5023: $00
    rst $38                                       ; $5024: $ff
    nop                                           ; $5025: $00
    rst $38                                       ; $5026: $ff
    nop                                           ; $5027: $00
    rst $38                                       ; $5028: $ff
    nop                                           ; $5029: $00
    rst $38                                       ; $502a: $ff
    nop                                           ; $502b: $00
    rst $38                                       ; $502c: $ff
    nop                                           ; $502d: $00
    rst $38                                       ; $502e: $ff
    nop                                           ; $502f: $00
    rst $38                                       ; $5030: $ff
    nop                                           ; $5031: $00
    rst $38                                       ; $5032: $ff
    nop                                           ; $5033: $00
    rst $38                                       ; $5034: $ff
    nop                                           ; $5035: $00
    rst $38                                       ; $5036: $ff
    nop                                           ; $5037: $00
    rst $38                                       ; $5038: $ff
    nop                                           ; $5039: $00
    rst $38                                       ; $503a: $ff
    nop                                           ; $503b: $00
    rst $38                                       ; $503c: $ff
    nop                                           ; $503d: $00
    rst $38                                       ; $503e: $ff
    nop                                           ; $503f: $00
    rst $38                                       ; $5040: $ff
    nop                                           ; $5041: $00
    rst $38                                       ; $5042: $ff
    nop                                           ; $5043: $00
    rst $38                                       ; $5044: $ff
    nop                                           ; $5045: $00
    rst $38                                       ; $5046: $ff
    nop                                           ; $5047: $00
    rst $38                                       ; $5048: $ff
    nop                                           ; $5049: $00
    rst $38                                       ; $504a: $ff
    nop                                           ; $504b: $00
    rst $38                                       ; $504c: $ff
    nop                                           ; $504d: $00
    rst $38                                       ; $504e: $ff
    nop                                           ; $504f: $00
    rst $38                                       ; $5050: $ff
    nop                                           ; $5051: $00
    rst $38                                       ; $5052: $ff
    nop                                           ; $5053: $00
    rst $38                                       ; $5054: $ff
    nop                                           ; $5055: $00
    rst $38                                       ; $5056: $ff
    nop                                           ; $5057: $00
    rst $38                                       ; $5058: $ff
    nop                                           ; $5059: $00
    rst $38                                       ; $505a: $ff
    nop                                           ; $505b: $00
    rst $38                                       ; $505c: $ff
    nop                                           ; $505d: $00
    rst $38                                       ; $505e: $ff
    nop                                           ; $505f: $00
    rst $38                                       ; $5060: $ff
    nop                                           ; $5061: $00
    rst $38                                       ; $5062: $ff
    nop                                           ; $5063: $00
    rst $38                                       ; $5064: $ff
    nop                                           ; $5065: $00
    rst $38                                       ; $5066: $ff
    nop                                           ; $5067: $00
    rst $38                                       ; $5068: $ff
    nop                                           ; $5069: $00
    rst $38                                       ; $506a: $ff
    nop                                           ; $506b: $00
    rst $38                                       ; $506c: $ff
    nop                                           ; $506d: $00
    rst $38                                       ; $506e: $ff
    nop                                           ; $506f: $00
    rst $38                                       ; $5070: $ff
    nop                                           ; $5071: $00
    rst $38                                       ; $5072: $ff
    nop                                           ; $5073: $00
    rst $38                                       ; $5074: $ff
    nop                                           ; $5075: $00
    rst $38                                       ; $5076: $ff
    nop                                           ; $5077: $00
    rst $38                                       ; $5078: $ff
    nop                                           ; $5079: $00
    rst $38                                       ; $507a: $ff
    nop                                           ; $507b: $00
    rst $38                                       ; $507c: $ff
    nop                                           ; $507d: $00
    rst $38                                       ; $507e: $ff
    nop                                           ; $507f: $00
    rst $38                                       ; $5080: $ff
    nop                                           ; $5081: $00
    rst $38                                       ; $5082: $ff
    nop                                           ; $5083: $00
    rst $38                                       ; $5084: $ff
    nop                                           ; $5085: $00
    rst $38                                       ; $5086: $ff
    nop                                           ; $5087: $00
    rst $38                                       ; $5088: $ff
    nop                                           ; $5089: $00
    rst $38                                       ; $508a: $ff
    nop                                           ; $508b: $00
    rst $38                                       ; $508c: $ff
    nop                                           ; $508d: $00
    rst $38                                       ; $508e: $ff
    nop                                           ; $508f: $00
    rst $38                                       ; $5090: $ff
    nop                                           ; $5091: $00
    rst $38                                       ; $5092: $ff
    nop                                           ; $5093: $00
    rst $38                                       ; $5094: $ff
    nop                                           ; $5095: $00
    rst $38                                       ; $5096: $ff
    nop                                           ; $5097: $00
    rst $38                                       ; $5098: $ff
    nop                                           ; $5099: $00
    rst $38                                       ; $509a: $ff
    nop                                           ; $509b: $00
    rst $38                                       ; $509c: $ff
    nop                                           ; $509d: $00
    rst $38                                       ; $509e: $ff
    nop                                           ; $509f: $00

    db $ff, $7f, $ff, $6b, $58, $1e, $00, $00, $60, $01, $ff, $7f, $ef, $3d, $00, $00
    db $87, $65, $ff, $7f, $94, $52, $00, $00, $5f, $4a, $bf, $5f, $df, $28, $00, $00
    db $f2, $03, $4b, $03, $c8, $12, $e0, $19, $20, $01, $10, $02, $18, $23, $ff, $53
    db $20, $01, $0f, $00, $18, $21, $9f, $52, $20, $01, $00, $40, $84, $51, $f4, $7f
    db $80, $01, $ff, $7f, $ef, $3d, $00, $00, $2f, $1d, $00, $7c, $1f, $00, $00, $00
    db $2f, $1d, $ff, $7f, $1f, $00, $00, $00, $e0, $01, $08, $25, $08, $25, $08, $25
    db $e0, $01, $08, $25, $08, $25, $08, $25, $80, $01, $10, $02, $5a, $23, $ff, $63
    db $80, $01, $5f, $08, $df, $39, $1f, $63, $80, $01, $82, $0a, $f0, $43, $f8, $63

    nop                                           ; $5120: $00
    nop                                           ; $5121: $00
    jr c, jr_001_515c                             ; $5122: $38 $38

    ld d, h                                       ; $5124: $54
    ld l, h                                       ; $5125: $6c
    ld a, e                                       ; $5126: $7b
    ld b, a                                       ; $5127: $47
    ld e, l                                       ; $5128: $5d
    ld h, e                                       ; $5129: $63
    ld l, $31                                     ; $512a: $2e $31
    rla                                           ; $512c: $17
    jr jr_001_513a                                ; $512d: $18 $0b

    inc c                                         ; $512f: $0c
    dec c                                         ; $5130: $0d
    ld c, $15                                     ; $5131: $0e $15
    ld a, [de]                                    ; $5133: $1a
    rra                                           ; $5134: $1f
    db $10                                        ; $5135: $10
    rla                                           ; $5136: $17
    jr jr_001_5144                                ; $5137: $18 $0b

    inc c                                         ; $5139: $0c

jr_001_513a:
    rlca                                          ; $513a: $07
    rlca                                          ; $513b: $07
    nop                                           ; $513c: $00
    nop                                           ; $513d: $00
    nop                                           ; $513e: $00
    nop                                           ; $513f: $00
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00

jr_001_5144:
    nop                                           ; $5144: $00
    nop                                           ; $5145: $00
    ldh a, [$f0]                                  ; $5146: $f0 $f0
    ld l, b                                       ; $5148: $68
    sbc b                                         ; $5149: $98
    db $f4                                        ; $514a: $f4
    inc c                                         ; $514b: $0c
    db $fc                                        ; $514c: $fc
    inc b                                         ; $514d: $04
    ld a, [$f606]                                 ; $514e: $fa $06 $f6
    ld c, $f9                                     ; $5151: $0e $f9
    rlca                                          ; $5153: $07
    db $fd                                        ; $5154: $fd
    inc bc                                        ; $5155: $03
    sbc d                                         ; $5156: $9a
    ld h, [hl]                                    ; $5157: $66
    ld d, h                                       ; $5158: $54
    db $ec                                        ; $5159: $ec
    xor b                                         ; $515a: $a8
    ret c                                         ; $515b: $d8

jr_001_515c:
    sub b                                         ; $515c: $90
    ldh a, [$60]                                  ; $515d: $f0 $60
    ld h, b                                       ; $515f: $60
    ld b, e                                       ; $5160: $43
    ld c, b                                       ; $5161: $48
    ld b, c                                       ; $5162: $41
    ld d, d                                       ; $5163: $52
    jr nz, @+$4b                                  ; $5164: $20 $49

    ld b, h                                       ; $5166: $44
    jr nz, jr_001_51c4                            ; $5167: $20 $5b

    jr nc, jr_001_5198                            ; $5169: $30 $2d

    inc sp                                        ; $516b: $33
    ld e, l                                       ; $516c: $5d
    nop                                           ; $516d: $00

Jump_001_516e:
    push af                                       ; $516e: $f5
    push bc                                       ; $516f: $c5
    push de                                       ; $5170: $d5
    push hl                                       ; $5171: $e5
    ld a, [$c836]                                 ; $5172: $fa $36 $c8
    ld d, a                                       ; $5175: $57
    ld a, [$c837]                                 ; $5176: $fa $37 $c8
    ld e, a                                       ; $5179: $5f
    ld b, $00                                     ; $517a: $06 $00
    ldh a, [$9e]                                  ; $517c: $f0 $9e
    push af                                       ; $517e: $f5
    ld a, $03                                     ; $517f: $3e $03
    ldh [$9e], a                                  ; $5181: $e0 $9e
    push hl                                       ; $5183: $e5
    push de                                       ; $5184: $d5
    ld hl, $5267                                  ; $5185: $21 $67 $52
    ld de, $0d09                                  ; $5188: $11 $09 $0d
    call Call_000_20b1                            ; $518b: $cd $b1 $20
    pop de                                        ; $518e: $d1
    pop hl                                        ; $518f: $e1
    push hl                                       ; $5190: $e5
    push de                                       ; $5191: $d5
    ld hl, $526d                                  ; $5192: $21 $6d $52
    ld de, $0d0b                                  ; $5195: $11 $0b $0d

jr_001_5198:
    call Call_000_20b1                            ; $5198: $cd $b1 $20
    pop de                                        ; $519b: $d1
    pop hl                                        ; $519c: $e1

Jump_001_519d:
    call Call_000_2e3b                            ; $519d: $cd $3b $2e
    ldh a, [$91]                                  ; $51a0: $f0 $91
    and $c0                                       ; $51a2: $e6 $c0
    jr z, jr_001_51aa                             ; $51a4: $28 $04

    ld a, b                                       ; $51a6: $78
    xor $01                                       ; $51a7: $ee $01
    ld b, a                                       ; $51a9: $47

jr_001_51aa:
    ld a, b                                       ; $51aa: $78
    or a                                          ; $51ab: $b7
    jr nz, jr_001_51cf                            ; $51ac: $20 $21

    ldh a, [$91]                                  ; $51ae: $f0 $91
    bit 4, a                                      ; $51b0: $cb $67
    jr z, jr_001_51b7                             ; $51b2: $28 $03

    inc d                                         ; $51b4: $14
    jr jr_001_51bc                                ; $51b5: $18 $05

jr_001_51b7:
    bit 5, a                                      ; $51b7: $cb $6f
    jr z, jr_001_51ee                             ; $51b9: $28 $33

    dec d                                         ; $51bb: $15

jr_001_51bc:
    ld a, d                                       ; $51bc: $7a
    or a                                          ; $51bd: $b7
    jr nz, jr_001_51c4                            ; $51be: $20 $04

    ld d, $7f                                     ; $51c0: $16 $7f
    jr jr_001_51ee                                ; $51c2: $18 $2a

jr_001_51c4:
    ld a, d                                       ; $51c4: $7a
    cp $7f                                        ; $51c5: $fe $7f
    jr c, jr_001_51ee                             ; $51c7: $38 $25

    jr z, jr_001_51ee                             ; $51c9: $28 $23

    ld d, $00                                     ; $51cb: $16 $00
    jr jr_001_51ee                                ; $51cd: $18 $1f

jr_001_51cf:
    ldh a, [$91]                                  ; $51cf: $f0 $91
    bit 4, a                                      ; $51d1: $cb $67
    jr z, jr_001_51d8                             ; $51d3: $28 $03

    inc e                                         ; $51d5: $1c
    jr jr_001_51dd                                ; $51d6: $18 $05

jr_001_51d8:
    bit 5, a                                      ; $51d8: $cb $6f
    jr z, jr_001_51ee                             ; $51da: $28 $12

    dec e                                         ; $51dc: $1d

jr_001_51dd:
    ld a, e                                       ; $51dd: $7b
    or a                                          ; $51de: $b7
    jr nz, jr_001_51e5                            ; $51df: $20 $04

    ld e, $7f                                     ; $51e1: $1e $7f
    jr jr_001_51ee                                ; $51e3: $18 $09

jr_001_51e5:
    ld a, e                                       ; $51e5: $7b
    cp $7f                                        ; $51e6: $fe $7f
    jr c, jr_001_51ee                             ; $51e8: $38 $04

    jr z, jr_001_51ee                             ; $51ea: $28 $02

    ld e, $00                                     ; $51ec: $1e $00

jr_001_51ee:
    ld a, b                                       ; $51ee: $78
    or a                                          ; $51ef: $b7
    jr nz, jr_001_520e                            ; $51f0: $20 $1c

    push hl                                       ; $51f2: $e5
    push de                                       ; $51f3: $d5
    ld hl, $5274                                  ; $51f4: $21 $74 $52
    ld de, $0c09                                  ; $51f7: $11 $09 $0c
    call Call_000_20b1                            ; $51fa: $cd $b1 $20
    pop de                                        ; $51fd: $d1
    pop hl                                        ; $51fe: $e1
    push hl                                       ; $51ff: $e5
    push de                                       ; $5200: $d5
    ld hl, $5276                                  ; $5201: $21 $76 $52
    ld de, $0c0b                                  ; $5204: $11 $0b $0c
    call Call_000_20b1                            ; $5207: $cd $b1 $20
    pop de                                        ; $520a: $d1
    pop hl                                        ; $520b: $e1
    jr jr_001_5228                                ; $520c: $18 $1a

jr_001_520e:
    push hl                                       ; $520e: $e5
    push de                                       ; $520f: $d5
    ld hl, $5274                                  ; $5210: $21 $74 $52
    ld de, $0c0b                                  ; $5213: $11 $0b $0c
    call Call_000_20b1                            ; $5216: $cd $b1 $20
    pop de                                        ; $5219: $d1
    pop hl                                        ; $521a: $e1
    push hl                                       ; $521b: $e5
    push de                                       ; $521c: $d5
    ld hl, $5276                                  ; $521d: $21 $76 $52
    ld de, $0c09                                  ; $5220: $11 $09 $0c
    call Call_000_20b1                            ; $5223: $cd $b1 $20
    pop de                                        ; $5226: $d1
    pop hl                                        ; $5227: $e1

jr_001_5228:
    push de                                       ; $5228: $d5
    push af                                       ; $5229: $f5
    ld a, d                                       ; $522a: $7a
    ld de, $0e0a                                  ; $522b: $11 $0a $0e
    call Call_000_22d2                            ; $522e: $cd $d2 $22
    pop af                                        ; $5231: $f1
    pop de                                        ; $5232: $d1
    push de                                       ; $5233: $d5
    push af                                       ; $5234: $f5
    ld a, e                                       ; $5235: $7b
    ld de, $0e0c                                  ; $5236: $11 $0c $0e
    call Call_000_22d2                            ; $5239: $cd $d2 $22
    pop af                                        ; $523c: $f1
    pop de                                        ; $523d: $d1
    ldh a, [$91]                                  ; $523e: $f0 $91
    bit 0, a                                      ; $5240: $cb $47
    jr z, jr_001_5264                             ; $5242: $28 $20

    bit 0, b                                      ; $5244: $cb $40
    jr nz, jr_001_5256                            ; $5246: $20 $0e

    push af                                       ; $5248: $f5
    push bc                                       ; $5249: $c5
    push de                                       ; $524a: $d5
    push hl                                       ; $524b: $e5
    ld a, d                                       ; $524c: $7a
    call Call_000_2c19                            ; $524d: $cd $19 $2c
    pop hl                                        ; $5250: $e1
    pop de                                        ; $5251: $d1
    pop bc                                        ; $5252: $c1
    pop af                                        ; $5253: $f1
    jr jr_001_5264                                ; $5254: $18 $0e

jr_001_5256:
    push af                                       ; $5256: $f5
    push bc                                       ; $5257: $c5
    push de                                       ; $5258: $d5
    push hl                                       ; $5259: $e5
    ld a, e                                       ; $525a: $7b
    add $40                                       ; $525b: $c6 $40
    call Call_000_2c19                            ; $525d: $cd $19 $2c
    pop hl                                        ; $5260: $e1
    pop de                                        ; $5261: $d1
    pop bc                                        ; $5262: $c1
    pop af                                        ; $5263: $f1

jr_001_5264:
    jp Jump_001_519d                              ; $5264: $c3 $9d $51


    ld c, l                                       ; $5267: $4d
    ld d, l                                       ; $5268: $55
    ld d, e                                       ; $5269: $53
    ld c, c                                       ; $526a: $49
    ld b, e                                       ; $526b: $43
    nop                                           ; $526c: $00
    ld b, l                                       ; $526d: $45
    ld b, [hl]                                    ; $526e: $46
    ld b, [hl]                                    ; $526f: $46
    ld b, l                                       ; $5270: $45
    ld b, e                                       ; $5271: $43
    ld d, h                                       ; $5272: $54
    nop                                           ; $5273: $00
    ld a, $00                                     ; $5274: $3e $00
    jr nz, jr_001_5278                            ; $5276: $20 $00

jr_001_5278:
    ld a, $00                                     ; $5278: $3e $00
    ldh [rLCDC], a                                ; $527a: $e0 $40
    ld hl, $52b9                                  ; $527c: $21 $b9 $52
    ld de, $d000                                  ; $527f: $11 $00 $d0
    call Call_000_1f2f                            ; $5282: $cd $2f $1f
    ld hl, $d000                                  ; $5285: $21 $00 $d0
    ld de, $9000                                  ; $5288: $11 $00 $90
    ld c, $80                                     ; $528b: $0e $80
    call Call_000_03eb                            ; $528d: $cd $eb $03
    ld hl, $58cf                                  ; $5290: $21 $cf $58
    ld de, $d000                                  ; $5293: $11 $00 $d0
    call Call_000_1f2f                            ; $5296: $cd $2f $1f
    ld hl, $d000                                  ; $5299: $21 $00 $d0
    ld de, $9800                                  ; $529c: $11 $00 $98
    ld c, $40                                     ; $529f: $0e $40
    call Call_000_03eb                            ; $52a1: $cd $eb $03
    ld a, $e4                                     ; $52a4: $3e $e4
    ldh [rBGP], a                                 ; $52a6: $e0 $47
    xor a                                         ; $52a8: $af
    ldh [rIF], a                                  ; $52a9: $e0 $0f
    ld a, $00                                     ; $52ab: $3e $00
    ldh [rIE], a                                  ; $52ad: $e0 $ff
    ld a, $c1                                     ; $52af: $3e $c1
    ldh [rLCDC], a                                ; $52b1: $e0 $40

jr_001_52b3:
    ei                                            ; $52b3: $fb

jr_001_52b4:
    call Call_000_2e3b                            ; $52b4: $cd $3b $2e
    jr jr_001_52b4                                ; $52b7: $18 $fb

    db $fd                                        ; $52b9: $fd
    nop                                           ; $52ba: $00
    rst $38                                       ; $52bb: $ff
    db $f4                                        ; $52bc: $f4
    ld a, a                                       ; $52bd: $7f
    ld a, a                                       ; $52be: $7f
    ld b, b                                       ; $52bf: $40
    ld b, b                                       ; $52c0: $40
    ret nz                                        ; $52c1: $c0

    ld b, b                                       ; $52c2: $40
    ei                                            ; $52c3: $fb
    rst $18                                       ; $52c4: $df
    adc a                                         ; $52c5: $8f
    ldh [$e5], a                                  ; $52c6: $e0 $e5
    rst $38                                       ; $52c8: $ff
    rst $38                                       ; $52c9: $ff
    pop hl                                        ; $52ca: $e1
    ld b, b                                       ; $52cb: $40
    nop                                           ; $52cc: $00
    rst $30                                       ; $52cd: $f7
    nop                                           ; $52ce: $00
    cp [hl]                                       ; $52cf: $be
    sbc h                                         ; $52d0: $9c
    ldh a, [$e6]                                  ; $52d1: $f0 $e6
    ld a, $e3                                     ; $52d3: $3e $e3
    pop bc                                        ; $52d5: $c1
    ret nz                                        ; $52d6: $c0

    rst $30                                       ; $52d7: $f7
    ld b, b                                       ; $52d8: $40
    rra                                           ; $52d9: $1f
    ld c, $c0                                     ; $52da: $0e $c0
    pop hl                                        ; $52dc: $e1
    rlca                                          ; $52dd: $07
    ld b, $0f                                     ; $52de: $06 $0f
    add hl, bc                                    ; $52e0: $09
    rst $38                                       ; $52e1: $ff
    dec bc                                        ; $52e2: $0b
    inc c                                         ; $52e3: $0c
    xor $cf                                       ; $52e4: $ee $cf
    ld [hl], e                                    ; $52e6: $73
    ld sp, $1317                                  ; $52e7: $31 $17 $13
    cp $b0                                        ; $52ea: $fe $b0
    db $e3                                        ; $52ec: $e3
    ret nz                                        ; $52ed: $c0

    add b                                         ; $52ee: $80
    ldh a, [$60]                                  ; $52ef: $f0 $60
    db $fc                                        ; $52f1: $fc
    jr jr_001_52b3                                ; $52f2: $18 $bf

    rst $10                                       ; $52f4: $d7

jr_001_52f5:
    add $f7                                       ; $52f5: $c6 $f7
    ld sp, hl                                     ; $52f7: $f9
    ret nz                                        ; $52f8: $c0

    rst $20                                       ; $52f9: $e7
    add b                                         ; $52fa: $80
    rst $38                                       ; $52fb: $ff
    ldh [$9f], a                                  ; $52fc: $e0 $9f
    sbc [hl]                                      ; $52fe: $9e
    ld l, [hl]                                    ; $52ff: $6e
    sub b                                         ; $5300: $90
    push hl                                       ; $5301: $e5
    ldh [$e0], a                                  ; $5302: $e0 $e0
    jr nz, @+$01                                  ; $5304: $20 $ff

    ldh [$2f], a                                  ; $5306: $e0 $2f
    cpl                                           ; $5308: $2f
    add b                                         ; $5309: $80
    db $eb                                        ; $530a: $eb
    ei                                            ; $530b: $fb
    ld sp, hl                                     ; $530c: $f9
    ldh a, [rSVBK]                                ; $530d: $f0 $70
    push hl                                       ; $530f: $e5
    ccf                                           ; $5310: $3f
    rra                                           ; $5311: $1f
    ld [hl], b                                    ; $5312: $70
    jr nz, jr_001_52f5                            ; $5313: $20 $e0

    rst $30                                       ; $5315: $f7
    ld b, b                                       ; $5316: $40
    rst $08                                       ; $5317: $cf
    add a                                         ; $5318: $87

jr_001_5319:
    ld h, b                                       ; $5319: $60
    push hl                                       ; $531a: $e5
    cp $fc                                        ; $531b: $fe $fc
    rlca                                          ; $531d: $07
    ld [bc], a                                    ; $531e: $02
    ei                                            ; $531f: $fb
    inc bc                                        ; $5320: $03
    ld bc, $e7e0                                  ; $5321: $01 $e0 $e7
    rrca                                          ; $5324: $0f
    rrca                                          ; $5325: $0f
    ld [$8808], sp                                ; $5326: $08 $08 $88
    and a                                         ; $5329: $a7
    ld [$89c9], sp                                ; $532a: $08 $c9 $89
    ld h, b                                       ; $532d: $60
    rst $20                                       ; $532e: $e7
    jp c, $fee2                                   ; $532f: $da $e2 $fe

    jr nc, jr_001_5319                            ; $5332: $30 $e5

    ret nz                                        ; $5334: $c0

    sbc a                                         ; $5335: $9f
    ret nz                                        ; $5336: $c0

    ld c, a                                       ; $5337: $4f
    ld b, a                                       ; $5338: $47
    ld a, h                                       ; $5339: $7c
    ld a, b                                       ; $533a: $78
    ld c, l                                       ; $533b: $4d
    ldh [$b0], a                                  ; $533c: $e0 $b0
    and $f0                                       ; $533e: $e6 $f0
    rrca                                          ; $5340: $0f
    ldh [rP1], a                                  ; $5341: $e0 $00
    nop                                           ; $5343: $00
    add hl, de                                    ; $5344: $19
    ld de, $72e6                                  ; $5345: $11 $e6 $72
    pop hl                                        ; $5348: $e1
    ld l, [hl]                                    ; $5349: $6e
    pop hl                                        ; $534a: $e1
    nop                                           ; $534b: $00
    pop hl                                        ; $534c: $e1
    rst $30                                       ; $534d: $f7
    ld bc, $0100                                  ; $534e: $01 $00 $01
    rst $38                                       ; $5351: $ff
    ld [c], a                                     ; $5352: $e2
    inc bc                                        ; $5353: $03
    ld bc, $0302                                  ; $5354: $01 $02 $03
    rst $38                                       ; $5357: $ff
    sub a                                         ; $5358: $97
    sbc b                                         ; $5359: $98
    sbc a                                         ; $535a: $9f
    sub b                                         ; $535b: $90
    sbc a                                         ; $535c: $9f
    sub b                                         ; $535d: $90
    rra                                           ; $535e: $1f
    or b                                          ; $535f: $b0
    rst $28                                       ; $5360: $ef
    cpl                                           ; $5361: $2f
    jr nc, jr_001_53a3                            ; $5362: $30 $3f

jr_001_5364:
    jr nz, jr_001_5364                            ; $5364: $20 $fe

    ldh [$60], a                                  ; $5366: $e0 $60
    ld a, d                                       ; $5368: $7a
    rst $20                                       ; $5369: $e7
    rst $38                                       ; $536a: $ff
    cp l                                          ; $536b: $bd
    ld b, e                                       ; $536c: $43
    rst $38                                       ; $536d: $ff
    ld bc, $01fe                                  ; $536e: $01 $fe $01
    rst $38                                       ; $5371: $ff
    nop                                           ; $5372: $00
    jp c, $e3fe                                   ; $5373: $da $fe $e3

    ld de, $e1e9                                  ; $5376: $11 $e9 $e1
    rst $38                                       ; $5379: $ff
    ret nz                                        ; $537a: $c0

    cp $e0                                        ; $537b: $fe $e0
    ld b, h                                       ; $537d: $44
    rst $38                                       ; $537e: $ff
    rst $38                                       ; $537f: $ff
    call nz, $aa7f                                ; $5380: $c4 $7f $aa
    ld a, e                                       ; $5383: $7b
    add h                                         ; $5384: $84
    sub a                                         ; $5385: $97
    add h                                         ; $5386: $84
    rst $00                                       ; $5387: $c7
    rst $38                                       ; $5388: $ff
    ld b, h                                       ; $5389: $44
    rst $00                                       ; $538a: $c7
    ld b, h                                       ; $538b: $44
    rst $20                                       ; $538c: $e7
    inc h                                         ; $538d: $24
    rst $20                                       ; $538e: $e7
    inc h                                         ; $538f: $24
    rst $30                                       ; $5390: $f7
    ld a, a                                       ; $5391: $7f
    inc d                                         ; $5392: $14
    rst $30                                       ; $5393: $f7
    inc d                                         ; $5394: $14
    rst $38                                       ; $5395: $ff
    inc c                                         ; $5396: $0c
    rst $38                                       ; $5397: $ff
    inc bc                                        ; $5398: $03
    push de                                       ; $5399: $d5
    ldh [$f7], a                                  ; $539a: $e0 $f7

jr_001_539c:
    jr nz, @+$01                                  ; $539c: $20 $ff

    jr nc, jr_001_539c                            ; $539e: $30 $fc

    ldh [rP1], a                                  ; $53a0: $e0 $00
    rst $38                                       ; $53a2: $ff

jr_001_53a3:
    ld bc, $7fff                                  ; $53a3: $01 $ff $7f
    ld l, a                                       ; $53a6: $6f
    pop af                                        ; $53a7: $f1
    ccf                                           ; $53a8: $3f
    pop hl                                        ; $53a9: $e1
    rst $38                                       ; $53aa: $ff
    pop hl                                        ; $53ab: $e1
    ld a, a                                       ; $53ac: $7f
    cp $e4                                        ; $53ad: $fe $e4
    rst $38                                       ; $53af: $ff
    cp a                                          ; $53b0: $bf
    pop hl                                        ; $53b1: $e1
    jr nc, jr_001_53ec                            ; $53b2: $30 $38

    nop                                           ; $53b4: $00
    nop                                           ; $53b5: $00
    adc a                                         ; $53b6: $8f
    rst $18                                       ; $53b7: $df
    rst $18                                       ; $53b8: $df
    ld [hl], b                                    ; $53b9: $70
    rst $38                                       ; $53ba: $ff

jr_001_53bb:
    ld b, b                                       ; $53bb: $40
    ld a, a                                       ; $53bc: $7f
    add b                                         ; $53bd: $80
    xor l                                         ; $53be: $ad
    ldh [rSC], a                                  ; $53bf: $e0 $02
    rst $38                                       ; $53c1: $ff
    rst $38                                       ; $53c2: $ff
    dec c                                         ; $53c3: $0d
    add hl, de                                    ; $53c4: $19
    rlca                                          ; $53c5: $07
    dec c                                         ; $53c6: $0d
    rst $00                                       ; $53c7: $c7
    ld [c], a                                     ; $53c8: $e2
    jr nz, jr_001_53bb                            ; $53c9: $20 $f0

    rst $30                                       ; $53cb: $f7
    db $10                                        ; $53cc: $10
    ld hl, sp+$08                                 ; $53cd: $f8 $08
    cp $e2                                        ; $53cf: $fe $e2
    sbc e                                         ; $53d1: $9b
    inc c                                         ; $53d2: $0c
    scf                                           ; $53d3: $37
    jr @+$01                                      ; $53d4: $18 $ff

    ld l, a                                       ; $53d6: $6f
    jr nc, jr_001_5438                            ; $53d7: $30 $5f

    ld h, e                                       ; $53d9: $63
    ld a, a                                       ; $53da: $7f
    ld b, d                                       ; $53db: $42

jr_001_53dc:
    ld a, [$ff46]                                 ; $53dc: $fa $46 $ff
    cp a                                          ; $53df: $bf
    push bc                                       ; $53e0: $c5
    db $fd                                        ; $53e1: $fd
    add l                                         ; $53e2: $85
    db $ec                                        ; $53e3: $ec
    jr jr_001_53dc                                ; $53e4: $18 $f6

    inc c                                         ; $53e6: $0c
    rst $38                                       ; $53e7: $ff
    ei                                            ; $53e8: $fb
    ld b, $dd                                     ; $53e9: $06 $dd
    db $e3                                        ; $53eb: $e3

jr_001_53ec:
    ld a, [hl+]                                   ; $53ec: $2a
    scf                                           ; $53ed: $37
    ld a, l                                       ; $53ee: $7d
    ld e, $ff                                     ; $53ef: $1e $ff
    ei                                            ; $53f1: $fb
    db $fc                                        ; $53f2: $fc
    db $ed                                        ; $53f3: $ed
    ld e, $f9                                     ; $53f4: $1e $f9
    ld a, c                                       ; $53f6: $79
    ld bc, $ef01                                  ; $53f7: $01 $01 $ef
    rst $38                                       ; $53fa: $ff
    rst $38                                       ; $53fb: $ff
    ld a, l                                       ; $53fc: $7d
    add e                                         ; $53fd: $83
    ld l, [hl]                                    ; $53fe: $6e
    db $e3                                        ; $53ff: $e3
    rst $10                                       ; $5400: $d7

jr_001_5401:
    jr c, jr_001_5401                             ; $5401: $38 $fe

    rst $38                                       ; $5403: $ff
    ld [bc], a                                    ; $5404: $02
    cp $02                                        ; $5405: $fe $02
    ld a, [$7e06]                                 ; $5407: $fa $06 $7e
    add h                                         ; $540a: $84
    cp h                                          ; $540b: $bc
    rst $38                                       ; $540c: $ff
    call nz, $c47c                                ; $540d: $c4 $7c $c4
    db $f4                                        ; $5410: $f4
    ld c, h                                       ; $5411: $4c
    db $fc                                        ; $5412: $fc
    ld c, b                                       ; $5413: $48
    rrca                                          ; $5414: $0f
    rst $38                                       ; $5415: $ff
    rlca                                          ; $5416: $07
    ld a, e                                       ; $5417: $7b
    ld a, h                                       ; $5418: $7c
    ld a, a                                       ; $5419: $7f
    ld b, b                                       ; $541a: $40
    ld a, a                                       ; $541b: $7f
    ld b, b                                       ; $541c: $40
    ld a, [hl]                                    ; $541d: $7e
    rst $38                                       ; $541e: $ff
    ld b, a                                       ; $541f: $47
    ld a, l                                       ; $5420: $7d
    ld b, l                                       ; $5421: $45
    rst $38                                       ; $5422: $ff
    ld b, a                                       ; $5423: $47
    cp a                                          ; $5424: $bf
    ret nz                                        ; $5425: $c0

    ld sp, hl                                     ; $5426: $f9
    rst $38                                       ; $5427: $ff
    ld sp, hl                                     ; $5428: $f9
    ld sp, hl                                     ; $5429: $f9
    add hl, bc                                    ; $542a: $09
    jp hl                                         ; $542b: $e9


    add hl, de                                    ; $542c: $19
    ei                                            ; $542d: $fb
    ld de, $7ff3                                  ; $542e: $11 $f3 $7f
    ld [de], a                                    ; $5431: $12
    ld a, [c]                                     ; $5432: $f2
    ld [c], a                                     ; $5433: $e2
    add $c2                                       ; $5434: $c6 $c2
    adc $4e                                       ; $5436: $ce $4e

jr_001_5438:
    rrca                                          ; $5438: $0f
    ld [c], a                                     ; $5439: $e2
    ld a, [$c80b]                                 ; $543a: $fa $0b $c8
    ld [bc], a                                    ; $543d: $02
    rst $38                                       ; $543e: $ff
    ldh [rTMA], a                                 ; $543f: $e0 $06
    ld [bc], a                                    ; $5441: $02
    inc b                                         ; $5442: $04
    ld b, $04                                     ; $5443: $06 $04
    cp $ff                                        ; $5445: $fe $ff
    ldh [$0c], a                                  ; $5447: $e0 $0c
    inc b                                         ; $5449: $04
    ld [$5e0c], sp                                ; $544a: $08 $0c $5e
    ld h, c                                       ; $544d: $61
    ld a, a                                       ; $544e: $7f
    ld a, l                                       ; $544f: $7d
    ld b, c                                       ; $5450: $41
    cp $e0                                        ; $5451: $fe $e0
    pop bc                                        ; $5453: $c1
    cp a                                          ; $5454: $bf
    pop bc                                        ; $5455: $c1
    rst $38                                       ; $5456: $ff
    add c                                         ; $5457: $81
    cp $e1                                        ; $5458: $fe $e1
    rst $38                                       ; $545a: $ff
    rst $30                                       ; $545b: $f7
    ld [$9c6b], sp                                ; $545c: $08 $6b $9c
    sub l                                         ; $545f: $95
    cp $67                                        ; $5460: $fe $67
    cp $ff                                        ; $5462: $fe $ff
    dec bc                                        ; $5464: $0b
    ld c, $0b                                     ; $5465: $0e $0b
    ld c, $07                                     ; $5467: $0e $07
    ld c, $22                                     ; $5469: $0e $22
    inc hl                                        ; $546b: $23
    rst $38                                       ; $546c: $ff
    xor $3f                                       ; $546d: $ee $3f
    ret nc                                        ; $546f: $d0

    ccf                                           ; $5470: $3f
    ldh a, [$1f]                                  ; $5471: $f0 $1f
    add sp, $1f                                   ; $5473: $e8 $1f
    rst $38                                       ; $5475: $ff
    ld hl, sp+$0f                                 ; $5476: $f8 $0f
    xor $1f                                       ; $5478: $ee $1f
    or c                                          ; $547a: $b1
    ld a, c                                       ; $547b: $79
    pop bc                                        ; $547c: $c1
    pop hl                                        ; $547d: $e1
    ei                                            ; $547e: $fb
    ld [$feff], sp                                ; $547f: $08 $ff $fe
    rst $20                                       ; $5482: $e7
    rrca                                          ; $5483: $0f
    rst $38                                       ; $5484: $ff
    inc b                                         ; $5485: $04
    db $fc                                        ; $5486: $fc
    ld [bc], a                                    ; $5487: $02
    ld a, [$e00c]                                 ; $5488: $fa $0c $e0
    jr nz, jr_001_548d                            ; $548b: $20 $00

jr_001_548d:
    ld [c], a                                     ; $548d: $e2
    jr z, @+$01                                   ; $548e: $28 $ff

    call nz, Call_000_02ef                        ; $5490: $c4 $ef $02
    rst $38                                       ; $5493: $ff
    rlca                                          ; $5494: $07
    ld e, a                                       ; $5495: $5f
    ld h, c                                       ; $5496: $61
    ld a, a                                       ; $5497: $7f
    pop bc                                        ; $5498: $c1
    rst $38                                       ; $5499: $ff
    pop bc                                        ; $549a: $c1
    ld a, a                                       ; $549b: $7f
    cp $fe                                        ; $549c: $fe $fe
    db $e4                                        ; $549e: $e4
    rst $18                                       ; $549f: $df
    pop hl                                        ; $54a0: $e1
    rlca                                          ; $54a1: $07
    rst $38                                       ; $54a2: $ff
    dec b                                         ; $54a3: $05
    db $fd                                        ; $54a4: $fd
    ld b, $fe                                     ; $54a5: $06 $fe
    or e                                          ; $54a7: $b3
    jp nz, $ff80                                  ; $54a8: $c2 $80 $ff

    ld b, b                                       ; $54ab: $40
    rst $38                                       ; $54ac: $ff
    inc hl                                        ; $54ad: $23
    ld a, a                                       ; $54ae: $7f
    ld [$f8ff], sp                                ; $54af: $08 $ff $f8
    rrca                                          ; $54b2: $0f
    db $fc                                        ; $54b3: $fc
    dec bc                                        ; $54b4: $0b
    ei                                            ; $54b5: $fb
    add hl, bc                                    ; $54b6: $09
    rst $38                                       ; $54b7: $ff
    rrca                                          ; $54b8: $0f
    rst $38                                       ; $54b9: $ff
    cp $0b                                        ; $54ba: $fe $0b
    ld sp, hl                                     ; $54bc: $f9
    ld [hl], d                                    ; $54bd: $72
    ld hl, sp-$7d                                 ; $54be: $f8 $83
    jp nz, $fff7                                  ; $54c0: $c2 $f7 $ff

    adc l                                         ; $54c3: $8d
    cp $8b                                        ; $54c4: $fe $8b
    ld a, d                                       ; $54c6: $7a
    adc e                                         ; $54c7: $8b
    ld [hl], a                                    ; $54c8: $77
    adc l                                         ; $54c9: $8d
    cp d                                          ; $54ca: $ba
    rst $38                                       ; $54cb: $ff
    rst $00                                       ; $54cc: $c7
    rst $18                                       ; $54cd: $df
    ldh [$6f], a                                  ; $54ce: $e0 $6f
    jr nc, jr_001_5509                            ; $54d0: $30 $37

    jr @-$03                                      ; $54d2: $18 $fb

    db $fd                                        ; $54d4: $fd
    ld b, $db                                     ; $54d5: $06 $db
    ret nz                                        ; $54d7: $c0

    ld [hl+], a                                   ; $54d8: $22
    rst $38                                       ; $54d9: $ff
    ld [c], a                                     ; $54da: $e2
    rst $38                                       ; $54db: $ff
    ld [bc], a                                    ; $54dc: $02
    ld a, [$07ff]                                 ; $54dd: $fa $ff $07
    rst $28                                       ; $54e0: $ef
    dec e                                         ; $54e1: $1d
    ld a, c                                       ; $54e2: $79
    ldh a, [rIE]                                  ; $54e3: $f0 $ff
    jr c, @-$0f                                   ; $54e5: $38 $ef

    rst $38                                       ; $54e7: $ff
    jr z, @-$27                                   ; $54e8: $28 $d7

    jr c, @-$01                                   ; $54ea: $38 $fd

    inc bc                                        ; $54ec: $03
    ld a, [$fc07]                                 ; $54ed: $fa $07 $fc
    rst $38                                       ; $54f0: $ff
    rlca                                          ; $54f1: $07
    ld [hl], h                                    ; $54f2: $74
    adc a                                         ; $54f3: $8f
    cp c                                          ; $54f4: $b9
    rst $08                                       ; $54f5: $cf
    ld hl, sp+$48                                 ; $54f6: $f8 $48
    add sp, -$01                                  ; $54f8: $e8 $ff
    ld e, b                                       ; $54fa: $58
    rst $38                                       ; $54fb: $ff
    ld e, a                                       ; $54fc: $5f
    rst $38                                       ; $54fd: $ff
    ret nz                                        ; $54fe: $c0

    cpl                                           ; $54ff: $2f
    ldh a, [rNR22]                                ; $5500: $f0 $17
    rst $28                                       ; $5502: $ef
    ld hl, sp+$0f                                 ; $5503: $f8 $0f
    ld hl, sp-$71                                 ; $5505: $f8 $8f
    sbc c                                         ; $5507: $99
    and b                                         ; $5508: $a0

jr_001_5509:
    rst $38                                       ; $5509: $ff
    add b                                         ; $550a: $80
    cp $ff                                        ; $550b: $fe $ff
    rst $20                                       ; $550d: $e7
    rst $38                                       ; $550e: $ff
    dec h                                         ; $550f: $25
    cp h                                          ; $5510: $bc
    ld h, h                                       ; $5511: $64
    call c, Call_001_7c64                         ; $5512: $dc $64 $7c
    rst $18                                       ; $5515: $df
    call nz, $c4bc                                ; $5516: $c4 $bc $c4
    ret z                                         ; $5519: $c8

    ld c, b                                       ; $551a: $48
    cp $e2                                        ; $551b: $fe $e2
    ret z                                         ; $551d: $c8

    ld [$ffce], sp                                ; $551e: $08 $ce $ff
    ldh [$f8], a                                  ; $5521: $e0 $f8
    ld hl, sp-$79                                 ; $5523: $f8 $87
    or b                                          ; $5525: $b0
    and [hl]                                      ; $5526: $a6
    ld [$e2a3], sp                                ; $5527: $08 $a3 $e2
    ld [c], a                                     ; $552a: $e2
    dec e                                         ; $552b: $1d
    add hl, bc                                    ; $552c: $09
    rst $20                                       ; $552d: $e7
    pop hl                                        ; $552e: $e1

jr_001_552f:
    ld [$0f0f], sp                                ; $552f: $08 $0f $0f
    cp b                                          ; $5532: $b8
    xor e                                         ; $5533: $ab
    or d                                          ; $5534: $b2
    and e                                         ; $5535: $a3
    db $e4                                        ; $5536: $e4
    add c                                         ; $5537: $81

jr_001_5538:
    rst $38                                       ; $5538: $ff
    inc sp                                        ; $5539: $33
    inc hl                                        ; $553a: $23
    jr c, jr_001_556d                             ; $553b: $38 $30

    inc a                                         ; $553d: $3c
    jr z, jr_001_552f                             ; $553e: $28 $ef

    rst $00                                       ; $5540: $c7
    cp $d8                                        ; $5541: $fe $d8
    add l                                         ; $5543: $85
    adc l                                         ; $5544: $8d
    dec b                                         ; $5545: $05
    inc a                                         ; $5546: $3c
    inc e                                         ; $5547: $1c
    db $f4                                        ; $5548: $f4
    ld h, [hl]                                    ; $5549: $66
    rst $00                                       ; $554a: $c7
    db $ed                                        ; $554b: $ed
    add e                                         ; $554c: $83
    ret z                                         ; $554d: $c8

    add l                                         ; $554e: $85
    db $fc                                        ; $554f: $fc
    db $fc                                        ; $5550: $fc
    ret nc                                        ; $5551: $d0

    db $eb                                        ; $5552: $eb
    dec de                                        ; $5553: $1b
    ld de, $6ffc                                  ; $5554: $11 $fc $6f
    ld hl, sp-$72                                 ; $5557: $f8 $8e
    add h                                         ; $5559: $84
    add a                                         ; $555a: $87
    ldh [$e6], a                                  ; $555b: $e0 $e6
    rst $38                                       ; $555d: $ff
    cp [hl]                                       ; $555e: $be
    ld a, [c]                                     ; $555f: $f2
    add c                                         ; $5560: $81
    ld a, [hl]                                    ; $5561: $7e
    or b                                          ; $5562: $b0
    rst $20                                       ; $5563: $e7
    ld a, $1c                                     ; $5564: $3e $1c
    ld b, b                                       ; $5566: $40
    nop                                           ; $5567: $00
    db $e3                                        ; $5568: $e3
    ld b, c                                       ; $5569: $41
    ld [$bee1], a                                 ; $556a: $ea $e1 $be

jr_001_556d:
    add [hl]                                      ; $556d: $86
    add e                                         ; $556e: $83
    rra                                           ; $556f: $1f
    dec c                                         ; $5570: $0d
    ld sp, hl                                     ; $5571: $f9
    ld [hl], b                                    ; $5572: $70
    ret nz                                        ; $5573: $c0

    ld l, e                                       ; $5574: $6b
    ret z                                         ; $5575: $c8

    sbc a                                         ; $5576: $9f
    ld a, a                                       ; $5577: $7f
    rrca                                          ; $5578: $0f
    ret nz                                        ; $5579: $c0

    add b                                         ; $557a: $80
    ldh [rLCDC], a                                ; $557b: $e0 $40
    ld a, a                                       ; $557d: $7f
    ccf                                           ; $557e: $3f
    ld l, b                                       ; $557f: $68
    add l                                         ; $5580: $85
    rst $38                                       ; $5581: $ff
    rst $08                                       ; $5582: $cf
    cp $61                                        ; $5583: $fe $61
    ccf                                           ; $5585: $3f
    ld hl, sp+$7f                                 ; $5586: $f8 $7f
    adc $87                                       ; $5588: $ce $87
    ei                                            ; $558a: $fb
    inc bc                                        ; $558b: $03
    ld bc, $8356                                  ; $558c: $01 $56 $83
    ld [hl], d                                    ; $558f: $72
    ld a, a                                       ; $5590: $7f
    push af                                       ; $5591: $f5
    rst $18                                       ; $5592: $df
    ld a, [hl+]                                   ; $5593: $2a
    sbc $a8                                       ; $5594: $de $a8
    and b                                         ; $5596: $a0
    add b                                         ; $5597: $80
    rst $38                                       ; $5598: $ff
    pop af                                        ; $5599: $f1
    ld a, a                                       ; $559a: $7f
    add d                                         ; $559b: $82
    add c                                         ; $559c: $81
    ret                                           ; $559d: $c9


    ld hl, sp-$01                                 ; $559e: $f8 $ff
    ld c, h                                       ; $55a0: $4c
    ld hl, sp-$62                                 ; $55a1: $f8 $9e
    db $fc                                        ; $55a3: $fc
    scf                                           ; $55a4: $37
    rst $20                                       ; $55a5: $e7
    ld h, b                                       ; $55a6: $60
    ret nz                                        ; $55a7: $c0

    call z, $e3ba                                 ; $55a8: $cc $ba $e3
    ld [hl], b                                    ; $55ab: $70
    db $ed                                        ; $55ac: $ed
    add e                                         ; $55ad: $83
    add c                                         ; $55ae: $81
    rst $38                                       ; $55af: $ff
    db $e3                                        ; $55b0: $e3
    jr jr_001_5538                                ; $55b1: $18 $85

    rst $30                                       ; $55b3: $f7
    ld [hl], $7f                                  ; $55b4: $36 $7f
    cp a                                          ; $55b6: $bf
    ld [hl], $bf                                  ; $55b7: $36 $bf
    ld a, [hl+]                                   ; $55b9: $2a
    cp a                                          ; $55ba: $bf
    ld a, [hl+]                                   ; $55bb: $2a

jr_001_55bc:
    sub l                                         ; $55bc: $95
    rlca                                          ; $55bd: $07
    add h                                         ; $55be: $84
    ld e, a                                       ; $55bf: $5f
    ld a, l                                       ; $55c0: $7d
    ld a, l                                       ; $55c1: $7d
    ccf                                           ; $55c2: $3f
    ld de, $fe19                                  ; $55c3: $11 $19 $fe
    and $08                                       ; $55c6: $e6 $08
    ldh a, [$a0]                                  ; $55c8: $f0 $a0
    rst $38                                       ; $55ca: $ff
    add c                                         ; $55cb: $81
    nop                                           ; $55cc: $00
    and $66                                       ; $55cd: $e6 $66
    di                                            ; $55cf: $f3
    sub d                                         ; $55d0: $92
    sbc e                                         ; $55d1: $9b
    ld [de], a                                    ; $55d2: $12
    db $fc                                        ; $55d3: $fc
    cp $e1                                        ; $55d4: $fe $e1
    and c                                         ; $55d6: $a1
    add e                                         ; $55d7: $83
    inc a                                         ; $55d8: $3c
    inc a                                         ; $55d9: $3c
    ld e, [hl]                                    ; $55da: $5e
    ld b, b                                       ; $55db: $40
    jr c, jr_001_5616                             ; $55dc: $38 $38

    rst $38                                       ; $55de: $ff
    inc e                                         ; $55df: $1c
    inc b                                         ; $55e0: $04
    ld a, d                                       ; $55e1: $7a
    ld a, b                                       ; $55e2: $78
    inc a                                         ; $55e3: $3c
    nop                                           ; $55e4: $00
    rlca                                          ; $55e5: $07
    rlca                                          ; $55e6: $07
    rst $38                                       ; $55e7: $ff
    dec bc                                        ; $55e8: $0b
    ld [$080c], sp                                ; $55e9: $08 $0c $08
    rrca                                          ; $55ec: $0f
    dec bc                                        ; $55ed: $0b
    dec c                                         ; $55ee: $0d
    ld [$0ddf], sp                                ; $55ef: $08 $df $0d
    add hl, bc                                    ; $55f2: $09
    ld b, $06                                     ; $55f3: $06 $06
    inc bc                                        ; $55f5: $03
    or [hl]                                       ; $55f6: $b6
    add d                                         ; $55f7: $82
    ld e, h                                       ; $55f8: $5c
    inc e                                         ; $55f9: $1c
    rst $38                                       ; $55fa: $ff
    adc [hl]                                      ; $55fb: $8e
    add d                                         ; $55fc: $82
    rst $18                                       ; $55fd: $df
    sbc [hl]                                      ; $55fe: $9e
    rst $28                                       ; $55ff: $ef
    and d                                         ; $5600: $a2
    db $dd                                        ; $5601: $dd
    sbc l                                         ; $5602: $9d
    db $fd                                        ; $5603: $fd
    ld c, [hl]                                    ; $5604: $4e
    or c                                          ; $5605: $b1
    ld h, d                                       ; $5606: $62
    ld e, d                                       ; $5607: $5a
    ld e, d                                       ; $5608: $5a
    ld l, l                                       ; $5609: $6d
    ld l, l                                       ; $560a: $6d
    ld a, a                                       ; $560b: $7f
    ld c, c                                       ; $560c: $49
    push af                                       ; $560d: $f5
    ld l, l                                       ; $560e: $6d
    cp $e0                                        ; $560f: $fe $e0
    and h                                         ; $5611: $a4
    and c                                         ; $5612: $a1
    ld h, d                                       ; $5613: $62
    jr c, jr_001_564e                             ; $5614: $38 $38

jr_001_5616:
    ld e, h                                       ; $5616: $5c
    ld b, h                                       ; $5617: $44
    ld a, a                                       ; $5618: $7f
    ld a, [$fc78]                                 ; $5619: $fa $78 $fc
    ld b, b                                       ; $561c: $40
    cp b                                          ; $561d: $b8
    jr c, jr_001_55bc                             ; $561e: $38 $9c

    ld c, b                                       ; $5620: $48
    add b                                         ; $5621: $80
    cp c                                          ; $5622: $b9
    rrca                                          ; $5623: $0f
    ret nz                                        ; $5624: $c0

    pop hl                                        ; $5625: $e1
    ld a, [$0ce2]                                 ; $5626: $fa $e2 $0c
    ld [$7604], sp                                ; $5629: $08 $04 $76
    add d                                         ; $562c: $82
    call c, $9cff                                 ; $562d: $dc $ff $9c
    ld c, [hl]                                    ; $5630: $4e
    ld [bc], a                                    ; $5631: $02
    sbc a                                         ; $5632: $9f
    ld e, $2f                                     ; $5633: $1e $2f
    ld [hl+], a                                   ; $5635: $22
    dec e                                         ; $5636: $1d
    rst $38                                       ; $5637: $ff
    dec e                                         ; $5638: $1d
    ld c, $00                                     ; $5639: $0e $00
    ld b, b                                       ; $563b: $40
    ld b, b                                       ; $563c: $40
    ld h, b                                       ; $563d: $60
    ld b, b                                       ; $563e: $40
    ld h, h                                       ; $563f: $64
    rst $38                                       ; $5640: $ff
    ld b, h                                       ; $5641: $44
    ld l, b                                       ; $5642: $68
    ld c, b                                       ; $5643: $48
    ld [hl], h                                    ; $5644: $74
    ld d, b                                       ; $5645: $50
    ld l, b                                       ; $5646: $68
    ld l, b                                       ; $5647: $68
    ld [hl], h                                    ; $5648: $74
    cp a                                          ; $5649: $bf
    ld b, h                                       ; $564a: $44
    and b                                         ; $564b: $a0
    nop                                           ; $564c: $00
    inc e                                         ; $564d: $1c

jr_001_564e:
    inc e                                         ; $564e: $1c
    ld c, $90                                     ; $564f: $0e $90
    ldh [$0d], a                                  ; $5651: $e0 $0d
    ld [hl], c                                    ; $5653: $71
    add hl, bc                                    ; $5654: $09
    jp nc, $e0e1                                  ; $5655: $d2 $e1 $e0

    pop hl                                        ; $5658: $e1
    ld d, b                                       ; $5659: $50
    ld h, c                                       ; $565a: $61
    ldh a, [$f0]                                  ; $565b: $f0 $f0
    ld a, b                                       ; $565d: $78
    ret nz                                        ; $565e: $c0

    ld h, b                                       ; $565f: $60
    rst $38                                       ; $5660: $ff
    ld [hl], b                                    ; $5661: $70
    db $10                                        ; $5662: $10
    add sp, -$20                                  ; $5663: $e8 $e0
    ldh a, [rP1]                                  ; $5665: $f0 $00
    adc b                                         ; $5667: $88
    adc b                                         ; $5668: $88
    rst $38                                       ; $5669: $ff
    call z, $cd88                                 ; $566a: $cc $88 $cd
    adc c                                         ; $566d: $89
    adc $8a                                       ; $566e: $ce $8a
    call $df89                                    ; $5670: $cd $89 $df
    call z, Call_001_7788                         ; $5673: $cc $88 $77
    ld [hl], e                                    ; $5676: $73
    add hl, sp                                    ; $5677: $39
    ld sp, $e762                                  ; $5678: $31 $62 $e7
    rst $20                                       ; $567b: $e7
    ld l, a                                       ; $567c: $6f
    ei                                            ; $567d: $fb
    ld [$cfcf], sp                                ; $567e: $08 $cf $cf
    ret c                                         ; $5681: $d8

    and b                                         ; $5682: $a0
    rst $00                                       ; $5683: $c7
    db $e3                                        ; $5684: $e3
    ld [hl+], a                                   ; $5685: $22
    add c                                         ; $5686: $81
    cp $23                                        ; $5687: $fe $23
    add b                                         ; $5689: $80
    add d                                         ; $568a: $82
    add d                                         ; $568b: $82
    ld b, e                                       ; $568c: $43
    inc bc                                        ; $568d: $03

jr_001_568e:
    add e                                         ; $568e: $83
    ld [bc], a                                    ; $568f: $02
    inc bc                                        ; $5690: $03
    cp $24                                        ; $5691: $fe $24
    ldh [$80], a                                  ; $5693: $e0 $80
    add b                                         ; $5695: $80
    ld b, b                                       ; $5696: $40
    ld b, b                                       ; $5697: $40
    ldh [rLCDC], a                                ; $5698: $e0 $40
    or b                                          ; $569a: $b0
    rst $38                                       ; $569b: $ff
    jr nz, jr_001_568e                            ; $569c: $20 $f0

    ldh [$f0], a                                  ; $569e: $e0 $f0
    jr nz, jr_001_56d2                            ; $56a0: $20 $30

    jr nz, jr_001_56b4                            ; $56a2: $20 $10

    rst $38                                       ; $56a4: $ff
    nop                                           ; $56a5: $00
    ld [hl], b                                    ; $56a6: $70
    ld [hl], b                                    ; $56a7: $70
    cp b                                          ; $56a8: $b8
    adc b                                         ; $56a9: $88
    push bc                                       ; $56aa: $c5
    add c                                         ; $56ab: $81
    ld hl, sp-$01                                 ; $56ac: $f8 $ff
    cp b                                          ; $56ae: $b8
    db $dd                                        ; $56af: $dd
    adc c                                         ; $56b0: $89
    sbc $9a                                       ; $56b1: $de $9a
    ld l, l                                       ; $56b3: $6d

jr_001_56b4:
    ld l, c                                       ; $56b4: $69
    inc [hl]                                      ; $56b5: $34
    cp $f1                                        ; $56b6: $fe $f1
    ld b, d                                       ; $56b8: $42
    push bc                                       ; $56b9: $c5
    push bc                                       ; $56ba: $c5
    and $26                                       ; $56bb: $e6 $26
    rst $30                                       ; $56bd: $f7
    db $e4                                        ; $56be: $e4
    or $ef                                        ; $56bf: $f6 $ef
    inc h                                         ; $56c1: $24
    sub $d4                                       ; $56c2: $d6 $d4
    ld [$42e1], a                                 ; $56c4: $ea $e1 $42
    and e                                         ; $56c7: $a3
    and e                                         ; $56c8: $a3
    push de                                       ; $56c9: $d5
    rst $38                                       ; $56ca: $ff
    call nc, $97ff                                ; $56cb: $d4 $ff $97
    rst $18                                       ; $56ce: $df
    sub h                                         ; $56cf: $94
    db $db                                        ; $56d0: $db
    sub e                                         ; $56d1: $93

jr_001_56d2:
    ld c, c                                       ; $56d2: $49
    ld a, $c4                                     ; $56d3: $3e $c4
    ld h, h                                       ; $56d5: $64
    ret nz                                        ; $56d6: $c0

    ld b, b                                       ; $56d7: $40
    and b                                         ; $56d8: $a0
    add b                                         ; $56d9: $80
    ret nz                                        ; $56da: $c0

    ld hl, sp-$1f                                 ; $56db: $f8 $e1
    ld [hl], h                                    ; $56dd: $74
    ldh [$fd], a                                  ; $56de: $e0 $fd
    ld hl, sp-$80                                 ; $56e0: $f8 $80
    ldh [$f6], a                                  ; $56e2: $e0 $f6
    ld a, [c]                                     ; $56e4: $f2
    ei                                            ; $56e5: $fb
    adc d                                         ; $56e6: $8a
    rst $08                                       ; $56e7: $cf
    adc d                                         ; $56e8: $8a
    rst $30                                       ; $56e9: $f7
    push af                                       ; $56ea: $f5
    pop af                                        ; $56eb: $f1
    ld a, b                                       ; $56ec: $78
    or c                                          ; $56ed: $b1
    ld b, d                                       ; $56ee: $42
    ret z                                         ; $56ef: $c8

    ret z                                         ; $56f0: $c8

    db $ec                                        ; $56f1: $ec
    jr z, @+$01                                   ; $56f2: $28 $ff

    dec a                                         ; $56f4: $3d
    add hl, hl                                    ; $56f5: $29
    ld [hl], $26                                  ; $56f6: $36 $26
    db $d3                                        ; $56f8: $d3
    ret nz                                        ; $56f9: $c0

    rst $20                                       ; $56fa: $e7
    rlca                                          ; $56fb: $07
    xor $80                                       ; $56fc: $ee $80
    pop hl                                        ; $56fe: $e1
    add c                                         ; $56ff: $81
    add c                                         ; $5700: $81
    pop bc                                        ; $5701: $c1
    cp $e2                                        ; $5702: $fe $e2
    ret nz                                        ; $5704: $c0

    add b                                         ; $5705: $80
    ld b, b                                       ; $5706: $40
    cp $48                                        ; $5707: $fe $48
    ld [c], a                                     ; $5709: $e2
    adc e                                         ; $570a: $8b
    inc bc                                        ; $570b: $03
    add l                                         ; $570c: $85
    inc b                                         ; $570d: $04
    add [hl]                                      ; $570e: $86
    inc b                                         ; $570f: $04
    sub [hl]                                      ; $5710: $96
    rst $28                                       ; $5711: $ef
    inc d                                         ; $5712: $14
    db $eb                                        ; $5713: $eb
    db $e3                                        ; $5714: $e3
    ld [hl], c                                    ; $5715: $71
    add c                                         ; $5716: $81
    ld b, b                                       ; $5717: $40
    inc c                                         ; $5718: $0c
    ld [$bb8c], sp                                ; $5719: $08 $8c $bb
    adc b                                         ; $571c: $88
    call $c2d2                                    ; $571d: $cd $d2 $c2
    xor h                                         ; $5720: $ac
    adc b                                         ; $5721: $88
    call nz, $4271                                ; $5722: $c4 $71 $42
    push hl                                       ; $5725: $e5
    rst $38                                       ; $5726: $ff
    push hl                                       ; $5727: $e5
    halt                                          ; $5728: $76
    ld d, $9f                                     ; $5729: $16 $9f
    inc d                                         ; $572b: $14
    sbc [hl]                                      ; $572c: $9e
    inc d                                         ; $572d: $14
    xor $f3                                       ; $572e: $ee $f3
    db $e4                                        ; $5730: $e4
    ld [hl], d                                    ; $5731: $72
    sub b                                         ; $5732: $90
    push hl                                       ; $5733: $e5
    ld e, c                                       ; $5734: $59
    ld b, [hl]                                    ; $5735: $46
    ld b, h                                       ; $5736: $44

jr_001_5737:
    ld b, h                                       ; $5737: $44
    ld h, [hl]                                    ; $5738: $66
    ld b, h                                       ; $5739: $44

jr_001_573a:
    cp e                                          ; $573a: $bb
    ld h, a                                       ; $573b: $67
    ld b, l                                       ; $573c: $45
    cp $e3                                        ; $573d: $fe $e3
    dec sp                                        ; $573f: $3b
    add hl, sp                                    ; $5740: $39
    inc e                                         ; $5741: $1c
    ld b, b                                       ; $5742: $40
    add b                                         ; $5743: $80
    ld bc, $00bf                                  ; $5744: $01 $bf $00
    ld h, [hl]                                    ; $5747: $66
    ld h, [hl]                                    ; $5748: $66
    or e                                          ; $5749: $b3
    sub d                                         ; $574a: $92
    db $db                                        ; $574b: $db
    ld d, b                                       ; $574c: $50
    call nz, $ee20                                ; $574d: $c4 $20 $ee
    ld a, [hl+]                                   ; $5750: $2a
    ldh [rSVBK], a                                ; $5751: $e0 $70
    ld [hl], b                                    ; $5753: $70
    jr c, jr_001_577a                             ; $5754: $38 $24

    ldh [$30], a                                  ; $5756: $e0 $30
    jr nz, @+$1a                                  ; $5758: $20 $18

    db $e3                                        ; $575a: $e3
    jr jr_001_5769                                ; $575b: $18 $0c

    ld hl, $0955                                  ; $575d: $21 $55 $09
    ld b, [hl]                                    ; $5760: $46
    nop                                           ; $5761: $00
    pop hl                                        ; $5762: $e1
    add $82                                       ; $5763: $c6 $82
    ld [hl], e                                    ; $5765: $73
    rst $38                                       ; $5766: $ff
    ld [hl], e                                    ; $5767: $73
    dec sp                                        ; $5768: $3b

jr_001_5769:
    ld a, [bc]                                    ; $5769: $0a
    adc a                                         ; $576a: $8f
    adc e                                         ; $576b: $8b
    ld [hl], a                                    ; $576c: $77
    ld [hl], d                                    ; $576d: $72
    dec sp                                        ; $576e: $3b
    db $fd                                        ; $576f: $fd
    ld [bc], a                                    ; $5770: $02
    ldh a, [rNR42]                                ; $5771: $f0 $21
    rst $00                                       ; $5773: $c7
    rst $00                                       ; $5774: $c7
    ld l, e                                       ; $5775: $6b
    jr z, jr_001_5737                             ; $5776: $28 $bf

    cpl                                           ; $5778: $2f
    push af                                       ; $5779: $f5

jr_001_577a:
    ccf                                           ; $577a: $3f
    ret nz                                        ; $577b: $c0

    ret nz                                        ; $577c: $c0

    ld h, e                                       ; $577d: $63
    pop hl                                        ; $577e: $e1
    ld [hl+], a                                   ; $577f: $22
    inc e                                         ; $5780: $1c
    inc e                                         ; $5781: $1c
    xor [hl]                                      ; $5782: $ae
    and d                                         ; $5783: $a2
    rst $38                                       ; $5784: $ff
    ld [hl], c                                    ; $5785: $71
    jr nz, jr_001_573a                            ; $5786: $20 $b2

    ld [hl+], a                                   ; $5788: $22
    dec e                                         ; $5789: $1d
    inc e                                         ; $578a: $1c
    adc [hl]                                      ; $578b: $8e
    nop                                           ; $578c: $00
    rst $38                                       ; $578d: $ff
    ld b, e                                       ; $578e: $43
    ld b, e                                       ; $578f: $43
    dec h                                         ; $5790: $25
    inc b                                         ; $5791: $04
    add $c4                                       ; $5792: $c6 $c4
    ld l, [hl]                                    ; $5794: $6e
    ld c, [hl]                                    ; $5795: $4e
    db $dd                                        ; $5796: $dd
    ld h, a                                       ; $5797: $67
    ld a, b                                       ; $5798: $78
    ldh [$66], a                                  ; $5799: $e0 $66
    ld b, h                                       ; $579b: $44
    ld [hl+], a                                   ; $579c: $22
    sub b                                         ; $579d: $90
    ldh [$90], a                                  ; $579e: $e0 $90
    nop                                           ; $57a0: $00
    rst $18                                       ; $57a1: $df
    ld h, e                                       ; $57a2: $63
    ld h, e                                       ; $57a3: $63
    dec [hl]                                      ; $57a4: $35
    inc h                                         ; $57a5: $24
    ld [hl], $fe                                  ; $57a6: $36 $fe
    ldh [$33], a                                  ; $57a8: $e0 $33
    inc hl                                        ; $57aa: $23
    db $fd                                        ; $57ab: $fd
    ld de, $22b1                                  ; $57ac: $11 $b1 $22
    adc [hl]                                      ; $57af: $8e
    adc [hl]                                      ; $57b0: $8e
    rst $00                                       ; $57b1: $c7
    ld b, c                                       ; $57b2: $41
    cpl                                           ; $57b3: $2f
    rrca                                          ; $57b4: $0f
    rst $38                                       ; $57b5: $ff
    ld d, a                                       ; $57b6: $57
    ld d, c                                       ; $57b7: $51
    xor [hl]                                      ; $57b8: $ae
    adc [hl]                                      ; $57b9: $8e
    rst $00                                       ; $57ba: $c7
    nop                                           ; $57bb: $00
    inc sp                                        ; $57bc: $33
    inc sp                                        ; $57bd: $33
    jp c, $a3a2                                   ; $57be: $da $a2 $a3

    sbc c                                         ; $57c1: $99
    cp $e1                                        ; $57c2: $fe $e1
    sub c                                         ; $57c4: $91
    ld c, b                                       ; $57c5: $48
    add [hl]                                      ; $57c6: $86
    ld b, c                                       ; $57c7: $41
    nop                                           ; $57c8: $00
    and d                                         ; $57c9: $a2
    rst $38                                       ; $57ca: $ff
    ld [hl+], a                                   ; $57cb: $22
    or e                                          ; $57cc: $b3
    ld [hl+], a                                   ; $57cd: $22

jr_001_57ce:
    or a                                          ; $57ce: $b7
    ld h, $9b                                     ; $57cf: $26 $9b
    ld a, [de]                                    ; $57d1: $1a
    adc a                                         ; $57d2: $8f
    ccf                                           ; $57d3: $3f
    ld [bc], a                                    ; $57d4: $02
    sbc l                                         ; $57d5: $9d
    inc e                                         ; $57d6: $1c
    rra                                           ; $57d7: $1f
    rra                                           ; $57d8: $1f
    rrca                                          ; $57d9: $0f
    add e                                         ; $57da: $83
    ld h, b                                       ; $57db: $60
    cp $e5                                        ; $57dc: $fe $e5
    ld [hl], d                                    ; $57de: $72
    add c                                         ; $57df: $81
    pop hl                                        ; $57e0: $e1
    add b                                         ; $57e1: $80
    ret nc                                        ; $57e2: $d0

    and d                                         ; $57e3: $a2
    and d                                         ; $57e4: $a2
    pop hl                                        ; $57e5: $e1
    ld a, [hl-]                                   ; $57e6: $3a
    jr c, jr_001_5805                             ; $57e7: $38 $1c

    sub b                                         ; $57e9: $90
    and b                                         ; $57ea: $a0
    pop af                                        ; $57eb: $f1
    rlca                                          ; $57ec: $07
    ld h, e                                       ; $57ed: $63
    ld h, b                                       ; $57ee: $60
    ld a, [$e0e3]                                 ; $57ef: $fa $e3 $e0
    pop hl                                        ; $57f2: $e1
    sbc b                                         ; $57f3: $98
    sbc b                                         ; $57f4: $98
    call z, Call_000_1f48                         ; $57f5: $cc $48 $1f
    ld l, h                                       ; $57f8: $6c
    ld c, b                                       ; $57f9: $48
    xor h                                         ; $57fa: $ac
    adc b                                         ; $57fb: $88
    call z, $a2ec                                 ; $57fc: $cc $ec $a2
    ret nz                                        ; $57ff: $c0

    and c                                         ; $5800: $a1
    ld a, [hl-]                                   ; $5801: $3a
    add c                                         ; $5802: $81
    rst $38                                       ; $5803: $ff
    ld [hl], e                                    ; $5804: $73

jr_001_5805:
    ld [de], a                                    ; $5805: $12
    ei                                            ; $5806: $fb
    ld a, [c]                                     ; $5807: $f2
    ld a, c                                       ; $5808: $79
    ld de, $e8e8                                  ; $5809: $11 $e8 $e8
    ld sp, hl                                     ; $580c: $f9
    ld [hl], l                                    ; $580d: $75
    jp c, $fc82                                   ; $580e: $da $82 $fc

    jp nz, $b060                                  ; $5811: $c2 $60 $b0

    and b                                         ; $5814: $a0
    ldh a, [rNR41]                                ; $5815: $f0 $20
    pop af                                        ; $5817: $f1
    ret nc                                        ; $5818: $d0

    rst $00                                       ; $5819: $c7
    rst $00                                       ; $581a: $c7
    rla                                           ; $581b: $17
    jr z, jr_001_57ce                             ; $581c: $28 $b0

    push bc                                       ; $581e: $c5
    jr nc, jr_001_5851                            ; $581f: $30 $30

jr_001_5821:
    jr jr_001_5823                                ; $5821: $18 $00

jr_001_5823:
    rst $00                                       ; $5823: $c7
    ld a, b                                       ; $5824: $78
    ld a, b                                       ; $5825: $78
    ld a, h                                       ; $5826: $7c
    xor [hl]                                      ; $5827: $ae
    add $20                                       ; $5828: $c6 $20
    and c                                         ; $582a: $a1
    ldh a, [rSB]                                  ; $582b: $f0 $01
    db $e3                                        ; $582d: $e3
    db $e3                                        ; $582e: $e3
    ld [hl], l                                    ; $582f: $75
    ld [hl], l                                    ; $5830: $75
    ld h, h                                       ; $5831: $64
    ret nz                                        ; $5832: $c0

    pop af                                        ; $5833: $f1
    cp b                                          ; $5834: $b8
    and b                                         ; $5835: $a0
    ld [hl], e                                    ; $5836: $73
    nop                                           ; $5837: $00
    ld [$a05c], sp                                ; $5838: $08 $5c $a0
    ld a, a                                       ; $583b: $7f
    ret c                                         ; $583c: $d8

    ret c                                         ; $583d: $d8

    db $ed                                        ; $583e: $ed
    add hl, bc                                    ; $583f: $09
    adc l                                         ; $5840: $8d
    adc c                                         ; $5841: $89
    call z, $e08a                                 ; $5842: $cc $8a $e0
    cp $60                                        ; $5845: $fe $60
    rst $00                                       ; $5847: $c7
    cp a                                          ; $5848: $bf
    inc [hl]                                      ; $5849: $34
    sbc $d4                                       ; $584a: $de $d4
    ld a, [hl]                                    ; $584c: $7e
    inc d                                         ; $584d: $14
    ld [$acfc], a                                 ; $584e: $ea $fc $ac

jr_001_5851:
    jr nz, @+$12                                  ; $5851: $20 $10

    pop hl                                        ; $5853: $e1
    rst $10                                       ; $5854: $d7
    ld d, c                                       ; $5855: $51
    ld a, [hl]                                    ; $5856: $7e
    ld e, [hl]                                    ; $5857: $5e
    ld a, a                                       ; $5858: $7f
    ld d, b                                       ; $5859: $50
    rst $18                                       ; $585a: $df
    ld l, [hl]                                    ; $585b: $6e
    ld c, [hl]                                    ; $585c: $4e
    daa                                           ; $585d: $27
    nop                                           ; $585e: $00
    inc b                                         ; $585f: $04
    or l                                          ; $5860: $b5
    ld b, b                                       ; $5861: $40
    ld [hl], $34                                  ; $5862: $36 $34
    rst $38                                       ; $5864: $ff
    ld e, [hl]                                    ; $5865: $5e
    ld c, h                                       ; $5866: $4c
    and $44                                       ; $5867: $e6 $44
    ld l, [hl]                                    ; $5869: $6e
    ld c, h                                       ; $586a: $4c
    ld [hl], $34                                  ; $586b: $36 $34
    cp c                                          ; $586d: $b9
    ld a, [de]                                    ; $586e: $1a
    db $10                                        ; $586f: $10
    xor [hl]                                      ; $5870: $ae
    call z, $1ca1                                 ; $5871: $cc $a1 $1c
    inc e                                         ; $5874: $1c
    ld l, $fe                                     ; $5875: $2e $fe
    ret nz                                        ; $5877: $c0

    inc sp                                        ; $5878: $33
    db $fc                                        ; $5879: $fc
    or b                                          ; $587a: $b0
    ret nz                                        ; $587b: $c0

    jr nc, jr_001_5821                            ; $587c: $30 $a3

    or b                                          ; $587e: $b0
    or b                                          ; $587f: $b0
    ret c                                         ; $5880: $d8

    ret nz                                        ; $5881: $c0

    ldh [$80], a                                  ; $5882: $e0 $80
    cp l                                          ; $5884: $bd
    ret nz                                        ; $5885: $c0

    cp $e0                                        ; $5886: $fe $e0
    ld b, b                                       ; $5888: $40
    nop                                           ; $5889: $00
    ld a, c                                       ; $588a: $79
    ld a, c                                       ; $588b: $79
    ld [hl], b                                    ; $588c: $70
    pop hl                                        ; $588d: $e1
    ld a, d                                       ; $588e: $7a
    cp e                                          ; $588f: $bb
    ld a, b                                       ; $5890: $78
    ld a, h                                       ; $5891: $7c
    ld hl, sp-$80                                 ; $5892: $f8 $80
    ld h, b                                       ; $5894: $60
    ld b, b                                       ; $5895: $40
    jr nz, @-$6a                                  ; $5896: $20 $94

    and c                                         ; $5898: $a1
    add b                                         ; $5899: $80
    rst $38                                       ; $589a: $ff
    adc $8e                                       ; $589b: $ce $8e
    rst $10                                       ; $589d: $d7
    sub c                                         ; $589e: $91
    sbc $9e                                       ; $589f: $de $9e
    rst $18                                       ; $58a1: $df
    sub b                                         ; $58a2: $90
    rst $30                                       ; $58a3: $f7
    adc $8e                                       ; $58a4: $ce $8e
    ld b, a                                       ; $58a6: $47
    or b                                          ; $58a7: $b0
    add h                                         ; $58a8: $84
    inc e                                         ; $58a9: $1c
    inc b                                         ; $58aa: $04
    cp [hl]                                       ; $58ab: $be
    inc a                                         ; $58ac: $3c
    rst $18                                       ; $58ad: $df
    ld e, [hl]                                    ; $58ae: $5e
    ld b, h                                       ; $58af: $44
    ld a, [hl-]                                   ; $58b0: $3a
    ld a, [hl-]                                   ; $58b1: $3a
    dec e                                         ; $58b2: $1d
    ld b, c                                       ; $58b3: $41
    ld [bc], a                                    ; $58b4: $02
    ld a, c                                       ; $58b5: $79
    ld a, c                                       ; $58b6: $79
    cp c                                          ; $58b7: $b9
    cp [hl]                                       ; $58b8: $be
    ld a, $c2                                     ; $58b9: $3e $c2
    add b                                         ; $58bb: $80
    and l                                         ; $58bc: $a5
    ret nz                                        ; $58bd: $c0

    ret nz                                        ; $58be: $c0

    ldh [rTMA], a                                 ; $58bf: $e0 $06
    ldh [$e0], a                                  ; $58c1: $e0 $e0
    inc a                                         ; $58c3: $3c
    ld hl, sp-$1f                                 ; $58c4: $f8 $e1
    nop                                           ; $58c6: $00
    jp c, $c0c0                                   ; $58c7: $da $c0 $c0

    ld h, b                                       ; $58ca: $60
    nop                                           ; $58cb: $00
    nop                                           ; $58cc: $00
    nop                                           ; $58cd: $00
    nop                                           ; $58ce: $00
    pop af                                        ; $58cf: $f1
    nop                                           ; $58d0: $00
    rst $38                                       ; $58d1: $ff
    rst $38                                       ; $58d2: $ff
    rst $38                                       ; $58d3: $ff
    rst $38                                       ; $58d4: $ff
    db $fc                                        ; $58d5: $fc
    ei                                            ; $58d6: $fb
    ld bc, $0302                                  ; $58d7: $01 $02 $03
    inc b                                         ; $58da: $04
    rst $38                                       ; $58db: $ff
    dec b                                         ; $58dc: $05
    ld b, $07                                     ; $58dd: $06 $07
    ld [$0a09], sp                                ; $58df: $08 $09 $0a
    dec bc                                        ; $58e2: $0b
    inc c                                         ; $58e3: $0c
    rst $30                                       ; $58e4: $f7
    dec c                                         ; $58e5: $0d
    ld c, $0f                                     ; $58e6: $0e $0f
    rst $08                                       ; $58e8: $cf
    db $ed                                        ; $58e9: $ed
    db $10                                        ; $58ea: $10
    ld de, $1312                                  ; $58eb: $11 $12 $13
    rst $38                                       ; $58ee: $ff
    inc d                                         ; $58ef: $14
    dec d                                         ; $58f0: $15
    ld d, $17                                     ; $58f1: $16 $17
    jr jr_001_590e                                ; $58f3: $18 $19

    ld a, [de]                                    ; $58f5: $1a
    dec de                                        ; $58f6: $1b
    rst $28                                       ; $58f7: $ef
    inc e                                         ; $58f8: $1c
    dec e                                         ; $58f9: $1d
    ld e, $1f                                     ; $58fa: $1e $1f
    xor a                                         ; $58fc: $af
    db $ed                                        ; $58fd: $ed
    jr nz, jr_001_5921                            ; $58fe: $20 $21

    ld [hl+], a                                   ; $5900: $22
    rst $38                                       ; $5901: $ff
    inc hl                                        ; $5902: $23
    inc h                                         ; $5903: $24
    dec h                                         ; $5904: $25
    ld h, $27                                     ; $5905: $26 $27
    jr z, jr_001_5932                             ; $5907: $28 $29

    ld a, [hl+]                                   ; $5909: $2a
    rst $18                                       ; $590a: $df
    dec hl                                        ; $590b: $2b
    inc l                                         ; $590c: $2c
    dec l                                         ; $590d: $2d

jr_001_590e:
    ld l, $2f                                     ; $590e: $2e $2f
    adc a                                         ; $5910: $8f
    db $ed                                        ; $5911: $ed
    jr nc, jr_001_5945                            ; $5912: $30 $31

    rst $38                                       ; $5914: $ff
    ld [hl-], a                                   ; $5915: $32
    inc sp                                        ; $5916: $33
    inc [hl]                                      ; $5917: $34
    dec [hl]                                      ; $5918: $35
    ld [hl], $37                                  ; $5919: $36 $37
    jr c, jr_001_5956                             ; $591b: $38 $39

    ccf                                           ; $591d: $3f
    ld a, [hl-]                                   ; $591e: $3a
    dec sp                                        ; $591f: $3b
    inc a                                         ; $5920: $3c

jr_001_5921:
    dec a                                         ; $5921: $3d
    ld a, $3f                                     ; $5922: $3e $3f
    ld l, a                                       ; $5924: $6f
    rst $38                                       ; $5925: $ff
    rst $38                                       ; $5926: $ff
    rst $38                                       ; $5927: $ff
    cp $e8                                        ; $5928: $fe $e8
    rst $20                                       ; $592a: $e7
    ld b, b                                       ; $592b: $40
    ld b, c                                       ; $592c: $41
    ld b, d                                       ; $592d: $42
    ld b, e                                       ; $592e: $43
    ld b, h                                       ; $592f: $44
    ld b, l                                       ; $5930: $45
    ld b, [hl]                                    ; $5931: $46

jr_001_5932:
    rst $38                                       ; $5932: $ff
    ld b, a                                       ; $5933: $47
    ld c, b                                       ; $5934: $48
    ld c, c                                       ; $5935: $49
    ld c, d                                       ; $5936: $4a
    ld c, e                                       ; $5937: $4b
    ld h, b                                       ; $5938: $60
    ld h, c                                       ; $5939: $61
    ld h, d                                       ; $593a: $62
    sbc a                                         ; $593b: $9f
    ld h, e                                       ; $593c: $63
    ld h, h                                       ; $593d: $64
    ld h, l                                       ; $593e: $65
    ld h, [hl]                                    ; $593f: $66
    ld h, a                                       ; $5940: $67
    jp z, $e8ff                                   ; $5941: $ca $ff $e8

    rst $20                                       ; $5944: $e7

jr_001_5945:
    ld [hl], b                                    ; $5945: $70
    rst $38                                       ; $5946: $ff
    ld [hl], c                                    ; $5947: $71
    ld [hl], d                                    ; $5948: $72
    ld [hl], e                                    ; $5949: $73
    ld [hl], h                                    ; $594a: $74
    ld [hl], l                                    ; $594b: $75
    halt                                          ; $594c: $76
    ld [hl], a                                    ; $594d: $77
    ld a, b                                       ; $594e: $78
    rst $38                                       ; $594f: $ff
    ld d, b                                       ; $5950: $50
    ld d, c                                       ; $5951: $51
    ld d, d                                       ; $5952: $52
    ld d, e                                       ; $5953: $53
    ld d, h                                       ; $5954: $54
    ld d, l                                       ; $5955: $55

jr_001_5956:
    ld d, [hl]                                    ; $5956: $56
    ld d, a                                       ; $5957: $57
    rst $20                                       ; $5958: $e7
    ld e, b                                       ; $5959: $58
    ld e, c                                       ; $595a: $59
    ld l, a                                       ; $595b: $6f
    jp z, $e8ff                                   ; $595c: $ca $ff $e8

    rst $20                                       ; $595f: $e7
    ld a, c                                       ; $5960: $79
    ld a, d                                       ; $5961: $7a
    ld a, e                                       ; $5962: $7b
    cp a                                          ; $5963: $bf
    ld a, h                                       ; $5964: $7c
    ld a, l                                       ; $5965: $7d
    ld c, h                                       ; $5966: $4c
    ld c, l                                       ; $5967: $4d
    ld c, [hl]                                    ; $5968: $4e
    ld c, a                                       ; $5969: $4f
    ret nz                                        ; $596a: $c0

    rst $20                                       ; $596b: $e7
    ld e, d                                       ; $596c: $5a
    db $fc                                        ; $596d: $fc
    jp z, $e8ff                                   ; $596e: $ca $ff $e8

    rst $20                                       ; $5971: $e7
    ld e, e                                       ; $5972: $5b
    ld e, h                                       ; $5973: $5c
    ld e, l                                       ; $5974: $5d
    ld l, b                                       ; $5975: $68
    ld l, c                                       ; $5976: $69
    ld l, d                                       ; $5977: $6a
    rla                                           ; $5978: $17
    ld l, e                                       ; $5979: $6b
    ld l, h                                       ; $597a: $6c
    ld l, l                                       ; $597b: $6d
    scf                                           ; $597c: $37
    db $e4                                        ; $597d: $e4
    ld a, a                                       ; $597e: $7f
    call $ffff                                    ; $597f: $cd $ff $ff
    rst $38                                       ; $5982: $ff
    rst $38                                       ; $5983: $ff
    rst $38                                       ; $5984: $ff
    nop                                           ; $5985: $00
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
    nop                                           ; $5996: $00
    rst $38                                       ; $5997: $ff
    rst $38                                       ; $5998: $ff
    rst $38                                       ; $5999: $ff
    rst $38                                       ; $599a: $ff
    rst $38                                       ; $599b: $ff
    rst $38                                       ; $599c: $ff
    rst $38                                       ; $599d: $ff
    rst $38                                       ; $599e: $ff
    rst $38                                       ; $599f: $ff
    xor $00                                       ; $59a0: $ee $00
    nop                                           ; $59a2: $00
    nop                                           ; $59a3: $00
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

Call_001_7788:
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

Call_001_7c64:
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
