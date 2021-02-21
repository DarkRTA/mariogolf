; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $073", ROMX[$4000], BANK[$73]

    db $c7, $76

    ld l, [hl]                                    ; $4002: $6e
    ld [hl], a                                    ; $4003: $77
    ld b, b                                       ; $4004: $40
    ld b, b                                       ; $4005: $40
    ld c, b                                       ; $4006: $48
    ld b, b                                       ; $4007: $40
    ld h, d                                       ; $4008: $62
    ld c, d                                       ; $4009: $4a
    adc a                                         ; $400a: $8f
    ld c, [hl]                                    ; $400b: $4e
    sub b                                         ; $400c: $90
    ld d, c                                       ; $400d: $51
    sub $51                                       ; $400e: $d6 $51
    inc e                                         ; $4010: $1c
    ld d, d                                       ; $4011: $52
    dec e                                         ; $4012: $1d
    ld d, d                                       ; $4013: $52
    adc b                                         ; $4014: $88
    ld b, b                                       ; $4015: $40

    db $a3, $52, $ab, $52, $98, $55, $aa, $56, $b1, $57, $f7, $57

    dec a                                         ; $4022: $3d
    ld e, b                                       ; $4023: $58

    db $c2, $58, $eb, $52

    daa                                           ; $4028: $27
    ld e, e                                       ; $4029: $5b
    cpl                                           ; $402a: $2f
    ld e, e                                       ; $402b: $5b
    ld [hl-], a                                   ; $402c: $32
    ld h, [hl]                                    ; $402d: $66
    reti                                          ; $402e: $d9


    ld l, l                                       ; $402f: $6d
    pop af                                        ; $4030: $f1
    ld [hl], d                                    ; $4031: $72
    ccf                                           ; $4032: $3f
    ld [hl], e                                    ; $4033: $73
    adc e                                         ; $4034: $8b
    ld [hl], e                                    ; $4035: $73
    call c, Call_073_6f73                         ; $4036: $dc $73 $6f
    ld e, e                                       ; $4039: $5b
    inc e                                         ; $403a: $1c
    ld d, d                                       ; $403b: $52

    db $3d, $58

    adc e                                         ; $403e: $8b
    ld [hl], e                                    ; $403f: $73
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    ld [bc], a                                    ; $4043: $02
    inc d                                         ; $4044: $14
    inc d                                         ; $4045: $14
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    add sp, $29                                   ; $4048: $e8 $29
    ld hl, sp+$46                                 ; $404a: $f8 $46
    rst $08                                       ; $404c: $cf
    add hl, hl                                    ; $404d: $29
    nop                                           ; $404e: $00
    nop                                           ; $404f: $00
    ld [$0825], sp                                ; $4050: $08 $25 $08
    dec h                                         ; $4053: $25
    ld [$0825], sp                                ; $4054: $08 $25 $08
    dec h                                         ; $4057: $25
    rst $00                                       ; $4058: $c7
    inc bc                                        ; $4059: $03
    jp $e206                                      ; $405a: $c3 $06 $e2


    ld bc, $0120                                  ; $405d: $01 $20 $01
    rst $00                                       ; $4060: $c7
    inc bc                                        ; $4061: $03
    adc $03                                       ; $4062: $ce $03
    jp $e206                                      ; $4064: $c3 $06 $e2


    ld bc, $0a1f                                  ; $4067: $01 $1f $0a
    rst $00                                       ; $406a: $c7
    ld bc, $00cb                                  ; $406b: $01 $cb $00
    jp Jump_000_0806                              ; $406e: $c3 $06 $08


    dec h                                         ; $4071: $25
    ld [$0825], sp                                ; $4072: $08 $25 $08
    dec h                                         ; $4075: $25
    ld [$0825], sp                                ; $4076: $08 $25 $08
    dec h                                         ; $4079: $25
    ld [$0825], sp                                ; $407a: $08 $25 $08
    dec h                                         ; $407d: $25
    ld [$0825], sp                                ; $407e: $08 $25 $08
    dec h                                         ; $4081: $25
    ld [$0825], sp                                ; $4082: $08 $25 $08
    dec h                                         ; $4085: $25
    ld [$ff25], sp                                ; $4086: $08 $25 $ff
    ld b, d                                       ; $4089: $42
    ld b, c                                       ; $408a: $41
    nop                                           ; $408b: $00
    dec b                                         ; $408c: $05
    ld bc, $0103                                  ; $408d: $01 $03 $01
    ld [bc], a                                    ; $4090: $02
    rst $38                                       ; $4091: $ff
    ld bc, $1102                                  ; $4092: $01 $02 $11
    ld [de], a                                    ; $4095: $12
    nop                                           ; $4096: $00
    ld [bc], a                                    ; $4097: $02
    ld [bc], a                                    ; $4098: $02
    ld bc, $deff                                  ; $4099: $01 $ff $de
    db $fd                                        ; $409c: $fd
    db $fc                                        ; $409d: $fc
    push af                                       ; $409e: $f5
    db $fd                                        ; $409f: $fd
    ld e, a                                       ; $40a0: $5f
    db $fd                                        ; $40a1: $fd
    cp d                                          ; $40a2: $ba
    rst $38                                       ; $40a3: $ff
    db $fd                                        ; $40a4: $fd
    ld a, [$bef9]                                 ; $40a5: $fa $f9 $be
    db $fc                                        ; $40a8: $fc
    sub $be                                       ; $40a9: $d6 $be
    db $ed                                        ; $40ab: $ed
    rst $38                                       ; $40ac: $ff
    rrca                                          ; $40ad: $0f
    rla                                           ; $40ae: $17
    rlca                                          ; $40af: $07
    ld d, [hl]                                    ; $40b0: $56
    rla                                           ; $40b1: $17
    rra                                           ; $40b2: $1f
    rla                                           ; $40b3: $17
    dec c                                         ; $40b4: $0d
    cp $fe                                        ; $40b5: $fe $fe
    ldh [rNR31], a                                ; $40b7: $e0 $1b
    daa                                           ; $40b9: $27
    scf                                           ; $40ba: $37
    rrca                                          ; $40bb: $0f
    rla                                           ; $40bc: $17
    ld [bc], a                                    ; $40bd: $02
    ld [bc], a                                    ; $40be: $02
    rst $38                                       ; $40bf: $ff

Call_073_40c0:
    nop                                           ; $40c0: $00
    ld b, b                                       ; $40c1: $40
    nop                                           ; $40c2: $00
    inc b                                         ; $40c3: $04
    ld b, c                                       ; $40c4: $41
    ld a, e                                       ; $40c5: $7b
    ld a, [hl-]                                   ; $40c6: $3a
    rst $20                                       ; $40c7: $e7
    rst $38                                       ; $40c8: $ff
    sbc l                                         ; $40c9: $9d
    cp a                                          ; $40ca: $bf
    rst $38                                       ; $40cb: $ff
    db $eb                                        ; $40cc: $eb
    rst $38                                       ; $40cd: $ff
    rst $30                                       ; $40ce: $f7
    ld h, $99                                     ; $40cf: $26 $99
    rst $38                                       ; $40d1: $ff
    adc b                                         ; $40d2: $88
    ld h, [hl]                                    ; $40d3: $66
    rst $38                                       ; $40d4: $ff
    ld [$fdff], a                                 ; $40d5: $ea $ff $fd
    rst $30                                       ; $40d8: $f7
    rst $38                                       ; $40d9: $ff
    rst $30                                       ; $40da: $f7
    ld a, a                                       ; $40db: $7f
    db $fd                                        ; $40dc: $fd
    db $fd                                        ; $40dd: $fd
    ldh a, [$e2]                                  ; $40de: $f0 $e2
    adc c                                         ; $40e0: $89
    ld h, a                                       ; $40e1: $67
    ld b, d                                       ; $40e2: $42
    ld d, d                                       ; $40e3: $52
    ld a, a                                       ; $40e4: $7f
    nop                                           ; $40e5: $00
    nop                                           ; $40e6: $00
    jr nz, jr_073_40ed                            ; $40e7: $20 $04

    inc b                                         ; $40e9: $04
    inc b                                         ; $40ea: $04
    nop                                           ; $40eb: $00
    rst $38                                       ; $40ec: $ff

jr_073_40ed:
    ld [c], a                                     ; $40ed: $e2
    rst $38                                       ; $40ee: $ff
    db $10                                        ; $40ef: $10
    db $10                                        ; $40f0: $10
    ld bc, $0c11                                  ; $40f1: $01 $11 $0c
    rlca                                          ; $40f4: $07
    inc de                                        ; $40f5: $13
    adc h                                         ; $40f6: $8c
    rst $38                                       ; $40f7: $ff
    daa                                           ; $40f8: $27
    inc sp                                        ; $40f9: $33
    sbc a                                         ; $40fa: $9f
    db $eb                                        ; $40fb: $eb
    ld a, a                                       ; $40fc: $7f
    sbc a                                         ; $40fd: $9f
    ld b, $03                                     ; $40fe: $06 $03
    rst $38                                       ; $4100: $ff
    add hl, de                                    ; $4101: $19
    ld l, $23                                     ; $4102: $2e $23
    add hl, sp                                    ; $4104: $39
    rrca                                          ; $4105: $0f
    db $e3                                        ; $4106: $e3
    rst $38                                       ; $4107: $ff
    dec [hl]                                      ; $4108: $35
    rst $38                                       ; $4109: $ff
    rst $38                                       ; $410a: $ff
    ld e, a                                       ; $410b: $5f
    rst $38                                       ; $410c: $ff
    or $df                                        ; $410d: $f6 $df
    rst $38                                       ; $410f: $ff
    ld [bc], a                                    ; $4110: $02
    inc bc                                        ; $4111: $03
    rst $38                                       ; $4112: $ff
    dec b                                         ; $4113: $05
    ld a, [bc]                                    ; $4114: $0a
    dec b                                         ; $4115: $05
    ld b, $13                                     ; $4116: $06 $13
    dec d                                         ; $4118: $15
    dec bc                                        ; $4119: $0b
    dec c                                         ; $411a: $0d
    rst $38                                       ; $411b: $ff
    inc de                                        ; $411c: $13
    dec hl                                        ; $411d: $2b
    rla                                           ; $411e: $17
    dec de                                        ; $411f: $1b
    cpl                                           ; $4120: $2f
    rla                                           ; $4121: $17
    ld [hl], d                                    ; $4122: $72
    xor a                                         ; $4123: $af
    rst $38                                       ; $4124: $ff
    xor l                                         ; $4125: $ad
    db $db                                        ; $4126: $db
    ld l, a                                       ; $4127: $6f
    rst $30                                       ; $4128: $f7
    jp c, $55ff                                   ; $4129: $da $ff $55

    rst $38                                       ; $412c: $ff
    rst $38                                       ; $412d: $ff
    xor d                                         ; $412e: $aa
    rst $38                                       ; $412f: $ff
    sbc e                                         ; $4130: $9b
    rst $30                                       ; $4131: $f7
    ld l, l                                       ; $4132: $6d
    rst $38                                       ; $4133: $ff
    db $10                                        ; $4134: $10
    db $10                                        ; $4135: $10
    cp $ba                                        ; $4136: $fe $ba
    ldh [rDIV], a                                 ; $4138: $e0 $04
    ld bc, $0401                                  ; $413a: $01 $01 $04
    rla                                           ; $413d: $17
    inc hl                                        ; $413e: $23
    cp h                                          ; $413f: $bc
    ld a, a                                       ; $4140: $7f
    sbc e                                         ; $4141: $9b
    db $e3                                        ; $4142: $e3
    ld a, a                                       ; $4143: $7f
    sbc a                                         ; $4144: $9f
    ld [bc], a                                    ; $4145: $02
    inc bc                                        ; $4146: $03
    add hl, bc                                    ; $4147: $09
    ret nz                                        ; $4148: $c0

    ldh [$ef], a                                  ; $4149: $e0 $ef
    rra                                           ; $414b: $1f
    rst $20                                       ; $414c: $e7
    ld a, a                                       ; $414d: $7f
    dec sp                                        ; $414e: $3b
    db $dd                                        ; $414f: $dd
    ldh [$f7], a                                  ; $4150: $e0 $f7
    rst $18                                       ; $4152: $df
    cp $ff                                        ; $4153: $fe $ff
    ld [bc], a                                    ; $4155: $02
    dec bc                                        ; $4156: $0b
    dec b                                         ; $4157: $05
    ld b, $09                                     ; $4158: $06 $09
    dec e                                         ; $415a: $1d
    ld b, a                                       ; $415b: $47
    ld c, e                                       ; $415c: $4b
    rst $18                                       ; $415d: $df
    rla                                           ; $415e: $17
    dec de                                        ; $415f: $1b
    rlca                                          ; $4160: $07
    rla                                           ; $4161: $17
    rrca                                          ; $4162: $0f
    ld h, b                                       ; $4163: $60
    ldh [rNR22], a                                ; $4164: $e0 $17
    rrca                                          ; $4166: $0f
    rst $38                                       ; $4167: $ff
    ld d, e                                       ; $4168: $53
    ld c, a                                       ; $4169: $4f
    rla                                           ; $416a: $17
    ld e, a                                       ; $416b: $5f
    cpl                                           ; $416c: $2f
    dec e                                         ; $416d: $1d
    cpl                                           ; $416e: $2f
    ccf                                           ; $416f: $3f
    cp a                                          ; $4170: $bf
    sub [hl]                                      ; $4171: $96
    cp a                                          ; $4172: $bf
    cp a                                          ; $4173: $bf
    ld a, a                                       ; $4174: $7f
    ld a, a                                       ; $4175: $7f
    rst $30                                       ; $4176: $f7
    ret nc                                        ; $4177: $d0

    ldh [$0e], a                                  ; $4178: $e0 $0e
    rst $38                                       ; $417a: $ff
    inc hl                                        ; $417b: $23
    add hl, de                                    ; $417c: $19
    rra                                           ; $417d: $1f
    daa                                           ; $417e: $27
    ld c, e                                       ; $417f: $4b
    ld l, a                                       ; $4180: $6f
    ccf                                           ; $4181: $3f
    ld e, l                                       ; $4182: $5d
    rst $28                                       ; $4183: $ef
    cp a                                          ; $4184: $bf
    bit 7, a                                      ; $4185: $cb $7f
    or a                                          ; $4187: $b7
    sub b                                         ; $4188: $90
    ldh [rNR12], a                                ; $4189: $e0 $12
    dec d                                         ; $418b: $15
    ld d, $ff                                     ; $418c: $16 $ff
    add hl, bc                                    ; $418e: $09
    dec b                                         ; $418f: $05
    ld e, e                                       ; $4190: $5b
    ld c, l                                       ; $4191: $4d
    ld h, a                                       ; $4192: $67
    dec sp                                        ; $4193: $3b
    sbc a                                         ; $4194: $9f
    rst $20                                       ; $4195: $e7
    rst $38                                       ; $4196: $ff
    ld e, a                                       ; $4197: $5f
    sbc a                                         ; $4198: $9f
    sub h                                         ; $4199: $94
    sub [hl]                                      ; $419a: $96
    ld c, d                                       ; $419b: $4a
    ld l, d                                       ; $419c: $6a
    and b                                         ; $419d: $a0
    and b                                         ; $419e: $a0
    rst $38                                       ; $419f: $ff
    dec d                                         ; $41a0: $15
    sub l                                         ; $41a1: $95
    ld c, b                                       ; $41a2: $48
    ld c, b                                       ; $41a3: $48
    ld bc, $a011                                  ; $41a4: $01 $11 $a0
    and b                                         ; $41a7: $a0
    rst $38                                       ; $41a8: $ff
    ld c, b                                       ; $41a9: $48
    ld c, b                                       ; $41aa: $48
    ei                                            ; $41ab: $fb
    ld a, a                                       ; $41ac: $7f
    rst $38                                       ; $41ad: $ff
    rst $28                                       ; $41ae: $ef
    db $fc                                        ; $41af: $fc
    sbc e                                         ; $41b0: $9b
    rst $38                                       ; $41b1: $ff
    or [hl]                                       ; $41b2: $b6
    ret c                                         ; $41b3: $d8

    cp b                                          ; $41b4: $b8
    rst $20                                       ; $41b5: $e7
    ld b, h                                       ; $41b6: $44
    sbc [hl]                                      ; $41b7: $9e
    sub e                                         ; $41b8: $93
    ld [hl], a                                    ; $41b9: $77
    rst $38                                       ; $41ba: $ff
    inc h                                         ; $41bb: $24
    db $fc                                        ; $41bc: $fc
    cp [hl]                                       ; $41bd: $be
    ld sp, hl                                     ; $41be: $f9
    reti                                          ; $41bf: $d9


    rst $00                                       ; $41c0: $c7
    add $3f                                       ; $41c1: $c6 $3f
    rst $38                                       ; $41c3: $ff
    inc [hl]                                      ; $41c4: $34
    rst $38                                       ; $41c5: $ff
    ret                                           ; $41c6: $c9


    ei                                            ; $41c7: $fb
    ld [hl+], a                                   ; $41c8: $22
    cp $ce                                        ; $41c9: $fe $ce
    cp $f7                                        ; $41cb: $fe $f7
    ld a, [de]                                    ; $41cd: $1a
    sbc e                                         ; $41ce: $9b
    rst $38                                       ; $41cf: $ff
    rst $38                                       ; $41d0: $ff
    ldh [$fb], a                                  ; $41d1: $e0 $fb
    xor c                                         ; $41d3: $a9
    ld b, [hl]                                    ; $41d4: $46
    rst $18                                       ; $41d5: $df
    rst $38                                       ; $41d6: $ff
    sbc c                                         ; $41d7: $99
    rst $30                                       ; $41d8: $f7
    xor [hl]                                      ; $41d9: $ae
    cp [hl]                                       ; $41da: $be
    ld hl, $8865                                  ; $41db: $21 $65 $88
    sbc c                                         ; $41de: $99
    rst $38                                       ; $41df: $ff
    ld h, d                                       ; $41e0: $62
    sbc l                                         ; $41e1: $9d
    sbc c                                         ; $41e2: $99
    ld a, a                                       ; $41e3: $7f
    ld h, d                                       ; $41e4: $62
    rst $38                                       ; $41e5: $ff
    ld de, $ff5b                                  ; $41e6: $11 $5b $ff
    ld c, [hl]                                    ; $41e9: $4e
    rst $28                                       ; $41ea: $ef
    sub c                                         ; $41eb: $91
    push de                                       ; $41ec: $d5
    adc d                                         ; $41ed: $8a
    sbc e                                         ; $41ee: $9b
    inc d                                         ; $41ef: $14
    ld d, h                                       ; $41f0: $54
    rst $38                                       ; $41f1: $ff
    cpl                                           ; $41f2: $2f
    rla                                           ; $41f3: $17
    xor a                                         ; $41f4: $af
    rst $30                                       ; $41f5: $f7
    dec bc                                        ; $41f6: $0b
    xor a                                         ; $41f7: $af
    ld e, a                                       ; $41f8: $5f
    ld l, e                                       ; $41f9: $6b
    rst $38                                       ; $41fa: $ff
    ld e, a                                       ; $41fb: $5f
    push hl                                       ; $41fc: $e5
    sub a                                         ; $41fd: $97
    rst $18                                       ; $41fe: $df
    cp a                                          ; $41ff: $bf
    sbc $7f                                       ; $4200: $de $7f
    cp a                                          ; $4202: $bf
    rst $38                                       ; $4203: $ff

Jump_073_4204:
    ld h, h                                       ; $4204: $64
    ld h, [hl]                                    ; $4205: $66
    inc h                                         ; $4206: $24
    xor h                                         ; $4207: $ac
    jp nc, Jump_000_00d2                          ; $4208: $d2 $d2 $00

    ld c, b                                       ; $420b: $48
    rst $38                                       ; $420c: $ff
    sbc b                                         ; $420d: $98
    sbc b                                         ; $420e: $98
    jr nz, jr_073_4235                            ; $420f: $20 $24

    add b                                         ; $4211: $80
    sub b                                         ; $4212: $90
    nop                                           ; $4213: $00
    ld b, b                                       ; $4214: $40
    rst $38                                       ; $4215: $ff
    db $f4                                        ; $4216: $f4
    ld [$deee], a                                 ; $4217: $ea $ee $de
    call $d0d5                                    ; $421a: $cd $d5 $d0
    cp d                                          ; $421d: $ba
    rst $38                                       ; $421e: $ff
    call c, $a9b4                                 ; $421f: $dc $b4 $a9
    ld a, l                                       ; $4222: $7d
    xor b                                         ; $4223: $a8
    ld d, c                                       ; $4224: $51
    ld [hl], h                                    ; $4225: $74
    db $e4                                        ; $4226: $e4
    adc $dc                                       ; $4227: $ce $dc
    ret nz                                        ; $4229: $c0

    ld [bc], a                                    ; $422a: $02
    ld bc, $8103                                  ; $422b: $01 $03 $81
    ret nz                                        ; $422e: $c0

    ld a, h                                       ; $422f: $7c
    ret nz                                        ; $4230: $c0

    dec b                                         ; $4231: $05
    ld a, [bc]                                    ; $4232: $0a
    rst $38                                       ; $4233: $ff
    dec bc                                        ; $4234: $0b

jr_073_4235:
    dec c                                         ; $4235: $0d
    cp e                                          ; $4236: $bb
    rst $38                                       ; $4237: $ff
    ccf                                           ; $4238: $3f
    xor a                                         ; $4239: $af
    ld a, a                                       ; $423a: $7f
    cp d                                          ; $423b: $ba
    rst $38                                       ; $423c: $ff
    ld a, a                                       ; $423d: $7f
    dec a                                         ; $423e: $3d
    rst $38                                       ; $423f: $ff
    ld a, a                                       ; $4240: $7f
    rst $18                                       ; $4241: $df
    db $fd                                        ; $4242: $fd
    rst $38                                       ; $4243: $ff
    db $eb                                        ; $4244: $eb
    rst $38                                       ; $4245: $ff
    db $fd                                        ; $4246: $fd
    rst $30                                       ; $4247: $f7
    rla                                           ; $4248: $17
    ld c, a                                       ; $4249: $4f
    rrca                                          ; $424a: $0f
    rla                                           ; $424b: $17
    cpl                                           ; $424c: $2f
    ld a, [de]                                    ; $424d: $1a
    rst $38                                       ; $424e: $ff
    cpl                                           ; $424f: $2f
    dec a                                         ; $4250: $3d
    rrca                                          ; $4251: $0f
    cpl                                           ; $4252: $2f
    ld e, a                                       ; $4253: $5f
    ld l, l                                       ; $4254: $6d
    ccf                                           ; $4255: $3f
    ld c, e                                       ; $4256: $4b
    rst $38                                       ; $4257: $ff
    dec a                                         ; $4258: $3d
    ld [hl], a                                    ; $4259: $77
    ei                                            ; $425a: $fb
    rst $38                                       ; $425b: $ff
    rst $38                                       ; $425c: $ff
    ld l, a                                       ; $425d: $6f
    rst $38                                       ; $425e: $ff
    ld a, [$ffff]                                 ; $425f: $fa $ff $ff
    xor l                                         ; $4262: $ad
    rst $38                                       ; $4263: $ff
    rst $18                                       ; $4264: $df
    rst $18                                       ; $4265: $df
    cp $fe                                        ; $4266: $fe $fe
    push af                                       ; $4268: $f5
    rst $38                                       ; $4269: $ff
    db $fc                                        ; $426a: $fc
    ld a, [c]                                     ; $426b: $f2
    nop                                           ; $426c: $00
    nop                                           ; $426d: $00
    ld [$0008], sp                                ; $426e: $08 $08 $00
    ld [$bbee], sp                                ; $4271: $08 $ee $bb
    pop hl                                        ; $4274: $e1
    dec h                                         ; $4275: $25
    daa                                           ; $4276: $27
    dec bc                                        ; $4277: $0b
    ld e, h                                       ; $4278: $5c
    ret nz                                        ; $4279: $c0

    dec d                                         ; $427a: $15
    xor $01                                       ; $427b: $ee $01
    rst $38                                       ; $427d: $ff
    cp e                                          ; $427e: $bb
    xor d                                         ; $427f: $aa
    ld a, l                                       ; $4280: $7d
    dec a                                         ; $4281: $3d
    rst $10                                       ; $4282: $d7
    adc e                                         ; $4283: $8b
    ld a, l                                       ; $4284: $7d
    ld d, [hl]                                    ; $4285: $56
    rst $38                                       ; $4286: $ff
    rst $38                                       ; $4287: $ff
    dec sp                                        ; $4288: $3b
    xor a                                         ; $4289: $af
    db $dd                                        ; $428a: $dd
    ld a, a                                       ; $428b: $7f
    cpl                                           ; $428c: $2f
    scf                                           ; $428d: $37
    ld e, a                                       ; $428e: $5f
    rst $18                                       ; $428f: $df
    ld h, a                                       ; $4290: $67
    sbc e                                         ; $4291: $9b
    rst $28                                       ; $4292: $ef
    ccf                                           ; $4293: $3f
    sbc e                                         ; $4294: $9b
    sub b                                         ; $4295: $90
    push bc                                       ; $4296: $c5
    add a                                         ; $4297: $87
    adc a                                         ; $4298: $8f
    ld a, a                                       ; $4299: $7f
    rla                                           ; $429a: $17
    rrca                                          ; $429b: $0f
    daa                                           ; $429c: $27
    rrca                                          ; $429d: $0f
    ld l, a                                       ; $429e: $6f
    cp a                                          ; $429f: $bf
    rra                                           ; $42a0: $1f
    scf                                           ; $42a1: $37
    ldh [$cd], a                                  ; $42a2: $e0 $cd
    cp a                                          ; $42a4: $bf
    inc sp                                        ; $42a5: $33
    ldh [rLCDC], a                                ; $42a6: $e0 $40
    ld b, b                                       ; $42a8: $40
    ld l, $c0                                     ; $42a9: $2e $c0
    ld e, h                                       ; $42ab: $5c
    ret nz                                        ; $42ac: $c0

    nop                                           ; $42ad: $00
    nop                                           ; $42ae: $00
    rst $38                                       ; $42af: $ff
    ld bc, $2001                                  ; $42b0: $01 $01 $20
    jr nz, jr_073_42b5                            ; $42b3: $20 $00

jr_073_42b5:
    nop                                           ; $42b5: $00
    sbc l                                         ; $42b6: $9d
    rst $38                                       ; $42b7: $ff
    rst $38                                       ; $42b8: $ff
    ld h, h                                       ; $42b9: $64
    db $ec                                        ; $42ba: $ec
    db $db                                        ; $42bb: $db
    ei                                            ; $42bc: $fb
    sub b                                         ; $42bd: $90
    jp c, Jump_073_4848                           ; $42be: $da $48 $48

    rst $38                                       ; $42c1: $ff
    ld sp, $8035                                  ; $42c2: $31 $35 $80
    sub c                                         ; $42c5: $91
    inc b                                         ; $42c6: $04
    ld b, h                                       ; $42c7: $44
    ld d, b                                       ; $42c8: $50
    ld [hl], d                                    ; $42c9: $72
    rst $38                                       ; $42ca: $ff
    ld h, h                                       ; $42cb: $64
    db $ec                                        ; $42cc: $ec
    sub e                                         ; $42cd: $93
    sub e                                         ; $42ce: $93
    jr nz, jr_073_433b                            ; $42cf: $20 $6a

    ret z                                         ; $42d1: $c8

    ret z                                         ; $42d2: $c8

    rst $38                                       ; $42d3: $ff
    inc h                                         ; $42d4: $24
    inc [hl]                                      ; $42d5: $34
    add b                                         ; $42d6: $80
    add b                                         ; $42d7: $80
    ld [bc], a                                    ; $42d8: $02
    ld [bc], a                                    ; $42d9: $02
    inc b                                         ; $42da: $04
    ld b, h                                       ; $42db: $44
    cp a                                          ; $42dc: $bf
    nop                                           ; $42dd: $00
    adc b                                         ; $42de: $88
    sub c                                         ; $42df: $91
    sub c                                         ; $42e0: $91
    nop                                           ; $42e1: $00
    ld c, d                                       ; $42e2: $4a
    adc d                                         ; $42e3: $8a
    ldh [rP1], a                                  ; $42e4: $e0 $00
    rst $38                                       ; $42e6: $ff
    ld b, b                                       ; $42e7: $40
    ld b, b                                       ; $42e8: $40
    inc b                                         ; $42e9: $04
    inc b                                         ; $42ea: $04
    xor h                                         ; $42eb: $ac
    xor [hl]                                      ; $42ec: $ae
    ld b, c                                       ; $42ed: $41
    ret                                           ; $42ee: $c9


    rst $38                                       ; $42ef: $ff
    sub d                                         ; $42f0: $92
    sub d                                         ; $42f1: $92
    inc h                                         ; $42f2: $24
    ld h, $11                                     ; $42f3: $26 $11

jr_073_42f5:
    ld de, $8080                                  ; $42f5: $11 $80 $80
    rst $38                                       ; $42f8: $ff

jr_073_42f9:
    inc h                                         ; $42f9: $24
    inc h                                         ; $42fa: $24
    add c                                         ; $42fb: $81
    add c                                         ; $42fc: $81
    ld [bc], a                                    ; $42fd: $02
    ld [bc], a                                    ; $42fe: $02
    add hl, bc                                    ; $42ff: $09
    dec e                                         ; $4300: $1d
    rst $38                                       ; $4301: $ff
    add l                                         ; $4302: $85
    rst $00                                       ; $4303: $c7
    ld [$221b], sp                                ; $4304: $08 $1b $22
    daa                                           ; $4307: $27
    rlca                                          ; $4308: $07
    xor [hl]                                      ; $4309: $ae
    xor a                                         ; $430a: $af
    rrca                                          ; $430b: $0f
    ld a, [de]                                    ; $430c: $1a
    inc de                                        ; $430d: $13
    ld h, l                                       ; $430e: $65
    jr nc, jr_073_42f5                            ; $430f: $30 $e4

    ld a, l                                       ; $4311: $7d
    jr nc, jr_073_42f9                            ; $4312: $30 $e5

    sub l                                         ; $4314: $95
    rst $38                                       ; $4315: $ff
    rst $38                                       ; $4316: $ff
    ld c, b                                       ; $4317: $48
    db $fc                                        ; $4318: $fc
    ld [hl], l                                    ; $4319: $75
    rst $30                                       ; $431a: $f7
    sbc h                                         ; $431b: $9c
    call c, Call_073_7f52                         ; $431c: $dc $52 $7f
    jp c, Jump_073_6504                           ; $431f: $da $04 $65

    ret nc                                        ; $4322: $d0

    ret c                                         ; $4323: $d8

    xor l                                         ; $4324: $ad
    db $ed                                        ; $4325: $ed
    adc h                                         ; $4326: $8c

Call_073_4327:
    ldh [$fa], a                                  ; $4327: $e0 $fa
    or b                                          ; $4329: $b0
    pop hl                                        ; $432a: $e1
    ld b, b                                       ; $432b: $40
    adc $a0                                       ; $432c: $ce $a0
    jr nz, @-$7a                                  ; $432e: $20 $84

    add h                                         ; $4330: $84
    nop                                           ; $4331: $00
    ld b, b                                       ; $4332: $40
    rst $38                                       ; $4333: $ff
    or [hl]                                       ; $4334: $b6
    cp a                                          ; $4335: $bf
    ld hl, sp-$11                                 ; $4336: $f8 $ef
    db $d3                                        ; $4338: $d3
    reti                                          ; $4339: $d9


    db $d3                                        ; $433a: $d3

jr_073_433b:
    cp a                                          ; $433b: $bf
    rst $38                                       ; $433c: $ff
    db $e4                                        ; $433d: $e4
    push af                                       ; $433e: $f5
    rra                                           ; $433f: $1f
    ld [hl], a                                    ; $4340: $77
    adc e                                         ; $4341: $8b
    rst $18                                       ; $4342: $df
    ld e, a                                       ; $4343: $5f
    cp a                                          ; $4344: $bf
    rst $38                                       ; $4345: $ff
    add sp, -$26                                  ; $4346: $e8 $da
    xor $de                                       ; $4348: $ee $de
    call nc, $d1ed                                ; $434a: $d4 $ed $d1
    db $ed                                        ; $434d: $ed
    rst $38                                       ; $434e: $ff
    sub $ee                                       ; $434f: $d6 $ee
    db $ec                                        ; $4351: $ec
    push de                                       ; $4352: $d5
    ldh [$fa], a                                  ; $4353: $e0 $fa
    jp hl                                         ; $4355: $e9


    db $dd                                        ; $4356: $dd
    rst $38                                       ; $4357: $ff
    ld d, b                                       ; $4358: $50
    cp b                                          ; $4359: $b8
    ld c, c                                       ; $435a: $49
    db $eb                                        ; $435b: $eb
    nop                                           ; $435c: $00
    ld d, h                                       ; $435d: $54
    sbc b                                         ; $435e: $98
    ld a, d                                       ; $435f: $7a
    rst $38                                       ; $4360: $ff
    xor d                                         ; $4361: $aa
    ld a, d                                       ; $4362: $7a
    cp b                                          ; $4363: $b8
    ld e, c                                       ; $4364: $59
    or b                                          ; $4365: $b0
    db $e4                                        ; $4366: $e4
    ld c, b                                       ; $4367: $48
    xor c                                         ; $4368: $a9
    rst $28                                       ; $4369: $ef
    jr nz, jr_073_438c                            ; $436a: $20 $20

    ld [$a888], sp                                ; $436c: $08 $88 $a8
    pop bc                                        ; $436f: $c1
    ld [$2008], sp                                ; $4370: $08 $08 $20
    rst $38                                       ; $4373: $ff
    jr nz, @-$7e                                  ; $4374: $20 $80

    sub b                                         ; $4376: $90
    db $10                                        ; $4377: $10
    ld e, b                                       ; $4378: $58
    inc b                                         ; $4379: $04
    ld b, $00                                     ; $437a: $06 $00
    rst $38                                       ; $437c: $ff
    ld [$1111], sp                                ; $437d: $08 $11 $11
    nop                                           ; $4380: $00
    ld a, [bc]                                    ; $4381: $0a
    ld [$2108], sp                                ; $4382: $08 $08 $21
    rst $38                                       ; $4385: $ff
    dec h                                         ; $4386: $25
    nop                                           ; $4387: $00
    ld de, $4404                                  ; $4388: $11 $04 $44
    inc de                                        ; $438b: $13

jr_073_438c:
    cpl                                           ; $438c: $2f
    ld l, a                                       ; $438d: $6f
    rst $38                                       ; $438e: $ff
    ld [hl], a                                    ; $438f: $77
    xor a                                         ; $4390: $af
    sbc d                                         ; $4391: $9a
    xor a                                         ; $4392: $af
    ld a, l                                       ; $4393: $7d
    ld c, a                                       ; $4394: $4f
    ld l, a                                       ; $4395: $6f
    ld e, a                                       ; $4396: $5f
    rst $38                                       ; $4397: $ff
    db $ed                                        ; $4398: $ed
    cp a                                          ; $4399: $bf
    res 3, l                                      ; $439a: $cb $9d
    rst $10                                       ; $439c: $d7
    and [hl]                                      ; $439d: $a6
    ld a, [$ff0a]                                 ; $439e: $fa $0a $ff
    db $fd                                        ; $43a1: $fd
    db $d3                                        ; $43a2: $d3
    ld l, e                                       ; $43a3: $6b
    cpl                                           ; $43a4: $2f
    push de                                       ; $43a5: $d5
    ld d, $bf                                     ; $43a6: $16 $bf
    xor e                                         ; $43a8: $ab
    ld a, a                                       ; $43a9: $7f
    adc $1f                                       ; $43aa: $ce $1f
    or a                                          ; $43ac: $b7
    db $ed                                        ; $43ad: $ed
    ld a, a                                       ; $43ae: $7f
    rst $38                                       ; $43af: $ff
    nop                                           ; $43b0: $00
    cp $eb                                        ; $43b1: $fe $eb
    rst $38                                       ; $43b3: $ff
    ld [hl+], a                                   ; $43b4: $22
    rst $18                                       ; $43b5: $df
    nop                                           ; $43b6: $00
    xor a                                         ; $43b7: $af
    ld d, b                                       ; $43b8: $50
    jp c, $fd25                                   ; $43b9: $da $25 $fd

jr_073_43bc:
    rst $38                                       ; $43bc: $ff
    ld b, d                                       ; $43bd: $42
    cp a                                          ; $43be: $bf
    ld [hl+], a                                   ; $43bf: $22
    db $fd                                        ; $43c0: $fd
    adc b                                         ; $43c1: $88
    db $eb                                        ; $43c2: $eb
    dec d                                         ; $43c3: $15
    rst $30                                       ; $43c4: $f7
    rst $38                                       ; $43c5: $ff
    push af                                       ; $43c6: $f5
    inc bc                                        ; $43c7: $03
    and $0e                                       ; $43c8: $e6 $0e
    ret c                                         ; $43ca: $d8

    add hl, de                                    ; $43cb: $19
    pop hl                                        ; $43cc: $e1
    daa                                           ; $43cd: $27
    rst $38                                       ; $43ce: $ff
    and [hl]                                      ; $43cf: $a6
    ld l, a                                       ; $43d0: $6f
    ret z                                         ; $43d1: $c8

    ld e, l                                       ; $43d2: $5d
    ld c, h                                       ; $43d3: $4c
    db $db                                        ; $43d4: $db
    sub b                                         ; $43d5: $90
    cp a                                          ; $43d6: $bf

jr_073_43d7:
    rst $38                                       ; $43d7: $ff
    db $fd                                        ; $43d8: $fd
    inc bc                                        ; $43d9: $03
    ld a, [$fa02]                                 ; $43da: $fa $02 $fa
    ld b, $f4                                     ; $43dd: $06 $f4
    dec b                                         ; $43df: $05

Call_073_43e0:
    rst $38                                       ; $43e0: $ff
    db $e4                                        ; $43e1: $e4
    dec c                                         ; $43e2: $0d
    reti                                          ; $43e3: $d9


    dec sp                                        ; $43e4: $3b
    ld h, d                                       ; $43e5: $62
    rst $20                                       ; $43e6: $e7
    add h                                         ; $43e7: $84
    sbc a                                         ; $43e8: $9f
    db $fd                                        ; $43e9: $fd
    jr z, jr_073_43bc                             ; $43ea: $28 $d0

    ldh [rP1], a                                  ; $43ec: $e0 $00
    jp c, $fd00                                   ; $43ee: $da $00 $fd

    inc b                                         ; $43f1: $04
    ei                                            ; $43f2: $fb
    rst $38                                       ; $43f3: $ff
    ld hl, $46ff                                  ; $43f4: $21 $ff $46
    and a                                         ; $43f7: $a7

jr_073_43f8:
    jr c, jr_073_43f8                             ; $43f8: $38 $fe

    ld c, a                                       ; $43fa: $4f
    add sp, -$02                                  ; $43fb: $e8 $fe
    cp $e1                                        ; $43fd: $fe $e1
    sub a                                         ; $43ff: $97
    ret c                                         ; $4400: $d8

    sub a                                         ; $4401: $97
    ret nc                                        ; $4402: $d0

    cpl                                           ; $4403: $2f
    or b                                          ; $4404: $b0
    ld e, a                                       ; $4405: $5f
    rst $30                                       ; $4406: $f7
    ld h, b                                       ; $4407: $60
    sbc a                                         ; $4408: $9f
    ret nz                                        ; $4409: $c0

    and b                                         ; $440a: $a0
    push hl                                       ; $440b: $e5
    cp $01                                        ; $440c: $fe $01
    pop af                                        ; $440e: $f1
    inc bc                                        ; $440f: $03
    rst $38                                       ; $4410: $ff
    and $0f                                       ; $4411: $e6 $0f
    cp b                                          ; $4413: $b8
    ld a, [hl]                                    ; $4414: $7e
    ret z                                         ; $4415: $c8

    ld l, a                                       ; $4416: $6f
    jp z, $ff6d                                   ; $4417: $ca $6d $ff

    ld c, b                                       ; $441a: $48
    ld [$dd90], a                                 ; $441b: $ea $90 $dd
    sub b                                         ; $441e: $90
    rst $18                                       ; $441f: $df
    jr z, jr_073_43d7                             ; $4420: $28 $b5

    cp a                                          ; $4422: $bf
    ld b, b                                       ; $4423: $40
    ld l, e                                       ; $4424: $6b
    add b                                         ; $4425: $80
    rst $30                                       ; $4426: $f7
    rst $38                                       ; $4427: $ff
    nop                                           ; $4428: $00
    xor [hl]                                      ; $4429: $ae
    ldh [$03], a                                  ; $442a: $e0 $03
    cp $ae                                        ; $442c: $fe $ae
    ldh [$0d], a                                  ; $442e: $e0 $0d
    ret                                           ; $4430: $c9


    dec de                                        ; $4431: $1b
    or d                                          ; $4432: $b2
    ld [hl], a                                    ; $4433: $77
    call nz, $ff6f                                ; $4434: $c4 $6f $ff
    ret                                           ; $4437: $c9


    dec c                                         ; $4438: $0d
    jp nc, $d21b                                  ; $4439: $d2 $1b $d2

    dec sp                                        ; $443c: $3b
    db $e4                                        ; $443d: $e4
    scf                                           ; $443e: $37
    rst $38                                       ; $443f: $ff
    db $e4                                        ; $4440: $e4
    scf                                           ; $4441: $37
    and [hl]                                      ; $4442: $a6
    ld [hl], l                                    ; $4443: $75
    ret z                                         ; $4444: $c8

    ld l, a                                       ; $4445: $6f
    ret z                                         ; $4446: $c8

    ld l, a                                       ; $4447: $6f
    db $fd                                        ; $4448: $fd
    ld sp, hl                                     ; $4449: $f9
    add b                                         ; $444a: $80
    pop hl                                        ; $444b: $e1
    add hl, sp                                    ; $444c: $39
    pop hl                                        ; $444d: $e1
    rst $20                                       ; $444e: $e7
    ld b, $1f                                     ; $444f: $06 $1f
    add hl, de                                    ; $4451: $19
    rst $38                                       ; $4452: $ff
    rst $38                                       ; $4453: $ff
    ld [c], a                                     ; $4454: $e2
    db $fd                                        ; $4455: $fd
    db $10                                        ; $4456: $10
    ld a, [$00fb]                                 ; $4457: $fa $fb $00
    rst $30                                       ; $445a: $f7
    rst $38                                       ; $445b: $ff
    rlca                                          ; $445c: $07
    ret c                                         ; $445d: $d8

    rra                                           ; $445e: $1f

jr_073_445f:
    ldh [$78], a                                  ; $445f: $e0 $78
    add a                                         ; $4461: $87
    rst $20                                       ; $4462: $e7
    ld a, [de]                                    ; $4463: $1a
    sbc a                                         ; $4464: $9f
    sbc l                                         ; $4465: $9d
    ld h, b                                       ; $4466: $60
    ld a, d                                       ; $4467: $7a
    add b                                         ; $4468: $80
    db $fd                                        ; $4469: $fd
    jp nc, $d0e0                                  ; $446a: $d2 $e0 $d0

    pop hl                                        ; $446d: $e1
    rst $30                                       ; $446e: $f7
    rst $38                                       ; $446f: $ff
    inc b                                         ; $4470: $04
    rst $28                                       ; $4471: $ef
    jr jr_073_4491                                ; $4472: $18 $1d

    ldh [$ef], a                                  ; $4474: $e0 $ef
    nop                                           ; $4476: $00
    rst $10                                       ; $4477: $d7
    cp $e0                                        ; $4478: $fe $e0
    ldh [rIF], a                                  ; $447a: $e0 $0f
    ret c                                         ; $447c: $d8

    jr c, jr_073_445f                             ; $447d: $38 $e0

    scf                                           ; $447f: $37
    and a                                         ; $4480: $a7
    ld l, a                                       ; $4481: $6f
    rst $38                                       ; $4482: $ff
    ret z                                         ; $4483: $c8

    ld e, a                                       ; $4484: $5f
    ret z                                         ; $4485: $c8

    ld e, d                                       ; $4486: $5a
    ret z                                         ; $4487: $c8

    ld e, l                                       ; $4488: $5d
    nop                                           ; $4489: $00
    rst $38                                       ; $448a: $ff
    rst $38                                       ; $448b: $ff
    db $10                                        ; $448c: $10
    ld a, [$ad00]                                 ; $448d: $fa $00 $ad
    nop                                           ; $4490: $00

jr_073_4491:
    rst $18                                       ; $4491: $df
    db $e4                                        ; $4492: $e4
    rst $38                                       ; $4493: $ff

jr_073_4494:
    cp a                                          ; $4494: $bf
    jr jr_073_4494                                ; $4495: $18 $fd

jr_073_4497:
    inc b                                         ; $4497: $04
    rra                                           ; $4498: $1f
    ld [c], a                                     ; $4499: $e2
    rst $20                                       ; $449a: $e7
    db $10                                        ; $449b: $10
    push hl                                       ; $449c: $e5
    rst $28                                       ; $449d: $ef
    rst $38                                       ; $449e: $ff
    ldh a, [rNR31]                                ; $449f: $f0 $1b
    db $fc                                        ; $44a1: $fc
    dec b                                         ; $44a2: $05
    ld e, $e3                                     ; $44a3: $1e $e3

jr_073_44a5:
    and $4f                                       ; $44a5: $e6 $4f
    rst $38                                       ; $44a7: $ff
    add sp, -$71                                  ; $44a8: $e8 $8f
    ret z                                         ; $44aa: $c8

    cpl                                           ; $44ab: $2f
    sbc b                                         ; $44ac: $98
    rla                                           ; $44ad: $17
    jr c, jr_073_4497                             ; $44ae: $38 $e7

    db $fd                                        ; $44b0: $fd
    ldh a, [$f6]                                  ; $44b1: $f0 $f6
    jp Jump_073_6fc8                              ; $44b3: $c3 $c8 $6f


    ld [$48cd], a                                 ; $44b6: $ea $cd $48
    sbc d                                         ; $44b9: $9a
    rst $38                                       ; $44ba: $ff
    db $10                                        ; $44bb: $10
    dec a                                         ; $44bc: $3d
    ldh [rIE], a                                  ; $44bd: $e0 $ff
    jr nz, @-$01                                  ; $44bf: $20 $fd

    ld [de], a                                    ; $44c1: $12
    db $eb                                        ; $44c2: $eb
    rst $38                                       ; $44c3: $ff
    nop                                           ; $44c4: $00
    rst $30                                       ; $44c5: $f7
    sub e                                         ; $44c6: $93
    cp b                                          ; $44c7: $b8
    cpl                                           ; $44c8: $2f
    ld h, b                                       ; $44c9: $60
    ld e, a                                       ; $44ca: $5f
    ret nz                                        ; $44cb: $c0

    cp $38                                        ; $44cc: $fe $38
    rst $20                                       ; $44ce: $e7
    ld [$309f], sp                                ; $44cf: $08 $9f $30
    ld a, a                                       ; $44d2: $7f
    ld d, b                                       ; $44d3: $50
    ld l, d                                       ; $44d4: $6a
    ld b, h                                       ; $44d5: $44
    ccf                                           ; $44d6: $3f
    db $fd                                        ; $44d7: $fd
    add b                                         ; $44d8: $80
    rst $38                                       ; $44d9: $ff
    jr z, @-$09                                   ; $44da: $28 $f5

    nop                                           ; $44dc: $00
    ldh [$e0], a                                  ; $44dd: $e0 $e0
    ret nz                                        ; $44df: $c0

    jp $fcff                                      ; $44e0: $c3 $ff $fc


    ld bc, $07e3                                  ; $44e3: $01 $e3 $07
    sbc h                                         ; $44e6: $9c
    inc a                                         ; $44e7: $3c
    ld h, b                                       ; $44e8: $60
    db $e3                                        ; $44e9: $e3
    db $eb                                        ; $44ea: $eb
    add e                                         ; $44eb: $83
    sbc a                                         ; $44ec: $9f

jr_073_44ed:
    ld d, b                                       ; $44ed: $50
    pop hl                                        ; $44ee: $e1

jr_073_44ef:
    sbc b                                         ; $44ef: $98
    ld d, b                                       ; $44f0: $50
    ld [c], a                                     ; $44f1: $e2
    jr jr_073_44ef                                ; $44f2: $18 $fb

    ld [c], a                                     ; $44f4: $e2
    rst $38                                       ; $44f5: $ff
    push af                                       ; $44f6: $f5
    nop                                           ; $44f7: $00
    rst $38                                       ; $44f8: $ff
    cp $01                                        ; $44f9: $fe $01
    rst $20                                       ; $44fb: $e7
    rrca                                          ; $44fc: $0f
    ret c                                         ; $44fd: $d8

    ld a, a                                       ; $44fe: $7f
    ccf                                           ; $44ff: $3f
    ld h, b                                       ; $4500: $60
    ld hl, sp-$79                                 ; $4501: $f8 $87
    rst $20                                       ; $4503: $e7
    jr jr_073_44a5                                ; $4504: $18 $9f

    ld d, b                                       ; $4506: $50
    pop hl                                        ; $4507: $e1
    rst $38                                       ; $4508: $ff
    pop bc                                        ; $4509: $c1
    ld sp, hl                                     ; $450a: $f9
    ld b, $c7                                     ; $450b: $06 $c7
    jr c, jr_073_4549                             ; $450d: $38 $3a

    ret nz                                        ; $450f: $c0

    db $dd                                        ; $4510: $dd
    rst $28                                       ; $4511: $ef
    inc b                                         ; $4512: $04

jr_073_4513:
    ei                                            ; $4513: $fb
    jr nz, jr_073_4513                            ; $4514: $20 $fd

    ret nz                                        ; $4516: $c0

    push hl                                       ; $4517: $e5
    cp $01                                        ; $4518: $fe $01
    rst $38                                       ; $451a: $ff
    ei                                            ; $451b: $fb
    ld bc, $faf9                                  ; $451c: $01 $f9 $fa

jr_073_451f:
    pop bc                                        ; $451f: $c1
    rlca                                          ; $4520: $07
    db $f4                                        ; $4521: $f4
    ld b, $48                                     ; $4522: $06 $48
    rst $28                                       ; $4524: $ef
    rst $38                                       ; $4525: $ff
    sub b                                         ; $4526: $90
    jp c, $dd90                                   ; $4527: $da $90 $dd

    inc h                                         ; $452a: $24
    xor e                                         ; $452b: $ab
    jr nz, jr_073_44ed                            ; $452c: $20 $bf

    di                                            ; $452e: $f3
    ld d, b                                       ; $452f: $50
    ld a, l                                       ; $4530: $7d
    ldh [$c3], a                                  ; $4531: $e0 $c3
    ld e, [hl]                                    ; $4533: $5e
    jp $0fe7                                      ; $4534: $c3 $e7 $0f


    sbc b                                         ; $4537: $98
    jr c, @+$01                                   ; $4538: $38 $ff

    ld h, b                                       ; $453a: $60
    rst $20                                       ; $453b: $e7
    add a                                         ; $453c: $87
    sbc a                                         ; $453d: $9f
    ld [$00ff], sp                                ; $453e: $08 $ff $00
    xor a                                         ; $4541: $af
    rst $38                                       ; $4542: $ff

jr_073_4543:
    jr nz, jr_073_451f                            ; $4543: $20 $da

    ld b, b                                       ; $4545: $40
    db $ed                                        ; $4546: $ed
    rlca                                          ; $4547: $07
    rst $38                                       ; $4548: $ff

jr_073_4549:
    jr jr_073_4543                                ; $4549: $18 $f8

    cp [hl]                                       ; $454b: $be
    ldh a, [$e1]                                  ; $454c: $f0 $e1
    dec bc                                        ; $454e: $0b
    sbc h                                         ; $454f: $9c
    inc sp                                        ; $4550: $33
    ld a, b                                       ; $4551: $78
    ld b, a                                       ; $4552: $47
    ld e, [hl]                                    ; $4553: $5e
    ldh [$bf], a                                  ; $4554: $e0 $bf
    rst $30                                       ; $4556: $f7
    ret nz                                        ; $4557: $c0

    ld a, a                                       ; $4558: $7f
    add b                                         ; $4559: $80
    inc [hl]                                      ; $455a: $34
    pop bc                                        ; $455b: $c1
    sub b                                         ; $455c: $90
    or a                                          ; $455d: $b7
    inc h                                         ; $455e: $24
    ld l, a                                       ; $455f: $6f
    rst $38                                       ; $4560: $ff
    ld b, h                                       ; $4561: $44
    ei                                            ; $4562: $fb
    add b                                         ; $4563: $80
    rst $38                                       ; $4564: $ff
    ld b, b                                       ; $4565: $40
    cp a                                          ; $4566: $bf
    ld [bc], a                                    ; $4567: $02
    ld e, e                                       ; $4568: $5b
    db $fd                                        ; $4569: $fd
    ld [hl+], a                                   ; $456a: $22
    add b                                         ; $456b: $80
    ldh [$a5], a                                  ; $456c: $e0 $a5
    ld e, d                                       ; $456e: $5a
    ld d, b                                       ; $456f: $50
    xor l                                         ; $4570: $ad
    sbc d                                         ; $4571: $9a
    ld h, l                                       ; $4572: $65
    rst $38                                       ; $4573: $ff
    dec h                                         ; $4574: $25
    jp c, $15aa                                   ; $4575: $da $aa $15

    ld d, l                                       ; $4578: $55
    xor d                                         ; $4579: $aa
    ld l, b                                       ; $457a: $68
    db $d3                                        ; $457b: $d3
    rst $38                                       ; $457c: $ff
    sbc d                                         ; $457d: $9a
    ld h, l                                       ; $457e: $65
    ld e, e                                       ; $457f: $5b
    rst $38                                       ; $4580: $ff
    xor a                                         ; $4581: $af
    rst $38                                       ; $4582: $ff
    ld h, a                                       ; $4583: $67
    rst $38                                       ; $4584: $ff
    cp $a0                                        ; $4585: $fe $a0
    ld h, e                                       ; $4587: $63
    db $d3                                        ; $4588: $d3
    db $fd                                        ; $4589: $fd
    ld l, l                                       ; $458a: $6d
    rst $38                                       ; $458b: $ff
    ld c, b                                       ; $458c: $48
    rst $08                                       ; $458d: $cf
    ld c, b                                       ; $458e: $48
    rst $38                                       ; $458f: $ff
    rst $18                                       ; $4590: $df
    sub h                                         ; $4591: $94
    cp c                                          ; $4592: $b9
    sub b                                         ; $4593: $90
    cp e                                          ; $4594: $bb
    sub b                                         ; $4595: $90
    cp a                                          ; $4596: $bf
    ld d, b                                       ; $4597: $50
    rst $38                                       ; $4598: $ff
    db $fd                                        ; $4599: $fd
    ld c, b                                       ; $459a: $48
    rst $18                                       ; $459b: $df
    ld c, d                                       ; $459c: $4a
    rst $08                                       ; $459d: $cf
    sub b                                         ; $459e: $90
    sbc a                                         ; $459f: $9f
    sub b                                         ; $45a0: $90
    rst $38                                       ; $45a1: $ff
    rst $18                                       ; $45a2: $df
    ld c, b                                       ; $45a3: $48
    ld [$6d4a], a                                 ; $45a4: $ea $4a $6d
    ld c, b                                       ; $45a7: $48
    ld l, a                                       ; $45a8: $6f
    ld d, b                                       ; $45a9: $50
    rst $38                                       ; $45aa: $ff
    push af                                       ; $45ab: $f5
    sub b                                         ; $45ac: $90
    rst $10                                       ; $45ad: $d7
    sub d                                         ; $45ae: $92
    sub a                                         ; $45af: $97
    ld c, e                                       ; $45b0: $4b
    ret z                                         ; $45b1: $c8

    ld c, e                                       ; $45b2: $4b
    rst $38                                       ; $45b3: $ff
    ret c                                         ; $45b4: $d8

    sub a                                         ; $45b5: $97
    cp b                                          ; $45b6: $b8
    sub a                                         ; $45b7: $97
    or b                                          ; $45b8: $b0
    sub a                                         ; $45b9: $97
    or b                                          ; $45ba: $b0
    ld d, a                                       ; $45bb: $57
    rst $38                                       ; $45bc: $ff
    ret c                                         ; $45bd: $d8

    ld c, e                                       ; $45be: $4b
    ret c                                         ; $45bf: $d8

    ld c, e                                       ; $45c0: $4b
    ret z                                         ; $45c1: $c8

    sub a                                         ; $45c2: $97
    sub b                                         ; $45c3: $90
    sub a                                         ; $45c4: $97
    db $fd                                        ; $45c5: $fd
    ret c                                         ; $45c6: $d8

    inc e                                         ; $45c7: $1c
    ret nz                                        ; $45c8: $c0

    ld l, b                                       ; $45c9: $68
    ld c, a                                       ; $45ca: $4f
    ld l, b                                       ; $45cb: $68
    ld d, a                                       ; $45cc: $57
    ld hl, sp-$61                                 ; $45cd: $f8 $9f
    rst $30                                       ; $45cf: $f7
    ret nc                                        ; $45d0: $d0

    sbc a                                         ; $45d1: $9f
    sub b                                         ; $45d2: $90
    ret nz                                        ; $45d3: $c0

    and e                                         ; $45d4: $a3
    cp l                                          ; $45d5: $bd
    ld a, [hl]                                    ; $45d6: $7e
    jp $9fff                                      ; $45d7: $c3 $ff $9f


    nop                                           ; $45da: $00
    jp Jump_000_3c3c                              ; $45db: $c3 $3c $3c


    jp $e0f9                                      ; $45de: $c3 $f9 $e0


    ld d, d                                       ; $45e1: $52
    ld [c], a                                     ; $45e2: $e2
    halt                                          ; $45e3: $76
    ld a, a                                       ; $45e4: $7f
    sbc c                                         ; $45e5: $99
    rst $38                                       ; $45e6: $ff
    nop                                           ; $45e7: $00
    sbc c                                         ; $45e8: $99
    ld h, [hl]                                    ; $45e9: $66
    ld h, [hl]                                    ; $45ea: $66
    sbc c                                         ; $45eb: $99
    ld d, b                                       ; $45ec: $50
    ldh [$bf], a                                  ; $45ed: $e0 $bf
    ld [bc], a                                    ; $45ef: $02
    xor l                                         ; $45f0: $ad
    ld [bc], a                                    ; $45f1: $02
    jp c, $fd3c                                   ; $45f2: $da $3c $fd

    ldh [$e4], a                                  ; $45f5: $e0 $e4
    ei                                            ; $45f7: $fb
    cp [hl]                                       ; $45f8: $be
    ldh a, [$e0]                                  ; $45f9: $f0 $e0
    xor a                                         ; $45fb: $af
    nop                                           ; $45fc: $00
    reti                                          ; $45fd: $d9


    halt                                          ; $45fe: $76
    rst $28                                       ; $45ff: $ef
    ldh [$e4], a                                  ; $4600: $e0 $e4
    rst $18                                       ; $4602: $df
    rst $38                                       ; $4603: $ff
    ld bc, $0603                                  ; $4604: $01 $03 $06
    ld c, $1c                                     ; $4607: $0e $1c
    add hl, sp                                    ; $4609: $39
    ld sp, hl                                     ; $460a: $f9
    rst $20                                       ; $460b: $e7
    ld a, l                                       ; $460c: $7d
    ld h, $d0                                     ; $460d: $26 $d0
    call nz, Call_073_781b                        ; $460f: $c4 $1b $78
    ld h, a                                       ; $4612: $67
    ldh [$df], a                                  ; $4613: $e0 $df
    ld [hl], $e2                                  ; $4615: $36 $e2
    cp $66                                        ; $4617: $fe $66
    and e                                         ; $4619: $a3
    ld d, b                                       ; $461a: $50
    xor a                                         ; $461b: $af
    dec h                                         ; $461c: $25
    jp c, $b807                                   ; $461d: $da $07 $b8

    rlca                                          ; $4620: $07
    rst $38                                       ; $4621: $ff
    db $fd                                        ; $4622: $fd
    and d                                         ; $4623: $a2
    ld e, a                                       ; $4624: $5f
    ldh [rNR22], a                                ; $4625: $e0 $17
    push hl                                       ; $4627: $e5
    cp d                                          ; $4628: $ba
    ld b, d                                       ; $4629: $42
    rst $18                                       ; $462a: $df
    db $fd                                        ; $462b: $fd
    db $fd                                        ; $462c: $fd
    db $fd                                        ; $462d: $fd
    rst $18                                       ; $462e: $df
    rst $38                                       ; $462f: $ff
    db $fc                                        ; $4630: $fc
    ld h, b                                       ; $4631: $60
    rst $38                                       ; $4632: $ff
    ld a, l                                       ; $4633: $7d
    rst $30                                       ; $4634: $f7
    rst $38                                       ; $4635: $ff
    rst $28                                       ; $4636: $ef
    rst $28                                       ; $4637: $ef
    halt                                          ; $4638: $76
    ld h, b                                       ; $4639: $60
    rst $38                                       ; $463a: $ff
    xor l                                         ; $463b: $ad
    rst $28                                       ; $463c: $ef
    halt                                          ; $463d: $76
    ei                                            ; $463e: $fb
    rst $38                                       ; $463f: $ff
    and $ee                                       ; $4640: $e6 $ee
    ldh [$e4], a                                  ; $4642: $e0 $e4
    db $eb                                        ; $4644: $eb
    ld [hl], h                                    ; $4645: $74

Jump_073_4646:
    rst $30                                       ; $4646: $f7
    ld c, b                                       ; $4647: $48
    rst $38                                       ; $4648: $ff
    rst $38                                       ; $4649: $ff
    add b                                         ; $464a: $80
    cp e                                          ; $464b: $bb
    db $eb                                        ; $464c: $eb
    rst $38                                       ; $464d: $ff
    ld a, h                                       ; $464e: $7c
    rst $38                                       ; $464f: $ff
    ld d, b                                       ; $4650: $50
    rst $30                                       ; $4651: $f7
    rst $10                                       ; $4652: $d7
    xor h                                         ; $4653: $ac
    db $eb                                        ; $4654: $eb
    ld h, a                                       ; $4655: $67
    pop hl                                        ; $4656: $e1
    ld b, b                                       ; $4657: $40
    or l                                          ; $4658: $b5
    nop                                           ; $4659: $00
    ei                                            ; $465a: $fb
    rst $38                                       ; $465b: $ff
    ld bc, $02ff                                  ; $465c: $01 $ff $02
    rst $10                                       ; $465f: $d7
    db $10                                        ; $4660: $10
    db $ed                                        ; $4661: $ed
    dec b                                         ; $4662: $05
    rst $38                                       ; $4663: $ff
    rst $38                                       ; $4664: $ff
    inc bc                                        ; $4665: $03
    rst $38                                       ; $4666: $ff
    ld a, [hl+]                                   ; $4667: $2a
    jp c, $bd08                                   ; $4668: $da $08 $bd

    dec d                                         ; $466b: $15
    rst $38                                       ; $466c: $ff
    rst $38                                       ; $466d: $ff
    ld c, $ff                                     ; $466e: $0e $ff
    ld b, l                                       ; $4670: $45
    rst $30                                       ; $4671: $f7
    ld a, [bc]                                    ; $4672: $0a
    cp $25                                        ; $4673: $fe $25
    rst $28                                       ; $4675: $ef
    rst $38                                       ; $4676: $ff
    sbc e                                         ; $4677: $9b
    rst $30                                       ; $4678: $f7
    ld e, $ff                                     ; $4679: $1e $ff
    halt                                          ; $467b: $76
    cp [hl]                                       ; $467c: $be
    db $db                                        ; $467d: $db
    rst $38                                       ; $467e: $ff
    rst $38                                       ; $467f: $ff
    cp $ff                                        ; $4680: $fe $ff
    push af                                       ; $4682: $f5
    push af                                       ; $4683: $f5
    ld l, b                                       ; $4684: $68
    rst $28                                       ; $4685: $ef
    call nc, $ffff                                ; $4686: $d4 $ff $ff

jr_073_4689:
    cp b                                          ; $4689: $b8
    xor a                                         ; $468a: $af
    ret nc                                        ; $468b: $d0

    jp c, $fda5                                   ; $468c: $da $a5 $fd

    ld d, d                                       ; $468f: $52
    rst $38                                       ; $4690: $ff
    rst $38                                       ; $4691: $ff
    ld [bc], a                                    ; $4692: $02
    ei                                            ; $4693: $fb
    ld b, l                                       ; $4694: $45
    xor a                                         ; $4695: $af
    ld d, [hl]                                    ; $4696: $56
    jp c, $fe22                                   ; $4697: $da $22 $fe

    rst $38                                       ; $469a: $ff
    dec b                                         ; $469b: $05
    rst $38                                       ; $469c: $ff
    ld h, $fd                                     ; $469d: $26 $fd
    inc bc                                        ; $469f: $03
    cp e                                          ; $46a0: $bb
    ld bc, $fffd                                  ; $46a1: $01 $fd $ff
    cp c                                          ; $46a4: $b9
    ei                                            ; $46a5: $fb
    ld [hl], h                                    ; $46a6: $74
    rst $10                                       ; $46a7: $d7
    ld a, [hl+]                                   ; $46a8: $2a
    db $ed                                        ; $46a9: $ed
    ld [bc], a                                    ; $46aa: $02
    rst $38                                       ; $46ab: $ff
    ei                                            ; $46ac: $fb
    jr nz, jr_073_4689                            ; $46ad: $20 $da

    cp d                                          ; $46af: $ba
    and c                                         ; $46b0: $a1
    nop                                           ; $46b1: $00

jr_073_46b2:
    ei                                            ; $46b2: $fb
    call c, $faff                                 ; $46b3: $dc $ff $fa
    rst $38                                       ; $46b6: $ff
    ei                                            ; $46b7: $fb
    db $f4                                        ; $46b8: $f4
    rst $38                                       ; $46b9: $ff
    and $eb                                       ; $46ba: $e6 $eb
    db $f4                                        ; $46bc: $f4
    rst $30                                       ; $46bd: $f7
    ld l, b                                       ; $46be: $68
    rst $28                                       ; $46bf: $ef
    rst $38                                       ; $46c0: $ff
    jp nc, $e8ff                                  ; $46c1: $d2 $ff $e8

    pop af                                        ; $46c4: $f1
    ld b, b                                       ; $46c5: $40
    ld a, [$adfe]                                 ; $46c6: $fa $fe $ad
    ccf                                           ; $46c9: $3f
    db $fd                                        ; $46ca: $fd
    ld e, e                                       ; $46cb: $5b
    rst $18                                       ; $46cc: $df

jr_073_46cd:
    adc b                                         ; $46cd: $88

jr_073_46ce:
    push af                                       ; $46ce: $f5
    db $10                                        ; $46cf: $10
    or l                                          ; $46d0: $b5
    add d                                         ; $46d1: $82
    ld d, [hl]                                    ; $46d2: $56
    ret nz                                        ; $46d3: $c0

    rst $38                                       ; $46d4: $ff
    jr jr_073_46b2                                ; $46d5: $18 $db

    inc a                                         ; $46d7: $3c
    and l                                         ; $46d8: $a5
    ld a, [hl]                                    ; $46d9: $7e
    jp $c366                                      ; $46da: $c3 $66 $c3


    rst $30                                       ; $46dd: $f7
    ld h, [hl]                                    ; $46de: $66

jr_073_46df:
    sbc c                                         ; $46df: $99
    ld b, d                                       ; $46e0: $42
    and d                                         ; $46e1: $a2
    add c                                         ; $46e2: $81
    or a                                          ; $46e3: $b7
    ld a, b                                       ; $46e4: $78
    adc e                                         ; $46e5: $8b
    inc a                                         ; $46e6: $3c
    rst $38                                       ; $46e7: $ff
    push bc                                       ; $46e8: $c5
    ld c, $c5                                     ; $46e9: $0e $c5
    ld c, $8b                                     ; $46eb: $0e $8b
    inc a                                         ; $46ed: $3c
    or a                                          ; $46ee: $b7
    ld a, b                                       ; $46ef: $78
    cp $92                                        ; $46f0: $fe $92
    add c                                         ; $46f2: $81
    rst $18                                       ; $46f3: $df
    ld a, $e7                                     ; $46f4: $3e $e7
    ld a, [hl]                                    ; $46f6: $7e
    inc bc                                        ; $46f7: $03
    adc $33                                       ; $46f8: $ce $33
    ld a, a                                       ; $46fa: $7f
    add [hl]                                      ; $46fb: $86
    push af                                       ; $46fc: $f5
    ld b, $e7                                     ; $46fd: $06 $e7
    inc c                                         ; $46ff: $0c
    rst $20                                       ; $4700: $e7
    jr jr_073_4779                                ; $4701: $18 $76

    and b                                         ; $4703: $a0
    rst $38                                       ; $4704: $ff
    db $10                                        ; $4705: $10
    rst $10                                       ; $4706: $d7
    jr c, @-$53                                   ; $4707: $38 $ab

    ld a, h                                       ; $4709: $7c
    rst $00                                       ; $470a: $c7
    ld l, h                                       ; $470b: $6c
    sub e                                         ; $470c: $93
    db $fd                                        ; $470d: $fd
    ld b, h                                       ; $470e: $44
    ld [hl], h                                    ; $470f: $74
    add l                                         ; $4710: $85
    rst $10                                       ; $4711: $d7
    jr c, jr_073_46df                             ; $4712: $38 $cb

    inc e                                         ; $4714: $1c
    push hl                                       ; $4715: $e5
    ld c, $ef                                     ; $4716: $0e $ef
    rr h                                          ; $4718: $cb $1c
    rst $10                                       ; $471a: $d7
    jr c, jr_073_477f                             ; $471b: $38 $62

    add h                                         ; $471d: $84
    inc a                                         ; $471e: $3c
    add a                                         ; $471f: $87
    ld a, h                                       ; $4720: $7c
    db $e3                                        ; $4721: $e3

jr_073_4722:
    rst $30                                       ; $4722: $f7
    inc c                                         ; $4723: $0c
    cp $e0                                        ; $4724: $fe $e0
    inc bc                                        ; $4726: $03
    ret nz                                        ; $4727: $c0

    ld b, h                                       ; $4728: $44
    and d                                         ; $4729: $a2
    db $10                                        ; $472a: $10
    rst $28                                       ; $472b: $ef
    jr jr_073_46cd                                ; $472c: $18 $9f

    rst $30                                       ; $472e: $f7
    inc c                                         ; $472f: $0c
    rst $28                                       ; $4730: $ef
    jr jr_073_4722                                ; $4731: $18 $ef

    adc l                                         ; $4733: $8d
    db $e3                                        ; $4734: $e3
    dec e                                         ; $4735: $1d
    and b                                         ; $4736: $a0
    rst $28                                       ; $4737: $ef
    rst $30                                       ; $4738: $f7
    jr c, jr_073_46ce                             ; $4739: $38 $93

    ld l, h                                       ; $473b: $6c
    ld [hl], $87                                  ; $473c: $36 $87
    rst $08                                       ; $473e: $cf
    inc a                                         ; $473f: $3c
    rst $38                                       ; $4740: $ff
    inc b                                         ; $4741: $04
    ld a, c                                       ; $4742: $79
    ei                                            ; $4743: $fb
    cp $e0                                        ; $4744: $fe $e0
    inc h                                         ; $4746: $24
    add c                                         ; $4747: $81
    ldh a, [rSB]                                  ; $4748: $f0 $01
    rst $20                                       ; $474a: $e7
    rra                                           ; $474b: $1f
    add b                                         ; $474c: $80
    and h                                         ; $474d: $a4
    rst $18                                       ; $474e: $df
    sbc h                                         ; $474f: $9c
    ld h, b                                       ; $4750: $60
    ld a, b                                       ; $4751: $78
    add b                                         ; $4752: $80
    ret c                                         ; $4753: $d8

    add b                                         ; $4754: $80
    and b                                         ; $4755: $a0
    add $38                                       ; $4756: $c6 $38
    rst $38                                       ; $4758: $ff
    inc a                                         ; $4759: $3c
    ret nz                                        ; $475a: $c0

    db $fc                                        ; $475b: $fc
    nop                                           ; $475c: $00
    and h                                         ; $475d: $a4
    nop                                           ; $475e: $00
    inc h                                         ; $475f: $24
    nop                                           ; $4760: $00
    rst $38                                       ; $4761: $ff
    jr jr_073_4764                                ; $4762: $18 $00

jr_073_4764:
    jr jr_073_476f                                ; $4764: $18 $09

    dec e                                         ; $4766: $1d
    ld d, $1a                                     ; $4767: $16 $1a
    ld d, $ff                                     ; $4769: $16 $ff
    ccf                                           ; $476b: $3f
    ld l, h                                       ; $476c: $6c
    ld [hl], l                                    ; $476d: $75
    sbc h                                         ; $476e: $9c

jr_073_476f:
    rst $20                                       ; $476f: $e7
    ld a, d                                       ; $4770: $7a
    sbc l                                         ; $4771: $9d
    ld h, b                                       ; $4772: $60
    rst $38                                       ; $4773: $ff
    ld l, a                                       ; $4774: $6f
    add b                                         ; $4775: $80
    cp a                                          ; $4776: $bf
    add hl, bc                                    ; $4777: $09
    dec e                                         ; $4778: $1d

jr_073_4779:
    ld [de], a                                    ; $4779: $12
    dec de                                        ; $477a: $1b
    inc de                                        ; $477b: $13
    rst $38                                       ; $477c: $ff
    ld a, d                                       ; $477d: $7a
    ld h, l                                       ; $477e: $65

jr_073_477f:
    or $87                                        ; $477f: $f6 $87
    db $e4                                        ; $4781: $e4
    dec de                                        ; $4782: $1b
    sbc b                                         ; $4783: $98
    ld h, a                                       ; $4784: $67
    rst $38                                       ; $4785: $ff

jr_073_4786:
    ld [hl], b                                    ; $4786: $70
    xor a                                         ; $4787: $af
    ret nz                                        ; $4788: $c0

    ret nz                                        ; $4789: $c0

    rlca                                          ; $478a: $07
    rst $00                                       ; $478b: $c7
    rra                                           ; $478c: $1f
    sbc b                                         ; $478d: $98
    rst $38                                       ; $478e: $ff
    jr c, jr_073_47b1                             ; $478f: $38 $20

    ld [hl], a                                    ; $4791: $77
    daa                                           ; $4792: $27
    ld l, a                                       ; $4793: $6f
    ld c, e                                       ; $4794: $4b
    call c, $cf4f                                 ; $4795: $dc $4f $cf
    ret c                                         ; $4798: $d8

    ld c, a                                       ; $4799: $4f
    ret c                                         ; $479a: $d8

    di                                            ; $479b: $f3
    halt                                          ; $479c: $76
    and b                                         ; $479d: $a0
    and b                                         ; $479e: $a0
    add h                                         ; $479f: $84
    ld e, d                                       ; $47a0: $5a
    ret z                                         ; $47a1: $c8

    rst $20                                       ; $47a2: $e7
    ld e, h                                       ; $47a3: $5c
    ret z                                         ; $47a4: $c8

    ld e, h                                       ; $47a5: $5c
    cp h                                          ; $47a6: $bc
    pop hl                                        ; $47a7: $e1
    or [hl]                                       ; $47a8: $b6
    ldh [$a4], a                                  ; $47a9: $e0 $a4
    ldh [$fc], a                                  ; $47ab: $e0 $fc
    rst $28                                       ; $47ad: $ef
    jr @-$02                                      ; $47ae: $18 $fc

    inc b                                         ; $47b0: $04

jr_073_47b1:
    ld e, $a0                                     ; $47b1: $1e $a0
    add l                                         ; $47b3: $85
    rrca                                          ; $47b4: $0f
    ret nz                                        ; $47b5: $c0

    rst $20                                       ; $47b6: $e7
    rst $38                                       ; $47b7: $ff
    ld hl, sp+$18                                 ; $47b8: $f8 $18
    ld e, $06                                     ; $47ba: $1e $06
    rst $20                                       ; $47bc: $e7
    pop hl                                        ; $47bd: $e1
    ld sp, hl                                     ; $47be: $f9
    sub b                                         ; $47bf: $90
    db $fd                                        ; $47c0: $fd
    ret c                                         ; $47c1: $d8

    cp $e0                                        ; $47c2: $fe $e0
    call c, $dc90                                 ; $47c4: $dc $90 $dc
    and b                                         ; $47c7: $a0
    db $f4                                        ; $47c8: $f4
    jr nz, jr_073_4786                            ; $47c9: $20 $bb

    and h                                         ; $47cb: $a4
    ld b, b                                       ; $47cc: $40
    add b                                         ; $47cd: $80
    ldh [$97], a                                  ; $47ce: $e0 $97
    or b                                          ; $47d0: $b0
    sbc a                                         ; $47d1: $9f
    cp $e0                                        ; $47d2: $fe $e0
    xor a                                         ; $47d4: $af
    ld a, l                                       ; $47d5: $7d
    or b                                          ; $47d6: $b0
    xor d                                         ; $47d7: $aa
    add b                                         ; $47d8: $80
    ldh [$9f], a                                  ; $47d9: $e0 $9f
    ret nz                                        ; $47db: $c0

    cp a                                          ; $47dc: $bf
    add b                                         ; $47dd: $80
    ret nz                                        ; $47de: $c0

    db $e3                                        ; $47df: $e3
    rst $38                                       ; $47e0: $ff
    ld bc, $0225                                  ; $47e1: $01 $25 $02
    daa                                           ; $47e4: $27
    ld [bc], a                                    ; $47e5: $02
    ld h, $0c                                     ; $47e6: $26 $0c
    rra                                           ; $47e8: $1f
    ei                                            ; $47e9: $fb
    ld de, $b01b                                  ; $47ea: $11 $1b $b0
    db $e4                                        ; $47ed: $e4
    inc h                                         ; $47ee: $24
    ld bc, $0227                                  ; $47ef: $01 $27 $02
    daa                                           ; $47f2: $27
    rst $38                                       ; $47f3: $ff
    inc b                                         ; $47f4: $04
    ld e, $09                                     ; $47f5: $1e $09
    dec e                                         ; $47f7: $1d
    ld c, b                                       ; $47f8: $48
    call z, $d848                                 ; $47f9: $cc $48 $d8
    ei                                            ; $47fc: $fb
    sub b                                         ; $47fd: $90
    cp b                                          ; $47fe: $b8
    cp $e1                                        ; $47ff: $fe $e1
    ld d, b                                       ; $4801: $50
    ld hl, sp+$48                                 ; $4802: $f8 $48
    ret c                                         ; $4804: $d8

    ld c, b                                       ; $4805: $48
    rst $38                                       ; $4806: $ff
    call z, $b890                                 ; $4807: $cc $90 $b8
    adc b                                         ; $480a: $88
    add sp, $48                                   ; $480b: $e8 $48
    db $ec                                        ; $480d: $ec
    ld c, b                                       ; $480e: $48
    push de                                       ; $480f: $d5
    ld l, h                                       ; $4810: $6c
    cp $e0                                        ; $4811: $fe $e0
    db $ec                                        ; $4813: $ec
    and h                                         ; $4814: $a4
    ldh [$98], a                                  ; $4815: $e0 $98
    add b                                         ; $4817: $80
    ld [c], a                                     ; $4818: $e2
    inc a                                         ; $4819: $3c
    inc a                                         ; $481a: $3c
    push hl                                       ; $481b: $e5
    rst $38                                       ; $481c: $ff
    add b                                         ; $481d: $80
    and b                                         ; $481e: $a0
    db $e3                                        ; $481f: $e3
    and b                                         ; $4820: $a0

jr_073_4821:
    and c                                         ; $4821: $a1
    ld [hl], b                                    ; $4822: $70
    ld [c], a                                     ; $4823: $e2
    ld h, [hl]                                    ; $4824: $66
    ld h, [hl]                                    ; $4825: $66
    rst $38                                       ; $4826: $ff
    adc d                                         ; $4827: $8a
    add b                                         ; $4828: $80
    and l                                         ; $4829: $a5
    ldh [rLCDC], a                                ; $482a: $e0 $40
    pop hl                                        ; $482c: $e1
    ld a, a                                       ; $482d: $7f
    nop                                           ; $482e: $00
    rst $20                                       ; $482f: $e7
    sub b                                         ; $4830: $90
    push hl                                       ; $4831: $e5
    adc [hl]                                      ; $4832: $8e
    ld [c], a                                     ; $4833: $e2
    dec de                                        ; $4834: $1b
    db $e3                                        ; $4835: $e3
    inc b                                         ; $4836: $04
    ld e, $90                                     ; $4837: $1e $90
    push hl                                       ; $4839: $e5
    db $fc                                        ; $483a: $fc
    ld [c], a                                     ; $483b: $e2
    ldh a, [$c1]                                  ; $483c: $f0 $c1
    db $ed                                        ; $483e: $ed
    ld [de], a                                    ; $483f: $12
    ei                                            ; $4840: $fb
    xor a                                         ; $4841: $af
    ld [de], a                                    ; $4842: $12
    jp c, $f62c                                   ; $4843: $da $2c $f6

    cp $e0                                        ; $4846: $fe $e0

Jump_073_4848:
    or h                                          ; $4848: $b4
    sbc b                                         ; $4849: $98
    ldh [$ec], a                                  ; $484a: $e0 $ec
    cp $e0                                        ; $484c: $fe $e0
    and $25                                       ; $484e: $e6 $25
    ld bc, $0627                                  ; $4850: $01 $27 $06
    rra                                           ; $4853: $1f
    ld [$fd1e], sp                                ; $4854: $08 $1e $fd
    jp hl                                         ; $4857: $e9


    ld h, b                                       ; $4858: $60
    ld h, c                                       ; $4859: $61
    ld a, [hl-]                                   ; $485a: $3a
    db $e4                                        ; $485b: $e4
    ld [hl], $e4                                  ; $485c: $36 $e4
    ld [hl], $a4                                  ; $485e: $36 $a4
    rst $28                                       ; $4860: $ef
    ld [hl], h                                    ; $4861: $74
    ret z                                         ; $4862: $c8

    ld l, h                                       ; $4863: $6c
    ret z                                         ; $4864: $c8

    ld a, d                                       ; $4865: $7a

Call_073_4866:
    db $e3                                        ; $4866: $e3
    call nc, $b420                                ; $4867: $d4 $20 $b4
    rst $38                                       ; $486a: $ff
    jr nz, jr_073_4821                            ; $486b: $20 $b4

    ld b, b                                       ; $486d: $40
    ld h, h                                       ; $486e: $64
    ld b, b                                       ; $486f: $40
    ld e, b                                       ; $4870: $58
    add b                                         ; $4871: $80
    ret c                                         ; $4872: $d8

    rst $38                                       ; $4873: $ff
    ret z                                         ; $4874: $c8

jr_073_4875:
    ld l, b                                       ; $4875: $68
    add sp, -$38                                  ; $4876: $e8 $c8
    ld c, b                                       ; $4878: $48
    sbc h                                         ; $4879: $9c
    db $10                                        ; $487a: $10
    inc [hl]                                      ; $487b: $34
    and e                                         ; $487c: $a3
    ldh [$e4], a                                  ; $487d: $e0 $e4
    and b                                         ; $487f: $a0
    jp Jump_073_4ca1                              ; $4880: $c3 $a1 $4c


    ld [hl], b                                    ; $4883: $70
    add h                                         ; $4884: $84
    and l                                         ; $4885: $a5
    ld [hl], b                                    ; $4886: $70
    add e                                         ; $4887: $83
    sub e                                         ; $4888: $93
    ld c, [hl]                                    ; $4889: $4e
    or $e0                                        ; $488a: $f6 $e0
    ld e, d                                       ; $488c: $5a
    ld e, b                                       ; $488d: $58
    or l                                          ; $488e: $b5
    ld h, b                                       ; $488f: $60
    add [hl]                                      ; $4890: $86
    ldh a, [$e0]                                  ; $4891: $f0 $e0
    ld e, e                                       ; $4893: $5b
    dec h                                         ; $4894: $25
    jr nz, jr_073_4875                            ; $4895: $20 $de

    ld h, b                                       ; $4897: $60
    add l                                         ; $4898: $85
    sbc e                                         ; $4899: $9b
    rst $30                                       ; $489a: $f7
    ld l, l                                       ; $489b: $6d
    rst $38                                       ; $489c: $ff
    ldh a, [$e5]                                  ; $489d: $f0 $e5
    ld d, a                                       ; $489f: $57
    db $fd                                        ; $48a0: $fd
    rst $18                                       ; $48a1: $df
    xor d                                         ; $48a2: $aa
    rst $38                                       ; $48a3: $ff
    sub e                                         ; $48a4: $93
    rst $38                                       ; $48a5: $ff
    ld l, l                                       ; $48a6: $6d
    ld a, b                                       ; $48a7: $78
    and b                                         ; $48a8: $a0
    sub h                                         ; $48a9: $94
    ld l, l                                       ; $48aa: $6d
    rst $38                                       ; $48ab: $ff
    add hl, hl                                    ; $48ac: $29
    ld [c], a                                     ; $48ad: $e2
    ld h, h                                       ; $48ae: $64
    sub e                                         ; $48af: $93
    ld a, [de]                                    ; $48b0: $1a
    xor l                                         ; $48b1: $ad
    dec h                                         ; $48b2: $25
    ld c, d                                       ; $48b3: $4a
    rst $38                                       ; $48b4: $ff
    ld h, h                                       ; $48b5: $64
    sub e                                         ; $48b6: $93
    ld d, d                                       ; $48b7: $52
    ld l, l                                       ; $48b8: $6d
    inc b                                         ; $48b9: $04
    ld a, [$bd48]                                 ; $48ba: $fa $48 $bd
    rst $38                                       ; $48bd: $ff
    ld a, [bc]                                    ; $48be: $0a
    push de                                       ; $48bf: $d5
    dec d                                         ; $48c0: $15
    ld [hl], d                                    ; $48c1: $72

Call_073_48c2:
    ld d, d                                       ; $48c2: $52
    xor a                                         ; $48c3: $af
    dec c                                         ; $48c4: $0d
    jp c, Jump_073_64bf                           ; $48c5: $da $bf $64

    sub e                                         ; $48c8: $93
    ld e, d                                       ; $48c9: $5a
    ld h, l                                       ; $48ca: $65
    ld b, $da                                     ; $48cb: $06 $da
    jr nz, jr_073_4911                            ; $48cd: $20 $42

    push bc                                       ; $48cf: $c5
    db $f4                                        ; $48d0: $f4
    jr nz, jr_073_4918                            ; $48d1: $20 $45

    ldh a, [$0d]                                  ; $48d3: $f0 $0d
    call c, $e0b6                                 ; $48d5: $dc $b6 $e0
    xor c                                         ; $48d8: $a9
    rst $30                                       ; $48d9: $f7
    sbc a                                         ; $48da: $9f
    ei                                            ; $48db: $fb
    rst $38                                       ; $48dc: $ff
    ld h, [hl]                                    ; $48dd: $66
    cp a                                          ; $48de: $bf
    rst $38                                       ; $48df: $ff
    ld e, e                                       ; $48e0: $5b
    ld a, [hl+]                                   ; $48e1: $2a
    rst $38                                       ; $48e2: $ff
    ld e, l                                       ; $48e3: $5d
    or a                                          ; $48e4: $b7
    rst $38                                       ; $48e5: $ff
    add b                                         ; $48e6: $80
    cp a                                          ; $48e7: $bf
    ld b, b                                       ; $48e8: $40
    rst $38                                       ; $48e9: $ff
    ld h, b                                       ; $48ea: $60
    rst $18                                       ; $48eb: $df
    jr nz, @+$01                                  ; $48ec: $20 $ff

    rst $38                                       ; $48ee: $ff
    and b                                         ; $48ef: $a0
    cp a                                          ; $48f0: $bf
    jr nz, @+$71                                  ; $48f1: $20 $6f

    db $10                                        ; $48f3: $10
    rst $30                                       ; $48f4: $f7
    ld d, b                                       ; $48f5: $50
    rst $30                                       ; $48f6: $f7
    ld a, [hl]                                    ; $48f7: $7e
    ldh a, [$e3]                                  ; $48f8: $f0 $e3
    and b                                         ; $48fa: $a0
    ld a, a                                       ; $48fb: $7f
    and b                                         ; $48fc: $a0
    ld l, a                                       ; $48fd: $6f
    ret nc                                        ; $48fe: $d0

    scf                                           ; $48ff: $37
    cp $e1                                        ; $4900: $fe $e1
    rst $38                                       ; $4902: $ff
    db $10                                        ; $4903: $10
    rst $30                                       ; $4904: $f7
    ld [$08db], sp                                ; $4905: $08 $db $08
    ei                                            ; $4908: $fb
    ld b, h                                       ; $4909: $44
    rst $38                                       ; $490a: $ff
    rst $38                                       ; $490b: $ff
    and h                                         ; $490c: $a4
    cp l                                          ; $490d: $bd
    ld c, $5b                                     ; $490e: $0e $5b
    ld [bc], a                                    ; $4910: $02

jr_073_4911:
    or $41                                        ; $4911: $f6 $41
    rst $38                                       ; $4913: $ff
    rst $38                                       ; $4914: $ff
    cp a                                          ; $4915: $bf
    ret nz                                        ; $4916: $c0

    ld e, a                                       ; $4917: $5f

jr_073_4918:
    ld h, b                                       ; $4918: $60
    ld e, a                                       ; $4919: $5f
    ld h, b                                       ; $491a: $60
    cpl                                           ; $491b: $2f
    or b                                          ; $491c: $b0
    rst $08                                       ; $491d: $cf
    cpl                                           ; $491e: $2f
    or b                                          ; $491f: $b0
    rla                                           ; $4920: $17
    ret c                                         ; $4921: $d8

    cp $e1                                        ; $4922: $fe $e1
    ret nz                                        ; $4924: $c0

    ldh [$df], a                                  ; $4925: $e0 $df
    or b                                          ; $4927: $b0
    rst $38                                       ; $4928: $ff
    ld l, a                                       ; $4929: $6f

jr_073_492a:
    ldh [$2f], a                                  ; $492a: $e0 $2f
    call nc, $ec33                                ; $492c: $d4 $33 $ec
    dec e                                         ; $492f: $1d
    ld a, [c]                                     ; $4930: $f2
    rst $18                                       ; $4931: $df
    ld c, $fd                                     ; $4932: $0e $fd
    inc bc                                        ; $4934: $03
    add b                                         ; $4935: $80
    cp a                                          ; $4936: $bf
    or d                                          ; $4937: $b2
    pop hl                                        ; $4938: $e1
    jr nz, jr_073_492a                            ; $4939: $20 $ef

    sbc a                                         ; $493b: $9f
    db $10                                        ; $493c: $10
    or e                                          ; $493d: $b3

jr_073_493e:
    inc c                                         ; $493e: $0c
    db $ed                                        ; $493f: $ed
    ld [hl+], a                                   ; $4940: $22
    daa                                           ; $4941: $27
    ld h, b                                       ; $4942: $60
    inc bc                                        ; $4943: $03
    ld b, l                                       ; $4944: $45
    ld c, $af                                     ; $4945: $0e $af
    adc $32                                       ; $4947: $ce $32
    cp a                                          ; $4949: $bf
    ld d, b                                       ; $494a: $50
    db $10                                        ; $494b: $10
    ld b, b                                       ; $494c: $40
    ld bc, $6000                                  ; $494d: $01 $00 $60

jr_073_4950:
    inc a                                         ; $4950: $3c
    cpl                                           ; $4951: $2f
    ld a, [hl-]                                   ; $4952: $3a
    push hl                                       ; $4953: $e5
    db $dd                                        ; $4954: $dd
    ld [bc], a                                    ; $4955: $02
    jr c, jr_073_49b8                             ; $4956: $38 $60

    ld d, b                                       ; $4958: $50
    adc b                                         ; $4959: $88
    ldh [$e3], a                                  ; $495a: $e0 $e3
    inc h                                         ; $495c: $24
    rst $38                                       ; $495d: $ff
    ld sp, hl                                     ; $495e: $f9
    ld c, $ef                                     ; $495f: $0e $ef
    ld sp, $4fbe                                  ; $4961: $31 $be $4f
    ld [hl], b                                    ; $4964: $70
    cp a                                          ; $4965: $bf
    rst $38                                       ; $4966: $ff
    ret nz                                        ; $4967: $c0

    ld bc, $06fd                                  ; $4968: $01 $fd $06
    rst $20                                       ; $496b: $e7
    add hl, sp                                    ; $496c: $39
    ld a, $c7                                     ; $496d: $3e $c7
    di                                            ; $496f: $f3
    ld hl, sp+$3f                                 ; $4970: $f8 $3f

jr_073_4972:
    add $24                                       ; $4972: $c6 $24
    ld h, c                                       ; $4974: $61
    jr nz, jr_073_493e                            ; $4975: $20 $c7

    jr c, jr_073_49b1                             ; $4977: $38 $38

    rst $00                                       ; $4979: $c7
    ld e, b                                       ; $497a: $58
    and d                                         ; $497b: $a2
    ld h, b                                       ; $497c: $60
    ld d, [hl]                                    ; $497d: $56
    inc hl                                        ; $497e: $23
    ld l, d                                       ; $497f: $6a
    pop hl                                        ; $4980: $e1
    add sp, $1b                                   ; $4981: $e8 $1b
    cp $e2                                        ; $4983: $fe $e2
    rra                                           ; $4985: $1f
    ld e, [hl]                                    ; $4986: $5e
    pop hl                                        ; $4987: $e1
    cp $41                                        ; $4988: $fe $41
    daa                                           ; $498a: $27
    jr nz, jr_073_4950                            ; $498b: $20 $c3

    inc e                                         ; $498d: $1c
    inc e                                         ; $498e: $1c
    db $e3                                        ; $498f: $e3
    db $e3                                        ; $4990: $e3
    add b                                         ; $4991: $80
    db $fd                                        ; $4992: $fd
    cp a                                          ; $4993: $bf
    push af                                       ; $4994: $f5
    ld b, b                                       ; $4995: $40
    rst $38                                       ; $4996: $ff
    ld b, b                                       ; $4997: $40
    ld e, a                                       ; $4998: $5f
    ld b, b                                       ; $4999: $40
    ld e, a                                       ; $499a: $5f
    add b                                         ; $499b: $80
    ld a, l                                       ; $499c: $7d
    cp a                                          ; $499d: $bf
    cp $e1                                        ; $499e: $fe $e1
    db $e3                                        ; $49a0: $e3
    jp $bf3e                                      ; $49a1: $c3 $3e $bf


    ld [hl], b                                    ; $49a4: $70
    jr nc, @+$22                                  ; $49a5: $30 $20

    cp $90                                        ; $49a7: $fe $90
    ldh [rIE], a                                  ; $49a9: $e0 $ff
    ld [$14eb], sp                                ; $49ab: $08 $eb $14
    rst $30                                       ; $49ae: $f7
    add b                                         ; $49af: $80
    rst $38                                       ; $49b0: $ff

jr_073_49b1:
    rst $38                                       ; $49b1: $ff
    sub b                                         ; $49b2: $90
    xor a                                         ; $49b3: $af
    ld d, b                                       ; $49b4: $50
    ld e, d                                       ; $49b5: $5a
    ld h, l                                       ; $49b6: $65
    db $fd                                        ; $49b7: $fd

jr_073_49b8:
    ld b, d                                       ; $49b8: $42
    rst $38                                       ; $49b9: $ff
    cp a                                          ; $49ba: $bf
    ld b, b                                       ; $49bb: $40
    rst $38                                       ; $49bc: $ff
    ret z                                         ; $49bd: $c8

    xor e                                         ; $49be: $ab
    sub h                                         ; $49bf: $94
    rst $30                                       ; $49c0: $f7
    and b                                         ; $49c1: $a0
    and c                                         ; $49c2: $a1
    ret nc                                        ; $49c3: $d0

    pop af                                        ; $49c4: $f1
    cp b                                          ; $49c5: $b8
    cp $e1                                        ; $49c6: $fe $e1
    and b                                         ; $49c8: $a0
    and e                                         ; $49c9: $a3
    ldh a, [rSTAT]                                ; $49ca: $f0 $41
    call nc, $d0b9                                ; $49cc: $d4 $b9 $d0
    cp e                                          ; $49cf: $bb
    add hl, sp                                    ; $49d0: $39
    ret nc                                        ; $49d1: $d0

    ldh a, [rLY]                                  ; $49d2: $f0 $44
    nop                                           ; $49d4: $00
    ld h, c                                       ; $49d5: $61
    rst $10                                       ; $49d6: $d7
    cp b                                          ; $49d7: $b8
    rst $10                                       ; $49d8: $d7
    nop                                           ; $49d9: $00
    ld h, [hl]                                    ; $49da: $66
    db $10                                        ; $49db: $10
    ld h, a                                       ; $49dc: $67
    ld bc, $103c                                  ; $49dd: $01 $3c $10
    ld h, d                                       ; $49e0: $62
    jr nz, jr_073_4a4a                            ; $49e1: $20 $67

    ldh a, [$e2]                                  ; $49e3: $f0 $e2
    add b                                         ; $49e5: $80
    and e                                         ; $49e6: $a3
    ld [hl], b                                    ; $49e7: $70
    and d                                         ; $49e8: $a2
    ldh a, [$e4]                                  ; $49e9: $f0 $e4

jr_073_49eb:
    add b                                         ; $49eb: $80
    jr z, jr_073_49eb                             ; $49ec: $28 $fd

    db $e4                                        ; $49ee: $e4
    add b                                         ; $49ef: $80
    jr nz, jr_073_4972                            ; $49f0: $20 $80

    rst $30                                       ; $49f2: $f7
    ld b, b                                       ; $49f3: $40
    ld l, e                                       ; $49f4: $6b
    jr z, @-$49                                   ; $49f5: $28 $b5

    rst $38                                       ; $49f7: $ff
    sub b                                         ; $49f8: $90
    rst $18                                       ; $49f9: $df
    sub b                                         ; $49fa: $90
    db $dd                                        ; $49fb: $dd
    ld e, b                                       ; $49fc: $58
    ld [$6dda], a                                 ; $49fd: $ea $da $6d
    rst $38                                       ; $4a00: $ff
    ret c                                         ; $4a01: $d8

    ld l, a                                       ; $4a02: $6f
    add b                                         ; $4a03: $80
    ret c                                         ; $4a04: $d8

    ld b, b                                       ; $4a05: $40
    ld a, b                                       ; $4a06: $78
    jr nz, @-$5a                                  ; $4a07: $20 $a4

    rst $28                                       ; $4a09: $ef
    and b                                         ; $4a0a: $a0
    db $f4                                        ; $4a0b: $f4
    or b                                          ; $4a0c: $b0
    call c, $e0fe                                 ; $4a0d: $dc $fe $e0
    ret c                                         ; $4a10: $d8

    or b                                          ; $4a11: $b0
    ret c                                         ; $4a12: $d8

    ld a, e                                       ; $4a13: $7b
    ld c, b                                       ; $4a14: $48
    db $ec                                        ; $4a15: $ec
    ld a, [$d4e0]                                 ; $4a16: $fa $e0 $d4
    ld h, b                                       ; $4a19: $60
    or h                                          ; $4a1a: $b4
    ld h, b                                       ; $4a1b: $60
    or b                                          ; $4a1c: $b0
    and h                                         ; $4a1d: $a4
    cp $a0                                        ; $4a1e: $fe $a0
    add l                                         ; $4a20: $85
    ret nz                                        ; $4a21: $c0

    db $fc                                        ; $4a22: $fc
    ld a, b                                       ; $4a23: $78
    inc a                                         ; $4a24: $3c
    ld a, $c6                                     ; $4a25: $3e $c6
    pop bc                                        ; $4a27: $c1
    ld a, l                                       ; $4a28: $7d
    ld sp, hl                                     ; $4a29: $f9
    sub b                                         ; $4a2a: $90
    dec bc                                        ; $4a2b: $0b
    dec sp                                        ; $4a2c: $3b
    db $fc                                        ; $4a2d: $fc
    ret nc                                        ; $4a2e: $d0

    or a                                          ; $4a2f: $b7
    and h                                         ; $4a30: $a4
    db $10                                        ; $4a31: $10
    ld c, d                                       ; $4a32: $4a
    rst $08                                       ; $4a33: $cf
    ld c, b                                       ; $4a34: $48
    sbc a                                         ; $4a35: $9f
    or b                                          ; $4a36: $b0
    ccf                                           ; $4a37: $3f
    ld h, b                                       ; $4a38: $60
    add hl, hl                                    ; $4a39: $29
    or b                                          ; $4a3a: $b0
    adc c                                         ; $4a3b: $89
    dec b                                         ; $4a3c: $05
    ld e, $ff                                     ; $4a3d: $1e $ff
    dec bc                                        ; $4a3f: $0b
    dec e                                         ; $4a40: $1d
    dec c                                         ; $4a41: $0d
    ld sp, hl                                     ; $4a42: $f9
    dec c                                         ; $4a43: $0d
    ei                                            ; $4a44: $fb
    dec de                                        ; $4a45: $1b
    ld d, [hl]                                    ; $4a46: $56
    rst $38                                       ; $4a47: $ff
    ld d, d                                       ; $4a48: $52
    or [hl]                                       ; $4a49: $b6

jr_073_4a4a:
    ld [de], a                                    ; $4a4a: $12
    or $0a                                        ; $4a4b: $f6 $0a
    xor a                                         ; $4a4d: $af
    add hl, bc                                    ; $4a4e: $09
    db $eb                                        ; $4a4f: $eb
    ei                                            ; $4a50: $fb
    ld c, c                                       ; $4a51: $49
    jp hl                                         ; $4a52: $e9


    ld h, b                                       ; $4a53: $60
    ld b, a                                       ; $4a54: $47
    inc b                                         ; $4a55: $04
    jp Jump_000_3c3f                              ; $4a56: $c3 $3f $3c


    rst $00                                       ; $4a59: $c7
    inc bc                                        ; $4a5a: $03
    ei                                            ; $4a5b: $fb
    nop                                           ; $4a5c: $00
    rst $38                                       ; $4a5d: $ff
    db $ec                                        ; $4a5e: $ec
    nop                                           ; $4a5f: $00
    nop                                           ; $4a60: $00
    nop                                           ; $4a61: $00
    ld h, c                                       ; $4a62: $61
    nop                                           ; $4a63: $00
    rst $38                                       ; $4a64: $ff
    rst $38                                       ; $4a65: $ff
    rst $38                                       ; $4a66: $ff
    rst $38                                       ; $4a67: $ff
    rst $38                                       ; $4a68: $ff
    rst $38                                       ; $4a69: $ff
    rst $30                                       ; $4a6a: $f7
    or $5a                                        ; $4a6b: $f6 $5a
    ld e, e                                       ; $4a6d: $5b
    rst $38                                       ; $4a6e: $ff
    ldh [$37], a                                  ; $4a6f: $e0 $37
    ld e, h                                       ; $4a71: $5c
    ld e, l                                       ; $4a72: $5d
    ld h, d                                       ; $4a73: $62
    rst $38                                       ; $4a74: $ff
    db $e3                                        ; $4a75: $e3
    ld e, l                                       ; $4a76: $5d
    ld e, h                                       ; $4a77: $5c
    pop af                                        ; $4a78: $f1
    pop hl                                        ; $4a79: $e1
    jp z, $ffe3                                   ; $4a7a: $ca $e3 $ff

    rla                                           ; $4a7d: $17
    jr z, jr_073_4aa0                             ; $4a7e: $28 $20

    nop                                           ; $4a80: $00
    ld sp, $3131                                  ; $4a81: $31 $31 $31
    ld c, l                                       ; $4a84: $4d
    ccf                                           ; $4a85: $3f
    ld d, [hl]                                    ; $4a86: $56
    ld d, [hl]                                    ; $4a87: $56
    ld d, a                                       ; $4a88: $57
    ld c, l                                       ; $4a89: $4d
    ld sp, $d85f                                  ; $4a8a: $31 $5f $d8
    ld [c], a                                     ; $4a8d: $e2
    and $e4                                       ; $4a8e: $e6 $e4
    ld [hl], b                                    ; $4a90: $70
    xor d                                         ; $4a91: $aa
    jp hl                                         ; $4a92: $e9


    jp nz, $d9e2                                  ; $4a93: $c2 $e2 $d9

    ldh [$fd], a                                  ; $4a96: $e0 $fd
    push hl                                       ; $4a98: $e5
    ld h, b                                       ; $4a99: $60
    ld e, d                                       ; $4a9a: $5a
    ld e, d                                       ; $4a9b: $5a
    ret nz                                        ; $4a9c: $c0

    db $e4                                        ; $4a9d: $e4
    ei                                            ; $4a9e: $fb
    dec d                                         ; $4a9f: $15

jr_073_4aa0:
    ld d, $c0                                     ; $4aa0: $16 $c0
    pop hl                                        ; $4aa2: $e1
    ld c, l                                       ; $4aa3: $4d
    ld [hl-], a                                   ; $4aa4: $32
    ld l, d                                       ; $4aa5: $6a
    ld l, l                                       ; $4aa6: $6d
    ld l, l                                       ; $4aa7: $6d
    rst $00                                       ; $4aa8: $c7
    add hl, sp                                    ; $4aa9: $39
    ld sp, $995e                                  ; $4aaa: $31 $5e $99
    pop hl                                        ; $4aad: $e1
    and $e5                                       ; $4aae: $e6 $e5
    ret nz                                        ; $4ab0: $c0

    ld [$605a], a                                 ; $4ab1: $ea $5a $60
    xor $9b                                       ; $4ab4: $ee $9b
    ldh [$34], a                                  ; $4ab6: $e0 $34
    ld a, [hl-]                                   ; $4ab8: $3a
    ld d, h                                       ; $4ab9: $54
    rst $38                                       ; $4aba: $ff
    ldh [rHDMA5], a                               ; $4abb: $e0 $55
    ld b, [hl]                                    ; $4abd: $46
    ld c, l                                       ; $4abe: $4d
    or $bf                                        ; $4abf: $f6 $bf
    ldh [$5b], a                                  ; $4ac1: $e0 $5b
    ld e, d                                       ; $4ac3: $5a
    ld c, d                                       ; $4ac4: $4a
    db $e3                                        ; $4ac5: $e3
    ld sp, $2817                                  ; $4ac6: $31 $17 $28
    nop                                           ; $4ac9: $00
    ld a, [hl-]                                   ; $4aca: $3a
    pop bc                                        ; $4acb: $c1
    ldh [rOCPD], a                                ; $4acc: $e0 $6b
    ret nz                                        ; $4ace: $c0

    ldh [rOBP0], a                                ; $4acf: $e0 $48
    ld c, c                                       ; $4ad1: $49
    ld h, c                                       ; $4ad2: $61
    add c                                         ; $4ad3: $81
    ld [c], a                                     ; $4ad4: $e2
    add b                                         ; $4ad5: $80
    ldh a, [$de]                                  ; $4ad6: $f0 $de
    pop bc                                        ; $4ad8: $c1
    pop hl                                        ; $4ad9: $e1
    ld c, l                                       ; $4ada: $4d
    dec sp                                        ; $4adb: $3b
    ccf                                           ; $4adc: $3f
    ld l, h                                       ; $4add: $6c
    rst $38                                       ; $4ade: $ff
    pop hl                                        ; $4adf: $e1
    jr nc, jr_073_4b12                            ; $4ae0: $30 $30

    push af                                       ; $4ae2: $f5
    ld [hl-], a                                   ; $4ae3: $32
    cp a                                          ; $4ae4: $bf
    ldh [$5f], a                                  ; $4ae5: $e0 $5f
    ld b, b                                       ; $4ae7: $40
    db $e4                                        ; $4ae8: $e4
    ld sp, $1615                                  ; $4ae9: $31 $15 $16
    rrca                                          ; $4aec: $0f
    scf                                           ; $4aed: $37
    ld c, l                                       ; $4aee: $4d
    ld [hl-], a                                   ; $4aef: $32
    ld l, c                                       ; $4af0: $69
    ret nz                                        ; $4af1: $c0

    pop hl                                        ; $4af2: $e1
    ld l, d                                       ; $4af3: $6a
    ld d, c                                       ; $4af4: $51
    ret nz                                        ; $4af5: $c0

    db $e3                                        ; $4af6: $e3
    and [hl]                                      ; $4af7: $a6
    db $e4                                        ; $4af8: $e4
    db $f4                                        ; $4af9: $f4
    ld [$c1c9], a                                 ; $4afa: $ea $c9 $c1
    pop hl                                        ; $4afd: $e1
    ld [hl-], a                                   ; $4afe: $32
    jp nz, Jump_073_6ce2                          ; $4aff: $c2 $e2 $6c

    ld l, h                                       ; $4b02: $6c
    ld l, l                                       ; $4b03: $6d
    ld l, l                                       ; $4b04: $6d
    ld a, [$e1bf]                                 ; $4b05: $fa $bf $e1
    ld e, [hl]                                    ; $4b08: $5e
    nop                                           ; $4b09: $00
    db $e4                                        ; $4b0a: $e4
    ld e, [hl]                                    ; $4b0b: $5e
    ld sp, $3104                                  ; $4b0c: $31 $04 $31
    add hl, sp                                    ; $4b0f: $39
    add l                                         ; $4b10: $85
    ld l, e                                       ; $4b11: $6b

jr_073_4b12:
    ret nz                                        ; $4b12: $c0

    db $e3                                        ; $4b13: $e3
    add hl, sp                                    ; $4b14: $39
    xor d                                         ; $4b15: $aa
    ldh [$27], a                                  ; $4b16: $e0 $27
    ldh [rP1], a                                  ; $4b18: $e0 $00
    ldh a, [$c1]                                  ; $4b1a: $f0 $c1
    ld [c], a                                     ; $4b1c: $e2
    ld l, b                                       ; $4b1d: $68
    cp h                                          ; $4b1e: $bc
    rst $38                                       ; $4b1f: $ff
    ld [c], a                                     ; $4b20: $e2
    ret nz                                        ; $4b21: $c0

    pop hl                                        ; $4b22: $e1
    jr nc, jr_073_4b5e                            ; $4b23: $30 $39

    ld sp, $4061                                  ; $4b25: $31 $61 $40
    db $e4                                        ; $4b28: $e4
    ld e, a                                       ; $4b29: $5f
    ld l, a                                       ; $4b2a: $6f
    ld sp, $4931                                  ; $4b2b: $31 $31 $49
    ld c, b                                       ; $4b2e: $48
    ret nz                                        ; $4b2f: $c0

    db $e4                                        ; $4b30: $e4
    ld c, b                                       ; $4b31: $48
    ld c, c                                       ; $4b32: $49
    rst $38                                       ; $4b33: $ff
    ret nz                                        ; $4b34: $c0

    sbc [hl]                                      ; $4b35: $9e
    ret nz                                        ; $4b36: $c0

    di                                            ; $4b37: $f3
    ld a, $32                                     ; $4b38: $3e $32
    ld l, l                                       ; $4b3a: $6d
    ld l, d                                       ; $4b3b: $6a
    ret nz                                        ; $4b3c: $c0

    ld [c], a                                     ; $4b3d: $e2
    ret c                                         ; $4b3e: $d8

    ret nz                                        ; $4b3f: $c0

    ld l, e                                       ; $4b40: $6b
    rst $18                                       ; $4b41: $df
    ld l, e                                       ; $4b42: $6b
    jr nc, jr_073_4b97                            ; $4b43: $30 $52

    ld sp, $8061                                  ; $4b45: $31 $61 $80
    call nz, Call_073_615b                        ; $4b48: $c4 $5b $61

Jump_073_4b4b:
    sub a                                         ; $4b4b: $97
    ld sp, $6b51                                  ; $4b4c: $31 $51 $6b
    add b                                         ; $4b4f: $80
    db $e4                                        ; $4b50: $e4
    ld l, e                                       ; $4b51: $6b
    ld a, a                                       ; $4b52: $7f
    pop hl                                        ; $4b53: $e1
    add b                                         ; $4b54: $80
    jp nc, $ef31                                  ; $4b55: $d2 $31 $ef

    ld d, d                                       ; $4b58: $52
    ld l, l                                       ; $4b59: $6d
    ld l, d                                       ; $4b5a: $6a
    ld l, d                                       ; $4b5b: $6a
    cp a                                          ; $4b5c: $bf
    ld [c], a                                     ; $4b5d: $e2

jr_073_4b5e:
    ld l, d                                       ; $4b5e: $6a
    ld l, d                                       ; $4b5f: $6a
    ld l, e                                       ; $4b60: $6b

jr_073_4b61:
    add d                                         ; $4b61: $82
    ret nz                                        ; $4b62: $c0

    ldh [$35], a                                  ; $4b63: $e0 $35
    ld d, h                                       ; $4b65: $54
    ret nz                                        ; $4b66: $c0

    ret nz                                        ; $4b67: $c0

    ldh a, [$7f]                                  ; $4b68: $f0 $7f
    ldh [rNR21], a                                ; $4b6a: $e0 $16
    pop bc                                        ; $4b6c: $c1
    ld b, b                                       ; $4b6d: $40
    ldh a, [$39]                                  ; $4b6e: $f0 $39
    ld a, d                                       ; $4b70: $7a
    pop bc                                        ; $4b71: $c1
    ldh [$6d], a                                  ; $4b72: $e0 $6d
    inc b                                         ; $4b74: $04
    ldh [rOCPS], a                                ; $4b75: $e0 $6a
    ld l, d                                       ; $4b77: $6a
    ld l, c                                       ; $4b78: $69
    ld l, c                                       ; $4b79: $69
    cp a                                          ; $4b7a: $bf
    pop hl                                        ; $4b7b: $e1
    ld b, h                                       ; $4b7c: $44
    ld d, h                                       ; $4b7d: $54
    ret nz                                        ; $4b7e: $c0

    ld h, $c4                                     ; $4b7f: $26 $c4
    ld e, [hl]                                    ; $4b81: $5e
    add b                                         ; $4b82: $80
    add sp, $7f                                   ; $4b83: $e8 $7f
    db $e4                                        ; $4b85: $e4
    or b                                          ; $4b86: $b0
    xor a                                         ; $4b87: $af
    ld e, [hl]                                    ; $4b88: $5e
    rra                                           ; $4b89: $1f
    jp nz, $c4ba                                  ; $4b8a: $c2 $ba $c4

    pop bc                                        ; $4b8d: $c1
    ld l, c                                       ; $4b8e: $69
    ret nz                                        ; $4b8f: $c0

    db $e3                                        ; $4b90: $e3
    ld d, e                                       ; $4b91: $53
    ld sp, $e661                                  ; $4b92: $31 $61 $e6
    and h                                         ; $4b95: $a4
    ld e, a                                       ; $4b96: $5f

jr_073_4b97:
    sub d                                         ; $4b97: $92
    nop                                           ; $4b98: $00
    push hl                                       ; $4b99: $e5
    jr nc, jr_073_4c1b                            ; $4b9a: $30 $7f

    db $e3                                        ; $4b9c: $e3
    nop                                           ; $4b9d: $00
    jp nc, $de5f                                  ; $4b9e: $d2 $5f $de

    and b                                         ; $4ba1: $a0
    ret                                           ; $4ba2: $c9


    ret nz                                        ; $4ba3: $c0

    jr nc, jr_073_4b61                            ; $4ba4: $30 $bb

    ld l, l                                       ; $4ba6: $6d
    ld l, e                                       ; $4ba7: $6b
    ret nz                                        ; $4ba8: $c0

    db $e4                                        ; $4ba9: $e4
    ld d, d                                       ; $4baa: $52
    ld sp, $e631                                  ; $4bab: $31 $31 $e6
    and l                                         ; $4bae: $a5
    ld e, [hl]                                    ; $4baf: $5e
    ret nc                                        ; $4bb0: $d0

    add b                                         ; $4bb1: $80
    ret nz                                        ; $4bb2: $c0

    cp a                                          ; $4bb3: $bf
    and $fe                                       ; $4bb4: $e6 $fe
    jp nz, $b040                                  ; $4bb6: $c2 $40 $b0

    ld e, [hl]                                    ; $4bb9: $5e
    ld bc, $55c0                                  ; $4bba: $01 $c0 $55
    ld d, h                                       ; $4bbd: $54
    dec de                                        ; $4bbe: $1b
    ld d, l                                       ; $4bbf: $55
    ld b, d                                       ; $4bc0: $42
    ret nz                                        ; $4bc1: $c0

    and $a4                                       ; $4bc2: $e6 $a4
    and h                                         ; $4bc4: $a4
    ld h, [hl]                                    ; $4bc5: $66
    and l                                         ; $4bc6: $a5
    ld a, a                                       ; $4bc7: $7f
    ld [c], a                                     ; $4bc8: $e2
    ld a, [hl]                                    ; $4bc9: $7e
    push hl                                       ; $4bca: $e5
    or b                                          ; $4bcb: $b0
    ld a, l                                       ; $4bcc: $7d
    jp nz, $b040                                  ; $4bcd: $c2 $40 $b0

    ld e, c                                       ; $4bd0: $59
    ret nz                                        ; $4bd1: $c0

    ld b, c                                       ; $4bd2: $41
    and c                                         ; $4bd3: $a1
    inc a                                         ; $4bd4: $3c
    ld b, d                                       ; $4bd5: $42
    ld b, b                                       ; $4bd6: $40
    ld [c], a                                     ; $4bd7: $e2
    jr nc, jr_073_4c09                            ; $4bd8: $30 $2f

    ld b, d                                       ; $4bda: $42
    ld [hl], d                                    ; $4bdb: $72
    add b                                         ; $4bdc: $80
    add b                                         ; $4bdd: $80
    ld h, $a6                                     ; $4bde: $26 $a6
    ld h, c                                       ; $4be0: $61
    ld a, a                                       ; $4be1: $7f
    pop hl                                        ; $4be2: $e1
    dec a                                         ; $4be3: $3d
    db $e4                                        ; $4be4: $e4
    or $c0                                        ; $4be5: $f6 $c0
    db $f4                                        ; $4be7: $f4
    ld e, d                                       ; $4be8: $5a
    ld e, d                                       ; $4be9: $5a
    jp Jump_000_3182                              ; $4bea: $c3 $82 $31


    ld sp, $4647                                  ; $4bed: $31 $47 $46
    add $7a                                       ; $4bf0: $c6 $7a
    ldh [rHDMA5], a                               ; $4bf2: $e0 $55
    ld d, h                                       ; $4bf4: $54
    pop bc                                        ; $4bf5: $c1
    ldh [$c0], a                                  ; $4bf6: $e0 $c0
    db $e4                                        ; $4bf8: $e4
    and [hl]                                      ; $4bf9: $a6
    add b                                         ; $4bfa: $80
    ld h, c                                       ; $4bfb: $61
    ld sp, $4983                                  ; $4bfc: $31 $83 $49
    ld [hl], $bf                                  ; $4bff: $36 $bf
    push hl                                       ; $4c01: $e5
    cp l                                          ; $4c02: $bd
    and d                                         ; $4c03: $a2
    nop                                           ; $4c04: $00
    or c                                          ; $4c05: $b1
    and a                                         ; $4c06: $a7
    add d                                         ; $4c07: $82
    cp h                                          ; $4c08: $bc

jr_073_4c09:
    add c                                         ; $4c09: $81
    and c                                         ; $4c0a: $a1
    ld hl, sp-$3b                                 ; $4c0b: $f8 $c5
    ldh [$fd], a                                  ; $4c0d: $e0 $fd
    ld [c], a                                     ; $4c0f: $e2
    ld b, b                                       ; $4c10: $40
    rst $20                                       ; $4c11: $e7
    ld sp, $6f70                                  ; $4c12: $31 $70 $6f
    ld l, [hl]                                    ; $4c15: $6e
    ld c, d                                       ; $4c16: $4a
    adc [hl]                                      ; $4c17: $8e
    ei                                            ; $4c18: $fb
    and c                                         ; $4c19: $a1
    ld b, h                                       ; $4c1a: $44

jr_073_4c1b:
    ld b, l                                       ; $4c1b: $45
    ld c, l                                       ; $4c1c: $4d
    ccf                                           ; $4c1d: $3f
    pop bc                                        ; $4c1e: $c1
    ld b, b                                       ; $4c1f: $40
    sub h                                         ; $4c20: $94
    inc a                                         ; $4c21: $3c
    add c                                         ; $4c22: $81
    ld h, b                                       ; $4c23: $60
    cp $c0                                        ; $4c24: $fe $c0
    rst $28                                       ; $4c26: $ef
    ld e, [hl]                                    ; $4c27: $5e
    ld sp, $ae70                                  ; $4c28: $31 $70 $ae
    add b                                         ; $4c2b: $80
    add b                                         ; $4c2c: $80
    ld a, b                                       ; $4c2d: $78
    rra                                           ; $4c2e: $1f
    ld a, l                                       ; $4c2f: $7d
    ld a, h                                       ; $4c30: $7c
    ld a, l                                       ; $4c31: $7d
    ld a, l                                       ; $4c32: $7d
    xor a                                         ; $4c33: $af
    add sp, -$7f                                  ; $4c34: $e8 $81
    ld b, b                                       ; $4c36: $40
    sub h                                         ; $4c37: $94
    ld h, [hl]                                    ; $4c38: $66
    add d                                         ; $4c39: $82
    inc h                                         ; $4c3a: $24
    inc de                                        ; $4c3b: $13
    ldh [$80], a                                  ; $4c3c: $e0 $80
    db $ed                                        ; $4c3e: $ed
    ld h, b                                       ; $4c3f: $60

Jump_073_4c40:
    pop bc                                        ; $4c40: $c1
    ld [c], a                                     ; $4c41: $e2
    ld l, e                                       ; $4c42: $6b
    db $e3                                        ; $4c43: $e3
    and c                                         ; $4c44: $a1
    ret nz                                        ; $4c45: $c0

    ld sp, hl                                     ; $4c46: $f9
    db $e4                                        ; $4c47: $e4
    ld h, e                                       ; $4c48: $63
    nop                                           ; $4c49: $00
    ret nz                                        ; $4c4a: $c0

    db $ed                                        ; $4c4b: $ed
    pop bc                                        ; $4c4c: $c1
    jp hl                                         ; $4c4d: $e9


    ret nz                                        ; $4c4e: $c0

    rst $30                                       ; $4c4f: $f7
    rst $38                                       ; $4c50: $ff
    rst $38                                       ; $4c51: $ff
    rst $38                                       ; $4c52: $ff
    rst $38                                       ; $4c53: $ff
    rst $38                                       ; $4c54: $ff
    rst $38                                       ; $4c55: $ff
    rst $38                                       ; $4c56: $ff
    rst $38                                       ; $4c57: $ff
    rst $38                                       ; $4c58: $ff
    rst $38                                       ; $4c59: $ff
    add b                                         ; $4c5a: $80
    rst $38                                       ; $4c5b: $ff
    rst $38                                       ; $4c5c: $ff
    rst $38                                       ; $4c5d: $ff
    rst $38                                       ; $4c5e: $ff
    rst $38                                       ; $4c5f: $ff
    rst $38                                       ; $4c60: $ff
    rst $38                                       ; $4c61: $ff
    rst $38                                       ; $4c62: $ff
    rst $38                                       ; $4c63: $ff
    rst $38                                       ; $4c64: $ff
    rst $38                                       ; $4c65: $ff
    rst $38                                       ; $4c66: $ff
    add sp, -$19                                  ; $4c67: $e8 $e7
    ld c, [hl]                                    ; $4c69: $4e
    ld d, a                                       ; $4c6a: $57
    ld c, [hl]                                    ; $4c6b: $4e
    ld c, [hl]                                    ; $4c6c: $4e
    adc h                                         ; $4c6d: $8c
    call nz, Call_000_3ca0                        ; $4c6e: $c4 $a0 $3c
    ld b, h                                       ; $4c71: $44
    and c                                         ; $4c72: $a1
    inc a                                         ; $4c73: $3c
    ld b, c                                       ; $4c74: $41
    ld b, b                                       ; $4c75: $40
    jp hl                                         ; $4c76: $e9


    adc h                                         ; $4c77: $8c

jr_073_4c78:
    rst $28                                       ; $4c78: $ef
    ldh [$ca], a                                  ; $4c79: $e0 $ca
    db $e3                                        ; $4c7b: $e3
    add hl, hl                                    ; $4c7c: $29
    ld a, [hl+]                                   ; $4c7d: $2a
    ld b, e                                       ; $4c7e: $43
    ld c, l                                       ; $4c7f: $4d
    ld a, [hl-]                                   ; $4c80: $3a
    ld d, h                                       ; $4c81: $54
    adc e                                         ; $4c82: $8b
    ld l, [hl]                                    ; $4c83: $6e
    ld a, c                                       ; $4c84: $79
    ld h, [hl]                                    ; $4c85: $66
    and c                                         ; $4c86: $a1
    add c                                         ; $4c87: $81
    and $46                                       ; $4c88: $e6 $46
    ret nz                                        ; $4c8a: $c0

    db $eb                                        ; $4c8b: $eb
    pop bc                                        ; $4c8c: $c1
    ld [c], a                                     ; $4c8d: $e2
    ld b, d                                       ; $4c8e: $42
    ld h, $3c                                     ; $4c8f: $26 $3c
    ld h, b                                       ; $4c91: $60
    ld l, d                                       ; $4c92: $6a
    ld b, d                                       ; $4c93: $42
    cp a                                          ; $4c94: $bf
    db $e4                                        ; $4c95: $e4
    adc d                                         ; $4c96: $8a
    db $e3                                        ; $4c97: $e3
    daa                                           ; $4c98: $27
    cp a                                          ; $4c99: $bf
    ld [c], a                                     ; $4c9a: $e2
    ld [hl+], a                                   ; $4c9b: $22
    add b                                         ; $4c9c: $80
    scf                                           ; $4c9d: $37
    ld l, h                                       ; $4c9e: $6c
    ld l, l                                       ; $4c9f: $6d
    ld [hl], c                                    ; $4ca0: $71

Jump_073_4ca1:
jr_073_4ca1:
    cp a                                          ; $4ca1: $bf
    pop hl                                        ; $4ca2: $e1
    xor c                                         ; $4ca3: $a9
    xor h                                         ; $4ca4: $ac
    ld h, [hl]                                    ; $4ca5: $66
    ld h, l                                       ; $4ca6: $65
    add b                                         ; $4ca7: $80
    ld [$c1de], a                                 ; $4ca8: $ea $de $c1
    db $e4                                        ; $4cab: $e4
    ld l, d                                       ; $4cac: $6a
    ld l, h                                       ; $4cad: $6c
    ld l, h                                       ; $4cae: $6c
    ld l, d                                       ; $4caf: $6a
    cp a                                          ; $4cb0: $bf
    db $e3                                        ; $4cb1: $e3
    ld e, h                                       ; $4cb2: $5c
    ld e, l                                       ; $4cb3: $5d
    ld [de], a                                    ; $4cb4: $12

jr_073_4cb5:
    ld c, d                                       ; $4cb5: $4a
    db $e3                                        ; $4cb6: $e3
    jr nz, jr_073_4c78                            ; $4cb7: $20 $bf

    pop hl                                        ; $4cb9: $e1
    db $e3                                        ; $4cba: $e3
    ld h, b                                       ; $4cbb: $60
    ld l, d                                       ; $4cbc: $6a
    and $40                                       ; $4cbd: $e6 $40
    cp a                                          ; $4cbf: $bf
    ld [c], a                                     ; $4cc0: $e2
    ld a, a                                       ; $4cc1: $7f
    ldh [$ee], a                                  ; $4cc2: $e0 $ee
    jr nc, jr_073_4cb5                            ; $4cc4: $30 $ef

    adc h                                         ; $4cc6: $8c
    ld e, d                                       ; $4cc7: $5a
    ld e, a                                       ; $4cc8: $5f
    ld b, h                                       ; $4cc9: $44
    add d                                         ; $4cca: $82
    ld l, e                                       ; $4ccb: $6b
    jr nc, jr_073_4cfe                            ; $4ccc: $30 $30

jr_073_4cce:
    ld hl, sp-$42                                 ; $4cce: $f8 $be
    ld h, b                                       ; $4cd0: $60
    ld a, [hl]                                    ; $4cd1: $7e
    pop hl                                        ; $4cd2: $e1
    ret nz                                        ; $4cd3: $c0

    ld h, h                                       ; $4cd4: $64
    or c                                          ; $4cd5: $b1
    jr nz, jr_073_4cf8                            ; $4cd6: $20 $20

    ld d, $29                                     ; $4cd8: $16 $29
    rla                                           ; $4cda: $17
    ld sp, $6d39                                  ; $4cdb: $31 $39 $6d
    and a                                         ; $4cde: $a7
    ldh [$6c], a                                  ; $4cdf: $e0 $6c
    cp a                                          ; $4ce1: $bf
    db $e3                                        ; $4ce2: $e3

Jump_073_4ce3:
    ld a, a                                       ; $4ce3: $7f
    ldh [rLCDC], a                                ; $4ce4: $e0 $40
    ld sp, $5e55                                  ; $4ce6: $31 $55 $5e
    ret nz                                        ; $4ce9: $c0

jr_073_4cea:
    db $ed                                        ; $4cea: $ed
    dec d                                         ; $4ceb: $15
    add b                                         ; $4cec: $80
    db $e4                                        ; $4ced: $e4
    jr nz, jr_073_4cf0                            ; $4cee: $20 $00

jr_073_4cf0:
    jr nz, jr_073_4d45                            ; $4cf0: $20 $53

    ret nz                                        ; $4cf2: $c0

    ld [c], a                                     ; $4cf3: $e2
    ld h, d                                       ; $4cf4: $62
    and d                                         ; $4cf5: $a2
    ldh [$83], a                                  ; $4cf6: $e0 $83

jr_073_4cf8:
    cp $c2                                        ; $4cf8: $fe $c2
    ret nz                                        ; $4cfa: $c0

    ld de, $4018                                  ; $4cfb: $11 $18 $40

jr_073_4cfe:
    add hl, sp                                    ; $4cfe: $39
    jr nc, jr_073_4d41                            ; $4cff: $30 $40

    db $e3                                        ; $4d01: $e3
    dec hl                                        ; $4d02: $2b
    ld l, c                                       ; $4d03: $69
    add hl, sp                                    ; $4d04: $39
    or $01                                        ; $4d05: $f6 $01
    rla                                           ; $4d07: $17
    ret nz                                        ; $4d08: $c0

    add sp, $52                                   ; $4d09: $e8 $52
    add e                                         ; $4d0b: $83
    jr nz, jr_073_4cce                            ; $4d0c: $20 $c0

    ld [c], a                                     ; $4d0e: $e2
    sub e                                         ; $4d0f: $93
    ld c, b                                       ; $4d10: $48
    add h                                         ; $4d11: $84
    cp $c1                                        ; $4d12: $fe $c1
    ret nz                                        ; $4d14: $c0

    ld [de], a                                    ; $4d15: $12
    ld e, [hl]                                    ; $4d16: $5e
    ret c                                         ; $4d17: $d8

    jr nz, jr_073_4d57                            ; $4d18: $20 $3d

    ld b, c                                       ; $4d1a: $41
    ld l, d                                       ; $4d1b: $6a
    db $f4                                        ; $4d1c: $f4
    reti                                          ; $4d1d: $d9


    jr nz, jr_073_4ca1                            ; $4d1e: $20 $81

    pop hl                                        ; $4d20: $e1
    ld d, $40                                     ; $4d21: $16 $40
    push hl                                       ; $4d23: $e5
    ld a, [bc]                                    ; $4d24: $0a
    dec bc                                        ; $4d25: $0b
    ld c, c                                       ; $4d26: $49
    ld c, b                                       ; $4d27: $48
    pop bc                                        ; $4d28: $c1
    jr nc, jr_073_4cea                            ; $4d29: $30 $bf

    pop hl                                        ; $4d2b: $e1
    cp l                                          ; $4d2c: $bd
    nop                                           ; $4d2d: $00
    ld a, a                                       ; $4d2e: $7f
    db $e3                                        ; $4d2f: $e3
    add b                                         ; $4d30: $80
    ld de, $c0ff                                  ; $4d31: $11 $ff $c0
    ld sp, $d539                                  ; $4d34: $31 $39 $d5
    ld h, a                                       ; $4d37: $67
    ld a, l                                       ; $4d38: $7d
    ld hl, $8167                                  ; $4d39: $21 $67 $81
    db $e3                                        ; $4d3c: $e3
    jr z, jr_073_4d40                             ; $4d3d: $28 $01

    ld [c], a                                     ; $4d3f: $e2

jr_073_4d40:
    or c                                          ; $4d40: $b1

jr_073_4d41:
    ld a, [bc]                                    ; $4d41: $0a
    ld d, c                                       ; $4d42: $51
    dec bc                                        ; $4d43: $0b
    ld h, a                                       ; $4d44: $67

jr_073_4d45:
    pop hl                                        ; $4d45: $e1

Jump_073_4d46:
    jp hl                                         ; $4d46: $e9


    pop bc                                        ; $4d47: $c1
    rst $38                                       ; $4d48: $ff
    pop bc                                        ; $4d49: $c1
    ld l, l                                       ; $4d4a: $6d
    ccf                                           ; $4d4b: $3f
    pop hl                                        ; $4d4c: $e1
    xor c                                         ; $4d4d: $a9
    ld b, b                                       ; $4d4e: $40
    ld [de], a                                    ; $4d4f: $12
    ld h, [hl]                                    ; $4d50: $66
    ld a, a                                       ; $4d51: $7f
    nop                                           ; $4d52: $00
    add hl, sp                                    ; $4d53: $39
    ld h, l                                       ; $4d54: $65
    rst $38                                       ; $4d55: $ff
    ld [c], a                                     ; $4d56: $e2

jr_073_4d57:
    ld b, c                                       ; $4d57: $41
    ld [c], a                                     ; $4d58: $e2
    dec hl                                        ; $4d59: $2b
    db $10                                        ; $4d5a: $10
    ld h, $25                                     ; $4d5b: $26 $25
    rlca                                          ; $4d5d: $07
    ld b, a                                       ; $4d5e: $47
    ld b, [hl]                                    ; $4d5f: $46
    ld b, d                                       ; $4d60: $42
    ld h, a                                       ; $4d61: $67
    ld b, b                                       ; $4d62: $40
    cp [hl]                                       ; $4d63: $be
    jp $c23d                                      ; $4d64: $c3 $3d $c2


    and $44                                       ; $4d67: $e6 $44
    add b                                         ; $4d69: $80
    ld l, d                                       ; $4d6a: $6a
    sub [hl]                                      ; $4d6b: $96
    ld b, [hl]                                    ; $4d6c: $46
    ld h, c                                       ; $4d6d: $61
    ld c, c                                       ; $4d6e: $49
    ld c, b                                       ; $4d6f: $48
    inc a                                         ; $4d70: $3c
    ld hl, $586a                                  ; $4d71: $21 $6a $58
    nop                                           ; $4d74: $00
    ret nz                                        ; $4d75: $c0

    db $e3                                        ; $4d76: $e3
    or c                                          ; $4d77: $b1
    rst $38                                       ; $4d78: $ff
    or c                                          ; $4d79: $b1
    or c                                          ; $4d7a: $b1
    nop                                           ; $4d7b: $00
    nop                                           ; $4d7c: $00
    ld c, l                                       ; $4d7d: $4d
    ld b, [hl]                                    ; $4d7e: $46
    ld [hl], $30                                  ; $4d7f: $36 $30
    nop                                           ; $4d81: $00
    and a                                         ; $4d82: $a7
    ld [hl+], a                                   ; $4d83: $22
    ld h, h                                       ; $4d84: $64
    ld bc, $e3c1                                  ; $4d85: $01 $c1 $e3
    ret nz                                        ; $4d88: $c0

    ldh a, [$08]                                  ; $4d89: $f0 $08
    ld h, b                                       ; $4d8b: $60
    ret nz                                        ; $4d8c: $c0

    ret nz                                        ; $4d8d: $c0

    inc a                                         ; $4d8e: $3c
    jr nz, jr_073_4d91                            ; $4d8f: $20 $00

jr_073_4d91:
    pop bc                                        ; $4d91: $c1
    ld bc, $c06d                                  ; $4d92: $01 $6d $c0
    pop bc                                        ; $4d95: $c1
    add b                                         ; $4d96: $80
    push hl                                       ; $4d97: $e5
    ld b, h                                       ; $4d98: $44
    ldh [$aa], a                                  ; $4d99: $e0 $aa
    ld [c], a                                     ; $4d9b: $e2
    pop bc                                        ; $4d9c: $c1
    add sp, -$80                                  ; $4d9d: $e8 $80
    ldh a, [rLY]                                  ; $4d9f: $f0 $44
    ld b, e                                       ; $4da1: $43
    inc h                                         ; $4da2: $24
    ld e, c                                       ; $4da3: $59
    nop                                           ; $4da4: $00
    nop                                           ; $4da5: $00
    pop bc                                        ; $4da6: $c1
    ld l, e                                       ; $4da7: $6b
    ld a, [hl]                                    ; $4da8: $7e
    and c                                         ; $4da9: $a1
    ld b, b                                       ; $4daa: $40
    push hl                                       ; $4dab: $e5
    ld d, e                                       ; $4dac: $53
    adc c                                         ; $4dad: $89
    jr nz, @+$48                                  ; $4dae: $20 $46

    ldh [$9f], a                                  ; $4db0: $e0 $9f
    ld [hl], $6e                                  ; $4db2: $36 $6e
    ld a, h                                       ; $4db4: $7c
    ld a, l                                       ; $4db5: $7d
    ld a, h                                       ; $4db6: $7c
    pop bc                                        ; $4db7: $c1
    db $e4                                        ; $4db8: $e4
    ld b, b                                       ; $4db9: $40
    ldh a, [rNR12]                                ; $4dba: $f0 $12
    push af                                       ; $4dbc: $f5
    ld de, $f5c0                                  ; $4dbd: $11 $c0 $f5
    ld d, d                                       ; $4dc0: $52
    add $c2                                       ; $4dc1: $c6 $c2
    ld [hl-], a                                   ; $4dc3: $32
    ld b, a                                       ; $4dc4: $47
    ld [hl], b                                    ; $4dc5: $70
    xor d                                         ; $4dc6: $aa
    inc e                                         ; $4dc7: $1c
    ld a, [hl-]                                   ; $4dc8: $3a
    ld h, [hl]                                    ; $4dc9: $66
    nop                                           ; $4dca: $00
    ldh a, [rNR41]                                ; $4dcb: $f0 $20
    ld d, $15                                     ; $4dcd: $16 $15
    jp $4021                                      ; $4dcf: $c3 $21 $40


    and a                                         ; $4dd2: $a7
    ld b, b                                       ; $4dd3: $40
    add sp, -$34                                  ; $4dd4: $e8 $cc
    add [hl]                                      ; $4dd6: $86
    ret nz                                        ; $4dd7: $c0

    ld l, $c1                                     ; $4dd8: $2e $c1
    xor e                                         ; $4dda: $ab
    ld e, b                                       ; $4ddb: $58
    cp [hl]                                       ; $4ddc: $be
    and $c0                                       ; $4ddd: $e6 $c0
    ldh a, [$28]                                  ; $4ddf: $f0 $28
    rla                                           ; $4de1: $17
    ld l, a                                       ; $4de2: $6f
    ld sp, $8131                                  ; $4de3: $31 $31 $81
    ld [hl], d                                    ; $4de6: $72
    ret nz                                        ; $4de7: $c0

    add e                                         ; $4de8: $83
    ld [hl], d                                    ; $4de9: $72
    add c                                         ; $4dea: $81
    add b                                         ; $4deb: $80
    ret z                                         ; $4dec: $c8

    ldh [$c0], a                                  ; $4ded: $e0 $c0
    pop bc                                        ; $4def: $c1
    jp z, Jump_073_6d20                           ; $4df0: $ca $20 $6d

    pop bc                                        ; $4df3: $c1
    cp [hl]                                       ; $4df4: $be
    and $80                                       ; $4df5: $e6 $80
    ldh a, [rNR41]                                ; $4df7: $f0 $20
    dec hl                                        ; $4df9: $2b
    ld sp, $acff                                  ; $4dfa: $31 $ff $ac
    xor c                                         ; $4dfd: $a9
    add b                                         ; $4dfe: $80
    ld [hl], d                                    ; $4dff: $72
    ld d, l                                       ; $4e00: $55
    ld d, h                                       ; $4e01: $54
    ld d, h                                       ; $4e02: $54
    ld d, l                                       ; $4e03: $55
    ld a, c                                       ; $4e04: $79
    ld [hl], d                                    ; $4e05: $72
    sbc h                                         ; $4e06: $9c
    add c                                         ; $4e07: $81
    ld b, b                                       ; $4e08: $40
    jp z, Jump_073_4d46                           ; $4e09: $ca $46 $4d

    ld sp, $6331                                  ; $4e0c: $31 $31 $63
    ld hl, $7c04                                  ; $4e0f: $21 $04 $7c
    push hl                                       ; $4e12: $e5
    ret nz                                        ; $4e13: $c0

    di                                            ; $4e14: $f3
    add c                                         ; $4e15: $81
    rra                                           ; $4e16: $1f
    rst $20                                       ; $4e17: $e7
    ld a, a                                       ; $4e18: $7f
    ldh [rP1], a                                  ; $4e19: $e0 $00
    push bc                                       ; $4e1b: $c5
    jp hl                                         ; $4e1c: $e9


    and b                                         ; $4e1d: $a0
    pop af                                        ; $4e1e: $f1
    and c                                         ; $4e1f: $a1
    ld bc, $6360                                  ; $4e20: $01 $60 $63
    inc hl                                        ; $4e23: $23
    ld a, [hl-]                                   ; $4e24: $3a
    db $e3                                        ; $4e25: $e3
    add b                                         ; $4e26: $80
    ld a, [c]                                     ; $4e27: $f2
    add c                                         ; $4e28: $81
    ldh [rNR23], a                                ; $4e29: $e0 $18
    ld b, [hl]                                    ; $4e2b: $46
    dec de                                        ; $4e2c: $1b
    add b                                         ; $4e2d: $80
    ret nz                                        ; $4e2e: $c0

    and l                                         ; $4e2f: $a5
    ld b, $2c                                     ; $4e30: $06 $2c
    ld [hl+], a                                   ; $4e32: $22
    ld e, l                                       ; $4e33: $5d
    ld e, h                                       ; $4e34: $5c
    ld hl, $f826                                  ; $4e35: $21 $26 $f8
    pop bc                                        ; $4e38: $c1
    ld [hl], b                                    ; $4e39: $70
    ld a, a                                       ; $4e3a: $7f
    rst $38                                       ; $4e3b: $ff
    rst $38                                       ; $4e3c: $ff
    rst $38                                       ; $4e3d: $ff
    rst $38                                       ; $4e3e: $ff
    nop                                           ; $4e3f: $00
    rst $38                                       ; $4e40: $ff
    rst $38                                       ; $4e41: $ff
    rst $38                                       ; $4e42: $ff
    rst $38                                       ; $4e43: $ff
    rst $38                                       ; $4e44: $ff
    rst $38                                       ; $4e45: $ff
    rst $38                                       ; $4e46: $ff
    rst $38                                       ; $4e47: $ff
    rst $38                                       ; $4e48: $ff
    rst $38                                       ; $4e49: $ff
    rst $38                                       ; $4e4a: $ff
    rst $38                                       ; $4e4b: $ff
    rst $38                                       ; $4e4c: $ff
    rst $38                                       ; $4e4d: $ff
    rst $38                                       ; $4e4e: $ff
    rst $38                                       ; $4e4f: $ff
    nop                                           ; $4e50: $00
    rst $38                                       ; $4e51: $ff
    rst $38                                       ; $4e52: $ff
    rst $38                                       ; $4e53: $ff
    rst $38                                       ; $4e54: $ff
    rst $38                                       ; $4e55: $ff
    rst $38                                       ; $4e56: $ff
    rst $38                                       ; $4e57: $ff
    rst $38                                       ; $4e58: $ff
    rst $38                                       ; $4e59: $ff
    rst $38                                       ; $4e5a: $ff
    rst $38                                       ; $4e5b: $ff
    rst $38                                       ; $4e5c: $ff
    rst $38                                       ; $4e5d: $ff
    rst $38                                       ; $4e5e: $ff
    rst $38                                       ; $4e5f: $ff
    rst $38                                       ; $4e60: $ff
    nop                                           ; $4e61: $00
    rst $38                                       ; $4e62: $ff
    rst $38                                       ; $4e63: $ff
    rst $38                                       ; $4e64: $ff
    rst $38                                       ; $4e65: $ff
    rst $38                                       ; $4e66: $ff
    rst $38                                       ; $4e67: $ff
    rst $38                                       ; $4e68: $ff
    rst $38                                       ; $4e69: $ff
    rst $38                                       ; $4e6a: $ff
    rst $38                                       ; $4e6b: $ff
    rst $38                                       ; $4e6c: $ff
    rst $38                                       ; $4e6d: $ff
    rst $38                                       ; $4e6e: $ff
    rst $38                                       ; $4e6f: $ff
    rst $38                                       ; $4e70: $ff
    rst $38                                       ; $4e71: $ff
    nop                                           ; $4e72: $00
    rst $38                                       ; $4e73: $ff
    rst $38                                       ; $4e74: $ff
    rst $38                                       ; $4e75: $ff
    rst $38                                       ; $4e76: $ff
    rst $38                                       ; $4e77: $ff
    rst $38                                       ; $4e78: $ff
    rst $38                                       ; $4e79: $ff
    rst $38                                       ; $4e7a: $ff
    rst $38                                       ; $4e7b: $ff
    rst $38                                       ; $4e7c: $ff
    rst $38                                       ; $4e7d: $ff
    rst $38                                       ; $4e7e: $ff
    rst $38                                       ; $4e7f: $ff
    rst $38                                       ; $4e80: $ff
    rst $38                                       ; $4e81: $ff
    rst $38                                       ; $4e82: $ff
    nop                                           ; $4e83: $00
    rst $38                                       ; $4e84: $ff
    rst $38                                       ; $4e85: $ff
    rst $38                                       ; $4e86: $ff
    rst $38                                       ; $4e87: $ff
    rst $38                                       ; $4e88: $ff
    rst $38                                       ; $4e89: $ff
    add b                                         ; $4e8a: $80
    inc bc                                        ; $4e8b: $03
    nop                                           ; $4e8c: $00
    nop                                           ; $4e8d: $00
    nop                                           ; $4e8e: $00
    ld h, c                                       ; $4e8f: $61
    inc c                                         ; $4e90: $0c
    rst $38                                       ; $4e91: $ff
    rst $38                                       ; $4e92: $ff
    rst $38                                       ; $4e93: $ff
    rst $38                                       ; $4e94: $ff
    rst $38                                       ; $4e95: $ff
    rst $38                                       ; $4e96: $ff
    rst $30                                       ; $4e97: $f7
    or $0a                                        ; $4e98: $f6 $0a
    dec bc                                        ; $4e9a: $0b
    rst $38                                       ; $4e9b: $ff
    jp hl                                         ; $4e9c: $e9


    di                                            ; $4e9d: $f3
    dec hl                                        ; $4e9e: $2b
    dec hl                                        ; $4e9f: $2b
    pop af                                        ; $4ea0: $f1
    pop hl                                        ; $4ea1: $e1
    jp z, Jump_073_4ce3                           ; $4ea2: $ca $e3 $4c

    ld c, h                                       ; $4ea5: $4c
    ld c, h                                       ; $4ea6: $4c
    inc c                                         ; $4ea7: $0c
    ld a, d                                       ; $4ea8: $7a
    db $e3                                        ; $4ea9: $e3
    ldh [rOCPD], a                                ; $4eaa: $e0 $6b
    rst $18                                       ; $4eac: $df
    ldh [rWX], a                                  ; $4ead: $e0 $4b
    dec bc                                        ; $4eaf: $0b
    ld c, e                                       ; $4eb0: $4b
    ld a, [hl+]                                   ; $4eb1: $2a
    ret c                                         ; $4eb2: $d8

    ld [c], a                                     ; $4eb3: $e2
    ld e, b                                       ; $4eb4: $58
    or b                                          ; $4eb5: $b0
    rst $28                                       ; $4eb6: $ef
    pop bc                                        ; $4eb7: $c1
    ld [$e1be], a                                 ; $4eb8: $ea $be $e1

jr_073_4ebb:
    ld a, [bc]                                    ; $4ebb: $0a
    ld a, [bc]                                    ; $4ebc: $0a
    ret nz                                        ; $4ebd: $c0

    db $e4                                        ; $4ebe: $e4
    inc l                                         ; $4ebf: $2c
    ret nz                                        ; $4ec0: $c0

    ld [c], a                                     ; $4ec1: $e2
    dec h                                         ; $4ec2: $25
    ld l, e                                       ; $4ec3: $6b
    rst $38                                       ; $4ec4: $ff
    ldh [rWX], a                                  ; $4ec5: $e0 $4b
    ret nz                                        ; $4ec7: $c0

    ldh [$a6], a                                  ; $4ec8: $e0 $a6
    pop hl                                        ; $4eca: $e1
    ld a, [hl+]                                   ; $4ecb: $2a
    ret nz                                        ; $4ecc: $c0

    pop af                                        ; $4ecd: $f1
    ld a, a                                       ; $4ece: $7f
    db $e3                                        ; $4ecf: $e3
    ld e, b                                       ; $4ed0: $58
    call c, $fee0                                 ; $4ed1: $dc $e0 $fe
    ld [c], a                                     ; $4ed4: $e2
    ld a, l                                       ; $4ed5: $7d
    ldh [$0b], a                                  ; $4ed6: $e0 $0b
    ld a, [bc]                                    ; $4ed8: $0a
    ld c, d                                       ; $4ed9: $4a
    db $e3                                        ; $4eda: $e3
    ld c, e                                       ; $4edb: $4b
    add b                                         ; $4edc: $80
    pop hl                                        ; $4edd: $e1
    rlca                                          ; $4ede: $07
    ld l, e                                       ; $4edf: $6b
    ld l, e                                       ; $4ee0: $6b
    dec hl                                        ; $4ee1: $2b
    ret nz                                        ; $4ee2: $c0

    pop hl                                        ; $4ee3: $e1
    add sp, -$20                                  ; $4ee4: $e8 $e0
    add b                                         ; $4ee6: $80
    db $f4                                        ; $4ee7: $f4
    ld b, b                                       ; $4ee8: $40
    pop hl                                        ; $4ee9: $e1
    sbc [hl]                                      ; $4eea: $9e
    ldh [$ec], a                                  ; $4eeb: $e0 $ec
    ld a, [hl-]                                   ; $4eed: $3a
    db $e4                                        ; $4eee: $e4
    cp a                                          ; $4eef: $bf
    pop hl                                        ; $4ef0: $e1
    ld c, e                                       ; $4ef1: $4b
    dec hl                                        ; $4ef2: $2b
    ret nz                                        ; $4ef3: $c0

    db $e4                                        ; $4ef4: $e4
    inc l                                         ; $4ef5: $2c
    ld c, h                                       ; $4ef6: $4c
    inc c                                         ; $4ef7: $0c
    jr z, jr_073_4ebb                             ; $4ef8: $28 $c1

    ldh [$c0], a                                  ; $4efa: $e0 $c0
    ld [c], a                                     ; $4efc: $e2
    dec de                                        ; $4efd: $1b
    db $e4                                        ; $4efe: $e4
    ld a, [hl+]                                   ; $4eff: $2a
    ld b, b                                       ; $4f00: $40
    ld a, [c]                                     ; $4f01: $f2
    ld l, e                                       ; $4f02: $6b
    dec e                                         ; $4f03: $1d
    pop hl                                        ; $4f04: $e1
    cp a                                          ; $4f05: $bf
    rst $20                                       ; $4f06: $e7
    sbc [hl]                                      ; $4f07: $9e
    ret nz                                        ; $4f08: $c0

    push hl                                       ; $4f09: $e5
    dec hl                                        ; $4f0a: $2b
    dec bc                                        ; $4f0b: $0b
    inc c                                         ; $4f0c: $0c
    dec hl                                        ; $4f0d: $2b
    pop bc                                        ; $4f0e: $c1
    ldh [$80], a                                  ; $4f0f: $e0 $80
    db $e4                                        ; $4f11: $e4
    ld c, e                                       ; $4f12: $4b
    inc bc                                        ; $4f13: $03
    dec bc                                        ; $4f14: $0b
    ld a, [hl+]                                   ; $4f15: $2a
    db $fd                                        ; $4f16: $fd
    ret nz                                        ; $4f17: $c0

    nop                                           ; $4f18: $00
    pop af                                        ; $4f19: $f1
    pop bc                                        ; $4f1a: $c1
    jp hl                                         ; $4f1b: $e9


    push de                                       ; $4f1c: $d5
    pop bc                                        ; $4f1d: $c1
    sbc d                                         ; $4f1e: $9a
    push hl                                       ; $4f1f: $e5
    or l                                          ; $4f20: $b5
    ret nz                                        ; $4f21: $c0

    nop                                           ; $4f22: $00
    add c                                         ; $4f23: $81
    pop hl                                        ; $4f24: $e1
    ld b, b                                       ; $4f25: $40
    db $e3                                        ; $4f26: $e3
    ld h, $e1                                     ; $4f27: $26 $e1
    ret nz                                        ; $4f29: $c0

    di                                            ; $4f2a: $f3
    sbc h                                         ; $4f2b: $9c
    pop hl                                        ; $4f2c: $e1
    add d                                         ; $4f2d: $82
    add sp, $7f                                   ; $4f2e: $e8 $7f
    ret nz                                        ; $4f30: $c0

    ld b, b                                       ; $4f31: $40
    push hl                                       ; $4f32: $e5
    ld bc, $712b                                  ; $4f33: $01 $2b $71
    ret nz                                        ; $4f36: $c0

    add b                                         ; $4f37: $80
    db $e4                                        ; $4f38: $e4
    ld a, [hl]                                    ; $4f39: $7e
    pop bc                                        ; $4f3a: $c1
    add b                                         ; $4f3b: $80
    push de                                       ; $4f3c: $d5
    db $db                                        ; $4f3d: $db
    pop hl                                        ; $4f3e: $e1
    ld [bc], a                                    ; $4f3f: $02
    push hl                                       ; $4f40: $e5
    ret nz                                        ; $4f41: $c0

    ldh [rP1], a                                  ; $4f42: $e0 $00
    ld d, h                                       ; $4f44: $54
    ret nz                                        ; $4f45: $c0

    and [hl]                                      ; $4f46: $a6
    push hl                                       ; $4f47: $e5
    ret nz                                        ; $4f48: $c0

    and $e5                                       ; $4f49: $e6 $e5
    ld [c], a                                     ; $4f4b: $e2
    ld a, $c1                                     ; $4f4c: $3e $c1
    add b                                         ; $4f4e: $80
    pop af                                        ; $4f4f: $f1
    ret nz                                        ; $4f50: $c0

    rst $20                                       ; $4f51: $e7
    cp a                                          ; $4f52: $bf
    ld [c], a                                     ; $4f53: $e2
    nop                                           ; $4f54: $00
    ret nz                                        ; $4f55: $c0

    ldh a, [$28]                                  ; $4f56: $f0 $28
    db $e3                                        ; $4f58: $e3
    ld a, h                                       ; $4f59: $7c
    pop bc                                        ; $4f5a: $c1
    or b                                          ; $4f5b: $b0
    xor a                                         ; $4f5c: $af
    ld e, l                                       ; $4f5d: $5d
    ld [c], a                                     ; $4f5e: $e2
    ret nz                                        ; $4f5f: $c0

    jp hl                                         ; $4f60: $e9


    cp [hl]                                       ; $4f61: $be
    and b                                         ; $4f62: $a0
    ret nz                                        ; $4f63: $c0

    ld a, [c]                                     ; $4f64: $f2
    ld h, b                                       ; $4f65: $60
    ei                                            ; $4f66: $fb
    and b                                         ; $4f67: $a0
    nop                                           ; $4f68: $00
    pop de                                        ; $4f69: $d1
    add c                                         ; $4f6a: $81
    and $1d                                       ; $4f6b: $e6 $1d
    pop bc                                        ; $4f6d: $c1
    ret nz                                        ; $4f6e: $c0

    ld [$2a4b], a                                 ; $4f6f: $ea $4b $2a
    ld a, a                                       ; $4f72: $7f
    rst $28                                       ; $4f73: $ef
    nop                                           ; $4f74: $00
    ld b, b                                       ; $4f75: $40
    or b                                          ; $4f76: $b0
    jp c, Jump_000_06c1                           ; $4f77: $da $c1 $06

    call nz, $ecc0                                ; $4f7a: $c4 $c0 $ec
    cp a                                          ; $4f7d: $bf
    push bc                                       ; $4f7e: $c5
    ld a, $e3                                     ; $4f7f: $3e $e3
    and e                                         ; $4f81: $a3
    and d                                         ; $4f82: $a2
    add b                                         ; $4f83: $80
    pop de                                        ; $4f84: $d1
    ld b, b                                       ; $4f85: $40
    ld b, $a4                                     ; $4f86: $06 $a4
    add b                                         ; $4f88: $80
    db $e4                                        ; $4f89: $e4
    di                                            ; $4f8a: $f3
    and c                                         ; $4f8b: $a1
    nop                                           ; $4f8c: $00
    push bc                                       ; $4f8d: $c5
    cp a                                          ; $4f8e: $bf
    db $eb                                        ; $4f8f: $eb
    add b                                         ; $4f90: $80
    or h                                          ; $4f91: $b4
    ld a, [bc]                                    ; $4f92: $0a
    ld c, b                                       ; $4f93: $48
    and l                                         ; $4f94: $a5
    ld a, [bc]                                    ; $4f95: $0a
    ld a, [hl-]                                   ; $4f96: $3a
    jp Jump_000_006b                              ; $4f97: $c3 $6b $00


    and $2a                                       ; $4f9a: $e6 $2a
    ret nz                                        ; $4f9c: $c0

    rst $20                                       ; $4f9d: $e7
    cp a                                          ; $4f9e: $bf
    push hl                                       ; $4f9f: $e5
    ld h, $a4                                     ; $4fa0: $26 $a4
    nop                                           ; $4fa2: $00
    or b                                          ; $4fa3: $b0
    nop                                           ; $4fa4: $00
    ld b, $a3                                     ; $4fa5: $06 $a3
    ld a, [de]                                    ; $4fa7: $1a
    xor d                                         ; $4fa8: $aa
    add l                                         ; $4fa9: $85
    add d                                         ; $4faa: $82
    ld a, a                                       ; $4fab: $7f
    and c                                         ; $4fac: $a1
    rra                                           ; $4fad: $1f
    push bc                                       ; $4fae: $c5
    ld d, l                                       ; $4faf: $55
    add b                                         ; $4fb0: $80
    ld b, b                                       ; $4fb1: $40
    sbc b                                         ; $4fb2: $98
    push bc                                       ; $4fb3: $c5
    and d                                         ; $4fb4: $a2
    nop                                           ; $4fb5: $00
    ei                                            ; $4fb6: $fb
    add e                                         ; $4fb7: $83
    ret nz                                        ; $4fb8: $c0

    rst $20                                       ; $4fb9: $e7
    dec h                                         ; $4fba: $25
    and b                                         ; $4fbb: $a0
    and [hl]                                      ; $4fbc: $a6
    add e                                         ; $4fbd: $83
    sbc l                                         ; $4fbe: $9d
    and h                                         ; $4fbf: $a4
    ld b, b                                       ; $4fc0: $40
    sub l                                         ; $4fc1: $95
    ld a, [$1660]                                 ; $4fc2: $fa $60 $16
    and b                                         ; $4fc5: $a0
    db $10                                        ; $4fc6: $10
    ld a, h                                       ; $4fc7: $7c
    add h                                         ; $4fc8: $84
    ret nz                                        ; $4fc9: $c0

    and h                                         ; $4fca: $a4
    ld [hl], h                                    ; $4fcb: $74
    add b                                         ; $4fcc: $80
    ld b, h                                       ; $4fcd: $44
    add c                                         ; $4fce: $81
    dec hl                                        ; $4fcf: $2b
    cp e                                          ; $4fd0: $bb
    ld [c], a                                     ; $4fd1: $e2
    and d                                         ; $4fd2: $a2
    and e                                         ; $4fd3: $a3
    and [hl]                                      ; $4fd4: $a6
    and h                                         ; $4fd5: $a4
    nop                                           ; $4fd6: $00
    nop                                           ; $4fd7: $00
    adc l                                         ; $4fd8: $8d
    cp h                                          ; $4fd9: $bc
    ld h, d                                       ; $4fda: $62
    ret nz                                        ; $4fdb: $c0

    xor $a7                                       ; $4fdc: $ee $a7
    add d                                         ; $4fde: $82
    ret nz                                        ; $4fdf: $c0

    ld [c], a                                     ; $4fe0: $e2
    cp e                                          ; $4fe1: $bb
    ld h, h                                       ; $4fe2: $64
    ret nz                                        ; $4fe3: $c0

    ld a, [c]                                     ; $4fe4: $f2
    rst $38                                       ; $4fe5: $ff
    rst $38                                       ; $4fe6: $ff
    nop                                           ; $4fe7: $00
    rst $38                                       ; $4fe8: $ff
    rst $38                                       ; $4fe9: $ff
    rst $38                                       ; $4fea: $ff
    rst $38                                       ; $4feb: $ff
    rst $38                                       ; $4fec: $ff
    rst $38                                       ; $4fed: $ff
    rst $38                                       ; $4fee: $ff
    rst $38                                       ; $4fef: $ff
    rst $38                                       ; $4ff0: $ff
    rst $38                                       ; $4ff1: $ff
    rst $38                                       ; $4ff2: $ff
    rst $38                                       ; $4ff3: $ff
    rst $38                                       ; $4ff4: $ff
    rst $38                                       ; $4ff5: $ff
    rst $38                                       ; $4ff6: $ff
    rst $38                                       ; $4ff7: $ff
    ld a, b                                       ; $4ff8: $78
    rst $38                                       ; $4ff9: $ff
    rst $38                                       ; $4ffa: $ff
    rst $38                                       ; $4ffb: $ff
    rst $38                                       ; $4ffc: $ff
    add sp, -$19                                  ; $4ffd: $e8 $e7
    ld c, d                                       ; $4fff: $4a
    ld c, d                                       ; $5000: $4a
    ld c, d                                       ; $5001: $4a
    ld l, d                                       ; $5002: $6a
    add b                                         ; $5003: $80
    ld b, [hl]                                    ; $5004: $46
    ld e, $ff                                     ; $5005: $1e $ff
    jr nz, jr_073_5053                            ; $5007: $20 $4a

    ld l, d                                       ; $5009: $6a
    ld l, d                                       ; $500a: $6a
    ld l, d                                       ; $500b: $6a
    ld b, b                                       ; $500c: $40
    ld b, h                                       ; $500d: $44
    and $23                                       ; $500e: $e6 $23
    ld b, c                                       ; $5010: $41
    ld b, c                                       ; $5011: $41
    inc b                                         ; $5012: $04
    and $a1                                       ; $5013: $e6 $a1
    ld h, a                                       ; $5015: $67
    ld b, b                                       ; $5016: $40
    ld c, e                                       ; $5017: $4b
    nop                                           ; $5018: $00
    ld d, b                                       ; $5019: $50
    pop bc                                        ; $501a: $c1
    db $e4                                        ; $501b: $e4
    cp c                                          ; $501c: $b9
    add d                                         ; $501d: $82
    cp h                                          ; $501e: $bc
    add c                                         ; $501f: $81
    cp a                                          ; $5020: $bf
    pop hl                                        ; $5021: $e1
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    ld b, h                                       ; $5024: $44
    cp a                                          ; $5025: $bf
    ld [c], a                                     ; $5026: $e2
    ld [bc], a                                    ; $5027: $02
    ld b, c                                       ; $5028: $41
    ld a, e                                       ; $5029: $7b
    ld b, b                                       ; $502a: $40
    ld a, l                                       ; $502b: $7d
    and c                                         ; $502c: $a1
    ld h, [hl]                                    ; $502d: $66
    ld h, [hl]                                    ; $502e: $66
    add b                                         ; $502f: $80
    ld [$e4c1], a                                 ; $5030: $ea $c1 $e4
    nop                                           ; $5033: $00
    add a                                         ; $5034: $87
    ld [hl+], a                                   ; $5035: $22
    cp a                                          ; $5036: $bf
    ld [c], a                                     ; $5037: $e2
    sbc d                                         ; $5038: $9a
    ld h, $bf                                     ; $5039: $26 $bf
    pop hl                                        ; $503b: $e1
    inc bc                                        ; $503c: $03
    ld b, d                                       ; $503d: $42
    ld a, [hl-]                                   ; $503e: $3a
    ld b, c                                       ; $503f: $41
    cp l                                          ; $5040: $bd
    ld hl, $f1c0                                  ; $5041: $21 $c0 $f1
    ld b, e                                       ; $5044: $43
    ld l, d                                       ; $5045: $6a
    ld a, [bc]                                    ; $5046: $0a
    ld h, d                                       ; $5047: $62
    and c                                         ; $5048: $a1
    db $fd                                        ; $5049: $fd
    ld b, l                                       ; $504a: $45
    ld a, [hl-]                                   ; $504b: $3a
    add d                                         ; $504c: $82
    ld b, b                                       ; $504d: $40
    inc hl                                        ; $504e: $23
    ld [$e27e], sp                                ; $504f: $08 $7e $e2
    add b                                         ; $5052: $80

jr_073_5053:
    xor b                                         ; $5053: $a8
    inc hl                                        ; $5054: $23
    ld sp, hl                                     ; $5055: $f9
    ld hl, $821d                                  ; $5056: $21 $1d $82
    ret nz                                        ; $5059: $c0

    ld d, d                                       ; $505a: $52
    call z, $bd40                                 ; $505b: $cc $40 $bd
    ld b, l                                       ; $505e: $45
    or $22                                        ; $505f: $f6 $22
    ld l, h                                       ; $5061: $6c
    nop                                           ; $5062: $00
    ld [hl+], a                                   ; $5063: $22
    dec hl                                        ; $5064: $2b
    jp nz, Jump_000_0481                          ; $5065: $c2 $81 $04

    pop hl                                        ; $5068: $e1
    ld h, l                                       ; $5069: $65
    ld hl, $11c0                                  ; $506a: $21 $c0 $11
    ld c, [hl]                                    ; $506d: $4e
    ld b, c                                       ; $506e: $41
    ld e, b                                       ; $506f: $58
    db $e3                                        ; $5070: $e3
    ld e, d                                       ; $5071: $5a
    inc h                                         ; $5072: $24
    nop                                           ; $5073: $00
    ld [c], a                                     ; $5074: $e2
    dec c                                         ; $5075: $0d
    ret nz                                        ; $5076: $c0

    db $e3                                        ; $5077: $e3
    dec h                                         ; $5078: $25
    ld hl, $93c0                                  ; $5079: $21 $c0 $93
    jr jr_073_50bf                                ; $507c: $18 $41

    ret nz                                        ; $507e: $c0

    add sp, -$7f                                  ; $507f: $e8 $81
    db $e4                                        ; $5081: $e4
    ld b, b                                       ; $5082: $40
    ldh [rSB], a                                  ; $5083: $e0 $01
    inc c                                         ; $5085: $0c
    ld b, b                                       ; $5086: $40
    jr nz, jr_073_50b3                            ; $5087: $20 $2a

    ld [hl+], a                                   ; $5089: $22
    cp e                                          ; $508a: $bb
    nop                                           ; $508b: $00
    ld a, a                                       ; $508c: $7f
    db $e3                                        ; $508d: $e3
    add b                                         ; $508e: $80
    ld de, $40fe                                  ; $508f: $11 $fe $40
    cp e                                          ; $5092: $bb
    jr nz, @+$06                                  ; $5093: $20 $04

    jp nz, Jump_073_4204                          ; $5095: $c2 $04 $42

    ld b, $08                                     ; $5098: $06 $08
    nop                                           ; $509a: $00
    ldh [$30], a                                  ; $509b: $e0 $30
    db $e4                                        ; $509d: $e4
    ld [$bf00], a                                 ; $509e: $ea $00 $bf
    pop hl                                        ; $50a1: $e1
    ret nz                                        ; $50a2: $c0

    push af                                       ; $50a3: $f5
    inc b                                         ; $50a4: $04
    add c                                         ; $50a5: $81

jr_073_50a6:
    dec bc                                        ; $50a6: $0b
    jp nz, Jump_073_4c40                          ; $50a7: $c2 $40 $4c

    ld h, $2a                                     ; $50aa: $26 $2a
    ld h, a                                       ; $50ac: $67
    inc bc                                        ; $50ad: $03
    cp a                                          ; $50ae: $bf
    db $e4                                        ; $50af: $e4
    add b                                         ; $50b0: $80
    ld [hl], h                                    ; $50b1: $74
    and b                                         ; $50b2: $a0

jr_073_50b3:
    jp Jump_073_7b04                              ; $50b3: $c3 $04 $7b


    ld b, h                                       ; $50b6: $44
    ret nz                                        ; $50b7: $c0

    ldh [$08], a                                  ; $50b8: $e0 $08
    add d                                         ; $50ba: $82
    pop hl                                        ; $50bb: $e1
    jp $ae60                                      ; $50bc: $c3 $60 $ae


jr_073_50bf:
    ld h, [hl]                                    ; $50bf: $66
    xor c                                         ; $50c0: $a9
    ld b, d                                       ; $50c1: $42
    add b                                         ; $50c2: $80
    halt                                          ; $50c3: $76
    nop                                           ; $50c4: $00
    rst $18                                       ; $50c5: $df
    and c                                         ; $50c6: $a1
    jp nz, $c043                                  ; $50c7: $c2 $43 $c0

    db $e4                                        ; $50ca: $e4
    ld c, c                                       ; $50cb: $49
    and d                                         ; $50cc: $a2
    ld [hl], h                                    ; $50cd: $74
    ret nz                                        ; $50ce: $c0

    pop bc                                        ; $50cf: $c1
    db $ed                                        ; $50d0: $ed
    ld b, b                                       ; $50d1: $40
    ld [hl], h                                    ; $50d2: $74
    nop                                           ; $50d3: $00
    swap b                                        ; $50d4: $cb $30
    ld b, b                                       ; $50d6: $40
    rst $20                                       ; $50d7: $e7
    adc b                                         ; $50d8: $88
    inc b                                         ; $50d9: $04
    ld a, [hl+]                                   ; $50da: $2a
    ld b, c                                       ; $50db: $41
    ld b, b                                       ; $50dc: $40
    ld d, [hl]                                    ; $50dd: $56
    inc l                                         ; $50de: $2c
    inc l                                         ; $50df: $2c
    nop                                           ; $50e0: $00
    call $e600                                    ; $50e1: $cd $00 $e6
    ld [$02c9], sp                                ; $50e4: $08 $c9 $02
    ld l, c                                       ; $50e7: $69
    ld c, b                                       ; $50e8: $48
    ret nz                                        ; $50e9: $c0

    db $f4                                        ; $50ea: $f4
    ld c, h                                       ; $50eb: $4c
    jp $4021                                      ; $50ec: $c3 $21 $40


    jp $c3dc                                      ; $50ef: $c3 $dc $c3


    ret nz                                        ; $50f2: $c0

    call nz, $ae00                                ; $50f3: $c4 $00 $ae
    ld hl, $024b                                  ; $50f6: $21 $4b $02
    add e                                         ; $50f9: $83
    ld b, l                                       ; $50fa: $45
    ret nz                                        ; $50fb: $c0

    ld [de], a                                    ; $50fc: $12
    reti                                          ; $50fd: $d9


    add e                                         ; $50fe: $83
    ld e, [hl]                                    ; $50ff: $5e
    ret nz                                        ; $5100: $c0

    jr jr_073_50a6                                ; $5101: $18 $a3

    ret nz                                        ; $5103: $c0

    jp hl                                         ; $5104: $e9


    nop                                           ; $5105: $00
    ld b, l                                       ; $5106: $45
    nop                                           ; $5107: $00
    xor [hl]                                      ; $5108: $ae
    and h                                         ; $5109: $a4
    cp [hl]                                       ; $510a: $be
    and $30                                       ; $510b: $e6 $30
    sub c                                         ; $510d: $91
    dec de                                        ; $510e: $1b
    and b                                         ; $510f: $a0
    sub a                                         ; $5110: $97
    db $e4                                        ; $5111: $e4
    reti                                          ; $5112: $d9


    add d                                         ; $5113: $82
    ld b, b                                       ; $5114: $40
    ret z                                         ; $5115: $c8

    nop                                           ; $5116: $00
    ld l, e                                       ; $5117: $6b
    ret z                                         ; $5118: $c8

    rst $38                                       ; $5119: $ff
    inc h                                         ; $511a: $24
    ret nz                                        ; $511b: $c0

    di                                            ; $511c: $f3
    ld b, d                                       ; $511d: $42
    ld b, e                                       ; $511e: $43
    ld [hl], $05                                  ; $511f: $36 $05
    nop                                           ; $5121: $00
    push bc                                       ; $5122: $c5
    ld [hl-], a                                   ; $5123: $32
    and h                                         ; $5124: $a4
    ld a, c                                       ; $5125: $79
    jp nz, Jump_000_3a00                          ; $5126: $c2 $00 $3a

    push hl                                       ; $5129: $e5
    add b                                         ; $512a: $80
    ld a, [c]                                     ; $512b: $f2
    res 0, c                                      ; $512c: $cb $81
    ret nz                                        ; $512e: $c0

    and $dc                                       ; $512f: $e6 $dc
    ld h, b                                       ; $5131: $60
    ret nz                                        ; $5132: $c0

    add $be                                       ; $5133: $c6 $be
    ld [hl+], a                                   ; $5135: $22
    ld hl, $0026                                  ; $5136: $21 $26 $00
    ccf                                           ; $5139: $3f
    add c                                         ; $513a: $81
    ld [hl], b                                    ; $513b: $70
    ld a, a                                       ; $513c: $7f
    rst $38                                       ; $513d: $ff
    rst $38                                       ; $513e: $ff
    rst $38                                       ; $513f: $ff
    rst $38                                       ; $5140: $ff
    rst $38                                       ; $5141: $ff
    rst $38                                       ; $5142: $ff
    rst $38                                       ; $5143: $ff
    rst $38                                       ; $5144: $ff
    rst $38                                       ; $5145: $ff
    rst $38                                       ; $5146: $ff
    rst $38                                       ; $5147: $ff
    rst $38                                       ; $5148: $ff
    nop                                           ; $5149: $00
    rst $38                                       ; $514a: $ff
    rst $38                                       ; $514b: $ff
    rst $38                                       ; $514c: $ff
    rst $38                                       ; $514d: $ff
    rst $38                                       ; $514e: $ff
    rst $38                                       ; $514f: $ff
    rst $38                                       ; $5150: $ff
    rst $38                                       ; $5151: $ff
    rst $38                                       ; $5152: $ff
    rst $38                                       ; $5153: $ff
    rst $38                                       ; $5154: $ff
    rst $38                                       ; $5155: $ff
    rst $38                                       ; $5156: $ff
    rst $38                                       ; $5157: $ff
    rst $38                                       ; $5158: $ff
    rst $38                                       ; $5159: $ff
    nop                                           ; $515a: $00
    rst $38                                       ; $515b: $ff
    rst $38                                       ; $515c: $ff
    rst $38                                       ; $515d: $ff
    rst $38                                       ; $515e: $ff
    rst $38                                       ; $515f: $ff
    rst $38                                       ; $5160: $ff
    rst $38                                       ; $5161: $ff
    rst $38                                       ; $5162: $ff
    rst $38                                       ; $5163: $ff
    rst $38                                       ; $5164: $ff
    rst $38                                       ; $5165: $ff
    rst $38                                       ; $5166: $ff
    rst $38                                       ; $5167: $ff
    rst $38                                       ; $5168: $ff
    rst $38                                       ; $5169: $ff
    rst $38                                       ; $516a: $ff
    nop                                           ; $516b: $00
    rst $38                                       ; $516c: $ff
    rst $38                                       ; $516d: $ff
    rst $38                                       ; $516e: $ff
    rst $38                                       ; $516f: $ff
    rst $38                                       ; $5170: $ff
    rst $38                                       ; $5171: $ff
    rst $38                                       ; $5172: $ff
    rst $38                                       ; $5173: $ff
    rst $38                                       ; $5174: $ff
    rst $38                                       ; $5175: $ff
    rst $38                                       ; $5176: $ff
    rst $38                                       ; $5177: $ff
    rst $38                                       ; $5178: $ff
    rst $38                                       ; $5179: $ff
    rst $38                                       ; $517a: $ff
    rst $38                                       ; $517b: $ff
    nop                                           ; $517c: $00
    rst $38                                       ; $517d: $ff
    rst $38                                       ; $517e: $ff
    rst $38                                       ; $517f: $ff
    rst $38                                       ; $5180: $ff
    rst $38                                       ; $5181: $ff
    rst $38                                       ; $5182: $ff
    rst $38                                       ; $5183: $ff
    rst $38                                       ; $5184: $ff
    rst $38                                       ; $5185: $ff
    rst $38                                       ; $5186: $ff
    rst $38                                       ; $5187: $ff
    rst $38                                       ; $5188: $ff
    rst $38                                       ; $5189: $ff
    rst $38                                       ; $518a: $ff
    ld b, b                                       ; $518b: $40
    inc hl                                        ; $518c: $23
    nop                                           ; $518d: $00
    nop                                           ; $518e: $00
    nop                                           ; $518f: $00
    ld bc, $ff00                                  ; $5190: $01 $00 $ff
    rst $38                                       ; $5193: $ff
    rst $38                                       ; $5194: $ff
    rst $38                                       ; $5195: $ff
    rst $38                                       ; $5196: $ff
    rst $38                                       ; $5197: $ff
    rst $38                                       ; $5198: $ff
    rst $38                                       ; $5199: $ff
    rst $38                                       ; $519a: $ff
    rst $38                                       ; $519b: $ff
    rst $38                                       ; $519c: $ff
    rst $38                                       ; $519d: $ff
    rst $38                                       ; $519e: $ff
    rst $38                                       ; $519f: $ff
    nop                                           ; $51a0: $00
    rst $38                                       ; $51a1: $ff
    rst $38                                       ; $51a2: $ff
    rst $38                                       ; $51a3: $ff
    rst $38                                       ; $51a4: $ff
    rst $38                                       ; $51a5: $ff
    rst $38                                       ; $51a6: $ff
    rst $38                                       ; $51a7: $ff
    rst $38                                       ; $51a8: $ff
    rst $38                                       ; $51a9: $ff
    rst $38                                       ; $51aa: $ff
    rst $38                                       ; $51ab: $ff
    rst $38                                       ; $51ac: $ff
    rst $38                                       ; $51ad: $ff
    rst $38                                       ; $51ae: $ff
    rst $38                                       ; $51af: $ff
    rst $38                                       ; $51b0: $ff
    nop                                           ; $51b1: $00
    rst $38                                       ; $51b2: $ff
    rst $38                                       ; $51b3: $ff
    rst $38                                       ; $51b4: $ff
    rst $38                                       ; $51b5: $ff
    rst $38                                       ; $51b6: $ff
    rst $38                                       ; $51b7: $ff
    rst $38                                       ; $51b8: $ff
    rst $38                                       ; $51b9: $ff
    rst $38                                       ; $51ba: $ff
    rst $38                                       ; $51bb: $ff
    rst $38                                       ; $51bc: $ff
    rst $38                                       ; $51bd: $ff
    rst $38                                       ; $51be: $ff
    rst $38                                       ; $51bf: $ff
    rst $38                                       ; $51c0: $ff
    rst $38                                       ; $51c1: $ff
    nop                                           ; $51c2: $00
    rst $38                                       ; $51c3: $ff
    rst $38                                       ; $51c4: $ff
    rst $38                                       ; $51c5: $ff
    rst $38                                       ; $51c6: $ff
    rst $38                                       ; $51c7: $ff
    rst $38                                       ; $51c8: $ff
    rst $38                                       ; $51c9: $ff
    rst $38                                       ; $51ca: $ff
    rst $38                                       ; $51cb: $ff
    rst $38                                       ; $51cc: $ff
    rst $38                                       ; $51cd: $ff
    rst $38                                       ; $51ce: $ff
    rst $38                                       ; $51cf: $ff
    rst $38                                       ; $51d0: $ff
    rst $38                                       ; $51d1: $ff
    ldh [rP1], a                                  ; $51d2: $e0 $00
    nop                                           ; $51d4: $00
    nop                                           ; $51d5: $00
    ld bc, $ff00                                  ; $51d6: $01 $00 $ff
    rst $38                                       ; $51d9: $ff
    rst $38                                       ; $51da: $ff
    rst $38                                       ; $51db: $ff
    rst $38                                       ; $51dc: $ff
    rst $38                                       ; $51dd: $ff
    rst $38                                       ; $51de: $ff
    rst $38                                       ; $51df: $ff
    rst $38                                       ; $51e0: $ff
    rst $38                                       ; $51e1: $ff
    rst $38                                       ; $51e2: $ff
    rst $38                                       ; $51e3: $ff
    rst $38                                       ; $51e4: $ff
    rst $38                                       ; $51e5: $ff
    nop                                           ; $51e6: $00
    rst $38                                       ; $51e7: $ff
    rst $38                                       ; $51e8: $ff
    rst $38                                       ; $51e9: $ff
    rst $38                                       ; $51ea: $ff
    rst $38                                       ; $51eb: $ff
    rst $38                                       ; $51ec: $ff
    rst $38                                       ; $51ed: $ff
    rst $38                                       ; $51ee: $ff
    rst $38                                       ; $51ef: $ff
    rst $38                                       ; $51f0: $ff
    rst $38                                       ; $51f1: $ff
    rst $38                                       ; $51f2: $ff
    rst $38                                       ; $51f3: $ff
    rst $38                                       ; $51f4: $ff
    rst $38                                       ; $51f5: $ff
    rst $38                                       ; $51f6: $ff
    nop                                           ; $51f7: $00
    rst $38                                       ; $51f8: $ff
    rst $38                                       ; $51f9: $ff
    rst $38                                       ; $51fa: $ff
    rst $38                                       ; $51fb: $ff
    rst $38                                       ; $51fc: $ff
    rst $38                                       ; $51fd: $ff
    rst $38                                       ; $51fe: $ff
    rst $38                                       ; $51ff: $ff
    rst $38                                       ; $5200: $ff
    rst $38                                       ; $5201: $ff
    rst $38                                       ; $5202: $ff
    rst $38                                       ; $5203: $ff
    rst $38                                       ; $5204: $ff
    rst $38                                       ; $5205: $ff
    rst $38                                       ; $5206: $ff
    rst $38                                       ; $5207: $ff
    nop                                           ; $5208: $00
    rst $38                                       ; $5209: $ff
    rst $38                                       ; $520a: $ff
    rst $38                                       ; $520b: $ff
    rst $38                                       ; $520c: $ff
    rst $38                                       ; $520d: $ff
    rst $38                                       ; $520e: $ff
    rst $38                                       ; $520f: $ff
    rst $38                                       ; $5210: $ff
    rst $38                                       ; $5211: $ff
    rst $38                                       ; $5212: $ff
    rst $38                                       ; $5213: $ff
    rst $38                                       ; $5214: $ff
    rst $38                                       ; $5215: $ff
    rst $38                                       ; $5216: $ff
    rst $38                                       ; $5217: $ff
    ldh [rP1], a                                  ; $5218: $e0 $00
    nop                                           ; $521a: $00
    nop                                           ; $521b: $00
    cp $01                                        ; $521c: $fe $01
    nop                                           ; $521e: $00
    rst $38                                       ; $521f: $ff
    rst $38                                       ; $5220: $ff
    rst $38                                       ; $5221: $ff
    rst $38                                       ; $5222: $ff
    rst $38                                       ; $5223: $ff
    rst $38                                       ; $5224: $ff
    rst $38                                       ; $5225: $ff
    rst $38                                       ; $5226: $ff
    rst $38                                       ; $5227: $ff
    rst $38                                       ; $5228: $ff
    rst $38                                       ; $5229: $ff
    rst $38                                       ; $522a: $ff
    rst $38                                       ; $522b: $ff
    rst $38                                       ; $522c: $ff
    nop                                           ; $522d: $00
    rst $38                                       ; $522e: $ff
    rst $38                                       ; $522f: $ff
    rst $38                                       ; $5230: $ff
    rst $38                                       ; $5231: $ff
    rst $38                                       ; $5232: $ff
    rst $38                                       ; $5233: $ff
    rst $38                                       ; $5234: $ff
    rst $38                                       ; $5235: $ff
    rst $38                                       ; $5236: $ff
    rst $38                                       ; $5237: $ff
    rst $38                                       ; $5238: $ff
    rst $38                                       ; $5239: $ff
    rst $38                                       ; $523a: $ff
    rst $38                                       ; $523b: $ff
    rst $38                                       ; $523c: $ff
    rst $38                                       ; $523d: $ff
    nop                                           ; $523e: $00
    rst $38                                       ; $523f: $ff
    rst $38                                       ; $5240: $ff
    rst $38                                       ; $5241: $ff
    rst $38                                       ; $5242: $ff
    rst $38                                       ; $5243: $ff
    rst $38                                       ; $5244: $ff
    rst $38                                       ; $5245: $ff
    rst $38                                       ; $5246: $ff
    rst $38                                       ; $5247: $ff
    rst $38                                       ; $5248: $ff
    rst $38                                       ; $5249: $ff
    rst $38                                       ; $524a: $ff
    rst $38                                       ; $524b: $ff
    rst $38                                       ; $524c: $ff
    rst $38                                       ; $524d: $ff
    rst $38                                       ; $524e: $ff
    nop                                           ; $524f: $00
    rst $38                                       ; $5250: $ff
    rst $38                                       ; $5251: $ff
    rst $38                                       ; $5252: $ff
    rst $38                                       ; $5253: $ff
    rst $38                                       ; $5254: $ff
    rst $38                                       ; $5255: $ff
    rst $38                                       ; $5256: $ff
    rst $38                                       ; $5257: $ff
    rst $38                                       ; $5258: $ff
    rst $38                                       ; $5259: $ff
    rst $38                                       ; $525a: $ff
    rst $38                                       ; $525b: $ff
    rst $38                                       ; $525c: $ff
    rst $38                                       ; $525d: $ff
    rst $38                                       ; $525e: $ff
    rst $38                                       ; $525f: $ff
    nop                                           ; $5260: $00
    rst $38                                       ; $5261: $ff
    rst $38                                       ; $5262: $ff
    rst $38                                       ; $5263: $ff
    rst $38                                       ; $5264: $ff
    rst $38                                       ; $5265: $ff
    rst $38                                       ; $5266: $ff
    rst $38                                       ; $5267: $ff
    rst $38                                       ; $5268: $ff
    rst $38                                       ; $5269: $ff
    rst $38                                       ; $526a: $ff
    rst $38                                       ; $526b: $ff
    rst $38                                       ; $526c: $ff
    rst $38                                       ; $526d: $ff
    rst $38                                       ; $526e: $ff
    rst $38                                       ; $526f: $ff
    rst $38                                       ; $5270: $ff
    nop                                           ; $5271: $00
    rst $38                                       ; $5272: $ff
    rst $38                                       ; $5273: $ff
    rst $38                                       ; $5274: $ff
    rst $38                                       ; $5275: $ff
    rst $38                                       ; $5276: $ff
    rst $38                                       ; $5277: $ff
    rst $38                                       ; $5278: $ff
    rst $38                                       ; $5279: $ff
    rst $38                                       ; $527a: $ff
    rst $38                                       ; $527b: $ff
    rst $38                                       ; $527c: $ff
    rst $38                                       ; $527d: $ff
    rst $38                                       ; $527e: $ff
    rst $38                                       ; $527f: $ff
    rst $38                                       ; $5280: $ff
    rst $38                                       ; $5281: $ff
    nop                                           ; $5282: $00
    rst $38                                       ; $5283: $ff
    rst $38                                       ; $5284: $ff
    rst $38                                       ; $5285: $ff
    rst $38                                       ; $5286: $ff
    rst $38                                       ; $5287: $ff
    rst $38                                       ; $5288: $ff
    rst $38                                       ; $5289: $ff
    rst $38                                       ; $528a: $ff
    rst $38                                       ; $528b: $ff
    rst $38                                       ; $528c: $ff
    rst $38                                       ; $528d: $ff
    rst $38                                       ; $528e: $ff
    rst $38                                       ; $528f: $ff
    rst $38                                       ; $5290: $ff
    rst $38                                       ; $5291: $ff
    rst $38                                       ; $5292: $ff
    nop                                           ; $5293: $00
    rst $38                                       ; $5294: $ff
    rst $38                                       ; $5295: $ff
    rst $38                                       ; $5296: $ff
    rst $38                                       ; $5297: $ff
    rst $38                                       ; $5298: $ff
    rst $38                                       ; $5299: $ff
    rst $38                                       ; $529a: $ff
    rst $38                                       ; $529b: $ff
    rst $38                                       ; $529c: $ff
    rst $38                                       ; $529d: $ff
    rst $38                                       ; $529e: $ff
    db $e4                                        ; $529f: $e4
    nop                                           ; $52a0: $00
    nop                                           ; $52a1: $00
    nop                                           ; $52a2: $00

    db $00, $00, $00, $00, $3f, $3f, $00, $00, $e0, $7f, $ff, $6b, $58, $1e, $00, $00
    db $00, $00, $00, $78, $1e, $00, $c0, $03, $5e, $7e, $d8, $7d, $92, $7d, $0e, $7d
    db $9c, $7e, $ff, $4b, $5c, $37, $f7, $7d, $08, $25, $08, $25, $08, $25, $08, $25
    db $08, $25, $08, $25, $08, $25, $08, $25, $3f, $4a, $ff, $6b, $ff, $20, $00, $00
    db $1f, $5e, $ff, $6b, $d8, $7c, $00, $00, $ff, $00, $00, $01, $01, $03, $02, $03
    db $02, $ff, $07, $04, $7f, $7c, $7f, $40, $27, $3a, $ff, $00, $00, $80, $80, $c0
    db $40, $c0, $40, $ff, $e0, $20, $fe, $3e, $fe, $02, $e4, $5c, $ff, $00, $00, $07
    db $03, $1f, $0c, $33, $1c, $ff, $26, $39, $7c, $23, $7c, $43, $5e, $61, $ff, $00
    db $00, $e0, $c0, $f8, $30, $cc, $38, $ff, $64, $9c, $3e, $c4, $3e, $c2, $7a, $86
    db $81, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3, $f2, $13, $ff
    db $1e, $0a, $0f, $08, $0f, $10, $1f, $11, $ff, $1f, $26, $3e, $38, $38, $00, $00
    db $c8, $ff, $78, $50, $f0, $10, $f0, $08, $f8, $88, $ff, $f8, $64, $7c, $1c, $1c
    db $00, $00, $4f, $ff, $70, $4f, $70, $7f, $67, $7a, $3f, $32, $ff, $1f, $10, $1f
    db $18, $0f, $0f, $07, $f2, $ff, $0e, $f2, $0e, $fe, $e6, $5e, $fc, $4c, $7f, $f8
    db $08, $f8, $18, $f0, $f0, $e0, $9e, $ff, $80, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $f6, $f5, $20, $cd, $ce, $ed, $03, $2f, $03, $0f, $0c, $13, $00, $c0, $3c
    db $00, $c2, $f0, $cd, $ee, $e0, $c3, $3a, $3f, $12, $e0, $c0, $08, $0f, $07, $e9
    db $07, $b0, $af, $7e, $e1, $01, $ff, $e0, $03, $02, $3f, $f7, $3e, $3f, $20, $70
    db $e1, $c0, $c0, $e0, $20, $ff, $e0, $20, $f0, $10, $ff, $1f, $ff, $01, $7b, $0e
    db $0e, $5e, $e7, $01, $01, $9f, $9f, $be, $e1, $ff, $00, $00, $60, $60, $f0, $90
    db $f0, $90, $ff, $f8, $08, $ff, $0f, $84, $87, $87, $87, $de, $3c, $e9, $cc, $cf
    db $03, $03, $2c, $e1, $30, $30, $ff, $78, $48, $78, $48, $fc, $84, $81, $81, $ef
    db $42, $c3, $c3, $c3, $1a, $e7, $18, $ff, $66, $f7, $e7, $81, $81, $f6, $e2, $18
    db $3c, $24, $3c, $7d, $24, $35, $a0, $c0, $21, $e1, $e1, $e1, $f8, $c5, $ff, $80
    db $ff, $8c, $ff, $33, $f3, $c0, $c0, $7e, $e8, $c1, $0c, $0c, $1e, $12, $40, $c0
    db $75, $e0, $df, $e0, $90, $f0, $70, $70, $d6, $c3, $20, $3f, $7f, $40, $7f, $46
    db $7f, $99, $f9, $e0, $26, $c2, $d7, $06, $06, $a0, $55, $e0, $10, $ee, $a0, $c8
    db $f8, $ee, $e2, $a1, $00, $00, $14, $f8, $a0, $20, $3f, $23, $e7, $3f, $4c, $7c
    db $ce, $e3, $c0, $ad, $13, $1d, $09, $bf, $0f, $05, $07, $04, $07, $08, $aa, $a0
    db $13, $ff, $1f, $1c, $1c, $f2, $2e, $e4, $3c, $28, $fe, $d4, $a0, $04, $fc, $c4
    db $fc, $32, $3e, $0e, $7f, $0e, $9f, $90, $09, $0e, $04, $07, $8f, $80, $fb, $03
    db $04, $da, $e0, $09, $0f, $ff, $00, $f9, $ff, $97, $f2, $9e, $94, $fc, $04, $fc
    db $02, $ff, $fe, $62, $fe, $99, $9f, $cf, $cf, $cf, $9f, $48, $84, $87, $02, $03
    db $ce, $c1, $da, $e1, $ff, $ff, $87, $ff, $00, $fc, $4b, $79, $cf, $4a, $ff, $fe
    db $02, $fe, $01, $ff, $31, $ff, $00, $7f, $00, $e7, $e7, $e7, $24, $42, $c3, $1c
    db $e3, $ff, $81, $81, $7e, $42, $ff, $c3, $ff, $00, $ff, $7e, $a5, $3c, $e7, $a5
    db $ff, $81, $ff, $fd, $00, $e0, $e0, $00, $00, $f3, $f3, $f3, $12, $df, $21, $e1
    db $40, $c0, $80, $ff, $e0, $1e, $12, $ff, $3f, $21, $ff, $e1, $ff, $00, $3f, $d2
    db $bf, $9e, $f3, $52, $7f, $40, $7f, $fc, $c2, $80, $ff, $f9, $f9, $f9, $09, $90
    db $70, $20, $e0, $ff, $40, $c0, $0f, $09, $0f, $09, $1f, $10, $ff, $ff, $f0, $ff
    db $00, $9f, $e9, $4f, $79, $f3, $29, $3f, $00, $81, $fe, $61, $fc, $7c, $fc, $04
    db $bf, $c8, $b8, $90, $f0, $03, $03, $33, $e0, $04, $ff, $0f, $08, $ff, $f8, $ff
    db $80, $4f, $74, $ef, $27, $3c, $08, $07, $fe, $e1, $0f, $00, $f0, $b7, $00, $10
    db $e0, $fe, $e1, $04, $03, $fe, $e3, $07, $df, $00, $f8, $00, $08, $f0, $fe, $e7
    db $f8, $00, $db, $07, $00, $e4, $e1, $02, $01, $fe, $e5, $03, $00, $ef, $fc, $00
    db $04, $f8, $fe, $e7, $fc, $00, $03, $df, $00, $02, $01, $01, $00, $fe, $e9, $fe
    db $00, $eb, $02, $fc, $fe, $e7, $fe, $e4, $e0, $ff, $00, $81, $0d, $7e, $fe, $e7
    db $ff, $00, $00, $00

    nop                                           ; $5597: $00

    db $63, $00, $01, $fe, $f0, $ff, $ff, $e7, $e6, $10, $11, $fe, $ef, $00, $ca, $ff
    db $e9, $e8, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $00, $80
    db $ff, $80, $ff, $80, $ff, $80, $ff, $ff, $ff, $80, $ff, $ff, $ff, $80, $ff, $00
    db $ff, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff
    db $00, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $ff, $ff, $80, $ff, $ff
    db $ff, $cc, $ff, $ff, $ff, $fe, $20, $20, $dc, $ff, $fa, $f9, $23, $23, $00, $dc
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $f7, $00
    db $00

    nop                                           ; $56a9: $00

    db $01, $0b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f8, $f7, $2b, $dd
    db $ff, $c0, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff
    db $ff, $ff, $ff, $f3, $00, $00

    nop                                           ; $57b0: $00

    db $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $e0, $00, $00, $00, $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e0, $00, $00, $00, $00, $02, $00, $04
    db $02, $02, $00, $04, $04, $02, $00, $04, $06, $02, $00, $04, $08, $02, $00, $04
    db $0a, $02, $00, $04, $0c, $02, $00, $04, $0e, $02, $00, $04, $20, $02, $00, $04
    db $22, $02, $00, $04, $24, $02, $00, $04, $26, $02, $00, $04, $28, $02, $00, $04
    db $2a, $02, $00, $04, $2c, $02, $00, $04, $2e, $02, $00, $04, $ff, $00, $10, $02
    db $10, $04, $12, $02, $10, $04, $14, $02, $10, $04, $16, $02, $10, $04, $18, $02
    db $10, $04, $1a, $02, $10, $04, $1c, $02, $10, $04, $1e, $02, $10, $04, $30, $02
    db $10, $04, $32, $02, $10, $04, $34, $02, $10, $04, $36, $02, $10, $04, $38, $02
    db $10, $04, $3a, $02, $10, $04, $3c, $02, $10, $04, $3e, $02, $10, $04, $ff, $00
    db $fe, $ff, $00, $00, $01, $01, $03, $02, $03, $02, $ff, $07, $04, $7f, $7c, $7f
    db $40, $27, $3a, $ff, $00, $00, $80, $80, $c0, $40, $c0, $40, $ff, $e0, $20, $fe
    db $3e, $fe, $02, $e4, $5c, $f5, $00, $ff, $e2, $01, $ff, $e0, $03, $02, $3f, $3e
    db $fb, $3f, $20, $f0, $e1, $c0, $c0, $e0, $20, $e0, $ff, $20, $f0, $10, $ff, $1f
    db $ff, $01, $0e, $79, $0e, $de, $e3, $da, $e3, $9f, $9f, $07, $07, $ce, $e1, $ff
    db $60, $60, $f0, $90, $f0, $90, $f8, $08, $bf, $ff, $0f, $84, $87, $87, $87, $de
    db $e7, $00, $df, $00, $cc, $cf, $03, $03, $ac, $e1, $30, $30, $ff, $78, $48, $78
    db $48, $fc, $84, $81, $81, $ef, $42, $c3, $c3, $c3, $bc, $e7, $18, $ff, $66, $f7
    db $e7, $81, $81, $f6, $e2, $18, $3c, $24, $3c, $7d, $24, $75, $e0, $c0, $21, $e1
    db $e1, $e1, $9a, $e5, $ff, $80, $ff, $8c, $ff, $33, $f3, $c0, $c0, $7e, $68, $e1
    db $0c, $0c, $1e, $12, $40, $c0, $75, $e0, $df, $e0, $90, $f0, $70, $70, $56, $e3
    db $20, $3f, $ff, $40, $7f, $46, $7f, $99, $f9, $e0, $e0, $ee, $46, $e1, $06, $06
    db $a0, $55, $e0, $10, $f0, $10, $df, $f0, $c8, $f8, $38, $38, $34, $e1, $14, $1f
    db $ff, $10, $1f, $20, $3f, $23, $3f, $4c, $7c, $fe, $ce, $e3, $13, $1e, $0a, $0f
    db $08, $0f, $10, $df, $1f, $11, $1f, $26, $3e, $de, $e1, $c8, $78, $fd, $50, $d2
    db $e0, $08, $f8, $88, $f8, $64, $7c, $fb, $1c, $1c, $e0, $e0, $1d, $09, $0f, $05
    db $07, $f7, $04, $07, $08, $da, $e0, $13, $1f, $1c, $1c, $ff, $f2, $2e, $e4, $3c
    db $28, $f8, $08, $f8, $ff, $04, $fc, $c4, $fc, $32, $3e, $0e, $0e, $bf, $9f, $90
    db $09, $0e, $04, $07, $bf, $c0, $03, $fd, $04, $da, $e0, $09, $0f, $ff, $00, $f9
    db $97, $ff, $f2, $9e, $94, $fc, $04, $fc, $02, $fe, $ff, $62, $fe, $99, $9f, $cf
    db $cf, $cf, $48, $cf, $84, $87, $02, $03, $be, $c1, $da, $e1, $ff, $87, $ff, $ff
    db $00, $fc, $4b, $79, $cf, $4a, $fe, $ff, $02, $fe, $01, $ff, $31, $ff, $00, $00
    db $bf, $e7, $e7, $e7, $24, $42, $c3, $0c, $e3, $81, $ff, $81, $7e, $42, $ff, $c3
    db $ff, $00, $7e, $ff, $a5, $3c, $e7, $a5, $ff, $81, $ff, $00, $fe, $e0, $e0, $00
    db $00, $f3, $f3, $f3, $12, $21, $ef, $e1, $40, $c0, $80, $ff, $e0, $1e, $12, $3f
    db $ff, $21, $ff, $e1, $ff, $00, $3f, $d2, $9e, $df, $f3, $52, $7f, $40, $7f, $ec
    db $c2, $80, $f9, $ff, $f9, $f9, $09, $90, $70, $20, $e0, $40, $ff, $c0, $0f, $09
    db $0f, $09, $1f, $10, $ff, $ff, $f0, $ff, $00, $9f, $e9, $4f, $79, $29, $f9, $3f
    db $30, $c1, $2e, $c1, $fc, $7c, $fc, $04, $c8, $df, $b8, $90, $f0, $03, $03, $33
    db $e0, $04, $0f, $ff, $08, $ff, $f8, $ff, $80, $4f, $74, $27, $01, $3c, $10, $ee
    db $f0, $cc, $10, $ed, $f0, $cd, $10, $ed, $f0, $ce, $10, $ec, $00, $f0, $cd, $10
    db $ef, $f0, $cb, $10, $f1, $f0, $c9, $10, $ef, $f0, $cb, $10, $ed, $00, $f0, $cd
    db $10, $af, $f0, $8d, $10, $ab, $f0, $8d, $10, $ad, $f0, $8d, $10, $ad, $00, $f0
    db $8d, $10, $ad, $f0, $8d, $10, $af, $f0, $8b, $10, $ad, $f0, $8d, $10, $ad, $00
    db $f0, $8d, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $24, $01, $00, $00, $00

    nop                                           ; $5b27: $00
    nop                                           ; $5b28: $00
    nop                                           ; $5b29: $00
    nop                                           ; $5b2a: $00
    ccf                                           ; $5b2b: $3f
    ccf                                           ; $5b2c: $3f
    nop                                           ; $5b2d: $00
    nop                                           ; $5b2e: $00
    nop                                           ; $5b2f: $00
    jr nz, jr_073_5b52                            ; $5b30: $20 $20

    ld d, l                                       ; $5b32: $55
    and b                                         ; $5b33: $a0
    ld a, [hl]                                    ; $5b34: $7e
    rst $38                                       ; $5b35: $ff
    ld a, a                                       ; $5b36: $7f
    ld [$0825], sp                                ; $5b37: $08 $25 $08
    dec h                                         ; $5b3a: $25
    ld [$0825], sp                                ; $5b3b: $08 $25 $08
    dec h                                         ; $5b3e: $25
    inc sp                                        ; $5b3f: $33
    ld bc, $023f                                  ; $5b40: $01 $3f $02
    ld [$a403], a                                 ; $5b43: $ea $03 $a4
    ld [bc], a                                    ; $5b46: $02
    rst $38                                       ; $5b47: $ff
    ld h, e                                       ; $5b48: $63
    rst $28                                       ; $5b49: $ef
    inc bc                                        ; $5b4a: $03
    ld [$a403], a                                 ; $5b4b: $ea $03 $a4
    ld [bc], a                                    ; $5b4e: $02
    ld b, b                                       ; $5b4f: $40
    ld [hl], c                                    ; $5b50: $71
    ret nz                                        ; $5b51: $c0

jr_073_5b52:
    ld a, [hl]                                    ; $5b52: $7e
    call nc, $a400                                ; $5b53: $d4 $00 $a4
    ld [bc], a                                    ; $5b56: $02
    rst $38                                       ; $5b57: $ff
    ld a, a                                       ; $5b58: $7f
    ld [$a403], a                                 ; $5b59: $ea $03 $a4
    ld [bc], a                                    ; $5b5c: $02
    jr nz, jr_073_5b70                            ; $5b5d: $20 $11

    cp a                                          ; $5b5f: $bf
    nop                                           ; $5b60: $00
    add [hl]                                      ; $5b61: $86
    ccf                                           ; $5b62: $3f
    inc h                                         ; $5b63: $24
    ld l, $20                                     ; $5b64: $2e $20
    ld de, $2508                                  ; $5b66: $11 $08 $25
    ld [$0825], sp                                ; $5b69: $08 $25 $08
    dec h                                         ; $5b6c: $25
    ld [$d525], sp                                ; $5b6d: $08 $25 $d5

jr_073_5b70:
    nop                                           ; $5b70: $00
    rst $38                                       ; $5b71: $ff
    ldh [rTIMA], a                                ; $5b72: $e0 $05
    ei                                            ; $5b74: $fb
    ldh [$0b], a                                  ; $5b75: $e0 $0b
    rst $30                                       ; $5b77: $f7
    pop hl                                        ; $5b78: $e1
    nop                                           ; $5b79: $00
    ld [bc], a                                    ; $5b7a: $02
    db $eb                                        ; $5b7b: $eb
    nop                                           ; $5b7c: $00
    jr z, @-$0f                                   ; $5b7d: $28 $ef

    ldh [$90], a                                  ; $5b7f: $e0 $90
    db $eb                                        ; $5b81: $eb
    ldh [$f5], a                                  ; $5b82: $e0 $f5
    nop                                           ; $5b84: $00
    ret z                                         ; $5b85: $c8

    cp $e5                                        ; $5b86: $fe $e5
    ldh [$80], a                                  ; $5b88: $e0 $80
    nop                                           ; $5b8a: $00
    db $ec                                        ; $5b8b: $ec
    rst $38                                       ; $5b8c: $ff
    ld hl, sp-$01                                 ; $5b8d: $f8 $ff
    ldh [rIE], a                                  ; $5b8f: $e0 $ff
    cp $42                                        ; $5b91: $fe $42
    ld hl, sp-$38                                 ; $5b93: $f8 $c8
    ldh a, [$80]                                  ; $5b95: $f0 $80
    ldh [rNR10], a                                ; $5b97: $e0 $10
    rst $28                                       ; $5b99: $ef
    ldh [rP1], a                                  ; $5b9a: $e0 $00
    ret nz                                        ; $5b9c: $c0

    rst $38                                       ; $5b9d: $ff
    rst $38                                       ; $5b9e: $ff
    ld [c], a                                     ; $5b9f: $e2
    rst $30                                       ; $5ba0: $f7
    rst $38                                       ; $5ba1: $ff
    cp h                                          ; $5ba2: $bc
    ld a, a                                       ; $5ba3: $7f
    rst $38                                       ; $5ba4: $ff
    add sp, -$01                                  ; $5ba5: $e8 $ff
    add c                                         ; $5ba7: $81
    cp $08                                        ; $5ba8: $fe $08
    ldh a, [$f8]                                  ; $5baa: $f0 $f8
    push hl                                       ; $5bac: $e5
    ei                                            ; $5bad: $fb
    jr nz, jr_073_5b70                            ; $5bae: $20 $c0

    cp a                                          ; $5bb0: $bf
    ld [c], a                                     ; $5bb1: $e2
    nop                                           ; $5bb2: $00
    ld a, a                                       ; $5bb3: $7f
    rst $38                                       ; $5bb4: $ff
    cpl                                           ; $5bb5: $2f
    rst $38                                       ; $5bb6: $ff
    rst $38                                       ; $5bb7: $ff
    ccf                                           ; $5bb8: $3f
    rst $38                                       ; $5bb9: $ff
    rra                                           ; $5bba: $1f
    rst $38                                       ; $5bbb: $ff
    or a                                          ; $5bbc: $b7
    ld a, a                                       ; $5bbd: $7f
    rra                                           ; $5bbe: $1f
    ld a, a                                       ; $5bbf: $7f
    rst $38                                       ; $5bc0: $ff
    rrca                                          ; $5bc1: $0f
    ld a, a                                       ; $5bc2: $7f
    ld c, a                                       ; $5bc3: $4f
    ccf                                           ; $5bc4: $3f
    rlca                                          ; $5bc5: $07
    rra                                           ; $5bc6: $1f
    ld [bc], a                                    ; $5bc7: $02
    rra                                           ; $5bc8: $1f
    rst $38                                       ; $5bc9: $ff
    inc de                                        ; $5bca: $13
    rrca                                          ; $5bcb: $0f
    ld bc, $0b0f                                  ; $5bcc: $01 $0f $0b
    rlca                                          ; $5bcf: $07
    ld bc, $ff07                                  ; $5bd0: $01 $07 $ff
    nop                                           ; $5bd3: $00
    rlca                                          ; $5bd4: $07
    inc b                                         ; $5bd5: $04
    inc bc                                        ; $5bd6: $03
    ld e, h                                       ; $5bd7: $5c
    rst $38                                       ; $5bd8: $ff
    nop                                           ; $5bd9: $00
    rst $38                                       ; $5bda: $ff
    rst $20                                       ; $5bdb: $e7
    add c                                         ; $5bdc: $81
    inc a                                         ; $5bdd: $3c
    db $10                                        ; $5bde: $10
    db $d3                                        ; $5bdf: $d3
    db $e3                                        ; $5be0: $e3
    add e                                         ; $5be1: $83
    ldh [rNR41], a                                ; $5be2: $e0 $20
    ret nz                                        ; $5be4: $c0

    add b                                         ; $5be5: $80
    cp a                                          ; $5be6: $bf
    ret nz                                        ; $5be7: $c0

    nop                                           ; $5be8: $00
    ldh [$90], a                                  ; $5be9: $e0 $90
    ldh [$80], a                                  ; $5beb: $e0 $80
    cp $e0                                        ; $5bed: $fe $e0
    nop                                           ; $5bef: $00
    ei                                            ; $5bf0: $fb
    ret nz                                        ; $5bf1: $c0

    jr nz, @-$5e                                  ; $5bf2: $20 $a0

    ldh [$7d], a                                  ; $5bf4: $e0 $7d
    rst $38                                       ; $5bf6: $ff
    rst $28                                       ; $5bf7: $ef
    rst $38                                       ; $5bf8: $ff
    ld a, [hl-]                                   ; $5bf9: $3a
    ld a, [$e2da]                                 ; $5bfa: $fa $da $e2
    ld [$e063], sp                                ; $5bfd: $08 $63 $e0
    and h                                         ; $5c00: $a4
    ld hl, sp-$20                                 ; $5c01: $f8 $e0
    ld hl, sp-$10                                 ; $5c03: $f8 $f0
    rst $38                                       ; $5c05: $ff
    db $fc                                        ; $5c06: $fc
    ret nc                                        ; $5c07: $d0

    db $fc                                        ; $5c08: $fc
    ld a, [c]                                     ; $5c09: $f2
    db $fc                                        ; $5c0a: $fc
    ldh [$fc], a                                  ; $5c0b: $e0 $fc
    or b                                          ; $5c0d: $b0
    rst $30                                       ; $5c0e: $f7
    ld hl, sp-$1c                                 ; $5c0f: $f8 $e4
    ld hl, sp-$80                                 ; $5c11: $f8 $80
    push hl                                       ; $5c13: $e5
    cp [hl]                                       ; $5c14: $be
    rst $38                                       ; $5c15: $ff
    db $e3                                        ; $5c16: $e3
    rst $38                                       ; $5c17: $ff
    rst $38                                       ; $5c18: $ff
    ld b, b                                       ; $5c19: $40
    rst $38                                       ; $5c1a: $ff
    nop                                           ; $5c1b: $00
    rst $20                                       ; $5c1c: $e7
    db $fc                                        ; $5c1d: $fc
    rst $38                                       ; $5c1e: $ff
    or $ff                                        ; $5c1f: $f6 $ff
    ld a, a                                       ; $5c21: $7f
    db $fc                                        ; $5c22: $fc
    rst $38                                       ; $5c23: $ff
    ld hl, sp-$02                                 ; $5c24: $f8 $fe
    add sp, -$02                                  ; $5c26: $e8 $fe
    ld hl, sp-$08                                 ; $5c28: $f8 $f8
    ldh [$0b], a                                  ; $5c2a: $e0 $0b
    db $f4                                        ; $5c2c: $f4
    rst $38                                       ; $5c2d: $ff
    ld a, b                                       ; $5c2e: $78
    ldh [$80], a                                  ; $5c2f: $e0 $80
    and e                                         ; $5c31: $a3
    and $23                                       ; $5c32: $e6 $23
    pop hl                                        ; $5c34: $e1
    ldh a, [$e0]                                  ; $5c35: $f0 $e0
    rst $28                                       ; $5c37: $ef
    ld [$c0e3], a                                 ; $5c38: $ea $e3 $c0
    ld b, b                                       ; $5c3b: $40
    ldh [$ea], a                                  ; $5c3c: $e0 $ea
    ret nc                                        ; $5c3e: $d0

    pop hl                                        ; $5c3f: $e1
    rst $08                                       ; $5c40: $cf
    jp hl                                         ; $5c41: $e9


    ld [bc], a                                    ; $5c42: $02
    add c                                         ; $5c43: $81
    and b                                         ; $5c44: $a0
    rst $38                                       ; $5c45: $ff
    pop bc                                        ; $5c46: $c1
    add b                                         ; $5c47: $80
    pop bc                                        ; $5c48: $c1
    add l                                         ; $5c49: $85
    jp $c3a1                                      ; $5c4a: $c3 $a1 $c3


    nop                                           ; $5c4d: $00
    ld a, a                                       ; $5c4e: $7f
    add e                                         ; $5c4f: $83
    dec b                                         ; $5c50: $05
    add e                                         ; $5c51: $83
    ld b, b                                       ; $5c52: $40
    add c                                         ; $5c53: $81
    ld b, c                                       ; $5c54: $41
    add b                                         ; $5c55: $80
    ret nz                                        ; $5c56: $c0

    ldh [rIE], a                                  ; $5c57: $e0 $ff
    ret nz                                        ; $5c59: $c0

    and b                                         ; $5c5a: $a0
    ret nz                                        ; $5c5b: $c0

    ret nz                                        ; $5c5c: $c0

    ldh [rBCPS], a                                ; $5c5d: $e0 $68
    ldh a, [$f1]                                  ; $5c5f: $f0 $f1
    rst $38                                       ; $5c61: $ff
    db $fc                                        ; $5c62: $fc
    call c, Call_000_1eff                         ; $5c63: $dc $ff $1e
    rst $38                                       ; $5c66: $ff
    add b                                         ; $5c67: $80
    ld e, $12                                     ; $5c68: $1e $12
    ld a, [hl]                                    ; $5c6a: $7e
    call nc, Call_073_48c2                        ; $5c6b: $d4 $c2 $48
    nop                                           ; $5c6e: $00
    ld bc, $5878                                  ; $5c6f: $01 $78 $58
    rst $38                                       ; $5c72: $ff
    or b                                          ; $5c73: $b0
    jp hl                                         ; $5c74: $e9


    rst $38                                       ; $5c75: $ff
    ld [bc], a                                    ; $5c76: $02
    ld bc, $0300                                  ; $5c77: $01 $00 $03
    nop                                           ; $5c7a: $00
    nop                                           ; $5c7b: $00
    ld b, b                                       ; $5c7c: $40
    ld b, b                                       ; $5c7d: $40
    ld a, a                                       ; $5c7e: $7f
    nop                                           ; $5c7f: $00
    jr nz, jr_073_5c82                            ; $5c80: $20 $00

jr_073_5c82:
    db $10                                        ; $5c82: $10
    ld [$0400], sp                                ; $5c83: $08 $00 $04
    or d                                          ; $5c86: $b2
    ret nz                                        ; $5c87: $c0

    ret nz                                        ; $5c88: $c0

    and d                                         ; $5c89: $a2
    pop bc                                        ; $5c8a: $c1
    ldh a, [rIE]                                  ; $5c8b: $f0 $ff
    ldh a, [rIE]                                  ; $5c8d: $f0 $ff
    ldh a, [rIE]                                  ; $5c8f: $f0 $ff
    ldh a, [rIE]                                  ; $5c91: $f0 $ff
    ldh a, [$f3]                                  ; $5c93: $f0 $f3
    jp $e33c                                      ; $5c95: $c3 $3c $e3


    jp $fd3c                                      ; $5c98: $c3 $3c $fd


    ldh [$fe], a                                  ; $5c9b: $e0 $fe
    ld [c], a                                     ; $5c9d: $e2
    db $f4                                        ; $5c9e: $f4
    pop hl                                        ; $5c9f: $e1
    dec de                                        ; $5ca0: $1b
    rst $20                                       ; $5ca1: $e7
    cpl                                           ; $5ca2: $2f
    rst $38                                       ; $5ca3: $ff
    call c, $f11e                                 ; $5ca4: $dc $1e $f1
    inc a                                         ; $5ca7: $3c
    db $e3                                        ; $5ca8: $e3
    ld a, h                                       ; $5ca9: $7c
    jp Jump_073_7f7c                              ; $5caa: $c3 $7c $7f


    jp $9ce3                                      ; $5cad: $c3 $e3 $9c


    jp Jump_000_18bc                              ; $5cb0: $c3 $bc $18


    rst $20                                       ; $5cb3: $e7
    ld [c], a                                     ; $5cb4: $e2
    pop hl                                        ; $5cb5: $e1
    rst $38                                       ; $5cb6: $ff
    ld a, [de]                                    ; $5cb7: $1a
    push hl                                       ; $5cb8: $e5
    ld [de], a                                    ; $5cb9: $12
    rst $28                                       ; $5cba: $ef
    ld e, a                                       ; $5cbb: $5f
    cp b                                          ; $5cbc: $b8
    ld a, a                                       ; $5cbd: $7f
    ldh [rIE], a                                  ; $5cbe: $e0 $ff
    di                                            ; $5cc0: $f3
    adc h                                         ; $5cc1: $8c
    inc de                                        ; $5cc2: $13
    rst $28                                       ; $5cc3: $ef
    rra                                           ; $5cc4: $1f
    ld hl, sp-$04                                 ; $5cc5: $f8 $fc
    ld h, e                                       ; $5cc7: $63
    cp a                                          ; $5cc8: $bf
    db $fc                                        ; $5cc9: $fc
    add e                                         ; $5cca: $83
    db $fc                                        ; $5ccb: $fc
    inc bc                                        ; $5ccc: $03
    cp h                                          ; $5ccd: $bc
    ld b, e                                       ; $5cce: $43
    call nz, $98e1                                ; $5ccf: $c4 $e1 $98
    rst $38                                       ; $5cd2: $ff
    rst $20                                       ; $5cd3: $e7
    db $fc                                        ; $5cd4: $fc
    ld b, e                                       ; $5cd5: $43
    call c, $f863                                 ; $5cd6: $dc $63 $f8
    daa                                           ; $5cd9: $27
    ld l, b                                       ; $5cda: $68
    rst $38                                       ; $5cdb: $ff
    or a                                          ; $5cdc: $b7
    ld l, h                                       ; $5cdd: $6c
    sub e                                         ; $5cde: $93
    db $fc                                        ; $5cdf: $fc
    inc de                                        ; $5ce0: $13
    add sp, $17                                   ; $5ce1: $e8 $17
    ld hl, sp-$01                                 ; $5ce3: $f8 $ff
    rrca                                          ; $5ce5: $0f
    sbc $25                                       ; $5ce6: $de $25
    inc a                                         ; $5ce8: $3c
    rst $00                                       ; $5ce9: $c7
    ld a, $c3                                     ; $5cea: $3e $c3
    ccf                                           ; $5cec: $3f
    rst $38                                       ; $5ced: $ff
    jp nz, $c13e                                  ; $5cee: $c2 $3e $c1

    jp $c33d                                      ; $5cf1: $c3 $3d $c3


    dec a                                         ; $5cf4: $3d
    cp e                                          ; $5cf5: $bb
    rst $30                                       ; $5cf6: $f7
    rst $10                                       ; $5cf7: $d7
    rst $38                                       ; $5cf8: $ff
    nop                                           ; $5cf9: $00
    and b                                         ; $5cfa: $a0
    jp hl                                         ; $5cfb: $e9


    jp $c3bc                                      ; $5cfc: $c3 $bc $c3


    cp h                                          ; $5cff: $bc
    ret                                           ; $5d00: $c9


    ld a, h                                       ; $5d01: $7c
    jp nz, $bee0                                  ; $5d02: $c2 $e0 $be

    pop hl                                        ; $5d05: $e1
    ld b, e                                       ; $5d06: $43
    db $f4                                        ; $5d07: $f4
    ldh [$a0], a                                  ; $5d08: $e0 $a0
    pop hl                                        ; $5d0a: $e1
    nop                                           ; $5d0b: $00
    rst $38                                       ; $5d0c: $ff
    cp a                                          ; $5d0d: $bf
    db $dd                                        ; $5d0e: $dd
    db $eb                                        ; $5d0f: $eb
    rst $38                                       ; $5d10: $ff
    nop                                           ; $5d11: $00
    ld a, [hl]                                    ; $5d12: $7e
    add c                                         ; $5d13: $81
    add b                                         ; $5d14: $80
    ld [c], a                                     ; $5d15: $e2
    db $f4                                        ; $5d16: $f4
    rst $38                                       ; $5d17: $ff
    rrca                                          ; $5d18: $0f
    ldh a, [rNR32]                                ; $5d19: $f0 $1c
    db $e3                                        ; $5d1b: $e3
    inc e                                         ; $5d1c: $1c
    di                                            ; $5d1d: $f3
    inc e                                         ; $5d1e: $1c
    db $e3                                        ; $5d1f: $e3
    rst $38                                       ; $5d20: $ff
    inc c                                         ; $5d21: $0c
    di                                            ; $5d22: $f3
    ccf                                           ; $5d23: $3f
    ret nc                                        ; $5d24: $d0

    dec de                                        ; $5d25: $1b
    db $f4                                        ; $5d26: $f4
    ld d, a                                       ; $5d27: $57
    rst $38                                       ; $5d28: $ff
    ld e, a                                       ; $5d29: $5f
    xor a                                         ; $5d2a: $af
    db $fc                                        ; $5d2b: $fc
    ld a, [hl]                                    ; $5d2c: $7e
    pop af                                        ; $5d2d: $f1
    cp h                                          ; $5d2e: $bc
    ld [hl], b                                    ; $5d2f: $70
    ldh [$fc], a                                  ; $5d30: $e0 $fc
    ld [hl], b                                    ; $5d32: $70
    ld [c], a                                     ; $5d33: $e2
    rst $38                                       ; $5d34: $ff
    ei                                            ; $5d35: $fb
    rst $38                                       ; $5d36: $ff
    sbc $ff                                       ; $5d37: $de $ff
    push af                                       ; $5d39: $f5
    rst $38                                       ; $5d3a: $ff
    xor d                                         ; $5d3b: $aa
    rst $38                                       ; $5d3c: $ff
    or a                                          ; $5d3d: $b7
    ld d, a                                       ; $5d3e: $57
    rst $38                                       ; $5d3f: $ff
    cp a                                          ; $5d40: $bf
    ld h, a                                       ; $5d41: $67
    and b                                         ; $5d42: $a0
    di                                            ; $5d43: $f3
    adc h                                         ; $5d44: $8c
    ld hl, sp-$1f                                 ; $5d45: $f8 $e1
    ld a, h                                       ; $5d47: $7c
    db $fd                                        ; $5d48: $fd
    db $e3                                        ; $5d49: $e3
    ld [hl], b                                    ; $5d4a: $70
    rst $20                                       ; $5d4b: $e7
    rst $28                                       ; $5d4c: $ef
    rst $38                                       ; $5d4d: $ff
    rst $10                                       ; $5d4e: $d7
    ld a, a                                       ; $5d4f: $7f
    db $ed                                        ; $5d50: $ed
    ld a, a                                       ; $5d51: $7f
    rst $38                                       ; $5d52: $ff
    rst $30                                       ; $5d53: $f7
    ccf                                           ; $5d54: $3f
    ld l, e                                       ; $5d55: $6b
    cp a                                          ; $5d56: $bf
    halt                                          ; $5d57: $76
    sbc a                                         ; $5d58: $9f
    ei                                            ; $5d59: $fb
    rra                                           ; $5d5a: $1f
    rst $38                                       ; $5d5b: $ff
    push af                                       ; $5d5c: $f5
    rra                                           ; $5d5d: $1f
    ld a, [$dd0f]                                 ; $5d5e: $fa $0f $dd
    daa                                           ; $5d61: $27
    ld a, $c7                                     ; $5d62: $3e $c7
    di                                            ; $5d64: $f3
    ccf                                           ; $5d65: $3f
    jp $e06e                                      ; $5d66: $c3 $6e $e0


    ld [hl], b                                    ; $5d69: $70
    ld [c], a                                     ; $5d6a: $e2
    db $ed                                        ; $5d6b: $ed
    rst $38                                       ; $5d6c: $ff
    db $d3                                        ; $5d6d: $d3
    inc a                                         ; $5d6e: $3c
    dec sp                                        ; $5d6f: $3b
    ld a, [hl]                                    ; $5d70: $7e
    add c                                         ; $5d71: $81
    ld [hl], b                                    ; $5d72: $70
    jp hl                                         ; $5d73: $e9


    db $e3                                        ; $5d74: $e3
    sbc h                                         ; $5d75: $9c
    cp h                                          ; $5d76: $bc
    inc d                                         ; $5d77: $14
    ldh [rBCPD], a                                ; $5d78: $e0 $69
    ldh [$eb], a                                  ; $5d7a: $e0 $eb
    jp $1063                                      ; $5d7c: $c3 $63 $10


    ldh [$57], a                                  ; $5d7f: $e0 $57
    and h                                         ; $5d81: $a4
    ldh [$7d], a                                  ; $5d82: $e0 $7d
    rst $38                                       ; $5d84: $ff
    db $d3                                        ; $5d85: $d3
    ld sp, hl                                     ; $5d86: $f9
    rst $28                                       ; $5d87: $ef
    ld c, d                                       ; $5d88: $4a
    pop hl                                        ; $5d89: $e1
    db $e4                                        ; $5d8a: $e4
    pop bc                                        ; $5d8b: $c1
    cp e                                          ; $5d8c: $bb
    db $f4                                        ; $5d8d: $f4
    ld e, e                                       ; $5d8e: $5b
    db $f4                                        ; $5d8f: $f4
    xor h                                         ; $5d90: $ac
    rst $38                                       ; $5d91: $ff
    di                                            ; $5d92: $f3
    ld l, h                                       ; $5d93: $6c
    di                                            ; $5d94: $f3
    cp h                                          ; $5d95: $bc
    db $e3                                        ; $5d96: $e3
    ld l, h                                       ; $5d97: $6c
    di                                            ; $5d98: $f3
    cp e                                          ; $5d99: $bb
    rst $38                                       ; $5d9a: $ff
    db $f4                                        ; $5d9b: $f4
    db $db                                        ; $5d9c: $db
    db $f4                                        ; $5d9d: $f4
    cp l                                          ; $5d9e: $bd
    jp $ffe7                                      ; $5d9f: $c3 $e7 $ff


    cp d                                          ; $5da2: $ba
    cp a                                          ; $5da3: $bf
    rst $38                                       ; $5da4: $ff
    ld d, l                                       ; $5da5: $55
    rst $38                                       ; $5da6: $ff
    xor e                                         ; $5da7: $ab
    rst $38                                       ; $5da8: $ff
    cp $58                                        ; $5da9: $fe $58
    and b                                         ; $5dab: $a0
    rst $38                                       ; $5dac: $ff
    rst $28                                       ; $5dad: $ef
    rst $38                                       ; $5dae: $ff
    db $db                                        ; $5daf: $db
    rst $38                                       ; $5db0: $ff
    ld l, a                                       ; $5db1: $6f
    adc [hl]                                      ; $5db2: $8e
    ldh [$af], a                                  ; $5db3: $e0 $af
    ld a, a                                       ; $5db5: $7f
    or l                                          ; $5db6: $b5
    rst $08                                       ; $5db7: $cf
    ld a, a                                       ; $5db8: $7f
    rst $28                                       ; $5db9: $ef
    ld a, a                                       ; $5dba: $7f
    ld d, a                                       ; $5dbb: $57
    ld b, [hl]                                    ; $5dbc: $46
    and b                                         ; $5dbd: $a0
    ret nc                                        ; $5dbe: $d0

    jp $e718                                      ; $5dbf: $c3 $18 $e7


    cp $f8                                        ; $5dc2: $fe $f8
    push hl                                       ; $5dc4: $e5
    ld d, a                                       ; $5dc5: $57
    rst $38                                       ; $5dc6: $ff
    xor h                                         ; $5dc7: $ac
    rst $38                                       ; $5dc8: $ff
    ld [hl], h                                    ; $5dc9: $74
    ei                                            ; $5dca: $fb
    cp b                                          ; $5dcb: $b8
    ld l, a                                       ; $5dcc: $6f
    rst $20                                       ; $5dcd: $e7
    ld e, b                                       ; $5dce: $58
    rst $20                                       ; $5dcf: $e7
    db $fc                                        ; $5dd0: $fc
    dec b                                         ; $5dd1: $05
    ldh [$98], a                                  ; $5dd2: $e0 $98
    rst $20                                       ; $5dd4: $e7
    ld b, b                                       ; $5dd5: $40
    rst $20                                       ; $5dd6: $e7
    rst $18                                       ; $5dd7: $df
    cp d                                          ; $5dd8: $ba
    rst $38                                       ; $5dd9: $ff
    db $ec                                        ; $5dda: $ec
    di                                            ; $5ddb: $f3
    sbc b                                         ; $5ddc: $98
    ldh [$e0], a                                  ; $5ddd: $e0 $e0
    cp d                                          ; $5ddf: $ba
    rst $38                                       ; $5de0: $ff
    jp hl                                         ; $5de1: $e9


    ld l, h                                       ; $5de2: $6c
    ld hl, sp-$20                                 ; $5de3: $f8 $e0
    ret z                                         ; $5de5: $c8

    push hl                                       ; $5de6: $e5
    rst $28                                       ; $5de7: $ef
    ld h, $e0                                     ; $5de8: $26 $e0
    ld l, l                                       ; $5dea: $6d
    rst $38                                       ; $5deb: $ff
    scf                                           ; $5dec: $37
    rst $38                                       ; $5ded: $ff
    rst $38                                       ; $5dee: $ff
    dec hl                                        ; $5def: $2b
    rst $38                                       ; $5df0: $ff
    ld d, $ff                                     ; $5df1: $16 $ff
    dec sp                                        ; $5df3: $3b
    rst $38                                       ; $5df4: $ff
    dec d                                         ; $5df5: $15
    rst $38                                       ; $5df6: $ff
    rst $38                                       ; $5df7: $ff
    ld a, [de]                                    ; $5df8: $1a
    rst $28                                       ; $5df9: $ef
    dec [hl]                                      ; $5dfa: $35
    rst $08                                       ; $5dfb: $cf
    ld a, $c7                                     ; $5dfc: $3e $c7
    dec de                                        ; $5dfe: $1b
    rst $38                                       ; $5dff: $ff
    rst $20                                       ; $5e00: $e7
    ld a, [de]                                    ; $5e01: $1a
    rst $20                                       ; $5e02: $e7
    dec a                                         ; $5e03: $3d
    jp $c33f                                      ; $5e04: $c3 $3f $c3


    add hl, de                                    ; $5e07: $19
    db $db                                        ; $5e08: $db
    rst $20                                       ; $5e09: $e7
    rst $10                                       ; $5e0a: $d7
    db $e4                                        ; $5e0b: $e4
    add b                                         ; $5e0c: $80
    inc l                                         ; $5e0d: $2c
    db $d3                                        ; $5e0e: $d3
    and b                                         ; $5e0f: $a0
    rst $20                                       ; $5e10: $e7
    sbc b                                         ; $5e11: $98
    rst $20                                       ; $5e12: $e7
    adc d                                         ; $5e13: $8a
    ld b, d                                       ; $5e14: $42
    pop hl                                        ; $5e15: $e1
    ret c                                         ; $5e16: $d8

    and b                                         ; $5e17: $a0
    ldh [$bc], a                                  ; $5e18: $e0 $bc
    sbc $c0                                       ; $5e1a: $de $c0
    or b                                          ; $5e1c: $b0
    pop hl                                        ; $5e1d: $e1
    ld b, b                                       ; $5e1e: $40
    pop hl                                        ; $5e1f: $e1
    set 7, [hl]                                   ; $5e20: $cb $fe
    ld a, b                                       ; $5e22: $78
    and $b0                                       ; $5e23: $e6 $b0
    rst $38                                       ; $5e25: $ff
    ld d, h                                       ; $5e26: $54
    ei                                            ; $5e27: $fb
    and h                                         ; $5e28: $a4
    ei                                            ; $5e29: $fb
    ld a, b                                       ; $5e2a: $78
    rst $38                                       ; $5e2b: $ff
    rst $30                                       ; $5e2c: $f7
    xor b                                         ; $5e2d: $a8
    rst $30                                       ; $5e2e: $f7
    ld h, h                                       ; $5e2f: $64
    ei                                            ; $5e30: $fb
    or h                                          ; $5e31: $b4
    ei                                            ; $5e32: $fb
    ret nc                                        ; $5e33: $d0

    rst $38                                       ; $5e34: $ff
    rst $38                                       ; $5e35: $ff
    pop bc                                        ; $5e36: $c1
    rst $38                                       ; $5e37: $ff
    or a                                          ; $5e38: $b7
    rst $38                                       ; $5e39: $ff
    ld e, l                                       ; $5e3a: $5d
    rst $38                                       ; $5e3b: $ff
    ld [$3e54], a                                 ; $5e3c: $ea $54 $3e
    ldh [$3a], a                                  ; $5e3f: $e0 $3a
    add c                                         ; $5e41: $81
    rst $38                                       ; $5e42: $ff
    sub h                                         ; $5e43: $94
    add b                                         ; $5e44: $80
    ld d, a                                       ; $5e45: $57
    ld a, $e0                                     ; $5e46: $3e $e0
    dec [hl]                                      ; $5e48: $35
    ld a, [hl-]                                   ; $5e49: $3a
    ldh [$f6], a                                  ; $5e4a: $e0 $f6
    xor [hl]                                      ; $5e4c: $ae
    ret nz                                        ; $5e4d: $c0

    rst $38                                       ; $5e4e: $ff
    rst $10                                       ; $5e4f: $d7
    ld hl, $ff83                                  ; $5e50: $21 $83 $ff
    db $dd                                        ; $5e53: $dd
    rst $38                                       ; $5e54: $ff
    ld [hl], a                                    ; $5e55: $77
    ld e, h                                       ; $5e56: $5c
    sbc h                                         ; $5e57: $9c
    ret nz                                        ; $5e58: $c0

    call c, $afe1                                 ; $5e59: $dc $e1 $af
    rst $38                                       ; $5e5c: $ff
    rst $18                                       ; $5e5d: $df
    adc $e0                                       ; $5e5e: $ce $e0
    rst $18                                       ; $5e60: $df
    ld hl, sp-$1a                                 ; $5e61: $f8 $e6
    inc d                                         ; $5e63: $14
    rst $38                                       ; $5e64: $ff
    push hl                                       ; $5e65: $e5
    sbc $e5                                       ; $5e66: $de $e5
    ld e, a                                       ; $5e68: $5f
    jp z, Jump_073_6fe0                           ; $5e69: $ca $e0 $6f

    add $e0                                       ; $5e6c: $c6 $e0
    ld hl, sp-$1b                                 ; $5e6e: $f8 $e5
    ldh [$63], a                                  ; $5e70: $e0 $63
    jp z, $e1f8                                   ; $5e72: $ca $f8 $e1

    ld e, a                                       ; $5e75: $5f
    sub [hl]                                      ; $5e76: $96
    ldh [$5f], a                                  ; $5e77: $e0 $5f
    ret nc                                        ; $5e79: $d0

    and $c7                                       ; $5e7a: $e6 $c7
    push hl                                       ; $5e7c: $e5
    ld l, c                                       ; $5e7d: $69
    rst $38                                       ; $5e7e: $ff
    rst $38                                       ; $5e7f: $ff
    call nc, $81fc                                ; $5e80: $d4 $fc $81
    ldh a, [rDMA]                                 ; $5e83: $f0 $46
    ldh [$8b], a                                  ; $5e85: $e0 $8b
    ret nz                                        ; $5e87: $c0

    ld a, a                                       ; $5e88: $7f
    ld d, a                                       ; $5e89: $57
    ret nz                                        ; $5e8a: $c0

    dec e                                         ; $5e8b: $1d
    add b                                         ; $5e8c: $80
    xor a                                         ; $5e8d: $af
    add b                                         ; $5e8e: $80
    db $fd                                        ; $5e8f: $fd
    xor a                                         ; $5e90: $af
    ld h, b                                       ; $5e91: $60
    db $fd                                        ; $5e92: $fd
    jp c, $8048                                   ; $5e93: $da $48 $80

    and b                                         ; $5e96: $a0
    db $fc                                        ; $5e97: $fc
    ld b, c                                       ; $5e98: $41
    ldh a, [$0b]                                  ; $5e99: $f0 $0b
    ret nz                                        ; $5e9b: $c0

    ei                                            ; $5e9c: $fb
    ld d, $00                                     ; $5e9d: $16 $00
    ld hl, sp-$1f                                 ; $5e9f: $f8 $e1
    ld a, [bc]                                    ; $5ea1: $0a
    ret nz                                        ; $5ea2: $c0

    rla                                           ; $5ea3: $17
    nop                                           ; $5ea4: $00
    cp l                                          ; $5ea5: $bd
    rst $30                                       ; $5ea6: $f7
    nop                                           ; $5ea7: $00
    ld l, a                                       ; $5ea8: $6f
    nop                                           ; $5ea9: $00
    push de                                       ; $5eaa: $d5
    ld h, b                                       ; $5eab: $60
    nop                                           ; $5eac: $00
    ld hl, sp-$02                                 ; $5ead: $f8 $fe
    db $f4                                        ; $5eaf: $f4
    rst $38                                       ; $5eb0: $ff
    cp $d8                                        ; $5eb1: $fe $d8
    db $fc                                        ; $5eb3: $fc
    pop af                                        ; $5eb4: $f1
    db $fc                                        ; $5eb5: $fc
    ld [c], a                                     ; $5eb6: $e2
    ld hl, sp-$2f                                 ; $5eb7: $f8 $d1
    rst $38                                       ; $5eb9: $ff
    ld hl, sp+$63                                 ; $5eba: $f8 $63
    ldh a, [$c6]                                  ; $5ebc: $f0 $c6
    ldh a, [$8b]                                  ; $5ebe: $f0 $8b
    ldh [rBGP], a                                 ; $5ec0: $e0 $47
    rst $38                                       ; $5ec2: $ff
    ldh [$8f], a                                  ; $5ec3: $e0 $8f
    ret nz                                        ; $5ec5: $c0

    dec de                                        ; $5ec6: $1b
    ret nz                                        ; $5ec7: $c0

    cpl                                           ; $5ec8: $2f
    add b                                         ; $5ec9: $80
    rra                                           ; $5eca: $1f
    rst $38                                       ; $5ecb: $ff
    add b                                         ; $5ecc: $80
    scf                                           ; $5ecd: $37
    nop                                           ; $5ece: $00
    ld e, a                                       ; $5ecf: $5f
    nop                                           ; $5ed0: $00
    inc h                                         ; $5ed1: $24
    inc a                                         ; $5ed2: $3c
    ld b, d                                       ; $5ed3: $42
    cp a                                          ; $5ed4: $bf
    nop                                           ; $5ed5: $00
    xor l                                         ; $5ed6: $ad
    nop                                           ; $5ed7: $00
    rst $30                                       ; $5ed8: $f7
    nop                                           ; $5ed9: $00
    ld a, l                                       ; $5eda: $7d
    jp nc, $ffe2                                  ; $5edb: $d2 $e2 $ff

    push af                                       ; $5ede: $f5
    nop                                           ; $5edf: $00
    db $ec                                        ; $5ee0: $ec
    pop hl                                        ; $5ee1: $e1
    cp a                                          ; $5ee2: $bf
    db $e4                                        ; $5ee3: $e4
    ldh [$2f], a                                  ; $5ee4: $e0 $2f
    add b                                         ; $5ee6: $80
    cp a                                          ; $5ee7: $bf
    add b                                         ; $5ee8: $80
    rst $18                                       ; $5ee9: $df
    ld d, a                                       ; $5eea: $57
    nop                                           ; $5eeb: $00
    ccf                                           ; $5eec: $3f
    nop                                           ; $5eed: $00
    push af                                       ; $5eee: $f5
    ld a, $e0                                     ; $5eef: $3e $e0
    ld b, l                                       ; $5ef1: $45
    rst $38                                       ; $5ef2: $ff
    rst $38                                       ; $5ef3: $ff
    nop                                           ; $5ef4: $00
    rst $00                                       ; $5ef5: $c7
    stop                                          ; $5ef6: $10 $00
    ld l, l                                       ; $5ef8: $6d
    nop                                           ; $5ef9: $00
    cp e                                          ; $5efa: $bb
    nop                                           ; $5efb: $00
    rst $38                                       ; $5efc: $ff
    rst $28                                       ; $5efd: $ef
    nop                                           ; $5efe: $00
    rst $20                                       ; $5eff: $e7
    ldh a, [rSCX]                                 ; $5f00: $f0 $43
    ldh a, [$e5]                                  ; $5f02: $f0 $e5
    ldh a, [rIE]                                  ; $5f04: $f0 $ff
    ld b, a                                       ; $5f06: $47
    ldh [$8a], a                                  ; $5f07: $e0 $8a
    ldh [$c7], a                                  ; $5f09: $e0 $c7
    ldh [$a5], a                                  ; $5f0b: $e0 $a5
    ldh a, [$eb]                                  ; $5f0d: $f0 $eb
    jp $30f0                                      ; $5f0f: $c3 $f0 $30


    ld h, e                                       ; $5f12: $63
    rst $18                                       ; $5f13: $df
    ld l, $60                                     ; $5f14: $2e $60
    xor l                                         ; $5f16: $ad
    rst $38                                       ; $5f17: $ff
    ld b, d                                       ; $5f18: $42
    rst $38                                       ; $5f19: $ff
    rst $38                                       ; $5f1a: $ff
    nop                                           ; $5f1b: $00
    jp $fffc                                      ; $5f1c: $c3 $fc $ff


    ld a, [$fcff]                                 ; $5f1f: $fa $ff $fc
    sbc $8c                                       ; $5f22: $de $8c
    ldh [$f8], a                                  ; $5f24: $e0 $f8
    cp $ec                                        ; $5f26: $fe $ec
    cp $f6                                        ; $5f28: $fe $f6
    ldh [rIE], a                                  ; $5f2a: $e0 $ff
    rst $38                                       ; $5f2c: $ff
    rst $38                                       ; $5f2d: $ff
    add b                                         ; $5f2e: $80
    ccf                                           ; $5f2f: $3f
    add b                                         ; $5f30: $80
    ld a, a                                       ; $5f31: $7f
    ret nz                                        ; $5f32: $c0

    sbc a                                         ; $5f33: $9f
    ret nz                                        ; $5f34: $c0

    ld c, a                                       ; $5f35: $4f
    rst $38                                       ; $5f36: $ff
    ldh [$87], a                                  ; $5f37: $e0 $87
    ldh a, [$d5]                                  ; $5f39: $f0 $d5
    db $fc                                        ; $5f3b: $fc
    ld l, c                                       ; $5f3c: $69
    rst $38                                       ; $5f3d: $ff
    ccf                                           ; $5f3e: $3f
    rst $38                                       ; $5f3f: $ff
    nop                                           ; $5f40: $00
    rrca                                          ; $5f41: $0f
    ret nz                                        ; $5f42: $c0

    ld b, e                                       ; $5f43: $43
    ldh a, [$a0]                                  ; $5f44: $f0 $a0
    db $fc                                        ; $5f46: $fc
    db $f4                                        ; $5f47: $f4
    add $4a                                       ; $5f48: $c6 $4a
    ldh [rIE], a                                  ; $5f4a: $e0 $ff
    rst $38                                       ; $5f4c: $ff
    ld b, d                                       ; $5f4d: $42
    ldh [$88], a                                  ; $5f4e: $e0 $88
    db $e4                                        ; $5f50: $e4
    add sp, -$1b                                  ; $5f51: $e8 $e5
    db $e3                                        ; $5f53: $e3
    rrca                                          ; $5f54: $0f
    rst $38                                       ; $5f55: $ff
    and $0f                                       ; $5f56: $e6 $0f
    rr a                                          ; $5f58: $cb $1f
    rst $00                                       ; $5f5a: $c7
    rra                                           ; $5f5b: $1f
    adc a                                         ; $5f5c: $8f
    ccf                                           ; $5f5d: $3f
    rst $30                                       ; $5f5e: $f7
    sbc e                                         ; $5f5f: $9b
    ccf                                           ; $5f60: $3f
    cpl                                           ; $5f61: $2f
    db $fc                                        ; $5f62: $fc
    ld b, b                                       ; $5f63: $40
    cp $00                                        ; $5f64: $fe $00
    cp $00                                        ; $5f66: $fe $00
    rst $38                                       ; $5f68: $ff
    db $fc                                        ; $5f69: $fc
    ld bc, $01fc                                  ; $5f6a: $01 $fc $01
    ld hl, sp+$03                                 ; $5f6d: $f8 $03

jr_073_5f6f:
    ld sp, hl                                     ; $5f6f: $f9
    inc bc                                        ; $5f70: $03
    rst $08                                       ; $5f71: $cf
    ld a, [c]                                     ; $5f72: $f2
    rlca                                          ; $5f73: $07
    pop af                                        ; $5f74: $f1
    rlca                                          ; $5f75: $07
    ret nc                                        ; $5f76: $d0

    push hl                                       ; $5f77: $e5
    inc h                                         ; $5f78: $24
    pop hl                                        ; $5f79: $e1
    db $d3                                        ; $5f7a: $d3
    nop                                           ; $5f7b: $00
    ld e, a                                       ; $5f7c: $5f
    ld b, d                                       ; $5f7d: $42
    ld a, [hl]                                    ; $5f7e: $7e
    cp $00                                        ; $5f7f: $fe $00
    rst $38                                       ; $5f81: $ff
    ld [c], a                                     ; $5f82: $e2
    ldh [$fe], a                                  ; $5f83: $e0 $fe
    sbc $e0                                       ; $5f85: $de $e0
    rst $08                                       ; $5f87: $cf
    db $fc                                        ; $5f88: $fc
    ld bc, $01ff                                  ; $5f89: $01 $ff $01
    ld a, [c]                                     ; $5f8c: $f2
    ldh [$0a], a                                  ; $5f8d: $e0 $0a
    ld [c], a                                     ; $5f8f: $e2
    inc a                                         ; $5f90: $3c
    nop                                           ; $5f91: $00
    rst $30                                       ; $5f92: $f7
    nop                                           ; $5f93: $00
    rst $00                                       ; $5f94: $c7
    ld b, l                                       ; $5f95: $45
    add h                                         ; $5f96: $84
    ret nz                                        ; $5f97: $c0

    push af                                       ; $5f98: $f5
    rst $38                                       ; $5f99: $ff
    rst $20                                       ; $5f9a: $e7
    rrca                                          ; $5f9b: $0f
    rst $28                                       ; $5f9c: $ef
    ld [c], a                                     ; $5f9d: $e2
    rrca                                          ; $5f9e: $0f
    rst $30                                       ; $5f9f: $f7
    rrca                                          ; $5fa0: $0f
    add $e1                                       ; $5fa1: $c6 $e1
    di                                            ; $5fa3: $f3
    rlca                                          ; $5fa4: $07
    push hl                                       ; $5fa5: $e5
    cp a                                          ; $5fa6: $bf
    rrca                                          ; $5fa7: $0f
    db $e3                                        ; $5fa8: $e3
    rrca                                          ; $5fa9: $0f
    jr jr_073_5f6f                                ; $5faa: $18 $c3

    ld b, d                                       ; $5fac: $42
    ld d, [hl]                                    ; $5fad: $56
    ldh [$f7], a                                  ; $5fae: $e0 $f7
    ld [$c676], a                                 ; $5fb0: $ea $76 $c6
    ccf                                           ; $5fb3: $3f
    ld a, [hl]                                    ; $5fb4: $7e
    ret nz                                        ; $5fb5: $c0

    ccf                                           ; $5fb6: $3f
    add b                                         ; $5fb7: $80
    and b                                         ; $5fb8: $a0
    sbc a                                         ; $5fb9: $9f
    ld a, a                                       ; $5fba: $7f
    scf                                           ; $5fbb: $37
    db $fd                                        ; $5fbc: $fd
    ld a, a                                       ; $5fbd: $7f
    or $e0                                        ; $5fbe: $f6 $e0
    rst $38                                       ; $5fc0: $ff
    ld [$5500], sp                                ; $5fc1: $08 $00 $55
    nop                                           ; $5fc4: $00
    cp [hl]                                       ; $5fc5: $be
    ld [hl], h                                    ; $5fc6: $74
    ldh a, [$c0]                                  ; $5fc7: $f0 $c0
    ld l, b                                       ; $5fc9: $68
    push hl                                       ; $5fca: $e5
    ld e, a                                       ; $5fcb: $5f
    db $fc                                        ; $5fcc: $fc
    ret nz                                        ; $5fcd: $c0

    ld a, a                                       ; $5fce: $7f
    nop                                           ; $5fcf: $00
    xor a                                         ; $5fd0: $af
    db $fc                                        ; $5fd1: $fc
    ldh [$9d], a                                  ; $5fd2: $e0 $9d
    ccf                                           ; $5fd4: $3f
    db $f4                                        ; $5fd5: $f4
    ld [c], a                                     ; $5fd6: $e2
    ld de, $2a80                                  ; $5fd7: $11 $80 $2a
    call nc, $f0c0                                ; $5fda: $d4 $c0 $f0
    push hl                                       ; $5fdd: $e5
    cp a                                          ; $5fde: $bf
    ldh a, [$fa]                                  ; $5fdf: $f0 $fa
    db $e4                                        ; $5fe1: $e4
    ld l, d                                       ; $5fe2: $6a
    jp hl                                         ; $5fe3: $e9


    db $f4                                        ; $5fe4: $f4
    db $eb                                        ; $5fe5: $eb
    nop                                           ; $5fe6: $00
    add e                                         ; $5fe7: $83
    dec de                                        ; $5fe8: $1b
    db $e4                                        ; $5fe9: $e4
    dec d                                         ; $5fea: $15
    xor $ff                                       ; $5feb: $ee $ff
    dec l                                         ; $5fed: $2d
    ret nc                                        ; $5fee: $d0

    dec b                                         ; $5fef: $05
    ld a, [$c034]                                 ; $5ff0: $fa $34 $c0
    ld d, a                                       ; $5ff3: $57
    xor d                                         ; $5ff4: $aa
    rst $18                                       ; $5ff5: $df
    and h                                         ; $5ff6: $a4
    ld a, [bc]                                    ; $5ff7: $0a
    ld c, e                                       ; $5ff8: $4b
    add b                                         ; $5ff9: $80
    ld b, d                                       ; $5ffa: $42
    ldh [rNR41], a                                ; $5ffb: $e0 $20
    dec e                                         ; $5ffd: $1d
    ld [bc], a                                    ; $5ffe: $02
    rst $38                                       ; $5fff: $ff
    cp h                                          ; $6000: $bc
    inc bc                                        ; $6001: $03
    sbc b                                         ; $6002: $98
    ld h, a                                       ; $6003: $67
    rla                                           ; $6004: $17
    xor d                                         ; $6005: $aa
    db $e4                                        ; $6006: $e4
    ld a, [bc]                                    ; $6007: $0a
    rst $38                                       ; $6008: $ff
    adc e                                         ; $6009: $8b
    jr nz, @+$24                                  ; $600a: $20 $22

    nop                                           ; $600c: $00
    db $dd                                        ; $600d: $dd
    nop                                           ; $600e: $00
    cp l                                          ; $600f: $bd
    ld b, d                                       ; $6010: $42
    cp $08                                        ; $6011: $fe $08
    and c                                         ; $6013: $a1
    ld d, $a9                                     ; $6014: $16 $a9
    add sp, $03                                   ; $6016: $e8 $03
    add l                                         ; $6018: $85
    ld [hl+], a                                   ; $6019: $22
    ld a, [hl+]                                   ; $601a: $2a
    rst $38                                       ; $601b: $ff
    rlca                                          ; $601c: $07
    db $db                                        ; $601d: $db
    nop                                           ; $601e: $00
    cp h                                          ; $601f: $bc
    ld b, e                                       ; $6020: $43
    ccf                                           ; $6021: $3f
    ret nz                                        ; $6022: $c0

    add hl, de                                    ; $6023: $19
    ei                                            ; $6024: $fb

jr_073_6025:
    and $18                                       ; $6025: $e6 $18
    ld h, b                                       ; $6027: $60
    and b                                         ; $6028: $a0
    inc a                                         ; $6029: $3c
    jp $e7b8                                      ; $602a: $c3 $b8 $e7


    ld [$f7ff], sp                                ; $602d: $08 $ff $f7
    call z, $90fb                                 ; $6030: $cc $fb $90
    ld l, a                                       ; $6033: $6f
    ld a, [hl+]                                   ; $6034: $2a
    rst $38                                       ; $6035: $ff
    rra                                           ; $6036: $1f
    rst $38                                       ; $6037: $ff
    ldh [$d0], a                                  ; $6038: $e0 $d0
    ld bc, $a15a                                  ; $603a: $01 $5a $a1
    ld c, b                                       ; $603d: $48
    rlca                                          ; $603e: $07
    ld hl, sp-$09                                 ; $603f: $f8 $f7
    rlca                                          ; $6041: $07
    inc e                                         ; $6042: $1c
    inc bc                                        ; $6043: $03
    ret nz                                        ; $6044: $c0

    pop hl                                        ; $6045: $e1
    or b                                          ; $6046: $b0
    rrca                                          ; $6047: $0f
    call z, $ff3f                                 ; $6048: $cc $3f $ff
    ld a, c                                       ; $604b: $79
    add [hl]                                      ; $604c: $86
    ld [de], a                                    ; $604d: $12
    rst $28                                       ; $604e: $ef
    dec de                                        ; $604f: $1b
    ldh [$3c], a                                  ; $6050: $e0 $3c
    jp $d0fe                                      ; $6052: $c3 $fe $d0


    pop hl                                        ; $6055: $e1
    dec a                                         ; $6056: $3d
    ret nz                                        ; $6057: $c0

    ld c, a                                       ; $6058: $4f
    and b                                         ; $6059: $a0
    jr nc, jr_073_6025                            ; $605a: $30 $c9

    ld d, d                                       ; $605c: $52
    rst $38                                       ; $605d: $ff
    and c                                         ; $605e: $a1
    ld l, l                                       ; $605f: $6d
    jp nz, $c934                                  ; $6060: $c2 $34 $c9

    ld c, b                                       ; $6063: $48
    or e                                          ; $6064: $b3
    ld a, [de]                                    ; $6065: $1a
    rst $38                                       ; $6066: $ff
    push hl                                       ; $6067: $e5
    dec d                                         ; $6068: $15
    cp a                                          ; $6069: $bf
    adc $3f                                       ; $606a: $ce $3f
    ld d, [hl]                                    ; $606c: $56
    cp a                                          ; $606d: $bf
    ld l, l                                       ; $606e: $6d
    rst $38                                       ; $606f: $ff
    cp a                                          ; $6070: $bf
    sbc [hl]                                      ; $6071: $9e
    ld a, a                                       ; $6072: $7f
    ld l, d                                       ; $6073: $6a
    cp a                                          ; $6074: $bf
    dec e                                         ; $6075: $1d
    rst $38                                       ; $6076: $ff
    ld c, [hl]                                    ; $6077: $4e
    rst $38                                       ; $6078: $ff
    cp a                                          ; $6079: $bf
    dec [hl]                                      ; $607a: $35
    ret nz                                        ; $607b: $c0

    ld c, [hl]                                    ; $607c: $4e
    and c                                         ; $607d: $a1
    ld [hl-], a                                   ; $607e: $32
    ret                                           ; $607f: $c9


    ld d, a                                       ; $6080: $57
    rst $38                                       ; $6081: $ff
    and d                                         ; $6082: $a2
    ld a, a                                       ; $6083: $7f
    push bc                                       ; $6084: $c5
    ld [hl-], a                                   ; $6085: $32
    rst $08                                       ; $6086: $cf
    ld d, l                                       ; $6087: $55
    cp a                                          ; $6088: $bf
    dec hl                                        ; $6089: $2b
    sbc $90                                       ; $608a: $de $90
    add d                                         ; $608c: $82
    cp h                                          ; $608d: $bc
    ld b, e                                       ; $608e: $43
    ld e, b                                       ; $608f: $58
    and a                                         ; $6090: $a7
    nop                                           ; $6091: $00
    and b                                         ; $6092: $a0
    db $e3                                        ; $6093: $e3
    call nz, $f3ff                                ; $6094: $c4 $ff $f3
    or h                                          ; $6097: $b4
    db $eb                                        ; $6098: $eb
    sbc d                                         ; $6099: $9a
    ld a, a                                       ; $609a: $7f
    rst $28                                       ; $609b: $ef
    ccf                                           ; $609c: $3f
    ld a, [hl-]                                   ; $609d: $3a
    rst $38                                       ; $609e: $ff
    rst $18                                       ; $609f: $df
    ld c, l                                       ; $60a0: $4d
    rst $38                                       ; $60a1: $ff
    or h                                          ; $60a2: $b4
    rst $38                                       ; $60a3: $ff
    ld a, d                                       ; $60a4: $7a
    rst $38                                       ; $60a5: $ff
    xor b                                         ; $60a6: $a8
    ei                                            ; $60a7: $fb
    rst $38                                       ; $60a8: $ff
    ld [hl], h                                    ; $60a9: $74
    cp [hl]                                       ; $60aa: $be
    add b                                         ; $60ab: $80
    inc hl                                        ; $60ac: $23
    rst $18                                       ; $60ad: $df
    dec b                                         ; $60ae: $05
    rst $38                                       ; $60af: $ff
    ld a, [de]                                    ; $60b0: $1a
    cp $70                                        ; $60b1: $fe $70
    add [hl]                                      ; $60b3: $86
    call nc, $bbff                                ; $60b4: $d4 $ff $bb
    cp $74                                        ; $60b7: $fe $74
    rst $38                                       ; $60b9: $ff
    xor [hl]                                      ; $60ba: $ae
    ld a, [$209a]                                 ; $60bb: $fa $9a $20
    xor [hl]                                      ; $60be: $ae
    ld a, [hl-]                                   ; $60bf: $3a
    add b                                         ; $60c0: $80
    inc bc                                        ; $60c1: $03
    rst $38                                       ; $60c2: $ff
    ld d, d                                       ; $60c3: $52
    db $fc                                        ; $60c4: $fc
    xor d                                         ; $60c5: $aa
    xor a                                         ; $60c6: $af
    db $fd                                        ; $60c7: $fd
    ld [hl], a                                    ; $60c8: $77
    ei                                            ; $60c9: $fb
    and d                                         ; $60ca: $a2
    or b                                          ; $60cb: $b0
    ld h, b                                       ; $60cc: $60
    dec c                                         ; $60cd: $0d
    xor h                                         ; $60ce: $ac
    ld h, b                                       ; $60cf: $60
    ld a, [bc]                                    ; $60d0: $0a
    rst $38                                       ; $60d1: $ff
    rst $38                                       ; $60d2: $ff
    ld h, a                                       ; $60d3: $67
    adc b                                         ; $60d4: $88
    call Call_000_32bb                            ; $60d5: $cd $bb $32
    rst $28                                       ; $60d8: $ef
    db $eb                                        ; $60d9: $eb
    ld a, [$e0de]                                 ; $60da: $fa $de $e0
    cp $1c                                        ; $60dd: $fe $1c
    add b                                         ; $60df: $80
    cp d                                          ; $60e0: $ba
    rst $38                                       ; $60e1: $ff
    daa                                           ; $60e2: $27
    ret z                                         ; $60e3: $c8

    ld l, l                                       ; $60e4: $6d
    rst $38                                       ; $60e5: $ff
    sbc e                                         ; $60e6: $9b
    ld [hl+], a                                   ; $60e7: $22
    rst $38                                       ; $60e8: $ff

jr_073_60e9:
    ld a, e                                       ; $60e9: $7b
    rst $38                                       ; $60ea: $ff
    or [hl]                                       ; $60eb: $b6
    rst $38                                       ; $60ec: $ff
    ld e, [hl]                                    ; $60ed: $5e
    ei                                            ; $60ee: $fb
    rst $38                                       ; $60ef: $ff
    cp e                                          ; $60f0: $bb
    add h                                         ; $60f1: $84
    ld h, b                                       ; $60f2: $60
    ld c, $bf                                     ; $60f3: $0e $bf
    db $dd                                        ; $60f5: $dd
    ccf                                           ; $60f6: $3f
    ld l, [hl]                                    ; $60f7: $6e
    cp e                                          ; $60f8: $bb
    cp a                                          ; $60f9: $bf
    ld d, a                                       ; $60fa: $57
    ld [hl], b                                    ; $60fb: $70

jr_073_60fc:
    ldh [$6d], a                                  ; $60fc: $e0 $6d
    cp a                                          ; $60fe: $bf
    ld e, $70                                     ; $60ff: $1e $70
    ldh [rHDMA2], a                               ; $6101: $e0 $52
    rst $38                                       ; $6103: $ff
    db $fd                                        ; $6104: $fd
    xor $f9                                       ; $6105: $ee $f9
    ld c, c                                       ; $6107: $49
    or $a7                                        ; $6108: $f6 $a7
    ld hl, sp+$47                                 ; $610a: $f8 $47
    rst $38                                       ; $610c: $ff
    ldh a, [$b4]                                  ; $610d: $f0 $b4
    ret                                           ; $610f: $c9


    ld c, d                                       ; $6110: $4a
    or c                                          ; $6111: $b1
    dec de                                        ; $6112: $1b
    db $e4                                        ; $6113: $e4
    rst $38                                       ; $6114: $ff
    rst $38                                       ; $6115: $ff
    rra                                           ; $6116: $1f
    ld c, d                                       ; $6117: $4a
    cp a                                          ; $6118: $bf
    ld l, c                                       ; $6119: $69
    sub a                                         ; $611a: $97
    ld [de], a                                    ; $611b: $12
    rst $28                                       ; $611c: $ef
    add hl, de                                    ; $611d: $19
    rst $30                                       ; $611e: $f7
    ld [c], a                                     ; $611f: $e2
    jr c, jr_073_60e9                             ; $6120: $38 $c7

    nop                                           ; $6122: $00
    pop hl                                        ; $6123: $e1
    dec hl                                        ; $6124: $2b
    ret nc                                        ; $6125: $d0

    xor d                                         ; $6126: $aa
    ld b, c                                       ; $6127: $41
    cp a                                          ; $6128: $bf
    cp $01                                        ; $6129: $fe $01
    xor b                                         ; $612b: $a8
    rlca                                          ; $612c: $07
    ld a, b                                       ; $612d: $78
    add a                                         ; $612e: $87
    db $10                                        ; $612f: $10
    db $e3                                        ; $6130: $e3

jr_073_6131:
    and c                                         ; $6131: $a1
    rst $38                                       ; $6132: $ff
    ld e, $8c                                     ; $6133: $1e $8c
    ld a, d                                       ; $6135: $7a
    ld d, a                                       ; $6136: $57
    xor b                                         ; $6137: $a8
    jr c, jr_073_60fc                             ; $6138: $38 $c2

    dec c                                         ; $613a: $0d
    rst $30                                       ; $613b: $f7
    ldh a, [$3d]                                  ; $613c: $f0 $3d
    jp nz, Jump_073_61d8                          ; $613e: $c2 $d8 $61

Jump_073_6141:
    cpl                                           ; $6141: $2f
    sub b                                         ; $6142: $90
    ld sp, hl                                     ; $6143: $f9
    nop                                           ; $6144: $00
    rst $38                                       ; $6145: $ff
    adc d                                         ; $6146: $8a
    ld hl, $0728                                  ; $6147: $21 $28 $07
    ret c                                         ; $614a: $d8

    rlca                                          ; $614b: $07
    cp h                                          ; $614c: $bc
    ld b, e                                       ; $614d: $43
    db $fc                                        ; $614e: $fc
    ret z                                         ; $614f: $c8

    ld h, c                                       ; $6150: $61
    add hl, sp                                    ; $6151: $39
    and e                                         ; $6152: $a3
    ld [bc], a                                    ; $6153: $02
    db $fd                                        ; $6154: $fd
    ld bc, $0dfe                                  ; $6155: $01 $fe $0d
    ldh a, [rIE]                                  ; $6158: $f0 $ff
    ld [bc], a                                    ; $615a: $02

Call_073_615b:
    db $fd                                        ; $615b: $fd
    ld a, [hl+]                                   ; $615c: $2a
    ret nc                                        ; $615d: $d0

    dec hl                                        ; $615e: $2b
    sub $f5                                       ; $615f: $d6 $f5
    ld a, [bc]                                    ; $6161: $0a
    rst $38                                       ; $6162: $ff
    ld e, a                                       ; $6163: $5f
    add b                                         ; $6164: $80
    xor c                                         ; $6165: $a9
    ld [bc], a                                    ; $6166: $02
    ld a, a                                       ; $6167: $7f
    add b                                         ; $6168: $80
    db $10                                        ; $6169: $10
    rrca                                          ; $616a: $0f
    rst $38                                       ; $616b: $ff
    ldh [$1f], a                                  ; $616c: $e0 $1f
    add b                                         ; $616e: $80
    ld a, a                                       ; $616f: $7f
    ld d, a                                       ; $6170: $57
    xor d                                         ; $6171: $aa
    push af                                       ; $6172: $f5
    ld a, [bc]                                    ; $6173: $0a
    cp a                                          ; $6174: $bf
    sbc a                                         ; $6175: $9f
    jr nz, jr_073_6131                            ; $6176: $20 $b9

    ld [bc], a                                    ; $6178: $02
    ld h, a                                       ; $6179: $67
    sbc b                                         ; $617a: $98
    rrca                                          ; $617b: $0f
    and e                                         ; $617c: $a3
    ld c, d                                       ; $617d: $4a
    rst $38                                       ; $617e: $ff
    or l                                          ; $617f: $b5
    db $f4                                        ; $6180: $f4
    dec bc                                        ; $6181: $0b
    sbc l                                         ; $6182: $9d
    ld [hl+], a                                   ; $6183: $22
    cp d                                          ; $6184: $ba
    rlca                                          ; $6185: $07
    ld a, e                                       ; $6186: $7b
    ld e, a                                       ; $6187: $5f
    add b                                         ; $6188: $80
    inc c                                         ; $6189: $0c
    di                                            ; $618a: $f3
    rlca                                          ; $618b: $07
    ld hl, sp-$41                                 ; $618c: $f8 $bf
    and c                                         ; $618e: $a1
    add b                                         ; $618f: $80
    sbc [hl]                                      ; $6190: $9e
    nop                                           ; $6191: $00
    db $ed                                        ; $6192: $ed
    and b                                         ; $6193: $a0
    sbc d                                         ; $6194: $9a
    nop                                           ; $6195: $00
    ld l, b                                       ; $6196: $68
    rst $38                                       ; $6197: $ff
    sub b                                         ; $6198: $90
    pop bc                                        ; $6199: $c1
    rla                                           ; $619a: $17
    add sp, -$2f                                  ; $619b: $e8 $d1
    rst $20                                       ; $619d: $e7
    nop                                           ; $619e: $00
    ld l, $d1                                     ; $619f: $2e $d1
    add b                                         ; $61a1: $80
    pop hl                                        ; $61a2: $e1
    ret nz                                        ; $61a3: $c0

    db $e3                                        ; $61a4: $e3
    or b                                          ; $61a5: $b0
    rrca                                          ; $61a6: $0f
    add $fc                                       ; $61a7: $c6 $fc
    sub b                                         ; $61a9: $90
    call nz, $e3d0                                ; $61aa: $c4 $d0 $e3
    dec a                                         ; $61ad: $3d
    ret nz                                        ; $61ae: $c0

    ld e, a                                       ; $61af: $5f
    and b                                         ; $61b0: $a0
    inc [hl]                                      ; $61b1: $34
    ret                                           ; $61b2: $c9


    rst $10                                       ; $61b3: $d7
    ld e, d                                       ; $61b4: $5a
    and c                                         ; $61b5: $a1
    ld a, l                                       ; $61b6: $7d
    sub b                                         ; $61b7: $90
    ret nz                                        ; $61b8: $c0

    ld c, h                                       ; $61b9: $4c
    sub b                                         ; $61ba: $90
    ret nz                                        ; $61bb: $c0

    ld d, l                                       ; $61bc: $55
    cp a                                          ; $61bd: $bf
    ei                                            ; $61be: $fb
    adc [hl]                                      ; $61bf: $8e
    ld a, a                                       ; $61c0: $7f
    sub b                                         ; $61c1: $90
    jp z, $5ac8                                   ; $61c2: $ca $c8 $5a

    and c                                         ; $61c5: $a1
    inc a                                         ; $61c6: $3c
    jp $537f                                      ; $61c7: $c3 $7f $53


    xor [hl]                                      ; $61ca: $ae
    ld [hl], a                                    ; $61cb: $77
    call $bf42                                    ; $61cc: $cd $42 $bf
    dec d                                         ; $61cf: $15
    ld l, d                                       ; $61d0: $6a
    ld h, b                                       ; $61d1: $60
    cp $6b                                        ; $61d2: $fe $6b
    add c                                         ; $61d4: $81
    ret nz                                        ; $61d5: $c0

    ccf                                           ; $61d6: $3f
    ld b, b                                       ; $61d7: $40

Jump_073_61d8:
    cp a                                          ; $61d8: $bf
    ld b, b                                       ; $61d9: $40
    rst $38                                       ; $61da: $ff
    or b                                          ; $61db: $b0
    cp a                                          ; $61dc: $bf
    rst $28                                       ; $61dd: $ef
    call z, $a4f3                                 ; $61de: $cc $f3 $a4
    ei                                            ; $61e1: $fb
    dec d                                         ; $61e2: $15
    cp h                                          ; $61e3: $bc
    ret nz                                        ; $61e4: $c0

    dec b                                         ; $61e5: $05
    xor e                                         ; $61e6: $ab
    rst $38                                       ; $61e7: $ff
    ld [bc], a                                    ; $61e8: $02
    add hl, hl                                    ; $61e9: $29
    and [hl]                                      ; $61ea: $a6
    ld d, e                                       ; $61eb: $53
    or b                                          ; $61ec: $b0
    ret nz                                        ; $61ed: $c0

    ld [hl], l                                    ; $61ee: $75
    or b                                          ; $61ef: $b0
    ret z                                         ; $61f0: $c8

    ld [hl], a                                    ; $61f1: $77
    xor e                                         ; $61f2: $ab
    adc b                                         ; $61f3: $88
    call z, $cab0                                 ; $61f4: $cc $b0 $ca
    scf                                           ; $61f7: $37
    or b                                          ; $61f8: $b0
    call z, $b04e                                 ; $61f9: $cc $4e $b0
    adc $ae                                       ; $61fc: $ce $ae
    db $db                                        ; $61fe: $db
    ld sp, hl                                     ; $61ff: $f9
    ld a, c                                       ; $6200: $79
    or b                                          ; $6201: $b0
    ret z                                         ; $6202: $c8

    cp a                                          ; $6203: $bf
    ld e, a                                       ; $6204: $5f
    or b                                          ; $6205: $b0
    jp $e21d                                      ; $6206: $c3 $1d $e2


    ei                                            ; $6209: $fb
    ld [$20f7], sp                                ; $620a: $08 $f7 $20
    pop hl                                        ; $620d: $e1
    dec l                                         ; $620e: $2d
    ret nc                                        ; $620f: $d0

    sbc d                                         ; $6210: $9a
    ld h, c                                       ; $6211: $61
    ld a, [hl]                                    ; $6212: $7e
    cp e                                          ; $6213: $bb
    add c                                         ; $6214: $81
    add sp, $30                                   ; $6215: $e8 $30
    and $61                                       ; $6217: $e6 $61
    ld e, $95                                     ; $6219: $1e $95
    or b                                          ; $621b: $b0
    ret nz                                        ; $621c: $c0

    add hl, sp                                    ; $621d: $39
    rst $30                                       ; $621e: $f7
    jp nz, $f00f                                  ; $621f: $c2 $0f $f0

    rst $38                                       ; $6222: $ff
    ld h, e                                       ; $6223: $63
    ld d, a                                       ; $6224: $57
    xor b                                         ; $6225: $a8
    ei                                            ; $6226: $fb
    nop                                           ; $6227: $00
    cp a                                          ; $6228: $bf
    sbc [hl]                                      ; $6229: $9e
    ld hl, $07a8                                  ; $622a: $21 $a8 $07
    ld [hl], b                                    ; $622d: $70
    adc a                                         ; $622e: $8f
    rst $28                                       ; $622f: $ef
    ld h, e                                       ; $6230: $63
    inc c                                         ; $6231: $0c
    rst $38                                       ; $6232: $ff
    rst $30                                       ; $6233: $f7
    reti                                          ; $6234: $d9


    ld l, a                                       ; $6235: $6f
    ld [$63ff], sp                                ; $6236: $08 $ff $63
    cp l                                          ; $6239: $bd
    sub $ff                                       ; $623a: $d6 $ff
    ld l, e                                       ; $623c: $6b
    ld l, d                                       ; $623d: $6a
    rst $18                                       ; $623e: $df
    jr nc, @-$1f                                  ; $623f: $30 $df

    ld d, e                                       ; $6241: $53
    db $fd                                        ; $6242: $fd
    nop                                           ; $6243: $00
    rst $38                                       ; $6244: $ff
    rst $38                                       ; $6245: $ff
    ld e, l                                       ; $6246: $5d
    rst $20                                       ; $6247: $e7
    ld [$40ff], sp                                ; $6248: $08 $ff $40
    cp a                                          ; $624b: $bf
    ld l, h                                       ; $624c: $6c
    sbc e                                         ; $624d: $9b
    or a                                          ; $624e: $b7
    ld c, b                                       ; $624f: $48
    call c, Call_073_40c0                         ; $6250: $dc $c0 $40
    rst $38                                       ; $6253: $ff
    ld b, h                                       ; $6254: $44
    dec b                                         ; $6255: $05
    inc a                                         ; $6256: $3c
    dec b                                         ; $6257: $05
    ld d, l                                       ; $6258: $55
    ei                                            ; $6259: $fb
    nop                                           ; $625a: $00
    cp d                                          ; $625b: $ba
    cp [hl]                                       ; $625c: $be
    add b                                         ; $625d: $80
    xor e                                         ; $625e: $ab
    nop                                           ; $625f: $00
    ld e, l                                       ; $6260: $5d
    nop                                           ; $6261: $00
    ld [$b6fa], a                                 ; $6262: $ea $fa $b6
    add b                                         ; $6265: $80
    xor [hl]                                      ; $6266: $ae
    or d                                          ; $6267: $b2
    add b                                         ; $6268: $80
    adc d                                         ; $6269: $8a
    nop                                           ; $626a: $00
    ld d, h                                       ; $626b: $54
    nop                                           ; $626c: $00
    xor d                                         ; $626d: $aa
    cp $f0                                        ; $626e: $fe $f0
    ldh [$aa], a                                  ; $6270: $e0 $aa
    nop                                           ; $6272: $00
    dec d                                         ; $6273: $15
    nop                                           ; $6274: $00
    xor b                                         ; $6275: $a8
    nop                                           ; $6276: $00
    ld d, c                                       ; $6277: $51
    rst $38                                       ; $6278: $ff
    nop                                           ; $6279: $00
    ld [$2200], sp                                ; $627a: $08 $00 $22
    nop                                           ; $627d: $00
    sub h                                         ; $627e: $94
    nop                                           ; $627f: $00
    add hl, hl                                    ; $6280: $29
    xor a                                         ; $6281: $af
    nop                                           ; $6282: $00
    ld b, h                                       ; $6283: $44
    nop                                           ; $6284: $00
    db $10                                        ; $6285: $10
    db $e4                                        ; $6286: $e4
    ldh [rP1], a                                  ; $6287: $e0 $00
    sub e                                         ; $6289: $93
    nop                                           ; $628a: $00
    ld bc, $b4ce                                  ; $628b: $01 $ce $b4
    nop                                           ; $628e: $00
    jr nz, jr_073_6291                            ; $628f: $20 $00

jr_073_6291:
    add b                                         ; $6291: $80
    xor [hl]                                      ; $6292: $ae
    nop                                           ; $6293: $00
    cp l                                          ; $6294: $bd
    ldh [rNR23], a                                ; $6295: $e0 $18
    inc a                                         ; $6297: $3c
    rst $38                                       ; $6298: $ff
    ld a, [hl]                                    ; $6299: $7e
    ld a, [hl]                                    ; $629a: $7e
    rst $38                                       ; $629b: $ff
    ld [hl], b                                    ; $629c: $70
    rst $38                                       ; $629d: $ff
    ld a, b                                       ; $629e: $78
    db $fc                                        ; $629f: $fc
    inc a                                         ; $62a0: $3c
    rst $38                                       ; $62a1: $ff
    cp $80                                        ; $62a2: $fe $80
    ld a, h                                       ; $62a4: $7c
    ld h, h                                       ; $62a5: $64
    nop                                           ; $62a6: $00
    nop                                           ; $62a7: $00
    ld [$ff1c], sp                                ; $62a8: $08 $1c $ff
    ld a, $36                                     ; $62ab: $3e $36
    ld a, a                                       ; $62ad: $7f
    and [hl]                                      ; $62ae: $a6
    ld a, a                                       ; $62af: $7f

jr_073_62b0:
    add h                                         ; $62b0: $84
    ld l, a                                       ; $62b1: $6f
    ld b, b                                       ; $62b2: $40
    di                                            ; $62b3: $f3
    ld c, $08                                     ; $62b4: $0e $08
    sbc [hl]                                      ; $62b6: $9e
    pop hl                                        ; $62b7: $e1
    adc h                                         ; $62b8: $8c
    and b                                         ; $62b9: $a0

jr_073_62ba:
    rlca                                          ; $62ba: $07
    cp $1b                                        ; $62bb: $fe $1b
    db $fc                                        ; $62bd: $fc
    rst $38                                       ; $62be: $ff
    ld e, $f1                                     ; $62bf: $1e $f1
    jr z, jr_073_62ba                             ; $62c1: $28 $f7

    ld a, d                                       ; $62c3: $7a
    push hl                                       ; $62c4: $e5
    ld [hl], b                                    ; $62c5: $70
    rst $08                                       ; $62c6: $cf
    rst $38                                       ; $62c7: $ff
    inc a                                         ; $62c8: $3c
    rst $38                                       ; $62c9: $ff
    ei                                            ; $62ca: $fb
    rst $20                                       ; $62cb: $e7
    db $fd                                        ; $62cc: $fd
    ld b, d                                       ; $62cd: $42
    rst $20                                       ; $62ce: $e7
    jr jr_073_62b0                                ; $62cf: $18 $df

    ld c, d                                       ; $62d1: $4a
    or l                                          ; $62d2: $b5
    nop                                           ; $62d3: $00
    rst $38                                       ; $62d4: $ff
    ld d, h                                       ; $62d5: $54
    sbc [hl]                                      ; $62d6: $9e
    and b                                         ; $62d7: $a0
    adc [hl]                                      ; $62d8: $8e
    di                                            ; $62d9: $f3
    rst $38                                       ; $62da: $ff
    sbc d                                         ; $62db: $9a
    rst $20                                       ; $62dc: $e7
    ld c, l                                       ; $62dd: $4d
    di                                            ; $62de: $f3
    sub a                                         ; $62df: $97
    jp hl                                         ; $62e0: $e9


    rst $00                                       ; $62e1: $c7
    ld sp, hl                                     ; $62e2: $f9
    ld a, a                                       ; $62e3: $7f
    adc a                                         ; $62e4: $8f

jr_073_62e5:
    di                                            ; $62e5: $f3
    ld e, [hl]                                    ; $62e6: $5e
    rst $20                                       ; $62e7: $e7
    adc [hl]                                      ; $62e8: $8e
    di                                            ; $62e9: $f3
    push af                                       ; $62ea: $f5
    ld a, [hl-]                                   ; $62eb: $3a
    and b                                         ; $62ec: $a0
    rst $38                                       ; $62ed: $ff
    ldh [rIE], a                                  ; $62ee: $e0 $ff
    adc d                                         ; $62f0: $8a
    push af                                       ; $62f1: $f5
    ld d, a                                       ; $62f2: $57
    add sp, -$73                                  ; $62f3: $e8 $8d
    ld a, [c]                                     ; $62f5: $f2
    rst $38                                       ; $62f6: $ff
    add hl, de                                    ; $62f7: $19
    rst $20                                       ; $62f8: $e7
    adc a                                         ; $62f9: $8f
    di                                            ; $62fa: $f3
    rst $18                                       ; $62fb: $df
    sbc c                                         ; $62fc: $99
    sbc a                                         ; $62fd: $9f
    ld c, l                                       ; $62fe: $4d
    rst $38                                       ; $62ff: $ff
    daa                                           ; $6300: $27
    rla                                           ; $6301: $17
    and e                                         ; $6302: $a3
    di                                            ; $6303: $f3
    db $db                                        ; $6304: $db
    pop hl                                        ; $6305: $e1
    xor $f1                                       ; $6306: $ee $f1
    rst $38                                       ; $6308: $ff
    or h                                          ; $6309: $b4
    ei                                            ; $630a: $fb
    ld b, c                                       ; $630b: $41
    rst $38                                       ; $630c: $ff
    rst $18                                       ; $630d: $df
    sbc a                                         ; $630e: $9f
    sbc h                                         ; $630f: $9c
    ld c, a                                       ; $6310: $4f
    rst $38                                       ; $6311: $ff
    ld h, $17                                     ; $6312: $26 $17
    and d                                         ; $6314: $a2
    di                                            ; $6315: $f3
    jp c, $eee1                                   ; $6316: $da $e1 $ee

    ld [hl], c                                    ; $6319: $71
    rst $38                                       ; $631a: $ff
    db $f4                                        ; $631b: $f4
    dec sp                                        ; $631c: $3b
    ld sp, hl                                     ; $631d: $f9
    rst $38                                       ; $631e: $ff
    rst $20                                       ; $631f: $e7
    jr jr_073_62e5                                ; $6320: $18 $c3

    inc h                                         ; $6322: $24
    rst $38                                       ; $6323: $ff
    rst $20                                       ; $6324: $e7
    inc h                                         ; $6325: $24
    rst $38                                       ; $6326: $ff
    inc a                                         ; $6327: $3c
    db $db                                        ; $6328: $db
    inc a                                         ; $6329: $3c
    rst $20                                       ; $632a: $e7

jr_073_632b:
    jr jr_073_632b                                ; $632b: $18 $fe

    ret nz                                        ; $632d: $c0

    ld b, c                                       ; $632e: $41
    ld h, a                                       ; $632f: $67
    sbc d                                         ; $6330: $9a
    call nz, $0b8a                                ; $6331: $c4 $8a $0b
    ret nz                                        ; $6334: $c0

    ld b, d                                       ; $6335: $42
    rst $38                                       ; $6336: $ff
    and b                                         ; $6337: $a0
    db $10                                        ; $6338: $10
    ret nz                                        ; $6339: $c0

    jp hl                                         ; $633a: $e9


    add b                                         ; $633b: $80
    ld h, b                                       ; $633c: $60
    sub c                                         ; $633d: $91
    adc e                                         ; $633e: $8b
    rst $38                                       ; $633f: $ff
    ld h, b                                       ; $6340: $60
    ld d, $a9                                     ; $6341: $16 $a9

jr_073_6343:
    pop hl                                        ; $6343: $e1
    dec bc                                        ; $6344: $0b
    adc d                                         ; $6345: $8a
    daa                                           ; $6346: $27
    daa                                           ; $6347: $27
    ccf                                           ; $6348: $3f
    rrca                                          ; $6349: $0f
    xor l                                         ; $634a: $ad
    rra                                           ; $634b: $1f
    sub $3f                                       ; $634c: $d6 $3f
    ld a, l                                       ; $634e: $7d
    and [hl]                                      ; $634f: $a6
    add b                                         ; $6350: $80
    ld d, b                                       ; $6351: $50
    daa                                           ; $6352: $27
    rst $38                                       ; $6353: $ff
    inc h                                         ; $6354: $24
    db $db                                        ; $6355: $db
    inc c                                         ; $6356: $0c
    rst $30                                       ; $6357: $f7
    ld [hl], $cf                                  ; $6358: $36 $cf
    jr jr_073_6343                                ; $635a: $18 $e7

    rst $38                                       ; $635c: $ff
    sub $0f                                       ; $635d: $d6 $0f
    ld e, c                                       ; $635f: $59
    and [hl]                                      ; $6360: $a6
    ld b, d                                       ; $6361: $42
    rrca                                          ; $6362: $0f
    ei                                            ; $6363: $fb
    nop                                           ; $6364: $00
    cp a                                          ; $6365: $bf
    inc e                                         ; $6366: $1c
    inc bc                                        ; $6367: $03
    cp a                                          ; $6368: $bf

jr_073_6369:
    nop                                           ; $6369: $00
    sbc c                                         ; $636a: $99
    ld h, [hl]                                    ; $636b: $66
    ld l, b                                       ; $636c: $68
    ld hl, $cf3d                                  ; $636d: $21 $3d $cf
    jp nz, $e718                                  ; $6370: $c2 $18 $e7

    add hl, de                                    ; $6373: $19
    ld h, b                                       ; $6374: $60
    inc h                                         ; $6375: $24
    ld b, b                                       ; $6376: $40
    add c                                         ; $6377: $81
    ld d, [hl]                                    ; $6378: $56
    xor c                                         ; $6379: $a9
    rst $20                                       ; $637a: $e7
    ld [hl+], a                                   ; $637b: $22
    rst $38                                       ; $637c: $ff
    ld [hl], l                                    ; $637d: $75
    ret nz                                        ; $637e: $c0

    add h                                         ; $637f: $84
    or b                                          ; $6380: $b0
    and e                                         ; $6381: $a3
    ld de, $1fef                                  ; $6382: $11 $ef $1f
    ld a, a                                       ; $6385: $7f
    ldh [$3d], a                                  ; $6386: $e0 $3d
    rst $00                                       ; $6388: $c7
    inc sp                                        ; $6389: $33
    rst $08                                       ; $638a: $cf
    dec l                                         ; $638b: $2d
    rst $10                                       ; $638c: $d7
    db $10                                        ; $638d: $10
    add l                                         ; $638e: $85
    rst $38                                       ; $638f: $ff
    jr z, jr_073_6369                             ; $6390: $28 $d7

    ld b, h                                       ; $6392: $44
    ei                                            ; $6393: $fb
    or h                                          ; $6394: $b4
    rst $38                                       ; $6395: $ff
    ret nc                                        ; $6396: $d0

    rst $38                                       ; $6397: $ff
    rst $38                                       ; $6398: $ff
    ei                                            ; $6399: $fb
    inc e                                         ; $639a: $1c
    db $ed                                        ; $639b: $ed
    ld h, $8b                                     ; $639c: $26 $8b
    ld b, [hl]                                    ; $639e: $46
    db $db                                        ; $639f: $db
    ld h, [hl]                                    ; $63a0: $66
    rst $38                                       ; $63a1: $ff
    add $4f                                       ; $63a2: $c6 $4f
    dec bc                                        ; $63a4: $0b
    add a                                         ; $63a5: $87
    sbc e                                         ; $63a6: $9b
    add a                                         ; $63a7: $87
    or e                                          ; $63a8: $b3
    rst $08                                       ; $63a9: $cf
    rst $38                                       ; $63aa: $ff
    xor a                                         ; $63ab: $af
    sbc a                                         ; $63ac: $9f
    and $5f                                       ; $63ad: $e6 $5f
    cp a                                          ; $63af: $bf
    ld a, [hl]                                    ; $63b0: $7e
    db $eb                                        ; $63b1: $eb
    inc a                                         ; $63b2: $3c
    rst $28                                       ; $63b3: $ef
    rst $38                                       ; $63b4: $ff
    ld l, $ef                                     ; $63b5: $2e $ef
    cpl                                           ; $63b7: $2f
    ld d, c                                       ; $63b8: $51
    ld h, b                                       ; $63b9: $60
    ld e, $1c                                     ; $63ba: $1e $1c
    rst $38                                       ; $63bc: $ff
    rst $38                                       ; $63bd: $ff
    ld l, $e7                                     ; $63be: $2e $e7
    ld c, d                                       ; $63c0: $4a
    rst $00                                       ; $63c1: $c7
    ld e, d                                       ; $63c2: $5a
    rst $20                                       ; $63c3: $e7
    ld b, a                                       ; $63c4: $47
    rst $08                                       ; $63c5: $cf

jr_073_63c6:
    db $fd                                        ; $63c6: $fd
    adc e                                         ; $63c7: $8b
    ldh [$e4], a                                  ; $63c8: $e0 $e4
    ld h, [hl]                                    ; $63ca: $66
    rst $18                                       ; $63cb: $df
    ld a, [hl]                                    ; $63cc: $7e
    rst $38                                       ; $63cd: $ff
    jr z, @+$01                                   ; $63ce: $28 $ff

    rst $08                                       ; $63d0: $cf
    ld a, $ef                                     ; $63d1: $3e $ef
    cpl                                           ; $63d3: $2f
    rst $28                                       ; $63d4: $ef
    pop hl                                        ; $63d5: $e1
    ldh [rLCDC], a                                ; $63d6: $e0 $40
    ret nz                                        ; $63d8: $c0

    pop de                                        ; $63d9: $d1
    ld l, a                                       ; $63da: $6f
    rst $38                                       ; $63db: $ff
    jr @+$01                                      ; $63dc: $18 $ff

    ld h, a                                       ; $63de: $67
    and l                                         ; $63df: $a5
    and h                                         ; $63e0: $a4
    ld h, a                                       ; $63e1: $67
    ld a, [hl]                                    ; $63e2: $7e
    rst $38                                       ; $63e3: $ff
    xor a                                         ; $63e4: $af
    jr c, jr_073_63c6                             ; $63e5: $38 $df

    ld b, e                                       ; $63e7: $43
    db $fd                                        ; $63e8: $fd
    ret c                                         ; $63e9: $d8

    ld [bc], a                                    ; $63ea: $02
    db $db                                        ; $63eb: $db
    dec e                                         ; $63ec: $1d
    ldh [$e7], a                                  ; $63ed: $e0 $e7
    add hl, de                                    ; $63ef: $19
    ld a, [hl]                                    ; $63f0: $7e
    dec de                                        ; $63f1: $1b
    ldh [$d0], a                                  ; $63f2: $e0 $d0
    add e                                         ; $63f4: $83
    jr @+$01                                      ; $63f5: $18 $ff

    ldh a, [$e3]                                  ; $63f7: $f0 $e3
    rrca                                          ; $63f9: $0f
    pop hl                                        ; $63fa: $e1
    call z, $d721                                 ; $63fb: $cc $21 $d7
    rst $20                                       ; $63fe: $e7
    nop                                           ; $63ff: $00
    db $db                                        ; $6400: $db
    cp $e0                                        ; $6401: $fe $e0
    add c                                         ; $6403: $81
    ld hl, sp-$20                                 ; $6404: $f8 $e0
    rst $38                                       ; $6406: $ff
    nop                                           ; $6407: $00
    rst $38                                       ; $6408: $ff
    xor e                                         ; $6409: $ab
    rst $38                                       ; $640a: $ff
    dec b                                         ; $640b: $05
    cp $ab                                        ; $640c: $fe $ab
    db $fc                                        ; $640e: $fc
    dec c                                         ; $640f: $0d
    ld a, [$b2ff]                                 ; $6410: $fa $ff $b2
    db $fd                                        ; $6413: $fd
    ld d, l                                       ; $6414: $55
    ld [$d7a8], a                                 ; $6415: $ea $a8 $d7
    db $f4                                        ; $6418: $f4
    adc e                                         ; $6419: $8b
    rst $38                                       ; $641a: $ff
    or b                                          ; $641b: $b0
    rrca                                          ; $641c: $0f
    sbc $7f                                       ; $641d: $de $7f
    add hl, hl                                    ; $641f: $29
    cp $55                                        ; $6420: $fe $55
    rst $38                                       ; $6422: $ff
    db $fd                                        ; $6423: $fd
    cp [hl]                                       ; $6424: $be
    ld a, $e0                                     ; $6425: $3e $e0
    xor d                                         ; $6427: $aa
    rst $38                                       ; $6428: $ff
    ret nz                                        ; $6429: $c0

    rst $38                                       ; $642a: $ff
    sbc b                                         ; $642b: $98
    ld h, a                                       ; $642c: $67
    jp nc, $e150                                  ; $642d: $d2 $50 $e1

    ld e, b                                       ; $6430: $58
    ld d, b                                       ; $6431: $50
    ld b, $10                                     ; $6432: $06 $10
    ld l, e                                       ; $6434: $6b
    dec hl                                        ; $6435: $2b
    ld d, b                                       ; $6436: $50
    ld l, b                                       ; $6437: $68
    inc a                                         ; $6438: $3c
    inc bc                                        ; $6439: $03
    rst $28                                       ; $643a: $ef
    add h                                         ; $643b: $84
    ld [hl], e                                    ; $643c: $73
    or h                                          ; $643d: $b4
    db $eb                                        ; $643e: $eb
    ld e, b                                       ; $643f: $58
    inc bc                                        ; $6440: $03
    add hl, de                                    ; $6441: $19
    rst $20                                       ; $6442: $e7
    rla                                           ; $6443: $17
    rst $38                                       ; $6444: $ff
    xor $3f                                       ; $6445: $ee $3f
    ret z                                         ; $6447: $c8

    cpl                                           ; $6448: $2f
    ret c                                         ; $6449: $d8

    rra                                           ; $644a: $1f
    ldh a, [$fd]                                  ; $644b: $f0 $fd
    ld a, [$00ba]                                 ; $644d: $fa $ba $00
    jp c, Jump_000_002e                           ; $6450: $da $2e $00

    xor a                                         ; $6453: $af
    cp $df                                        ; $6454: $fe $df
    ld hl, sp+$6f                                 ; $6456: $f8 $6f
    rst $10                                       ; $6458: $d7
    ld hl, sp-$21                                 ; $6459: $f8 $df
    ldh a, [$d3]                                  ; $645b: $f0 $d3
    ld b, b                                       ; $645d: $40
    inc a                                         ; $645e: $3c
    ld [hl], $61                                  ; $645f: $36 $61
    ccf                                           ; $6461: $3f
    jp Jump_000_3ebf                              ; $6462: $c3 $bf $3e


    rst $00                                       ; $6465: $c7
    db $dd                                        ; $6466: $dd
    cpl                                           ; $6467: $2f
    jp c, $f02f                                   ; $6468: $da $2f $f0

    push hl                                       ; $646b: $e5
    dec a                                         ; $646c: $3d
    ld a, a                                       ; $646d: $7f
    jp $c73c                                      ; $646e: $c3 $3c $c7


    ret nc                                        ; $6471: $d0

    cpl                                           ; $6472: $2f
    ret c                                         ; $6473: $d8

    cpl                                           ; $6474: $2f
    and e                                         ; $6475: $a3
    jr nz, @+$01                                  ; $6476: $20 $ff

    ld sp, hl                                     ; $6478: $f9
    db $fc                                        ; $6479: $fc
    ei                                            ; $647a: $fb
    cp $e1                                        ; $647b: $fe $e1
    db $f4                                        ; $647d: $f4
    set 4, b                                      ; $647e: $cb $e0
    db $fd                                        ; $6480: $fd
    rst $18                                       ; $6481: $df
    cp $e1                                        ; $6482: $fe $e1
    cp a                                          ; $6484: $bf
    ld a, a                                       ; $6485: $7f
    ld e, a                                       ; $6486: $5f
    cp a                                          ; $6487: $bf
    rra                                           ; $6488: $1f
    rst $38                                       ; $6489: $ff
    rst $38                                       ; $648a: $ff
    scf                                           ; $648b: $37
    rst $08                                       ; $648c: $cf
    dec bc                                        ; $648d: $0b
    rst $30                                       ; $648e: $f7
    ld h, e                                       ; $648f: $63
    rst $38                                       ; $6490: $ff
    db $d3                                        ; $6491: $d3
    sbc a                                         ; $6492: $9f
    rst $38                                       ; $6493: $ff
    sub e                                         ; $6494: $93
    sbc a                                         ; $6495: $9f
    ld hl, sp-$79                                 ; $6496: $f8 $87
    ret nc                                        ; $6498: $d0

    cpl                                           ; $6499: $2f
    add b                                         ; $649a: $80
    ld a, a                                       ; $649b: $7f
    rst $38                                       ; $649c: $ff
    adc h                                         ; $649d: $8c
    ld a, a                                       ; $649e: $7f
    sbc d                                         ; $649f: $9a
    ld [hl], e                                    ; $64a0: $73
    ld d, d                                       ; $64a1: $52
    or e                                          ; $64a2: $b3
    adc h                                         ; $64a3: $8c
    rst $38                                       ; $64a4: $ff
    ld a, a                                       ; $64a5: $7f
    ldh a, [$ef]                                  ; $64a6: $f0 $ef
    ld l, l                                       ; $64a8: $6d
    di                                            ; $64a9: $f3
    ld [bc], a                                    ; $64aa: $02
    db $fd                                        ; $64ab: $fd
    ret nz                                        ; $64ac: $c0

    ld a, l                                       ; $64ad: $7d
    jr nz, @+$01                                  ; $64ae: $20 $ff

    ld [bc], a                                    ; $64b0: $02
    rst $38                                       ; $64b1: $ff
    ld d, $ff                                     ; $64b2: $16 $ff
    ld bc, $17ff                                  ; $64b4: $01 $ff $17
    rst $38                                       ; $64b7: $ff
    rst $38                                       ; $64b8: $ff
    add sp, -$09                                  ; $64b9: $e8 $f7
    pop af                                        ; $64bb: $f1
    rst $38                                       ; $64bc: $ff
    cp $fe                                        ; $64bd: $fe $fe

Jump_073_64bf:
    rst $38                                       ; $64bf: $ff
    cp $ff                                        ; $64c0: $fe $ff
    rst $30                                       ; $64c2: $f7
    cp $ad                                        ; $64c3: $fe $ad
    db $fc                                        ; $64c5: $fc
    ld b, [hl]                                    ; $64c6: $46
    cp $eb                                        ; $64c7: $fe $eb
    rst $38                                       ; $64c9: $ff
    rst $30                                       ; $64ca: $f7
    scf                                           ; $64cb: $37
    rst $38                                       ; $64cc: $ff
    adc a                                         ; $64cd: $8f
    dec a                                         ; $64ce: $3d
    jr nz, jr_073_6550                            ; $64cf: $20 $7f

    ld a, a                                       ; $64d1: $7f
    ld l, a                                       ; $64d2: $6f
    ld a, a                                       ; $64d3: $7f
    rst $18                                       ; $64d4: $df
    ld a, $3f                                     ; $64d5: $3e $3f

jr_073_64d7:
    ld a, e                                       ; $64d7: $7b
    ld a, a                                       ; $64d8: $7f
    rst $38                                       ; $64d9: $ff
    ld c, [hl]                                    ; $64da: $4e
    jr nz, jr_073_64d7                            ; $64db: $20 $fa

    db $fd                                        ; $64dd: $fd
    rst $38                                       ; $64de: $ff
    db $fc                                        ; $64df: $fc
    ei                                            ; $64e0: $fb

Jump_073_64e1:
    pop hl                                        ; $64e1: $e1
    rst $38                                       ; $64e2: $ff
    ret nc                                        ; $64e3: $d0

    rst $28                                       ; $64e4: $ef
    push hl                                       ; $64e5: $e5
    rst $18                                       ; $64e6: $df
    ld a, a                                       ; $64e7: $7f
    jp z, $e7ff                                   ; $64e8: $ca $ff $e7

    rst $18                                       ; $64eb: $df
    ccf                                           ; $64ec: $3f
    rst $38                                       ; $64ed: $ff
    rra                                           ; $64ee: $1f
    jr z, jr_073_64f1                             ; $64ef: $28 $00

jr_073_64f1:
    ld a, a                                       ; $64f1: $7f
    ld d, a                                       ; $64f2: $57
    rst $38                                       ; $64f3: $ff
    db $eb                                        ; $64f4: $eb
    rst $38                                       ; $64f5: $ff
    ld a, a                                       ; $64f6: $7f
    rst $38                                       ; $64f7: $ff
    db $db                                        ; $64f8: $db
    inc de                                        ; $64f9: $13

jr_073_64fa:
    jr nz, @+$01                                  ; $64fa: $20 $ff

    adc e                                         ; $64fc: $8b
    rst $38                                       ; $64fd: $ff
    ld b, l                                       ; $64fe: $45
    cp a                                          ; $64ff: $bf
    sub a                                         ; $6500: $97
    ld a, a                                       ; $6501: $7f
    dec hl                                        ; $6502: $2b
    rst $38                                       ; $6503: $ff

Jump_073_6504:
    ld e, a                                       ; $6504: $5f
    sbc a                                         ; $6505: $9f
    ld a, a                                       ; $6506: $7f
    dec l                                         ; $6507: $2d
    rst $38                                       ; $6508: $ff
    sbc a                                         ; $6509: $9f
    ld [$75e0], a                                 ; $650a: $ea $e0 $75
    db $10                                        ; $650d: $10
    jr nz, jr_073_6587                            ; $650e: $20 $77

    rst $38                                       ; $6510: $ff
    rst $38                                       ; $6511: $ff
    ld a, [hl]                                    ; $6512: $7e
    ld sp, hl                                     ; $6513: $f9
    nop                                           ; $6514: $00
    cp $ff                                        ; $6515: $fe $ff
    ld sp, hl                                     ; $6517: $f9
    di                                            ; $6518: $f3
    nop                                           ; $6519: $00
    rst $20                                       ; $651a: $e7
    push hl                                       ; $651b: $e5
    rst $38                                       ; $651c: $ff
    di                                            ; $651d: $f3
    and b                                         ; $651e: $a0
    pop hl                                        ; $651f: $e1
    sbc h                                         ; $6520: $9c
    ldh [$ee], a                                  ; $6521: $e0 $ee
    cp $5e                                        ; $6523: $fe $5e
    adc e                                         ; $6525: $8b
    cp $fb                                        ; $6526: $fe $fb
    sub [hl]                                      ; $6528: $96
    jr nz, jr_073_64fa                            ; $6529: $20 $cf

    and b                                         ; $652b: $a0
    ld [c], a                                     ; $652c: $e2
    db $fc                                        ; $652d: $fc
    db $e3                                        ; $652e: $e3

jr_073_652f:
    ld sp, $fe08                                  ; $652f: $31 $08 $fe
    cp $e3                                        ; $6532: $fe $e3
    nop                                           ; $6534: $00
    ld hl, sp-$01                                 ; $6535: $f8 $ff
    ldh a, [$fb]                                  ; $6537: $f0 $fb
    rst $20                                       ; $6539: $e7
    push af                                       ; $653a: $f5
    res 7, a                                      ; $653b: $cb $bf
    ld a, [c]                                     ; $653d: $f2
    adc l                                         ; $653e: $8d
    pop af                                        ; $653f: $f1
    ld c, $f0                                     ; $6540: $0e $f0
    rrca                                          ; $6542: $0f
    cp $e1                                        ; $6543: $fe $e1
    add sp, -$13                                  ; $6545: $e8 $ed
    rla                                           ; $6547: $17
    or b                                          ; $6548: $b0
    inc bc                                        ; $6549: $03
    ld a, a                                       ; $654a: $7f
    rst $38                                       ; $654b: $ff
    jr z, jr_073_652f                             ; $654c: $28 $e1

    cpl                                           ; $654e: $2f
    rst $18                                       ; $654f: $df

jr_073_6550:
    rla                                           ; $6550: $17
    pop af                                        ; $6551: $f1

jr_073_6552:
    rst $28                                       ; $6552: $ef
    call z, $9bea                                 ; $6553: $cc $ea $9b
    pop hl                                        ; $6556: $e1
    adc a                                         ; $6557: $8f
    inc bc                                        ; $6558: $03
    ldh [$fc], a                                  ; $6559: $e0 $fc
    jp $fffc                                      ; $655b: $c3 $fc $ff


    add e                                         ; $655e: $83
    db $fc                                        ; $655f: $fc
    inc bc                                        ; $6560: $03
    db $fc                                        ; $6561: $fc
    inc bc                                        ; $6562: $03
    rst $38                                       ; $6563: $ff
    ldh [$ef], a                                  ; $6564: $e0 $ef
    rst $38                                       ; $6566: $ff
    ret nc                                        ; $6567: $d0

    rst $18                                       ; $6568: $df
    and b                                         ; $6569: $a0
    ld l, $d1                                     ; $656a: $2e $d1
    sub [hl]                                      ; $656c: $96
    ld l, e                                       ; $656d: $6b
    ld c, h                                       ; $656e: $4c
    rst $38                                       ; $656f: $ff
    or a                                          ; $6570: $b7
    jr z, jr_073_6552                             ; $6571: $28 $df

    dec d                                         ; $6573: $15
    rst $28                                       ; $6574: $ef
    ret nz                                        ; $6575: $c0

    ccf                                           ; $6576: $3f
    add h                                         ; $6577: $84
    cp a                                          ; $6578: $bf
    ld a, a                                       ; $6579: $7f
    ld a, [bc]                                    ; $657a: $0a
    rst $38                                       ; $657b: $ff
    inc d                                         ; $657c: $14
    rst $38                                       ; $657d: $ff
    ld a, [hl+]                                   ; $657e: $2a
    and d                                         ; $657f: $a2
    and b                                         ; $6580: $a0
    xor d                                         ; $6581: $aa
    cp [hl]                                       ; $6582: $be
    sbc [hl]                                      ; $6583: $9e
    and b                                         ; $6584: $a0
    dec bc                                        ; $6585: $0b
    rst $30                                       ; $6586: $f7

jr_073_6587:
    inc bc                                        ; $6587: $03
    rst $38                                       ; $6588: $ff
    ei                                            ; $6589: $fb
    cp $e0                                        ; $658a: $fe $e0
    rst $38                                       ; $658c: $ff
    ld hl, sp-$04                                 ; $658d: $f8 $fc
    ld [c], a                                     ; $658f: $e2
    ld c, a                                       ; $6590: $4f
    ret nz                                        ; $6591: $c0

    ld a, e                                       ; $6592: $7b
    ld [$0ff7], a                                 ; $6593: $ea $f7 $0f
    cp $fd                                        ; $6596: $fe $fd
    db $fd                                        ; $6598: $fd
    ccf                                           ; $6599: $3f
    ld a, [$f5fa]                                 ; $659a: $fa $fa $f5
    ldh a, [$ef]                                  ; $659d: $f0 $ef
    ret nz                                        ; $659f: $c0

    ld [$ce60], sp                                ; $65a0: $08 $60 $ce
    pop hl                                        ; $65a3: $e1
    rst $38                                       ; $65a4: $ff
    db $fc                                        ; $65a5: $fc
    inc bc                                        ; $65a6: $03
    ld d, h                                       ; $65a7: $54
    xor e                                         ; $65a8: $ab
    xor h                                         ; $65a9: $ac
    ld d, a                                       ; $65aa: $57
    ld a, [de]                                    ; $65ab: $1a
    rst $28                                       ; $65ac: $ef
    rst $30                                       ; $65ad: $f7
    dec [hl]                                      ; $65ae: $35
    rst $18                                       ; $65af: $df
    ld a, [hl+]                                   ; $65b0: $2a
    ld c, $e0                                     ; $65b1: $0e $e0
    rst $38                                       ; $65b3: $ff
    rst $38                                       ; $65b4: $ff
    ld a, [bc]                                    ; $65b5: $0a
    rst $30                                       ; $65b6: $f7
    ld d, a                                       ; $65b7: $57
    dec b                                         ; $65b8: $05
    ei                                            ; $65b9: $fb
    ld [bc], a                                    ; $65ba: $02
    ld a, [bc]                                    ; $65bb: $0a
    add b                                         ; $65bc: $80
    ld a, [hl]                                    ; $65bd: $7e
    add b                                         ; $65be: $80
    ld h, b                                       ; $65bf: $60
    ld a, a                                       ; $65c0: $7f
    ld a, h                                       ; $65c1: $7c
    ld h, d                                       ; $65c2: $62
    db $ed                                        ; $65c3: $ed
    ld d, a                                       ; $65c4: $57
    ld d, h                                       ; $65c5: $54
    ret nz                                        ; $65c6: $c0

    sbc $fd                                       ; $65c7: $de $fd
    ld b, l                                       ; $65c9: $45
    ldh [rIE], a                                  ; $65ca: $e0 $ff
    ld [$ffff], a                                 ; $65cc: $ea $ff $ff
    push de                                       ; $65cf: $d5
    rst $38                                       ; $65d0: $ff
    sbc $a1                                       ; $65d1: $de $a1
    xor d                                         ; $65d3: $aa
    ld d, l                                       ; $65d4: $55
    ld d, [hl]                                    ; $65d5: $56
    xor e                                         ; $65d6: $ab
    ld e, a                                       ; $65d7: $5f
    dec c                                         ; $65d8: $0d
    rst $30                                       ; $65d9: $f7
    ld a, [de]                                    ; $65da: $1a
    rst $28                                       ; $65db: $ef
    dec d                                         ; $65dc: $15
    ret c                                         ; $65dd: $d8

    ret nz                                        ; $65de: $c0

    ld a, a                                       ; $65df: $7f
    sub b                                         ; $65e0: $90
    ldh [$ea], a                                  ; $65e1: $e0 $ea
    ret nc                                        ; $65e3: $d0

    db $e3                                        ; $65e4: $e3
    cp [hl]                                       ; $65e5: $be
    db $ec                                        ; $65e6: $ec
    ret nz                                        ; $65e7: $c0

    cp a                                          ; $65e8: $bf
    ld d, c                                       ; $65e9: $51
    pop hl                                        ; $65ea: $e1
    cp $ff                                        ; $65eb: $fe $ff
    ld hl, sp-$01                                 ; $65ed: $f8 $ff
    ld sp, hl                                     ; $65ef: $f9
    ldh [$e7], a                                  ; $65f0: $e0 $e7
    add b                                         ; $65f2: $80
    sbc c                                         ; $65f3: $99
    nop                                           ; $65f4: $00
    and $00                                       ; $65f5: $e6 $00
    rst $38                                       ; $65f7: $ff
    sbc b                                         ; $65f8: $98
    nop                                           ; $65f9: $00
    pop hl                                        ; $65fa: $e1
    nop                                           ; $65fb: $00
    rst $38                                       ; $65fc: $ff
    ld a, a                                       ; $65fd: $7f
    sbc a                                         ; $65fe: $9f
    rra                                           ; $65ff: $1f
    rst $38                                       ; $6600: $ff
    add a                                         ; $6601: $87
    rlca                                          ; $6602: $07
    add c                                         ; $6603: $81
    ld bc, $0080                                  ; $6604: $01 $80 $00
    ld h, b                                       ; $6607: $60
    nop                                           ; $6608: $00
    rst $38                                       ; $6609: $ff
    jr jr_073_660c                                ; $660a: $18 $00

jr_073_660c:
    add $00                                       ; $660c: $c6 $00
    add a                                         ; $660e: $87
    nop                                           ; $660f: $00
    ld e, $00                                     ; $6610: $1e $00
    rst $38                                       ; $6612: $ff
    ld a, h                                       ; $6613: $7c
    nop                                           ; $6614: $00
    db $ec                                        ; $6615: $ec
    add b                                         ; $6616: $80
    call nz, $c580                                ; $6617: $c4 $80 $c5
    add b                                         ; $661a: $80
    rst $18                                       ; $661b: $df
    db $fc                                        ; $661c: $fc
    add b                                         ; $661d: $80
    call nc, $f180                                ; $661e: $d4 $80 $f1
    ld a, [c]                                     ; $6621: $f2
    ldh [$3f], a                                  ; $6622: $e0 $3f
    ld bc, $37f7                                  ; $6624: $01 $f7 $37
    ld bc, $fe23                                  ; $6627: $01 $23 $fe
    ldh [$3f], a                                  ; $662a: $e0 $3f
    ld bc, $012b                                  ; $662c: $01 $2b $01
    nop                                           ; $662f: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    cp a                                          ; $6632: $bf
    ld b, [hl]                                    ; $6633: $46
    ld b, [hl]                                    ; $6634: $46
    ld b, [hl]                                    ; $6635: $46
    jp $c5c4                                      ; $6636: $c3 $c4 $c5


    ld a, [$46e6]                                 ; $6639: $fa $e6 $46
    rst $38                                       ; $663c: $ff
    cp a                                          ; $663d: $bf
    ret nz                                        ; $663e: $c0

    or a                                          ; $663f: $b7
    cp b                                          ; $6640: $b8
    cp e                                          ; $6641: $bb
    cp h                                          ; $6642: $bc
    sbc c                                         ; $6643: $99
    ld de, $997f                                  ; $6644: $11 $7f $99
    ld b, [hl]                                    ; $6647: $46
    cp c                                          ; $6648: $b9
    cp d                                          ; $6649: $ba
    ld b, [hl]                                    ; $664a: $46
    cp e                                          ; $664b: $bb
    cp h                                          ; $664c: $bc
    ldh a, [$e0]                                  ; $664d: $f0 $e0
    db $ec                                        ; $664f: $ec
    db $ec                                        ; $6650: $ec
    pop hl                                        ; $6651: $e1
    db $fc                                        ; $6652: $fc
    rst $20                                       ; $6653: $e7
    pop bc                                        ; $6654: $c1
    jp nz, $ead0                                  ; $6655: $c2 $d0 $ea

    jp $c6cb                                      ; $6658: $c3 $cb $c6


    rst $28                                       ; $665b: $ef
    rst $00                                       ; $665c: $c7
    ret z                                         ; $665d: $c8

    ret                                           ; $665e: $c9


    jp z, $e4fa                                   ; $665f: $ca $fa $e4

    ld b, [hl]                                    ; $6662: $46
    or a                                          ; $6663: $b7
    cp b                                          ; $6664: $b8
    adc e                                         ; $6665: $8b
    pop bc                                        ; $6666: $c1
    jp nz, $e0c8                                  ; $6667: $c2 $c8 $e0

    ld b, [hl]                                    ; $666a: $46
    ret nz                                        ; $666b: $c0

    pop hl                                        ; $666c: $e1
    jp $a3e0                                      ; $666d: $c3 $e0 $a3


    ldh [$c1], a                                  ; $6670: $e0 $c1
    ld e, c                                       ; $6672: $59
    jp nz, $e1ec                                  ; $6673: $c2 $ec $e1

    add sp, -$1f                                  ; $6676: $e8 $e1
    cp l                                          ; $6678: $bd
    cp [hl]                                       ; $6679: $be
    db $fc                                        ; $667a: $fc
    pop hl                                        ; $667b: $e1
    ld b, [hl]                                    ; $667c: $46
    ret nc                                        ; $667d: $d0

    jp hl                                         ; $667e: $e9


    ld a, [hl]                                    ; $667f: $7e
    call nz, $d1e0                                ; $6680: $c4 $e0 $d1
    call z, $cecd                                 ; $6683: $cc $cd $ce
    rst $08                                       ; $6686: $cf
    ret nc                                        ; $6687: $d0

    ld a, [$fce4]                                 ; $6688: $fa $e4 $fc
    adc h                                         ; $668b: $8c
    pop hl                                        ; $668c: $e1
    adc e                                         ; $668d: $8b
    ldh [$9a], a                                  ; $668e: $e0 $9a
    sbc b                                         ; $6690: $98
    sub a                                         ; $6691: $97
    ld de, $9c97                                  ; $6692: $11 $97 $9c
    dec c                                         ; $6695: $0d
    sbc b                                         ; $6696: $98
    rst $38                                       ; $6697: $ff
    pop hl                                        ; $6698: $e1
    sbc h                                         ; $6699: $9c
    sbc d                                         ; $669a: $9a
    db $ec                                        ; $669b: $ec
    ld [c], a                                     ; $669c: $e2
    xor h                                         ; $669d: $ac
    pop hl                                        ; $669e: $e1
    halt                                          ; $669f: $76
    db $e4                                        ; $66a0: $e4
    ret nc                                        ; $66a1: $d0

    jp hl                                         ; $66a2: $e9


    db $ec                                        ; $66a3: $ec
    call nz, Call_073_43e0                        ; $66a4: $c4 $e0 $43
    jp hl                                         ; $66a7: $e9


    cp l                                          ; $66a8: $bd
    cp [hl]                                       ; $66a9: $be
    adc h                                         ; $66aa: $8c
    ld [c], a                                     ; $66ab: $e2
    sbc d                                         ; $66ac: $9a
    sub a                                         ; $66ad: $97
    xor b                                         ; $66ae: $a8
    rst $38                                       ; $66af: $ff
    ld b, [hl]                                    ; $66b0: $46
    ld de, $4546                                  ; $66b1: $11 $46 $45
    ld c, b                                       ; $66b4: $48
    ld d, e                                       ; $66b5: $53
    ld b, l                                       ; $66b6: $45
    ld b, [hl]                                    ; $66b7: $46
    rrca                                          ; $66b8: $0f
    ld b, [hl]                                    ; $66b9: $46
    xor b                                         ; $66ba: $a8
    sub a                                         ; $66bb: $97
    sbc d                                         ; $66bc: $9a
    ld a, b                                       ; $66bd: $78
    pop hl                                        ; $66be: $e1
    ld [hl], h                                    ; $66bf: $74
    pop hl                                        ; $66c0: $e1
    ld a, d                                       ; $66c1: $7a
    push hl                                       ; $66c2: $e5
    ld a, [de]                                    ; $66c3: $1a
    pop hl                                        ; $66c4: $e1
    ld hl, sp+$0d                                 ; $66c5: $f8 $0d
    rst $20                                       ; $66c7: $e7
    ld b, e                                       ; $66c8: $43
    add sp, $14                                   ; $66c9: $e8 $14
    ld [c], a                                     ; $66cb: $e2

jr_073_66cc:
    sbc d                                         ; $66cc: $9a
    sbc b                                         ; $66cd: $98
    sbc h                                         ; $66ce: $9c
    sub a                                         ; $66cf: $97
    xor b                                         ; $66d0: $a8
    db $fd                                        ; $66d1: $fd
    xor c                                         ; $66d2: $a9
    ret nz                                        ; $66d3: $c0

    ldh [rHDMA1], a                               ; $66d4: $e0 $51
    ld e, [hl]                                    ; $66d6: $5e
    ld d, h                                       ; $66d7: $54
    ld b, h                                       ; $66d8: $44
    ld b, l                                       ; $66d9: $45
    ld b, [hl]                                    ; $66da: $46
    ld bc, $bfa9                                  ; $66db: $01 $a9 $bf
    ldh [$eb], a                                  ; $66de: $e0 $eb
    pop hl                                        ; $66e0: $e1
    halt                                          ; $66e1: $76
    and $f0                                       ; $66e2: $e6 $f0
    pop bc                                        ; $66e4: $c1
    dec c                                         ; $66e5: $0d
    jp hl                                         ; $66e6: $e9


    ld b, e                                       ; $66e7: $43
    rst $20                                       ; $66e8: $e7
    jr nz, jr_073_66cc                            ; $66e9: $20 $e1

    cp $84                                        ; $66eb: $fe $84
    ld [c], a                                     ; $66ed: $e2
    ld b, [hl]                                    ; $66ee: $46
    xor c                                         ; $66ef: $a9
    ld b, [hl]                                    ; $66f0: $46
    ld b, [hl]                                    ; $66f1: $46
    ld [$4a05], sp                                ; $66f2: $08 $05 $4a
    cpl                                           ; $66f5: $2f
    ld d, [hl]                                    ; $66f6: $56
    ld a, [hl+]                                   ; $66f7: $2a
    ld h, $34                                     ; $66f8: $26 $34
    db $f4                                        ; $66fa: $f4
    pop hl                                        ; $66fb: $e1
    sub a                                         ; $66fc: $97
    xor [hl]                                      ; $66fd: $ae
    ldh [$a6], a                                  ; $66fe: $e0 $a6
    pop bc                                        ; $6700: $c1
    jr nc, @+$78                                  ; $6701: $30 $76

    pop hl                                        ; $6703: $e1
    ld hl, sp-$3d                                 ; $6704: $f8 $c3
    dec c                                         ; $6706: $0d
    ld [$c480], a                                 ; $6707: $ea $80 $c4
    cp l                                          ; $670a: $bd
    cp [hl]                                       ; $670b: $be
    add d                                         ; $670c: $82
    ld [c], a                                     ; $670d: $e2
    add h                                         ; $670e: $84
    ldh [$fe], a                                  ; $670f: $e0 $fe
    cp a                                          ; $6711: $bf
    ldh [rDMA], a                                 ; $6712: $e0 $46
    ld b, [hl]                                    ; $6714: $46
    ld b, $06                                     ; $6715: $06 $06
    ld d, l                                       ; $6717: $55
    ld e, d                                       ; $6718: $5a
    daa                                           ; $6719: $27
    rlca                                          ; $671a: $07
    jr nz, @+$2f                                  ; $671b: $20 $2d

    ld b, e                                       ; $671d: $43
    dec a                                         ; $671e: $3d
    pop hl                                        ; $671f: $e1
    ld l, c                                       ; $6720: $69
    pop bc                                        ; $6721: $c1
    ld e, c                                       ; $6722: $59
    ret nz                                        ; $6723: $c0

    halt                                          ; $6724: $76
    pop hl                                        ; $6725: $e1
    ld hl, sp-$3b                                 ; $6726: $f8 $c5
    ret z                                         ; $6728: $c8

    add b                                         ; $6729: $80
    adc $48                                       ; $672a: $ce $48
    ret nz                                        ; $672c: $c0

    sub [hl]                                      ; $672d: $96
    pop bc                                        ; $672e: $c1
    sbc c                                         ; $672f: $99
    ld c, a                                       ; $6730: $4f
    ldh [$82], a                                  ; $6731: $e0 $82
    ldh [$a8], a                                  ; $6733: $e0 $a8
    ld b, [hl]                                    ; $6735: $46
    rst $38                                       ; $6736: $ff
    dec b                                         ; $6737: $05
    ld [$2d45], sp                                ; $6738: $08 $45 $2d
    jr nz, @+$22                                  ; $673b: $20 $20

    ld [hl-], a                                   ; $673d: $32
    ld c, e                                       ; $673e: $4b
    ld a, l                                       ; $673f: $7d
    ld b, h                                       ; $6740: $44
    ld [hl], d                                    ; $6741: $72
    ld [c], a                                     ; $6742: $e2
    xor b                                         ; $6743: $a8
    dec b                                         ; $6744: $05
    rlca                                          ; $6745: $07
    inc b                                         ; $6746: $04
    inc bc                                        ; $6747: $03
    halt                                          ; $6748: $76
    ldh [rNR41], a                                ; $6749: $e0 $20
    ld a, [hl]                                    ; $674b: $7e
    and $7a                                       ; $674c: $e6 $7a
    rst $00                                       ; $674e: $c7
    add [hl]                                      ; $674f: $86
    push bc                                       ; $6750: $c5
    jr z, @-$3e                                   ; $6751: $28 $c0

    ld c, $c0                                     ; $6753: $0e $c0
    sbc e                                         ; $6755: $9b
    pop de                                        ; $6756: $d1
    db $e3                                        ; $6757: $e3
    ld a, h                                       ; $6758: $7c
    ldh [rIE], a                                  ; $6759: $e0 $ff
    ld de, $b446                                  ; $675b: $11 $46 $b4
    inc hl                                        ; $675e: $23
    inc hl                                        ; $675f: $23
    or h                                          ; $6760: $b4
    ld e, [hl]                                    ; $6761: $5e
    ld e, h                                       ; $6762: $5c
    cp $86                                        ; $6763: $fe $86
    ld [c], a                                     ; $6765: $e2
    xor c                                         ; $6766: $a9
    ld b, $95                                     ; $6767: $06 $95
    sub h                                         ; $6769: $94
    dec c                                         ; $676a: $0d
    ld [bc], a                                    ; $676b: $02
    ld b, [hl]                                    ; $676c: $46
    and c                                         ; $676d: $a1
    ld b, [hl]                                    ; $676e: $46
    pop hl                                        ; $676f: $e1
    ldh [rPCM12], a                               ; $6770: $e0 $76
    call nz, $d080                                ; $6772: $c4 $80 $d0
    add d                                         ; $6775: $82
    pop bc                                        ; $6776: $c1
    sbc d                                         ; $6777: $9a
    ld d, $e0                                     ; $6778: $16 $e0
    xor b                                         ; $677a: $a8
    cp $7c                                        ; $677b: $fe $7c
    pop hl                                        ; $677d: $e1
    dec b                                         ; $677e: $05

jr_073_677f:
    ld [$3946], sp                                ; $677f: $08 $46 $39
    dec [hl]                                      ; $6782: $35
    dec [hl]                                      ; $6783: $35
    ld b, b                                       ; $6784: $40
    rst $30                                       ; $6785: $f7
    ld e, e                                       ; $6786: $5b
    ld b, l                                       ; $6787: $45
    ld [bc], a                                    ; $6788: $02
    add [hl]                                      ; $6789: $86
    pop hl                                        ; $678a: $e1
    ld [bc], a                                    ; $678b: $02
    rrca                                          ; $678c: $0f
    sub h                                         ; $678d: $94
    sub e                                         ; $678e: $93
    rlca                                          ; $678f: $07
    sub h                                         ; $6790: $94
    rrca                                          ; $6791: $0f
    dec b                                         ; $6792: $05
    db $fd                                        ; $6793: $fd
    ret nz                                        ; $6794: $c0

    xor l                                         ; $6795: $ad
    and b                                         ; $6796: $a0
    ld a, [hl]                                    ; $6797: $7e
    pop bc                                        ; $6798: $c1
    add b                                         ; $6799: $80
    pop de                                        ; $679a: $d1
    jr z, jr_073_677f                             ; $679b: $28 $e2

    ld sp, hl                                     ; $679d: $f9
    sbc c                                         ; $679e: $99
    jp nz, $80c1                                  ; $679f: $c2 $c1 $80

    ret nz                                        ; $67a2: $c0

    ld b, $06                                     ; $67a3: $06 $06
    ld b, l                                       ; $67a5: $45
    ld a, [hl-]                                   ; $67a6: $3a
    dec [hl]                                      ; $67a7: $35
    ld a, e                                       ; $67a8: $7b
    dec [hl]                                      ; $67a9: $35
    add hl, sp                                    ; $67aa: $39
    or a                                          ; $67ab: $b7
    ret nz                                        ; $67ac: $c0

    ld bc, $0d00                                  ; $67ad: $01 $00 $0d
    rlca                                          ; $67b0: $07
    pop bc                                        ; $67b1: $c1
    ldh [rIF], a                                  ; $67b2: $e0 $0f
    sub d                                         ; $67b4: $92
    sub e                                         ; $67b5: $93
    sub h                                         ; $67b6: $94
    ld b, $bc                                     ; $67b7: $06 $bc
    pop bc                                        ; $67b9: $c1
    ld e, [hl]                                    ; $67ba: $5e
    and c                                         ; $67bb: $a1
    add b                                         ; $67bc: $80
    db $d3                                        ; $67bd: $d3
    sub [hl]                                      ; $67be: $96
    and c                                         ; $67bf: $a1
    ei                                            ; $67c0: $fb
    ld b, [hl]                                    ; $67c1: $46
    sbc c                                         ; $67c2: $99
    jp nz, $a9c1                                  ; $67c3: $c2 $c1 $a9

    ld b, [hl]                                    ; $67c6: $46
    dec b                                         ; $67c7: $05
    rrca                                          ; $67c8: $0f
    dec b                                         ; $67c9: $05
    rst $38                                       ; $67ca: $ff
    ld [hl], $35                                  ; $67cb: $36 $35
    dec [hl]                                      ; $67cd: $35
    dec [hl]                                      ; $67ce: $35
    ld a, [hl-]                                   ; $67cf: $3a
    ld b, l                                       ; $67d0: $45
    ld b, [hl]                                    ; $67d1: $46
    ld [$942d], sp                                ; $67d2: $08 $2d $94
    rst $38                                       ; $67d5: $ff
    pop hl                                        ; $67d6: $e1
    sub e                                         ; $67d7: $93
    sub d                                         ; $67d8: $92
    ret nz                                        ; $67d9: $c0

    ldh [$08], a                                  ; $67da: $e0 $08
    ld a, e                                       ; $67dc: $7b
    jp nz, $a03e                                  ; $67dd: $c2 $3e $a0

    add h                                         ; $67e0: $84
    add b                                         ; $67e1: $80
    db $d3                                        ; $67e2: $d3
    sbc d                                         ; $67e3: $9a
    and d                                         ; $67e4: $a2
    sbc c                                         ; $67e5: $99
    ld b, h                                       ; $67e6: $44
    ret nz                                        ; $67e7: $c0

    add c                                         ; $67e8: $81
    jp nz, $e042                                  ; $67e9: $c2 $42 $e0

    cp a                                          ; $67ec: $bf
    ldh [rSCY], a                                 ; $67ed: $e0 $42
    rst $38                                       ; $67ef: $ff
    ld b, [hl]                                    ; $67f0: $46
    ld [$9490], sp                                ; $67f1: $08 $90 $94
    sub e                                         ; $67f4: $93
    sub e                                         ; $67f5: $93
    sub e                                         ; $67f6: $93
    sub d                                         ; $67f7: $92
    ld bc, $8091                                  ; $67f8: $01 $91 $80
    ld [c], a                                     ; $67fb: $e2
    inc h                                         ; $67fc: $24
    ret nz                                        ; $67fd: $c0

    ld e, a                                       ; $67fe: $5f
    ldh [$d3], a                                  ; $67ff: $e0 $d3
    db $e3                                        ; $6801: $e3
    add b                                         ; $6802: $80
    adc $82                                       ; $6803: $ce $82
    and d                                         ; $6805: $a2
    cp a                                          ; $6806: $bf
    ret nz                                        ; $6807: $c0

    or $4f                                        ; $6808: $f6 $4f
    pop bc                                        ; $680a: $c1
    ld [$4205], sp                                ; $680b: $08 $05 $42
    ldh [$35], a                                  ; $680e: $e0 $35
    dec [hl]                                      ; $6810: $35
    inc a                                         ; $6811: $3c
    ld b, h                                       ; $6812: $44
    or e                                          ; $6813: $b3
    ld b, [hl]                                    ; $6814: $46
    ld b, $82                                     ; $6815: $06 $82
    db $e3                                        ; $6817: $e3
    ld b, c                                       ; $6818: $41
    ldh [rIF], a                                  ; $6819: $e0 $0f
    dec b                                         ; $681b: $05
    ld h, l                                       ; $681c: $65
    pop bc                                        ; $681d: $c1
    sbc c                                         ; $681e: $99
    ldh [$dc], a                                  ; $681f: $e0 $dc
    add b                                         ; $6821: $80
    dec a                                         ; $6822: $3d
    jp hl                                         ; $6823: $e9


    add b                                         ; $6824: $80
    rst $00                                       ; $6825: $c7
    nop                                           ; $6826: $00
    call nz, $a0c1                                ; $6827: $c4 $c1 $a0
    xor b                                         ; $682a: $a8
    dec b                                         ; $682b: $05
    ld [$442b], sp                                ; $682c: $08 $2b $44
    inc a                                         ; $682f: $3c
    add b                                         ; $6830: $80
    ld [c], a                                     ; $6831: $e2
    add hl, sp                                    ; $6832: $39
    ld [hl], $e0                                  ; $6833: $36 $e0
    sub [hl]                                      ; $6835: $96
    ld b, c                                       ; $6836: $41
    ldh [rSB], a                                  ; $6837: $e0 $01
    pop hl                                        ; $6839: $e1
    ld bc, $a808                                  ; $683a: $01 $08 $a8
    and c                                         ; $683d: $a1
    ld a, l                                       ; $683e: $7d
    ret nz                                        ; $683f: $c0

    ld l, b                                       ; $6840: $68
    add b                                         ; $6841: $80
    dec a                                         ; $6842: $3d
    add sp, $43                                   ; $6843: $e8 $43
    add a                                         ; $6845: $87
    add d                                         ; $6846: $82
    and e                                         ; $6847: $a3
    pop bc                                        ; $6848: $c1
    and c                                         ; $6849: $a1
    ld sp, hl                                     ; $684a: $f9
    xor c                                         ; $684b: $a9
    jp nz, $c0c3                                  ; $684c: $c2 $c3 $c0

    ld [c], a                                     ; $684f: $e2
    ld b, [hl]                                    ; $6850: $46
    ld [bc], a                                    ; $6851: $02
    rlca                                          ; $6852: $07
    rlca                                          ; $6853: $07
    dec c                                         ; $6854: $0d
    add [hl]                                      ; $6855: $86
    cp [hl]                                       ; $6856: $be
    pop hl                                        ; $6857: $e1
    sub h                                         ; $6858: $94
    rrca                                          ; $6859: $0f
    ccf                                           ; $685a: $3f
    ret nz                                        ; $685b: $c0

    ld a, [hl]                                    ; $685c: $7e
    jp $b400                                      ; $685d: $c3 $00 $b4


    pop bc                                        ; $6860: $c1
    and [hl]                                      ; $6861: $a6
    ld [bc], a                                    ; $6862: $02
    db $ec                                        ; $6863: $ec
    ld d, l                                       ; $6864: $55
    ret nz                                        ; $6865: $c0

    nop                                           ; $6866: $00
    ld [c], a                                     ; $6867: $e2
    ld [hl], $45                                  ; $6868: $36 $45
    add d                                         ; $686a: $82
    and d                                         ; $686b: $a2
    inc bc                                        ; $686c: $03
    inc b                                         ; $686d: $04
    rrca                                          ; $686e: $0f
    add b                                         ; $686f: $80
    cp d                                          ; $6870: $ba
    pop bc                                        ; $6871: $c1
    ret nz                                        ; $6872: $c0

    ret nz                                        ; $6873: $c0

    di                                            ; $6874: $f3
    add c                                         ; $6875: $81
    nop                                           ; $6876: $00
    or l                                          ; $6877: $b5
    rst $08                                       ; $6878: $cf
    ld h, b                                       ; $6879: $60
    ld b, d                                       ; $687a: $42
    jp nz, $c083                                  ; $687b: $c2 $83 $c0

    ld [bc], a                                    ; $687e: $02
    adc a                                         ; $687f: $8f
    ld b, [hl]                                    ; $6880: $46
    ld a, c                                       ; $6881: $79
    ld a, d                                       ; $6882: $7a
    ld h, [hl]                                    ; $6883: $66
    ld bc, $f4e2                                  ; $6884: $01 $e2 $f4
    add b                                         ; $6887: $80
    ld [hl], a                                    ; $6888: $77
    add c                                         ; $6889: $81
    ld [bc], a                                    ; $688a: $02
    rlca                                          ; $688b: $07
    rrca                                          ; $688c: $0f
    ld bc, $4000                                  ; $688d: $01 $00 $40
    pop bc                                        ; $6890: $c1
    jp nz, Jump_000_00c1                          ; $6891: $c2 $c1 $00

    or d                                          ; $6894: $b2
    ld l, c                                       ; $6895: $69
    add c                                         ; $6896: $81
    pop bc                                        ; $6897: $c1
    and l                                         ; $6898: $a5
    ld a, a                                       ; $6899: $7f
    ld b, $06                                     ; $689a: $06 $06
    ld b, [hl]                                    ; $689c: $46
    ld a, c                                       ; $689d: $79
    ld a, [hl]                                    ; $689e: $7e
    ld [hl], $68                                  ; $689f: $36 $68
    cp a                                          ; $68a1: $bf
    ldh [$fe], a                                  ; $68a2: $e0 $fe
    nop                                           ; $68a4: $00
    ret nz                                        ; $68a5: $c0

    ld b, [hl]                                    ; $68a6: $46
    ld b, [hl]                                    ; $68a7: $46
    ld c, d                                       ; $68a8: $4a
    ld h, b                                       ; $68a9: $60
    ld d, h                                       ; $68aa: $54
    ld b, h                                       ; $68ab: $44
    ld b, [hl]                                    ; $68ac: $46
    inc bc                                        ; $68ad: $03
    ld [bc], a                                    ; $68ae: $02
    dec c                                         ; $68af: $0d
    ret nz                                        ; $68b0: $c0

    and c                                         ; $68b1: $a1
    add d                                         ; $68b2: $82
    jp nz, $b200                                  ; $68b3: $c2 $00 $b2

    add c                                         ; $68b6: $81
    pop bc                                        ; $68b7: $c1
    add d                                         ; $68b8: $82
    ld h, b                                       ; $68b9: $60
    add b                                         ; $68ba: $80
    and b                                         ; $68bb: $a0
    db $fd                                        ; $68bc: $fd
    xor c                                         ; $68bd: $a9
    add h                                         ; $68be: $84
    add b                                         ; $68bf: $80
    ld a, c                                       ; $68c0: $79
    ld a, [hl]                                    ; $68c1: $7e
    add hl, sp                                    ; $68c2: $39
    and [hl]                                      ; $68c3: $a6
    dec [hl]                                      ; $68c4: $35
    ld l, d                                       ; $68c5: $6a
    cp $00                                        ; $68c6: $fe $00
    jp nz, Jump_073_4646                          ; $68c8: $c2 $46 $46

    ld b, e                                       ; $68cb: $43
    or h                                          ; $68cc: $b4
    inc l                                         ; $68cd: $2c
    inc l                                         ; $68ce: $2c
    or h                                          ; $68cf: $b4
    ldh [$3c], a                                  ; $68d0: $e0 $3c
    ldh [rSB], a                                  ; $68d2: $e0 $01
    db $e3                                        ; $68d4: $e3
    nop                                           ; $68d5: $00
    or h                                          ; $68d6: $b4
    add c                                         ; $68d7: $81
    jp nz, $c100                                  ; $68d8: $c2 $00 $c1

    xor b                                         ; $68db: $a8
    ld b, [hl]                                    ; $68dc: $46
    xor b                                         ; $68dd: $a8
    rst $38                                       ; $68de: $ff
    ld de, $8046                                  ; $68df: $11 $46 $80
    ld b, [hl]                                    ; $68e2: $46

Jump_073_68e3:
    add hl, sp                                    ; $68e3: $39
    and a                                         ; $68e4: $a7
    ld l, h                                       ; $68e5: $6c
    ld l, l                                       ; $68e6: $6d
    ld a, [hl]                                    ; $68e7: $7e
    rst $38                                       ; $68e8: $ff
    call nz, $2e45                                ; $68e9: $c4 $45 $2e
    jr nz, jr_073_690e                            ; $68ec: $20 $20

    ld l, $45                                     ; $68ee: $2e $45
    ld a, d                                       ; $68f0: $7a
    add h                                         ; $68f1: $84
    pop de                                        ; $68f2: $d1
    sbc c                                         ; $68f3: $99
    nop                                           ; $68f4: $00
    or [hl]                                       ; $68f5: $b6
    rst $20                                       ; $68f6: $e7
    ld b, b                                       ; $68f7: $40
    pop de                                        ; $68f8: $d1
    ld b, b                                       ; $68f9: $40
    sbc c                                         ; $68fa: $99
    add b                                         ; $68fb: $80
    add b                                         ; $68fc: $80
    ld de, $bf46                                  ; $68fd: $11 $46 $bf
    add d                                         ; $6900: $82
    add e                                         ; $6901: $83
    ld b, b                                       ; $6902: $40
    ld l, h                                       ; $6903: $6c
    ld l, a                                       ; $6904: $6f
    ld l, [hl]                                    ; $6905: $6e
    cp a                                          ; $6906: $bf
    and e                                         ; $6907: $a3
    xor c                                         ; $6908: $a9
    cp a                                          ; $6909: $bf
    ld b, d                                       ; $690a: $42
    ld hl, $2c23                                  ; $690b: $21 $23 $2c

jr_073_690e:
    ld a, [hl+]                                   ; $690e: $2a
    ld b, h                                       ; $690f: $44
    xor b                                         ; $6910: $a8
    and e                                         ; $6911: $a3
    ld b, [hl]                                    ; $6912: $46
    pop bc                                        ; $6913: $c1
    sbc c                                         ; $6914: $99
    halt                                          ; $6915: $76
    ld h, e                                       ; $6916: $63
    add b                                         ; $6917: $80
    ld [hl], c                                    ; $6918: $71
    ld b, d                                       ; $6919: $42
    and b                                         ; $691a: $a0
    sbc [hl]                                      ; $691b: $9e
    add c                                         ; $691c: $81
    add h                                         ; $691d: $84
    ld h, c                                       ; $691e: $61
    add h                                         ; $691f: $84
    add l                                         ; $6920: $85
    di                                            ; $6921: $f3
    add [hl]                                      ; $6922: $86
    ld [hl], b                                    ; $6923: $70
    pop bc                                        ; $6924: $c1
    ld [c], a                                     ; $6925: $e2
    cp $81                                        ; $6926: $fe $81
    ld b, h                                       ; $6928: $44
    inc a                                         ; $6929: $3c
    inc a                                         ; $692a: $3c
    ld b, h                                       ; $692b: $44
    inc bc                                        ; $692c: $03
    ld c, c                                       ; $692d: $49
    ld d, d                                       ; $692e: $52
    ld [hl], $e1                                  ; $692f: $36 $e1
    ld bc, $bdc2                                  ; $6931: $01 $c2 $bd
    ld c, h                                       ; $6934: $4c
    jp $8847                                      ; $6935: $c3 $47 $88


    ld b, c                                       ; $6938: $41
    add c                                         ; $6939: $81
    ld h, d                                       ; $693a: $62
    pop de                                        ; $693b: $d1
    ld de, $60cd                                  ; $693c: $11 $cd $60
    nop                                           ; $693f: $00
    call nz, $80fe                                ; $6940: $c4 $fe $80
    ld b, l                                       ; $6943: $45
    rst $30                                       ; $6944: $f7
    add b                                         ; $6945: $80
    ld b, b                                       ; $6946: $40
    ld d, e                                       ; $6947: $53
    nop                                           ; $6948: $00
    db $f4                                        ; $6949: $f4
    ld b, c                                       ; $694a: $41
    ld bc, $bda3                                  ; $694b: $01 $a3 $bd
    ld c, h                                       ; $694e: $4c
    ld b, $47                                     ; $694f: $06 $47
    inc de                                        ; $6951: $13
    ld b, b                                       ; $6952: $40
    pop bc                                        ; $6953: $c1
    jp nz, $8045                                  ; $6954: $c2 $45 $80

    ld c, e                                       ; $6957: $4b
    ret nz                                        ; $6958: $c0

    sbc [hl]                                      ; $6959: $9e
    ret nz                                        ; $695a: $c0

    and e                                         ; $695b: $a3
    ld h, d                                       ; $695c: $62
    ld h, e                                       ; $695d: $63
    ld a, e                                       ; $695e: $7b
    ld a, h                                       ; $695f: $7c
    ld a, b                                       ; $6960: $78
    push bc                                       ; $6961: $c5
    ld a, $60                                     ; $6962: $3e $60
    sbc b                                         ; $6964: $98
    pop bc                                        ; $6965: $c1
    sbc d                                         ; $6966: $9a
    dec sp                                        ; $6967: $3b
    ld b, c                                       ; $6968: $41
    nop                                           ; $6969: $00
    ld d, c                                       ; $696a: $51
    ld e, h                                       ; $696b: $5c
    ld h, d                                       ; $696c: $62
    inc bc                                        ; $696d: $03
    ld h, d                                       ; $696e: $62
    ld b, c                                       ; $696f: $41
    pop bc                                        ; $6970: $c1
    ld b, l                                       ; $6971: $45
    scf                                           ; $6972: $37
    cp l                                          ; $6973: $bd
    jr c, @-$3d                                   ; $6974: $38 $c1

    db $e3                                        ; $6976: $e3
    ld h, a                                       ; $6977: $67
    ld [hl], $a8                                  ; $6978: $36 $a8
    add hl, sp                                    ; $697a: $39
    scf                                           ; $697b: $37
    ret nz                                        ; $697c: $c0

    ld a, $c0                                     ; $697d: $3e $c0
    ld [$4382], a                                 ; $697f: $ea $82 $43
    adc a                                         ; $6982: $8f
    add b                                         ; $6983: $80
    ld l, b                                       ; $6984: $68
    ld b, h                                       ; $6985: $44
    add b                                         ; $6986: $80
    inc bc                                        ; $6987: $03
    ld h, e                                       ; $6988: $63
    add e                                         ; $6989: $83
    and b                                         ; $698a: $a0
    ld b, l                                       ; $698b: $45
    ld [hl], $ff                                  ; $698c: $36 $ff
    ld h, d                                       ; $698e: $62
    ld h, e                                       ; $698f: $63
    ld h, l                                       ; $6990: $65
    ld h, [hl]                                    ; $6991: $66
    dec [hl]                                      ; $6992: $35
    jr c, jr_073_69cd                             ; $6993: $38 $38

    ld l, c                                       ; $6995: $69
    ld c, a                                       ; $6996: $4f
    ld [hl], $a8                                  ; $6997: $36 $a8
    xor c                                         ; $6999: $a9
    ld a, [hl-]                                   ; $699a: $3a
    scf                                           ; $699b: $37
    ret nz                                        ; $699c: $c0

    ret nz                                        ; $699d: $c0

    pop hl                                        ; $699e: $e1
    xor c                                         ; $699f: $a9
    push bc                                       ; $69a0: $c5
    add d                                         ; $69a1: $82
    and b                                         ; $69a2: $a0
    ld b, e                                       ; $69a3: $43
    adc e                                         ; $69a4: $8b
    nop                                           ; $69a5: $00
    ld b, [hl]                                    ; $69a6: $46
    ld b, h                                       ; $69a7: $44
    add e                                         ; $69a8: $83
    ld c, b                                       ; $69a9: $48
    ld b, b                                       ; $69aa: $40
    sub l                                         ; $69ab: $95
    ld h, b                                       ; $69ac: $60
    ld [bc], a                                    ; $69ad: $02
    pop bc                                        ; $69ae: $c1
    ldh [$67], a                                  ; $69af: $e0 $67
    rst $30                                       ; $69b1: $f7
    dec [hl]                                      ; $69b2: $35
    dec [hl]                                      ; $69b3: $35
    ld l, d                                       ; $69b4: $6a
    dec b                                         ; $69b5: $05
    ldh [$80], a                                  ; $69b6: $e0 $80
    ld b, l                                       ; $69b8: $45
    xor c                                         ; $69b9: $a9
    ld [hl], $01                                  ; $69ba: $36 $01
    dec [hl]                                      ; $69bc: $35
    scf                                           ; $69bd: $37
    ret nz                                        ; $69be: $c0

    ld hl, sp-$5e                                 ; $69bf: $f8 $a2
    and h                                         ; $69c1: $a4
    ld h, b                                       ; $69c2: $60
    ld h, l                                       ; $69c3: $65
    ld hl, $8943                                  ; $69c4: $21 $43 $89
    nop                                           ; $69c7: $00
    ld b, h                                       ; $69c8: $44
    add $24                                       ; $69c9: $c6 $24
    add hl, bc                                    ; $69cb: $09
    sbc e                                         ; $69cc: $9b

jr_073_69cd:
    add l                                         ; $69cd: $85
    ld b, b                                       ; $69ce: $40
    ld b, h                                       ; $69cf: $44
    and c                                         ; $69d0: $a1
    ld b, h                                       ; $69d1: $44
    pop bc                                        ; $69d2: $c1
    pop hl                                        ; $69d3: $e1
    ret nz                                        ; $69d4: $c0

    pop hl                                        ; $69d5: $e1
    jr c, @-$3e                                   ; $69d6: $38 $c0

    pop bc                                        ; $69d8: $c1
    ldh [rDIV], a                                 ; $69d9: $e0 $04
    scf                                           ; $69db: $37
    pop bc                                        ; $69dc: $c1
    ld [hl], a                                    ; $69dd: $77
    and d                                         ; $69de: $a2
    sbc e                                         ; $69df: $9b
    ld b, e                                       ; $69e0: $43
    ld h, e                                       ; $69e1: $63
    add b                                         ; $69e2: $80
    ld l, a                                       ; $69e3: $6f
    ld l, h                                       ; $69e4: $6c
    ld b, h                                       ; $69e5: $44
    add e                                         ; $69e6: $83
    ld b, b                                       ; $69e7: $40
    ld b, h                                       ; $69e8: $44
    and c                                         ; $69e9: $a1
    rst $10                                       ; $69ea: $d7
    ld b, [hl]                                    ; $69eb: $46
    ld b, d                                       ; $69ec: $42
    ld l, c                                       ; $69ed: $69
    call nz, $6a61                                ; $69ee: $c4 $61 $6a
    inc bc                                        ; $69f1: $03
    add b                                         ; $69f2: $80
    add h                                         ; $69f3: $84
    add l                                         ; $69f4: $85
    inc bc                                        ; $69f5: $03
    ld [hl], c                                    ; $69f6: $71
    ld [hl], c                                    ; $69f7: $71
    scf                                           ; $69f8: $37
    jp nz, $a277                                  ; $69f9: $c2 $77 $a2

    ld b, e                                       ; $69fc: $43
    ld h, e                                       ; $69fd: $63
    add b                                         ; $69fe: $80
    ld [hl], d                                    ; $69ff: $72
    and $02                                       ; $6a00: $e6 $02
    and l                                         ; $6a02: $a5
    ld h, c                                       ; $6a03: $61
    dec b                                         ; $6a04: $05
    ld [$a01b], sp                                ; $6a05: $08 $1b $a0
    ld b, b                                       ; $6a08: $40
    ret nz                                        ; $6a09: $c0

    db $e3                                        ; $6a0a: $e3
    ld [bc], a                                    ; $6a0b: $02
    ld h, c                                       ; $6a0c: $61
    add hl, sp                                    ; $6a0d: $39
    push bc                                       ; $6a0e: $c5
    or [hl]                                       ; $6a0f: $b6
    add c                                         ; $6a10: $81
    ld b, e                                       ; $6a11: $43
    ld h, h                                       ; $6a12: $64
    xor b                                         ; $6a13: $a8
    add c                                         ; $6a14: $81
    ld h, h                                       ; $6a15: $64
    nop                                           ; $6a16: $00
    ld c, a                                       ; $6a17: $4f
    ld h, l                                       ; $6a18: $65
    ld h, d                                       ; $6a19: $62
    ld de, $0030                                  ; $6a1a: $11 $30 $00
    add hl, sp                                    ; $6a1d: $39
    add b                                         ; $6a1e: $80
    ld [c], a                                     ; $6a1f: $e2
    ld [hl], l                                    ; $6a20: $75
    ld bc, $0266                                  ; $6a21: $01 $66 $02
    and c                                         ; $6a24: $a1
    add hl, sp                                    ; $6a25: $39
    ld h, e                                       ; $6a26: $63
    rst $38                                       ; $6a27: $ff
    call nz, $2134                                ; $6a28: $c4 $34 $21
    sbc d                                         ; $6a2b: $9a
    and c                                         ; $6a2c: $a1
    cp d                                          ; $6a2d: $ba
    nop                                           ; $6a2e: $00
    nop                                           ; $6a2f: $00
    ld d, c                                       ; $6a30: $51
    ld a, [de]                                    ; $6a31: $1a
    ld b, e                                       ; $6a32: $43
    ld b, b                                       ; $6a33: $40
    xor b                                         ; $6a34: $a8
    add b                                         ; $6a35: $80
    ldh [rLYC], a                                 ; $6a36: $e0 $45
    ld a, [hl-]                                   ; $6a38: $3a
    ld b, b                                       ; $6a39: $40
    ld [c], a                                     ; $6a3a: $e2
    ccf                                           ; $6a3b: $3f
    ld [c], a                                     ; $6a3c: $e2
    add e                                         ; $6a3d: $83
    and b                                         ; $6a3e: $a0
    ret nz                                        ; $6a3f: $c0

    ret nz                                        ; $6a40: $c0

    add sp, $7d                                   ; $6a41: $e8 $7d
    pop bc                                        ; $6a43: $c1
    ld [hl+], a                                   ; $6a44: $22
    ld bc, $a015                                  ; $6a45: $01 $15 $a0
    add b                                         ; $6a48: $80
    db $10                                        ; $6a49: $10
    add d                                         ; $6a4a: $82
    ld [hl+], a                                   ; $6a4b: $22
    ld b, $06                                     ; $6a4c: $06 $06
    rst $28                                       ; $6a4e: $ef
    xor b                                         ; $6a4f: $a8
    ld b, d                                       ; $6a50: $42
    ld h, d                                       ; $6a51: $62
    halt                                          ; $6a52: $76
    ret nz                                        ; $6a53: $c0

    db $e3                                        ; $6a54: $e3
    ld [hl], $43                                  ; $6a55: $36 $43
    ld b, l                                       ; $6a57: $45
    pop bc                                        ; $6a58: $c1
    ld b, c                                       ; $6a59: $41
    add d                                         ; $6a5a: $82
    and c                                         ; $6a5b: $a1
    or [hl]                                       ; $6a5c: $b6
    ld h, h                                       ; $6a5d: $64
    ld a, l                                       ; $6a5e: $7d
    jp $5700                                      ; $6a5f: $c3 $00 $57


    add d                                         ; $6a62: $82
    ld [hl+], a                                   ; $6a63: $22
    dec b                                         ; $6a64: $05
    ld [$a9f9], sp                                ; $6a65: $08 $f9 $a9
    ld bc, $49e3                                  ; $6a68: $01 $e3 $49
    ret nz                                        ; $6a6b: $c0

    ld c, d                                       ; $6a6c: $4a
    ld c, a                                       ; $6a6d: $4f
    dec l                                         ; $6a6e: $2d
    jr nz, jr_073_6a9e                            ; $6a6f: $20 $2d

    add $b5                                       ; $6a71: $c6 $b5
    and l                                         ; $6a73: $a5
    jr c, jr_073_6aad                             ; $6a74: $38 $37

    inc [hl]                                      ; $6a76: $34
    add c                                         ; $6a77: $81
    nop                                           ; $6a78: $00
    add e                                         ; $6a79: $83
    add b                                         ; $6a7a: $80
    inc de                                        ; $6a7b: $13
    cp e                                          ; $6a7c: $bb
    cp h                                          ; $6a7d: $bc
    cp [hl]                                       ; $6a7e: $be
    inc bc                                        ; $6a7f: $03
    ld b, c                                       ; $6a80: $41
    ld de, $3946                                  ; $6a81: $11 $46 $39
    ld l, e                                       ; $6a84: $6b
    ld l, h                                       ; $6a85: $6c
    ld b, h                                       ; $6a86: $44
    ld b, c                                       ; $6a87: $41
    ld [hl], e                                    ; $6a88: $73
    ld a, a                                       ; $6a89: $7f
    ld l, [hl]                                    ; $6a8a: $6e
    ld d, l                                       ; $6a8b: $55
    ld d, [hl]                                    ; $6a8c: $56
    ld [hl-], a                                   ; $6a8d: $32
    jr nz, jr_073_6abe                            ; $6a8e: $20 $2e

    ld b, e                                       ; $6a90: $43
    rst $38                                       ; $6a91: $ff
    add d                                         ; $6a92: $82
    jp nz, $e57d                                  ; $6a93: $c2 $7d $e5

    sbc e                                         ; $6a96: $9b
    cp l                                          ; $6a97: $bd
    xor [hl]                                      ; $6a98: $ae
    add b                                         ; $6a99: $80
    ld l, b                                       ; $6a9a: $68
    ld b, e                                       ; $6a9b: $43
    add c                                         ; $6a9c: $81
    ret nz                                        ; $6a9d: $c0

jr_073_6a9e:
    pop hl                                        ; $6a9e: $e1
    ld l, [hl]                                    ; $6a9f: $6e
    ld l, a                                       ; $6aa0: $6f
    cp $bf                                        ; $6aa1: $fe $bf
    ldh [$6c], a                                  ; $6aa3: $e0 $6c
    ld l, l                                       ; $6aa5: $6d
    ld a, [hl-]                                   ; $6aa6: $3a
    ld c, d                                       ; $6aa7: $4a
    ld h, b                                       ; $6aa8: $60
    ld [hl-], a                                   ; $6aa9: $32
    jr nz, jr_073_6b13                            ; $6aaa: $20 $67

    daa                                           ; $6aac: $27

jr_073_6aad:
    ld c, a                                       ; $6aad: $4f
    ld d, l                                       ; $6aae: $55
    db $fc                                        ; $6aaf: $fc
    push bc                                       ; $6ab0: $c5
    ld [hl], d                                    ; $6ab1: $72
    ld hl, $9a97                                  ; $6ab2: $21 $97 $9a
    cp l                                          ; $6ab5: $bd
    xor l                                         ; $6ab6: $ad
    sbc $43                                       ; $6ab7: $de $43
    daa                                           ; $6ab9: $27
    cp l                                          ; $6aba: $bd
    cp [hl]                                       ; $6abb: $be
    sbc d                                         ; $6abc: $9a
    sub a                                         ; $6abd: $97

jr_073_6abe:
    ld b, e                                       ; $6abe: $43
    add c                                         ; $6abf: $81
    ld b, l                                       ; $6ac0: $45
    ld [hl], $fb                                  ; $6ac1: $36 $fb
    ld l, [hl]                                    ; $6ac3: $6e
    ld [hl], b                                    ; $6ac4: $70
    add hl, bc                                    ; $6ac5: $09
    pop bc                                        ; $6ac6: $c1
    add hl, sp                                    ; $6ac7: $39
    ld d, l                                       ; $6ac8: $55
    ld d, d                                       ; $6ac9: $52
    dec l                                         ; $6aca: $2d
    ld h, $1f                                     ; $6acb: $26 $1f
    ld hl, $554a                                  ; $6acd: $21 $4a $55
    ld b, [hl]                                    ; $6ad0: $46
    ld b, d                                       ; $6ad1: $42
    ld [hl], l                                    ; $6ad2: $75
    add e                                         ; $6ad3: $83
    ld [hl], d                                    ; $6ad4: $72
    ld h, d                                       ; $6ad5: $62
    nop                                           ; $6ad6: $00
    add b                                         ; $6ad7: $80
    ret nz                                        ; $6ad8: $c0

    cp l                                          ; $6ad9: $bd
    xor e                                         ; $6ada: $ab
    ld b, e                                       ; $6adb: $43
    ld h, $67                                     ; $6adc: $26 $67
    add c                                         ; $6ade: $81
    ld b, c                                       ; $6adf: $41
    ld h, b                                       ; $6ae0: $60
    rst $38                                       ; $6ae1: $ff
    and b                                         ; $6ae2: $a0
    inc b                                         ; $6ae3: $04
    ld b, e                                       ; $6ae4: $43

jr_073_6ae5:
    ld [hl], $45                                  ; $6ae5: $36 $45
    cp [hl]                                       ; $6ae7: $be
    ld b, l                                       ; $6ae8: $45
    add c                                         ; $6ae9: $81
    ld a, [hl-]                                   ; $6aea: $3a
    ld b, e                                       ; $6aeb: $43
    ld a, c                                       ; $6aec: $79
    ld a, d                                       ; $6aed: $7a
    ld a, l                                       ; $6aee: $7d
    dec [hl]                                      ; $6aef: $35
    ld hl, $803b                                  ; $6af0: $21 $3b $80
    or c                                          ; $6af3: $b1
    ld b, e                                       ; $6af4: $43
    ldh [rP1], a                                  ; $6af5: $e0 $00
    cp l                                          ; $6af7: $bd
    xor e                                         ; $6af8: $ab
    nop                                           ; $6af9: $00
    ld c, c                                       ; $6afa: $49
    ccf                                           ; $6afb: $3f
    ld b, c                                       ; $6afc: $41
    add d                                         ; $6afd: $82
    add c                                         ; $6afe: $81
    add h                                         ; $6aff: $84
    ld hl, $fd3c                                  ; $6b00: $21 $3c $fd
    ld b, h                                       ; $6b03: $44
    ld a, e                                       ; $6b04: $7b
    add d                                         ; $6b05: $82
    add hl, sp                                    ; $6b06: $39
    ld a, c                                       ; $6b07: $79
    ld a, [hl]                                    ; $6b08: $7e
    ld b, c                                       ; $6b09: $41
    ld a, a                                       ; $6b0a: $7f
    ld a, l                                       ; $6b0b: $7d
    ld c, a                                       ; $6b0c: $4f
    ld [hl], $3b                                  ; $6b0d: $36 $3b
    ld [hl], $43                                  ; $6b0f: $36 $43
    ldh a, [rP1]                                  ; $6b11: $f0 $00

jr_073_6b13:
    or c                                          ; $6b13: $b1
    nop                                           ; $6b14: $00
    sbc c                                         ; $6b15: $99
    nop                                           ; $6b16: $00
    ld h, c                                       ; $6b17: $61
    ret nc                                        ; $6b18: $d0

    nop                                           ; $6b19: $00
    ld d, h                                       ; $6b1a: $54
    ccf                                           ; $6b1b: $3f
    ld b, d                                       ; $6b1c: $42
    ld b, a                                       ; $6b1d: $47
    nop                                           ; $6b1e: $00
    inc b                                         ; $6b1f: $04
    ld b, e                                       ; $6b20: $43
    add hl, sp                                    ; $6b21: $39
    cp $01                                        ; $6b22: $fe $01
    ld [hl], $79                                  ; $6b24: $36 $79
    rst $38                                       ; $6b26: $ff
    ld a, [hl]                                    ; $6b27: $7e
    ld a, [hl+]                                   ; $6b28: $2a
    ld h, $2a                                     ; $6b29: $26 $2a
    ld a, a                                       ; $6b2b: $7f
    ld a, l                                       ; $6b2c: $7d
    ld b, e                                       ; $6b2d: $43
    ld [bc], a                                    ; $6b2e: $02
    adc a                                         ; $6b2f: $8f
    rlca                                          ; $6b30: $07
    ld [bc], a                                    ; $6b31: $02
    ld [hl], $3b                                  ; $6b32: $36 $3b
    ret nz                                        ; $6b34: $c0

    pop hl                                        ; $6b35: $e1
    cp l                                          ; $6b36: $bd
    add c                                         ; $6b37: $81
    add b                                         ; $6b38: $80
    db $d3                                        ; $6b39: $d3
    or a                                          ; $6b3a: $b7
    ld b, a                                       ; $6b3b: $47
    cp b                                          ; $6b3c: $b8
    cp e                                          ; $6b3d: $bb
    cp h                                          ; $6b3e: $bc
    ld bc, $7e20                                  ; $6b3f: $01 $20 $7e
    and b                                         ; $6b42: $a0
    ld b, e                                       ; $6b43: $43
    ld [hl+], a                                   ; $6b44: $22
    ld a, $c0                                     ; $6b45: $3e $c0
    ldh [rIE], a                                  ; $6b47: $e0 $ff
    ld a, [hl-]                                   ; $6b49: $3a
    ld a, c                                       ; $6b4a: $79
    ld a, [hl]                                    ; $6b4b: $7e
    dec l                                         ; $6b4c: $2d
    jr nz, jr_073_6b6f                            ; $6b4d: $20 $20

    daa                                           ; $6b4f: $27
    ld b, h                                       ; $6b50: $44
    ld a, a                                       ; $6b51: $7f
    add c                                         ; $6b52: $81
    ld b, [hl]                                    ; $6b53: $46
    ld [$0f96], sp                                ; $6b54: $08 $96 $0f
    ld [bc], a                                    ; $6b57: $02
    ld b, e                                       ; $6b58: $43
    nop                                           ; $6b59: $00
    db $e3                                        ; $6b5a: $e3
    ld b, e                                       ; $6b5b: $43
    or a                                          ; $6b5c: $b7
    cp b                                          ; $6b5d: $b8
    nop                                           ; $6b5e: $00
    ld d, e                                       ; $6b5f: $53
    add d                                         ; $6b60: $82
    nop                                           ; $6b61: $00
    ld b, b                                       ; $6b62: $40
    jr nz, jr_073_6ae5                            ; $6b63: $20 $80

    pop hl                                        ; $6b65: $e1
    ld b, b                                       ; $6b66: $40
    ld b, [hl]                                    ; $6b67: $46
    ld h, d                                       ; $6b68: $62
    cp $fa                                        ; $6b69: $fe $fa
    ldh [$3e], a                                  ; $6b6b: $e0 $3e
    add b                                         ; $6b6d: $80
    ld b, [hl]                                    ; $6b6e: $46

jr_073_6b6f:
    ld [hl-], a                                   ; $6b6f: $32
    jr nz, jr_073_6b9e                            ; $6b70: $20 $2c

    dec hl                                        ; $6b72: $2b
    ld a, a                                       ; $6b73: $7f
    add e                                         ; $6b74: $83
    ld l, l                                       ; $6b75: $6d
    dec b                                         ; $6b76: $05
    ld c, $94                                     ; $6b77: $0e $94
    sub h                                         ; $6b79: $94
    ld c, $00                                     ; $6b7a: $0e $00
    ld b, b                                       ; $6b7c: $40
    ret nz                                        ; $6b7d: $c0

    ld b, b                                       ; $6b7e: $40
    ld hl, $823b                                  ; $6b7f: $21 $3b $82
    add b                                         ; $6b82: $80
    ret nc                                        ; $6b83: $d0

    pop bc                                        ; $6b84: $c1
    ld [hl+], a                                   ; $6b85: $22
    ld a, a                                       ; $6b86: $7f
    and b                                         ; $6b87: $a0
    dec bc                                        ; $6b88: $0b
    and l                                         ; $6b89: $a5
    ld b, b                                       ; $6b8a: $40
    inc a                                         ; $6b8b: $3c
    rst $38                                       ; $6b8c: $ff
    dec [hl]                                      ; $6b8d: $35
    ld a, [hl-]                                   ; $6b8e: $3a
    add d                                         ; $6b8f: $82
    add e                                         ; $6b90: $83
    dec l                                         ; $6b91: $2d
    ld a, [hl+]                                   ; $6b92: $2a
    add e                                         ; $6b93: $83
    add a                                         ; $6b94: $87
    rlca                                          ; $6b95: $07
    add l                                         ; $6b96: $85
    add h                                         ; $6b97: $84
    ld b, $ff                                     ; $6b98: $06 $ff
    ld bc, $0240                                  ; $6b9a: $01 $40 $02
    dec sp                                        ; $6b9d: $3b

jr_073_6b9e:
    add h                                         ; $6b9e: $84
    add b                                         ; $6b9f: $80
    ret nc                                        ; $6ba0: $d0

    and d                                         ; $6ba1: $a2
    and d                                         ; $6ba2: $a2
    call c, $2105                                 ; $6ba3: $dc $05 $21
    call nz, Call_000_3a05                        ; $6ba6: $c4 $05 $3a
    dec [hl]                                      ; $6ba9: $35
    ld [hl], $77                                  ; $6baa: $36 $77
    ld b, b                                       ; $6bac: $40
    add [hl]                                      ; $6bad: $86
    add l                                         ; $6bae: $85
    sub c                                         ; $6baf: $91
    add h                                         ; $6bb0: $84
    nop                                           ; $6bb1: $00
    ld hl, $00bf                                  ; $6bb2: $21 $bf $00
    ld a, a                                       ; $6bb5: $7f
    nop                                           ; $6bb6: $00
    xor b                                         ; $6bb7: $a8
    ld a, [hl]                                    ; $6bb8: $7e
    dec h                                         ; $6bb9: $25
    add b                                         ; $6bba: $80
    ld l, l                                       ; $6bbb: $6d
    sbc d                                         ; $6bbc: $9a
    rra                                           ; $6bbd: $1f
    sbc b                                         ; $6bbe: $98
    sbc b                                         ; $6bbf: $98
    sbc h                                         ; $6bc0: $9c
    sbc b                                         ; $6bc1: $98
    sub a                                         ; $6bc2: $97
    rst $10                                       ; $6bc3: $d7
    nop                                           ; $6bc4: $00
    sbc d                                         ; $6bc5: $9a
    jr nz, jr_073_6c0c                            ; $6bc6: $20 $44

    dec b                                         ; $6bc8: $05
    ccf                                           ; $6bc9: $3f
    add hl, sp                                    ; $6bca: $39
    ld [hl], $03                                  ; $6bcb: $36 $03
    inc b                                         ; $6bcd: $04
    rlca                                          ; $6bce: $07
    ld [bc], a                                    ; $6bcf: $02
    jp nz, $8000                                  ; $6bd0: $c2 $00 $80

    ld bc, $c044                                  ; $6bd3: $01 $44 $c0
    nop                                           ; $6bd6: $00
    add b                                         ; $6bd7: $80
    ldh [$a9], a                                  ; $6bd8: $e0 $a9
    cp a                                          ; $6bda: $bf
    nop                                           ; $6bdb: $00
    cp l                                          ; $6bdc: $bd
    ld c, e                                       ; $6bdd: $4b
    jp $9a43                                      ; $6bde: $c3 $43 $9a


    push bc                                       ; $6be1: $c5
    ldh [$3f], a                                  ; $6be2: $e0 $3f
    rlca                                          ; $6be4: $07
    inc de                                        ; $6be5: $13
    inc de                                        ; $6be6: $13
    rlca                                          ; $6be7: $07
    inc b                                         ; $6be8: $04
    inc bc                                        ; $6be9: $03
    ld b, h                                       ; $6bea: $44
    ld b, c                                       ; $6beb: $41
    ld c, a                                       ; $6bec: $4f
    and d                                         ; $6bed: $a2
    cp [hl]                                       ; $6bee: $be
    nop                                           ; $6bef: $00
    ret nz                                        ; $6bf0: $c0

    dec b                                         ; $6bf1: $05
    rrca                                          ; $6bf2: $0f
    sub l                                         ; $6bf3: $95
    sub h                                         ; $6bf4: $94
    rrca                                          ; $6bf5: $0f
    ld b, d                                       ; $6bf6: $42
    inc b                                         ; $6bf7: $04
    nop                                           ; $6bf8: $00
    pop af                                        ; $6bf9: $f1
    ld bc, $2000                                  ; $6bfa: $01 $00 $20
    pop bc                                        ; $6bfd: $c1
    pop hl                                        ; $6bfe: $e1
    add b                                         ; $6bff: $80
    ld [hl], c                                    ; $6c00: $71
    sbc d                                         ; $6c01: $9a
    sub a                                         ; $6c02: $97
    ld [bc], a                                    ; $6c03: $02
    rrca                                          ; $6c04: $0f
    add a                                         ; $6c05: $87
    inc b                                         ; $6c06: $04
    inc bc                                        ; $6c07: $03
    sub a                                         ; $6c08: $97
    jp nz, Jump_073_7f00                          ; $6c09: $c2 $00 $7f

jr_073_6c0c:
    ld [bc], a                                    ; $6c0c: $02
    rst $38                                       ; $6c0d: $ff
    and c                                         ; $6c0e: $a1
    dec b                                         ; $6c0f: $05
    ld hl, $0c06                                  ; $6c10: $21 $06 $0c
    adc b                                         ; $6c13: $88
    db $e3                                        ; $6c14: $e3
    ld b, l                                       ; $6c15: $45
    ldh [$94], a                                  ; $6c16: $e0 $94
    dec c                                         ; $6c18: $0d
    and l                                         ; $6c19: $a5
    ldh [$7e], a                                  ; $6c1a: $e0 $7e
    ld b, d                                       ; $6c1c: $42
    nop                                           ; $6c1d: $00
    xor a                                         ; $6c1e: $af
    add [hl]                                      ; $6c1f: $86
    ld h, c                                       ; $6c20: $61
    ld b, b                                       ; $6c21: $40
    ld c, l                                       ; $6c22: $4d
    nop                                           ; $6c23: $00
    inc hl                                        ; $6c24: $23
    ld b, b                                       ; $6c25: $40
    rst $38                                       ; $6c26: $ff
    ld h, c                                       ; $6c27: $61
    sbc c                                         ; $6c28: $99
    ld [hl+], a                                   ; $6c29: $22
    dec b                                         ; $6c2a: $05
    ret nz                                        ; $6c2b: $c0

    ld c, l                                       ; $6c2c: $4d
    ld b, c                                       ; $6c2d: $41
    ld b, $4b                                     ; $6c2e: $06 $4b
    nop                                           ; $6c30: $00
    dec b                                         ; $6c31: $05
    sub e                                         ; $6c32: $93

jr_073_6c33:
    rst $38                                       ; $6c33: $ff
    ldh [$94], a                                  ; $6c34: $e0 $94
    and e                                         ; $6c36: $a3
    ldh [$7e], a                                  ; $6c37: $e0 $7e
    ld b, c                                       ; $6c39: $41
    ccf                                           ; $6c3a: $3f
    ld b, c                                       ; $6c3b: $41
    add d                                         ; $6c3c: $82
    call nz, $0680                                ; $6c3d: $c4 $80 $06
    ld e, $f2                                     ; $6c40: $1e $f2
    ld [bc], a                                    ; $6c42: $02
    sbc c                                         ; $6c43: $99
    ld b, $06                                     ; $6c44: $06 $06
    sub a                                         ; $6c46: $97
    push hl                                       ; $6c47: $e5
    jr nz, @-$3e                                  ; $6c48: $20 $c0

    jr nz, @-$40                                  ; $6c4a: $20 $be

    add b                                         ; $6c4c: $80
    ld [$20ae], sp                                ; $6c4d: $08 $ae $20
    ld c, $a0                                     ; $6c50: $0e $a0
    add l                                         ; $6c52: $85
    ld bc, $c905                                  ; $6c53: $01 $05 $c9
    ret nz                                        ; $6c56: $c0

    add d                                         ; $6c57: $82
    ld [c], a                                     ; $6c58: $e2
    db $eb                                        ; $6c59: $eb
    ld b, b                                       ; $6c5a: $40
    jp $c120                                      ; $6c5b: $c3 $20 $c1


    sbc b                                         ; $6c5e: $98
    add d                                         ; $6c5f: $82
    ld h, c                                       ; $6c60: $61
    sbc b                                         ; $6c61: $98
    ld b, b                                       ; $6c62: $40
    rst $38                                       ; $6c63: $ff
    ld h, c                                       ; $6c64: $61
    ld a, [$c726]                                 ; $6c65: $fa $26 $c7
    ld [bc], a                                    ; $6c68: $02

jr_073_6c69:
    sbc c                                         ; $6c69: $99
    ld [$0543], sp                                ; $6c6a: $08 $43 $05
    sbc c                                         ; $6c6d: $99
    cp h                                          ; $6c6e: $bc
    ld b, d                                       ; $6c6f: $42
    cp [hl]                                       ; $6c70: $be
    add c                                         ; $6c71: $81
    ld l, [hl]                                    ; $6c72: $6e
    jr nz, jr_073_6c33                            ; $6c73: $20 $be

    pop bc                                        ; $6c75: $c1
    ld b, b                                       ; $6c76: $40
    ld h, [hl]                                    ; $6c77: $66
    jr nz, jr_073_6c95                            ; $6c78: $20 $1b

    ld [bc], a                                    ; $6c7a: $02
    rrca                                          ; $6c7b: $0f
    ret                                           ; $6c7c: $c9


    ret nz                                        ; $6c7d: $c0

    sub h                                         ; $6c7e: $94
    sub l                                         ; $6c7f: $95
    ld b, $c0                                     ; $6c80: $06 $c0
    ld b, l                                       ; $6c82: $45
    ld h, c                                       ; $6c83: $61
    ld a, [de]                                    ; $6c84: $1a
    ld b, e                                       ; $6c85: $43
    jr @-$6b                                      ; $6c86: $18 $93

    ld b, e                                       ; $6c88: $43
    cp l                                          ; $6c89: $bd
    ld b, [hl]                                    ; $6c8a: $46
    ld b, c                                       ; $6c8b: $41
    ld b, d                                       ; $6c8c: $42
    sbc c                                         ; $6c8d: $99
    ld de, $42e5                                  ; $6c8e: $11 $e5 $42
    inc h                                         ; $6c91: $24
    ld h, b                                       ; $6c92: $60
    ld a, a                                       ; $6c93: $7f
    and b                                         ; $6c94: $a0

jr_073_6c95:
    or $2e                                        ; $6c95: $f6 $2e
    jr nz, jr_073_6cde                            ; $6c97: $20 $45

    ld [hl], $d1                                  ; $6c99: $36 $d1
    ld h, e                                       ; $6c9b: $63
    ld b, [hl]                                    ; $6c9c: $46
    ld [bc], a                                    ; $6c9d: $02
    dec c                                         ; $6c9e: $0d
    ld bc, $008f                                  ; $6c9f: $01 $8f $00
    sub [hl]                                      ; $6ca2: $96
    dec c                                         ; $6ca3: $0d
    ld [bc], a                                    ; $6ca4: $02
    add a                                         ; $6ca5: $87
    ret nz                                        ; $6ca6: $c0

    ld h, [hl]                                    ; $6ca7: $66
    and b                                         ; $6ca8: $a0
    dec b                                         ; $6ca9: $05
    ld h, b                                       ; $6caa: $60
    cp e                                          ; $6cab: $bb
    ld de, $56bc                                  ; $6cac: $11 $bc $56
    inc bc                                        ; $6caf: $03
    dec a                                         ; $6cb0: $3d
    daa                                           ; $6cb1: $27
    pop bc                                        ; $6cb2: $c1
    jp $a711                                      ; $6cb3: $c3 $11 $a7


    ld h, c                                       ; $6cb6: $61
    cp h                                          ; $6cb7: $bc
    ld [hl+], a                                   ; $6cb8: $22
    sbc c                                         ; $6cb9: $99
    inc bc                                        ; $6cba: $03
    ld bc, $9145                                  ; $6cbb: $01 $45 $91
    inc b                                         ; $6cbe: $04
    ld b, e                                       ; $6cbf: $43
    ret nz                                        ; $6cc0: $c0

    ld l, h                                       ; $6cc1: $6c
    pop bc                                        ; $6cc2: $c1
    ld b, $60                                     ; $6cc3: $06 $60
    add a                                         ; $6cc5: $87
    and e                                         ; $6cc6: $a3
    ld b, e                                       ; $6cc7: $43
    inc l                                         ; $6cc8: $2c
    call nz, Call_000_0221                        ; $6cc9: $c4 $21 $02
    pop bc                                        ; $6ccc: $c1
    jp nz, $6708                                  ; $6ccd: $c2 $08 $67

    ld h, b                                       ; $6cd0: $60
    cp h                                          ; $6cd1: $bc
    ld hl, $00bf                                  ; $6cd2: $21 $bf $00
    rst $38                                       ; $6cd5: $ff
    push af                                       ; $6cd6: $f5
    dec b                                         ; $6cd7: $05
    ld h, c                                       ; $6cd8: $61
    add [hl]                                      ; $6cd9: $86
    ld a, [bc]                                    ; $6cda: $0a
    ld a, [hl]                                    ; $6cdb: $7e
    rlca                                          ; $6cdc: $07
    inc h                                         ; $6cdd: $24

jr_073_6cde:
    cp a                                          ; $6cde: $bf
    ret nz                                        ; $6cdf: $c0

    sbc d                                         ; $6ce0: $9a
    sub a                                         ; $6ce1: $97

Jump_073_6ce2:
    ld b, $06                                     ; $6ce2: $06 $06
    jr z, jr_073_6c69                             ; $6ce4: $28 $83

    cp [hl]                                       ; $6ce6: $be
    jr nz, jr_073_6d49                            ; $6ce7: $20 $60

    ld b, l                                       ; $6ce9: $45
    ld b, c                                       ; $6cea: $41
    ld b, c                                       ; $6ceb: $41
    scf                                           ; $6cec: $37
    scf                                           ; $6ced: $37
    db $fc                                        ; $6cee: $fc
    rst $28                                       ; $6cef: $ef
    ld b, l                                       ; $6cf0: $45
    ret c                                         ; $6cf1: $d8

    ld h, [hl]                                    ; $6cf2: $66
    db $e4                                        ; $6cf3: $e4
    jp $804b                                      ; $6cf4: $c3 $4b $80


    pop bc                                        ; $6cf7: $c1
    pop bc                                        ; $6cf8: $c1
    jp nz, $c042                                  ; $6cf9: $c2 $42 $c0

    dec b                                         ; $6cfc: $05
    sbc c                                         ; $6cfd: $99
    call c, Call_000_0167                         ; $6cfe: $dc $67 $01
    ld a, [hl]                                    ; $6d01: $7e
    ld b, c                                       ; $6d02: $41
    ld b, d                                       ; $6d03: $42
    sbc [hl]                                      ; $6d04: $9e
    ld h, h                                       ; $6d05: $64
    rst $38                                       ; $6d06: $ff
    ldh a, [$9f]                                  ; $6d07: $f0 $9f
    ld b, d                                       ; $6d09: $42
    ret nz                                        ; $6d0a: $c0

    inc b                                         ; $6d0b: $04
    jp Jump_000_0f80                              ; $6d0c: $c3 $80 $0f


    ld b, d                                       ; $6d0f: $42
    and b                                         ; $6d10: $a0
    ld b, d                                       ; $6d11: $42
    jp nz, Jump_000_213e                          ; $6d12: $c2 $3e $21

    nop                                           ; $6d15: $00
    add b                                         ; $6d16: $80
    xor b                                         ; $6d17: $a8
    ld b, b                                       ; $6d18: $40
    ld e, a                                       ; $6d19: $5f
    ld l, c                                       ; $6d1a: $69
    sbc l                                         ; $6d1b: $9d
    dec [hl]                                      ; $6d1c: $35
    dec [hl]                                      ; $6d1d: $35
    sbc l                                         ; $6d1e: $9d
    db $fc                                        ; $6d1f: $fc

Jump_073_6d20:
    db $ed                                        ; $6d20: $ed
    ld l, d                                       ; $6d21: $6a
    ld [hl], d                                    ; $6d22: $72
    ret nz                                        ; $6d23: $c0

    ld b, b                                       ; $6d24: $40
    pop bc                                        ; $6d25: $c1
    ld [bc], a                                    ; $6d26: $02
    add b                                         ; $6d27: $80
    ld c, $c2                                     ; $6d28: $0e $c2
    nop                                           ; $6d2a: $00
    ld b, d                                       ; $6d2b: $42
    jp nz, Jump_000_213e                          ; $6d2c: $c2 $3e $21

    ld a, [hl]                                    ; $6d2f: $7e
    ld b, b                                       ; $6d30: $40
    xor c                                         ; $6d31: $a9
    inc bc                                        ; $6d32: $03
    inc hl                                        ; $6d33: $23
    ld c, $fc                                     ; $6d34: $0e $fc
    db $ed                                        ; $6d36: $ed
    ld l, d                                       ; $6d37: $6a
    ld b, d                                       ; $6d38: $42
    xor b                                         ; $6d39: $a8
    pop bc                                        ; $6d3a: $c1
    ld [bc], a                                    ; $6d3b: $02
    ld b, e                                       ; $6d3c: $43
    db $ec                                        ; $6d3d: $ec
    call nz, $8180                                ; $6d3e: $c4 $80 $81
    ret nz                                        ; $6d41: $c0

    ld a, h                                       ; $6d42: $7c
    ld b, d                                       ; $6d43: $42
    jp nz, Jump_000_03bc                          ; $6d44: $c2 $bc $03

    sbc e                                         ; $6d47: $9b
    ld b, [hl]                                    ; $6d48: $46

jr_073_6d49:
    ld b, b                                       ; $6d49: $40
    ld l, e                                       ; $6d4a: $6b
    ld [hl], c                                    ; $6d4b: $71
    rst $38                                       ; $6d4c: $ff
    ldh a, [rNR44]                                ; $6d4d: $f0 $23
    ld l, l                                       ; $6d4f: $6d
    ld b, b                                       ; $6d50: $40
    dec b                                         ; $6d51: $05
    and d                                         ; $6d52: $a2
    add b                                         ; $6d53: $80
    ret nc                                        ; $6d54: $d0

    adc d                                         ; $6d55: $8a
    and c                                         ; $6d56: $a1
    ld de, $e002                                  ; $6d57: $11 $02 $e0
    ld l, d                                       ; $6d5a: $6a
    ld hl, $7e7e                                  ; $6d5b: $21 $7e $7e
    ld b, c                                       ; $6d5e: $41
    ld b, l                                       ; $6d5f: $45
    xor b                                         ; $6d60: $a8
    dec a                                         ; $6d61: $3d
    jr c, jr_073_6d9c                             ; $6d62: $38 $38

    dec a                                         ; $6d64: $3d
    db $fc                                        ; $6d65: $fc
    db $ed                                        ; $6d66: $ed
    sbc e                                         ; $6d67: $9b
    scf                                           ; $6d68: $37
    ld b, l                                       ; $6d69: $45
    add e                                         ; $6d6a: $83
    ld bc, $bebd                                  ; $6d6b: $01 $bd $be
    add b                                         ; $6d6e: $80
    rst $08                                       ; $6d6f: $cf
    ld b, [hl]                                    ; $6d70: $46
    ld bc, $0911                                  ; $6d71: $01 $11 $09
    sbc c                                         ; $6d74: $99
    ld b, b                                       ; $6d75: $40
    ld [bc], a                                    ; $6d76: $02
    ld a, [hl]                                    ; $6d77: $7e
    ld b, e                                       ; $6d78: $43
    xor c                                         ; $6d79: $a9
    inc bc                                        ; $6d7a: $03
    jp nz, $edfc                                  ; $6d7b: $c2 $fc $ed

    ld e, [hl]                                    ; $6d7e: $5e
    and $43                                       ; $6d7f: $e6 $43
    ld [$800c], a                                 ; $6d81: $ea $0c $80
    ret nz                                        ; $6d84: $c0

    ld b, [hl]                                    ; $6d85: $46
    ld bc, $9a11                                  ; $6d86: $01 $11 $9a
    ld l, $83                                     ; $6d89: $2e $83
    ld a, [hl]                                    ; $6d8b: $7e
    ld b, c                                       ; $6d8c: $41
    rst $30                                       ; $6d8d: $f7
    ld h, b                                       ; $6d8e: $60
    cp $e1                                        ; $6d8f: $fe $e1
    nop                                           ; $6d91: $00
    ld [hl], l                                    ; $6d92: $75
    add d                                         ; $6d93: $82
    dec c                                         ; $6d94: $0d
    and b                                         ; $6d95: $a0
    cp $e5                                        ; $6d96: $fe $e5
    add d                                         ; $6d98: $82
    ldh [$86], a                                  ; $6d99: $e0 $86
    ld b, c                                       ; $6d9b: $41

jr_073_6d9c:
    add [hl]                                      ; $6d9c: $86
    ld l, c                                       ; $6d9d: $69
    add a                                         ; $6d9e: $87
    ld b, e                                       ; $6d9f: $43
    or d                                          ; $6da0: $b2
    ld h, c                                       ; $6da1: $61
    pop af                                        ; $6da2: $f1
    ld de, $44ae                                  ; $6da3: $11 $ae $44
    and d                                         ; $6da6: $a2
    add d                                         ; $6da7: $82
    inc hl                                        ; $6da8: $23
    ld [bc], a                                    ; $6da9: $02
    ld b, [hl]                                    ; $6daa: $46
    sbc e                                         ; $6dab: $9b
    adc a                                         ; $6dac: $8f
    ld b, [hl]                                    ; $6dad: $46
    inc bc                                        ; $6dae: $03
    ld b, [hl]                                    ; $6daf: $46
    adc a                                         ; $6db0: $8f
    inc sp                                        ; $6db1: $33
    and e                                         ; $6db2: $a3
    ld b, a                                       ; $6db3: $47
    and d                                         ; $6db4: $a2
    ldh [rSCX], a                                 ; $6db5: $e0 $43
    add [hl]                                      ; $6db7: $86
    ld l, d                                       ; $6db8: $6a
    cp l                                          ; $6db9: $bd
    ld b, e                                       ; $6dba: $43
    ld [$e1c1], sp                                ; $6dbb: $08 $c1 $e1
    ld de, $0471                                  ; $6dbe: $11 $71 $04
    ld a, [hl]                                    ; $6dc1: $7e
    and c                                         ; $6dc2: $a1
    ld h, e                                       ; $6dc3: $63
    ld h, c                                       ; $6dc4: $61
    ld hl, sp-$80                                 ; $6dc5: $f8 $80
    sbc c                                         ; $6dc7: $99
    adc [hl]                                      ; $6dc8: $8e
    ld b, [hl]                                    ; $6dc9: $46
    rlca                                          ; $6dca: $07
    ld b, [hl]                                    ; $6dcb: $46
    adc [hl]                                      ; $6dcc: $8e
    sbc c                                         ; $6dcd: $99
    add $e7                                       ; $6dce: $c6 $e7
    ldh [rSCY], a                                 ; $6dd0: $e0 $42
    add [hl]                                      ; $6dd2: $86
    ld l, e                                       ; $6dd3: $6b
    dec a                                         ; $6dd4: $3d
    inc hl                                        ; $6dd5: $23
    nop                                           ; $6dd6: $00
    nop                                           ; $6dd7: $00
    nop                                           ; $6dd8: $00
    ccf                                           ; $6dd9: $3f
    dec c                                         ; $6dda: $0d
    dec c                                         ; $6ddb: $0d
    dec c                                         ; $6ddc: $0d
    ld c, $0e                                     ; $6ddd: $0e $0e
    ld c, $fa                                     ; $6ddf: $0e $fa
    and $f3                                       ; $6de1: $e6 $f3
    pop hl                                        ; $6de3: $e1
    ld b, $f0                                     ; $6de4: $06 $f0
    pop hl                                        ; $6de6: $e1
    inc c                                         ; $6de7: $0c
    dec l                                         ; $6de8: $2d
    jp hl                                         ; $6de9: $e9


    ldh [$fd], a                                  ; $6dea: $e0 $fd
    db $e4                                        ; $6dec: $e4
    db $fc                                        ; $6ded: $fc
    db $ed                                        ; $6dee: $ed
    ret nc                                        ; $6def: $d0

    jp hl                                         ; $6df0: $e9


    pop de                                        ; $6df1: $d1
    db $e3                                        ; $6df2: $e3
    inc b                                         ; $6df3: $04
    ld a, [$c2e5]                                 ; $6df4: $fa $e5 $c2
    push hl                                       ; $6df7: $e5
    dec c                                         ; $6df8: $0d
    ret nz                                        ; $6df9: $c0

    db $e4                                        ; $6dfa: $e4
    rst $18                                       ; $6dfb: $df
    xor $dd                                       ; $6dfc: $ee $dd
    and $fa                                       ; $6dfe: $e6 $fa
    di                                            ; $6e00: $f3
    sub d                                         ; $6e01: $92
    push hl                                       ; $6e02: $e5
    cp a                                          ; $6e03: $bf
    ld c, l                                       ; $6e04: $4d
    ld l, l                                       ; $6e05: $6d
    inc c                                         ; $6e06: $0c
    ld c, l                                       ; $6e07: $4d
    dec c                                         ; $6e08: $0d
    ld c, l                                       ; $6e09: $4d
    rst $38                                       ; $6e0a: $ff
    pop hl                                        ; $6e0b: $e1
    dec l                                         ; $6e0c: $2d
    ldh [$b8], a                                  ; $6e0d: $e0 $b8
    db $e3                                        ; $6e0f: $e3
    add d                                         ; $6e10: $82
    db $eb                                        ; $6e11: $eb
    xor l                                         ; $6e12: $ad
    db $ed                                        ; $6e13: $ed
    ld [hl], e                                    ; $6e14: $73
    jp hl                                         ; $6e15: $e9


    inc a                                         ; $6e16: $3c
    pop hl                                        ; $6e17: $e1
    ld l, l                                       ; $6e18: $6d
    dec c                                         ; $6e19: $0d
    dec bc                                        ; $6e1a: $0b
    rst $38                                       ; $6e1b: $ff
    inc c                                         ; $6e1c: $0c
    dec bc                                        ; $6e1d: $0b
    dec hl                                        ; $6e1e: $2b
    ld a, [bc]                                    ; $6e1f: $0a
    ld l, d                                       ; $6e20: $6a
    dec bc                                        ; $6e21: $0b
    dec bc                                        ; $6e22: $0b
    dec bc                                        ; $6e23: $0b
    rlca                                          ; $6e24: $07
    dec c                                         ; $6e25: $0d
    ld c, l                                       ; $6e26: $4d
    dec l                                         ; $6e27: $2d
    ld a, $e7                                     ; $6e28: $3e $e7
    ld h, d                                       ; $6e2a: $62
    and $0d                                       ; $6e2b: $e6 $0d
    add sp, -$47                                  ; $6e2d: $e8 $b9
    jp hl                                         ; $6e2f: $e9


    ld hl, sp-$3e                                 ; $6e30: $f8 $c2
    add hl, sp                                    ; $6e32: $39
    ld c, l                                       ; $6e33: $4d
    pop bc                                        ; $6e34: $c1
    ldh [$c0], a                                  ; $6e35: $e0 $c0
    pop hl                                        ; $6e37: $e1
    ld c, d                                       ; $6e38: $4a
    ld c, d                                       ; $6e39: $4a
    ld a, [hl+]                                   ; $6e3a: $2a
    ret nz                                        ; $6e3b: $c0

    pop hl                                        ; $6e3c: $e1
    cp a                                          ; $6e3d: $bf
    ldh [$d0], a                                  ; $6e3e: $e0 $d0
    db $eb                                        ; $6e40: $eb
    pop hl                                        ; $6e41: $e1
    halt                                          ; $6e42: $76
    db $ec                                        ; $6e43: $ec
    ccf                                           ; $6e44: $3f
    or $84                                        ; $6e45: $f6 $84
    pop hl                                        ; $6e47: $e1
    dec bc                                        ; $6e48: $0b
    db $fd                                        ; $6e49: $fd
    ldh [$0c], a                                  ; $6e4a: $e0 $0c
    inc c                                         ; $6e4c: $0c
    inc hl                                        ; $6e4d: $23
    ld a, [bc]                                    ; $6e4e: $0a
    ld a, [bc]                                    ; $6e4f: $0a
    add c                                         ; $6e50: $81
    ldh [$f4], a                                  ; $6e51: $e0 $f4
    pop hl                                        ; $6e53: $e1
    dec sp                                        ; $6e54: $3b
    ldh [$6d], a                                  ; $6e55: $e0 $6d

jr_073_6e57:
    push af                                       ; $6e57: $f5
    pop hl                                        ; $6e58: $e1
    halt                                          ; $6e59: $76
    pop hl                                        ; $6e5a: $e1
    ldh a, [rSCX]                                 ; $6e5b: $f0 $43
    rst $30                                       ; $6e5d: $f7
    ret z                                         ; $6e5e: $c8

    call nz, $e084                                ; $6e5f: $c4 $84 $e0
    cp a                                          ; $6e62: $bf
    ldh [$0b], a                                  ; $6e63: $e0 $0b
    dec bc                                        ; $6e65: $0b
    ld l, h                                       ; $6e66: $6c
    inc c                                         ; $6e67: $0c
    ld bc, $c02a                                  ; $6e68: $01 $2a $c0
    db $e3                                        ; $6e6b: $e3
    or d                                          ; $6e6c: $b2
    ld [c], a                                     ; $6e6d: $e2
    or [hl]                                       ; $6e6e: $b6
    db $e3                                        ; $6e6f: $e3
    halt                                          ; $6e70: $76
    ldh [$5a], a                                  ; $6e71: $e0 $5a
    and $80                                       ; $6e73: $e6 $80
    call $c548                                    ; $6e75: $cd $48 $c5
    ld a, h                                       ; $6e78: $7c
    ld c, a                                       ; $6e79: $4f
    ldh [$7f], a                                  ; $6e7a: $e0 $7f
    ld [c], a                                     ; $6e7c: $e2
    ld l, h                                       ; $6e7d: $6c
    inc l                                         ; $6e7e: $2c
    ld l, e                                       ; $6e7f: $6b
    dec hl                                        ; $6e80: $2b
    dec bc                                        ; $6e81: $0b
    db $fc                                        ; $6e82: $fc
    ret nz                                        ; $6e83: $c0

    ld a, $c0                                     ; $6e84: $3e $c0
    db $e3                                        ; $6e86: $e3
    dec c                                         ; $6e87: $0d

jr_073_6e88:
    inc l                                         ; $6e88: $2c
    inc c                                         ; $6e89: $0c
    inc l                                         ; $6e8a: $2c
    inc l                                         ; $6e8b: $2c
    halt                                          ; $6e8c: $76
    ldh [$7e], a                                  ; $6e8d: $e0 $7e
    and $f0                                       ; $6e8f: $e6 $f0
    ld l, c                                       ; $6e91: $69
    pop de                                        ; $6e92: $d1
    jr jr_073_6e57                                ; $6e93: $18 $c2

    pop de                                        ; $6e95: $d1
    db $e3                                        ; $6e96: $e3
    rst $38                                       ; $6e97: $ff
    jp nz, Jump_073_4b4b                          ; $6e98: $c2 $4b $4b

    ld l, e                                       ; $6e9b: $6b
    ld l, e                                       ; $6e9c: $6b
    ld h, l                                       ; $6e9d: $65
    ld c, d                                       ; $6e9e: $4a
    dec sp                                        ; $6e9f: $3b
    ld [c], a                                     ; $6ea0: $e2
    dec c                                         ; $6ea1: $0d
    ret nz                                        ; $6ea2: $c0

    ldh [$bf], a                                  ; $6ea3: $e0 $bf
    ldh [$0b], a                                  ; $6ea5: $e0 $0b
    dec bc                                        ; $6ea7: $0b
    push af                                       ; $6ea8: $f5
    ret nz                                        ; $6ea9: $c0

    inc c                                         ; $6eaa: $0c
    ld a, d                                       ; $6eab: $7a
    ret nc                                        ; $6eac: $d0

    or [hl]                                       ; $6ead: $b6
    ret z                                         ; $6eae: $c8

    ld c, l                                       ; $6eaf: $4d
    dec l                                         ; $6eb0: $2d
    ld [bc], a                                    ; $6eb1: $02
    pop hl                                        ; $6eb2: $e1
    xor h                                         ; $6eb3: $ac
    and b                                         ; $6eb4: $a0
    jp nc, $80e0                                  ; $6eb5: $d2 $e0 $80

    ldh [$b7], a                                  ; $6eb8: $e0 $b7
    dec bc                                        ; $6eba: $0b
    ld a, [bc]                                    ; $6ebb: $0a
    ld c, e                                       ; $6ebc: $4b
    rst $00                                       ; $6ebd: $c7
    pop hl                                        ; $6ebe: $e1
    dec c                                         ; $6ebf: $0d
    inc c                                         ; $6ec0: $0c
    rst $38                                       ; $6ec1: $ff
    pop hl                                        ; $6ec2: $e1
    inc l                                         ; $6ec3: $2c
    pop bc                                        ; $6ec4: $c1
    inc c                                         ; $6ec5: $0c
    db $fd                                        ; $6ec6: $fd
    ret nz                                        ; $6ec7: $c0

    ld e, h                                       ; $6ec8: $5c
    call nz, $d180                                ; $6ec9: $c4 $80 $d1
    add b                                         ; $6ecc: $80
    and e                                         ; $6ecd: $a3
    ret nz                                        ; $6ece: $c0

    db $e3                                        ; $6ecf: $e3
    dec bc                                        ; $6ed0: $0b
    inc l                                         ; $6ed1: $2c
    inc sp                                        ; $6ed2: $33
    ld c, h                                       ; $6ed3: $4c
    dec hl                                        ; $6ed4: $2b
    ret nz                                        ; $6ed5: $c0

    pop hl                                        ; $6ed6: $e1
    or a                                          ; $6ed7: $b7
    ret nz                                        ; $6ed8: $c0

    inc l                                         ; $6ed9: $2c
    inc l                                         ; $6eda: $2c
    add e                                         ; $6edb: $83
    ldh [$fe], a                                  ; $6edc: $e0 $fe
    db $e3                                        ; $6ede: $e3
    ld [hl], b                                    ; $6edf: $70
    cp h                                          ; $6ee0: $bc
    pop bc                                        ; $6ee1: $c1
    add d                                         ; $6ee2: $82
    reti                                          ; $6ee3: $d9


    jr c, jr_073_6e88                             ; $6ee4: $38 $a2

    adc h                                         ; $6ee6: $8c
    jp nz, $0c2c                                  ; $6ee7: $c2 $2c $0c

    ld c, h                                       ; $6eea: $4c
    jp nz, Jump_000_00c4                          ; $6eeb: $c2 $c4 $00

    call nz, Call_073_7fe5                        ; $6eee: $c4 $e5 $7f
    pop hl                                        ; $6ef1: $e1
    ld a, e                                       ; $6ef2: $7b
    jp nz, $ad4d                                  ; $6ef3: $c2 $4d $ad

    add b                                         ; $6ef6: $80
    add $00                                       ; $6ef7: $c6 $00
    call nz, $c24a                                ; $6ef9: $c4 $4a $c2
    add c                                         ; $6efc: $81
    ldh [$82], a                                  ; $6efd: $e0 $82
    ret nz                                        ; $6eff: $c0

    rst $28                                       ; $6f00: $ef
    ld c, h                                       ; $6f01: $4c
    daa                                           ; $6f02: $27
    pop bc                                        ; $6f03: $c1
    ld a, [c]                                     ; $6f04: $f2
    and c                                         ; $6f05: $a1
    or c                                          ; $6f06: $b1
    and l                                         ; $6f07: $a5
    add b                                         ; $6f08: $80
    ret nc                                        ; $6f09: $d0

    add c                                         ; $6f0a: $81
    db $e3                                        ; $6f0b: $e3
    dec bc                                        ; $6f0c: $0b
    ld l, c                                       ; $6f0d: $69
    inc c                                         ; $6f0e: $0c
    ret nz                                        ; $6f0f: $c0

    db $e3                                        ; $6f10: $e3
    ld a, l                                       ; $6f11: $7d
    ret nz                                        ; $6f12: $c0

    ld l, h                                       ; $6f13: $6c
    ld a, a                                       ; $6f14: $7f
    and $6c                                       ; $6f15: $e6 $6c
    ld c, h                                       ; $6f17: $4c
    dec h                                         ; $6f18: $25
    pop bc                                        ; $6f19: $c1
    ret nc                                        ; $6f1a: $d0

    xor b                                         ; $6f1b: $a8
    add h                                         ; $6f1c: $84
    jp hl                                         ; $6f1d: $e9


    sub d                                         ; $6f1e: $92
    ld b, l                                       ; $6f1f: $45
    and e                                         ; $6f20: $a3
    sub c                                         ; $6f21: $91
    pop bc                                        ; $6f22: $c1
    inc l                                         ; $6f23: $2c
    add c                                         ; $6f24: $81
    push hl                                       ; $6f25: $e5
    dec bc                                        ; $6f26: $0b
    ld l, h                                       ; $6f27: $6c
    pop bc                                        ; $6f28: $c1
    ld c, h                                       ; $6f29: $4c
    ld b, c                                       ; $6f2a: $41
    rst $20                                       ; $6f2b: $e7
    and $a1                                       ; $6f2c: $e6 $a1
    ret nz                                        ; $6f2e: $c0

    ldh a, [$36]                                  ; $6f2f: $f0 $36
    and [hl]                                      ; $6f31: $a6
    pop bc                                        ; $6f32: $c1
    and l                                         ; $6f33: $a5
    dec c                                         ; $6f34: $0d
    inc l                                         ; $6f35: $2c
    rst $30                                       ; $6f36: $f7
    ld c, h                                       ; $6f37: $4c
    ld l, e                                       ; $6f38: $6b
    ld l, e                                       ; $6f39: $6b
    add d                                         ; $6f3a: $82
    and d                                         ; $6f3b: $a2
    ld c, e                                       ; $6f3c: $4b
    dec bc                                        ; $6f3d: $0b
    dec bc                                        ; $6f3e: $0b
    ld c, h                                       ; $6f3f: $4c
    nop                                           ; $6f40: $00
    rst $38                                       ; $6f41: $ff
    ldh [$80], a                                  ; $6f42: $e0 $80
    jp $e100                                      ; $6f44: $c3 $00 $e1


    db $e4                                        ; $6f47: $e4
    add b                                         ; $6f48: $80
    add b                                         ; $6f49: $80
    push de                                       ; $6f4a: $d5
    ld bc, $81c2                                  ; $6f4b: $01 $c2 $81
    and d                                         ; $6f4e: $a2
    dec d                                         ; $6f4f: $15
    pop hl                                        ; $6f50: $e1
    ld b, $c0                                     ; $6f51: $06 $c0
    ld [c], a                                     ; $6f53: $e2
    ld l, e                                       ; $6f54: $6b
    ld c, e                                       ; $6f55: $4b
    add d                                         ; $6f56: $82
    and d                                         ; $6f57: $a2
    cp [hl]                                       ; $6f58: $be
    db $e4                                        ; $6f59: $e4
    rst $38                                       ; $6f5a: $ff
    and b                                         ; $6f5b: $a0
    ld h, b                                       ; $6f5c: $60
    and d                                         ; $6f5d: $a2
    dec a                                         ; $6f5e: $3d
    sub h                                         ; $6f5f: $94
    ld c, $c1                                     ; $6f60: $0e $c1
    and [hl]                                      ; $6f62: $a6
    inc l                                         ; $6f63: $2c
    inc c                                         ; $6f64: $0c
    ld l, h                                       ; $6f65: $6c
    dec a                                         ; $6f66: $3d
    pop bc                                        ; $6f67: $c1
    ld bc, $f4e2                                  ; $6f68: $01 $e2 $f4
    add b                                         ; $6f6b: $80
    ld [hl], a                                    ; $6f6c: $77
    add c                                         ; $6f6d: $81
    add e                                         ; $6f6e: $83
    ld c, h                                       ; $6f6f: $4c
    ld c, h                                       ; $6f70: $4c
    ld a, [hl-]                                   ; $6f71: $3a
    ret nz                                        ; $6f72: $c0

Call_073_6f73:
    ld l, l                                       ; $6f73: $6d
    ret nz                                        ; $6f74: $c0

    or h                                          ; $6f75: $b4
    add c                                         ; $6f76: $81
    ld b, e                                       ; $6f77: $43
    or $c1                                        ; $6f78: $f6 $c1
    and l                                         ; $6f7a: $a5
    inc l                                         ; $6f7b: $2c
    ld c, b                                       ; $6f7c: $48
    sub a                                         ; $6f7d: $97
    ret nz                                        ; $6f7e: $c0

    dec bc                                        ; $6f7f: $0b
    and l                                         ; $6f80: $a5
    cp h                                          ; $6f81: $bc
    and c                                         ; $6f82: $a1
    ld a, [bc]                                    ; $6f83: $0a
    ld [hl], a                                    ; $6f84: $77
    add b                                         ; $6f85: $80
    inc a                                         ; $6f86: $3c
    ldh [$6c], a                                  ; $6f87: $e0 $6c
    ret nz                                        ; $6f89: $c0

    and $20                                       ; $6f8a: $e6 $20
    nop                                           ; $6f8c: $00
    or b                                          ; $6f8d: $b0
    add d                                         ; $6f8e: $82
    ld h, h                                       ; $6f8f: $64
    add b                                         ; $6f90: $80
    and b                                         ; $6f91: $a0
    inc b                                         ; $6f92: $04
    add b                                         ; $6f93: $80
    sub a                                         ; $6f94: $97
    ret nz                                        ; $6f95: $c0

    dec hl                                        ; $6f96: $2b
    cp a                                          ; $6f97: $bf
    rst $20                                       ; $6f98: $e7
    db $fc                                        ; $6f99: $fc
    ret nz                                        ; $6f9a: $c0

    adc [hl]                                      ; $6f9b: $8e
    or h                                          ; $6f9c: $b4
    and b                                         ; $6f9d: $a0
    ld c, h                                       ; $6f9e: $4c
    ld c, h                                       ; $6f9f: $4c
    ld l, h                                       ; $6fa0: $6c
    ld a, h                                       ; $6fa1: $7c
    adc b                                         ; $6fa2: $88
    ld a, d                                       ; $6fa3: $7a
    ld [hl], d                                    ; $6fa4: $72
    nop                                           ; $6fa5: $00
    call nz, $2d0d                                ; $6fa6: $c4 $0d $2d
    inc c                                         ; $6fa9: $0c
    ccf                                           ; $6faa: $3f
    add b                                         ; $6fab: $80
    ld l, e                                       ; $6fac: $6b
    dec c                                         ; $6fad: $0d
    ccf                                           ; $6fae: $3f
    push bc                                       ; $6faf: $c5
    dec c                                         ; $6fb0: $0d
    ld [hl], a                                    ; $6fb1: $77
    and e                                         ; $6fb2: $a3
    ld a, d                                       ; $6fb3: $7a
    add h                                         ; $6fb4: $84
    jr nz, @-$4c                                  ; $6fb5: $20 $b2

    ld h, l                                       ; $6fb7: $65
    add b                                         ; $6fb8: $80
    ld l, a                                       ; $6fb9: $6f
    ret nz                                        ; $6fba: $c0

    push hl                                       ; $6fbb: $e5
    inc b                                         ; $6fbc: $04
    ld h, b                                       ; $6fbd: $60
    jp z, $2b60                                   ; $6fbe: $ca $60 $2b

    rst $38                                       ; $6fc1: $ff
    ldh [rSTAT], a                                ; $6fc2: $e0 $41
    add h                                         ; $6fc4: $84
    rra                                           ; $6fc5: $1f
    dec hl                                        ; $6fc6: $2b
    ld c, e                                       ; $6fc7: $4b

Jump_073_6fc8:
    ld l, e                                       ; $6fc8: $6b
    ld c, e                                       ; $6fc9: $4b
    ld l, e                                       ; $6fca: $6b
    ret nz                                        ; $6fcb: $c0

    db $ec                                        ; $6fcc: $ec
    nop                                           ; $6fcd: $00
    cp b                                          ; $6fce: $b8
    ld b, h                                       ; $6fcf: $44
    ld h, c                                       ; $6fd0: $61
    ld [$406b], sp                                ; $6fd1: $08 $6b $40
    pop bc                                        ; $6fd4: $c1
    push hl                                       ; $6fd5: $e5
    cp e                                          ; $6fd6: $bb
    and c                                         ; $6fd7: $a1
    dec hl                                        ; $6fd8: $2b
    inc [hl]                                      ; $6fd9: $34
    ld h, e                                       ; $6fda: $63
    add b                                         ; $6fdb: $80
    ld [c], a                                     ; $6fdc: $e2
    db $fd                                        ; $6fdd: $fd
    ld d, e                                       ; $6fde: $53
    adc b                                         ; $6fdf: $88

Jump_073_6fe0:
    ld b, [hl]                                    ; $6fe0: $46
    ld [hl], b                                    ; $6fe1: $70
    add c                                         ; $6fe2: $81
    ld h, c                                       ; $6fe3: $61
    ld b, b                                       ; $6fe4: $40
    ld [c], a                                     ; $6fe5: $e2
    nop                                           ; $6fe6: $00
    jp $c47b                                      ; $6fe7: $c3 $7b $c4


    dec bc                                        ; $6fea: $0b
    ld a, [bc]                                    ; $6feb: $0a
    ld a, [hl+]                                   ; $6fec: $2a
    or $a0                                        ; $6fed: $f6 $a0
    nop                                           ; $6fef: $00
    ld bc, $c3c6                                  ; $6ff0: $01 $c6 $c3
    ld d, d                                       ; $6ff3: $52
    ret nz                                        ; $6ff4: $c0

    and e                                         ; $6ff5: $a3
    call nz, $9781                                ; $6ff6: $c4 $81 $97
    and c                                         ; $6ff9: $a1
    add c                                         ; $6ffa: $81
    and $76                                       ; $6ffb: $e6 $76
    ret                                           ; $6ffd: $c9


    and [hl]                                      ; $6ffe: $a6
    ld b, b                                       ; $6fff: $40
    nop                                           ; $7000: $00
    adc l                                         ; $7001: $8d
    ld d, c                                       ; $7002: $51
    adc c                                         ; $7003: $89
    ld b, l                                       ; $7004: $45
    inc bc                                        ; $7005: $03
    ld h, e                                       ; $7006: $63
    ld b, c                                       ; $7007: $41
    pop bc                                        ; $7008: $c1
    ld b, d                                       ; $7009: $42
    and [hl]                                      ; $700a: $a6
    cp b                                          ; $700b: $b8
    call nz, $a3f7                                ; $700c: $c4 $f7 $a3
    and a                                         ; $700f: $a7
    ld b, c                                       ; $7010: $41
    jr nz, jr_073_7019                            ; $7011: $20 $06

    ld e, d                                       ; $7013: $5a
    inc bc                                        ; $7014: $03
    ld h, d                                       ; $7015: $62
    sbc b                                         ; $7016: $98
    add b                                         ; $7017: $80
    add h                                         ; $7018: $84

jr_073_7019:
    add h                                         ; $7019: $84
    add d                                         ; $701a: $82
    and b                                         ; $701b: $a0
    ld l, e                                       ; $701c: $6b
    ld [hl], $c0                                  ; $701d: $36 $c0
    or a                                          ; $701f: $b7
    and [hl]                                      ; $7020: $a6
    ret nz                                        ; $7021: $c0

    ld b, l                                       ; $7022: $45
    adc l                                         ; $7023: $8d
    add h                                         ; $7024: $84
    ld [$c5c2], a                                 ; $7025: $ea $c2 $c5
    sbc b                                         ; $7028: $98
    add b                                         ; $7029: $80
    ld b, l                                       ; $702a: $45
    add h                                         ; $702b: $84
    ld b, b                                       ; $702c: $40
    ld h, b                                       ; $702d: $60
    dec c                                         ; $702e: $0d
    ld c, e                                       ; $702f: $4b
    nop                                           ; $7030: $00
    ld [hl], d                                    ; $7031: $72
    ld b, b                                       ; $7032: $40
    or l                                          ; $7033: $b5
    add [hl]                                      ; $7034: $86
    ld l, l                                       ; $7035: $6d
    inc h                                         ; $7036: $24
    add b                                         ; $7037: $80
    ld l, a                                       ; $7038: $6f
    add $27                                       ; $7039: $c6 $27
    ld b, h                                       ; $703b: $44
    and d                                         ; $703c: $a2
    ld b, d                                       ; $703d: $42
    rst $20                                       ; $703e: $e7
    ld [hl], h                                    ; $703f: $74
    ld b, c                                       ; $7040: $41
    nop                                           ; $7041: $00
    scf                                           ; $7042: $37
    add $80                                       ; $7043: $c6 $80
    db $e4                                        ; $7045: $e4
    ld a, a                                       ; $7046: $7f
    ld [hl-], a                                   ; $7047: $32
    ld b, h                                       ; $7048: $44
    add $44                                       ; $7049: $c6 $44
    and b                                         ; $704b: $a0
    ld [bc], a                                    ; $704c: $02
    push hl                                       ; $704d: $e5
    call nz, $c0a1                                ; $704e: $c4 $a1 $c0
    ld [c], a                                     ; $7051: $e2
    nop                                           ; $7052: $00
    dec [hl]                                      ; $7053: $35
    add l                                         ; $7054: $85
    ld b, e                                       ; $7055: $43
    ld h, e                                       ; $7056: $63
    add b                                         ; $7057: $80
    ld [hl], d                                    ; $7058: $72
    call nz, Call_073_4866                        ; $7059: $c4 $66 $48
    ld h, c                                       ; $705c: $61
    jp nz, Jump_000_39c7                          ; $705d: $c2 $c7 $39

    add $f4                                       ; $7060: $c6 $f4
    ld b, e                                       ; $7062: $43
    nop                                           ; $7063: $00
    rst $38                                       ; $7064: $ff
    inc h                                         ; $7065: $24
    add hl, sp                                    ; $7066: $39
    push hl                                       ; $7067: $e5
    nop                                           ; $7068: $00
    ld c, h                                       ; $7069: $4c
    ret nz                                        ; $706a: $c0

    db $e3                                        ; $706b: $e3
    db $d3                                        ; $706c: $d3
    and $80                                       ; $706d: $e6 $80
    call nz, $c5f4                                ; $706f: $c4 $f4 $c5
    cp [hl]                                       ; $7072: $be
    inc l                                         ; $7073: $2c
    add b                                         ; $7074: $80
    add [hl]                                      ; $7075: $86
    ld de, $81c3                                  ; $7076: $11 $c3 $81
    sbc e                                         ; $7079: $9b
    ld b, b                                       ; $707a: $40
    add [hl]                                      ; $707b: $86
    and [hl]                                      ; $707c: $a6
    ld b, [hl]                                    ; $707d: $46
    push bc                                       ; $707e: $c5
    nop                                           ; $707f: $00
    rst $00                                       ; $7080: $c7
    cp l                                          ; $7081: $bd
    call nz, Call_073_790e                        ; $7082: $c4 $0e $79
    ld c, $35                                     ; $7085: $0e $35
    ld a, [hl+]                                   ; $7087: $2a
    add b                                         ; $7088: $80
    ld h, a                                       ; $7089: $67
    dec bc                                        ; $708a: $0b
    dec c                                         ; $708b: $0d
    ld l, h                                       ; $708c: $6c
    inc c                                         ; $708d: $0c
    rst $00                                       ; $708e: $c7
    add e                                         ; $708f: $83
    ld b, b                                       ; $7090: $40
    add h                                         ; $7091: $84
    db $e3                                        ; $7092: $e3
    ld a, l                                       ; $7093: $7d
    jr nz, @-$76                                  ; $7094: $20 $88

    and e                                         ; $7096: $a3
    xor $a5                                       ; $7097: $ee $a5
    nop                                           ; $7099: $00
    ld e, h                                       ; $709a: $5c
    ld [$2c20], sp                                ; $709b: $08 $20 $2c
    ret nz                                        ; $709e: $c0

    push hl                                       ; $709f: $e5
    add hl, bc                                    ; $70a0: $09
    dec hl                                        ; $70a1: $2b
    ld c, e                                       ; $70a2: $4b
    and b                                         ; $70a3: $a0
    dec a                                         ; $70a4: $3d
    jr nz, jr_073_7112                            ; $70a5: $20 $6b

    ld b, l                                       ; $70a7: $45
    db $e3                                        ; $70a8: $e3
    ld l, a                                       ; $70a9: $6f
    and h                                         ; $70aa: $a4
    ret nz                                        ; $70ab: $c0

    ld l, a                                       ; $70ac: $6f
    inc [hl]                                      ; $70ad: $34
    xor e                                         ; $70ae: $ab
    inc c                                         ; $70af: $0c
    inc bc                                        ; $70b0: $03
    and c                                         ; $70b1: $a1
    ld b, c                                       ; $70b2: $41
    and $2a                                       ; $70b3: $e6 $2a
    ld c, d                                       ; $70b5: $4a
    ld a, l                                       ; $70b6: $7d
    ld b, d                                       ; $70b7: $42
    dec sp                                        ; $70b8: $3b
    ld h, b                                       ; $70b9: $60
    rst $30                                       ; $70ba: $f7
    add [hl]                                      ; $70bb: $86
    cp l                                          ; $70bc: $bd
    xor a                                         ; $70bd: $af
    ld [hl], h                                    ; $70be: $74
    jp $8148                                      ; $70bf: $c3 $48 $81


    ld [hl+], a                                   ; $70c2: $22
    inc c                                         ; $70c3: $0c
    call Call_000_2bc4                            ; $70c4: $cd $c4 $2b
    dec bc                                        ; $70c7: $0b
    ld c, e                                       ; $70c8: $4b
    ld a, $01                                     ; $70c9: $3e $01
    rlca                                          ; $70cb: $07
    dec hl                                        ; $70cc: $2b
    ld a, [bc]                                    ; $70cd: $0a
    ld c, d                                       ; $70ce: $4a
    ld [hl], b                                    ; $70cf: $70
    ret                                           ; $70d0: $c9


    inc a                                         ; $70d1: $3c
    ld bc, $5200                                  ; $70d2: $01 $00 $52
    add d                                         ; $70d5: $82
    ld h, h                                       ; $70d6: $64
    ret nz                                        ; $70d7: $c0

    ld [c], a                                     ; $70d8: $e2
    ld a, $95                                     ; $70d9: $3e $95
    add d                                         ; $70db: $82
    dec hl                                        ; $70dc: $2b
    dec hl                                        ; $70dd: $2b
    ld c, e                                       ; $70de: $4b
    ld a, [hl+]                                   ; $70df: $2a
    ld a, [hl+]                                   ; $70e0: $2a
    rlca                                          ; $70e1: $07
    add b                                         ; $70e2: $80
    cp [hl]                                       ; $70e3: $be
    nop                                           ; $70e4: $00
    add b                                         ; $70e5: $80
    ld [hl], b                                    ; $70e6: $70
    ret                                           ; $70e7: $c9


    ld a, [hl]                                    ; $70e8: $7e
    ld [bc], a                                    ; $70e9: $02
    add d                                         ; $70ea: $82
    halt                                          ; $70eb: $76
    ld a, [hl]                                    ; $70ec: $7e
    ret nz                                        ; $70ed: $c0

    ld a, a                                       ; $70ee: $7f
    pop bc                                        ; $70ef: $c1
    ld [bc], a                                    ; $70f0: $02
    and h                                         ; $70f1: $a4
    ld a, $01                                     ; $70f2: $3e $01
    ld c, e                                       ; $70f4: $4b
    add c                                         ; $70f5: $81
    ld c, e                                       ; $70f6: $4b
    ld e, a                                       ; $70f7: $5f
    add b                                         ; $70f8: $80
    ld b, h                                       ; $70f9: $44
    add c                                         ; $70fa: $81
    ld a, [hl-]                                   ; $70fb: $3a
    ld h, c                                       ; $70fc: $61
    rst $38                                       ; $70fd: $ff
    jp $5700                                      ; $70fe: $c3 $00 $57


    ccf                                           ; $7101: $3f
    ld b, c                                       ; $7102: $41
    ld l, h                                       ; $7103: $6c
    jr nz, @+$41                                  ; $7104: $20 $3f

    ldh [rDIV], a                                 ; $7106: $e0 $04
    ld b, c                                       ; $7108: $41
    jp z, $ff60                                   ; $7109: $ca $60 $ff

    ld [hl+], a                                   ; $710c: $22
    cpl                                           ; $710d: $2f
    ld h, c                                       ; $710e: $61

jr_073_710f:
    dec c                                         ; $710f: $0d
    dec [hl]                                      ; $7110: $35
    nop                                           ; $7111: $00

jr_073_7112:
    cp c                                          ; $7112: $b9
    call nz, $8008                                ; $7113: $c4 $08 $80
    db $e3                                        ; $7116: $e3
    nop                                           ; $7117: $00
    ld d, e                                       ; $7118: $53
    rst $38                                       ; $7119: $ff
    ld [hl+], a                                   ; $711a: $22
    ld l, h                                       ; $711b: $6c
    ld a, [de]                                    ; $711c: $1a
    ld b, b                                       ; $711d: $40
    cp $c5                                        ; $711e: $fe $c5
    ld b, c                                       ; $7120: $41
    add c                                         ; $7121: $81
    cp a                                          ; $7122: $bf
    add c                                         ; $7123: $81
    inc b                                         ; $7124: $04
    ld a, [hl]                                    ; $7125: $7e
    ldh [$c1], a                                  ; $7126: $e0 $c1
    jr nz, jr_073_7175                            ; $7128: $20 $4b

    cp e                                          ; $712a: $bb
    and c                                         ; $712b: $a1
    ld b, b                                       ; $712c: $40
    ld h, a                                       ; $712d: $67
    db $fc                                        ; $712e: $fc
    inc sp                                        ; $712f: $33
    ld a, [hl]                                    ; $7130: $7e
    and d                                         ; $7131: $a2
    inc b                                         ; $7132: $04
    inc hl                                        ; $7133: $23
    ld [$207e], sp                                ; $7134: $08 $7e $20
    ld b, e                                       ; $7137: $43
    ldh [$be], a                                  ; $7138: $e0 $be
    ld b, b                                       ; $713a: $40
    dec hl                                        ; $713b: $2b
    ld l, h                                       ; $713c: $6c
    ld b, c                                       ; $713d: $41
    jr c, jr_073_7140                             ; $713e: $38 $00

jr_073_7140:
    ret nz                                        ; $7140: $c0

    db $e4                                        ; $7141: $e4
    ld b, e                                       ; $7142: $43
    dec [hl]                                      ; $7143: $35
    ldh [rLCDC], a                                ; $7144: $e0 $40
    inc hl                                        ; $7146: $23
    ld e, d                                       ; $7147: $5a
    ld hl, $8300                                  ; $7148: $21 $00 $83
    add $e1                                       ; $714b: $c6 $e1
    ld [hl], d                                    ; $714d: $72
    ld bc, $6b6b                                  ; $714e: $01 $6b $6b
    dec l                                         ; $7151: $2d
    inc bc                                        ; $7152: $03
    dec c                                         ; $7153: $0d
    inc l                                         ; $7154: $2c
    nop                                           ; $7155: $00
    ld hl, $a124                                  ; $7156: $21 $24 $a1
    db $fd                                        ; $7159: $fd
    add l                                         ; $715a: $85
    add b                                         ; $715b: $80
    jp nc, Jump_073_6141                          ; $715c: $d2 $41 $61

    ld a, a                                       ; $715f: $7f
    adc b                                         ; $7160: $88
    inc c                                         ; $7161: $0c
    ccf                                           ; $7162: $3f
    add d                                         ; $7163: $82
    jp nz, $2de1                                  ; $7164: $c2 $e1 $2d

    dec l                                         ; $7167: $2d
    ret nz                                        ; $7168: $c0

    pop hl                                        ; $7169: $e1
    dec h                                         ; $716a: $25
    and b                                         ; $716b: $a0
    add b                                         ; $716c: $80
    inc b                                         ; $716d: $04
    dec sp                                        ; $716e: $3b
    sub h                                         ; $716f: $94
    inc d                                         ; $7170: $14
    dec b                                         ; $7171: $05
    dec h                                         ; $7172: $25
    ld b, [hl]                                    ; $7173: $46
    ld b, l                                       ; $7174: $45

jr_073_7175:
    ld l, e                                       ; $7175: $6b
    add c                                         ; $7176: $81
    ld h, c                                       ; $7177: $61
    dec c                                         ; $7178: $0d
    jp nz, Jump_073_7fe0                          ; $7179: $c2 $e0 $7f

    rlca                                          ; $717c: $07
    ld a, e                                       ; $717d: $7b
    ld h, c                                       ; $717e: $61
    cp $00                                        ; $717f: $fe $00
    ld d, c                                       ; $7181: $51
    dec c                                         ; $7182: $0d
    dec c                                         ; $7183: $0d
    ld c, l                                       ; $7184: $4d
    ld c, l                                       ; $7185: $4d
    dec c                                         ; $7186: $0d
    ld c, l                                       ; $7187: $4d
    ld l, l                                       ; $7188: $6d
    jr jr_073_71e3                                ; $7189: $18 $58

    nop                                           ; $718b: $00
    sbc d                                         ; $718c: $9a

jr_073_718d:
    jr nz, jr_073_710f                            ; $718d: $20 $80

    ld h, l                                       ; $718f: $65
    ld l, e                                       ; $7190: $6b
    ld l, e                                       ; $7191: $6b
    ld c, d                                       ; $7192: $4a
    ld [bc], a                                    ; $7193: $02
    ld b, b                                       ; $7194: $40
    dec b                                         ; $7195: $05
    nop                                           ; $7196: $00
    jr nz, jr_073_71a9                            ; $7197: $20 $10

    ld e, a                                       ; $7199: $5f
    ld b, d                                       ; $719a: $42
    ld c, d                                       ; $719b: $4a
    ret nc                                        ; $719c: $d0

    ld c, b                                       ; $719d: $48
    ld b, b                                       ; $719e: $40
    sbc $e3                                       ; $719f: $de $e3
    ld l, h                                       ; $71a1: $6c
    add $00                                       ; $71a2: $c6 $00
    ld c, a                                       ; $71a4: $4f
    and h                                         ; $71a5: $a4
    sla b                                         ; $71a6: $cb $20
    ret nz                                        ; $71a8: $c0

jr_073_71a9:
    ld a, [bc]                                    ; $71a9: $0a
    db $e3                                        ; $71aa: $e3
    ret nz                                        ; $71ab: $c0

    push hl                                       ; $71ac: $e5
    nop                                           ; $71ad: $00
    jr nz, jr_073_718d                            ; $71ae: $20 $dd

    ld b, d                                       ; $71b0: $42
    rst $38                                       ; $71b1: $ff
    ld d, c                                       ; $71b2: $51
    add [hl]                                      ; $71b3: $86
    ldh [$6c], a                                  ; $71b4: $e0 $6c
    ld l, h                                       ; $71b6: $6c
    ld bc, $c20d                                  ; $71b7: $01 $0d $c2
    nop                                           ; $71ba: $00
    ld d, a                                       ; $71bb: $57
    ld [hl+], a                                   ; $71bc: $22
    jp z, $0e61                                   ; $71bd: $ca $61 $0e

    add c                                         ; $71c0: $81
    call nz, $c3e7                                ; $71c1: $c4 $e7 $c3
    nop                                           ; $71c4: $00
    ldh [$e0], a                                  ; $71c5: $e0 $e0
    add b                                         ; $71c7: $80
    ld bc, $4443                                  ; $71c8: $01 $43 $44
    ld [hl], c                                    ; $71cb: $71
    add hl, bc                                    ; $71cc: $09
    ld h, b                                       ; $71cd: $60

jr_073_71ce:
    call nz, $c220                                ; $71ce: $c4 $20 $c2
    ld [bc], a                                    ; $71d1: $02
    jp z, Jump_073_7c64                           ; $71d2: $ca $64 $7c

    ld b, c                                       ; $71d5: $41
    ld l, h                                       ; $71d6: $6c
    add b                                         ; $71d7: $80
    ld c, e                                       ; $71d8: $4b
    nop                                           ; $71d9: $00
    jp nz, Jump_073_68e3                          ; $71da: $c2 $e3 $68

    ldh [rSB], a                                  ; $71dd: $e0 $01
    ld b, d                                       ; $71df: $42
    add d                                         ; $71e0: $82
    ld b, $80                                     ; $71e1: $06 $80

jr_073_71e3:
    ld b, $c0                                     ; $71e3: $06 $c0
    db $e4                                        ; $71e5: $e4
    ld c, h                                       ; $71e6: $4c
    jr nc, jr_073_71ce                            ; $71e7: $30 $e5

    ld hl, $61a0                                  ; $71e9: $21 $a0 $61
    jr jr_073_7210                                ; $71ec: $18 $22

    ccf                                           ; $71ee: $3f
    ld b, h                                       ; $71ef: $44
    ld l, h                                       ; $71f0: $6c
    ld c, h                                       ; $71f1: $4c
    ld b, $e6                                     ; $71f2: $06 $e6
    or h                                          ; $71f4: $b4
    ld b, c                                       ; $71f5: $41
    jr jr_073_71fc                                ; $71f6: $18 $04

    db $e4                                        ; $71f8: $e4
    ld a, a                                       ; $71f9: $7f
    ld b, l                                       ; $71fa: $45
    ld a, h                                       ; $71fb: $7c

jr_073_71fc:
    add hl, hl                                    ; $71fc: $29
    inc c                                         ; $71fd: $0c
    ld c, h                                       ; $71fe: $4c
    ld h, [hl]                                    ; $71ff: $66
    ld h, e                                       ; $7200: $63
    cp [hl]                                       ; $7201: $be
    add c                                         ; $7202: $81
    ld a, $68                                     ; $7203: $3e $68
    dec b                                         ; $7205: $05
    ld c, h                                       ; $7206: $4c
    cp a                                          ; $7207: $bf
    ld [c], a                                     ; $7208: $e2
    inc l                                         ; $7209: $2c
    ld b, $e5                                     ; $720a: $06 $e5
    ld b, $66                                     ; $720c: $06 $66
    ei                                            ; $720e: $fb
    ld l, e                                       ; $720f: $6b

jr_073_7210:
    adc l                                         ; $7210: $8d
    ld bc, $e5a4                                  ; $7211: $01 $a4 $e5
    ld hl, sp+$40                                 ; $7214: $f8 $40
    db $e4                                        ; $7216: $e4
    add h                                         ; $7217: $84
    ret nz                                        ; $7218: $c0

    rrca                                          ; $7219: $0f
    ld [hl+], a                                   ; $721a: $22
    ld c, h                                       ; $721b: $4c
    ld c, h                                       ; $721c: $4c
    inc l                                         ; $721d: $2c
    inc l                                         ; $721e: $2c
    inc l                                         ; $721f: $2c
    ld [bc], a                                    ; $7220: $02
    xor e                                         ; $7221: $ab
    pop bc                                        ; $7222: $c1
    dec c                                         ; $7223: $0d
    add h                                         ; $7224: $84
    ld c, d                                       ; $7225: $4a
    add b                                         ; $7226: $80
    ld l, e                                       ; $7227: $6b
    add d                                         ; $7228: $82
    pop bc                                        ; $7229: $c1
    and a                                         ; $722a: $a7
    ld h, c                                       ; $722b: $61
    cp h                                          ; $722c: $bc
    ld b, l                                       ; $722d: $45
    add l                                         ; $722e: $85
    inc hl                                        ; $722f: $23
    ld h, b                                       ; $7230: $60
    ld a, [hl]                                    ; $7231: $7e
    push hl                                       ; $7232: $e5
    ld l, h                                       ; $7233: $6c
    pop bc                                        ; $7234: $c1
    ld b, d                                       ; $7235: $42
    nop                                           ; $7236: $00
    push bc                                       ; $7237: $c5
    ld b, e                                       ; $7238: $43
    ld b, a                                       ; $7239: $47
    inc [hl]                                      ; $723a: $34
    inc l                                         ; $723b: $2c
    inc l                                         ; $723c: $2c
    dec h                                         ; $723d: $25
    ld b, d                                       ; $723e: $42
    jr jr_073_72bf                                ; $723f: $18 $7e

    and d                                         ; $7241: $a2
    rst $38                                       ; $7242: $ff
    push af                                       ; $7243: $f5
    ret nz                                        ; $7244: $c0

    ld hl, sp+$6d                                 ; $7245: $f8 $6d
    inc l                                         ; $7247: $2c

jr_073_7248:
    ld bc, $2ae0                                  ; $7248: $01 $e0 $2a
    ld b, e                                       ; $724b: $43
    adc e                                         ; $724c: $8b
    ld b, [hl]                                    ; $724d: $46
    jr nz, jr_073_7248                            ; $724e: $20 $f8

    db $ed                                        ; $7250: $ed
    dec b                                         ; $7251: $05
    ld h, d                                       ; $7252: $62
    ld b, e                                       ; $7253: $43
    dec l                                         ; $7254: $2d
    add b                                         ; $7255: $80
    pop bc                                        ; $7256: $c1
    dec a                                         ; $7257: $3d
    nop                                           ; $7258: $00
    inc l                                         ; $7259: $2c
    pop bc                                        ; $725a: $c1
    ret nz                                        ; $725b: $c0

    cp [hl]                                       ; $725c: $be
    ld b, l                                       ; $725d: $45
    nop                                           ; $725e: $00
    ld c, a                                       ; $725f: $4f
    ld c, d                                       ; $7260: $4a
    ld b, e                                       ; $7261: $43
    ld c, c                                       ; $7262: $49
    ccf                                           ; $7263: $3f
    or $42                                        ; $7264: $f6 $42
    add $7c                                       ; $7266: $c6 $7c
    ld [bc], a                                    ; $7268: $02
    ld d, e                                       ; $7269: $53
    add c                                         ; $726a: $81
    sub [hl]                                      ; $726b: $96
    nop                                           ; $726c: $00
    db $fc                                        ; $726d: $fc
    db $ec                                        ; $726e: $ec
    nop                                           ; $726f: $00
    ccf                                           ; $7270: $3f
    ld hl, sp+$42                                 ; $7271: $f8 $42
    add $7e                                       ; $7273: $c6 $7e
    ld b, e                                       ; $7275: $43
    add b                                         ; $7276: $80
    push af                                       ; $7277: $f5
    call nz, Call_073_4327                        ; $7278: $c4 $27 $43
    ld a, [hl+]                                   ; $727b: $2a
    ld a, [bc]                                    ; $727c: $0a
    jp nz, $c142                                  ; $727d: $c2 $42 $c1

    ld [hl], b                                    ; $7280: $70
    nop                                           ; $7281: $00
    jp hl                                         ; $7282: $e9


    ret nz                                        ; $7283: $c0

    ld a, [c]                                     ; $7284: $f2
    ld h, c                                       ; $7285: $61
    and b                                         ; $7286: $a0
    inc b                                         ; $7287: $04
    ld d, e                                       ; $7288: $53
    dec c                                         ; $7289: $0d
    ld c, l                                       ; $728a: $4d
    inc c                                         ; $728b: $0c
    ld l, d                                       ; $728c: $6a
    ld h, [hl]                                    ; $728d: $66
    ld h, a                                       ; $728e: $67
    ld c, l                                       ; $728f: $4d
    dec l                                         ; $7290: $2d
    ld l, e                                       ; $7291: $6b
    inc de                                        ; $7292: $13
    ld h, e                                       ; $7293: $63
    db $fc                                        ; $7294: $fc
    db $ec                                        ; $7295: $ec
    ld l, e                                       ; $7296: $6b
    ld c, e                                       ; $7297: $4b
    add $93                                       ; $7298: $c6 $93
    ld hl, sp-$7e                                 ; $729a: $f8 $82
    and h                                         ; $729c: $a4
    ld a, [hl+]                                   ; $729d: $2a
    ld b, e                                       ; $729e: $43
    db $fc                                        ; $729f: $fc
    inc bc                                        ; $72a0: $03
    dec c                                         ; $72a1: $0d
    dec hl                                        ; $72a2: $2b
    ld l, e                                       ; $72a3: $6b
    ld c, e                                       ; $72a4: $4b
    dec hl                                        ; $72a5: $2b
    ret nz                                        ; $72a6: $c0

    db $fc                                        ; $72a7: $fc
    db $e4                                        ; $72a8: $e4
    dec sp                                        ; $72a9: $3b
    ld h, b                                       ; $72aa: $60
    db $f4                                        ; $72ab: $f4
    db $e3                                        ; $72ac: $e3
    add $81                                       ; $72ad: $c6 $81
    inc b                                         ; $72af: $04
    and [hl]                                      ; $72b0: $a6
    dec a                                         ; $72b1: $3d
    db $ec                                        ; $72b2: $ec
    ld c, $0e                                     ; $72b3: $0e $0e
    ld hl, $040c                                  ; $72b5: $21 $0c $04
    and b                                         ; $72b8: $a0
    inc [hl]                                      ; $72b9: $34
    add l                                         ; $72ba: $85
    ld e, e                                       ; $72bb: $5b
    ldh [$cb], a                                  ; $72bc: $e0 $cb
    ld h, d                                       ; $72be: $62

jr_073_72bf:
    dec hl                                        ; $72bf: $2b
    cp c                                          ; $72c0: $b9
    nop                                           ; $72c1: $00
    sub $84                                       ; $72c2: $d6 $84
    sub b                                         ; $72c4: $90
    ld d, d                                       ; $72c5: $52
    ld h, c                                       ; $72c6: $61
    ld c, b                                       ; $72c7: $48
    add [hl]                                      ; $72c8: $86
    add [hl]                                      ; $72c9: $86
    dec c                                         ; $72ca: $0d
    ld [hl], d                                    ; $72cb: $72
    ld bc, $c20c                                  ; $72cc: $01 $0c $c2
    add $76                                       ; $72cf: $c6 $76
    daa                                           ; $72d1: $27
    ld c, l                                       ; $72d2: $4d
    rlca                                          ; $72d3: $07
    dec hl                                        ; $72d4: $2b
    dec hl                                        ; $72d5: $2b
    ld l, l                                       ; $72d6: $6d
    dec c                                         ; $72d7: $0d
    jp $e5ea                                      ; $72d8: $c3 $ea $e5


    ld b, [hl]                                    ; $72db: $46
    inc d                                         ; $72dc: $14
    add b                                         ; $72dd: $80
    pop hl                                        ; $72de: $e1
    ld sp, hl                                     ; $72df: $f9
    ld c, h                                       ; $72e0: $4c
    ld b, $da                                     ; $72e1: $06 $da
    add d                                         ; $72e3: $82
    dec hl                                        ; $72e4: $2b
    dec hl                                        ; $72e5: $2b
    inc c                                         ; $72e6: $0c
    and b                                         ; $72e7: $a0
    and [hl]                                      ; $72e8: $a6
    ld b, [hl]                                    ; $72e9: $46
    adc e                                         ; $72ea: $8b
    add hl, hl                                    ; $72eb: $29
    add b                                         ; $72ec: $80
    jp z, $0000                                   ; $72ed: $ca $00 $00

    nop                                           ; $72f0: $00
    ld bc, $ff00                                  ; $72f1: $01 $00 $ff
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
    nop                                           ; $7301: $00
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
    nop                                           ; $7312: $00
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
    inc b                                         ; $7323: $04
    rst $38                                       ; $7324: $ff
    rst $38                                       ; $7325: $ff
    db $f4                                        ; $7326: $f4
    di                                            ; $7327: $f3
    rrca                                          ; $7328: $0f
    rst $38                                       ; $7329: $ff
    ld [$ffe0], a                                 ; $732a: $ea $e0 $ff
    ldh [$ef], a                                  ; $732d: $e0 $ef
    db $f4                                        ; $732f: $f4
    di                                            ; $7330: $f3
    ldh [rIE], a                                  ; $7331: $e0 $ff
    nop                                           ; $7333: $00
    ldh [rIE], a                                  ; $7334: $e0 $ff
    add b                                         ; $7336: $80
    and $79                                       ; $7337: $e6 $79
    and $30                                       ; $7339: $e6 $30
    add sp, $00                                   ; $733b: $e8 $00
    nop                                           ; $733d: $00
    nop                                           ; $733e: $00
    ld bc, $ff00                                  ; $733f: $01 $00 $ff
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
    nop                                           ; $734f: $00
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
    nop                                           ; $7360: $00
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
    db $10                                        ; $7371: $10
    rst $38                                       ; $7372: $ff
    rst $38                                       ; $7373: $ff
    rst $38                                       ; $7374: $ff
    rst $38                                       ; $7375: $ff
    rst $38                                       ; $7376: $ff
    rst $38                                       ; $7377: $ff
    ld a, [c]                                     ; $7378: $f2
    pop af                                        ; $7379: $f1
    pop af                                        ; $737a: $f1
    rst $38                                       ; $737b: $ff
    and $d4                                       ; $737c: $e6 $d4
    rst $38                                       ; $737e: $ff
    rst $38                                       ; $737f: $ff
    rst $38                                       ; $7380: $ff
    ld b, $f3                                     ; $7381: $06 $f3
    ld a, [c]                                     ; $7383: $f2
    inc de                                        ; $7384: $13
    inc de                                        ; $7385: $13
    call c, Call_000_00ef                         ; $7386: $dc $ef $00
    nop                                           ; $7389: $00
    nop                                           ; $738a: $00
    nop                                           ; $738b: $00
    ld [bc], a                                    ; $738c: $02
    nop                                           ; $738d: $00
    rrca                                          ; $738e: $0f
    ld [bc], a                                    ; $738f: $02
    ld [bc], a                                    ; $7390: $02
    nop                                           ; $7391: $00
    rrca                                          ; $7392: $0f
    inc b                                         ; $7393: $04
    ld [bc], a                                    ; $7394: $02
    nop                                           ; $7395: $00
    rrca                                          ; $7396: $0f
    ld b, $02                                     ; $7397: $06 $02
    nop                                           ; $7399: $00
    rrca                                          ; $739a: $0f
    ld [$0002], sp                                ; $739b: $08 $02 $00
    rrca                                          ; $739e: $0f
    ld b, $02                                     ; $739f: $06 $02
    nop                                           ; $73a1: $00
    rrca                                          ; $73a2: $0f
    inc b                                         ; $73a3: $04
    ld [bc], a                                    ; $73a4: $02
    nop                                           ; $73a5: $00
    rrca                                          ; $73a6: $0f
    ld [bc], a                                    ; $73a7: $02
    ld [bc], a                                    ; $73a8: $02
    nop                                           ; $73a9: $00
    rrca                                          ; $73aa: $0f
    rst $38                                       ; $73ab: $ff
    nop                                           ; $73ac: $00
    ld a, [bc]                                    ; $73ad: $0a
    rrca                                          ; $73ae: $0f
    ld [bc], a                                    ; $73af: $02
    ld e, $19                                     ; $73b0: $1e $19
    rrca                                          ; $73b2: $0f
    ld [bc], a                                    ; $73b3: $02
    ld e, $28                                     ; $73b4: $1e $28
    rrca                                          ; $73b6: $0f
    ld [bc], a                                    ; $73b7: $02
    ld e, $19                                     ; $73b8: $1e $19
    rrca                                          ; $73ba: $0f
    ld [bc], a                                    ; $73bb: $02
    ld e, $ff                                     ; $73bc: $1e $ff
    ld bc, $0337                                  ; $73be: $01 $37 $03
    ld de, $3a1e                                  ; $73c1: $11 $1e $3a
    inc bc                                        ; $73c4: $03
    ld de, $ff1e                                  ; $73c5: $11 $1e $ff
    ld [bc], a                                    ; $73c8: $02
    dec a                                         ; $73c9: $3d
    ld bc, $1e14                                  ; $73ca: $01 $14 $1e
    ld a, $01                                     ; $73cd: $3e $01
    inc d                                         ; $73cf: $14
    ld e, $3f                                     ; $73d0: $1e $3f
    ld bc, $1e14                                  ; $73d2: $01 $14 $1e
    ld a, $01                                     ; $73d5: $3e $01
    inc d                                         ; $73d7: $14
    ld e, $ff                                     ; $73d8: $1e $ff
    ld bc, $d5fe                                  ; $73da: $01 $fe $d5
    nop                                           ; $73dd: $00
    rst $38                                       ; $73de: $ff
    ldh [rTIMA], a                                ; $73df: $e0 $05
    ei                                            ; $73e1: $fb
    ldh [$0b], a                                  ; $73e2: $e0 $0b
    rst $30                                       ; $73e4: $f7
    pop hl                                        ; $73e5: $e1
    nop                                           ; $73e6: $00
    ld [bc], a                                    ; $73e7: $02
    db $eb                                        ; $73e8: $eb
    nop                                           ; $73e9: $00
    jr z, @-$0f                                   ; $73ea: $28 $ef

    ldh [$90], a                                  ; $73ec: $e0 $90
    db $eb                                        ; $73ee: $eb
    ldh [$f5], a                                  ; $73ef: $e0 $f5
    nop                                           ; $73f1: $00
    ret z                                         ; $73f2: $c8

    ld a, [$e0e5]                                 ; $73f3: $fa $e5 $e0
    add b                                         ; $73f6: $80
    ld [$00e4], a                                 ; $73f7: $ea $e4 $00
    nop                                           ; $73fa: $00
    rla                                           ; $73fb: $17
    nop                                           ; $73fc: $00
    ld bc, $d612                                  ; $73fd: $01 $12 $d6
    ld [c], a                                     ; $7400: $e2
    ld d, b                                       ; $7401: $50
    rst $08                                       ; $7402: $cf
    ldh [$e6], a                                  ; $7403: $e0 $e6
    pop hl                                        ; $7405: $e1
    ld [$e2da], a                                 ; $7406: $ea $da $e2
    db $fd                                        ; $7409: $fd
    db $e3                                        ; $740a: $e3
    and $e1                                       ; $740b: $e6 $e1
    ld d, a                                       ; $740d: $57
    cpl                                           ; $740e: $2f
    nop                                           ; $740f: $00
    inc bc                                        ; $7410: $03
    ret nz                                        ; $7411: $c0

    ld [c], a                                     ; $7412: $e2
    and b                                         ; $7413: $a0
    xor a                                         ; $7414: $af
    ldh [$64], a                                  ; $7415: $e0 $64
    xor e                                         ; $7417: $ab
    ldh [$c7], a                                  ; $7418: $e0 $c7
    call nc, Call_000_2000                        ; $741a: $d4 $00 $20
    ret nz                                        ; $741d: $c0

    ld [c], a                                     ; $741e: $e2
    jp z, $9ce1                                   ; $741f: $ca $e1 $9c

    pop hl                                        ; $7422: $e1
    ld e, a                                       ; $7423: $5f
    nop                                           ; $7424: $00
    ld d, l                                       ; $7425: $55
    ld b, $96                                     ; $7426: $06 $96
    ld [c], a                                     ; $7428: $e2
    ld b, b                                       ; $7429: $40
    adc a                                         ; $742a: $8f
    ldh [$b2], a                                  ; $742b: $e0 $b2
    adc e                                         ; $742d: $8b
    ldh [$a8], a                                  ; $742e: $e0 $a8
    or $e2                                        ; $7430: $f6 $e2
    sbc h                                         ; $7432: $9c
    and h                                         ; $7433: $a4
    db $e3                                        ; $7434: $e3
    ld a, h                                       ; $7435: $7c
    pop hl                                        ; $7436: $e1
    cp a                                          ; $7437: $bf
    nop                                           ; $7438: $00
    inc c                                         ; $7439: $0c
    add b                                         ; $743a: $80
    ld [c], a                                     ; $743b: $e2
    adc [hl]                                      ; $743c: $8e
    pop hl                                        ; $743d: $e1
    ld e, c                                       ; $743e: $59
    ld a, [$e06b]                                 ; $743f: $fa $6b $e0
    ld d, b                                       ; $7442: $50
    add h                                         ; $7443: $84
    ld [c], a                                     ; $7444: $e2
    add b                                         ; $7445: $80
    nop                                           ; $7446: $00
    db $ec                                        ; $7447: $ec
    rst $38                                       ; $7448: $ff
    ld hl, sp-$01                                 ; $7449: $f8 $ff
    rst $38                                       ; $744b: $ff
    ldh [$fe], a                                  ; $744c: $e0 $fe
    ld b, d                                       ; $744e: $42
    ld hl, sp-$38                                 ; $744f: $f8 $c8
    ldh a, [$80]                                  ; $7451: $f0 $80
    cp a                                          ; $7453: $bf
    ldh [rNR10], a                                ; $7454: $e0 $10
    ldh [rP1], a                                  ; $7456: $e0 $00
    ret nz                                        ; $7458: $c0

    rst $38                                       ; $7459: $ff
    rst $38                                       ; $745a: $ff
    ld [c], a                                     ; $745b: $e2
    rst $30                                       ; $745c: $f7
    rst $38                                       ; $745d: $ff
    rst $38                                       ; $745e: $ff
    cp h                                          ; $745f: $bc
    rst $38                                       ; $7460: $ff
    add sp, -$01                                  ; $7461: $e8 $ff
    add c                                         ; $7463: $81
    cp $08                                        ; $7464: $fe $08
    db $ed                                        ; $7466: $ed
    ldh a, [$f8]                                  ; $7467: $f0 $f8
    push hl                                       ; $7469: $e5
    jr nz, @-$3e                                  ; $746a: $20 $c0

    ld [hl], c                                    ; $746c: $71
    db $e3                                        ; $746d: $e3
    ld a, a                                       ; $746e: $7f
    rst $38                                       ; $746f: $ff
    cpl                                           ; $7470: $2f
    rst $38                                       ; $7471: $ff
    rst $38                                       ; $7472: $ff
    ccf                                           ; $7473: $3f
    rst $38                                       ; $7474: $ff
    rra                                           ; $7475: $1f
    rst $38                                       ; $7476: $ff
    or a                                          ; $7477: $b7
    ld a, a                                       ; $7478: $7f
    rra                                           ; $7479: $1f
    rst $38                                       ; $747a: $ff
    ld a, a                                       ; $747b: $7f
    rrca                                          ; $747c: $0f
    ld a, a                                       ; $747d: $7f
    ld c, a                                       ; $747e: $4f
    ccf                                           ; $747f: $3f
    rlca                                          ; $7480: $07
    rra                                           ; $7481: $1f
    ld [bc], a                                    ; $7482: $02
    rst $38                                       ; $7483: $ff
    rra                                           ; $7484: $1f
    inc de                                        ; $7485: $13
    rrca                                          ; $7486: $0f
    ld bc, $0b0f                                  ; $7487: $01 $0f $0b
    rlca                                          ; $748a: $07
    ld bc, $07ff                                  ; $748b: $01 $ff $07
    nop                                           ; $748e: $00
    rlca                                          ; $748f: $07
    inc b                                         ; $7490: $04
    inc bc                                        ; $7491: $03
    ld e, h                                       ; $7492: $5c
    rst $38                                       ; $7493: $ff
    nop                                           ; $7494: $00
    rst $28                                       ; $7495: $ef
    rst $38                                       ; $7496: $ff
    add c                                         ; $7497: $81
    inc a                                         ; $7498: $3c
    db $10                                        ; $7499: $10
    ld b, h                                       ; $749a: $44
    and $20                                       ; $749b: $e6 $20
    ret nz                                        ; $749d: $c0

    add b                                         ; $749e: $80
    cp a                                          ; $749f: $bf
    ret nz                                        ; $74a0: $c0

    nop                                           ; $74a1: $00
    ldh [$90], a                                  ; $74a2: $e0 $90
    ldh [$80], a                                  ; $74a4: $e0 $80
    cp $e0                                        ; $74a6: $fe $e0
    nop                                           ; $74a8: $00
    ei                                            ; $74a9: $fb
    ret nz                                        ; $74aa: $c0

    jr nz, @-$5e                                  ; $74ab: $20 $a0

    ldh [$7d], a                                  ; $74ad: $e0 $7d
    rst $38                                       ; $74af: $ff
    rst $28                                       ; $74b0: $ef
    rst $38                                       ; $74b1: $ff
    ld a, [hl-]                                   ; $74b2: $3a
    ld a, [$e2da]                                 ; $74b3: $fa $da $e2
    ld [$c0e3], sp                                ; $74b6: $08 $e3 $c0
    and h                                         ; $74b9: $a4
    ld hl, sp-$20                                 ; $74ba: $f8 $e0
    ld hl, sp-$10                                 ; $74bc: $f8 $f0
    rst $38                                       ; $74be: $ff
    db $fc                                        ; $74bf: $fc
    ret nc                                        ; $74c0: $d0

    db $fc                                        ; $74c1: $fc
    ld a, [c]                                     ; $74c2: $f2
    db $fc                                        ; $74c3: $fc
    ldh [$fc], a                                  ; $74c4: $e0 $fc
    or b                                          ; $74c6: $b0
    rst $30                                       ; $74c7: $f7
    ld hl, sp-$1c                                 ; $74c8: $f8 $e4
    ld hl, sp-$80                                 ; $74ca: $f8 $80
    push hl                                       ; $74cc: $e5
    cp [hl]                                       ; $74cd: $be
    rst $38                                       ; $74ce: $ff
    db $e3                                        ; $74cf: $e3
    rst $38                                       ; $74d0: $ff
    rst $38                                       ; $74d1: $ff
    ld b, b                                       ; $74d2: $40
    rst $38                                       ; $74d3: $ff
    nop                                           ; $74d4: $00
    rst $20                                       ; $74d5: $e7
    db $fc                                        ; $74d6: $fc
    rst $38                                       ; $74d7: $ff
    or $ff                                        ; $74d8: $f6 $ff
    ld a, a                                       ; $74da: $7f
    db $fc                                        ; $74db: $fc
    rst $38                                       ; $74dc: $ff
    ld hl, sp-$02                                 ; $74dd: $f8 $fe
    add sp, -$02                                  ; $74df: $e8 $fe
    ld hl, sp-$08                                 ; $74e1: $f8 $f8
    ldh [$83], a                                  ; $74e3: $e0 $83
    db $f4                                        ; $74e5: $f4
    rst $38                                       ; $74e6: $ff
    ld a, b                                       ; $74e7: $78
    ldh [$cb], a                                  ; $74e8: $e0 $cb
    jp $c5e2                                      ; $74ea: $c3 $e2 $c5


    ldh a, [$e0]                                  ; $74ed: $f0 $e0
    rst $28                                       ; $74ef: $ef
    ld [$f1c0], a                                 ; $74f0: $ea $c0 $f1
    ld b, b                                       ; $74f3: $40
    ldh [$ea], a                                  ; $74f4: $e0 $ea
    ret nc                                        ; $74f6: $d0

    pop hl                                        ; $74f7: $e1
    rst $08                                       ; $74f8: $cf
    jp hl                                         ; $74f9: $e9


    db $ec                                        ; $74fa: $ec
    rst $38                                       ; $74fb: $ff
    ld sp, hl                                     ; $74fc: $f9
    cp $7f                                        ; $74fd: $fe $7f
    and $f8                                       ; $74ff: $e6 $f8
    ld c, b                                       ; $7501: $48
    ldh a, [$d0]                                  ; $7502: $f0 $d0
    ldh [$a8], a                                  ; $7504: $e0 $a8
    ld [hl], d                                    ; $7506: $72
    ldh [$fb], a                                  ; $7507: $e0 $fb

jr_073_7509:
    ld b, b                                       ; $7509: $40
    add b                                         ; $750a: $80
    db $10                                        ; $750b: $10
    rst $20                                       ; $750c: $e7
    jp hl                                         ; $750d: $e9


    cp $8e                                        ; $750e: $fe $8e
    ldh a, [$30]                                  ; $7510: $f0 $30
    pop af                                        ; $7512: $f1
    ret nz                                        ; $7513: $c0

    ld hl, sp-$1b                                 ; $7514: $f8 $e5
    ld h, d                                       ; $7516: $62
    pop bc                                        ; $7517: $c1
    db $10                                        ; $7518: $10
    push hl                                       ; $7519: $e5
    cp a                                          ; $751a: $bf
    ld a, a                                       ; $751b: $7f
    sbc a                                         ; $751c: $9f
    ld a, a                                       ; $751d: $7f
    rst $38                                       ; $751e: $ff
    ld [hl], a                                    ; $751f: $77
    ccf                                           ; $7520: $3f
    ld e, a                                       ; $7521: $5f
    ccf                                           ; $7522: $3f
    ld c, a                                       ; $7523: $4f
    ccf                                           ; $7524: $3f
    cpl                                           ; $7525: $2f
    rra                                           ; $7526: $1f
    rst $30                                       ; $7527: $f7
    rla                                           ; $7528: $17
    rrca                                          ; $7529: $0f
    ld [de], a                                    ; $752a: $12
    inc d                                         ; $752b: $14
    ldh [$09], a                                  ; $752c: $e0 $09
    rlca                                          ; $752e: $07
    rla                                           ; $752f: $17
    inc bc                                        ; $7530: $03
    rst $38                                       ; $7531: $ff
    dec b                                         ; $7532: $05
    inc bc                                        ; $7533: $03
    inc b                                         ; $7534: $04
    inc bc                                        ; $7535: $03
    ld [bc], a                                    ; $7536: $02
    ld bc, $ff5c                                  ; $7537: $01 $5c $ff
    rst $30                                       ; $753a: $f7
    jp Jump_000_3c3c                              ; $753b: $c3 $3c $3c


    sbc d                                         ; $753e: $9a
    add $00                                       ; $753f: $c6 $00
    nop                                           ; $7541: $00
    ld b, b                                       ; $7542: $40
    add b                                         ; $7543: $80
    rst $18                                       ; $7544: $df
    ret nz                                        ; $7545: $c0

    add b                                         ; $7546: $80
    jr nz, jr_073_7509                            ; $7547: $20 $c0

    and b                                         ; $7549: $a0
    cp $e2                                        ; $754a: $fe $e2
    ld d, b                                       ; $754c: $50
    add b                                         ; $754d: $80
    ldh a, [$a0]                                  ; $754e: $f0 $a0
    pop hl                                        ; $7550: $e1
    db $10                                        ; $7551: $10
    db $e3                                        ; $7552: $e3
    jp c, Jump_073_64e1                           ; $7553: $da $e1 $64

    pop bc                                        ; $7556: $c1
    xor b                                         ; $7557: $a8
    ldh a, [$ea]                                  ; $7558: $f0 $ea
    ldh a, [$df]                                  ; $755a: $f0 $df
    db $f4                                        ; $755c: $f4
    ld hl, sp-$2c                                 ; $755d: $f8 $d4
    ld hl, sp-$0c                                 ; $755f: $f8 $f4
    inc d                                         ; $7561: $14
    ldh [$b8], a                                  ; $7562: $e0 $b8
    ldh a, [$fb]                                  ; $7564: $f0 $fb
    add sp, -$10                                  ; $7566: $e8 $f0
    db $10                                        ; $7568: $10
    jp hl                                         ; $7569: $e9


    ld e, b                                       ; $756a: $58
    rst $20                                       ; $756b: $e7
    ld h, [hl]                                    ; $756c: $66
    add c                                         ; $756d: $81
    db $fc                                        ; $756e: $fc
    rst $38                                       ; $756f: $ff
    rst $38                                       ; $7570: $ff
    rst $30                                       ; $7571: $f7
    cp $fd                                        ; $7572: $fe $fd
    cp $fa                                        ; $7574: $fe $fa
    db $fc                                        ; $7576: $fc
    ld [$fc3b], a                                 ; $7577: $ea $3b $fc
    ld sp, hl                                     ; $757a: $f9
    ld hl, sp-$20                                 ; $757b: $f8 $e0
    db $f4                                        ; $757d: $f4
    rst $38                                       ; $757e: $ff

jr_073_757f:
    ld c, b                                       ; $757f: $48
    ld [hl+], a                                   ; $7580: $22
    db $eb                                        ; $7581: $eb
    and b                                         ; $7582: $a0
    ldh [$f0], a                                  ; $7583: $e0 $f0
    call z, $fba3                                 ; $7585: $cc $a3 $fb
    push bc                                       ; $7588: $c5
    pop af                                        ; $7589: $f1
    call $cbe3                                    ; $758a: $cd $e3 $cb
    nop                                           ; $758d: $00
    nop                                           ; $758e: $00
    db $ed                                        ; $758f: $ed
    cp $ff                                        ; $7590: $fe $ff
    cp $f8                                        ; $7592: $fe $f8
    add sp, -$10                                  ; $7594: $e8 $f0
    ld d, d                                       ; $7596: $52
    ldh [$e8], a                                  ; $7597: $e0 $e8
    ret nz                                        ; $7599: $c0

    rst $20                                       ; $759a: $e7
    ret nz                                        ; $759b: $c0

    add b                                         ; $759c: $80
    ld d, b                                       ; $759d: $50
    sub $c0                                       ; $759e: $d6 $c0
    jr nz, @-$39                                  ; $75a0: $20 $c5

    cp l                                          ; $75a2: $bd
    cp $ee                                        ; $75a3: $fe $ee
    jp $b1f0                                      ; $75a5: $c3 $f0 $b1


    ld a, [de]                                    ; $75a8: $1a
    ldh [$f8], a                                  ; $75a9: $e0 $f8
    push hl                                       ; $75ab: $e5
    or d                                          ; $75ac: $b2
    and c                                         ; $75ad: $a1
    ld d, h                                       ; $75ae: $54
    and c                                         ; $75af: $a1
    rst $38                                       ; $75b0: $ff
    ld a, a                                       ; $75b1: $7f
    rst $30                                       ; $75b2: $f7
    xor a                                         ; $75b3: $af
    ld a, a                                       ; $75b4: $7f
    ld a, a                                       ; $75b5: $7f
    inc d                                         ; $75b6: $14
    ldh [$b7], a                                  ; $75b7: $e0 $b7
    rra                                           ; $75b9: $1f
    ccf                                           ; $75ba: $3f
    rra                                           ; $75bb: $1f
    ld a, a                                       ; $75bc: $7f

jr_073_75bd:
    cpl                                           ; $75bd: $2f
    rra                                           ; $75be: $1f
    ld e, a                                       ; $75bf: $5f
    rrca                                          ; $75c0: $0f
    rrca                                          ; $75c1: $0f
    rlca                                          ; $75c2: $07
    ld a, [bc]                                    ; $75c3: $0a
    inc d                                         ; $75c4: $14
    ld [c], a                                     ; $75c5: $e2
    rst $38                                       ; $75c6: $ff
    dec bc                                        ; $75c7: $0b
    ld bc, $0103                                  ; $75c8: $01 $03 $01
    ld [bc], a                                    ; $75cb: $02
    ld bc, $0005                                  ; $75cc: $01 $05 $00
    sub l                                         ; $75cf: $95
    rst $18                                       ; $75d0: $df
    ld [de], a                                    ; $75d1: $12
    ldh [rSCY], a                                 ; $75d2: $e0 $42
    sub b                                         ; $75d4: $90
    ld [$0ca0], a                                 ; $75d5: $ea $a0 $0c
    ld [c], a                                     ; $75d8: $e2
    cp $e1                                        ; $75d9: $fe $e1
    and b                                         ; $75db: $a0
    ld [hl], h                                    ; $75dc: $74
    jr nc, jr_073_757f                            ; $75dd: $30 $a0

    jr nz, @-$3b                                  ; $75df: $20 $c3

    ei                                            ; $75e1: $fb
    jp c, $b0e6                                   ; $75e2: $da $e6 $b0

    ldh [$f4], a                                  ; $75e5: $e0 $f4
    rra                                           ; $75e7: $1f
    ret nz                                        ; $75e8: $c0

    rst $30                                       ; $75e9: $f7
    ret c                                         ; $75ea: $d8

    ldh a, [$f8]                                  ; $75eb: $f0 $f8
    inc d                                         ; $75ed: $14
    ldh [$b4], a                                  ; $75ee: $e0 $b4
    ldh [$f0], a                                  ; $75f0: $e0 $f0
    ldh [$fa], a                                  ; $75f2: $e0 $fa
    jr nz, jr_073_75bd                            ; $75f4: $20 $c7

    ei                                            ; $75f6: $fb
    ld [de], a                                    ; $75f7: $12
    ldh [$91], a                                  ; $75f8: $e0 $91
    nop                                           ; $75fa: $00
    db $fd                                        ; $75fb: $fd
    cp $f6                                        ; $75fc: $fe $f6
    rst $38                                       ; $75fe: $ff
    db $fc                                        ; $75ff: $fc
    cp $fc                                        ; $7600: $fe $fc
    db $fd                                        ; $7602: $fd
    ld hl, sp-$14                                 ; $7603: $f8 $ec
    ld hl, sp-$06                                 ; $7605: $f8 $fa
    ld b, $f8                                     ; $7607: $06 $f8
    ldh [$f5], a                                  ; $7609: $e0 $f5
    cp $78                                        ; $760b: $fe $78
    push hl                                       ; $760d: $e5
    inc l                                         ; $760e: $2c
    push af                                       ; $760f: $f5
    nop                                           ; $7610: $00
    and c                                         ; $7611: $a1
    xor $cc                                       ; $7612: $ee $cc
    pop af                                        ; $7614: $f1
    xor d                                         ; $7615: $aa
    rst $38                                       ; $7616: $ff
    ld [bc], a                                    ; $7617: $02
    add c                                         ; $7618: $81
    and b                                         ; $7619: $a0
    pop bc                                        ; $761a: $c1
    add b                                         ; $761b: $80
    pop bc                                        ; $761c: $c1
    add l                                         ; $761d: $85
    jp $a1ff                                      ; $761e: $c3 $ff $a1


    jp $8300                                      ; $7621: $c3 $00 $83


    dec b                                         ; $7624: $05
    add e                                         ; $7625: $83
    ld b, b                                       ; $7626: $40
    add c                                         ; $7627: $81
    di                                            ; $7628: $f3
    ld b, c                                       ; $7629: $41
    add b                                         ; $762a: $80
    ldh [$a0], a                                  ; $762b: $e0 $a0
    ld [hl], b                                    ; $762d: $70
    ret nz                                        ; $762e: $c0

    ret nz                                        ; $762f: $c0

    ldh [rBCPS], a                                ; $7630: $e0 $68
    ldh a, [rIE]                                  ; $7632: $f0 $ff
    pop af                                        ; $7634: $f1
    db $fc                                        ; $7635: $fc
    call c, Call_000_1eff                         ; $7636: $dc $ff $1e
    rst $38                                       ; $7639: $ff
    add b                                         ; $763a: $80
    ld e, $fd                                     ; $763b: $1e $fd
    ld [de], a                                    ; $763d: $12
    ld [hl], h                                    ; $763e: $74
    add d                                         ; $763f: $82
    ld c, b                                       ; $7640: $48
    nop                                           ; $7641: $00
    ld bc, $5878                                  ; $7642: $01 $78 $58
    rst $38                                       ; $7645: $ff
    rst $38                                       ; $7646: $ff
    ld b, b                                       ; $7647: $40
    add c                                         ; $7648: $81
    add d                                         ; $7649: $82
    pop bc                                        ; $764a: $c1
    and b                                         ; $764b: $a0
    pop bc                                        ; $764c: $c1
    and c                                         ; $764d: $a1
    jp $85ff                                      ; $764e: $c3 $ff $85


    jp $8304                                      ; $7651: $c3 $04 $83


    ld b, c                                       ; $7654: $41
    add e                                         ; $7655: $83
    ld [bc], a                                    ; $7656: $02
    add c                                         ; $7657: $81
    or $6d                                        ; $7658: $f6 $6d
    add b                                         ; $765a: $80
    add b                                         ; $765b: $80
    and b                                         ; $765c: $a0
    ld c, h                                       ; $765d: $4c
    and b                                         ; $765e: $a0
    ret nc                                        ; $765f: $d0

    ldh [$64], a                                  ; $7660: $e0 $64

jr_073_7662:
    ldh a, [$ed]                                  ; $7662: $f0 $ed
    ldh a, [$d0]                                  ; $7664: $f0 $d0
    ld [c], a                                     ; $7666: $e2
    ld b, c                                       ; $7667: $41
    ld e, $c6                                     ; $7668: $1e $c6
    add c                                         ; $766a: $81
    nop                                           ; $766b: $00
    nop                                           ; $766c: $00
    jr nc, jr_073_7662                            ; $766d: $30 $f3

    nop                                           ; $766f: $00
    add d                                         ; $7670: $82
    ret nc                                        ; $7671: $d0

    ldh [$a0], a                                  ; $7672: $e0 $a0
    xor c                                         ; $7674: $a9
    ld [bc], a                                    ; $7675: $02
    ld bc, $0300                                  ; $7676: $01 $00 $03
    nop                                           ; $7679: $00
    ld [hl], c                                    ; $767a: $71
    xor c                                         ; $767b: $a9
    pop af                                        ; $767c: $f1
    ldh [$60], a                                  ; $767d: $e0 $60
    add sp, $30                                   ; $767f: $e8 $30
    add e                                         ; $7681: $83
    rst $38                                       ; $7682: $ff
    rst $38                                       ; $7683: $ff
    rst $38                                       ; $7684: $ff
    rst $38                                       ; $7685: $ff
    rst $38                                       ; $7686: $ff
    rst $38                                       ; $7687: $ff
    rst $38                                       ; $7688: $ff
    rst $38                                       ; $7689: $ff
    nop                                           ; $768a: $00
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
    nop                                           ; $769b: $00
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
    nop                                           ; $76ac: $00
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
    nop                                           ; $76bd: $00
    rst $38                                       ; $76be: $ff
    rst $38                                       ; $76bf: $ff
    rst $38                                       ; $76c0: $ff
    rst $38                                       ; $76c1: $ff
    ccf                                           ; $76c2: $3f
    ld bc, $0000                                  ; $76c3: $01 $00 $00
    nop                                           ; $76c6: $00

    push af                                       ; $76c7: $f5
    push bc                                       ; $76c8: $c5
    push de                                       ; $76c9: $d5
    push hl                                       ; $76ca: $e5
    ld [$c32f], a                                 ; $76cb: $ea $2f $c3
    ld c, a                                       ; $76ce: $4f
    ld a, $ff                                     ; $76cf: $3e $ff
    ld b, $01                                     ; $76d1: $06 $01
    ld hl, $c330                                  ; $76d3: $21 $30 $c3
    ld [hl+], a                                   ; $76d6: $22
    ld [hl], b                                    ; $76d7: $70
    inc hl                                        ; $76d8: $23
    ld [hl+], a                                   ; $76d9: $22
    ld [hl], b                                    ; $76da: $70
    inc hl                                        ; $76db: $23
    ld [hl+], a                                   ; $76dc: $22
    ld [hl], b                                    ; $76dd: $70
    inc hl                                        ; $76de: $23
    ld [hl+], a                                   ; $76df: $22
    ld [hl], b                                    ; $76e0: $70
    inc hl                                        ; $76e1: $23
    ld [hl+], a                                   ; $76e2: $22
    ld [hl+], a                                   ; $76e3: $22
    ld [hl+], a                                   ; $76e4: $22
    ld [hl+], a                                   ; $76e5: $22
    ld a, c                                       ; $76e6: $79
    ld h, $00                                     ; $76e7: $26 $00
    ld l, a                                       ; $76e9: $6f
    add hl, hl                                    ; $76ea: $29
    ld bc, $403a                                  ; $76eb: $01 $3a $40
    add hl, bc                                    ; $76ee: $09
    ld a, [hl+]                                   ; $76ef: $2a
    ld h, [hl]                                    ; $76f0: $66
    ld l, a                                       ; $76f1: $6f
    ld a, [hl]                                    ; $76f2: $7e
    cp $fe                                        ; $76f3: $fe $fe
    jr nz, jr_073_76f9                            ; $76f5: $20 $02

    jr jr_073_7769                                ; $76f7: $18 $70

jr_073_76f9:
    add sp, -$02                                  ; $76f9: $e8 $fe
    ld de, $c332                                  ; $76fb: $11 $32 $c3
    push hl                                       ; $76fe: $e5
    ld hl, sp+$02                                 ; $76ff: $f8 $02
    ld [hl], e                                    ; $7701: $73
    inc hl                                        ; $7702: $23
    ld [hl], d                                    ; $7703: $72
    pop hl                                        ; $7704: $e1
    ld d, h                                       ; $7705: $54
    ld e, l                                       ; $7706: $5d
    ld b, $ff                                     ; $7707: $06 $ff
    ld c, $03                                     ; $7709: $0e $03
    xor a                                         ; $770b: $af
    ld hl, $c330                                  ; $770c: $21 $30 $c3
    ld [hl], a                                    ; $770f: $77
    ld hl, $c338                                  ; $7710: $21 $38 $c3
    ld [hl], a                                    ; $7713: $77
    inc hl                                        ; $7714: $23

jr_073_7715:
    inc b                                         ; $7715: $04
    ld a, [de]                                    ; $7716: $1a
    inc de                                        ; $7717: $13
    cp $fe                                        ; $7718: $fe $fe
    jr z, jr_073_7751                             ; $771a: $28 $35

    cp $ff                                        ; $771c: $fe $ff
    jr nz, jr_073_7715                            ; $771e: $20 $f5

    inc b                                         ; $7720: $04
    ld a, b                                       ; $7721: $78
    inc a                                         ; $7722: $3c
    ld [hl], a                                    ; $7723: $77
    push de                                       ; $7724: $d5
    push hl                                       ; $7725: $e5
    ld hl, sp+$04                                 ; $7726: $f8 $04
    ld e, [hl]                                    ; $7728: $5e
    inc hl                                        ; $7729: $23
    ld d, [hl]                                    ; $772a: $56
    pop hl                                        ; $772b: $e1
    ld [de], a                                    ; $772c: $12
    inc de                                        ; $772d: $13
    inc de                                        ; $772e: $13
    push hl                                       ; $772f: $e5
    ld hl, sp+$04                                 ; $7730: $f8 $04
    ld [hl], e                                    ; $7732: $73
    inc hl                                        ; $7733: $23
    ld [hl], d                                    ; $7734: $72
    pop hl                                        ; $7735: $e1
    pop de                                        ; $7736: $d1
    ld a, [de]                                    ; $7737: $1a
    inc a                                         ; $7738: $3c
    inc de                                        ; $7739: $13
    push hl                                       ; $773a: $e5
    push de                                       ; $773b: $d5
    ld d, a                                       ; $773c: $57
    ld a, $04                                     ; $773d: $3e $04
    sub c                                         ; $773f: $91
    ld hl, $c330                                  ; $7740: $21 $30 $c3
    ld e, a                                       ; $7743: $5f
    ld a, d                                       ; $7744: $7a
    ld d, $00                                     ; $7745: $16 $00
    add hl, de                                    ; $7747: $19
    add hl, de                                    ; $7748: $19
    inc hl                                        ; $7749: $23
    ld [hl], a                                    ; $774a: $77
    pop de                                        ; $774b: $d1
    pop hl                                        ; $774c: $e1
    inc hl                                        ; $774d: $23
    dec c                                         ; $774e: $0d
    jr nz, jr_073_7715                            ; $774f: $20 $c4

jr_073_7751:
    ld a, $ff                                     ; $7751: $3e $ff
    dec hl                                        ; $7753: $2b
    ld [hl], a                                    ; $7754: $77
    push hl                                       ; $7755: $e5
    ld hl, sp+$02                                 ; $7756: $f8 $02
    ld e, [hl]                                    ; $7758: $5e
    inc hl                                        ; $7759: $23
    ld d, [hl]                                    ; $775a: $56
    pop hl                                        ; $775b: $e1
    dec de                                        ; $775c: $1b
    dec de                                        ; $775d: $1b
    ld [de], a                                    ; $775e: $12
    ld a, $01                                     ; $775f: $3e $01
    ld hl, $777d                                  ; $7761: $21 $7d $77
    call Call_000_23e8                            ; $7764: $cd $e8 $23
    add sp, $02                                   ; $7767: $e8 $02

jr_073_7769:
    pop hl                                        ; $7769: $e1
    pop de                                        ; $776a: $d1
    pop bc                                        ; $776b: $c1
    pop af                                        ; $776c: $f1
    ret                                           ; $776d: $c9


    push af                                       ; $776e: $f5
    push bc                                       ; $776f: $c5
    push de                                       ; $7770: $d5
    push hl                                       ; $7771: $e5
    ld hl, $777d                                  ; $7772: $21 $7d $77
    call Call_000_2449                            ; $7775: $cd $49 $24
    pop hl                                        ; $7778: $e1
    pop de                                        ; $7779: $d1
    pop bc                                        ; $777a: $c1
    pop af                                        ; $777b: $f1
    ret                                           ; $777c: $c9


    rst $30                                       ; $777d: $f7

    db $80, $03

    jr nz, jr_073_7786                            ; $7780: $20 $04

    rst $30                                       ; $7782: $f7

    db $00, $03

    ret nz                                        ; $7785: $c0

jr_073_7786:
    push af                                       ; $7786: $f5
    push bc                                       ; $7787: $c5
    push de                                       ; $7788: $d5
    push hl                                       ; $7789: $e5
    ldh a, [$96]                                  ; $778a: $f0 $96
    push af                                       ; $778c: $f5
    ld a, $06                                     ; $778d: $3e $06
    ldh [$96], a                                  ; $778f: $e0 $96
    ldh [rSVBK], a                                ; $7791: $e0 $70
    ld c, $00                                     ; $7793: $0e $00
    ld hl, $c338                                  ; $7795: $21 $38 $c3

jr_073_7798:
    ld a, [hl]                                    ; $7798: $7e
    cp $ff                                        ; $7799: $fe $ff
    jr z, jr_073_77ba                             ; $779b: $28 $1d

    push hl                                       ; $779d: $e5
    ld l, c                                       ; $779e: $69
    ld h, $00                                     ; $779f: $26 $00
    add hl, hl                                    ; $77a1: $29
    ld de, $c330                                  ; $77a2: $11 $30 $c3
    add hl, de                                    ; $77a5: $19
    inc hl                                        ; $77a6: $23
    ld a, [hl]                                    ; $77a7: $7e
    dec a                                         ; $77a8: $3d
    ld [hl], a                                    ; $77a9: $77
    pop hl                                        ; $77aa: $e1
    inc hl                                        ; $77ab: $23
    ld b, c                                       ; $77ac: $41
    inc c                                         ; $77ad: $0c
    or a                                          ; $77ae: $b7
    jr nz, jr_073_7798                            ; $77af: $20 $e7

    ld a, b                                       ; $77b1: $78
    call Call_073_77c4                            ; $77b2: $cd $c4 $77
    ld a, c                                       ; $77b5: $79
    cp $04                                        ; $77b6: $fe $04
    jr nz, jr_073_7798                            ; $77b8: $20 $de

jr_073_77ba:
    pop af                                        ; $77ba: $f1
    ldh [$96], a                                  ; $77bb: $e0 $96
    ldh [rSVBK], a                                ; $77bd: $e0 $70
    pop hl                                        ; $77bf: $e1
    pop de                                        ; $77c0: $d1
    pop bc                                        ; $77c1: $c1
    pop af                                        ; $77c2: $f1
    ret                                           ; $77c3: $c9


Call_073_77c4:
    push af                                       ; $77c4: $f5
    push bc                                       ; $77c5: $c5
    push de                                       ; $77c6: $d5
    push hl                                       ; $77c7: $e5
    push af                                       ; $77c8: $f5
    add sp, -$01                                  ; $77c9: $e8 $ff
    ld hl, sp+$00                                 ; $77cb: $f8 $00
    ld [hl], a                                    ; $77cd: $77
    ld h, $00                                     ; $77ce: $26 $00
    ld l, a                                       ; $77d0: $6f
    add hl, hl                                    ; $77d1: $29
    ld bc, $c330                                  ; $77d2: $01 $30 $c3
    add hl, bc                                    ; $77d5: $09
    ld a, [hl]                                    ; $77d6: $7e
    ld [$c33c], a                                 ; $77d7: $ea $3c $c3

jr_073_77da:
    ld a, [$c32f]                                 ; $77da: $fa $2f $c3
    ld l, a                                       ; $77dd: $6f
    ld h, $00                                     ; $77de: $26 $00
    add hl, hl                                    ; $77e0: $29
    ld bc, $403a                                  ; $77e1: $01 $3a $40
    add hl, bc                                    ; $77e4: $09
    ld a, [hl+]                                   ; $77e5: $2a
    ld h, [hl]                                    ; $77e6: $66
    ld l, a                                       ; $77e7: $6f
    ld a, [$c33c]                                 ; $77e8: $fa $3c $c3
    ld c, a                                       ; $77eb: $4f
    ld b, $00                                     ; $77ec: $06 $00
    add hl, bc                                    ; $77ee: $09
    ld a, [hl]                                    ; $77ef: $7e
    cp $ff                                        ; $77f0: $fe $ff
    jr nz, jr_073_7803                            ; $77f2: $20 $0f

    ld hl, sp+$00                                 ; $77f4: $f8 $00
    ld c, [hl]                                    ; $77f6: $4e
    ld b, $00                                     ; $77f7: $06 $00
    ld hl, $c338                                  ; $77f9: $21 $38 $c3
    add hl, bc                                    ; $77fc: $09
    ld a, [hl]                                    ; $77fd: $7e
    ld [$c33c], a                                 ; $77fe: $ea $3c $c3
    jr jr_073_77da                                ; $7801: $18 $d7

jr_073_7803:
    ld b, a                                       ; $7803: $47
    inc hl                                        ; $7804: $23
    ld c, [hl]                                    ; $7805: $4e
    inc hl                                        ; $7806: $23
    ld e, [hl]                                    ; $7807: $5e
    inc hl                                        ; $7808: $23
    ld a, [hl]                                    ; $7809: $7e
    push af                                       ; $780a: $f5
    push bc                                       ; $780b: $c5
    ld l, e                                       ; $780c: $6b
    ld h, $00                                     ; $780d: $26 $00
    add hl, hl                                    ; $780f: $29
    add hl, hl                                    ; $7810: $29
    add hl, hl                                    ; $7811: $29
    add hl, hl                                    ; $7812: $29
    ld de, $b000                                  ; $7813: $11 $00 $b0
    add hl, de                                    ; $7816: $19
    push hl                                       ; $7817: $e5
    ld l, b                                       ; $7818: $68
    ld h, $00                                     ; $7819: $26 $00

Call_073_781b:
    add hl, hl                                    ; $781b: $29
    add hl, hl                                    ; $781c: $29
    add hl, hl                                    ; $781d: $29
    add hl, hl                                    ; $781e: $29
    ld bc, $d800                                  ; $781f: $01 $00 $d8
    add hl, bc                                    ; $7822: $09
    pop de                                        ; $7823: $d1
    pop bc                                        ; $7824: $c1
    call Call_000_0468                            ; $7825: $cd $68 $04
    ld a, [$c33c]                                 ; $7828: $fa $3c $c3
    add $04                                       ; $782b: $c6 $04
    ld [$c33c], a                                 ; $782d: $ea $3c $c3
    pop af                                        ; $7830: $f1
    ld d, a                                       ; $7831: $57
    add sp, $01                                   ; $7832: $e8 $01
    pop af                                        ; $7834: $f1
    ld h, $00                                     ; $7835: $26 $00
    ld l, a                                       ; $7837: $6f
    add hl, hl                                    ; $7838: $29
    ld bc, $c330                                  ; $7839: $01 $30 $c3
    add hl, bc                                    ; $783c: $09
    ld a, [$c33c]                                 ; $783d: $fa $3c $c3
    ld [hl+], a                                   ; $7840: $22
    ld [hl], d                                    ; $7841: $72
    pop hl                                        ; $7842: $e1
    pop de                                        ; $7843: $d1
    pop bc                                        ; $7844: $c1
    pop af                                        ; $7845: $f1
    ret                                           ; $7846: $c9


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

Call_073_790e:
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

Jump_073_7b04:
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

Jump_073_7c64:
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

Jump_073_7f00:
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

Call_073_7f52:
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

Jump_073_7f7c:
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

Jump_073_7fe0:
    rst $38                                       ; $7fe0: $ff
    rst $38                                       ; $7fe1: $ff
    rst $38                                       ; $7fe2: $ff
    rst $38                                       ; $7fe3: $ff
    rst $38                                       ; $7fe4: $ff

Call_073_7fe5:
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
