; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    ld b, $40                                     ; $4000: $06 $40
    and [hl]                                      ; $4002: $a6
    ld d, c                                       ; $4003: $51
    db $ec                                        ; $4004: $ec
    ld h, e                                       ; $4005: $63
    rst $18                                       ; $4006: $df
    jr z, jr_007_4014                             ; $4007: $28 $0b

    or a                                          ; $4009: $b7
    jr nz, jr_007_4014                            ; $400a: $20 $08

    ld hl, $4040                                  ; $400c: $21 $40 $40
    ld de, $0301                                  ; $400f: $11 $01 $03
    jr jr_007_401a                                ; $4012: $18 $06

jr_007_4014:
    ld hl, $406a                                  ; $4014: $21 $6a $40
    ld de, $0201                                  ; $4017: $11 $01 $02

jr_007_401a:
    ld b, $00                                     ; $401a: $06 $00
    xor a                                         ; $401c: $af
    ldh [$8a], a                                  ; $401d: $e0 $8a
    ldh [$8b], a                                  ; $401f: $e0 $8b
    call Call_007_741e                            ; $4021: $cd $1e $74
    ld c, $10                                     ; $4024: $0e $10
    call Call_000_25af                            ; $4026: $cd $af $25
    call Call_000_2625                            ; $4029: $cd $25 $26
    ld a, $06                                     ; $402c: $3e $06
    ldh [$96], a                                  ; $402e: $e0 $96
    ldh [rSVBK], a                                ; $4030: $e0 $70
    ld a, [$cabb]                                 ; $4032: $fa $bb $ca
    call Call_007_7c00                            ; $4035: $cd $00 $7c
    bit 7, a                                      ; $4038: $cb $7f
    jr nz, jr_007_403f                            ; $403a: $20 $03

    ld [$cabb], a                                 ; $403c: $ea $bb $ca

jr_007_403f:
    ret                                           ; $403f: $c9


    sub h                                         ; $4040: $94
    ld b, b                                       ; $4041: $40
    add sp, $47                                   ; $4042: $e8 $47
    dec b                                         ; $4044: $05
    ld b, c                                       ; $4045: $41
    ld e, c                                       ; $4046: $59
    ld c, b                                       ; $4047: $48
    push de                                       ; $4048: $d5
    ld b, c                                       ; $4049: $41
    dec e                                         ; $404a: $1d
    ld c, c                                       ; $404b: $49
    or b                                          ; $404c: $b0
    ld b, d                                       ; $404d: $42
    db $f4                                        ; $404e: $f4
    ld c, c                                       ; $404f: $49
    adc b                                         ; $4050: $88
    ld b, e                                       ; $4051: $43
    bit 1, d                                      ; $4052: $cb $4a
    ld e, c                                       ; $4054: $59
    ld b, h                                       ; $4055: $44
    and c                                         ; $4056: $a1
    ld c, e                                       ; $4057: $4b
    inc [hl]                                      ; $4058: $34
    ld b, l                                       ; $4059: $45
    ld a, h                                       ; $405a: $7c
    ld c, h                                       ; $405b: $4c
    dec bc                                        ; $405c: $0b
    ld b, [hl]                                    ; $405d: $46
    ld d, a                                       ; $405e: $57
    ld c, l                                       ; $405f: $4d
    bit 0, [hl]                                   ; $4060: $cb $46
    rla                                           ; $4062: $17

Call_007_4063:
    ld c, [hl]                                    ; $4063: $4e
    ld [hl], d                                    ; $4064: $72
    ld b, a                                       ; $4065: $47
    cp [hl]                                       ; $4066: $be
    ld c, [hl]                                    ; $4067: $4e
    inc [hl]                                      ; $4068: $34

jr_007_4069:
    ld c, a                                       ; $4069: $4f
    sub h                                         ; $406a: $94
    ld b, b                                       ; $406b: $40
    add sp, $47                                   ; $406c: $e8 $47
    dec b                                         ; $406e: $05
    ld b, c                                       ; $406f: $41
    ld e, c                                       ; $4070: $59
    ld c, b                                       ; $4071: $48
    push de                                       ; $4072: $d5
    ld b, c                                       ; $4073: $41
    dec e                                         ; $4074: $1d
    ld c, c                                       ; $4075: $49
    or b                                          ; $4076: $b0
    ld b, d                                       ; $4077: $42
    db $f4                                        ; $4078: $f4
    ld c, c                                       ; $4079: $49
    adc b                                         ; $407a: $88
    ld b, e                                       ; $407b: $43
    bit 1, d                                      ; $407c: $cb $4a
    or $4f                                        ; $407e: $f6 $4f
    or $4f                                        ; $4080: $f6 $4f
    rst $08                                       ; $4082: $cf
    ld d, b                                       ; $4083: $50
    rst $08                                       ; $4084: $cf
    ld d, b                                       ; $4085: $50
    dec bc                                        ; $4086: $0b
    ld b, [hl]                                    ; $4087: $46
    ld d, a                                       ; $4088: $57
    ld c, l                                       ; $4089: $4d
    bit 0, [hl]                                   ; $408a: $cb $46

Call_007_408c:
    rla                                           ; $408c: $17
    ld c, [hl]                                    ; $408d: $4e
    ld [hl], d                                    ; $408e: $72
    ld b, a                                       ; $408f: $47
    cp [hl]                                       ; $4090: $be
    ld c, [hl]                                    ; $4091: $4e
    inc [hl]                                      ; $4092: $34
    ld c, a                                       ; $4093: $4f
    rst $38                                       ; $4094: $ff
    inc c                                         ; $4095: $0c
    di                                            ; $4096: $f3
    ei                                            ; $4097: $fb
    inc b                                         ; $4098: $04
    call z, Call_000_3733                         ; $4099: $cc $33 $37
    ret z                                         ; $409c: $c8

    rst $38                                       ; $409d: $ff
    ldh a, [rIF]                                  ; $409e: $f0 $0f
    rra                                           ; $40a0: $1f
    ldh [$e1], a                                  ; $40a1: $e0 $e1
    ld e, $00                                     ; $40a3: $1e $00
    rst $38                                       ; $40a5: $ff
    rst $38                                       ; $40a6: $ff
    rst $00                                       ; $40a7: $c7
    jr c, jr_007_4069                             ; $40a8: $38 $bf

    ld b, b                                       ; $40aa: $40
    ld [hl], b                                    ; $40ab: $70
    adc a                                         ; $40ac: $8f
    rst $08                                       ; $40ad: $cf
    jr nc, @+$01                                  ; $40ae: $30 $ff

    ld a, b                                       ; $40b0: $78
    add a                                         ; $40b1: $87
    adc a                                         ; $40b2: $8f
    ld [hl], b                                    ; $40b3: $70
    di                                            ; $40b4: $f3
    inc c                                         ; $40b5: $0c

jr_007_40b6:
    nop                                           ; $40b6: $00
    rst $38                                       ; $40b7: $ff
    rst $38                                       ; $40b8: $ff
    ld a, $c1                                     ; $40b9: $3e $c1
    pop bc                                        ; $40bb: $c1
    ld a, $7f                                     ; $40bc: $3e $7f
    add b                                         ; $40be: $80
    add b                                         ; $40bf: $80
    ld a, a                                       ; $40c0: $7f
    rst $38                                       ; $40c1: $ff
    ld a, a                                       ; $40c2: $7f
    add b                                         ; $40c3: $80
    ret nz                                        ; $40c4: $c0

    ccf                                           ; $40c5: $3f
    ccf                                           ; $40c6: $3f
    ret nz                                        ; $40c7: $c0

    nop                                           ; $40c8: $00
    rst $38                                       ; $40c9: $ff
    rst $38                                       ; $40ca: $ff
    ccf                                           ; $40cb: $3f
    ret nz                                        ; $40cc: $c0

    ldh [$1f], a                                  ; $40cd: $e0 $1f
    rra                                           ; $40cf: $1f
    ldh [$f0], a                                  ; $40d0: $e0 $f0
    rrca                                          ; $40d2: $0f
    rst $38                                       ; $40d3: $ff
    adc a                                         ; $40d4: $8f
    ld [hl], b                                    ; $40d5: $70
    ld [hl], b                                    ; $40d6: $70
    adc a                                         ; $40d7: $8f
    rst $18                                       ; $40d8: $df
    jr nz, jr_007_40db                            ; $40d9: $20 $00

jr_007_40db:
    rst $38                                       ; $40db: $ff
    ccf                                           ; $40dc: $3f
    adc $31                                       ; $40dd: $ce $31
    add hl, sp                                    ; $40df: $39

Call_007_40e0:
    add $c7                                       ; $40e0: $c6 $c7
    jr c, jr_007_40b6                             ; $40e2: $38 $d2

    pop hl                                        ; $40e4: $e1
    cp [hl]                                       ; $40e5: $be
    pop hl                                        ; $40e6: $e1
    rst $38                                       ; $40e7: $ff
    nop                                           ; $40e8: $00
    rst $38                                       ; $40e9: $ff
    rst $20                                       ; $40ea: $e7
    jr jr_007_4125                                ; $40eb: $18 $38

    rst $00                                       ; $40ed: $c7
    adc a                                         ; $40ee: $8f
    ld [hl], b                                    ; $40ef: $70
    rst $38                                       ; $40f0: $ff
    ld a, b                                       ; $40f1: $78
    add a                                         ; $40f2: $87
    add a                                         ; $40f3: $87
    ld a, b                                       ; $40f4: $78
    ld hl, sp+$07                                 ; $40f5: $f8 $07
    rlca                                          ; $40f7: $07
    ld hl, sp+$03                                 ; $40f8: $f8 $03
    nop                                           ; $40fa: $00
    rst $38                                       ; $40fb: $ff
    and b                                         ; $40fc: $a0
    rst $38                                       ; $40fd: $ff
    and b                                         ; $40fe: $a0
    rst $38                                       ; $40ff: $ff
    and b                                         ; $4100: $a0
    ld sp, hl                                     ; $4101: $f9
    nop                                           ; $4102: $00
    nop                                           ; $4103: $00
    nop                                           ; $4104: $00
    rst $38                                       ; $4105: $ff
    rst $38                                       ; $4106: $ff
    nop                                           ; $4107: $00
    inc a                                         ; $4108: $3c
    jp Jump_000_38c7                              ; $4109: $c3 $c7 $38


    ld sp, hl                                     ; $410c: $f9
    ld b, $ff                                     ; $410d: $06 $ff
    ld c, $f1                                     ; $410f: $0e $f1
    or $09                                        ; $4111: $f6 $09
    add hl, de                                    ; $4113: $19
    and $e7                                       ; $4114: $e6 $e7
    jr @+$01                                      ; $4116: $18 $ff

    rst $38                                       ; $4118: $ff
    nop                                           ; $4119: $00

jr_007_411a:
    call c, Call_007_6723                         ; $411a: $dc $23 $67
    sbc b                                         ; $411d: $98
    cp b                                          ; $411e: $b8
    ld b, a                                       ; $411f: $47
    rst $38                                       ; $4120: $ff
    rst $08                                       ; $4121: $cf
    jr nc, jr_007_411a                            ; $4122: $30 $f6

    add hl, bc                                    ; $4124: $09

jr_007_4125:
    add hl, sp                                    ; $4125: $39
    add $cf                                       ; $4126: $c6 $cf
    jr nc, @+$01                                  ; $4128: $30 $ff

    rst $38                                       ; $412a: $ff
    nop                                           ; $412b: $00
    ld [hl], b                                    ; $412c: $70
    adc a                                         ; $412d: $8f
    adc $31                                       ; $412e: $ce $31
    ld sp, $ffcf                                  ; $4130: $31 $cf $ff
    rst $38                                       ; $4133: $ff
    ld [bc], a                                    ; $4134: $02
    ld [bc], a                                    ; $4135: $02
    cp $ff                                        ; $4136: $fe $ff
    ld [bc], a                                    ; $4138: $02
    adc l                                         ; $4139: $8d
    ld [hl], e                                    ; $413a: $73
    rst $38                                       ; $413b: $ff
    cp e                                          ; $413c: $bb
    ld a, h                                       ; $413d: $7c
    ld b, [hl]                                    ; $413e: $46
    push bc                                       ; $413f: $c5
    adc $85                                       ; $4140: $ce $85
    sbc c                                         ; $4142: $99
    ld c, $ff                                     ; $4143: $0e $ff
    ld [hl-], a                                   ; $4145: $32
    dec e                                         ; $4146: $1d
    scf                                           ; $4147: $37
    add hl, sp                                    ; $4148: $39
    rra                                           ; $4149: $1f
    rrca                                          ; $414a: $0f
    add [hl]                                      ; $414b: $86

jr_007_414c:
    inc bc                                        ; $414c: $03
    rst $38                                       ; $414d: $ff
    rst $38                                       ; $414e: $ff
    nop                                           ; $414f: $00
    jp $d83c                                      ; $4150: $c3 $3c $d8


    ccf                                           ; $4153: $3f
    and [hl]                                      ; $4154: $a6
    ld h, l                                       ; $4155: $65
    rst $30                                       ; $4156: $f7
    and $e7                                       ; $4157: $e6 $e7
    ld bc, $e0ff                                  ; $4159: $01 $ff $e0
    and $e7                                       ; $415c: $e6 $e7
    rst $38                                       ; $415e: $ff
    nop                                           ; $415f: $00
    rst $38                                       ; $4160: $ff
    sub b                                         ; $4161: $90
    ld l, a                                       ; $4162: $6f
    nop                                           ; $4163: $00
    rst $38                                       ; $4164: $ff
    ld b, $ff                                     ; $4165: $06 $ff
    ld e, a                                       ; $4167: $5f
    cp c                                          ; $4168: $b9
    rst $38                                       ; $4169: $ff
    or c                                          ; $416a: $b1
    ld h, b                                       ; $416b: $60
    ld h, b                                       ; $416c: $60
    ret nz                                        ; $416d: $c0

    ret nz                                        ; $416e: $c0

    add b                                         ; $416f: $80
    rst $38                                       ; $4170: $ff
    nop                                           ; $4171: $00
    rst $38                                       ; $4172: $ff
    inc c                                         ; $4173: $0c
    di                                            ; $4174: $f3
    ld b, $ff                                     ; $4175: $06 $ff
    ld sp, hl                                     ; $4177: $f9
    add hl, bc                                    ; $4178: $09
    add hl, sp                                    ; $4179: $39
    ld sp, hl                                     ; $417a: $f9
    db $ed                                        ; $417b: $ed
    ret nz                                        ; $417c: $c0

    rst $38                                       ; $417d: $ff
    ldh [$b9], a                                  ; $417e: $e0 $b9
    ld sp, hl                                     ; $4180: $f9
    and b                                         ; $4181: $a0
    db $e3                                        ; $4182: $e3
    jr c, jr_007_414c                             ; $4183: $38 $c7

    adc a                                         ; $4185: $8f
    ld a, a                                       ; $4186: $7f
    ldh a, [$7a]                                  ; $4187: $f0 $7a
    ld a, l                                       ; $4189: $7d
    ld c, h                                       ; $418a: $4c
    ld b, a                                       ; $418b: $47
    add l                                         ; $418c: $85
    rst $00                                       ; $418d: $c7
    and b                                         ; $418e: $a0
    pop hl                                        ; $418f: $e1
    rst $38                                       ; $4190: $ff
    rst $08                                       ; $4191: $cf
    jr nc, jr_007_41c5                            ; $4192: $30 $31

    rst $08                                       ; $4194: $cf
    ei                                            ; $4195: $fb
    ld b, $06                                     ; $4196: $06 $06
    db $fc                                        ; $4198: $fc
    rst $38                                       ; $4199: $ff
    db $ec                                        ; $419a: $ec
    ld hl, sp-$67                                 ; $419b: $f8 $99
    db $10                                        ; $419d: $10
    rst $38                                       ; $419e: $ff
    nop                                           ; $419f: $00
    sbc d                                         ; $41a0: $9a
    ld h, l                                       ; $41a1: $65
    rst $38                                       ; $41a2: $ff
    halt                                          ; $41a3: $76
    adc c                                         ; $41a4: $89
    adc l                                         ; $41a5: $8d
    ld a, [c]                                     ; $41a6: $f2
    ld a, e                                       ; $41a7: $7b
    ld b, h                                       ; $41a8: $44
    halt                                          ; $41a9: $76
    ld c, c                                       ; $41aa: $49
    rst $28                                       ; $41ab: $ef
    ld e, c                                       ; $41ac: $59
    ld h, [hl]                                    ; $41ad: $66
    or a                                          ; $41ae: $b7
    ret z                                         ; $41af: $c8

    and b                                         ; $41b0: $a0
    pop hl                                        ; $41b1: $e1
    db $fc                                        ; $41b2: $fc
    inc bc                                        ; $41b3: $03

jr_007_41b4:
    sbc e                                         ; $41b4: $9b
    rst $38                                       ; $41b5: $ff
    ld h, h                                       ; $41b6: $64
    ld l, h                                       ; $41b7: $6c
    sub e                                         ; $41b8: $93
    rst $00                                       ; $41b9: $c7
    jr c, jr_007_41b4                             ; $41ba: $38 $f8

    rlca                                          ; $41bc: $07
    rrca                                          ; $41bd: $0f
    rst $38                                       ; $41be: $ff
    ldh a, [rIE]                                  ; $41bf: $f0 $ff
    nop                                           ; $41c1: $00
    sbc [hl]                                      ; $41c2: $9e
    ld h, c                                       ; $41c3: $61
    ld [hl], c                                    ; $41c4: $71

jr_007_41c5:
    adc [hl]                                      ; $41c5: $8e
    adc a                                         ; $41c6: $8f
    rst $38                                       ; $41c7: $ff
    ld [hl], b                                    ; $41c8: $70
    ld a, b                                       ; $41c9: $78
    add a                                         ; $41ca: $87
    rst $00                                       ; $41cb: $c7
    jr c, jr_007_420a                             ; $41cc: $38 $3c

    jp Jump_000_01e3                              ; $41ce: $c3 $e3 $01


    inc e                                         ; $41d1: $1c
    nop                                           ; $41d2: $00
    nop                                           ; $41d3: $00
    nop                                           ; $41d4: $00
    rst $38                                       ; $41d5: $ff
    ld e, $e1                                     ; $41d6: $1e $e1
    di                                            ; $41d8: $f3
    inc c                                         ; $41d9: $0c
    rrca                                          ; $41da: $0f
    ldh a, [$f8]                                  ; $41db: $f0 $f8
    rlca                                          ; $41dd: $07
    rst $38                                       ; $41de: $ff
    add a                                         ; $41df: $87
    ld a, b                                       ; $41e0: $78
    ld a, h                                       ; $41e1: $7c
    add e                                         ; $41e2: $83

Jump_007_41e3:
    jp Jump_000_003c                              ; $41e3: $c3 $3c $00


    rst $38                                       ; $41e6: $ff
    rst $38                                       ; $41e7: $ff
    ld [hl-], a                                   ; $41e8: $32
    call Call_000_02fd                            ; $41e9: $cd $fd $02
    inc bc                                        ; $41ec: $03
    db $fc                                        ; $41ed: $fc
    cp $01                                        ; $41ee: $fe $01
    rst $38                                       ; $41f0: $ff
    ld bc, $fffe                                  ; $41f1: $01 $fe $ff

jr_007_41f4:
    nop                                           ; $41f4: $00
    add b                                         ; $41f5: $80
    ld a, a                                       ; $41f6: $7f
    nop                                           ; $41f7: $00
    rst $38                                       ; $41f8: $ff
    rst $38                                       ; $41f9: $ff
    ld a, b                                       ; $41fa: $78
    add a                                         ; $41fb: $87
    add $39                                       ; $41fc: $c6 $39
    cp a                                          ; $41fe: $bf
    ld b, b                                       ; $41ff: $40
    ld h, b                                       ; $4200: $60
    sbc a                                         ; $4201: $9f
    rst $38                                       ; $4202: $ff
    sbc e                                         ; $4203: $9b
    ld h, a                                       ; $4204: $67
    ld [hl], h                                    ; $4205: $74
    adc h                                         ; $4206: $8c
    call z, Call_000_0334                         ; $4207: $cc $34 $03

jr_007_420a:
    rst $38                                       ; $420a: $ff
    rst $38                                       ; $420b: $ff
    jp Jump_007_6381                              ; $420c: $c3 $81 $63


    pop hl                                        ; $420f: $e1
    and $43                                       ; $4210: $e6 $43
    call $ff86                                    ; $4212: $cd $86 $ff
    sbc e                                         ; $4215: $9b
    inc c                                         ; $4216: $0c
    ld [hl], $19                                  ; $4217: $36 $19
    cpl                                           ; $4219: $2f
    jr nc, jr_007_41f4                            ; $421a: $30 $d8

    rst $20                                       ; $421c: $e7
    rst $38                                       ; $421d: $ff
    daa                                           ; $421e: $27
    push hl                                       ; $421f: $e5
    ld h, l                                       ; $4220: $65
    and a                                         ; $4221: $a7
    rst $20                                       ; $4222: $e7
    inc hl                                        ; $4223: $23
    db $e3                                        ; $4224: $e3
    inc hl                                        ; $4225: $23
    rst $38                                       ; $4226: $ff
    or e                                          ; $4227: $b3
    ld h, c                                       ; $4228: $61
    pop de                                        ; $4229: $d1
    ld sp, $f119                                  ; $422a: $31 $19 $f1
    ld c, $ff                                     ; $422d: $0e $ff
    rst $38                                       ; $422f: $ff
    sbc b                                         ; $4230: $98
    ld [$1818], sp                                ; $4231: $08 $18 $18
    jr jr_007_423e                                ; $4234: $18 $08

    nop                                           ; $4236: $00
    nop                                           ; $4237: $00
    rst $38                                       ; $4238: $ff
    ret nz                                        ; $4239: $c0

    add b                                         ; $423a: $80

jr_007_423b:
    ld [hl], b                                    ; $423b: $70
    ldh [$de], a                                  ; $423c: $e0 $de

jr_007_423e:
    inc a                                         ; $423e: $3c
    dec bc                                        ; $423f: $0b
    rst $30                                       ; $4240: $f7
    rst $38                                       ; $4241: $ff
    sbc c                                         ; $4242: $99
    jp hl                                         ; $4243: $e9


    jp hl                                         ; $4244: $e9


    sbc c                                         ; $4245: $99
    ret                                           ; $4246: $c9


    cp b                                          ; $4247: $b8
    sbc b                                         ; $4248: $98
    add sp, -$01                                  ; $4249: $e8 $ff
    ld e, h                                       ; $424b: $5c
    ld l, b                                       ; $424c: $68
    ld h, h                                       ; $424d: $64
    ld e, h                                       ; $424e: $5c
    ld b, [hl]                                    ; $424f: $46
    ld a, h                                       ; $4250: $7c
    adc e                                         ; $4251: $8b
    rst $30                                       ; $4252: $f7
    rst $38                                       ; $4253: $ff
    ld b, l                                       ; $4254: $45
    rst $00                                       ; $4255: $c7
    ld h, l                                       ; $4256: $65
    rst $00                                       ; $4257: $c7

jr_007_4258:
    and a                                         ; $4258: $a7
    ld [c], a                                     ; $4259: $e2
    or d                                          ; $425a: $b2
    ld [c], a                                     ; $425b: $e2
    rst $38                                       ; $425c: $ff
    ret nc                                        ; $425d: $d0

    ld [hl], b                                    ; $425e: $70
    ld a, b                                       ; $425f: $78
    ld d, b                                       ; $4260: $50
    ld c, l                                       ; $4261: $4d
    ld a, b                                       ; $4262: $78
    add a                                         ; $4263: $87
    rst $38                                       ; $4264: $ff
    rst $38                                       ; $4265: $ff
    inc de                                        ; $4266: $13
    ld de, $1038                                  ; $4267: $11 $38 $10
    inc l                                         ; $426a: $2c
    jr c, jr_007_4291                             ; $426b: $38 $24

    inc a                                         ; $426d: $3c
    rst $38                                       ; $426e: $ff
    ld l, h                                       ; $426f: $6c
    jr c, jr_007_423b                             ; $4270: $38 $c9

    ld a, b                                       ; $4272: $78
    adc e                                         ; $4273: $8b
    ld sp, hl                                     ; $4274: $f9
    ld b, $ff                                     ; $4275: $06 $ff
    rst $38                                       ; $4277: $ff
    call z, $fbb3                                 ; $4278: $cc $b3 $fb
    ld b, h                                       ; $427b: $44
    ld b, a                                       ; $427c: $47
    ld a, b                                       ; $427d: $78
    ld a, b                                       ; $427e: $78
    ld b, a                                       ; $427f: $47
    rst $38                                       ; $4280: $ff
    rst $08                                       ; $4281: $cf
    ld [hl], b                                    ; $4282: $70
    cp b                                          ; $4283: $b8
    rst $00                                       ; $4284: $c7
    rlca                                          ; $4285: $07
    ld hl, sp+$00                                 ; $4286: $f8 $00
    rst $38                                       ; $4288: $ff
    rst $38                                       ; $4289: $ff
    di                                            ; $428a: $f3
    inc c                                         ; $428b: $0c
    inc a                                         ; $428c: $3c
    jp Jump_000_38c7                              ; $428d: $c3 $c7 $38


    ld a, b                                       ; $4290: $78

jr_007_4291:
    add a                                         ; $4291: $87
    rst $38                                       ; $4292: $ff
    adc a                                         ; $4293: $8f
    ld [hl], b                                    ; $4294: $70
    di                                            ; $4295: $f3
    inc c                                         ; $4296: $0c
    inc e                                         ; $4297: $1c
    db $e3                                        ; $4298: $e3
    nop                                           ; $4299: $00
    rst $38                                       ; $429a: $ff
    rst $38                                       ; $429b: $ff
    ld e, $e1                                     ; $429c: $1e $e1
    pop hl                                        ; $429e: $e1
    ld e, $9f                                     ; $429f: $1e $9f
    ld h, b                                       ; $42a1: $60
    ld h, b                                       ; $42a2: $60
    sbc a                                         ; $42a3: $9f
    rst $38                                       ; $42a4: $ff
    rst $18                                       ; $42a5: $df
    jr nz, jr_007_4258                            ; $42a6: $20 $b0

    ld c, a                                       ; $42a8: $4f
    ld a, a                                       ; $42a9: $7f
    add b                                         ; $42aa: $80
    nop                                           ; $42ab: $00
    rst $38                                       ; $42ac: $ff
    nop                                           ; $42ad: $00
    nop                                           ; $42ae: $00
    nop                                           ; $42af: $00
    rst $38                                       ; $42b0: $ff
    db $fd                                        ; $42b1: $fd
    inc bc                                        ; $42b2: $03
    sbc [hl]                                      ; $42b3: $9e
    ld h, d                                       ; $42b4: $62
    ld h, d                                       ; $42b5: $62
    sbc [hl]                                      ; $42b6: $9e
    rst $18                                       ; $42b7: $df
    ld [hl+], a                                   ; $42b8: $22
    rst $38                                       ; $42b9: $ff
    ld hl, $dfdf                                  ; $42ba: $21 $df $df
    ld hl, $cf31                                  ; $42bd: $21 $31 $cf
    rst $08                                       ; $42c0: $cf
    ld sp, $f7ff                                  ; $42c1: $31 $ff $f7
    ld hl, sp+$1c                                 ; $42c4: $f8 $1c
    rrca                                          ; $42c6: $0f
    rlca                                          ; $42c7: $07
    inc bc                                        ; $42c8: $03
    ld bc, $ff00                                  ; $42c9: $01 $00 $ff
    jr jr_007_42de                                ; $42cc: $18 $10

    inc e                                         ; $42ce: $1c
    jr jr_007_42e5                                ; $42cf: $18 $14

    inc e                                         ; $42d1: $1c
    inc e                                         ; $42d2: $1c
    jr @+$01                                      ; $42d3: $18 $ff

    rst $38                                       ; $42d5: $ff
    nop                                           ; $42d6: $00
    ld d, [hl]                                    ; $42d7: $56
    xor c                                         ; $42d8: $a9
    ld l, c                                       ; $42d9: $69
    sub [hl]                                      ; $42da: $96
    xor a                                         ; $42db: $af
    ret nc                                        ; $42dc: $d0

    rst $38                                       ; $42dd: $ff

jr_007_42de:
    ret nc                                        ; $42de: $d0

    ld l, a                                       ; $42df: $6f
    ld l, l                                       ; $42e0: $6d
    inc sp                                        ; $42e1: $33
    inc sp                                        ; $42e2: $33
    ld e, $36                                     ; $42e3: $1e $36

jr_007_42e5:
    inc e                                         ; $42e5: $1c
    rst $38                                       ; $42e6: $ff
    sbc a                                         ; $42e7: $9f
    ld h, b                                       ; $42e8: $60
    cp [hl]                                       ; $42e9: $be
    ld b, c                                       ; $42ea: $41
    add hl, hl                                    ; $42eb: $29
    sub $36                                       ; $42ec: $d6 $36
    ret                                           ; $42ee: $c9


    rst $38                                       ; $42ef: $ff
    pop hl                                        ; $42f0: $e1
    rst $38                                       ; $42f1: $ff
    or e                                          ; $42f2: $b3
    ld e, $1e                                     ; $42f3: $1e $1e
    inc c                                         ; $42f5: $0c
    inc c                                         ; $42f6: $0c
    ld [$ffff], sp                                ; $42f7: $08 $ff $ff
    nop                                           ; $42fa: $00
    ld a, a                                       ; $42fb: $7f
    add b                                         ; $42fc: $80
    jp $d43f                                      ; $42fd: $c3 $3f $d4


    db $ec                                        ; $4300: $ec
    rst $30                                       ; $4301: $f7
    cp h                                          ; $4302: $bc
    inc a                                         ; $4303: $3c
    jr nz, @+$01                                  ; $4304: $20 $ff

    ldh [$dc], a                                  ; $4306: $e0 $dc
    ld a, h                                       ; $4308: $7c
    ld h, b                                       ; $4309: $60
    sbc a                                         ; $430a: $9f
    rst $38                                       ; $430b: $ff
    add b                                         ; $430c: $80
    ld a, a                                       ; $430d: $7f
    rra                                           ; $430e: $1f
    ldh [$f6], a                                  ; $430f: $e0 $f6
    adc c                                         ; $4311: $89
    db $dd                                        ; $4312: $dd
    db $e3                                        ; $4313: $e3
    rst $38                                       ; $4314: $ff
    ld hl, $213f                                  ; $4315: $21 $3f $21
    ccf                                           ; $4318: $3f
    adc $f1                                       ; $4319: $ce $f1
    inc e                                         ; $431b: $1c
    rst $38                                       ; $431c: $ff
    rst $38                                       ; $431d: $ff
    ld [hl+], a                                   ; $431e: $22
    db $e3                                        ; $431f: $e3
    ld h, [hl]                                    ; $4320: $66
    jp $86cd                                      ; $4321: $c3 $cd $86


    sbc b                                         ; $4324: $98
    rrca                                          ; $4325: $0f
    rst $38                                       ; $4326: $ff
    jr jr_007_4348                                ; $4327: $18 $1f

    adc [hl]                                      ; $4329: $8e
    rlca                                          ; $432a: $07
    jp $b781                                      ; $432b: $c3 $81 $b7


    ld a, b                                       ; $432e: $78
    rst $38                                       ; $432f: $ff
    xor $49                                       ; $4330: $ee $49
    ld c, c                                       ; $4332: $49
    adc $ce                                       ; $4333: $ce $ce
    adc c                                         ; $4335: $89
    adc l                                         ; $4336: $8d
    adc [hl]                                      ; $4337: $8e
    rst $38                                       ; $4338: $ff
    add [hl]                                      ; $4339: $86
    add e                                         ; $433a: $83
    add e                                         ; $433b: $83
    add c                                         ; $433c: $81
    ld bc, $f980                                  ; $433d: $01 $80 $f9
    ld b, $ff                                     ; $4340: $06 $ff
    ld d, l                                       ; $4342: $55
    xor d                                         ; $4343: $aa
    add sp, $17                                   ; $4344: $e8 $17
    ld l, h                                       ; $4346: $6c
    sub e                                         ; $4347: $93

jr_007_4348:
    or e                                          ; $4348: $b3
    ld c, a                                       ; $4349: $4f
    rst $38                                       ; $434a: $ff
    rst $08                                       ; $434b: $cf
    inc a                                         ; $434c: $3c
    ld e, b                                       ; $434d: $58
    or b                                          ; $434e: $b0
    or b                                          ; $434f: $b0
    ldh [rIE], a                                  ; $4350: $e0 $ff
    nop                                           ; $4352: $00
    rst $38                                       ; $4353: $ff
    xor $11                                       ; $4354: $ee $11
    xor e                                         ; $4356: $ab
    ld d, a                                       ; $4357: $57
    call nc, Call_007_5c2c                        ; $4358: $d4 $2c $5c
    cp h                                          ; $435b: $bc
    cp a                                          ; $435c: $bf
    and b                                         ; $435d: $a0
    ldh [$e0], a                                  ; $435e: $e0 $e0
    ld h, b                                       ; $4360: $60
    ld e, h                                       ; $4361: $5c
    ld a, h                                       ; $4362: $7c
    and b                                         ; $4363: $a0
    pop hl                                        ; $4364: $e1
    ld b, h                                       ; $4365: $44
    rst $38                                       ; $4366: $ff
    cp e                                          ; $4367: $bb
    cp e                                          ; $4368: $bb
    rst $00                                       ; $4369: $c7
    add $fc                                       ; $436a: $c6 $fc
    inc l                                         ; $436c: $2c
    jr c, jr_007_43a7                             ; $436d: $38 $38

    rst $38                                       ; $436f: $ff
    jr nc, @-$2b                                  ; $4370: $30 $d3

    pop hl                                        ; $4372: $e1
    rst $38                                       ; $4373: $ff
    nop                                           ; $4374: $00
    rst $00                                       ; $4375: $c7
    jr c, jr_007_43b0                             ; $4376: $38 $38

    rst $38                                       ; $4378: $ff
    rst $00                                       ; $4379: $c7
    ld h, a                                       ; $437a: $67
    sbc b                                         ; $437b: $98
    cp h                                          ; $437c: $bc
    jp $bcc3                                      ; $437d: $c3 $c3 $bc


    cp $07                                        ; $4380: $fe $07
    add c                                         ; $4382: $81

jr_007_4383:
    ld b, c                                       ; $4383: $41
    cp [hl]                                       ; $4384: $be
    nop                                           ; $4385: $00
    nop                                           ; $4386: $00
    nop                                           ; $4387: $00
    rst $38                                       ; $4388: $ff
    dec a                                         ; $4389: $3d
    jp $1de3                                      ; $438a: $c3 $e3 $1d


jr_007_438d:
    sbc a                                         ; $438d: $9f
    ld h, c                                       ; $438e: $61
    ld [hl], c                                    ; $438f: $71
    adc a                                         ; $4390: $8f
    rst $38                                       ; $4391: $ff
    rst $08                                       ; $4392: $cf
    ld sp, $cd33                                  ; $4393: $31 $33 $cd
    rst $38                                       ; $4396: $ff
    ld bc, $ff00                                  ; $4397: $01 $00 $ff
    dec a                                         ; $439a: $3d
    nop                                           ; $439b: $00
    rst $38                                       ; $439c: $ff
    ldh [rNR32], a                                ; $439d: $e0 $1c
    jr jr_007_43bd                                ; $439f: $18 $1c

    inc e                                         ; $43a1: $1c
    ld hl, sp-$1f                                 ; $43a2: $f8 $e1
    pop af                                        ; $43a4: $f1

jr_007_43a5:
    ldh [rIE], a                                  ; $43a5: $e0 $ff

jr_007_43a7:
    rst $38                                       ; $43a7: $ff
    ld l, h                                       ; $43a8: $6c
    jr c, jr_007_4383                             ; $43a9: $38 $d8

    ld [hl], b                                    ; $43ab: $70
    ld [hl], b                                    ; $43ac: $70
    jr nc, jr_007_43e7                            ; $43ad: $30 $38

    rst $38                                       ; $43af: $ff

jr_007_43b0:
    jr nc, jr_007_43da                            ; $43b0: $30 $28

    jr c, jr_007_4420                             ; $43b2: $38 $6c

    jr c, jr_007_438d                             ; $43b4: $38 $d7

    xor $01                                       ; $43b6: $ee $01
    rst $38                                       ; $43b8: $ff
    rst $38                                       ; $43b9: $ff
    sbc c                                         ; $43ba: $99
    adc b                                         ; $43bb: $88
    inc [hl]                                      ; $43bc: $34

jr_007_43bd:
    jr jr_007_43a5                                ; $43bd: $18 $e6

    ld a, h                                       ; $43bf: $7c
    jp z, $f6ff                                   ; $43c0: $ca $ff $f6

    ld l, [hl]                                    ; $43c3: $6e
    inc [hl]                                      ; $43c4: $34
    inc [hl]                                      ; $43c5: $34
    inc e                                         ; $43c6: $1c
    dec d                                         ; $43c7: $15
    inc e                                         ; $43c8: $1c
    db $e3                                        ; $43c9: $e3
    rst $38                                       ; $43ca: $ff
    rst $38                                       ; $43cb: $ff
    db $e4                                        ; $43cc: $e4
    call c, Call_000_3c64                         ; $43cd: $dc $64 $3c
    inc l                                         ; $43d0: $2c
    inc [hl]                                      ; $43d1: $34
    inc a                                         ; $43d2: $3c
    rst $38                                       ; $43d3: $ff
    inc h                                         ; $43d4: $24
    ld a, [hl]                                    ; $43d5: $7e
    inc h                                         ; $43d6: $24
    jp z, $b376                                   ; $43d7: $ca $76 $b3

jr_007_43da:
    adc $41                                       ; $43da: $ce $41
    rst $38                                       ; $43dc: $ff
    cp a                                          ; $43dd: $bf
    rst $20                                       ; $43de: $e7
    sbc b                                         ; $43df: $98
    add h                                         ; $43e0: $84
    ei                                            ; $43e1: $fb
    rst $30                                       ; $43e2: $f7
    ld c, b                                       ; $43e3: $48
    ld c, [hl]                                    ; $43e4: $4e
    rst $38                                       ; $43e5: $ff
    ld [hl], c                                    ; $43e6: $71

jr_007_43e7:
    ld h, c                                       ; $43e7: $61
    ccf                                           ; $43e8: $3f
    ld [hl], $2a                                  ; $43e9: $36 $2a
    ld [hl+], a                                   ; $43eb: $22
    ld a, $d1                                     ; $43ec: $3e $d1
    rst $38                                       ; $43ee: $ff
    rst $28                                       ; $43ef: $ef
    ld h, c                                       ; $43f0: $61
    ret nz                                        ; $43f1: $c0

    or c                                          ; $43f2: $b1
    ld [hl], b                                    ; $43f3: $70
    or e                                          ; $43f4: $b3
    ld h, c                                       ; $43f5: $61
    ld h, [hl]                                    ; $43f6: $66
    rst $38                                       ; $43f7: $ff
    jp $86cd                                      ; $43f8: $c3 $cd $86


    ld a, [de]                                    ; $43fb: $1a
    dec c                                         ; $43fc: $0d
    ld de, $ee1e                                  ; $43fd: $11 $1e $ee
    ld a, a                                       ; $4400: $7f
    pop af                                        ; $4401: $f1
    adc h                                         ; $4402: $8c
    adc b                                         ; $4403: $88
    adc h                                         ; $4404: $8c
    adc h                                         ; $4405: $8c
    inc c                                         ; $4406: $0c
    adc h                                         ; $4407: $8c
    rst $38                                       ; $4408: $ff
    db $e3                                        ; $4409: $e3
    rst $38                                       ; $440a: $ff
    ld [hl], h                                    ; $440b: $74
    db $fc                                        ; $440c: $fc
    inc de                                        ; $440d: $13
    rst $28                                       ; $440e: $ef
    and [hl]                                      ; $440f: $a6
    ldh [$e6], a                                  ; $4410: $e0 $e6

jr_007_4412:
    add $ff                                       ; $4412: $c6 $ff
    add $c6                                       ; $4414: $c6 $c6
    add [hl]                                      ; $4416: $86
    call nz, Call_007_40e0                        ; $4417: $c4 $e0 $40
    ld [hl], c                                    ; $441a: $71
    ld h, b                                       ; $441b: $60
    rst $18                                       ; $441c: $df
    ld e, e                                       ; $441d: $5b
    ld [hl], e                                    ; $441e: $73
    adc h                                         ; $441f: $8c

jr_007_4420:
    rst $38                                       ; $4420: $ff
    ld l, h                                       ; $4421: $6c
    or h                                          ; $4422: $b4
    ldh [$34], a                                  ; $4423: $e0 $34
    inc l                                         ; $4425: $2c
    rst $38                                       ; $4426: $ff
    ld l, h                                       ; $4427: $6c
    inc [hl]                                      ; $4428: $34
    ld e, [hl]                                    ; $4429: $5e
    ld h, h                                       ; $442a: $64
    and d                                         ; $442b: $a2
    sbc $1f                                       ; $442c: $de $1f
    ld [c], a                                     ; $442e: $e2
    rst $38                                       ; $442f: $ff
    ld bc, $a7ff                                  ; $4430: $01 $ff $a7
    db $e3                                        ; $4433: $e3
    or c                                          ; $4434: $b1
    ldh [$d8], a                                  ; $4435: $e0 $d8
    ld [hl], b                                    ; $4437: $70

jr_007_4438:
    rst $38                                       ; $4438: $ff
    ld c, b                                       ; $4439: $48
    ld a, b                                       ; $443a: $78
    ld a, c                                       ; $443b: $79
    jr nc, jr_007_4471                            ; $443c: $30 $33

    ld sp, $3336                                  ; $443e: $31 $36 $33
    rst $38                                       ; $4441: $ff
    call z, Call_007_7fff                         ; $4442: $cc $ff $7f
    add b                                         ; $4445: $80
    adc h                                         ; $4446: $8c
    di                                            ; $4447: $f3
    di                                            ; $4448: $f3
    adc h                                         ; $4449: $8c
    rst $38                                       ; $444a: $ff
    sbc [hl]                                      ; $444b: $9e
    pop hl                                        ; $444c: $e1
    pop hl                                        ; $444d: $e1
    sbc [hl]                                      ; $444e: $9e
    ld a, a                                       ; $444f: $7f
    add b                                         ; $4450: $80
    sbc h                                         ; $4451: $9c
    ld h, e                                       ; $4452: $63
    inc bc                                        ; $4453: $03
    nop                                           ; $4454: $00
    rst $38                                       ; $4455: $ff
    nop                                           ; $4456: $00
    nop                                           ; $4457: $00
    nop                                           ; $4458: $00
    rst $38                                       ; $4459: $ff
    sbc $3f                                       ; $445a: $de $3f
    db $e3                                        ; $445c: $e3
    ld hl, $e031                                  ; $445d: $21 $31 $e0
    ret nc                                        ; $4460: $d0

    jr nc, @+$01                                  ; $4461: $30 $ff

    sub b                                         ; $4463: $90
    ld [hl], b                                    ; $4464: $70
    ld [hl], c                                    ; $4465: $71
    sub b                                         ; $4466: $90
    pop de                                        ; $4467: $d1
    ld sp, $d131                                  ; $4468: $31 $31 $d1
    rst $38                                       ; $446b: $ff
    rst $30                                       ; $446c: $f7
    rrca                                          ; $446d: $0f
    jr c, jr_007_4438                             ; $446e: $38 $c8

    adc b                                         ; $4470: $88

jr_007_4471:
    ld hl, sp+$58                                 ; $4471: $f8 $58
    ld l, b                                       ; $4473: $68
    rst $38                                       ; $4474: $ff
    ld l, b                                       ; $4475: $68
    jr c, jr_007_44b0                             ; $4476: $38 $38

    jr jr_007_4412                                ; $4478: $18 $98

    ld [$8088], sp                                ; $447a: $08 $88 $80
    rst $38                                       ; $447d: $ff
    ld [hl], a                                    ; $447e: $77
    adc a                                         ; $447f: $8f
    xor l                                         ; $4480: $ad
    ret c                                         ; $4481: $d8

    sbc e                                         ; $4482: $9b
    pop af                                        ; $4483: $f1
    jp nc, $ffb3                                  ; $4484: $d2 $b3 $ff

    or d                                          ; $4487: $b2
    db $e3                                        ; $4488: $e3
    and e                                         ; $4489: $a3
    pop hl                                        ; $448a: $e1
    pop hl                                        ; $448b: $e1
    ret nz                                        ; $448c: $c0

jr_007_448d:
    ret nz                                        ; $448d: $c0

    ret nz                                        ; $448e: $c0

    rst $38                                       ; $448f: $ff
    ld h, e                                       ; $4490: $63
    sbc a                                         ; $4491: $9f
    db $f4                                        ; $4492: $f4
    adc h                                         ; $4493: $8c
    ld b, h                                       ; $4494: $44
    cp h                                          ; $4495: $bc
    inc a                                         ; $4496: $3c
    ret z                                         ; $4497: $c8

    rst $38                                       ; $4498: $ff

jr_007_4499:
    adc b                                         ; $4499: $88
    ld a, b                                       ; $449a: $78
    jr jr_007_448d                                ; $449b: $18 $f0

    jp nc, $b6b2                                  ; $449d: $d2 $b2 $b6

    ld [c], a                                     ; $44a0: $e2
    rst $38                                       ; $44a1: $ff
    jp c, Jump_000_3ae5                           ; $44a2: $da $e5 $3a

jr_007_44a5:
    dec h                                         ; $44a5: $25
    ld [hl-], a                                   ; $44a6: $32
    dec l                                         ; $44a7: $2d
    ld a, [hl-]                                   ; $44a8: $3a
    dec h                                         ; $44a9: $25
    rst $38                                       ; $44aa: $ff
    ld a, [hl-]                                   ; $44ab: $3a
    dec h                                         ; $44ac: $25
    add hl, sp                                    ; $44ad: $39
    ld h, $21                                     ; $44ae: $26 $21

jr_007_44b0:
    ld a, $26                                     ; $44b0: $3e $26
    add hl, sp                                    ; $44b2: $39
    rst $38                                       ; $44b3: $ff
    rst $00                                       ; $44b4: $c7
    ccf                                           ; $44b5: $3f
    adc b                                         ; $44b6: $88
    ld a, b                                       ; $44b7: $78
    sbc c                                         ; $44b8: $99
    ld [hl], b                                    ; $44b9: $70
    or e                                          ; $44ba: $b3
    ld h, c                                       ; $44bb: $61
    rst $38                                       ; $44bc: $ff
    ld h, [hl]                                    ; $44bd: $66
    jp $c746                                      ; $44be: $c3 $46 $c7


    ld h, e                                       ; $44c1: $63
    pop bc                                        ; $44c2: $c1
    jr nc, jr_007_44a5                            ; $44c3: $30 $e0

    rst $38                                       ; $44c5: $ff
    ld d, e                                       ; $44c6: $53
    xor h                                         ; $44c7: $ac
    ret nz                                        ; $44c8: $c0

    cp a                                          ; $44c9: $bf
    adc e                                         ; $44ca: $8b
    rst $30                                       ; $44cb: $f7
    inc c                                         ; $44cc: $0c
    db $f4                                        ; $44cd: $f4
    rst $38                                       ; $44ce: $ff
    inc e                                         ; $44cf: $1c
    db $fc                                        ; $44d0: $fc
    ldh [rNR41], a                                ; $44d1: $e0 $20
    ldh [$e0], a                                  ; $44d3: $e0 $e0
    call c, $ff7c                                 ; $44d5: $dc $7c $ff
    ld e, [hl]                                    ; $44d8: $5e
    and c                                         ; $44d9: $a1
    ld e, b                                       ; $44da: $58
    and a                                         ; $44db: $a7
    ld d, c                                       ; $44dc: $51
    xor [hl]                                      ; $44dd: $ae
    jp c, $ffa5                                   ; $44de: $da $a5 $ff

    db $db                                        ; $44e1: $db
    rst $20                                       ; $44e2: $e7
    ld [hl], $2c                                  ; $44e3: $36 $2c
    inc l                                         ; $44e5: $2c
    jr c, @-$26                                   ; $44e6: $38 $d8

    ldh a, [rIE]                                  ; $44e8: $f0 $ff
    rst $20                                       ; $44ea: $e7
    jr jr_007_4499                                ; $44eb: $18 $ac

    ld d, e                                       ; $44ed: $53
    adc [hl]                                      ; $44ee: $8e

Call_007_44ef:
    ld [hl], c                                    ; $44ef: $71
    ret                                           ; $44f0: $c9


    rst $30                                       ; $44f1: $f7
    rst $38                                       ; $44f2: $ff
    rst $20                                       ; $44f3: $e7
    ccf                                           ; $44f4: $3f
    jr c, jr_007_450f                             ; $44f5: $38 $18

    jr jr_007_4511                                ; $44f7: $18 $18

    rla                                           ; $44f9: $17
    rra                                           ; $44fa: $1f
    rst $38                                       ; $44fb: $ff
    rra                                           ; $44fc: $1f
    ldh [$9b], a                                  ; $44fd: $e0 $9b
    ld h, h                                       ; $44ff: $64
    call z, Call_000_2ff3                         ; $4500: $cc $f3 $2f
    jr nc, @+$01                                  ; $4503: $30 $ff

    jr nc, jr_007_4546                            ; $4505: $30 $3f

    rrca                                          ; $4507: $0f
    rrca                                          ; $4508: $0f
    add hl, bc                                    ; $4509: $09
    ld [$3830], sp                                ; $450a: $08 $30 $38
    rst $38                                       ; $450d: $ff
    rst $38                                       ; $450e: $ff

jr_007_450f:
    nop                                           ; $450f: $00
    cp a                                          ; $4510: $bf

jr_007_4511:
    ld b, b                                       ; $4511: $40
    ld [hl], b                                    ; $4512: $70
    adc a                                         ; $4513: $8f
    rst $08                                       ; $4514: $cf
    jr nc, @+$01                                  ; $4515: $30 $ff

    ld a, b                                       ; $4517: $78
    add a                                         ; $4518: $87
    ld c, $f1                                     ; $4519: $0e $f1
    db $dd                                        ; $451b: $dd
    cp a                                          ; $451c: $bf
    di                                            ; $451d: $f3
    and d                                         ; $451e: $a2
    rst $38                                       ; $451f: $ff
    rst $38                                       ; $4520: $ff
    nop                                           ; $4521: $00
    pop bc                                        ; $4522: $c1
    ld a, $7f                                     ; $4523: $3e $7f
    add b                                         ; $4525: $80
    or b                                          ; $4526: $b0
    ld a, a                                       ; $4527: $7f
    rst $38                                       ; $4528: $ff
    ld l, a                                       ; $4529: $6f
    ret z                                         ; $452a: $c8

    ret z                                         ; $452b: $c8

    adc a                                         ; $452c: $8f
    adc a                                         ; $452d: $8f
    ld [$1f30], sp                                ; $452e: $08 $30 $1f
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    nop                                           ; $4533: $00
    rst $38                                       ; $4534: $ff
    pop af                                        ; $4535: $f1
    ld de, $7191                                  ; $4536: $11 $91 $71
    ld [hl], c                                    ; $4539: $71
    sub c                                         ; $453a: $91
    pop de                                        ; $453b: $d1
    ld sp, $11ff                                  ; $453c: $31 $ff $11
    pop af                                        ; $453f: $f1
    di                                            ; $4540: $f3
    ld hl, $e326                                  ; $4541: $21 $26 $e3
    inc e                                         ; $4544: $1c
    rst $38                                       ; $4545: $ff

jr_007_4546:
    rst $38                                       ; $4546: $ff
    ld b, b                                       ; $4547: $40
    add b                                         ; $4548: $80
    ldh [rLCDC], a                                ; $4549: $e0 $40
    or b                                          ; $454b: $b0
    ld h, b                                       ; $454c: $60
    sub b                                         ; $454d: $90
    ld [hl], b                                    ; $454e: $70
    rst $38                                       ; $454f: $ff
    ld a, b                                       ; $4550: $78

jr_007_4551:
    sub b                                         ; $4551: $90
    ret z                                         ; $4552: $c8

    jr c, jr_007_4551                             ; $4553: $38 $fc

    ld [$ff07], sp                                ; $4555: $08 $07 $ff
    rst $38                                       ; $4558: $ff
    call z, $ccc4                                 ; $4559: $cc $c4 $cc
    adc h                                         ; $455c: $8c
    adc h                                         ; $455d: $8c
    adc h                                         ; $455e: $8c
    call z, $ff84                                 ; $455f: $cc $84 $ff
    ret nz                                        ; $4562: $c0

    ret nz                                        ; $4563: $c0

    pop hl                                        ; $4564: $e1
    ret nz                                        ; $4565: $c0

    cp e                                          ; $4566: $bb
    pop af                                        ; $4567: $f1
    ld c, $ff                                     ; $4568: $0e $ff
    rst $28                                       ; $456a: $ef
    and $66                                       ; $456b: $e6 $66
    ld h, b                                       ; $456d: $60
    ld b, b                                       ; $456e: $40
    rst $38                                       ; $456f: $ff
    pop hl                                        ; $4570: $e1
    cp $7c                                        ; $4571: $fe $7c
    or d                                          ; $4573: $b2
    rst $38                                       ; $4574: $ff
    adc $02                                       ; $4575: $ce $02
    cp $41                                        ; $4577: $fe $41
    cp a                                          ; $4579: $bf
    ld [hl], $19                                  ; $457a: $36 $19
    ld [$0ffd], sp                                ; $457c: $08 $fd $0f
    cp $e1                                        ; $457f: $fe $e1
    jr nc, @+$21                                  ; $4581: $30 $1f

    jr nc, jr_007_45b4                            ; $4583: $30 $2f

    jr c, @+$29                                   ; $4585: $38 $27

    rst $38                                       ; $4587: $ff
    ret nz                                        ; $4588: $c0

    rst $38                                       ; $4589: $ff
    ld e, b                                       ; $458a: $58
    or b                                          ; $458b: $b0
    ld l, h                                       ; $458c: $6c
    sbc h                                         ; $458d: $9c
    ld c, h                                       ; $458e: $4c
    cp b                                          ; $458f: $b8
    rst $38                                       ; $4590: $ff
    ld e, c                                       ; $4591: $59
    or b                                          ; $4592: $b0
    ld [hl], e                                    ; $4593: $73
    pop hl                                        ; $4594: $e1
    add [hl]                                      ; $4595: $86
    add e                                         ; $4596: $83
    add h                                         ; $4597: $84
    add a                                         ; $4598: $87
    rst $38                                       ; $4599: $ff
    ld a, b                                       ; $459a: $78
    rst $38                                       ; $459b: $ff
    ld l, h                                       ; $459c: $6c
    inc [hl]                                      ; $459d: $34
    ld a, h                                       ; $459e: $7c
    inc h                                         ; $459f: $24
    call nc, $ff6c                                ; $45a0: $d4 $6c $ff
    adc h                                         ; $45a3: $8c
    db $f4                                        ; $45a4: $f4
    ld a, $c4                                     ; $45a5: $3e $c4
    ld a, [c]                                     ; $45a7: $f2
    ld c, $03                                     ; $45a8: $0e $03
    cp $ff                                        ; $45aa: $fe $ff
    ld bc, $f3ff                                  ; $45ac: $01 $ff $f3
    and c                                         ; $45af: $a1
    and e                                         ; $45b0: $a3
    db $e3                                        ; $45b1: $e3
    db $e3                                        ; $45b2: $e3
    ld h, c                                       ; $45b3: $61

jr_007_45b4:
    rst $38                                       ; $45b4: $ff
    ld b, b                                       ; $45b5: $40
    ld h, b                                       ; $45b6: $60
    ld a, b                                       ; $45b7: $78
    jr nc, jr_007_45e8                            ; $45b8: $30 $2e

    inc a                                         ; $45ba: $3c
    dec sp                                        ; $45bb: $3b
    daa                                           ; $45bc: $27
    rst $38                                       ; $45bd: $ff
    ret nc                                        ; $45be: $d0

    rst $28                                       ; $45bf: $ef
    rra                                           ; $45c0: $1f
    ld de, $111f                                  ; $45c1: $11 $1f $11
    ld de, $ff1f                                  ; $45c4: $11 $1f $ff
    rla                                           ; $45c7: $17
    add hl, de                                    ; $45c8: $19
    add hl, bc                                    ; $45c9: $09
    rrca                                          ; $45ca: $0f
    inc c                                         ; $45cb: $0c
    dec bc                                        ; $45cc: $0b
    ret z                                         ; $45cd: $c8

    adc a                                         ; $45ce: $8f
    rst $38                                       ; $45cf: $ff
    ld [hl], e                                    ; $45d0: $73
    db $fc                                        ; $45d1: $fc
    jr z, jr_007_460c                             ; $45d2: $28 $38

    inc l                                         ; $45d4: $2c
    jr c, jr_007_460b                             ; $45d5: $38 $34

    inc e                                         ; $45d7: $1c
    rst $38                                       ; $45d8: $ff
    ld d, $1c                                     ; $45d9: $16 $1c
    sbc d                                         ; $45db: $9a
    ld c, $8f                                     ; $45dc: $0e $8f
    adc d                                         ; $45de: $8a
    ret                                           ; $45df: $c9


    adc a                                         ; $45e0: $8f
    rst $38                                       ; $45e1: $ff
    ld [hl], b                                    ; $45e2: $70
    rst $38                                       ; $45e3: $ff
    and d                                         ; $45e4: $a2
    ld [c], a                                     ; $45e5: $e2
    rst $20                                       ; $45e6: $e7

jr_007_45e7:
    and d                                         ; $45e7: $a2

jr_007_45e8:
    push hl                                       ; $45e8: $e5
    ld b, a                                       ; $45e9: $47
    rst $38                                       ; $45ea: $ff
    inc b                                         ; $45eb: $04
    rlca                                          ; $45ec: $07
    rrca                                          ; $45ed: $0f
    dec b                                         ; $45ee: $05
    dec de                                        ; $45ef: $1b
    dec c                                         ; $45f0: $0d
    or c                                          ; $45f1: $b1
    rra                                           ; $45f2: $1f
    rst $38                                       ; $45f3: $ff
    ldh [rIE], a                                  ; $45f4: $e0 $ff
    ld a, a                                       ; $45f6: $7f
    jr nc, @+$1a                                  ; $45f7: $30 $18

    rrca                                          ; $45f9: $0f
    adc a                                         ; $45fa: $8f
    ld [$89ff], sp                                ; $45fb: $08 $ff $89
    adc [hl]                                      ; $45fe: $8e
    sbc [hl]                                      ; $45ff: $9e
    add hl, bc                                    ; $4600: $09
    inc sp                                        ; $4601: $33
    inc e                                         ; $4602: $1c
    ld l, h                                       ; $4603: $6c
    inc sp                                        ; $4604: $33
    inc bc                                        ; $4605: $03
    ret nz                                        ; $4606: $c0

    rst $38                                       ; $4607: $ff
    nop                                           ; $4608: $00
    nop                                           ; $4609: $00
    nop                                           ; $460a: $00

jr_007_460b:
    rst $38                                       ; $460b: $ff

jr_007_460c:
    rst $38                                       ; $460c: $ff
    nop                                           ; $460d: $00
    dec sp                                        ; $460e: $3b
    call nz, Call_000_38c7                        ; $460f: $c4 $c7 $38
    ld a, b                                       ; $4612: $78
    add a                                         ; $4613: $87
    rst $38                                       ; $4614: $ff
    adc a                                         ; $4615: $8f
    ld [hl], b                                    ; $4616: $70
    ld hl, sp+$07                                 ; $4617: $f8 $07
    rlca                                          ; $4619: $07
    ld hl, sp-$04                                 ; $461a: $f8 $fc
    inc bc                                        ; $461c: $03
    rst $28                                       ; $461d: $ef
    rst $38                                       ; $461e: $ff
    nop                                           ; $461f: $00
    inc a                                         ; $4620: $3c
    jp $e3f0                                      ; $4621: $c3 $f0 $e3


    di                                            ; $4624: $f3
    inc c                                         ; $4625: $0c
    inc e                                         ; $4626: $1c
    rst $38                                       ; $4627: $ff
    db $e3                                        ; $4628: $e3
    rst $20                                       ; $4629: $e7
    jr @+$01                                      ; $462a: $18 $ff

    nop                                           ; $462c: $00
    pop hl                                        ; $462d: $e1
    ld e, $9f                                     ; $462e: $1e $9f
    rst $38                                       ; $4630: $ff
    ld h, b                                       ; $4631: $60
    ld h, b                                       ; $4632: $60
    sbc a                                         ; $4633: $9f
    rst $18                                       ; $4634: $df
    jr nz, jr_007_45e7                            ; $4635: $20 $b0

    ld c, a                                       ; $4637: $4f
    ld a, a                                       ; $4638: $7f
    rst $38                                       ; $4639: $ff
    add b                                         ; $463a: $80
    jp $f93c                                      ; $463b: $c3 $3c $f9


    ld b, $f1                                     ; $463e: $06 $f1
    ld c, $0c                                     ; $4640: $0e $0c
    rst $38                                       ; $4642: $ff
    di                                            ; $4643: $f3
    ld hl, sp+$07                                 ; $4644: $f8 $07
    add [hl]                                      ; $4646: $86
    ld a, c                                       ; $4647: $79
    ld a, h                                       ; $4648: $7c
    add e                                         ; $4649: $83
    jp Jump_000_3cff                              ; $464a: $c3 $ff $3c


    ld a, $c1                                     ; $464d: $3e $c1
    rst $38                                       ; $464f: $ff
    nop                                           ; $4650: $00
    db $fd                                        ; $4651: $fd
    ld [bc], a                                    ; $4652: $02
    inc bc                                        ; $4653: $03
    rst $38                                       ; $4654: $ff
    db $fc                                        ; $4655: $fc
    cp $01                                        ; $4656: $fe $01
    ld bc, $3ffe                                  ; $4658: $01 $fe $3f
    ret nz                                        ; $465b: $c0

    add b                                         ; $465c: $80
    rst $38                                       ; $465d: $ff
    ld a, a                                       ; $465e: $7f
    ld b, e                                       ; $465f: $43
    cp h                                          ; $4660: $bc
    add b                                         ; $4661: $80
    ld a, a                                       ; $4662: $7f
    pop bc                                        ; $4663: $c1
    ld a, $9c                                     ; $4664: $3e $9c
    rst $38                                       ; $4666: $ff
    ld h, e                                       ; $4667: $63
    ld b, c                                       ; $4668: $41
    cp [hl]                                       ; $4669: $be
    add e                                         ; $466a: $83
    ld a, h                                       ; $466b: $7c
    ld h, b                                       ; $466c: $60
    sbc a                                         ; $466d: $9f
    add $ff                                       ; $466e: $c6 $ff
    add hl, sp                                    ; $4670: $39
    and [hl]                                      ; $4671: $a6
    ld e, c                                       ; $4672: $59
    ld bc, $83fe                                  ; $4673: $01 $fe $83
    ld a, h                                       ; $4676: $7c
    dec sp                                        ; $4677: $3b

jr_007_4678:
    rst $38                                       ; $4678: $ff
    call nz, Call_000_0df2                        ; $4679: $c4 $f2 $0d
    add e                                         ; $467c: $83
    ld a, h                                       ; $467d: $7c
    ld b, $f9                                     ; $467e: $06 $f9
    ld h, a                                       ; $4680: $67

jr_007_4681:
    rst $30                                       ; $4681: $f7
    sbc b                                         ; $4682: $98
    db $e4                                        ; $4683: $e4
    dec de                                        ; $4684: $1b
    and b                                         ; $4685: $a0
    push hl                                       ; $4686: $e5
    adc [hl]                                      ; $4687: $8e
    ld [hl], c                                    ; $4688: $71
    ldh a, [rIF]                                  ; $4689: $f0 $0f
    rst $38                                       ; $468b: $ff
    ld de, $c3ee                                  ; $468c: $11 $ee $c3
    inc a                                         ; $468f: $3c
    sbc a                                         ; $4690: $9f
    ld h, b                                       ; $4691: $60
    sub c                                         ; $4692: $91
    ld l, [hl]                                    ; $4693: $6e
    rst $38                                       ; $4694: $ff
    ccf                                           ; $4695: $3f
    ret nz                                        ; $4696: $c0

    jr nz, jr_007_4678                            ; $4697: $20 $df

    ld a, a                                       ; $4699: $7f
    add b                                         ; $469a: $80
    ldh a, [rIF]                                  ; $469b: $f0 $0f
    rst $38                                       ; $469d: $ff
    rst $38                                       ; $469e: $ff
    nop                                           ; $469f: $00
    jp $ff3c                                      ; $46a0: $c3 $3c $ff


    nop                                           ; $46a3: $00
    di                                            ; $46a4: $f3
    inc c                                         ; $46a5: $0c
    cp a                                          ; $46a6: $bf
    rrca                                          ; $46a7: $0f
    ldh a, [$f8]                                  ; $46a8: $f0 $f8
    rlca                                          ; $46aa: $07
    add a                                         ; $46ab: $87
    ld a, b                                       ; $46ac: $78
    and b                                         ; $46ad: $a0
    db $ed                                        ; $46ae: $ed
    rst $38                                       ; $46af: $ff
    rst $38                                       ; $46b0: $ff
    nop                                           ; $46b1: $00
    add b                                         ; $46b2: $80
    ld a, a                                       ; $46b3: $7f
    ld a, a                                       ; $46b4: $7f
    add b                                         ; $46b5: $80
    rst $38                                       ; $46b6: $ff
    nop                                           ; $46b7: $00
    add $ff                                       ; $46b8: $c6 $ff
    add hl, sp                                    ; $46ba: $39
    cp a                                          ; $46bb: $bf
    ld b, b                                       ; $46bc: $40

jr_007_46bd:
    ld h, b                                       ; $46bd: $60
    sbc a                                         ; $46be: $9f
    sbc a                                         ; $46bf: $9f
    ld h, b                                       ; $46c0: $60
    ld [hl], b                                    ; $46c1: $70
    rra                                           ; $46c2: $1f
    adc a                                         ; $46c3: $8f
    rst $08                                       ; $46c4: $cf
    jr nc, jr_007_4681                            ; $46c5: $30 $ba

    ld b, l                                       ; $46c7: $45
    nop                                           ; $46c8: $00
    nop                                           ; $46c9: $00
    nop                                           ; $46ca: $00
    rst $38                                       ; $46cb: $ff
    sub e                                         ; $46cc: $93
    ld l, h                                       ; $46cd: $6c
    xor $11                                       ; $46ce: $ee $11
    xor c                                         ; $46d0: $a9
    ld d, [hl]                                    ; $46d1: $56
    ld d, [hl]                                    ; $46d2: $56
    xor c                                         ; $46d3: $a9
    rst $38                                       ; $46d4: $ff
    pop de                                        ; $46d5: $d1
    ld l, $26                                     ; $46d6: $2e $26
    reti                                          ; $46d8: $d9


    rst $18                                       ; $46d9: $df
    jr nz, jr_007_46dc                            ; $46da: $20 $00

jr_007_46dc:
    rst $38                                       ; $46dc: $ff
    rst $38                                       ; $46dd: $ff
    sbc b                                         ; $46de: $98
    ld h, a                                       ; $46df: $67
    ld a, a                                       ; $46e0: $7f
    add b                                         ; $46e1: $80
    call nz, Call_000_3f3b                        ; $46e2: $c4 $3b $3f
    ret nz                                        ; $46e5: $c0

    rst $38                                       ; $46e6: $ff
    jp Jump_007_7d3c                              ; $46e7: $c3 $3c $7d


    add d                                         ; $46ea: $82
    add [hl]                                      ; $46eb: $86

jr_007_46ec:
    ld a, c                                       ; $46ec: $79
    nop                                           ; $46ed: $00
    rst $38                                       ; $46ee: $ff
    rst $38                                       ; $46ef: $ff
    inc a                                         ; $46f0: $3c
    jp Jump_000_38c7                              ; $46f1: $c3 $c7 $38


    jr c, jr_007_46bd                             ; $46f4: $38 $c7

    rst $20                                       ; $46f6: $e7
    jr @+$01                                      ; $46f7: $18 $ff

    inc a                                         ; $46f9: $3c
    jp Jump_000_3cc3                              ; $46fa: $c3 $c3 $3c


    ld a, [hl]                                    ; $46fd: $7e
    add c                                         ; $46fe: $81
    nop                                           ; $46ff: $00
    rst $38                                       ; $4700: $ff
    rst $38                                       ; $4701: $ff
    pop hl                                        ; $4702: $e1
    ld e, $9e                                     ; $4703: $1e $9e
    ld h, c                                       ; $4705: $61
    ld h, c                                       ; $4706: $61
    sbc [hl]                                      ; $4707: $9e
    rst $18                                       ; $4708: $df
    jr nz, @+$01                                  ; $4709: $20 $ff

    jr nz, jr_007_46ec                            ; $470b: $20 $df

    rst $18                                       ; $470d: $df
    jr nz, jr_007_4740                            ; $470e: $20 $30

    rst $08                                       ; $4710: $cf
    nop                                           ; $4711: $00
    rst $38                                       ; $4712: $ff
    rst $38                                       ; $4713: $ff
    sub c                                         ; $4714: $91
    ld l, [hl]                                    ; $4715: $6e
    ld a, h                                       ; $4716: $7c
    add e                                         ; $4717: $83
    ret nz                                        ; $4718: $c0

    ccf                                           ; $4719: $3f
    ld a, $c1                                     ; $471a: $3e $c1
    rst $38                                       ; $471c: $ff
    db $e3                                        ; $471d: $e3
    inc e                                         ; $471e: $1c
    sbc h                                         ; $471f: $9c
    ld h, e                                       ; $4720: $63
    ld [hl], a                                    ; $4721: $77
    adc b                                         ; $4722: $88
    nop                                           ; $4723: $00
    rst $38                                       ; $4724: $ff

jr_007_4725:
    rst $38                                       ; $4725: $ff
    ld d, l                                       ; $4726: $55
    xor d                                         ; $4727: $aa
    ld d, d                                       ; $4728: $52
    xor l                                         ; $4729: $ad
    ld l, b                                       ; $472a: $68
    sub a                                         ; $472b: $97
    rrca                                          ; $472c: $0f
    ldh a, [rIE]                                  ; $472d: $f0 $ff
    add b                                         ; $472f: $80
    ld a, a                                       ; $4730: $7f
    ldh [$1f], a                                  ; $4731: $e0 $1f
    ld l, b                                       ; $4733: $68
    sub a                                         ; $4734: $97
    inc bc                                        ; $4735: $03
    db $fc                                        ; $4736: $fc
    rst $38                                       ; $4737: $ff
    adc a                                         ; $4738: $8f
    ld [hl], b                                    ; $4739: $70
    adc $31                                       ; $473a: $ce $31
    jr jr_007_4725                                ; $473c: $18 $e7

    ldh a, [rIF]                                  ; $473e: $f0 $0f

jr_007_4740:
    rst $38                                       ; $4740: $ff
    pop bc                                        ; $4741: $c1
    ld a, $07                                     ; $4742: $3e $07
    ld hl, sp+$1f                                 ; $4744: $f8 $1f
    ldh [$f0], a                                  ; $4746: $e0 $f0
    rrca                                          ; $4748: $0f
    rst $38                                       ; $4749: $ff
    adc [hl]                                      ; $474a: $8e
    ld [hl], c                                    ; $474b: $71
    ccf                                           ; $474c: $3f
    ret nz                                        ; $474d: $c0

    ld h, h                                       ; $474e: $64
    sbc e                                         ; $474f: $9b
    rst $38                                       ; $4750: $ff
    nop                                           ; $4751: $00
    db $fc                                        ; $4752: $fc
    and b                                         ; $4753: $a0
    rst $38                                       ; $4754: $ff
    and b                                         ; $4755: $a0
    db $e3                                        ; $4756: $e3
    add c                                         ; $4757: $81
    ld a, [hl]                                    ; $4758: $7e
    ld a, [hl]                                    ; $4759: $7e
    add c                                         ; $475a: $81
    pop bc                                        ; $475b: $c1
    ld a, $fe                                     ; $475c: $3e $fe
    and b                                         ; $475e: $a0
    jp hl                                         ; $475f: $e9


    ld d, [hl]                                    ; $4760: $56
    xor c                                         ; $4761: $a9
    jp hl                                         ; $4762: $e9


    ld d, $6f                                     ; $4763: $16 $6f
    sub b                                         ; $4765: $90
    or b                                          ; $4766: $b0
    ld a, a                                       ; $4767: $7f
    ld c, a                                       ; $4768: $4f
    rst $18                                       ; $4769: $df
    jr nz, jr_007_47cd                            ; $476a: $20 $61

    sbc [hl]                                      ; $476c: $9e
    nop                                           ; $476d: $00
    rst $38                                       ; $476e: $ff
    nop                                           ; $476f: $00
    nop                                           ; $4770: $00
    nop                                           ; $4771: $00
    rst $38                                       ; $4772: $ff
    rst $38                                       ; $4773: $ff
    nop                                           ; $4774: $00
    sbc c                                         ; $4775: $99
    ld h, [hl]                                    ; $4776: $66
    halt                                          ; $4777: $76
    adc c                                         ; $4778: $89
    rst $08                                       ; $4779: $cf
    jr nc, @+$01                                  ; $477a: $30 $ff

    jr c, @-$37                                   ; $477c: $38 $c7

    rst $20                                       ; $477e: $e7
    jr jr_007_479d                                ; $477f: $18 $1c

    db $e3                                        ; $4781: $e3
    di                                            ; $4782: $f3
    inc c                                         ; $4783: $0c
    rst $38                                       ; $4784: $ff
    rst $38                                       ; $4785: $ff
    nop                                           ; $4786: $00
    di                                            ; $4787: $f3
    inc c                                         ; $4788: $0c
    inc e                                         ; $4789: $1c
    db $e3                                        ; $478a: $e3
    and $19                                       ; $478b: $e6 $19
    rst $38                                       ; $478d: $ff
    dec sp                                        ; $478e: $3b
    call nz, Call_000_33cc                        ; $478f: $c4 $cc $33
    ld [hl], a                                    ; $4792: $77
    adc b                                         ; $4793: $88
    cp b                                          ; $4794: $b8
    ld b, a                                       ; $4795: $47
    rst $38                                       ; $4796: $ff
    rst $38                                       ; $4797: $ff
    nop                                           ; $4798: $00
    adc h                                         ; $4799: $8c
    ld [hl], e                                    ; $479a: $73
    di                                            ; $479b: $f3
    inc c                                         ; $479c: $0c

jr_007_479d:
    ld e, $e1                                     ; $479d: $1e $e1
    rst $38                                       ; $479f: $ff
    pop hl                                        ; $47a0: $e1
    ld e, $7f                                     ; $47a1: $1e $7f
    add b                                         ; $47a3: $80
    sbc h                                         ; $47a4: $9c
    ld h, e                                       ; $47a5: $63
    db $e3                                        ; $47a6: $e3
    inc e                                         ; $47a7: $1c
    rst $38                                       ; $47a8: $ff
    rst $38                                       ; $47a9: $ff
    nop                                           ; $47aa: $00
    db $e3                                        ; $47ab: $e3
    inc e                                         ; $47ac: $1c
    sbc [hl]                                      ; $47ad: $9e
    ld h, c                                       ; $47ae: $61
    ld [hl], c                                    ; $47af: $71
    adc [hl]                                      ; $47b0: $8e
    rst $38                                       ; $47b1: $ff
    rst $08                                       ; $47b2: $cf
    jr nc, jr_007_47e7                            ; $47b3: $30 $32

    call Call_000_00ff                            ; $47b5: $cd $ff $00
    ret nz                                        ; $47b8: $c0

    ccf                                           ; $47b9: $3f
    rst $38                                       ; $47ba: $ff
    rst $38                                       ; $47bb: $ff
    nop                                           ; $47bc: $00

jr_007_47bd:
    rst $38                                       ; $47bd: $ff
    nop                                           ; $47be: $00
    ld bc, $fefe                                  ; $47bf: $01 $fe $fe
    ld bc, $03ff                                  ; $47c2: $01 $ff $03
    db $fc                                        ; $47c5: $fc
    db $fc                                        ; $47c6: $fc
    inc bc                                        ; $47c7: $03
    and a                                         ; $47c8: $a7
    ld e, b                                       ; $47c9: $58
    add hl, sp                                    ; $47ca: $39
    add $ff                                       ; $47cb: $c6 $ff

jr_007_47cd:
    rst $38                                       ; $47cd: $ff
    nop                                           ; $47ce: $00
    inc sp                                        ; $47cf: $33
    call z, $23dc                                 ; $47d0: $cc $dc $23
    ld h, e                                       ; $47d3: $63
    sbc h                                         ; $47d4: $9c
    rst $38                                       ; $47d5: $ff
    cp [hl]                                       ; $47d6: $be
    ld b, c                                       ; $47d7: $41
    rst $00                                       ; $47d8: $c7
    jr c, jr_007_4853                             ; $47d9: $38 $78

    add a                                         ; $47db: $87
    sbc a                                         ; $47dc: $9f
    ld h, b                                       ; $47dd: $60
    nop                                           ; $47de: $00
    and b                                         ; $47df: $a0
    rst $38                                       ; $47e0: $ff
    and b                                         ; $47e1: $a0
    rst $38                                       ; $47e2: $ff
    and b                                         ; $47e3: $a0
    ld sp, hl                                     ; $47e4: $f9
    nop                                           ; $47e5: $00
    nop                                           ; $47e6: $00

jr_007_47e7:
    nop                                           ; $47e7: $00
    rst $38                                       ; $47e8: $ff
    inc c                                         ; $47e9: $0c
    di                                            ; $47ea: $f3
    ei                                            ; $47eb: $fb
    inc b                                         ; $47ec: $04
    call z, Call_000_3733                         ; $47ed: $cc $33 $37
    ret z                                         ; $47f0: $c8

    rst $38                                       ; $47f1: $ff
    ldh a, [rIF]                                  ; $47f2: $f0 $0f
    rra                                           ; $47f4: $1f
    ldh [$e1], a                                  ; $47f5: $e0 $e1
    ld e, $00                                     ; $47f7: $1e $00
    rst $38                                       ; $47f9: $ff
    rst $38                                       ; $47fa: $ff
    rst $00                                       ; $47fb: $c7
    jr c, jr_007_47bd                             ; $47fc: $38 $bf

    ld b, b                                       ; $47fe: $40
    ld [hl], b                                    ; $47ff: $70
    adc a                                         ; $4800: $8f
    rst $08                                       ; $4801: $cf
    jr nc, @+$01                                  ; $4802: $30 $ff

    ld a, b                                       ; $4804: $78
    add a                                         ; $4805: $87
    adc a                                         ; $4806: $8f
    ld [hl], b                                    ; $4807: $70
    di                                            ; $4808: $f3
    inc c                                         ; $4809: $0c

jr_007_480a:
    nop                                           ; $480a: $00
    rst $38                                       ; $480b: $ff
    rst $38                                       ; $480c: $ff
    ld a, $c1                                     ; $480d: $3e $c1
    pop bc                                        ; $480f: $c1
    ld a, $7f                                     ; $4810: $3e $7f
    add b                                         ; $4812: $80
    add b                                         ; $4813: $80
    ld a, a                                       ; $4814: $7f
    rst $38                                       ; $4815: $ff
    ld a, a                                       ; $4816: $7f
    add b                                         ; $4817: $80
    ret nz                                        ; $4818: $c0

    ccf                                           ; $4819: $3f
    ccf                                           ; $481a: $3f
    ret nz                                        ; $481b: $c0

    nop                                           ; $481c: $00
    rst $38                                       ; $481d: $ff
    rst $38                                       ; $481e: $ff
    ccf                                           ; $481f: $3f
    ret nz                                        ; $4820: $c0

    ldh [$1f], a                                  ; $4821: $e0 $1f
    rra                                           ; $4823: $1f
    ldh [$f0], a                                  ; $4824: $e0 $f0
    rrca                                          ; $4826: $0f
    rst $38                                       ; $4827: $ff
    adc a                                         ; $4828: $8f
    ld [hl], b                                    ; $4829: $70
    ld [hl], b                                    ; $482a: $70
    adc a                                         ; $482b: $8f
    rst $18                                       ; $482c: $df
    jr nz, jr_007_482f                            ; $482d: $20 $00

jr_007_482f:
    rst $38                                       ; $482f: $ff
    ccf                                           ; $4830: $3f
    adc $31                                       ; $4831: $ce $31
    add hl, sp                                    ; $4833: $39
    add $c7                                       ; $4834: $c6 $c7
    jr c, jr_007_480a                             ; $4836: $38 $d2

    pop hl                                        ; $4838: $e1
    cp [hl]                                       ; $4839: $be
    pop hl                                        ; $483a: $e1
    rst $38                                       ; $483b: $ff
    nop                                           ; $483c: $00
    rst $38                                       ; $483d: $ff
    rst $20                                       ; $483e: $e7
    jr jr_007_4879                                ; $483f: $18 $38

    rst $00                                       ; $4841: $c7
    adc a                                         ; $4842: $8f
    ld [hl], b                                    ; $4843: $70
    rst $38                                       ; $4844: $ff
    ld a, b                                       ; $4845: $78
    add a                                         ; $4846: $87
    add a                                         ; $4847: $87
    ld a, b                                       ; $4848: $78
    ld hl, sp+$07                                 ; $4849: $f8 $07
    rlca                                          ; $484b: $07
    ld hl, sp+$03                                 ; $484c: $f8 $03
    nop                                           ; $484e: $00
    rst $38                                       ; $484f: $ff
    and b                                         ; $4850: $a0
    rst $38                                       ; $4851: $ff
    and b                                         ; $4852: $a0

jr_007_4853:
    rst $38                                       ; $4853: $ff
    and b                                         ; $4854: $a0
    ld sp, hl                                     ; $4855: $f9
    nop                                           ; $4856: $00
    nop                                           ; $4857: $00
    nop                                           ; $4858: $00
    rst $38                                       ; $4859: $ff
    rst $38                                       ; $485a: $ff
    nop                                           ; $485b: $00
    inc a                                         ; $485c: $3c
    jp Jump_000_38c7                              ; $485d: $c3 $c7 $38


    ld sp, hl                                     ; $4860: $f9
    ld b, $ff                                     ; $4861: $06 $ff
    ld c, $f1                                     ; $4863: $0e $f1
    or $09                                        ; $4865: $f6 $09
    add hl, de                                    ; $4867: $19
    and $e7                                       ; $4868: $e6 $e7
    jr @+$01                                      ; $486a: $18 $ff

    rst $38                                       ; $486c: $ff
    nop                                           ; $486d: $00

jr_007_486e:
    call c, Call_007_6723                         ; $486e: $dc $23 $67
    sbc b                                         ; $4871: $98
    cp b                                          ; $4872: $b8
    ld b, a                                       ; $4873: $47
    rst $38                                       ; $4874: $ff
    rst $08                                       ; $4875: $cf
    jr nc, jr_007_486e                            ; $4876: $30 $f6

    add hl, bc                                    ; $4878: $09

jr_007_4879:
    add hl, sp                                    ; $4879: $39
    add $cf                                       ; $487a: $c6 $cf
    jr nc, @+$01                                  ; $487c: $30 $ff

    rst $38                                       ; $487e: $ff
    nop                                           ; $487f: $00
    ld [hl], b                                    ; $4880: $70
    adc a                                         ; $4881: $8f
    rst $08                                       ; $4882: $cf
    jr nc, jr_007_48b6                            ; $4883: $30 $31

    adc $ff                                       ; $4885: $ce $ff
    cp $01                                        ; $4887: $fe $01
    inc bc                                        ; $4889: $03
    db $fc                                        ; $488a: $fc
    db $fc                                        ; $488b: $fc
    inc bc                                        ; $488c: $03
    adc a                                         ; $488d: $8f
    ld [hl], b                                    ; $488e: $70
    rst $38                                       ; $488f: $ff
    rst $38                                       ; $4890: $ff
    nop                                           ; $4891: $00
    sbc d                                         ; $4892: $9a
    ld h, l                                       ; $4893: $65
    halt                                          ; $4894: $76
    adc a                                         ; $4895: $8f
    call $ff39                                    ; $4896: $cd $39 $ff
    add hl, de                                    ; $4899: $19
    pop af                                        ; $489a: $f1
    or e                                          ; $489b: $b3
    ld h, c                                       ; $489c: $61
    ld h, [hl]                                    ; $489d: $66
    jp Jump_007_41e3                              ; $489e: $c3 $e3 $41


    rst $38                                       ; $48a1: $ff
    rst $38                                       ; $48a2: $ff
    nop                                           ; $48a3: $00

jr_007_48a4:
    jp $fc3c                                      ; $48a4: $c3 $3c $fc


    inc bc                                        ; $48a7: $03
    sbc d                                         ; $48a8: $9a
    ld h, l                                       ; $48a9: $65
    rst $38                                       ; $48aa: $ff
    ld l, h                                       ; $48ab: $6c
    sbc a                                         ; $48ac: $9f
    db $d3                                        ; $48ad: $d3
    ld [hl-], a                                   ; $48ae: $32
    or d                                          ; $48af: $b2
    ld [hl], e                                    ; $48b0: $73
    ld b, c                                       ; $48b1: $41
    pop bc                                        ; $48b2: $c1
    rst $38                                       ; $48b3: $ff
    rst $38                                       ; $48b4: $ff
    nop                                           ; $48b5: $00

jr_007_48b6:
    sub b                                         ; $48b6: $90
    ld l, a                                       ; $48b7: $6f
    nop                                           ; $48b8: $00
    rst $38                                       ; $48b9: $ff
    rrca                                          ; $48ba: $0f
    ldh a, [rIE]                                  ; $48bb: $f0 $ff
    ld a, b                                       ; $48bd: $78
    add a                                         ; $48be: $87
    add $3f                                       ; $48bf: $c6 $3f
    rra                                           ; $48c1: $1f
    ld sp, hl                                     ; $48c2: $f9
    or c                                          ; $48c3: $b1
    ld h, b                                       ; $48c4: $60
    rst $38                                       ; $48c5: $ff
    rst $38                                       ; $48c6: $ff
    nop                                           ; $48c7: $00
    inc c                                         ; $48c8: $0c
    di                                            ; $48c9: $f3
    ld bc, $f0fe                                  ; $48ca: $01 $fe $f0
    rrca                                          ; $48cd: $0f
    ld a, a                                       ; $48ce: $7f
    inc c                                         ; $48cf: $0c
    rst $38                                       ; $48d0: $ff
    ld a, [c]                                     ; $48d1: $f2
    inc de                                        ; $48d2: $13
    ld [hl-], a                                   ; $48d3: $32
    di                                            ; $48d4: $f3
    pop bc                                        ; $48d5: $c1
    ldh [$e0], a                                  ; $48d6: $e0 $e0
    cp $a0                                        ; $48d8: $fe $a0
    pop hl                                        ; $48da: $e1
    jr c, jr_007_48a4                             ; $48db: $38 $c7

    rrca                                          ; $48dd: $0f
    ldh a, [$86]                                  ; $48de: $f0 $86
    ld a, c                                       ; $48e0: $79
    ld h, c                                       ; $48e1: $61
    rst $30                                       ; $48e2: $f7
    cp $91                                        ; $48e3: $fe $91
    sbc a                                         ; $48e5: $9f
    and b                                         ; $48e6: $a0
    rst $20                                       ; $48e7: $e7
    dec c                                         ; $48e8: $0d
    cp $de                                        ; $48e9: $fe $de
    inc sp                                        ; $48eb: $33
    ei                                            ; $48ec: $fb
    or e                                          ; $48ed: $b3
    ld [c], a                                     ; $48ee: $e2
    and b                                         ; $48ef: $a0
    ld [c], a                                     ; $48f0: $e2
    adc c                                         ; $48f1: $89
    call Call_000_3b32                            ; $48f2: $cd $32 $3b
    call nz, $70f6                                ; $48f5: $c4 $f6 $70
    pop hl                                        ; $48f8: $e1
    rst $30                                       ; $48f9: $f7
    ld [$e3a0], sp                                ; $48fa: $08 $a0 $e3

jr_007_48fd:
    sbc e                                         ; $48fd: $9b
    ld h, h                                       ; $48fe: $64
    ld l, h                                       ; $48ff: $6c
    sub e                                         ; $4900: $93
    rst $38                                       ; $4901: $ff
    rst $00                                       ; $4902: $c7
    jr c, jr_007_48fd                             ; $4903: $38 $f8

    rlca                                          ; $4905: $07
    rrca                                          ; $4906: $0f
    ldh a, [rIE]                                  ; $4907: $f0 $ff
    nop                                           ; $4909: $00
    rst $38                                       ; $490a: $ff
    sbc [hl]                                      ; $490b: $9e
    ld h, c                                       ; $490c: $61
    ld [hl], c                                    ; $490d: $71
    adc [hl]                                      ; $490e: $8e
    adc a                                         ; $490f: $8f
    ld [hl], b                                    ; $4910: $70
    ld a, b                                       ; $4911: $78
    add a                                         ; $4912: $87
    ccf                                           ; $4913: $3f
    rst $00                                       ; $4914: $c7
    jr c, jr_007_4953                             ; $4915: $38 $3c

    jp $1ce3                                      ; $4917: $c3 $e3 $1c


    nop                                           ; $491a: $00
    nop                                           ; $491b: $00
    nop                                           ; $491c: $00
    rst $38                                       ; $491d: $ff
    ld e, $e1                                     ; $491e: $1e $e1
    di                                            ; $4920: $f3
    inc c                                         ; $4921: $0c
    rrca                                          ; $4922: $0f
    ldh a, [$f8]                                  ; $4923: $f0 $f8
    rlca                                          ; $4925: $07
    rst $38                                       ; $4926: $ff
    add a                                         ; $4927: $87
    ld a, b                                       ; $4928: $78
    ld a, h                                       ; $4929: $7c
    add e                                         ; $492a: $83
    jp Jump_000_003c                              ; $492b: $c3 $3c $00


    rst $38                                       ; $492e: $ff
    rst $38                                       ; $492f: $ff
    ld [hl-], a                                   ; $4930: $32
    call Call_000_02fd                            ; $4931: $cd $fd $02
    inc bc                                        ; $4934: $03
    db $fc                                        ; $4935: $fc
    cp $01                                        ; $4936: $fe $01
    rst $38                                       ; $4938: $ff
    ld bc, $fffe                                  ; $4939: $01 $fe $ff
    nop                                           ; $493c: $00
    add b                                         ; $493d: $80
    ld a, a                                       ; $493e: $7f
    nop                                           ; $493f: $00
    rst $38                                       ; $4940: $ff
    rst $38                                       ; $4941: $ff
    ld a, c                                       ; $4942: $79
    add [hl]                                      ; $4943: $86
    add $39                                       ; $4944: $c6 $39
    cp a                                          ; $4946: $bf
    ld b, b                                       ; $4947: $40

jr_007_4948:
    ld h, b                                       ; $4948: $60
    sbc a                                         ; $4949: $9f
    rst $38                                       ; $494a: $ff
    sbc a                                         ; $494b: $9f
    ld h, b                                       ; $494c: $60
    ld [hl], b                                    ; $494d: $70
    adc a                                         ; $494e: $8f
    rst $08                                       ; $494f: $cf
    jr nc, jr_007_4952                            ; $4950: $30 $00

jr_007_4952:
    rst $38                                       ; $4952: $ff

jr_007_4953:
    rst $38                                       ; $4953: $ff
    or c                                          ; $4954: $b1
    ld h, b                                       ; $4955: $60
    jr jr_007_4948                                ; $4956: $18 $f0

    call z, Call_007_5938                         ; $4958: $cc $38 $59
    or b                                          ; $495b: $b0
    rst $38                                       ; $495c: $ff
    ld [hl], e                                    ; $495d: $73
    pop hl                                        ; $495e: $e1
    add [hl]                                      ; $495f: $86
    add e                                         ; $4960: $83
    adc l                                         ; $4961: $8d
    add [hl]                                      ; $4962: $86
    ld a, b                                       ; $4963: $78
    rst $38                                       ; $4964: $ff
    rst $38                                       ; $4965: $ff
    or d                                          ; $4966: $b2
    di                                            ; $4967: $f3
    ld a, [c]                                     ; $4968: $f2
    ld d, e                                       ; $4969: $53
    jp nc, $b373                                  ; $496a: $d2 $73 $b3

    pop de                                        ; $496d: $d1
    rst $38                                       ; $496e: $ff
    add hl, de                                    ; $496f: $19
    pop af                                        ; $4970: $f1
    jp hl                                         ; $4971: $e9


    jr @+$1e                                      ; $4972: $18 $1c

    add sp, $07                                   ; $4974: $e8 $07
    rst $38                                       ; $4976: $ff
    rst $38                                       ; $4977: $ff
    ld h, b                                       ; $4978: $60
    ret nz                                        ; $4979: $c0

    call z, $8c8c                                 ; $497a: $cc $8c $8c
    add h                                         ; $497d: $84
    ret nz                                        ; $497e: $c0

    add b                                         ; $497f: $80
    rst $38                                       ; $4980: $ff
    ld h, b                                       ; $4981: $60
    ret nz                                        ; $4982: $c0

    cp b                                          ; $4983: $b8
    ldh a, [$ef]                                  ; $4984: $f0 $ef
    sbc [hl]                                      ; $4986: $9e
    dec c                                         ; $4987: $0d
    di                                            ; $4988: $f3
    rst $38                                       ; $4989: $ff
    or d                                          ; $498a: $b2
    di                                            ; $498b: $f3
    di                                            ; $498c: $f3
    sub d                                         ; $498d: $92
    jp nc, $93b3                                  ; $498e: $d2 $b3 $93

    pop af                                        ; $4991: $f1
    rst $38                                       ; $4992: $ff
    reti                                          ; $4993: $d9


    ld [hl], c                                    ; $4994: $71
    ld l, c                                       ; $4995: $69
    ld e, b                                       ; $4996: $58
    ld c, h                                       ; $4997: $4c
    ld a, b                                       ; $4998: $78
    add a                                         ; $4999: $87
    rst $38                                       ; $499a: $ff

jr_007_499b:
    rst $38                                       ; $499b: $ff
    sub [hl]                                      ; $499c: $96
    sbc d                                         ; $499d: $9a
    sbc [hl]                                      ; $499e: $9e
    sub d                                         ; $499f: $92
    jp nc, Jump_007_5e9e                          ; $49a0: $d2 $9e $5e

    call z, $61ff                                 ; $49a3: $cc $ff $61
    ret nz                                        ; $49a6: $c0

    or e                                          ; $49a7: $b3
    pop hl                                        ; $49a8: $e1
    sbc $b3                                       ; $49a9: $de $b3
    ld c, h                                       ; $49ab: $4c
    cp a                                          ; $49ac: $bf
    rst $38                                       ; $49ad: $ff
    ld h, a                                       ; $49ae: $67
    ld b, d                                       ; $49af: $42
    ld c, h                                       ; $49b0: $4c
    ld b, a                                       ; $49b1: $47
    jp $b242                                      ; $49b2: $c3 $42 $b2


    db $e3                                        ; $49b5: $e3
    rst $38                                       ; $49b6: $ff
    rst $20                                       ; $49b7: $e7
    jp nz, $c74c                                  ; $49b8: $c2 $4c $c7

    db $db                                        ; $49bb: $db
    ld c, h                                       ; $49bc: $4c
    ld [hl-], a                                   ; $49bd: $32
    db $fd                                        ; $49be: $fd
    rst $38                                       ; $49bf: $ff
    call z, Call_000_3b33                         ; $49c0: $cc $33 $3b
    call nz, Call_000_38c7                        ; $49c3: $c4 $c7 $38
    ld a, b                                       ; $49c6: $78
    add a                                         ; $49c7: $87
    rst $38                                       ; $49c8: $ff
    adc a                                         ; $49c9: $8f
    ld [hl], b                                    ; $49ca: $70
    ld hl, sp+$07                                 ; $49cb: $f8 $07
    rlca                                          ; $49cd: $07
    ld hl, sp+$00                                 ; $49ce: $f8 $00
    rst $38                                       ; $49d0: $ff
    rst $28                                       ; $49d1: $ef
    di                                            ; $49d2: $f3
    inc c                                         ; $49d3: $0c
    inc a                                         ; $49d4: $3c
    jp $e3f0                                      ; $49d5: $c3 $f0 $e3


    di                                            ; $49d8: $f3
    inc c                                         ; $49d9: $0c
    inc e                                         ; $49da: $1c
    rst $38                                       ; $49db: $ff
    db $e3                                        ; $49dc: $e3
    nop                                           ; $49dd: $00
    rst $38                                       ; $49de: $ff

jr_007_49df:
    ld e, $e1                                     ; $49df: $1e $e1
    pop hl                                        ; $49e1: $e1
    ld e, $9f                                     ; $49e2: $1e $9f
    rst $38                                       ; $49e4: $ff
    ld h, b                                       ; $49e5: $60
    ld h, b                                       ; $49e6: $60
    sbc a                                         ; $49e7: $9f
    rst $18                                       ; $49e8: $df
    jr nz, jr_007_499b                            ; $49e9: $20 $b0

    ld c, a                                       ; $49eb: $4f
    ld a, a                                       ; $49ec: $7f
    rlca                                          ; $49ed: $07
    add b                                         ; $49ee: $80
    nop                                           ; $49ef: $00
    rst $38                                       ; $49f0: $ff
    nop                                           ; $49f1: $00
    nop                                           ; $49f2: $00
    nop                                           ; $49f3: $00
    rst $38                                       ; $49f4: $ff
    rst $38                                       ; $49f5: $ff
    nop                                           ; $49f6: $00
    sbc [hl]                                      ; $49f7: $9e
    ld h, c                                       ; $49f8: $61
    ld h, c                                       ; $49f9: $61
    sbc [hl]                                      ; $49fa: $9e
    rst $18                                       ; $49fb: $df
    jr nz, @+$01                                  ; $49fc: $20 $ff

    jr nz, jr_007_49df                            ; $49fe: $20 $df

    rst $18                                       ; $4a00: $df
    jr nz, jr_007_4a33                            ; $4a01: $20 $30

    rst $08                                       ; $4a03: $cf
    rst $08                                       ; $4a04: $cf
    jr nc, @+$01                                  ; $4a05: $30 $ff

    rst $38                                       ; $4a07: $ff
    nop                                           ; $4a08: $00
    ld a, [hl]                                    ; $4a09: $7e
    add c                                         ; $4a0a: $81
    jp Jump_000_3c3f                              ; $4a0b: $c3 $3f $3c


    call nz, $e4ff                                ; $4a0e: $c4 $ff $e4
    inc e                                         ; $4a11: $1c
    sbc [hl]                                      ; $4a12: $9e
    ld h, h                                       ; $4a13: $64
    ld h, d                                       ; $4a14: $62
    sbc [hl]                                      ; $4a15: $9e
    ld a, [c]                                     ; $4a16: $f2
    ld c, $ff                                     ; $4a17: $0e $ff
    rst $38                                       ; $4a19: $ff
    nop                                           ; $4a1a: $00
    ld d, [hl]                                    ; $4a1b: $56
    xor c                                         ; $4a1c: $a9
    jp hl                                         ; $4a1d: $e9


    or $3b                                        ; $4a1e: $f6 $3b
    inc e                                         ; $4a20: $1c
    rst $38                                       ; $4a21: $ff
    ld c, $07                                     ; $4a22: $0e $07
    inc bc                                        ; $4a24: $03
    ld bc, $6071                                  ; $4a25: $01 $71 $60
    ld e, b                                       ; $4a28: $58
    ld [hl], b                                    ; $4a29: $70
    rst $38                                       ; $4a2a: $ff
    sbc a                                         ; $4a2b: $9f
    ld h, b                                       ; $4a2c: $60
    cp [hl]                                       ; $4a2d: $be
    ld b, c                                       ; $4a2e: $41
    add hl, hl                                    ; $4a2f: $29
    sub $36                                       ; $4a30: $d6 $36
    ret                                           ; $4a32: $c9


jr_007_4a33:
    rst $38                                       ; $4a33: $ff
    ld [hl], c                                    ; $4a34: $71
    adc [hl]                                      ; $4a35: $8e
    ld h, [hl]                                    ; $4a36: $66
    sbc c                                         ; $4a37: $99
    sub [hl]                                      ; $4a38: $96
    rst $28                                       ; $4a39: $ef
    rst $18                                       ; $4a3a: $df
    ld a, c                                       ; $4a3b: $79
    rst $38                                       ; $4a3c: $ff
    rst $38                                       ; $4a3d: $ff
    nop                                           ; $4a3e: $00
    ld a, a                                       ; $4a3f: $7f
    add b                                         ; $4a40: $80
    call nz, Call_000_303b                        ; $4a41: $c4 $3b $30
    rst $08                                       ; $4a44: $cf
    rst $38                                       ; $4a45: $ff
    jp Jump_000_343f                              ; $4a46: $c3 $3f $34


    db $fc                                        ; $4a49: $fc
    ld a, h                                       ; $4a4a: $7c
    call z, $8848                                 ; $4a4b: $cc $48 $88
    rst $38                                       ; $4a4e: $ff
    ld h, b                                       ; $4a4f: $60
    sbc a                                         ; $4a50: $9f
    add b                                         ; $4a51: $80
    ld a, a                                       ; $4a52: $7f
    rra                                           ; $4a53: $1f
    ldh [$f7], a                                  ; $4a54: $e0 $f7
    ld [$3cff], sp                                ; $4a56: $08 $ff $3c
    jp $ff80                                      ; $4a59: $c3 $80 $ff


    add c                                         ; $4a5c: $81
    rst $38                                       ; $4a5d: $ff
    ld c, a                                       ; $4a5e: $4f
    ld [hl], c                                    ; $4a5f: $71
    rst $38                                       ; $4a60: $ff
    ld b, $f9                                     ; $4a61: $06 $f9
    nop                                           ; $4a63: $00
    rst $38                                       ; $4a64: $ff
    ret c                                         ; $4a65: $d8

    ccf                                           ; $4a66: $3f
    or a                                          ; $4a67: $b7
    ld h, l                                       ; $4a68: $65
    rst $38                                       ; $4a69: $ff
    ld h, l                                       ; $4a6a: $65
    rst $00                                       ; $4a6b: $c7
    rst $08                                       ; $4a6c: $cf
    add [hl]                                      ; $4a6d: $86
    sbc d                                         ; $4a6e: $9a
    ld c, $8c                                     ; $4a6f: $0e $8c
    ld b, $ff                                     ; $4a71: $06 $ff
    rst $38                                       ; $4a73: $ff
    nop                                           ; $4a74: $00
    cp $01                                        ; $4a75: $fe $01
    pop bc                                        ; $4a77: $c1
    cp $ae                                        ; $4a78: $fe $ae
    ld sp, $23ff                                  ; $4a7a: $31 $ff $23
    inc a                                         ; $4a7d: $3c
    jr nc, @+$31                                  ; $4a7e: $30 $2f

    ld sp, $1c3e                                  ; $4a80: $31 $3e $1c
    rrca                                          ; $4a83: $0f
    rst $38                                       ; $4a84: $ff
    ld sp, hl                                     ; $4a85: $f9
    ld b, $55                                     ; $4a86: $06 $55
    xor d                                         ; $4a88: $aa
    add sp, $17                                   ; $4a89: $e8 $17

Jump_007_4a8b:
    ld l, h                                       ; $4a8b: $6c
    sub e                                         ; $4a8c: $93
    rst $38                                       ; $4a8d: $ff
    or b                                          ; $4a8e: $b0
    ld c, a                                       ; $4a8f: $4f
    rst $18                                       ; $4a90: $df
    ld hl, $ff33                                  ; $4a91: $21 $33 $ff
    ld hl, sp-$34                                 ; $4a94: $f8 $cc
    rst $38                                       ; $4a96: $ff
    rst $38                                       ; $4a97: $ff
    nop                                           ; $4a98: $00
    xor $11                                       ; $4a99: $ee $11
    xor c                                         ; $4a9b: $a9
    ld d, [hl]                                    ; $4a9c: $56
    sub $29                                       ; $4a9d: $d6 $29
    rst $38                                       ; $4a9f: $ff
    pop de                                        ; $4aa0: $d1
    xor $23                                       ; $4aa1: $ee $23
    ccf                                           ; $4aa3: $3f
    daa                                           ; $4aa4: $27
    inc a                                         ; $4aa5: $3c
    inc e                                         ; $4aa6: $1c

jr_007_4aa7:
    jr jr_007_4aa7                                ; $4aa7: $18 $fe

    and b                                         ; $4aa9: $a0
    db $e3                                        ; $4aaa: $e3
    ccf                                           ; $4aab: $3f
    ret nz                                        ; $4aac: $c0

    jp Jump_007_7d3c                              ; $4aad: $c3 $3c $7d


    add d                                         ; $4ab0: $82
    add [hl]                                      ; $4ab1: $86
    rst $38                                       ; $4ab2: $ff
    ld sp, hl                                     ; $4ab3: $f9
    ld sp, hl                                     ; $4ab4: $f9
    add [hl]                                      ; $4ab5: $86
    rst $38                                       ; $4ab6: $ff
    nop                                           ; $4ab7: $00
    rst $00                                       ; $4ab8: $c7
    jr c, @+$3a                                   ; $4ab9: $38 $38

    rst $38                                       ; $4abb: $ff
    rst $00                                       ; $4abc: $c7
    rst $20                                       ; $4abd: $e7
    jr jr_007_4afc                                ; $4abe: $18 $3c

    jp Jump_000_3cc3                              ; $4ac0: $c3 $c3 $3c


    ld a, [hl]                                    ; $4ac3: $7e
    rlca                                          ; $4ac4: $07
    add c                                         ; $4ac5: $81
    pop bc                                        ; $4ac6: $c1
    ld a, $00                                     ; $4ac7: $3e $00
    nop                                           ; $4ac9: $00
    nop                                           ; $4aca: $00
    rst $38                                       ; $4acb: $ff
    inc a                                         ; $4acc: $3c
    jp $1ce3                                      ; $4acd: $c3 $e3 $1c


    sbc [hl]                                      ; $4ad0: $9e
    ld h, c                                       ; $4ad1: $61
    ld [hl], c                                    ; $4ad2: $71
    adc [hl]                                      ; $4ad3: $8e
    rst $38                                       ; $4ad4: $ff
    rst $08                                       ; $4ad5: $cf
    jr nc, jr_007_4b0a                            ; $4ad6: $30 $32

    call Call_000_00ff                            ; $4ad8: $cd $ff $00
    nop                                           ; $4adb: $00
    rst $38                                       ; $4adc: $ff
    cp a                                          ; $4add: $bf
    ld c, $f2                                     ; $4ade: $0e $f2
    cp $02                                        ; $4ae0: $fe $02
    ld [bc], a                                    ; $4ae2: $02
    cp $fc                                        ; $4ae3: $fe $fc
    db $e3                                        ; $4ae5: $e3
    and [hl]                                      ; $4ae6: $a6
    rst $38                                       ; $4ae7: $ff
    ld e, d                                       ; $4ae8: $5a
    ld bc, $70ff                                  ; $4ae9: $01 $ff $70
    ld h, b                                       ; $4aec: $60
    ld bc, $0300                                  ; $4aed: $01 $00 $03
    rst $38                                       ; $4af0: $ff
    ld bc, $6079                                  ; $4af1: $01 $79 $60
    ld a, b                                       ; $4af4: $78
    ld [hl], b                                    ; $4af5: $70
    ld bc, $0700                                  ; $4af6: $01 $00 $07
    rst $38                                       ; $4af9: $ff
    inc bc                                        ; $4afa: $03
    db $fc                                        ; $4afb: $fc

jr_007_4afc:
    rst $38                                       ; $4afc: $ff
    pop af                                        ; $4afd: $f1
    ld h, b                                       ; $4afe: $60
    xor l                                         ; $4aff: $ad
    call z, $ff4b                                 ; $4b00: $cc $4b $ff

jr_007_4b03:
    add c                                         ; $4b03: $81
    add $87                                       ; $4b04: $c6 $87
    add $c3                                       ; $4b06: $c6 $c3
    pop hl                                        ; $4b08: $e1
    pop bc                                        ; $4b09: $c1

jr_007_4b0a:
    add hl, sp                                    ; $4b0a: $39
    rst $38                                       ; $4b0b: $ff
    pop af                                        ; $4b0c: $f1
    ld c, $ff                                     ; $4b0d: $0e $ff

jr_007_4b0f:
    sbc h                                         ; $4b0f: $9c
    adc h                                         ; $4b10: $8c
    or h                                          ; $4b11: $b4
    sbc h                                         ; $4b12: $9c
    inc c                                         ; $4b13: $0c
    rst $38                                       ; $4b14: $ff
    adc h                                         ; $4b15: $8c
    call z, $9e8c                                 ; $4b16: $cc $8c $9e
    inc c                                         ; $4b19: $0c
    ld [hl-], a                                   ; $4b1a: $32
    ld e, $63                                     ; $4b1b: $1e $63
    rst $38                                       ; $4b1d: $ff
    ld a, $c1                                     ; $4b1e: $3e $c1
    rst $38                                       ; $4b20: $ff
    and [hl]                                      ; $4b21: $a6
    reti                                          ; $4b22: $d9


    add h                                         ; $4b23: $84
    ei                                            ; $4b24: $fb
    or a                                          ; $4b25: $b7
    rst $38                                       ; $4b26: $ff
    ret z                                         ; $4b27: $c8

    adc $71                                       ; $4b28: $ce $71
    ld b, c                                       ; $4b2a: $41
    ld a, a                                       ; $4b2b: $7f
    halt                                          ; $4b2c: $76
    ld a, [hl+]                                   ; $4b2d: $2a
    ld [hl+], a                                   ; $4b2e: $22
    rst $38                                       ; $4b2f: $ff
    ld a, $d1                                     ; $4b30: $3e $d1
    rst $28                                       ; $4b32: $ef
    add $83                                       ; $4b33: $c6 $83
    ld h, e                                       ; $4b35: $63
    pop bc                                        ; $4b36: $c1
    or e                                          ; $4b37: $b3
    rst $38                                       ; $4b38: $ff
    ld h, c                                       ; $4b39: $61
    ld h, [hl]                                    ; $4b3a: $66
    jp $86cc                                      ; $4b3b: $c3 $cc $86


    ld a, [de]                                    ; $4b3e: $1a
    ld c, $31                                     ; $4b3f: $0e $31
    rst $38                                       ; $4b41: $ff
    rra                                           ; $4b42: $1f
    xor $f1                                       ; $4b43: $ee $f1
    rlca                                          ; $4b45: $07
    inc bc                                        ; $4b46: $03
    ld h, e                                       ; $4b47: $63
    ld b, e                                       ; $4b48: $43
    ld [hl], e                                    ; $4b49: $73
    rst $38                                       ; $4b4a: $ff
    ld h, d                                       ; $4b4b: $62
    ld d, d                                       ; $4b4c: $52
    ld [hl], d                                    ; $4b4d: $72
    ld d, d                                       ; $4b4e: $52
    ld [hl], e                                    ; $4b4f: $73
    ld [hl], c                                    ; $4b50: $71
    ld d, c                                       ; $4b51: $51
    sub c                                         ; $4b52: $91
    cp $c0                                        ; $4b53: $fe $c0
    ldh [$87], a                                  ; $4b55: $e0 $87
    rlca                                          ; $4b57: $07
    ld [hl], a                                    ; $4b58: $77
    inc hl                                        ; $4b59: $23
    ld d, e                                       ; $4b5a: $53
    ld [hl], e                                    ; $4b5b: $73
    ld [hl], a                                    ; $4b5c: $77
    rst $38                                       ; $4b5d: $ff
    ld h, e                                       ; $4b5e: $63
    dec b                                         ; $4b5f: $05
    rlca                                          ; $4b60: $07
    sbc b                                         ; $4b61: $98
    rrca                                          ; $4b62: $0f
    ldh a, [$9f]                                  ; $4b63: $f0 $9f
    ld h, b                                       ; $4b65: $60
    rst $38                                       ; $4b66: $ff
    rst $38                                       ; $4b67: $ff
    add hl, hl                                    ; $4b68: $29
    jr nc, @+$35                                  ; $4b69: $30 $33

    ld sp, $3020                                  ; $4b6b: $31 $20 $30
    inc a                                         ; $4b6e: $3c
    rst $38                                       ; $4b6f: $ff
    jr jr_007_4b03                                ; $4b70: $18 $91

    jr jr_007_4b0f                                ; $4b72: $18 $9b

    adc c                                         ; $4b74: $89
    adc $8b                                       ; $4b75: $ce $8b
    ld [hl], h                                    ; $4b77: $74
    rst $38                                       ; $4b78: $ff
    rst $38                                       ; $4b79: $ff
    adc [hl]                                      ; $4b7a: $8e
    pop af                                        ; $4b7b: $f1
    ld [hl], e                                    ; $4b7c: $73
    adc h                                         ; $4b7d: $8c
    sbc h                                         ; $4b7e: $9c
    db $e3                                        ; $4b7f: $e3
    and $ff                                       ; $4b80: $e6 $ff
    sbc c                                         ; $4b82: $99
    cp e                                          ; $4b83: $bb
    call nz, $b34c                                ; $4b84: $c4 $4c $b3
    ld [hl], a                                    ; $4b87: $77
    adc b                                         ; $4b88: $88
    nop                                           ; $4b89: $00
    rst $38                                       ; $4b8a: $ff
    rst $38                                       ; $4b8b: $ff
    ld a, a                                       ; $4b8c: $7f
    add b                                         ; $4b8d: $80
    adc h                                         ; $4b8e: $8c
    ld [hl], e                                    ; $4b8f: $73
    di                                            ; $4b90: $f3
    inc c                                         ; $4b91: $0c
    ld e, $ff                                     ; $4b92: $1e $ff
    pop hl                                        ; $4b94: $e1
    pop hl                                        ; $4b95: $e1
    ld e, $7f                                     ; $4b96: $1e $7f
    add b                                         ; $4b98: $80
    sbc h                                         ; $4b99: $9c
    ld h, e                                       ; $4b9a: $63
    nop                                           ; $4b9b: $00
    ld bc, $00ff                                  ; $4b9c: $01 $ff $00
    nop                                           ; $4b9f: $00
    nop                                           ; $4ba0: $00
    rst $38                                       ; $4ba1: $ff
    rst $38                                       ; $4ba2: $ff
    nop                                           ; $4ba3: $00
    ldh [$1f], a                                  ; $4ba4: $e0 $1f
    rra                                           ; $4ba6: $1f
    ldh [$f0], a                                  ; $4ba7: $e0 $f0
    rrca                                          ; $4ba9: $0f
    rst $38                                       ; $4baa: $ff
    adc a                                         ; $4bab: $8f
    ld [hl], b                                    ; $4bac: $70
    ld [hl], b                                    ; $4bad: $70
    adc a                                         ; $4bae: $8f
    rst $18                                       ; $4baf: $df
    jr nz, @+$33                                  ; $4bb0: $20 $31

    adc $ff                                       ; $4bb2: $ce $ff
    rst $38                                       ; $4bb4: $ff
    nop                                           ; $4bb5: $00
    add hl, sp                                    ; $4bb6: $39
    add $7b                                       ; $4bb7: $c6 $7b
    db $fc                                        ; $4bb9: $fc
    adc h                                         ; $4bba: $8c
    add a                                         ; $4bbb: $87
    rst $38                                       ; $4bbc: $ff
    add $83                                       ; $4bbd: $c6 $83
    ld b, e                                       ; $4bbf: $43
    pop bc                                        ; $4bc0: $c1
    ld b, c                                       ; $4bc1: $41
    ret nz                                        ; $4bc2: $c0

    call z, $ff40                                 ; $4bc3: $cc $40 $ff
    ld hl, sp+$07                                 ; $4bc6: $f8 $07
    add hl, sp                                    ; $4bc8: $39
    add $b1                                       ; $4bc9: $c6 $b1
    ld a, a                                       ; $4bcb: $7f
    ld c, e                                       ; $4bcc: $4b

Call_007_4bcd:
    adc $ff                                       ; $4bcd: $ce $ff
    jp z, Jump_007_4e4e                           ; $4bcf: $ca $4e $4e

jr_007_4bd2:
    call z, $cccc                                 ; $4bd2: $cc $cc $cc
    ld c, h                                       ; $4bd5: $4c
    ld c, b                                       ; $4bd6: $48
    rst $38                                       ; $4bd7: $ff
    rst $20                                       ; $4bd8: $e7
    jr jr_007_4bd2                                ; $4bd9: $18 $f7

    ld [$fbe4], sp                                ; $4bdb: $08 $e4 $fb
    dec [hl]                                      ; $4bde: $35
    dec de                                        ; $4bdf: $1b
    rst $38                                       ; $4be0: $ff

jr_007_4be1:
    ld h, e                                       ; $4be1: $63
    ld a, $42                                     ; $4be2: $3e $42
    ld a, [hl]                                    ; $4be4: $7e
    ld b, [hl]                                    ; $4be5: $46
    ld a, h                                       ; $4be6: $7c
    ld h, h                                       ; $4be7: $64
    inc a                                         ; $4be8: $3c
    rst $38                                       ; $4be9: $ff
    ld a, d                                       ; $4bea: $7a
    add l                                         ; $4beb: $85
    ld a, [hl-]                                   ; $4bec: $3a
    push bc                                       ; $4bed: $c5
    ld [c], a                                     ; $4bee: $e2
    db $fd                                        ; $4bef: $fd
    sbc d                                         ; $4bf0: $9a
    dec d                                         ; $4bf1: $15
    rst $38                                       ; $4bf2: $ff
    ld a, [de]                                    ; $4bf3: $1a
    dec d                                         ; $4bf4: $15
    add hl, de                                    ; $4bf5: $19
    ld d, $11                                     ; $4bf6: $16 $11
    ld e, $96                                     ; $4bf8: $1e $96
    sbc c                                         ; $4bfa: $99
    rst $38                                       ; $4bfb: $ff
    swap h                                        ; $4bfc: $cb $34
    add e                                         ; $4bfe: $83
    ld a, h                                       ; $4bff: $7c
    sub e                                         ; $4c00: $93
    ld l, a                                       ; $4c01: $6f
    sub [hl]                                      ; $4c02: $96
    ld l, h                                       ; $4c03: $6c
    rst $38                                       ; $4c04: $ff
    ld c, h                                       ; $4c05: $4c
    cp b                                          ; $4c06: $b8
    add hl, de                                    ; $4c07: $19
    ldh a, [$33]                                  ; $4c08: $f0 $33
    pop hl                                        ; $4c0a: $e1
    ld sp, $ffe0                                  ; $4c0b: $31 $e0 $ff
    db $d3                                        ; $4c0e: $d3
    inc l                                         ; $4c0f: $2c
    ret nz                                        ; $4c10: $c0

    ccf                                           ; $4c11: $3f
    add hl, bc                                    ; $4c12: $09
    or $89                                        ; $4c13: $f6 $89
    or $ff                                        ; $4c15: $f6 $ff
    add [hl]                                      ; $4c17: $86
    rst $38                                       ; $4c18: $ff
    jp hl                                         ; $4c19: $e9


    sbc c                                         ; $4c1a: $99
    ld e, c                                       ; $4c1b: $59
    cp c                                          ; $4c1c: $b9
    and b                                         ; $4c1d: $a0
    ldh [rIE], a                                  ; $4c1e: $e0 $ff
    ld e, [hl]                                    ; $4c20: $5e
    and c                                         ; $4c21: $a1
    ld e, b                                       ; $4c22: $58
    and a                                         ; $4c23: $a7
    ld d, c                                       ; $4c24: $51
    xor [hl]                                      ; $4c25: $ae
    ld e, e                                       ; $4c26: $5b
    and h                                         ; $4c27: $a4
    rst $38                                       ; $4c28: $ff
    ret c                                         ; $4c29: $d8

    daa                                           ; $4c2a: $27
    sub e                                         ; $4c2b: $93
    ld l, a                                       ; $4c2c: $6f
    cpl                                           ; $4c2d: $2f
    call c, $b0d8                                 ; $4c2e: $dc $d8 $b0
    rst $38                                       ; $4c31: $ff
    rst $20                                       ; $4c32: $e7
    jr jr_007_4be1                                ; $4c33: $18 $ac

    ld d, e                                       ; $4c35: $53
    adc a                                         ; $4c36: $8f
    ld [hl], b                                    ; $4c37: $70
    ld l, b                                       ; $4c38: $68
    sub a                                         ; $4c39: $97
    rst $38                                       ; $4c3a: $ff
    add [hl]                                      ; $4c3b: $86
    ld a, a                                       ; $4c3c: $7f
    ld c, c                                       ; $4c3d: $49
    cp c                                          ; $4c3e: $b9
    sbc c                                         ; $4c3f: $99
    ld sp, hl                                     ; $4c40: $f9
    ldh [$60], a                                  ; $4c41: $e0 $60
    rst $38                                       ; $4c43: $ff
    rra                                           ; $4c44: $1f
    ldh [$9b], a                                  ; $4c45: $e0 $9b
    ld h, h                                       ; $4c47: $64
    call z, Call_000_0f33                         ; $4c48: $cc $33 $0f
    ldh a, [rIE]                                  ; $4c4b: $f0 $ff
    ret z                                         ; $4c4d: $c8

    scf                                           ; $4c4e: $37
    rrca                                          ; $4c4f: $0f
    ldh a, [$31]                                  ; $4c50: $f0 $31
    cp $ce                                        ; $4c52: $fe $ce
    ret                                           ; $4c54: $c9


    rst $38                                       ; $4c55: $ff
    rst $38                                       ; $4c56: $ff
    nop                                           ; $4c57: $00
    cp a                                          ; $4c58: $bf
    ld b, b                                       ; $4c59: $40
    ld [hl], b                                    ; $4c5a: $70
    adc a                                         ; $4c5b: $8f
    rst $08                                       ; $4c5c: $cf
    jr nc, @+$01                                  ; $4c5d: $30 $ff

    ld a, b                                       ; $4c5f: $78
    add a                                         ; $4c60: $87
    add [hl]                                      ; $4c61: $86
    ld a, a                                       ; $4c62: $7f
    rst $28                                       ; $4c63: $ef
    add hl, de                                    ; $4c64: $19
    reti                                          ; $4c65: $d9


    pop af                                        ; $4c66: $f1
    rst $38                                       ; $4c67: $ff
    rst $38                                       ; $4c68: $ff
    nop                                           ; $4c69: $00
    pop bc                                        ; $4c6a: $c1
    ld a, $7f                                     ; $4c6b: $3e $7f
    add b                                         ; $4c6d: $80
    add b                                         ; $4c6e: $80

jr_007_4c6f:
    ld a, a                                       ; $4c6f: $7f
    rst $38                                       ; $4c70: $ff
    ld a, a                                       ; $4c71: $7f
    add b                                         ; $4c72: $80
    ret nz                                        ; $4c73: $c0

    ccf                                           ; $4c74: $3f
    ccf                                           ; $4c75: $3f
    ret nz                                        ; $4c76: $c0

    ldh [$1f], a                                  ; $4c77: $e0 $1f
    nop                                           ; $4c79: $00
    nop                                           ; $4c7a: $00
    nop                                           ; $4c7b: $00
    rst $38                                       ; $4c7c: $ff
    rst $28                                       ; $4c7d: $ef
    db $10                                        ; $4c7e: $10
    sbc d                                         ; $4c7f: $9a
    ld h, l                                       ; $4c80: $65
    halt                                          ; $4c81: $76
    adc c                                         ; $4c82: $89
    call $ff32                                    ; $4c83: $cd $32 $ff
    dec sp                                        ; $4c86: $3b
    call nz, Call_000_09f6                        ; $4c87: $c4 $f6 $09
    add hl, de                                    ; $4c8a: $19
    and $00                                       ; $4c8b: $e6 $00
    rst $38                                       ; $4c8d: $ff
    rst $38                                       ; $4c8e: $ff
    ld c, [hl]                                    ; $4c8f: $4e
    call z, Call_007_4ecb                         ; $4c90: $cc $cb $4e
    call $ca4b                                    ; $4c93: $cd $4b $ca
    ld c, l                                       ; $4c96: $4d
    rst $38                                       ; $4c97: $ff
    ld c, h                                       ; $4c98: $4c
    set 1, a                                      ; $4c99: $cb $cf
    adc b                                         ; $4c9b: $88
    sbc b                                         ; $4c9c: $98
    adc a                                         ; $4c9d: $8f
    ld [hl], b                                    ; $4c9e: $70
    rst $38                                       ; $4c9f: $ff
    rst $38                                       ; $4ca0: $ff
    ld c, b                                       ; $4ca1: $48
    ld [$0909], sp                                ; $4ca2: $08 $09 $09
    adc c                                         ; $4ca5: $89
    add hl, bc                                    ; $4ca6: $09
    adc c                                         ; $4ca7: $89
    adc b                                         ; $4ca8: $88
    rst $38                                       ; $4ca9: $ff
    ret z                                         ; $4caa: $c8

    adc b                                         ; $4cab: $88
    ld c, h                                       ; $4cac: $4c
    ret z                                         ; $4cad: $c8

    ld l, a                                       ; $4cae: $6f
    adc $31                                       ; $4caf: $ce $31
    rst $38                                       ; $4cb1: $ff
    rst $38                                       ; $4cb2: $ff
    dec l                                         ; $4cb3: $2d
    jr c, jr_007_4c6f                             ; $4cb4: $38 $b9

    add hl, de                                    ; $4cb6: $19
    sbc b                                         ; $4cb7: $98
    sub b                                         ; $4cb8: $90
    sub b                                         ; $4cb9: $90
    sub b                                         ; $4cba: $90
    rst $38                                       ; $4cbb: $ff
    ccf                                           ; $4cbc: $3f
    rra                                           ; $4cbd: $1f
    ld h, d                                       ; $4cbe: $62
    dec a                                         ; $4cbf: $3d
    jp $827c                                      ; $4cc0: $c3 $7c $82


    db $fd                                        ; $4cc3: $fd
    rst $38                                       ; $4cc4: $ff
    sub [hl]                                      ; $4cc5: $96
    sbc c                                         ; $4cc6: $99
    sbc b                                         ; $4cc7: $98
    sbc a                                         ; $4cc8: $9f
    inc b                                         ; $4cc9: $04
    rlca                                          ; $4cca: $07
    inc b                                         ; $4ccb: $04
    rlca                                          ; $4ccc: $07
    rst $38                                       ; $4ccd: $ff
    sbc b                                         ; $4cce: $98
    rra                                           ; $4ccf: $1f
    sub b                                         ; $4cd0: $90
    sbc a                                         ; $4cd1: $9f
    sbc b                                         ; $4cd2: $98
    sub a                                         ; $4cd3: $97
    ld h, b                                       ; $4cd4: $60
    rst $38                                       ; $4cd5: $ff
    rst $38                                       ; $4cd6: $ff
    ld e, b                                       ; $4cd7: $58
    or b                                          ; $4cd8: $b0
    ld l, h                                       ; $4cd9: $6c
    sbc b                                         ; $4cda: $98
    ld b, [hl]                                    ; $4cdb: $46
    cp h                                          ; $4cdc: $bc

jr_007_4cdd:
    ld l, h                                       ; $4cdd: $6c
    sbc b                                         ; $4cde: $98
    rst $38                                       ; $4cdf: $ff
    add hl, sp                                    ; $4ce0: $39
    ldh a, [rSCX]                                 ; $4ce1: $f0 $43
    pop bc                                        ; $4ce3: $c1
    ld b, [hl]                                    ; $4ce4: $46
    jp $ff3c                                      ; $4ce5: $c3 $3c $ff


    rst $38                                       ; $4ce8: $ff
    reti                                          ; $4ce9: $d9


    ld a, c                                       ; $4cea: $79
    ld a, c                                       ; $4ceb: $79
    add hl, hl                                    ; $4cec: $29
    ld a, c                                       ; $4ced: $79
    add hl, hl                                    ; $4cee: $29
    ret                                           ; $4cef: $c9


    ld a, b                                       ; $4cf0: $78
    rst $38                                       ; $4cf1: $ff
    cp h                                          ; $4cf2: $bc
    ret z                                         ; $4cf3: $c8

    ld [hl], h                                    ; $4cf4: $74
    adc h                                         ; $4cf5: $8c
    ld b, $fc                                     ; $4cf6: $06 $fc
    inc bc                                        ; $4cf8: $03
    rst $38                                       ; $4cf9: $ff
    rst $38                                       ; $4cfa: $ff
    jr nc, jr_007_4cdd                            ; $4cfb: $30 $e0

    ld h, [hl]                                    ; $4cfd: $66
    add $46                                       ; $4cfe: $c6 $46
    jp nz, $c0e0                                  ; $4d00: $c2 $e0 $c0

    rst $38                                       ; $4d03: $ff
    or b                                          ; $4d04: $b0
    ldh [$dc], a                                  ; $4d05: $e0 $dc
    ld a, b                                       ; $4d07: $78
    ld d, a                                       ; $4d08: $57
    ld l, a                                       ; $4d09: $6f
    or b                                          ; $4d0a: $b0
    rst $08                                       ; $4d0b: $cf
    rst $38                                       ; $4d0c: $ff
    ld e, c                                       ; $4d0d: $59
    ld a, c                                       ; $4d0e: $79
    ld e, c                                       ; $4d0f: $59
    ld l, c                                       ; $4d10: $69
    ld e, c                                       ; $4d11: $59
    ld l, c                                       ; $4d12: $69
    ld c, c                                       ; $4d13: $49
    ld a, b                                       ; $4d14: $78
    rst $38                                       ; $4d15: $ff
    ld l, h                                       ; $4d16: $6c
    jr c, jr_007_4d3d                             ; $4d17: $38 $24

    inc a                                         ; $4d19: $3c
    and [hl]                                      ; $4d1a: $a6
    inc a                                         ; $4d1b: $3c
    jp $ffff                                      ; $4d1c: $c3 $ff $ff


    ld c, e                                       ; $4d1f: $4b
    call $cb4d                                    ; $4d20: $cd $4d $cb
    ld l, e                                       ; $4d23: $6b
    call $e6af                                    ; $4d24: $cd $af $e6
    rst $38                                       ; $4d27: $ff
    or b                                          ; $4d28: $b0
    ldh [$d9], a                                  ; $4d29: $e0 $d9
    ld [hl], b                                    ; $4d2b: $70
    ld c, a                                       ; $4d2c: $4f
    ld a, c                                       ; $4d2d: $79
    add [hl]                                      ; $4d2e: $86
    rst $38                                       ; $4d2f: $ff
    rst $38                                       ; $4d30: $ff
    inc sp                                        ; $4d31: $33
    ld hl, $2326                                  ; $4d32: $21 $26 $23
    ld h, c                                       ; $4d35: $61
    ld hl, $7159                                  ; $4d36: $21 $59 $71
    rst $38                                       ; $4d39: $ff
    di                                            ; $4d3a: $f3
    ld h, c                                       ; $4d3b: $61
    and [hl]                                      ; $4d3c: $a6

jr_007_4d3d:
    db $e3                                        ; $4d3d: $e3
    dec l                                         ; $4d3e: $2d
    and $18                                       ; $4d3f: $e6 $18
    rst $38                                       ; $4d41: $ff
    rst $38                                       ; $4d42: $ff
    sbc a                                         ; $4d43: $9f
    ld h, b                                       ; $4d44: $60
    ld [hl], b                                    ; $4d45: $70
    adc a                                         ; $4d46: $8f
    rst $08                                       ; $4d47: $cf
    jr nc, @+$33                                  ; $4d48: $30 $31

    adc $ff                                       ; $4d4a: $ce $ff
    cp $01                                        ; $4d4c: $fe $01
    inc bc                                        ; $4d4e: $03
    db $fc                                        ; $4d4f: $fc
    db $fc                                        ; $4d50: $fc
    inc bc                                        ; $4d51: $03
    nop                                           ; $4d52: $00
    rst $38                                       ; $4d53: $ff
    nop                                           ; $4d54: $00
    nop                                           ; $4d55: $00
    nop                                           ; $4d56: $00
    rst $38                                       ; $4d57: $ff
    rst $38                                       ; $4d58: $ff
    nop                                           ; $4d59: $00
    dec sp                                        ; $4d5a: $3b
    call nz, Call_000_38c7                        ; $4d5b: $c4 $c7 $38
    ld a, b                                       ; $4d5e: $78
    add a                                         ; $4d5f: $87
    rst $38                                       ; $4d60: $ff
    adc a                                         ; $4d61: $8f
    ld [hl], b                                    ; $4d62: $70
    ld hl, sp+$07                                 ; $4d63: $f8 $07
    rlca                                          ; $4d65: $07
    ld hl, sp-$04                                 ; $4d66: $f8 $fc
    inc bc                                        ; $4d68: $03
    rst $28                                       ; $4d69: $ef
    rst $38                                       ; $4d6a: $ff
    nop                                           ; $4d6b: $00
    inc a                                         ; $4d6c: $3c
    jp $e3f0                                      ; $4d6d: $c3 $f0 $e3


    di                                            ; $4d70: $f3
    inc c                                         ; $4d71: $0c
    inc e                                         ; $4d72: $1c
    rst $38                                       ; $4d73: $ff
    db $e3                                        ; $4d74: $e3
    rst $20                                       ; $4d75: $e7
    jr @+$01                                      ; $4d76: $18 $ff

    nop                                           ; $4d78: $00
    pop hl                                        ; $4d79: $e1
    ld e, $9f                                     ; $4d7a: $1e $9f
    rst $38                                       ; $4d7c: $ff
    ld h, b                                       ; $4d7d: $60
    ld h, b                                       ; $4d7e: $60
    sbc a                                         ; $4d7f: $9f
    rst $18                                       ; $4d80: $df
    jr nz, @-$4e                                  ; $4d81: $20 $b0

    ld c, a                                       ; $4d83: $4f
    ld a, a                                       ; $4d84: $7f
    rst $38                                       ; $4d85: $ff
    add b                                         ; $4d86: $80
    jp $f93c                                      ; $4d87: $c3 $3c $f9


    ld b, $f1                                     ; $4d8a: $06 $f1
    ld c, $0c                                     ; $4d8c: $0e $0c
    rst $38                                       ; $4d8e: $ff
    di                                            ; $4d8f: $f3
    ld hl, sp+$07                                 ; $4d90: $f8 $07
    add [hl]                                      ; $4d92: $86
    ld a, c                                       ; $4d93: $79
    ld a, h                                       ; $4d94: $7c
    add e                                         ; $4d95: $83
    jp Jump_000_3cff                              ; $4d96: $c3 $ff $3c


    ld a, $c1                                     ; $4d99: $3e $c1
    rst $38                                       ; $4d9b: $ff
    nop                                           ; $4d9c: $00
    db $fd                                        ; $4d9d: $fd
    ld [bc], a                                    ; $4d9e: $02
    inc bc                                        ; $4d9f: $03
    rst $38                                       ; $4da0: $ff
    db $fc                                        ; $4da1: $fc
    cp $01                                        ; $4da2: $fe $01
    ld bc, $3ffe                                  ; $4da4: $01 $fe $3f
    ret nz                                        ; $4da7: $c0

    add b                                         ; $4da8: $80
    rst $38                                       ; $4da9: $ff
    ld a, a                                       ; $4daa: $7f
    ld b, e                                       ; $4dab: $43
    cp h                                          ; $4dac: $bc
    add b                                         ; $4dad: $80
    ld a, a                                       ; $4dae: $7f
    pop bc                                        ; $4daf: $c1
    ld a, $9c                                     ; $4db0: $3e $9c
    rst $38                                       ; $4db2: $ff
    ld h, e                                       ; $4db3: $63
    ld b, c                                       ; $4db4: $41
    cp [hl]                                       ; $4db5: $be
    add e                                         ; $4db6: $83
    ld a, h                                       ; $4db7: $7c
    ld h, b                                       ; $4db8: $60
    sbc a                                         ; $4db9: $9f
    add $ff                                       ; $4dba: $c6 $ff
    add hl, sp                                    ; $4dbc: $39
    and [hl]                                      ; $4dbd: $a6
    ld e, c                                       ; $4dbe: $59
    ld bc, $83fe                                  ; $4dbf: $01 $fe $83
    ld a, h                                       ; $4dc2: $7c
    dec sp                                        ; $4dc3: $3b

jr_007_4dc4:
    rst $38                                       ; $4dc4: $ff
    call nz, Call_000_0df2                        ; $4dc5: $c4 $f2 $0d
    add e                                         ; $4dc8: $83
    ld a, h                                       ; $4dc9: $7c
    ld b, $f9                                     ; $4dca: $06 $f9
    ld h, a                                       ; $4dcc: $67

jr_007_4dcd:
    rst $30                                       ; $4dcd: $f7
    sbc b                                         ; $4dce: $98
    db $e4                                        ; $4dcf: $e4
    dec de                                        ; $4dd0: $1b
    and b                                         ; $4dd1: $a0
    push hl                                       ; $4dd2: $e5
    adc [hl]                                      ; $4dd3: $8e
    ld [hl], c                                    ; $4dd4: $71
    ldh a, [rIF]                                  ; $4dd5: $f0 $0f
    rst $38                                       ; $4dd7: $ff
    ld de, $c3ee                                  ; $4dd8: $11 $ee $c3
    inc a                                         ; $4ddb: $3c
    sbc a                                         ; $4ddc: $9f
    ld h, b                                       ; $4ddd: $60
    sub c                                         ; $4dde: $91
    ld l, [hl]                                    ; $4ddf: $6e
    rst $38                                       ; $4de0: $ff
    ccf                                           ; $4de1: $3f
    ret nz                                        ; $4de2: $c0

    jr nz, jr_007_4dc4                            ; $4de3: $20 $df

    ld a, a                                       ; $4de5: $7f
    add b                                         ; $4de6: $80
    ldh a, [rIF]                                  ; $4de7: $f0 $0f
    rst $38                                       ; $4de9: $ff
    rst $38                                       ; $4dea: $ff
    nop                                           ; $4deb: $00
    jp $ff3c                                      ; $4dec: $c3 $3c $ff


    nop                                           ; $4def: $00
    di                                            ; $4df0: $f3
    inc c                                         ; $4df1: $0c
    cp a                                          ; $4df2: $bf
    rrca                                          ; $4df3: $0f
    ldh a, [$f8]                                  ; $4df4: $f0 $f8
    rlca                                          ; $4df6: $07
    add a                                         ; $4df7: $87
    ld a, b                                       ; $4df8: $78
    and b                                         ; $4df9: $a0
    db $ed                                        ; $4dfa: $ed
    rst $38                                       ; $4dfb: $ff
    rst $38                                       ; $4dfc: $ff
    nop                                           ; $4dfd: $00
    add b                                         ; $4dfe: $80
    ld a, a                                       ; $4dff: $7f
    ld a, a                                       ; $4e00: $7f
    add b                                         ; $4e01: $80
    rst $38                                       ; $4e02: $ff
    nop                                           ; $4e03: $00
    add $ff                                       ; $4e04: $c6 $ff
    add hl, sp                                    ; $4e06: $39
    cp a                                          ; $4e07: $bf
    ld b, b                                       ; $4e08: $40

jr_007_4e09:
    ld h, b                                       ; $4e09: $60
    sbc a                                         ; $4e0a: $9f
    sbc a                                         ; $4e0b: $9f
    ld h, b                                       ; $4e0c: $60
    ld [hl], b                                    ; $4e0d: $70
    rra                                           ; $4e0e: $1f
    adc a                                         ; $4e0f: $8f
    rst $08                                       ; $4e10: $cf
    jr nc, jr_007_4dcd                            ; $4e11: $30 $ba

    ld b, l                                       ; $4e13: $45
    nop                                           ; $4e14: $00
    nop                                           ; $4e15: $00
    nop                                           ; $4e16: $00
    rst $38                                       ; $4e17: $ff
    sub e                                         ; $4e18: $93
    ld l, h                                       ; $4e19: $6c
    xor $11                                       ; $4e1a: $ee $11
    xor c                                         ; $4e1c: $a9
    ld d, [hl]                                    ; $4e1d: $56
    ld d, [hl]                                    ; $4e1e: $56
    xor c                                         ; $4e1f: $a9
    rst $38                                       ; $4e20: $ff
    pop de                                        ; $4e21: $d1
    ld l, $26                                     ; $4e22: $2e $26
    reti                                          ; $4e24: $d9


    rst $18                                       ; $4e25: $df
    jr nz, jr_007_4e28                            ; $4e26: $20 $00

jr_007_4e28:
    rst $38                                       ; $4e28: $ff
    rst $38                                       ; $4e29: $ff
    sbc b                                         ; $4e2a: $98
    ld h, a                                       ; $4e2b: $67
    ld a, a                                       ; $4e2c: $7f
    add b                                         ; $4e2d: $80
    call nz, Call_000_3f3b                        ; $4e2e: $c4 $3b $3f
    ret nz                                        ; $4e31: $c0

    rst $38                                       ; $4e32: $ff
    jp Jump_007_7d3c                              ; $4e33: $c3 $3c $7d


    add d                                         ; $4e36: $82
    add [hl]                                      ; $4e37: $86

jr_007_4e38:
    ld a, c                                       ; $4e38: $79
    nop                                           ; $4e39: $00
    rst $38                                       ; $4e3a: $ff
    rst $38                                       ; $4e3b: $ff

Jump_007_4e3c:
    inc a                                         ; $4e3c: $3c
    jp Jump_000_38c7                              ; $4e3d: $c3 $c7 $38


    jr c, jr_007_4e09                             ; $4e40: $38 $c7

    rst $20                                       ; $4e42: $e7
    jr @+$01                                      ; $4e43: $18 $ff

    inc a                                         ; $4e45: $3c
    jp Jump_000_3cc3                              ; $4e46: $c3 $c3 $3c


    ld a, [hl]                                    ; $4e49: $7e
    add c                                         ; $4e4a: $81
    nop                                           ; $4e4b: $00
    rst $38                                       ; $4e4c: $ff
    rst $38                                       ; $4e4d: $ff

Jump_007_4e4e:
    pop hl                                        ; $4e4e: $e1
    ld e, $9e                                     ; $4e4f: $1e $9e
    ld h, c                                       ; $4e51: $61
    ld h, c                                       ; $4e52: $61
    sbc [hl]                                      ; $4e53: $9e
    rst $18                                       ; $4e54: $df
    jr nz, @+$01                                  ; $4e55: $20 $ff

    jr nz, jr_007_4e38                            ; $4e57: $20 $df

    rst $18                                       ; $4e59: $df
    jr nz, jr_007_4e8c                            ; $4e5a: $20 $30

    rst $08                                       ; $4e5c: $cf
    nop                                           ; $4e5d: $00
    rst $38                                       ; $4e5e: $ff
    rst $38                                       ; $4e5f: $ff
    sub c                                         ; $4e60: $91
    ld l, [hl]                                    ; $4e61: $6e
    ld a, h                                       ; $4e62: $7c
    add e                                         ; $4e63: $83
    ret nz                                        ; $4e64: $c0

    ccf                                           ; $4e65: $3f
    ld a, $c1                                     ; $4e66: $3e $c1
    rst $38                                       ; $4e68: $ff
    db $e3                                        ; $4e69: $e3
    inc e                                         ; $4e6a: $1c
    sbc h                                         ; $4e6b: $9c
    ld h, e                                       ; $4e6c: $63
    ld [hl], a                                    ; $4e6d: $77
    adc b                                         ; $4e6e: $88
    nop                                           ; $4e6f: $00
    rst $38                                       ; $4e70: $ff

jr_007_4e71:
    rst $38                                       ; $4e71: $ff
    ld d, l                                       ; $4e72: $55
    xor d                                         ; $4e73: $aa
    ld d, d                                       ; $4e74: $52
    xor l                                         ; $4e75: $ad
    ld l, b                                       ; $4e76: $68
    sub a                                         ; $4e77: $97
    rrca                                          ; $4e78: $0f
    ldh a, [rIE]                                  ; $4e79: $f0 $ff
    add b                                         ; $4e7b: $80
    ld a, a                                       ; $4e7c: $7f
    ldh [$1f], a                                  ; $4e7d: $e0 $1f
    ld l, b                                       ; $4e7f: $68
    sub a                                         ; $4e80: $97
    inc bc                                        ; $4e81: $03
    db $fc                                        ; $4e82: $fc
    rst $38                                       ; $4e83: $ff
    adc a                                         ; $4e84: $8f
    ld [hl], b                                    ; $4e85: $70
    adc $31                                       ; $4e86: $ce $31
    jr jr_007_4e71                                ; $4e88: $18 $e7

    ldh a, [rIF]                                  ; $4e8a: $f0 $0f

jr_007_4e8c:
    rst $38                                       ; $4e8c: $ff
    pop bc                                        ; $4e8d: $c1
    ld a, $07                                     ; $4e8e: $3e $07
    ld hl, sp+$1f                                 ; $4e90: $f8 $1f
    ldh [$f0], a                                  ; $4e92: $e0 $f0
    rrca                                          ; $4e94: $0f
    rst $38                                       ; $4e95: $ff
    adc [hl]                                      ; $4e96: $8e
    ld [hl], c                                    ; $4e97: $71
    ccf                                           ; $4e98: $3f
    ret nz                                        ; $4e99: $c0

    ld h, h                                       ; $4e9a: $64
    sbc e                                         ; $4e9b: $9b
    rst $38                                       ; $4e9c: $ff
    nop                                           ; $4e9d: $00
    db $fc                                        ; $4e9e: $fc
    and b                                         ; $4e9f: $a0
    rst $38                                       ; $4ea0: $ff
    and b                                         ; $4ea1: $a0
    db $e3                                        ; $4ea2: $e3
    add c                                         ; $4ea3: $81
    ld a, [hl]                                    ; $4ea4: $7e
    ld a, [hl]                                    ; $4ea5: $7e
    add c                                         ; $4ea6: $81
    pop bc                                        ; $4ea7: $c1
    ld a, $fe                                     ; $4ea8: $3e $fe
    and b                                         ; $4eaa: $a0
    jp hl                                         ; $4eab: $e9


    ld d, [hl]                                    ; $4eac: $56
    xor c                                         ; $4ead: $a9
    jp hl                                         ; $4eae: $e9


    ld d, $6f                                     ; $4eaf: $16 $6f
    sub b                                         ; $4eb1: $90
    or b                                          ; $4eb2: $b0
    ld a, a                                       ; $4eb3: $7f
    ld c, a                                       ; $4eb4: $4f
    rst $18                                       ; $4eb5: $df
    jr nz, jr_007_4f19                            ; $4eb6: $20 $61

    sbc [hl]                                      ; $4eb8: $9e
    nop                                           ; $4eb9: $00
    rst $38                                       ; $4eba: $ff
    nop                                           ; $4ebb: $00
    nop                                           ; $4ebc: $00
    nop                                           ; $4ebd: $00
    rst $38                                       ; $4ebe: $ff
    rst $38                                       ; $4ebf: $ff
    nop                                           ; $4ec0: $00
    sbc c                                         ; $4ec1: $99
    ld h, [hl]                                    ; $4ec2: $66
    halt                                          ; $4ec3: $76
    adc c                                         ; $4ec4: $89
    rst $08                                       ; $4ec5: $cf
    jr nc, @+$01                                  ; $4ec6: $30 $ff

    jr c, @-$37                                   ; $4ec8: $38 $c7

    rst $20                                       ; $4eca: $e7

Call_007_4ecb:
    jr jr_007_4ee9                                ; $4ecb: $18 $1c

    db $e3                                        ; $4ecd: $e3
    di                                            ; $4ece: $f3
    inc c                                         ; $4ecf: $0c
    rst $38                                       ; $4ed0: $ff
    rst $38                                       ; $4ed1: $ff
    nop                                           ; $4ed2: $00
    di                                            ; $4ed3: $f3
    inc c                                         ; $4ed4: $0c
    inc e                                         ; $4ed5: $1c
    db $e3                                        ; $4ed6: $e3
    and $19                                       ; $4ed7: $e6 $19
    rst $38                                       ; $4ed9: $ff
    dec sp                                        ; $4eda: $3b
    call nz, Call_000_33cc                        ; $4edb: $c4 $cc $33
    ld [hl], a                                    ; $4ede: $77
    adc b                                         ; $4edf: $88
    cp b                                          ; $4ee0: $b8
    ld b, a                                       ; $4ee1: $47
    rst $38                                       ; $4ee2: $ff
    rst $38                                       ; $4ee3: $ff
    nop                                           ; $4ee4: $00
    adc h                                         ; $4ee5: $8c
    ld [hl], e                                    ; $4ee6: $73
    di                                            ; $4ee7: $f3
    inc c                                         ; $4ee8: $0c

jr_007_4ee9:
    ld e, $e1                                     ; $4ee9: $1e $e1
    rst $38                                       ; $4eeb: $ff
    pop hl                                        ; $4eec: $e1
    ld e, $7f                                     ; $4eed: $1e $7f
    add b                                         ; $4eef: $80
    sbc h                                         ; $4ef0: $9c
    ld h, e                                       ; $4ef1: $63
    db $e3                                        ; $4ef2: $e3
    inc e                                         ; $4ef3: $1c
    rst $38                                       ; $4ef4: $ff
    rst $38                                       ; $4ef5: $ff
    nop                                           ; $4ef6: $00
    db $e3                                        ; $4ef7: $e3
    inc e                                         ; $4ef8: $1c
    sbc [hl]                                      ; $4ef9: $9e
    ld h, c                                       ; $4efa: $61
    ld [hl], c                                    ; $4efb: $71
    adc [hl]                                      ; $4efc: $8e
    rst $38                                       ; $4efd: $ff
    rst $08                                       ; $4efe: $cf
    jr nc, jr_007_4f33                            ; $4eff: $30 $32

    call Call_000_00ff                            ; $4f01: $cd $ff $00
    ret nz                                        ; $4f04: $c0

    ccf                                           ; $4f05: $3f
    rst $38                                       ; $4f06: $ff
    rst $38                                       ; $4f07: $ff
    nop                                           ; $4f08: $00
    rst $38                                       ; $4f09: $ff
    nop                                           ; $4f0a: $00
    ld bc, $fefe                                  ; $4f0b: $01 $fe $fe
    ld bc, $03ff                                  ; $4f0e: $01 $ff $03
    db $fc                                        ; $4f11: $fc
    db $fc                                        ; $4f12: $fc
    inc bc                                        ; $4f13: $03
    and a                                         ; $4f14: $a7
    ld e, b                                       ; $4f15: $58
    add hl, sp                                    ; $4f16: $39
    add $ff                                       ; $4f17: $c6 $ff

jr_007_4f19:
    rst $38                                       ; $4f19: $ff
    nop                                           ; $4f1a: $00
    inc sp                                        ; $4f1b: $33
    call z, $23dc                                 ; $4f1c: $cc $dc $23
    ld h, e                                       ; $4f1f: $63
    sbc h                                         ; $4f20: $9c
    rst $38                                       ; $4f21: $ff
    cp [hl]                                       ; $4f22: $be
    ld b, c                                       ; $4f23: $41
    rst $00                                       ; $4f24: $c7
    jr c, @+$7a                                   ; $4f25: $38 $78

    add a                                         ; $4f27: $87
    sbc a                                         ; $4f28: $9f
    ld h, b                                       ; $4f29: $60
    nop                                           ; $4f2a: $00
    and b                                         ; $4f2b: $a0
    rst $38                                       ; $4f2c: $ff
    and b                                         ; $4f2d: $a0
    rst $38                                       ; $4f2e: $ff
    and b                                         ; $4f2f: $a0
    ld sp, hl                                     ; $4f30: $f9
    nop                                           ; $4f31: $00
    nop                                           ; $4f32: $00

jr_007_4f33:
    nop                                           ; $4f33: $00
    ld sp, hl                                     ; $4f34: $f9
    nop                                           ; $4f35: $00
    rst $38                                       ; $4f36: $ff
    rst $38                                       ; $4f37: $ff
    ei                                            ; $4f38: $fb
    ld a, [$0f06]                                 ; $4f39: $fa $06 $0f
    dec bc                                        ; $4f3c: $0b
    dec e                                         ; $4f3d: $1d
    rla                                           ; $4f3e: $17
    rst $38                                       ; $4f3f: $ff
    add hl, sp                                    ; $4f40: $39
    dec l                                         ; $4f41: $2d
    ld [hl], e                                    ; $4f42: $73
    ld e, e                                       ; $4f43: $5b
    ld h, a                                       ; $4f44: $67
    ld e, l                                       ; $4f45: $5d
    ld h, e                                       ; $4f46: $63
    ld l, $ff                                     ; $4f47: $2e $ff
    ld [hl], c                                    ; $4f49: $71
    rla                                           ; $4f4a: $17
    jr c, jr_007_4f58                             ; $4f4b: $38 $0b

    inc e                                         ; $4f4d: $1c
    ld d, $39                                     ; $4f4e: $16 $39
    ld l, l                                       ; $4f50: $6d
    rst $38                                       ; $4f51: $ff
    di                                            ; $4f52: $f3
    ei                                            ; $4f53: $fb
    add a                                         ; $4f54: $87
    rst $30                                       ; $4f55: $f7
    adc a                                         ; $4f56: $8f
    ld a, [hl]                                    ; $4f57: $7e

jr_007_4f58:
    rst $38                                       ; $4f58: $ff
    inc a                                         ; $4f59: $3c
    db $fd                                        ; $4f5a: $fd
    ld a, [hl]                                    ; $4f5b: $7e
    ret nz                                        ; $4f5c: $c0

    ld [c], a                                     ; $4f5d: $e2
    add b                                         ; $4f5e: $80
    adc h                                         ; $4f5f: $8c
    sbc [hl]                                      ; $4f60: $9e
    sbc [hl]                                      ; $4f61: $9e
    sub e                                         ; $4f62: $93
    cp [hl]                                       ; $4f63: $be
    rst $38                                       ; $4f64: $ff
    di                                            ; $4f65: $f3
    ld a, a                                       ; $4f66: $7f
    pop bc                                        ; $4f67: $c1
    cp a                                          ; $4f68: $bf
    di                                            ; $4f69: $f3
    ld e, a                                       ; $4f6a: $5f
    di                                            ; $4f6b: $f3
    ld a, [hl]                                    ; $4f6c: $7e
    rst $38                                       ; $4f6d: $ff
    di                                            ; $4f6e: $f3
    db $fd                                        ; $4f6f: $fd
    di                                            ; $4f70: $f3
    rst $10                                       ; $4f71: $d7
    ld sp, hl                                     ; $4f72: $f9
    adc [hl]                                      ; $4f73: $8e
    reti                                          ; $4f74: $d9


    dec bc                                        ; $4f75: $0b
    rst $18                                       ; $4f76: $df
    adc h                                         ; $4f77: $8c
    rlca                                          ; $4f78: $07
    rrca                                          ; $4f79: $0f
    inc bc                                        ; $4f7a: $03
    rlca                                          ; $4f7b: $07
    cp d                                          ; $4f7c: $ba
    rst $20                                       ; $4f7d: $e7
    add hl, de                                    ; $4f7e: $19
    ccf                                           ; $4f7f: $3f
    rst $38                                       ; $4f80: $ff
    xor [hl]                                      ; $4f81: $ae
    pop af                                        ; $4f82: $f1
    rst $18                                       ; $4f83: $df
    ldh [$bf], a                                  ; $4f84: $e0 $bf
    call z, $8cf7                                 ; $4f86: $cc $f7 $8c
    rst $38                                       ; $4f89: $ff
    cp a                                          ; $4f8a: $bf
    ret nz                                        ; $4f8b: $c0

    ld e, a                                       ; $4f8c: $5f
    ldh [$b7], a                                  ; $4f8d: $e0 $b7
    ld hl, sp-$32                                 ; $4f8f: $f8 $ce
    rst $38                                       ; $4f91: $ff
    rst $28                                       ; $4f92: $ef
    push bc                                       ; $4f93: $c5
    rst $08                                       ; $4f94: $cf
    add b                                         ; $4f95: $80
    pop bc                                        ; $4f96: $c1
    add b                                         ; $4f97: $80
    db $e3                                        ; $4f98: $e3
    inc c                                         ; $4f99: $0c
    ld e, $1e                                     ; $4f9a: $1e $1e
    rst $38                                       ; $4f9c: $ff
    inc de                                        ; $4f9d: $13
    ld a, $f3                                     ; $4f9e: $3e $f3
    rst $38                                       ; $4fa0: $ff
    pop bc                                        ; $4fa1: $c1
    rst $38                                       ; $4fa2: $ff
    di                                            ; $4fa3: $f3
    rst $18                                       ; $4fa4: $df
    rst $38                                       ; $4fa5: $ff
    di                                            ; $4fa6: $f3
    sbc $d3                                       ; $4fa7: $de $d3
    db $dd                                        ; $4fa9: $dd
    db $d3                                        ; $4faa: $d3
    ld d, a                                       ; $4fab: $57
    ld sp, hl                                     ; $4fac: $f9
    xor $7f                                       ; $4fad: $ee $7f
    ld a, c                                       ; $4faf: $79
    db $eb                                        ; $4fb0: $eb
    ld l, h                                       ; $4fb1: $6c
    rst $20                                       ; $4fb2: $e7
    rst $28                                       ; $4fb3: $ef
    jp Jump_007_60e7                              ; $4fb4: $c3 $e7 $60


    rst $20                                       ; $4fb7: $e7
    rst $38                                       ; $4fb8: $ff
    ld h, b                                       ; $4fb9: $60
    ldh a, [$f1]                                  ; $4fba: $f0 $f1
    sbc e                                         ; $4fbc: $9b
    ei                                            ; $4fbd: $fb
    sbc d                                         ; $4fbe: $9a
    ei                                            ; $4fbf: $fb
    sbc d                                         ; $4fc0: $9a
    rst $38                                       ; $4fc1: $ff
    or e                                          ; $4fc2: $b3
    jp c, $de6d                                   ; $4fc3: $da $6d $de

    ld e, [hl]                                    ; $4fc6: $5e
    pop hl                                        ; $4fc7: $e1
    xor l                                         ; $4fc8: $ad
    di                                            ; $4fc9: $f3
    cp a                                          ; $4fca: $bf
    db $d3                                        ; $4fcb: $d3
    rst $38                                       ; $4fcc: $ff
    rst $08                                       ; $4fcd: $cf
    rst $18                                       ; $4fce: $df
    add [hl]                                      ; $4fcf: $86
    rst $08                                       ; $4fd0: $cf
    ld b, b                                       ; $4fd1: $40
    push hl                                       ; $4fd2: $e5
    inc c                                         ; $4fd3: $0c
    rst $38                                       ; $4fd4: $ff
    ld e, $12                                     ; $4fd5: $1e $12
    ccf                                           ; $4fd7: $3f
    xor a                                         ; $4fd8: $af
    di                                            ; $4fd9: $f3
    db $db                                        ; $4fda: $db
    ld h, a                                       ; $4fdb: $67
    rst $30                                       ; $4fdc: $f7
    rst $38                                       ; $4fdd: $ff
    ld c, a                                       ; $4fde: $4f
    ld a, [hl]                                    ; $4fdf: $7e
    jp $f3ef                                      ; $4fe0: $c3 $ef $f3


    db $db                                        ; $4fe3: $db
    rst $20                                       ; $4fe4: $e7
    rst $30                                       ; $4fe5: $f7
    ld a, a                                       ; $4fe6: $7f
    rst $08                                       ; $4fe7: $cf
    xor $df                                       ; $4fe8: $ee $df
    inc a                                         ; $4fea: $3c
    cp $18                                        ; $4feb: $fe $18
    inc a                                         ; $4fed: $3c
    jr nz, @+$01                                  ; $4fee: $20 $ff

    nop                                           ; $4ff0: $00
    rst $38                                       ; $4ff1: $ff
    db $fd                                        ; $4ff2: $fd
    nop                                           ; $4ff3: $00
    nop                                           ; $4ff4: $00
    nop                                           ; $4ff5: $00
    rst $38                                       ; $4ff6: $ff
    rst $38                                       ; $4ff7: $ff
    nop                                           ; $4ff8: $00
    ldh [$1f], a                                  ; $4ff9: $e0 $1f
    rra                                           ; $4ffb: $1f
    ldh [$f0], a                                  ; $4ffc: $e0 $f0
    rrca                                          ; $4ffe: $0f
    rst $38                                       ; $4fff: $ff
    adc a                                         ; $5000: $8f
    ld [hl], b                                    ; $5001: $70
    ld [hl], b                                    ; $5002: $70
    adc a                                         ; $5003: $8f
    rst $18                                       ; $5004: $df
    jr nz, jr_007_5038                            ; $5005: $20 $31

    adc $ff                                       ; $5007: $ce $ff
    rst $38                                       ; $5009: $ff
    nop                                           ; $500a: $00
    add hl, sp                                    ; $500b: $39
    add $c7                                       ; $500c: $c6 $c7
    jr c, jr_007_5088                             ; $500e: $38 $78

    add a                                         ; $5010: $87
    rst $38                                       ; $5011: $ff
    adc a                                         ; $5012: $8f
    ld [hl], b                                    ; $5013: $70
    ldh a, [rIF]                                  ; $5014: $f0 $0f
    rra                                           ; $5016: $1f
    ldh [$e1], a                                  ; $5017: $e0 $e1
    ld e, $ff                                     ; $5019: $1e $ff
    ld hl, sp+$07                                 ; $501b: $f8 $07
    add hl, sp                                    ; $501d: $39
    add $83                                       ; $501e: $c6 $83
    ld a, h                                       ; $5020: $7c
    ld [hl], d                                    ; $5021: $72
    adc l                                         ; $5022: $8d
    rst $38                                       ; $5023: $ff
    add e                                         ; $5024: $83
    ld a, h                                       ; $5025: $7c
    ld a, [c]                                     ; $5026: $f2

jr_007_5027:
    dec c                                         ; $5027: $0d
    inc bc                                        ; $5028: $03
    db $fc                                        ; $5029: $fc
    ld a, [c]                                     ; $502a: $f2
    dec c                                         ; $502b: $0d
    rst $38                                       ; $502c: $ff
    rst $20                                       ; $502d: $e7
    jr jr_007_5027                                ; $502e: $18 $f7

    ld [$3bc4], sp                                ; $5030: $08 $c4 $3b
    scf                                           ; $5033: $37
    ret z                                         ; $5034: $c8

    rst $38                                       ; $5035: $ff

jr_007_5036:
    sub b                                         ; $5036: $90
    ld l, a                                       ; $5037: $6f

jr_007_5038:
    inc bc                                        ; $5038: $03
    db $fc                                        ; $5039: $fc
    db $e3                                        ; $503a: $e3
    inc e                                         ; $503b: $1c
    nop                                           ; $503c: $00
    rst $38                                       ; $503d: $ff
    rst $38                                       ; $503e: $ff
    ld a, d                                       ; $503f: $7a
    add l                                         ; $5040: $85
    ld a, [hl-]                                   ; $5041: $3a
    push bc                                       ; $5042: $c5

jr_007_5043:
    ld [de], a                                    ; $5043: $12
    db $ed                                        ; $5044: $ed
    jp c, $ff25                                   ; $5045: $da $25 $ff

    ld a, [de]                                    ; $5048: $1a
    push hl                                       ; $5049: $e5
    add hl, sp                                    ; $504a: $39
    add $a1                                       ; $504b: $c6 $a1
    ld e, [hl]                                    ; $504d: $5e
    ld b, $f9                                     ; $504e: $06 $f9
    rst $38                                       ; $5050: $ff
    swap h                                        ; $5051: $cb $34
    add e                                         ; $5053: $83
    ld a, h                                       ; $5054: $7c
    sub e                                         ; $5055: $93
    ld l, h                                       ; $5056: $6c
    sub b                                         ; $5057: $90
    ld l, a                                       ; $5058: $6f
    rst $38                                       ; $5059: $ff
    ld b, b                                       ; $505a: $40
    cp a                                          ; $505b: $bf
    rlca                                          ; $505c: $07
    ld hl, sp+$1f                                 ; $505d: $f8 $1f
    ldh [$30], a                                  ; $505f: $e0 $30
    rst $08                                       ; $5061: $cf
    rst $38                                       ; $5062: $ff
    db $d3                                        ; $5063: $d3
    inc l                                         ; $5064: $2c
    ret nz                                        ; $5065: $c0

    ccf                                           ; $5066: $3f
    add hl, bc                                    ; $5067: $09
    or $09                                        ; $5068: $f6 $09
    or $ff                                        ; $506a: $f6 $ff
    ld [bc], a                                    ; $506c: $02
    db $fd                                        ; $506d: $fd
    ldh [$1f], a                                  ; $506e: $e0 $1f
    ret c                                         ; $5070: $d8

    daa                                           ; $5071: $27
    jr nc, jr_007_5043                            ; $5072: $30 $cf

    rst $38                                       ; $5074: $ff
    ld e, [hl]                                    ; $5075: $5e
    and c                                         ; $5076: $a1
    ld e, b                                       ; $5077: $58
    and a                                         ; $5078: $a7
    ld d, c                                       ; $5079: $51
    xor [hl]                                      ; $507a: $ae
    ld e, e                                       ; $507b: $5b
    and h                                         ; $507c: $a4
    rst $38                                       ; $507d: $ff
    ret c                                         ; $507e: $d8

    daa                                           ; $507f: $27
    sub b                                         ; $5080: $90
    ld l, a                                       ; $5081: $6f
    and l                                         ; $5082: $a5
    ld e, d                                       ; $5083: $5a
    ld h, b                                       ; $5084: $60
    sbc a                                         ; $5085: $9f
    rst $38                                       ; $5086: $ff
    rst $20                                       ; $5087: $e7

jr_007_5088:
    jr jr_007_5036                                ; $5088: $18 $ac

    ld d, e                                       ; $508a: $53
    adc a                                         ; $508b: $8f
    ld [hl], b                                    ; $508c: $70
    ld l, b                                       ; $508d: $68
    sub a                                         ; $508e: $97
    rst $38                                       ; $508f: $ff
    adc c                                         ; $5090: $89
    halt                                          ; $5091: $76
    jp $873c                                      ; $5092: $c3 $3c $87


    ld a, b                                       ; $5095: $78
    add b                                         ; $5096: $80
    ld a, a                                       ; $5097: $7f
    rst $38                                       ; $5098: $ff
    rra                                           ; $5099: $1f
    ldh [$9b], a                                  ; $509a: $e0 $9b
    ld h, h                                       ; $509c: $64
    call z, Call_000_0f33                         ; $509d: $cc $33 $0f
    ldh a, [rIE]                                  ; $50a0: $f0 $ff
    ret z                                         ; $50a2: $c8

    scf                                           ; $50a3: $37
    rrca                                          ; $50a4: $0f
    ldh a, [$c9]                                  ; $50a5: $f0 $c9
    ld [hl], $0e                                  ; $50a7: $36 $0e
    pop af                                        ; $50a9: $f1
    rst $38                                       ; $50aa: $ff
    rst $38                                       ; $50ab: $ff
    nop                                           ; $50ac: $00
    cp a                                          ; $50ad: $bf
    ld b, b                                       ; $50ae: $40
    ld [hl], b                                    ; $50af: $70
    adc a                                         ; $50b0: $8f
    rst $08                                       ; $50b1: $cf

jr_007_50b2:
    jr nc, jr_007_50b2                            ; $50b2: $30 $fe

    ld l, [hl]                                    ; $50b4: $6e
    pop hl                                        ; $50b5: $e1
    di                                            ; $50b6: $f3
    inc c                                         ; $50b7: $0c
    ld l, [hl]                                    ; $50b8: $6e
    sub c                                         ; $50b9: $91
    rst $38                                       ; $50ba: $ff
    nop                                           ; $50bb: $00
    pop bc                                        ; $50bc: $c1
    rst $38                                       ; $50bd: $ff
    ld a, $7f                                     ; $50be: $3e $7f
    add b                                         ; $50c0: $80
    add b                                         ; $50c1: $80
    ld a, a                                       ; $50c2: $7f
    ld a, a                                       ; $50c3: $7f
    add b                                         ; $50c4: $80
    ret nz                                        ; $50c5: $c0

    rra                                           ; $50c6: $1f
    ccf                                           ; $50c7: $3f
    ccf                                           ; $50c8: $3f
    ret nz                                        ; $50c9: $c0

    ldh [$1f], a                                  ; $50ca: $e0 $1f
    nop                                           ; $50cc: $00
    nop                                           ; $50cd: $00
    nop                                           ; $50ce: $00
    rst $38                                       ; $50cf: $ff
    rst $28                                       ; $50d0: $ef
    db $10                                        ; $50d1: $10
    sbc d                                         ; $50d2: $9a
    ld h, l                                       ; $50d3: $65
    halt                                          ; $50d4: $76
    adc c                                         ; $50d5: $89
    call $ff32                                    ; $50d6: $cd $32 $ff
    dec sp                                        ; $50d9: $3b
    call nz, Call_000_09f6                        ; $50da: $c4 $f6 $09
    add hl, de                                    ; $50dd: $19
    and $00                                       ; $50de: $e6 $00
    rst $38                                       ; $50e0: $ff
    rst $38                                       ; $50e1: $ff
    ld a, $c1                                     ; $50e2: $3e $c1
    jp $fc3c                                      ; $50e4: $c3 $3c $fc


    inc bc                                        ; $50e7: $03

jr_007_50e8:
    sbc e                                         ; $50e8: $9b
    ld h, h                                       ; $50e9: $64
    rst $38                                       ; $50ea: $ff
    ld l, h                                       ; $50eb: $6c
    sub e                                         ; $50ec: $93
    rst $00                                       ; $50ed: $c7

jr_007_50ee:
    jr c, jr_007_50e8                             ; $50ee: $38 $f8

    rlca                                          ; $50f0: $07
    nop                                           ; $50f1: $00
    rst $38                                       ; $50f2: $ff
    rst $38                                       ; $50f3: $ff
    ld h, e                                       ; $50f4: $63
    sbc h                                         ; $50f5: $9c
    sbc b                                         ; $50f6: $98
    ld h, a                                       ; $50f7: $67
    ld [hl], c                                    ; $50f8: $71
    adc [hl]                                      ; $50f9: $8e
    adc h                                         ; $50fa: $8c
    ld [hl], e                                    ; $50fb: $73
    rst $38                                       ; $50fc: $ff
    ld a, b                                       ; $50fd: $78
    add a                                         ; $50fe: $87
    add $39                                       ; $50ff: $c6 $39
    inc a                                         ; $5101: $3c
    jp $ff00                                      ; $5102: $c3 $00 $ff


    rst $38                                       ; $5105: $ff
    ret nc                                        ; $5106: $d0

    cpl                                           ; $5107: $2f
    add hl, sp                                    ; $5108: $39
    add $c3                                       ; $5109: $c6 $c3
    inc a                                         ; $510b: $3c
    di                                            ; $510c: $f3
    inc c                                         ; $510d: $0c
    rst $38                                       ; $510e: $ff
    ld [bc], a                                    ; $510f: $02
    db $fd                                        ; $5110: $fd
    ld [hl-], a                                   ; $5111: $32
    call $fc03                                    ; $5112: $cd $03 $fc
    ld b, d                                       ; $5115: $42
    cp l                                          ; $5116: $bd
    rst $38                                       ; $5117: $ff
    ld b, [hl]                                    ; $5118: $46
    cp c                                          ; $5119: $b9
    ret nz                                        ; $511a: $c0

    ccf                                           ; $511b: $3f
    ld b, b                                       ; $511c: $40
    cp a                                          ; $511d: $bf
    and b                                         ; $511e: $a0
    ld e, a                                       ; $511f: $5f
    rst $38                                       ; $5120: $ff
    ret z                                         ; $5121: $c8

    scf                                           ; $5122: $37
    ldh a, [rIF]                                  ; $5123: $f0 $0f
    jr c, jr_007_50ee                             ; $5125: $38 $c7

    nop                                           ; $5127: $00
    rst $38                                       ; $5128: $ff
    rst $38                                       ; $5129: $ff

jr_007_512a:
    ld a, a                                       ; $512a: $7f
    add b                                         ; $512b: $80
    ld [hl], b                                    ; $512c: $70
    adc a                                         ; $512d: $8f
    ld c, a                                       ; $512e: $4f
    or b                                          ; $512f: $b0
    ld [hl], c                                    ; $5130: $71
    adc [hl]                                      ; $5131: $8e
    rst $38                                       ; $5132: $ff
    ld a, $c1                                     ; $5133: $3e $c1
    inc bc                                        ; $5135: $03
    db $fc                                        ; $5136: $fc
    nop                                           ; $5137: $00
    rst $38                                       ; $5138: $ff
    nop                                           ; $5139: $00
    rst $38                                       ; $513a: $ff
    ei                                            ; $513b: $fb
    xor $11                                       ; $513c: $ee $11
    and b                                         ; $513e: $a0
    pop hl                                        ; $513f: $e1
    call z, Call_000_3833                         ; $5140: $cc $33 $38
    rst $00                                       ; $5143: $c7
    ldh a, [$fd]                                  ; $5144: $f0 $fd
    rrca                                          ; $5146: $0f
    ldh a, [$e1]                                  ; $5147: $f0 $e1
    ld h, d                                       ; $5149: $62
    sbc l                                         ; $514a: $9d
    ld b, e                                       ; $514b: $43
    cp h                                          ; $514c: $bc
    ld [bc], a                                    ; $514d: $02
    db $fd                                        ; $514e: $fd
    rst $38                                       ; $514f: $ff
    rlca                                          ; $5150: $07
    ld hl, sp+$1c                                 ; $5151: $f8 $1c
    db $e3                                        ; $5153: $e3
    rla                                           ; $5154: $17
    add sp, $18                                   ; $5155: $e8 $18
    rst $20                                       ; $5157: $e7
    rst $38                                       ; $5158: $ff
    jr nc, jr_007_512a                            ; $5159: $30 $cf

    rrca                                          ; $515b: $0f
    ldh a, [$9e]                                  ; $515c: $f0 $9e
    ld h, c                                       ; $515e: $61
    ld d, c                                       ; $515f: $51
    xor [hl]                                      ; $5160: $ae
    rst $38                                       ; $5161: $ff
    adc a                                         ; $5162: $8f
    ld [hl], b                                    ; $5163: $70
    ld c, b                                       ; $5164: $48
    or a                                          ; $5165: $b7
    call z, Call_000_0033                         ; $5166: $cc $33 $00
    rst $38                                       ; $5169: $ff
    rst $38                                       ; $516a: $ff
    inc bc                                        ; $516b: $03
    db $fc                                        ; $516c: $fc
    swap h                                        ; $516d: $cb $34
    inc e                                         ; $516f: $1c
    db $e3                                        ; $5170: $e3
    sub a                                         ; $5171: $97
    ld l, b                                       ; $5172: $68
    rst $38                                       ; $5173: $ff
    add hl, sp                                    ; $5174: $39
    add $2e                                       ; $5175: $c6 $2e
    pop de                                        ; $5177: $d1
    halt                                          ; $5178: $76
    adc c                                         ; $5179: $89
    reti                                          ; $517a: $d9


    ld h, $ff                                     ; $517b: $26 $ff
    add b                                         ; $517d: $80
    ld a, a                                       ; $517e: $7f
    or e                                          ; $517f: $b3
    ld c, h                                       ; $5180: $4c

jr_007_5181:
    call c, Call_007_6723                         ; $5181: $dc $23 $67
    sbc b                                         ; $5184: $98
    rst $38                                       ; $5185: $ff
    cp b                                          ; $5186: $b8
    ld b, a                                       ; $5187: $47
    rst $08                                       ; $5188: $cf
    jr nc, jr_007_5181                            ; $5189: $30 $f6

    add hl, bc                                    ; $518b: $09
    add hl, sp                                    ; $518c: $39
    add $ff                                       ; $518d: $c6 $ff
    nop                                           ; $518f: $00
    rst $38                                       ; $5190: $ff
    sbc a                                         ; $5191: $9f
    ld h, b                                       ; $5192: $60
    ld [hl], b                                    ; $5193: $70
    adc a                                         ; $5194: $8f
    rst $08                                       ; $5195: $cf
    jr nc, @+$01                                  ; $5196: $30 $ff

    ld sp, $fece                                  ; $5198: $31 $ce $fe
    ld bc, $fc03                                  ; $519b: $01 $03 $fc
    db $fc                                        ; $519e: $fc
    inc bc                                        ; $519f: $03
    inc bc                                        ; $51a0: $03
    nop                                           ; $51a1: $00
    rst $38                                       ; $51a2: $ff
    nop                                           ; $51a3: $00
    nop                                           ; $51a4: $00
    nop                                           ; $51a5: $00
    ld hl, $51dc                                  ; $51a6: $21 $dc $51
    ld de, $0500                                  ; $51a9: $11 $00 $05
    ld b, $00                                     ; $51ac: $06 $00
    xor a                                         ; $51ae: $af
    ldh [$8a], a                                  ; $51af: $e0 $8a
    ldh [$8b], a                                  ; $51b1: $e0 $8b
    call Call_007_741e                            ; $51b3: $cd $1e $74
    ld c, $10                                     ; $51b6: $0e $10
    call Call_000_25af                            ; $51b8: $cd $af $25
    call Call_000_2625                            ; $51bb: $cd $25 $26
    ld a, $06                                     ; $51be: $3e $06
    ldh [$96], a                                  ; $51c0: $e0 $96
    ldh [rSVBK], a                                ; $51c2: $e0 $70
    ld a, [$cabc]                                 ; $51c4: $fa $bc $ca
    call Call_007_7c00                            ; $51c7: $cd $00 $7c
    bit 7, a                                      ; $51ca: $cb $7f
    jr nz, jr_007_51d1                            ; $51cc: $20 $03

    ld [$cabc], a                                 ; $51ce: $ea $bc $ca

jr_007_51d1:
    push af                                       ; $51d1: $f5
    ld c, $10                                     ; $51d2: $0e $10
    call Call_000_25a1                            ; $51d4: $cd $a1 $25
    call Call_000_2625                            ; $51d7: $cd $25 $26
    pop af                                        ; $51da: $f1
    ret                                           ; $51db: $c9


    ld b, $52                                     ; $51dc: $06 $52
    ld e, a                                       ; $51de: $5f
    ld e, d                                       ; $51df: $5a
    add $52                                       ; $51e0: $c6 $52
    rrca                                          ; $51e2: $0f
    ld e, e                                       ; $51e3: $5b
    sbc l                                         ; $51e4: $9d
    ld d, e                                       ; $51e5: $53
    rst $20                                       ; $51e6: $e7
    ld e, e                                       ; $51e7: $5b
    ld [hl], l                                    ; $51e8: $75
    ld d, h                                       ; $51e9: $54
    cp l                                          ; $51ea: $bd
    ld e, h                                       ; $51eb: $5c
    ld c, a                                       ; $51ec: $4f
    ld d, l                                       ; $51ed: $55
    sbc b                                         ; $51ee: $98
    ld e, l                                       ; $51ef: $5d
    daa                                           ; $51f0: $27
    ld d, [hl]                                    ; $51f1: $56
    ld [hl], e                                    ; $51f2: $73
    ld e, [hl]                                    ; $51f3: $5e
    ld [bc], a                                    ; $51f4: $02
    ld d, a                                       ; $51f5: $57
    ld c, h                                       ; $51f6: $4c
    ld e, a                                       ; $51f7: $5f
    jp c, $2657                                   ; $51f8: $da $57 $26

    ld h, b                                       ; $51fb: $60
    or d                                          ; $51fc: $b2
    ld e, b                                       ; $51fd: $58
    ld bc, $8a61                                  ; $51fe: $01 $61 $8a
    ld e, c                                       ; $5201: $59
    push de                                       ; $5202: $d5
    ld h, c                                       ; $5203: $61
    xor a                                         ; $5204: $af
    ld h, d                                       ; $5205: $62
    rst $38                                       ; $5206: $ff
    inc [hl]                                      ; $5207: $34
    ei                                            ; $5208: $fb
    rst $18                                       ; $5209: $df
    ld c, a                                       ; $520a: $4f
    ret nz                                        ; $520b: $c0

    ld b, b                                       ; $520c: $40
    ld h, b                                       ; $520d: $60
    ret nz                                        ; $520e: $c0

    rst $38                                       ; $520f: $ff
    or b                                          ; $5210: $b0
    ld h, b                                       ; $5211: $60
    rra                                           ; $5212: $1f
    rst $38                                       ; $5213: $ff
    pop hl                                        ; $5214: $e1
    rra                                           ; $5215: $1f
    ld bc, $dfff                                  ; $5216: $01 $ff $df
    rst $00                                       ; $5219: $c7

jr_007_521a:
    jr c, jr_007_521a                             ; $521a: $38 $fe

    rst $38                                       ; $521c: $ff
    ld bc, $e2ff                                  ; $521d: $01 $ff $e2
    ld a, $3f                                     ; $5220: $3e $3f
    rst $38                                       ; $5222: $ff
    inc sp                                        ; $5223: $33
    inc l                                         ; $5224: $2c
    jr nz, jr_007_5266                            ; $5225: $20 $3f

    ld a, $c1                                     ; $5227: $3e $c1
    pop bc                                        ; $5229: $c1
    ld a, $ff                                     ; $522a: $3e $ff
    ld a, a                                       ; $522c: $7f
    add b                                         ; $522d: $80
    add b                                         ; $522e: $80
    ld a, a                                       ; $522f: $7f
    ld l, l                                       ; $5230: $6d
    sbc [hl]                                      ; $5231: $9e
    cp [hl]                                       ; $5232: $be
    ld [hl], e                                    ; $5233: $73
    rst $38                                       ; $5234: $ff
    ld h, e                                       ; $5235: $63
    pop bc                                        ; $5236: $c1
    pop bc                                        ; $5237: $c1
    add c                                         ; $5238: $81
    ccf                                           ; $5239: $3f
    ret nz                                        ; $523a: $c0

    ldh [$1f], a                                  ; $523b: $e0 $1f
    rst $38                                       ; $523d: $ff
    rra                                           ; $523e: $1f
    ldh [$f0], a                                  ; $523f: $e0 $f0
    rrca                                          ; $5241: $0f
    adc a                                         ; $5242: $8f

jr_007_5243:
    ld [hl], b                                    ; $5243: $70
    ld [hl], b                                    ; $5244: $70

jr_007_5245:
    rst $38                                       ; $5245: $ff
    rst $38                                       ; $5246: $ff
    sbc l                                         ; $5247: $9d
    adc e                                         ; $5248: $8b
    dec bc                                        ; $5249: $0b
    adc [hl]                                      ; $524a: $8e
    adc $31                                       ; $524b: $ce $31
    add hl, sp                                    ; $524d: $39
    add $ff                                       ; $524e: $c6 $ff
    rst $00                                       ; $5250: $c7
    jr c, jr_007_52cb                             ; $5251: $38 $78

    add a                                         ; $5253: $87
    sbc e                                         ; $5254: $9b
    ld a, a                                       ; $5255: $7f
    rst $20                                       ; $5256: $e7
    inc h                                         ; $5257: $24
    rst $38                                       ; $5258: $ff
    call nz, Call_000_20e0                        ; $5259: $c4 $e0 $20
    jr nz, jr_007_5245                            ; $525c: $20 $e7

    jr jr_007_5298                                ; $525e: $18 $38

    rst $00                                       ; $5260: $c7
    rst $38                                       ; $5261: $ff
    adc a                                         ; $5262: $8f
    ld [hl], b                                    ; $5263: $70
    ld a, b                                       ; $5264: $78
    add a                                         ; $5265: $87

jr_007_5266:
    rlca                                          ; $5266: $07
    ld hl, sp-$48                                 ; $5267: $f8 $b8
    rst $38                                       ; $5269: $ff
    rst $38                                       ; $526a: $ff
    rst $08                                       ; $526b: $cf
    ld b, a                                       ; $526c: $47
    ld b, c                                       ; $526d: $41
    ld b, b                                       ; $526e: $40
    inc c                                         ; $526f: $0c
    di                                            ; $5270: $f3
    ei                                            ; $5271: $fb
    inc b                                         ; $5272: $04
    rst $38                                       ; $5273: $ff
    call z, Call_000_3533                         ; $5274: $cc $33 $35
    set 6, a                                      ; $5277: $cb $f7
    ld c, $0c                                     ; $5279: $0e $0c
    ld hl, sp-$01                                 ; $527b: $f8 $ff
    ld e, b                                       ; $527d: $58
    or b                                          ; $527e: $b0
    or b                                          ; $527f: $b0
    ldh [$c7], a                                  ; $5280: $e0 $c7
    jr c, jr_007_5243                             ; $5282: $38 $bf

    ld b, b                                       ; $5284: $40
    rst $38                                       ; $5285: $ff
    ld [hl], b                                    ; $5286: $70
    adc a                                         ; $5287: $8f
    adc a                                         ; $5288: $8f
    ldh a, [$d8]                                  ; $5289: $f0 $d8
    ld h, a                                       ; $528b: $67
    ld l, a                                       ; $528c: $6f
    ccf                                           ; $528d: $3f
    ld sp, hl                                     ; $528e: $f9
    jr nc, @+$01                                  ; $528f: $30 $ff

    ldh [$a0], a                                  ; $5291: $e0 $a0
    push hl                                       ; $5293: $e5
    ld a, a                                       ; $5294: $7f
    add b                                         ; $5295: $80
    or b                                          ; $5296: $b0
    rst $38                                       ; $5297: $ff

jr_007_5298:
    ld a, d                                       ; $5298: $7a
    rst $30                                       ; $5299: $f7
    ld c, l                                       ; $529a: $4d
    dec c                                         ; $529b: $0d
    rlca                                          ; $529c: $07
    and b                                         ; $529d: $a0
    push hl                                       ; $529e: $e5
    cp e                                          ; $529f: $bb
    ld a, h                                       ; $52a0: $7c
    ld l, l                                       ; $52a1: $6d
    rst $00                                       ; $52a2: $c7
    rst $28                                       ; $52a3: $ef
    add $82                                       ; $52a4: $c6 $82
    add d                                         ; $52a6: $82
    ld [bc], a                                    ; $52a7: $02
    and b                                         ; $52a8: $a0
    push hl                                       ; $52a9: $e5
    adc l                                         ; $52aa: $8d
    ld [hl], e                                    ; $52ab: $73
    jp nc, $eedf                                  ; $52ac: $d2 $df $ee

    ld a, d                                       ; $52af: $7a
    ld a, $0d                                     ; $52b0: $3e $0d
    rlca                                          ; $52b2: $07
    and b                                         ; $52b3: $a0
    pop hl                                        ; $52b4: $e1
    or a                                          ; $52b5: $b7
    ld a, b                                       ; $52b6: $78
    rst $38                                       ; $52b7: $ff
    ld c, b                                       ; $52b8: $48
    rst $08                                       ; $52b9: $cf
    call Call_000_02ce                            ; $52ba: $cd $ce $02
    inc bc                                        ; $52bd: $03
    inc bc                                        ; $52be: $03
    ld [bc], a                                    ; $52bf: $02
    inc bc                                        ; $52c0: $03
    call z, Call_000_00cf                         ; $52c1: $cc $cf $00
    nop                                           ; $52c4: $00
    nop                                           ; $52c5: $00
    rst $38                                       ; $52c6: $ff
    rst $38                                       ; $52c7: $ff
    ld bc, $c33d                                  ; $52c8: $01 $3d $c3

jr_007_52cb:
    rst $00                                       ; $52cb: $c7
    ld a, [hl-]                                   ; $52cc: $3a
    ld a, [$ff06]                                 ; $52cd: $fa $06 $ff
    rrca                                          ; $52d0: $0f
    ld a, [c]                                     ; $52d1: $f2
    push af                                       ; $52d2: $f5
    dec bc                                        ; $52d3: $0b
    add hl, de                                    ; $52d4: $19
    rst $20                                       ; $52d5: $e7
    and $19                                       ; $52d6: $e6 $19
    rst $38                                       ; $52d8: $ff
    ld a, $21                                     ; $52d9: $3e $21
    dec a                                         ; $52db: $3d
    inc hl                                        ; $52dc: $23
    daa                                           ; $52dd: $27
    add hl, sp                                    ; $52de: $39
    add hl, sp                                    ; $52df: $39
    daa                                           ; $52e0: $27
    rst $38                                       ; $52e1: $ff
    cpl                                           ; $52e2: $2f
    ld sp, $2936                                  ; $52e3: $31 $36 $29
    add hl, sp                                    ; $52e6: $39
    ld h, $cf                                     ; $52e7: $26 $cf
    ldh a, [rIE]                                  ; $52e9: $f0 $ff
    sbc c                                         ; $52eb: $99
    add b                                         ; $52ec: $80
    sbc b                                         ; $52ed: $98
    jr jr_007_5308                                ; $52ee: $18 $18

    jr jr_007_530b                                ; $52f0: $18 $19

    db $10                                        ; $52f2: $10
    rst $38                                       ; $52f3: $ff
    add c                                         ; $52f4: $81
    ld bc, $83c6                                  ; $52f5: $01 $c6 $83
    ld l, h                                       ; $52f8: $6c
    rst $08                                       ; $52f9: $cf
    or a                                          ; $52fa: $b7
    ld a, b                                       ; $52fb: $78
    rst $38                                       ; $52fc: $ff
    adc [hl]                                      ; $52fd: $8e
    adc d                                         ; $52fe: $8a
    jp z, $ce8e                                   ; $52ff: $ca $8e $ce

    call nz, $c0e0                                ; $5302: $c4 $e0 $c0
    rst $38                                       ; $5305: $ff
    jr nz, @-$1e                                  ; $5306: $20 $e0

jr_007_5308:
    pop af                                        ; $5308: $f1
    jr nz, jr_007_5326                            ; $5309: $20 $1b

jr_007_530b:
    pop af                                        ; $530b: $f1
    xor $1f                                       ; $530c: $ee $1f
    rst $38                                       ; $530e: $ff
    inc hl                                        ; $530f: $23
    ld hl, $2366                                  ; $5310: $21 $66 $23
    ld b, h                                       ; $5313: $44
    ld h, a                                       ; $5314: $67
    ld h, [hl]                                    ; $5315: $66
    ld h, l                                       ; $5316: $65
    rst $38                                       ; $5317: $ff
    db $e4                                        ; $5318: $e4
    ld h, a                                       ; $5319: $67
    and l                                         ; $531a: $a5
    and $67                                       ; $531b: $e6 $67
    and h                                         ; $531d: $a4
    dec de                                        ; $531e: $1b
    db $fc                                        ; $531f: $fc
    rst $38                                       ; $5320: $ff
    add b                                         ; $5321: $80
    ret nz                                        ; $5322: $c0

    ret nz                                        ; $5323: $c0

    ld b, b                                       ; $5324: $40
    ld b, [hl]                                    ; $5325: $46

jr_007_5326:
    call nz, $c646                                ; $5326: $c4 $46 $c6
    rst $38                                       ; $5329: $ff
    ld b, [hl]                                    ; $532a: $46
    add $c6                                       ; $532b: $c6 $c6
    ld b, [hl]                                    ; $532d: $46
    ld b, [hl]                                    ; $532e: $46
    add $b9                                       ; $532f: $c6 $b9
    ld a, a                                       ; $5331: $7f
    rst $38                                       ; $5332: $ff

Jump_007_5333:
    and $42                                       ; $5333: $e6 $42
    ld b, [hl]                                    ; $5335: $46
    ld b, [hl]                                    ; $5336: $46
    ld b, [hl]                                    ; $5337: $46
    ld b, d                                       ; $5338: $42
    ld b, b                                       ; $5339: $40
    ld b, b                                       ; $533a: $40
    rst $38                                       ; $533b: $ff
    ld [hl], b                                    ; $533c: $70
    ld h, b                                       ; $533d: $60
    ld e, h                                       ; $533e: $5c
    ld a, b                                       ; $533f: $78
    ld d, a                                       ; $5340: $57
    ld l, a                                       ; $5341: $6f
    and [hl]                                      ; $5342: $a6
    reti                                          ; $5343: $d9


    ld a, l                                       ; $5344: $7d
    jr nc, @+$01                                  ; $5345: $30 $ff

    ldh [$31], a                                  ; $5347: $e0 $31
    ld sp, $3121                                  ; $5349: $31 $21 $31
    ld de, $e0ff                                  ; $534c: $11 $ff $e0
    rst $38                                       ; $534f: $ff
    sub c                                         ; $5350: $91
    ld de, $ffee                                  ; $5351: $11 $ee $ff
    rlca                                          ; $5354: $07
    ld b, $06                                     ; $5355: $06 $06
    inc b                                         ; $5357: $04
    rst $38                                       ; $5358: $ff
    inc b                                         ; $5359: $04
    inc b                                         ; $535a: $04
    ld h, $24                                     ; $535b: $26 $24
    ld h, $26                                     ; $535d: $26 $26
    daa                                           ; $535f: $27
    ld h, $ff                                     ; $5360: $26 $ff
    dec h                                         ; $5362: $25
    daa                                           ; $5363: $27
    db $db                                        ; $5364: $db
    db $fc                                        ; $5365: $fc
    ld h, $22                                     ; $5366: $26 $22
    inc c                                         ; $5368: $0c
    ld b, $ff                                     ; $5369: $06 $ff
    ld a, [hl-]                                   ; $536b: $3a
    ld e, $36                                     ; $536c: $1e $36
    ld a, [hl-]                                   ; $536e: $3a
    ld a, [de]                                    ; $536f: $1a
    ld c, $0e                                     ; $5370: $0e $0e
    ld b, $ff                                     ; $5372: $06 $ff
    add $86                                       ; $5374: $c6 $86
    ld a, c                                       ; $5376: $79
    rst $38                                       ; $5377: $ff
    rlca                                          ; $5378: $07
    ld [bc], a                                    ; $5379: $02
    inc bc                                        ; $537a: $03
    ld [bc], a                                    ; $537b: $02
    cp a                                          ; $537c: $bf
    ld [hl-], a                                   ; $537d: $32
    inc hl                                        ; $537e: $23
    inc sp                                        ; $537f: $33
    ld [hl-], a                                   ; $5380: $32
    ld [hl-], a                                   ; $5381: $32
    inc sp                                        ; $5382: $33
    db $fc                                        ; $5383: $fc
    pop hl                                        ; $5384: $e1
    call $feff                                    ; $5385: $cd $ff $fe
    rst $08                                       ; $5388: $cf
    ld c, b                                       ; $5389: $48
    jp z, $4d4d                                   ; $538a: $ca $4d $4d

    add $c5                                       ; $538d: $c6 $c5
    rst $38                                       ; $538f: $ff
    ld b, [hl]                                    ; $5390: $46
    ld h, [hl]                                    ; $5391: $66
    jp Jump_007_62a3                              ; $5392: $c3 $a3 $62


    ld [hl-], a                                   ; $5395: $32
    db $e3                                        ; $5396: $e3
    db $dd                                        ; $5397: $dd
    ld bc, $003e                                  ; $5398: $01 $3e $00
    nop                                           ; $539b: $00
    nop                                           ; $539c: $00
    rst $38                                       ; $539d: $ff
    rrca                                          ; $539e: $0f
    rst $38                                       ; $539f: $ff
    ldh a, [rNR10]                                ; $53a0: $f0 $10
    db $10                                        ; $53a2: $10
    ldh a, [$f8]                                  ; $53a3: $f0 $f8
    db $10                                        ; $53a5: $10
    rst $38                                       ; $53a6: $ff
    adc b                                         ; $53a7: $88
    ld a, b                                       ; $53a8: $78
    ld a, b                                       ; $53a9: $78
    adc b                                         ; $53aa: $88
    ret z                                         ; $53ab: $c8

    jr c, jr_007_53b6                             ; $53ac: $38 $08

    ld hl, sp-$01                                 ; $53ae: $f8 $ff
    or d                                          ; $53b0: $b2
    call Call_007_72ed                            ; $53b1: $cd $ed $72
    dec sp                                        ; $53b4: $3b
    inc e                                         ; $53b5: $1c

jr_007_53b6:
    inc c                                         ; $53b6: $0c
    rlca                                          ; $53b7: $07
    rst $38                                       ; $53b8: $ff
    add $83                                       ; $53b9: $c6 $83
    db $e3                                        ; $53bb: $e3
    pop bc                                        ; $53bc: $c1
    and c                                         ; $53bd: $a1
    ldh [$e1], a                                  ; $53be: $e0 $e1
    ret nz                                        ; $53c0: $c0

    rst $38                                       ; $53c1: $ff
    ld a, c                                       ; $53c2: $79
    add [hl]                                      ; $53c3: $86
    add $39                                       ; $53c4: $c6 $39
    cp a                                          ; $53c6: $bf
    ld b, b                                       ; $53c7: $40
    ld h, b                                       ; $53c8: $60
    sbc a                                         ; $53c9: $9f
    rst $38                                       ; $53ca: $ff
    sub a                                         ; $53cb: $97
    ld l, a                                       ; $53cc: $6f
    ld l, l                                       ; $53cd: $6d
    sbc b                                         ; $53ce: $98
    ret c                                         ; $53cf: $d8

    or b                                          ; $53d0: $b0
    or b                                          ; $53d1: $b0
    ldh [rIE], a                                  ; $53d2: $e0 $ff
    call z, Call_000_3a33                         ; $53d4: $cc $33 $3a
    push bc                                       ; $53d7: $c5
    call nz, Call_007_763b                        ; $53d8: $c4 $3b $76
    adc a                                         ; $53db: $8f
    rst $38                                       ; $53dc: $ff
    dec c                                         ; $53dd: $0d
    ld sp, hl                                     ; $53de: $f9

jr_007_53df:
    sbc c                                         ; $53df: $99
    pop af                                        ; $53e0: $f1
    pop af                                        ; $53e1: $f1
    ld h, c                                       ; $53e2: $61
    ld h, [hl]                                    ; $53e3: $66
    ld b, e                                       ; $53e4: $43
    rst $38                                       ; $53e5: $ff
    dec sp                                        ; $53e6: $3b
    call nz, $837c                                ; $53e7: $c4 $7c $83
    db $db                                        ; $53ea: $db
    inc a                                         ; $53eb: $3c
    db $e4                                        ; $53ec: $e4
    daa                                           ; $53ed: $27
    rst $30                                       ; $53ee: $f7
    and $e7                                       ; $53ef: $e6 $e7
    ld bc, $e0ff                                  ; $53f1: $01 $ff $e0
    and $e7                                       ; $53f4: $e6 $e7
    jr jr_007_53df                                ; $53f6: $18 $e7

    rst $38                                       ; $53f8: $ff
    or c                                          ; $53f9: $b1
    ld c, a                                       ; $53fa: $4f
    dec hl                                        ; $53fb: $2b
    sub $66                                       ; $53fc: $d6 $66
    sbc h                                         ; $53fe: $9c
    call c, $ff28                                 ; $53ff: $dc $28 $ff
    sbc b                                         ; $5402: $98
    ld l, b                                       ; $5403: $68
    db $ec                                        ; $5404: $ec
    jr @+$08                                      ; $5405: $18 $06

    db $fc                                        ; $5407: $fc
    ld [$fff5], a                                 ; $5408: $ea $f5 $ff
    ld de, $361e                                  ; $540b: $11 $1e $36
    add hl, de                                    ; $540e: $19
    ld h, h                                       ; $540f: $64
    dec sp                                        ; $5410: $3b
    db $d3                                        ; $5411: $d3
    ld l, h                                       ; $5412: $6c
    rst $38                                       ; $5413: $ff
    jp z, Jump_007_71f5                           ; $5414: $ca $f5 $71

    ccf                                           ; $5417: $3f
    dec de                                        ; $5418: $1b
    ld c, $34                                     ; $5419: $0e $34
    set 7, a                                      ; $541b: $cb $ff
    db $fc                                        ; $541d: $fc
    inc bc                                        ; $541e: $03
    inc bc                                        ; $541f: $03
    db $fc                                        ; $5420: $fc
    cp $01                                        ; $5421: $fe $01
    ld sp, $fffe                                  ; $5423: $31 $fe $ff
    xor $c9                                       ; $5426: $ee $c9
    adc c                                         ; $5428: $89
    rrca                                          ; $5429: $0f
    dec bc                                        ; $542a: $0b
    ld c, $79                                     ; $542b: $0e $79
    add [hl]                                      ; $542d: $86
    rst $38                                       ; $542e: $ff
    ld b, [hl]                                    ; $542f: $46
    cp c                                          ; $5430: $b9
    ccf                                           ; $5431: $3f
    ret nz                                        ; $5432: $c0

    nop                                           ; $5433: $00
    rst $38                                       ; $5434: $ff
    or l                                          ; $5435: $b5
    ld a, e                                       ; $5436: $7b
    rst $38                                       ; $5437: $ff
    ld a, [$8ece]                                 ; $5438: $fa $ce $8e
    ld b, $04                                     ; $543b: $06 $04
    ld b, $cc                                     ; $543d: $06 $cc
    inc sp                                        ; $543f: $33
    rst $38                                       ; $5440: $ff
    dec sp                                        ; $5441: $3b
    call nz, Call_000_38c7                        ; $5442: $c4 $c7 $38
    ld a, b                                       ; $5445: $78
    add a                                         ; $5446: $87
    or a                                          ; $5447: $b7
    ld hl, sp-$01                                 ; $5448: $f8 $ff
    ld a, b                                       ; $544a: $78
    ld c, a                                       ; $544b: $4f
    ld c, [hl]                                    ; $544c: $4e
    dec b                                         ; $544d: $05
    dec b                                         ; $544e: $05
    rlca                                          ; $544f: $07
    di                                            ; $5450: $f3
    inc c                                         ; $5451: $0c
    ei                                            ; $5452: $fb
    inc a                                         ; $5453: $3c
    jp $e1f0                                      ; $5454: $c3 $f0 $e1


    cp e                                          ; $5457: $bb
    ld a, h                                       ; $5458: $7c

jr_007_5459:
    ld l, h                                       ; $5459: $6c
    rst $00                                       ; $545a: $c7
    rst $00                                       ; $545b: $c7
    rst $38                                       ; $545c: $ff
    add e                                         ; $545d: $83
    add e                                         ; $545e: $83
    ld [bc], a                                    ; $545f: $02
    ld e, $e1                                     ; $5460: $1e $e1
    pop hl                                        ; $5462: $e1
    ld e, $9f                                     ; $5463: $1e $9f
    rst $38                                       ; $5465: $ff
    ld h, b                                       ; $5466: $60
    jr nc, @+$01                                  ; $5467: $30 $ff

    ld l, a                                       ; $5469: $6f
    ret z                                         ; $546a: $c8

    ret z                                         ; $546b: $c8

    adc a                                         ; $546c: $8f
    adc a                                         ; $546d: $8f
    rlca                                          ; $546e: $07
    ld [$1f30], sp                                ; $546f: $08 $30 $1f
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    nop                                           ; $5474: $00
    rst $38                                       ; $5475: $ff
    ld hl, sp+$08                                 ; $5476: $f8 $08
    sbc b                                         ; $5478: $98
    ld l, b                                       ; $5479: $68
    ld l, b                                       ; $547a: $68
    sbc b                                         ; $547b: $98
    ret c                                         ; $547c: $d8

    jr z, @+$01                                   ; $547d: $28 $ff

    jr z, jr_007_5459                             ; $547f: $28 $d8

    ret c                                         ; $5481: $d8

    jr z, jr_007_54bc                             ; $5482: $28 $38

    ret z                                         ; $5484: $c8

    rst $00                                       ; $5485: $c7
    ccf                                           ; $5486: $3f
    rst $38                                       ; $5487: $ff
    inc bc                                        ; $5488: $03
    ld bc, $0306                                  ; $5489: $01 $06 $03
    db $e3                                        ; $548c: $e3
    pop bc                                        ; $548d: $c1
    pop hl                                        ; $548e: $e1
    pop hl                                        ; $548f: $e1
    rst $38                                       ; $5490: $ff
    ld bc, $0301                                  ; $5491: $01 $01 $03
    ld bc, $070e                                  ; $5494: $01 $0e $07
    ld sp, hl                                     ; $5497: $f9
    cp $ff                                        ; $5498: $fe $ff
    ld h, h                                       ; $549a: $64
    call nz, $80c1                                ; $549b: $c4 $c1 $80
    add a                                         ; $549e: $87
    add e                                         ; $549f: $83
    add $87                                       ; $54a0: $c6 $87
    rst $38                                       ; $54a2: $ff
    ld b, e                                       ; $54a3: $43
    pop bc                                        ; $54a4: $c1
    pop hl                                        ; $54a5: $e1
    ld b, b                                       ; $54a6: $40
    jr c, @-$0e                                   ; $54a7: $38 $f0

    adc a                                         ; $54a9: $8f
    ld a, a                                       ; $54aa: $7f
    rst $38                                       ; $54ab: $ff
    rst $08                                       ; $54ac: $cf
    ld b, [hl]                                    ; $54ad: $46
    and e                                         ; $54ae: $a3
    pop bc                                        ; $54af: $c1
    ld sp, $11e1                                  ; $54b0: $31 $e1 $11
    pop af                                        ; $54b3: $f1
    rst $38                                       ; $54b4: $ff
    ld [hl], e                                    ; $54b5: $73
    and c                                         ; $54b6: $a1
    and $a3                                       ; $54b7: $e6 $a3
    db $ed                                        ; $54b9: $ed
    and [hl]                                      ; $54ba: $a6
    ld e, b                                       ; $54bb: $58

jr_007_54bc:
    cp a                                          ; $54bc: $bf
    rst $38                                       ; $54bd: $ff
    rst $20                                       ; $54be: $e7
    inc h                                         ; $54bf: $24
    ld h, l                                       ; $54c0: $65
    and [hl]                                      ; $54c1: $a6
    and $23                                       ; $54c2: $e6 $23
    ld [hl+], a                                   ; $54c4: $22
    db $e3                                        ; $54c5: $e3
    rst $38                                       ; $54c6: $ff
    di                                            ; $54c7: $f3
    ld hl, $b151                                  ; $54c8: $21 $51 $b1
    sbc c                                         ; $54cb: $99
    ld [hl], c                                    ; $54cc: $71
    ld l, $df                                     ; $54cd: $2e $df
    rst $38                                       ; $54cf: $ff
    ld h, e                                       ; $54d0: $63
    sbc [hl]                                      ; $54d1: $9e
    add c                                         ; $54d2: $81
    ld a, a                                       ; $54d3: $7f
    rra                                           ; $54d4: $1f
    pop hl                                        ; $54d5: $e1
    di                                            ; $54d6: $f3
    ld c, $ff                                     ; $54d7: $0e $ff
    xor [hl]                                      ; $54d9: $ae
    ld e, h                                       ; $54da: $5c
    db $10                                        ; $54db: $10
    ldh a, [rNR10]                                ; $54dc: $f0 $10
    ldh a, [rIF]                                  ; $54de: $f0 $0f
    rst $38                                       ; $54e0: $ff
    rst $38                                       ; $54e1: $ff
    ld c, $06                                     ; $54e2: $0e $06
    adc [hl]                                      ; $54e4: $8e
    add h                                         ; $54e5: $84
    sbc b                                         ; $54e6: $98
    inc c                                         ; $54e7: $0c
    ld [hl], $1c                                  ; $54e8: $36 $1c
    rst $38                                       ; $54ea: $ff
    ld h, e                                       ; $54eb: $63
    ld a, $c5                                     ; $54ec: $3e $c5
    ld a, e                                       ; $54ee: $7b
    add b                                         ; $54ef: $80
    rst $38                                       ; $54f0: $ff
    ld [hl], b                                    ; $54f1: $70
    adc a                                         ; $54f2: $8f
    rst $38                                       ; $54f3: $ff
    ld [hl], d                                    ; $54f4: $72
    ld a, $5e                                     ; $54f5: $3e $5e
    ld h, h                                       ; $54f7: $64
    ld b, h                                       ; $54f8: $44
    ld a, h                                       ; $54f9: $7c
    jr c, jr_007_5538                             ; $54fa: $38 $3c

    rst $38                                       ; $54fc: $ff
    ld b, $04                                     ; $54fd: $06 $04
    adc a                                         ; $54ff: $8f
    ld b, $f9                                     ; $5500: $06 $f9
    rst $08                                       ; $5502: $cf
    jr nc, @+$01                                  ; $5503: $30 $ff

    rst $30                                       ; $5505: $f7
    ld h, [hl]                                    ; $5506: $66
    ld [bc], a                                    ; $5507: $02
    ld h, d                                       ; $5508: $62
    rst $38                                       ; $5509: $ff
    ldh [$66], a                                  ; $550a: $e0 $66
    ld b, d                                       ; $550c: $42
    inc b                                         ; $550d: $04
    ld b, $ff                                     ; $550e: $06 $ff
    ld a, [de]                                    ; $5510: $1a
    ld c, $b2                                     ; $5511: $0e $b2
    ld a, $dd                                     ; $5513: $3e $dd
    db $e3                                        ; $5515: $e3
    dec sp                                        ; $5516: $3b
    ld e, $ff                                     ; $5517: $1e $ff
    ld l, [hl]                                    ; $5519: $6e
    inc [hl]                                      ; $551a: $34
    ld c, h                                       ; $551b: $4c
    ld [hl], h                                    ; $551c: $74
    ld d, [hl]                                    ; $551d: $56
    ld l, h                                       ; $551e: $6c
    ld d, d                                       ; $551f: $52
    ld l, [hl]                                    ; $5520: $6e
    rst $38                                       ; $5521: $ff
    ld h, a                                       ; $5522: $67
    ld e, d                                       ; $5523: $5a
    ld e, l                                       ; $5524: $5d
    ld h, e                                       ; $5525: $63
    or b                                          ; $5526: $b0
    rst $08                                       ; $5527: $cf
    ld h, $22                                     ; $5528: $26 $22
    rst $38                                       ; $552a: $ff
    rrca                                          ; $552b: $0f
    ld b, $39                                     ; $552c: $06 $39
    rra                                           ; $552e: $1f
    ld [hl], $39                                  ; $552f: $36 $39
    dec de                                        ; $5531: $1b
    dec c                                         ; $5532: $0d
    rst $38                                       ; $5533: $ff
    dec c                                         ; $5534: $0d
    rlca                                          ; $5535: $07
    rst $00                                       ; $5536: $c7
    add l                                         ; $5537: $85

jr_007_5538:
    ld a, b                                       ; $5538: $78
    rst $38                                       ; $5539: $ff
    ld a, a                                       ; $553a: $7f
    jr nc, @+$01                                  ; $553b: $30 $ff

    rra                                           ; $553d: $1f
    ld [$0f88], sp                                ; $553e: $08 $88 $0f
    adc a                                         ; $5541: $8f
    adc b                                         ; $5542: $88
    sbc h                                         ; $5543: $9c
    dec bc                                        ; $5544: $0b
    ccf                                           ; $5545: $3f
    inc sp                                        ; $5546: $33
    inc e                                         ; $5547: $1c
    ld l, [hl]                                    ; $5548: $6e
    ld sp, $fec1                                  ; $5549: $31 $c1 $fe
    nop                                           ; $554c: $00
    nop                                           ; $554d: $00
    nop                                           ; $554e: $00
    rst $38                                       ; $554f: $ff
    inc a                                         ; $5550: $3c
    rst $38                                       ; $5551: $ff
    rst $00                                       ; $5552: $c7
    ld b, d                                       ; $5553: $42
    ld [c], a                                     ; $5554: $e2
    ld b, e                                       ; $5555: $43
    ld [hl+], a                                   ; $5556: $22
    db $e3                                        ; $5557: $e3
    rst $38                                       ; $5558: $ff
    di                                            ; $5559: $f3
    ld hl, $f111                                  ; $555a: $21 $11 $f1
    ld sp, hl                                     ; $555d: $f9
    db $10                                        ; $555e: $10
    ld [$fff8], sp                                ; $555f: $08 $f8 $ff
    ld e, $ff                                     ; $5562: $1e $ff
    pop af                                        ; $5564: $f1
    ld hl, $e123                                  ; $5565: $21 $23 $e1
    and d                                         ; $5568: $a2
    ld h, e                                       ; $5569: $63
    rst $38                                       ; $556a: $ff
    ld h, a                                       ; $556b: $67
    jp nz, $47c4                                  ; $556c: $c2 $c4 $47

    rst $08                                       ; $556f: $cf
    add h                                         ; $5570: $84
    adc b                                         ; $5571: $88
    adc a                                         ; $5572: $8f
    rst $38                                       ; $5573: $ff
    xor $1f                                       ; $5574: $ee $1f
    ld de, $b3f1                                  ; $5576: $11 $f1 $b3
    ld h, c                                       ; $5579: $61
    ld h, [hl]                                    ; $557a: $66
    jp $ccff                                      ; $557b: $c3 $ff $cc


    add a                                         ; $557e: $87
    adc l                                         ; $557f: $8d
    adc [hl]                                      ; $5580: $8e
    rst $00                                       ; $5581: $c7
    add e                                         ; $5582: $83
    ld h, c                                       ; $5583: $61
    ret nz                                        ; $5584: $c0

    rst $38                                       ; $5585: $ff
    ld l, [hl]                                    ; $5586: $6e
    sub c                                         ; $5587: $91
    ld e, b                                       ; $5588: $58
    and a                                         ; $5589: $a7
    inc [hl]                                      ; $558a: $34
    sra l                                         ; $558b: $cb $2d
    jp nc, Jump_000_19ff                          ; $558d: $d2 $ff $19

    and $80                                       ; $5590: $e6 $80
    ld a, a                                       ; $5592: $7f
    ld [bc], a                                    ; $5593: $02
    db $fd                                        ; $5594: $fd
    add [hl]                                      ; $5595: $86
    ld sp, hl                                     ; $5596: $f9
    rst $38                                       ; $5597: $ff
    ccf                                           ; $5598: $3f
    rst $38                                       ; $5599: $ff
    ret nz                                        ; $559a: $c0

    ld b, b                                       ; $559b: $40
    ldh [rLCDC], a                                ; $559c: $e0 $40
    and b                                         ; $559e: $a0
    ld h, b                                       ; $559f: $60
    rst $38                                       ; $55a0: $ff
    inc hl                                        ; $55a1: $23
    db $e3                                        ; $55a2: $e3
    ld h, e                                       ; $55a3: $63
    and d                                         ; $55a4: $a2
    ld h, d                                       ; $55a5: $62
    and e                                         ; $55a6: $a3
    ld h, e                                       ; $55a7: $63
    and e                                         ; $55a8: $a3
    rst $38                                       ; $55a9: $ff
    rst $00                                       ; $55aa: $c7
    ld hl, sp+$74                                 ; $55ab: $f8 $74
    dec sp                                        ; $55ad: $3b
    dec de                                        ; $55ae: $1b
    inc c                                         ; $55af: $0c
    inc c                                         ; $55b0: $0c
    rlca                                          ; $55b1: $07
    rst $38                                       ; $55b2: $ff
    add a                                         ; $55b3: $87
    ld [bc], a                                    ; $55b4: $02
    jp $c6c2                                      ; $55b5: $c3 $c2 $c6


    jp Jump_000_0784                              ; $55b8: $c3 $84 $07


    rst $38                                       ; $55bb: $ff
    daa                                           ; $55bc: $27
    ret c                                         ; $55bd: $d8

    rst $28                                       ; $55be: $ef
    db $10                                        ; $55bf: $10
    sbc [hl]                                      ; $55c0: $9e
    ld h, c                                       ; $55c1: $61
    ld [hl], b                                    ; $55c2: $70
    adc a                                         ; $55c3: $8f
    rst $38                                       ; $55c4: $ff
    db $dd                                        ; $55c5: $dd
    ld a, $36                                     ; $55c6: $3e $36
    db $e3                                        ; $55c8: $e3
    ld h, e                                       ; $55c9: $63
    pop bc                                        ; $55ca: $c1
    pop bc                                        ; $55cb: $c1
    add c                                         ; $55cc: $81
    rst $38                                       ; $55cd: $ff
    ld c, $f1                                     ; $55ce: $0e $f1
    add a                                         ; $55d0: $87
    ld a, b                                       ; $55d1: $78
    ld de, $58ee                                  ; $55d2: $11 $ee $58
    and a                                         ; $55d5: $a7
    rst $38                                       ; $55d6: $ff
    inc c                                         ; $55d7: $0c
    rst $38                                       ; $55d8: $ff
    cp d                                          ; $55d9: $ba
    ld [hl], e                                    ; $55da: $73
    ld h, d                                       ; $55db: $62
    jp $83c2                                      ; $55dc: $c3 $c2 $83


    rst $38                                       ; $55df: $ff
    ld l, h                                       ; $55e0: $6c
    sub e                                         ; $55e1: $93
    ld [hl], d                                    ; $55e2: $72
    adc l                                         ; $55e3: $8d
    inc e                                         ; $55e4: $1c
    db $e3                                        ; $55e5: $e3
    jr nz, @-$1f                                  ; $55e6: $20 $df

    rst $28                                       ; $55e8: $ef
    adc l                                         ; $55e9: $8d
    ld a, [hl]                                    ; $55ea: $7e
    ld a, $f3                                     ; $55eb: $3e $f3
    ldh [$e1], a                                  ; $55ed: $e0 $e1
    ld l, a                                       ; $55ef: $6f
    sub b                                         ; $55f0: $90
    ld e, c                                       ; $55f1: $59
    rst $38                                       ; $55f2: $ff
    and [hl]                                      ; $55f3: $a6
    or $09                                        ; $55f4: $f6 $09
    rst $08                                       ; $55f6: $cf
    jr nc, jr_007_5665                            ; $55f7: $30 $6c

    rst $38                                       ; $55f9: $ff
    sbc [hl]                                      ; $55fa: $9e
    rst $38                                       ; $55fb: $ff
    sub e                                         ; $55fc: $93
    sub e                                         ; $55fd: $93
    add c                                         ; $55fe: $81
    ld bc, $0b81                                  ; $55ff: $01 $81 $0b
    rst $30                                       ; $5602: $f7
    or $ff                                        ; $5603: $f6 $ff
    inc c                                         ; $5605: $0c
    inc e                                         ; $5606: $1c
    add sp, -$18                                  ; $5607: $e8 $e8
    jr jr_007_5643                                ; $5609: $18 $38

    ret z                                         ; $560b: $c8

    ret z                                         ; $560c: $c8

    rst $38                                       ; $560d: $ff
    jr c, jr_007_5648                             ; $560e: $38 $38

    ldh a, [$60]                                  ; $5610: $f0 $60
    ret nz                                        ; $5612: $c0

    ld a, a                                       ; $5613: $7f
    add b                                         ; $5614: $80
    adc h                                         ; $5615: $8c
    rst $38                                       ; $5616: $ff
    di                                            ; $5617: $f3
    di                                            ; $5618: $f3
    adc h                                         ; $5619: $8c
    adc h                                         ; $561a: $8c
    rst $38                                       ; $561b: $ff
    db $db                                        ; $561c: $db
    or d                                          ; $561d: $b2
    or e                                          ; $561e: $b3
    inc bc                                        ; $561f: $03
    ld [c], a                                     ; $5620: $e2
    ld [c], a                                     ; $5621: $e2
    ld l, d                                       ; $5622: $6a
    ldh [rP1], a                                  ; $5623: $e0 $00
    nop                                           ; $5625: $00
    nop                                           ; $5626: $00
    rst $38                                       ; $5627: $ff
    ld hl, sp+$08                                 ; $5628: $f8 $08
    db $ec                                        ; $562a: $ec
    jr jr_007_5641                                ; $562b: $18 $14

    db $ec                                        ; $562d: $ec
    or $0c                                        ; $562e: $f6 $0c
    rst $38                                       ; $5630: $ff
    adc d                                         ; $5631: $8a
    halt                                          ; $5632: $76
    ld [hl], e                                    ; $5633: $73
    adc [hl]                                      ; $5634: $8e
    db $dd                                        ; $5635: $dd
    inc hl                                        ; $5636: $23
    jr nc, @-$2f                                  ; $5637: $30 $cf

    rst $38                                       ; $5639: $ff
    rrca                                          ; $563a: $0f
    ld [$0e19], sp                                ; $563b: $08 $19 $0e
    rla                                           ; $563e: $17
    jr jr_007_5679                                ; $563f: $18 $38

jr_007_5641:
    rla                                           ; $5641: $17
    rst $38                                       ; $5642: $ff

jr_007_5643:
    ld l, $31                                     ; $5643: $2e $31
    ld [hl], c                                    ; $5645: $71
    cpl                                           ; $5646: $2f
    ld e, a                                       ; $5647: $5f

jr_007_5648:
    ld h, c                                       ; $5648: $61
    and b                                         ; $5649: $a0
    rst $18                                       ; $564a: $df
    rst $38                                       ; $564b: $ff
    or b                                          ; $564c: $b0
    ld h, b                                       ; $564d: $60
    jr jr_007_5648                                ; $564e: $18 $f8

    sbc c                                         ; $5650: $99
    ld [hl], b                                    ; $5651: $70
    inc sp                                        ; $5652: $33
    pop hl                                        ; $5653: $e1

jr_007_5654:
    rst $38                                       ; $5654: $ff
    and $c3                                       ; $5655: $e6 $c3
    inc c                                         ; $5657: $0c
    rlca                                          ; $5658: $07
    dec bc                                        ; $5659: $0b
    inc c                                         ; $565a: $0c
    ld a, [c]                                     ; $565b: $f2
    db $fd                                        ; $565c: $fd
    rst $38                                       ; $565d: $ff
    rst $20                                       ; $565e: $e7
    ld e, b                                       ; $565f: $58
    rst $30                                       ; $5660: $f7
    ld c, b                                       ; $5661: $48
    add h                                         ; $5662: $84
    ei                                            ; $5663: $fb
    dec sp                                        ; $5664: $3b

jr_007_5665:
    db $fc                                        ; $5665: $fc
    rst $38                                       ; $5666: $ff
    db $ec                                        ; $5667: $ec
    ld b, a                                       ; $5668: $47
    ld b, a                                       ; $5669: $47
    call nz, Call_007_44ef                        ; $566a: $c4 $ef $44
    jr c, @+$01                                   ; $566d: $38 $ff

    rst $38                                       ; $566f: $ff
    ld h, b                                       ; $5670: $60
    and b                                         ; $5671: $a0
    jr nz, jr_007_5654                            ; $5672: $20 $e0

    jr nz, @-$1e                                  ; $5674: $20 $e0

    db $e3                                        ; $5676: $e3
    ld [hl+], a                                   ; $5677: $22
    rst $38                                       ; $5678: $ff

jr_007_5679:
    inc hl                                        ; $5679: $23
    db $e3                                        ; $567a: $e3
    daa                                           ; $567b: $27
    ld [c], a                                     ; $567c: $e2
    and l                                         ; $567d: $a5
    ld h, [hl]                                    ; $567e: $66
    ld a, [de]                                    ; $567f: $1a
    db $fd                                        ; $5680: $fd
    rst $38                                       ; $5681: $ff
    dec c                                         ; $5682: $0d
    rlca                                          ; $5683: $07
    dec sp                                        ; $5684: $3b
    ld e, $12                                     ; $5685: $1e $12
    ld e, $1b                                     ; $5687: $1e $1b
    ld c, $ff                                     ; $5689: $0e $ff
    adc l                                         ; $568b: $8d
    rlca                                          ; $568c: $07
    rst $08                                       ; $568d: $cf
    add l                                         ; $568e: $85
    ld a, d                                       ; $568f: $7a
    call $ff30                                    ; $5690: $cd $30 $ff
    rst $38                                       ; $5693: $ff
    sub e                                         ; $5694: $93
    ld de, $0306                                  ; $5695: $11 $06 $03
    dec e                                         ; $5698: $1d
    rrca                                          ; $5699: $0f
    add hl, de                                    ; $569a: $19
    rra                                           ; $569b: $1f
    rst $38                                       ; $569c: $ff
    inc c                                         ; $569d: $0c
    rlca                                          ; $569e: $07
    add [hl]                                      ; $569f: $86
    inc bc                                        ; $56a0: $03
    ld [c], a                                     ; $56a1: $e2
    jp $ff3c                                      ; $56a2: $c3 $3c $ff


    rst $38                                       ; $56a5: $ff
    sbc h                                         ; $56a6: $9c
    adc a                                         ; $56a7: $8f
    sub c                                         ; $56a8: $91
    rra                                           ; $56a9: $1f
    ld de, $8e1f                                  ; $56aa: $11 $1f $8e
    rrca                                          ; $56ad: $0f
    rst $38                                       ; $56ae: $ff
    pop bc                                        ; $56af: $c1
    add c                                         ; $56b0: $81
    ld h, e                                       ; $56b1: $63
    pop bc                                        ; $56b2: $c1
    cp [hl]                                       ; $56b3: $be
    ld [hl], e                                    ; $56b4: $73
    ld l, h                                       ; $56b5: $6c
    sbc a                                         ; $56b6: $9f
    rst $38                                       ; $56b7: $ff
    sbc c                                         ; $56b8: $99
    add b                                         ; $56b9: $80
    sbc b                                         ; $56ba: $98
    jr jr_007_56d5                                ; $56bb: $18 $18

    jr jr_007_56d8                                ; $56bd: $18 $19

    db $10                                        ; $56bf: $10
    rst $38                                       ; $56c0: $ff
    add c                                         ; $56c1: $81
    ld bc, $83c6                                  ; $56c2: $01 $c6 $83
    ld l, l                                       ; $56c5: $6d
    adc $b0                                       ; $56c6: $ce $b0
    ld a, a                                       ; $56c8: $7f
    rst $38                                       ; $56c9: $ff
    adc [hl]                                      ; $56ca: $8e
    add a                                         ; $56cb: $87
    sbc e                                         ; $56cc: $9b
    adc l                                         ; $56cd: $8d
    sub l                                         ; $56ce: $95
    sbc e                                         ; $56cf: $9b
    sbc a                                         ; $56d0: $9f
    sub c                                         ; $56d1: $91
    rst $38                                       ; $56d2: $ff
    jr @-$67                                      ; $56d3: $18 $97

jr_007_56d5:
    sbc a                                         ; $56d5: $9f
    sub b                                         ; $56d6: $90
    sbc c                                         ; $56d7: $99

jr_007_56d8:
    sub [hl]                                      ; $56d8: $96
    ld l, [hl]                                    ; $56d9: $6e
    pop af                                        ; $56da: $f1
    rst $38                                       ; $56db: $ff
    ret nz                                        ; $56dc: $c0

    add b                                         ; $56dd: $80
    adc b                                         ; $56de: $88
    nop                                           ; $56df: $00
    inc c                                         ; $56e0: $0c
    ld [$048c], sp                                ; $56e1: $08 $8c $04
    rst $38                                       ; $56e4: $ff
    ret nz                                        ; $56e5: $c0

    add b                                         ; $56e6: $80
    ld h, b                                       ; $56e7: $60
    ret nz                                        ; $56e8: $c0

    cp b                                          ; $56e9: $b8
    ld a, b                                       ; $56ea: $78
    ld h, a                                       ; $56eb: $67
    sbc a                                         ; $56ec: $9f
    rst $38                                       ; $56ed: $ff
    sbc a                                         ; $56ee: $9f
    adc h                                         ; $56ef: $8c
    rst $00                                       ; $56f0: $c7
    add d                                         ; $56f1: $82
    db $e3                                        ; $56f2: $e3
    jp nz, $e3a2                                  ; $56f3: $c2 $a2 $e3

    rst $38                                       ; $56f6: $ff
    rst $20                                       ; $56f7: $e7
    jp nz, $c7cc                                  ; $56f8: $c2 $cc $c7

    db $db                                        ; $56fb: $db
    call z, $ff30                                 ; $56fc: $cc $30 $ff
    nop                                           ; $56ff: $00
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    rst $38                                       ; $5702: $ff
    rst $28                                       ; $5703: $ef
    db $10                                        ; $5704: $10
    sbc d                                         ; $5705: $9a
    ld h, l                                       ; $5706: $65
    halt                                          ; $5707: $76
    adc c                                         ; $5708: $89
    call z, $ff33                                 ; $5709: $cc $33 $ff
    dec sp                                        ; $570c: $3b
    push bc                                       ; $570d: $c5
    rst $30                                       ; $570e: $f7
    add hl, bc                                    ; $570f: $09
    add hl, de                                    ; $5710: $19
    rst $20                                       ; $5711: $e7
    nop                                           ; $5712: $00
    rst $38                                       ; $5713: $ff
    rst $38                                       ; $5714: $ff
    inc e                                         ; $5715: $1c
    rst $38                                       ; $5716: $ff
    and e                                         ; $5717: $a3
    ld h, d                                       ; $5718: $62
    ld h, [hl]                                    ; $5719: $66
    jp $86cd                                      ; $571a: $c3 $cd $86


    rst $38                                       ; $571d: $ff
    sbc b                                         ; $571e: $98
    rrca                                          ; $571f: $0f
    dec de                                        ; $5720: $1b
    inc e                                         ; $5721: $1c
    adc [hl]                                      ; $5722: $8e

Call_007_5723:
    rlca                                          ; $5723: $07
    jp $ff81                                      ; $5724: $c3 $81 $ff


    ld h, e                                       ; $5727: $63
    sbc h                                         ; $5728: $9c
    ld a, b                                       ; $5729: $78
    rst $38                                       ; $572a: $ff
    adc l                                         ; $572b: $8d
    add [hl]                                      ; $572c: $86
    add [hl]                                      ; $572d: $86
    add e                                         ; $572e: $83
    rst $38                                       ; $572f: $ff
    add e                                         ; $5730: $83
    add c                                         ; $5731: $81
    add c                                         ; $5732: $81
    add c                                         ; $5733: $81
    adc c                                         ; $5734: $89
    adc b                                         ; $5735: $88
    ld c, c                                       ; $5736: $49
    adc b                                         ; $5737: $88
    rst $38                                       ; $5738: $ff
    ret nc                                        ; $5739: $d0

    cpl                                           ; $573a: $2f
    add hl, sp                                    ; $573b: $39
    add $c3                                       ; $573c: $c6 $c3
    inc a                                         ; $573e: $3c
    di                                            ; $573f: $f3
    inc c                                         ; $5740: $0c
    rst $38                                       ; $5741: $ff
    rlca                                          ; $5742: $07
    rst $38                                       ; $5743: $ff
    dec l                                         ; $5744: $2d
    ret c                                         ; $5745: $d8

    sbc b                                         ; $5746: $98
    ldh a, [$b0]                                  ; $5747: $f0 $b0
    ldh [rIE], a                                  ; $5749: $e0 $ff
    ld b, [hl]                                    ; $574b: $46
    cp c                                          ; $574c: $b9
    ret nz                                        ; $574d: $c0

    ccf                                           ; $574e: $3f
    ld b, b                                       ; $574f: $40
    cp a                                          ; $5750: $bf
    and b                                         ; $5751: $a0
    ld e, a                                       ; $5752: $5f
    rst $38                                       ; $5753: $ff
    ld c, e                                       ; $5754: $4b
    or a                                          ; $5755: $b7
    or [hl]                                       ; $5756: $b6
    call z, Call_007_58ec                         ; $5757: $cc $ec $58
    ld e, b                                       ; $575a: $58
    ld [hl], b                                    ; $575b: $70
    rst $38                                       ; $575c: $ff
    ld a, a                                       ; $575d: $7f
    add b                                         ; $575e: $80
    ld [hl], b                                    ; $575f: $70
    adc a                                         ; $5760: $8f
    ld c, a                                       ; $5761: $4f
    or c                                          ; $5762: $b1
    ld [hl], c                                    ; $5763: $71
    adc a                                         ; $5764: $8f
    rst $38                                       ; $5765: $ff
    cp a                                          ; $5766: $bf

jr_007_5767:
    pop bc                                        ; $5767: $c1
    pop bc                                        ; $5768: $c1
    ld a, a                                       ; $5769: $7f
    ld h, a                                       ; $576a: $67
    ld a, $2c                                     ; $576b: $3e $2c
    jr c, @+$01                                   ; $576d: $38 $ff

    ld l, [hl]                                    ; $576f: $6e
    pop af                                        ; $5770: $f1
    jp c, $9695                                   ; $5771: $da $95 $96

    add hl, de                                    ; $5774: $19

jr_007_5775:
    inc e                                         ; $5775: $1c
    inc de                                        ; $5776: $13
    rst $28                                       ; $5777: $ef
    jr jr_007_5791                                ; $5778: $18 $17

    db $10                                        ; $577a: $10
    rra                                           ; $577b: $1f
    cp $e1                                        ; $577c: $fe $e1
    ld h, e                                       ; $577e: $63
    sbc a                                         ; $577f: $9f
    ld c, h                                       ; $5780: $4c
    rst $38                                       ; $5781: $ff
    cp h                                          ; $5782: $bc
    jr jr_007_5775                                ; $5783: $18 $f0

    jr nc, jr_007_5767                            ; $5785: $30 $e0

    inc hl                                        ; $5787: $23
    pop hl                                        ; $5788: $e1
    ld h, [hl]                                    ; $5789: $66
    rst $38                                       ; $578a: $ff
    jp $c744                                      ; $578b: $c3 $44 $c7


    call z, $8f87                                 ; $578e: $cc $87 $8f

jr_007_5791:
    ldh a, [$5e]                                  ; $5791: $f0 $5e
    rst $38                                       ; $5793: $ff
    ld h, c                                       ; $5794: $61
    ld d, c                                       ; $5795: $51
    ld l, [hl]                                    ; $5796: $6e
    ld c, a                                       ; $5797: $4f
    ld [hl], b                                    ; $5798: $70
    adc b                                         ; $5799: $88
    rst $30                                       ; $579a: $f7
    set 7, a                                      ; $579b: $cb $ff
    scf                                           ; $579d: $37
    ld b, $fc                                     ; $579e: $06 $fc
    db $ec                                        ; $57a0: $ec
    ld hl, sp-$3a                                 ; $57a1: $f8 $c6
    ccf                                           ; $57a3: $3f
    add hl, de                                    ; $57a4: $19
    rst $38                                       ; $57a5: $ff
    jp hl                                         ; $57a6: $e9


    sbc c                                         ; $57a7: $99
    ld l, c                                       ; $57a8: $69
    add hl, sp                                    ; $57a9: $39
    ret                                           ; $57aa: $c9


    ret                                           ; $57ab: $c9


    ld sp, hl                                     ; $57ac: $f9
    jp hl                                         ; $57ad: $e9


    rst $38                                       ; $57ae: $ff
    add hl, sp                                    ; $57af: $39
    add hl, sp                                    ; $57b0: $39
    add hl, de                                    ; $57b1: $19
    ld de, $b319                                  ; $57b2: $11 $19 $b3
    ld c, a                                       ; $57b5: $4f
    sub $ff                                       ; $57b6: $d6 $ff
    inc l                                         ; $57b8: $2c
    ld l, h                                       ; $57b9: $6c
    sbc b                                         ; $57ba: $98
    sbc b                                         ; $57bb: $98
    ld [hl], b                                    ; $57bc: $70
    ei                                            ; $57bd: $fb
    ld hl, $fbe2                                  ; $57be: $21 $e2 $fb
    db $e3                                        ; $57c1: $e3
    ld bc, $e0ff                                  ; $57c2: $01 $ff $e0
    rra                                           ; $57c5: $1f
    ldh [$f0], a                                  ; $57c6: $e0 $f0
    adc a                                         ; $57c8: $8f
    rst $08                                       ; $57c9: $cf
    rst $38                                       ; $57ca: $ff
    or b                                          ; $57cb: $b0
    or c                                          ; $57cc: $b1
    adc $7e                                       ; $57cd: $ce $7e
    add c                                         ; $57cf: $81
    inc bc                                        ; $57d0: $03
    db $fc                                        ; $57d1: $fc
    db $fc                                        ; $57d2: $fc
    rlca                                          ; $57d3: $07
    inc bc                                        ; $57d4: $03
    nop                                           ; $57d5: $00
    rst $38                                       ; $57d6: $ff
    nop                                           ; $57d7: $00
    nop                                           ; $57d8: $00
    nop                                           ; $57d9: $00
    rst $38                                       ; $57da: $ff
    rst $38                                       ; $57db: $ff
    nop                                           ; $57dc: $00
    dec sp                                        ; $57dd: $3b
    call nz, Call_000_38c7                        ; $57de: $c4 $c7 $38
    ld a, b                                       ; $57e1: $78
    add a                                         ; $57e2: $87
    rst $38                                       ; $57e3: $ff
    adc l                                         ; $57e4: $8d
    ld [hl], e                                    ; $57e5: $73
    ld a, [$0606]                                 ; $57e6: $fa $06 $06
    ld a, [$03fd]                                 ; $57e9: $fa $fd $03
    rst $38                                       ; $57ec: $ff
    ld h, c                                       ; $57ed: $61
    ret nz                                        ; $57ee: $c0

    ld sp, $f3f0                                  ; $57ef: $31 $f0 $f3
    ld hl, $c366                                  ; $57f2: $21 $66 $c3
    rst $38                                       ; $57f5: $ff
    call $1b86                                    ; $57f6: $cd $86 $1b
    inc c                                         ; $57f9: $0c
    inc d                                         ; $57fa: $14
    dec de                                        ; $57fb: $1b
    rst $20                                       ; $57fc: $e7
    ld hl, sp-$01                                 ; $57fd: $f8 $ff
    jp $c6c1                                      ; $57ff: $c3 $c1 $c6


    jp $c645                                      ; $5802: $c3 $45 $c6


    ld c, b                                       ; $5805: $48
    rst $00                                       ; $5806: $c7
    rst $38                                       ; $5807: $ff
    rst $08                                       ; $5808: $cf

jr_007_5809:
    ld c, b                                       ; $5809: $48
    ret z                                         ; $580a: $c8

    ld c, a                                       ; $580b: $4f
    ld c, a                                       ; $580c: $4f
    ret z                                         ; $580d: $c8

    or e                                          ; $580e: $b3
    ld a, h                                       ; $580f: $7c
    rst $38                                       ; $5810: $ff
    ld h, h                                       ; $5811: $64
    call nz, $80c1                                ; $5812: $c4 $c1 $80
    add a                                         ; $5815: $87
    add e                                         ; $5816: $83
    add $87                                       ; $5817: $c6 $87
    rst $38                                       ; $5819: $ff
    ld b, e                                       ; $581a: $43
    pop bc                                        ; $581b: $c1
    ld h, c                                       ; $581c: $61
    ret nz                                        ; $581d: $c0

    cp b                                          ; $581e: $b8
    ld [hl], b                                    ; $581f: $70
    cpl                                           ; $5820: $2f
    rst $18                                       ; $5821: $df
    rst $38                                       ; $5822: $ff
    ld a, [c]                                     ; $5823: $f2
    ld h, d                                       ; $5824: $62
    and b                                         ; $5825: $a0
    ret nz                                        ; $5826: $c0

    ld b, e                                       ; $5827: $43
    pop bc                                        ; $5828: $c1
    db $e3                                        ; $5829: $e3
    ld b, e                                       ; $582a: $43
    rst $38                                       ; $582b: $ff
    ld hl, $b0e0                                  ; $582c: $21 $e0 $b0
    ldh [$9c], a                                  ; $582f: $e0 $9c
    ld hl, sp+$47                                 ; $5831: $f8 $47
    cp a                                          ; $5833: $bf
    rst $38                                       ; $5834: $ff
    ld a, b                                       ; $5835: $78
    jr nc, jr_007_5809                            ; $5836: $30 $d1

    ld h, b                                       ; $5838: $60
    and c                                         ; $5839: $a1
    pop hl                                        ; $583a: $e1

jr_007_583b:
    ld [hl], c                                    ; $583b: $71
    and b                                         ; $583c: $a0
    rst $38                                       ; $583d: $ff
    sbc b                                         ; $583e: $98
    ldh a, [$ec]                                  ; $583f: $f0 $ec
    ld e, b                                       ; $5841: $58
    ld b, a                                       ; $5842: $47
    ld a, a                                       ; $5843: $7f
    and [hl]                                      ; $5844: $a6
    reti                                          ; $5845: $d9


    rst $38                                       ; $5846: $ff
    db $10                                        ; $5847: $10
    rra                                           ; $5848: $1f
    inc de                                        ; $5849: $13
    dec e                                         ; $584a: $1d
    sbc e                                         ; $584b: $9b
    dec d                                         ; $584c: $15
    sub d                                         ; $584d: $92
    sbc l                                         ; $584e: $9d
    rst $38                                       ; $584f: $ff
    inc de                                        ; $5850: $13
    inc e                                         ; $5851: $1c
    ld d, $19                                     ; $5852: $16 $19
    rla                                           ; $5854: $17
    jr jr_007_583b                                ; $5855: $18 $e4

    ei                                            ; $5857: $fb
    rst $38                                       ; $5858: $ff
    adc e                                         ; $5859: $8b
    adc l                                         ; $585a: $8d
    adc l                                         ; $585b: $8d
    dec bc                                        ; $585c: $0b
    adc a                                         ; $585d: $8f
    rlca                                          ; $585e: $07
    jp $ff81                                      ; $585f: $c3 $81 $ff


    ld h, b                                       ; $5862: $60
    ret nz                                        ; $5863: $c0

    or b                                          ; $5864: $b0
    ld h, b                                       ; $5865: $60
    ld e, $fc                                     ; $5866: $1e $fc

jr_007_5868:
    jp $ef3f                                      ; $5868: $c3 $3f $ef


    add hl, de                                    ; $586b: $19
    jr jr_007_5887                                ; $586c: $18 $19

    ld de, $e1ff                                  ; $586e: $11 $ff $e1
    jr @+$12                                      ; $5871: $18 $10

    inc e                                         ; $5873: $1c
    rst $38                                       ; $5874: $ff
    jr jr_007_588d                                ; $5875: $18 $16

    inc e                                         ; $5877: $1c
    db $e3                                        ; $5878: $e3
    rst $38                                       ; $5879: $ff
    sbc c                                         ; $587a: $99
    add hl, bc                                    ; $587b: $09
    adc c                                         ; $587c: $89
    cp $ff                                        ; $587d: $fe $ff
    ldh [$99], a                                  ; $587f: $e0 $99
    add hl, bc                                    ; $5881: $09
    ld de, $6919                                  ; $5882: $11 $19 $69
    add hl, sp                                    ; $5885: $39
    ret                                           ; $5886: $c9


jr_007_5887:
    rst $38                                       ; $5887: $ff
    ld sp, hl                                     ; $5888: $f9
    ld [hl], $cf                                  ; $5889: $36 $cf
    add $c7                                       ; $588b: $c6 $c7

jr_007_588d:
    push hl                                       ; $588d: $e5
    ld b, [hl]                                    ; $588e: $46
    daa                                           ; $588f: $27
    rst $38                                       ; $5890: $ff
    db $e4                                        ; $5891: $e4
    and $25                                       ; $5892: $e6 $25
    dec h                                         ; $5894: $25
    and $e7                                       ; $5895: $e6 $e7
    inc h                                         ; $5897: $24
    and h                                         ; $5898: $a4
    rst $38                                       ; $5899: $ff
    ld h, a                                       ; $589a: $67
    ld e, e                                       ; $589b: $5b
    cp h                                          ; $589c: $bc
    rst $38                                       ; $589d: $ff
    nop                                           ; $589e: $00

jr_007_589f:
    add $39                                       ; $589f: $c6 $39
    cp a                                          ; $58a1: $bf
    rst $38                                       ; $58a2: $ff
    ld b, b                                       ; $58a3: $40
    ld h, b                                       ; $58a4: $60
    sbc a                                         ; $58a5: $9f
    sbc a                                         ; $58a6: $9f
    ld h, b                                       ; $58a7: $60
    ld [hl], b                                    ; $58a8: $70
    adc a                                         ; $58a9: $8f
    rst $08                                       ; $58aa: $cf
    rlca                                          ; $58ab: $07
    jr nc, jr_007_5868                            ; $58ac: $30 $ba

    ld b, l                                       ; $58ae: $45
    nop                                           ; $58af: $00
    nop                                           ; $58b0: $00
    nop                                           ; $58b1: $00
    rst $38                                       ; $58b2: $ff
    sub e                                         ; $58b3: $93
    ld l, h                                       ; $58b4: $6c
    xor $11                                       ; $58b5: $ee $11
    xor c                                         ; $58b7: $a9
    ld d, [hl]                                    ; $58b8: $56
    ld d, [hl]                                    ; $58b9: $56
    xor c                                         ; $58ba: $a9
    rst $38                                       ; $58bb: $ff
    pop de                                        ; $58bc: $d1
    ld l, $26                                     ; $58bd: $2e $26
    reti                                          ; $58bf: $d9


    rst $18                                       ; $58c0: $df
    jr nz, jr_007_58c3                            ; $58c1: $20 $00

jr_007_58c3:
    rst $38                                       ; $58c3: $ff
    rst $38                                       ; $58c4: $ff
    adc a                                         ; $58c5: $8f
    ld a, a                                       ; $58c6: $7f
    ld [hl], b                                    ; $58c7: $70
    sub b                                         ; $58c8: $90
    ret c                                         ; $58c9: $d8

    jr nc, jr_007_58f4                            ; $58ca: $30 $28

    ret c                                         ; $58cc: $d8

    rst $38                                       ; $58cd: $ff
    ret z                                         ; $58ce: $c8

    jr c, jr_007_5949                             ; $58cf: $38 $78

    adc b                                         ; $58d1: $88
    adc b                                         ; $58d2: $88
    ld a, b                                       ; $58d3: $78
    ld [$fff8], sp                                ; $58d4: $08 $f8 $ff
    db $f4                                        ; $58d7: $f4
    ei                                            ; $58d8: $fb
    dec e                                         ; $58d9: $1d
    ld c, $06                                     ; $58da: $0e $06
    inc bc                                        ; $58dc: $03
    inc bc                                        ; $58dd: $03
    ld bc, $e1ff                                  ; $58de: $01 $ff $e1
    ret nz                                        ; $58e1: $c0

    ldh a, [$b0]                                  ; $58e2: $f0 $b0
    or c                                          ; $58e4: $b1
    ldh a, [$e1]                                  ; $58e5: $f0 $e1
    pop bc                                        ; $58e7: $c1
    rst $38                                       ; $58e8: $ff
    pop hl                                        ; $58e9: $e1
    ld e, $9e                                     ; $58ea: $1e $9e

Call_007_58ec:
    ld h, c                                       ; $58ec: $61
    ld h, c                                       ; $58ed: $61
    sbc [hl]                                      ; $58ee: $9e
    ld l, a                                       ; $58ef: $6f
    ldh a, [rIE]                                  ; $58f0: $f0 $ff
    or b                                          ; $58f2: $b0
    sbc a                                         ; $58f3: $9f

jr_007_58f4:
    sbc [hl]                                      ; $58f4: $9e
    sbc a                                         ; $58f5: $9f
    sub e                                         ; $58f6: $93
    sub c                                         ; $58f7: $91
    db $10                                        ; $58f8: $10
    sub b                                         ; $58f9: $90
    rst $38                                       ; $58fa: $ff
    sub c                                         ; $58fb: $91
    ld l, [hl]                                    ; $58fc: $6e
    ld a, l                                       ; $58fd: $7d
    add e                                         ; $58fe: $83
    jp Jump_000_363e                              ; $58ff: $c3 $3e $36


    call z, $ecff                                 ; $5902: $cc $ff $ec
    jr jr_007_589f                                ; $5905: $18 $98

    ld [hl], b                                    ; $5907: $70
    ret c                                         ; $5908: $d8

    ldh a, [$6c]                                  ; $5909: $f0 $6c
    jr c, @+$01                                   ; $590b: $38 $ff

    push hl                                       ; $590d: $e5
    ld a, [$1d92]                                 ; $590e: $fa $92 $1d
    jr jr_007_592a                                ; $5911: $18 $17

    rra                                           ; $5913: $1f
    db $10                                        ; $5914: $10
    rst $38                                       ; $5915: $ff
    sub b                                         ; $5916: $90
    sbc a                                         ; $5917: $9f
    sub b                                         ; $5918: $90
    sbc a                                         ; $5919: $9f
    sbc b                                         ; $591a: $98
    sub a                                         ; $591b: $97
    inc de                                        ; $591c: $13
    inc e                                         ; $591d: $1c
    rst $38                                       ; $591e: $ff
    adc [hl]                                      ; $591f: $8e
    ld a, a                                       ; $5920: $7f
    pop de                                        ; $5921: $d1
    ld sp, $e133                                  ; $5922: $31 $33 $e1
    ld h, [hl]                                    ; $5925: $66
    jp $cdff                                      ; $5926: $c3 $ff $cd


    add [hl]                                      ; $5929: $86

jr_007_592a:
    adc l                                         ; $592a: $8d
    adc [hl]                                      ; $592b: $8e
    rst $00                                       ; $592c: $c7
    add e                                         ; $592d: $83
    ld h, c                                       ; $592e: $61
    ret nz                                        ; $592f: $c0

    rst $38                                       ; $5930: $ff
    sbc d                                         ; $5931: $9a
    ld a, l                                       ; $5932: $7d
    scf                                           ; $5933: $37
    db $e4                                        ; $5934: $e4
    inc h                                         ; $5935: $24
    rst $20                                       ; $5936: $e7
    rst $20                                       ; $5937: $e7

Call_007_5938:
    ld b, h                                       ; $5938: $44
    rst $38                                       ; $5939: $ff
    add $47                                       ; $593a: $c6 $47
    ld b, e                                       ; $593c: $43
    pop bc                                        ; $593d: $c1
    ld b, c                                       ; $593e: $41
    ret nz                                        ; $593f: $c0

    add b                                         ; $5940: $80
    ret nz                                        ; $5941: $c0

    rst $38                                       ; $5942: $ff
    inc a                                         ; $5943: $3c
    jp Jump_000_38c7                              ; $5944: $c3 $c7 $38


    jr c, @-$37                                   ; $5947: $38 $c7

jr_007_5949:
    rst $20                                       ; $5949: $e7
    jr @+$01                                      ; $594a: $18 $ff

    dec a                                         ; $594c: $3d
    jp $be47                                      ; $594d: $c3 $47 $be


    xor h                                         ; $5950: $ac
    ret c                                         ; $5951: $d8

    ret c                                         ; $5952: $d8

    ld [hl], b                                    ; $5953: $70
    cp $a0                                        ; $5954: $fe $a0
    ld [c], a                                     ; $5956: $e2
    sbc a                                         ; $5957: $9f
    sbc $22                                       ; $5958: $de $22
    xor [hl]                                      ; $595a: $ae
    sbc $d0                                       ; $595b: $de $d0

jr_007_595d:
    ld [hl], b                                    ; $595d: $70
    rst $38                                       ; $595e: $ff
    ld [hl], b                                    ; $595f: $70
    jr nc, jr_007_5990                            ; $5960: $30 $2e

    ld a, $81                                     ; $5962: $3e $81
    ld a, [hl]                                    ; $5964: $7e
    ld a, [hl]                                    ; $5965: $7e
    add c                                         ; $5966: $81
    rst $38                                       ; $5967: $ff
    add c                                         ; $5968: $81
    cp $7e                                        ; $5969: $fe $7e
    ld b, c                                       ; $596b: $41
    ld h, e                                       ; $596c: $63
    ld a, h                                       ; $596d: $7c
    inc e                                         ; $596e: $1c
    inc de                                        ; $596f: $13

jr_007_5970:
    rst $38                                       ; $5970: $ff
    rla                                           ; $5971: $17
    jr jr_007_59d4                                ; $5972: $18 $60

    ld a, a                                       ; $5974: $7f
    ld d, l                                       ; $5975: $55
    xor d                                         ; $5976: $aa
    ld d, [hl]                                    ; $5977: $56
    xor c                                         ; $5978: $a9
    rst $38                                       ; $5979: $ff
    jp hl                                         ; $597a: $e9


    ld d, $6f                                     ; $597b: $16 $6f
    sub b                                         ; $597d: $90
    or b                                          ; $597e: $b0
    ld c, a                                       ; $597f: $4f
    rst $18                                       ; $5980: $df
    jr nz, jr_007_5992                            ; $5981: $20 $0f

    ld h, c                                       ; $5983: $61
    sbc [hl]                                      ; $5984: $9e
    nop                                           ; $5985: $00
    rst $38                                       ; $5986: $ff
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
    rst $38                                       ; $598a: $ff

jr_007_598b:
    rst $38                                       ; $598b: $ff
    nop                                           ; $598c: $00
    sbc c                                         ; $598d: $99
    ld h, [hl]                                    ; $598e: $66
    halt                                          ; $598f: $76

jr_007_5990:
    adc c                                         ; $5990: $89
    rst $08                                       ; $5991: $cf

jr_007_5992:
    jr nc, @+$01                                  ; $5992: $30 $ff

    jr c, jr_007_595d                             ; $5994: $38 $c7

    rst $20                                       ; $5996: $e7
    jr @+$1e                                      ; $5997: $18 $1c

    db $e3                                        ; $5999: $e3
    di                                            ; $599a: $f3
    inc c                                         ; $599b: $0c
    rst $38                                       ; $599c: $ff
    ld hl, sp+$08                                 ; $599d: $f8 $08
    ld hl, sp+$08                                 ; $599f: $f8 $08
    jr jr_007_598b                                ; $59a1: $18 $e8

    add sp, $18                                   ; $59a3: $e8 $18
    rst $38                                       ; $59a5: $ff
    jr c, jr_007_5970                             ; $59a6: $38 $c8

    ret                                           ; $59a8: $c9


    jr c, jr_007_5a24                             ; $59a9: $38 $79

    adc c                                         ; $59ab: $89
    or [hl]                                       ; $59ac: $b6
    ld c, a                                       ; $59ad: $4f
    rst $38                                       ; $59ae: $ff
    inc bc                                        ; $59af: $03
    ld bc, $070e                                  ; $59b0: $01 $0e $07
    dec b                                         ; $59b3: $05
    ld b, $c6                                     ; $59b4: $06 $c6
    add e                                         ; $59b6: $83
    rst $38                                       ; $59b7: $ff
    db $e3                                        ; $59b8: $e3
    pop bc                                        ; $59b9: $c1
    di                                            ; $59ba: $f3
    and c                                         ; $59bb: $a1
    ld e, $f3                                     ; $59bc: $1e $f3
    db $ed                                        ; $59be: $ed
    ld e, $f5                                     ; $59bf: $1e $f5
    sub b                                         ; $59c1: $90
    rst $38                                       ; $59c2: $ff
    ldh [$91], a                                  ; $59c3: $e0 $91
    rst $38                                       ; $59c5: $ff
    ld [c], a                                     ; $59c6: $e2
    pop de                                        ; $59c7: $d1
    sub c                                         ; $59c8: $91
    ld d, c                                       ; $59c9: $51
    pop de                                        ; $59ca: $d1
    rst $38                                       ; $59cb: $ff
    xor [hl]                                      ; $59cc: $ae
    ld a, a                                       ; $59cd: $7f
    ld [hl], $1c                                  ; $59ce: $36 $1c
    dec de                                        ; $59d0: $1b
    ld d, $91                                     ; $59d1: $16 $91
    rra                                           ; $59d3: $1f

jr_007_59d4:
    rst $38                                       ; $59d4: $ff
    sbc l                                         ; $59d5: $9d
    sub e                                         ; $59d6: $93
    sub e                                         ; $59d7: $93
    sbc [hl]                                      ; $59d8: $9e
    sbc [hl]                                      ; $59d9: $9e
    sub d                                         ; $59da: $92
    sub [hl]                                      ; $59db: $96
    sbc d                                         ; $59dc: $9a
    rst $38                                       ; $59dd: $ff
    ld l, c                                       ; $59de: $69
    rst $30                                       ; $59df: $f7
    rra                                           ; $59e0: $1f
    db $10                                        ; $59e1: $10
    inc de                                        ; $59e2: $13
    inc e                                         ; $59e3: $1c
    inc a                                         ; $59e4: $3c
    inc de                                        ; $59e5: $13
    rst $38                                       ; $59e6: $ff
    inc hl                                        ; $59e7: $23
    inc a                                         ; $59e8: $3c
    ld a, [hl]                                    ; $59e9: $7e
    ld hl, $7947                                  ; $59ea: $21 $47 $79
    cp c                                          ; $59ed: $b9
    rst $00                                       ; $59ee: $c7
    rst $38                                       ; $59ef: $ff
    ld e, $e1                                     ; $59f0: $1e $e1
    or b                                          ; $59f2: $b0
    ld h, b                                       ; $59f3: $60
    sbc b                                         ; $59f4: $98
    ld a, b                                       ; $59f5: $78
    ld a, c                                       ; $59f6: $79
    sub b                                         ; $59f7: $90
    rst $38                                       ; $59f8: $ff
    or e                                          ; $59f9: $b3
    ld h, c                                       ; $59fa: $61
    and $c3                                       ; $59fb: $e6 $c3
    dec c                                         ; $59fd: $0d
    ld b, $08                                     ; $59fe: $06 $08
    rrca                                          ; $5a00: $0f
    rst $38                                       ; $5a01: $ff
    di                                            ; $5a02: $f3
    db $fc                                        ; $5a03: $fc
    add $44                                       ; $5a04: $c6 $44
    add $46                                       ; $5a06: $c6 $46
    add [hl]                                      ; $5a08: $86
    add $fd                                       ; $5a09: $c6 $fd
    ld b, [hl]                                    ; $5a0b: $46
    cp $e0                                        ; $5a0c: $fe $e0
    add $46                                       ; $5a0e: $c6 $46
    ld a, [hl-]                                   ; $5a10: $3a
    cp $b9                                        ; $5a11: $fe $b9
    ld b, a                                       ; $5a13: $47
    rst $38                                       ; $5a14: $ff
    ld d, e                                       ; $5a15: $53
    ld [hl], b                                    ; $5a16: $70
    ld [hl], e                                    ; $5a17: $73
    ld h, e                                       ; $5a18: $63
    ld h, e                                       ; $5a19: $63
    ld h, e                                       ; $5a1a: $63
    ld b, e                                       ; $5a1b: $43
    ld h, d                                       ; $5a1c: $62
    rst $38                                       ; $5a1d: $ff
    ld [hl], b                                    ; $5a1e: $70
    jr nz, jr_007_5a59                            ; $5a1f: $20 $38

    jr nc, @+$2f                                  ; $5a21: $30 $2d

    add hl, sp                                    ; $5a23: $39

jr_007_5a24:
    add $ff                                       ; $5a24: $c6 $ff
    rst $38                                       ; $5a26: $ff
    ld a, $12                                     ; $5a27: $3e $12
    ld [de], a                                    ; $5a29: $12
    ld e, $1e                                     ; $5a2a: $1e $1e
    ld [de], a                                    ; $5a2c: $12
    ld [hl-], a                                   ; $5a2d: $32
    ld e, $ff                                     ; $5a2e: $1e $ff
    cpl                                           ; $5a30: $2f
    ld [hl-], a                                   ; $5a31: $32

jr_007_5a32:
    pop de                                        ; $5a32: $d1
    ld l, a                                       ; $5a33: $6f

jr_007_5a34:
    cp a                                          ; $5a34: $bf
    pop bc                                        ; $5a35: $c1
    ret nz                                        ; $5a36: $c0

    ccf                                           ; $5a37: $3f
    rst $38                                       ; $5a38: $ff
    ld a, a                                       ; $5a39: $7f
    ld b, b                                       ; $5a3a: $40
    ld e, a                                       ; $5a3b: $5f
    ld h, b                                       ; $5a3c: $60
    ld h, c                                       ; $5a3d: $61
    ld a, $2e                                     ; $5a3e: $3e $2e
    ld sp, $33ff                                  ; $5a40: $31 $ff $33
    inc e                                         ; $5a43: $1c
    inc e                                         ; $5a44: $1c
    inc de                                        ; $5a45: $13
    sub a                                         ; $5a46: $97
    jr jr_007_5a32                                ; $5a47: $18 $e9

    or $ff                                        ; $5a49: $f6 $ff
    rst $38                                       ; $5a4b: $ff
    nop                                           ; $5a4c: $00
    inc sp                                        ; $5a4d: $33
    call z, $23dc                                 ; $5a4e: $cc $dc $23
    ld h, e                                       ; $5a51: $63
    sbc h                                         ; $5a52: $9c
    rst $38                                       ; $5a53: $ff
    cp [hl]                                       ; $5a54: $be
    ld b, c                                       ; $5a55: $41
    rst $00                                       ; $5a56: $c7
    jr c, jr_007_5ad1                             ; $5a57: $38 $78

jr_007_5a59:
    add a                                         ; $5a59: $87
    sbc a                                         ; $5a5a: $9f
    ld h, b                                       ; $5a5b: $60
    nop                                           ; $5a5c: $00
    nop                                           ; $5a5d: $00
    nop                                           ; $5a5e: $00
    rst $38                                       ; $5a5f: $ff
    inc c                                         ; $5a60: $0c
    di                                            ; $5a61: $f3
    ei                                            ; $5a62: $fb
    inc b                                         ; $5a63: $04
    call Call_000_3633                            ; $5a64: $cd $33 $36
    jp z, $f2ff                                   ; $5a67: $ca $ff $f2

    ld c, $1f                                     ; $5a6a: $0e $1f
    ld [c], a                                     ; $5a6c: $e2
    pop hl                                        ; $5a6d: $e1
    rra                                           ; $5a6e: $1f
    nop                                           ; $5a6f: $00
    rst $38                                       ; $5a70: $ff
    rst $38                                       ; $5a71: $ff
    rst $00                                       ; $5a72: $c7
    jr c, jr_007_5a34                             ; $5a73: $38 $bf

    ld b, b                                       ; $5a75: $40
    or b                                          ; $5a76: $b0
    rst $08                                       ; $5a77: $cf
    rst $38                                       ; $5a78: $ff
    ld a, a                                       ; $5a79: $7f
    db $fd                                        ; $5a7a: $fd
    nop                                           ; $5a7b: $00
    rst $38                                       ; $5a7c: $ff
    ldh [$f3], a                                  ; $5a7d: $e0 $f3
    di                                            ; $5a7f: $f3
    ld [de], a                                    ; $5a80: $12
    di                                            ; $5a81: $f3
    ld a, $c1                                     ; $5a82: $3e $c1

jr_007_5a84:
    rst $38                                       ; $5a84: $ff
    pop bc                                        ; $5a85: $c1
    ld a, $7f                                     ; $5a86: $3e $7f
    add b                                         ; $5a88: $80
    ret nz                                        ; $5a89: $c0

    rst $38                                       ; $5a8a: $ff
    ccf                                           ; $5a8b: $3f
    jr nz, @+$01                                  ; $5a8c: $20 $ff

    jr nz, jr_007_5acf                            ; $5a8e: $20 $3f

    db $db                                        ; $5a90: $db
    rst $20                                       ; $5a91: $e7
    rrca                                          ; $5a92: $0f
    db $fc                                        ; $5a93: $fc
    ccf                                           ; $5a94: $3f
    ret nz                                        ; $5a95: $c0

    rst $38                                       ; $5a96: $ff
    ldh [$1f], a                                  ; $5a97: $e0 $1f
    rra                                           ; $5a99: $1f
    ldh [$f0], a                                  ; $5a9a: $e0 $f0
    rrca                                          ; $5a9c: $0f
    adc a                                         ; $5a9d: $8f
    ld [hl], b                                    ; $5a9e: $70
    rst $38                                       ; $5a9f: $ff
    ld [hl], b                                    ; $5aa0: $70
    adc a                                         ; $5aa1: $8f
    ld e, e                                       ; $5aa2: $5b
    cp h                                          ; $5aa3: $bc
    and h                                         ; $5aa4: $a4
    rst $20                                       ; $5aa5: $e7
    adc $31                                       ; $5aa6: $ce $31
    rst $38                                       ; $5aa8: $ff
    add hl, sp                                    ; $5aa9: $39
    add $c7                                       ; $5aaa: $c6 $c7
    jr c, @+$7a                                   ; $5aac: $38 $78

    add a                                         ; $5aae: $87
    adc a                                         ; $5aaf: $8f
    ld [hl], b                                    ; $5ab0: $70
    rst $38                                       ; $5ab1: $ff
    ldh a, [rIF]                                  ; $5ab2: $f0 $0f
    dec c                                         ; $5ab4: $0d
    rst $38                                       ; $5ab5: $ff
    ld h, a                                       ; $5ab6: $67
    ld a, [c]                                     ; $5ab7: $f2
    rst $20                                       ; $5ab8: $e7
    jr @+$01                                      ; $5ab9: $18 $ff

    jr c, jr_007_5a84                             ; $5abb: $38 $c7

    adc a                                         ; $5abd: $8f
    ld [hl], b                                    ; $5abe: $70

jr_007_5abf:
    ld a, b                                       ; $5abf: $78
    add a                                         ; $5ac0: $87
    add a                                         ; $5ac1: $87
    ld a, b                                       ; $5ac2: $78
    cp a                                          ; $5ac3: $bf
    ld hl, sp+$07                                 ; $5ac4: $f8 $07
    or a                                          ; $5ac6: $b7
    ld hl, sp-$22                                 ; $5ac7: $f8 $de
    ld c, a                                       ; $5ac9: $4f
    and b                                         ; $5aca: $a0
    pop hl                                        ; $5acb: $e1
    call z, Call_000_33ff                         ; $5acc: $cc $ff $33

jr_007_5acf:
    scf                                           ; $5acf: $37
    ret z                                         ; $5ad0: $c8

jr_007_5ad1:
    ldh a, [rIF]                                  ; $5ad1: $f0 $0f
    ld d, $ef                                     ; $5ad3: $16 $ef
    rst $18                                       ; $5ad5: $df
    rst $30                                       ; $5ad6: $f7
    add hl, sp                                    ; $5ad7: $39
    ld sp, $a0e0                                  ; $5ad8: $31 $e0 $a0
    pop hl                                        ; $5adb: $e1
    ld [hl], b                                    ; $5adc: $70
    adc a                                         ; $5add: $8f
    rst $08                                       ; $5ade: $cf
    jr nc, jr_007_5abf                            ; $5adf: $30 $de

    adc $e1                                       ; $5ae1: $ce $e1
    ld [hl], e                                    ; $5ae3: $73
    adc h                                         ; $5ae4: $8c
    cp a                                          ; $5ae5: $bf
    rst $38                                       ; $5ae6: $ff
    and b                                         ; $5ae7: $a0
    db $e3                                        ; $5ae8: $e3
    add b                                         ; $5ae9: $80
    ld a, a                                       ; $5aea: $7f
    cp [hl]                                       ; $5aeb: $be
    sbc h                                         ; $5aec: $9c
    ldh [$3f], a                                  ; $5aed: $e0 $3f
    dec a                                         ; $5aef: $3d
    jp $fe87                                      ; $5af0: $c3 $87 $fe


    and b                                         ; $5af3: $a0
    jp hl                                         ; $5af4: $e9


    sbc e                                         ; $5af5: $9b
    rst $30                                       ; $5af6: $f7
    db $fc                                        ; $5af7: $fc
    rst $08                                       ; $5af8: $cf
    ld h, a                                       ; $5af9: $67
    and b                                         ; $5afa: $a0
    push hl                                       ; $5afb: $e5
    adc l                                         ; $5afc: $8d
    ld a, [hl]                                    ; $5afd: $7e
    ld a, [c]                                     ; $5afe: $f2
    inc de                                        ; $5aff: $13
    rst $28                                       ; $5b00: $ef
    ld [hl-], a                                   ; $5b01: $32
    di                                            ; $5b02: $f3
    ld b, c                                       ; $5b03: $41
    pop bc                                        ; $5b04: $c1
    and b                                         ; $5b05: $a0
    jp hl                                         ; $5b06: $e9


    rlca                                          ; $5b07: $07
    ld hl, sp+$00                                 ; $5b08: $f8 $00
    ld bc, $00ff                                  ; $5b0a: $01 $ff $00
    nop                                           ; $5b0d: $00
    nop                                           ; $5b0e: $00
    rst $38                                       ; $5b0f: $ff
    rst $38                                       ; $5b10: $ff
    nop                                           ; $5b11: $00
    inc a                                         ; $5b12: $3c
    jp Jump_000_38c7                              ; $5b13: $c3 $c7 $38


    ld sp, hl                                     ; $5b16: $f9
    ld b, $ff                                     ; $5b17: $06 $ff
    ld c, $f1                                     ; $5b19: $0e $f1
    or $09                                        ; $5b1b: $f6 $09
    add hl, de                                    ; $5b1d: $19
    and $e7                                       ; $5b1e: $e6 $e7
    jr @+$01                                      ; $5b20: $18 $ff

    di                                            ; $5b22: $f3
    ld [de], a                                    ; $5b23: $12
    jp nc, Jump_007_5333                          ; $5b24: $d2 $33 $53

    or d                                          ; $5b27: $b2
    and d                                         ; $5b28: $a2
    ld h, e                                       ; $5b29: $63
    rst $38                                       ; $5b2a: $ff
    di                                            ; $5b2b: $f3
    ld [hl+], a                                   ; $5b2c: $22
    jp nc, Jump_000_3333                          ; $5b2d: $d2 $33 $33

    jp nc, Jump_000_3ecd                          ; $5b30: $d2 $cd $3e

    rst $38                                       ; $5b33: $ff
    ld hl, sp+$10                                 ; $5b34: $f8 $10
    ld d, a                                       ; $5b36: $57
    or d                                          ; $5b37: $b2
    rst $30                                       ; $5b38: $f7
    dec h                                         ; $5b39: $25
    daa                                           ; $5b3a: $27
    and $ff                                       ; $5b3b: $e6 $ff
    ldh a, [rNR41]                                ; $5b3d: $f0 $20
    add hl, de                                    ; $5b3f: $19
    ldh a, [$ef]                                  ; $5b40: $f0 $ef
    add hl, de                                    ; $5b42: $19
    add [hl]                                      ; $5b43: $86
    ld a, a                                       ; $5b44: $7f
    rst $38                                       ; $5b45: $ff
    ld h, a                                       ; $5b46: $67
    ld h, h                                       ; $5b47: $64
    ld h, [hl]                                    ; $5b48: $66
    dec h                                         ; $5b49: $25
    inc [hl]                                      ; $5b4a: $34
    daa                                           ; $5b4b: $27
    ld [hl], a                                    ; $5b4c: $77
    inc sp                                        ; $5b4d: $33
    rst $38                                       ; $5b4e: $ff
    ld e, b                                       ; $5b4f: $58
    ld [hl], b                                    ; $5b50: $70
    xor h                                         ; $5b51: $ac
    ret c                                         ; $5b52: $d8

    rla                                           ; $5b53: $17
    db $ec                                        ; $5b54: $ec
    di                                            ; $5b55: $f3
    rrca                                          ; $5b56: $0f
    rst $38                                       ; $5b57: $ff
    sub b                                         ; $5b58: $90
    sub b                                         ; $5b59: $90
    sub e                                         ; $5b5a: $93
    sub c                                         ; $5b5b: $91
    or d                                          ; $5b5c: $b2
    sub e                                         ; $5b5d: $93
    and d                                         ; $5b5e: $a2
    inc sp                                        ; $5b5f: $33
    rst $38                                       ; $5b60: $ff
    ld [hl], d                                    ; $5b61: $72
    inc sp                                        ; $5b62: $33
    db $d3                                        ; $5b63: $d3
    ld [hl], d                                    ; $5b64: $72
    sub e                                         ; $5b65: $93
    ld a, [c]                                     ; $5b66: $f2
    dec c                                         ; $5b67: $0d
    cp $ff                                        ; $5b68: $fe $ff
    ld b, e                                       ; $5b6a: $43
    ld b, c                                       ; $5b6b: $41
    add c                                         ; $5b6c: $81
    ret nz                                        ; $5b6d: $c0

    ld c, [hl]                                    ; $5b6e: $4e
    call z, $ca4e                                 ; $5b6f: $cc $4e $ca
    rst $38                                       ; $5b72: $ff
    ld c, d                                       ; $5b73: $4a
    adc $ce                                       ; $5b74: $ce $ce
    ld c, d                                       ; $5b76: $4a
    ld c, d                                       ; $5b77: $4a
    adc $b1                                       ; $5b78: $ce $b1

jr_007_5b7a:
    ld a, a                                       ; $5b7a: $7f
    rst $38                                       ; $5b7b: $ff
    ld h, b                                       ; $5b7c: $60
    ret nz                                        ; $5b7d: $c0

    call z, $8c8c                                 ; $5b7e: $cc $8c $8c
    add h                                         ; $5b81: $84
    ret nz                                        ; $5b82: $c0

    add b                                         ; $5b83: $80
    rst $38                                       ; $5b84: $ff
    ldh [$c0], a                                  ; $5b85: $e0 $c0
    cp b                                          ; $5b87: $b8
    ldh a, [$8f]                                  ; $5b88: $f0 $8f
    cp $65                                        ; $5b8a: $fe $65
    sbc e                                         ; $5b8c: $9b
    rst $30                                       ; $5b8d: $f7
    jp $c0c1                                      ; $5b8e: $c3 $c1 $c0


    rst $38                                       ; $5b91: $ff
    ldh [$89], a                                  ; $5b92: $e0 $89
    ret                                           ; $5b94: $c9


    ret                                           ; $5b95: $c9


    ld c, c                                       ; $5b96: $49
    cp $ff                                        ; $5b97: $fe $ff
    pop hl                                        ; $5b99: $e1
    or [hl]                                       ; $5b9a: $b6
    rst $38                                       ; $5b9b: $ff
    call z, Call_007_7b78                         ; $5b9c: $cc $78 $7b
    inc sp                                        ; $5b9f: $33
    ld [hl-], a                                   ; $5ba0: $32
    rst $38                                       ; $5ba1: $ff
    jr nz, jr_007_5bd5                            ; $5ba2: $20 $31

    ld hl, $3031                                  ; $5ba4: $21 $31 $30
    jr c, jr_007_5bd9                             ; $5ba7: $38 $30

    ld l, $ff                                     ; $5ba9: $2e $ff
    inc a                                         ; $5bab: $3c
    set 6, a                                      ; $5bac: $cb $f7
    ld h, c                                       ; $5bae: $61
    jr nz, jr_007_5c11                            ; $5baf: $20 $60

    jr nz, jr_007_5b7a                            ; $5bb1: $20 $c7

    rst $38                                       ; $5bb3: $ff
    ld h, [hl]                                    ; $5bb4: $66
    and l                                         ; $5bb5: $a5
    rst $20                                       ; $5bb6: $e7
    and a                                         ; $5bb7: $a7
    push hl                                       ; $5bb8: $e5
    ld h, a                                       ; $5bb9: $67
    ld h, l                                       ; $5bba: $65
    ld h, l                                       ; $5bbb: $65
    rst $38                                       ; $5bbc: $ff
    ld h, a                                       ; $5bbd: $67
    sbc d                                         ; $5bbe: $9a
    db $fd                                        ; $5bbf: $fd
    or d                                          ; $5bc0: $b2
    di                                            ; $5bc1: $f3
    db $d3                                        ; $5bc2: $d3
    ld [hl], d                                    ; $5bc3: $72
    ld [hl], d                                    ; $5bc4: $72
    rst $38                                       ; $5bc5: $ff
    ld d, e                                       ; $5bc6: $53
    ld d, e                                       ; $5bc7: $53
    ld [hl], c                                    ; $5bc8: $71
    ld a, c                                       ; $5bc9: $79
    ld d, c                                       ; $5bca: $51
    ld c, c                                       ; $5bcb: $49
    ld a, b                                       ; $5bcc: $78
    ld a, h                                       ; $5bcd: $7c
    rst $38                                       ; $5bce: $ff
    ld c, b                                       ; $5bcf: $48
    add a                                         ; $5bd0: $87
    rst $38                                       ; $5bd1: $ff
    rst $38                                       ; $5bd2: $ff
    nop                                           ; $5bd3: $00
    sbc [hl]                                      ; $5bd4: $9e

jr_007_5bd5:
    ld h, c                                       ; $5bd5: $61
    ld [hl], c                                    ; $5bd6: $71
    rst $38                                       ; $5bd7: $ff
    adc [hl]                                      ; $5bd8: $8e

jr_007_5bd9:
    adc a                                         ; $5bd9: $8f
    ld [hl], b                                    ; $5bda: $70
    ld a, b                                       ; $5bdb: $78
    add a                                         ; $5bdc: $87
    rst $00                                       ; $5bdd: $c7
    cp b                                          ; $5bde: $b8
    cp h                                          ; $5bdf: $bc
    rlca                                          ; $5be0: $07
    jp $9c63                                      ; $5be1: $c3 $63 $9c


    nop                                           ; $5be4: $00
    nop                                           ; $5be5: $00
    nop                                           ; $5be6: $00
    rst $38                                       ; $5be7: $ff
    ld e, $e1                                     ; $5be8: $1e $e1
    di                                            ; $5bea: $f3
    inc c                                         ; $5beb: $0c
    rrca                                          ; $5bec: $0f
    ldh a, [$f8]                                  ; $5bed: $f0 $f8
    rlca                                          ; $5bef: $07
    rst $38                                       ; $5bf0: $ff
    add a                                         ; $5bf1: $87
    ld a, b                                       ; $5bf2: $78
    ld a, h                                       ; $5bf3: $7c
    add e                                         ; $5bf4: $83
    jp Jump_000_003c                              ; $5bf5: $c3 $3c $00


    rst $38                                       ; $5bf8: $ff
    rst $38                                       ; $5bf9: $ff
    ld [hl-], a                                   ; $5bfa: $32
    call Call_000_02fd                            ; $5bfb: $cd $fd $02
    ld a, l                                       ; $5bfe: $7d
    cp $87                                        ; $5bff: $fe $87
    add e                                         ; $5c01: $83
    rst $38                                       ; $5c02: $ff
    add c                                         ; $5c03: $81
    add b                                         ; $5c04: $80
    ret nz                                        ; $5c05: $c0

    add b                                         ; $5c06: $80
    ld c, [hl]                                    ; $5c07: $4e
    call z, $ce4b                                 ; $5c08: $cc $4b $ce
    rst $38                                       ; $5c0b: $ff
    ld a, c                                       ; $5c0c: $79
    add [hl]                                      ; $5c0d: $86
    add $39                                       ; $5c0e: $c6 $39
    cp a                                          ; $5c10: $bf

jr_007_5c11:
    ld b, b                                       ; $5c11: $40
    ld h, b                                       ; $5c12: $60
    sbc a                                         ; $5c13: $9f
    rst $38                                       ; $5c14: $ff
    rst $18                                       ; $5c15: $df
    ldh [$60], a                                  ; $5c16: $e0 $60
    ccf                                           ; $5c18: $3f
    scf                                           ; $5c19: $37
    jr jr_007_5c35                                ; $5c1a: $18 $19

    rrca                                          ; $5c1c: $0f
    rst $38                                       ; $5c1d: $ff
    call z, Call_000_3a33                         ; $5c1e: $cc $33 $3a
    push bc                                       ; $5c21: $c5
    call nz, $793b                                ; $5c22: $c4 $3b $79
    add [hl]                                      ; $5c25: $86
    rst $38                                       ; $5c26: $ff
    add e                                         ; $5c27: $83
    ld a, h                                       ; $5c28: $7c
    push hl                                       ; $5c29: $e5
    dec de                                        ; $5c2a: $1b

jr_007_5c2b:
    ld l, e                                       ; $5c2b: $6b

Call_007_5c2c:
    or $f6                                        ; $5c2c: $f6 $f6
    sbc h                                         ; $5c2e: $9c

jr_007_5c2f:
    rst $38                                       ; $5c2f: $ff
    dec sp                                        ; $5c30: $3b
    call nz, $837c                                ; $5c31: $c4 $7c $83
    rst $00                                       ; $5c34: $c7

jr_007_5c35:
    jr c, jr_007_5c2f                             ; $5c35: $38 $f8

    rlca                                          ; $5c37: $07
    rst $38                                       ; $5c38: $ff
    adc h                                         ; $5c39: $8c
    ld a, a                                       ; $5c3a: $7f
    or d                                          ; $5c3b: $b2
    db $d3                                        ; $5c3c: $d3
    ld a, [c]                                     ; $5c3d: $f2
    ld [hl], e                                    ; $5c3e: $73
    ld b, c                                       ; $5c3f: $41
    ld b, c                                       ; $5c40: $41
    rst $38                                       ; $5c41: $ff
    jr jr_007_5c2b                                ; $5c42: $18 $e7

    or d                                          ; $5c44: $b2
    ld c, l                                       ; $5c45: $4d
    cpl                                           ; $5c46: $2f
    ret nc                                        ; $5c47: $d0

    ld l, b                                       ; $5c48: $68
    sub a                                         ; $5c49: $97
    rst $38                                       ; $5c4a: $ff
    reti                                          ; $5c4b: $d9


    daa                                           ; $5c4c: $27
    sub e                                         ; $5c4d: $93
    ld l, [hl]                                    ; $5c4e: $6e
    and $1c                                       ; $5c4f: $e6 $1c
    ld c, $f4                                     ; $5c51: $0e $f4
    rst $38                                       ; $5c53: $ff
    ld a, [de]                                    ; $5c54: $1a
    push hl                                       ; $5c55: $e5
    ld h, c                                       ; $5c56: $61
    sbc [hl]                                      ; $5c57: $9e
    ld h, [hl]                                    ; $5c58: $66
    ld sp, hl                                     ; $5c59: $f9
    call nc, $ff9b                                ; $5c5a: $d4 $9b $ff
    sub e                                         ; $5c5d: $93
    inc e                                         ; $5c5e: $1c
    ld a, [hl-]                                   ; $5c5f: $3a
    dec d                                         ; $5c60: $15
    ld h, e                                       ; $5c61: $63
    inc a                                         ; $5c62: $3c
    dec [hl]                                      ; $5c63: $35
    dec de                                        ; $5c64: $1b
    rst $38                                       ; $5c65: $ff
    inc [hl]                                      ; $5c66: $34
    set 7, h                                      ; $5c67: $cb $fc
    inc bc                                        ; $5c69: $03
    inc bc                                        ; $5c6a: $03
    db $fc                                        ; $5c6b: $fc
    cp $01                                        ; $5c6c: $fe $01
    rst $38                                       ; $5c6e: $ff
    ld bc, $7ffe                                  ; $5c6f: $01 $fe $7f
    add b                                         ; $5c72: $80
    ld [hl], b                                    ; $5c73: $70
    rst $38                                       ; $5c74: $ff
    res 1, a                                      ; $5c75: $cb $8f
    rst $38                                       ; $5c77: $ff
    ld a, c                                       ; $5c78: $79
    add [hl]                                      ; $5c79: $86
    ld b, [hl]                                    ; $5c7a: $46
    cp c                                          ; $5c7b: $b9
    ccf                                           ; $5c7c: $3f
    ret nz                                        ; $5c7d: $c0

    nop                                           ; $5c7e: $00
    rst $38                                       ; $5c7f: $ff
    rst $38                                       ; $5c80: $ff
    adc a                                         ; $5c81: $8f
    ld [hl], b                                    ; $5c82: $70
    ld h, b                                       ; $5c83: $60
    sbc a                                         ; $5c84: $9f
    add $ff                                       ; $5c85: $c6 $ff
    db $eb                                        ; $5c87: $eb
    add hl, sp                                    ; $5c88: $39
    rst $38                                       ; $5c89: $ff
    call z, Call_000_3b33                         ; $5c8a: $cc $33 $3b
    call nz, Call_000_38c7                        ; $5c8d: $c4 $c7 $38
    ld a, b                                       ; $5c90: $78
    add a                                         ; $5c91: $87
    rst $38                                       ; $5c92: $ff
    adc a                                         ; $5c93: $8f
    ld [hl], b                                    ; $5c94: $70
    ld hl, sp+$07                                 ; $5c95: $f8 $07
    push bc                                       ; $5c97: $c5
    ei                                            ; $5c98: $fb
    rst $20                                       ; $5c99: $e7
    ld a, $ef                                     ; $5c9a: $3e $ef
    di                                            ; $5c9c: $f3

jr_007_5c9d:
    inc c                                         ; $5c9d: $0c
    inc a                                         ; $5c9e: $3c
    jp $e3f0                                      ; $5c9f: $c3 $f0 $e3


    or $0f                                        ; $5ca2: $f6 $0f
    adc a                                         ; $5ca4: $8f
    rst $38                                       ; $5ca5: $ff
    ld sp, hl                                     ; $5ca6: $f9
    reti                                          ; $5ca7: $d9


jr_007_5ca8:
    ld [hl], c                                    ; $5ca8: $71
    ld e, $e1                                     ; $5ca9: $1e $e1
    pop hl                                        ; $5cab: $e1
    ld e, $9f                                     ; $5cac: $1e $9f
    db $fd                                        ; $5cae: $fd
    ld h, b                                       ; $5caf: $60
    ld [hl], b                                    ; $5cb0: $70
    ldh [rNR41], a                                ; $5cb1: $e0 $20
    or b                                          ; $5cb3: $b0
    ld c, a                                       ; $5cb4: $4f
    ld a, a                                       ; $5cb5: $7f
    add b                                         ; $5cb6: $80
    nop                                           ; $5cb7: $00
    ld bc, $00ff                                  ; $5cb8: $01 $ff $00
    nop                                           ; $5cbb: $00
    nop                                           ; $5cbc: $00
    rst $38                                       ; $5cbd: $ff
    rst $38                                       ; $5cbe: $ff
    nop                                           ; $5cbf: $00
    sbc [hl]                                      ; $5cc0: $9e
    ld h, c                                       ; $5cc1: $61
    ld h, c                                       ; $5cc2: $61
    sbc [hl]                                      ; $5cc3: $9e
    rst $18                                       ; $5cc4: $df
    jr nz, @+$01                                  ; $5cc5: $20 $ff

    jr nz, jr_007_5ca8                            ; $5cc7: $20 $df

    rst $18                                       ; $5cc9: $df
    jr nz, jr_007_5cfc                            ; $5cca: $20 $30

    rst $08                                       ; $5ccc: $cf
    rst $08                                       ; $5ccd: $cf
    jr nc, @+$01                                  ; $5cce: $30 $ff

    adc $4c                                       ; $5cd0: $ce $4c
    ld b, b                                       ; $5cd2: $40
    ret nz                                        ; $5cd3: $c0

    ret nz                                        ; $5cd4: $c0

    ld b, b                                       ; $5cd5: $40
    ld c, a                                       ; $5cd6: $4f
    call z, $cfff                                 ; $5cd7: $cc $ff $cf
    ld c, [hl]                                    ; $5cda: $4e
    ret nz                                        ; $5cdb: $c0

    ld b, b                                       ; $5cdc: $40
    ld b, b                                       ; $5cdd: $40
    ret nz                                        ; $5cde: $c0

    cp a                                          ; $5cdf: $bf
    ld a, a                                       ; $5ce0: $7f
    rst $38                                       ; $5ce1: $ff
    dec de                                        ; $5ce2: $1b
    ld c, $36                                     ; $5ce3: $0e $36
    inc e                                         ; $5ce5: $1c
    ld l, h                                       ; $5ce6: $6c
    jr c, @+$3e                                   ; $5ce7: $38 $3c

    jr @+$01                                      ; $5ce9: $18 $ff

    inc d                                         ; $5ceb: $14
    inc e                                         ; $5cec: $1c
    ld a, $14                                     ; $5ced: $3e $14
    db $e3                                        ; $5cef: $e3
    ld a, a                                       ; $5cf0: $7f
    sbc [hl]                                      ; $5cf1: $9e
    pop hl                                        ; $5cf2: $e1
    rst $38                                       ; $5cf3: $ff
    inc e                                         ; $5cf4: $1c
    ld [$c8d9], sp                                ; $5cf5: $08 $d9 $c8
    or b                                          ; $5cf8: $b0
    jr jr_007_5d61                                ; $5cf9: $18 $66

    ld a, h                                       ; $5cfb: $7c

jr_007_5cfc:
    rst $38                                       ; $5cfc: $ff
    ld l, h                                       ; $5cfd: $6c
    jr c, jr_007_5d19                             ; $5cfe: $38 $19

    jr jr_007_5c9d                                ; $5d00: $18 $9b

    add hl, de                                    ; $5d02: $19
    and $ff                                       ; $5d03: $e6 $ff
    rst $38                                       ; $5d05: $ff
    ld a, [c]                                     ; $5d06: $f2
    ld [hl], e                                    ; $5d07: $73
    or e                                          ; $5d08: $b3
    jp nc, Jump_007_7352                          ; $5d09: $d2 $52 $73

    ld [hl], e                                    ; $5d0c: $73
    ld d, c                                       ; $5d0d: $51
    rst $38                                       ; $5d0e: $ff
    reti                                          ; $5d0f: $d9


    ld [hl], c                                    ; $5d10: $71
    adc c                                         ; $5d11: $89
    ld hl, sp+$1c                                 ; $5d12: $f8 $1c
    add sp, $37                                   ; $5d14: $e8 $37
    rst $08                                       ; $5d16: $cf
    rst $38                                       ; $5d17: $ff
    ld h, e                                       ; $5d18: $63

jr_007_5d19:
    sbc [hl]                                      ; $5d19: $9e
    add c                                         ; $5d1a: $81
    ld a, a                                       ; $5d1b: $7f
    ld e, $e1                                     ; $5d1c: $1e $e1
    push af                                       ; $5d1e: $f5
    dec bc                                        ; $5d1f: $0b
    rst $38                                       ; $5d20: $ff
    scf                                           ; $5d21: $37
    adc $88                                       ; $5d22: $ce $88
    ld hl, sp-$78                                 ; $5d24: $f8 $88
    ld hl, sp+$07                                 ; $5d26: $f8 $07
    rst $38                                       ; $5d28: $ff
    rst $38                                       ; $5d29: $ff
    dec de                                        ; $5d2a: $1b
    ld c, $8e                                     ; $5d2b: $0e $8e
    ld b, $ce                                     ; $5d2d: $06 $ce
    add h                                         ; $5d2f: $84
    sbc d                                         ; $5d30: $9a
    inc c                                         ; $5d31: $0c
    rst $38                                       ; $5d32: $ff
    inc sp                                        ; $5d33: $33
    ld e, $65                                     ; $5d34: $1e $65
    dec sp                                        ; $5d36: $3b
    ret nz                                        ; $5d37: $c0

    ld a, a                                       ; $5d38: $7f
    or b                                          ; $5d39: $b0
    rst $08                                       ; $5d3a: $cf
    rst $38                                       ; $5d3b: $ff
    ld c, $0c                                     ; $5d3c: $0e $0c

jr_007_5d3e:
    ld [hl], l                                    ; $5d3e: $75
    inc a                                         ; $5d3f: $3c
    call Call_007_7179                            ; $5d40: $cd $79 $71
    add hl, sp                                    ; $5d43: $39
    rst $38                                       ; $5d44: $ff
    inc c                                         ; $5d45: $0c
    ld [$0c8e], sp                                ; $5d46: $08 $8e $0c
    ei                                            ; $5d49: $fb
    adc $31                                       ; $5d4a: $ce $31
    rst $38                                       ; $5d4c: $ff
    rst $38                                       ; $5d4d: $ff
    jr @+$1a                                      ; $5d4e: $18 $18

    reti                                          ; $5d50: $d9


    adc b                                         ; $5d51: $88
    ret                                           ; $5d52: $c9


    ld c, c                                       ; $5d53: $49
    reti                                          ; $5d54: $d9


    adc c                                         ; $5d55: $89
    rst $38                                       ; $5d56: $ff
    ld de, $6919                                  ; $5d57: $11 $19 $69
    add hl, sp                                    ; $5d5a: $39
    ret                                           ; $5d5b: $c9


    ld a, c                                       ; $5d5c: $79
    sub [hl]                                      ; $5d5d: $96
    rst $28                                       ; $5d5e: $ef
    rst $38                                       ; $5d5f: $ff
    inc l                                         ; $5d60: $2c

jr_007_5d61:
    jr c, jr_007_5d3e                             ; $5d61: $38 $db

    di                                            ; $5d63: $f3
    ld [hl-], a                                   ; $5d64: $32
    ldh [$f1], a                                  ; $5d65: $e0 $f1
    ld hl, $d1ff                                  ; $5d67: $21 $ff $d1
    jr nc, jr_007_5da4                            ; $5d6a: $30 $38

    ret nc                                        ; $5d6c: $d0

    ld c, [hl]                                    ; $5d6d: $4e
    cp h                                          ; $5d6e: $bc
    ld [hl], e                                    ; $5d6f: $73
    adc a                                         ; $5d70: $8f
    rst $38                                       ; $5d71: $ff
    ld [hl], e                                    ; $5d72: $73
    ld hl, $2366                                  ; $5d73: $21 $66 $23
    pop hl                                        ; $5d76: $e1
    ld h, c                                       ; $5d77: $61
    sbc c                                         ; $5d78: $99
    pop af                                        ; $5d79: $f1

jr_007_5d7a:
    rst $38                                       ; $5d7a: $ff
    or e                                          ; $5d7b: $b3
    pop hl                                        ; $5d7c: $e1
    ld h, [hl]                                    ; $5d7d: $66
    ld h, e                                       ; $5d7e: $63
    ld l, h                                       ; $5d7f: $6c
    ld h, a                                       ; $5d80: $67
    sbc c                                         ; $5d81: $99
    cp $ff                                        ; $5d82: $fe $ff
    rst $38                                       ; $5d84: $ff
    nop                                           ; $5d85: $00
    rst $00                                       ; $5d86: $c7
    jr c, @+$3a                                   ; $5d87: $38 $38

    rst $00                                       ; $5d89: $c7
    rst $20                                       ; $5d8a: $e7
    jr @+$01                                      ; $5d8b: $18 $ff

    inc a                                         ; $5d8d: $3c
    jp Jump_000_3cc3                              ; $5d8e: $c3 $c3 $3c


    ld a, [hl]                                    ; $5d91: $7e
    add c                                         ; $5d92: $81
    pop bc                                        ; $5d93: $c1
    ld a, $00                                     ; $5d94: $3e $00
    nop                                           ; $5d96: $00
    nop                                           ; $5d97: $00
    rst $38                                       ; $5d98: $ff
    inc a                                         ; $5d99: $3c
    jp $1ce3                                      ; $5d9a: $c3 $e3 $1c


    sbc l                                         ; $5d9d: $9d
    ld h, e                                       ; $5d9e: $63
    ld [hl], d                                    ; $5d9f: $72
    adc [hl]                                      ; $5da0: $8e
    rst $38                                       ; $5da1: $ff
    rst $08                                       ; $5da2: $cf
    ld [hl-], a                                   ; $5da3: $32

jr_007_5da4:
    ld sp, $ffcf                                  ; $5da4: $31 $cf $ff
    ld bc, $ff00                                  ; $5da7: $01 $00 $ff
    rst $38                                       ; $5daa: $ff
    ld c, $f1                                     ; $5dab: $0e $f1
    rst $38                                       ; $5dad: $ff
    nop                                           ; $5dae: $00
    ret nz                                        ; $5daf: $c0

    rst $38                                       ; $5db0: $ff
    ld a, a                                       ; $5db1: $7f
    ld hl, $21ff                                  ; $5db2: $21 $ff $21
    ccf                                           ; $5db5: $3f
    ccf                                           ; $5db6: $3f
    ld [de], a                                    ; $5db7: $12
    sub [hl]                                      ; $5db8: $96
    ld a, [de]                                    ; $5db9: $1a
    sbc [hl]                                      ; $5dba: $9e
    adc h                                         ; $5dbb: $8c

jr_007_5dbc:
    rst $38                                       ; $5dbc: $ff
    db $ec                                        ; $5dbd: $ec
    inc de                                        ; $5dbe: $13
    ld [hl-], a                                   ; $5dbf: $32
    call $f3ec                                    ; $5dc0: $cd $ec $f3
    sub c                                         ; $5dc3: $91
    rra                                           ; $5dc4: $1f
    rst $38                                       ; $5dc5: $ff
    dec sp                                        ; $5dc6: $3b
    ld d, $26                                     ; $5dc7: $16 $26
    inc a                                         ; $5dc9: $3c
    ld a, h                                       ; $5dca: $7c
    jr z, jr_007_5e19                             ; $5dcb: $28 $4c

    ld a, b                                       ; $5dcd: $78
    rst $38                                       ; $5dce: $ff
    ld l, [hl]                                    ; $5dcf: $6e
    sub c                                         ; $5dd0: $91
    ld e, b                                       ; $5dd1: $58
    and a                                         ; $5dd2: $a7
    call nc, $adeb                                ; $5dd3: $d4 $eb $ad
    ld [hl-], a                                   ; $5dd6: $32
    rst $38                                       ; $5dd7: $ff
    add hl, sp                                    ; $5dd8: $39
    ld h, $60                                     ; $5dd9: $26 $60
    ccf                                           ; $5ddb: $3f
    jp nz, Jump_007_667d                          ; $5ddc: $c2 $7d $66

    add hl, sp                                    ; $5ddf: $39
    rst $38                                       ; $5de0: $ff
    ld h, b                                       ; $5de1: $60
    sbc a                                         ; $5de2: $9f
    pop hl                                        ; $5de3: $e1
    ld e, $8f                                     ; $5de4: $1e $8f
    ld a, a                                       ; $5de6: $7f
    sub b                                         ; $5de7: $90
    ld [hl], b                                    ; $5de8: $70
    rst $38                                       ; $5de9: $ff
    jr c, jr_007_5dbc                             ; $5dea: $38 $d0

    ld l, b                                       ; $5dec: $68
    sbc b                                         ; $5ded: $98
    ld a, c                                       ; $5dee: $79
    adc c                                         ; $5def: $89
    ld c, c                                       ; $5df0: $49
    cp c                                          ; $5df1: $b9
    rst $38                                       ; $5df2: $ff
    rst $20                                       ; $5df3: $e7
    jr jr_007_5d7a                                ; $5df4: $18 $84

    ld a, e                                       ; $5df6: $7b
    rst $20                                       ; $5df7: $e7
    ld hl, sp+$3a                                 ; $5df8: $f8 $3a
    dec e                                         ; $5dfa: $1d
    rst $38                                       ; $5dfb: $ff
    dec c                                         ; $5dfc: $0d

jr_007_5dfd:
    ld b, $06                                     ; $5dfd: $06 $06
    inc bc                                        ; $5dff: $03
    db $e3                                        ; $5e00: $e3
    pop bc                                        ; $5e01: $c1
    ld [hl], e                                    ; $5e02: $73
    pop af                                        ; $5e03: $f1
    rst $38                                       ; $5e04: $ff
    daa                                           ; $5e05: $27
    ret c                                         ; $5e06: $d8

    rst $28                                       ; $5e07: $ef
    db $10                                        ; $5e08: $10
    sbc [hl]                                      ; $5e09: $9e
    ld h, c                                       ; $5e0a: $61
    ld [hl], b                                    ; $5e0b: $70
    adc a                                         ; $5e0c: $8f
    rst $38                                       ; $5e0d: $ff
    rst $00                                       ; $5e0e: $c7
    jr c, jr_007_5e3f                             ; $5e0f: $38 $2e

    pop de                                        ; $5e11: $d1
    call Call_000_3e3e                            ; $5e12: $cd $3e $3e
    di                                            ; $5e15: $f3
    rst $38                                       ; $5e16: $ff
    ld c, $f1                                     ; $5e17: $0e $f1

jr_007_5e19:
    add a                                         ; $5e19: $87
    ld a, b                                       ; $5e1a: $78
    ld de, $58ee                                  ; $5e1b: $11 $ee $58
    and a                                         ; $5e1e: $a7
    rst $38                                       ; $5e1f: $ff
    db $10                                        ; $5e20: $10
    rst $28                                       ; $5e21: $ef
    cp h                                          ; $5e22: $bc
    ld b, e                                       ; $5e23: $43
    sbc h                                         ; $5e24: $9c
    ld a, a                                       ; $5e25: $7f
    ld [hl], d                                    ; $5e26: $72
    db $e3                                        ; $5e27: $e3
    rst $38                                       ; $5e28: $ff
    ld l, h                                       ; $5e29: $6c
    sub e                                         ; $5e2a: $93
    ld [hl], d                                    ; $5e2b: $72
    adc l                                         ; $5e2c: $8d
    inc e                                         ; $5e2d: $1c
    db $e3                                        ; $5e2e: $e3
    jr nz, @-$1f                                  ; $5e2f: $20 $df

    rst $38                                       ; $5e31: $ff
    sbc c                                         ; $5e32: $99
    ld h, [hl]                                    ; $5e33: $66
    ld de, $31ee                                  ; $5e34: $11 $ee $31
    rst $38                                       ; $5e37: $ff
    ld a, [$ffce]                                 ; $5e38: $fa $ce $ff
    ld l, a                                       ; $5e3b: $6f
    sub b                                         ; $5e3c: $90
    ld e, c                                       ; $5e3d: $59
    and [hl]                                      ; $5e3e: $a6

jr_007_5e3f:
    or $09                                        ; $5e3f: $f6 $09
    rst $08                                       ; $5e41: $cf
    jr nc, @+$01                                  ; $5e42: $30 $ff

    cp b                                          ; $5e44: $b8
    ld b, a                                       ; $5e45: $47
    rst $20                                       ; $5e46: $e7
    jr jr_007_5dfd                                ; $5e47: $18 $b4

    ei                                            ; $5e49: $fb
    ld sp, hl                                     ; $5e4a: $f9
    ld c, a                                       ; $5e4b: $4f
    rst $38                                       ; $5e4c: $ff
    ld c, $f1                                     ; $5e4d: $0e $f1
    di                                            ; $5e4f: $f3
    inc c                                         ; $5e50: $0c
    inc d                                         ; $5e51: $14
    ei                                            ; $5e52: $fb
    cp [hl]                                       ; $5e53: $be
    ld l, c                                       ; $5e54: $69
    rst $38                                       ; $5e55: $ff
    ld l, e                                       ; $5e56: $6b
    call z, Call_007_4bcd                         ; $5e57: $cc $cd $4b
    ld c, e                                       ; $5e5a: $4b
    adc $ce                                       ; $5e5b: $ce $ce
    adc h                                         ; $5e5d: $8c
    rst $38                                       ; $5e5e: $ff
    ld a, a                                       ; $5e5f: $7f
    add b                                         ; $5e60: $80
    adc h                                         ; $5e61: $8c
    ld [hl], e                                    ; $5e62: $73
    di                                            ; $5e63: $f3
    inc c                                         ; $5e64: $0c
    ld e, $e1                                     ; $5e65: $1e $e1
    rst $38                                       ; $5e67: $ff
    pop hl                                        ; $5e68: $e1
    ld e, $bf                                     ; $5e69: $1e $bf
    ret nz                                        ; $5e6b: $c0

    call c, Call_007_4063                         ; $5e6c: $dc $63 $40
    ld a, a                                       ; $5e6f: $7f
    nop                                           ; $5e70: $00
    nop                                           ; $5e71: $00
    nop                                           ; $5e72: $00
    rst $38                                       ; $5e73: $ff
    rst $38                                       ; $5e74: $ff
    nop                                           ; $5e75: $00
    ldh [$1f], a                                  ; $5e76: $e0 $1f
    rra                                           ; $5e78: $1f
    ldh [$f0], a                                  ; $5e79: $e0 $f0
    rrca                                          ; $5e7b: $0f
    rst $38                                       ; $5e7c: $ff
    adc a                                         ; $5e7d: $8f
    ld [hl], b                                    ; $5e7e: $70
    ld [hl], b                                    ; $5e7f: $70
    adc a                                         ; $5e80: $8f
    rst $18                                       ; $5e81: $df
    jr nz, jr_007_5eb5                            ; $5e82: $20 $31

    adc $ff                                       ; $5e84: $ce $ff
    call z, Call_007_408c                         ; $5e86: $cc $8c $40
    ret nz                                        ; $5e89: $c0

    pop hl                                        ; $5e8a: $e1
    ld b, b                                       ; $5e8b: $40
    ld hl, $ffe1                                  ; $5e8c: $21 $e1 $ff
    or e                                          ; $5e8f: $b3
    ld h, c                                       ; $5e90: $61
    jp nc, $1f33                                  ; $5e91: $d2 $33 $1f

    ld a, [c]                                     ; $5e94: $f2
    db $ed                                        ; $5e95: $ed
    ld e, $ff                                     ; $5e96: $1e $ff
    or $4c                                        ; $5e98: $f6 $4c
    cp e                                          ; $5e9a: $bb
    add $81                                       ; $5e9b: $c6 $81
    rst $38                                       ; $5e9d: $ff

Jump_007_5e9e:
    ld [hl], e                                    ; $5e9e: $73
    adc [hl]                                      ; $5e9f: $8e
    rst $38                                       ; $5ea0: $ff
    adc [hl]                                      ; $5ea1: $8e
    ld a, h                                       ; $5ea2: $7c
    ldh a, [rNR10]                                ; $5ea3: $f0 $10
    ld de, $eff0                                  ; $5ea5: $11 $f0 $ef
    rra                                           ; $5ea8: $1f
    rst $38                                       ; $5ea9: $ff

jr_007_5eaa:
    scf                                           ; $5eaa: $37
    jr jr_007_5ecc                                ; $5eab: $18 $1f

    ld [$0b9c], sp                                ; $5ead: $08 $9c $0b
    scf                                           ; $5eb0: $37
    jr @+$01                                      ; $5eb1: $18 $ff

    ld h, [hl]                                    ; $5eb3: $66
    ccf                                           ; $5eb4: $3f

jr_007_5eb5:
    ret                                           ; $5eb5: $c9


    ld a, c                                       ; $5eb6: $79
    xor l                                         ; $5eb7: $ad
    reti                                          ; $5eb8: $d9


    ld b, $ff                                     ; $5eb9: $06 $ff
    rst $38                                       ; $5ebb: $ff
    ld a, c                                       ; $5ebc: $79
    adc c                                         ; $5ebd: $89
    jr c, @-$36                                   ; $5ebe: $38 $c8

    jr jr_007_5eaa                                ; $5ec0: $18 $e8

    reti                                          ; $5ec2: $d9


    add hl, hl                                    ; $5ec3: $29
    rst $38                                       ; $5ec4: $ff
    add hl, de                                    ; $5ec5: $19
    jp hl                                         ; $5ec6: $e9


    dec sp                                        ; $5ec7: $3b
    ret                                           ; $5ec8: $c9


    xor d                                         ; $5ec9: $aa
    ld e, e                                       ; $5eca: $5b
    inc b                                         ; $5ecb: $04

jr_007_5ecc:
    rst $38                                       ; $5ecc: $ff
    rst $38                                       ; $5ecd: $ff
    jp nz, $0683                                  ; $5ece: $c2 $83 $06

    inc bc                                        ; $5ed1: $03
    dec c                                         ; $5ed2: $0d
    rrca                                          ; $5ed3: $0f
    adc l                                         ; $5ed4: $8d
    rlca                                          ; $5ed5: $07
    rst $38                                       ; $5ed6: $ff
    and $c3                                       ; $5ed7: $e6 $c3
    scf                                           ; $5ed9: $37
    ld [c], a                                     ; $5eda: $e2
    dec e                                         ; $5edb: $1d
    or $28                                        ; $5edc: $f6 $28
    rst $18                                       ; $5ede: $df
    rst $38                                       ; $5edf: $ff
    ld h, e                                       ; $5ee0: $63
    pop bc                                        ; $5ee1: $c1
    db $db                                        ; $5ee2: $db
    sbc c                                         ; $5ee3: $99
    sub [hl]                                      ; $5ee4: $96
    inc bc                                        ; $5ee5: $03
    adc l                                         ; $5ee6: $8d
    rrca                                          ; $5ee7: $0f
    rst $38                                       ; $5ee8: $ff
    adc h                                         ; $5ee9: $8c
    add a                                         ; $5eea: $87
    jp nz, $7283                                  ; $5eeb: $c2 $83 $72

    db $e3                                        ; $5eee: $e3
    inc e                                         ; $5eef: $1c
    rst $38                                       ; $5ef0: $ff
    rst $38                                       ; $5ef1: $ff
    jp $9d83                                      ; $5ef2: $c3 $83 $9d


    adc a                                         ; $5ef5: $8f
    or e                                          ; $5ef6: $b3
    ld e, $9c                                     ; $5ef7: $1e $9c
    ld c, $ff                                     ; $5ef9: $0e $ff
    jp Jump_007_6382                              ; $5efb: $c3 $82 $63


    jp Jump_007_73be                              ; $5efe: $c3 $be $73


    ld l, h                                       ; $5f01: $6c
    sbc a                                         ; $5f02: $9f
    rst $38                                       ; $5f03: $ff
    add [hl]                                      ; $5f04: $86
    ld b, $76                                     ; $5f05: $06 $76
    ld [hl+], a                                   ; $5f07: $22
    ld d, d                                       ; $5f08: $52
    ld [hl], d                                    ; $5f09: $72
    halt                                          ; $5f0a: $76
    ld h, d                                       ; $5f0b: $62
    rst $38                                       ; $5f0c: $ff
    inc b                                         ; $5f0d: $04
    ld b, $9a                                     ; $5f0e: $06 $9a
    ld c, $f6                                     ; $5f10: $0e $f6
    sbc d                                         ; $5f12: $9a
    ld h, c                                       ; $5f13: $61
    rst $38                                       ; $5f14: $ff
    rst $38                                       ; $5f15: $ff
    dec bc                                        ; $5f16: $0b
    ld c, $76                                     ; $5f17: $0e $76
    inc a                                         ; $5f19: $3c
    ld c, h                                       ; $5f1a: $4c
    ld a, b                                       ; $5f1b: $78
    ld c, h                                       ; $5f1c: $4c
    ld a, b                                       ; $5f1d: $78
    rst $38                                       ; $5f1e: $ff
    ld b, [hl]                                    ; $5f1f: $46
    ld a, h                                       ; $5f20: $7c
    ld c, e                                       ; $5f21: $4b
    halt                                          ; $5f22: $76
    ld c, c                                       ; $5f23: $49
    ld [hl], a                                    ; $5f24: $77
    adc [hl]                                      ; $5f25: $8e
    pop af                                        ; $5f26: $f1
    rst $38                                       ; $5f27: $ff
    inc c                                         ; $5f28: $0c
    ld [$0809], sp                                ; $5f29: $08 $09 $08
    ret z                                         ; $5f2c: $c8

    adc b                                         ; $5f2d: $88
    adc $4c                                       ; $5f2e: $ce $4c
    cp $f8                                        ; $5f30: $fe $f8
    pop hl                                        ; $5f32: $e1
    res 1, c                                      ; $5f33: $cb $89
    halt                                          ; $5f35: $76
    rst $38                                       ; $5f36: $ff
    rst $38                                       ; $5f37: $ff
    ld b, b                                       ; $5f38: $40
    add c                                         ; $5f39: $81
    rst $38                                       ; $5f3a: $ff
    cp $7f                                        ; $5f3b: $fe $7f
    ld b, b                                       ; $5f3d: $40
    ld b, b                                       ; $5f3e: $40
    ld a, a                                       ; $5f3f: $7f
    rst $38                                       ; $5f40: $ff
    ld b, b                                       ; $5f41: $40
    add b                                         ; $5f42: $80
    rra                                           ; $5f43: $1f
    rst $38                                       ; $5f44: $ff
    ccf                                           ; $5f45: $3f
    ret nz                                        ; $5f46: $c0

    ldh [$1f], a                                  ; $5f47: $e0 $1f
    nop                                           ; $5f49: $00
    nop                                           ; $5f4a: $00
    nop                                           ; $5f4b: $00
    rst $38                                       ; $5f4c: $ff
    rst $28                                       ; $5f4d: $ef
    db $10                                        ; $5f4e: $10
    sbc d                                         ; $5f4f: $9a
    ld h, l                                       ; $5f50: $65
    halt                                          ; $5f51: $76
    adc c                                         ; $5f52: $89
    call $ff32                                    ; $5f53: $cd $32 $ff
    dec sp                                        ; $5f56: $3b

jr_007_5f57:
    call nz, Call_000_09f6                        ; $5f57: $c4 $f6 $09
    add hl, de                                    ; $5f5a: $19
    and $00                                       ; $5f5b: $e6 $00
    rst $38                                       ; $5f5d: $ff
    rst $38                                       ; $5f5e: $ff
    ld a, $c1                                     ; $5f5f: $3e $c1
    jp $fc3c                                      ; $5f61: $c3 $3c $fc


    inc bc                                        ; $5f64: $03
    sbc c                                         ; $5f65: $99
    ld h, a                                       ; $5f66: $67
    rst $38                                       ; $5f67: $ff
    ld l, e                                       ; $5f68: $6b
    sub [hl]                                      ; $5f69: $96
    add $3c                                       ; $5f6a: $c6 $3c
    db $fc                                        ; $5f6c: $fc
    ld [$f80c], sp                                ; $5f6d: $08 $0c $f8
    rst $38                                       ; $5f70: $ff
    ld h, e                                       ; $5f71: $63
    sbc h                                         ; $5f72: $9c
    sbc b                                         ; $5f73: $98
    ld h, a                                       ; $5f74: $67
    pop de                                        ; $5f75: $d1
    xor $a7                                       ; $5f76: $ee $a7
    ccf                                           ; $5f78: $3f
    rst $38                                       ; $5f79: $ff
    add hl, sp                                    ; $5f7a: $39
    jr z, jr_007_5fe5                             ; $5f7b: $28 $68

    jr c, jr_007_5f57                             ; $5f7d: $38 $d8

    ld l, b                                       ; $5f7f: $68
    ld l, c                                       ; $5f80: $69
    add hl, sp                                    ; $5f81: $39
    rst $38                                       ; $5f82: $ff
    ret nc                                        ; $5f83: $d0

    cpl                                           ; $5f84: $2f
    add hl, sp                                    ; $5f85: $39
    add $c3                                       ; $5f86: $c6 $c3
    inc a                                         ; $5f88: $3c
    ld [hl], e                                    ; $5f89: $73
    adc h                                         ; $5f8a: $8c
    rst $38                                       ; $5f8b: $ff
    add d                                         ; $5f8c: $82
    db $fd                                        ; $5f8d: $fd
    jp nc, Jump_000_226d                          ; $5f8e: $d2 $6d $22

    dec a                                         ; $5f91: $3d
    or e                                          ; $5f92: $b3
    sbc a                                         ; $5f93: $9f
    rst $38                                       ; $5f94: $ff
    ld b, [hl]                                    ; $5f95: $46
    cp c                                          ; $5f96: $b9
    ret nz                                        ; $5f97: $c0

    ccf                                           ; $5f98: $3f
    ld b, b                                       ; $5f99: $40
    cp a                                          ; $5f9a: $bf
    and b                                         ; $5f9b: $a0
    ld e, a                                       ; $5f9c: $5f
    rst $38                                       ; $5f9d: $ff
    ret z                                         ; $5f9e: $c8

    scf                                           ; $5f9f: $37
    ldh a, [rIF]                                  ; $5fa0: $f0 $0f
    ret c                                         ; $5fa2: $d8

    rst $20                                       ; $5fa3: $e7
    db $e3                                        ; $5fa4: $e3
    ccf                                           ; $5fa5: $3f
    rst $38                                       ; $5fa6: $ff
    ld a, a                                       ; $5fa7: $7f
    add b                                         ; $5fa8: $80
    ld [hl], b                                    ; $5fa9: $70
    adc a                                         ; $5faa: $8f
    ld c, a                                       ; $5fab: $4f
    or b                                          ; $5fac: $b0
    ld [hl], c                                    ; $5fad: $71
    adc [hl]                                      ; $5fae: $8e
    rst $38                                       ; $5faf: $ff
    ld a, $c1                                     ; $5fb0: $3e $c1
    inc bc                                        ; $5fb2: $03
    db $fc                                        ; $5fb3: $fc
    ret nz                                        ; $5fb4: $c0

    rst $38                                       ; $5fb5: $ff
    db $e3                                        ; $5fb6: $e3
    ccf                                           ; $5fb7: $3f
    rst $38                                       ; $5fb8: $ff
    xor $11                                       ; $5fb9: $ee $11
    sbc d                                         ; $5fbb: $9a
    ld h, l                                       ; $5fbc: $65
    ld h, $f9                                     ; $5fbd: $26 $f9
    ld a, h                                       ; $5fbf: $7c
    db $d3                                        ; $5fc0: $d3
    rst $28                                       ; $5fc1: $ef
    ret c                                         ; $5fc2: $d8

    sub a                                         ; $5fc3: $97
    sub b                                         ; $5fc4: $90
    sbc a                                         ; $5fc5: $9f
    cp $e0                                        ; $5fc6: $fe $e0
    rra                                           ; $5fc8: $1f
    ld h, d                                       ; $5fc9: $62
    sbc l                                         ; $5fca: $9d
    rst $38                                       ; $5fcb: $ff
    ld b, e                                       ; $5fcc: $43
    cp h                                          ; $5fcd: $bc
    rlca                                          ; $5fce: $07
    rst $38                                       ; $5fcf: $ff
    inc e                                         ; $5fd0: $1c
    ld hl, sp+$30                                 ; $5fd1: $f8 $30
    ldh [rIE], a                                  ; $5fd3: $e0 $ff
    ld h, a                                       ; $5fd5: $67
    jp $c74c                                      ; $5fd6: $c3 $4c $c7


    ret c                                         ; $5fd9: $d8

    adc a                                         ; $5fda: $8f
    rrca                                          ; $5fdb: $0f
    ldh a, [rIE]                                  ; $5fdc: $f0 $ff
    sbc [hl]                                      ; $5fde: $9e
    ld h, c                                       ; $5fdf: $61
    ld d, c                                       ; $5fe0: $51
    xor [hl]                                      ; $5fe1: $ae
    adc a                                         ; $5fe2: $8f
    ldh a, [$c8]                                  ; $5fe3: $f0 $c8

jr_007_5fe5:
    or a                                          ; $5fe5: $b7
    rst $38                                       ; $5fe6: $ff
    call z, Call_000_03b3                         ; $5fe7: $cc $b3 $03
    rst $38                                       ; $5fea: $ff
    rrca                                          ; $5feb: $0f
    db $fc                                        ; $5fec: $fc
    swap h                                        ; $5fed: $cb $34
    rst $38                                       ; $5fef: $ff
    inc e                                         ; $5ff0: $1c
    db $e3                                        ; $5ff1: $e3
    sbc e                                         ; $5ff2: $9b
    ld a, h                                       ; $5ff3: $7c
    dec l                                         ; $5ff4: $2d
    and $26                                       ; $5ff5: $e6 $26
    push hl                                       ; $5ff7: $e5
    rst $38                                       ; $5ff8: $ff
    ld h, [hl]                                    ; $5ff9: $66
    and l                                         ; $5ffa: $a5
    ld h, a                                       ; $5ffb: $67
    and a                                         ; $5ffc: $a7
    and h                                         ; $5ffd: $a4
    db $e4                                        ; $5ffe: $e4
    or e                                          ; $5fff: $b3
    ld c, h                                       ; $6000: $4c
    rst $38                                       ; $6001: $ff
    call c, Call_007_5723                         ; $6002: $dc $23 $57
    cp b                                          ; $6005: $b8
    cp b                                          ; $6006: $b8
    ld l, a                                       ; $6007: $6f
    ld l, a                                       ; $6008: $6f
    ret z                                         ; $6009: $c8

    rst $38                                       ; $600a: $ff
    adc $89                                       ; $600b: $ce $89
    sub c                                         ; $600d: $91
    sbc [hl]                                      ; $600e: $9e
    ld [$9f0f], sp                                ; $600f: $08 $0f $9f
    ld h, b                                       ; $6012: $60
    rst $38                                       ; $6013: $ff
    ld [hl], b                                    ; $6014: $70
    adc a                                         ; $6015: $8f
    rst $08                                       ; $6016: $cf
    jr nc, jr_007_604a                            ; $6017: $30 $31

    adc $fe                                       ; $6019: $ce $fe
    ld bc, $033f                                  ; $601b: $01 $3f $03
    db $fc                                        ; $601e: $fc
    db $fc                                        ; $601f: $fc
    inc bc                                        ; $6020: $03
    nop                                           ; $6021: $00
    rst $38                                       ; $6022: $ff
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    rst $38                                       ; $6026: $ff
    rst $38                                       ; $6027: $ff
    nop                                           ; $6028: $00
    dec sp                                        ; $6029: $3b
    call nz, Call_000_38c7                        ; $602a: $c4 $c7 $38
    ld a, b                                       ; $602d: $78
    add a                                         ; $602e: $87
    rst $38                                       ; $602f: $ff
    adc a                                         ; $6030: $8f
    ld [hl], b                                    ; $6031: $70
    ld hl, sp+$07                                 ; $6032: $f8 $07
    rlca                                          ; $6034: $07
    ld hl, sp-$04                                 ; $6035: $f8 $fc
    inc bc                                        ; $6037: $03
    rst $38                                       ; $6038: $ff
    or $0c                                        ; $6039: $f6 $0c
    dec sp                                        ; $603b: $3b
    add $c5                                       ; $603c: $c6 $c5
    dec sp                                        ; $603e: $3b
    ld a, e                                       ; $603f: $7b
    add [hl]                                      ; $6040: $86
    rst $38                                       ; $6041: $ff
    adc [hl]                                      ; $6042: $8e
    ld a, h                                       ; $6043: $7c
    ldh a, [rNR10]                                ; $6044: $f0 $10
    ld de, $eff0                                  ; $6046: $11 $f0 $ef
    rra                                           ; $6049: $1f

jr_007_604a:
    rst $38                                       ; $604a: $ff
    dec [hl]                                      ; $604b: $35
    add hl, de                                    ; $604c: $19
    inc e                                         ; $604d: $1c

jr_007_604e:
    inc c                                         ; $604e: $0c
    sbc h                                         ; $604f: $9c
    inc c                                         ; $6050: $0c
    dec [hl]                                      ; $6051: $35
    inc e                                         ; $6052: $1c
    rst $38                                       ; $6053: $ff
    ld l, l                                       ; $6054: $6d
    dec [hl]                                      ; $6055: $35
    push de                                       ; $6056: $d5
    ld l, l                                       ; $6057: $6d
    cp l                                          ; $6058: $bd
    push bc                                       ; $6059: $c5
    ld b, d                                       ; $605a: $42
    cp a                                          ; $605b: $bf
    rst $38                                       ; $605c: $ff
    or [hl]                                       ; $605d: $b6
    inc e                                         ; $605e: $1c
    ld l, l                                       ; $605f: $6d
    add hl, sp                                    ; $6060: $39
    ret                                           ; $6061: $c9


    ld [hl], b                                    ; $6062: $70
    cp b                                          ; $6063: $b8
    ret nc                                        ; $6064: $d0

    rst $38                                       ; $6065: $ff
    ld [$7cf8], sp                                ; $6066: $08 $f8 $7c
    adc b                                         ; $6069: $88
    rst $00                                       ; $606a: $c7
    ld a, $3d                                     ; $606b: $3e $3d
    jp Jump_000_36ff                              ; $606d: $c3 $ff $36


    inc e                                         ; $6070: $1c
    cp l                                          ; $6071: $bd
    sbc c                                         ; $6072: $99
    ld l, c                                       ; $6073: $69
    jr nc, jr_007_604e                            ; $6074: $30 $d8

    ldh a, [rIE]                                  ; $6076: $f0 $ff
    ret z                                         ; $6078: $c8

    ld a, b                                       ; $6079: $78
    inc a                                         ; $607a: $3c
    jr z, jr_007_60a4                             ; $607b: $28 $27

    ld a, $c1                                     ; $607d: $3e $c1
    rst $38                                       ; $607f: $ff
    rst $38                                       ; $6080: $ff
    ld [hl], $1c                                  ; $6081: $36 $1c
    cp h                                          ; $6083: $bc
    sbc b                                         ; $6084: $98
    ld l, c                                       ; $6085: $69
    ld sp, $f0d9                                  ; $6086: $31 $d9 $f0
    rst $38                                       ; $6089: $ff
    call z, Call_000_2678                         ; $608a: $cc $78 $26
    inc a                                         ; $608d: $3c
    inc hl                                        ; $608e: $23
    ccf                                           ; $608f: $3f
    add $f9                                       ; $6090: $c6 $f9
    rst $38                                       ; $6092: $ff
    db $10                                        ; $6093: $10
    rra                                           ; $6094: $1f
    inc de                                        ; $6095: $13
    dec e                                         ; $6096: $1d
    sbc e                                         ; $6097: $9b
    dec d                                         ; $6098: $15
    sub d                                         ; $6099: $92
    sbc l                                         ; $609a: $9d
    rst $38                                       ; $609b: $ff
    inc de                                        ; $609c: $13
    inc e                                         ; $609d: $1c
    ld d, $19                                     ; $609e: $16 $19
    sub a                                         ; $60a0: $97
    jr @-$1a                                      ; $60a1: $18 $e4

    ei                                            ; $60a3: $fb

jr_007_60a4:
    rst $38                                       ; $60a4: $ff
    sub [hl]                                      ; $60a5: $96
    sbc c                                         ; $60a6: $99
    sbc l                                         ; $60a7: $9d
    inc de                                        ; $60a8: $13
    sbc a                                         ; $60a9: $9f
    rrca                                          ; $60aa: $0f
    jp $ff81                                      ; $60ab: $c3 $81 $ff


    ld h, b                                       ; $60ae: $60
    ret nz                                        ; $60af: $c0

    or b                                          ; $60b0: $b0
    ld h, b                                       ; $60b1: $60
    ld e, $fc                                     ; $60b2: $1e $fc
    jp $ff3f                                      ; $60b4: $c3 $3f $ff


jr_007_60b7:
    ret c                                         ; $60b7: $d8

    ldh a, [$37]                                  ; $60b8: $f0 $37
    ld [hl-], a                                   ; $60ba: $32
    scf                                           ; $60bb: $37
    dec h                                         ; $60bc: $25
    daa                                           ; $60bd: $27
    ld h, $ff                                     ; $60be: $26 $ff
    jr nc, @+$22                                  ; $60c0: $30 $20

    add hl, sp                                    ; $60c2: $39
    jr nc, jr_007_60f4                            ; $60c3: $30 $2f

    add hl, sp                                    ; $60c5: $39
    add $ff                                       ; $60c6: $c6 $ff
    rst $38                                       ; $60c8: $ff
    ld h, h                                       ; $60c9: $64
    ld h, h                                       ; $60ca: $64
    ld h, a                                       ; $60cb: $67
    ld h, $25                                     ; $60cc: $26 $25
    daa                                           ; $60ce: $27
    ld h, l                                       ; $60cf: $65
    daa                                           ; $60d0: $27
    rst $38                                       ; $60d1: $ff
    ld b, a                                       ; $60d2: $47
    ld h, l                                       ; $60d3: $65
    and l                                         ; $60d4: $a5
    rst $20                                       ; $60d5: $e7
    ld h, a                                       ; $60d6: $67
    and l                                         ; $60d7: $a5
    ld a, [de]                                    ; $60d8: $1a
    db $fd                                        ; $60d9: $fd
    rst $38                                       ; $60da: $ff
    rrca                                          ; $60db: $0f
    ld [$3a35], sp                                ; $60dc: $08 $35 $3a
    inc hl                                        ; $60df: $23
    inc a                                         ; $60e0: $3c
    ld a, $21                                     ; $60e1: $3e $21
    rst $38                                       ; $60e3: $ff
    ld hl, $3f3e                                  ; $60e4: $21 $3e $3f

Jump_007_60e7:
    jr nz, jr_007_6109                            ; $60e7: $20 $20

    ccf                                           ; $60e9: $3f
    rst $18                                       ; $60ea: $df
    ldh [rIE], a                                  ; $60eb: $e0 $ff
    rst $38                                       ; $60ed: $ff
    nop                                           ; $60ee: $00
    add $39                                       ; $60ef: $c6 $39
    cp a                                          ; $60f1: $bf
    ld b, b                                       ; $60f2: $40
    ld h, b                                       ; $60f3: $60

jr_007_60f4:
    sbc a                                         ; $60f4: $9f
    rst $38                                       ; $60f5: $ff
    sbc a                                         ; $60f6: $9f
    ld h, b                                       ; $60f7: $60
    ld [hl], b                                    ; $60f8: $70
    adc a                                         ; $60f9: $8f
    rst $08                                       ; $60fa: $cf
    jr nc, jr_007_60b7                            ; $60fb: $30 $ba

    ld b, l                                       ; $60fd: $45
    nop                                           ; $60fe: $00
    nop                                           ; $60ff: $00
    nop                                           ; $6100: $00
    rst $38                                       ; $6101: $ff
    sub e                                         ; $6102: $93
    ld l, h                                       ; $6103: $6c
    xor $11                                       ; $6104: $ee $11
    xor c                                         ; $6106: $a9
    ld d, [hl]                                    ; $6107: $56
    ld d, [hl]                                    ; $6108: $56

jr_007_6109:
    xor c                                         ; $6109: $a9
    rst $38                                       ; $610a: $ff
    pop de                                        ; $610b: $d1
    ld l, $26                                     ; $610c: $2e $26
    reti                                          ; $610e: $d9


    rst $18                                       ; $610f: $df
    jr nz, jr_007_6112                            ; $6110: $20 $00

jr_007_6112:
    rst $38                                       ; $6112: $ff
    rst $38                                       ; $6113: $ff
    sbc b                                         ; $6114: $98
    ld h, a                                       ; $6115: $67
    ld a, a                                       ; $6116: $7f
    add b                                         ; $6117: $80
    push bc                                       ; $6118: $c5
    dec sp                                        ; $6119: $3b
    ld a, $c2                                     ; $611a: $3e $c2
    rst $38                                       ; $611c: $ff
    jp Jump_007_7d3e                              ; $611d: $c3 $3e $7d


    add e                                         ; $6120: $83
    add a                                         ; $6121: $87
    ld a, c                                       ; $6122: $79
    ld bc, $ffff                                  ; $6123: $01 $ff $ff
    inc a                                         ; $6126: $3c
    jp Jump_000_38c7                              ; $6127: $c3 $c7 $38


    db $fc                                        ; $612a: $fc
    rst $38                                       ; $612b: $ff
    rlca                                          ; $612c: $07
    inc bc                                        ; $612d: $03
    rst $38                                       ; $612e: $ff
    ld bc, $0000                                  ; $612f: $01 $00 $00
    nop                                           ; $6132: $00
    inc a                                         ; $6133: $3c
    jr c, jr_007_6164                             ; $6134: $38 $2e

    ld a, $ff                                     ; $6136: $3e $ff
    pop hl                                        ; $6138: $e1
    ld e, $9e                                     ; $6139: $1e $9e
    ld h, c                                       ; $613b: $61
    ld h, c                                       ; $613c: $61
    sbc [hl]                                      ; $613d: $9e
    ld e, a                                       ; $613e: $5f
    and b                                         ; $613f: $a0
    rst $38                                       ; $6140: $ff
    and b                                         ; $6141: $a0
    rst $18                                       ; $6142: $df
    db $db                                        ; $6143: $db
    ld a, h                                       ; $6144: $7c
    ld l, a                                       ; $6145: $6f
    daa                                           ; $6146: $27
    ld h, l                                       ; $6147: $65
    inc h                                         ; $6148: $24
    rst $38                                       ; $6149: $ff
    sub c                                         ; $614a: $91
    ld l, [hl]                                    ; $614b: $6e
    ld a, h                                       ; $614c: $7c
    add e                                         ; $614d: $83
    ret nz                                        ; $614e: $c0

    ccf                                           ; $614f: $3f
    dec a                                         ; $6150: $3d
    jp $e3ff                                      ; $6151: $c3 $ff $e3


    ld e, $96                                     ; $6154: $1e $96
    ld l, h                                       ; $6156: $6c
    ld a, h                                       ; $6157: $7c
    adc b                                         ; $6158: $88
    db $ec                                        ; $6159: $ec
    ld hl, sp-$01                                 ; $615a: $f8 $ff
    ld d, l                                       ; $615c: $55

jr_007_615d:
    xor d                                         ; $615d: $aa
    ld d, d                                       ; $615e: $52
    xor l                                         ; $615f: $ad
    ld l, b                                       ; $6160: $68
    rst $30                                       ; $6161: $f7
    rst $18                                       ; $6162: $df
    sub b                                         ; $6163: $90

jr_007_6164:
    rst $38                                       ; $6164: $ff
    db $10                                        ; $6165: $10
    rra                                           ; $6166: $1f
    db $10                                        ; $6167: $10
    rra                                           ; $6168: $1f
    ret c                                         ; $6169: $d8

    ld d, a                                       ; $616a: $57
    db $d3                                        ; $616b: $d3
    call c, $8fff                                 ; $616c: $dc $ff $8f
    ld [hl], b                                    ; $616f: $70
    adc $31                                       ; $6170: $ce $31
    inc c                                         ; $6172: $0c
    rst $38                                       ; $6173: $ff
    jp c, $ff33                                   ; $6174: $da $33 $ff

    or e                                          ; $6177: $b3
    ld h, d                                       ; $6178: $62
    ld h, a                                       ; $6179: $67
    jp nz, $86cd                                  ; $617a: $c2 $cd $86

    add $83                                       ; $617d: $c6 $83
    rst $38                                       ; $617f: $ff
    adc [hl]                                      ; $6180: $8e
    ld [hl], c                                    ; $6181: $71
    ccf                                           ; $6182: $3f
    ret nz                                        ; $6183: $c0

    inc [hl]                                      ; $6184: $34
    ei                                            ; $6185: $fb
    rst $28                                       ; $6186: $ef
    ld c, b                                       ; $6187: $48
    rst $38                                       ; $6188: $ff
    ld c, e                                       ; $6189: $4b
    call z, $8acd                                 ; $618a: $cc $cd $8a
    adc h                                         ; $618d: $8c
    adc a                                         ; $618e: $8f
    add a                                         ; $618f: $87
    add e                                         ; $6190: $83
    cp $a0                                        ; $6191: $fe $a0
    pop hl                                        ; $6193: $e1
    jr c, jr_007_615d                             ; $6194: $38 $c7

    rst $20                                       ; $6196: $e7
    jr jr_007_61d5                                ; $6197: $18 $3c

    jp $dfc3                                      ; $6199: $c3 $c3 $df


    inc a                                         ; $619c: $3c
    halt                                          ; $619d: $76
    adc a                                         ; $619e: $8f
    rra                                           ; $619f: $1f
    ld sp, hl                                     ; $61a0: $f9
    and b                                         ; $61a1: $a0
    db $e3                                        ; $61a2: $e3
    rst $18                                       ; $61a3: $df
    jr nz, @+$01                                  ; $61a4: $20 $ff

    inc l                                         ; $61a6: $2c
    rst $18                                       ; $61a7: $df

jr_007_61a8:
    db $d3                                        ; $61a8: $d3
    ld [hl-], a                                   ; $61a9: $32
    ld [hl-], a                                   ; $61aa: $32
    di                                            ; $61ab: $f3
    ld b, c                                       ; $61ac: $41
    pop bc                                        ; $61ad: $c1
    rst $38                                       ; $61ae: $ff
    add c                                         ; $61af: $81
    ld a, [hl]                                    ; $61b0: $7e
    ld a, [hl]                                    ; $61b1: $7e
    add c                                         ; $61b2: $81
    pop bc                                        ; $61b3: $c1
    ld a, $3e                                     ; $61b4: $3e $3e
    pop bc                                        ; $61b6: $c1
    rst $38                                       ; $61b7: $ff
    db $e3                                        ; $61b8: $e3
    inc e                                         ; $61b9: $1c
    sbc h                                         ; $61ba: $9c
    ld h, e                                       ; $61bb: $63
    ld [hl], a                                    ; $61bc: $77
    adc b                                         ; $61bd: $88
    nop                                           ; $61be: $00
    rst $38                                       ; $61bf: $ff
    rst $38                                       ; $61c0: $ff
    ld d, l                                       ; $61c1: $55
    xor d                                         ; $61c2: $aa
    ld d, [hl]                                    ; $61c3: $56
    xor c                                         ; $61c4: $a9
    jp hl                                         ; $61c5: $e9


    ld d, $6f                                     ; $61c6: $16 $6f
    sub b                                         ; $61c8: $90
    rst $38                                       ; $61c9: $ff
    or b                                          ; $61ca: $b0
    ld c, a                                       ; $61cb: $4f
    rst $18                                       ; $61cc: $df
    jr nz, jr_007_6230                            ; $61cd: $20 $61

    sbc [hl]                                      ; $61cf: $9e
    nop                                           ; $61d0: $00
    rst $38                                       ; $61d1: $ff
    nop                                           ; $61d2: $00
    nop                                           ; $61d3: $00
    nop                                           ; $61d4: $00

jr_007_61d5:
    rst $38                                       ; $61d5: $ff
    rst $38                                       ; $61d6: $ff
    nop                                           ; $61d7: $00
    sbc c                                         ; $61d8: $99
    ld h, [hl]                                    ; $61d9: $66
    halt                                          ; $61da: $76
    adc c                                         ; $61db: $89
    rst $08                                       ; $61dc: $cf
    jr nc, @+$01                                  ; $61dd: $30 $ff

    jr c, jr_007_61a8                             ; $61df: $38 $c7

    rst $20                                       ; $61e1: $e7
    jr @+$1e                                      ; $61e2: $18 $1c

    db $e3                                        ; $61e4: $e3
    di                                            ; $61e5: $f3
    inc c                                         ; $61e6: $0c
    rst $38                                       ; $61e7: $ff
    rst $38                                       ; $61e8: $ff
    ld bc, $0df3                                  ; $61e9: $01 $f3 $0d
    dec e                                         ; $61ec: $1d
    db $e3                                        ; $61ed: $e3
    rst $20                                       ; $61ee: $e7
    add hl, de                                    ; $61ef: $19
    rst $38                                       ; $61f0: $ff
    dec sp                                        ; $61f1: $3b
    push bc                                       ; $61f2: $c5
    call Call_007_7733                            ; $61f3: $cd $33 $77
    adc c                                         ; $61f6: $89
    cp b                                          ; $61f7: $b8
    ld b, a                                       ; $61f8: $47
    rst $38                                       ; $61f9: $ff
    jr c, @+$32                                   ; $61fa: $38 $30

    nop                                           ; $61fc: $00
    nop                                           ; $61fd: $00
    ld bc, $3101                                  ; $61fe: $01 $01 $31
    jr nz, @+$01                                  ; $6201: $20 $ff

    inc a                                         ; $6203: $3c
    jr c, jr_007_626c                             ; $6204: $38 $66

    inc a                                         ; $6206: $3c
    ld e, e                                       ; $6207: $5b
    ld h, [hl]                                    ; $6208: $66
    and c                                         ; $6209: $a1
    rst $18                                       ; $620a: $df
    rst $38                                       ; $620b: $ff
    ld b, h                                       ; $620c: $44
    ld h, h                                       ; $620d: $64
    db $e4                                        ; $620e: $e4
    ld h, h                                       ; $620f: $64
    and h                                         ; $6210: $a4
    db $e4                                        ; $6211: $e4
    and h                                         ; $6212: $a4
    db $e4                                        ; $6213: $e4
    db $fd                                        ; $6214: $fd
    db $e4                                        ; $6215: $e4
    ld hl, sp-$20                                 ; $6216: $f8 $e0
    or h                                          ; $6218: $b4
    db $e4                                        ; $6219: $e4
    ld e, e                                       ; $621a: $5b
    cp a                                          ; $621b: $bf
    ld [hl], $1c                                  ; $621c: $36 $1c
    rst $38                                       ; $621e: $ff
    dec de                                        ; $621f: $1b
    ld c, $e9                                     ; $6220: $0e $e9
    rst $08                                       ; $6222: $cf
    db $ed                                        ; $6223: $ed
    xor e                                         ; $6224: $ab
    xor e                                         ; $6225: $ab
    xor $ff                                       ; $6226: $ee $ff
    xor $aa                                       ; $6228: $ee $aa
    xor [hl]                                      ; $622a: $ae
    ld [$ff11], a                                 ; $622b: $ea $11 $ff
    rra                                           ; $622e: $1f
    db $10                                        ; $622f: $10

jr_007_6230:
    rst $38                                       ; $6230: $ff
    inc de                                        ; $6231: $13
    inc e                                         ; $6232: $1c
    inc a                                         ; $6233: $3c
    inc de                                        ; $6234: $13
    inc hl                                        ; $6235: $23
    inc a                                         ; $6236: $3c
    ld a, [hl]                                    ; $6237: $7e
    ld hl, $47ff                                  ; $6238: $21 $ff $47
    ld a, c                                       ; $623b: $79
    ld sp, hl                                     ; $623c: $f9
    ld b, a                                       ; $623d: $47
    sbc [hl]                                      ; $623e: $9e
    pop hl                                        ; $623f: $e1
    ld h, e                                       ; $6240: $63
    pop bc                                        ; $6241: $c1
    rst $38                                       ; $6242: $ff
    or c                                          ; $6243: $b1
    ld h, b                                       ; $6244: $60
    ld e, c                                       ; $6245: $59
    or b                                          ; $6246: $b0
    or e                                          ; $6247: $b3
    ld h, c                                       ; $6248: $61
    and $c3                                       ; $6249: $e6 $c3
    rst $38                                       ; $624b: $ff
    dec c                                         ; $624c: $0d
    ld b, $18                                     ; $624d: $06 $18
    rrca                                          ; $624f: $0f
    di                                            ; $6250: $f3
    db $fc                                        ; $6251: $fc
    ld bc, $ff80                                  ; $6252: $01 $80 $ff
    sbc b                                         ; $6255: $98
    sub b                                         ; $6256: $90
    sbc h                                         ; $6257: $9c
    sbc b                                         ; $6258: $98
    inc d                                         ; $6259: $14
    sbc h                                         ; $625a: $9c
    sbc h                                         ; $625b: $9c
    sub h                                         ; $625c: $94
    rst $38                                       ; $625d: $ff
    sbc h                                         ; $625e: $9c
    sub h                                         ; $625f: $94
    ld h, h                                       ; $6260: $64
    db $fc                                        ; $6261: $fc
    cp e                                          ; $6262: $bb
    ld b, a                                       ; $6263: $47
    ldh a, [$a0]                                  ; $6264: $f0 $a0
    rst $38                                       ; $6266: $ff
    xor [hl]                                      ; $6267: $ae
    db $e4                                        ; $6268: $e4
    ld [$cece], a                                 ; $6269: $ea $ce $ce

jr_007_626c:
    call z, $c0a0                                 ; $626c: $cc $a0 $c0
    rst $38                                       ; $626f: $ff
    ld [hl], e                                    ; $6270: $73
    ld h, c                                       ; $6271: $61
    ld e, [hl]                                    ; $6272: $5e
    ld [hl], e                                    ; $6273: $73
    xor l                                         ; $6274: $ad
    sbc $b2                                       ; $6275: $de $b2
    di                                            ; $6277: $f3
    rst $38                                       ; $6278: $ff
    di                                            ; $6279: $f3
    ld d, d                                       ; $627a: $52
    ld d, d                                       ; $627b: $52
    ld [hl], e                                    ; $627c: $73
    di                                            ; $627d: $f3
    ld d, c                                       ; $627e: $51
    sbc c                                         ; $627f: $99
    pop af                                        ; $6280: $f1
    rst $38                                       ; $6281: $ff
    add hl, hl                                    ; $6282: $29
    ret c                                         ; $6283: $d8

    db $fc                                        ; $6284: $fc
    ld [$3fc7], sp                                ; $6285: $08 $c7 $3f
    rst $38                                       ; $6288: $ff
    nop                                           ; $6289: $00
    rst $38                                       ; $628a: $ff
    rst $38                                       ; $628b: $ff
    nop                                           ; $628c: $00
    ld bc, $fefe                                  ; $628d: $01 $fe $fe
    ld bc, $fc03                                  ; $6290: $01 $03 $fc
    rst $38                                       ; $6293: $ff
    db $fc                                        ; $6294: $fc
    add e                                         ; $6295: $83
    and a                                         ; $6296: $a7
    ret c                                         ; $6297: $d8

    add hl, sp                                    ; $6298: $39
    add $ff                                       ; $6299: $c6 $ff
    nop                                           ; $629b: $00
    rst $38                                       ; $629c: $ff
    inc sp                                        ; $629d: $33
    call z, $23dc                                 ; $629e: $cc $dc $23
    ld h, e                                       ; $62a1: $63
    sbc h                                         ; $62a2: $9c

Jump_007_62a3:
    cp [hl]                                       ; $62a3: $be
    ld b, c                                       ; $62a4: $41
    ccf                                           ; $62a5: $3f
    rst $00                                       ; $62a6: $c7
    jr c, jr_007_6321                             ; $62a7: $38 $78

    add a                                         ; $62a9: $87
    sbc a                                         ; $62aa: $9f
    ld h, b                                       ; $62ab: $60
    nop                                           ; $62ac: $00
    nop                                           ; $62ad: $00
    nop                                           ; $62ae: $00
    rst $38                                       ; $62af: $ff
    jr c, @+$7e                                   ; $62b0: $38 $7c

    ld a, h                                       ; $62b2: $7c
    ld b, [hl]                                    ; $62b3: $46
    ld e, d                                       ; $62b4: $5a
    ld h, a                                       ; $62b5: $67
    dec a                                         ; $62b6: $3d
    ld h, e                                       ; $62b7: $63
    rst $38                                       ; $62b8: $ff
    ld a, $21                                     ; $62b9: $3e $21
    dec sp                                        ; $62bb: $3b
    inc h                                         ; $62bc: $24
    dec a                                         ; $62bd: $3d
    ld h, $3e                                     ; $62be: $26 $3e
    daa                                           ; $62c0: $27
    db $fd                                        ; $62c1: $fd
    ccf                                           ; $62c2: $3f
    cp $e0                                        ; $62c3: $fe $e0
    ld a, $67                                     ; $62c5: $3e $67
    ld e, [hl]                                    ; $62c7: $5e
    ld h, [hl]                                    ; $62c8: $66
    halt                                          ; $62c9: $76
    ld c, [hl]                                    ; $62ca: $4e
    rst $38                                       ; $62cb: $ff
    ld a, $7e                                     ; $62cc: $3e $7e
    inc e                                         ; $62ce: $1c
    ld a, $00                                     ; $62cf: $3e $00
    nop                                           ; $62d1: $00
    ld h, a                                       ; $62d2: $67
    rst $38                                       ; $62d3: $ff
    rst $38                                       ; $62d4: $ff
    ei                                            ; $62d5: $fb
    sbc h                                         ; $62d6: $9c
    cp $99                                        ; $62d7: $fe $99
    rst $30                                       ; $62d9: $f7
    sbc c                                         ; $62da: $99
    rst $38                                       ; $62db: $ff
    sub c                                         ; $62dc: $91
    rst $38                                       ; $62dd: $ff
    cp $91                                        ; $62de: $fe $91
    ld a, a                                       ; $62e0: $7f
    sub b                                         ; $62e1: $90
    db $fd                                        ; $62e2: $fd
    ld d, $ff                                     ; $62e3: $16 $ff
    ld d, $ff                                     ; $62e5: $16 $ff
    ld a, e                                       ; $62e7: $7b
    sub [hl]                                      ; $62e8: $96
    rst $38                                       ; $62e9: $ff
    sub b                                         ; $62ea: $90
    cp $91                                        ; $62eb: $fe $91
    cp c                                          ; $62ed: $b9
    rst $18                                       ; $62ee: $df
    rst $38                                       ; $62ef: $ff
    ld a, a                                       ; $62f0: $7f
    rst $38                                       ; $62f1: $ff
    ccf                                           ; $62f2: $3f
    ld a, a                                       ; $62f3: $7f
    nop                                           ; $62f4: $00
    nop                                           ; $62f5: $00
    adc [hl]                                      ; $62f6: $8e
    rst $18                                       ; $62f7: $df
    rst $38                                       ; $62f8: $ff
    ld d, a                                       ; $62f9: $57
    ld sp, hl                                     ; $62fa: $f9
    rst $28                                       ; $62fb: $ef
    pop af                                        ; $62fc: $f1
    cp a                                          ; $62fd: $bf
    pop hl                                        ; $62fe: $e1
    ld e, a                                       ; $62ff: $5f
    pop hl                                        ; $6300: $e1
    rst $38                                       ; $6301: $ff
    rst $38                                       ; $6302: $ff
    ret                                           ; $6303: $c9


    xor a                                         ; $6304: $af
    reti                                          ; $6305: $d9


    ld a, a                                       ; $6306: $7f
    reti                                          ; $6307: $d9


    rst $38                                       ; $6308: $ff
    ld b, b                                       ; $6309: $40
    rst $38                                       ; $630a: $ff
    rst $38                                       ; $630b: $ff
    ld b, b                                       ; $630c: $40
    ld [hl], a                                    ; $630d: $77
    ld sp, hl                                     ; $630e: $f9
    rst $38                                       ; $630f: $ff
    ld sp, hl                                     ; $6310: $f9
    rst $08                                       ; $6311: $cf
    jp hl                                         ; $6312: $e9


    ld e, a                                       ; $6313: $5f
    add a                                         ; $6314: $87
    rst $08                                       ; $6315: $cf
    inc bc                                        ; $6316: $03
    add a                                         ; $6317: $87
    nop                                           ; $6318: $00
    rst $38                                       ; $6319: $ff
    pop hl                                        ; $631a: $e1
    add b                                         ; $631b: $80
    rst $38                                       ; $631c: $ff
    ldh [$fd], a                                  ; $631d: $e0 $fd
    add c                                         ; $631f: $81
    rst $38                                       ; $6320: $ff

jr_007_6321:
    pop hl                                        ; $6321: $e1
    add b                                         ; $6322: $80
    add c                                         ; $6323: $81
    add b                                         ; $6324: $80
    ret nz                                        ; $6325: $c0

    ret nz                                        ; $6326: $c0

    ld b, b                                       ; $6327: $40
    rst $38                                       ; $6328: $ff
    ret nz                                        ; $6329: $c0

    ld b, b                                       ; $632a: $40
    pop bc                                        ; $632b: $c1
    jp $c283                                      ; $632c: $c3 $83 $c2


    add e                                         ; $632f: $83
    add d                                         ; $6330: $82
    rst $38                                       ; $6331: $ff
    add c                                         ; $6332: $81
    add e                                         ; $6333: $83
    nop                                           ; $6334: $00
    add c                                         ; $6335: $81
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    jr jr_007_6376                                ; $6338: $18 $3c

    rst $38                                       ; $633a: $ff
    inc l                                         ; $633b: $2c
    halt                                          ; $633c: $76
    ld e, [hl]                                    ; $633d: $5e
    and $b6                                       ; $633e: $e6 $b6
    adc $6e                                       ; $6340: $ce $6e
    sbc a                                         ; $6342: $9f
    rst $38                                       ; $6343: $ff
    ld [hl], l                                    ; $6344: $75
    adc a                                         ; $6345: $8f
    cp d                                          ; $6346: $ba
    rst $00                                       ; $6347: $c7
    ld e, l                                       ; $6348: $5d
    db $e3                                        ; $6349: $e3
    dec l                                         ; $634a: $2d
    ld [hl], e                                    ; $634b: $73
    rst $38                                       ; $634c: $ff
    ld e, e                                       ; $634d: $5b
    rst $20                                       ; $634e: $e7
    or a                                          ; $634f: $b7
    rst $08                                       ; $6350: $cf
    xor $1f                                       ; $6351: $ee $1f
    call c, $ef3e                                 ; $6353: $dc $3e $ef
    ld hl, sp-$04                                 ; $6356: $f8 $fc
    ldh a, [$f8]                                  ; $6358: $f0 $f8
    ret nz                                        ; $635a: $c0

    ld [c], a                                     ; $635b: $e2
    nop                                           ; $635c: $00
    jr nc, @+$7a                                  ; $635d: $30 $78

    rst $38                                       ; $635f: $ff
    ld a, b                                       ; $6360: $78
    ld c, h                                       ; $6361: $4c
    ld hl, sp-$34                                 ; $6362: $f8 $cc
    cp $07                                        ; $6364: $fe $07
    rst $38                                       ; $6366: $ff
    rst $08                                       ; $6367: $cf
    rst $38                                       ; $6368: $ff
    ld a, [hl]                                    ; $6369: $7e
    rst $08                                       ; $636a: $cf
    ei                                            ; $636b: $fb
    adc $f6                                       ; $636c: $ce $f6
    rst $08                                       ; $636e: $cf
    ld e, l                                       ; $636f: $5d
    rst $20                                       ; $6370: $e7
    rst $38                                       ; $6371: $ff
    ld a, [hl-]                                   ; $6372: $3a
    ld h, a                                       ; $6373: $67
    cpl                                           ; $6374: $2f
    inc sp                                        ; $6375: $33

jr_007_6376:
    rra                                           ; $6376: $1f
    ccf                                           ; $6377: $3f
    ld c, $1f                                     ; $6378: $0e $1f
    db $fc                                        ; $637a: $fc
    ldh [$e3], a                                  ; $637b: $e0 $e3
    cp d                                          ; $637d: $ba
    pop hl                                        ; $637e: $e1
    ld h, h                                       ; $637f: $64
    rst $38                                       ; $6380: $ff

Jump_007_6381:
    cp e                                          ; $6381: $bb

Jump_007_6382:
    rst $00                                       ; $6382: $c7
    ld a, a                                       ; $6383: $7f
    add e                                         ; $6384: $83
    rst $38                                       ; $6385: $ff
    rst $38                                       ; $6386: $ff
    inc sp                                        ; $6387: $33
    rst $18                                       ; $6388: $df
    inc sp                                        ; $6389: $33
    rst $38                                       ; $638a: $ff
    inc bc                                        ; $638b: $03
    ld a, l                                       ; $638c: $7d
    add e                                         ; $638d: $83
    rst $38                                       ; $638e: $ff
    rst $18                                       ; $638f: $df
    pop hl                                        ; $6390: $e1
    dec sp                                        ; $6391: $3b
    db $fd                                        ; $6392: $fd
    rla                                           ; $6393: $17
    ccf                                           ; $6394: $3f
    inc bc                                        ; $6395: $03
    rlca                                          ; $6396: $07
    cp $c0                                        ; $6397: $fe $c0
    rst $20                                       ; $6399: $e7
    ld sp, hl                                     ; $639a: $f9
    rst $08                                       ; $639b: $cf
    rst $38                                       ; $639c: $ff
    ld b, $ff                                     ; $639d: $06 $ff
    adc $7f                                       ; $639f: $ce $7f
    rst $38                                       ; $63a1: $ff
    adc $7a                                       ; $63a2: $ce $7a
    ld c, a                                       ; $63a4: $4f
    ld [hl], l                                    ; $63a5: $75
    ld c, a                                       ; $63a6: $4f
    ld e, l                                       ; $63a7: $5d
    rst $20                                       ; $63a8: $e7
    cp d                                          ; $63a9: $ba
    ld a, a                                       ; $63aa: $7f
    rst $20                                       ; $63ab: $e7
    xor a                                         ; $63ac: $af
    or e                                          ; $63ad: $b3
    sbc a                                         ; $63ae: $9f
    cp a                                          ; $63af: $bf
    ld c, $9f                                     ; $63b0: $0e $9f
    ret nz                                        ; $63b2: $c0

    push hl                                       ; $63b3: $e5
    cp $5b                                        ; $63b4: $fe $5b
    ldh [$c0], a                                  ; $63b6: $e0 $c0
    add $6f                                       ; $63b8: $c6 $6f
    rst $28                                       ; $63ba: $ef
    ld l, c                                       ; $63bb: $69
    rst $28                                       ; $63bc: $ef
    ld l, c                                       ; $63bd: $69
    rst $38                                       ; $63be: $ff
    call $b76b                                    ; $63bf: $cd $6b $b7
    ld a, e                                       ; $63c2: $7b
    ld a, e                                       ; $63c3: $7b
    add a                                         ; $63c4: $87
    or a                                          ; $63c5: $b7
    rst $08                                       ; $63c6: $cf
    cp a                                          ; $63c7: $bf
    ld c, a                                       ; $63c8: $4f
    rst $38                                       ; $63c9: $ff
    inc a                                         ; $63ca: $3c
    ld a, a                                       ; $63cb: $7f
    jr jr_007_640a                                ; $63cc: $18 $3c

    and b                                         ; $63ce: $a0
    push hl                                       ; $63cf: $e5
    jr nc, @+$01                                  ; $63d0: $30 $ff

    ld a, b                                       ; $63d2: $78
    ld c, b                                       ; $63d3: $48
    db $fc                                        ; $63d4: $fc
    cp h                                          ; $63d5: $bc
    call z, $9c6c                                 ; $63d6: $cc $6c $9c
    call c, Call_000_3cf7                         ; $63d9: $dc $f7 $3c
    ld hl, sp+$0c                                 ; $63dc: $f8 $0c
    ld hl, sp-$1d                                 ; $63de: $f8 $e3
    cp b                                          ; $63e0: $b8
    ld a, h                                       ; $63e1: $7c
    ldh a, [$f8]                                  ; $63e2: $f0 $f8
    rrca                                          ; $63e4: $0f
    ld h, b                                       ; $63e5: $60
    ldh a, [rP1]                                  ; $63e6: $f0 $00
    nop                                           ; $63e8: $00
    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    nop                                           ; $63eb: $00
    ld hl, $6422                                  ; $63ec: $21 $22 $64
    ld de, $0401                                  ; $63ef: $11 $01 $04

Jump_007_63f2:
    ld b, $00                                     ; $63f2: $06 $00
    xor a                                         ; $63f4: $af
    ldh [$8a], a                                  ; $63f5: $e0 $8a
    ldh [$8b], a                                  ; $63f7: $e0 $8b
    call Call_007_741e                            ; $63f9: $cd $1e $74
    ld c, $10                                     ; $63fc: $0e $10
    call Call_000_25af                            ; $63fe: $cd $af $25
    call Call_000_2625                            ; $6401: $cd $25 $26
    ld a, $06                                     ; $6404: $3e $06
    ldh [$96], a                                  ; $6406: $e0 $96
    ldh [rSVBK], a                                ; $6408: $e0 $70

jr_007_640a:
    ld a, [$cabd]                                 ; $640a: $fa $bd $ca
    call Call_007_7c00                            ; $640d: $cd $00 $7c
    bit 7, a                                      ; $6410: $cb $7f
    jr nz, jr_007_6417                            ; $6412: $20 $03

    ld [$cabd], a                                 ; $6414: $ea $bd $ca

jr_007_6417:
    push af                                       ; $6417: $f5
    ld c, $10                                     ; $6418: $0e $10
    call Call_000_25a1                            ; $641a: $cd $a1 $25
    call Call_000_2625                            ; $641d: $cd $25 $26
    pop af                                        ; $6420: $f1

jr_007_6421:
    ret                                           ; $6421: $c9


    ld c, h                                       ; $6422: $4c
    ld h, h                                       ; $6423: $64
    jp nc, $bd6b                                  ; $6424: $d2 $6b $bd

    ld h, h                                       ; $6427: $64
    ld b, e                                       ; $6428: $43
    ld l, h                                       ; $6429: $6c
    sub b                                         ; $642a: $90
    ld h, l                                       ; $642b: $65
    dec c                                         ; $642c: $0d
    ld l, l                                       ; $642d: $6d
    ld h, h                                       ; $642e: $64
    ld h, [hl]                                    ; $642f: $66
    rst $20                                       ; $6430: $e7
    ld l, l                                       ; $6431: $6d
    jr c, @+$69                                   ; $6432: $38 $67

    cp e                                          ; $6434: $bb
    ld l, [hl]                                    ; $6435: $6e
    inc b                                         ; $6436: $04
    ld l, b                                       ; $6437: $68
    adc [hl]                                      ; $6438: $8e
    ld l, a                                       ; $6439: $6f
    sbc $68                                       ; $643a: $de $68
    ld l, b                                       ; $643c: $68
    ld [hl], b                                    ; $643d: $70
    or d                                          ; $643e: $b2
    ld l, c                                       ; $643f: $69
    ld b, d                                       ; $6440: $42
    ld [hl], c                                    ; $6441: $71
    add c                                         ; $6442: $81
    ld l, d                                       ; $6443: $6a
    db $10                                        ; $6444: $10
    ld [hl], d                                    ; $6445: $72
    ld e, h                                       ; $6446: $5c
    ld l, e                                       ; $6447: $6b
    and $72                                       ; $6448: $e6 $72
    ld e, h                                       ; $644a: $5c
    ld [hl], e                                    ; $644b: $73
    rst $38                                       ; $644c: $ff
    inc c                                         ; $644d: $0c
    di                                            ; $644e: $f3
    ei                                            ; $644f: $fb
    inc b                                         ; $6450: $04
    call z, Call_000_3733                         ; $6451: $cc $33 $37
    ret z                                         ; $6454: $c8

    rst $38                                       ; $6455: $ff
    ldh a, [rIF]                                  ; $6456: $f0 $0f
    rra                                           ; $6458: $1f
    ldh [$e1], a                                  ; $6459: $e0 $e1
    ld e, $00                                     ; $645b: $1e $00
    rst $38                                       ; $645d: $ff
    rst $38                                       ; $645e: $ff
    rst $00                                       ; $645f: $c7
    jr c, jr_007_6421                             ; $6460: $38 $bf

    ld b, b                                       ; $6462: $40
    ld [hl], b                                    ; $6463: $70
    adc a                                         ; $6464: $8f
    rst $08                                       ; $6465: $cf
    jr nc, @+$01                                  ; $6466: $30 $ff

    ld a, b                                       ; $6468: $78
    add a                                         ; $6469: $87
    adc a                                         ; $646a: $8f
    ld [hl], b                                    ; $646b: $70
    di                                            ; $646c: $f3
    inc c                                         ; $646d: $0c

jr_007_646e:
    nop                                           ; $646e: $00
    rst $38                                       ; $646f: $ff
    rst $38                                       ; $6470: $ff
    ld a, $c1                                     ; $6471: $3e $c1
    pop bc                                        ; $6473: $c1
    ld a, $7f                                     ; $6474: $3e $7f
    add b                                         ; $6476: $80
    add b                                         ; $6477: $80
    ld a, a                                       ; $6478: $7f
    rst $38                                       ; $6479: $ff
    ld a, a                                       ; $647a: $7f
    add b                                         ; $647b: $80
    ret nz                                        ; $647c: $c0

    ccf                                           ; $647d: $3f
    ccf                                           ; $647e: $3f
    ret nz                                        ; $647f: $c0

    nop                                           ; $6480: $00
    rst $38                                       ; $6481: $ff
    rst $38                                       ; $6482: $ff
    ccf                                           ; $6483: $3f
    ret nz                                        ; $6484: $c0

    ldh [$1f], a                                  ; $6485: $e0 $1f
    rra                                           ; $6487: $1f
    ldh [$f0], a                                  ; $6488: $e0 $f0
    rrca                                          ; $648a: $0f
    rst $38                                       ; $648b: $ff
    adc a                                         ; $648c: $8f
    ld [hl], b                                    ; $648d: $70
    ld [hl], b                                    ; $648e: $70
    adc a                                         ; $648f: $8f
    rst $18                                       ; $6490: $df
    jr nz, jr_007_6493                            ; $6491: $20 $00

jr_007_6493:
    rst $38                                       ; $6493: $ff
    ccf                                           ; $6494: $3f
    adc $31                                       ; $6495: $ce $31
    add hl, sp                                    ; $6497: $39
    add $c7                                       ; $6498: $c6 $c7
    jr c, jr_007_646e                             ; $649a: $38 $d2

    pop hl                                        ; $649c: $e1
    cp [hl]                                       ; $649d: $be
    pop hl                                        ; $649e: $e1
    rst $38                                       ; $649f: $ff
    nop                                           ; $64a0: $00
    rst $38                                       ; $64a1: $ff
    rst $20                                       ; $64a2: $e7
    jr jr_007_64dd                                ; $64a3: $18 $38

    rst $00                                       ; $64a5: $c7
    adc a                                         ; $64a6: $8f
    ld [hl], b                                    ; $64a7: $70
    rst $38                                       ; $64a8: $ff
    ld a, b                                       ; $64a9: $78
    add a                                         ; $64aa: $87
    add a                                         ; $64ab: $87
    ld a, b                                       ; $64ac: $78
    ld hl, sp+$07                                 ; $64ad: $f8 $07
    rlca                                          ; $64af: $07
    ld hl, sp+$03                                 ; $64b0: $f8 $03
    nop                                           ; $64b2: $00
    rst $38                                       ; $64b3: $ff
    and b                                         ; $64b4: $a0
    rst $38                                       ; $64b5: $ff
    and b                                         ; $64b6: $a0
    rst $38                                       ; $64b7: $ff
    and b                                         ; $64b8: $a0
    ld sp, hl                                     ; $64b9: $f9
    nop                                           ; $64ba: $00
    nop                                           ; $64bb: $00
    nop                                           ; $64bc: $00
    rst $38                                       ; $64bd: $ff
    rst $38                                       ; $64be: $ff
    nop                                           ; $64bf: $00
    inc a                                         ; $64c0: $3c
    jp Jump_000_38c7                              ; $64c1: $c3 $c7 $38


    ld sp, hl                                     ; $64c4: $f9
    ld b, $ff                                     ; $64c5: $06 $ff
    ld c, $f1                                     ; $64c7: $0e $f1
    or $09                                        ; $64c9: $f6 $09
    add hl, de                                    ; $64cb: $19
    rst $20                                       ; $64cc: $e7
    rst $20                                       ; $64cd: $e7
    ld a, [de]                                    ; $64ce: $1a
    rst $38                                       ; $64cf: $ff
    db $ed                                        ; $64d0: $ed
    ld e, $de                                     ; $64d1: $1e $de
    inc sp                                        ; $64d3: $33
    inc sp                                        ; $64d4: $33
    pop hl                                        ; $64d5: $e1
    ld h, e                                       ; $64d6: $63
    pop bc                                        ; $64d7: $c1
    rst $38                                       ; $64d8: $ff
    add $83                                       ; $64d9: $c6 $83
    sbc l                                         ; $64db: $9d
    adc a                                         ; $64dc: $8f

jr_007_64dd:
    sub c                                         ; $64dd: $91
    rra                                           ; $64de: $1f
    rra                                           ; $64df: $1f
    ld de, $6fff                                  ; $64e0: $11 $ff $6f

jr_007_64e3:
    ldh a, [$d0]                                  ; $64e3: $f0 $d0
    sbc a                                         ; $64e5: $9f
    sbc a                                         ; $64e6: $9f
    sub b                                         ; $64e7: $90
    sub c                                         ; $64e8: $91
    ld e, $ff                                     ; $64e9: $1e $ff
    ld a, [de]                                    ; $64eb: $1a
    dec e                                         ; $64ec: $1d
    dec c                                         ; $64ed: $0d
    ld b, $06                                     ; $64ee: $06 $06
    inc bc                                        ; $64f0: $03
    inc bc                                        ; $64f1: $03
    ld bc, $ffff                                  ; $64f2: $01 $ff $ff
    nop                                           ; $64f5: $00
    sbc d                                         ; $64f6: $9a
    ld h, l                                       ; $64f7: $65
    halt                                          ; $64f8: $76
    adc c                                         ; $64f9: $89
    swap a                                        ; $64fa: $cb $37
    rst $38                                       ; $64fc: $ff
    cpl                                           ; $64fd: $2f
    call c, $30d8                                 ; $64fe: $dc $d8 $30
    jr nc, jr_007_64e3                            ; $6501: $30 $e0

    ld h, b                                       ; $6503: $60
    ret nz                                        ; $6504: $c0

    rst $38                                       ; $6505: $ff
    rst $38                                       ; $6506: $ff
    nop                                           ; $6507: $00
    jp $fc3c                                      ; $6508: $c3 $3c $fc


    inc bc                                        ; $650b: $03
    ld a, [de]                                    ; $650c: $1a
    push hl                                       ; $650d: $e5
    rst $38                                       ; $650e: $ff
    sbc e                                         ; $650f: $9b
    rst $38                                       ; $6510: $ff
    rst $20                                       ; $6511: $e7
    ld h, h                                       ; $6512: $64
    ld h, h                                       ; $6513: $64
    ld h, b                                       ; $6514: $60

jr_007_6515:
    ld h, b                                       ; $6515: $60
    ld h, b                                       ; $6516: $60
    rst $38                                       ; $6517: $ff
    rst $38                                       ; $6518: $ff
    nop                                           ; $6519: $00
    sub b                                         ; $651a: $90
    ld l, a                                       ; $651b: $6f
    nop                                           ; $651c: $00
    rst $38                                       ; $651d: $ff
    rrca                                          ; $651e: $0f
    ldh a, [rIE]                                  ; $651f: $f0 $ff
    ld a, b                                       ; $6521: $78
    add a                                         ; $6522: $87

Call_007_6523:
    add a                                         ; $6523: $87
    ld hl, sp-$08                                 ; $6524: $f8 $f8
    ld b, a                                       ; $6526: $47
    ld h, e                                       ; $6527: $63
    ld e, h                                       ; $6528: $5c
    rst $38                                       ; $6529: $ff
    cp h                                          ; $652a: $bc
    ld a, a                                       ; $652b: $7f
    ld b, a                                       ; $652c: $47
    jp $c061                                      ; $652d: $c3 $61 $c0


    and b                                         ; $6530: $a0
    ld h, b                                       ; $6531: $60
    rst $38                                       ; $6532: $ff
    jr nz, jr_007_6515                            ; $6533: $20 $e0

    db $e3                                        ; $6535: $e3
    ld [hl+], a                                   ; $6536: $22
    inc hl                                        ; $6537: $23
    db $e3                                        ; $6538: $e3
    ld [c], a                                     ; $6539: $e2
    inc hl                                        ; $653a: $23
    rst $38                                       ; $653b: $ff
    rst $38                                       ; $653c: $ff
    nop                                           ; $653d: $00
    ld e, h                                       ; $653e: $5c
    and e                                         ; $653f: $a3
    rst $00                                       ; $6540: $c7
    ld hl, sp+$68                                 ; $6541: $f8 $68
    scf                                           ; $6543: $37
    rst $38                                       ; $6544: $ff
    scf                                           ; $6545: $37
    jr jr_007_6562                                ; $6546: $18 $1a

    dec c                                         ; $6548: $0d
    adc l                                         ; $6549: $8d
    rlca                                          ; $654a: $07
    add a                                         ; $654b: $87
    add [hl]                                      ; $654c: $86
    rst $38                                       ; $654d: $ff
    rst $38                                       ; $654e: $ff
    nop                                           ; $654f: $00
    ld [hl], b                                    ; $6550: $70
    adc a                                         ; $6551: $8f
    rst $08                                       ; $6552: $cf
    jr nc, jr_007_656e                            ; $6553: $30 $19

    cp $ff                                        ; $6555: $fe $ff
    ld a, h                                       ; $6557: $7c
    rst $20                                       ; $6558: $e7
    rst $00                                       ; $6559: $c7
    add e                                         ; $655a: $83
    add e                                         ; $655b: $83
    inc bc                                        ; $655c: $03
    ld [bc], a                                    ; $655d: $02
    inc bc                                        ; $655e: $03
    cp $a0                                        ; $655f: $fe $a0
    pop hl                                        ; $6561: $e1

jr_007_6562:
    ld e, d                                       ; $6562: $5a
    cp l                                          ; $6563: $bd
    push hl                                       ; $6564: $e5
    ld h, $e6                                     ; $6565: $26 $e6
    rst $20                                       ; $6567: $e7
    ld bc, $fff6                                  ; $6568: $01 $f6 $ff
    ldh [$e6], a                                  ; $656b: $e0 $e6
    rst $20                                       ; $656d: $e7

jr_007_656e:
    and b                                         ; $656e: $a0
    db $e3                                        ; $656f: $e3
    sub [hl]                                      ; $6570: $96
    ld l, a                                       ; $6571: $6f
    ld e, a                                       ; $6572: $5f
    cp c                                          ; $6573: $b9
    rst $38                                       ; $6574: $ff
    or c                                          ; $6575: $b1
    ld h, b                                       ; $6576: $60
    ld h, b                                       ; $6577: $60
    ret nz                                        ; $6578: $c0

    ret nz                                        ; $6579: $c0

    add b                                         ; $657a: $80
    rst $38                                       ; $657b: $ff
    nop                                           ; $657c: $00
    rst $38                                       ; $657d: $ff
    sbc [hl]                                      ; $657e: $9e
    ld h, c                                       ; $657f: $61
    ld [hl], c                                    ; $6580: $71
    adc [hl]                                      ; $6581: $8e
    adc a                                         ; $6582: $8f
    ld [hl], b                                    ; $6583: $70
    ld a, b                                       ; $6584: $78
    add a                                         ; $6585: $87
    ccf                                           ; $6586: $3f
    rst $00                                       ; $6587: $c7
    cp b                                          ; $6588: $b8
    cp h                                          ; $6589: $bc
    jp $9ce3                                      ; $658a: $c3 $e3 $9c


    nop                                           ; $658d: $00
    nop                                           ; $658e: $00
    nop                                           ; $658f: $00
    rst $38                                       ; $6590: $ff
    rra                                           ; $6591: $1f
    ld [c], a                                     ; $6592: $e2
    pop af                                        ; $6593: $f1
    rrca                                          ; $6594: $0f
    rrca                                          ; $6595: $0f
    pop af                                        ; $6596: $f1
    ld hl, sp+$07                                 ; $6597: $f8 $07
    rst $38                                       ; $6599: $ff
    add a                                         ; $659a: $87
    ld a, b                                       ; $659b: $78
    ld a, h                                       ; $659c: $7c
    add e                                         ; $659d: $83
    jp Jump_000_003c                              ; $659e: $c3 $3c $00


    rst $38                                       ; $65a1: $ff
    rst $38                                       ; $65a2: $ff
    inc de                                        ; $65a3: $13
    dec e                                         ; $65a4: $1d
    dec e                                         ; $65a5: $1d

jr_007_65a6:
    inc de                                        ; $65a6: $13
    sbc [hl]                                      ; $65a7: $9e
    rrca                                          ; $65a8: $0f
    pop bc                                        ; $65a9: $c1
    add c                                         ; $65aa: $81
    rst $38                                       ; $65ab: $ff
    ld h, c                                       ; $65ac: $61
    pop bc                                        ; $65ad: $c1
    or c                                          ; $65ae: $b1
    ld h, c                                       ; $65af: $61
    sbc c                                         ; $65b0: $99
    ld [hl], c                                    ; $65b1: $71
    ld c, $ff                                     ; $65b2: $0e $ff
    rst $30                                       ; $65b4: $f7
    add hl, de                                    ; $65b5: $19
    ld de, $ff19                                  ; $65b6: $11 $19 $ff
    db $e3                                        ; $65b9: $e3
    jr jr_007_65d4                                ; $65ba: $18 $18

    jr jr_007_65a6                                ; $65bc: $18 $e8

    rst $38                                       ; $65be: $ff
    ld hl, sp+$07                                 ; $65bf: $f8 $07
    rst $38                                       ; $65c1: $ff
    call z, $8c84                                 ; $65c2: $cc $84 $8c
    adc h                                         ; $65c5: $8c
    adc h                                         ; $65c6: $8c
    rst $38                                       ; $65c7: $ff
    add h                                         ; $65c8: $84
    nop                                           ; $65c9: $00
    add b                                         ; $65ca: $80
    ldh [$c0], a                                  ; $65cb: $e0 $c0
    cp b                                          ; $65cd: $b8
    ldh a, [$8f]                                  ; $65ce: $f0 $8f
    rst $38                                       ; $65d0: $ff
    cp $19                                        ; $65d1: $fe $19
    rst $20                                       ; $65d3: $e7

jr_007_65d4:
    ld h, e                                       ; $65d4: $63
    ld h, c                                       ; $65d5: $61
    ld h, [hl]                                    ; $65d6: $66
    ld h, e                                       ; $65d7: $63
    ld h, l                                       ; $65d8: $65
    rst $38                                       ; $65d9: $ff
    ld h, [hl]                                    ; $65da: $66
    ld b, h                                       ; $65db: $44
    ld h, a                                       ; $65dc: $67
    ld h, $25                                     ; $65dd: $26 $25
    ld h, $25                                     ; $65df: $26 $25
    inc h                                         ; $65e1: $24
    rst $38                                       ; $65e2: $ff

jr_007_65e3:
    daa                                           ; $65e3: $27
    ret c                                         ; $65e4: $d8

    rst $38                                       ; $65e5: $ff
    sbc b                                         ; $65e6: $98
    rst $20                                       ; $65e7: $e7
    or d                                          ; $65e8: $b2
    ld c, l                                       ; $65e9: $4d
    cpl                                           ; $65ea: $2f
    rst $38                                       ; $65eb: $ff
    ret nc                                        ; $65ec: $d0

    jr c, @+$01                                   ; $65ed: $38 $ff

    xor $45                                       ; $65ef: $ee $45
    add $45                                       ; $65f1: $c6 $45
    rst $28                                       ; $65f3: $ef
    rst $38                                       ; $65f4: $ff
    ld b, h                                       ; $65f5: $44
    jr c, @+$01                                   ; $65f6: $38 $ff

    ld [hl+], a                                   ; $65f8: $22
    db $e3                                        ; $65f9: $e3
    ld h, e                                       ; $65fa: $63
    and e                                         ; $65fb: $a3
    db $e3                                        ; $65fc: $e3
    rst $38                                       ; $65fd: $ff
    ld [hl+], a                                   ; $65fe: $22
    and b                                         ; $65ff: $a0
    ld h, b                                       ; $6600: $60
    jr nz, jr_007_65e3                            ; $6601: $20 $e0

    ldh [rNR41], a                                ; $6603: $e0 $20
    db $e3                                        ; $6605: $e3
    rst $38                                       ; $6606: $ff
    ld hl, $ff1e                                  ; $6607: $21 $1e $ff
    add [hl]                                      ; $660a: $86
    add h                                         ; $660b: $84
    adc h                                         ; $660c: $8c
    inc b                                         ; $660d: $04
    jr @+$01                                      ; $660e: $18 $ff

    inc c                                         ; $6610: $0c
    inc [hl]                                      ; $6611: $34
    inc e                                         ; $6612: $1c
    ld h, e                                       ; $6613: $63
    ld a, $dd                                     ; $6614: $3e $dd
    ld h, e                                       ; $6616: $63
    add b                                         ; $6617: $80
    rst $38                                       ; $6618: $ff
    rst $38                                       ; $6619: $ff
    ld b, b                                       ; $661a: $40
    cp a                                          ; $661b: $bf
    ld h, e                                       ; $661c: $63
    ld [hl+], a                                   ; $661d: $22
    ld h, d                                       ; $661e: $62
    ld h, e                                       ; $661f: $63
    ld h, e                                       ; $6620: $63
    rst $38                                       ; $6621: $ff
    ld [hl+], a                                   ; $6622: $22
    ld [bc], a                                    ; $6623: $02
    inc bc                                        ; $6624: $03
    ld bc, $c101                                  ; $6625: $01 $01 $c1
    add c                                         ; $6628: $81
    ld a, c                                       ; $6629: $79
    rst $38                                       ; $662a: $ff
    pop af                                        ; $662b: $f1
    ld c, $ff                                     ; $662c: $0e $ff
    push hl                                       ; $662e: $e5
    daa                                           ; $662f: $27
    dec h                                         ; $6630: $25
    rst $20                                       ; $6631: $e7
    rst $20                                       ; $6632: $e7

Call_007_6633:
    rst $38                                       ; $6633: $ff
    inc hl                                        ; $6634: $23
    ld h, d                                       ; $6635: $62
    and e                                         ; $6636: $a3
    or e                                          ; $6637: $b3
    ld h, c                                       ; $6638: $61
    pop de                                        ; $6639: $d1
    ld sp, $f619                                  ; $663a: $31 $19 $f6
    ldh a, [$e0]                                  ; $663d: $f0 $e0
    sbc b                                         ; $663f: $98
    ld [$e087], sp                                ; $6640: $08 $87 $e0

jr_007_6643:
    ld [$0000], sp                                ; $6643: $08 $00 $00
    ret nz                                        ; $6646: $c0

    rst $38                                       ; $6647: $ff
    add b                                         ; $6648: $80
    ld [hl], b                                    ; $6649: $70
    ldh [rNR34], a                                ; $664a: $e0 $1e
    db $fc                                        ; $664c: $fc
    inc bc                                        ; $664d: $03
    rst $38                                       ; $664e: $ff
    sbc [hl]                                      ; $664f: $9e
    rst $38                                       ; $6650: $ff
    pop hl                                        ; $6651: $e1
    pop hl                                        ; $6652: $e1
    sbc [hl]                                      ; $6653: $9e
    sbc a                                         ; $6654: $9f
    ldh [$a0], a                                  ; $6655: $e0 $a0
    rst $18                                       ; $6657: $df
    ld e, a                                       ; $6658: $5f
    ld a, a                                       ; $6659: $7f
    ld h, b                                       ; $665a: $60
    ld [hl], b                                    ; $665b: $70
    ld c, a                                       ; $665c: $4f
    ld a, a                                       ; $665d: $7f
    ld b, b                                       ; $665e: $40
    add b                                         ; $665f: $80
    rst $38                                       ; $6660: $ff
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    rst $38                                       ; $6664: $ff
    db $ed                                        ; $6665: $ed
    ld e, $97                                     ; $6666: $1e $97
    ld [hl], e                                    ; $6668: $73
    ld [hl], b                                    ; $6669: $70
    sub b                                         ; $666a: $90
    ret c                                         ; $666b: $d8

    jr nc, @+$01                                  ; $666c: $30 $ff

    inc l                                         ; $666e: $2c
    ret c                                         ; $666f: $d8

    rst $10                                       ; $6670: $d7
    cpl                                           ; $6671: $2f
    jr nc, jr_007_6643                            ; $6672: $30 $cf

    rst $08                                       ; $6674: $cf
    jr nc, @-$1f                                  ; $6675: $30 $df

    rst $38                                       ; $6677: $ff
    nop                                           ; $6678: $00
    rst $38                                       ; $6679: $ff
    rst $38                                       ; $667a: $ff
    nop                                           ; $667b: $00
    rst $38                                       ; $667c: $ff

Jump_007_667d:
    ld [c], a                                     ; $667d: $e2
    rst $08                                       ; $667e: $cf
    rst $08                                       ; $667f: $cf
    rst $38                                       ; $6680: $ff
    ld c, a                                       ; $6681: $4f
    ret z                                         ; $6682: $c8

    ret                                           ; $6683: $c9


    ld c, [hl]                                    ; $6684: $4e
    rst $38                                       ; $6685: $ff
    nop                                           ; $6686: $00
    sub [hl]                                      ; $6687: $96
    jp hl                                         ; $6688: $e9


    rst $38                                       ; $6689: $ff
    ld l, c                                       ; $668a: $69
    ld d, [hl]                                    ; $668b: $56
    ld l, a                                       ; $668c: $6f
    ld d, b                                       ; $668d: $50
    halt                                          ; $668e: $76
    ld c, a                                       ; $668f: $4f
    sbc a                                         ; $6690: $9f
    ld sp, hl                                     ; $6691: $f9
    rst $38                                       ; $6692: $ff
    ld sp, $e0e0                                  ; $6693: $31 $e0 $e0
    ld b, b                                       ; $6696: $40
    sbc a                                         ; $6697: $9f
    ld h, b                                       ; $6698: $60
    cp [hl]                                       ; $6699: $be
    ld b, c                                       ; $669a: $41
    rst $38                                       ; $669b: $ff
    add hl, hl                                    ; $669c: $29
    sub $36                                       ; $669d: $d6 $36
    ret                                           ; $669f: $c9


    ld [hl], c                                    ; $66a0: $71
    adc [hl]                                      ; $66a1: $8e
    halt                                          ; $66a2: $76
    ld sp, hl                                     ; $66a3: $f9
    rst $38                                       ; $66a4: $ff
    sbc l                                         ; $66a5: $9d
    adc e                                         ; $66a6: $8b
    adc e                                         ; $66a7: $8b
    adc $ff                                       ; $66a8: $ce $ff
    nop                                           ; $66aa: $00
    ld a, a                                       ; $66ab: $7f
    add b                                         ; $66ac: $80
    rst $38                                       ; $66ad: $ff
    call nz, Call_000_303b                        ; $66ae: $c4 $3b $30
    rst $08                                       ; $66b1: $cf
    or [hl]                                       ; $66b2: $b6
    ld a, a                                       ; $66b3: $7f
    ld c, a                                       ; $66b4: $4f
    ret                                           ; $66b5: $c9


    rst $38                                       ; $66b6: $ff
    ret                                           ; $66b7: $c9


    ldh [rNR41], a                                ; $66b8: $e0 $20
    jr nz, jr_007_671c                            ; $66ba: $20 $60

    sbc a                                         ; $66bc: $9f
    add b                                         ; $66bd: $80
    ld a, a                                       ; $66be: $7f
    rst $38                                       ; $66bf: $ff
    rra                                           ; $66c0: $1f
    ldh [$f7], a                                  ; $66c1: $e0 $f7
    ld [$43bc], sp                                ; $66c3: $08 $bc $43
    ld h, b                                       ; $66c6: $60
    rst $38                                       ; $66c7: $ff
    rst $38                                       ; $66c8: $ff
    cp h                                          ; $66c9: $bc
    sbc a                                         ; $66ca: $9f
    add [hl]                                      ; $66cb: $86
    add e                                         ; $66cc: $83
    ld b, $f9                                     ; $66cd: $06 $f9
    nop                                           ; $66cf: $00
    rst $38                                       ; $66d0: $ff
    rst $38                                       ; $66d1: $ff
    ld hl, sp+$07                                 ; $66d2: $f8 $07
    call Call_000_3e3e                            ; $66d4: $cd $3e $3e
    di                                            ; $66d7: $f3
    ld h, e                                       ; $66d8: $63
    pop bc                                        ; $66d9: $c1
    rst $38                                       ; $66da: $ff
    pop bc                                        ; $66db: $c1
    add c                                         ; $66dc: $81
    add c                                         ; $66dd: $81
    ld bc, $00ff                                  ; $66de: $01 $ff $00
    cp $01                                        ; $66e1: $fe $01
    rst $38                                       ; $66e3: $ff
    ld bc, $0efe                                  ; $66e4: $01 $fe $0e
    pop af                                        ; $66e7: $f1
    jp $fb3c                                      ; $66e8: $c3 $3c $fb


    rst $38                                       ; $66eb: $ff
    rst $38                                       ; $66ec: $ff
    rlca                                          ; $66ed: $07
    inc b                                         ; $66ee: $04
    nop                                           ; $66ef: $00
    nop                                           ; $66f0: $00
    ld sp, hl                                     ; $66f1: $f9
    ld b, $55                                     ; $66f2: $06 $55
    xor d                                         ; $66f4: $aa
    rst $38                                       ; $66f5: $ff
    add sp, $17                                   ; $66f6: $e8 $17
    ld l, h                                       ; $66f8: $6c
    sub e                                         ; $66f9: $93
    or a                                          ; $66fa: $b7
    ld c, a                                       ; $66fb: $4f
    ld c, l                                       ; $66fc: $4d
    cp b                                          ; $66fd: $b8
    rst $38                                       ; $66fe: $ff
    sbc b                                         ; $66ff: $98
    ldh a, [$f0]                                  ; $6700: $f0 $f0
    ld h, b                                       ; $6702: $60
    rst $38                                       ; $6703: $ff
    nop                                           ; $6704: $00
    xor $11                                       ; $6705: $ee $11
    rst $38                                       ; $6707: $ff
    xor c                                         ; $6708: $a9
    ld d, [hl]                                    ; $6709: $56
    sub $29                                       ; $670a: $d6 $29
    ld d, b                                       ; $670c: $50
    xor a                                         ; $670d: $af
    or a                                          ; $670e: $b7
    ld sp, hl                                     ; $670f: $f9
    rst $28                                       ; $6710: $ef
    sbc $4f                                       ; $6711: $de $4f
    ld b, e                                       ; $6713: $43
    ld b, c                                       ; $6714: $41
    and b                                         ; $6715: $a0
    pop hl                                        ; $6716: $e1
    ret c                                         ; $6717: $d8

    ccf                                           ; $6718: $3f
    daa                                           ; $6719: $27
    rst $28                                       ; $671a: $ef
    db $e4                                        ; $671b: $e4

jr_007_671c:
    and $e7                                       ; $671c: $e6 $e7
    ld bc, $e0ff                                  ; $671e: $01 $ff $e0
    ld h, [hl]                                    ; $6721: $66
    rst $20                                       ; $6722: $e7

Call_007_6723:
    rst $38                                       ; $6723: $ff
    rst $38                                       ; $6724: $ff
    nop                                           ; $6725: $00
    rst $00                                       ; $6726: $c7
    jr c, @+$3a                                   ; $6727: $38 $38

    rst $00                                       ; $6729: $c7
    or a                                          ; $672a: $b7
    ld a, b                                       ; $672b: $78
    ld l, h                                       ; $672c: $6c
    ld a, a                                       ; $672d: $7f
    set 1, e                                      ; $672e: $cb $cb
    adc h                                         ; $6730: $8c
    adc [hl]                                      ; $6731: $8e
    add hl, bc                                    ; $6732: $09
    ld sp, $001e                                  ; $6733: $31 $1e $00
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    rst $38                                       ; $6738: $ff
    inc a                                         ; $6739: $3c
    jp $1ce3                                      ; $673a: $c3 $e3 $1c


    sbc [hl]                                      ; $673d: $9e
    ld h, c                                       ; $673e: $61
    ld [hl], c                                    ; $673f: $71
    adc [hl]                                      ; $6740: $8e
    rst $38                                       ; $6741: $ff
    rst $08                                       ; $6742: $cf
    jr nc, jr_007_6777                            ; $6743: $30 $32

    call Call_000_00ff                            ; $6745: $cd $ff $00
    nop                                           ; $6748: $00
    rst $38                                       ; $6749: $ff
    rst $38                                       ; $674a: $ff
    ld c, [hl]                                    ; $674b: $4e
    ret                                           ; $674c: $c9


    ld c, a                                       ; $674d: $4f
    ret z                                         ; $674e: $c8

    ret                                           ; $674f: $c9


    adc [hl]                                      ; $6750: $8e
    adc [hl]                                      ; $6751: $8e
    adc c                                         ; $6752: $89
    rst $38                                       ; $6753: $ff
    res 1, h                                      ; $6754: $cb $8c
    ld c, h                                       ; $6756: $4c
    set 1, a                                      ; $6757: $cb $cf
    ld c, b                                       ; $6759: $48
    jr nc, @+$01                                  ; $675a: $30 $ff

    rst $28                                       ; $675c: $ef
    ld c, h                                       ; $675d: $4c
    ret nz                                        ; $675e: $c0

    call z, $ff8c                                 ; $675f: $cc $8c $ff
    ldh [$88], a                                  ; $6762: $e0 $88
    ret nz                                        ; $6764: $c0

    add b                                         ; $6765: $80
    rst $38                                       ; $6766: $ff
    ld h, e                                       ; $6767: $63
    pop bc                                        ; $6768: $c1
    ld [hl], $e7                                  ; $6769: $36 $e7
    jr @+$01                                      ; $676b: $18 $ff

    adc $4a                                       ; $676d: $ce $4a
    rst $38                                       ; $676f: $ff
    ld c, d                                       ; $6770: $4a
    ld c, [hl]                                    ; $6771: $4e
    ld c, [hl]                                    ; $6772: $4e
    ld b, h                                       ; $6773: $44
    ldh [rLCDC], a                                ; $6774: $e0 $40
    and b                                         ; $6776: $a0

jr_007_6777:
    ldh [rIE], a                                  ; $6777: $e0 $ff
    ld sp, $1be0                                  ; $6779: $31 $e0 $1b
    pop af                                        ; $677c: $f1
    ld c, $ff                                     ; $677d: $0e $ff
    daa                                           ; $677f: $27
    inc hl                                        ; $6780: $23
    rst $38                                       ; $6781: $ff
    ld l, l                                       ; $6782: $6d
    daa                                           ; $6783: $27
    ld c, e                                       ; $6784: $4b
    ld l, l                                       ; $6785: $6d
    ld c, e                                       ; $6786: $4b
    ld c, l                                       ; $6787: $4d
    ret                                           ; $6788: $c9


    ld c, a                                       ; $6789: $4f
    rst $38                                       ; $678a: $ff
    adc l                                         ; $678b: $8d
    bit 1, c                                      ; $678c: $cb $49
    rst $08                                       ; $678e: $cf
    ld [hl-], a                                   ; $678f: $32
    db $fd                                        ; $6790: $fd
    inc bc                                        ; $6791: $03
    add c                                         ; $6792: $81
    rst $18                                       ; $6793: $df
    ld bc, $1901                                  ; $6794: $01 $01 $19
    ld de, $ff19                                  ; $6797: $11 $19 $ff
    db $e4                                        ; $679a: $e4
    and $ff                                       ; $679b: $e6 $ff
    rst $38                                       ; $679d: $ff
    ld sp, $3111                                  ; $679e: $31 $11 $31
    ld sp, $1131                                  ; $67a1: $31 $31 $11
    ld bc, $7f01                                  ; $67a4: $01 $01 $7f
    add b                                         ; $67a7: $80
    nop                                           ; $67a8: $00
    ldh [$c0], a                                  ; $67a9: $e0 $c0
    cp h                                          ; $67ab: $bc
    ld a, b                                       ; $67ac: $78
    rlca                                          ; $67ad: $07
    sbc l                                         ; $67ae: $9d
    ldh [$bf], a                                  ; $67af: $e0 $bf
    nop                                           ; $67b1: $00
    nop                                           ; $67b2: $00
    db $10                                        ; $67b3: $10
    db $10                                        ; $67b4: $10
    ld [de], a                                    ; $67b5: $12
    sub d                                         ; $67b6: $92
    rst $38                                       ; $67b7: $ff
    db $e3                                        ; $67b8: $e3
    ld l, l                                       ; $67b9: $6d
    rst $38                                       ; $67ba: $ff
    rst $38                                       ; $67bb: $ff
    ld h, h                                       ; $67bc: $64
    ld b, h                                       ; $67bd: $44
    ld b, c                                       ; $67be: $41
    ld b, b                                       ; $67bf: $40
    ld b, a                                       ; $67c0: $47
    ld b, e                                       ; $67c1: $43
    ld b, [hl]                                    ; $67c2: $46
    rst $38                                       ; $67c3: $ff
    ld b, a                                       ; $67c4: $47
    ld b, e                                       ; $67c5: $43
    ld b, c                                       ; $67c6: $41
    ld h, c                                       ; $67c7: $61
    ld b, b                                       ; $67c8: $40
    ld a, b                                       ; $67c9: $78
    ld [hl], b                                    ; $67ca: $70
    adc a                                         ; $67cb: $8f
    rst $38                                       ; $67cc: $ff
    rst $38                                       ; $67cd: $ff
    pop bc                                        ; $67ce: $c1
    ld b, b                                       ; $67cf: $40
    add b                                         ; $67d0: $80
    ret nz                                        ; $67d1: $c0

    inc c                                         ; $67d2: $0c
    adc b                                         ; $67d3: $88
    adc h                                         ; $67d4: $8c
    ei                                            ; $67d5: $fb
    adc h                                         ; $67d6: $8c
    inc c                                         ; $67d7: $0c
    adc d                                         ; $67d8: $8a
    pop hl                                        ; $67d9: $e1
    adc h                                         ; $67da: $8c
    ld [hl], e                                    ; $67db: $73
    rst $38                                       ; $67dc: $ff
    and [hl]                                      ; $67dd: $a6
    and $ff                                       ; $67de: $e6 $ff
    push hl                                       ; $67e0: $e5
    and [hl]                                      ; $67e1: $a6
    and a                                         ; $67e2: $a7
    db $e3                                        ; $67e3: $e3
    ld [c], a                                     ; $67e4: $e2
    and e                                         ; $67e5: $a3
    or e                                          ; $67e6: $b3
    pop hl                                        ; $67e7: $e1
    rst $38                                       ; $67e8: $ff
    pop de                                        ; $67e9: $d1
    or c                                          ; $67ea: $b1
    pop af                                        ; $67eb: $f1
    sub c                                         ; $67ec: $91
    ld c, $ff                                     ; $67ed: $0e $ff
    ld a, a                                       ; $67ef: $7f
    jr nc, @+$01                                  ; $67f0: $30 $ff

jr_007_67f2:
    inc e                                         ; $67f2: $1c
    dec bc                                        ; $67f3: $0b
    adc e                                         ; $67f4: $8b
    inc c                                         ; $67f5: $0c
    adc [hl]                                      ; $67f6: $8e
    adc c                                         ; $67f7: $89
    sbc c                                         ; $67f8: $99
    ld c, $3f                                     ; $67f9: $0e $3f
    scf                                           ; $67fb: $37
    jr jr_007_686a                                ; $67fc: $18 $6c

    inc sp                                        ; $67fe: $33
    ret nz                                        ; $67ff: $c0

    rst $38                                       ; $6800: $ff
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    rst $38                                       ; $6804: $ff
    rst $28                                       ; $6805: $ef
    rra                                           ; $6806: $1f
    ei                                            ; $6807: $fb
    ld [de], a                                    ; $6808: $12
    ld [de], a                                    ; $6809: $12
    ldh a, [$f0]                                  ; $680a: $f0 $f0
    jr nz, @+$01                                  ; $680c: $20 $ff

    and b                                         ; $680e: $a0
    ld h, b                                       ; $680f: $60
    jr nz, jr_007_67f2                            ; $6810: $20 $e0

    push hl                                       ; $6812: $e5
    ld b, b                                       ; $6813: $40
    ld b, l                                       ; $6814: $45
    push bc                                       ; $6815: $c5
    rst $38                                       ; $6816: $ff
    rst $28                                       ; $6817: $ef
    ldh a, [$39]                                  ; $6818: $f0 $39
    ld d, $17                                     ; $681a: $16 $17
    jr jr_007_682e                                ; $681c: $18 $10

    rra                                           ; $681e: $1f
    rst $38                                       ; $681f: $ff
    rra                                           ; $6820: $1f
    ld [$0f88], sp                                ; $6821: $08 $88 $0f
    adc d                                         ; $6824: $8a
    adc l                                         ; $6825: $8d
    call $ff87                                    ; $6826: $cd $87 $ff
    ld hl, sp+$07                                 ; $6829: $f8 $07
    add hl, sp                                    ; $682b: $39
    add $83                                       ; $682c: $c6 $83

jr_007_682e:
    ld a, h                                       ; $682e: $7c
    ld l, h                                       ; $682f: $6c
    sbc a                                         ; $6830: $9f
    rst $38                                       ; $6831: $ff
    cp [hl]                                       ; $6832: $be
    ld [hl], e                                    ; $6833: $73
    ld h, e                                       ; $6834: $63

jr_007_6835:
    pop bc                                        ; $6835: $c1
    pop bc                                        ; $6836: $c1
    add c                                         ; $6837: $81
    add c                                         ; $6838: $81
    ld bc, $e7ff                                  ; $6839: $01 $ff $e7
    jr jr_007_6835                                ; $683c: $18 $f7

    ld [$3fd8], sp                                ; $683e: $08 $d8 $3f
    daa                                           ; $6841: $27
    db $e4                                        ; $6842: $e4
    rst $30                                       ; $6843: $f7
    and $e7                                       ; $6844: $e6 $e7

jr_007_6846:
    ld bc, $e0ff                                  ; $6846: $01 $ff $e0
    and $e7                                       ; $6849: $e6 $e7
    ld a, c                                       ; $684b: $79
    add a                                         ; $684c: $87
    rst $38                                       ; $684d: $ff
    dec sp                                        ; $684e: $3b
    add $12                                       ; $684f: $c6 $12
    xor $de                                       ; $6851: $ee $de
    inc h                                         ; $6853: $24
    jr @-$02                                      ; $6854: $18 $fc

    rst $38                                       ; $6856: $ff
    ld [hl], h                                    ; $6857: $74
    db $e4                                        ; $6858: $e4
    call nz, $8484                                ; $6859: $c4 $84 $84
    inc b                                         ; $685c: $04
    adc e                                         ; $685d: $8b
    db $f4                                        ; $685e: $f4
    rst $38                                       ; $685f: $ff
    ld b, e                                       ; $6860: $43
    ld a, h                                       ; $6861: $7c
    ld d, e                                       ; $6862: $53
    ld l, h                                       ; $6863: $6c
    ld d, b                                       ; $6864: $50
    ld l, a                                       ; $6865: $6f
    ld h, b                                       ; $6866: $60
    ld a, a                                       ; $6867: $7f
    rst $38                                       ; $6868: $ff
    scf                                           ; $6869: $37

jr_007_686a:
    jr jr_007_6887                                ; $686a: $18 $1b

    inc c                                         ; $686c: $0c
    inc c                                         ; $686d: $0c
    rlca                                          ; $686e: $07
    db $d3                                        ; $686f: $d3
    inc l                                         ; $6870: $2c
    rst $38                                       ; $6871: $ff
    pop bc                                        ; $6872: $c1
    ccf                                           ; $6873: $3f
    dec bc                                        ; $6874: $0b
    or $0e                                        ; $6875: $f6 $0e
    db $f4                                        ; $6877: $f4
    inc b                                         ; $6878: $04
    db $fc                                        ; $6879: $fc
    rst $38                                       ; $687a: $ff
    db $ec                                        ; $687b: $ec
    jr jr_007_6846                                ; $687c: $18 $c8

    jr c, jr_007_68b9                             ; $687e: $38 $39

    ret nc                                        ; $6880: $d0

    halt                                          ; $6881: $76
    ld sp, hl                                     ; $6882: $f9
    rst $38                                       ; $6883: $ff
    adc b                                         ; $6884: $88
    adc a                                         ; $6885: $8f
    add hl, bc                                    ; $6886: $09

jr_007_6887:
    ld c, $0b                                     ; $6887: $0e $0b
    inc c                                         ; $6889: $0c
    ld [hl], b                                    ; $688a: $70
    ccf                                           ; $688b: $3f
    rst $38                                       ; $688c: $ff
    ret nc                                        ; $688d: $d0

    ld l, a                                       ; $688e: $6f
    and l                                         ; $688f: $a5
    db $db                                        ; $6890: $db
    db $dd                                        ; $6891: $dd
    cp [hl]                                       ; $6892: $be
    rst $20                                       ; $6893: $e7
    jr @+$01                                      ; $6894: $18 $ff

    xor h                                         ; $6896: $ac
    ld d, e                                       ; $6897: $53
    adc a                                         ; $6898: $8f
    ld [hl], b                                    ; $6899: $70
    ld e, b                                       ; $689a: $58
    cp a                                          ; $689b: $bf
    ld a, l                                       ; $689c: $7d
    and $ff                                       ; $689d: $e6 $ff
    rst $00                                       ; $689f: $c7
    add e                                         ; $68a0: $83
    add d                                         ; $68a1: $82
    ld [bc], a                                    ; $68a2: $02
    ld [bc], a                                    ; $68a3: $02
    ld [bc], a                                    ; $68a4: $02
    rra                                           ; $68a5: $1f
    ldh [rIE], a                                  ; $68a6: $e0 $ff
    sbc e                                         ; $68a8: $9b
    ld h, h                                       ; $68a9: $64
    call z, Call_000_0f33                         ; $68aa: $cc $33 $0f
    ldh a, [$c8]                                  ; $68ad: $f0 $c8
    scf                                           ; $68af: $37
    rst $38                                       ; $68b0: $ff
    or $ff                                        ; $68b1: $f6 $ff
    rrca                                          ; $68b3: $0f
    add hl, bc                                    ; $68b4: $09
    ld bc, $ff00                                  ; $68b5: $01 $00 $ff
    nop                                           ; $68b8: $00

jr_007_68b9:
    rst $38                                       ; $68b9: $ff
    cp a                                          ; $68ba: $bf
    ld b, b                                       ; $68bb: $40
    ld [hl], b                                    ; $68bc: $70
    adc a                                         ; $68bd: $8f
    rst $08                                       ; $68be: $cf
    jr nc, @+$70                                  ; $68bf: $30 $6e

    sbc a                                         ; $68c1: $9f
    rst $38                                       ; $68c2: $ff
    sbc e                                         ; $68c3: $9b
    ld [hl], c                                    ; $68c4: $71
    ld sp, $e0e0                                  ; $68c5: $31 $e0 $e0
    ret nz                                        ; $68c8: $c0

    rst $38                                       ; $68c9: $ff
    nop                                           ; $68ca: $00
    rst $38                                       ; $68cb: $ff
    pop bc                                        ; $68cc: $c1
    ld a, $7f                                     ; $68cd: $3e $7f
    add b                                         ; $68cf: $80
    adc h                                         ; $68d0: $8c
    ld a, a                                       ; $68d1: $7f
    ld e, e                                       ; $68d2: $5b
    or d                                          ; $68d3: $b2
    ccf                                           ; $68d4: $3f
    ld [hl-], a                                   ; $68d5: $32
    db $e3                                        ; $68d6: $e3
    db $e3                                        ; $68d7: $e3
    jp nz, $87cc                                  ; $68d8: $c2 $cc $87

    nop                                           ; $68db: $00
    nop                                           ; $68dc: $00
    nop                                           ; $68dd: $00
    rst $38                                       ; $68de: $ff
    ld b, a                                       ; $68df: $47
    push bc                                       ; $68e0: $c5
    adc $87                                       ; $68e1: $ce $87
    adc [hl]                                      ; $68e3: $8e
    adc c                                         ; $68e4: $89
    adc l                                         ; $68e5: $8d
    adc d                                         ; $68e6: $8a
    rst $38                                       ; $68e7: $ff
    adc e                                         ; $68e8: $8b
    adc h                                         ; $68e9: $8c
    adc $89                                       ; $68ea: $ce $89
    ld l, c                                       ; $68ec: $69
    adc $30                                       ; $68ed: $ce $30
    rst $38                                       ; $68ef: $ff
    rst $38                                       ; $68f0: $ff
    ld b, a                                       ; $68f1: $47
    add $c4                                       ; $68f2: $c6 $c4
    ld b, [hl]                                    ; $68f4: $46
    and $42                                       ; $68f5: $e6 $42
    and d                                         ; $68f7: $a2
    ld h, d                                       ; $68f8: $62
    rst $38                                       ; $68f9: $ff
    ld [hl], e                                    ; $68fa: $73
    and e                                         ; $68fb: $a3
    jp nc, $fa33                                  ; $68fc: $d2 $33 $fa

    inc de                                        ; $68ff: $13
    inc c                                         ; $6900: $0c
    rst $38                                       ; $6901: $ff
    rst $38                                       ; $6902: $ff
    ld sp, $3111                                  ; $6903: $31 $11 $31
    ld sp, $1131                                  ; $6906: $31 $31 $11
    ld bc, $ff01                                  ; $6909: $01 $01 $ff
    add b                                         ; $690c: $80
    nop                                           ; $690d: $00
    ldh [$c0], a                                  ; $690e: $e0 $c0
    inc a                                         ; $6910: $3c
    ld hl, sp+$07                                 ; $6911: $f8 $07
    rst $38                                       ; $6913: $ff
    rst $38                                       ; $6914: $ff
    push hl                                       ; $6915: $e5
    daa                                           ; $6916: $27
    dec h                                         ; $6917: $25
    and $e6                                       ; $6918: $e6 $e6
    ld [hl+], a                                   ; $691a: $22
    ld h, d                                       ; $691b: $62
    and e                                         ; $691c: $a3
    rst $38                                       ; $691d: $ff
    or e                                          ; $691e: $b3
    pop hl                                        ; $691f: $e1
    sub c                                         ; $6920: $91
    pop af                                        ; $6921: $f1
    sub c                                         ; $6922: $91
    pop af                                        ; $6923: $f1
    ld c, [hl]                                    ; $6924: $4e
    cp a                                          ; $6925: $bf
    rst $38                                       ; $6926: $ff
    jr c, jr_007_6945                             ; $6927: $38 $1c

    inc h                                         ; $6929: $24
    inc a                                         ; $692a: $3c
    inc h                                         ; $692b: $24
    inc a                                         ; $692c: $3c
    inc e                                         ; $692d: $1c
    ld e, $ff                                     ; $692e: $1e $ff
    add d                                         ; $6930: $82
    ld [bc], a                                    ; $6931: $02
    add $82                                       ; $6932: $c6 $82
    ld a, l                                       ; $6934: $7d
    rst $20                                       ; $6935: $e7
    jr @+$01                                      ; $6936: $18 $ff

    rst $38                                       ; $6938: $ff
    ld h, a                                       ; $6939: $67
    ld b, h                                       ; $693a: $44
    ld h, h                                       ; $693b: $64
    ld h, a                                       ; $693c: $67
    ld h, a                                       ; $693d: $67
    ld h, h                                       ; $693e: $64
    ld h, l                                       ; $693f: $65
    ld h, [hl]                                    ; $6940: $66
    rst $38                                       ; $6941: $ff
    ld h, [hl]                                    ; $6942: $66
    ld h, e                                       ; $6943: $63
    ld h, e                                       ; $6944: $63

jr_007_6945:
    ld h, d                                       ; $6945: $62
    and d                                         ; $6946: $a2
    db $e3                                        ; $6947: $e3
    inc e                                         ; $6948: $1c
    rst $38                                       ; $6949: $ff
    rst $38                                       ; $694a: $ff
    pop de                                        ; $694b: $d1
    ld sp, $61b1                                  ; $694c: $31 $b1 $61
    ld [hl], c                                    ; $694f: $71
    and b                                         ; $6950: $a0
    ret c                                         ; $6951: $d8

    jr nc, @+$01                                  ; $6952: $30 $ff

    inc l                                         ; $6954: $2c
    ret c                                         ; $6955: $d8

    or $0c                                        ; $6956: $f6 $0c
    inc bc                                        ; $6958: $03
    rst $38                                       ; $6959: $ff
    nop                                           ; $695a: $00
    rst $38                                       ; $695b: $ff
    rst $38                                       ; $695c: $ff
    ld h, d                                       ; $695d: $62
    and d                                         ; $695e: $a2
    ld h, d                                       ; $695f: $62
    and d                                         ; $6960: $a2
    ld [c], a                                     ; $6961: $e2
    ld [c], a                                     ; $6962: $e2
    ld h, d                                       ; $6963: $62
    ld [hl+], a                                   ; $6964: $22
    rst $38                                       ; $6965: $ff
    inc bc                                        ; $6966: $03
    ld [bc], a                                    ; $6967: $02
    inc bc                                        ; $6968: $03
    inc bc                                        ; $6969: $03
    jp nz, Jump_007_7c83                          ; $696a: $c2 $83 $7c

    rst $38                                       ; $696d: $ff
    rst $38                                       ; $696e: $ff
    ld h, d                                       ; $696f: $62
    ld [hl+], a                                   ; $6970: $22
    ld h, d                                       ; $6971: $62
    ld h, d                                       ; $6972: $62
    ld h, d                                       ; $6973: $62
    ld [hl+], a                                   ; $6974: $22
    ld [bc], a                                    ; $6975: $02
    inc bc                                        ; $6976: $03
    rst $38                                       ; $6977: $ff
    ld bc, $c101                                  ; $6978: $01 $01 $c1
    add c                                         ; $697b: $81
    ld a, c                                       ; $697c: $79
    pop af                                        ; $697d: $f1
    ld c, $ff                                     ; $697e: $0e $ff
    db $dd                                        ; $6980: $dd
    nop                                           ; $6981: $00
    rst $38                                       ; $6982: $ff
    ldh [rNR41], a                                ; $6983: $e0 $20
    jr nz, @+$26                                  ; $6985: $20 $24

    rst $38                                       ; $6987: $ff
    db $e4                                        ; $6988: $e4
    db $db                                        ; $6989: $db
    rst $38                                       ; $698a: $ff
    rst $38                                       ; $698b: $ff
    ret                                           ; $698c: $c9


    adc b                                         ; $698d: $88

jr_007_698e:
    add e                                         ; $698e: $83
    add c                                         ; $698f: $81
    adc [hl]                                      ; $6990: $8e
    add a                                         ; $6991: $87
    adc h                                         ; $6992: $8c
    adc a                                         ; $6993: $8f
    rst $38                                       ; $6994: $ff
    add [hl]                                      ; $6995: $86
    add e                                         ; $6996: $83
    jp $f181                                      ; $6997: $c3 $81 $f1


    pop hl                                        ; $699a: $e1
    ld e, $ff                                     ; $699b: $1e $ff
    rst $38                                       ; $699d: $ff
    sbc a                                         ; $699e: $9f
    adc h                                         ; $699f: $8c
    ld b, [hl]                                    ; $69a0: $46
    add e                                         ; $69a1: $83
    ld h, e                                       ; $69a2: $63
    jp nz, $e223                                  ; $69a3: $c2 $23 $e2

    rst $38                                       ; $69a6: $ff
    and $43                                       ; $69a7: $e6 $43
    ld c, l                                       ; $69a9: $4d
    add $d8                                       ; $69aa: $c6 $d8
    ld c, a                                       ; $69ac: $4f
    jr nc, @+$01                                  ; $69ad: $30 $ff

    nop                                           ; $69af: $00
    nop                                           ; $69b0: $00
    nop                                           ; $69b1: $00
    rst $38                                       ; $69b2: $ff
    rst $38                                       ; $69b3: $ff
    nop                                           ; $69b4: $00
    dec sp                                        ; $69b5: $3b
    call nz, Call_000_38c7                        ; $69b6: $c4 $c7 $38
    ld a, b                                       ; $69b9: $78
    add a                                         ; $69ba: $87
    rst $38                                       ; $69bb: $ff
    adc a                                         ; $69bc: $8f
    ld [hl], b                                    ; $69bd: $70
    ld hl, sp+$07                                 ; $69be: $f8 $07
    rlca                                          ; $69c0: $07
    ld hl, sp-$04                                 ; $69c1: $f8 $fc
    inc bc                                        ; $69c3: $03
    rst $28                                       ; $69c4: $ef
    rst $38                                       ; $69c5: $ff
    nop                                           ; $69c6: $00
    inc a                                         ; $69c7: $3c
    jp $e3f0                                      ; $69c8: $c3 $f0 $e3


    di                                            ; $69cb: $f3
    inc c                                         ; $69cc: $0c
    inc e                                         ; $69cd: $1c
    rst $38                                       ; $69ce: $ff
    db $e3                                        ; $69cf: $e3
    rst $20                                       ; $69d0: $e7
    jr @+$01                                      ; $69d1: $18 $ff

    nop                                           ; $69d3: $00
    pop hl                                        ; $69d4: $e1
    ld e, $9f                                     ; $69d5: $1e $9f
    rst $38                                       ; $69d7: $ff
    ld h, b                                       ; $69d8: $60
    ld h, b                                       ; $69d9: $60
    sbc a                                         ; $69da: $9f
    rst $18                                       ; $69db: $df
    jr nz, jr_007_698e                            ; $69dc: $20 $b0

    ld c, a                                       ; $69de: $4f
    ld a, a                                       ; $69df: $7f
    rst $38                                       ; $69e0: $ff
    add b                                         ; $69e1: $80
    jp $f83c                                      ; $69e2: $c3 $3c $f8


    rlca                                          ; $69e5: $07
    pop af                                        ; $69e6: $f1
    rrca                                          ; $69e7: $0f
    dec bc                                        ; $69e8: $0b
    rst $38                                       ; $69e9: $ff
    or $f6                                        ; $69ea: $f6 $f6
    inc c                                         ; $69ec: $0c
    adc h                                         ; $69ed: $8c
    ld a, b                                       ; $69ee: $78
    ld a, b                                       ; $69ef: $78
    adc b                                         ; $69f0: $88
    call z, Call_000_38ff                         ; $69f1: $cc $ff $38
    ld [hl], $cc                                  ; $69f4: $36 $cc
    rst $28                                       ; $69f6: $ef
    ldh a, [rNR33]                                ; $69f7: $f0 $1d
    ld [de], a                                    ; $69f9: $12
    inc sp                                        ; $69fa: $33
    rst $38                                       ; $69fb: $ff
    inc e                                         ; $69fc: $1c
    ld l, [hl]                                    ; $69fd: $6e
    ld sp, $7fc3                                  ; $69fe: $31 $c3 $7f
    call c, Call_007_74e4                         ; $6a01: $dc $e4 $74
    rst $38                                       ; $6a04: $ff
    inc a                                         ; $6a05: $3c
    dec de                                        ; $6a06: $1b
    rrca                                          ; $6a07: $0f
    add b                                         ; $6a08: $80
    ld a, a                                       ; $6a09: $7f
    pop bc                                        ; $6a0a: $c1
    ld a, $6c                                     ; $6a0b: $3e $6c
    rst $38                                       ; $6a0d: $ff
    di                                            ; $6a0e: $f3
    sub c                                         ; $6a0f: $91
    sbc [hl]                                      ; $6a10: $9e
    sbc e                                         ; $6a11: $9b
    sbc h                                         ; $6a12: $9c
    inc b                                         ; $6a13: $04
    rlca                                          ; $6a14: $07
    dec b                                         ; $6a15: $05
    rst $38                                       ; $6a16: $ff
    rlca                                          ; $6a17: $07
    sbc e                                         ; $6a18: $9b
    sbc [hl]                                      ; $6a19: $9e
    ld bc, $83fe                                  ; $6a1a: $01 $fe $83
    ld a, h                                       ; $6a1d: $7c
    dec sp                                        ; $6a1e: $3b
    rst $38                                       ; $6a1f: $ff
    call nz, Call_000_3dda                        ; $6a20: $c4 $da $3d
    ld a, h                                       ; $6a23: $7c
    rst $20                                       ; $6a24: $e7
    rst $00                                       ; $6a25: $c7
    add e                                         ; $6a26: $83
    add e                                         ; $6a27: $83
    ei                                            ; $6a28: $fb
    inc bc                                        ; $6a29: $03
    inc bc                                        ; $6a2a: $03
    and b                                         ; $6a2b: $a0
    and $da                                       ; $6a2c: $e6 $da
    db $fd                                        ; $6a2e: $fd
    inc a                                         ; $6a2f: $3c
    daa                                           ; $6a30: $27
    daa                                           ; $6a31: $27
    rst $38                                       ; $6a32: $ff
    inc bc                                        ; $6a33: $03
    inc bc                                        ; $6a34: $03
    ld [bc], a                                    ; $6a35: $02
    sbc a                                         ; $6a36: $9f

jr_007_6a37:
    ld h, b                                       ; $6a37: $60
    sub c                                         ; $6a38: $91
    ld l, [hl]                                    ; $6a39: $6e
    ccf                                           ; $6a3a: $3f
    rst $38                                       ; $6a3b: $ff
    ret nz                                        ; $6a3c: $c0

    jr nc, @+$01                                  ; $6a3d: $30 $ff

    ld l, a                                       ; $6a3f: $6f
    ret z                                         ; $6a40: $c8

    ret z                                         ; $6a41: $c8

    adc a                                         ; $6a42: $8f
    adc a                                         ; $6a43: $8f
    rst $38                                       ; $6a44: $ff
    ld [$1c33], sp                                ; $6a45: $08 $33 $1c
    rst $38                                       ; $6a48: $ff
    nop                                           ; $6a49: $00
    di                                            ; $6a4a: $f3
    inc c                                         ; $6a4b: $0c
    rrca                                          ; $6a4c: $0f
    rst $38                                       ; $6a4d: $ff
    ldh a, [$f8]                                  ; $6a4e: $f0 $f8
    rlca                                          ; $6a50: $07
    add a                                         ; $6a51: $87
    ld a, b                                       ; $6a52: $78
    ld a, h                                       ; $6a53: $7c
    add e                                         ; $6a54: $83
    jp Jump_000_3cff                              ; $6a55: $c3 $ff $3c


    ld a, $c1                                     ; $6a58: $3e $c1
    rst $38                                       ; $6a5a: $ff
    nop                                           ; $6a5b: $00
    db $fd                                        ; $6a5c: $fd
    ld [bc], a                                    ; $6a5d: $02
    inc bc                                        ; $6a5e: $03
    rst $38                                       ; $6a5f: $ff
    db $fc                                        ; $6a60: $fc
    cp $01                                        ; $6a61: $fe $01
    ld bc, $fffe                                  ; $6a63: $01 $fe $ff
    nop                                           ; $6a66: $00
    add b                                         ; $6a67: $80
    rst $38                                       ; $6a68: $ff
    ld a, a                                       ; $6a69: $7f
    ld a, a                                       ; $6a6a: $7f
    add b                                         ; $6a6b: $80
    rst $38                                       ; $6a6c: $ff
    nop                                           ; $6a6d: $00
    add $39                                       ; $6a6e: $c6 $39
    cp a                                          ; $6a70: $bf
    rst $38                                       ; $6a71: $ff
    ld b, b                                       ; $6a72: $40

jr_007_6a73:
    ld h, b                                       ; $6a73: $60
    sbc a                                         ; $6a74: $9f
    sbc a                                         ; $6a75: $9f
    ld h, b                                       ; $6a76: $60
    ld [hl], b                                    ; $6a77: $70
    adc a                                         ; $6a78: $8f
    rst $08                                       ; $6a79: $cf
    rlca                                          ; $6a7a: $07
    jr nc, jr_007_6a37                            ; $6a7b: $30 $ba

    ld b, l                                       ; $6a7d: $45
    nop                                           ; $6a7e: $00
    nop                                           ; $6a7f: $00
    nop                                           ; $6a80: $00
    rst $38                                       ; $6a81: $ff
    sub e                                         ; $6a82: $93
    ld l, h                                       ; $6a83: $6c
    xor $11                                       ; $6a84: $ee $11
    xor c                                         ; $6a86: $a9
    ld d, [hl]                                    ; $6a87: $56
    ld d, [hl]                                    ; $6a88: $56
    xor c                                         ; $6a89: $a9
    rst $38                                       ; $6a8a: $ff
    pop de                                        ; $6a8b: $d1
    ld l, $26                                     ; $6a8c: $2e $26
    reti                                          ; $6a8e: $d9


    rst $18                                       ; $6a8f: $df
    jr nz, jr_007_6a92                            ; $6a90: $20 $00

jr_007_6a92:
    rst $38                                       ; $6a92: $ff
    rst $38                                       ; $6a93: $ff
    sbc b                                         ; $6a94: $98
    ld h, a                                       ; $6a95: $67
    ld a, a                                       ; $6a96: $7f
    add b                                         ; $6a97: $80
    call nz, Call_000_3f3b                        ; $6a98: $c4 $3b $3f
    ret nz                                        ; $6a9b: $c0

    rst $38                                       ; $6a9c: $ff
    jp Jump_007_7d3c                              ; $6a9d: $c3 $3c $7d


    add d                                         ; $6aa0: $82
    add [hl]                                      ; $6aa1: $86
    ld a, c                                       ; $6aa2: $79
    nop                                           ; $6aa3: $00
    rst $38                                       ; $6aa4: $ff
    rst $38                                       ; $6aa5: $ff
    inc a                                         ; $6aa6: $3c
    jp Jump_000_38c7                              ; $6aa7: $c3 $c7 $38


    jr c, jr_007_6a73                             ; $6aaa: $38 $c7

    rst $20                                       ; $6aac: $e7
    jr @+$01                                      ; $6aad: $18 $ff

    inc a                                         ; $6aaf: $3c
    jp Jump_000_3cc3                              ; $6ab0: $c3 $c3 $3c


    ld a, [hl]                                    ; $6ab3: $7e
    add c                                         ; $6ab4: $81
    nop                                           ; $6ab5: $00
    rst $38                                       ; $6ab6: $ff
    rst $38                                       ; $6ab7: $ff
    db $e3                                        ; $6ab8: $e3
    ld e, $9d                                     ; $6ab9: $1e $9d
    ld h, e                                       ; $6abb: $63
    ld h, c                                       ; $6abc: $61
    sbc a                                         ; $6abd: $9f
    db $db                                        ; $6abe: $db
    ld h, $ff                                     ; $6abf: $26 $ff
    ld l, $dc                                     ; $6ac1: $2e $dc
    ret nc                                        ; $6ac3: $d0

    jr nc, jr_007_6af6                            ; $6ac4: $30 $30

    ret nc                                        ; $6ac6: $d0

    rrca                                          ; $6ac7: $0f
    rst $38                                       ; $6ac8: $ff
    rst $38                                       ; $6ac9: $ff
    dec c                                         ; $6aca: $0d
    ld b, $8c                                     ; $6acb: $06 $8c
    add a                                         ; $6acd: $87
    sbc b                                         ; $6ace: $98
    rrca                                          ; $6acf: $0f
    ld [hl], $19                                  ; $6ad0: $36 $19
    rst $38                                       ; $6ad2: $ff
    ld h, e                                       ; $6ad3: $63
    inc a                                         ; $6ad4: $3c
    call c, $b763                                 ; $6ad5: $dc $63 $b7
    ret z                                         ; $6ad8: $c8

    nop                                           ; $6ad9: $00
    rst $38                                       ; $6ada: $ff
    rst $38                                       ; $6adb: $ff
    sub [hl]                                      ; $6adc: $96
    sbc h                                         ; $6add: $9c
    sub h                                         ; $6ade: $94
    sbc h                                         ; $6adf: $9c
    sbc h                                         ; $6ae0: $9c
    adc h                                         ; $6ae1: $8c
    adc b                                         ; $6ae2: $88
    adc h                                         ; $6ae3: $8c
    rst $38                                       ; $6ae4: $ff
    rst $08                                       ; $6ae5: $cf
    add [hl]                                      ; $6ae6: $86
    ld b, l                                       ; $6ae7: $45
    rst $00                                       ; $6ae8: $c7
    ld h, h                                       ; $6ae9: $64
    rst $00                                       ; $6aea: $c7
    dec sp                                        ; $6aeb: $3b
    db $fc                                        ; $6aec: $fc
    rst $38                                       ; $6aed: $ff
    ld h, e                                       ; $6aee: $63
    inc hl                                        ; $6aef: $23
    ld h, e                                       ; $6af0: $63
    ld h, e                                       ; $6af1: $63
    ld h, e                                       ; $6af2: $63
    inc hl                                        ; $6af3: $23
    ld [bc], a                                    ; $6af4: $02
    inc bc                                        ; $6af5: $03

jr_007_6af6:
    rst $38                                       ; $6af6: $ff
    ld bc, $c101                                  ; $6af7: $01 $01 $c1
    add c                                         ; $6afa: $81
    ld a, c                                       ; $6afb: $79
    pop af                                        ; $6afc: $f1
    xor $1f                                       ; $6afd: $ee $1f
    rst $38                                       ; $6aff: $ff
    ld e, $0e                                     ; $6b00: $1e $0e
    scf                                           ; $6b02: $37
    ld a, [de]                                    ; $6b03: $1a
    dec h                                         ; $6b04: $25
    dec sp                                        ; $6b05: $3b
    ld a, $21                                     ; $6b06: $3e $21
    rst $38                                       ; $6b08: $ff
    inc hl                                        ; $6b09: $23
    dec a                                         ; $6b0a: $3d
    dec a                                         ; $6b0b: $3d
    inc hl                                        ; $6b0c: $23
    daa                                           ; $6b0d: $27

jr_007_6b0e:
    add hl, sp                                    ; $6b0e: $39
    ret nz                                        ; $6b0f: $c0

    rst $38                                       ; $6b10: $ff
    rst $38                                       ; $6b11: $ff
    ld a, h                                       ; $6b12: $7c
    inc sp                                        ; $6b13: $33
    rra                                           ; $6b14: $1f
    ld [$0f88], sp                                ; $6b15: $08 $88 $0f
    adc a                                         ; $6b18: $8f
    adc b                                         ; $6b19: $88
    rst $38                                       ; $6b1a: $ff
    sbc h                                         ; $6b1b: $9c
    dec bc                                        ; $6b1c: $0b
    inc sp                                        ; $6b1d: $33
    inc e                                         ; $6b1e: $1c
    ld l, [hl]                                    ; $6b1f: $6e
    ld sp, $ffc0                                  ; $6b20: $31 $c0 $ff
    rst $38                                       ; $6b23: $ff
    pop hl                                        ; $6b24: $e1
    ld e, $9e                                     ; $6b25: $1e $9e
    ld h, c                                       ; $6b27: $61
    ld h, c                                       ; $6b28: $61
    sbc [hl]                                      ; $6b29: $9e
    rst $18                                       ; $6b2a: $df
    jr nz, @+$01                                  ; $6b2b: $20 $ff

    jr nz, jr_007_6b0e                            ; $6b2d: $20 $df

jr_007_6b2f:
    rst $18                                       ; $6b2f: $df
    jr nz, jr_007_6b62                            ; $6b30: $20 $30

    rst $08                                       ; $6b32: $cf
    nop                                           ; $6b33: $00
    rst $38                                       ; $6b34: $ff
    rst $38                                       ; $6b35: $ff
    add c                                         ; $6b36: $81
    ld a, [hl]                                    ; $6b37: $7e
    ld a, [hl]                                    ; $6b38: $7e
    add c                                         ; $6b39: $81
    pop bc                                        ; $6b3a: $c1
    ld a, $3e                                     ; $6b3b: $3e $3e
    pop bc                                        ; $6b3d: $c1
    rst $38                                       ; $6b3e: $ff
    db $e3                                        ; $6b3f: $e3
    inc e                                         ; $6b40: $1c
    sbc h                                         ; $6b41: $9c
    ld h, e                                       ; $6b42: $63
    ld [hl], a                                    ; $6b43: $77
    adc b                                         ; $6b44: $88
    nop                                           ; $6b45: $00
    rst $38                                       ; $6b46: $ff
    rst $38                                       ; $6b47: $ff
    ld d, l                                       ; $6b48: $55
    xor d                                         ; $6b49: $aa
    ld d, [hl]                                    ; $6b4a: $56
    xor c                                         ; $6b4b: $a9
    jp hl                                         ; $6b4c: $e9


    ld d, $6f                                     ; $6b4d: $16 $6f
    sub b                                         ; $6b4f: $90
    rst $38                                       ; $6b50: $ff
    or b                                          ; $6b51: $b0
    ld c, a                                       ; $6b52: $4f
    rst $18                                       ; $6b53: $df
    jr nz, jr_007_6bb7                            ; $6b54: $20 $61

    sbc [hl]                                      ; $6b56: $9e
    nop                                           ; $6b57: $00
    rst $38                                       ; $6b58: $ff
    nop                                           ; $6b59: $00
    nop                                           ; $6b5a: $00
    nop                                           ; $6b5b: $00
    rst $38                                       ; $6b5c: $ff
    rst $38                                       ; $6b5d: $ff
    nop                                           ; $6b5e: $00
    sbc c                                         ; $6b5f: $99
    ld h, [hl]                                    ; $6b60: $66
    halt                                          ; $6b61: $76

jr_007_6b62:
    adc c                                         ; $6b62: $89
    rst $08                                       ; $6b63: $cf
    jr nc, @+$01                                  ; $6b64: $30 $ff

    jr c, jr_007_6b2f                             ; $6b66: $38 $c7

    rst $20                                       ; $6b68: $e7
    jr jr_007_6b87                                ; $6b69: $18 $1c

    db $e3                                        ; $6b6b: $e3
    di                                            ; $6b6c: $f3
    inc c                                         ; $6b6d: $0c
    rst $38                                       ; $6b6e: $ff
    rst $38                                       ; $6b6f: $ff
    nop                                           ; $6b70: $00
    di                                            ; $6b71: $f3
    inc c                                         ; $6b72: $0c
    inc e                                         ; $6b73: $1c
    db $e3                                        ; $6b74: $e3
    and $19                                       ; $6b75: $e6 $19
    rst $38                                       ; $6b77: $ff
    dec sp                                        ; $6b78: $3b
    call nz, Call_000_33cc                        ; $6b79: $c4 $cc $33
    ld [hl], a                                    ; $6b7c: $77
    adc b                                         ; $6b7d: $88
    cp b                                          ; $6b7e: $b8
    ld b, a                                       ; $6b7f: $47
    rst $38                                       ; $6b80: $ff
    rst $38                                       ; $6b81: $ff
    nop                                           ; $6b82: $00
    adc h                                         ; $6b83: $8c
    ld [hl], e                                    ; $6b84: $73
    di                                            ; $6b85: $f3
    inc c                                         ; $6b86: $0c

jr_007_6b87:
    ld e, $e1                                     ; $6b87: $1e $e1
    rst $38                                       ; $6b89: $ff
    pop hl                                        ; $6b8a: $e1
    ld e, $7f                                     ; $6b8b: $1e $7f
    add b                                         ; $6b8d: $80
    sbc h                                         ; $6b8e: $9c
    ld h, e                                       ; $6b8f: $63
    db $e3                                        ; $6b90: $e3
    inc e                                         ; $6b91: $1c
    rst $38                                       ; $6b92: $ff
    rst $38                                       ; $6b93: $ff
    nop                                           ; $6b94: $00
    db $e3                                        ; $6b95: $e3
    inc e                                         ; $6b96: $1c
    sbc [hl]                                      ; $6b97: $9e
    ld h, c                                       ; $6b98: $61
    ld [hl], c                                    ; $6b99: $71
    adc [hl]                                      ; $6b9a: $8e
    rst $38                                       ; $6b9b: $ff
    rst $08                                       ; $6b9c: $cf
    jr nc, jr_007_6bd1                            ; $6b9d: $30 $32

    call Call_000_00ff                            ; $6b9f: $cd $ff $00
    ret nz                                        ; $6ba2: $c0

    ccf                                           ; $6ba3: $3f
    rst $38                                       ; $6ba4: $ff
    rst $38                                       ; $6ba5: $ff
    nop                                           ; $6ba6: $00

jr_007_6ba7:
    rst $38                                       ; $6ba7: $ff
    nop                                           ; $6ba8: $00
    ld bc, $fefe                                  ; $6ba9: $01 $fe $fe
    ld bc, $03ff                                  ; $6bac: $01 $ff $03
    db $fc                                        ; $6baf: $fc
    db $fc                                        ; $6bb0: $fc
    inc bc                                        ; $6bb1: $03
    and a                                         ; $6bb2: $a7
    ld e, b                                       ; $6bb3: $58
    add hl, sp                                    ; $6bb4: $39
    add $ff                                       ; $6bb5: $c6 $ff

jr_007_6bb7:
    rst $38                                       ; $6bb7: $ff
    nop                                           ; $6bb8: $00
    inc sp                                        ; $6bb9: $33
    call z, $23dc                                 ; $6bba: $cc $dc $23
    ld h, e                                       ; $6bbd: $63
    sbc h                                         ; $6bbe: $9c
    rst $38                                       ; $6bbf: $ff
    cp [hl]                                       ; $6bc0: $be
    ld b, c                                       ; $6bc1: $41
    rst $00                                       ; $6bc2: $c7
    jr c, jr_007_6c3d                             ; $6bc3: $38 $78

    add a                                         ; $6bc5: $87
    sbc a                                         ; $6bc6: $9f
    ld h, b                                       ; $6bc7: $60
    nop                                           ; $6bc8: $00
    and b                                         ; $6bc9: $a0
    rst $38                                       ; $6bca: $ff
    and b                                         ; $6bcb: $a0
    rst $38                                       ; $6bcc: $ff
    and b                                         ; $6bcd: $a0
    ld sp, hl                                     ; $6bce: $f9
    nop                                           ; $6bcf: $00
    nop                                           ; $6bd0: $00

jr_007_6bd1:
    nop                                           ; $6bd1: $00
    rst $38                                       ; $6bd2: $ff
    inc c                                         ; $6bd3: $0c
    di                                            ; $6bd4: $f3
    ei                                            ; $6bd5: $fb
    inc b                                         ; $6bd6: $04
    call z, Call_000_3733                         ; $6bd7: $cc $33 $37
    ret z                                         ; $6bda: $c8

    rst $38                                       ; $6bdb: $ff
    ldh a, [rIF]                                  ; $6bdc: $f0 $0f
    rra                                           ; $6bde: $1f
    ldh [$e1], a                                  ; $6bdf: $e0 $e1
    ld e, $00                                     ; $6be1: $1e $00
    rst $38                                       ; $6be3: $ff
    rst $38                                       ; $6be4: $ff
    rst $00                                       ; $6be5: $c7
    jr c, jr_007_6ba7                             ; $6be6: $38 $bf

    ld b, b                                       ; $6be8: $40
    ld [hl], b                                    ; $6be9: $70
    adc a                                         ; $6bea: $8f
    rst $08                                       ; $6beb: $cf
    jr nc, @+$01                                  ; $6bec: $30 $ff

    ld a, b                                       ; $6bee: $78
    add a                                         ; $6bef: $87
    adc a                                         ; $6bf0: $8f
    ld [hl], b                                    ; $6bf1: $70
    di                                            ; $6bf2: $f3
    inc c                                         ; $6bf3: $0c

jr_007_6bf4:
    nop                                           ; $6bf4: $00
    rst $38                                       ; $6bf5: $ff
    rst $38                                       ; $6bf6: $ff
    ld a, $c1                                     ; $6bf7: $3e $c1
    pop bc                                        ; $6bf9: $c1
    ld a, $7f                                     ; $6bfa: $3e $7f
    add b                                         ; $6bfc: $80
    add b                                         ; $6bfd: $80
    ld a, a                                       ; $6bfe: $7f
    rst $38                                       ; $6bff: $ff
    ld a, a                                       ; $6c00: $7f
    add b                                         ; $6c01: $80
    ret nz                                        ; $6c02: $c0

    ccf                                           ; $6c03: $3f
    ccf                                           ; $6c04: $3f
    ret nz                                        ; $6c05: $c0

    nop                                           ; $6c06: $00
    rst $38                                       ; $6c07: $ff
    rst $38                                       ; $6c08: $ff
    ccf                                           ; $6c09: $3f
    ret nz                                        ; $6c0a: $c0

    ldh [$1f], a                                  ; $6c0b: $e0 $1f
    rra                                           ; $6c0d: $1f
    ldh [$f0], a                                  ; $6c0e: $e0 $f0
    rrca                                          ; $6c10: $0f
    rst $38                                       ; $6c11: $ff
    adc a                                         ; $6c12: $8f
    ld [hl], b                                    ; $6c13: $70
    ld [hl], b                                    ; $6c14: $70
    adc a                                         ; $6c15: $8f
    rst $18                                       ; $6c16: $df
    jr nz, jr_007_6c19                            ; $6c17: $20 $00

jr_007_6c19:
    rst $38                                       ; $6c19: $ff
    ccf                                           ; $6c1a: $3f
    adc $31                                       ; $6c1b: $ce $31
    add hl, sp                                    ; $6c1d: $39
    add $c7                                       ; $6c1e: $c6 $c7
    jr c, jr_007_6bf4                             ; $6c20: $38 $d2

    pop hl                                        ; $6c22: $e1
    cp [hl]                                       ; $6c23: $be
    pop hl                                        ; $6c24: $e1
    rst $38                                       ; $6c25: $ff
    nop                                           ; $6c26: $00
    rst $38                                       ; $6c27: $ff
    rst $20                                       ; $6c28: $e7
    jr @+$3a                                      ; $6c29: $18 $38

    rst $00                                       ; $6c2b: $c7
    adc a                                         ; $6c2c: $8f
    ld [hl], b                                    ; $6c2d: $70
    rst $38                                       ; $6c2e: $ff
    ld a, b                                       ; $6c2f: $78
    add a                                         ; $6c30: $87
    add a                                         ; $6c31: $87
    ld a, b                                       ; $6c32: $78
    ld hl, sp+$07                                 ; $6c33: $f8 $07
    rlca                                          ; $6c35: $07
    ld hl, sp+$03                                 ; $6c36: $f8 $03
    nop                                           ; $6c38: $00
    rst $38                                       ; $6c39: $ff
    and b                                         ; $6c3a: $a0
    rst $38                                       ; $6c3b: $ff
    and b                                         ; $6c3c: $a0

jr_007_6c3d:
    rst $38                                       ; $6c3d: $ff
    and b                                         ; $6c3e: $a0
    ld sp, hl                                     ; $6c3f: $f9
    nop                                           ; $6c40: $00
    nop                                           ; $6c41: $00
    nop                                           ; $6c42: $00
    rst $38                                       ; $6c43: $ff
    rst $38                                       ; $6c44: $ff
    nop                                           ; $6c45: $00
    inc a                                         ; $6c46: $3c
    jp Jump_000_38c7                              ; $6c47: $c3 $c7 $38


    ld sp, hl                                     ; $6c4a: $f9
    ld b, $ff                                     ; $6c4b: $06 $ff
    ld c, $f1                                     ; $6c4d: $0e $f1
    or $09                                        ; $6c4f: $f6 $09
    add hl, de                                    ; $6c51: $19
    and $e7                                       ; $6c52: $e6 $e7
    jr @+$01                                      ; $6c54: $18 $ff

    rst $38                                       ; $6c56: $ff
    nop                                           ; $6c57: $00
    call c, Call_007_6523                         ; $6c58: $dc $23 $65
    sbc e                                         ; $6c5b: $9b
    cp e                                          ; $6c5c: $bb
    ld b, [hl]                                    ; $6c5d: $46
    rst $38                                       ; $6c5e: $ff
    add $3c                                       ; $6c5f: $c6 $3c
    db $fc                                        ; $6c61: $fc
    ld [$d829], sp                                ; $6c62: $08 $29 $d8
    db $db                                        ; $6c65: $db
    ld sp, $ffff                                  ; $6c66: $31 $ff $ff
    nop                                           ; $6c69: $00
    ld [hl], b                                    ; $6c6a: $70
    adc a                                         ; $6c6b: $8f
    call Call_007_7bfe                            ; $6c6c: $cd $fe $7b
    ld [hl-], a                                   ; $6c6f: $32
    rst $38                                       ; $6c70: $ff
    ld [hl-], a                                   ; $6c71: $32
    inc sp                                        ; $6c72: $33
    inc sp                                        ; $6c73: $33
    ld [hl+], a                                   ; $6c74: $22
    jp Jump_000_21e3                              ; $6c75: $c3 $e3 $21


    ldh [rIE], a                                  ; $6c78: $e0 $ff
    rst $38                                       ; $6c7a: $ff
    nop                                           ; $6c7b: $00
    sbc d                                         ; $6c7c: $9a
    ld h, l                                       ; $6c7d: $65
    halt                                          ; $6c7e: $76
    adc c                                         ; $6c7f: $89
    call $ff32                                    ; $6c80: $cd $32 $ff
    dec sp                                        ; $6c83: $3b

jr_007_6c84:
    call nz, Call_000_09f6                        ; $6c84: $c4 $f6 $09
    dec de                                        ; $6c87: $1b
    rst $20                                       ; $6c88: $e7
    sub $ec                                       ; $6c89: $d6 $ec
    rst $38                                       ; $6c8b: $ff
    rst $38                                       ; $6c8c: $ff
    nop                                           ; $6c8d: $00
    jp $fc3c                                      ; $6c8e: $c3 $3c $fc


    inc bc                                        ; $6c91: $03
    sbc d                                         ; $6c92: $9a
    ld h, l                                       ; $6c93: $65
    rst $38                                       ; $6c94: $ff
    ld l, b                                       ; $6c95: $68
    sub a                                         ; $6c96: $97
    pop bc                                        ; $6c97: $c1
    cp $e6                                        ; $6c98: $fe $e6
    ccf                                           ; $6c9a: $3f
    dec sp                                        ; $6c9b: $3b
    add hl, de                                    ; $6c9c: $19
    rst $38                                       ; $6c9d: $ff
    rst $38                                       ; $6c9e: $ff
    nop                                           ; $6c9f: $00
    sub b                                         ; $6ca0: $90
    ld l, a                                       ; $6ca1: $6f
    nop                                           ; $6ca2: $00
    rst $38                                       ; $6ca3: $ff
    rrca                                          ; $6ca4: $0f
    ldh a, [rIE]                                  ; $6ca5: $f0 $ff
    ld a, b                                       ; $6ca7: $78
    add a                                         ; $6ca8: $87
    rst $00                                       ; $6ca9: $c7
    jr c, jr_007_6c84                             ; $6caa: $38 $d8

    rst $20                                       ; $6cac: $e7
    db $e3                                        ; $6cad: $e3
    inc a                                         ; $6cae: $3c
    rst $38                                       ; $6caf: $ff
    rst $38                                       ; $6cb0: $ff
    nop                                           ; $6cb1: $00
    inc c                                         ; $6cb2: $0c
    di                                            ; $6cb3: $f3
    ld a, $ff                                     ; $6cb4: $3e $ff
    jp $ff41                                      ; $6cb6: $c3 $41 $ff


    ld h, c                                       ; $6cb9: $61
    ret nz                                        ; $6cba: $c0

    and b                                         ; $6cbb: $a0
    ld h, b                                       ; $6cbc: $60
    ld h, $e4                                     ; $6cbd: $26 $e4
    rst $20                                       ; $6cbf: $e7
    ld h, $fe                                     ; $6cc0: $26 $fe
    and b                                         ; $6cc2: $a0
    pop hl                                        ; $6cc3: $e1
    ld h, a                                       ; $6cc4: $67
    sbc b                                         ; $6cc5: $98
    jr c, @-$37                                   ; $6cc6: $38 $c7

    adc a                                         ; $6cc8: $8f
    ldh a, [$c6]                                  ; $6cc9: $f0 $c6
    rst $18                                       ; $6ccb: $df
    ld a, c                                       ; $6ccc: $79
    ld h, c                                       ; $6ccd: $61
    ccf                                           ; $6cce: $3f
    inc sp                                        ; $6ccf: $33
    ld e, $a0                                     ; $6cd0: $1e $a0
    pop hl                                        ; $6cd2: $e1
    rst $08                                       ; $6cd3: $cf
    jr nc, @+$01                                  ; $6cd4: $30 $ff

    ld sp, $fece                                  ; $6cd6: $31 $ce $fe
    ld bc, $fd63                                  ; $6cd9: $01 $63 $fd
    di                                            ; $6cdc: $f3
    sbc a                                         ; $6cdd: $9f
    ei                                            ; $6cde: $fb
    inc e                                         ; $6cdf: $1c
    inc c                                         ; $6ce0: $0c
    and b                                         ; $6ce1: $a0
    push hl                                       ; $6ce2: $e5
    db $db                                        ; $6ce3: $db
    db $e4                                        ; $6ce4: $e4
    ld [hl], $29                                  ; $6ce5: $36 $29
    add hl, hl                                    ; $6ce7: $29
    di                                            ; $6ce8: $f3
    scf                                           ; $6ce9: $37
    inc de                                        ; $6cea: $13
    ldh [$e0], a                                  ; $6ceb: $e0 $e0
    and b                                         ; $6ced: $a0
    pop hl                                        ; $6cee: $e1
    sbc e                                         ; $6cef: $9b
    ld h, h                                       ; $6cf0: $64
    ld l, h                                       ; $6cf1: $6c
    sub e                                         ; $6cf2: $93
    rst $38                                       ; $6cf3: $ff
    ld h, a                                       ; $6cf4: $67
    ld hl, sp-$10                                 ; $6cf5: $f8 $f0
    sbc a                                         ; $6cf7: $9f
    rra                                           ; $6cf8: $1f
    ld [$00ff], sp                                ; $6cf9: $08 $ff $00
    cp a                                          ; $6cfc: $bf
    sbc [hl]                                      ; $6cfd: $9e
    ld h, c                                       ; $6cfe: $61
    ld [hl], c                                    ; $6cff: $71
    adc [hl]                                      ; $6d00: $8e
    adc a                                         ; $6d01: $8f
    ld [hl], b                                    ; $6d02: $70
    and b                                         ; $6d03: $a0
    pop hl                                        ; $6d04: $e1
    inc a                                         ; $6d05: $3c
    rlca                                          ; $6d06: $07
    jp $1ce3                                      ; $6d07: $c3 $e3 $1c


    nop                                           ; $6d0a: $00
    nop                                           ; $6d0b: $00
    nop                                           ; $6d0c: $00
    rst $38                                       ; $6d0d: $ff
    ld e, $e1                                     ; $6d0e: $1e $e1
    di                                            ; $6d10: $f3
    inc c                                         ; $6d11: $0c
    rrca                                          ; $6d12: $0f
    ldh a, [$f8]                                  ; $6d13: $f0 $f8
    rlca                                          ; $6d15: $07
    rst $38                                       ; $6d16: $ff
    add a                                         ; $6d17: $87
    ld a, b                                       ; $6d18: $78
    ld a, h                                       ; $6d19: $7c
    add e                                         ; $6d1a: $83
    jp Jump_000_003c                              ; $6d1b: $c3 $3c $00


    rst $38                                       ; $6d1e: $ff
    rst $38                                       ; $6d1f: $ff
    ld [hl-], a                                   ; $6d20: $32
    db $e3                                        ; $6d21: $e3
    ld a, [c]                                     ; $6d22: $f2
    inc hl                                        ; $6d23: $23
    dec de                                        ; $6d24: $1b
    pop af                                        ; $6d25: $f1
    db $ec                                        ; $6d26: $ec
    jr @+$01                                      ; $6d27: $18 $ff

    ld b, $fc                                     ; $6d29: $06 $fc
    ei                                            ; $6d2b: $fb
    ld b, $81                                     ; $6d2c: $06 $81
    ld a, a                                       ; $6d2e: $7f
    nop                                           ; $6d2f: $00
    rst $38                                       ; $6d30: $ff
    rst $38                                       ; $6d31: $ff
    ld h, b                                       ; $6d32: $60
    and b                                         ; $6d33: $a0
    and $24                                       ; $6d34: $e6 $24
    rst $00                                       ; $6d36: $c7
    and $65                                       ; $6d37: $e6 $65
    daa                                           ; $6d39: $27
    rst $38                                       ; $6d3a: $ff
    daa                                           ; $6d3b: $27
    dec h                                         ; $6d3c: $25
    dec h                                         ; $6d3d: $25
    daa                                           ; $6d3e: $27
    cp e                                          ; $6d3f: $bb
    dec a                                         ; $6d40: $3d
    ret nz                                        ; $6d41: $c0

    rst $38                                       ; $6d42: $ff
    rst $38                                       ; $6d43: $ff
    ld l, h                                       ; $6d44: $6c
    jr c, jr_007_6d80                             ; $6d45: $38 $39

    ld sp, $3031                                  ; $6d47: $31 $31 $30
    jr c, jr_007_6d7c                             ; $6d4a: $38 $30

    rst $38                                       ; $6d4c: $ff
    inc l                                         ; $6d4d: $2c

jr_007_6d4e:
    jr c, @+$19                                   ; $6d4e: $38 $17

    ld e, $1d                                     ; $6d50: $1e $1d
    inc de                                        ; $6d52: $13
    add sp, -$09                                  ; $6d53: $e8 $f7
    rst $38                                       ; $6d55: $ff
    jr @+$1a                                      ; $6d56: $18 $18

    sbc c                                         ; $6d58: $99
    sbc b                                         ; $6d59: $98
    sbc c                                         ; $6d5a: $99
    sbc c                                         ; $6d5b: $99
    ld de, $fd19                                  ; $6d5c: $11 $19 $fd
    add hl, bc                                    ; $6d5f: $09
    rst $38                                       ; $6d60: $ff
    ldh [$e9], a                                  ; $6d61: $e0 $e9

jr_007_6d63:
    ret                                           ; $6d63: $c9


    ld [hl], $ff                                  ; $6d64: $36 $ff
    jr c, @+$29                                   ; $6d66: $38 $27

    rst $38                                       ; $6d68: $ff
    jp nc, Jump_000_2fed                          ; $6d69: $d2 $ed $2f

    ret nc                                        ; $6d6c: $d0

    ld l, b                                       ; $6d6d: $68
    sub a                                         ; $6d6e: $97
    jp c, $ff3d                                   ; $6d6f: $da $3d $ff

    and [hl]                                      ; $6d72: $a6
    ld h, l                                       ; $6d73: $65
    rst $30                                       ; $6d74: $f7
    inc h                                         ; $6d75: $24
    jr @+$01                                      ; $6d76: $18 $ff

    daa                                           ; $6d78: $27
    push hl                                       ; $6d79: $e5
    rst $38                                       ; $6d7a: $ff
    ld h, l                                       ; $6d7b: $65

jr_007_6d7c:
    and a                                         ; $6d7c: $a7
    rst $20                                       ; $6d7d: $e7
    ld h, $a6                                     ; $6d7e: $26 $a6

jr_007_6d80:
    ld h, h                                       ; $6d80: $64
    jr nz, jr_007_6d63                            ; $6d81: $20 $e0

    rst $38                                       ; $6d83: $ff
    ldh [rNR41], a                                ; $6d84: $e0 $20
    db $e3                                        ; $6d86: $e3
    ld hl, $ff1e                                  ; $6d87: $21 $1e $ff
    sbc [hl]                                      ; $6d8a: $9e
    inc c                                         ; $6d8b: $0c
    rst $38                                       ; $6d8c: $ff
    adc h                                         ; $6d8d: $8c
    ld [$0818], sp                                ; $6d8e: $08 $18 $08
    inc a                                         ; $6d91: $3c
    jr jr_007_6dfa                                ; $6d92: $18 $66

    inc a                                         ; $6d94: $3c
    rst $38                                       ; $6d95: $ff
    db $db                                        ; $6d96: $db
    ld h, a                                       ; $6d97: $67
    add b                                         ; $6d98: $80
    rst $38                                       ; $6d99: $ff
    ld b, b                                       ; $6d9a: $40
    cp a                                          ; $6d9b: $bf
    dec bc                                        ; $6d9c: $0b
    rrca                                          ; $6d9d: $0f
    rst $38                                       ; $6d9e: $ff
    rst $08                                       ; $6d9f: $cf
    ret                                           ; $6da0: $c9


    rst $08                                       ; $6da1: $cf
    ld c, c                                       ; $6da2: $49
    add hl, bc                                    ; $6da3: $09
    rrca                                          ; $6da4: $0f
    rrca                                          ; $6da5: $0f
    dec b                                         ; $6da6: $05
    rst $38                                       ; $6da7: $ff
    add h                                         ; $6da8: $84
    rlca                                          ; $6da9: $07
    rst $30                                       ; $6daa: $f7
    db $e4                                        ; $6dab: $e4
    ld a, [de]                                    ; $6dac: $1a
    db $fd                                        ; $6dad: $fd
    ld h, $3c                                     ; $6dae: $26 $3c
    rst $38                                       ; $6db0: $ff
    inc a                                         ; $6db1: $3c
    jr z, jr_007_6ddc                             ; $6db2: $28 $28

    jr c, @+$3e                                   ; $6db4: $38 $3c

    jr jr_007_6d4e                                ; $6db6: $18 $96

    inc e                                         ; $6db8: $1c
    rst $38                                       ; $6db9: $ff
    sbc e                                         ; $6dba: $9b
    adc a                                         ; $6dbb: $8f
    adc $89                                       ; $6dbc: $ce $89
    ld [hl], b                                    ; $6dbe: $70
    rst $38                                       ; $6dbf: $ff
    dec bc                                        ; $6dc0: $0b
    inc c                                         ; $6dc1: $0c
    rst $38                                       ; $6dc2: $ff
    call z, $cfcb                                 ; $6dc3: $cc $cb $cf
    ld c, b                                       ; $6dc6: $48
    ld [$0f0f], sp                                ; $6dc7: $08 $0f $0f
    inc b                                         ; $6dca: $04
    rst $38                                       ; $6dcb: $ff
    add a                                         ; $6dcc: $87
    inc b                                         ; $6dcd: $04
    db $f4                                        ; $6dce: $f4
    rst $20                                       ; $6dcf: $e7
    jr @+$01                                      ; $6dd0: $18 $ff

jr_007_6dd2:
    ld e, $e1                                     ; $6dd2: $1e $e1
    rst $38                                       ; $6dd4: $ff
    pop hl                                        ; $6dd5: $e1
    ld e, $9f                                     ; $6dd6: $1e $9f
    ld h, b                                       ; $6dd8: $60
    ld h, b                                       ; $6dd9: $60
    sbc a                                         ; $6dda: $9f
    rst $18                                       ; $6ddb: $df

jr_007_6ddc:
    jr nz, jr_007_6e1d                            ; $6ddc: $20 $3f

    or b                                          ; $6dde: $b0
    ld c, a                                       ; $6ddf: $4f
    ld a, a                                       ; $6de0: $7f
    add b                                         ; $6de1: $80
    nop                                           ; $6de2: $00
    rst $38                                       ; $6de3: $ff
    nop                                           ; $6de4: $00
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    rst $38                                       ; $6de7: $ff
    rst $38                                       ; $6de8: $ff
    nop                                           ; $6de9: $00
    sbc [hl]                                      ; $6dea: $9e
    ld h, c                                       ; $6deb: $61
    ld h, c                                       ; $6dec: $61
    sbc [hl]                                      ; $6ded: $9e
    rst $18                                       ; $6dee: $df
    jr nz, @+$01                                  ; $6def: $20 $ff

    jr nz, jr_007_6dd2                            ; $6df1: $20 $df

    rst $18                                       ; $6df3: $df
    jr nz, jr_007_6e26                            ; $6df4: $20 $30

    rst $08                                       ; $6df6: $cf
    rst $08                                       ; $6df7: $cf
    jr nc, @+$01                                  ; $6df8: $30 $ff

jr_007_6dfa:
    rst $38                                       ; $6dfa: $ff
    nop                                           ; $6dfb: $00
    ld a, [hl]                                    ; $6dfc: $7e
    add c                                         ; $6dfd: $81
    or c                                          ; $6dfe: $b1
    ld a, [hl]                                    ; $6dff: $7e
    ld e, a                                       ; $6e00: $5f
    rst $08                                       ; $6e01: $cf
    rst $38                                       ; $6e02: $ff
    ret nz                                        ; $6e03: $c0

    ld b, b                                       ; $6e04: $40
    ldh [rLCDC], a                                ; $6e05: $e0 $40
    ld a, $fe                                     ; $6e07: $3e $fe
    ld a, [c]                                     ; $6e09: $f2
    ld c, $ff                                     ; $6e0a: $0e $ff
    rst $38                                       ; $6e0c: $ff
    nop                                           ; $6e0d: $00
    ld d, [hl]                                    ; $6e0e: $56
    xor c                                         ; $6e0f: $a9
    jp hl                                         ; $6e10: $e9


    ld d, $fb                                     ; $6e11: $16 $fb
    db $fc                                        ; $6e13: $fc
    rst $38                                       ; $6e14: $ff
    inc b                                         ; $6e15: $04
    rlca                                          ; $6e16: $07
    ld b, $05                                     ; $6e17: $06 $05
    ld a, b                                       ; $6e19: $78
    ld a, a                                       ; $6e1a: $7f
    ld e, e                                       ; $6e1b: $5b
    ld h, a                                       ; $6e1c: $67

jr_007_6e1d:
    rst $38                                       ; $6e1d: $ff
    sbc a                                         ; $6e1e: $9f
    ld h, b                                       ; $6e1f: $60
    cp [hl]                                       ; $6e20: $be
    ld b, c                                       ; $6e21: $41
    add hl, hl                                    ; $6e22: $29
    sub $36                                       ; $6e23: $d6 $36
    ret                                           ; $6e25: $c9


jr_007_6e26:
    rst $38                                       ; $6e26: $ff
    ld [hl], c                                    ; $6e27: $71
    adc [hl]                                      ; $6e28: $8e
    ld h, [hl]                                    ; $6e29: $66
    sbc c                                         ; $6e2a: $99
    call $e2fe                                    ; $6e2b: $cd $fe $e2
    inc sp                                        ; $6e2e: $33
    rst $38                                       ; $6e2f: $ff
    rst $38                                       ; $6e30: $ff
    nop                                           ; $6e31: $00
    ld a, a                                       ; $6e32: $7f
    add b                                         ; $6e33: $80
    call nz, Call_000_303b                        ; $6e34: $c4 $3b $30
    rst $08                                       ; $6e37: $cf
    rst $38                                       ; $6e38: $ff
    jp Jump_007_4e3c                              ; $6e39: $c3 $3c $4e


    or c                                          ; $6e3c: $b1
    adc l                                         ; $6e3d: $8d
    ld a, a                                       ; $6e3e: $7f
    scf                                           ; $6e3f: $37
    ld a, [$60ff]                                 ; $6e40: $fa $ff $60
    sbc a                                         ; $6e43: $9f
    add b                                         ; $6e44: $80
    ld a, a                                       ; $6e45: $7f
    rra                                           ; $6e46: $1f
    ldh [$f7], a                                  ; $6e47: $e0 $f7
    ld [$bcff], sp                                ; $6e49: $08 $ff $bc
    ld b, e                                       ; $6e4c: $43
    nop                                           ; $6e4d: $00
    rst $38                                       ; $6e4e: $ff
    and b                                         ; $6e4f: $a0
    rst $38                                       ; $6e50: $ff
    db $fc                                        ; $6e51: $fc
    ld e, a                                       ; $6e52: $5f
    cp a                                          ; $6e53: $bf
    ld b, $f9                                     ; $6e54: $06 $f9
    nop                                           ; $6e56: $00
    rst $38                                       ; $6e57: $ff
    ld hl, sp+$07                                 ; $6e58: $f8 $07
    and b                                         ; $6e5a: $a0
    pop hl                                        ; $6e5b: $e1
    jr @+$01                                      ; $6e5c: $18 $ff

    rst $38                                       ; $6e5e: $ff
    ld a, h                                       ; $6e5f: $7c
    rst $20                                       ; $6e60: $e7
    rst $00                                       ; $6e61: $c7
    add e                                         ; $6e62: $83
    rst $38                                       ; $6e63: $ff
    nop                                           ; $6e64: $00
    cp $ff                                        ; $6e65: $fe $ff
    ld bc, $fe01                                  ; $6e67: $01 $01 $fe
    ld c, $f1                                     ; $6e6a: $0e $f1
    jp $103c                                      ; $6e6c: $c3 $3c $10


    rst $38                                       ; $6e6f: $ff
    rst $28                                       ; $6e70: $ef
    ld hl, $fcde                                  ; $6e71: $21 $de $fc
    rst $38                                       ; $6e74: $ff
    ld sp, hl                                     ; $6e75: $f9
    ld b, $55                                     ; $6e76: $06 $55
    rst $38                                       ; $6e78: $ff
    xor d                                         ; $6e79: $aa
    add sp, $17                                   ; $6e7a: $e8 $17
    ld l, h                                       ; $6e7c: $6c
    sub e                                         ; $6e7d: $93
    or b                                          ; $6e7e: $b0
    ld c, a                                       ; $6e7f: $4f
    sbc $ff                                       ; $6e80: $de $ff
    ld hl, $bf5b                                  ; $6e82: $21 $5b $bf
    ld a, l                                       ; $6e85: $7d
    and $ff                                       ; $6e86: $e6 $ff
    nop                                           ; $6e88: $00
    xor $ff                                       ; $6e89: $ee $ff
    ld de, $56a9                                  ; $6e8b: $11 $a9 $56
    sub $29                                       ; $6e8e: $d6 $29
    db $d3                                        ; $6e90: $d3
    cpl                                           ; $6e91: $2f
    inc h                                         ; $6e92: $24
    rst $18                                       ; $6e93: $df
    call c, $bc4c                                 ; $6e94: $dc $4c $bc
    ldh [$f0], a                                  ; $6e97: $e0 $f0
    and b                                         ; $6e99: $a0
    db $e3                                        ; $6e9a: $e3
    ccf                                           ; $6e9b: $3f
    ret nz                                        ; $6e9c: $c0

    rst $38                                       ; $6e9d: $ff
    ld b, e                                       ; $6e9e: $43
    cp h                                          ; $6e9f: $bc
    db $ed                                        ; $6ea0: $ed
    sbc [hl]                                      ; $6ea1: $9e
    sbc [hl]                                      ; $6ea2: $9e
    di                                            ; $6ea3: $f3
    ld [hl], e                                    ; $6ea4: $73
    ld h, d                                       ; $6ea5: $62
    rst $38                                       ; $6ea6: $ff
    rst $38                                       ; $6ea7: $ff
    nop                                           ; $6ea8: $00
    rst $00                                       ; $6ea9: $c7
    jr c, jr_007_6ee4                             ; $6eaa: $38 $38

    rst $00                                       ; $6eac: $c7
    rst $20                                       ; $6ead: $e7
    jr @+$01                                      ; $6eae: $18 $ff

    inc a                                         ; $6eb0: $3c
    jp Jump_000_3cc3                              ; $6eb1: $c3 $c3 $3c


    ld a, [hl]                                    ; $6eb4: $7e
    add c                                         ; $6eb5: $81
    pop bc                                        ; $6eb6: $c1
    ld a, $00                                     ; $6eb7: $3e $00
    nop                                           ; $6eb9: $00
    nop                                           ; $6eba: $00
    rst $38                                       ; $6ebb: $ff
    inc a                                         ; $6ebc: $3c
    jp $1ce3                                      ; $6ebd: $c3 $e3 $1c


    sbc [hl]                                      ; $6ec0: $9e
    ld h, c                                       ; $6ec1: $61
    ld [hl], c                                    ; $6ec2: $71
    adc [hl]                                      ; $6ec3: $8e
    rst $38                                       ; $6ec4: $ff
    rst $08                                       ; $6ec5: $cf
    jr nc, jr_007_6efa                            ; $6ec6: $30 $32

    call Call_000_00ff                            ; $6ec8: $cd $ff $00
    nop                                           ; $6ecb: $00
    rst $38                                       ; $6ecc: $ff
    rst $38                                       ; $6ecd: $ff
    ld c, $f2                                     ; $6ece: $0e $f2
    cp $02                                        ; $6ed0: $fe $02
    ld [bc], a                                    ; $6ed2: $02
    cp $fc                                        ; $6ed3: $fe $fc
    inc b                                         ; $6ed5: $04
    rst $38                                       ; $6ed6: $ff
    ld b, $fc                                     ; $6ed7: $06 $fc
    ld a, [$a606]                                 ; $6ed9: $fa $06 $a6
    ld e, d                                       ; $6edc: $5a
    ld bc, $ffff                                  ; $6edd: $01 $ff $ff
    ld l, [hl]                                    ; $6ee0: $6e
    ld d, h                                       ; $6ee1: $54
    ld [hl], l                                    ; $6ee2: $75
    ld c, h                                       ; $6ee3: $4c

jr_007_6ee4:
    ld e, l                                       ; $6ee4: $5d
    ld l, c                                       ; $6ee5: $69
    ld l, c                                       ; $6ee6: $69
    ld e, c                                       ; $6ee7: $59
    rst $38                                       ; $6ee8: $ff
    ld a, h                                       ; $6ee9: $7c
    ld c, b                                       ; $6eea: $48
    ld b, [hl]                                    ; $6eeb: $46
    ld a, h                                       ; $6eec: $7c
    ld a, e                                       ; $6eed: $7b
    ld b, [hl]                                    ; $6eee: $46
    add c                                         ; $6eef: $81
    rst $38                                       ; $6ef0: $ff
    rst $38                                       ; $6ef1: $ff
    ld [de], a                                    ; $6ef2: $12
    inc de                                        ; $6ef3: $13
    jp c, Jump_007_4a8b                           ; $6ef4: $da $8b $4a

    set 3, e                                      ; $6ef7: $cb $db
    adc c                                         ; $6ef9: $89

jr_007_6efa:
    rst $38                                       ; $6efa: $ff
    inc d                                         ; $6efb: $14
    jr jr_007_6f64                                ; $6efc: $18 $66

    inc a                                         ; $6efe: $3c
    jp $857e                                      ; $6eff: $c3 $7e $85


    ei                                            ; $6f02: $fb
    rst $38                                       ; $6f03: $ff
    ld c, b                                       ; $6f04: $48
    ret z                                         ; $6f05: $c8

    bit 1, c                                      ; $6f06: $cb $49
    jp c, $d24b                                   ; $6f08: $da $4b $d2

    sbc e                                         ; $6f0b: $9b
    rst $38                                       ; $6f0c: $ff
    ld [hl-], a                                   ; $6f0d: $32
    inc de                                        ; $6f0e: $13
    ld h, e                                       ; $6f0f: $63
    ld [hl-], a                                   ; $6f10: $32
    db $d3                                        ; $6f11: $d3
    ld [hl], d                                    ; $6f12: $72
    adc l                                         ; $6f13: $8d
    cp $ff                                        ; $6f14: $fe $ff
    ld b, [hl]                                    ; $6f16: $46
    ld b, e                                       ; $6f17: $43
    add e                                         ; $6f18: $83
    pop bc                                        ; $6f19: $c1
    sbc l                                         ; $6f1a: $9d
    sbc c                                         ; $6f1b: $99
    sbc l                                         ; $6f1c: $9d
    sub l                                         ; $6f1d: $95
    ei                                            ; $6f1e: $fb
    sub l                                         ; $6f1f: $95
    sbc l                                         ; $6f20: $9d
    cp $e1                                        ; $6f21: $fe $e1
    ld h, d                                       ; $6f23: $62
    rst $38                                       ; $6f24: $ff
    add d                                         ; $6f25: $82
    ld [bc], a                                    ; $6f26: $02
    ld [hl-], a                                   ; $6f27: $32
    rst $38                                       ; $6f28: $ff
    ld [hl-], a                                   ; $6f29: $32
    ld [hl-], a                                   ; $6f2a: $32
    ld [de], a                                    ; $6f2b: $12
    ld [bc], a                                    ; $6f2c: $02
    inc bc                                        ; $6f2d: $03
    add c                                         ; $6f2e: $81
    ld bc, $ffe1                                  ; $6f2f: $01 $e1 $ff
    pop bc                                        ; $6f32: $c1
    cp l                                          ; $6f33: $bd
    ld a, c                                       ; $6f34: $79
    rlca                                          ; $6f35: $07
    rst $38                                       ; $6f36: $ff
    ld e, $0b                                     ; $6f37: $1e $0b
    inc bc                                        ; $6f39: $03
    rst $28                                       ; $6f3a: $ef
    ld bc, $0101                                  ; $6f3b: $01 $01 $01
    ld c, c                                       ; $6f3e: $49
    rst $38                                       ; $6f3f: $ff
    db $e4                                        ; $6f40: $e4
    or [hl]                                       ; $6f41: $b6
    rst $38                                       ; $6f42: $ff
    add $ff                                       ; $6f43: $c6 $ff
    add d                                         ; $6f45: $82
    or [hl]                                       ; $6f46: $b6
    ld [hl-], a                                   ; $6f47: $32
    inc l                                         ; $6f48: $2c
    ld b, $18                                     ; $6f49: $06 $18
    inc e                                         ; $6f4b: $1c
    jr @+$01                                      ; $6f4c: $18 $ff

    inc c                                         ; $6f4e: $0c
    add h                                         ; $6f4f: $84
    inc b                                         ; $6f50: $04
    db $e4                                        ; $6f51: $e4
    call nz, $ff3b                                ; $6f52: $c4 $3b $ff
    inc [hl]                                      ; $6f55: $34
    rst $38                                       ; $6f56: $ff
    inc e                                         ; $6f57: $1c
    inc e                                         ; $6f58: $1c
    inc c                                         ; $6f59: $0c
    db $ec                                        ; $6f5a: $ec
    call z, $acec                                 ; $6f5b: $cc $ec $ac
    xor [hl]                                      ; $6f5e: $ae
    rst $38                                       ; $6f5f: $ff
    db $ec                                        ; $6f60: $ec
    ld [$afae], a                                 ; $6f61: $ea $ae $af

jr_007_6f64:
    ld [$ff11], a                                 ; $6f64: $ea $11 $ff
    and [hl]                                      ; $6f67: $a6
    rst $38                                       ; $6f68: $ff
    jp $c6cd                                      ; $6f69: $c3 $cd $c6


    add d                                         ; $6f6c: $82
    jp Jump_007_63f2                              ; $6f6d: $c3 $f2 $63


    ld b, a                                       ; $6f70: $47
    rst $38                                       ; $6f71: $ff
    ld h, d                                       ; $6f72: $62
    ld l, h                                       ; $6f73: $6c
    daa                                           ; $6f74: $27
    dec sp                                        ; $6f75: $3b
    inc l                                         ; $6f76: $2c
    ret nc                                        ; $6f77: $d0

    rst $38                                       ; $6f78: $ff
    ld a, a                                       ; $6f79: $7f
    rst $38                                       ; $6f7a: $ff
    add b                                         ; $6f7b: $80
    adc h                                         ; $6f7c: $8c
    ld [hl], e                                    ; $6f7d: $73
    di                                            ; $6f7e: $f3
    inc c                                         ; $6f7f: $0c
    ld e, $e1                                     ; $6f80: $1e $e1
    pop hl                                        ; $6f82: $e1
    ld a, a                                       ; $6f83: $7f
    ld e, $7f                                     ; $6f84: $1e $7f
    add b                                         ; $6f86: $80
    sbc h                                         ; $6f87: $9c
    ld h, e                                       ; $6f88: $63
    nop                                           ; $6f89: $00
    rst $38                                       ; $6f8a: $ff
    nop                                           ; $6f8b: $00
    nop                                           ; $6f8c: $00
    nop                                           ; $6f8d: $00
    rst $38                                       ; $6f8e: $ff
    rst $38                                       ; $6f8f: $ff
    nop                                           ; $6f90: $00
    ldh [$1f], a                                  ; $6f91: $e0 $1f
    rra                                           ; $6f93: $1f
    ldh [$f0], a                                  ; $6f94: $e0 $f0
    rrca                                          ; $6f96: $0f
    rst $38                                       ; $6f97: $ff
    adc a                                         ; $6f98: $8f
    ld [hl], b                                    ; $6f99: $70
    ld [hl], b                                    ; $6f9a: $70
    adc a                                         ; $6f9b: $8f
    sbc $21                                       ; $6f9c: $de $21
    ld sp, $ffcf                                  ; $6f9e: $31 $cf $ff
    rst $38                                       ; $6fa1: $ff
    nop                                           ; $6fa2: $00
    add hl, sp                                    ; $6fa3: $39
    add $b7                                       ; $6fa4: $c6 $b7
    ld a, a                                       ; $6fa6: $7f
    ld a, l                                       ; $6fa7: $7d
    ret z                                         ; $6fa8: $c8

    rst $38                                       ; $6fa9: $ff
    ld c, b                                       ; $6faa: $48
    ret nz                                        ; $6fab: $c0

    ret nz                                        ; $6fac: $c0

    add b                                         ; $6fad: $80
    add b                                         ; $6fae: $80
    add b                                         ; $6faf: $80
    sub d                                         ; $6fb0: $92
    ld [bc], a                                    ; $6fb1: $02
    rst $38                                       ; $6fb2: $ff
    ld hl, sp+$07                                 ; $6fb3: $f8 $07
    add hl, sp                                    ; $6fb5: $39
    add $03                                       ; $6fb6: $c6 $03
    db $fc                                        ; $6fb8: $fc
    ld a, [c]                                     ; $6fb9: $f2
    adc l                                         ; $6fba: $8d
    rst $38                                       ; $6fbb: $ff
    add e                                         ; $6fbc: $83
    db $fc                                        ; $6fbd: $fc
    or c                                          ; $6fbe: $b1

jr_007_6fbf:
    rst $08                                       ; $6fbf: $cf
    rst $00                                       ; $6fc0: $c7
    ld a, [hl]                                    ; $6fc1: $7e
    ld l, h                                       ; $6fc2: $6c
    ld e, b                                       ; $6fc3: $58
    rst $38                                       ; $6fc4: $ff
    rst $20                                       ; $6fc5: $e7
    jr jr_007_6fbf                                ; $6fc6: $18 $f7

    ld [$3bc4], sp                                ; $6fc8: $08 $c4 $3b
    scf                                           ; $6fcb: $37
    ret z                                         ; $6fcc: $c8

    rst $38                                       ; $6fcd: $ff

jr_007_6fce:
    sub [hl]                                      ; $6fce: $96
    ld l, a                                       ; $6fcf: $6f
    adc c                                         ; $6fd0: $89
    ld sp, hl                                     ; $6fd1: $f9
    reti                                          ; $6fd2: $d9


    ld a, c                                       ; $6fd3: $79
    ld h, b                                       ; $6fd4: $60
    jr nz, @+$01                                  ; $6fd5: $20 $ff

    ld a, d                                       ; $6fd7: $7a
    add l                                         ; $6fd8: $85
    ld a, [hl-]                                   ; $6fd9: $3a
    push bc                                       ; $6fda: $c5
    ld [de], a                                    ; $6fdb: $12
    db $ed                                        ; $6fdc: $ed
    db $db                                        ; $6fdd: $db
    dec h                                         ; $6fde: $25
    rst $38                                       ; $6fdf: $ff
    add hl, de                                    ; $6fe0: $19
    rst $20                                       ; $6fe1: $e7
    dec sp                                        ; $6fe2: $3b
    add $2e                                       ; $6fe3: $c6 $2e
    rst $18                                       ; $6fe5: $df
    cp c                                          ; $6fe6: $b9
    pop af                                        ; $6fe7: $f1
    rst $38                                       ; $6fe8: $ff
    swap h                                        ; $6fe9: $cb $34
    add e                                         ; $6feb: $83
    ld a, h                                       ; $6fec: $7c
    db $d3                                        ; $6fed: $d3
    db $ec                                        ; $6fee: $ec
    or b                                          ; $6fef: $b0
    cpl                                           ; $6ff0: $2f
    rst $38                                       ; $6ff1: $ff
    jr nz, @+$41                                  ; $6ff2: $20 $3f

    daa                                           ; $6ff4: $27
    jr c, @+$39                                   ; $6ff5: $38 $37

    jr c, jr_007_7015                             ; $6ff7: $38 $1c

    rrca                                          ; $6ff9: $0f
    rst $38                                       ; $6ffa: $ff
    db $d3                                        ; $6ffb: $d3
    inc l                                         ; $6ffc: $2c
    ret nz                                        ; $6ffd: $c0

    ccf                                           ; $6ffe: $3f
    add hl, bc                                    ; $6fff: $09
    or $09                                        ; $7000: $f6 $09
    rst $30                                       ; $7002: $f7
    rst $38                                       ; $7003: $ff
    inc bc                                        ; $7004: $03
    cp $e6                                        ; $7005: $fe $e6
    inc e                                         ; $7007: $1c
    call nc, Call_000_3d2c                        ; $7008: $d4 $2c $3d
    ret z                                         ; $700b: $c8

    rst $38                                       ; $700c: $ff
    ld e, [hl]                                    ; $700d: $5e
    and c                                         ; $700e: $a1
    ld e, b                                       ; $700f: $58
    and a                                         ; $7010: $a7
    ld [hl], c                                    ; $7011: $71
    cp $cb                                        ; $7012: $fe $cb
    adc h                                         ; $7014: $8c

jr_007_7015:
    rst $38                                       ; $7015: $ff
    ld [$780f], sp                                ; $7016: $08 $0f $78
    ccf                                           ; $7019: $3f
    call nz, $a17b                                ; $701a: $c4 $7b $a1
    rst $18                                       ; $701d: $df
    rst $38                                       ; $701e: $ff
    rst $20                                       ; $701f: $e7
    jr jr_007_6fce                                ; $7020: $18 $ac

    ld d, e                                       ; $7022: $53
    adc a                                         ; $7023: $8f
    ld [hl], b                                    ; $7024: $70
    ld l, b                                       ; $7025: $68
    sub a                                         ; $7026: $97
    rst $38                                       ; $7027: $ff
    adc c                                         ; $7028: $89
    halt                                          ; $7029: $76
    or e                                          ; $702a: $b3
    ld a, h                                       ; $702b: $7c
    ei                                            ; $702c: $fb
    call z, Call_000_078f                         ; $702d: $cc $8f $07
    rst $38                                       ; $7030: $ff
    rra                                           ; $7031: $1f
    ldh [$9b], a                                  ; $7032: $e0 $9b
    ld h, h                                       ; $7034: $64
    call z, Call_000_0f33                         ; $7035: $cc $33 $0f
    ldh a, [rIE]                                  ; $7038: $f0 $ff
    ret z                                         ; $703a: $c8

    scf                                           ; $703b: $37
    rrca                                          ; $703c: $0f
    ldh a, [$c9]                                  ; $703d: $f0 $c9
    ld [hl], $fa                                  ; $703f: $36 $fa
    db $fd                                        ; $7041: $fd
    rst $38                                       ; $7042: $ff
    rst $38                                       ; $7043: $ff
    nop                                           ; $7044: $00
    cp a                                          ; $7045: $bf
    ld b, b                                       ; $7046: $40
    ld [hl], b                                    ; $7047: $70
    adc a                                         ; $7048: $8f
    rst $08                                       ; $7049: $cf
    jr nc, @+$01                                  ; $704a: $30 $ff

    ld a, b                                       ; $704c: $78
    add a                                         ; $704d: $87
    adc l                                         ; $704e: $8d
    ld [hl], e                                    ; $704f: $73
    or e                                          ; $7050: $b3
    ld a, [hl]                                    ; $7051: $7e
    ld a, [$ffcc]                                 ; $7052: $fa $cc $ff
    rst $38                                       ; $7055: $ff
    nop                                           ; $7056: $00
    pop bc                                        ; $7057: $c1
    ld a, $7f                                     ; $7058: $3e $7f
    add b                                         ; $705a: $80
    add b                                         ; $705b: $80
    ld a, a                                       ; $705c: $7f
    ld a, $fc                                     ; $705d: $3e $fc
    ldh [rIE], a                                  ; $705f: $e0 $ff
    rst $38                                       ; $7061: $ff
    ld b, b                                       ; $7062: $40
    ld h, b                                       ; $7063: $60
    ld e, a                                       ; $7064: $5f
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    rst $38                                       ; $7068: $ff
    rst $28                                       ; $7069: $ef
    ld de, $6799                                  ; $706a: $11 $99 $67
    ld [hl], a                                    ; $706d: $77
    adc d                                         ; $706e: $8a
    adc $32                                       ; $706f: $ce $32
    rst $38                                       ; $7071: $ff
    ld a, [hl-]                                   ; $7072: $3a
    add $f7                                       ; $7073: $c6 $f7
    ld a, [bc]                                    ; $7075: $0a
    add hl, de                                    ; $7076: $19
    rst $20                                       ; $7077: $e7
    nop                                           ; $7078: $00
    rst $38                                       ; $7079: $ff
    rst $38                                       ; $707a: $ff
    ld d, $12                                     ; $707b: $16 $12
    dec e                                         ; $707d: $1d
    rla                                           ; $707e: $17
    add hl, sp                                    ; $707f: $39
    rra                                           ; $7080: $1f
    dec sp                                        ; $7081: $3b
    dec h                                         ; $7082: $25
    rst $38                                       ; $7083: $ff
    dec l                                         ; $7084: $2d
    inc sp                                        ; $7085: $33
    ld h, $39                                     ; $7086: $26 $39
    cp b                                          ; $7088: $b8
    daa                                           ; $7089: $27
    ret nz                                        ; $708a: $c0

    rst $38                                       ; $708b: $ff
    rst $38                                       ; $708c: $ff
    ld e, b                                       ; $708d: $58
    ld [hl], b                                    ; $708e: $70
    ld [hl], e                                    ; $708f: $73
    inc hl                                        ; $7090: $23
    inc hl                                        ; $7091: $23
    ld hl, $3020                                  ; $7092: $21 $20 $30
    rst $38                                       ; $7095: $ff
    cp b                                          ; $7096: $b8
    db $10                                        ; $7097: $10
    sbc [hl]                                      ; $7098: $9e
    sbc h                                         ; $7099: $9c
    sbc e                                         ; $709a: $9b
    sub a                                         ; $709b: $97
    ld h, b                                       ; $709c: $60
    rst $38                                       ; $709d: $ff
    rst $38                                       ; $709e: $ff
    add hl, sp                                    ; $709f: $39
    add hl, sp                                    ; $70a0: $39
    add hl, sp                                    ; $70a1: $39
    add hl, hl                                    ; $70a2: $29
    add hl, hl                                    ; $70a3: $29
    add hl, sp                                    ; $70a4: $39
    add hl, hl                                    ; $70a5: $29
    jr c, @+$01                                   ; $70a6: $38 $ff

    inc a                                         ; $70a8: $3c
    jr jr_007_70bf                                ; $70a9: $18 $14

    inc e                                         ; $70ab: $1c
    sub $9c                                       ; $70ac: $d6 $9c
    ld h, e                                       ; $70ae: $63
    rst $38                                       ; $70af: $ff
    rst $38                                       ; $70b0: $ff
    ld h, c                                       ; $70b1: $61
    pop bc                                        ; $70b2: $c1
    ld c, [hl]                                    ; $70b3: $4e
    add $5a                                       ; $70b4: $c6 $5a
    adc [hl]                                      ; $70b6: $8e
    adc $87                                       ; $70b7: $ce $87
    rst $38                                       ; $70b9: $ff
    and c                                         ; $70ba: $a1
    pop bc                                        ; $70bb: $c1
    pop af                                        ; $70bc: $f1
    ld h, c                                       ; $70bd: $61
    ld e, a                                       ; $70be: $5f

jr_007_70bf:
    ld a, c                                       ; $70bf: $79
    add [hl]                                      ; $70c0: $86
    rst $38                                       ; $70c1: $ff
    rst $38                                       ; $70c2: $ff
    rlca                                          ; $70c3: $07
    ld [bc], a                                    ; $70c4: $02
    ld h, d                                       ; $70c5: $62
    ld b, e                                       ; $70c6: $43
    ld [hl], e                                    ; $70c7: $73
    ld h, d                                       ; $70c8: $62
    ld d, e                                       ; $70c9: $53
    ld [hl], d                                    ; $70ca: $72
    rst $38                                       ; $70cb: $ff
    ld [hl], d                                    ; $70cc: $72
    ld d, e                                       ; $70cd: $53
    ld d, c                                       ; $70ce: $51
    ld [hl], c                                    ; $70cf: $71
    sub c                                         ; $70d0: $91
    pop af                                        ; $70d1: $f1
    ld c, $ff                                     ; $70d2: $0e $ff
    rst $38                                       ; $70d4: $ff
    jp hl                                         ; $70d5: $e9


    add hl, de                                    ; $70d6: $19
    sbc c                                         ; $70d7: $99
    ld [hl], c                                    ; $70d8: $71
    ld a, c                                       ; $70d9: $79
    sub b                                         ; $70da: $90
    call z, $ff38                                 ; $70db: $cc $38 $ff
    ld [hl], $cc                                  ; $70de: $36 $cc
    di                                            ; $70e0: $f3
    ld c, $01                                     ; $70e1: $0e $01
    rst $38                                       ; $70e3: $ff
    nop                                           ; $70e4: $00
    rst $38                                       ; $70e5: $ff
    rst $38                                       ; $70e6: $ff
    ld l, l                                       ; $70e7: $6d
    sbc [hl]                                      ; $70e8: $9e
    ld d, d                                       ; $70e9: $52
    or d                                          ; $70ea: $b2
    ld a, [c]                                     ; $70eb: $f2
    ld a, [c]                                     ; $70ec: $f2
    ld [hl-], a                                   ; $70ed: $32
    ld [de], a                                    ; $70ee: $12
    rst $38                                       ; $70ef: $ff
    inc bc                                        ; $70f0: $03
    ld [bc], a                                    ; $70f1: $02
    inc bc                                        ; $70f2: $03
    inc bc                                        ; $70f3: $03
    ld [c], a                                     ; $70f4: $e2
    jp $ff3c                                      ; $70f5: $c3 $3c $ff


    rst $38                                       ; $70f8: $ff
    inc b                                         ; $70f9: $04
    inc b                                         ; $70fa: $04
    ld h, h                                       ; $70fb: $64
    ld h, h                                       ; $70fc: $64
    ld h, h                                       ; $70fd: $64
    inc h                                         ; $70fe: $24
    inc b                                         ; $70ff: $04
    ld b, $ff                                     ; $7100: $06 $ff
    ld b, $02                                     ; $7102: $06 $02
    jp nz, Jump_007_7a82                          ; $7104: $c2 $82 $7a

    ld a, [c]                                     ; $7107: $f2
    dec c                                         ; $7108: $0d
    rst $38                                       ; $7109: $ff
    ld a, a                                       ; $710a: $7f
    dec a                                         ; $710b: $3d
    rla                                           ; $710c: $17
    rlca                                          ; $710d: $07
    ld [bc], a                                    ; $710e: $02
    ld [bc], a                                    ; $710f: $02
    ld [bc], a                                    ; $7110: $02
    sub d                                         ; $7111: $92
    rst $38                                       ; $7112: $ff
    ldh [rIE], a                                  ; $7113: $e0 $ff
    sub e                                         ; $7115: $93
    sub d                                         ; $7116: $92
    sub e                                         ; $7117: $93
    sub e                                         ; $7118: $93
    ld l, h                                       ; $7119: $6c
    rst $38                                       ; $711a: $ff
    adc h                                         ; $711b: $8c
    inc b                                         ; $711c: $04
    rst $38                                       ; $711d: $ff

jr_007_711e:
    ld l, l                                       ; $711e: $6d
    ld h, h                                       ; $711f: $64
    ld e, b                                       ; $7120: $58
    inc c                                         ; $7121: $0c
    ld [hl], $3c                                  ; $7122: $36 $3c
    inc [hl]                                      ; $7124: $34
    jr @+$01                                      ; $7125: $18 $ff

    add hl, bc                                    ; $7127: $09
    ld [$89cb], sp                                ; $7128: $08 $cb $89
    halt                                          ; $712b: $76
    rst $38                                       ; $712c: $ff
    rst $18                                       ; $712d: $df
    ld h, b                                       ; $712e: $60
    rst $38                                       ; $712f: $ff
    or b                                          ; $7130: $b0
    rst $08                                       ; $7131: $cf
    ld c, a                                       ; $7132: $4f
    ld [hl], b                                    ; $7133: $70
    ld [hl], c                                    ; $7134: $71
    ld c, [hl]                                    ; $7135: $4e
    cp $41                                        ; $7136: $fe $41
    ccf                                           ; $7138: $3f
    add e                                         ; $7139: $83
    db $fc                                        ; $713a: $fc
    ld a, h                                       ; $713b: $7c
    add e                                         ; $713c: $83
    nop                                           ; $713d: $00
    rst $38                                       ; $713e: $ff
    nop                                           ; $713f: $00
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    rst $38                                       ; $7142: $ff
    rst $38                                       ; $7143: $ff
    nop                                           ; $7144: $00
    dec sp                                        ; $7145: $3b
    call nz, Call_000_38c7                        ; $7146: $c4 $c7 $38
    ld a, b                                       ; $7149: $78
    add a                                         ; $714a: $87
    rst $38                                       ; $714b: $ff
    adc a                                         ; $714c: $8f
    ld [hl], b                                    ; $714d: $70
    ld hl, sp+$07                                 ; $714e: $f8 $07
    rlca                                          ; $7150: $07
    ld hl, sp-$04                                 ; $7151: $f8 $fc
    inc bc                                        ; $7153: $03
    rst $28                                       ; $7154: $ef
    rst $38                                       ; $7155: $ff
    nop                                           ; $7156: $00
    inc a                                         ; $7157: $3c
    jp $e3f0                                      ; $7158: $c3 $f0 $e3


    di                                            ; $715b: $f3
    inc c                                         ; $715c: $0c
    inc e                                         ; $715d: $1c
    rst $38                                       ; $715e: $ff
    db $e3                                        ; $715f: $e3
    rst $20                                       ; $7160: $e7
    jr @+$01                                      ; $7161: $18 $ff

    nop                                           ; $7163: $00
    pop hl                                        ; $7164: $e1
    ld e, $9f                                     ; $7165: $1e $9f
    rst $38                                       ; $7167: $ff
    ld h, b                                       ; $7168: $60
    ld h, b                                       ; $7169: $60
    sbc a                                         ; $716a: $9f
    rst $18                                       ; $716b: $df
    jr nz, jr_007_711e                            ; $716c: $20 $b0

    ld c, a                                       ; $716e: $4f
    ld a, a                                       ; $716f: $7f
    rst $38                                       ; $7170: $ff
    add b                                         ; $7171: $80
    jp $f93c                                      ; $7172: $c3 $3c $f9


    ld b, $f1                                     ; $7175: $06 $f1
    ld c, $0c                                     ; $7177: $0e $0c

Call_007_7179:
    rst $38                                       ; $7179: $ff
    di                                            ; $717a: $f3
    ld hl, sp+$07                                 ; $717b: $f8 $07
    add [hl]                                      ; $717d: $86
    ld a, c                                       ; $717e: $79
    ld a, l                                       ; $717f: $7d
    add e                                         ; $7180: $83
    jp Jump_000_3eff                              ; $7181: $c3 $ff $3e


    ccf                                           ; $7184: $3f
    jp nz, Jump_000_00ff                          ; $7185: $c2 $ff $00

    db $fd                                        ; $7188: $fd
    ld [bc], a                                    ; $7189: $02
    inc sp                                        ; $718a: $33
    rst $38                                       ; $718b: $ff
    db $fc                                        ; $718c: $fc
    ld l, [hl]                                    ; $718d: $6e
    ret                                           ; $718e: $c9


    ret                                           ; $718f: $c9


    adc [hl]                                      ; $7190: $8e
    sbc a                                         ; $7191: $9f
    ld [$ff31], sp                                ; $7192: $08 $31 $ff
    rra                                           ; $7195: $1f
    ld a, [de]                                    ; $7196: $1a
    ld c, $80                                     ; $7197: $0e $80
    ld a, a                                       ; $7199: $7f
    pop bc                                        ; $719a: $c1
    ld a, $9c                                     ; $719b: $3e $9c
    rst $38                                       ; $719d: $ff
    ld h, e                                       ; $719e: $63
    ld b, c                                       ; $719f: $41
    cp [hl]                                       ; $71a0: $be
    ld h, e                                       ; $71a1: $63
    db $fc                                        ; $71a2: $fc
    sub b                                         ; $71a3: $90
    sbc a                                         ; $71a4: $9f
    sub [hl]                                      ; $71a5: $96
    rst $38                                       ; $71a6: $ff
    sbc c                                         ; $71a7: $99
    dec c                                         ; $71a8: $0d
    dec bc                                        ; $71a9: $0b
    ld bc, $83fe                                  ; $71aa: $01 $fe $83
    ld a, h                                       ; $71ad: $7c
    dec sp                                        ; $71ae: $3b

jr_007_71af:
    rst $38                                       ; $71af: $ff
    call nz, Call_000_0df2                        ; $71b0: $c4 $f2 $0d
    add e                                         ; $71b3: $83
    ld a, h                                       ; $71b4: $7c
    ld [hl], $f9                                  ; $71b5: $36 $f9
    ld sp, hl                                     ; $71b7: $f9
    rst $30                                       ; $71b8: $f7
    rst $08                                       ; $71b9: $cf
    adc [hl]                                      ; $71ba: $8e
    ld b, $a0                                     ; $71bb: $06 $a0
    push hl                                       ; $71bd: $e5
    adc [hl]                                      ; $71be: $8e
    ld [hl], c                                    ; $71bf: $71
    pop af                                        ; $71c0: $f1
    rrca                                          ; $71c1: $0f
    rst $38                                       ; $71c2: $ff
    or e                                          ; $71c3: $b3
    cp $fe                                        ; $71c4: $fe $fe
    ld c, h                                       ; $71c6: $4c
    sbc a                                         ; $71c7: $9f
    ld h, b                                       ; $71c8: $60
    sub c                                         ; $71c9: $91
    ld l, [hl]                                    ; $71ca: $6e
    rst $38                                       ; $71cb: $ff
    ccf                                           ; $71cc: $3f
    ret nz                                        ; $71cd: $c0

    jr nz, jr_007_71af                            ; $71ce: $20 $df

    ld a, a                                       ; $71d0: $7f
    add b                                         ; $71d1: $80
    or b                                          ; $71d2: $b0
    rst $08                                       ; $71d3: $cf
    rst $38                                       ; $71d4: $ff
    rst $38                                       ; $71d5: $ff
    ld b, b                                       ; $71d6: $40
    ld b, e                                       ; $71d7: $43
    ld a, h                                       ; $71d8: $7c
    rst $38                                       ; $71d9: $ff
    nop                                           ; $71da: $00
    di                                            ; $71db: $f3
    inc c                                         ; $71dc: $0c
    rst $38                                       ; $71dd: $ff
    rrca                                          ; $71de: $0f
    ldh a, [$f8]                                  ; $71df: $f0 $f8
    rlca                                          ; $71e1: $07
    add a                                         ; $71e2: $87
    ld a, b                                       ; $71e3: $78
    ld a, h                                       ; $71e4: $7c
    add e                                         ; $71e5: $83
    rst $28                                       ; $71e6: $ef
    jp Jump_000_3e3c                              ; $71e7: $c3 $3c $3e


    pop bc                                        ; $71ea: $c1
    and b                                         ; $71eb: $a0
    pop hl                                        ; $71ec: $e1
    inc bc                                        ; $71ed: $03
    db $fc                                        ; $71ee: $fc
    cp $ff                                        ; $71ef: $fe $ff
    ld bc, $fe01                                  ; $71f1: $01 $01 $fe
    rst $38                                       ; $71f4: $ff

Jump_007_71f5:
    nop                                           ; $71f5: $00
    add b                                         ; $71f6: $80
    ld a, a                                       ; $71f7: $7f
    ld a, a                                       ; $71f8: $7f
    rst $38                                       ; $71f9: $ff
    add b                                         ; $71fa: $80
    rst $38                                       ; $71fb: $ff
    nop                                           ; $71fc: $00
    add $39                                       ; $71fd: $c6 $39
    cp a                                          ; $71ff: $bf
    ld b, b                                       ; $7200: $40
    ld h, b                                       ; $7201: $60

jr_007_7202:
    rst $38                                       ; $7202: $ff
    sbc a                                         ; $7203: $9f
    sbc a                                         ; $7204: $9f
    ld h, b                                       ; $7205: $60
    ld [hl], b                                    ; $7206: $70
    adc a                                         ; $7207: $8f
    rst $08                                       ; $7208: $cf
    jr nc, @-$44                                  ; $7209: $30 $ba

    ld bc, $0045                                  ; $720b: $01 $45 $00
    nop                                           ; $720e: $00
    nop                                           ; $720f: $00
    rst $38                                       ; $7210: $ff
    sub e                                         ; $7211: $93
    ld l, h                                       ; $7212: $6c
    xor $11                                       ; $7213: $ee $11
    xor c                                         ; $7215: $a9
    ld d, [hl]                                    ; $7216: $56
    ld d, [hl]                                    ; $7217: $56
    xor c                                         ; $7218: $a9
    rst $38                                       ; $7219: $ff
    pop de                                        ; $721a: $d1
    ld l, $26                                     ; $721b: $2e $26
    reti                                          ; $721d: $d9


    rst $18                                       ; $721e: $df
    jr nz, jr_007_7221                            ; $721f: $20 $00

jr_007_7221:
    rst $38                                       ; $7221: $ff
    rst $38                                       ; $7222: $ff
    sbc b                                         ; $7223: $98
    ld h, a                                       ; $7224: $67
    ld a, a                                       ; $7225: $7f
    add b                                         ; $7226: $80
    call nz, Call_000_3f3b                        ; $7227: $c4 $3b $3f
    ret nz                                        ; $722a: $c0

    rst $38                                       ; $722b: $ff
    jp Jump_007_7d3c                              ; $722c: $c3 $3c $7d


    add d                                         ; $722f: $82
    add [hl]                                      ; $7230: $86
    ld a, c                                       ; $7231: $79
    nop                                           ; $7232: $00
    rst $38                                       ; $7233: $ff
    rst $38                                       ; $7234: $ff
    inc a                                         ; $7235: $3c
    jp Jump_000_38c7                              ; $7236: $c3 $c7 $38


    jr c, jr_007_7202                             ; $7239: $38 $c7

    rst $20                                       ; $723b: $e7
    jr @+$01                                      ; $723c: $18 $ff

    inc a                                         ; $723e: $3c
    jp Jump_000_3cc3                              ; $723f: $c3 $c3 $3c


    ld a, [hl]                                    ; $7242: $7e
    add c                                         ; $7243: $81
    nop                                           ; $7244: $00
    rst $38                                       ; $7245: $ff
    rst $38                                       ; $7246: $ff
    pop hl                                        ; $7247: $e1
    rra                                           ; $7248: $1f
    sbc [hl]                                      ; $7249: $9e
    ld h, c                                       ; $724a: $61
    ld h, c                                       ; $724b: $61
    sbc [hl]                                      ; $724c: $9e
    sbc $21                                       ; $724d: $de $21
    rst $38                                       ; $724f: $ff
    inc hl                                        ; $7250: $23
    rst $18                                       ; $7251: $df
    call c, Call_000_3424                         ; $7252: $dc $24 $34
    call z, $ff03                                 ; $7255: $cc $03 $ff
    rst $38                                       ; $7258: $ff
    adc l                                         ; $7259: $8d
    rlca                                          ; $725a: $07
    add $83                                       ; $725b: $c6 $83
    ld h, [hl]                                    ; $725d: $66
    jp $87cc                                      ; $725e: $c3 $cc $87


    rst $38                                       ; $7261: $ff
    sbc e                                         ; $7262: $9b
    inc c                                         ; $7263: $0c
    inc [hl]                                      ; $7264: $34
    dec de                                        ; $7265: $1b
    ld h, a                                       ; $7266: $67
    jr c, @-$3e                                   ; $7267: $38 $c0

    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    sub e                                         ; $726b: $93
    sbc [hl]                                      ; $726c: $9e
    sub [hl]                                      ; $726d: $96
    sbc h                                         ; $726e: $9c
    sub h                                         ; $726f: $94
    sbc h                                         ; $7270: $9c
    sbc [hl]                                      ; $7271: $9e
    adc h                                         ; $7272: $8c
    rst $38                                       ; $7273: $ff
    res 1, [hl]                                   ; $7274: $cb $8e
    ld c, l                                       ; $7276: $4d
    rst $00                                       ; $7277: $c7
    ld h, h                                       ; $7278: $64
    rst $00                                       ; $7279: $c7
    dec sp                                        ; $727a: $3b
    db $fc                                        ; $727b: $fc
    rst $38                                       ; $727c: $ff
    ld b, $06                                     ; $727d: $06 $06
    ld h, [hl]                                    ; $727f: $66
    ld h, [hl]                                    ; $7280: $66
    ld h, [hl]                                    ; $7281: $66
    ld h, $04                                     ; $7282: $26 $04
    ld b, $ff                                     ; $7284: $06 $ff
    ld b, $02                                     ; $7286: $06 $02
    jp nz, Jump_007_7a82                          ; $7288: $c2 $82 $7a

    ld a, [c]                                     ; $728b: $f2
    db $dd                                        ; $728c: $dd
    cpl                                           ; $728d: $2f
    rst $38                                       ; $728e: $ff
    inc c                                         ; $728f: $0c
    ld [$3879], sp                                ; $7290: $08 $79 $38
    ld c, b                                       ; $7293: $48
    ld a, b                                       ; $7294: $78
    halt                                          ; $7295: $76
    ld c, h                                       ; $7296: $4c
    rst $38                                       ; $7297: $ff
    ld c, h                                       ; $7298: $4c
    ld a, b                                       ; $7299: $78
    ld a, c                                       ; $729a: $79
    ld c, b                                       ; $729b: $48
    ld c, e                                       ; $729c: $4b
    ld a, c                                       ; $729d: $79
    add [hl]                                      ; $729e: $86
    rst $38                                       ; $729f: $ff
    rst $38                                       ; $72a0: $ff
    db $fc                                        ; $72a1: $fc
    ld b, e                                       ; $72a2: $43
    add a                                         ; $72a3: $87
    ld hl, sp+$78                                 ; $72a4: $f8 $78
    ld b, a                                       ; $72a6: $47
    ld h, a                                       ; $72a7: $67
    ld e, b                                       ; $72a8: $58
    xor a                                         ; $72a9: $af
    db $fc                                        ; $72aa: $fc
    ld b, e                                       ; $72ab: $43
    add e                                         ; $72ac: $83
    db $fc                                        ; $72ad: $fc
    and b                                         ; $72ae: $a0
    ld [c], a                                     ; $72af: $e2
    ld e, $a0                                     ; $72b0: $1e $a0
    pop hl                                        ; $72b2: $e1
    rst $18                                       ; $72b3: $df
    rst $38                                       ; $72b4: $ff
    jr nz, @+$22                                  ; $72b5: $20 $20

    rst $18                                       ; $72b7: $df
    rst $18                                       ; $72b8: $df

jr_007_72b9:
    jr nz, jr_007_72eb                            ; $72b9: $20 $30

    rst $08                                       ; $72bb: $cf
    nop                                           ; $72bc: $00
    rst $38                                       ; $72bd: $ff
    rst $38                                       ; $72be: $ff
    add c                                         ; $72bf: $81
    ld a, [hl]                                    ; $72c0: $7e
    ld a, [hl]                                    ; $72c1: $7e
    add c                                         ; $72c2: $81
    pop bc                                        ; $72c3: $c1
    ld a, $3e                                     ; $72c4: $3e $3e
    rst $38                                       ; $72c6: $ff
    pop bc                                        ; $72c7: $c1
    db $e3                                        ; $72c8: $e3
    inc e                                         ; $72c9: $1c
    sbc h                                         ; $72ca: $9c
    ld h, e                                       ; $72cb: $63
    ld [hl], a                                    ; $72cc: $77
    adc b                                         ; $72cd: $88
    nop                                           ; $72ce: $00
    rst $38                                       ; $72cf: $ff
    rst $38                                       ; $72d0: $ff
    ld d, l                                       ; $72d1: $55
    xor d                                         ; $72d2: $aa
    ld d, [hl]                                    ; $72d3: $56
    xor c                                         ; $72d4: $a9
    jp hl                                         ; $72d5: $e9


    ld d, $6f                                     ; $72d6: $16 $6f
    rst $38                                       ; $72d8: $ff
    sub b                                         ; $72d9: $90
    or b                                          ; $72da: $b0
    ld c, a                                       ; $72db: $4f
    rst $18                                       ; $72dc: $df
    jr nz, @+$63                                  ; $72dd: $20 $61

    sbc [hl]                                      ; $72df: $9e
    nop                                           ; $72e0: $00
    ld bc, $00ff                                  ; $72e1: $01 $ff $00
    nop                                           ; $72e4: $00
    nop                                           ; $72e5: $00
    rst $38                                       ; $72e6: $ff
    rst $38                                       ; $72e7: $ff
    nop                                           ; $72e8: $00
    sbc c                                         ; $72e9: $99
    ld h, [hl]                                    ; $72ea: $66

jr_007_72eb:
    halt                                          ; $72eb: $76
    adc c                                         ; $72ec: $89

Call_007_72ed:
    rst $08                                       ; $72ed: $cf
    jr nc, @+$01                                  ; $72ee: $30 $ff

    jr c, jr_007_72b9                             ; $72f0: $38 $c7

    rst $20                                       ; $72f2: $e7
    jr jr_007_7311                                ; $72f3: $18 $1c

    db $e3                                        ; $72f5: $e3
    di                                            ; $72f6: $f3
    inc c                                         ; $72f7: $0c
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    nop                                           ; $72fa: $00
    di                                            ; $72fb: $f3
    inc c                                         ; $72fc: $0c
    inc e                                         ; $72fd: $1c
    db $e3                                        ; $72fe: $e3
    and $19                                       ; $72ff: $e6 $19
    rst $38                                       ; $7301: $ff
    dec sp                                        ; $7302: $3b
    call nz, Call_000_33cc                        ; $7303: $c4 $cc $33
    ld [hl], a                                    ; $7306: $77
    adc b                                         ; $7307: $88
    cp b                                          ; $7308: $b8
    ld b, a                                       ; $7309: $47
    rst $38                                       ; $730a: $ff
    rst $38                                       ; $730b: $ff
    nop                                           ; $730c: $00
    adc h                                         ; $730d: $8c
    ld [hl], e                                    ; $730e: $73
    di                                            ; $730f: $f3
    inc c                                         ; $7310: $0c

jr_007_7311:
    ld e, $e1                                     ; $7311: $1e $e1
    rst $38                                       ; $7313: $ff
    pop hl                                        ; $7314: $e1
    ld e, $7f                                     ; $7315: $1e $7f
    add b                                         ; $7317: $80
    sbc h                                         ; $7318: $9c
    ld h, e                                       ; $7319: $63
    db $e3                                        ; $731a: $e3
    inc e                                         ; $731b: $1c
    rst $38                                       ; $731c: $ff
    rst $38                                       ; $731d: $ff
    nop                                           ; $731e: $00
    db $e3                                        ; $731f: $e3
    inc e                                         ; $7320: $1c
    sbc [hl]                                      ; $7321: $9e
    ld h, c                                       ; $7322: $61
    ld [hl], c                                    ; $7323: $71
    adc [hl]                                      ; $7324: $8e
    rst $38                                       ; $7325: $ff
    rst $08                                       ; $7326: $cf
    jr nc, jr_007_735b                            ; $7327: $30 $32

    call Call_000_00ff                            ; $7329: $cd $ff $00
    ret nz                                        ; $732c: $c0

    ccf                                           ; $732d: $3f
    rst $38                                       ; $732e: $ff
    rst $38                                       ; $732f: $ff
    nop                                           ; $7330: $00
    rst $38                                       ; $7331: $ff
    nop                                           ; $7332: $00
    ld bc, $fefe                                  ; $7333: $01 $fe $fe
    ld bc, $03ff                                  ; $7336: $01 $ff $03
    db $fc                                        ; $7339: $fc
    db $fc                                        ; $733a: $fc
    inc bc                                        ; $733b: $03
    and a                                         ; $733c: $a7
    ld e, b                                       ; $733d: $58
    add hl, sp                                    ; $733e: $39
    add $ff                                       ; $733f: $c6 $ff
    rst $38                                       ; $7341: $ff
    nop                                           ; $7342: $00
    inc sp                                        ; $7343: $33
    call z, $23dc                                 ; $7344: $cc $dc $23
    ld h, e                                       ; $7347: $63
    sbc h                                         ; $7348: $9c
    rst $38                                       ; $7349: $ff
    cp [hl]                                       ; $734a: $be
    ld b, c                                       ; $734b: $41
    rst $00                                       ; $734c: $c7
    jr c, @+$7a                                   ; $734d: $38 $78

    add a                                         ; $734f: $87
    sbc a                                         ; $7350: $9f
    ld h, b                                       ; $7351: $60

Jump_007_7352:
    nop                                           ; $7352: $00
    and b                                         ; $7353: $a0
    rst $38                                       ; $7354: $ff
    and b                                         ; $7355: $a0
    rst $38                                       ; $7356: $ff
    and b                                         ; $7357: $a0
    ld sp, hl                                     ; $7358: $f9
    nop                                           ; $7359: $00
    nop                                           ; $735a: $00

jr_007_735b:
    nop                                           ; $735b: $00
    ld sp, hl                                     ; $735c: $f9
    nop                                           ; $735d: $00
    rst $38                                       ; $735e: $ff
    rst $38                                       ; $735f: $ff
    ei                                            ; $7360: $fb
    ld a, [$0f06]                                 ; $7361: $fa $06 $0f
    dec bc                                        ; $7364: $0b
    dec e                                         ; $7365: $1d
    rla                                           ; $7366: $17
    rst $38                                       ; $7367: $ff
    add hl, sp                                    ; $7368: $39
    dec l                                         ; $7369: $2d
    ld [hl], e                                    ; $736a: $73
    ld e, e                                       ; $736b: $5b
    ld h, a                                       ; $736c: $67
    ld e, l                                       ; $736d: $5d
    ld h, e                                       ; $736e: $63
    ld l, $ff                                     ; $736f: $2e $ff
    ld [hl], c                                    ; $7371: $71
    rla                                           ; $7372: $17
    jr c, jr_007_7380                             ; $7373: $38 $0b

    inc e                                         ; $7375: $1c
    ld d, $39                                     ; $7376: $16 $39
    ld l, l                                       ; $7378: $6d
    rst $38                                       ; $7379: $ff
    di                                            ; $737a: $f3
    ei                                            ; $737b: $fb
    add a                                         ; $737c: $87
    rst $30                                       ; $737d: $f7
    adc a                                         ; $737e: $8f
    ld a, [hl]                                    ; $737f: $7e

jr_007_7380:
    rst $38                                       ; $7380: $ff
    inc a                                         ; $7381: $3c
    db $fd                                        ; $7382: $fd
    ld a, [hl]                                    ; $7383: $7e
    ret nz                                        ; $7384: $c0

    ld [c], a                                     ; $7385: $e2
    add b                                         ; $7386: $80
    adc h                                         ; $7387: $8c
    sbc [hl]                                      ; $7388: $9e
    sbc [hl]                                      ; $7389: $9e
    sub e                                         ; $738a: $93
    cp [hl]                                       ; $738b: $be
    rst $38                                       ; $738c: $ff
    di                                            ; $738d: $f3
    ld a, a                                       ; $738e: $7f
    pop bc                                        ; $738f: $c1
    cp a                                          ; $7390: $bf
    di                                            ; $7391: $f3
    ld e, a                                       ; $7392: $5f
    di                                            ; $7393: $f3
    ld a, [hl]                                    ; $7394: $7e
    rst $38                                       ; $7395: $ff
    di                                            ; $7396: $f3
    db $fd                                        ; $7397: $fd
    di                                            ; $7398: $f3
    rst $10                                       ; $7399: $d7
    ld sp, hl                                     ; $739a: $f9
    adc [hl]                                      ; $739b: $8e
    reti                                          ; $739c: $d9


    dec bc                                        ; $739d: $0b
    rst $18                                       ; $739e: $df
    adc h                                         ; $739f: $8c
    rlca                                          ; $73a0: $07
    rrca                                          ; $73a1: $0f
    inc bc                                        ; $73a2: $03
    rlca                                          ; $73a3: $07
    cp d                                          ; $73a4: $ba
    rst $20                                       ; $73a5: $e7
    add hl, de                                    ; $73a6: $19
    ccf                                           ; $73a7: $3f
    rst $38                                       ; $73a8: $ff
    xor [hl]                                      ; $73a9: $ae
    pop af                                        ; $73aa: $f1
    rst $18                                       ; $73ab: $df
    ldh [$bf], a                                  ; $73ac: $e0 $bf
    call z, $8cf7                                 ; $73ae: $cc $f7 $8c
    rst $38                                       ; $73b1: $ff
    cp a                                          ; $73b2: $bf
    ret nz                                        ; $73b3: $c0

    ld e, a                                       ; $73b4: $5f
    ldh [$b7], a                                  ; $73b5: $e0 $b7
    ld hl, sp-$32                                 ; $73b7: $f8 $ce
    rst $38                                       ; $73b9: $ff
    rst $28                                       ; $73ba: $ef
    push bc                                       ; $73bb: $c5
    rst $08                                       ; $73bc: $cf
    add b                                         ; $73bd: $80

Jump_007_73be:
    pop bc                                        ; $73be: $c1
    add b                                         ; $73bf: $80
    db $e3                                        ; $73c0: $e3
    inc c                                         ; $73c1: $0c
    ld e, $1e                                     ; $73c2: $1e $1e
    rst $38                                       ; $73c4: $ff
    inc de                                        ; $73c5: $13
    ld a, $f3                                     ; $73c6: $3e $f3
    rst $38                                       ; $73c8: $ff
    pop bc                                        ; $73c9: $c1
    rst $38                                       ; $73ca: $ff
    di                                            ; $73cb: $f3
    rst $18                                       ; $73cc: $df
    rst $38                                       ; $73cd: $ff
    di                                            ; $73ce: $f3
    sbc $d3                                       ; $73cf: $de $d3
    db $dd                                        ; $73d1: $dd
    db $d3                                        ; $73d2: $d3
    ld d, a                                       ; $73d3: $57
    ld sp, hl                                     ; $73d4: $f9
    xor $7f                                       ; $73d5: $ee $7f
    ld a, c                                       ; $73d7: $79
    db $eb                                        ; $73d8: $eb
    ld l, h                                       ; $73d9: $6c
    rst $20                                       ; $73da: $e7
    rst $28                                       ; $73db: $ef
    jp Jump_007_60e7                              ; $73dc: $c3 $e7 $60


    rst $20                                       ; $73df: $e7
    rst $38                                       ; $73e0: $ff
    ld h, b                                       ; $73e1: $60
    ldh a, [$f1]                                  ; $73e2: $f0 $f1
    sbc e                                         ; $73e4: $9b
    ei                                            ; $73e5: $fb
    sbc d                                         ; $73e6: $9a
    ei                                            ; $73e7: $fb
    sbc d                                         ; $73e8: $9a
    rst $38                                       ; $73e9: $ff
    or e                                          ; $73ea: $b3
    jp c, $de6d                                   ; $73eb: $da $6d $de

    ld e, [hl]                                    ; $73ee: $5e
    pop hl                                        ; $73ef: $e1
    xor l                                         ; $73f0: $ad
    di                                            ; $73f1: $f3
    cp a                                          ; $73f2: $bf
    db $d3                                        ; $73f3: $d3
    rst $38                                       ; $73f4: $ff
    rst $08                                       ; $73f5: $cf
    rst $18                                       ; $73f6: $df
    add [hl]                                      ; $73f7: $86
    rst $08                                       ; $73f8: $cf
    ld b, b                                       ; $73f9: $40
    push hl                                       ; $73fa: $e5
    inc c                                         ; $73fb: $0c
    rst $38                                       ; $73fc: $ff
    ld e, $12                                     ; $73fd: $1e $12
    ccf                                           ; $73ff: $3f
    xor a                                         ; $7400: $af
    di                                            ; $7401: $f3
    db $db                                        ; $7402: $db
    ld h, a                                       ; $7403: $67
    rst $30                                       ; $7404: $f7
    rst $38                                       ; $7405: $ff
    ld c, a                                       ; $7406: $4f
    ld a, [hl]                                    ; $7407: $7e
    jp $f3ef                                      ; $7408: $c3 $ef $f3


    db $db                                        ; $740b: $db
    rst $20                                       ; $740c: $e7
    rst $30                                       ; $740d: $f7
    ld a, a                                       ; $740e: $7f
    rst $08                                       ; $740f: $cf
    xor $df                                       ; $7410: $ee $df
    inc a                                         ; $7412: $3c
    cp $18                                        ; $7413: $fe $18
    inc a                                         ; $7415: $3c
    jr nz, @+$01                                  ; $7416: $20 $ff

    nop                                           ; $7418: $00
    rst $38                                       ; $7419: $ff
    db $fd                                        ; $741a: $fd
    nop                                           ; $741b: $00
    nop                                           ; $741c: $00
    nop                                           ; $741d: $00

Call_007_741e:
    ld a, $06                                     ; $741e: $3e $06
    ldh [$96], a                                  ; $7420: $e0 $96
    ldh [rSVBK], a                                ; $7422: $e0 $70
    ld a, b                                       ; $7424: $78
    ld [$d205], a                                 ; $7425: $ea $05 $d2
    ld a, l                                       ; $7428: $7d
    ld [$d200], a                                 ; $7429: $ea $00 $d2
    ld a, h                                       ; $742c: $7c
    ld [$d201], a                                 ; $742d: $ea $01 $d2
    ld a, d                                       ; $7430: $7a
    ld [$d202], a                                 ; $7431: $ea $02 $d2
    ld a, e                                       ; $7434: $7b
    ld [$d203], a                                 ; $7435: $ea $03 $d2
    push de                                       ; $7438: $d5
    call Call_000_23b6                            ; $7439: $cd $b6 $23
    rst $18                                       ; $743c: $df
    ld b, $01                                     ; $743d: $06 $01
    call Call_000_0341                            ; $743f: $cd $41 $03
    xor a                                         ; $7442: $af
    ldh [$8b], a                                  ; $7443: $e0 $8b
    ldh [$8a], a                                  ; $7445: $e0 $8a
    ld hl, $d200                                  ; $7447: $21 $00 $d2
    ld a, [hl+]                                   ; $744a: $2a
    ld h, [hl]                                    ; $744b: $66
    ld l, a                                       ; $744c: $6f
    ld de, $0028                                  ; $744d: $11 $28 $00
    add hl, de                                    ; $7450: $19
    ld a, [hl+]                                   ; $7451: $2a
    ld h, [hl]                                    ; $7452: $66
    ld l, a                                       ; $7453: $6f
    ld de, $d000                                  ; $7454: $11 $00 $d0
    ld a, $01                                     ; $7457: $3e $01
    ldh [$96], a                                  ; $7459: $e0 $96
    ldh [rSVBK], a                                ; $745b: $e0 $70
    call Call_000_1f2f                            ; $745d: $cd $2f $1f
    ld hl, $d000                                  ; $7460: $21 $00 $d0
    ld de, $8e00                                  ; $7463: $11 $00 $8e
    ld c, $14                                     ; $7466: $0e $14
    call Call_000_04db                            ; $7468: $cd $db $04
    ld hl, $74e2                                  ; $746b: $21 $e2 $74
    ld de, $d000                                  ; $746e: $11 $00 $d0
    call Call_000_1f2f                            ; $7471: $cd $2f $1f
    ld hl, $d000                                  ; $7474: $21 $00 $d0
    ld de, $b000                                  ; $7477: $11 $00 $b0
    ld c, $80                                     ; $747a: $0e $80
    call Call_000_0468                            ; $747c: $cd $68 $04
    ld hl, $d800                                  ; $747f: $21 $00 $d8
    ld de, $a800                                  ; $7482: $11 $00 $a8
    ld c, $80                                     ; $7485: $0e $80
    call Call_000_04db                            ; $7487: $cd $db $04
    ld hl, $7739                                  ; $748a: $21 $39 $77
    ld de, $0206                                  ; $748d: $11 $06 $02
    call Call_000_0595                            ; $7490: $cd $95 $05
    ld hl, $7769                                  ; $7493: $21 $69 $77
    ld de, $0c01                                  ; $7496: $11 $01 $0c
    call Call_000_0595                            ; $7499: $cd $95 $05
    ld hl, $7780                                  ; $749c: $21 $80 $77
    ld de, $b800                                  ; $749f: $11 $00 $b8
    ld c, $24                                     ; $74a2: $0e $24
    call Call_000_0468                            ; $74a4: $cd $68 $04
    ld hl, $79c0                                  ; $74a7: $21 $c0 $79
    ld de, $9800                                  ; $74aa: $11 $00 $98
    ld c, $24                                     ; $74ad: $0e $24
    call Call_000_04db                            ; $74af: $cd $db $04
    ld a, $06                                     ; $74b2: $3e $06
    ldh [$96], a                                  ; $74b4: $e0 $96
    ldh [rSVBK], a                                ; $74b6: $e0 $70
    ld hl, $0100                                  ; $74b8: $21 $00 $01
    ld c, $0a                                     ; $74bb: $0e $0a

jr_007_74bd:
    push bc                                       ; $74bd: $c5
    push hl                                       ; $74be: $e5
    call Call_007_7d36                            ; $74bf: $cd $36 $7d
    call Call_000_04de                            ; $74c2: $cd $de $04
    pop hl                                        ; $74c5: $e1
    ld c, $0b                                     ; $74c6: $0e $0b
    push hl                                       ; $74c8: $e5
    call Call_007_7d69                            ; $74c9: $cd $69 $7d
    call Call_000_04de                            ; $74cc: $cd $de $04
    pop hl                                        ; $74cf: $e1
    pop bc                                        ; $74d0: $c1
    inc l                                         ; $74d1: $2c
    dec c                                         ; $74d2: $0d
    jr nz, jr_007_74bd                            ; $74d3: $20 $e8

    ld a, $01                                     ; $74d5: $3e $01
    ld hl, $7db0                                  ; $74d7: $21 $b0 $7d
    call Call_000_23e8                            ; $74da: $cd $e8 $23
    call Call_000_0371                            ; $74dd: $cd $71 $03
    pop de                                        ; $74e0: $d1
    ret                                           ; $74e1: $c9


    dec d                                         ; $74e2: $15
    nop                                           ; $74e3: $00

Call_007_74e4:
    rst $38                                       ; $74e4: $ff
    db $ec                                        ; $74e5: $ec
    rst $38                                       ; $74e6: $ff
    rst $38                                       ; $74e7: $ff
    db $fc                                        ; $74e8: $fc
    nop                                           ; $74e9: $00
    cp $ed                                        ; $74ea: $fe $ed
    rst $38                                       ; $74ec: $ff
    rst $38                                       ; $74ed: $ff
    sbc l                                         ; $74ee: $9d
    ld [c], a                                     ; $74ef: $e2
    ld a, a                                       ; $74f0: $7f
    add d                                         ; $74f1: $82
    nop                                           ; $74f2: $00
    ld [de], a                                    ; $74f3: $12
    nop                                           ; $74f4: $00
    ld [hl], $00                                  ; $74f5: $36 $00
    ld h, [hl]                                    ; $74f7: $66
    sub c                                         ; $74f8: $91
    ld [c], a                                     ; $74f9: $e2
    rst $38                                       ; $74fa: $ff
    inc b                                         ; $74fb: $04
    nop                                           ; $74fc: $00
    ld [$1900], sp                                ; $74fd: $08 $00 $19
    nop                                           ; $7500: $00
    inc de                                        ; $7501: $13
    nop                                           ; $7502: $00
    add a                                         ; $7503: $87
    inc sp                                        ; $7504: $33
    nop                                           ; $7505: $00
    scf                                           ; $7506: $37
    sub b                                         ; $7507: $90
    xor $a0                                       ; $7508: $ee $a0
    rst $20                                       ; $750a: $e7
    and l                                         ; $750b: $a5
    ldh [$fa], a                                  ; $750c: $e0 $fa
    pop hl                                        ; $750e: $e1
    rst $38                                       ; $750f: $ff
    rst $38                                       ; $7510: $ff
    ret nc                                        ; $7511: $d0

    rst $28                                       ; $7512: $ef
    sbc a                                         ; $7513: $9f
    rst $38                                       ; $7514: $ff
    and b                                         ; $7515: $a0
    rst $38                                       ; $7516: $ff
    xor a                                         ; $7517: $af
    ldh a, [$f0]                                  ; $7518: $f0 $f0
    cp $e3                                        ; $751a: $fe $e3
    ld a, [hl]                                    ; $751c: $7e
    pop hl                                        ; $751d: $e1
    db $fc                                        ; $751e: $fc
    ld [c], a                                     ; $751f: $e2
    reti                                          ; $7520: $d9


    and $07                                       ; $7521: $e6 $07
    rst $38                                       ; $7523: $ff
    di                                            ; $7524: $f3
    rst $38                                       ; $7525: $ff
    rrca                                          ; $7526: $0f
    dec bc                                        ; $7527: $0b
    rst $38                                       ; $7528: $ff
    ei                                            ; $7529: $fb
    rrca                                          ; $752a: $0f
    cp $e3                                        ; $752b: $fe $e3
    ret c                                         ; $752d: $d8

    push hl                                       ; $752e: $e5
    ret nc                                        ; $752f: $d0

    push hl                                       ; $7530: $e5
    add sp, -$1b                                  ; $7531: $e8 $e5
    xor [hl]                                      ; $7533: $ae
    ldh [$ed], a                                  ; $7534: $e0 $ed
    sbc a                                         ; $7536: $9f
    rst $38                                       ; $7537: $ff
    ret nz                                        ; $7538: $c0

    dec d                                         ; $7539: $15
    db $e4                                        ; $753a: $e4
    add b                                         ; $753b: $80
    db $fd                                        ; $753c: $fd
    ldh [$c8], a                                  ; $753d: $e0 $c8
    pop af                                        ; $753f: $f1
    or a                                          ; $7540: $b7
    ld a, [$f4e0]                                 ; $7541: $fa $e0 $f4
    db $e3                                        ; $7544: $e3
    add [hl]                                      ; $7545: $86
    ld [c], a                                     ; $7546: $e2
    xor l                                         ; $7547: $ad
    ld d, d                                       ; $7548: $52
    ld b, b                                       ; $7549: $40
    cp a                                          ; $754a: $bf
    ld l, [hl]                                    ; $754b: $6e
    ld [de], a                                    ; $754c: $12
    db $e3                                        ; $754d: $e3
    rst $38                                       ; $754e: $ff
    rst $38                                       ; $754f: $ff
    ld bc, $e0fd                                  ; $7550: $01 $fd $e0
    ld l, e                                       ; $7553: $6b
    sub l                                         ; $7554: $95
    ld a, [$3ce0]                                 ; $7555: $fa $e0 $3c
    ld [bc], a                                    ; $7558: $02
    db $e4                                        ; $7559: $e4
    adc $e1                                       ; $755a: $ce $e1
    and e                                         ; $755c: $a3
    call c, $a1de                                 ; $755d: $dc $de $a1
    adc $e3                                       ; $7560: $ce $e3
    ld [hl], d                                    ; $7562: $72
    db $e3                                        ; $7563: $e3
    rst $08                                       ; $7564: $cf
    dec l                                         ; $7565: $2d
    jp nc, Jump_000_0df2                          ; $7566: $d2 $f2 $0d

    push bc                                       ; $7569: $c5
    jp $e3ce                                      ; $756a: $c3 $ce $e3


    dec de                                        ; $756d: $1b
    push hl                                       ; $756e: $e5
    db $eb                                        ; $756f: $eb
    push af                                       ; $7570: $f5
    dec bc                                        ; $7571: $0b
    adc $e3                                       ; $7572: $ce $e3
    ld l, [hl]                                    ; $7574: $6e
    rst $08                                       ; $7575: $cf
    call z, Call_000_0077                         ; $7576: $cc $77 $00
    ld a, a                                       ; $7579: $7f
    db $fc                                        ; $757a: $fc
    cp $e0                                        ; $757b: $fe $e0
    cp c                                          ; $757d: $b9
    pop bc                                        ; $757e: $c1
    rst $30                                       ; $757f: $f7
    ld [$0cf3], sp                                ; $7580: $08 $f3 $0c
    ld sp, hl                                     ; $7583: $f9
    ld b, $80                                     ; $7584: $06 $80
    adc a                                         ; $7586: $8f
    ret                                           ; $7587: $c9


    ld h, $e3                                     ; $7588: $26 $e3
    ld b, $e5                                     ; $758a: $06 $e5
    cp $c3                                        ; $758c: $fe $c3
    pop af                                        ; $758e: $f1
    ret z                                         ; $758f: $c8

    ld h, l                                       ; $7590: $65
    jp nz, $e318                                  ; $7591: $c2 $18 $e3

    db $eb                                        ; $7594: $eb
    di                                            ; $7595: $f3
    rra                                           ; $7596: $1f
    di                                            ; $7597: $f3
    ld [$54e0], sp                                ; $7598: $08 $e0 $54
    jp nz, $fec6                                  ; $759b: $c2 $c6 $fe

    rst $20                                       ; $759e: $e7
    cp $ff                                        ; $759f: $fe $ff
    rst $30                                       ; $75a1: $f7
    sbc $ff                                       ; $75a2: $de $ff
    sbc $ef                                       ; $75a4: $de $ef
    sbc $e7                                       ; $75a6: $de $e7
    sbc $77                                       ; $75a8: $de $77
    rst $20                                       ; $75aa: $e7
    sbc h                                         ; $75ab: $9c
    ld h, e                                       ; $75ac: $63
    ld e, a                                       ; $75ad: $5f
    jp nz, $c77c                                  ; $75ae: $c2 $7c $c7

    cp $f2                                        ; $75b1: $fe $f2
    pop hl                                        ; $75b3: $e1
    rst $28                                       ; $75b4: $ef
    db $fc                                        ; $75b5: $fc
    ld a, a                                       ; $75b6: $7f
    pop bc                                        ; $75b7: $c1
    ld a, $4f                                     ; $75b8: $3e $4f
    adc $f8                                       ; $75ba: $ce $f8
    rst $08                                       ; $75bc: $cf
    db $fc                                        ; $75bd: $fc
    ei                                            ; $75be: $fb
    rst $18                                       ; $75bf: $df
    and $d4                                       ; $75c0: $e6 $d4
    pop hl                                        ; $75c2: $e1
    call c, $f9ef                                 ; $75c3: $dc $ef $f9
    cp $83                                        ; $75c6: $fe $83
    rst $38                                       ; $75c8: $ff
    ld a, h                                       ; $75c9: $7c
    cp h                                          ; $75ca: $bc
    jp $9ce3                                      ; $75cb: $c3 $e3 $9c


    sbc a                                         ; $75ce: $9f
    ldh [$f0], a                                  ; $75cf: $e0 $f0
    rst $38                                       ; $75d1: $ff
    adc a                                         ; $75d2: $8f
    adc a                                         ; $75d3: $8f
    ldh a, [$f0]                                  ; $75d4: $f0 $f0
    adc a                                         ; $75d6: $8f
    rst $18                                       ; $75d7: $df
    and b                                         ; $75d8: $a0
    add b                                         ; $75d9: $80
    rst $38                                       ; $75da: $ff
    rst $38                                       ; $75db: $ff
    adc $31                                       ; $75dc: $ce $31
    add hl, sp                                    ; $75de: $39
    add $c7                                       ; $75df: $c6 $c7
    jr c, @+$7a                                   ; $75e1: $38 $78

    rst $38                                       ; $75e3: $ff
    add a                                         ; $75e4: $87
    adc a                                         ; $75e5: $8f
    ld [hl], b                                    ; $75e6: $70
    ldh a, [rIF]                                  ; $75e7: $f0 $0f
    rra                                           ; $75e9: $1f
    ldh [rP1], a                                  ; $75ea: $e0 $00
    rst $38                                       ; $75ec: $ff
    rst $38                                       ; $75ed: $ff
    call z, Call_000_3b33                         ; $75ee: $cc $33 $3b
    call nz, Call_000_39c6                        ; $75f1: $c4 $c6 $39
    ld a, c                                       ; $75f4: $79
    cp l                                          ; $75f5: $bd
    add [hl]                                      ; $75f6: $86
    ldh a, [$e5]                                  ; $75f7: $f0 $e5
    dec e                                         ; $75f9: $1d
    db $e3                                        ; $75fa: $e3
    rst $20                                       ; $75fb: $e7
    add hl, de                                    ; $75fc: $19
    ld [hl+], a                                   ; $75fd: $22
    pop hl                                        ; $75fe: $e1
    rrca                                          ; $75ff: $0f
    rst $18                                       ; $7600: $df
    pop af                                        ; $7601: $f1
    ld sp, hl                                     ; $7602: $f9
    rlca                                          ; $7603: $07
    rlca                                          ; $7604: $07
    ld sp, hl                                     ; $7605: $f9
    ld [$c9c1], a                                 ; $7606: $ea $c1 $c9
    rst $30                                       ; $7609: $f7
    rst $38                                       ; $760a: $ff
    jp z, $cbf5                                   ; $760b: $ca $f5 $cb

    db $f4                                        ; $760e: $f4
    ret                                           ; $760f: $c9


    or $cb                                        ; $7610: $f6 $cb
    db $f4                                        ; $7612: $f4
    db $fc                                        ; $7613: $fc
    cp $e1                                        ; $7614: $fe $e1
    ret nz                                        ; $7616: $c0

    and c                                         ; $7617: $a1
    ld a, a                                       ; $7618: $7f
    rst $38                                       ; $7619: $ff
    rra                                           ; $761a: $1f
    rst $38                                       ; $761b: $ff
    ld c, a                                       ; $761c: $4f
    cp a                                          ; $761d: $bf
    rst $38                                       ; $761e: $ff
    ld c, a                                       ; $761f: $4f
    cp a                                          ; $7620: $bf
    dec hl                                        ; $7621: $2b

jr_007_7622:
    rst $18                                       ; $7622: $df
    ld l, e                                       ; $7623: $6b
    rst $18                                       ; $7624: $df
    rst $18                                       ; $7625: $df
    jr nz, @+$01                                  ; $7626: $20 $ff

    rst $08                                       ; $7628: $cf
    jr nc, jr_007_7692                            ; $7629: $30 $67

    sbc b                                         ; $762b: $98
    ld h, a                                       ; $762c: $67
    sbc b                                         ; $762d: $98
    inc hl                                        ; $762e: $23
    call c, $23ff                                 ; $762f: $dc $ff $23
    call c, $fe01                                 ; $7632: $dc $01 $fe
    ld bc, $f8fe                                  ; $7635: $01 $fe $f8
    rlca                                          ; $7638: $07
    rst $38                                       ; $7639: $ff
    db $fc                                        ; $763a: $fc

Call_007_763b:
    inc bc                                        ; $763b: $03
    sbc h                                         ; $763c: $9c
    ld h, e                                       ; $763d: $63
    call z, Call_007_6633                         ; $763e: $cc $33 $66
    sbc c                                         ; $7641: $99
    ccf                                           ; $7642: $3f
    ld h, [hl]                                    ; $7643: $66
    sbc c                                         ; $7644: $99
    ld [hl+], a                                   ; $7645: $22
    db $dd                                        ; $7646: $dd
    ld [bc], a                                    ; $7647: $02
    db $fd                                        ; $7648: $fd
    sbc d                                         ; $7649: $9a
    push bc                                       ; $764a: $c5
    ld [bc], a                                    ; $764b: $02
    db $eb                                        ; $764c: $eb
    db $fc                                        ; $764d: $fc
    and a                                         ; $764e: $a7
    and d                                         ; $764f: $a2
    sub e                                         ; $7650: $93
    and l                                         ; $7651: $a5
    ld a, h                                       ; $7652: $7c
    add $3f                                       ; $7653: $c6 $3f
    cp $7f                                        ; $7655: $fe $7f
    and $ef                                       ; $7657: $e6 $ef
    rst $38                                       ; $7659: $ff
    xor $f7                                       ; $765a: $ee $f7
    cp $30                                        ; $765c: $fe $30
    pop hl                                        ; $765e: $e1

jr_007_765f:
    jr nc, @-$07                                  ; $765f: $30 $f7

    jr c, jr_007_7622                             ; $7661: $38 $bf

    rst $38                                       ; $7663: $ff
    db $fc                                        ; $7664: $fc
    pop af                                        ; $7665: $f1
    ld a, $f7                                     ; $7666: $3e $f7
    jr c, @-$06                                   ; $7668: $38 $f8

    ldh [$3c], a                                  ; $766a: $e0 $3c
    db $e3                                        ; $766c: $e3
    pop hl                                        ; $766d: $e1
    ld e, $6f                                     ; $766e: $1e $6f
    xor a                                         ; $7670: $af
    cp $ff                                        ; $7671: $fe $ff
    dec sp                                        ; $7673: $3b
    xor d                                         ; $7674: $aa
    add b                                         ; $7675: $80
    sbc e                                         ; $7676: $9b
    db $e4                                        ; $7677: $e4
    rst $38                                       ; $7678: $ff
    or $89                                        ; $7679: $f6 $89
    call $bbb2                                    ; $767b: $cd $b2 $bb
    call nz, $99e6                                ; $767e: $c4 $e6 $99
    rst $38                                       ; $7681: $ff
    sbc c                                         ; $7682: $99
    and $f7                                       ; $7683: $e6 $f7
    adc b                                         ; $7685: $88
    rst $38                                       ; $7686: $ff
    nop                                           ; $7687: $00
    rst $08                                       ; $7688: $cf
    jr nc, @+$01                                  ; $7689: $30 $ff

    ld [hl], b                                    ; $768b: $70
    adc a                                         ; $768c: $8f
    adc a                                         ; $768d: $8f
    ld [hl], b                                    ; $768e: $70
    halt                                          ; $768f: $76
    adc c                                         ; $7690: $89
    sbc c                                         ; $7691: $99

jr_007_7692:
    ld h, [hl]                                    ; $7692: $66
    rst $38                                       ; $7693: $ff
    and $19                                       ; $7694: $e6 $19
    jr c, jr_007_765f                             ; $7696: $38 $c7

    rst $38                                       ; $7698: $ff
    nop                                           ; $7699: $00
    jp $ff3c                                      ; $769a: $c3 $3c $ff


    db $fc                                        ; $769d: $fc
    inc bc                                        ; $769e: $03
    inc bc                                        ; $769f: $03
    db $fc                                        ; $76a0: $fc
    db $fc                                        ; $76a1: $fc
    inc bc                                        ; $76a2: $03
    daa                                           ; $76a3: $27
    ret c                                         ; $76a4: $d8

    rst $38                                       ; $76a5: $ff
    call c, Call_000_3323                         ; $76a6: $dc $23 $33
    call z, Call_000_01ff                         ; $76a9: $cc $ff $01
    sbc a                                         ; $76ac: $9f
    ld h, c                                       ; $76ad: $61
    rst $38                                       ; $76ae: $ff
    ld [hl], c                                    ; $76af: $71
    adc a                                         ; $76b0: $8f
    adc a                                         ; $76b1: $8f
    ld [hl], c                                    ; $76b2: $71
    ld a, c                                       ; $76b3: $79
    add a                                         ; $76b4: $87
    rst $00                                       ; $76b5: $c7
    add hl, sp                                    ; $76b6: $39
    rst $28                                       ; $76b7: $ef
    dec a                                         ; $76b8: $3d
    jp $1de3                                      ; $76b9: $c3 $e3 $1d


    ld a, [bc]                                    ; $76bc: $0a
    pop hl                                        ; $76bd: $e1
    call $cdf2                                    ; $76be: $cd $f2 $cd
    rst $18                                       ; $76c1: $df
    or $c9                                        ; $76c2: $f6 $c9
    or $cd                                        ; $76c4: $f6 $cd
    ld a, [c]                                     ; $76c6: $f2
    cp $c1                                        ; $76c7: $fe $c1
    ld l, e                                       ; $76c9: $6b
    rst $18                                       ; $76ca: $df
    rst $28                                       ; $76cb: $ef
    dec hl                                        ; $76cc: $2b
    rst $18                                       ; $76cd: $df
    ld c, e                                       ; $76ce: $4b
    cp a                                          ; $76cf: $bf
    cp $e3                                        ; $76d0: $fe $e3
    dec bc                                        ; $76d2: $0b
    rst $38                                       ; $76d3: $ff
    ld c, e                                       ; $76d4: $4b
    sbc l                                         ; $76d5: $9d
    cp a                                          ; $76d6: $bf
    ret nc                                        ; $76d7: $d0

    add a                                         ; $76d8: $87
    ld bc, $03ff                                  ; $76d9: $01 $ff $03
    ld d, h                                       ; $76dc: $54
    and b                                         ; $76dd: $a0
    ret nz                                        ; $76de: $c0

    add c                                         ; $76df: $81
    db $10                                        ; $76e0: $10
    ei                                            ; $76e1: $fb
    rst $38                                       ; $76e2: $ff
    ld h, b                                       ; $76e3: $60
    add d                                         ; $76e4: $82
    and b                                         ; $76e5: $a0
    add b                                         ; $76e6: $80
    rst $38                                       ; $76e7: $ff
    adc b                                         ; $76e8: $88
    rst $38                                       ; $76e9: $ff
    jr jr_007_76ec                                ; $76ea: $18 $00

jr_007_76ec:
    inc c                                         ; $76ec: $0c
    add $04                                       ; $76ed: $c6 $04
    rst $00                                       ; $76ef: $c7
    and l                                         ; $76f0: $a5
    adc c                                         ; $76f1: $89
    sub c                                         ; $76f2: $91
    sbc a                                         ; $76f3: $9f
    rst $38                                       ; $76f4: $ff
    rst $38                                       ; $76f5: $ff
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    xor $f6                                       ; $76fc: $ee $f6
    push af                                       ; $76fe: $f5
    rrca                                          ; $76ff: $0f
    rst $38                                       ; $7700: $ff
    sbc [hl]                                      ; $7701: $9e
    cp $e0                                        ; $7702: $fe $e0
    cp [hl]                                       ; $7704: $be
    rst $38                                       ; $7705: $ff
    inc a                                         ; $7706: $3c
    ei                                            ; $7707: $fb
    rst $38                                       ; $7708: $ff
    ld a, l                                       ; $7709: $7d
    cp $e0                                        ; $770a: $fe $e0
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    jr nc, @+$01                                  ; $770e: $30 $ff

    ld [hl], b                                    ; $7710: $70
    rst $38                                       ; $7711: $ff
    rst $38                                       ; $7712: $ff
    ld [hl], c                                    ; $7713: $71
    rst $38                                       ; $7714: $ff
    db $e3                                        ; $7715: $e3
    rst $38                                       ; $7716: $ff
    rst $20                                       ; $7717: $e7
    rst $38                                       ; $7718: $ff
    rst $28                                       ; $7719: $ef
    nop                                           ; $771a: $00
    or b                                          ; $771b: $b0
    ld h, e                                       ; $771c: $63
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
    nop                                           ; $772b: $00
    rst $38                                       ; $772c: $ff
    rst $38                                       ; $772d: $ff
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff

Call_007_7733:
    rst $38                                       ; $7733: $ff
    rst $38                                       ; $7734: $ff
    and $00                                       ; $7735: $e6 $00
    nop                                           ; $7737: $00
    nop                                           ; $7738: $00
    ld hl, sp+$03                                 ; $7739: $f8 $03
    ld b, h                                       ; $773b: $44
    inc bc                                        ; $773c: $03
    nop                                           ; $773d: $00
    ld [bc], a                                    ; $773e: $02
    ld b, b                                       ; $773f: $40
    ld bc, $4a96                                  ; $7740: $01 $96 $4a
    rra                                           ; $7743: $1f
    ld [de], a                                    ; $7744: $12
    sub $00                                       ; $7745: $d6 $00
    nop                                           ; $7747: $00
    nop                                           ; $7748: $00
    rst $38                                       ; $7749: $ff
    inc bc                                        ; $774a: $03
    rra                                           ; $774b: $1f
    ld [de], a                                    ; $774c: $12
    sub $00                                       ; $774d: $d6 $00
    nop                                           ; $774f: $00
    nop                                           ; $7750: $00
    sbc $7b                                       ; $7751: $de $7b
    adc [hl]                                      ; $7753: $8e
    ld a, a                                       ; $7754: $7f
    add b                                         ; $7755: $80
    ld a, [hl]                                    ; $7756: $7e
    add b                                         ; $7757: $80
    ld a, l                                       ; $7758: $7d
    sbc $7b                                       ; $7759: $de $7b
    jr jr_007_77c0                                ; $775b: $18 $63

    ld d, d                                       ; $775d: $52
    ld c, d                                       ; $775e: $4a
    adc h                                         ; $775f: $8c
    ld sp, $7bde                                  ; $7760: $31 $de $7b
    jr jr_007_77c8                                ; $7763: $18 $63

    ld d, d                                       ; $7765: $52
    ld c, d                                       ; $7766: $4a
    adc h                                         ; $7767: $8c
    ld sp, $7d80                                  ; $7768: $31 $80 $7d
    rra                                           ; $776b: $1f
    ld l, b                                       ; $776c: $68
    ld c, h                                       ; $776d: $4c
    ld l, b                                       ; $776e: $68
    nop                                           ; $776f: $00
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    nop                                           ; $7773: $00
    nop                                           ; $7774: $00
    nop                                           ; $7775: $00
    nop                                           ; $7776: $00
    nop                                           ; $7777: $00
    nop                                           ; $7778: $00
    nop                                           ; $7779: $00
    nop                                           ; $777a: $00
    nop                                           ; $777b: $00
    nop                                           ; $777c: $00
    nop                                           ; $777d: $00
    nop                                           ; $777e: $00
    nop                                           ; $777f: $00
    dec c                                         ; $7780: $0d
    dec c                                         ; $7781: $0d
    dec c                                         ; $7782: $0d
    dec c                                         ; $7783: $0d
    dec c                                         ; $7784: $0d
    dec c                                         ; $7785: $0d
    dec c                                         ; $7786: $0d
    dec c                                         ; $7787: $0d
    dec c                                         ; $7788: $0d
    dec c                                         ; $7789: $0d
    dec c                                         ; $778a: $0d
    dec c                                         ; $778b: $0d
    dec c                                         ; $778c: $0d
    dec c                                         ; $778d: $0d
    dec c                                         ; $778e: $0d
    dec c                                         ; $778f: $0d
    dec c                                         ; $7790: $0d
    dec c                                         ; $7791: $0d
    dec c                                         ; $7792: $0d
    dec c                                         ; $7793: $0d
    ld [$0808], sp                                ; $7794: $08 $08 $08
    ld [$0808], sp                                ; $7797: $08 $08 $08
    ld [$0808], sp                                ; $779a: $08 $08 $08
    ld [$0808], sp                                ; $779d: $08 $08 $08
    dec c                                         ; $77a0: $0d
    dec c                                         ; $77a1: $0d
    dec c                                         ; $77a2: $0d
    dec c                                         ; $77a3: $0d
    dec c                                         ; $77a4: $0d
    dec c                                         ; $77a5: $0d
    dec c                                         ; $77a6: $0d
    dec c                                         ; $77a7: $0d
    dec c                                         ; $77a8: $0d
    dec c                                         ; $77a9: $0d
    dec c                                         ; $77aa: $0d
    dec c                                         ; $77ab: $0d
    dec c                                         ; $77ac: $0d
    dec c                                         ; $77ad: $0d
    dec c                                         ; $77ae: $0d
    dec c                                         ; $77af: $0d
    dec c                                         ; $77b0: $0d
    dec c                                         ; $77b1: $0d
    dec c                                         ; $77b2: $0d
    dec c                                         ; $77b3: $0d
    ld [$0808], sp                                ; $77b4: $08 $08 $08
    ld [$0808], sp                                ; $77b7: $08 $08 $08
    ld [$0808], sp                                ; $77ba: $08 $08 $08
    ld [$0808], sp                                ; $77bd: $08 $08 $08

jr_007_77c0:
    dec c                                         ; $77c0: $0d
    dec c                                         ; $77c1: $0d
    dec c                                         ; $77c2: $0d
    dec c                                         ; $77c3: $0d
    dec c                                         ; $77c4: $0d
    dec c                                         ; $77c5: $0d
    dec c                                         ; $77c6: $0d
    dec c                                         ; $77c7: $0d

jr_007_77c8:
    dec c                                         ; $77c8: $0d
    dec c                                         ; $77c9: $0d
    dec c                                         ; $77ca: $0d
    dec c                                         ; $77cb: $0d
    dec c                                         ; $77cc: $0d
    dec c                                         ; $77cd: $0d
    dec c                                         ; $77ce: $0d
    dec c                                         ; $77cf: $0d
    dec c                                         ; $77d0: $0d
    dec c                                         ; $77d1: $0d
    dec c                                         ; $77d2: $0d
    dec c                                         ; $77d3: $0d
    ld [$0808], sp                                ; $77d4: $08 $08 $08
    ld [$0808], sp                                ; $77d7: $08 $08 $08
    ld [$0808], sp                                ; $77da: $08 $08 $08
    ld [$0808], sp                                ; $77dd: $08 $08 $08
    dec c                                         ; $77e0: $0d
    dec c                                         ; $77e1: $0d
    dec c                                         ; $77e2: $0d
    dec c                                         ; $77e3: $0d
    dec c                                         ; $77e4: $0d
    dec c                                         ; $77e5: $0d
    dec c                                         ; $77e6: $0d
    dec c                                         ; $77e7: $0d
    dec c                                         ; $77e8: $0d
    dec c                                         ; $77e9: $0d
    dec c                                         ; $77ea: $0d
    dec c                                         ; $77eb: $0d
    dec c                                         ; $77ec: $0d
    dec c                                         ; $77ed: $0d
    dec c                                         ; $77ee: $0d
    dec c                                         ; $77ef: $0d
    dec c                                         ; $77f0: $0d
    dec c                                         ; $77f1: $0d
    dec c                                         ; $77f2: $0d
    dec c                                         ; $77f3: $0d
    ld [$0808], sp                                ; $77f4: $08 $08 $08
    ld [$0808], sp                                ; $77f7: $08 $08 $08
    ld [$0808], sp                                ; $77fa: $08 $08 $08
    ld [$0808], sp                                ; $77fd: $08 $08 $08
    dec c                                         ; $7800: $0d
    dec c                                         ; $7801: $0d
    adc e                                         ; $7802: $8b
    adc e                                         ; $7803: $8b
    adc e                                         ; $7804: $8b
    adc e                                         ; $7805: $8b
    adc e                                         ; $7806: $8b
    adc e                                         ; $7807: $8b
    adc e                                         ; $7808: $8b
    adc e                                         ; $7809: $8b
    adc e                                         ; $780a: $8b
    adc e                                         ; $780b: $8b
    adc e                                         ; $780c: $8b
    adc e                                         ; $780d: $8b
    adc e                                         ; $780e: $8b
    adc e                                         ; $780f: $8b
    adc e                                         ; $7810: $8b
    adc e                                         ; $7811: $8b
    dec c                                         ; $7812: $0d
    dec c                                         ; $7813: $0d
    ld [$0808], sp                                ; $7814: $08 $08 $08
    ld [$0808], sp                                ; $7817: $08 $08 $08
    ld [$0808], sp                                ; $781a: $08 $08 $08
    ld [$0808], sp                                ; $781d: $08 $08 $08
    dec c                                         ; $7820: $0d
    dec c                                         ; $7821: $0d
    adc e                                         ; $7822: $8b
    adc e                                         ; $7823: $8b
    adc e                                         ; $7824: $8b
    adc e                                         ; $7825: $8b
    adc e                                         ; $7826: $8b
    adc e                                         ; $7827: $8b
    adc e                                         ; $7828: $8b
    adc e                                         ; $7829: $8b
    adc e                                         ; $782a: $8b
    adc e                                         ; $782b: $8b
    adc e                                         ; $782c: $8b
    adc e                                         ; $782d: $8b
    adc e                                         ; $782e: $8b
    adc e                                         ; $782f: $8b
    adc e                                         ; $7830: $8b
    adc e                                         ; $7831: $8b
    dec c                                         ; $7832: $0d
    dec c                                         ; $7833: $0d
    ld [$0808], sp                                ; $7834: $08 $08 $08
    ld [$0808], sp                                ; $7837: $08 $08 $08
    ld [$0808], sp                                ; $783a: $08 $08 $08
    ld [$0808], sp                                ; $783d: $08 $08 $08
    dec c                                         ; $7840: $0d
    dec c                                         ; $7841: $0d
    dec bc                                        ; $7842: $0b
    dec bc                                        ; $7843: $0b
    dec bc                                        ; $7844: $0b
    dec bc                                        ; $7845: $0b
    dec bc                                        ; $7846: $0b
    dec bc                                        ; $7847: $0b
    dec bc                                        ; $7848: $0b
    dec bc                                        ; $7849: $0b
    dec bc                                        ; $784a: $0b
    dec bc                                        ; $784b: $0b
    dec bc                                        ; $784c: $0b
    dec bc                                        ; $784d: $0b
    dec bc                                        ; $784e: $0b
    dec bc                                        ; $784f: $0b
    dec bc                                        ; $7850: $0b
    dec bc                                        ; $7851: $0b
    dec c                                         ; $7852: $0d
    dec c                                         ; $7853: $0d
    ld [$0808], sp                                ; $7854: $08 $08 $08
    ld [$0808], sp                                ; $7857: $08 $08 $08
    ld [$0808], sp                                ; $785a: $08 $08 $08
    ld [$0808], sp                                ; $785d: $08 $08 $08
    dec c                                         ; $7860: $0d
    dec c                                         ; $7861: $0d
    dec bc                                        ; $7862: $0b
    dec bc                                        ; $7863: $0b
    dec bc                                        ; $7864: $0b
    dec bc                                        ; $7865: $0b
    dec bc                                        ; $7866: $0b
    dec bc                                        ; $7867: $0b
    dec bc                                        ; $7868: $0b
    dec bc                                        ; $7869: $0b
    dec bc                                        ; $786a: $0b
    dec bc                                        ; $786b: $0b
    dec bc                                        ; $786c: $0b
    dec bc                                        ; $786d: $0b
    dec bc                                        ; $786e: $0b
    dec bc                                        ; $786f: $0b
    dec bc                                        ; $7870: $0b
    dec bc                                        ; $7871: $0b
    dec c                                         ; $7872: $0d
    dec c                                         ; $7873: $0d
    ld [$0808], sp                                ; $7874: $08 $08 $08
    ld [$0808], sp                                ; $7877: $08 $08 $08
    ld [$0808], sp                                ; $787a: $08 $08 $08
    ld [$0808], sp                                ; $787d: $08 $08 $08
    dec c                                         ; $7880: $0d
    dec c                                         ; $7881: $0d
    dec bc                                        ; $7882: $0b
    dec bc                                        ; $7883: $0b
    dec bc                                        ; $7884: $0b
    dec bc                                        ; $7885: $0b
    dec bc                                        ; $7886: $0b
    dec bc                                        ; $7887: $0b
    dec bc                                        ; $7888: $0b
    dec bc                                        ; $7889: $0b
    dec bc                                        ; $788a: $0b
    dec bc                                        ; $788b: $0b
    dec bc                                        ; $788c: $0b
    dec bc                                        ; $788d: $0b
    dec bc                                        ; $788e: $0b
    dec bc                                        ; $788f: $0b
    dec bc                                        ; $7890: $0b
    dec bc                                        ; $7891: $0b
    dec c                                         ; $7892: $0d
    dec c                                         ; $7893: $0d
    ld [$0808], sp                                ; $7894: $08 $08 $08
    ld [$0808], sp                                ; $7897: $08 $08 $08
    ld [$0808], sp                                ; $789a: $08 $08 $08
    ld [$0808], sp                                ; $789d: $08 $08 $08
    dec c                                         ; $78a0: $0d
    dec c                                         ; $78a1: $0d
    dec bc                                        ; $78a2: $0b
    dec bc                                        ; $78a3: $0b
    dec bc                                        ; $78a4: $0b
    dec bc                                        ; $78a5: $0b
    dec bc                                        ; $78a6: $0b
    dec bc                                        ; $78a7: $0b
    dec bc                                        ; $78a8: $0b
    dec bc                                        ; $78a9: $0b
    dec bc                                        ; $78aa: $0b
    dec bc                                        ; $78ab: $0b
    dec bc                                        ; $78ac: $0b
    dec bc                                        ; $78ad: $0b
    dec bc                                        ; $78ae: $0b
    dec bc                                        ; $78af: $0b
    dec bc                                        ; $78b0: $0b
    dec bc                                        ; $78b1: $0b
    dec c                                         ; $78b2: $0d
    dec c                                         ; $78b3: $0d
    ld [$0808], sp                                ; $78b4: $08 $08 $08
    ld [$0808], sp                                ; $78b7: $08 $08 $08
    ld [$0808], sp                                ; $78ba: $08 $08 $08
    ld [$0808], sp                                ; $78bd: $08 $08 $08
    dec c                                         ; $78c0: $0d
    dec c                                         ; $78c1: $0d
    dec bc                                        ; $78c2: $0b
    dec bc                                        ; $78c3: $0b
    dec bc                                        ; $78c4: $0b
    dec bc                                        ; $78c5: $0b
    dec bc                                        ; $78c6: $0b
    dec bc                                        ; $78c7: $0b
    dec bc                                        ; $78c8: $0b
    dec bc                                        ; $78c9: $0b
    dec bc                                        ; $78ca: $0b
    dec bc                                        ; $78cb: $0b
    dec bc                                        ; $78cc: $0b
    dec bc                                        ; $78cd: $0b
    dec bc                                        ; $78ce: $0b
    dec bc                                        ; $78cf: $0b
    dec bc                                        ; $78d0: $0b
    dec bc                                        ; $78d1: $0b
    dec c                                         ; $78d2: $0d
    dec c                                         ; $78d3: $0d
    ld [$0808], sp                                ; $78d4: $08 $08 $08
    ld [$0808], sp                                ; $78d7: $08 $08 $08
    ld [$0808], sp                                ; $78da: $08 $08 $08
    ld [$0808], sp                                ; $78dd: $08 $08 $08
    dec c                                         ; $78e0: $0d
    dec c                                         ; $78e1: $0d
    dec bc                                        ; $78e2: $0b
    dec bc                                        ; $78e3: $0b
    dec bc                                        ; $78e4: $0b
    dec bc                                        ; $78e5: $0b
    dec bc                                        ; $78e6: $0b
    dec bc                                        ; $78e7: $0b
    dec bc                                        ; $78e8: $0b
    dec bc                                        ; $78e9: $0b
    dec bc                                        ; $78ea: $0b
    dec bc                                        ; $78eb: $0b
    dec bc                                        ; $78ec: $0b
    dec bc                                        ; $78ed: $0b
    dec bc                                        ; $78ee: $0b
    dec bc                                        ; $78ef: $0b
    dec bc                                        ; $78f0: $0b
    dec bc                                        ; $78f1: $0b
    dec c                                         ; $78f2: $0d
    dec c                                         ; $78f3: $0d
    ld [$0808], sp                                ; $78f4: $08 $08 $08
    ld [$0808], sp                                ; $78f7: $08 $08 $08
    ld [$0808], sp                                ; $78fa: $08 $08 $08
    ld [$0808], sp                                ; $78fd: $08 $08 $08
    ld a, [bc]                                    ; $7900: $0a
    ld a, [bc]                                    ; $7901: $0a
    dec bc                                        ; $7902: $0b
    dec bc                                        ; $7903: $0b
    dec bc                                        ; $7904: $0b
    dec bc                                        ; $7905: $0b
    dec bc                                        ; $7906: $0b
    dec bc                                        ; $7907: $0b
    dec bc                                        ; $7908: $0b
    dec bc                                        ; $7909: $0b
    dec bc                                        ; $790a: $0b
    dec bc                                        ; $790b: $0b
    dec bc                                        ; $790c: $0b
    dec bc                                        ; $790d: $0b
    dec bc                                        ; $790e: $0b
    dec bc                                        ; $790f: $0b
    dec bc                                        ; $7910: $0b
    dec bc                                        ; $7911: $0b
    ld a, [bc]                                    ; $7912: $0a
    ld a, [bc]                                    ; $7913: $0a
    ld [$0808], sp                                ; $7914: $08 $08 $08
    ld [$0808], sp                                ; $7917: $08 $08 $08
    ld [$0808], sp                                ; $791a: $08 $08 $08
    ld [$0808], sp                                ; $791d: $08 $08 $08
    ld a, [bc]                                    ; $7920: $0a
    ld a, [bc]                                    ; $7921: $0a
    dec bc                                        ; $7922: $0b
    dec bc                                        ; $7923: $0b
    dec bc                                        ; $7924: $0b
    dec bc                                        ; $7925: $0b
    dec bc                                        ; $7926: $0b
    dec bc                                        ; $7927: $0b
    dec bc                                        ; $7928: $0b
    dec bc                                        ; $7929: $0b
    dec bc                                        ; $792a: $0b
    dec bc                                        ; $792b: $0b
    dec bc                                        ; $792c: $0b
    dec bc                                        ; $792d: $0b
    dec bc                                        ; $792e: $0b
    dec bc                                        ; $792f: $0b
    dec bc                                        ; $7930: $0b
    dec bc                                        ; $7931: $0b
    ld a, [bc]                                    ; $7932: $0a
    ld a, [bc]                                    ; $7933: $0a
    ld [$0808], sp                                ; $7934: $08 $08 $08
    ld [$0808], sp                                ; $7937: $08 $08 $08
    ld [$0808], sp                                ; $793a: $08 $08 $08
    ld [$0808], sp                                ; $793d: $08 $08 $08
    ld a, [bc]                                    ; $7940: $0a
    ld a, [bc]                                    ; $7941: $0a
    dec bc                                        ; $7942: $0b
    dec bc                                        ; $7943: $0b
    dec bc                                        ; $7944: $0b
    dec bc                                        ; $7945: $0b
    dec bc                                        ; $7946: $0b
    dec bc                                        ; $7947: $0b
    dec bc                                        ; $7948: $0b
    dec bc                                        ; $7949: $0b
    dec bc                                        ; $794a: $0b
    dec bc                                        ; $794b: $0b
    dec bc                                        ; $794c: $0b
    dec bc                                        ; $794d: $0b
    dec bc                                        ; $794e: $0b
    dec bc                                        ; $794f: $0b
    dec bc                                        ; $7950: $0b
    dec bc                                        ; $7951: $0b
    ld a, [bc]                                    ; $7952: $0a
    ld a, [bc]                                    ; $7953: $0a
    ld [$0808], sp                                ; $7954: $08 $08 $08
    ld [$0808], sp                                ; $7957: $08 $08 $08
    ld [$0808], sp                                ; $795a: $08 $08 $08
    ld [$0808], sp                                ; $795d: $08 $08 $08
    ld a, [bc]                                    ; $7960: $0a
    ld a, [bc]                                    ; $7961: $0a
    dec bc                                        ; $7962: $0b
    dec bc                                        ; $7963: $0b
    dec bc                                        ; $7964: $0b
    dec bc                                        ; $7965: $0b
    dec bc                                        ; $7966: $0b
    dec bc                                        ; $7967: $0b
    dec bc                                        ; $7968: $0b
    dec bc                                        ; $7969: $0b
    dec bc                                        ; $796a: $0b
    dec bc                                        ; $796b: $0b
    dec bc                                        ; $796c: $0b
    dec bc                                        ; $796d: $0b
    dec bc                                        ; $796e: $0b
    dec bc                                        ; $796f: $0b
    dec bc                                        ; $7970: $0b
    dec bc                                        ; $7971: $0b
    ld a, [bc]                                    ; $7972: $0a
    ld a, [bc]                                    ; $7973: $0a
    ld [$0808], sp                                ; $7974: $08 $08 $08
    ld [$0808], sp                                ; $7977: $08 $08 $08
    ld [$0808], sp                                ; $797a: $08 $08 $08
    ld [$0808], sp                                ; $797d: $08 $08 $08
    ld a, [bc]                                    ; $7980: $0a
    ld a, [bc]                                    ; $7981: $0a
    ld a, [bc]                                    ; $7982: $0a
    ld a, [bc]                                    ; $7983: $0a
    ld a, [bc]                                    ; $7984: $0a
    ld a, [bc]                                    ; $7985: $0a
    ld a, [bc]                                    ; $7986: $0a
    ld a, [bc]                                    ; $7987: $0a
    ld a, [bc]                                    ; $7988: $0a
    dec bc                                        ; $7989: $0b
    dec bc                                        ; $798a: $0b
    ld a, [bc]                                    ; $798b: $0a
    ld a, [bc]                                    ; $798c: $0a
    ld a, [bc]                                    ; $798d: $0a
    ld a, [bc]                                    ; $798e: $0a
    ld a, [bc]                                    ; $798f: $0a
    ld a, [bc]                                    ; $7990: $0a
    ld a, [bc]                                    ; $7991: $0a
    ld a, [bc]                                    ; $7992: $0a
    ld a, [bc]                                    ; $7993: $0a
    ld [$0808], sp                                ; $7994: $08 $08 $08
    ld [$0808], sp                                ; $7997: $08 $08 $08
    ld [$0808], sp                                ; $799a: $08 $08 $08
    ld [$0808], sp                                ; $799d: $08 $08 $08
    ld a, [bc]                                    ; $79a0: $0a
    ld a, [bc]                                    ; $79a1: $0a
    ld a, [bc]                                    ; $79a2: $0a
    ld a, [bc]                                    ; $79a3: $0a
    ld a, [bc]                                    ; $79a4: $0a
    ld a, [bc]                                    ; $79a5: $0a
    ld a, [bc]                                    ; $79a6: $0a
    ld a, [bc]                                    ; $79a7: $0a
    ld a, [bc]                                    ; $79a8: $0a
    dec bc                                        ; $79a9: $0b
    dec bc                                        ; $79aa: $0b
    ld a, [bc]                                    ; $79ab: $0a
    ld a, [bc]                                    ; $79ac: $0a
    ld a, [bc]                                    ; $79ad: $0a
    ld a, [bc]                                    ; $79ae: $0a
    ld a, [bc]                                    ; $79af: $0a
    ld a, [bc]                                    ; $79b0: $0a
    ld a, [bc]                                    ; $79b1: $0a
    ld a, [bc]                                    ; $79b2: $0a
    ld a, [bc]                                    ; $79b3: $0a
    ld [$0808], sp                                ; $79b4: $08 $08 $08
    ld [$0808], sp                                ; $79b7: $08 $08 $08
    ld [$0808], sp                                ; $79ba: $08 $08 $08
    ld [$0808], sp                                ; $79bd: $08 $08 $08
    ld [bc], a                                    ; $79c0: $02
    ld [bc], a                                    ; $79c1: $02
    ld [bc], a                                    ; $79c2: $02
    ld [bc], a                                    ; $79c3: $02
    ld [bc], a                                    ; $79c4: $02
    ld [bc], a                                    ; $79c5: $02
    ld [bc], a                                    ; $79c6: $02
    ld [bc], a                                    ; $79c7: $02
    ld [bc], a                                    ; $79c8: $02
    ld [bc], a                                    ; $79c9: $02
    ld [bc], a                                    ; $79ca: $02
    ld [bc], a                                    ; $79cb: $02
    ld [bc], a                                    ; $79cc: $02
    ld [bc], a                                    ; $79cd: $02
    ld [bc], a                                    ; $79ce: $02
    ld [bc], a                                    ; $79cf: $02
    ld [bc], a                                    ; $79d0: $02
    ld [bc], a                                    ; $79d1: $02
    ld [bc], a                                    ; $79d2: $02
    ld [bc], a                                    ; $79d3: $02
    nop                                           ; $79d4: $00
    nop                                           ; $79d5: $00
    nop                                           ; $79d6: $00
    nop                                           ; $79d7: $00
    nop                                           ; $79d8: $00
    nop                                           ; $79d9: $00
    nop                                           ; $79da: $00
    nop                                           ; $79db: $00
    nop                                           ; $79dc: $00
    nop                                           ; $79dd: $00
    nop                                           ; $79de: $00
    nop                                           ; $79df: $00
    ld [bc], a                                    ; $79e0: $02
    ld [bc], a                                    ; $79e1: $02
    ld [bc], a                                    ; $79e2: $02
    ld [bc], a                                    ; $79e3: $02
    ld [bc], a                                    ; $79e4: $02
    ld [bc], a                                    ; $79e5: $02
    ld [bc], a                                    ; $79e6: $02
    ld [bc], a                                    ; $79e7: $02
    ld [bc], a                                    ; $79e8: $02
    ld [bc], a                                    ; $79e9: $02
    ld [bc], a                                    ; $79ea: $02
    ld [bc], a                                    ; $79eb: $02
    ld [bc], a                                    ; $79ec: $02
    ld [bc], a                                    ; $79ed: $02
    ld [bc], a                                    ; $79ee: $02
    ld [bc], a                                    ; $79ef: $02
    ld [bc], a                                    ; $79f0: $02
    ld [bc], a                                    ; $79f1: $02
    ld [bc], a                                    ; $79f2: $02
    ld [bc], a                                    ; $79f3: $02
    nop                                           ; $79f4: $00
    nop                                           ; $79f5: $00
    nop                                           ; $79f6: $00
    nop                                           ; $79f7: $00
    nop                                           ; $79f8: $00
    nop                                           ; $79f9: $00
    nop                                           ; $79fa: $00
    nop                                           ; $79fb: $00
    nop                                           ; $79fc: $00
    nop                                           ; $79fd: $00
    nop                                           ; $79fe: $00
    nop                                           ; $79ff: $00
    ld [$0808], sp                                ; $7a00: $08 $08 $08
    ld [$0808], sp                                ; $7a03: $08 $08 $08
    ld [$0808], sp                                ; $7a06: $08 $08 $08
    ld [$0808], sp                                ; $7a09: $08 $08 $08
    ld [$0808], sp                                ; $7a0c: $08 $08 $08
    ld [$0808], sp                                ; $7a0f: $08 $08 $08
    ld [$0008], sp                                ; $7a12: $08 $08 $00
    nop                                           ; $7a15: $00
    nop                                           ; $7a16: $00
    nop                                           ; $7a17: $00
    nop                                           ; $7a18: $00
    nop                                           ; $7a19: $00
    nop                                           ; $7a1a: $00
    nop                                           ; $7a1b: $00
    nop                                           ; $7a1c: $00
    nop                                           ; $7a1d: $00
    nop                                           ; $7a1e: $00
    nop                                           ; $7a1f: $00
    jr jr_007_7a3a                                ; $7a20: $18 $18

    jr jr_007_7a3c                                ; $7a22: $18 $18

    jr jr_007_7a3e                                ; $7a24: $18 $18

    jr jr_007_7a40                                ; $7a26: $18 $18

    jr jr_007_7a42                                ; $7a28: $18 $18

    jr @+$1a                                      ; $7a2a: $18 $18

    jr jr_007_7a46                                ; $7a2c: $18 $18

    jr @+$1a                                      ; $7a2e: $18 $18

    jr @+$1a                                      ; $7a30: $18 $18

    jr jr_007_7a4c                                ; $7a32: $18 $18

    nop                                           ; $7a34: $00
    nop                                           ; $7a35: $00
    nop                                           ; $7a36: $00
    nop                                           ; $7a37: $00
    nop                                           ; $7a38: $00
    nop                                           ; $7a39: $00

jr_007_7a3a:
    nop                                           ; $7a3a: $00
    nop                                           ; $7a3b: $00

jr_007_7a3c:
    nop                                           ; $7a3c: $00
    nop                                           ; $7a3d: $00

jr_007_7a3e:
    nop                                           ; $7a3e: $00
    nop                                           ; $7a3f: $00

jr_007_7a40:
    jr z, jr_007_7a6a                             ; $7a40: $28 $28

jr_007_7a42:
    db $10                                        ; $7a42: $10
    ld de, $1111                                  ; $7a43: $11 $11 $11

jr_007_7a46:
    ld de, $1111                                  ; $7a46: $11 $11 $11
    ld de, $1111                                  ; $7a49: $11 $11 $11

jr_007_7a4c:
    ld de, $1111                                  ; $7a4c: $11 $11 $11
    ld de, $1211                                  ; $7a4f: $11 $11 $12
    jr z, jr_007_7a7c                             ; $7a52: $28 $28

    nop                                           ; $7a54: $00
    nop                                           ; $7a55: $00
    nop                                           ; $7a56: $00
    nop                                           ; $7a57: $00
    nop                                           ; $7a58: $00
    nop                                           ; $7a59: $00
    nop                                           ; $7a5a: $00
    nop                                           ; $7a5b: $00
    nop                                           ; $7a5c: $00
    nop                                           ; $7a5d: $00
    nop                                           ; $7a5e: $00
    nop                                           ; $7a5f: $00
    jr c, jr_007_7a9a                             ; $7a60: $38 $38

    jr nz, jr_007_7a85                            ; $7a62: $20 $21

    ld h, b                                       ; $7a64: $60
    ld h, c                                       ; $7a65: $61
    ld h, d                                       ; $7a66: $62
    ld h, e                                       ; $7a67: $63
    ld h, h                                       ; $7a68: $64
    ld h, l                                       ; $7a69: $65

jr_007_7a6a:
    ld h, [hl]                                    ; $7a6a: $66
    ld h, a                                       ; $7a6b: $67
    ld l, b                                       ; $7a6c: $68
    ld l, c                                       ; $7a6d: $69
    ld l, d                                       ; $7a6e: $6a
    ld l, e                                       ; $7a6f: $6b
    ld [hl+], a                                   ; $7a70: $22
    inc hl                                        ; $7a71: $23
    jr c, jr_007_7aac                             ; $7a72: $38 $38

    nop                                           ; $7a74: $00
    nop                                           ; $7a75: $00
    nop                                           ; $7a76: $00
    nop                                           ; $7a77: $00
    nop                                           ; $7a78: $00
    nop                                           ; $7a79: $00
    nop                                           ; $7a7a: $00
    nop                                           ; $7a7b: $00

jr_007_7a7c:
    nop                                           ; $7a7c: $00
    nop                                           ; $7a7d: $00
    nop                                           ; $7a7e: $00
    nop                                           ; $7a7f: $00
    inc bc                                        ; $7a80: $03
    inc bc                                        ; $7a81: $03

Jump_007_7a82:
    jr nc, jr_007_7ab5                            ; $7a82: $30 $31

    ld [hl], b                                    ; $7a84: $70

jr_007_7a85:
    ld [hl], c                                    ; $7a85: $71
    ld [hl], d                                    ; $7a86: $72
    ld [hl], e                                    ; $7a87: $73
    ld [hl], h                                    ; $7a88: $74
    ld [hl], l                                    ; $7a89: $75
    halt                                          ; $7a8a: $76
    ld [hl], a                                    ; $7a8b: $77
    ld a, b                                       ; $7a8c: $78
    ld a, c                                       ; $7a8d: $79
    ld a, d                                       ; $7a8e: $7a
    ld a, e                                       ; $7a8f: $7b
    ld [hl-], a                                   ; $7a90: $32
    inc sp                                        ; $7a91: $33
    inc bc                                        ; $7a92: $03
    inc bc                                        ; $7a93: $03
    nop                                           ; $7a94: $00
    nop                                           ; $7a95: $00
    nop                                           ; $7a96: $00
    nop                                           ; $7a97: $00
    nop                                           ; $7a98: $00
    nop                                           ; $7a99: $00

jr_007_7a9a:
    nop                                           ; $7a9a: $00
    nop                                           ; $7a9b: $00
    nop                                           ; $7a9c: $00
    nop                                           ; $7a9d: $00
    nop                                           ; $7a9e: $00
    nop                                           ; $7a9f: $00
    add hl, bc                                    ; $7aa0: $09
    add hl, bc                                    ; $7aa1: $09
    jr nz, jr_007_7ac5                            ; $7aa2: $20 $21

    add b                                         ; $7aa4: $80
    add c                                         ; $7aa5: $81
    add d                                         ; $7aa6: $82
    add e                                         ; $7aa7: $83
    add h                                         ; $7aa8: $84
    add l                                         ; $7aa9: $85
    add [hl]                                      ; $7aaa: $86
    add a                                         ; $7aab: $87

jr_007_7aac:
    adc b                                         ; $7aac: $88
    adc c                                         ; $7aad: $89
    adc d                                         ; $7aae: $8a
    adc e                                         ; $7aaf: $8b
    ld [hl+], a                                   ; $7ab0: $22
    inc hl                                        ; $7ab1: $23
    add hl, bc                                    ; $7ab2: $09
    add hl, bc                                    ; $7ab3: $09
    nop                                           ; $7ab4: $00

jr_007_7ab5:
    nop                                           ; $7ab5: $00
    nop                                           ; $7ab6: $00
    nop                                           ; $7ab7: $00
    nop                                           ; $7ab8: $00
    nop                                           ; $7ab9: $00
    nop                                           ; $7aba: $00
    nop                                           ; $7abb: $00
    nop                                           ; $7abc: $00
    nop                                           ; $7abd: $00
    nop                                           ; $7abe: $00
    nop                                           ; $7abf: $00
    add hl, de                                    ; $7ac0: $19
    add hl, de                                    ; $7ac1: $19
    jr nc, jr_007_7af5                            ; $7ac2: $30 $31

    sub b                                         ; $7ac4: $90

jr_007_7ac5:
    sub c                                         ; $7ac5: $91
    sub d                                         ; $7ac6: $92
    sub e                                         ; $7ac7: $93
    sub h                                         ; $7ac8: $94
    sub l                                         ; $7ac9: $95
    sub [hl]                                      ; $7aca: $96
    sub a                                         ; $7acb: $97
    sbc b                                         ; $7acc: $98
    sbc c                                         ; $7acd: $99
    sbc d                                         ; $7ace: $9a
    sbc e                                         ; $7acf: $9b
    ld [hl-], a                                   ; $7ad0: $32
    inc sp                                        ; $7ad1: $33
    add hl, de                                    ; $7ad2: $19
    add hl, de                                    ; $7ad3: $19
    nop                                           ; $7ad4: $00
    nop                                           ; $7ad5: $00
    nop                                           ; $7ad6: $00
    nop                                           ; $7ad7: $00
    nop                                           ; $7ad8: $00
    nop                                           ; $7ad9: $00
    nop                                           ; $7ada: $00
    nop                                           ; $7adb: $00
    nop                                           ; $7adc: $00
    nop                                           ; $7add: $00
    nop                                           ; $7ade: $00
    nop                                           ; $7adf: $00
    add hl, hl                                    ; $7ae0: $29
    add hl, hl                                    ; $7ae1: $29
    jr nz, jr_007_7b05                            ; $7ae2: $20 $21

    and b                                         ; $7ae4: $a0
    and c                                         ; $7ae5: $a1
    and d                                         ; $7ae6: $a2
    and e                                         ; $7ae7: $a3
    and h                                         ; $7ae8: $a4
    and l                                         ; $7ae9: $a5
    and [hl]                                      ; $7aea: $a6
    and a                                         ; $7aeb: $a7
    xor b                                         ; $7aec: $a8
    xor c                                         ; $7aed: $a9
    xor d                                         ; $7aee: $aa
    xor e                                         ; $7aef: $ab
    ld [hl+], a                                   ; $7af0: $22
    inc hl                                        ; $7af1: $23
    add hl, hl                                    ; $7af2: $29
    add hl, hl                                    ; $7af3: $29
    nop                                           ; $7af4: $00

jr_007_7af5:
    nop                                           ; $7af5: $00
    nop                                           ; $7af6: $00
    nop                                           ; $7af7: $00
    nop                                           ; $7af8: $00
    nop                                           ; $7af9: $00
    nop                                           ; $7afa: $00
    nop                                           ; $7afb: $00
    nop                                           ; $7afc: $00
    nop                                           ; $7afd: $00
    nop                                           ; $7afe: $00
    nop                                           ; $7aff: $00
    add hl, sp                                    ; $7b00: $39
    add hl, sp                                    ; $7b01: $39
    jr nc, jr_007_7b35                            ; $7b02: $30 $31

    or b                                          ; $7b04: $b0

jr_007_7b05:
    or c                                          ; $7b05: $b1
    or d                                          ; $7b06: $b2
    or e                                          ; $7b07: $b3
    or h                                          ; $7b08: $b4
    or l                                          ; $7b09: $b5
    or [hl]                                       ; $7b0a: $b6
    or a                                          ; $7b0b: $b7
    cp b                                          ; $7b0c: $b8
    cp c                                          ; $7b0d: $b9
    cp d                                          ; $7b0e: $ba
    cp e                                          ; $7b0f: $bb
    ld [hl-], a                                   ; $7b10: $32
    inc sp                                        ; $7b11: $33
    add hl, sp                                    ; $7b12: $39
    add hl, sp                                    ; $7b13: $39
    nop                                           ; $7b14: $00
    nop                                           ; $7b15: $00
    nop                                           ; $7b16: $00
    nop                                           ; $7b17: $00
    nop                                           ; $7b18: $00
    nop                                           ; $7b19: $00
    nop                                           ; $7b1a: $00
    nop                                           ; $7b1b: $00
    nop                                           ; $7b1c: $00
    nop                                           ; $7b1d: $00
    nop                                           ; $7b1e: $00
    nop                                           ; $7b1f: $00
    inc b                                         ; $7b20: $04
    inc b                                         ; $7b21: $04
    jr nz, jr_007_7b45                            ; $7b22: $20 $21

    ret nz                                        ; $7b24: $c0

    pop bc                                        ; $7b25: $c1
    jp nz, $c4c3                                  ; $7b26: $c2 $c3 $c4

    push bc                                       ; $7b29: $c5
    add $c7                                       ; $7b2a: $c6 $c7
    ret z                                         ; $7b2c: $c8

    ret                                           ; $7b2d: $c9


    jp z, Jump_000_22cb                           ; $7b2e: $ca $cb $22

    inc hl                                        ; $7b31: $23
    inc b                                         ; $7b32: $04
    inc b                                         ; $7b33: $04
    nop                                           ; $7b34: $00

jr_007_7b35:
    nop                                           ; $7b35: $00
    nop                                           ; $7b36: $00
    nop                                           ; $7b37: $00
    nop                                           ; $7b38: $00
    nop                                           ; $7b39: $00
    nop                                           ; $7b3a: $00
    nop                                           ; $7b3b: $00
    nop                                           ; $7b3c: $00
    nop                                           ; $7b3d: $00
    nop                                           ; $7b3e: $00
    nop                                           ; $7b3f: $00
    ld b, $07                                     ; $7b40: $06 $07
    jr nc, jr_007_7b75                            ; $7b42: $30 $31

    ret nc                                        ; $7b44: $d0

jr_007_7b45:
    pop de                                        ; $7b45: $d1
    jp nc, $d4d3                                  ; $7b46: $d2 $d3 $d4

    push de                                       ; $7b49: $d5
    sub $d7                                       ; $7b4a: $d6 $d7
    ret c                                         ; $7b4c: $d8

    reti                                          ; $7b4d: $d9


    jp c, Jump_000_32db                           ; $7b4e: $da $db $32

    inc sp                                        ; $7b51: $33
    ld b, $07                                     ; $7b52: $06 $07
    nop                                           ; $7b54: $00
    nop                                           ; $7b55: $00
    nop                                           ; $7b56: $00
    nop                                           ; $7b57: $00
    nop                                           ; $7b58: $00
    nop                                           ; $7b59: $00
    nop                                           ; $7b5a: $00
    nop                                           ; $7b5b: $00
    nop                                           ; $7b5c: $00
    nop                                           ; $7b5d: $00
    nop                                           ; $7b5e: $00
    nop                                           ; $7b5f: $00
    ld d, $17                                     ; $7b60: $16 $17
    jr nz, @+$23                                  ; $7b62: $20 $21

    ldh [$e1], a                                  ; $7b64: $e0 $e1
    ld [c], a                                     ; $7b66: $e2
    db $e3                                        ; $7b67: $e3
    db $e4                                        ; $7b68: $e4
    push hl                                       ; $7b69: $e5
    and $e7                                       ; $7b6a: $e6 $e7
    add sp, -$17                                  ; $7b6c: $e8 $e9
    ld [$22eb], a                                 ; $7b6e: $ea $eb $22
    inc hl                                        ; $7b71: $23
    ld d, $17                                     ; $7b72: $16 $17
    nop                                           ; $7b74: $00

jr_007_7b75:
    nop                                           ; $7b75: $00
    nop                                           ; $7b76: $00
    nop                                           ; $7b77: $00

Call_007_7b78:
    nop                                           ; $7b78: $00
    nop                                           ; $7b79: $00
    nop                                           ; $7b7a: $00
    nop                                           ; $7b7b: $00
    nop                                           ; $7b7c: $00
    nop                                           ; $7b7d: $00
    nop                                           ; $7b7e: $00
    nop                                           ; $7b7f: $00
    ld h, $27                                     ; $7b80: $26 $27
    jr nc, jr_007_7bb5                            ; $7b82: $30 $31

    ldh a, [$f1]                                  ; $7b84: $f0 $f1
    ld a, [c]                                     ; $7b86: $f2
    di                                            ; $7b87: $f3
    db $f4                                        ; $7b88: $f4
    push af                                       ; $7b89: $f5
    or $f7                                        ; $7b8a: $f6 $f7
    ld hl, sp-$07                                 ; $7b8c: $f8 $f9
    ld a, [$32fb]                                 ; $7b8e: $fa $fb $32
    inc sp                                        ; $7b91: $33
    ld h, $27                                     ; $7b92: $26 $27
    nop                                           ; $7b94: $00
    nop                                           ; $7b95: $00
    nop                                           ; $7b96: $00
    nop                                           ; $7b97: $00
    nop                                           ; $7b98: $00
    nop                                           ; $7b99: $00
    nop                                           ; $7b9a: $00
    nop                                           ; $7b9b: $00
    nop                                           ; $7b9c: $00
    nop                                           ; $7b9d: $00
    nop                                           ; $7b9e: $00
    nop                                           ; $7b9f: $00
    ld [hl], $37                                  ; $7ba0: $36 $37
    inc de                                        ; $7ba2: $13
    inc d                                         ; $7ba3: $14
    inc d                                         ; $7ba4: $14
    inc d                                         ; $7ba5: $14
    inc d                                         ; $7ba6: $14
    inc d                                         ; $7ba7: $14
    inc d                                         ; $7ba8: $14
    inc d                                         ; $7ba9: $14
    inc d                                         ; $7baa: $14
    inc d                                         ; $7bab: $14
    inc d                                         ; $7bac: $14
    inc d                                         ; $7bad: $14
    inc d                                         ; $7bae: $14
    inc d                                         ; $7baf: $14
    inc d                                         ; $7bb0: $14
    dec d                                         ; $7bb1: $15
    ld [hl], $37                                  ; $7bb2: $36 $37
    nop                                           ; $7bb4: $00

jr_007_7bb5:
    nop                                           ; $7bb5: $00
    nop                                           ; $7bb6: $00
    nop                                           ; $7bb7: $00
    nop                                           ; $7bb8: $00
    nop                                           ; $7bb9: $00
    nop                                           ; $7bba: $00
    nop                                           ; $7bbb: $00
    nop                                           ; $7bbc: $00
    nop                                           ; $7bbd: $00
    nop                                           ; $7bbe: $00
    nop                                           ; $7bbf: $00
    ld b, [hl]                                    ; $7bc0: $46
    ld b, a                                       ; $7bc1: $47
    ld b, [hl]                                    ; $7bc2: $46
    ld b, a                                       ; $7bc3: $47
    ld b, [hl]                                    ; $7bc4: $46
    ld b, a                                       ; $7bc5: $47
    ld b, [hl]                                    ; $7bc6: $46
    ld b, a                                       ; $7bc7: $47
    ld b, [hl]                                    ; $7bc8: $46
    inc h                                         ; $7bc9: $24
    dec h                                         ; $7bca: $25
    ld b, a                                       ; $7bcb: $47
    ld b, [hl]                                    ; $7bcc: $46
    ld b, a                                       ; $7bcd: $47
    ld b, [hl]                                    ; $7bce: $46
    ld b, a                                       ; $7bcf: $47
    ld b, [hl]                                    ; $7bd0: $46
    ld b, a                                       ; $7bd1: $47
    ld b, [hl]                                    ; $7bd2: $46
    ld b, a                                       ; $7bd3: $47
    nop                                           ; $7bd4: $00
    nop                                           ; $7bd5: $00
    nop                                           ; $7bd6: $00
    nop                                           ; $7bd7: $00
    nop                                           ; $7bd8: $00
    nop                                           ; $7bd9: $00
    nop                                           ; $7bda: $00
    nop                                           ; $7bdb: $00
    nop                                           ; $7bdc: $00
    nop                                           ; $7bdd: $00
    nop                                           ; $7bde: $00
    nop                                           ; $7bdf: $00
    ld bc, $0101                                  ; $7be0: $01 $01 $01
    ld bc, $0101                                  ; $7be3: $01 $01 $01
    ld bc, $0101                                  ; $7be6: $01 $01 $01
    inc [hl]                                      ; $7be9: $34
    dec [hl]                                      ; $7bea: $35
    ld bc, $0101                                  ; $7beb: $01 $01 $01
    ld bc, $0101                                  ; $7bee: $01 $01 $01
    ld bc, $0101                                  ; $7bf1: $01 $01 $01
    nop                                           ; $7bf4: $00
    nop                                           ; $7bf5: $00
    nop                                           ; $7bf6: $00
    nop                                           ; $7bf7: $00
    nop                                           ; $7bf8: $00
    nop                                           ; $7bf9: $00
    nop                                           ; $7bfa: $00
    nop                                           ; $7bfb: $00
    nop                                           ; $7bfc: $00
    nop                                           ; $7bfd: $00

Call_007_7bfe:
    nop                                           ; $7bfe: $00
    nop                                           ; $7bff: $00

Call_007_7c00:
    ld b, a                                       ; $7c00: $47

Jump_007_7c01:
    ld a, $ff                                     ; $7c01: $3e $ff
    ld [$d204], a                                 ; $7c03: $ea $04 $d2
    ld c, $0c                                     ; $7c06: $0e $0c
    ld l, b                                       ; $7c08: $68
    call Call_007_7d19                            ; $7c09: $cd $19 $7d

Jump_007_7c0c:
    ld hl, $d204                                  ; $7c0c: $21 $04 $d2
    ld a, [hl]                                    ; $7c0f: $7e
    inc [hl]                                      ; $7c10: $34
    xor [hl]                                      ; $7c11: $ae
    bit 4, a                                      ; $7c12: $cb $67
    jr z, jr_007_7c20                             ; $7c14: $28 $0a

    ld a, [hl]                                    ; $7c16: $7e
    swap a                                        ; $7c17: $cb $37
    and $01                                       ; $7c19: $e6 $01
    ld h, a                                       ; $7c1b: $67
    ld l, b                                       ; $7c1c: $68
    call Call_007_7cfe                            ; $7c1d: $cd $fe $7c

jr_007_7c20:
    call Call_000_2e3b                            ; $7c20: $cd $3b $2e
    ld a, [$d205]                                 ; $7c23: $fa $05 $d2
    or a                                          ; $7c26: $b7
    jr z, jr_007_7c59                             ; $7c27: $28 $30

    ld a, [$cb40]                                 ; $7c29: $fa $40 $cb
    cp $10                                        ; $7c2c: $fe $10
    jr nz, jr_007_7c59                            ; $7c2e: $20 $29

Jump_007_7c30:
    ld a, $20                                     ; $7c30: $3e $20
    ld [$cb00], a                                 ; $7c32: $ea $00 $cb
    ld a, $01                                     ; $7c35: $3e $01
    call Call_000_3081                            ; $7c37: $cd $81 $30
    ld h, $01                                     ; $7c3a: $26 $01
    ld l, b                                       ; $7c3c: $68
    call Call_007_7cfe                            ; $7c3d: $cd $fe $7c
    ld c, $0b                                     ; $7c40: $0e $0b
    ld l, b                                       ; $7c42: $68
    call Call_007_7d19                            ; $7c43: $cd $19 $7d
    ld h, $00                                     ; $7c46: $26 $00
    ld l, $01                                     ; $7c48: $2e $01
    call Call_007_7cfe                            ; $7c4a: $cd $fe $7c
    ld c, $0c                                     ; $7c4d: $0e $0c
    ld l, $01                                     ; $7c4f: $2e $01
    call Call_007_7d19                            ; $7c51: $cd $19 $7d
    ld b, $11                                     ; $7c54: $06 $11
    jp Jump_007_7ce0                              ; $7c56: $c3 $e0 $7c


jr_007_7c59:
    ldh a, [$91]                                  ; $7c59: $f0 $91
    bit 1, a                                      ; $7c5b: $cb $4f
    jp nz, Jump_007_7ced                          ; $7c5d: $c2 $ed $7c

    bit 0, a                                      ; $7c60: $cb $47
    jr nz, jr_007_7ca2                            ; $7c62: $20 $3e

    bit 6, a                                      ; $7c64: $cb $77
    jr z, jr_007_7c77                             ; $7c66: $28 $0f

    xor a                                         ; $7c68: $af
    cp b                                          ; $7c69: $b8
    jr nz, jr_007_7c73                            ; $7c6a: $20 $07

    ld a, [$d202]                                 ; $7c6c: $fa $02 $d2
    dec a                                         ; $7c6f: $3d
    ld d, a                                       ; $7c70: $57
    jr jr_007_7c8e                                ; $7c71: $18 $1b

jr_007_7c73:
    ld d, $ff                                     ; $7c73: $16 $ff
    jr jr_007_7c8e                                ; $7c75: $18 $17

jr_007_7c77:
    bit 7, a                                      ; $7c77: $cb $7f
    jr z, jr_007_7c8b                             ; $7c79: $28 $10

    ld a, [$d202]                                 ; $7c7b: $fa $02 $d2
    dec a                                         ; $7c7e: $3d
    cp b                                          ; $7c7f: $b8
    jr nz, jr_007_7c87                            ; $7c80: $20 $05

    cpl                                           ; $7c82: $2f

Jump_007_7c83:
    inc a                                         ; $7c83: $3c
    ld d, a                                       ; $7c84: $57
    jr jr_007_7c8e                                ; $7c85: $18 $07

jr_007_7c87:
    ld d, $01                                     ; $7c87: $16 $01
    jr jr_007_7c8e                                ; $7c89: $18 $03

jr_007_7c8b:
    jp Jump_007_7c0c                              ; $7c8b: $c3 $0c $7c


jr_007_7c8e:
    rst $08                                       ; $7c8e: $cf
    ld e, e                                       ; $7c8f: $5b
    ld h, $01                                     ; $7c90: $26 $01
    ld l, b                                       ; $7c92: $68
    call Call_007_7cfe                            ; $7c93: $cd $fe $7c
    ld c, $0b                                     ; $7c96: $0e $0b
    ld l, b                                       ; $7c98: $68
    call Call_007_7d19                            ; $7c99: $cd $19 $7d
    ld a, b                                       ; $7c9c: $78
    add d                                         ; $7c9d: $82
    ld b, a                                       ; $7c9e: $47
    jp Jump_007_7c01                              ; $7c9f: $c3 $01 $7c


jr_007_7ca2:
    ld a, [$d205]                                 ; $7ca2: $fa $05 $d2
    or a                                          ; $7ca5: $b7
    jr z, jr_007_7ce0                             ; $7ca6: $28 $38

    ld a, b                                       ; $7ca8: $78
    cp $01                                        ; $7ca9: $fe $01
    jr nz, jr_007_7ce0                            ; $7cab: $20 $33

    call Call_000_306e                            ; $7cad: $cd $6e $30
    call Call_000_2e3b                            ; $7cb0: $cd $3b $2e
    ldh a, [$c2]                                  ; $7cb3: $f0 $c2
    cp $02                                        ; $7cb5: $fe $02
    jp z, Jump_007_7c30                           ; $7cb7: $ca $30 $7c

    cp $01                                        ; $7cba: $fe $01
    jp nz, Jump_007_7cd8                          ; $7cbc: $c2 $d8 $7c

    ld a, $10                                     ; $7cbf: $3e $10
    ld [$cb00], a                                 ; $7cc1: $ea $00 $cb
    ld a, $10                                     ; $7cc4: $3e $10
    call Call_000_3081                            ; $7cc6: $cd $81 $30
    ld c, $0a                                     ; $7cc9: $0e $0a

jr_007_7ccb:
    call Call_000_2e3b                            ; $7ccb: $cd $3b $2e
    ld a, [$cb40]                                 ; $7cce: $fa $40 $cb
    cp $20                                        ; $7cd1: $fe $20
    jr z, jr_007_7ce0                             ; $7cd3: $28 $0b

    dec c                                         ; $7cd5: $0d
    jr nz, jr_007_7ccb                            ; $7cd6: $20 $f3

Jump_007_7cd8:
    rst $08                                       ; $7cd8: $cf
    ld e, l                                       ; $7cd9: $5d
    call Call_000_304d                            ; $7cda: $cd $4d $30
    jp Jump_007_7c0c                              ; $7cdd: $c3 $0c $7c


Jump_007_7ce0:
jr_007_7ce0:
    rst $08                                       ; $7ce0: $cf
    ld e, h                                       ; $7ce1: $5c
    ld h, $00                                     ; $7ce2: $26 $00
    ld a, b                                       ; $7ce4: $78
    and $0f                                       ; $7ce5: $e6 $0f
    ld l, a                                       ; $7ce7: $6f
    call Call_007_7cfe                            ; $7ce8: $cd $fe $7c
    ld a, b                                       ; $7ceb: $78
    ret                                           ; $7cec: $c9


Jump_007_7ced:
    rst $08                                       ; $7ced: $cf
    ld e, l                                       ; $7cee: $5d
    ld h, $01                                     ; $7cef: $26 $01
    ld l, b                                       ; $7cf1: $68
    call Call_007_7cfe                            ; $7cf2: $cd $fe $7c
    ld c, $0b                                     ; $7cf5: $0e $0b
    ld l, b                                       ; $7cf7: $68
    call Call_007_7d19                            ; $7cf8: $cd $19 $7d
    ld a, $ff                                     ; $7cfb: $3e $ff
    ret                                           ; $7cfd: $c9


Call_007_7cfe:
    push af                                       ; $7cfe: $f5
    push bc                                       ; $7cff: $c5
    push de                                       ; $7d00: $d5
    push hl                                       ; $7d01: $e5
    ld a, [$d203]                                 ; $7d02: $fa $03 $d2
    add l                                         ; $7d05: $85
    add l                                         ; $7d06: $85
    ld l, a                                       ; $7d07: $6f
    push hl                                       ; $7d08: $e5
    call Call_007_7d36                            ; $7d09: $cd $36 $7d
    pop hl                                        ; $7d0c: $e1
    inc l                                         ; $7d0d: $2c
    call Call_007_7d36                            ; $7d0e: $cd $36 $7d
    call Call_000_2e3b                            ; $7d11: $cd $3b $2e
    pop hl                                        ; $7d14: $e1
    pop de                                        ; $7d15: $d1
    pop bc                                        ; $7d16: $c1
    pop af                                        ; $7d17: $f1
    ret                                           ; $7d18: $c9


Call_007_7d19:
    push af                                       ; $7d19: $f5
    push bc                                       ; $7d1a: $c5
    push de                                       ; $7d1b: $d5
    push hl                                       ; $7d1c: $e5
    ld a, [$d203]                                 ; $7d1d: $fa $03 $d2
    add l                                         ; $7d20: $85
    add l                                         ; $7d21: $85
    ld l, a                                       ; $7d22: $6f
    push hl                                       ; $7d23: $e5
    push bc                                       ; $7d24: $c5
    call Call_007_7d69                            ; $7d25: $cd $69 $7d
    pop bc                                        ; $7d28: $c1
    pop hl                                        ; $7d29: $e1
    inc l                                         ; $7d2a: $2c
    call Call_007_7d69                            ; $7d2b: $cd $69 $7d
    call Call_000_2e3b                            ; $7d2e: $cd $3b $2e
    pop hl                                        ; $7d31: $e1
    pop de                                        ; $7d32: $d1
    pop bc                                        ; $7d33: $c1
    pop af                                        ; $7d34: $f1
    ret                                           ; $7d35: $c9


Call_007_7d36:
    push hl                                       ; $7d36: $e5
    ld b, l                                       ; $7d37: $45
    ld a, l                                       ; $7d38: $7d
    add a                                         ; $7d39: $87
    add h                                         ; $7d3a: $84
    add a                                         ; $7d3b: $87

Jump_007_7d3c:
    ld d, $00                                     ; $7d3c: $16 $00

Jump_007_7d3e:
    ld e, a                                       ; $7d3e: $5f
    ld hl, $d200                                  ; $7d3f: $21 $00 $d2
    ld a, [hl+]                                   ; $7d42: $2a
    ld h, [hl]                                    ; $7d43: $66
    ld l, a                                       ; $7d44: $6f
    add hl, de                                    ; $7d45: $19
    ld a, [hl+]                                   ; $7d46: $2a
    ld h, [hl]                                    ; $7d47: $66
    ld l, a                                       ; $7d48: $6f
    ld de, $d000                                  ; $7d49: $11 $00 $d0
    bit 0, b                                      ; $7d4c: $cb $40
    jr z, jr_007_7d51                             ; $7d4e: $28 $01

    inc d                                         ; $7d50: $14

jr_007_7d51:
    push de                                       ; $7d51: $d5
    call Call_000_1f2f                            ; $7d52: $cd $2f $1f
    ld a, b                                       ; $7d55: $78
    add $a6                                       ; $7d56: $c6 $a6
    bit 3, a                                      ; $7d58: $cb $5f
    jr nz, jr_007_7d5e                            ; $7d5a: $20 $02

    or $10                                        ; $7d5c: $f6 $10

jr_007_7d5e:
    pop hl                                        ; $7d5e: $e1
    ld d, a                                       ; $7d5f: $57
    ld e, $00                                     ; $7d60: $1e $00
    ld c, $10                                     ; $7d62: $0e $10
    call Call_000_0468                            ; $7d64: $cd $68 $04
    pop hl                                        ; $7d67: $e1
    ret                                           ; $7d68: $c9


Call_007_7d69:
    push hl                                       ; $7d69: $e5
    ld b, l                                       ; $7d6a: $45
    ld l, b                                       ; $7d6b: $68
    ld h, $00                                     ; $7d6c: $26 $00
    add hl, hl                                    ; $7d6e: $29
    add hl, hl                                    ; $7d6f: $29
    add hl, hl                                    ; $7d70: $29
    add hl, hl                                    ; $7d71: $29
    add hl, hl                                    ; $7d72: $29
    push hl                                       ; $7d73: $e5
    ld de, $7820                                  ; $7d74: $11 $20 $78
    add hl, de                                    ; $7d77: $19
    ld de, $d000                                  ; $7d78: $11 $00 $d0
    bit 0, b                                      ; $7d7b: $cb $40
    jr z, jr_007_7d80                             ; $7d7d: $28 $01

    inc d                                         ; $7d7f: $14

jr_007_7d80:
    push hl                                       ; $7d80: $e5
    push de                                       ; $7d81: $d5
    push bc                                       ; $7d82: $c5
    ld c, $02                                     ; $7d83: $0e $02
    call Call_000_03eb                            ; $7d85: $cd $eb $03
    pop bc                                        ; $7d88: $c1
    pop de                                        ; $7d89: $d1
    pop hl                                        ; $7d8a: $e1
    pop hl                                        ; $7d8b: $e1
    push de                                       ; $7d8c: $d5
    ld de, $b8a0                                  ; $7d8d: $11 $a0 $b8
    add hl, de                                    ; $7d90: $19
    ld d, h                                       ; $7d91: $54
    ld e, l                                       ; $7d92: $5d
    pop hl                                        ; $7d93: $e1
    ld a, c                                       ; $7d94: $79
    push hl                                       ; $7d95: $e5
    inc hl                                        ; $7d96: $23
    inc hl                                        ; $7d97: $23
    ld [hl+], a                                   ; $7d98: $22
    ld [hl+], a                                   ; $7d99: $22
    ld [hl+], a                                   ; $7d9a: $22
    ld [hl+], a                                   ; $7d9b: $22
    ld [hl+], a                                   ; $7d9c: $22
    ld [hl+], a                                   ; $7d9d: $22
    ld [hl+], a                                   ; $7d9e: $22
    ld [hl+], a                                   ; $7d9f: $22
    ld [hl+], a                                   ; $7da0: $22
    ld [hl+], a                                   ; $7da1: $22
    ld [hl+], a                                   ; $7da2: $22
    ld [hl+], a                                   ; $7da3: $22
    ld [hl+], a                                   ; $7da4: $22
    ld [hl+], a                                   ; $7da5: $22
    ld [hl+], a                                   ; $7da6: $22
    ld [hl+], a                                   ; $7da7: $22
    pop hl                                        ; $7da8: $e1
    ld c, $02                                     ; $7da9: $0e $02
    call Call_000_0468                            ; $7dab: $cd $68 $04
    pop hl                                        ; $7dae: $e1
    ret                                           ; $7daf: $c9


    ldh a, [$8c]                                  ; $7db0: $f0 $8c
    and $3f                                       ; $7db2: $e6 $3f
    ld hl, $7dc9                                  ; $7db4: $21 $c9 $7d
    add l                                         ; $7db7: $85
    ld l, a                                       ; $7db8: $6f
    jr nc, jr_007_7dbc                            ; $7db9: $30 $01

    inc h                                         ; $7dbb: $24

jr_007_7dbc:
    ld d, $00                                     ; $7dbc: $16 $00
    ld e, [hl]                                    ; $7dbe: $5e
    ld hl, $7e09                                  ; $7dbf: $21 $09 $7e
    ld bc, $04e0                                  ; $7dc2: $01 $e0 $04
    call Call_000_26ea                            ; $7dc5: $cd $ea $26
    ret                                           ; $7dc8: $c9


    nop                                           ; $7dc9: $00
    nop                                           ; $7dca: $00
    nop                                           ; $7dcb: $00
    ld bc, $0101                                  ; $7dcc: $01 $01 $01
    ld [bc], a                                    ; $7dcf: $02
    ld [bc], a                                    ; $7dd0: $02
    ld [bc], a                                    ; $7dd1: $02
    inc bc                                        ; $7dd2: $03
    inc bc                                        ; $7dd3: $03
    inc bc                                        ; $7dd4: $03
    inc bc                                        ; $7dd5: $03
    inc bc                                        ; $7dd6: $03
    inc bc                                        ; $7dd7: $03
    inc bc                                        ; $7dd8: $03
    inc bc                                        ; $7dd9: $03
    inc bc                                        ; $7dda: $03
    inc bc                                        ; $7ddb: $03
    inc bc                                        ; $7ddc: $03
    inc bc                                        ; $7ddd: $03
    inc bc                                        ; $7dde: $03
    inc bc                                        ; $7ddf: $03
    inc bc                                        ; $7de0: $03
    ld [bc], a                                    ; $7de1: $02
    ld [bc], a                                    ; $7de2: $02
    ld [bc], a                                    ; $7de3: $02
    ld bc, $0101                                  ; $7de4: $01 $01 $01
    nop                                           ; $7de7: $00
    nop                                           ; $7de8: $00
    nop                                           ; $7de9: $00
    nop                                           ; $7dea: $00
    nop                                           ; $7deb: $00
    rst $38                                       ; $7dec: $ff
    rst $38                                       ; $7ded: $ff
    rst $38                                       ; $7dee: $ff
    cp $fe                                        ; $7def: $fe $fe
    cp $fd                                        ; $7df1: $fe $fd
    db $fd                                        ; $7df3: $fd
    db $fd                                        ; $7df4: $fd
    db $fd                                        ; $7df5: $fd
    db $fd                                        ; $7df6: $fd
    db $fd                                        ; $7df7: $fd
    db $fd                                        ; $7df8: $fd
    db $fd                                        ; $7df9: $fd
    db $fd                                        ; $7dfa: $fd
    db $fd                                        ; $7dfb: $fd
    db $fd                                        ; $7dfc: $fd
    db $fd                                        ; $7dfd: $fd
    db $fd                                        ; $7dfe: $fd
    db $fd                                        ; $7dff: $fd
    db $fd                                        ; $7e00: $fd
    cp $fe                                        ; $7e01: $fe $fe
    cp $ff                                        ; $7e03: $fe $ff
    rst $38                                       ; $7e05: $ff
    rst $38                                       ; $7e06: $ff
    nop                                           ; $7e07: $00
    nop                                           ; $7e08: $00
    ld a, [de]                                    ; $7e09: $1a
    jr nc, jr_007_7e0c                            ; $7e0a: $30 $00

jr_007_7e0c:
    nop                                           ; $7e0c: $00
    ld a, [de]                                    ; $7e0d: $1a
    jr c, jr_007_7e12                             ; $7e0e: $38 $02

    nop                                           ; $7e10: $00
    ld a, [de]                                    ; $7e11: $1a

jr_007_7e12:
    ld b, b                                       ; $7e12: $40
    inc b                                         ; $7e13: $04
    nop                                           ; $7e14: $00
    ld a, [de]                                    ; $7e15: $1a
    ld c, b                                       ; $7e16: $48
    ld b, $00                                     ; $7e17: $06 $00
    ld a, [de]                                    ; $7e19: $1a
    ld d, b                                       ; $7e1a: $50
    ld [$1a00], sp                                ; $7e1b: $08 $00 $1a
    ld e, b                                       ; $7e1e: $58
    ld a, [bc]                                    ; $7e1f: $0a
    nop                                           ; $7e20: $00
    ld a, [de]                                    ; $7e21: $1a
    ld h, b                                       ; $7e22: $60
    inc c                                         ; $7e23: $0c
    nop                                           ; $7e24: $00
    ld a, [de]                                    ; $7e25: $1a
    ld l, b                                       ; $7e26: $68
    ld c, $00                                     ; $7e27: $0e $00
    ld a, [de]                                    ; $7e29: $1a
    ld [hl], b                                    ; $7e2a: $70
    stop                                          ; $7e2b: $10 $00
    ld a, [de]                                    ; $7e2d: $1a
    ld a, b                                       ; $7e2e: $78
    ld [de], a                                    ; $7e2f: $12
    nop                                           ; $7e30: $00
    add b                                         ; $7e31: $80
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

Call_007_7fff:
    rst $38                                       ; $7fff: $ff
