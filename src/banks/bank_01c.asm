; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

    db $14, $7b

    inc e                                         ; $4002: $1c
    ld a, e                                       ; $4003: $7b
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    jr nc, jr_01c_4008                            ; $4006: $30 $00

jr_01c_4008:
    ld c, l                                       ; $4008: $4d
    nop                                           ; $4009: $00
    adc c                                         ; $400a: $89
    nop                                           ; $400b: $00
    db $ed                                        ; $400c: $ed
    nop                                           ; $400d: $00
    ld d, l                                       ; $400e: $55
    ld bc, $01b9                                  ; $400f: $01 $b9 $01
    jp nc, $0801                                  ; $4012: $d2 $01 $08

    ld [bc], a                                    ; $4015: $02
    inc h                                         ; $4016: $24
    ld [bc], a                                    ; $4017: $02
    ld e, c                                       ; $4018: $59
    ld [bc], a                                    ; $4019: $02
    sub d                                         ; $401a: $92
    ld [bc], a                                    ; $401b: $02
    push bc                                       ; $401c: $c5
    ld [bc], a                                    ; $401d: $02
    cpl                                           ; $401e: $2f
    inc bc                                        ; $401f: $03
    ld d, d                                       ; $4020: $52
    inc bc                                        ; $4021: $03
    adc d                                         ; $4022: $8a
    inc bc                                        ; $4023: $03
    cp a                                          ; $4024: $bf
    inc bc                                        ; $4025: $03
    jr z, jr_01c_402c                             ; $4026: $28 $04

    ld d, l                                       ; $4028: $55
    inc b                                         ; $4029: $04
    ld a, h                                       ; $402a: $7c
    inc b                                         ; $402b: $04

jr_01c_402c:
    rst $18                                       ; $402c: $df
    inc b                                         ; $402d: $04
    ld b, e                                       ; $402e: $43
    dec b                                         ; $402f: $05
    halt                                          ; $4030: $76
    dec b                                         ; $4031: $05
    jp c, Jump_000_2505                           ; $4032: $da $05 $25

    ld b, $89                                     ; $4035: $06 $89
    ld b, $a4                                     ; $4037: $06 $a4
    ld b, $0c                                     ; $4039: $06 $0c
    rlca                                          ; $403b: $07
    ld b, b                                       ; $403c: $40
    rlca                                          ; $403d: $07
    ld l, l                                       ; $403e: $6d
    rlca                                          ; $403f: $07
    adc l                                         ; $4040: $8d
    rlca                                          ; $4041: $07
    call nz, $fb07                                ; $4042: $c4 $07 $fb
    rlca                                          ; $4045: $07
    dec hl                                        ; $4046: $2b
    ld [$085d], sp                                ; $4047: $08 $5d $08
    add a                                         ; $404a: $87
    ld [$08f5], sp                                ; $404b: $08 $f5 $08
    add hl, de                                    ; $404e: $19
    add hl, bc                                    ; $404f: $09
    ld c, [hl]                                    ; $4050: $4e
    add hl, bc                                    ; $4051: $09
    add d                                         ; $4052: $82
    add hl, bc                                    ; $4053: $09
    cp c                                          ; $4054: $b9
    add hl, bc                                    ; $4055: $09
    push hl                                       ; $4056: $e5
    add hl, bc                                    ; $4057: $09
    ld de, $770a                                  ; $4058: $11 $0a $77
    ld a, [bc]                                    ; $405b: $0a
    sbc $0a                                       ; $405c: $de $0a
    ld [de], a                                    ; $405e: $12

jr_01c_405f:
    dec bc                                        ; $405f: $0b

jr_01c_4060:
    adc c                                         ; $4060: $89
    dec bc                                        ; $4061: $0b
    xor $0b                                       ; $4062: $ee $0b
    inc e                                         ; $4064: $1c
    inc c                                         ; $4065: $0c
    add e                                         ; $4066: $83
    inc c                                         ; $4067: $0c
    ld de, $7f0d                                  ; $4068: $11 $0d $7f
    dec c                                         ; $406b: $0d
    sub [hl]                                      ; $406c: $96
    dec c                                         ; $406d: $0d
    jp z, Jump_000_000d                           ; $406e: $ca $0d $00

    ld c, $24                                     ; $4071: $0e $24
    ld c, $3b                                     ; $4073: $0e $3b
    ld c, $57                                     ; $4075: $0e $57
    ld c, $6b                                     ; $4077: $0e $6b
    ld c, $a6                                     ; $4079: $0e $a6
    ld c, $de                                     ; $407b: $0e $de
    ld c, $0b                                     ; $407d: $0e $0b
    rrca                                          ; $407f: $0f
    ld [hl], b                                    ; $4080: $70
    rrca                                          ; $4081: $0f
    sub h                                         ; $4082: $94
    rrca                                          ; $4083: $0f
    push bc                                       ; $4084: $c5
    rrca                                          ; $4085: $0f
    inc [hl]                                      ; $4086: $34
    db $10                                        ; $4087: $10
    ld l, [hl]                                    ; $4088: $6e
    db $10                                        ; $4089: $10
    sbc $10                                       ; $408a: $de $10
    ld de, $2711                                  ; $408c: $11 $11 $27
    ld de, $1159                                  ; $408f: $11 $59 $11
    adc b                                         ; $4092: $88
    ld de, $11b6                                  ; $4093: $11 $b6 $11
    db $e3                                        ; $4096: $e3
    ld de, $11f3                                  ; $4097: $11 $f3 $11
    ccf                                           ; $409a: $3f
    ld [de], a                                    ; $409b: $12
    halt                                          ; $409c: $76
    ld [de], a                                    ; $409d: $12
    xor l                                         ; $409e: $ad
    ld [de], a                                    ; $409f: $12
    ld e, $13                                     ; $40a0: $1e $13
    ld [hl], d                                    ; $40a2: $72
    inc de                                        ; $40a3: $13
    call c, Call_01c_5913                         ; $40a4: $dc $13 $59
    inc d                                         ; $40a7: $14
    cp a                                          ; $40a8: $bf
    inc d                                         ; $40a9: $14
    db $ed                                        ; $40aa: $ed

jr_01c_40ab:
    inc d                                         ; $40ab: $14
    inc bc                                        ; $40ac: $03
    dec d                                         ; $40ad: $15
    cp [hl]                                       ; $40ae: $be
    dec d                                         ; $40af: $15
    db $ec                                        ; $40b0: $ec
    dec d                                         ; $40b1: $15
    db $10                                        ; $40b2: $10
    ld d, $77                                     ; $40b3: $16 $77
    ld d, $94                                     ; $40b5: $16 $94
    ld d, $aa                                     ; $40b7: $16 $aa
    ld d, $b7                                     ; $40b9: $16 $b7
    ld d, $ed                                     ; $40bb: $16 $ed
    ld d, $23                                     ; $40bd: $16 $23
    rla                                           ; $40bf: $17
    ld e, c                                       ; $40c0: $59
    rla                                           ; $40c1: $17
    adc h                                         ; $40c2: $8c
    rla                                           ; $40c3: $17
    pop af                                        ; $40c4: $f1
    rla                                           ; $40c5: $17
    daa                                           ; $40c6: $27

jr_01c_40c7:
    jr @+$5b                                      ; $40c7: $18 $59

    jr jr_01c_4060                                ; $40c9: $18 $95

    jr jr_01c_40c7                                ; $40cb: $18 $fa

    jr jr_01c_405f                                ; $40cd: $18 $90

    add hl, de                                    ; $40cf: $19
    jp nz, $d819                                  ; $40d0: $c2 $19 $d8

    add hl, de                                    ; $40d3: $19
    dec bc                                        ; $40d4: $0b
    ld a, [de]                                    ; $40d5: $1a
    ld e, a                                       ; $40d6: $5f
    ld a, [de]                                    ; $40d7: $1a
    sbc e                                         ; $40d8: $9b
    ld a, [de]                                    ; $40d9: $1a
    cp e                                          ; $40da: $bb
    ld a, [de]                                    ; $40db: $1a
    xor $1a                                       ; $40dc: $ee $1a
    ld [bc], a                                    ; $40de: $02
    dec de                                        ; $40df: $1b
    jr c, jr_01c_40fd                             ; $40e0: $38 $1b

    ld [hl], d                                    ; $40e2: $72
    dec de                                        ; $40e3: $1b
    xor b                                         ; $40e4: $a8
    dec de                                        ; $40e5: $1b
    inc c                                         ; $40e6: $0c
    inc e                                         ; $40e7: $1c
    ld e, e                                       ; $40e8: $5b
    inc e                                         ; $40e9: $1c
    call nz, Call_000_321c                        ; $40ea: $c4 $1c $32
    dec e                                         ; $40ed: $1d
    ld d, b                                       ; $40ee: $50
    dec e                                         ; $40ef: $1d
    ld h, [hl]                                    ; $40f0: $66
    dec e                                         ; $40f1: $1d
    and [hl]                                      ; $40f2: $a6
    dec e                                         ; $40f3: $1d
    call nc, $f11d                                ; $40f4: $d4 $1d $f1
    dec e                                         ; $40f7: $1d
    ld [$291e], sp                                ; $40f8: $08 $1e $29
    ld e, $3d                                     ; $40fb: $1e $3d

jr_01c_40fd:
    ld e, $71                                     ; $40fd: $1e $71
    ld e, $a2                                     ; $40ff: $1e $a2
    ld e, $d7                                     ; $4101: $1e $d7
    ld e, $0a                                     ; $4103: $1e $0a
    rra                                           ; $4105: $1f
    ld [hl], e                                    ; $4106: $73
    rra                                           ; $4107: $1f
    rst $08                                       ; $4108: $cf
    rra                                           ; $4109: $1f
    inc [hl]                                      ; $410a: $34
    jr nz, jr_01c_40ab                            ; $410b: $20 $9e

    jr nz, @-$11                                  ; $410d: $20 $ed

    jr nz, jr_01c_4114                            ; $410f: $20 $03

    ld hl, $213a                                  ; $4111: $21 $3a $21

jr_01c_4114:
    add c                                         ; $4114: $81
    ld hl, $21ac                                  ; $4115: $21 $ac $21
    jr @+$24                                      ; $4118: $18 $22

    dec hl                                        ; $411a: $2b
    ld [hl+], a                                   ; $411b: $22
    sub a                                         ; $411c: $97
    ld [hl+], a                                   ; $411d: $22
    cp a                                          ; $411e: $bf
    ld [hl+], a                                   ; $411f: $22
    ld [$6123], sp                                ; $4120: $08 $23 $61
    inc hl                                        ; $4123: $23
    adc $23                                       ; $4124: $ce $23
    cpl                                           ; $4126: $2f
    inc h                                         ; $4127: $24
    sbc b                                         ; $4128: $98
    inc h                                         ; $4129: $24
    dec b                                         ; $412a: $05
    dec h                                         ; $412b: $25
    ld e, $25                                     ; $412c: $1e $25
    ld [hl-], a                                   ; $412e: $32
    dec h                                         ; $412f: $25
    cp [hl]                                       ; $4130: $be
    dec h                                         ; $4131: $25
    pop hl                                        ; $4132: $e1
    dec h                                         ; $4133: $25
    ld e, $26                                     ; $4134: $1e $26
    jr c, jr_01c_415e                             ; $4136: $38 $26

jr_01c_4138:
    ld c, [hl]                                    ; $4138: $4e
    ld h, $61                                     ; $4139: $26 $61
    ld h, $8f                                     ; $413b: $26 $8f
    ld h, $c0                                     ; $413d: $26 $c0
    ld h, $f7                                     ; $413f: $26 $f7
    ld h, $2a                                     ; $4141: $26 $2a
    daa                                           ; $4143: $27
    adc a                                         ; $4144: $8f
    daa                                           ; $4145: $27
    db $ed                                        ; $4146: $ed
    daa                                           ; $4147: $27
    ld b, l                                       ; $4148: $45
    jr z, @-$50                                   ; $4149: $28 $ae

    jr z, jr_01c_416a                             ; $414b: $28 $1d

    add hl, hl                                    ; $414d: $29
    ld sp, $6329                                  ; $414e: $31 $29 $63
    add hl, hl                                    ; $4151: $29
    ld [hl], e                                    ; $4152: $73
    add hl, hl                                    ; $4153: $29
    add $29                                       ; $4154: $c6 $29
    ld bc, $2f2a                                  ; $4156: $01 $2a $2f
    ld a, [hl+]                                   ; $4159: $2a
    ld c, h                                       ; $415a: $4c
    ld a, [hl+]                                   ; $415b: $2a
    sbc d                                         ; $415c: $9a
    ld a, [hl+]                                   ; $415d: $2a

jr_01c_415e:
    xor $2a                                       ; $415e: $ee $2a
    ld d, $2b                                     ; $4160: $16 $2b
    ld b, [hl]                                    ; $4162: $46
    dec hl                                        ; $4163: $2b
    ld a, l                                       ; $4164: $7d
    dec hl                                        ; $4165: $2b
    add a                                         ; $4166: $87
    dec hl                                        ; $4167: $2b
    or [hl]                                       ; $4168: $b6
    dec hl                                        ; $4169: $2b

jr_01c_416a:
    di                                            ; $416a: $f3
    dec hl                                        ; $416b: $2b
    ld h, $2c                                     ; $416c: $26 $2c
    add b                                         ; $416e: $80
    inc l                                         ; $416f: $2c
    db $dd                                        ; $4170: $dd
    inc l                                         ; $4171: $2c
    ld sp, $932d                                  ; $4172: $31 $2d $93
    dec l                                         ; $4175: $2d
    jp z, Jump_000_242d                           ; $4176: $ca $2d $24

    ld l, $4c                                     ; $4179: $2e $4c
    ld l, $b2                                     ; $417b: $2e $b2
    ld l, $f8                                     ; $417d: $2e $f8
    ld l, $61                                     ; $417f: $2e $61
    cpl                                           ; $4181: $2f
    sbc h                                         ; $4182: $9c
    cpl                                           ; $4183: $2f
    ld [$4b2f], a                                 ; $4184: $ea $2f $4b

jr_01c_4187:
    jr nc, jr_01c_4138                            ; $4187: $30 $af

    jr nc, @+$04                                  ; $4189: $30 $02

    ld sp, $315c                                  ; $418b: $31 $5c $31
    or [hl]                                       ; $418e: $b6
    ld sp, $3213                                  ; $418f: $31 $13 $32
    ld a, h                                       ; $4192: $7c
    ld [hl-], a                                   ; $4193: $32
    ret z                                         ; $4194: $c8

    ld [hl-], a                                   ; $4195: $32
    db $fd                                        ; $4196: $fd

jr_01c_4197:
    ld [hl-], a                                   ; $4197: $32
    ld d, h                                       ; $4198: $54
    inc sp                                        ; $4199: $33
    adc e                                         ; $419a: $8b
    inc sp                                        ; $419b: $33
    ld a, [$6433]                                 ; $419c: $fa $33 $64
    inc [hl]                                      ; $419f: $34
    adc $34                                       ; $41a0: $ce $34
    inc hl                                        ; $41a2: $23
    dec [hl]                                      ; $41a3: $35

jr_01c_41a4:
    ld b, [hl]                                    ; $41a4: $46
    dec [hl]                                      ; $41a5: $35
    ld l, [hl]                                    ; $41a6: $6e
    dec [hl]                                      ; $41a7: $35
    ld a, a                                       ; $41a8: $7f
    dec [hl]                                      ; $41a9: $35
    and c                                         ; $41aa: $a1
    dec [hl]                                      ; $41ab: $35
    add $35                                       ; $41ac: $c6 $35
    ret c                                         ; $41ae: $d8

    dec [hl]                                      ; $41af: $35

jr_01c_41b0:
    inc sp                                        ; $41b0: $33
    ld [hl], $53                                  ; $41b1: $36 $53
    ld [hl], $77                                  ; $41b3: $36 $77
    ld [hl], $bc                                  ; $41b5: $36 $bc
    ld [hl], $e7                                  ; $41b7: $36 $e7
    ld [hl], $15                                  ; $41b9: $36 $15
    scf                                           ; $41bb: $37
    jr nz, jr_01c_41f5                            ; $41bc: $20 $37

    cpl                                           ; $41be: $2f
    scf                                           ; $41bf: $37
    ld b, b                                       ; $41c0: $40
    scf                                           ; $41c1: $37
    ld d, h                                       ; $41c2: $54
    scf                                           ; $41c3: $37
    ld l, c                                       ; $41c4: $69
    scf                                           ; $41c5: $37

    db $6f, $37, $75, $37, $7a, $37, $81, $37, $8f, $37

    sub a                                         ; $41d0: $97
    scf                                           ; $41d1: $37

jr_01c_41d2:
    and e                                         ; $41d2: $a3
    scf                                           ; $41d3: $37
    or [hl]                                       ; $41d4: $b6
    scf                                           ; $41d5: $37

    db $cc, $37, $d0, $37, $d3, $37

    rst $18                                       ; $41dc: $df
    scf                                           ; $41dd: $37
    db $e4                                        ; $41de: $e4

jr_01c_41df:
    scf                                           ; $41df: $37
    ld [$ec37], a                                 ; $41e0: $ea $37 $ec
    scf                                           ; $41e3: $37
    ld a, [c]                                     ; $41e4: $f2
    scf                                           ; $41e5: $37
    ld hl, sp+$37                                 ; $41e6: $f8 $37
    nop                                           ; $41e8: $00
    jr c, @+$07                                   ; $41e9: $38 $05

    jr c, jr_01c_41f7                             ; $41eb: $38 $0a

    jr c, @+$15                                   ; $41ed: $38 $13

    db $38                                        ; $41ef: $38

    db $18, $38, $25, $38

    dec [hl]                                      ; $41f4: $35

jr_01c_41f5:
    jr c, @+$58                                   ; $41f5: $38 $56

jr_01c_41f7:
    jr c, jr_01c_4256                             ; $41f7: $38 $5d

    jr c, jr_01c_4263                             ; $41f9: $38 $68

    jr c, jr_01c_426d                             ; $41fb: $38 $70

jr_01c_41fd:
    jr c, jr_01c_427a                             ; $41fd: $38 $7b

    jr c, jr_01c_4187                             ; $41ff: $38 $86

    jr c, jr_01c_4197                             ; $4201: $38 $94

    jr c, jr_01c_41a4                             ; $4203: $38 $9f

    jr c, jr_01c_41b0                             ; $4205: $38 $a9

    jr c, @-$4d                                   ; $4207: $38 $b1

jr_01c_4209:
    jr c, @-$42                                   ; $4209: $38 $bc

    jr c, jr_01c_41d2                             ; $420b: $38 $c5

    jr c, jr_01c_41df                             ; $420d: $38 $d0

    jr c, @-$1e                                   ; $420f: $38 $e0

    jr c, jr_01c_41fd                             ; $4211: $38 $ea

    jr c, jr_01c_4269                             ; $4213: $38 $54

    ld l, b                                       ; $4215: $68
    ld h, l                                       ; $4216: $65
    ld l, [hl]                                    ; $4217: $6e
    jr nz, jr_01c_4287                            ; $4218: $20 $6d

    ld h, c                                       ; $421a: $61
    ld [hl], e                                    ; $421b: $73
    ld [hl], h                                    ; $421c: $74
    ld h, l                                       ; $421d: $65
    ld [hl], d                                    ; $421e: $72
    jr nz, @+$63                                  ; $421f: $20 $61

    ld bc, $6968                                  ; $4221: $01 $68 $69
    ld h, a                                       ; $4224: $67
    ld l, b                                       ; $4225: $68
    jr nz, @+$75                                  ; $4226: $20 $73

    ld l, b                                       ; $4228: $68
    ld l, a                                       ; $4229: $6f
    ld [hl], h                                    ; $422a: $74
    jr nz, jr_01c_42a1                            ; $422b: $20 $74

    ld l, a                                       ; $422d: $6f
    jr nz, jr_01c_42a5                            ; $422e: $20 $75

    ld [hl], e                                    ; $4230: $73
    ld h, l                                       ; $4231: $65
    ld bc, $6977                                  ; $4232: $01 $77 $69
    ld [hl], h                                    ; $4235: $74
    ld l, b                                       ; $4236: $68
    jr nz, jr_01c_42ad                            ; $4237: $20 $74

    ld h, c                                       ; $4239: $61
    ld l, c                                       ; $423a: $69
    ld l, h                                       ; $423b: $6c
    ld [hl], a                                    ; $423c: $77
    ld l, c                                       ; $423d: $69
    ld l, [hl]                                    ; $423e: $6e
    ld h, h                                       ; $423f: $64
    ld [hl], e                                    ; $4240: $73
    ld l, $03                                     ; $4241: $2e $03
    nop                                           ; $4243: $00
    ld d, h                                       ; $4244: $54
    ld l, b                                       ; $4245: $68
    ld h, l                                       ; $4246: $65
    ld l, [hl]                                    ; $4247: $6e
    jr nz, jr_01c_42c3                            ; $4248: $20 $79

    ld l, a                                       ; $424a: $6f
    ld [hl], l                                    ; $424b: $75
    jr nz, jr_01c_42ba                            ; $424c: $20 $6c

    ld l, c                                       ; $424e: $69
    ld l, e                                       ; $424f: $6b
    ld h, l                                       ; $4250: $65
    ld bc, $6361                                  ; $4251: $01 $61 $63
    ld h, e                                       ; $4254: $63
    ld [hl], l                                    ; $4255: $75

jr_01c_4256:
    ld [hl], d                                    ; $4256: $72
    ld h, c                                       ; $4257: $61
    ld h, e                                       ; $4258: $63
    ld a, c                                       ; $4259: $79
    jr nz, jr_01c_42c9                            ; $425a: $20 $6d

    ld l, a                                       ; $425c: $6f
    ld [hl], d                                    ; $425d: $72
    ld h, l                                       ; $425e: $65
    ccf                                           ; $425f: $3f
    nop                                           ; $4260: $00
    ld d, h                                       ; $4261: $54
    ld l, b                                       ; $4262: $68

jr_01c_4263:
    ld h, l                                       ; $4263: $65
    ld l, [hl]                                    ; $4264: $6e
    jr nz, jr_01c_42dc                            ; $4265: $20 $75

    ld [hl], e                                    ; $4267: $73
    ld h, l                                       ; $4268: $65

jr_01c_4269:
    jr nz, jr_01c_42cc                            ; $4269: $20 $61

    jr nz, jr_01c_42d9                            ; $426b: $20 $6c

jr_01c_426d:
    ld l, a                                       ; $426d: $6f
    ld [hl], a                                    ; $426e: $77
    jr nz, jr_01c_42e4                            ; $426f: $20 $73

    ld l, b                                       ; $4271: $68
    ld l, a                                       ; $4272: $6f
    ld [hl], h                                    ; $4273: $74
    ld bc, $6e69                                  ; $4274: $01 $69 $6e
    jr nz, jr_01c_42e1                            ; $4277: $20 $68

    ld h, l                                       ; $4279: $65

jr_01c_427a:
    ld h, c                                       ; $427a: $61
    ld h, h                                       ; $427b: $64
    ld [hl], a                                    ; $427c: $77
    ld l, c                                       ; $427d: $69
    ld l, [hl]                                    ; $427e: $6e
    ld h, h                                       ; $427f: $64
    ld [hl], e                                    ; $4280: $73
    jr nz, jr_01c_42b0                            ; $4281: $20 $2d

    jr nz, jr_01c_42ee                            ; $4283: $20 $69

    ld [hl], h                                    ; $4285: $74
    daa                                           ; $4286: $27

jr_01c_4287:
    ld l, h                                       ; $4287: $6c
    ld l, h                                       ; $4288: $6c
    ld bc, $6562                                  ; $4289: $01 $62 $65
    jr nz, jr_01c_42ef                            ; $428c: $20 $61

    ld h, [hl]                                    ; $428e: $66
    ld h, [hl]                                    ; $428f: $66
    ld h, l                                       ; $4290: $65
    ld h, e                                       ; $4291: $63
    ld [hl], h                                    ; $4292: $74
    ld h, l                                       ; $4293: $65
    ld h, h                                       ; $4294: $64
    jr nz, jr_01c_4303                            ; $4295: $20 $6c

    ld h, l                                       ; $4297: $65
    ld [hl], e                                    ; $4298: $73
    ld [hl], e                                    ; $4299: $73
    ld l, $03                                     ; $429a: $2e $03
    nop                                           ; $429c: $00
    ld b, c                                       ; $429d: $41
    ld l, [hl]                                    ; $429e: $6e
    jr nz, jr_01c_4302                            ; $429f: $20 $61

jr_01c_42a1:
    ld h, e                                       ; $42a1: $63
    ld h, e                                       ; $42a2: $63
    ld [hl], l                                    ; $42a3: $75
    ld [hl], d                                    ; $42a4: $72

jr_01c_42a5:
    ld h, c                                       ; $42a5: $61
    ld [hl], h                                    ; $42a6: $74
    ld h, l                                       ; $42a7: $65
    jr nz, jr_01c_431d                            ; $42a8: $20 $73

    ld l, b                                       ; $42aa: $68
    ld l, a                                       ; $42ab: $6f
    ld [hl], h                                    ; $42ac: $74

jr_01c_42ad:
    jr nz, jr_01c_4318                            ; $42ad: $20 $69

    ld [hl], e                                    ; $42af: $73

jr_01c_42b0:
    ld bc, $6e6f                                  ; $42b0: $01 $6f $6e
    ld h, l                                       ; $42b3: $65
    jr nz, jr_01c_4325                            ; $42b4: $20 $6f

    ld h, [hl]                                    ; $42b6: $66
    jr nz, jr_01c_4320                            ; $42b7: $20 $67

    ld l, a                                       ; $42b9: $6f

jr_01c_42ba:
    ld l, h                                       ; $42ba: $6c
    ld h, [hl]                                    ; $42bb: $66
    daa                                           ; $42bc: $27
    ld [hl], e                                    ; $42bd: $73
    jr nz, jr_01c_4322                            ; $42be: $20 $62

    ld h, c                                       ; $42c0: $61
    ld [hl], e                                    ; $42c1: $73
    ld l, c                                       ; $42c2: $69

jr_01c_42c3:
    ld h, e                                       ; $42c3: $63
    ld bc, $7270                                  ; $42c4: $01 $70 $72
    ld l, c                                       ; $42c7: $69
    ld l, [hl]                                    ; $42c8: $6e

jr_01c_42c9:
    ld h, e                                       ; $42c9: $63
    ld l, c                                       ; $42ca: $69
    ld [hl], b                                    ; $42cb: $70

jr_01c_42cc:
    ld l, h                                       ; $42cc: $6c
    ld h, l                                       ; $42cd: $65
    ld [hl], e                                    ; $42ce: $73
    ld l, $02                                     ; $42cf: $2e $02
    ld b, d                                       ; $42d1: $42
    ld [hl], l                                    ; $42d2: $75
    ld [hl], h                                    ; $42d3: $74
    jr nz, jr_01c_434a                            ; $42d4: $20 $74

    ld l, b                                       ; $42d6: $68
    ld h, c                                       ; $42d7: $61
    ld [hl], h                                    ; $42d8: $74

jr_01c_42d9:
    jr nz, jr_01c_4346                            ; $42d9: $20 $6b

    ld l, c                                       ; $42db: $69

jr_01c_42dc:
    ld l, [hl]                                    ; $42dc: $6e
    ld h, h                                       ; $42dd: $64
    jr nz, jr_01c_434f                            ; $42de: $20 $6f

    ld h, [hl]                                    ; $42e0: $66

jr_01c_42e1:
    ld bc, $6873                                  ; $42e1: $01 $73 $68

jr_01c_42e4:
    ld l, a                                       ; $42e4: $6f
    ld [hl], h                                    ; $42e5: $74
    jr nz, @+$76                                  ; $42e6: $20 $74

    ld h, c                                       ; $42e8: $61
    ld l, e                                       ; $42e9: $6b
    ld h, l                                       ; $42ea: $65
    ld [hl], e                                    ; $42eb: $73
    jr nz, jr_01c_4352                            ; $42ec: $20 $64

jr_01c_42ee:
    ld l, c                                       ; $42ee: $69

jr_01c_42ef:
    ld l, h                                       ; $42ef: $6c
    ld l, c                                       ; $42f0: $69
    ld h, a                                       ; $42f1: $67
    ld h, l                                       ; $42f2: $65
    ld l, [hl]                                    ; $42f3: $6e
    ld [hl], h                                    ; $42f4: $74
    ld bc, $7270                                  ; $42f5: $01 $70 $72
    ld h, c                                       ; $42f8: $61
    ld h, e                                       ; $42f9: $63
    ld [hl], h                                    ; $42fa: $74
    ld l, c                                       ; $42fb: $69
    ld h, e                                       ; $42fc: $63
    ld h, l                                       ; $42fd: $65
    ld l, $03                                     ; $42fe: $2e $03
    nop                                           ; $4300: $00
    ld c, c                                       ; $4301: $49

jr_01c_4302:
    ld h, [hl]                                    ; $4302: $66

jr_01c_4303:
    jr nz, jr_01c_437e                            ; $4303: $20 $79

    ld l, a                                       ; $4305: $6f
    ld [hl], l                                    ; $4306: $75
    ld [hl], d                                    ; $4307: $72
    jr nz, jr_01c_437e                            ; $4308: $20 $74

    ld h, l                                       ; $430a: $65
    ld h, l                                       ; $430b: $65
    jr nz, jr_01c_4381                            ; $430c: $20 $73

    ld l, b                                       ; $430e: $68
    ld l, a                                       ; $430f: $6f
    ld [hl], h                                    ; $4310: $74
    daa                                           ; $4311: $27
    ld [hl], e                                    ; $4312: $73
    ld bc, $6972                                  ; $4313: $01 $72 $69
    ld h, a                                       ; $4316: $67
    ld l, b                                       ; $4317: $68

jr_01c_4318:
    ld [hl], h                                    ; $4318: $74
    jr nz, jr_01c_438a                            ; $4319: $20 $6f

    ld l, [hl]                                    ; $431b: $6e
    inc l                                         ; $431c: $2c

jr_01c_431d:
    jr nz, jr_01c_4387                            ; $431d: $20 $68

    ld h, c                                       ; $431f: $61

jr_01c_4320:
    ld a, d                                       ; $4320: $7a
    ld h, c                                       ; $4321: $61

jr_01c_4322:
    ld [hl], d                                    ; $4322: $72
    ld h, h                                       ; $4323: $64
    ld [hl], e                                    ; $4324: $73

jr_01c_4325:
    ld bc, $7261                                  ; $4325: $01 $61 $72
    ld h, l                                       ; $4328: $65
    jr nz, jr_01c_4399                            ; $4329: $20 $6e

    ld l, a                                       ; $432b: $6f
    jr nz, jr_01c_43a1                            ; $432c: $20 $73

    ld [hl], a                                    ; $432e: $77
    ld h, l                                       ; $432f: $65
    ld h, c                                       ; $4330: $61
    ld [hl], h                                    ; $4331: $74
    ld l, $20                                     ; $4332: $2e $20
    ld b, d                                       ; $4334: $42
    ld [hl], l                                    ; $4335: $75
    ld [hl], h                                    ; $4336: $74
    ld [bc], a                                    ; $4337: $02
    ld l, c                                       ; $4338: $69
    ld h, [hl]                                    ; $4339: $66
    jr nz, @+$70                                  ; $433a: $20 $6e

    ld l, a                                       ; $433c: $6f
    ld [hl], h                                    ; $433d: $74
    inc l                                         ; $433e: $2c
    jr nz, @+$63                                  ; $433f: $20 $61

    ld h, h                                       ; $4341: $64
    ld l, d                                       ; $4342: $6a
    ld [hl], l                                    ; $4343: $75
    ld [hl], e                                    ; $4344: $73
    ld [hl], h                                    ; $4345: $74

jr_01c_4346:
    ld bc, $6f79                                  ; $4346: $01 $79 $6f
    ld [hl], l                                    ; $4349: $75

jr_01c_434a:
    ld [hl], d                                    ; $434a: $72
    jr nz, jr_01c_43b6                            ; $434b: $20 $69

    ld l, l                                       ; $434d: $6d
    ld [hl], b                                    ; $434e: $70

jr_01c_434f:
    ld h, c                                       ; $434f: $61
    ld h, e                                       ; $4350: $63
    ld [hl], h                                    ; $4351: $74

jr_01c_4352:
    jr nz, jr_01c_43c4                            ; $4352: $20 $70

    ld l, a                                       ; $4354: $6f
    ld l, c                                       ; $4355: $69
    ld l, [hl]                                    ; $4356: $6e
    ld [hl], h                                    ; $4357: $74
    ld bc, $6f74                                  ; $4358: $01 $74 $6f
    jr nz, jr_01c_43c0                            ; $435b: $20 $63

    ld l, a                                       ; $435d: $6f
    ld l, l                                       ; $435e: $6d
    ld [hl], b                                    ; $435f: $70
    ld h, l                                       ; $4360: $65
    ld l, [hl]                                    ; $4361: $6e
    ld [hl], e                                    ; $4362: $73
    ld h, c                                       ; $4363: $61
    ld [hl], h                                    ; $4364: $74
    ld h, l                                       ; $4365: $65
    ld l, $03                                     ; $4366: $2e $03
    nop                                           ; $4368: $00
    ld d, b                                       ; $4369: $50
    ld l, a                                       ; $436a: $6f
    ld [hl], a                                    ; $436b: $77
    ld h, l                                       ; $436c: $65
    ld [hl], d                                    ; $436d: $72
    jr nz, jr_01c_43e3                            ; $436e: $20 $73

    ld l, b                                       ; $4370: $68
    ld l, a                                       ; $4371: $6f
    ld [hl], h                                    ; $4372: $74
    ld [hl], e                                    ; $4373: $73
    jr nz, jr_01c_43d7                            ; $4374: $20 $61

    ld [hl], d                                    ; $4376: $72
    ld h, l                                       ; $4377: $65
    ld bc, $696c                                  ; $4378: $01 $6c $69
    ld l, l                                       ; $437b: $6d
    ld l, c                                       ; $437c: $69
    ld [hl], h                                    ; $437d: $74

jr_01c_437e:
    ld h, l                                       ; $437e: $65
    ld h, h                                       ; $437f: $64
    inc l                                         ; $4380: $2c

jr_01c_4381:
    jr nz, jr_01c_43f6                            ; $4381: $20 $73

    ld l, a                                       ; $4383: $6f
    jr nz, @+$66                                  ; $4384: $20 $64

    ld l, a                                       ; $4386: $6f

jr_01c_4387:
    ld l, [hl]                                    ; $4387: $6e
    daa                                           ; $4388: $27
    ld [hl], h                                    ; $4389: $74

jr_01c_438a:
    ld bc, $7375                                  ; $438a: $01 $75 $73
    ld h, l                                       ; $438d: $65
    jr nz, jr_01c_43b7                            ; $438e: $20 $27

    ld h, l                                       ; $4390: $65
    ld l, l                                       ; $4391: $6d
    jr nz, jr_01c_43f5                            ; $4392: $20 $61

    ld l, h                                       ; $4394: $6c
    ld l, h                                       ; $4395: $6c
    jr nz, @+$77                                  ; $4396: $20 $75

    ld [hl], b                                    ; $4398: $70

jr_01c_4399:
    ld l, $02                                     ; $4399: $2e $02
    ld c, l                                       ; $439b: $4d
    ld h, c                                       ; $439c: $61
    ld l, e                                       ; $439d: $6b
    ld h, l                                       ; $439e: $65
    jr nz, jr_01c_4402                            ; $439f: $20 $61

jr_01c_43a1:
    jr nz, jr_01c_4413                            ; $43a1: $20 $70

    ld h, l                                       ; $43a3: $65
    ld [hl], d                                    ; $43a4: $72
    ld h, [hl]                                    ; $43a5: $66
    ld h, l                                       ; $43a6: $65
    ld h, e                                       ; $43a7: $63
    ld [hl], h                                    ; $43a8: $74
    ld bc, $6f70                                  ; $43a9: $01 $70 $6f
    ld [hl], a                                    ; $43ac: $77
    ld h, l                                       ; $43ad: $65
    ld [hl], d                                    ; $43ae: $72
    jr nz, jr_01c_4424                            ; $43af: $20 $73

    ld l, b                                       ; $43b1: $68
    ld l, a                                       ; $43b2: $6f
    ld [hl], h                                    ; $43b3: $74
    jr nz, jr_01c_4417                            ; $43b4: $20 $61

jr_01c_43b6:
    ld l, [hl]                                    ; $43b6: $6e

jr_01c_43b7:
    ld h, h                                       ; $43b7: $64
    ld bc, $6f79                                  ; $43b8: $01 $79 $6f
    ld [hl], l                                    ; $43bb: $75
    jr nz, jr_01c_4435                            ; $43bc: $20 $77

    ld l, a                                       ; $43be: $6f
    ld l, [hl]                                    ; $43bf: $6e

jr_01c_43c0:
    daa                                           ; $43c0: $27
    ld [hl], h                                    ; $43c1: $74
    jr nz, jr_01c_4430                            ; $43c2: $20 $6c

jr_01c_43c4:
    ld l, a                                       ; $43c4: $6f
    ld [hl], e                                    ; $43c5: $73
    ld h, l                                       ; $43c6: $65
    jr nz, jr_01c_4432                            ; $43c7: $20 $69

    ld [hl], h                                    ; $43c9: $74
    ld l, $03                                     ; $43ca: $2e $03
    nop                                           ; $43cc: $00
    ld b, e                                       ; $43cd: $43
    ld h, c                                       ; $43ce: $61
    ld l, [hl]                                    ; $43cf: $6e
    jr nz, jr_01c_444b                            ; $43d0: $20 $79

    ld l, a                                       ; $43d2: $6f
    ld [hl], l                                    ; $43d3: $75
    jr nz, @+$6a                                  ; $43d4: $20 $68

    ld l, c                                       ; $43d6: $69

jr_01c_43d7:
    ld [hl], h                                    ; $43d7: $74
    ld bc, $6166                                  ; $43d8: $01 $66 $61
    ld [hl], d                                    ; $43db: $72
    ld [hl], h                                    ; $43dc: $74
    ld l, b                                       ; $43dd: $68
    ld h, l                                       ; $43de: $65
    ld [hl], d                                    ; $43df: $72
    jr nz, jr_01c_4450                            ; $43e0: $20 $6e

    ld l, a                                       ; $43e2: $6f

jr_01c_43e3:
    ld [hl], a                                    ; $43e3: $77
    ccf                                           ; $43e4: $3f
    nop                                           ; $43e5: $00
    ld c, c                                       ; $43e6: $49
    daa                                           ; $43e7: $27
    ld l, l                                       ; $43e8: $6d
    jr nz, jr_01c_4455                            ; $43e9: $20 $6a

    ld h, l                                       ; $43eb: $65
    ld h, c                                       ; $43ec: $61
    ld l, h                                       ; $43ed: $6c
    ld l, a                                       ; $43ee: $6f
    ld [hl], l                                    ; $43ef: $75
    ld [hl], e                                    ; $43f0: $73
    ld l, $20                                     ; $43f1: $2e $20
    ld b, d                                       ; $43f3: $42
    ld [hl], l                                    ; $43f4: $75

jr_01c_43f5:
    ld [hl], h                                    ; $43f5: $74

jr_01c_43f6:
    ld bc, $6968                                  ; $43f6: $01 $68 $69
    ld [hl], h                                    ; $43f9: $74
    ld [hl], h                                    ; $43fa: $74
    ld l, c                                       ; $43fb: $69
    ld l, [hl]                                    ; $43fc: $6e
    ld h, a                                       ; $43fd: $67
    jr nz, @+$68                                  ; $43fe: $20 $66

    ld h, c                                       ; $4400: $61
    ld [hl], d                                    ; $4401: $72

jr_01c_4402:
    ld [hl], h                                    ; $4402: $74
    ld l, b                                       ; $4403: $68
    ld h, l                                       ; $4404: $65
    ld [hl], d                                    ; $4405: $72
    jr nz, @+$6f                                  ; $4406: $20 $6d

    ld h, l                                       ; $4408: $65
    ld h, c                                       ; $4409: $61
    ld l, [hl]                                    ; $440a: $6e
    ld [hl], e                                    ; $440b: $73
    ld bc, $656c                                  ; $440c: $01 $6c $65
    ld [hl], e                                    ; $440f: $73
    ld [hl], e                                    ; $4410: $73
    jr nz, @+$65                                  ; $4411: $20 $63

jr_01c_4413:
    ld l, a                                       ; $4413: $6f
    ld l, [hl]                                    ; $4414: $6e
    ld [hl], h                                    ; $4415: $74
    ld [hl], d                                    ; $4416: $72

jr_01c_4417:
    ld l, a                                       ; $4417: $6f
    ld l, h                                       ; $4418: $6c
    ld l, $03                                     ; $4419: $2e $03
    nop                                           ; $441b: $00
    ld b, h                                       ; $441c: $44
    ld l, a                                       ; $441d: $6f
    jr nz, jr_01c_4499                            ; $441e: $20 $79

    ld l, a                                       ; $4420: $6f
    ld [hl], l                                    ; $4421: $75
    jr nz, jr_01c_449b                            ; $4422: $20 $77

jr_01c_4424:
    ld h, c                                       ; $4424: $61
    ld l, [hl]                                    ; $4425: $6e
    ld [hl], h                                    ; $4426: $74
    jr nz, @+$76                                  ; $4427: $20 $74

    ld l, a                                       ; $4429: $6f
    ld bc, $6968                                  ; $442a: $01 $68 $69
    ld [hl], h                                    ; $442d: $74
    jr nz, @+$68                                  ; $442e: $20 $66

jr_01c_4430:
    ld h, c                                       ; $4430: $61
    ld [hl], d                                    ; $4431: $72

jr_01c_4432:
    ld [hl], h                                    ; $4432: $74
    ld l, b                                       ; $4433: $68
    ld h, l                                       ; $4434: $65

jr_01c_4435:
    ld [hl], d                                    ; $4435: $72
    ccf                                           ; $4436: $3f
    nop                                           ; $4437: $00
    ld b, h                                       ; $4438: $44
    ld l, a                                       ; $4439: $6f
    ld l, [hl]                                    ; $443a: $6e
    daa                                           ; $443b: $27
    ld [hl], h                                    ; $443c: $74
    jr nz, jr_01c_44a5                            ; $443d: $20 $66

    ld l, a                                       ; $443f: $6f
    ld [hl], d                                    ; $4440: $72
    ld h, a                                       ; $4441: $67
    ld h, l                                       ; $4442: $65
    ld [hl], h                                    ; $4443: $74
    inc l                                         ; $4444: $2c
    jr nz, jr_01c_44a8                            ; $4445: $20 $61

    jr nz, jr_01c_44b5                            ; $4447: $20 $6c

    ld l, a                                       ; $4449: $6f
    ld l, [hl]                                    ; $444a: $6e

jr_01c_444b:
    ld h, a                                       ; $444b: $67
    ld bc, $7264                                  ; $444c: $01 $64 $72
    ld l, c                                       ; $444f: $69

jr_01c_4450:
    halt                                          ; $4450: $76
    ld h, l                                       ; $4451: $65
    jr nz, jr_01c_44bd                            ; $4452: $20 $69

    ld [hl], e                                    ; $4454: $73

jr_01c_4455:
    jr nz, jr_01c_44bc                            ; $4455: $20 $65

    halt                                          ; $4457: $76
    ld h, l                                       ; $4458: $65
    ld [hl], d                                    ; $4459: $72
    ld a, c                                       ; $445a: $79
    jr nz, jr_01c_44c4                            ; $445b: $20 $67

    ld l, a                                       ; $445d: $6f
    ld l, h                                       ; $445e: $6c
    ld h, [hl]                                    ; $445f: $66
    ld h, l                                       ; $4460: $65
    ld [hl], d                                    ; $4461: $72
    daa                                           ; $4462: $27
    ld [hl], e                                    ; $4463: $73
    ld bc, $7264                                  ; $4464: $01 $64 $72
    ld h, l                                       ; $4467: $65
    ld h, c                                       ; $4468: $61
    ld l, l                                       ; $4469: $6d
    ld l, $03                                     ; $446a: $2e $03
    nop                                           ; $446c: $00
    ld b, c                                       ; $446d: $41
    ld l, l                                       ; $446e: $6d
    ld h, c                                       ; $446f: $61
    ld a, d                                       ; $4470: $7a
    ld l, c                                       ; $4471: $69
    ld l, [hl]                                    ; $4472: $6e
    ld h, a                                       ; $4473: $67
    ld hl, $5920                                  ; $4474: $21 $20 $59
    ld l, a                                       ; $4477: $6f
    ld [hl], l                                    ; $4478: $75
    jr nz, @+$6d                                  ; $4479: $20 $6b

    ld l, [hl]                                    ; $447b: $6e
    ld l, a                                       ; $447c: $6f
    ld [hl], a                                    ; $447d: $77
    ld bc, $2061                                  ; $447e: $01 $61 $20
    ld l, l                                       ; $4481: $6d
    ld l, a                                       ; $4482: $6f
    ld h, h                                       ; $4483: $64
    ld h, l                                       ; $4484: $65
    ld [hl], d                                    ; $4485: $72
    ld h, c                                       ; $4486: $61
    ld [hl], h                                    ; $4487: $74
    ld h, l                                       ; $4488: $65
    jr nz, jr_01c_44ef                            ; $4489: $20 $64

    ld [hl], d                                    ; $448b: $72
    ld l, c                                       ; $448c: $69
    halt                                          ; $448d: $76
    ld h, l                                       ; $448e: $65
    ld bc, $656d                                  ; $448f: $01 $6d $65
    ld h, c                                       ; $4492: $61
    ld l, [hl]                                    ; $4493: $6e
    ld [hl], e                                    ; $4494: $73
    jr nz, @+$75                                  ; $4495: $20 $73

    ld [hl], h                                    ; $4497: $74
    ld h, l                                       ; $4498: $65

jr_01c_4499:
    ld h, c                                       ; $4499: $61
    ld h, h                                       ; $449a: $64

jr_01c_449b:
    ld a, c                                       ; $449b: $79
    jr nz, jr_01c_4511                            ; $449c: $20 $73

    ld h, e                                       ; $449e: $63
    ld l, a                                       ; $449f: $6f
    ld [hl], d                                    ; $44a0: $72
    ld h, l                                       ; $44a1: $65
    ld [hl], e                                    ; $44a2: $73
    ld l, $03                                     ; $44a3: $2e $03

jr_01c_44a5:
    nop                                           ; $44a5: $00
    ld b, c                                       ; $44a6: $41
    ld [hl], e                                    ; $44a7: $73

jr_01c_44a8:
    ld [hl], e                                    ; $44a8: $73
    ld h, l                                       ; $44a9: $65
    ld [hl], e                                    ; $44aa: $73
    ld [hl], e                                    ; $44ab: $73
    jr nz, @+$79                                  ; $44ac: $20 $77

    ld l, a                                       ; $44ae: $6f
    ld [hl], d                                    ; $44af: $72
    ld [hl], e                                    ; $44b0: $73
    ld [hl], h                                    ; $44b1: $74
    dec l                                         ; $44b2: $2d
    ld h, e                                       ; $44b3: $63
    ld h, c                                       ; $44b4: $61

jr_01c_44b5:
    ld [hl], e                                    ; $44b5: $73
    ld h, l                                       ; $44b6: $65
    ld bc, $6373                                  ; $44b7: $01 $73 $63
    ld h, l                                       ; $44ba: $65
    ld l, [hl]                                    ; $44bb: $6e

jr_01c_44bc:
    ld h, c                                       ; $44bc: $61

jr_01c_44bd:
    ld [hl], d                                    ; $44bd: $72
    ld l, c                                       ; $44be: $69
    ld l, a                                       ; $44bf: $6f
    jr nz, jr_01c_4534                            ; $44c0: $20 $72

    ld l, c                                       ; $44c2: $69
    ld [hl], e                                    ; $44c3: $73

jr_01c_44c4:
    ld l, e                                       ; $44c4: $6b
    jr nz, @+$71                                  ; $44c5: $20 $6f

    ld l, [hl]                                    ; $44c7: $6e
    ld bc, $7274                                  ; $44c8: $01 $74 $72
    ld l, a                                       ; $44cb: $6f
    ld [hl], l                                    ; $44cc: $75
    ld h, d                                       ; $44cd: $62
    ld l, h                                       ; $44ce: $6c
    ld h, l                                       ; $44cf: $65
    jr nz, jr_01c_4545                            ; $44d0: $20 $73

    ld l, b                                       ; $44d2: $68
    ld l, a                                       ; $44d3: $6f
    ld [hl], h                                    ; $44d4: $74
    ld [hl], e                                    ; $44d5: $73
    ld l, $03                                     ; $44d6: $2e $03
    nop                                           ; $44d8: $00
    ld c, c                                       ; $44d9: $49
    ld h, [hl]                                    ; $44da: $66
    jr nz, jr_01c_4556                            ; $44db: $20 $79

    ld l, a                                       ; $44dd: $6f
    ld [hl], l                                    ; $44de: $75
    jr nz, jr_01c_4545                            ; $44df: $20 $64

    ld l, a                                       ; $44e1: $6f
    ld l, [hl]                                    ; $44e2: $6e
    daa                                           ; $44e3: $27
    ld [hl], h                                    ; $44e4: $74
    jr nz, @+$6f                                  ; $44e5: $20 $6d

    ld l, c                                       ; $44e7: $69
    ld [hl], e                                    ; $44e8: $73
    ld [hl], e                                    ; $44e9: $73
    ld bc, $6e6f                                  ; $44ea: $01 $6f $6e
    jr nz, jr_01c_4563                            ; $44ed: $20 $74

jr_01c_44ef:
    ld [hl], d                                    ; $44ef: $72
    ld l, a                                       ; $44f0: $6f
    ld [hl], l                                    ; $44f1: $75
    ld h, d                                       ; $44f2: $62
    ld l, h                                       ; $44f3: $6c
    ld h, l                                       ; $44f4: $65
    jr nz, jr_01c_456a                            ; $44f5: $20 $73

    ld l, b                                       ; $44f7: $68
    ld l, a                                       ; $44f8: $6f
    ld [hl], h                                    ; $44f9: $74
    ld [hl], e                                    ; $44fa: $73
    inc l                                         ; $44fb: $2c
    ld bc, $6f79                                  ; $44fc: $01 $79 $6f
    ld [hl], l                                    ; $44ff: $75
    jr nz, jr_01c_4565                            ; $4500: $20 $63

    ld h, c                                       ; $4502: $61
    ld l, [hl]                                    ; $4503: $6e
    jr nz, jr_01c_4569                            ; $4504: $20 $63

    ld l, a                                       ; $4506: $6f
    ld l, l                                       ; $4507: $6d
    ld h, l                                       ; $4508: $65
    jr nz, jr_01c_456d                            ; $4509: $20 $62

    ld h, c                                       ; $450b: $61
    ld h, e                                       ; $450c: $63
    ld l, e                                       ; $450d: $6b
    ld l, $02                                     ; $450e: $2e $02
    ld d, b                                       ; $4510: $50

jr_01c_4511:
    ld [hl], l                                    ; $4511: $75
    ld [hl], h                                    ; $4512: $74
    ld [hl], h                                    ; $4513: $74
    ld l, c                                       ; $4514: $69
    ld l, [hl]                                    ; $4515: $6e
    ld h, a                                       ; $4516: $67
    jr nz, jr_01c_4592                            ; $4517: $20 $79

    ld l, a                                       ; $4519: $6f
    ld [hl], l                                    ; $451a: $75
    ld [hl], d                                    ; $451b: $72
    jr nz, @+$6f                                  ; $451c: $20 $6d

    ld l, c                                       ; $451e: $69
    ld l, [hl]                                    ; $451f: $6e
    ld h, h                                       ; $4520: $64
    ld bc, $6f74                                  ; $4521: $01 $74 $6f
    jr nz, jr_01c_458f                            ; $4524: $20 $69

    ld [hl], h                                    ; $4526: $74
    jr nz, jr_01c_459d                            ; $4527: $20 $74

    ld h, l                                       ; $4529: $65
    ld l, [hl]                                    ; $452a: $6e
    ld h, h                                       ; $452b: $64
    ld [hl], e                                    ; $452c: $73
    jr nz, jr_01c_45a3                            ; $452d: $20 $74

    ld l, a                                       ; $452f: $6f
    ld bc, $6f77                                  ; $4530: $01 $77 $6f
    ld [hl], d                                    ; $4533: $72

jr_01c_4534:
    ld l, e                                       ; $4534: $6b
    jr nz, jr_01c_45a8                            ; $4535: $20 $71

    ld [hl], l                                    ; $4537: $75
    ld l, c                                       ; $4538: $69
    ld [hl], h                                    ; $4539: $74
    ld h, l                                       ; $453a: $65
    jr nz, jr_01c_45b4                            ; $453b: $20 $77

    ld h, l                                       ; $453d: $65
    ld l, h                                       ; $453e: $6c
    ld l, h                                       ; $453f: $6c
    ld l, $03                                     ; $4540: $2e $03
    nop                                           ; $4542: $00
    rlca                                          ; $4543: $07
    inc l                                         ; $4544: $2c

jr_01c_4545:
    jr nz, jr_01c_45aa                            ; $4545: $20 $63

    ld h, c                                       ; $4547: $61
    ld l, [hl]                                    ; $4548: $6e
    ld bc, $6f79                                  ; $4549: $01 $79 $6f
    ld [hl], l                                    ; $454c: $75
    jr nz, jr_01c_45b7                            ; $454d: $20 $68

    ld l, c                                       ; $454f: $69
    ld [hl], h                                    ; $4550: $74
    jr nz, jr_01c_45b4                            ; $4551: $20 $61

    jr nz, @+$6a                                  ; $4553: $20 $68

    ld l, a                                       ; $4555: $6f

jr_01c_4556:
    ld l, a                                       ; $4556: $6f
    ld l, e                                       ; $4557: $6b
    ld bc, $6e61                                  ; $4558: $01 $61 $6e
    ld h, h                                       ; $455b: $64
    jr nz, jr_01c_45bf                            ; $455c: $20 $61

    jr nz, jr_01c_45d3                            ; $455e: $20 $73

    ld l, h                                       ; $4560: $6c
    ld l, c                                       ; $4561: $69
    ld h, e                                       ; $4562: $63

jr_01c_4563:
    ld h, l                                       ; $4563: $65
    ccf                                           ; $4564: $3f

jr_01c_4565:
    nop                                           ; $4565: $00
    ld e, c                                       ; $4566: $59
    ld h, l                                       ; $4567: $65
    ld h, c                                       ; $4568: $61

jr_01c_4569:
    ld l, b                                       ; $4569: $68

jr_01c_456a:
    inc l                                         ; $456a: $2c
    jr nz, jr_01c_45ce                            ; $456b: $20 $61

jr_01c_456d:
    ld [hl], e                                    ; $456d: $73
    jr nz, jr_01c_45dd                            ; $456e: $20 $6d

    ld [hl], l                                    ; $4570: $75
    ld h, e                                       ; $4571: $63
    ld l, b                                       ; $4572: $68
    jr nz, jr_01c_45d6                            ; $4573: $20 $61

    ld [hl], e                                    ; $4575: $73
    ld bc, $6f79                                  ; $4576: $01 $79 $6f
    ld [hl], l                                    ; $4579: $75
    daa                                           ; $457a: $27
    halt                                          ; $457b: $76
    ld h, l                                       ; $457c: $65
    jr nz, jr_01c_45ef                            ; $457d: $20 $70

    ld l, h                                       ; $457f: $6c
    ld h, c                                       ; $4580: $61
    ld a, c                                       ; $4581: $79
    ld h, l                                       ; $4582: $65
    ld h, h                                       ; $4583: $64
    inc l                                         ; $4584: $2c
    jr nz, jr_01c_4600                            ; $4585: $20 $79

    ld l, a                                       ; $4587: $6f
    ld [hl], l                                    ; $4588: $75
    ld bc, $6873                                  ; $4589: $01 $73 $68
    ld l, a                                       ; $458c: $6f
    ld [hl], l                                    ; $458d: $75
    ld l, h                                       ; $458e: $6c

jr_01c_458f:
    ld h, h                                       ; $458f: $64
    jr nz, jr_01c_45f4                            ; $4590: $20 $62

jr_01c_4592:
    ld h, l                                       ; $4592: $65
    jr nz, jr_01c_45f6                            ; $4593: $20 $61

    ld h, d                                       ; $4595: $62
    ld l, h                                       ; $4596: $6c
    ld h, l                                       ; $4597: $65
    jr nz, jr_01c_460e                            ; $4598: $20 $74

    ld l, a                                       ; $459a: $6f
    ld l, $03                                     ; $459b: $2e $03

jr_01c_459d:
    nop                                           ; $459d: $00
    ld b, l                                       ; $459e: $45
    ld a, b                                       ; $459f: $78
    ld [hl], b                                    ; $45a0: $70
    ld h, l                                       ; $45a1: $65
    ld [hl], d                                    ; $45a2: $72

jr_01c_45a3:
    ld l, c                                       ; $45a3: $69
    ld h, l                                       ; $45a4: $65
    ld l, [hl]                                    ; $45a5: $6e
    ld h, e                                       ; $45a6: $63
    ld h, l                                       ; $45a7: $65

jr_01c_45a8:
    jr nz, jr_01c_4613                            ; $45a8: $20 $69

jr_01c_45aa:
    ld [hl], e                                    ; $45aa: $73
    jr nz, jr_01c_460e                            ; $45ab: $20 $61

    ld l, h                                       ; $45ad: $6c
    ld l, h                                       ; $45ae: $6c
    ld bc, $7469                                  ; $45af: $01 $69 $74
    jr nz, jr_01c_4628                            ; $45b2: $20 $74

jr_01c_45b4:
    ld h, c                                       ; $45b4: $61
    ld l, e                                       ; $45b5: $6b
    ld h, l                                       ; $45b6: $65

jr_01c_45b7:
    ld [hl], e                                    ; $45b7: $73
    inc l                                         ; $45b8: $2c
    jr nz, jr_01c_462e                            ; $45b9: $20 $73

    ld l, a                                       ; $45bb: $6f
    jr nz, jr_01c_4622                            ; $45bc: $20 $64

    ld l, a                                       ; $45be: $6f

jr_01c_45bf:
    ld l, [hl]                                    ; $45bf: $6e
    daa                                           ; $45c0: $27
    ld [hl], h                                    ; $45c1: $74
    ld bc, $7572                                  ; $45c2: $01 $72 $75
    ld [hl], e                                    ; $45c5: $73
    ld l, b                                       ; $45c6: $68
    jr nz, @+$7b                                  ; $45c7: $20 $79

    ld l, a                                       ; $45c9: $6f
    ld [hl], l                                    ; $45ca: $75
    ld [hl], d                                    ; $45cb: $72
    ld [hl], e                                    ; $45cc: $73
    ld h, l                                       ; $45cd: $65

jr_01c_45ce:
    ld l, h                                       ; $45ce: $6c
    ld h, [hl]                                    ; $45cf: $66
    ld l, $03                                     ; $45d0: $2e $03
    nop                                           ; $45d2: $00

jr_01c_45d3:
    ld c, a                                       ; $45d3: $4f
    ld h, d                                       ; $45d4: $62
    halt                                          ; $45d5: $76

jr_01c_45d6:
    ld l, c                                       ; $45d6: $69
    ld l, a                                       ; $45d7: $6f
    ld [hl], l                                    ; $45d8: $75
    ld [hl], e                                    ; $45d9: $73
    ld l, h                                       ; $45da: $6c
    ld a, c                                       ; $45db: $79
    inc l                                         ; $45dc: $2c

jr_01c_45dd:
    jr nz, jr_01c_4653                            ; $45dd: $20 $74

    ld [hl], d                                    ; $45df: $72
    ld l, a                                       ; $45e0: $6f
    ld [hl], l                                    ; $45e1: $75
    ld h, d                                       ; $45e2: $62
    ld l, h                                       ; $45e3: $6c
    ld h, l                                       ; $45e4: $65
    ld bc, $6873                                  ; $45e5: $01 $73 $68
    ld l, a                                       ; $45e8: $6f
    ld [hl], h                                    ; $45e9: $74
    ld [hl], e                                    ; $45ea: $73
    jr nz, @+$63                                  ; $45eb: $20 $61

    ld [hl], d                                    ; $45ed: $72
    ld h, l                                       ; $45ee: $65

jr_01c_45ef:
    jr nz, @+$74                                  ; $45ef: $20 $72

    ld h, l                                       ; $45f1: $65
    ld h, c                                       ; $45f2: $61
    ld l, h                                       ; $45f3: $6c

jr_01c_45f4:
    ld l, h                                       ; $45f4: $6c
    ld a, c                                       ; $45f5: $79

jr_01c_45f6:
    ld bc, $6f74                                  ; $45f6: $01 $74 $6f
    ld [hl], l                                    ; $45f9: $75
    ld h, a                                       ; $45fa: $67
    ld l, b                                       ; $45fb: $68
    jr nz, jr_01c_4671                            ; $45fc: $20 $73

    ld l, b                                       ; $45fe: $68
    ld l, a                                       ; $45ff: $6f

jr_01c_4600:
    ld [hl], h                                    ; $4600: $74
    ld [hl], e                                    ; $4601: $73
    ld l, $20                                     ; $4602: $2e $20
    ld d, e                                       ; $4604: $53
    ld l, c                                       ; $4605: $69
    ld l, [hl]                                    ; $4606: $6e
    ld h, e                                       ; $4607: $63
    ld h, l                                       ; $4608: $65
    ld [bc], a                                    ; $4609: $02
    ld [hl], h                                    ; $460a: $74
    ld l, b                                       ; $460b: $68
    ld h, l                                       ; $460c: $65
    ld a, c                                       ; $460d: $79

jr_01c_460e:
    daa                                           ; $460e: $27
    ld [hl], d                                    ; $460f: $72
    ld h, l                                       ; $4610: $65
    jr nz, jr_01c_4686                            ; $4611: $20 $73

jr_01c_4613:
    ld l, a                                       ; $4613: $6f
    jr nz, @+$6a                                  ; $4614: $20 $68

    ld h, c                                       ; $4616: $61
    ld [hl], d                                    ; $4617: $72
    ld h, h                                       ; $4618: $64
    inc l                                         ; $4619: $2c
    ld bc, $6f79                                  ; $461a: $01 $79 $6f
    ld [hl], l                                    ; $461d: $75
    jr nz, jr_01c_4683                            ; $461e: $20 $63

    ld h, c                                       ; $4620: $61
    ld l, [hl]                                    ; $4621: $6e

jr_01c_4622:
    daa                                           ; $4622: $27
    ld [hl], h                                    ; $4623: $74
    jr nz, jr_01c_4693                            ; $4624: $20 $6d

    ld h, c                                       ; $4626: $61
    ld l, e                                       ; $4627: $6b

jr_01c_4628:
    ld h, l                                       ; $4628: $65
    ld bc, $6874                                  ; $4629: $01 $74 $68
    ld h, l                                       ; $462c: $65
    ld l, l                                       ; $462d: $6d

jr_01c_462e:
    jr nz, @+$67                                  ; $462e: $20 $65

    halt                                          ; $4630: $76
    ld h, l                                       ; $4631: $65
    ld [hl], d                                    ; $4632: $72
    ld a, c                                       ; $4633: $79
    jr nz, jr_01c_46aa                            ; $4634: $20 $74

    ld l, c                                       ; $4636: $69
    ld l, l                                       ; $4637: $6d
    ld h, l                                       ; $4638: $65
    ld l, $03                                     ; $4639: $2e $03
    nop                                           ; $463b: $00
    ld b, h                                       ; $463c: $44
    ld l, a                                       ; $463d: $6f
    ld l, [hl]                                    ; $463e: $6e
    daa                                           ; $463f: $27
    ld [hl], h                                    ; $4640: $74
    jr nz, jr_01c_46aa                            ; $4641: $20 $67

    ld l, c                                       ; $4643: $69
    halt                                          ; $4644: $76
    ld h, l                                       ; $4645: $65
    jr nz, jr_01c_46bd                            ; $4646: $20 $75

    ld [hl], b                                    ; $4648: $70
    jr nz, jr_01c_46b4                            ; $4649: $20 $69

    ld h, [hl]                                    ; $464b: $66
    ld bc, $6874                                  ; $464c: $01 $74 $68
    ld h, l                                       ; $464f: $65
    ld [hl], d                                    ; $4650: $72
    ld h, l                                       ; $4651: $65
    daa                                           ; $4652: $27

jr_01c_4653:
    ld [hl], e                                    ; $4653: $73
    jr nz, jr_01c_46b7                            ; $4654: $20 $61

    ld l, [hl]                                    ; $4656: $6e
    ld a, c                                       ; $4657: $79
    jr nz, jr_01c_46bd                            ; $4658: $20 $63

    ld l, b                                       ; $465a: $68
    ld h, c                                       ; $465b: $61
    ld l, [hl]                                    ; $465c: $6e
    ld h, e                                       ; $465d: $63
    ld h, l                                       ; $465e: $65
    ld bc, $7461                                  ; $465f: $01 $61 $74
    jr nz, jr_01c_46c5                            ; $4662: $20 $61

    ld l, h                                       ; $4664: $6c
    ld l, h                                       ; $4665: $6c
    ld l, $03                                     ; $4666: $2e $03
    nop                                           ; $4668: $00
    ld c, c                                       ; $4669: $49
    jr nz, jr_01c_46e3                            ; $466a: $20 $77

    ld l, a                                       ; $466c: $6f
    ld l, [hl]                                    ; $466d: $6e
    ld h, h                                       ; $466e: $64
    ld h, l                                       ; $466f: $65
    ld [hl], d                                    ; $4670: $72

jr_01c_4671:
    jr nz, jr_01c_46ea                            ; $4671: $20 $77

    ld l, b                                       ; $4673: $68
    ld h, l                                       ; $4674: $65
    ld l, [hl]                                    ; $4675: $6e
    ld bc, $2007                                  ; $4676: $01 $07 $20
    ld h, a                                       ; $4679: $67
    ld l, a                                       ; $467a: $6f
    ld [hl], h                                    ; $467b: $74
    ld bc, $7573                                  ; $467c: $01 $73 $75
    ld h, e                                       ; $467f: $63
    ld l, b                                       ; $4680: $68
    jr nz, @+$63                                  ; $4681: $20 $61

jr_01c_4683:
    jr nz, jr_01c_46ec                            ; $4683: $20 $67

    ld l, a                                       ; $4685: $6f

jr_01c_4686:
    ld l, a                                       ; $4686: $6f
    ld h, h                                       ; $4687: $64
    jr nz, @+$75                                  ; $4688: $20 $73

    ld l, b                                       ; $468a: $68
    ld l, a                                       ; $468b: $6f
    ld [hl], h                                    ; $468c: $74
    ccf                                           ; $468d: $3f
    inc bc                                        ; $468e: $03
    nop                                           ; $468f: $00
    ld c, d                                       ; $4690: $4a
    ld [hl], l                                    ; $4691: $75
    ld [hl], e                                    ; $4692: $73

jr_01c_4693:
    ld [hl], h                                    ; $4693: $74
    jr nz, jr_01c_46fa                            ; $4694: $20 $64

    ld l, a                                       ; $4696: $6f
    ld l, [hl]                                    ; $4697: $6e
    daa                                           ; $4698: $27
    ld [hl], h                                    ; $4699: $74
    jr nz, jr_01c_4709                            ; $469a: $20 $6d

    ld l, c                                       ; $469c: $69
    ld [hl], e                                    ; $469d: $73
    dec l                                         ; $469e: $2d
    ld bc, $6968                                  ; $469f: $01 $68 $69
    ld [hl], h                                    ; $46a2: $74
    inc l                                         ; $46a3: $2c
    jr nz, jr_01c_4707                            ; $46a4: $20 $61

    ld l, [hl]                                    ; $46a6: $6e
    ld h, h                                       ; $46a7: $64
    jr nz, jr_01c_4723                            ; $46a8: $20 $79

jr_01c_46aa:
    ld l, a                                       ; $46aa: $6f
    ld [hl], l                                    ; $46ab: $75
    daa                                           ; $46ac: $27
    ld l, h                                       ; $46ad: $6c
    ld l, h                                       ; $46ae: $6c
    ld bc, $7661                                  ; $46af: $01 $61 $76
    ld l, a                                       ; $46b2: $6f
    ld l, c                                       ; $46b3: $69

jr_01c_46b4:
    ld h, h                                       ; $46b4: $64
    jr nz, jr_01c_472b                            ; $46b5: $20 $74

jr_01c_46b7:
    ld [hl], d                                    ; $46b7: $72
    ld l, a                                       ; $46b8: $6f
    ld [hl], l                                    ; $46b9: $75
    ld h, d                                       ; $46ba: $62
    ld l, h                                       ; $46bb: $6c
    ld h, l                                       ; $46bc: $65

jr_01c_46bd:
    ld l, $02                                     ; $46bd: $2e $02
    ld b, d                                       ; $46bf: $42
    ld [hl], l                                    ; $46c0: $75
    ld [hl], h                                    ; $46c1: $74
    jr nz, jr_01c_473b                            ; $46c2: $20 $77

    ld l, b                                       ; $46c4: $68

jr_01c_46c5:
    ld h, c                                       ; $46c5: $61
    ld [hl], h                                    ; $46c6: $74
    ld h, l                                       ; $46c7: $65
    halt                                          ; $46c8: $76
    ld h, l                                       ; $46c9: $65
    ld [hl], d                                    ; $46ca: $72
    ld bc, $7274                                  ; $46cb: $01 $74 $72
    ld l, a                                       ; $46ce: $6f
    ld [hl], l                                    ; $46cf: $75
    ld h, d                                       ; $46d0: $62
    ld l, h                                       ; $46d1: $6c
    ld h, l                                       ; $46d2: $65
    jr nz, jr_01c_474e                            ; $46d3: $20 $79

    ld l, a                                       ; $46d5: $6f
    ld [hl], l                                    ; $46d6: $75
    daa                                           ; $46d7: $27
    ld [hl], d                                    ; $46d8: $72
    ld h, l                                       ; $46d9: $65
    jr nz, jr_01c_4745                            ; $46da: $20 $69

    ld l, [hl]                                    ; $46dc: $6e
    inc l                                         ; $46dd: $2c
    ld bc, $756a                                  ; $46de: $01 $6a $75
    ld [hl], e                                    ; $46e1: $73
    ld [hl], h                                    ; $46e2: $74

jr_01c_46e3:
    jr nz, @+$64                                  ; $46e3: $20 $62

    ld h, l                                       ; $46e5: $65
    jr nz, jr_01c_474b                            ; $46e6: $20 $63

    ld l, a                                       ; $46e8: $6f
    ld l, [hl]                                    ; $46e9: $6e

jr_01c_46ea:
    ld h, [hl]                                    ; $46ea: $66
    ld l, c                                       ; $46eb: $69

jr_01c_46ec:
    ld h, h                                       ; $46ec: $64
    ld h, l                                       ; $46ed: $65
    ld l, [hl]                                    ; $46ee: $6e
    ld [hl], h                                    ; $46ef: $74
    ld l, $03                                     ; $46f0: $2e $03
    nop                                           ; $46f2: $00
    ld b, c                                       ; $46f3: $41
    ld l, c                                       ; $46f4: $69
    ld l, l                                       ; $46f5: $6d
    jr nz, jr_01c_475e                            ; $46f6: $20 $66

    ld l, a                                       ; $46f8: $6f
    ld [hl], d                                    ; $46f9: $72

jr_01c_46fa:
    jr nz, jr_01c_475d                            ; $46fa: $20 $61

    jr nz, @+$75                                  ; $46fc: $20 $73

    ld [hl], b                                    ; $46fe: $70
    ld l, a                                       ; $46ff: $6f
    ld [hl], h                                    ; $4700: $74
    jr nz, jr_01c_4772                            ; $4701: $20 $6f

    ld l, [hl]                                    ; $4703: $6e
    ld bc, $7267                                  ; $4704: $01 $67 $72

jr_01c_4707:
    ld h, l                                       ; $4707: $65
    ld h, l                                       ; $4708: $65

jr_01c_4709:
    ld l, [hl]                                    ; $4709: $6e
    jr nz, jr_01c_4780                            ; $470a: $20 $74

    ld l, b                                       ; $470c: $68
    ld h, c                                       ; $470d: $61
    ld [hl], h                                    ; $470e: $74
    daa                                           ; $470f: $27
    ld [hl], e                                    ; $4710: $73
    ld bc, $6165                                  ; $4711: $01 $65 $61
    ld [hl], e                                    ; $4714: $73
    ld a, c                                       ; $4715: $79
    jr nz, jr_01c_478c                            ; $4716: $20 $74

    ld l, a                                       ; $4718: $6f
    jr nz, jr_01c_478b                            ; $4719: $20 $70

    ld [hl], l                                    ; $471b: $75
    ld [hl], h                                    ; $471c: $74
    ld [hl], h                                    ; $471d: $74
    jr nz, jr_01c_4786                            ; $471e: $20 $66

    ld [hl], d                                    ; $4720: $72
    ld l, a                                       ; $4721: $6f
    ld l, l                                       ; $4722: $6d

jr_01c_4723:
    ld l, $02                                     ; $4723: $2e $02
    ld c, c                                       ; $4725: $49
    ld h, [hl]                                    ; $4726: $66
    jr nz, jr_01c_4792                            ; $4727: $20 $69

    ld [hl], h                                    ; $4729: $74
    daa                                           ; $472a: $27

jr_01c_472b:
    ld [hl], e                                    ; $472b: $73
    jr nz, jr_01c_478f                            ; $472c: $20 $61

    jr nz, @+$75                                  ; $472e: $20 $73

    ld [hl], h                                    ; $4730: $74
    ld [hl], d                                    ; $4731: $72
    ld h, c                                       ; $4732: $61
    ld l, c                                       ; $4733: $69
    ld h, a                                       ; $4734: $67
    ld l, b                                       ; $4735: $68
    ld [hl], h                                    ; $4736: $74
    ld bc, $696c                                  ; $4737: $01 $6c $69
    ld l, [hl]                                    ; $473a: $6e

jr_01c_473b:
    ld h, l                                       ; $473b: $65
    inc l                                         ; $473c: $2c
    jr nz, @+$7b                                  ; $473d: $20 $79

    ld l, a                                       ; $473f: $6f
    ld [hl], l                                    ; $4740: $75
    jr nz, jr_01c_47ad                            ; $4741: $20 $6a

    ld [hl], l                                    ; $4743: $75
    ld [hl], e                                    ; $4744: $73

jr_01c_4745:
    ld [hl], h                                    ; $4745: $74
    ld bc, $696d                                  ; $4746: $01 $6d $69
    ld h, a                                       ; $4749: $67
    ld l, b                                       ; $474a: $68

jr_01c_474b:
    ld [hl], h                                    ; $474b: $74
    jr nz, jr_01c_47c1                            ; $474c: $20 $73

jr_01c_474e:
    ld l, c                                       ; $474e: $69
    ld l, [hl]                                    ; $474f: $6e
    ld l, e                                       ; $4750: $6b
    jr nz, jr_01c_47bc                            ; $4751: $20 $69

    ld [hl], h                                    ; $4753: $74
    ld l, $03                                     ; $4754: $2e $03
    nop                                           ; $4756: $00
    ld d, a                                       ; $4757: $57
    ld h, c                                       ; $4758: $61
    ld l, [hl]                                    ; $4759: $6e
    ld [hl], h                                    ; $475a: $74
    jr nz, jr_01c_47d1                            ; $475b: $20 $74

jr_01c_475d:
    ld l, a                                       ; $475d: $6f

jr_01c_475e:
    jr nz, jr_01c_47d3                            ; $475e: $20 $73

    ld h, l                                       ; $4760: $65
    ld h, l                                       ; $4761: $65
    jr nz, @+$79                                  ; $4762: $20 $77

    ld l, b                                       ; $4764: $68
    ld l, a                                       ; $4765: $6f
    daa                                           ; $4766: $27
    ld [hl], e                                    ; $4767: $73
    ld bc, $6562                                  ; $4768: $01 $62 $65
    ld [hl], e                                    ; $476b: $73
    ld [hl], h                                    ; $476c: $74
    jr nz, jr_01c_47d0                            ; $476d: $20 $61

    ld [hl], h                                    ; $476f: $74
    jr nz, jr_01c_47e5                            ; $4770: $20 $73

jr_01c_4772:
    ld l, b                                       ; $4772: $68
    ld l, a                                       ; $4773: $6f
    ld l, a                                       ; $4774: $6f
    ld [hl], h                                    ; $4775: $74
    ld l, c                                       ; $4776: $69
    ld l, [hl]                                    ; $4777: $6e
    ld h, a                                       ; $4778: $67
    ld bc, $7266                                  ; $4779: $01 $66 $72
    ld l, a                                       ; $477c: $6f
    ld l, l                                       ; $477d: $6d
    jr nz, jr_01c_47f4                            ; $477e: $20 $74

jr_01c_4780:
    ld l, b                                       ; $4780: $68
    ld h, l                                       ; $4781: $65
    jr nz, jr_01c_47f8                            ; $4782: $20 $74

    ld [hl], d                                    ; $4784: $72
    ld h, l                                       ; $4785: $65

jr_01c_4786:
    ld h, l                                       ; $4786: $65
    ld [hl], e                                    ; $4787: $73
    ccf                                           ; $4788: $3f
    nop                                           ; $4789: $00
    ld c, c                                       ; $478a: $49

jr_01c_478b:
    daa                                           ; $478b: $27

jr_01c_478c:
    ld l, l                                       ; $478c: $6d
    jr nz, jr_01c_47f2                            ; $478d: $20 $63

jr_01c_478f:
    ld l, a                                       ; $478f: $6f
    ld l, [hl]                                    ; $4790: $6e
    ld h, [hl]                                    ; $4791: $66

jr_01c_4792:
    ld l, c                                       ; $4792: $69
    ld h, h                                       ; $4793: $64
    ld h, l                                       ; $4794: $65
    ld l, [hl]                                    ; $4795: $6e
    ld [hl], h                                    ; $4796: $74
    jr nz, jr_01c_47e2                            ; $4797: $20 $49

    ld bc, $6163                                  ; $4799: $01 $63 $61
    ld l, [hl]                                    ; $479c: $6e
    jr nz, @+$6f                                  ; $479d: $20 $6d

    ld h, c                                       ; $479f: $61
    ld l, e                                       ; $47a0: $6b
    ld h, l                                       ; $47a1: $65
    jr nz, @+$76                                  ; $47a2: $20 $74

    ld l, b                                       ; $47a4: $68
    ld l, c                                       ; $47a5: $69
    ld [hl], e                                    ; $47a6: $73
    ld bc, $7274                                  ; $47a7: $01 $74 $72
    ld l, a                                       ; $47aa: $6f
    ld [hl], l                                    ; $47ab: $75
    ld h, d                                       ; $47ac: $62

jr_01c_47ad:
    ld l, h                                       ; $47ad: $6c
    ld h, l                                       ; $47ae: $65
    jr nz, jr_01c_4824                            ; $47af: $20 $73

    ld l, b                                       ; $47b1: $68
    ld l, a                                       ; $47b2: $6f
    ld [hl], h                                    ; $47b3: $74
    ld l, $02                                     ; $47b4: $2e $02
    ld c, c                                       ; $47b6: $49
    jr nz, jr_01c_4830                            ; $47b7: $20 $77

    ld h, c                                       ; $47b9: $61
    ld l, [hl]                                    ; $47ba: $6e
    ld [hl], h                                    ; $47bb: $74

jr_01c_47bc:
    ld h, l                                       ; $47bc: $65
    ld h, h                                       ; $47bd: $64
    jr nz, jr_01c_4834                            ; $47be: $20 $74

    ld l, a                                       ; $47c0: $6f

jr_01c_47c1:
    jr nz, jr_01c_4826                            ; $47c1: $20 $63

    ld l, a                                       ; $47c3: $6f
    ld l, l                                       ; $47c4: $6d
    dec l                                         ; $47c5: $2d
    ld bc, $6570                                  ; $47c6: $01 $70 $65
    ld [hl], h                                    ; $47c9: $74
    ld h, l                                       ; $47ca: $65
    jr nz, @+$63                                  ; $47cb: $20 $61

    ld h, a                                       ; $47cd: $67
    ld h, c                                       ; $47ce: $61
    ld l, c                                       ; $47cf: $69

jr_01c_47d0:
    ld l, [hl]                                    ; $47d0: $6e

jr_01c_47d1:
    ld [hl], e                                    ; $47d1: $73
    ld [hl], h                                    ; $47d2: $74

jr_01c_47d3:
    jr nz, jr_01c_4848                            ; $47d3: $20 $73

    ld l, a                                       ; $47d5: $6f
    ld l, l                                       ; $47d6: $6d
    ld h, l                                       ; $47d7: $65
    dec l                                         ; $47d8: $2d
    ld bc, $6e6f                                  ; $47d9: $01 $6f $6e
    ld h, l                                       ; $47dc: $65
    jr nz, jr_01c_484e                            ; $47dd: $20 $6f

    ld h, [hl]                                    ; $47df: $66
    jr nz, @+$7b                                  ; $47e0: $20 $79

jr_01c_47e2:
    ld l, a                                       ; $47e2: $6f
    ld [hl], l                                    ; $47e3: $75
    ld [hl], d                                    ; $47e4: $72

jr_01c_47e5:
    jr nz, jr_01c_4853                            ; $47e5: $20 $6c

    ld h, l                                       ; $47e7: $65
    halt                                          ; $47e8: $76
    ld h, l                                       ; $47e9: $65
    ld l, h                                       ; $47ea: $6c
    ld l, $03                                     ; $47eb: $2e $03
    nop                                           ; $47ed: $00
    ld d, a                                       ; $47ee: $57
    ld l, b                                       ; $47ef: $68
    ld l, a                                       ; $47f0: $6f
    ld h, l                                       ; $47f1: $65

jr_01c_47f2:
    halt                                          ; $47f2: $76
    ld h, l                                       ; $47f3: $65

jr_01c_47f4:
    ld [hl], d                                    ; $47f4: $72
    jr nz, @+$69                                  ; $47f5: $20 $67

    ld h, l                                       ; $47f7: $65

jr_01c_47f8:
    ld [hl], h                                    ; $47f8: $74
    ld [hl], e                                    ; $47f9: $73
    jr nz, jr_01c_486b                            ; $47fa: $20 $6f

    ld [hl], l                                    ; $47fc: $75
    ld [hl], h                                    ; $47fd: $74
    ld bc, $666f                                  ; $47fe: $01 $6f $66
    jr nz, @+$76                                  ; $4801: $20 $74

    ld l, b                                       ; $4803: $68
    ld h, l                                       ; $4804: $65
    jr nz, @+$79                                  ; $4805: $20 $77

    ld l, a                                       ; $4807: $6f
    ld l, a                                       ; $4808: $6f
    ld h, h                                       ; $4809: $64
    ld [hl], e                                    ; $480a: $73
    jr nz, jr_01c_486e                            ; $480b: $20 $61

    ld l, [hl]                                    ; $480d: $6e
    ld h, h                                       ; $480e: $64
    ld bc, $6c63                                  ; $480f: $01 $63 $6c
    ld l, a                                       ; $4812: $6f
    ld [hl], e                                    ; $4813: $73
    ld h, l                                       ; $4814: $65
    ld [hl], e                                    ; $4815: $73
    ld [hl], h                                    ; $4816: $74
    jr nz, @+$76                                  ; $4817: $20 $74

    ld l, a                                       ; $4819: $6f
    jr nz, jr_01c_4890                            ; $481a: $20 $74

    ld l, b                                       ; $481c: $68
    ld h, l                                       ; $481d: $65
    jr nz, jr_01c_4890                            ; $481e: $20 $70

    ld l, c                                       ; $4820: $69
    ld l, [hl]                                    ; $4821: $6e
    ld [bc], a                                    ; $4822: $02
    ld [hl], a                                    ; $4823: $77

jr_01c_4824:
    ld l, c                                       ; $4824: $69
    ld l, [hl]                                    ; $4825: $6e

jr_01c_4826:
    ld [hl], e                                    ; $4826: $73
    ld l, $20                                     ; $4827: $2e $20
    ld c, c                                       ; $4829: $49
    daa                                           ; $482a: $27
    ld l, h                                       ; $482b: $6c
    ld l, h                                       ; $482c: $6c
    jr nz, @+$69                                  ; $482d: $20 $67

    ld l, a                                       ; $482f: $6f

jr_01c_4830:
    ld bc, $6966                                  ; $4830: $01 $66 $69
    ld [hl], d                                    ; $4833: $72

jr_01c_4834:
    ld [hl], e                                    ; $4834: $73
    ld [hl], h                                    ; $4835: $74
    ld l, $03                                     ; $4836: $2e $03
    nop                                           ; $4838: $00
    ld b, c                                       ; $4839: $41
    jr nz, @+$55                                  ; $483a: $20 $53

    ld d, a                                       ; $483c: $57
    jr nz, jr_01c_48a8                            ; $483d: $20 $69

    ld [hl], e                                    ; $483f: $73
    jr nz, jr_01c_48a9                            ; $4840: $20 $67

    ld l, a                                       ; $4842: $6f
    ld l, a                                       ; $4843: $6f
    ld h, h                                       ; $4844: $64
    jr nz, jr_01c_48ad                            ; $4845: $20 $66

    ld l, a                                       ; $4847: $6f

jr_01c_4848:
    ld [hl], d                                    ; $4848: $72
    ld bc, $756a                                  ; $4849: $01 $6a $75
    ld [hl], e                                    ; $484c: $73
    ld [hl], h                                    ; $484d: $74

jr_01c_484e:
    jr nz, jr_01c_48b7                            ; $484e: $20 $67

    ld h, l                                       ; $4850: $65
    ld [hl], h                                    ; $4851: $74
    ld [hl], h                                    ; $4852: $74

jr_01c_4853:
    ld l, c                                       ; $4853: $69
    ld l, [hl]                                    ; $4854: $6e
    ld h, a                                       ; $4855: $67
    jr nz, @+$71                                  ; $4856: $20 $6f

    ld [hl], l                                    ; $4858: $75
    ld [hl], h                                    ; $4859: $74
    ld bc, $666f                                  ; $485a: $01 $6f $66
    jr nz, jr_01c_48d3                            ; $485d: $20 $74

    ld l, b                                       ; $485f: $68
    ld h, l                                       ; $4860: $65
    jr nz, jr_01c_48da                            ; $4861: $20 $77

    ld l, a                                       ; $4863: $6f
    ld l, a                                       ; $4864: $6f
    ld h, h                                       ; $4865: $64
    ld [hl], e                                    ; $4866: $73
    ld l, $02                                     ; $4867: $2e $02
    ld b, d                                       ; $4869: $42
    ld [hl], l                                    ; $486a: $75

jr_01c_486b:
    ld [hl], h                                    ; $486b: $74
    jr nz, jr_01c_48e2                            ; $486c: $20 $74

jr_01c_486e:
    ld l, a                                       ; $486e: $6f
    jr nz, jr_01c_48d8                            ; $486f: $20 $67

    ld h, l                                       ; $4871: $65
    ld [hl], h                                    ; $4872: $74
    jr nz, jr_01c_48e4                            ; $4873: $20 $6f

    ld l, [hl]                                    ; $4875: $6e
    ld bc, $7267                                  ; $4876: $01 $67 $72
    ld h, l                                       ; $4879: $65
    ld h, l                                       ; $487a: $65
    ld l, [hl]                                    ; $487b: $6e
    inc l                                         ; $487c: $2c
    jr nz, jr_01c_48c8                            ; $487d: $20 $49

    daa                                           ; $487f: $27
    ld l, h                                       ; $4880: $6c
    ld l, h                                       ; $4881: $6c
    jr nz, jr_01c_48eb                            ; $4882: $20 $67

    ld h, c                                       ; $4884: $61
    ld l, l                                       ; $4885: $6d
    ld h, d                                       ; $4886: $62
    ld l, h                                       ; $4887: $6c
    ld h, l                                       ; $4888: $65
    ld bc, $6e6f                                  ; $4889: $01 $6f $6e
    jr nz, jr_01c_48ef                            ; $488c: $20 $61

    jr nz, @+$6e                                  ; $488e: $20 $6c

jr_01c_4890:
    ld l, a                                       ; $4890: $6f
    ld l, [hl]                                    ; $4891: $6e
    ld h, a                                       ; $4892: $67
    ld h, l                                       ; $4893: $65
    ld [hl], d                                    ; $4894: $72
    jr nz, jr_01c_48fa                            ; $4895: $20 $63

    ld l, h                                       ; $4897: $6c
    ld [hl], l                                    ; $4898: $75
    ld h, d                                       ; $4899: $62
    ld l, $03                                     ; $489a: $2e $03
    nop                                           ; $489c: $00
    ld c, [hl]                                    ; $489d: $4e
    ld l, a                                       ; $489e: $6f
    ld [hl], d                                    ; $489f: $72
    ld l, l                                       ; $48a0: $6d
    ld h, c                                       ; $48a1: $61
    ld l, h                                       ; $48a2: $6c
    jr nz, jr_01c_4915                            ; $48a3: $20 $70

    ld l, a                                       ; $48a5: $6f
    ld [hl], a                                    ; $48a6: $77
    ld h, l                                       ; $48a7: $65

jr_01c_48a8:
    ld [hl], d                                    ; $48a8: $72

jr_01c_48a9:
    ld bc, $6873                                  ; $48a9: $01 $73 $68
    ld l, a                                       ; $48ac: $6f

jr_01c_48ad:
    ld [hl], l                                    ; $48ad: $75
    ld l, h                                       ; $48ae: $6c
    ld h, h                                       ; $48af: $64
    jr nz, @+$79                                  ; $48b0: $20 $77

    ld l, a                                       ; $48b2: $6f
    ld [hl], d                                    ; $48b3: $72
    ld l, e                                       ; $48b4: $6b
    ld l, $03                                     ; $48b5: $2e $03

jr_01c_48b7:
    nop                                           ; $48b7: $00
    ld c, c                                       ; $48b8: $49
    daa                                           ; $48b9: $27
    ld l, h                                       ; $48ba: $6c
    ld l, h                                       ; $48bb: $6c
    jr nz, jr_01c_4933                            ; $48bc: $20 $75

    ld [hl], e                                    ; $48be: $73
    ld h, l                                       ; $48bf: $65
    jr nz, @+$75                                  ; $48c0: $20 $73

    ld l, c                                       ; $48c2: $69
    ld h, h                                       ; $48c3: $64
    ld h, l                                       ; $48c4: $65
    dec l                                         ; $48c5: $2d
    jr nz, @+$63                                  ; $48c6: $20 $61

jr_01c_48c8:
    ld l, [hl]                                    ; $48c8: $6e
    ld h, h                                       ; $48c9: $64
    ld bc, $6162                                  ; $48ca: $01 $62 $61
    ld h, e                                       ; $48cd: $63
    ld l, e                                       ; $48ce: $6b
    ld [hl], e                                    ; $48cf: $73
    ld [hl], b                                    ; $48d0: $70
    ld l, c                                       ; $48d1: $69
    ld l, [hl]                                    ; $48d2: $6e

jr_01c_48d3:
    jr nz, jr_01c_4949                            ; $48d3: $20 $74

    ld l, a                                       ; $48d5: $6f
    jr nz, jr_01c_493b                            ; $48d6: $20 $63

jr_01c_48d8:
    ld [hl], l                                    ; $48d8: $75
    ld [hl], d                                    ; $48d9: $72

jr_01c_48da:
    halt                                          ; $48da: $76
    ld h, l                                       ; $48db: $65
    ld bc, $7469                                  ; $48dc: $01 $69 $74
    jr nz, jr_01c_4951                            ; $48df: $20 $70

    ld h, c                                       ; $48e1: $61

jr_01c_48e2:
    ld [hl], e                                    ; $48e2: $73
    ld [hl], h                                    ; $48e3: $74

jr_01c_48e4:
    jr nz, @+$76                                  ; $48e4: $20 $74

    ld l, b                                       ; $48e6: $68
    ld h, l                                       ; $48e7: $65
    jr nz, jr_01c_495e                            ; $48e8: $20 $74

    ld [hl], d                                    ; $48ea: $72

jr_01c_48eb:
    ld h, l                                       ; $48eb: $65
    ld h, l                                       ; $48ec: $65
    ld [hl], e                                    ; $48ed: $73
    ld [bc], a                                    ; $48ee: $02

jr_01c_48ef:
    ld h, c                                       ; $48ef: $61
    ld l, [hl]                                    ; $48f0: $6e
    ld h, h                                       ; $48f1: $64
    jr nz, jr_01c_4963                            ; $48f2: $20 $6f

    ld l, [hl]                                    ; $48f4: $6e
    ld [hl], h                                    ; $48f5: $74
    ld l, a                                       ; $48f6: $6f
    jr nz, @+$76                                  ; $48f7: $20 $74

    ld l, b                                       ; $48f9: $68

jr_01c_48fa:
    ld h, l                                       ; $48fa: $65
    ld bc, $7267                                  ; $48fb: $01 $67 $72
    ld h, l                                       ; $48fe: $65
    ld h, l                                       ; $48ff: $65
    ld l, [hl]                                    ; $4900: $6e
    ld l, $20                                     ; $4901: $2e $20
    ld c, c                                       ; $4903: $49
    ld [hl], h                                    ; $4904: $74
    daa                                           ; $4905: $27
    ld [hl], e                                    ; $4906: $73
    jr nz, jr_01c_497d                            ; $4907: $20 $74

    ld l, a                                       ; $4909: $6f
    ld [hl], l                                    ; $490a: $75
    ld h, a                                       ; $490b: $67
    ld l, b                                       ; $490c: $68
    ld l, $01                                     ; $490d: $2e $01
    ld c, [hl]                                    ; $490f: $4e
    ld l, a                                       ; $4910: $6f
    jr nz, @+$6f                                  ; $4911: $20 $6d

    ld l, c                                       ; $4913: $69
    ld [hl], e                                    ; $4914: $73

jr_01c_4915:
    dec l                                         ; $4915: $2d
    ld l, b                                       ; $4916: $68
    ld l, c                                       ; $4917: $69
    ld [hl], h                                    ; $4918: $74
    ld [hl], h                                    ; $4919: $74
    ld l, c                                       ; $491a: $69
    ld l, [hl]                                    ; $491b: $6e
    ld h, a                                       ; $491c: $67
    ld hl, $0003                                  ; $491d: $21 $03 $00
    ld c, b                                       ; $4920: $48
    ld l, l                                       ; $4921: $6d
    ld l, l                                       ; $4922: $6d
    inc l                                         ; $4923: $2c
    jr nz, jr_01c_4994                            ; $4924: $20 $6e

    ld l, a                                       ; $4926: $6f
    ld [hl], h                                    ; $4927: $74
    jr nz, jr_01c_4997                            ; $4928: $20 $6d

    ld h, c                                       ; $492a: $61
    ld a, b                                       ; $492b: $78
    dec l                                         ; $492c: $2d
    ld [hl], b                                    ; $492d: $70
    ld l, a                                       ; $492e: $6f
    ld [hl], a                                    ; $492f: $77
    ld h, l                                       ; $4930: $65
    ld [hl], d                                    ; $4931: $72
    inc l                                         ; $4932: $2c

jr_01c_4933:
    ld bc, $7562                                  ; $4933: $01 $62 $75
    ld [hl], h                                    ; $4936: $74
    jr nz, jr_01c_49a2                            ; $4937: $20 $69

    ld [hl], h                                    ; $4939: $74
    daa                                           ; $493a: $27

jr_01c_493b:
    ld l, h                                       ; $493b: $6c
    ld l, h                                       ; $493c: $6c
    jr nz, jr_01c_49b6                            ; $493d: $20 $77

    ld l, a                                       ; $493f: $6f
    ld [hl], d                                    ; $4940: $72
    ld l, e                                       ; $4941: $6b
    ld l, $01                                     ; $4942: $2e $01
    ld c, a                                       ; $4944: $4f
    ld c, e                                       ; $4945: $4b
    ld l, $20                                     ; $4946: $2e $20
    ld e, c                                       ; $4948: $59

jr_01c_4949:
    ld l, a                                       ; $4949: $6f
    ld [hl], l                                    ; $494a: $75
    ld [hl], d                                    ; $494b: $72
    jr nz, @+$75                                  ; $494c: $20 $73

    ld l, b                                       ; $494e: $68
    ld l, a                                       ; $494f: $6f
    ld [hl], h                                    ; $4950: $74

jr_01c_4951:
    ld hl, $0003                                  ; $4951: $21 $03 $00
    ld c, b                                       ; $4954: $48
    ld l, l                                       ; $4955: $6d
    ld l, l                                       ; $4956: $6d
    ld l, l                                       ; $4957: $6d
    inc l                                         ; $4958: $2c
    jr nz, jr_01c_49d4                            ; $4959: $20 $79

    ld l, a                                       ; $495b: $6f
    ld [hl], l                                    ; $495c: $75
    daa                                           ; $495d: $27

jr_01c_495e:
    ld [hl], d                                    ; $495e: $72
    ld h, l                                       ; $495f: $65
    jr nz, @+$65                                  ; $4960: $20 $63

    ld l, h                                       ; $4962: $6c

jr_01c_4963:
    ld l, a                                       ; $4963: $6f
    ld [hl], e                                    ; $4964: $73
    ld h, l                                       ; $4965: $65
    ld [hl], d                                    ; $4966: $72
    ld bc, $6874                                  ; $4967: $01 $74 $68
    ld h, c                                       ; $496a: $61
    ld l, [hl]                                    ; $496b: $6e
    jr nz, jr_01c_49db                            ; $496c: $20 $6d

    ld h, l                                       ; $496e: $65
    ld l, $20                                     ; $496f: $2e $20
    ld b, h                                       ; $4971: $44
    ld h, c                                       ; $4972: $61
    ld l, [hl]                                    ; $4973: $6e
    ld h, a                                       ; $4974: $67
    ld hl, $5901                                  ; $4975: $21 $01 $59
    ld l, a                                       ; $4978: $6f
    ld [hl], l                                    ; $4979: $75
    jr nz, jr_01c_49f3                            ; $497a: $20 $77

    ld l, c                                       ; $497c: $69

jr_01c_497d:
    ld l, [hl]                                    ; $497d: $6e
    ld hl, $0003                                  ; $497e: $21 $03 $00
    ld e, c                                       ; $4981: $59
    ld l, a                                       ; $4982: $6f
    ld [hl], l                                    ; $4983: $75
    daa                                           ; $4984: $27
    ld [hl], d                                    ; $4985: $72
    ld h, l                                       ; $4986: $65
    jr nz, jr_01c_49ef                            ; $4987: $20 $66

    ld h, c                                       ; $4989: $61
    ld [hl], d                                    ; $498a: $72
    ld [hl], h                                    ; $498b: $74
    ld l, b                                       ; $498c: $68
    ld h, l                                       ; $498d: $65
    ld [hl], d                                    ; $498e: $72
    ld bc, $7761                                  ; $498f: $01 $61 $77
    ld h, c                                       ; $4992: $61
    ld a, c                                       ; $4993: $79

jr_01c_4994:
    ld hl, $5920                                  ; $4994: $21 $20 $59

jr_01c_4997:
    ld l, a                                       ; $4997: $6f
    ld [hl], l                                    ; $4998: $75
    jr nz, jr_01c_4a07                            ; $4999: $20 $6c

    ld l, a                                       ; $499b: $6f
    ld [hl], e                                    ; $499c: $73
    ld h, l                                       ; $499d: $65
    ld hl, $0003                                  ; $499e: $21 $03 $00
    ld c, l                                       ; $49a1: $4d

jr_01c_49a2:
    ld h, c                                       ; $49a2: $61
    ld [hl], e                                    ; $49a3: $73
    ld [hl], h                                    ; $49a4: $74
    ld h, l                                       ; $49a5: $65
    ld [hl], d                                    ; $49a6: $72
    jr nz, jr_01c_4a1d                            ; $49a7: $20 $74

    ld [hl], d                                    ; $49a9: $72
    ld l, a                                       ; $49aa: $6f
    ld [hl], l                                    ; $49ab: $75
    ld h, d                                       ; $49ac: $62
    ld l, h                                       ; $49ad: $6c
    ld h, l                                       ; $49ae: $65
    ld bc, $6873                                  ; $49af: $01 $73 $68
    ld l, a                                       ; $49b2: $6f
    ld [hl], h                                    ; $49b3: $74
    ld [hl], e                                    ; $49b4: $73
    inc l                                         ; $49b5: $2c

jr_01c_49b6:
    jr nz, jr_01c_4a27                            ; $49b6: $20 $6f

    ld [hl], d                                    ; $49b8: $72
    jr nz, jr_01c_4a34                            ; $49b9: $20 $79

    ld l, a                                       ; $49bb: $6f
    ld [hl], l                                    ; $49bc: $75
    daa                                           ; $49bd: $27
    halt                                          ; $49be: $76
    ld h, l                                       ; $49bf: $65
    jr nz, jr_01c_4a30                            ; $49c0: $20 $6e

    ld l, a                                       ; $49c2: $6f
    ld bc, $6863                                  ; $49c3: $01 $63 $68
    ld h, c                                       ; $49c6: $61
    ld l, [hl]                                    ; $49c7: $6e
    ld h, e                                       ; $49c8: $63
    ld h, l                                       ; $49c9: $65
    jr nz, jr_01c_4a3b                            ; $49ca: $20 $6f

    ld h, [hl]                                    ; $49cc: $66
    jr nz, jr_01c_4a46                            ; $49cd: $20 $77

    ld l, c                                       ; $49cf: $69
    ld l, [hl]                                    ; $49d0: $6e
    ld l, [hl]                                    ; $49d1: $6e
    ld l, c                                       ; $49d2: $69
    ld l, [hl]                                    ; $49d3: $6e

jr_01c_49d4:
    ld h, a                                       ; $49d4: $67
    ld l, $03                                     ; $49d5: $2e $03
    nop                                           ; $49d7: $00
    ld c, l                                       ; $49d8: $4d
    ld h, c                                       ; $49d9: $61
    ld [hl], e                                    ; $49da: $73

jr_01c_49db:
    ld [hl], h                                    ; $49db: $74
    ld h, l                                       ; $49dc: $65
    ld [hl], d                                    ; $49dd: $72
    jr nz, jr_01c_4a54                            ; $49de: $20 $74

    ld [hl], d                                    ; $49e0: $72
    ld l, a                                       ; $49e1: $6f
    ld [hl], l                                    ; $49e2: $75
    ld h, d                                       ; $49e3: $62
    ld l, h                                       ; $49e4: $6c
    ld h, l                                       ; $49e5: $65
    ld bc, $6873                                  ; $49e6: $01 $73 $68
    ld l, a                                       ; $49e9: $6f
    ld [hl], h                                    ; $49ea: $74
    ld [hl], e                                    ; $49eb: $73
    inc l                                         ; $49ec: $2c
    jr nz, jr_01c_4a5e                            ; $49ed: $20 $6f

jr_01c_49ef:
    ld [hl], d                                    ; $49ef: $72
    jr nz, jr_01c_4a6b                            ; $49f0: $20 $79

    ld l, a                                       ; $49f2: $6f

jr_01c_49f3:
    ld [hl], l                                    ; $49f3: $75
    daa                                           ; $49f4: $27
    halt                                          ; $49f5: $76
    ld h, l                                       ; $49f6: $65
    jr nz, jr_01c_4a67                            ; $49f7: $20 $6e

    ld l, a                                       ; $49f9: $6f
    ld bc, $6863                                  ; $49fa: $01 $63 $68
    ld h, c                                       ; $49fd: $61
    ld l, [hl]                                    ; $49fe: $6e
    ld h, e                                       ; $49ff: $63
    ld h, l                                       ; $4a00: $65
    jr nz, jr_01c_4a72                            ; $4a01: $20 $6f

    ld h, [hl]                                    ; $4a03: $66
    jr nz, @+$79                                  ; $4a04: $20 $77

    ld l, c                                       ; $4a06: $69

jr_01c_4a07:
    ld l, [hl]                                    ; $4a07: $6e
    ld l, [hl]                                    ; $4a08: $6e
    ld l, c                                       ; $4a09: $69
    ld l, [hl]                                    ; $4a0a: $6e
    ld h, a                                       ; $4a0b: $67
    ld l, $03                                     ; $4a0c: $2e $03
    nop                                           ; $4a0e: $00
    rlca                                          ; $4a0f: $07
    ld hl, $5720                                  ; $4a10: $21 $20 $57
    ld h, c                                       ; $4a13: $61
    ld l, [hl]                                    ; $4a14: $6e
    ld l, [hl]                                    ; $4a15: $6e
    ld h, c                                       ; $4a16: $61
    ld bc, $6573                                  ; $4a17: $01 $73 $65
    ld h, l                                       ; $4a1a: $65
    jr nz, jr_01c_4a94                            ; $4a1b: $20 $77

jr_01c_4a1d:
    ld l, b                                       ; $4a1d: $68
    ld l, a                                       ; $4a1e: $6f
    jr nz, jr_01c_4a84                            ; $4a1f: $20 $63

    ld h, c                                       ; $4a21: $61
    ld l, [hl]                                    ; $4a22: $6e
    jr nz, @+$6a                                  ; $4a23: $20 $68

    ld l, c                                       ; $4a25: $69
    ld [hl], h                                    ; $4a26: $74

jr_01c_4a27:
    jr nz, jr_01c_4a8a                            ; $4a27: $20 $61

    ld l, [hl]                                    ; $4a29: $6e
    ld bc, $6522                                  ; $4a2a: $01 $22 $65
    ld a, c                                       ; $4a2d: $79
    ld h, l                                       ; $4a2e: $65
    ld h, d                                       ; $4a2f: $62

jr_01c_4a30:
    ld h, c                                       ; $4a30: $61
    ld l, h                                       ; $4a31: $6c
    ld l, h                                       ; $4a32: $6c
    ld [hl+], a                                   ; $4a33: $22

jr_01c_4a34:
    jr nz, jr_01c_4aaa                            ; $4a34: $20 $74

    ld l, b                                       ; $4a36: $68
    ld h, l                                       ; $4a37: $65
    jr nz, jr_01c_4a9c                            ; $4a38: $20 $62

    ld h, l                                       ; $4a3a: $65

jr_01c_4a3b:
    ld [hl], e                                    ; $4a3b: $73
    ld [hl], h                                    ; $4a3c: $74
    ccf                                           ; $4a3d: $3f
    nop                                           ; $4a3e: $00
    ld b, e                                       ; $4a3f: $43
    ld l, a                                       ; $4a40: $6f
    ld l, l                                       ; $4a41: $6d
    ld h, l                                       ; $4a42: $65
    jr nz, jr_01c_4ab9                            ; $4a43: $20 $74

    ld [hl], d                                    ; $4a45: $72

jr_01c_4a46:
    ld a, c                                       ; $4a46: $79
    jr nz, jr_01c_4ab6                            ; $4a47: $20 $6d

    ld h, l                                       ; $4a49: $65
    jr nz, jr_01c_4ab5                            ; $4a4a: $20 $69

    ld h, [hl]                                    ; $4a4c: $66
    jr nz, jr_01c_4ac8                            ; $4a4d: $20 $79

    ld l, a                                       ; $4a4f: $6f
    ld [hl], l                                    ; $4a50: $75
    ld bc, $6977                                  ; $4a51: $01 $77 $69

jr_01c_4a54:
    ld l, [hl]                                    ; $4a54: $6e
    jr nz, jr_01c_4acb                            ; $4a55: $20 $74

    ld l, b                                       ; $4a57: $68
    ld h, l                                       ; $4a58: $65
    jr nz, jr_01c_4aa7                            ; $4a59: $20 $4c

    ld l, c                                       ; $4a5b: $69
    ld l, [hl]                                    ; $4a5c: $6e
    ld l, e                                       ; $4a5d: $6b

jr_01c_4a5e:
    ld [hl], e                                    ; $4a5e: $73
    ld bc, $6c43                                  ; $4a5f: $01 $43 $6c
    ld [hl], l                                    ; $4a62: $75
    ld h, d                                       ; $4a63: $62
    jr nz, @+$56                                  ; $4a64: $20 $54

    ld l, a                                       ; $4a66: $6f

jr_01c_4a67:
    ld [hl], l                                    ; $4a67: $75
    ld [hl], d                                    ; $4a68: $72
    ld l, [hl]                                    ; $4a69: $6e
    ld h, c                                       ; $4a6a: $61

jr_01c_4a6b:
    ld l, l                                       ; $4a6b: $6d
    ld h, l                                       ; $4a6c: $65
    ld l, [hl]                                    ; $4a6d: $6e
    ld [hl], h                                    ; $4a6e: $74
    ld l, $00                                     ; $4a6f: $2e $00
    ld c, a                                       ; $4a71: $4f

jr_01c_4a72:
    ld c, e                                       ; $4a72: $4b
    ld l, $20                                     ; $4a73: $2e $20
    ld b, c                                       ; $4a75: $41
    ld l, c                                       ; $4a76: $69
    ld l, l                                       ; $4a77: $6d
    jr nz, jr_01c_4ae0                            ; $4a78: $20 $66

    ld l, a                                       ; $4a7a: $6f
    ld [hl], d                                    ; $4a7b: $72
    jr nz, jr_01c_4af2                            ; $4a7c: $20 $74

    ld l, b                                       ; $4a7e: $68
    ld h, c                                       ; $4a7f: $61
    ld [hl], h                                    ; $4a80: $74
    ld bc, $7267                                  ; $4a81: $01 $67 $72

jr_01c_4a84:
    ld h, l                                       ; $4a84: $65
    ld h, l                                       ; $4a85: $65
    ld l, [hl]                                    ; $4a86: $6e
    jr nz, jr_01c_4aef                            ; $4a87: $20 $66

    ld [hl], d                                    ; $4a89: $72

jr_01c_4a8a:
    ld l, a                                       ; $4a8a: $6f
    ld l, l                                       ; $4a8b: $6d
    jr nz, jr_01c_4b02                            ; $4a8c: $20 $74

    ld l, b                                       ; $4a8e: $68
    ld l, c                                       ; $4a8f: $69
    ld [hl], e                                    ; $4a90: $73
    ld bc, $7562                                  ; $4a91: $01 $62 $75

jr_01c_4a94:
    ld l, [hl]                                    ; $4a94: $6e
    ld l, e                                       ; $4a95: $6b
    ld h, l                                       ; $4a96: $65
    ld [hl], d                                    ; $4a97: $72
    ld l, $03                                     ; $4a98: $2e $03
    nop                                           ; $4a9a: $00
    ld e, c                                       ; $4a9b: $59

jr_01c_4a9c:
    ld l, a                                       ; $4a9c: $6f
    ld [hl], l                                    ; $4a9d: $75
    jr nz, jr_01c_4b03                            ; $4a9e: $20 $63

    ld h, c                                       ; $4aa0: $61
    ld l, [hl]                                    ; $4aa1: $6e
    daa                                           ; $4aa2: $27
    ld [hl], h                                    ; $4aa3: $74
    jr nz, jr_01c_4b1b                            ; $4aa4: $20 $75

    ld [hl], e                                    ; $4aa6: $73

jr_01c_4aa7:
    ld h, l                                       ; $4aa7: $65
    jr nz, @+$6c                                  ; $4aa8: $20 $6a

jr_01c_4aaa:
    ld [hl], l                                    ; $4aaa: $75
    ld [hl], e                                    ; $4aab: $73
    ld [hl], h                                    ; $4aac: $74
    ld bc, $6e61                                  ; $4aad: $01 $61 $6e
    ld a, c                                       ; $4ab0: $79
    jr nz, @+$75                                  ; $4ab1: $20 $73

    ld l, b                                       ; $4ab3: $68
    ld l, a                                       ; $4ab4: $6f

jr_01c_4ab5:
    ld [hl], h                                    ; $4ab5: $74

jr_01c_4ab6:
    jr nz, jr_01c_4b2c                            ; $4ab6: $20 $74

    ld l, a                                       ; $4ab8: $6f

jr_01c_4ab9:
    jr nz, jr_01c_4b22                            ; $4ab9: $20 $67

    ld h, l                                       ; $4abb: $65
    ld [hl], h                                    ; $4abc: $74
    jr nz, jr_01c_4b2e                            ; $4abd: $20 $6f

    ld l, [hl]                                    ; $4abf: $6e
    ld bc, $7267                                  ; $4ac0: $01 $67 $72
    ld h, l                                       ; $4ac3: $65
    ld h, l                                       ; $4ac4: $65
    ld l, [hl]                                    ; $4ac5: $6e
    jr nz, jr_01c_4b2e                            ; $4ac6: $20 $66

jr_01c_4ac8:
    ld [hl], d                                    ; $4ac8: $72
    ld l, a                                       ; $4ac9: $6f
    ld l, l                                       ; $4aca: $6d

jr_01c_4acb:
    jr nz, jr_01c_4b35                            ; $4acb: $20 $68

    ld h, l                                       ; $4acd: $65
    ld [hl], d                                    ; $4ace: $72
    ld h, l                                       ; $4acf: $65
    ld l, $02                                     ; $4ad0: $2e $02
    ld c, b                                       ; $4ad2: $48
    ld l, a                                       ; $4ad3: $6f
    ld [hl], a                                    ; $4ad4: $77
    ld h, l                                       ; $4ad5: $65
    halt                                          ; $4ad6: $76
    ld h, l                                       ; $4ad7: $65
    ld [hl], d                                    ; $4ad8: $72
    jr nz, jr_01c_4b54                            ; $4ad9: $20 $79

    ld l, a                                       ; $4adb: $6f
    ld [hl], l                                    ; $4adc: $75
    jr nz, jr_01c_4b43                            ; $4add: $20 $64

    ld l, a                                       ; $4adf: $6f

jr_01c_4ae0:
    jr nz, jr_01c_4b4b                            ; $4ae0: $20 $69

    ld [hl], h                                    ; $4ae2: $74
    inc l                                         ; $4ae3: $2c
    ld bc, $6c63                                  ; $4ae4: $01 $63 $6c
    ld l, a                                       ; $4ae7: $6f
    ld [hl], e                                    ; $4ae8: $73
    ld h, l                                       ; $4ae9: $65
    ld [hl], e                                    ; $4aea: $73
    ld [hl], h                                    ; $4aeb: $74
    jr nz, jr_01c_4b62                            ; $4aec: $20 $74

    ld l, a                                       ; $4aee: $6f

jr_01c_4aef:
    jr nz, jr_01c_4b65                            ; $4aef: $20 $74

    ld l, b                                       ; $4af1: $68

jr_01c_4af2:
    ld h, l                                       ; $4af2: $65
    jr nz, jr_01c_4b65                            ; $4af3: $20 $70

    ld l, c                                       ; $4af5: $69
    ld l, [hl]                                    ; $4af6: $6e
    ld bc, $6977                                  ; $4af7: $01 $77 $69
    ld l, [hl]                                    ; $4afa: $6e
    ld [hl], e                                    ; $4afb: $73
    ld l, $20                                     ; $4afc: $2e $20
    ld c, l                                       ; $4afe: $4d
    ld h, l                                       ; $4aff: $65
    jr nz, jr_01c_4b68                            ; $4b00: $20 $66

jr_01c_4b02:
    ld l, c                                       ; $4b02: $69

jr_01c_4b03:
    ld [hl], d                                    ; $4b03: $72
    ld [hl], e                                    ; $4b04: $73
    ld [hl], h                                    ; $4b05: $74
    ld hl, $0003                                  ; $4b06: $21 $03 $00
    ld c, b                                       ; $4b09: $48
    ld l, l                                       ; $4b0a: $6d
    ld l, l                                       ; $4b0b: $6d
    ld l, $2e                                     ; $4b0c: $2e $2e
    ld l, $20                                     ; $4b0e: $2e $20
    ld c, [hl]                                    ; $4b10: $4e
    ld l, a                                       ; $4b11: $6f
    ld [hl], h                                    ; $4b12: $74
    jr nz, jr_01c_4b89                            ; $4b13: $20 $74

    ld l, a                                       ; $4b15: $6f
    ld l, a                                       ; $4b16: $6f
    jr nz, jr_01c_4b7b                            ; $4b17: $20 $62

    ld h, c                                       ; $4b19: $61
    ld h, h                                       ; $4b1a: $64

jr_01c_4b1b:
    ld l, $01                                     ; $4b1b: $2e $01
    ld c, a                                       ; $4b1d: $4f
    ld c, e                                       ; $4b1e: $4b
    ld l, $20                                     ; $4b1f: $2e $20
    ld e, c                                       ; $4b21: $59

jr_01c_4b22:
    ld l, a                                       ; $4b22: $6f
    ld [hl], l                                    ; $4b23: $75
    ld [hl], d                                    ; $4b24: $72
    jr nz, jr_01c_4b9b                            ; $4b25: $20 $74

    ld [hl], l                                    ; $4b27: $75
    ld [hl], d                                    ; $4b28: $72
    ld l, [hl]                                    ; $4b29: $6e
    ld l, $03                                     ; $4b2a: $2e $03

jr_01c_4b2c:
    nop                                           ; $4b2c: $00
    ld e, c                                       ; $4b2d: $59

jr_01c_4b2e:
    ld h, l                                       ; $4b2e: $65
    ld [hl], e                                    ; $4b2f: $73
    ld hl, $5420                                  ; $4b30: $21 $20 $54
    ld l, b                                       ; $4b33: $68
    ld h, c                                       ; $4b34: $61

jr_01c_4b35:
    ld [hl], h                                    ; $4b35: $74
    jr nz, jr_01c_4baf                            ; $4b36: $20 $77

    ld h, c                                       ; $4b38: $61
    ld [hl], e                                    ; $4b39: $73
    jr nz, jr_01c_4ba3                            ; $4b3a: $20 $67

    ld [hl], d                                    ; $4b3c: $72
    ld h, l                                       ; $4b3d: $65
    ld h, c                                       ; $4b3e: $61
    ld [hl], h                                    ; $4b3f: $74
    ld hl, $4101                                  ; $4b40: $21 $01 $41

jr_01c_4b43:
    ld l, h                                       ; $4b43: $6c
    ld l, h                                       ; $4b44: $6c
    jr nz, jr_01c_4bb9                            ; $4b45: $20 $72

    ld l, c                                       ; $4b47: $69
    ld h, a                                       ; $4b48: $67
    ld l, b                                       ; $4b49: $68
    ld [hl], h                                    ; $4b4a: $74

jr_01c_4b4b:
    ld l, $20                                     ; $4b4b: $2e $20
    ld c, [hl]                                    ; $4b4d: $4e
    ld l, a                                       ; $4b4e: $6f
    ld [hl], a                                    ; $4b4f: $77
    ld bc, $7469                                  ; $4b50: $01 $69 $74
    daa                                           ; $4b53: $27

jr_01c_4b54:
    ld [hl], e                                    ; $4b54: $73
    jr nz, jr_01c_4bd0                            ; $4b55: $20 $79

    ld l, a                                       ; $4b57: $6f
    ld [hl], l                                    ; $4b58: $75
    ld [hl], d                                    ; $4b59: $72
    jr nz, jr_01c_4bd0                            ; $4b5a: $20 $74

    ld [hl], l                                    ; $4b5c: $75
    ld [hl], d                                    ; $4b5d: $72
    ld l, [hl]                                    ; $4b5e: $6e
    ld hl, $0003                                  ; $4b5f: $21 $03 $00

jr_01c_4b62:
    ld d, h                                       ; $4b62: $54
    ld h, e                                       ; $4b63: $63
    ld l, b                                       ; $4b64: $68

jr_01c_4b65:
    ld hl, $5920                                  ; $4b65: $21 $20 $59

jr_01c_4b68:
    ld l, a                                       ; $4b68: $6f
    ld [hl], l                                    ; $4b69: $75
    daa                                           ; $4b6a: $27
    ld [hl], d                                    ; $4b6b: $72
    ld h, l                                       ; $4b6c: $65
    jr nz, @+$65                                  ; $4b6d: $20 $63

    ld l, h                                       ; $4b6f: $6c
    ld l, a                                       ; $4b70: $6f
    ld [hl], e                                    ; $4b71: $73
    ld h, l                                       ; $4b72: $65
    ld [hl], d                                    ; $4b73: $72
    ld bc, $6874                                  ; $4b74: $01 $74 $68
    ld h, c                                       ; $4b77: $61
    ld l, [hl]                                    ; $4b78: $6e
    jr nz, jr_01c_4be8                            ; $4b79: $20 $6d

jr_01c_4b7b:
    ld h, l                                       ; $4b7b: $65
    ld l, $20                                     ; $4b7c: $2e $20
    ld d, a                                       ; $4b7e: $57
    ld h, l                                       ; $4b7f: $65
    ld l, h                                       ; $4b80: $6c
    ld l, h                                       ; $4b81: $6c
    inc l                                         ; $4b82: $2c
    ld bc, $2049                                  ; $4b83: $01 $49 $20
    ld h, a                                       ; $4b86: $67
    ld [hl], l                                    ; $4b87: $75
    ld h, l                                       ; $4b88: $65

jr_01c_4b89:
    ld [hl], e                                    ; $4b89: $73
    ld [hl], e                                    ; $4b8a: $73
    jr nz, jr_01c_4c06                            ; $4b8b: $20 $79

    ld l, a                                       ; $4b8d: $6f
    ld [hl], l                                    ; $4b8e: $75
    jr nz, jr_01c_4c08                            ; $4b8f: $20 $77

    ld l, c                                       ; $4b91: $69
    ld l, [hl]                                    ; $4b92: $6e
    ld l, $03                                     ; $4b93: $2e $03
    nop                                           ; $4b95: $00
    ld e, c                                       ; $4b96: $59
    ld b, c                                       ; $4b97: $41
    ld e, c                                       ; $4b98: $59
    dec l                                         ; $4b99: $2d
    ld c, b                                       ; $4b9a: $48

jr_01c_4b9b:
    ld b, l                                       ; $4b9b: $45
    ld e, c                                       ; $4b9c: $59
    ld hl, $5920                                  ; $4b9d: $21 $20 $59
    ld l, a                                       ; $4ba0: $6f
    ld [hl], l                                    ; $4ba1: $75
    daa                                           ; $4ba2: $27

jr_01c_4ba3:
    ld [hl], d                                    ; $4ba3: $72
    ld h, l                                       ; $4ba4: $65
    ld bc, $6166                                  ; $4ba5: $01 $66 $61
    ld [hl], d                                    ; $4ba8: $72
    ld [hl], h                                    ; $4ba9: $74
    ld l, b                                       ; $4baa: $68
    ld h, l                                       ; $4bab: $65
    ld [hl], d                                    ; $4bac: $72
    jr nz, jr_01c_4c10                            ; $4bad: $20 $61

jr_01c_4baf:
    ld [hl], a                                    ; $4baf: $77
    ld h, c                                       ; $4bb0: $61
    ld a, c                                       ; $4bb1: $79
    inc l                                         ; $4bb2: $2c
    jr nz, jr_01c_4c28                            ; $4bb3: $20 $73

    ld l, a                                       ; $4bb5: $6f
    jr nz, @+$7b                                  ; $4bb6: $20 $79

    ld l, a                                       ; $4bb8: $6f

jr_01c_4bb9:
    ld [hl], l                                    ; $4bb9: $75
    ld bc, $6f6c                                  ; $4bba: $01 $6c $6f
    ld [hl], e                                    ; $4bbd: $73
    ld h, l                                       ; $4bbe: $65
    jr nz, jr_01c_4c35                            ; $4bbf: $20 $74

    ld l, b                                       ; $4bc1: $68
    ld l, c                                       ; $4bc2: $69
    ld [hl], e                                    ; $4bc3: $73
    jr nz, jr_01c_4c33                            ; $4bc4: $20 $6d

    ld h, c                                       ; $4bc6: $61
    ld [hl], h                                    ; $4bc7: $74
    ld h, e                                       ; $4bc8: $63
    ld l, b                                       ; $4bc9: $68
    ld l, $03                                     ; $4bca: $2e $03
    nop                                           ; $4bcc: $00
    ld c, c                                       ; $4bcd: $49
    daa                                           ; $4bce: $27
    ld l, h                                       ; $4bcf: $6c

jr_01c_4bd0:
    ld l, h                                       ; $4bd0: $6c
    jr nz, @+$72                                  ; $4bd1: $20 $70

    ld [hl], d                                    ; $4bd3: $72
    ld h, c                                       ; $4bd4: $61
    ld h, e                                       ; $4bd5: $63
    ld [hl], h                                    ; $4bd6: $74
    ld l, c                                       ; $4bd7: $69
    ld h, e                                       ; $4bd8: $63
    ld h, l                                       ; $4bd9: $65
    jr nz, jr_01c_4c4f                            ; $4bda: $20 $73

    ld l, a                                       ; $4bdc: $6f
    ld l, l                                       ; $4bdd: $6d
    ld h, l                                       ; $4bde: $65
    ld bc, $6f6d                                  ; $4bdf: $01 $6d $6f
    ld [hl], d                                    ; $4be2: $72
    ld h, l                                       ; $4be3: $65
    jr nz, jr_01c_4c47                            ; $4be4: $20 $61

    ld l, [hl]                                    ; $4be6: $6e
    ld h, h                                       ; $4be7: $64

jr_01c_4be8:
    jr nz, jr_01c_4c5e                            ; $4be8: $20 $74

    ld [hl], d                                    ; $4bea: $72
    ld a, c                                       ; $4beb: $79
    ld bc, $6f79                                  ; $4bec: $01 $79 $6f
    ld [hl], l                                    ; $4bef: $75
    jr nz, jr_01c_4c53                            ; $4bf0: $20 $61

    ld h, a                                       ; $4bf2: $67
    ld h, c                                       ; $4bf3: $61
    ld l, c                                       ; $4bf4: $69
    ld l, [hl]                                    ; $4bf5: $6e
    ld l, $03                                     ; $4bf6: $2e $03
    nop                                           ; $4bf8: $00
    ld c, c                                       ; $4bf9: $49
    daa                                           ; $4bfa: $27
    ld l, h                                       ; $4bfb: $6c
    ld l, h                                       ; $4bfc: $6c
    jr nz, @+$72                                  ; $4bfd: $20 $70

    ld [hl], d                                    ; $4bff: $72
    ld h, c                                       ; $4c00: $61
    ld h, e                                       ; $4c01: $63
    ld [hl], h                                    ; $4c02: $74
    ld l, c                                       ; $4c03: $69
    ld h, e                                       ; $4c04: $63
    ld h, l                                       ; $4c05: $65

jr_01c_4c06:
    jr nz, jr_01c_4c7b                            ; $4c06: $20 $73

jr_01c_4c08:
    ld l, a                                       ; $4c08: $6f
    ld l, l                                       ; $4c09: $6d
    ld h, l                                       ; $4c0a: $65
    ld bc, $6f6d                                  ; $4c0b: $01 $6d $6f
    ld [hl], d                                    ; $4c0e: $72
    ld h, l                                       ; $4c0f: $65

jr_01c_4c10:
    jr nz, jr_01c_4c73                            ; $4c10: $20 $61

    ld l, [hl]                                    ; $4c12: $6e
    ld h, h                                       ; $4c13: $64
    jr nz, @+$76                                  ; $4c14: $20 $74

    ld [hl], d                                    ; $4c16: $72
    ld a, c                                       ; $4c17: $79
    ld bc, $6f79                                  ; $4c18: $01 $79 $6f
    ld [hl], l                                    ; $4c1b: $75
    jr nz, @+$63                                  ; $4c1c: $20 $61

    ld h, a                                       ; $4c1e: $67
    ld h, c                                       ; $4c1f: $61
    ld l, c                                       ; $4c20: $69
    ld l, [hl]                                    ; $4c21: $6e
    ld l, $03                                     ; $4c22: $2e $03
    nop                                           ; $4c24: $00
    ld b, e                                       ; $4c25: $43
    ld l, a                                       ; $4c26: $6f
    ld l, [hl]                                    ; $4c27: $6e

jr_01c_4c28:
    ld h, a                                       ; $4c28: $67
    ld [hl], d                                    ; $4c29: $72
    ld h, c                                       ; $4c2a: $61
    ld [hl], h                                    ; $4c2b: $74
    ld [hl], e                                    ; $4c2c: $73
    jr nz, jr_01c_4c9e                            ; $4c2d: $20 $6f

    ld l, [hl]                                    ; $4c2f: $6e
    jr nz, jr_01c_4ca9                            ; $4c30: $20 $77

    ld l, c                                       ; $4c32: $69

jr_01c_4c33:
    ld l, [hl]                                    ; $4c33: $6e
    ld l, [hl]                                    ; $4c34: $6e

jr_01c_4c35:
    ld l, c                                       ; $4c35: $69
    ld l, [hl]                                    ; $4c36: $6e
    ld h, a                                       ; $4c37: $67
    ld bc, $6874                                  ; $4c38: $01 $74 $68
    ld h, l                                       ; $4c3b: $65
    jr nz, @+$4e                                  ; $4c3c: $20 $4c

    ld l, c                                       ; $4c3e: $69
    ld l, [hl]                                    ; $4c3f: $6e
    ld l, e                                       ; $4c40: $6b
    ld [hl], e                                    ; $4c41: $73
    ld bc, $6843                                  ; $4c42: $01 $43 $68
    ld h, c                                       ; $4c45: $61
    ld l, l                                       ; $4c46: $6d

jr_01c_4c47:
    ld [hl], b                                    ; $4c47: $70
    ld l, c                                       ; $4c48: $69
    ld l, a                                       ; $4c49: $6f
    ld l, [hl]                                    ; $4c4a: $6e
    ld [hl], e                                    ; $4c4b: $73
    ld l, b                                       ; $4c4c: $68
    ld l, c                                       ; $4c4d: $69
    ld [hl], b                                    ; $4c4e: $70

jr_01c_4c4f:
    ld l, $02                                     ; $4c4f: $2e $02
    ld d, b                                       ; $4c51: $50
    ld [hl], d                                    ; $4c52: $72

jr_01c_4c53:
    ld h, c                                       ; $4c53: $61
    ld h, e                                       ; $4c54: $63
    ld [hl], h                                    ; $4c55: $74
    ld l, c                                       ; $4c56: $69
    ld h, e                                       ; $4c57: $63
    ld l, c                                       ; $4c58: $69
    ld l, [hl]                                    ; $4c59: $6e
    ld h, a                                       ; $4c5a: $67
    jr nz, jr_01c_4cbe                            ; $4c5b: $20 $61

    ld h, [hl]                                    ; $4c5d: $66

jr_01c_4c5e:
    ld [hl], h                                    ; $4c5e: $74
    ld h, l                                       ; $4c5f: $65
    ld [hl], d                                    ; $4c60: $72
    ld bc, $616d                                  ; $4c61: $01 $6d $61
    ld l, e                                       ; $4c64: $6b
    ld l, c                                       ; $4c65: $69
    ld l, [hl]                                    ; $4c66: $6e
    ld h, a                                       ; $4c67: $67
    jr nz, jr_01c_4cb1                            ; $4c68: $20 $47

    ld [hl], d                                    ; $4c6a: $72
    ld h, c                                       ; $4c6b: $61
    ld l, [hl]                                    ; $4c6c: $6e
    ld h, h                                       ; $4c6d: $64
    jr nz, jr_01c_4cb3                            ; $4c6e: $20 $43

    ld l, b                                       ; $4c70: $68
    ld h, c                                       ; $4c71: $61
    ld l, l                                       ; $4c72: $6d

jr_01c_4c73:
    ld [hl], b                                    ; $4c73: $70
    ld l, $2e                                     ; $4c74: $2e $2e
    ld l, $01                                     ; $4c76: $2e $01
    ld e, c                                       ; $4c78: $59
    ld l, a                                       ; $4c79: $6f
    ld [hl], l                                    ; $4c7a: $75

jr_01c_4c7b:
    daa                                           ; $4c7b: $27
    ld [hl], d                                    ; $4c7c: $72
    ld h, l                                       ; $4c7d: $65
    jr nz, @+$66                                  ; $4c7e: $20 $64

    ld h, l                                       ; $4c80: $65
    ld h, h                                       ; $4c81: $64
    ld l, c                                       ; $4c82: $69
    ld h, e                                       ; $4c83: $63
    ld h, c                                       ; $4c84: $61
    ld [hl], h                                    ; $4c85: $74
    ld h, l                                       ; $4c86: $65
    ld h, h                                       ; $4c87: $64
    ld hl, $0003                                  ; $4c88: $21 $03 $00
    ld d, h                                       ; $4c8b: $54
    ld l, b                                       ; $4c8c: $68
    ld h, l                                       ; $4c8d: $65
    jr nz, jr_01c_4cd7                            ; $4c8e: $20 $47

    ld [hl], d                                    ; $4c90: $72
    ld h, c                                       ; $4c91: $61
    ld l, [hl]                                    ; $4c92: $6e
    ld h, h                                       ; $4c93: $64
    jr nz, jr_01c_4cd9                            ; $4c94: $20 $43

    ld l, b                                       ; $4c96: $68
    ld h, c                                       ; $4c97: $61
    ld l, l                                       ; $4c98: $6d
    ld [hl], b                                    ; $4c99: $70
    ld bc, $6168                                  ; $4c9a: $01 $68 $61
    ld [hl], e                                    ; $4c9d: $73

jr_01c_4c9e:
    jr nz, @+$76                                  ; $4c9e: $20 $74

    ld l, b                                       ; $4ca0: $68
    ld h, l                                       ; $4ca1: $65
    jr nz, @+$72                                  ; $4ca2: $20 $70

    ld [hl], d                                    ; $4ca4: $72
    ld l, c                                       ; $4ca5: $69
    halt                                          ; $4ca6: $76
    ld l, c                                       ; $4ca7: $69
    ld l, h                                       ; $4ca8: $6c

jr_01c_4ca9:
    ld h, l                                       ; $4ca9: $65
    ld h, a                                       ; $4caa: $67
    ld h, l                                       ; $4cab: $65
    ld bc, $666f                                  ; $4cac: $01 $6f $66
    jr nz, jr_01c_4d16                            ; $4caf: $20 $65

jr_01c_4cb1:
    ld l, [hl]                                    ; $4cb1: $6e
    ld [hl], h                                    ; $4cb2: $74

jr_01c_4cb3:
    ld h, l                                       ; $4cb3: $65
    ld [hl], d                                    ; $4cb4: $72
    ld l, c                                       ; $4cb5: $69
    ld l, [hl]                                    ; $4cb6: $6e
    ld h, a                                       ; $4cb7: $67
    jr nz, jr_01c_4d0a                            ; $4cb8: $20 $50

    ld h, l                                       ; $4cba: $65
    ld h, c                                       ; $4cbb: $61
    ld h, e                                       ; $4cbc: $63
    ld l, b                                       ; $4cbd: $68

jr_01c_4cbe:
    daa                                           ; $4cbe: $27
    ld [hl], e                                    ; $4cbf: $73
    ld [bc], a                                    ; $4cc0: $02
    ld d, h                                       ; $4cc1: $54
    ld l, a                                       ; $4cc2: $6f
    ld [hl], l                                    ; $4cc3: $75
    ld [hl], d                                    ; $4cc4: $72
    ld l, [hl]                                    ; $4cc5: $6e
    ld h, c                                       ; $4cc6: $61
    ld l, l                                       ; $4cc7: $6d
    ld h, l                                       ; $4cc8: $65
    ld l, [hl]                                    ; $4cc9: $6e
    ld [hl], h                                    ; $4cca: $74
    ld l, $20                                     ; $4ccb: $2e $20
    ld c, c                                       ; $4ccd: $49
    ld bc, $6568                                  ; $4cce: $01 $68 $65
    ld h, c                                       ; $4cd1: $61
    ld [hl], d                                    ; $4cd2: $72
    jr nz, jr_01c_4d22                            ; $4cd3: $20 $4d

    ld h, c                                       ; $4cd5: $61
    ld [hl], d                                    ; $4cd6: $72

jr_01c_4cd7:
    ld l, c                                       ; $4cd7: $69
    ld l, a                                       ; $4cd8: $6f

jr_01c_4cd9:
    daa                                           ; $4cd9: $27
    ld [hl], e                                    ; $4cda: $73
    jr nz, jr_01c_4d4b                            ; $4cdb: $20 $6e

    ld l, a                                       ; $4cdd: $6f
    ld [hl], h                                    ; $4cde: $74
    ld bc, $6874                                  ; $4cdf: $01 $74 $68
    ld h, l                                       ; $4ce2: $65
    jr nz, jr_01c_4d54                            ; $4ce3: $20 $6f

    ld l, [hl]                                    ; $4ce5: $6e
    ld l, h                                       ; $4ce6: $6c
    ld a, c                                       ; $4ce7: $79
    jr nz, jr_01c_4d4f                            ; $4ce8: $20 $65

    ld a, b                                       ; $4cea: $78
    ld [hl], b                                    ; $4ceb: $70
    ld h, l                                       ; $4cec: $65
    ld [hl], d                                    ; $4ced: $72
    ld [hl], h                                    ; $4cee: $74
    ld hl, $0003                                  ; $4cef: $21 $03 $00
    ld d, a                                       ; $4cf2: $57
    ld l, c                                       ; $4cf3: $69
    ld l, [hl]                                    ; $4cf4: $6e
    ld l, [hl]                                    ; $4cf5: $6e
    ld l, c                                       ; $4cf6: $69
    ld l, [hl]                                    ; $4cf7: $6e
    ld h, a                                       ; $4cf8: $67
    jr nz, jr_01c_4d4b                            ; $4cf9: $20 $50

    ld h, l                                       ; $4cfb: $65
    ld h, c                                       ; $4cfc: $61
    ld h, e                                       ; $4cfd: $63
    ld l, b                                       ; $4cfe: $68
    daa                                           ; $4cff: $27
    ld [hl], e                                    ; $4d00: $73
    ld bc, $6f54                                  ; $4d01: $01 $54 $6f
    ld [hl], l                                    ; $4d04: $75
    ld [hl], d                                    ; $4d05: $72
    ld l, [hl]                                    ; $4d06: $6e
    ld h, c                                       ; $4d07: $61
    ld l, l                                       ; $4d08: $6d
    ld h, l                                       ; $4d09: $65

jr_01c_4d0a:
    ld l, [hl]                                    ; $4d0a: $6e
    ld [hl], h                                    ; $4d0b: $74
    jr nz, jr_01c_4d7e                            ; $4d0c: $20 $70

    ld [hl], d                                    ; $4d0e: $72
    ld l, a                                       ; $4d0f: $6f
    halt                                          ; $4d10: $76
    ld h, l                                       ; $4d11: $65
    ld [hl], e                                    ; $4d12: $73
    ld bc, $6f79                                  ; $4d13: $01 $79 $6f

jr_01c_4d16:
    ld [hl], l                                    ; $4d16: $75
    daa                                           ; $4d17: $27
    ld [hl], d                                    ; $4d18: $72
    ld h, l                                       ; $4d19: $65
    jr nz, jr_01c_4d90                            ; $4d1a: $20 $74

    ld l, b                                       ; $4d1c: $68
    ld h, l                                       ; $4d1d: $65
    jr nz, jr_01c_4d82                            ; $4d1e: $20 $62

    ld h, l                                       ; $4d20: $65
    ld [hl], e                                    ; $4d21: $73

jr_01c_4d22:
    ld [hl], h                                    ; $4d22: $74
    ld l, $03                                     ; $4d23: $2e $03
    nop                                           ; $4d25: $00
    ld d, e                                       ; $4d26: $53
    ld l, a                                       ; $4d27: $6f
    ld l, l                                       ; $4d28: $6d
    ld h, l                                       ; $4d29: $65
    jr nz, jr_01c_4d8f                            ; $4d2a: $20 $63

    ld l, b                                       ; $4d2c: $68
    ld h, c                                       ; $4d2d: $61
    ld l, l                                       ; $4d2e: $6d
    ld [hl], b                                    ; $4d2f: $70
    ld [hl], e                                    ; $4d30: $73
    jr nz, jr_01c_4d9a                            ; $4d31: $20 $67

    ld h, l                                       ; $4d33: $65
    ld [hl], h                                    ; $4d34: $74
    ld bc, $7473                                  ; $4d35: $01 $73 $74
    ld [hl], l                                    ; $4d38: $75
    ld h, e                                       ; $4d39: $63
    ld l, e                                       ; $4d3a: $6b
    dec l                                         ; $4d3b: $2d
    ld [hl], l                                    ; $4d3c: $75
    ld [hl], b                                    ; $4d3d: $70
    jr nz, @+$63                                  ; $4d3e: $20 $61

    ld l, [hl]                                    ; $4d40: $6e
    ld h, h                                       ; $4d41: $64
    jr nz, jr_01c_4db5                            ; $4d42: $20 $71

    ld [hl], l                                    ; $4d44: $75
    ld l, c                                       ; $4d45: $69
    ld [hl], h                                    ; $4d46: $74
    ld bc, $7270                                  ; $4d47: $01 $70 $72
    ld h, c                                       ; $4d4a: $61

jr_01c_4d4b:
    ld h, e                                       ; $4d4b: $63
    ld [hl], h                                    ; $4d4c: $74
    ld l, c                                       ; $4d4d: $69
    ld h, e                                       ; $4d4e: $63

jr_01c_4d4f:
    ld l, c                                       ; $4d4f: $69
    ld l, [hl]                                    ; $4d50: $6e
    ld h, a                                       ; $4d51: $67
    jr nz, jr_01c_4db5                            ; $4d52: $20 $61

jr_01c_4d54:
    ld h, [hl]                                    ; $4d54: $66
    ld [hl], h                                    ; $4d55: $74
    ld h, l                                       ; $4d56: $65
    ld [hl], d                                    ; $4d57: $72
    ld bc, $6572                                  ; $4d58: $01 $72 $65
    ld h, c                                       ; $4d5b: $61
    ld h, e                                       ; $4d5c: $63
    ld l, b                                       ; $4d5d: $68
    ld l, c                                       ; $4d5e: $69
    ld l, [hl]                                    ; $4d5f: $6e
    ld h, a                                       ; $4d60: $67
    jr nz, jr_01c_4dd7                            ; $4d61: $20 $74

    ld l, b                                       ; $4d63: $68
    ld h, l                                       ; $4d64: $65
    jr nz, jr_01c_4ddb                            ; $4d65: $20 $74

    ld l, a                                       ; $4d67: $6f
    ld [hl], b                                    ; $4d68: $70
    ld l, $02                                     ; $4d69: $2e $02
    ld b, d                                       ; $4d6b: $42
    ld [hl], l                                    ; $4d6c: $75
    ld [hl], h                                    ; $4d6d: $74
    jr nz, jr_01c_4de9                            ; $4d6e: $20 $79

    ld l, a                                       ; $4d70: $6f
    ld [hl], l                                    ; $4d71: $75
    daa                                           ; $4d72: $27
    ld [hl], d                                    ; $4d73: $72
    ld h, l                                       ; $4d74: $65
    jr nz, jr_01c_4ddf                            ; $4d75: $20 $68

    ld h, l                                       ; $4d77: $65
    ld [hl], d                                    ; $4d78: $72
    ld h, l                                       ; $4d79: $65
    inc l                                         ; $4d7a: $2c
    ld bc, $6f73                                  ; $4d7b: $01 $73 $6f

jr_01c_4d7e:
    jr nz, jr_01c_4dc9                            ; $4d7e: $20 $49

    jr nz, jr_01c_4ded                            ; $4d80: $20 $6b

jr_01c_4d82:
    ld l, [hl]                                    ; $4d82: $6e
    ld l, a                                       ; $4d83: $6f
    ld [hl], a                                    ; $4d84: $77
    jr nz, @+$7b                                  ; $4d85: $20 $79

    ld l, a                                       ; $4d87: $6f
    ld [hl], l                                    ; $4d88: $75
    daa                                           ; $4d89: $27
    ld [hl], d                                    ; $4d8a: $72
    ld h, l                                       ; $4d8b: $65
    ld bc, $6f6e                                  ; $4d8c: $01 $6e $6f

jr_01c_4d8f:
    ld [hl], h                                    ; $4d8f: $74

jr_01c_4d90:
    jr nz, jr_01c_4dfe                            ; $4d90: $20 $6c

    ld l, c                                       ; $4d92: $69
    ld l, e                                       ; $4d93: $6b
    ld h, l                                       ; $4d94: $65
    jr nz, jr_01c_4e0b                            ; $4d95: $20 $74

    ld l, b                                       ; $4d97: $68
    ld h, l                                       ; $4d98: $65
    ld l, l                                       ; $4d99: $6d

jr_01c_4d9a:
    ld l, $03                                     ; $4d9a: $2e $03
    nop                                           ; $4d9c: $00
    ld e, c                                       ; $4d9d: $59
    ld l, a                                       ; $4d9e: $6f
    ld [hl], l                                    ; $4d9f: $75
    jr nz, jr_01c_4e04                            ; $4da0: $20 $62

    ld h, l                                       ; $4da2: $65
    ld h, c                                       ; $4da3: $61
    ld [hl], h                                    ; $4da4: $74
    jr nz, jr_01c_4db5                            ; $4da5: $20 $0e

    rlca                                          ; $4da7: $07
    inc l                                         ; $4da8: $2c
    jr nz, jr_01c_4e1e                            ; $4da9: $20 $73

    ld l, a                                       ; $4dab: $6f
    ld bc, $6f79                                  ; $4dac: $01 $79 $6f
    ld [hl], l                                    ; $4daf: $75
    daa                                           ; $4db0: $27
    ld [hl], d                                    ; $4db1: $72
    ld h, l                                       ; $4db2: $65
    jr nz, jr_01c_4e29                            ; $4db3: $20 $74

jr_01c_4db5:
    ld l, b                                       ; $4db5: $68
    ld h, l                                       ; $4db6: $65
    jr nz, jr_01c_4e1b                            ; $4db7: $20 $62

    ld h, l                                       ; $4db9: $65
    ld [hl], e                                    ; $4dba: $73
    ld [hl], h                                    ; $4dbb: $74
    ld bc, $6972                                  ; $4dbc: $01 $72 $69
    ld h, a                                       ; $4dbf: $67
    ld l, b                                       ; $4dc0: $68
    ld [hl], h                                    ; $4dc1: $74
    jr nz, jr_01c_4e32                            ; $4dc2: $20 $6e

    ld l, a                                       ; $4dc4: $6f
    ld [hl], a                                    ; $4dc5: $77
    ld l, $02                                     ; $4dc6: $2e $02
    ld c, c                                       ; $4dc8: $49

jr_01c_4dc9:
    jr nz, jr_01c_4e2e                            ; $4dc9: $20 $63

    ld h, c                                       ; $4dcb: $61
    ld l, [hl]                                    ; $4dcc: $6e
    daa                                           ; $4dcd: $27
    ld [hl], h                                    ; $4dce: $74
    jr nz, @+$79                                  ; $4dcf: $20 $77

    ld h, c                                       ; $4dd1: $61
    ld l, c                                       ; $4dd2: $69
    ld [hl], h                                    ; $4dd3: $74
    jr nz, jr_01c_4e4a                            ; $4dd4: $20 $74

    ld l, a                                       ; $4dd6: $6f

jr_01c_4dd7:
    jr nz, @+$75                                  ; $4dd7: $20 $73

    ld h, l                                       ; $4dd9: $65
    ld h, l                                       ; $4dda: $65

jr_01c_4ddb:
    ld bc, $6f68                                  ; $4ddb: $01 $68 $6f
    ld [hl], a                                    ; $4dde: $77

jr_01c_4ddf:
    jr nz, jr_01c_4e5a                            ; $4ddf: $20 $79

    ld l, a                                       ; $4de1: $6f
    ld [hl], l                                    ; $4de2: $75
    ld [hl], d                                    ; $4de3: $72
    jr nz, jr_01c_4e53                            ; $4de4: $20 $6d

    ld h, c                                       ; $4de6: $61
    ld [hl], h                                    ; $4de7: $74
    ld h, e                                       ; $4de8: $63

jr_01c_4de9:
    ld l, b                                       ; $4de9: $68
    jr nz, jr_01c_4e63                            ; $4dea: $20 $77

    ld l, c                                       ; $4dec: $69

jr_01c_4ded:
    ld [hl], h                                    ; $4ded: $74
    ld l, b                                       ; $4dee: $68
    ld bc, $614d                                  ; $4def: $01 $4d $61
    ld [hl], d                                    ; $4df2: $72
    ld l, c                                       ; $4df3: $69
    ld l, a                                       ; $4df4: $6f
    jr nz, jr_01c_4e6b                            ; $4df5: $20 $74

    ld [hl], l                                    ; $4df7: $75
    ld [hl], d                                    ; $4df8: $72
    ld l, [hl]                                    ; $4df9: $6e
    ld [hl], e                                    ; $4dfa: $73
    jr nz, jr_01c_4e6c                            ; $4dfb: $20 $6f

    ld [hl], l                                    ; $4dfd: $75

jr_01c_4dfe:
    ld [hl], h                                    ; $4dfe: $74
    ld l, $03                                     ; $4dff: $2e $03
    nop                                           ; $4e01: $00
    ld c, c                                       ; $4e02: $49
    daa                                           ; $4e03: $27

jr_01c_4e04:
    ld l, l                                       ; $4e04: $6d
    jr nz, jr_01c_4e77                            ; $4e05: $20 $70

    ld [hl], d                                    ; $4e07: $72
    ld h, c                                       ; $4e08: $61
    ld h, e                                       ; $4e09: $63
    ld [hl], h                                    ; $4e0a: $74

jr_01c_4e0b:
    ld l, c                                       ; $4e0b: $69
    ld h, e                                       ; $4e0c: $63
    ld l, c                                       ; $4e0d: $69
    ld l, [hl]                                    ; $4e0e: $6e
    ld h, a                                       ; $4e0f: $67
    ld bc, $7264                                  ; $4e10: $01 $64 $72
    ld l, c                                       ; $4e13: $69
    halt                                          ; $4e14: $76
    ld h, l                                       ; $4e15: $65
    ld [hl], d                                    ; $4e16: $72
    jr nz, @+$76                                  ; $4e17: $20 $74

    ld h, l                                       ; $4e19: $65
    ld h, l                                       ; $4e1a: $65

jr_01c_4e1b:
    jr nz, jr_01c_4e90                            ; $4e1b: $20 $73

    ld l, b                                       ; $4e1d: $68

jr_01c_4e1e:
    ld l, a                                       ; $4e1e: $6f
    ld [hl], h                                    ; $4e1f: $74
    ld [hl], e                                    ; $4e20: $73
    ld l, $01                                     ; $4e21: $2e $01
    ld d, a                                       ; $4e23: $57
    ld h, c                                       ; $4e24: $61
    ld l, [hl]                                    ; $4e25: $6e
    ld [hl], h                                    ; $4e26: $74
    jr nz, jr_01c_4e9d                            ; $4e27: $20 $74

jr_01c_4e29:
    ld l, a                                       ; $4e29: $6f
    jr nz, jr_01c_4e9f                            ; $4e2a: $20 $73

    ld h, l                                       ; $4e2c: $65
    ld h, l                                       ; $4e2d: $65

jr_01c_4e2e:
    ccf                                           ; $4e2e: $3f
    nop                                           ; $4e2f: $00
    ld c, c                                       ; $4e30: $49
    ld [hl], h                                    ; $4e31: $74

jr_01c_4e32:
    jr nz, @+$63                                  ; $4e32: $20 $61

    ld [hl], b                                    ; $4e34: $70
    ld [hl], b                                    ; $4e35: $70
    ld l, h                                       ; $4e36: $6c
    ld l, c                                       ; $4e37: $69
    ld h, l                                       ; $4e38: $65
    ld [hl], e                                    ; $4e39: $73
    jr nz, jr_01c_4eb0                            ; $4e3a: $20 $74

    ld l, a                                       ; $4e3c: $6f
    jr nz, @+$63                                  ; $4e3d: $20 $61

    ld l, [hl]                                    ; $4e3f: $6e
    ld a, c                                       ; $4e40: $79
    ld bc, $6873                                  ; $4e41: $01 $73 $68
    ld l, a                                       ; $4e44: $6f
    ld [hl], h                                    ; $4e45: $74
    inc l                                         ; $4e46: $2c
    jr nz, @+$64                                  ; $4e47: $20 $62

    ld [hl], l                                    ; $4e49: $75

jr_01c_4e4a:
    ld [hl], h                                    ; $4e4a: $74
    jr nz, jr_01c_4eaf                            ; $4e4b: $20 $62

    ld h, l                                       ; $4e4d: $65
    jr nz, @+$79                                  ; $4e4e: $20 $77

    ld h, c                                       ; $4e50: $61
    ld [hl], d                                    ; $4e51: $72
    ld a, c                                       ; $4e52: $79

jr_01c_4e53:
    ld bc, $666f                                  ; $4e53: $01 $6f $66
    jr nz, jr_01c_4ec0                            ; $4e56: $20 $68

    ld h, l                                       ; $4e58: $65
    ld l, c                                       ; $4e59: $69

jr_01c_4e5a:
    ld h, a                                       ; $4e5a: $67
    ld l, b                                       ; $4e5b: $68
    ld [hl], h                                    ; $4e5c: $74
    jr nz, jr_01c_4ece                            ; $4e5d: $20 $6f

    ld l, [hl]                                    ; $4e5f: $6e
    jr nz, jr_01c_4ece                            ; $4e60: $20 $6c

    ld l, a                                       ; $4e62: $6f

jr_01c_4e63:
    ld l, [hl]                                    ; $4e63: $6e
    ld h, a                                       ; $4e64: $67
    ld [bc], a                                    ; $4e65: $02
    ld h, h                                       ; $4e66: $64
    ld [hl], d                                    ; $4e67: $72
    ld l, c                                       ; $4e68: $69
    halt                                          ; $4e69: $76
    ld h, l                                       ; $4e6a: $65

jr_01c_4e6b:
    ld [hl], e                                    ; $4e6b: $73

jr_01c_4e6c:
    ld l, $20                                     ; $4e6c: $2e $20
    ld c, c                                       ; $4e6e: $49
    ld l, [hl]                                    ; $4e6f: $6e
    jr nz, jr_01c_4ed3                            ; $4e70: $20 $61

    jr nz, @+$6a                                  ; $4e72: $20 $68

    ld h, l                                       ; $4e74: $65
    ld h, c                                       ; $4e75: $61
    ld h, h                                       ; $4e76: $64

jr_01c_4e77:
    dec l                                         ; $4e77: $2d
    ld bc, $6977                                  ; $4e78: $01 $77 $69
    ld l, [hl]                                    ; $4e7b: $6e
    ld h, h                                       ; $4e7c: $64
    inc l                                         ; $4e7d: $2c
    jr nz, @+$22                                  ; $4e7e: $20 $20

    ld a, c                                       ; $4e80: $79
    ld l, a                                       ; $4e81: $6f
    ld [hl], l                                    ; $4e82: $75
    daa                                           ; $4e83: $27
    ld l, h                                       ; $4e84: $6c
    ld l, h                                       ; $4e85: $6c
    jr nz, jr_01c_4ef4                            ; $4e86: $20 $6c

    ld l, a                                       ; $4e88: $6f
    ld [hl], e                                    ; $4e89: $73
    ld h, l                                       ; $4e8a: $65
    ld bc, $6964                                  ; $4e8b: $01 $64 $69
    ld [hl], e                                    ; $4e8e: $73
    ld [hl], h                                    ; $4e8f: $74

jr_01c_4e90:
    ld h, c                                       ; $4e90: $61
    ld l, [hl]                                    ; $4e91: $6e
    ld h, e                                       ; $4e92: $63
    ld h, l                                       ; $4e93: $65
    ld l, $03                                     ; $4e94: $2e $03
    nop                                           ; $4e96: $00
    ld d, h                                       ; $4e97: $54
    ld l, b                                       ; $4e98: $68
    ld h, l                                       ; $4e99: $65
    jr nz, jr_01c_4f09                            ; $4e9a: $20 $6d

    ld l, a                                       ; $4e9c: $6f

jr_01c_4e9d:
    ld [hl], d                                    ; $4e9d: $72
    ld h, l                                       ; $4e9e: $65

jr_01c_4e9f:
    jr nz, jr_01c_4f14                            ; $4e9f: $20 $73

    ld [hl], h                                    ; $4ea1: $74
    ld [hl], d                                    ; $4ea2: $72
    ld h, c                                       ; $4ea3: $61
    ld [hl], h                                    ; $4ea4: $74
    ld h, l                                       ; $4ea5: $65
    ld h, a                                       ; $4ea6: $67
    ld l, c                                       ; $4ea7: $69
    ld h, e                                       ; $4ea8: $63
    ld bc, $6874                                  ; $4ea9: $01 $74 $68
    ld h, l                                       ; $4eac: $65
    jr nz, @+$65                                  ; $4ead: $20 $63

jr_01c_4eaf:
    ld l, a                                       ; $4eaf: $6f

jr_01c_4eb0:
    ld [hl], l                                    ; $4eb0: $75
    ld [hl], d                                    ; $4eb1: $72
    ld [hl], e                                    ; $4eb2: $73
    ld h, l                                       ; $4eb3: $65
    inc l                                         ; $4eb4: $2c
    jr nz, jr_01c_4f2b                            ; $4eb5: $20 $74

    ld l, b                                       ; $4eb7: $68
    ld h, l                                       ; $4eb8: $65
    ld bc, $6873                                  ; $4eb9: $01 $73 $68
    ld h, c                                       ; $4ebc: $61
    ld [hl], d                                    ; $4ebd: $72
    ld [hl], b                                    ; $4ebe: $70
    ld h, l                                       ; $4ebf: $65

jr_01c_4ec0:
    ld [hl], d                                    ; $4ec0: $72
    jr nz, jr_01c_4f3c                            ; $4ec1: $20 $79

    ld l, a                                       ; $4ec3: $6f
    ld [hl], l                                    ; $4ec4: $75
    ld [hl], d                                    ; $4ec5: $72
    jr nz, jr_01c_4f29                            ; $4ec6: $20 $61

    ld l, c                                       ; $4ec8: $69
    ld l, l                                       ; $4ec9: $6d
    ld [bc], a                                    ; $4eca: $02
    ld [hl], e                                    ; $4ecb: $73
    ld l, b                                       ; $4ecc: $68
    ld l, a                                       ; $4ecd: $6f

jr_01c_4ece:
    ld [hl], l                                    ; $4ece: $75
    ld l, h                                       ; $4ecf: $6c
    ld h, h                                       ; $4ed0: $64
    jr nz, jr_01c_4f35                            ; $4ed1: $20 $62

jr_01c_4ed3:
    ld h, l                                       ; $4ed3: $65
    jr nz, jr_01c_4f45                            ; $4ed4: $20 $6f

    ld l, [hl]                                    ; $4ed6: $6e
    jr nz, jr_01c_4f4d                            ; $4ed7: $20 $74

    ld l, b                                       ; $4ed9: $68
    ld h, l                                       ; $4eda: $65
    ld bc, $6574                                  ; $4edb: $01 $74 $65
    ld h, l                                       ; $4ede: $65
    jr nz, jr_01c_4f54                            ; $4edf: $20 $73

    ld l, b                                       ; $4ee1: $68
    ld l, a                                       ; $4ee2: $6f
    ld [hl], h                                    ; $4ee3: $74
    ld l, $20                                     ; $4ee4: $2e $20
    ld b, l                                       ; $4ee6: $45
    halt                                          ; $4ee7: $76
    ld h, l                                       ; $4ee8: $65
    ld l, [hl]                                    ; $4ee9: $6e
    jr nz, @+$6b                                  ; $4eea: $20 $69

    ld h, [hl]                                    ; $4eec: $66
    ld bc, $6874                                  ; $4eed: $01 $74 $68
    ld h, l                                       ; $4ef0: $65
    jr nz, jr_01c_4f59                            ; $4ef1: $20 $66

    ld h, c                                       ; $4ef3: $61

jr_01c_4ef4:
    ld l, c                                       ; $4ef4: $69
    ld [hl], d                                    ; $4ef5: $72
    ld [hl], a                                    ; $4ef6: $77
    ld h, c                                       ; $4ef7: $61
    ld a, c                                       ; $4ef8: $79
    jr nz, jr_01c_4f6e                            ; $4ef9: $20 $73

    ld h, l                                       ; $4efb: $65
    ld h, l                                       ; $4efc: $65
    ld l, l                                       ; $4efd: $6d
    ld [hl], e                                    ; $4efe: $73
    ld [bc], a                                    ; $4eff: $02
    ld l, a                                       ; $4f00: $6f
    ld [hl], b                                    ; $4f01: $70
    ld h, l                                       ; $4f02: $65
    ld l, [hl]                                    ; $4f03: $6e
    inc l                                         ; $4f04: $2c
    jr nz, @+$7b                                  ; $4f05: $20 $79

    ld l, a                                       ; $4f07: $6f
    ld [hl], l                                    ; $4f08: $75

jr_01c_4f09:
    jr nz, jr_01c_4f73                            ; $4f09: $20 $68

    ld h, c                                       ; $4f0b: $61
    halt                                          ; $4f0c: $76
    ld h, l                                       ; $4f0d: $65
    jr nz, jr_01c_4f84                            ; $4f0e: $20 $74

    ld l, a                                       ; $4f10: $6f
    ld bc, $6e6b                                  ; $4f11: $01 $6b $6e

jr_01c_4f14:
    ld l, a                                       ; $4f14: $6f
    ld [hl], a                                    ; $4f15: $77
    jr nz, @+$7b                                  ; $4f16: $20 $79

    ld l, a                                       ; $4f18: $6f
    ld [hl], l                                    ; $4f19: $75
    ld [hl], d                                    ; $4f1a: $72
    jr nz, @+$76                                  ; $4f1b: $20 $74

    ld h, c                                       ; $4f1d: $61
    ld [hl], d                                    ; $4f1e: $72
    ld h, a                                       ; $4f1f: $67
    ld h, l                                       ; $4f20: $65
    ld [hl], h                                    ; $4f21: $74
    ld l, $03                                     ; $4f22: $2e $03
    nop                                           ; $4f24: $00
    ld d, h                                       ; $4f25: $54
    ld l, b                                       ; $4f26: $68
    ld l, c                                       ; $4f27: $69
    ld l, [hl]                                    ; $4f28: $6e

jr_01c_4f29:
    ld l, e                                       ; $4f29: $6b
    ld l, c                                       ; $4f2a: $69

jr_01c_4f2b:
    ld l, [hl]                                    ; $4f2b: $6e
    ld h, a                                       ; $4f2c: $67
    jr nz, jr_01c_4f98                            ; $4f2d: $20 $69

    ld l, [hl]                                    ; $4f2f: $6e
    jr nz, jr_01c_4fa4                            ; $4f30: $20 $72

    ld h, l                                       ; $4f32: $65
    ld h, c                                       ; $4f33: $61
    ld l, h                                       ; $4f34: $6c

jr_01c_4f35:
    ld bc, $6574                                  ; $4f35: $01 $74 $65
    ld [hl], d                                    ; $4f38: $72
    ld l, l                                       ; $4f39: $6d
    ld [hl], e                                    ; $4f3a: $73
    inc l                                         ; $4f3b: $2c

jr_01c_4f3c:
    jr nz, jr_01c_4fab                            ; $4f3c: $20 $6d

    ld a, c                                       ; $4f3e: $79
    jr nz, jr_01c_4f73                            ; $4f3f: $20 $32

    ld l, [hl]                                    ; $4f41: $6e
    ld h, h                                       ; $4f42: $64
    jr nz, jr_01c_4fb8                            ; $4f43: $20 $73

jr_01c_4f45:
    ld l, b                                       ; $4f45: $68
    ld l, a                                       ; $4f46: $6f
    ld [hl], h                                    ; $4f47: $74
    ld bc, $6873                                  ; $4f48: $01 $73 $68
    ld l, a                                       ; $4f4b: $6f
    ld [hl], l                                    ; $4f4c: $75

jr_01c_4f4d:
    ld l, h                                       ; $4f4d: $6c
    ld h, h                                       ; $4f4e: $64
    jr nz, jr_01c_4fbd                            ; $4f4f: $20 $6c

    ld h, c                                       ; $4f51: $61
    ld l, [hl]                                    ; $4f52: $6e
    ld h, h                                       ; $4f53: $64

jr_01c_4f54:
    jr nz, jr_01c_4fbe                            ; $4f54: $20 $68

    ld h, l                                       ; $4f56: $65
    ld [hl], d                                    ; $4f57: $72
    ld h, l                                       ; $4f58: $65

jr_01c_4f59:
    ld l, $02                                     ; $4f59: $2e $02
    ld b, d                                       ; $4f5b: $42
    ld [hl], l                                    ; $4f5c: $75
    ld [hl], h                                    ; $4f5d: $74
    jr nz, jr_01c_4fc9                            ; $4f5e: $20 $69

    ld h, [hl]                                    ; $4f60: $66
    jr nz, jr_01c_4fac                            ; $4f61: $20 $49

    jr nz, @+$79                                  ; $4f63: $20 $77

    ld h, c                                       ; $4f65: $61
    ld l, [hl]                                    ; $4f66: $6e
    ld [hl], h                                    ; $4f67: $74
    jr nz, jr_01c_4fde                            ; $4f68: $20 $74

    ld l, a                                       ; $4f6a: $6f
    ld bc, $7375                                  ; $4f6b: $01 $75 $73

jr_01c_4f6e:
    ld h, l                                       ; $4f6e: $65
    jr nz, @+$76                                  ; $4f6f: $20 $74

    ld l, b                                       ; $4f71: $68
    ld l, c                                       ; $4f72: $69

jr_01c_4f73:
    ld [hl], e                                    ; $4f73: $73
    jr nz, jr_01c_4fea                            ; $4f74: $20 $74

    ld h, c                                       ; $4f76: $61
    ld l, c                                       ; $4f77: $69
    ld l, h                                       ; $4f78: $6c
    ld [hl], a                                    ; $4f79: $77
    ld l, c                                       ; $4f7a: $69
    ld l, [hl]                                    ; $4f7b: $6e
    ld h, h                                       ; $4f7c: $64
    inc l                                         ; $4f7d: $2c
    ld bc, $2049                                  ; $4f7e: $01 $49 $20
    ld [hl], e                                    ; $4f81: $73
    ld l, b                                       ; $4f82: $68
    ld l, a                                       ; $4f83: $6f

jr_01c_4f84:
    ld [hl], l                                    ; $4f84: $75
    ld l, h                                       ; $4f85: $6c
    ld h, h                                       ; $4f86: $64
    jr nz, jr_01c_4ff1                            ; $4f87: $20 $68

    ld l, c                                       ; $4f89: $69
    ld [hl], h                                    ; $4f8a: $74
    jr nz, jr_01c_4ff5                            ; $4f8b: $20 $68

    ld l, c                                       ; $4f8d: $69
    ld h, a                                       ; $4f8e: $67
    ld l, b                                       ; $4f8f: $68
    ld l, $03                                     ; $4f90: $2e $03
    nop                                           ; $4f92: $00
    ld b, [hl]                                    ; $4f93: $46
    ld l, c                                       ; $4f94: $69
    ld [hl], d                                    ; $4f95: $72
    ld [hl], e                                    ; $4f96: $73
    ld [hl], h                                    ; $4f97: $74

jr_01c_4f98:
    inc l                                         ; $4f98: $2c
    jr nz, jr_01c_4ffe                            ; $4f99: $20 $63

    ld l, b                                       ; $4f9b: $68
    ld l, a                                       ; $4f9c: $6f
    ld l, a                                       ; $4f9d: $6f
    ld [hl], e                                    ; $4f9e: $73
    ld h, l                                       ; $4f9f: $65
    ld bc, $2061                                  ; $4fa0: $01 $61 $20
    ld h, e                                       ; $4fa3: $63

jr_01c_4fa4:
    ld l, h                                       ; $4fa4: $6c
    ld [hl], l                                    ; $4fa5: $75
    ld h, d                                       ; $4fa6: $62
    ld l, $03                                     ; $4fa7: $2e $03
    nop                                           ; $4fa9: $00
    ld c, a                                       ; $4faa: $4f

jr_01c_4fab:
    ld l, [hl]                                    ; $4fab: $6e

jr_01c_4fac:
    jr nz, jr_01c_500f                            ; $4fac: $20 $61

    jr nz, jr_01c_4fe4                            ; $4fae: $20 $34

    dec l                                         ; $4fb0: $2d
    jr nz, jr_01c_5022                            ; $4fb1: $20 $6f

    ld [hl], d                                    ; $4fb3: $72
    jr nz, jr_01c_4feb                            ; $4fb4: $20 $35

    dec l                                         ; $4fb6: $2d
    ld [hl], b                                    ; $4fb7: $70

jr_01c_4fb8:
    ld h, c                                       ; $4fb8: $61
    ld [hl], d                                    ; $4fb9: $72
    ld bc, $6f68                                  ; $4fba: $01 $68 $6f

jr_01c_4fbd:
    ld l, h                                       ; $4fbd: $6c

jr_01c_4fbe:
    ld h, l                                       ; $4fbe: $65
    inc l                                         ; $4fbf: $2c
    jr nz, jr_01c_5023                            ; $4fc0: $20 $61

    jr nz, jr_01c_4ff5                            ; $4fc2: $20 $31

    ld d, a                                       ; $4fc4: $57
    jr nz, jr_01c_503a                            ; $4fc5: $20 $73

    ld l, b                                       ; $4fc7: $68
    ld l, a                                       ; $4fc8: $6f

jr_01c_4fc9:
    ld [hl], l                                    ; $4fc9: $75
    ld l, h                                       ; $4fca: $6c
    ld h, h                                       ; $4fcb: $64
    ld bc, $6562                                  ; $4fcc: $01 $62 $65
    jr nz, jr_01c_5037                            ; $4fcf: $20 $66

    ld l, c                                       ; $4fd1: $69
    ld l, [hl]                                    ; $4fd2: $6e
    ld h, l                                       ; $4fd3: $65
    jr nz, jr_01c_503c                            ; $4fd4: $20 $66

    ld l, a                                       ; $4fd6: $6f
    ld [hl], d                                    ; $4fd7: $72
    jr nz, @+$6f                                  ; $4fd8: $20 $6d

    ld h, l                                       ; $4fda: $65
    ld l, $03                                     ; $4fdb: $2e $03
    nop                                           ; $4fdd: $00

jr_01c_4fde:
    ld c, c                                       ; $4fde: $49
    jr nz, jr_01c_5048                            ; $4fdf: $20 $67

    ld h, c                                       ; $4fe1: $61
    ld l, c                                       ; $4fe2: $69
    ld l, [hl]                                    ; $4fe3: $6e

jr_01c_4fe4:
    jr nz, jr_01c_504a                            ; $4fe4: $20 $64

    ld l, c                                       ; $4fe6: $69
    ld [hl], e                                    ; $4fe7: $73
    ld [hl], h                                    ; $4fe8: $74
    ld h, c                                       ; $4fe9: $61

jr_01c_4fea:
    ld l, [hl]                                    ; $4fea: $6e

jr_01c_4feb:
    ld h, e                                       ; $4feb: $63
    ld h, l                                       ; $4fec: $65
    jr nz, jr_01c_5066                            ; $4fed: $20 $77

    ld l, c                                       ; $4fef: $69
    ld [hl], h                                    ; $4ff0: $74

jr_01c_4ff1:
    ld l, b                                       ; $4ff1: $68
    ld bc, $2061                                  ; $4ff2: $01 $61 $20

jr_01c_4ff5:
    ld [hl], b                                    ; $4ff5: $70
    ld l, a                                       ; $4ff6: $6f
    ld [hl], a                                    ; $4ff7: $77
    ld h, l                                       ; $4ff8: $65
    ld [hl], d                                    ; $4ff9: $72
    jr nz, @+$75                                  ; $4ffa: $20 $73

    ld l, b                                       ; $4ffc: $68
    ld l, a                                       ; $4ffd: $6f

jr_01c_4ffe:
    ld [hl], h                                    ; $4ffe: $74
    inc l                                         ; $4fff: $2c
    jr nz, jr_01c_5075                            ; $5000: $20 $73

    ld l, a                                       ; $5002: $6f
    jr nz, jr_01c_504e                            ; $5003: $20 $49

    daa                                           ; $5005: $27
    ld l, h                                       ; $5006: $6c
    ld l, h                                       ; $5007: $6c
    ld bc, $7375                                  ; $5008: $01 $75 $73
    ld h, l                                       ; $500b: $65
    jr nz, @+$76                                  ; $500c: $20 $74

    ld l, b                                       ; $500e: $68

jr_01c_500f:
    ld h, c                                       ; $500f: $61
    ld [hl], h                                    ; $5010: $74
    ld l, $03                                     ; $5011: $2e $03
    nop                                           ; $5013: $00
    ld d, h                                       ; $5014: $54
    ld l, b                                       ; $5015: $68
    ld l, c                                       ; $5016: $69
    ld [hl], e                                    ; $5017: $73
    jr nz, jr_01c_5083                            ; $5018: $20 $69

    ld [hl], e                                    ; $501a: $73
    jr nz, jr_01c_508f                            ; $501b: $20 $72

    ld h, l                                       ; $501d: $65
    ld h, c                                       ; $501e: $61
    ld l, h                                       ; $501f: $6c
    jr nz, @+$72                                  ; $5020: $20 $70

jr_01c_5022:
    ld [hl], d                                    ; $5022: $72

jr_01c_5023:
    ld h, c                                       ; $5023: $61
    ld h, e                                       ; $5024: $63
    ld [hl], h                                    ; $5025: $74
    ld l, c                                       ; $5026: $69
    ld h, e                                       ; $5027: $63
    ld h, l                                       ; $5028: $65
    ld l, $01                                     ; $5029: $2e $01
    ld d, a                                       ; $502b: $57
    ld h, c                                       ; $502c: $61
    ld l, [hl]                                    ; $502d: $6e
    ld [hl], h                                    ; $502e: $74
    jr nz, jr_01c_50a5                            ; $502f: $20 $74

    ld l, a                                       ; $5031: $6f
    jr nz, jr_01c_50a8                            ; $5032: $20 $74

    ld [hl], d                                    ; $5034: $72
    ld a, c                                       ; $5035: $79
    ccf                                           ; $5036: $3f

jr_01c_5037:
    nop                                           ; $5037: $00
    ld b, [hl]                                    ; $5038: $46
    ld l, c                                       ; $5039: $69

jr_01c_503a:
    ld [hl], d                                    ; $503a: $72
    ld [hl], e                                    ; $503b: $73

jr_01c_503c:
    ld [hl], h                                    ; $503c: $74
    inc l                                         ; $503d: $2c
    jr nz, jr_01c_50a3                            ; $503e: $20 $63

    ld l, b                                       ; $5040: $68
    ld l, a                                       ; $5041: $6f
    ld l, a                                       ; $5042: $6f
    ld [hl], e                                    ; $5043: $73
    ld h, l                                       ; $5044: $65
    ld bc, $2061                                  ; $5045: $01 $61 $20

jr_01c_5048:
    ld h, e                                       ; $5048: $63
    ld l, h                                       ; $5049: $6c

jr_01c_504a:
    ld [hl], l                                    ; $504a: $75
    ld h, d                                       ; $504b: $62
    ld l, $03                                     ; $504c: $2e $03

jr_01c_504e:
    nop                                           ; $504e: $00
    ld c, [hl]                                    ; $504f: $4e
    ld h, l                                       ; $5050: $65
    ld a, b                                       ; $5051: $78
    ld [hl], h                                    ; $5052: $74
    inc l                                         ; $5053: $2c
    jr nz, jr_01c_50b9                            ; $5054: $20 $63

    ld l, b                                       ; $5056: $68
    ld l, a                                       ; $5057: $6f
    ld l, a                                       ; $5058: $6f
    ld [hl], e                                    ; $5059: $73
    ld h, l                                       ; $505a: $65
    ld bc, $2061                                  ; $505b: $01 $61 $20
    ld [hl], b                                    ; $505e: $70
    ld l, a                                       ; $505f: $6f
    ld [hl], a                                    ; $5060: $77
    ld h, l                                       ; $5061: $65
    ld [hl], d                                    ; $5062: $72
    jr nz, jr_01c_50d8                            ; $5063: $20 $73

    ld l, b                                       ; $5065: $68

jr_01c_5066:
    ld l, a                                       ; $5066: $6f
    ld [hl], h                                    ; $5067: $74
    ld l, $03                                     ; $5068: $2e $03
    nop                                           ; $506a: $00
    ld c, a                                       ; $506b: $4f
    ld c, e                                       ; $506c: $4b
    inc l                                         ; $506d: $2c
    jr nz, jr_01c_50d7                            ; $506e: $20 $67

    ld l, c                                       ; $5070: $69
    halt                                          ; $5071: $76
    ld h, l                                       ; $5072: $65
    jr nz, @+$6b                                  ; $5073: $20 $69

jr_01c_5075:
    ld [hl], h                                    ; $5075: $74
    jr nz, jr_01c_50d9                            ; $5076: $20 $61

    jr nz, jr_01c_50ee                            ; $5078: $20 $74

    ld [hl], d                                    ; $507a: $72
    ld a, c                                       ; $507b: $79
    ld hl, $0003                                  ; $507c: $21 $03 $00
    ld c, c                                       ; $507f: $49
    ld h, [hl]                                    ; $5080: $66
    jr nz, jr_01c_50fc                            ; $5081: $20 $79

jr_01c_5083:
    ld l, a                                       ; $5083: $6f
    ld [hl], l                                    ; $5084: $75
    daa                                           ; $5085: $27
    ld [hl], d                                    ; $5086: $72
    ld h, l                                       ; $5087: $65
    jr nz, jr_01c_50f8                            ; $5088: $20 $6e

    ld l, a                                       ; $508a: $6f
    ld [hl], h                                    ; $508b: $74
    jr nz, jr_01c_5103                            ; $508c: $20 $75

    ld [hl], e                                    ; $508e: $73

jr_01c_508f:
    ld h, l                                       ; $508f: $65
    ld h, h                                       ; $5090: $64
    ld bc, $6f74                                  ; $5091: $01 $74 $6f
    jr nz, jr_01c_5106                            ; $5094: $20 $70

    ld l, a                                       ; $5096: $6f
    ld [hl], a                                    ; $5097: $77
    ld h, l                                       ; $5098: $65
    ld [hl], d                                    ; $5099: $72
    jr nz, jr_01c_5110                            ; $509a: $20 $74

    ld h, l                                       ; $509c: $65
    ld h, l                                       ; $509d: $65
    jr nz, jr_01c_5113                            ; $509e: $20 $73

    ld l, b                                       ; $50a0: $68
    ld l, a                                       ; $50a1: $6f
    ld [hl], h                                    ; $50a2: $74

jr_01c_50a3:
    ld [hl], e                                    ; $50a3: $73
    inc l                                         ; $50a4: $2c

jr_01c_50a5:
    ld bc, $7469                                  ; $50a5: $01 $69 $74

jr_01c_50a8:
    jr nz, @+$76                                  ; $50a8: $20 $74

    ld h, c                                       ; $50aa: $61
    ld l, e                                       ; $50ab: $6b
    ld h, l                                       ; $50ac: $65
    ld [hl], e                                    ; $50ad: $73
    jr nz, jr_01c_5120                            ; $50ae: $20 $70

    ld [hl], d                                    ; $50b0: $72
    ld h, c                                       ; $50b1: $61
    ld h, e                                       ; $50b2: $63
    ld [hl], h                                    ; $50b3: $74
    ld l, c                                       ; $50b4: $69
    ld h, e                                       ; $50b5: $63
    ld h, l                                       ; $50b6: $65
    ld l, $03                                     ; $50b7: $2e $03

jr_01c_50b9:
    nop                                           ; $50b9: $00
    ld c, c                                       ; $50ba: $49
    jr nz, @+$76                                  ; $50bb: $20 $74

    ld l, b                                       ; $50bd: $68
    ld l, c                                       ; $50be: $69
    ld l, [hl]                                    ; $50bf: $6e
    ld l, e                                       ; $50c0: $6b
    jr nz, jr_01c_5137                            ; $50c1: $20 $74

    ld l, b                                       ; $50c3: $68
    ld h, c                                       ; $50c4: $61
    ld [hl], h                                    ; $50c5: $74
    daa                                           ; $50c6: $27
    ld [hl], e                                    ; $50c7: $73
    jr nz, jr_01c_5119                            ; $50c8: $20 $4f

    ld c, e                                       ; $50ca: $4b
    ld bc, $6f6e                                  ; $50cb: $01 $6e $6f
    ld [hl], d                                    ; $50ce: $72
    ld l, l                                       ; $50cf: $6d
    ld h, c                                       ; $50d0: $61
    ld l, h                                       ; $50d1: $6c
    ld l, h                                       ; $50d2: $6c
    ld a, c                                       ; $50d3: $79
    inc l                                         ; $50d4: $2c
    jr nz, @+$64                                  ; $50d5: $20 $62

jr_01c_50d7:
    ld [hl], l                                    ; $50d7: $75

jr_01c_50d8:
    ld [hl], h                                    ; $50d8: $74

jr_01c_50d9:
    jr nz, jr_01c_514f                            ; $50d9: $20 $74

    ld [hl], d                                    ; $50db: $72
    ld a, c                                       ; $50dc: $79
    ld bc, $6f66                                  ; $50dd: $01 $66 $6f
    ld [hl], d                                    ; $50e0: $72
    jr nz, jr_01c_5150                            ; $50e1: $20 $6d

    ld l, a                                       ; $50e3: $6f
    ld [hl], d                                    ; $50e4: $72
    ld h, l                                       ; $50e5: $65
    jr nz, jr_01c_5149                            ; $50e6: $20 $61

    ld h, e                                       ; $50e8: $63
    ld h, e                                       ; $50e9: $63
    ld [hl], l                                    ; $50ea: $75
    ld [hl], d                                    ; $50eb: $72
    ld h, c                                       ; $50ec: $61
    ld h, e                                       ; $50ed: $63

jr_01c_50ee:
    ld a, c                                       ; $50ee: $79
    ld l, $03                                     ; $50ef: $2e $03
    nop                                           ; $50f1: $00
    ld d, a                                       ; $50f2: $57
    ld c, a                                       ; $50f3: $4f
    ld d, a                                       ; $50f4: $57
    ld hl, $4120                                  ; $50f5: $21 $20 $41

jr_01c_50f8:
    jr nz, jr_01c_516a                            ; $50f8: $20 $70

    ld h, l                                       ; $50fa: $65
    ld [hl], d                                    ; $50fb: $72

jr_01c_50fc:
    ld h, [hl]                                    ; $50fc: $66
    ld h, l                                       ; $50fd: $65
    ld h, e                                       ; $50fe: $63
    ld [hl], h                                    ; $50ff: $74
    ld bc, $6f70                                  ; $5100: $01 $70 $6f

jr_01c_5103:
    ld [hl], a                                    ; $5103: $77
    ld h, l                                       ; $5104: $65
    ld [hl], d                                    ; $5105: $72

jr_01c_5106:
    jr nz, jr_01c_517b                            ; $5106: $20 $73

    ld l, b                                       ; $5108: $68
    ld l, a                                       ; $5109: $6f
    ld [hl], h                                    ; $510a: $74
    ld hl, $5901                                  ; $510b: $21 $01 $59
    ld l, a                                       ; $510e: $6f
    ld [hl], l                                    ; $510f: $75

jr_01c_5110:
    daa                                           ; $5110: $27
    ld [hl], d                                    ; $5111: $72
    ld h, l                                       ; $5112: $65

jr_01c_5113:
    jr nz, @+$76                                  ; $5113: $20 $74

    ld h, c                                       ; $5115: $61
    ld l, h                                       ; $5116: $6c
    ld h, l                                       ; $5117: $65
    ld l, [hl]                                    ; $5118: $6e

jr_01c_5119:
    ld [hl], h                                    ; $5119: $74
    ld h, l                                       ; $511a: $65
    ld h, h                                       ; $511b: $64
    ld hl, $0003                                  ; $511c: $21 $03 $00
    ld b, [hl]                                    ; $511f: $46

jr_01c_5120:
    ld l, a                                       ; $5120: $6f
    ld [hl], d                                    ; $5121: $72
    jr nz, jr_01c_5185                            ; $5122: $20 $61

    jr nz, jr_01c_519d                            ; $5124: $20 $77

    ld l, a                                       ; $5126: $6f
    ld l, a                                       ; $5127: $6f
    ld h, h                                       ; $5128: $64
    jr nz, jr_01c_519e                            ; $5129: $20 $73

    ld l, b                                       ; $512b: $68
    ld l, a                                       ; $512c: $6f
    ld [hl], h                                    ; $512d: $74
    inc l                                         ; $512e: $2c
    ld bc, $7270                                  ; $512f: $01 $70 $72
    ld h, c                                       ; $5132: $61
    ld h, e                                       ; $5133: $63
    ld [hl], h                                    ; $5134: $74
    ld l, c                                       ; $5135: $69
    ld h, e                                       ; $5136: $63

jr_01c_5137:
    ld h, l                                       ; $5137: $65
    jr nz, jr_01c_51b1                            ; $5138: $20 $77

    ld l, c                                       ; $513a: $69
    ld [hl], h                                    ; $513b: $74
    ld l, b                                       ; $513c: $68
    jr nz, jr_01c_51ad                            ; $513d: $20 $6e

    ld l, a                                       ; $513f: $6f
    ld [hl], d                                    ; $5140: $72
    ld l, l                                       ; $5141: $6d
    ld h, c                                       ; $5142: $61
    ld l, h                                       ; $5143: $6c
    ld bc, $6f70                                  ; $5144: $01 $70 $6f
    ld [hl], a                                    ; $5147: $77
    ld h, l                                       ; $5148: $65

jr_01c_5149:
    ld [hl], d                                    ; $5149: $72
    jr nz, @+$68                                  ; $514a: $20 $66

    ld l, c                                       ; $514c: $69
    ld [hl], d                                    ; $514d: $72
    ld [hl], e                                    ; $514e: $73

jr_01c_514f:
    ld [hl], h                                    ; $514f: $74

jr_01c_5150:
    ld l, $02                                     ; $5150: $2e $02
    ld c, a                                       ; $5152: $4f
    ld l, [hl]                                    ; $5153: $6e
    ld h, e                                       ; $5154: $63
    ld h, l                                       ; $5155: $65
    jr nz, jr_01c_51d1                            ; $5156: $20 $79

    ld l, a                                       ; $5158: $6f
    ld [hl], l                                    ; $5159: $75
    jr nz, jr_01c_51bf                            ; $515a: $20 $63

    ld h, c                                       ; $515c: $61
    ld l, [hl]                                    ; $515d: $6e
    jr nz, jr_01c_51c4                            ; $515e: $20 $64

    ld l, a                                       ; $5160: $6f
    ld bc, $6874                                  ; $5161: $01 $74 $68
    ld l, a                                       ; $5164: $6f
    ld [hl], e                                    ; $5165: $73
    ld h, l                                       ; $5166: $65
    inc l                                         ; $5167: $2c
    jr nz, @+$79                                  ; $5168: $20 $77

jr_01c_516a:
    ld l, a                                       ; $516a: $6f
    ld [hl], d                                    ; $516b: $72
    ld l, e                                       ; $516c: $6b
    jr nz, jr_01c_51de                            ; $516d: $20 $6f

    ld l, [hl]                                    ; $516f: $6e
    jr nz, jr_01c_51eb                            ; $5170: $20 $79

    ld l, a                                       ; $5172: $6f
    ld [hl], l                                    ; $5173: $75
    ld [hl], d                                    ; $5174: $72
    ld bc, $6f70                                  ; $5175: $01 $70 $6f
    ld [hl], a                                    ; $5178: $77
    ld h, l                                       ; $5179: $65
    ld [hl], d                                    ; $517a: $72

jr_01c_517b:
    jr nz, jr_01c_51f0                            ; $517b: $20 $73

    ld l, b                                       ; $517d: $68
    ld l, a                                       ; $517e: $6f
    ld [hl], h                                    ; $517f: $74
    ld [hl], e                                    ; $5180: $73
    ld l, $03                                     ; $5181: $2e $03
    nop                                           ; $5183: $00
    ld c, b                                       ; $5184: $48

jr_01c_5185:
    ld h, l                                       ; $5185: $65
    ld a, c                                       ; $5186: $79
    inc l                                         ; $5187: $2c
    jr nz, jr_01c_51d8                            ; $5188: $20 $4e

    ld c, c                                       ; $518a: $49
    ld b, e                                       ; $518b: $43
    ld b, l                                       ; $518c: $45
    jr nz, jr_01c_51e2                            ; $518d: $20 $53

    ld c, b                                       ; $518f: $48
    ld c, a                                       ; $5190: $4f
    ld d, h                                       ; $5191: $54
    ld hl, $5901                                  ; $5192: $21 $01 $59
    ld l, a                                       ; $5195: $6f
    ld [hl], l                                    ; $5196: $75
    daa                                           ; $5197: $27
    halt                                          ; $5198: $76
    ld h, l                                       ; $5199: $65
    jr nz, jr_01c_5203                            ; $519a: $20 $67

    ld l, a                                       ; $519c: $6f

jr_01c_519d:
    ld [hl], h                                    ; $519d: $74

jr_01c_519e:
    jr nz, jr_01c_5214                            ; $519e: $20 $74

    ld h, c                                       ; $51a0: $61
    ld l, h                                       ; $51a1: $6c
    ld h, l                                       ; $51a2: $65
    ld l, [hl]                                    ; $51a3: $6e
    ld [hl], h                                    ; $51a4: $74
    ld hl, $0003                                  ; $51a5: $21 $03 $00
    ld c, c                                       ; $51a8: $49
    daa                                           ; $51a9: $27
    ld l, l                                       ; $51aa: $6d
    jr nz, jr_01c_5211                            ; $51ab: $20 $64

jr_01c_51ad:
    ld l, a                                       ; $51ad: $6f
    ld l, c                                       ; $51ae: $69
    ld l, [hl]                                    ; $51af: $6e
    ld h, a                                       ; $51b0: $67

jr_01c_51b1:
    jr nz, jr_01c_521c                            ; $51b1: $20 $69

    ld [hl], d                                    ; $51b3: $72
    ld l, a                                       ; $51b4: $6f
    ld l, [hl]                                    ; $51b5: $6e
    jr nz, jr_01c_522b                            ; $51b6: $20 $73

    ld l, b                                       ; $51b8: $68
    ld l, a                                       ; $51b9: $6f
    ld [hl], h                                    ; $51ba: $74
    ld [hl], e                                    ; $51bb: $73
    ld l, $01                                     ; $51bc: $2e $01
    ld d, a                                       ; $51be: $57

jr_01c_51bf:
    ld h, c                                       ; $51bf: $61
    ld l, [hl]                                    ; $51c0: $6e
    ld [hl], h                                    ; $51c1: $74
    jr nz, jr_01c_5238                            ; $51c2: $20 $74

jr_01c_51c4:
    ld l, a                                       ; $51c4: $6f
    jr nz, jr_01c_523e                            ; $51c5: $20 $77

    ld h, c                                       ; $51c7: $61
    ld [hl], h                                    ; $51c8: $74
    ld h, e                                       ; $51c9: $63
    ld l, b                                       ; $51ca: $68
    jr nz, jr_01c_523a                            ; $51cb: $20 $6d

    ld h, l                                       ; $51cd: $65
    ld bc, $7270                                  ; $51ce: $01 $70 $72

jr_01c_51d1:
    ld h, c                                       ; $51d1: $61
    ld h, e                                       ; $51d2: $63
    ld [hl], h                                    ; $51d3: $74
    ld l, c                                       ; $51d4: $69
    ld h, e                                       ; $51d5: $63
    ld h, l                                       ; $51d6: $65
    ccf                                           ; $51d7: $3f

jr_01c_51d8:
    nop                                           ; $51d8: $00
    ld b, c                                       ; $51d9: $41
    ld l, [hl]                                    ; $51da: $6e
    jr nz, @+$6b                                  ; $51db: $20 $69

    ld [hl], d                                    ; $51dd: $72

jr_01c_51de:
    ld l, a                                       ; $51de: $6f
    ld l, [hl]                                    ; $51df: $6e
    jr nz, jr_01c_524b                            ; $51e0: $20 $69

jr_01c_51e2:
    ld [hl], e                                    ; $51e2: $73
    jr nz, @+$63                                  ; $51e3: $20 $61

    ld l, [hl]                                    ; $51e5: $6e
    ld bc, $666f                                  ; $51e6: $01 $6f $66
    ld h, [hl]                                    ; $51e9: $66
    ld h, l                                       ; $51ea: $65

jr_01c_51eb:
    ld l, [hl]                                    ; $51eb: $6e
    ld [hl], e                                    ; $51ec: $73
    ld l, c                                       ; $51ed: $69
    halt                                          ; $51ee: $76
    ld h, l                                       ; $51ef: $65

jr_01c_51f0:
    jr nz, jr_01c_5255                            ; $51f0: $20 $63

    ld l, h                                       ; $51f2: $6c
    ld [hl], l                                    ; $51f3: $75
    ld h, d                                       ; $51f4: $62
    jr nz, jr_01c_525d                            ; $51f5: $20 $66

    ld l, a                                       ; $51f7: $6f
    ld [hl], d                                    ; $51f8: $72
    ld bc, $7461                                  ; $51f9: $01 $61 $74
    ld [hl], h                                    ; $51fc: $74
    ld h, c                                       ; $51fd: $61
    ld h, e                                       ; $51fe: $63
    ld l, e                                       ; $51ff: $6b
    ld l, c                                       ; $5200: $69
    ld l, [hl]                                    ; $5201: $6e
    ld h, a                                       ; $5202: $67

jr_01c_5203:
    jr nz, jr_01c_5279                            ; $5203: $20 $74

    ld l, b                                       ; $5205: $68
    ld h, l                                       ; $5206: $65
    jr nz, @+$69                                  ; $5207: $20 $67

    ld [hl], d                                    ; $5209: $72
    ld h, l                                       ; $520a: $65
    ld h, l                                       ; $520b: $65
    ld l, [hl]                                    ; $520c: $6e
    ld l, $02                                     ; $520d: $2e $02
    ld d, e                                       ; $520f: $53
    ld l, b                                       ; $5210: $68

jr_01c_5211:
    ld l, a                                       ; $5211: $6f
    ld [hl], d                                    ; $5212: $72
    ld [hl], h                                    ; $5213: $74

jr_01c_5214:
    ld h, l                                       ; $5214: $65
    ld [hl], d                                    ; $5215: $72
    jr nz, jr_01c_5281                            ; $5216: $20 $69

    ld [hl], d                                    ; $5218: $72
    ld l, a                                       ; $5219: $6f
    ld l, [hl]                                    ; $521a: $6e
    ld [hl], e                                    ; $521b: $73

jr_01c_521c:
    jr nz, jr_01c_527f                            ; $521c: $20 $61

    ld [hl], d                                    ; $521e: $72
    ld h, l                                       ; $521f: $65
    ld bc, $6f6d                                  ; $5220: $01 $6d $6f
    ld [hl], d                                    ; $5223: $72
    ld h, l                                       ; $5224: $65
    jr nz, @+$63                                  ; $5225: $20 $61

    ld h, e                                       ; $5227: $63
    ld h, e                                       ; $5228: $63
    ld [hl], l                                    ; $5229: $75
    ld [hl], d                                    ; $522a: $72

jr_01c_522b:
    ld h, c                                       ; $522b: $61
    ld [hl], h                                    ; $522c: $74
    ld h, l                                       ; $522d: $65
    jr nz, @+$68                                  ; $522e: $20 $66

    ld l, a                                       ; $5230: $6f
    ld [hl], d                                    ; $5231: $72
    ld bc, $6e61                                  ; $5232: $01 $61 $6e
    jr nz, jr_01c_529c                            ; $5235: $20 $65

    ld h, c                                       ; $5237: $61

jr_01c_5238:
    ld [hl], e                                    ; $5238: $73
    ld l, c                                       ; $5239: $69

jr_01c_523a:
    ld h, l                                       ; $523a: $65
    ld [hl], d                                    ; $523b: $72
    jr nz, jr_01c_529f                            ; $523c: $20 $61

jr_01c_523e:
    ld [hl], b                                    ; $523e: $70
    ld [hl], b                                    ; $523f: $70
    ld [hl], d                                    ; $5240: $72
    ld l, a                                       ; $5241: $6f
    ld h, c                                       ; $5242: $61
    ld h, e                                       ; $5243: $63
    ld l, b                                       ; $5244: $68
    ld l, $03                                     ; $5245: $2e $03
    nop                                           ; $5247: $00
    ld d, h                                       ; $5248: $54
    ld l, b                                       ; $5249: $68
    ld h, l                                       ; $524a: $65

jr_01c_524b:
    jr nz, jr_01c_527e                            ; $524b: $20 $31

    ld c, c                                       ; $524d: $49
    inc l                                         ; $524e: $2c
    jr nz, jr_01c_5283                            ; $524f: $20 $32

    ld c, c                                       ; $5251: $49
    jr nz, jr_01c_52b5                            ; $5252: $20 $61

    ld l, [hl]                                    ; $5254: $6e

jr_01c_5255:
    ld h, h                                       ; $5255: $64
    jr nz, @+$79                                  ; $5256: $20 $77

    ld h, l                                       ; $5258: $65
    ld h, h                                       ; $5259: $64
    ld h, a                                       ; $525a: $67
    ld h, l                                       ; $525b: $65
    ld [hl], e                                    ; $525c: $73

jr_01c_525d:
    ld bc, $7261                                  ; $525d: $01 $61 $72
    ld h, l                                       ; $5260: $65
    jr nz, jr_01c_52d8                            ; $5261: $20 $75

    ld [hl], e                                    ; $5263: $73
    ld h, l                                       ; $5264: $65
    ld h, h                                       ; $5265: $64
    jr nz, jr_01c_52ca                            ; $5266: $20 $62

    ld h, c                                       ; $5268: $61
    ld [hl], e                                    ; $5269: $73
    ld h, l                                       ; $526a: $65
    ld h, h                                       ; $526b: $64
    jr nz, jr_01c_52dd                            ; $526c: $20 $6f

    ld l, [hl]                                    ; $526e: $6e
    ld bc, $6874                                  ; $526f: $01 $74 $68
    ld h, l                                       ; $5272: $65
    ld l, c                                       ; $5273: $69
    ld [hl], d                                    ; $5274: $72
    jr nz, @+$66                                  ; $5275: $20 $64

    ld l, c                                       ; $5277: $69
    ld [hl], e                                    ; $5278: $73

jr_01c_5279:
    ld [hl], h                                    ; $5279: $74
    ld h, c                                       ; $527a: $61
    ld l, [hl]                                    ; $527b: $6e
    ld h, e                                       ; $527c: $63
    ld h, l                                       ; $527d: $65

jr_01c_527e:
    ld [hl], e                                    ; $527e: $73

jr_01c_527f:
    ld l, $03                                     ; $527f: $2e $03

jr_01c_5281:
    nop                                           ; $5281: $00
    ld c, c                                       ; $5282: $49

jr_01c_5283:
    ld [hl], d                                    ; $5283: $72
    ld l, a                                       ; $5284: $6f
    ld l, [hl]                                    ; $5285: $6e
    ld [hl], e                                    ; $5286: $73
    jr nz, jr_01c_5300                            ; $5287: $20 $77

    ld l, c                                       ; $5289: $69
    ld [hl], h                                    ; $528a: $74
    ld l, b                                       ; $528b: $68
    jr nz, jr_01c_52fa                            ; $528c: $20 $6c

    ld l, a                                       ; $528e: $6f
    ld h, [hl]                                    ; $528f: $66
    ld [hl], h                                    ; $5290: $74
    ld bc, $7261                                  ; $5291: $01 $61 $72
    ld h, l                                       ; $5294: $65
    jr nz, jr_01c_52fc                            ; $5295: $20 $65

    ld h, c                                       ; $5297: $61
    ld [hl], e                                    ; $5298: $73
    ld l, c                                       ; $5299: $69
    ld l, h                                       ; $529a: $6c
    ld a, c                                       ; $529b: $79

jr_01c_529c:
    jr nz, @+$63                                  ; $529c: $20 $61

    ld h, [hl]                                    ; $529e: $66

jr_01c_529f:
    ld h, [hl]                                    ; $529f: $66
    ld h, l                                       ; $52a0: $65
    ld h, e                                       ; $52a1: $63
    ld [hl], h                                    ; $52a2: $74
    dec l                                         ; $52a3: $2d
    ld bc, $6465                                  ; $52a4: $01 $65 $64
    jr nz, jr_01c_530b                            ; $52a7: $20 $62

    ld a, c                                       ; $52a9: $79
    jr nz, @+$79                                  ; $52aa: $20 $77

    ld l, c                                       ; $52ac: $69
    ld l, [hl]                                    ; $52ad: $6e
    ld h, h                                       ; $52ae: $64
    inc l                                         ; $52af: $2c
    jr nz, jr_01c_5325                            ; $52b0: $20 $73

    ld l, a                                       ; $52b2: $6f
    jr nz, @+$65                                  ; $52b3: $20 $63

jr_01c_52b5:
    ld l, h                                       ; $52b5: $6c
    ld [hl], l                                    ; $52b6: $75
    ld h, d                                       ; $52b7: $62
    ld [bc], a                                    ; $52b8: $02
    ld [hl], e                                    ; $52b9: $73
    ld h, l                                       ; $52ba: $65
    ld l, h                                       ; $52bb: $6c
    ld h, l                                       ; $52bc: $65
    ld h, e                                       ; $52bd: $63
    ld [hl], h                                    ; $52be: $74
    ld l, c                                       ; $52bf: $69
    ld l, a                                       ; $52c0: $6f
    ld l, [hl]                                    ; $52c1: $6e
    daa                                           ; $52c2: $27
    ld [hl], e                                    ; $52c3: $73
    jr nz, jr_01c_532f                            ; $52c4: $20 $69

    ld l, l                                       ; $52c6: $6d
    ld [hl], b                                    ; $52c7: $70
    ld l, a                                       ; $52c8: $6f
    ld [hl], d                                    ; $52c9: $72

jr_01c_52ca:
    ld [hl], h                                    ; $52ca: $74
    ld h, c                                       ; $52cb: $61
    ld l, [hl]                                    ; $52cc: $6e
    ld [hl], h                                    ; $52cd: $74
    ld l, $01                                     ; $52ce: $2e $01
    ld d, a                                       ; $52d0: $57
    ld h, c                                       ; $52d1: $61
    ld [hl], h                                    ; $52d2: $74
    ld h, e                                       ; $52d3: $63
    ld l, b                                       ; $52d4: $68
    ld hl, $4920                                  ; $52d5: $21 $20 $49

jr_01c_52d8:
    daa                                           ; $52d8: $27
    ld l, l                                       ; $52d9: $6d
    jr nz, jr_01c_533d                            ; $52da: $20 $61

    ld l, c                                       ; $52dc: $69

jr_01c_52dd:
    ld l, l                                       ; $52dd: $6d
    ld l, c                                       ; $52de: $69
    ld l, [hl]                                    ; $52df: $6e
    ld h, a                                       ; $52e0: $67
    ld bc, $6f66                                  ; $52e1: $01 $66 $6f
    ld [hl], d                                    ; $52e4: $72
    jr nz, jr_01c_535b                            ; $52e5: $20 $74

    ld l, b                                       ; $52e7: $68
    ld h, l                                       ; $52e8: $65
    jr nz, jr_01c_5352                            ; $52e9: $20 $67

    ld [hl], d                                    ; $52eb: $72
    ld h, l                                       ; $52ec: $65
    ld h, l                                       ; $52ed: $65
    ld l, [hl]                                    ; $52ee: $6e
    ld l, $03                                     ; $52ef: $2e $03
    nop                                           ; $52f1: $00
    ld c, [hl]                                    ; $52f2: $4e
    ld l, a                                       ; $52f3: $6f
    ld [hl], d                                    ; $52f4: $72
    ld l, l                                       ; $52f5: $6d
    ld h, c                                       ; $52f6: $61
    ld l, h                                       ; $52f7: $6c
    jr nz, jr_01c_536a                            ; $52f8: $20 $70

jr_01c_52fa:
    ld l, a                                       ; $52fa: $6f
    ld [hl], a                                    ; $52fb: $77

jr_01c_52fc:
    ld h, l                                       ; $52fc: $65
    ld [hl], d                                    ; $52fd: $72
    jr nz, jr_01c_5369                            ; $52fe: $20 $69

jr_01c_5300:
    ld [hl], e                                    ; $5300: $73
    ld bc, $6e65                                  ; $5301: $01 $65 $6e
    ld l, a                                       ; $5304: $6f
    ld [hl], l                                    ; $5305: $75
    ld h, a                                       ; $5306: $67
    ld l, b                                       ; $5307: $68
    jr nz, jr_01c_5370                            ; $5308: $20 $66

    ld l, a                                       ; $530a: $6f

jr_01c_530b:
    ld [hl], d                                    ; $530b: $72
    jr nz, jr_01c_536f                            ; $530c: $20 $61

    ld h, e                                       ; $530e: $63
    ld h, e                                       ; $530f: $63
    ld [hl], l                                    ; $5310: $75
    dec l                                         ; $5311: $2d
    ld bc, $6172                                  ; $5312: $01 $72 $61
    ld [hl], h                                    ; $5315: $74
    ld h, l                                       ; $5316: $65
    jr nz, @+$6b                                  ; $5317: $20 $69

    ld [hl], d                                    ; $5319: $72
    ld l, a                                       ; $531a: $6f
    ld l, [hl]                                    ; $531b: $6e
    jr nz, jr_01c_5391                            ; $531c: $20 $73

    ld l, b                                       ; $531e: $68
    ld l, a                                       ; $531f: $6f
    ld [hl], h                                    ; $5320: $74
    ld [hl], e                                    ; $5321: $73
    ld l, $03                                     ; $5322: $2e $03
    nop                                           ; $5324: $00

jr_01c_5325:
    ld c, [hl]                                    ; $5325: $4e
    ld h, l                                       ; $5326: $65
    ld a, b                                       ; $5327: $78
    ld [hl], h                                    ; $5328: $74
    inc l                                         ; $5329: $2c
    jr nz, jr_01c_539f                            ; $532a: $20 $73

    ld h, l                                       ; $532c: $65
    ld l, h                                       ; $532d: $6c
    ld h, l                                       ; $532e: $65

jr_01c_532f:
    ld h, e                                       ; $532f: $63
    ld [hl], h                                    ; $5330: $74
    ld bc, $2061                                  ; $5331: $01 $61 $20
    ld h, e                                       ; $5334: $63
    ld l, h                                       ; $5335: $6c
    ld [hl], l                                    ; $5336: $75
    ld h, d                                       ; $5337: $62
    ld l, $03                                     ; $5338: $2e $03
    nop                                           ; $533a: $00
    ld c, c                                       ; $533b: $49
    ld l, [hl]                                    ; $533c: $6e

jr_01c_533d:
    jr nz, jr_01c_53a0                            ; $533d: $20 $61

    jr nz, jr_01c_53b5                            ; $533f: $20 $74

    ld h, c                                       ; $5341: $61
    ld l, c                                       ; $5342: $69
    ld l, h                                       ; $5343: $6c
    ld [hl], a                                    ; $5344: $77
    ld l, c                                       ; $5345: $69
    ld l, [hl]                                    ; $5346: $6e
    ld h, h                                       ; $5347: $64
    inc l                                         ; $5348: $2c
    jr nz, @+$4b                                  ; $5349: $20 $49

    jr nz, jr_01c_53c2                            ; $534b: $20 $75

    ld [hl], e                                    ; $534d: $73
    ld h, l                                       ; $534e: $65
    ld bc, $6e6f                                  ; $534f: $01 $6f $6e

jr_01c_5352:
    ld h, l                                       ; $5352: $65
    jr nz, jr_01c_53b8                            ; $5353: $20 $63

    ld l, h                                       ; $5355: $6c
    ld [hl], l                                    ; $5356: $75
    ld h, d                                       ; $5357: $62
    jr nz, jr_01c_53c6                            ; $5358: $20 $6c

    ld l, a                                       ; $535a: $6f

jr_01c_535b:
    ld [hl], a                                    ; $535b: $77
    ld h, l                                       ; $535c: $65
    ld [hl], d                                    ; $535d: $72
    jr nz, jr_01c_53d4                            ; $535e: $20 $74

    ld l, b                                       ; $5360: $68
    ld h, c                                       ; $5361: $61
    ld l, [hl]                                    ; $5362: $6e
    ld bc, $6f6e                                  ; $5363: $01 $6e $6f
    ld [hl], d                                    ; $5366: $72
    ld l, l                                       ; $5367: $6d
    ld h, c                                       ; $5368: $61

jr_01c_5369:
    ld l, h                                       ; $5369: $6c

jr_01c_536a:
    ld l, $03                                     ; $536a: $2e $03
    nop                                           ; $536c: $00
    ld b, a                                       ; $536d: $47
    ld h, l                                       ; $536e: $65

jr_01c_536f:
    ld [hl], h                                    ; $536f: $74

jr_01c_5370:
    ld [hl], h                                    ; $5370: $74
    ld l, c                                       ; $5371: $69
    ld l, [hl]                                    ; $5372: $6e
    ld h, a                                       ; $5373: $67
    jr nz, jr_01c_53e5                            ; $5374: $20 $6f

    ld l, [hl]                                    ; $5376: $6e
    jr nz, @+$79                                  ; $5377: $20 $77

    ld l, c                                       ; $5379: $69
    ld [hl], h                                    ; $537a: $74
    ld l, b                                       ; $537b: $68
    jr nz, jr_01c_53f2                            ; $537c: $20 $74

    ld l, b                                       ; $537e: $68
    ld h, l                                       ; $537f: $65
    ld bc, $4932                                  ; $5380: $01 $32 $49
    jr nz, jr_01c_53fc                            ; $5383: $20 $77

    ld h, c                                       ; $5385: $61
    ld [hl], e                                    ; $5386: $73
    jr nz, jr_01c_53f5                            ; $5387: $20 $6c

    ld [hl], l                                    ; $5389: $75
    ld h, e                                       ; $538a: $63
    ld l, e                                       ; $538b: $6b
    ld a, c                                       ; $538c: $79
    ld l, $01                                     ; $538d: $2e $01
    ld d, a                                       ; $538f: $57
    ld h, c                                       ; $5390: $61

jr_01c_5391:
    ld l, [hl]                                    ; $5391: $6e
    ld [hl], h                                    ; $5392: $74
    jr nz, jr_01c_5409                            ; $5393: $20 $74

    ld l, a                                       ; $5395: $6f
    jr nz, jr_01c_540c                            ; $5396: $20 $74

    ld [hl], d                                    ; $5398: $72
    ld a, c                                       ; $5399: $79
    ccf                                           ; $539a: $3f
    nop                                           ; $539b: $00
    ld b, [hl]                                    ; $539c: $46
    ld l, c                                       ; $539d: $69
    ld [hl], d                                    ; $539e: $72

jr_01c_539f:
    ld [hl], e                                    ; $539f: $73

jr_01c_53a0:
    ld [hl], h                                    ; $53a0: $74
    inc l                                         ; $53a1: $2c
    jr nz, jr_01c_5407                            ; $53a2: $20 $63

    ld l, b                                       ; $53a4: $68
    ld l, a                                       ; $53a5: $6f
    ld l, a                                       ; $53a6: $6f
    ld [hl], e                                    ; $53a7: $73
    ld h, l                                       ; $53a8: $65
    jr nz, jr_01c_540c                            ; $53a9: $20 $61

    ld bc, $6c63                                  ; $53ab: $01 $63 $6c
    ld [hl], l                                    ; $53ae: $75
    ld h, d                                       ; $53af: $62
    inc l                                         ; $53b0: $2c
    jr nz, jr_01c_5415                            ; $53b1: $20 $62

    ld [hl], l                                    ; $53b3: $75
    ld [hl], h                                    ; $53b4: $74

jr_01c_53b5:
    jr nz, @+$65                                  ; $53b5: $20 $63

    ld l, a                                       ; $53b7: $6f

jr_01c_53b8:
    ld l, [hl]                                    ; $53b8: $6e
    ld [hl], e                                    ; $53b9: $73
    ld l, c                                       ; $53ba: $69
    ld h, h                                       ; $53bb: $64
    ld h, l                                       ; $53bc: $65
    ld [hl], d                                    ; $53bd: $72
    ld bc, $6874                                  ; $53be: $01 $74 $68
    ld h, l                                       ; $53c1: $65

jr_01c_53c2:
    jr nz, jr_01c_543b                            ; $53c2: $20 $77

    ld l, c                                       ; $53c4: $69
    ld l, [hl]                                    ; $53c5: $6e

jr_01c_53c6:
    ld h, h                                       ; $53c6: $64
    ld l, $03                                     ; $53c7: $2e $03
    nop                                           ; $53c9: $00
    ld c, [hl]                                    ; $53ca: $4e
    ld h, l                                       ; $53cb: $65
    ld a, b                                       ; $53cc: $78
    ld [hl], h                                    ; $53cd: $74
    inc l                                         ; $53ce: $2c
    jr nz, jr_01c_5434                            ; $53cf: $20 $63

    ld l, b                                       ; $53d1: $68
    ld l, a                                       ; $53d2: $6f
    ld l, a                                       ; $53d3: $6f

jr_01c_53d4:
    ld [hl], e                                    ; $53d4: $73
    ld h, l                                       ; $53d5: $65
    jr nz, @+$7b                                  ; $53d6: $20 $79

    ld l, a                                       ; $53d8: $6f
    ld [hl], l                                    ; $53d9: $75
    ld [hl], d                                    ; $53da: $72
    ld bc, $6f70                                  ; $53db: $01 $70 $6f
    ld [hl], a                                    ; $53de: $77
    ld h, l                                       ; $53df: $65
    ld [hl], d                                    ; $53e0: $72
    ld l, $20                                     ; $53e1: $2e $20
    ld c, c                                       ; $53e3: $49
    ld [hl], e                                    ; $53e4: $73

jr_01c_53e5:
    ld l, [hl]                                    ; $53e5: $6e
    daa                                           ; $53e6: $27
    ld [hl], h                                    ; $53e7: $74
    ld bc, $6f6e                                  ; $53e8: $01 $6e $6f
    ld [hl], d                                    ; $53eb: $72
    ld l, l                                       ; $53ec: $6d
    ld h, c                                       ; $53ed: $61
    ld l, h                                       ; $53ee: $6c
    jr nz, jr_01c_5457                            ; $53ef: $20 $66

    ld l, c                                       ; $53f1: $69

jr_01c_53f2:
    ld l, [hl]                                    ; $53f2: $6e
    ld h, l                                       ; $53f3: $65
    ccf                                           ; $53f4: $3f

jr_01c_53f5:
    inc bc                                        ; $53f5: $03
    nop                                           ; $53f6: $00
    ld c, a                                       ; $53f7: $4f
    ld c, e                                       ; $53f8: $4b
    ld l, $20                                     ; $53f9: $2e $20
    ld c, [hl]                                    ; $53fb: $4e

jr_01c_53fc:
    ld l, a                                       ; $53fc: $6f
    ld [hl], a                                    ; $53fd: $77
    jr nz, jr_01c_5473                            ; $53fe: $20 $73

    ld [hl], a                                    ; $5400: $77
    ld l, c                                       ; $5401: $69
    ld l, [hl]                                    ; $5402: $6e
    ld h, a                                       ; $5403: $67
    ld l, $03                                     ; $5404: $2e $03
    nop                                           ; $5406: $00

jr_01c_5407:
    ld d, b                                       ; $5407: $50
    ld h, c                                       ; $5408: $61

jr_01c_5409:
    ld [hl], e                                    ; $5409: $73
    ld [hl], e                                    ; $540a: $73
    ld l, c                                       ; $540b: $69

jr_01c_540c:
    ld l, [hl]                                    ; $540c: $6e
    ld h, a                                       ; $540d: $67
    jr nz, @+$76                                  ; $540e: $20 $74

    ld l, b                                       ; $5410: $68
    ld h, l                                       ; $5411: $65
    jr nz, jr_01c_547b                            ; $5412: $20 $67

    ld [hl], d                                    ; $5414: $72

jr_01c_5415:
    ld h, l                                       ; $5415: $65
    ld h, l                                       ; $5416: $65
    ld l, [hl]                                    ; $5417: $6e
    ld bc, $6e6f                                  ; $5418: $01 $6f $6e
    jr nz, jr_01c_547e                            ; $541b: $20 $61

    ld l, [hl]                                    ; $541d: $6e
    jr nz, jr_01c_5489                            ; $541e: $20 $69

    ld [hl], d                                    ; $5420: $72
    ld l, a                                       ; $5421: $6f
    ld l, [hl]                                    ; $5422: $6e
    jr nz, jr_01c_5498                            ; $5423: $20 $73

    ld l, b                                       ; $5425: $68
    ld l, a                                       ; $5426: $6f
    ld [hl], h                                    ; $5427: $74
    ld bc, $656d                                  ; $5428: $01 $6d $65
    ld h, c                                       ; $542b: $61
    ld l, [hl]                                    ; $542c: $6e
    ld [hl], e                                    ; $542d: $73
    jr nz, @+$76                                  ; $542e: $20 $74

    ld [hl], d                                    ; $5430: $72
    ld l, a                                       ; $5431: $6f
    ld [hl], l                                    ; $5432: $75
    ld h, d                                       ; $5433: $62

jr_01c_5434:
    ld l, h                                       ; $5434: $6c
    ld h, l                                       ; $5435: $65
    ld l, $02                                     ; $5436: $2e $02
    ld d, h                                       ; $5438: $54
    ld [hl], d                                    ; $5439: $72
    ld a, c                                       ; $543a: $79

jr_01c_543b:
    jr nz, jr_01c_54ad                            ; $543b: $20 $70

    ld [hl], d                                    ; $543d: $72
    ld h, c                                       ; $543e: $61
    ld h, e                                       ; $543f: $63
    ld [hl], h                                    ; $5440: $74
    ld l, c                                       ; $5441: $69
    ld h, e                                       ; $5442: $63
    ld l, c                                       ; $5443: $69
    ld l, [hl]                                    ; $5444: $6e
    ld h, a                                       ; $5445: $67
    ld bc, $6f73                                  ; $5446: $01 $73 $6f
    ld l, l                                       ; $5449: $6d
    ld h, l                                       ; $544a: $65
    jr nz, jr_01c_54ba                            ; $544b: $20 $6d

    ld l, a                                       ; $544d: $6f
    ld [hl], d                                    ; $544e: $72
    ld h, l                                       ; $544f: $65
    ld l, $03                                     ; $5450: $2e $03
    nop                                           ; $5452: $00
    ld c, h                                       ; $5453: $4c
    ld l, a                                       ; $5454: $6f
    ld l, [hl]                                    ; $5455: $6e
    ld h, a                                       ; $5456: $67

jr_01c_5457:
    jr nz, jr_01c_54c2                            ; $5457: $20 $69

    ld [hl], d                                    ; $5459: $72
    ld l, a                                       ; $545a: $6f
    ld l, [hl]                                    ; $545b: $6e
    jr nz, jr_01c_54d1                            ; $545c: $20 $73

    ld l, b                                       ; $545e: $68
    ld l, a                                       ; $545f: $6f
    ld [hl], h                                    ; $5460: $74
    ld [hl], e                                    ; $5461: $73
    ld bc, $7261                                  ; $5462: $01 $61 $72
    ld h, l                                       ; $5465: $65
    jr nz, jr_01c_54dc                            ; $5466: $20 $74

    ld l, a                                       ; $5468: $6f
    ld [hl], l                                    ; $5469: $75
    ld h, a                                       ; $546a: $67
    ld l, b                                       ; $546b: $68
    inc l                                         ; $546c: $2c
    jr nz, jr_01c_54d1                            ; $546d: $20 $62

    ld [hl], l                                    ; $546f: $75
    ld [hl], h                                    ; $5470: $74
    jr nz, jr_01c_54da                            ; $5471: $20 $67

jr_01c_5473:
    ld h, l                                       ; $5473: $65
    ld [hl], h                                    ; $5474: $74
    ld bc, $6c63                                  ; $5475: $01 $63 $6c
    ld l, a                                       ; $5478: $6f
    ld [hl], e                                    ; $5479: $73
    ld h, l                                       ; $547a: $65

jr_01c_547b:
    ld [hl], d                                    ; $547b: $72
    jr nz, jr_01c_54f2                            ; $547c: $20 $74

jr_01c_547e:
    ld l, a                                       ; $547e: $6f
    jr nz, @+$76                                  ; $547f: $20 $74

    ld l, b                                       ; $5481: $68
    ld h, l                                       ; $5482: $65
    jr nz, @+$72                                  ; $5483: $20 $70

    ld l, c                                       ; $5485: $69
    ld l, [hl]                                    ; $5486: $6e
    ld l, $03                                     ; $5487: $2e $03

jr_01c_5489:
    nop                                           ; $5489: $00
    ld e, c                                       ; $548a: $59
    ld l, a                                       ; $548b: $6f
    ld [hl], l                                    ; $548c: $75
    jr nz, jr_01c_54f7                            ; $548d: $20 $68

    ld h, c                                       ; $548f: $61
    halt                                          ; $5490: $76
    ld h, l                                       ; $5491: $65
    jr nz, @+$63                                  ; $5492: $20 $61

    ld l, [hl]                                    ; $5494: $6e
    jr nz, jr_01c_54f8                            ; $5495: $20 $61

    ld l, l                                       ; $5497: $6d

jr_01c_5498:
    ld h, c                                       ; $5498: $61
    ld a, d                                       ; $5499: $7a
    ld l, c                                       ; $549a: $69
    ld l, [hl]                                    ; $549b: $6e
    ld h, a                                       ; $549c: $67
    ld bc, $6573                                  ; $549d: $01 $73 $65
    ld l, [hl]                                    ; $54a0: $6e
    ld [hl], e                                    ; $54a1: $73
    ld h, l                                       ; $54a2: $65
    jr nz, jr_01c_550b                            ; $54a3: $20 $66

    ld l, a                                       ; $54a5: $6f
    ld [hl], d                                    ; $54a6: $72
    jr nz, @+$66                                  ; $54a7: $20 $64

    ld l, c                                       ; $54a9: $69
    ld [hl], e                                    ; $54aa: $73
    ld [hl], h                                    ; $54ab: $74
    ld h, c                                       ; $54ac: $61

jr_01c_54ad:
    ld l, [hl]                                    ; $54ad: $6e
    ld h, e                                       ; $54ae: $63
    ld h, l                                       ; $54af: $65
    ld bc, $6e61                                  ; $54b0: $01 $61 $6e
    ld h, h                                       ; $54b3: $64
    jr nz, jr_01c_551a                            ; $54b4: $20 $64

    ld l, c                                       ; $54b6: $69
    ld [hl], d                                    ; $54b7: $72
    ld h, l                                       ; $54b8: $65
    ld h, e                                       ; $54b9: $63

jr_01c_54ba:
    ld [hl], h                                    ; $54ba: $74
    ld l, c                                       ; $54bb: $69
    ld l, a                                       ; $54bc: $6f
    ld l, [hl]                                    ; $54bd: $6e
    ld hl, $0003                                  ; $54be: $21 $03 $00
    ld d, b                                       ; $54c1: $50

jr_01c_54c2:
    ld [hl], d                                    ; $54c2: $72
    ld h, c                                       ; $54c3: $61
    ld h, e                                       ; $54c4: $63
    ld [hl], h                                    ; $54c5: $74
    ld l, c                                       ; $54c6: $69
    ld h, e                                       ; $54c7: $63
    ld h, l                                       ; $54c8: $65
    jr nz, jr_01c_5534                            ; $54c9: $20 $69

    ld [hl], d                                    ; $54cb: $72
    ld l, a                                       ; $54cc: $6f
    ld l, [hl]                                    ; $54cd: $6e
    jr nz, jr_01c_5543                            ; $54ce: $20 $73

    ld l, b                                       ; $54d0: $68

jr_01c_54d1:
    ld l, a                                       ; $54d1: $6f
    ld [hl], h                                    ; $54d2: $74
    ld [hl], e                                    ; $54d3: $73
    ld bc, $7962                                  ; $54d4: $01 $62 $79
    jr nz, @+$63                                  ; $54d7: $20 $61

    ld l, c                                       ; $54d9: $69

jr_01c_54da:
    ld l, l                                       ; $54da: $6d
    ld l, c                                       ; $54db: $69

jr_01c_54dc:
    ld l, [hl]                                    ; $54dc: $6e
    ld h, a                                       ; $54dd: $67
    jr nz, @+$68                                  ; $54de: $20 $66

    ld l, a                                       ; $54e0: $6f
    ld [hl], d                                    ; $54e1: $72
    jr nz, jr_01c_5558                            ; $54e2: $20 $74

    ld l, b                                       ; $54e4: $68
    ld h, l                                       ; $54e5: $65
    ld bc, $696d                                  ; $54e6: $01 $6d $69
    ld h, h                                       ; $54e9: $64
    ld h, h                                       ; $54ea: $64
    ld l, h                                       ; $54eb: $6c
    ld h, l                                       ; $54ec: $65
    jr nz, @+$71                                  ; $54ed: $20 $6f

    ld h, [hl]                                    ; $54ef: $66
    jr nz, jr_01c_5566                            ; $54f0: $20 $74

jr_01c_54f2:
    ld l, b                                       ; $54f2: $68
    ld h, l                                       ; $54f3: $65
    jr nz, jr_01c_555d                            ; $54f4: $20 $67

    ld [hl], d                                    ; $54f6: $72

jr_01c_54f7:
    ld h, l                                       ; $54f7: $65

jr_01c_54f8:
    ld h, l                                       ; $54f8: $65
    ld l, [hl]                                    ; $54f9: $6e
    ld l, $02                                     ; $54fa: $2e $02
    ld d, e                                       ; $54fc: $53
    ld l, b                                       ; $54fd: $68
    ld l, a                                       ; $54fe: $6f
    ld l, a                                       ; $54ff: $6f
    ld [hl], h                                    ; $5500: $74
    ld l, c                                       ; $5501: $69
    ld l, [hl]                                    ; $5502: $6e
    ld h, a                                       ; $5503: $67
    jr nz, jr_01c_556c                            ; $5504: $20 $66

    ld l, a                                       ; $5506: $6f
    ld [hl], d                                    ; $5507: $72
    jr nz, @+$76                                  ; $5508: $20 $74

    ld l, b                                       ; $550a: $68

jr_01c_550b:
    ld h, l                                       ; $550b: $65
    ld bc, $6970                                  ; $550c: $01 $70 $69
    ld l, [hl]                                    ; $550f: $6e
    daa                                           ; $5510: $27
    ld [hl], e                                    ; $5511: $73
    jr nz, jr_01c_5588                            ; $5512: $20 $74

    ld l, a                                       ; $5514: $6f
    ld l, a                                       ; $5515: $6f
    jr nz, jr_01c_558a                            ; $5516: $20 $72

    ld l, c                                       ; $5518: $69
    ld [hl], e                                    ; $5519: $73

jr_01c_551a:
    ld l, e                                       ; $551a: $6b
    ld a, c                                       ; $551b: $79
    inc l                                         ; $551c: $2c
    jr nz, jr_01c_5592                            ; $551d: $20 $73

    ld l, a                                       ; $551f: $6f
    ld bc, $7473                                  ; $5520: $01 $73 $74
    ld h, c                                       ; $5523: $61
    ld [hl], d                                    ; $5524: $72
    ld [hl], h                                    ; $5525: $74
    jr nz, @+$71                                  ; $5526: $20 $6f

    ld h, [hl]                                    ; $5528: $66
    ld h, [hl]                                    ; $5529: $66
    jr nz, jr_01c_5591                            ; $552a: $20 $65

    ld h, c                                       ; $552c: $61
    ld [hl], e                                    ; $552d: $73
    ld a, c                                       ; $552e: $79
    ld l, $03                                     ; $552f: $2e $03
    nop                                           ; $5531: $00
    ld b, l                                       ; $5532: $45
    ld l, b                                       ; $5533: $68

jr_01c_5534:
    ccf                                           ; $5534: $3f
    jr nz, jr_01c_5580                            ; $5535: $20 $49

    daa                                           ; $5537: $27
    ld l, l                                       ; $5538: $6d
    jr nz, jr_01c_55b2                            ; $5539: $20 $77

    ld l, a                                       ; $553b: $6f
    ld [hl], d                                    ; $553c: $72
    ld l, e                                       ; $553d: $6b
    ld l, c                                       ; $553e: $69
    ld l, [hl]                                    ; $553f: $6e
    ld h, a                                       ; $5540: $67
    jr nz, jr_01c_55b2                            ; $5541: $20 $6f

jr_01c_5543:
    ld l, [hl]                                    ; $5543: $6e
    ld bc, $6e69                                  ; $5544: $01 $69 $6e
    ld [hl], h                                    ; $5547: $74
    ld h, l                                       ; $5548: $65
    ld l, [hl]                                    ; $5549: $6e
    ld [hl], h                                    ; $554a: $74
    ld l, c                                       ; $554b: $69
    ld l, a                                       ; $554c: $6f
    ld l, [hl]                                    ; $554d: $6e
    ld h, c                                       ; $554e: $61
    ld l, h                                       ; $554f: $6c
    jr nz, jr_01c_55c5                            ; $5550: $20 $73

    ld l, b                                       ; $5552: $68
    ld l, a                                       ; $5553: $6f
    ld [hl], h                                    ; $5554: $74
    ld [hl], e                                    ; $5555: $73
    ld l, $02                                     ; $5556: $2e $02

jr_01c_5558:
    ld e, c                                       ; $5558: $59
    ld h, l                                       ; $5559: $65
    ld h, c                                       ; $555a: $61
    ld l, b                                       ; $555b: $68
    inc l                                         ; $555c: $2c

jr_01c_555d:
    jr nz, @+$72                                  ; $555d: $20 $70

    ld [hl], l                                    ; $555f: $75
    ld [hl], d                                    ; $5560: $72
    ld [hl], b                                    ; $5561: $70
    ld l, a                                       ; $5562: $6f
    ld [hl], e                                    ; $5563: $73
    ld h, l                                       ; $5564: $65
    ld l, h                                       ; $5565: $6c

jr_01c_5566:
    ld a, c                                       ; $5566: $79
    ld bc, $7563                                  ; $5567: $01 $63 $75
    ld [hl], d                                    ; $556a: $72
    halt                                          ; $556b: $76

jr_01c_556c:
    ld l, c                                       ; $556c: $69
    ld l, [hl]                                    ; $556d: $6e
    ld h, a                                       ; $556e: $67
    jr nz, @+$6f                                  ; $556f: $20 $6d

    ld a, c                                       ; $5571: $79
    jr nz, jr_01c_55e7                            ; $5572: $20 $73

    ld l, b                                       ; $5574: $68
    ld l, a                                       ; $5575: $6f
    ld [hl], h                                    ; $5576: $74
    ld l, $01                                     ; $5577: $2e $01
    ld d, a                                       ; $5579: $57
    ld h, c                                       ; $557a: $61
    ld l, [hl]                                    ; $557b: $6e
    ld [hl], h                                    ; $557c: $74
    jr nz, @+$76                                  ; $557d: $20 $74

    ld l, a                                       ; $557f: $6f

jr_01c_5580:
    jr nz, jr_01c_55f6                            ; $5580: $20 $74

    ld [hl], d                                    ; $5582: $72
    ld a, c                                       ; $5583: $79
    ccf                                           ; $5584: $3f
    nop                                           ; $5585: $00
    ld c, c                                       ; $5586: $49
    ld h, [hl]                                    ; $5587: $66

jr_01c_5588:
    jr nz, @+$7b                                  ; $5588: $20 $79

jr_01c_558a:
    ld l, a                                       ; $558a: $6f
    ld [hl], l                                    ; $558b: $75
    daa                                           ; $558c: $27
    ld [hl], d                                    ; $558d: $72
    ld h, l                                       ; $558e: $65
    jr nz, @+$74                                  ; $558f: $20 $72

jr_01c_5591:
    ld l, c                                       ; $5591: $69

jr_01c_5592:
    ld h, a                                       ; $5592: $67
    ld l, b                                       ; $5593: $68
    ld [hl], h                                    ; $5594: $74
    ld bc, $6562                                  ; $5595: $01 $62 $65
    ld l, b                                       ; $5598: $68
    ld l, c                                       ; $5599: $69
    ld l, [hl]                                    ; $559a: $6e
    ld h, h                                       ; $559b: $64
    jr nz, jr_01c_55ff                            ; $559c: $20 $61

    jr nz, jr_01c_5614                            ; $559e: $20 $74

    ld [hl], d                                    ; $55a0: $72
    ld h, l                                       ; $55a1: $65
    ld h, l                                       ; $55a2: $65
    inc l                                         ; $55a3: $2c
    jr nz, jr_01c_561f                            ; $55a4: $20 $79

    ld l, a                                       ; $55a6: $6f
    ld [hl], l                                    ; $55a7: $75
    ld bc, $6163                                  ; $55a8: $01 $63 $61
    ld l, [hl]                                    ; $55ab: $6e
    daa                                           ; $55ac: $27
    ld [hl], h                                    ; $55ad: $74
    jr nz, jr_01c_5611                            ; $55ae: $20 $61

    ld l, c                                       ; $55b0: $69
    ld l, l                                       ; $55b1: $6d

jr_01c_55b2:
    jr nz, jr_01c_561a                            ; $55b2: $20 $66

    ld l, a                                       ; $55b4: $6f
    ld [hl], d                                    ; $55b5: $72
    jr nz, jr_01c_562c                            ; $55b6: $20 $74

    ld l, b                                       ; $55b8: $68
    ld h, l                                       ; $55b9: $65
    ld [bc], a                                    ; $55ba: $02
    ld h, a                                       ; $55bb: $67
    ld [hl], d                                    ; $55bc: $72
    ld h, l                                       ; $55bd: $65
    ld h, l                                       ; $55be: $65
    ld l, [hl]                                    ; $55bf: $6e
    inc l                                         ; $55c0: $2c
    jr nz, @+$74                                  ; $55c1: $20 $72

    ld l, c                                       ; $55c3: $69
    ld h, a                                       ; $55c4: $67

jr_01c_55c5:
    ld l, b                                       ; $55c5: $68
    ld [hl], h                                    ; $55c6: $74
    ccf                                           ; $55c7: $3f
    jr nz, jr_01c_5621                            ; $55c8: $20 $57

    ld l, c                                       ; $55ca: $69
    ld [hl], h                                    ; $55cb: $74
    ld l, b                                       ; $55cc: $68
    ld bc, $2061                                  ; $55cd: $01 $61 $20
    ld l, b                                       ; $55d0: $68
    ld l, a                                       ; $55d1: $6f
    ld l, a                                       ; $55d2: $6f
    ld l, e                                       ; $55d3: $6b
    jr nz, jr_01c_5645                            ; $55d4: $20 $6f

    ld [hl], d                                    ; $55d6: $72
    jr nz, jr_01c_564c                            ; $55d7: $20 $73

    ld l, h                                       ; $55d9: $6c
    ld l, c                                       ; $55da: $69
    ld h, e                                       ; $55db: $63
    ld h, l                                       ; $55dc: $65
    ld bc, $6f79                                  ; $55dd: $01 $79 $6f
    ld [hl], l                                    ; $55e0: $75
    jr nz, jr_01c_5646                            ; $55e1: $20 $63

    ld h, c                                       ; $55e3: $61
    ld l, [hl]                                    ; $55e4: $6e
    ld l, $20                                     ; $55e5: $2e $20

jr_01c_55e7:
    ld d, h                                       ; $55e7: $54
    ld [hl], d                                    ; $55e8: $72
    ld a, c                                       ; $55e9: $79
    jr nz, jr_01c_5655                            ; $55ea: $20 $69

    ld [hl], h                                    ; $55ec: $74
    ld hl, $0003                                  ; $55ed: $21 $03 $00
    ld c, a                                       ; $55f0: $4f
    ld l, [hl]                                    ; $55f1: $6e
    jr nz, jr_01c_565c                            ; $55f2: $20 $68

    ld h, c                                       ; $55f4: $61
    ld [hl], d                                    ; $55f5: $72

jr_01c_55f6:
    ld h, h                                       ; $55f6: $64
    ld h, l                                       ; $55f7: $65
    ld [hl], d                                    ; $55f8: $72
    jr nz, jr_01c_565e                            ; $55f9: $20 $63

    ld l, a                                       ; $55fb: $6f
    ld [hl], l                                    ; $55fc: $75
    ld [hl], d                                    ; $55fd: $72
    ld [hl], e                                    ; $55fe: $73

jr_01c_55ff:
    ld h, l                                       ; $55ff: $65
    ld [hl], e                                    ; $5600: $73
    inc l                                         ; $5601: $2c
    ld bc, $6669                                  ; $5602: $01 $69 $66
    jr nz, jr_01c_5680                            ; $5605: $20 $79

    ld l, a                                       ; $5607: $6f
    ld [hl], l                                    ; $5608: $75
    jr nz, jr_01c_566e                            ; $5609: $20 $63

    ld h, c                                       ; $560b: $61
    ld l, [hl]                                    ; $560c: $6e
    daa                                           ; $560d: $27
    ld [hl], h                                    ; $560e: $74
    jr nz, jr_01c_5679                            ; $560f: $20 $68

jr_01c_5611:
    ld l, a                                       ; $5611: $6f
    ld l, a                                       ; $5612: $6f
    ld l, e                                       ; $5613: $6b

jr_01c_5614:
    ld bc, $6e61                                  ; $5614: $01 $61 $6e
    ld h, h                                       ; $5617: $64
    jr nz, jr_01c_568d                            ; $5618: $20 $73

jr_01c_561a:
    ld l, h                                       ; $561a: $6c
    ld l, c                                       ; $561b: $69
    ld h, e                                       ; $561c: $63
    ld h, l                                       ; $561d: $65
    inc l                                         ; $561e: $2c

jr_01c_561f:
    jr nz, @+$7b                                  ; $561f: $20 $79

jr_01c_5621:
    ld l, a                                       ; $5621: $6f
    ld [hl], l                                    ; $5622: $75
    jr nz, jr_01c_569c                            ; $5623: $20 $77

    ld l, a                                       ; $5625: $6f
    ld l, [hl]                                    ; $5626: $6e
    daa                                           ; $5627: $27
    ld [hl], h                                    ; $5628: $74
    ld [bc], a                                    ; $5629: $02
    ld l, l                                       ; $562a: $6d
    ld h, c                                       ; $562b: $61

jr_01c_562c:
    ld l, e                                       ; $562c: $6b
    ld h, l                                       ; $562d: $65
    jr nz, jr_01c_56a3                            ; $562e: $20 $73

    ld h, e                                       ; $5630: $63
    ld l, a                                       ; $5631: $6f
    ld [hl], d                                    ; $5632: $72
    ld h, l                                       ; $5633: $65
    ld l, $20                                     ; $5634: $2e $20
    ld c, c                                       ; $5636: $49
    ld l, [hl]                                    ; $5637: $6e
    ld [hl], h                                    ; $5638: $74
    ld h, l                                       ; $5639: $65
    ld l, [hl]                                    ; $563a: $6e
    ld [hl], h                                    ; $563b: $74
    ld l, c                                       ; $563c: $69
    ld l, a                                       ; $563d: $6f
    ld l, [hl]                                    ; $563e: $6e
    ld h, c                                       ; $563f: $61
    ld l, h                                       ; $5640: $6c
    ld bc, $6873                                  ; $5641: $01 $73 $68
    ld l, a                                       ; $5644: $6f

jr_01c_5645:
    ld [hl], h                                    ; $5645: $74

jr_01c_5646:
    ld [hl], e                                    ; $5646: $73
    jr nz, jr_01c_56b1                            ; $5647: $20 $68

    ld h, l                                       ; $5649: $65
    ld l, h                                       ; $564a: $6c
    ld [hl], b                                    ; $564b: $70

jr_01c_564c:
    jr nz, jr_01c_56b7                            ; $564c: $20 $69

    ld h, [hl]                                    ; $564e: $66
    jr nz, jr_01c_56ca                            ; $564f: $20 $79

    ld l, a                                       ; $5651: $6f
    ld [hl], l                                    ; $5652: $75
    daa                                           ; $5653: $27
    ld [hl], d                                    ; $5654: $72

jr_01c_5655:
    ld h, l                                       ; $5655: $65
    ld bc, $7473                                  ; $5656: $01 $73 $74
    ld [hl], l                                    ; $5659: $75
    ld h, e                                       ; $565a: $63
    ld l, e                                       ; $565b: $6b

jr_01c_565c:
    jr nz, @+$64                                  ; $565c: $20 $62

jr_01c_565e:
    ld h, l                                       ; $565e: $65
    ld [hl], h                                    ; $565f: $74
    ld [hl], a                                    ; $5660: $77
    ld h, l                                       ; $5661: $65
    ld h, l                                       ; $5662: $65
    ld l, [hl]                                    ; $5663: $6e
    jr nz, jr_01c_56da                            ; $5664: $20 $74

    ld [hl], d                                    ; $5666: $72
    ld h, c                                       ; $5667: $61
    ld [hl], b                                    ; $5668: $70
    ld [hl], e                                    ; $5669: $73
    ld l, $03                                     ; $566a: $2e $03
    nop                                           ; $566c: $00
    ld d, h                                       ; $566d: $54

jr_01c_566e:
    ld l, b                                       ; $566e: $68
    ld h, c                                       ; $566f: $61
    ld [hl], h                                    ; $5670: $74
    jr nz, @+$76                                  ; $5671: $20 $74

    ld [hl], d                                    ; $5673: $72
    ld h, l                                       ; $5674: $65
    ld h, l                                       ; $5675: $65
    jr nz, jr_01c_56da                            ; $5676: $20 $62

    ld l, h                                       ; $5678: $6c

jr_01c_5679:
    ld l, a                                       ; $5679: $6f
    ld h, e                                       ; $567a: $63
    ld l, e                                       ; $567b: $6b
    ld [hl], e                                    ; $567c: $73
    ld bc, $6f79                                  ; $567d: $01 $79 $6f

jr_01c_5680:
    ld [hl], l                                    ; $5680: $75
    jr nz, @+$68                                  ; $5681: $20 $66

    ld [hl], d                                    ; $5683: $72
    ld l, a                                       ; $5684: $6f
    ld l, l                                       ; $5685: $6d
    jr nz, jr_01c_56ef                            ; $5686: $20 $67

    ld h, l                                       ; $5688: $65
    ld [hl], h                                    ; $5689: $74
    ld [hl], h                                    ; $568a: $74
    ld l, c                                       ; $568b: $69
    ld l, [hl]                                    ; $568c: $6e

jr_01c_568d:
    ld h, a                                       ; $568d: $67
    ld bc, $2061                                  ; $568e: $01 $61 $20
    ld h, a                                       ; $5691: $67
    ld l, a                                       ; $5692: $6f
    ld l, a                                       ; $5693: $6f
    ld h, h                                       ; $5694: $64
    jr nz, jr_01c_5703                            ; $5695: $20 $6c

    ld l, c                                       ; $5697: $69
    ld h, l                                       ; $5698: $65
    jr nz, jr_01c_5701                            ; $5699: $20 $66

    ld [hl], d                                    ; $569b: $72

jr_01c_569c:
    ld l, a                                       ; $569c: $6f
    ld l, l                                       ; $569d: $6d
    ld [bc], a                                    ; $569e: $02
    ld l, b                                       ; $569f: $68
    ld h, l                                       ; $56a0: $65
    ld [hl], d                                    ; $56a1: $72
    ld h, l                                       ; $56a2: $65

jr_01c_56a3:
    ld l, $20                                     ; $56a3: $2e $20
    ld e, c                                       ; $56a5: $59
    ld l, a                                       ; $56a6: $6f
    ld [hl], l                                    ; $56a7: $75
    jr nz, jr_01c_570d                            ; $56a8: $20 $63

    ld l, a                                       ; $56aa: $6f
    ld [hl], l                                    ; $56ab: $75
    ld l, h                                       ; $56ac: $6c
    ld h, h                                       ; $56ad: $64
    ld bc, $6968                                  ; $56ae: $01 $68 $69

jr_01c_56b1:
    ld [hl], h                                    ; $56b1: $74
    jr nz, @+$63                                  ; $56b2: $20 $61

    jr nz, jr_01c_571e                            ; $56b4: $20 $68

    ld l, c                                       ; $56b6: $69

jr_01c_56b7:
    ld h, a                                       ; $56b7: $67
    ld l, b                                       ; $56b8: $68
    jr nz, jr_01c_571d                            ; $56b9: $20 $62

    ld h, c                                       ; $56bb: $61
    ld l, h                                       ; $56bc: $6c
    ld l, h                                       ; $56bd: $6c
    inc l                                         ; $56be: $2c
    ld bc, $7562                                  ; $56bf: $01 $62 $75
    ld [hl], h                                    ; $56c2: $74
    jr nz, @+$76                                  ; $56c3: $20 $74

    ld [hl], d                                    ; $56c5: $72
    ld a, c                                       ; $56c6: $79
    jr nz, jr_01c_573c                            ; $56c7: $20 $73

    ld l, c                                       ; $56c9: $69

jr_01c_56ca:
    ld h, h                                       ; $56ca: $64
    ld h, l                                       ; $56cb: $65
    ld [hl], e                                    ; $56cc: $73
    ld [hl], b                                    ; $56cd: $70
    ld l, c                                       ; $56ce: $69
    ld l, [hl]                                    ; $56cf: $6e
    ld l, $03                                     ; $56d0: $2e $03
    nop                                           ; $56d2: $00
    ld e, c                                       ; $56d3: $59
    ld l, a                                       ; $56d4: $6f
    ld [hl], l                                    ; $56d5: $75
    jr nz, @+$70                                  ; $56d6: $20 $6e

    ld h, l                                       ; $56d8: $65
    ld h, l                                       ; $56d9: $65

jr_01c_56da:
    ld h, h                                       ; $56da: $64
    jr nz, jr_01c_573e                            ; $56db: $20 $61

    ld h, e                                       ; $56dd: $63
    ld h, e                                       ; $56de: $63
    ld [hl], l                                    ; $56df: $75
    ld [hl], d                                    ; $56e0: $72
    ld h, c                                       ; $56e1: $61
    ld h, e                                       ; $56e2: $63
    ld a, c                                       ; $56e3: $79
    inc l                                         ; $56e4: $2c
    ld bc, $6f73                                  ; $56e5: $01 $73 $6f
    jr nz, jr_01c_5754                            ; $56e8: $20 $6a

    ld [hl], l                                    ; $56ea: $75
    ld [hl], e                                    ; $56eb: $73
    ld [hl], h                                    ; $56ec: $74
    jr nz, jr_01c_5764                            ; $56ed: $20 $75

jr_01c_56ef:
    ld [hl], e                                    ; $56ef: $73
    ld h, l                                       ; $56f0: $65
    ld bc, $6f6e                                  ; $56f1: $01 $6e $6f
    ld [hl], d                                    ; $56f4: $72
    ld l, l                                       ; $56f5: $6d
    ld h, c                                       ; $56f6: $61
    ld l, h                                       ; $56f7: $6c
    jr nz, jr_01c_576a                            ; $56f8: $20 $70

    ld l, a                                       ; $56fa: $6f
    ld [hl], a                                    ; $56fb: $77
    ld h, l                                       ; $56fc: $65
    ld [hl], d                                    ; $56fd: $72
    ld l, $03                                     ; $56fe: $2e $03
    nop                                           ; $5700: $00

jr_01c_5701:
    ld c, [hl]                                    ; $5701: $4e
    ld h, l                                       ; $5702: $65

jr_01c_5703:
    ld a, b                                       ; $5703: $78
    ld [hl], h                                    ; $5704: $74
    inc l                                         ; $5705: $2c
    jr nz, jr_01c_577b                            ; $5706: $20 $73

    ld h, l                                       ; $5708: $65
    ld l, h                                       ; $5709: $6c
    ld h, l                                       ; $570a: $65
    ld h, e                                       ; $570b: $63
    ld [hl], h                                    ; $570c: $74

jr_01c_570d:
    jr nz, jr_01c_5770                            ; $570d: $20 $61

    jr nz, jr_01c_5774                            ; $570f: $20 $63

    ld l, h                                       ; $5711: $6c
    ld [hl], l                                    ; $5712: $75
    ld h, d                                       ; $5713: $62
    ld l, $03                                     ; $5714: $2e $03
    nop                                           ; $5716: $00
    ld d, l                                       ; $5717: $55
    ld [hl], e                                    ; $5718: $73
    ld h, l                                       ; $5719: $65
    jr nz, jr_01c_5790                            ; $571a: $20 $74

    ld l, b                                       ; $571c: $68

jr_01c_571d:
    ld h, l                                       ; $571d: $65

jr_01c_571e:
    jr nz, jr_01c_5751                            ; $571e: $20 $31

    ld d, a                                       ; $5720: $57
    jr nz, jr_01c_5789                            ; $5721: $20 $66

    ld l, a                                       ; $5723: $6f
    ld [hl], d                                    ; $5724: $72
    ld bc, $6964                                  ; $5725: $01 $64 $69
    ld [hl], e                                    ; $5728: $73
    ld [hl], h                                    ; $5729: $74
    ld h, c                                       ; $572a: $61
    ld l, [hl]                                    ; $572b: $6e
    ld h, e                                       ; $572c: $63
    ld h, l                                       ; $572d: $65
    jr nz, jr_01c_5796                            ; $572e: $20 $66

    ld [hl], d                                    ; $5730: $72
    ld l, a                                       ; $5731: $6f
    ld l, l                                       ; $5732: $6d
    jr nz, jr_01c_57a9                            ; $5733: $20 $74

    ld l, b                                       ; $5735: $68
    ld h, l                                       ; $5736: $65
    ld bc, $6574                                  ; $5737: $01 $74 $65
    ld h, l                                       ; $573a: $65
    inc l                                         ; $573b: $2c

jr_01c_573c:
    jr nz, jr_01c_579f                            ; $573c: $20 $61

jr_01c_573e:
    ld [hl], e                                    ; $573e: $73
    jr nz, jr_01c_57b6                            ; $573f: $20 $75

    ld [hl], e                                    ; $5741: $73
    ld [hl], l                                    ; $5742: $75
    ld h, c                                       ; $5743: $61
    ld l, h                                       ; $5744: $6c
    ld l, $02                                     ; $5745: $2e $02
    ld c, a                                       ; $5747: $4f
    ld l, [hl]                                    ; $5748: $6e
    ld h, e                                       ; $5749: $63
    ld h, l                                       ; $574a: $65
    jr nz, jr_01c_57c1                            ; $574b: $20 $74

    ld l, b                                       ; $574d: $68
    ld h, l                                       ; $574e: $65
    jr nz, jr_01c_57b4                            ; $574f: $20 $63

jr_01c_5751:
    ld [hl], l                                    ; $5751: $75
    ld [hl], d                                    ; $5752: $72
    ld [hl], e                                    ; $5753: $73

jr_01c_5754:
    ld l, a                                       ; $5754: $6f
    ld [hl], d                                    ; $5755: $72
    ld bc, $7473                                  ; $5756: $01 $73 $74
    ld h, c                                       ; $5759: $61
    ld [hl], d                                    ; $575a: $72
    ld [hl], h                                    ; $575b: $74
    ld [hl], e                                    ; $575c: $73
    jr nz, jr_01c_57cc                            ; $575d: $20 $6d

    ld l, a                                       ; $575f: $6f
    halt                                          ; $5760: $76
    ld l, c                                       ; $5761: $69
    ld l, [hl]                                    ; $5762: $6e
    ld h, a                                       ; $5763: $67

jr_01c_5764:
    inc l                                         ; $5764: $2c
    ld bc, $6d69                                  ; $5765: $01 $69 $6d
    ld l, l                                       ; $5768: $6d
    ld h, l                                       ; $5769: $65

jr_01c_576a:
    ld h, h                                       ; $576a: $64
    ld l, c                                       ; $576b: $69
    ld h, c                                       ; $576c: $61
    ld [hl], h                                    ; $576d: $74
    ld h, l                                       ; $576e: $65
    ld l, h                                       ; $576f: $6c

jr_01c_5770:
    ld a, c                                       ; $5770: $79
    jr nz, @+$72                                  ; $5771: $20 $70

    ld [hl], d                                    ; $5773: $72

jr_01c_5774:
    ld h, l                                       ; $5774: $65
    ld [hl], e                                    ; $5775: $73
    ld [hl], e                                    ; $5776: $73
    ld [bc], a                                    ; $5777: $02
    ld [hl], h                                    ; $5778: $74
    ld l, b                                       ; $5779: $68
    ld h, l                                       ; $577a: $65

jr_01c_577b:
    jr nz, @+$2d                                  ; $577b: $20 $2b

    jr nz, @+$45                                  ; $577d: $20 $43

    ld l, a                                       ; $577f: $6f
    ld l, [hl]                                    ; $5780: $6e
    ld [hl], h                                    ; $5781: $74
    ld [hl], d                                    ; $5782: $72
    ld l, a                                       ; $5783: $6f
    ld l, h                                       ; $5784: $6c
    jr nz, @+$52                                  ; $5785: $20 $50

    ld h, c                                       ; $5787: $61
    ld h, h                                       ; $5788: $64

jr_01c_5789:
    ld bc, $6e69                                  ; $5789: $01 $69 $6e
    jr nz, jr_01c_5802                            ; $578c: $20 $74

    ld l, b                                       ; $578e: $68
    ld h, l                                       ; $578f: $65

jr_01c_5790:
    jr nz, jr_01c_57f6                            ; $5790: $20 $64

    ld l, c                                       ; $5792: $69
    ld [hl], d                                    ; $5793: $72
    ld h, l                                       ; $5794: $65
    ld h, e                                       ; $5795: $63

jr_01c_5796:
    ld [hl], h                                    ; $5796: $74
    ld l, c                                       ; $5797: $69
    ld l, a                                       ; $5798: $6f
    ld l, [hl]                                    ; $5799: $6e
    ld bc, $706f                                  ; $579a: $01 $6f $70
    ld [hl], b                                    ; $579d: $70
    ld l, a                                       ; $579e: $6f

jr_01c_579f:
    ld [hl], e                                    ; $579f: $73
    ld l, c                                       ; $57a0: $69
    ld [hl], h                                    ; $57a1: $74
    ld h, l                                       ; $57a2: $65
    jr nz, jr_01c_5819                            ; $57a3: $20 $74

    ld l, b                                       ; $57a5: $68
    ld h, l                                       ; $57a6: $65
    jr nz, jr_01c_5818                            ; $57a7: $20 $6f

jr_01c_57a9:
    ld l, [hl]                                    ; $57a9: $6e
    ld h, l                                       ; $57aa: $65
    ld [bc], a                                    ; $57ab: $02
    ld l, c                                       ; $57ac: $69
    ld l, [hl]                                    ; $57ad: $6e
    jr nz, jr_01c_5827                            ; $57ae: $20 $77

    ld l, b                                       ; $57b0: $68
    ld l, c                                       ; $57b1: $69
    ld h, e                                       ; $57b2: $63
    ld l, b                                       ; $57b3: $68

jr_01c_57b4:
    jr nz, jr_01c_582f                            ; $57b4: $20 $79

jr_01c_57b6:
    ld l, a                                       ; $57b6: $6f
    ld [hl], l                                    ; $57b7: $75
    jr nz, jr_01c_5831                            ; $57b8: $20 $77

    ld l, c                                       ; $57ba: $69
    ld [hl], e                                    ; $57bb: $73
    ld l, b                                       ; $57bc: $68
    ld bc, $6874                                  ; $57bd: $01 $74 $68
    ld h, l                                       ; $57c0: $65

jr_01c_57c1:
    jr nz, jr_01c_5825                            ; $57c1: $20 $62

    ld h, c                                       ; $57c3: $61
    ld l, h                                       ; $57c4: $6c
    ld l, h                                       ; $57c5: $6c
    jr nz, jr_01c_583c                            ; $57c6: $20 $74

    ld l, a                                       ; $57c8: $6f
    jr nz, jr_01c_582e                            ; $57c9: $20 $63

    ld [hl], l                                    ; $57cb: $75

jr_01c_57cc:
    ld [hl], d                                    ; $57cc: $72
    halt                                          ; $57cd: $76
    ld h, l                                       ; $57ce: $65
    ld l, $03                                     ; $57cf: $2e $03
    nop                                           ; $57d1: $00
    ld c, e                                       ; $57d2: $4b
    ld h, l                                       ; $57d3: $65
    ld h, l                                       ; $57d4: $65
    ld [hl], b                                    ; $57d5: $70
    jr nz, jr_01c_5840                            ; $57d6: $20 $68

    ld l, a                                       ; $57d8: $6f
    ld l, h                                       ; $57d9: $6c
    ld h, h                                       ; $57da: $64
    ld l, c                                       ; $57db: $69
    ld l, [hl]                                    ; $57dc: $6e
    ld h, a                                       ; $57dd: $67
    jr nz, @+$76                                  ; $57de: $20 $74

    ld l, b                                       ; $57e0: $68
    ld h, l                                       ; $57e1: $65
    ld bc, $202b                                  ; $57e2: $01 $2b $20
    ld b, e                                       ; $57e5: $43
    ld l, a                                       ; $57e6: $6f
    ld l, [hl]                                    ; $57e7: $6e
    ld [hl], h                                    ; $57e8: $74
    ld [hl], d                                    ; $57e9: $72
    ld l, a                                       ; $57ea: $6f
    ld l, h                                       ; $57eb: $6c
    jr nz, @+$52                                  ; $57ec: $20 $50

    ld h, c                                       ; $57ee: $61
    ld h, h                                       ; $57ef: $64
    ld bc, $6e75                                  ; $57f0: $01 $75 $6e
    ld [hl], h                                    ; $57f3: $74
    ld l, c                                       ; $57f4: $69
    ld l, h                                       ; $57f5: $6c

jr_01c_57f6:
    jr nz, jr_01c_5861                            ; $57f6: $20 $69

    ld l, l                                       ; $57f8: $6d
    ld [hl], b                                    ; $57f9: $70
    ld h, c                                       ; $57fa: $61
    ld h, e                                       ; $57fb: $63
    ld [hl], h                                    ; $57fc: $74
    ld l, $03                                     ; $57fd: $2e $03
    nop                                           ; $57ff: $00
    ld c, a                                       ; $5800: $4f
    ld c, e                                       ; $5801: $4b

jr_01c_5802:
    ld l, $20                                     ; $5802: $2e $20
    ld c, c                                       ; $5804: $49
    ld [hl], h                                    ; $5805: $74
    jr nz, @+$79                                  ; $5806: $20 $77

    ld h, l                                       ; $5808: $65
    ld l, [hl]                                    ; $5809: $6e
    ld [hl], h                                    ; $580a: $74
    jr nz, jr_01c_5884                            ; $580b: $20 $77

    ld h, l                                       ; $580d: $65
    ld l, h                                       ; $580e: $6c
    ld l, h                                       ; $580f: $6c
    ld l, $01                                     ; $5810: $2e $01
    ld d, e                                       ; $5812: $53
    ld l, a                                       ; $5813: $6f
    inc l                                         ; $5814: $2c
    jr nz, jr_01c_588e                            ; $5815: $20 $77

    ld l, c                                       ; $5817: $69

jr_01c_5818:
    ld l, h                                       ; $5818: $6c

jr_01c_5819:
    ld l, h                                       ; $5819: $6c
    jr nz, jr_01c_5895                            ; $581a: $20 $79

    ld l, a                                       ; $581c: $6f
    ld [hl], l                                    ; $581d: $75
    jr nz, jr_01c_5894                            ; $581e: $20 $74

    ld [hl], d                                    ; $5820: $72
    ld a, c                                       ; $5821: $79
    ccf                                           ; $5822: $3f
    nop                                           ; $5823: $00
    ld d, h                                       ; $5824: $54

jr_01c_5825:
    ld l, b                                       ; $5825: $68
    ld h, l                                       ; $5826: $65

jr_01c_5827:
    ld [hl], d                                    ; $5827: $72
    ld h, l                                       ; $5828: $65
    daa                                           ; $5829: $27
    ld [hl], e                                    ; $582a: $73
    jr nz, jr_01c_588e                            ; $582b: $20 $61

    ld l, [hl]                                    ; $582d: $6e

jr_01c_582e:
    ld l, a                                       ; $582e: $6f

jr_01c_582f:
    ld [hl], h                                    ; $582f: $74
    ld l, b                                       ; $5830: $68

jr_01c_5831:
    ld h, l                                       ; $5831: $65
    ld [hl], d                                    ; $5832: $72
    jr nz, jr_01c_58ac                            ; $5833: $20 $77

    ld h, c                                       ; $5835: $61
    ld a, c                                       ; $5836: $79
    ld bc, $6f74                                  ; $5837: $01 $74 $6f
    jr nz, @+$66                                  ; $583a: $20 $64

jr_01c_583c:
    ld l, a                                       ; $583c: $6f
    jr nz, jr_01c_58a8                            ; $583d: $20 $69

    ld [hl], h                                    ; $583f: $74

jr_01c_5840:
    inc l                                         ; $5840: $2c
    jr nz, jr_01c_58b7                            ; $5841: $20 $74

    ld l, b                                       ; $5843: $68
    ld l, a                                       ; $5844: $6f
    ld [hl], l                                    ; $5845: $75
    ld h, a                                       ; $5846: $67
    ld l, b                                       ; $5847: $68
    ld l, $01                                     ; $5848: $2e $01
    ld c, l                                       ; $584a: $4d
    ld l, a                                       ; $584b: $6f
    halt                                          ; $584c: $76
    ld h, l                                       ; $584d: $65
    jr nz, @+$7b                                  ; $584e: $20 $79

    ld l, a                                       ; $5850: $6f
    ld [hl], l                                    ; $5851: $75
    ld [hl], d                                    ; $5852: $72
    jr nz, jr_01c_58be                            ; $5853: $20 $69

    ld l, l                                       ; $5855: $6d
    ld [hl], b                                    ; $5856: $70
    ld h, c                                       ; $5857: $61
    ld h, e                                       ; $5858: $63
    ld [hl], h                                    ; $5859: $74
    ld [bc], a                                    ; $585a: $02
    ld l, h                                       ; $585b: $6c
    ld h, l                                       ; $585c: $65
    ld h, [hl]                                    ; $585d: $66
    ld [hl], h                                    ; $585e: $74
    jr nz, jr_01c_58d0                            ; $585f: $20 $6f

jr_01c_5861:
    ld [hl], d                                    ; $5861: $72
    jr nz, jr_01c_58d6                            ; $5862: $20 $72

    ld l, c                                       ; $5864: $69
    ld h, a                                       ; $5865: $67
    ld l, b                                       ; $5866: $68
    ld [hl], h                                    ; $5867: $74
    jr nz, @+$76                                  ; $5868: $20 $74

    ld l, a                                       ; $586a: $6f
    ld bc, $7274                                  ; $586b: $01 $74 $72
    ld h, c                                       ; $586e: $61
    ld h, h                                       ; $586f: $64
    ld h, l                                       ; $5870: $65
    jr nz, jr_01c_58d7                            ; $5871: $20 $64

    ld l, c                                       ; $5873: $69
    ld [hl], e                                    ; $5874: $73
    ld [hl], h                                    ; $5875: $74
    ld h, c                                       ; $5876: $61
    ld l, [hl]                                    ; $5877: $6e
    ld h, e                                       ; $5878: $63
    ld h, l                                       ; $5879: $65
    ld bc, $6f66                                  ; $587a: $01 $66 $6f
    ld [hl], d                                    ; $587d: $72
    jr nz, jr_01c_58e3                            ; $587e: $20 $63

    ld [hl], l                                    ; $5880: $75
    ld [hl], d                                    ; $5881: $72
    halt                                          ; $5882: $76
    ld h, c                                       ; $5883: $61

jr_01c_5884:
    ld [hl], h                                    ; $5884: $74
    ld [hl], l                                    ; $5885: $75
    ld [hl], d                                    ; $5886: $72
    ld h, l                                       ; $5887: $65
    ld l, $03                                     ; $5888: $2e $03
    nop                                           ; $588a: $00
    ld b, [hl]                                    ; $588b: $46
    ld l, c                                       ; $588c: $69
    ld [hl], d                                    ; $588d: $72

jr_01c_588e:
    ld [hl], e                                    ; $588e: $73
    ld [hl], h                                    ; $588f: $74
    inc l                                         ; $5890: $2c
    jr nz, @+$75                                  ; $5891: $20 $73

    ld h, l                                       ; $5893: $65

jr_01c_5894:
    ld l, h                                       ; $5894: $6c

jr_01c_5895:
    ld h, l                                       ; $5895: $65
    ld h, e                                       ; $5896: $63
    ld [hl], h                                    ; $5897: $74
    ld bc, $6f4e                                  ; $5898: $01 $4e $6f
    ld [hl], d                                    ; $589b: $72
    ld l, l                                       ; $589c: $6d
    ld h, c                                       ; $589d: $61
    ld l, h                                       ; $589e: $6c
    jr nz, @+$52                                  ; $589f: $20 $50

    ld l, a                                       ; $58a1: $6f
    ld [hl], a                                    ; $58a2: $77
    ld h, l                                       ; $58a3: $65
    ld [hl], d                                    ; $58a4: $72
    ld l, $03                                     ; $58a5: $2e $03
    nop                                           ; $58a7: $00

jr_01c_58a8:
    ld c, [hl]                                    ; $58a8: $4e
    ld h, l                                       ; $58a9: $65
    ld a, b                                       ; $58aa: $78
    ld [hl], h                                    ; $58ab: $74

jr_01c_58ac:
    inc l                                         ; $58ac: $2c
    jr nz, jr_01c_5912                            ; $58ad: $20 $63

    ld l, b                                       ; $58af: $68
    ld l, a                                       ; $58b0: $6f
    ld l, a                                       ; $58b1: $6f
    ld [hl], e                                    ; $58b2: $73
    ld h, l                                       ; $58b3: $65
    ld bc, $2061                                  ; $58b4: $01 $61 $20

jr_01c_58b7:
    ld h, e                                       ; $58b7: $63
    ld l, h                                       ; $58b8: $6c
    ld [hl], l                                    ; $58b9: $75
    ld h, d                                       ; $58ba: $62
    ld l, $03                                     ; $58bb: $2e $03
    nop                                           ; $58bd: $00

jr_01c_58be:
    ld c, a                                       ; $58be: $4f
    ld c, e                                       ; $58bf: $4b
    ld l, $20                                     ; $58c0: $2e $20
    ld c, b                                       ; $58c2: $48
    ld l, c                                       ; $58c3: $69
    ld [hl], h                                    ; $58c4: $74
    jr nz, jr_01c_5930                            ; $58c5: $20 $69

    ld [hl], h                                    ; $58c7: $74
    ld hl, $0003                                  ; $58c8: $21 $03 $00
    ld d, h                                       ; $58cb: $54
    ld l, c                                       ; $58cc: $69
    ld l, l                                       ; $58cd: $6d
    ld l, c                                       ; $58ce: $69
    ld l, [hl]                                    ; $58cf: $6e

jr_01c_58d0:
    ld h, a                                       ; $58d0: $67
    daa                                           ; $58d1: $27
    ld [hl], e                                    ; $58d2: $73
    jr nz, jr_01c_5940                            ; $58d3: $20 $6b

    ld h, l                                       ; $58d5: $65

jr_01c_58d6:
    ld a, c                                       ; $58d6: $79

jr_01c_58d7:
    jr nz, jr_01c_5950                            ; $58d7: $20 $77

    ld l, c                                       ; $58d9: $69
    ld [hl], h                                    ; $58da: $74
    ld l, b                                       ; $58db: $68
    ld bc, $6e69                                  ; $58dc: $01 $69 $6e
    ld [hl], h                                    ; $58df: $74
    ld h, l                                       ; $58e0: $65
    ld l, [hl]                                    ; $58e1: $6e
    ld [hl], h                                    ; $58e2: $74

jr_01c_58e3:
    ld l, c                                       ; $58e3: $69
    ld l, a                                       ; $58e4: $6f
    ld l, [hl]                                    ; $58e5: $6e
    ld h, c                                       ; $58e6: $61
    ld l, h                                       ; $58e7: $6c
    jr nz, jr_01c_595d                            ; $58e8: $20 $73

    ld l, b                                       ; $58ea: $68
    ld l, a                                       ; $58eb: $6f
    ld [hl], h                                    ; $58ec: $74
    ld [hl], e                                    ; $58ed: $73
    inc l                                         ; $58ee: $2c
    ld bc, $6f73                                  ; $58ef: $01 $73 $6f
    jr nz, jr_01c_595f                            ; $58f2: $20 $6b

    ld h, l                                       ; $58f4: $65
    ld h, l                                       ; $58f5: $65
    ld [hl], b                                    ; $58f6: $70
    jr nz, jr_01c_596d                            ; $58f7: $20 $74

    ld [hl], d                                    ; $58f9: $72
    ld a, c                                       ; $58fa: $79
    ld l, c                                       ; $58fb: $69
    ld l, [hl]                                    ; $58fc: $6e
    ld h, a                                       ; $58fd: $67
    ld l, $03                                     ; $58fe: $2e $03
    nop                                           ; $5900: $00
    ld d, h                                       ; $5901: $54
    ld l, b                                       ; $5902: $68
    ld h, c                                       ; $5903: $61
    ld [hl], h                                    ; $5904: $74
    jr nz, jr_01c_5974                            ; $5905: $20 $6d

    ld [hl], l                                    ; $5907: $75
    ld h, e                                       ; $5908: $63
    ld l, b                                       ; $5909: $68
    jr nz, jr_01c_5970                            ; $590a: $20 $64

    ld h, l                                       ; $590c: $65
    halt                                          ; $590d: $76
    ld l, c                                       ; $590e: $69
    ld h, c                                       ; $590f: $61
    ld [hl], h                                    ; $5910: $74
    ld l, c                                       ; $5911: $69

jr_01c_5912:
    ld l, a                                       ; $5912: $6f

Call_01c_5913:
    ld l, [hl]                                    ; $5913: $6e
    ld bc, $7369                                  ; $5914: $01 $69 $73
    jr nz, jr_01c_597e                            ; $5917: $20 $65

    ld l, [hl]                                    ; $5919: $6e
    ld l, a                                       ; $591a: $6f
    ld [hl], l                                    ; $591b: $75
    ld h, a                                       ; $591c: $67
    ld l, b                                       ; $591d: $68
    ld l, $20                                     ; $591e: $2e $20
    ld d, h                                       ; $5920: $54
    ld [hl], d                                    ; $5921: $72
    ld a, c                                       ; $5922: $79
    jr nz, jr_01c_598e                            ; $5923: $20 $69

    ld [hl], h                                    ; $5925: $74
    ld bc, $6e6f                                  ; $5926: $01 $6f $6e
    jr nz, @+$76                                  ; $5929: $20 $74

    ld l, b                                       ; $592b: $68
    ld h, l                                       ; $592c: $65
    jr nz, jr_01c_5992                            ; $592d: $20 $63

    ld l, a                                       ; $592f: $6f

jr_01c_5930:
    ld [hl], l                                    ; $5930: $75
    ld [hl], d                                    ; $5931: $72
    ld [hl], e                                    ; $5932: $73
    ld h, l                                       ; $5933: $65
    ld l, $03                                     ; $5934: $2e $03
    nop                                           ; $5936: $00
    ld c, c                                       ; $5937: $49
    ld [hl], h                                    ; $5938: $74
    daa                                           ; $5939: $27
    ld [hl], e                                    ; $593a: $73
    jr nz, jr_01c_59b0                            ; $593b: $20 $73

    ld [hl], l                                    ; $593d: $75
    ld [hl], b                                    ; $593e: $70
    ld [hl], b                                    ; $593f: $70

jr_01c_5940:
    ld l, a                                       ; $5940: $6f
    ld [hl], e                                    ; $5941: $73
    ld h, l                                       ; $5942: $65
    ld h, h                                       ; $5943: $64
    jr nz, jr_01c_59ba                            ; $5944: $20 $74

    ld l, a                                       ; $5946: $6f
    ld bc, $6562                                  ; $5947: $01 $62 $65
    jr nz, jr_01c_59c0                            ; $594a: $20 $74

    ld l, a                                       ; $594c: $6f
    ld [hl], l                                    ; $594d: $75
    ld h, a                                       ; $594e: $67
    ld l, b                                       ; $594f: $68

jr_01c_5950:
    inc l                                         ; $5950: $2c
    jr nz, @+$64                                  ; $5951: $20 $62

    ld [hl], l                                    ; $5953: $75
    ld [hl], h                                    ; $5954: $74
    jr nz, jr_01c_59d0                            ; $5955: $20 $79

    ld l, a                                       ; $5957: $6f
    ld [hl], l                                    ; $5958: $75
    ld bc, $6964                                  ; $5959: $01 $64 $69
    ld h, h                                       ; $595c: $64

jr_01c_595d:
    jr nz, jr_01c_59c8                            ; $595d: $20 $69

jr_01c_595f:
    ld [hl], h                                    ; $595f: $74
    ld hl, $4e20                                  ; $5960: $21 $20 $4e
    ld l, c                                       ; $5963: $69
    ld h, e                                       ; $5964: $63
    ld h, l                                       ; $5965: $65
    jr nz, jr_01c_59d2                            ; $5966: $20 $6a

    ld l, a                                       ; $5968: $6f
    ld h, d                                       ; $5969: $62
    ld hl, $0003                                  ; $596a: $21 $03 $00

jr_01c_596d:
    ld e, c                                       ; $596d: $59
    ld l, a                                       ; $596e: $6f
    ld [hl], l                                    ; $596f: $75

jr_01c_5970:
    jr nz, jr_01c_59da                            ; $5970: $20 $68

    ld l, c                                       ; $5972: $69
    ld [hl], h                                    ; $5973: $74

jr_01c_5974:
    jr nz, @+$63                                  ; $5974: $20 $61

    jr nz, @+$76                                  ; $5976: $20 $74

    ld [hl], d                                    ; $5978: $72
    ld h, l                                       ; $5979: $65
    ld h, l                                       ; $597a: $65
    jr nz, jr_01c_59df                            ; $597b: $20 $62

    ld [hl], l                                    ; $597d: $75

jr_01c_597e:
    ld [hl], h                                    ; $597e: $74
    ld bc, $7473                                  ; $597f: $01 $73 $74
    ld l, c                                       ; $5982: $69
    ld l, h                                       ; $5983: $6c
    ld l, h                                       ; $5984: $6c
    jr nz, jr_01c_59ea                            ; $5985: $20 $63

    ld [hl], l                                    ; $5987: $75
    ld [hl], d                                    ; $5988: $72
    halt                                          ; $5989: $76
    ld h, l                                       ; $598a: $65
    ld h, h                                       ; $598b: $64
    jr nz, jr_01c_59f7                            ; $598c: $20 $69

jr_01c_598e:
    ld [hl], h                                    ; $598e: $74
    ld bc, $6e69                                  ; $598f: $01 $69 $6e

jr_01c_5992:
    ld hl, $5620                                  ; $5992: $21 $20 $56
    ld h, l                                       ; $5995: $65
    ld [hl], d                                    ; $5996: $72
    ld a, c                                       ; $5997: $79
    jr nz, jr_01c_5a08                            ; $5998: $20 $6e

    ld l, c                                       ; $599a: $69
    ld h, e                                       ; $599b: $63
    ld h, l                                       ; $599c: $65
    ld hl, $0003                                  ; $599d: $21 $03 $00
    ld e, c                                       ; $59a0: $59
    ld l, a                                       ; $59a1: $6f
    ld [hl], l                                    ; $59a2: $75
    jr nz, jr_01c_5a09                            ; $59a3: $20 $64

    ld l, c                                       ; $59a5: $69
    ld h, h                                       ; $59a6: $64
    ld l, [hl]                                    ; $59a7: $6e
    daa                                           ; $59a8: $27
    ld [hl], h                                    ; $59a9: $74
    jr nz, jr_01c_5a20                            ; $59aa: $20 $74

    ld l, a                                       ; $59ac: $6f
    ld [hl], l                                    ; $59ad: $75
    ld h, e                                       ; $59ae: $63
    ld l, b                                       ; $59af: $68

jr_01c_59b0:
    ld bc, $6874                                  ; $59b0: $01 $74 $68
    ld h, l                                       ; $59b3: $65
    jr nz, jr_01c_59e1                            ; $59b4: $20 $2b

    jr nz, jr_01c_59fb                            ; $59b6: $20 $43

    ld l, a                                       ; $59b8: $6f
    ld l, [hl]                                    ; $59b9: $6e

jr_01c_59ba:
    ld [hl], h                                    ; $59ba: $74
    ld [hl], d                                    ; $59bb: $72
    ld l, a                                       ; $59bc: $6f
    ld l, h                                       ; $59bd: $6c
    jr nz, jr_01c_5a10                            ; $59be: $20 $50

jr_01c_59c0:
    ld h, c                                       ; $59c0: $61
    ld h, h                                       ; $59c1: $64
    ld l, $2e                                     ; $59c2: $2e $2e
    ld l, $01                                     ; $59c4: $2e $01
    ld d, h                                       ; $59c6: $54
    ld l, b                                       ; $59c7: $68

jr_01c_59c8:
    ld h, c                                       ; $59c8: $61
    ld [hl], h                                    ; $59c9: $74
    daa                                           ; $59ca: $27
    ld [hl], e                                    ; $59cb: $73
    jr nz, jr_01c_5a45                            ; $59cc: $20 $77

    ld l, b                                       ; $59ce: $68
    ld a, c                                       ; $59cf: $79

jr_01c_59d0:
    ld l, $02                                     ; $59d0: $2e $02

jr_01c_59d2:
    ld c, e                                       ; $59d2: $4b
    ld h, l                                       ; $59d3: $65
    ld h, l                                       ; $59d4: $65
    ld [hl], b                                    ; $59d5: $70
    jr nz, jr_01c_5a4c                            ; $59d6: $20 $74

    ld [hl], d                                    ; $59d8: $72
    ld a, c                                       ; $59d9: $79

jr_01c_59da:
    ld l, c                                       ; $59da: $69
    ld l, [hl]                                    ; $59db: $6e
    ld h, a                                       ; $59dc: $67
    jr nz, jr_01c_5a54                            ; $59dd: $20 $75

jr_01c_59df:
    ld l, [hl]                                    ; $59df: $6e
    ld [hl], h                                    ; $59e0: $74

jr_01c_59e1:
    ld l, c                                       ; $59e1: $69
    ld l, h                                       ; $59e2: $6c
    ld bc, $6f79                                  ; $59e3: $01 $79 $6f
    ld [hl], l                                    ; $59e6: $75
    jr nz, jr_01c_5a50                            ; $59e7: $20 $67

    ld h, l                                       ; $59e9: $65

jr_01c_59ea:
    ld [hl], h                                    ; $59ea: $74
    jr nz, jr_01c_5a62                            ; $59eb: $20 $75

    ld [hl], e                                    ; $59ed: $73
    ld h, l                                       ; $59ee: $65
    ld h, h                                       ; $59ef: $64
    jr nz, jr_01c_5a66                            ; $59f0: $20 $74

    ld l, a                                       ; $59f2: $6f
    ld bc, $7375                                  ; $59f3: $01 $75 $73
    ld l, c                                       ; $59f6: $69

jr_01c_59f7:
    ld l, [hl]                                    ; $59f7: $6e
    ld h, a                                       ; $59f8: $67
    jr nz, jr_01c_5a6e                            ; $59f9: $20 $73

jr_01c_59fb:
    ld l, c                                       ; $59fb: $69
    ld h, h                                       ; $59fc: $64
    ld h, l                                       ; $59fd: $65
    ld [hl], e                                    ; $59fe: $73
    ld [hl], b                                    ; $59ff: $70
    ld l, c                                       ; $5a00: $69
    ld l, [hl]                                    ; $5a01: $6e
    ld l, $03                                     ; $5a02: $2e $03
    nop                                           ; $5a04: $00
    ld c, e                                       ; $5a05: $4b
    ld h, l                                       ; $5a06: $65
    ld h, l                                       ; $5a07: $65

jr_01c_5a08:
    ld [hl], b                                    ; $5a08: $70

jr_01c_5a09:
    jr nz, jr_01c_5a7f                            ; $5a09: $20 $74

    ld [hl], d                                    ; $5a0b: $72
    ld a, c                                       ; $5a0c: $79
    ld l, c                                       ; $5a0d: $69
    ld l, [hl]                                    ; $5a0e: $6e
    ld h, a                                       ; $5a0f: $67

jr_01c_5a10:
    jr nz, jr_01c_5a87                            ; $5a10: $20 $75

    ld l, [hl]                                    ; $5a12: $6e
    ld [hl], h                                    ; $5a13: $74
    ld l, c                                       ; $5a14: $69
    ld l, h                                       ; $5a15: $6c
    ld bc, $6f79                                  ; $5a16: $01 $79 $6f
    ld [hl], l                                    ; $5a19: $75
    jr nz, jr_01c_5a7f                            ; $5a1a: $20 $63

    ld h, c                                       ; $5a1c: $61
    ld l, [hl]                                    ; $5a1d: $6e
    jr nz, jr_01c_5a85                            ; $5a1e: $20 $65

jr_01c_5a20:
    ld h, c                                       ; $5a20: $61
    ld [hl], e                                    ; $5a21: $73
    ld l, c                                       ; $5a22: $69
    ld l, h                                       ; $5a23: $6c
    ld a, c                                       ; $5a24: $79
    ld bc, $6873                                  ; $5a25: $01 $73 $68
    ld l, a                                       ; $5a28: $6f
    ld l, a                                       ; $5a29: $6f
    ld [hl], h                                    ; $5a2a: $74
    jr nz, @+$63                                  ; $5a2b: $20 $61

    ld [hl], d                                    ; $5a2d: $72
    ld l, a                                       ; $5a2e: $6f
    ld [hl], l                                    ; $5a2f: $75
    ld l, [hl]                                    ; $5a30: $6e
    ld h, h                                       ; $5a31: $64
    jr nz, jr_01c_5aa8                            ; $5a32: $20 $74

    ld [hl], d                                    ; $5a34: $72
    ld h, l                                       ; $5a35: $65
    ld h, l                                       ; $5a36: $65
    ld [hl], e                                    ; $5a37: $73
    ld l, $03                                     ; $5a38: $2e $03
    nop                                           ; $5a3a: $00
    ld c, c                                       ; $5a3b: $49
    daa                                           ; $5a3c: $27
    ld l, l                                       ; $5a3d: $6d
    jr nz, @+$72                                  ; $5a3e: $20 $70

    ld [hl], d                                    ; $5a40: $72
    ld h, c                                       ; $5a41: $61
    ld h, e                                       ; $5a42: $63
    ld [hl], h                                    ; $5a43: $74
    ld l, c                                       ; $5a44: $69

jr_01c_5a45:
    ld h, e                                       ; $5a45: $63
    ld l, c                                       ; $5a46: $69
    ld l, [hl]                                    ; $5a47: $6e
    ld h, a                                       ; $5a48: $67
    ld bc, $6977                                  ; $5a49: $01 $77 $69

jr_01c_5a4c:
    ld l, [hl]                                    ; $5a4c: $6e
    ld h, h                                       ; $5a4d: $64
    jr nz, jr_01c_5ac3                            ; $5a4e: $20 $73

jr_01c_5a50:
    ld l, b                                       ; $5a50: $68
    ld l, a                                       ; $5a51: $6f
    ld [hl], h                                    ; $5a52: $74
    ld [hl], e                                    ; $5a53: $73

jr_01c_5a54:
    ld l, $20                                     ; $5a54: $2e $20
    ld d, a                                       ; $5a56: $57
    ld h, c                                       ; $5a57: $61
    ld l, [hl]                                    ; $5a58: $6e
    ld [hl], h                                    ; $5a59: $74
    ld bc, $6f74                                  ; $5a5a: $01 $74 $6f
    jr nz, jr_01c_5ad2                            ; $5a5d: $20 $73

    ld [hl], h                                    ; $5a5f: $74
    ld [hl], l                                    ; $5a60: $75
    ld h, h                                       ; $5a61: $64

jr_01c_5a62:
    ld a, c                                       ; $5a62: $79
    jr nz, jr_01c_5adc                            ; $5a63: $20 $77

    ld l, c                                       ; $5a65: $69

jr_01c_5a66:
    ld [hl], h                                    ; $5a66: $74
    ld l, b                                       ; $5a67: $68
    jr nz, jr_01c_5ad7                            ; $5a68: $20 $6d

    ld h, l                                       ; $5a6a: $65
    ccf                                           ; $5a6b: $3f
    nop                                           ; $5a6c: $00
    ld d, l                                       ; $5a6d: $55

jr_01c_5a6e:
    ld [hl], e                                    ; $5a6e: $73
    ld h, l                                       ; $5a6f: $65
    jr nz, jr_01c_5ade                            ; $5a70: $20 $6c

    ld l, a                                       ; $5a72: $6f
    ld [hl], a                                    ; $5a73: $77
    ld h, l                                       ; $5a74: $65
    ld [hl], d                                    ; $5a75: $72
    jr nz, jr_01c_5adb                            ; $5a76: $20 $63

    ld l, h                                       ; $5a78: $6c
    ld [hl], l                                    ; $5a79: $75
    ld h, d                                       ; $5a7a: $62
    ld [hl], e                                    ; $5a7b: $73
    jr nz, jr_01c_5ae7                            ; $5a7c: $20 $69

    ld l, [hl]                                    ; $5a7e: $6e

jr_01c_5a7f:
    ld bc, $6174                                  ; $5a7f: $01 $74 $61
    ld l, c                                       ; $5a82: $69
    ld l, h                                       ; $5a83: $6c
    ld [hl], a                                    ; $5a84: $77

jr_01c_5a85:
    ld l, c                                       ; $5a85: $69
    ld l, [hl]                                    ; $5a86: $6e

jr_01c_5a87:
    ld h, h                                       ; $5a87: $64
    ld [hl], e                                    ; $5a88: $73
    jr nz, @+$63                                  ; $5a89: $20 $61

    ld l, [hl]                                    ; $5a8b: $6e
    ld h, h                                       ; $5a8c: $64
    jr nz, jr_01c_5af7                            ; $5a8d: $20 $68

    ld l, c                                       ; $5a8f: $69
    ld h, a                                       ; $5a90: $67
    ld l, b                                       ; $5a91: $68
    ld h, l                                       ; $5a92: $65
    ld [hl], d                                    ; $5a93: $72
    ld bc, $6e6f                                  ; $5a94: $01 $6f $6e
    ld h, l                                       ; $5a97: $65
    ld [hl], e                                    ; $5a98: $73
    jr nz, jr_01c_5b04                            ; $5a99: $20 $69

    ld l, [hl]                                    ; $5a9b: $6e
    jr nz, jr_01c_5b06                            ; $5a9c: $20 $68

    ld h, l                                       ; $5a9e: $65
    ld h, c                                       ; $5a9f: $61
    ld h, h                                       ; $5aa0: $64
    ld [hl], a                                    ; $5aa1: $77
    ld l, c                                       ; $5aa2: $69
    ld l, [hl]                                    ; $5aa3: $6e
    ld h, h                                       ; $5aa4: $64
    ld [hl], e                                    ; $5aa5: $73
    ld l, $03                                     ; $5aa6: $2e $03

jr_01c_5aa8:
    nop                                           ; $5aa8: $00
    ld c, c                                       ; $5aa9: $49
    ld h, [hl]                                    ; $5aaa: $66
    jr nz, jr_01c_5b26                            ; $5aab: $20 $79

    ld l, a                                       ; $5aad: $6f
    ld [hl], l                                    ; $5aae: $75
    jr nz, @+$67                                  ; $5aaf: $20 $65

    halt                                          ; $5ab1: $76
    ld h, l                                       ; $5ab2: $65
    ld [hl], d                                    ; $5ab3: $72
    jr nz, jr_01c_5b1e                            ; $5ab4: $20 $68

    ld l, c                                       ; $5ab6: $69
    ld [hl], h                                    ; $5ab7: $74
    jr nz, jr_01c_5b23                            ; $5ab8: $20 $69

    ld [hl], h                                    ; $5aba: $74
    ld bc, $6972                                  ; $5abb: $01 $72 $69
    ld h, a                                       ; $5abe: $67
    ld l, b                                       ; $5abf: $68
    ld [hl], h                                    ; $5ac0: $74
    jr nz, @+$64                                  ; $5ac1: $20 $62

jr_01c_5ac3:
    ld [hl], l                                    ; $5ac3: $75
    ld [hl], h                                    ; $5ac4: $74
    jr nz, jr_01c_5b2b                            ; $5ac5: $20 $64

    ld l, c                                       ; $5ac7: $69
    ld h, h                                       ; $5ac8: $64
    ld l, [hl]                                    ; $5ac9: $6e
    daa                                           ; $5aca: $27
    ld [hl], h                                    ; $5acb: $74
    ld bc, $6567                                  ; $5acc: $01 $67 $65
    ld [hl], h                                    ; $5acf: $74
    jr nz, jr_01c_5b46                            ; $5ad0: $20 $74

jr_01c_5ad2:
    ld l, a                                       ; $5ad2: $6f
    jr nz, jr_01c_5b49                            ; $5ad3: $20 $74

    ld l, b                                       ; $5ad5: $68
    ld h, l                                       ; $5ad6: $65

jr_01c_5ad7:
    jr nz, jr_01c_5b49                            ; $5ad7: $20 $70

    ld l, c                                       ; $5ad9: $69
    ld l, [hl]                                    ; $5ada: $6e

jr_01c_5adb:
    inc l                                         ; $5adb: $2c

jr_01c_5adc:
    ld [bc], a                                    ; $5adc: $02
    ld l, c                                       ; $5add: $69

jr_01c_5ade:
    ld [hl], h                                    ; $5ade: $74
    daa                                           ; $5adf: $27
    ld [hl], e                                    ; $5ae0: $73
    jr nz, jr_01c_5b53                            ; $5ae1: $20 $70

    ld [hl], d                                    ; $5ae3: $72
    ld l, a                                       ; $5ae4: $6f
    ld h, d                                       ; $5ae5: $62
    ld h, c                                       ; $5ae6: $61

jr_01c_5ae7:
    ld h, d                                       ; $5ae7: $62
    ld l, h                                       ; $5ae8: $6c
    ld a, c                                       ; $5ae9: $79
    ld bc, $6327                                  ; $5aea: $01 $27 $63
    ld h, c                                       ; $5aed: $61
    ld [hl], l                                    ; $5aee: $75
    ld [hl], e                                    ; $5aef: $73
    ld h, l                                       ; $5af0: $65
    jr nz, jr_01c_5b6c                            ; $5af1: $20 $79

    ld l, a                                       ; $5af3: $6f
    ld [hl], l                                    ; $5af4: $75
    jr nz, jr_01c_5b5b                            ; $5af5: $20 $64

jr_01c_5af7:
    ld l, c                                       ; $5af7: $69
    ld h, h                                       ; $5af8: $64
    ld l, [hl]                                    ; $5af9: $6e
    daa                                           ; $5afa: $27
    ld [hl], h                                    ; $5afb: $74
    ld bc, $6167                                  ; $5afc: $01 $67 $61
    ld [hl], l                                    ; $5aff: $75
    ld h, a                                       ; $5b00: $67
    ld h, l                                       ; $5b01: $65
    jr nz, jr_01c_5b78                            ; $5b02: $20 $74

jr_01c_5b04:
    ld l, b                                       ; $5b04: $68
    ld h, l                                       ; $5b05: $65

jr_01c_5b06:
    jr nz, @+$79                                  ; $5b06: $20 $77

    ld l, c                                       ; $5b08: $69
    ld l, [hl]                                    ; $5b09: $6e
    ld h, h                                       ; $5b0a: $64
    ld l, $03                                     ; $5b0b: $2e $03
    nop                                           ; $5b0d: $00
    ld c, c                                       ; $5b0e: $49
    ld h, [hl]                                    ; $5b0f: $66
    jr nz, @+$7b                                  ; $5b10: $20 $79

    ld l, a                                       ; $5b12: $6f
    ld [hl], l                                    ; $5b13: $75
    ld [hl], d                                    ; $5b14: $72
    jr nz, jr_01c_5b7a                            ; $5b15: $20 $63

    ld l, h                                       ; $5b17: $6c
    ld [hl], l                                    ; $5b18: $75
    ld h, d                                       ; $5b19: $62
    jr nz, @+$71                                  ; $5b1a: $20 $6f

    ld l, [hl]                                    ; $5b1c: $6e
    ld l, h                                       ; $5b1d: $6c

jr_01c_5b1e:
    ld a, c                                       ; $5b1e: $79
    ld bc, $6567                                  ; $5b1f: $01 $67 $65
    ld [hl], h                                    ; $5b22: $74

jr_01c_5b23:
    ld [hl], e                                    ; $5b23: $73
    jr nz, jr_01c_5b9f                            ; $5b24: $20 $79

jr_01c_5b26:
    ld l, a                                       ; $5b26: $6f
    ld [hl], l                                    ; $5b27: $75
    jr nz, @+$76                                  ; $5b28: $20 $74

    ld l, a                                       ; $5b2a: $6f

jr_01c_5b2b:
    jr nz, jr_01c_5ba1                            ; $5b2b: $20 $74

    ld l, b                                       ; $5b2d: $68
    ld h, l                                       ; $5b2e: $65
    ld bc, $696d                                  ; $5b2f: $01 $6d $69
    ld h, h                                       ; $5b32: $64
    ld h, h                                       ; $5b33: $64
    ld l, h                                       ; $5b34: $6c
    ld h, l                                       ; $5b35: $65
    jr nz, jr_01c_5ba7                            ; $5b36: $20 $6f

    ld h, [hl]                                    ; $5b38: $66
    jr nz, jr_01c_5baf                            ; $5b39: $20 $74

    ld l, b                                       ; $5b3b: $68
    ld h, l                                       ; $5b3c: $65
    ld [bc], a                                    ; $5b3d: $02
    ld h, a                                       ; $5b3e: $67
    ld [hl], d                                    ; $5b3f: $72
    ld h, l                                       ; $5b40: $65
    ld h, l                                       ; $5b41: $65
    ld l, [hl]                                    ; $5b42: $6e
    inc l                                         ; $5b43: $2c
    jr nz, @+$7b                                  ; $5b44: $20 $79

jr_01c_5b46:
    ld l, a                                       ; $5b46: $6f
    ld [hl], l                                    ; $5b47: $75
    daa                                           ; $5b48: $27

jr_01c_5b49:
    ld l, h                                       ; $5b49: $6c
    ld l, h                                       ; $5b4a: $6c
    jr nz, jr_01c_5bb0                            ; $5b4b: $20 $63

    ld l, a                                       ; $5b4d: $6f
    ld l, l                                       ; $5b4e: $6d
    ld h, l                                       ; $5b4f: $65
    ld bc, $7075                                  ; $5b50: $01 $75 $70

jr_01c_5b53:
    jr nz, jr_01c_5bc8                            ; $5b53: $20 $73

    ld l, b                                       ; $5b55: $68
    ld l, a                                       ; $5b56: $6f
    ld [hl], d                                    ; $5b57: $72
    ld [hl], h                                    ; $5b58: $74
    ld l, $20                                     ; $5b59: $2e $20

jr_01c_5b5b:
    ld b, d                                       ; $5b5b: $42
    ld [hl], l                                    ; $5b5c: $75
    ld [hl], h                                    ; $5b5d: $74
    jr nz, jr_01c_5bc1                            ; $5b5e: $20 $61

    ld bc, $6968                                  ; $5b60: $01 $68 $69
    ld h, a                                       ; $5b63: $67
    ld l, b                                       ; $5b64: $68
    ld h, l                                       ; $5b65: $65
    ld [hl], d                                    ; $5b66: $72
    jr nz, @+$65                                  ; $5b67: $20 $63

    ld l, h                                       ; $5b69: $6c
    ld [hl], l                                    ; $5b6a: $75
    ld h, d                                       ; $5b6b: $62

jr_01c_5b6c:
    jr nz, jr_01c_5bde                            ; $5b6c: $20 $70

    ld [hl], l                                    ; $5b6e: $75
    ld [hl], h                                    ; $5b6f: $74
    ld [hl], e                                    ; $5b70: $73
    ld [bc], a                                    ; $5b71: $02
    ld a, c                                       ; $5b72: $79
    ld l, a                                       ; $5b73: $6f
    ld [hl], l                                    ; $5b74: $75
    jr nz, jr_01c_5be6                            ; $5b75: $20 $6f

    halt                                          ; $5b77: $76

jr_01c_5b78:
    ld h, l                                       ; $5b78: $65
    ld [hl], d                                    ; $5b79: $72

jr_01c_5b7a:
    inc l                                         ; $5b7a: $2c
    jr nz, jr_01c_5bf0                            ; $5b7b: $20 $73

    ld l, a                                       ; $5b7d: $6f
    jr nz, jr_01c_5bf9                            ; $5b7e: $20 $79

    ld l, a                                       ; $5b80: $6f
    ld [hl], l                                    ; $5b81: $75
    ld bc, $6168                                  ; $5b82: $01 $68 $61
    halt                                          ; $5b85: $76
    ld h, l                                       ; $5b86: $65
    jr nz, @+$76                                  ; $5b87: $20 $74

    ld l, a                                       ; $5b89: $6f
    jr nz, @+$65                                  ; $5b8a: $20 $63

    ld l, a                                       ; $5b8c: $6f
    ld l, [hl]                                    ; $5b8d: $6e
    ld [hl], e                                    ; $5b8e: $73
    ld l, c                                       ; $5b8f: $69
    ld h, h                                       ; $5b90: $64
    ld h, l                                       ; $5b91: $65
    ld [hl], d                                    ; $5b92: $72
    ld bc, $7473                                  ; $5b93: $01 $73 $74
    ld [hl], d                                    ; $5b96: $72
    ld h, l                                       ; $5b97: $65
    ld l, [hl]                                    ; $5b98: $6e
    ld h, a                                       ; $5b99: $67
    ld [hl], h                                    ; $5b9a: $74
    ld l, b                                       ; $5b9b: $68
    inc l                                         ; $5b9c: $2c
    jr nz, jr_01c_5c13                            ; $5b9d: $20 $74

jr_01c_5b9f:
    ld l, a                                       ; $5b9f: $6f
    ld l, a                                       ; $5ba0: $6f

jr_01c_5ba1:
    ld l, $03                                     ; $5ba1: $2e $03
    nop                                           ; $5ba3: $00
    ld b, [hl]                                    ; $5ba4: $46
    ld l, a                                       ; $5ba5: $6f
    ld [hl], d                                    ; $5ba6: $72

jr_01c_5ba7:
    jr nz, jr_01c_5c0a                            ; $5ba7: $20 $61

    ld l, [hl]                                    ; $5ba9: $6e
    jr nz, jr_01c_5c0d                            ; $5baa: $20 $61

    ld h, e                                       ; $5bac: $63
    ld h, e                                       ; $5bad: $63
    ld [hl], l                                    ; $5bae: $75

jr_01c_5baf:
    ld [hl], d                                    ; $5baf: $72

jr_01c_5bb0:
    ld h, c                                       ; $5bb0: $61
    ld [hl], h                                    ; $5bb1: $74
    ld h, l                                       ; $5bb2: $65
    ld bc, $7269                                  ; $5bb3: $01 $69 $72
    ld l, a                                       ; $5bb6: $6f
    ld l, [hl]                                    ; $5bb7: $6e
    jr nz, jr_01c_5c2d                            ; $5bb8: $20 $73

    ld l, b                                       ; $5bba: $68
    ld l, a                                       ; $5bbb: $6f
    ld [hl], h                                    ; $5bbc: $74
    inc l                                         ; $5bbd: $2c
    jr nz, jr_01c_5c2e                            ; $5bbe: $20 $6e

    ld l, a                                       ; $5bc0: $6f

jr_01c_5bc1:
    ld [hl], d                                    ; $5bc1: $72
    ld l, l                                       ; $5bc2: $6d
    ld h, c                                       ; $5bc3: $61
    ld l, h                                       ; $5bc4: $6c
    ld bc, $6f70                                  ; $5bc5: $01 $70 $6f

jr_01c_5bc8:
    ld [hl], a                                    ; $5bc8: $77
    ld h, l                                       ; $5bc9: $65
    ld [hl], d                                    ; $5bca: $72
    jr nz, jr_01c_5c36                            ; $5bcb: $20 $69

    ld [hl], e                                    ; $5bcd: $73
    jr nz, jr_01c_5c36                            ; $5bce: $20 $66

    ld l, c                                       ; $5bd0: $69
    ld l, [hl]                                    ; $5bd1: $6e
    ld h, l                                       ; $5bd2: $65
    ld l, $03                                     ; $5bd3: $2e $03
    nop                                           ; $5bd5: $00
    ld c, [hl]                                    ; $5bd6: $4e
    ld h, l                                       ; $5bd7: $65
    ld a, b                                       ; $5bd8: $78
    ld [hl], h                                    ; $5bd9: $74
    inc l                                         ; $5bda: $2c
    jr nz, jr_01c_5c40                            ; $5bdb: $20 $63

    ld l, b                                       ; $5bdd: $68

jr_01c_5bde:
    ld l, a                                       ; $5bde: $6f
    ld l, a                                       ; $5bdf: $6f
    ld [hl], e                                    ; $5be0: $73
    ld h, l                                       ; $5be1: $65
    ld bc, $2061                                  ; $5be2: $01 $61 $20
    ld h, e                                       ; $5be5: $63

jr_01c_5be6:
    ld l, h                                       ; $5be6: $6c
    ld [hl], l                                    ; $5be7: $75
    ld h, d                                       ; $5be8: $62
    ld l, $03                                     ; $5be9: $2e $03
    nop                                           ; $5beb: $00
    ld c, c                                       ; $5bec: $49
    ld [hl], h                                    ; $5bed: $74
    jr nz, jr_01c_5c5c                            ; $5bee: $20 $6c

jr_01c_5bf0:
    ld l, a                                       ; $5bf0: $6f
    ld l, a                                       ; $5bf1: $6f
    ld l, e                                       ; $5bf2: $6b
    ld [hl], e                                    ; $5bf3: $73
    jr nz, @+$6e                                  ; $5bf4: $20 $6c

    ld l, c                                       ; $5bf6: $69
    ld l, e                                       ; $5bf7: $6b
    ld h, l                                       ; $5bf8: $65

jr_01c_5bf9:
    jr nz, jr_01c_5c5c                            ; $5bf9: $20 $61

    ld bc, $6568                                  ; $5bfb: $01 $68 $65
    ld h, c                                       ; $5bfe: $61
    ld h, h                                       ; $5bff: $64
    ld [hl], a                                    ; $5c00: $77
    ld l, c                                       ; $5c01: $69
    ld l, [hl]                                    ; $5c02: $6e
    ld h, h                                       ; $5c03: $64
    ld l, $20                                     ; $5c04: $2e $20
    ld c, c                                       ; $5c06: $49
    daa                                           ; $5c07: $27
    ld l, h                                       ; $5c08: $6c
    ld l, h                                       ; $5c09: $6c

jr_01c_5c0a:
    jr nz, jr_01c_5c80                            ; $5c0a: $20 $74

    ld [hl], d                                    ; $5c0c: $72

jr_01c_5c0d:
    ld a, c                                       ; $5c0d: $79
    ld bc, $2061                                  ; $5c0e: $01 $61 $20
    ld h, d                                       ; $5c11: $62
    ld l, c                                       ; $5c12: $69

jr_01c_5c13:
    ld h, a                                       ; $5c13: $67
    ld h, a                                       ; $5c14: $67
    ld h, l                                       ; $5c15: $65
    ld [hl], d                                    ; $5c16: $72
    jr nz, jr_01c_5c7c                            ; $5c17: $20 $63

    ld l, h                                       ; $5c19: $6c
    ld [hl], l                                    ; $5c1a: $75
    ld h, d                                       ; $5c1b: $62
    ld l, $03                                     ; $5c1c: $2e $03
    nop                                           ; $5c1e: $00
    ld c, b                                       ; $5c1f: $48
    ld l, l                                       ; $5c20: $6d
    ld l, l                                       ; $5c21: $6d
    ld hl, $5020                                  ; $5c22: $21 $20 $50
    ld [hl], d                                    ; $5c25: $72
    ld h, l                                       ; $5c26: $65
    ld [hl], h                                    ; $5c27: $74
    ld [hl], h                                    ; $5c28: $74
    ld a, c                                       ; $5c29: $79
    jr nz, jr_01c_5c93                            ; $5c2a: $20 $67

    ld l, a                                       ; $5c2c: $6f

jr_01c_5c2d:
    ld l, a                                       ; $5c2d: $6f

jr_01c_5c2e:
    ld h, h                                       ; $5c2e: $64
    ld hl, $4d01                                  ; $5c2f: $21 $01 $4d
    ld a, c                                       ; $5c32: $79
    jr nz, jr_01c_5c98                            ; $5c33: $20 $63

    ld l, h                                       ; $5c35: $6c

jr_01c_5c36:
    ld [hl], l                                    ; $5c36: $75
    ld h, d                                       ; $5c37: $62
    jr nz, @+$75                                  ; $5c38: $20 $73

    ld h, l                                       ; $5c3a: $65
    ld l, h                                       ; $5c3b: $6c
    ld h, l                                       ; $5c3c: $65
    ld h, e                                       ; $5c3d: $63
    ld [hl], h                                    ; $5c3e: $74
    ld l, c                                       ; $5c3f: $69

jr_01c_5c40:
    ld l, a                                       ; $5c40: $6f
    ld l, [hl]                                    ; $5c41: $6e
    ld bc, $6177                                  ; $5c42: $01 $77 $61
    ld [hl], e                                    ; $5c45: $73
    jr nz, jr_01c_5cba                            ; $5c46: $20 $72

    ld l, c                                       ; $5c48: $69
    ld h, a                                       ; $5c49: $67
    ld l, b                                       ; $5c4a: $68
    ld [hl], h                                    ; $5c4b: $74
    jr nz, jr_01c_5c7b                            ; $5c4c: $20 $2d

    jr nz, jr_01c_5cc4                            ; $5c4e: $20 $74

    ld l, b                                       ; $5c50: $68
    ld h, c                                       ; $5c51: $61
    ld [hl], h                                    ; $5c52: $74
    daa                                           ; $5c53: $27
    ld [hl], e                                    ; $5c54: $73
    ld [bc], a                                    ; $5c55: $02
    ld [hl], a                                    ; $5c56: $77
    ld l, b                                       ; $5c57: $68
    ld a, c                                       ; $5c58: $79
    ld hl, $4f20                                  ; $5c59: $21 $20 $4f

jr_01c_5c5c:
    ld c, e                                       ; $5c5c: $4b
    ld l, $20                                     ; $5c5d: $2e $20
    ld b, h                                       ; $5c5f: $44
    ld l, a                                       ; $5c60: $6f
    jr nz, @+$7b                                  ; $5c61: $20 $79

    ld l, a                                       ; $5c63: $6f
    ld [hl], l                                    ; $5c64: $75
    ld bc, $6177                                  ; $5c65: $01 $77 $61
    ld l, [hl]                                    ; $5c68: $6e
    ld [hl], h                                    ; $5c69: $74
    jr nz, jr_01c_5ce0                            ; $5c6a: $20 $74

    ld l, a                                       ; $5c6c: $6f
    jr nz, jr_01c_5ce3                            ; $5c6d: $20 $74

    ld [hl], d                                    ; $5c6f: $72
    ld a, c                                       ; $5c70: $79
    ccf                                           ; $5c71: $3f
    nop                                           ; $5c72: $00
    ld c, c                                       ; $5c73: $49
    ld l, [hl]                                    ; $5c74: $6e
    jr nz, jr_01c_5cd8                            ; $5c75: $20 $61

    jr nz, jr_01c_5ced                            ; $5c77: $20 $74

    ld h, c                                       ; $5c79: $61
    ld l, c                                       ; $5c7a: $69

jr_01c_5c7b:
    ld l, h                                       ; $5c7b: $6c

jr_01c_5c7c:
    ld [hl], a                                    ; $5c7c: $77
    ld l, c                                       ; $5c7d: $69
    ld l, [hl]                                    ; $5c7e: $6e
    ld h, h                                       ; $5c7f: $64

jr_01c_5c80:
    inc l                                         ; $5c80: $2c
    jr nz, jr_01c_5cf8                            ; $5c81: $20 $75

    ld [hl], e                                    ; $5c83: $73
    ld h, l                                       ; $5c84: $65
    ld bc, $2061                                  ; $5c85: $01 $61 $20
    ld [hl], e                                    ; $5c88: $73
    ld l, l                                       ; $5c89: $6d
    ld h, c                                       ; $5c8a: $61
    ld l, h                                       ; $5c8b: $6c
    ld l, h                                       ; $5c8c: $6c
    ld h, l                                       ; $5c8d: $65
    ld [hl], d                                    ; $5c8e: $72
    jr nz, jr_01c_5cf4                            ; $5c8f: $20 $63

    ld l, h                                       ; $5c91: $6c
    ld [hl], l                                    ; $5c92: $75

jr_01c_5c93:
    ld h, d                                       ; $5c93: $62
    inc l                                         ; $5c94: $2c
    jr nz, jr_01c_5d0a                            ; $5c95: $20 $73

    ld l, a                                       ; $5c97: $6f

jr_01c_5c98:
    ld bc, $6f79                                  ; $5c98: $01 $79 $6f
    ld [hl], l                                    ; $5c9b: $75
    jr nz, jr_01c_5d02                            ; $5c9c: $20 $64

    ld l, a                                       ; $5c9e: $6f
    ld l, [hl]                                    ; $5c9f: $6e
    daa                                           ; $5ca0: $27
    ld [hl], h                                    ; $5ca1: $74
    jr nz, jr_01c_5d13                            ; $5ca2: $20 $6f

    halt                                          ; $5ca4: $76
    ld h, l                                       ; $5ca5: $65
    ld [hl], d                                    ; $5ca6: $72
    ld [hl], e                                    ; $5ca7: $73
    ld l, b                                       ; $5ca8: $68
    ld l, a                                       ; $5ca9: $6f
    ld l, a                                       ; $5caa: $6f
    ld [hl], h                                    ; $5cab: $74
    ld l, $03                                     ; $5cac: $2e $03
    nop                                           ; $5cae: $00
    ld b, [hl]                                    ; $5caf: $46
    ld l, c                                       ; $5cb0: $69
    ld [hl], d                                    ; $5cb1: $72
    ld [hl], e                                    ; $5cb2: $73
    ld [hl], h                                    ; $5cb3: $74
    inc l                                         ; $5cb4: $2c
    jr nz, jr_01c_5d25                            ; $5cb5: $20 $6e

    ld l, a                                       ; $5cb7: $6f
    ld [hl], d                                    ; $5cb8: $72
    ld l, l                                       ; $5cb9: $6d

jr_01c_5cba:
    ld h, c                                       ; $5cba: $61
    ld l, h                                       ; $5cbb: $6c
    ld bc, $6f70                                  ; $5cbc: $01 $70 $6f
    ld [hl], a                                    ; $5cbf: $77
    ld h, l                                       ; $5cc0: $65
    ld [hl], d                                    ; $5cc1: $72
    jr nz, jr_01c_5d37                            ; $5cc2: $20 $73

jr_01c_5cc4:
    ld l, b                                       ; $5cc4: $68
    ld l, a                                       ; $5cc5: $6f
    ld [hl], l                                    ; $5cc6: $75
    ld l, h                                       ; $5cc7: $6c
    ld h, h                                       ; $5cc8: $64
    jr nz, jr_01c_5d2f                            ; $5cc9: $20 $64

    ld l, a                                       ; $5ccb: $6f
    ld l, $03                                     ; $5ccc: $2e $03
    nop                                           ; $5cce: $00
    ld c, [hl]                                    ; $5ccf: $4e
    ld l, a                                       ; $5cd0: $6f
    ld [hl], a                                    ; $5cd1: $77
    jr nz, jr_01c_5d37                            ; $5cd2: $20 $63

    ld l, b                                       ; $5cd4: $68
    ld l, a                                       ; $5cd5: $6f
    ld l, a                                       ; $5cd6: $6f
    ld [hl], e                                    ; $5cd7: $73

jr_01c_5cd8:
    ld h, l                                       ; $5cd8: $65
    jr nz, jr_01c_5d3c                            ; $5cd9: $20 $61

    jr nz, @+$65                                  ; $5cdb: $20 $63

    ld l, h                                       ; $5cdd: $6c
    ld [hl], l                                    ; $5cde: $75
    ld h, d                                       ; $5cdf: $62

jr_01c_5ce0:
    ld l, $01                                     ; $5ce0: $2e $01
    ld d, l                                       ; $5ce2: $55

jr_01c_5ce3:
    ld [hl], e                                    ; $5ce3: $73
    ld h, l                                       ; $5ce4: $65
    jr nz, @+$75                                  ; $5ce5: $20 $73

    ld l, a                                       ; $5ce7: $6f
    ld l, l                                       ; $5ce8: $6d
    ld h, l                                       ; $5ce9: $65
    ld [hl], h                                    ; $5cea: $74
    ld l, b                                       ; $5ceb: $68
    ld l, c                                       ; $5cec: $69

jr_01c_5ced:
    ld l, [hl]                                    ; $5ced: $6e
    ld h, a                                       ; $5cee: $67
    jr nz, jr_01c_5d52                            ; $5cef: $20 $61

    ld bc, $696c                                  ; $5cf1: $01 $6c $69

jr_01c_5cf4:
    ld [hl], h                                    ; $5cf4: $74
    ld [hl], h                                    ; $5cf5: $74
    ld l, h                                       ; $5cf6: $6c
    ld h, l                                       ; $5cf7: $65

jr_01c_5cf8:
    jr nz, jr_01c_5d5c                            ; $5cf8: $20 $62

    ld l, c                                       ; $5cfa: $69
    ld h, a                                       ; $5cfb: $67
    ld h, a                                       ; $5cfc: $67
    ld h, l                                       ; $5cfd: $65
    ld [hl], d                                    ; $5cfe: $72
    ld l, $03                                     ; $5cff: $2e $03
    nop                                           ; $5d01: $00

jr_01c_5d02:
    ld c, a                                       ; $5d02: $4f
    ld c, e                                       ; $5d03: $4b
    ld l, $20                                     ; $5d04: $2e $20
    ld b, a                                       ; $5d06: $47
    ld l, c                                       ; $5d07: $69
    halt                                          ; $5d08: $76
    ld h, l                                       ; $5d09: $65

jr_01c_5d0a:
    jr nz, @+$6b                                  ; $5d0a: $20 $69

    ld [hl], h                                    ; $5d0c: $74
    jr nz, jr_01c_5d70                            ; $5d0d: $20 $61

    jr nz, jr_01c_5d85                            ; $5d0f: $20 $74

    ld [hl], d                                    ; $5d11: $72
    ld a, c                                       ; $5d12: $79

jr_01c_5d13:
    ld l, $03                                     ; $5d13: $2e $03
    nop                                           ; $5d15: $00
    ld c, e                                       ; $5d16: $4b
    ld h, l                                       ; $5d17: $65
    ld h, l                                       ; $5d18: $65
    ld [hl], b                                    ; $5d19: $70
    jr nz, jr_01c_5d8c                            ; $5d1a: $20 $70

    ld [hl], d                                    ; $5d1c: $72
    ld h, c                                       ; $5d1d: $61
    ld h, e                                       ; $5d1e: $63
    ld [hl], h                                    ; $5d1f: $74
    ld l, c                                       ; $5d20: $69
    ld h, e                                       ; $5d21: $63
    ld l, c                                       ; $5d22: $69
    ld l, [hl]                                    ; $5d23: $6e
    ld h, a                                       ; $5d24: $67

jr_01c_5d25:
    inc l                                         ; $5d25: $2c
    jr nz, @+$75                                  ; $5d26: $20 $73

    ld l, a                                       ; $5d28: $6f
    ld bc, $6f79                                  ; $5d29: $01 $79 $6f
    ld [hl], l                                    ; $5d2c: $75
    jr nz, jr_01c_5da6                            ; $5d2d: $20 $77

jr_01c_5d2f:
    ld l, a                                       ; $5d2f: $6f
    ld l, [hl]                                    ; $5d30: $6e
    daa                                           ; $5d31: $27
    ld [hl], h                                    ; $5d32: $74
    jr nz, jr_01c_5da4                            ; $5d33: $20 $6f

    halt                                          ; $5d35: $76
    ld h, l                                       ; $5d36: $65

jr_01c_5d37:
    ld [hl], d                                    ; $5d37: $72
    dec l                                         ; $5d38: $2d
    ld bc, $6873                                  ; $5d39: $01 $73 $68

jr_01c_5d3c:
    ld l, a                                       ; $5d3c: $6f
    ld l, a                                       ; $5d3d: $6f
    ld [hl], h                                    ; $5d3e: $74
    jr nz, jr_01c_5db5                            ; $5d3f: $20 $74

    ld l, b                                       ; $5d41: $68
    ld h, l                                       ; $5d42: $65
    jr nz, jr_01c_5dac                            ; $5d43: $20 $67

    ld [hl], d                                    ; $5d45: $72
    ld h, l                                       ; $5d46: $65
    ld h, l                                       ; $5d47: $65
    ld l, [hl]                                    ; $5d48: $6e
    ld l, $03                                     ; $5d49: $2e $03
    nop                                           ; $5d4b: $00
    ld d, h                                       ; $5d4c: $54
    ld l, b                                       ; $5d4d: $68
    ld h, l                                       ; $5d4e: $65
    jr nz, jr_01c_5dc4                            ; $5d4f: $20 $73

    ld h, l                                       ; $5d51: $65

jr_01c_5d52:
    ld h, e                                       ; $5d52: $63
    ld [hl], d                                    ; $5d53: $72
    ld h, l                                       ; $5d54: $65
    ld [hl], h                                    ; $5d55: $74
    jr nz, jr_01c_5dcc                            ; $5d56: $20 $74

    ld l, a                                       ; $5d58: $6f
    jr nz, jr_01c_5dce                            ; $5d59: $20 $73

    ld [hl], h                                    ; $5d5b: $74

jr_01c_5d5c:
    ld [hl], d                                    ; $5d5c: $72
    ld l, a                                       ; $5d5d: $6f
    ld l, [hl]                                    ; $5d5e: $6e
    ld h, a                                       ; $5d5f: $67
    ld bc, $6977                                  ; $5d60: $01 $77 $69
    ld l, [hl]                                    ; $5d63: $6e
    ld h, h                                       ; $5d64: $64
    ld [hl], e                                    ; $5d65: $73
    jr nz, jr_01c_5dd1                            ; $5d66: $20 $69

    ld [hl], e                                    ; $5d68: $73
    jr nz, jr_01c_5dcc                            ; $5d69: $20 $61

    ld h, h                                       ; $5d6b: $64
    ld l, d                                       ; $5d6c: $6a
    ld [hl], l                                    ; $5d6d: $75
    ld [hl], e                                    ; $5d6e: $73
    ld [hl], h                                    ; $5d6f: $74

jr_01c_5d70:
    ld l, c                                       ; $5d70: $69
    ld l, [hl]                                    ; $5d71: $6e
    ld h, a                                       ; $5d72: $67
    ld bc, $6c63                                  ; $5d73: $01 $63 $6c
    ld [hl], l                                    ; $5d76: $75
    ld h, d                                       ; $5d77: $62
    ld [hl], e                                    ; $5d78: $73
    jr nz, jr_01c_5ddc                            ; $5d79: $20 $61

    ld l, [hl]                                    ; $5d7b: $6e
    ld h, h                                       ; $5d7c: $64
    jr nz, jr_01c_5def                            ; $5d7d: $20 $70

    ld l, a                                       ; $5d7f: $6f
    ld [hl], a                                    ; $5d80: $77
    ld h, l                                       ; $5d81: $65
    ld [hl], d                                    ; $5d82: $72
    ld l, $03                                     ; $5d83: $2e $03

jr_01c_5d85:
    nop                                           ; $5d85: $00
    ld e, c                                       ; $5d86: $59
    ld l, a                                       ; $5d87: $6f
    ld [hl], l                                    ; $5d88: $75
    jr nz, jr_01c_5df3                            ; $5d89: $20 $68

    ld h, c                                       ; $5d8b: $61

jr_01c_5d8c:
    halt                                          ; $5d8c: $76
    ld h, l                                       ; $5d8d: $65
    jr nz, jr_01c_5df1                            ; $5d8e: $20 $61

    jr nz, jr_01c_5df9                            ; $5d90: $20 $67

    ld l, a                                       ; $5d92: $6f
    ld l, a                                       ; $5d93: $6f
    ld h, h                                       ; $5d94: $64
    ld bc, $7269                                  ; $5d95: $01 $69 $72
    ld l, a                                       ; $5d98: $6f
    ld l, [hl]                                    ; $5d99: $6e
    jr nz, jr_01c_5e0f                            ; $5d9a: $20 $73

    ld l, b                                       ; $5d9c: $68
    ld l, a                                       ; $5d9d: $6f
    ld [hl], h                                    ; $5d9e: $74
    ld l, $20                                     ; $5d9f: $2e $20
    ld b, a                                       ; $5da1: $47
    ld h, l                                       ; $5da2: $65
    ld [hl], h                                    ; $5da3: $74

jr_01c_5da4:
    ld [hl], h                                    ; $5da4: $74
    ld l, c                                       ; $5da5: $69

jr_01c_5da6:
    ld l, [hl]                                    ; $5da6: $6e
    ld h, a                                       ; $5da7: $67
    ld bc, $6874                                  ; $5da8: $01 $74 $68
    ld h, c                                       ; $5dab: $61

jr_01c_5dac:
    ld [hl], h                                    ; $5dac: $74
    jr nz, @+$65                                  ; $5dad: $20 $63

    ld l, h                                       ; $5daf: $6c
    ld l, a                                       ; $5db0: $6f
    ld [hl], e                                    ; $5db1: $73
    ld h, l                                       ; $5db2: $65
    jr nz, jr_01c_5e1e                            ; $5db3: $20 $69

jr_01c_5db5:
    ld [hl], e                                    ; $5db5: $73
    jr nz, jr_01c_5e07                            ; $5db6: $20 $4f

    ld c, e                                       ; $5db8: $4b
    ld hl, $0003                                  ; $5db9: $21 $03 $00
    ld c, c                                       ; $5dbc: $49
    ld l, [hl]                                    ; $5dbd: $6e
    jr nz, jr_01c_5e34                            ; $5dbe: $20 $74

    ld l, b                                       ; $5dc0: $68
    ld h, l                                       ; $5dc1: $65
    ld l, a                                       ; $5dc2: $6f
    ld [hl], d                                    ; $5dc3: $72

jr_01c_5dc4:
    ld a, c                                       ; $5dc4: $79
    inc l                                         ; $5dc5: $2c
    jr nz, jr_01c_5e41                            ; $5dc6: $20 $79

    ld l, a                                       ; $5dc8: $6f
    ld [hl], l                                    ; $5dc9: $75
    jr nz, jr_01c_5e2d                            ; $5dca: $20 $61

jr_01c_5dcc:
    ld [hl], h                                    ; $5dcc: $74
    ld [hl], h                                    ; $5dcd: $74

jr_01c_5dce:
    ld h, c                                       ; $5dce: $61
    ld h, e                                       ; $5dcf: $63
    ld l, e                                       ; $5dd0: $6b

jr_01c_5dd1:
    ld bc, $2061                                  ; $5dd1: $01 $61 $20
    ld [hl], h                                    ; $5dd4: $74
    ld [hl], a                                    ; $5dd5: $77
    ld l, a                                       ; $5dd6: $6f
    dec l                                         ; $5dd7: $2d
    ld [hl], h                                    ; $5dd8: $74
    ld l, c                                       ; $5dd9: $69
    ld h, l                                       ; $5dda: $65
    ld [hl], d                                    ; $5ddb: $72

jr_01c_5ddc:
    ld h, l                                       ; $5ddc: $65
    ld h, h                                       ; $5ddd: $64
    jr nz, jr_01c_5e47                            ; $5dde: $20 $67

    ld [hl], d                                    ; $5de0: $72
    ld h, l                                       ; $5de1: $65
    ld h, l                                       ; $5de2: $65
    ld l, [hl]                                    ; $5de3: $6e
    ld bc, $7266                                  ; $5de4: $01 $66 $72
    ld l, a                                       ; $5de7: $6f
    ld l, l                                       ; $5de8: $6d
    jr nz, @+$6a                                  ; $5de9: $20 $68

    ld h, l                                       ; $5deb: $65
    ld h, c                                       ; $5dec: $61
    ld h, h                                       ; $5ded: $64
    dec l                                         ; $5dee: $2d

jr_01c_5def:
    ld l, a                                       ; $5def: $6f
    ld l, [hl]                                    ; $5df0: $6e

jr_01c_5df1:
    ld l, $02                                     ; $5df1: $2e $02

jr_01c_5df3:
    ld b, d                                       ; $5df3: $42
    ld [hl], l                                    ; $5df4: $75
    ld [hl], h                                    ; $5df5: $74
    jr nz, @+$6b                                  ; $5df6: $20 $69

    ld h, [hl]                                    ; $5df8: $66

jr_01c_5df9:
    jr nz, jr_01c_5e6f                            ; $5df9: $20 $74

    ld l, b                                       ; $5dfb: $68
    ld h, l                                       ; $5dfc: $65
    ld [hl], d                                    ; $5dfd: $72
    ld h, l                                       ; $5dfe: $65
    daa                                           ; $5dff: $27
    ld [hl], e                                    ; $5e00: $73
    jr nz, jr_01c_5e64                            ; $5e01: $20 $61

    ld bc, $6168                                  ; $5e03: $01 $68 $61
    ld a, d                                       ; $5e06: $7a

jr_01c_5e07:
    ld h, c                                       ; $5e07: $61
    ld [hl], d                                    ; $5e08: $72
    ld h, h                                       ; $5e09: $64
    inc l                                         ; $5e0a: $2c
    jr nz, jr_01c_5e76                            ; $5e0b: $20 $69

    ld [hl], e                                    ; $5e0d: $73
    ld l, [hl]                                    ; $5e0e: $6e

jr_01c_5e0f:
    daa                                           ; $5e0f: $27
    ld [hl], h                                    ; $5e10: $74
    jr nz, jr_01c_5e7c                            ; $5e11: $20 $69

    ld [hl], h                                    ; $5e13: $74
    ld bc, $6164                                  ; $5e14: $01 $64 $61
    ld l, [hl]                                    ; $5e17: $6e
    ld h, a                                       ; $5e18: $67
    ld h, l                                       ; $5e19: $65
    ld [hl], d                                    ; $5e1a: $72
    ld l, a                                       ; $5e1b: $6f
    ld [hl], l                                    ; $5e1c: $75
    ld [hl], e                                    ; $5e1d: $73

jr_01c_5e1e:
    ccf                                           ; $5e1e: $3f
    nop                                           ; $5e1f: $00
    ld e, c                                       ; $5e20: $59
    ld l, a                                       ; $5e21: $6f
    ld [hl], l                                    ; $5e22: $75
    jr nz, jr_01c_5e99                            ; $5e23: $20 $74

    ld l, b                                       ; $5e25: $68
    ld l, c                                       ; $5e26: $69
    ld l, [hl]                                    ; $5e27: $6e
    ld l, e                                       ; $5e28: $6b
    jr nz, jr_01c_5e94                            ; $5e29: $20 $69

    ld [hl], h                                    ; $5e2b: $74
    daa                                           ; $5e2c: $27

jr_01c_5e2d:
    ld [hl], e                                    ; $5e2d: $73
    ld bc, $6165                                  ; $5e2e: $01 $65 $61
    ld [hl], e                                    ; $5e31: $73
    ld a, c                                       ; $5e32: $79
    inc l                                         ; $5e33: $2c

jr_01c_5e34:
    jr nz, @+$09                                  ; $5e34: $20 $07

    ccf                                           ; $5e36: $3f
    ld [bc], a                                    ; $5e37: $02
    ld c, b                                       ; $5e38: $48
    ld l, l                                       ; $5e39: $6d
    ld l, l                                       ; $5e3a: $6d
    inc l                                         ; $5e3b: $2c
    jr nz, jr_01c_5e87                            ; $5e3c: $20 $49

    jr nz, jr_01c_5ea7                            ; $5e3e: $20 $67

    ld [hl], l                                    ; $5e40: $75

jr_01c_5e41:
    ld h, l                                       ; $5e41: $65
    ld [hl], e                                    ; $5e42: $73
    ld [hl], e                                    ; $5e43: $73
    jr nz, jr_01c_5eaf                            ; $5e44: $20 $69

    ld [hl], h                                    ; $5e46: $74

jr_01c_5e47:
    daa                                           ; $5e47: $27
    ld [hl], e                                    ; $5e48: $73
    ld bc, $6168                                  ; $5e49: $01 $68 $61
    ld [hl], d                                    ; $5e4c: $72
    ld h, h                                       ; $5e4d: $64
    jr nz, @+$68                                  ; $5e4e: $20 $66

    ld l, a                                       ; $5e50: $6f
    ld [hl], d                                    ; $5e51: $72
    jr nz, jr_01c_5ec1                            ; $5e52: $20 $6d

    ld h, l                                       ; $5e54: $65
    jr nz, jr_01c_5e7e                            ; $5e55: $20 $27

    ld h, e                                       ; $5e57: $63
    ld h, c                                       ; $5e58: $61
    ld [hl], l                                    ; $5e59: $75
    ld [hl], e                                    ; $5e5a: $73
    ld h, l                                       ; $5e5b: $65
    ld bc, $2749                                  ; $5e5c: $01 $49 $27
    ld l, l                                       ; $5e5f: $6d
    jr nz, jr_01c_5ed0                            ; $5e60: $20 $6e

    ld l, a                                       ; $5e62: $6f
    ld [hl], h                                    ; $5e63: $74

jr_01c_5e64:
    jr nz, jr_01c_5ed9                            ; $5e64: $20 $73

    ld l, a                                       ; $5e66: $6f
    jr nz, jr_01c_5ed0                            ; $5e67: $20 $67

    ld l, a                                       ; $5e69: $6f
    ld l, a                                       ; $5e6a: $6f
    ld h, h                                       ; $5e6b: $64
    ld l, $03                                     ; $5e6c: $2e $03
    nop                                           ; $5e6e: $00

jr_01c_5e6f:
    ld b, c                                       ; $5e6f: $41
    halt                                          ; $5e70: $76
    ld l, a                                       ; $5e71: $6f
    ld l, c                                       ; $5e72: $69
    ld h, h                                       ; $5e73: $64
    jr nz, jr_01c_5eea                            ; $5e74: $20 $74

jr_01c_5e76:
    ld l, b                                       ; $5e76: $68
    ld h, l                                       ; $5e77: $65
    jr nz, jr_01c_5ee2                            ; $5e78: $20 $68

    ld h, c                                       ; $5e7a: $61
    ld a, d                                       ; $5e7b: $7a

jr_01c_5e7c:
    ld h, c                                       ; $5e7c: $61
    ld [hl], d                                    ; $5e7d: $72

jr_01c_5e7e:
    ld h, h                                       ; $5e7e: $64
    ld bc, $7962                                  ; $5e7f: $01 $62 $79
    jr nz, jr_01c_5ee5                            ; $5e82: $20 $61

    ld l, c                                       ; $5e84: $69
    ld l, l                                       ; $5e85: $6d
    ld l, c                                       ; $5e86: $69

jr_01c_5e87:
    ld l, [hl]                                    ; $5e87: $6e
    ld h, a                                       ; $5e88: $67
    jr nz, jr_01c_5ef1                            ; $5e89: $20 $66

    ld l, a                                       ; $5e8b: $6f
    ld [hl], d                                    ; $5e8c: $72
    jr nz, jr_01c_5f03                            ; $5e8d: $20 $74

    ld l, b                                       ; $5e8f: $68
    ld h, l                                       ; $5e90: $65
    ld bc, $6162                                  ; $5e91: $01 $62 $61

jr_01c_5e94:
    ld h, e                                       ; $5e94: $63
    ld l, e                                       ; $5e95: $6b
    jr nz, jr_01c_5f07                            ; $5e96: $20 $6f

    ld h, [hl]                                    ; $5e98: $66

jr_01c_5e99:
    jr nz, jr_01c_5f0f                            ; $5e99: $20 $74

    ld l, b                                       ; $5e9b: $68
    ld h, l                                       ; $5e9c: $65
    jr nz, @+$69                                  ; $5e9d: $20 $67

    ld [hl], d                                    ; $5e9f: $72
    ld h, l                                       ; $5ea0: $65
    ld h, l                                       ; $5ea1: $65
    ld l, [hl]                                    ; $5ea2: $6e
    ld l, $02                                     ; $5ea3: $2e $02
    ld c, b                                       ; $5ea5: $48
    ld l, c                                       ; $5ea6: $69

jr_01c_5ea7:
    ld [hl], h                                    ; $5ea7: $74
    jr nz, @+$63                                  ; $5ea8: $20 $61

    jr nz, jr_01c_5f14                            ; $5eaa: $20 $68

    ld l, c                                       ; $5eac: $69
    ld h, a                                       ; $5ead: $67
    ld l, b                                       ; $5eae: $68

jr_01c_5eaf:
    jr nz, jr_01c_5f13                            ; $5eaf: $20 $62

    ld h, c                                       ; $5eb1: $61
    ld l, h                                       ; $5eb2: $6c
    ld l, h                                       ; $5eb3: $6c
    ld bc, $6972                                  ; $5eb4: $01 $72 $69
    ld h, a                                       ; $5eb7: $67
    ld l, b                                       ; $5eb8: $68
    ld [hl], h                                    ; $5eb9: $74
    jr nz, jr_01c_5f1d                            ; $5eba: $20 $61

    ld [hl], h                                    ; $5ebc: $74
    jr nz, @+$76                                  ; $5ebd: $20 $74

    ld l, b                                       ; $5ebf: $68
    ld h, l                                       ; $5ec0: $65

jr_01c_5ec1:
    jr nz, @+$72                                  ; $5ec1: $20 $70

    ld l, c                                       ; $5ec3: $69
    ld l, [hl]                                    ; $5ec4: $6e
    ld l, $01                                     ; $5ec5: $2e $01
    ld c, c                                       ; $5ec7: $49
    ld [hl], h                                    ; $5ec8: $74
    jr nz, jr_01c_5f3e                            ; $5ec9: $20 $73

    ld l, b                                       ; $5ecb: $68
    ld l, a                                       ; $5ecc: $6f
    ld [hl], l                                    ; $5ecd: $75
    ld l, h                                       ; $5ece: $6c
    ld h, h                                       ; $5ecf: $64

jr_01c_5ed0:
    jr nz, jr_01c_5f49                            ; $5ed0: $20 $77

    ld l, a                                       ; $5ed2: $6f
    ld [hl], d                                    ; $5ed3: $72
    ld l, e                                       ; $5ed4: $6b
    ld l, $03                                     ; $5ed5: $2e $03
    nop                                           ; $5ed7: $00
    ld c, c                                       ; $5ed8: $49

jr_01c_5ed9:
    ld [hl], h                                    ; $5ed9: $74
    daa                                           ; $5eda: $27
    ld [hl], e                                    ; $5edb: $73
    jr nz, jr_01c_5f47                            ; $5edc: $20 $69

    ld l, l                                       ; $5ede: $6d
    ld [hl], b                                    ; $5edf: $70
    ld l, a                                       ; $5ee0: $6f
    ld [hl], e                                    ; $5ee1: $73

jr_01c_5ee2:
    ld [hl], e                                    ; $5ee2: $73
    ld l, c                                       ; $5ee3: $69
    ld h, d                                       ; $5ee4: $62

jr_01c_5ee5:
    ld l, h                                       ; $5ee5: $6c
    ld h, l                                       ; $5ee6: $65
    jr nz, @+$76                                  ; $5ee7: $20 $74

    ld l, a                                       ; $5ee9: $6f

jr_01c_5eea:
    ld bc, $7061                                  ; $5eea: $01 $61 $70
    ld [hl], b                                    ; $5eed: $70
    ld [hl], d                                    ; $5eee: $72
    ld l, a                                       ; $5eef: $6f
    ld h, c                                       ; $5ef0: $61

jr_01c_5ef1:
    ld h, e                                       ; $5ef1: $63
    ld l, b                                       ; $5ef2: $68
    jr nz, jr_01c_5f69                            ; $5ef3: $20 $74

    ld l, b                                       ; $5ef5: $68
    ld l, c                                       ; $5ef6: $69
    ld [hl], e                                    ; $5ef7: $73
    jr nz, jr_01c_5f65                            ; $5ef8: $20 $6b

    ld l, c                                       ; $5efa: $69
    ld l, [hl]                                    ; $5efb: $6e
    ld h, h                                       ; $5efc: $64
    ld bc, $666f                                  ; $5efd: $01 $6f $66
    jr nz, @+$6a                                  ; $5f00: $20 $68

    ld l, a                                       ; $5f02: $6f

jr_01c_5f03:
    ld l, h                                       ; $5f03: $6c
    ld h, l                                       ; $5f04: $65
    jr nz, jr_01c_5f7e                            ; $5f05: $20 $77

jr_01c_5f07:
    ld l, c                                       ; $5f07: $69
    ld [hl], h                                    ; $5f08: $74
    ld l, b                                       ; $5f09: $68
    jr nz, jr_01c_5f6d                            ; $5f0a: $20 $61

    ld [bc], a                                    ; $5f0c: $02
    ld [hl], e                                    ; $5f0d: $73
    ld [hl], h                                    ; $5f0e: $74

jr_01c_5f0f:
    ld h, c                                       ; $5f0f: $61
    ld l, [hl]                                    ; $5f10: $6e
    ld h, h                                       ; $5f11: $64
    ld h, c                                       ; $5f12: $61

jr_01c_5f13:
    ld [hl], d                                    ; $5f13: $72

jr_01c_5f14:
    ld h, h                                       ; $5f14: $64
    jr nz, @+$75                                  ; $5f15: $20 $73

    ld l, b                                       ; $5f17: $68
    ld l, a                                       ; $5f18: $6f
    ld [hl], h                                    ; $5f19: $74
    inc l                                         ; $5f1a: $2c
    jr nz, @+$75                                  ; $5f1b: $20 $73

jr_01c_5f1d:
    ld l, a                                       ; $5f1d: $6f
    ld bc, $7274                                  ; $5f1e: $01 $74 $72
    ld a, c                                       ; $5f21: $79
    jr nz, jr_01c_5f88                            ; $5f22: $20 $64

    ld [hl], d                                    ; $5f24: $72
    ld l, a                                       ; $5f25: $6f
    ld [hl], b                                    ; $5f26: $70
    ld [hl], b                                    ; $5f27: $70
    ld l, c                                       ; $5f28: $69
    ld l, [hl]                                    ; $5f29: $6e
    ld h, a                                       ; $5f2a: $67
    jr nz, jr_01c_5f9f                            ; $5f2b: $20 $72

    ld l, c                                       ; $5f2d: $69
    ld h, a                                       ; $5f2e: $67
    ld l, b                                       ; $5f2f: $68
    ld [hl], h                                    ; $5f30: $74
    ld bc, $6f64                                  ; $5f31: $01 $64 $6f
    ld [hl], a                                    ; $5f34: $77
    ld l, [hl]                                    ; $5f35: $6e
    jr nz, jr_01c_5fa7                            ; $5f36: $20 $6f

    ld l, [hl]                                    ; $5f38: $6e
    ld [hl], h                                    ; $5f39: $74
    ld l, a                                       ; $5f3a: $6f
    jr nz, jr_01c_5fb1                            ; $5f3b: $20 $74

    ld l, b                                       ; $5f3d: $68

jr_01c_5f3e:
    ld h, l                                       ; $5f3e: $65
    jr nz, jr_01c_5fb1                            ; $5f3f: $20 $70

    ld l, c                                       ; $5f41: $69
    ld l, [hl]                                    ; $5f42: $6e
    ld l, $03                                     ; $5f43: $2e $03
    nop                                           ; $5f45: $00
    ld c, [hl]                                    ; $5f46: $4e

jr_01c_5f47:
    ld l, a                                       ; $5f47: $6f
    ld [hl], d                                    ; $5f48: $72

jr_01c_5f49:
    ld l, l                                       ; $5f49: $6d
    ld h, c                                       ; $5f4a: $61
    ld l, h                                       ; $5f4b: $6c
    jr nz, jr_01c_5fbe                            ; $5f4c: $20 $70

    ld l, a                                       ; $5f4e: $6f
    ld [hl], a                                    ; $5f4f: $77
    ld h, l                                       ; $5f50: $65
    ld [hl], d                                    ; $5f51: $72
    ld bc, $6873                                  ; $5f52: $01 $73 $68
    ld l, a                                       ; $5f55: $6f
    ld [hl], l                                    ; $5f56: $75
    ld l, h                                       ; $5f57: $6c
    ld h, h                                       ; $5f58: $64
    jr nz, jr_01c_5fbd                            ; $5f59: $20 $62

    ld h, l                                       ; $5f5b: $65
    jr nz, jr_01c_5fc4                            ; $5f5c: $20 $66

    ld l, c                                       ; $5f5e: $69
    ld l, [hl]                                    ; $5f5f: $6e
    ld h, l                                       ; $5f60: $65
    ld l, $03                                     ; $5f61: $2e $03
    nop                                           ; $5f63: $00
    ld c, [hl]                                    ; $5f64: $4e

jr_01c_5f65:
    ld h, l                                       ; $5f65: $65
    ld a, b                                       ; $5f66: $78
    ld [hl], h                                    ; $5f67: $74
    inc l                                         ; $5f68: $2c

jr_01c_5f69:
    jr nz, jr_01c_5fce                            ; $5f69: $20 $63

    ld l, b                                       ; $5f6b: $68
    ld l, a                                       ; $5f6c: $6f

jr_01c_5f6d:
    ld l, a                                       ; $5f6d: $6f
    ld [hl], e                                    ; $5f6e: $73
    ld h, l                                       ; $5f6f: $65
    ld bc, $2061                                  ; $5f70: $01 $61 $20
    ld h, e                                       ; $5f73: $63
    ld l, h                                       ; $5f74: $6c
    ld [hl], l                                    ; $5f75: $75
    ld h, d                                       ; $5f76: $62
    ld l, $03                                     ; $5f77: $2e $03
    nop                                           ; $5f79: $00
    ld c, a                                       ; $5f7a: $4f
    ld l, [hl]                                    ; $5f7b: $6e
    ld h, e                                       ; $5f7c: $63
    ld h, l                                       ; $5f7d: $65

jr_01c_5f7e:
    jr nz, jr_01c_5ff4                            ; $5f7e: $20 $74

    ld l, b                                       ; $5f80: $68
    ld h, l                                       ; $5f81: $65
    jr nz, jr_01c_5feb                            ; $5f82: $20 $67

    ld h, c                                       ; $5f84: $61
    ld [hl], l                                    ; $5f85: $75
    ld h, a                                       ; $5f86: $67
    ld h, l                                       ; $5f87: $65

jr_01c_5f88:
    ld bc, $7473                                  ; $5f88: $01 $73 $74
    ld h, c                                       ; $5f8b: $61
    ld [hl], d                                    ; $5f8c: $72
    ld [hl], h                                    ; $5f8d: $74
    ld [hl], e                                    ; $5f8e: $73
    jr nz, jr_01c_5ffe                            ; $5f8f: $20 $6d

    ld l, a                                       ; $5f91: $6f
    halt                                          ; $5f92: $76
    ld l, c                                       ; $5f93: $69
    ld l, [hl]                                    ; $5f94: $6e
    ld h, a                                       ; $5f95: $67
    inc l                                         ; $5f96: $2c
    ld bc, $7270                                  ; $5f97: $01 $70 $72
    ld h, l                                       ; $5f9a: $65
    ld [hl], e                                    ; $5f9b: $73
    ld [hl], e                                    ; $5f9c: $73
    jr nz, jr_01c_6003                            ; $5f9d: $20 $64

jr_01c_5f9f:
    ld l, a                                       ; $5f9f: $6f
    ld [hl], a                                    ; $5fa0: $77
    ld l, [hl]                                    ; $5fa1: $6e
    jr nz, @+$71                                  ; $5fa2: $20 $6f

    ld l, [hl]                                    ; $5fa4: $6e
    jr nz, jr_01c_601b                            ; $5fa5: $20 $74

jr_01c_5fa7:
    ld l, b                                       ; $5fa7: $68
    ld h, l                                       ; $5fa8: $65
    ld [bc], a                                    ; $5fa9: $02
    dec hl                                        ; $5faa: $2b
    jr nz, jr_01c_5ff0                            ; $5fab: $20 $43

    ld l, a                                       ; $5fad: $6f
    ld l, [hl]                                    ; $5fae: $6e
    ld [hl], h                                    ; $5faf: $74
    ld [hl], d                                    ; $5fb0: $72

jr_01c_5fb1:
    ld l, a                                       ; $5fb1: $6f
    ld l, h                                       ; $5fb2: $6c
    jr nz, jr_01c_6005                            ; $5fb3: $20 $50

    ld h, c                                       ; $5fb5: $61
    ld h, h                                       ; $5fb6: $64
    ld l, $03                                     ; $5fb7: $2e $03
    nop                                           ; $5fb9: $00
    ld c, e                                       ; $5fba: $4b
    ld h, l                                       ; $5fbb: $65
    ld h, l                                       ; $5fbc: $65

jr_01c_5fbd:
    ld [hl], b                                    ; $5fbd: $70

jr_01c_5fbe:
    jr nz, jr_01c_6028                            ; $5fbe: $20 $68

    ld l, a                                       ; $5fc0: $6f
    ld l, h                                       ; $5fc1: $6c
    ld h, h                                       ; $5fc2: $64
    ld l, c                                       ; $5fc3: $69

jr_01c_5fc4:
    ld l, [hl]                                    ; $5fc4: $6e
    ld h, a                                       ; $5fc5: $67
    jr nz, jr_01c_603c                            ; $5fc6: $20 $74

    ld l, b                                       ; $5fc8: $68
    ld h, l                                       ; $5fc9: $65
    ld bc, $202b                                  ; $5fca: $01 $2b $20
    ld b, e                                       ; $5fcd: $43

jr_01c_5fce:
    ld l, a                                       ; $5fce: $6f
    ld l, [hl]                                    ; $5fcf: $6e
    ld [hl], h                                    ; $5fd0: $74
    ld [hl], d                                    ; $5fd1: $72
    ld l, a                                       ; $5fd2: $6f
    ld l, h                                       ; $5fd3: $6c
    jr nz, @+$52                                  ; $5fd4: $20 $50

    ld h, c                                       ; $5fd6: $61
    ld h, h                                       ; $5fd7: $64
    ld bc, $6e75                                  ; $5fd8: $01 $75 $6e
    ld [hl], h                                    ; $5fdb: $74
    ld l, c                                       ; $5fdc: $69
    ld l, h                                       ; $5fdd: $6c
    jr nz, @+$6b                                  ; $5fde: $20 $69

    ld l, l                                       ; $5fe0: $6d
    ld [hl], b                                    ; $5fe1: $70
    ld h, c                                       ; $5fe2: $61
    ld h, e                                       ; $5fe3: $63
    ld [hl], h                                    ; $5fe4: $74
    ld l, $03                                     ; $5fe5: $2e $03
    nop                                           ; $5fe7: $00
    ld d, h                                       ; $5fe8: $54
    ld l, b                                       ; $5fe9: $68
    ld h, c                                       ; $5fea: $61

jr_01c_5feb:
    ld [hl], h                                    ; $5feb: $74
    jr nz, jr_01c_6065                            ; $5fec: $20 $77

    ld h, c                                       ; $5fee: $61
    ld [hl], e                                    ; $5fef: $73

jr_01c_5ff0:
    jr nz, jr_01c_6065                            ; $5ff0: $20 $73

    ld l, a                                       ; $5ff2: $6f
    dec l                                         ; $5ff3: $2d

jr_01c_5ff4:
    ld [hl], e                                    ; $5ff4: $73
    ld l, a                                       ; $5ff5: $6f
    ld l, $01                                     ; $5ff6: $2e $01
    ld d, a                                       ; $5ff8: $57
    ld h, c                                       ; $5ff9: $61
    ld l, [hl]                                    ; $5ffa: $6e
    ld [hl], h                                    ; $5ffb: $74
    jr nz, @+$76                                  ; $5ffc: $20 $74

jr_01c_5ffe:
    ld l, a                                       ; $5ffe: $6f
    jr nz, jr_01c_6075                            ; $5fff: $20 $74

    ld [hl], d                                    ; $6001: $72
    ld a, c                                       ; $6002: $79

jr_01c_6003:
    ccf                                           ; $6003: $3f
    nop                                           ; $6004: $00

jr_01c_6005:
    ld b, [hl]                                    ; $6005: $46
    ld l, c                                       ; $6006: $69
    ld [hl], d                                    ; $6007: $72
    ld [hl], e                                    ; $6008: $73
    ld [hl], h                                    ; $6009: $74
    inc l                                         ; $600a: $2c
    jr nz, jr_01c_6070                            ; $600b: $20 $63

    ld l, b                                       ; $600d: $68
    ld l, a                                       ; $600e: $6f
    ld l, a                                       ; $600f: $6f
    ld [hl], e                                    ; $6010: $73
    ld h, l                                       ; $6011: $65
    ld bc, $2061                                  ; $6012: $01 $61 $20
    ld h, e                                       ; $6015: $63
    ld l, h                                       ; $6016: $6c
    ld [hl], l                                    ; $6017: $75
    ld h, d                                       ; $6018: $62
    ld l, $03                                     ; $6019: $2e $03

jr_01c_601b:
    nop                                           ; $601b: $00
    ld c, [hl]                                    ; $601c: $4e
    ld h, l                                       ; $601d: $65
    ld a, b                                       ; $601e: $78
    ld [hl], h                                    ; $601f: $74
    inc l                                         ; $6020: $2c
    jr nz, jr_01c_6096                            ; $6021: $20 $73

    ld h, l                                       ; $6023: $65
    ld [hl], h                                    ; $6024: $74
    jr nz, jr_01c_60a0                            ; $6025: $20 $79

    ld l, a                                       ; $6027: $6f

jr_01c_6028:
    ld [hl], l                                    ; $6028: $75
    ld [hl], d                                    ; $6029: $72
    ld bc, $6f70                                  ; $602a: $01 $70 $6f
    ld [hl], a                                    ; $602d: $77
    ld h, l                                       ; $602e: $65
    ld [hl], d                                    ; $602f: $72
    jr nz, @+$76                                  ; $6030: $20 $74

    ld l, a                                       ; $6032: $6f
    jr nz, jr_01c_60a3                            ; $6033: $20 $6e

    ld l, a                                       ; $6035: $6f
    ld [hl], d                                    ; $6036: $72
    ld l, l                                       ; $6037: $6d
    ld h, c                                       ; $6038: $61
    ld l, h                                       ; $6039: $6c
    ld l, $03                                     ; $603a: $2e $03

jr_01c_603c:
    nop                                           ; $603c: $00
    ld c, a                                       ; $603d: $4f
    ld c, e                                       ; $603e: $4b
    ld l, $20                                     ; $603f: $2e $20
    ld b, a                                       ; $6041: $47
    ld l, c                                       ; $6042: $69
    halt                                          ; $6043: $76
    ld h, l                                       ; $6044: $65
    jr nz, jr_01c_60b0                            ; $6045: $20 $69

    ld [hl], h                                    ; $6047: $74
    jr nz, jr_01c_60ab                            ; $6048: $20 $61

    jr nz, jr_01c_60c0                            ; $604a: $20 $74

    ld [hl], d                                    ; $604c: $72
    ld a, c                                       ; $604d: $79
    ld l, $03                                     ; $604e: $2e $03
    nop                                           ; $6050: $00
    ld c, d                                       ; $6051: $4a
    ld [hl], l                                    ; $6052: $75
    ld [hl], e                                    ; $6053: $73
    ld [hl], h                                    ; $6054: $74
    jr nz, jr_01c_60bf                            ; $6055: $20 $68

    ld l, a                                       ; $6057: $6f
    ld l, h                                       ; $6058: $6c
    ld h, h                                       ; $6059: $64
    jr nz, jr_01c_60d0                            ; $605a: $20 $74

    ld l, b                                       ; $605c: $68
    ld h, l                                       ; $605d: $65
    jr nz, jr_01c_608b                            ; $605e: $20 $2b

    ld bc, $6f43                                  ; $6060: $01 $43 $6f
    ld l, [hl]                                    ; $6063: $6e
    ld [hl], h                                    ; $6064: $74

jr_01c_6065:
    ld [hl], d                                    ; $6065: $72
    ld l, a                                       ; $6066: $6f
    ld l, h                                       ; $6067: $6c
    jr nz, jr_01c_60ba                            ; $6068: $20 $50

    ld h, c                                       ; $606a: $61
    ld h, h                                       ; $606b: $64
    jr nz, jr_01c_60d2                            ; $606c: $20 $64

    ld l, a                                       ; $606e: $6f
    ld [hl], a                                    ; $606f: $77

jr_01c_6070:
    ld l, [hl]                                    ; $6070: $6e
    ld l, $01                                     ; $6071: $2e $01
    ld c, e                                       ; $6073: $4b
    ld h, l                                       ; $6074: $65

jr_01c_6075:
    ld h, l                                       ; $6075: $65
    ld [hl], b                                    ; $6076: $70
    jr nz, @+$72                                  ; $6077: $20 $70

    ld [hl], d                                    ; $6079: $72
    ld h, c                                       ; $607a: $61
    ld h, e                                       ; $607b: $63
    ld [hl], h                                    ; $607c: $74
    ld l, c                                       ; $607d: $69
    ld h, e                                       ; $607e: $63
    ld l, c                                       ; $607f: $69
    ld l, [hl]                                    ; $6080: $6e
    ld h, a                                       ; $6081: $67
    ld l, $03                                     ; $6082: $2e $03
    nop                                           ; $6084: $00
    ld d, h                                       ; $6085: $54
    ld l, b                                       ; $6086: $68
    ld h, c                                       ; $6087: $61
    ld [hl], h                                    ; $6088: $74
    daa                                           ; $6089: $27
    ld [hl], e                                    ; $608a: $73

jr_01c_608b:
    jr nz, jr_01c_60f6                            ; $608b: $20 $69

    ld [hl], h                                    ; $608d: $74
    ld hl, $5020                                  ; $608e: $21 $20 $50
    ld l, a                                       ; $6091: $6f
    ld l, h                                       ; $6092: $6c
    ld l, c                                       ; $6093: $69
    ld [hl], e                                    ; $6094: $73
    ld l, b                                       ; $6095: $68

jr_01c_6096:
    ld bc, $6f79                                  ; $6096: $01 $79 $6f
    ld [hl], l                                    ; $6099: $75
    ld [hl], d                                    ; $609a: $72
    jr nz, @+$76                                  ; $609b: $20 $74

    ld h, l                                       ; $609d: $65
    ld h, e                                       ; $609e: $63
    ld l, b                                       ; $609f: $68

jr_01c_60a0:
    ld l, [hl]                                    ; $60a0: $6e
    ld l, c                                       ; $60a1: $69
    ld [hl], c                                    ; $60a2: $71

jr_01c_60a3:
    ld [hl], l                                    ; $60a3: $75
    ld h, l                                       ; $60a4: $65
    jr nz, jr_01c_611b                            ; $60a5: $20 $74

    ld l, a                                       ; $60a7: $6f
    ld bc, $6567                                  ; $60a8: $01 $67 $65

jr_01c_60ab:
    ld [hl], h                                    ; $60ab: $74
    jr nz, @+$65                                  ; $60ac: $20 $63

    ld l, h                                       ; $60ae: $6c
    ld l, a                                       ; $60af: $6f

jr_01c_60b0:
    ld [hl], e                                    ; $60b0: $73
    ld h, l                                       ; $60b1: $65
    ld [hl], d                                    ; $60b2: $72
    ld l, $03                                     ; $60b3: $2e $03
    nop                                           ; $60b5: $00
    ld d, h                                       ; $60b6: $54
    ld l, b                                       ; $60b7: $68
    ld h, c                                       ; $60b8: $61
    ld [hl], h                                    ; $60b9: $74

jr_01c_60ba:
    daa                                           ; $60ba: $27
    ld [hl], e                                    ; $60bb: $73
    jr nz, jr_01c_6125                            ; $60bc: $20 $67

    ld [hl], d                                    ; $60be: $72

jr_01c_60bf:
    ld h, l                                       ; $60bf: $65

jr_01c_60c0:
    ld h, c                                       ; $60c0: $61
    ld [hl], h                                    ; $60c1: $74
    jr nz, jr_01c_612a                            ; $60c2: $20 $66

    ld l, a                                       ; $60c4: $6f
    ld [hl], d                                    ; $60c5: $72
    ld bc, $7573                                  ; $60c6: $01 $73 $75
    ld h, e                                       ; $60c9: $63
    ld l, b                                       ; $60ca: $68
    jr nz, jr_01c_612e                            ; $60cb: $20 $61

    jr nz, jr_01c_6137                            ; $60cd: $20 $68

    ld h, c                                       ; $60cf: $61

jr_01c_60d0:
    ld [hl], d                                    ; $60d0: $72
    ld h, h                                       ; $60d1: $64

jr_01c_60d2:
    jr nz, @+$75                                  ; $60d2: $20 $73

    ld l, b                                       ; $60d4: $68
    ld l, a                                       ; $60d5: $6f
    ld [hl], h                                    ; $60d6: $74
    ld hl, $5901                                  ; $60d7: $21 $01 $59
    ld l, a                                       ; $60da: $6f
    ld [hl], l                                    ; $60db: $75
    jr nz, jr_01c_6146                            ; $60dc: $20 $68

    ld h, c                                       ; $60de: $61
    halt                                          ; $60df: $76
    ld h, l                                       ; $60e0: $65
    jr nz, jr_01c_6157                            ; $60e1: $20 $74

    ld h, c                                       ; $60e3: $61
    ld l, h                                       ; $60e4: $6c
    ld h, l                                       ; $60e5: $65
    ld l, [hl]                                    ; $60e6: $6e
    ld [hl], h                                    ; $60e7: $74
    ld hl, $0003                                  ; $60e8: $21 $03 $00
    ld e, c                                       ; $60eb: $59
    ld l, a                                       ; $60ec: $6f
    ld [hl], l                                    ; $60ed: $75
    jr nz, jr_01c_6153                            ; $60ee: $20 $63

    ld h, c                                       ; $60f0: $61
    ld l, [hl]                                    ; $60f1: $6e
    jr nz, jr_01c_6169                            ; $60f2: $20 $75

    ld [hl], e                                    ; $60f4: $73
    ld h, l                                       ; $60f5: $65

jr_01c_60f6:
    jr nz, @+$6a                                  ; $60f6: $20 $68

    ld l, c                                       ; $60f8: $69
    ld h, a                                       ; $60f9: $67
    ld l, b                                       ; $60fa: $68
    ld bc, $7274                                  ; $60fb: $01 $74 $72
    ld h, c                                       ; $60fe: $61
    ld l, d                                       ; $60ff: $6a
    ld h, l                                       ; $6100: $65
    ld h, e                                       ; $6101: $63
    ld [hl], h                                    ; $6102: $74
    ld l, a                                       ; $6103: $6f
    ld [hl], d                                    ; $6104: $72
    ld l, c                                       ; $6105: $69
    ld h, l                                       ; $6106: $65
    ld [hl], e                                    ; $6107: $73
    jr nz, @+$6b                                  ; $6108: $20 $69

    ld l, [hl]                                    ; $610a: $6e
    ld bc, $616d                                  ; $610b: $01 $6d $61
    ld l, [hl]                                    ; $610e: $6e
    ld a, c                                       ; $610f: $79
    jr nz, jr_01c_6185                            ; $6110: $20 $73

    ld l, c                                       ; $6112: $69
    ld [hl], h                                    ; $6113: $74
    ld [hl], l                                    ; $6114: $75
    ld h, c                                       ; $6115: $61
    ld [hl], h                                    ; $6116: $74
    ld l, c                                       ; $6117: $69
    ld l, a                                       ; $6118: $6f
    ld l, [hl]                                    ; $6119: $6e
    ld [hl], e                                    ; $611a: $73

jr_01c_611b:
    ld l, $03                                     ; $611b: $2e $03
    nop                                           ; $611d: $00
    ld c, h                                       ; $611e: $4c
    ld h, c                                       ; $611f: $61
    ld l, [hl]                                    ; $6120: $6e
    ld h, h                                       ; $6121: $64
    ld l, c                                       ; $6122: $69
    ld l, [hl]                                    ; $6123: $6e
    ld h, a                                       ; $6124: $67

jr_01c_6125:
    jr nz, @+$6b                                  ; $6125: $20 $69

    ld l, [hl]                                    ; $6127: $6e
    jr nz, jr_01c_619e                            ; $6128: $20 $74

jr_01c_612a:
    ld l, b                                       ; $612a: $68
    ld h, l                                       ; $612b: $65
    jr nz, @+$76                                  ; $612c: $20 $74

jr_01c_612e:
    ld [hl], d                                    ; $612e: $72
    ld h, l                                       ; $612f: $65
    ld h, l                                       ; $6130: $65
    ld [hl], e                                    ; $6131: $73
    ld bc, $6e6f                                  ; $6132: $01 $6f $6e
    jr nz, jr_01c_6198                            ; $6135: $20 $61

jr_01c_6137:
    jr nz, jr_01c_61a6                            ; $6137: $20 $6d

    ld l, c                                       ; $6139: $69
    ld [hl], e                                    ; $613a: $73
    ld [hl], e                                    ; $613b: $73
    ld h, l                                       ; $613c: $65
    ld h, h                                       ; $613d: $64
    jr nz, jr_01c_61b3                            ; $613e: $20 $73

    ld l, b                                       ; $6140: $68
    ld l, a                                       ; $6141: $6f
    ld [hl], h                                    ; $6142: $74
    jr nz, jr_01c_61ae                            ; $6143: $20 $69

    ld [hl], e                                    ; $6145: $73

jr_01c_6146:
    ld bc, $7274                                  ; $6146: $01 $74 $72
    ld l, a                                       ; $6149: $6f
    ld [hl], l                                    ; $614a: $75
    ld h, d                                       ; $614b: $62
    ld l, h                                       ; $614c: $6c
    ld h, l                                       ; $614d: $65
    ld l, $02                                     ; $614e: $2e $02
    ld d, a                                       ; $6150: $57
    ld h, c                                       ; $6151: $61
    ld l, [hl]                                    ; $6152: $6e

jr_01c_6153:
    ld [hl], h                                    ; $6153: $74
    jr nz, @+$76                                  ; $6154: $20 $74

    ld l, a                                       ; $6156: $6f

jr_01c_6157:
    jr nz, jr_01c_61c5                            ; $6157: $20 $6c

    ld h, l                                       ; $6159: $65
    ld h, c                                       ; $615a: $61
    ld [hl], d                                    ; $615b: $72
    ld l, [hl]                                    ; $615c: $6e
    jr nz, jr_01c_61c0                            ; $615d: $20 $61

    ld bc, $6f67                                  ; $615f: $01 $67 $6f
    ld l, a                                       ; $6162: $6f
    ld h, h                                       ; $6163: $64
    jr nz, jr_01c_61d8                            ; $6164: $20 $72

    ld h, l                                       ; $6166: $65
    ld h, e                                       ; $6167: $63
    ld l, a                                       ; $6168: $6f

jr_01c_6169:
    halt                                          ; $6169: $76
    ld h, l                                       ; $616a: $65
    ld [hl], d                                    ; $616b: $72
    ld a, c                                       ; $616c: $79
    jr nz, jr_01c_61e2                            ; $616d: $20 $73

    ld l, b                                       ; $616f: $68
    ld l, a                                       ; $6170: $6f
    ld [hl], h                                    ; $6171: $74
    ld bc, $6f66                                  ; $6172: $01 $66 $6f
    ld [hl], d                                    ; $6175: $72
    jr nz, jr_01c_61ec                            ; $6176: $20 $74

    ld l, b                                       ; $6178: $68
    ld h, c                                       ; $6179: $61
    ld [hl], h                                    ; $617a: $74
    jr nz, jr_01c_61f0                            ; $617b: $20 $73

    ld l, c                                       ; $617d: $69
    ld [hl], h                                    ; $617e: $74
    ld [hl], l                                    ; $617f: $75
    ld h, c                                       ; $6180: $61
    ld [hl], h                                    ; $6181: $74
    ld l, c                                       ; $6182: $69
    ld l, a                                       ; $6183: $6f
    ld l, [hl]                                    ; $6184: $6e

jr_01c_6185:
    ccf                                           ; $6185: $3f
    nop                                           ; $6186: $00
    ld d, l                                       ; $6187: $55
    ld [hl], e                                    ; $6188: $73
    ld [hl], l                                    ; $6189: $75
    ld h, c                                       ; $618a: $61
    ld l, h                                       ; $618b: $6c
    ld l, h                                       ; $618c: $6c
    ld a, c                                       ; $618d: $79
    inc l                                         ; $618e: $2c
    jr nz, jr_01c_620a                            ; $618f: $20 $79

    ld l, a                                       ; $6191: $6f
    ld [hl], l                                    ; $6192: $75
    jr nz, jr_01c_61f8                            ; $6193: $20 $63

    ld [hl], l                                    ; $6195: $75
    ld [hl], d                                    ; $6196: $72
    halt                                          ; $6197: $76

jr_01c_6198:
    ld h, l                                       ; $6198: $65
    ld bc, $656c                                  ; $6199: $01 $6c $65
    ld h, [hl]                                    ; $619c: $66
    ld [hl], h                                    ; $619d: $74

jr_01c_619e:
    jr nz, jr_01c_620f                            ; $619e: $20 $6f

    ld [hl], d                                    ; $61a0: $72
    jr nz, jr_01c_6215                            ; $61a1: $20 $72

    ld l, c                                       ; $61a3: $69
    ld h, a                                       ; $61a4: $67
    ld l, b                                       ; $61a5: $68

jr_01c_61a6:
    ld [hl], h                                    ; $61a6: $74
    jr nz, @+$76                                  ; $61a7: $20 $74

    ld l, a                                       ; $61a9: $6f
    jr nz, jr_01c_620d                            ; $61aa: $20 $61

    halt                                          ; $61ac: $76
    ld l, a                                       ; $61ad: $6f

jr_01c_61ae:
    ld l, c                                       ; $61ae: $69
    ld h, h                                       ; $61af: $64
    ld bc, $6e61                                  ; $61b0: $01 $61 $6e

jr_01c_61b3:
    jr nz, jr_01c_6224                            ; $61b3: $20 $6f

    ld h, d                                       ; $61b5: $62
    ld [hl], e                                    ; $61b6: $73
    ld [hl], h                                    ; $61b7: $74
    ld h, c                                       ; $61b8: $61
    ld h, e                                       ; $61b9: $63
    ld l, h                                       ; $61ba: $6c
    ld h, l                                       ; $61bb: $65
    inc l                                         ; $61bc: $2c
    ld [bc], a                                    ; $61bd: $02
    ld h, d                                       ; $61be: $62
    ld [hl], l                                    ; $61bf: $75

jr_01c_61c0:
    ld [hl], h                                    ; $61c0: $74
    jr nz, @+$76                                  ; $61c1: $20 $74

    ld l, b                                       ; $61c3: $68
    ld h, l                                       ; $61c4: $65

jr_01c_61c5:
    ld [hl], d                                    ; $61c5: $72
    ld h, l                                       ; $61c6: $65
    daa                                           ; $61c7: $27
    ld [hl], e                                    ; $61c8: $73
    jr nz, jr_01c_622c                            ; $61c9: $20 $61

    ld h, e                                       ; $61cb: $63
    ld [hl], h                                    ; $61cc: $74
    ld [hl], l                                    ; $61cd: $75
    ld h, c                                       ; $61ce: $61
    ld l, h                                       ; $61cf: $6c
    ld l, h                                       ; $61d0: $6c
    ld a, c                                       ; $61d1: $79
    ld bc, $6e61                                  ; $61d2: $01 $61 $6e
    ld l, a                                       ; $61d5: $6f
    ld [hl], h                                    ; $61d6: $74
    ld l, b                                       ; $61d7: $68

jr_01c_61d8:
    ld h, l                                       ; $61d8: $65
    ld [hl], d                                    ; $61d9: $72
    jr nz, jr_01c_624e                            ; $61da: $20 $72

    ld l, a                                       ; $61dc: $6f
    ld [hl], l                                    ; $61dd: $75
    ld [hl], h                                    ; $61de: $74
    ld h, l                                       ; $61df: $65
    ld l, $03                                     ; $61e0: $2e $03

jr_01c_61e2:
    nop                                           ; $61e2: $00
    ld e, c                                       ; $61e3: $59
    ld l, a                                       ; $61e4: $6f
    ld [hl], l                                    ; $61e5: $75
    jr nz, jr_01c_624b                            ; $61e6: $20 $63

    ld h, c                                       ; $61e8: $61
    ld l, [hl]                                    ; $61e9: $6e
    jr nz, jr_01c_6261                            ; $61ea: $20 $75

jr_01c_61ec:
    ld [hl], e                                    ; $61ec: $73
    ld h, l                                       ; $61ed: $65
    jr nz, @+$63                                  ; $61ee: $20 $61

jr_01c_61f0:
    ld bc, $6c73                                  ; $61f0: $01 $73 $6c
    ld l, c                                       ; $61f3: $69
    ld h, e                                       ; $61f4: $63
    ld h, l                                       ; $61f5: $65
    jr nz, jr_01c_6267                            ; $61f6: $20 $6f

jr_01c_61f8:
    ld [hl], d                                    ; $61f8: $72
    jr nz, jr_01c_6263                            ; $61f9: $20 $68

    ld l, a                                       ; $61fb: $6f
    ld l, a                                       ; $61fc: $6f
    ld l, e                                       ; $61fd: $6b
    inc l                                         ; $61fe: $2c
    jr nz, jr_01c_6263                            ; $61ff: $20 $62

    ld [hl], l                                    ; $6201: $75
    ld [hl], h                                    ; $6202: $74
    ld bc, $6874                                  ; $6203: $01 $74 $68
    ld h, l                                       ; $6206: $65
    ld [hl], d                                    ; $6207: $72
    ld h, l                                       ; $6208: $65
    daa                                           ; $6209: $27

jr_01c_620a:
    ld [hl], e                                    ; $620a: $73
    jr nz, jr_01c_626e                            ; $620b: $20 $61

jr_01c_620d:
    ld l, [hl]                                    ; $620d: $6e
    ld l, a                                       ; $620e: $6f

jr_01c_620f:
    ld [hl], h                                    ; $620f: $74
    ld l, b                                       ; $6210: $68
    ld h, l                                       ; $6211: $65
    ld [hl], d                                    ; $6212: $72
    ld [bc], a                                    ; $6213: $02
    ld [hl], a                                    ; $6214: $77

jr_01c_6215:
    ld h, c                                       ; $6215: $61
    ld a, c                                       ; $6216: $79
    ld l, $20                                     ; $6217: $2e $20
    ld e, c                                       ; $6219: $59
    ld l, a                                       ; $621a: $6f
    ld [hl], l                                    ; $621b: $75
    jr nz, jr_01c_6281                            ; $621c: $20 $63

    ld h, c                                       ; $621e: $61
    ld l, [hl]                                    ; $621f: $6e
    jr nz, jr_01c_6296                            ; $6220: $20 $74

    ld [hl], d                                    ; $6222: $72
    ld a, c                                       ; $6223: $79

jr_01c_6224:
    ld bc, $6873                                  ; $6224: $01 $73 $68
    ld l, a                                       ; $6227: $6f
    ld l, a                                       ; $6228: $6f
    ld [hl], h                                    ; $6229: $74
    ld l, c                                       ; $622a: $69
    ld l, [hl]                                    ; $622b: $6e

jr_01c_622c:
    ld h, a                                       ; $622c: $67
    jr nz, jr_01c_629e                            ; $622d: $20 $6f

    halt                                          ; $622f: $76
    ld h, l                                       ; $6230: $65
    ld [hl], d                                    ; $6231: $72
    jr nz, jr_01c_62a3                            ; $6232: $20 $6f

    ld [hl], d                                    ; $6234: $72
    ld bc, $6e75                                  ; $6235: $01 $75 $6e
    ld h, h                                       ; $6238: $64
    ld h, l                                       ; $6239: $65
    ld [hl], d                                    ; $623a: $72
    jr nz, jr_01c_62b1                            ; $623b: $20 $74

    ld l, b                                       ; $623d: $68
    ld h, l                                       ; $623e: $65
    jr nz, jr_01c_62b5                            ; $623f: $20 $74

    ld [hl], d                                    ; $6241: $72
    ld h, l                                       ; $6242: $65
    ld h, l                                       ; $6243: $65
    ld [hl], e                                    ; $6244: $73
    ld l, $03                                     ; $6245: $2e $03
    nop                                           ; $6247: $00
    ld d, l                                       ; $6248: $55
    ld [hl], e                                    ; $6249: $73
    ld [hl], l                                    ; $624a: $75

jr_01c_624b:
    ld h, c                                       ; $624b: $61
    ld l, h                                       ; $624c: $6c
    ld l, h                                       ; $624d: $6c

jr_01c_624e:
    ld a, c                                       ; $624e: $79
    inc l                                         ; $624f: $2c
    jr nz, jr_01c_62cb                            ; $6250: $20 $79

    ld l, a                                       ; $6252: $6f
    ld [hl], l                                    ; $6253: $75
    jr nz, @+$65                                  ; $6254: $20 $63

    ld h, c                                       ; $6256: $61
    ld l, [hl]                                    ; $6257: $6e
    daa                                           ; $6258: $27
    ld [hl], h                                    ; $6259: $74
    ld bc, $6567                                  ; $625a: $01 $67 $65
    ld [hl], h                                    ; $625d: $74
    jr nz, jr_01c_62d4                            ; $625e: $20 $74

    ld l, a                                       ; $6260: $6f

jr_01c_6261:
    jr nz, jr_01c_62d7                            ; $6261: $20 $74

jr_01c_6263:
    ld l, b                                       ; $6263: $68
    ld h, l                                       ; $6264: $65
    jr nz, jr_01c_62ce                            ; $6265: $20 $67

jr_01c_6267:
    ld [hl], d                                    ; $6267: $72
    ld h, l                                       ; $6268: $65
    ld h, l                                       ; $6269: $65
    ld l, [hl]                                    ; $626a: $6e
    ld bc, $6874                                  ; $626b: $01 $74 $68

jr_01c_626e:
    ld [hl], d                                    ; $626e: $72
    ld l, a                                       ; $626f: $6f
    ld [hl], l                                    ; $6270: $75
    ld h, a                                       ; $6271: $67
    ld l, b                                       ; $6272: $68
    jr nz, jr_01c_62e9                            ; $6273: $20 $74

    ld [hl], d                                    ; $6275: $72
    ld h, l                                       ; $6276: $65
    ld h, l                                       ; $6277: $65
    ld [hl], e                                    ; $6278: $73
    inc l                                         ; $6279: $2c
    ld [bc], a                                    ; $627a: $02
    ld h, d                                       ; $627b: $62
    ld [hl], l                                    ; $627c: $75
    ld [hl], h                                    ; $627d: $74
    jr nz, @+$7b                                  ; $627e: $20 $79

    ld l, a                                       ; $6280: $6f

jr_01c_6281:
    ld [hl], l                                    ; $6281: $75
    jr nz, jr_01c_62f1                            ; $6282: $20 $6d

    ld l, c                                       ; $6284: $69
    ld h, a                                       ; $6285: $67
    ld l, b                                       ; $6286: $68
    ld [hl], h                                    ; $6287: $74
    jr nz, jr_01c_62ec                            ; $6288: $20 $62

    ld h, l                                       ; $628a: $65
    ld bc, $6261                                  ; $628b: $01 $61 $62
    ld l, h                                       ; $628e: $6c
    ld h, l                                       ; $628f: $65
    jr nz, jr_01c_6306                            ; $6290: $20 $74

    ld l, a                                       ; $6292: $6f
    jr nz, jr_01c_62fe                            ; $6293: $20 $69

    ld h, [hl]                                    ; $6295: $66

jr_01c_6296:
    jr nz, jr_01c_6311                            ; $6296: $20 $79

    ld l, a                                       ; $6298: $6f
    ld [hl], l                                    ; $6299: $75
    jr nz, jr_01c_6311                            ; $629a: $20 $75

    ld [hl], e                                    ; $629c: $73
    ld h, l                                       ; $629d: $65

jr_01c_629e:
    ld bc, $2061                                  ; $629e: $01 $61 $20
    ld l, h                                       ; $62a1: $6c
    ld l, a                                       ; $62a2: $6f

jr_01c_62a3:
    ld [hl], a                                    ; $62a3: $77
    jr nz, jr_01c_631a                            ; $62a4: $20 $74

    ld [hl], d                                    ; $62a6: $72
    ld h, c                                       ; $62a7: $61
    ld l, d                                       ; $62a8: $6a
    ld h, l                                       ; $62a9: $65
    ld h, e                                       ; $62aa: $63
    ld [hl], h                                    ; $62ab: $74
    ld l, a                                       ; $62ac: $6f
    ld [hl], d                                    ; $62ad: $72
    ld a, c                                       ; $62ae: $79
    ld l, $03                                     ; $62af: $2e $03

jr_01c_62b1:
    nop                                           ; $62b1: $00
    ld b, [hl]                                    ; $62b2: $46
    ld l, c                                       ; $62b3: $69
    ld [hl], d                                    ; $62b4: $72

jr_01c_62b5:
    ld [hl], e                                    ; $62b5: $73
    ld [hl], h                                    ; $62b6: $74
    inc l                                         ; $62b7: $2c
    jr nz, jr_01c_62da                            ; $62b8: $20 $20

    ld h, e                                       ; $62ba: $63
    ld l, b                                       ; $62bb: $68
    ld l, a                                       ; $62bc: $6f
    ld l, a                                       ; $62bd: $6f
    ld [hl], e                                    ; $62be: $73
    ld h, l                                       ; $62bf: $65
    jr nz, jr_01c_633b                            ; $62c0: $20 $79

    ld l, a                                       ; $62c2: $6f
    ld [hl], l                                    ; $62c3: $75
    ld [hl], d                                    ; $62c4: $72
    ld bc, $6873                                  ; $62c5: $01 $73 $68
    ld l, a                                       ; $62c8: $6f
    ld [hl], h                                    ; $62c9: $74
    inc l                                         ; $62ca: $2c

jr_01c_62cb:
    jr nz, jr_01c_632f                            ; $62cb: $20 $62

    ld [hl], l                                    ; $62cd: $75

jr_01c_62ce:
    ld [hl], h                                    ; $62ce: $74
    ld l, $2e                                     ; $62cf: $2e $2e
    ld l, $02                                     ; $62d1: $2e $02
    ld [hl], b                                    ; $62d3: $70

jr_01c_62d4:
    ld l, a                                       ; $62d4: $6f
    ld [hl], a                                    ; $62d5: $77
    ld h, l                                       ; $62d6: $65

jr_01c_62d7:
    ld [hl], d                                    ; $62d7: $72
    jr nz, jr_01c_634d                            ; $62d8: $20 $73

jr_01c_62da:
    ld l, b                                       ; $62da: $68
    ld l, a                                       ; $62db: $6f
    ld [hl], h                                    ; $62dc: $74
    ld [hl], e                                    ; $62dd: $73
    jr nz, jr_01c_6346                            ; $62de: $20 $66

    ld l, h                                       ; $62e0: $6c
    ld a, c                                       ; $62e1: $79
    ld bc, $6968                                  ; $62e2: $01 $68 $69
    ld h, a                                       ; $62e5: $67
    ld l, b                                       ; $62e6: $68
    ld h, l                                       ; $62e7: $65
    ld [hl], d                                    ; $62e8: $72

jr_01c_62e9:
    inc l                                         ; $62e9: $2c
    jr nz, jr_01c_635f                            ; $62ea: $20 $73

jr_01c_62ec:
    ld l, a                                       ; $62ec: $6f
    jr nz, jr_01c_6364                            ; $62ed: $20 $75

    ld [hl], e                                    ; $62ef: $73
    ld h, l                                       ; $62f0: $65

jr_01c_62f1:
    ld bc, $6f6e                                  ; $62f1: $01 $6e $6f
    ld [hl], d                                    ; $62f4: $72
    ld l, l                                       ; $62f5: $6d
    ld h, c                                       ; $62f6: $61
    ld l, h                                       ; $62f7: $6c
    jr nz, jr_01c_636a                            ; $62f8: $20 $70

    ld l, a                                       ; $62fa: $6f
    ld [hl], a                                    ; $62fb: $77
    ld h, l                                       ; $62fc: $65
    ld [hl], d                                    ; $62fd: $72

jr_01c_62fe:
    ld l, $03                                     ; $62fe: $2e $03
    nop                                           ; $6300: $00
    ld c, [hl]                                    ; $6301: $4e
    ld h, l                                       ; $6302: $65
    ld a, b                                       ; $6303: $78
    ld [hl], h                                    ; $6304: $74
    inc l                                         ; $6305: $2c

jr_01c_6306:
    jr nz, jr_01c_636b                            ; $6306: $20 $63

    ld l, b                                       ; $6308: $68
    ld l, a                                       ; $6309: $6f
    ld l, a                                       ; $630a: $6f
    ld [hl], e                                    ; $630b: $73
    ld h, l                                       ; $630c: $65
    ld bc, $2061                                  ; $630d: $01 $61 $20
    ld h, e                                       ; $6310: $63

jr_01c_6311:
    ld l, h                                       ; $6311: $6c
    ld [hl], l                                    ; $6312: $75
    ld h, d                                       ; $6313: $62
    ld l, $03                                     ; $6314: $2e $03
    nop                                           ; $6316: $00
    ld b, d                                       ; $6317: $42
    ld l, c                                       ; $6318: $69
    ld h, a                                       ; $6319: $67

jr_01c_631a:
    jr nz, jr_01c_637f                            ; $631a: $20 $63

    ld l, h                                       ; $631c: $6c
    ld [hl], l                                    ; $631d: $75
    ld h, d                                       ; $631e: $62
    ld [hl], e                                    ; $631f: $73
    jr nz, jr_01c_6383                            ; $6320: $20 $61

    ld [hl], d                                    ; $6322: $72
    ld h, l                                       ; $6323: $65
    jr nz, jr_01c_6388                            ; $6324: $20 $62

    ld h, l                                       ; $6326: $65
    ld [hl], e                                    ; $6327: $73
    ld [hl], h                                    ; $6328: $74
    ld bc, $6f66                                  ; $6329: $01 $66 $6f
    ld [hl], d                                    ; $632c: $72
    jr nz, jr_01c_639b                            ; $632d: $20 $6c

jr_01c_632f:
    ld l, a                                       ; $632f: $6f
    ld [hl], a                                    ; $6330: $77
    jr nz, jr_01c_63a7                            ; $6331: $20 $74

    ld [hl], d                                    ; $6333: $72
    ld h, c                                       ; $6334: $61
    ld l, d                                       ; $6335: $6a
    ld h, l                                       ; $6336: $65
    ld h, e                                       ; $6337: $63
    ld [hl], h                                    ; $6338: $74
    ld l, a                                       ; $6339: $6f
    ld [hl], d                                    ; $633a: $72

jr_01c_633b:
    ld l, c                                       ; $633b: $69
    ld h, l                                       ; $633c: $65
    ld [hl], e                                    ; $633d: $73
    inc l                                         ; $633e: $2c
    ld bc, $6f73                                  ; $633f: $01 $73 $6f
    jr nz, @+$77                                  ; $6342: $20 $75

    ld [hl], e                                    ; $6344: $73
    ld h, l                                       ; $6345: $65

jr_01c_6346:
    jr nz, @+$63                                  ; $6346: $20 $61

    jr nz, @+$34                                  ; $6348: $20 $32

    ld c, c                                       ; $634a: $49
    ld l, $03                                     ; $634b: $2e $03

jr_01c_634d:
    nop                                           ; $634d: $00
    ld c, c                                       ; $634e: $49
    ld h, [hl]                                    ; $634f: $66
    jr nz, jr_01c_639b                            ; $6350: $20 $49

    jr nz, jr_01c_63b7                            ; $6352: $20 $63

    ld l, a                                       ; $6354: $6f
    ld [hl], l                                    ; $6355: $75
    ld l, h                                       ; $6356: $6c
    ld h, h                                       ; $6357: $64
    jr nz, jr_01c_63c2                            ; $6358: $20 $68

    ld l, c                                       ; $635a: $69
    ld [hl], h                                    ; $635b: $74
    jr nz, jr_01c_63c7                            ; $635c: $20 $69

    ld [hl], h                                    ; $635e: $74

jr_01c_635f:
    jr nz, jr_01c_63d0                            ; $635f: $20 $6f

    halt                                          ; $6361: $76
    ld h, l                                       ; $6362: $65
    ld [hl], d                                    ; $6363: $72

jr_01c_6364:
    ld bc, $6874                                  ; $6364: $01 $74 $68
    ld h, l                                       ; $6367: $65
    ld [hl], d                                    ; $6368: $72
    ld h, l                                       ; $6369: $65

jr_01c_636a:
    inc l                                         ; $636a: $2c

jr_01c_636b:
    jr nz, jr_01c_63e1                            ; $636b: $20 $74

    ld l, b                                       ; $636d: $68
    ld h, c                                       ; $636e: $61
    ld [hl], h                                    ; $636f: $74
    daa                                           ; $6370: $27
    ld h, h                                       ; $6371: $64
    jr nz, @+$64                                  ; $6372: $20 $62

    ld h, l                                       ; $6374: $65
    ld bc, $7267                                  ; $6375: $01 $67 $72
    ld h, l                                       ; $6378: $65
    ld h, c                                       ; $6379: $61
    ld [hl], h                                    ; $637a: $74
    ld l, $02                                     ; $637b: $2e $02
    ld c, [hl]                                    ; $637d: $4e
    ld l, a                                       ; $637e: $6f

jr_01c_637f:
    ld [hl], a                                    ; $637f: $77
    jr nz, @+$6b                                  ; $6380: $20 $69

    ld [hl], h                                    ; $6382: $74

jr_01c_6383:
    daa                                           ; $6383: $27
    ld [hl], e                                    ; $6384: $73
    jr nz, jr_01c_6400                            ; $6385: $20 $79

    ld l, a                                       ; $6387: $6f

jr_01c_6388:
    ld [hl], l                                    ; $6388: $75
    ld [hl], d                                    ; $6389: $72
    jr nz, jr_01c_6400                            ; $638a: $20 $74

    ld [hl], l                                    ; $638c: $75
    ld [hl], d                                    ; $638d: $72
    ld l, [hl]                                    ; $638e: $6e
    inc l                                         ; $638f: $2c
    jr nz, jr_01c_63e1                            ; $6390: $20 $4f

    ld c, e                                       ; $6392: $4b
    ccf                                           ; $6393: $3f
    nop                                           ; $6394: $00
    ld b, [hl]                                    ; $6395: $46
    ld l, c                                       ; $6396: $69
    ld [hl], d                                    ; $6397: $72
    ld [hl], e                                    ; $6398: $73
    ld [hl], h                                    ; $6399: $74
    inc l                                         ; $639a: $2c

jr_01c_639b:
    jr nz, @+$7b                                  ; $639b: $20 $79

    ld l, a                                       ; $639d: $6f
    ld [hl], l                                    ; $639e: $75
    jr nz, @+$79                                  ; $639f: $20 $77

    ld h, c                                       ; $63a1: $61
    ld l, [hl]                                    ; $63a2: $6e
    ld [hl], h                                    ; $63a3: $74
    jr nz, jr_01c_641a                            ; $63a4: $20 $74

    ld l, a                                       ; $63a6: $6f

jr_01c_63a7:
    ld bc, $6968                                  ; $63a7: $01 $68 $69
    ld [hl], h                                    ; $63aa: $74
    jr nz, jr_01c_6424                            ; $63ab: $20 $77

    ld l, c                                       ; $63ad: $69
    ld [hl], h                                    ; $63ae: $74
    ld l, b                                       ; $63af: $68
    jr nz, jr_01c_6420                            ; $63b0: $20 $6e

    ld l, a                                       ; $63b2: $6f
    ld [hl], d                                    ; $63b3: $72
    ld l, l                                       ; $63b4: $6d
    ld h, c                                       ; $63b5: $61
    ld l, h                                       ; $63b6: $6c

jr_01c_63b7:
    ld bc, $6f70                                  ; $63b7: $01 $70 $6f
    ld [hl], a                                    ; $63ba: $77
    ld h, l                                       ; $63bb: $65
    ld [hl], d                                    ; $63bc: $72
    ld l, $03                                     ; $63bd: $2e $03
    nop                                           ; $63bf: $00
    ld c, [hl]                                    ; $63c0: $4e
    ld l, a                                       ; $63c1: $6f

jr_01c_63c2:
    ld [hl], a                                    ; $63c2: $77
    jr nz, jr_01c_6428                            ; $63c3: $20 $63

    ld l, b                                       ; $63c5: $68
    ld l, a                                       ; $63c6: $6f

jr_01c_63c7:
    ld l, a                                       ; $63c7: $6f
    ld [hl], e                                    ; $63c8: $73
    ld h, l                                       ; $63c9: $65
    jr nz, jr_01c_642d                            ; $63ca: $20 $61

    jr nz, jr_01c_6431                            ; $63cc: $20 $63

    ld l, h                                       ; $63ce: $6c
    ld [hl], l                                    ; $63cf: $75

jr_01c_63d0:
    ld h, d                                       ; $63d0: $62
    ld l, $01                                     ; $63d1: $2e $01
    ld c, c                                       ; $63d3: $49
    ld l, [hl]                                    ; $63d4: $6e
    jr nz, @+$6e                                  ; $63d5: $20 $6c

    ld l, c                                       ; $63d7: $69
    ld h, a                                       ; $63d8: $67
    ld l, b                                       ; $63d9: $68
    ld [hl], h                                    ; $63da: $74
    jr nz, jr_01c_644f                            ; $63db: $20 $72

    ld l, a                                       ; $63dd: $6f
    ld [hl], l                                    ; $63de: $75
    ld h, a                                       ; $63df: $67
    ld l, b                                       ; $63e0: $68

jr_01c_63e1:
    inc l                                         ; $63e1: $2c
    ld bc, $2061                                  ; $63e2: $01 $61 $20
    inc sp                                        ; $63e5: $33
    ld d, a                                       ; $63e6: $57
    jr nz, jr_01c_6458                            ; $63e7: $20 $6f

    ld [hl], d                                    ; $63e9: $72
    jr nz, jr_01c_644e                            ; $63ea: $20 $62

    ld l, c                                       ; $63ec: $69
    ld h, a                                       ; $63ed: $67
    ld h, a                                       ; $63ee: $67
    ld h, l                                       ; $63ef: $65
    ld [hl], d                                    ; $63f0: $72
    jr nz, @+$6b                                  ; $63f1: $20 $69

    ld [hl], e                                    ; $63f3: $73
    ld [bc], a                                    ; $63f4: $02
    ld [hl], h                                    ; $63f5: $74
    ld [hl], d                                    ; $63f6: $72
    ld l, a                                       ; $63f7: $6f
    ld [hl], l                                    ; $63f8: $75
    ld h, d                                       ; $63f9: $62
    ld l, h                                       ; $63fa: $6c
    ld h, l                                       ; $63fb: $65
    ld l, $20                                     ; $63fc: $2e $20
    ld e, c                                       ; $63fe: $59
    ld l, a                                       ; $63ff: $6f

jr_01c_6400:
    ld [hl], l                                    ; $6400: $75
    jr nz, jr_01c_6466                            ; $6401: $20 $63

    ld h, c                                       ; $6403: $61
    ld l, [hl]                                    ; $6404: $6e
    daa                                           ; $6405: $27
    ld [hl], h                                    ; $6406: $74
    ld bc, $6f67                                  ; $6407: $01 $67 $6f
    jr nz, jr_01c_6483                            ; $640a: $20 $77

    ld [hl], d                                    ; $640c: $72
    ld l, a                                       ; $640d: $6f
    ld l, [hl]                                    ; $640e: $6e
    ld h, a                                       ; $640f: $67
    jr nz, @+$79                                  ; $6410: $20 $77

    ld l, c                                       ; $6412: $69
    ld [hl], h                                    ; $6413: $74
    ld l, b                                       ; $6414: $68
    jr nz, jr_01c_6478                            ; $6415: $20 $61

    jr nz, jr_01c_644b                            ; $6417: $20 $32

    ld c, c                                       ; $6419: $49

jr_01c_641a:
    ld bc, $726f                                  ; $641a: $01 $6f $72
    jr nz, jr_01c_6493                            ; $641d: $20 $74

    ld l, b                                       ; $641f: $68

jr_01c_6420:
    ld h, l                                       ; $6420: $65
    ld [hl], d                                    ; $6421: $72
    ld h, l                                       ; $6422: $65
    ld h, c                                       ; $6423: $61

jr_01c_6424:
    ld h, d                                       ; $6424: $62
    ld l, a                                       ; $6425: $6f
    ld [hl], l                                    ; $6426: $75
    ld [hl], h                                    ; $6427: $74

jr_01c_6428:
    ld [hl], e                                    ; $6428: $73
    ld l, $03                                     ; $6429: $2e $03
    nop                                           ; $642b: $00
    ld c, a                                       ; $642c: $4f

jr_01c_642d:
    ld c, e                                       ; $642d: $4b
    ld l, $20                                     ; $642e: $2e $20
    ld c, h                                       ; $6430: $4c

jr_01c_6431:
    ld h, l                                       ; $6431: $65
    ld [hl], h                                    ; $6432: $74
    daa                                           ; $6433: $27
    ld [hl], e                                    ; $6434: $73
    jr nz, jr_01c_64aa                            ; $6435: $20 $73

    ld h, l                                       ; $6437: $65
    ld h, l                                       ; $6438: $65
    jr nz, jr_01c_64a4                            ; $6439: $20 $69

    ld [hl], h                                    ; $643b: $74
    ld hl, $0003                                  ; $643c: $21 $03 $00
    ld c, b                                       ; $643f: $48
    ld l, l                                       ; $6440: $6d
    ld l, l                                       ; $6441: $6d
    ld l, $2e                                     ; $6442: $2e $2e
    ld l, $59                                     ; $6444: $2e $59
    ld l, a                                       ; $6446: $6f
    ld [hl], l                                    ; $6447: $75
    jr nz, jr_01c_64ae                            ; $6448: $20 $64

    ld l, c                                       ; $644a: $69

jr_01c_644b:
    ld h, h                                       ; $644b: $64
    ld l, [hl]                                    ; $644c: $6e
    daa                                           ; $644d: $27

jr_01c_644e:
    ld [hl], h                                    ; $644e: $74

jr_01c_644f:
    jr nz, jr_01c_64b8                            ; $644f: $20 $67

    ld h, l                                       ; $6451: $65
    ld [hl], h                                    ; $6452: $74
    ld bc, $7469                                  ; $6453: $01 $69 $74
    jr nz, jr_01c_64c7                            ; $6456: $20 $6f

jr_01c_6458:
    ld l, [hl]                                    ; $6458: $6e
    ld [hl], h                                    ; $6459: $74
    ld l, a                                       ; $645a: $6f
    jr nz, @+$76                                  ; $645b: $20 $74

    ld l, b                                       ; $645d: $68
    ld h, l                                       ; $645e: $65
    ld bc, $6166                                  ; $645f: $01 $66 $61
    ld l, c                                       ; $6462: $69
    ld [hl], d                                    ; $6463: $72
    ld [hl], a                                    ; $6464: $77
    ld h, c                                       ; $6465: $61

jr_01c_6466:
    ld a, c                                       ; $6466: $79
    ld l, $2e                                     ; $6467: $2e $2e
    ld l, $54                                     ; $6469: $2e $54
    ld l, b                                       ; $646b: $68
    ld l, c                                       ; $646c: $69
    ld [hl], e                                    ; $646d: $73
    jr nz, jr_01c_64d9                            ; $646e: $20 $69

    ld [hl], e                                    ; $6470: $73
    ld [bc], a                                    ; $6471: $02
    ld h, c                                       ; $6472: $61
    jr nz, jr_01c_64e9                            ; $6473: $20 $74

    ld [hl], d                                    ; $6475: $72
    ld l, a                                       ; $6476: $6f
    ld [hl], l                                    ; $6477: $75

jr_01c_6478:
    ld h, d                                       ; $6478: $62
    ld l, h                                       ; $6479: $6c
    ld h, l                                       ; $647a: $65
    jr nz, jr_01c_64f0                            ; $647b: $20 $73

    ld l, b                                       ; $647d: $68
    ld l, a                                       ; $647e: $6f
    ld [hl], h                                    ; $647f: $74
    inc l                                         ; $6480: $2c
    jr nz, jr_01c_64f6                            ; $6481: $20 $73

jr_01c_6483:
    ld l, a                                       ; $6483: $6f
    ld bc, $6f79                                  ; $6484: $01 $79 $6f
    ld [hl], l                                    ; $6487: $75
    jr nz, @+$6a                                  ; $6488: $20 $68

    ld h, c                                       ; $648a: $61
    halt                                          ; $648b: $76
    ld h, l                                       ; $648c: $65
    jr nz, jr_01c_6503                            ; $648d: $20 $74

    ld l, a                                       ; $648f: $6f
    jr nz, jr_01c_64f9                            ; $6490: $20 $67

    ld h, l                                       ; $6492: $65

jr_01c_6493:
    ld [hl], h                                    ; $6493: $74
    ld bc, $6162                                  ; $6494: $01 $62 $61
    ld h, e                                       ; $6497: $63
    ld l, e                                       ; $6498: $6b
    jr nz, jr_01c_650f                            ; $6499: $20 $74

    ld l, a                                       ; $649b: $6f
    jr nz, jr_01c_6512                            ; $649c: $20 $74

    ld l, b                                       ; $649e: $68
    ld h, l                                       ; $649f: $65
    jr nz, jr_01c_6508                            ; $64a0: $20 $66

    ld h, c                                       ; $64a2: $61
    ld l, c                                       ; $64a3: $69

jr_01c_64a4:
    ld [hl], d                                    ; $64a4: $72
    ld [hl], a                                    ; $64a5: $77
    ld h, c                                       ; $64a6: $61
    ld a, c                                       ; $64a7: $79
    ld l, $03                                     ; $64a8: $2e $03

jr_01c_64aa:
    nop                                           ; $64aa: $00
    ld d, h                                       ; $64ab: $54
    ld l, b                                       ; $64ac: $68
    ld h, c                                       ; $64ad: $61

jr_01c_64ae:
    ld [hl], h                                    ; $64ae: $74
    daa                                           ; $64af: $27
    ld [hl], e                                    ; $64b0: $73
    jr nz, jr_01c_6525                            ; $64b1: $20 $72

    ld h, l                                       ; $64b3: $65
    ld h, c                                       ; $64b4: $61
    ld l, h                                       ; $64b5: $6c
    ld l, h                                       ; $64b6: $6c
    ld a, c                                       ; $64b7: $79

jr_01c_64b8:
    jr nz, jr_01c_6521                            ; $64b8: $20 $67

    ld l, a                                       ; $64ba: $6f
    ld l, a                                       ; $64bb: $6f
    ld h, h                                       ; $64bc: $64
    ld bc, $6f66                                  ; $64bd: $01 $66 $6f
    ld [hl], d                                    ; $64c0: $72
    jr nz, @+$63                                  ; $64c1: $20 $61

    jr nz, jr_01c_6539                            ; $64c3: $20 $74

    ld [hl], d                                    ; $64c5: $72
    ld l, a                                       ; $64c6: $6f

jr_01c_64c7:
    ld [hl], l                                    ; $64c7: $75
    ld h, d                                       ; $64c8: $62
    ld l, h                                       ; $64c9: $6c
    ld h, l                                       ; $64ca: $65
    ld bc, $6873                                  ; $64cb: $01 $73 $68
    ld l, a                                       ; $64ce: $6f
    ld [hl], h                                    ; $64cf: $74
    ld hl, $0003                                  ; $64d0: $21 $03 $00
    ld c, a                                       ; $64d3: $4f
    ld l, [hl]                                    ; $64d4: $6e
    jr nz, jr_01c_654b                            ; $64d5: $20 $74

    ld [hl], d                                    ; $64d7: $72
    ld l, a                                       ; $64d8: $6f

jr_01c_64d9:
    ld [hl], l                                    ; $64d9: $75
    ld h, d                                       ; $64da: $62
    ld l, h                                       ; $64db: $6c
    ld h, l                                       ; $64dc: $65
    jr nz, @+$75                                  ; $64dd: $20 $73

    ld l, b                                       ; $64df: $68
    ld l, a                                       ; $64e0: $6f
    ld [hl], h                                    ; $64e1: $74
    ld [hl], e                                    ; $64e2: $73
    inc l                                         ; $64e3: $2c
    ld bc, $6f63                                  ; $64e4: $01 $63 $6f
    ld l, [hl]                                    ; $64e7: $6e
    ld [hl], e                                    ; $64e8: $73

jr_01c_64e9:
    ld l, c                                       ; $64e9: $69
    ld h, h                                       ; $64ea: $64
    ld h, l                                       ; $64eb: $65
    ld [hl], d                                    ; $64ec: $72
    jr nz, jr_01c_6550                            ; $64ed: $20 $61

    ld l, h                                       ; $64ef: $6c

jr_01c_64f0:
    ld l, h                                       ; $64f0: $6c
    ld bc, $6f70                                  ; $64f1: $01 $70 $6f
    ld [hl], e                                    ; $64f4: $73
    ld [hl], e                                    ; $64f5: $73

jr_01c_64f6:
    ld l, c                                       ; $64f6: $69
    ld h, d                                       ; $64f7: $62
    ld l, c                                       ; $64f8: $69

jr_01c_64f9:
    ld l, h                                       ; $64f9: $6c
    ld l, c                                       ; $64fa: $69
    ld [hl], h                                    ; $64fb: $74
    ld l, c                                       ; $64fc: $69
    ld h, l                                       ; $64fd: $65
    ld [hl], e                                    ; $64fe: $73
    jr nz, jr_01c_6563                            ; $64ff: $20 $62

    ld h, l                                       ; $6501: $65
    ld h, [hl]                                    ; $6502: $66

jr_01c_6503:
    ld l, a                                       ; $6503: $6f
    ld [hl], d                                    ; $6504: $72
    ld h, l                                       ; $6505: $65
    ld [bc], a                                    ; $6506: $02
    ld h, e                                       ; $6507: $63

jr_01c_6508:
    ld l, b                                       ; $6508: $68
    ld l, a                                       ; $6509: $6f
    ld l, a                                       ; $650a: $6f
    ld [hl], e                                    ; $650b: $73
    ld l, c                                       ; $650c: $69
    ld l, [hl]                                    ; $650d: $6e
    ld h, a                                       ; $650e: $67

jr_01c_650f:
    jr nz, jr_01c_658a                            ; $650f: $20 $79

    ld l, a                                       ; $6511: $6f

jr_01c_6512:
    ld [hl], l                                    ; $6512: $75
    ld [hl], d                                    ; $6513: $72
    jr nz, @+$75                                  ; $6514: $20 $73

    ld l, b                                       ; $6516: $68
    ld l, a                                       ; $6517: $6f
    ld [hl], h                                    ; $6518: $74
    ld l, $03                                     ; $6519: $2e $03
    nop                                           ; $651b: $00
    ld c, a                                       ; $651c: $4f
    ld l, b                                       ; $651d: $68
    ld hl, $5920                                  ; $651e: $21 $20 $59

jr_01c_6521:
    ld l, a                                       ; $6521: $6f
    ld [hl], l                                    ; $6522: $75
    jr nz, jr_01c_6591                            ; $6523: $20 $6c

jr_01c_6525:
    ld h, c                                       ; $6525: $61
    ld l, [hl]                                    ; $6526: $6e
    ld h, h                                       ; $6527: $64
    ld h, l                                       ; $6528: $65
    ld h, h                                       ; $6529: $64
    jr nz, jr_01c_659b                            ; $652a: $20 $6f

    ld l, [hl]                                    ; $652c: $6e
    ld bc, $6874                                  ; $652d: $01 $74 $68
    ld h, l                                       ; $6530: $65
    jr nz, jr_01c_65a1                            ; $6531: $20 $6e

    ld h, l                                       ; $6533: $65
    ld a, b                                       ; $6534: $78
    ld [hl], h                                    ; $6535: $74
    jr nz, @+$68                                  ; $6536: $20 $66

    ld h, c                                       ; $6538: $61

jr_01c_6539:
    ld l, c                                       ; $6539: $69
    ld [hl], d                                    ; $653a: $72
    ld [hl], a                                    ; $653b: $77
    ld h, c                                       ; $653c: $61
    ld a, c                                       ; $653d: $79
    jr nz, @+$71                                  ; $653e: $20 $6f

    halt                                          ; $6540: $76
    ld h, l                                       ; $6541: $65
    ld [hl], d                                    ; $6542: $72
    ld hl, $4902                                  ; $6543: $21 $02 $49
    ld [hl], h                                    ; $6546: $74
    daa                                           ; $6547: $27
    ld [hl], e                                    ; $6548: $73
    jr nz, jr_01c_65b1                            ; $6549: $20 $66

jr_01c_654b:
    ld l, c                                       ; $654b: $69
    ld l, [hl]                                    ; $654c: $6e
    ld h, l                                       ; $654d: $65
    jr nz, @+$6b                                  ; $654e: $20 $69

jr_01c_6550:
    ld h, [hl]                                    ; $6550: $66
    jr nz, @+$7b                                  ; $6551: $20 $79

    ld l, a                                       ; $6553: $6f
    ld [hl], l                                    ; $6554: $75
    ld bc, $616c                                  ; $6555: $01 $6c $61
    ld l, [hl]                                    ; $6558: $6e
    ld h, h                                       ; $6559: $64
    jr nz, jr_01c_65cb                            ; $655a: $20 $6f

    ld l, [hl]                                    ; $655c: $6e
    jr nz, jr_01c_65d3                            ; $655d: $20 $74

    ld l, b                                       ; $655f: $68
    ld h, l                                       ; $6560: $65
    jr nz, jr_01c_65c9                            ; $6561: $20 $66

jr_01c_6563:
    ld h, c                                       ; $6563: $61
    ld l, c                                       ; $6564: $69
    ld [hl], d                                    ; $6565: $72
    dec l                                         ; $6566: $2d
    ld bc, $6177                                  ; $6567: $01 $77 $61
    ld a, c                                       ; $656a: $79
    inc l                                         ; $656b: $2c
    jr nz, @+$64                                  ; $656c: $20 $62

    ld [hl], l                                    ; $656e: $75
    ld [hl], h                                    ; $656f: $74
    ld l, $2e                                     ; $6570: $2e $2e
    ld l, $03                                     ; $6572: $2e $03
    nop                                           ; $6574: $00
    ld c, h                                       ; $6575: $4c
    ld h, c                                       ; $6576: $61
    ld l, [hl]                                    ; $6577: $6e
    ld h, h                                       ; $6578: $64
    jr nz, jr_01c_65e4                            ; $6579: $20 $69

    ld l, [hl]                                    ; $657b: $6e
    jr nz, jr_01c_65f2                            ; $657c: $20 $74

    ld l, b                                       ; $657e: $68
    ld h, l                                       ; $657f: $65
    jr nz, jr_01c_65f6                            ; $6580: $20 $74

    ld [hl], d                                    ; $6582: $72
    ld h, l                                       ; $6583: $65
    ld h, l                                       ; $6584: $65
    ld [hl], e                                    ; $6585: $73
    inc l                                         ; $6586: $2c
    ld bc, $6e61                                  ; $6587: $01 $61 $6e

jr_01c_658a:
    ld h, h                                       ; $658a: $64
    jr nz, jr_01c_6606                            ; $658b: $20 $79

    ld l, a                                       ; $658d: $6f
    ld [hl], l                                    ; $658e: $75
    jr nz, jr_01c_6604                            ; $658f: $20 $73

jr_01c_6591:
    ld l, b                                       ; $6591: $68
    ld l, a                                       ; $6592: $6f
    ld [hl], l                                    ; $6593: $75
    ld l, h                                       ; $6594: $6c
    ld h, h                                       ; $6595: $64
    ld bc, $6573                                  ; $6596: $01 $73 $65
    ld [hl], h                                    ; $6599: $74
    ld [hl], h                                    ; $659a: $74

jr_01c_659b:
    ld l, h                                       ; $659b: $6c
    ld h, l                                       ; $659c: $65
    jr nz, jr_01c_6605                            ; $659d: $20 $66

    ld l, a                                       ; $659f: $6f
    ld [hl], d                                    ; $65a0: $72

jr_01c_65a1:
    jr nz, jr_01c_6604                            ; $65a1: $20 $61

    jr nz, jr_01c_6607                            ; $65a3: $20 $62

    ld l, a                                       ; $65a5: $6f
    ld h, a                                       ; $65a6: $67
    ld h, l                                       ; $65a7: $65
    ld a, c                                       ; $65a8: $79
    inc l                                         ; $65a9: $2c
    ld [bc], a                                    ; $65aa: $02
    ld h, d                                       ; $65ab: $62
    ld [hl], l                                    ; $65ac: $75
    ld [hl], h                                    ; $65ad: $74
    jr nz, jr_01c_6623                            ; $65ae: $20 $73

    ld l, a                                       ; $65b0: $6f

jr_01c_65b1:
    ld l, l                                       ; $65b1: $6d
    ld h, l                                       ; $65b2: $65
    ld [hl], h                                    ; $65b3: $74
    ld l, c                                       ; $65b4: $69
    ld l, l                                       ; $65b5: $6d
    ld h, l                                       ; $65b6: $65
    ld [hl], e                                    ; $65b7: $73
    jr nz, jr_01c_6633                            ; $65b8: $20 $79

    ld l, a                                       ; $65ba: $6f
    ld [hl], l                                    ; $65bb: $75
    ld bc, $6163                                  ; $65bc: $01 $63 $61
    ld l, [hl]                                    ; $65bf: $6e
    jr nz, @+$74                                  ; $65c0: $20 $72

    ld l, c                                       ; $65c2: $69
    ld [hl], e                                    ; $65c3: $73
    ld l, e                                       ; $65c4: $6b
    jr nz, jr_01c_662e                            ; $65c5: $20 $67

    ld l, a                                       ; $65c7: $6f
    ld l, c                                       ; $65c8: $69

jr_01c_65c9:
    ld l, [hl]                                    ; $65c9: $6e
    ld h, a                                       ; $65ca: $67

jr_01c_65cb:
    jr nz, jr_01c_6633                            ; $65cb: $20 $66

    ld l, a                                       ; $65cd: $6f
    ld [hl], d                                    ; $65ce: $72
    ld bc, $6874                                  ; $65cf: $01 $74 $68
    ld h, l                                       ; $65d2: $65

jr_01c_65d3:
    jr nz, jr_01c_663c                            ; $65d3: $20 $67

    ld [hl], d                                    ; $65d5: $72
    ld h, l                                       ; $65d6: $65
    ld h, l                                       ; $65d7: $65
    ld l, [hl]                                    ; $65d8: $6e
    inc l                                         ; $65d9: $2c
    jr nz, jr_01c_664e                            ; $65da: $20 $72

    ld l, c                                       ; $65dc: $69
    ld h, a                                       ; $65dd: $67
    ld l, b                                       ; $65de: $68
    ld [hl], h                                    ; $65df: $74
    ccf                                           ; $65e0: $3f
    nop                                           ; $65e1: $00
    ld b, c                                       ; $65e2: $41
    ld l, [hl]                                    ; $65e3: $6e

jr_01c_65e4:
    ld a, c                                       ; $65e4: $79
    ld l, a                                       ; $65e5: $6f
    ld l, [hl]                                    ; $65e6: $6e
    ld h, l                                       ; $65e7: $65
    jr nz, jr_01c_6661                            ; $65e8: $20 $77

    ld l, b                                       ; $65ea: $68
    ld l, a                                       ; $65eb: $6f
    jr nz, jr_01c_665b                            ; $65ec: $20 $6d

    ld l, c                                       ; $65ee: $69
    ld [hl], e                                    ; $65ef: $73
    ld [hl], e                                    ; $65f0: $73
    ld h, l                                       ; $65f1: $65

jr_01c_65f2:
    ld [hl], e                                    ; $65f2: $73
    ld bc, $6177                                  ; $65f3: $01 $77 $61

jr_01c_65f6:
    ld l, [hl]                                    ; $65f6: $6e
    ld [hl], h                                    ; $65f7: $74
    ld [hl], e                                    ; $65f8: $73
    jr nz, jr_01c_666f                            ; $65f9: $20 $74

    ld l, a                                       ; $65fb: $6f
    jr nz, jr_01c_6662                            ; $65fc: $20 $64

    ld l, a                                       ; $65fe: $6f
    ld bc, $6877                                  ; $65ff: $01 $77 $68
    ld h, c                                       ; $6602: $61
    ld [hl], h                                    ; $6603: $74

jr_01c_6604:
    ld h, l                                       ; $6604: $65

jr_01c_6605:
    halt                                          ; $6605: $76

jr_01c_6606:
    ld h, l                                       ; $6606: $65

jr_01c_6607:
    ld [hl], d                                    ; $6607: $72
    jr nz, jr_01c_6673                            ; $6608: $20 $69

    ld [hl], h                                    ; $660a: $74
    jr nz, jr_01c_6681                            ; $660b: $20 $74

    ld h, c                                       ; $660d: $61
    ld l, e                                       ; $660e: $6b
    ld h, l                                       ; $660f: $65
    ld [hl], e                                    ; $6610: $73
    ld [bc], a                                    ; $6611: $02
    ld [hl], h                                    ; $6612: $74
    ld l, a                                       ; $6613: $6f
    jr nz, @+$74                                  ; $6614: $20 $72

    ld h, l                                       ; $6616: $65
    ld h, e                                       ; $6617: $63
    ld l, a                                       ; $6618: $6f
    halt                                          ; $6619: $76
    ld h, l                                       ; $661a: $65
    ld [hl], d                                    ; $661b: $72
    ld l, $20                                     ; $661c: $2e $20
    ld c, c                                       ; $661e: $49
    ld bc, $6163                                  ; $661f: $01 $63 $61
    ld l, [hl]                                    ; $6622: $6e

jr_01c_6623:
    daa                                           ; $6623: $27
    ld [hl], h                                    ; $6624: $74
    jr nz, @+$63                                  ; $6625: $20 $61

    ld l, h                                       ; $6627: $6c
    ld [hl], a                                    ; $6628: $77
    ld h, c                                       ; $6629: $61
    ld a, c                                       ; $662a: $79
    ld [hl], e                                    ; $662b: $73
    jr nz, jr_01c_6697                            ; $662c: $20 $69

jr_01c_662e:
    ld h, a                                       ; $662e: $67
    ld l, [hl]                                    ; $662f: $6e
    ld l, a                                       ; $6630: $6f
    ld [hl], d                                    ; $6631: $72
    ld h, l                                       ; $6632: $65

jr_01c_6633:
    ld bc, $6874                                  ; $6633: $01 $74 $68
    ld h, c                                       ; $6636: $61
    ld [hl], h                                    ; $6637: $74
    jr nz, jr_01c_66a0                            ; $6638: $20 $66

    ld h, l                                       ; $663a: $65
    ld h, l                                       ; $663b: $65

jr_01c_663c:
    ld l, h                                       ; $663c: $6c
    ld l, c                                       ; $663d: $69
    ld l, [hl]                                    ; $663e: $6e
    ld h, a                                       ; $663f: $67
    ld l, $03                                     ; $6640: $2e $03
    nop                                           ; $6642: $00
    ld b, [hl]                                    ; $6643: $46
    ld l, a                                       ; $6644: $6f
    ld [hl], d                                    ; $6645: $72
    jr nz, @+$6a                                  ; $6646: $20 $68

    ld l, c                                       ; $6648: $69
    ld h, a                                       ; $6649: $67
    ld l, b                                       ; $664a: $68
    jr nz, @+$74                                  ; $664b: $20 $72

    ld l, c                                       ; $664d: $69

jr_01c_664e:
    ld [hl], e                                    ; $664e: $73
    ld l, e                                       ; $664f: $6b
    ld bc, $6873                                  ; $6650: $01 $73 $68
    ld l, a                                       ; $6653: $6f
    ld [hl], h                                    ; $6654: $74
    ld [hl], e                                    ; $6655: $73
    inc l                                         ; $6656: $2c
    jr nz, @+$7b                                  ; $6657: $20 $79

    ld l, a                                       ; $6659: $6f
    ld [hl], l                                    ; $665a: $75

jr_01c_665b:
    jr nz, jr_01c_66d0                            ; $665b: $20 $73

    ld l, b                                       ; $665d: $68
    ld l, a                                       ; $665e: $6f
    ld [hl], l                                    ; $665f: $75
    ld l, h                                       ; $6660: $6c

jr_01c_6661:
    ld h, h                                       ; $6661: $64

jr_01c_6662:
    ld bc, $756a                                  ; $6662: $01 $6a $75
    ld [hl], e                                    ; $6665: $73
    ld [hl], h                                    ; $6666: $74
    jr nz, @+$72                                  ; $6667: $20 $70

    ld l, h                                       ; $6669: $6c
    ld h, c                                       ; $666a: $61
    ld a, c                                       ; $666b: $79
    jr nz, jr_01c_66d7                            ; $666c: $20 $69

    ld [hl], h                                    ; $666e: $74

jr_01c_666f:
    jr nz, jr_01c_66e4                            ; $666f: $20 $73

    ld h, c                                       ; $6671: $61
    ld h, [hl]                                    ; $6672: $66

jr_01c_6673:
    ld h, l                                       ; $6673: $65
    inc l                                         ; $6674: $2c
    ld [bc], a                                    ; $6675: $02
    ld h, d                                       ; $6676: $62
    ld [hl], l                                    ; $6677: $75
    ld [hl], h                                    ; $6678: $74
    jr nz, jr_01c_66ee                            ; $6679: $20 $73

    ld l, a                                       ; $667b: $6f
    ld l, l                                       ; $667c: $6d
    ld h, l                                       ; $667d: $65
    ld [hl], h                                    ; $667e: $74
    ld l, c                                       ; $667f: $69
    ld l, l                                       ; $6680: $6d

jr_01c_6681:
    ld h, l                                       ; $6681: $65
    ld [hl], e                                    ; $6682: $73
    jr nz, jr_01c_66fe                            ; $6683: $20 $79

    ld l, a                                       ; $6685: $6f
    ld [hl], l                                    ; $6686: $75
    ld bc, $6168                                  ; $6687: $01 $68 $61
    halt                                          ; $668a: $76
    ld h, l                                       ; $668b: $65
    jr nz, jr_01c_6702                            ; $668c: $20 $74

    ld l, a                                       ; $668e: $6f
    jr nz, jr_01c_6705                            ; $668f: $20 $74

    ld h, c                                       ; $6691: $61
    ld l, e                                       ; $6692: $6b
    ld h, l                                       ; $6693: $65
    jr nz, @+$74                                  ; $6694: $20 $72

    ld l, c                                       ; $6696: $69

jr_01c_6697:
    ld [hl], e                                    ; $6697: $73
    ld l, e                                       ; $6698: $6b
    ld [hl], e                                    ; $6699: $73
    ld bc, $6e69                                  ; $669a: $01 $69 $6e
    jr nz, jr_01c_6702                            ; $669d: $20 $63

    ld l, a                                       ; $669f: $6f

jr_01c_66a0:
    ld l, l                                       ; $66a0: $6d
    ld [hl], b                                    ; $66a1: $70
    ld h, l                                       ; $66a2: $65
    ld [hl], h                                    ; $66a3: $74
    ld l, c                                       ; $66a4: $69
    ld [hl], h                                    ; $66a5: $74
    ld l, c                                       ; $66a6: $69
    ld l, a                                       ; $66a7: $6f
    ld l, [hl]                                    ; $66a8: $6e
    ld l, $03                                     ; $66a9: $2e $03
    nop                                           ; $66ab: $00
    ld d, l                                       ; $66ac: $55
    ld [hl], e                                    ; $66ad: $73
    ld h, l                                       ; $66ae: $65
    jr nz, jr_01c_6712                            ; $66af: $20 $61

    jr nz, jr_01c_6706                            ; $66b1: $20 $53

    ld d, a                                       ; $66b3: $57
    jr nz, jr_01c_671f                            ; $66b4: $20 $69

    ld h, [hl]                                    ; $66b6: $66
    jr nz, jr_01c_6732                            ; $66b7: $20 $79

    ld l, a                                       ; $66b9: $6f
    ld [hl], l                                    ; $66ba: $75
    daa                                           ; $66bb: $27
    ld [hl], d                                    ; $66bc: $72
    ld h, l                                       ; $66bd: $65
    ld bc, $756a                                  ; $66be: $01 $6a $75
    ld [hl], e                                    ; $66c1: $73
    ld [hl], h                                    ; $66c2: $74
    jr nz, jr_01c_6739                            ; $66c3: $20 $74

    ld [hl], d                                    ; $66c5: $72
    ld a, c                                       ; $66c6: $79
    ld l, c                                       ; $66c7: $69
    ld l, [hl]                                    ; $66c8: $6e
    ld h, a                                       ; $66c9: $67
    jr nz, jr_01c_6740                            ; $66ca: $20 $74

    ld l, a                                       ; $66cc: $6f
    jr nz, @+$69                                  ; $66cd: $20 $67

    ld h, l                                       ; $66cf: $65

jr_01c_66d0:
    ld [hl], h                                    ; $66d0: $74
    ld bc, $756f                                  ; $66d1: $01 $6f $75
    ld [hl], h                                    ; $66d4: $74
    jr nz, jr_01c_6746                            ; $66d5: $20 $6f

jr_01c_66d7:
    ld h, [hl]                                    ; $66d7: $66
    jr nz, jr_01c_674e                            ; $66d8: $20 $74

    ld l, b                                       ; $66da: $68
    ld h, l                                       ; $66db: $65
    jr nz, jr_01c_6755                            ; $66dc: $20 $77

    ld l, a                                       ; $66de: $6f
    ld l, a                                       ; $66df: $6f
    ld h, h                                       ; $66e0: $64
    ld [hl], e                                    ; $66e1: $73
    inc l                                         ; $66e2: $2c
    ld [bc], a                                    ; $66e3: $02

jr_01c_66e4:
    ld h, d                                       ; $66e4: $62
    ld [hl], l                                    ; $66e5: $75
    ld [hl], h                                    ; $66e6: $74
    jr nz, jr_01c_674c                            ; $66e7: $20 $63

    ld l, a                                       ; $66e9: $6f
    ld l, [hl]                                    ; $66ea: $6e
    ld [hl], e                                    ; $66eb: $73
    ld l, c                                       ; $66ec: $69
    ld h, h                                       ; $66ed: $64

jr_01c_66ee:
    ld h, l                                       ; $66ee: $65
    ld [hl], d                                    ; $66ef: $72
    jr nz, jr_01c_6753                            ; $66f0: $20 $61

    ld l, h                                       ; $66f2: $6c
    ld l, h                                       ; $66f3: $6c
    ld bc, $6874                                  ; $66f4: $01 $74 $68
    ld h, l                                       ; $66f7: $65
    jr nz, jr_01c_6769                            ; $66f8: $20 $6f

    ld [hl], b                                    ; $66fa: $70
    ld [hl], h                                    ; $66fb: $74
    ld l, c                                       ; $66fc: $69
    ld l, a                                       ; $66fd: $6f

jr_01c_66fe:
    ld l, [hl]                                    ; $66fe: $6e
    ld [hl], e                                    ; $66ff: $73
    jr nz, @+$6b                                  ; $6700: $20 $69

jr_01c_6702:
    ld h, [hl]                                    ; $6702: $66
    jr nz, jr_01c_677e                            ; $6703: $20 $79

jr_01c_6705:
    ld l, a                                       ; $6705: $6f

jr_01c_6706:
    ld [hl], l                                    ; $6706: $75
    ld bc, $6177                                  ; $6707: $01 $77 $61
    ld l, [hl]                                    ; $670a: $6e
    ld [hl], h                                    ; $670b: $74
    jr nz, jr_01c_6782                            ; $670c: $20 $74

    ld l, b                                       ; $670e: $68
    ld h, l                                       ; $670f: $65
    jr nz, jr_01c_6779                            ; $6710: $20 $67

jr_01c_6712:
    ld [hl], d                                    ; $6712: $72
    ld h, l                                       ; $6713: $65
    ld h, l                                       ; $6714: $65
    ld l, [hl]                                    ; $6715: $6e
    ld l, $03                                     ; $6716: $2e $03
    nop                                           ; $6718: $00
    ld c, [hl]                                    ; $6719: $4e
    ld l, a                                       ; $671a: $6f
    ld [hl], d                                    ; $671b: $72
    ld l, l                                       ; $671c: $6d
    ld h, c                                       ; $671d: $61
    ld l, h                                       ; $671e: $6c

jr_01c_671f:
    jr nz, jr_01c_6791                            ; $671f: $20 $70

    ld l, a                                       ; $6721: $6f
    ld [hl], a                                    ; $6722: $77
    ld h, l                                       ; $6723: $65
    ld [hl], d                                    ; $6724: $72
    ld bc, $6873                                  ; $6725: $01 $73 $68
    ld l, a                                       ; $6728: $6f
    ld [hl], l                                    ; $6729: $75
    ld l, h                                       ; $672a: $6c
    ld h, h                                       ; $672b: $64
    jr nz, @+$66                                  ; $672c: $20 $64

    ld l, a                                       ; $672e: $6f
    ld l, $03                                     ; $672f: $2e $03
    nop                                           ; $6731: $00

jr_01c_6732:
    ld c, [hl]                                    ; $6732: $4e
    ld l, a                                       ; $6733: $6f
    ld [hl], a                                    ; $6734: $77
    jr nz, jr_01c_679a                            ; $6735: $20 $63

    ld l, b                                       ; $6737: $68
    ld l, a                                       ; $6738: $6f

jr_01c_6739:
    ld l, a                                       ; $6739: $6f
    ld [hl], e                                    ; $673a: $73
    ld h, l                                       ; $673b: $65
    jr nz, @+$63                                  ; $673c: $20 $61

    jr nz, jr_01c_67a3                            ; $673e: $20 $63

jr_01c_6740:
    ld l, h                                       ; $6740: $6c
    ld [hl], l                                    ; $6741: $75
    ld h, d                                       ; $6742: $62
    ld l, $03                                     ; $6743: $2e $03
    nop                                           ; $6745: $00

jr_01c_6746:
    ld c, c                                       ; $6746: $49
    daa                                           ; $6747: $27
    ld l, l                                       ; $6748: $6d
    jr nz, jr_01c_67ae                            ; $6749: $20 $63

    ld [hl], l                                    ; $674b: $75

jr_01c_674c:
    ld [hl], d                                    ; $674c: $72
    halt                                          ; $674d: $76

jr_01c_674e:
    ld l, c                                       ; $674e: $69
    ld l, [hl]                                    ; $674f: $6e
    ld h, a                                       ; $6750: $67
    jr nz, @+$76                                  ; $6751: $20 $74

jr_01c_6753:
    ld l, a                                       ; $6753: $6f
    ld [hl], a                                    ; $6754: $77

jr_01c_6755:
    ld h, c                                       ; $6755: $61
    ld [hl], d                                    ; $6756: $72
    ld h, h                                       ; $6757: $64
    ld [hl], e                                    ; $6758: $73
    ld bc, $6874                                  ; $6759: $01 $74 $68
    ld h, l                                       ; $675c: $65
    jr nz, jr_01c_67c6                            ; $675d: $20 $67

    ld [hl], d                                    ; $675f: $72
    ld h, l                                       ; $6760: $65
    ld h, l                                       ; $6761: $65
    ld l, [hl]                                    ; $6762: $6e
    jr nz, jr_01c_67d9                            ; $6763: $20 $74

    ld l, a                                       ; $6765: $6f
    jr nz, jr_01c_67cf                            ; $6766: $20 $67

    ld h, l                                       ; $6768: $65

jr_01c_6769:
    ld [hl], h                                    ; $6769: $74
    ld bc, $756f                                  ; $676a: $01 $6f $75
    ld [hl], h                                    ; $676d: $74
    jr nz, jr_01c_67df                            ; $676e: $20 $6f

    ld h, [hl]                                    ; $6770: $66
    jr nz, jr_01c_67e7                            ; $6771: $20 $74

    ld l, b                                       ; $6773: $68
    ld h, l                                       ; $6774: $65
    jr nz, jr_01c_67eb                            ; $6775: $20 $74

    ld [hl], d                                    ; $6777: $72
    ld h, l                                       ; $6778: $65

jr_01c_6779:
    ld h, l                                       ; $6779: $65
    ld [hl], e                                    ; $677a: $73
    ld [bc], a                                    ; $677b: $02
    ld h, c                                       ; $677c: $61
    ld l, [hl]                                    ; $677d: $6e

jr_01c_677e:
    ld h, h                                       ; $677e: $64
    jr nz, jr_01c_67f0                            ; $677f: $20 $6f

    ld l, [hl]                                    ; $6781: $6e

jr_01c_6782:
    jr nz, jr_01c_67eb                            ; $6782: $20 $67

    ld [hl], d                                    ; $6784: $72
    ld h, l                                       ; $6785: $65
    ld h, l                                       ; $6786: $65
    ld l, [hl]                                    ; $6787: $6e
    ld l, $20                                     ; $6788: $2e $20
    ld b, c                                       ; $678a: $41
    ld [hl], e                                    ; $678b: $73
    ld bc, $6f73                                  ; $678c: $01 $73 $6f
    ld l, a                                       ; $678f: $6f
    ld l, [hl]                                    ; $6790: $6e

jr_01c_6791:
    jr nz, jr_01c_67f4                            ; $6791: $20 $61

    ld [hl], e                                    ; $6793: $73
    jr nz, jr_01c_680a                            ; $6794: $20 $74

    ld l, b                                       ; $6796: $68
    ld h, l                                       ; $6797: $65
    jr nz, @+$69                                  ; $6798: $20 $67

jr_01c_679a:
    ld h, c                                       ; $679a: $61
    ld [hl], l                                    ; $679b: $75
    ld h, a                                       ; $679c: $67
    ld h, l                                       ; $679d: $65
    ld bc, $6f6d                                  ; $679e: $01 $6d $6f
    halt                                          ; $67a1: $76
    ld h, l                                       ; $67a2: $65

jr_01c_67a3:
    ld [hl], e                                    ; $67a3: $73
    inc l                                         ; $67a4: $2c
    jr nz, @+$72                                  ; $67a5: $20 $70

    ld [hl], d                                    ; $67a7: $72
    ld h, l                                       ; $67a8: $65
    ld [hl], e                                    ; $67a9: $73
    ld [hl], e                                    ; $67aa: $73
    jr nz, jr_01c_6821                            ; $67ab: $20 $74

    ld l, b                                       ; $67ad: $68

jr_01c_67ae:
    ld h, l                                       ; $67ae: $65
    ld [bc], a                                    ; $67af: $02
    dec hl                                        ; $67b0: $2b
    jr nz, jr_01c_67f6                            ; $67b1: $20 $43

    ld l, a                                       ; $67b3: $6f
    ld l, [hl]                                    ; $67b4: $6e
    ld [hl], h                                    ; $67b5: $74
    ld [hl], d                                    ; $67b6: $72
    ld l, a                                       ; $67b7: $6f
    ld l, h                                       ; $67b8: $6c
    jr nz, @+$52                                  ; $67b9: $20 $50

    ld h, c                                       ; $67bb: $61
    ld h, h                                       ; $67bc: $64
    ld bc, $6f74                                  ; $67bd: $01 $74 $6f
    jr nz, jr_01c_6825                            ; $67c0: $20 $63

    ld [hl], l                                    ; $67c2: $75
    ld [hl], d                                    ; $67c3: $72
    halt                                          ; $67c4: $76
    ld h, l                                       ; $67c5: $65

jr_01c_67c6:
    jr nz, jr_01c_683c                            ; $67c6: $20 $74

    ld l, b                                       ; $67c8: $68
    ld h, l                                       ; $67c9: $65
    jr nz, jr_01c_682e                            ; $67ca: $20 $62

    ld h, c                                       ; $67cc: $61
    ld l, h                                       ; $67cd: $6c
    ld l, h                                       ; $67ce: $6c

jr_01c_67cf:
    ld l, $03                                     ; $67cf: $2e $03
    nop                                           ; $67d1: $00
    ld e, c                                       ; $67d2: $59
    ld l, a                                       ; $67d3: $6f
    ld [hl], l                                    ; $67d4: $75
    jr nz, jr_01c_683f                            ; $67d5: $20 $68

    ld h, c                                       ; $67d7: $61
    halt                                          ; $67d8: $76

jr_01c_67d9:
    ld h, l                                       ; $67d9: $65
    jr nz, jr_01c_6850                            ; $67da: $20 $74

    ld l, a                                       ; $67dc: $6f
    jr nz, jr_01c_6847                            ; $67dd: $20 $68

jr_01c_67df:
    ld l, a                                       ; $67df: $6f
    ld l, h                                       ; $67e0: $6c
    ld h, h                                       ; $67e1: $64
    ld bc, $7469                                  ; $67e2: $01 $69 $74
    jr nz, jr_01c_685c                            ; $67e5: $20 $75

jr_01c_67e7:
    ld l, [hl]                                    ; $67e7: $6e
    ld [hl], h                                    ; $67e8: $74
    ld l, c                                       ; $67e9: $69
    ld l, h                                       ; $67ea: $6c

jr_01c_67eb:
    jr nz, jr_01c_6856                            ; $67eb: $20 $69

    ld l, l                                       ; $67ed: $6d
    ld [hl], b                                    ; $67ee: $70
    ld h, c                                       ; $67ef: $61

jr_01c_67f0:
    ld h, e                                       ; $67f0: $63
    ld [hl], h                                    ; $67f1: $74
    ld l, $03                                     ; $67f2: $2e $03

jr_01c_67f4:
    nop                                           ; $67f4: $00
    ld d, e                                       ; $67f5: $53

jr_01c_67f6:
    ld h, l                                       ; $67f6: $65
    ld h, l                                       ; $67f7: $65
    ld hl, $4920                                  ; $67f8: $21 $20 $49
    daa                                           ; $67fb: $27
    ld l, l                                       ; $67fc: $6d
    jr nz, @+$71                                  ; $67fd: $20 $6f

    ld l, [hl]                                    ; $67ff: $6e
    jr nz, jr_01c_6876                            ; $6800: $20 $74

    ld l, b                                       ; $6802: $68
    ld h, l                                       ; $6803: $65
    ld bc, $7267                                  ; $6804: $01 $67 $72
    ld h, l                                       ; $6807: $65
    ld h, l                                       ; $6808: $65
    ld l, [hl]                                    ; $6809: $6e

jr_01c_680a:
    jr nz, jr_01c_686d                            ; $680a: $20 $61

    ld l, [hl]                                    ; $680c: $6e
    ld h, h                                       ; $680d: $64
    jr nz, @+$65                                  ; $680e: $20 $63

    ld h, c                                       ; $6810: $61
    ld l, [hl]                                    ; $6811: $6e
    jr nz, @+$76                                  ; $6812: $20 $74

    ld [hl], d                                    ; $6814: $72
    ld a, c                                       ; $6815: $79
    ld bc, $6f66                                  ; $6816: $01 $66 $6f
    ld [hl], d                                    ; $6819: $72
    jr nz, jr_01c_687d                            ; $681a: $20 $61

    jr nz, @+$64                                  ; $681c: $20 $62

    ld l, c                                       ; $681e: $69
    ld [hl], d                                    ; $681f: $72
    ld h, h                                       ; $6820: $64

jr_01c_6821:
    ld l, c                                       ; $6821: $69
    ld h, l                                       ; $6822: $65
    ld l, $02                                     ; $6823: $2e $02

jr_01c_6825:
    ld d, a                                       ; $6825: $57
    ld h, c                                       ; $6826: $61
    ld l, [hl]                                    ; $6827: $6e
    ld [hl], h                                    ; $6828: $74
    jr nz, jr_01c_689f                            ; $6829: $20 $74

    ld l, a                                       ; $682b: $6f
    jr nz, jr_01c_68a2                            ; $682c: $20 $74

jr_01c_682e:
    ld [hl], d                                    ; $682e: $72
    ld a, c                                       ; $682f: $79
    ccf                                           ; $6830: $3f
    nop                                           ; $6831: $00
    ld b, [hl]                                    ; $6832: $46
    ld l, c                                       ; $6833: $69
    ld [hl], d                                    ; $6834: $72
    ld [hl], e                                    ; $6835: $73
    ld [hl], h                                    ; $6836: $74
    inc l                                         ; $6837: $2c
    jr nz, jr_01c_689d                            ; $6838: $20 $63

    ld l, b                                       ; $683a: $68
    ld l, a                                       ; $683b: $6f

jr_01c_683c:
    ld l, a                                       ; $683c: $6f
    ld [hl], e                                    ; $683d: $73
    ld h, l                                       ; $683e: $65

jr_01c_683f:
    jr nz, @+$7b                                  ; $683f: $20 $79

    ld l, a                                       ; $6841: $6f
    ld [hl], l                                    ; $6842: $75
    ld [hl], d                                    ; $6843: $72
    jr nz, jr_01c_68b9                            ; $6844: $20 $73

    ld l, b                                       ; $6846: $68

jr_01c_6847:
    ld l, a                                       ; $6847: $6f
    ld [hl], h                                    ; $6848: $74
    ld l, $03                                     ; $6849: $2e $03
    nop                                           ; $684b: $00
    ld c, [hl]                                    ; $684c: $4e
    ld h, l                                       ; $684d: $65
    ld a, b                                       ; $684e: $78
    ld [hl], h                                    ; $684f: $74

jr_01c_6850:
    inc l                                         ; $6850: $2c
    jr nz, @+$65                                  ; $6851: $20 $63

    ld l, b                                       ; $6853: $68
    ld l, a                                       ; $6854: $6f
    ld l, a                                       ; $6855: $6f

jr_01c_6856:
    ld [hl], e                                    ; $6856: $73
    ld h, l                                       ; $6857: $65
    ld bc, $2061                                  ; $6858: $01 $61 $20
    ld h, e                                       ; $685b: $63

jr_01c_685c:
    ld l, h                                       ; $685c: $6c
    ld [hl], l                                    ; $685d: $75
    ld h, d                                       ; $685e: $62
    ld l, $03                                     ; $685f: $2e $03
    nop                                           ; $6861: $00
    ld c, a                                       ; $6862: $4f
    ld c, e                                       ; $6863: $4b
    ld l, $20                                     ; $6864: $2e $20
    ld c, b                                       ; $6866: $48
    ld l, c                                       ; $6867: $69
    ld [hl], h                                    ; $6868: $74
    jr nz, jr_01c_68df                            ; $6869: $20 $74

    ld l, b                                       ; $686b: $68
    ld h, l                                       ; $686c: $65

jr_01c_686d:
    jr nz, jr_01c_68d1                            ; $686d: $20 $62

    ld h, c                                       ; $686f: $61
    ld l, h                                       ; $6870: $6c
    ld l, h                                       ; $6871: $6c
    ld l, $03                                     ; $6872: $2e $03
    nop                                           ; $6874: $00
    ld e, c                                       ; $6875: $59

jr_01c_6876:
    ld l, a                                       ; $6876: $6f
    ld [hl], l                                    ; $6877: $75
    daa                                           ; $6878: $27
    ld [hl], d                                    ; $6879: $72
    ld h, l                                       ; $687a: $65
    jr nz, jr_01c_68eb                            ; $687b: $20 $6e

jr_01c_687d:
    ld l, a                                       ; $687d: $6f
    ld [hl], h                                    ; $687e: $74
    jr nz, jr_01c_68e9                            ; $687f: $20 $68

    ld l, c                                       ; $6881: $69
    ld [hl], h                                    ; $6882: $74
    ld [hl], h                                    ; $6883: $74
    ld l, c                                       ; $6884: $69
    ld l, [hl]                                    ; $6885: $6e
    ld h, a                                       ; $6886: $67
    ld bc, $7473                                  ; $6887: $01 $73 $74
    ld [hl], d                                    ; $688a: $72
    ld h, c                                       ; $688b: $61
    ld l, c                                       ; $688c: $69
    ld h, a                                       ; $688d: $67
    ld l, b                                       ; $688e: $68
    ld [hl], h                                    ; $688f: $74
    inc l                                         ; $6890: $2c
    jr nz, jr_01c_6906                            ; $6891: $20 $73

    ld l, a                                       ; $6893: $6f
    jr nz, jr_01c_68fa                            ; $6894: $20 $64

    ld l, a                                       ; $6896: $6f
    ld l, [hl]                                    ; $6897: $6e
    daa                                           ; $6898: $27
    ld [hl], h                                    ; $6899: $74
    ld bc, $7568                                  ; $689a: $01 $68 $75

jr_01c_689d:
    ld [hl], d                                    ; $689d: $72
    ld [hl], d                                    ; $689e: $72

jr_01c_689f:
    ld a, c                                       ; $689f: $79
    ld l, $03                                     ; $68a0: $2e $03

jr_01c_68a2:
    nop                                           ; $68a2: $00
    ld d, h                                       ; $68a3: $54
    ld l, b                                       ; $68a4: $68
    ld h, c                                       ; $68a5: $61
    ld [hl], h                                    ; $68a6: $74
    daa                                           ; $68a7: $27
    ld [hl], e                                    ; $68a8: $73
    jr nz, @+$6b                                  ; $68a9: $20 $69

    ld [hl], h                                    ; $68ab: $74
    ld l, $20                                     ; $68ac: $2e $20
    ld d, d                                       ; $68ae: $52
    ld h, l                                       ; $68af: $65
    ld h, [hl]                                    ; $68b0: $66
    ld l, c                                       ; $68b1: $69
    ld l, [hl]                                    ; $68b2: $6e
    ld h, l                                       ; $68b3: $65
    ld bc, $6f79                                  ; $68b4: $01 $79 $6f
    ld [hl], l                                    ; $68b7: $75
    ld [hl], d                                    ; $68b8: $72

jr_01c_68b9:
    jr nz, jr_01c_692f                            ; $68b9: $20 $74

    ld h, l                                       ; $68bb: $65
    ld h, e                                       ; $68bc: $63
    ld l, b                                       ; $68bd: $68
    ld l, [hl]                                    ; $68be: $6e
    ld l, c                                       ; $68bf: $69
    ld [hl], c                                    ; $68c0: $71
    ld [hl], l                                    ; $68c1: $75
    ld h, l                                       ; $68c2: $65
    jr nz, jr_01c_6939                            ; $68c3: $20 $74

    ld l, a                                       ; $68c5: $6f
    ld bc, $6567                                  ; $68c6: $01 $67 $65
    ld [hl], h                                    ; $68c9: $74
    jr nz, jr_01c_692f                            ; $68ca: $20 $63

    ld l, h                                       ; $68cc: $6c
    ld l, a                                       ; $68cd: $6f
    ld [hl], e                                    ; $68ce: $73
    ld h, l                                       ; $68cf: $65
    ld [hl], d                                    ; $68d0: $72

jr_01c_68d1:
    ld l, $03                                     ; $68d1: $2e $03
    nop                                           ; $68d3: $00
    ld d, h                                       ; $68d4: $54
    ld l, b                                       ; $68d5: $68
    ld h, c                                       ; $68d6: $61
    ld [hl], h                                    ; $68d7: $74
    daa                                           ; $68d8: $27
    ld [hl], e                                    ; $68d9: $73
    jr nz, @+$69                                  ; $68da: $20 $67

    ld [hl], d                                    ; $68dc: $72
    ld h, l                                       ; $68dd: $65
    ld h, c                                       ; $68de: $61

jr_01c_68df:
    ld [hl], h                                    ; $68df: $74
    jr nz, @+$68                                  ; $68e0: $20 $66

    ld l, a                                       ; $68e2: $6f
    ld [hl], d                                    ; $68e3: $72
    ld bc, $7573                                  ; $68e4: $01 $73 $75
    ld h, e                                       ; $68e7: $63
    ld l, b                                       ; $68e8: $68

jr_01c_68e9:
    jr nz, jr_01c_694c                            ; $68e9: $20 $61

jr_01c_68eb:
    jr nz, jr_01c_6955                            ; $68eb: $20 $68

    ld h, c                                       ; $68ed: $61
    ld [hl], d                                    ; $68ee: $72
    ld h, h                                       ; $68ef: $64
    jr nz, jr_01c_6965                            ; $68f0: $20 $73

    ld l, b                                       ; $68f2: $68
    ld l, a                                       ; $68f3: $6f
    ld [hl], h                                    ; $68f4: $74
    ld l, $01                                     ; $68f5: $2e $01
    ld e, c                                       ; $68f7: $59
    ld l, a                                       ; $68f8: $6f
    ld [hl], l                                    ; $68f9: $75

jr_01c_68fa:
    jr nz, jr_01c_6968                            ; $68fa: $20 $6c

    ld h, l                                       ; $68fc: $65
    ld h, c                                       ; $68fd: $61
    ld [hl], d                                    ; $68fe: $72
    ld l, [hl]                                    ; $68ff: $6e
    jr nz, @+$73                                  ; $6900: $20 $71

    ld [hl], l                                    ; $6902: $75
    ld l, c                                       ; $6903: $69
    ld h, e                                       ; $6904: $63
    ld l, e                                       ; $6905: $6b

jr_01c_6906:
    ld l, h                                       ; $6906: $6c
    ld a, c                                       ; $6907: $79
    ld hl, $0003                                  ; $6908: $21 $03 $00
    ld c, a                                       ; $690b: $4f
    ld l, [hl]                                    ; $690c: $6e
    jr nz, jr_01c_6983                            ; $690d: $20 $74

    ld l, b                                       ; $690f: $68
    ld h, l                                       ; $6910: $65
    ld [hl], e                                    ; $6911: $73
    ld h, l                                       ; $6912: $65
    jr nz, jr_01c_6988                            ; $6913: $20 $73

    ld l, b                                       ; $6915: $68
    ld l, a                                       ; $6916: $6f
    ld [hl], h                                    ; $6917: $74
    ld [hl], e                                    ; $6918: $73
    inc l                                         ; $6919: $2c
    ld bc, $6f63                                  ; $691a: $01 $63 $6f
    ld l, [hl]                                    ; $691d: $6e
    ld [hl], e                                    ; $691e: $73
    ld l, c                                       ; $691f: $69
    ld h, h                                       ; $6920: $64
    ld h, l                                       ; $6921: $65
    ld [hl], d                                    ; $6922: $72
    jr nz, @+$63                                  ; $6923: $20 $61

    ld l, h                                       ; $6925: $6c
    ld l, h                                       ; $6926: $6c
    ld bc, $706f                                  ; $6927: $01 $6f $70
    ld [hl], h                                    ; $692a: $74
    ld l, c                                       ; $692b: $69
    ld l, a                                       ; $692c: $6f
    ld l, [hl]                                    ; $692d: $6e
    ld [hl], e                                    ; $692e: $73

jr_01c_692f:
    inc l                                         ; $692f: $2c
    jr nz, jr_01c_69a6                            ; $6930: $20 $74

    ld l, b                                       ; $6932: $68
    ld h, l                                       ; $6933: $65
    ld l, [hl]                                    ; $6934: $6e
    jr nz, jr_01c_69aa                            ; $6935: $20 $73

    ld l, b                                       ; $6937: $68
    ld l, a                                       ; $6938: $6f

jr_01c_6939:
    ld l, a                                       ; $6939: $6f
    ld [hl], h                                    ; $693a: $74
    ld l, $03                                     ; $693b: $2e $03
    nop                                           ; $693d: $00
    ld d, a                                       ; $693e: $57
    ld l, b                                       ; $693f: $68
    ld h, l                                       ; $6940: $65
    ld l, [hl]                                    ; $6941: $6e
    jr nz, jr_01c_69ad                            ; $6942: $20 $69

    ld [hl], h                                    ; $6944: $74
    daa                                           ; $6945: $27
    ld [hl], e                                    ; $6946: $73
    jr nz, jr_01c_69ab                            ; $6947: $20 $62

    ld [hl], l                                    ; $6949: $75
    ld [hl], d                                    ; $694a: $72
    ld l, c                                       ; $694b: $69

jr_01c_694c:
    ld h, l                                       ; $694c: $65
    ld h, h                                       ; $694d: $64
    ld bc, $6e69                                  ; $694e: $01 $69 $6e
    jr nz, @+$75                                  ; $6951: $20 $73

    ld h, c                                       ; $6953: $61
    ld l, [hl]                                    ; $6954: $6e

jr_01c_6955:
    ld h, h                                       ; $6955: $64
    inc l                                         ; $6956: $2c
    jr nz, jr_01c_69cd                            ; $6957: $20 $74

    ld l, b                                       ; $6959: $68
    ld h, l                                       ; $695a: $65
    jr nz, jr_01c_69ca                            ; $695b: $20 $6d

    ld h, l                                       ; $695d: $65
    ld h, l                                       ; $695e: $65
    ld [hl], h                                    ; $695f: $74
    ld bc, $7261                                  ; $6960: $01 $61 $72
    ld h, l                                       ; $6963: $65
    ld h, c                                       ; $6964: $61

jr_01c_6965:
    jr nz, @+$69                                  ; $6965: $20 $67

    ld h, l                                       ; $6967: $65

jr_01c_6968:
    ld [hl], h                                    ; $6968: $74
    ld [hl], e                                    ; $6969: $73
    jr nz, jr_01c_69df                            ; $696a: $20 $73

    ld l, l                                       ; $696c: $6d
    ld h, c                                       ; $696d: $61
    ld l, h                                       ; $696e: $6c
    ld l, h                                       ; $696f: $6c
    ld h, l                                       ; $6970: $65
    ld [hl], d                                    ; $6971: $72
    ld l, $02                                     ; $6972: $2e $02
    ld d, a                                       ; $6974: $57
    ld l, b                                       ; $6975: $68
    ld h, l                                       ; $6976: $65
    ld l, [hl]                                    ; $6977: $6e
    jr nz, jr_01c_69ee                            ; $6978: $20 $74

    ld l, b                                       ; $697a: $68
    ld h, l                                       ; $697b: $65
    jr nz, jr_01c_69ee                            ; $697c: $20 $70

    ld [hl], d                                    ; $697e: $72
    ld h, l                                       ; $697f: $65
    ld [hl], e                                    ; $6980: $73
    ld [hl], e                                    ; $6981: $73
    ld [hl], l                                    ; $6982: $75

jr_01c_6983:
    ld [hl], d                                    ; $6983: $72
    ld h, l                                       ; $6984: $65
    ld bc, $7369                                  ; $6985: $01 $69 $73

jr_01c_6988:
    jr nz, jr_01c_69f9                            ; $6988: $20 $6f

    ld l, [hl]                                    ; $698a: $6e
    inc l                                         ; $698b: $2c
    jr nz, jr_01c_69ef                            ; $698c: $20 $61

    ld [hl], d                                    ; $698e: $72
    ld h, l                                       ; $698f: $65
    ld l, [hl]                                    ; $6990: $6e
    daa                                           ; $6991: $27
    ld [hl], h                                    ; $6992: $74
    ld bc, $6962                                  ; $6993: $01 $62 $69
    ld [hl], d                                    ; $6996: $72
    ld h, h                                       ; $6997: $64
    ld l, c                                       ; $6998: $69
    ld h, l                                       ; $6999: $65
    ld [hl], e                                    ; $699a: $73
    jr nz, @+$76                                  ; $699b: $20 $74

    ld l, a                                       ; $699d: $6f
    ld [hl], l                                    ; $699e: $75
    ld h, a                                       ; $699f: $67
    ld l, b                                       ; $69a0: $68
    ccf                                           ; $69a1: $3f
    nop                                           ; $69a2: $00
    ld c, [hl]                                    ; $69a3: $4e
    ld l, c                                       ; $69a4: $69
    ld h, e                                       ; $69a5: $63

jr_01c_69a6:
    ld h, l                                       ; $69a6: $65
    jr nz, @+$75                                  ; $69a7: $20 $73

    ld l, b                                       ; $69a9: $68

jr_01c_69aa:
    ld l, a                                       ; $69aa: $6f

jr_01c_69ab:
    ld [hl], h                                    ; $69ab: $74
    ld [hl], e                                    ; $69ac: $73

jr_01c_69ad:
    jr nz, jr_01c_6a10                            ; $69ad: $20 $61

    ld [hl], d                                    ; $69af: $72
    ld h, l                                       ; $69b0: $65
    ld l, [hl]                                    ; $69b1: $6e
    daa                                           ; $69b2: $27
    ld [hl], h                                    ; $69b3: $74
    ld bc, $6165                                  ; $69b4: $01 $65 $61
    ld [hl], e                                    ; $69b7: $73
    ld a, c                                       ; $69b8: $79
    jr nz, @+$6b                                  ; $69b9: $20 $69

    ld h, [hl]                                    ; $69bb: $66
    jr nz, jr_01c_6a32                            ; $69bc: $20 $74

    ld l, b                                       ; $69be: $68
    ld h, l                                       ; $69bf: $65
    jr nz, jr_01c_6a2f                            ; $69c0: $20 $6d

    ld h, l                                       ; $69c2: $65
    ld h, l                                       ; $69c3: $65
    ld [hl], h                                    ; $69c4: $74
    ld bc, $7261                                  ; $69c5: $01 $61 $72
    ld h, l                                       ; $69c8: $65
    ld h, c                                       ; $69c9: $61

jr_01c_69ca:
    jr nz, jr_01c_6a35                            ; $69ca: $20 $69

    ld [hl], e                                    ; $69cc: $73

jr_01c_69cd:
    jr nz, jr_01c_6a42                            ; $69cd: $20 $73

    ld l, l                                       ; $69cf: $6d
    ld h, c                                       ; $69d0: $61
    ld l, h                                       ; $69d1: $6c
    ld l, h                                       ; $69d2: $6c
    ld l, $02                                     ; $69d3: $2e $02
    ld e, c                                       ; $69d5: $59
    ld l, a                                       ; $69d6: $6f
    ld [hl], l                                    ; $69d7: $75
    jr nz, jr_01c_6a42                            ; $69d8: $20 $68

    ld h, c                                       ; $69da: $61
    halt                                          ; $69db: $76
    ld h, l                                       ; $69dc: $65
    jr nz, jr_01c_6a53                            ; $69dd: $20 $74

jr_01c_69df:
    ld l, b                                       ; $69df: $68
    ld l, c                                       ; $69e0: $69
    ld l, [hl]                                    ; $69e1: $6e
    ld l, e                                       ; $69e2: $6b
    jr nz, @+$71                                  ; $69e3: $20 $6f

    ld h, [hl]                                    ; $69e5: $66
    ld bc, $6874                                  ; $69e6: $01 $74 $68
    ld h, l                                       ; $69e9: $65
    ld [hl], e                                    ; $69ea: $73
    ld h, l                                       ; $69eb: $65
    jr nz, jr_01c_6a61                            ; $69ec: $20 $73

jr_01c_69ee:
    ld l, b                                       ; $69ee: $68

jr_01c_69ef:
    ld l, a                                       ; $69ef: $6f
    ld [hl], h                                    ; $69f0: $74
    ld [hl], e                                    ; $69f1: $73
    jr nz, @+$63                                  ; $69f2: $20 $61

    ld [hl], e                                    ; $69f4: $73
    ld bc, $2061                                  ; $69f5: $01 $61 $20
    ld h, a                                       ; $69f8: $67

jr_01c_69f9:
    ld h, c                                       ; $69f9: $61
    ld l, l                                       ; $69fa: $6d
    ld h, d                                       ; $69fb: $62
    ld l, h                                       ; $69fc: $6c
    ld h, l                                       ; $69fd: $65
    ld l, $03                                     ; $69fe: $2e $03
    nop                                           ; $6a00: $00
    ld d, h                                       ; $6a01: $54
    ld l, a                                       ; $6a02: $6f
    jr nz, jr_01c_6a66                            ; $6a03: $20 $61

    ld [hl], b                                    ; $6a05: $70
    ld [hl], b                                    ; $6a06: $70
    ld [hl], d                                    ; $6a07: $72
    ld l, a                                       ; $6a08: $6f
    ld h, c                                       ; $6a09: $61
    ld h, e                                       ; $6a0a: $63
    ld l, b                                       ; $6a0b: $68
    jr nz, @+$76                                  ; $6a0c: $20 $74

    ld l, b                                       ; $6a0e: $68
    ld h, l                                       ; $6a0f: $65

jr_01c_6a10:
    ld bc, $7267                                  ; $6a10: $01 $67 $72
    ld h, l                                       ; $6a13: $65
    ld h, l                                       ; $6a14: $65
    ld l, [hl]                                    ; $6a15: $6e
    inc l                                         ; $6a16: $2c
    jr nz, jr_01c_6a92                            ; $6a17: $20 $79

    ld l, a                                       ; $6a19: $6f
    ld [hl], l                                    ; $6a1a: $75
    jr nz, @+$6a                                  ; $6a1b: $20 $68

    ld h, c                                       ; $6a1d: $61
    halt                                          ; $6a1e: $76
    ld h, l                                       ; $6a1f: $65
    jr nz, jr_01c_6a96                            ; $6a20: $20 $74

    ld l, a                                       ; $6a22: $6f
    ld bc, $6174                                  ; $6a23: $01 $74 $61
    ld l, e                                       ; $6a26: $6b
    ld h, l                                       ; $6a27: $65
    jr nz, jr_01c_6a8b                            ; $6a28: $20 $61

    jr nz, @+$74                                  ; $6a2a: $20 $72

    ld l, c                                       ; $6a2c: $69
    ld [hl], e                                    ; $6a2d: $73
    ld l, e                                       ; $6a2e: $6b

jr_01c_6a2f:
    ld l, $02                                     ; $6a2f: $2e $02
    ld c, e                                       ; $6a31: $4b

jr_01c_6a32:
    ld h, l                                       ; $6a32: $65
    ld h, l                                       ; $6a33: $65
    ld [hl], b                                    ; $6a34: $70

jr_01c_6a35:
    jr nz, jr_01c_6aab                            ; $6a35: $20 $74

    ld l, b                                       ; $6a37: $68
    ld h, c                                       ; $6a38: $61
    ld [hl], h                                    ; $6a39: $74
    jr nz, jr_01c_6aa5                            ; $6a3a: $20 $69

    ld l, [hl]                                    ; $6a3c: $6e
    jr nz, jr_01c_6aac                            ; $6a3d: $20 $6d

    ld l, c                                       ; $6a3f: $69
    ld l, [hl]                                    ; $6a40: $6e
    ld h, h                                       ; $6a41: $64

jr_01c_6a42:
    ld bc, $7361                                  ; $6a42: $01 $61 $73
    jr nz, @+$7b                                  ; $6a45: $20 $79

    ld l, a                                       ; $6a47: $6f
    ld [hl], l                                    ; $6a48: $75
    jr nz, @+$6e                                  ; $6a49: $20 $6c

    ld l, c                                       ; $6a4b: $69
    ld [hl], e                                    ; $6a4c: $73
    ld [hl], h                                    ; $6a4d: $74
    ld h, l                                       ; $6a4e: $65
    ld l, [hl]                                    ; $6a4f: $6e
    jr nz, jr_01c_6ac6                            ; $6a50: $20 $74

    ld l, a                                       ; $6a52: $6f

jr_01c_6a53:
    ld bc, $656d                                  ; $6a53: $01 $6d $65
    ld l, $03                                     ; $6a56: $2e $03
    nop                                           ; $6a58: $00
    ld e, c                                       ; $6a59: $59
    ld l, a                                       ; $6a5a: $6f
    ld [hl], l                                    ; $6a5b: $75
    jr nz, jr_01c_6aca                            ; $6a5c: $20 $6c

    ld l, a                                       ; $6a5e: $6f
    ld [hl], e                                    ; $6a5f: $73
    ld h, l                                       ; $6a60: $65

jr_01c_6a61:
    jr nz, @+$66                                  ; $6a61: $20 $64

    ld l, c                                       ; $6a63: $69
    ld [hl], e                                    ; $6a64: $73
    ld [hl], h                                    ; $6a65: $74

jr_01c_6a66:
    ld h, c                                       ; $6a66: $61
    ld l, [hl]                                    ; $6a67: $6e
    ld h, e                                       ; $6a68: $63
    ld h, l                                       ; $6a69: $65
    ld bc, $6877                                  ; $6a6a: $01 $77 $68
    ld h, l                                       ; $6a6d: $65
    ld l, [hl]                                    ; $6a6e: $6e
    jr nz, @+$76                                  ; $6a6f: $20 $74

    ld l, b                                       ; $6a71: $68
    ld h, l                                       ; $6a72: $65
    jr nz, @+$64                                  ; $6a73: $20 $62

    ld h, c                                       ; $6a75: $61
    ld l, h                                       ; $6a76: $6c
    ld l, h                                       ; $6a77: $6c
    daa                                           ; $6a78: $27
    ld [hl], e                                    ; $6a79: $73
    ld bc, $7562                                  ; $6a7a: $01 $62 $75
    ld [hl], d                                    ; $6a7d: $72
    ld l, c                                       ; $6a7e: $69
    ld h, l                                       ; $6a7f: $65
    ld h, h                                       ; $6a80: $64
    jr nz, jr_01c_6aec                            ; $6a81: $20 $69

    ld l, [hl]                                    ; $6a83: $6e
    jr nz, jr_01c_6af9                            ; $6a84: $20 $73

    ld h, c                                       ; $6a86: $61
    ld l, [hl]                                    ; $6a87: $6e
    ld h, h                                       ; $6a88: $64
    ld l, $02                                     ; $6a89: $2e $02

jr_01c_6a8b:
    ld b, d                                       ; $6a8b: $42
    ld [hl], l                                    ; $6a8c: $75
    ld [hl], h                                    ; $6a8d: $74
    jr nz, jr_01c_6b09                            ; $6a8e: $20 $79

    ld l, a                                       ; $6a90: $6f
    ld [hl], l                                    ; $6a91: $75

jr_01c_6a92:
    jr nz, jr_01c_6af7                            ; $6a92: $20 $63

    ld h, c                                       ; $6a94: $61
    ld l, [hl]                                    ; $6a95: $6e

jr_01c_6a96:
    jr nz, jr_01c_6aff                            ; $6a96: $20 $67

    ld h, l                                       ; $6a98: $65
    ld [hl], h                                    ; $6a99: $74
    jr nz, @+$63                                  ; $6a9a: $20 $61

    ld bc, $6962                                  ; $6a9c: $01 $62 $69
    ld [hl], d                                    ; $6a9f: $72
    ld h, h                                       ; $6aa0: $64
    ld l, c                                       ; $6aa1: $69
    ld h, l                                       ; $6aa2: $65
    jr nz, @+$79                                  ; $6aa3: $20 $77

jr_01c_6aa5:
    ld l, c                                       ; $6aa5: $69
    ld [hl], h                                    ; $6aa6: $74
    ld l, b                                       ; $6aa7: $68
    jr nz, jr_01c_6b14                            ; $6aa8: $20 $6a

    ld [hl], l                                    ; $6aaa: $75

jr_01c_6aab:
    ld [hl], e                                    ; $6aab: $73

jr_01c_6aac:
    ld [hl], h                                    ; $6aac: $74
    ld bc, $2061                                  ; $6aad: $01 $61 $20
    ld l, h                                       ; $6ab0: $6c
    ld l, c                                       ; $6ab1: $69
    ld [hl], h                                    ; $6ab2: $74
    ld [hl], h                                    ; $6ab3: $74
    ld l, h                                       ; $6ab4: $6c
    ld h, l                                       ; $6ab5: $65
    jr nz, @+$66                                  ; $6ab6: $20 $64

    ld l, c                                       ; $6ab8: $69
    ld [hl], e                                    ; $6ab9: $73
    ld [hl], h                                    ; $6aba: $74
    ld h, c                                       ; $6abb: $61
    ld l, [hl]                                    ; $6abc: $6e
    ld h, e                                       ; $6abd: $63
    ld h, l                                       ; $6abe: $65
    ld l, $03                                     ; $6abf: $2e $03
    nop                                           ; $6ac1: $00
    ld d, a                                       ; $6ac2: $57
    ld l, b                                       ; $6ac3: $68
    ld h, l                                       ; $6ac4: $65
    ld l, [hl]                                    ; $6ac5: $6e

jr_01c_6ac6:
    jr nz, jr_01c_6b3b                            ; $6ac6: $20 $73

    ld l, b                                       ; $6ac8: $68
    ld l, a                                       ; $6ac9: $6f

jr_01c_6aca:
    ld l, a                                       ; $6aca: $6f
    ld [hl], h                                    ; $6acb: $74
    ld l, c                                       ; $6acc: $69
    ld l, [hl]                                    ; $6acd: $6e
    ld h, a                                       ; $6ace: $67
    jr nz, jr_01c_6b32                            ; $6acf: $20 $61

    ld bc, $6f6c                                  ; $6ad1: $01 $6c $6f
    ld l, [hl]                                    ; $6ad4: $6e
    ld h, a                                       ; $6ad5: $67
    jr nz, @+$66                                  ; $6ad6: $20 $64

    ld [hl], d                                    ; $6ad8: $72
    ld l, c                                       ; $6ad9: $69
    halt                                          ; $6ada: $76
    ld h, l                                       ; $6adb: $65
    inc l                                         ; $6adc: $2c
    jr nz, jr_01c_6b40                            ; $6add: $20 $61

    jr nz, jr_01c_6b4f                            ; $6adf: $20 $6e

    ld l, c                                       ; $6ae1: $69
    ld h, e                                       ; $6ae2: $63
    ld h, l                                       ; $6ae3: $65
    ld bc, $6873                                  ; $6ae4: $01 $73 $68
    ld l, a                                       ; $6ae7: $6f
    ld [hl], h                                    ; $6ae8: $74
    jr nz, jr_01c_6b58                            ; $6ae9: $20 $6d

    ld h, l                                       ; $6aeb: $65

jr_01c_6aec:
    ld h, c                                       ; $6aec: $61
    ld l, [hl]                                    ; $6aed: $6e
    ld [hl], e                                    ; $6aee: $73
    jr nz, jr_01c_6b64                            ; $6aef: $20 $73

    ld [hl], l                                    ; $6af1: $75
    ld h, e                                       ; $6af2: $63
    ld h, e                                       ; $6af3: $63
    ld h, l                                       ; $6af4: $65
    ld [hl], e                                    ; $6af5: $73
    ld [hl], e                                    ; $6af6: $73

jr_01c_6af7:
    ld l, $02                                     ; $6af7: $2e $02

jr_01c_6af9:
    ld e, c                                       ; $6af9: $59
    ld l, a                                       ; $6afa: $6f
    ld [hl], l                                    ; $6afb: $75
    jr nz, jr_01c_6b6c                            ; $6afc: $20 $6e

    ld h, l                                       ; $6afe: $65

jr_01c_6aff:
    ld h, l                                       ; $6aff: $65
    ld h, h                                       ; $6b00: $64
    jr nz, jr_01c_6b67                            ; $6b01: $20 $64

    ld l, c                                       ; $6b03: $69
    ld [hl], e                                    ; $6b04: $73
    ld [hl], h                                    ; $6b05: $74
    ld h, c                                       ; $6b06: $61
    ld l, [hl]                                    ; $6b07: $6e
    ld h, e                                       ; $6b08: $63

jr_01c_6b09:
    ld h, l                                       ; $6b09: $65
    ld bc, $6f74                                  ; $6b0a: $01 $74 $6f
    jr nz, jr_01c_6b70                            ; $6b0d: $20 $61

    ld [hl], b                                    ; $6b0f: $70
    ld [hl], b                                    ; $6b10: $70
    ld [hl], d                                    ; $6b11: $72
    ld l, a                                       ; $6b12: $6f
    ld h, c                                       ; $6b13: $61

jr_01c_6b14:
    ld h, e                                       ; $6b14: $63
    ld l, b                                       ; $6b15: $68
    jr nz, jr_01c_6b8c                            ; $6b16: $20 $74

    ld l, b                                       ; $6b18: $68
    ld h, l                                       ; $6b19: $65
    ld bc, $7267                                  ; $6b1a: $01 $67 $72
    ld h, l                                       ; $6b1d: $65
    ld h, l                                       ; $6b1e: $65
    ld l, [hl]                                    ; $6b1f: $6e
    inc l                                         ; $6b20: $2c
    jr nz, jr_01c_6b96                            ; $6b21: $20 $73

    ld l, a                                       ; $6b23: $6f
    jr nz, jr_01c_6b9b                            ; $6b24: $20 $75

    ld [hl], e                                    ; $6b26: $73
    ld h, l                                       ; $6b27: $65
    jr nz, jr_01c_6b9a                            ; $6b28: $20 $70

    ld l, a                                       ; $6b2a: $6f
    ld [hl], a                                    ; $6b2b: $77
    ld h, l                                       ; $6b2c: $65
    ld [hl], d                                    ; $6b2d: $72
    ld l, $03                                     ; $6b2e: $2e $03
    nop                                           ; $6b30: $00
    ld c, [hl]                                    ; $6b31: $4e

jr_01c_6b32:
    ld l, a                                       ; $6b32: $6f
    ld [hl], a                                    ; $6b33: $77
    jr nz, jr_01c_6b99                            ; $6b34: $20 $63

    ld l, b                                       ; $6b36: $68
    ld l, a                                       ; $6b37: $6f
    ld l, a                                       ; $6b38: $6f
    ld [hl], e                                    ; $6b39: $73
    ld h, l                                       ; $6b3a: $65

jr_01c_6b3b:
    jr nz, @+$63                                  ; $6b3b: $20 $61

    jr nz, jr_01c_6ba2                            ; $6b3d: $20 $63

    ld l, h                                       ; $6b3f: $6c

jr_01c_6b40:
    ld [hl], l                                    ; $6b40: $75
    ld h, d                                       ; $6b41: $62
    ld l, $03                                     ; $6b42: $2e $03
    nop                                           ; $6b44: $00
    ld c, c                                       ; $6b45: $49
    ld h, [hl]                                    ; $6b46: $66
    jr nz, jr_01c_6bb2                            ; $6b47: $20 $69

    ld [hl], h                                    ; $6b49: $74
    daa                                           ; $6b4a: $27
    ld [hl], e                                    ; $6b4b: $73
    jr nz, jr_01c_6bb0                            ; $6b4c: $20 $62

    ld [hl], l                                    ; $6b4e: $75

jr_01c_6b4f:
    ld [hl], d                                    ; $6b4f: $72
    ld l, c                                       ; $6b50: $69
    ld h, l                                       ; $6b51: $65
    ld h, h                                       ; $6b52: $64
    ld bc, $6e69                                  ; $6b53: $01 $69 $6e
    jr nz, @+$75                                  ; $6b56: $20 $73

jr_01c_6b58:
    ld h, c                                       ; $6b58: $61
    ld l, [hl]                                    ; $6b59: $6e
    ld h, h                                       ; $6b5a: $64
    inc l                                         ; $6b5b: $2c
    jr nz, jr_01c_6bbf                            ; $6b5c: $20 $61

    jr nz, jr_01c_6b92                            ; $6b5e: $20 $32

    ld c, c                                       ; $6b60: $49
    jr nz, @+$6b                                  ; $6b61: $20 $69

    ld [hl], e                                    ; $6b63: $73

jr_01c_6b64:
    jr nz, jr_01c_6bda                            ; $6b64: $20 $74

    ld l, b                                       ; $6b66: $68

jr_01c_6b67:
    ld h, l                                       ; $6b67: $65
    ld bc, $6562                                  ; $6b68: $01 $62 $65
    ld [hl], e                                    ; $6b6b: $73

jr_01c_6b6c:
    ld [hl], h                                    ; $6b6c: $74
    jr nz, jr_01c_6bd2                            ; $6b6d: $20 $63

    ld l, b                                       ; $6b6f: $68

jr_01c_6b70:
    ld l, a                                       ; $6b70: $6f
    ld l, c                                       ; $6b71: $69
    ld h, e                                       ; $6b72: $63
    ld h, l                                       ; $6b73: $65
    ld l, $03                                     ; $6b74: $2e $03
    nop                                           ; $6b76: $00
    ld c, a                                       ; $6b77: $4f
    ld c, e                                       ; $6b78: $4b
    ld l, $20                                     ; $6b79: $2e $20
    ld c, b                                       ; $6b7b: $48
    ld h, l                                       ; $6b7c: $65
    ld [hl], d                                    ; $6b7d: $72
    ld h, l                                       ; $6b7e: $65
    jr nz, jr_01c_6bca                            ; $6b7f: $20 $49

    jr nz, jr_01c_6bea                            ; $6b81: $20 $67

    ld l, a                                       ; $6b83: $6f
    ld l, $03                                     ; $6b84: $2e $03
    nop                                           ; $6b86: $00
    ld d, h                                       ; $6b87: $54
    ld l, b                                       ; $6b88: $68
    ld h, l                                       ; $6b89: $65
    ld [hl], d                                    ; $6b8a: $72
    ld h, l                                       ; $6b8b: $65

jr_01c_6b8c:
    inc l                                         ; $6b8c: $2c
    jr nz, jr_01c_6bd8                            ; $6b8d: $20 $49

    jr nz, jr_01c_6bf5                            ; $6b8f: $20 $64

    ld l, c                                       ; $6b91: $69

jr_01c_6b92:
    ld h, h                                       ; $6b92: $64
    jr nz, jr_01c_6bfe                            ; $6b93: $20 $69

    ld [hl], h                                    ; $6b95: $74

jr_01c_6b96:
    ld l, $01                                     ; $6b96: $2e $01
    ld b, h                                       ; $6b98: $44

jr_01c_6b99:
    ld l, a                                       ; $6b99: $6f

jr_01c_6b9a:
    ld l, [hl]                                    ; $6b9a: $6e

jr_01c_6b9b:
    daa                                           ; $6b9b: $27
    ld [hl], h                                    ; $6b9c: $74
    jr nz, jr_01c_6c16                            ; $6b9d: $20 $77

    ld l, a                                       ; $6b9f: $6f
    ld [hl], d                                    ; $6ba0: $72
    ld [hl], d                                    ; $6ba1: $72

jr_01c_6ba2:
    ld a, c                                       ; $6ba2: $79
    jr nz, @+$63                                  ; $6ba3: $20 $61

    ld h, d                                       ; $6ba5: $62
    ld l, a                                       ; $6ba6: $6f
    ld [hl], l                                    ; $6ba7: $75
    ld [hl], h                                    ; $6ba8: $74
    ld bc, $6874                                  ; $6ba9: $01 $74 $68
    ld h, l                                       ; $6bac: $65
    jr nz, jr_01c_6c11                            ; $6bad: $20 $62

    ld [hl], l                                    ; $6baf: $75

jr_01c_6bb0:
    ld l, [hl]                                    ; $6bb0: $6e
    ld l, e                                       ; $6bb1: $6b

jr_01c_6bb2:
    ld h, l                                       ; $6bb2: $65
    ld [hl], d                                    ; $6bb3: $72
    inc l                                         ; $6bb4: $2c
    jr nz, jr_01c_6c21                            ; $6bb5: $20 $6a

    ld [hl], l                                    ; $6bb7: $75
    ld [hl], e                                    ; $6bb8: $73
    ld [hl], h                                    ; $6bb9: $74
    ld [bc], a                                    ; $6bba: $02
    ld [hl], e                                    ; $6bbb: $73
    ld [hl], a                                    ; $6bbc: $77
    ld l, c                                       ; $6bbd: $69
    ld l, [hl]                                    ; $6bbe: $6e

jr_01c_6bbf:
    ld h, a                                       ; $6bbf: $67
    ld l, $20                                     ; $6bc0: $2e $20
    ld c, [hl]                                    ; $6bc2: $4e
    ld l, a                                       ; $6bc3: $6f
    ld [hl], a                                    ; $6bc4: $77
    jr nz, @+$6b                                  ; $6bc5: $20 $69

    ld [hl], h                                    ; $6bc7: $74
    daa                                           ; $6bc8: $27
    ld [hl], e                                    ; $6bc9: $73

jr_01c_6bca:
    ld bc, $6f79                                  ; $6bca: $01 $79 $6f
    ld [hl], l                                    ; $6bcd: $75
    ld [hl], d                                    ; $6bce: $72
    jr nz, jr_01c_6c45                            ; $6bcf: $20 $74

    ld [hl], l                                    ; $6bd1: $75

jr_01c_6bd2:
    ld [hl], d                                    ; $6bd2: $72
    ld l, [hl]                                    ; $6bd3: $6e
    inc l                                         ; $6bd4: $2c
    jr nz, jr_01c_6c26                            ; $6bd5: $20 $4f

    ld c, e                                       ; $6bd7: $4b

jr_01c_6bd8:
    ccf                                           ; $6bd8: $3f
    nop                                           ; $6bd9: $00

jr_01c_6bda:
    ld b, [hl]                                    ; $6bda: $46
    ld l, c                                       ; $6bdb: $69
    ld [hl], d                                    ; $6bdc: $72
    ld [hl], e                                    ; $6bdd: $73
    ld [hl], h                                    ; $6bde: $74
    jr nz, jr_01c_6c44                            ; $6bdf: $20 $63

    ld l, a                                       ; $6be1: $6f
    ld l, l                                       ; $6be2: $6d
    ld h, l                                       ; $6be3: $65
    ld [hl], e                                    ; $6be4: $73
    jr nz, jr_01c_6c57                            ; $6be5: $20 $70

    ld l, a                                       ; $6be7: $6f
    ld [hl], a                                    ; $6be8: $77
    ld h, l                                       ; $6be9: $65

jr_01c_6bea:
    ld [hl], d                                    ; $6bea: $72
    ld l, $01                                     ; $6beb: $2e $01
    ld b, [hl]                                    ; $6bed: $46
    ld l, a                                       ; $6bee: $6f
    ld [hl], d                                    ; $6bef: $72
    jr nz, jr_01c_6c5f                            ; $6bf0: $20 $6d

    ld l, a                                       ; $6bf2: $6f
    ld [hl], d                                    ; $6bf3: $72
    ld h, l                                       ; $6bf4: $65

jr_01c_6bf5:
    jr nz, jr_01c_6c5b                            ; $6bf5: $20 $64

    ld l, c                                       ; $6bf7: $69
    ld [hl], e                                    ; $6bf8: $73
    ld [hl], h                                    ; $6bf9: $74
    ld h, c                                       ; $6bfa: $61
    ld l, [hl]                                    ; $6bfb: $6e
    ld h, e                                       ; $6bfc: $63
    ld h, l                                       ; $6bfd: $65

jr_01c_6bfe:
    ld bc, $6863                                  ; $6bfe: $01 $63 $68
    ld l, a                                       ; $6c01: $6f
    ld l, a                                       ; $6c02: $6f
    ld [hl], e                                    ; $6c03: $73
    ld h, l                                       ; $6c04: $65
    jr nz, jr_01c_6c68                            ; $6c05: $20 $61

    jr nz, jr_01c_6c79                            ; $6c07: $20 $70

    ld l, a                                       ; $6c09: $6f
    ld [hl], a                                    ; $6c0a: $77
    ld h, l                                       ; $6c0b: $65
    ld [hl], d                                    ; $6c0c: $72
    jr nz, jr_01c_6c82                            ; $6c0d: $20 $73

    ld l, b                                       ; $6c0f: $68
    ld l, a                                       ; $6c10: $6f

jr_01c_6c11:
    ld [hl], h                                    ; $6c11: $74
    ld l, $03                                     ; $6c12: $2e $03
    nop                                           ; $6c14: $00
    ld c, [hl]                                    ; $6c15: $4e

jr_01c_6c16:
    ld h, l                                       ; $6c16: $65
    ld a, b                                       ; $6c17: $78
    ld [hl], h                                    ; $6c18: $74
    inc l                                         ; $6c19: $2c
    jr nz, jr_01c_6c7f                            ; $6c1a: $20 $63

    ld l, b                                       ; $6c1c: $68
    ld l, a                                       ; $6c1d: $6f
    ld l, a                                       ; $6c1e: $6f
    ld [hl], e                                    ; $6c1f: $73
    ld h, l                                       ; $6c20: $65

jr_01c_6c21:
    jr nz, jr_01c_6c9c                            ; $6c21: $20 $79

    ld l, a                                       ; $6c23: $6f
    ld [hl], l                                    ; $6c24: $75
    ld [hl], d                                    ; $6c25: $72

jr_01c_6c26:
    ld bc, $6c63                                  ; $6c26: $01 $63 $6c
    ld [hl], l                                    ; $6c29: $75
    ld h, d                                       ; $6c2a: $62
    jr nz, jr_01c_6c8e                            ; $6c2b: $20 $61

    ld l, [hl]                                    ; $6c2d: $6e
    ld h, h                                       ; $6c2e: $64
    jr nz, jr_01c_6c93                            ; $6c2f: $20 $62

    ld h, l                                       ; $6c31: $65
    ld bc, $6f62                                  ; $6c32: $01 $62 $6f
    ld l, h                                       ; $6c35: $6c
    ld h, h                                       ; $6c36: $64
    jr nz, @+$63                                  ; $6c37: $20 $61

    ld h, d                                       ; $6c39: $62
    ld l, a                                       ; $6c3a: $6f
    ld [hl], l                                    ; $6c3b: $75
    ld [hl], h                                    ; $6c3c: $74
    jr nz, jr_01c_6ca8                            ; $6c3d: $20 $69

    ld [hl], h                                    ; $6c3f: $74
    ld l, $03                                     ; $6c40: $2e $03
    nop                                           ; $6c42: $00
    ld c, a                                       ; $6c43: $4f

jr_01c_6c44:
    ld c, e                                       ; $6c44: $4b

jr_01c_6c45:
    ld l, $20                                     ; $6c45: $2e $20
    ld d, e                                       ; $6c47: $53
    ld [hl], h                                    ; $6c48: $74
    ld h, c                                       ; $6c49: $61
    ld a, c                                       ; $6c4a: $79
    jr nz, jr_01c_6cb3                            ; $6c4b: $20 $66

    ld l, a                                       ; $6c4d: $6f
    ld h, e                                       ; $6c4e: $63
    ld [hl], l                                    ; $6c4f: $75
    ld [hl], e                                    ; $6c50: $73
    ld h, l                                       ; $6c51: $65
    ld h, h                                       ; $6c52: $64
    ld bc, $6e61                                  ; $6c53: $01 $61 $6e
    ld h, h                                       ; $6c56: $64

jr_01c_6c57:
    jr nz, jr_01c_6ccc                            ; $6c57: $20 $73

    ld [hl], a                                    ; $6c59: $77
    ld l, c                                       ; $6c5a: $69

jr_01c_6c5b:
    ld l, [hl]                                    ; $6c5b: $6e
    ld h, a                                       ; $6c5c: $67
    ld l, $03                                     ; $6c5d: $2e $03

jr_01c_6c5f:
    nop                                           ; $6c5f: $00
    ld c, a                                       ; $6c60: $4f
    ld l, a                                       ; $6c61: $6f
    ld [hl], b                                    ; $6c62: $70
    ld [hl], e                                    ; $6c63: $73
    inc l                                         ; $6c64: $2c
    jr nz, jr_01c_6cd0                            ; $6c65: $20 $69

    ld [hl], h                                    ; $6c67: $74

jr_01c_6c68:
    jr nz, jr_01c_6cce                            ; $6c68: $20 $64

    ld l, c                                       ; $6c6a: $69
    ld h, h                                       ; $6c6b: $64
    ld l, [hl]                                    ; $6c6c: $6e
    daa                                           ; $6c6d: $27
    ld [hl], h                                    ; $6c6e: $74
    jr nz, jr_01c_6cd8                            ; $6c6f: $20 $67

    ld l, a                                       ; $6c71: $6f
    ld bc, $6f73                                  ; $6c72: $01 $73 $6f
    jr nz, jr_01c_6cee                            ; $6c75: $20 $77

    ld h, l                                       ; $6c77: $65
    ld l, h                                       ; $6c78: $6c

jr_01c_6c79:
    ld l, h                                       ; $6c79: $6c
    ld l, $2e                                     ; $6c7a: $2e $2e
    ld l, $02                                     ; $6c7c: $2e $02
    ld c, c                                       ; $6c7e: $49

jr_01c_6c7f:
    ld h, [hl]                                    ; $6c7f: $66
    jr nz, jr_01c_6cfb                            ; $6c80: $20 $79

jr_01c_6c82:
    ld l, a                                       ; $6c82: $6f
    ld [hl], l                                    ; $6c83: $75
    jr nz, jr_01c_6cfd                            ; $6c84: $20 $77

    ld l, a                                       ; $6c86: $6f
    ld [hl], d                                    ; $6c87: $72
    ld [hl], d                                    ; $6c88: $72
    ld a, c                                       ; $6c89: $79
    jr nz, jr_01c_6ced                            ; $6c8a: $20 $61

    ld h, d                                       ; $6c8c: $62
    ld l, a                                       ; $6c8d: $6f

jr_01c_6c8e:
    ld [hl], l                                    ; $6c8e: $75
    ld [hl], h                                    ; $6c8f: $74
    ld bc, $6874                                  ; $6c90: $01 $74 $68

jr_01c_6c93:
    ld h, l                                       ; $6c93: $65
    jr nz, jr_01c_6d03                            ; $6c94: $20 $6d

    ld h, l                                       ; $6c96: $65
    ld h, l                                       ; $6c97: $65
    ld [hl], h                                    ; $6c98: $74
    jr nz, jr_01c_6cfc                            ; $6c99: $20 $61

    ld [hl], d                                    ; $6c9b: $72

jr_01c_6c9c:
    ld h, l                                       ; $6c9c: $65
    ld h, c                                       ; $6c9d: $61
    inc l                                         ; $6c9e: $2c
    ld bc, $6f79                                  ; $6c9f: $01 $79 $6f
    ld [hl], l                                    ; $6ca2: $75
    daa                                           ; $6ca3: $27
    ld l, h                                       ; $6ca4: $6c
    ld l, h                                       ; $6ca5: $6c
    jr nz, @+$6f                                  ; $6ca6: $20 $6d

jr_01c_6ca8:
    ld l, c                                       ; $6ca8: $69
    ld [hl], e                                    ; $6ca9: $73
    ld [hl], e                                    ; $6caa: $73
    ld l, $03                                     ; $6cab: $2e $03
    nop                                           ; $6cad: $00
    ld e, c                                       ; $6cae: $59
    ld l, a                                       ; $6caf: $6f
    ld [hl], l                                    ; $6cb0: $75
    jr nz, jr_01c_6d1a                            ; $6cb1: $20 $67

jr_01c_6cb3:
    ld l, a                                       ; $6cb3: $6f
    ld [hl], h                                    ; $6cb4: $74
    jr nz, jr_01c_6d26                            ; $6cb5: $20 $6f

    ld [hl], l                                    ; $6cb7: $75
    ld [hl], h                                    ; $6cb8: $74
    jr nz, jr_01c_6d2a                            ; $6cb9: $20 $6f

    ld h, [hl]                                    ; $6cbb: $66
    jr nz, jr_01c_6d32                            ; $6cbc: $20 $74

    ld l, b                                       ; $6cbe: $68
    ld h, l                                       ; $6cbf: $65
    ld bc, $7562                                  ; $6cc0: $01 $62 $75
    ld l, [hl]                                    ; $6cc3: $6e
    ld l, e                                       ; $6cc4: $6b
    ld h, l                                       ; $6cc5: $65
    ld [hl], d                                    ; $6cc6: $72
    inc l                                         ; $6cc7: $2c
    jr nz, jr_01c_6d2c                            ; $6cc8: $20 $62

    ld [hl], l                                    ; $6cca: $75
    ld [hl], h                                    ; $6ccb: $74

jr_01c_6ccc:
    jr nz, jr_01c_6d32                            ; $6ccc: $20 $64

jr_01c_6cce:
    ld l, c                                       ; $6cce: $69
    ld h, h                                       ; $6ccf: $64

jr_01c_6cd0:
    ld l, [hl]                                    ; $6cd0: $6e
    daa                                           ; $6cd1: $27
    ld [hl], h                                    ; $6cd2: $74
    ld bc, $616d                                  ; $6cd3: $01 $6d $61
    ld l, e                                       ; $6cd6: $6b
    ld h, l                                       ; $6cd7: $65

jr_01c_6cd8:
    jr nz, jr_01c_6d4e                            ; $6cd8: $20 $74

    ld l, b                                       ; $6cda: $68
    ld h, l                                       ; $6cdb: $65
    jr nz, @+$69                                  ; $6cdc: $20 $67

    ld [hl], d                                    ; $6cde: $72
    ld h, l                                       ; $6cdf: $65
    ld h, l                                       ; $6ce0: $65
    ld l, [hl]                                    ; $6ce1: $6e
    ld l, $02                                     ; $6ce2: $2e $02
    ld c, [hl]                                    ; $6ce4: $4e
    ld h, l                                       ; $6ce5: $65
    ld a, b                                       ; $6ce6: $78
    ld [hl], h                                    ; $6ce7: $74
    jr nz, jr_01c_6d5e                            ; $6ce8: $20 $74

    ld l, c                                       ; $6cea: $69
    ld l, l                                       ; $6ceb: $6d
    ld h, l                                       ; $6cec: $65

jr_01c_6ced:
    inc l                                         ; $6ced: $2c

jr_01c_6cee:
    jr nz, jr_01c_6d57                            ; $6cee: $20 $67

    ld h, l                                       ; $6cf0: $65
    ld [hl], h                                    ; $6cf1: $74
    ld bc, $6e6f                                  ; $6cf2: $01 $6f $6e
    jr nz, jr_01c_6d6b                            ; $6cf5: $20 $74

    ld l, b                                       ; $6cf7: $68
    ld h, l                                       ; $6cf8: $65
    jr nz, jr_01c_6d62                            ; $6cf9: $20 $67

jr_01c_6cfb:
    ld [hl], d                                    ; $6cfb: $72

jr_01c_6cfc:
    ld h, l                                       ; $6cfc: $65

jr_01c_6cfd:
    ld h, l                                       ; $6cfd: $65
    ld l, [hl]                                    ; $6cfe: $6e
    ld l, $03                                     ; $6cff: $2e $03
    nop                                           ; $6d01: $00
    ld d, h                                       ; $6d02: $54

jr_01c_6d03:
    ld l, b                                       ; $6d03: $68
    ld h, c                                       ; $6d04: $61
    ld [hl], h                                    ; $6d05: $74
    daa                                           ; $6d06: $27
    ld [hl], e                                    ; $6d07: $73
    jr nz, jr_01c_6d7c                            ; $6d08: $20 $72

    ld h, l                                       ; $6d0a: $65
    ld h, c                                       ; $6d0b: $61
    ld l, h                                       ; $6d0c: $6c
    ld l, h                                       ; $6d0d: $6c
    ld a, c                                       ; $6d0e: $79
    jr nz, jr_01c_6d78                            ; $6d0f: $20 $67

    ld l, a                                       ; $6d11: $6f
    ld l, a                                       ; $6d12: $6f
    ld h, h                                       ; $6d13: $64
    ld bc, $6f66                                  ; $6d14: $01 $66 $6f
    ld [hl], d                                    ; $6d17: $72
    jr nz, jr_01c_6d7b                            ; $6d18: $20 $61

jr_01c_6d1a:
    jr nz, jr_01c_6d90                            ; $6d1a: $20 $74

    ld [hl], d                                    ; $6d1c: $72
    ld l, a                                       ; $6d1d: $6f
    ld [hl], l                                    ; $6d1e: $75
    ld h, d                                       ; $6d1f: $62
    ld l, h                                       ; $6d20: $6c
    ld h, l                                       ; $6d21: $65
    jr nz, jr_01c_6d97                            ; $6d22: $20 $73

    ld l, b                                       ; $6d24: $68
    ld l, a                                       ; $6d25: $6f

jr_01c_6d26:
    ld [hl], h                                    ; $6d26: $74
    ld l, $03                                     ; $6d27: $2e $03
    nop                                           ; $6d29: $00

jr_01c_6d2a:
    ld d, a                                       ; $6d2a: $57
    ld h, c                                       ; $6d2b: $61

jr_01c_6d2c:
    ld [hl], h                                    ; $6d2c: $74
    ld h, e                                       ; $6d2d: $63
    ld l, b                                       ; $6d2e: $68
    jr nz, jr_01c_6daa                            ; $6d2f: $20 $79

    ld l, a                                       ; $6d31: $6f

jr_01c_6d32:
    ld [hl], l                                    ; $6d32: $75
    ld [hl], d                                    ; $6d33: $72
    jr nz, jr_01c_6daa                            ; $6d34: $20 $74

    ld l, c                                       ; $6d36: $69
    ld l, l                                       ; $6d37: $6d
    ld l, c                                       ; $6d38: $69
    ld l, [hl]                                    ; $6d39: $6e
    ld h, a                                       ; $6d3a: $67
    ld bc, $6877                                  ; $6d3b: $01 $77 $68
    ld h, l                                       ; $6d3e: $65
    ld l, [hl]                                    ; $6d3f: $6e
    jr nz, jr_01c_6db6                            ; $6d40: $20 $74

    ld l, b                                       ; $6d42: $68
    ld h, l                                       ; $6d43: $65
    jr nz, @+$6f                                  ; $6d44: $20 $6d

    ld h, l                                       ; $6d46: $65
    ld h, l                                       ; $6d47: $65
    ld [hl], h                                    ; $6d48: $74
    ld bc, $7261                                  ; $6d49: $01 $61 $72
    ld h, l                                       ; $6d4c: $65
    ld h, c                                       ; $6d4d: $61

jr_01c_6d4e:
    jr nz, jr_01c_6db9                            ; $6d4e: $20 $69

    ld [hl], e                                    ; $6d50: $73
    jr nz, jr_01c_6dc6                            ; $6d51: $20 $73

    ld l, l                                       ; $6d53: $6d
    ld h, c                                       ; $6d54: $61
    ld l, h                                       ; $6d55: $6c
    ld l, h                                       ; $6d56: $6c

jr_01c_6d57:
    ld l, $03                                     ; $6d57: $2e $03
    nop                                           ; $6d59: $00
    ld b, a                                       ; $6d5a: $47
    ld l, a                                       ; $6d5b: $6f
    ld l, a                                       ; $6d5c: $6f
    ld h, h                                       ; $6d5d: $64

jr_01c_6d5e:
    ld l, $20                                     ; $6d5e: $2e $20
    ld d, d                                       ; $6d60: $52
    ld h, l                                       ; $6d61: $65

jr_01c_6d62:
    ld h, [hl]                                    ; $6d62: $66
    ld l, c                                       ; $6d63: $69
    ld l, [hl]                                    ; $6d64: $6e
    ld h, l                                       ; $6d65: $65
    jr nz, jr_01c_6de1                            ; $6d66: $20 $79

    ld l, a                                       ; $6d68: $6f
    ld [hl], l                                    ; $6d69: $75
    ld [hl], d                                    ; $6d6a: $72

jr_01c_6d6b:
    ld bc, $6574                                  ; $6d6b: $01 $74 $65
    ld h, e                                       ; $6d6e: $63
    ld l, b                                       ; $6d6f: $68
    ld l, [hl]                                    ; $6d70: $6e
    ld l, c                                       ; $6d71: $69
    ld [hl], c                                    ; $6d72: $71
    ld [hl], l                                    ; $6d73: $75
    ld h, l                                       ; $6d74: $65
    jr nz, jr_01c_6deb                            ; $6d75: $20 $74

    ld l, a                                       ; $6d77: $6f

jr_01c_6d78:
    jr nz, jr_01c_6de1                            ; $6d78: $20 $67

    ld h, l                                       ; $6d7a: $65

jr_01c_6d7b:
    ld [hl], h                                    ; $6d7b: $74

jr_01c_6d7c:
    ld bc, $6c63                                  ; $6d7c: $01 $63 $6c
    ld l, a                                       ; $6d7f: $6f
    ld [hl], e                                    ; $6d80: $73
    ld h, l                                       ; $6d81: $65
    ld [hl], d                                    ; $6d82: $72
    jr nz, jr_01c_6df9                            ; $6d83: $20 $74

    ld l, a                                       ; $6d85: $6f
    jr nz, jr_01c_6dfc                            ; $6d86: $20 $74

    ld l, b                                       ; $6d88: $68
    ld h, l                                       ; $6d89: $65
    jr nz, jr_01c_6dfc                            ; $6d8a: $20 $70

    ld l, c                                       ; $6d8c: $69
    ld l, [hl]                                    ; $6d8d: $6e
    ld l, $03                                     ; $6d8e: $2e $03

jr_01c_6d90:
    nop                                           ; $6d90: $00
    ld c, c                                       ; $6d91: $49
    ld [hl], h                                    ; $6d92: $74
    daa                                           ; $6d93: $27
    ld [hl], e                                    ; $6d94: $73
    jr nz, @+$7b                                  ; $6d95: $20 $79

jr_01c_6d97:
    ld l, a                                       ; $6d97: $6f
    ld [hl], l                                    ; $6d98: $75
    ld l, $00                                     ; $6d99: $2e $00
    ld b, h                                       ; $6d9b: $44
    ld l, a                                       ; $6d9c: $6f
    jr nz, @+$7b                                  ; $6d9d: $20 $79

    ld l, a                                       ; $6d9f: $6f
    ld [hl], l                                    ; $6da0: $75
    jr nz, jr_01c_6e0e                            ; $6da1: $20 $6b

    ld l, [hl]                                    ; $6da3: $6e
    ld l, a                                       ; $6da4: $6f
    ld [hl], a                                    ; $6da5: $77
    jr nz, jr_01c_6e1c                            ; $6da6: $20 $74

    ld l, b                                       ; $6da8: $68
    ld h, l                                       ; $6da9: $65

jr_01c_6daa:
    ld bc, $6173                                  ; $6daa: $01 $73 $61
    ld a, c                                       ; $6dad: $79
    ld l, c                                       ; $6dae: $69
    ld l, [hl]                                    ; $6daf: $6e
    ld h, a                                       ; $6db0: $67
    ld a, [hl-]                                   ; $6db1: $3a
    jr nz, jr_01c_6dd6                            ; $6db2: $20 $22

    ld d, b                                       ; $6db4: $50
    ld [hl], l                                    ; $6db5: $75

jr_01c_6db6:
    ld [hl], h                                    ; $6db6: $74
    ld [hl], h                                    ; $6db7: $74
    ld l, c                                       ; $6db8: $69

jr_01c_6db9:
    ld l, [hl]                                    ; $6db9: $6e
    ld h, a                                       ; $6dba: $67
    ld bc, $6168                                  ; $6dbb: $01 $68 $61
    ld [hl], e                                    ; $6dbe: $73
    jr nz, jr_01c_6e2f                            ; $6dbf: $20 $6e

    ld l, a                                       ; $6dc1: $6f
    jr nz, jr_01c_6e2a                            ; $6dc2: $20 $66

    ld l, a                                       ; $6dc4: $6f
    ld [hl], d                                    ; $6dc5: $72

jr_01c_6dc6:
    ld l, l                                       ; $6dc6: $6d
    ccf                                           ; $6dc7: $3f
    ld [hl+], a                                   ; $6dc8: $22
    nop                                           ; $6dc9: $00
    ld b, d                                       ; $6dca: $42
    ld [hl], l                                    ; $6dcb: $75
    ld [hl], h                                    ; $6dcc: $74
    jr nz, @+$7b                                  ; $6dcd: $20 $79

    ld l, a                                       ; $6dcf: $6f
    ld [hl], l                                    ; $6dd0: $75
    jr nz, jr_01c_6e3b                            ; $6dd1: $20 $68

    ld h, c                                       ; $6dd3: $61
    halt                                          ; $6dd4: $76
    ld h, l                                       ; $6dd5: $65

jr_01c_6dd6:
    jr nz, @+$76                                  ; $6dd6: $20 $74

    ld l, a                                       ; $6dd8: $6f
    ld bc, $6572                                  ; $6dd9: $01 $72 $65
    ld h, c                                       ; $6ddc: $61
    ld h, e                                       ; $6ddd: $63
    ld l, b                                       ; $6dde: $68
    jr nz, jr_01c_6e55                            ; $6ddf: $20 $74

jr_01c_6de1:
    ld l, b                                       ; $6de1: $68
    ld h, l                                       ; $6de2: $65
    jr nz, @+$65                                  ; $6de3: $20 $63

    ld [hl], l                                    ; $6de5: $75
    ld [hl], b                                    ; $6de6: $70
    ld l, $01                                     ; $6de7: $2e $01
    ld c, c                                       ; $6de9: $49
    ld [hl], h                                    ; $6dea: $74

jr_01c_6deb:
    daa                                           ; $6deb: $27
    ld l, h                                       ; $6dec: $6c
    ld l, h                                       ; $6ded: $6c
    jr nz, jr_01c_6e5e                            ; $6dee: $20 $6e

    ld h, l                                       ; $6df0: $65
    halt                                          ; $6df1: $76
    ld h, l                                       ; $6df2: $65
    ld [hl], d                                    ; $6df3: $72
    jr nz, jr_01c_6e69                            ; $6df4: $20 $73

    ld l, c                                       ; $6df6: $69
    ld l, [hl]                                    ; $6df7: $6e
    ld l, e                                       ; $6df8: $6b

jr_01c_6df9:
    inc l                                         ; $6df9: $2c
    jr nz, @+$71                                  ; $6dfa: $20 $6f

jr_01c_6dfc:
    ld [hl], h                                    ; $6dfc: $74
    ld l, b                                       ; $6dfd: $68
    ld h, l                                       ; $6dfe: $65
    ld [hl], d                                    ; $6dff: $72
    ld [hl], a                                    ; $6e00: $77
    ld l, c                                       ; $6e01: $69
    ld [hl], e                                    ; $6e02: $73
    ld h, l                                       ; $6e03: $65
    ld l, $03                                     ; $6e04: $2e $03
    nop                                           ; $6e06: $00
    ld c, c                                       ; $6e07: $49
    ld [hl], h                                    ; $6e08: $74
    jr nz, jr_01c_6e78                            ; $6e09: $20 $6d

    ld h, l                                       ; $6e0b: $65
    ld h, c                                       ; $6e0c: $61
    ld l, [hl]                                    ; $6e0d: $6e

jr_01c_6e0e:
    ld [hl], e                                    ; $6e0e: $73
    jr nz, jr_01c_6e85                            ; $6e0f: $20 $74

    ld l, b                                       ; $6e11: $68
    ld h, c                                       ; $6e12: $61
    ld [hl], h                                    ; $6e13: $74
    jr nz, jr_01c_6e8a                            ; $6e14: $20 $74

    ld l, a                                       ; $6e16: $6f
    ld bc, $6973                                  ; $6e17: $01 $73 $69
    ld l, [hl]                                    ; $6e1a: $6e
    ld l, e                                       ; $6e1b: $6b

jr_01c_6e1c:
    jr nz, @+$76                                  ; $6e1c: $20 $74

    ld l, b                                       ; $6e1e: $68
    ld h, l                                       ; $6e1f: $65
    jr nz, jr_01c_6e84                            ; $6e20: $20 $62

    ld h, c                                       ; $6e22: $61
    ld l, h                                       ; $6e23: $6c
    ld l, h                                       ; $6e24: $6c
    inc l                                         ; $6e25: $2c
    ld bc, $6e61                                  ; $6e26: $01 $61 $6e
    ld a, c                                       ; $6e29: $79

jr_01c_6e2a:
    jr nz, @+$68                                  ; $6e2a: $20 $66

    ld l, a                                       ; $6e2c: $6f
    ld [hl], d                                    ; $6e2d: $72
    ld l, l                                       ; $6e2e: $6d

jr_01c_6e2f:
    jr nz, @+$6b                                  ; $6e2f: $20 $69

    ld [hl], e                                    ; $6e31: $73
    jr nz, @+$68                                  ; $6e32: $20 $66

    ld l, c                                       ; $6e34: $69
    ld l, [hl]                                    ; $6e35: $6e
    ld h, l                                       ; $6e36: $65
    ld l, $03                                     ; $6e37: $2e $03
    nop                                           ; $6e39: $00
    ld d, h                                       ; $6e3a: $54

jr_01c_6e3b:
    ld l, b                                       ; $6e3b: $68
    ld h, l                                       ; $6e3c: $65
    jr nz, jr_01c_6ea0                            ; $6e3d: $20 $61

    ld [hl], d                                    ; $6e3f: $72
    ld [hl], d                                    ; $6e40: $72
    ld l, a                                       ; $6e41: $6f
    ld [hl], a                                    ; $6e42: $77
    ld [hl], e                                    ; $6e43: $73
    jr nz, jr_01c_6eb5                            ; $6e44: $20 $6f

    ld l, [hl]                                    ; $6e46: $6e
    ld bc, $6874                                  ; $6e47: $01 $74 $68
    ld h, l                                       ; $6e4a: $65
    jr nz, @+$69                                  ; $6e4b: $20 $67

    ld [hl], d                                    ; $6e4d: $72
    ld h, l                                       ; $6e4e: $65
    ld h, l                                       ; $6e4f: $65
    ld l, [hl]                                    ; $6e50: $6e
    jr nz, jr_01c_6ec3                            ; $6e51: $20 $70

    ld l, a                                       ; $6e53: $6f
    ld l, c                                       ; $6e54: $69

jr_01c_6e55:
    ld l, [hl]                                    ; $6e55: $6e
    ld [hl], h                                    ; $6e56: $74
    ld bc, $6f64                                  ; $6e57: $01 $64 $6f
    ld [hl], a                                    ; $6e5a: $77
    ld l, [hl]                                    ; $6e5b: $6e
    ld l, b                                       ; $6e5c: $68
    ld l, c                                       ; $6e5d: $69

jr_01c_6e5e:
    ld l, h                                       ; $6e5e: $6c
    ld l, h                                       ; $6e5f: $6c
    ld l, $02                                     ; $6e60: $2e $02
    ld d, d                                       ; $6e62: $52
    ld h, l                                       ; $6e63: $65
    ld h, c                                       ; $6e64: $61
    ld h, h                                       ; $6e65: $64
    jr nz, jr_01c_6edc                            ; $6e66: $20 $74

    ld l, b                                       ; $6e68: $68

jr_01c_6e69:
    ld h, l                                       ; $6e69: $65
    jr nz, @+$63                                  ; $6e6a: $20 $61

    ld [hl], d                                    ; $6e6c: $72
    ld [hl], d                                    ; $6e6d: $72
    ld l, a                                       ; $6e6e: $6f
    ld [hl], a                                    ; $6e6f: $77
    ld [hl], e                                    ; $6e70: $73
    jr nz, jr_01c_6ee7                            ; $6e71: $20 $74

    ld l, a                                       ; $6e73: $6f
    ld bc, $6573                                  ; $6e74: $01 $73 $65
    ld h, l                                       ; $6e77: $65

jr_01c_6e78:
    jr nz, jr_01c_6ef1                            ; $6e78: $20 $77

    ld l, b                                       ; $6e7a: $68
    ld h, l                                       ; $6e7b: $65
    ld [hl], d                                    ; $6e7c: $72
    ld h, l                                       ; $6e7d: $65
    jr nz, @+$76                                  ; $6e7e: $20 $74

    ld l, b                                       ; $6e80: $68
    ld h, l                                       ; $6e81: $65
    jr nz, jr_01c_6ee6                            ; $6e82: $20 $62

jr_01c_6e84:
    ld h, c                                       ; $6e84: $61

jr_01c_6e85:
    ld l, h                                       ; $6e85: $6c
    ld l, h                                       ; $6e86: $6c
    ld bc, $6977                                  ; $6e87: $01 $77 $69

jr_01c_6e8a:
    ld l, h                                       ; $6e8a: $6c
    ld l, h                                       ; $6e8b: $6c
    jr nz, @+$74                                  ; $6e8c: $20 $72

    ld l, a                                       ; $6e8e: $6f
    ld l, h                                       ; $6e8f: $6c
    ld l, h                                       ; $6e90: $6c
    ld l, $03                                     ; $6e91: $2e $03
    nop                                           ; $6e93: $00
    ld b, d                                       ; $6e94: $42
    ld h, c                                       ; $6e95: $61
    ld l, h                                       ; $6e96: $6c
    ld l, h                                       ; $6e97: $6c
    ld [hl], e                                    ; $6e98: $73
    jr nz, @+$74                                  ; $6e99: $20 $72

    ld l, a                                       ; $6e9b: $6f
    ld l, h                                       ; $6e9c: $6c
    ld l, h                                       ; $6e9d: $6c
    jr nz, @+$66                                  ; $6e9e: $20 $64

jr_01c_6ea0:
    ld l, a                                       ; $6ea0: $6f
    ld [hl], a                                    ; $6ea1: $77
    ld l, [hl]                                    ; $6ea2: $6e
    ld l, b                                       ; $6ea3: $68
    ld l, c                                       ; $6ea4: $69
    ld l, h                                       ; $6ea5: $6c
    ld l, h                                       ; $6ea6: $6c
    ld bc, $7571                                  ; $6ea7: $01 $71 $75
    ld l, c                                       ; $6eaa: $69
    ld h, e                                       ; $6eab: $63
    ld l, e                                       ; $6eac: $6b
    ld l, h                                       ; $6ead: $6c
    ld a, c                                       ; $6eae: $79
    inc l                                         ; $6eaf: $2c
    jr nz, jr_01c_6f25                            ; $6eb0: $20 $73

    ld l, a                                       ; $6eb2: $6f
    jr nz, jr_01c_6f25                            ; $6eb3: $20 $70

jr_01c_6eb5:
    ld [hl], l                                    ; $6eb5: $75
    ld [hl], h                                    ; $6eb6: $74
    ld [hl], h                                    ; $6eb7: $74
    ld bc, $6f73                                  ; $6eb8: $01 $73 $6f
    ld h, [hl]                                    ; $6ebb: $66
    ld [hl], h                                    ; $6ebc: $74
    ld l, h                                       ; $6ebd: $6c
    ld a, c                                       ; $6ebe: $79
    ld l, $02                                     ; $6ebf: $2e $02
    ld c, c                                       ; $6ec1: $49
    ld h, [hl]                                    ; $6ec2: $66

jr_01c_6ec3:
    jr nz, jr_01c_6f3e                            ; $6ec3: $20 $79

    ld l, a                                       ; $6ec5: $6f
    ld [hl], l                                    ; $6ec6: $75
    jr nz, jr_01c_6f2c                            ; $6ec7: $20 $63

    ld h, c                                       ; $6ec9: $61
    ld l, [hl]                                    ; $6eca: $6e
    inc l                                         ; $6ecb: $2c
    jr nz, jr_01c_6f36                            ; $6ecc: $20 $68

    ld l, c                                       ; $6ece: $69
    ld [hl], h                                    ; $6ecf: $74
    jr nz, jr_01c_6f3b                            ; $6ed0: $20 $69

    ld [hl], h                                    ; $6ed2: $74
    ld bc, $6168                                  ; $6ed3: $01 $68 $61
    ld [hl], d                                    ; $6ed6: $72
    ld h, h                                       ; $6ed7: $64
    ld h, l                                       ; $6ed8: $65
    ld [hl], d                                    ; $6ed9: $72
    jr nz, jr_01c_6f53                            ; $6eda: $20 $77

jr_01c_6edc:
    ld l, b                                       ; $6edc: $68
    ld h, l                                       ; $6edd: $65
    ld l, [hl]                                    ; $6ede: $6e
    jr nz, jr_01c_6f51                            ; $6edf: $20 $70

    ld [hl], l                                    ; $6ee1: $75
    ld [hl], h                                    ; $6ee2: $74
    ld [hl], h                                    ; $6ee3: $74
    ld l, c                                       ; $6ee4: $69
    ld l, [hl]                                    ; $6ee5: $6e

jr_01c_6ee6:
    ld h, a                                       ; $6ee6: $67

jr_01c_6ee7:
    ld bc, $7075                                  ; $6ee7: $01 $75 $70
    ld l, b                                       ; $6eea: $68
    ld l, c                                       ; $6eeb: $69
    ld l, h                                       ; $6eec: $6c
    ld l, h                                       ; $6eed: $6c
    ld hl, $0003                                  ; $6eee: $21 $03 $00

jr_01c_6ef1:
    ld c, l                                       ; $6ef1: $4d
    ld a, c                                       ; $6ef2: $79
    jr nz, jr_01c_6f59                            ; $6ef3: $20 $64

    ld [hl], d                                    ; $6ef5: $72
    ld h, l                                       ; $6ef6: $65
    ld h, c                                       ; $6ef7: $61
    ld l, l                                       ; $6ef8: $6d
    jr nz, jr_01c_6f64                            ; $6ef9: $20 $69

    ld [hl], e                                    ; $6efb: $73
    jr nz, @+$76                                  ; $6efc: $20 $74

    ld l, a                                       ; $6efe: $6f
    jr nz, jr_01c_6f78                            ; $6eff: $20 $77

    ld l, c                                       ; $6f01: $69
    ld l, [hl]                                    ; $6f02: $6e
    ld bc, $6874                                  ; $6f03: $01 $74 $68
    ld h, l                                       ; $6f06: $65
    jr nz, jr_01c_6f4c                            ; $6f07: $20 $43

    ld l, h                                       ; $6f09: $6c
    ld [hl], l                                    ; $6f0a: $75
    ld h, d                                       ; $6f0b: $62
    jr nz, @+$56                                  ; $6f0c: $20 $54

    ld l, a                                       ; $6f0e: $6f
    ld [hl], l                                    ; $6f0f: $75
    ld [hl], d                                    ; $6f10: $72
    ld l, [hl]                                    ; $6f11: $6e
    ld h, c                                       ; $6f12: $61
    ld l, l                                       ; $6f13: $6d
    ld h, l                                       ; $6f14: $65
    ld l, [hl]                                    ; $6f15: $6e
    ld [hl], h                                    ; $6f16: $74
    ld l, $02                                     ; $6f17: $2e $02
    ld b, d                                       ; $6f19: $42
    ld h, l                                       ; $6f1a: $65
    ld h, e                                       ; $6f1b: $63
    ld l, a                                       ; $6f1c: $6f
    ld l, l                                       ; $6f1d: $6d
    ld l, c                                       ; $6f1e: $69
    ld l, [hl]                                    ; $6f1f: $6e
    ld h, a                                       ; $6f20: $67
    jr nz, jr_01c_6f66                            ; $6f21: $20 $43

    ld l, h                                       ; $6f23: $6c
    ld [hl], l                                    ; $6f24: $75

jr_01c_6f25:
    ld h, d                                       ; $6f25: $62
    ld bc, $6843                                  ; $6f26: $01 $43 $68
    ld h, c                                       ; $6f29: $61
    ld l, l                                       ; $6f2a: $6d
    ld [hl], b                                    ; $6f2b: $70

jr_01c_6f2c:
    jr nz, jr_01c_6f97                            ; $6f2c: $20 $69

    ld [hl], e                                    ; $6f2e: $73
    jr nz, @+$76                                  ; $6f2f: $20 $74

    ld l, b                                       ; $6f31: $68
    ld h, l                                       ; $6f32: $65
    ld bc, $7267                                  ; $6f33: $01 $67 $72

jr_01c_6f36:
    ld h, l                                       ; $6f36: $65
    ld h, c                                       ; $6f37: $61
    ld [hl], h                                    ; $6f38: $74
    ld h, l                                       ; $6f39: $65
    ld [hl], e                                    ; $6f3a: $73

jr_01c_6f3b:
    ld [hl], h                                    ; $6f3b: $74
    jr nz, @+$6a                                  ; $6f3c: $20 $68

jr_01c_6f3e:
    ld l, a                                       ; $6f3e: $6f
    ld l, [hl]                                    ; $6f3f: $6e
    ld l, a                                       ; $6f40: $6f
    ld [hl], d                                    ; $6f41: $72
    ld l, $03                                     ; $6f42: $2e $03
    nop                                           ; $6f44: $00
    ld d, h                                       ; $6f45: $54
    ld l, b                                       ; $6f46: $68
    ld h, l                                       ; $6f47: $65
    ld a, c                                       ; $6f48: $79
    jr nz, jr_01c_6fbe                            ; $6f49: $20 $73

    ld h, c                                       ; $6f4b: $61

jr_01c_6f4c:
    ld a, c                                       ; $6f4c: $79
    jr nz, @+$4f                                  ; $6f4d: $20 $4d

    ld h, c                                       ; $6f4f: $61
    ld [hl], d                                    ; $6f50: $72

jr_01c_6f51:
    ld l, c                                       ; $6f51: $69
    ld l, a                                       ; $6f52: $6f

jr_01c_6f53:
    daa                                           ; $6f53: $27
    ld [hl], e                                    ; $6f54: $73
    ld bc, $7570                                  ; $6f55: $01 $70 $75
    ld [hl], h                                    ; $6f58: $74

jr_01c_6f59:
    ld [hl], h                                    ; $6f59: $74
    ld l, c                                       ; $6f5a: $69
    ld l, [hl]                                    ; $6f5b: $6e
    ld h, a                                       ; $6f5c: $67
    jr nz, jr_01c_6fc8                            ; $6f5d: $20 $69

    ld [hl], e                                    ; $6f5f: $73
    ld bc, $6e75                                  ; $6f60: $01 $75 $6e
    ld h, d                                       ; $6f63: $62

jr_01c_6f64:
    ld h, l                                       ; $6f64: $65
    ld l, h                                       ; $6f65: $6c

jr_01c_6f66:
    ld l, c                                       ; $6f66: $69
    ld h, l                                       ; $6f67: $65
    halt                                          ; $6f68: $76
    ld h, c                                       ; $6f69: $61
    ld h, d                                       ; $6f6a: $62
    ld l, h                                       ; $6f6b: $6c
    ld h, l                                       ; $6f6c: $65
    ld hl, $4902                                  ; $6f6d: $21 $02 $49
    ld h, [hl]                                    ; $6f70: $66
    jr nz, jr_01c_6fe2                            ; $6f71: $20 $6f

    ld l, [hl]                                    ; $6f73: $6e
    ld l, h                                       ; $6f74: $6c
    ld a, c                                       ; $6f75: $79
    jr nz, jr_01c_6fc1                            ; $6f76: $20 $49

jr_01c_6f78:
    jr nz, @+$65                                  ; $6f78: $20 $63

    ld l, a                                       ; $6f7a: $6f
    ld [hl], l                                    ; $6f7b: $75
    ld l, h                                       ; $6f7c: $6c
    ld h, h                                       ; $6f7d: $64
    ld bc, $7570                                  ; $6f7e: $01 $70 $75
    ld [hl], h                                    ; $6f81: $74
    ld [hl], h                                    ; $6f82: $74
    jr nz, jr_01c_6ff1                            ; $6f83: $20 $6c

    ld l, c                                       ; $6f85: $69
    ld l, e                                       ; $6f86: $6b
    ld h, l                                       ; $6f87: $65
    jr nz, jr_01c_6fd7                            ; $6f88: $20 $4d

    ld h, c                                       ; $6f8a: $61
    ld [hl], d                                    ; $6f8b: $72
    ld l, c                                       ; $6f8c: $69
    ld l, a                                       ; $6f8d: $6f
    ld l, $2e                                     ; $6f8e: $2e $2e
    ld l, $01                                     ; $6f90: $2e $01
    ld c, c                                       ; $6f92: $49
    daa                                           ; $6f93: $27
    ld h, h                                       ; $6f94: $64
    jr nz, @+$6e                                  ; $6f95: $20 $6c

jr_01c_6f97:
    ld l, a                                       ; $6f97: $6f
    ld [hl], a                                    ; $6f98: $77
    ld h, l                                       ; $6f99: $65
    ld [hl], d                                    ; $6f9a: $72
    jr nz, jr_01c_700a                            ; $6f9b: $20 $6d

    ld a, c                                       ; $6f9d: $79
    jr nz, jr_01c_7013                            ; $6f9e: $20 $73

    ld h, e                                       ; $6fa0: $63
    ld l, a                                       ; $6fa1: $6f
    ld [hl], d                                    ; $6fa2: $72
    ld h, l                                       ; $6fa3: $65
    ld hl, $0003                                  ; $6fa4: $21 $03 $00
    ld c, [hl]                                    ; $6fa7: $4e
    ld h, l                                       ; $6fa8: $65
    halt                                          ; $6fa9: $76
    ld h, l                                       ; $6faa: $65
    ld [hl], d                                    ; $6fab: $72
    jr nz, jr_01c_7023                            ; $6fac: $20 $75

    ld [hl], b                                    ; $6fae: $70
    inc l                                         ; $6faf: $2c
    jr nz, jr_01c_7020                            ; $6fb0: $20 $6e

    ld h, l                                       ; $6fb2: $65
    halt                                          ; $6fb3: $76
    ld h, l                                       ; $6fb4: $65
    ld [hl], d                                    ; $6fb5: $72
    jr nz, @+$6b                                  ; $6fb6: $20 $69

    ld l, [hl]                                    ; $6fb8: $6e
    ld bc, $202d                                  ; $6fb9: $01 $2d $20
    ld h, e                                       ; $6fbc: $63
    ld l, h                                       ; $6fbd: $6c

jr_01c_6fbe:
    ld l, c                                       ; $6fbe: $69
    ld l, l                                       ; $6fbf: $6d
    ld h, d                                       ; $6fc0: $62

jr_01c_6fc1:
    jr nz, @+$76                                  ; $6fc1: $20 $74

    ld l, b                                       ; $6fc3: $68
    ld h, l                                       ; $6fc4: $65
    jr nz, jr_01c_702f                            ; $6fc5: $20 $68

    ld l, c                                       ; $6fc7: $69

jr_01c_6fc8:
    ld l, h                                       ; $6fc8: $6c
    ld l, h                                       ; $6fc9: $6c
    ld bc, $6f74                                  ; $6fca: $01 $74 $6f
    jr nz, jr_01c_7041                            ; $6fcd: $20 $72

    ld h, l                                       ; $6fcf: $65
    ld h, c                                       ; $6fd0: $61
    ld h, e                                       ; $6fd1: $63
    ld l, b                                       ; $6fd2: $68
    jr nz, jr_01c_7049                            ; $6fd3: $20 $74

    ld l, b                                       ; $6fd5: $68
    ld h, l                                       ; $6fd6: $65

jr_01c_6fd7:
    jr nz, jr_01c_7049                            ; $6fd7: $20 $70

    ld l, c                                       ; $6fd9: $69
    ld l, [hl]                                    ; $6fda: $6e
    ld hl, $0003                                  ; $6fdb: $21 $03 $00
    ld c, b                                       ; $6fde: $48
    ld h, l                                       ; $6fdf: $65
    jr nz, jr_01c_7059                            ; $6fe0: $20 $77

jr_01c_6fe2:
    ld h, c                                       ; $6fe2: $61
    ld [hl], e                                    ; $6fe3: $73
    jr nz, jr_01c_7059                            ; $6fe4: $20 $73

    ld [hl], h                                    ; $6fe6: $74
    ld h, l                                       ; $6fe7: $65
    ld [hl], b                                    ; $6fe8: $70
    ld [hl], b                                    ; $6fe9: $70
    ld l, c                                       ; $6fea: $69
    ld l, [hl]                                    ; $6feb: $6e
    ld h, a                                       ; $6fec: $67
    ld bc, $766f                                  ; $6fed: $01 $6f $76
    ld h, l                                       ; $6ff0: $65

jr_01c_6ff1:
    ld [hl], d                                    ; $6ff1: $72
    jr nz, jr_01c_7061                            ; $6ff2: $20 $6d

    ld a, c                                       ; $6ff4: $79
    jr nz, jr_01c_7067                            ; $6ff5: $20 $70

    ld [hl], l                                    ; $6ff7: $75
    ld [hl], h                                    ; $6ff8: $74
    ld [hl], h                                    ; $6ff9: $74
    ld l, c                                       ; $6ffa: $69
    ld l, [hl]                                    ; $6ffb: $6e
    ld h, a                                       ; $6ffc: $67
    ld bc, $696c                                  ; $6ffd: $01 $6c $69
    ld l, [hl]                                    ; $7000: $6e
    ld h, l                                       ; $7001: $65
    ld hl, $4902                                  ; $7002: $21 $02 $49
    ld [hl], h                                    ; $7005: $74
    daa                                           ; $7006: $27
    ld [hl], e                                    ; $7007: $73
    jr nz, jr_01c_706c                            ; $7008: $20 $62

jr_01c_700a:
    ld h, l                                       ; $700a: $65
    ld [hl], h                                    ; $700b: $74
    ld [hl], h                                    ; $700c: $74
    ld h, l                                       ; $700d: $65
    ld [hl], d                                    ; $700e: $72
    jr nz, jr_01c_7085                            ; $700f: $20 $74

    ld l, b                                       ; $7011: $68
    ld h, c                                       ; $7012: $61

jr_01c_7013:
    ld l, [hl]                                    ; $7013: $6e
    ld bc, $7473                                  ; $7014: $01 $73 $74
    ld h, l                                       ; $7017: $65
    ld [hl], b                                    ; $7018: $70
    ld [hl], b                                    ; $7019: $70
    ld l, c                                       ; $701a: $69
    ld l, [hl]                                    ; $701b: $6e
    ld h, a                                       ; $701c: $67
    jr nz, @+$71                                  ; $701d: $20 $6f

    ld l, [hl]                                    ; $701f: $6e

jr_01c_7020:
    jr nz, jr_01c_708b                            ; $7020: $20 $69

    ld [hl], h                                    ; $7022: $74

jr_01c_7023:
    inc l                                         ; $7023: $2c
    ld bc, $7562                                  ; $7024: $01 $62 $75
    ld [hl], h                                    ; $7027: $74
    jr nz, @+$79                                  ; $7028: $20 $77

    ld l, b                                       ; $702a: $68
    ld h, c                                       ; $702b: $61
    ld [hl], h                                    ; $702c: $74
    jr nz, jr_01c_709c                            ; $702d: $20 $6d

jr_01c_702f:
    ld h, c                                       ; $702f: $61
    ld l, [hl]                                    ; $7030: $6e
    ld l, [hl]                                    ; $7031: $6e
    ld h, l                                       ; $7032: $65
    ld [hl], d                                    ; $7033: $72
    ld [hl], e                                    ; $7034: $73
    ld hl, $0003                                  ; $7035: $21 $03 $00
    ld c, b                                       ; $7038: $48
    ld [hl], l                                    ; $7039: $75
    ld l, b                                       ; $703a: $68
    ccf                                           ; $703b: $3f
    jr nz, @+$4b                                  ; $703c: $20 $49

    ld h, [hl]                                    ; $703e: $66
    jr nz, jr_01c_70ba                            ; $703f: $20 $79

jr_01c_7041:
    ld l, a                                       ; $7041: $6f
    ld [hl], l                                    ; $7042: $75
    jr nz, jr_01c_70bc                            ; $7043: $20 $77

    ld h, c                                       ; $7045: $61
    ld l, [hl]                                    ; $7046: $6e
    ld [hl], h                                    ; $7047: $74
    inc l                                         ; $7048: $2c

jr_01c_7049:
    ld bc, $2749                                  ; $7049: $01 $49 $27
    ld l, h                                       ; $704c: $6c
    ld l, h                                       ; $704d: $6c
    jr nz, @+$6f                                  ; $704e: $20 $6d

    ld l, a                                       ; $7050: $6f
    halt                                          ; $7051: $76
    ld h, l                                       ; $7052: $65
    jr nz, jr_01c_70c2                            ; $7053: $20 $6d

    ld a, c                                       ; $7055: $79
    jr nz, @+$6f                                  ; $7056: $20 $6d

    ld h, c                                       ; $7058: $61

jr_01c_7059:
    ld [hl], d                                    ; $7059: $72
    ld l, e                                       ; $705a: $6b
    ld h, l                                       ; $705b: $65
    ld [hl], d                                    ; $705c: $72
    ld l, $03                                     ; $705d: $2e $03
    nop                                           ; $705f: $00
    ld d, a                                       ; $7060: $57

jr_01c_7061:
    ld l, b                                       ; $7061: $68
    ld l, a                                       ; $7062: $6f
    daa                                           ; $7063: $27
    ld [hl], e                                    ; $7064: $73
    jr nz, jr_01c_70cb                            ; $7065: $20 $64

jr_01c_7067:
    ld [hl], d                                    ; $7067: $72
    ld h, c                                       ; $7068: $61
    ld h, a                                       ; $7069: $67
    ld h, a                                       ; $706a: $67
    ld l, c                                       ; $706b: $69

jr_01c_706c:
    ld l, [hl]                                    ; $706c: $6e
    ld h, a                                       ; $706d: $67
    jr nz, @+$76                                  ; $706e: $20 $74

    ld l, b                                       ; $7070: $68
    ld h, l                                       ; $7071: $65
    ld l, c                                       ; $7072: $69
    ld [hl], d                                    ; $7073: $72
    ld bc, $6566                                  ; $7074: $01 $66 $65
    ld h, l                                       ; $7077: $65
    ld [hl], h                                    ; $7078: $74
    jr nz, jr_01c_70dc                            ; $7079: $20 $61

    ld [hl], e                                    ; $707b: $73
    jr nz, jr_01c_70f2                            ; $707c: $20 $74

    ld l, b                                       ; $707e: $68
    ld h, l                                       ; $707f: $65
    ld a, c                                       ; $7080: $79
    jr nz, @+$79                                  ; $7081: $20 $77

    ld h, c                                       ; $7083: $61
    ld l, h                                       ; $7084: $6c

jr_01c_7085:
    ld l, e                                       ; $7085: $6b
    ld bc, $6e6f                                  ; $7086: $01 $6f $6e
    jr nz, jr_01c_70ff                            ; $7089: $20 $74

jr_01c_708b:
    ld l, b                                       ; $708b: $68
    ld h, l                                       ; $708c: $65
    jr nz, @+$69                                  ; $708d: $20 $67

    ld [hl], d                                    ; $708f: $72
    ld h, l                                       ; $7090: $65
    ld h, l                                       ; $7091: $65
    ld l, [hl]                                    ; $7092: $6e
    ccf                                           ; $7093: $3f
    ld [bc], a                                    ; $7094: $02
    ld e, c                                       ; $7095: $59
    ld l, a                                       ; $7096: $6f
    ld [hl], l                                    ; $7097: $75
    jr nz, @+$6a                                  ; $7098: $20 $68

    ld h, c                                       ; $709a: $61
    halt                                          ; $709b: $76

jr_01c_709c:
    ld h, l                                       ; $709c: $65
    jr nz, jr_01c_7113                            ; $709d: $20 $74

    ld l, a                                       ; $709f: $6f
    jr nz, jr_01c_7108                            ; $70a0: $20 $66

    ld l, c                                       ; $70a2: $69
    ld a, b                                       ; $70a3: $78
    ld bc, $6e61                                  ; $70a4: $01 $61 $6e
    ld a, c                                       ; $70a7: $79
    jr nz, jr_01c_710e                            ; $70a8: $20 $64

    ld h, c                                       ; $70aa: $61
    ld l, l                                       ; $70ab: $6d
    ld h, c                                       ; $70ac: $61
    ld h, a                                       ; $70ad: $67
    ld h, l                                       ; $70ae: $65
    jr nz, @+$66                                  ; $70af: $20 $64

    ld l, a                                       ; $70b1: $6f
    ld l, [hl]                                    ; $70b2: $6e
    ld h, l                                       ; $70b3: $65
    ld bc, $7962                                  ; $70b4: $01 $62 $79
    jr nz, jr_01c_7132                            ; $70b7: $20 $79

    ld l, a                                       ; $70b9: $6f

jr_01c_70ba:
    ld [hl], l                                    ; $70ba: $75
    ld [hl], d                                    ; $70bb: $72

jr_01c_70bc:
    jr nz, jr_01c_7131                            ; $70bc: $20 $73

    ld [hl], b                                    ; $70be: $70
    ld l, c                                       ; $70bf: $69
    ld l, e                                       ; $70c0: $6b
    ld h, l                                       ; $70c1: $65

jr_01c_70c2:
    ld [hl], e                                    ; $70c2: $73
    ld hl, $0003                                  ; $70c3: $21 $03 $00
    ld c, c                                       ; $70c6: $49
    jr nz, jr_01c_712d                            ; $70c7: $20 $64

    ld l, a                                       ; $70c9: $6f
    ld l, [hl]                                    ; $70ca: $6e

jr_01c_70cb:
    daa                                           ; $70cb: $27
    ld [hl], h                                    ; $70cc: $74
    jr nz, jr_01c_7136                            ; $70cd: $20 $67

    ld h, l                                       ; $70cf: $65
    ld [hl], h                                    ; $70d0: $74
    jr nz, @+$76                                  ; $70d1: $20 $74

    ld l, a                                       ; $70d3: $6f
    jr nz, jr_01c_7146                            ; $70d4: $20 $70

    ld [hl], l                                    ; $70d6: $75
    ld [hl], h                                    ; $70d7: $74
    ld [hl], h                                    ; $70d8: $74
    ld bc, $6966                                  ; $70d9: $01 $66 $69

jr_01c_70dc:
    ld [hl], d                                    ; $70dc: $72
    ld [hl], e                                    ; $70dd: $73
    ld [hl], h                                    ; $70de: $74
    inc l                                         ; $70df: $2c
    jr nz, @+$75                                  ; $70e0: $20 $73

    ld l, a                                       ; $70e2: $6f
    ld l, $2e                                     ; $70e3: $2e $2e
    ld l, $02                                     ; $70e5: $2e $02
    ld d, a                                       ; $70e7: $57
    ld h, c                                       ; $70e8: $61
    ld l, c                                       ; $70e9: $69
    ld [hl], h                                    ; $70ea: $74
    jr nz, jr_01c_714e                            ; $70eb: $20 $61

    jr nz, jr_01c_7162                            ; $70ed: $20 $73

    ld h, l                                       ; $70ef: $65
    ld h, e                                       ; $70f0: $63
    ld l, a                                       ; $70f1: $6f

jr_01c_70f2:
    ld l, [hl]                                    ; $70f2: $6e
    ld h, h                                       ; $70f3: $64
    inc l                                         ; $70f4: $2c
    ld bc, $656c                                  ; $70f5: $01 $6c $65
    ld [hl], h                                    ; $70f8: $74
    jr nz, jr_01c_7168                            ; $70f9: $20 $6d

    ld h, l                                       ; $70fb: $65
    jr nz, @+$6f                                  ; $70fc: $20 $6d

    ld h, c                                       ; $70fe: $61

jr_01c_70ff:
    ld [hl], d                                    ; $70ff: $72
    ld l, e                                       ; $7100: $6b
    ld bc, $796d                                  ; $7101: $01 $6d $79
    jr nz, jr_01c_7168                            ; $7104: $20 $62

    ld h, c                                       ; $7106: $61
    ld l, h                                       ; $7107: $6c

jr_01c_7108:
    ld l, h                                       ; $7108: $6c
    ld l, $03                                     ; $7109: $2e $03
    nop                                           ; $710b: $00
    ld e, c                                       ; $710c: $59
    ld l, a                                       ; $710d: $6f

jr_01c_710e:
    ld [hl], l                                    ; $710e: $75
    jr nz, jr_01c_7181                            ; $710f: $20 $70

    ld l, h                                       ; $7111: $6c
    ld h, c                                       ; $7112: $61

jr_01c_7113:
    ld a, c                                       ; $7113: $79
    jr nz, jr_01c_717d                            ; $7114: $20 $67

    ld l, a                                       ; $7116: $6f
    ld l, h                                       ; $7117: $6c
    ld h, [hl]                                    ; $7118: $66
    jr nz, jr_01c_7184                            ; $7119: $20 $69

    ld l, [hl]                                    ; $711b: $6e
    ld bc, $7267                                  ; $711c: $01 $67 $72
    ld l, a                                       ; $711f: $6f
    ld [hl], l                                    ; $7120: $75
    ld [hl], b                                    ; $7121: $70
    ld [hl], e                                    ; $7122: $73
    inc l                                         ; $7123: $2c
    jr nz, jr_01c_7199                            ; $7124: $20 $73

    ld l, a                                       ; $7126: $6f
    jr nz, jr_01c_718d                            ; $7127: $20 $64

    ld l, a                                       ; $7129: $6f
    ld l, [hl]                                    ; $712a: $6e
    daa                                           ; $712b: $27
    ld [hl], h                                    ; $712c: $74

jr_01c_712d:
    ld bc, $6d69                                  ; $712d: $01 $69 $6d
    ld [hl], b                                    ; $7130: $70

jr_01c_7131:
    ld l, a                                       ; $7131: $6f

jr_01c_7132:
    ld [hl], e                                    ; $7132: $73
    ld h, l                                       ; $7133: $65
    jr nz, jr_01c_71a5                            ; $7134: $20 $6f

jr_01c_7136:
    ld l, [hl]                                    ; $7136: $6e
    jr nz, jr_01c_71a8                            ; $7137: $20 $6f

    ld [hl], h                                    ; $7139: $74
    ld l, b                                       ; $713a: $68
    ld h, l                                       ; $713b: $65
    ld [hl], d                                    ; $713c: $72
    ld [hl], e                                    ; $713d: $73
    ld hl, $4902                                  ; $713e: $21 $02 $49
    ld h, [hl]                                    ; $7141: $66
    jr nz, jr_01c_71bd                            ; $7142: $20 $79

    ld l, a                                       ; $7144: $6f
    ld [hl], l                                    ; $7145: $75

jr_01c_7146:
    jr nz, jr_01c_71b2                            ; $7146: $20 $6a

    ld [hl], l                                    ; $7148: $75
    ld [hl], e                                    ; $7149: $73
    ld [hl], h                                    ; $714a: $74
    jr nz, jr_01c_71bf                            ; $714b: $20 $72

    ld h, l                                       ; $714d: $65

jr_01c_714e:
    ld h, c                                       ; $714e: $61
    ld h, h                                       ; $714f: $64
    ld bc, $6874                                  ; $7150: $01 $74 $68
    ld h, l                                       ; $7153: $65
    jr nz, @+$6e                                  ; $7154: $20 $6c

    ld l, c                                       ; $7156: $69
    ld l, [hl]                                    ; $7157: $6e
    ld h, l                                       ; $7158: $65
    ld [hl], e                                    ; $7159: $73
    inc l                                         ; $715a: $2c
    jr nz, @+$7b                                  ; $715b: $20 $79

    ld l, a                                       ; $715d: $6f
    ld [hl], l                                    ; $715e: $75
    ld bc, $6f77                                  ; $715f: $01 $77 $6f

jr_01c_7162:
    ld l, [hl]                                    ; $7162: $6e
    daa                                           ; $7163: $27
    ld [hl], h                                    ; $7164: $74
    jr nz, @+$76                                  ; $7165: $20 $74

    ld h, c                                       ; $7167: $61

jr_01c_7168:
    ld l, e                                       ; $7168: $6b
    ld h, l                                       ; $7169: $65
    jr nz, jr_01c_71df                            ; $716a: $20 $73

    ld l, a                                       ; $716c: $6f
    jr nz, @+$6e                                  ; $716d: $20 $6c

    ld l, a                                       ; $716f: $6f
    ld l, [hl]                                    ; $7170: $6e
    ld h, a                                       ; $7171: $67
    ld l, $03                                     ; $7172: $2e $03
    nop                                           ; $7174: $00
    ld c, b                                       ; $7175: $48
    ld h, c                                       ; $7176: $61
    halt                                          ; $7177: $76
    ld h, l                                       ; $7178: $65
    jr nz, jr_01c_71f4                            ; $7179: $20 $79

    ld l, a                                       ; $717b: $6f
    ld [hl], l                                    ; $717c: $75

jr_01c_717d:
    ld [hl], d                                    ; $717d: $72
    jr nz, jr_01c_71e8                            ; $717e: $20 $68

    ld h, c                                       ; $7180: $61

jr_01c_7181:
    ld l, [hl]                                    ; $7181: $6e
    ld h, h                                       ; $7182: $64
    ld [hl], e                                    ; $7183: $73

jr_01c_7184:
    jr nz, jr_01c_71eb                            ; $7184: $20 $65

    halt                                          ; $7186: $76
    ld h, l                                       ; $7187: $65
    ld [hl], d                                    ; $7188: $72
    ld bc, $7571                                  ; $7189: $01 $71 $75
    ld l, c                                       ; $718c: $69

jr_01c_718d:
    ld [hl], h                                    ; $718d: $74
    jr nz, jr_01c_7207                            ; $718e: $20 $77

    ld l, a                                       ; $7190: $6f
    ld [hl], d                                    ; $7191: $72
    ld l, e                                       ; $7192: $6b
    ld l, c                                       ; $7193: $69
    ld l, [hl]                                    ; $7194: $6e
    ld h, a                                       ; $7195: $67
    jr nz, @+$79                                  ; $7196: $20 $77

    ld l, b                                       ; $7198: $68

jr_01c_7199:
    ld h, l                                       ; $7199: $65
    ld l, [hl]                                    ; $719a: $6e
    ld bc, $6461                                  ; $719b: $01 $61 $64
    ld h, h                                       ; $719e: $64
    ld [hl], d                                    ; $719f: $72
    ld h, l                                       ; $71a0: $65
    ld [hl], e                                    ; $71a1: $73
    ld [hl], e                                    ; $71a2: $73
    ld l, c                                       ; $71a3: $69
    ld l, [hl]                                    ; $71a4: $6e

jr_01c_71a5:
    ld h, a                                       ; $71a5: $67
    jr nz, @+$63                                  ; $71a6: $20 $61

jr_01c_71a8:
    jr nz, jr_01c_721a                            ; $71a8: $20 $70

    ld [hl], l                                    ; $71aa: $75
    ld [hl], h                                    ; $71ab: $74
    ld [hl], h                                    ; $71ac: $74
    ccf                                           ; $71ad: $3f
    inc bc                                        ; $71ae: $03
    nop                                           ; $71af: $00
    ld d, a                                       ; $71b0: $57
    ld l, b                                       ; $71b1: $68

jr_01c_71b2:
    ld a, c                                       ; $71b2: $79
    jr nz, @+$63                                  ; $71b3: $20 $61

    ld [hl], d                                    ; $71b5: $72
    ld h, l                                       ; $71b6: $65
    jr nz, jr_01c_7226                            ; $71b7: $20 $6d

    ld a, c                                       ; $71b9: $79
    jr nz, jr_01c_7224                            ; $71ba: $20 $68

    ld h, c                                       ; $71bc: $61

jr_01c_71bd:
    ld l, [hl]                                    ; $71bd: $6e
    ld h, h                                       ; $71be: $64

jr_01c_71bf:
    ld [hl], e                                    ; $71bf: $73
    ld bc, $6873                                  ; $71c0: $01 $73 $68
    ld h, c                                       ; $71c3: $61
    ld l, e                                       ; $71c4: $6b
    ld l, c                                       ; $71c5: $69
    ld l, [hl]                                    ; $71c6: $6e
    ld h, a                                       ; $71c7: $67
    ccf                                           ; $71c8: $3f
    ld [bc], a                                    ; $71c9: $02
    ld d, e                                       ; $71ca: $53
    ld l, b                                       ; $71cb: $68
    ld h, c                                       ; $71cc: $61
    ld l, e                                       ; $71cd: $6b
    ld a, c                                       ; $71ce: $79
    jr nz, jr_01c_7239                            ; $71cf: $20 $68

    ld h, c                                       ; $71d1: $61
    ld l, [hl]                                    ; $71d2: $6e
    ld h, h                                       ; $71d3: $64
    ld [hl], e                                    ; $71d4: $73
    jr nz, jr_01c_724e                            ; $71d5: $20 $77

    ld l, b                                       ; $71d7: $68
    ld h, l                                       ; $71d8: $65
    ld l, [hl]                                    ; $71d9: $6e
    ld bc, $7570                                  ; $71da: $01 $70 $75
    ld [hl], h                                    ; $71dd: $74
    ld [hl], h                                    ; $71de: $74

jr_01c_71df:
    ld l, c                                       ; $71df: $69
    ld l, [hl]                                    ; $71e0: $6e
    ld h, a                                       ; $71e1: $67
    jr nz, jr_01c_724d                            ; $71e2: $20 $69

    ld [hl], e                                    ; $71e4: $73
    jr nz, jr_01c_724a                            ; $71e5: $20 $63

    ld h, c                                       ; $71e7: $61

jr_01c_71e8:
    ld l, h                                       ; $71e8: $6c
    ld l, h                                       ; $71e9: $6c
    ld h, l                                       ; $71ea: $65

jr_01c_71eb:
    ld h, h                                       ; $71eb: $64
    ld bc, $6979                                  ; $71ec: $01 $79 $69
    ld [hl], b                                    ; $71ef: $70
    ld [hl], e                                    ; $71f0: $73
    inc l                                         ; $71f1: $2c
    jr nz, jr_01c_7256                            ; $71f2: $20 $62

jr_01c_71f4:
    ld [hl], l                                    ; $71f4: $75
    ld [hl], h                                    ; $71f5: $74
    jr nz, jr_01c_7265                            ; $71f6: $20 $6d

    ld h, l                                       ; $71f8: $65
    ccf                                           ; $71f9: $3f
    ld hl, $033f                                  ; $71fa: $21 $3f $03
    nop                                           ; $71fd: $00
    ld c, c                                       ; $71fe: $49
    jr nz, jr_01c_7269                            ; $71ff: $20 $68

    ld h, c                                       ; $7201: $61
    halt                                          ; $7202: $76
    ld h, l                                       ; $7203: $65
    jr nz, @+$76                                  ; $7204: $20 $74

    ld l, b                                       ; $7206: $68

jr_01c_7207:
    ld h, l                                       ; $7207: $65
    jr nz, jr_01c_7272                            ; $7208: $20 $68

    ld h, c                                       ; $720a: $61
    ld h, d                                       ; $720b: $62
    ld l, c                                       ; $720c: $69
    ld [hl], h                                    ; $720d: $74
    ld bc, $666f                                  ; $720e: $01 $6f $66
    jr nz, @+$70                                  ; $7211: $20 $6e

    ld l, a                                       ; $7213: $6f
    ld [hl], h                                    ; $7214: $74
    jr nz, jr_01c_7287                            ; $7215: $20 $70

    ld h, c                                       ; $7217: $61
    ld a, c                                       ; $7218: $79
    ld l, c                                       ; $7219: $69

jr_01c_721a:
    ld l, [hl]                                    ; $721a: $6e
    ld h, a                                       ; $721b: $67
    ld bc, $7461                                  ; $721c: $01 $61 $74
    ld [hl], h                                    ; $721f: $74
    ld h, l                                       ; $7220: $65
    ld l, [hl]                                    ; $7221: $6e
    ld [hl], h                                    ; $7222: $74
    ld l, c                                       ; $7223: $69

jr_01c_7224:
    ld l, a                                       ; $7224: $6f
    ld l, [hl]                                    ; $7225: $6e

jr_01c_7226:
    jr nz, jr_01c_729c                            ; $7226: $20 $74

    ld l, a                                       ; $7228: $6f
    jr nz, jr_01c_7298                            ; $7229: $20 $6d

    ld a, c                                       ; $722b: $79
    ld [bc], a                                    ; $722c: $02
    ld [hl], b                                    ; $722d: $70
    ld [hl], l                                    ; $722e: $75
    ld [hl], h                                    ; $722f: $74
    ld [hl], h                                    ; $7230: $74
    ld l, $20                                     ; $7231: $2e $20
    ld c, c                                       ; $7233: $49
    daa                                           ; $7234: $27
    halt                                          ; $7235: $76
    ld h, l                                       ; $7236: $65
    jr nz, jr_01c_729a                            ; $7237: $20 $61

jr_01c_7239:
    ld l, h                                       ; $7239: $6c
    ld [hl], d                                    ; $723a: $72
    ld h, l                                       ; $723b: $65
    ld h, c                                       ; $723c: $61
    ld h, h                                       ; $723d: $64
    ld a, c                                       ; $723e: $79
    ld bc, $6f6c                                  ; $723f: $01 $6c $6f
    ld [hl], e                                    ; $7242: $73
    ld [hl], h                                    ; $7243: $74
    jr nz, jr_01c_7279                            ; $7244: $20 $33

    jr nz, jr_01c_72bb                            ; $7246: $20 $73

    ld [hl], h                                    ; $7248: $74
    ld [hl], d                                    ; $7249: $72

jr_01c_724a:
    ld l, a                                       ; $724a: $6f
    ld l, e                                       ; $724b: $6b
    ld h, l                                       ; $724c: $65

jr_01c_724d:
    ld [hl], e                                    ; $724d: $73

jr_01c_724e:
    ld bc, $6562                                  ; $724e: $01 $62 $65
    ld h, e                                       ; $7251: $63
    ld h, c                                       ; $7252: $61
    ld [hl], l                                    ; $7253: $75
    ld [hl], e                                    ; $7254: $73
    ld h, l                                       ; $7255: $65

jr_01c_7256:
    jr nz, jr_01c_72c7                            ; $7256: $20 $6f

    ld h, [hl]                                    ; $7258: $66
    jr nz, jr_01c_72c4                            ; $7259: $20 $69

    ld [hl], h                                    ; $725b: $74
    ld hl, $0003                                  ; $725c: $21 $03 $00
    ld d, h                                       ; $725f: $54
    ld l, b                                       ; $7260: $68
    ld h, l                                       ; $7261: $65
    jr nz, jr_01c_72d7                            ; $7262: $20 $73

    ld h, c                                       ; $7264: $61

jr_01c_7265:
    ld a, c                                       ; $7265: $79
    jr nz, jr_01c_72d0                            ; $7266: $20 $68

    ld h, c                                       ; $7268: $61

jr_01c_7269:
    ld l, h                                       ; $7269: $6c
    ld h, [hl]                                    ; $726a: $66
    jr nz, jr_01c_72dc                            ; $726b: $20 $6f

    ld h, [hl]                                    ; $726d: $66
    ld bc, $6f79                                  ; $726e: $01 $79 $6f
    ld [hl], l                                    ; $7271: $75

jr_01c_7272:
    ld [hl], d                                    ; $7272: $72
    jr nz, jr_01c_72e8                            ; $7273: $20 $73

    ld h, e                                       ; $7275: $63
    ld l, a                                       ; $7276: $6f
    ld [hl], d                                    ; $7277: $72
    ld h, l                                       ; $7278: $65

jr_01c_7279:
    jr nz, jr_01c_72de                            ; $7279: $20 $63

    ld l, a                                       ; $727b: $6f
    ld l, l                                       ; $727c: $6d
    ld h, l                                       ; $727d: $65
    ld [hl], e                                    ; $727e: $73
    ld bc, $7266                                  ; $727f: $01 $66 $72
    ld l, a                                       ; $7282: $6f
    ld l, l                                       ; $7283: $6d
    jr nz, jr_01c_72f6                            ; $7284: $20 $70

    ld [hl], l                                    ; $7286: $75

jr_01c_7287:
    ld [hl], h                                    ; $7287: $74
    ld [hl], h                                    ; $7288: $74
    ld l, c                                       ; $7289: $69
    ld l, [hl]                                    ; $728a: $6e
    ld h, a                                       ; $728b: $67
    ld l, $02                                     ; $728c: $2e $02
    ld e, c                                       ; $728e: $59
    ld l, a                                       ; $728f: $6f
    ld [hl], l                                    ; $7290: $75
    jr nz, @+$75                                  ; $7291: $20 $73

    ld l, b                                       ; $7293: $68
    ld l, a                                       ; $7294: $6f
    ld [hl], l                                    ; $7295: $75
    ld l, h                                       ; $7296: $6c
    ld h, h                                       ; $7297: $64

jr_01c_7298:
    jr nz, jr_01c_730d                            ; $7298: $20 $73

jr_01c_729a:
    ld [hl], b                                    ; $729a: $70
    ld h, l                                       ; $729b: $65

jr_01c_729c:
    ld l, [hl]                                    ; $729c: $6e
    ld h, h                                       ; $729d: $64
    ld bc, $7361                                  ; $729e: $01 $61 $73
    jr nz, @+$6f                                  ; $72a1: $20 $6d

    ld [hl], l                                    ; $72a3: $75
    ld h, e                                       ; $72a4: $63
    ld l, b                                       ; $72a5: $68
    jr nz, jr_01c_731c                            ; $72a6: $20 $74

    ld l, c                                       ; $72a8: $69
    ld l, l                                       ; $72a9: $6d
    ld h, l                                       ; $72aa: $65
    jr nz, jr_01c_731c                            ; $72ab: $20 $6f

    ld l, [hl]                                    ; $72ad: $6e
    ld bc, $7570                                  ; $72ae: $01 $70 $75
    ld [hl], h                                    ; $72b1: $74
    ld [hl], h                                    ; $72b2: $74
    ld [hl], e                                    ; $72b3: $73
    jr nz, jr_01c_7317                            ; $72b4: $20 $61

    ld [hl], e                                    ; $72b6: $73
    jr nz, @+$76                                  ; $72b7: $20 $74

    ld l, b                                       ; $72b9: $68
    ld h, l                                       ; $72ba: $65

jr_01c_72bb:
    jr nz, @+$72                                  ; $72bb: $20 $70

    ld [hl], d                                    ; $72bd: $72
    ld l, a                                       ; $72be: $6f
    ld [hl], e                                    ; $72bf: $73
    ld hl, $0003                                  ; $72c0: $21 $03 $00
    ld c, [hl]                                    ; $72c3: $4e

jr_01c_72c4:
    ld h, l                                       ; $72c4: $65
    halt                                          ; $72c5: $76
    ld h, l                                       ; $72c6: $65

jr_01c_72c7:
    ld [hl], d                                    ; $72c7: $72
    jr nz, jr_01c_733f                            ; $72c8: $20 $75

    ld [hl], b                                    ; $72ca: $70
    inc l                                         ; $72cb: $2c
    jr nz, @+$70                                  ; $72cc: $20 $6e

    ld h, l                                       ; $72ce: $65
    halt                                          ; $72cf: $76

jr_01c_72d0:
    ld h, l                                       ; $72d0: $65
    ld [hl], d                                    ; $72d1: $72
    ld bc, $6e69                                  ; $72d2: $01 $69 $6e
    ld l, $20                                     ; $72d5: $2e $20

jr_01c_72d7:
    ld c, [hl]                                    ; $72d7: $4e
    ld l, a                                       ; $72d8: $6f
    jr nz, jr_01c_7348                            ; $72d9: $20 $6d

    ld h, c                                       ; $72db: $61

jr_01c_72dc:
    ld [hl], h                                    ; $72dc: $74
    ld [hl], h                                    ; $72dd: $74

jr_01c_72de:
    ld h, l                                       ; $72de: $65
    ld [hl], d                                    ; $72df: $72
    jr nz, jr_01c_734a                            ; $72e0: $20 $68

    ld l, a                                       ; $72e2: $6f
    ld [hl], a                                    ; $72e3: $77
    ld bc, $6f67                                  ; $72e4: $01 $67 $6f
    ld l, a                                       ; $72e7: $6f

jr_01c_72e8:
    ld h, h                                       ; $72e8: $64
    jr nz, jr_01c_7358                            ; $72e9: $20 $6d

    ld a, c                                       ; $72eb: $79
    jr nz, jr_01c_735e                            ; $72ec: $20 $70

    ld [hl], l                                    ; $72ee: $75
    ld [hl], h                                    ; $72ef: $74
    ld [hl], h                                    ; $72f0: $74
    jr nz, @+$6b                                  ; $72f1: $20 $69

    ld [hl], e                                    ; $72f3: $73
    inc l                                         ; $72f4: $2c
    ld [bc], a                                    ; $72f5: $02

jr_01c_72f6:
    ld c, c                                       ; $72f6: $49
    jr nz, @+$65                                  ; $72f7: $20 $63

    ld h, c                                       ; $72f9: $61
    ld l, [hl]                                    ; $72fa: $6e
    daa                                           ; $72fb: $27
    ld [hl], h                                    ; $72fc: $74
    jr nz, jr_01c_7372                            ; $72fd: $20 $73

    ld h, l                                       ; $72ff: $65
    ld h, l                                       ; $7300: $65
    ld l, l                                       ; $7301: $6d
    jr nz, @+$76                                  ; $7302: $20 $74

    ld l, a                                       ; $7304: $6f
    ld bc, $6572                                  ; $7305: $01 $72 $65
    ld h, c                                       ; $7308: $61
    ld h, e                                       ; $7309: $63
    ld l, b                                       ; $730a: $68
    jr nz, jr_01c_7381                            ; $730b: $20 $74

jr_01c_730d:
    ld l, b                                       ; $730d: $68
    ld h, l                                       ; $730e: $65
    jr nz, jr_01c_7374                            ; $730f: $20 $63

    ld [hl], l                                    ; $7311: $75
    ld [hl], b                                    ; $7312: $70
    ld hl, $0003                                  ; $7313: $21 $03 $00
    ld d, h                                       ; $7316: $54

jr_01c_7317:
    ld l, b                                       ; $7317: $68
    ld h, l                                       ; $7318: $65
    jr nz, jr_01c_7383                            ; $7319: $20 $68

    ld h, c                                       ; $731b: $61

jr_01c_731c:
    ld [hl], d                                    ; $731c: $72
    ld h, h                                       ; $731d: $64
    ld h, l                                       ; $731e: $65
    ld [hl], d                                    ; $731f: $72
    jr nz, jr_01c_7396                            ; $7320: $20 $74

    ld l, b                                       ; $7322: $68
    ld h, l                                       ; $7323: $65
    ld bc, $6f63                                  ; $7324: $01 $63 $6f
    ld [hl], l                                    ; $7327: $75
    ld [hl], d                                    ; $7328: $72
    ld [hl], e                                    ; $7329: $73
    ld h, l                                       ; $732a: $65
    inc l                                         ; $732b: $2c
    jr nz, @+$76                                  ; $732c: $20 $74

    ld l, b                                       ; $732e: $68
    ld h, l                                       ; $732f: $65
    jr nz, jr_01c_739a                            ; $7330: $20 $68

    ld h, c                                       ; $7332: $61
    ld [hl], d                                    ; $7333: $72
    ld h, h                                       ; $7334: $64
    ld h, l                                       ; $7335: $65
    ld [hl], d                                    ; $7336: $72
    ld bc, $6874                                  ; $7337: $01 $74 $68
    ld h, l                                       ; $733a: $65
    jr nz, @+$69                                  ; $733b: $20 $67

    ld [hl], d                                    ; $733d: $72
    ld h, l                                       ; $733e: $65

jr_01c_733f:
    ld h, l                                       ; $733f: $65
    ld l, [hl]                                    ; $7340: $6e
    ld [hl], e                                    ; $7341: $73
    ld l, $02                                     ; $7342: $2e $02
    ld c, c                                       ; $7344: $49
    jr nz, jr_01c_73b1                            ; $7345: $20 $6a

    ld [hl], l                                    ; $7347: $75

jr_01c_7348:
    ld [hl], e                                    ; $7348: $73
    ld [hl], h                                    ; $7349: $74

jr_01c_734a:
    jr nz, jr_01c_73af                            ; $734a: $20 $63

    ld h, c                                       ; $734c: $61
    ld l, [hl]                                    ; $734d: $6e
    daa                                           ; $734e: $27
    ld [hl], h                                    ; $734f: $74
    ld bc, $6e75                                  ; $7350: $01 $75 $6e
    ld h, h                                       ; $7353: $64
    ld h, l                                       ; $7354: $65
    ld [hl], d                                    ; $7355: $72
    ld [hl], e                                    ; $7356: $73
    ld [hl], h                                    ; $7357: $74

jr_01c_7358:
    ld h, c                                       ; $7358: $61
    ld l, [hl]                                    ; $7359: $6e
    ld h, h                                       ; $735a: $64
    ld bc, $6f63                                  ; $735b: $01 $63 $6f

jr_01c_735e:
    ld l, l                                       ; $735e: $6d
    ld [hl], b                                    ; $735f: $70
    ld l, h                                       ; $7360: $6c
    ld l, c                                       ; $7361: $69
    ld h, e                                       ; $7362: $63
    ld h, c                                       ; $7363: $61
    ld [hl], h                                    ; $7364: $74
    ld h, l                                       ; $7365: $65
    ld h, h                                       ; $7366: $64
    jr nz, @+$6e                                  ; $7367: $20 $6c

    ld l, c                                       ; $7369: $69
    ld l, [hl]                                    ; $736a: $6e
    ld h, l                                       ; $736b: $65
    ld [hl], e                                    ; $736c: $73
    ld l, $03                                     ; $736d: $2e $03
    nop                                           ; $736f: $00
    ld d, b                                       ; $7370: $50
    ld [hl], l                                    ; $7371: $75

jr_01c_7372:
    ld [hl], h                                    ; $7372: $74
    ld [hl], h                                    ; $7373: $74

jr_01c_7374:
    ld l, c                                       ; $7374: $69
    ld l, [hl]                                    ; $7375: $6e
    ld h, a                                       ; $7376: $67
    jr nz, jr_01c_73ee                            ; $7377: $20 $75

    ld [hl], b                                    ; $7379: $70
    jr nz, jr_01c_73dd                            ; $737a: $20 $61

    ld l, [hl]                                    ; $737c: $6e
    ld h, h                                       ; $737d: $64
    ld bc, $6361                                  ; $737e: $01 $61 $63

jr_01c_7381:
    ld [hl], d                                    ; $7381: $72
    ld l, a                                       ; $7382: $6f

jr_01c_7383:
    ld [hl], e                                    ; $7383: $73
    ld [hl], e                                    ; $7384: $73
    jr nz, jr_01c_73e8                            ; $7385: $20 $61

    jr nz, jr_01c_73fc                            ; $7387: $20 $73

    ld l, h                                       ; $7389: $6c
    ld l, a                                       ; $738a: $6f
    ld [hl], b                                    ; $738b: $70
    ld h, l                                       ; $738c: $65
    ld bc, $7369                                  ; $738d: $01 $69 $73
    jr nz, jr_01c_7406                            ; $7390: $20 $74

    ld l, a                                       ; $7392: $6f
    ld [hl], l                                    ; $7393: $75
    ld h, a                                       ; $7394: $67
    ld l, b                                       ; $7395: $68

jr_01c_7396:
    ld l, $02                                     ; $7396: $2e $02
    ld c, c                                       ; $7398: $49
    ld h, [hl]                                    ; $7399: $66

jr_01c_739a:
    jr nz, @+$4b                                  ; $739a: $20 $49

    jr nz, jr_01c_7401                            ; $739c: $20 $63

    ld h, c                                       ; $739e: $61
    ld l, [hl]                                    ; $739f: $6e
    inc l                                         ; $73a0: $2c
    jr nz, @+$4b                                  ; $73a1: $20 $49

    jr nz, jr_01c_741c                            ; $73a3: $20 $77

    ld h, c                                       ; $73a5: $61
    ld l, [hl]                                    ; $73a6: $6e
    ld [hl], h                                    ; $73a7: $74
    ld bc, $796d                                  ; $73a8: $01 $6d $79
    jr nz, jr_01c_7422                            ; $73ab: $20 $75

    ld [hl], b                                    ; $73ad: $70
    ld l, b                                       ; $73ae: $68

jr_01c_73af:
    ld l, c                                       ; $73af: $69
    ld l, h                                       ; $73b0: $6c

jr_01c_73b1:
    ld l, h                                       ; $73b1: $6c
    jr nz, jr_01c_7424                            ; $73b2: $20 $70

    ld [hl], l                                    ; $73b4: $75
    ld [hl], h                                    ; $73b5: $74
    ld [hl], h                                    ; $73b6: $74
    ld [hl], e                                    ; $73b7: $73
    ld bc, $6f74                                  ; $73b8: $01 $74 $6f
    jr nz, jr_01c_741f                            ; $73bb: $20 $62

    ld h, l                                       ; $73bd: $65
    jr nz, jr_01c_7433                            ; $73be: $20 $73

    ld [hl], h                                    ; $73c0: $74
    ld [hl], d                                    ; $73c1: $72
    ld h, c                                       ; $73c2: $61
    ld l, c                                       ; $73c3: $69
    ld h, a                                       ; $73c4: $67
    ld l, b                                       ; $73c5: $68
    ld [hl], h                                    ; $73c6: $74
    ld l, $03                                     ; $73c7: $2e $03
    nop                                           ; $73c9: $00
    ld b, c                                       ; $73ca: $41
    jr nz, jr_01c_743d                            ; $73cb: $20 $70

    ld h, l                                       ; $73cd: $65
    ld [hl], d                                    ; $73ce: $72
    ld [hl], e                                    ; $73cf: $73
    ld l, a                                       ; $73d0: $6f
    ld l, [hl]                                    ; $73d1: $6e
    daa                                           ; $73d2: $27
    ld [hl], e                                    ; $73d3: $73
    jr nz, jr_01c_7446                            ; $73d4: $20 $70

    ld [hl], l                                    ; $73d6: $75
    ld [hl], h                                    ; $73d7: $74
    ld [hl], h                                    ; $73d8: $74
    ld bc, $6564                                  ; $73d9: $01 $64 $65
    ld [hl], b                                    ; $73dc: $70

jr_01c_73dd:
    ld h, l                                       ; $73dd: $65
    ld l, [hl]                                    ; $73de: $6e
    ld h, h                                       ; $73df: $64
    ld [hl], e                                    ; $73e0: $73
    jr nz, jr_01c_7452                            ; $73e1: $20 $6f

    ld l, [hl]                                    ; $73e3: $6e
    jr nz, jr_01c_745a                            ; $73e4: $20 $74

    ld l, b                                       ; $73e6: $68
    ld h, l                                       ; $73e7: $65

jr_01c_73e8:
    ld l, c                                       ; $73e8: $69
    ld [hl], d                                    ; $73e9: $72
    ld bc, $6570                                  ; $73ea: $01 $70 $65
    ld [hl], d                                    ; $73ed: $72

jr_01c_73ee:
    ld [hl], e                                    ; $73ee: $73
    ld l, a                                       ; $73ef: $6f
    ld l, [hl]                                    ; $73f0: $6e
    ld h, c                                       ; $73f1: $61
    ld l, h                                       ; $73f2: $6c
    ld l, c                                       ; $73f3: $69
    ld [hl], h                                    ; $73f4: $74
    ld a, c                                       ; $73f5: $79
    ld l, $02                                     ; $73f6: $2e $02
    ld b, c                                       ; $73f8: $41
    ld h, a                                       ; $73f9: $67
    ld h, a                                       ; $73fa: $67
    ld [hl], d                                    ; $73fb: $72

jr_01c_73fc:
    ld h, l                                       ; $73fc: $65
    ld [hl], e                                    ; $73fd: $73
    ld [hl], e                                    ; $73fe: $73
    ld l, c                                       ; $73ff: $69
    halt                                          ; $7400: $76

jr_01c_7401:
    ld h, l                                       ; $7401: $65
    jr nz, @+$72                                  ; $7402: $20 $70

    ld h, l                                       ; $7404: $65
    ld l, a                                       ; $7405: $6f

jr_01c_7406:
    ld [hl], b                                    ; $7406: $70
    ld l, h                                       ; $7407: $6c
    ld h, l                                       ; $7408: $65
    ld bc, $6f62                                  ; $7409: $01 $62 $6f
    ld [hl], l                                    ; $740c: $75
    ld l, [hl]                                    ; $740d: $6e
    ld h, e                                       ; $740e: $63
    ld h, l                                       ; $740f: $65
    jr nz, jr_01c_747b                            ; $7410: $20 $69

    ld l, [hl]                                    ; $7412: $6e
    jr nz, jr_01c_747b                            ; $7413: $20 $66

    ld [hl], d                                    ; $7415: $72
    ld l, a                                       ; $7416: $6f
    ld l, l                                       ; $7417: $6d
    ld bc, $6874                                  ; $7418: $01 $74 $68
    ld h, l                                       ; $741b: $65

jr_01c_741c:
    jr nz, jr_01c_7484                            ; $741c: $20 $66

    ld h, c                                       ; $741e: $61

jr_01c_741f:
    ld [hl], d                                    ; $741f: $72
    jr nz, @+$6e                                  ; $7420: $20 $6c

jr_01c_7422:
    ld l, c                                       ; $7422: $69
    ld [hl], b                                    ; $7423: $70

jr_01c_7424:
    ld l, $03                                     ; $7424: $2e $03
    nop                                           ; $7426: $00
    ld d, b                                       ; $7427: $50
    ld h, l                                       ; $7428: $65
    ld l, a                                       ; $7429: $6f
    ld [hl], b                                    ; $742a: $70
    ld l, h                                       ; $742b: $6c
    ld h, l                                       ; $742c: $65
    jr nz, jr_01c_74a6                            ; $742d: $20 $77

    ld l, b                                       ; $742f: $68
    ld l, a                                       ; $7430: $6f
    jr nz, @+$72                                  ; $7431: $20 $70

jr_01c_7433:
    ld [hl], l                                    ; $7433: $75
    ld [hl], h                                    ; $7434: $74
    ld [hl], h                                    ; $7435: $74
    ld bc, $6874                                  ; $7436: $01 $74 $68
    ld h, l                                       ; $7439: $65
    jr nz, jr_01c_74a1                            ; $743a: $20 $65

    ld a, b                                       ; $743c: $78

jr_01c_743d:
    ld h, c                                       ; $743d: $61
    ld h, e                                       ; $743e: $63
    ld [hl], h                                    ; $743f: $74
    jr nz, jr_01c_74a6                            ; $7440: $20 $64

    ld l, c                                       ; $7442: $69
    ld [hl], e                                    ; $7443: $73
    ld [hl], h                                    ; $7444: $74
    ld h, c                                       ; $7445: $61

jr_01c_7446:
    ld l, [hl]                                    ; $7446: $6e
    ld h, e                                       ; $7447: $63
    ld h, l                                       ; $7448: $65
    ld bc, $6f74                                  ; $7449: $01 $74 $6f
    jr nz, jr_01c_74c2                            ; $744c: $20 $74

    ld l, b                                       ; $744e: $68
    ld h, l                                       ; $744f: $65
    jr nz, jr_01c_74b5                            ; $7450: $20 $63

jr_01c_7452:
    ld [hl], l                                    ; $7452: $75
    ld [hl], b                                    ; $7453: $70
    jr nz, @+$63                                  ; $7454: $20 $61

    ld [hl], d                                    ; $7456: $72
    ld h, l                                       ; $7457: $65
    ld [bc], a                                    ; $7458: $02
    ld [hl], b                                    ; $7459: $70

jr_01c_745a:
    ld [hl], l                                    ; $745a: $75
    ld [hl], h                                    ; $745b: $74
    ld [hl], h                                    ; $745c: $74
    ld l, c                                       ; $745d: $69
    ld l, [hl]                                    ; $745e: $6e
    ld h, a                                       ; $745f: $67
    jr nz, jr_01c_74cf                            ; $7460: $20 $6d

    ld h, c                                       ; $7462: $61
    ld [hl], e                                    ; $7463: $73
    ld [hl], h                                    ; $7464: $74
    ld h, l                                       ; $7465: $65
    ld [hl], d                                    ; $7466: $72
    ld [hl], e                                    ; $7467: $73
    ld l, $01                                     ; $7468: $2e $01
    ld d, h                                       ; $746a: $54
    ld l, b                                       ; $746b: $68
    ld h, l                                       ; $746c: $65
    jr nz, jr_01c_74d5                            ; $746d: $20 $66

    ld l, c                                       ; $746f: $69
    ld l, [hl]                                    ; $7470: $6e
    ld h, c                                       ; $7471: $61
    ld l, h                                       ; $7472: $6c
    jr nz, @+$74                                  ; $7473: $20 $72

    ld l, a                                       ; $7475: $6f
    ld l, h                                       ; $7476: $6c
    ld l, h                                       ; $7477: $6c
    ld bc, $6162                                  ; $7478: $01 $62 $61

jr_01c_747b:
    ld [hl], d                                    ; $747b: $72
    ld h, l                                       ; $747c: $65
    ld l, h                                       ; $747d: $6c
    ld a, c                                       ; $747e: $79
    jr nz, jr_01c_74e4                            ; $747f: $20 $63

    ld h, c                                       ; $7481: $61
    ld [hl], d                                    ; $7482: $72
    ld [hl], d                                    ; $7483: $72

jr_01c_7484:
    ld l, c                                       ; $7484: $69
    ld h, l                                       ; $7485: $65
    ld [hl], e                                    ; $7486: $73
    jr nz, jr_01c_74f2                            ; $7487: $20 $69

    ld [hl], h                                    ; $7489: $74
    jr nz, jr_01c_74f5                            ; $748a: $20 $69

    ld l, [hl]                                    ; $748c: $6e
    ld l, $03                                     ; $748d: $2e $03
    nop                                           ; $748f: $00
    ld d, e                                       ; $7490: $53
    ld l, a                                       ; $7491: $6f
    ld l, l                                       ; $7492: $6d
    ld h, l                                       ; $7493: $65
    jr nz, jr_01c_7506                            ; $7494: $20 $70

    ld h, l                                       ; $7496: $65
    ld l, a                                       ; $7497: $6f
    ld [hl], b                                    ; $7498: $70
    ld l, h                                       ; $7499: $6c
    ld h, l                                       ; $749a: $65
    jr nz, jr_01c_7512                            ; $749b: $20 $75

    ld [hl], e                                    ; $749d: $73
    ld h, l                                       ; $749e: $65
    jr nz, @+$63                                  ; $749f: $20 $61

jr_01c_74a1:
    ld bc, $7570                                  ; $74a1: $01 $70 $75
    ld [hl], h                                    ; $74a4: $74
    ld [hl], h                                    ; $74a5: $74

jr_01c_74a6:
    ld h, l                                       ; $74a6: $65
    ld [hl], d                                    ; $74a7: $72
    jr nz, jr_01c_7510                            ; $74a8: $20 $66

    ld [hl], d                                    ; $74aa: $72
    ld l, a                                       ; $74ab: $6f
    ld l, l                                       ; $74ac: $6d
    jr nz, jr_01c_751d                            ; $74ad: $20 $6e

    ld h, l                                       ; $74af: $65
    ld h, c                                       ; $74b0: $61
    ld [hl], d                                    ; $74b1: $72
    ld bc, $6874                                  ; $74b2: $01 $74 $68

jr_01c_74b5:
    ld h, l                                       ; $74b5: $65
    jr nz, jr_01c_751f                            ; $74b6: $20 $67

    ld [hl], d                                    ; $74b8: $72
    ld h, l                                       ; $74b9: $65
    ld h, l                                       ; $74ba: $65
    ld l, [hl]                                    ; $74bb: $6e
    inc l                                         ; $74bc: $2c
    jr nz, jr_01c_7521                            ; $74bd: $20 $62

    ld [hl], l                                    ; $74bf: $75
    ld [hl], h                                    ; $74c0: $74
    ld [bc], a                                    ; $74c1: $02

jr_01c_74c2:
    ld h, h                                       ; $74c2: $64
    ld l, c                                       ; $74c3: $69
    ld [hl], e                                    ; $74c4: $73
    ld [hl], h                                    ; $74c5: $74
    ld h, c                                       ; $74c6: $61
    ld l, [hl]                                    ; $74c7: $6e
    ld h, e                                       ; $74c8: $63
    ld h, l                                       ; $74c9: $65
    jr nz, jr_01c_7535                            ; $74ca: $20 $69

    ld [hl], e                                    ; $74cc: $73
    jr nz, jr_01c_7543                            ; $74cd: $20 $74

jr_01c_74cf:
    ld l, b                                       ; $74cf: $68
    ld h, l                                       ; $74d0: $65
    jr nz, jr_01c_7543                            ; $74d1: $20 $70

    ld [hl], d                                    ; $74d3: $72
    ld l, a                                       ; $74d4: $6f

jr_01c_74d5:
    ld h, d                                       ; $74d5: $62
    ld l, h                                       ; $74d6: $6c
    ld h, l                                       ; $74d7: $65
    ld l, l                                       ; $74d8: $6d
    ld l, $03                                     ; $74d9: $2e $03
    nop                                           ; $74db: $00
    ld b, l                                       ; $74dc: $45
    ld a, b                                       ; $74dd: $78
    ld [hl], b                                    ; $74de: $70
    ld h, l                                       ; $74df: $65
    ld [hl], d                                    ; $74e0: $72
    ld l, c                                       ; $74e1: $69
    ld h, l                                       ; $74e2: $65
    ld l, [hl]                                    ; $74e3: $6e

jr_01c_74e4:
    ld h, e                                       ; $74e4: $63
    ld h, l                                       ; $74e5: $65
    jr nz, jr_01c_755c                            ; $74e6: $20 $74

    ld h, l                                       ; $74e8: $65
    ld l, h                                       ; $74e9: $6c
    ld l, h                                       ; $74ea: $6c
    ld [hl], e                                    ; $74eb: $73
    ld bc, $6c61                                  ; $74ec: $01 $61 $6c
    ld l, h                                       ; $74ef: $6c
    jr nz, jr_01c_7569                            ; $74f0: $20 $77

jr_01c_74f2:
    ld l, b                                       ; $74f2: $68
    ld h, l                                       ; $74f3: $65
    ld l, [hl]                                    ; $74f4: $6e

jr_01c_74f5:
    jr nz, jr_01c_7560                            ; $74f5: $20 $69

    ld [hl], h                                    ; $74f7: $74
    jr nz, jr_01c_755d                            ; $74f8: $20 $63

    ld l, a                                       ; $74fa: $6f
    ld l, l                                       ; $74fb: $6d
    ld h, l                                       ; $74fc: $65
    ld [hl], e                                    ; $74fd: $73
    ld bc, $6f74                                  ; $74fe: $01 $74 $6f
    jr nz, jr_01c_7576                            ; $7501: $20 $73

    ld l, h                                       ; $7503: $6c
    ld l, a                                       ; $7504: $6f
    ld [hl], b                                    ; $7505: $70

jr_01c_7506:
    ld h, l                                       ; $7506: $65
    ld h, h                                       ; $7507: $64
    jr nz, jr_01c_757a                            ; $7508: $20 $70

    ld [hl], l                                    ; $750a: $75
    ld [hl], h                                    ; $750b: $74
    ld [hl], h                                    ; $750c: $74
    ld [hl], e                                    ; $750d: $73
    ld l, $03                                     ; $750e: $2e $03

jr_01c_7510:
    nop                                           ; $7510: $00
    ld b, l                                       ; $7511: $45

jr_01c_7512:
    halt                                          ; $7512: $76
    ld h, l                                       ; $7513: $65
    ld l, [hl]                                    ; $7514: $6e
    jr nz, @+$63                                  ; $7515: $20 $61

    ld h, [hl]                                    ; $7517: $66
    ld [hl], h                                    ; $7518: $74
    ld h, l                                       ; $7519: $65
    ld [hl], d                                    ; $751a: $72
    jr nz, jr_01c_758a                            ; $751b: $20 $6d

jr_01c_751d:
    ld h, c                                       ; $751d: $61
    ld l, e                                       ; $751e: $6b

jr_01c_751f:
    ld l, c                                       ; $751f: $69
    ld l, [hl]                                    ; $7520: $6e

jr_01c_7521:
    ld h, a                                       ; $7521: $67
    ld bc, $7247                                  ; $7522: $01 $47 $72
    ld h, c                                       ; $7525: $61
    ld l, [hl]                                    ; $7526: $6e
    ld h, h                                       ; $7527: $64
    jr nz, jr_01c_756d                            ; $7528: $20 $43

    ld l, b                                       ; $752a: $68
    ld h, c                                       ; $752b: $61
    ld l, l                                       ; $752c: $6d
    ld [hl], b                                    ; $752d: $70
    ld l, c                                       ; $752e: $69
    ld l, a                                       ; $752f: $6f
    ld l, [hl]                                    ; $7530: $6e
    inc l                                         ; $7531: $2c
    ld bc, $6f79                                  ; $7532: $01 $79 $6f

jr_01c_7535:
    ld [hl], l                                    ; $7535: $75
    ld [hl], d                                    ; $7536: $72
    jr nz, jr_01c_75a0                            ; $7537: $20 $67

    ld l, a                                       ; $7539: $6f
    ld h, c                                       ; $753a: $61
    ld l, h                                       ; $753b: $6c
    jr nz, jr_01c_75ad                            ; $753c: $20 $6f

    ld h, [hl]                                    ; $753e: $66
    ld [bc], a                                    ; $753f: $02
    ld h, h                                       ; $7540: $64
    ld h, l                                       ; $7541: $65
    ld h, [hl]                                    ; $7542: $66

jr_01c_7543:
    ld h, l                                       ; $7543: $65
    ld h, c                                       ; $7544: $61
    ld [hl], h                                    ; $7545: $74
    ld l, c                                       ; $7546: $69
    ld l, [hl]                                    ; $7547: $6e
    ld h, a                                       ; $7548: $67
    jr nz, @+$4f                                  ; $7549: $20 $4d

    ld h, c                                       ; $754b: $61
    ld [hl], d                                    ; $754c: $72
    ld l, c                                       ; $754d: $69
    ld l, a                                       ; $754e: $6f
    ld bc, $7473                                  ; $754f: $01 $73 $74
    ld l, c                                       ; $7552: $69
    ld l, h                                       ; $7553: $6c
    ld l, h                                       ; $7554: $6c
    jr nz, jr_01c_75c3                            ; $7555: $20 $6c

    ld l, c                                       ; $7557: $69
    ld h, l                                       ; $7558: $65
    ld [hl], e                                    ; $7559: $73
    jr nz, jr_01c_75be                            ; $755a: $20 $62

jr_01c_755c:
    ld h, l                                       ; $755c: $65

jr_01c_755d:
    ld h, [hl]                                    ; $755d: $66
    ld l, a                                       ; $755e: $6f
    ld [hl], d                                    ; $755f: $72

jr_01c_7560:
    ld h, l                                       ; $7560: $65
    ld bc, $6f79                                  ; $7561: $01 $79 $6f
    ld [hl], l                                    ; $7564: $75
    ld l, $03                                     ; $7565: $2e $03
    nop                                           ; $7567: $00
    ld d, h                                       ; $7568: $54

jr_01c_7569:
    ld l, b                                       ; $7569: $68
    ld h, l                                       ; $756a: $65
    jr nz, jr_01c_75e2                            ; $756b: $20 $75

jr_01c_756d:
    ld l, [hl]                                    ; $756d: $6e
    ld h, h                                       ; $756e: $64
    ld [hl], l                                    ; $756f: $75
    ld l, h                                       ; $7570: $6c
    ld h, c                                       ; $7571: $61
    ld [hl], h                                    ; $7572: $74
    ld l, c                                       ; $7573: $69
    ld l, a                                       ; $7574: $6f
    ld l, [hl]                                    ; $7575: $6e

jr_01c_7576:
    ld [hl], e                                    ; $7576: $73
    jr nz, @+$71                                  ; $7577: $20 $6f

    ld l, [hl]                                    ; $7579: $6e

jr_01c_757a:
    ld bc, $7267                                  ; $757a: $01 $67 $72
    ld h, l                                       ; $757d: $65
    ld h, l                                       ; $757e: $65
    ld l, [hl]                                    ; $757f: $6e
    ld [hl], e                                    ; $7580: $73
    jr nz, jr_01c_75f2                            ; $7581: $20 $6f

    ld l, [hl]                                    ; $7583: $6e
    jr nz, jr_01c_75d6                            ; $7584: $20 $50

    ld h, l                                       ; $7586: $65
    ld h, c                                       ; $7587: $61
    ld h, e                                       ; $7588: $63
    ld l, b                                       ; $7589: $68

jr_01c_758a:
    daa                                           ; $758a: $27
    ld [hl], e                                    ; $758b: $73
    ld bc, $6f63                                  ; $758c: $01 $63 $6f
    ld [hl], l                                    ; $758f: $75
    ld [hl], d                                    ; $7590: $72
    ld [hl], e                                    ; $7591: $73
    ld h, l                                       ; $7592: $65
    jr nz, jr_01c_75f6                            ; $7593: $20 $61

    ld [hl], d                                    ; $7595: $72
    ld h, l                                       ; $7596: $65
    jr nz, jr_01c_7601                            ; $7597: $20 $68

    ld [hl], l                                    ; $7599: $75
    ld h, a                                       ; $759a: $67
    ld h, l                                       ; $759b: $65
    ld l, $03                                     ; $759c: $2e $03
    nop                                           ; $759e: $00
    ld b, h                                       ; $759f: $44

jr_01c_75a0:
    ld l, a                                       ; $75a0: $6f
    ld l, [hl]                                    ; $75a1: $6e
    daa                                           ; $75a2: $27
    ld [hl], h                                    ; $75a3: $74
    jr nz, jr_01c_761a                            ; $75a4: $20 $74

    ld l, b                                       ; $75a6: $68
    ld l, c                                       ; $75a7: $69
    ld l, [hl]                                    ; $75a8: $6e
    ld l, e                                       ; $75a9: $6b
    jr nz, jr_01c_7625                            ; $75aa: $20 $79

    ld l, a                                       ; $75ac: $6f

jr_01c_75ad:
    ld [hl], l                                    ; $75ad: $75
    daa                                           ; $75ae: $27
    halt                                          ; $75af: $76
    ld h, l                                       ; $75b0: $65
    ld bc, $616d                                  ; $75b1: $01 $6d $61
    ld [hl], e                                    ; $75b4: $73
    ld [hl], h                                    ; $75b5: $74
    ld h, l                                       ; $75b6: $65
    ld [hl], d                                    ; $75b7: $72
    ld h, l                                       ; $75b8: $65
    ld h, h                                       ; $75b9: $64
    jr nz, jr_01c_7623                            ; $75ba: $20 $67

    ld l, a                                       ; $75bc: $6f
    ld l, h                                       ; $75bd: $6c

jr_01c_75be:
    ld h, [hl]                                    ; $75be: $66
    jr nz, jr_01c_762b                            ; $75bf: $20 $6a

    ld [hl], l                                    ; $75c1: $75
    ld [hl], e                                    ; $75c2: $73

jr_01c_75c3:
    ld [hl], h                                    ; $75c3: $74
    ld bc, $6562                                  ; $75c4: $01 $62 $65
    ld h, e                                       ; $75c7: $63
    ld h, c                                       ; $75c8: $61
    ld [hl], l                                    ; $75c9: $75
    ld [hl], e                                    ; $75ca: $73
    ld h, l                                       ; $75cb: $65
    jr nz, jr_01c_7647                            ; $75cc: $20 $79

    ld l, a                                       ; $75ce: $6f
    ld [hl], l                                    ; $75cf: $75
    daa                                           ; $75d0: $27
    ld [hl], d                                    ; $75d1: $72
    ld h, l                                       ; $75d2: $65
    ld [bc], a                                    ; $75d3: $02
    ld b, a                                       ; $75d4: $47
    ld [hl], d                                    ; $75d5: $72

jr_01c_75d6:
    ld h, c                                       ; $75d6: $61
    ld l, [hl]                                    ; $75d7: $6e
    ld h, h                                       ; $75d8: $64
    jr nz, @+$45                                  ; $75d9: $20 $43

    ld l, b                                       ; $75db: $68
    ld h, c                                       ; $75dc: $61
    ld l, l                                       ; $75dd: $6d
    ld [hl], b                                    ; $75de: $70
    ld l, $20                                     ; $75df: $2e $20
    ld b, a                                       ; $75e1: $47

jr_01c_75e2:
    ld l, a                                       ; $75e2: $6f
    ld l, h                                       ; $75e3: $6c
    ld h, [hl]                                    ; $75e4: $66
    daa                                           ; $75e5: $27
    ld [hl], e                                    ; $75e6: $73
    ld bc, $6e61                                  ; $75e7: $01 $61 $6e
    jr nz, jr_01c_7651                            ; $75ea: $20 $65

    ld l, [hl]                                    ; $75ec: $6e
    ld h, h                                       ; $75ed: $64
    ld l, h                                       ; $75ee: $6c
    ld h, l                                       ; $75ef: $65
    ld [hl], e                                    ; $75f0: $73
    ld [hl], e                                    ; $75f1: $73

jr_01c_75f2:
    jr nz, jr_01c_7656                            ; $75f2: $20 $62

    ld h, c                                       ; $75f4: $61
    ld [hl], h                                    ; $75f5: $74

jr_01c_75f6:
    ld [hl], h                                    ; $75f6: $74
    ld l, h                                       ; $75f7: $6c
    ld h, l                                       ; $75f8: $65
    ld bc, $6977                                  ; $75f9: $01 $77 $69
    ld [hl], h                                    ; $75fc: $74
    ld l, b                                       ; $75fd: $68
    jr nz, jr_01c_7674                            ; $75fe: $20 $74

    ld l, b                                       ; $7600: $68

jr_01c_7601:
    ld h, l                                       ; $7601: $65
    jr nz, jr_01c_7669                            ; $7602: $20 $65

    ld l, h                                       ; $7604: $6c
    ld h, l                                       ; $7605: $65
    ld l, l                                       ; $7606: $6d
    ld h, l                                       ; $7607: $65
    ld l, [hl]                                    ; $7608: $6e
    ld [hl], h                                    ; $7609: $74
    ld [hl], e                                    ; $760a: $73
    ld l, $03                                     ; $760b: $2e $03
    nop                                           ; $760d: $00
    ld c, c                                       ; $760e: $49
    ld l, [hl]                                    ; $760f: $6e
    jr nz, jr_01c_7679                            ; $7610: $20 $67

    ld l, a                                       ; $7612: $6f
    ld l, h                                       ; $7613: $6c
    ld h, [hl]                                    ; $7614: $66
    inc l                                         ; $7615: $2c
    jr nz, jr_01c_767b                            ; $7616: $20 $63

    ld l, a                                       ; $7618: $6f
    ld [hl], l                                    ; $7619: $75

jr_01c_761a:
    ld [hl], d                                    ; $761a: $72
    ld [hl], e                                    ; $761b: $73
    ld h, l                                       ; $761c: $65
    ld bc, $6f63                                  ; $761d: $01 $63 $6f
    ld l, [hl]                                    ; $7620: $6e
    ld h, h                                       ; $7621: $64
    ld l, c                                       ; $7622: $69

jr_01c_7623:
    ld [hl], h                                    ; $7623: $74
    ld l, c                                       ; $7624: $69

jr_01c_7625:
    ld l, a                                       ; $7625: $6f
    ld l, [hl]                                    ; $7626: $6e
    ld [hl], e                                    ; $7627: $73
    jr nz, jr_01c_768d                            ; $7628: $20 $63

    ld l, b                                       ; $762a: $68

jr_01c_762b:
    ld h, c                                       ; $762b: $61
    ld l, [hl]                                    ; $762c: $6e
    ld h, a                                       ; $762d: $67
    ld h, l                                       ; $762e: $65
    ld bc, $6564                                  ; $762f: $01 $64 $65
    ld [hl], b                                    ; $7632: $70
    ld h, l                                       ; $7633: $65
    ld l, [hl]                                    ; $7634: $6e
    ld h, h                                       ; $7635: $64
    ld l, c                                       ; $7636: $69
    ld l, [hl]                                    ; $7637: $6e
    ld h, a                                       ; $7638: $67
    jr nz, jr_01c_76aa                            ; $7639: $20 $6f

    ld l, [hl]                                    ; $763b: $6e
    jr nz, jr_01c_76b5                            ; $763c: $20 $77

    ld l, c                                       ; $763e: $69
    ld l, [hl]                                    ; $763f: $6e
    ld h, h                                       ; $7640: $64
    ld [bc], a                                    ; $7641: $02
    ld h, c                                       ; $7642: $61
    ld l, [hl]                                    ; $7643: $6e
    ld h, h                                       ; $7644: $64
    jr nz, jr_01c_76b7                            ; $7645: $20 $70

jr_01c_7647:
    ld l, c                                       ; $7647: $69
    ld l, [hl]                                    ; $7648: $6e
    jr nz, jr_01c_76bb                            ; $7649: $20 $70

    ld l, a                                       ; $764b: $6f
    ld [hl], e                                    ; $764c: $73
    ld l, c                                       ; $764d: $69
    ld [hl], h                                    ; $764e: $74
    ld l, c                                       ; $764f: $69
    ld l, a                                       ; $7650: $6f

jr_01c_7651:
    ld l, [hl]                                    ; $7651: $6e
    ld l, $01                                     ; $7652: $2e $01
    ld e, c                                       ; $7654: $59
    ld l, a                                       ; $7655: $6f

jr_01c_7656:
    ld [hl], l                                    ; $7656: $75
    jr nz, @+$70                                  ; $7657: $20 $6e

    ld h, l                                       ; $7659: $65
    halt                                          ; $765a: $76
    ld h, l                                       ; $765b: $65
    ld [hl], d                                    ; $765c: $72
    jr nz, jr_01c_76c6                            ; $765d: $20 $67

    ld h, l                                       ; $765f: $65
    ld [hl], h                                    ; $7660: $74
    jr nz, jr_01c_76d7                            ; $7661: $20 $74

    ld l, b                                       ; $7663: $68
    ld h, l                                       ; $7664: $65
    ld bc, $6173                                  ; $7665: $01 $73 $61
    ld l, l                                       ; $7668: $6d

jr_01c_7669:
    ld h, l                                       ; $7669: $65
    jr nz, jr_01c_76db                            ; $766a: $20 $6f

    ld l, [hl]                                    ; $766c: $6e
    ld h, l                                       ; $766d: $65
    ld [hl], e                                    ; $766e: $73
    jr nz, jr_01c_76e5                            ; $766f: $20 $74

    ld [hl], a                                    ; $7671: $77
    ld l, c                                       ; $7672: $69
    ld h, e                                       ; $7673: $63

jr_01c_7674:
    ld h, l                                       ; $7674: $65
    ld l, $03                                     ; $7675: $2e $03
    nop                                           ; $7677: $00
    ld e, c                                       ; $7678: $59

jr_01c_7679:
    ld l, a                                       ; $7679: $6f
    ld [hl], l                                    ; $767a: $75

jr_01c_767b:
    jr nz, @+$65                                  ; $767b: $20 $63

    ld h, c                                       ; $767d: $61
    ld l, [hl]                                    ; $767e: $6e
    daa                                           ; $767f: $27
    ld [hl], h                                    ; $7680: $74
    jr nz, jr_01c_76f2                            ; $7681: $20 $6f

    halt                                          ; $7683: $76
    ld h, l                                       ; $7684: $65
    ld [hl], d                                    ; $7685: $72
    ld h, e                                       ; $7686: $63
    ld l, a                                       ; $7687: $6f
    ld l, l                                       ; $7688: $6d
    ld h, l                                       ; $7689: $65
    ld bc, $6e75                                  ; $768a: $01 $75 $6e

jr_01c_768d:
    ld h, h                                       ; $768d: $64
    ld [hl], l                                    ; $768e: $75
    ld l, h                                       ; $768f: $6c
    ld h, c                                       ; $7690: $61
    ld [hl], h                                    ; $7691: $74
    ld h, l                                       ; $7692: $65
    ld h, h                                       ; $7693: $64
    jr nz, jr_01c_76fd                            ; $7694: $20 $67

    ld [hl], d                                    ; $7696: $72
    ld h, l                                       ; $7697: $65
    ld h, l                                       ; $7698: $65
    ld l, [hl]                                    ; $7699: $6e
    ld [hl], e                                    ; $769a: $73
    ld bc, $6977                                  ; $769b: $01 $77 $69
    ld [hl], h                                    ; $769e: $74
    ld l, b                                       ; $769f: $68
    jr nz, jr_01c_7712                            ; $76a0: $20 $70

    ld [hl], l                                    ; $76a2: $75
    ld [hl], h                                    ; $76a3: $74
    ld [hl], h                                    ; $76a4: $74
    ld l, c                                       ; $76a5: $69
    ld l, [hl]                                    ; $76a6: $6e
    ld h, a                                       ; $76a7: $67
    jr nz, jr_01c_770b                            ; $76a8: $20 $61

jr_01c_76aa:
    ld l, h                                       ; $76aa: $6c
    ld l, a                                       ; $76ab: $6f
    ld l, [hl]                                    ; $76ac: $6e
    ld h, l                                       ; $76ad: $65
    ld l, $02                                     ; $76ae: $2e $02
    ld e, c                                       ; $76b0: $59
    ld l, a                                       ; $76b1: $6f
    ld [hl], l                                    ; $76b2: $75
    jr nz, jr_01c_771d                            ; $76b3: $20 $68

jr_01c_76b5:
    ld h, c                                       ; $76b5: $61
    halt                                          ; $76b6: $76

jr_01c_76b7:
    ld h, l                                       ; $76b7: $65
    jr nz, jr_01c_772e                            ; $76b8: $20 $74

    ld l, a                                       ; $76ba: $6f

jr_01c_76bb:
    jr nz, jr_01c_771f                            ; $76bb: $20 $62

    ld h, l                                       ; $76bd: $65
    ld bc, $6261                                  ; $76be: $01 $61 $62
    ld l, h                                       ; $76c1: $6c
    ld h, l                                       ; $76c2: $65
    jr nz, jr_01c_7739                            ; $76c3: $20 $74

    ld l, a                                       ; $76c5: $6f

jr_01c_76c6:
    jr nz, jr_01c_7738                            ; $76c6: $20 $70

    ld l, a                                       ; $76c8: $6f
    ld [hl], e                                    ; $76c9: $73
    ld l, c                                       ; $76ca: $69
    ld [hl], h                                    ; $76cb: $74
    ld l, c                                       ; $76cc: $69
    ld l, a                                       ; $76cd: $6f
    ld l, [hl]                                    ; $76ce: $6e
    ld bc, $7469                                  ; $76cf: $01 $69 $74
    jr nz, @+$71                                  ; $76d2: $20 $6f

    ld l, [hl]                                    ; $76d4: $6e
    jr nz, jr_01c_774b                            ; $76d5: $20 $74

jr_01c_76d7:
    ld l, b                                       ; $76d7: $68
    ld h, l                                       ; $76d8: $65
    jr nz, jr_01c_7742                            ; $76d9: $20 $67

jr_01c_76db:
    ld [hl], d                                    ; $76db: $72
    ld h, l                                       ; $76dc: $65
    ld h, l                                       ; $76dd: $65
    ld l, [hl]                                    ; $76de: $6e
    ld l, $03                                     ; $76df: $2e $03
    nop                                           ; $76e1: $00
    ld c, c                                       ; $76e2: $49
    daa                                           ; $76e3: $27
    ld l, l                                       ; $76e4: $6d

jr_01c_76e5:
    jr nz, jr_01c_7755                            ; $76e5: $20 $6e

    ld l, a                                       ; $76e7: $6f
    jr nz, jr_01c_7757                            ; $76e8: $20 $6d

    ld h, c                                       ; $76ea: $61
    ld [hl], e                                    ; $76eb: $73
    ld [hl], h                                    ; $76ec: $74
    ld h, l                                       ; $76ed: $65
    ld [hl], d                                    ; $76ee: $72
    jr nz, jr_01c_775d                            ; $76ef: $20 $6c

    ld l, c                                       ; $76f1: $69

jr_01c_76f2:
    ld l, e                                       ; $76f2: $6b
    ld h, l                                       ; $76f3: $65
    ld bc, $614d                                  ; $76f4: $01 $4d $61
    ld [hl], d                                    ; $76f7: $72
    ld l, c                                       ; $76f8: $69
    ld l, a                                       ; $76f9: $6f
    inc l                                         ; $76fa: $2c
    jr nz, jr_01c_775f                            ; $76fb: $20 $62

jr_01c_76fd:
    ld [hl], l                                    ; $76fd: $75
    ld [hl], h                                    ; $76fe: $74
    jr nz, jr_01c_776e                            ; $76ff: $20 $6d

    ld a, c                                       ; $7701: $79
    ld bc, $7570                                  ; $7702: $01 $70 $75
    ld [hl], h                                    ; $7705: $74
    ld [hl], h                                    ; $7706: $74
    ld l, c                                       ; $7707: $69
    ld l, [hl]                                    ; $7708: $6e
    ld h, a                                       ; $7709: $67
    daa                                           ; $770a: $27

jr_01c_770b:
    ld [hl], e                                    ; $770b: $73
    jr nz, jr_01c_7775                            ; $770c: $20 $67

    ld [hl], d                                    ; $770e: $72
    ld h, l                                       ; $770f: $65
    ld h, c                                       ; $7710: $61
    ld [hl], h                                    ; $7711: $74

jr_01c_7712:
    ld hl, $4802                                  ; $7712: $21 $02 $48
    ld l, a                                       ; $7715: $6f
    ld [hl], a                                    ; $7716: $77
    jr nz, jr_01c_777a                            ; $7717: $20 $61

    ld h, d                                       ; $7719: $62
    ld l, a                                       ; $771a: $6f
    ld [hl], l                                    ; $771b: $75
    ld [hl], h                                    ; $771c: $74

jr_01c_771d:
    jr nz, @+$6b                                  ; $771d: $20 $69

jr_01c_771f:
    ld [hl], h                                    ; $771f: $74
    ccf                                           ; $7720: $3f
    ld bc, $6957                                  ; $7721: $01 $57 $69
    ld l, h                                       ; $7724: $6c
    ld l, h                                       ; $7725: $6c
    jr nz, @+$7b                                  ; $7726: $20 $79

    ld l, a                                       ; $7728: $6f
    ld [hl], l                                    ; $7729: $75
    jr nz, jr_01c_77a0                            ; $772a: $20 $74

    ld h, c                                       ; $772c: $61
    ld l, e                                       ; $772d: $6b

jr_01c_772e:
    ld h, l                                       ; $772e: $65
    ld bc, $656d                                  ; $772f: $01 $6d $65
    jr nz, jr_01c_77a3                            ; $7732: $20 $6f

    ld l, [hl]                                    ; $7734: $6e
    ccf                                           ; $7735: $3f
    nop                                           ; $7736: $00
    ld b, h                                       ; $7737: $44

jr_01c_7738:
    ld l, c                                       ; $7738: $69

jr_01c_7739:
    ld h, h                                       ; $7739: $64
    jr nz, jr_01c_77b5                            ; $773a: $20 $79

    ld l, a                                       ; $773c: $6f
    ld [hl], l                                    ; $773d: $75
    jr nz, @+$79                                  ; $773e: $20 $77

    ld l, c                                       ; $7740: $69
    ld l, [hl]                                    ; $7741: $6e

jr_01c_7742:
    ld bc, $6874                                  ; $7742: $01 $74 $68
    ld h, l                                       ; $7745: $65
    jr nz, jr_01c_7753                            ; $7746: $20 $0b

    ld bc, $6c43                                  ; $7748: $01 $43 $6c

jr_01c_774b:
    ld [hl], l                                    ; $774b: $75
    ld h, d                                       ; $774c: $62
    jr nz, jr_01c_77a3                            ; $774d: $20 $54

    ld l, a                                       ; $774f: $6f
    ld [hl], l                                    ; $7750: $75
    ld [hl], d                                    ; $7751: $72
    ld l, [hl]                                    ; $7752: $6e

jr_01c_7753:
    ld h, c                                       ; $7753: $61
    ld l, l                                       ; $7754: $6d

jr_01c_7755:
    ld h, l                                       ; $7755: $65
    ld l, [hl]                                    ; $7756: $6e

jr_01c_7757:
    ld [hl], h                                    ; $7757: $74
    ccf                                           ; $7758: $3f
    nop                                           ; $7759: $00
    ld b, h                                       ; $775a: $44
    ld l, c                                       ; $775b: $69
    ld h, h                                       ; $775c: $64

jr_01c_775d:
    jr nz, @+$7b                                  ; $775d: $20 $79

jr_01c_775f:
    ld l, a                                       ; $775f: $6f
    ld [hl], l                                    ; $7760: $75
    jr nz, jr_01c_77d3                            ; $7761: $20 $70

    ld l, h                                       ; $7763: $6c
    ld h, c                                       ; $7764: $61
    ld h, e                                       ; $7765: $63
    ld h, l                                       ; $7766: $65
    jr nz, jr_01c_77d2                            ; $7767: $20 $69

    ld l, [hl]                                    ; $7769: $6e
    ld bc, $6874                                  ; $776a: $01 $74 $68
    ld h, l                                       ; $776d: $65

jr_01c_776e:
    jr nz, jr_01c_777b                            ; $776e: $20 $0b

    ld bc, $6c43                                  ; $7770: $01 $43 $6c
    ld [hl], l                                    ; $7773: $75
    ld h, d                                       ; $7774: $62

jr_01c_7775:
    jr nz, jr_01c_77cb                            ; $7775: $20 $54

    ld l, a                                       ; $7777: $6f
    ld [hl], l                                    ; $7778: $75
    ld [hl], d                                    ; $7779: $72

jr_01c_777a:
    ld l, [hl]                                    ; $777a: $6e

jr_01c_777b:
    ld h, c                                       ; $777b: $61
    ld l, l                                       ; $777c: $6d
    ld h, l                                       ; $777d: $65
    ld l, [hl]                                    ; $777e: $6e
    ld [hl], h                                    ; $777f: $74
    ccf                                           ; $7780: $3f
    nop                                           ; $7781: $00
    ld c, b                                       ; $7782: $48
    ld l, l                                       ; $7783: $6d
    ld [hl], b                                    ; $7784: $70
    ld l, b                                       ; $7785: $68
    ld hl, $5420                                  ; $7786: $21 $20 $54
    ld l, b                                       ; $7789: $68
    ld h, l                                       ; $778a: $65
    ld l, [hl]                                    ; $778b: $6e
    jr nz, jr_01c_7805                            ; $778c: $20 $77

    ld l, b                                       ; $778e: $68
    ld l, a                                       ; $778f: $6f
    ccf                                           ; $7790: $3f
    inc bc                                        ; $7791: $03
    nop                                           ; $7792: $00
    ld c, b                                       ; $7793: $48
    ld l, a                                       ; $7794: $6f
    ld [hl], a                                    ; $7795: $77
    jr nz, jr_01c_77f9                            ; $7796: $20 $61

    ld h, d                                       ; $7798: $62
    ld l, a                                       ; $7799: $6f
    ld [hl], l                                    ; $779a: $75
    ld [hl], h                                    ; $779b: $74
    jr nz, jr_01c_7807                            ; $779c: $20 $69

    ld [hl], h                                    ; $779e: $74
    ccf                                           ; $779f: $3f

jr_01c_77a0:
    jr nz, jr_01c_77e5                            ; $77a0: $20 $43

    ld h, c                                       ; $77a2: $61

jr_01c_77a3:
    ld l, [hl]                                    ; $77a3: $6e
    ld bc, $6f79                                  ; $77a4: $01 $79 $6f
    ld [hl], l                                    ; $77a7: $75
    jr nz, jr_01c_781e                            ; $77a8: $20 $74

    ld h, c                                       ; $77aa: $61
    ld l, e                                       ; $77ab: $6b
    ld h, l                                       ; $77ac: $65
    jr nz, @+$6f                                  ; $77ad: $20 $6d

    ld h, l                                       ; $77af: $65
    jr nz, jr_01c_7821                            ; $77b0: $20 $6f

    ld l, [hl]                                    ; $77b2: $6e
    ccf                                           ; $77b3: $3f
    nop                                           ; $77b4: $00

jr_01c_77b5:
    ld c, c                                       ; $77b5: $49
    jr nz, @+$76                                  ; $77b6: $20 $74

    ld l, b                                       ; $77b8: $68
    ld l, a                                       ; $77b9: $6f
    ld [hl], l                                    ; $77ba: $75
    ld h, a                                       ; $77bb: $67
    ld l, b                                       ; $77bc: $68
    ld [hl], h                                    ; $77bd: $74
    jr nz, @+$79                                  ; $77be: $20 $77

    ld h, l                                       ; $77c0: $65
    jr nz, jr_01c_7826                            ; $77c1: $20 $63

    ld l, a                                       ; $77c3: $6f
    ld [hl], l                                    ; $77c4: $75
    ld l, h                                       ; $77c5: $6c
    ld h, h                                       ; $77c6: $64
    ld bc, $6c70                                  ; $77c7: $01 $70 $6c
    ld h, c                                       ; $77ca: $61

jr_01c_77cb:
    ld a, c                                       ; $77cb: $79
    jr nz, @+$76                                  ; $77cc: $20 $74

    ld l, a                                       ; $77ce: $6f
    ld h, a                                       ; $77cf: $67
    ld h, l                                       ; $77d0: $65
    ld [hl], h                                    ; $77d1: $74

jr_01c_77d2:
    ld l, b                                       ; $77d2: $68

jr_01c_77d3:
    ld h, l                                       ; $77d3: $65
    ld [hl], d                                    ; $77d4: $72
    ld l, $2e                                     ; $77d5: $2e $2e
    ld l, $03                                     ; $77d7: $2e $03
    nop                                           ; $77d9: $00
    ld c, a                                       ; $77da: $4f
    ld c, e                                       ; $77db: $4b
    ld l, $20                                     ; $77dc: $2e $20
    ld c, h                                       ; $77de: $4c
    ld h, l                                       ; $77df: $65
    ld [hl], h                                    ; $77e0: $74
    daa                                           ; $77e1: $27
    ld [hl], e                                    ; $77e2: $73
    jr nz, jr_01c_7849                            ; $77e3: $20 $64

jr_01c_77e5:
    ld l, a                                       ; $77e5: $6f
    jr nz, jr_01c_7851                            ; $77e6: $20 $69

    ld [hl], h                                    ; $77e8: $74
    ld l, $03                                     ; $77e9: $2e $03
    nop                                           ; $77eb: $00
    ld c, c                                       ; $77ec: $49
    jr nz, jr_01c_7852                            ; $77ed: $20 $63

    ld h, c                                       ; $77ef: $61
    ld l, [hl]                                    ; $77f0: $6e
    jr nz, jr_01c_785b                            ; $77f1: $20 $68

    ld l, c                                       ; $77f3: $69
    ld [hl], h                                    ; $77f4: $74
    jr nz, @+$76                                  ; $77f5: $20 $74

    ld l, b                                       ; $77f7: $68
    ld h, c                                       ; $77f8: $61

jr_01c_77f9:
    ld [hl], h                                    ; $77f9: $74
    ld bc, $6963                                  ; $77fa: $01 $63 $69
    ld [hl], d                                    ; $77fd: $72
    ld h, e                                       ; $77fe: $63
    ld l, h                                       ; $77ff: $6c
    ld h, l                                       ; $7800: $65
    jr nz, jr_01c_783a                            ; $7801: $20 $37

    jr nz, jr_01c_7879                            ; $7803: $20 $74

jr_01c_7805:
    ld l, c                                       ; $7805: $69
    ld l, l                                       ; $7806: $6d

jr_01c_7807:
    ld h, l                                       ; $7807: $65
    ld [hl], e                                    ; $7808: $73
    ld bc, $756f                                  ; $7809: $01 $6f $75
    ld [hl], h                                    ; $780c: $74
    jr nz, @+$71                                  ; $780d: $20 $6f

    ld h, [hl]                                    ; $780f: $66
    jr nz, jr_01c_7843                            ; $7810: $20 $31

    jr nc, @+$30                                  ; $7812: $30 $2e

    ld [bc], a                                    ; $7814: $02
    ld c, c                                       ; $7815: $49
    ld h, [hl]                                    ; $7816: $66
    jr nz, @+$7b                                  ; $7817: $20 $79

    ld l, a                                       ; $7819: $6f
    ld [hl], l                                    ; $781a: $75
    jr nz, jr_01c_7881                            ; $781b: $20 $64

    ld l, a                                       ; $781d: $6f

jr_01c_781e:
    jr nz, @+$6b                                  ; $781e: $20 $69

    ld [hl], h                                    ; $7820: $74

jr_01c_7821:
    jr nz, @+$39                                  ; $7821: $20 $37

    jr nz, jr_01c_7894                            ; $7823: $20 $6f

    ld [hl], d                                    ; $7825: $72

jr_01c_7826:
    ld bc, $6f6d                                  ; $7826: $01 $6d $6f
    ld [hl], d                                    ; $7829: $72
    ld h, l                                       ; $782a: $65
    jr nz, jr_01c_78a1                            ; $782b: $20 $74

    ld l, c                                       ; $782d: $69
    ld l, l                                       ; $782e: $6d
    ld h, l                                       ; $782f: $65
    ld [hl], e                                    ; $7830: $73
    inc l                                         ; $7831: $2c
    ld bc, $6f79                                  ; $7832: $01 $79 $6f
    ld [hl], l                                    ; $7835: $75
    jr nz, jr_01c_78af                            ; $7836: $20 $77

    ld l, c                                       ; $7838: $69
    ld l, [hl]                                    ; $7839: $6e

jr_01c_783a:
    ld hl, $4c20                                  ; $783a: $21 $20 $4c
    ld h, l                                       ; $783d: $65
    ld [hl], h                                    ; $783e: $74
    daa                                           ; $783f: $27
    ld [hl], e                                    ; $7840: $73
    jr nz, jr_01c_78aa                            ; $7841: $20 $67

jr_01c_7843:
    ld l, a                                       ; $7843: $6f
    ld hl, $0003                                  ; $7844: $21 $03 $00
    ld c, a                                       ; $7847: $4f
    ld l, l                                       ; $7848: $6d

jr_01c_7849:
    ld l, c                                       ; $7849: $69
    ld h, a                                       ; $784a: $67
    ld l, a                                       ; $784b: $6f
    ld [hl], e                                    ; $784c: $73
    ld l, b                                       ; $784d: $68
    ld hl, $4f01                                  ; $784e: $21 $01 $4f

jr_01c_7851:
    ld [hl], l                                    ; $7851: $75

jr_01c_7852:
    ld [hl], h                                    ; $7852: $74
    jr nz, @+$71                                  ; $7853: $20 $6f

    ld h, [hl]                                    ; $7855: $66
    jr nz, jr_01c_7861                            ; $7856: $20 $09

    inc l                                         ; $7858: $2c
    jr nz, @+$7b                                  ; $7859: $20 $79

jr_01c_785b:
    ld l, a                                       ; $785b: $6f
    ld [hl], l                                    ; $785c: $75
    jr nz, jr_01c_78cc                            ; $785d: $20 $6d

    ld h, c                                       ; $785f: $61
    ld h, h                                       ; $7860: $64

jr_01c_7861:
    ld h, l                                       ; $7861: $65
    jr nz, jr_01c_786d                            ; $7862: $20 $09

    ld hl, $0003                                  ; $7864: $21 $03 $00
    ld b, c                                       ; $7867: $41
    ld [hl], a                                    ; $7868: $77
    inc l                                         ; $7869: $2c
    jr nz, @+$76                                  ; $786a: $20 $74

    ld l, a                                       ; $786c: $6f

jr_01c_786d:
    ld l, a                                       ; $786d: $6f
    jr nz, jr_01c_78d2                            ; $786e: $20 $62

    ld h, c                                       ; $7870: $61
    ld h, h                                       ; $7871: $64
    ld l, $01                                     ; $7872: $2e $01
    ld c, a                                       ; $7874: $4f
    ld [hl], l                                    ; $7875: $75
    ld [hl], h                                    ; $7876: $74
    jr nz, jr_01c_78e8                            ; $7877: $20 $6f

jr_01c_7879:
    ld h, [hl]                                    ; $7879: $66
    jr nz, jr_01c_7885                            ; $787a: $20 $09

    inc l                                         ; $787c: $2c
    jr nz, jr_01c_78f8                            ; $787d: $20 $79

    ld l, a                                       ; $787f: $6f
    ld [hl], l                                    ; $7880: $75

jr_01c_7881:
    jr nz, jr_01c_78f0                            ; $7881: $20 $6d

    ld h, c                                       ; $7883: $61
    ld h, h                                       ; $7884: $64

jr_01c_7885:
    ld h, l                                       ; $7885: $65
    jr nz, jr_01c_7891                            ; $7886: $20 $09

    ld l, $03                                     ; $7888: $2e $03
    nop                                           ; $788a: $00
    ld e, c                                       ; $788b: $59
    ld l, a                                       ; $788c: $6f
    ld [hl], l                                    ; $788d: $75
    daa                                           ; $788e: $27
    ld [hl], d                                    ; $788f: $72
    ld h, l                                       ; $7890: $65

jr_01c_7891:
    jr nz, jr_01c_7906                            ; $7891: $20 $73

    ld l, a                                       ; $7893: $6f

jr_01c_7894:
    ld l, l                                       ; $7894: $6d
    ld h, l                                       ; $7895: $65
    ld [hl], h                                    ; $7896: $74
    ld l, b                                       ; $7897: $68
    ld l, c                                       ; $7898: $69
    ld l, [hl]                                    ; $7899: $6e
    ld h, a                                       ; $789a: $67
    ld bc, $6c65                                  ; $789b: $01 $65 $6c
    ld [hl], e                                    ; $789e: $73
    ld h, l                                       ; $789f: $65
    inc l                                         ; $78a0: $2c

jr_01c_78a1:
    jr nz, jr_01c_78aa                            ; $78a1: $20 $07

    ld hl, $4e02                                  ; $78a3: $21 $02 $4e
    ld l, a                                       ; $78a6: $6f
    ld [hl], a                                    ; $78a7: $77
    jr nz, jr_01c_78f3                            ; $78a8: $20 $49

jr_01c_78aa:
    jr nz, jr_01c_7917                            ; $78aa: $20 $6b

    ld l, [hl]                                    ; $78ac: $6e
    ld l, a                                       ; $78ad: $6f
    ld [hl], a                                    ; $78ae: $77

jr_01c_78af:
    jr nz, jr_01c_791b                            ; $78af: $20 $6a

    ld [hl], l                                    ; $78b1: $75
    ld [hl], e                                    ; $78b2: $73
    ld [hl], h                                    ; $78b3: $74
    ld bc, $6f68                                  ; $78b4: $01 $68 $6f
    ld [hl], a                                    ; $78b7: $77
    jr nz, jr_01c_7921                            ; $78b8: $20 $67

    ld l, a                                       ; $78ba: $6f
    ld l, a                                       ; $78bb: $6f
    ld h, h                                       ; $78bc: $64
    jr nz, jr_01c_7938                            ; $78bd: $20 $79

    ld l, a                                       ; $78bf: $6f
    ld [hl], l                                    ; $78c0: $75
    ld [hl], d                                    ; $78c1: $72
    ld bc, $7570                                  ; $78c2: $01 $70 $75
    ld [hl], h                                    ; $78c5: $74
    ld [hl], h                                    ; $78c6: $74
    ld l, c                                       ; $78c7: $69
    ld l, [hl]                                    ; $78c8: $6e
    ld h, a                                       ; $78c9: $67
    jr nz, jr_01c_7935                            ; $78ca: $20 $69

jr_01c_78cc:
    ld [hl], e                                    ; $78cc: $73
    ld l, $03                                     ; $78cd: $2e $03
    nop                                           ; $78cf: $00
    ld c, [hl]                                    ; $78d0: $4e
    ld l, a                                       ; $78d1: $6f

jr_01c_78d2:
    ld [hl], a                                    ; $78d2: $77
    jr nz, jr_01c_791e                            ; $78d3: $20 $49

    jr nz, jr_01c_7942                            ; $78d5: $20 $6b

    ld l, [hl]                                    ; $78d7: $6e
    ld l, a                                       ; $78d8: $6f
    ld [hl], a                                    ; $78d9: $77
    jr nz, jr_01c_7946                            ; $78da: $20 $6a

    ld [hl], l                                    ; $78dc: $75
    ld [hl], e                                    ; $78dd: $73
    ld [hl], h                                    ; $78de: $74
    ld bc, $6f68                                  ; $78df: $01 $68 $6f
    ld [hl], a                                    ; $78e2: $77
    jr nz, jr_01c_794c                            ; $78e3: $20 $67

    ld l, a                                       ; $78e5: $6f
    ld l, a                                       ; $78e6: $6f
    ld h, h                                       ; $78e7: $64

jr_01c_78e8:
    jr nz, jr_01c_7963                            ; $78e8: $20 $79

    ld l, a                                       ; $78ea: $6f
    ld [hl], l                                    ; $78eb: $75
    ld [hl], d                                    ; $78ec: $72
    ld bc, $7570                                  ; $78ed: $01 $70 $75

jr_01c_78f0:
    ld [hl], h                                    ; $78f0: $74
    ld [hl], h                                    ; $78f1: $74
    ld l, c                                       ; $78f2: $69

jr_01c_78f3:
    ld l, [hl]                                    ; $78f3: $6e
    ld h, a                                       ; $78f4: $67
    jr nz, jr_01c_7960                            ; $78f5: $20 $69

    ld [hl], e                                    ; $78f7: $73

jr_01c_78f8:
    ld l, $03                                     ; $78f8: $2e $03
    nop                                           ; $78fa: $00
    ld d, h                                       ; $78fb: $54
    ld l, a                                       ; $78fc: $6f
    ld l, a                                       ; $78fd: $6f
    jr nz, jr_01c_7962                            ; $78fe: $20 $62

    ld h, c                                       ; $7900: $61
    ld h, h                                       ; $7901: $64
    ld l, $20                                     ; $7902: $2e $20
    ld b, e                                       ; $7904: $43
    ld l, a                                       ; $7905: $6f

jr_01c_7906:
    ld l, l                                       ; $7906: $6d
    ld h, l                                       ; $7907: $65
    jr nz, jr_01c_796c                            ; $7908: $20 $62

    ld h, c                                       ; $790a: $61
    ld h, e                                       ; $790b: $63
    ld l, e                                       ; $790c: $6b
    ld bc, $6661                                  ; $790d: $01 $61 $66
    ld [hl], h                                    ; $7910: $74
    ld h, l                                       ; $7911: $65
    ld [hl], d                                    ; $7912: $72
    jr nz, @+$72                                  ; $7913: $20 $70

    ld [hl], d                                    ; $7915: $72
    ld h, c                                       ; $7916: $61

jr_01c_7917:
    ld h, e                                       ; $7917: $63
    ld [hl], h                                    ; $7918: $74
    ld l, c                                       ; $7919: $69
    ld h, e                                       ; $791a: $63

jr_01c_791b:
    ld l, c                                       ; $791b: $69
    ld l, [hl]                                    ; $791c: $6e
    ld h, a                                       ; $791d: $67

jr_01c_791e:
    ld bc, $6f6d                                  ; $791e: $01 $6d $6f

jr_01c_7921:
    ld [hl], d                                    ; $7921: $72
    ld h, l                                       ; $7922: $65
    inc l                                         ; $7923: $2c
    jr nz, @+$09                                  ; $7924: $20 $07

    ld l, $03                                     ; $7926: $2e $03
    nop                                           ; $7928: $00
    ld d, h                                       ; $7929: $54
    ld [hl], d                                    ; $792a: $72
    ld a, c                                       ; $792b: $79
    jr nz, @+$63                                  ; $792c: $20 $61

    ld h, a                                       ; $792e: $67
    ld h, c                                       ; $792f: $61
    ld l, c                                       ; $7930: $69
    ld l, [hl]                                    ; $7931: $6e
    ccf                                           ; $7932: $3f
    nop                                           ; $7933: $00
    ld d, b                                       ; $7934: $50

jr_01c_7935:
    ld [hl], d                                    ; $7935: $72
    ld h, c                                       ; $7936: $61
    ld h, e                                       ; $7937: $63

jr_01c_7938:
    ld [hl], h                                    ; $7938: $74
    ld l, c                                       ; $7939: $69
    ld h, e                                       ; $793a: $63
    ld h, l                                       ; $793b: $65
    jr nz, @+$6a                                  ; $793c: $20 $68

    ld h, l                                       ; $793e: $65
    ld [hl], d                                    ; $793f: $72
    ld h, l                                       ; $7940: $65
    ccf                                           ; $7941: $3f

jr_01c_7942:
    nop                                           ; $7942: $00
    ld c, e                                       ; $7943: $4b
    ld h, l                                       ; $7944: $65
    ld h, l                                       ; $7945: $65

jr_01c_7946:
    ld [hl], b                                    ; $7946: $70
    jr nz, @+$72                                  ; $7947: $20 $70

    ld [hl], d                                    ; $7949: $72
    ld h, c                                       ; $794a: $61
    ld h, e                                       ; $794b: $63

jr_01c_794c:
    ld [hl], h                                    ; $794c: $74
    ld l, c                                       ; $794d: $69
    ld h, e                                       ; $794e: $63
    ld l, c                                       ; $794f: $69
    ld l, [hl]                                    ; $7950: $6e
    ld h, a                                       ; $7951: $67
    ccf                                           ; $7952: $3f
    nop                                           ; $7953: $00
    rlca                                          ; $7954: $07
    ld bc, $7571                                  ; $7955: $01 $71 $75
    ld l, c                                       ; $7958: $69
    ld [hl], h                                    ; $7959: $74
    jr nz, @+$72                                  ; $795a: $20 $70

    ld [hl], d                                    ; $795c: $72
    ld h, c                                       ; $795d: $61
    ld h, e                                       ; $795e: $63
    ld [hl], h                                    ; $795f: $74

jr_01c_7960:
    ld l, c                                       ; $7960: $69
    ld h, e                                       ; $7961: $63

jr_01c_7962:
    ld l, c                                       ; $7962: $69

jr_01c_7963:
    ld l, [hl]                                    ; $7963: $6e
    ld h, a                                       ; $7964: $67
    ld l, $03                                     ; $7965: $2e $03
    nop                                           ; $7967: $00
    ld c, c                                       ; $7968: $49
    ld l, l                                       ; $7969: $6d
    ld [hl], b                                    ; $796a: $70
    ld [hl], d                                    ; $796b: $72

jr_01c_796c:
    ld l, a                                       ; $796c: $6f
    halt                                          ; $796d: $76
    ld h, l                                       ; $796e: $65
    jr nz, @+$79                                  ; $796f: $20 $77

    ld l, b                                       ; $7971: $68
    ld l, c                                       ; $7972: $69
    ld h, e                                       ; $7973: $63
    ld l, b                                       ; $7974: $68
    jr nz, @+$75                                  ; $7975: $20 $73

    ld l, e                                       ; $7977: $6b
    ld l, c                                       ; $7978: $69
    ld l, h                                       ; $7979: $6c
    ld l, h                                       ; $797a: $6c
    ccf                                           ; $797b: $3f
    nop                                           ; $797c: $00
    ld c, h                                       ; $797d: $4c
    ld h, l                                       ; $797e: $65
    halt                                          ; $797f: $76
    ld h, l                                       ; $7980: $65
    ld l, h                                       ; $7981: $6c
    nop                                           ; $7982: $00

    db $44, $72, $69, $76, $65, $00, $53, $68, $6f, $74, $00, $48, $65, $69, $67, $68
    db $74, $00, $4d, $65, $65, $74, $20, $41, $72, $65, $61, $20, $61, $6e, $64, $00
    db $43, $6f, $6e, $74, $72, $6f, $6c, $00, $49, $73, $20, $74, $68, $69, $73, $20
    db $4f, $4b, $3f, $00, $4d, $6f, $76, $69, $6e, $67, $20, $75, $70, $20, $61, $20
    db $6c, $65, $76, $65, $6c, $21, $00, $59, $6f, $75, $20, $6d, $6f, $76, $65, $64
    db $20, $75, $70, $20, $61, $20, $6c, $65, $76, $65, $6c, $21, $00, $59, $65, $73
    db $00, $4e, $6f, $00, $49, $73, $20, $74, $68, $69, $73, $20, $4f, $4b, $3f, $00
    db $43, $6f, $70, $79, $00, $45, $72, $61, $73, $65, $00, $3f, $00, $4c, $65, $76
    db $65, $6c, $00, $44, $72, $69, $76, $65, $00, $45, $58, $50, $20, $50, $74, $73
    db $00, $54, $69, $6d, $65, $00, $46, $61, $64, $65, $00, $53, $74, $72, $61, $69
    db $67, $68, $74, $00, $44, $72, $61, $77, $00, $43, $72, $65, $61, $74, $65, $20
    db $61, $20, $6e, $65, $77, $00, $63, $68, $61, $72, $61, $63, $74, $65, $72, $20
    db $68, $65, $72, $65, $2e, $00, $59, $6f, $75, $20, $63, $61, $6e, $27, $74, $20
    db $63, $68, $6f, $6f, $73, $65, $20, $74, $68, $69, $73, $20, $63, $68, $61, $72
    db $61, $63, $74, $65, $72, $2e, $00, $52, $6f, $75, $6e, $64, $73, $00, $42, $65
    db $73, $74, $20, $53, $63, $6f, $72, $65, $00, $41, $76, $65, $72, $61, $67, $65
    db $00, $42, $65, $73, $74, $20, $44, $72, $69, $76, $65, $00, $41, $76, $67, $2e
    db $20, $44, $72, $69, $76, $65, $00, $46, $61, $69, $72, $77, $61, $79, $20, $4b
    db $65, $65, $70, $73, $00, $41, $76, $67, $2e, $20, $50, $75, $74, $74, $73, $00
    db $50, $61, $72, $20, $53, $61, $76, $65, $73, $00, $50, $61, $72, $20, $4f, $6e
    db $73, $00, $53, $61, $6e, $64, $20, $53, $61, $76, $65, $73, $00, $54, $72, $6f
    db $70, $68, $69, $65, $73, $00, $53, $70, $65, $65, $64, $20, $47, $6f, $6c, $66
    db $00, $54, $6f, $61, $64, $20, $54, $6f, $75, $72, $6e, $61, $6d, $65, $6e, $74
    db $00, $4b, $6f, $6f, $70, $61, $20, $43, $75, $70, $00, $53, $68, $79, $20, $47
    db $75, $79, $20, $49, $6e, $74, $65, $72, $6e, $61, $74, $69, $6f, $6e, $61, $6c
    db $00, $f5, $3e, $00, $cd, $24, $7b

    pop af                                        ; $7b1a: $f1
    ret                                           ; $7b1b: $c9


    db $f5, $3e, $01, $cd, $24, $7b, $f1, $c9

    push bc                                       ; $7b24: $c5
    push de                                       ; $7b25: $d5
    push hl                                       ; $7b26: $e5
    ld hl, $4004                                  ; $7b27: $21 $04 $40
    sla e                                         ; $7b2a: $cb $23
    rl d                                          ; $7b2c: $cb $12
    add hl, de                                    ; $7b2e: $19
    ld e, [hl]                                    ; $7b2f: $5e
    inc hl                                        ; $7b30: $23
    ld d, [hl]                                    ; $7b31: $56
    ld hl, $4214                                  ; $7b32: $21 $14 $42
    add hl, de                                    ; $7b35: $19
    or a                                          ; $7b36: $b7
    jr nz, @+$0a                                  ; $7b37: $20 $08

    ld de, $c600                                  ; $7b39: $11 $00 $c6
    ld bc, $0180                                  ; $7b3c: $01 $80 $01
    jr jr_01c_7b47                                ; $7b3f: $18 $06

    db $11, $80, $d8, $01, $20, $00

jr_01c_7b47:
    call MemCopy                            ; $7b47: $cd $d3 $03
    pop hl                                        ; $7b4a: $e1
    pop de                                        ; $7b4b: $d1
    pop bc                                        ; $7b4c: $c1
    ret                                           ; $7b4d: $c9


    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

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
