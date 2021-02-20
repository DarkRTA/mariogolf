; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

    db $b1, $73

    cp c                                          ; $4002: $b9
    ld [hl], e                                    ; $4003: $73
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    inc [hl]                                      ; $4006: $34
    nop                                           ; $4007: $00
    add c                                         ; $4008: $81
    nop                                           ; $4009: $00
    ld sp, hl                                     ; $400a: $f9
    nop                                           ; $400b: $00
    cpl                                           ; $400c: $2f
    ld bc, $015d                                  ; $400d: $01 $5d $01
    xor a                                         ; $4010: $af
    ld bc, $020b                                  ; $4011: $01 $0b $02
    ld d, h                                       ; $4014: $54
    ld [bc], a                                    ; $4015: $02
    add c                                         ; $4016: $81
    ld [bc], a                                    ; $4017: $02
    jp c, Jump_000_2a02                           ; $4018: $da $02 $2a

    inc bc                                        ; $401b: $03
    ld d, h                                       ; $401c: $54
    inc bc                                        ; $401d: $03
    or b                                          ; $401e: $b0
    inc bc                                        ; $401f: $03
    ld d, l                                       ; $4020: $55
    inc b                                         ; $4021: $04
    and l                                         ; $4022: $a5
    inc b                                         ; $4023: $04
    inc b                                         ; $4024: $04
    dec b                                         ; $4025: $05
    ld h, h                                       ; $4026: $64
    dec b                                         ; $4027: $05
    add l                                         ; $4028: $85
    dec b                                         ; $4029: $05
    adc $05                                       ; $402a: $ce $05
    ld d, [hl]                                    ; $402c: $56
    ld b, $85                                     ; $402d: $06 $85
    ld b, $d3                                     ; $402f: $06 $d3
    ld b, $19                                     ; $4031: $06 $19
    rlca                                          ; $4033: $07
    ld [hl], d                                    ; $4034: $72
    rlca                                          ; $4035: $07
    adc $07                                       ; $4036: $ce $07
    inc e                                         ; $4038: $1c
    ld [$086b], sp                                ; $4039: $08 $6b $08
    jp nz, $f508                                  ; $403c: $c2 $08 $f5

    ld [$095a], sp                                ; $403f: $08 $5a $09
    and [hl]                                      ; $4042: $a6
    add hl, bc                                    ; $4043: $09
    inc bc                                        ; $4044: $03
    ld a, [bc]                                    ; $4045: $0a
    ld l, $0a                                     ; $4046: $2e $0a
    ld a, h                                       ; $4048: $7c
    ld a, [bc]                                    ; $4049: $0a
    nop                                           ; $404a: $00
    dec bc                                        ; $404b: $0b
    ccf                                           ; $404c: $3f
    dec bc                                        ; $404d: $0b
    sbc c                                         ; $404e: $99
    dec bc                                        ; $404f: $0b
    dec de                                        ; $4050: $1b
    inc c                                         ; $4051: $0c
    ld b, l                                       ; $4052: $45
    inc c                                         ; $4053: $0c
    jp Jump_000_3e0c                              ; $4054: $c3 $0c $3e


    dec c                                         ; $4057: $0d
    ld a, a                                       ; $4058: $7f
    dec c                                         ; $4059: $0d
    ld bc, $380e                                  ; $405a: $01 $0e $38
    ld c, $61                                     ; $405d: $0e $61
    ld c, $8e                                     ; $405f: $0e $8e
    ld c, $0d                                     ; $4061: $0e $0d
    rrca                                          ; $4063: $0f
    ld [hl], d                                    ; $4064: $72
    rrca                                          ; $4065: $0f
    cp c                                          ; $4066: $b9
    rrca                                          ; $4067: $0f
    dec de                                        ; $4068: $1b
    db $10                                        ; $4069: $10

jr_01f_406a:
    ld d, b                                       ; $406a: $50
    db $10                                        ; $406b: $10
    or h                                          ; $406c: $b4
    db $10                                        ; $406d: $10
    db $e3                                        ; $406e: $e3
    db $10                                        ; $406f: $10
    ld b, [hl]                                    ; $4070: $46
    ld de, $1175                                  ; $4071: $11 $75 $11
    cp l                                          ; $4074: $bd
    ld de, $11e0                                  ; $4075: $11 $e0 $11
    ld c, d                                       ; $4078: $4a
    ld [de], a                                    ; $4079: $12
    xor c                                         ; $407a: $a9
    ld [de], a                                    ; $407b: $12
    ldh a, [rNR12]                                ; $407c: $f0 $12
    ld h, $13                                     ; $407e: $26 $13
    adc d                                         ; $4080: $8a
    inc de                                        ; $4081: $13
    rst $20                                       ; $4082: $e7
    inc de                                        ; $4083: $13
    db $10                                        ; $4084: $10
    inc d                                         ; $4085: $14
    ld h, c                                       ; $4086: $61
    inc d                                         ; $4087: $14
    cp e                                          ; $4088: $bb
    inc d                                         ; $4089: $14
    jr nc, jr_01f_40a1                            ; $408a: $30 $15

    and c                                         ; $408c: $a1
    dec d                                         ; $408d: $15
    db $f4                                        ; $408e: $f4
    dec d                                         ; $408f: $15
    ld e, d                                       ; $4090: $5a
    ld d, $ae                                     ; $4091: $16 $ae
    ld d, $2d                                     ; $4093: $16 $2d

jr_01f_4095:
    rla                                           ; $4095: $17
    adc d                                         ; $4096: $8a
    rla                                           ; $4097: $17
    db $e3                                        ; $4098: $e3
    rla                                           ; $4099: $17
    inc d                                         ; $409a: $14
    jr @+$78                                      ; $409b: $18 $76

    jr @-$63                                      ; $409d: $18 $9b

    jr jr_01f_4095                                ; $409f: $18 $f4

jr_01f_40a1:
    jr jr_01f_40fd                                ; $40a1: $18 $5a

    add hl, de                                    ; $40a3: $19
    or h                                          ; $40a4: $b4
    add hl, de                                    ; $40a5: $19
    ld h, $1a                                     ; $40a6: $26 $1a
    cp l                                          ; $40a8: $bd
    ld a, [de]                                    ; $40a9: $1a
    inc e                                         ; $40aa: $1c
    dec de                                        ; $40ab: $1b
    ld [hl], h                                    ; $40ac: $74
    dec de                                        ; $40ad: $1b
    sub h                                         ; $40ae: $94
    dec de                                        ; $40af: $1b
    ld hl, sp+$1b                                 ; $40b0: $f8 $1b

jr_01f_40b2:
    dec h                                         ; $40b2: $25
    inc e                                         ; $40b3: $1c
    ld d, a                                       ; $40b4: $57
    inc e                                         ; $40b5: $1c
    sbc h                                         ; $40b6: $9c
    inc e                                         ; $40b7: $1c
    call z, $ff1c                                 ; $40b8: $cc $1c $ff
    inc e                                         ; $40bb: $1c
    ld c, [hl]                                    ; $40bc: $4e
    dec e                                         ; $40bd: $1d
    xor c                                         ; $40be: $a9
    dec e                                         ; $40bf: $1d
    ld hl, sp+$1d                                 ; $40c0: $f8 $1d
    ld c, e                                       ; $40c2: $4b
    ld e, $79                                     ; $40c3: $1e $79
    ld e, $d6                                     ; $40c5: $1e $d6
    ld e, $2e                                     ; $40c7: $1e $2e
    rra                                           ; $40c9: $1f
    ld l, b                                       ; $40ca: $68
    rra                                           ; $40cb: $1f
    sub l                                         ; $40cc: $95
    rra                                           ; $40cd: $1f
    db $f4                                        ; $40ce: $f4
    rra                                           ; $40cf: $1f
    jr nz, jr_01f_40f2                            ; $40d0: $20 $20

    ld [hl], c                                    ; $40d2: $71
    jr nz, jr_01f_406a                            ; $40d3: $20 $95

    jr nz, @-$11                                  ; $40d5: $20 $ed

    jr nz, jr_01f_4109                            ; $40d7: $20 $30

    ld hl, $218c                                  ; $40d9: $21 $8c $21
    call $fd21                                    ; $40dc: $cd $21 $fd
    ld hl, $2266                                  ; $40df: $21 $66 $22
    sub a                                         ; $40e2: $97
    ld [hl+], a                                   ; $40e3: $22
    ret c                                         ; $40e4: $d8

    ld [hl+], a                                   ; $40e5: $22
    inc [hl]                                      ; $40e6: $34
    inc hl                                        ; $40e7: $23
    ld d, d                                       ; $40e8: $52
    inc hl                                        ; $40e9: $23
    or h                                          ; $40ea: $b4
    inc hl                                        ; $40eb: $23
    dec d                                         ; $40ec: $15
    inc h                                         ; $40ed: $24
    ld h, h                                       ; $40ee: $64
    inc h                                         ; $40ef: $24
    cp a                                          ; $40f0: $bf
    inc h                                         ; $40f1: $24

jr_01f_40f2:
    jp hl                                         ; $40f2: $e9


    inc h                                         ; $40f3: $24
    inc l                                         ; $40f4: $2c
    dec h                                         ; $40f5: $25
    xor e                                         ; $40f6: $ab
    dec h                                         ; $40f7: $25
    db $e3                                        ; $40f8: $e3
    dec h                                         ; $40f9: $25
    ld b, l                                       ; $40fa: $45
    ld h, $a8                                     ; $40fb: $26 $a8

jr_01f_40fd:
    ld h, $f1                                     ; $40fd: $26 $f1
    ld h, $60                                     ; $40ff: $26 $60
    daa                                           ; $4101: $27
    add [hl]                                      ; $4102: $86
    daa                                           ; $4103: $27
    or l                                          ; $4104: $b5
    daa                                           ; $4105: $27
    call nc, Call_01f_4927                        ; $4106: $d4 $27 $49

jr_01f_4109:
    jr z, jr_01f_40b2                             ; $4109: $28 $a7

    jr z, jr_01f_411d                             ; $410b: $28 $10

    add hl, hl                                    ; $410d: $29
    ld d, c                                       ; $410e: $51
    add hl, hl                                    ; $410f: $29
    ld l, a                                       ; $4110: $6f
    add hl, hl                                    ; $4111: $29
    jp $2229                                      ; $4112: $c3 $29 $22


    ld a, [hl+]                                   ; $4115: $2a
    ld l, b                                       ; $4116: $68
    ld a, [hl+]                                   ; $4117: $2a
    sbc d                                         ; $4118: $9a
    ld a, [hl+]                                   ; $4119: $2a
    adc $2a                                       ; $411a: $ce $2a
    db $10                                        ; $411c: $10

jr_01f_411d:
    dec hl                                        ; $411d: $2b
    ld e, b                                       ; $411e: $58
    dec hl                                        ; $411f: $2b
    and b                                         ; $4120: $a0
    dec hl                                        ; $4121: $2b
    db $f4                                        ; $4122: $f4
    dec hl                                        ; $4123: $2b
    ld de, $722c                                  ; $4124: $11 $2c $72
    inc l                                         ; $4127: $2c
    call c, $652c                                 ; $4128: $dc $2c $65
    dec l                                         ; $412b: $2d
    adc b                                         ; $412c: $88
    dec l                                         ; $412d: $2d
    pop bc                                        ; $412e: $c1
    dec l                                         ; $412f: $2d
    jr jr_01f_4160                                ; $4130: $18 $2e

    ld c, [hl]                                    ; $4132: $4e
    ld l, $9f                                     ; $4133: $2e $9f
    ld l, $f7                                     ; $4135: $2e $f7
    ld l, $52                                     ; $4137: $2e $52
    cpl                                           ; $4139: $2f
    adc h                                         ; $413a: $8c
    cpl                                           ; $413b: $2f
    ret z                                         ; $413c: $c8

    cpl                                           ; $413d: $2f
    jr c, jr_01f_4170                             ; $413e: $38 $30

jr_01f_4140:
    adc l                                         ; $4140: $8d
    jr nc, jr_01f_4140                            ; $4141: $30 $fd

    jr nc, @+$5d                                  ; $4143: $30 $5b

    ld sp, $3194                                  ; $4145: $31 $94 $31
    jp z, Jump_000_3631                           ; $4148: $ca $31 $36

    ld [hl-], a                                   ; $414b: $32
    ld a, [hl-]                                   ; $414c: $3a
    ld [hl-], a                                   ; $414d: $32
    ld a, $32                                     ; $414e: $3e $32
    ld b, d                                       ; $4150: $42
    ld [hl-], a                                   ; $4151: $32
    ld b, [hl]                                    ; $4152: $46
    ld [hl-], a                                   ; $4153: $32

    db $57, $32

    ld b, e                                       ; $4156: $43
    ld h, c                                       ; $4157: $61
    ld h, h                                       ; $4158: $64
    ld h, h                                       ; $4159: $64
    ld l, c                                       ; $415a: $69
    ld h, l                                       ; $415b: $65
    jr nz, jr_01f_41cb                            ; $415c: $20 $6d

    ld h, c                                       ; $415e: $61
    ld [hl], e                                    ; $415f: $73

jr_01f_4160:
    ld [hl], h                                    ; $4160: $74
    ld h, l                                       ; $4161: $65
    ld [hl], d                                    ; $4162: $72
    ld [hl], e                                    ; $4163: $73
    jr nz, jr_01f_41d3                            ; $4164: $20 $6d

    ld h, c                                       ; $4166: $61
    ld l, [hl]                                    ; $4167: $6e
    ld h, c                                       ; $4168: $61
    ld h, a                                       ; $4169: $67
    ld h, l                                       ; $416a: $65
    ld bc, $6163                                  ; $416b: $01 $63 $61
    ld h, h                                       ; $416e: $64
    ld h, h                                       ; $416f: $64

jr_01f_4170:
    ld l, c                                       ; $4170: $69
    ld h, l                                       ; $4171: $65
    ld [hl], e                                    ; $4172: $73
    jr nz, jr_01f_41d6                            ; $4173: $20 $61

    ld l, [hl]                                    ; $4175: $6e
    ld h, h                                       ; $4176: $64
    jr nz, jr_01f_41ec                            ; $4177: $20 $73

    ld h, l                                       ; $4179: $65
    ld [hl], h                                    ; $417a: $74
    jr nz, jr_01f_41f0                            ; $417b: $20 $73

    ld [hl], h                                    ; $417d: $74
    ld h, c                                       ; $417e: $61
    ld [hl], d                                    ; $417f: $72
    ld [hl], h                                    ; $4180: $74
    ld bc, $6974                                  ; $4181: $01 $74 $69
    ld l, l                                       ; $4184: $6d
    ld h, l                                       ; $4185: $65
    ld [hl], e                                    ; $4186: $73
    ld l, $03                                     ; $4187: $2e $03
    nop                                           ; $4189: $00
    ld d, h                                       ; $418a: $54
    ld l, b                                       ; $418b: $68
    ld h, l                                       ; $418c: $65
    jr nz, jr_01f_41f3                            ; $418d: $20 $64

    ld l, c                                       ; $418f: $69
    ld [hl], e                                    ; $4190: $73
    ld [hl], h                                    ; $4191: $74
    ld h, c                                       ; $4192: $61
    ld l, [hl]                                    ; $4193: $6e
    ld h, e                                       ; $4194: $63
    ld h, l                                       ; $4195: $65
    jr nz, jr_01f_420c                            ; $4196: $20 $74

    ld l, b                                       ; $4198: $68
    ld h, l                                       ; $4199: $65
    ld bc, $6162                                  ; $419a: $01 $62 $61
    ld l, h                                       ; $419d: $6c
    ld l, h                                       ; $419e: $6c
    jr nz, jr_01f_4208                            ; $419f: $20 $67

    ld l, a                                       ; $41a1: $6f
    ld h, l                                       ; $41a2: $65
    ld [hl], e                                    ; $41a3: $73
    jr nz, jr_01f_420c                            ; $41a4: $20 $66

    ld [hl], d                                    ; $41a6: $72
    ld l, a                                       ; $41a7: $6f
    ld l, l                                       ; $41a8: $6d
    ld bc, $6874                                  ; $41a9: $01 $74 $68
    ld h, l                                       ; $41ac: $65
    jr nz, jr_01f_421c                            ; $41ad: $20 $6d

    ld l, a                                       ; $41af: $6f
    ld l, l                                       ; $41b0: $6d
    ld h, l                                       ; $41b1: $65
    ld l, [hl]                                    ; $41b2: $6e
    ld [hl], h                                    ; $41b3: $74
    jr nz, jr_01f_421f                            ; $41b4: $20 $69

    ld [hl], h                                    ; $41b6: $74
    daa                                           ; $41b7: $27
    ld [hl], e                                    ; $41b8: $73
    ld [bc], a                                    ; $41b9: $02
    ld l, b                                       ; $41ba: $68
    ld l, c                                       ; $41bb: $69
    ld [hl], h                                    ; $41bc: $74
    jr nz, jr_01f_4234                            ; $41bd: $20 $75

    ld l, [hl]                                    ; $41bf: $6e
    ld [hl], h                                    ; $41c0: $74
    ld l, c                                       ; $41c1: $69
    ld l, h                                       ; $41c2: $6c
    jr nz, @+$6b                                  ; $41c3: $20 $69

    ld [hl], h                                    ; $41c5: $74
    ld [hl], e                                    ; $41c6: $73
    jr nz, @+$68                                  ; $41c7: $20 $66

    ld l, c                                       ; $41c9: $69
    ld [hl], d                                    ; $41ca: $72

jr_01f_41cb:
    ld [hl], e                                    ; $41cb: $73
    ld [hl], h                                    ; $41cc: $74
    ld bc, $6f62                                  ; $41cd: $01 $62 $6f
    ld [hl], l                                    ; $41d0: $75
    ld l, [hl]                                    ; $41d1: $6e
    ld h, e                                       ; $41d2: $63

jr_01f_41d3:
    ld h, l                                       ; $41d3: $65
    ld l, $03                                     ; $41d4: $2e $03

jr_01f_41d6:
    nop                                           ; $41d6: $00
    ld b, c                                       ; $41d7: $41
    ld l, [hl]                                    ; $41d8: $6e
    jr nz, jr_01f_423c                            ; $41d9: $20 $61

    ld [hl], b                                    ; $41db: $70
    ld [hl], b                                    ; $41dc: $70
    ld [hl], d                                    ; $41dd: $72
    ld l, a                                       ; $41de: $6f
    ld h, c                                       ; $41df: $61
    ld h, e                                       ; $41e0: $63
    ld l, b                                       ; $41e1: $68
    jr nz, jr_01f_4257                            ; $41e2: $20 $73

    ld l, b                                       ; $41e4: $68
    ld l, a                                       ; $41e5: $6f
    ld [hl], h                                    ; $41e6: $74
    ld bc, $6e69                                  ; $41e7: $01 $69 $6e
    jr nz, @+$79                                  ; $41ea: $20 $77

jr_01f_41ec:
    ld l, b                                       ; $41ec: $68
    ld l, c                                       ; $41ed: $69
    ld h, e                                       ; $41ee: $63
    ld l, b                                       ; $41ef: $68

jr_01f_41f0:
    jr nz, jr_01f_4266                            ; $41f0: $20 $74

    ld l, b                                       ; $41f2: $68

jr_01f_41f3:
    ld h, l                                       ; $41f3: $65
    jr nz, jr_01f_4258                            ; $41f4: $20 $62

    ld h, c                                       ; $41f6: $61
    ld l, h                                       ; $41f7: $6c
    ld l, h                                       ; $41f8: $6c
    ld bc, $7369                                  ; $41f9: $01 $69 $73
    jr nz, @+$75                                  ; $41fc: $20 $73

    ld l, b                                       ; $41fe: $68
    ld l, a                                       ; $41ff: $6f
    ld [hl], h                                    ; $4200: $74
    jr nz, @+$71                                  ; $4201: $20 $6f

    ld l, [hl]                                    ; $4203: $6e
    jr nz, jr_01f_4267                            ; $4204: $20 $61

    jr nz, jr_01f_4270                            ; $4206: $20 $68

jr_01f_4208:
    ld l, c                                       ; $4208: $69
    ld h, a                                       ; $4209: $67
    ld l, b                                       ; $420a: $68
    ld [bc], a                                    ; $420b: $02

jr_01f_420c:
    ld [hl], h                                    ; $420c: $74
    ld [hl], d                                    ; $420d: $72
    ld h, c                                       ; $420e: $61
    ld l, d                                       ; $420f: $6a
    ld h, l                                       ; $4210: $65
    ld h, e                                       ; $4211: $63
    ld [hl], h                                    ; $4212: $74
    ld l, a                                       ; $4213: $6f
    ld [hl], d                                    ; $4214: $72
    ld a, c                                       ; $4215: $79
    inc l                                         ; $4216: $2c
    jr nz, jr_01f_428d                            ; $4217: $20 $74

    ld l, b                                       ; $4219: $68
    ld h, l                                       ; $421a: $65
    ld l, [hl]                                    ; $421b: $6e

jr_01f_421c:
    ld bc, $6f72                                  ; $421c: $01 $72 $6f

jr_01f_421f:
    ld l, h                                       ; $421f: $6c
    ld l, h                                       ; $4220: $6c
    ld [hl], e                                    ; $4221: $73
    jr nz, @+$76                                  ; $4222: $20 $74

    ld l, a                                       ; $4224: $6f
    ld [hl], a                                    ; $4225: $77
    ld h, c                                       ; $4226: $61
    ld [hl], d                                    ; $4227: $72
    ld h, h                                       ; $4228: $64
    jr nz, jr_01f_429f                            ; $4229: $20 $74

    ld l, b                                       ; $422b: $68
    ld h, l                                       ; $422c: $65
    ld bc, $7563                                  ; $422d: $01 $63 $75
    ld [hl], b                                    ; $4230: $70
    jr nz, jr_01f_4294                            ; $4231: $20 $61

    ld h, [hl]                                    ; $4233: $66

jr_01f_4234:
    ld [hl], h                                    ; $4234: $74
    ld h, l                                       ; $4235: $65
    ld [hl], d                                    ; $4236: $72
    jr nz, jr_01f_42a5                            ; $4237: $20 $6c

    ld h, c                                       ; $4239: $61
    ld l, [hl]                                    ; $423a: $6e
    ld h, h                                       ; $423b: $64

jr_01f_423c:
    ld l, c                                       ; $423c: $69
    ld l, [hl]                                    ; $423d: $6e
    ld h, a                                       ; $423e: $67
    ld [bc], a                                    ; $423f: $02
    ld l, a                                       ; $4240: $6f
    ld l, [hl]                                    ; $4241: $6e
    jr nz, jr_01f_42b8                            ; $4242: $20 $74

    ld l, b                                       ; $4244: $68
    ld h, l                                       ; $4245: $65
    jr nz, @+$69                                  ; $4246: $20 $67

    ld [hl], d                                    ; $4248: $72
    ld h, l                                       ; $4249: $65
    ld h, l                                       ; $424a: $65
    ld l, [hl]                                    ; $424b: $6e
    ld l, $03                                     ; $424c: $2e $03
    nop                                           ; $424e: $00
    ld d, h                                       ; $424f: $54
    ld l, a                                       ; $4250: $6f
    jr nz, jr_01f_42bb                            ; $4251: $20 $68

    ld l, c                                       ; $4253: $69
    ld [hl], h                                    ; $4254: $74
    jr nz, jr_01f_42cb                            ; $4255: $20 $74

jr_01f_4257:
    ld l, b                                       ; $4257: $68

jr_01f_4258:
    ld h, l                                       ; $4258: $65
    jr nz, @+$64                                  ; $4259: $20 $62

    ld h, c                                       ; $425b: $61
    ld l, h                                       ; $425c: $6c
    ld l, h                                       ; $425d: $6c
    ld bc, $6e61                                  ; $425e: $01 $61 $6e
    ld h, h                                       ; $4261: $64
    jr nz, @+$6a                                  ; $4262: $20 $68

    ld l, a                                       ; $4264: $6f
    ld l, h                                       ; $4265: $6c

jr_01f_4266:
    ld h, l                                       ; $4266: $65

jr_01f_4267:
    jr nz, @+$71                                  ; $4267: $20 $6f

    ld [hl], l                                    ; $4269: $75
    ld [hl], h                                    ; $426a: $74
    jr nz, jr_01f_42d3                            ; $426b: $20 $66

    ld [hl], d                                    ; $426d: $72
    ld l, a                                       ; $426e: $6f
    ld l, l                                       ; $426f: $6d

jr_01f_4270:
    ld bc, $756f                                  ; $4270: $01 $6f $75
    ld [hl], h                                    ; $4273: $74
    ld [hl], e                                    ; $4274: $73
    ld l, c                                       ; $4275: $69
    ld h, h                                       ; $4276: $64
    ld h, l                                       ; $4277: $65
    jr nz, @+$76                                  ; $4278: $20 $74

    ld l, b                                       ; $427a: $68
    ld h, l                                       ; $427b: $65
    jr nz, jr_01f_42e5                            ; $427c: $20 $67

    ld [hl], d                                    ; $427e: $72
    ld h, l                                       ; $427f: $65
    ld h, l                                       ; $4280: $65
    ld l, [hl]                                    ; $4281: $6e
    ld l, $03                                     ; $4282: $2e $03
    nop                                           ; $4284: $00
    ld c, c                                       ; $4285: $49
    ld [hl], h                                    ; $4286: $74
    daa                                           ; $4287: $27
    ld [hl], e                                    ; $4288: $73
    jr nz, jr_01f_42ec                            ; $4289: $20 $61

    jr nz, jr_01f_42c2                            ; $428b: $20 $35

jr_01f_428d:
    jr nz, jr_01f_4306                            ; $428d: $20 $77

    ld l, a                                       ; $428f: $6f
    ld l, a                                       ; $4290: $6f
    ld h, h                                       ; $4291: $64
    ld l, $20                                     ; $4292: $2e $20

jr_01f_4294:
    ld e, c                                       ; $4294: $59
    ld l, a                                       ; $4295: $6f
    ld [hl], l                                    ; $4296: $75
    ld bc, $6f64                                  ; $4297: $01 $64 $6f
    ld l, [hl]                                    ; $429a: $6e
    daa                                           ; $429b: $27
    ld [hl], h                                    ; $429c: $74
    jr nz, jr_01f_4307                            ; $429d: $20 $68

jr_01f_429f:
    ld h, c                                       ; $429f: $61
    halt                                          ; $42a0: $76
    ld h, l                                       ; $42a1: $65
    jr nz, jr_01f_4313                            ; $42a2: $20 $6f

    ld l, [hl]                                    ; $42a4: $6e

jr_01f_42a5:
    ld h, l                                       ; $42a5: $65
    inc l                                         ; $42a6: $2c
    ld bc, $6874                                  ; $42a7: $01 $74 $68
    ld l, a                                       ; $42aa: $6f
    ld [hl], l                                    ; $42ab: $75
    ld h, a                                       ; $42ac: $67
    ld l, b                                       ; $42ad: $68
    ld l, $2e                                     ; $42ae: $2e $2e
    ld l, $03                                     ; $42b0: $2e $03
    nop                                           ; $42b2: $00
    ld b, c                                       ; $42b3: $41
    jr nz, @+$65                                  ; $42b4: $20 $63

    ld l, a                                       ; $42b6: $6f
    ld l, [hl]                                    ; $42b7: $6e

jr_01f_42b8:
    ld [hl], h                                    ; $42b8: $74
    ld h, l                                       ; $42b9: $65
    ld [hl], e                                    ; $42ba: $73

jr_01f_42bb:
    ld [hl], h                                    ; $42bb: $74
    jr nz, jr_01f_4332                            ; $42bc: $20 $74

    ld l, a                                       ; $42be: $6f
    jr nz, @+$75                                  ; $42bf: $20 $73

    ld h, l                                       ; $42c1: $65

jr_01f_42c2:
    ld h, l                                       ; $42c2: $65
    ld bc, $6877                                  ; $42c3: $01 $77 $68
    ld l, a                                       ; $42c6: $6f
    jr nz, jr_01f_432c                            ; $42c7: $20 $63

    ld h, c                                       ; $42c9: $61
    ld l, [hl]                                    ; $42ca: $6e

jr_01f_42cb:
    jr nz, @+$69                                  ; $42cb: $20 $67

    ld h, l                                       ; $42cd: $65
    ld [hl], h                                    ; $42ce: $74
    ld bc, $6c63                                  ; $42cf: $01 $63 $6c
    ld l, a                                       ; $42d2: $6f

jr_01f_42d3:
    ld [hl], e                                    ; $42d3: $73
    ld h, l                                       ; $42d4: $65
    ld [hl], e                                    ; $42d5: $73
    ld [hl], h                                    ; $42d6: $74
    jr nz, @+$76                                  ; $42d7: $20 $74

    ld l, a                                       ; $42d9: $6f
    jr nz, jr_01f_4350                            ; $42da: $20 $74

    ld l, b                                       ; $42dc: $68
    ld h, l                                       ; $42dd: $65
    jr nz, jr_01f_4350                            ; $42de: $20 $70

    ld l, c                                       ; $42e0: $69
    ld l, [hl]                                    ; $42e1: $6e
    ld [bc], a                                    ; $42e2: $02
    ld l, a                                       ; $42e3: $6f
    ld l, [hl]                                    ; $42e4: $6e

jr_01f_42e5:
    jr nz, jr_01f_435b                            ; $42e5: $20 $74

    ld l, b                                       ; $42e7: $68
    ld h, l                                       ; $42e8: $65
    jr nz, @+$76                                  ; $42e9: $20 $74

    ld h, l                                       ; $42eb: $65

jr_01f_42ec:
    ld h, l                                       ; $42ec: $65
    jr nz, jr_01f_4362                            ; $42ed: $20 $73

    ld l, b                                       ; $42ef: $68
    ld l, a                                       ; $42f0: $6f
    ld [hl], h                                    ; $42f1: $74
    ld bc, $6e6f                                  ; $42f2: $01 $6f $6e
    jr nz, @+$63                                  ; $42f5: $20 $61

    jr nz, @+$75                                  ; $42f7: $20 $73

    ld l, b                                       ; $42f9: $68
    ld l, a                                       ; $42fa: $6f
    ld [hl], d                                    ; $42fb: $72
    ld [hl], h                                    ; $42fc: $74
    jr nz, jr_01f_4367                            ; $42fd: $20 $68

    ld l, a                                       ; $42ff: $6f
    ld l, h                                       ; $4300: $6c
    ld h, l                                       ; $4301: $65
    ld l, $03                                     ; $4302: $2e $03
    nop                                           ; $4304: $00
    ld c, c                                       ; $4305: $49

jr_01f_4306:
    ld [hl], h                                    ; $4306: $74

jr_01f_4307:
    daa                                           ; $4307: $27
    ld [hl], e                                    ; $4308: $73
    jr nz, jr_01f_437f                            ; $4309: $20 $74

    ld l, b                                       ; $430b: $68
    ld h, l                                       ; $430c: $65
    jr nz, @+$76                                  ; $430d: $20 $74

    ld l, b                                       ; $430f: $68
    ld l, c                                       ; $4310: $69
    ld l, [hl]                                    ; $4311: $6e
    ld h, a                                       ; $4312: $67

jr_01f_4313:
    jr nz, jr_01f_438e                            ; $4313: $20 $79

    ld l, a                                       ; $4315: $6f
    ld [hl], l                                    ; $4316: $75
    ld bc, $7375                                  ; $4317: $01 $75 $73
    ld h, l                                       ; $431a: $65
    jr nz, @+$76                                  ; $431b: $20 $74

    ld l, a                                       ; $431d: $6f
    jr nz, jr_01f_4388                            ; $431e: $20 $68

    ld l, c                                       ; $4320: $69
    ld [hl], h                                    ; $4321: $74
    jr nz, @+$76                                  ; $4322: $20 $74

    ld l, b                                       ; $4324: $68
    ld h, l                                       ; $4325: $65
    jr nz, @+$64                                  ; $4326: $20 $62

    ld h, c                                       ; $4328: $61
    ld l, h                                       ; $4329: $6c
    ld l, h                                       ; $432a: $6c
    inc l                                         ; $432b: $2c

jr_01f_432c:
    ld bc, $6973                                  ; $432c: $01 $73 $69
    ld l, h                                       ; $432f: $6c
    ld l, h                                       ; $4330: $6c
    ld a, c                                       ; $4331: $79

jr_01f_4332:
    ld hl, $5402                                  ; $4332: $21 $02 $54
    ld l, b                                       ; $4335: $68
    ld h, l                                       ; $4336: $65
    ld [hl], d                                    ; $4337: $72
    ld h, l                                       ; $4338: $65
    jr nz, jr_01f_439c                            ; $4339: $20 $61

    ld [hl], d                                    ; $433b: $72
    ld h, l                                       ; $433c: $65
    jr nz, jr_01f_43b6                            ; $433d: $20 $77

    ld l, a                                       ; $433f: $6f
    ld l, a                                       ; $4340: $6f
    ld h, h                                       ; $4341: $64
    ld [hl], e                                    ; $4342: $73
    inc l                                         ; $4343: $2c
    ld bc, $6577                                  ; $4344: $01 $77 $65
    ld h, h                                       ; $4347: $64
    ld h, a                                       ; $4348: $67
    ld h, l                                       ; $4349: $65
    ld [hl], e                                    ; $434a: $73
    inc l                                         ; $434b: $2c
    jr nz, jr_01f_43b7                            ; $434c: $20 $69

    ld [hl], d                                    ; $434e: $72
    ld l, a                                       ; $434f: $6f

jr_01f_4350:
    ld l, [hl]                                    ; $4350: $6e
    ld [hl], e                                    ; $4351: $73
    jr nz, jr_01f_43b5                            ; $4352: $20 $61

    ld l, [hl]                                    ; $4354: $6e
    ld h, h                                       ; $4355: $64
    ld bc, $7570                                  ; $4356: $01 $70 $75
    ld [hl], h                                    ; $4359: $74
    ld [hl], h                                    ; $435a: $74

jr_01f_435b:
    ld h, l                                       ; $435b: $65
    ld [hl], d                                    ; $435c: $72
    ld [hl], e                                    ; $435d: $73
    ld l, $03                                     ; $435e: $2e $03
    nop                                           ; $4360: $00
    ld d, h                                       ; $4361: $54

jr_01f_4362:
    ld l, b                                       ; $4362: $68
    ld h, l                                       ; $4363: $65
    jr nz, jr_01f_43dd                            ; $4364: $20 $77

    ld l, c                                       ; $4366: $69

jr_01f_4367:
    ld l, [hl]                                    ; $4367: $6e
    ld l, [hl]                                    ; $4368: $6e
    ld h, l                                       ; $4369: $65
    ld [hl], d                                    ; $436a: $72
    jr nz, jr_01f_43dc                            ; $436b: $20 $6f

    ld h, [hl]                                    ; $436d: $66
    jr nz, jr_01f_43d1                            ; $436e: $20 $61

    ld bc, $6c63                                  ; $4370: $01 $63 $6c
    ld [hl], l                                    ; $4373: $75
    ld h, d                                       ; $4374: $62
    jr nz, jr_01f_43da                            ; $4375: $20 $63

    ld l, b                                       ; $4377: $68
    ld h, c                                       ; $4378: $61
    ld l, l                                       ; $4379: $6d
    ld [hl], b                                    ; $437a: $70
    ld l, c                                       ; $437b: $69
    ld l, a                                       ; $437c: $6f
    ld l, [hl]                                    ; $437d: $6e
    ld [hl], e                                    ; $437e: $73

jr_01f_437f:
    ld l, b                                       ; $437f: $68
    ld l, c                                       ; $4380: $69
    ld [hl], b                                    ; $4381: $70
    ld l, $01                                     ; $4382: $2e $01
    ld c, a                                       ; $4384: $4f
    ld h, [hl]                                    ; $4385: $66
    ld [hl], h                                    ; $4386: $74
    ld h, l                                       ; $4387: $65

jr_01f_4388:
    ld l, [hl]                                    ; $4388: $6e
    jr nz, jr_01f_43ee                            ; $4389: $20 $63

    ld h, c                                       ; $438b: $61
    ld l, h                                       ; $438c: $6c
    ld l, h                                       ; $438d: $6c

jr_01f_438e:
    ld h, l                                       ; $438e: $65
    ld h, h                                       ; $438f: $64
    jr nz, jr_01f_43f3                            ; $4390: $20 $61

    ld [bc], a                                    ; $4392: $02
    ld h, e                                       ; $4393: $63
    ld l, h                                       ; $4394: $6c
    ld [hl], l                                    ; $4395: $75
    ld h, d                                       ; $4396: $62
    jr nz, @+$65                                  ; $4397: $20 $63

    ld l, b                                       ; $4399: $68
    ld h, c                                       ; $439a: $61
    ld l, l                                       ; $439b: $6d

jr_01f_439c:
    ld [hl], b                                    ; $439c: $70
    jr nz, jr_01f_4405                            ; $439d: $20 $66

    ld l, a                                       ; $439f: $6f
    ld [hl], d                                    ; $43a0: $72
    ld bc, $6873                                  ; $43a1: $01 $73 $68
    ld l, a                                       ; $43a4: $6f
    ld [hl], d                                    ; $43a5: $72
    ld [hl], h                                    ; $43a6: $74
    ld l, $03                                     ; $43a7: $2e $03
    nop                                           ; $43a9: $00
    ld b, c                                       ; $43aa: $41
    jr nz, @+$65                                  ; $43ab: $20 $63

    ld l, b                                       ; $43ad: $68
    ld h, c                                       ; $43ae: $61
    ld l, l                                       ; $43af: $6d
    ld [hl], b                                    ; $43b0: $70
    ld l, c                                       ; $43b1: $69
    ld l, a                                       ; $43b2: $6f
    ld l, [hl]                                    ; $43b3: $6e
    ld [hl], e                                    ; $43b4: $73

jr_01f_43b5:
    ld l, b                                       ; $43b5: $68

jr_01f_43b6:
    ld l, c                                       ; $43b6: $69

jr_01f_43b7:
    ld [hl], b                                    ; $43b7: $70
    ld bc, $7073                                  ; $43b8: $01 $73 $70
    ld l, a                                       ; $43bb: $6f
    ld l, [hl]                                    ; $43bc: $6e
    ld [hl], e                                    ; $43bd: $73
    ld l, a                                       ; $43be: $6f
    ld [hl], d                                    ; $43bf: $72
    ld h, l                                       ; $43c0: $65
    ld h, h                                       ; $43c1: $64
    jr nz, @+$64                                  ; $43c2: $20 $62

    ld a, c                                       ; $43c4: $79
    jr nz, jr_01f_4428                            ; $43c5: $20 $61

    ld bc, $6f63                                  ; $43c7: $01 $63 $6f
    ld [hl], l                                    ; $43ca: $75
    ld l, [hl]                                    ; $43cb: $6e
    ld [hl], h                                    ; $43cc: $74
    ld [hl], d                                    ; $43cd: $72
    ld a, c                                       ; $43ce: $79
    jr nz, jr_01f_4434                            ; $43cf: $20 $63

jr_01f_43d1:
    ld l, h                                       ; $43d1: $6c
    ld [hl], l                                    ; $43d2: $75
    ld h, d                                       ; $43d3: $62
    ld l, $03                                     ; $43d4: $2e $03
    nop                                           ; $43d6: $00
    ld d, h                                       ; $43d7: $54
    ld l, b                                       ; $43d8: $68
    ld h, l                                       ; $43d9: $65

jr_01f_43da:
    jr nz, jr_01f_443f                            ; $43da: $20 $63

jr_01f_43dc:
    ld l, h                                       ; $43dc: $6c

jr_01f_43dd:
    ld [hl], l                                    ; $43dd: $75
    ld h, d                                       ; $43de: $62
    ld [hl], e                                    ; $43df: $73
    jr nz, jr_01f_4445                            ; $43e0: $20 $63

    ld h, c                                       ; $43e2: $61
    ld [hl], d                                    ; $43e3: $72
    ld [hl], d                                    ; $43e4: $72
    ld l, c                                       ; $43e5: $69
    ld h, l                                       ; $43e6: $65
    ld h, h                                       ; $43e7: $64
    ld bc, $6e69                                  ; $43e8: $01 $69 $6e
    jr nz, jr_01f_4461                            ; $43eb: $20 $74

    ld l, b                                       ; $43ed: $68

jr_01f_43ee:
    ld h, l                                       ; $43ee: $65
    jr nz, @+$65                                  ; $43ef: $20 $63

    ld h, c                                       ; $43f1: $61
    ld h, h                                       ; $43f2: $64

jr_01f_43f3:
    ld h, h                                       ; $43f3: $64
    ld l, c                                       ; $43f4: $69
    ld h, l                                       ; $43f5: $65
    jr nz, @+$64                                  ; $43f6: $20 $62

    ld h, c                                       ; $43f8: $61
    ld h, a                                       ; $43f9: $67
    ld bc, $6877                                  ; $43fa: $01 $77 $68
    ld l, c                                       ; $43fd: $69
    ld l, h                                       ; $43fe: $6c
    ld h, l                                       ; $43ff: $65
    jr nz, jr_01f_4472                            ; $4400: $20 $70

    ld l, h                                       ; $4402: $6c
    ld h, c                                       ; $4403: $61
    ld a, c                                       ; $4404: $79

jr_01f_4405:
    ld l, c                                       ; $4405: $69
    ld l, [hl]                                    ; $4406: $6e
    ld h, a                                       ; $4407: $67
    ld l, $02                                     ; $4408: $2e $02
    ld d, d                                       ; $440a: $52
    ld [hl], l                                    ; $440b: $75
    ld l, h                                       ; $440c: $6c
    ld h, l                                       ; $440d: $65
    ld [hl], e                                    ; $440e: $73
    jr nz, jr_01f_4481                            ; $440f: $20 $70

    ld h, l                                       ; $4411: $65
    ld [hl], d                                    ; $4412: $72
    ld l, l                                       ; $4413: $6d
    ld l, c                                       ; $4414: $69
    ld [hl], h                                    ; $4415: $74
    jr nz, jr_01f_448d                            ; $4416: $20 $75

    ld [hl], b                                    ; $4418: $70
    jr nz, jr_01f_448f                            ; $4419: $20 $74

    ld l, a                                       ; $441b: $6f
    ld bc, $3431                                  ; $441c: $01 $31 $34
    jr nz, @+$65                                  ; $441f: $20 $63

    ld l, h                                       ; $4421: $6c
    ld [hl], l                                    ; $4422: $75
    ld h, d                                       ; $4423: $62
    ld [hl], e                                    ; $4424: $73
    jr nz, jr_01f_4497                            ; $4425: $20 $70

    ld h, l                                       ; $4427: $65

jr_01f_4428:
    ld [hl], d                                    ; $4428: $72
    jr nz, jr_01f_449e                            ; $4429: $20 $73

    ld h, l                                       ; $442b: $65
    ld [hl], h                                    ; $442c: $74
    ld l, $03                                     ; $442d: $2e $03
    nop                                           ; $442f: $00
    ld b, c                                       ; $4430: $41
    jr nz, jr_01f_449a                            ; $4431: $20 $67

    ld l, a                                       ; $4433: $6f

jr_01f_4434:
    ld l, h                                       ; $4434: $6c
    ld h, [hl]                                    ; $4435: $66
    jr nz, @+$65                                  ; $4436: $20 $63

    ld l, h                                       ; $4438: $6c
    ld [hl], l                                    ; $4439: $75
    ld h, d                                       ; $443a: $62
    daa                                           ; $443b: $27
    ld [hl], e                                    ; $443c: $73
    jr nz, jr_01f_44ac                            ; $443d: $20 $6d

jr_01f_443f:
    ld h, c                                       ; $443f: $61
    ld l, c                                       ; $4440: $69
    ld l, [hl]                                    ; $4441: $6e
    ld bc, $7562                                  ; $4442: $01 $62 $75

jr_01f_4445:
    ld l, c                                       ; $4445: $69
    ld l, h                                       ; $4446: $6c
    ld h, h                                       ; $4447: $64
    ld l, c                                       ; $4448: $69
    ld l, [hl]                                    ; $4449: $6e
    ld h, a                                       ; $444a: $67
    ld l, $20                                     ; $444b: $2e $20
    ld d, h                                       ; $444d: $54
    ld l, b                                       ; $444e: $68
    ld h, c                                       ; $444f: $61
    ld [hl], h                                    ; $4450: $74
    daa                                           ; $4451: $27
    ld [hl], e                                    ; $4452: $73
    ld bc, $6877                                  ; $4453: $01 $77 $68
    ld h, l                                       ; $4456: $65
    ld [hl], d                                    ; $4457: $72
    ld h, l                                       ; $4458: $65
    jr nz, jr_01f_44cf                            ; $4459: $20 $74

    ld l, b                                       ; $445b: $68
    ld h, l                                       ; $445c: $65
    jr nz, jr_01f_44cb                            ; $445d: $20 $6c

    ld l, a                                       ; $445f: $6f
    ld [hl], l                                    ; $4460: $75

jr_01f_4461:
    ld l, [hl]                                    ; $4461: $6e
    ld h, a                                       ; $4462: $67
    ld h, l                                       ; $4463: $65
    ld [bc], a                                    ; $4464: $02
    ld h, c                                       ; $4465: $61
    ld l, [hl]                                    ; $4466: $6e
    ld h, h                                       ; $4467: $64
    jr nz, jr_01f_44de                            ; $4468: $20 $74

    ld l, b                                       ; $446a: $68
    ld h, l                                       ; $446b: $65
    jr nz, jr_01f_44da                            ; $446c: $20 $6c

    ld l, a                                       ; $446e: $6f
    ld h, e                                       ; $446f: $63
    ld l, e                                       ; $4470: $6b
    ld h, l                                       ; $4471: $65

jr_01f_4472:
    ld [hl], d                                    ; $4472: $72
    ld bc, $6f72                                  ; $4473: $01 $72 $6f
    ld l, a                                       ; $4476: $6f
    ld l, l                                       ; $4477: $6d
    ld [hl], e                                    ; $4478: $73
    jr nz, jr_01f_44dc                            ; $4479: $20 $61

    ld [hl], d                                    ; $447b: $72
    ld h, l                                       ; $447c: $65
    ld l, $03                                     ; $447d: $2e $03
    nop                                           ; $447f: $00
    ld d, h                                       ; $4480: $54

jr_01f_4481:
    ld l, b                                       ; $4481: $68
    ld h, l                                       ; $4482: $65
    jr nz, jr_01f_44f5                            ; $4483: $20 $70

    ld l, h                                       ; $4485: $6c
    ld h, c                                       ; $4486: $61
    ld h, e                                       ; $4487: $63
    ld h, l                                       ; $4488: $65
    jr nz, jr_01f_4502                            ; $4489: $20 $77

    ld l, b                                       ; $448b: $68
    ld h, l                                       ; $448c: $65

jr_01f_448d:
    ld [hl], d                                    ; $448d: $72
    ld h, l                                       ; $448e: $65

jr_01f_448f:
    ld bc, $6f79                                  ; $448f: $01 $79 $6f
    ld [hl], l                                    ; $4492: $75
    jr nz, jr_01f_4505                            ; $4493: $20 $70

    ld l, h                                       ; $4495: $6c
    ld h, c                                       ; $4496: $61

jr_01f_4497:
    ld a, c                                       ; $4497: $79
    jr nz, @+$63                                  ; $4498: $20 $61

jr_01f_449a:
    jr nz, jr_01f_4503                            ; $449a: $20 $67

    ld h, c                                       ; $449c: $61
    ld l, l                                       ; $449d: $6d

jr_01f_449e:
    ld h, l                                       ; $449e: $65
    ld bc, $666f                                  ; $449f: $01 $6f $66
    jr nz, jr_01f_450b                            ; $44a2: $20 $67

    ld l, a                                       ; $44a4: $6f
    ld l, h                                       ; $44a5: $6c
    ld h, [hl]                                    ; $44a6: $66
    ld l, $03                                     ; $44a7: $2e $03
    nop                                           ; $44a9: $00
    ld d, h                                       ; $44aa: $54
    ld l, b                                       ; $44ab: $68

jr_01f_44ac:
    ld h, l                                       ; $44ac: $65
    jr nz, jr_01f_4522                            ; $44ad: $20 $73

    ld l, b                                       ; $44af: $68
    ld h, c                                       ; $44b0: $61
    ld [hl], b                                    ; $44b1: $70
    ld h, l                                       ; $44b2: $65
    jr nz, jr_01f_4524                            ; $44b3: $20 $6f

    ld h, [hl]                                    ; $44b5: $66
    jr nz, @+$63                                  ; $44b6: $20 $61

    jr nz, jr_01f_451d                            ; $44b8: $20 $63

    ld l, a                                       ; $44ba: $6f
    ld [hl], l                                    ; $44bb: $75
    ld [hl], d                                    ; $44bc: $72
    ld [hl], e                                    ; $44bd: $73
    ld h, l                                       ; $44be: $65
    ld bc, $6e61                                  ; $44bf: $01 $61 $6e
    ld h, h                                       ; $44c2: $64
    jr nz, jr_01f_4531                            ; $44c3: $20 $6c

    ld l, a                                       ; $44c5: $6f
    ld h, e                                       ; $44c6: $63
    ld h, c                                       ; $44c7: $61
    ld [hl], h                                    ; $44c8: $74
    ld l, c                                       ; $44c9: $69
    ld l, a                                       ; $44ca: $6f

jr_01f_44cb:
    ld l, [hl]                                    ; $44cb: $6e
    jr nz, @+$71                                  ; $44cc: $20 $6f

    ld h, [hl]                                    ; $44ce: $66

jr_01f_44cf:
    jr nz, jr_01f_4534                            ; $44cf: $20 $63

    ld [hl], l                                    ; $44d1: $75
    ld [hl], b                                    ; $44d2: $70
    ld [hl], e                                    ; $44d3: $73
    inc l                                         ; $44d4: $2c
    ld bc, $7267                                  ; $44d5: $01 $67 $72
    ld h, l                                       ; $44d8: $65
    ld h, l                                       ; $44d9: $65

jr_01f_44da:
    ld l, [hl]                                    ; $44da: $6e
    ld [hl], e                                    ; $44db: $73

jr_01f_44dc:
    jr nz, jr_01f_453f                            ; $44dc: $20 $61

jr_01f_44de:
    ld l, [hl]                                    ; $44de: $6e
    ld h, h                                       ; $44df: $64
    jr nz, jr_01f_454a                            ; $44e0: $20 $68

    ld h, c                                       ; $44e2: $61
    ld a, d                                       ; $44e3: $7a
    ld h, c                                       ; $44e4: $61
    ld [hl], d                                    ; $44e5: $72
    ld h, h                                       ; $44e6: $64
    ld [hl], e                                    ; $44e7: $73
    ld l, $02                                     ; $44e8: $2e $02
    ld d, l                                       ; $44ea: $55
    ld [hl], e                                    ; $44eb: $73
    ld h, l                                       ; $44ec: $65
    jr nz, jr_01f_4558                            ; $44ed: $20 $69

    ld [hl], h                                    ; $44ef: $74
    jr nz, jr_01f_4566                            ; $44f0: $20 $74

    ld l, a                                       ; $44f2: $6f
    jr nz, jr_01f_4565                            ; $44f3: $20 $70

jr_01f_44f5:
    ld l, h                                       ; $44f5: $6c
    ld h, c                                       ; $44f6: $61
    ld l, [hl]                                    ; $44f7: $6e
    jr nz, jr_01f_455b                            ; $44f8: $20 $61

    ld bc, $7473                                  ; $44fa: $01 $73 $74
    ld [hl], d                                    ; $44fd: $72
    ld h, c                                       ; $44fe: $61
    ld [hl], h                                    ; $44ff: $74
    ld h, l                                       ; $4500: $65
    ld h, a                                       ; $4501: $67

jr_01f_4502:
    ld a, c                                       ; $4502: $79

jr_01f_4503:
    ld l, $03                                     ; $4503: $2e $03

jr_01f_4505:
    nop                                           ; $4505: $00
    ld b, c                                       ; $4506: $41
    ld l, [hl]                                    ; $4507: $6e
    ld l, a                                       ; $4508: $6f
    ld [hl], h                                    ; $4509: $74
    ld l, b                                       ; $450a: $68

jr_01f_450b:
    ld h, l                                       ; $450b: $65
    ld [hl], d                                    ; $450c: $72
    jr nz, @+$6f                                  ; $450d: $20 $6d

    ld h, l                                       ; $450f: $65
    ld h, c                                       ; $4510: $61
    ld l, [hl]                                    ; $4511: $6e
    ld [hl], e                                    ; $4512: $73
    jr nz, jr_01f_457b                            ; $4513: $20 $66

    ld l, a                                       ; $4515: $6f
    ld [hl], d                                    ; $4516: $72
    ld bc, $6964                                  ; $4517: $01 $64 $69
    ld [hl], e                                    ; $451a: $73
    ld [hl], h                                    ; $451b: $74
    ld l, c                                       ; $451c: $69

jr_01f_451d:
    ld l, [hl]                                    ; $451d: $6e
    ld h, a                                       ; $451e: $67
    ld [hl], l                                    ; $451f: $75
    ld l, c                                       ; $4520: $69
    ld [hl], e                                    ; $4521: $73

jr_01f_4522:
    ld l, b                                       ; $4522: $68
    ld l, c                                       ; $4523: $69

jr_01f_4524:
    ld l, [hl]                                    ; $4524: $6e
    ld h, a                                       ; $4525: $67
    jr nz, jr_01f_458b                            ; $4526: $20 $63

    ld l, a                                       ; $4528: $6f
    ld [hl], l                                    ; $4529: $75
    ld [hl], d                                    ; $452a: $72
    ld [hl], e                                    ; $452b: $73
    ld h, l                                       ; $452c: $65
    ld bc, $6964                                  ; $452d: $01 $64 $69
    ld h, [hl]                                    ; $4530: $66

jr_01f_4531:
    ld h, [hl]                                    ; $4531: $66
    ld l, c                                       ; $4532: $69
    ld h, e                                       ; $4533: $63

jr_01f_4534:
    ld [hl], l                                    ; $4534: $75
    ld l, h                                       ; $4535: $6c
    ld [hl], h                                    ; $4536: $74
    ld a, c                                       ; $4537: $79
    ld l, $02                                     ; $4538: $2e $02
    ld b, d                                       ; $453a: $42
    ld a, c                                       ; $453b: $79
    jr nz, jr_01f_45a1                            ; $453c: $20 $63

    ld l, a                                       ; $453e: $6f

jr_01f_453f:
    ld l, l                                       ; $453f: $6d
    ld [hl], b                                    ; $4540: $70
    ld h, c                                       ; $4541: $61
    ld [hl], d                                    ; $4542: $72
    ld l, c                                       ; $4543: $69
    ld l, [hl]                                    ; $4544: $6e
    ld h, a                                       ; $4545: $67
    jr nz, jr_01f_45ba                            ; $4546: $20 $72

    ld h, c                                       ; $4548: $61
    ld [hl], h                                    ; $4549: $74

jr_01f_454a:
    ld l, c                                       ; $454a: $69
    ld l, [hl]                                    ; $454b: $6e
    ld h, a                                       ; $454c: $67
    ld [hl], e                                    ; $454d: $73
    inc l                                         ; $454e: $2c
    jr nz, jr_01f_4552                            ; $454f: $20 $01

    ld a, c                                       ; $4551: $79

jr_01f_4552:
    ld l, a                                       ; $4552: $6f
    ld [hl], l                                    ; $4553: $75
    jr nz, @+$6f                                  ; $4554: $20 $6d

    ld h, c                                       ; $4556: $61
    ld a, c                                       ; $4557: $79

jr_01f_4558:
    jr nz, jr_01f_45c0                            ; $4558: $20 $66

    ld l, c                                       ; $455a: $69

jr_01f_455b:
    ld l, [hl]                                    ; $455b: $6e
    ld h, h                                       ; $455c: $64
    jr nz, jr_01f_45c0                            ; $455d: $20 $61

    jr nz, jr_01f_45c4                            ; $455f: $20 $63

    ld l, a                                       ; $4561: $6f
    ld [hl], l                                    ; $4562: $75
    ld [hl], d                                    ; $4563: $72
    ld [hl], e                                    ; $4564: $73

jr_01f_4565:
    ld h, l                                       ; $4565: $65

jr_01f_4566:
    jr nz, jr_01f_4569                            ; $4566: $20 $01

    ld [hl], a                                    ; $4568: $77

jr_01f_4569:
    ld l, c                                       ; $4569: $69
    ld [hl], h                                    ; $456a: $74
    ld l, b                                       ; $456b: $68
    jr nz, jr_01f_45cf                            ; $456c: $20 $61

    jr nz, jr_01f_45e0                            ; $456e: $20 $70

    ld h, c                                       ; $4570: $61
    ld [hl], d                                    ; $4571: $72
    jr nz, jr_01f_45e3                            ; $4572: $20 $6f

    ld h, [hl]                                    ; $4574: $66
    jr nz, jr_01f_45ae                            ; $4575: $20 $37

    inc sp                                        ; $4577: $33
    jr nz, jr_01f_45ee                            ; $4578: $20 $74

    ld l, a                                       ; $457a: $6f

jr_01f_457b:
    jr nz, jr_01f_45df                            ; $457b: $20 $62

    ld h, l                                       ; $457d: $65
    ld [bc], a                                    ; $457e: $02
    ld l, l                                       ; $457f: $6d
    ld l, a                                       ; $4580: $6f
    ld [hl], d                                    ; $4581: $72
    ld h, l                                       ; $4582: $65
    jr nz, @+$66                                  ; $4583: $20 $64

    ld l, c                                       ; $4585: $69
    ld h, [hl]                                    ; $4586: $66
    ld h, [hl]                                    ; $4587: $66
    ld l, c                                       ; $4588: $69
    ld h, e                                       ; $4589: $63
    ld [hl], l                                    ; $458a: $75

jr_01f_458b:
    ld l, h                                       ; $458b: $6c
    ld [hl], h                                    ; $458c: $74
    jr nz, jr_01f_4603                            ; $458d: $20 $74

    ld l, b                                       ; $458f: $68
    ld h, c                                       ; $4590: $61
    ld l, [hl]                                    ; $4591: $6e
    jr nz, jr_01f_4595                            ; $4592: $20 $01

    ld l, a                                       ; $4594: $6f

jr_01f_4595:
    ld l, [hl]                                    ; $4595: $6e
    ld h, l                                       ; $4596: $65
    jr nz, jr_01f_4610                            ; $4597: $20 $77

    ld l, c                                       ; $4599: $69
    ld [hl], h                                    ; $459a: $74
    ld l, b                                       ; $459b: $68
    jr nz, jr_01f_45ff                            ; $459c: $20 $61

    jr nz, jr_01f_4610                            ; $459e: $20 $70

    ld h, c                                       ; $45a0: $61

jr_01f_45a1:
    ld [hl], d                                    ; $45a1: $72
    jr nz, jr_01f_4613                            ; $45a2: $20 $6f

    ld h, [hl]                                    ; $45a4: $66
    jr nz, jr_01f_45de                            ; $45a5: $20 $37

    ld sp, $032e                                  ; $45a7: $31 $2e $03
    nop                                           ; $45aa: $00
    ld b, c                                       ; $45ab: $41
    jr nz, jr_01f_4611                            ; $45ac: $20 $63

jr_01f_45ae:
    ld [hl], d                                    ; $45ae: $72
    ld h, l                                       ; $45af: $65
    ld h, l                                       ; $45b0: $65
    ld l, e                                       ; $45b1: $6b
    daa                                           ; $45b2: $27
    ld [hl], e                                    ; $45b3: $73
    jr nz, jr_01f_4617                            ; $45b4: $20 $61

    jr nz, jr_01f_462b                            ; $45b6: $20 $73

    ld [hl], h                                    ; $45b8: $74
    ld [hl], d                                    ; $45b9: $72

jr_01f_45ba:
    ld h, l                                       ; $45ba: $65
    ld h, c                                       ; $45bb: $61
    ld l, l                                       ; $45bc: $6d
    ld bc, $6874                                  ; $45bd: $01 $74 $68

jr_01f_45c0:
    ld h, c                                       ; $45c0: $61
    ld [hl], h                                    ; $45c1: $74
    jr nz, jr_01f_462a                            ; $45c2: $20 $66

jr_01f_45c4:
    ld l, h                                       ; $45c4: $6c
    ld l, a                                       ; $45c5: $6f
    ld [hl], a                                    ; $45c6: $77
    ld [hl], e                                    ; $45c7: $73
    jr nz, jr_01f_463e                            ; $45c8: $20 $74

    ld l, b                                       ; $45ca: $68
    ld [hl], d                                    ; $45cb: $72
    ld l, a                                       ; $45cc: $6f
    ld [hl], l                                    ; $45cd: $75
    ld h, a                                       ; $45ce: $67

jr_01f_45cf:
    ld l, b                                       ; $45cf: $68
    ld bc, $2061                                  ; $45d0: $01 $61 $20
    ld h, e                                       ; $45d3: $63
    ld l, a                                       ; $45d4: $6f
    ld [hl], l                                    ; $45d5: $75
    ld [hl], d                                    ; $45d6: $72
    ld [hl], e                                    ; $45d7: $73
    ld h, l                                       ; $45d8: $65
    ld l, $02                                     ; $45d9: $2e $02
    ld b, h                                       ; $45db: $44
    ld l, a                                       ; $45dc: $6f
    ld l, [hl]                                    ; $45dd: $6e

jr_01f_45de:
    daa                                           ; $45de: $27

jr_01f_45df:
    ld [hl], h                                    ; $45df: $74

jr_01f_45e0:
    jr nz, jr_01f_4645                            ; $45e0: $20 $63

    ld l, a                                       ; $45e2: $6f

jr_01f_45e3:
    ld l, [hl]                                    ; $45e3: $6e
    ld h, [hl]                                    ; $45e4: $66
    ld [hl], l                                    ; $45e5: $75
    ld [hl], e                                    ; $45e6: $73
    ld h, l                                       ; $45e7: $65
    jr nz, jr_01f_4653                            ; $45e8: $20 $69

    ld [hl], h                                    ; $45ea: $74
    ld bc, $6977                                  ; $45eb: $01 $77 $69

jr_01f_45ee:
    ld [hl], h                                    ; $45ee: $74
    ld l, b                                       ; $45ef: $68
    jr nz, jr_01f_4653                            ; $45f0: $20 $61

    jr nz, jr_01f_4657                            ; $45f2: $20 $63

    ld l, h                                       ; $45f4: $6c
    ld h, l                                       ; $45f5: $65
    ld h, l                                       ; $45f6: $65
    ld l, e                                       ; $45f7: $6b
    ld hl, $0003                                  ; $45f8: $21 $03 $00
    ld b, c                                       ; $45fb: $41
    jr nz, jr_01f_4660                            ; $45fc: $20 $62

    ld [hl], l                                    ; $45fe: $75

jr_01f_45ff:
    ld l, [hl]                                    ; $45ff: $6e
    ld l, e                                       ; $4600: $6b
    ld h, l                                       ; $4601: $65
    ld [hl], d                                    ; $4602: $72

jr_01f_4603:
    jr nz, jr_01f_4679                            ; $4603: $20 $74

    ld l, b                                       ; $4605: $68
    ld h, c                                       ; $4606: $61
    ld [hl], h                                    ; $4607: $74
    ld bc, $7563                                  ; $4608: $01 $63 $75
    ld [hl], h                                    ; $460b: $74
    ld [hl], e                                    ; $460c: $73
    jr nz, @+$63                                  ; $460d: $20 $61

    ld h, e                                       ; $460f: $63

jr_01f_4610:
    ld [hl], d                                    ; $4610: $72

jr_01f_4611:
    ld l, a                                       ; $4611: $6f
    ld [hl], e                                    ; $4612: $73

jr_01f_4613:
    ld [hl], e                                    ; $4613: $73
    jr nz, jr_01f_468a                            ; $4614: $20 $74

    ld l, b                                       ; $4616: $68

jr_01f_4617:
    ld h, l                                       ; $4617: $65
    ld bc, $6166                                  ; $4618: $01 $66 $61
    ld l, c                                       ; $461b: $69
    ld [hl], d                                    ; $461c: $72
    ld [hl], a                                    ; $461d: $77
    ld h, c                                       ; $461e: $61
    ld a, c                                       ; $461f: $79
    ld l, $20                                     ; $4620: $2e $20
    jr nz, jr_01f_4679                            ; $4622: $20 $55

    ld [hl], e                                    ; $4624: $73
    ld h, l                                       ; $4625: $65
    ld [bc], a                                    ; $4626: $02
    ld a, c                                       ; $4627: $79
    ld l, a                                       ; $4628: $6f
    ld [hl], l                                    ; $4629: $75

jr_01f_462a:
    ld [hl], d                                    ; $462a: $72

jr_01f_462b:
    jr nz, jr_01f_4690                            ; $462b: $20 $63

    ld l, h                                       ; $462d: $6c
    ld [hl], l                                    ; $462e: $75
    ld h, d                                       ; $462f: $62
    daa                                           ; $4630: $27
    ld [hl], e                                    ; $4631: $73
    jr nz, jr_01f_46a7                            ; $4632: $20 $73

    ld l, a                                       ; $4634: $6f
    ld l, h                                       ; $4635: $6c
    ld h, l                                       ; $4636: $65
    ld bc, $6f74                                  ; $4637: $01 $74 $6f
    jr nz, jr_01f_46a4                            ; $463a: $20 $68

    ld l, c                                       ; $463c: $69
    ld [hl], h                                    ; $463d: $74

jr_01f_463e:
    jr nz, jr_01f_46b9                            ; $463e: $20 $79

    ld l, a                                       ; $4640: $6f
    ld [hl], l                                    ; $4641: $75
    ld [hl], d                                    ; $4642: $72
    jr nz, jr_01f_46bc                            ; $4643: $20 $77

jr_01f_4645:
    ld h, c                                       ; $4645: $61
    ld a, c                                       ; $4646: $79
    ld bc, $756f                                  ; $4647: $01 $6f $75
    ld [hl], h                                    ; $464a: $74
    jr nz, jr_01f_46bc                            ; $464b: $20 $6f

    ld h, [hl]                                    ; $464d: $66
    jr nz, jr_01f_46b1                            ; $464e: $20 $61

    jr nz, jr_01f_46b4                            ; $4650: $20 $62

    ld [hl], l                                    ; $4652: $75

jr_01f_4653:
    ld l, [hl]                                    ; $4653: $6e
    ld l, e                                       ; $4654: $6b
    ld h, l                                       ; $4655: $65
    ld [hl], d                                    ; $4656: $72

jr_01f_4657:
    ld l, $03                                     ; $4657: $2e $03
    nop                                           ; $4659: $00
    ld d, h                                       ; $465a: $54
    ld l, b                                       ; $465b: $68
    ld h, l                                       ; $465c: $65
    jr nz, @+$6a                                  ; $465d: $20 $68

    ld l, a                                       ; $465f: $6f

jr_01f_4660:
    ld l, h                                       ; $4660: $6c
    ld h, l                                       ; $4661: $65
    jr nz, @+$6b                                  ; $4662: $20 $69

    ld l, [hl]                                    ; $4664: $6e
    jr nz, jr_01f_46db                            ; $4665: $20 $74

    ld l, b                                       ; $4667: $68
    ld h, l                                       ; $4668: $65
    ld bc, $7267                                  ; $4669: $01 $67 $72
    ld h, l                                       ; $466c: $65
    ld h, l                                       ; $466d: $65
    ld l, [hl]                                    ; $466e: $6e
    jr nz, jr_01f_46e5                            ; $466f: $20 $74

    ld l, b                                       ; $4671: $68
    ld h, c                                       ; $4672: $61
    ld [hl], h                                    ; $4673: $74
    jr nz, jr_01f_46dd                            ; $4674: $20 $67

    ld l, a                                       ; $4676: $6f
    ld l, h                                       ; $4677: $6c
    ld h, [hl]                                    ; $4678: $66

jr_01f_4679:
    ld h, l                                       ; $4679: $65
    ld [hl], d                                    ; $467a: $72
    ld [hl], e                                    ; $467b: $73
    ld bc, $6961                                  ; $467c: $01 $61 $69
    ld l, l                                       ; $467f: $6d
    jr nz, jr_01f_46e8                            ; $4680: $20 $66

    ld l, a                                       ; $4682: $6f
    ld [hl], d                                    ; $4683: $72
    ld l, $02                                     ; $4684: $2e $02
    ld b, c                                       ; $4686: $41
    jr nz, jr_01f_46ef                            ; $4687: $20 $66

    ld l, h                                       ; $4689: $6c

jr_01f_468a:
    ld h, c                                       ; $468a: $61
    ld h, a                                       ; $468b: $67
    jr nz, @+$6f                                  ; $468c: $20 $6d

    ld h, c                                       ; $468e: $61
    ld [hl], d                                    ; $468f: $72

jr_01f_4690:
    ld l, e                                       ; $4690: $6b
    ld [hl], e                                    ; $4691: $73
    jr nz, @+$6b                                  ; $4692: $20 $69

    ld [hl], h                                    ; $4694: $74
    ld bc, $6f73                                  ; $4695: $01 $73 $6f
    jr nz, jr_01f_4713                            ; $4698: $20 $79

    ld l, a                                       ; $469a: $6f
    ld [hl], l                                    ; $469b: $75
    jr nz, jr_01f_4701                            ; $469c: $20 $63

    ld h, c                                       ; $469e: $61
    ld l, [hl]                                    ; $469f: $6e
    jr nz, jr_01f_4715                            ; $46a0: $20 $73

    ld h, l                                       ; $46a2: $65
    ld h, l                                       ; $46a3: $65

jr_01f_46a4:
    jr nz, jr_01f_470f                            ; $46a4: $20 $69

    ld [hl], h                                    ; $46a6: $74

jr_01f_46a7:
    ld bc, $7266                                  ; $46a7: $01 $66 $72
    ld l, a                                       ; $46aa: $6f
    ld l, l                                       ; $46ab: $6d
    jr nz, jr_01f_470f                            ; $46ac: $20 $61

    jr nz, jr_01f_4714                            ; $46ae: $20 $64

    ld l, c                                       ; $46b0: $69

jr_01f_46b1:
    ld [hl], e                                    ; $46b1: $73
    ld [hl], h                                    ; $46b2: $74
    ld h, c                                       ; $46b3: $61

jr_01f_46b4:
    ld l, [hl]                                    ; $46b4: $6e
    ld h, e                                       ; $46b5: $63
    ld h, l                                       ; $46b6: $65
    ld l, $03                                     ; $46b7: $2e $03

jr_01f_46b9:
    nop                                           ; $46b9: $00
    ld d, h                                       ; $46ba: $54
    ld l, a                                       ; $46bb: $6f

jr_01f_46bc:
    jr nz, jr_01f_4731                            ; $46bc: $20 $73

    ld l, c                                       ; $46be: $69
    ld l, [hl]                                    ; $46bf: $6e
    ld l, e                                       ; $46c0: $6b
    jr nz, @+$7b                                  ; $46c1: $20 $79

    ld l, a                                       ; $46c3: $6f
    ld [hl], l                                    ; $46c4: $75
    ld [hl], d                                    ; $46c5: $72
    jr nz, jr_01f_472a                            ; $46c6: $20 $62

    ld h, c                                       ; $46c8: $61
    ld l, h                                       ; $46c9: $6c
    ld l, h                                       ; $46ca: $6c
    ld bc, $6e69                                  ; $46cb: $01 $69 $6e
    ld [hl], h                                    ; $46ce: $74
    ld l, a                                       ; $46cf: $6f
    jr nz, jr_01f_4746                            ; $46d0: $20 $74

    ld l, b                                       ; $46d2: $68
    ld h, l                                       ; $46d3: $65
    jr nz, jr_01f_4739                            ; $46d4: $20 $63

    ld [hl], l                                    ; $46d6: $75
    ld [hl], b                                    ; $46d7: $70
    ld l, $03                                     ; $46d8: $2e $03
    nop                                           ; $46da: $00

jr_01f_46db:
    ld b, c                                       ; $46db: $41
    ld l, c                                       ; $46dc: $69

jr_01f_46dd:
    ld l, l                                       ; $46dd: $6d
    ld l, c                                       ; $46de: $69
    ld l, [hl]                                    ; $46df: $6e
    ld h, a                                       ; $46e0: $67
    jr nz, jr_01f_4749                            ; $46e1: $20 $66

    ld l, a                                       ; $46e3: $6f
    ld [hl], d                                    ; $46e4: $72

jr_01f_46e5:
    jr nz, jr_01f_475b                            ; $46e5: $20 $74

    ld l, b                                       ; $46e7: $68

jr_01f_46e8:
    ld h, l                                       ; $46e8: $65
    ld bc, $6970                                  ; $46e9: $01 $70 $69
    ld l, [hl]                                    ; $46ec: $6e
    jr nz, jr_01f_4761                            ; $46ed: $20 $72

jr_01f_46ef:
    ld h, c                                       ; $46ef: $61
    ld [hl], h                                    ; $46f0: $74
    ld l, b                                       ; $46f1: $68
    ld h, l                                       ; $46f2: $65
    ld [hl], d                                    ; $46f3: $72
    jr nz, jr_01f_476a                            ; $46f4: $20 $74

    ld l, b                                       ; $46f6: $68
    ld h, c                                       ; $46f7: $61
    ld l, [hl]                                    ; $46f8: $6e
    ld bc, $6e69                                  ; $46f9: $01 $69 $6e
    jr nz, @+$68                                  ; $46fc: $20 $66

    ld [hl], d                                    ; $46fe: $72
    ld l, a                                       ; $46ff: $6f
    ld l, [hl]                                    ; $4700: $6e

jr_01f_4701:
    ld [hl], h                                    ; $4701: $74
    jr nz, jr_01f_4773                            ; $4702: $20 $6f

    ld h, [hl]                                    ; $4704: $66
    jr nz, jr_01f_4770                            ; $4705: $20 $69

    ld [hl], h                                    ; $4707: $74
    ld [bc], a                                    ; $4708: $02
    ld [hl], a                                    ; $4709: $77
    ld l, b                                       ; $470a: $68
    ld h, l                                       ; $470b: $65
    ld l, [hl]                                    ; $470c: $6e
    jr nz, jr_01f_4770                            ; $470d: $20 $61

jr_01f_470f:
    ld [hl], h                                    ; $470f: $74
    ld [hl], h                                    ; $4710: $74
    ld h, c                                       ; $4711: $61
    ld h, e                                       ; $4712: $63

jr_01f_4713:
    ld l, e                                       ; $4713: $6b

jr_01f_4714:
    ld l, c                                       ; $4714: $69

jr_01f_4715:
    ld l, [hl]                                    ; $4715: $6e
    ld h, a                                       ; $4716: $67
    ld bc, $6874                                  ; $4717: $01 $74 $68
    ld h, l                                       ; $471a: $65
    jr nz, @+$69                                  ; $471b: $20 $67

    ld [hl], d                                    ; $471d: $72
    ld h, l                                       ; $471e: $65
    ld h, l                                       ; $471f: $65
    ld l, [hl]                                    ; $4720: $6e
    ld l, $03                                     ; $4721: $2e $03
    nop                                           ; $4723: $00
    ld b, c                                       ; $4724: $41
    ld l, [hl]                                    ; $4725: $6e
    jr nz, jr_01f_4789                            ; $4726: $20 $61

    ld [hl], d                                    ; $4728: $72
    ld h, l                                       ; $4729: $65

jr_01f_472a:
    ld h, c                                       ; $472a: $61
    jr nz, jr_01f_479c                            ; $472b: $20 $6f

    ld h, [hl]                                    ; $472d: $66
    jr nz, @+$69                                  ; $472e: $20 $67

    ld [hl], d                                    ; $4730: $72

jr_01f_4731:
    ld h, c                                       ; $4731: $61
    ld [hl], e                                    ; $4732: $73
    ld [hl], e                                    ; $4733: $73
    jr nz, jr_01f_47a2                            ; $4734: $20 $6c

    ld l, a                                       ; $4736: $6f
    ld l, [hl]                                    ; $4737: $6e
    ld h, a                                       ; $4738: $67

jr_01f_4739:
    ld h, l                                       ; $4739: $65
    ld [hl], d                                    ; $473a: $72
    ld bc, $6874                                  ; $473b: $01 $74 $68
    ld h, c                                       ; $473e: $61
    ld l, [hl]                                    ; $473f: $6e
    jr nz, jr_01f_47b4                            ; $4740: $20 $72

    ld l, a                                       ; $4742: $6f
    ld [hl], l                                    ; $4743: $75
    ld h, a                                       ; $4744: $67
    ld l, b                                       ; $4745: $68

jr_01f_4746:
    jr nz, @+$76                                  ; $4746: $20 $74

    ld l, b                                       ; $4748: $68

jr_01f_4749:
    ld h, c                                       ; $4749: $61
    ld [hl], h                                    ; $474a: $74
    daa                                           ; $474b: $27
    ld [hl], e                                    ; $474c: $73
    jr nz, jr_01f_47b4                            ; $474d: $20 $65

    halt                                          ; $474f: $76
    ld h, l                                       ; $4750: $65
    ld l, [hl]                                    ; $4751: $6e
    ld bc, $6168                                  ; $4752: $01 $68 $61
    ld [hl], d                                    ; $4755: $72
    ld h, h                                       ; $4756: $64
    ld h, l                                       ; $4757: $65
    ld [hl], d                                    ; $4758: $72
    jr nz, jr_01f_47cf                            ; $4759: $20 $74

jr_01f_475b:
    ld l, a                                       ; $475b: $6f
    jr nz, jr_01f_47c3                            ; $475c: $20 $65

    ld [hl], e                                    ; $475e: $73
    ld h, e                                       ; $475f: $63
    ld h, c                                       ; $4760: $61

jr_01f_4761:
    ld [hl], b                                    ; $4761: $70
    ld h, l                                       ; $4762: $65
    ld l, $02                                     ; $4763: $2e $02
    ld c, c                                       ; $4765: $49
    ld h, [hl]                                    ; $4766: $66
    jr nz, jr_01f_47e2                            ; $4767: $20 $79

    ld l, a                                       ; $4769: $6f

jr_01f_476a:
    ld [hl], l                                    ; $476a: $75
    ld [hl], d                                    ; $476b: $72
    jr nz, jr_01f_47d0                            ; $476c: $20 $62

    ld h, c                                       ; $476e: $61
    ld l, h                                       ; $476f: $6c

jr_01f_4770:
    ld l, h                                       ; $4770: $6c
    jr nz, jr_01f_47df                            ; $4771: $20 $6c

jr_01f_4773:
    ld h, c                                       ; $4773: $61
    ld l, [hl]                                    ; $4774: $6e
    ld h, h                                       ; $4775: $64
    ld [hl], e                                    ; $4776: $73
    jr nz, jr_01f_47e1                            ; $4777: $20 $68

    ld h, l                                       ; $4779: $65
    ld [hl], d                                    ; $477a: $72
    ld h, l                                       ; $477b: $65
    inc l                                         ; $477c: $2c
    jr nz, jr_01f_4780                            ; $477d: $20 $01

    ld a, c                                       ; $477f: $79

jr_01f_4780:
    ld l, a                                       ; $4780: $6f
    ld [hl], l                                    ; $4781: $75
    ld [hl], d                                    ; $4782: $72
    jr nz, @+$68                                  ; $4783: $20 $66

    ld l, c                                       ; $4785: $69
    ld [hl], d                                    ; $4786: $72
    ld [hl], e                                    ; $4787: $73
    ld [hl], h                                    ; $4788: $74

jr_01f_4789:
    jr nz, jr_01f_47fb                            ; $4789: $20 $70

    ld [hl], d                                    ; $478b: $72
    ld l, c                                       ; $478c: $69
    ld l, a                                       ; $478d: $6f
    ld [hl], d                                    ; $478e: $72
    ld l, c                                       ; $478f: $69
    ld [hl], h                                    ; $4790: $74
    ld a, c                                       ; $4791: $79
    jr nz, jr_01f_47fd                            ; $4792: $20 $69

    ld [hl], e                                    ; $4794: $73
    ld bc, $756a                                  ; $4795: $01 $6a $75
    ld [hl], e                                    ; $4798: $73
    ld [hl], h                                    ; $4799: $74
    jr nz, jr_01f_4803                            ; $479a: $20 $67

jr_01f_479c:
    ld h, l                                       ; $479c: $65
    ld [hl], h                                    ; $479d: $74
    ld [hl], h                                    ; $479e: $74
    ld l, c                                       ; $479f: $69
    ld l, [hl]                                    ; $47a0: $6e
    ld h, a                                       ; $47a1: $67

jr_01f_47a2:
    jr nz, jr_01f_480d                            ; $47a2: $20 $69

    ld [hl], h                                    ; $47a4: $74
    jr nz, jr_01f_4816                            ; $47a5: $20 $6f

    ld [hl], l                                    ; $47a7: $75
    ld [hl], h                                    ; $47a8: $74
    ld l, $03                                     ; $47a9: $2e $03
    nop                                           ; $47ab: $00
    ld d, h                                       ; $47ac: $54
    ld l, b                                       ; $47ad: $68
    ld h, l                                       ; $47ae: $65
    jr nz, jr_01f_481d                            ; $47af: $20 $6c

    ld h, c                                       ; $47b1: $61
    ld [hl], e                                    ; $47b2: $73
    ld [hl], h                                    ; $47b3: $74

jr_01f_47b4:
    jr nz, jr_01f_482a                            ; $47b4: $20 $74

    ld l, a                                       ; $47b6: $6f
    jr nz, jr_01f_4830                            ; $47b7: $20 $77

    ld l, c                                       ; $47b9: $69
    ld l, [hl]                                    ; $47ba: $6e
    ld bc, $2061                                  ; $47bb: $01 $61 $20
    ld [hl], h                                    ; $47be: $74
    ld l, a                                       ; $47bf: $6f
    ld [hl], l                                    ; $47c0: $75
    ld [hl], d                                    ; $47c1: $72
    ld l, [hl]                                    ; $47c2: $6e

jr_01f_47c3:
    ld h, c                                       ; $47c3: $61
    ld l, l                                       ; $47c4: $6d
    ld h, l                                       ; $47c5: $65
    ld l, [hl]                                    ; $47c6: $6e
    ld [hl], h                                    ; $47c7: $74
    jr nz, jr_01f_4839                            ; $47c8: $20 $6f

    ld [hl], d                                    ; $47ca: $72
    ld bc, $6863                                  ; $47cb: $01 $63 $68
    ld h, c                                       ; $47ce: $61

jr_01f_47cf:
    ld l, l                                       ; $47cf: $6d

jr_01f_47d0:
    ld [hl], b                                    ; $47d0: $70
    ld l, c                                       ; $47d1: $69
    ld l, a                                       ; $47d2: $6f
    ld l, [hl]                                    ; $47d3: $6e
    ld [hl], e                                    ; $47d4: $73
    ld l, b                                       ; $47d5: $68
    ld l, c                                       ; $47d6: $69
    ld [hl], b                                    ; $47d7: $70
    ld l, $03                                     ; $47d8: $2e $03
    nop                                           ; $47da: $00
    ld c, c                                       ; $47db: $49
    ld l, [hl]                                    ; $47dc: $6e
    ld h, h                                       ; $47dd: $64
    ld h, l                                       ; $47de: $65

jr_01f_47df:
    ld l, [hl]                                    ; $47df: $6e
    ld [hl], h                                    ; $47e0: $74

jr_01f_47e1:
    ld h, c                                       ; $47e1: $61

jr_01f_47e2:
    ld [hl], h                                    ; $47e2: $74
    ld l, c                                       ; $47e3: $69
    ld l, a                                       ; $47e4: $6f
    ld l, [hl]                                    ; $47e5: $6e
    ld [hl], e                                    ; $47e6: $73
    jr nz, jr_01f_4858                            ; $47e7: $20 $6f

    ld l, [hl]                                    ; $47e9: $6e
    ld bc, $2061                                  ; $47ea: $01 $61 $20
    ld h, a                                       ; $47ed: $67
    ld l, a                                       ; $47ee: $6f
    ld l, h                                       ; $47ef: $6c
    ld h, [hl]                                    ; $47f0: $66
    jr nz, jr_01f_4855                            ; $47f1: $20 $62

    ld h, c                                       ; $47f3: $61
    ld l, h                                       ; $47f4: $6c
    ld l, h                                       ; $47f5: $6c
    ld l, $01                                     ; $47f6: $2e $01
    ld b, h                                       ; $47f8: $44
    ld l, c                                       ; $47f9: $69
    ld l, l                                       ; $47fa: $6d

jr_01f_47fb:
    ld [hl], b                                    ; $47fb: $70
    ld l, h                                       ; $47fc: $6c

jr_01f_47fd:
    ld h, l                                       ; $47fd: $65
    ld [hl], e                                    ; $47fe: $73
    jr nz, @+$63                                  ; $47ff: $20 $61

    ld h, [hl]                                    ; $4801: $66
    ld h, [hl]                                    ; $4802: $66

jr_01f_4803:
    ld h, l                                       ; $4803: $65
    ld h, e                                       ; $4804: $63
    ld [hl], h                                    ; $4805: $74
    ld [bc], a                                    ; $4806: $02
    ld h, d                                       ; $4807: $62
    ld h, c                                       ; $4808: $61
    ld l, h                                       ; $4809: $6c
    ld l, h                                       ; $480a: $6c
    jr nz, jr_01f_4870                            ; $480b: $20 $63

jr_01f_480d:
    ld l, a                                       ; $480d: $6f
    ld l, [hl]                                    ; $480e: $6e
    ld [hl], h                                    ; $480f: $74
    ld [hl], d                                    ; $4810: $72
    ld l, a                                       ; $4811: $6f
    ld l, h                                       ; $4812: $6c
    jr nz, @+$63                                  ; $4813: $20 $61

    ld l, [hl]                                    ; $4815: $6e

jr_01f_4816:
    ld h, h                                       ; $4816: $64
    ld bc, $6961                                  ; $4817: $01 $61 $69
    ld [hl], d                                    ; $481a: $72
    jr nz, jr_01f_488f                            ; $481b: $20 $72

jr_01f_481d:
    ld h, l                                       ; $481d: $65
    ld [hl], e                                    ; $481e: $73
    ld l, c                                       ; $481f: $69
    ld [hl], e                                    ; $4820: $73
    ld [hl], h                                    ; $4821: $74
    ld h, c                                       ; $4822: $61
    ld l, [hl]                                    ; $4823: $6e
    ld h, e                                       ; $4824: $63
    ld h, l                                       ; $4825: $65
    ld l, $03                                     ; $4826: $2e $03
    nop                                           ; $4828: $00
    ld b, c                                       ; $4829: $41

jr_01f_482a:
    jr nz, jr_01f_488f                            ; $482a: $20 $63

    ld l, h                                       ; $482c: $6c
    ld [hl], l                                    ; $482d: $75
    ld l, l                                       ; $482e: $6d
    ld [hl], b                                    ; $482f: $70

jr_01f_4830:
    jr nz, jr_01f_48a1                            ; $4830: $20 $6f

    ld h, [hl]                                    ; $4832: $66
    jr nz, jr_01f_489c                            ; $4833: $20 $67

    ld [hl], d                                    ; $4835: $72
    ld h, c                                       ; $4836: $61
    ld [hl], e                                    ; $4837: $73
    ld [hl], e                                    ; $4838: $73

jr_01f_4839:
    ld bc, $6e6b                                  ; $4839: $01 $6b $6e
    ld l, a                                       ; $483c: $6f
    ld h, e                                       ; $483d: $63
    ld l, e                                       ; $483e: $6b
    ld h, l                                       ; $483f: $65
    ld h, h                                       ; $4840: $64
    jr nz, jr_01f_48af                            ; $4841: $20 $6c

    ld l, a                                       ; $4843: $6f
    ld l, a                                       ; $4844: $6f
    ld [hl], e                                    ; $4845: $73
    ld h, l                                       ; $4846: $65
    jr nz, jr_01f_48b8                            ; $4847: $20 $6f

    ld l, [hl]                                    ; $4849: $6e
    ld bc, $2061                                  ; $484a: $01 $61 $20
    ld [hl], e                                    ; $484d: $73
    ld l, b                                       ; $484e: $68
    ld l, a                                       ; $484f: $6f
    ld [hl], h                                    ; $4850: $74
    ld l, $02                                     ; $4851: $2e $02
    ld b, c                                       ; $4853: $41
    ld l, h                                       ; $4854: $6c

jr_01f_4855:
    ld [hl], a                                    ; $4855: $77
    ld h, c                                       ; $4856: $61
    ld a, c                                       ; $4857: $79

jr_01f_4858:
    ld [hl], e                                    ; $4858: $73
    jr nz, jr_01f_48cd                            ; $4859: $20 $72

    ld h, l                                       ; $485b: $65
    ld [hl], b                                    ; $485c: $70
    ld l, h                                       ; $485d: $6c
    ld h, c                                       ; $485e: $61
    ld h, e                                       ; $485f: $63
    ld h, l                                       ; $4860: $65
    ld bc, $6f79                                  ; $4861: $01 $79 $6f
    ld [hl], l                                    ; $4864: $75
    ld [hl], d                                    ; $4865: $72
    jr nz, jr_01f_48cc                            ; $4866: $20 $64

    ld l, c                                       ; $4868: $69
    halt                                          ; $4869: $76
    ld l, a                                       ; $486a: $6f
    ld [hl], h                                    ; $486b: $74
    ld hl, $0003                                  ; $486c: $21 $03 $00
    ld b, c                                       ; $486f: $41

jr_01f_4870:
    jr nz, jr_01f_48da                            ; $4870: $20 $68

    ld l, a                                       ; $4872: $6f
    ld l, h                                       ; $4873: $6c
    ld h, l                                       ; $4874: $65
    jr nz, jr_01f_48eb                            ; $4875: $20 $74

    ld l, b                                       ; $4877: $68
    ld h, c                                       ; $4878: $61
    ld [hl], h                                    ; $4879: $74
    jr nz, jr_01f_48f0                            ; $487a: $20 $74

    ld [hl], l                                    ; $487c: $75
    ld [hl], d                                    ; $487d: $72
    ld l, [hl]                                    ; $487e: $6e
    ld [hl], e                                    ; $487f: $73
    ld bc, $6873                                  ; $4880: $01 $73 $68
    ld h, c                                       ; $4883: $61
    ld [hl], d                                    ; $4884: $72
    ld [hl], b                                    ; $4885: $70
    ld l, h                                       ; $4886: $6c
    ld a, c                                       ; $4887: $79
    jr nz, jr_01f_48ec                            ; $4888: $20 $62

    ld h, l                                       ; $488a: $65
    ld [hl], h                                    ; $488b: $74
    ld [hl], a                                    ; $488c: $77
    ld h, l                                       ; $488d: $65
    ld h, l                                       ; $488e: $65

jr_01f_488f:
    ld l, [hl]                                    ; $488f: $6e
    ld bc, $6874                                  ; $4890: $01 $74 $68
    ld h, l                                       ; $4893: $65
    jr nz, @+$76                                  ; $4894: $20 $74

    ld h, l                                       ; $4896: $65
    ld h, l                                       ; $4897: $65
    jr nz, jr_01f_48fb                            ; $4898: $20 $61

    ld l, [hl]                                    ; $489a: $6e
    ld h, h                                       ; $489b: $64

jr_01f_489c:
    jr nz, @+$76                                  ; $489c: $20 $74

    ld l, b                                       ; $489e: $68
    ld h, l                                       ; $489f: $65
    ld [bc], a                                    ; $48a0: $02

jr_01f_48a1:
    ld h, a                                       ; $48a1: $67
    ld [hl], d                                    ; $48a2: $72
    ld h, l                                       ; $48a3: $65
    ld h, l                                       ; $48a4: $65
    ld l, [hl]                                    ; $48a5: $6e
    inc l                                         ; $48a6: $2c
    jr nz, jr_01f_4915                            ; $48a7: $20 $6c

    ld l, c                                       ; $48a9: $69
    ld l, e                                       ; $48aa: $6b
    ld h, l                                       ; $48ab: $65
    jr nz, @+$76                                  ; $48ac: $20 $74

    ld l, b                                       ; $48ae: $68

jr_01f_48af:
    ld h, l                                       ; $48af: $65
    ld bc, $6873                                  ; $48b0: $01 $73 $68
    ld h, c                                       ; $48b3: $61
    ld [hl], b                                    ; $48b4: $70
    ld h, l                                       ; $48b5: $65
    jr nz, jr_01f_4927                            ; $48b6: $20 $6f

jr_01f_48b8:
    ld h, [hl]                                    ; $48b8: $66
    jr nz, jr_01f_491c                            ; $48b9: $20 $61

    jr nz, jr_01f_4921                            ; $48bb: $20 $64

    ld l, a                                       ; $48bd: $6f
    ld h, a                                       ; $48be: $67
    daa                                           ; $48bf: $27
    ld [hl], e                                    ; $48c0: $73
    ld bc, $656c                                  ; $48c1: $01 $6c $65
    ld h, a                                       ; $48c4: $67
    ld l, $03                                     ; $48c5: $2e $03
    nop                                           ; $48c7: $00
    ld c, c                                       ; $48c8: $49
    ld l, [hl]                                    ; $48c9: $6e
    jr nz, @+$6f                                  ; $48ca: $20 $6d

jr_01f_48cc:
    ld h, c                                       ; $48cc: $61

jr_01f_48cd:
    ld [hl], h                                    ; $48cd: $74
    ld h, e                                       ; $48ce: $63
    ld l, b                                       ; $48cf: $68
    jr nz, jr_01f_4942                            ; $48d0: $20 $70

    ld l, h                                       ; $48d2: $6c
    ld h, c                                       ; $48d3: $61
    ld a, c                                       ; $48d4: $79
    inc l                                         ; $48d5: $2c
    ld bc, $6877                                  ; $48d6: $01 $77 $68
    ld h, l                                       ; $48d9: $65

jr_01f_48da:
    ld l, [hl]                                    ; $48da: $6e
    jr nz, jr_01f_493e                            ; $48db: $20 $61

    jr nz, jr_01f_494f                            ; $48dd: $20 $70

    ld l, h                                       ; $48df: $6c
    ld h, c                                       ; $48e0: $61
    ld a, c                                       ; $48e1: $79
    ld h, l                                       ; $48e2: $65
    ld [hl], d                                    ; $48e3: $72
    ld bc, $6163                                  ; $48e4: $01 $63 $61
    ld l, [hl]                                    ; $48e7: $6e
    jr nz, jr_01f_4961                            ; $48e8: $20 $77

    ld l, c                                       ; $48ea: $69

jr_01f_48eb:
    ld l, [hl]                                    ; $48eb: $6e

jr_01f_48ec:
    jr nz, jr_01f_4962                            ; $48ec: $20 $74

    ld l, b                                       ; $48ee: $68
    ld h, l                                       ; $48ef: $65

jr_01f_48f0:
    ld [bc], a                                    ; $48f0: $02
    ld [hl], d                                    ; $48f1: $72
    ld l, a                                       ; $48f2: $6f
    ld [hl], l                                    ; $48f3: $75
    ld l, [hl]                                    ; $48f4: $6e
    ld h, h                                       ; $48f5: $64
    jr nz, @+$64                                  ; $48f6: $20 $62

    ld a, c                                       ; $48f8: $79
    jr nz, jr_01f_496f                            ; $48f9: $20 $74

jr_01f_48fb:
    ld a, c                                       ; $48fb: $79
    ld l, c                                       ; $48fc: $69
    ld l, [hl]                                    ; $48fd: $6e
    ld h, a                                       ; $48fe: $67
    ld bc, $6874                                  ; $48ff: $01 $74 $68
    ld h, l                                       ; $4902: $65
    jr nz, jr_01f_4974                            ; $4903: $20 $6f

    ld [hl], h                                    ; $4905: $74
    ld l, b                                       ; $4906: $68
    ld h, l                                       ; $4907: $65
    ld [hl], d                                    ; $4908: $72
    jr nz, jr_01f_497b                            ; $4909: $20 $70

    ld l, h                                       ; $490b: $6c
    ld h, c                                       ; $490c: $61
    ld a, c                                       ; $490d: $79
    ld h, l                                       ; $490e: $65
    ld [hl], d                                    ; $490f: $72
    ld bc, $6e6f                                  ; $4910: $01 $6f $6e
    jr nz, @+$76                                  ; $4913: $20 $74

jr_01f_4915:
    ld l, b                                       ; $4915: $68
    ld h, l                                       ; $4916: $65
    jr nz, jr_01f_4987                            ; $4917: $20 $6e

    ld h, l                                       ; $4919: $65
    ld a, b                                       ; $491a: $78
    ld [hl], h                                    ; $491b: $74

jr_01f_491c:
    jr nz, jr_01f_4986                            ; $491c: $20 $68

    ld l, a                                       ; $491e: $6f
    ld l, h                                       ; $491f: $6c
    ld h, l                                       ; $4920: $65

jr_01f_4921:
    ld l, $03                                     ; $4921: $2e $03
    nop                                           ; $4923: $00
    ld d, h                                       ; $4924: $54
    ld [hl], a                                    ; $4925: $77
    ld l, a                                       ; $4926: $6f

Call_01f_4927:
jr_01f_4927:
    jr nz, @+$75                                  ; $4927: $20 $73

    ld [hl], h                                    ; $4929: $74
    ld [hl], d                                    ; $492a: $72
    ld l, a                                       ; $492b: $6f
    ld l, e                                       ; $492c: $6b
    ld h, l                                       ; $492d: $65
    ld [hl], e                                    ; $492e: $73
    jr nz, @+$71                                  ; $492f: $20 $6f

    halt                                          ; $4931: $76
    ld h, l                                       ; $4932: $65
    ld [hl], d                                    ; $4933: $72
    ld bc, $6170                                  ; $4934: $01 $70 $61
    ld [hl], d                                    ; $4937: $72
    ld l, $20                                     ; $4938: $2e $20
    ld c, a                                       ; $493a: $4f
    ld l, [hl]                                    ; $493b: $6e
    jr nz, jr_01f_499f                            ; $493c: $20 $61

jr_01f_493e:
    jr nz, jr_01f_49b0                            ; $493e: $20 $70

    ld h, c                                       ; $4940: $61
    ld [hl], d                                    ; $4941: $72

jr_01f_4942:
    jr nz, jr_01f_4978                            ; $4942: $20 $34

    ld bc, $6f68                                  ; $4944: $01 $68 $6f
    ld l, h                                       ; $4947: $6c
    ld h, l                                       ; $4948: $65
    inc l                                         ; $4949: $2c
    jr nz, jr_01f_49ad                            ; $494a: $20 $61

    jr nz, jr_01f_49b2                            ; $494c: $20 $64

    ld l, a                                       ; $494e: $6f

jr_01f_494f:
    ld [hl], l                                    ; $494f: $75
    ld h, d                                       ; $4950: $62
    ld l, h                                       ; $4951: $6c
    ld h, l                                       ; $4952: $65
    ld [bc], a                                    ; $4953: $02
    ld h, d                                       ; $4954: $62
    ld l, a                                       ; $4955: $6f
    ld h, a                                       ; $4956: $67
    ld h, l                                       ; $4957: $65
    ld a, c                                       ; $4958: $79
    jr nz, jr_01f_49d2                            ; $4959: $20 $77

    ld l, a                                       ; $495b: $6f
    ld [hl], l                                    ; $495c: $75
    ld l, h                                       ; $495d: $6c
    ld h, h                                       ; $495e: $64
    jr nz, @+$64                                  ; $495f: $20 $62

jr_01f_4961:
    ld h, l                                       ; $4961: $65

jr_01f_4962:
    ld bc, $2061                                  ; $4962: $01 $61 $20
    ld [hl], e                                    ; $4965: $73
    ld h, e                                       ; $4966: $63
    ld l, a                                       ; $4967: $6f
    ld [hl], d                                    ; $4968: $72
    ld h, l                                       ; $4969: $65
    jr nz, jr_01f_49db                            ; $496a: $20 $6f

    ld h, [hl]                                    ; $496c: $66
    jr nz, jr_01f_49a5                            ; $496d: $20 $36

jr_01f_496f:
    ld l, $03                                     ; $496f: $2e $03
    nop                                           ; $4971: $00
    ld d, h                                       ; $4972: $54
    ld l, b                                       ; $4973: $68

jr_01f_4974:
    ld h, l                                       ; $4974: $65
    jr nz, jr_01f_49eb                            ; $4975: $20 $74

    ld l, c                                       ; $4977: $69

jr_01f_4978:
    ld l, l                                       ; $4978: $6d
    ld l, c                                       ; $4979: $69
    ld l, [hl]                                    ; $497a: $6e

jr_01f_497b:
    ld h, a                                       ; $497b: $67
    jr nz, jr_01f_49ed                            ; $497c: $20 $6f

    ld h, [hl]                                    ; $497e: $66
    ld bc, $7773                                  ; $497f: $01 $73 $77
    ld l, c                                       ; $4982: $69
    ld l, [hl]                                    ; $4983: $6e
    ld h, a                                       ; $4984: $67
    ld l, c                                       ; $4985: $69

jr_01f_4986:
    ld l, [hl]                                    ; $4986: $6e

jr_01f_4987:
    ld h, a                                       ; $4987: $67
    jr nz, jr_01f_49fe                            ; $4988: $20 $74

    ld l, b                                       ; $498a: $68
    ld h, l                                       ; $498b: $65
    jr nz, jr_01f_49f1                            ; $498c: $20 $63

    ld l, h                                       ; $498e: $6c
    ld [hl], l                                    ; $498f: $75
    ld h, d                                       ; $4990: $62
    inc l                                         ; $4991: $2c
    ld bc, $7266                                  ; $4992: $01 $66 $72
    ld l, a                                       ; $4995: $6f
    ld l, l                                       ; $4996: $6d
    jr nz, jr_01f_4a0d                            ; $4997: $20 $74

    ld l, b                                       ; $4999: $68
    ld h, l                                       ; $499a: $65
    jr nz, jr_01f_4a11                            ; $499b: $20 $74

    ld l, a                                       ; $499d: $6f
    ld [hl], b                                    ; $499e: $70

jr_01f_499f:
    jr nz, jr_01f_4a10                            ; $499f: $20 $6f

    ld h, [hl]                                    ; $49a1: $66
    ld [bc], a                                    ; $49a2: $02
    ld [hl], h                                    ; $49a3: $74
    ld l, b                                       ; $49a4: $68

jr_01f_49a5:
    ld h, l                                       ; $49a5: $65
    jr nz, jr_01f_4a1b                            ; $49a6: $20 $73

    ld [hl], a                                    ; $49a8: $77
    ld l, c                                       ; $49a9: $69
    ld l, [hl]                                    ; $49aa: $6e
    ld h, a                                       ; $49ab: $67
    inc l                                         ; $49ac: $2c

jr_01f_49ad:
    jr nz, jr_01f_4a13                            ; $49ad: $20 $64

    ld l, a                                       ; $49af: $6f

jr_01f_49b0:
    ld [hl], a                                    ; $49b0: $77
    ld l, [hl]                                    ; $49b1: $6e

jr_01f_49b2:
    ld bc, $6f74                                  ; $49b2: $01 $74 $6f
    jr nz, jr_01f_4a2b                            ; $49b5: $20 $74

    ld l, b                                       ; $49b7: $68
    ld h, l                                       ; $49b8: $65
    jr nz, @+$64                                  ; $49b9: $20 $62

    ld h, c                                       ; $49bb: $61
    ld l, h                                       ; $49bc: $6c
    ld l, h                                       ; $49bd: $6c
    ld l, $03                                     ; $49be: $2e $03
    nop                                           ; $49c0: $00
    ld b, c                                       ; $49c1: $41
    jr nz, jr_01f_4a2c                            ; $49c2: $20 $68

    ld l, a                                       ; $49c4: $6f
    ld l, a                                       ; $49c5: $6f
    ld l, e                                       ; $49c6: $6b
    dec l                                         ; $49c7: $2d
    ld [hl], e                                    ; $49c8: $73
    ld [hl], h                                    ; $49c9: $74
    ld a, c                                       ; $49ca: $79
    ld l, h                                       ; $49cb: $6c
    ld h, l                                       ; $49cc: $65
    ld bc, $6873                                  ; $49cd: $01 $73 $68
    ld l, a                                       ; $49d0: $6f
    ld [hl], h                                    ; $49d1: $74

jr_01f_49d2:
    jr nz, jr_01f_4a3d                            ; $49d2: $20 $69

    ld l, [hl]                                    ; $49d4: $6e
    jr nz, jr_01f_4a4e                            ; $49d5: $20 $77

    ld l, b                                       ; $49d7: $68
    ld l, c                                       ; $49d8: $69
    ld h, e                                       ; $49d9: $63
    ld l, b                                       ; $49da: $68

jr_01f_49db:
    ld bc, $6874                                  ; $49db: $01 $74 $68
    ld h, l                                       ; $49de: $65
    jr nz, jr_01f_4a43                            ; $49df: $20 $62

    ld h, c                                       ; $49e1: $61
    ld l, h                                       ; $49e2: $6c
    ld l, h                                       ; $49e3: $6c
    jr nz, jr_01f_4a4c                            ; $49e4: $20 $66

    ld l, h                                       ; $49e6: $6c
    ld l, c                                       ; $49e7: $69
    ld h, l                                       ; $49e8: $65
    ld [hl], e                                    ; $49e9: $73
    ld [bc], a                                    ; $49ea: $02

jr_01f_49eb:
    ld [hl], h                                    ; $49eb: $74
    ld l, a                                       ; $49ec: $6f

jr_01f_49ed:
    jr nz, jr_01f_4a63                            ; $49ed: $20 $74

    ld l, b                                       ; $49ef: $68
    ld h, l                                       ; $49f0: $65

jr_01f_49f1:
    jr nz, jr_01f_4a65                            ; $49f1: $20 $72

    ld l, c                                       ; $49f3: $69
    ld h, a                                       ; $49f4: $67
    ld l, b                                       ; $49f5: $68
    ld [hl], h                                    ; $49f6: $74
    ld bc, $6562                                  ; $49f7: $01 $62 $65
    ld h, [hl]                                    ; $49fa: $66
    ld l, a                                       ; $49fb: $6f
    ld [hl], d                                    ; $49fc: $72
    ld h, l                                       ; $49fd: $65

jr_01f_49fe:
    jr nz, @+$6a                                  ; $49fe: $20 $68

    ld h, l                                       ; $4a00: $65
    ld h, c                                       ; $4a01: $61
    ld h, h                                       ; $4a02: $64
    ld l, c                                       ; $4a03: $69
    ld l, [hl]                                    ; $4a04: $6e
    ld h, a                                       ; $4a05: $67
    ld bc, $6f66                                  ; $4a06: $01 $66 $6f
    ld [hl], d                                    ; $4a09: $72
    jr nz, jr_01f_4a80                            ; $4a0a: $20 $74

    ld l, b                                       ; $4a0c: $68

jr_01f_4a0d:
    ld h, l                                       ; $4a0d: $65
    jr nz, jr_01f_4a84                            ; $4a0e: $20 $74

jr_01f_4a10:
    ld h, c                                       ; $4a10: $61

jr_01f_4a11:
    ld [hl], d                                    ; $4a11: $72
    ld h, a                                       ; $4a12: $67

jr_01f_4a13:
    ld h, l                                       ; $4a13: $65
    ld [hl], h                                    ; $4a14: $74
    ld l, $03                                     ; $4a15: $2e $03
    nop                                           ; $4a17: $00
    ld d, h                                       ; $4a18: $54
    ld l, b                                       ; $4a19: $68
    ld l, c                                       ; $4a1a: $69

jr_01f_4a1b:
    ld [hl], e                                    ; $4a1b: $73
    jr nz, jr_01f_4a87                            ; $4a1c: $20 $69

    ld [hl], e                                    ; $4a1e: $73
    jr nz, @+$76                                  ; $4a1f: $20 $74

    ld l, b                                       ; $4a21: $68
    ld h, l                                       ; $4a22: $65
    jr nz, jr_01f_4a9c                            ; $4a23: $20 $77

    ld l, a                                       ; $4a25: $6f
    ld l, a                                       ; $4a26: $6f
    ld h, h                                       ; $4a27: $64
    ld bc, $6977                                  ; $4a28: $01 $77 $69

jr_01f_4a2b:
    ld [hl], h                                    ; $4a2b: $74

jr_01f_4a2c:
    ld l, b                                       ; $4a2c: $68
    jr nz, jr_01f_4aa3                            ; $4a2d: $20 $74

    ld l, b                                       ; $4a2f: $68
    ld h, l                                       ; $4a30: $65
    jr nz, @+$6e                                  ; $4a31: $20 $6c

    ld l, a                                       ; $4a33: $6f
    ld l, [hl]                                    ; $4a34: $6e
    ld h, a                                       ; $4a35: $67
    ld h, l                                       ; $4a36: $65
    ld [hl], e                                    ; $4a37: $73
    ld [hl], h                                    ; $4a38: $74
    ld bc, $7264                                  ; $4a39: $01 $64 $72
    ld l, c                                       ; $4a3c: $69

jr_01f_4a3d:
    halt                                          ; $4a3d: $76
    ld h, l                                       ; $4a3e: $65
    jr nz, jr_01f_4aa5                            ; $4a3f: $20 $64

    ld l, c                                       ; $4a41: $69
    ld [hl], e                                    ; $4a42: $73

jr_01f_4a43:
    ld [hl], h                                    ; $4a43: $74
    ld h, c                                       ; $4a44: $61
    ld l, [hl]                                    ; $4a45: $6e
    ld h, e                                       ; $4a46: $63
    ld h, l                                       ; $4a47: $65
    ld l, $03                                     ; $4a48: $2e $03
    nop                                           ; $4a4a: $00
    ld b, c                                       ; $4a4b: $41

jr_01f_4a4c:
    jr nz, jr_01f_4ab1                            ; $4a4c: $20 $63

jr_01f_4a4e:
    ld l, a                                       ; $4a4e: $6f
    ld l, l                                       ; $4a4f: $6d
    ld [hl], b                                    ; $4a50: $70
    ld h, l                                       ; $4a51: $65
    ld [hl], h                                    ; $4a52: $74
    ld l, c                                       ; $4a53: $69
    ld [hl], h                                    ; $4a54: $74
    ld l, c                                       ; $4a55: $69
    ld l, a                                       ; $4a56: $6f
    ld l, [hl]                                    ; $4a57: $6e
    jr nz, jr_01f_4ace                            ; $4a58: $20 $74

    ld l, a                                       ; $4a5a: $6f
    ld bc, $6573                                  ; $4a5b: $01 $73 $65
    ld h, l                                       ; $4a5e: $65
    jr nz, @+$79                                  ; $4a5f: $20 $77

    ld l, b                                       ; $4a61: $68
    ld l, a                                       ; $4a62: $6f

jr_01f_4a63:
    jr nz, jr_01f_4ac8                            ; $4a63: $20 $63

jr_01f_4a65:
    ld h, c                                       ; $4a65: $61
    ld l, [hl]                                    ; $4a66: $6e
    jr nz, @+$66                                  ; $4a67: $20 $64

    ld [hl], d                                    ; $4a69: $72
    ld l, c                                       ; $4a6a: $69
    halt                                          ; $4a6b: $76
    ld h, l                                       ; $4a6c: $65
    ld bc, $6874                                  ; $4a6d: $01 $74 $68
    ld h, l                                       ; $4a70: $65
    jr nz, jr_01f_4ad9                            ; $4a71: $20 $66

    ld h, c                                       ; $4a73: $61
    ld [hl], d                                    ; $4a74: $72
    ld [hl], h                                    ; $4a75: $74
    ld l, b                                       ; $4a76: $68
    ld h, l                                       ; $4a77: $65
    ld [hl], e                                    ; $4a78: $73
    ld [hl], h                                    ; $4a79: $74
    jr nz, @+$71                                  ; $4a7a: $20 $6f

    ld l, [hl]                                    ; $4a7c: $6e
    ld [bc], a                                    ; $4a7d: $02
    ld [hl], h                                    ; $4a7e: $74
    ld l, b                                       ; $4a7f: $68

jr_01f_4a80:
    ld h, l                                       ; $4a80: $65
    jr nz, jr_01f_4af7                            ; $4a81: $20 $74

    ld h, l                                       ; $4a83: $65

jr_01f_4a84:
    ld h, l                                       ; $4a84: $65
    jr nz, @+$75                                  ; $4a85: $20 $73

jr_01f_4a87:
    ld l, b                                       ; $4a87: $68
    ld l, a                                       ; $4a88: $6f
    ld [hl], h                                    ; $4a89: $74
    ld l, $01                                     ; $4a8a: $2e $01
    ld d, h                                       ; $4a8c: $54
    ld l, b                                       ; $4a8d: $68
    ld h, l                                       ; $4a8e: $65
    jr nz, jr_01f_4af3                            ; $4a8f: $20 $62

    ld h, c                                       ; $4a91: $61
    ld l, h                                       ; $4a92: $6c
    ld l, h                                       ; $4a93: $6c
    jr nz, jr_01f_4b03                            ; $4a94: $20 $6d

    ld [hl], l                                    ; $4a96: $75
    ld [hl], e                                    ; $4a97: $73
    ld [hl], h                                    ; $4a98: $74
    jr nz, @+$6e                                  ; $4a99: $20 $6c

    ld h, c                                       ; $4a9b: $61

jr_01f_4a9c:
    ld l, [hl]                                    ; $4a9c: $6e
    ld h, h                                       ; $4a9d: $64
    ld bc, $6e6f                                  ; $4a9e: $01 $6f $6e
    jr nz, jr_01f_4b17                            ; $4aa1: $20 $74

jr_01f_4aa3:
    ld l, b                                       ; $4aa3: $68
    ld h, l                                       ; $4aa4: $65

jr_01f_4aa5:
    jr nz, jr_01f_4b0d                            ; $4aa5: $20 $66

    ld h, c                                       ; $4aa7: $61
    ld l, c                                       ; $4aa8: $69
    ld [hl], d                                    ; $4aa9: $72
    ld [hl], a                                    ; $4aaa: $77
    ld h, c                                       ; $4aab: $61
    ld a, c                                       ; $4aac: $79
    ld l, $03                                     ; $4aad: $2e $03
    nop                                           ; $4aaf: $00
    ld d, h                                       ; $4ab0: $54

jr_01f_4ab1:
    ld l, a                                       ; $4ab1: $6f
    jr nz, jr_01f_4b21                            ; $4ab2: $20 $6d

    ld l, a                                       ; $4ab4: $6f
    halt                                          ; $4ab5: $76
    ld h, l                                       ; $4ab6: $65
    jr nz, @+$63                                  ; $4ab7: $20 $61

    jr nz, jr_01f_4b1d                            ; $4ab9: $20 $62

    ld h, c                                       ; $4abb: $61
    ld l, h                                       ; $4abc: $6c
    ld l, h                                       ; $4abd: $6c
    jr nz, jr_01f_4b34                            ; $4abe: $20 $74

    ld l, a                                       ; $4ac0: $6f
    ld bc, $2061                                  ; $4ac1: $01 $61 $20
    ld [hl], b                                    ; $4ac4: $70
    ld l, h                                       ; $4ac5: $6c
    ld h, c                                       ; $4ac6: $61
    ld a, c                                       ; $4ac7: $79

jr_01f_4ac8:
    ld h, c                                       ; $4ac8: $61
    ld h, d                                       ; $4ac9: $62
    ld l, h                                       ; $4aca: $6c
    ld h, l                                       ; $4acb: $65
    jr nz, jr_01f_4b41                            ; $4acc: $20 $73

jr_01f_4ace:
    ld [hl], b                                    ; $4ace: $70
    ld l, a                                       ; $4acf: $6f
    ld [hl], h                                    ; $4ad0: $74
    ld bc, $6661                                  ; $4ad1: $01 $61 $66
    ld [hl], h                                    ; $4ad4: $74
    ld h, l                                       ; $4ad5: $65
    ld [hl], d                                    ; $4ad6: $72
    jr nz, jr_01f_4b41                            ; $4ad7: $20 $68

jr_01f_4ad9:
    ld l, c                                       ; $4ad9: $69
    ld [hl], h                                    ; $4ada: $74
    ld [hl], h                                    ; $4adb: $74
    ld l, c                                       ; $4adc: $69
    ld l, [hl]                                    ; $4add: $6e
    ld h, a                                       ; $4ade: $67
    jr nz, jr_01f_4b4a                            ; $4adf: $20 $69

    ld [hl], h                                    ; $4ae1: $74
    jr nz, jr_01f_4b4d                            ; $4ae2: $20 $69

    ld l, [hl]                                    ; $4ae4: $6e
    ld [hl], h                                    ; $4ae5: $74
    ld l, a                                       ; $4ae6: $6f
    ld [bc], a                                    ; $4ae7: $02
    ld h, c                                       ; $4ae8: $61
    ld l, [hl]                                    ; $4ae9: $6e
    jr nz, @+$77                                  ; $4aea: $20 $75

    ld l, [hl]                                    ; $4aec: $6e
    ld [hl], b                                    ; $4aed: $70
    ld l, h                                       ; $4aee: $6c
    ld h, c                                       ; $4aef: $61
    ld a, c                                       ; $4af0: $79
    ld h, c                                       ; $4af1: $61
    ld h, d                                       ; $4af2: $62

jr_01f_4af3:
    ld l, h                                       ; $4af3: $6c
    ld h, l                                       ; $4af4: $65
    jr nz, jr_01f_4b63                            ; $4af5: $20 $6c

jr_01f_4af7:
    ld l, c                                       ; $4af7: $69
    ld h, l                                       ; $4af8: $65
    ld l, $03                                     ; $4af9: $2e $03
    nop                                           ; $4afb: $00
    ld d, h                                       ; $4afc: $54
    ld l, a                                       ; $4afd: $6f
    jr nz, jr_01f_4b6d                            ; $4afe: $20 $6d

    ld l, c                                       ; $4b00: $69
    ld [hl], e                                    ; $4b01: $73
    ld [hl], e                                    ; $4b02: $73

jr_01f_4b03:
    jr nz, @+$71                                  ; $4b03: $20 $6f

    ld l, [hl]                                    ; $4b05: $6e
    jr nz, jr_01f_4b69                            ; $4b06: $20 $61

    ld bc, $7773                                  ; $4b08: $01 $73 $77
    ld l, c                                       ; $4b0b: $69
    ld l, [hl]                                    ; $4b0c: $6e

jr_01f_4b0d:
    ld h, a                                       ; $4b0d: $67
    jr nz, jr_01f_4b72                            ; $4b0e: $20 $62

    ld a, c                                       ; $4b10: $79
    jr nz, @+$6a                                  ; $4b11: $20 $68

    ld l, c                                       ; $4b13: $69
    ld [hl], h                                    ; $4b14: $74
    ld [hl], h                                    ; $4b15: $74
    ld l, c                                       ; $4b16: $69

jr_01f_4b17:
    ld l, [hl]                                    ; $4b17: $6e
    ld h, a                                       ; $4b18: $67
    ld bc, $6874                                  ; $4b19: $01 $74 $68
    ld h, l                                       ; $4b1c: $65

jr_01f_4b1d:
    jr nz, jr_01f_4b86                            ; $4b1d: $20 $67

    ld [hl], d                                    ; $4b1f: $72
    ld l, a                                       ; $4b20: $6f

jr_01f_4b21:
    ld [hl], l                                    ; $4b21: $75
    ld l, [hl]                                    ; $4b22: $6e
    ld h, h                                       ; $4b23: $64
    jr nz, jr_01f_4b8f                            ; $4b24: $20 $69

    ld l, [hl]                                    ; $4b26: $6e
    ld [bc], a                                    ; $4b27: $02
    ld h, [hl]                                    ; $4b28: $66
    ld [hl], d                                    ; $4b29: $72
    ld l, a                                       ; $4b2a: $6f
    ld l, [hl]                                    ; $4b2b: $6e
    ld [hl], h                                    ; $4b2c: $74
    jr nz, jr_01f_4b9e                            ; $4b2d: $20 $6f

    ld h, [hl]                                    ; $4b2f: $66
    jr nz, jr_01f_4ba6                            ; $4b30: $20 $74

    ld l, b                                       ; $4b32: $68
    ld h, l                                       ; $4b33: $65

jr_01f_4b34:
    jr nz, jr_01f_4b98                            ; $4b34: $20 $62

    ld h, c                                       ; $4b36: $61
    ld l, h                                       ; $4b37: $6c
    ld l, h                                       ; $4b38: $6c
    ld l, $01                                     ; $4b39: $2e $01
    ld c, c                                       ; $4b3b: $49
    ld [hl], h                                    ; $4b3c: $74
    jr nz, jr_01f_4bb6                            ; $4b3d: $20 $77

    ld l, a                                       ; $4b3f: $6f
    ld l, [hl]                                    ; $4b40: $6e

jr_01f_4b41:
    daa                                           ; $4b41: $27
    ld [hl], h                                    ; $4b42: $74
    jr nz, jr_01f_4bac                            ; $4b43: $20 $67

    ld l, a                                       ; $4b45: $6f
    jr nz, jr_01f_4bae                            ; $4b46: $20 $66

    ld h, c                                       ; $4b48: $61
    ld [hl], d                                    ; $4b49: $72

jr_01f_4b4a:
    jr nz, jr_01f_4bb5                            ; $4b4a: $20 $69

    ld h, [hl]                                    ; $4b4c: $66

jr_01f_4b4d:
    ld bc, $6f79                                  ; $4b4d: $01 $79 $6f
    ld [hl], l                                    ; $4b50: $75
    jr nz, jr_01f_4bb7                            ; $4b51: $20 $64

    ld [hl], l                                    ; $4b53: $75
    ld h, [hl]                                    ; $4b54: $66
    ld h, [hl]                                    ; $4b55: $66
    ld hl, $0003                                  ; $4b56: $21 $03 $00
    ld b, c                                       ; $4b59: $41
    jr nz, jr_01f_4bcf                            ; $4b5a: $20 $73

    ld h, e                                       ; $4b5c: $63
    ld l, a                                       ; $4b5d: $6f
    ld [hl], d                                    ; $4b5e: $72
    ld h, l                                       ; $4b5f: $65
    jr nz, jr_01f_4bd1                            ; $4b60: $20 $6f

    ld h, [hl]                                    ; $4b62: $66

jr_01f_4b63:
    ld bc, $2032                                  ; $4b63: $01 $32 $20
    ld [hl], e                                    ; $4b66: $73
    ld [hl], h                                    ; $4b67: $74
    ld [hl], d                                    ; $4b68: $72

jr_01f_4b69:
    ld l, a                                       ; $4b69: $6f
    ld l, e                                       ; $4b6a: $6b
    ld h, l                                       ; $4b6b: $65
    ld [hl], e                                    ; $4b6c: $73

jr_01f_4b6d:
    jr nz, jr_01f_4be4                            ; $4b6d: $20 $75

    ld l, [hl]                                    ; $4b6f: $6e
    ld h, h                                       ; $4b70: $64
    ld h, l                                       ; $4b71: $65

jr_01f_4b72:
    ld [hl], d                                    ; $4b72: $72
    ld bc, $6170                                  ; $4b73: $01 $70 $61
    ld [hl], d                                    ; $4b76: $72
    jr nz, jr_01f_4be8                            ; $4b77: $20 $6f

    ld l, [hl]                                    ; $4b79: $6e
    jr nz, jr_01f_4bdd                            ; $4b7a: $20 $61

    jr nz, jr_01f_4be6                            ; $4b7c: $20 $68

    ld l, a                                       ; $4b7e: $6f
    ld l, h                                       ; $4b7f: $6c
    ld h, l                                       ; $4b80: $65
    ld l, $03                                     ; $4b81: $2e $03
    nop                                           ; $4b83: $00
    ld d, b                                       ; $4b84: $50
    ld l, h                                       ; $4b85: $6c

jr_01f_4b86:
    ld h, c                                       ; $4b86: $61
    ld a, c                                       ; $4b87: $79
    ld l, c                                       ; $4b88: $69
    ld l, [hl]                                    ; $4b89: $6e
    ld h, a                                       ; $4b8a: $67
    jr nz, jr_01f_4bee                            ; $4b8b: $20 $61

    jr nz, jr_01f_4bf7                            ; $4b8d: $20 $68

jr_01f_4b8f:
    ld l, a                                       ; $4b8f: $6f
    ld l, h                                       ; $4b90: $6c
    ld h, l                                       ; $4b91: $65
    jr nz, jr_01f_4c03                            ; $4b92: $20 $6f

    ld [hl], d                                    ; $4b94: $72
    ld bc, $6f63                                  ; $4b95: $01 $63 $6f

jr_01f_4b98:
    ld [hl], l                                    ; $4b98: $75
    ld [hl], d                                    ; $4b99: $72
    ld [hl], e                                    ; $4b9a: $73
    ld h, l                                       ; $4b9b: $65
    jr nz, jr_01f_4c07                            ; $4b9c: $20 $69

jr_01f_4b9e:
    ld l, [hl]                                    ; $4b9e: $6e
    jr nz, jr_01f_4c15                            ; $4b9f: $20 $74

    ld l, b                                       ; $4ba1: $68
    ld h, l                                       ; $4ba2: $65
    jr nz, jr_01f_4c18                            ; $4ba3: $20 $73

    ld h, c                                       ; $4ba5: $61

jr_01f_4ba6:
    ld l, l                                       ; $4ba6: $6d
    ld h, l                                       ; $4ba7: $65
    ld bc, $756e                                  ; $4ba8: $01 $6e $75
    ld l, l                                       ; $4bab: $6d

jr_01f_4bac:
    ld h, d                                       ; $4bac: $62
    ld h, l                                       ; $4bad: $65

jr_01f_4bae:
    ld [hl], d                                    ; $4bae: $72
    jr nz, jr_01f_4c20                            ; $4baf: $20 $6f

    ld h, [hl]                                    ; $4bb1: $66
    jr nz, jr_01f_4c27                            ; $4bb2: $20 $73

    ld [hl], h                                    ; $4bb4: $74

jr_01f_4bb5:
    ld [hl], d                                    ; $4bb5: $72

jr_01f_4bb6:
    ld l, a                                       ; $4bb6: $6f

jr_01f_4bb7:
    ld l, e                                       ; $4bb7: $6b
    ld h, l                                       ; $4bb8: $65
    ld [hl], e                                    ; $4bb9: $73
    ld [bc], a                                    ; $4bba: $02
    ld h, c                                       ; $4bbb: $61
    ld [hl], e                                    ; $4bbc: $73
    jr nz, @+$76                                  ; $4bbd: $20 $74

    ld l, b                                       ; $4bbf: $68
    ld h, l                                       ; $4bc0: $65
    jr nz, jr_01f_4c36                            ; $4bc1: $20 $73

    ld h, l                                       ; $4bc3: $65
    ld [hl], h                                    ; $4bc4: $74
    jr nz, jr_01f_4c37                            ; $4bc5: $20 $70

    ld h, c                                       ; $4bc7: $61
    ld [hl], d                                    ; $4bc8: $72
    ld bc, $6373                                  ; $4bc9: $01 $73 $63
    ld l, a                                       ; $4bcc: $6f
    ld [hl], d                                    ; $4bcd: $72
    ld h, l                                       ; $4bce: $65

jr_01f_4bcf:
    ld l, $03                                     ; $4bcf: $2e $03

jr_01f_4bd1:
    nop                                           ; $4bd1: $00
    ld b, c                                       ; $4bd2: $41
    jr nz, jr_01f_4c49                            ; $4bd3: $20 $74

    ld h, l                                       ; $4bd5: $65
    ld h, e                                       ; $4bd6: $63
    ld l, b                                       ; $4bd7: $68
    ld l, [hl]                                    ; $4bd8: $6e
    ld l, c                                       ; $4bd9: $69
    ld [hl], c                                    ; $4bda: $71
    ld [hl], l                                    ; $4bdb: $75
    ld h, l                                       ; $4bdc: $65

jr_01f_4bdd:
    jr nz, jr_01f_4c45                            ; $4bdd: $20 $66

    ld l, a                                       ; $4bdf: $6f
    ld [hl], d                                    ; $4be0: $72
    ld bc, $6373                                  ; $4be1: $01 $73 $63

jr_01f_4be4:
    ld h, c                                       ; $4be4: $61
    ld [hl], h                                    ; $4be5: $74

jr_01f_4be6:
    ld [hl], h                                    ; $4be6: $74
    ld h, l                                       ; $4be7: $65

jr_01f_4be8:
    ld [hl], d                                    ; $4be8: $72
    ld l, c                                       ; $4be9: $69
    ld l, [hl]                                    ; $4bea: $6e
    ld h, a                                       ; $4beb: $67
    jr nz, jr_01f_4c61                            ; $4bec: $20 $73

jr_01f_4bee:
    ld h, c                                       ; $4bee: $61
    ld l, [hl]                                    ; $4bef: $6e
    ld h, h                                       ; $4bf0: $64
    ld bc, $726f                                  ; $4bf1: $01 $6f $72
    jr nz, @+$66                                  ; $4bf4: $20 $64

    ld l, c                                       ; $4bf6: $69

jr_01f_4bf7:
    ld [hl], d                                    ; $4bf7: $72
    ld [hl], h                                    ; $4bf8: $74
    jr nz, @+$76                                  ; $4bf9: $20 $74

    ld l, a                                       ; $4bfb: $6f
    jr nz, jr_01f_4c64                            ; $4bfc: $20 $66

    ld [hl], d                                    ; $4bfe: $72
    ld h, l                                       ; $4bff: $65
    ld h, l                                       ; $4c00: $65
    ld [bc], a                                    ; $4c01: $02
    ld [hl], h                                    ; $4c02: $74

jr_01f_4c03:
    ld l, b                                       ; $4c03: $68
    ld h, l                                       ; $4c04: $65
    jr nz, jr_01f_4c69                            ; $4c05: $20 $62

jr_01f_4c07:
    ld h, c                                       ; $4c07: $61
    ld l, h                                       ; $4c08: $6c
    ld l, h                                       ; $4c09: $6c
    jr nz, jr_01f_4c72                            ; $4c0a: $20 $66

    ld [hl], d                                    ; $4c0c: $72
    ld l, a                                       ; $4c0d: $6f
    ld l, l                                       ; $4c0e: $6d
    jr nz, jr_01f_4c72                            ; $4c0f: $20 $61

    ld bc, $6168                                  ; $4c11: $01 $68 $61
    ld a, d                                       ; $4c14: $7a

jr_01f_4c15:
    ld h, c                                       ; $4c15: $61
    ld [hl], d                                    ; $4c16: $72
    ld h, h                                       ; $4c17: $64

jr_01f_4c18:
    ld l, $20                                     ; $4c18: $2e $20
    ld d, h                                       ; $4c1a: $54
    ld l, b                                       ; $4c1b: $68
    ld h, l                                       ; $4c1c: $65
    ld bc, $6f73                                  ; $4c1d: $01 $73 $6f

jr_01f_4c20:
    ld l, h                                       ; $4c20: $6c
    ld h, l                                       ; $4c21: $65
    jr nz, @+$71                                  ; $4c22: $20 $6f

    ld h, [hl]                                    ; $4c24: $66
    jr nz, jr_01f_4c9b                            ; $4c25: $20 $74

jr_01f_4c27:
    ld l, b                                       ; $4c27: $68
    ld h, l                                       ; $4c28: $65
    jr nz, jr_01f_4c7e                            ; $4c29: $20 $53

    ld d, a                                       ; $4c2b: $57
    ld [bc], a                                    ; $4c2c: $02
    ld l, b                                       ; $4c2d: $68
    ld h, c                                       ; $4c2e: $61
    ld [hl], e                                    ; $4c2f: $73
    jr nz, @+$63                                  ; $4c30: $20 $61

    jr nz, jr_01f_4ca4                            ; $4c32: $20 $70

    ld [hl], d                                    ; $4c34: $72
    ld l, a                                       ; $4c35: $6f

jr_01f_4c36:
    ld l, d                                       ; $4c36: $6a

jr_01f_4c37:
    ld h, l                                       ; $4c37: $65
    ld h, e                                       ; $4c38: $63
    ld [hl], h                                    ; $4c39: $74
    ld l, c                                       ; $4c3a: $69
    ld l, a                                       ; $4c3b: $6f
    ld l, [hl]                                    ; $4c3c: $6e
    ld bc, $7375                                  ; $4c3d: $01 $75 $73
    ld h, l                                       ; $4c40: $65
    ld h, h                                       ; $4c41: $64
    jr nz, jr_01f_4caa                            ; $4c42: $20 $66

    ld l, a                                       ; $4c44: $6f

jr_01f_4c45:
    ld [hl], d                                    ; $4c45: $72
    jr nz, jr_01f_4cbc                            ; $4c46: $20 $74

    ld l, b                                       ; $4c48: $68

jr_01f_4c49:
    ld l, c                                       ; $4c49: $69
    ld [hl], e                                    ; $4c4a: $73
    ld bc, $7570                                  ; $4c4b: $01 $70 $75
    ld [hl], d                                    ; $4c4e: $72
    ld [hl], b                                    ; $4c4f: $70
    ld l, a                                       ; $4c50: $6f
    ld [hl], e                                    ; $4c51: $73
    ld h, l                                       ; $4c52: $65
    ld l, $03                                     ; $4c53: $2e $03
    nop                                           ; $4c55: $00
    ld d, h                                       ; $4c56: $54
    ld l, b                                       ; $4c57: $68
    ld h, l                                       ; $4c58: $65
    jr nz, jr_01f_4cc1                            ; $4c59: $20 $66

    ld [hl], d                                    ; $4c5b: $72
    ld l, a                                       ; $4c5c: $6f
    ld l, [hl]                                    ; $4c5d: $6e
    ld [hl], h                                    ; $4c5e: $74
    jr nz, jr_01f_4cd1                            ; $4c5f: $20 $70

jr_01f_4c61:
    ld h, c                                       ; $4c61: $61
    ld [hl], d                                    ; $4c62: $72
    ld [hl], h                                    ; $4c63: $74

jr_01f_4c64:
    ld bc, $666f                                  ; $4c64: $01 $6f $66
    jr nz, jr_01f_4cca                            ; $4c67: $20 $61

jr_01f_4c69:
    jr nz, jr_01f_4cce                            ; $4c69: $20 $63

    ld l, h                                       ; $4c6b: $6c
    ld [hl], l                                    ; $4c6c: $75
    ld h, d                                       ; $4c6d: $62
    jr nz, jr_01f_4cd8                            ; $4c6e: $20 $68

    ld h, l                                       ; $4c70: $65
    ld h, c                                       ; $4c71: $61

jr_01f_4c72:
    ld h, h                                       ; $4c72: $64
    ld bc, $6874                                  ; $4c73: $01 $74 $68
    ld h, c                                       ; $4c76: $61
    ld [hl], h                                    ; $4c77: $74
    jr nz, jr_01f_4cde                            ; $4c78: $20 $64

    ld l, c                                       ; $4c7a: $69
    ld [hl], d                                    ; $4c7b: $72
    ld h, l                                       ; $4c7c: $65
    ld h, e                                       ; $4c7d: $63

jr_01f_4c7e:
    ld [hl], h                                    ; $4c7e: $74
    ld l, h                                       ; $4c7f: $6c
    ld a, c                                       ; $4c80: $79
    ld [bc], a                                    ; $4c81: $02
    ld l, c                                       ; $4c82: $69
    ld l, l                                       ; $4c83: $6d
    ld [hl], b                                    ; $4c84: $70
    ld h, c                                       ; $4c85: $61
    ld h, e                                       ; $4c86: $63
    ld [hl], h                                    ; $4c87: $74
    ld [hl], e                                    ; $4c88: $73
    jr nz, jr_01f_4cff                            ; $4c89: $20 $74

    ld l, b                                       ; $4c8b: $68
    ld h, l                                       ; $4c8c: $65
    ld bc, $6162                                  ; $4c8d: $01 $62 $61
    ld l, h                                       ; $4c90: $6c
    ld l, h                                       ; $4c91: $6c
    ld l, $03                                     ; $4c92: $2e $03
    nop                                           ; $4c94: $00
    ld b, c                                       ; $4c95: $41
    jr nz, jr_01f_4d0b                            ; $4c96: $20 $73

    ld l, h                                       ; $4c98: $6c
    ld l, c                                       ; $4c99: $69
    ld h, e                                       ; $4c9a: $63

jr_01f_4c9b:
    ld h, l                                       ; $4c9b: $65
    dec l                                         ; $4c9c: $2d
    ld [hl], e                                    ; $4c9d: $73
    ld [hl], h                                    ; $4c9e: $74
    ld a, c                                       ; $4c9f: $79
    ld l, h                                       ; $4ca0: $6c
    ld h, l                                       ; $4ca1: $65
    jr nz, jr_01f_4d17                            ; $4ca2: $20 $73

jr_01f_4ca4:
    ld l, b                                       ; $4ca4: $68
    ld l, a                                       ; $4ca5: $6f
    ld [hl], h                                    ; $4ca6: $74
    ld bc, $6e69                                  ; $4ca7: $01 $69 $6e

jr_01f_4caa:
    jr nz, @+$79                                  ; $4caa: $20 $77

    ld l, b                                       ; $4cac: $68
    ld l, c                                       ; $4cad: $69
    ld h, e                                       ; $4cae: $63
    ld l, b                                       ; $4caf: $68
    jr nz, jr_01f_4d26                            ; $4cb0: $20 $74

    ld l, b                                       ; $4cb2: $68
    ld h, l                                       ; $4cb3: $65
    jr nz, @+$64                                  ; $4cb4: $20 $62

    ld h, c                                       ; $4cb6: $61
    ld l, h                                       ; $4cb7: $6c
    ld l, h                                       ; $4cb8: $6c
    ld bc, $6c66                                  ; $4cb9: $01 $66 $6c

jr_01f_4cbc:
    ld l, c                                       ; $4cbc: $69
    ld h, l                                       ; $4cbd: $65
    ld [hl], e                                    ; $4cbe: $73
    jr nz, jr_01f_4d35                            ; $4cbf: $20 $74

jr_01f_4cc1:
    ld l, a                                       ; $4cc1: $6f
    jr nz, jr_01f_4d38                            ; $4cc2: $20 $74

    ld l, b                                       ; $4cc4: $68
    ld h, l                                       ; $4cc5: $65
    jr nz, jr_01f_4d34                            ; $4cc6: $20 $6c

    ld h, l                                       ; $4cc8: $65
    ld h, [hl]                                    ; $4cc9: $66

jr_01f_4cca:
    ld [hl], h                                    ; $4cca: $74
    ld [bc], a                                    ; $4ccb: $02
    ld h, d                                       ; $4ccc: $62
    ld h, l                                       ; $4ccd: $65

jr_01f_4cce:
    ld h, [hl]                                    ; $4cce: $66
    ld l, a                                       ; $4ccf: $6f
    ld [hl], d                                    ; $4cd0: $72

jr_01f_4cd1:
    ld h, l                                       ; $4cd1: $65
    jr nz, jr_01f_4d3c                            ; $4cd2: $20 $68

    ld h, l                                       ; $4cd4: $65
    ld h, c                                       ; $4cd5: $61
    ld h, h                                       ; $4cd6: $64
    ld l, c                                       ; $4cd7: $69

jr_01f_4cd8:
    ld l, [hl]                                    ; $4cd8: $6e
    ld h, a                                       ; $4cd9: $67
    ld bc, $6f74                                  ; $4cda: $01 $74 $6f
    ld [hl], a                                    ; $4cdd: $77

jr_01f_4cde:
    ld h, c                                       ; $4cde: $61
    ld [hl], d                                    ; $4cdf: $72
    ld h, h                                       ; $4ce0: $64
    jr nz, jr_01f_4d57                            ; $4ce1: $20 $74

    ld l, b                                       ; $4ce3: $68
    ld h, l                                       ; $4ce4: $65
    jr nz, jr_01f_4d5b                            ; $4ce5: $20 $74

    ld h, c                                       ; $4ce7: $61
    ld [hl], d                                    ; $4ce8: $72
    ld h, a                                       ; $4ce9: $67
    ld h, l                                       ; $4cea: $65
    ld [hl], h                                    ; $4ceb: $74
    ld l, $03                                     ; $4cec: $2e $03
    nop                                           ; $4cee: $00
    ld d, h                                       ; $4cef: $54
    ld l, b                                       ; $4cf0: $68
    ld h, l                                       ; $4cf1: $65
    jr nz, jr_01f_4d68                            ; $4cf2: $20 $74

    ld h, l                                       ; $4cf4: $65
    ld l, [hl]                                    ; $4cf5: $6e
    ld h, h                                       ; $4cf6: $64
    ld h, l                                       ; $4cf7: $65
    ld h, h                                       ; $4cf8: $64
    jr nz, jr_01f_4d62                            ; $4cf9: $20 $67

    ld [hl], d                                    ; $4cfb: $72
    ld h, c                                       ; $4cfc: $61
    ld [hl], e                                    ; $4cfd: $73
    ld [hl], e                                    ; $4cfe: $73

jr_01f_4cff:
    jr nz, jr_01f_4d75                            ; $4cff: $20 $74

    ld l, b                                       ; $4d01: $68
    ld h, c                                       ; $4d02: $61
    ld [hl], h                                    ; $4d03: $74
    ld bc, $7473                                  ; $4d04: $01 $73 $74
    ld [hl], d                                    ; $4d07: $72
    ld h, l                                       ; $4d08: $65
    ld [hl], h                                    ; $4d09: $74
    ld h, e                                       ; $4d0a: $63

jr_01f_4d0b:
    ld l, b                                       ; $4d0b: $68
    ld h, l                                       ; $4d0c: $65
    ld [hl], e                                    ; $4d0d: $73
    jr nz, jr_01f_4d76                            ; $4d0e: $20 $66

    ld [hl], d                                    ; $4d10: $72
    ld l, a                                       ; $4d11: $6f
    ld l, l                                       ; $4d12: $6d
    jr nz, @+$76                                  ; $4d13: $20 $74

    ld l, b                                       ; $4d15: $68
    ld h, l                                       ; $4d16: $65

jr_01f_4d17:
    ld bc, $6574                                  ; $4d17: $01 $74 $65
    ld h, l                                       ; $4d1a: $65
    jr nz, jr_01f_4d91                            ; $4d1b: $20 $74

    ld l, a                                       ; $4d1d: $6f
    jr nz, jr_01f_4d94                            ; $4d1e: $20 $74

    ld l, b                                       ; $4d20: $68
    ld h, l                                       ; $4d21: $65
    jr nz, jr_01f_4d8b                            ; $4d22: $20 $67

    ld [hl], d                                    ; $4d24: $72
    ld h, l                                       ; $4d25: $65

jr_01f_4d26:
    ld h, l                                       ; $4d26: $65
    ld l, [hl]                                    ; $4d27: $6e
    ld l, $02                                     ; $4d28: $2e $02
    ld c, c                                       ; $4d2a: $49
    ld [hl], h                                    ; $4d2b: $74
    daa                                           ; $4d2c: $27
    ld [hl], e                                    ; $4d2d: $73
    jr nz, jr_01f_4d95                            ; $4d2e: $20 $65

    ld h, c                                       ; $4d30: $61
    ld [hl], e                                    ; $4d31: $73
    ld l, c                                       ; $4d32: $69
    ld h, l                                       ; $4d33: $65

jr_01f_4d34:
    ld [hl], d                                    ; $4d34: $72

jr_01f_4d35:
    jr nz, jr_01f_4dab                            ; $4d35: $20 $74

    ld l, a                                       ; $4d37: $6f

jr_01f_4d38:
    jr nz, @+$6a                                  ; $4d38: $20 $68

    ld l, c                                       ; $4d3a: $69
    ld [hl], h                                    ; $4d3b: $74

jr_01f_4d3c:
    jr nz, jr_01f_4da4                            ; $4d3c: $20 $66

    ld [hl], d                                    ; $4d3e: $72
    ld l, a                                       ; $4d3f: $6f
    ld l, l                                       ; $4d40: $6d
    ld bc, $6874                                  ; $4d41: $01 $74 $68
    ld h, l                                       ; $4d44: $65
    jr nz, jr_01f_4dad                            ; $4d45: $20 $66

    ld h, c                                       ; $4d47: $61
    ld l, c                                       ; $4d48: $69
    ld [hl], d                                    ; $4d49: $72
    ld [hl], a                                    ; $4d4a: $77
    ld h, c                                       ; $4d4b: $61
    ld a, c                                       ; $4d4c: $79
    jr nz, jr_01f_4dc3                            ; $4d4d: $20 $74

    ld l, b                                       ; $4d4f: $68
    ld h, c                                       ; $4d50: $61
    ld l, [hl]                                    ; $4d51: $6e
    jr nz, jr_01f_4dbd                            ; $4d52: $20 $69

    ld [hl], h                                    ; $4d54: $74
    jr nz, jr_01f_4dc0                            ; $4d55: $20 $69

jr_01f_4d57:
    ld [hl], e                                    ; $4d57: $73
    ld bc, $6f74                                  ; $4d58: $01 $74 $6f

jr_01f_4d5b:
    jr nz, @+$6a                                  ; $4d5b: $20 $68

    ld l, c                                       ; $4d5d: $69
    ld [hl], h                                    ; $4d5e: $74
    jr nz, jr_01f_4dc7                            ; $4d5f: $20 $66

    ld [hl], d                                    ; $4d61: $72

jr_01f_4d62:
    ld l, a                                       ; $4d62: $6f
    ld l, l                                       ; $4d63: $6d
    jr nz, jr_01f_4dda                            ; $4d64: $20 $74

    ld l, b                                       ; $4d66: $68
    ld h, l                                       ; $4d67: $65

jr_01f_4d68:
    jr nz, jr_01f_4ddc                            ; $4d68: $20 $72

    ld l, a                                       ; $4d6a: $6f
    ld [hl], l                                    ; $4d6b: $75
    ld h, a                                       ; $4d6c: $67
    ld l, b                                       ; $4d6d: $68
    ld l, $03                                     ; $4d6e: $2e $03
    nop                                           ; $4d70: $00
    ld b, c                                       ; $4d71: $41
    jr nz, jr_01f_4dd6                            ; $4d72: $20 $62

    ld [hl], l                                    ; $4d74: $75

jr_01f_4d75:
    ld l, [hl]                                    ; $4d75: $6e

jr_01f_4d76:
    ld l, e                                       ; $4d76: $6b
    ld h, l                                       ; $4d77: $65
    ld [hl], d                                    ; $4d78: $72
    jr nz, jr_01f_4def                            ; $4d79: $20 $74

    ld l, b                                       ; $4d7b: $68
    ld h, c                                       ; $4d7c: $61
    ld [hl], h                                    ; $4d7d: $74
    ld bc, $7369                                  ; $4d7e: $01 $69 $73
    jr nz, jr_01f_4de5                            ; $4d81: $20 $62

    ld h, l                                       ; $4d83: $65
    ld [hl], e                                    ; $4d84: $73
    ld l, c                                       ; $4d85: $69
    ld h, h                                       ; $4d86: $64
    ld h, l                                       ; $4d87: $65
    jr nz, @+$71                                  ; $4d88: $20 $6f

    ld [hl], d                                    ; $4d8a: $72

jr_01f_4d8b:
    jr nz, jr_01f_4df6                            ; $4d8b: $20 $69

    ld l, [hl]                                    ; $4d8d: $6e
    ld bc, $2061                                  ; $4d8e: $01 $61 $20

jr_01f_4d91:
    ld h, [hl]                                    ; $4d91: $66
    ld h, c                                       ; $4d92: $61
    ld l, c                                       ; $4d93: $69

jr_01f_4d94:
    ld [hl], d                                    ; $4d94: $72

jr_01f_4d95:
    ld [hl], a                                    ; $4d95: $77
    ld h, c                                       ; $4d96: $61
    ld a, c                                       ; $4d97: $79
    ld l, $03                                     ; $4d98: $2e $03
    nop                                           ; $4d9a: $00
    ld b, c                                       ; $4d9b: $41
    jr nz, jr_01f_4e15                            ; $4d9c: $20 $77

    ld l, a                                       ; $4d9e: $6f
    ld l, a                                       ; $4d9f: $6f
    ld h, h                                       ; $4da0: $64
    jr nz, @+$65                                  ; $4da1: $20 $63

    ld l, h                                       ; $4da3: $6c

jr_01f_4da4:
    ld [hl], l                                    ; $4da4: $75
    ld h, d                                       ; $4da5: $62
    jr nz, jr_01f_4e1c                            ; $4da6: $20 $74

    ld l, b                                       ; $4da8: $68
    ld h, c                                       ; $4da9: $61
    ld [hl], h                                    ; $4daa: $74

jr_01f_4dab:
    jr nz, jr_01f_4e10                            ; $4dab: $20 $63

jr_01f_4dad:
    ld h, c                                       ; $4dad: $61
    ld l, [hl]                                    ; $4dae: $6e
    ld bc, $6562                                  ; $4daf: $01 $62 $65
    jr nz, @+$77                                  ; $4db2: $20 $75

    ld [hl], e                                    ; $4db4: $73
    ld h, l                                       ; $4db5: $65
    ld h, h                                       ; $4db6: $64
    jr nz, jr_01f_4e1f                            ; $4db7: $20 $66

    ld l, a                                       ; $4db9: $6f
    ld [hl], d                                    ; $4dba: $72
    jr nz, @+$6a                                  ; $4dbb: $20 $68

jr_01f_4dbd:
    ld l, c                                       ; $4dbd: $69
    ld [hl], h                                    ; $4dbe: $74
    ld [hl], h                                    ; $4dbf: $74

jr_01f_4dc0:
    ld l, c                                       ; $4dc0: $69
    ld l, [hl]                                    ; $4dc1: $6e
    ld h, a                                       ; $4dc2: $67

jr_01f_4dc3:
    ld bc, $6162                                  ; $4dc3: $01 $62 $61
    ld l, h                                       ; $4dc6: $6c

jr_01f_4dc7:
    ld l, h                                       ; $4dc7: $6c
    ld [hl], e                                    ; $4dc8: $73
    jr nz, jr_01f_4e3f                            ; $4dc9: $20 $74

    ld l, b                                       ; $4dcb: $68
    ld h, c                                       ; $4dcc: $61
    ld [hl], h                                    ; $4dcd: $74
    jr nz, jr_01f_4e3c                            ; $4dce: $20 $6c

    ld l, c                                       ; $4dd0: $69
    ld h, l                                       ; $4dd1: $65
    jr nz, jr_01f_4e43                            ; $4dd2: $20 $6f

    ld [hl], l                                    ; $4dd4: $75
    ld [hl], h                                    ; $4dd5: $74

jr_01f_4dd6:
    ld [hl], e                                    ; $4dd6: $73
    ld l, c                                       ; $4dd7: $69
    ld h, h                                       ; $4dd8: $64
    ld h, l                                       ; $4dd9: $65

jr_01f_4dda:
    ld [bc], a                                    ; $4dda: $02
    ld [hl], h                                    ; $4ddb: $74

jr_01f_4ddc:
    ld l, b                                       ; $4ddc: $68
    ld h, l                                       ; $4ddd: $65
    jr nz, @+$76                                  ; $4dde: $20 $74

    ld h, l                                       ; $4de0: $65
    ld h, l                                       ; $4de1: $65
    jr nz, jr_01f_4e4b                            ; $4de2: $20 $67

    ld [hl], d                                    ; $4de4: $72

jr_01f_4de5:
    ld l, a                                       ; $4de5: $6f
    ld [hl], l                                    ; $4de6: $75
    ld l, [hl]                                    ; $4de7: $6e
    ld h, h                                       ; $4de8: $64
    ld l, $20                                     ; $4de9: $2e $20
    ld bc, $6854                                  ; $4deb: $01 $54 $68
    ld l, c                                       ; $4dee: $69

jr_01f_4def:
    ld [hl], e                                    ; $4def: $73
    jr nz, jr_01f_4e5b                            ; $4df0: $20 $69

    ld [hl], e                                    ; $4df2: $73
    jr nz, jr_01f_4e6a                            ; $4df3: $20 $75

    ld [hl], e                                    ; $4df5: $73

jr_01f_4df6:
    ld h, l                                       ; $4df6: $65
    ld h, h                                       ; $4df7: $64
    jr nz, jr_01f_4e6e                            ; $4df8: $20 $74

    ld l, a                                       ; $4dfa: $6f
    jr nz, jr_01f_4e6f                            ; $4dfb: $20 $72

    ld h, l                                       ; $4dfd: $65
    ld h, [hl]                                    ; $4dfe: $66
    ld h, l                                       ; $4dff: $65
    ld [hl], d                                    ; $4e00: $72
    ld bc, $7420                                  ; $4e01: $01 $20 $74
    ld l, a                                       ; $4e04: $6f
    jr nz, @+$70                                  ; $4e05: $20 $6e

    ld l, a                                       ; $4e07: $6f
    ld l, [hl]                                    ; $4e08: $6e
    dec l                                         ; $4e09: $2d
    ld h, h                                       ; $4e0a: $64
    ld [hl], d                                    ; $4e0b: $72
    ld l, c                                       ; $4e0c: $69
    halt                                          ; $4e0d: $76
    ld h, l                                       ; $4e0e: $65
    ld [hl], d                                    ; $4e0f: $72

jr_01f_4e10:
    jr nz, jr_01f_4e89                            ; $4e10: $20 $77

    ld l, a                                       ; $4e12: $6f
    ld l, a                                       ; $4e13: $6f
    ld h, h                                       ; $4e14: $64

jr_01f_4e15:
    ld [hl], e                                    ; $4e15: $73
    ld l, $03                                     ; $4e16: $2e $03
    nop                                           ; $4e18: $00
    ld b, c                                       ; $4e19: $41
    jr nz, jr_01f_4e7e                            ; $4e1a: $20 $62

jr_01f_4e1c:
    ld h, c                                       ; $4e1c: $61
    ld l, h                                       ; $4e1d: $6c
    ld l, h                                       ; $4e1e: $6c

jr_01f_4e1f:
    jr nz, @+$79                                  ; $4e1f: $20 $77

    ld l, c                                       ; $4e21: $69
    ld [hl], h                                    ; $4e22: $74
    ld l, b                                       ; $4e23: $68
    jr nz, jr_01f_4e94                            ; $4e24: $20 $6e

    ld l, a                                       ; $4e26: $6f
    ld bc, $7073                                  ; $4e27: $01 $73 $70
    ld l, c                                       ; $4e2a: $69
    ld l, [hl]                                    ; $4e2b: $6e
    jr nz, @+$76                                  ; $4e2c: $20 $74

    ld l, b                                       ; $4e2e: $68
    ld h, c                                       ; $4e2f: $61
    ld [hl], h                                    ; $4e30: $74
    jr nz, jr_01f_4e99                            ; $4e31: $20 $66

    ld l, h                                       ; $4e33: $6c
    ld l, c                                       ; $4e34: $69
    ld h, l                                       ; $4e35: $65
    ld [hl], e                                    ; $4e36: $73
    ld bc, $6166                                  ; $4e37: $01 $66 $61
    ld [hl], d                                    ; $4e3a: $72
    ld [hl], h                                    ; $4e3b: $74

jr_01f_4e3c:
    ld l, b                                       ; $4e3c: $68
    ld h, l                                       ; $4e3d: $65
    ld [hl], d                                    ; $4e3e: $72

jr_01f_4e3f:
    jr nz, jr_01f_4eb5                            ; $4e3f: $20 $74

    ld l, b                                       ; $4e41: $68
    ld h, c                                       ; $4e42: $61

jr_01f_4e43:
    ld l, [hl]                                    ; $4e43: $6e
    ld [bc], a                                    ; $4e44: $02
    ld l, [hl]                                    ; $4e45: $6e
    ld l, a                                       ; $4e46: $6f
    ld [hl], d                                    ; $4e47: $72
    ld l, l                                       ; $4e48: $6d
    ld h, c                                       ; $4e49: $61
    ld l, h                                       ; $4e4a: $6c

jr_01f_4e4b:
    jr nz, jr_01f_4eb1                            ; $4e4b: $20 $64

    ld [hl], l                                    ; $4e4d: $75
    ld h, l                                       ; $4e4e: $65
    jr nz, jr_01f_4ec5                            ; $4e4f: $20 $74

    ld l, a                                       ; $4e51: $6f
    ld bc, $7267                                  ; $4e52: $01 $67 $72
    ld h, c                                       ; $4e55: $61
    ld [hl], e                                    ; $4e56: $73
    ld [hl], e                                    ; $4e57: $73
    jr nz, jr_01f_4ec9                            ; $4e58: $20 $6f

    ld [hl], d                                    ; $4e5a: $72

jr_01f_4e5b:
    jr nz, jr_01f_4ed4                            ; $4e5b: $20 $77

    ld h, c                                       ; $4e5d: $61
    ld [hl], h                                    ; $4e5e: $74
    ld h, l                                       ; $4e5f: $65
    ld [hl], d                                    ; $4e60: $72
    ld bc, $6f63                                  ; $4e61: $01 $63 $6f
    ld l, l                                       ; $4e64: $6d
    ld l, c                                       ; $4e65: $69
    ld l, [hl]                                    ; $4e66: $6e
    ld h, a                                       ; $4e67: $67
    jr nz, jr_01f_4ecc                            ; $4e68: $20 $62

jr_01f_4e6a:
    ld h, l                                       ; $4e6a: $65
    ld [hl], h                                    ; $4e6b: $74
    ld [hl], a                                    ; $4e6c: $77
    ld h, l                                       ; $4e6d: $65

jr_01f_4e6e:
    ld h, l                                       ; $4e6e: $65

jr_01f_4e6f:
    ld l, [hl]                                    ; $4e6f: $6e
    ld [bc], a                                    ; $4e70: $02
    ld [hl], h                                    ; $4e71: $74
    ld l, b                                       ; $4e72: $68
    ld h, l                                       ; $4e73: $65
    jr nz, jr_01f_4ed9                            ; $4e74: $20 $63

    ld l, h                                       ; $4e76: $6c
    ld [hl], l                                    ; $4e77: $75
    ld h, d                                       ; $4e78: $62
    jr nz, @+$68                                  ; $4e79: $20 $66

    ld h, c                                       ; $4e7b: $61
    ld h, e                                       ; $4e7c: $63
    ld h, l                                       ; $4e7d: $65

jr_01f_4e7e:
    ld bc, $6e61                                  ; $4e7e: $01 $61 $6e
    ld h, h                                       ; $4e81: $64
    jr nz, jr_01f_4ee6                            ; $4e82: $20 $62

    ld h, c                                       ; $4e84: $61
    ld l, h                                       ; $4e85: $6c
    ld l, h                                       ; $4e86: $6c
    jr nz, jr_01f_4ef8                            ; $4e87: $20 $6f

jr_01f_4e89:
    ld l, [hl]                                    ; $4e89: $6e
    ld bc, $6d69                                  ; $4e8a: $01 $69 $6d
    ld [hl], b                                    ; $4e8d: $70
    ld h, c                                       ; $4e8e: $61
    ld h, e                                       ; $4e8f: $63
    ld [hl], h                                    ; $4e90: $74
    ld l, $03                                     ; $4e91: $2e $03
    nop                                           ; $4e93: $00

jr_01f_4e94:
    ld d, h                                       ; $4e94: $54
    ld l, b                                       ; $4e95: $68
    ld h, l                                       ; $4e96: $65
    jr nz, jr_01f_4f06                            ; $4e97: $20 $6d

jr_01f_4e99:
    ld l, a                                       ; $4e99: $6f
    ld [hl], h                                    ; $4e9a: $74
    ld l, c                                       ; $4e9b: $69
    ld l, a                                       ; $4e9c: $6f
    ld l, [hl]                                    ; $4e9d: $6e
    jr nz, jr_01f_4f0f                            ; $4e9e: $20 $6f

    ld h, [hl]                                    ; $4ea0: $66
    ld bc, $7773                                  ; $4ea1: $01 $73 $77
    ld l, c                                       ; $4ea4: $69
    ld l, [hl]                                    ; $4ea5: $6e
    ld h, a                                       ; $4ea6: $67
    ld l, c                                       ; $4ea7: $69
    ld l, [hl]                                    ; $4ea8: $6e
    ld h, a                                       ; $4ea9: $67
    jr nz, jr_01f_4f20                            ; $4eaa: $20 $74

    ld l, b                                       ; $4eac: $68
    ld h, l                                       ; $4ead: $65
    ld bc, $6c63                                  ; $4eae: $01 $63 $6c

jr_01f_4eb1:
    ld [hl], l                                    ; $4eb1: $75
    ld h, d                                       ; $4eb2: $62
    jr nz, jr_01f_4f2a                            ; $4eb3: $20 $75

jr_01f_4eb5:
    ld [hl], b                                    ; $4eb5: $70
    ld [hl], a                                    ; $4eb6: $77
    ld h, c                                       ; $4eb7: $61
    ld [hl], d                                    ; $4eb8: $72
    ld h, h                                       ; $4eb9: $64
    ld [hl], e                                    ; $4eba: $73
    ld [bc], a                                    ; $4ebb: $02
    ld h, c                                       ; $4ebc: $61
    ld h, [hl]                                    ; $4ebd: $66
    ld [hl], h                                    ; $4ebe: $74
    ld h, l                                       ; $4ebf: $65
    ld [hl], d                                    ; $4ec0: $72
    jr nz, jr_01f_4f2b                            ; $4ec1: $20 $68

    ld l, c                                       ; $4ec3: $69
    ld [hl], h                                    ; $4ec4: $74

jr_01f_4ec5:
    ld [hl], h                                    ; $4ec5: $74
    ld l, c                                       ; $4ec6: $69
    ld l, [hl]                                    ; $4ec7: $6e
    ld h, a                                       ; $4ec8: $67

jr_01f_4ec9:
    ld bc, $6874                                  ; $4ec9: $01 $74 $68

jr_01f_4ecc:
    ld h, l                                       ; $4ecc: $65
    jr nz, jr_01f_4f31                            ; $4ecd: $20 $62

    ld h, c                                       ; $4ecf: $61
    ld l, h                                       ; $4ed0: $6c
    ld l, h                                       ; $4ed1: $6c
    ld l, $03                                     ; $4ed2: $2e $03

jr_01f_4ed4:
    nop                                           ; $4ed4: $00
    ld b, c                                       ; $4ed5: $41
    jr nz, jr_01f_4f4f                            ; $4ed6: $20 $77

    ld l, a                                       ; $4ed8: $6f

jr_01f_4ed9:
    ld [hl], d                                    ; $4ed9: $72
    ld h, h                                       ; $4eda: $64
    jr nz, jr_01f_4f52                            ; $4edb: $20 $75

    ld [hl], e                                    ; $4edd: $73
    ld h, l                                       ; $4ede: $65
    ld h, h                                       ; $4edf: $64
    jr nz, @+$76                                  ; $4ee0: $20 $74

    ld l, a                                       ; $4ee2: $6f
    jr nz, jr_01f_4f5c                            ; $4ee3: $20 $77

    ld h, c                                       ; $4ee5: $61

jr_01f_4ee6:
    ld [hl], d                                    ; $4ee6: $72
    ld l, [hl]                                    ; $4ee7: $6e
    jr nz, jr_01f_4eeb                            ; $4ee8: $20 $01

    ld h, a                                       ; $4eea: $67

jr_01f_4eeb:
    ld l, a                                       ; $4eeb: $6f
    ld l, h                                       ; $4eec: $6c
    ld h, [hl]                                    ; $4eed: $66
    ld h, l                                       ; $4eee: $65
    ld [hl], d                                    ; $4eef: $72
    ld [hl], e                                    ; $4ef0: $73
    jr nz, jr_01f_4f62                            ; $4ef1: $20 $6f

    ld l, [hl]                                    ; $4ef3: $6e
    jr nz, @+$76                                  ; $4ef4: $20 $74

    ld l, b                                       ; $4ef6: $68
    ld h, l                                       ; $4ef7: $65

jr_01f_4ef8:
    jr nz, jr_01f_4f60                            ; $4ef8: $20 $66

    ld h, c                                       ; $4efa: $61
    ld l, c                                       ; $4efb: $69
    ld [hl], d                                    ; $4efc: $72
    ld [hl], a                                    ; $4efd: $77
    ld h, c                                       ; $4efe: $61
    ld a, c                                       ; $4eff: $79
    jr nz, jr_01f_4f03                            ; $4f00: $20 $01

    ld [hl], h                                    ; $4f02: $74

jr_01f_4f03:
    ld l, b                                       ; $4f03: $68
    ld h, c                                       ; $4f04: $61
    ld [hl], h                                    ; $4f05: $74

jr_01f_4f06:
    jr nz, jr_01f_4f69                            ; $4f06: $20 $61

    jr nz, jr_01f_4f6c                            ; $4f08: $20 $62

    ld h, c                                       ; $4f0a: $61
    ld l, h                                       ; $4f0b: $6c
    ld l, h                                       ; $4f0c: $6c
    jr nz, jr_01f_4f77                            ; $4f0d: $20 $68

jr_01f_4f0f:
    ld h, c                                       ; $4f0f: $61
    ld [hl], e                                    ; $4f10: $73
    jr nz, jr_01f_4f75                            ; $4f11: $20 $62

    ld h, l                                       ; $4f13: $65
    ld h, l                                       ; $4f14: $65
    ld l, [hl]                                    ; $4f15: $6e
    ld [bc], a                                    ; $4f16: $02
    ld l, b                                       ; $4f17: $68
    ld l, c                                       ; $4f18: $69
    ld [hl], h                                    ; $4f19: $74
    jr nz, jr_01f_4f85                            ; $4f1a: $20 $69

    ld l, [hl]                                    ; $4f1c: $6e
    jr nz, jr_01f_4f93                            ; $4f1d: $20 $74

    ld l, b                                       ; $4f1f: $68

jr_01f_4f20:
    ld h, l                                       ; $4f20: $65
    ld l, c                                       ; $4f21: $69
    ld [hl], d                                    ; $4f22: $72
    jr nz, jr_01f_4f89                            ; $4f23: $20 $64

    ld l, c                                       ; $4f25: $69
    ld [hl], d                                    ; $4f26: $72
    ld h, l                                       ; $4f27: $65
    ld h, e                                       ; $4f28: $63
    ld [hl], h                                    ; $4f29: $74

jr_01f_4f2a:
    ld l, c                                       ; $4f2a: $69

jr_01f_4f2b:
    ld l, a                                       ; $4f2b: $6f
    ld l, [hl]                                    ; $4f2c: $6e
    ld l, $01                                     ; $4f2d: $2e $01
    ld c, c                                       ; $4f2f: $49
    ld h, [hl]                                    ; $4f30: $66

jr_01f_4f31:
    jr nz, jr_01f_4fac                            ; $4f31: $20 $79

    ld l, a                                       ; $4f33: $6f
    ld [hl], l                                    ; $4f34: $75
    jr nz, jr_01f_4f9f                            ; $4f35: $20 $68

    ld h, l                                       ; $4f37: $65
    ld h, c                                       ; $4f38: $61
    ld [hl], d                                    ; $4f39: $72
    jr nz, @+$75                                  ; $4f3a: $20 $73

    ld l, a                                       ; $4f3c: $6f
    ld l, l                                       ; $4f3d: $6d
    ld h, l                                       ; $4f3e: $65
    ld l, a                                       ; $4f3f: $6f
    ld l, [hl]                                    ; $4f40: $6e
    ld h, l                                       ; $4f41: $65
    jr nz, jr_01f_4fb7                            ; $4f42: $20 $73

    ld h, c                                       ; $4f44: $61
    ld a, c                                       ; $4f45: $79
    ld bc, $7469                                  ; $4f46: $01 $69 $74
    inc l                                         ; $4f49: $2c
    jr nz, @+$79                                  ; $4f4a: $20 $77

    ld h, c                                       ; $4f4c: $61
    ld [hl], h                                    ; $4f4d: $74
    ld h, e                                       ; $4f4e: $63

jr_01f_4f4f:
    ld l, b                                       ; $4f4f: $68
    jr nz, jr_01f_4fc1                            ; $4f50: $20 $6f

jr_01f_4f52:
    ld [hl], l                                    ; $4f52: $75
    ld [hl], h                                    ; $4f53: $74
    ld hl, $0003                                  ; $4f54: $21 $03 $00
    ld b, c                                       ; $4f57: $41
    ld l, [hl]                                    ; $4f58: $6e
    jr nz, jr_01f_4fc4                            ; $4f59: $20 $69

    ld l, [hl]                                    ; $4f5b: $6e

jr_01f_4f5c:
    ld [hl], e                                    ; $4f5c: $73
    ld [hl], h                                    ; $4f5d: $74
    ld [hl], d                                    ; $4f5e: $72
    ld [hl], l                                    ; $4f5f: $75

jr_01f_4f60:
    ld l, l                                       ; $4f60: $6d
    ld h, l                                       ; $4f61: $65

jr_01f_4f62:
    ld l, [hl]                                    ; $4f62: $6e
    ld [hl], h                                    ; $4f63: $74
    ld bc, $7375                                  ; $4f64: $01 $75 $73
    ld h, l                                       ; $4f67: $65
    ld h, h                                       ; $4f68: $64

jr_01f_4f69:
    jr nz, jr_01f_4fdf                            ; $4f69: $20 $74

    ld l, a                                       ; $4f6b: $6f

jr_01f_4f6c:
    jr nz, jr_01f_4fd4                            ; $4f6c: $20 $66

    ld l, c                                       ; $4f6e: $69
    ld a, b                                       ; $4f6f: $78
    jr nz, jr_01f_4fd3                            ; $4f70: $20 $61

    ld bc, $6162                                  ; $4f72: $01 $62 $61

jr_01f_4f75:
    ld l, h                                       ; $4f75: $6c
    ld l, h                                       ; $4f76: $6c

jr_01f_4f77:
    jr nz, jr_01f_4fe6                            ; $4f77: $20 $6d

    ld h, c                                       ; $4f79: $61
    ld [hl], d                                    ; $4f7a: $72
    ld l, e                                       ; $4f7b: $6b
    ld h, l                                       ; $4f7c: $65
    ld [hl], d                                    ; $4f7d: $72
    ld [bc], a                                    ; $4f7e: $02
    ld l, a                                       ; $4f7f: $6f
    ld l, [hl]                                    ; $4f80: $6e
    jr nz, jr_01f_4ff7                            ; $4f81: $20 $74

    ld l, b                                       ; $4f83: $68
    ld h, l                                       ; $4f84: $65

jr_01f_4f85:
    jr nz, jr_01f_4fee                            ; $4f85: $20 $67

    ld [hl], d                                    ; $4f87: $72
    ld h, l                                       ; $4f88: $65

jr_01f_4f89:
    ld h, l                                       ; $4f89: $65
    ld l, [hl]                                    ; $4f8a: $6e
    ld l, $03                                     ; $4f8b: $2e $03
    nop                                           ; $4f8d: $00
    ld d, h                                       ; $4f8e: $54
    ld l, b                                       ; $4f8f: $68
    ld h, l                                       ; $4f90: $65
    jr nz, jr_01f_4ff9                            ; $4f91: $20 $66

jr_01f_4f93:
    ld l, c                                       ; $4f93: $69
    ld [hl], d                                    ; $4f94: $72
    ld [hl], e                                    ; $4f95: $73
    ld [hl], h                                    ; $4f96: $74
    jr nz, jr_01f_4fd2                            ; $4f97: $20 $39

    jr nz, @+$6a                                  ; $4f99: $20 $68

    ld l, a                                       ; $4f9b: $6f
    ld l, h                                       ; $4f9c: $6c
    ld h, l                                       ; $4f9d: $65
    ld [hl], e                                    ; $4f9e: $73

jr_01f_4f9f:
    ld bc, $6e6f                                  ; $4f9f: $01 $6f $6e
    jr nz, jr_01f_5005                            ; $4fa2: $20 $61

    ld l, [hl]                                    ; $4fa4: $6e
    jr nz, jr_01f_4fd8                            ; $4fa5: $20 $31

    jr c, jr_01f_4fd6                             ; $4fa7: $38 $2d

    ld l, b                                       ; $4fa9: $68
    ld l, a                                       ; $4faa: $6f
    ld l, h                                       ; $4fab: $6c

jr_01f_4fac:
    ld h, l                                       ; $4fac: $65
    ld bc, $6f63                                  ; $4fad: $01 $63 $6f
    ld [hl], l                                    ; $4fb0: $75
    ld [hl], d                                    ; $4fb1: $72
    ld [hl], e                                    ; $4fb2: $73
    ld h, l                                       ; $4fb3: $65
    ld l, $03                                     ; $4fb4: $2e $03
    nop                                           ; $4fb6: $00

jr_01f_4fb7:
    ld b, c                                       ; $4fb7: $41
    jr nz, jr_01f_501e                            ; $4fb8: $20 $64

    ld l, a                                       ; $4fba: $6f
    jr nz, jr_01f_502c                            ; $4fbb: $20 $6f

    ld [hl], d                                    ; $4fbd: $72
    jr nz, @+$66                                  ; $4fbe: $20 $64

    ld l, c                                       ; $4fc0: $69

jr_01f_4fc1:
    ld h, l                                       ; $4fc1: $65
    jr nz, jr_01f_5037                            ; $4fc2: $20 $73

jr_01f_4fc4:
    ld l, b                                       ; $4fc4: $68
    ld l, a                                       ; $4fc5: $6f
    ld [hl], h                                    ; $4fc6: $74
    ld bc, $6874                                  ; $4fc7: $01 $74 $68
    ld [hl], d                                    ; $4fca: $72
    ld l, a                                       ; $4fcb: $6f
    ld [hl], l                                    ; $4fcc: $75
    ld h, a                                       ; $4fcd: $67
    ld l, b                                       ; $4fce: $68
    jr nz, jr_01f_5035                            ; $4fcf: $20 $64

    ld l, c                                       ; $4fd1: $69

jr_01f_4fd2:
    ld h, [hl]                                    ; $4fd2: $66

jr_01f_4fd3:
    ld h, [hl]                                    ; $4fd3: $66

jr_01f_4fd4:
    ld l, c                                       ; $4fd4: $69
    ld h, e                                       ; $4fd5: $63

jr_01f_4fd6:
    ld [hl], l                                    ; $4fd6: $75
    ld l, h                                       ; $4fd7: $6c

jr_01f_4fd8:
    ld [hl], h                                    ; $4fd8: $74
    ld bc, $6574                                  ; $4fd9: $01 $74 $65
    ld [hl], d                                    ; $4fdc: $72
    ld [hl], d                                    ; $4fdd: $72
    ld h, c                                       ; $4fde: $61

jr_01f_4fdf:
    ld l, c                                       ; $4fdf: $69
    ld l, [hl]                                    ; $4fe0: $6e
    ld l, $03                                     ; $4fe1: $2e $03
    nop                                           ; $4fe3: $00
    ld d, a                                       ; $4fe4: $57
    ld l, b                                       ; $4fe5: $68

jr_01f_4fe6:
    ld h, l                                       ; $4fe6: $65
    ld l, [hl]                                    ; $4fe7: $6e
    jr nz, jr_01f_504b                            ; $4fe8: $20 $61

    ld l, [hl]                                    ; $4fea: $6e
    jr nz, @+$71                                  ; $4feb: $20 $6f

    ld [hl], b                                    ; $4fed: $70

jr_01f_4fee:
    ld [hl], b                                    ; $4fee: $70
    ld l, a                                       ; $4fef: $6f
    ld l, [hl]                                    ; $4ff0: $6e
    ld h, l                                       ; $4ff1: $65
    ld l, [hl]                                    ; $4ff2: $6e
    ld [hl], h                                    ; $4ff3: $74
    ld bc, $6461                                  ; $4ff4: $01 $61 $64

jr_01f_4ff7:
    ld l, l                                       ; $4ff7: $6d
    ld l, c                                       ; $4ff8: $69

jr_01f_4ff9:
    ld [hl], h                                    ; $4ff9: $74
    ld [hl], e                                    ; $4ffa: $73
    jr nz, jr_01f_5076                            ; $4ffb: $20 $79

    ld l, a                                       ; $4ffd: $6f
    ld [hl], l                                    ; $4ffe: $75
    daa                                           ; $4fff: $27
    ld l, h                                       ; $5000: $6c
    ld l, h                                       ; $5001: $6c
    ld bc, $616d                                  ; $5002: $01 $6d $61

jr_01f_5005:
    ld l, e                                       ; $5005: $6b
    ld h, l                                       ; $5006: $65
    jr nz, jr_01f_5082                            ; $5007: $20 $79

    ld l, a                                       ; $5009: $6f
    ld [hl], l                                    ; $500a: $75
    ld [hl], d                                    ; $500b: $72
    jr nz, jr_01f_507c                            ; $500c: $20 $6e

    ld h, l                                       ; $500e: $65
    ld a, b                                       ; $500f: $78
    ld [hl], h                                    ; $5010: $74
    ld [bc], a                                    ; $5011: $02
    ld [hl], b                                    ; $5012: $70
    ld [hl], l                                    ; $5013: $75
    ld [hl], h                                    ; $5014: $74
    ld [hl], h                                    ; $5015: $74
    jr nz, jr_01f_508f                            ; $5016: $20 $77

    ld l, c                                       ; $5018: $69
    ld [hl], h                                    ; $5019: $74
    ld l, b                                       ; $501a: $68
    ld l, a                                       ; $501b: $6f
    ld [hl], l                                    ; $501c: $75
    ld [hl], h                                    ; $501d: $74

jr_01f_501e:
    jr nz, jr_01f_5099                            ; $501e: $20 $79

    ld l, a                                       ; $5020: $6f
    ld [hl], l                                    ; $5021: $75
    ld bc, $6174                                  ; $5022: $01 $74 $61
    ld l, e                                       ; $5025: $6b
    ld l, c                                       ; $5026: $69
    ld l, [hl]                                    ; $5027: $6e
    ld h, a                                       ; $5028: $67
    jr nz, jr_01f_5094                            ; $5029: $20 $69

    ld [hl], h                                    ; $502b: $74

jr_01f_502c:
    ld l, $20                                     ; $502c: $2e $20
    ld c, c                                       ; $502e: $49
    ld h, [hl]                                    ; $502f: $66
    ld bc, $7469                                  ; $5030: $01 $69 $74
    daa                                           ; $5033: $27
    ld [hl], e                                    ; $5034: $73

jr_01f_5035:
    jr nz, jr_01f_5098                            ; $5035: $20 $61

jr_01f_5037:
    jr nz, jr_01f_50a0                            ; $5037: $20 $67

    ld l, c                                       ; $5039: $69
    ld l, l                                       ; $503a: $6d
    ld l, l                                       ; $503b: $6d
    ld h, l                                       ; $503c: $65
    jr nz, jr_01f_50ae                            ; $503d: $20 $6f

    ld l, [hl]                                    ; $503f: $6e
    ld [bc], a                                    ; $5040: $02
    ld [hl], h                                    ; $5041: $74
    ld l, b                                       ; $5042: $68
    ld h, l                                       ; $5043: $65
    jr nz, jr_01f_5079                            ; $5044: $20 $33

    ld [hl], d                                    ; $5046: $72
    ld h, h                                       ; $5047: $64
    jr nz, jr_01f_50bd                            ; $5048: $20 $73

    ld [hl], h                                    ; $504a: $74

jr_01f_504b:
    ld [hl], d                                    ; $504b: $72
    ld l, a                                       ; $504c: $6f
    ld l, e                                       ; $504d: $6b
    ld h, l                                       ; $504e: $65
    inc l                                         ; $504f: $2c
    ld bc, $6f79                                  ; $5050: $01 $79 $6f
    ld [hl], l                                    ; $5053: $75
    ld [hl], d                                    ; $5054: $72
    jr nz, jr_01f_50ca                            ; $5055: $20 $73

    ld h, e                                       ; $5057: $63
    ld l, a                                       ; $5058: $6f
    ld [hl], d                                    ; $5059: $72
    ld h, l                                       ; $505a: $65
    jr nz, @+$6b                                  ; $505b: $20 $69

    ld [hl], e                                    ; $505d: $73
    jr nz, jr_01f_5094                            ; $505e: $20 $34

    ld hl, $0003                                  ; $5060: $21 $03 $00
    ld d, h                                       ; $5063: $54
    ld l, a                                       ; $5064: $6f
    jr nz, @+$73                                  ; $5065: $20 $71

    ld [hl], l                                    ; $5067: $75
    ld l, c                                       ; $5068: $69
    ld [hl], h                                    ; $5069: $74
    jr nz, jr_01f_50e0                            ; $506a: $20 $74

    ld [hl], d                                    ; $506c: $72
    ld a, c                                       ; $506d: $79
    ld l, c                                       ; $506e: $69
    ld l, [hl]                                    ; $506f: $6e
    ld h, a                                       ; $5070: $67
    ld bc, $6f74                                  ; $5071: $01 $74 $6f
    jr nz, jr_01f_50e9                            ; $5074: $20 $73

jr_01f_5076:
    ld l, c                                       ; $5076: $69
    ld l, [hl]                                    ; $5077: $6e
    ld l, e                                       ; $5078: $6b

jr_01f_5079:
    jr nz, jr_01f_50ef                            ; $5079: $20 $74

    ld l, b                                       ; $507b: $68

jr_01f_507c:
    ld h, l                                       ; $507c: $65
    jr nz, jr_01f_50e1                            ; $507d: $20 $62

    ld h, c                                       ; $507f: $61
    ld l, h                                       ; $5080: $6c
    ld l, h                                       ; $5081: $6c

jr_01f_5082:
    ld l, $01                                     ; $5082: $2e $01
    ld c, c                                       ; $5084: $49
    ld l, [hl]                                    ; $5085: $6e
    jr nz, @+$4f                                  ; $5086: $20 $4d

    ld h, c                                       ; $5088: $61
    ld [hl], d                                    ; $5089: $72
    ld l, c                                       ; $508a: $69
    ld l, a                                       ; $508b: $6f
    jr nz, @+$49                                  ; $508c: $20 $47

    ld l, a                                       ; $508e: $6f

jr_01f_508f:
    ld l, h                                       ; $508f: $6c
    ld h, [hl]                                    ; $5090: $66
    inc l                                         ; $5091: $2c
    ld [bc], a                                    ; $5092: $02
    ld a, c                                       ; $5093: $79

jr_01f_5094:
    ld l, a                                       ; $5094: $6f
    ld [hl], l                                    ; $5095: $75
    jr nz, jr_01f_50f9                            ; $5096: $20 $61

jr_01f_5098:
    ld [hl], l                                    ; $5098: $75

jr_01f_5099:
    ld [hl], h                                    ; $5099: $74
    ld l, a                                       ; $509a: $6f
    ld l, l                                       ; $509b: $6d
    ld h, c                                       ; $509c: $61
    ld [hl], h                                    ; $509d: $74
    ld l, c                                       ; $509e: $69
    ld h, e                                       ; $509f: $63

jr_01f_50a0:
    ld h, c                                       ; $50a0: $61
    ld l, h                                       ; $50a1: $6c
    ld l, h                                       ; $50a2: $6c
    ld a, c                                       ; $50a3: $79
    ld bc, $6967                                  ; $50a4: $01 $67 $69
    halt                                          ; $50a7: $76
    ld h, l                                       ; $50a8: $65
    jr nz, jr_01f_5120                            ; $50a9: $20 $75

    ld [hl], b                                    ; $50ab: $70
    jr nz, jr_01f_5117                            ; $50ac: $20 $69

jr_01f_50ae:
    ld h, [hl]                                    ; $50ae: $66
    jr nz, @+$7b                                  ; $50af: $20 $79

    ld l, a                                       ; $50b1: $6f
    ld [hl], l                                    ; $50b2: $75
    ld bc, $6373                                  ; $50b3: $01 $73 $63
    ld l, a                                       ; $50b6: $6f
    ld [hl], d                                    ; $50b7: $72
    ld h, l                                       ; $50b8: $65
    jr nz, jr_01f_50ee                            ; $50b9: $20 $33

    jr nz, jr_01f_5131                            ; $50bb: $20 $74

jr_01f_50bd:
    ld l, c                                       ; $50bd: $69
    ld l, l                                       ; $50be: $6d
    ld h, l                                       ; $50bf: $65
    ld [hl], e                                    ; $50c0: $73
    jr nz, jr_01f_5133                            ; $50c1: $20 $70

    ld h, c                                       ; $50c3: $61
    ld [hl], d                                    ; $50c4: $72
    ld l, $03                                     ; $50c5: $2e $03
    nop                                           ; $50c7: $00
    ld d, h                                       ; $50c8: $54
    ld l, b                                       ; $50c9: $68

jr_01f_50ca:
    ld h, l                                       ; $50ca: $65
    jr nz, @+$64                                  ; $50cb: $20 $62

    ld h, c                                       ; $50cd: $61
    ld h, a                                       ; $50ce: $67
    jr nz, jr_01f_5146                            ; $50cf: $20 $75

    ld [hl], e                                    ; $50d1: $73
    ld h, l                                       ; $50d2: $65
    ld h, h                                       ; $50d3: $64
    jr nz, jr_01f_514a                            ; $50d4: $20 $74

    ld l, a                                       ; $50d6: $6f
    ld bc, $6f68                                  ; $50d7: $01 $68 $6f
    ld l, h                                       ; $50da: $6c
    ld h, h                                       ; $50db: $64
    jr nz, jr_01f_5141                            ; $50dc: $20 $63

    ld l, h                                       ; $50de: $6c
    ld [hl], l                                    ; $50df: $75

jr_01f_50e0:
    ld h, d                                       ; $50e0: $62

jr_01f_50e1:
    ld [hl], e                                    ; $50e1: $73
    jr nz, jr_01f_5145                            ; $50e2: $20 $61

    ld l, [hl]                                    ; $50e4: $6e
    ld h, h                                       ; $50e5: $64
    ld bc, $746f                                  ; $50e6: $01 $6f $74

jr_01f_50e9:
    ld l, b                                       ; $50e9: $68
    ld h, l                                       ; $50ea: $65
    ld [hl], d                                    ; $50eb: $72
    jr nz, jr_01f_5153                            ; $50ec: $20 $65

jr_01f_50ee:
    ld [hl], c                                    ; $50ee: $71

jr_01f_50ef:
    ld [hl], l                                    ; $50ef: $75
    ld l, c                                       ; $50f0: $69
    ld [hl], b                                    ; $50f1: $70
    ld l, l                                       ; $50f2: $6d
    ld h, l                                       ; $50f3: $65
    ld l, [hl]                                    ; $50f4: $6e
    ld [hl], h                                    ; $50f5: $74
    ld [bc], a                                    ; $50f6: $02
    ld [hl], a                                    ; $50f7: $77
    ld l, b                                       ; $50f8: $68

jr_01f_50f9:
    ld l, c                                       ; $50f9: $69
    ld l, h                                       ; $50fa: $6c
    ld h, l                                       ; $50fb: $65
    jr nz, jr_01f_516e                            ; $50fc: $20 $70

    ld l, h                                       ; $50fe: $6c
    ld h, c                                       ; $50ff: $61
    ld a, c                                       ; $5100: $79
    ld l, c                                       ; $5101: $69
    ld l, [hl]                                    ; $5102: $6e
    ld h, a                                       ; $5103: $67
    jr nz, @+$63                                  ; $5104: $20 $61

    ld bc, $6f72                                  ; $5106: $01 $72 $6f
    ld [hl], l                                    ; $5109: $75
    ld l, [hl]                                    ; $510a: $6e
    ld h, h                                       ; $510b: $64
    ld l, $03                                     ; $510c: $2e $03
    nop                                           ; $510e: $00
    ld c, c                                       ; $510f: $49
    ld [hl], h                                    ; $5110: $74
    daa                                           ; $5111: $27
    ld [hl], e                                    ; $5112: $73
    jr nz, jr_01f_5189                            ; $5113: $20 $74

    ld l, b                                       ; $5115: $68
    ld h, l                                       ; $5116: $65

jr_01f_5117:
    jr nz, jr_01f_518d                            ; $5117: $20 $74

    ld l, b                                       ; $5119: $68
    ld l, c                                       ; $511a: $69
    ld l, [hl]                                    ; $511b: $6e
    ld h, a                                       ; $511c: $67
    jr nz, jr_01f_5198                            ; $511d: $20 $79

    ld l, a                                       ; $511f: $6f

jr_01f_5120:
    ld [hl], l                                    ; $5120: $75
    ld bc, $6968                                  ; $5121: $01 $68 $69
    ld [hl], h                                    ; $5124: $74
    jr nz, jr_01f_519b                            ; $5125: $20 $74

    ld l, b                                       ; $5127: $68
    ld h, l                                       ; $5128: $65
    jr nz, jr_01f_518d                            ; $5129: $20 $62

    ld h, c                                       ; $512b: $61
    ld l, h                                       ; $512c: $6c
    ld l, h                                       ; $512d: $6c
    jr nz, jr_01f_51a7                            ; $512e: $20 $77

    ld l, c                                       ; $5130: $69

jr_01f_5131:
    ld [hl], h                                    ; $5131: $74
    ld l, b                                       ; $5132: $68

jr_01f_5133:
    ld hl, $4901                                  ; $5133: $21 $01 $49
    ld [hl], h                                    ; $5136: $74
    daa                                           ; $5137: $27
    ld [hl], e                                    ; $5138: $73
    jr nz, jr_01f_519c                            ; $5139: $20 $61

    ld l, h                                       ; $513b: $6c
    ld [hl], e                                    ; $513c: $73
    ld l, a                                       ; $513d: $6f
    jr nz, jr_01f_51a1                            ; $513e: $20 $61

    ld l, [hl]                                    ; $5140: $6e

jr_01f_5141:
    ld l, a                                       ; $5141: $6f
    ld [hl], h                                    ; $5142: $74
    ld l, b                                       ; $5143: $68
    ld h, l                                       ; $5144: $65

jr_01f_5145:
    ld [hl], d                                    ; $5145: $72

jr_01f_5146:
    ld [bc], a                                    ; $5146: $02
    ld l, [hl]                                    ; $5147: $6e
    ld h, c                                       ; $5148: $61
    ld l, l                                       ; $5149: $6d

jr_01f_514a:
    ld h, l                                       ; $514a: $65
    jr nz, jr_01f_51b3                            ; $514b: $20 $66

    ld l, a                                       ; $514d: $6f
    ld [hl], d                                    ; $514e: $72
    jr nz, jr_01f_51b4                            ; $514f: $20 $63

    ld l, a                                       ; $5151: $6f
    ld [hl], l                                    ; $5152: $75

jr_01f_5153:
    ld l, [hl]                                    ; $5153: $6e
    ld [hl], h                                    ; $5154: $74
    ld [hl], d                                    ; $5155: $72
    ld a, c                                       ; $5156: $79
    ld bc, $6c63                                  ; $5157: $01 $63 $6c
    ld [hl], l                                    ; $515a: $75
    ld h, d                                       ; $515b: $62
    ld [hl], e                                    ; $515c: $73
    jr nz, @+$63                                  ; $515d: $20 $61

    ld l, [hl]                                    ; $515f: $6e
    ld h, h                                       ; $5160: $64
    jr nz, jr_01f_51ca                            ; $5161: $20 $67

    ld l, a                                       ; $5163: $6f
    ld l, h                                       ; $5164: $6c
    ld h, [hl]                                    ; $5165: $66
    ld bc, $6f63                                  ; $5166: $01 $63 $6f
    ld [hl], l                                    ; $5169: $75
    ld [hl], d                                    ; $516a: $72
    ld [hl], e                                    ; $516b: $73
    ld h, l                                       ; $516c: $65
    ld [hl], e                                    ; $516d: $73

jr_01f_516e:
    ld l, $03                                     ; $516e: $2e $03
    nop                                           ; $5170: $00
    ld b, c                                       ; $5171: $41
    jr nz, jr_01f_51db                            ; $5172: $20 $67

    ld l, a                                       ; $5174: $6f
    ld l, h                                       ; $5175: $6c
    ld h, [hl]                                    ; $5176: $66
    jr nz, jr_01f_51e9                            ; $5177: $20 $70

    ld l, h                                       ; $5179: $6c
    ld h, c                                       ; $517a: $61
    ld a, c                                       ; $517b: $79
    ld h, l                                       ; $517c: $65
    ld [hl], d                                    ; $517d: $72
    ld hl, $4920                                  ; $517e: $21 $20 $49
    ld bc, $6163                                  ; $5181: $01 $63 $61
    ld l, [hl]                                    ; $5184: $6e
    daa                                           ; $5185: $27
    ld [hl], h                                    ; $5186: $74
    jr nz, @+$64                                  ; $5187: $20 $62

jr_01f_5189:
    ld h, l                                       ; $5189: $65
    ld l, h                                       ; $518a: $6c
    ld l, c                                       ; $518b: $69
    ld h, l                                       ; $518c: $65

jr_01f_518d:
    halt                                          ; $518d: $76
    ld h, l                                       ; $518e: $65
    jr nz, jr_01f_520a                            ; $518f: $20 $79

    ld l, a                                       ; $5191: $6f
    ld [hl], l                                    ; $5192: $75
    ld bc, $6f64                                  ; $5193: $01 $64 $6f
    ld l, [hl]                                    ; $5196: $6e
    daa                                           ; $5197: $27

jr_01f_5198:
    ld [hl], h                                    ; $5198: $74
    jr nz, jr_01f_5206                            ; $5199: $20 $6b

jr_01f_519b:
    ld l, [hl]                                    ; $519b: $6e

jr_01f_519c:
    ld l, a                                       ; $519c: $6f
    ld [hl], a                                    ; $519d: $77
    jr nz, jr_01f_5214                            ; $519e: $20 $74

    ld l, b                                       ; $51a0: $68

jr_01f_51a1:
    ld h, c                                       ; $51a1: $61
    ld [hl], h                                    ; $51a2: $74
    ld hl, $0003                                  ; $51a3: $21 $03 $00
    ld b, c                                       ; $51a6: $41

jr_01f_51a7:
    jr nz, jr_01f_5210                            ; $51a7: $20 $67

    ld [hl], d                                    ; $51a9: $72
    ld h, c                                       ; $51aa: $61
    ld [hl], e                                    ; $51ab: $73
    ld [hl], e                                    ; $51ac: $73
    dec l                                         ; $51ad: $2d
    ld h, e                                       ; $51ae: $63
    ld l, a                                       ; $51af: $6f
    halt                                          ; $51b0: $76
    ld h, l                                       ; $51b1: $65
    ld [hl], d                                    ; $51b2: $72

jr_01f_51b3:
    ld h, l                                       ; $51b3: $65

jr_01f_51b4:
    ld h, h                                       ; $51b4: $64
    ld bc, $6f68                                  ; $51b5: $01 $68 $6f
    ld l, h                                       ; $51b8: $6c
    ld l, h                                       ; $51b9: $6c
    ld l, a                                       ; $51ba: $6f
    ld [hl], a                                    ; $51bb: $77
    jr nz, jr_01f_5227                            ; $51bc: $20 $69

    ld l, [hl]                                    ; $51be: $6e
    jr nz, jr_01f_5235                            ; $51bf: $20 $74

    ld l, b                                       ; $51c1: $68
    ld h, l                                       ; $51c2: $65
    ld bc, $7267                                  ; $51c3: $01 $67 $72
    ld l, a                                       ; $51c6: $6f
    ld [hl], l                                    ; $51c7: $75
    ld l, [hl]                                    ; $51c8: $6e
    ld h, h                                       ; $51c9: $64

jr_01f_51ca:
    inc l                                         ; $51ca: $2c
    jr nz, jr_01f_5240                            ; $51cb: $20 $73

    ld l, c                                       ; $51cd: $69
    ld l, l                                       ; $51ce: $6d
    ld l, c                                       ; $51cf: $69
    ld l, h                                       ; $51d0: $6c
    ld h, c                                       ; $51d1: $61
    ld [hl], d                                    ; $51d2: $72
    ld [bc], a                                    ; $51d3: $02
    ld [hl], h                                    ; $51d4: $74
    ld l, a                                       ; $51d5: $6f
    jr nz, jr_01f_5239                            ; $51d6: $20 $61

    jr nz, jr_01f_523c                            ; $51d8: $20 $62

    ld [hl], l                                    ; $51da: $75

jr_01f_51db:
    ld l, [hl]                                    ; $51db: $6e
    ld l, e                                       ; $51dc: $6b
    ld h, l                                       ; $51dd: $65
    ld [hl], d                                    ; $51de: $72
    ld l, $20                                     ; $51df: $2e $20
    ld d, h                                       ; $51e1: $54
    ld l, b                                       ; $51e2: $68
    ld h, l                                       ; $51e3: $65
    ld bc, $7572                                  ; $51e4: $01 $72 $75
    ld l, h                                       ; $51e7: $6c
    ld h, l                                       ; $51e8: $65

jr_01f_51e9:
    ld [hl], e                                    ; $51e9: $73
    jr nz, @+$66                                  ; $51ea: $20 $64

    ld l, a                                       ; $51ec: $6f
    ld l, [hl]                                    ; $51ed: $6e
    daa                                           ; $51ee: $27
    ld [hl], h                                    ; $51ef: $74
    jr nz, jr_01f_5255                            ; $51f0: $20 $63

    ld l, a                                       ; $51f2: $6f
    ld l, [hl]                                    ; $51f3: $6e
    ld [hl], e                                    ; $51f4: $73
    ld l, c                                       ; $51f5: $69
    dec l                                         ; $51f6: $2d
    ld bc, $6564                                  ; $51f7: $01 $64 $65
    ld [hl], d                                    ; $51fa: $72
    jr nz, @+$6b                                  ; $51fb: $20 $69

    ld [hl], h                                    ; $51fd: $74
    jr nz, jr_01f_5261                            ; $51fe: $20 $61

    jr nz, jr_01f_526a                            ; $5200: $20 $68

    ld h, c                                       ; $5202: $61
    ld a, d                                       ; $5203: $7a
    ld h, c                                       ; $5204: $61
    ld [hl], d                                    ; $5205: $72

jr_01f_5206:
    ld h, h                                       ; $5206: $64
    ld l, $03                                     ; $5207: $2e $03
    nop                                           ; $5209: $00

jr_01f_520a:
    ld d, h                                       ; $520a: $54
    ld l, b                                       ; $520b: $68
    ld l, c                                       ; $520c: $69
    ld [hl], e                                    ; $520d: $73
    jr nz, jr_01f_5279                            ; $520e: $20 $69

jr_01f_5210:
    ld [hl], e                                    ; $5210: $73
    jr nz, jr_01f_5287                            ; $5211: $20 $74

    ld l, b                                       ; $5213: $68

jr_01f_5214:
    ld h, l                                       ; $5214: $65
    jr nz, jr_01f_5278                            ; $5215: $20 $61

    ld [hl], d                                    ; $5217: $72
    ld h, l                                       ; $5218: $65
    ld h, c                                       ; $5219: $61
    ld bc, $616d                                  ; $521a: $01 $6d $61
    ld h, h                                       ; $521d: $64
    ld h, l                                       ; $521e: $65
    jr nz, jr_01f_5286                            ; $521f: $20 $65

    ld [hl], e                                    ; $5221: $73
    ld [hl], b                                    ; $5222: $70
    ld h, l                                       ; $5223: $65
    ld h, e                                       ; $5224: $63
    ld l, c                                       ; $5225: $69
    ld h, c                                       ; $5226: $61

jr_01f_5227:
    ld l, h                                       ; $5227: $6c
    ld l, h                                       ; $5228: $6c
    ld a, c                                       ; $5229: $79
    ld bc, $6f66                                  ; $522a: $01 $66 $6f
    ld [hl], d                                    ; $522d: $72
    jr nz, @+$72                                  ; $522e: $20 $70

    ld [hl], l                                    ; $5230: $75
    ld [hl], h                                    ; $5231: $74
    ld [hl], h                                    ; $5232: $74
    ld l, c                                       ; $5233: $69
    ld l, [hl]                                    ; $5234: $6e

jr_01f_5235:
    ld h, a                                       ; $5235: $67
    ld l, $03                                     ; $5236: $2e $03
    nop                                           ; $5238: $00

jr_01f_5239:
    ld d, h                                       ; $5239: $54
    ld l, b                                       ; $523a: $68
    ld h, l                                       ; $523b: $65

jr_01f_523c:
    jr nz, @+$76                                  ; $523c: $20 $74

    ld l, b                                       ; $523e: $68
    ld l, c                                       ; $523f: $69

jr_01f_5240:
    ld l, [hl]                                    ; $5240: $6e
    inc l                                         ; $5241: $2c
    jr nz, @+$69                                  ; $5242: $20 $67

    ld [hl], d                                    ; $5244: $72
    ld h, c                                       ; $5245: $61
    ld [hl], e                                    ; $5246: $73
    ld [hl], e                                    ; $5247: $73
    ld a, c                                       ; $5248: $79
    jr nz, @+$63                                  ; $5249: $20 $61

    ld [hl], d                                    ; $524b: $72
    ld h, l                                       ; $524c: $65
    ld h, c                                       ; $524d: $61
    ld bc, $7261                                  ; $524e: $01 $61 $72
    ld l, a                                       ; $5251: $6f
    ld [hl], l                                    ; $5252: $75
    ld l, [hl]                                    ; $5253: $6e
    ld h, h                                       ; $5254: $64

jr_01f_5255:
    jr nz, jr_01f_52cb                            ; $5255: $20 $74

    ld l, b                                       ; $5257: $68
    ld h, l                                       ; $5258: $65
    jr nz, @+$67                                  ; $5259: $20 $65

    ld h, h                                       ; $525b: $64
    ld h, a                                       ; $525c: $67
    ld h, l                                       ; $525d: $65
    jr nz, jr_01f_52cf                            ; $525e: $20 $6f

    ld h, [hl]                                    ; $5260: $66

jr_01f_5261:
    ld bc, $6874                                  ; $5261: $01 $74 $68
    ld h, l                                       ; $5264: $65
    jr nz, jr_01f_52ce                            ; $5265: $20 $67

    ld [hl], d                                    ; $5267: $72
    ld h, l                                       ; $5268: $65
    ld h, l                                       ; $5269: $65

jr_01f_526a:
    ld l, [hl]                                    ; $526a: $6e
    ld l, $02                                     ; $526b: $2e $02
    ld c, c                                       ; $526d: $49
    ld [hl], h                                    ; $526e: $74
    daa                                           ; $526f: $27
    ld [hl], e                                    ; $5270: $73
    jr nz, @+$63                                  ; $5271: $20 $61

    ld l, h                                       ; $5273: $6c
    ld [hl], e                                    ; $5274: $73
    ld l, a                                       ; $5275: $6f
    jr nz, jr_01f_52db                            ; $5276: $20 $63

jr_01f_5278:
    ld h, c                                       ; $5278: $61

jr_01f_5279:
    ld l, h                                       ; $5279: $6c
    ld l, h                                       ; $527a: $6c
    ld h, l                                       ; $527b: $65
    ld h, h                                       ; $527c: $64
    ld bc, $6874                                  ; $527d: $01 $74 $68
    ld h, l                                       ; $5280: $65
    jr nz, @+$63                                  ; $5281: $20 $61

    ld [hl], b                                    ; $5283: $70
    ld [hl], d                                    ; $5284: $72
    ld l, a                                       ; $5285: $6f

jr_01f_5286:
    ld l, [hl]                                    ; $5286: $6e

jr_01f_5287:
    inc l                                         ; $5287: $2c
    jr nz, jr_01f_52ed                            ; $5288: $20 $63

    ld l, a                                       ; $528a: $6f
    ld l, h                                       ; $528b: $6c
    ld l, h                                       ; $528c: $6c
    ld h, c                                       ; $528d: $61
    ld [hl], d                                    ; $528e: $72
    ld bc, $726f                                  ; $528f: $01 $6f $72
    jr nz, jr_01f_52fa                            ; $5292: $20 $66

    ld [hl], d                                    ; $5294: $72
    ld l, c                                       ; $5295: $69
    ld l, [hl]                                    ; $5296: $6e
    ld h, a                                       ; $5297: $67
    ld h, l                                       ; $5298: $65
    ld l, $03                                     ; $5299: $2e $03
    nop                                           ; $529b: $00
    ld d, h                                       ; $529c: $54
    ld l, b                                       ; $529d: $68
    ld h, l                                       ; $529e: $65
    jr nz, @+$69                                  ; $529f: $20 $67

    ld [hl], d                                    ; $52a1: $72
    ld l, c                                       ; $52a2: $69
    ld [hl], b                                    ; $52a3: $70
    daa                                           ; $52a4: $27
    ld [hl], e                                    ; $52a5: $73
    jr nz, @+$76                                  ; $52a6: $20 $74

    ld l, b                                       ; $52a8: $68
    ld h, l                                       ; $52a9: $65
    ld bc, $6e65                                  ; $52aa: $01 $65 $6e
    ld h, h                                       ; $52ad: $64
    jr nz, jr_01f_531f                            ; $52ae: $20 $6f

    ld h, [hl]                                    ; $52b0: $66
    jr nz, jr_01f_5327                            ; $52b1: $20 $74

    ld l, b                                       ; $52b3: $68
    ld h, l                                       ; $52b4: $65
    jr nz, jr_01f_531a                            ; $52b5: $20 $63

    ld l, h                                       ; $52b7: $6c
    ld [hl], l                                    ; $52b8: $75
    ld h, d                                       ; $52b9: $62
    ld bc, $6874                                  ; $52ba: $01 $74 $68
    ld h, c                                       ; $52bd: $61
    ld [hl], h                                    ; $52be: $74
    jr nz, @+$7b                                  ; $52bf: $20 $79

    ld l, a                                       ; $52c1: $6f
    ld [hl], l                                    ; $52c2: $75
    jr nz, jr_01f_532c                            ; $52c3: $20 $67

    ld [hl], d                                    ; $52c5: $72
    ld h, c                                       ; $52c6: $61
    ld h, d                                       ; $52c7: $62
    ld hl, $0003                                  ; $52c8: $21 $03 $00

jr_01f_52cb:
    ld b, a                                       ; $52cb: $47
    ld [hl], d                                    ; $52cc: $72
    ld l, a                                       ; $52cd: $6f

jr_01f_52ce:
    ld [hl], e                                    ; $52ce: $73

jr_01f_52cf:
    ld [hl], e                                    ; $52cf: $73
    jr nz, jr_01f_533b                            ; $52d0: $20 $69

    ld [hl], e                                    ; $52d2: $73
    jr nz, jr_01f_5349                            ; $52d3: $20 $74

    ld l, b                                       ; $52d5: $68
    ld h, l                                       ; $52d6: $65
    jr nz, @+$76                                  ; $52d7: $20 $74

    ld l, a                                       ; $52d9: $6f
    ld [hl], h                                    ; $52da: $74

jr_01f_52db:
    ld h, c                                       ; $52db: $61
    ld l, h                                       ; $52dc: $6c
    ld bc, $6373                                  ; $52dd: $01 $73 $63
    ld l, a                                       ; $52e0: $6f
    ld [hl], d                                    ; $52e1: $72
    ld h, l                                       ; $52e2: $65
    jr nz, jr_01f_534a                            ; $52e3: $20 $65

    ld h, c                                       ; $52e5: $61
    ld [hl], d                                    ; $52e6: $72
    ld l, [hl]                                    ; $52e7: $6e
    ld h, l                                       ; $52e8: $65
    ld h, h                                       ; $52e9: $64
    jr nz, jr_01f_534e                            ; $52ea: $20 $62

    ld a, c                                       ; $52ec: $79

jr_01f_52ed:
    ld bc, $2061                                  ; $52ed: $01 $61 $20
    ld [hl], b                                    ; $52f0: $70
    ld l, h                                       ; $52f1: $6c
    ld h, c                                       ; $52f2: $61
    ld a, c                                       ; $52f3: $79
    ld h, l                                       ; $52f4: $65
    ld [hl], d                                    ; $52f5: $72
    inc l                                         ; $52f6: $2c
    jr nz, @+$70                                  ; $52f7: $20 $6e

    ld l, a                                       ; $52f9: $6f

jr_01f_52fa:
    ld [hl], h                                    ; $52fa: $74
    ld [bc], a                                    ; $52fb: $02
    ld l, c                                       ; $52fc: $69
    ld l, [hl]                                    ; $52fd: $6e
    ld h, e                                       ; $52fe: $63
    ld l, h                                       ; $52ff: $6c
    ld [hl], l                                    ; $5300: $75
    ld h, h                                       ; $5301: $64
    ld l, c                                       ; $5302: $69
    ld l, [hl]                                    ; $5303: $6e
    ld h, a                                       ; $5304: $67
    jr nz, jr_01f_5368                            ; $5305: $20 $61

    ld bc, $6168                                  ; $5307: $01 $68 $61
    ld l, [hl]                                    ; $530a: $6e
    ld h, h                                       ; $530b: $64
    ld l, c                                       ; $530c: $69
    ld h, e                                       ; $530d: $63
    ld h, c                                       ; $530e: $61
    ld [hl], b                                    ; $530f: $70
    ld l, $03                                     ; $5310: $2e $03
    nop                                           ; $5312: $00
    ld b, c                                       ; $5313: $41
    jr nz, jr_01f_5378                            ; $5314: $20 $62

    ld [hl], l                                    ; $5316: $75
    ld l, [hl]                                    ; $5317: $6e
    ld l, e                                       ; $5318: $6b
    ld h, l                                       ; $5319: $65

jr_01f_531a:
    ld [hl], d                                    ; $531a: $72
    jr nz, jr_01f_5391                            ; $531b: $20 $74

    ld l, b                                       ; $531d: $68
    ld h, c                                       ; $531e: $61

jr_01f_531f:
    ld [hl], h                                    ; $531f: $74
    ld bc, $7270                                  ; $5320: $01 $70 $72
    ld l, a                                       ; $5323: $6f
    ld [hl], h                                    ; $5324: $74
    ld h, l                                       ; $5325: $65
    ld h, e                                       ; $5326: $63

jr_01f_5327:
    ld [hl], h                                    ; $5327: $74
    ld [hl], e                                    ; $5328: $73
    jr nz, jr_01f_539f                            ; $5329: $20 $74

    ld l, b                                       ; $532b: $68

jr_01f_532c:
    ld h, l                                       ; $532c: $65
    ld bc, $7267                                  ; $532d: $01 $67 $72
    ld h, l                                       ; $5330: $65
    ld h, l                                       ; $5331: $65
    ld l, [hl]                                    ; $5332: $6e
    ld l, $03                                     ; $5333: $2e $03
    nop                                           ; $5335: $00
    ld d, h                                       ; $5336: $54
    ld l, b                                       ; $5337: $68
    ld h, l                                       ; $5338: $65
    jr nz, jr_01f_53a9                            ; $5339: $20 $6e

jr_01f_533b:
    ld [hl], l                                    ; $533b: $75
    ld l, l                                       ; $533c: $6d
    ld h, d                                       ; $533d: $62
    ld h, l                                       ; $533e: $65
    ld [hl], d                                    ; $533f: $72
    jr nz, @+$71                                  ; $5340: $20 $6f

    ld h, [hl]                                    ; $5342: $66
    ld bc, $6f70                                  ; $5343: $01 $70 $6f
    ld l, c                                       ; $5346: $69
    ld l, [hl]                                    ; $5347: $6e
    ld [hl], h                                    ; $5348: $74

jr_01f_5349:
    ld [hl], e                                    ; $5349: $73

jr_01f_534a:
    jr nz, jr_01f_53ad                            ; $534a: $20 $61

    jr nz, jr_01f_53be                            ; $534c: $20 $70

jr_01f_534e:
    ld l, h                                       ; $534e: $6c
    ld h, c                                       ; $534f: $61
    ld a, c                                       ; $5350: $79
    ld h, l                                       ; $5351: $65
    ld [hl], d                                    ; $5352: $72
    ld bc, $7573                                  ; $5353: $01 $73 $75
    ld h, d                                       ; $5356: $62
    ld [hl], h                                    ; $5357: $74
    ld [hl], d                                    ; $5358: $72
    ld h, c                                       ; $5359: $61
    ld h, e                                       ; $535a: $63
    ld [hl], h                                    ; $535b: $74
    ld [hl], e                                    ; $535c: $73
    jr nz, jr_01f_53c5                            ; $535d: $20 $66

    ld [hl], d                                    ; $535f: $72
    ld l, a                                       ; $5360: $6f
    ld l, l                                       ; $5361: $6d
    ld [bc], a                                    ; $5362: $02
    ld l, b                                       ; $5363: $68
    ld l, c                                       ; $5364: $69
    ld [hl], e                                    ; $5365: $73
    jr nz, jr_01f_53db                            ; $5366: $20 $73

jr_01f_5368:
    ld h, e                                       ; $5368: $63
    ld l, a                                       ; $5369: $6f
    ld [hl], d                                    ; $536a: $72
    ld h, l                                       ; $536b: $65
    jr nz, jr_01f_53e2                            ; $536c: $20 $74

    ld l, a                                       ; $536e: $6f
    ld bc, $616d                                  ; $536f: $01 $6d $61
    ld [hl], h                                    ; $5372: $74
    ld h, e                                       ; $5373: $63
    ld l, b                                       ; $5374: $68
    jr nz, jr_01f_53df                            ; $5375: $20 $68

    ld l, c                                       ; $5377: $69

jr_01f_5378:
    ld [hl], e                                    ; $5378: $73
    ld bc, $6261                                  ; $5379: $01 $61 $62
    ld l, c                                       ; $537c: $69
    ld l, h                                       ; $537d: $6c
    ld l, c                                       ; $537e: $69
    ld [hl], h                                    ; $537f: $74
    ld a, c                                       ; $5380: $79
    jr nz, jr_01f_53f7                            ; $5381: $20 $74

    ld l, a                                       ; $5383: $6f
    jr nz, jr_01f_53fa                            ; $5384: $20 $74

    ld l, b                                       ; $5386: $68
    ld h, c                                       ; $5387: $61
    ld [hl], h                                    ; $5388: $74
    ld [bc], a                                    ; $5389: $02
    ld l, a                                       ; $538a: $6f
    ld h, [hl]                                    ; $538b: $66
    jr nz, jr_01f_53ef                            ; $538c: $20 $61

    jr nz, @+$75                                  ; $538e: $20 $73

    ld h, e                                       ; $5390: $63

jr_01f_5391:
    ld [hl], d                                    ; $5391: $72
    ld h, c                                       ; $5392: $61
    ld [hl], h                                    ; $5393: $74
    ld h, e                                       ; $5394: $63
    ld l, b                                       ; $5395: $68
    ld bc, $6c70                                  ; $5396: $01 $70 $6c
    ld h, c                                       ; $5399: $61
    ld a, c                                       ; $539a: $79
    ld h, l                                       ; $539b: $65
    ld [hl], d                                    ; $539c: $72
    ld l, $03                                     ; $539d: $2e $03

jr_01f_539f:
    nop                                           ; $539f: $00
    ld b, c                                       ; $53a0: $41
    ld l, [hl]                                    ; $53a1: $6e
    jr nz, jr_01f_5413                            ; $53a2: $20 $6f

    ld h, d                                       ; $53a4: $62
    ld [hl], e                                    ; $53a5: $73
    ld [hl], h                                    ; $53a6: $74
    ld h, c                                       ; $53a7: $61
    ld h, e                                       ; $53a8: $63

jr_01f_53a9:
    ld l, h                                       ; $53a9: $6c
    ld h, l                                       ; $53aa: $65
    jr nz, jr_01f_5420                            ; $53ab: $20 $73

jr_01f_53ad:
    ld [hl], l                                    ; $53ad: $75
    ld h, e                                       ; $53ae: $63
    ld l, b                                       ; $53af: $68
    jr nz, jr_01f_5413                            ; $53b0: $20 $61

    ld [hl], e                                    ; $53b2: $73
    ld bc, $2061                                  ; $53b3: $01 $61 $20
    ld h, d                                       ; $53b6: $62
    ld [hl], l                                    ; $53b7: $75
    ld l, [hl]                                    ; $53b8: $6e
    ld l, e                                       ; $53b9: $6b
    ld h, l                                       ; $53ba: $65
    ld [hl], d                                    ; $53bb: $72
    jr nz, jr_01f_542d                            ; $53bc: $20 $6f

jr_01f_53be:
    ld [hl], d                                    ; $53be: $72
    jr nz, jr_01f_5438                            ; $53bf: $20 $77

    ld h, c                                       ; $53c1: $61
    ld [hl], h                                    ; $53c2: $74
    ld h, l                                       ; $53c3: $65
    ld [hl], d                                    ; $53c4: $72

jr_01f_53c5:
    ld bc, $6168                                  ; $53c5: $01 $68 $61
    ld a, d                                       ; $53c8: $7a
    ld h, c                                       ; $53c9: $61
    ld [hl], d                                    ; $53ca: $72
    ld h, h                                       ; $53cb: $64
    ld l, $02                                     ; $53cc: $2e $02
    ld d, h                                       ; $53ce: $54
    ld l, b                                       ; $53cf: $68
    ld h, l                                       ; $53d0: $65
    jr nz, jr_01f_5445                            ; $53d1: $20 $72

    ld [hl], l                                    ; $53d3: $75
    ld l, h                                       ; $53d4: $6c
    ld h, l                                       ; $53d5: $65
    ld [hl], e                                    ; $53d6: $73
    jr nz, jr_01f_543d                            ; $53d7: $20 $64

    ld l, a                                       ; $53d9: $6f
    ld l, [hl]                                    ; $53da: $6e

jr_01f_53db:
    daa                                           ; $53db: $27
    ld [hl], h                                    ; $53dc: $74
    jr nz, jr_01f_5442                            ; $53dd: $20 $63

jr_01f_53df:
    ld l, a                                       ; $53df: $6f
    ld [hl], l                                    ; $53e0: $75
    ld l, [hl]                                    ; $53e1: $6e

jr_01f_53e2:
    ld [hl], h                                    ; $53e2: $74
    ld bc, $7267                                  ; $53e3: $01 $67 $72
    ld h, c                                       ; $53e6: $61
    ld [hl], e                                    ; $53e7: $73
    ld [hl], e                                    ; $53e8: $73
    jr nz, jr_01f_544d                            ; $53e9: $20 $62

    ld [hl], l                                    ; $53eb: $75
    ld l, [hl]                                    ; $53ec: $6e
    ld l, e                                       ; $53ed: $6b
    ld h, l                                       ; $53ee: $65

jr_01f_53ef:
    ld [hl], d                                    ; $53ef: $72
    ld [hl], e                                    ; $53f0: $73
    jr nz, jr_01f_5454                            ; $53f1: $20 $61

    ld [hl], e                                    ; $53f3: $73
    ld bc, $6168                                  ; $53f4: $01 $68 $61

jr_01f_53f7:
    ld a, d                                       ; $53f7: $7a
    ld h, c                                       ; $53f8: $61
    ld [hl], d                                    ; $53f9: $72

jr_01f_53fa:
    ld h, h                                       ; $53fa: $64
    ld [hl], e                                    ; $53fb: $73
    ld l, $03                                     ; $53fc: $2e $03
    nop                                           ; $53fe: $00
    ld d, h                                       ; $53ff: $54
    ld l, b                                       ; $5400: $68
    ld h, l                                       ; $5401: $65
    jr nz, jr_01f_5474                            ; $5402: $20 $70

    ld h, c                                       ; $5404: $61
    ld [hl], d                                    ; $5405: $72
    ld [hl], h                                    ; $5406: $74
    jr nz, jr_01f_5478                            ; $5407: $20 $6f

    ld h, [hl]                                    ; $5409: $66
    jr nz, @+$76                                  ; $540a: $20 $74

    ld l, b                                       ; $540c: $68
    ld h, l                                       ; $540d: $65
    ld bc, $6c63                                  ; $540e: $01 $63 $6c
    ld [hl], l                                    ; $5411: $75
    ld h, d                                       ; $5412: $62

jr_01f_5413:
    jr nz, jr_01f_5489                            ; $5413: $20 $74

    ld l, b                                       ; $5415: $68
    ld h, c                                       ; $5416: $61
    ld [hl], h                                    ; $5417: $74
    jr nz, jr_01f_5482                            ; $5418: $20 $68

    ld l, c                                       ; $541a: $69
    ld [hl], h                                    ; $541b: $74
    ld [hl], e                                    ; $541c: $73
    ld bc, $6874                                  ; $541d: $01 $74 $68

jr_01f_5420:
    ld h, l                                       ; $5420: $65
    jr nz, jr_01f_5485                            ; $5421: $20 $62

    ld h, c                                       ; $5423: $61
    ld l, h                                       ; $5424: $6c
    ld l, h                                       ; $5425: $6c
    ld l, $20                                     ; $5426: $2e $20
    ld c, c                                       ; $5428: $49
    ld [hl], h                                    ; $5429: $74
    daa                                           ; $542a: $27
    ld [hl], e                                    ; $542b: $73
    ld [bc], a                                    ; $542c: $02

jr_01f_542d:
    ld h, e                                       ; $542d: $63
    ld l, a                                       ; $542e: $6f
    ld l, [hl]                                    ; $542f: $6e
    ld l, [hl]                                    ; $5430: $6e
    ld h, l                                       ; $5431: $65
    ld h, e                                       ; $5432: $63
    ld [hl], h                                    ; $5433: $74
    ld h, l                                       ; $5434: $65
    ld h, h                                       ; $5435: $64
    jr nz, jr_01f_54ac                            ; $5436: $20 $74

jr_01f_5438:
    ld l, a                                       ; $5438: $6f
    ld bc, $6874                                  ; $5439: $01 $74 $68
    ld h, l                                       ; $543c: $65

jr_01f_543d:
    jr nz, @+$75                                  ; $543d: $20 $73

    ld l, b                                       ; $543f: $68
    ld h, c                                       ; $5440: $61
    ld h, [hl]                                    ; $5441: $66

jr_01f_5442:
    ld [hl], h                                    ; $5442: $74
    ld l, $03                                     ; $5443: $2e $03

jr_01f_5445:
    nop                                           ; $5445: $00
    ld b, c                                       ; $5446: $41
    ld l, [hl]                                    ; $5447: $6e
    jr nz, @+$63                                  ; $5448: $20 $61

    ld [hl], d                                    ; $544a: $72
    ld h, l                                       ; $544b: $65
    ld h, c                                       ; $544c: $61

jr_01f_544d:
    jr nz, @+$71                                  ; $544d: $20 $6f

    ld h, [hl]                                    ; $544f: $66
    ld bc, $6e75                                  ; $5450: $01 $75 $6e
    ld [hl], h                                    ; $5453: $74

jr_01f_5454:
    ld h, l                                       ; $5454: $65
    ld l, [hl]                                    ; $5455: $6e
    ld h, h                                       ; $5456: $64
    ld h, l                                       ; $5457: $65
    ld h, h                                       ; $5458: $64
    jr nz, jr_01f_54c7                            ; $5459: $20 $6c

    ld h, c                                       ; $545b: $61
    ld l, [hl]                                    ; $545c: $6e
    ld h, h                                       ; $545d: $64
    inc l                                         ; $545e: $2c
    ld bc, $6373                                  ; $545f: $01 $73 $63
    ld h, c                                       ; $5462: $61
    ld [hl], h                                    ; $5463: $74
    ld [hl], h                                    ; $5464: $74
    ld h, l                                       ; $5465: $65
    ld [hl], d                                    ; $5466: $72
    ld h, l                                       ; $5467: $65
    ld h, h                                       ; $5468: $64
    jr nz, jr_01f_54e2                            ; $5469: $20 $77

    ld l, c                                       ; $546b: $69
    ld [hl], h                                    ; $546c: $74
    ld l, b                                       ; $546d: $68
    ld [bc], a                                    ; $546e: $02
    ld l, h                                       ; $546f: $6c
    ld l, a                                       ; $5470: $6f
    ld [hl], a                                    ; $5471: $77
    jr nz, @+$64                                  ; $5472: $20 $62

jr_01f_5474:
    ld [hl], l                                    ; $5474: $75
    ld [hl], e                                    ; $5475: $73
    ld l, b                                       ; $5476: $68
    ld h, l                                       ; $5477: $65

jr_01f_5478:
    ld [hl], e                                    ; $5478: $73
    ld l, $03                                     ; $5479: $2e $03
    nop                                           ; $547b: $00
    ld d, h                                       ; $547c: $54
    ld l, b                                       ; $547d: $68
    ld h, l                                       ; $547e: $65
    jr nz, jr_01f_54e4                            ; $547f: $20 $63

    ld [hl], l                                    ; $5481: $75

jr_01f_5482:
    ld [hl], b                                    ; $5482: $70
    jr nz, jr_01f_54ee                            ; $5483: $20 $69

jr_01f_5485:
    ld l, [hl]                                    ; $5485: $6e
    jr nz, jr_01f_54fc                            ; $5486: $20 $74

    ld l, b                                       ; $5488: $68

jr_01f_5489:
    ld h, l                                       ; $5489: $65
    ld bc, $7267                                  ; $548a: $01 $67 $72
    ld h, l                                       ; $548d: $65
    ld h, l                                       ; $548e: $65
    ld l, [hl]                                    ; $548f: $6e
    jr nz, jr_01f_54f8                            ; $5490: $20 $66

    ld l, a                                       ; $5492: $6f
    ld [hl], d                                    ; $5493: $72
    jr nz, jr_01f_550d                            ; $5494: $20 $77

    ld l, b                                       ; $5496: $68
    ld l, c                                       ; $5497: $69
    ld h, e                                       ; $5498: $63
    ld l, b                                       ; $5499: $68
    ld bc, $6874                                  ; $549a: $01 $74 $68
    ld h, l                                       ; $549d: $65
    jr nz, jr_01f_5510                            ; $549e: $20 $70

    ld l, h                                       ; $54a0: $6c
    ld h, c                                       ; $54a1: $61
    ld a, c                                       ; $54a2: $79
    ld h, l                                       ; $54a3: $65
    ld [hl], d                                    ; $54a4: $72
    ld [hl], e                                    ; $54a5: $73
    jr nz, jr_01f_5509                            ; $54a6: $20 $61

    ld l, c                                       ; $54a8: $69
    ld l, l                                       ; $54a9: $6d
    ld l, $02                                     ; $54aa: $2e $02

jr_01f_54ac:
    ld b, c                                       ; $54ac: $41
    ld l, h                                       ; $54ad: $6c
    ld [hl], e                                    ; $54ae: $73
    ld l, a                                       ; $54af: $6f
    inc l                                         ; $54b0: $2c
    jr nz, jr_01f_5522                            ; $54b1: $20 $6f

    ld l, [hl]                                    ; $54b3: $6e
    ld h, l                                       ; $54b4: $65
    jr nz, jr_01f_5526                            ; $54b5: $20 $6f

    ld h, [hl]                                    ; $54b7: $66
    jr nz, jr_01f_552e                            ; $54b8: $20 $74

    ld l, b                                       ; $54ba: $68
    ld h, l                                       ; $54bb: $65
    ld bc, $3831                                  ; $54bc: $01 $31 $38
    jr nz, jr_01f_5522                            ; $54bf: $20 $61

    ld [hl], d                                    ; $54c1: $72
    ld h, l                                       ; $54c2: $65
    ld h, c                                       ; $54c3: $61
    ld [hl], e                                    ; $54c4: $73
    jr nz, jr_01f_5529                            ; $54c5: $20 $62

jr_01f_54c7:
    ld h, l                                       ; $54c7: $65
    ld [hl], h                                    ; $54c8: $74
    ld [hl], a                                    ; $54c9: $77
    ld h, l                                       ; $54ca: $65
    ld h, l                                       ; $54cb: $65
    ld l, [hl]                                    ; $54cc: $6e
    ld bc, $6874                                  ; $54cd: $01 $74 $68
    ld h, l                                       ; $54d0: $65
    jr nz, jr_01f_5547                            ; $54d1: $20 $74

    ld h, l                                       ; $54d3: $65
    ld h, l                                       ; $54d4: $65
    jr nz, jr_01f_5538                            ; $54d5: $20 $61

    ld l, [hl]                                    ; $54d7: $6e
    ld h, h                                       ; $54d8: $64
    jr nz, jr_01f_553e                            ; $54d9: $20 $63

    ld [hl], l                                    ; $54db: $75
    ld [hl], b                                    ; $54dc: $70
    ld l, $03                                     ; $54dd: $2e $03
    nop                                           ; $54df: $00
    ld b, a                                       ; $54e0: $47
    ld h, l                                       ; $54e1: $65

jr_01f_54e2:
    ld [hl], h                                    ; $54e2: $74
    ld [hl], h                                    ; $54e3: $74

jr_01f_54e4:
    ld l, c                                       ; $54e4: $69
    ld l, [hl]                                    ; $54e5: $6e
    ld h, a                                       ; $54e6: $67
    jr nz, jr_01f_555d                            ; $54e7: $20 $74

    ld l, b                                       ; $54e9: $68
    ld h, l                                       ; $54ea: $65
    jr nz, jr_01f_554f                            ; $54eb: $20 $62

    ld h, c                                       ; $54ed: $61

jr_01f_54ee:
    ld l, h                                       ; $54ee: $6c
    ld l, h                                       ; $54ef: $6c
    ld bc, $6e69                                  ; $54f0: $01 $69 $6e
    ld [hl], h                                    ; $54f3: $74
    ld l, a                                       ; $54f4: $6f
    jr nz, jr_01f_556b                            ; $54f5: $20 $74

    ld l, b                                       ; $54f7: $68

jr_01f_54f8:
    ld h, l                                       ; $54f8: $65
    jr nz, jr_01f_555e                            ; $54f9: $20 $63

    ld [hl], l                                    ; $54fb: $75

jr_01f_54fc:
    ld [hl], b                                    ; $54fc: $70
    jr nz, jr_01f_5568                            ; $54fd: $20 $69

    ld l, [hl]                                    ; $54ff: $6e
    ld bc, $756a                                  ; $5500: $01 $6a $75
    ld [hl], e                                    ; $5503: $73
    ld [hl], h                                    ; $5504: $74
    jr nz, jr_01f_5576                            ; $5505: $20 $6f

    ld l, [hl]                                    ; $5507: $6e
    ld h, l                                       ; $5508: $65

jr_01f_5509:
    jr nz, jr_01f_557e                            ; $5509: $20 $73

    ld [hl], h                                    ; $550b: $74
    ld [hl], d                                    ; $550c: $72

jr_01f_550d:
    ld l, a                                       ; $550d: $6f
    ld l, e                                       ; $550e: $6b
    ld h, l                                       ; $550f: $65

jr_01f_5510:
    ld l, $02                                     ; $5510: $2e $02
    ld d, h                                       ; $5512: $54
    ld l, b                                       ; $5513: $68
    ld l, c                                       ; $5514: $69
    ld [hl], e                                    ; $5515: $73
    jr nz, @+$77                                  ; $5516: $20 $75

    ld [hl], e                                    ; $5518: $73
    ld [hl], l                                    ; $5519: $75
    ld h, c                                       ; $551a: $61
    ld l, h                                       ; $551b: $6c
    ld l, h                                       ; $551c: $6c
    ld a, c                                       ; $551d: $79
    ld bc, $6168                                  ; $551e: $01 $68 $61
    ld [hl], b                                    ; $5521: $70

jr_01f_5522:
    ld [hl], b                                    ; $5522: $70
    ld h, l                                       ; $5523: $65
    ld l, [hl]                                    ; $5524: $6e
    ld [hl], e                                    ; $5525: $73

jr_01f_5526:
    jr nz, jr_01f_5597                            ; $5526: $20 $6f

    ld l, [hl]                                    ; $5528: $6e

jr_01f_5529:
    ld l, h                                       ; $5529: $6c
    ld a, c                                       ; $552a: $79
    jr nz, jr_01f_559c                            ; $552b: $20 $6f

    ld l, [hl]                                    ; $552d: $6e

jr_01f_552e:
    ld bc, $6170                                  ; $552e: $01 $70 $61
    ld [hl], d                                    ; $5531: $72
    jr nz, jr_01f_5567                            ; $5532: $20 $33

    jr nz, jr_01f_559e                            ; $5534: $20 $68

    ld l, a                                       ; $5536: $6f
    ld l, h                                       ; $5537: $6c

jr_01f_5538:
    ld h, l                                       ; $5538: $65
    ld [hl], e                                    ; $5539: $73
    ld l, $03                                     ; $553a: $2e $03
    nop                                           ; $553c: $00
    ld d, h                                       ; $553d: $54

jr_01f_553e:
    ld l, a                                       ; $553e: $6f
    jr nz, @+$65                                  ; $553f: $20 $63

    ld l, a                                       ; $5541: $6f
    ld l, l                                       ; $5542: $6d
    ld [hl], b                                    ; $5543: $70
    ld l, h                                       ; $5544: $6c
    ld h, l                                       ; $5545: $65
    ld [hl], h                                    ; $5546: $74

jr_01f_5547:
    ld h, l                                       ; $5547: $65
    jr nz, jr_01f_55ab                            ; $5548: $20 $61

    ld bc, $6f68                                  ; $554a: $01 $68 $6f
    ld l, h                                       ; $554d: $6c
    ld h, l                                       ; $554e: $65

jr_01f_554f:
    jr nz, jr_01f_55b3                            ; $554f: $20 $62

    ld a, c                                       ; $5551: $79
    jr nz, @+$75                                  ; $5552: $20 $73

    ld l, c                                       ; $5554: $69
    ld l, [hl]                                    ; $5555: $6e
    ld l, e                                       ; $5556: $6b
    ld l, c                                       ; $5557: $69
    ld l, [hl]                                    ; $5558: $6e
    ld h, a                                       ; $5559: $67
    ld bc, $6874                                  ; $555a: $01 $74 $68

jr_01f_555d:
    ld h, l                                       ; $555d: $65

jr_01f_555e:
    jr nz, jr_01f_55c2                            ; $555e: $20 $62

    ld h, c                                       ; $5560: $61
    ld l, h                                       ; $5561: $6c
    ld l, h                                       ; $5562: $6c
    ld l, $03                                     ; $5563: $2e $03
    nop                                           ; $5565: $00
    ld b, c                                       ; $5566: $41

jr_01f_5567:
    ld l, [hl]                                    ; $5567: $6e

jr_01f_5568:
    ld l, a                                       ; $5568: $6f
    ld [hl], h                                    ; $5569: $74
    ld l, b                                       ; $556a: $68

jr_01f_556b:
    ld h, l                                       ; $556b: $65
    ld [hl], d                                    ; $556c: $72
    jr nz, jr_01f_55dd                            ; $556d: $20 $6e

    ld h, c                                       ; $556f: $61
    ld l, l                                       ; $5570: $6d
    ld h, l                                       ; $5571: $65
    jr nz, jr_01f_55da                            ; $5572: $20 $66

    ld l, a                                       ; $5574: $6f
    ld [hl], d                                    ; $5575: $72

jr_01f_5576:
    ld bc, $6874                                  ; $5576: $01 $74 $68
    ld h, l                                       ; $5579: $65
    jr nz, jr_01f_55ad                            ; $557a: $20 $31

    jr c, @+$76                                   ; $557c: $38 $74

jr_01f_557e:
    ld l, b                                       ; $557e: $68
    jr nz, jr_01f_55e9                            ; $557f: $20 $68

    ld l, a                                       ; $5581: $6f
    ld l, h                                       ; $5582: $6c
    ld h, l                                       ; $5583: $65
    ld bc, $6562                                  ; $5584: $01 $62 $65
    ld h, e                                       ; $5587: $63
    ld h, c                                       ; $5588: $61
    ld [hl], l                                    ; $5589: $75
    ld [hl], e                                    ; $558a: $73
    ld h, l                                       ; $558b: $65
    jr nz, jr_01f_55fd                            ; $558c: $20 $6f

    ld l, [hl]                                    ; $558e: $6e
    ld h, e                                       ; $558f: $63
    ld h, l                                       ; $5590: $65
    jr nz, jr_01f_55fc                            ; $5591: $20 $69

    ld [hl], h                                    ; $5593: $74
    daa                                           ; $5594: $27
    ld [hl], e                                    ; $5595: $73
    ld [bc], a                                    ; $5596: $02

jr_01f_5597:
    ld h, h                                       ; $5597: $64
    ld l, a                                       ; $5598: $6f
    ld l, [hl]                                    ; $5599: $6e
    ld h, l                                       ; $559a: $65
    inc l                                         ; $559b: $2c

jr_01f_559c:
    jr nz, jr_01f_5617                            ; $559c: $20 $79

jr_01f_559e:
    ld l, a                                       ; $559e: $6f
    ld [hl], l                                    ; $559f: $75
    daa                                           ; $55a0: $27
    ld [hl], d                                    ; $55a1: $72
    ld h, l                                       ; $55a2: $65
    jr nz, jr_01f_5614                            ; $55a3: $20 $6f

    ld l, [hl]                                    ; $55a5: $6e
    ld bc, $6f79                                  ; $55a6: $01 $79 $6f
    ld [hl], l                                    ; $55a9: $75
    ld [hl], d                                    ; $55aa: $72

jr_01f_55ab:
    jr nz, @+$79                                  ; $55ab: $20 $77

jr_01f_55ad:
    ld h, c                                       ; $55ad: $61
    ld a, c                                       ; $55ae: $79
    jr nz, jr_01f_5619                            ; $55af: $20 $68

    ld l, a                                       ; $55b1: $6f
    ld l, l                                       ; $55b2: $6d

jr_01f_55b3:
    ld h, l                                       ; $55b3: $65
    ld hl, $0003                                  ; $55b4: $21 $03 $00
    ld d, e                                       ; $55b7: $53
    ld l, b                                       ; $55b8: $68
    ld l, a                                       ; $55b9: $6f
    ld l, a                                       ; $55ba: $6f
    ld [hl], h                                    ; $55bb: $74
    ld l, c                                       ; $55bc: $69
    ld l, [hl]                                    ; $55bd: $6e
    ld h, a                                       ; $55be: $67
    jr nz, jr_01f_5627                            ; $55bf: $20 $66

    ld l, c                                       ; $55c1: $69

jr_01f_55c2:
    ld [hl], d                                    ; $55c2: $72
    ld [hl], e                                    ; $55c3: $73
    ld [hl], h                                    ; $55c4: $74
    ld bc, $6e6f                                  ; $55c5: $01 $6f $6e
    jr nz, jr_01f_563e                            ; $55c8: $20 $74

    ld l, b                                       ; $55ca: $68
    ld h, l                                       ; $55cb: $65
    jr nz, jr_01f_5642                            ; $55cc: $20 $74

    ld h, l                                       ; $55ce: $65
    ld h, l                                       ; $55cf: $65
    jr nz, jr_01f_5645                            ; $55d0: $20 $73

    ld l, b                                       ; $55d2: $68
    ld l, a                                       ; $55d3: $6f
    ld [hl], h                                    ; $55d4: $74
    ld l, $01                                     ; $55d5: $2e $01
    ld b, [hl]                                    ; $55d7: $46
    ld [hl], d                                    ; $55d8: $72
    ld l, a                                       ; $55d9: $6f

jr_01f_55da:
    ld l, l                                       ; $55da: $6d
    jr nz, @+$4a                                  ; $55db: $20 $48

jr_01f_55dd:
    ld l, a                                       ; $55dd: $6f
    ld l, h                                       ; $55de: $6c
    ld h, l                                       ; $55df: $65
    jr nz, jr_01f_5614                            ; $55e0: $20 $32

    inc l                                         ; $55e2: $2c
    jr nz, jr_01f_5659                            ; $55e3: $20 $74

    ld l, b                                       ; $55e5: $68
    ld h, l                                       ; $55e6: $65
    ld [bc], a                                    ; $55e7: $02
    ld [hl], a                                    ; $55e8: $77

jr_01f_55e9:
    ld l, c                                       ; $55e9: $69
    ld l, [hl]                                    ; $55ea: $6e
    ld l, [hl]                                    ; $55eb: $6e
    ld h, l                                       ; $55ec: $65
    ld [hl], d                                    ; $55ed: $72
    jr nz, jr_01f_565f                            ; $55ee: $20 $6f

    ld h, [hl]                                    ; $55f0: $66
    jr nz, jr_01f_5667                            ; $55f1: $20 $74

    ld l, b                                       ; $55f3: $68
    ld h, l                                       ; $55f4: $65
    ld bc, $616c                                  ; $55f5: $01 $6c $61
    ld [hl], e                                    ; $55f8: $73
    ld [hl], h                                    ; $55f9: $74
    jr nz, jr_01f_5664                            ; $55fa: $20 $68

jr_01f_55fc:
    ld l, a                                       ; $55fc: $6f

jr_01f_55fd:
    ld l, h                                       ; $55fd: $6c
    ld h, l                                       ; $55fe: $65
    jr nz, jr_01f_5668                            ; $55ff: $20 $67

    ld h, l                                       ; $5601: $65
    ld [hl], h                                    ; $5602: $74
    ld [hl], e                                    ; $5603: $73
    ld bc, $6874                                  ; $5604: $01 $74 $68
    ld h, l                                       ; $5607: $65
    jr nz, jr_01f_5672                            ; $5608: $20 $68

    ld l, a                                       ; $560a: $6f
    ld l, [hl]                                    ; $560b: $6e
    ld l, a                                       ; $560c: $6f
    ld [hl], d                                    ; $560d: $72
    ld l, $03                                     ; $560e: $2e $03
    nop                                           ; $5610: $00
    ld b, [hl]                                    ; $5611: $46
    ld l, a                                       ; $5612: $6f
    ld [hl], d                                    ; $5613: $72

jr_01f_5614:
    jr nz, jr_01f_5688                            ; $5614: $20 $72

    ld l, c                                       ; $5616: $69

jr_01f_5617:
    ld h, a                                       ; $5617: $67
    ld l, b                                       ; $5618: $68

jr_01f_5619:
    ld [hl], h                                    ; $5619: $74
    ld l, c                                       ; $561a: $69
    ld h, l                                       ; $561b: $65
    ld [hl], e                                    ; $561c: $73
    inc l                                         ; $561d: $2c
    jr nz, jr_01f_5689                            ; $561e: $20 $69

    ld [hl], h                                    ; $5620: $74
    daa                                           ; $5621: $27
    ld [hl], e                                    ; $5622: $73
    ld bc, $6877                                  ; $5623: $01 $77 $68
    ld h, l                                       ; $5626: $65

jr_01f_5627:
    ld l, [hl]                                    ; $5627: $6e
    jr nz, jr_01f_569e                            ; $5628: $20 $74

    ld l, b                                       ; $562a: $68
    ld h, l                                       ; $562b: $65
    jr nz, jr_01f_5690                            ; $562c: $20 $62

    ld h, c                                       ; $562e: $61
    ld l, h                                       ; $562f: $6c
    ld l, h                                       ; $5630: $6c
    jr nz, jr_01f_5699                            ; $5631: $20 $66

    ld l, h                                       ; $5633: $6c
    ld l, c                                       ; $5634: $69
    ld h, l                                       ; $5635: $65
    ld [hl], e                                    ; $5636: $73
    ld bc, $6166                                  ; $5637: $01 $66 $61
    ld [hl], d                                    ; $563a: $72
    jr nz, jr_01f_56b1                            ; $563b: $20 $74

    ld l, a                                       ; $563d: $6f

jr_01f_563e:
    jr nz, jr_01f_56b4                            ; $563e: $20 $74

    ld l, b                                       ; $5640: $68
    ld h, l                                       ; $5641: $65

jr_01f_5642:
    jr nz, jr_01f_56b0                            ; $5642: $20 $6c

    ld h, l                                       ; $5644: $65

jr_01f_5645:
    ld h, [hl]                                    ; $5645: $66
    ld [hl], h                                    ; $5646: $74
    jr nz, jr_01f_56b8                            ; $5647: $20 $6f

    ld h, [hl]                                    ; $5649: $66
    ld [bc], a                                    ; $564a: $02
    ld l, c                                       ; $564b: $69
    ld [hl], h                                    ; $564c: $74
    ld [hl], e                                    ; $564d: $73
    jr nz, jr_01f_56b9                            ; $564e: $20 $69

    ld l, [hl]                                    ; $5650: $6e
    ld [hl], h                                    ; $5651: $74
    ld h, l                                       ; $5652: $65
    ld l, [hl]                                    ; $5653: $6e
    ld h, h                                       ; $5654: $64
    ld h, l                                       ; $5655: $65
    ld h, h                                       ; $5656: $64
    jr nz, jr_01f_56c9                            ; $5657: $20 $70

jr_01f_5659:
    ld h, c                                       ; $5659: $61
    ld [hl], h                                    ; $565a: $74
    ld l, b                                       ; $565b: $68
    ld l, $01                                     ; $565c: $2e $01
    ld b, [hl]                                    ; $565e: $46

jr_01f_565f:
    ld l, a                                       ; $565f: $6f
    ld [hl], d                                    ; $5660: $72
    jr nz, jr_01f_56cf                            ; $5661: $20 $6c

    ld h, l                                       ; $5663: $65

jr_01f_5664:
    ld h, [hl]                                    ; $5664: $66
    ld [hl], h                                    ; $5665: $74
    ld l, c                                       ; $5666: $69

jr_01f_5667:
    ld h, l                                       ; $5667: $65

jr_01f_5668:
    ld [hl], e                                    ; $5668: $73
    inc l                                         ; $5669: $2c
    jr nz, jr_01f_56e0                            ; $566a: $20 $74

    ld l, b                                       ; $566c: $68
    ld h, l                                       ; $566d: $65
    ld bc, $6162                                  ; $566e: $01 $62 $61
    ld l, h                                       ; $5671: $6c

jr_01f_5672:
    ld l, h                                       ; $5672: $6c
    jr nz, @+$68                                  ; $5673: $20 $66

    ld l, h                                       ; $5675: $6c
    ld l, c                                       ; $5676: $69
    ld h, l                                       ; $5677: $65
    ld [hl], e                                    ; $5678: $73
    jr nz, jr_01f_56e1                            ; $5679: $20 $66

    ld h, c                                       ; $567b: $61
    ld [hl], d                                    ; $567c: $72
    jr nz, jr_01f_56f1                            ; $567d: $20 $72

    ld l, c                                       ; $567f: $69
    ld h, a                                       ; $5680: $67
    ld l, b                                       ; $5681: $68
    ld [hl], h                                    ; $5682: $74
    ld l, $03                                     ; $5683: $2e $03
    nop                                           ; $5685: $00
    ld d, h                                       ; $5686: $54
    ld l, b                                       ; $5687: $68

jr_01f_5688:
    ld h, l                                       ; $5688: $65

jr_01f_5689:
    jr nz, jr_01f_56f8                            ; $5689: $20 $6d

    ld l, a                                       ; $568b: $6f
    ld l, l                                       ; $568c: $6d
    ld h, l                                       ; $568d: $65
    ld l, [hl]                                    ; $568e: $6e
    ld [hl], h                                    ; $568f: $74

jr_01f_5690:
    jr nz, jr_01f_5706                            ; $5690: $20 $74

    ld l, b                                       ; $5692: $68
    ld h, l                                       ; $5693: $65
    jr nz, @+$65                                  ; $5694: $20 $63

    ld l, h                                       ; $5696: $6c
    ld [hl], l                                    ; $5697: $75
    ld h, d                                       ; $5698: $62

jr_01f_5699:
    ld bc, $6968                                  ; $5699: $01 $68 $69
    ld [hl], h                                    ; $569c: $74
    ld [hl], e                                    ; $569d: $73

jr_01f_569e:
    jr nz, jr_01f_5714                            ; $569e: $20 $74

    ld l, b                                       ; $56a0: $68
    ld h, l                                       ; $56a1: $65
    jr nz, jr_01f_5706                            ; $56a2: $20 $62

    ld h, c                                       ; $56a4: $61
    ld l, h                                       ; $56a5: $6c
    ld l, h                                       ; $56a6: $6c
    ld l, $20                                     ; $56a7: $2e $20
    ld d, h                                       ; $56a9: $54
    ld l, b                                       ; $56aa: $68
    ld h, l                                       ; $56ab: $65
    jr nz, jr_01f_5710                            ; $56ac: $20 $62

    ld h, c                                       ; $56ae: $61
    ld l, h                                       ; $56af: $6c

jr_01f_56b0:
    ld l, h                                       ; $56b0: $6c

jr_01f_56b1:
    ld bc, $6977                                  ; $56b1: $01 $77 $69

jr_01f_56b4:
    ld l, h                                       ; $56b4: $6c
    ld l, h                                       ; $56b5: $6c
    jr nz, jr_01f_571e                            ; $56b6: $20 $66

jr_01f_56b8:
    ld l, h                                       ; $56b8: $6c

jr_01f_56b9:
    ld a, c                                       ; $56b9: $79
    jr nz, jr_01f_5728                            ; $56ba: $20 $6c

    ld h, l                                       ; $56bc: $65
    ld h, [hl]                                    ; $56bd: $66
    ld [hl], h                                    ; $56be: $74
    jr nz, @+$71                                  ; $56bf: $20 $6f

    ld [hl], d                                    ; $56c1: $72
    jr nz, @+$74                                  ; $56c2: $20 $72

    ld l, c                                       ; $56c4: $69
    ld h, a                                       ; $56c5: $67
    ld l, b                                       ; $56c6: $68
    ld [hl], h                                    ; $56c7: $74
    inc l                                         ; $56c8: $2c

jr_01f_56c9:
    ld [bc], a                                    ; $56c9: $02
    ld h, h                                       ; $56ca: $64
    ld h, l                                       ; $56cb: $65
    ld [hl], b                                    ; $56cc: $70
    ld h, l                                       ; $56cd: $65
    ld l, [hl]                                    ; $56ce: $6e

jr_01f_56cf:
    ld h, h                                       ; $56cf: $64
    ld l, c                                       ; $56d0: $69
    ld l, [hl]                                    ; $56d1: $6e
    ld h, a                                       ; $56d2: $67
    jr nz, jr_01f_5744                            ; $56d3: $20 $6f

    ld l, [hl]                                    ; $56d5: $6e
    jr nz, jr_01f_574c                            ; $56d6: $20 $74

    ld l, b                                       ; $56d8: $68
    ld h, l                                       ; $56d9: $65
    ld bc, $6568                                  ; $56da: $01 $68 $65
    ld h, c                                       ; $56dd: $61
    ld h, h                                       ; $56de: $64
    daa                                           ; $56df: $27

jr_01f_56e0:
    ld [hl], e                                    ; $56e0: $73

jr_01f_56e1:
    jr nz, jr_01f_5753                            ; $56e1: $20 $70

    ld h, c                                       ; $56e3: $61
    ld [hl], h                                    ; $56e4: $74
    ld l, b                                       ; $56e5: $68
    jr nz, jr_01f_5749                            ; $56e6: $20 $61

    ld l, [hl]                                    ; $56e8: $6e
    ld h, h                                       ; $56e9: $64
    ld bc, $6964                                  ; $56ea: $01 $64 $69
    ld [hl], d                                    ; $56ed: $72
    ld h, l                                       ; $56ee: $65
    ld h, e                                       ; $56ef: $63
    ld [hl], h                                    ; $56f0: $74

jr_01f_56f1:
    ld l, c                                       ; $56f1: $69
    ld l, a                                       ; $56f2: $6f
    ld l, [hl]                                    ; $56f3: $6e
    ld l, $03                                     ; $56f4: $2e $03
    nop                                           ; $56f6: $00
    ld b, c                                       ; $56f7: $41

jr_01f_56f8:
    jr nz, @+$75                                  ; $56f8: $20 $73

    ld [hl], a                                    ; $56fa: $77
    ld l, c                                       ; $56fb: $69
    ld l, [hl]                                    ; $56fc: $6e
    ld h, a                                       ; $56fd: $67
    jr nz, jr_01f_5769                            ; $56fe: $20 $69

    ld l, [hl]                                    ; $5700: $6e
    jr nz, jr_01f_577a                            ; $5701: $20 $77

    ld l, b                                       ; $5703: $68
    ld l, c                                       ; $5704: $69
    ld h, e                                       ; $5705: $63

jr_01f_5706:
    ld l, b                                       ; $5706: $68
    ld bc, $6874                                  ; $5707: $01 $74 $68
    ld h, l                                       ; $570a: $65
    jr nz, jr_01f_5770                            ; $570b: $20 $63

    ld l, h                                       ; $570d: $6c
    ld [hl], l                                    ; $570e: $75
    ld h, d                                       ; $570f: $62

jr_01f_5710:
    jr nz, jr_01f_577a                            ; $5710: $20 $68

    ld h, l                                       ; $5712: $65
    ld h, c                                       ; $5713: $61

jr_01f_5714:
    ld h, h                                       ; $5714: $64
    jr nz, jr_01f_577d                            ; $5715: $20 $66

    ld h, c                                       ; $5717: $61
    ld l, h                                       ; $5718: $6c
    ld l, h                                       ; $5719: $6c
    ld [hl], e                                    ; $571a: $73
    ld bc, $7266                                  ; $571b: $01 $66 $72

jr_01f_571e:
    ld l, a                                       ; $571e: $6f
    ld l, l                                       ; $571f: $6d
    jr nz, jr_01f_5796                            ; $5720: $20 $74

    ld l, b                                       ; $5722: $68
    ld h, l                                       ; $5723: $65
    jr nz, jr_01f_578f                            ; $5724: $20 $69

    ld l, [hl]                                    ; $5726: $6e
    ld [hl], e                                    ; $5727: $73

jr_01f_5728:
    ld l, c                                       ; $5728: $69
    ld h, h                                       ; $5729: $64
    ld h, l                                       ; $572a: $65
    ld [bc], a                                    ; $572b: $02
    ld h, c                                       ; $572c: $61
    ld l, [hl]                                    ; $572d: $6e
    ld h, h                                       ; $572e: $64
    jr nz, @+$76                                  ; $572f: $20 $74

    ld [hl], l                                    ; $5731: $75
    ld [hl], d                                    ; $5732: $72
    ld l, [hl]                                    ; $5733: $6e
    ld [hl], e                                    ; $5734: $73
    jr nz, jr_01f_57a6                            ; $5735: $20 $6f

    ld [hl], l                                    ; $5737: $75
    ld [hl], h                                    ; $5738: $74
    ld [hl], a                                    ; $5739: $77
    ld h, c                                       ; $573a: $61
    ld [hl], d                                    ; $573b: $72
    ld h, h                                       ; $573c: $64
    ld bc, $6e6f                                  ; $573d: $01 $6f $6e
    jr nz, jr_01f_57ab                            ; $5740: $20 $69

    ld l, l                                       ; $5742: $6d
    ld [hl], b                                    ; $5743: $70

jr_01f_5744:
    ld h, c                                       ; $5744: $61
    ld h, e                                       ; $5745: $63
    ld [hl], h                                    ; $5746: $74
    ld l, $03                                     ; $5747: $2e $03

jr_01f_5749:
    nop                                           ; $5749: $00
    ld d, b                                       ; $574a: $50
    ld [hl], l                                    ; $574b: $75

jr_01f_574c:
    ld [hl], d                                    ; $574c: $72
    ld [hl], b                                    ; $574d: $70
    ld l, a                                       ; $574e: $6f
    ld [hl], e                                    ; $574f: $73
    ld h, l                                       ; $5750: $65
    ld l, h                                       ; $5751: $6c
    ld a, c                                       ; $5752: $79

jr_01f_5753:
    jr nz, @+$6a                                  ; $5753: $20 $68

    ld l, c                                       ; $5755: $69
    ld [hl], h                                    ; $5756: $74
    ld [hl], h                                    ; $5757: $74
    ld l, c                                       ; $5758: $69
    ld l, [hl]                                    ; $5759: $6e
    ld h, a                                       ; $575a: $67
    ld bc, $6874                                  ; $575b: $01 $74 $68
    ld h, l                                       ; $575e: $65
    jr nz, jr_01f_57c3                            ; $575f: $20 $62

    ld h, c                                       ; $5761: $61
    ld l, h                                       ; $5762: $6c
    ld l, h                                       ; $5763: $6c
    jr nz, @+$6e                                  ; $5764: $20 $6c

    ld h, l                                       ; $5766: $65
    ld h, [hl]                                    ; $5767: $66
    ld [hl], h                                    ; $5768: $74

jr_01f_5769:
    jr nz, jr_01f_57da                            ; $5769: $20 $6f

    ld [hl], d                                    ; $576b: $72
    ld bc, $6972                                  ; $576c: $01 $72 $69
    ld h, a                                       ; $576f: $67

jr_01f_5770:
    ld l, b                                       ; $5770: $68
    ld [hl], h                                    ; $5771: $74
    jr nz, jr_01f_57eb                            ; $5772: $20 $77

    ld l, c                                       ; $5774: $69
    ld [hl], h                                    ; $5775: $74
    ld l, b                                       ; $5776: $68
    jr nz, jr_01f_57da                            ; $5777: $20 $61

    ld [bc], a                                    ; $5779: $02

jr_01f_577a:
    ld l, b                                       ; $577a: $68
    ld l, a                                       ; $577b: $6f
    ld l, a                                       ; $577c: $6f

jr_01f_577d:
    ld l, e                                       ; $577d: $6b
    jr nz, jr_01f_57ef                            ; $577e: $20 $6f

    ld [hl], d                                    ; $5780: $72
    jr nz, jr_01f_57f6                            ; $5781: $20 $73

    ld l, h                                       ; $5783: $6c
    ld l, c                                       ; $5784: $69
    ld h, e                                       ; $5785: $63
    ld h, l                                       ; $5786: $65
    jr nz, jr_01f_57fd                            ; $5787: $20 $74

    ld l, a                                       ; $5789: $6f
    ld bc, $7661                                  ; $578a: $01 $61 $76
    ld l, a                                       ; $578d: $6f
    ld l, c                                       ; $578e: $69

jr_01f_578f:
    ld h, h                                       ; $578f: $64
    jr nz, jr_01f_57f3                            ; $5790: $20 $61

    ld l, [hl]                                    ; $5792: $6e
    jr nz, jr_01f_5804                            ; $5793: $20 $6f

    ld h, d                                       ; $5795: $62

jr_01f_5796:
    ld [hl], e                                    ; $5796: $73
    ld [hl], h                                    ; $5797: $74
    ld h, c                                       ; $5798: $61
    ld h, e                                       ; $5799: $63
    ld l, h                                       ; $579a: $6c
    ld h, l                                       ; $579b: $65
    ld bc, $6e61                                  ; $579c: $01 $61 $6e
    ld h, h                                       ; $579f: $64
    jr nz, jr_01f_5809                            ; $57a0: $20 $67

    ld h, l                                       ; $57a2: $65
    ld [hl], h                                    ; $57a3: $74
    jr nz, jr_01f_5815                            ; $57a4: $20 $6f

jr_01f_57a6:
    ld l, [hl]                                    ; $57a6: $6e
    jr nz, jr_01f_5810                            ; $57a7: $20 $67

    ld [hl], d                                    ; $57a9: $72
    ld h, l                                       ; $57aa: $65

jr_01f_57ab:
    ld h, l                                       ; $57ab: $65
    ld l, [hl]                                    ; $57ac: $6e
    ld l, $03                                     ; $57ad: $2e $03
    nop                                           ; $57af: $00
    ld b, c                                       ; $57b0: $41
    jr nz, jr_01f_5820                            ; $57b1: $20 $6d

    ld h, l                                       ; $57b3: $65
    ld [hl], h                                    ; $57b4: $74
    ld h, c                                       ; $57b5: $61
    ld l, h                                       ; $57b6: $6c
    jr nz, jr_01f_581c                            ; $57b7: $20 $63

    ld l, h                                       ; $57b9: $6c
    ld [hl], l                                    ; $57ba: $75
    ld h, d                                       ; $57bb: $62
    ld bc, $7375                                  ; $57bc: $01 $75 $73
    ld h, l                                       ; $57bf: $65
    ld h, h                                       ; $57c0: $64
    jr nz, jr_01f_5837                            ; $57c1: $20 $74

jr_01f_57c3:
    ld l, a                                       ; $57c3: $6f
    jr nz, jr_01f_582e                            ; $57c4: $20 $68

    ld l, c                                       ; $57c6: $69
    ld [hl], h                                    ; $57c7: $74
    jr nz, jr_01f_583e                            ; $57c8: $20 $74

    ld l, b                                       ; $57ca: $68
    ld h, l                                       ; $57cb: $65
    ld bc, $6162                                  ; $57cc: $01 $62 $61
    ld l, h                                       ; $57cf: $6c
    ld l, h                                       ; $57d0: $6c
    ld l, $20                                     ; $57d1: $2e $20
    ld d, h                                       ; $57d3: $54
    ld l, b                                       ; $57d4: $68
    ld h, l                                       ; $57d5: $65
    jr nz, jr_01f_5844                            ; $57d6: $20 $6c

    ld l, a                                       ; $57d8: $6f
    ld [hl], a                                    ; $57d9: $77

jr_01f_57da:
    ld h, l                                       ; $57da: $65
    ld [hl], d                                    ; $57db: $72
    ld [bc], a                                    ; $57dc: $02
    ld l, c                                       ; $57dd: $69
    ld [hl], h                                    ; $57de: $74
    ld [hl], e                                    ; $57df: $73
    jr nz, jr_01f_5850                            ; $57e0: $20 $6e

    ld [hl], l                                    ; $57e2: $75
    ld l, l                                       ; $57e3: $6d
    ld h, d                                       ; $57e4: $62
    ld h, l                                       ; $57e5: $65
    ld [hl], d                                    ; $57e6: $72
    inc l                                         ; $57e7: $2c
    jr nz, jr_01f_585e                            ; $57e8: $20 $74

    ld l, b                                       ; $57ea: $68

jr_01f_57eb:
    ld h, l                                       ; $57eb: $65
    ld bc, $7267                                  ; $57ec: $01 $67 $72

jr_01f_57ef:
    ld h, l                                       ; $57ef: $65
    ld h, c                                       ; $57f0: $61
    ld [hl], h                                    ; $57f1: $74
    ld h, l                                       ; $57f2: $65

jr_01f_57f3:
    ld [hl], d                                    ; $57f3: $72
    jr nz, jr_01f_585f                            ; $57f4: $20 $69

jr_01f_57f6:
    ld [hl], h                                    ; $57f6: $74
    ld [hl], e                                    ; $57f7: $73
    ld bc, $6964                                  ; $57f8: $01 $64 $69
    ld [hl], e                                    ; $57fb: $73
    ld [hl], h                                    ; $57fc: $74

jr_01f_57fd:
    ld h, c                                       ; $57fd: $61
    ld l, [hl]                                    ; $57fe: $6e
    ld h, e                                       ; $57ff: $63
    ld h, l                                       ; $5800: $65
    ld l, $03                                     ; $5801: $2e $03
    nop                                           ; $5803: $00

jr_01f_5804:
    ld c, a                                       ; $5804: $4f
    ld l, [hl]                                    ; $5805: $6e
    jr nz, jr_01f_587c                            ; $5806: $20 $74

    ld l, b                                       ; $5808: $68

jr_01f_5809:
    ld h, l                                       ; $5809: $65
    ld [hl], e                                    ; $580a: $73
    ld h, l                                       ; $580b: $65
    jr nz, jr_01f_5876                            ; $580c: $20 $68

    ld h, c                                       ; $580e: $61
    ld a, d                                       ; $580f: $7a

jr_01f_5810:
    ld h, c                                       ; $5810: $61
    ld [hl], d                                    ; $5811: $72
    ld h, h                                       ; $5812: $64
    ld [hl], e                                    ; $5813: $73
    inc l                                         ; $5814: $2c

jr_01f_5815:
    ld bc, $6f79                                  ; $5815: $01 $79 $6f
    ld [hl], l                                    ; $5818: $75
    jr nz, jr_01f_587e                            ; $5819: $20 $63

    ld h, c                                       ; $581b: $61

jr_01f_581c:
    ld l, [hl]                                    ; $581c: $6e
    jr nz, jr_01f_5883                            ; $581d: $20 $64

    ld [hl], d                                    ; $581f: $72

jr_01f_5820:
    ld l, a                                       ; $5820: $6f
    ld [hl], b                                    ; $5821: $70
    jr nz, @+$7b                                  ; $5822: $20 $79

    ld l, a                                       ; $5824: $6f
    ld [hl], l                                    ; $5825: $75
    ld [hl], d                                    ; $5826: $72
    ld bc, $6162                                  ; $5827: $01 $62 $61
    ld l, h                                       ; $582a: $6c
    ld l, h                                       ; $582b: $6c
    jr nz, @+$34                                  ; $582c: $20 $32

jr_01f_582e:
    jr nz, jr_01f_5893                            ; $582e: $20 $63

    ld l, h                                       ; $5830: $6c
    ld [hl], l                                    ; $5831: $75
    ld h, d                                       ; $5832: $62
    dec l                                         ; $5833: $2d
    ld l, h                                       ; $5834: $6c
    ld h, l                                       ; $5835: $65
    ld l, [hl]                                    ; $5836: $6e

jr_01f_5837:
    ld h, a                                       ; $5837: $67
    ld [hl], h                                    ; $5838: $74
    ld l, b                                       ; $5839: $68
    ld [hl], e                                    ; $583a: $73
    ld [bc], a                                    ; $583b: $02
    ld h, [hl]                                    ; $583c: $66
    ld [hl], d                                    ; $583d: $72

jr_01f_583e:
    ld l, a                                       ; $583e: $6f
    ld l, l                                       ; $583f: $6d
    jr nz, jr_01f_58b9                            ; $5840: $20 $77

    ld l, b                                       ; $5842: $68
    ld h, l                                       ; $5843: $65

jr_01f_5844:
    ld [hl], d                                    ; $5844: $72
    ld h, l                                       ; $5845: $65
    jr nz, jr_01f_58b1                            ; $5846: $20 $69

    ld [hl], h                                    ; $5848: $74
    ld bc, $7264                                  ; $5849: $01 $64 $72
    ld l, a                                       ; $584c: $6f
    ld [hl], b                                    ; $584d: $70
    ld [hl], b                                    ; $584e: $70
    ld h, l                                       ; $584f: $65

jr_01f_5850:
    ld h, h                                       ; $5850: $64
    ld l, $20                                     ; $5851: $2e $20
    ld b, c                                       ; $5853: $41
    ld l, h                                       ; $5854: $6c
    ld l, h                                       ; $5855: $6c
    jr nz, jr_01f_58c7                            ; $5856: $20 $6f

    ld h, [hl]                                    ; $5858: $66
    ld bc, $614d                                  ; $5859: $01 $4d $61
    ld [hl], d                                    ; $585c: $72
    ld l, c                                       ; $585d: $69

jr_01f_585e:
    ld l, a                                       ; $585e: $6f

jr_01f_585f:
    jr nz, @+$49                                  ; $585f: $20 $47

    ld l, a                                       ; $5861: $6f
    ld l, h                                       ; $5862: $6c
    ld h, [hl]                                    ; $5863: $66
    daa                                           ; $5864: $27
    ld [hl], e                                    ; $5865: $73
    jr nz, jr_01f_58df                            ; $5866: $20 $77

    ld h, c                                       ; $5868: $61
    ld [hl], h                                    ; $5869: $74
    ld h, l                                       ; $586a: $65
    ld [hl], d                                    ; $586b: $72
    ld [bc], a                                    ; $586c: $02
    ld l, b                                       ; $586d: $68
    ld h, c                                       ; $586e: $61
    ld a, d                                       ; $586f: $7a
    ld h, c                                       ; $5870: $61
    ld [hl], d                                    ; $5871: $72
    ld h, h                                       ; $5872: $64
    ld [hl], e                                    ; $5873: $73
    jr nz, jr_01f_58d7                            ; $5874: $20 $61

jr_01f_5876:
    ld [hl], d                                    ; $5876: $72
    ld h, l                                       ; $5877: $65
    jr nz, jr_01f_58e6                            ; $5878: $20 $6c

    ld h, c                                       ; $587a: $61
    ld [hl], h                                    ; $587b: $74

jr_01f_587c:
    ld h, l                                       ; $587c: $65
    ld [hl], d                                    ; $587d: $72

jr_01f_587e:
    ld h, c                                       ; $587e: $61
    ld l, h                                       ; $587f: $6c
    ld l, $03                                     ; $5880: $2e $03
    nop                                           ; $5882: $00

jr_01f_5883:
    ld c, c                                       ; $5883: $49
    ld [hl], h                                    ; $5884: $74
    daa                                           ; $5885: $27
    ld [hl], e                                    ; $5886: $73
    jr nz, jr_01f_58fd                            ; $5887: $20 $74

    ld l, b                                       ; $5889: $68
    ld h, l                                       ; $588a: $65
    jr nz, @+$65                                  ; $588b: $20 $63

    ld l, a                                       ; $588d: $6f
    ld l, [hl]                                    ; $588e: $6e
    ld h, h                                       ; $588f: $64
    ld l, c                                       ; $5890: $69
    ld [hl], h                                    ; $5891: $74
    ld l, c                                       ; $5892: $69

jr_01f_5893:
    ld l, a                                       ; $5893: $6f
    ld l, [hl]                                    ; $5894: $6e
    jr nz, jr_01f_5906                            ; $5895: $20 $6f

    ld h, [hl]                                    ; $5897: $66
    ld bc, $6874                                  ; $5898: $01 $74 $68
    ld h, l                                       ; $589b: $65
    jr nz, jr_01f_5911                            ; $589c: $20 $73

    ld [hl], b                                    ; $589e: $70
    ld l, a                                       ; $589f: $6f
    ld [hl], h                                    ; $58a0: $74
    jr nz, jr_01f_591a                            ; $58a1: $20 $77

    ld l, b                                       ; $58a3: $68
    ld h, l                                       ; $58a4: $65
    ld [hl], d                                    ; $58a5: $72
    ld h, l                                       ; $58a6: $65
    jr nz, @+$7b                                  ; $58a7: $20 $79

    ld l, a                                       ; $58a9: $6f
    ld [hl], l                                    ; $58aa: $75
    ld [hl], d                                    ; $58ab: $72
    ld bc, $6162                                  ; $58ac: $01 $62 $61
    ld l, h                                       ; $58af: $6c
    ld l, h                                       ; $58b0: $6c

jr_01f_58b1:
    jr nz, jr_01f_591f                            ; $58b1: $20 $6c

    ld h, c                                       ; $58b3: $61
    ld l, [hl]                                    ; $58b4: $6e
    ld h, h                                       ; $58b5: $64
    ld [hl], e                                    ; $58b6: $73
    ld l, $20                                     ; $58b7: $2e $20

jr_01f_58b9:
    ld c, h                                       ; $58b9: $4c
    ld [hl], l                                    ; $58ba: $75
    ld h, e                                       ; $58bb: $63
    ld l, e                                       ; $58bc: $6b
    jr nz, jr_01f_5927                            ; $58bd: $20 $68

    ld h, c                                       ; $58bf: $61
    ld [hl], e                                    ; $58c0: $73
    ld [bc], a                                    ; $58c1: $02
    ld h, c                                       ; $58c2: $61
    jr nz, @+$6e                                  ; $58c3: $20 $6c

    ld l, a                                       ; $58c5: $6f
    ld [hl], h                                    ; $58c6: $74

jr_01f_58c7:
    jr nz, jr_01f_593d                            ; $58c7: $20 $74

    ld l, a                                       ; $58c9: $6f
    jr nz, jr_01f_5930                            ; $58ca: $20 $64

    ld l, a                                       ; $58cc: $6f
    jr nz, jr_01f_5946                            ; $58cd: $20 $77

    ld l, c                                       ; $58cf: $69
    ld [hl], h                                    ; $58d0: $74
    ld l, b                                       ; $58d1: $68
    jr nz, jr_01f_5935                            ; $58d2: $20 $61

    ld bc, $6f67                                  ; $58d4: $01 $67 $6f

jr_01f_58d7:
    ld l, a                                       ; $58d7: $6f
    ld h, h                                       ; $58d8: $64
    jr nz, jr_01f_5947                            ; $58d9: $20 $6c

    ld l, c                                       ; $58db: $69
    ld h, l                                       ; $58dc: $65
    ld l, $03                                     ; $58dd: $2e $03

jr_01f_58df:
    nop                                           ; $58df: $00
    ld d, h                                       ; $58e0: $54
    ld l, b                                       ; $58e1: $68
    ld h, l                                       ; $58e2: $65
    jr nz, jr_01f_5955                            ; $58e3: $20 $70

    ld h, c                                       ; $58e5: $61

jr_01f_58e6:
    ld [hl], h                                    ; $58e6: $74
    ld l, b                                       ; $58e7: $68
    jr nz, jr_01f_5959                            ; $58e8: $20 $6f

    ld h, [hl]                                    ; $58ea: $66
    jr nz, @+$76                                  ; $58eb: $20 $74

    ld l, b                                       ; $58ed: $68
    ld h, l                                       ; $58ee: $65
    ld bc, $6162                                  ; $58ef: $01 $62 $61
    ld l, h                                       ; $58f2: $6c
    ld l, h                                       ; $58f3: $6c
    inc l                                         ; $58f4: $2c
    jr nz, @+$77                                  ; $58f5: $20 $75

    ld [hl], e                                    ; $58f7: $73
    ld h, l                                       ; $58f8: $65
    ld h, h                                       ; $58f9: $64
    jr nz, jr_01f_5969                            ; $58fa: $20 $6d

    ld l, a                                       ; $58fc: $6f

jr_01f_58fd:
    ld [hl], e                                    ; $58fd: $73
    ld [hl], h                                    ; $58fe: $74
    ld l, h                                       ; $58ff: $6c
    ld a, c                                       ; $5900: $79
    ld bc, $6e69                                  ; $5901: $01 $69 $6e
    jr nz, jr_01f_5978                            ; $5904: $20 $72

jr_01f_5906:
    ld h, l                                       ; $5906: $65
    ld h, [hl]                                    ; $5907: $66
    ld h, l                                       ; $5908: $65
    ld [hl], d                                    ; $5909: $72
    ld h, l                                       ; $590a: $65
    ld l, [hl]                                    ; $590b: $6e
    ld h, e                                       ; $590c: $63
    ld h, l                                       ; $590d: $65
    jr nz, jr_01f_5984                            ; $590e: $20 $74

    ld l, a                                       ; $5910: $6f

jr_01f_5911:
    ld [bc], a                                    ; $5911: $02
    ld [hl], b                                    ; $5912: $70
    ld [hl], l                                    ; $5913: $75
    ld [hl], h                                    ; $5914: $74
    ld [hl], h                                    ; $5915: $74
    ld l, c                                       ; $5916: $69
    ld l, [hl]                                    ; $5917: $6e
    ld h, a                                       ; $5918: $67
    inc l                                         ; $5919: $2c

jr_01f_591a:
    jr nz, @+$63                                  ; $591a: $20 $61

    ld [hl], e                                    ; $591c: $73
    jr nz, @+$6b                                  ; $591d: $20 $69

jr_01f_591f:
    ld l, [hl]                                    ; $591f: $6e
    inc l                                         ; $5920: $2c
    ld bc, $4922                                  ; $5921: $01 $22 $49
    jr nz, jr_01f_5989                            ; $5924: $20 $63

    ld h, c                                       ; $5926: $61

jr_01f_5927:
    ld l, [hl]                                    ; $5927: $6e
    jr nz, jr_01f_599d                            ; $5928: $20 $73

    ld h, l                                       ; $592a: $65
    ld h, l                                       ; $592b: $65
    jr nz, jr_01f_59a2                            ; $592c: $20 $74

    ld l, b                                       ; $592e: $68
    ld h, l                                       ; $592f: $65

jr_01f_5930:
    ld bc, $696c                                  ; $5930: $01 $6c $69
    ld l, [hl]                                    ; $5933: $6e
    ld h, l                                       ; $5934: $65

jr_01f_5935:
    ld hl, $0322                                  ; $5935: $21 $22 $03
    nop                                           ; $5938: $00
    ld b, c                                       ; $5939: $41
    jr nz, jr_01f_59af                            ; $593a: $20 $73

    ld h, l                                       ; $593c: $65

jr_01f_593d:
    ld h, c                                       ; $593d: $61
    ld [hl], e                                    ; $593e: $73
    ld l, c                                       ; $593f: $69
    ld h, h                                       ; $5940: $64
    ld h, l                                       ; $5941: $65
    jr nz, jr_01f_59a7                            ; $5942: $20 $63

    ld l, a                                       ; $5944: $6f
    ld [hl], l                                    ; $5945: $75

jr_01f_5946:
    ld [hl], d                                    ; $5946: $72

jr_01f_5947:
    ld [hl], e                                    ; $5947: $73
    ld h, l                                       ; $5948: $65
    ld l, $01                                     ; $5949: $2e $01
    ld b, c                                       ; $594b: $41
    ld l, h                                       ; $594c: $6c
    ld [hl], e                                    ; $594d: $73
    ld l, a                                       ; $594e: $6f
    jr nz, jr_01f_59c4                            ; $594f: $20 $73

    ld l, h                                       ; $5951: $6c
    ld h, c                                       ; $5952: $61
    ld l, [hl]                                    ; $5953: $6e
    ld h, a                                       ; $5954: $67

jr_01f_5955:
    jr nz, jr_01f_59bd                            ; $5955: $20 $66

    ld l, a                                       ; $5957: $6f
    ld [hl], d                                    ; $5958: $72

jr_01f_5959:
    jr nz, jr_01f_59bc                            ; $5959: $20 $61

    ld bc, $6f67                                  ; $595b: $01 $67 $6f
    ld l, h                                       ; $595e: $6c
    ld h, [hl]                                    ; $595f: $66
    jr nz, @+$65                                  ; $5960: $20 $63

    ld l, a                                       ; $5962: $6f
    ld [hl], l                                    ; $5963: $75
    ld [hl], d                                    ; $5964: $72
    ld [hl], e                                    ; $5965: $73
    ld h, l                                       ; $5966: $65
    ld l, $03                                     ; $5967: $2e $03

jr_01f_5969:
    nop                                           ; $5969: $00
    ld b, c                                       ; $596a: $41
    jr nz, jr_01f_59e0                            ; $596b: $20 $73

    ld l, b                                       ; $596d: $68
    ld l, a                                       ; $596e: $6f
    ld [hl], h                                    ; $596f: $74
    jr nz, jr_01f_59e6                            ; $5970: $20 $74

    ld l, b                                       ; $5972: $68
    ld h, c                                       ; $5973: $61
    ld [hl], h                                    ; $5974: $74
    jr nz, @+$75                                  ; $5975: $20 $73

    ld l, h                                       ; $5977: $6c

jr_01f_5978:
    ld l, a                                       ; $5978: $6f
    ld [hl], a                                    ; $5979: $77
    ld l, h                                       ; $597a: $6c
    ld a, c                                       ; $597b: $79
    ld bc, $6c66                                  ; $597c: $01 $66 $6c
    ld l, c                                       ; $597f: $69
    ld h, l                                       ; $5980: $65
    ld [hl], e                                    ; $5981: $73
    jr nz, jr_01f_59ec                            ; $5982: $20 $68

jr_01f_5984:
    ld l, c                                       ; $5984: $69
    ld h, a                                       ; $5985: $67
    ld l, b                                       ; $5986: $68
    jr nz, jr_01f_59f2                            ; $5987: $20 $69

jr_01f_5989:
    ld l, [hl]                                    ; $5989: $6e
    ld [hl], h                                    ; $598a: $74
    ld l, a                                       ; $598b: $6f
    jr nz, @+$76                                  ; $598c: $20 $74

    ld l, b                                       ; $598e: $68
    ld h, l                                       ; $598f: $65
    ld bc, $6961                                  ; $5990: $01 $61 $69
    ld [hl], d                                    ; $5993: $72
    ld l, $20                                     ; $5994: $2e $20
    ld c, c                                       ; $5996: $49
    ld [hl], h                                    ; $5997: $74
    daa                                           ; $5998: $27
    ld [hl], e                                    ; $5999: $73
    jr nz, jr_01f_59fd                            ; $599a: $20 $61

    ld l, [hl]                                    ; $599c: $6e

jr_01f_599d:
    jr nz, jr_01f_5a00                            ; $599d: $20 $61

    ld h, h                                       ; $599f: $64
    halt                                          ; $59a0: $76
    ld h, c                                       ; $59a1: $61

jr_01f_59a2:
    ld l, [hl]                                    ; $59a2: $6e
    ld h, e                                       ; $59a3: $63
    ld h, l                                       ; $59a4: $65
    ld h, h                                       ; $59a5: $64
    ld [bc], a                                    ; $59a6: $02

jr_01f_59a7:
    ld [hl], h                                    ; $59a7: $74
    ld h, l                                       ; $59a8: $65
    ld h, e                                       ; $59a9: $63
    ld l, b                                       ; $59aa: $68
    ld l, [hl]                                    ; $59ab: $6e
    ld l, c                                       ; $59ac: $69
    ld [hl], c                                    ; $59ad: $71
    ld [hl], l                                    ; $59ae: $75

jr_01f_59af:
    ld h, l                                       ; $59af: $65
    inc l                                         ; $59b0: $2c
    jr nz, @+$64                                  ; $59b1: $20 $62

    ld [hl], l                                    ; $59b3: $75
    ld [hl], h                                    ; $59b4: $74
    jr nz, @+$63                                  ; $59b5: $20 $61

    ld bc, $696d                                  ; $59b7: $01 $6d $69
    ld [hl], e                                    ; $59ba: $73
    dec l                                         ; $59bb: $2d

jr_01f_59bc:
    ld [hl], e                                    ; $59bc: $73

jr_01f_59bd:
    ld l, b                                       ; $59bd: $68
    ld l, a                                       ; $59be: $6f
    ld [hl], h                                    ; $59bf: $74
    jr nz, @+$65                                  ; $59c0: $20 $63

    ld h, c                                       ; $59c2: $61
    ld l, [hl]                                    ; $59c3: $6e

jr_01f_59c4:
    jr nz, @+$6a                                  ; $59c4: $20 $68

    ld [hl], l                                    ; $59c6: $75
    ld [hl], d                                    ; $59c7: $72
    ld [hl], h                                    ; $59c8: $74
    ld hl, $0003                                  ; $59c9: $21 $03 $00
    ld c, h                                       ; $59cc: $4c
    ld l, a                                       ; $59cd: $6f
    ld h, [hl]                                    ; $59ce: $66
    ld [hl], h                                    ; $59cf: $74
    jr nz, @+$6b                                  ; $59d0: $20 $69

    ld [hl], e                                    ; $59d2: $73
    jr nz, jr_01f_5a49                            ; $59d3: $20 $74

    ld l, b                                       ; $59d5: $68
    ld h, l                                       ; $59d6: $65
    jr nz, jr_01f_5a3a                            ; $59d7: $20 $61

    ld l, [hl]                                    ; $59d9: $6e
    ld h, a                                       ; $59da: $67
    ld l, h                                       ; $59db: $6c
    ld h, l                                       ; $59dc: $65
    ld bc, $666f                                  ; $59dd: $01 $6f $66

jr_01f_59e0:
    jr nz, jr_01f_5a43                            ; $59e0: $20 $61

    jr nz, jr_01f_5a47                            ; $59e2: $20 $63

    ld l, h                                       ; $59e4: $6c
    ld [hl], l                                    ; $59e5: $75

jr_01f_59e6:
    ld h, d                                       ; $59e6: $62
    daa                                           ; $59e7: $27
    ld [hl], e                                    ; $59e8: $73
    jr nz, jr_01f_5a51                            ; $59e9: $20 $66

    ld h, c                                       ; $59eb: $61

jr_01f_59ec:
    ld h, e                                       ; $59ec: $63
    ld h, l                                       ; $59ed: $65
    ld l, $03                                     ; $59ee: $2e $03
    nop                                           ; $59f0: $00
    ld b, c                                       ; $59f1: $41

jr_01f_59f2:
    ld l, [hl]                                    ; $59f2: $6e
    ld l, a                                       ; $59f3: $6f
    ld [hl], h                                    ; $59f4: $74
    ld l, b                                       ; $59f5: $68
    ld h, l                                       ; $59f6: $65
    ld [hl], d                                    ; $59f7: $72
    jr nz, @+$70                                  ; $59f8: $20 $6e

    ld h, c                                       ; $59fa: $61
    ld l, l                                       ; $59fb: $6d
    ld h, l                                       ; $59fc: $65

jr_01f_59fd:
    jr nz, jr_01f_5a65                            ; $59fd: $20 $66

    ld l, a                                       ; $59ff: $6f

jr_01f_5a00:
    ld [hl], d                                    ; $5a00: $72
    ld bc, $2061                                  ; $5a01: $01 $61 $20
    ld [hl], b                                    ; $5a04: $70
    ld h, c                                       ; $5a05: $61
    ld [hl], d                                    ; $5a06: $72
    jr nz, jr_01f_5a3e                            ; $5a07: $20 $35

    jr nz, @+$6a                                  ; $5a09: $20 $68

    ld l, a                                       ; $5a0b: $6f
    ld l, h                                       ; $5a0c: $6c
    ld h, l                                       ; $5a0d: $65
    ld l, $02                                     ; $5a0e: $2e $02
    ld c, h                                       ; $5a10: $4c
    ld l, a                                       ; $5a11: $6f
    ld l, [hl]                                    ; $5a12: $6e
    ld h, a                                       ; $5a13: $67
    jr nz, jr_01f_5a7f                            ; $5a14: $20 $69

    ld [hl], e                                    ; $5a16: $73
    jr nz, @+$63                                  ; $5a17: $20 $61

    ld l, h                                       ; $5a19: $6c
    ld [hl], e                                    ; $5a1a: $73
    ld l, a                                       ; $5a1b: $6f
    jr nz, jr_01f_5a93                            ; $5a1c: $20 $75

    ld [hl], e                                    ; $5a1e: $73
    ld h, l                                       ; $5a1f: $65
    ld h, h                                       ; $5a20: $64
    ld bc, $6f74                                  ; $5a21: $01 $74 $6f
    jr nz, @+$66                                  ; $5a24: $20 $64

    ld h, l                                       ; $5a26: $65
    ld [hl], e                                    ; $5a27: $73
    ld h, e                                       ; $5a28: $63
    ld [hl], d                                    ; $5a29: $72
    ld l, c                                       ; $5a2a: $69
    ld h, d                                       ; $5a2b: $62
    ld h, l                                       ; $5a2c: $65
    jr nz, jr_01f_5a90                            ; $5a2d: $20 $61

    jr nz, jr_01f_5a99                            ; $5a2f: $20 $68

    ld l, a                                       ; $5a31: $6f
    ld l, h                                       ; $5a32: $6c
    ld h, l                                       ; $5a33: $65
    inc l                                         ; $5a34: $2c
    ld bc, $696c                                  ; $5a35: $01 $6c $69
    ld l, e                                       ; $5a38: $6b
    ld h, l                                       ; $5a39: $65

jr_01f_5a3a:
    jr nz, jr_01f_5a9d                            ; $5a3a: $20 $61

    jr nz, jr_01f_5aaa                            ; $5a3c: $20 $6c

jr_01f_5a3e:
    ld l, a                                       ; $5a3e: $6f
    ld l, [hl]                                    ; $5a3f: $6e
    ld h, a                                       ; $5a40: $67
    jr nz, jr_01f_5ab3                            ; $5a41: $20 $70

jr_01f_5a43:
    ld h, c                                       ; $5a43: $61
    ld [hl], d                                    ; $5a44: $72
    jr nz, jr_01f_5a7b                            ; $5a45: $20 $34

jr_01f_5a47:
    ld l, $03                                     ; $5a47: $2e $03

jr_01f_5a49:
    nop                                           ; $5a49: $00
    ld d, h                                       ; $5a4a: $54
    ld h, l                                       ; $5a4b: $65
    ld [hl], d                                    ; $5a4c: $72
    ld l, l                                       ; $5a4d: $6d
    jr nz, jr_01f_5ab6                            ; $5a4e: $20 $66

    ld l, a                                       ; $5a50: $6f

jr_01f_5a51:
    ld [hl], d                                    ; $5a51: $72
    jr nz, jr_01f_5ac8                            ; $5a52: $20 $74

    ld l, b                                       ; $5a54: $68
    ld h, l                                       ; $5a55: $65
    jr nz, @+$34                                  ; $5a56: $20 $32

    inc l                                         ; $5a58: $2c
    jr nz, @+$35                                  ; $5a59: $20 $33

    ld bc, $6e61                                  ; $5a5b: $01 $61 $6e
    ld h, h                                       ; $5a5e: $64
    jr nz, jr_01f_5a95                            ; $5a5f: $20 $34

    jr nz, jr_01f_5acc                            ; $5a61: $20 $69

    ld [hl], d                                    ; $5a63: $72
    ld l, a                                       ; $5a64: $6f

jr_01f_5a65:
    ld l, [hl]                                    ; $5a65: $6e
    ld [hl], e                                    ; $5a66: $73
    ld l, $20                                     ; $5a67: $2e $20
    ld d, h                                       ; $5a69: $54
    ld l, b                                       ; $5a6a: $68
    ld h, l                                       ; $5a6b: $65
    ld bc, $6f6c                                  ; $5a6c: $01 $6c $6f
    ld l, [hl]                                    ; $5a6f: $6e
    ld h, a                                       ; $5a70: $67
    inc l                                         ; $5a71: $2c
    jr nz, jr_01f_5ae1                            ; $5a72: $20 $6d

    ld l, c                                       ; $5a74: $69
    ld h, h                                       ; $5a75: $64
    ld h, h                                       ; $5a76: $64
    ld l, h                                       ; $5a77: $6c
    ld h, l                                       ; $5a78: $65
    jr nz, jr_01f_5adc                            ; $5a79: $20 $61

jr_01f_5a7b:
    ld l, [hl]                                    ; $5a7b: $6e
    ld h, h                                       ; $5a7c: $64
    ld [bc], a                                    ; $5a7d: $02
    ld [hl], e                                    ; $5a7e: $73

jr_01f_5a7f:
    ld l, b                                       ; $5a7f: $68
    ld l, a                                       ; $5a80: $6f
    ld [hl], d                                    ; $5a81: $72
    ld [hl], h                                    ; $5a82: $74
    jr nz, @+$6b                                  ; $5a83: $20 $69

    ld [hl], d                                    ; $5a85: $72
    ld l, a                                       ; $5a86: $6f
    ld l, [hl]                                    ; $5a87: $6e
    ld [hl], e                                    ; $5a88: $73
    jr nz, jr_01f_5aec                            ; $5a89: $20 $61

    ld [hl], d                                    ; $5a8b: $72
    ld h, l                                       ; $5a8c: $65
    ld bc, $616e                                  ; $5a8d: $01 $6e $61

jr_01f_5a90:
    ld l, l                                       ; $5a90: $6d
    ld h, l                                       ; $5a91: $65
    ld h, h                                       ; $5a92: $64

jr_01f_5a93:
    jr nz, jr_01f_5afb                            ; $5a93: $20 $66

jr_01f_5a95:
    ld l, a                                       ; $5a95: $6f
    ld [hl], d                                    ; $5a96: $72
    jr nz, jr_01f_5b0d                            ; $5a97: $20 $74

jr_01f_5a99:
    ld l, b                                       ; $5a99: $68
    ld h, l                                       ; $5a9a: $65
    ld l, c                                       ; $5a9b: $69
    ld [hl], d                                    ; $5a9c: $72

jr_01f_5a9d:
    ld bc, $7264                                  ; $5a9d: $01 $64 $72
    ld l, c                                       ; $5aa0: $69
    halt                                          ; $5aa1: $76
    ld h, l                                       ; $5aa2: $65
    jr nz, jr_01f_5b09                            ; $5aa3: $20 $64

    ld l, c                                       ; $5aa5: $69
    ld [hl], e                                    ; $5aa6: $73
    ld [hl], h                                    ; $5aa7: $74
    ld h, c                                       ; $5aa8: $61
    ld l, [hl]                                    ; $5aa9: $6e

jr_01f_5aaa:
    ld h, e                                       ; $5aaa: $63
    ld h, l                                       ; $5aab: $65
    ld [hl], e                                    ; $5aac: $73
    ld l, $03                                     ; $5aad: $2e $03
    nop                                           ; $5aaf: $00
    ld b, c                                       ; $5ab0: $41
    jr nz, jr_01f_5b1f                            ; $5ab1: $20 $6c

jr_01f_5ab3:
    ld l, a                                       ; $5ab3: $6f
    ld [hl], e                                    ; $5ab4: $73
    ld [hl], h                                    ; $5ab5: $74

jr_01f_5ab6:
    jr nz, @+$64                                  ; $5ab6: $20 $62

    ld h, c                                       ; $5ab8: $61
    ld l, h                                       ; $5ab9: $6c
    ld l, h                                       ; $5aba: $6c
    jr nz, jr_01f_5b26                            ; $5abb: $20 $69

    ld [hl], e                                    ; $5abd: $73
    jr nz, jr_01f_5b21                            ; $5abe: $20 $61

    ld bc, $6162                                  ; $5ac0: $01 $62 $61
    ld l, h                                       ; $5ac3: $6c
    ld l, h                                       ; $5ac4: $6c
    jr nz, jr_01f_5b3b                            ; $5ac5: $20 $74

    ld l, b                                       ; $5ac7: $68

jr_01f_5ac8:
    ld h, c                                       ; $5ac8: $61
    ld [hl], h                                    ; $5ac9: $74
    jr nz, jr_01f_5b2f                            ; $5aca: $20 $63

jr_01f_5acc:
    ld h, c                                       ; $5acc: $61
    ld l, [hl]                                    ; $5acd: $6e
    daa                                           ; $5ace: $27
    ld [hl], h                                    ; $5acf: $74
    ld bc, $6562                                  ; $5ad0: $01 $62 $65
    jr nz, jr_01f_5b3b                            ; $5ad3: $20 $66

    ld l, a                                       ; $5ad5: $6f
    ld [hl], l                                    ; $5ad6: $75
    ld l, [hl]                                    ; $5ad7: $6e
    ld h, h                                       ; $5ad8: $64
    ld hl, $4920                                  ; $5ad9: $21 $20 $49

jr_01f_5adc:
    ld l, [hl]                                    ; $5adc: $6e
    ld [bc], a                                    ; $5add: $02
    ld c, l                                       ; $5ade: $4d
    ld h, c                                       ; $5adf: $61
    ld [hl], d                                    ; $5ae0: $72

jr_01f_5ae1:
    ld l, c                                       ; $5ae1: $69
    ld l, a                                       ; $5ae2: $6f
    jr nz, jr_01f_5b2c                            ; $5ae3: $20 $47

    ld l, a                                       ; $5ae5: $6f
    ld l, h                                       ; $5ae6: $6c
    ld h, [hl]                                    ; $5ae7: $66
    inc l                                         ; $5ae8: $2c
    jr nz, jr_01f_5b64                            ; $5ae9: $20 $79

    ld l, a                                       ; $5aeb: $6f

jr_01f_5aec:
    ld [hl], l                                    ; $5aec: $75
    ld bc, $6163                                  ; $5aed: $01 $63 $61
    ld l, [hl]                                    ; $5af0: $6e
    jr nz, jr_01f_5b54                            ; $5af1: $20 $61

    ld l, h                                       ; $5af3: $6c
    ld [hl], a                                    ; $5af4: $77
    ld h, c                                       ; $5af5: $61
    ld a, c                                       ; $5af6: $79
    ld [hl], e                                    ; $5af7: $73
    jr nz, jr_01f_5b60                            ; $5af8: $20 $66

    ld l, c                                       ; $5afa: $69

jr_01f_5afb:
    ld l, [hl]                                    ; $5afb: $6e
    ld h, h                                       ; $5afc: $64
    ld bc, $6f79                                  ; $5afd: $01 $79 $6f
    ld [hl], l                                    ; $5b00: $75
    ld [hl], d                                    ; $5b01: $72
    jr nz, jr_01f_5b66                            ; $5b02: $20 $62

    ld h, c                                       ; $5b04: $61
    ld l, h                                       ; $5b05: $6c
    ld l, h                                       ; $5b06: $6c
    ld l, $03                                     ; $5b07: $2e $03

jr_01f_5b09:
    nop                                           ; $5b09: $00
    ld d, h                                       ; $5b0a: $54
    ld l, b                                       ; $5b0b: $68
    ld h, l                                       ; $5b0c: $65

jr_01f_5b0d:
    jr nz, @+$71                                  ; $5b0d: $20 $6f

    ld h, d                                       ; $5b0f: $62
    ld l, d                                       ; $5b10: $6a
    ld h, l                                       ; $5b11: $65
    ld h, e                                       ; $5b12: $63
    ld [hl], h                                    ; $5b13: $74
    jr nz, jr_01f_5b8b                            ; $5b14: $20 $75

    ld [hl], e                                    ; $5b16: $73
    ld h, l                                       ; $5b17: $65
    ld h, h                                       ; $5b18: $64
    jr nz, @+$76                                  ; $5b19: $20 $74

    ld l, a                                       ; $5b1b: $6f
    ld bc, $616d                                  ; $5b1c: $01 $6d $61

jr_01f_5b1f:
    ld [hl], d                                    ; $5b1f: $72
    ld l, e                                       ; $5b20: $6b

jr_01f_5b21:
    jr nz, jr_01f_5b85                            ; $5b21: $20 $62

    ld h, c                                       ; $5b23: $61
    ld l, h                                       ; $5b24: $6c
    ld l, h                                       ; $5b25: $6c

jr_01f_5b26:
    jr nz, jr_01f_5b98                            ; $5b26: $20 $70

    ld l, a                                       ; $5b28: $6f
    ld [hl], e                                    ; $5b29: $73
    ld l, c                                       ; $5b2a: $69
    ld [hl], h                                    ; $5b2b: $74

jr_01f_5b2c:
    ld l, c                                       ; $5b2c: $69
    ld l, a                                       ; $5b2d: $6f
    ld l, [hl]                                    ; $5b2e: $6e

jr_01f_5b2f:
    ld bc, $6e6f                                  ; $5b2f: $01 $6f $6e
    jr nz, jr_01f_5ba8                            ; $5b32: $20 $74

    ld l, b                                       ; $5b34: $68
    ld h, l                                       ; $5b35: $65
    jr nz, @+$69                                  ; $5b36: $20 $67

    ld [hl], d                                    ; $5b38: $72
    ld h, l                                       ; $5b39: $65
    ld h, l                                       ; $5b3a: $65

jr_01f_5b3b:
    ld l, [hl]                                    ; $5b3b: $6e
    ld l, $20                                     ; $5b3c: $2e $20
    ld b, c                                       ; $5b3e: $41
    ld l, h                                       ; $5b3f: $6c
    ld [hl], e                                    ; $5b40: $73
    ld l, a                                       ; $5b41: $6f
    inc l                                         ; $5b42: $2c
    ld [bc], a                                    ; $5b43: $02
    ld [hl], e                                    ; $5b44: $73
    ld l, a                                       ; $5b45: $6f
    ld l, l                                       ; $5b46: $6d
    ld h, l                                       ; $5b47: $65
    ld l, a                                       ; $5b48: $6f
    ld l, [hl]                                    ; $5b49: $6e
    ld h, l                                       ; $5b4a: $65
    jr nz, jr_01f_5bc4                            ; $5b4b: $20 $77

    ld l, b                                       ; $5b4d: $68
    ld l, a                                       ; $5b4e: $6f
    jr nz, jr_01f_5bb4                            ; $5b4f: $20 $63

    ld l, b                                       ; $5b51: $68
    ld h, l                                       ; $5b52: $65
    ld h, e                                       ; $5b53: $63

jr_01f_5b54:
    ld l, e                                       ; $5b54: $6b
    ld [hl], e                                    ; $5b55: $73
    ld bc, $706f                                  ; $5b56: $01 $6f $70
    ld [hl], b                                    ; $5b59: $70
    ld l, a                                       ; $5b5a: $6f
    ld l, [hl]                                    ; $5b5b: $6e
    ld h, l                                       ; $5b5c: $65
    ld l, [hl]                                    ; $5b5d: $6e
    ld [hl], h                                    ; $5b5e: $74
    ld [hl], e                                    ; $5b5f: $73

jr_01f_5b60:
    daa                                           ; $5b60: $27
    jr nz, jr_01f_5bd6                            ; $5b61: $20 $73

    ld h, e                                       ; $5b63: $63

jr_01f_5b64:
    ld l, a                                       ; $5b64: $6f
    ld [hl], d                                    ; $5b65: $72

jr_01f_5b66:
    ld h, l                                       ; $5b66: $65
    ld [hl], e                                    ; $5b67: $73
    ld bc, $6e69                                  ; $5b68: $01 $69 $6e
    jr nz, jr_01f_5bce                            ; $5b6b: $20 $61

    jr nz, jr_01f_5bd2                            ; $5b6d: $20 $63

    ld l, a                                       ; $5b6f: $6f
    ld l, l                                       ; $5b70: $6d
    ld [hl], b                                    ; $5b71: $70
    ld h, l                                       ; $5b72: $65
    ld [hl], h                                    ; $5b73: $74
    ld l, c                                       ; $5b74: $69
    ld [hl], h                                    ; $5b75: $74
    ld l, c                                       ; $5b76: $69
    ld l, a                                       ; $5b77: $6f
    ld l, [hl]                                    ; $5b78: $6e
    ld l, $03                                     ; $5b79: $2e $03
    nop                                           ; $5b7b: $00
    ld b, c                                       ; $5b7c: $41
    jr nz, jr_01f_5be2                            ; $5b7d: $20 $63

    ld l, a                                       ; $5b7f: $6f
    ld l, l                                       ; $5b80: $6d
    ld [hl], b                                    ; $5b81: $70
    ld h, l                                       ; $5b82: $65
    ld [hl], h                                    ; $5b83: $74
    ld l, c                                       ; $5b84: $69

jr_01f_5b85:
    ld [hl], h                                    ; $5b85: $74
    ld l, c                                       ; $5b86: $69
    ld l, a                                       ; $5b87: $6f
    ld l, [hl]                                    ; $5b88: $6e
    jr nz, jr_01f_5bed                            ; $5b89: $20 $62

jr_01f_5b8b:
    ld h, l                                       ; $5b8b: $65
    dec l                                         ; $5b8c: $2d
    ld bc, $7774                                  ; $5b8d: $01 $74 $77
    ld h, l                                       ; $5b90: $65
    ld h, l                                       ; $5b91: $65
    ld l, [hl]                                    ; $5b92: $6e
    jr nz, jr_01f_5bc7                            ; $5b93: $20 $32

    jr nz, jr_01f_5c07                            ; $5b95: $20 $70

    ld l, h                                       ; $5b97: $6c

jr_01f_5b98:
    ld h, c                                       ; $5b98: $61
    ld a, c                                       ; $5b99: $79
    ld h, l                                       ; $5b9a: $65
    ld [hl], d                                    ; $5b9b: $72
    ld [hl], e                                    ; $5b9c: $73
    ld bc, $6f74                                  ; $5b9d: $01 $74 $6f
    jr nz, jr_01f_5c15                            ; $5ba0: $20 $73

    ld h, l                                       ; $5ba2: $65
    ld h, l                                       ; $5ba3: $65
    jr nz, jr_01f_5c1d                            ; $5ba4: $20 $77

    ld l, b                                       ; $5ba6: $68
    ld l, a                                       ; $5ba7: $6f

jr_01f_5ba8:
    jr nz, jr_01f_5c0d                            ; $5ba8: $20 $63

    ld h, c                                       ; $5baa: $61
    ld l, [hl]                                    ; $5bab: $6e
    ld [bc], a                                    ; $5bac: $02
    ld [hl], a                                    ; $5bad: $77
    ld l, c                                       ; $5bae: $69
    ld l, [hl]                                    ; $5baf: $6e
    jr nz, @+$76                                  ; $5bb0: $20 $74

    ld l, b                                       ; $5bb2: $68
    ld h, l                                       ; $5bb3: $65

jr_01f_5bb4:
    jr nz, jr_01f_5c23                            ; $5bb4: $20 $6d

    ld l, a                                       ; $5bb6: $6f
    ld [hl], e                                    ; $5bb7: $73
    ld [hl], h                                    ; $5bb8: $74
    ld bc, $6f68                                  ; $5bb9: $01 $68 $6f
    ld l, h                                       ; $5bbc: $6c
    ld h, l                                       ; $5bbd: $65
    ld [hl], e                                    ; $5bbe: $73
    ld l, $20                                     ; $5bbf: $2e $20
    ld d, h                                       ; $5bc1: $54
    ld l, b                                       ; $5bc2: $68
    ld h, l                                       ; $5bc3: $65

jr_01f_5bc4:
    jr nz, @+$6f                                  ; $5bc4: $20 $6d

    ld h, c                                       ; $5bc6: $61

jr_01f_5bc7:
    ld [hl], h                                    ; $5bc7: $74
    ld h, e                                       ; $5bc8: $63
    ld l, b                                       ; $5bc9: $68
    ld bc, $6e65                                  ; $5bca: $01 $65 $6e
    ld h, h                                       ; $5bcd: $64

jr_01f_5bce:
    ld [hl], e                                    ; $5bce: $73
    jr nz, @+$63                                  ; $5bcf: $20 $61

    ld [hl], e                                    ; $5bd1: $73

jr_01f_5bd2:
    jr nz, jr_01f_5c47                            ; $5bd2: $20 $73

    ld l, a                                       ; $5bd4: $6f
    ld l, a                                       ; $5bd5: $6f

jr_01f_5bd6:
    ld l, [hl]                                    ; $5bd6: $6e
    jr nz, jr_01f_5c3a                            ; $5bd7: $20 $61

    ld [hl], e                                    ; $5bd9: $73
    ld [bc], a                                    ; $5bda: $02
    ld h, c                                       ; $5bdb: $61
    jr nz, jr_01f_5c55                            ; $5bdc: $20 $77

    ld l, c                                       ; $5bde: $69
    ld l, [hl]                                    ; $5bdf: $6e
    ld l, [hl]                                    ; $5be0: $6e
    ld h, l                                       ; $5be1: $65

jr_01f_5be2:
    ld [hl], d                                    ; $5be2: $72
    jr nz, jr_01f_5c4e                            ; $5be3: $20 $69

    ld [hl], e                                    ; $5be5: $73
    jr nz, jr_01f_5c4c                            ; $5be6: $20 $64

    ld h, l                                       ; $5be8: $65
    ld h, e                                       ; $5be9: $63
    ld l, c                                       ; $5bea: $69
    ld h, h                                       ; $5beb: $64
    ld h, l                                       ; $5bec: $65

jr_01f_5bed:
    ld h, h                                       ; $5bed: $64
    inc l                                         ; $5bee: $2c
    ld bc, $7665                                  ; $5bef: $01 $65 $76
    ld h, l                                       ; $5bf2: $65
    ld l, [hl]                                    ; $5bf3: $6e
    jr nz, @+$6b                                  ; $5bf4: $20 $69

    ld h, [hl]                                    ; $5bf6: $66
    jr nz, jr_01f_5c6d                            ; $5bf7: $20 $74

    ld l, b                                       ; $5bf9: $68
    ld h, l                                       ; $5bfa: $65
    ld [hl], d                                    ; $5bfb: $72
    ld h, l                                       ; $5bfc: $65
    jr nz, jr_01f_5c60                            ; $5bfd: $20 $61

    ld [hl], d                                    ; $5bff: $72
    ld h, l                                       ; $5c00: $65
    ld bc, $6e75                                  ; $5c01: $01 $75 $6e
    ld [hl], b                                    ; $5c04: $70
    ld l, h                                       ; $5c05: $6c
    ld h, c                                       ; $5c06: $61

jr_01f_5c07:
    ld a, c                                       ; $5c07: $79
    ld h, l                                       ; $5c08: $65
    ld h, h                                       ; $5c09: $64
    jr nz, jr_01f_5c74                            ; $5c0a: $20 $68

    ld l, a                                       ; $5c0c: $6f

jr_01f_5c0d:
    ld l, h                                       ; $5c0d: $6c
    ld h, l                                       ; $5c0e: $65
    ld [hl], e                                    ; $5c0f: $73
    ld l, $03                                     ; $5c10: $2e $03
    nop                                           ; $5c12: $00
    ld c, h                                       ; $5c13: $4c
    ld l, c                                       ; $5c14: $69

jr_01f_5c15:
    ld l, [hl]                                    ; $5c15: $6e
    ld h, l                                       ; $5c16: $65
    jr nz, jr_01f_5c8e                            ; $5c17: $20 $75

    ld [hl], b                                    ; $5c19: $70
    jr nz, jr_01f_5c90                            ; $5c1a: $20 $74

    ld l, b                                       ; $5c1c: $68

jr_01f_5c1d:
    ld l, c                                       ; $5c1d: $69
    ld [hl], e                                    ; $5c1e: $73
    jr nz, @+$63                                  ; $5c1f: $20 $61

    ld [hl], d                                    ; $5c21: $72
    ld h, l                                       ; $5c22: $65

jr_01f_5c23:
    ld h, c                                       ; $5c23: $61
    ld bc, $6e6f                                  ; $5c24: $01 $6f $6e
    jr nz, jr_01f_5c9d                            ; $5c27: $20 $74

    ld l, b                                       ; $5c29: $68
    ld h, l                                       ; $5c2a: $65
    jr nz, jr_01f_5c9d                            ; $5c2b: $20 $70

    ld l, a                                       ; $5c2d: $6f
    ld [hl], a                                    ; $5c2e: $77
    ld h, l                                       ; $5c2f: $65
    ld [hl], d                                    ; $5c30: $72
    ld bc, $6167                                  ; $5c31: $01 $67 $61
    ld [hl], l                                    ; $5c34: $75
    ld h, a                                       ; $5c35: $67
    ld h, l                                       ; $5c36: $65
    jr nz, jr_01f_5cad                            ; $5c37: $20 $74

    ld l, a                                       ; $5c39: $6f

jr_01f_5c3a:
    jr nz, jr_01f_5ca4                            ; $5c3a: $20 $68

    ld l, c                                       ; $5c3c: $69
    ld [hl], h                                    ; $5c3d: $74
    jr nz, @+$76                                  ; $5c3e: $20 $74

    ld l, b                                       ; $5c40: $68
    ld h, l                                       ; $5c41: $65
    ld [bc], a                                    ; $5c42: $02
    ld h, d                                       ; $5c43: $62
    ld h, c                                       ; $5c44: $61
    ld l, h                                       ; $5c45: $6c
    ld l, h                                       ; $5c46: $6c

jr_01f_5c47:
    jr nz, jr_01f_5cac                            ; $5c47: $20 $63

    ld l, a                                       ; $5c49: $6f
    ld [hl], d                                    ; $5c4a: $72
    ld [hl], d                                    ; $5c4b: $72

jr_01f_5c4c:
    ld h, l                                       ; $5c4c: $65
    ld h, e                                       ; $5c4d: $63

jr_01f_5c4e:
    ld [hl], h                                    ; $5c4e: $74
    ld l, h                                       ; $5c4f: $6c
    ld a, c                                       ; $5c50: $79
    ld l, $01                                     ; $5c51: $2e $01
    ld b, c                                       ; $5c53: $41
    ld l, h                                       ; $5c54: $6c

jr_01f_5c55:
    ld [hl], e                                    ; $5c55: $73
    ld l, a                                       ; $5c56: $6f
    jr nz, @+$65                                  ; $5c57: $20 $63

    ld h, c                                       ; $5c59: $61
    ld l, h                                       ; $5c5a: $6c
    ld l, h                                       ; $5c5b: $6c
    ld h, l                                       ; $5c5c: $65
    ld h, h                                       ; $5c5d: $64
    jr nz, jr_01f_5cd4                            ; $5c5e: $20 $74

jr_01f_5c60:
    ld l, b                                       ; $5c60: $68
    ld h, l                                       ; $5c61: $65
    ld bc, $6968                                  ; $5c62: $01 $68 $69
    ld [hl], h                                    ; $5c65: $74
    ld [hl], h                                    ; $5c66: $74
    ld l, c                                       ; $5c67: $69
    ld l, [hl]                                    ; $5c68: $6e
    ld h, a                                       ; $5c69: $67
    jr nz, jr_01f_5ce6                            ; $5c6a: $20 $7a

    ld l, a                                       ; $5c6c: $6f

jr_01f_5c6d:
    ld l, [hl]                                    ; $5c6d: $6e
    ld h, l                                       ; $5c6e: $65
    ld l, $03                                     ; $5c6f: $2e $03
    nop                                           ; $5c71: $00
    ld d, e                                       ; $5c72: $53
    ld l, a                                       ; $5c73: $6f

jr_01f_5c74:
    ld l, l                                       ; $5c74: $6d
    ld h, l                                       ; $5c75: $65
    ld l, a                                       ; $5c76: $6f
    ld l, [hl]                                    ; $5c77: $6e
    ld h, l                                       ; $5c78: $65
    jr nz, jr_01f_5cf2                            ; $5c79: $20 $77

    ld l, b                                       ; $5c7b: $68
    ld l, a                                       ; $5c7c: $6f
    jr nz, @+$64                                  ; $5c7d: $20 $62

    ld h, l                                       ; $5c7f: $65
    dec l                                         ; $5c80: $2d
    ld bc, $6f6c                                  ; $5c81: $01 $6c $6f
    ld l, [hl]                                    ; $5c84: $6e
    ld h, a                                       ; $5c85: $67
    ld [hl], e                                    ; $5c86: $73
    jr nz, @+$76                                  ; $5c87: $20 $74

    ld l, a                                       ; $5c89: $6f
    jr nz, jr_01f_5ced                            ; $5c8a: $20 $61

    jr nz, jr_01f_5cf1                            ; $5c8c: $20 $63

jr_01f_5c8e:
    ld l, a                                       ; $5c8e: $6f
    ld [hl], l                                    ; $5c8f: $75

jr_01f_5c90:
    ld l, [hl]                                    ; $5c90: $6e
    dec l                                         ; $5c91: $2d
    ld bc, $7274                                  ; $5c92: $01 $74 $72
    ld a, c                                       ; $5c95: $79
    jr nz, jr_01f_5cfb                            ; $5c96: $20 $63

    ld l, h                                       ; $5c98: $6c
    ld [hl], l                                    ; $5c99: $75
    ld h, d                                       ; $5c9a: $62
    ld l, $20                                     ; $5c9b: $2e $20

jr_01f_5c9d:
    ld b, c                                       ; $5c9d: $41
    jr nz, jr_01f_5d07                            ; $5c9e: $20 $67

    ld l, a                                       ; $5ca0: $6f
    ld l, a                                       ; $5ca1: $6f
    ld h, h                                       ; $5ca2: $64
    ld [bc], a                                    ; $5ca3: $02

jr_01f_5ca4:
    ld h, e                                       ; $5ca4: $63
    ld l, h                                       ; $5ca5: $6c
    ld [hl], l                                    ; $5ca6: $75
    ld h, d                                       ; $5ca7: $62
    jr nz, jr_01f_5d1e                            ; $5ca8: $20 $74

    ld h, c                                       ; $5caa: $61
    ld l, e                                       ; $5cab: $6b

jr_01f_5cac:
    ld h, l                                       ; $5cac: $65

jr_01f_5cad:
    ld [hl], e                                    ; $5cad: $73
    jr nz, jr_01f_5d17                            ; $5cae: $20 $67

    ld l, a                                       ; $5cb0: $6f
    ld l, a                                       ; $5cb1: $6f
    ld h, h                                       ; $5cb2: $64
    ld bc, $6163                                  ; $5cb3: $01 $63 $61
    ld [hl], d                                    ; $5cb6: $72
    ld h, l                                       ; $5cb7: $65
    jr nz, @+$71                                  ; $5cb8: $20 $6f

    ld h, [hl]                                    ; $5cba: $66
    jr nz, @+$6b                                  ; $5cbb: $20 $69

    ld [hl], h                                    ; $5cbd: $74
    ld [hl], e                                    ; $5cbe: $73
    jr nz, jr_01f_5d2e                            ; $5cbf: $20 $6d

    ld h, l                                       ; $5cc1: $65
    ld l, l                                       ; $5cc2: $6d
    ld h, d                                       ; $5cc3: $62
    ld h, l                                       ; $5cc4: $65
    ld [hl], d                                    ; $5cc5: $72
    ld [hl], e                                    ; $5cc6: $73
    ld l, $03                                     ; $5cc7: $2e $03
    nop                                           ; $5cc9: $00
    ld b, c                                       ; $5cca: $41
    ld l, [hl]                                    ; $5ccb: $6e
    ld l, a                                       ; $5ccc: $6f
    ld [hl], h                                    ; $5ccd: $74
    ld l, b                                       ; $5cce: $68
    ld h, l                                       ; $5ccf: $65
    ld [hl], d                                    ; $5cd0: $72
    jr nz, jr_01f_5d41                            ; $5cd1: $20 $6e

    ld h, c                                       ; $5cd3: $61

jr_01f_5cd4:
    ld l, l                                       ; $5cd4: $6d
    ld h, l                                       ; $5cd5: $65
    jr nz, jr_01f_5d3e                            ; $5cd6: $20 $66

    ld l, a                                       ; $5cd8: $6f
    ld [hl], d                                    ; $5cd9: $72
    ld bc, $2061                                  ; $5cda: $01 $61 $20
    ld [hl], b                                    ; $5cdd: $70
    ld h, c                                       ; $5cde: $61
    ld [hl], d                                    ; $5cdf: $72
    jr nz, jr_01f_5d16                            ; $5ce0: $20 $34

    jr nz, @+$6a                                  ; $5ce2: $20 $68

    ld l, a                                       ; $5ce4: $6f
    ld l, h                                       ; $5ce5: $6c

jr_01f_5ce6:
    ld h, l                                       ; $5ce6: $65
    ld l, $03                                     ; $5ce7: $2e $03
    nop                                           ; $5ce9: $00
    ld d, h                                       ; $5cea: $54
    ld h, l                                       ; $5ceb: $65
    ld [hl], d                                    ; $5cec: $72

jr_01f_5ced:
    ld l, l                                       ; $5ced: $6d
    jr nz, jr_01f_5d56                            ; $5cee: $20 $66

    ld l, a                                       ; $5cf0: $6f

jr_01f_5cf1:
    ld [hl], d                                    ; $5cf1: $72

jr_01f_5cf2:
    jr nz, jr_01f_5d68                            ; $5cf2: $20 $74

    ld l, b                                       ; $5cf4: $68
    ld h, l                                       ; $5cf5: $65
    jr nz, jr_01f_5d2d                            ; $5cf6: $20 $35

    inc l                                         ; $5cf8: $2c
    jr nz, jr_01f_5d31                            ; $5cf9: $20 $36

jr_01f_5cfb:
    ld bc, $6e61                                  ; $5cfb: $01 $61 $6e
    ld h, h                                       ; $5cfe: $64
    jr nz, jr_01f_5d38                            ; $5cff: $20 $37

    jr nz, @+$6b                                  ; $5d01: $20 $69

    ld [hl], d                                    ; $5d03: $72
    ld l, a                                       ; $5d04: $6f
    ld l, [hl]                                    ; $5d05: $6e
    ld [hl], e                                    ; $5d06: $73

jr_01f_5d07:
    ld l, $20                                     ; $5d07: $2e $20
    ld d, h                                       ; $5d09: $54
    ld l, b                                       ; $5d0a: $68
    ld h, l                                       ; $5d0b: $65
    ld a, c                                       ; $5d0c: $79
    ld bc, $7261                                  ; $5d0d: $01 $61 $72
    ld h, l                                       ; $5d10: $65
    jr nz, jr_01f_5d76                            ; $5d11: $20 $63

    ld h, c                                       ; $5d13: $61
    ld l, h                                       ; $5d14: $6c
    ld l, h                                       ; $5d15: $6c

jr_01f_5d16:
    ld h, l                                       ; $5d16: $65

jr_01f_5d17:
    ld h, h                                       ; $5d17: $64
    jr nz, @+$76                                  ; $5d18: $20 $74

    ld l, b                                       ; $5d1a: $68
    ld l, c                                       ; $5d1b: $69
    ld [hl], e                                    ; $5d1c: $73
    ld [bc], a                                    ; $5d1d: $02

jr_01f_5d1e:
    ld h, d                                       ; $5d1e: $62
    ld h, l                                       ; $5d1f: $65
    ld h, e                                       ; $5d20: $63
    ld h, c                                       ; $5d21: $61
    ld [hl], l                                    ; $5d22: $75
    ld [hl], e                                    ; $5d23: $73
    ld h, l                                       ; $5d24: $65
    jr nz, jr_01f_5d96                            ; $5d25: $20 $6f

    ld h, [hl]                                    ; $5d27: $66
    jr nz, jr_01f_5d9e                            ; $5d28: $20 $74

    ld l, b                                       ; $5d2a: $68
    ld h, l                                       ; $5d2b: $65
    ld l, c                                       ; $5d2c: $69

jr_01f_5d2d:
    ld [hl], d                                    ; $5d2d: $72

jr_01f_5d2e:
    ld bc, $696d                                  ; $5d2e: $01 $6d $69

jr_01f_5d31:
    ld h, h                                       ; $5d31: $64
    ld h, h                                       ; $5d32: $64
    ld l, h                                       ; $5d33: $6c
    ld h, l                                       ; $5d34: $65
    dec l                                         ; $5d35: $2d
    ld [hl], d                                    ; $5d36: $72
    ld h, c                                       ; $5d37: $61

jr_01f_5d38:
    ld l, [hl]                                    ; $5d38: $6e
    ld h, a                                       ; $5d39: $67
    ld h, l                                       ; $5d3a: $65
    ld bc, $7264                                  ; $5d3b: $01 $64 $72

jr_01f_5d3e:
    ld l, c                                       ; $5d3e: $69
    halt                                          ; $5d3f: $76
    ld h, l                                       ; $5d40: $65

jr_01f_5d41:
    jr nz, jr_01f_5da7                            ; $5d41: $20 $64

    ld l, c                                       ; $5d43: $69
    ld [hl], e                                    ; $5d44: $73
    ld [hl], h                                    ; $5d45: $74
    ld h, c                                       ; $5d46: $61
    ld l, [hl]                                    ; $5d47: $6e
    ld h, e                                       ; $5d48: $63
    ld h, l                                       ; $5d49: $65
    ld [hl], e                                    ; $5d4a: $73
    ld l, $03                                     ; $5d4b: $2e $03
    nop                                           ; $5d4d: $00
    ld d, h                                       ; $5d4e: $54
    ld l, a                                       ; $5d4f: $6f
    jr nz, @+$6a                                  ; $5d50: $20 $68

    ld l, c                                       ; $5d52: $69
    ld [hl], h                                    ; $5d53: $74
    jr nz, jr_01f_5dca                            ; $5d54: $20 $74

jr_01f_5d56:
    ld l, b                                       ; $5d56: $68
    ld h, l                                       ; $5d57: $65
    jr nz, jr_01f_5dbc                            ; $5d58: $20 $62

    ld h, c                                       ; $5d5a: $61
    ld l, h                                       ; $5d5b: $6c
    ld l, h                                       ; $5d5c: $6c
    ld bc, $6f73                                  ; $5d5d: $01 $73 $6f
    jr nz, @+$6b                                  ; $5d60: $20 $69

    ld [hl], h                                    ; $5d62: $74
    jr nz, jr_01f_5dc9                            ; $5d63: $20 $64

    ld l, a                                       ; $5d65: $6f
    ld h, l                                       ; $5d66: $65
    ld [hl], e                                    ; $5d67: $73

jr_01f_5d68:
    ld l, [hl]                                    ; $5d68: $6e
    daa                                           ; $5d69: $27
    ld [hl], h                                    ; $5d6a: $74
    jr nz, jr_01f_5dd3                            ; $5d6b: $20 $66

    ld l, h                                       ; $5d6d: $6c
    ld a, c                                       ; $5d6e: $79
    ld bc, $7270                                  ; $5d6f: $01 $70 $72
    ld l, a                                       ; $5d72: $6f
    ld [hl], b                                    ; $5d73: $70
    ld h, l                                       ; $5d74: $65
    ld [hl], d                                    ; $5d75: $72

jr_01f_5d76:
    ld l, h                                       ; $5d76: $6c
    ld a, c                                       ; $5d77: $79
    ld l, $03                                     ; $5d78: $2e $03
    nop                                           ; $5d7a: $00
    ld b, c                                       ; $5d7b: $41
    jr nz, jr_01f_5dee                            ; $5d7c: $20 $70

    ld l, h                                       ; $5d7e: $6c
    ld h, c                                       ; $5d7f: $61
    ld h, e                                       ; $5d80: $63
    ld h, l                                       ; $5d81: $65
    jr nz, jr_01f_5dfb                            ; $5d82: $20 $77

    ld l, b                                       ; $5d84: $68
    ld h, l                                       ; $5d85: $65
    ld [hl], d                                    ; $5d86: $72
    ld h, l                                       ; $5d87: $65
    jr nz, jr_01f_5dfe                            ; $5d88: $20 $74

    ld l, b                                       ; $5d8a: $68
    ld h, l                                       ; $5d8b: $65
    ld bc, $7267                                  ; $5d8c: $01 $67 $72
    ld l, a                                       ; $5d8f: $6f
    ld [hl], l                                    ; $5d90: $75
    ld l, [hl]                                    ; $5d91: $6e
    ld h, h                                       ; $5d92: $64
    jr nz, jr_01f_5e07                            ; $5d93: $20 $72

    ld l, c                                       ; $5d95: $69

jr_01f_5d96:
    ld [hl], e                                    ; $5d96: $73
    ld h, l                                       ; $5d97: $65
    ld [hl], e                                    ; $5d98: $73
    jr nz, jr_01f_5e07                            ; $5d99: $20 $6c

    ld l, c                                       ; $5d9b: $69
    ld l, e                                       ; $5d9c: $6b
    ld h, l                                       ; $5d9d: $65

jr_01f_5d9e:
    ld bc, $2061                                  ; $5d9e: $01 $61 $20
    ld [hl], h                                    ; $5da1: $74
    ld l, c                                       ; $5da2: $69
    ld l, [hl]                                    ; $5da3: $6e
    ld a, c                                       ; $5da4: $79
    jr nz, jr_01f_5e0f                            ; $5da5: $20 $68

jr_01f_5da7:
    ld l, c                                       ; $5da7: $69
    ld l, h                                       ; $5da8: $6c
    ld l, h                                       ; $5da9: $6c
    ld l, $03                                     ; $5daa: $2e $03
    nop                                           ; $5dac: $00
    ld b, c                                       ; $5dad: $41
    jr nz, @+$35                                  ; $5dae: $20 $33

    dec l                                         ; $5db0: $2d
    ld [hl], b                                    ; $5db1: $70
    ld h, c                                       ; $5db2: $61
    ld [hl], d                                    ; $5db3: $72
    ld [hl], h                                    ; $5db4: $74
    jr nz, jr_01f_5e19                            ; $5db5: $20 $62

    ld h, l                                       ; $5db7: $65
    ld [hl], h                                    ; $5db8: $74
    jr nz, jr_01f_5e2a                            ; $5db9: $20 $6f

    ld l, [hl]                                    ; $5dbb: $6e

jr_01f_5dbc:
    ld bc, $6373                                  ; $5dbc: $01 $73 $63
    ld l, a                                       ; $5dbf: $6f
    ld [hl], d                                    ; $5dc0: $72
    ld h, l                                       ; $5dc1: $65
    ld [hl], e                                    ; $5dc2: $73
    jr nz, @+$71                                  ; $5dc3: $20 $6f

    ld l, [hl]                                    ; $5dc5: $6e
    jr nz, jr_01f_5e3c                            ; $5dc6: $20 $74

    ld l, b                                       ; $5dc8: $68

jr_01f_5dc9:
    ld h, l                                       ; $5dc9: $65

jr_01f_5dca:
    ld bc, $7266                                  ; $5dca: $01 $66 $72
    ld l, a                                       ; $5dcd: $6f
    ld l, [hl]                                    ; $5dce: $6e
    ld [hl], h                                    ; $5dcf: $74
    jr nz, @+$3b                                  ; $5dd0: $20 $39

    inc l                                         ; $5dd2: $2c

jr_01f_5dd3:
    jr nz, jr_01f_5e49                            ; $5dd3: $20 $74

    ld l, b                                       ; $5dd5: $68
    ld h, l                                       ; $5dd6: $65
    ld [bc], a                                    ; $5dd7: $02
    ld h, d                                       ; $5dd8: $62
    ld h, c                                       ; $5dd9: $61
    ld h, e                                       ; $5dda: $63
    ld l, e                                       ; $5ddb: $6b
    jr nz, @+$3b                                  ; $5ddc: $20 $39

    jr nz, jr_01f_5e41                            ; $5dde: $20 $61

    ld l, [hl]                                    ; $5de0: $6e
    ld h, h                                       ; $5de1: $64
    jr nz, jr_01f_5e45                            ; $5de2: $20 $61

    ld l, h                                       ; $5de4: $6c
    ld l, h                                       ; $5de5: $6c
    ld bc, $3831                                  ; $5de6: $01 $31 $38
    jr nz, @+$6a                                  ; $5de9: $20 $68

    ld l, a                                       ; $5deb: $6f
    ld l, h                                       ; $5dec: $6c
    ld h, l                                       ; $5ded: $65

jr_01f_5dee:
    ld [hl], e                                    ; $5dee: $73
    ld l, $03                                     ; $5def: $2e $03
    nop                                           ; $5df1: $00
    ld c, c                                       ; $5df2: $49
    ld [hl], h                                    ; $5df3: $74
    daa                                           ; $5df4: $27
    ld [hl], e                                    ; $5df5: $73
    jr nz, jr_01f_5e6f                            ; $5df6: $20 $77

    ld l, b                                       ; $5df8: $68
    ld h, l                                       ; $5df9: $65
    ld [hl], d                                    ; $5dfa: $72

jr_01f_5dfb:
    ld h, l                                       ; $5dfb: $65
    jr nz, @+$63                                  ; $5dfc: $20 $61

jr_01f_5dfe:
    jr nz, @+$69                                  ; $5dfe: $20 $67

    ld l, a                                       ; $5e00: $6f
    ld l, h                                       ; $5e01: $6c
    ld h, [hl]                                    ; $5e02: $66
    ld bc, $6c63                                  ; $5e03: $01 $63 $6c
    ld [hl], l                                    ; $5e06: $75

jr_01f_5e07:
    ld h, d                                       ; $5e07: $62
    daa                                           ; $5e08: $27
    ld [hl], e                                    ; $5e09: $73
    jr nz, jr_01f_5e74                            ; $5e0a: $20 $68

    ld h, l                                       ; $5e0c: $65
    ld h, c                                       ; $5e0d: $61
    ld h, h                                       ; $5e0e: $64

jr_01f_5e0f:
    jr nz, @+$6f                                  ; $5e0f: $20 $6d

    ld h, l                                       ; $5e11: $65
    ld h, l                                       ; $5e12: $65
    ld [hl], h                                    ; $5e13: $74
    ld [hl], e                                    ; $5e14: $73
    ld bc, $6874                                  ; $5e15: $01 $74 $68
    ld h, l                                       ; $5e18: $65

jr_01f_5e19:
    jr nz, jr_01f_5e8e                            ; $5e19: $20 $73

    ld l, b                                       ; $5e1b: $68
    ld h, c                                       ; $5e1c: $61
    ld h, [hl]                                    ; $5e1d: $66
    ld [hl], h                                    ; $5e1e: $74
    ld l, $03                                     ; $5e1f: $2e $03
    nop                                           ; $5e21: $00
    ld b, c                                       ; $5e22: $41
    jr nz, jr_01f_5e95                            ; $5e23: $20 $70

    ld l, h                                       ; $5e25: $6c
    ld h, c                                       ; $5e26: $61
    ld a, c                                       ; $5e27: $79
    ld h, l                                       ; $5e28: $65
    ld [hl], d                                    ; $5e29: $72

jr_01f_5e2a:
    daa                                           ; $5e2a: $27
    ld [hl], e                                    ; $5e2b: $73
    jr nz, jr_01f_5e95                            ; $5e2c: $20 $67

    ld [hl], d                                    ; $5e2e: $72
    ld l, a                                       ; $5e2f: $6f
    ld [hl], e                                    ; $5e30: $73
    ld [hl], e                                    ; $5e31: $73
    ld bc, $6373                                  ; $5e32: $01 $73 $63
    ld l, a                                       ; $5e35: $6f
    ld [hl], d                                    ; $5e36: $72
    ld h, l                                       ; $5e37: $65
    inc l                                         ; $5e38: $2c
    jr nz, @+$6e                                  ; $5e39: $20 $6c

    ld h, l                                       ; $5e3b: $65

jr_01f_5e3c:
    ld [hl], e                                    ; $5e3c: $73
    ld [hl], e                                    ; $5e3d: $73
    jr nz, jr_01f_5ea8                            ; $5e3e: $20 $68

    ld l, c                                       ; $5e40: $69

jr_01f_5e41:
    ld [hl], e                                    ; $5e41: $73
    ld bc, $726f                                  ; $5e42: $01 $6f $72

jr_01f_5e45:
    jr nz, jr_01f_5eaf                            ; $5e45: $20 $68

    ld h, l                                       ; $5e47: $65
    ld [hl], d                                    ; $5e48: $72

jr_01f_5e49:
    jr nz, @+$6a                                  ; $5e49: $20 $68

    ld h, c                                       ; $5e4b: $61
    ld l, [hl]                                    ; $5e4c: $6e
    ld h, h                                       ; $5e4d: $64
    ld l, c                                       ; $5e4e: $69
    ld h, e                                       ; $5e4f: $63
    ld h, c                                       ; $5e50: $61
    ld [hl], b                                    ; $5e51: $70
    ld l, $03                                     ; $5e52: $2e $03
    nop                                           ; $5e54: $00
    ld c, a                                       ; $5e55: $4f
    ld b, d                                       ; $5e56: $42
    jr nz, jr_01f_5ecc                            ; $5e57: $20 $73

    ld [hl], h                                    ; $5e59: $74
    ld h, c                                       ; $5e5a: $61
    ld l, [hl]                                    ; $5e5b: $6e
    ld h, h                                       ; $5e5c: $64
    ld [hl], e                                    ; $5e5d: $73
    jr nz, jr_01f_5ec6                            ; $5e5e: $20 $66

    ld l, a                                       ; $5e60: $6f
    ld [hl], d                                    ; $5e61: $72
    jr nz, jr_01f_5ed3                            ; $5e62: $20 $6f

    ld [hl], l                                    ; $5e64: $75
    ld [hl], h                                    ; $5e65: $74
    ld bc, $666f                                  ; $5e66: $01 $6f $66
    jr nz, jr_01f_5ecd                            ; $5e69: $20 $62

    ld l, a                                       ; $5e6b: $6f
    ld [hl], l                                    ; $5e6c: $75
    ld l, [hl]                                    ; $5e6d: $6e
    ld h, h                                       ; $5e6e: $64

jr_01f_5e6f:
    ld [hl], e                                    ; $5e6f: $73
    ld l, $20                                     ; $5e70: $2e $20
    ld d, h                                       ; $5e72: $54
    ld l, b                                       ; $5e73: $68

jr_01f_5e74:
    ld h, l                                       ; $5e74: $65
    ld [hl], d                                    ; $5e75: $72
    ld h, l                                       ; $5e76: $65
    daa                                           ; $5e77: $27
    ld [hl], e                                    ; $5e78: $73
    ld bc, $2061                                  ; $5e79: $01 $61 $20
    ld sp, $732d                                  ; $5e7c: $31 $2d $73
    ld [hl], h                                    ; $5e7f: $74
    ld [hl], d                                    ; $5e80: $72
    ld l, a                                       ; $5e81: $6f
    ld l, e                                       ; $5e82: $6b
    ld h, l                                       ; $5e83: $65
    jr nz, jr_01f_5ef6                            ; $5e84: $20 $70

    ld h, l                                       ; $5e86: $65
    ld l, [hl]                                    ; $5e87: $6e
    ld h, c                                       ; $5e88: $61
    ld l, h                                       ; $5e89: $6c
    ld [hl], h                                    ; $5e8a: $74
    ld a, c                                       ; $5e8b: $79
    inc l                                         ; $5e8c: $2c
    ld [bc], a                                    ; $5e8d: $02

jr_01f_5e8e:
    ld h, c                                       ; $5e8e: $61
    ld l, [hl]                                    ; $5e8f: $6e
    ld h, h                                       ; $5e90: $64
    jr nz, jr_01f_5f0c                            ; $5e91: $20 $79

    ld l, a                                       ; $5e93: $6f
    ld [hl], l                                    ; $5e94: $75

jr_01f_5e95:
    jr nz, jr_01f_5f04                            ; $5e95: $20 $6d

    ld [hl], l                                    ; $5e97: $75
    ld [hl], e                                    ; $5e98: $73
    ld [hl], h                                    ; $5e99: $74
    jr nz, @+$74                                  ; $5e9a: $20 $72

    ld h, l                                       ; $5e9c: $65
    dec l                                         ; $5e9d: $2d
    ld l, b                                       ; $5e9e: $68
    ld l, c                                       ; $5e9f: $69
    ld [hl], h                                    ; $5ea0: $74
    ld l, $03                                     ; $5ea1: $2e $03
    nop                                           ; $5ea3: $00
    ld d, h                                       ; $5ea4: $54
    ld l, a                                       ; $5ea5: $6f
    jr nz, jr_01f_5f0a                            ; $5ea6: $20 $62

jr_01f_5ea8:
    ld h, l                                       ; $5ea8: $65
    jr nz, jr_01f_5f0c                            ; $5ea9: $20 $61

    ld [hl], h                                    ; $5eab: $74
    jr nz, jr_01f_5f20                            ; $5eac: $20 $72

    ld h, l                                       ; $5eae: $65

jr_01f_5eaf:
    ld [hl], e                                    ; $5eaf: $73
    ld [hl], h                                    ; $5eb0: $74
    ld bc, $7075                                  ; $5eb1: $01 $75 $70
    ld l, a                                       ; $5eb4: $6f
    ld l, [hl]                                    ; $5eb5: $6e
    jr nz, jr_01f_5f2c                            ; $5eb6: $20 $74

    ld l, b                                       ; $5eb8: $68
    ld h, l                                       ; $5eb9: $65
    jr nz, jr_01f_5f23                            ; $5eba: $20 $67

    ld [hl], d                                    ; $5ebc: $72
    ld h, l                                       ; $5ebd: $65
    ld h, l                                       ; $5ebe: $65
    ld l, [hl]                                    ; $5ebf: $6e
    ld l, $01                                     ; $5ec0: $2e $01
    ld c, c                                       ; $5ec2: $49
    ld h, [hl]                                    ; $5ec3: $66
    jr nz, jr_01f_5f3a                            ; $5ec4: $20 $74

jr_01f_5ec6:
    ld l, b                                       ; $5ec6: $68
    ld h, l                                       ; $5ec7: $65
    jr nz, jr_01f_5f31                            ; $5ec8: $20 $67

    ld [hl], d                                    ; $5eca: $72
    ld h, l                                       ; $5ecb: $65

jr_01f_5ecc:
    ld h, l                                       ; $5ecc: $65

jr_01f_5ecd:
    ld l, [hl]                                    ; $5ecd: $6e
    jr nz, jr_01f_5f39                            ; $5ece: $20 $69

    ld [hl], e                                    ; $5ed0: $73
    ld [bc], a                                    ; $5ed1: $02
    ld [hl], d                                    ; $5ed2: $72

jr_01f_5ed3:
    ld h, l                                       ; $5ed3: $65
    ld h, c                                       ; $5ed4: $61
    ld h, e                                       ; $5ed5: $63
    ld l, b                                       ; $5ed6: $68
    ld h, l                                       ; $5ed7: $65
    ld h, h                                       ; $5ed8: $64
    jr nz, jr_01f_5f44                            ; $5ed9: $20 $69

    ld l, [hl]                                    ; $5edb: $6e
    jr nz, jr_01f_5f4d                            ; $5edc: $20 $6f

    ld l, [hl]                                    ; $5ede: $6e
    ld h, l                                       ; $5edf: $65
    ld bc, $7473                                  ; $5ee0: $01 $73 $74
    ld [hl], d                                    ; $5ee3: $72
    ld l, a                                       ; $5ee4: $6f
    ld l, e                                       ; $5ee5: $6b
    ld h, l                                       ; $5ee6: $65
    inc l                                         ; $5ee7: $2c
    jr nz, jr_01f_5f5e                            ; $5ee8: $20 $74

    ld l, b                                       ; $5eea: $68
    ld h, c                                       ; $5eeb: $61
    ld [hl], h                                    ; $5eec: $74
    jr nz, jr_01f_5f58                            ; $5eed: $20 $69

    ld [hl], e                                    ; $5eef: $73
    ld bc, $6f22                                  ; $5ef0: $01 $22 $6f
    ld l, [hl]                                    ; $5ef3: $6e
    jr nz, @+$6b                                  ; $5ef4: $20 $69

jr_01f_5ef6:
    ld l, [hl]                                    ; $5ef6: $6e
    jr nz, @+$71                                  ; $5ef7: $20 $6f

    ld l, [hl]                                    ; $5ef9: $6e
    ld h, l                                       ; $5efa: $65
    ld l, $22                                     ; $5efb: $2e $22
    inc bc                                        ; $5efd: $03
    nop                                           ; $5efe: $00
    ld d, h                                       ; $5eff: $54
    ld l, b                                       ; $5f00: $68
    ld h, l                                       ; $5f01: $65
    jr nz, @+$72                                  ; $5f02: $20 $70

jr_01f_5f04:
    ld h, l                                       ; $5f04: $65
    ld [hl], d                                    ; $5f05: $72
    ld h, e                                       ; $5f06: $63
    ld h, l                                       ; $5f07: $65
    ld l, [hl]                                    ; $5f08: $6e
    ld [hl], h                                    ; $5f09: $74

jr_01f_5f0a:
    ld h, c                                       ; $5f0a: $61
    ld h, a                                       ; $5f0b: $67

jr_01f_5f0c:
    ld h, l                                       ; $5f0c: $65
    jr nz, jr_01f_5f7e                            ; $5f0d: $20 $6f

    ld h, [hl]                                    ; $5f0f: $66
    ld bc, $6974                                  ; $5f10: $01 $74 $69
    ld l, l                                       ; $5f13: $6d
    ld h, l                                       ; $5f14: $65
    ld [hl], e                                    ; $5f15: $73
    jr nz, jr_01f_5f8c                            ; $5f16: $20 $74

    ld l, b                                       ; $5f18: $68
    ld h, l                                       ; $5f19: $65
    jr nz, jr_01f_5f82                            ; $5f1a: $20 $66

    ld l, c                                       ; $5f1c: $69
    ld [hl], d                                    ; $5f1d: $72
    ld [hl], e                                    ; $5f1e: $73
    ld [hl], h                                    ; $5f1f: $74

jr_01f_5f20:
    ld bc, $7473                                  ; $5f20: $01 $73 $74

jr_01f_5f23:
    ld [hl], d                                    ; $5f23: $72
    ld l, a                                       ; $5f24: $6f
    ld l, e                                       ; $5f25: $6b
    ld h, l                                       ; $5f26: $65
    jr nz, @+$6e                                  ; $5f27: $20 $6c

    ld h, c                                       ; $5f29: $61
    ld l, [hl]                                    ; $5f2a: $6e
    ld h, h                                       ; $5f2b: $64

jr_01f_5f2c:
    ld h, l                                       ; $5f2c: $65
    ld h, h                                       ; $5f2d: $64
    jr nz, @+$71                                  ; $5f2e: $20 $6f

    ld l, [hl]                                    ; $5f30: $6e

jr_01f_5f31:
    ld [bc], a                                    ; $5f31: $02
    ld [hl], h                                    ; $5f32: $74
    ld l, b                                       ; $5f33: $68
    ld h, l                                       ; $5f34: $65
    jr nz, jr_01f_5f9d                            ; $5f35: $20 $66

    ld h, c                                       ; $5f37: $61
    ld l, c                                       ; $5f38: $69

jr_01f_5f39:
    ld [hl], d                                    ; $5f39: $72

jr_01f_5f3a:
    ld [hl], a                                    ; $5f3a: $77
    ld h, c                                       ; $5f3b: $61
    ld a, c                                       ; $5f3c: $79
    jr nz, jr_01f_5fae                            ; $5f3d: $20 $6f

    ld [hl], d                                    ; $5f3f: $72
    ld bc, $7267                                  ; $5f40: $01 $67 $72
    ld h, l                                       ; $5f43: $65

jr_01f_5f44:
    ld h, l                                       ; $5f44: $65
    ld l, [hl]                                    ; $5f45: $6e
    jr nz, jr_01f_5fad                            ; $5f46: $20 $65

    ld h, h                                       ; $5f48: $64
    ld h, a                                       ; $5f49: $67
    ld h, l                                       ; $5f4a: $65
    ld l, $03                                     ; $5f4b: $2e $03

jr_01f_5f4d:
    nop                                           ; $5f4d: $00
    ld b, c                                       ; $5f4e: $41
    jr nz, jr_01f_5fc4                            ; $5f4f: $20 $73

    ld [hl], a                                    ; $5f51: $77
    ld l, c                                       ; $5f52: $69
    ld l, [hl]                                    ; $5f53: $6e
    ld h, a                                       ; $5f54: $67
    jr nz, jr_01f_5fc0                            ; $5f55: $20 $69

    ld l, [hl]                                    ; $5f57: $6e

jr_01f_5f58:
    jr nz, jr_01f_5fd1                            ; $5f58: $20 $77

    ld l, b                                       ; $5f5a: $68
    ld l, c                                       ; $5f5b: $69
    ld h, e                                       ; $5f5c: $63
    ld l, b                                       ; $5f5d: $68

jr_01f_5f5e:
    ld bc, $6874                                  ; $5f5e: $01 $74 $68
    ld h, l                                       ; $5f61: $65
    jr nz, jr_01f_5fc7                            ; $5f62: $20 $63

    ld l, h                                       ; $5f64: $6c
    ld [hl], l                                    ; $5f65: $75
    ld h, d                                       ; $5f66: $62
    jr nz, jr_01f_5fd1                            ; $5f67: $20 $68

    ld h, l                                       ; $5f69: $65
    ld h, c                                       ; $5f6a: $61
    ld h, h                                       ; $5f6b: $64
    jr nz, jr_01f_5fd4                            ; $5f6c: $20 $66

    ld h, c                                       ; $5f6e: $61
    ld l, h                                       ; $5f6f: $6c
    ld l, h                                       ; $5f70: $6c
    ld [hl], e                                    ; $5f71: $73
    ld bc, $7266                                  ; $5f72: $01 $66 $72
    ld l, a                                       ; $5f75: $6f
    ld l, l                                       ; $5f76: $6d
    jr nz, jr_01f_5fed                            ; $5f77: $20 $74

    ld l, b                                       ; $5f79: $68
    ld h, l                                       ; $5f7a: $65
    jr nz, jr_01f_5fec                            ; $5f7b: $20 $6f

    ld [hl], l                                    ; $5f7d: $75

jr_01f_5f7e:
    ld [hl], h                                    ; $5f7e: $74
    ld [hl], e                                    ; $5f7f: $73
    ld l, c                                       ; $5f80: $69
    ld h, h                                       ; $5f81: $64

jr_01f_5f82:
    ld h, l                                       ; $5f82: $65
    ld [bc], a                                    ; $5f83: $02
    ld h, c                                       ; $5f84: $61
    ld l, [hl]                                    ; $5f85: $6e
    ld h, h                                       ; $5f86: $64
    jr nz, @+$76                                  ; $5f87: $20 $74

    ld [hl], l                                    ; $5f89: $75
    ld [hl], d                                    ; $5f8a: $72
    ld l, [hl]                                    ; $5f8b: $6e

jr_01f_5f8c:
    ld [hl], e                                    ; $5f8c: $73
    jr nz, @+$6b                                  ; $5f8d: $20 $69

    ld l, [hl]                                    ; $5f8f: $6e
    ld [hl], a                                    ; $5f90: $77
    ld h, c                                       ; $5f91: $61
    ld [hl], d                                    ; $5f92: $72
    ld h, h                                       ; $5f93: $64
    ld bc, $6e6f                                  ; $5f94: $01 $6f $6e
    jr nz, jr_01f_6002                            ; $5f97: $20 $69

    ld l, l                                       ; $5f99: $6d
    ld [hl], b                                    ; $5f9a: $70
    ld h, c                                       ; $5f9b: $61
    ld h, e                                       ; $5f9c: $63

jr_01f_5f9d:
    ld [hl], h                                    ; $5f9d: $74
    ld l, $03                                     ; $5f9e: $2e $03
    nop                                           ; $5fa0: $00
    ld d, e                                       ; $5fa1: $53
    ld h, e                                       ; $5fa2: $63
    ld l, a                                       ; $5fa3: $6f
    ld [hl], d                                    ; $5fa4: $72
    ld l, c                                       ; $5fa5: $69
    ld l, [hl]                                    ; $5fa6: $6e
    ld h, a                                       ; $5fa7: $67
    jr nz, jr_01f_6012                            ; $5fa8: $20 $68

    ld l, c                                       ; $5faa: $69
    ld h, a                                       ; $5fab: $67
    ld l, b                                       ; $5fac: $68

jr_01f_5fad:
    ld h, l                                       ; $5fad: $65

jr_01f_5fae:
    ld [hl], d                                    ; $5fae: $72
    ld bc, $6874                                  ; $5faf: $01 $74 $68
    ld h, c                                       ; $5fb2: $61
    ld l, [hl]                                    ; $5fb3: $6e
    jr nz, @+$72                                  ; $5fb4: $20 $70

    ld h, c                                       ; $5fb6: $61
    ld [hl], d                                    ; $5fb7: $72
    jr nz, jr_01f_6029                            ; $5fb8: $20 $6f

    ld l, [hl]                                    ; $5fba: $6e
    jr nz, jr_01f_601e                            ; $5fbb: $20 $61

    ld bc, $6f68                                  ; $5fbd: $01 $68 $6f

jr_01f_5fc0:
    ld l, h                                       ; $5fc0: $6c
    ld h, l                                       ; $5fc1: $65
    jr nz, jr_01f_6033                            ; $5fc2: $20 $6f

jr_01f_5fc4:
    ld [hl], d                                    ; $5fc4: $72
    jr nz, @+$65                                  ; $5fc5: $20 $63

jr_01f_5fc7:
    ld l, a                                       ; $5fc7: $6f
    ld [hl], l                                    ; $5fc8: $75
    ld [hl], d                                    ; $5fc9: $72
    ld [hl], e                                    ; $5fca: $73
    ld h, l                                       ; $5fcb: $65
    ld l, $03                                     ; $5fcc: $2e $03
    nop                                           ; $5fce: $00
    ld d, h                                       ; $5fcf: $54
    ld l, b                                       ; $5fd0: $68

jr_01f_5fd1:
    ld h, l                                       ; $5fd1: $65
    jr nz, jr_01f_6047                            ; $5fd2: $20 $73

jr_01f_5fd4:
    ld [hl], h                                    ; $5fd4: $74
    ld h, c                                       ; $5fd5: $61
    ld l, [hl]                                    ; $5fd6: $6e
    ld h, h                                       ; $5fd7: $64
    ld h, c                                       ; $5fd8: $61
    ld [hl], d                                    ; $5fd9: $72
    ld h, h                                       ; $5fda: $64
    ld bc, $756e                                  ; $5fdb: $01 $6e $75
    ld l, l                                       ; $5fde: $6d
    ld h, d                                       ; $5fdf: $62
    ld h, l                                       ; $5fe0: $65
    ld [hl], d                                    ; $5fe1: $72
    jr nz, jr_01f_6053                            ; $5fe2: $20 $6f

    ld h, [hl]                                    ; $5fe4: $66
    jr nz, @+$75                                  ; $5fe5: $20 $73

    ld [hl], h                                    ; $5fe7: $74
    ld [hl], d                                    ; $5fe8: $72
    ld l, a                                       ; $5fe9: $6f
    ld l, e                                       ; $5fea: $6b
    ld h, l                                       ; $5feb: $65

jr_01f_5fec:
    ld [hl], e                                    ; $5fec: $73

jr_01f_5fed:
    ld bc, $656e                                  ; $5fed: $01 $6e $65
    ld h, l                                       ; $5ff0: $65
    ld h, h                                       ; $5ff1: $64
    ld h, l                                       ; $5ff2: $65
    ld h, h                                       ; $5ff3: $64
    jr nz, jr_01f_606a                            ; $5ff4: $20 $74

    ld l, a                                       ; $5ff6: $6f
    jr nz, @+$72                                  ; $5ff7: $20 $70

    ld l, h                                       ; $5ff9: $6c
    ld h, c                                       ; $5ffa: $61
    ld a, c                                       ; $5ffb: $79
    jr nz, jr_01f_605f                            ; $5ffc: $20 $61

    ld [bc], a                                    ; $5ffe: $02
    ld l, b                                       ; $5fff: $68
    ld l, a                                       ; $6000: $6f
    ld l, h                                       ; $6001: $6c

jr_01f_6002:
    ld h, l                                       ; $6002: $65
    jr nz, jr_01f_6074                            ; $6003: $20 $6f

    ld [hl], d                                    ; $6005: $72
    jr nz, jr_01f_606b                            ; $6006: $20 $63

    ld l, a                                       ; $6008: $6f
    ld [hl], l                                    ; $6009: $75
    ld [hl], d                                    ; $600a: $72
    ld [hl], e                                    ; $600b: $73
    ld h, l                                       ; $600c: $65
    ld l, $01                                     ; $600d: $2e $01
    ld b, c                                       ; $600f: $41
    jr nz, jr_01f_6086                            ; $6010: $20 $74

jr_01f_6012:
    ld a, c                                       ; $6012: $79
    ld [hl], b                                    ; $6013: $70
    ld l, c                                       ; $6014: $69
    ld h, e                                       ; $6015: $63
    ld h, c                                       ; $6016: $61
    ld l, h                                       ; $6017: $6c
    jr nz, @+$65                                  ; $6018: $20 $63

    ld l, a                                       ; $601a: $6f
    ld [hl], l                                    ; $601b: $75
    ld [hl], d                                    ; $601c: $72
    ld [hl], e                                    ; $601d: $73

jr_01f_601e:
    ld h, l                                       ; $601e: $65
    ld bc, $7369                                  ; $601f: $01 $69 $73
    jr nz, jr_01f_605b                            ; $6022: $20 $37

    ld [hl-], a                                   ; $6024: $32
    jr nz, jr_01f_6097                            ; $6025: $20 $70

    ld h, c                                       ; $6027: $61
    ld [hl], d                                    ; $6028: $72

jr_01f_6029:
    ld l, $03                                     ; $6029: $2e $03
    nop                                           ; $602b: $00
    ld d, h                                       ; $602c: $54
    ld l, a                                       ; $602d: $6f
    jr nz, @+$74                                  ; $602e: $20 $72

    ld h, l                                       ; $6030: $65
    ld h, c                                       ; $6031: $61
    ld h, e                                       ; $6032: $63

jr_01f_6033:
    ld l, b                                       ; $6033: $68
    jr nz, jr_01f_60aa                            ; $6034: $20 $74

    ld l, b                                       ; $6036: $68
    ld h, l                                       ; $6037: $65
    ld bc, $7267                                  ; $6038: $01 $67 $72
    ld h, l                                       ; $603b: $65
    ld h, l                                       ; $603c: $65
    ld l, [hl]                                    ; $603d: $6e
    jr nz, jr_01f_60a9                            ; $603e: $20 $69

    ld l, [hl]                                    ; $6040: $6e
    jr nz, @+$34                                  ; $6041: $20 $32

    ld bc, $7473                                  ; $6043: $01 $73 $74
    ld [hl], d                                    ; $6046: $72

jr_01f_6047:
    ld l, a                                       ; $6047: $6f
    ld l, e                                       ; $6048: $6b
    ld h, l                                       ; $6049: $65
    ld [hl], e                                    ; $604a: $73
    jr nz, jr_01f_60c2                            ; $604b: $20 $75

    ld l, [hl]                                    ; $604d: $6e
    ld h, h                                       ; $604e: $64
    ld h, l                                       ; $604f: $65
    ld [hl], d                                    ; $6050: $72
    ld [bc], a                                    ; $6051: $02
    ld [hl], b                                    ; $6052: $70

jr_01f_6053:
    ld h, c                                       ; $6053: $61
    ld [hl], d                                    ; $6054: $72
    jr nz, jr_01f_60bd                            ; $6055: $20 $66

    ld l, a                                       ; $6057: $6f
    ld [hl], d                                    ; $6058: $72
    jr nz, jr_01f_60cf                            ; $6059: $20 $74

jr_01f_605b:
    ld l, b                                       ; $605b: $68
    ld h, l                                       ; $605c: $65
    jr nz, @+$6a                                  ; $605d: $20 $68

jr_01f_605f:
    ld l, a                                       ; $605f: $6f
    ld l, h                                       ; $6060: $6c
    ld h, l                                       ; $6061: $65
    ld l, $01                                     ; $6062: $2e $01
    ld c, a                                       ; $6064: $4f
    ld l, [hl]                                    ; $6065: $6e
    jr nz, jr_01f_60c9                            ; $6066: $20 $61

    jr nz, @+$72                                  ; $6068: $20 $70

jr_01f_606a:
    ld h, c                                       ; $606a: $61

jr_01f_606b:
    ld [hl], d                                    ; $606b: $72
    jr nz, @+$36                                  ; $606c: $20 $34

    jr nz, @+$6a                                  ; $606e: $20 $68

    ld l, a                                       ; $6070: $6f
    ld l, h                                       ; $6071: $6c
    ld h, l                                       ; $6072: $65
    inc l                                         ; $6073: $2c

jr_01f_6074:
    ld bc, $7469                                  ; $6074: $01 $69 $74
    daa                                           ; $6077: $27
    ld [hl], e                                    ; $6078: $73
    jr nz, jr_01f_60ea                            ; $6079: $20 $6f

    ld l, [hl]                                    ; $607b: $6e
    jr nz, jr_01f_60e7                            ; $607c: $20 $69

    ld l, [hl]                                    ; $607e: $6e
    jr nz, jr_01f_60b3                            ; $607f: $20 $32

    ld l, $03                                     ; $6081: $2e $03
    nop                                           ; $6083: $00
    ld d, b                                       ; $6084: $50
    ld h, l                                       ; $6085: $65

jr_01f_6086:
    ld [hl], d                                    ; $6086: $72
    ld h, e                                       ; $6087: $63
    ld h, l                                       ; $6088: $65
    ld l, [hl]                                    ; $6089: $6e
    ld [hl], h                                    ; $608a: $74
    ld h, c                                       ; $608b: $61
    ld h, a                                       ; $608c: $67
    ld h, l                                       ; $608d: $65
    jr nz, @+$71                                  ; $608e: $20 $6f

    ld h, [hl]                                    ; $6090: $66
    ld bc, $6f68                                  ; $6091: $01 $68 $6f
    ld l, h                                       ; $6094: $6c
    ld h, l                                       ; $6095: $65
    ld [hl], e                                    ; $6096: $73

jr_01f_6097:
    jr nz, @+$71                                  ; $6097: $20 $6f

    ld l, [hl]                                    ; $6099: $6e
    jr nz, jr_01f_6113                            ; $609a: $20 $77

    ld l, b                                       ; $609c: $68
    ld l, c                                       ; $609d: $69
    ld h, e                                       ; $609e: $63
    ld l, b                                       ; $609f: $68
    ld bc, $6874                                  ; $60a0: $01 $74 $68
    ld h, l                                       ; $60a3: $65
    jr nz, @+$72                                  ; $60a4: $20 $70

    ld l, h                                       ; $60a6: $6c
    ld h, c                                       ; $60a7: $61
    ld a, c                                       ; $60a8: $79

jr_01f_60a9:
    ld h, l                                       ; $60a9: $65

jr_01f_60aa:
    ld [hl], d                                    ; $60aa: $72
    jr nz, jr_01f_6112                            ; $60ab: $20 $65

    ld h, c                                       ; $60ad: $61
    ld [hl], d                                    ; $60ae: $72
    ld l, [hl]                                    ; $60af: $6e
    ld h, l                                       ; $60b0: $65
    ld h, h                                       ; $60b1: $64
    ld [bc], a                                    ; $60b2: $02

jr_01f_60b3:
    ld h, c                                       ; $60b3: $61
    jr nz, jr_01f_6126                            ; $60b4: $20 $70

    ld h, c                                       ; $60b6: $61
    ld [hl], d                                    ; $60b7: $72
    jr nz, @+$71                                  ; $60b8: $20 $6f

    ld l, [hl]                                    ; $60ba: $6e
    ld l, $03                                     ; $60bb: $2e $03

jr_01f_60bd:
    nop                                           ; $60bd: $00
    ld d, h                                       ; $60be: $54
    ld l, a                                       ; $60bf: $6f
    jr nz, jr_01f_6135                            ; $60c0: $20 $73

jr_01f_60c2:
    ld h, e                                       ; $60c2: $63
    ld l, a                                       ; $60c3: $6f
    ld [hl], d                                    ; $60c4: $72
    ld h, l                                       ; $60c5: $65
    jr nz, jr_01f_6138                            ; $60c6: $20 $70

    ld h, c                                       ; $60c8: $61

jr_01f_60c9:
    ld [hl], d                                    ; $60c9: $72
    ld bc, $6877                                  ; $60ca: $01 $77 $68
    ld h, l                                       ; $60cd: $65
    ld l, [hl]                                    ; $60ce: $6e

jr_01f_60cf:
    jr nz, jr_01f_6141                            ; $60cf: $20 $70

    ld l, h                                       ; $60d1: $6c
    ld h, c                                       ; $60d2: $61
    ld a, c                                       ; $60d3: $79
    ld l, c                                       ; $60d4: $69
    ld l, [hl]                                    ; $60d5: $6e
    ld h, a                                       ; $60d6: $67
    jr nz, jr_01f_613a                            ; $60d7: $20 $61

    ld bc, $6f68                                  ; $60d9: $01 $68 $6f
    ld l, h                                       ; $60dc: $6c
    ld h, l                                       ; $60dd: $65
    jr nz, jr_01f_614f                            ; $60de: $20 $6f

    ld [hl], d                                    ; $60e0: $72
    jr nz, jr_01f_6146                            ; $60e1: $20 $63

    ld l, a                                       ; $60e3: $6f
    ld [hl], l                                    ; $60e4: $75
    ld [hl], d                                    ; $60e5: $72
    ld [hl], e                                    ; $60e6: $73

jr_01f_60e7:
    ld h, l                                       ; $60e7: $65
    ld l, $03                                     ; $60e8: $2e $03

jr_01f_60ea:
    nop                                           ; $60ea: $00
    ld b, c                                       ; $60eb: $41
    jr nz, @+$72                                  ; $60ec: $20 $70

    ld h, c                                       ; $60ee: $61
    ld [hl], d                                    ; $60ef: $72
    jr nz, jr_01f_6165                            ; $60f0: $20 $73

    ld h, c                                       ; $60f2: $61
    halt                                          ; $60f3: $76
    ld h, l                                       ; $60f4: $65
    jr nz, jr_01f_6160                            ; $60f5: $20 $69

    ld [hl], e                                    ; $60f7: $73
    jr nz, jr_01f_6171                            ; $60f8: $20 $77

    ld l, b                                       ; $60fa: $68
    ld h, l                                       ; $60fb: $65
    ld l, [hl]                                    ; $60fc: $6e
    ld bc, $6f79                                  ; $60fd: $01 $79 $6f
    ld [hl], l                                    ; $6100: $75
    jr nz, jr_01f_6176                            ; $6101: $20 $73

    ld h, e                                       ; $6103: $63
    ld l, a                                       ; $6104: $6f
    ld [hl], d                                    ; $6105: $72
    ld h, l                                       ; $6106: $65
    jr nz, jr_01f_6179                            ; $6107: $20 $70

    ld h, c                                       ; $6109: $61
    ld [hl], d                                    ; $610a: $72
    jr nz, jr_01f_617c                            ; $610b: $20 $6f

    ld [hl], d                                    ; $610d: $72
    ld bc, $6562                                  ; $610e: $01 $62 $65
    ld [hl], h                                    ; $6111: $74

jr_01f_6112:
    ld [hl], h                                    ; $6112: $74

jr_01f_6113:
    ld h, l                                       ; $6113: $65
    ld [hl], d                                    ; $6114: $72
    ld l, $02                                     ; $6115: $2e $02
    ld c, c                                       ; $6117: $49
    ld [hl], h                                    ; $6118: $74
    jr nz, @+$6f                                  ; $6119: $20 $6d

    ld h, l                                       ; $611b: $65
    ld h, c                                       ; $611c: $61
    ld l, [hl]                                    ; $611d: $6e
    ld [hl], e                                    ; $611e: $73
    jr nz, jr_01f_619a                            ; $611f: $20 $79

    ld l, a                                       ; $6121: $6f
    ld [hl], l                                    ; $6122: $75
    jr nz, @+$65                                  ; $6123: $20 $63

    ld h, c                                       ; $6125: $61

jr_01f_6126:
    ld l, l                                       ; $6126: $6d
    ld h, l                                       ; $6127: $65
    ld bc, $6874                                  ; $6128: $01 $74 $68
    ld [hl], d                                    ; $612b: $72
    ld l, a                                       ; $612c: $6f
    ld [hl], l                                    ; $612d: $75
    ld h, a                                       ; $612e: $67
    ld l, b                                       ; $612f: $68
    jr nz, jr_01f_619b                            ; $6130: $20 $69

    ld l, [hl]                                    ; $6132: $6e
    jr nz, jr_01f_6196                            ; $6133: $20 $61

jr_01f_6135:
    jr nz, jr_01f_61a7                            ; $6135: $20 $70

    ld l, c                                       ; $6137: $69

jr_01f_6138:
    ld l, [hl]                                    ; $6138: $6e
    ld h, e                                       ; $6139: $63

jr_01f_613a:
    ld l, b                                       ; $613a: $68
    ld bc, $6f74                                  ; $613b: $01 $74 $6f
    jr nz, jr_01f_61ad                            ; $613e: $20 $6d

    ld h, c                                       ; $6140: $61

jr_01f_6141:
    ld l, e                                       ; $6141: $6b
    ld h, l                                       ; $6142: $65
    jr nz, jr_01f_61b5                            ; $6143: $20 $70

    ld h, c                                       ; $6145: $61

jr_01f_6146:
    ld [hl], d                                    ; $6146: $72
    ld l, $03                                     ; $6147: $2e $03
    nop                                           ; $6149: $00
    ld d, b                                       ; $614a: $50
    ld h, l                                       ; $614b: $65
    ld [hl], d                                    ; $614c: $72
    ld h, e                                       ; $614d: $63
    ld h, l                                       ; $614e: $65

jr_01f_614f:
    ld l, [hl]                                    ; $614f: $6e
    ld [hl], h                                    ; $6150: $74
    ld h, c                                       ; $6151: $61
    ld h, a                                       ; $6152: $67
    ld h, l                                       ; $6153: $65
    jr nz, @+$71                                  ; $6154: $20 $6f

    ld h, [hl]                                    ; $6156: $66
    ld bc, $6f68                                  ; $6157: $01 $68 $6f
    ld l, h                                       ; $615a: $6c
    ld h, l                                       ; $615b: $65
    ld [hl], e                                    ; $615c: $73
    jr nz, jr_01f_61ce                            ; $615d: $20 $6f

    ld l, [hl]                                    ; $615f: $6e

jr_01f_6160:
    jr nz, @+$79                                  ; $6160: $20 $77

    ld l, b                                       ; $6162: $68
    ld l, c                                       ; $6163: $69
    ld h, e                                       ; $6164: $63

jr_01f_6165:
    ld l, b                                       ; $6165: $68
    ld bc, $6170                                  ; $6166: $01 $70 $61
    ld [hl], d                                    ; $6169: $72
    jr nz, jr_01f_61e3                            ; $616a: $20 $77

    ld h, c                                       ; $616c: $61
    ld [hl], e                                    ; $616d: $73
    jr nz, jr_01f_61dd                            ; $616e: $20 $6d

    ld h, c                                       ; $6170: $61

jr_01f_6171:
    ld h, h                                       ; $6171: $64
    ld h, l                                       ; $6172: $65
    ld l, $03                                     ; $6173: $2e $03
    nop                                           ; $6175: $00

jr_01f_6176:
    ld b, c                                       ; $6176: $41
    jr nz, jr_01f_61ec                            ; $6177: $20 $73

jr_01f_6179:
    ld [hl], h                                    ; $6179: $74
    ld [hl], d                                    ; $617a: $72
    ld l, a                                       ; $617b: $6f

jr_01f_617c:
    ld l, e                                       ; $617c: $6b
    ld h, l                                       ; $617d: $65
    jr nz, @+$63                                  ; $617e: $20 $61

    ld h, h                                       ; $6180: $64
    ld h, h                                       ; $6181: $64
    ld h, l                                       ; $6182: $65
    ld h, h                                       ; $6183: $64
    jr nz, jr_01f_61fa                            ; $6184: $20 $74

    ld l, a                                       ; $6186: $6f
    ld bc, $6f79                                  ; $6187: $01 $79 $6f
    ld [hl], l                                    ; $618a: $75
    ld [hl], d                                    ; $618b: $72
    jr nz, jr_01f_6201                            ; $618c: $20 $73

    ld h, e                                       ; $618e: $63
    ld l, a                                       ; $618f: $6f
    ld [hl], d                                    ; $6190: $72
    ld h, l                                       ; $6191: $65
    jr nz, jr_01f_61fa                            ; $6192: $20 $66

    ld l, a                                       ; $6194: $6f
    ld [hl], d                                    ; $6195: $72

jr_01f_6196:
    ld bc, $7564                                  ; $6196: $01 $64 $75
    ld l, [hl]                                    ; $6199: $6e

jr_01f_619a:
    ld l, e                                       ; $619a: $6b

jr_01f_619b:
    ld l, c                                       ; $619b: $69
    ld l, [hl]                                    ; $619c: $6e
    ld h, a                                       ; $619d: $67
    jr nz, jr_01f_6219                            ; $619e: $20 $79

    ld l, a                                       ; $61a0: $6f
    ld [hl], l                                    ; $61a1: $75
    ld [hl], d                                    ; $61a2: $72
    jr nz, jr_01f_6207                            ; $61a3: $20 $62

    ld h, c                                       ; $61a5: $61
    ld l, h                                       ; $61a6: $6c

jr_01f_61a7:
    ld l, h                                       ; $61a7: $6c
    ld [bc], a                                    ; $61a8: $02
    ld l, a                                       ; $61a9: $6f
    ld [hl], d                                    ; $61aa: $72
    jr nz, jr_01f_6215                            ; $61ab: $20 $68

jr_01f_61ad:
    ld l, c                                       ; $61ad: $69
    ld [hl], h                                    ; $61ae: $74
    ld [hl], h                                    ; $61af: $74
    ld l, c                                       ; $61b0: $69
    ld l, [hl]                                    ; $61b1: $6e
    ld h, a                                       ; $61b2: $67
    jr nz, jr_01f_621e                            ; $61b3: $20 $69

jr_01f_61b5:
    ld [hl], h                                    ; $61b5: $74
    jr nz, jr_01f_6227                            ; $61b6: $20 $6f

    ld [hl], l                                    ; $61b8: $75
    ld [hl], h                                    ; $61b9: $74
    ld bc, $666f                                  ; $61ba: $01 $6f $66
    jr nz, jr_01f_6221                            ; $61bd: $20 $62

    ld l, a                                       ; $61bf: $6f
    ld [hl], l                                    ; $61c0: $75
    ld l, [hl]                                    ; $61c1: $6e
    ld h, h                                       ; $61c2: $64
    ld [hl], e                                    ; $61c3: $73
    ld l, $03                                     ; $61c4: $2e $03
    nop                                           ; $61c6: $00
    ld d, h                                       ; $61c7: $54
    ld l, b                                       ; $61c8: $68
    ld h, l                                       ; $61c9: $65
    jr nz, jr_01f_6232                            ; $61ca: $20 $66

    ld l, h                                       ; $61cc: $6c
    ld h, c                                       ; $61cd: $61

jr_01f_61ce:
    ld h, a                                       ; $61ce: $67
    ld [hl], b                                    ; $61cf: $70
    ld l, a                                       ; $61d0: $6f
    ld l, h                                       ; $61d1: $6c
    ld h, l                                       ; $61d2: $65
    jr nz, @+$77                                  ; $61d3: $20 $75

    ld [hl], e                                    ; $61d5: $73
    ld h, l                                       ; $61d6: $65
    ld h, h                                       ; $61d7: $64
    ld bc, $6f74                                  ; $61d8: $01 $74 $6f
    jr nz, @+$6f                                  ; $61db: $20 $6d

jr_01f_61dd:
    ld h, c                                       ; $61dd: $61
    ld [hl], d                                    ; $61de: $72
    ld l, e                                       ; $61df: $6b
    jr nz, jr_01f_6256                            ; $61e0: $20 $74

    ld l, b                                       ; $61e2: $68

jr_01f_61e3:
    ld h, l                                       ; $61e3: $65
    jr nz, jr_01f_6249                            ; $61e4: $20 $63

    ld [hl], l                                    ; $61e6: $75
    ld [hl], b                                    ; $61e7: $70
    ld l, $03                                     ; $61e8: $2e $03
    nop                                           ; $61ea: $00
    ld b, c                                       ; $61eb: $41

jr_01f_61ec:
    ld l, [hl]                                    ; $61ec: $6e
    jr nz, @+$63                                  ; $61ed: $20 $61

    ld [hl], b                                    ; $61ef: $70
    ld [hl], b                                    ; $61f0: $70
    ld [hl], d                                    ; $61f1: $72
    ld l, a                                       ; $61f2: $6f
    ld h, c                                       ; $61f3: $61
    ld h, e                                       ; $61f4: $63
    ld l, b                                       ; $61f5: $68
    jr nz, jr_01f_626b                            ; $61f6: $20 $73

    ld l, b                                       ; $61f8: $68
    ld l, a                                       ; $61f9: $6f

jr_01f_61fa:
    ld [hl], h                                    ; $61fa: $74
    ld bc, $6e69                                  ; $61fb: $01 $69 $6e
    jr nz, @+$79                                  ; $61fe: $20 $77

    ld l, b                                       ; $6200: $68

jr_01f_6201:
    ld l, c                                       ; $6201: $69
    ld h, e                                       ; $6202: $63
    ld l, b                                       ; $6203: $68
    jr nz, jr_01f_627a                            ; $6204: $20 $74

    ld l, b                                       ; $6206: $68

jr_01f_6207:
    ld h, l                                       ; $6207: $65
    jr nz, jr_01f_626c                            ; $6208: $20 $62

    ld h, c                                       ; $620a: $61
    ld l, h                                       ; $620b: $6c
    ld l, h                                       ; $620c: $6c
    ld bc, $7369                                  ; $620d: $01 $69 $73
    jr nz, jr_01f_627e                            ; $6210: $20 $6c

    ld l, a                                       ; $6212: $6f
    ld h, [hl]                                    ; $6213: $66
    ld [hl], h                                    ; $6214: $74

jr_01f_6215:
    ld h, l                                       ; $6215: $65
    ld h, h                                       ; $6216: $64
    jr nz, jr_01f_6282                            ; $6217: $20 $69

jr_01f_6219:
    ld l, [hl]                                    ; $6219: $6e
    ld [hl], h                                    ; $621a: $74
    ld l, a                                       ; $621b: $6f
    jr nz, jr_01f_6292                            ; $621c: $20 $74

jr_01f_621e:
    ld l, b                                       ; $621e: $68
    ld h, l                                       ; $621f: $65
    ld [bc], a                                    ; $6220: $02

jr_01f_6221:
    ld h, c                                       ; $6221: $61
    ld l, c                                       ; $6222: $69
    ld [hl], d                                    ; $6223: $72
    jr nz, jr_01f_6287                            ; $6224: $20 $61

    ld l, [hl]                                    ; $6226: $6e

jr_01f_6227:
    ld h, h                                       ; $6227: $64
    jr nz, @+$6e                                  ; $6228: $20 $6c

    ld h, c                                       ; $622a: $61
    ld l, [hl]                                    ; $622b: $6e
    ld h, h                                       ; $622c: $64
    ld [hl], e                                    ; $622d: $73
    jr nz, @+$79                                  ; $622e: $20 $77

    ld l, c                                       ; $6230: $69
    ld [hl], h                                    ; $6231: $74

jr_01f_6232:
    ld l, b                                       ; $6232: $68
    ld bc, $2061                                  ; $6233: $01 $61 $20
    ld [hl], c                                    ; $6236: $71
    ld [hl], l                                    ; $6237: $75
    ld l, c                                       ; $6238: $69
    ld h, e                                       ; $6239: $63
    ld l, e                                       ; $623a: $6b
    jr nz, jr_01f_62b0                            ; $623b: $20 $73

    ld [hl], h                                    ; $623d: $74
    ld l, a                                       ; $623e: $6f
    ld [hl], b                                    ; $623f: $70
    ld l, $03                                     ; $6240: $2e $03
    nop                                           ; $6242: $00
    ld b, c                                       ; $6243: $41
    jr nz, jr_01f_62a9                            ; $6244: $20 $63

    ld l, h                                       ; $6246: $6c
    ld [hl], l                                    ; $6247: $75
    ld h, d                                       ; $6248: $62

jr_01f_6249:
    jr nz, jr_01f_62c2                            ; $6249: $20 $77

    ld l, c                                       ; $624b: $69
    ld [hl], h                                    ; $624c: $74
    ld l, b                                       ; $624d: $68
    ld bc, $6f67                                  ; $624e: $01 $67 $6f
    ld l, a                                       ; $6251: $6f
    ld h, h                                       ; $6252: $64
    jr nz, jr_01f_62b8                            ; $6253: $20 $63

    ld l, a                                       ; $6255: $6f

jr_01f_6256:
    ld l, [hl]                                    ; $6256: $6e
    ld [hl], h                                    ; $6257: $74
    ld [hl], d                                    ; $6258: $72
    ld l, a                                       ; $6259: $6f
    ld l, h                                       ; $625a: $6c
    ld bc, $6874                                  ; $625b: $01 $74 $68
    ld h, c                                       ; $625e: $61
    ld [hl], h                                    ; $625f: $74
    jr nz, jr_01f_62c7                            ; $6260: $20 $65

    ld h, c                                       ; $6262: $61
    ld [hl], e                                    ; $6263: $73
    ld l, c                                       ; $6264: $69
    ld l, h                                       ; $6265: $6c
    ld a, c                                       ; $6266: $79
    ld [bc], a                                    ; $6267: $02
    ld l, h                                       ; $6268: $6c
    ld l, a                                       ; $6269: $6f
    ld h, [hl]                                    ; $626a: $66

jr_01f_626b:
    ld [hl], h                                    ; $626b: $74

jr_01f_626c:
    ld [hl], e                                    ; $626c: $73
    jr nz, jr_01f_62e3                            ; $626d: $20 $74

    ld l, b                                       ; $626f: $68
    ld h, l                                       ; $6270: $65
    jr nz, @+$64                                  ; $6271: $20 $62

    ld h, c                                       ; $6273: $61
    ld l, h                                       ; $6274: $6c
    ld l, h                                       ; $6275: $6c
    ld bc, $6e69                                  ; $6276: $01 $69 $6e
    ld [hl], h                                    ; $6279: $74

jr_01f_627a:
    ld l, a                                       ; $627a: $6f
    jr nz, jr_01f_62f1                            ; $627b: $20 $74

    ld l, b                                       ; $627d: $68

jr_01f_627e:
    ld h, l                                       ; $627e: $65
    jr nz, jr_01f_62e2                            ; $627f: $20 $61

    ld l, c                                       ; $6281: $69

jr_01f_6282:
    ld [hl], d                                    ; $6282: $72
    ld l, $03                                     ; $6283: $2e $03
    nop                                           ; $6285: $00
    ld b, c                                       ; $6286: $41

jr_01f_6287:
    ld l, [hl]                                    ; $6287: $6e
    jr nz, jr_01f_62ef                            ; $6288: $20 $65

    ld a, b                                       ; $628a: $78
    ld [hl], h                                    ; $628b: $74
    ld [hl], d                                    ; $628c: $72
    ld h, c                                       ; $628d: $61
    jr nz, @+$65                                  ; $628e: $20 $63

    ld l, a                                       ; $6290: $6f
    ld l, l                                       ; $6291: $6d

jr_01f_6292:
    ld [hl], b                                    ; $6292: $70
    ld h, l                                       ; $6293: $65
    dec l                                         ; $6294: $2d
    ld bc, $6974                                  ; $6295: $01 $74 $69
    ld [hl], h                                    ; $6298: $74
    ld l, c                                       ; $6299: $69
    ld l, a                                       ; $629a: $6f
    ld l, [hl]                                    ; $629b: $6e
    jr nz, jr_01f_6312                            ; $629c: $20 $74

    ld l, a                                       ; $629e: $6f
    jr nz, jr_01f_6303                            ; $629f: $20 $62

    ld [hl], d                                    ; $62a1: $72
    ld h, l                                       ; $62a2: $65
    ld h, c                                       ; $62a3: $61
    ld l, e                                       ; $62a4: $6b
    ld bc, $2061                                  ; $62a5: $01 $61 $20
    ld [hl], h                                    ; $62a8: $74

jr_01f_62a9:
    ld l, c                                       ; $62a9: $69
    ld h, l                                       ; $62aa: $65
    ld l, $20                                     ; $62ab: $2e $20
    ld d, e                                       ; $62ad: $53
    ld [hl], l                                    ; $62ae: $75
    ld h, h                                       ; $62af: $64

jr_01f_62b0:
    ld h, h                                       ; $62b0: $64
    ld h, l                                       ; $62b1: $65
    ld l, [hl]                                    ; $62b2: $6e
    ld [bc], a                                    ; $62b3: $02
    ld h, h                                       ; $62b4: $64
    ld h, l                                       ; $62b5: $65
    ld h, c                                       ; $62b6: $61
    ld [hl], h                                    ; $62b7: $74

jr_01f_62b8:
    ld l, b                                       ; $62b8: $68
    jr nz, jr_01f_6324                            ; $62b9: $20 $69

    ld [hl], e                                    ; $62bb: $73
    jr nz, @+$65                                  ; $62bc: $20 $63

    ld l, a                                       ; $62be: $6f
    ld l, l                                       ; $62bf: $6d
    ld l, l                                       ; $62c0: $6d
    ld l, a                                       ; $62c1: $6f

jr_01f_62c2:
    ld l, [hl]                                    ; $62c2: $6e
    inc l                                         ; $62c3: $2c
    ld bc, $7562                                  ; $62c4: $01 $62 $75

jr_01f_62c7:
    ld [hl], h                                    ; $62c7: $74
    jr nz, jr_01f_633c                            ; $62c8: $20 $72

    ld l, a                                       ; $62ca: $6f
    ld [hl], l                                    ; $62cb: $75
    ld l, [hl]                                    ; $62cc: $6e
    ld h, h                                       ; $62cd: $64
    ld [hl], e                                    ; $62ce: $73
    jr nz, jr_01f_6334                            ; $62cf: $20 $63

    ld h, c                                       ; $62d1: $61
    ld l, [hl]                                    ; $62d2: $6e
    ld bc, $6562                                  ; $62d3: $01 $62 $65
    jr nz, jr_01f_634a                            ; $62d6: $20 $72

    ld h, l                                       ; $62d8: $65
    ld [hl], b                                    ; $62d9: $70
    ld l, h                                       ; $62da: $6c
    ld h, c                                       ; $62db: $61
    ld a, c                                       ; $62dc: $79
    ld h, l                                       ; $62dd: $65
    ld h, h                                       ; $62de: $64
    ld l, $03                                     ; $62df: $2e $03
    nop                                           ; $62e1: $00

jr_01f_62e2:
    ld b, c                                       ; $62e2: $41

jr_01f_62e3:
    jr nz, jr_01f_6358                            ; $62e3: $20 $73

    ld l, l                                       ; $62e5: $6d
    ld h, c                                       ; $62e6: $61
    ld l, h                                       ; $62e7: $6c
    ld l, h                                       ; $62e8: $6c
    inc l                                         ; $62e9: $2c
    jr nz, jr_01f_635e                            ; $62ea: $20 $72

    ld l, a                                       ; $62ec: $6f
    ld [hl], l                                    ; $62ed: $75
    ld l, [hl]                                    ; $62ee: $6e

jr_01f_62ef:
    ld h, h                                       ; $62ef: $64
    inc l                                         ; $62f0: $2c

jr_01f_62f1:
    ld bc, $6f70                                  ; $62f1: $01 $70 $6f
    ld [hl], h                                    ; $62f4: $74
    dec l                                         ; $62f5: $2d
    ld [hl], e                                    ; $62f6: $73
    ld l, b                                       ; $62f7: $68
    ld h, c                                       ; $62f8: $61
    ld [hl], b                                    ; $62f9: $70
    ld h, l                                       ; $62fa: $65
    ld h, h                                       ; $62fb: $64
    jr nz, @+$64                                  ; $62fc: $20 $62

    ld [hl], l                                    ; $62fe: $75
    ld l, [hl]                                    ; $62ff: $6e
    ld l, e                                       ; $6300: $6b
    ld h, l                                       ; $6301: $65
    ld [hl], d                                    ; $6302: $72

jr_01f_6303:
    ld bc, $666f                                  ; $6303: $01 $6f $66
    ld [hl], h                                    ; $6306: $74
    ld h, l                                       ; $6307: $65
    ld l, [hl]                                    ; $6308: $6e
    jr nz, jr_01f_6371                            ; $6309: $20 $66

    ld l, a                                       ; $630b: $6f
    ld [hl], l                                    ; $630c: $75
    ld l, [hl]                                    ; $630d: $6e
    ld h, h                                       ; $630e: $64
    jr nz, jr_01f_6380                            ; $630f: $20 $6f

    ld l, [hl]                                    ; $6311: $6e

jr_01f_6312:
    ld [bc], a                                    ; $6312: $02
    ld l, h                                       ; $6313: $6c
    ld l, c                                       ; $6314: $69
    ld l, [hl]                                    ; $6315: $6e
    ld l, e                                       ; $6316: $6b
    ld [hl], e                                    ; $6317: $73
    jr nz, jr_01f_637d                            ; $6318: $20 $63

    ld l, a                                       ; $631a: $6f
    ld [hl], l                                    ; $631b: $75
    ld [hl], d                                    ; $631c: $72
    ld [hl], e                                    ; $631d: $73
    ld h, l                                       ; $631e: $65
    ld [hl], e                                    ; $631f: $73
    ld l, $03                                     ; $6320: $2e $03
    nop                                           ; $6322: $00
    ld b, c                                       ; $6323: $41

jr_01f_6324:
    jr nz, jr_01f_6389                            ; $6324: $20 $63

    ld l, h                                       ; $6326: $6c
    ld [hl], l                                    ; $6327: $75
    ld h, d                                       ; $6328: $62
    jr nz, jr_01f_63a0                            ; $6329: $20 $75

    ld [hl], e                                    ; $632b: $73
    ld h, l                                       ; $632c: $65
    ld h, h                                       ; $632d: $64
    jr nz, jr_01f_63a4                            ; $632e: $20 $74

    ld l, a                                       ; $6330: $6f
    ld bc, $6f72                                  ; $6331: $01 $72 $6f

jr_01f_6334:
    ld l, h                                       ; $6334: $6c
    ld l, h                                       ; $6335: $6c
    jr nz, jr_01f_63ac                            ; $6336: $20 $74

    ld l, b                                       ; $6338: $68
    ld h, l                                       ; $6339: $65
    jr nz, jr_01f_639e                            ; $633a: $20 $62

jr_01f_633c:
    ld h, c                                       ; $633c: $61
    ld l, h                                       ; $633d: $6c
    ld l, h                                       ; $633e: $6c
    ld bc, $6361                                  ; $633f: $01 $61 $63
    ld [hl], d                                    ; $6342: $72
    ld l, a                                       ; $6343: $6f
    ld [hl], e                                    ; $6344: $73
    ld [hl], e                                    ; $6345: $73
    jr nz, jr_01f_63bc                            ; $6346: $20 $74

    ld l, b                                       ; $6348: $68
    ld h, l                                       ; $6349: $65

jr_01f_634a:
    jr nz, jr_01f_63b3                            ; $634a: $20 $67

    ld [hl], d                                    ; $634c: $72
    ld h, l                                       ; $634d: $65
    ld h, l                                       ; $634e: $65
    ld l, [hl]                                    ; $634f: $6e
    ld l, $03                                     ; $6350: $2e $03
    nop                                           ; $6352: $00
    ld d, h                                       ; $6353: $54
    ld l, b                                       ; $6354: $68
    ld h, l                                       ; $6355: $65
    jr nz, @+$72                                  ; $6356: $20 $70

jr_01f_6358:
    ld h, c                                       ; $6358: $61
    ld [hl], h                                    ; $6359: $74
    ld l, b                                       ; $635a: $68
    jr nz, jr_01f_63d1                            ; $635b: $20 $74

    ld l, b                                       ; $635d: $68

jr_01f_635e:
    ld h, l                                       ; $635e: $65
    jr nz, @+$64                                  ; $635f: $20 $62

    ld h, c                                       ; $6361: $61
    ld l, h                                       ; $6362: $6c
    ld l, h                                       ; $6363: $6c
    ld bc, $7274                                  ; $6364: $01 $74 $72
    ld h, c                                       ; $6367: $61
    halt                                          ; $6368: $76
    ld h, l                                       ; $6369: $65
    ld l, h                                       ; $636a: $6c
    ld [hl], e                                    ; $636b: $73
    jr nz, jr_01f_63e5                            ; $636c: $20 $77

    ld l, b                                       ; $636e: $68
    ld h, l                                       ; $636f: $65
    ld l, [hl]                                    ; $6370: $6e

jr_01f_6371:
    jr nz, jr_01f_63e3                            ; $6371: $20 $70

    ld [hl], l                                    ; $6373: $75
    ld [hl], h                                    ; $6374: $74
    ld [hl], h                                    ; $6375: $74
    ld l, $01                                     ; $6376: $2e $01
    ld c, c                                       ; $6378: $49
    ld h, [hl]                                    ; $6379: $66
    jr nz, jr_01f_63f5                            ; $637a: $20 $79

    ld l, a                                       ; $637c: $6f

jr_01f_637d:
    ld [hl], l                                    ; $637d: $75
    jr nz, jr_01f_63e3                            ; $637e: $20 $63

jr_01f_6380:
    ld h, c                                       ; $6380: $61
    ld l, [hl]                                    ; $6381: $6e
    jr nz, jr_01f_63f6                            ; $6382: $20 $72

    ld h, l                                       ; $6384: $65
    ld h, c                                       ; $6385: $61
    ld h, h                                       ; $6386: $64
    ld [bc], a                                    ; $6387: $02
    ld [hl], b                                    ; $6388: $70

jr_01f_6389:
    ld [hl], l                                    ; $6389: $75
    ld [hl], h                                    ; $638a: $74
    ld [hl], h                                    ; $638b: $74
    ld l, c                                       ; $638c: $69
    ld l, [hl]                                    ; $638d: $6e
    ld h, a                                       ; $638e: $67
    jr nz, @+$6e                                  ; $638f: $20 $6c

    ld l, c                                       ; $6391: $69
    ld l, [hl]                                    ; $6392: $6e
    ld h, l                                       ; $6393: $65
    ld [hl], e                                    ; $6394: $73
    inc l                                         ; $6395: $2c
    ld bc, $7469                                  ; $6396: $01 $69 $74
    daa                                           ; $6399: $27
    ld l, h                                       ; $639a: $6c
    ld l, h                                       ; $639b: $6c
    jr nz, jr_01f_6412                            ; $639c: $20 $74

jr_01f_639e:
    ld h, c                                       ; $639e: $61
    ld l, e                                       ; $639f: $6b

jr_01f_63a0:
    ld h, l                                       ; $63a0: $65
    jr nz, jr_01f_6409                            ; $63a1: $20 $66

    ld h, l                                       ; $63a3: $65

jr_01f_63a4:
    ld [hl], a                                    ; $63a4: $77
    ld h, l                                       ; $63a5: $65
    ld [hl], d                                    ; $63a6: $72
    ld bc, $7570                                  ; $63a7: $01 $70 $75
    ld [hl], h                                    ; $63aa: $74
    ld [hl], h                                    ; $63ab: $74

jr_01f_63ac:
    ld [hl], e                                    ; $63ac: $73
    jr nz, jr_01f_6423                            ; $63ad: $20 $74

    ld l, a                                       ; $63af: $6f
    jr nz, jr_01f_641a                            ; $63b0: $20 $68

    ld l, a                                       ; $63b2: $6f

jr_01f_63b3:
    ld l, h                                       ; $63b3: $6c
    ld h, l                                       ; $63b4: $65
    jr nz, jr_01f_6426                            ; $63b5: $20 $6f

    ld [hl], l                                    ; $63b7: $75
    ld [hl], h                                    ; $63b8: $74
    ld l, $03                                     ; $63b9: $2e $03
    nop                                           ; $63bb: $00

jr_01f_63bc:
    ld b, c                                       ; $63bc: $41
    jr nz, jr_01f_6433                            ; $63bd: $20 $74

    ld l, a                                       ; $63bf: $6f
    ld l, a                                       ; $63c0: $6f
    ld l, h                                       ; $63c1: $6c
    jr nz, jr_01f_6439                            ; $63c2: $20 $75

    ld [hl], e                                    ; $63c4: $73
    ld h, l                                       ; $63c5: $65
    ld h, h                                       ; $63c6: $64
    jr nz, jr_01f_643d                            ; $63c7: $20 $74

    ld l, a                                       ; $63c9: $6f
    ld bc, $6d73                                  ; $63ca: $01 $73 $6d
    ld l, a                                       ; $63cd: $6f
    ld l, a                                       ; $63ce: $6f
    ld [hl], h                                    ; $63cf: $74
    ld l, b                                       ; $63d0: $68

jr_01f_63d1:
    jr nz, jr_01f_6442                            ; $63d1: $20 $6f

    ld [hl], l                                    ; $63d3: $75
    ld [hl], h                                    ; $63d4: $74
    jr nz, jr_01f_644b                            ; $63d5: $20 $74

    ld l, b                                       ; $63d7: $68
    ld h, l                                       ; $63d8: $65
    ld bc, $6173                                  ; $63d9: $01 $73 $61
    ld l, [hl]                                    ; $63dc: $6e
    ld h, h                                       ; $63dd: $64
    jr nz, jr_01f_6449                            ; $63de: $20 $69

    ld l, [hl]                                    ; $63e0: $6e
    jr nz, @+$63                                  ; $63e1: $20 $61

jr_01f_63e3:
    jr nz, jr_01f_6447                            ; $63e3: $20 $62

jr_01f_63e5:
    ld [hl], l                                    ; $63e5: $75
    ld l, [hl]                                    ; $63e6: $6e
    ld l, e                                       ; $63e7: $6b
    ld h, l                                       ; $63e8: $65
    ld [hl], d                                    ; $63e9: $72
    ld l, $03                                     ; $63ea: $2e $03
    nop                                           ; $63ec: $00
    ld b, c                                       ; $63ed: $41
    jr nz, jr_01f_6453                            ; $63ee: $20 $63

    ld l, a                                       ; $63f0: $6f
    ld l, l                                       ; $63f1: $6d
    ld h, l                                       ; $63f2: $65
    ld h, d                                       ; $63f3: $62
    ld h, c                                       ; $63f4: $61

jr_01f_63f5:
    ld h, e                                       ; $63f5: $63

jr_01f_63f6:
    ld l, e                                       ; $63f6: $6b
    jr nz, jr_01f_645f                            ; $63f7: $20 $66

    ld [hl], d                                    ; $63f9: $72
    ld l, a                                       ; $63fa: $6f
    ld l, l                                       ; $63fb: $6d
    ld bc, $2061                                  ; $63fc: $01 $61 $20
    ld l, l                                       ; $63ff: $6d
    ld l, c                                       ; $6400: $69
    ld [hl], e                                    ; $6401: $73
    dec l                                         ; $6402: $2d
    ld [hl], e                                    ; $6403: $73
    ld l, b                                       ; $6404: $68
    ld l, a                                       ; $6405: $6f
    ld [hl], h                                    ; $6406: $74
    jr nz, jr_01f_6478                            ; $6407: $20 $6f

jr_01f_6409:
    ld [hl], d                                    ; $6409: $72
    jr nz, jr_01f_646d                            ; $640a: $20 $61

    ld bc, $6162                                  ; $640c: $01 $62 $61
    ld h, h                                       ; $640f: $64
    jr nz, jr_01f_647e                            ; $6410: $20 $6c

jr_01f_6412:
    ld l, c                                       ; $6412: $69
    ld h, l                                       ; $6413: $65
    inc l                                         ; $6414: $2c
    jr nz, jr_01f_6478                            ; $6415: $20 $61

    ld [hl], e                                    ; $6417: $73
    jr nz, @+$6b                                  ; $6418: $20 $69

jr_01f_641a:
    ld l, [hl]                                    ; $641a: $6e
    ld [bc], a                                    ; $641b: $02
    ld [hl+], a                                   ; $641c: $22
    ld l, [hl]                                    ; $641d: $6e
    ld l, c                                       ; $641e: $69
    ld h, e                                       ; $641f: $63
    ld h, l                                       ; $6420: $65
    jr nz, @+$74                                  ; $6421: $20 $72

jr_01f_6423:
    ld h, l                                       ; $6423: $65
    ld h, e                                       ; $6424: $63
    ld l, a                                       ; $6425: $6f

jr_01f_6426:
    halt                                          ; $6426: $76
    ld h, l                                       ; $6427: $65
    ld [hl], d                                    ; $6428: $72
    ld a, c                                       ; $6429: $79
    ld hl, $0322                                  ; $642a: $21 $22 $03
    nop                                           ; $642d: $00
    ld b, c                                       ; $642e: $41
    ld [hl], d                                    ; $642f: $72
    ld h, l                                       ; $6430: $65
    ld h, c                                       ; $6431: $61
    ld [hl], e                                    ; $6432: $73

jr_01f_6433:
    jr nz, jr_01f_64a4                            ; $6433: $20 $6f

    ld h, [hl]                                    ; $6435: $66
    ld h, [hl]                                    ; $6436: $66
    jr nz, jr_01f_64ad                            ; $6437: $20 $74

jr_01f_6439:
    ld l, b                                       ; $6439: $68
    ld h, l                                       ; $643a: $65
    jr nz, jr_01f_64a3                            ; $643b: $20 $66

jr_01f_643d:
    ld h, c                                       ; $643d: $61
    ld l, c                                       ; $643e: $69
    ld [hl], d                                    ; $643f: $72
    ld [hl], a                                    ; $6440: $77
    ld h, c                                       ; $6441: $61

jr_01f_6442:
    ld a, c                                       ; $6442: $79
    ld bc, $6877                                  ; $6443: $01 $77 $68
    ld h, l                                       ; $6446: $65

jr_01f_6447:
    ld [hl], d                                    ; $6447: $72
    ld h, l                                       ; $6448: $65

jr_01f_6449:
    jr nz, jr_01f_64bf                            ; $6449: $20 $74

jr_01f_644b:
    ld l, b                                       ; $644b: $68
    ld h, l                                       ; $644c: $65
    jr nz, @+$69                                  ; $644d: $20 $67

    ld [hl], d                                    ; $644f: $72
    ld h, c                                       ; $6450: $61
    ld [hl], e                                    ; $6451: $73
    ld [hl], e                                    ; $6452: $73

jr_01f_6453:
    jr nz, jr_01f_64be                            ; $6453: $20 $69

    ld [hl], e                                    ; $6455: $73
    ld bc, $6f6c                                  ; $6456: $01 $6c $6f
    ld l, [hl]                                    ; $6459: $6e
    ld h, a                                       ; $645a: $67
    ld h, l                                       ; $645b: $65
    ld [hl], d                                    ; $645c: $72
    ld l, $02                                     ; $645d: $2e $02

jr_01f_645f:
    ld d, h                                       ; $645f: $54
    ld l, b                                       ; $6460: $68
    ld h, l                                       ; $6461: $65
    jr nz, @+$69                                  ; $6462: $20 $67

    ld [hl], d                                    ; $6464: $72
    ld h, c                                       ; $6465: $61
    ld [hl], e                                    ; $6466: $73
    ld [hl], e                                    ; $6467: $73
    jr nz, jr_01f_64d7                            ; $6468: $20 $6d

    ld h, c                                       ; $646a: $61
    ld l, e                                       ; $646b: $6b
    ld h, l                                       ; $646c: $65

jr_01f_646d:
    ld [hl], e                                    ; $646d: $73
    jr nz, jr_01f_64d9                            ; $646e: $20 $69

    ld [hl], h                                    ; $6470: $74
    ld bc, $6168                                  ; $6471: $01 $68 $61
    ld [hl], d                                    ; $6474: $72
    ld h, h                                       ; $6475: $64
    ld h, l                                       ; $6476: $65
    ld [hl], d                                    ; $6477: $72

jr_01f_6478:
    jr nz, jr_01f_64ee                            ; $6478: $20 $74

    ld l, a                                       ; $647a: $6f
    jr nz, @+$75                                  ; $647b: $20 $73

    ld [hl], a                                    ; $647d: $77

jr_01f_647e:
    ld l, c                                       ; $647e: $69
    ld l, [hl]                                    ; $647f: $6e
    ld h, a                                       ; $6480: $67
    ld bc, $6874                                  ; $6481: $01 $74 $68
    ld h, l                                       ; $6484: $65
    ld [hl], d                                    ; $6485: $72
    ld h, l                                       ; $6486: $65
    ld l, $03                                     ; $6487: $2e $03
    nop                                           ; $6489: $00
    ld b, c                                       ; $648a: $41
    jr nz, @+$74                                  ; $648b: $20 $72

    ld l, a                                       ; $648d: $6f
    ld [hl], l                                    ; $648e: $75
    ld l, [hl]                                    ; $648f: $6e
    ld h, h                                       ; $6490: $64
    jr nz, @+$6b                                  ; $6491: $20 $69

    ld [hl], e                                    ; $6493: $73
    jr nz, jr_01f_64c7                            ; $6494: $20 $31

    jr c, jr_01f_6499                             ; $6496: $38 $01

    ld l, b                                       ; $6498: $68

jr_01f_6499:
    ld l, a                                       ; $6499: $6f
    ld l, h                                       ; $649a: $6c
    ld h, l                                       ; $649b: $65
    ld [hl], e                                    ; $649c: $73
    jr nz, jr_01f_650e                            ; $649d: $20 $6f

    ld h, [hl]                                    ; $649f: $66
    jr nz, jr_01f_6509                            ; $64a0: $20 $67

    ld l, a                                       ; $64a2: $6f

jr_01f_64a3:
    ld l, h                                       ; $64a3: $6c

jr_01f_64a4:
    ld h, [hl]                                    ; $64a4: $66
    ld l, $03                                     ; $64a5: $2e $03
    nop                                           ; $64a7: $00
    ld b, c                                       ; $64a8: $41
    ld h, [hl]                                    ; $64a9: $66
    ld [hl], h                                    ; $64aa: $74
    ld h, l                                       ; $64ab: $65
    ld [hl], d                                    ; $64ac: $72

jr_01f_64ad:
    jr nz, jr_01f_6528                            ; $64ad: $20 $79

    ld l, a                                       ; $64af: $6f
    ld [hl], l                                    ; $64b0: $75
    jr nz, @+$6a                                  ; $64b1: $20 $68

    ld l, c                                       ; $64b3: $69
    ld [hl], h                                    ; $64b4: $74
    jr nz, @+$76                                  ; $64b5: $20 $74

    ld l, b                                       ; $64b7: $68
    ld h, l                                       ; $64b8: $65
    ld bc, $6162                                  ; $64b9: $01 $62 $61
    ld l, h                                       ; $64bc: $6c
    ld l, h                                       ; $64bd: $6c

jr_01f_64be:
    inc l                                         ; $64be: $2c

jr_01f_64bf:
    jr nz, jr_01f_6535                            ; $64bf: $20 $74

    ld l, b                                       ; $64c1: $68
    ld h, l                                       ; $64c2: $65
    jr nz, jr_01f_6537                            ; $64c3: $20 $72

    ld [hl], l                                    ; $64c5: $75
    ld l, [hl]                                    ; $64c6: $6e

jr_01f_64c7:
    jr nz, @+$6b                                  ; $64c7: $20 $69

    ld [hl], e                                    ; $64c9: $73
    ld bc, $6874                                  ; $64ca: $01 $74 $68
    ld h, l                                       ; $64cd: $65
    jr nz, jr_01f_6534                            ; $64ce: $20 $64

    ld l, c                                       ; $64d0: $69
    ld [hl], e                                    ; $64d1: $73
    ld [hl], h                                    ; $64d2: $74
    ld h, c                                       ; $64d3: $61
    ld l, [hl]                                    ; $64d4: $6e
    ld h, e                                       ; $64d5: $63
    ld h, l                                       ; $64d6: $65

jr_01f_64d7:
    jr nz, jr_01f_6542                            ; $64d7: $20 $69

jr_01f_64d9:
    ld [hl], h                                    ; $64d9: $74
    ld [bc], a                                    ; $64da: $02
    ld l, l                                       ; $64db: $6d
    ld l, a                                       ; $64dc: $6f
    halt                                          ; $64dd: $76
    ld h, l                                       ; $64de: $65
    ld [hl], e                                    ; $64df: $73
    jr nz, jr_01f_6548                            ; $64e0: $20 $66

    ld [hl], d                                    ; $64e2: $72
    ld l, a                                       ; $64e3: $6f
    ld l, l                                       ; $64e4: $6d
    jr nz, jr_01f_6550                            ; $64e5: $20 $69

    ld [hl], h                                    ; $64e7: $74
    ld [hl], e                                    ; $64e8: $73
    ld bc, $6966                                  ; $64e9: $01 $66 $69
    ld [hl], d                                    ; $64ec: $72
    ld [hl], e                                    ; $64ed: $73

jr_01f_64ee:
    ld [hl], h                                    ; $64ee: $74
    jr nz, jr_01f_6553                            ; $64ef: $20 $62

    ld l, a                                       ; $64f1: $6f
    ld [hl], l                                    ; $64f2: $75
    ld l, [hl]                                    ; $64f3: $6e
    ld h, e                                       ; $64f4: $63
    ld h, l                                       ; $64f5: $65
    jr nz, jr_01f_656d                            ; $64f6: $20 $75

    ld l, [hl]                                    ; $64f8: $6e
    dec l                                         ; $64f9: $2d
    ld bc, $6974                                  ; $64fa: $01 $74 $69
    ld l, h                                       ; $64fd: $6c
    jr nz, @+$6b                                  ; $64fe: $20 $69

    ld [hl], h                                    ; $6500: $74
    jr nz, jr_01f_6576                            ; $6501: $20 $73

    ld [hl], h                                    ; $6503: $74
    ld l, a                                       ; $6504: $6f
    ld [hl], b                                    ; $6505: $70
    ld [hl], e                                    ; $6506: $73
    ld l, $03                                     ; $6507: $2e $03

jr_01f_6509:
    nop                                           ; $6509: $00
    ld d, h                                       ; $650a: $54
    ld l, b                                       ; $650b: $68
    ld l, c                                       ; $650c: $69
    ld [hl], e                                    ; $650d: $73

jr_01f_650e:
    jr nz, jr_01f_6579                            ; $650e: $20 $69

    ld [hl], e                                    ; $6510: $73
    jr nz, jr_01f_658a                            ; $6511: $20 $77

    ld l, b                                       ; $6513: $68
    ld h, l                                       ; $6514: $65
    ld l, [hl]                                    ; $6515: $6e
    jr nz, jr_01f_658c                            ; $6516: $20 $74

    ld l, b                                       ; $6518: $68
    ld h, l                                       ; $6519: $65
    ld bc, $6162                                  ; $651a: $01 $62 $61
    ld l, h                                       ; $651d: $6c
    ld l, h                                       ; $651e: $6c
    jr nz, jr_01f_658a                            ; $651f: $20 $69

    ld [hl], e                                    ; $6521: $73
    jr nz, jr_01f_6596                            ; $6522: $20 $72

    ld l, a                                       ; $6524: $6f
    ld l, h                                       ; $6525: $6c
    ld l, h                                       ; $6526: $6c
    ld l, c                                       ; $6527: $69

jr_01f_6528:
    ld l, [hl]                                    ; $6528: $6e
    ld h, a                                       ; $6529: $67
    ld bc, $6f74                                  ; $652a: $01 $74 $6f
    ld [hl], a                                    ; $652d: $77
    ld h, c                                       ; $652e: $61
    ld [hl], d                                    ; $652f: $72
    ld h, h                                       ; $6530: $64
    jr nz, jr_01f_65a7                            ; $6531: $20 $74

    ld l, b                                       ; $6533: $68

jr_01f_6534:
    ld h, l                                       ; $6534: $65

jr_01f_6535:
    jr nz, jr_01f_659a                            ; $6535: $20 $63

jr_01f_6537:
    ld [hl], l                                    ; $6537: $75
    ld [hl], b                                    ; $6538: $70
    ld l, $02                                     ; $6539: $2e $02
    ld d, d                                       ; $653b: $52
    ld [hl], l                                    ; $653c: $75
    ld l, [hl]                                    ; $653d: $6e
    ld l, [hl]                                    ; $653e: $6e
    ld l, c                                       ; $653f: $69
    ld l, [hl]                                    ; $6540: $6e
    ld h, a                                       ; $6541: $67

jr_01f_6542:
    jr nz, jr_01f_65a6                            ; $6542: $20 $62

    ld h, c                                       ; $6544: $61
    ld l, h                                       ; $6545: $6c
    ld l, h                                       ; $6546: $6c
    ld [hl], e                                    ; $6547: $73

jr_01f_6548:
    ld bc, $6574                                  ; $6548: $01 $74 $65
    ld l, [hl]                                    ; $654b: $6e
    ld h, h                                       ; $654c: $64
    jr nz, jr_01f_65c3                            ; $654d: $20 $74

    ld l, a                                       ; $654f: $6f

jr_01f_6550:
    jr nz, jr_01f_65b5                            ; $6550: $20 $63

    ld h, c                                       ; $6552: $61

jr_01f_6553:
    ld [hl], h                                    ; $6553: $74
    ld h, e                                       ; $6554: $63
    ld l, b                                       ; $6555: $68
    jr nz, jr_01f_65cc                            ; $6556: $20 $74

    ld l, b                                       ; $6558: $68
    ld h, l                                       ; $6559: $65
    ld bc, $696c                                  ; $655a: $01 $6c $69
    ld l, [hl]                                    ; $655d: $6e
    ld h, l                                       ; $655e: $65
    jr nz, jr_01f_65c2                            ; $655f: $20 $61

    ld l, [hl]                                    ; $6561: $6e
    ld h, h                                       ; $6562: $64
    jr nz, @+$75                                  ; $6563: $20 $73

    ld l, c                                       ; $6565: $69
    ld l, [hl]                                    ; $6566: $6e
    ld l, e                                       ; $6567: $6b
    ld l, $03                                     ; $6568: $2e $03
    nop                                           ; $656a: $00
    ld d, h                                       ; $656b: $54
    ld l, b                                       ; $656c: $68

jr_01f_656d:
    ld h, l                                       ; $656d: $65
    jr nz, jr_01f_65e0                            ; $656e: $20 $70

    ld h, l                                       ; $6570: $65
    ld [hl], d                                    ; $6571: $72
    ld h, e                                       ; $6572: $63
    ld h, l                                       ; $6573: $65
    ld l, [hl]                                    ; $6574: $6e
    ld [hl], h                                    ; $6575: $74

jr_01f_6576:
    ld h, c                                       ; $6576: $61
    ld h, a                                       ; $6577: $67
    ld h, l                                       ; $6578: $65

jr_01f_6579:
    jr nz, jr_01f_65ea                            ; $6579: $20 $6f

    ld h, [hl]                                    ; $657b: $66
    ld bc, $6162                                  ; $657c: $01 $62 $61
    ld l, h                                       ; $657f: $6c
    ld l, h                                       ; $6580: $6c
    ld [hl], e                                    ; $6581: $73
    jr nz, @+$6a                                  ; $6582: $20 $68

    ld l, a                                       ; $6584: $6f
    ld l, h                                       ; $6585: $6c
    ld h, l                                       ; $6586: $65
    ld h, h                                       ; $6587: $64
    dec l                                         ; $6588: $2d
    ld l, a                                       ; $6589: $6f

jr_01f_658a:
    ld [hl], l                                    ; $658a: $75
    ld [hl], h                                    ; $658b: $74

jr_01f_658c:
    jr nz, jr_01f_65ef                            ; $658c: $20 $61

    ld [hl], h                                    ; $658e: $74
    ld bc, $6170                                  ; $658f: $01 $70 $61
    ld [hl], d                                    ; $6592: $72
    jr nz, @+$71                                  ; $6593: $20 $6f

    ld [hl], d                                    ; $6595: $72

jr_01f_6596:
    jr nz, @+$64                                  ; $6596: $20 $62

    ld h, l                                       ; $6598: $65
    ld [hl], h                                    ; $6599: $74

jr_01f_659a:
    ld [hl], h                                    ; $659a: $74
    ld h, l                                       ; $659b: $65
    ld [hl], d                                    ; $659c: $72
    jr nz, jr_01f_6600                            ; $659d: $20 $61

    ld h, [hl]                                    ; $659f: $66
    ld [hl], h                                    ; $65a0: $74
    ld h, l                                       ; $65a1: $65
    ld [hl], d                                    ; $65a2: $72
    ld [bc], a                                    ; $65a3: $02
    ld l, h                                       ; $65a4: $6c
    ld h, c                                       ; $65a5: $61

jr_01f_65a6:
    ld l, [hl]                                    ; $65a6: $6e

jr_01f_65a7:
    ld h, h                                       ; $65a7: $64
    ld l, c                                       ; $65a8: $69
    ld l, [hl]                                    ; $65a9: $6e
    ld h, a                                       ; $65aa: $67
    jr nz, jr_01f_6616                            ; $65ab: $20 $69

    ld l, [hl]                                    ; $65ad: $6e
    jr nz, jr_01f_6611                            ; $65ae: $20 $61

    jr nz, jr_01f_6614                            ; $65b0: $20 $62

    ld [hl], l                                    ; $65b2: $75
    ld l, [hl]                                    ; $65b3: $6e
    ld l, e                                       ; $65b4: $6b

jr_01f_65b5:
    ld h, l                                       ; $65b5: $65
    ld [hl], d                                    ; $65b6: $72
    ld l, $03                                     ; $65b7: $2e $03
    nop                                           ; $65b9: $00
    ld b, c                                       ; $65ba: $41
    jr nz, @+$65                                  ; $65bb: $20 $63

    ld l, h                                       ; $65bd: $6c
    ld [hl], l                                    ; $65be: $75
    ld h, d                                       ; $65bf: $62
    jr nz, jr_01f_6637                            ; $65c0: $20 $75

jr_01f_65c2:
    ld [hl], e                                    ; $65c2: $73

jr_01f_65c3:
    ld h, l                                       ; $65c3: $65
    ld h, h                                       ; $65c4: $64
    jr nz, jr_01f_663b                            ; $65c5: $20 $74

    ld l, a                                       ; $65c7: $6f
    ld bc, $6567                                  ; $65c8: $01 $67 $65
    ld [hl], h                                    ; $65cb: $74

jr_01f_65cc:
    jr nz, jr_01f_662f                            ; $65cc: $20 $61

    jr nz, jr_01f_6632                            ; $65ce: $20 $62

    ld h, c                                       ; $65d0: $61
    ld l, h                                       ; $65d1: $6c
    ld l, h                                       ; $65d2: $6c
    jr nz, jr_01f_6644                            ; $65d3: $20 $6f

    ld [hl], l                                    ; $65d5: $75
    ld [hl], h                                    ; $65d6: $74
    ld bc, $666f                                  ; $65d7: $01 $6f $66
    jr nz, @+$63                                  ; $65da: $20 $61

    jr nz, jr_01f_6640                            ; $65dc: $20 $62

    ld [hl], l                                    ; $65de: $75
    ld l, [hl]                                    ; $65df: $6e

jr_01f_65e0:
    ld l, e                                       ; $65e0: $6b
    ld h, l                                       ; $65e1: $65
    ld [hl], d                                    ; $65e2: $72
    ld l, $02                                     ; $65e3: $2e $02
    ld c, c                                       ; $65e5: $49
    ld [hl], h                                    ; $65e6: $74
    jr nz, jr_01f_6651                            ; $65e7: $20 $68

    ld h, c                                       ; $65e9: $61

jr_01f_65ea:
    ld [hl], e                                    ; $65ea: $73
    jr nz, @+$63                                  ; $65eb: $20 $61

    jr nz, jr_01f_6662                            ; $65ed: $20 $73

jr_01f_65ef:
    ld l, a                                       ; $65ef: $6f
    ld l, h                                       ; $65f0: $6c
    ld h, l                                       ; $65f1: $65
    ld bc, $6874                                  ; $65f2: $01 $74 $68
    ld h, c                                       ; $65f5: $61
    ld [hl], h                                    ; $65f6: $74
    daa                                           ; $65f7: $27
    ld [hl], e                                    ; $65f8: $73
    jr nz, jr_01f_6670                            ; $65f9: $20 $75

    ld [hl], e                                    ; $65fb: $73
    ld h, l                                       ; $65fc: $65
    ld h, h                                       ; $65fd: $64
    jr nz, jr_01f_6666                            ; $65fe: $20 $66

jr_01f_6600:
    ld l, a                                       ; $6600: $6f
    ld [hl], d                                    ; $6601: $72
    ld bc, $7865                                  ; $6602: $01 $65 $78
    ld [hl], b                                    ; $6605: $70
    ld l, h                                       ; $6606: $6c
    ld l, a                                       ; $6607: $6f
    ld [hl], e                                    ; $6608: $73
    ld l, c                                       ; $6609: $69
    ld l, a                                       ; $660a: $6f
    ld l, [hl]                                    ; $660b: $6e
    jr nz, jr_01f_6681                            ; $660c: $20 $73

    ld l, b                                       ; $660e: $68
    ld l, a                                       ; $660f: $6f
    ld [hl], h                                    ; $6610: $74

jr_01f_6611:
    ld [hl], e                                    ; $6611: $73
    ld l, $03                                     ; $6612: $2e $03

jr_01f_6614:
    nop                                           ; $6614: $00
    ld d, h                                       ; $6615: $54

jr_01f_6616:
    ld l, b                                       ; $6616: $68
    ld h, l                                       ; $6617: $65
    jr nz, @+$70                                  ; $6618: $20 $6e

    ld [hl], l                                    ; $661a: $75
    ld l, l                                       ; $661b: $6d
    ld h, d                                       ; $661c: $62
    ld h, l                                       ; $661d: $65
    ld [hl], d                                    ; $661e: $72
    jr nz, @+$71                                  ; $661f: $20 $6f

    ld h, [hl]                                    ; $6621: $66
    ld bc, $7473                                  ; $6622: $01 $73 $74
    ld [hl], d                                    ; $6625: $72
    ld l, a                                       ; $6626: $6f
    ld l, e                                       ; $6627: $6b
    ld h, l                                       ; $6628: $65
    ld [hl], e                                    ; $6629: $73
    jr nz, @+$76                                  ; $662a: $20 $74

    ld h, c                                       ; $662c: $61
    ld l, e                                       ; $662d: $6b
    ld h, l                                       ; $662e: $65

jr_01f_662f:
    ld l, [hl]                                    ; $662f: $6e
    jr nz, jr_01f_66a6                            ; $6630: $20 $74

jr_01f_6632:
    ld l, a                                       ; $6632: $6f
    ld bc, $6f68                                  ; $6633: $01 $68 $6f
    ld l, h                                       ; $6636: $6c

jr_01f_6637:
    ld h, l                                       ; $6637: $65
    dec l                                         ; $6638: $2d
    ld l, a                                       ; $6639: $6f
    ld [hl], l                                    ; $663a: $75

jr_01f_663b:
    ld [hl], h                                    ; $663b: $74
    ld l, $03                                     ; $663c: $2e $03
    nop                                           ; $663e: $00
    ld b, c                                       ; $663f: $41

jr_01f_6640:
    jr nz, jr_01f_66aa                            ; $6640: $20 $68

    ld h, c                                       ; $6642: $61
    ld l, [hl]                                    ; $6643: $6e

jr_01f_6644:
    ld h, h                                       ; $6644: $64
    ld l, c                                       ; $6645: $69
    ld h, e                                       ; $6646: $63
    ld h, c                                       ; $6647: $61
    ld [hl], b                                    ; $6648: $70
    jr nz, jr_01f_66ba                            ; $6649: $20 $6f

    ld h, [hl]                                    ; $664b: $66
    ld bc, $657a                                  ; $664c: $01 $7a $65
    ld [hl], d                                    ; $664f: $72
    ld l, a                                       ; $6650: $6f

jr_01f_6651:
    ld l, $20                                     ; $6651: $2e $20
    ld d, e                                       ; $6653: $53
    ld l, a                                       ; $6654: $6f
    ld l, l                                       ; $6655: $6d
    ld h, l                                       ; $6656: $65
    ld l, a                                       ; $6657: $6f
    ld l, [hl]                                    ; $6658: $6e
    ld h, l                                       ; $6659: $65
    ld bc, $6977                                  ; $665a: $01 $77 $69
    ld [hl], h                                    ; $665d: $74
    ld l, b                                       ; $665e: $68
    jr nz, @+$70                                  ; $665f: $20 $6e

    ld l, a                                       ; $6661: $6f

jr_01f_6662:
    jr nz, @+$6a                                  ; $6662: $20 $68

    ld h, c                                       ; $6664: $61
    ld l, [hl]                                    ; $6665: $6e

jr_01f_6666:
    ld h, h                                       ; $6666: $64
    ld l, c                                       ; $6667: $69
    ld h, e                                       ; $6668: $63
    ld h, c                                       ; $6669: $61
    ld [hl], b                                    ; $666a: $70
    ld [bc], a                                    ; $666b: $02
    ld l, c                                       ; $666c: $69
    ld [hl], e                                    ; $666d: $73
    jr nz, jr_01f_66d1                            ; $666e: $20 $61

jr_01f_6670:
    jr nz, jr_01f_66e5                            ; $6670: $20 $73

    ld h, e                                       ; $6672: $63
    ld [hl], d                                    ; $6673: $72
    ld h, c                                       ; $6674: $61
    ld [hl], h                                    ; $6675: $74
    ld h, e                                       ; $6676: $63
    ld l, b                                       ; $6677: $68
    ld bc, $6c70                                  ; $6678: $01 $70 $6c
    ld h, c                                       ; $667b: $61
    ld a, c                                       ; $667c: $79
    ld h, l                                       ; $667d: $65
    ld [hl], d                                    ; $667e: $72
    ld l, $03                                     ; $667f: $2e $03

jr_01f_6681:
    nop                                           ; $6681: $00
    ld b, a                                       ; $6682: $47
    ld [hl], d                                    ; $6683: $72
    ld h, c                                       ; $6684: $61
    ld [hl], e                                    ; $6685: $73
    ld [hl], e                                    ; $6686: $73
    jr nz, jr_01f_66fd                            ; $6687: $20 $74

    ld l, b                                       ; $6689: $68
    ld h, c                                       ; $668a: $61
    ld [hl], h                                    ; $668b: $74
    jr nz, jr_01f_66f7                            ; $668c: $20 $69

    ld [hl], e                                    ; $668e: $73
    jr nz, jr_01f_66fd                            ; $668f: $20 $6c

    ld l, a                                       ; $6691: $6f
    ld l, [hl]                                    ; $6692: $6e
    ld h, a                                       ; $6693: $67
    ld h, l                                       ; $6694: $65
    ld [hl], d                                    ; $6695: $72
    ld bc, $6874                                  ; $6696: $01 $74 $68
    ld h, c                                       ; $6699: $61
    ld l, [hl]                                    ; $669a: $6e
    jr nz, jr_01f_6711                            ; $669b: $20 $74

    ld l, b                                       ; $669d: $68
    ld h, l                                       ; $669e: $65
    jr nz, jr_01f_6707                            ; $669f: $20 $66

    ld h, c                                       ; $66a1: $61
    ld l, c                                       ; $66a2: $69
    ld [hl], d                                    ; $66a3: $72
    ld [hl], a                                    ; $66a4: $77
    ld h, c                                       ; $66a5: $61

jr_01f_66a6:
    ld a, c                                       ; $66a6: $79
    jr nz, jr_01f_670b                            ; $66a7: $20 $62

    ld [hl], l                                    ; $66a9: $75

jr_01f_66aa:
    ld [hl], h                                    ; $66aa: $74
    ld bc, $6873                                  ; $66ab: $01 $73 $68
    ld l, a                                       ; $66ae: $6f
    ld [hl], d                                    ; $66af: $72
    ld [hl], h                                    ; $66b0: $74
    ld h, l                                       ; $66b1: $65
    ld [hl], d                                    ; $66b2: $72
    jr nz, jr_01f_6729                            ; $66b3: $20 $74

    ld l, b                                       ; $66b5: $68
    ld h, c                                       ; $66b6: $61
    ld l, [hl]                                    ; $66b7: $6e
    jr nz, jr_01f_672e                            ; $66b8: $20 $74

jr_01f_66ba:
    ld l, b                                       ; $66ba: $68
    ld h, l                                       ; $66bb: $65
    jr nz, @+$74                                  ; $66bc: $20 $72

    ld l, a                                       ; $66be: $6f
    ld [hl], l                                    ; $66bf: $75
    ld h, a                                       ; $66c0: $67
    ld l, b                                       ; $66c1: $68
    ld l, $02                                     ; $66c2: $2e $02
    ld c, h                                       ; $66c4: $4c
    ld h, c                                       ; $66c5: $61
    ld l, [hl]                                    ; $66c6: $6e
    ld h, h                                       ; $66c7: $64
    ld l, c                                       ; $66c8: $69
    ld l, [hl]                                    ; $66c9: $6e
    ld h, a                                       ; $66ca: $67
    jr nz, jr_01f_6736                            ; $66cb: $20 $69

    ld l, [hl]                                    ; $66cd: $6e
    jr nz, jr_01f_6743                            ; $66ce: $20 $73

    ld h, l                                       ; $66d0: $65

jr_01f_66d1:
    ld l, l                                       ; $66d1: $6d
    ld l, c                                       ; $66d2: $69
    dec l                                         ; $66d3: $2d
    ld [hl], d                                    ; $66d4: $72
    ld l, a                                       ; $66d5: $6f
    ld [hl], l                                    ; $66d6: $75
    ld h, a                                       ; $66d7: $67
    ld l, b                                       ; $66d8: $68
    ld bc, $7369                                  ; $66d9: $01 $69 $73
    jr nz, jr_01f_674b                            ; $66dc: $20 $6d

    ld [hl], l                                    ; $66de: $75
    ld h, e                                       ; $66df: $63
    ld l, b                                       ; $66e0: $68
    jr nz, jr_01f_6745                            ; $66e1: $20 $62

    ld h, l                                       ; $66e3: $65
    ld [hl], h                                    ; $66e4: $74

jr_01f_66e5:
    ld [hl], h                                    ; $66e5: $74
    ld h, l                                       ; $66e6: $65
    ld [hl], d                                    ; $66e7: $72
    jr nz, @+$76                                  ; $66e8: $20 $74

    ld l, b                                       ; $66ea: $68
    ld h, c                                       ; $66eb: $61
    ld l, [hl]                                    ; $66ec: $6e
    ld bc, $616c                                  ; $66ed: $01 $6c $61
    ld l, [hl]                                    ; $66f0: $6e
    ld h, h                                       ; $66f1: $64
    ld l, c                                       ; $66f2: $69
    ld l, [hl]                                    ; $66f3: $6e
    ld h, a                                       ; $66f4: $67
    jr nz, jr_01f_6760                            ; $66f5: $20 $69

jr_01f_66f7:
    ld l, [hl]                                    ; $66f7: $6e
    jr nz, jr_01f_676c                            ; $66f8: $20 $72

    ld l, a                                       ; $66fa: $6f
    ld [hl], l                                    ; $66fb: $75
    ld h, a                                       ; $66fc: $67

jr_01f_66fd:
    ld l, b                                       ; $66fd: $68
    ld l, $03                                     ; $66fe: $2e $03
    nop                                           ; $6700: $00
    ld d, h                                       ; $6701: $54
    ld l, b                                       ; $6702: $68
    ld h, l                                       ; $6703: $65
    jr nz, jr_01f_6776                            ; $6704: $20 $70

    ld l, a                                       ; $6706: $6f

jr_01f_6707:
    ld l, h                                       ; $6707: $6c
    ld h, l                                       ; $6708: $65
    jr nz, jr_01f_677f                            ; $6709: $20 $74

jr_01f_670b:
    ld l, b                                       ; $670b: $68
    ld h, c                                       ; $670c: $61
    ld [hl], h                                    ; $670d: $74
    ld bc, $6f63                                  ; $670e: $01 $63 $6f

jr_01f_6711:
    ld l, [hl]                                    ; $6711: $6e
    ld l, [hl]                                    ; $6712: $6e
    ld h, l                                       ; $6713: $65
    ld h, e                                       ; $6714: $63
    ld [hl], h                                    ; $6715: $74
    ld [hl], e                                    ; $6716: $73
    jr nz, jr_01f_678d                            ; $6717: $20 $74

    ld l, b                                       ; $6719: $68
    ld h, l                                       ; $671a: $65
    ld bc, $6568                                  ; $671b: $01 $68 $65
    ld h, c                                       ; $671e: $61
    ld h, h                                       ; $671f: $64
    jr nz, @+$76                                  ; $6720: $20 $74

    ld l, a                                       ; $6722: $6f
    jr nz, @+$76                                  ; $6723: $20 $74

    ld l, b                                       ; $6725: $68
    ld h, l                                       ; $6726: $65
    ld [bc], a                                    ; $6727: $02
    ld h, a                                       ; $6728: $67

jr_01f_6729:
    ld [hl], d                                    ; $6729: $72
    ld l, c                                       ; $672a: $69
    ld [hl], b                                    ; $672b: $70
    jr nz, jr_01f_679d                            ; $672c: $20 $6f

jr_01f_672e:
    ld l, [hl]                                    ; $672e: $6e
    jr nz, jr_01f_6792                            ; $672f: $20 $61

    jr nz, @+$65                                  ; $6731: $20 $63

    ld l, h                                       ; $6733: $6c
    ld [hl], l                                    ; $6734: $75
    ld h, d                                       ; $6735: $62

jr_01f_6736:
    ld l, $03                                     ; $6736: $2e $03
    nop                                           ; $6738: $00
    ld c, c                                       ; $6739: $49
    ld h, [hl]                                    ; $673a: $66
    jr nz, @+$7b                                  ; $673b: $20 $79

    ld l, a                                       ; $673d: $6f
    ld [hl], l                                    ; $673e: $75
    jr nz, jr_01f_67a9                            ; $673f: $20 $68

    ld l, c                                       ; $6741: $69
    ld [hl], h                                    ; $6742: $74

jr_01f_6743:
    jr nz, jr_01f_67b9                            ; $6743: $20 $74

jr_01f_6745:
    ld l, b                                       ; $6745: $68
    ld h, l                                       ; $6746: $65
    jr nz, @+$64                                  ; $6747: $20 $62

    ld h, c                                       ; $6749: $61
    ld l, h                                       ; $674a: $6c

jr_01f_674b:
    ld l, h                                       ; $674b: $6c
    ld bc, $6977                                  ; $674c: $01 $77 $69
    ld [hl], h                                    ; $674f: $74
    ld l, b                                       ; $6750: $68
    jr nz, jr_01f_67c7                            ; $6751: $20 $74

    ld l, b                                       ; $6753: $68
    ld h, l                                       ; $6754: $65
    jr nz, jr_01f_67b9                            ; $6755: $20 $62

    ld h, c                                       ; $6757: $61
    ld [hl], e                                    ; $6758: $73
    ld h, l                                       ; $6759: $65
    jr nz, @+$71                                  ; $675a: $20 $6f

    ld h, [hl]                                    ; $675c: $66
    ld bc, $6874                                  ; $675d: $01 $74 $68

jr_01f_6760:
    ld h, l                                       ; $6760: $65
    jr nz, @+$6a                                  ; $6761: $20 $68

    ld h, l                                       ; $6763: $65
    ld h, c                                       ; $6764: $61
    ld h, h                                       ; $6765: $64
    inc l                                         ; $6766: $2c
    jr nz, jr_01f_67dc                            ; $6767: $20 $73

    ld h, l                                       ; $6769: $65
    ld l, [hl]                                    ; $676a: $6e
    ld h, h                                       ; $676b: $64

jr_01f_676c:
    ld l, c                                       ; $676c: $69
    ld l, [hl]                                    ; $676d: $6e
    ld h, a                                       ; $676e: $67
    ld [bc], a                                    ; $676f: $02
    ld [hl], h                                    ; $6770: $74
    ld l, b                                       ; $6771: $68
    ld h, l                                       ; $6772: $65
    jr nz, jr_01f_67d7                            ; $6773: $20 $62

    ld h, c                                       ; $6775: $61

jr_01f_6776:
    ld l, h                                       ; $6776: $6c
    ld l, h                                       ; $6777: $6c
    jr nz, @+$71                                  ; $6778: $20 $6f

    ld h, [hl]                                    ; $677a: $66
    ld h, [hl]                                    ; $677b: $66
    jr nz, jr_01f_67f2                            ; $677c: $20 $74

    ld l, a                                       ; $677e: $6f

jr_01f_677f:
    jr nz, jr_01f_67f5                            ; $677f: $20 $74

    ld l, b                                       ; $6781: $68
    ld h, l                                       ; $6782: $65
    ld bc, $6973                                  ; $6783: $01 $73 $69
    ld h, h                                       ; $6786: $64
    ld h, l                                       ; $6787: $65
    inc l                                         ; $6788: $2c
    jr nz, @+$7b                                  ; $6789: $20 $79

    ld l, a                                       ; $678b: $6f
    ld [hl], l                                    ; $678c: $75

jr_01f_678d:
    jr nz, @+$75                                  ; $678d: $20 $73

    ld l, b                                       ; $678f: $68
    ld h, c                                       ; $6790: $61
    ld l, [hl]                                    ; $6791: $6e

jr_01f_6792:
    ld l, e                                       ; $6792: $6b
    ld h, l                                       ; $6793: $65
    ld h, h                                       ; $6794: $64
    ld bc, $7469                                  ; $6795: $01 $69 $74
    ld hl, $0003                                  ; $6798: $21 $03 $00
    ld d, h                                       ; $679b: $54
    ld l, b                                       ; $679c: $68

jr_01f_679d:
    ld l, c                                       ; $679d: $69
    ld [hl], e                                    ; $679e: $73
    jr nz, @+$6b                                  ; $679f: $20 $69

    ld [hl], e                                    ; $67a1: $73
    jr nz, jr_01f_6805                            ; $67a2: $20 $61

    ld l, [hl]                                    ; $67a4: $6e
    ld l, a                                       ; $67a5: $6f
    ld [hl], h                                    ; $67a6: $74
    ld l, b                                       ; $67a7: $68
    ld h, l                                       ; $67a8: $65

jr_01f_67a9:
    ld [hl], d                                    ; $67a9: $72
    ld bc, $616e                                  ; $67aa: $01 $6e $61
    ld l, l                                       ; $67ad: $6d
    ld h, l                                       ; $67ae: $65
    jr nz, jr_01f_6817                            ; $67af: $20 $66

    ld l, a                                       ; $67b1: $6f
    ld [hl], d                                    ; $67b2: $72
    jr nz, jr_01f_6816                            ; $67b3: $20 $61

    jr nz, jr_01f_6827                            ; $67b5: $20 $70

    ld h, c                                       ; $67b7: $61
    ld [hl], d                                    ; $67b8: $72

jr_01f_67b9:
    jr nz, @+$35                                  ; $67b9: $20 $33

    ld bc, $6f68                                  ; $67bb: $01 $68 $6f
    ld l, h                                       ; $67be: $6c
    ld h, l                                       ; $67bf: $65
    ld l, $02                                     ; $67c0: $2e $02
    ld d, e                                       ; $67c2: $53
    ld l, b                                       ; $67c3: $68
    ld l, a                                       ; $67c4: $6f
    ld [hl], d                                    ; $67c5: $72
    ld [hl], h                                    ; $67c6: $74

jr_01f_67c7:
    jr nz, jr_01f_6832                            ; $67c7: $20 $69

    ld [hl], e                                    ; $67c9: $73
    jr nz, jr_01f_682d                            ; $67ca: $20 $61

    ld l, h                                       ; $67cc: $6c
    ld [hl], e                                    ; $67cd: $73
    ld l, a                                       ; $67ce: $6f
    jr nz, jr_01f_6846                            ; $67cf: $20 $75

    ld [hl], e                                    ; $67d1: $73
    ld h, l                                       ; $67d2: $65
    ld h, h                                       ; $67d3: $64
    ld bc, $6f74                                  ; $67d4: $01 $74 $6f

jr_01f_67d7:
    jr nz, jr_01f_683d                            ; $67d7: $20 $64

    ld h, l                                       ; $67d9: $65
    ld [hl], e                                    ; $67da: $73
    ld h, e                                       ; $67db: $63

jr_01f_67dc:
    ld [hl], d                                    ; $67dc: $72
    ld l, c                                       ; $67dd: $69
    ld h, d                                       ; $67de: $62
    ld h, l                                       ; $67df: $65
    jr nz, jr_01f_6843                            ; $67e0: $20 $61

    jr nz, jr_01f_684c                            ; $67e2: $20 $68

    ld l, a                                       ; $67e4: $6f
    ld l, h                                       ; $67e5: $6c
    ld h, l                                       ; $67e6: $65
    inc l                                         ; $67e7: $2c
    ld bc, $696c                                  ; $67e8: $01 $6c $69
    ld l, e                                       ; $67eb: $6b
    ld h, l                                       ; $67ec: $65
    jr nz, @+$63                                  ; $67ed: $20 $61

    jr nz, jr_01f_6864                            ; $67ef: $20 $73

    ld l, b                                       ; $67f1: $68

jr_01f_67f2:
    ld l, a                                       ; $67f2: $6f
    ld [hl], d                                    ; $67f3: $72
    ld [hl], h                                    ; $67f4: $74

jr_01f_67f5:
    jr nz, jr_01f_6867                            ; $67f5: $20 $70

    ld h, c                                       ; $67f7: $61
    ld [hl], d                                    ; $67f8: $72
    jr nz, jr_01f_682f                            ; $67f9: $20 $34

    ld l, $03                                     ; $67fb: $2e $03
    nop                                           ; $67fd: $00
    ld d, h                                       ; $67fe: $54
    ld l, b                                       ; $67ff: $68
    ld h, l                                       ; $6800: $65
    jr nz, jr_01f_683b                            ; $6801: $20 $38

    jr nz, jr_01f_6866                            ; $6803: $20 $61

jr_01f_6805:
    ld l, [hl]                                    ; $6805: $6e
    ld h, h                                       ; $6806: $64
    jr nz, jr_01f_6842                            ; $6807: $20 $39

    ld bc, $7269                                  ; $6809: $01 $69 $72
    ld l, a                                       ; $680c: $6f
    ld l, [hl]                                    ; $680d: $6e
    ld [hl], e                                    ; $680e: $73
    jr nz, jr_01f_6872                            ; $680f: $20 $61

    ld l, [hl]                                    ; $6811: $6e
    ld h, h                                       ; $6812: $64
    jr nz, jr_01f_6889                            ; $6813: $20 $74

    ld l, b                                       ; $6815: $68

jr_01f_6816:
    ld h, l                                       ; $6816: $65

jr_01f_6817:
    ld bc, $6970                                  ; $6817: $01 $70 $69
    ld [hl], h                                    ; $681a: $74
    ld h, e                                       ; $681b: $63
    ld l, b                                       ; $681c: $68
    ld l, c                                       ; $681d: $69
    ld l, [hl]                                    ; $681e: $6e
    ld h, a                                       ; $681f: $67
    jr nz, jr_01f_6883                            ; $6820: $20 $61

    ld l, [hl]                                    ; $6822: $6e
    ld h, h                                       ; $6823: $64
    ld [bc], a                                    ; $6824: $02
    ld [hl], e                                    ; $6825: $73
    ld h, c                                       ; $6826: $61

jr_01f_6827:
    ld l, [hl]                                    ; $6827: $6e
    ld h, h                                       ; $6828: $64
    jr nz, jr_01f_68a2                            ; $6829: $20 $77

    ld h, l                                       ; $682b: $65
    ld h, h                                       ; $682c: $64

jr_01f_682d:
    ld h, a                                       ; $682d: $67
    ld h, l                                       ; $682e: $65

jr_01f_682f:
    ld [hl], e                                    ; $682f: $73
    jr nz, jr_01f_6893                            ; $6830: $20 $61

jr_01f_6832:
    ld [hl], d                                    ; $6832: $72
    ld h, l                                       ; $6833: $65
    ld bc, $6874                                  ; $6834: $01 $74 $68
    ld h, l                                       ; $6837: $65
    jr nz, @+$75                                  ; $6838: $20 $73

    ld l, b                                       ; $683a: $68

jr_01f_683b:
    ld l, a                                       ; $683b: $6f
    ld [hl], d                                    ; $683c: $72

jr_01f_683d:
    ld [hl], h                                    ; $683d: $74
    jr nz, jr_01f_68a9                            ; $683e: $20 $69

    ld [hl], d                                    ; $6840: $72
    ld l, a                                       ; $6841: $6f

jr_01f_6842:
    ld l, [hl]                                    ; $6842: $6e

jr_01f_6843:
    ld [hl], e                                    ; $6843: $73
    ld l, $03                                     ; $6844: $2e $03

jr_01f_6846:
    nop                                           ; $6846: $00
    ld d, e                                       ; $6847: $53
    ld l, b                                       ; $6848: $68
    ld l, a                                       ; $6849: $6f
    ld l, a                                       ; $684a: $6f
    ld [hl], h                                    ; $684b: $74

jr_01f_684c:
    ld l, c                                       ; $684c: $69
    ld l, [hl]                                    ; $684d: $6e
    ld h, a                                       ; $684e: $67
    jr nz, jr_01f_68c4                            ; $684f: $20 $73

    ld [hl], h                                    ; $6851: $74
    ld [hl], d                                    ; $6852: $72
    ld h, c                                       ; $6853: $61
    ld l, c                                       ; $6854: $69
    ld h, a                                       ; $6855: $67
    ld l, b                                       ; $6856: $68
    ld [hl], h                                    ; $6857: $74
    jr nz, jr_01f_685b                            ; $6858: $20 $01

    ld h, c                                       ; $685a: $61

jr_01f_685b:
    ld h, e                                       ; $685b: $63
    ld [hl], d                                    ; $685c: $72
    ld l, a                                       ; $685d: $6f
    ld [hl], e                                    ; $685e: $73
    ld [hl], e                                    ; $685f: $73
    jr nz, jr_01f_68d6                            ; $6860: $20 $74

    ld l, b                                       ; $6862: $68
    ld h, l                                       ; $6863: $65

jr_01f_6864:
    jr nz, jr_01f_68c8                            ; $6864: $20 $62

jr_01f_6866:
    ld h, l                                       ; $6866: $65

jr_01f_6867:
    ld l, [hl]                                    ; $6867: $6e
    ld h, h                                       ; $6868: $64
    jr nz, jr_01f_68d4                            ; $6869: $20 $69

    ld l, [hl]                                    ; $686b: $6e
    jr nz, jr_01f_686f                            ; $686c: $20 $01

    ld h, c                                       ; $686e: $61

jr_01f_686f:
    jr nz, @+$66                                  ; $686f: $20 $64

    ld l, a                                       ; $6871: $6f

jr_01f_6872:
    ld h, a                                       ; $6872: $67
    ld l, h                                       ; $6873: $6c
    ld h, l                                       ; $6874: $65
    ld h, a                                       ; $6875: $67
    inc l                                         ; $6876: $2c
    jr nz, jr_01f_68eb                            ; $6877: $20 $72

    ld h, c                                       ; $6879: $61
    ld [hl], h                                    ; $687a: $74
    ld l, b                                       ; $687b: $68
    ld h, l                                       ; $687c: $65
    ld [hl], d                                    ; $687d: $72
    ld [bc], a                                    ; $687e: $02
    ld [hl], h                                    ; $687f: $74
    ld l, b                                       ; $6880: $68
    ld h, c                                       ; $6881: $61
    ld l, [hl]                                    ; $6882: $6e

jr_01f_6883:
    jr nz, jr_01f_68f9                            ; $6883: $20 $74

    ld h, c                                       ; $6885: $61
    ld l, e                                       ; $6886: $6b
    ld l, c                                       ; $6887: $69
    ld l, [hl]                                    ; $6888: $6e

jr_01f_6889:
    ld h, a                                       ; $6889: $67
    jr nz, jr_01f_6900                            ; $688a: $20 $74

    ld l, b                                       ; $688c: $68
    ld h, l                                       ; $688d: $65
    jr nz, jr_01f_6903                            ; $688e: $20 $73

    ld h, c                                       ; $6890: $61
    ld h, [hl]                                    ; $6891: $66
    ld h, l                                       ; $6892: $65

jr_01f_6893:
    ld [hl], e                                    ; $6893: $73
    ld [hl], h                                    ; $6894: $74
    ld bc, $6562                                  ; $6895: $01 $62 $65
    ld [hl], h                                    ; $6898: $74
    jr nz, jr_01f_68fc                            ; $6899: $20 $61

    ld l, [hl]                                    ; $689b: $6e
    ld h, h                                       ; $689c: $64
    jr nz, jr_01f_6905                            ; $689d: $20 $66

    ld l, a                                       ; $689f: $6f
    ld l, h                                       ; $68a0: $6c
    ld l, h                                       ; $68a1: $6c

jr_01f_68a2:
    ld l, a                                       ; $68a2: $6f
    ld [hl], a                                    ; $68a3: $77
    ld l, c                                       ; $68a4: $69
    ld l, [hl]                                    ; $68a5: $6e
    ld h, a                                       ; $68a6: $67
    jr nz, jr_01f_691d                            ; $68a7: $20 $74

jr_01f_68a9:
    ld l, b                                       ; $68a9: $68
    ld h, l                                       ; $68aa: $65
    ld bc, $6166                                  ; $68ab: $01 $66 $61
    ld l, c                                       ; $68ae: $69
    ld [hl], d                                    ; $68af: $72
    ld [hl], a                                    ; $68b0: $77
    ld h, c                                       ; $68b1: $61
    ld a, c                                       ; $68b2: $79
    ld l, $03                                     ; $68b3: $2e $03
    nop                                           ; $68b5: $00
    ld d, h                                       ; $68b6: $54
    ld l, b                                       ; $68b7: $68
    ld l, c                                       ; $68b8: $69
    ld [hl], e                                    ; $68b9: $73
    jr nz, jr_01f_6925                            ; $68ba: $20 $69

    ld [hl], e                                    ; $68bc: $73
    jr nz, jr_01f_6933                            ; $68bd: $20 $74

    ld l, b                                       ; $68bf: $68
    ld h, l                                       ; $68c0: $65
    jr nz, @+$63                                  ; $68c1: $20 $61

    ld h, e                                       ; $68c3: $63

jr_01f_68c4:
    ld [hl], h                                    ; $68c4: $74
    jr nz, jr_01f_6936                            ; $68c5: $20 $6f

    ld h, [hl]                                    ; $68c7: $66

jr_01f_68c8:
    ld bc, $6968                                  ; $68c8: $01 $68 $69
    ld [hl], h                                    ; $68cb: $74
    ld [hl], h                                    ; $68cc: $74
    ld l, c                                       ; $68cd: $69
    ld l, [hl]                                    ; $68ce: $6e
    ld h, a                                       ; $68cf: $67
    jr nz, @+$76                                  ; $68d0: $20 $74

    ld l, b                                       ; $68d2: $68
    ld h, l                                       ; $68d3: $65

jr_01f_68d4:
    jr nz, @+$64                                  ; $68d4: $20 $62

jr_01f_68d6:
    ld h, c                                       ; $68d6: $61
    ld l, h                                       ; $68d7: $6c
    ld l, h                                       ; $68d8: $6c
    ld l, $03                                     ; $68d9: $2e $03
    nop                                           ; $68db: $00
    ld b, c                                       ; $68dc: $41
    jr nz, jr_01f_6941                            ; $68dd: $20 $62

    ld [hl], l                                    ; $68df: $75
    ld l, [hl]                                    ; $68e0: $6e
    ld l, e                                       ; $68e1: $6b
    ld h, l                                       ; $68e2: $65
    ld [hl], d                                    ; $68e3: $72
    jr nz, jr_01f_695a                            ; $68e4: $20 $74

    ld l, b                                       ; $68e6: $68
    ld h, c                                       ; $68e7: $61
    ld [hl], h                                    ; $68e8: $74
    daa                                           ; $68e9: $27
    ld [hl], e                                    ; $68ea: $73

jr_01f_68eb:
    ld bc, $6e6f                                  ; $68eb: $01 $6f $6e
    jr nz, @+$64                                  ; $68ee: $20 $62

    ld l, a                                       ; $68f0: $6f
    ld [hl], h                                    ; $68f1: $74
    ld l, b                                       ; $68f2: $68
    jr nz, jr_01f_6968                            ; $68f3: $20 $73

    ld l, c                                       ; $68f5: $69
    ld h, h                                       ; $68f6: $64
    ld h, l                                       ; $68f7: $65
    ld [hl], e                                    ; $68f8: $73

jr_01f_68f9:
    ld bc, $666f                                  ; $68f9: $01 $6f $66

jr_01f_68fc:
    jr nz, @+$76                                  ; $68fc: $20 $74

    ld l, b                                       ; $68fe: $68
    ld h, l                                       ; $68ff: $65

jr_01f_6900:
    jr nz, jr_01f_6968                            ; $6900: $20 $66

    ld h, c                                       ; $6902: $61

jr_01f_6903:
    ld l, c                                       ; $6903: $69
    ld [hl], d                                    ; $6904: $72

jr_01f_6905:
    ld [hl], a                                    ; $6905: $77
    ld h, c                                       ; $6906: $61
    ld a, c                                       ; $6907: $79
    ld l, $03                                     ; $6908: $2e $03
    nop                                           ; $690a: $00
    ld d, h                                       ; $690b: $54
    ld l, a                                       ; $690c: $6f
    jr nz, jr_01f_6976                            ; $690d: $20 $67

    ld h, l                                       ; $690f: $65
    ld [hl], h                                    ; $6910: $74
    jr nz, jr_01f_6987                            ; $6911: $20 $74

    ld l, b                                       ; $6913: $68
    ld h, l                                       ; $6914: $65
    jr nz, jr_01f_6979                            ; $6915: $20 $62

    ld h, c                                       ; $6917: $61
    ld l, h                                       ; $6918: $6c
    ld l, h                                       ; $6919: $6c
    ld bc, $6e69                                  ; $691a: $01 $69 $6e

jr_01f_691d:
    ld [hl], h                                    ; $691d: $74
    ld l, a                                       ; $691e: $6f
    jr nz, jr_01f_6995                            ; $691f: $20 $74

    ld l, b                                       ; $6921: $68
    ld h, l                                       ; $6922: $65
    jr nz, jr_01f_6988                            ; $6923: $20 $63

jr_01f_6925:
    ld [hl], l                                    ; $6925: $75
    ld [hl], b                                    ; $6926: $70
    ld l, $03                                     ; $6927: $2e $03
    nop                                           ; $6929: $00
    ld b, [hl]                                    ; $692a: $46
    ld l, a                                       ; $692b: $6f
    ld [hl], d                                    ; $692c: $72
    jr nz, jr_01f_69a1                            ; $692d: $20 $72

    ld l, c                                       ; $692f: $69
    ld h, a                                       ; $6930: $67
    ld l, b                                       ; $6931: $68
    ld [hl], h                                    ; $6932: $74

jr_01f_6933:
    ld l, c                                       ; $6933: $69
    ld h, l                                       ; $6934: $65
    ld [hl], e                                    ; $6935: $73

jr_01f_6936:
    inc l                                         ; $6936: $2c
    jr nz, jr_01f_69a2                            ; $6937: $20 $69

    ld [hl], h                                    ; $6939: $74
    daa                                           ; $693a: $27
    ld [hl], e                                    ; $693b: $73
    ld bc, $6877                                  ; $693c: $01 $77 $68
    ld h, l                                       ; $693f: $65
    ld l, [hl]                                    ; $6940: $6e

jr_01f_6941:
    jr nz, @+$76                                  ; $6941: $20 $74

    ld l, b                                       ; $6943: $68
    ld h, l                                       ; $6944: $65
    jr nz, jr_01f_69a9                            ; $6945: $20 $62

    ld h, c                                       ; $6947: $61
    ld l, h                                       ; $6948: $6c
    ld l, h                                       ; $6949: $6c
    jr nz, @+$68                                  ; $694a: $20 $66

    ld l, h                                       ; $694c: $6c
    ld l, c                                       ; $694d: $69
    ld h, l                                       ; $694e: $65
    ld [hl], e                                    ; $694f: $73
    ld bc, $6166                                  ; $6950: $01 $66 $61
    ld [hl], d                                    ; $6953: $72
    jr nz, @+$76                                  ; $6954: $20 $74

    ld l, a                                       ; $6956: $6f
    jr nz, jr_01f_69cd                            ; $6957: $20 $74

    ld l, b                                       ; $6959: $68

jr_01f_695a:
    ld h, l                                       ; $695a: $65
    jr nz, jr_01f_69cf                            ; $695b: $20 $72

    ld l, c                                       ; $695d: $69
    ld h, a                                       ; $695e: $67
    ld l, b                                       ; $695f: $68
    ld [hl], h                                    ; $6960: $74
    jr nz, jr_01f_69d2                            ; $6961: $20 $6f

    ld h, [hl]                                    ; $6963: $66
    ld [bc], a                                    ; $6964: $02
    ld l, c                                       ; $6965: $69
    ld [hl], h                                    ; $6966: $74
    ld [hl], e                                    ; $6967: $73

jr_01f_6968:
    jr nz, jr_01f_69d3                            ; $6968: $20 $69

    ld l, [hl]                                    ; $696a: $6e
    ld [hl], h                                    ; $696b: $74
    ld h, l                                       ; $696c: $65
    ld l, [hl]                                    ; $696d: $6e
    ld h, h                                       ; $696e: $64
    ld h, l                                       ; $696f: $65
    ld h, h                                       ; $6970: $64
    jr nz, jr_01f_69e3                            ; $6971: $20 $70

    ld h, c                                       ; $6973: $61
    ld [hl], h                                    ; $6974: $74
    ld l, b                                       ; $6975: $68

jr_01f_6976:
    ld l, $01                                     ; $6976: $2e $01
    ld b, [hl]                                    ; $6978: $46

jr_01f_6979:
    ld l, a                                       ; $6979: $6f
    ld [hl], d                                    ; $697a: $72
    jr nz, jr_01f_69e9                            ; $697b: $20 $6c

    ld h, l                                       ; $697d: $65
    ld h, [hl]                                    ; $697e: $66
    ld [hl], h                                    ; $697f: $74
    ld l, c                                       ; $6980: $69
    ld h, l                                       ; $6981: $65
    ld [hl], e                                    ; $6982: $73
    inc l                                         ; $6983: $2c
    jr nz, jr_01f_69fa                            ; $6984: $20 $74

    ld l, b                                       ; $6986: $68

jr_01f_6987:
    ld h, l                                       ; $6987: $65

jr_01f_6988:
    ld bc, $6162                                  ; $6988: $01 $62 $61
    ld l, h                                       ; $698b: $6c
    ld l, h                                       ; $698c: $6c
    jr nz, jr_01f_69f5                            ; $698d: $20 $66

    ld l, h                                       ; $698f: $6c
    ld l, c                                       ; $6990: $69
    ld h, l                                       ; $6991: $65
    ld [hl], e                                    ; $6992: $73
    jr nz, @+$68                                  ; $6993: $20 $66

jr_01f_6995:
    ld h, c                                       ; $6995: $61
    ld [hl], d                                    ; $6996: $72
    jr nz, jr_01f_6a05                            ; $6997: $20 $6c

    ld h, l                                       ; $6999: $65
    ld h, [hl]                                    ; $699a: $66
    ld [hl], h                                    ; $699b: $74
    ld l, $03                                     ; $699c: $2e $03
    nop                                           ; $699e: $00
    ld d, h                                       ; $699f: $54
    ld h, c                                       ; $69a0: $61

jr_01f_69a1:
    ld l, e                                       ; $69a1: $6b

jr_01f_69a2:
    ld l, c                                       ; $69a2: $69
    ld l, [hl]                                    ; $69a3: $6e
    ld h, a                                       ; $69a4: $67
    jr nz, @+$63                                  ; $69a5: $20 $61

    jr nz, @+$78                                  ; $69a7: $20 $76

jr_01f_69a9:
    ld h, l                                       ; $69a9: $65
    ld [hl], d                                    ; $69aa: $72
    ld a, c                                       ; $69ab: $79
    jr nz, jr_01f_6a1a                            ; $69ac: $20 $6c

    ld l, a                                       ; $69ae: $6f
    ld l, [hl]                                    ; $69af: $6e
    ld h, a                                       ; $69b0: $67
    ld bc, $6974                                  ; $69b1: $01 $74 $69
    ld l, l                                       ; $69b4: $6d
    ld h, l                                       ; $69b5: $65
    ld l, $20                                     ; $69b6: $2e $20
    ld c, c                                       ; $69b8: $49
    ld [hl], h                                    ; $69b9: $74
    daa                                           ; $69ba: $27
    ld [hl], e                                    ; $69bb: $73
    jr nz, @+$63                                  ; $69bc: $20 $61

    jr nz, @+$78                                  ; $69be: $20 $76

    ld l, c                                       ; $69c0: $69
    ld l, a                                       ; $69c1: $6f
    ld l, h                                       ; $69c2: $6c
    ld h, c                                       ; $69c3: $61
    ld [hl], h                                    ; $69c4: $74
    ld l, c                                       ; $69c5: $69
    ld l, a                                       ; $69c6: $6f
    ld l, [hl]                                    ; $69c7: $6e
    ld bc, $666f                                  ; $69c8: $01 $6f $66
    jr nz, jr_01f_6a34                            ; $69cb: $20 $67

jr_01f_69cd:
    ld l, a                                       ; $69cd: $6f
    ld l, h                                       ; $69ce: $6c

jr_01f_69cf:
    ld h, [hl]                                    ; $69cf: $66
    jr nz, jr_01f_6a37                            ; $69d0: $20 $65

jr_01f_69d2:
    ld [hl], h                                    ; $69d2: $74

jr_01f_69d3:
    ld l, c                                       ; $69d3: $69
    ld [hl], c                                    ; $69d4: $71
    ld [hl], l                                    ; $69d5: $75
    ld h, l                                       ; $69d6: $65
    ld [hl], h                                    ; $69d7: $74
    ld [hl], h                                    ; $69d8: $74
    ld h, l                                       ; $69d9: $65
    jr nz, @+$63                                  ; $69da: $20 $61

    ld l, [hl]                                    ; $69dc: $6e
    ld h, h                                       ; $69dd: $64
    ld [bc], a                                    ; $69de: $02
    ld l, c                                       ; $69df: $69
    ld [hl], e                                    ; $69e0: $73
    jr nz, jr_01f_6a53                            ; $69e1: $20 $70

jr_01f_69e3:
    ld h, l                                       ; $69e3: $65
    ld l, [hl]                                    ; $69e4: $6e
    ld h, c                                       ; $69e5: $61
    ld l, h                                       ; $69e6: $6c
    ld l, c                                       ; $69e7: $69
    ld a, d                                       ; $69e8: $7a

jr_01f_69e9:
    ld h, l                                       ; $69e9: $65
    ld h, h                                       ; $69ea: $64
    jr nz, jr_01f_6a56                            ; $69eb: $20 $69

    ld l, [hl]                                    ; $69ed: $6e
    ld bc, $6f74                                  ; $69ee: $01 $74 $6f
    ld [hl], l                                    ; $69f1: $75
    ld [hl], d                                    ; $69f2: $72
    ld l, [hl]                                    ; $69f3: $6e
    ld h, c                                       ; $69f4: $61

jr_01f_69f5:
    ld l, l                                       ; $69f5: $6d
    ld h, l                                       ; $69f6: $65
    ld l, [hl]                                    ; $69f7: $6e
    ld [hl], h                                    ; $69f8: $74
    ld [hl], e                                    ; $69f9: $73

jr_01f_69fa:
    ld l, $03                                     ; $69fa: $2e $03
    nop                                           ; $69fc: $00
    ld d, h                                       ; $69fd: $54
    ld l, b                                       ; $69fe: $68
    ld h, l                                       ; $69ff: $65
    jr nz, @+$64                                  ; $6a00: $20 $62

    ld l, a                                       ; $6a02: $6f
    ld [hl], h                                    ; $6a03: $74
    ld [hl], h                                    ; $6a04: $74

jr_01f_6a05:
    ld l, a                                       ; $6a05: $6f
    ld l, l                                       ; $6a06: $6d
    jr nz, jr_01f_6a79                            ; $6a07: $20 $70

    ld h, c                                       ; $6a09: $61
    ld [hl], d                                    ; $6a0a: $72
    ld [hl], h                                    ; $6a0b: $74
    ld bc, $666f                                  ; $6a0c: $01 $6f $66
    jr nz, jr_01f_6a85                            ; $6a0f: $20 $74

    ld l, b                                       ; $6a11: $68
    ld h, l                                       ; $6a12: $65
    jr nz, @+$6a                                  ; $6a13: $20 $68

    ld h, l                                       ; $6a15: $65
    ld h, c                                       ; $6a16: $61
    ld h, h                                       ; $6a17: $64
    jr nz, jr_01f_6a91                            ; $6a18: $20 $77

jr_01f_6a1a:
    ld l, b                                       ; $6a1a: $68
    ld l, c                                       ; $6a1b: $69
    ld h, e                                       ; $6a1c: $63
    ld l, b                                       ; $6a1d: $68
    ld bc, $6968                                  ; $6a1e: $01 $68 $69
    ld [hl], h                                    ; $6a21: $74
    ld [hl], e                                    ; $6a22: $73
    jr nz, jr_01f_6a99                            ; $6a23: $20 $74

    ld l, b                                       ; $6a25: $68
    ld h, l                                       ; $6a26: $65
    jr nz, @+$69                                  ; $6a27: $20 $67

    ld [hl], d                                    ; $6a29: $72
    ld l, a                                       ; $6a2a: $6f
    ld [hl], l                                    ; $6a2b: $75
    ld l, [hl]                                    ; $6a2c: $6e
    ld h, h                                       ; $6a2d: $64
    ld l, $02                                     ; $6a2e: $2e $02
    ld b, c                                       ; $6a30: $41
    ld l, h                                       ; $6a31: $6c
    ld [hl], e                                    ; $6a32: $73
    ld l, a                                       ; $6a33: $6f

jr_01f_6a34:
    inc l                                         ; $6a34: $2c
    jr nz, jr_01f_6aab                            ; $6a35: $20 $74

jr_01f_6a37:
    ld l, a                                       ; $6a37: $6f
    jr nz, jr_01f_6aaa                            ; $6a38: $20 $70

    ld [hl], l                                    ; $6a3a: $75
    ld [hl], h                                    ; $6a3b: $74
    jr nz, jr_01f_6ab2                            ; $6a3c: $20 $74

    ld l, b                                       ; $6a3e: $68
    ld h, l                                       ; $6a3f: $65
    ld bc, $6f73                                  ; $6a40: $01 $73 $6f
    ld l, h                                       ; $6a43: $6c
    ld h, l                                       ; $6a44: $65
    jr nz, jr_01f_6abb                            ; $6a45: $20 $74

    ld l, a                                       ; $6a47: $6f
    jr nz, @+$76                                  ; $6a48: $20 $74

    ld l, b                                       ; $6a4a: $68
    ld h, l                                       ; $6a4b: $65
    jr nz, jr_01f_6ab5                            ; $6a4c: $20 $67

    ld [hl], d                                    ; $6a4e: $72
    ld l, a                                       ; $6a4f: $6f
    ld [hl], l                                    ; $6a50: $75
    ld l, [hl]                                    ; $6a51: $6e
    ld h, h                                       ; $6a52: $64

jr_01f_6a53:
    ld bc, $6e69                                  ; $6a53: $01 $69 $6e

jr_01f_6a56:
    jr nz, jr_01f_6ad1                            ; $6a56: $20 $79

    ld l, a                                       ; $6a58: $6f
    ld [hl], l                                    ; $6a59: $75
    ld [hl], d                                    ; $6a5a: $72
    jr nz, @+$63                                  ; $6a5b: $20 $61

    ld h, h                                       ; $6a5d: $64
    ld h, h                                       ; $6a5e: $64
    ld [hl], d                                    ; $6a5f: $72
    ld h, l                                       ; $6a60: $65
    ld [hl], e                                    ; $6a61: $73
    ld [hl], e                                    ; $6a62: $73
    ld l, $03                                     ; $6a63: $2e $03
    nop                                           ; $6a65: $00
    ld d, a                                       ; $6a66: $57
    ld l, b                                       ; $6a67: $68
    ld h, l                                       ; $6a68: $65
    ld l, [hl]                                    ; $6a69: $6e
    jr nz, jr_01f_6ae0                            ; $6a6a: $20 $74

    ld l, b                                       ; $6a6c: $68
    ld h, l                                       ; $6a6d: $65
    jr nz, @+$64                                  ; $6a6e: $20 $62

    ld h, c                                       ; $6a70: $61
    ld l, h                                       ; $6a71: $6c
    ld l, h                                       ; $6a72: $6c
    jr nz, @+$74                                  ; $6a73: $20 $72

    ld l, a                                       ; $6a75: $6f
    ld [hl], h                                    ; $6a76: $74
    ld h, c                                       ; $6a77: $61
    ld [hl], h                                    ; $6a78: $74

jr_01f_6a79:
    ld h, l                                       ; $6a79: $65
    ld [hl], e                                    ; $6a7a: $73
    ld bc, $6e69                                  ; $6a7b: $01 $69 $6e
    jr nz, @+$68                                  ; $6a7e: $20 $66

    ld l, h                                       ; $6a80: $6c
    ld l, c                                       ; $6a81: $69
    ld h, a                                       ; $6a82: $67
    ld l, b                                       ; $6a83: $68
    ld [hl], h                                    ; $6a84: $74

jr_01f_6a85:
    ld l, $20                                     ; $6a85: $2e $20
    ld b, c                                       ; $6a87: $41
    ld h, h                                       ; $6a88: $64
    ld h, h                                       ; $6a89: $64
    jr nz, jr_01f_6aff                            ; $6a8a: $20 $73

    ld [hl], b                                    ; $6a8c: $70
    ld l, c                                       ; $6a8d: $69
    ld l, [hl]                                    ; $6a8e: $6e
    jr nz, jr_01f_6b05                            ; $6a8f: $20 $74

jr_01f_6a91:
    ld l, a                                       ; $6a91: $6f
    ld bc, $6863                                  ; $6a92: $01 $63 $68
    ld h, c                                       ; $6a95: $61
    ld l, [hl]                                    ; $6a96: $6e
    ld h, a                                       ; $6a97: $67
    ld h, l                                       ; $6a98: $65

jr_01f_6a99:
    jr nz, jr_01f_6b0f                            ; $6a99: $20 $74

    ld [hl], d                                    ; $6a9b: $72
    ld h, c                                       ; $6a9c: $61
    ld l, d                                       ; $6a9d: $6a
    ld h, l                                       ; $6a9e: $65
    ld h, e                                       ; $6a9f: $63
    ld [hl], h                                    ; $6aa0: $74
    ld l, a                                       ; $6aa1: $6f
    ld [hl], d                                    ; $6aa2: $72
    ld a, c                                       ; $6aa3: $79
    ld l, $03                                     ; $6aa4: $2e $03
    nop                                           ; $6aa6: $00
    ld b, c                                       ; $6aa7: $41
    ld l, [hl]                                    ; $6aa8: $6e
    ld l, a                                       ; $6aa9: $6f

jr_01f_6aaa:
    ld [hl], h                                    ; $6aaa: $74

jr_01f_6aab:
    ld l, b                                       ; $6aab: $68
    ld h, l                                       ; $6aac: $65
    ld [hl], d                                    ; $6aad: $72
    jr nz, jr_01f_6b1e                            ; $6aae: $20 $6e

    ld h, c                                       ; $6ab0: $61
    ld l, l                                       ; $6ab1: $6d

jr_01f_6ab2:
    ld h, l                                       ; $6ab2: $65
    jr nz, jr_01f_6b1b                            ; $6ab3: $20 $66

jr_01f_6ab5:
    ld l, a                                       ; $6ab5: $6f
    ld [hl], d                                    ; $6ab6: $72
    ld bc, $6874                                  ; $6ab7: $01 $74 $68
    ld h, l                                       ; $6aba: $65

jr_01f_6abb:
    jr nz, jr_01f_6af0                            ; $6abb: $20 $33

    jr nz, jr_01f_6b36                            ; $6abd: $20 $77

    ld l, a                                       ; $6abf: $6f
    ld l, a                                       ; $6ac0: $6f
    ld h, h                                       ; $6ac1: $64
    ld l, $03                                     ; $6ac2: $2e $03
    nop                                           ; $6ac4: $00
    ld d, h                                       ; $6ac5: $54
    ld l, b                                       ; $6ac6: $68
    ld h, l                                       ; $6ac7: $65
    jr nz, jr_01f_6b3a                            ; $6ac8: $20 $70

    ld l, a                                       ; $6aca: $6f
    ld [hl], e                                    ; $6acb: $73
    ld l, c                                       ; $6acc: $69
    ld [hl], h                                    ; $6acd: $74
    ld l, c                                       ; $6ace: $69
    ld l, a                                       ; $6acf: $6f
    ld l, [hl]                                    ; $6ad0: $6e

jr_01f_6ad1:
    jr nz, jr_01f_6b42                            ; $6ad1: $20 $6f

    ld h, [hl]                                    ; $6ad3: $66
    ld bc, $6f79                                  ; $6ad4: $01 $79 $6f
    ld [hl], l                                    ; $6ad7: $75
    ld [hl], d                                    ; $6ad8: $72
    jr nz, jr_01f_6b41                            ; $6ad9: $20 $66

    ld h, l                                       ; $6adb: $65
    ld h, l                                       ; $6adc: $65
    ld [hl], h                                    ; $6add: $74
    jr nz, jr_01f_6b41                            ; $6ade: $20 $61

jr_01f_6ae0:
    ld [hl], e                                    ; $6ae0: $73
    jr nz, jr_01f_6b5c                            ; $6ae1: $20 $79

    ld l, a                                       ; $6ae3: $6f
    ld [hl], l                                    ; $6ae4: $75
    ld bc, $7473                                  ; $6ae5: $01 $73 $74
    ld [hl], d                                    ; $6ae8: $72
    ld l, c                                       ; $6ae9: $69
    ld l, e                                       ; $6aea: $6b
    ld h, l                                       ; $6aeb: $65
    jr nz, jr_01f_6b62                            ; $6aec: $20 $74

    ld l, b                                       ; $6aee: $68
    ld h, l                                       ; $6aef: $65

jr_01f_6af0:
    jr nz, @+$64                                  ; $6af0: $20 $62

    ld h, c                                       ; $6af2: $61
    ld l, h                                       ; $6af3: $6c
    ld l, h                                       ; $6af4: $6c
    ld l, $02                                     ; $6af5: $2e $02
    ld b, c                                       ; $6af7: $41
    jr nz, jr_01f_6b5c                            ; $6af8: $20 $62

    ld h, c                                       ; $6afa: $61
    ld h, h                                       ; $6afb: $64
    jr nz, jr_01f_6b71                            ; $6afc: $20 $73

    ld [hl], h                                    ; $6afe: $74

jr_01f_6aff:
    ld h, c                                       ; $6aff: $61
    ld l, [hl]                                    ; $6b00: $6e
    ld h, e                                       ; $6b01: $63
    ld h, l                                       ; $6b02: $65
    jr nz, @+$79                                  ; $6b03: $20 $77

jr_01f_6b05:
    ld l, c                                       ; $6b05: $69
    ld l, h                                       ; $6b06: $6c
    ld l, h                                       ; $6b07: $6c
    ld bc, $6b73                                  ; $6b08: $01 $73 $6b
    ld h, l                                       ; $6b0b: $65
    ld [hl], a                                    ; $6b0c: $77
    jr nz, jr_01f_6b88                            ; $6b0d: $20 $79

jr_01f_6b0f:
    ld l, a                                       ; $6b0f: $6f
    ld [hl], l                                    ; $6b10: $75
    ld [hl], d                                    ; $6b11: $72
    jr nz, jr_01f_6b75                            ; $6b12: $20 $61

    ld l, c                                       ; $6b14: $69
    ld l, l                                       ; $6b15: $6d
    ld l, $03                                     ; $6b16: $2e $03
    nop                                           ; $6b18: $00
    ld b, e                                       ; $6b19: $43
    ld l, a                                       ; $6b1a: $6f

jr_01f_6b1b:
    ld l, [hl]                                    ; $6b1b: $6e
    ld [hl], e                                    ; $6b1c: $73
    ld l, c                                       ; $6b1d: $69

jr_01f_6b1e:
    ld [hl], e                                    ; $6b1e: $73
    ld [hl], h                                    ; $6b1f: $74
    ld h, l                                       ; $6b20: $65
    ld l, [hl]                                    ; $6b21: $6e
    ld [hl], h                                    ; $6b22: $74
    inc l                                         ; $6b23: $2c
    jr nz, jr_01f_6b96                            ; $6b24: $20 $70

    ld [hl], d                                    ; $6b26: $72
    ld h, l                                       ; $6b27: $65
    ld h, e                                       ; $6b28: $63
    ld l, c                                       ; $6b29: $69
    ld [hl], e                                    ; $6b2a: $73
    ld h, l                                       ; $6b2b: $65
    ld bc, $6c70                                  ; $6b2c: $01 $70 $6c
    ld h, c                                       ; $6b2f: $61
    ld a, c                                       ; $6b30: $79
    jr nz, jr_01f_6b9c                            ; $6b31: $20 $69

    ld l, [hl]                                    ; $6b33: $6e
    jr nz, @+$79                                  ; $6b34: $20 $77

jr_01f_6b36:
    ld l, b                                       ; $6b36: $68
    ld l, c                                       ; $6b37: $69
    ld h, e                                       ; $6b38: $63
    ld l, b                                       ; $6b39: $68

jr_01f_6b3a:
    jr nz, @+$7b                                  ; $6b3a: $20 $79

    ld l, a                                       ; $6b3c: $6f
    ld [hl], l                                    ; $6b3d: $75
    ld bc, $6961                                  ; $6b3e: $01 $61 $69

jr_01f_6b41:
    ld l, l                                       ; $6b41: $6d

jr_01f_6b42:
    jr nz, jr_01f_6baa                            ; $6b42: $20 $66

    ld l, a                                       ; $6b44: $6f
    ld [hl], d                                    ; $6b45: $72
    jr nz, @+$76                                  ; $6b46: $20 $74

    ld l, b                                       ; $6b48: $68
    ld h, l                                       ; $6b49: $65
    jr nz, jr_01f_6bb3                            ; $6b4a: $20 $67

    ld [hl], d                                    ; $6b4c: $72
    ld h, l                                       ; $6b4d: $65
    ld h, l                                       ; $6b4e: $65
    ld l, [hl]                                    ; $6b4f: $6e
    ld [bc], a                                    ; $6b50: $02
    ld l, c                                       ; $6b51: $69
    ld l, [hl]                                    ; $6b52: $6e
    jr nz, jr_01f_6bbb                            ; $6b53: $20 $66

    ld [hl], d                                    ; $6b55: $72
    ld l, a                                       ; $6b56: $6f
    ld l, [hl]                                    ; $6b57: $6e
    ld [hl], h                                    ; $6b58: $74
    jr nz, @+$71                                  ; $6b59: $20 $6f

    ld h, [hl]                                    ; $6b5b: $66

jr_01f_6b5c:
    jr nz, jr_01f_6bd2                            ; $6b5c: $20 $74

    ld l, b                                       ; $6b5e: $68
    ld h, l                                       ; $6b5f: $65
    jr nz, jr_01f_6bc5                            ; $6b60: $20 $63

jr_01f_6b62:
    ld [hl], l                                    ; $6b62: $75
    ld [hl], b                                    ; $6b63: $70
    inc l                                         ; $6b64: $2c
    ld bc, $6f6e                                  ; $6b65: $01 $6e $6f
    ld [hl], h                                    ; $6b68: $74
    jr nz, jr_01f_6bd1                            ; $6b69: $20 $66

    ld l, a                                       ; $6b6b: $6f
    ld [hl], d                                    ; $6b6c: $72
    jr nz, @+$76                                  ; $6b6d: $20 $74

    ld l, b                                       ; $6b6f: $68
    ld h, l                                       ; $6b70: $65

jr_01f_6b71:
    jr nz, @+$72                                  ; $6b71: $20 $70

    ld l, c                                       ; $6b73: $69
    ld l, [hl]                                    ; $6b74: $6e

jr_01f_6b75:
    ld l, $03                                     ; $6b75: $2e $03
    nop                                           ; $6b77: $00
    ld d, h                                       ; $6b78: $54
    ld l, b                                       ; $6b79: $68
    ld h, l                                       ; $6b7a: $65
    jr nz, @+$70                                  ; $6b7b: $20 $6e

    ld [hl], l                                    ; $6b7d: $75
    ld l, l                                       ; $6b7e: $6d
    ld h, d                                       ; $6b7f: $62
    ld h, l                                       ; $6b80: $65
    ld [hl], d                                    ; $6b81: $72
    jr nz, jr_01f_6bf3                            ; $6b82: $20 $6f

    ld h, [hl]                                    ; $6b84: $66
    ld bc, $6974                                  ; $6b85: $01 $74 $69

jr_01f_6b88:
    ld l, l                                       ; $6b88: $6d
    ld h, l                                       ; $6b89: $65
    ld [hl], e                                    ; $6b8a: $73
    jr nz, @+$7b                                  ; $6b8b: $20 $79

    ld l, a                                       ; $6b8d: $6f
    ld [hl], l                                    ; $6b8e: $75
    jr nz, @+$6a                                  ; $6b8f: $20 $68

    ld l, c                                       ; $6b91: $69
    ld [hl], h                                    ; $6b92: $74
    ld bc, $6874                                  ; $6b93: $01 $74 $68

jr_01f_6b96:
    ld h, l                                       ; $6b96: $65
    jr nz, jr_01f_6bfb                            ; $6b97: $20 $62

    ld h, c                                       ; $6b99: $61
    ld l, h                                       ; $6b9a: $6c
    ld l, h                                       ; $6b9b: $6c

jr_01f_6b9c:
    ld l, $02                                     ; $6b9c: $2e $02
    ld d, a                                       ; $6b9e: $57
    ld l, b                                       ; $6b9f: $68
    ld l, c                                       ; $6ba0: $69
    ld h, [hl]                                    ; $6ba1: $66
    ld h, [hl]                                    ; $6ba2: $66
    ld [hl], e                                    ; $6ba3: $73
    jr nz, jr_01f_6c07                            ; $6ba4: $20 $61

    ld [hl], d                                    ; $6ba6: $72
    ld h, l                                       ; $6ba7: $65
    ld l, [hl]                                    ; $6ba8: $6e
    daa                                           ; $6ba9: $27

jr_01f_6baa:
    ld [hl], h                                    ; $6baa: $74
    ld bc, $6f63                                  ; $6bab: $01 $63 $6f
    ld [hl], l                                    ; $6bae: $75
    ld l, [hl]                                    ; $6baf: $6e
    ld [hl], h                                    ; $6bb0: $74
    ld h, l                                       ; $6bb1: $65
    ld h, h                                       ; $6bb2: $64

jr_01f_6bb3:
    inc l                                         ; $6bb3: $2c
    jr nz, jr_01f_6c2a                            ; $6bb4: $20 $74

    ld l, b                                       ; $6bb6: $68
    ld l, a                                       ; $6bb7: $6f
    ld [hl], l                                    ; $6bb8: $75
    ld h, a                                       ; $6bb9: $67
    ld l, b                                       ; $6bba: $68

jr_01f_6bbb:
    ld l, $03                                     ; $6bbb: $2e $03
    nop                                           ; $6bbd: $00
    ld b, c                                       ; $6bbe: $41
    ld l, [hl]                                    ; $6bbf: $6e
    jr nz, jr_01f_6c31                            ; $6bc0: $20 $6f

    ld h, d                                       ; $6bc2: $62
    ld [hl], e                                    ; $6bc3: $73
    ld [hl], h                                    ; $6bc4: $74

jr_01f_6bc5:
    ld h, c                                       ; $6bc5: $61
    ld h, e                                       ; $6bc6: $63
    ld l, h                                       ; $6bc7: $6c
    ld h, l                                       ; $6bc8: $65
    jr nz, jr_01f_6c2d                            ; $6bc9: $20 $62

    ld l, h                                       ; $6bcb: $6c
    ld l, a                                       ; $6bcc: $6f
    ld h, e                                       ; $6bcd: $63
    ld l, e                                       ; $6bce: $6b
    ld l, c                                       ; $6bcf: $69
    ld l, [hl]                                    ; $6bd0: $6e

jr_01f_6bd1:
    ld h, a                                       ; $6bd1: $67

jr_01f_6bd2:
    ld bc, $2061                                  ; $6bd2: $01 $61 $20
    ld [hl], e                                    ; $6bd5: $73
    ld [hl], h                                    ; $6bd6: $74
    ld [hl], d                                    ; $6bd7: $72
    ld h, c                                       ; $6bd8: $61
    ld l, c                                       ; $6bd9: $69
    ld h, a                                       ; $6bda: $67
    ld l, b                                       ; $6bdb: $68
    ld [hl], h                                    ; $6bdc: $74
    jr nz, jr_01f_6c52                            ; $6bdd: $20 $73

    ld l, b                                       ; $6bdf: $68
    ld l, a                                       ; $6be0: $6f
    ld [hl], h                                    ; $6be1: $74
    jr nz, jr_01f_6c58                            ; $6be2: $20 $74

    ld l, a                                       ; $6be4: $6f
    jr nz, @+$76                                  ; $6be5: $20 $74

    ld l, b                                       ; $6be7: $68
    ld h, l                                       ; $6be8: $65
    ld bc, $6970                                  ; $6be9: $01 $70 $69
    ld l, [hl]                                    ; $6bec: $6e
    ld l, $03                                     ; $6bed: $2e $03
    nop                                           ; $6bef: $00
    ld b, c                                       ; $6bf0: $41
    jr nz, jr_01f_6c24                            ; $6bf1: $20 $31

jr_01f_6bf3:
    dec l                                         ; $6bf3: $2d
    ld l, b                                       ; $6bf4: $68
    ld l, a                                       ; $6bf5: $6f
    ld l, h                                       ; $6bf6: $6c
    ld h, l                                       ; $6bf7: $65
    jr nz, jr_01f_6c6e                            ; $6bf8: $20 $74

    ld l, c                                       ; $6bfa: $69

jr_01f_6bfb:
    ld h, l                                       ; $6bfb: $65
    dec l                                         ; $6bfc: $2d
    ld h, d                                       ; $6bfd: $62
    ld [hl], d                                    ; $6bfe: $72
    ld h, l                                       ; $6bff: $65
    ld h, c                                       ; $6c00: $61
    ld l, e                                       ; $6c01: $6b
    ld h, l                                       ; $6c02: $65
    ld [hl], d                                    ; $6c03: $72
    ld bc, $6877                                  ; $6c04: $01 $77 $68

jr_01f_6c07:
    ld h, l                                       ; $6c07: $65
    ld [hl], d                                    ; $6c08: $72
    ld h, l                                       ; $6c09: $65
    jr nz, @+$76                                  ; $6c0a: $20 $74

    ld l, b                                       ; $6c0c: $68
    ld h, l                                       ; $6c0d: $65
    jr nz, @+$68                                  ; $6c0e: $20 $66

    ld l, c                                       ; $6c10: $69
    ld [hl], d                                    ; $6c11: $72
    ld [hl], e                                    ; $6c12: $73
    ld [hl], h                                    ; $6c13: $74
    jr nz, jr_01f_6c8a                            ; $6c14: $20 $74

    ld l, a                                       ; $6c16: $6f
    ld bc, $6973                                  ; $6c17: $01 $73 $69
    ld l, [hl]                                    ; $6c1a: $6e
    ld l, e                                       ; $6c1b: $6b
    jr nz, jr_01f_6c95                            ; $6c1c: $20 $77

    ld l, c                                       ; $6c1e: $69
    ld l, [hl]                                    ; $6c1f: $6e
    ld [hl], e                                    ; $6c20: $73
    ld hl, $0003                                  ; $6c21: $21 $03 $00

jr_01f_6c24:
    ld d, h                                       ; $6c24: $54
    ld l, b                                       ; $6c25: $68
    ld h, l                                       ; $6c26: $65
    jr nz, jr_01f_6c96                            ; $6c27: $20 $6d

    ld l, a                                       ; $6c29: $6f

jr_01f_6c2a:
    ld [hl], h                                    ; $6c2a: $74
    ld l, c                                       ; $6c2b: $69
    ld l, a                                       ; $6c2c: $6f

jr_01f_6c2d:
    ld l, [hl]                                    ; $6c2d: $6e
    jr nz, jr_01f_6ca9                            ; $6c2e: $20 $79

    ld l, a                                       ; $6c30: $6f

jr_01f_6c31:
    ld [hl], l                                    ; $6c31: $75
    jr nz, jr_01f_6ca1                            ; $6c32: $20 $6d

    ld h, c                                       ; $6c34: $61
    ld l, e                                       ; $6c35: $6b
    ld h, l                                       ; $6c36: $65
    ld bc, $6977                                  ; $6c37: $01 $77 $69
    ld [hl], h                                    ; $6c3a: $74
    ld l, b                                       ; $6c3b: $68
    jr nz, @+$76                                  ; $6c3c: $20 $74

    ld l, b                                       ; $6c3e: $68
    ld h, l                                       ; $6c3f: $65
    jr nz, @+$65                                  ; $6c40: $20 $63

    ld l, h                                       ; $6c42: $6c
    ld [hl], l                                    ; $6c43: $75
    ld h, d                                       ; $6c44: $62
    inc l                                         ; $6c45: $2c
    jr nz, @+$6c                                  ; $6c46: $20 $6a

    ld [hl], l                                    ; $6c48: $75
    ld [hl], e                                    ; $6c49: $73
    ld [hl], h                                    ; $6c4a: $74
    ld bc, $6562                                  ; $6c4b: $01 $62 $65
    ld h, [hl]                                    ; $6c4e: $66
    ld l, a                                       ; $6c4f: $6f
    ld [hl], d                                    ; $6c50: $72
    ld h, l                                       ; $6c51: $65

jr_01f_6c52:
    jr nz, @+$6a                                  ; $6c52: $20 $68

    ld l, c                                       ; $6c54: $69
    ld [hl], h                                    ; $6c55: $74
    ld [hl], h                                    ; $6c56: $74
    ld l, c                                       ; $6c57: $69

jr_01f_6c58:
    ld l, [hl]                                    ; $6c58: $6e
    ld h, a                                       ; $6c59: $67
    jr nz, jr_01f_6cd0                            ; $6c5a: $20 $74

    ld l, b                                       ; $6c5c: $68
    ld h, l                                       ; $6c5d: $65
    jr nz, @+$64                                  ; $6c5e: $20 $62

    ld h, c                                       ; $6c60: $61
    ld l, h                                       ; $6c61: $6c
    ld l, h                                       ; $6c62: $6c
    ld l, $03                                     ; $6c63: $2e $03
    nop                                           ; $6c65: $00
    ld d, h                                       ; $6c66: $54
    ld l, b                                       ; $6c67: $68
    ld h, l                                       ; $6c68: $65
    jr nz, jr_01f_6ce2                            ; $6c69: $20 $77

    ld l, a                                       ; $6c6b: $6f
    ld l, a                                       ; $6c6c: $6f
    ld h, h                                       ; $6c6d: $64

jr_01f_6c6e:
    ld h, l                                       ; $6c6e: $65
    ld l, [hl]                                    ; $6c6f: $6e
    jr nz, jr_01f_6ce2                            ; $6c70: $20 $70

    ld h, l                                       ; $6c72: $65
    ld h, a                                       ; $6c73: $67
    ld bc, $7075                                  ; $6c74: $01 $75 $70
    ld l, a                                       ; $6c77: $6f
    ld l, [hl]                                    ; $6c78: $6e
    jr nz, jr_01f_6cf2                            ; $6c79: $20 $77

    ld l, b                                       ; $6c7b: $68
    ld l, c                                       ; $6c7c: $69
    ld h, e                                       ; $6c7d: $63
    ld l, b                                       ; $6c7e: $68
    jr nz, jr_01f_6cf5                            ; $6c7f: $20 $74

    ld l, b                                       ; $6c81: $68
    ld h, l                                       ; $6c82: $65
    ld bc, $6162                                  ; $6c83: $01 $62 $61
    ld l, h                                       ; $6c86: $6c
    ld l, h                                       ; $6c87: $6c
    jr nz, jr_01f_6cfc                            ; $6c88: $20 $72

jr_01f_6c8a:
    ld h, l                                       ; $6c8a: $65
    ld [hl], e                                    ; $6c8b: $73
    ld [hl], h                                    ; $6c8c: $74
    ld [hl], e                                    ; $6c8d: $73
    jr nz, jr_01f_6cf6                            ; $6c8e: $20 $66

    ld l, a                                       ; $6c90: $6f
    ld [hl], d                                    ; $6c91: $72
    ld [bc], a                                    ; $6c92: $02
    ld [hl], h                                    ; $6c93: $74
    ld l, b                                       ; $6c94: $68

jr_01f_6c95:
    ld h, l                                       ; $6c95: $65

jr_01f_6c96:
    jr nz, jr_01f_6cfe                            ; $6c96: $20 $66

    ld l, c                                       ; $6c98: $69
    ld [hl], d                                    ; $6c99: $72
    ld [hl], e                                    ; $6c9a: $73
    ld [hl], h                                    ; $6c9b: $74
    jr nz, jr_01f_6d11                            ; $6c9c: $20 $73

    ld l, b                                       ; $6c9e: $68
    ld l, a                                       ; $6c9f: $6f
    ld [hl], h                                    ; $6ca0: $74

jr_01f_6ca1:
    ld bc, $6e6f                                  ; $6ca1: $01 $6f $6e
    jr nz, jr_01f_6d07                            ; $6ca4: $20 $61

    jr nz, jr_01f_6d10                            ; $6ca6: $20 $68

    ld l, a                                       ; $6ca8: $6f

jr_01f_6ca9:
    ld l, h                                       ; $6ca9: $6c
    ld h, l                                       ; $6caa: $65
    ld l, $03                                     ; $6cab: $2e $03
    nop                                           ; $6cad: $00
    ld d, h                                       ; $6cae: $54
    ld l, b                                       ; $6caf: $68
    ld h, l                                       ; $6cb0: $65
    jr nz, @+$63                                  ; $6cb1: $20 $61

    ld [hl], d                                    ; $6cb3: $72
    ld h, l                                       ; $6cb4: $65
    ld h, c                                       ; $6cb5: $61
    jr nz, jr_01f_6d1e                            ; $6cb6: $20 $66

    ld [hl], d                                    ; $6cb8: $72
    ld l, a                                       ; $6cb9: $6f
    ld l, l                                       ; $6cba: $6d
    jr nz, jr_01f_6d34                            ; $6cbb: $20 $77

    ld l, b                                       ; $6cbd: $68
    ld l, c                                       ; $6cbe: $69
    ld h, e                                       ; $6cbf: $63
    ld l, b                                       ; $6cc0: $68
    ld bc, $6165                                  ; $6cc1: $01 $65 $61
    ld h, e                                       ; $6cc4: $63
    ld l, b                                       ; $6cc5: $68
    jr nz, jr_01f_6d38                            ; $6cc6: $20 $70

    ld l, h                                       ; $6cc8: $6c
    ld h, c                                       ; $6cc9: $61
    ld a, c                                       ; $6cca: $79
    ld h, l                                       ; $6ccb: $65
    ld [hl], d                                    ; $6ccc: $72
    jr nz, jr_01f_6d43                            ; $6ccd: $20 $74

    ld h, c                                       ; $6ccf: $61

jr_01f_6cd0:
    ld l, e                                       ; $6cd0: $6b
    ld h, l                                       ; $6cd1: $65
    ld [hl], e                                    ; $6cd2: $73
    ld bc, $6968                                  ; $6cd3: $01 $68 $69
    ld [hl], e                                    ; $6cd6: $73
    jr nz, @+$71                                  ; $6cd7: $20 $6f

    ld [hl], d                                    ; $6cd9: $72
    jr nz, jr_01f_6d44                            ; $6cda: $20 $68

    ld h, l                                       ; $6cdc: $65
    ld [hl], d                                    ; $6cdd: $72
    jr nz, jr_01f_6d46                            ; $6cde: $20 $66

    ld l, c                                       ; $6ce0: $69
    ld [hl], d                                    ; $6ce1: $72

jr_01f_6ce2:
    ld [hl], e                                    ; $6ce2: $73
    ld [hl], h                                    ; $6ce3: $74
    jr nz, jr_01f_6d59                            ; $6ce4: $20 $73

    ld l, b                                       ; $6ce6: $68
    ld l, a                                       ; $6ce7: $6f
    ld [hl], h                                    ; $6ce8: $74
    ld [bc], a                                    ; $6ce9: $02
    ld l, a                                       ; $6cea: $6f
    ld l, [hl]                                    ; $6ceb: $6e
    jr nz, jr_01f_6d4f                            ; $6cec: $20 $61

    jr nz, jr_01f_6d58                            ; $6cee: $20 $68

    ld l, a                                       ; $6cf0: $6f
    ld l, h                                       ; $6cf1: $6c

jr_01f_6cf2:
    ld h, l                                       ; $6cf2: $65
    ld l, $03                                     ; $6cf3: $2e $03

jr_01f_6cf5:
    nop                                           ; $6cf5: $00

jr_01f_6cf6:
    ld d, h                                       ; $6cf6: $54
    ld l, b                                       ; $6cf7: $68
    ld h, l                                       ; $6cf8: $65
    jr nz, jr_01f_6d68                            ; $6cf9: $20 $6d

    ld h, c                                       ; $6cfb: $61

jr_01f_6cfc:
    ld [hl], d                                    ; $6cfc: $72
    ld l, e                                       ; $6cfd: $6b

jr_01f_6cfe:
    jr nz, jr_01f_6d74                            ; $6cfe: $20 $74

    ld l, b                                       ; $6d00: $68
    ld h, c                                       ; $6d01: $61
    ld [hl], h                                    ; $6d02: $74
    ld bc, $7073                                  ; $6d03: $01 $73 $70
    ld h, l                                       ; $6d06: $65

jr_01f_6d07:
    ld h, e                                       ; $6d07: $63
    ld l, c                                       ; $6d08: $69
    ld h, [hl]                                    ; $6d09: $66
    ld l, c                                       ; $6d0a: $69
    ld h, l                                       ; $6d0b: $65
    ld [hl], e                                    ; $6d0c: $73
    jr nz, jr_01f_6d75                            ; $6d0d: $20 $66

    ld [hl], d                                    ; $6d0f: $72

jr_01f_6d10:
    ld l, a                                       ; $6d10: $6f

jr_01f_6d11:
    ld l, l                                       ; $6d11: $6d
    ld bc, $6877                                  ; $6d12: $01 $77 $68
    ld h, l                                       ; $6d15: $65
    ld [hl], d                                    ; $6d16: $72
    ld h, l                                       ; $6d17: $65
    jr nz, @+$76                                  ; $6d18: $20 $74

    ld l, b                                       ; $6d1a: $68
    ld h, l                                       ; $6d1b: $65
    jr nz, jr_01f_6d92                            ; $6d1c: $20 $74

jr_01f_6d1e:
    ld h, l                                       ; $6d1e: $65
    ld h, l                                       ; $6d1f: $65
    ld [bc], a                                    ; $6d20: $02
    ld [hl], e                                    ; $6d21: $73
    ld l, b                                       ; $6d22: $68
    ld l, a                                       ; $6d23: $6f
    ld [hl], h                                    ; $6d24: $74
    jr nz, @+$75                                  ; $6d25: $20 $73

    ld l, b                                       ; $6d27: $68
    ld l, a                                       ; $6d28: $6f
    ld [hl], l                                    ; $6d29: $75
    ld l, h                                       ; $6d2a: $6c
    ld h, h                                       ; $6d2b: $64
    jr nz, jr_01f_6d90                            ; $6d2c: $20 $62

    ld h, l                                       ; $6d2e: $65
    ld bc, $6174                                  ; $6d2f: $01 $74 $61
    ld l, e                                       ; $6d32: $6b
    ld h, l                                       ; $6d33: $65

jr_01f_6d34:
    ld l, [hl]                                    ; $6d34: $6e
    jr nz, @+$71                                  ; $6d35: $20 $6f

    ld l, [hl]                                    ; $6d37: $6e

jr_01f_6d38:
    jr nz, jr_01f_6dae                            ; $6d38: $20 $74

    ld l, b                                       ; $6d3a: $68
    ld h, l                                       ; $6d3b: $65
    ld bc, $6574                                  ; $6d3c: $01 $74 $65
    ld h, l                                       ; $6d3f: $65
    jr nz, jr_01f_6da9                            ; $6d40: $20 $67

    ld [hl], d                                    ; $6d42: $72

jr_01f_6d43:
    ld l, a                                       ; $6d43: $6f

jr_01f_6d44:
    ld [hl], l                                    ; $6d44: $75
    ld l, [hl]                                    ; $6d45: $6e

jr_01f_6d46:
    ld h, h                                       ; $6d46: $64
    ld l, $03                                     ; $6d47: $2e $03
    nop                                           ; $6d49: $00
    ld d, h                                       ; $6d4a: $54
    ld l, b                                       ; $6d4b: $68
    ld h, l                                       ; $6d4c: $65
    jr nz, jr_01f_6db5                            ; $6d4d: $20 $66

jr_01f_6d4f:
    ld l, c                                       ; $6d4f: $69
    ld [hl], d                                    ; $6d50: $72
    ld [hl], e                                    ; $6d51: $73
    ld [hl], h                                    ; $6d52: $74
    jr nz, jr_01f_6dc8                            ; $6d53: $20 $73

    ld [hl], h                                    ; $6d55: $74
    ld [hl], d                                    ; $6d56: $72
    ld l, a                                       ; $6d57: $6f

jr_01f_6d58:
    ld l, e                                       ; $6d58: $6b

jr_01f_6d59:
    ld h, l                                       ; $6d59: $65
    jr nz, @+$71                                  ; $6d5a: $20 $6f

    ld l, [hl]                                    ; $6d5c: $6e
    ld bc, $2061                                  ; $6d5d: $01 $61 $20
    ld l, b                                       ; $6d60: $68
    ld l, a                                       ; $6d61: $6f
    ld l, h                                       ; $6d62: $6c
    ld h, l                                       ; $6d63: $65
    ld l, $03                                     ; $6d64: $2e $03
    nop                                           ; $6d66: $00
    ld d, h                                       ; $6d67: $54

jr_01f_6d68:
    ld l, a                                       ; $6d68: $6f
    jr nz, jr_01f_6dde                            ; $6d69: $20 $73

    ld h, l                                       ; $6d6b: $65
    ld [hl], h                                    ; $6d6c: $74
    jr nz, jr_01f_6de3                            ; $6d6d: $20 $74

    ld l, b                                       ; $6d6f: $68
    ld h, l                                       ; $6d70: $65
    jr nz, jr_01f_6dd5                            ; $6d71: $20 $62

    ld h, c                                       ; $6d73: $61

jr_01f_6d74:
    ld l, h                                       ; $6d74: $6c

jr_01f_6d75:
    ld l, h                                       ; $6d75: $6c
    ld bc, $6e6f                                  ; $6d76: $01 $6f $6e
    jr nz, jr_01f_6def                            ; $6d79: $20 $74

    ld l, b                                       ; $6d7b: $68
    ld h, l                                       ; $6d7c: $65
    jr nz, jr_01f_6df3                            ; $6d7d: $20 $74

    ld h, l                                       ; $6d7f: $65
    ld h, l                                       ; $6d80: $65
    jr nz, jr_01f_6de9                            ; $6d81: $20 $66

    ld l, a                                       ; $6d83: $6f
    ld [hl], d                                    ; $6d84: $72
    ld bc, $6874                                  ; $6d85: $01 $74 $68
    ld h, l                                       ; $6d88: $65
    jr nz, jr_01f_6dff                            ; $6d89: $20 $74

    ld h, l                                       ; $6d8b: $65
    ld h, l                                       ; $6d8c: $65
    jr nz, jr_01f_6e02                            ; $6d8d: $20 $73

    ld l, b                                       ; $6d8f: $68

jr_01f_6d90:
    ld l, a                                       ; $6d90: $6f
    ld [hl], h                                    ; $6d91: $74

jr_01f_6d92:
    ld l, $02                                     ; $6d92: $2e $02
    ld c, c                                       ; $6d94: $49
    ld h, [hl]                                    ; $6d95: $66
    jr nz, jr_01f_6e01                            ; $6d96: $20 $69

    ld [hl], h                                    ; $6d98: $74
    jr nz, jr_01f_6e01                            ; $6d99: $20 $66

    ld h, c                                       ; $6d9b: $61
    ld l, h                                       ; $6d9c: $6c
    ld l, h                                       ; $6d9d: $6c
    ld [hl], e                                    ; $6d9e: $73
    jr nz, jr_01f_6e10                            ; $6d9f: $20 $6f

    ld h, [hl]                                    ; $6da1: $66
    ld h, [hl]                                    ; $6da2: $66
    inc l                                         ; $6da3: $2c
    ld bc, $6874                                  ; $6da4: $01 $74 $68
    ld h, l                                       ; $6da7: $65
    ld [hl], d                                    ; $6da8: $72

jr_01f_6da9:
    ld h, l                                       ; $6da9: $65
    daa                                           ; $6daa: $27
    ld [hl], e                                    ; $6dab: $73
    jr nz, jr_01f_6e1c                            ; $6dac: $20 $6e

jr_01f_6dae:
    ld l, a                                       ; $6dae: $6f
    jr nz, jr_01f_6e21                            ; $6daf: $20 $70

    ld h, l                                       ; $6db1: $65
    ld l, [hl]                                    ; $6db2: $6e
    ld h, c                                       ; $6db3: $61
    ld l, h                                       ; $6db4: $6c

jr_01f_6db5:
    ld [hl], h                                    ; $6db5: $74
    ld a, c                                       ; $6db6: $79
    ld bc, $6f74                                  ; $6db7: $01 $74 $6f
    jr nz, jr_01f_6e2e                            ; $6dba: $20 $72

    ld h, l                                       ; $6dbc: $65
    ld [hl], b                                    ; $6dbd: $70
    ld l, h                                       ; $6dbe: $6c
    ld h, c                                       ; $6dbf: $61
    ld h, e                                       ; $6dc0: $63
    ld h, l                                       ; $6dc1: $65
    jr nz, jr_01f_6e2d                            ; $6dc2: $20 $69

    ld [hl], h                                    ; $6dc4: $74
    ld l, $03                                     ; $6dc5: $2e $03
    nop                                           ; $6dc7: $00

jr_01f_6dc8:
    ld c, a                                       ; $6dc8: $4f
    ld l, [hl]                                    ; $6dc9: $6e
    jr nz, jr_01f_6e2d                            ; $6dca: $20 $61

    jr nz, @+$6f                                  ; $6dcc: $20 $6d

    ld l, c                                       ; $6dce: $69
    ld [hl], e                                    ; $6dcf: $73
    ld [hl], e                                    ; $6dd0: $73
    ld h, l                                       ; $6dd1: $65
    ld h, h                                       ; $6dd2: $64
    jr nz, jr_01f_6e48                            ; $6dd3: $20 $73

jr_01f_6dd5:
    ld l, b                                       ; $6dd5: $68
    ld l, a                                       ; $6dd6: $6f
    ld [hl], h                                    ; $6dd7: $74
    inc l                                         ; $6dd8: $2c
    ld bc, $6968                                  ; $6dd9: $01 $68 $69
    ld [hl], h                                    ; $6ddc: $74
    ld [hl], h                                    ; $6ddd: $74

jr_01f_6dde:
    ld l, c                                       ; $6dde: $69
    ld l, [hl]                                    ; $6ddf: $6e
    ld h, a                                       ; $6de0: $67
    jr nz, jr_01f_6e57                            ; $6de1: $20 $74

jr_01f_6de3:
    ld l, b                                       ; $6de3: $68
    ld h, l                                       ; $6de4: $65
    jr nz, jr_01f_6e49                            ; $6de5: $20 $62

    ld h, c                                       ; $6de7: $61
    ld l, h                                       ; $6de8: $6c

jr_01f_6de9:
    ld l, h                                       ; $6de9: $6c
    ld bc, $6261                                  ; $6dea: $01 $61 $62
    ld l, a                                       ; $6ded: $6f
    halt                                          ; $6dee: $76

jr_01f_6def:
    ld h, l                                       ; $6def: $65
    jr nz, jr_01f_6e55                            ; $6df0: $20 $63

    ld h, l                                       ; $6df2: $65

jr_01f_6df3:
    ld l, [hl]                                    ; $6df3: $6e
    ld [hl], h                                    ; $6df4: $74
    ld h, l                                       ; $6df5: $65
    ld [hl], d                                    ; $6df6: $72
    jr nz, jr_01f_6e6c                            ; $6df7: $20 $73

    ld l, a                                       ; $6df9: $6f
    ld [bc], a                                    ; $6dfa: $02
    ld [hl], h                                    ; $6dfb: $74
    ld l, b                                       ; $6dfc: $68
    ld h, c                                       ; $6dfd: $61
    ld [hl], h                                    ; $6dfe: $74

jr_01f_6dff:
    jr nz, jr_01f_6e6a                            ; $6dff: $20 $69

jr_01f_6e01:
    ld [hl], h                                    ; $6e01: $74

jr_01f_6e02:
    jr nz, jr_01f_6e76                            ; $6e02: $20 $72

    ld l, a                                       ; $6e04: $6f
    ld l, h                                       ; $6e05: $6c
    ld l, h                                       ; $6e06: $6c
    ld [hl], e                                    ; $6e07: $73
    ld l, $20                                     ; $6e08: $2e $20
    ld b, c                                       ; $6e0a: $41
    ld bc, $6f74                                  ; $6e0b: $01 $74 $6f
    ld [hl], b                                    ; $6e0e: $70
    ld [hl], b                                    ; $6e0f: $70

jr_01f_6e10:
    ld h, l                                       ; $6e10: $65
    ld h, h                                       ; $6e11: $64
    jr nz, jr_01f_6e76                            ; $6e12: $20 $62

    ld h, c                                       ; $6e14: $61
    ld l, h                                       ; $6e15: $6c
    ld l, h                                       ; $6e16: $6c
    jr nz, jr_01f_6e90                            ; $6e17: $20 $77

    ld l, a                                       ; $6e19: $6f
    ld l, [hl]                                    ; $6e1a: $6e
    daa                                           ; $6e1b: $27

jr_01f_6e1c:
    ld [hl], h                                    ; $6e1c: $74
    ld bc, $6972                                  ; $6e1d: $01 $72 $69
    ld [hl], e                                    ; $6e20: $73

jr_01f_6e21:
    ld h, l                                       ; $6e21: $65
    jr nz, jr_01f_6e8d                            ; $6e22: $20 $69

    ld l, [hl]                                    ; $6e24: $6e
    ld [hl], h                                    ; $6e25: $74
    ld l, a                                       ; $6e26: $6f
    jr nz, jr_01f_6e9d                            ; $6e27: $20 $74

    ld l, b                                       ; $6e29: $68
    ld h, l                                       ; $6e2a: $65
    jr nz, @+$63                                  ; $6e2b: $20 $61

jr_01f_6e2d:
    ld l, c                                       ; $6e2d: $69

jr_01f_6e2e:
    ld [hl], d                                    ; $6e2e: $72
    ld l, $03                                     ; $6e2f: $2e $03
    nop                                           ; $6e31: $00
    ld d, [hl]                                    ; $6e32: $56
    ld h, l                                       ; $6e33: $65
    ld [hl], d                                    ; $6e34: $72
    ld [hl], h                                    ; $6e35: $74
    ld l, c                                       ; $6e36: $69
    ld h, e                                       ; $6e37: $63
    ld h, c                                       ; $6e38: $61
    ld l, h                                       ; $6e39: $6c
    jr nz, jr_01f_6eaf                            ; $6e3a: $20 $73

    ld [hl], b                                    ; $6e3c: $70
    ld l, c                                       ; $6e3d: $69
    ld l, [hl]                                    ; $6e3e: $6e
    jr nz, jr_01f_6eb0                            ; $6e3f: $20 $6f

    ld l, [hl]                                    ; $6e41: $6e
    jr nz, @+$63                                  ; $6e42: $20 $61

    ld bc, $6162                                  ; $6e44: $01 $62 $61
    ld l, h                                       ; $6e47: $6c

jr_01f_6e48:
    ld l, h                                       ; $6e48: $6c

jr_01f_6e49:
    jr nz, @+$6b                                  ; $6e49: $20 $69

    ld l, [hl]                                    ; $6e4b: $6e
    jr nz, jr_01f_6ec2                            ; $6e4c: $20 $74

    ld l, b                                       ; $6e4e: $68
    ld h, l                                       ; $6e4f: $65
    jr nz, jr_01f_6eb6                            ; $6e50: $20 $64

    ld l, c                                       ; $6e52: $69
    ld [hl], d                                    ; $6e53: $72
    ld h, l                                       ; $6e54: $65

jr_01f_6e55:
    ld h, e                                       ; $6e55: $63
    ld [hl], h                                    ; $6e56: $74

jr_01f_6e57:
    ld l, c                                       ; $6e57: $69
    ld l, a                                       ; $6e58: $6f
    ld l, [hl]                                    ; $6e59: $6e
    ld bc, $6874                                  ; $6e5a: $01 $74 $68
    ld h, l                                       ; $6e5d: $65
    jr nz, jr_01f_6ec2                            ; $6e5e: $20 $62

    ld h, c                                       ; $6e60: $61
    ld l, h                                       ; $6e61: $6c
    ld l, h                                       ; $6e62: $6c
    daa                                           ; $6e63: $27
    ld [hl], e                                    ; $6e64: $73
    jr nz, @+$6f                                  ; $6e65: $20 $6d

    ld l, a                                       ; $6e67: $6f
    halt                                          ; $6e68: $76
    ld l, c                                       ; $6e69: $69

jr_01f_6e6a:
    ld l, [hl]                                    ; $6e6a: $6e
    ld h, a                                       ; $6e6b: $67

jr_01f_6e6c:
    ld l, $02                                     ; $6e6c: $2e $02
    ld b, c                                       ; $6e6e: $41
    jr nz, jr_01f_6ed3                            ; $6e6f: $20 $62

    ld h, c                                       ; $6e71: $61
    ld l, h                                       ; $6e72: $6c
    ld l, h                                       ; $6e73: $6c
    jr nz, jr_01f_6eed                            ; $6e74: $20 $77

jr_01f_6e76:
    ld l, c                                       ; $6e76: $69
    ld [hl], h                                    ; $6e77: $74
    ld l, b                                       ; $6e78: $68
    jr nz, jr_01f_6eef                            ; $6e79: $20 $74

    ld l, a                                       ; $6e7b: $6f
    ld [hl], b                                    ; $6e7c: $70
    ld [hl], e                                    ; $6e7d: $73
    ld [hl], b                                    ; $6e7e: $70
    ld l, c                                       ; $6e7f: $69
    ld l, [hl]                                    ; $6e80: $6e
    ld bc, $6c66                                  ; $6e81: $01 $66 $6c
    ld l, c                                       ; $6e84: $69
    ld h, l                                       ; $6e85: $65
    ld [hl], e                                    ; $6e86: $73
    jr nz, jr_01f_6ef5                            ; $6e87: $20 $6c

    ld l, a                                       ; $6e89: $6f
    ld [hl], a                                    ; $6e8a: $77
    ld h, l                                       ; $6e8b: $65
    ld [hl], d                                    ; $6e8c: $72

jr_01f_6e8d:
    jr nz, jr_01f_6ef0                            ; $6e8d: $20 $61

    ld l, [hl]                                    ; $6e8f: $6e

jr_01f_6e90:
    ld h, h                                       ; $6e90: $64
    jr nz, @+$74                                  ; $6e91: $20 $72

    ld l, a                                       ; $6e93: $6f
    ld l, h                                       ; $6e94: $6c
    ld l, h                                       ; $6e95: $6c
    ld [hl], e                                    ; $6e96: $73
    ld bc, $6166                                  ; $6e97: $01 $66 $61
    ld [hl], d                                    ; $6e9a: $72
    ld [hl], h                                    ; $6e9b: $74
    ld l, b                                       ; $6e9c: $68

jr_01f_6e9d:
    ld h, l                                       ; $6e9d: $65
    ld [hl], d                                    ; $6e9e: $72
    jr nz, @+$76                                  ; $6e9f: $20 $74

    ld l, b                                       ; $6ea1: $68
    ld h, c                                       ; $6ea2: $61
    ld l, [hl]                                    ; $6ea3: $6e
    jr nz, jr_01f_6f07                            ; $6ea4: $20 $61

    jr nz, jr_01f_6f0a                            ; $6ea6: $20 $62

    ld h, c                                       ; $6ea8: $61
    ld l, h                                       ; $6ea9: $6c
    ld l, h                                       ; $6eaa: $6c
    ld [bc], a                                    ; $6eab: $02
    ld [hl], a                                    ; $6eac: $77
    ld l, c                                       ; $6ead: $69
    ld [hl], h                                    ; $6eae: $74

jr_01f_6eaf:
    ld l, b                                       ; $6eaf: $68

jr_01f_6eb0:
    jr nz, jr_01f_6f20                            ; $6eb0: $20 $6e

    ld l, a                                       ; $6eb2: $6f
    jr nz, jr_01f_6f28                            ; $6eb3: $20 $73

    ld [hl], b                                    ; $6eb5: $70

jr_01f_6eb6:
    ld l, c                                       ; $6eb6: $69
    ld l, [hl]                                    ; $6eb7: $6e
    ld l, $03                                     ; $6eb8: $2e $03
    nop                                           ; $6eba: $00
    ld d, h                                       ; $6ebb: $54
    ld l, b                                       ; $6ebc: $68
    ld h, l                                       ; $6ebd: $65
    jr nz, jr_01f_6f33                            ; $6ebe: $20 $73

    ld [hl], l                                    ; $6ec0: $75
    ld l, l                                       ; $6ec1: $6d

jr_01f_6ec2:
    jr nz, jr_01f_6f33                            ; $6ec2: $20 $6f

    ld h, [hl]                                    ; $6ec4: $66
    jr nz, @+$76                                  ; $6ec5: $20 $74

    ld l, b                                       ; $6ec7: $68
    ld h, l                                       ; $6ec8: $65
    ld bc, $6163                                  ; $6ec9: $01 $63 $61
    ld [hl], d                                    ; $6ecc: $72
    ld [hl], d                                    ; $6ecd: $72
    ld a, c                                       ; $6ece: $79
    jr nz, jr_01f_6f32                            ; $6ecf: $20 $61

    ld l, [hl]                                    ; $6ed1: $6e
    ld h, h                                       ; $6ed2: $64

jr_01f_6ed3:
    jr nz, @+$76                                  ; $6ed3: $20 $74

    ld l, b                                       ; $6ed5: $68
    ld h, l                                       ; $6ed6: $65
    ld bc, $7572                                  ; $6ed7: $01 $72 $75
    ld l, [hl]                                    ; $6eda: $6e
    ld l, $03                                     ; $6edb: $2e $03
    nop                                           ; $6edd: $00
    ld b, c                                       ; $6ede: $41
    jr nz, jr_01f_6f44                            ; $6edf: $20 $63

    ld l, a                                       ; $6ee1: $6f
    ld l, l                                       ; $6ee2: $6d
    ld [hl], b                                    ; $6ee3: $70
    ld h, l                                       ; $6ee4: $65
    ld [hl], h                                    ; $6ee5: $74
    ld l, c                                       ; $6ee6: $69
    ld [hl], h                                    ; $6ee7: $74
    ld l, c                                       ; $6ee8: $69
    ld l, a                                       ; $6ee9: $6f
    ld l, [hl]                                    ; $6eea: $6e
    jr nz, jr_01f_6f4e                            ; $6eeb: $20 $61

jr_01f_6eed:
    ld l, l                                       ; $6eed: $6d
    ld l, a                                       ; $6eee: $6f

jr_01f_6eef:
    ld l, [hl]                                    ; $6eef: $6e

jr_01f_6ef0:
    ld h, a                                       ; $6ef0: $67
    ld bc, $616d                                  ; $6ef1: $01 $6d $61
    ld l, [hl]                                    ; $6ef4: $6e

jr_01f_6ef5:
    ld a, c                                       ; $6ef5: $79
    jr nz, @+$72                                  ; $6ef6: $20 $70

    ld l, h                                       ; $6ef8: $6c
    ld h, c                                       ; $6ef9: $61
    ld a, c                                       ; $6efa: $79
    ld h, l                                       ; $6efb: $65
    ld [hl], d                                    ; $6efc: $72
    ld [hl], e                                    ; $6efd: $73
    jr nz, jr_01f_6f66                            ; $6efe: $20 $66

    ld l, a                                       ; $6f00: $6f
    ld [hl], d                                    ; $6f01: $72
    jr nz, jr_01f_6f65                            ; $6f02: $20 $61

    ld bc, $7270                                  ; $6f04: $01 $70 $72

jr_01f_6f07:
    ld l, c                                       ; $6f07: $69
    ld a, d                                       ; $6f08: $7a
    ld h, l                                       ; $6f09: $65

jr_01f_6f0a:
    jr nz, @+$71                                  ; $6f0a: $20 $6f

    ld [hl], d                                    ; $6f0c: $72
    jr nz, jr_01f_6f83                            ; $6f0d: $20 $74

    ld [hl], d                                    ; $6f0f: $72
    ld l, a                                       ; $6f10: $6f
    ld [hl], b                                    ; $6f11: $70
    ld l, b                                       ; $6f12: $68
    ld a, c                                       ; $6f13: $79
    ld l, $03                                     ; $6f14: $2e $03
    nop                                           ; $6f16: $00
    ld b, c                                       ; $6f17: $41
    jr nz, jr_01f_6f8d                            ; $6f18: $20 $73

    ld h, e                                       ; $6f1a: $63
    ld l, a                                       ; $6f1b: $6f
    ld [hl], d                                    ; $6f1c: $72
    ld h, l                                       ; $6f1d: $65
    jr nz, jr_01f_6f8f                            ; $6f1e: $20 $6f

jr_01f_6f20:
    ld h, [hl]                                    ; $6f20: $66
    jr nz, jr_01f_6f56                            ; $6f21: $20 $33

    jr nz, @+$75                                  ; $6f23: $20 $73

    ld [hl], h                                    ; $6f25: $74
    ld [hl], d                                    ; $6f26: $72
    ld l, a                                       ; $6f27: $6f

jr_01f_6f28:
    ld l, e                                       ; $6f28: $6b
    ld h, l                                       ; $6f29: $65
    ld [hl], e                                    ; $6f2a: $73
    ld bc, $766f                                  ; $6f2b: $01 $6f $76
    ld h, l                                       ; $6f2e: $65
    ld [hl], d                                    ; $6f2f: $72
    jr nz, @+$72                                  ; $6f30: $20 $70

jr_01f_6f32:
    ld h, c                                       ; $6f32: $61

jr_01f_6f33:
    ld [hl], d                                    ; $6f33: $72
    ld l, $20                                     ; $6f34: $2e $20
    ld c, a                                       ; $6f36: $4f
    ld l, [hl]                                    ; $6f37: $6e
    jr nz, jr_01f_6f9b                            ; $6f38: $20 $61

    jr nz, @+$72                                  ; $6f3a: $20 $70

    ld h, c                                       ; $6f3c: $61
    ld [hl], d                                    ; $6f3d: $72
    jr nz, jr_01f_6f74                            ; $6f3e: $20 $34

    ld bc, $6f68                                  ; $6f40: $01 $68 $6f
    ld l, h                                       ; $6f43: $6c

jr_01f_6f44:
    ld h, l                                       ; $6f44: $65
    inc l                                         ; $6f45: $2c
    jr nz, jr_01f_6fa9                            ; $6f46: $20 $61

    jr nz, @+$76                                  ; $6f48: $20 $74

    ld [hl], d                                    ; $6f4a: $72
    ld l, c                                       ; $6f4b: $69
    ld [hl], b                                    ; $6f4c: $70
    ld l, h                                       ; $6f4d: $6c

jr_01f_6f4e:
    ld h, l                                       ; $6f4e: $65
    jr nz, jr_01f_6fb3                            ; $6f4f: $20 $62

    ld l, a                                       ; $6f51: $6f
    ld h, a                                       ; $6f52: $67
    ld h, l                                       ; $6f53: $65
    ld a, c                                       ; $6f54: $79
    ld [bc], a                                    ; $6f55: $02

jr_01f_6f56:
    ld [hl], a                                    ; $6f56: $77
    ld l, a                                       ; $6f57: $6f
    ld [hl], l                                    ; $6f58: $75
    ld l, h                                       ; $6f59: $6c
    ld h, h                                       ; $6f5a: $64
    jr nz, @+$64                                  ; $6f5b: $20 $62

    ld h, l                                       ; $6f5d: $65
    jr nz, jr_01f_6fc1                            ; $6f5e: $20 $61

    jr nz, jr_01f_6fd5                            ; $6f60: $20 $73

    ld h, e                                       ; $6f62: $63
    ld l, a                                       ; $6f63: $6f
    ld [hl], d                                    ; $6f64: $72

jr_01f_6f65:
    ld h, l                                       ; $6f65: $65

jr_01f_6f66:
    ld bc, $666f                                  ; $6f66: $01 $6f $66
    jr nz, @+$39                                  ; $6f69: $20 $37

    ld l, $03                                     ; $6f6b: $2e $03
    nop                                           ; $6f6d: $00
    ld b, c                                       ; $6f6e: $41
    jr nz, jr_01f_6fe4                            ; $6f6f: $20 $73

    ld l, b                                       ; $6f71: $68
    ld l, a                                       ; $6f72: $6f
    ld [hl], h                                    ; $6f73: $74

jr_01f_6f74:
    jr nz, @+$76                                  ; $6f74: $20 $74

    ld h, c                                       ; $6f76: $61
    ld l, e                                       ; $6f77: $6b
    ld h, l                                       ; $6f78: $65
    ld l, [hl]                                    ; $6f79: $6e
    jr nz, jr_01f_6ff0                            ; $6f7a: $20 $74

    ld l, a                                       ; $6f7c: $6f
    ld bc, $7365                                  ; $6f7d: $01 $65 $73
    ld h, e                                       ; $6f80: $63
    ld h, c                                       ; $6f81: $61
    ld [hl], b                                    ; $6f82: $70

jr_01f_6f83:
    ld h, l                                       ; $6f83: $65
    jr nz, jr_01f_6fe7                            ; $6f84: $20 $61

    jr nz, jr_01f_6fec                            ; $6f86: $20 $64

    ld l, c                                       ; $6f88: $69
    ld h, [hl]                                    ; $6f89: $66
    ld h, [hl]                                    ; $6f8a: $66
    ld l, c                                       ; $6f8b: $69
    ld h, e                                       ; $6f8c: $63

jr_01f_6f8d:
    ld [hl], l                                    ; $6f8d: $75
    ld l, h                                       ; $6f8e: $6c

jr_01f_6f8f:
    ld [hl], h                                    ; $6f8f: $74
    ld [bc], a                                    ; $6f90: $02
    ld l, h                                       ; $6f91: $6c
    ld l, c                                       ; $6f92: $69
    ld h, l                                       ; $6f93: $65
    jr nz, jr_01f_7005                            ; $6f94: $20 $6f

    ld [hl], d                                    ; $6f96: $72
    jr nz, jr_01f_700c                            ; $6f97: $20 $73

    ld l, c                                       ; $6f99: $69
    ld [hl], h                                    ; $6f9a: $74

jr_01f_6f9b:
    ld [hl], l                                    ; $6f9b: $75
    ld h, c                                       ; $6f9c: $61
    ld [hl], h                                    ; $6f9d: $74
    ld l, c                                       ; $6f9e: $69
    ld l, a                                       ; $6f9f: $6f
    ld l, [hl]                                    ; $6fa0: $6e
    ld l, $03                                     ; $6fa1: $2e $03
    nop                                           ; $6fa3: $00
    ld d, e                                       ; $6fa4: $53
    ld h, e                                       ; $6fa5: $63
    ld l, a                                       ; $6fa6: $6f
    ld [hl], d                                    ; $6fa7: $72
    ld l, c                                       ; $6fa8: $69

jr_01f_6fa9:
    ld l, [hl]                                    ; $6fa9: $6e
    ld h, a                                       ; $6faa: $67
    jr nz, jr_01f_7019                            ; $6fab: $20 $6c

    ld h, l                                       ; $6fad: $65
    ld [hl], e                                    ; $6fae: $73
    ld [hl], e                                    ; $6faf: $73
    ld bc, $6874                                  ; $6fb0: $01 $74 $68

jr_01f_6fb3:
    ld h, c                                       ; $6fb3: $61
    ld l, [hl]                                    ; $6fb4: $6e
    jr nz, jr_01f_702b                            ; $6fb5: $20 $74

    ld l, b                                       ; $6fb7: $68
    ld h, l                                       ; $6fb8: $65
    jr nz, jr_01f_702b                            ; $6fb9: $20 $70

    ld h, c                                       ; $6fbb: $61
    ld [hl], d                                    ; $6fbc: $72
    ld bc, $6373                                  ; $6fbd: $01 $73 $63
    ld l, a                                       ; $6fc0: $6f

jr_01f_6fc1:
    ld [hl], d                                    ; $6fc1: $72
    ld h, l                                       ; $6fc2: $65
    jr nz, jr_01f_702b                            ; $6fc3: $20 $66

    ld l, a                                       ; $6fc5: $6f
    ld [hl], d                                    ; $6fc6: $72
    jr nz, jr_01f_702a                            ; $6fc7: $20 $61

    ld [bc], a                                    ; $6fc9: $02
    ld l, b                                       ; $6fca: $68
    ld l, a                                       ; $6fcb: $6f
    ld l, h                                       ; $6fcc: $6c
    ld h, l                                       ; $6fcd: $65
    jr nz, jr_01f_703f                            ; $6fce: $20 $6f

    ld [hl], d                                    ; $6fd0: $72
    jr nz, jr_01f_7036                            ; $6fd1: $20 $63

    ld l, a                                       ; $6fd3: $6f
    ld [hl], l                                    ; $6fd4: $75

jr_01f_6fd5:
    ld [hl], d                                    ; $6fd5: $72
    ld [hl], e                                    ; $6fd6: $73
    ld h, l                                       ; $6fd7: $65
    ld bc, $7369                                  ; $6fd8: $01 $69 $73
    jr nz, jr_01f_7040                            ; $6fdb: $20 $63

    ld h, c                                       ; $6fdd: $61
    ld l, h                                       ; $6fde: $6c
    ld l, h                                       ; $6fdf: $6c
    ld h, l                                       ; $6fe0: $65
    ld h, h                                       ; $6fe1: $64
    jr nz, jr_01f_7046                            ; $6fe2: $20 $62

jr_01f_6fe4:
    ld h, l                                       ; $6fe4: $65
    ld l, c                                       ; $6fe5: $69
    ld l, [hl]                                    ; $6fe6: $6e

jr_01f_6fe7:
    ld h, a                                       ; $6fe7: $67
    ld bc, $6e75                                  ; $6fe8: $01 $75 $6e
    ld h, h                                       ; $6feb: $64

jr_01f_6fec:
    ld h, l                                       ; $6fec: $65
    ld [hl], d                                    ; $6fed: $72
    jr nz, @+$72                                  ; $6fee: $20 $70

jr_01f_6ff0:
    ld h, c                                       ; $6ff0: $61
    ld [hl], d                                    ; $6ff1: $72
    ld l, $03                                     ; $6ff2: $2e $03
    nop                                           ; $6ff4: $00
    ld d, h                                       ; $6ff5: $54
    ld l, b                                       ; $6ff6: $68
    ld h, l                                       ; $6ff7: $65
    jr nz, jr_01f_706f                            ; $6ff8: $20 $75

    ld [hl], b                                    ; $6ffa: $70
    ld [hl], e                                    ; $6ffb: $73
    jr nz, jr_01f_705f                            ; $6ffc: $20 $61

    ld l, [hl]                                    ; $6ffe: $6e
    ld h, h                                       ; $6fff: $64
    ld bc, $6f64                                  ; $7000: $01 $64 $6f
    ld [hl], a                                    ; $7003: $77
    ld l, [hl]                                    ; $7004: $6e

jr_01f_7005:
    ld [hl], e                                    ; $7005: $73
    jr nz, jr_01f_7077                            ; $7006: $20 $6f

    ld h, [hl]                                    ; $7008: $66
    jr nz, jr_01f_707f                            ; $7009: $20 $74

    ld l, b                                       ; $700b: $68

jr_01f_700c:
    ld h, l                                       ; $700c: $65
    ld bc, $6574                                  ; $700d: $01 $74 $65
    ld [hl], d                                    ; $7010: $72
    ld [hl], d                                    ; $7011: $72
    ld h, c                                       ; $7012: $61
    ld l, c                                       ; $7013: $69
    ld l, [hl]                                    ; $7014: $6e
    ld l, $20                                     ; $7015: $2e $20
    ld c, c                                       ; $7017: $49
    ld [hl], h                                    ; $7018: $74

jr_01f_7019:
    daa                                           ; $7019: $27
    ld [hl], e                                    ; $701a: $73
    ld [bc], a                                    ; $701b: $02
    ld l, c                                       ; $701c: $69
    ld l, l                                       ; $701d: $6d
    ld [hl], b                                    ; $701e: $70
    ld l, a                                       ; $701f: $6f
    ld [hl], d                                    ; $7020: $72
    ld [hl], h                                    ; $7021: $74
    ld h, c                                       ; $7022: $61
    ld l, [hl]                                    ; $7023: $6e
    ld [hl], h                                    ; $7024: $74
    jr nz, jr_01f_709a                            ; $7025: $20 $73

    ld l, c                                       ; $7027: $69
    ld l, [hl]                                    ; $7028: $6e
    ld h, e                                       ; $7029: $63

jr_01f_702a:
    ld h, l                                       ; $702a: $65

jr_01f_702b:
    ld bc, $6874                                  ; $702b: $01 $74 $68
    ld h, l                                       ; $702e: $65
    jr nz, jr_01f_7093                            ; $702f: $20 $62

    ld h, c                                       ; $7031: $61
    ld l, h                                       ; $7032: $6c
    ld l, h                                       ; $7033: $6c
    jr nz, jr_01f_7097                            ; $7034: $20 $61

jr_01f_7036:
    ld l, h                                       ; $7036: $6c
    ld [hl], a                                    ; $7037: $77
    ld h, c                                       ; $7038: $61
    ld a, c                                       ; $7039: $79
    ld [hl], e                                    ; $703a: $73
    ld bc, $6f72                                  ; $703b: $01 $72 $6f
    ld l, h                                       ; $703e: $6c

jr_01f_703f:
    ld l, h                                       ; $703f: $6c

jr_01f_7040:
    ld [hl], e                                    ; $7040: $73
    jr nz, jr_01f_70a7                            ; $7041: $20 $64

    ld l, a                                       ; $7043: $6f
    ld [hl], a                                    ; $7044: $77
    ld l, [hl]                                    ; $7045: $6e

jr_01f_7046:
    ld l, b                                       ; $7046: $68
    ld l, c                                       ; $7047: $69
    ld l, h                                       ; $7048: $6c
    ld l, h                                       ; $7049: $6c
    ld l, $03                                     ; $704a: $2e $03
    nop                                           ; $704c: $00
    ld b, c                                       ; $704d: $41
    jr nz, jr_01f_70b2                            ; $704e: $20 $62

    ld h, c                                       ; $7050: $61
    ld l, h                                       ; $7051: $6c
    ld l, h                                       ; $7052: $6c
    jr nz, jr_01f_70c9                            ; $7053: $20 $74

    ld l, b                                       ; $7055: $68
    ld h, c                                       ; $7056: $61
    ld [hl], h                                    ; $7057: $74
    jr nz, jr_01f_70bd                            ; $7058: $20 $63

    ld h, c                                       ; $705a: $61
    ld l, [hl]                                    ; $705b: $6e
    ld l, [hl]                                    ; $705c: $6e
    ld l, a                                       ; $705d: $6f
    ld [hl], h                                    ; $705e: $74

jr_01f_705f:
    ld bc, $6562                                  ; $705f: $01 $62 $65
    jr nz, @+$72                                  ; $7062: $20 $70

    ld l, h                                       ; $7064: $6c
    ld h, c                                       ; $7065: $61
    ld a, c                                       ; $7066: $79
    ld h, l                                       ; $7067: $65
    ld h, h                                       ; $7068: $64
    jr nz, @+$66                                  ; $7069: $20 $64

    ld [hl], l                                    ; $706b: $75
    ld h, l                                       ; $706c: $65
    jr nz, jr_01f_70e3                            ; $706d: $20 $74

jr_01f_706f:
    ld l, a                                       ; $706f: $6f
    ld bc, $6574                                  ; $7070: $01 $74 $65
    ld [hl], d                                    ; $7073: $72
    ld [hl], d                                    ; $7074: $72
    ld h, c                                       ; $7075: $61
    ld l, c                                       ; $7076: $69

jr_01f_7077:
    ld l, [hl]                                    ; $7077: $6e
    ld l, $02                                     ; $7078: $2e $02
    ld d, h                                       ; $707a: $54
    ld l, b                                       ; $707b: $68
    ld h, l                                       ; $707c: $65
    ld [hl], d                                    ; $707d: $72
    ld h, l                                       ; $707e: $65

jr_01f_707f:
    daa                                           ; $707f: $27
    ld [hl], e                                    ; $7080: $73
    jr nz, jr_01f_70e4                            ; $7081: $20 $61

    jr nz, jr_01f_70b6                            ; $7083: $20 $31

    dec l                                         ; $7085: $2d
    ld [hl], e                                    ; $7086: $73
    ld [hl], h                                    ; $7087: $74
    ld [hl], d                                    ; $7088: $72
    ld l, a                                       ; $7089: $6f
    ld l, e                                       ; $708a: $6b
    ld h, l                                       ; $708b: $65
    ld bc, $6570                                  ; $708c: $01 $70 $65
    ld l, [hl]                                    ; $708f: $6e
    ld h, c                                       ; $7090: $61
    ld l, h                                       ; $7091: $6c
    ld [hl], h                                    ; $7092: $74

jr_01f_7093:
    ld a, c                                       ; $7093: $79
    jr nz, @+$76                                  ; $7094: $20 $74

    ld l, a                                       ; $7096: $6f

jr_01f_7097:
    jr nz, @+$66                                  ; $7097: $20 $64

    ld [hl], d                                    ; $7099: $72

jr_01f_709a:
    ld l, a                                       ; $709a: $6f
    ld [hl], b                                    ; $709b: $70
    jr nz, jr_01f_7112                            ; $709c: $20 $74

    ld l, b                                       ; $709e: $68
    ld h, l                                       ; $709f: $65
    ld bc, $6162                                  ; $70a0: $01 $62 $61
    ld l, h                                       ; $70a3: $6c
    ld l, h                                       ; $70a4: $6c
    ld l, $03                                     ; $70a5: $2e $03

jr_01f_70a7:
    nop                                           ; $70a7: $00
    ld b, c                                       ; $70a8: $41
    jr nz, jr_01f_711f                            ; $70a9: $20 $74

    ld h, l                                       ; $70ab: $65
    ld [hl], d                                    ; $70ac: $72
    ld l, l                                       ; $70ad: $6d
    jr nz, jr_01f_7116                            ; $70ae: $20 $66

    ld l, a                                       ; $70b0: $6f
    ld [hl], d                                    ; $70b1: $72

jr_01f_70b2:
    jr nz, jr_01f_7115                            ; $70b2: $20 $61

    jr nz, jr_01f_7129                            ; $70b4: $20 $73

jr_01f_70b6:
    ld [hl], a                                    ; $70b6: $77
    ld l, c                                       ; $70b7: $69
    ld l, [hl]                                    ; $70b8: $6e
    ld h, a                                       ; $70b9: $67
    ld bc, $6e69                                  ; $70ba: $01 $69 $6e

jr_01f_70bd:
    jr nz, jr_01f_7136                            ; $70bd: $20 $77

    ld l, b                                       ; $70bf: $68
    ld l, c                                       ; $70c0: $69
    ld h, e                                       ; $70c1: $63
    ld l, b                                       ; $70c2: $68
    jr nz, @+$76                                  ; $70c3: $20 $74

    ld l, b                                       ; $70c5: $68
    ld h, l                                       ; $70c6: $65
    jr nz, jr_01f_712c                            ; $70c7: $20 $63

jr_01f_70c9:
    ld l, h                                       ; $70c9: $6c
    ld [hl], l                                    ; $70ca: $75
    ld h, d                                       ; $70cb: $62
    daa                                           ; $70cc: $27
    ld [hl], e                                    ; $70cd: $73
    ld bc, $6170                                  ; $70ce: $01 $70 $61
    ld [hl], h                                    ; $70d1: $74
    ld l, b                                       ; $70d2: $68
    jr nz, jr_01f_713e                            ; $70d3: $20 $69

    ld [hl], e                                    ; $70d5: $73
    jr nz, @+$78                                  ; $70d6: $20 $76

    ld h, l                                       ; $70d8: $65
    ld [hl], d                                    ; $70d9: $72
    ld [hl], h                                    ; $70da: $74
    ld l, c                                       ; $70db: $69
    ld h, e                                       ; $70dc: $63
    ld h, c                                       ; $70dd: $61
    ld l, h                                       ; $70de: $6c
    ld l, $03                                     ; $70df: $2e $03
    nop                                           ; $70e1: $00
    ld d, e                                       ; $70e2: $53

jr_01f_70e3:
    ld l, a                                       ; $70e3: $6f

jr_01f_70e4:
    ld l, l                                       ; $70e4: $6d
    ld h, l                                       ; $70e5: $65
    ld l, a                                       ; $70e6: $6f
    ld l, [hl]                                    ; $70e7: $6e
    ld h, l                                       ; $70e8: $65
    jr nz, jr_01f_7162                            ; $70e9: $20 $77

    ld l, b                                       ; $70eb: $68
    ld l, a                                       ; $70ec: $6f
    jr nz, jr_01f_7158                            ; $70ed: $20 $69

    ld [hl], e                                    ; $70ef: $73
    ld l, [hl]                                    ; $70f0: $6e
    daa                                           ; $70f1: $27
    ld [hl], h                                    ; $70f2: $74
    jr nz, jr_01f_7156                            ; $70f3: $20 $61

    ld bc, $656d                                  ; $70f5: $01 $6d $65
    ld l, l                                       ; $70f8: $6d
    ld h, d                                       ; $70f9: $62
    ld h, l                                       ; $70fa: $65
    ld [hl], d                                    ; $70fb: $72
    jr nz, jr_01f_716d                            ; $70fc: $20 $6f

    ld h, [hl]                                    ; $70fe: $66
    jr nz, jr_01f_7175                            ; $70ff: $20 $74

    ld l, b                                       ; $7101: $68
    ld h, l                                       ; $7102: $65
    jr nz, @+$65                                  ; $7103: $20 $63

    ld l, h                                       ; $7105: $6c
    ld [hl], l                                    ; $7106: $75
    ld h, d                                       ; $7107: $62
    ld bc, $6877                                  ; $7108: $01 $77 $68
    ld h, l                                       ; $710b: $65
    ld [hl], d                                    ; $710c: $72
    ld h, l                                       ; $710d: $65
    jr nz, jr_01f_7178                            ; $710e: $20 $68

    ld h, l                                       ; $7110: $65
    daa                                           ; $7111: $27

jr_01f_7112:
    ld [hl], e                                    ; $7112: $73
    jr nz, jr_01f_7185                            ; $7113: $20 $70

jr_01f_7115:
    ld l, h                                       ; $7115: $6c

jr_01f_7116:
    ld h, c                                       ; $7116: $61
    ld a, c                                       ; $7117: $79
    ld l, c                                       ; $7118: $69
    ld l, [hl]                                    ; $7119: $6e
    ld h, a                                       ; $711a: $67
    ld l, $03                                     ; $711b: $2e $03
    nop                                           ; $711d: $00
    ld d, h                                       ; $711e: $54

jr_01f_711f:
    ld h, l                                       ; $711f: $65
    ld [hl], d                                    ; $7120: $72
    ld [hl], d                                    ; $7121: $72
    ld h, c                                       ; $7122: $61
    ld l, c                                       ; $7123: $69
    ld l, [hl]                                    ; $7124: $6e
    jr nz, jr_01f_718a                            ; $7125: $20 $63

    ld l, a                                       ; $7127: $6f
    halt                                          ; $7128: $76

jr_01f_7129:
    ld h, l                                       ; $7129: $65
    ld [hl], d                                    ; $712a: $72
    ld h, l                                       ; $712b: $65

jr_01f_712c:
    ld h, h                                       ; $712c: $64
    jr nz, jr_01f_7198                            ; $712d: $20 $69

    ld l, [hl]                                    ; $712f: $6e
    ld bc, $6570                                  ; $7130: $01 $70 $65
    ld h, d                                       ; $7133: $62
    ld h, d                                       ; $7134: $62
    ld l, h                                       ; $7135: $6c

jr_01f_7136:
    ld h, l                                       ; $7136: $65
    ld [hl], e                                    ; $7137: $73
    jr nz, jr_01f_719b                            ; $7138: $20 $61

    ld l, [hl]                                    ; $713a: $6e
    ld h, h                                       ; $713b: $64
    jr nz, @+$74                                  ; $713c: $20 $72

jr_01f_713e:
    ld l, a                                       ; $713e: $6f
    ld h, e                                       ; $713f: $63
    ld l, e                                       ; $7140: $6b
    ld [hl], e                                    ; $7141: $73
    ld l, $01                                     ; $7142: $2e $01
    ld c, h                                       ; $7144: $4c
    ld l, c                                       ; $7145: $69
    ld l, e                                       ; $7146: $6b
    ld h, l                                       ; $7147: $65
    jr nz, jr_01f_71ae                            ; $7148: $20 $64

    ld h, l                                       ; $714a: $65
    ld h, l                                       ; $714b: $65
    ld [hl], b                                    ; $714c: $70
    jr nz, jr_01f_71c1                            ; $714d: $20 $72

    ld l, a                                       ; $714f: $6f
    ld [hl], l                                    ; $7150: $75
    ld h, a                                       ; $7151: $67
    ld l, b                                       ; $7152: $68
    inc l                                         ; $7153: $2c
    jr nz, jr_01f_71bf                            ; $7154: $20 $69

jr_01f_7156:
    ld [hl], h                                    ; $7156: $74
    ld [bc], a                                    ; $7157: $02

jr_01f_7158:
    ld l, c                                       ; $7158: $69
    ld [hl], e                                    ; $7159: $73
    jr nz, @+$66                                  ; $715a: $20 $64

    ld l, c                                       ; $715c: $69
    ld h, [hl]                                    ; $715d: $66
    ld h, [hl]                                    ; $715e: $66
    ld l, c                                       ; $715f: $69
    ld h, e                                       ; $7160: $63
    ld [hl], l                                    ; $7161: $75

jr_01f_7162:
    ld l, h                                       ; $7162: $6c
    ld [hl], h                                    ; $7163: $74
    jr nz, @+$76                                  ; $7164: $20 $74

    ld l, a                                       ; $7166: $6f
    jr nz, jr_01f_71dc                            ; $7167: $20 $73

    ld l, b                                       ; $7169: $68
    ld l, a                                       ; $716a: $6f
    ld l, a                                       ; $716b: $6f
    ld [hl], h                                    ; $716c: $74

jr_01f_716d:
    ld bc, $6f66                                  ; $716d: $01 $66 $6f
    ld [hl], d                                    ; $7170: $72
    jr nz, jr_01f_71d7                            ; $7171: $20 $64

    ld l, c                                       ; $7173: $69
    ld [hl], e                                    ; $7174: $73

jr_01f_7175:
    ld [hl], h                                    ; $7175: $74
    ld h, c                                       ; $7176: $61
    ld l, [hl]                                    ; $7177: $6e

jr_01f_7178:
    ld h, e                                       ; $7178: $63
    ld h, l                                       ; $7179: $65
    jr nz, jr_01f_71e2                            ; $717a: $20 $66

    ld [hl], d                                    ; $717c: $72
    ld l, a                                       ; $717d: $6f
    ld l, l                                       ; $717e: $6d
    ld bc, $6874                                  ; $717f: $01 $74 $68
    ld h, l                                       ; $7182: $65
    ld [hl], e                                    ; $7183: $73
    ld h, l                                       ; $7184: $65

jr_01f_7185:
    jr nz, jr_01f_71e8                            ; $7185: $20 $61

    ld [hl], d                                    ; $7187: $72
    ld h, l                                       ; $7188: $65
    ld h, c                                       ; $7189: $61

jr_01f_718a:
    ld [hl], e                                    ; $718a: $73
    ld l, $03                                     ; $718b: $2e $03
    nop                                           ; $718d: $00
    ld b, c                                       ; $718e: $41
    ld l, [hl]                                    ; $718f: $6e
    jr nz, jr_01f_7201                            ; $7190: $20 $6f

    ld h, d                                       ; $7192: $62
    ld [hl], e                                    ; $7193: $73
    ld [hl], h                                    ; $7194: $74
    ld h, c                                       ; $7195: $61
    ld h, e                                       ; $7196: $63
    ld l, h                                       ; $7197: $6c

jr_01f_7198:
    ld h, l                                       ; $7198: $65
    jr nz, jr_01f_7208                            ; $7199: $20 $6d

jr_01f_719b:
    ld h, c                                       ; $719b: $61
    ld h, h                                       ; $719c: $64
    ld h, l                                       ; $719d: $65
    jr nz, jr_01f_720f                            ; $719e: $20 $6f

    ld h, [hl]                                    ; $71a0: $66
    ld bc, $6177                                  ; $71a1: $01 $77 $61
    ld [hl], h                                    ; $71a4: $74
    ld h, l                                       ; $71a5: $65
    ld [hl], d                                    ; $71a6: $72
    ld l, $20                                     ; $71a7: $2e $20
    ld c, c                                       ; $71a9: $49
    ld h, [hl]                                    ; $71aa: $66
    jr nz, jr_01f_7226                            ; $71ab: $20 $79

    ld l, a                                       ; $71ad: $6f

jr_01f_71ae:
    ld [hl], l                                    ; $71ae: $75
    jr nz, @+$66                                  ; $71af: $20 $64

    ld [hl], l                                    ; $71b1: $75
    ld l, [hl]                                    ; $71b2: $6e
    ld l, e                                       ; $71b3: $6b
    ld bc, $6f79                                  ; $71b4: $01 $79 $6f
    ld [hl], l                                    ; $71b7: $75
    ld [hl], d                                    ; $71b8: $72
    jr nz, @+$64                                  ; $71b9: $20 $62

    ld h, c                                       ; $71bb: $61
    ld l, h                                       ; $71bc: $6c
    ld l, h                                       ; $71bd: $6c
    inc l                                         ; $71be: $2c

jr_01f_71bf:
    jr nz, jr_01f_723a                            ; $71bf: $20 $79

jr_01f_71c1:
    ld l, a                                       ; $71c1: $6f
    ld [hl], l                                    ; $71c2: $75
    jr nz, jr_01f_7232                            ; $71c3: $20 $6d

    ld [hl], l                                    ; $71c5: $75
    ld [hl], e                                    ; $71c6: $73
    ld [hl], h                                    ; $71c7: $74
    ld [bc], a                                    ; $71c8: $02
    ld [hl], h                                    ; $71c9: $74
    ld h, c                                       ; $71ca: $61
    ld l, e                                       ; $71cb: $6b
    ld h, l                                       ; $71cc: $65
    jr nz, @+$63                                  ; $71cd: $20 $61

    jr nz, @+$33                                  ; $71cf: $20 $31

    dec l                                         ; $71d1: $2d
    ld [hl], e                                    ; $71d2: $73
    ld [hl], h                                    ; $71d3: $74
    ld [hl], d                                    ; $71d4: $72
    ld l, a                                       ; $71d5: $6f
    ld l, e                                       ; $71d6: $6b

jr_01f_71d7:
    ld h, l                                       ; $71d7: $65
    ld bc, $6570                                  ; $71d8: $01 $70 $65
    ld l, [hl]                                    ; $71db: $6e

jr_01f_71dc:
    ld h, c                                       ; $71dc: $61
    ld l, h                                       ; $71dd: $6c
    ld [hl], h                                    ; $71de: $74
    ld a, c                                       ; $71df: $79
    ld l, $03                                     ; $71e0: $2e $03

jr_01f_71e2:
    nop                                           ; $71e2: $00
    ld b, c                                       ; $71e3: $41
    jr nz, jr_01f_7259                            ; $71e4: $20 $73

    ld l, b                                       ; $71e6: $68
    ld l, a                                       ; $71e7: $6f

jr_01f_71e8:
    ld [hl], d                                    ; $71e8: $72
    ld [hl], h                                    ; $71e9: $74
    dec l                                         ; $71ea: $2d
    ld [hl], d                                    ; $71eb: $72
    ld h, c                                       ; $71ec: $61
    ld l, [hl]                                    ; $71ed: $6e
    ld h, a                                       ; $71ee: $67
    ld h, l                                       ; $71ef: $65
    ld bc, $6c63                                  ; $71f0: $01 $63 $6c
    ld [hl], l                                    ; $71f3: $75
    ld h, d                                       ; $71f4: $62
    jr nz, jr_01f_726c                            ; $71f5: $20 $75

    ld [hl], e                                    ; $71f7: $73
    ld h, l                                       ; $71f8: $65
    ld h, h                                       ; $71f9: $64
    jr nz, @+$76                                  ; $71fa: $20 $74

    ld l, a                                       ; $71fc: $6f
    ld bc, $6968                                  ; $71fd: $01 $68 $69
    ld [hl], h                                    ; $7200: $74

jr_01f_7201:
    jr nz, jr_01f_7277                            ; $7201: $20 $74

    ld l, b                                       ; $7203: $68
    ld h, l                                       ; $7204: $65
    jr nz, @+$64                                  ; $7205: $20 $62

    ld h, c                                       ; $7207: $61

jr_01f_7208:
    ld l, h                                       ; $7208: $6c
    ld l, h                                       ; $7209: $6c
    ld [bc], a                                    ; $720a: $02
    ld l, b                                       ; $720b: $68
    ld l, c                                       ; $720c: $69
    ld h, a                                       ; $720d: $67
    ld l, b                                       ; $720e: $68

jr_01f_720f:
    jr nz, jr_01f_727a                            ; $720f: $20 $69

    ld l, [hl]                                    ; $7211: $6e
    ld [hl], h                                    ; $7212: $74
    ld l, a                                       ; $7213: $6f
    jr nz, jr_01f_728a                            ; $7214: $20 $74

    ld l, b                                       ; $7216: $68
    ld h, l                                       ; $7217: $65
    ld bc, $6961                                  ; $7218: $01 $61 $69
    ld [hl], d                                    ; $721b: $72
    ld l, $20                                     ; $721c: $2e $20
    ld d, e                                       ; $721e: $53
    ld h, c                                       ; $721f: $61
    ld l, [hl]                                    ; $7220: $6e
    ld h, h                                       ; $7221: $64
    jr nz, @+$63                                  ; $7222: $20 $61

    ld l, [hl]                                    ; $7224: $6e
    ld h, h                                       ; $7225: $64

jr_01f_7226:
    ld bc, $6970                                  ; $7226: $01 $70 $69
    ld [hl], h                                    ; $7229: $74
    ld h, e                                       ; $722a: $63
    ld l, b                                       ; $722b: $68
    ld l, c                                       ; $722c: $69
    ld l, [hl]                                    ; $722d: $6e
    ld h, a                                       ; $722e: $67
    jr nz, jr_01f_72a8                            ; $722f: $20 $77

    ld h, l                                       ; $7231: $65

jr_01f_7232:
    ld h, h                                       ; $7232: $64
    ld h, a                                       ; $7233: $67
    ld h, l                                       ; $7234: $65
    ld [hl], e                                    ; $7235: $73
    ld [bc], a                                    ; $7236: $02
    ld h, c                                       ; $7237: $61
    ld [hl], d                                    ; $7238: $72
    ld h, l                                       ; $7239: $65

jr_01f_723a:
    jr nz, jr_01f_72b0                            ; $723a: $20 $74

    ld l, b                                       ; $723c: $68
    ld h, l                                       ; $723d: $65
    jr nz, jr_01f_72ad                            ; $723e: $20 $6d

    ld l, a                                       ; $7240: $6f
    ld [hl], e                                    ; $7241: $73
    ld [hl], h                                    ; $7242: $74
    ld bc, $6f63                                  ; $7243: $01 $63 $6f
    ld l, l                                       ; $7246: $6d
    ld l, l                                       ; $7247: $6d
    ld l, a                                       ; $7248: $6f
    ld l, [hl]                                    ; $7249: $6e
    jr nz, jr_01f_72c0                            ; $724a: $20 $74

    ld a, c                                       ; $724c: $79
    ld [hl], b                                    ; $724d: $70
    ld h, l                                       ; $724e: $65
    ld [hl], e                                    ; $724f: $73
    ld l, $03                                     ; $7250: $2e $03
    nop                                           ; $7252: $00
    ld b, c                                       ; $7253: $41
    jr nz, @+$66                                  ; $7254: $20 $64

    ld l, c                                       ; $7256: $69
    ld [hl], e                                    ; $7257: $73
    ld [hl], h                                    ; $7258: $74

jr_01f_7259:
    ld h, c                                       ; $7259: $61
    ld l, [hl]                                    ; $725a: $6e
    ld h, e                                       ; $725b: $63
    ld h, l                                       ; $725c: $65
    jr nz, jr_01f_72c2                            ; $725d: $20 $63

    ld l, h                                       ; $725f: $6c
    ld [hl], l                                    ; $7260: $75
    ld h, d                                       ; $7261: $62
    jr nz, jr_01f_72d3                            ; $7262: $20 $6f

    ld l, [hl]                                    ; $7264: $6e
    ld h, e                                       ; $7265: $63
    ld h, l                                       ; $7266: $65
    ld bc, $616d                                  ; $7267: $01 $6d $61
    ld h, h                                       ; $726a: $64
    ld h, l                                       ; $726b: $65

jr_01f_726c:
    jr nz, jr_01f_72dd                            ; $726c: $20 $6f

    ld h, [hl]                                    ; $726e: $66
    jr nz, @+$79                                  ; $726f: $20 $77

    ld l, a                                       ; $7271: $6f
    ld l, a                                       ; $7272: $6f
    ld h, h                                       ; $7273: $64
    jr nz, jr_01f_72d8                            ; $7274: $20 $62

    ld [hl], l                                    ; $7276: $75

jr_01f_7277:
    ld [hl], h                                    ; $7277: $74
    jr nz, @+$70                                  ; $7278: $20 $6e

jr_01f_727a:
    ld l, a                                       ; $727a: $6f
    ld [hl], a                                    ; $727b: $77
    ld bc, $616d                                  ; $727c: $01 $6d $61
    ld h, h                                       ; $727f: $64
    ld h, l                                       ; $7280: $65
    jr nz, jr_01f_72f2                            ; $7281: $20 $6f

    ld h, [hl]                                    ; $7283: $66
    jr nz, @+$6f                                  ; $7284: $20 $6d

    ld h, l                                       ; $7286: $65
    ld [hl], h                                    ; $7287: $74
    ld h, c                                       ; $7288: $61
    ld l, h                                       ; $7289: $6c

jr_01f_728a:
    ld l, $02                                     ; $728a: $2e $02
    ld d, l                                       ; $728c: $55
    ld [hl], e                                    ; $728d: $73
    ld h, l                                       ; $728e: $65
    jr nz, jr_01f_72f2                            ; $728f: $20 $61

    jr nz, @+$33                                  ; $7291: $20 $31

    inc l                                         ; $7293: $2c
    jr nz, jr_01f_72c9                            ; $7294: $20 $33

    jr nz, jr_01f_7307                            ; $7296: $20 $6f

    ld [hl], d                                    ; $7298: $72
    jr nz, jr_01f_72cf                            ; $7299: $20 $34

    jr nz, @+$79                                  ; $729b: $20 $77

    ld l, a                                       ; $729d: $6f
    ld l, a                                       ; $729e: $6f
    ld h, h                                       ; $729f: $64
    ld bc, $6e69                                  ; $72a0: $01 $69 $6e
    jr nz, jr_01f_72f2                            ; $72a3: $20 $4d

    ld h, c                                       ; $72a5: $61
    ld [hl], d                                    ; $72a6: $72
    ld l, c                                       ; $72a7: $69

jr_01f_72a8:
    ld l, a                                       ; $72a8: $6f
    jr nz, jr_01f_72f2                            ; $72a9: $20 $47

    ld l, a                                       ; $72ab: $6f
    ld l, h                                       ; $72ac: $6c

jr_01f_72ad:
    ld h, [hl]                                    ; $72ad: $66
    ld l, $03                                     ; $72ae: $2e $03

jr_01f_72b0:
    nop                                           ; $72b0: $00
    ld c, a                                       ; $72b1: $4f
    ld l, [hl]                                    ; $72b2: $6e
    ld h, l                                       ; $72b3: $65
    jr nz, jr_01f_732f                            ; $72b4: $20 $79

    ld h, c                                       ; $72b6: $61
    ld [hl], d                                    ; $72b7: $72
    ld h, h                                       ; $72b8: $64
    jr nz, jr_01f_7320                            ; $72b9: $20 $65

    ld [hl], c                                    ; $72bb: $71
    ld [hl], l                                    ; $72bc: $75
    ld h, c                                       ; $72bd: $61
    ld l, h                                       ; $72be: $6c
    ld [hl], e                                    ; $72bf: $73

jr_01f_72c0:
    jr nz, jr_01f_72f5                            ; $72c0: $20 $33

jr_01f_72c2:
    ld bc, $6566                                  ; $72c2: $01 $66 $65
    ld h, l                                       ; $72c5: $65
    ld [hl], h                                    ; $72c6: $74
    ld l, $20                                     ; $72c7: $2e $20

jr_01f_72c9:
    ld d, h                                       ; $72c9: $54
    ld l, b                                       ; $72ca: $68
    ld h, c                                       ; $72cb: $61
    ld [hl], h                                    ; $72cc: $74
    daa                                           ; $72cd: $27
    ld [hl], e                                    ; $72ce: $73

jr_01f_72cf:
    jr nz, jr_01f_7332                            ; $72cf: $20 $61

    ld h, d                                       ; $72d1: $62
    ld l, a                                       ; $72d2: $6f

jr_01f_72d3:
    ld [hl], l                                    ; $72d3: $75
    ld [hl], h                                    ; $72d4: $74
    ld bc, $6874                                  ; $72d5: $01 $74 $68

jr_01f_72d8:
    ld h, l                                       ; $72d8: $65
    jr nz, jr_01f_734e                            ; $72d9: $20 $73

    ld h, c                                       ; $72db: $61
    ld l, l                                       ; $72dc: $6d

jr_01f_72dd:
    ld h, l                                       ; $72dd: $65
    jr nz, jr_01f_7341                            ; $72de: $20 $61

    ld [hl], e                                    ; $72e0: $73
    jr nz, jr_01f_731c                            ; $72e1: $20 $39

    jr nc, jr_01f_7305                            ; $72e3: $30 $20

    ld h, e                                       ; $72e5: $63
    ld l, l                                       ; $72e6: $6d
    ld l, $03                                     ; $72e7: $2e $03
    nop                                           ; $72e9: $00
    ld d, h                                       ; $72ea: $54
    ld l, b                                       ; $72eb: $68
    ld h, l                                       ; $72ec: $65
    jr nz, jr_01f_7364                            ; $72ed: $20 $75

    ld l, [hl]                                    ; $72ef: $6e
    ld l, c                                       ; $72f0: $69
    ld [hl], h                                    ; $72f1: $74

jr_01f_72f2:
    jr nz, jr_01f_7369                            ; $72f2: $20 $75

    ld [hl], e                                    ; $72f4: $73

jr_01f_72f5:
    ld h, l                                       ; $72f5: $65
    ld h, h                                       ; $72f6: $64
    jr nz, jr_01f_736d                            ; $72f7: $20 $74

    ld l, a                                       ; $72f9: $6f
    ld bc, $656d                                  ; $72fa: $01 $6d $65
    ld h, c                                       ; $72fd: $61
    ld [hl], e                                    ; $72fe: $73
    ld [hl], l                                    ; $72ff: $75
    ld [hl], d                                    ; $7300: $72
    ld h, l                                       ; $7301: $65
    jr nz, jr_01f_7368                            ; $7302: $20 $64

    ld l, c                                       ; $7304: $69

jr_01f_7305:
    ld [hl], e                                    ; $7305: $73
    ld [hl], h                                    ; $7306: $74

jr_01f_7307:
    ld h, c                                       ; $7307: $61
    ld l, [hl]                                    ; $7308: $6e
    ld h, e                                       ; $7309: $63
    ld h, l                                       ; $730a: $65
    ld bc, $756f                                  ; $730b: $01 $6f $75
    ld [hl], h                                    ; $730e: $74
    ld [hl], e                                    ; $730f: $73
    ld l, c                                       ; $7310: $69
    ld h, h                                       ; $7311: $64
    ld h, l                                       ; $7312: $65
    jr nz, jr_01f_7389                            ; $7313: $20 $74

    ld l, b                                       ; $7315: $68
    ld h, l                                       ; $7316: $65
    jr nz, @+$69                                  ; $7317: $20 $67

    ld [hl], d                                    ; $7319: $72
    ld h, l                                       ; $731a: $65
    ld h, l                                       ; $731b: $65

jr_01f_731c:
    ld l, [hl]                                    ; $731c: $6e
    ld l, $03                                     ; $731d: $2e $03
    nop                                           ; $731f: $00

jr_01f_7320:
    ld c, c                                       ; $7320: $49
    ld l, [hl]                                    ; $7321: $6e
    ld h, c                                       ; $7322: $61
    ld h, d                                       ; $7323: $62
    ld l, c                                       ; $7324: $69
    ld l, h                                       ; $7325: $6c
    ld l, c                                       ; $7326: $69
    ld [hl], h                                    ; $7327: $74
    ld a, c                                       ; $7328: $79
    jr nz, jr_01f_739f                            ; $7329: $20 $74

    ld l, a                                       ; $732b: $6f
    jr nz, jr_01f_7396                            ; $732c: $20 $68

    ld l, c                                       ; $732e: $69

jr_01f_732f:
    ld [hl], h                                    ; $732f: $74
    jr nz, @+$76                                  ; $7330: $20 $74

jr_01f_7332:
    ld l, b                                       ; $7332: $68
    ld h, l                                       ; $7333: $65
    ld bc, $6162                                  ; $7334: $01 $62 $61
    ld l, h                                       ; $7337: $6c
    ld l, h                                       ; $7338: $6c
    jr nz, @+$72                                  ; $7339: $20 $70

    ld [hl], d                                    ; $733b: $72
    ld l, a                                       ; $733c: $6f
    ld [hl], b                                    ; $733d: $70
    ld h, l                                       ; $733e: $65
    ld [hl], d                                    ; $733f: $72
    ld l, h                                       ; $7340: $6c

jr_01f_7341:
    ld a, c                                       ; $7341: $79
    jr nz, jr_01f_73a8                            ; $7342: $20 $64

    ld [hl], l                                    ; $7344: $75
    ld h, l                                       ; $7345: $65
    ld bc, $6f74                                  ; $7346: $01 $74 $6f
    jr nz, @+$70                                  ; $7349: $20 $6e

    ld h, l                                       ; $734b: $65
    ld [hl], d                                    ; $734c: $72
    halt                                          ; $734d: $76

jr_01f_734e:
    ld h, l                                       ; $734e: $65
    ld [hl], e                                    ; $734f: $73
    ld l, $20                                     ; $7350: $2e $20
    ld e, c                                       ; $7352: $59
    ld l, c                                       ; $7353: $69
    ld [hl], b                                    ; $7354: $70
    ld [hl], e                                    ; $7355: $73
    ld [bc], a                                    ; $7356: $02
    ld [hl], l                                    ; $7357: $75
    ld [hl], e                                    ; $7358: $73
    ld [hl], l                                    ; $7359: $75
    ld h, c                                       ; $735a: $61
    ld l, h                                       ; $735b: $6c
    ld l, h                                       ; $735c: $6c
    ld a, c                                       ; $735d: $79
    jr nz, @+$71                                  ; $735e: $20 $6f

    ld h, e                                       ; $7360: $63
    ld h, e                                       ; $7361: $63
    ld [hl], l                                    ; $7362: $75
    ld [hl], d                                    ; $7363: $72

jr_01f_7364:
    jr nz, @+$79                                  ; $7364: $20 $77

    ld l, b                                       ; $7366: $68
    ld h, l                                       ; $7367: $65

jr_01f_7368:
    ld l, [hl]                                    ; $7368: $6e

jr_01f_7369:
    ld bc, $7570                                  ; $7369: $01 $70 $75
    ld [hl], h                                    ; $736c: $74

jr_01f_736d:
    ld [hl], h                                    ; $736d: $74
    ld l, c                                       ; $736e: $69
    ld l, [hl]                                    ; $736f: $6e
    ld h, a                                       ; $7370: $67
    jr nz, @+$64                                  ; $7371: $20 $62

    ld [hl], l                                    ; $7373: $75
    ld [hl], h                                    ; $7374: $74
    jr nz, @+$6f                                  ; $7375: $20 $6d

    ld h, c                                       ; $7377: $61
    ld a, c                                       ; $7378: $79
    ld bc, $636f                                  ; $7379: $01 $6f $63
    ld h, e                                       ; $737c: $63
    ld [hl], l                                    ; $737d: $75
    ld [hl], d                                    ; $737e: $72
    jr nz, @+$67                                  ; $737f: $20 $65

    ld l, h                                       ; $7381: $6c
    ld [hl], e                                    ; $7382: $73
    ld h, l                                       ; $7383: $65
    ld [hl], a                                    ; $7384: $77
    ld l, b                                       ; $7385: $68
    ld h, l                                       ; $7386: $65
    ld [hl], d                                    ; $7387: $72
    ld h, l                                       ; $7388: $65

jr_01f_7389:
    ld l, $03                                     ; $7389: $2e $03
    nop                                           ; $738b: $00
    jr nc, @+$32                                  ; $738c: $30 $30

    jr nc, jr_01f_7390                            ; $738e: $30 $00

jr_01f_7390:
    ld sp, $7473                                  ; $7390: $31 $73 $74
    nop                                           ; $7393: $00
    ld [hl-], a                                   ; $7394: $32
    ld l, [hl]                                    ; $7395: $6e

jr_01f_7396:
    ld h, h                                       ; $7396: $64
    nop                                           ; $7397: $00
    inc sp                                        ; $7398: $33
    ld [hl], d                                    ; $7399: $72
    ld h, h                                       ; $739a: $64
    nop                                           ; $739b: $00
    ld d, h                                       ; $739c: $54
    ld l, b                                       ; $739d: $68
    ld l, c                                       ; $739e: $69

jr_01f_739f:
    ld [hl], e                                    ; $739f: $73
    jr nz, @+$6b                                  ; $73a0: $20 $69

    ld [hl], e                                    ; $73a2: $73
    jr nz, @+$63                                  ; $73a3: $20 $61

    jr nz, @+$76                                  ; $73a5: $20 $74

    ld h, l                                       ; $73a7: $65

jr_01f_73a8:
    ld [hl], e                                    ; $73a8: $73
    ld [hl], h                                    ; $73a9: $74
    ld l, $03                                     ; $73aa: $2e $03
    nop                                           ; $73ac: $00

    db $4c, $56, $2e, $00, $f5, $3e, $00, $cd, $c1, $73

    pop af                                        ; $73b7: $f1
    ret                                           ; $73b8: $c9


    db $f5, $3e, $01, $cd, $c1, $73, $f1, $c9, $c5, $d5, $e5, $21, $04, $40, $cb, $23
    db $cb, $12, $19, $5e, $23, $56, $21, $56, $41, $19, $b7, $20, $08, $11, $00, $c6
    db $01, $80, $01, $18, $06, $11, $80, $d8, $01, $20, $00, $cd, $d3, $03

    pop hl                                        ; $73e7: $e1
    pop de                                        ; $73e8: $d1
    pop bc                                        ; $73e9: $c1
    ret                                           ; $73ea: $c9


    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff

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
