; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

    ld [de], a                                    ; $4000: $12
    ld b, b                                       ; $4001: $40
    inc sp                                        ; $4002: $33
    ld b, b                                       ; $4003: $40
    bit 1, b                                      ; $4004: $cb $48

    db $51, $53, $d1, $59, $51, $60, $d1, $66, $6b, $73

    inc sp                                        ; $4010: $33
    ld b, b                                       ; $4011: $40
    push af                                       ; $4012: $f5
    push bc                                       ; $4013: $c5
    push de                                       ; $4014: $d5
    push hl                                       ; $4015: $e5
    ldh [$95], a                                  ; $4016: $e0 $95
    ld [$2000], a                                 ; $4018: $ea $00 $20

    ld a, c                                       ; $401b: $79
    add a                                         ; $401c: $87
    add l                                         ; $401d: $85
    ld l, a                                       ; $401e: $6f
    jr nc, jr_023_4022                            ; $401f: $30 $01

    inc h                                         ; $4021: $24

jr_023_4022:
    ld a, [hl+]                                   ; $4022: $2a
    ld h, [hl]                                    ; $4023: $66
    ld l, a                                       ; $4024: $6f
    ld c, b                                       ; $4025: $48
    ld b, $00                                     ; $4026: $06 $00
    add hl, bc                                    ; $4028: $09
    ld c, $04                                     ; $4029: $0e $04
    call Call_000_0468                            ; $402b: $cd $68 $04
    pop hl                                        ; $402e: $e1
    pop de                                        ; $402f: $d1
    pop bc                                        ; $4030: $c1
    pop af                                        ; $4031: $f1
    ret                                           ; $4032: $c9


    dec b                                         ; $4033: $05
    inc b                                         ; $4034: $04
    dec sp                                        ; $4035: $3b
    ld b, b                                       ; $4036: $40
    ld h, b                                       ; $4037: $60
    ld c, b                                       ; $4038: $48
    dec sp                                        ; $4039: $3b
    ld b, b                                       ; $403a: $40
    ld h, b                                       ; $403b: $60
    ld b, b                                       ; $403c: $40
    ld h, b                                       ; $403d: $60
    ld b, c                                       ; $403e: $41
    ld h, b                                       ; $403f: $60
    ld b, c                                       ; $4040: $41
    ld h, b                                       ; $4041: $60
    ld b, c                                       ; $4042: $41
    ld h, b                                       ; $4043: $60
    ld b, c                                       ; $4044: $41
    ld h, b                                       ; $4045: $60
    ld b, c                                       ; $4046: $41
    ld h, b                                       ; $4047: $60
    ld b, d                                       ; $4048: $42
    ld h, b                                       ; $4049: $60
    ld b, e                                       ; $404a: $43
    ld h, b                                       ; $404b: $60
    ld b, h                                       ; $404c: $44
    ld h, b                                       ; $404d: $60
    ld b, l                                       ; $404e: $45
    ld h, b                                       ; $404f: $60
    ld b, [hl]                                    ; $4050: $46
    ld h, b                                       ; $4051: $60
    ld b, a                                       ; $4052: $47
    nop                                           ; $4053: $00
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    nop                                           ; $4056: $00
    nop                                           ; $4057: $00
    nop                                           ; $4058: $00
    nop                                           ; $4059: $00
    nop                                           ; $405a: $00
    nop                                           ; $405b: $00
    nop                                           ; $405c: $00
    nop                                           ; $405d: $00
    nop                                           ; $405e: $00
    nop                                           ; $405f: $00
    inc bc                                        ; $4060: $03
    inc bc                                        ; $4061: $03
    ld [bc], a                                    ; $4062: $02
    inc bc                                        ; $4063: $03
    inc bc                                        ; $4064: $03
    inc bc                                        ; $4065: $03
    ld [bc], a                                    ; $4066: $02
    inc bc                                        ; $4067: $03
    dec b                                         ; $4068: $05
    rlca                                          ; $4069: $07
    inc b                                         ; $406a: $04
    rlca                                          ; $406b: $07
    ld c, d                                       ; $406c: $4a
    ld c, a                                       ; $406d: $4f
    ld [hl], c                                    ; $406e: $71
    ld a, a                                       ; $406f: $7f
    ld b, b                                       ; $4070: $40
    ld a, a                                       ; $4071: $7f
    ld sp, $223f                                  ; $4072: $31 $3f $22
    ccf                                           ; $4075: $3f
    inc de                                        ; $4076: $13
    rra                                           ; $4077: $1f
    dec c                                         ; $4078: $0d
    rrca                                          ; $4079: $0f
    ld a, [bc]                                    ; $407a: $0a
    rrca                                          ; $407b: $0f
    inc c                                         ; $407c: $0c
    rrca                                          ; $407d: $0f
    rlca                                          ; $407e: $07
    rlca                                          ; $407f: $07
    ld e, b                                       ; $4080: $58
    ld e, b                                       ; $4081: $58
    xor b                                         ; $4082: $a8
    ld hl, sp+$48                                 ; $4083: $f8 $48
    cp b                                          ; $4085: $b8
    db $f4                                        ; $4086: $f4
    db $fc                                        ; $4087: $fc
    ld [bc], a                                    ; $4088: $02
    cp $12                                        ; $4089: $fe $12
    cp $7c                                        ; $408b: $fe $7c
    db $ec                                        ; $408d: $ec
    ld hl, sp-$68                                 ; $408e: $f8 $98
    ld a, b                                       ; $4090: $78
    ret c                                         ; $4091: $d8

    cp b                                          ; $4092: $b8
    add sp, -$10                                  ; $4093: $e8 $f0
    ret nc                                        ; $4095: $d0

    ldh [$60], a                                  ; $4096: $e0 $60
    ldh [$a0], a                                  ; $4098: $e0 $a0
    ld h, b                                       ; $409a: $60
    ldh [rSVBK], a                                ; $409b: $e0 $70
    ret nc                                        ; $409d: $d0

    ldh a, [$f0]                                  ; $409e: $f0 $f0
    dec c                                         ; $40a0: $0d
    dec c                                         ; $40a1: $0d
    ld a, [bc]                                    ; $40a2: $0a
    rrca                                          ; $40a3: $0f
    add hl, bc                                    ; $40a4: $09
    ld c, $17                                     ; $40a5: $0e $17
    rra                                           ; $40a7: $1f
    add hl, hl                                    ; $40a8: $29
    ccf                                           ; $40a9: $3f
    ld [hl+], a                                   ; $40aa: $22
    ccf                                           ; $40ab: $3f
    and a                                         ; $40ac: $a7
    cp l                                          ; $40ad: $bd
    rst $18                                       ; $40ae: $df
    ld a, [$fa8f]                                 ; $40af: $fa $8f $fa
    ld l, a                                       ; $40b2: $6f
    ld a, b                                       ; $40b3: $78
    ld d, a                                       ; $40b4: $57
    ld a, h                                       ; $40b5: $7c
    ccf                                           ; $40b6: $3f
    dec sp                                        ; $40b7: $3b
    daa                                           ; $40b8: $27
    dec a                                         ; $40b9: $3d
    ld d, $1f                                     ; $40ba: $16 $1f
    rrca                                          ; $40bc: $0f
    add hl, bc                                    ; $40bd: $09
    rlca                                          ; $40be: $07
    rlca                                          ; $40bf: $07
    ld h, b                                       ; $40c0: $60
    ld h, b                                       ; $40c1: $60
    and b                                         ; $40c2: $a0
    ldh [rNR41], a                                ; $40c3: $e0 $20
    ldh [$d0], a                                  ; $40c5: $e0 $d0
    ldh a, [$28]                                  ; $40c7: $f0 $28
    ld hl, sp-$78                                 ; $40c9: $f8 $88
    ld hl, sp-$36                                 ; $40cb: $f8 $ca
    ld a, d                                       ; $40cd: $7a
    or $be                                        ; $40ce: $f6 $be
    ld [c], a                                     ; $40d0: $e2
    cp [hl]                                       ; $40d1: $be
    db $ec                                        ; $40d2: $ec
    inc a                                         ; $40d3: $3c
    call nc, $f87c                                ; $40d4: $d4 $7c $f8
    cp b                                          ; $40d7: $b8
    ret nc                                        ; $40d8: $d0

    ld [hl], b                                    ; $40d9: $70
    ldh [$e0], a                                  ; $40da: $e0 $e0
    add b                                         ; $40dc: $80
    add b                                         ; $40dd: $80
    nop                                           ; $40de: $00
    nop                                           ; $40df: $00
    ld a, [de]                                    ; $40e0: $1a
    ld a, [de]                                    ; $40e1: $1a
    dec d                                         ; $40e2: $15
    rra                                           ; $40e3: $1f
    ld [de], a                                    ; $40e4: $12
    dec e                                         ; $40e5: $1d
    cpl                                           ; $40e6: $2f
    ccf                                           ; $40e7: $3f
    ld b, b                                       ; $40e8: $40
    ld a, a                                       ; $40e9: $7f
    ld c, b                                       ; $40ea: $48
    ld a, a                                       ; $40eb: $7f
    ld a, $37                                     ; $40ec: $3e $37
    rra                                           ; $40ee: $1f
    add hl, de                                    ; $40ef: $19
    ld e, $1b                                     ; $40f0: $1e $1b
    dec e                                         ; $40f2: $1d
    rla                                           ; $40f3: $17
    rrca                                          ; $40f4: $0f
    dec bc                                        ; $40f5: $0b
    rlca                                          ; $40f6: $07
    ld b, $07                                     ; $40f7: $06 $07
    dec b                                         ; $40f9: $05
    ld b, $07                                     ; $40fa: $06 $07
    inc c                                         ; $40fc: $0c
    rrca                                          ; $40fd: $0f
    rrca                                          ; $40fe: $0f
    rrca                                          ; $40ff: $0f
    ret nz                                        ; $4100: $c0

    ret nz                                        ; $4101: $c0

    ld b, b                                       ; $4102: $40
    ret nz                                        ; $4103: $c0

    ret nz                                        ; $4104: $c0

    ret nz                                        ; $4105: $c0

    ld b, b                                       ; $4106: $40
    ret nz                                        ; $4107: $c0

    and b                                         ; $4108: $a0
    ldh [rNR41], a                                ; $4109: $e0 $20
    ldh [rHDMA2], a                               ; $410b: $e0 $52
    ld a, [c]                                     ; $410d: $f2
    adc [hl]                                      ; $410e: $8e
    cp $12                                        ; $410f: $fe $12
    cp $8c                                        ; $4111: $fe $8c
    db $fc                                        ; $4113: $fc
    ld b, h                                       ; $4114: $44
    db $fc                                        ; $4115: $fc
    ret z                                         ; $4116: $c8

    ld hl, sp-$50                                 ; $4117: $f8 $b0
    ldh a, [rSVBK]                                ; $4119: $f0 $70
    ldh a, [rSVBK]                                ; $411b: $f0 $70
    ret nc                                        ; $411d: $d0

    ldh [$e0], a                                  ; $411e: $e0 $e0
    dec c                                         ; $4120: $0d
    dec c                                         ; $4121: $0d
    dec bc                                        ; $4122: $0b
    rrca                                          ; $4123: $0f
    ld a, [bc]                                    ; $4124: $0a
    rrca                                          ; $4125: $0f
    dec d                                         ; $4126: $15
    ld e, $23                                     ; $4127: $1e $23
    ccf                                           ; $4129: $3f
    ld sp, $a03f                                  ; $412a: $31 $3f $a0
    cp a                                          ; $412d: $bf
    ret nz                                        ; $412e: $c0

    rst $38                                       ; $412f: $ff
    sub b                                         ; $4130: $90
    rst $38                                       ; $4131: $ff
    ld h, b                                       ; $4132: $60
    ld a, a                                       ; $4133: $7f
    ld c, b                                       ; $4134: $48
    ld a, a                                       ; $4135: $7f
    inc a                                         ; $4136: $3c
    ccf                                           ; $4137: $3f
    inc hl                                        ; $4138: $23
    ccf                                           ; $4139: $3f
    ld d, $1f                                     ; $413a: $16 $1f
    rrca                                          ; $413c: $0f
    add hl, bc                                    ; $413d: $09
    rlca                                          ; $413e: $07
    rlca                                          ; $413f: $07
    ld h, b                                       ; $4140: $60
    ld h, b                                       ; $4141: $60
    and b                                         ; $4142: $a0
    ldh [$a0], a                                  ; $4143: $e0 $a0
    ldh [$50], a                                  ; $4145: $e0 $50
    ldh a, [$88]                                  ; $4147: $f0 $88
    ld hl, sp+$18                                 ; $4149: $f8 $18
    ld hl, sp+$0a                                 ; $414b: $f8 $0a
    ld a, [$fe06]                                 ; $414d: $fa $06 $fe

jr_023_4150:
    ld [de], a                                    ; $4150: $12
    cp $0c                                        ; $4151: $fe $0c
    db $fc                                        ; $4153: $fc
    inc h                                         ; $4154: $24
    db $fc                                        ; $4155: $fc
    jr c, jr_023_4150                             ; $4156: $38 $f8

    ld d, b                                       ; $4158: $50
    ldh a, [$e0]                                  ; $4159: $f0 $e0
    ldh [$80], a                                  ; $415b: $e0 $80
    add b                                         ; $415d: $80
    nop                                           ; $415e: $00
    nop                                           ; $415f: $00
    inc bc                                        ; $4160: $03
    inc bc                                        ; $4161: $03
    ld [bc], a                                    ; $4162: $02
    inc bc                                        ; $4163: $03
    inc bc                                        ; $4164: $03
    inc bc                                        ; $4165: $03
    ld [bc], a                                    ; $4166: $02
    inc bc                                        ; $4167: $03
    dec b                                         ; $4168: $05
    rlca                                          ; $4169: $07
    inc b                                         ; $416a: $04
    rlca                                          ; $416b: $07
    ld c, d                                       ; $416c: $4a
    ld c, a                                       ; $416d: $4f
    ld [hl], c                                    ; $416e: $71
    ld a, a                                       ; $416f: $7f
    ld b, b                                       ; $4170: $40
    ld a, a                                       ; $4171: $7f
    ld sp, $223f                                  ; $4172: $31 $3f $22
    ccf                                           ; $4175: $3f
    inc de                                        ; $4176: $13
    rra                                           ; $4177: $1f
    dec c                                         ; $4178: $0d
    rrca                                          ; $4179: $0f
    ld c, $0f                                     ; $417a: $0e $0f
    ld c, $0b                                     ; $417c: $0e $0b
    rlca                                          ; $417e: $07
    rlca                                          ; $417f: $07
    ld e, b                                       ; $4180: $58
    ld e, b                                       ; $4181: $58
    xor b                                         ; $4182: $a8
    ld hl, sp+$48                                 ; $4183: $f8 $48
    cp b                                          ; $4185: $b8
    db $f4                                        ; $4186: $f4
    db $fc                                        ; $4187: $fc
    ld [bc], a                                    ; $4188: $02
    cp $12                                        ; $4189: $fe $12
    cp $7c                                        ; $418b: $fe $7c
    db $ec                                        ; $418d: $ec
    ld hl, sp-$68                                 ; $418e: $f8 $98
    ld a, b                                       ; $4190: $78
    ret c                                         ; $4191: $d8

    cp b                                          ; $4192: $b8
    add sp, -$10                                  ; $4193: $e8 $f0
    ret nc                                        ; $4195: $d0

    ldh [$60], a                                  ; $4196: $e0 $60
    ldh [$a0], a                                  ; $4198: $e0 $a0
    ld h, b                                       ; $419a: $60
    ldh [$30], a                                  ; $419b: $e0 $30
    ldh a, [$f0]                                  ; $419d: $f0 $f0

jr_023_419f:
    ldh a, [$0d]                                  ; $419f: $f0 $0d
    dec c                                         ; $41a1: $0d
    ld a, [bc]                                    ; $41a2: $0a
    rrca                                          ; $41a3: $0f
    add hl, bc                                    ; $41a4: $09
    ld c, $17                                     ; $41a5: $0e $17
    rra                                           ; $41a7: $1f
    add hl, hl                                    ; $41a8: $29
    ccf                                           ; $41a9: $3f
    ld [hl+], a                                   ; $41aa: $22
    ccf                                           ; $41ab: $3f
    and a                                         ; $41ac: $a7
    cp l                                          ; $41ad: $bd
    rst $18                                       ; $41ae: $df
    ld a, [$fa8f]                                 ; $41af: $fa $8f $fa
    ld l, a                                       ; $41b2: $6f
    ld a, b                                       ; $41b3: $78
    ld d, a                                       ; $41b4: $57
    ld a, h                                       ; $41b5: $7c
    ccf                                           ; $41b6: $3f
    dec sp                                        ; $41b7: $3b
    rla                                           ; $41b8: $17
    dec e                                         ; $41b9: $1d
    ld c, $0f                                     ; $41ba: $0e $0f
    inc bc                                        ; $41bc: $03
    inc bc                                        ; $41bd: $03
    ld bc, $6001                                  ; $41be: $01 $01 $60
    ld h, b                                       ; $41c1: $60
    and b                                         ; $41c2: $a0
    ldh [rNR41], a                                ; $41c3: $e0 $20
    ldh [$d0], a                                  ; $41c5: $e0 $d0
    ldh a, [$28]                                  ; $41c7: $f0 $28
    ld hl, sp-$78                                 ; $41c9: $f8 $88
    ld hl, sp-$36                                 ; $41cb: $f8 $ca
    ld a, d                                       ; $41cd: $7a
    or $be                                        ; $41ce: $f6 $be
    ld [c], a                                     ; $41d0: $e2
    cp [hl]                                       ; $41d1: $be
    db $ec                                        ; $41d2: $ec
    inc a                                         ; $41d3: $3c
    call nc, $f87c                                ; $41d4: $d4 $7c $f8
    cp b                                          ; $41d7: $b8
    ret z                                         ; $41d8: $c8

    ld a, b                                       ; $41d9: $78
    ret nc                                        ; $41da: $d0

    ldh a, [$e0]                                  ; $41db: $f0 $e0
    jr nz, jr_023_419f                            ; $41dd: $20 $c0

    ret nz                                        ; $41df: $c0

    ld a, [de]                                    ; $41e0: $1a
    ld a, [de]                                    ; $41e1: $1a
    dec d                                         ; $41e2: $15
    rra                                           ; $41e3: $1f
    ld [de], a                                    ; $41e4: $12
    dec e                                         ; $41e5: $1d
    cpl                                           ; $41e6: $2f
    ccf                                           ; $41e7: $3f
    ld b, b                                       ; $41e8: $40
    ld a, a                                       ; $41e9: $7f
    ld c, b                                       ; $41ea: $48
    ld a, a                                       ; $41eb: $7f
    ld a, $37                                     ; $41ec: $3e $37
    rra                                           ; $41ee: $1f
    add hl, de                                    ; $41ef: $19
    ld e, $1b                                     ; $41f0: $1e $1b
    dec e                                         ; $41f2: $1d
    rla                                           ; $41f3: $17
    rrca                                          ; $41f4: $0f
    dec bc                                        ; $41f5: $0b
    rlca                                          ; $41f6: $07
    ld b, $07                                     ; $41f7: $06 $07
    dec b                                         ; $41f9: $05
    ld b, $07                                     ; $41fa: $06 $07
    ld c, $0b                                     ; $41fc: $0e $0b
    rrca                                          ; $41fe: $0f
    rrca                                          ; $41ff: $0f
    ret nz                                        ; $4200: $c0

    ret nz                                        ; $4201: $c0

    ld b, b                                       ; $4202: $40
    ret nz                                        ; $4203: $c0

    ret nz                                        ; $4204: $c0

    ret nz                                        ; $4205: $c0

    ld b, b                                       ; $4206: $40
    ret nz                                        ; $4207: $c0

    and b                                         ; $4208: $a0
    ldh [rNR41], a                                ; $4209: $e0 $20
    ldh [rHDMA2], a                               ; $420b: $e0 $52
    ld a, [c]                                     ; $420d: $f2
    adc [hl]                                      ; $420e: $8e
    cp $12                                        ; $420f: $fe $12
    cp $8c                                        ; $4211: $fe $8c
    db $fc                                        ; $4213: $fc
    ld b, h                                       ; $4214: $44
    db $fc                                        ; $4215: $fc
    ret z                                         ; $4216: $c8

    ld hl, sp-$50                                 ; $4217: $f8 $b0
    ldh a, [$50]                                  ; $4219: $f0 $50
    ldh a, [$30]                                  ; $421b: $f0 $30
    ldh a, [$e0]                                  ; $421d: $f0 $e0

jr_023_421f:
    ldh [$0d], a                                  ; $421f: $e0 $0d
    dec c                                         ; $4221: $0d
    dec bc                                        ; $4222: $0b
    rrca                                          ; $4223: $0f
    ld a, [bc]                                    ; $4224: $0a
    rrca                                          ; $4225: $0f
    dec d                                         ; $4226: $15
    ld e, $23                                     ; $4227: $1e $23
    ccf                                           ; $4229: $3f
    ld sp, $a03f                                  ; $422a: $31 $3f $a0
    cp a                                          ; $422d: $bf
    ret nz                                        ; $422e: $c0

    rst $38                                       ; $422f: $ff
    sub b                                         ; $4230: $90
    rst $38                                       ; $4231: $ff
    ld h, b                                       ; $4232: $60
    ld a, a                                       ; $4233: $7f
    ld c, b                                       ; $4234: $48
    ld a, a                                       ; $4235: $7f
    jr c, jr_023_4277                             ; $4236: $38 $3f

    dec d                                         ; $4238: $15
    rra                                           ; $4239: $1f
    ld c, $0f                                     ; $423a: $0e $0f
    inc bc                                        ; $423c: $03
    inc bc                                        ; $423d: $03
    ld bc, $6001                                  ; $423e: $01 $01 $60
    ld h, b                                       ; $4241: $60
    and b                                         ; $4242: $a0
    ldh [$a0], a                                  ; $4243: $e0 $a0
    ldh [$50], a                                  ; $4245: $e0 $50
    ldh a, [$88]                                  ; $4247: $f0 $88
    ld hl, sp+$18                                 ; $4249: $f8 $18
    ld hl, sp+$0a                                 ; $424b: $f8 $0a
    ld a, [$fe06]                                 ; $424d: $fa $06 $fe
    ld [de], a                                    ; $4250: $12
    cp $0c                                        ; $4251: $fe $0c
    db $fc                                        ; $4253: $fc
    inc h                                         ; $4254: $24
    db $fc                                        ; $4255: $fc
    ld a, b                                       ; $4256: $78
    ld hl, sp-$78                                 ; $4257: $f8 $88
    ld hl, sp-$30                                 ; $4259: $f8 $d0
    ldh a, [$e0]                                  ; $425b: $f0 $e0
    jr nz, jr_023_421f                            ; $425d: $20 $c0

    ret nz                                        ; $425f: $c0

    nop                                           ; $4260: $00
    nop                                           ; $4261: $00
    inc bc                                        ; $4262: $03
    inc bc                                        ; $4263: $03
    ld [bc], a                                    ; $4264: $02
    inc bc                                        ; $4265: $03
    inc bc                                        ; $4266: $03
    inc bc                                        ; $4267: $03
    ld [bc], a                                    ; $4268: $02
    inc bc                                        ; $4269: $03
    dec b                                         ; $426a: $05
    rlca                                          ; $426b: $07
    inc b                                         ; $426c: $04
    rlca                                          ; $426d: $07
    ld c, d                                       ; $426e: $4a
    ld c, a                                       ; $426f: $4f
    ld [hl], c                                    ; $4270: $71
    ld a, a                                       ; $4271: $7f
    ld b, b                                       ; $4272: $40
    ld a, a                                       ; $4273: $7f
    ld [hl+], a                                   ; $4274: $22
    ccf                                           ; $4275: $3f
    inc de                                        ; $4276: $13

jr_023_4277:
    rra                                           ; $4277: $1f
    dec c                                         ; $4278: $0d
    rrca                                          ; $4279: $0f
    ld a, [bc]                                    ; $427a: $0a
    rrca                                          ; $427b: $0f
    inc c                                         ; $427c: $0c
    rrca                                          ; $427d: $0f
    rlca                                          ; $427e: $07
    rlca                                          ; $427f: $07
    nop                                           ; $4280: $00
    nop                                           ; $4281: $00
    ld e, b                                       ; $4282: $58
    ld e, b                                       ; $4283: $58
    xor b                                         ; $4284: $a8
    ld hl, sp+$48                                 ; $4285: $f8 $48
    cp b                                          ; $4287: $b8
    db $f4                                        ; $4288: $f4
    db $fc                                        ; $4289: $fc
    ld [bc], a                                    ; $428a: $02
    cp $12                                        ; $428b: $fe $12
    cp $7c                                        ; $428d: $fe $7c
    db $ec                                        ; $428f: $ec
    ld hl, sp-$68                                 ; $4290: $f8 $98
    ld a, b                                       ; $4292: $78
    ret c                                         ; $4293: $d8

    ldh a, [$d0]                                  ; $4294: $f0 $d0
    ldh [$60], a                                  ; $4296: $e0 $60
    ldh [$a0], a                                  ; $4298: $e0 $a0
    ld h, b                                       ; $429a: $60
    ldh [rSVBK], a                                ; $429b: $e0 $70
    ret nc                                        ; $429d: $d0

    ldh a, [$f0]                                  ; $429e: $f0 $f0
    nop                                           ; $42a0: $00
    nop                                           ; $42a1: $00
    dec c                                         ; $42a2: $0d
    dec c                                         ; $42a3: $0d
    ld a, [bc]                                    ; $42a4: $0a
    rrca                                          ; $42a5: $0f
    add hl, bc                                    ; $42a6: $09
    ld c, $17                                     ; $42a7: $0e $17
    rra                                           ; $42a9: $1f
    add hl, hl                                    ; $42aa: $29
    ccf                                           ; $42ab: $3f
    ld [hl+], a                                   ; $42ac: $22
    ccf                                           ; $42ad: $3f
    and a                                         ; $42ae: $a7
    cp l                                          ; $42af: $bd
    rst $18                                       ; $42b0: $df
    ld a, [$fa8f]                                 ; $42b1: $fa $8f $fa
    ld d, a                                       ; $42b4: $57
    ld a, h                                       ; $42b5: $7c
    ccf                                           ; $42b6: $3f
    dec sp                                        ; $42b7: $3b
    daa                                           ; $42b8: $27
    dec a                                         ; $42b9: $3d
    ld d, $1f                                     ; $42ba: $16 $1f
    rrca                                          ; $42bc: $0f
    add hl, bc                                    ; $42bd: $09
    rlca                                          ; $42be: $07
    rlca                                          ; $42bf: $07
    nop                                           ; $42c0: $00
    nop                                           ; $42c1: $00
    ld h, b                                       ; $42c2: $60
    ld h, b                                       ; $42c3: $60
    and b                                         ; $42c4: $a0
    ldh [rNR41], a                                ; $42c5: $e0 $20
    ldh [$d0], a                                  ; $42c7: $e0 $d0
    ldh a, [$28]                                  ; $42c9: $f0 $28
    ld hl, sp-$78                                 ; $42cb: $f8 $88
    ld hl, sp-$36                                 ; $42cd: $f8 $ca
    ld a, d                                       ; $42cf: $7a
    or $be                                        ; $42d0: $f6 $be
    ld [c], a                                     ; $42d2: $e2
    cp [hl]                                       ; $42d3: $be
    call nc, $f87c                                ; $42d4: $d4 $7c $f8
    cp b                                          ; $42d7: $b8
    ret nc                                        ; $42d8: $d0

    ld [hl], b                                    ; $42d9: $70
    ldh [$e0], a                                  ; $42da: $e0 $e0
    add b                                         ; $42dc: $80
    add b                                         ; $42dd: $80
    nop                                           ; $42de: $00
    nop                                           ; $42df: $00
    nop                                           ; $42e0: $00
    nop                                           ; $42e1: $00
    ld a, [de]                                    ; $42e2: $1a
    ld a, [de]                                    ; $42e3: $1a
    dec d                                         ; $42e4: $15
    rra                                           ; $42e5: $1f
    ld [de], a                                    ; $42e6: $12
    dec e                                         ; $42e7: $1d
    cpl                                           ; $42e8: $2f
    ccf                                           ; $42e9: $3f
    ld b, b                                       ; $42ea: $40
    ld a, a                                       ; $42eb: $7f
    ld c, b                                       ; $42ec: $48
    ld a, a                                       ; $42ed: $7f
    ld a, $37                                     ; $42ee: $3e $37
    rra                                           ; $42f0: $1f
    add hl, de                                    ; $42f1: $19
    ld e, $1b                                     ; $42f2: $1e $1b
    rrca                                          ; $42f4: $0f
    dec bc                                        ; $42f5: $0b
    rlca                                          ; $42f6: $07
    ld b, $07                                     ; $42f7: $06 $07
    dec b                                         ; $42f9: $05
    ld b, $07                                     ; $42fa: $06 $07
    inc c                                         ; $42fc: $0c
    rrca                                          ; $42fd: $0f
    rrca                                          ; $42fe: $0f
    rrca                                          ; $42ff: $0f
    nop                                           ; $4300: $00
    nop                                           ; $4301: $00
    ret nz                                        ; $4302: $c0

    ret nz                                        ; $4303: $c0

    ld b, b                                       ; $4304: $40
    ret nz                                        ; $4305: $c0

    ret nz                                        ; $4306: $c0

    ret nz                                        ; $4307: $c0

    ld b, b                                       ; $4308: $40
    ret nz                                        ; $4309: $c0

    and b                                         ; $430a: $a0
    ldh [rNR41], a                                ; $430b: $e0 $20
    ldh [rHDMA2], a                               ; $430d: $e0 $52
    ld a, [c]                                     ; $430f: $f2
    adc [hl]                                      ; $4310: $8e
    cp $12                                        ; $4311: $fe $12
    cp $44                                        ; $4313: $fe $44
    db $fc                                        ; $4315: $fc
    ret z                                         ; $4316: $c8

    ld hl, sp-$50                                 ; $4317: $f8 $b0
    ldh a, [rSVBK]                                ; $4319: $f0 $70
    ldh a, [rSVBK]                                ; $431b: $f0 $70
    ret nc                                        ; $431d: $d0

    ldh [$e0], a                                  ; $431e: $e0 $e0
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    dec c                                         ; $4322: $0d
    dec c                                         ; $4323: $0d
    dec bc                                        ; $4324: $0b
    rrca                                          ; $4325: $0f
    ld a, [bc]                                    ; $4326: $0a
    rrca                                          ; $4327: $0f
    dec d                                         ; $4328: $15
    ld e, $23                                     ; $4329: $1e $23
    ccf                                           ; $432b: $3f
    ld sp, $a03f                                  ; $432c: $31 $3f $a0
    cp a                                          ; $432f: $bf
    ret nz                                        ; $4330: $c0

    rst $38                                       ; $4331: $ff
    sub b                                         ; $4332: $90
    rst $38                                       ; $4333: $ff
    ld c, b                                       ; $4334: $48
    ld a, a                                       ; $4335: $7f
    inc a                                         ; $4336: $3c
    ccf                                           ; $4337: $3f
    inc hl                                        ; $4338: $23
    ccf                                           ; $4339: $3f
    ld d, $1f                                     ; $433a: $16 $1f
    rrca                                          ; $433c: $0f
    add hl, bc                                    ; $433d: $09
    rlca                                          ; $433e: $07
    rlca                                          ; $433f: $07
    nop                                           ; $4340: $00
    nop                                           ; $4341: $00
    ld h, b                                       ; $4342: $60
    ld h, b                                       ; $4343: $60
    and b                                         ; $4344: $a0
    ldh [$a0], a                                  ; $4345: $e0 $a0
    ldh [$50], a                                  ; $4347: $e0 $50
    ldh a, [$88]                                  ; $4349: $f0 $88
    ld hl, sp+$18                                 ; $434b: $f8 $18
    ld hl, sp+$0a                                 ; $434d: $f8 $0a
    ld a, [$fe06]                                 ; $434f: $fa $06 $fe
    ld [de], a                                    ; $4352: $12
    cp $24                                        ; $4353: $fe $24
    db $fc                                        ; $4355: $fc
    jr c, @-$06                                   ; $4356: $38 $f8

    ld d, b                                       ; $4358: $50
    ldh a, [$e0]                                  ; $4359: $f0 $e0
    ldh [$80], a                                  ; $435b: $e0 $80
    add b                                         ; $435d: $80
    nop                                           ; $435e: $00
    nop                                           ; $435f: $00
    ld bc, $0101                                  ; $4360: $01 $01 $01
    ld bc, $0101                                  ; $4363: $01 $01 $01
    ld bc, $0201                                  ; $4366: $01 $01 $02
    inc bc                                        ; $4369: $03
    ld [bc], a                                    ; $436a: $02
    inc bc                                        ; $436b: $03
    dec h                                         ; $436c: $25
    daa                                           ; $436d: $27
    jr c, jr_023_43af                             ; $436e: $38 $3f

    jr nz, jr_023_43b1                            ; $4370: $20 $3f

    ld sp, $223f                                  ; $4372: $31 $3f $22
    ccf                                           ; $4375: $3f
    inc de                                        ; $4376: $13
    rra                                           ; $4377: $1f
    dec c                                         ; $4378: $0d
    rrca                                          ; $4379: $0f
    ld a, [bc]                                    ; $437a: $0a
    rrca                                          ; $437b: $0f
    inc c                                         ; $437c: $0c
    rrca                                          ; $437d: $0f
    rlca                                          ; $437e: $07
    rlca                                          ; $437f: $07
    xor h                                         ; $4380: $ac
    xor h                                         ; $4381: $ac
    ld d, h                                       ; $4382: $54
    db $fc                                        ; $4383: $fc
    and h                                         ; $4384: $a4
    call c, $fe7a                                 ; $4385: $dc $7a $fe
    add c                                         ; $4388: $81
    rst $38                                       ; $4389: $ff
    add hl, bc                                    ; $438a: $09
    rst $38                                       ; $438b: $ff
    ld a, $f6                                     ; $438c: $3e $f6
    db $fc                                        ; $438e: $fc
    call z, $ec3c                                 ; $438f: $cc $3c $ec
    cp b                                          ; $4392: $b8
    add sp, -$10                                  ; $4393: $e8 $f0
    ret nc                                        ; $4395: $d0

    ldh [$60], a                                  ; $4396: $e0 $60
    ldh [$a0], a                                  ; $4398: $e0 $a0
    ld h, b                                       ; $439a: $60
    ldh [rSVBK], a                                ; $439b: $e0 $70
    ret nc                                        ; $439d: $d0

    ldh a, [$f0]                                  ; $439e: $f0 $f0
    ld b, $06                                     ; $43a0: $06 $06
    dec b                                         ; $43a2: $05
    rlca                                          ; $43a3: $07
    inc b                                         ; $43a4: $04
    rlca                                          ; $43a5: $07
    dec bc                                        ; $43a6: $0b
    rrca                                          ; $43a7: $0f
    inc d                                         ; $43a8: $14
    rra                                           ; $43a9: $1f
    ld de, $531f                                  ; $43aa: $11 $1f $53
    ld e, [hl]                                    ; $43ad: $5e
    ld l, a                                       ; $43ae: $6f

jr_023_43af:
    ld a, l                                       ; $43af: $7d
    ld b, a                                       ; $43b0: $47

jr_023_43b1:
    ld a, l                                       ; $43b1: $7d
    ld l, a                                       ; $43b2: $6f
    ld a, b                                       ; $43b3: $78
    ld d, a                                       ; $43b4: $57
    ld a, h                                       ; $43b5: $7c
    ccf                                           ; $43b6: $3f
    dec sp                                        ; $43b7: $3b
    daa                                           ; $43b8: $27
    dec a                                         ; $43b9: $3d
    ld d, $1f                                     ; $43ba: $16 $1f
    rrca                                          ; $43bc: $0f
    add hl, bc                                    ; $43bd: $09
    rlca                                          ; $43be: $07
    rlca                                          ; $43bf: $07
    or b                                          ; $43c0: $b0
    or b                                          ; $43c1: $b0
    ld d, b                                       ; $43c2: $50
    ldh a, [$90]                                  ; $43c3: $f0 $90
    ld [hl], b                                    ; $43c5: $70
    add sp, -$08                                  ; $43c6: $e8 $f8
    sub h                                         ; $43c8: $94
    db $fc                                        ; $43c9: $fc
    ld b, h                                       ; $43ca: $44
    db $fc                                        ; $43cb: $fc
    push hl                                       ; $43cc: $e5
    cp l                                          ; $43cd: $bd
    ei                                            ; $43ce: $fb
    ld e, a                                       ; $43cf: $5f
    pop af                                        ; $43d0: $f1
    ld e, a                                       ; $43d1: $5f
    db $ec                                        ; $43d2: $ec
    inc a                                         ; $43d3: $3c
    call nc, $f87c                                ; $43d4: $d4 $7c $f8
    cp b                                          ; $43d7: $b8
    ret nc                                        ; $43d8: $d0

    ld [hl], b                                    ; $43d9: $70
    ldh [$e0], a                                  ; $43da: $e0 $e0
    add b                                         ; $43dc: $80
    add b                                         ; $43dd: $80
    nop                                           ; $43de: $00
    nop                                           ; $43df: $00
    dec c                                         ; $43e0: $0d
    dec c                                         ; $43e1: $0d
    ld a, [bc]                                    ; $43e2: $0a
    rrca                                          ; $43e3: $0f
    add hl, bc                                    ; $43e4: $09
    ld c, $17                                     ; $43e5: $0e $17
    rra                                           ; $43e7: $1f
    jr nz, @+$41                                  ; $43e8: $20 $3f

    inc h                                         ; $43ea: $24
    ccf                                           ; $43eb: $3f
    rra                                           ; $43ec: $1f
    dec de                                        ; $43ed: $1b
    rrca                                          ; $43ee: $0f
    inc c                                         ; $43ef: $0c
    rrca                                          ; $43f0: $0f
    dec c                                         ; $43f1: $0d
    dec e                                         ; $43f2: $1d
    rla                                           ; $43f3: $17
    rrca                                          ; $43f4: $0f
    dec bc                                        ; $43f5: $0b
    rlca                                          ; $43f6: $07
    ld b, $07                                     ; $43f7: $06 $07
    dec b                                         ; $43f9: $05
    ld b, $07                                     ; $43fa: $06 $07
    inc c                                         ; $43fc: $0c
    rrca                                          ; $43fd: $0f
    rrca                                          ; $43fe: $0f
    rrca                                          ; $43ff: $0f
    ld h, b                                       ; $4400: $60
    ld h, b                                       ; $4401: $60
    and b                                         ; $4402: $a0
    ldh [$60], a                                  ; $4403: $e0 $60
    ldh [$a0], a                                  ; $4405: $e0 $a0
    ldh [$50], a                                  ; $4407: $e0 $50
    ldh a, [rNR10]                                ; $4409: $f0 $10
    ldh a, [$29]                                  ; $440b: $f0 $29
    ld sp, hl                                     ; $440d: $f9
    rst $00                                       ; $440e: $c7
    rst $38                                       ; $440f: $ff
    add hl, bc                                    ; $4410: $09
    rst $38                                       ; $4411: $ff
    adc h                                         ; $4412: $8c
    db $fc                                        ; $4413: $fc
    ld b, h                                       ; $4414: $44
    db $fc                                        ; $4415: $fc
    ret z                                         ; $4416: $c8

    ld hl, sp-$50                                 ; $4417: $f8 $b0
    ldh a, [rSVBK]                                ; $4419: $f0 $70
    ldh a, [rSVBK]                                ; $441b: $f0 $70
    ret nc                                        ; $441d: $d0

    ldh [$e0], a                                  ; $441e: $e0 $e0
    ld b, $06                                     ; $4420: $06 $06
    dec b                                         ; $4422: $05
    rlca                                          ; $4423: $07
    dec b                                         ; $4424: $05
    rlca                                          ; $4425: $07
    ld a, [bc]                                    ; $4426: $0a
    rrca                                          ; $4427: $0f
    ld de, $181f                                  ; $4428: $11 $1f $18
    rra                                           ; $442b: $1f
    ld d, b                                       ; $442c: $50
    ld e, a                                       ; $442d: $5f
    ld h, b                                       ; $442e: $60
    ld a, a                                       ; $442f: $7f
    ld c, b                                       ; $4430: $48
    ld a, a                                       ; $4431: $7f
    ld h, b                                       ; $4432: $60
    ld a, a                                       ; $4433: $7f
    ld c, b                                       ; $4434: $48
    ld a, a                                       ; $4435: $7f
    inc a                                         ; $4436: $3c
    ccf                                           ; $4437: $3f
    inc hl                                        ; $4438: $23
    ccf                                           ; $4439: $3f
    ld d, $1f                                     ; $443a: $16 $1f
    rrca                                          ; $443c: $0f
    add hl, bc                                    ; $443d: $09
    rlca                                          ; $443e: $07
    rlca                                          ; $443f: $07
    or b                                          ; $4440: $b0
    or b                                          ; $4441: $b0
    ret nc                                        ; $4442: $d0

    ldh a, [$50]                                  ; $4443: $f0 $50
    ldh a, [$a8]                                  ; $4445: $f0 $a8
    ld a, b                                       ; $4447: $78
    call nz, $8cfc                                ; $4448: $c4 $fc $8c
    db $fc                                        ; $444b: $fc
    dec b                                         ; $444c: $05
    db $fd                                        ; $444d: $fd
    inc bc                                        ; $444e: $03
    rst $38                                       ; $444f: $ff

jr_023_4450:
    add hl, bc                                    ; $4450: $09
    rst $38                                       ; $4451: $ff
    inc c                                         ; $4452: $0c
    db $fc                                        ; $4453: $fc
    inc h                                         ; $4454: $24
    db $fc                                        ; $4455: $fc
    jr c, jr_023_4450                             ; $4456: $38 $f8

    ld d, b                                       ; $4458: $50
    ldh a, [$e0]                                  ; $4459: $f0 $e0
    ldh [$80], a                                  ; $445b: $e0 $80
    add b                                         ; $445d: $80
    nop                                           ; $445e: $00
    nop                                           ; $445f: $00
    ld b, $06                                     ; $4460: $06 $06
    dec b                                         ; $4462: $05
    rlca                                          ; $4463: $07
    ld b, $07                                     ; $4464: $06 $07
    dec b                                         ; $4466: $05
    rlca                                          ; $4467: $07
    ld a, [bc]                                    ; $4468: $0a
    rrca                                          ; $4469: $0f
    ld [$940f], sp                                ; $446a: $08 $0f $94
    sbc a                                         ; $446d: $9f
    db $e3                                        ; $446e: $e3
    rst $38                                       ; $446f: $ff
    add b                                         ; $4470: $80
    rst $38                                       ; $4471: $ff
    ld sp, $223f                                  ; $4472: $31 $3f $22
    ccf                                           ; $4475: $3f
    inc de                                        ; $4476: $13
    rra                                           ; $4477: $1f
    dec c                                         ; $4478: $0d
    rrca                                          ; $4479: $0f
    ld a, [bc]                                    ; $447a: $0a
    rrca                                          ; $447b: $0f
    inc c                                         ; $447c: $0c
    rrca                                          ; $447d: $0f
    rlca                                          ; $447e: $07
    rlca                                          ; $447f: $07
    or b                                          ; $4480: $b0
    or b                                          ; $4481: $b0
    ld d, b                                       ; $4482: $50
    ldh a, [$90]                                  ; $4483: $f0 $90
    ld [hl], b                                    ; $4485: $70
    add sp, -$08                                  ; $4486: $e8 $f8
    inc b                                         ; $4488: $04
    db $fc                                        ; $4489: $fc
    inc h                                         ; $448a: $24
    db $fc                                        ; $448b: $fc
    ld hl, sp-$28                                 ; $448c: $f8 $d8
    ldh a, [$30]                                  ; $448e: $f0 $30
    ldh a, [$b0]                                  ; $4490: $f0 $b0
    cp b                                          ; $4492: $b8
    add sp, -$10                                  ; $4493: $e8 $f0
    ret nc                                        ; $4495: $d0

    ldh [$60], a                                  ; $4496: $e0 $60
    ldh [$a0], a                                  ; $4498: $e0 $a0
    ld h, b                                       ; $449a: $60
    ldh [rSVBK], a                                ; $449b: $e0 $70
    ret nc                                        ; $449d: $d0

    ldh a, [$f0]                                  ; $449e: $f0 $f0
    ld a, [de]                                    ; $44a0: $1a
    ld a, [de]                                    ; $44a1: $1a
    dec d                                         ; $44a2: $15
    rra                                           ; $44a3: $1f
    ld [de], a                                    ; $44a4: $12
    dec e                                         ; $44a5: $1d
    cpl                                           ; $44a6: $2f
    ccf                                           ; $44a7: $3f
    ld d, d                                       ; $44a8: $52
    ld a, a                                       ; $44a9: $7f
    ld b, l                                       ; $44aa: $45
    ld a, a                                       ; $44ab: $7f
    ld c, a                                       ; $44ac: $4f
    ld a, d                                       ; $44ad: $7a
    cp a                                          ; $44ae: $bf
    push af                                       ; $44af: $f5
    rra                                           ; $44b0: $1f
    push af                                       ; $44b1: $f5
    ld l, a                                       ; $44b2: $6f
    ld a, b                                       ; $44b3: $78
    ld d, a                                       ; $44b4: $57
    ld a, h                                       ; $44b5: $7c
    ccf                                           ; $44b6: $3f
    dec sp                                        ; $44b7: $3b
    daa                                           ; $44b8: $27
    dec a                                         ; $44b9: $3d
    ld d, $1f                                     ; $44ba: $16 $1f
    rrca                                          ; $44bc: $0f
    add hl, bc                                    ; $44bd: $09
    rlca                                          ; $44be: $07
    rlca                                          ; $44bf: $07
    ret nz                                        ; $44c0: $c0

    ret nz                                        ; $44c1: $c0

    ld b, b                                       ; $44c2: $40
    ret nz                                        ; $44c3: $c0

    ld b, b                                       ; $44c4: $40
    ret nz                                        ; $44c5: $c0

    and b                                         ; $44c6: $a0
    ldh [$50], a                                  ; $44c7: $e0 $50
    ldh a, [rNR10]                                ; $44c9: $f0 $10
    ldh a, [$94]                                  ; $44cb: $f0 $94
    db $f4                                        ; $44cd: $f4
    db $ec                                        ; $44ce: $ec
    ld a, h                                       ; $44cf: $7c
    call nz, $ec7c                                ; $44d0: $c4 $7c $ec
    inc a                                         ; $44d3: $3c
    call nc, $f87c                                ; $44d4: $d4 $7c $f8
    cp b                                          ; $44d7: $b8
    ret nc                                        ; $44d8: $d0

    ld [hl], b                                    ; $44d9: $70
    ldh [$e0], a                                  ; $44da: $e0 $e0
    add b                                         ; $44dc: $80
    add b                                         ; $44dd: $80
    nop                                           ; $44de: $00
    nop                                           ; $44df: $00
    dec [hl]                                      ; $44e0: $35
    dec [hl]                                      ; $44e1: $35
    ld a, [hl+]                                   ; $44e2: $2a
    ccf                                           ; $44e3: $3f
    dec h                                         ; $44e4: $25
    dec sp                                        ; $44e5: $3b
    ld e, [hl]                                    ; $44e6: $5e
    ld a, a                                       ; $44e7: $7f
    add c                                         ; $44e8: $81
    rst $38                                       ; $44e9: $ff
    sub b                                         ; $44ea: $90
    rst $38                                       ; $44eb: $ff
    ld a, h                                       ; $44ec: $7c
    ld l, a                                       ; $44ed: $6f
    ccf                                           ; $44ee: $3f
    inc sp                                        ; $44ef: $33
    inc a                                         ; $44f0: $3c
    scf                                           ; $44f1: $37
    dec e                                         ; $44f2: $1d
    rla                                           ; $44f3: $17
    rrca                                          ; $44f4: $0f
    dec bc                                        ; $44f5: $0b
    rlca                                          ; $44f6: $07
    ld b, $07                                     ; $44f7: $06 $07
    dec b                                         ; $44f9: $05
    ld b, $07                                     ; $44fa: $06 $07
    inc c                                         ; $44fc: $0c
    rrca                                          ; $44fd: $0f
    rrca                                          ; $44fe: $0f
    rrca                                          ; $44ff: $0f
    add b                                         ; $4500: $80
    add b                                         ; $4501: $80
    add b                                         ; $4502: $80
    add b                                         ; $4503: $80
    add b                                         ; $4504: $80
    add b                                         ; $4505: $80
    add b                                         ; $4506: $80
    add b                                         ; $4507: $80
    ld b, b                                       ; $4508: $40
    ret nz                                        ; $4509: $c0

    ld b, b                                       ; $450a: $40
    ret nz                                        ; $450b: $c0

    and h                                         ; $450c: $a4
    db $e4                                        ; $450d: $e4
    inc e                                         ; $450e: $1c
    db $fc                                        ; $450f: $fc
    inc h                                         ; $4510: $24
    db $fc                                        ; $4511: $fc
    adc h                                         ; $4512: $8c
    db $fc                                        ; $4513: $fc
    ld b, h                                       ; $4514: $44
    db $fc                                        ; $4515: $fc
    ret z                                         ; $4516: $c8

    ld hl, sp-$50                                 ; $4517: $f8 $b0
    ldh a, [rSVBK]                                ; $4519: $f0 $70
    ldh a, [rSVBK]                                ; $451b: $f0 $70
    ret nc                                        ; $451d: $d0

    ldh [$e0], a                                  ; $451e: $e0 $e0
    ld a, [de]                                    ; $4520: $1a
    ld a, [de]                                    ; $4521: $1a
    rla                                           ; $4522: $17
    rra                                           ; $4523: $1f
    dec d                                         ; $4524: $15
    rra                                           ; $4525: $1f
    ld a, [hl+]                                   ; $4526: $2a
    dec a                                         ; $4527: $3d
    ld b, a                                       ; $4528: $47
    ld a, a                                       ; $4529: $7f
    ld h, d                                       ; $452a: $62
    ld a, a                                       ; $452b: $7f
    ld b, b                                       ; $452c: $40
    ld a, a                                       ; $452d: $7f
    add b                                         ; $452e: $80
    rst $38                                       ; $452f: $ff
    jr nz, @+$01                                  ; $4530: $20 $ff

    ld h, b                                       ; $4532: $60
    ld a, a                                       ; $4533: $7f
    ld c, b                                       ; $4534: $48
    ld a, a                                       ; $4535: $7f
    inc a                                         ; $4536: $3c
    ccf                                           ; $4537: $3f
    inc hl                                        ; $4538: $23
    ccf                                           ; $4539: $3f
    ld d, $1f                                     ; $453a: $16 $1f
    rrca                                          ; $453c: $0f
    add hl, bc                                    ; $453d: $09
    rlca                                          ; $453e: $07
    rlca                                          ; $453f: $07
    ret nz                                        ; $4540: $c0

    ret nz                                        ; $4541: $c0

    ld b, b                                       ; $4542: $40
    ret nz                                        ; $4543: $c0

    ld b, b                                       ; $4544: $40
    ret nz                                        ; $4545: $c0

    and b                                         ; $4546: $a0
    ldh [rNR10], a                                ; $4547: $e0 $10
    ldh a, [$30]                                  ; $4549: $f0 $30
    ldh a, [rNR14]                                ; $454b: $f0 $14
    db $f4                                        ; $454d: $f4
    inc c                                         ; $454e: $0c
    db $fc                                        ; $454f: $fc

jr_023_4550:
    inc h                                         ; $4550: $24
    db $fc                                        ; $4551: $fc
    inc c                                         ; $4552: $0c
    db $fc                                        ; $4553: $fc
    inc h                                         ; $4554: $24
    db $fc                                        ; $4555: $fc
    jr c, jr_023_4550                             ; $4556: $38 $f8

    ld d, b                                       ; $4558: $50
    ldh a, [$e0]                                  ; $4559: $f0 $e0
    ldh [$80], a                                  ; $455b: $e0 $80
    add b                                         ; $455d: $80
    nop                                           ; $455e: $00
    nop                                           ; $455f: $00
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    inc bc                                        ; $4562: $03
    inc bc                                        ; $4563: $03
    ld [bc], a                                    ; $4564: $02
    inc bc                                        ; $4565: $03
    inc bc                                        ; $4566: $03
    inc bc                                        ; $4567: $03
    ld [bc], a                                    ; $4568: $02
    inc bc                                        ; $4569: $03
    ld bc, $2603                                  ; $456a: $01 $03 $26
    daa                                           ; $456d: $27
    add hl, sp                                    ; $456e: $39
    ccf                                           ; $456f: $3f
    jr nz, jr_023_45b1                            ; $4570: $20 $3f

    add hl, de                                    ; $4572: $19
    rra                                           ; $4573: $1f
    dec bc                                        ; $4574: $0b
    rrca                                          ; $4575: $0f
    dec b                                         ; $4576: $05
    rlca                                          ; $4577: $07
    ld b, $07                                     ; $4578: $06 $07
    inc b                                         ; $457a: $04
    rlca                                          ; $457b: $07
    inc bc                                        ; $457c: $03
    inc bc                                        ; $457d: $03
    nop                                           ; $457e: $00
    nop                                           ; $457f: $00
    nop                                           ; $4580: $00
    nop                                           ; $4581: $00
    ld [hl], b                                    ; $4582: $70
    ld [hl], b                                    ; $4583: $70
    sub b                                         ; $4584: $90
    ldh a, [$50]                                  ; $4585: $f0 $50
    or b                                          ; $4587: $b0
    add sp, -$08                                  ; $4588: $e8 $f8
    inc b                                         ; $458a: $04
    db $fc                                        ; $458b: $fc
    ld a, b                                       ; $458c: $78
    ret c                                         ; $458d: $d8

    ldh a, [$b0]                                  ; $458e: $f0 $b0
    ld [hl], b                                    ; $4590: $70
    ldh a, [$b0]                                  ; $4591: $f0 $b0
    ret nc                                        ; $4593: $d0

    ret nz                                        ; $4594: $c0

    ld b, b                                       ; $4595: $40
    ret nz                                        ; $4596: $c0

    add b                                         ; $4597: $80
    ld b, b                                       ; $4598: $40
    ret nz                                        ; $4599: $c0

    ld h, b                                       ; $459a: $60
    ldh [$e0], a                                  ; $459b: $e0 $e0
    ldh [rP1], a                                  ; $459d: $e0 $00
    nop                                           ; $459f: $00
    nop                                           ; $45a0: $00
    nop                                           ; $45a1: $00
    dec b                                         ; $45a2: $05
    dec b                                         ; $45a3: $05
    ld b, $07                                     ; $45a4: $06 $07
    dec b                                         ; $45a6: $05
    ld b, $0b                                     ; $45a7: $06 $0b
    rrca                                          ; $45a9: $0f
    dec d                                         ; $45aa: $15
    rra                                           ; $45ab: $1f
    ld d, e                                       ; $45ac: $53
    ld e, l                                       ; $45ad: $5d
    ld l, a                                       ; $45ae: $6f
    ld a, [hl]                                    ; $45af: $7e
    ld b, a                                       ; $45b0: $47

jr_023_45b1:
    ld a, [hl]                                    ; $45b1: $7e
    scf                                           ; $45b2: $37
    inc a                                         ; $45b3: $3c
    rra                                           ; $45b4: $1f
    rra                                           ; $45b5: $1f
    inc de                                        ; $45b6: $13
    dec e                                         ; $45b7: $1d
    ld a, [bc]                                    ; $45b8: $0a
    rrca                                          ; $45b9: $0f
    rlca                                          ; $45ba: $07
    dec b                                         ; $45bb: $05
    inc bc                                        ; $45bc: $03
    inc bc                                        ; $45bd: $03
    nop                                           ; $45be: $00
    nop                                           ; $45bf: $00
    nop                                           ; $45c0: $00
    nop                                           ; $45c1: $00
    ld b, b                                       ; $45c2: $40
    ld b, b                                       ; $45c3: $40
    add b                                         ; $45c4: $80

jr_023_45c5:
    ret nz                                        ; $45c5: $c0

    nop                                           ; $45c6: $00
    ret nz                                        ; $45c7: $c0

    ldh [$e0], a                                  ; $45c8: $e0 $e0
    db $10                                        ; $45ca: $10
    ldh a, [$d4]                                  ; $45cb: $f0 $d4
    ld [hl], h                                    ; $45cd: $74
    db $ec                                        ; $45ce: $ec
    cp h                                          ; $45cf: $bc
    call nz, $d8bc                                ; $45d0: $c4 $bc $d8
    jr c, jr_023_45c5                             ; $45d3: $38 $f0

    or b                                          ; $45d5: $b0
    ldh [$60], a                                  ; $45d6: $e0 $60
    ret nz                                        ; $45d8: $c0

    ret nz                                        ; $45d9: $c0

    add b                                         ; $45da: $80
    add b                                         ; $45db: $80
    nop                                           ; $45dc: $00
    nop                                           ; $45dd: $00
    nop                                           ; $45de: $00
    nop                                           ; $45df: $00
    nop                                           ; $45e0: $00
    nop                                           ; $45e1: $00
    ld c, $0e                                     ; $45e2: $0e $0e
    add hl, bc                                    ; $45e4: $09
    rrca                                          ; $45e5: $0f
    ld a, [bc]                                    ; $45e6: $0a
    dec c                                         ; $45e7: $0d
    rla                                           ; $45e8: $17
    rra                                           ; $45e9: $1f
    jr nz, jr_023_462b                            ; $45ea: $20 $3f

    ld e, $1b                                     ; $45ec: $1e $1b
    rrca                                          ; $45ee: $0f
    dec c                                         ; $45ef: $0d
    ld c, $0f                                     ; $45f0: $0e $0f
    dec c                                         ; $45f2: $0d
    dec bc                                        ; $45f3: $0b
    inc bc                                        ; $45f4: $03
    ld [bc], a                                    ; $45f5: $02
    inc bc                                        ; $45f6: $03
    ld bc, $0302                                  ; $45f7: $01 $02 $03
    inc b                                         ; $45fa: $04
    rlca                                          ; $45fb: $07
    rlca                                          ; $45fc: $07
    rlca                                          ; $45fd: $07
    nop                                           ; $45fe: $00
    nop                                           ; $45ff: $00
    nop                                           ; $4600: $00
    nop                                           ; $4601: $00
    ret nz                                        ; $4602: $c0

    ret nz                                        ; $4603: $c0

    ld b, b                                       ; $4604: $40
    ret nz                                        ; $4605: $c0

    ret nz                                        ; $4606: $c0

    ret nz                                        ; $4607: $c0

    ld b, b                                       ; $4608: $40
    ret nz                                        ; $4609: $c0

    add b                                         ; $460a: $80
    ret nz                                        ; $460b: $c0

    ld h, h                                       ; $460c: $64
    db $e4                                        ; $460d: $e4
    sbc h                                         ; $460e: $9c
    db $fc                                        ; $460f: $fc
    inc h                                         ; $4610: $24
    db $fc                                        ; $4611: $fc
    sbc b                                         ; $4612: $98
    ld hl, sp-$30                                 ; $4613: $f8 $d0
    ldh a, [$a0]                                  ; $4615: $f0 $a0
    ldh [$60], a                                  ; $4617: $e0 $60
    ldh [$60], a                                  ; $4619: $e0 $60
    ldh [$c0], a                                  ; $461b: $e0 $c0
    ret nz                                        ; $461d: $c0

    nop                                           ; $461e: $00
    nop                                           ; $461f: $00
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00
    dec b                                         ; $4622: $05
    dec b                                         ; $4623: $05
    rlca                                          ; $4624: $07
    rlca                                          ; $4625: $07
    ld b, $07                                     ; $4626: $06 $07
    add hl, bc                                    ; $4628: $09
    ld c, $13                                     ; $4629: $0e $13

jr_023_462b:
    rra                                           ; $462b: $1f
    ld d, b                                       ; $462c: $50
    ld e, a                                       ; $462d: $5f
    ld h, b                                       ; $462e: $60
    ld a, a                                       ; $462f: $7f
    ld c, b                                       ; $4630: $48
    ld a, a                                       ; $4631: $7f
    jr nc, jr_023_4673                            ; $4632: $30 $3f

    inc e                                         ; $4634: $1c
    rra                                           ; $4635: $1f
    inc de                                        ; $4636: $13
    rra                                           ; $4637: $1f
    ld a, [bc]                                    ; $4638: $0a
    rrca                                          ; $4639: $0f
    rlca                                          ; $463a: $07
    dec b                                         ; $463b: $05
    inc bc                                        ; $463c: $03
    inc bc                                        ; $463d: $03
    nop                                           ; $463e: $00
    nop                                           ; $463f: $00
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    ld b, b                                       ; $4642: $40
    ld b, b                                       ; $4643: $40
    add b                                         ; $4644: $80
    ret nz                                        ; $4645: $c0

jr_023_4646:
    add b                                         ; $4646: $80
    ret nz                                        ; $4647: $c0

    ld h, b                                       ; $4648: $60
    ldh [$90], a                                  ; $4649: $e0 $90
    ldh a, [rNR14]                                ; $464b: $f0 $14
    db $f4                                        ; $464d: $f4
    inc c                                         ; $464e: $0c
    db $fc                                        ; $464f: $fc
    inc h                                         ; $4650: $24
    db $fc                                        ; $4651: $fc
    jr @-$06                                      ; $4652: $18 $f8

    jr nc, jr_023_4646                            ; $4654: $30 $f0

    ld h, b                                       ; $4656: $60
    ldh [$c0], a                                  ; $4657: $e0 $c0
    ret nz                                        ; $4659: $c0

    add b                                         ; $465a: $80
    add b                                         ; $465b: $80
    nop                                           ; $465c: $00
    nop                                           ; $465d: $00
    nop                                           ; $465e: $00
    nop                                           ; $465f: $00
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    nop                                           ; $4666: $00
    nop                                           ; $4667: $00
    nop                                           ; $4668: $00
    nop                                           ; $4669: $00
    nop                                           ; $466a: $00
    nop                                           ; $466b: $00
    nop                                           ; $466c: $00
    nop                                           ; $466d: $00
    nop                                           ; $466e: $00
    nop                                           ; $466f: $00
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00

jr_023_4673:
    nop                                           ; $4673: $00
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    nop                                           ; $467a: $00
    nop                                           ; $467b: $00
    nop                                           ; $467c: $00
    nop                                           ; $467d: $00
    nop                                           ; $467e: $00
    nop                                           ; $467f: $00
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    nop                                           ; $4682: $00
    nop                                           ; $4683: $00
    nop                                           ; $4684: $00
    nop                                           ; $4685: $00
    nop                                           ; $4686: $00
    nop                                           ; $4687: $00
    nop                                           ; $4688: $00
    nop                                           ; $4689: $00
    nop                                           ; $468a: $00
    nop                                           ; $468b: $00
    nop                                           ; $468c: $00
    nop                                           ; $468d: $00
    nop                                           ; $468e: $00
    nop                                           ; $468f: $00
    nop                                           ; $4690: $00
    nop                                           ; $4691: $00
    nop                                           ; $4692: $00
    nop                                           ; $4693: $00
    nop                                           ; $4694: $00
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
    nop                                           ; $46a0: $00
    nop                                           ; $46a1: $00
    nop                                           ; $46a2: $00
    nop                                           ; $46a3: $00
    nop                                           ; $46a4: $00
    nop                                           ; $46a5: $00
    nop                                           ; $46a6: $00
    nop                                           ; $46a7: $00
    nop                                           ; $46a8: $00
    nop                                           ; $46a9: $00
    nop                                           ; $46aa: $00
    nop                                           ; $46ab: $00
    nop                                           ; $46ac: $00
    nop                                           ; $46ad: $00
    nop                                           ; $46ae: $00
    nop                                           ; $46af: $00
    nop                                           ; $46b0: $00
    nop                                           ; $46b1: $00
    nop                                           ; $46b2: $00
    nop                                           ; $46b3: $00
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
    nop                                           ; $46c0: $00
    nop                                           ; $46c1: $00
    nop                                           ; $46c2: $00
    nop                                           ; $46c3: $00
    nop                                           ; $46c4: $00
    nop                                           ; $46c5: $00
    nop                                           ; $46c6: $00
    nop                                           ; $46c7: $00
    nop                                           ; $46c8: $00
    nop                                           ; $46c9: $00
    nop                                           ; $46ca: $00
    nop                                           ; $46cb: $00
    nop                                           ; $46cc: $00
    nop                                           ; $46cd: $00
    nop                                           ; $46ce: $00
    nop                                           ; $46cf: $00
    nop                                           ; $46d0: $00
    nop                                           ; $46d1: $00
    nop                                           ; $46d2: $00
    nop                                           ; $46d3: $00
    nop                                           ; $46d4: $00
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
    nop                                           ; $46e0: $00
    nop                                           ; $46e1: $00
    nop                                           ; $46e2: $00
    nop                                           ; $46e3: $00
    nop                                           ; $46e4: $00
    nop                                           ; $46e5: $00
    nop                                           ; $46e6: $00
    nop                                           ; $46e7: $00
    nop                                           ; $46e8: $00
    nop                                           ; $46e9: $00
    nop                                           ; $46ea: $00
    nop                                           ; $46eb: $00
    nop                                           ; $46ec: $00
    nop                                           ; $46ed: $00
    nop                                           ; $46ee: $00
    nop                                           ; $46ef: $00
    nop                                           ; $46f0: $00
    nop                                           ; $46f1: $00
    nop                                           ; $46f2: $00
    nop                                           ; $46f3: $00
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
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    nop                                           ; $4703: $00
    nop                                           ; $4704: $00
    nop                                           ; $4705: $00
    nop                                           ; $4706: $00
    nop                                           ; $4707: $00
    nop                                           ; $4708: $00
    nop                                           ; $4709: $00
    nop                                           ; $470a: $00
    nop                                           ; $470b: $00
    nop                                           ; $470c: $00
    nop                                           ; $470d: $00
    nop                                           ; $470e: $00
    nop                                           ; $470f: $00
    nop                                           ; $4710: $00
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00
    nop                                           ; $4713: $00
    nop                                           ; $4714: $00
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
    nop                                           ; $4720: $00
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00
    rlca                                          ; $4724: $07
    rlca                                          ; $4725: $07
    dec b                                         ; $4726: $05
    rlca                                          ; $4727: $07
    dec b                                         ; $4728: $05
    ld b, $0b                                     ; $4729: $06 $0b
    rrca                                          ; $472b: $0f
    jr z, jr_023_475d                             ; $472c: $28 $2f

    jr nc, jr_023_476f                            ; $472e: $30 $3f

    inc h                                         ; $4730: $24
    ccf                                           ; $4731: $3f
    jr jr_023_4753                                ; $4732: $18 $1f

    ld d, $1f                                     ; $4734: $16 $1f
    add hl, bc                                    ; $4736: $09
    rrca                                          ; $4737: $0f
    dec bc                                        ; $4738: $0b
    rrca                                          ; $4739: $0f
    rlca                                          ; $473a: $07
    inc b                                         ; $473b: $04
    inc bc                                        ; $473c: $03
    inc bc                                        ; $473d: $03
    nop                                           ; $473e: $00
    nop                                           ; $473f: $00
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    nop                                           ; $4743: $00
    ret nz                                        ; $4744: $c0

    ret nz                                        ; $4745: $c0

    ld b, b                                       ; $4746: $40
    ret nz                                        ; $4747: $c0

    ld b, b                                       ; $4748: $40
    ret nz                                        ; $4749: $c0

    and b                                         ; $474a: $a0
    ldh [$28], a                                  ; $474b: $e0 $28
    add sp, $18                                   ; $474d: $e8 $18
    ld hl, sp+$48                                 ; $474f: $f8 $48
    ld hl, sp+$30                                 ; $4751: $f8 $30

jr_023_4753:
    ldh a, [$50]                                  ; $4753: $f0 $50
    ldh a, [$60]                                  ; $4755: $f0 $60
    ldh [$c0], a                                  ; $4757: $e0 $c0
    ret nz                                        ; $4759: $c0

    add b                                         ; $475a: $80
    add b                                         ; $475b: $80
    nop                                           ; $475c: $00

jr_023_475d:
    nop                                           ; $475d: $00
    nop                                           ; $475e: $00
    nop                                           ; $475f: $00
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00
    nop                                           ; $4763: $00
    nop                                           ; $4764: $00
    nop                                           ; $4765: $00
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00
    nop                                           ; $4768: $00
    nop                                           ; $4769: $00
    nop                                           ; $476a: $00
    nop                                           ; $476b: $00
    nop                                           ; $476c: $00
    nop                                           ; $476d: $00
    nop                                           ; $476e: $00

jr_023_476f:
    nop                                           ; $476f: $00
    nop                                           ; $4770: $00
    nop                                           ; $4771: $00
    nop                                           ; $4772: $00
    nop                                           ; $4773: $00
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
    nop                                           ; $4780: $00
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    nop                                           ; $4783: $00
    nop                                           ; $4784: $00
    nop                                           ; $4785: $00
    nop                                           ; $4786: $00
    nop                                           ; $4787: $00
    nop                                           ; $4788: $00
    nop                                           ; $4789: $00
    nop                                           ; $478a: $00
    nop                                           ; $478b: $00
    nop                                           ; $478c: $00
    nop                                           ; $478d: $00
    nop                                           ; $478e: $00
    nop                                           ; $478f: $00
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    nop                                           ; $4793: $00
    nop                                           ; $4794: $00
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
    nop                                           ; $47a0: $00
    nop                                           ; $47a1: $00
    nop                                           ; $47a2: $00
    nop                                           ; $47a3: $00
    nop                                           ; $47a4: $00
    nop                                           ; $47a5: $00
    nop                                           ; $47a6: $00
    nop                                           ; $47a7: $00
    nop                                           ; $47a8: $00
    nop                                           ; $47a9: $00
    nop                                           ; $47aa: $00
    nop                                           ; $47ab: $00
    nop                                           ; $47ac: $00
    nop                                           ; $47ad: $00
    nop                                           ; $47ae: $00
    nop                                           ; $47af: $00
    nop                                           ; $47b0: $00
    nop                                           ; $47b1: $00
    nop                                           ; $47b2: $00
    nop                                           ; $47b3: $00
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
    nop                                           ; $47c0: $00
    nop                                           ; $47c1: $00
    nop                                           ; $47c2: $00
    nop                                           ; $47c3: $00
    nop                                           ; $47c4: $00
    nop                                           ; $47c5: $00
    nop                                           ; $47c6: $00
    nop                                           ; $47c7: $00
    nop                                           ; $47c8: $00
    nop                                           ; $47c9: $00
    nop                                           ; $47ca: $00
    nop                                           ; $47cb: $00
    nop                                           ; $47cc: $00
    nop                                           ; $47cd: $00
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00
    nop                                           ; $47d0: $00
    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    nop                                           ; $47d3: $00
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
    nop                                           ; $47e0: $00
    nop                                           ; $47e1: $00
    nop                                           ; $47e2: $00
    nop                                           ; $47e3: $00
    nop                                           ; $47e4: $00
    nop                                           ; $47e5: $00
    nop                                           ; $47e6: $00
    nop                                           ; $47e7: $00
    nop                                           ; $47e8: $00
    nop                                           ; $47e9: $00
    nop                                           ; $47ea: $00
    nop                                           ; $47eb: $00
    nop                                           ; $47ec: $00
    nop                                           ; $47ed: $00
    nop                                           ; $47ee: $00
    nop                                           ; $47ef: $00
    nop                                           ; $47f0: $00
    nop                                           ; $47f1: $00
    nop                                           ; $47f2: $00
    nop                                           ; $47f3: $00
    nop                                           ; $47f4: $00
    nop                                           ; $47f5: $00
    nop                                           ; $47f6: $00
    nop                                           ; $47f7: $00
    nop                                           ; $47f8: $00
    nop                                           ; $47f9: $00
    nop                                           ; $47fa: $00
    nop                                           ; $47fb: $00
    nop                                           ; $47fc: $00
    nop                                           ; $47fd: $00
    nop                                           ; $47fe: $00
    nop                                           ; $47ff: $00
    nop                                           ; $4800: $00
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    nop                                           ; $4803: $00
    nop                                           ; $4804: $00
    nop                                           ; $4805: $00
    nop                                           ; $4806: $00
    nop                                           ; $4807: $00
    nop                                           ; $4808: $00
    nop                                           ; $4809: $00
    nop                                           ; $480a: $00
    nop                                           ; $480b: $00
    nop                                           ; $480c: $00
    nop                                           ; $480d: $00
    nop                                           ; $480e: $00
    nop                                           ; $480f: $00
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    nop                                           ; $4813: $00
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    nop                                           ; $4816: $00
    nop                                           ; $4817: $00
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    nop                                           ; $481a: $00
    nop                                           ; $481b: $00
    nop                                           ; $481c: $00
    nop                                           ; $481d: $00
    nop                                           ; $481e: $00
    nop                                           ; $481f: $00
    nop                                           ; $4820: $00
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    rlca                                          ; $4824: $07
    rlca                                          ; $4825: $07
    dec b                                         ; $4826: $05
    rlca                                          ; $4827: $07
    dec b                                         ; $4828: $05
    ld b, $0b                                     ; $4829: $06 $0b
    rrca                                          ; $482b: $0f
    jr z, jr_023_485d                             ; $482c: $28 $2f

    jr nc, jr_023_486f                            ; $482e: $30 $3f

    inc h                                         ; $4830: $24
    ccf                                           ; $4831: $3f
    jr jr_023_4853                                ; $4832: $18 $1f

    inc d                                         ; $4834: $14
    rra                                           ; $4835: $1f
    dec c                                         ; $4836: $0d
    rrca                                          ; $4837: $0f
    rlca                                          ; $4838: $07
    rlca                                          ; $4839: $07
    inc bc                                        ; $483a: $03
    ld [bc], a                                    ; $483b: $02
    ld bc, $0001                                  ; $483c: $01 $01 $00
    nop                                           ; $483f: $00
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    nop                                           ; $4843: $00
    ret nz                                        ; $4844: $c0

    ret nz                                        ; $4845: $c0

    ld b, b                                       ; $4846: $40
    ret nz                                        ; $4847: $c0

    ld b, b                                       ; $4848: $40
    ret nz                                        ; $4849: $c0

    and b                                         ; $484a: $a0
    ldh [$28], a                                  ; $484b: $e0 $28
    add sp, $18                                   ; $484d: $e8 $18
    ld hl, sp+$48                                 ; $484f: $f8 $48
    ld hl, sp+$30                                 ; $4851: $f8 $30

jr_023_4853:
    ldh a, [$d0]                                  ; $4853: $f0 $d0
    ldh a, [rNR41]                                ; $4855: $f0 $20
    ldh [$a0], a                                  ; $4857: $e0 $a0
    ldh [$c0], a                                  ; $4859: $e0 $c0
    ld b, b                                       ; $485b: $40
    add b                                         ; $485c: $80

jr_023_485d:
    add b                                         ; $485d: $80
    nop                                           ; $485e: $00
    nop                                           ; $485f: $00
    halt                                          ; $4860: $76
    ld c, b                                       ; $4861: $48
    ld a, c                                       ; $4862: $79
    ld c, b                                       ; $4863: $48
    ld a, a                                       ; $4864: $7f
    ld c, b                                       ; $4865: $48
    add d                                         ; $4866: $82
    ld c, b                                       ; $4867: $48
    adc l                                         ; $4868: $8d
    ld c, b                                       ; $4869: $48
    sub h                                         ; $486a: $94
    ld c, b                                       ; $486b: $48
    sbc h                                         ; $486c: $9c
    ld c, b                                       ; $486d: $48
    or b                                          ; $486e: $b0

jr_023_486f:
    ld c, b                                       ; $486f: $48
    cp h                                          ; $4870: $bc
    ld c, b                                       ; $4871: $48
    halt                                          ; $4872: $76
    ld c, b                                       ; $4873: $48
    push bc                                       ; $4874: $c5
    ld c, b                                       ; $4875: $48
    nop                                           ; $4876: $00
    rst $38                                       ; $4877: $ff
    db $fd                                        ; $4878: $fd
    nop                                           ; $4879: $00
    ld e, $01                                     ; $487a: $1e $01
    ld e, $ff                                     ; $487c: $1e $ff
    nop                                           ; $487e: $00
    ld [bc], a                                    ; $487f: $02
    rst $38                                       ; $4880: $ff
    db $fd                                        ; $4881: $fd
    ld [bc], a                                    ; $4882: $02
    inc c                                         ; $4883: $0c
    inc bc                                        ; $4884: $03
    inc c                                         ; $4885: $0c
    inc b                                         ; $4886: $04
    jr jr_023_488b                                ; $4887: $18 $02

    inc c                                         ; $4889: $0c
    dec b                                         ; $488a: $05

jr_023_488b:
    inc c                                         ; $488b: $0c
    db $fd                                        ; $488c: $fd
    ld [bc], a                                    ; $488d: $02
    jr @+$05                                      ; $488e: $18 $03

    jr jr_023_4894                                ; $4890: $18 $02

    jr @-$01                                      ; $4892: $18 $fd

jr_023_4894:
    nop                                           ; $4894: $00
    ld a, [bc]                                    ; $4895: $0a
    ld b, $1e                                     ; $4896: $06 $1e
    nop                                           ; $4898: $00
    ld a, [bc]                                    ; $4899: $0a
    cp $01                                        ; $489a: $fe $01
    nop                                           ; $489c: $00
    ld a, [bc]                                    ; $489d: $0a
    rlca                                          ; $489e: $07
    ld a, [bc]                                    ; $489f: $0a
    nop                                           ; $48a0: $00
    inc bc                                        ; $48a1: $03
    ld [$000a], sp                                ; $48a2: $08 $0a $00
    inc bc                                        ; $48a5: $03
    rlca                                          ; $48a6: $07
    ld a, [bc]                                    ; $48a7: $0a
    nop                                           ; $48a8: $00
    inc bc                                        ; $48a9: $03
    ld [$000a], sp                                ; $48aa: $08 $0a $00
    ld a, [bc]                                    ; $48ad: $0a
    cp $01                                        ; $48ae: $fe $01
    nop                                           ; $48b0: $00
    ld a, [bc]                                    ; $48b1: $0a
    add hl, bc                                    ; $48b2: $09
    ld [$0800], sp                                ; $48b3: $08 $00 $08
    add hl, bc                                    ; $48b6: $09
    ld [$0a00], sp                                ; $48b7: $08 $00 $0a
    cp $01                                        ; $48ba: $fe $01
    ld [bc], a                                    ; $48bc: $02
    ld [de], a                                    ; $48bd: $12
    inc bc                                        ; $48be: $03
    ld [de], a                                    ; $48bf: $12
    ld [bc], a                                    ; $48c0: $02
    ld e, $05                                     ; $48c1: $1e $05
    ld [de], a                                    ; $48c3: $12
    db $fd                                        ; $48c4: $fd
    ld a, [bc]                                    ; $48c5: $0a
    ld e, $0b                                     ; $48c6: $1e $0b
    ld e, $ff                                     ; $48c8: $1e $ff
    nop                                           ; $48ca: $00
    ld h, e                                       ; $48cb: $63
    inc b                                         ; $48cc: $04
    db $db                                        ; $48cd: $db
    ld c, b                                       ; $48ce: $48
    ldh a, [rHDMA2]                               ; $48cf: $f0 $52
    db $d3                                        ; $48d1: $d3
    ld c, b                                       ; $48d2: $48
    ld a, b                                       ; $48d3: $78
    ld a, [hl-]                                   ; $48d4: $3a
    rst $38                                       ; $48d5: $ff
    ld l, e                                       ; $48d6: $6b
    add b                                         ; $48d7: $80
    ld [de], a                                    ; $48d8: $12
    nop                                           ; $48d9: $00
    nop                                           ; $48da: $00
    ldh a, [rOBP0]                                ; $48db: $f0 $48
    ldh a, [rOBP1]                                ; $48dd: $f0 $49
    ldh a, [rWY]                                  ; $48df: $f0 $4a
    ldh a, [rWX]                                  ; $48e1: $f0 $4b

jr_023_48e3:
    ldh a, [$4c]                                  ; $48e3: $f0 $4c
    ldh a, [rKEY1]                                ; $48e5: $f0 $4d
    ldh a, [$4e]                                  ; $48e7: $f0 $4e
    ldh a, [rVBK]                                 ; $48e9: $f0 $4f
    ldh a, [$50]                                  ; $48eb: $f0 $50
    ldh a, [rHDMA1]                               ; $48ed: $f0 $51
    nop                                           ; $48ef: $00
    nop                                           ; $48f0: $00
    nop                                           ; $48f1: $00
    nop                                           ; $48f2: $00
    nop                                           ; $48f3: $00
    inc bc                                        ; $48f4: $03
    inc bc                                        ; $48f5: $03
    inc bc                                        ; $48f6: $03
    inc bc                                        ; $48f7: $03
    ld b, $07                                     ; $48f8: $06 $07
    ld b, $07                                     ; $48fa: $06 $07
    ld [bc], a                                    ; $48fc: $02
    inc bc                                        ; $48fd: $03
    ld [bc], a                                    ; $48fe: $02
    inc bc                                        ; $48ff: $03
    dec b                                         ; $4900: $05
    rlca                                          ; $4901: $07
    dec sp                                        ; $4902: $3b
    dec a                                         ; $4903: $3d
    ld h, $3f                                     ; $4904: $26 $3f
    jr z, jr_023_4947                             ; $4906: $28 $3f

    inc e                                         ; $4908: $1c
    rra                                           ; $4909: $1f
    rla                                           ; $490a: $17
    rra                                           ; $490b: $1f
    ld a, [bc]                                    ; $490c: $0a
    ld c, $06                                     ; $490d: $0e $06
    ld b, $20                                     ; $490f: $06 $20
    jr nz, jr_023_48e3                            ; $4911: $20 $d0

    ldh a, [$b0]                                  ; $4913: $f0 $b0
    ldh a, [$7c]                                  ; $4915: $f0 $7c
    call c, $fe42                                 ; $4917: $dc $42 $fe
    ld [bc], a                                    ; $491a: $02
    cp $62                                        ; $491b: $fe $62
    cp [hl]                                       ; $491d: $be
    db $f4                                        ; $491e: $f4
    ld l, h                                       ; $491f: $6c
    ld a, b                                       ; $4920: $78
    cp b                                          ; $4921: $b8
    ld h, b                                       ; $4922: $60
    and b                                         ; $4923: $a0
    ldh a, [$30]                                  ; $4924: $f0 $30
    ret z                                         ; $4926: $c8

    ld a, b                                       ; $4927: $78
    add sp, -$08                                  ; $4928: $e8 $f8
    ldh a, [$f0]                                  ; $492a: $f0 $f0
    ret nc                                        ; $492c: $d0

    ldh a, [$e0]                                  ; $492d: $f0 $e0
    ldh [$03], a                                  ; $492f: $e0 $03
    inc bc                                        ; $4931: $03
    dec b                                         ; $4932: $05
    rlca                                          ; $4933: $07
    rlca                                          ; $4934: $07
    rlca                                          ; $4935: $07
    rrca                                          ; $4936: $0f
    dec c                                         ; $4937: $0d
    ld c, $0b                                     ; $4938: $0e $0b
    db $10                                        ; $493a: $10
    rra                                           ; $493b: $1f
    jr jr_023_4955                                ; $493c: $18 $17

    ld [$040f], sp                                ; $493e: $08 $0f $04
    rlca                                          ; $4941: $07
    rra                                           ; $4942: $1f
    rra                                           ; $4943: $1f
    rla                                           ; $4944: $17
    ld e, $0b                                     ; $4945: $1e $0b

jr_023_4947:
    ld c, $0b                                     ; $4947: $0e $0b
    rrca                                          ; $4949: $0f
    rrca                                          ; $494a: $0f
    rrca                                          ; $494b: $0f
    rlca                                          ; $494c: $07
    rlca                                          ; $494d: $07
    nop                                           ; $494e: $00
    nop                                           ; $494f: $00
    add b                                         ; $4950: $80
    add b                                         ; $4951: $80
    ld b, b                                       ; $4952: $40
    ret nz                                        ; $4953: $c0

    ret nz                                        ; $4954: $c0

jr_023_4955:
    ret nz                                        ; $4955: $c0

    ldh [$60], a                                  ; $4956: $e0 $60
    ldh [$a0], a                                  ; $4958: $e0 $a0
    db $10                                        ; $495a: $10
    ldh a, [$30]                                  ; $495b: $f0 $30
    ret nc                                        ; $495d: $d0

    jr nz, @-$1e                                  ; $495e: $20 $e0

    ld b, b                                       ; $4960: $40
    ret nz                                        ; $4961: $c0

    ret nz                                        ; $4962: $c0

    ret nz                                        ; $4963: $c0

    ret nz                                        ; $4964: $c0

    ret nz                                        ; $4965: $c0

    and b                                         ; $4966: $a0
    ldh [$a0], a                                  ; $4967: $e0 $a0
    ldh [$e0], a                                  ; $4969: $e0 $e0
    ldh [rNR41], a                                ; $496b: $e0 $20
    ldh [$c0], a                                  ; $496d: $e0 $c0
    ret nz                                        ; $496f: $c0

    inc b                                         ; $4970: $04
    inc b                                         ; $4971: $04
    dec bc                                        ; $4972: $0b
    rrca                                          ; $4973: $0f
    dec c                                         ; $4974: $0d
    rrca                                          ; $4975: $0f
    ld a, $3b                                     ; $4976: $3e $3b
    ld b, d                                       ; $4978: $42
    ld a, a                                       ; $4979: $7f
    ld b, b                                       ; $497a: $40
    ld a, a                                       ; $497b: $7f
    ld b, [hl]                                    ; $497c: $46
    ld a, l                                       ; $497d: $7d
    cpl                                           ; $497e: $2f
    ld [hl], $1e                                  ; $497f: $36 $1e
    dec e                                         ; $4981: $1d
    ld c, $0d                                     ; $4982: $0e $0d
    inc de                                        ; $4984: $13
    ld e, $17                                     ; $4985: $1e $17
    rra                                           ; $4987: $1f
    ld c, $0f                                     ; $4988: $0e $0f
    dec bc                                        ; $498a: $0b
    rrca                                          ; $498b: $0f
    dec c                                         ; $498c: $0d
    rrca                                          ; $498d: $0f
    rlca                                          ; $498e: $07
    rlca                                          ; $498f: $07
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    nop                                           ; $4992: $00
    nop                                           ; $4993: $00
    ret nz                                        ; $4994: $c0

    ret nz                                        ; $4995: $c0

    ret nz                                        ; $4996: $c0

    ret nz                                        ; $4997: $c0

    ld h, b                                       ; $4998: $60
    ldh [$60], a                                  ; $4999: $e0 $60
    ldh [rLCDC], a                                ; $499b: $e0 $40
    ret nz                                        ; $499d: $c0

    ld b, b                                       ; $499e: $40
    ret nz                                        ; $499f: $c0

    and b                                         ; $49a0: $a0
    ldh [$dc], a                                  ; $49a1: $e0 $dc
    cp h                                          ; $49a3: $bc
    ld h, h                                       ; $49a4: $64
    db $fc                                        ; $49a5: $fc
    ld [$10f8], sp                                ; $49a6: $08 $f8 $10
    ldh a, [$78]                                  ; $49a9: $f0 $78
    ld hl, sp-$18                                 ; $49ab: $f8 $e8
    ld hl, sp+$70                                 ; $49ad: $f8 $70
    ld [hl], b                                    ; $49af: $70
    inc bc                                        ; $49b0: $03
    inc bc                                        ; $49b1: $03
    dec b                                         ; $49b2: $05
    rlca                                          ; $49b3: $07
    dec b                                         ; $49b4: $05
    rlca                                          ; $49b5: $07
    rrca                                          ; $49b6: $0f
    rrca                                          ; $49b7: $0f
    dec bc                                        ; $49b8: $0b
    rrca                                          ; $49b9: $0f
    ld de, $1b1f                                  ; $49ba: $11 $1f $1b
    rla                                           ; $49bd: $17
    dec bc                                        ; $49be: $0b
    rrca                                          ; $49bf: $0f
    dec b                                         ; $49c0: $05
    ld b, $06                                     ; $49c1: $06 $06
    rlca                                          ; $49c3: $07
    add hl, bc                                    ; $49c4: $09
    rrca                                          ; $49c5: $0f
    ld [$0f0f], sp                                ; $49c6: $08 $0f $0f
    ld c, $0b                                     ; $49c9: $0e $0b
    rrca                                          ; $49cb: $0f
    rlca                                          ; $49cc: $07
    rlca                                          ; $49cd: $07

jr_023_49ce:
    nop                                           ; $49ce: $00
    nop                                           ; $49cf: $00
    add b                                         ; $49d0: $80
    add b                                         ; $49d1: $80
    ld b, b                                       ; $49d2: $40
    ret nz                                        ; $49d3: $c0

    ld b, b                                       ; $49d4: $40
    ret nz                                        ; $49d5: $c0

    ld h, b                                       ; $49d6: $60
    ldh [$a0], a                                  ; $49d7: $e0 $a0
    ldh [$90], a                                  ; $49d9: $e0 $90
    ldh a, [$30]                                  ; $49db: $f0 $30
    ret nc                                        ; $49dd: $d0

    and b                                         ; $49de: $a0
    ldh [rLCDC], a                                ; $49df: $e0 $40
    ret nz                                        ; $49e1: $c0

    ld h, b                                       ; $49e2: $60
    ldh [$90], a                                  ; $49e3: $e0 $90
    ldh a, [rNR10]                                ; $49e5: $f0 $10
    ldh a, [$a0]                                  ; $49e7: $f0 $a0
    ld h, b                                       ; $49e9: $60
    ldh [$e0], a                                  ; $49ea: $e0 $e0
    jr nz, jr_023_49ce                            ; $49ec: $20 $e0

    ret nz                                        ; $49ee: $c0

    ret nz                                        ; $49ef: $c0

    nop                                           ; $49f0: $00
    nop                                           ; $49f1: $00
    nop                                           ; $49f2: $00
    nop                                           ; $49f3: $00
    inc bc                                        ; $49f4: $03
    inc bc                                        ; $49f5: $03
    inc bc                                        ; $49f6: $03
    inc bc                                        ; $49f7: $03
    ld b, $07                                     ; $49f8: $06 $07
    ld b, $07                                     ; $49fa: $06 $07
    ld [bc], a                                    ; $49fc: $02
    inc bc                                        ; $49fd: $03
    ld [bc], a                                    ; $49fe: $02
    inc bc                                        ; $49ff: $03
    dec b                                         ; $4a00: $05
    rlca                                          ; $4a01: $07
    dec sp                                        ; $4a02: $3b
    dec a                                         ; $4a03: $3d
    ld h, $3f                                     ; $4a04: $26 $3f
    db $10                                        ; $4a06: $10
    rra                                           ; $4a07: $1f
    ld [$1e0f], sp                                ; $4a08: $08 $0f $1e
    rra                                           ; $4a0b: $1f
    dec de                                        ; $4a0c: $1b
    rra                                           ; $4a0d: $1f
    ld c, $0e                                     ; $4a0e: $0e $0e
    jr nz, jr_023_4a32                            ; $4a10: $20 $20

    ret nc                                        ; $4a12: $d0

    ldh a, [$b0]                                  ; $4a13: $f0 $b0
    ldh a, [$7c]                                  ; $4a15: $f0 $7c
    call c, $fe42                                 ; $4a17: $dc $42 $fe
    ld [bc], a                                    ; $4a1a: $02
    cp $62                                        ; $4a1b: $fe $62
    cp [hl]                                       ; $4a1d: $be
    db $f4                                        ; $4a1e: $f4
    ld l, h                                       ; $4a1f: $6c
    ld a, b                                       ; $4a20: $78
    cp b                                          ; $4a21: $b8
    ld [hl], b                                    ; $4a22: $70
    or b                                          ; $4a23: $b0
    ret z                                         ; $4a24: $c8

    ld a, b                                       ; $4a25: $78
    add sp, -$08                                  ; $4a26: $e8 $f8
    ld [hl], b                                    ; $4a28: $70
    ldh a, [$d0]                                  ; $4a29: $f0 $d0
    ldh a, [$b0]                                  ; $4a2b: $f0 $b0
    ldh a, [$e0]                                  ; $4a2d: $f0 $e0
    ldh [$03], a                                  ; $4a2f: $e0 $03
    inc bc                                        ; $4a31: $03

jr_023_4a32:
    dec b                                         ; $4a32: $05
    rlca                                          ; $4a33: $07
    rlca                                          ; $4a34: $07
    rlca                                          ; $4a35: $07
    rlca                                          ; $4a36: $07
    dec b                                         ; $4a37: $05
    ld c, $0b                                     ; $4a38: $0e $0b
    db $10                                        ; $4a3a: $10
    rra                                           ; $4a3b: $1f
    jr jr_023_4a55                                ; $4a3c: $18 $17

    ld [$040f], sp                                ; $4a3e: $08 $0f $04
    rlca                                          ; $4a41: $07
    rlca                                          ; $4a42: $07
    rlca                                          ; $4a43: $07
    dec bc                                        ; $4a44: $0b
    ld c, $0b                                     ; $4a45: $0e $0b
    ld c, $0d                                     ; $4a47: $0e $0d
    rrca                                          ; $4a49: $0f
    dec bc                                        ; $4a4a: $0b
    rrca                                          ; $4a4b: $0f
    add hl, bc                                    ; $4a4c: $09
    rrca                                          ; $4a4d: $0f
    ld b, $06                                     ; $4a4e: $06 $06
    add b                                         ; $4a50: $80
    add b                                         ; $4a51: $80
    ld b, b                                       ; $4a52: $40
    ret nz                                        ; $4a53: $c0

    ret nz                                        ; $4a54: $c0

jr_023_4a55:
    ret nz                                        ; $4a55: $c0

    ret nz                                        ; $4a56: $c0

    ld b, b                                       ; $4a57: $40
    ldh [$a0], a                                  ; $4a58: $e0 $a0
    db $10                                        ; $4a5a: $10
    ldh a, [$30]                                  ; $4a5b: $f0 $30
    ret nc                                        ; $4a5d: $d0

    jr nz, @-$1e                                  ; $4a5e: $20 $e0

    ld b, b                                       ; $4a60: $40
    ret nz                                        ; $4a61: $c0

    ldh a, [$f0]                                  ; $4a62: $f0 $f0
    or b                                          ; $4a64: $b0
    ldh a, [$a0]                                  ; $4a65: $f0 $a0
    ldh [$e0], a                                  ; $4a67: $e0 $e0
    ldh [$a0], a                                  ; $4a69: $e0 $a0
    ldh [$c0], a                                  ; $4a6b: $e0 $c0
    ret nz                                        ; $4a6d: $c0

    nop                                           ; $4a6e: $00
    nop                                           ; $4a6f: $00
    inc b                                         ; $4a70: $04
    inc b                                         ; $4a71: $04
    dec bc                                        ; $4a72: $0b
    rrca                                          ; $4a73: $0f
    dec c                                         ; $4a74: $0d
    rrca                                          ; $4a75: $0f
    ld a, $3b                                     ; $4a76: $3e $3b
    ld b, d                                       ; $4a78: $42
    ld a, a                                       ; $4a79: $7f
    ld b, b                                       ; $4a7a: $40
    ld a, a                                       ; $4a7b: $7f
    ld b, [hl]                                    ; $4a7c: $46
    ld a, l                                       ; $4a7d: $7d
    cpl                                           ; $4a7e: $2f
    ld [hl], $1e                                  ; $4a7f: $36 $1e
    dec e                                         ; $4a81: $1d
    ld b, $05                                     ; $4a82: $06 $05
    rrca                                          ; $4a84: $0f
    inc c                                         ; $4a85: $0c
    inc de                                        ; $4a86: $13
    ld e, $17                                     ; $4a87: $1e $17
    rra                                           ; $4a89: $1f
    rrca                                          ; $4a8a: $0f
    rrca                                          ; $4a8b: $0f
    dec bc                                        ; $4a8c: $0b
    rrca                                          ; $4a8d: $0f
    rlca                                          ; $4a8e: $07
    rlca                                          ; $4a8f: $07
    nop                                           ; $4a90: $00
    nop                                           ; $4a91: $00
    nop                                           ; $4a92: $00
    nop                                           ; $4a93: $00
    ret nz                                        ; $4a94: $c0

    ret nz                                        ; $4a95: $c0

    ret nz                                        ; $4a96: $c0

    ret nz                                        ; $4a97: $c0

    ld h, b                                       ; $4a98: $60
    ldh [$60], a                                  ; $4a99: $e0 $60
    ldh [rLCDC], a                                ; $4a9b: $e0 $40
    ret nz                                        ; $4a9d: $c0

    ld b, b                                       ; $4a9e: $40
    ret nz                                        ; $4a9f: $c0

    and b                                         ; $4aa0: $a0
    ldh [$de], a                                  ; $4aa1: $e0 $de
    cp [hl]                                       ; $4aa3: $be
    ld h, d                                       ; $4aa4: $62
    cp $14                                        ; $4aa5: $fe $14
    db $fc                                        ; $4aa7: $fc
    jr c, @-$06                                   ; $4aa8: $38 $f8

    add sp, -$08                                  ; $4aaa: $e8 $f8
    ld e, b                                       ; $4aac: $58
    ld a, b                                       ; $4aad: $78
    ld [hl], b                                    ; $4aae: $70
    ld [hl], b                                    ; $4aaf: $70
    inc bc                                        ; $4ab0: $03
    inc bc                                        ; $4ab1: $03
    dec b                                         ; $4ab2: $05
    rlca                                          ; $4ab3: $07
    dec b                                         ; $4ab4: $05
    rlca                                          ; $4ab5: $07
    rrca                                          ; $4ab6: $0f
    rrca                                          ; $4ab7: $0f

jr_023_4ab8:
    dec bc                                        ; $4ab8: $0b
    rrca                                          ; $4ab9: $0f
    ld de, $1b1f                                  ; $4aba: $11 $1f $1b
    rla                                           ; $4abd: $17
    dec bc                                        ; $4abe: $0b
    rrca                                          ; $4abf: $0f
    dec b                                         ; $4ac0: $05
    ld b, $0c                                     ; $4ac1: $06 $0c
    rrca                                          ; $4ac3: $0f
    inc de                                        ; $4ac4: $13
    rra                                           ; $4ac5: $1f

jr_023_4ac6:
    db $10                                        ; $4ac6: $10
    rra                                           ; $4ac7: $1f

jr_023_4ac8:
    dec bc                                        ; $4ac8: $0b
    inc c                                         ; $4ac9: $0c
    rrca                                          ; $4aca: $0f
    rrca                                          ; $4acb: $0f
    add hl, bc                                    ; $4acc: $09
    rrca                                          ; $4acd: $0f
    ld b, $06                                     ; $4ace: $06 $06
    add b                                         ; $4ad0: $80
    add b                                         ; $4ad1: $80
    ld b, b                                       ; $4ad2: $40
    ret nz                                        ; $4ad3: $c0

    ld b, b                                       ; $4ad4: $40
    ret nz                                        ; $4ad5: $c0

    ld h, b                                       ; $4ad6: $60
    ldh [$a0], a                                  ; $4ad7: $e0 $a0
    ldh [$90], a                                  ; $4ad9: $e0 $90
    ldh a, [$30]                                  ; $4adb: $f0 $30
    ret nc                                        ; $4add: $d0

    and b                                         ; $4ade: $a0
    ldh [rLCDC], a                                ; $4adf: $e0 $40
    ret nz                                        ; $4ae1: $c0

    ret nz                                        ; $4ae2: $c0

    ret nz                                        ; $4ae3: $c0

    jr nz, jr_023_4ac6                            ; $4ae4: $20 $e0

    jr nz, jr_023_4ac8                            ; $4ae6: $20 $e0

    ldh [$e0], a                                  ; $4ae8: $e0 $e0
    and b                                         ; $4aea: $a0
    ldh [$c0], a                                  ; $4aeb: $e0 $c0
    ret nz                                        ; $4aed: $c0

    nop                                           ; $4aee: $00
    nop                                           ; $4aef: $00
    nop                                           ; $4af0: $00
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    ld bc, $0101                                  ; $4af4: $01 $01 $01
    ld bc, $0303                                  ; $4af7: $01 $03 $03
    inc bc                                        ; $4afa: $03
    inc bc                                        ; $4afb: $03
    ld bc, $0101                                  ; $4afc: $01 $01 $01
    ld bc, $0302                                  ; $4aff: $01 $02 $03
    dec e                                         ; $4b02: $1d
    ld e, $13                                     ; $4b03: $1e $13
    rra                                           ; $4b05: $1f

jr_023_4b06:
    ld [$040f], sp                                ; $4b06: $08 $0f $04
    rlca                                          ; $4b09: $07
    rlca                                          ; $4b0a: $07
    rlca                                          ; $4b0b: $07
    inc b                                         ; $4b0c: $04
    rlca                                          ; $4b0d: $07
    rlca                                          ; $4b0e: $07
    rlca                                          ; $4b0f: $07
    db $10                                        ; $4b10: $10
    db $10                                        ; $4b11: $10
    ld l, b                                       ; $4b12: $68
    ld a, b                                       ; $4b13: $78
    ret c                                         ; $4b14: $d8

    ld hl, sp-$44                                 ; $4b15: $f8 $bc
    db $ec                                        ; $4b17: $ec
    ld [bc], a                                    ; $4b18: $02
    cp $61                                        ; $4b19: $fe $61
    cp a                                          ; $4b1b: $bf
    pop af                                        ; $4b1c: $f1
    ld l, a                                       ; $4b1d: $6f
    ld [hl], d                                    ; $4b1e: $72
    cp [hl]                                       ; $4b1f: $be
    db $ec                                        ; $4b20: $ec
    xor h                                         ; $4b21: $ac
    ldh [$e0], a                                  ; $4b22: $e0 $e0
    jr nz, jr_023_4b06                            ; $4b24: $20 $e0

    ld d, b                                       ; $4b26: $50
    ldh a, [$d0]                                  ; $4b27: $f0 $d0
    ldh a, [$30]                                  ; $4b29: $f0 $30
    jr nc, jr_023_4ab8                            ; $4b2b: $30 $8b

    adc e                                         ; $4b2d: $8b
    add a                                         ; $4b2e: $87
    add a                                         ; $4b2f: $87
    ld bc, $0201                                  ; $4b30: $01 $01 $02
    inc bc                                        ; $4b33: $03
    dec b                                         ; $4b34: $05
    rlca                                          ; $4b35: $07
    rlca                                          ; $4b36: $07
    ld b, $0b                                     ; $4b37: $06 $0b
    dec c                                         ; $4b39: $0d
    ld [$0e0f], sp                                ; $4b3a: $08 $0f $0e
    dec bc                                        ; $4b3d: $0b
    ld b, $05                                     ; $4b3e: $06 $05
    ld b, $07                                     ; $4b40: $06 $07
    rrca                                          ; $4b42: $0f
    rrca                                          ; $4b43: $0f
    dec d                                         ; $4b44: $15
    rra                                           ; $4b45: $1f
    inc d                                         ; $4b46: $14
    rra                                           ; $4b47: $1f
    ld a, [bc]                                    ; $4b48: $0a
    rrca                                          ; $4b49: $0f
    rlca                                          ; $4b4a: $07
    rlca                                          ; $4b4b: $07
    dec bc                                        ; $4b4c: $0b
    rrca                                          ; $4b4d: $0f
    rrca                                          ; $4b4e: $0f
    rrca                                          ; $4b4f: $0f
    ret nz                                        ; $4b50: $c0

    ret nz                                        ; $4b51: $c0

    and b                                         ; $4b52: $a0
    ldh [$e0], a                                  ; $4b53: $e0 $e0
    ldh [$e0], a                                  ; $4b55: $e0 $e0
    and b                                         ; $4b57: $a0
    ret nc                                        ; $4b58: $d0

    ldh a, [rNR10]                                ; $4b59: $f0 $10
    ldh a, [rNR10]                                ; $4b5b: $f0 $10
    ldh a, [rNR10]                                ; $4b5d: $f0 $10
    ldh a, [rNR41]                                ; $4b5f: $f0 $20
    ldh [$e0], a                                  ; $4b61: $e0 $e0
    ldh [$e0], a                                  ; $4b63: $e0 $e0
    ld h, b                                       ; $4b65: $60
    and b                                         ; $4b66: $a0
    ldh [$a0], a                                  ; $4b67: $e0 $a0
    ldh [$e0], a                                  ; $4b69: $e0 $e0
    ldh [$90], a                                  ; $4b6b: $e0 $90
    ldh a, [$f0]                                  ; $4b6d: $f0 $f0
    ldh a, [$08]                                  ; $4b6f: $f0 $08
    ld [$1e16], sp                                ; $4b71: $08 $16 $1e
    dec de                                        ; $4b74: $1b
    rra                                           ; $4b75: $1f
    dec a                                         ; $4b76: $3d
    scf                                           ; $4b77: $37
    ld b, b                                       ; $4b78: $40
    ld a, a                                       ; $4b79: $7f
    add [hl]                                      ; $4b7a: $86
    db $fd                                        ; $4b7b: $fd
    adc a                                         ; $4b7c: $8f
    or $4e                                        ; $4b7d: $f6 $4e
    ld a, l                                       ; $4b7f: $7d
    scf                                           ; $4b80: $37
    dec [hl]                                      ; $4b81: $35
    rlca                                          ; $4b82: $07
    rlca                                          ; $4b83: $07
    inc b                                         ; $4b84: $04
    rlca                                          ; $4b85: $07
    ld a, [bc]                                    ; $4b86: $0a
    rrca                                          ; $4b87: $0f
    dec bc                                        ; $4b88: $0b
    rrca                                          ; $4b89: $0f
    inc c                                         ; $4b8a: $0c
    inc c                                         ; $4b8b: $0c
    pop de                                        ; $4b8c: $d1
    pop de                                        ; $4b8d: $d1
    pop hl                                        ; $4b8e: $e1
    pop hl                                        ; $4b8f: $e1
    nop                                           ; $4b90: $00
    nop                                           ; $4b91: $00
    nop                                           ; $4b92: $00
    nop                                           ; $4b93: $00
    add b                                         ; $4b94: $80
    add b                                         ; $4b95: $80
    add b                                         ; $4b96: $80
    add b                                         ; $4b97: $80
    ret nz                                        ; $4b98: $c0

    ret nz                                        ; $4b99: $c0

    ret nz                                        ; $4b9a: $c0

    ret nz                                        ; $4b9b: $c0

    add b                                         ; $4b9c: $80
    add b                                         ; $4b9d: $80
    add b                                         ; $4b9e: $80
    add b                                         ; $4b9f: $80
    ld b, b                                       ; $4ba0: $40
    ret nz                                        ; $4ba1: $c0

    cp b                                          ; $4ba2: $b8
    ld a, b                                       ; $4ba3: $78
    ret z                                         ; $4ba4: $c8

    ld hl, sp+$10                                 ; $4ba5: $f8 $10
    ldh a, [rNR41]                                ; $4ba7: $f0 $20
    ldh [$e0], a                                  ; $4ba9: $e0 $e0
    ldh [rNR41], a                                ; $4bab: $e0 $20
    ldh [$e0], a                                  ; $4bad: $e0 $e0
    ldh [$03], a                                  ; $4baf: $e0 $03
    inc bc                                        ; $4bb1: $03
    dec b                                         ; $4bb2: $05
    rlca                                          ; $4bb3: $07
    dec b                                         ; $4bb4: $05
    rlca                                          ; $4bb5: $07
    rlca                                          ; $4bb6: $07
    rlca                                          ; $4bb7: $07
    add hl, bc                                    ; $4bb8: $09
    rrca                                          ; $4bb9: $0f
    ld [$0d0f], sp                                ; $4bba: $08 $0f $0d
    dec bc                                        ; $4bbd: $0b
    dec c                                         ; $4bbe: $0d
    dec bc                                        ; $4bbf: $0b
    ld b, $07                                     ; $4bc0: $06 $07
    dec b                                         ; $4bc2: $05
    rlca                                          ; $4bc3: $07
    ld b, $07                                     ; $4bc4: $06 $07
    inc b                                         ; $4bc6: $04
    rlca                                          ; $4bc7: $07
    inc b                                         ; $4bc8: $04
    rlca                                          ; $4bc9: $07
    rlca                                          ; $4bca: $07
    rlca                                          ; $4bcb: $07
    add hl, bc                                    ; $4bcc: $09
    rrca                                          ; $4bcd: $0f
    rrca                                          ; $4bce: $0f
    rrca                                          ; $4bcf: $0f
    add b                                         ; $4bd0: $80
    add b                                         ; $4bd1: $80
    ld b, b                                       ; $4bd2: $40
    ret nz                                        ; $4bd3: $c0

    ld b, b                                       ; $4bd4: $40
    ret nz                                        ; $4bd5: $c0

    ret nz                                        ; $4bd6: $c0

    ret nz                                        ; $4bd7: $c0

    ldh [$e0], a                                  ; $4bd8: $e0 $e0
    ldh [$e0], a                                  ; $4bda: $e0 $e0
    and b                                         ; $4bdc: $a0
    ldh [$e0], a                                  ; $4bdd: $e0 $e0
    ldh [$60], a                                  ; $4bdf: $e0 $60
    ldh [$b8], a                                  ; $4be1: $e0 $b8
    ld a, b                                       ; $4be3: $78
    ret z                                         ; $4be4: $c8

    ld hl, sp+$10                                 ; $4be5: $f8 $10
    ldh a, [$e0]                                  ; $4be7: $f0 $e0
    and b                                         ; $4be9: $a0
    ldh [$60], a                                  ; $4bea: $e0 $60
    ret nc                                        ; $4bec: $d0

    ldh a, [$f0]                                  ; $4bed: $f0 $f0
    ldh a, [rP1]                                  ; $4bef: $f0 $00
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    nop                                           ; $4bf3: $00
    ld bc, $0101                                  ; $4bf4: $01 $01 $01
    ld bc, $0303                                  ; $4bf7: $01 $03 $03
    inc bc                                        ; $4bfa: $03
    inc bc                                        ; $4bfb: $03
    ld bc, $0d01                                  ; $4bfc: $01 $01 $0d
    dec c                                         ; $4bff: $0d
    rrca                                          ; $4c00: $0f
    rrca                                          ; $4c01: $0f
    ld e, $1f                                     ; $4c02: $1e $1f
    inc de                                        ; $4c04: $13
    rra                                           ; $4c05: $1f
    add hl, bc                                    ; $4c06: $09
    rrca                                          ; $4c07: $0f
    inc b                                         ; $4c08: $04
    rlca                                          ; $4c09: $07
    rlca                                          ; $4c0a: $07
    rlca                                          ; $4c0b: $07
    inc b                                         ; $4c0c: $04
    rlca                                          ; $4c0d: $07
    rlca                                          ; $4c0e: $07
    rlca                                          ; $4c0f: $07
    db $10                                        ; $4c10: $10
    db $10                                        ; $4c11: $10
    ld l, b                                       ; $4c12: $68
    ld a, b                                       ; $4c13: $78
    ret c                                         ; $4c14: $d8

    ld hl, sp-$44                                 ; $4c15: $f8 $bc
    db $ec                                        ; $4c17: $ec
    ld [bc], a                                    ; $4c18: $02
    cp $61                                        ; $4c19: $fe $61
    cp a                                          ; $4c1b: $bf
    pop af                                        ; $4c1c: $f1
    ld l, a                                       ; $4c1d: $6f
    ld [hl], d                                    ; $4c1e: $72
    cp [hl]                                       ; $4c1f: $be
    db $ec                                        ; $4c20: $ec
    xor h                                         ; $4c21: $ac
    ldh [$e0], a                                  ; $4c22: $e0 $e0
    and b                                         ; $4c24: $a0
    ldh [rNR41], a                                ; $4c25: $e0 $20
    ldh [$c0], a                                  ; $4c27: $e0 $c0
    ret nz                                        ; $4c29: $c0

    nop                                           ; $4c2a: $00
    nop                                           ; $4c2b: $00
    add b                                         ; $4c2c: $80
    add b                                         ; $4c2d: $80
    add b                                         ; $4c2e: $80
    add b                                         ; $4c2f: $80
    ld bc, $0201                                  ; $4c30: $01 $01 $02
    inc bc                                        ; $4c33: $03
    dec b                                         ; $4c34: $05
    rlca                                          ; $4c35: $07
    rlca                                          ; $4c36: $07
    ld b, $0b                                     ; $4c37: $06 $0b
    dec c                                         ; $4c39: $0d
    ld [$0e0f], sp                                ; $4c3a: $08 $0f $0e
    dec bc                                        ; $4c3d: $0b
    ld h, [hl]                                    ; $4c3e: $66
    ld h, l                                       ; $4c3f: $65
    ld h, [hl]                                    ; $4c40: $66
    ld h, a                                       ; $4c41: $67
    dec sp                                        ; $4c42: $3b
    ccf                                           ; $4c43: $3f
    dec de                                        ; $4c44: $1b
    rra                                           ; $4c45: $1f
    ld d, $1f                                     ; $4c46: $16 $1f
    dec bc                                        ; $4c48: $0b
    rrca                                          ; $4c49: $0f
    rlca                                          ; $4c4a: $07
    ld b, $0b                                     ; $4c4b: $06 $0b
    rrca                                          ; $4c4d: $0f
    ld c, $0e                                     ; $4c4e: $0e $0e
    ret nz                                        ; $4c50: $c0

    ret nz                                        ; $4c51: $c0

    and b                                         ; $4c52: $a0
    ldh [$e0], a                                  ; $4c53: $e0 $e0
    ldh [$e0], a                                  ; $4c55: $e0 $e0
    and b                                         ; $4c57: $a0
    ret nc                                        ; $4c58: $d0

    ldh a, [rNR10]                                ; $4c59: $f0 $10
    ldh a, [rNR10]                                ; $4c5b: $f0 $10
    ldh a, [rNR10]                                ; $4c5d: $f0 $10
    ldh a, [rNR41]                                ; $4c5f: $f0 $20
    ldh [$c0], a                                  ; $4c61: $e0 $c0
    ret nz                                        ; $4c63: $c0

    ld b, b                                       ; $4c64: $40
    ret nz                                        ; $4c65: $c0

    ld b, b                                       ; $4c66: $40
    ret nz                                        ; $4c67: $c0

    and b                                         ; $4c68: $a0
    ldh [$e0], a                                  ; $4c69: $e0 $e0
    ldh [$90], a                                  ; $4c6b: $e0 $90
    ldh a, [$f0]                                  ; $4c6d: $f0 $f0
    ldh a, [$08]                                  ; $4c6f: $f0 $08
    ld [$1e16], sp                                ; $4c71: $08 $16 $1e
    dec de                                        ; $4c74: $1b
    rra                                           ; $4c75: $1f
    dec a                                         ; $4c76: $3d
    scf                                           ; $4c77: $37
    ld b, b                                       ; $4c78: $40
    ld a, a                                       ; $4c79: $7f
    add [hl]                                      ; $4c7a: $86
    db $fd                                        ; $4c7b: $fd
    adc a                                         ; $4c7c: $8f
    or $4e                                        ; $4c7d: $f6 $4e
    ld a, l                                       ; $4c7f: $7d
    scf                                           ; $4c80: $37
    dec [hl]                                      ; $4c81: $35
    ld b, $07                                     ; $4c82: $06 $07
    dec b                                         ; $4c84: $05
    rlca                                          ; $4c85: $07
    dec b                                         ; $4c86: $05
    rlca                                          ; $4c87: $07
    inc bc                                        ; $4c88: $03
    inc bc                                        ; $4c89: $03
    nop                                           ; $4c8a: $00
    nop                                           ; $4c8b: $00
    ld bc, $0101                                  ; $4c8c: $01 $01 $01
    ld bc, $0000                                  ; $4c8f: $01 $00 $00
    nop                                           ; $4c92: $00
    nop                                           ; $4c93: $00
    add b                                         ; $4c94: $80
    add b                                         ; $4c95: $80
    add b                                         ; $4c96: $80
    add b                                         ; $4c97: $80
    ret nz                                        ; $4c98: $c0

    ret nz                                        ; $4c99: $c0

    ret nz                                        ; $4c9a: $c0

    ret nz                                        ; $4c9b: $c0

    add b                                         ; $4c9c: $80
    add b                                         ; $4c9d: $80
    or b                                          ; $4c9e: $b0
    or b                                          ; $4c9f: $b0
    ld [hl], b                                    ; $4ca0: $70
    ldh a, [$f8]                                  ; $4ca1: $f0 $f8
    ld a, b                                       ; $4ca3: $78
    adc b                                         ; $4ca4: $88
    ld hl, sp+$10                                 ; $4ca5: $f8 $10
    ldh a, [rNR41]                                ; $4ca7: $f0 $20
    ldh [$e0], a                                  ; $4ca9: $e0 $e0
    ldh [rNR41], a                                ; $4cab: $e0 $20
    ldh [$e0], a                                  ; $4cad: $e0 $e0
    ldh [$03], a                                  ; $4caf: $e0 $03
    inc bc                                        ; $4cb1: $03
    dec b                                         ; $4cb2: $05
    rlca                                          ; $4cb3: $07
    dec b                                         ; $4cb4: $05
    rlca                                          ; $4cb5: $07
    rlca                                          ; $4cb6: $07
    rlca                                          ; $4cb7: $07
    add hl, bc                                    ; $4cb8: $09
    rrca                                          ; $4cb9: $0f
    ld [$0d0f], sp                                ; $4cba: $08 $0f $0d
    dec bc                                        ; $4cbd: $0b
    dec c                                         ; $4cbe: $0d
    dec bc                                        ; $4cbf: $0b
    ld b, $07                                     ; $4cc0: $06 $07
    inc bc                                        ; $4cc2: $03
    ld [bc], a                                    ; $4cc3: $02
    inc bc                                        ; $4cc4: $03
    inc bc                                        ; $4cc5: $03
    inc b                                         ; $4cc6: $04
    rlca                                          ; $4cc7: $07
    inc b                                         ; $4cc8: $04
    rlca                                          ; $4cc9: $07
    rlca                                          ; $4cca: $07
    rlca                                          ; $4ccb: $07
    add hl, bc                                    ; $4ccc: $09
    rrca                                          ; $4ccd: $0f
    rrca                                          ; $4cce: $0f
    rrca                                          ; $4ccf: $0f
    add b                                         ; $4cd0: $80
    add b                                         ; $4cd1: $80
    ld b, b                                       ; $4cd2: $40
    ret nz                                        ; $4cd3: $c0

    ld b, b                                       ; $4cd4: $40
    ret nz                                        ; $4cd5: $c0

    ret nz                                        ; $4cd6: $c0

    ret nz                                        ; $4cd7: $c0

    ldh [$e0], a                                  ; $4cd8: $e0 $e0
    ldh [$e0], a                                  ; $4cda: $e0 $e0
    and b                                         ; $4cdc: $a0
    ldh [$e6], a                                  ; $4cdd: $e0 $e6
    and $56                                       ; $4cdf: $e6 $56
    or $7c                                        ; $4ce1: $f6 $7c
    db $fc                                        ; $4ce3: $fc
    adc b                                         ; $4ce4: $88
    ld hl, sp+$10                                 ; $4ce5: $f8 $10
    ldh a, [$e0]                                  ; $4ce7: $f0 $e0
    and b                                         ; $4ce9: $a0
    ldh [$60], a                                  ; $4cea: $e0 $60
    ret nc                                        ; $4cec: $d0

    ldh a, [rSVBK]                                ; $4ced: $f0 $70
    ld [hl], b                                    ; $4cef: $70
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    nop                                           ; $4cf2: $00
    nop                                           ; $4cf3: $00
    ld bc, $3101                                  ; $4cf4: $01 $01 $31
    ld sp, $3333                                  ; $4cf7: $31 $33 $33
    dec de                                        ; $4cfa: $1b
    dec de                                        ; $4cfb: $1b
    rrca                                          ; $4cfc: $0f
    rrca                                          ; $4cfd: $0f
    dec bc                                        ; $4cfe: $0b
    rrca                                          ; $4cff: $0f
    ld b, $07                                     ; $4d00: $06 $07
    dec e                                         ; $4d02: $1d
    rra                                           ; $4d03: $1f

jr_023_4d04:
    inc de                                        ; $4d04: $13
    rra                                           ; $4d05: $1f
    ld [$040f], sp                                ; $4d06: $08 $0f $04
    rlca                                          ; $4d09: $07
    rlca                                          ; $4d0a: $07
    rlca                                          ; $4d0b: $07
    inc b                                         ; $4d0c: $04
    rlca                                          ; $4d0d: $07
    rlca                                          ; $4d0e: $07
    rlca                                          ; $4d0f: $07
    db $10                                        ; $4d10: $10
    db $10                                        ; $4d11: $10
    ld l, b                                       ; $4d12: $68
    ld a, b                                       ; $4d13: $78
    ret c                                         ; $4d14: $d8

    ld hl, sp-$44                                 ; $4d15: $f8 $bc
    db $ec                                        ; $4d17: $ec
    ld [bc], a                                    ; $4d18: $02
    cp $61                                        ; $4d19: $fe $61
    cp a                                          ; $4d1b: $bf
    pop af                                        ; $4d1c: $f1
    ld l, a                                       ; $4d1d: $6f
    ld [hl], d                                    ; $4d1e: $72
    cp [hl]                                       ; $4d1f: $be
    db $ec                                        ; $4d20: $ec
    db $ec                                        ; $4d21: $ec
    jr nz, jr_023_4d04                            ; $4d22: $20 $e0

    ret nz                                        ; $4d24: $c0

    ret nz                                        ; $4d25: $c0

    ret nz                                        ; $4d26: $c0

    ld b, b                                       ; $4d27: $40
    add b                                         ; $4d28: $80
    add b                                         ; $4d29: $80
    nop                                           ; $4d2a: $00
    nop                                           ; $4d2b: $00
    add b                                         ; $4d2c: $80
    add b                                         ; $4d2d: $80
    add b                                         ; $4d2e: $80
    add b                                         ; $4d2f: $80
    ld bc, $0201                                  ; $4d30: $01 $01 $02
    inc bc                                        ; $4d33: $03
    dec b                                         ; $4d34: $05
    rlca                                          ; $4d35: $07
    rst $00                                       ; $4d36: $c7
    add $cb                                       ; $4d37: $c6 $cb
    call $cfc8                                    ; $4d39: $cd $c8 $cf
    ld l, [hl]                                    ; $4d3c: $6e
    ld l, e                                       ; $4d3d: $6b
    ld a, $3d                                     ; $4d3e: $3e $3d
    ld d, $1f                                     ; $4d40: $16 $1f
    rrca                                          ; $4d42: $0f
    rrca                                          ; $4d43: $0f
    ld a, [de]                                    ; $4d44: $1a
    rra                                           ; $4d45: $1f
    dec d                                         ; $4d46: $15
    rra                                           ; $4d47: $1f
    rrca                                          ; $4d48: $0f
    ld c, $07                                     ; $4d49: $0e $07
    ld b, $0b                                     ; $4d4b: $06 $0b
    rrca                                          ; $4d4d: $0f
    ld c, $0e                                     ; $4d4e: $0e $0e
    ret nz                                        ; $4d50: $c0

    ret nz                                        ; $4d51: $c0

    and b                                         ; $4d52: $a0
    ldh [$e0], a                                  ; $4d53: $e0 $e0
    ldh [$e0], a                                  ; $4d55: $e0 $e0
    and b                                         ; $4d57: $a0
    ret nc                                        ; $4d58: $d0

    ldh a, [rNR10]                                ; $4d59: $f0 $10
    ldh a, [rNR10]                                ; $4d5b: $f0 $10
    ldh a, [rNR10]                                ; $4d5d: $f0 $10
    ldh a, [rNR41]                                ; $4d5f: $f0 $20
    ldh [$c0], a                                  ; $4d61: $e0 $c0
    ret nz                                        ; $4d63: $c0

    ld b, b                                       ; $4d64: $40
    ret nz                                        ; $4d65: $c0

    ld b, b                                       ; $4d66: $40
    ret nz                                        ; $4d67: $c0

    and b                                         ; $4d68: $a0
    ldh [$e0], a                                  ; $4d69: $e0 $e0
    ldh [$90], a                                  ; $4d6b: $e0 $90
    ldh a, [$f0]                                  ; $4d6d: $f0 $f0
    ldh a, [$08]                                  ; $4d6f: $f0 $08
    ld [$1e16], sp                                ; $4d71: $08 $16 $1e
    dec de                                        ; $4d74: $1b
    rra                                           ; $4d75: $1f
    dec a                                         ; $4d76: $3d
    scf                                           ; $4d77: $37
    ld b, b                                       ; $4d78: $40
    ld a, a                                       ; $4d79: $7f
    add [hl]                                      ; $4d7a: $86
    db $fd                                        ; $4d7b: $fd
    adc a                                         ; $4d7c: $8f
    or $4e                                        ; $4d7d: $f6 $4e
    ld a, l                                       ; $4d7f: $7d
    dec [hl]                                      ; $4d80: $35
    scf                                           ; $4d81: $37
    rlca                                          ; $4d82: $07
    ld b, $03                                     ; $4d83: $06 $03
    inc bc                                        ; $4d85: $03
    inc bc                                        ; $4d86: $03
    ld [bc], a                                    ; $4d87: $02
    ld bc, $0001                                  ; $4d88: $01 $01 $00
    nop                                           ; $4d8b: $00
    ld bc, $0101                                  ; $4d8c: $01 $01 $01
    ld bc, $0000                                  ; $4d8f: $01 $00 $00
    nop                                           ; $4d92: $00
    nop                                           ; $4d93: $00
    add b                                         ; $4d94: $80
    add b                                         ; $4d95: $80
    adc h                                         ; $4d96: $8c
    adc h                                         ; $4d97: $8c
    call z, $cccc                                 ; $4d98: $cc $cc $cc
    call z, $9898                                 ; $4d9b: $cc $98 $98
    ldh a, [$f0]                                  ; $4d9e: $f0 $f0
    and b                                         ; $4da0: $a0
    ldh [$78], a                                  ; $4da1: $e0 $78
    ld hl, sp-$78                                 ; $4da3: $f8 $88
    ld hl, sp+$10                                 ; $4da5: $f8 $10
    ldh a, [rNR41]                                ; $4da7: $f0 $20
    ldh [$e0], a                                  ; $4da9: $e0 $e0
    ldh [rNR41], a                                ; $4dab: $e0 $20
    ldh [$e0], a                                  ; $4dad: $e0 $e0
    ldh [$03], a                                  ; $4daf: $e0 $03
    inc bc                                        ; $4db1: $03
    dec b                                         ; $4db2: $05
    rlca                                          ; $4db3: $07
    dec b                                         ; $4db4: $05
    rlca                                          ; $4db5: $07
    rlca                                          ; $4db6: $07
    rlca                                          ; $4db7: $07
    add hl, bc                                    ; $4db8: $09
    rrca                                          ; $4db9: $0f
    ld [$0d0f], sp                                ; $4dba: $08 $0f $0d
    dec bc                                        ; $4dbd: $0b
    dec c                                         ; $4dbe: $0d
    dec bc                                        ; $4dbf: $0b
    ld b, $07                                     ; $4dc0: $06 $07
    ld [bc], a                                    ; $4dc2: $02
    inc bc                                        ; $4dc3: $03
    inc bc                                        ; $4dc4: $03
    inc bc                                        ; $4dc5: $03
    inc b                                         ; $4dc6: $04
    rlca                                          ; $4dc7: $07
    inc b                                         ; $4dc8: $04
    rlca                                          ; $4dc9: $07
    rlca                                          ; $4dca: $07
    rlca                                          ; $4dcb: $07
    add hl, bc                                    ; $4dcc: $09
    rrca                                          ; $4dcd: $0f
    rrca                                          ; $4dce: $0f
    rrca                                          ; $4dcf: $0f
    add b                                         ; $4dd0: $80
    add b                                         ; $4dd1: $80
    ld b, b                                       ; $4dd2: $40
    ret nz                                        ; $4dd3: $c0

    ld b, b                                       ; $4dd4: $40
    ret nz                                        ; $4dd5: $c0

    jp $e3c3                                      ; $4dd6: $c3 $c3 $e3


    db $e3                                        ; $4dd9: $e3
    db $e3                                        ; $4dda: $e3
    db $e3                                        ; $4ddb: $e3
    xor [hl]                                      ; $4ddc: $ae
    xor $b4                                       ; $4ddd: $ee $b4
    db $fc                                        ; $4ddf: $fc
    adc b                                         ; $4de0: $88
    ld hl, sp-$08                                 ; $4de1: $f8 $f8
    ld hl, sp+$08                                 ; $4de3: $f8 $08
    ld hl, sp+$10                                 ; $4de5: $f8 $10
    ldh a, [$e0]                                  ; $4de7: $f0 $e0
    and b                                         ; $4de9: $a0
    ldh [$60], a                                  ; $4dea: $e0 $60
    ret nc                                        ; $4dec: $d0

    ldh a, [rSVBK]                                ; $4ded: $f0 $70
    ld [hl], b                                    ; $4def: $70
    ld bc, $0201                                  ; $4df0: $01 $01 $02
    inc bc                                        ; $4df3: $03
    inc bc                                        ; $4df4: $03
    inc bc                                        ; $4df5: $03
    dec b                                         ; $4df6: $05
    rlca                                          ; $4df7: $07
    ld h, a                                       ; $4df8: $67
    ld h, a                                       ; $4df9: $67
    ld h, a                                       ; $4dfa: $67
    ld h, a                                       ; $4dfb: $67
    dec [hl]                                      ; $4dfc: $35
    scf                                           ; $4dfd: $37
    dec de                                        ; $4dfe: $1b
    rra                                           ; $4dff: $1f
    rrca                                          ; $4e00: $0f
    ld c, $04                                     ; $4e01: $0e $04
    rlca                                          ; $4e03: $07
    dec de                                        ; $4e04: $1b
    rra                                           ; $4e05: $1f
    db $10                                        ; $4e06: $10
    rra                                           ; $4e07: $1f

jr_023_4e08:
    ld c, $09                                     ; $4e08: $0e $09
    rlca                                          ; $4e0a: $07
    rlca                                          ; $4e0b: $07

jr_023_4e0c:
    inc b                                         ; $4e0c: $04
    rlca                                          ; $4e0d: $07
    rlca                                          ; $4e0e: $07
    rlca                                          ; $4e0f: $07
    ret nz                                        ; $4e10: $c0

    ret nz                                        ; $4e11: $c0

    and b                                         ; $4e12: $a0
    ldh [$a0], a                                  ; $4e13: $e0 $a0
    ldh [rNR23], a                                ; $4e15: $e0 $18
    ld hl, sp+$04                                 ; $4e17: $f8 $04
    db $fc                                        ; $4e19: $fc
    inc [hl]                                      ; $4e1a: $34
    call c, $ac74                                 ; $4e1b: $dc $74 $ac
    ld a, b                                       ; $4e1e: $78
    cp b                                          ; $4e1f: $b8
    ret nz                                        ; $4e20: $c0

    ret nz                                        ; $4e21: $c0

    ret nz                                        ; $4e22: $c0

    ret nz                                        ; $4e23: $c0

    ld b, b                                       ; $4e24: $40
    ret nz                                        ; $4e25: $c0

    jr nz, jr_023_4e08                            ; $4e26: $20 $e0

    ldh [$e0], a                                  ; $4e28: $e0 $e0
    jr nz, jr_023_4e0c                            ; $4e2a: $20 $e0

    and b                                         ; $4e2c: $a0
    ldh [$c0], a                                  ; $4e2d: $e0 $c0
    ret nz                                        ; $4e2f: $c0

    nop                                           ; $4e30: $00
    nop                                           ; $4e31: $00
    ld bc, $0101                                  ; $4e32: $01 $01 $01
    ld bc, $0706                                  ; $4e35: $01 $06 $07
    ld h, [hl]                                    ; $4e38: $66
    ld h, a                                       ; $4e39: $67
    ld [hl], d                                    ; $4e3a: $72
    ld [hl], e                                    ; $4e3b: $73
    ld e, $1f                                     ; $4e3c: $1e $1f
    ld a, [bc]                                    ; $4e3e: $0a
    rrca                                          ; $4e3f: $0f
    ld b, $07                                     ; $4e40: $06 $07
    ld a, [bc]                                    ; $4e42: $0a
    rrca                                          ; $4e43: $0f

jr_023_4e44:
    inc a                                         ; $4e44: $3c
    ccf                                           ; $4e45: $3f
    ld hl, $163f                                  ; $4e46: $21 $3f $16
    rra                                           ; $4e49: $1f
    add hl, bc                                    ; $4e4a: $09
    rrca                                          ; $4e4b: $0f
    dec bc                                        ; $4e4c: $0b
    rrca                                          ; $4e4d: $0f
    ld b, $06                                     ; $4e4e: $06 $06
    ld b, b                                       ; $4e50: $40
    ld b, b                                       ; $4e51: $40
    and b                                         ; $4e52: $a0
    ldh [$78], a                                  ; $4e53: $e0 $78
    ld hl, sp-$1c                                 ; $4e55: $f8 $e4
    cp h                                          ; $4e57: $bc
    ld [bc], a                                    ; $4e58: $02
    cp $c2                                        ; $4e59: $fe $c2
    ld a, [hl]                                    ; $4e5b: $7e
    db $e4                                        ; $4e5c: $e4
    call c, Call_023_78f8                         ; $4e5d: $dc $f8 $78
    ldh [$e0], a                                  ; $4e60: $e0 $e0
    jr nz, jr_023_4e44                            ; $4e62: $20 $e0

    ret nz                                        ; $4e64: $c0

    ret nz                                        ; $4e65: $c0

    ret nz                                        ; $4e66: $c0

    ld b, b                                       ; $4e67: $40
    and b                                         ; $4e68: $a0
    ldh [$e0], a                                  ; $4e69: $e0 $e0
    ldh [$90], a                                  ; $4e6b: $e0 $90
    ldh a, [$f0]                                  ; $4e6d: $f0 $f0
    ldh a, [$03]                                  ; $4e6f: $f0 $03
    inc bc                                        ; $4e71: $03
    dec b                                         ; $4e72: $05
    rlca                                          ; $4e73: $07
    rrca                                          ; $4e74: $0f
    dec c                                         ; $4e75: $0d
    db $10                                        ; $4e76: $10
    rra                                           ; $4e77: $1f

jr_023_4e78:
    jr nz, jr_023_4eb9                            ; $4e78: $20 $3f

    ld hl, $113e                                  ; $4e7a: $21 $3e $11
    rra                                           ; $4e7d: $1f
    rrca                                          ; $4e7e: $0f
    ld c, $03                                     ; $4e7f: $0e $03
    inc bc                                        ; $4e81: $03
    ld [bc], a                                    ; $4e82: $02
    inc bc                                        ; $4e83: $03
    inc bc                                        ; $4e84: $03
    inc bc                                        ; $4e85: $03
    dec b                                         ; $4e86: $05
    ld b, $07                                     ; $4e87: $06 $07
    ld b, $05                                     ; $4e89: $06 $05
    rlca                                          ; $4e8b: $07
    dec b                                         ; $4e8c: $05
    rlca                                          ; $4e8d: $07

jr_023_4e8e:
    inc bc                                        ; $4e8e: $03
    inc bc                                        ; $4e8f: $03
    add b                                         ; $4e90: $80
    add b                                         ; $4e91: $80
    ld b, b                                       ; $4e92: $40
    ret nz                                        ; $4e93: $c0

    ret nz                                        ; $4e94: $c0

    ld b, b                                       ; $4e95: $40
    jr nz, jr_023_4e78                            ; $4e96: $20 $e0

    and [hl]                                      ; $4e98: $a6
    and $e6                                       ; $4e99: $e6 $e6
    and [hl]                                      ; $4e9b: $a6
    call z, $f8cc                                 ; $4e9c: $cc $cc $f8
    ld hl, sp+$50                                 ; $4e9f: $f8 $50
    ldh a, [$f8]                                  ; $4ea1: $f0 $f8
    ld hl, sp-$58                                 ; $4ea3: $f8 $a8
    ld a, b                                       ; $4ea5: $78
    sub b                                         ; $4ea6: $90
    ld [hl], b                                    ; $4ea7: $70
    jr nz, @-$1e                                  ; $4ea8: $20 $e0

    ldh [$e0], a                                  ; $4eaa: $e0 $e0
    jr nz, jr_023_4e8e                            ; $4eac: $20 $e0

    ldh [$e0], a                                  ; $4eae: $e0 $e0
    ld [bc], a                                    ; $4eb0: $02
    ld [bc], a                                    ; $4eb1: $02
    dec b                                         ; $4eb2: $05
    rlca                                          ; $4eb3: $07
    ld e, $1f                                     ; $4eb4: $1e $1f
    daa                                           ; $4eb6: $27
    dec a                                         ; $4eb7: $3d
    ld b, b                                       ; $4eb8: $40

jr_023_4eb9:
    ld a, a                                       ; $4eb9: $7f
    ld b, e                                       ; $4eba: $43
    ld a, [hl]                                    ; $4ebb: $7e
    daa                                           ; $4ebc: $27
    dec sp                                        ; $4ebd: $3b
    rra                                           ; $4ebe: $1f
    ld e, $07                                     ; $4ebf: $1e $07
    rlca                                          ; $4ec1: $07
    inc b                                         ; $4ec2: $04
    rlca                                          ; $4ec3: $07
    inc bc                                        ; $4ec4: $03
    inc bc                                        ; $4ec5: $03
    inc bc                                        ; $4ec6: $03
    ld [bc], a                                    ; $4ec7: $02
    inc b                                         ; $4ec8: $04
    rlca                                          ; $4ec9: $07
    ld b, $07                                     ; $4eca: $06 $07
    add hl, bc                                    ; $4ecc: $09
    rrca                                          ; $4ecd: $0f
    rrca                                          ; $4ece: $0f
    rrca                                          ; $4ecf: $0f
    nop                                           ; $4ed0: $00
    nop                                           ; $4ed1: $00
    add b                                         ; $4ed2: $80
    add b                                         ; $4ed3: $80
    add b                                         ; $4ed4: $80
    add b                                         ; $4ed5: $80
    ld h, b                                       ; $4ed6: $60
    ldh [$63], a                                  ; $4ed7: $e0 $63
    db $e3                                        ; $4ed9: $e3
    ld b, e                                       ; $4eda: $43
    jp $e666                                      ; $4edb: $c3 $66 $e6


    db $ec                                        ; $4ede: $ec
    db $ec                                        ; $4edf: $ec
    ld e, b                                       ; $4ee0: $58
    ld hl, sp-$48                                 ; $4ee1: $f8 $b8
    ld hl, sp+$48                                 ; $4ee3: $f8 $48
    ld hl, sp+$10                                 ; $4ee5: $f8 $10
    ldh a, [rNR41]                                ; $4ee7: $f0 $20
    ldh [$d0], a                                  ; $4ee9: $e0 $d0
    ldh a, [$b0]                                  ; $4eeb: $f0 $b0
    ldh a, [$60]                                  ; $4eed: $f0 $60
    ld h, b                                       ; $4eef: $60
    nop                                           ; $4ef0: $00
    nop                                           ; $4ef1: $00
    nop                                           ; $4ef2: $00
    nop                                           ; $4ef3: $00
    nop                                           ; $4ef4: $00
    nop                                           ; $4ef5: $00
    inc bc                                        ; $4ef6: $03
    inc bc                                        ; $4ef7: $03
    inc bc                                        ; $4ef8: $03
    inc bc                                        ; $4ef9: $03
    ld b, $07                                     ; $4efa: $06 $07
    ld b, $07                                     ; $4efc: $06 $07
    ld [bc], a                                    ; $4efe: $02
    inc bc                                        ; $4eff: $03
    ld [bc], a                                    ; $4f00: $02
    inc bc                                        ; $4f01: $03
    dec b                                         ; $4f02: $05
    rlca                                          ; $4f03: $07
    ld h, $3f                                     ; $4f04: $26 $3f
    jr z, jr_023_4f47                             ; $4f06: $28 $3f

    inc e                                         ; $4f08: $1c
    rra                                           ; $4f09: $1f
    rla                                           ; $4f0a: $17
    rra                                           ; $4f0b: $1f
    ld a, [bc]                                    ; $4f0c: $0a
    ld c, $06                                     ; $4f0d: $0e $06
    ld b, $00                                     ; $4f0f: $06 $00
    nop                                           ; $4f11: $00
    jr nz, jr_023_4f34                            ; $4f12: $20 $20

    ret nc                                        ; $4f14: $d0

    ldh a, [$b0]                                  ; $4f15: $f0 $b0
    ldh a, [$7c]                                  ; $4f17: $f0 $7c
    call c, $fe42                                 ; $4f19: $dc $42 $fe
    ld [bc], a                                    ; $4f1c: $02
    cp $62                                        ; $4f1d: $fe $62
    cp [hl]                                       ; $4f1f: $be
    db $f4                                        ; $4f20: $f4
    ld l, h                                       ; $4f21: $6c
    ld a, b                                       ; $4f22: $78
    cp b                                          ; $4f23: $b8
    ldh a, [$30]                                  ; $4f24: $f0 $30
    ret z                                         ; $4f26: $c8

    ld a, b                                       ; $4f27: $78
    add sp, -$08                                  ; $4f28: $e8 $f8
    ldh a, [$f0]                                  ; $4f2a: $f0 $f0
    ret nc                                        ; $4f2c: $d0

    ldh a, [$e0]                                  ; $4f2d: $f0 $e0
    ldh [rP1], a                                  ; $4f2f: $e0 $00
    nop                                           ; $4f31: $00
    inc bc                                        ; $4f32: $03
    inc bc                                        ; $4f33: $03

jr_023_4f34:
    dec b                                         ; $4f34: $05
    rlca                                          ; $4f35: $07
    rlca                                          ; $4f36: $07
    rlca                                          ; $4f37: $07
    rrca                                          ; $4f38: $0f
    dec c                                         ; $4f39: $0d
    ld c, $0b                                     ; $4f3a: $0e $0b
    db $10                                        ; $4f3c: $10
    rra                                           ; $4f3d: $1f
    jr jr_023_4f57                                ; $4f3e: $18 $17

    ld [$040f], sp                                ; $4f40: $08 $0f $04
    rlca                                          ; $4f43: $07
    rla                                           ; $4f44: $17
    ld e, $0b                                     ; $4f45: $1e $0b

jr_023_4f47:
    ld c, $0b                                     ; $4f47: $0e $0b
    rrca                                          ; $4f49: $0f
    rrca                                          ; $4f4a: $0f
    rrca                                          ; $4f4b: $0f
    rlca                                          ; $4f4c: $07
    rlca                                          ; $4f4d: $07
    nop                                           ; $4f4e: $00
    nop                                           ; $4f4f: $00
    nop                                           ; $4f50: $00
    nop                                           ; $4f51: $00
    add b                                         ; $4f52: $80
    add b                                         ; $4f53: $80
    ld b, b                                       ; $4f54: $40
    ret nz                                        ; $4f55: $c0

    ret nz                                        ; $4f56: $c0

jr_023_4f57:
    ret nz                                        ; $4f57: $c0

    ldh [$60], a                                  ; $4f58: $e0 $60
    ldh [$a0], a                                  ; $4f5a: $e0 $a0
    db $10                                        ; $4f5c: $10
    ldh a, [$30]                                  ; $4f5d: $f0 $30
    ret nc                                        ; $4f5f: $d0

    jr nz, @-$1e                                  ; $4f60: $20 $e0

    ld b, b                                       ; $4f62: $40
    ret nz                                        ; $4f63: $c0

    ret nz                                        ; $4f64: $c0

    ret nz                                        ; $4f65: $c0

    and b                                         ; $4f66: $a0
    ldh [$a0], a                                  ; $4f67: $e0 $a0
    ldh [$e0], a                                  ; $4f69: $e0 $e0
    ldh [rNR41], a                                ; $4f6b: $e0 $20
    ldh [$c0], a                                  ; $4f6d: $e0 $c0
    ret nz                                        ; $4f6f: $c0

    nop                                           ; $4f70: $00
    nop                                           ; $4f71: $00
    inc b                                         ; $4f72: $04
    inc b                                         ; $4f73: $04
    dec bc                                        ; $4f74: $0b
    rrca                                          ; $4f75: $0f
    dec c                                         ; $4f76: $0d
    rrca                                          ; $4f77: $0f
    ld a, $3b                                     ; $4f78: $3e $3b
    ld b, d                                       ; $4f7a: $42
    ld a, a                                       ; $4f7b: $7f
    ld b, b                                       ; $4f7c: $40
    ld a, a                                       ; $4f7d: $7f
    ld b, [hl]                                    ; $4f7e: $46
    ld a, l                                       ; $4f7f: $7d
    cpl                                           ; $4f80: $2f
    ld [hl], $1e                                  ; $4f81: $36 $1e
    dec e                                         ; $4f83: $1d
    inc de                                        ; $4f84: $13
    ld e, $17                                     ; $4f85: $1e $17
    rra                                           ; $4f87: $1f
    ld c, $0f                                     ; $4f88: $0e $0f
    dec bc                                        ; $4f8a: $0b
    rrca                                          ; $4f8b: $0f
    dec c                                         ; $4f8c: $0d
    rrca                                          ; $4f8d: $0f
    rlca                                          ; $4f8e: $07
    rlca                                          ; $4f8f: $07
    nop                                           ; $4f90: $00
    nop                                           ; $4f91: $00
    nop                                           ; $4f92: $00
    nop                                           ; $4f93: $00
    nop                                           ; $4f94: $00
    nop                                           ; $4f95: $00
    ret nz                                        ; $4f96: $c0

    ret nz                                        ; $4f97: $c0

    ret nz                                        ; $4f98: $c0

    ret nz                                        ; $4f99: $c0

    ld h, b                                       ; $4f9a: $60
    ldh [$60], a                                  ; $4f9b: $e0 $60
    ldh [rLCDC], a                                ; $4f9d: $e0 $40
    ret nz                                        ; $4f9f: $c0

    ld b, b                                       ; $4fa0: $40
    ret nz                                        ; $4fa1: $c0

    and b                                         ; $4fa2: $a0
    ldh [$64], a                                  ; $4fa3: $e0 $64
    db $fc                                        ; $4fa5: $fc
    ld [$10f8], sp                                ; $4fa6: $08 $f8 $10
    ldh a, [$78]                                  ; $4fa9: $f0 $78
    ld hl, sp-$18                                 ; $4fab: $f8 $e8
    ld hl, sp+$70                                 ; $4fad: $f8 $70
    ld [hl], b                                    ; $4faf: $70
    nop                                           ; $4fb0: $00
    nop                                           ; $4fb1: $00
    inc bc                                        ; $4fb2: $03
    inc bc                                        ; $4fb3: $03
    dec b                                         ; $4fb4: $05
    rlca                                          ; $4fb5: $07
    dec b                                         ; $4fb6: $05
    rlca                                          ; $4fb7: $07
    rrca                                          ; $4fb8: $0f
    rrca                                          ; $4fb9: $0f
    dec bc                                        ; $4fba: $0b
    rrca                                          ; $4fbb: $0f
    ld de, $1b1f                                  ; $4fbc: $11 $1f $1b
    rla                                           ; $4fbf: $17
    dec bc                                        ; $4fc0: $0b
    rrca                                          ; $4fc1: $0f
    dec b                                         ; $4fc2: $05
    ld b, $09                                     ; $4fc3: $06 $09
    rrca                                          ; $4fc5: $0f
    ld [$0f0f], sp                                ; $4fc6: $08 $0f $0f
    ld c, $0b                                     ; $4fc9: $0e $0b
    rrca                                          ; $4fcb: $0f
    rlca                                          ; $4fcc: $07
    rlca                                          ; $4fcd: $07

jr_023_4fce:
    nop                                           ; $4fce: $00
    nop                                           ; $4fcf: $00
    nop                                           ; $4fd0: $00
    nop                                           ; $4fd1: $00
    add b                                         ; $4fd2: $80
    add b                                         ; $4fd3: $80
    ld b, b                                       ; $4fd4: $40
    ret nz                                        ; $4fd5: $c0

    ld b, b                                       ; $4fd6: $40
    ret nz                                        ; $4fd7: $c0

    ld h, b                                       ; $4fd8: $60
    ldh [$a0], a                                  ; $4fd9: $e0 $a0
    ldh [$90], a                                  ; $4fdb: $e0 $90
    ldh a, [$30]                                  ; $4fdd: $f0 $30
    ret nc                                        ; $4fdf: $d0

    and b                                         ; $4fe0: $a0
    ldh [rLCDC], a                                ; $4fe1: $e0 $40
    ret nz                                        ; $4fe3: $c0

    sub b                                         ; $4fe4: $90
    ldh a, [rNR10]                                ; $4fe5: $f0 $10
    ldh a, [$a0]                                  ; $4fe7: $f0 $a0
    ld h, b                                       ; $4fe9: $60
    ldh [$e0], a                                  ; $4fea: $e0 $e0
    jr nz, jr_023_4fce                            ; $4fec: $20 $e0

    ret nz                                        ; $4fee: $c0

    ret nz                                        ; $4fef: $c0

    nop                                           ; $4ff0: $00
    nop                                           ; $4ff1: $00
    nop                                           ; $4ff2: $00
    nop                                           ; $4ff3: $00
    ld bc, $0101                                  ; $4ff4: $01 $01 $01
    ld bc, $0303                                  ; $4ff7: $01 $03 $03
    inc bc                                        ; $4ffa: $03
    inc bc                                        ; $4ffb: $03
    ld bc, $0101                                  ; $4ffc: $01 $01 $01
    ld bc, $0302                                  ; $4fff: $01 $02 $03
    dec sp                                        ; $5002: $3b
    dec a                                         ; $5003: $3d
    ld h, $3f                                     ; $5004: $26 $3f
    jr z, jr_023_5047                             ; $5006: $28 $3f

    inc e                                         ; $5008: $1c
    rra                                           ; $5009: $1f
    rla                                           ; $500a: $17
    rra                                           ; $500b: $1f
    ld a, [bc]                                    ; $500c: $0a
    ld c, $06                                     ; $500d: $0e $06
    ld b, $10                                     ; $500f: $06 $10
    db $10                                        ; $5011: $10
    ld l, b                                       ; $5012: $68
    ld a, b                                       ; $5013: $78
    ret c                                         ; $5014: $d8

    ld hl, sp-$42                                 ; $5015: $f8 $be
    xor $21                                       ; $5017: $ee $21
    rst $38                                       ; $5019: $ff
    ld bc, $31ff                                  ; $501a: $01 $ff $31
    rst $18                                       ; $501d: $df
    ld a, d                                       ; $501e: $7a
    or [hl]                                       ; $501f: $b6
    cp h                                          ; $5020: $bc
    call c, $a060                                 ; $5021: $dc $60 $a0
    ldh a, [$30]                                  ; $5024: $f0 $30
    ret z                                         ; $5026: $c8

    ld a, b                                       ; $5027: $78
    add sp, -$08                                  ; $5028: $e8 $f8
    ldh a, [$f0]                                  ; $502a: $f0 $f0
    ret nc                                        ; $502c: $d0

    ldh a, [$e0]                                  ; $502d: $f0 $e0
    ldh [rSB], a                                  ; $502f: $e0 $01
    ld bc, $0302                                  ; $5031: $01 $02 $03
    inc bc                                        ; $5034: $03
    inc bc                                        ; $5035: $03
    rlca                                          ; $5036: $07
    ld b, $07                                     ; $5037: $06 $07
    dec b                                         ; $5039: $05
    ld [$0c0f], sp                                ; $503a: $08 $0f $0c
    dec bc                                        ; $503d: $0b
    inc b                                         ; $503e: $04
    rlca                                          ; $503f: $07
    ld [bc], a                                    ; $5040: $02
    inc bc                                        ; $5041: $03
    rra                                           ; $5042: $1f
    rra                                           ; $5043: $1f
    rla                                           ; $5044: $17
    ld e, $0b                                     ; $5045: $1e $0b

jr_023_5047:
    ld c, $0b                                     ; $5047: $0e $0b
    rrca                                          ; $5049: $0f
    rrca                                          ; $504a: $0f
    rrca                                          ; $504b: $0f
    rlca                                          ; $504c: $07
    rlca                                          ; $504d: $07
    nop                                           ; $504e: $00
    nop                                           ; $504f: $00
    ret nz                                        ; $5050: $c0

    ret nz                                        ; $5051: $c0

    and b                                         ; $5052: $a0
    ldh [$e0], a                                  ; $5053: $e0 $e0
    ldh [$f0], a                                  ; $5055: $e0 $f0
    or b                                          ; $5057: $b0
    ld [hl], b                                    ; $5058: $70
    ret nc                                        ; $5059: $d0

    ld [$18f8], sp                                ; $505a: $08 $f8 $18
    add sp, $10                                   ; $505d: $e8 $10
    ldh a, [rNR41]                                ; $505f: $f0 $20
    ldh [$c0], a                                  ; $5061: $e0 $c0
    ret nz                                        ; $5063: $c0

    ret nz                                        ; $5064: $c0

    ret nz                                        ; $5065: $c0

    and b                                         ; $5066: $a0
    ldh [$a0], a                                  ; $5067: $e0 $a0
    ldh [$e0], a                                  ; $5069: $e0 $e0
    ldh [rNR41], a                                ; $506b: $e0 $20
    ldh [$c0], a                                  ; $506d: $e0 $c0
    ret nz                                        ; $506f: $c0

    ld [bc], a                                    ; $5070: $02
    ld [bc], a                                    ; $5071: $02
    dec b                                         ; $5072: $05
    rlca                                          ; $5073: $07
    ld b, $07                                     ; $5074: $06 $07
    rra                                           ; $5076: $1f
    dec e                                         ; $5077: $1d
    ld hl, $203f                                  ; $5078: $21 $3f $20
    ccf                                           ; $507b: $3f
    inc hl                                        ; $507c: $23
    ld a, $17                                     ; $507d: $3e $17
    dec de                                        ; $507f: $1b
    rrca                                          ; $5080: $0f
    ld c, $0e                                     ; $5081: $0e $0e
    dec c                                         ; $5083: $0d
    inc de                                        ; $5084: $13
    ld e, $17                                     ; $5085: $1e $17
    rra                                           ; $5087: $1f
    ld c, $0f                                     ; $5088: $0e $0f
    dec bc                                        ; $508a: $0b
    rrca                                          ; $508b: $0f
    dec c                                         ; $508c: $0d
    rrca                                          ; $508d: $0f
    rlca                                          ; $508e: $07
    rlca                                          ; $508f: $07
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    add b                                         ; $5092: $80
    add b                                         ; $5093: $80
    ldh [$e0], a                                  ; $5094: $e0 $e0
    ld h, b                                       ; $5096: $60
    ldh [$30], a                                  ; $5097: $e0 $30
    ldh a, [$30]                                  ; $5099: $f0 $30
    ldh a, [rNR41]                                ; $509b: $f0 $20
    ldh [$a0], a                                  ; $509d: $e0 $a0
    ld h, b                                       ; $509f: $60
    ld d, b                                       ; $50a0: $50
    ldh a, [$dc]                                  ; $50a1: $f0 $dc
    cp h                                          ; $50a3: $bc
    ld h, h                                       ; $50a4: $64
    db $fc                                        ; $50a5: $fc
    ld [$10f8], sp                                ; $50a6: $08 $f8 $10
    ldh a, [$78]                                  ; $50a9: $f0 $78
    ld hl, sp-$18                                 ; $50ab: $f8 $e8
    ld hl, sp+$70                                 ; $50ad: $f8 $70
    ld [hl], b                                    ; $50af: $70
    ld bc, $0201                                  ; $50b0: $01 $01 $02
    inc bc                                        ; $50b3: $03
    ld [bc], a                                    ; $50b4: $02
    inc bc                                        ; $50b5: $03
    rlca                                          ; $50b6: $07
    rlca                                          ; $50b7: $07
    dec b                                         ; $50b8: $05
    rlca                                          ; $50b9: $07
    ld [$0d0f], sp                                ; $50ba: $08 $0f $0d
    dec bc                                        ; $50bd: $0b
    dec b                                         ; $50be: $05
    rlca                                          ; $50bf: $07
    ld [bc], a                                    ; $50c0: $02
    inc bc                                        ; $50c1: $03
    ld b, $07                                     ; $50c2: $06 $07
    add hl, bc                                    ; $50c4: $09
    rrca                                          ; $50c5: $0f
    ld [$0f0f], sp                                ; $50c6: $08 $0f $0f
    ld c, $0b                                     ; $50c9: $0e $0b
    rrca                                          ; $50cb: $0f
    rlca                                          ; $50cc: $07
    rlca                                          ; $50cd: $07

jr_023_50ce:
    nop                                           ; $50ce: $00
    nop                                           ; $50cf: $00
    ret nz                                        ; $50d0: $c0

    ret nz                                        ; $50d1: $c0

    and b                                         ; $50d2: $a0
    ldh [$a0], a                                  ; $50d3: $e0 $a0
    ldh [$b0], a                                  ; $50d5: $e0 $b0
    ldh a, [$d0]                                  ; $50d7: $f0 $d0
    ldh a, [$c8]                                  ; $50d9: $f0 $c8
    ld hl, sp-$68                                 ; $50db: $f8 $98
    add sp, -$30                                  ; $50dd: $e8 $d0
    ldh a, [$a0]                                  ; $50df: $f0 $a0
    ld h, b                                       ; $50e1: $60
    ld h, b                                       ; $50e2: $60
    ldh [$90], a                                  ; $50e3: $e0 $90
    ldh a, [rNR10]                                ; $50e5: $f0 $10
    ldh a, [$a0]                                  ; $50e7: $f0 $a0
    ld h, b                                       ; $50e9: $60
    ldh [$e0], a                                  ; $50ea: $e0 $e0
    jr nz, jr_023_50ce                            ; $50ec: $20 $e0

    ret nz                                        ; $50ee: $c0

    ret nz                                        ; $50ef: $c0

    nop                                           ; $50f0: $00
    nop                                           ; $50f1: $00
    ld bc, $0701                                  ; $50f2: $01 $01 $07
    rlca                                          ; $50f5: $07
    ld b, $07                                     ; $50f6: $06 $07
    inc c                                         ; $50f8: $0c
    rrca                                          ; $50f9: $0f
    inc c                                         ; $50fa: $0c
    rrca                                          ; $50fb: $0f
    inc b                                         ; $50fc: $04
    rlca                                          ; $50fd: $07
    dec b                                         ; $50fe: $05
    ld b, $0a                                     ; $50ff: $06 $0a
    rrca                                          ; $5101: $0f
    dec sp                                        ; $5102: $3b
    dec a                                         ; $5103: $3d
    ld h, $3f                                     ; $5104: $26 $3f
    jr z, jr_023_5147                             ; $5106: $28 $3f

    inc e                                         ; $5108: $1c
    rra                                           ; $5109: $1f
    rla                                           ; $510a: $17
    rra                                           ; $510b: $1f
    ld a, [bc]                                    ; $510c: $0a
    ld c, $06                                     ; $510d: $0e $06
    ld b, $40                                     ; $510f: $06 $40
    ld b, b                                       ; $5111: $40
    and b                                         ; $5112: $a0
    ldh [$60], a                                  ; $5113: $e0 $60
    ldh [$f8], a                                  ; $5115: $e0 $f8
    cp b                                          ; $5117: $b8
    add h                                         ; $5118: $84
    db $fc                                        ; $5119: $fc
    inc b                                         ; $511a: $04
    db $fc                                        ; $511b: $fc
    call nz, $e87c                                ; $511c: $c4 $7c $e8
    ret c                                         ; $511f: $d8

    ldh a, [rSVBK]                                ; $5120: $f0 $70
    ld h, b                                       ; $5122: $60
    and b                                         ; $5123: $a0
    ldh a, [$30]                                  ; $5124: $f0 $30
    ret z                                         ; $5126: $c8

    ld a, b                                       ; $5127: $78
    add sp, -$08                                  ; $5128: $e8 $f8
    ldh a, [$f0]                                  ; $512a: $f0 $f0
    ret nc                                        ; $512c: $d0

    ldh a, [$e0]                                  ; $512d: $f0 $e0
    ldh [rTAC], a                                 ; $512f: $e0 $07
    rlca                                          ; $5131: $07
    ld a, [bc]                                    ; $5132: $0a
    rrca                                          ; $5133: $0f
    rrca                                          ; $5134: $0f
    rrca                                          ; $5135: $0f
    rra                                           ; $5136: $1f
    ld a, [de]                                    ; $5137: $1a
    dec e                                         ; $5138: $1d
    rla                                           ; $5139: $17
    jr nz, jr_023_517b                            ; $513a: $20 $3f

jr_023_513c:
    jr nc, jr_023_516d                            ; $513c: $30 $2f

    db $10                                        ; $513e: $10
    rra                                           ; $513f: $1f
    ld [$1f0f], sp                                ; $5140: $08 $0f $1f
    rra                                           ; $5143: $1f
    rla                                           ; $5144: $17
    ld e, $0b                                     ; $5145: $1e $0b

jr_023_5147:
    ld c, $0b                                     ; $5147: $0e $0b
    rrca                                          ; $5149: $0f
    rrca                                          ; $514a: $0f
    rrca                                          ; $514b: $0f
    rlca                                          ; $514c: $07
    rlca                                          ; $514d: $07
    nop                                           ; $514e: $00
    nop                                           ; $514f: $00
    nop                                           ; $5150: $00
    nop                                           ; $5151: $00
    add b                                         ; $5152: $80
    add b                                         ; $5153: $80
    add b                                         ; $5154: $80
    add b                                         ; $5155: $80
    ret nz                                        ; $5156: $c0

    ret nz                                        ; $5157: $c0

    ret nz                                        ; $5158: $c0

    ld b, b                                       ; $5159: $40
    jr nz, jr_023_513c                            ; $515a: $20 $e0

    ld h, b                                       ; $515c: $60
    and b                                         ; $515d: $a0
    ld b, b                                       ; $515e: $40
    ret nz                                        ; $515f: $c0

    add b                                         ; $5160: $80
    add b                                         ; $5161: $80
    ret nz                                        ; $5162: $c0

    ret nz                                        ; $5163: $c0

    ret nz                                        ; $5164: $c0

    ret nz                                        ; $5165: $c0

    and b                                         ; $5166: $a0
    ldh [$a0], a                                  ; $5167: $e0 $a0
    ldh [$e0], a                                  ; $5169: $e0 $e0
    ldh [rNR41], a                                ; $516b: $e0 $20

jr_023_516d:
    ldh [$c0], a                                  ; $516d: $e0 $c0
    ret nz                                        ; $516f: $c0

    ld [$1608], sp                                ; $5170: $08 $08 $16
    ld e, $1b                                     ; $5173: $1e $1b
    rra                                           ; $5175: $1f
    ld a, l                                       ; $5176: $7d
    ld [hl], a                                    ; $5177: $77
    add h                                         ; $5178: $84
    rst $38                                       ; $5179: $ff
    add b                                         ; $517a: $80

jr_023_517b:
    rst $38                                       ; $517b: $ff
    adc h                                         ; $517c: $8c
    ei                                            ; $517d: $fb
    ld e, [hl]                                    ; $517e: $5e
    ld l, l                                       ; $517f: $6d
    dec a                                         ; $5180: $3d
    dec sp                                        ; $5181: $3b
    ld c, $0d                                     ; $5182: $0e $0d
    inc de                                        ; $5184: $13
    ld e, $17                                     ; $5185: $1e $17
    rra                                           ; $5187: $1f
    ld c, $0f                                     ; $5188: $0e $0f
    dec bc                                        ; $518a: $0b
    rrca                                          ; $518b: $0f
    dec c                                         ; $518c: $0d
    rrca                                          ; $518d: $0f
    rlca                                          ; $518e: $07
    rlca                                          ; $518f: $07
    nop                                           ; $5190: $00
    nop                                           ; $5191: $00
    nop                                           ; $5192: $00
    nop                                           ; $5193: $00
    add b                                         ; $5194: $80
    add b                                         ; $5195: $80
    add b                                         ; $5196: $80
    add b                                         ; $5197: $80
    ret nz                                        ; $5198: $c0

    ret nz                                        ; $5199: $c0

    ret nz                                        ; $519a: $c0

    ret nz                                        ; $519b: $c0

    add b                                         ; $519c: $80
    add b                                         ; $519d: $80
    add b                                         ; $519e: $80
    add b                                         ; $519f: $80
    ld b, b                                       ; $51a0: $40
    ret nz                                        ; $51a1: $c0

    call c, $64bc                                 ; $51a2: $dc $bc $64
    db $fc                                        ; $51a5: $fc
    ld [$10f8], sp                                ; $51a6: $08 $f8 $10
    ldh a, [$78]                                  ; $51a9: $f0 $78
    ld hl, sp-$18                                 ; $51ab: $f8 $e8
    ld hl, sp+$70                                 ; $51ad: $f8 $70
    ld [hl], b                                    ; $51af: $70
    rlca                                          ; $51b0: $07
    rlca                                          ; $51b1: $07
    ld a, [bc]                                    ; $51b2: $0a
    rrca                                          ; $51b3: $0f
    ld a, [bc]                                    ; $51b4: $0a
    rrca                                          ; $51b5: $0f
    ld e, $1f                                     ; $51b6: $1e $1f
    rla                                           ; $51b8: $17
    rra                                           ; $51b9: $1f
    inc hl                                        ; $51ba: $23
    ccf                                           ; $51bb: $3f

jr_023_51bc:
    ld [hl], $2f                                  ; $51bc: $36 $2f
    rla                                           ; $51be: $17
    rra                                           ; $51bf: $1f
    ld a, [bc]                                    ; $51c0: $0a
    dec c                                         ; $51c1: $0d
    ld b, $07                                     ; $51c2: $06 $07
    add hl, bc                                    ; $51c4: $09
    rrca                                          ; $51c5: $0f
    ld [$0f0f], sp                                ; $51c6: $08 $0f $0f
    ld c, $0b                                     ; $51c9: $0e $0b
    rrca                                          ; $51cb: $0f
    rlca                                          ; $51cc: $07
    rlca                                          ; $51cd: $07

jr_023_51ce:
    nop                                           ; $51ce: $00
    nop                                           ; $51cf: $00
    nop                                           ; $51d0: $00
    nop                                           ; $51d1: $00
    add b                                         ; $51d2: $80
    add b                                         ; $51d3: $80
    add b                                         ; $51d4: $80
    add b                                         ; $51d5: $80
    ret nz                                        ; $51d6: $c0

    ret nz                                        ; $51d7: $c0

    ld b, b                                       ; $51d8: $40
    ret nz                                        ; $51d9: $c0

    jr nz, jr_023_51bc                            ; $51da: $20 $e0

    ld h, b                                       ; $51dc: $60
    and b                                         ; $51dd: $a0
    ld b, b                                       ; $51de: $40
    ret nz                                        ; $51df: $c0

    add b                                         ; $51e0: $80
    add b                                         ; $51e1: $80
    ld h, b                                       ; $51e2: $60
    ldh [$90], a                                  ; $51e3: $e0 $90
    ldh a, [rNR10]                                ; $51e5: $f0 $10
    ldh a, [$a0]                                  ; $51e7: $f0 $a0
    ld h, b                                       ; $51e9: $60
    ldh [$e0], a                                  ; $51ea: $e0 $e0
    jr nz, jr_023_51ce                            ; $51ec: $20 $e0

    ret nz                                        ; $51ee: $c0

    ret nz                                        ; $51ef: $c0

    nop                                           ; $51f0: $00
    nop                                           ; $51f1: $00
    nop                                           ; $51f2: $00
    nop                                           ; $51f3: $00
    nop                                           ; $51f4: $00
    nop                                           ; $51f5: $00
    inc bc                                        ; $51f6: $03
    inc bc                                        ; $51f7: $03
    inc bc                                        ; $51f8: $03
    inc bc                                        ; $51f9: $03
    ld [bc], a                                    ; $51fa: $02
    inc bc                                        ; $51fb: $03
    ld [bc], a                                    ; $51fc: $02
    inc bc                                        ; $51fd: $03
    ld [bc], a                                    ; $51fe: $02
    inc bc                                        ; $51ff: $03
    ld bc, $1f03                                  ; $5200: $01 $03 $1f
    dec e                                         ; $5203: $1d
    inc d                                         ; $5204: $14
    rra                                           ; $5205: $1f
    inc c                                         ; $5206: $0c
    rrca                                          ; $5207: $0f
    dec bc                                        ; $5208: $0b
    rrca                                          ; $5209: $0f
    ld b, $06                                     ; $520a: $06 $06
    ld [bc], a                                    ; $520c: $02
    ld [bc], a                                    ; $520d: $02
    nop                                           ; $520e: $00
    nop                                           ; $520f: $00
    nop                                           ; $5210: $00
    nop                                           ; $5211: $00
    nop                                           ; $5212: $00
    nop                                           ; $5213: $00
    ldh [$e0], a                                  ; $5214: $e0 $e0
    and b                                         ; $5216: $a0
    ldh [$78], a                                  ; $5217: $e0 $78
    ld hl, sp+$44                                 ; $5219: $f8 $44
    db $fc                                        ; $521b: $fc
    ld b, h                                       ; $521c: $44
    cp h                                          ; $521d: $bc
    add sp, $58                                   ; $521e: $e8 $58
    ld [hl], b                                    ; $5220: $70
    or b                                          ; $5221: $b0
    ld b, b                                       ; $5222: $40
    add b                                         ; $5223: $80
    ret nc                                        ; $5224: $d0

    ld [hl], b                                    ; $5225: $70
    ret nc                                        ; $5226: $d0

    ldh a, [$e0]                                  ; $5227: $f0 $e0
    ldh [$e0], a                                  ; $5229: $e0 $e0
    ldh [$c0], a                                  ; $522b: $e0 $c0
    ret nz                                        ; $522d: $c0

    nop                                           ; $522e: $00
    nop                                           ; $522f: $00
    nop                                           ; $5230: $00
    nop                                           ; $5231: $00
    inc bc                                        ; $5232: $03
    inc bc                                        ; $5233: $03
    ld bc, $0303                                  ; $5234: $01 $03 $03
    inc bc                                        ; $5237: $03
    rlca                                          ; $5238: $07
    dec b                                         ; $5239: $05
    ld b, $07                                     ; $523a: $06 $07
    inc c                                         ; $523c: $0c
    dec bc                                        ; $523d: $0b

jr_023_523e:
    inc b                                         ; $523e: $04
    rlca                                          ; $523f: $07
    nop                                           ; $5240: $00
    inc bc                                        ; $5241: $03
    rrca                                          ; $5242: $0f
    rrca                                          ; $5243: $0f
    rlca                                          ; $5244: $07
    ld b, $07                                     ; $5245: $06 $07
    rlca                                          ; $5247: $07
    rlca                                          ; $5248: $07
    rlca                                          ; $5249: $07
    inc bc                                        ; $524a: $03
    inc bc                                        ; $524b: $03
    nop                                           ; $524c: $00
    nop                                           ; $524d: $00
    nop                                           ; $524e: $00
    nop                                           ; $524f: $00
    nop                                           ; $5250: $00
    nop                                           ; $5251: $00
    add b                                         ; $5252: $80
    add b                                         ; $5253: $80
    ld b, b                                       ; $5254: $40
    ret nz                                        ; $5255: $c0

    ret nz                                        ; $5256: $c0

    ret nz                                        ; $5257: $c0

    ret nz                                        ; $5258: $c0

    ld b, b                                       ; $5259: $40
    ret nz                                        ; $525a: $c0

    add b                                         ; $525b: $80
    jr nz, jr_023_523e                            ; $525c: $20 $e0

    nop                                           ; $525e: $00
    ret nz                                        ; $525f: $c0

    ld b, b                                       ; $5260: $40
    ret nz                                        ; $5261: $c0

    ret nz                                        ; $5262: $c0

    ret nz                                        ; $5263: $c0

    add b                                         ; $5264: $80
    ret nz                                        ; $5265: $c0

    add b                                         ; $5266: $80
    ret nz                                        ; $5267: $c0

    ret nz                                        ; $5268: $c0

    ret nz                                        ; $5269: $c0

    nop                                           ; $526a: $00
    ret nz                                        ; $526b: $c0

    ret nz                                        ; $526c: $c0

    ret nz                                        ; $526d: $c0

    nop                                           ; $526e: $00
    nop                                           ; $526f: $00
    nop                                           ; $5270: $00
    nop                                           ; $5271: $00
    nop                                           ; $5272: $00
    nop                                           ; $5273: $00
    rlca                                          ; $5274: $07
    rlca                                          ; $5275: $07
    dec b                                         ; $5276: $05
    rlca                                          ; $5277: $07
    ld e, $1f                                     ; $5278: $1e $1f
    ld [hl+], a                                   ; $527a: $22
    ccf                                           ; $527b: $3f
    ld [hl+], a                                   ; $527c: $22
    dec a                                         ; $527d: $3d
    rla                                           ; $527e: $17
    ld a, [de]                                    ; $527f: $1a
    ld c, $0d                                     ; $5280: $0e $0d
    ld b, $05                                     ; $5282: $06 $05
    dec bc                                        ; $5284: $0b
    rrca                                          ; $5285: $0f
    ld b, $07                                     ; $5286: $06 $07
    rlca                                          ; $5288: $07
    rlca                                          ; $5289: $07
    dec b                                         ; $528a: $05
    rlca                                          ; $528b: $07
    inc bc                                        ; $528c: $03
    inc bc                                        ; $528d: $03
    nop                                           ; $528e: $00
    nop                                           ; $528f: $00
    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    nop                                           ; $5293: $00
    nop                                           ; $5294: $00
    nop                                           ; $5295: $00
    ret nz                                        ; $5296: $c0

    ret nz                                        ; $5297: $c0

    ret nz                                        ; $5298: $c0

    ret nz                                        ; $5299: $c0

    ld b, b                                       ; $529a: $40
    ret nz                                        ; $529b: $c0

    ld b, b                                       ; $529c: $40
    ret nz                                        ; $529d: $c0

    ld b, b                                       ; $529e: $40
    ret nz                                        ; $529f: $c0

    add b                                         ; $52a0: $80
    ret nz                                        ; $52a1: $c0

    ld hl, sp-$48                                 ; $52a2: $f8 $b8
    db $10                                        ; $52a4: $10
    ldh a, [rNR41]                                ; $52a5: $f0 $20
    ldh [rSVBK], a                                ; $52a7: $e0 $70
    ldh a, [$d0]                                  ; $52a9: $f0 $d0
    ldh a, [$60]                                  ; $52ab: $f0 $60
    ld h, b                                       ; $52ad: $60
    nop                                           ; $52ae: $00
    nop                                           ; $52af: $00
    nop                                           ; $52b0: $00
    nop                                           ; $52b1: $00
    inc bc                                        ; $52b2: $03
    inc bc                                        ; $52b3: $03
    ld bc, $0103                                  ; $52b4: $01 $03 $01
    inc bc                                        ; $52b7: $03
    rlca                                          ; $52b8: $07
    rlca                                          ; $52b9: $07
    rlca                                          ; $52ba: $07
    rlca                                          ; $52bb: $07
    rrca                                          ; $52bc: $0f
    dec bc                                        ; $52bd: $0b

jr_023_52be:
    rlca                                          ; $52be: $07
    rlca                                          ; $52bf: $07
    ld bc, $0202                                  ; $52c0: $01 $02 $02
    inc bc                                        ; $52c3: $03
    inc b                                         ; $52c4: $04
    rlca                                          ; $52c5: $07

jr_023_52c6:
    rlca                                          ; $52c6: $07
    ld b, $07                                     ; $52c7: $06 $07
    rlca                                          ; $52c9: $07
    inc bc                                        ; $52ca: $03
    inc bc                                        ; $52cb: $03
    nop                                           ; $52cc: $00
    nop                                           ; $52cd: $00
    nop                                           ; $52ce: $00
    nop                                           ; $52cf: $00
    nop                                           ; $52d0: $00
    nop                                           ; $52d1: $00
    add b                                         ; $52d2: $80
    add b                                         ; $52d3: $80
    ld b, b                                       ; $52d4: $40
    ret nz                                        ; $52d5: $c0

    ld b, b                                       ; $52d6: $40
    ret nz                                        ; $52d7: $c0

    ld b, b                                       ; $52d8: $40
    ret nz                                        ; $52d9: $c0

    add b                                         ; $52da: $80
    ret nz                                        ; $52db: $c0

    jr nz, jr_023_52be                            ; $52dc: $20 $e0

    add b                                         ; $52de: $80
    ret nz                                        ; $52df: $c0

    ld b, b                                       ; $52e0: $40
    ret nz                                        ; $52e1: $c0

    ld b, b                                       ; $52e2: $40
    ret nz                                        ; $52e3: $c0

    jr nz, jr_023_52c6                            ; $52e4: $20 $e0

    add b                                         ; $52e6: $80
    ld b, b                                       ; $52e7: $40
    ret nz                                        ; $52e8: $c0

    ret nz                                        ; $52e9: $c0

    nop                                           ; $52ea: $00
    ret nz                                        ; $52eb: $c0

    ret nz                                        ; $52ec: $c0

    ret nz                                        ; $52ed: $c0

    nop                                           ; $52ee: $00
    nop                                           ; $52ef: $00
    ld [bc], a                                    ; $52f0: $02
    ld d, e                                       ; $52f1: $53
    dec b                                         ; $52f2: $05
    ld d, e                                       ; $52f3: $53
    dec bc                                        ; $52f4: $0b
    ld d, e                                       ; $52f5: $53
    ld c, $53                                     ; $52f6: $0e $53
    add hl, de                                    ; $52f8: $19
    ld d, e                                       ; $52f9: $53
    jr nz, jr_023_534f                            ; $52fa: $20 $53

    jr z, @+$55                                   ; $52fc: $28 $53

    inc a                                         ; $52fe: $3c
    ld d, e                                       ; $52ff: $53
    ld c, b                                       ; $5300: $48
    ld d, e                                       ; $5301: $53
    nop                                           ; $5302: $00
    rst $38                                       ; $5303: $ff
    db $fd                                        ; $5304: $fd
    nop                                           ; $5305: $00
    ld e, $01                                     ; $5306: $1e $01
    ld e, $ff                                     ; $5308: $1e $ff
    nop                                           ; $530a: $00
    ld [bc], a                                    ; $530b: $02
    rst $38                                       ; $530c: $ff
    db $fd                                        ; $530d: $fd
    ld [bc], a                                    ; $530e: $02
    inc c                                         ; $530f: $0c
    inc bc                                        ; $5310: $03
    inc c                                         ; $5311: $0c
    inc b                                         ; $5312: $04
    jr jr_023_5317                                ; $5313: $18 $02

    inc c                                         ; $5315: $0c
    dec b                                         ; $5316: $05

jr_023_5317:
    inc c                                         ; $5317: $0c
    db $fd                                        ; $5318: $fd
    ld [bc], a                                    ; $5319: $02
    jr @+$05                                      ; $531a: $18 $03

    jr jr_023_5320                                ; $531c: $18 $02

    jr @-$01                                      ; $531e: $18 $fd

jr_023_5320:
    nop                                           ; $5320: $00
    ld a, [bc]                                    ; $5321: $0a
    ld b, $1e                                     ; $5322: $06 $1e
    nop                                           ; $5324: $00
    ld a, [bc]                                    ; $5325: $0a
    cp $01                                        ; $5326: $fe $01
    nop                                           ; $5328: $00
    ld a, [bc]                                    ; $5329: $0a
    rlca                                          ; $532a: $07
    ld a, [bc]                                    ; $532b: $0a
    nop                                           ; $532c: $00
    inc bc                                        ; $532d: $03
    ld [$000a], sp                                ; $532e: $08 $0a $00
    inc bc                                        ; $5331: $03
    rlca                                          ; $5332: $07
    ld a, [bc]                                    ; $5333: $0a
    nop                                           ; $5334: $00
    inc bc                                        ; $5335: $03
    ld [$000a], sp                                ; $5336: $08 $0a $00
    ld a, [bc]                                    ; $5339: $0a
    cp $01                                        ; $533a: $fe $01
    nop                                           ; $533c: $00
    ld a, [bc]                                    ; $533d: $0a
    add hl, bc                                    ; $533e: $09
    ld [$0800], sp                                ; $533f: $08 $00 $08
    add hl, bc                                    ; $5342: $09
    ld [$0a00], sp                                ; $5343: $08 $00 $0a
    cp $01                                        ; $5346: $fe $01
    ld [bc], a                                    ; $5348: $02
    ld [de], a                                    ; $5349: $12
    inc bc                                        ; $534a: $03
    ld [de], a                                    ; $534b: $12
    ld [bc], a                                    ; $534c: $02
    ld e, $05                                     ; $534d: $1e $05

jr_023_534f:
    ld [de], a                                    ; $534f: $12
    db $fd                                        ; $5350: $fd

    db $06, $04, $59, $53, $70, $59, $59, $53, $70, $53, $70, $54, $70, $54, $70, $54

    ld [hl], b                                    ; $5361: $70
    ld d, h                                       ; $5362: $54
    ld [hl], b                                    ; $5363: $70
    ld d, h                                       ; $5364: $54

    db $70, $55

    ld [hl], b                                    ; $5367: $70
    ld d, [hl]                                    ; $5368: $56
    ld [hl], b                                    ; $5369: $70
    ld d, a                                       ; $536a: $57
    ld [hl], b                                    ; $536b: $70
    ld e, b                                       ; $536c: $58
    nop                                           ; $536d: $00
    nop                                           ; $536e: $00
    nop                                           ; $536f: $00
    inc bc                                        ; $5370: $03
    inc bc                                        ; $5371: $03
    rrca                                          ; $5372: $0f
    inc c                                         ; $5373: $0c
    inc de                                        ; $5374: $13
    inc e                                         ; $5375: $1c
    rla                                           ; $5376: $17
    jr @+$3e                                      ; $5377: $18 $3c

    inc hl                                        ; $5379: $23
    jr c, @+$29                                   ; $537a: $38 $27

    jr c, @+$29                                   ; $537c: $38 $27

    inc a                                         ; $537e: $3c

jr_023_537f:
    inc hl                                        ; $537f: $23
    rla                                           ; $5380: $17
    add hl, de                                    ; $5381: $19
    rla                                           ; $5382: $17
    add hl, de                                    ; $5383: $19
    rrca                                          ; $5384: $0f
    rrca                                          ; $5385: $0f
    inc bc                                        ; $5386: $03
    ld [bc], a                                    ; $5387: $02
    rlca                                          ; $5388: $07
    dec b                                         ; $5389: $05
    rrca                                          ; $538a: $0f
    rrca                                          ; $538b: $0f
    dec bc                                        ; $538c: $0b
    rrca                                          ; $538d: $0f
    rlca                                          ; $538e: $07
    rlca                                          ; $538f: $07
    ret nz                                        ; $5390: $c0

    ret nz                                        ; $5391: $c0

    or b                                          ; $5392: $b0
    ld [hl], b                                    ; $5393: $70
    ret z                                         ; $5394: $c8

jr_023_5395:
    jr c, jr_023_537f                             ; $5395: $38 $e8

    jr jr_023_5395                                ; $5397: $18 $fc

    inc b                                         ; $5399: $04

jr_023_539a:
    ld a, h                                       ; $539a: $7c
    or h                                          ; $539b: $b4
    ld a, b                                       ; $539c: $78
    ret z                                         ; $539d: $c8

    ld hl, sp-$68                                 ; $539e: $f8 $98

jr_023_53a0:
    ld hl, sp+$18                                 ; $53a0: $f8 $18
    ld hl, sp+$08                                 ; $53a2: $f8 $08
    ldh a, [$90]                                  ; $53a4: $f0 $90
    ldh [$e0], a                                  ; $53a6: $e0 $e0
    jr nc, jr_023_539a                            ; $53a8: $30 $f0

    add sp, -$08                                  ; $53aa: $e8 $f8
    ret c                                         ; $53ac: $d8

    ld hl, sp+$70                                 ; $53ad: $f8 $70
    ld [hl], b                                    ; $53af: $70
    inc bc                                        ; $53b0: $03
    inc bc                                        ; $53b1: $03
    ld c, $0d                                     ; $53b2: $0e $0d
    ld e, $11                                     ; $53b4: $1e $11
    rla                                           ; $53b6: $17
    jr jr_023_53e0                                ; $53b7: $18 $27

    jr c, jr_023_53ea                             ; $53b9: $38 $2f

    inc sp                                        ; $53bb: $33
    ccf                                           ; $53bc: $3f
    inc h                                         ; $53bd: $24

jr_023_53be:
    ccf                                           ; $53be: $3f
    ld a, [hl+]                                   ; $53bf: $2a
    rra                                           ; $53c0: $1f
    ld a, [de]                                    ; $53c1: $1a
    rra                                           ; $53c2: $1f
    jr jr_023_5404                                ; $53c3: $18 $3f

    inc l                                         ; $53c5: $2c
    dec sp                                        ; $53c6: $3b
    ccf                                           ; $53c7: $3f
    rlca                                          ; $53c8: $07
    ld b, $07                                     ; $53c9: $06 $07
    rlca                                          ; $53cb: $07
    inc b                                         ; $53cc: $04
    rlca                                          ; $53cd: $07
    inc bc                                        ; $53ce: $03
    inc bc                                        ; $53cf: $03
    ret nz                                        ; $53d0: $c0

    ret nz                                        ; $53d1: $c0

    jr nc, @-$0e                                  ; $53d2: $30 $f0

    jr jr_023_53be                                ; $53d4: $18 $e8

    jr c, jr_023_53a0                             ; $53d6: $38 $c8

    db $fc                                        ; $53d8: $fc
    inc b                                         ; $53d9: $04
    db $f4                                        ; $53da: $f4
    call z, Call_000_2cf4                         ; $53db: $cc $f4 $2c
    db $f4                                        ; $53de: $f4
    ld e, h                                       ; $53df: $5c

jr_023_53e0:
    ld hl, sp+$58                                 ; $53e0: $f8 $58
    ldh a, [rNR10]                                ; $53e2: $f0 $10
    ld hl, sp+$38                                 ; $53e4: $f8 $38
    call c, $dcf4                                 ; $53e6: $dc $f4 $dc
    ld [hl], h                                    ; $53e9: $74

jr_023_53ea:
    ld hl, sp-$08                                 ; $53ea: $f8 $f8
    ldh [$e0], a                                  ; $53ec: $e0 $e0
    add b                                         ; $53ee: $80
    add b                                         ; $53ef: $80
    inc bc                                        ; $53f0: $03
    inc bc                                        ; $53f1: $03
    dec c                                         ; $53f2: $0d
    ld c, $11                                     ; $53f3: $0e $11
    ld e, $13                                     ; $53f5: $1e $13
    inc e                                         ; $53f7: $1c
    ccf                                           ; $53f8: $3f
    jr nz, jr_023_5439                            ; $53f9: $20 $3e

    dec l                                         ; $53fb: $2d
    ld e, $13                                     ; $53fc: $1e $13
    rra                                           ; $53fe: $1f

jr_023_53ff:
    add hl, de                                    ; $53ff: $19
    rra                                           ; $5400: $1f
    jr jr_023_5422                                ; $5401: $18 $1f

    db $10                                        ; $5403: $10

jr_023_5404:
    rrca                                          ; $5404: $0f
    add hl, bc                                    ; $5405: $09
    rlca                                          ; $5406: $07
    ld b, $0f                                     ; $5407: $06 $0f
    dec c                                         ; $5409: $0d
    rra                                           ; $540a: $1f
    rra                                           ; $540b: $1f
    rla                                           ; $540c: $17
    rra                                           ; $540d: $1f
    ld c, $0e                                     ; $540e: $0e $0e
    ret nz                                        ; $5410: $c0

    ret nz                                        ; $5411: $c0

    ldh a, [$30]                                  ; $5412: $f0 $30
    ret z                                         ; $5414: $c8

jr_023_5415:
    jr c, jr_023_53ff                             ; $5415: $38 $e8

    jr jr_023_5415                                ; $5417: $18 $fc

    inc b                                         ; $5419: $04
    ld a, h                                       ; $541a: $7c
    add h                                         ; $541b: $84
    inc a                                         ; $541c: $3c
    call nz, $c43c                                ; $541d: $c4 $3c $c4
    cp b                                          ; $5420: $b8
    ret z                                         ; $5421: $c8

jr_023_5422:
    add sp, -$68                                  ; $5422: $e8 $98
    ldh a, [$f0]                                  ; $5424: $f0 $f0
    and b                                         ; $5426: $a0
    ldh [$e0], a                                  ; $5427: $e0 $e0
    ldh [$d0], a                                  ; $5429: $e0 $d0
    ldh a, [$90]                                  ; $542b: $f0 $90
    ldh a, [$e0]                                  ; $542d: $f0 $e0
    ldh [$03], a                                  ; $542f: $e0 $03
    inc bc                                        ; $5431: $03
    inc c                                         ; $5432: $0c
    rrca                                          ; $5433: $0f
    jr jr_023_544d                                ; $5434: $18 $17

    jr jr_023_544f                                ; $5436: $18 $17

    inc a                                         ; $5438: $3c

jr_023_5439:
    inc hl                                        ; $5439: $23
    ccf                                           ; $543a: $3f
    jr nz, jr_023_546c                            ; $543b: $20 $2f

    jr nc, jr_023_546e                            ; $543d: $30 $2f

    jr nc, jr_023_5460                            ; $543f: $30 $1f

    db $10                                        ; $5441: $10
    ld e, $19                                     ; $5442: $1e $19
    ld a, $2d                                     ; $5444: $3e $2d
    dec sp                                        ; $5446: $3b
    ccf                                           ; $5447: $3f
    inc b                                         ; $5448: $04
    rlca                                          ; $5449: $07

jr_023_544a:
    rlca                                          ; $544a: $07
    rlca                                          ; $544b: $07
    inc b                                         ; $544c: $04

jr_023_544d:
    rlca                                          ; $544d: $07
    inc bc                                        ; $544e: $03

jr_023_544f:
    inc bc                                        ; $544f: $03
    ret nz                                        ; $5450: $c0

    ret nz                                        ; $5451: $c0

    ld [hl], b                                    ; $5452: $70
    or b                                          ; $5453: $b0
    ld a, b                                       ; $5454: $78
    adc b                                         ; $5455: $88
    ld a, b                                       ; $5456: $78
    adc b                                         ; $5457: $88
    db $e4                                        ; $5458: $e4
    inc e                                         ; $5459: $1c
    db $e4                                        ; $545a: $e4
    inc e                                         ; $545b: $1c

jr_023_545c:
    db $f4                                        ; $545c: $f4
    inc c                                         ; $545d: $0c

jr_023_545e:
    db $fc                                        ; $545e: $fc
    inc b                                         ; $545f: $04

jr_023_5460:
    jr jr_023_544a                                ; $5460: $18 $e8

    jr jr_023_545c                                ; $5462: $18 $f8

    jr c, jr_023_545e                             ; $5464: $38 $f8

    call c, $1cf4                                 ; $5466: $dc $f4 $1c
    db $f4                                        ; $5469: $f4
    ld hl, sp-$08                                 ; $546a: $f8 $f8

jr_023_546c:
    ldh [$e0], a                                  ; $546c: $e0 $e0

jr_023_546e:
    add b                                         ; $546e: $80
    add b                                         ; $546f: $80
    inc bc                                        ; $5470: $03
    inc bc                                        ; $5471: $03
    rrca                                          ; $5472: $0f
    inc c                                         ; $5473: $0c
    inc de                                        ; $5474: $13
    inc e                                         ; $5475: $1c
    rla                                           ; $5476: $17
    jr @+$3e                                      ; $5477: $18 $3c

    inc hl                                        ; $5479: $23
    jr c, @+$29                                   ; $547a: $38 $27

    jr c, @+$29                                   ; $547c: $38 $27

    inc a                                         ; $547e: $3c

jr_023_547f:
    inc hl                                        ; $547f: $23
    rla                                           ; $5480: $17
    add hl, de                                    ; $5481: $19
    rla                                           ; $5482: $17
    add hl, de                                    ; $5483: $19
    rrca                                          ; $5484: $0f
    rrca                                          ; $5485: $0f
    dec b                                         ; $5486: $05
    rlca                                          ; $5487: $07
    rlca                                          ; $5488: $07
    rlca                                          ; $5489: $07
    dec bc                                        ; $548a: $0b
    rrca                                          ; $548b: $0f
    add hl, bc                                    ; $548c: $09
    rrca                                          ; $548d: $0f
    rlca                                          ; $548e: $07
    rlca                                          ; $548f: $07
    ret nz                                        ; $5490: $c0

    ret nz                                        ; $5491: $c0

    or b                                          ; $5492: $b0
    ld [hl], b                                    ; $5493: $70
    ret z                                         ; $5494: $c8

jr_023_5495:
    jr c, jr_023_547f                             ; $5495: $38 $e8

    jr jr_023_5495                                ; $5497: $18 $fc

    inc b                                         ; $5499: $04
    ld a, h                                       ; $549a: $7c
    or h                                          ; $549b: $b4
    ld a, b                                       ; $549c: $78
    ret z                                         ; $549d: $c8

    ld hl, sp-$68                                 ; $549e: $f8 $98

jr_023_54a0:
    ld hl, sp+$18                                 ; $54a0: $f8 $18
    ld hl, sp+$08                                 ; $54a2: $f8 $08
    ldh a, [$90]                                  ; $54a4: $f0 $90
    ldh [$60], a                                  ; $54a6: $e0 $60
    ldh a, [$b0]                                  ; $54a8: $f0 $b0
    ld hl, sp-$08                                 ; $54aa: $f8 $f8
    add sp, -$08                                  ; $54ac: $e8 $f8
    ld [hl], b                                    ; $54ae: $70
    ld [hl], b                                    ; $54af: $70
    inc bc                                        ; $54b0: $03
    inc bc                                        ; $54b1: $03
    ld c, $0d                                     ; $54b2: $0e $0d
    ld e, $11                                     ; $54b4: $1e $11
    rla                                           ; $54b6: $17
    jr jr_023_54e0                                ; $54b7: $18 $27

    jr c, jr_023_54ea                             ; $54b9: $38 $2f

    inc sp                                        ; $54bb: $33
    ccf                                           ; $54bc: $3f
    inc h                                         ; $54bd: $24

jr_023_54be:
    ccf                                           ; $54be: $3f
    ld a, [hl+]                                   ; $54bf: $2a
    rra                                           ; $54c0: $1f
    ld a, [de]                                    ; $54c1: $1a
    rrca                                          ; $54c2: $0f
    ld [$1c1f], sp                                ; $54c3: $08 $1f $1c
    dec sp                                        ; $54c6: $3b
    cpl                                           ; $54c7: $2f
    dec sp                                        ; $54c8: $3b
    ld l, $1f                                     ; $54c9: $2e $1f
    rra                                           ; $54cb: $1f
    rlca                                          ; $54cc: $07
    rlca                                          ; $54cd: $07

jr_023_54ce:
    ld bc, $c001                                  ; $54ce: $01 $01 $c0
    ret nz                                        ; $54d1: $c0

    jr nc, @-$0e                                  ; $54d2: $30 $f0

    jr jr_023_54be                                ; $54d4: $18 $e8

    jr c, jr_023_54a0                             ; $54d6: $38 $c8

    db $fc                                        ; $54d8: $fc
    inc b                                         ; $54d9: $04
    db $f4                                        ; $54da: $f4
    call z, Call_000_2cf4                         ; $54db: $cc $f4 $2c
    db $f4                                        ; $54de: $f4
    ld e, h                                       ; $54df: $5c

jr_023_54e0:
    ld hl, sp+$58                                 ; $54e0: $f8 $58
    ld hl, sp+$18                                 ; $54e2: $f8 $18
    db $fc                                        ; $54e4: $fc
    inc [hl]                                      ; $54e5: $34
    call c, $e0fc                                 ; $54e6: $dc $fc $e0
    ld h, b                                       ; $54e9: $60

jr_023_54ea:
    ldh [$e0], a                                  ; $54ea: $e0 $e0
    jr nz, jr_023_54ce                            ; $54ec: $20 $e0

    ret nz                                        ; $54ee: $c0

    ret nz                                        ; $54ef: $c0

    inc bc                                        ; $54f0: $03
    inc bc                                        ; $54f1: $03
    dec c                                         ; $54f2: $0d
    ld c, $11                                     ; $54f3: $0e $11
    ld e, $13                                     ; $54f5: $1e $13
    inc e                                         ; $54f7: $1c
    ccf                                           ; $54f8: $3f
    jr nz, jr_023_5539                            ; $54f9: $20 $3e

    dec l                                         ; $54fb: $2d
    ld e, $13                                     ; $54fc: $1e $13
    rra                                           ; $54fe: $1f

jr_023_54ff:
    add hl, de                                    ; $54ff: $19
    rra                                           ; $5500: $1f
    jr jr_023_5522                                ; $5501: $18 $1f

    db $10                                        ; $5503: $10
    rrca                                          ; $5504: $0f
    add hl, bc                                    ; $5505: $09
    rlca                                          ; $5506: $07
    rlca                                          ; $5507: $07
    inc c                                         ; $5508: $0c
    rrca                                          ; $5509: $0f
    rla                                           ; $550a: $17
    rra                                           ; $550b: $1f
    dec de                                        ; $550c: $1b
    rra                                           ; $550d: $1f
    ld c, $0e                                     ; $550e: $0e $0e
    ret nz                                        ; $5510: $c0

    ret nz                                        ; $5511: $c0

    ldh a, [$30]                                  ; $5512: $f0 $30
    ret z                                         ; $5514: $c8

jr_023_5515:
    jr c, jr_023_54ff                             ; $5515: $38 $e8

    jr jr_023_5515                                ; $5517: $18 $fc

    inc b                                         ; $5519: $04
    ld a, h                                       ; $551a: $7c
    add h                                         ; $551b: $84
    inc a                                         ; $551c: $3c
    call nz, $c43c                                ; $551d: $c4 $3c $c4
    cp b                                          ; $5520: $b8
    ret z                                         ; $5521: $c8

jr_023_5522:
    add sp, -$68                                  ; $5522: $e8 $98
    ldh a, [$f0]                                  ; $5524: $f0 $f0
    ldh [$60], a                                  ; $5526: $e0 $60
    ldh [$a0], a                                  ; $5528: $e0 $a0
    ldh a, [$f0]                                  ; $552a: $f0 $f0
    ret nc                                        ; $552c: $d0

    ldh a, [$e0]                                  ; $552d: $f0 $e0
    ldh [$03], a                                  ; $552f: $e0 $03
    inc bc                                        ; $5531: $03
    inc c                                         ; $5532: $0c
    rrca                                          ; $5533: $0f
    jr jr_023_554d                                ; $5534: $18 $17

    jr @+$19                                      ; $5536: $18 $17

    inc a                                         ; $5538: $3c

jr_023_5539:
    inc hl                                        ; $5539: $23
    ccf                                           ; $553a: $3f
    jr nz, @+$31                                  ; $553b: $20 $2f

    jr nc, @+$31                                  ; $553d: $30 $2f

    jr nc, jr_023_5560                            ; $553f: $30 $1f

    db $10                                        ; $5541: $10
    ld c, $09                                     ; $5542: $0e $09
    ld e, $1d                                     ; $5544: $1e $1d
    dec sp                                        ; $5546: $3b
    cpl                                           ; $5547: $2f
    jr c, jr_023_5579                             ; $5548: $38 $2f

jr_023_554a:
    rra                                           ; $554a: $1f
    rra                                           ; $554b: $1f
    rlca                                          ; $554c: $07

jr_023_554d:
    rlca                                          ; $554d: $07
    ld bc, $c001                                  ; $554e: $01 $01 $c0
    ret nz                                        ; $5551: $c0

    ld [hl], b                                    ; $5552: $70
    or b                                          ; $5553: $b0
    ld a, b                                       ; $5554: $78
    adc b                                         ; $5555: $88
    ld a, b                                       ; $5556: $78
    adc b                                         ; $5557: $88
    db $e4                                        ; $5558: $e4
    inc e                                         ; $5559: $1c
    db $e4                                        ; $555a: $e4
    inc e                                         ; $555b: $1c

jr_023_555c:
    db $f4                                        ; $555c: $f4
    inc c                                         ; $555d: $0c
    db $fc                                        ; $555e: $fc
    inc b                                         ; $555f: $04

jr_023_5560:
    jr jr_023_554a                                ; $5560: $18 $e8

    jr jr_023_555c                                ; $5562: $18 $f8

    inc a                                         ; $5564: $3c
    db $f4                                        ; $5565: $f4
    call c, Call_000_20fc                         ; $5566: $dc $fc $20
    ldh [$e0], a                                  ; $5569: $e0 $e0
    ldh [rNR41], a                                ; $556b: $e0 $20
    ldh [$c0], a                                  ; $556d: $e0 $c0
    ret nz                                        ; $556f: $c0

    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    inc bc                                        ; $5572: $03
    inc bc                                        ; $5573: $03
    rrca                                          ; $5574: $0f
    inc c                                         ; $5575: $0c
    inc de                                        ; $5576: $13
    inc e                                         ; $5577: $1c
    rla                                           ; $5578: $17

jr_023_5579:
    jr @+$3e                                      ; $5579: $18 $3c

    inc hl                                        ; $557b: $23
    jr c, @+$29                                   ; $557c: $38 $27

    jr c, @+$29                                   ; $557e: $38 $27

    inc a                                         ; $5580: $3c

jr_023_5581:
    inc hl                                        ; $5581: $23
    rla                                           ; $5582: $17
    add hl, de                                    ; $5583: $19
    rrca                                          ; $5584: $0f
    rrca                                          ; $5585: $0f
    inc bc                                        ; $5586: $03
    ld [bc], a                                    ; $5587: $02
    rlca                                          ; $5588: $07
    dec b                                         ; $5589: $05
    rrca                                          ; $558a: $0f
    rrca                                          ; $558b: $0f
    dec bc                                        ; $558c: $0b
    rrca                                          ; $558d: $0f
    rlca                                          ; $558e: $07
    rlca                                          ; $558f: $07
    nop                                           ; $5590: $00
    nop                                           ; $5591: $00
    ret nz                                        ; $5592: $c0

    ret nz                                        ; $5593: $c0

    or b                                          ; $5594: $b0
    ld [hl], b                                    ; $5595: $70
    ret z                                         ; $5596: $c8

jr_023_5597:
    jr c, jr_023_5581                             ; $5597: $38 $e8

    jr jr_023_5597                                ; $5599: $18 $fc

    inc b                                         ; $559b: $04
    ld a, h                                       ; $559c: $7c
    or h                                          ; $559d: $b4
    ld a, b                                       ; $559e: $78
    ret z                                         ; $559f: $c8

    ld hl, sp-$68                                 ; $55a0: $f8 $98

jr_023_55a2:
    ld hl, sp+$18                                 ; $55a2: $f8 $18
    ldh a, [$90]                                  ; $55a4: $f0 $90
    ldh [$e0], a                                  ; $55a6: $e0 $e0
    jr nc, @-$0e                                  ; $55a8: $30 $f0

    add sp, -$08                                  ; $55aa: $e8 $f8
    ret c                                         ; $55ac: $d8

    ld hl, sp+$70                                 ; $55ad: $f8 $70
    ld [hl], b                                    ; $55af: $70
    nop                                           ; $55b0: $00
    nop                                           ; $55b1: $00
    inc bc                                        ; $55b2: $03
    inc bc                                        ; $55b3: $03
    ld c, $0d                                     ; $55b4: $0e $0d
    ld e, $11                                     ; $55b6: $1e $11
    rla                                           ; $55b8: $17
    jr jr_023_55e2                                ; $55b9: $18 $27

    jr c, jr_023_55ec                             ; $55bb: $38 $2f

    inc sp                                        ; $55bd: $33
    ccf                                           ; $55be: $3f
    inc h                                         ; $55bf: $24

jr_023_55c0:
    ccf                                           ; $55c0: $3f
    ld a, [hl+]                                   ; $55c1: $2a
    rra                                           ; $55c2: $1f
    ld a, [de]                                    ; $55c3: $1a
    ccf                                           ; $55c4: $3f
    inc l                                         ; $55c5: $2c

jr_023_55c6:
    dec sp                                        ; $55c6: $3b
    ccf                                           ; $55c7: $3f
    rlca                                          ; $55c8: $07
    ld b, $07                                     ; $55c9: $06 $07
    rlca                                          ; $55cb: $07
    inc b                                         ; $55cc: $04
    rlca                                          ; $55cd: $07
    inc bc                                        ; $55ce: $03
    inc bc                                        ; $55cf: $03
    nop                                           ; $55d0: $00
    nop                                           ; $55d1: $00
    ret nz                                        ; $55d2: $c0

    ret nz                                        ; $55d3: $c0

    jr nc, jr_023_55c6                            ; $55d4: $30 $f0

    jr jr_023_55c0                                ; $55d6: $18 $e8

    jr c, jr_023_55a2                             ; $55d8: $38 $c8

    db $fc                                        ; $55da: $fc
    inc b                                         ; $55db: $04
    db $f4                                        ; $55dc: $f4
    call z, Call_000_2cf4                         ; $55dd: $cc $f4 $2c
    db $f4                                        ; $55e0: $f4
    ld e, h                                       ; $55e1: $5c

jr_023_55e2:
    ld hl, sp+$58                                 ; $55e2: $f8 $58
    ld hl, sp+$38                                 ; $55e4: $f8 $38
    call c, $dcf4                                 ; $55e6: $dc $f4 $dc
    ld [hl], h                                    ; $55e9: $74
    ld hl, sp-$08                                 ; $55ea: $f8 $f8

jr_023_55ec:
    ldh [$e0], a                                  ; $55ec: $e0 $e0
    add b                                         ; $55ee: $80
    add b                                         ; $55ef: $80
    nop                                           ; $55f0: $00
    nop                                           ; $55f1: $00
    inc bc                                        ; $55f2: $03
    inc bc                                        ; $55f3: $03
    dec c                                         ; $55f4: $0d
    ld c, $11                                     ; $55f5: $0e $11
    ld e, $13                                     ; $55f7: $1e $13
    inc e                                         ; $55f9: $1c
    ccf                                           ; $55fa: $3f
    jr nz, jr_023_563b                            ; $55fb: $20 $3e

    dec l                                         ; $55fd: $2d
    ld e, $13                                     ; $55fe: $1e $13
    rra                                           ; $5600: $1f

jr_023_5601:
    add hl, de                                    ; $5601: $19
    rra                                           ; $5602: $1f
    jr jr_023_5614                                ; $5603: $18 $0f

    add hl, bc                                    ; $5605: $09
    rlca                                          ; $5606: $07
    ld b, $0f                                     ; $5607: $06 $0f
    dec c                                         ; $5609: $0d
    rra                                           ; $560a: $1f
    rra                                           ; $560b: $1f
    rla                                           ; $560c: $17
    rra                                           ; $560d: $1f
    ld c, $0e                                     ; $560e: $0e $0e
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    ret nz                                        ; $5612: $c0

    ret nz                                        ; $5613: $c0

jr_023_5614:
    ldh a, [$30]                                  ; $5614: $f0 $30
    ret z                                         ; $5616: $c8

jr_023_5617:
    jr c, jr_023_5601                             ; $5617: $38 $e8

    jr jr_023_5617                                ; $5619: $18 $fc

    inc b                                         ; $561b: $04
    ld a, h                                       ; $561c: $7c
    add h                                         ; $561d: $84
    inc a                                         ; $561e: $3c
    call nz, $c43c                                ; $561f: $c4 $3c $c4
    cp b                                          ; $5622: $b8
    ret z                                         ; $5623: $c8

    ldh a, [$f0]                                  ; $5624: $f0 $f0
    and b                                         ; $5626: $a0
    ldh [$e0], a                                  ; $5627: $e0 $e0
    ldh [$d0], a                                  ; $5629: $e0 $d0
    ldh a, [$90]                                  ; $562b: $f0 $90
    ldh a, [$e0]                                  ; $562d: $f0 $e0
    ldh [rP1], a                                  ; $562f: $e0 $00
    nop                                           ; $5631: $00
    inc bc                                        ; $5632: $03
    inc bc                                        ; $5633: $03
    inc c                                         ; $5634: $0c
    rrca                                          ; $5635: $0f
    jr jr_023_564f                                ; $5636: $18 $17

    jr jr_023_5651                                ; $5638: $18 $17

    inc a                                         ; $563a: $3c

jr_023_563b:
    inc hl                                        ; $563b: $23
    ccf                                           ; $563c: $3f
    jr nz, jr_023_566e                            ; $563d: $20 $2f

    jr nc, jr_023_5670                            ; $563f: $30 $2f

    jr nc, jr_023_5662                            ; $5641: $30 $1f

    db $10                                        ; $5643: $10
    ld a, $2d                                     ; $5644: $3e $2d
    dec sp                                        ; $5646: $3b
    ccf                                           ; $5647: $3f
    inc b                                         ; $5648: $04
    rlca                                          ; $5649: $07
    rlca                                          ; $564a: $07
    rlca                                          ; $564b: $07

jr_023_564c:
    inc b                                         ; $564c: $04
    rlca                                          ; $564d: $07
    inc bc                                        ; $564e: $03

jr_023_564f:
    inc bc                                        ; $564f: $03
    nop                                           ; $5650: $00

jr_023_5651:
    nop                                           ; $5651: $00
    ret nz                                        ; $5652: $c0

    ret nz                                        ; $5653: $c0

    ld [hl], b                                    ; $5654: $70
    or b                                          ; $5655: $b0
    ld a, b                                       ; $5656: $78
    adc b                                         ; $5657: $88
    ld a, b                                       ; $5658: $78
    adc b                                         ; $5659: $88
    db $e4                                        ; $565a: $e4
    inc e                                         ; $565b: $1c
    db $e4                                        ; $565c: $e4
    inc e                                         ; $565d: $1c

jr_023_565e:
    db $f4                                        ; $565e: $f4
    inc c                                         ; $565f: $0c
    db $fc                                        ; $5660: $fc
    inc b                                         ; $5661: $04

jr_023_5662:
    jr jr_023_564c                                ; $5662: $18 $e8

    jr c, jr_023_565e                             ; $5664: $38 $f8

    call c, $1cf4                                 ; $5666: $dc $f4 $1c
    db $f4                                        ; $5669: $f4
    ld hl, sp-$08                                 ; $566a: $f8 $f8
    ldh [$e0], a                                  ; $566c: $e0 $e0

jr_023_566e:
    add b                                         ; $566e: $80
    add b                                         ; $566f: $80

jr_023_5670:
    ld bc, $0701                                  ; $5670: $01 $01 $07
    ld b, $09                                     ; $5673: $06 $09
    ld c, $0b                                     ; $5675: $0e $0b
    inc c                                         ; $5677: $0c
    ld e, $11                                     ; $5678: $1e $11
    inc e                                         ; $567a: $1c
    inc de                                        ; $567b: $13
    inc e                                         ; $567c: $1c
    inc de                                        ; $567d: $13
    ld e, $11                                     ; $567e: $1e $11
    dec bc                                        ; $5680: $0b
    inc c                                         ; $5681: $0c
    rla                                           ; $5682: $17
    add hl, de                                    ; $5683: $19
    rrca                                          ; $5684: $0f
    rrca                                          ; $5685: $0f
    inc bc                                        ; $5686: $03
    ld [bc], a                                    ; $5687: $02
    rlca                                          ; $5688: $07
    dec b                                         ; $5689: $05
    rrca                                          ; $568a: $0f
    rrca                                          ; $568b: $0f
    dec bc                                        ; $568c: $0b
    rrca                                          ; $568d: $0f
    rlca                                          ; $568e: $07
    rlca                                          ; $568f: $07
    ldh [$e0], a                                  ; $5690: $e0 $e0
    ret c                                         ; $5692: $d8

    jr c, @-$1a                                   ; $5693: $38 $e4

    inc e                                         ; $5695: $1c
    db $f4                                        ; $5696: $f4
    inc c                                         ; $5697: $0c
    ld a, [hl]                                    ; $5698: $7e
    add d                                         ; $5699: $82

jr_023_569a:
    ld a, $da                                     ; $569a: $3e $da
    inc a                                         ; $569c: $3c
    db $e4                                        ; $569d: $e4
    ld a, h                                       ; $569e: $7c
    call z, $8cfc                                 ; $569f: $cc $fc $8c
    ld hl, sp+$08                                 ; $56a2: $f8 $08
    ldh a, [$90]                                  ; $56a4: $f0 $90
    ldh [$e0], a                                  ; $56a6: $e0 $e0
    jr nc, jr_023_569a                            ; $56a8: $30 $f0

    add sp, -$08                                  ; $56aa: $e8 $f8
    ret c                                         ; $56ac: $d8

    ld hl, sp+$70                                 ; $56ad: $f8 $70
    ld [hl], b                                    ; $56af: $70
    ld bc, $0701                                  ; $56b0: $01 $01 $07
    ld b, $0f                                     ; $56b3: $06 $0f
    ld [$0c0b], sp                                ; $56b5: $08 $0b $0c
    inc de                                        ; $56b8: $13
    inc e                                         ; $56b9: $1c
    rla                                           ; $56ba: $17
    add hl, de                                    ; $56bb: $19
    rra                                           ; $56bc: $1f
    ld [de], a                                    ; $56bd: $12
    rra                                           ; $56be: $1f
    dec d                                         ; $56bf: $15
    rrca                                          ; $56c0: $0f
    dec c                                         ; $56c1: $0d
    rra                                           ; $56c2: $1f
    jr jr_023_5704                                ; $56c3: $18 $3f

    inc l                                         ; $56c5: $2c
    dec sp                                        ; $56c6: $3b
    ccf                                           ; $56c7: $3f
    rlca                                          ; $56c8: $07
    ld b, $07                                     ; $56c9: $06 $07
    rlca                                          ; $56cb: $07

jr_023_56cc:
    inc b                                         ; $56cc: $04
    rlca                                          ; $56cd: $07
    inc bc                                        ; $56ce: $03
    inc bc                                        ; $56cf: $03
    ldh [$e0], a                                  ; $56d0: $e0 $e0
    jr jr_023_56cc                                ; $56d2: $18 $f8

    inc c                                         ; $56d4: $0c
    db $f4                                        ; $56d5: $f4
    sbc h                                         ; $56d6: $9c
    ld h, h                                       ; $56d7: $64
    cp $02                                        ; $56d8: $fe $02
    ld a, [$fae6]                                 ; $56da: $fa $e6 $fa
    ld d, $fa                                     ; $56dd: $16 $fa
    ld l, $fc                                     ; $56df: $2e $fc
    inc l                                         ; $56e1: $2c
    ldh a, [rNR10]                                ; $56e2: $f0 $10
    ld hl, sp+$38                                 ; $56e4: $f8 $38
    call c, $dcf4                                 ; $56e6: $dc $f4 $dc
    ld [hl], h                                    ; $56e9: $74
    ld hl, sp-$08                                 ; $56ea: $f8 $f8
    ldh [$e0], a                                  ; $56ec: $e0 $e0
    add b                                         ; $56ee: $80
    add b                                         ; $56ef: $80
    ld bc, $0601                                  ; $56f0: $01 $01 $06
    rlca                                          ; $56f3: $07
    ld [$090f], sp                                ; $56f4: $08 $0f $09
    ld c, $1f                                     ; $56f7: $0e $1f
    db $10                                        ; $56f9: $10
    rra                                           ; $56fa: $1f
    ld d, $0f                                     ; $56fb: $16 $0f
    add hl, bc                                    ; $56fd: $09
    rrca                                          ; $56fe: $0f
    inc c                                         ; $56ff: $0c
    rrca                                          ; $5700: $0f
    inc c                                         ; $5701: $0c
    rra                                           ; $5702: $1f
    db $10                                        ; $5703: $10

jr_023_5704:
    rrca                                          ; $5704: $0f
    add hl, bc                                    ; $5705: $09
    rlca                                          ; $5706: $07
    ld b, $0f                                     ; $5707: $06 $0f
    dec c                                         ; $5709: $0d
    rra                                           ; $570a: $1f
    rra                                           ; $570b: $1f
    rla                                           ; $570c: $17
    rra                                           ; $570d: $1f
    ld c, $0e                                     ; $570e: $0e $0e
    ldh [$e0], a                                  ; $5710: $e0 $e0
    ld hl, sp+$18                                 ; $5712: $f8 $18
    db $e4                                        ; $5714: $e4
    inc e                                         ; $5715: $1c
    db $f4                                        ; $5716: $f4
    inc c                                         ; $5717: $0c
    cp $02                                        ; $5718: $fe $02
    ld a, $c2                                     ; $571a: $3e $c2
    ld e, $e2                                     ; $571c: $1e $e2
    sbc [hl]                                      ; $571e: $9e
    ld [c], a                                     ; $571f: $e2
    call c, $e864                                 ; $5720: $dc $64 $e8
    sbc b                                         ; $5723: $98
    ldh a, [$f0]                                  ; $5724: $f0 $f0
    and b                                         ; $5726: $a0
    ldh [$e0], a                                  ; $5727: $e0 $e0
    ldh [$d0], a                                  ; $5729: $e0 $d0
    ldh a, [$90]                                  ; $572b: $f0 $90
    ldh a, [$e0]                                  ; $572d: $f0 $e0
    ldh [rSB], a                                  ; $572f: $e0 $01
    ld bc, $0706                                  ; $5731: $01 $06 $07
    inc c                                         ; $5734: $0c
    dec bc                                        ; $5735: $0b
    inc c                                         ; $5736: $0c
    dec bc                                        ; $5737: $0b
    ld e, $11                                     ; $5738: $1e $11
    rra                                           ; $573a: $1f
    db $10                                        ; $573b: $10
    rla                                           ; $573c: $17
    jr @+$19                                      ; $573d: $18 $17

    jr jr_023_5750                                ; $573f: $18 $0f

    ld [$191e], sp                                ; $5741: $08 $1e $19
    ld a, $2d                                     ; $5744: $3e $2d
    dec sp                                        ; $5746: $3b
    ccf                                           ; $5747: $3f
    inc b                                         ; $5748: $04
    rlca                                          ; $5749: $07
    rlca                                          ; $574a: $07
    rlca                                          ; $574b: $07
    inc b                                         ; $574c: $04
    rlca                                          ; $574d: $07
    inc bc                                        ; $574e: $03
    inc bc                                        ; $574f: $03

jr_023_5750:
    ldh [$e0], a                                  ; $5750: $e0 $e0
    jr c, @-$26                                   ; $5752: $38 $d8

    inc a                                         ; $5754: $3c
    call nz, $c43c                                ; $5755: $c4 $3c $c4
    ld [hl], d                                    ; $5758: $72
    adc [hl]                                      ; $5759: $8e
    ld a, [c]                                     ; $575a: $f2
    ld c, $fa                                     ; $575b: $0e $fa
    ld b, $fe                                     ; $575d: $06 $fe
    ld [bc], a                                    ; $575f: $02
    adc h                                         ; $5760: $8c
    ld [hl], h                                    ; $5761: $74
    jr @-$06                                      ; $5762: $18 $f8

    jr c, @-$06                                   ; $5764: $38 $f8

    call c, $1cf4                                 ; $5766: $dc $f4 $1c
    db $f4                                        ; $5769: $f4
    ld hl, sp-$08                                 ; $576a: $f8 $f8
    ldh [$e0], a                                  ; $576c: $e0 $e0
    add b                                         ; $576e: $80
    add b                                         ; $576f: $80
    rlca                                          ; $5770: $07
    rlca                                          ; $5771: $07
    rra                                           ; $5772: $1f
    jr jr_023_579c                                ; $5773: $18 $27

    jr c, jr_023_57a6                             ; $5775: $38 $2f

    jr nc, jr_023_57f2                            ; $5777: $30 $79

    ld b, [hl]                                    ; $5779: $46
    ld [hl], b                                    ; $577a: $70
    ld c, a                                       ; $577b: $4f
    ld [hl], b                                    ; $577c: $70
    ld c, a                                       ; $577d: $4f
    ld a, c                                       ; $577e: $79
    ld b, a                                       ; $577f: $47
    cpl                                           ; $5780: $2f
    ld [hl-], a                                   ; $5781: $32
    rla                                           ; $5782: $17
    add hl, de                                    ; $5783: $19
    rrca                                          ; $5784: $0f
    rrca                                          ; $5785: $0f
    inc bc                                        ; $5786: $03
    ld [bc], a                                    ; $5787: $02
    rlca                                          ; $5788: $07
    dec b                                         ; $5789: $05
    rrca                                          ; $578a: $0f
    rrca                                          ; $578b: $0f
    dec bc                                        ; $578c: $0b
    rrca                                          ; $578d: $0f
    rlca                                          ; $578e: $07
    rlca                                          ; $578f: $07
    add b                                         ; $5790: $80

jr_023_5791:
    add b                                         ; $5791: $80
    ld h, b                                       ; $5792: $60
    ldh [$90], a                                  ; $5793: $e0 $90
    ld [hl], b                                    ; $5795: $70
    ret nc                                        ; $5796: $d0

    jr nc, jr_023_5791                            ; $5797: $30 $f8

    ld [$68f8], sp                                ; $5799: $08 $f8 $68

jr_023_579c:
    ldh a, [$90]                                  ; $579c: $f0 $90
    ldh a, [$30]                                  ; $579e: $f0 $30
    ldh a, [$30]                                  ; $57a0: $f0 $30
    ld hl, sp+$08                                 ; $57a2: $f8 $08
    ldh a, [$90]                                  ; $57a4: $f0 $90

jr_023_57a6:
    ldh [$e0], a                                  ; $57a6: $e0 $e0
    jr nc, @-$0e                                  ; $57a8: $30 $f0

    add sp, -$08                                  ; $57aa: $e8 $f8
    ret c                                         ; $57ac: $d8

    ld hl, sp+$70                                 ; $57ad: $f8 $70
    ld [hl], b                                    ; $57af: $70
    rlca                                          ; $57b0: $07
    rlca                                          ; $57b1: $07
    inc e                                         ; $57b2: $1c
    dec de                                        ; $57b3: $1b
    inc a                                         ; $57b4: $3c
    inc hl                                        ; $57b5: $23
    ld l, $31                                     ; $57b6: $2e $31
    ld c, a                                       ; $57b8: $4f
    ld [hl], b                                    ; $57b9: $70
    ld e, a                                       ; $57ba: $5f
    ld h, a                                       ; $57bb: $67
    ld a, a                                       ; $57bc: $7f
    ld c, b                                       ; $57bd: $48
    ld a, a                                       ; $57be: $7f
    ld d, h                                       ; $57bf: $54
    ccf                                           ; $57c0: $3f
    inc [hl]                                      ; $57c1: $34
    rra                                           ; $57c2: $1f
    jr jr_023_5804                                ; $57c3: $18 $3f

    inc l                                         ; $57c5: $2c
    dec sp                                        ; $57c6: $3b
    ccf                                           ; $57c7: $3f
    rlca                                          ; $57c8: $07
    ld b, $07                                     ; $57c9: $06 $07
    rlca                                          ; $57cb: $07
    inc b                                         ; $57cc: $04
    rlca                                          ; $57cd: $07
    inc bc                                        ; $57ce: $03
    inc bc                                        ; $57cf: $03
    add b                                         ; $57d0: $80
    add b                                         ; $57d1: $80
    ld h, b                                       ; $57d2: $60
    ldh [$30], a                                  ; $57d3: $e0 $30
    ret nc                                        ; $57d5: $d0

    ld [hl], b                                    ; $57d6: $70
    sub b                                         ; $57d7: $90
    ld hl, sp+$08                                 ; $57d8: $f8 $08
    add sp, -$68                                  ; $57da: $e8 $98
    add sp, $58                                   ; $57dc: $e8 $58
    add sp, -$48                                  ; $57de: $e8 $b8
    ldh a, [$b0]                                  ; $57e0: $f0 $b0
    ldh a, [rNR10]                                ; $57e2: $f0 $10
    ld hl, sp+$38                                 ; $57e4: $f8 $38
    call c, $dcf4                                 ; $57e6: $dc $f4 $dc
    ld [hl], h                                    ; $57e9: $74
    ld hl, sp-$08                                 ; $57ea: $f8 $f8
    ldh [$e0], a                                  ; $57ec: $e0 $e0
    add b                                         ; $57ee: $80
    add b                                         ; $57ef: $80
    rlca                                          ; $57f0: $07
    rlca                                          ; $57f1: $07

jr_023_57f2:
    dec de                                        ; $57f2: $1b
    inc e                                         ; $57f3: $1c
    inc hl                                        ; $57f4: $23
    inc a                                         ; $57f5: $3c
    daa                                           ; $57f6: $27
    jr c, jr_023_5878                             ; $57f7: $38 $7f

    ld b, b                                       ; $57f9: $40
    ld a, h                                       ; $57fa: $7c
    ld e, e                                       ; $57fb: $5b
    inc a                                         ; $57fc: $3c
    daa                                           ; $57fd: $27
    ld a, $33                                     ; $57fe: $3e $33
    ccf                                           ; $5800: $3f
    ld sp, $101f                                  ; $5801: $31 $1f $10

jr_023_5804:
    rrca                                          ; $5804: $0f
    add hl, bc                                    ; $5805: $09
    rlca                                          ; $5806: $07
    ld b, $0f                                     ; $5807: $06 $0f
    dec c                                         ; $5809: $0d
    rra                                           ; $580a: $1f
    rra                                           ; $580b: $1f
    rla                                           ; $580c: $17
    rra                                           ; $580d: $1f
    ld c, $0e                                     ; $580e: $0e $0e
    add b                                         ; $5810: $80

jr_023_5811:
    add b                                         ; $5811: $80
    ldh [$60], a                                  ; $5812: $e0 $60
    sub b                                         ; $5814: $90
    ld [hl], b                                    ; $5815: $70
    ret nc                                        ; $5816: $d0

    jr nc, jr_023_5811                            ; $5817: $30 $f8

    ld [$08f8], sp                                ; $5819: $08 $f8 $08
    ld a, b                                       ; $581c: $78
    adc b                                         ; $581d: $88
    ld a, b                                       ; $581e: $78
    adc b                                         ; $581f: $88
    ld [hl], b                                    ; $5820: $70
    sub b                                         ; $5821: $90
    add sp, -$68                                  ; $5822: $e8 $98
    ldh a, [$f0]                                  ; $5824: $f0 $f0
    and b                                         ; $5826: $a0
    ldh [$e0], a                                  ; $5827: $e0 $e0
    ldh [$d0], a                                  ; $5829: $e0 $d0
    ldh a, [$90]                                  ; $582b: $f0 $90
    ldh a, [$e0]                                  ; $582d: $f0 $e0
    ldh [rTAC], a                                 ; $582f: $e0 $07
    rlca                                          ; $5831: $07
    jr @+$21                                      ; $5832: $18 $1f

    jr nc, @+$31                                  ; $5834: $30 $2f

    jr nc, @+$31                                  ; $5836: $30 $2f

    ld a, c                                       ; $5838: $79
    ld b, [hl]                                    ; $5839: $46
    ld a, a                                       ; $583a: $7f
    ld b, b                                       ; $583b: $40
    ld e, a                                       ; $583c: $5f
    ld h, b                                       ; $583d: $60
    ld e, a                                       ; $583e: $5f
    ld h, b                                       ; $583f: $60
    ld a, $21                                     ; $5840: $3e $21
    ld e, $19                                     ; $5842: $1e $19
    ld a, $2d                                     ; $5844: $3e $2d
    dec sp                                        ; $5846: $3b
    ccf                                           ; $5847: $3f
    inc b                                         ; $5848: $04
    rlca                                          ; $5849: $07
    rlca                                          ; $584a: $07
    rlca                                          ; $584b: $07
    inc b                                         ; $584c: $04
    rlca                                          ; $584d: $07
    inc bc                                        ; $584e: $03
    inc bc                                        ; $584f: $03
    add b                                         ; $5850: $80
    add b                                         ; $5851: $80
    ldh [$60], a                                  ; $5852: $e0 $60
    ldh a, [rNR10]                                ; $5854: $f0 $10
    ldh a, [rNR10]                                ; $5856: $f0 $10
    ret z                                         ; $5858: $c8

    jr c, @-$36                                   ; $5859: $38 $c8

    jr c, @-$16                                   ; $585b: $38 $e8

    jr @-$06                                      ; $585d: $18 $f8

    ld [$d030], sp                                ; $585f: $08 $30 $d0
    jr @-$06                                      ; $5862: $18 $f8

    jr c, @-$06                                   ; $5864: $38 $f8

    call c, $1cf4                                 ; $5866: $dc $f4 $1c

jr_023_5869:
    db $f4                                        ; $5869: $f4
    ld hl, sp-$08                                 ; $586a: $f8 $f8
    ldh [$e0], a                                  ; $586c: $e0 $e0
    add b                                         ; $586e: $80
    add b                                         ; $586f: $80
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    inc bc                                        ; $5872: $03
    inc bc                                        ; $5873: $03
    rlca                                          ; $5874: $07
    inc b                                         ; $5875: $04
    dec bc                                        ; $5876: $0b
    inc c                                         ; $5877: $0c

jr_023_5878:
    dec bc                                        ; $5878: $0b
    inc c                                         ; $5879: $0c
    inc e                                         ; $587a: $1c
    inc de                                        ; $587b: $13
    inc e                                         ; $587c: $1c
    inc de                                        ; $587d: $13
    inc e                                         ; $587e: $1c
    inc de                                        ; $587f: $13
    dec bc                                        ; $5880: $0b
    dec c                                         ; $5881: $0d
    dec bc                                        ; $5882: $0b
    dec c                                         ; $5883: $0d
    inc bc                                        ; $5884: $03
    ld [bc], a                                    ; $5885: $02
    inc bc                                        ; $5886: $03
    ld bc, $0707                                  ; $5887: $01 $07 $07
    rlca                                          ; $588a: $07
    rlca                                          ; $588b: $07
    inc bc                                        ; $588c: $03
    inc bc                                        ; $588d: $03
    nop                                           ; $588e: $00
    nop                                           ; $588f: $00
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    ret nz                                        ; $5892: $c0

jr_023_5893:
    ret nz                                        ; $5893: $c0

    and b                                         ; $5894: $a0
    ld h, b                                       ; $5895: $60
    ret nc                                        ; $5896: $d0

    jr nc, jr_023_5869                            ; $5897: $30 $d0

    jr nc, jr_023_5893                            ; $5899: $30 $f8

    ld [$d070], sp                                ; $589b: $08 $70 $d0
    ldh a, [$b0]                                  ; $589e: $f0 $b0
    ldh a, [$30]                                  ; $58a0: $f0 $30
    ldh a, [rNR10]                                ; $58a2: $f0 $10
    ret nz                                        ; $58a4: $c0

    ret nz                                        ; $58a5: $c0

    jr nz, @-$1e                                  ; $58a6: $20 $e0

jr_023_58a8:
    ret nc                                        ; $58a8: $d0

    ldh a, [$f0]                                  ; $58a9: $f0 $f0
    ldh a, [$60]                                  ; $58ab: $f0 $60
    ld h, b                                       ; $58ad: $60
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    nop                                           ; $58b0: $00
    nop                                           ; $58b1: $00
    inc bc                                        ; $58b2: $03
    inc bc                                        ; $58b3: $03
    ld b, $05                                     ; $58b4: $06 $05

jr_023_58b6:
    ld c, $09                                     ; $58b6: $0e $09
    dec bc                                        ; $58b8: $0b
    inc c                                         ; $58b9: $0c
    inc de                                        ; $58ba: $13
    inc e                                         ; $58bb: $1c
    rra                                           ; $58bc: $1f
    db $10                                        ; $58bd: $10
    rra                                           ; $58be: $1f
    ld d, $0f                                     ; $58bf: $16 $0f
    ld c, $0f                                     ; $58c1: $0e $0f
    inc c                                         ; $58c3: $0c
    rra                                           ; $58c4: $1f
    rra                                           ; $58c5: $1f
    inc bc                                        ; $58c6: $03
    ld [bc], a                                    ; $58c7: $02
    inc bc                                        ; $58c8: $03
    inc bc                                        ; $58c9: $03
    nop                                           ; $58ca: $00
    inc bc                                        ; $58cb: $03
    inc bc                                        ; $58cc: $03
    inc bc                                        ; $58cd: $03
    nop                                           ; $58ce: $00
    nop                                           ; $58cf: $00
    nop                                           ; $58d0: $00
    nop                                           ; $58d1: $00
    ret nz                                        ; $58d2: $c0

    ret nz                                        ; $58d3: $c0

    jr nz, jr_023_58b6                            ; $58d4: $20 $e0

    jr nc, jr_023_58a8                            ; $58d6: $30 $d0

    jr nc, @-$2e                                  ; $58d8: $30 $d0

    ld hl, sp+$08                                 ; $58da: $f8 $08
    add sp, $18                                   ; $58dc: $e8 $18
    add sp, $78                                   ; $58de: $e8 $78
    ldh a, [rSVBK]                                ; $58e0: $f0 $70
    ldh [rNR41], a                                ; $58e2: $e0 $20
    ld hl, sp-$18                                 ; $58e4: $f8 $e8
    ld hl, sp+$68                                 ; $58e6: $f8 $68

jr_023_58e8:
    ldh a, [$f0]                                  ; $58e8: $f0 $f0
    ret nz                                        ; $58ea: $c0

    ret nz                                        ; $58eb: $c0

    add b                                         ; $58ec: $80
    add b                                         ; $58ed: $80
    nop                                           ; $58ee: $00
    nop                                           ; $58ef: $00
    nop                                           ; $58f0: $00
    nop                                           ; $58f1: $00
    inc bc                                        ; $58f2: $03
    inc bc                                        ; $58f3: $03
    dec b                                         ; $58f4: $05
    ld b, $09                                     ; $58f5: $06 $09
    ld c, $0b                                     ; $58f7: $0e $0b
    inc c                                         ; $58f9: $0c
    rra                                           ; $58fa: $1f
    db $10                                        ; $58fb: $10
    ld c, $0b                                     ; $58fc: $0e $0b
    rrca                                          ; $58fe: $0f
    dec c                                         ; $58ff: $0d
    rrca                                          ; $5900: $0f
    inc c                                         ; $5901: $0c
    rrca                                          ; $5902: $0f
    ld [$0203], sp                                ; $5903: $08 $03 $02
    rlca                                          ; $5906: $07
    dec b                                         ; $5907: $05
    rrca                                          ; $5908: $0f
    rrca                                          ; $5909: $0f
    dec bc                                        ; $590a: $0b
    rrca                                          ; $590b: $0f
    ld b, $06                                     ; $590c: $06 $06
    nop                                           ; $590e: $00
    nop                                           ; $590f: $00
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    ret nz                                        ; $5912: $c0

jr_023_5913:
    ret nz                                        ; $5913: $c0

    ldh [rNR41], a                                ; $5914: $e0 $20
    ret nc                                        ; $5916: $d0

    jr nc, @-$2e                                  ; $5917: $30 $d0

    jr nc, jr_023_5913                            ; $5919: $30 $f8

    ld [$c838], sp                                ; $591b: $08 $38 $c8
    jr c, jr_023_58e8                             ; $591e: $38 $c8

    or b                                          ; $5920: $b0
    ret nc                                        ; $5921: $d0

    ret nc                                        ; $5922: $d0

    or b                                          ; $5923: $b0
    add b                                         ; $5924: $80
    ret nz                                        ; $5925: $c0

    ret nz                                        ; $5926: $c0

    ret nz                                        ; $5927: $c0

    ldh [$e0], a                                  ; $5928: $e0 $e0
    and b                                         ; $592a: $a0
    ldh [$c0], a                                  ; $592b: $e0 $c0
    ret nz                                        ; $592d: $c0

    nop                                           ; $592e: $00
    nop                                           ; $592f: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    inc bc                                        ; $5932: $03
    inc bc                                        ; $5933: $03
    inc b                                         ; $5934: $04
    rlca                                          ; $5935: $07
    inc c                                         ; $5936: $0c
    dec bc                                        ; $5937: $0b
    inc c                                         ; $5938: $0c
    dec bc                                        ; $5939: $0b
    inc e                                         ; $593a: $1c
    inc de                                        ; $593b: $13
    rla                                           ; $593c: $17
    jr jr_023_5956                                ; $593d: $18 $17

    jr jr_023_5950                                ; $593f: $18 $0f

    ld [$0d0e], sp                                ; $5941: $08 $0e $0d
    rra                                           ; $5944: $1f

jr_023_5945:
    rra                                           ; $5945: $1f
    nop                                           ; $5946: $00
    inc bc                                        ; $5947: $03
    inc bc                                        ; $5948: $03
    inc bc                                        ; $5949: $03
    nop                                           ; $594a: $00
    inc bc                                        ; $594b: $03
    inc bc                                        ; $594c: $03
    inc bc                                        ; $594d: $03
    nop                                           ; $594e: $00
    nop                                           ; $594f: $00

jr_023_5950:
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    ret nz                                        ; $5952: $c0

    ret nz                                        ; $5953: $c0

jr_023_5954:
    ld h, b                                       ; $5954: $60
    and b                                         ; $5955: $a0

jr_023_5956:
    ld [hl], b                                    ; $5956: $70

jr_023_5957:
    sub b                                         ; $5957: $90
    ld [hl], b                                    ; $5958: $70
    sub b                                         ; $5959: $90
    ret z                                         ; $595a: $c8

    jr c, jr_023_5945                             ; $595b: $38 $e8

    jr jr_023_5957                                ; $595d: $18 $f8

    ld [$d030], sp                                ; $595f: $08 $30 $d0
    jr nc, jr_023_5954                            ; $5962: $30 $f0

    ld hl, sp-$18                                 ; $5964: $f8 $e8
    jr c, jr_023_5950                             ; $5966: $38 $e8

    ldh a, [$f0]                                  ; $5968: $f0 $f0
    ret nz                                        ; $596a: $c0

    ret nz                                        ; $596b: $c0

    add b                                         ; $596c: $80
    add b                                         ; $596d: $80
    nop                                           ; $596e: $00
    nop                                           ; $596f: $00

    db $82, $59, $85, $59

    adc e                                         ; $5974: $8b
    ld e, c                                       ; $5975: $59
    adc [hl]                                      ; $5976: $8e
    ld e, c                                       ; $5977: $59
    sbc c                                         ; $5978: $99
    ld e, c                                       ; $5979: $59

    db $a0, $59

    xor b                                         ; $597c: $a8
    ld e, c                                       ; $597d: $59
    cp h                                          ; $597e: $bc
    ld e, c                                       ; $597f: $59
    ret z                                         ; $5980: $c8

    ld e, c                                       ; $5981: $59
    nop                                           ; $5982: $00
    rst $38                                       ; $5983: $ff
    db $fd                                        ; $5984: $fd

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a                                    ; $598b: $02
    rst $38                                       ; $598c: $ff
    db $fd                                        ; $598d: $fd
    ld [bc], a                                    ; $598e: $02
    inc c                                         ; $598f: $0c
    inc bc                                        ; $5990: $03
    inc c                                         ; $5991: $0c
    inc b                                         ; $5992: $04
    jr jr_023_5997                                ; $5993: $18 $02

    inc c                                         ; $5995: $0c
    dec b                                         ; $5996: $05

jr_023_5997:
    inc c                                         ; $5997: $0c
    db $fd                                        ; $5998: $fd
    ld [bc], a                                    ; $5999: $02
    jr @+$05                                      ; $599a: $18 $03

    jr @+$04                                      ; $599c: $18 $02

    jr @-$01                                      ; $599e: $18 $fd

    db $00, $0a, $06, $1e, $00, $0a, $fe, $01

    nop                                           ; $59a8: $00
    ld a, [bc]                                    ; $59a9: $0a
    rlca                                          ; $59aa: $07
    ld a, [bc]                                    ; $59ab: $0a
    nop                                           ; $59ac: $00
    inc bc                                        ; $59ad: $03
    ld [$000a], sp                                ; $59ae: $08 $0a $00
    inc bc                                        ; $59b1: $03
    rlca                                          ; $59b2: $07
    ld a, [bc]                                    ; $59b3: $0a
    nop                                           ; $59b4: $00
    inc bc                                        ; $59b5: $03
    ld [$000a], sp                                ; $59b6: $08 $0a $00
    ld a, [bc]                                    ; $59b9: $0a
    cp $01                                        ; $59ba: $fe $01
    nop                                           ; $59bc: $00
    ld a, [bc]                                    ; $59bd: $0a
    add hl, bc                                    ; $59be: $09
    ld [$0800], sp                                ; $59bf: $08 $00 $08
    add hl, bc                                    ; $59c2: $09
    ld [$0a00], sp                                ; $59c3: $08 $00 $0a
    cp $01                                        ; $59c6: $fe $01
    ld [bc], a                                    ; $59c8: $02
    ld [de], a                                    ; $59c9: $12
    inc bc                                        ; $59ca: $03
    ld [de], a                                    ; $59cb: $12
    ld [bc], a                                    ; $59cc: $02
    ld e, $05                                     ; $59cd: $1e $05
    ld [de], a                                    ; $59cf: $12
    db $fd                                        ; $59d0: $fd

    db $05, $04, $d9, $59, $f0, $5f, $d9, $59, $f0, $59, $f0, $5a, $f0, $5a, $f0, $5a

    ldh a, [$5a]                                  ; $59e1: $f0 $5a
    ldh a, [$5a]                                  ; $59e3: $f0 $5a

    db $f0, $5b

    ldh a, [$5c]                                  ; $59e7: $f0 $5c
    ldh a, [$5d]                                  ; $59e9: $f0 $5d

    db $f0, $5e

    nop                                           ; $59ed: $00
    nop                                           ; $59ee: $00
    nop                                           ; $59ef: $00
    inc bc                                        ; $59f0: $03
    inc bc                                        ; $59f1: $03
    rlca                                          ; $59f2: $07
    inc b                                         ; $59f3: $04
    rrca                                          ; $59f4: $0f
    ld [$0f0f], sp                                ; $59f5: $08 $0f $0f
    rrca                                          ; $59f8: $0f
    dec c                                         ; $59f9: $0d
    rrca                                          ; $59fa: $0f
    inc c                                         ; $59fb: $0c
    rlca                                          ; $59fc: $07
    ld b, $05                                     ; $59fd: $06 $05
    rlca                                          ; $59ff: $07
    ld c, $0f                                     ; $5a00: $0e $0f
    inc de                                        ; $5a02: $13
    rra                                           ; $5a03: $1f
    ld [hl], $3f                                  ; $5a04: $36 $3f
    jr c, @+$31                                   ; $5a06: $38 $2f

    rra                                           ; $5a08: $1f
    rra                                           ; $5a09: $1f
    rra                                           ; $5a0a: $1f
    rra                                           ; $5a0b: $1f
    rla                                           ; $5a0c: $17
    rra                                           ; $5a0d: $1f
    ld c, $0e                                     ; $5a0e: $0e $0e
    ret nz                                        ; $5a10: $c0

    ret nz                                        ; $5a11: $c0

    ldh [rNR41], a                                ; $5a12: $e0 $20
    ldh a, [rNR10]                                ; $5a14: $f0 $10
    ldh a, [rNR10]                                ; $5a16: $f0 $10
    ldh a, [$30]                                  ; $5a18: $f0 $30
    ld hl, sp+$18                                 ; $5a1a: $f8 $18
    db $fc                                        ; $5a1c: $fc
    ld h, h                                       ; $5a1d: $64
    ld hl, sp+$38                                 ; $5a1e: $f8 $38
    ldh a, [$90]                                  ; $5a20: $f0 $90
    ld [hl], b                                    ; $5a22: $70
    ldh a, [$f8]                                  ; $5a23: $f0 $f8
    add sp, $30                                   ; $5a25: $e8 $30
    ldh a, [$e0]                                  ; $5a27: $f0 $e0
    ldh [$f0], a                                  ; $5a29: $e0 $f0
    ret nc                                        ; $5a2b: $d0

    sub b                                         ; $5a2c: $90
    ldh a, [$60]                                  ; $5a2d: $f0 $60
    ld h, b                                       ; $5a2f: $60
    inc bc                                        ; $5a30: $03
    inc bc                                        ; $5a31: $03
    rlca                                          ; $5a32: $07
    inc b                                         ; $5a33: $04
    rrca                                          ; $5a34: $0f
    ld [$181f], sp                                ; $5a35: $08 $1f $18
    ccf                                           ; $5a38: $3f
    ld a, [hl+]                                   ; $5a39: $2a
    ccf                                           ; $5a3a: $3f
    ld hl, $161f                                  ; $5a3b: $21 $1f $16
    ld a, a                                       ; $5a3e: $7f
    ld a, e                                       ; $5a3f: $7b
    rst $28                                       ; $5a40: $ef
    cp h                                          ; $5a41: $bc
    ld l, e                                       ; $5a42: $6b
    ld a, a                                       ; $5a43: $7f
    rla                                           ; $5a44: $17
    ld e, $19                                     ; $5a45: $1e $19
    rra                                           ; $5a47: $1f
    rra                                           ; $5a48: $1f
    rra                                           ; $5a49: $1f
    rrca                                          ; $5a4a: $0f
    rrca                                          ; $5a4b: $0f
    dec c                                         ; $5a4c: $0d
    dec bc                                        ; $5a4d: $0b
    ld b, $06                                     ; $5a4e: $06 $06
    add b                                         ; $5a50: $80
    add b                                         ; $5a51: $80
    ret nz                                        ; $5a52: $c0

    ld b, b                                       ; $5a53: $40
    ldh [rNR41], a                                ; $5a54: $e0 $20
    ldh a, [$30]                                  ; $5a56: $f0 $30
    ld hl, sp-$58                                 ; $5a58: $f8 $a8
    ld hl, sp+$08                                 ; $5a5a: $f8 $08
    ldh a, [$d0]                                  ; $5a5c: $f0 $d0
    ldh a, [$b0]                                  ; $5a5e: $f0 $b0
    add sp, $78                                   ; $5a60: $e8 $78
    and h                                         ; $5a62: $a4
    db $fc                                        ; $5a63: $fc
    sbc $fa                                       ; $5a64: $de $fa
    ld [hl], $f6                                  ; $5a66: $36 $f6
    ldh [$e0], a                                  ; $5a68: $e0 $e0
    ret nz                                        ; $5a6a: $c0

    ret nz                                        ; $5a6b: $c0

    nop                                           ; $5a6c: $00
    nop                                           ; $5a6d: $00
    nop                                           ; $5a6e: $00
    nop                                           ; $5a6f: $00
    inc bc                                        ; $5a70: $03
    inc bc                                        ; $5a71: $03
    rlca                                          ; $5a72: $07
    inc b                                         ; $5a73: $04
    rrca                                          ; $5a74: $0f
    ld [$080f], sp                                ; $5a75: $08 $0f $08
    rrca                                          ; $5a78: $0f
    inc c                                         ; $5a79: $0c
    rra                                           ; $5a7a: $1f
    jr jr_023_5abc                                ; $5a7b: $18 $3f

    ld h, $1f                                     ; $5a7d: $26 $1f
    inc e                                         ; $5a7f: $1c
    rrca                                          ; $5a80: $0f
    add hl, bc                                    ; $5a81: $09
    ld b, $07                                     ; $5a82: $06 $07
    inc c                                         ; $5a84: $0c
    rrca                                          ; $5a85: $0f
    rrca                                          ; $5a86: $0f
    dec bc                                        ; $5a87: $0b
    rlca                                          ; $5a88: $07
    rlca                                          ; $5a89: $07
    rrca                                          ; $5a8a: $0f
    rrca                                          ; $5a8b: $0f
    dec bc                                        ; $5a8c: $0b
    rrca                                          ; $5a8d: $0f
    ld b, $06                                     ; $5a8e: $06 $06
    ret nz                                        ; $5a90: $c0

    ret nz                                        ; $5a91: $c0

    ldh [rNR41], a                                ; $5a92: $e0 $20
    ldh a, [rNR10]                                ; $5a94: $f0 $10
    ldh a, [$f0]                                  ; $5a96: $f0 $f0
    ldh a, [$b0]                                  ; $5a98: $f0 $b0
    ldh a, [$30]                                  ; $5a9a: $f0 $30
    ldh [$60], a                                  ; $5a9c: $e0 $60
    and b                                         ; $5a9e: $a0
    ldh [$d0], a                                  ; $5a9f: $e0 $d0
    ldh a, [$58]                                  ; $5aa1: $f0 $58
    ld hl, sp-$24                                 ; $5aa3: $f8 $dc
    db $f4                                        ; $5aa5: $f4
    jr @-$06                                      ; $5aa6: $18 $f8

    ldh a, [$f0]                                  ; $5aa8: $f0 $f0
    add sp, -$08                                  ; $5aaa: $e8 $f8
    ret c                                         ; $5aac: $d8

    ld hl, sp+$70                                 ; $5aad: $f8 $70
    ld [hl], b                                    ; $5aaf: $70
    inc bc                                        ; $5ab0: $03
    inc bc                                        ; $5ab1: $03
    rlca                                          ; $5ab2: $07
    inc b                                         ; $5ab3: $04
    rrca                                          ; $5ab4: $0f
    ld [$181f], sp                                ; $5ab5: $08 $1f $18
    ccf                                           ; $5ab8: $3f
    inc l                                         ; $5ab9: $2c
    ccf                                           ; $5aba: $3f
    cpl                                           ; $5abb: $2f

jr_023_5abc:
    rra                                           ; $5abc: $1f
    rla                                           ; $5abd: $17
    ld a, a                                       ; $5abe: $7f
    ld a, a                                       ; $5abf: $7f
    add sp, -$41                                  ; $5ac0: $e8 $bf
    ld h, a                                       ; $5ac2: $67
    ld a, a                                       ; $5ac3: $7f
    db $10                                        ; $5ac4: $10
    rra                                           ; $5ac5: $1f
    jr @+$21                                      ; $5ac6: $18 $1f

    rra                                           ; $5ac8: $1f
    rra                                           ; $5ac9: $1f
    dec c                                         ; $5aca: $0d
    dec bc                                        ; $5acb: $0b
    rrca                                          ; $5acc: $0f
    rrca                                          ; $5acd: $0f
    ld b, $06                                     ; $5ace: $06 $06
    add b                                         ; $5ad0: $80
    add b                                         ; $5ad1: $80
    ret nz                                        ; $5ad2: $c0

    ld b, b                                       ; $5ad3: $40
    ldh [rNR41], a                                ; $5ad4: $e0 $20
    ldh a, [$30]                                  ; $5ad6: $f0 $30
    ld hl, sp+$68                                 ; $5ad8: $f8 $68

jr_023_5ada:
    ld hl, sp-$18                                 ; $5ada: $f8 $e8
    ldh a, [$d0]                                  ; $5adc: $f0 $d0
    ldh a, [$f0]                                  ; $5ade: $f0 $f0
    jr z, jr_023_5ada                             ; $5ae0: $28 $f8

    call z, $1efc                                 ; $5ae2: $cc $fc $1e
    ld a, [$fc3c]                                 ; $5ae5: $fa $3c $fc
    ldh [$e0], a                                  ; $5ae8: $e0 $e0
    ret nz                                        ; $5aea: $c0

    ret nz                                        ; $5aeb: $c0

    nop                                           ; $5aec: $00
    nop                                           ; $5aed: $00
    nop                                           ; $5aee: $00
    nop                                           ; $5aef: $00
    inc bc                                        ; $5af0: $03
    inc bc                                        ; $5af1: $03
    rlca                                          ; $5af2: $07
    inc b                                         ; $5af3: $04
    rrca                                          ; $5af4: $0f
    ld [$0f0f], sp                                ; $5af5: $08 $0f $0f
    rrca                                          ; $5af8: $0f
    dec c                                         ; $5af9: $0d
    rrca                                          ; $5afa: $0f
    inc c                                         ; $5afb: $0c
    rlca                                          ; $5afc: $07
    ld b, $05                                     ; $5afd: $06 $05
    rlca                                          ; $5aff: $07
    dec bc                                        ; $5b00: $0b
    rrca                                          ; $5b01: $0f
    ld a, [de]                                    ; $5b02: $1a
    rra                                           ; $5b03: $1f
    dec sp                                        ; $5b04: $3b
    cpl                                           ; $5b05: $2f
    jr jr_023_5b27                                ; $5b06: $18 $1f

    rrca                                          ; $5b08: $0f
    rrca                                          ; $5b09: $0f
    rla                                           ; $5b0a: $17
    rra                                           ; $5b0b: $1f
    dec de                                        ; $5b0c: $1b
    rra                                           ; $5b0d: $1f
    ld c, $0e                                     ; $5b0e: $0e $0e
    ret nz                                        ; $5b10: $c0

    ret nz                                        ; $5b11: $c0

    ldh [rNR41], a                                ; $5b12: $e0 $20
    ldh a, [rNR10]                                ; $5b14: $f0 $10
    ldh a, [rNR10]                                ; $5b16: $f0 $10
    ldh a, [$30]                                  ; $5b18: $f0 $30
    ld hl, sp+$18                                 ; $5b1a: $f8 $18
    db $fc                                        ; $5b1c: $fc
    ld h, h                                       ; $5b1d: $64
    ld hl, sp+$38                                 ; $5b1e: $f8 $38
    ldh a, [$90]                                  ; $5b20: $f0 $90
    ld h, b                                       ; $5b22: $60
    ldh [$30], a                                  ; $5b23: $e0 $30
    ldh a, [$f0]                                  ; $5b25: $f0 $f0

jr_023_5b27:
    ret nc                                        ; $5b27: $d0

    ldh [$e0], a                                  ; $5b28: $e0 $e0
    ldh a, [$f0]                                  ; $5b2a: $f0 $f0
    ret nc                                        ; $5b2c: $d0

    ldh a, [$60]                                  ; $5b2d: $f0 $60
    ld h, b                                       ; $5b2f: $60
    inc bc                                        ; $5b30: $03
    inc bc                                        ; $5b31: $03
    rlca                                          ; $5b32: $07
    inc b                                         ; $5b33: $04
    rrca                                          ; $5b34: $0f
    ld [$181f], sp                                ; $5b35: $08 $1f $18
    ccf                                           ; $5b38: $3f
    ld a, [hl+]                                   ; $5b39: $2a
    ccf                                           ; $5b3a: $3f
    ld hl, $161f                                  ; $5b3b: $21 $1f $16
    rra                                           ; $5b3e: $1f
    dec de                                        ; $5b3f: $1b
    cpl                                           ; $5b40: $2f
    inc a                                         ; $5b41: $3c
    ld c, e                                       ; $5b42: $4b
    ld a, a                                       ; $5b43: $7f
    rst $30                                       ; $5b44: $f7
    cp [hl]                                       ; $5b45: $be
    reti                                          ; $5b46: $d9


    rst $18                                       ; $5b47: $df
    rrca                                          ; $5b48: $0f
    rrca                                          ; $5b49: $0f
    rlca                                          ; $5b4a: $07
    rlca                                          ; $5b4b: $07
    ld bc, $0001                                  ; $5b4c: $01 $01 $00
    nop                                           ; $5b4f: $00
    add b                                         ; $5b50: $80
    add b                                         ; $5b51: $80
    ret nz                                        ; $5b52: $c0

    ld b, b                                       ; $5b53: $40
    ldh [rNR41], a                                ; $5b54: $e0 $20
    ldh a, [$30]                                  ; $5b56: $f0 $30
    ld hl, sp-$58                                 ; $5b58: $f8 $a8
    ld hl, sp+$08                                 ; $5b5a: $f8 $08
    ldh a, [$d0]                                  ; $5b5c: $f0 $d0
    db $fc                                        ; $5b5e: $fc
    cp h                                          ; $5b5f: $bc
    xor $7a                                       ; $5b60: $ee $7a
    xor h                                         ; $5b62: $ac
    db $fc                                        ; $5b63: $fc
    ret nc                                        ; $5b64: $d0

    ldh a, [$30]                                  ; $5b65: $f0 $30
    ldh a, [$f0]                                  ; $5b67: $f0 $f0
    ldh a, [$e0]                                  ; $5b69: $f0 $e0
    ldh [$a0], a                                  ; $5b6b: $e0 $a0
    ld h, b                                       ; $5b6d: $60
    ret nz                                        ; $5b6e: $c0

    ret nz                                        ; $5b6f: $c0

    inc bc                                        ; $5b70: $03
    inc bc                                        ; $5b71: $03
    rlca                                          ; $5b72: $07
    inc b                                         ; $5b73: $04
    rrca                                          ; $5b74: $0f
    ld [$080f], sp                                ; $5b75: $08 $0f $08
    rrca                                          ; $5b78: $0f
    inc c                                         ; $5b79: $0c
    rra                                           ; $5b7a: $1f
    jr jr_023_5bbc                                ; $5b7b: $18 $3f

    ld h, $1f                                     ; $5b7d: $26 $1f
    inc e                                         ; $5b7f: $1c
    rrca                                          ; $5b80: $0f
    add hl, bc                                    ; $5b81: $09
    ld c, $0f                                     ; $5b82: $0e $0f
    rra                                           ; $5b84: $1f
    rla                                           ; $5b85: $17
    inc c                                         ; $5b86: $0c
    rrca                                          ; $5b87: $0f
    rlca                                          ; $5b88: $07
    rlca                                          ; $5b89: $07
    rrca                                          ; $5b8a: $0f
    dec bc                                        ; $5b8b: $0b
    add hl, bc                                    ; $5b8c: $09
    rrca                                          ; $5b8d: $0f
    ld b, $06                                     ; $5b8e: $06 $06
    ret nz                                        ; $5b90: $c0

    ret nz                                        ; $5b91: $c0

    ldh [rNR41], a                                ; $5b92: $e0 $20
    ldh a, [rNR10]                                ; $5b94: $f0 $10
    ldh a, [$f0]                                  ; $5b96: $f0 $f0
    ldh a, [$b0]                                  ; $5b98: $f0 $b0
    ldh a, [$30]                                  ; $5b9a: $f0 $30
    ldh [$60], a                                  ; $5b9c: $e0 $60
    and b                                         ; $5b9e: $a0
    ldh [rSVBK], a                                ; $5b9f: $e0 $70
    ldh a, [$c8]                                  ; $5ba1: $f0 $c8
    ld hl, sp+$6c                                 ; $5ba3: $f8 $6c
    db $fc                                        ; $5ba5: $fc
    inc e                                         ; $5ba6: $1c
    db $f4                                        ; $5ba7: $f4
    ld hl, sp-$08                                 ; $5ba8: $f8 $f8
    ld hl, sp-$08                                 ; $5baa: $f8 $f8
    add sp, -$08                                  ; $5bac: $e8 $f8
    ld [hl], b                                    ; $5bae: $70
    ld [hl], b                                    ; $5baf: $70
    inc bc                                        ; $5bb0: $03
    inc bc                                        ; $5bb1: $03
    rlca                                          ; $5bb2: $07
    inc b                                         ; $5bb3: $04
    rrca                                          ; $5bb4: $0f
    ld [$181f], sp                                ; $5bb5: $08 $1f $18
    ccf                                           ; $5bb8: $3f
    inc l                                         ; $5bb9: $2c
    ccf                                           ; $5bba: $3f
    cpl                                           ; $5bbb: $2f

jr_023_5bbc:
    rra                                           ; $5bbc: $1f
    rla                                           ; $5bbd: $17
    rra                                           ; $5bbe: $1f
    rra                                           ; $5bbf: $1f
    jr z, jr_023_5c01                             ; $5bc0: $28 $3f

    ld b, a                                       ; $5bc2: $47
    ld a, a                                       ; $5bc3: $7f
    ldh a, [$bf]                                  ; $5bc4: $f0 $bf
    ld a, b                                       ; $5bc6: $78
    ld a, a                                       ; $5bc7: $7f
    rrca                                          ; $5bc8: $0f
    rrca                                          ; $5bc9: $0f
    rlca                                          ; $5bca: $07
    rlca                                          ; $5bcb: $07
    ld bc, $0001                                  ; $5bcc: $01 $01 $00
    nop                                           ; $5bcf: $00
    add b                                         ; $5bd0: $80
    add b                                         ; $5bd1: $80
    ret nz                                        ; $5bd2: $c0

    ld b, b                                       ; $5bd3: $40
    ldh [rNR41], a                                ; $5bd4: $e0 $20
    ldh a, [$30]                                  ; $5bd6: $f0 $30
    ld hl, sp+$68                                 ; $5bd8: $f8 $68
    ld hl, sp-$18                                 ; $5bda: $f8 $e8
    ldh a, [$d0]                                  ; $5bdc: $f0 $d0
    db $fc                                        ; $5bde: $fc
    db $fc                                        ; $5bdf: $fc
    ld l, $fa                                     ; $5be0: $2e $fa
    call z, Call_000_10fc                         ; $5be2: $cc $fc $10
    ldh a, [$30]                                  ; $5be5: $f0 $30
    ldh a, [$f0]                                  ; $5be7: $f0 $f0
    ldh a, [$a0]                                  ; $5be9: $f0 $a0
    ld h, b                                       ; $5beb: $60
    ldh [$e0], a                                  ; $5bec: $e0 $e0
    ret nz                                        ; $5bee: $c0

    ret nz                                        ; $5bef: $c0

    nop                                           ; $5bf0: $00
    nop                                           ; $5bf1: $00
    inc bc                                        ; $5bf2: $03
    inc bc                                        ; $5bf3: $03
    rlca                                          ; $5bf4: $07
    inc b                                         ; $5bf5: $04
    rrca                                          ; $5bf6: $0f
    ld [$0f0f], sp                                ; $5bf7: $08 $0f $0f
    rrca                                          ; $5bfa: $0f
    dec c                                         ; $5bfb: $0d
    rrca                                          ; $5bfc: $0f
    inc c                                         ; $5bfd: $0c
    rlca                                          ; $5bfe: $07
    ld b, $05                                     ; $5bff: $06 $05

jr_023_5c01:
    rlca                                          ; $5c01: $07
    ld c, $0f                                     ; $5c02: $0e $0f
    ld [hl], $3f                                  ; $5c04: $36 $3f
    jr c, jr_023_5c37                             ; $5c06: $38 $2f

    rra                                           ; $5c08: $1f
    rra                                           ; $5c09: $1f
    rra                                           ; $5c0a: $1f
    rra                                           ; $5c0b: $1f
    rla                                           ; $5c0c: $17
    rra                                           ; $5c0d: $1f
    ld c, $0e                                     ; $5c0e: $0e $0e
    nop                                           ; $5c10: $00
    nop                                           ; $5c11: $00
    ret nz                                        ; $5c12: $c0

    ret nz                                        ; $5c13: $c0

    ldh [rNR41], a                                ; $5c14: $e0 $20
    ldh a, [rNR10]                                ; $5c16: $f0 $10

jr_023_5c18:
    ldh a, [rNR10]                                ; $5c18: $f0 $10
    ldh a, [$30]                                  ; $5c1a: $f0 $30
    ld hl, sp+$18                                 ; $5c1c: $f8 $18
    db $fc                                        ; $5c1e: $fc
    ld h, h                                       ; $5c1f: $64
    ld hl, sp+$38                                 ; $5c20: $f8 $38
    ldh a, [$90]                                  ; $5c22: $f0 $90
    ld hl, sp-$18                                 ; $5c24: $f8 $e8
    jr nc, jr_023_5c18                            ; $5c26: $30 $f0

    ldh [$e0], a                                  ; $5c28: $e0 $e0
    ldh a, [$d0]                                  ; $5c2a: $f0 $d0
    sub b                                         ; $5c2c: $90
    ldh a, [$60]                                  ; $5c2d: $f0 $60
    ld h, b                                       ; $5c2f: $60
    nop                                           ; $5c30: $00
    nop                                           ; $5c31: $00
    inc bc                                        ; $5c32: $03
    inc bc                                        ; $5c33: $03
    rlca                                          ; $5c34: $07
    inc b                                         ; $5c35: $04
    rrca                                          ; $5c36: $0f

jr_023_5c37:
    ld [$181f], sp                                ; $5c37: $08 $1f $18
    ccf                                           ; $5c3a: $3f
    ld a, [hl+]                                   ; $5c3b: $2a
    ccf                                           ; $5c3c: $3f
    ld hl, $161f                                  ; $5c3d: $21 $1f $16
    ld a, a                                       ; $5c40: $7f
    ld a, e                                       ; $5c41: $7b
    rst $28                                       ; $5c42: $ef
    cp h                                          ; $5c43: $bc
    rla                                           ; $5c44: $17
    ld e, $19                                     ; $5c45: $1e $19
    rra                                           ; $5c47: $1f
    rra                                           ; $5c48: $1f
    rra                                           ; $5c49: $1f
    rrca                                          ; $5c4a: $0f
    rrca                                          ; $5c4b: $0f
    dec c                                         ; $5c4c: $0d
    dec bc                                        ; $5c4d: $0b
    ld b, $06                                     ; $5c4e: $06 $06
    nop                                           ; $5c50: $00
    nop                                           ; $5c51: $00
    add b                                         ; $5c52: $80
    add b                                         ; $5c53: $80
    ret nz                                        ; $5c54: $c0

    ld b, b                                       ; $5c55: $40
    ldh [rNR41], a                                ; $5c56: $e0 $20
    ldh a, [$30]                                  ; $5c58: $f0 $30
    ld hl, sp-$58                                 ; $5c5a: $f8 $a8
    ld hl, sp+$08                                 ; $5c5c: $f8 $08
    ldh a, [$d0]                                  ; $5c5e: $f0 $d0
    ldh a, [$b0]                                  ; $5c60: $f0 $b0
    add sp, $78                                   ; $5c62: $e8 $78
    sbc $fa                                       ; $5c64: $de $fa
    ld [hl], $f6                                  ; $5c66: $36 $f6
    ldh [$e0], a                                  ; $5c68: $e0 $e0
    ret nz                                        ; $5c6a: $c0

    ret nz                                        ; $5c6b: $c0

    nop                                           ; $5c6c: $00
    nop                                           ; $5c6d: $00
    nop                                           ; $5c6e: $00
    nop                                           ; $5c6f: $00
    nop                                           ; $5c70: $00
    nop                                           ; $5c71: $00
    inc bc                                        ; $5c72: $03
    inc bc                                        ; $5c73: $03
    rlca                                          ; $5c74: $07
    inc b                                         ; $5c75: $04
    rrca                                          ; $5c76: $0f
    ld [$080f], sp                                ; $5c77: $08 $0f $08
    rrca                                          ; $5c7a: $0f
    inc c                                         ; $5c7b: $0c
    rra                                           ; $5c7c: $1f
    jr jr_023_5cbe                                ; $5c7d: $18 $3f

    ld h, $1f                                     ; $5c7f: $26 $1f
    inc e                                         ; $5c81: $1c
    rrca                                          ; $5c82: $0f
    add hl, bc                                    ; $5c83: $09
    inc c                                         ; $5c84: $0c
    rrca                                          ; $5c85: $0f
    rrca                                          ; $5c86: $0f
    dec bc                                        ; $5c87: $0b
    rlca                                          ; $5c88: $07
    rlca                                          ; $5c89: $07
    rrca                                          ; $5c8a: $0f
    rrca                                          ; $5c8b: $0f
    dec bc                                        ; $5c8c: $0b
    rrca                                          ; $5c8d: $0f
    ld b, $06                                     ; $5c8e: $06 $06
    nop                                           ; $5c90: $00
    nop                                           ; $5c91: $00
    ret nz                                        ; $5c92: $c0

    ret nz                                        ; $5c93: $c0

    ldh [rNR41], a                                ; $5c94: $e0 $20
    ldh a, [rNR10]                                ; $5c96: $f0 $10
    ldh a, [$f0]                                  ; $5c98: $f0 $f0
    ldh a, [$b0]                                  ; $5c9a: $f0 $b0
    ldh a, [$30]                                  ; $5c9c: $f0 $30
    ldh [$60], a                                  ; $5c9e: $e0 $60

jr_023_5ca0:
    and b                                         ; $5ca0: $a0
    ldh [$d0], a                                  ; $5ca1: $e0 $d0
    ldh a, [$dc]                                  ; $5ca3: $f0 $dc
    db $f4                                        ; $5ca5: $f4
    jr jr_023_5ca0                                ; $5ca6: $18 $f8

    ldh a, [$f0]                                  ; $5ca8: $f0 $f0
    add sp, -$08                                  ; $5caa: $e8 $f8
    ret c                                         ; $5cac: $d8

    ld hl, sp+$70                                 ; $5cad: $f8 $70
    ld [hl], b                                    ; $5caf: $70
    nop                                           ; $5cb0: $00
    nop                                           ; $5cb1: $00
    inc bc                                        ; $5cb2: $03
    inc bc                                        ; $5cb3: $03
    rlca                                          ; $5cb4: $07
    inc b                                         ; $5cb5: $04
    rrca                                          ; $5cb6: $0f
    ld [$181f], sp                                ; $5cb7: $08 $1f $18
    ccf                                           ; $5cba: $3f
    inc l                                         ; $5cbb: $2c
    ccf                                           ; $5cbc: $3f
    cpl                                           ; $5cbd: $2f

jr_023_5cbe:
    rra                                           ; $5cbe: $1f
    rla                                           ; $5cbf: $17
    ld a, a                                       ; $5cc0: $7f
    ld a, a                                       ; $5cc1: $7f
    add sp, -$41                                  ; $5cc2: $e8 $bf
    db $10                                        ; $5cc4: $10
    rra                                           ; $5cc5: $1f
    jr jr_023_5ce7                                ; $5cc6: $18 $1f

    rra                                           ; $5cc8: $1f
    rra                                           ; $5cc9: $1f
    dec c                                         ; $5cca: $0d
    dec bc                                        ; $5ccb: $0b
    rrca                                          ; $5ccc: $0f
    rrca                                          ; $5ccd: $0f
    ld b, $06                                     ; $5cce: $06 $06
    nop                                           ; $5cd0: $00
    nop                                           ; $5cd1: $00
    add b                                         ; $5cd2: $80
    add b                                         ; $5cd3: $80
    ret nz                                        ; $5cd4: $c0

    ld b, b                                       ; $5cd5: $40
    ldh [rNR41], a                                ; $5cd6: $e0 $20
    ldh a, [$30]                                  ; $5cd8: $f0 $30
    ld hl, sp+$68                                 ; $5cda: $f8 $68

jr_023_5cdc:
    ld hl, sp-$18                                 ; $5cdc: $f8 $e8
    ldh a, [$d0]                                  ; $5cde: $f0 $d0
    ldh a, [$f0]                                  ; $5ce0: $f0 $f0
    jr z, jr_023_5cdc                             ; $5ce2: $28 $f8

    ld e, $fa                                     ; $5ce4: $1e $fa
    inc a                                         ; $5ce6: $3c

jr_023_5ce7:
    db $fc                                        ; $5ce7: $fc
    ldh [$e0], a                                  ; $5ce8: $e0 $e0
    ret nz                                        ; $5cea: $c0

    ret nz                                        ; $5ceb: $c0

    nop                                           ; $5cec: $00
    nop                                           ; $5ced: $00
    nop                                           ; $5cee: $00
    nop                                           ; $5cef: $00
    ld bc, $0301                                  ; $5cf0: $01 $01 $03
    ld [bc], a                                    ; $5cf3: $02
    rlca                                          ; $5cf4: $07
    inc b                                         ; $5cf5: $04
    rlca                                          ; $5cf6: $07
    rlca                                          ; $5cf7: $07
    rlca                                          ; $5cf8: $07
    ld b, $07                                     ; $5cf9: $06 $07
    ld b, $03                                     ; $5cfb: $06 $03
    inc bc                                        ; $5cfd: $03
    ld [bc], a                                    ; $5cfe: $02
    inc bc                                        ; $5cff: $03
    rlca                                          ; $5d00: $07
    rlca                                          ; $5d01: $07
    inc de                                        ; $5d02: $13
    rra                                           ; $5d03: $1f
    ld [hl], $3f                                  ; $5d04: $36 $3f
    jr c, jr_023_5d37                             ; $5d06: $38 $2f

    rra                                           ; $5d08: $1f
    rra                                           ; $5d09: $1f
    rra                                           ; $5d0a: $1f
    rra                                           ; $5d0b: $1f
    rla                                           ; $5d0c: $17
    rra                                           ; $5d0d: $1f
    ld c, $0e                                     ; $5d0e: $0e $0e
    ldh [$e0], a                                  ; $5d10: $e0 $e0
    ldh a, [rNR10]                                ; $5d12: $f0 $10
    ld hl, sp+$08                                 ; $5d14: $f8 $08
    ld hl, sp-$78                                 ; $5d16: $f8 $88
    ld hl, sp-$68                                 ; $5d18: $f8 $98
    db $fc                                        ; $5d1a: $fc
    inc c                                         ; $5d1b: $0c
    cp $32                                        ; $5d1c: $fe $32
    db $fc                                        ; $5d1e: $fc
    sbc h                                         ; $5d1f: $9c
    ld a, b                                       ; $5d20: $78
    ret z                                         ; $5d21: $c8

    ld [hl], b                                    ; $5d22: $70
    ldh a, [$f8]                                  ; $5d23: $f0 $f8
    add sp, $30                                   ; $5d25: $e8 $30
    ldh a, [$e0]                                  ; $5d27: $f0 $e0
    ldh [$f0], a                                  ; $5d29: $e0 $f0
    ret nc                                        ; $5d2b: $d0

    sub b                                         ; $5d2c: $90
    ldh a, [$60]                                  ; $5d2d: $f0 $60
    ld h, b                                       ; $5d2f: $60
    ld bc, $0301                                  ; $5d30: $01 $01 $03
    ld [bc], a                                    ; $5d33: $02
    rlca                                          ; $5d34: $07
    inc b                                         ; $5d35: $04
    rrca                                          ; $5d36: $0f

jr_023_5d37:
    inc c                                         ; $5d37: $0c
    rra                                           ; $5d38: $1f
    dec d                                         ; $5d39: $15
    rra                                           ; $5d3a: $1f
    db $10                                        ; $5d3b: $10
    rrca                                          ; $5d3c: $0f
    dec bc                                        ; $5d3d: $0b
    ccf                                           ; $5d3e: $3f
    dec a                                         ; $5d3f: $3d
    ld [hl], a                                    ; $5d40: $77
    ld e, [hl]                                    ; $5d41: $5e
    ld l, e                                       ; $5d42: $6b
    ld a, a                                       ; $5d43: $7f
    rla                                           ; $5d44: $17
    ld e, $19                                     ; $5d45: $1e $19
    rra                                           ; $5d47: $1f
    rra                                           ; $5d48: $1f
    rra                                           ; $5d49: $1f
    rrca                                          ; $5d4a: $0f
    rrca                                          ; $5d4b: $0f
    dec c                                         ; $5d4c: $0d
    dec bc                                        ; $5d4d: $0b
    ld b, $06                                     ; $5d4e: $06 $06
    ret nz                                        ; $5d50: $c0

    ret nz                                        ; $5d51: $c0

    ldh [rNR41], a                                ; $5d52: $e0 $20
    ldh a, [rNR10]                                ; $5d54: $f0 $10
    ld hl, sp+$18                                 ; $5d56: $f8 $18
    db $fc                                        ; $5d58: $fc
    ld d, h                                       ; $5d59: $54
    db $fc                                        ; $5d5a: $fc
    add h                                         ; $5d5b: $84
    ld hl, sp+$68                                 ; $5d5c: $f8 $68
    ld hl, sp-$28                                 ; $5d5e: $f8 $d8
    db $f4                                        ; $5d60: $f4
    inc a                                         ; $5d61: $3c
    and h                                         ; $5d62: $a4
    db $fc                                        ; $5d63: $fc
    sbc $fa                                       ; $5d64: $de $fa
    ld [hl], $f6                                  ; $5d66: $36 $f6
    ldh [$e0], a                                  ; $5d68: $e0 $e0
    ret nz                                        ; $5d6a: $c0

    ret nz                                        ; $5d6b: $c0

    nop                                           ; $5d6c: $00
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    nop                                           ; $5d6f: $00
    ld bc, $0301                                  ; $5d70: $01 $01 $03
    ld [bc], a                                    ; $5d73: $02
    rlca                                          ; $5d74: $07
    inc b                                         ; $5d75: $04
    rlca                                          ; $5d76: $07
    inc b                                         ; $5d77: $04
    rlca                                          ; $5d78: $07
    ld b, $0f                                     ; $5d79: $06 $0f
    inc c                                         ; $5d7b: $0c
    rra                                           ; $5d7c: $1f
    inc de                                        ; $5d7d: $13
    rrca                                          ; $5d7e: $0f
    ld c, $07                                     ; $5d7f: $0e $07
    inc b                                         ; $5d81: $04
    ld b, $07                                     ; $5d82: $06 $07
    inc c                                         ; $5d84: $0c
    rrca                                          ; $5d85: $0f
    rrca                                          ; $5d86: $0f
    dec bc                                        ; $5d87: $0b
    rlca                                          ; $5d88: $07
    rlca                                          ; $5d89: $07
    rrca                                          ; $5d8a: $0f
    rrca                                          ; $5d8b: $0f
    dec bc                                        ; $5d8c: $0b
    rrca                                          ; $5d8d: $0f
    ld b, $06                                     ; $5d8e: $06 $06
    ldh [$e0], a                                  ; $5d90: $e0 $e0
    ldh a, [rNR10]                                ; $5d92: $f0 $10
    ld hl, sp+$08                                 ; $5d94: $f8 $08
    ld hl, sp+$78                                 ; $5d96: $f8 $78
    ld hl, sp+$58                                 ; $5d98: $f8 $58
    ld hl, sp+$18                                 ; $5d9a: $f8 $18
    ldh a, [$30]                                  ; $5d9c: $f0 $30
    ret nc                                        ; $5d9e: $d0

    ld [hl], b                                    ; $5d9f: $70

jr_023_5da0:
    add sp, -$08                                  ; $5da0: $e8 $f8
    ld e, b                                       ; $5da2: $58
    ld hl, sp-$24                                 ; $5da3: $f8 $dc
    db $f4                                        ; $5da5: $f4
    jr jr_023_5da0                                ; $5da6: $18 $f8

    ldh a, [$f0]                                  ; $5da8: $f0 $f0
    add sp, -$08                                  ; $5daa: $e8 $f8
    ret c                                         ; $5dac: $d8

    ld hl, sp+$70                                 ; $5dad: $f8 $70
    ld [hl], b                                    ; $5daf: $70
    ld bc, $0301                                  ; $5db0: $01 $01 $03
    ld [bc], a                                    ; $5db3: $02
    rlca                                          ; $5db4: $07
    inc b                                         ; $5db5: $04
    rrca                                          ; $5db6: $0f
    inc c                                         ; $5db7: $0c
    rra                                           ; $5db8: $1f
    ld d, $1f                                     ; $5db9: $16 $1f
    rla                                           ; $5dbb: $17
    rrca                                          ; $5dbc: $0f
    dec bc                                        ; $5dbd: $0b
    ccf                                           ; $5dbe: $3f
    ccf                                           ; $5dbf: $3f
    ld [hl], h                                    ; $5dc0: $74
    ld e, a                                       ; $5dc1: $5f
    ld h, a                                       ; $5dc2: $67
    ld a, a                                       ; $5dc3: $7f
    db $10                                        ; $5dc4: $10
    rra                                           ; $5dc5: $1f
    jr @+$21                                      ; $5dc6: $18 $1f

    rra                                           ; $5dc8: $1f
    rra                                           ; $5dc9: $1f
    dec c                                         ; $5dca: $0d
    dec bc                                        ; $5dcb: $0b
    rrca                                          ; $5dcc: $0f
    rrca                                          ; $5dcd: $0f
    ld b, $06                                     ; $5dce: $06 $06
    ret nz                                        ; $5dd0: $c0

    ret nz                                        ; $5dd1: $c0

    ldh [rNR41], a                                ; $5dd2: $e0 $20
    ldh a, [rNR10]                                ; $5dd4: $f0 $10
    ld hl, sp+$18                                 ; $5dd6: $f8 $18
    db $fc                                        ; $5dd8: $fc
    inc [hl]                                      ; $5dd9: $34
    db $fc                                        ; $5dda: $fc
    db $f4                                        ; $5ddb: $f4
    ld hl, sp-$18                                 ; $5ddc: $f8 $e8
    ld hl, sp-$08                                 ; $5dde: $f8 $f8
    inc d                                         ; $5de0: $14
    db $fc                                        ; $5de1: $fc
    call z, $1efc                                 ; $5de2: $cc $fc $1e
    ld a, [$fc3c]                                 ; $5de5: $fa $3c $fc
    ldh [$e0], a                                  ; $5de8: $e0 $e0
    ret nz                                        ; $5dea: $c0

    ret nz                                        ; $5deb: $c0

    nop                                           ; $5dec: $00
    nop                                           ; $5ded: $00
    nop                                           ; $5dee: $00
    nop                                           ; $5def: $00
    rlca                                          ; $5df0: $07
    rlca                                          ; $5df1: $07
    rrca                                          ; $5df2: $0f
    ld [$101f], sp                                ; $5df3: $08 $1f $10
    rra                                           ; $5df6: $1f
    ld e, $1f                                     ; $5df7: $1e $1f
    ld a, [de]                                    ; $5df9: $1a
    rra                                           ; $5dfa: $1f
    jr jr_023_5e0c                                ; $5dfb: $18 $0f

    inc c                                         ; $5dfd: $0c
    dec bc                                        ; $5dfe: $0b
    ld c, $1d                                     ; $5dff: $0e $1d
    rra                                           ; $5e01: $1f
    inc de                                        ; $5e02: $13
    rra                                           ; $5e03: $1f
    ld [hl], $3f                                  ; $5e04: $36 $3f
    jr c, jr_023_5e37                             ; $5e06: $38 $2f

    rra                                           ; $5e08: $1f
    rra                                           ; $5e09: $1f
    rra                                           ; $5e0a: $1f
    rra                                           ; $5e0b: $1f

jr_023_5e0c:
    rla                                           ; $5e0c: $17
    rra                                           ; $5e0d: $1f
    ld c, $0e                                     ; $5e0e: $0e $0e
    add b                                         ; $5e10: $80
    add b                                         ; $5e11: $80
    ret nz                                        ; $5e12: $c0

    ld b, b                                       ; $5e13: $40
    ldh [rNR41], a                                ; $5e14: $e0 $20
    ldh [rNR41], a                                ; $5e16: $e0 $20
    ldh [$60], a                                  ; $5e18: $e0 $60
    ldh a, [$30]                                  ; $5e1a: $f0 $30
    ld hl, sp-$38                                 ; $5e1c: $f8 $c8
    ldh a, [rSVBK]                                ; $5e1e: $f0 $70
    ldh [rNR41], a                                ; $5e20: $e0 $20
    ld [hl], b                                    ; $5e22: $70
    ldh a, [$f8]                                  ; $5e23: $f0 $f8
    add sp, $30                                   ; $5e25: $e8 $30
    ldh a, [$e0]                                  ; $5e27: $f0 $e0
    ldh [$f0], a                                  ; $5e29: $e0 $f0
    ret nc                                        ; $5e2b: $d0

    sub b                                         ; $5e2c: $90
    ldh a, [$60]                                  ; $5e2d: $f0 $60
    ld h, b                                       ; $5e2f: $60
    rlca                                          ; $5e30: $07
    rlca                                          ; $5e31: $07
    rrca                                          ; $5e32: $0f
    ld [$101f], sp                                ; $5e33: $08 $1f $10
    ccf                                           ; $5e36: $3f

jr_023_5e37:
    jr nc, @+$81                                  ; $5e37: $30 $7f

    ld d, l                                       ; $5e39: $55
    ld a, a                                       ; $5e3a: $7f
    ld b, d                                       ; $5e3b: $42
    ccf                                           ; $5e3c: $3f
    dec l                                         ; $5e3d: $2d
    rst $38                                       ; $5e3e: $ff
    rst $30                                       ; $5e3f: $f7
    rst $18                                       ; $5e40: $df
    ld a, b                                       ; $5e41: $78
    ld l, e                                       ; $5e42: $6b
    ld a, a                                       ; $5e43: $7f
    rla                                           ; $5e44: $17
    ld e, $19                                     ; $5e45: $1e $19
    rra                                           ; $5e47: $1f
    rra                                           ; $5e48: $1f
    rra                                           ; $5e49: $1f
    rrca                                          ; $5e4a: $0f
    rrca                                          ; $5e4b: $0f
    dec c                                         ; $5e4c: $0d
    dec bc                                        ; $5e4d: $0b
    ld b, $06                                     ; $5e4e: $06 $06
    nop                                           ; $5e50: $00
    nop                                           ; $5e51: $00
    add b                                         ; $5e52: $80
    add b                                         ; $5e53: $80
    ret nz                                        ; $5e54: $c0

    ld b, b                                       ; $5e55: $40
    ldh [$60], a                                  ; $5e56: $e0 $60
    ldh a, [$50]                                  ; $5e58: $f0 $50
    ldh a, [rNR10]                                ; $5e5a: $f0 $10
    ldh [$a0], a                                  ; $5e5c: $e0 $a0
    ldh [$60], a                                  ; $5e5e: $e0 $60
    ret nc                                        ; $5e60: $d0

    ldh a, [$a4]                                  ; $5e61: $f0 $a4
    db $fc                                        ; $5e63: $fc
    sbc $fa                                       ; $5e64: $de $fa
    ld [hl], $f6                                  ; $5e66: $36 $f6
    ldh [$e0], a                                  ; $5e68: $e0 $e0
    ret nz                                        ; $5e6a: $c0

    ret nz                                        ; $5e6b: $c0

    nop                                           ; $5e6c: $00
    nop                                           ; $5e6d: $00
    nop                                           ; $5e6e: $00
    nop                                           ; $5e6f: $00
    rlca                                          ; $5e70: $07
    rlca                                          ; $5e71: $07
    rrca                                          ; $5e72: $0f
    ld [$101f], sp                                ; $5e73: $08 $1f $10
    rra                                           ; $5e76: $1f
    ld de, $191f                                  ; $5e77: $11 $1f $19
    ccf                                           ; $5e7a: $3f
    jr nc, jr_023_5efc                            ; $5e7b: $30 $7f

    ld c, h                                       ; $5e7d: $4c
    ccf                                           ; $5e7e: $3f
    add hl, sp                                    ; $5e7f: $39
    rra                                           ; $5e80: $1f
    inc de                                        ; $5e81: $13
    ld b, $07                                     ; $5e82: $06 $07
    inc c                                         ; $5e84: $0c
    rrca                                          ; $5e85: $0f
    rrca                                          ; $5e86: $0f
    dec bc                                        ; $5e87: $0b
    rlca                                          ; $5e88: $07
    rlca                                          ; $5e89: $07
    rrca                                          ; $5e8a: $0f
    rrca                                          ; $5e8b: $0f
    dec bc                                        ; $5e8c: $0b
    rrca                                          ; $5e8d: $0f
    ld b, $06                                     ; $5e8e: $06 $06
    add b                                         ; $5e90: $80
    add b                                         ; $5e91: $80
    ret nz                                        ; $5e92: $c0

    ld b, b                                       ; $5e93: $40
    ldh [rNR41], a                                ; $5e94: $e0 $20
    ldh [$e0], a                                  ; $5e96: $e0 $e0
    ldh [$60], a                                  ; $5e98: $e0 $60
    ldh [$60], a                                  ; $5e9a: $e0 $60
    ret nz                                        ; $5e9c: $c0

    ret nz                                        ; $5e9d: $c0

    ld b, b                                       ; $5e9e: $40
    ret nz                                        ; $5e9f: $c0

jr_023_5ea0:
    and b                                         ; $5ea0: $a0
    ldh [$58], a                                  ; $5ea1: $e0 $58
    ld hl, sp-$24                                 ; $5ea3: $f8 $dc
    db $f4                                        ; $5ea5: $f4
    jr jr_023_5ea0                                ; $5ea6: $18 $f8

    ldh a, [$f0]                                  ; $5ea8: $f0 $f0
    add sp, -$08                                  ; $5eaa: $e8 $f8
    ret c                                         ; $5eac: $d8

    ld hl, sp+$70                                 ; $5ead: $f8 $70
    ld [hl], b                                    ; $5eaf: $70
    rlca                                          ; $5eb0: $07
    rlca                                          ; $5eb1: $07
    rrca                                          ; $5eb2: $0f
    ld [$101f], sp                                ; $5eb3: $08 $1f $10
    ccf                                           ; $5eb6: $3f
    jr nc, jr_023_5f38                            ; $5eb7: $30 $7f

    ld e, b                                       ; $5eb9: $58
    ld a, a                                       ; $5eba: $7f
    ld e, a                                       ; $5ebb: $5f
    ccf                                           ; $5ebc: $3f
    cpl                                           ; $5ebd: $2f
    rst $38                                       ; $5ebe: $ff
    rst $38                                       ; $5ebf: $ff
    ret nc                                        ; $5ec0: $d0

    ld a, a                                       ; $5ec1: $7f
    ld h, a                                       ; $5ec2: $67
    ld a, a                                       ; $5ec3: $7f
    db $10                                        ; $5ec4: $10
    rra                                           ; $5ec5: $1f
    jr jr_023_5ee7                                ; $5ec6: $18 $1f

    rra                                           ; $5ec8: $1f
    rra                                           ; $5ec9: $1f
    dec c                                         ; $5eca: $0d
    dec bc                                        ; $5ecb: $0b
    rrca                                          ; $5ecc: $0f
    rrca                                          ; $5ecd: $0f
    ld b, $06                                     ; $5ece: $06 $06
    nop                                           ; $5ed0: $00
    nop                                           ; $5ed1: $00
    add b                                         ; $5ed2: $80
    add b                                         ; $5ed3: $80
    ret nz                                        ; $5ed4: $c0

    ld b, b                                       ; $5ed5: $40
    ldh [$60], a                                  ; $5ed6: $e0 $60
    ldh a, [$d0]                                  ; $5ed8: $f0 $d0
    ldh a, [$d0]                                  ; $5eda: $f0 $d0
    ldh [$a0], a                                  ; $5edc: $e0 $a0
    ldh [$e0], a                                  ; $5ede: $e0 $e0
    ld d, b                                       ; $5ee0: $50
    ldh a, [$cc]                                  ; $5ee1: $f0 $cc
    db $fc                                        ; $5ee3: $fc
    ld e, $fa                                     ; $5ee4: $1e $fa
    inc a                                         ; $5ee6: $3c

jr_023_5ee7:
    db $fc                                        ; $5ee7: $fc
    ldh [$e0], a                                  ; $5ee8: $e0 $e0
    ret nz                                        ; $5eea: $c0

    ret nz                                        ; $5eeb: $c0

    nop                                           ; $5eec: $00
    nop                                           ; $5eed: $00
    nop                                           ; $5eee: $00
    nop                                           ; $5eef: $00
    nop                                           ; $5ef0: $00
    nop                                           ; $5ef1: $00
    inc bc                                        ; $5ef2: $03
    inc bc                                        ; $5ef3: $03
    inc bc                                        ; $5ef4: $03
    nop                                           ; $5ef5: $00
    rlca                                          ; $5ef6: $07
    inc b                                         ; $5ef7: $04
    rlca                                          ; $5ef8: $07
    rlca                                          ; $5ef9: $07
    rlca                                          ; $5efa: $07
    dec b                                         ; $5efb: $05

jr_023_5efc:
    inc bc                                        ; $5efc: $03
    ld [bc], a                                    ; $5efd: $02
    ld bc, $0603                                  ; $5efe: $01 $03 $06
    rlca                                          ; $5f01: $07
    dec bc                                        ; $5f02: $0b
    rrca                                          ; $5f03: $0f
    inc e                                         ; $5f04: $1c
    rla                                           ; $5f05: $17
    rrca                                          ; $5f06: $0f
    rrca                                          ; $5f07: $0f
    rrca                                          ; $5f08: $0f
    rrca                                          ; $5f09: $0f
    dec bc                                        ; $5f0a: $0b
    rrca                                          ; $5f0b: $0f
    ld b, $06                                     ; $5f0c: $06 $06
    nop                                           ; $5f0e: $00
    nop                                           ; $5f0f: $00
    nop                                           ; $5f10: $00
    nop                                           ; $5f11: $00
    ret nz                                        ; $5f12: $c0

    ret nz                                        ; $5f13: $c0

    ret nz                                        ; $5f14: $c0

    nop                                           ; $5f15: $00
    ldh [rNR41], a                                ; $5f16: $e0 $20
    ldh [rNR41], a                                ; $5f18: $e0 $20
    ldh [rNR41], a                                ; $5f1a: $e0 $20
    ld hl, sp+$48                                 ; $5f1c: $f8 $48
    ldh a, [$30]                                  ; $5f1e: $f0 $30
    ldh [$a0], a                                  ; $5f20: $e0 $a0
    ld h, b                                       ; $5f22: $60
    ldh [rNR41], a                                ; $5f23: $e0 $20
    ldh [$c0], a                                  ; $5f25: $e0 $c0
    ret nz                                        ; $5f27: $c0

    ldh [$e0], a                                  ; $5f28: $e0 $e0
    and b                                         ; $5f2a: $a0
    ldh [rLCDC], a                                ; $5f2b: $e0 $40
    ld b, b                                       ; $5f2d: $40
    nop                                           ; $5f2e: $00
    nop                                           ; $5f2f: $00
    nop                                           ; $5f30: $00
    nop                                           ; $5f31: $00
    inc bc                                        ; $5f32: $03
    inc bc                                        ; $5f33: $03
    inc bc                                        ; $5f34: $03
    nop                                           ; $5f35: $00
    rlca                                          ; $5f36: $07
    inc b                                         ; $5f37: $04

jr_023_5f38:
    rrca                                          ; $5f38: $0f
    inc c                                         ; $5f39: $0c
    rra                                           ; $5f3a: $1f
    ld d, $0f                                     ; $5f3b: $16 $0f
    ld a, [bc]                                    ; $5f3d: $0a
    ccf                                           ; $5f3e: $3f
    ccf                                           ; $5f3f: $3f
    ld [hl], a                                    ; $5f40: $77
    ld e, h                                       ; $5f41: $5c
    scf                                           ; $5f42: $37
    ccf                                           ; $5f43: $3f
    dec c                                         ; $5f44: $0d
    rrca                                          ; $5f45: $0f
    rrca                                          ; $5f46: $0f
    rrca                                          ; $5f47: $0f
    rlca                                          ; $5f48: $07
    rlca                                          ; $5f49: $07
    dec b                                         ; $5f4a: $05
    rlca                                          ; $5f4b: $07
    ld [bc], a                                    ; $5f4c: $02
    ld [bc], a                                    ; $5f4d: $02
    nop                                           ; $5f4e: $00
    nop                                           ; $5f4f: $00
    nop                                           ; $5f50: $00
    nop                                           ; $5f51: $00
    add b                                         ; $5f52: $80
    add b                                         ; $5f53: $80
    ret nz                                        ; $5f54: $c0

    ld b, b                                       ; $5f55: $40
    ret nz                                        ; $5f56: $c0

    nop                                           ; $5f57: $00
    ldh [rNR41], a                                ; $5f58: $e0 $20
    ldh a, [$90]                                  ; $5f5a: $f0 $90
    ldh [$e0], a                                  ; $5f5c: $e0 $e0
    ldh [$a0], a                                  ; $5f5e: $e0 $a0
    ret nc                                        ; $5f60: $d0

    ld [hl], b                                    ; $5f61: $70
    adc b                                         ; $5f62: $88
    ld hl, sp+$2c                                 ; $5f63: $f8 $2c
    db $ec                                        ; $5f65: $ec
    ret nz                                        ; $5f66: $c0

    ret nz                                        ; $5f67: $c0

    ret nz                                        ; $5f68: $c0

    ret nz                                        ; $5f69: $c0

    nop                                           ; $5f6a: $00
    nop                                           ; $5f6b: $00
    nop                                           ; $5f6c: $00
    nop                                           ; $5f6d: $00
    nop                                           ; $5f6e: $00
    nop                                           ; $5f6f: $00
    nop                                           ; $5f70: $00
    nop                                           ; $5f71: $00
    inc bc                                        ; $5f72: $03
    inc bc                                        ; $5f73: $03
    inc bc                                        ; $5f74: $03
    nop                                           ; $5f75: $00
    rlca                                          ; $5f76: $07
    inc b                                         ; $5f77: $04
    rlca                                          ; $5f78: $07
    inc b                                         ; $5f79: $04
    rlca                                          ; $5f7a: $07
    inc b                                         ; $5f7b: $04
    rra                                           ; $5f7c: $1f
    ld [de], a                                    ; $5f7d: $12
    rrca                                          ; $5f7e: $0f
    inc c                                         ; $5f7f: $0c
    rlca                                          ; $5f80: $07
    dec b                                         ; $5f81: $05
    ld [bc], a                                    ; $5f82: $02
    inc bc                                        ; $5f83: $03
    rlca                                          ; $5f84: $07
    rlca                                          ; $5f85: $07
    inc bc                                        ; $5f86: $03
    inc bc                                        ; $5f87: $03
    rlca                                          ; $5f88: $07
    rlca                                          ; $5f89: $07
    rlca                                          ; $5f8a: $07
    rlca                                          ; $5f8b: $07
    ld [bc], a                                    ; $5f8c: $02
    ld [bc], a                                    ; $5f8d: $02
    nop                                           ; $5f8e: $00
    nop                                           ; $5f8f: $00
    nop                                           ; $5f90: $00
    nop                                           ; $5f91: $00
    ret nz                                        ; $5f92: $c0

    ret nz                                        ; $5f93: $c0

    ret nz                                        ; $5f94: $c0

    nop                                           ; $5f95: $00
    ldh [rNR41], a                                ; $5f96: $e0 $20
    ldh [$e0], a                                  ; $5f98: $e0 $e0
    ldh [$a0], a                                  ; $5f9a: $e0 $a0
    ret nz                                        ; $5f9c: $c0

    ld b, b                                       ; $5f9d: $40
    add b                                         ; $5f9e: $80
    ret nz                                        ; $5f9f: $c0

    ldh [$e0], a                                  ; $5fa0: $e0 $e0
    ld [hl], b                                    ; $5fa2: $70
    ldh a, [$30]                                  ; $5fa3: $f0 $30
    ldh a, [$e0]                                  ; $5fa5: $f0 $e0
    ldh [$d0], a                                  ; $5fa7: $e0 $d0
    ldh a, [$f0]                                  ; $5fa9: $f0 $f0
    ldh a, [$60]                                  ; $5fab: $f0 $60
    ld h, b                                       ; $5fad: $60
    nop                                           ; $5fae: $00
    nop                                           ; $5faf: $00
    nop                                           ; $5fb0: $00
    nop                                           ; $5fb1: $00
    inc bc                                        ; $5fb2: $03
    inc bc                                        ; $5fb3: $03
    inc bc                                        ; $5fb4: $03
    nop                                           ; $5fb5: $00
    rlca                                          ; $5fb6: $07
    inc b                                         ; $5fb7: $04
    rrca                                          ; $5fb8: $0f
    inc c                                         ; $5fb9: $0c
    rra                                           ; $5fba: $1f
    inc d                                         ; $5fbb: $14
    rrca                                          ; $5fbc: $0f
    dec bc                                        ; $5fbd: $0b
    ccf                                           ; $5fbe: $3f
    ccf                                           ; $5fbf: $3f
    ld [hl], h                                    ; $5fc0: $74
    ld e, a                                       ; $5fc1: $5f
    inc sp                                        ; $5fc2: $33
    ccf                                           ; $5fc3: $3f
    inc c                                         ; $5fc4: $0c
    rrca                                          ; $5fc5: $0f
    rrca                                          ; $5fc6: $0f
    rrca                                          ; $5fc7: $0f
    dec b                                         ; $5fc8: $05
    rlca                                          ; $5fc9: $07
    rlca                                          ; $5fca: $07
    rlca                                          ; $5fcb: $07
    ld [bc], a                                    ; $5fcc: $02
    ld [bc], a                                    ; $5fcd: $02
    nop                                           ; $5fce: $00
    nop                                           ; $5fcf: $00
    nop                                           ; $5fd0: $00
    nop                                           ; $5fd1: $00
    add b                                         ; $5fd2: $80
    add b                                         ; $5fd3: $80
    ret nz                                        ; $5fd4: $c0

    ld b, b                                       ; $5fd5: $40
    ret nz                                        ; $5fd6: $c0

    nop                                           ; $5fd7: $00
    ldh [rNR41], a                                ; $5fd8: $e0 $20
    ldh a, [$50]                                  ; $5fda: $f0 $50
    ldh [$e0], a                                  ; $5fdc: $e0 $e0
    ldh [$e0], a                                  ; $5fde: $e0 $e0
    db $10                                        ; $5fe0: $10
    ldh a, [$d8]                                  ; $5fe1: $f0 $d8
    ld hl, sp+$38                                 ; $5fe3: $f8 $38
    ld hl, sp-$40                                 ; $5fe5: $f8 $c0
    ret nz                                        ; $5fe7: $c0

    ret nz                                        ; $5fe8: $c0

    ret nz                                        ; $5fe9: $c0

    nop                                           ; $5fea: $00
    nop                                           ; $5feb: $00
    nop                                           ; $5fec: $00
    nop                                           ; $5fed: $00
    nop                                           ; $5fee: $00
    nop                                           ; $5fef: $00

    db $02, $60, $05, $60

    dec bc                                        ; $5ff4: $0b
    ld h, b                                       ; $5ff5: $60
    ld c, $60                                     ; $5ff6: $0e $60
    add hl, de                                    ; $5ff8: $19
    ld h, b                                       ; $5ff9: $60

    db $20, $60

    jr z, @+$62                                   ; $5ffc: $28 $60

    db $3c, $60

    ld c, b                                       ; $6000: $48
    ld h, b                                       ; $6001: $60
    nop                                           ; $6002: $00
    rst $38                                       ; $6003: $ff
    db $fd                                        ; $6004: $fd

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a                                    ; $600b: $02
    rst $38                                       ; $600c: $ff
    db $fd                                        ; $600d: $fd
    ld [bc], a                                    ; $600e: $02
    inc c                                         ; $600f: $0c
    inc bc                                        ; $6010: $03
    inc c                                         ; $6011: $0c
    inc b                                         ; $6012: $04
    jr jr_023_6017                                ; $6013: $18 $02

    inc c                                         ; $6015: $0c
    dec b                                         ; $6016: $05

jr_023_6017:
    inc c                                         ; $6017: $0c
    db $fd                                        ; $6018: $fd
    ld [bc], a                                    ; $6019: $02
    jr @+$05                                      ; $601a: $18 $03

    jr @+$04                                      ; $601c: $18 $02

    jr @-$01                                      ; $601e: $18 $fd

    db $00, $0a, $06, $1e, $00, $0a, $fe, $01

    nop                                           ; $6028: $00
    ld a, [bc]                                    ; $6029: $0a
    rlca                                          ; $602a: $07
    ld a, [bc]                                    ; $602b: $0a
    nop                                           ; $602c: $00
    inc bc                                        ; $602d: $03
    ld [$000a], sp                                ; $602e: $08 $0a $00
    inc bc                                        ; $6031: $03
    rlca                                          ; $6032: $07
    ld a, [bc]                                    ; $6033: $0a
    nop                                           ; $6034: $00
    inc bc                                        ; $6035: $03
    ld [$000a], sp                                ; $6036: $08 $0a $00
    ld a, [bc]                                    ; $6039: $0a
    cp $01                                        ; $603a: $fe $01

    db $00, $0a, $09, $08, $00, $08, $09, $08, $00, $0a, $fe, $01

    ld [bc], a                                    ; $6048: $02
    ld [de], a                                    ; $6049: $12
    inc bc                                        ; $604a: $03
    ld [de], a                                    ; $604b: $12
    ld [bc], a                                    ; $604c: $02
    ld e, $05                                     ; $604d: $1e $05
    ld [de], a                                    ; $604f: $12
    db $fd                                        ; $6050: $fd

    db $06, $04, $59, $60, $70, $66, $59, $60, $70, $60, $70, $61, $70, $61, $70, $61

    ld [hl], b                                    ; $6061: $70
    ld h, c                                       ; $6062: $61
    ld [hl], b                                    ; $6063: $70
    ld h, c                                       ; $6064: $61

    db $70, $62

    ld [hl], b                                    ; $6067: $70
    ld h, e                                       ; $6068: $63
    ld [hl], b                                    ; $6069: $70
    ld h, h                                       ; $606a: $64
    ld [hl], b                                    ; $606b: $70
    ld h, l                                       ; $606c: $65
    nop                                           ; $606d: $00
    nop                                           ; $606e: $00
    nop                                           ; $606f: $00
    inc bc                                        ; $6070: $03
    inc bc                                        ; $6071: $03
    rlca                                          ; $6072: $07
    rlca                                          ; $6073: $07
    rlca                                          ; $6074: $07
    rlca                                          ; $6075: $07
    rrca                                          ; $6076: $0f
    rrca                                          ; $6077: $0f
    rrca                                          ; $6078: $0f
    rrca                                          ; $6079: $0f
    rrca                                          ; $607a: $0f
    rrca                                          ; $607b: $0f
    dec bc                                        ; $607c: $0b
    ld c, $1f                                     ; $607d: $0e $1f
    ld e, $1b                                     ; $607f: $1e $1b
    dec de                                        ; $6081: $1b
    ld [bc], a                                    ; $6082: $02
    inc bc                                        ; $6083: $03
    rlca                                          ; $6084: $07
    dec b                                         ; $6085: $05
    dec b                                         ; $6086: $05
    rlca                                          ; $6087: $07
    rlca                                          ; $6088: $07
    rlca                                          ; $6089: $07
    rrca                                          ; $608a: $0f
    rrca                                          ; $608b: $0f
    rrca                                          ; $608c: $0f
    dec bc                                        ; $608d: $0b
    ld b, $06                                     ; $608e: $06 $06
    ldh [$e0], a                                  ; $6090: $e0 $e0
    sub b                                         ; $6092: $90
    ldh a, [$b8]                                  ; $6093: $f0 $b8
    ld hl, sp-$04                                 ; $6095: $f8 $fc
    db $fc                                        ; $6097: $fc
    db $fc                                        ; $6098: $fc
    db $fc                                        ; $6099: $fc
    ld hl, sp-$38                                 ; $609a: $f8 $c8
    ld hl, sp+$58                                 ; $609c: $f8 $58
    ld hl, sp+$18                                 ; $609e: $f8 $18
    ld hl, sp+$08                                 ; $60a0: $f8 $08
    ldh a, [$90]                                  ; $60a2: $f0 $90
    ld l, b                                       ; $60a4: $68
    ld hl, sp+$38                                 ; $60a5: $f8 $38
    ld hl, sp-$10                                 ; $60a7: $f8 $f0
    ldh a, [$f8]                                  ; $60a9: $f0 $f8
    add sp, -$08                                  ; $60ab: $e8 $f8
    ret c                                         ; $60ad: $d8

    ld [hl], b                                    ; $60ae: $70
    ld [hl], b                                    ; $60af: $70
    rlca                                          ; $60b0: $07
    rlca                                          ; $60b1: $07
    inc c                                         ; $60b2: $0c
    rrca                                          ; $60b3: $0f
    dec bc                                        ; $60b4: $0b
    rrca                                          ; $60b5: $0f
    rra                                           ; $60b6: $1f
    ld e, $1f                                     ; $60b7: $1e $1f
    ld e, $1f                                     ; $60b9: $1e $1f
    jr jr_023_60fc                                ; $60bb: $18 $3f

    ld a, [hl+]                                   ; $60bd: $2a
    ld a, a                                       ; $60be: $7f
    ld h, d                                       ; $60bf: $62
    ld a, a                                       ; $60c0: $7f
    ld a, b                                       ; $60c1: $78
    ld e, a                                       ; $60c2: $5f
    ld l, h                                       ; $60c3: $6c
    dec sp                                        ; $60c4: $3b
    ccf                                           ; $60c5: $3f
    dec bc                                        ; $60c6: $0b
    ld c, $0f                                     ; $60c7: $0e $0f
    rrca                                          ; $60c9: $0f
    rrca                                          ; $60ca: $0f
    rrca                                          ; $60cb: $0f
    rrca                                          ; $60cc: $0f
    add hl, bc                                    ; $60cd: $09
    ld b, $06                                     ; $60ce: $06 $06
    ret nz                                        ; $60d0: $c0

    ret nz                                        ; $60d1: $c0

    ld h, b                                       ; $60d2: $60
    ldh [$a0], a                                  ; $60d3: $e0 $a0

jr_023_60d5:
    ldh [$f0], a                                  ; $60d5: $e0 $f0
    ldh a, [$f0]                                  ; $60d7: $f0 $f0
    ldh a, [$f0]                                  ; $60d9: $f0 $f0
    jr nc, jr_023_60d5                            ; $60db: $30 $f8

    xor b                                         ; $60dd: $a8
    db $fc                                        ; $60de: $fc
    adc h                                         ; $60df: $8c
    db $fc                                        ; $60e0: $fc
    inc a                                         ; $60e1: $3c
    ret nc                                        ; $60e2: $d0

    ld [hl], b                                    ; $60e3: $70
    cp b                                          ; $60e4: $b8
    add sp, -$4c                                  ; $60e5: $e8 $b4
    db $fc                                        ; $60e7: $fc
    db $ec                                        ; $60e8: $ec
    db $ec                                        ; $60e9: $ec
    ldh [$e0], a                                  ; $60ea: $e0 $e0
    ret nz                                        ; $60ec: $c0

    ret nz                                        ; $60ed: $c0

    nop                                           ; $60ee: $00
    nop                                           ; $60ef: $00
    rlca                                          ; $60f0: $07
    rlca                                          ; $60f1: $07
    add hl, de                                    ; $60f2: $19
    rra                                           ; $60f3: $1f
    dec a                                         ; $60f4: $3d
    ccf                                           ; $60f5: $3f
    ccf                                           ; $60f6: $3f
    ccf                                           ; $60f7: $3f
    ccf                                           ; $60f8: $3f
    ccf                                           ; $60f9: $3f
    rra                                           ; $60fa: $1f
    inc de                                        ; $60fb: $13

jr_023_60fc:
    rra                                           ; $60fc: $1f
    ld a, [de]                                    ; $60fd: $1a
    rra                                           ; $60fe: $1f
    jr jr_023_6120                                ; $60ff: $18 $1f

    db $10                                        ; $6101: $10
    rrca                                          ; $6102: $0f
    add hl, bc                                    ; $6103: $09
    rrca                                          ; $6104: $0f
    rrca                                          ; $6105: $0f
    rla                                           ; $6106: $17
    dec e                                         ; $6107: $1d
    rra                                           ; $6108: $1f
    rra                                           ; $6109: $1f
    rra                                           ; $610a: $1f
    rra                                           ; $610b: $1f
    rra                                           ; $610c: $1f
    rla                                           ; $610d: $17
    ld c, $0e                                     ; $610e: $0e $0e
    ret nz                                        ; $6110: $c0

    ret nz                                        ; $6111: $c0

    ldh [$e0], a                                  ; $6112: $e0 $e0
    ldh [$e0], a                                  ; $6114: $e0 $e0
    ldh a, [$f0]                                  ; $6116: $f0 $f0
    ldh a, [$f0]                                  ; $6118: $f0 $f0
    ldh a, [$f0]                                  ; $611a: $f0 $f0
    ret nc                                        ; $611c: $d0

    ld [hl], b                                    ; $611d: $70
    ld hl, sp+$78                                 ; $611e: $f8 $78

jr_023_6120:
    ret c                                         ; $6120: $d8

    ret c                                         ; $6121: $d8

    ld h, b                                       ; $6122: $60
    ldh [$50], a                                  ; $6123: $e0 $50
    ldh a, [rSVBK]                                ; $6125: $f0 $70
    ldh a, [$e0]                                  ; $6127: $f0 $e0
    ldh [$f0], a                                  ; $6129: $e0 $f0
    ret nc                                        ; $612b: $d0

    ldh a, [$b0]                                  ; $612c: $f0 $b0
    ld h, b                                       ; $612e: $60

jr_023_612f:
    ld h, b                                       ; $612f: $60
    rlca                                          ; $6130: $07
    rlca                                          ; $6131: $07
    inc c                                         ; $6132: $0c
    rrca                                          ; $6133: $0f
    dec bc                                        ; $6134: $0b
    rrca                                          ; $6135: $0f
    rra                                           ; $6136: $1f
    rra                                           ; $6137: $1f
    rra                                           ; $6138: $1f
    rra                                           ; $6139: $1f
    rra                                           ; $613a: $1f
    rra                                           ; $613b: $1f
    cpl                                           ; $613c: $2f
    ccf                                           ; $613d: $3f
    ld a, a                                       ; $613e: $7f
    ld a, a                                       ; $613f: $7f
    ld a, a                                       ; $6140: $7f
    ld a, e                                       ; $6141: $7b
    inc d                                         ; $6142: $14
    rra                                           ; $6143: $1f
    jr c, jr_023_6175                             ; $6144: $38 $2f

    ld e, h                                       ; $6146: $5c
    ld a, a                                       ; $6147: $7f
    ld l, a                                       ; $6148: $6f
    ld l, a                                       ; $6149: $6f
    rrca                                          ; $614a: $0f
    rrca                                          ; $614b: $0f
    rlca                                          ; $614c: $07
    rlca                                          ; $614d: $07
    nop                                           ; $614e: $00
    nop                                           ; $614f: $00
    ret nz                                        ; $6150: $c0

    ret nz                                        ; $6151: $c0

    ld h, b                                       ; $6152: $60
    ldh [$a0], a                                  ; $6153: $e0 $a0
    ldh [$f0], a                                  ; $6155: $e0 $f0
    ldh a, [$f0]                                  ; $6157: $f0 $f0
    ldh a, [$f0]                                  ; $6159: $f0 $f0
    ldh a, [$e8]                                  ; $615b: $f0 $e8
    ld hl, sp-$04                                 ; $615d: $f8 $fc
    db $fc                                        ; $615f: $fc
    db $fc                                        ; $6160: $fc
    cp h                                          ; $6161: $bc
    ld [hl], h                                    ; $6162: $74
    db $ec                                        ; $6163: $ec
    jr c, @-$06                                   ; $6164: $38 $f8

    ld h, b                                       ; $6166: $60
    ldh [$e0], a                                  ; $6167: $e0 $e0
    ldh [$e0], a                                  ; $6169: $e0 $e0
    ldh [$e0], a                                  ; $616b: $e0 $e0
    jr nz, jr_023_612f                            ; $616d: $20 $c0

    ret nz                                        ; $616f: $c0

    inc bc                                        ; $6170: $03
    inc bc                                        ; $6171: $03
    rlca                                          ; $6172: $07
    rlca                                          ; $6173: $07
    rlca                                          ; $6174: $07

jr_023_6175:
    rlca                                          ; $6175: $07
    rrca                                          ; $6176: $0f
    rrca                                          ; $6177: $0f
    rrca                                          ; $6178: $0f
    rrca                                          ; $6179: $0f
    rrca                                          ; $617a: $0f
    rrca                                          ; $617b: $0f
    dec bc                                        ; $617c: $0b
    ld c, $1f                                     ; $617d: $0e $1f
    ld e, $1b                                     ; $617f: $1e $1b
    dec de                                        ; $6181: $1b
    ld b, $07                                     ; $6182: $06 $07
    ld a, [bc]                                    ; $6184: $0a
    rrca                                          ; $6185: $0f
    ld c, $0f                                     ; $6186: $0e $0f
    rlca                                          ; $6188: $07
    rlca                                          ; $6189: $07
    rrca                                          ; $618a: $0f
    dec bc                                        ; $618b: $0b
    rrca                                          ; $618c: $0f
    dec c                                         ; $618d: $0d
    ld b, $06                                     ; $618e: $06 $06
    ldh [$e0], a                                  ; $6190: $e0 $e0
    sub b                                         ; $6192: $90
    ldh a, [$b8]                                  ; $6193: $f0 $b8
    ld hl, sp-$04                                 ; $6195: $f8 $fc
    db $fc                                        ; $6197: $fc
    db $fc                                        ; $6198: $fc
    db $fc                                        ; $6199: $fc
    ld hl, sp-$38                                 ; $619a: $f8 $c8
    ld hl, sp+$58                                 ; $619c: $f8 $58
    ld hl, sp+$18                                 ; $619e: $f8 $18
    ld hl, sp+$08                                 ; $61a0: $f8 $08
    ldh a, [$90]                                  ; $61a2: $f0 $90
    ldh a, [$f0]                                  ; $61a4: $f0 $f0
    add sp, -$48                                  ; $61a6: $e8 $b8
    ld hl, sp-$08                                 ; $61a8: $f8 $f8
    ld hl, sp-$08                                 ; $61aa: $f8 $f8
    ld hl, sp-$18                                 ; $61ac: $f8 $e8
    ld [hl], b                                    ; $61ae: $70

jr_023_61af:
    ld [hl], b                                    ; $61af: $70
    rlca                                          ; $61b0: $07
    rlca                                          ; $61b1: $07
    inc c                                         ; $61b2: $0c
    rrca                                          ; $61b3: $0f
    dec bc                                        ; $61b4: $0b
    rrca                                          ; $61b5: $0f
    rra                                           ; $61b6: $1f
    ld e, $1f                                     ; $61b7: $1e $1f
    ld e, $1f                                     ; $61b9: $1e $1f
    jr jr_023_61fc                                ; $61bb: $18 $3f

    ld a, [hl+]                                   ; $61bd: $2a
    ld a, a                                       ; $61be: $7f
    ld h, d                                       ; $61bf: $62
    ld a, a                                       ; $61c0: $7f
    ld a, b                                       ; $61c1: $78
    rla                                           ; $61c2: $17
    inc e                                         ; $61c3: $1c
    dec sp                                        ; $61c4: $3b
    cpl                                           ; $61c5: $2f
    ld e, e                                       ; $61c6: $5b
    ld a, [hl]                                    ; $61c7: $7e
    ld l, a                                       ; $61c8: $6f
    ld l, a                                       ; $61c9: $6f
    rrca                                          ; $61ca: $0f
    rrca                                          ; $61cb: $0f
    rlca                                          ; $61cc: $07
    rlca                                          ; $61cd: $07
    nop                                           ; $61ce: $00
    nop                                           ; $61cf: $00
    ret nz                                        ; $61d0: $c0

    ret nz                                        ; $61d1: $c0

    ld h, b                                       ; $61d2: $60
    ldh [$a0], a                                  ; $61d3: $e0 $a0

jr_023_61d5:
    ldh [$f0], a                                  ; $61d5: $e0 $f0
    ldh a, [$f0]                                  ; $61d7: $f0 $f0
    ldh a, [$f0]                                  ; $61d9: $f0 $f0
    jr nc, jr_023_61d5                            ; $61db: $30 $f8

    xor b                                         ; $61dd: $a8
    db $fc                                        ; $61de: $fc
    adc h                                         ; $61df: $8c
    db $fc                                        ; $61e0: $fc
    inc a                                         ; $61e1: $3c
    db $f4                                        ; $61e2: $f4
    ld l, h                                       ; $61e3: $6c
    cp b                                          ; $61e4: $b8
    ld hl, sp-$60                                 ; $61e5: $f8 $a0
    ldh [$e0], a                                  ; $61e7: $e0 $e0
    ldh [$e0], a                                  ; $61e9: $e0 $e0
    ldh [$e0], a                                  ; $61eb: $e0 $e0
    jr nz, jr_023_61af                            ; $61ed: $20 $c0

    ret nz                                        ; $61ef: $c0

    rlca                                          ; $61f0: $07
    rlca                                          ; $61f1: $07
    add hl, de                                    ; $61f2: $19
    rra                                           ; $61f3: $1f
    dec a                                         ; $61f4: $3d
    ccf                                           ; $61f5: $3f
    ccf                                           ; $61f6: $3f
    ccf                                           ; $61f7: $3f
    ccf                                           ; $61f8: $3f
    ccf                                           ; $61f9: $3f
    rra                                           ; $61fa: $1f
    inc de                                        ; $61fb: $13

jr_023_61fc:
    rra                                           ; $61fc: $1f
    ld a, [de]                                    ; $61fd: $1a
    rra                                           ; $61fe: $1f
    jr jr_023_6220                                ; $61ff: $18 $1f

    db $10                                        ; $6201: $10
    rrca                                          ; $6202: $0f
    add hl, bc                                    ; $6203: $09
    ld d, $1f                                     ; $6204: $16 $1f
    inc e                                         ; $6206: $1c
    rra                                           ; $6207: $1f
    rrca                                          ; $6208: $0f
    rrca                                          ; $6209: $0f
    rra                                           ; $620a: $1f
    rla                                           ; $620b: $17
    rra                                           ; $620c: $1f
    dec de                                        ; $620d: $1b
    ld c, $0e                                     ; $620e: $0e $0e
    ret nz                                        ; $6210: $c0

    ret nz                                        ; $6211: $c0

    ldh [$e0], a                                  ; $6212: $e0 $e0
    ldh [$e0], a                                  ; $6214: $e0 $e0
    ldh a, [$f0]                                  ; $6216: $f0 $f0
    ldh a, [$f0]                                  ; $6218: $f0 $f0
    ldh a, [$f0]                                  ; $621a: $f0 $f0
    ret nc                                        ; $621c: $d0

    ld [hl], b                                    ; $621d: $70
    ld hl, sp+$78                                 ; $621e: $f8 $78

jr_023_6220:
    ret c                                         ; $6220: $d8

    ret c                                         ; $6221: $d8

    ld b, b                                       ; $6222: $40
    ret nz                                        ; $6223: $c0

    ldh [$a0], a                                  ; $6224: $e0 $a0
    and b                                         ; $6226: $a0
    ldh [$e0], a                                  ; $6227: $e0 $e0
    ldh [$f0], a                                  ; $6229: $e0 $f0
    ldh a, [$f0]                                  ; $622b: $f0 $f0
    ret nc                                        ; $622d: $d0

    ld h, b                                       ; $622e: $60
    ld h, b                                       ; $622f: $60
    rlca                                          ; $6230: $07
    rlca                                          ; $6231: $07
    inc c                                         ; $6232: $0c
    rrca                                          ; $6233: $0f
    dec bc                                        ; $6234: $0b
    rrca                                          ; $6235: $0f
    rra                                           ; $6236: $1f
    rra                                           ; $6237: $1f
    rra                                           ; $6238: $1f
    rra                                           ; $6239: $1f
    rra                                           ; $623a: $1f
    rra                                           ; $623b: $1f
    cpl                                           ; $623c: $2f
    ccf                                           ; $623d: $3f
    ld a, a                                       ; $623e: $7f
    ld a, a                                       ; $623f: $7f
    ld a, a                                       ; $6240: $7f
    ld a, e                                       ; $6241: $7b
    ld e, h                                       ; $6242: $5c
    ld l, a                                       ; $6243: $6f
    jr c, jr_023_6285                             ; $6244: $38 $3f

    inc c                                         ; $6246: $0c
    rrca                                          ; $6247: $0f
    rrca                                          ; $6248: $0f
    rrca                                          ; $6249: $0f
    rrca                                          ; $624a: $0f
    rrca                                          ; $624b: $0f
    rrca                                          ; $624c: $0f
    add hl, bc                                    ; $624d: $09
    ld b, $06                                     ; $624e: $06 $06
    ret nz                                        ; $6250: $c0

    ret nz                                        ; $6251: $c0

    ld h, b                                       ; $6252: $60
    ldh [$a0], a                                  ; $6253: $e0 $a0
    ldh [$f0], a                                  ; $6255: $e0 $f0
    ldh a, [$f0]                                  ; $6257: $f0 $f0
    ldh a, [$f0]                                  ; $6259: $f0 $f0
    ldh a, [$e8]                                  ; $625b: $f0 $e8
    ld hl, sp-$04                                 ; $625d: $f8 $fc
    db $fc                                        ; $625f: $fc
    db $fc                                        ; $6260: $fc
    cp h                                          ; $6261: $bc
    ld d, b                                       ; $6262: $50
    ldh a, [$38]                                  ; $6263: $f0 $38
    add sp, $74                                   ; $6265: $e8 $74
    db $fc                                        ; $6267: $fc
    db $ec                                        ; $6268: $ec
    db $ec                                        ; $6269: $ec
    ldh [$e0], a                                  ; $626a: $e0 $e0
    ret nz                                        ; $626c: $c0

    ret nz                                        ; $626d: $c0

    nop                                           ; $626e: $00
    nop                                           ; $626f: $00
    nop                                           ; $6270: $00
    nop                                           ; $6271: $00
    inc bc                                        ; $6272: $03
    inc bc                                        ; $6273: $03
    rlca                                          ; $6274: $07
    rlca                                          ; $6275: $07
    rlca                                          ; $6276: $07
    rlca                                          ; $6277: $07
    rrca                                          ; $6278: $0f
    rrca                                          ; $6279: $0f
    rrca                                          ; $627a: $0f
    rrca                                          ; $627b: $0f
    rrca                                          ; $627c: $0f
    rrca                                          ; $627d: $0f
    dec bc                                        ; $627e: $0b
    ld c, $1f                                     ; $627f: $0e $1f
    ld e, $1b                                     ; $6281: $1e $1b
    dec de                                        ; $6283: $1b
    rlca                                          ; $6284: $07

jr_023_6285:
    dec b                                         ; $6285: $05
    dec b                                         ; $6286: $05
    rlca                                          ; $6287: $07
    rlca                                          ; $6288: $07
    rlca                                          ; $6289: $07
    rrca                                          ; $628a: $0f
    rrca                                          ; $628b: $0f
    rrca                                          ; $628c: $0f
    dec bc                                        ; $628d: $0b
    ld b, $06                                     ; $628e: $06 $06
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    ldh [$e0], a                                  ; $6292: $e0 $e0
    sub b                                         ; $6294: $90
    ldh a, [$b8]                                  ; $6295: $f0 $b8
    ld hl, sp-$04                                 ; $6297: $f8 $fc
    db $fc                                        ; $6299: $fc
    db $fc                                        ; $629a: $fc
    db $fc                                        ; $629b: $fc
    ld hl, sp-$38                                 ; $629c: $f8 $c8
    ld hl, sp+$58                                 ; $629e: $f8 $58
    ld hl, sp+$18                                 ; $62a0: $f8 $18
    ld hl, sp+$08                                 ; $62a2: $f8 $08
    ld l, b                                       ; $62a4: $68
    ld hl, sp+$38                                 ; $62a5: $f8 $38
    ld hl, sp-$10                                 ; $62a7: $f8 $f0
    ldh a, [$f8]                                  ; $62a9: $f0 $f8
    add sp, -$08                                  ; $62ab: $e8 $f8
    ret c                                         ; $62ad: $d8

    ld [hl], b                                    ; $62ae: $70
    ld [hl], b                                    ; $62af: $70
    nop                                           ; $62b0: $00
    nop                                           ; $62b1: $00
    rlca                                          ; $62b2: $07
    rlca                                          ; $62b3: $07
    inc c                                         ; $62b4: $0c
    rrca                                          ; $62b5: $0f
    dec bc                                        ; $62b6: $0b
    rrca                                          ; $62b7: $0f
    rra                                           ; $62b8: $1f
    ld e, $1f                                     ; $62b9: $1e $1f
    ld e, $1f                                     ; $62bb: $1e $1f
    jr jr_023_62fe                                ; $62bd: $18 $3f

    ld a, [hl+]                                   ; $62bf: $2a
    ld a, a                                       ; $62c0: $7f
    ld h, d                                       ; $62c1: $62
    ld a, a                                       ; $62c2: $7f
    ld a, b                                       ; $62c3: $78
    dec sp                                        ; $62c4: $3b
    ccf                                           ; $62c5: $3f
    dec bc                                        ; $62c6: $0b
    ld c, $0f                                     ; $62c7: $0e $0f
    rrca                                          ; $62c9: $0f
    rrca                                          ; $62ca: $0f
    rrca                                          ; $62cb: $0f
    rrca                                          ; $62cc: $0f
    add hl, bc                                    ; $62cd: $09
    ld b, $06                                     ; $62ce: $06 $06
    nop                                           ; $62d0: $00
    nop                                           ; $62d1: $00
    ret nz                                        ; $62d2: $c0

    ret nz                                        ; $62d3: $c0

    ld h, b                                       ; $62d4: $60
    ldh [$a0], a                                  ; $62d5: $e0 $a0

jr_023_62d7:
    ldh [$f0], a                                  ; $62d7: $e0 $f0
    ldh a, [$f0]                                  ; $62d9: $f0 $f0
    ldh a, [$f0]                                  ; $62db: $f0 $f0
    jr nc, jr_023_62d7                            ; $62dd: $30 $f8

    xor b                                         ; $62df: $a8
    db $fc                                        ; $62e0: $fc
    adc h                                         ; $62e1: $8c
    db $fc                                        ; $62e2: $fc
    inc a                                         ; $62e3: $3c
    cp b                                          ; $62e4: $b8
    add sp, -$4c                                  ; $62e5: $e8 $b4
    db $fc                                        ; $62e7: $fc
    db $ec                                        ; $62e8: $ec
    db $ec                                        ; $62e9: $ec
    ldh [$e0], a                                  ; $62ea: $e0 $e0
    ret nz                                        ; $62ec: $c0

    ret nz                                        ; $62ed: $c0

    nop                                           ; $62ee: $00
    nop                                           ; $62ef: $00
    nop                                           ; $62f0: $00
    nop                                           ; $62f1: $00
    rlca                                          ; $62f2: $07
    rlca                                          ; $62f3: $07
    add hl, de                                    ; $62f4: $19
    rra                                           ; $62f5: $1f
    dec a                                         ; $62f6: $3d
    ccf                                           ; $62f7: $3f
    ccf                                           ; $62f8: $3f
    ccf                                           ; $62f9: $3f
    ccf                                           ; $62fa: $3f
    ccf                                           ; $62fb: $3f
    rra                                           ; $62fc: $1f
    inc de                                        ; $62fd: $13

jr_023_62fe:
    rra                                           ; $62fe: $1f
    ld a, [de]                                    ; $62ff: $1a
    rra                                           ; $6300: $1f
    jr jr_023_6322                                ; $6301: $18 $1f

    db $10                                        ; $6303: $10
    rrca                                          ; $6304: $0f
    rrca                                          ; $6305: $0f
    rla                                           ; $6306: $17
    dec e                                         ; $6307: $1d
    rra                                           ; $6308: $1f
    rra                                           ; $6309: $1f
    rra                                           ; $630a: $1f
    rra                                           ; $630b: $1f
    rra                                           ; $630c: $1f
    rla                                           ; $630d: $17
    ld c, $0e                                     ; $630e: $0e $0e
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    ret nz                                        ; $6312: $c0

    ret nz                                        ; $6313: $c0

    ldh [$e0], a                                  ; $6314: $e0 $e0
    ldh [$e0], a                                  ; $6316: $e0 $e0
    ldh a, [$f0]                                  ; $6318: $f0 $f0
    ldh a, [$f0]                                  ; $631a: $f0 $f0
    ldh a, [$f0]                                  ; $631c: $f0 $f0
    ret nc                                        ; $631e: $d0

    ld [hl], b                                    ; $631f: $70
    ld hl, sp+$78                                 ; $6320: $f8 $78

jr_023_6322:
    ret c                                         ; $6322: $d8

    ret c                                         ; $6323: $d8

    ld d, b                                       ; $6324: $50
    ldh a, [rSVBK]                                ; $6325: $f0 $70
    ldh a, [$e0]                                  ; $6327: $f0 $e0
    ldh [$f0], a                                  ; $6329: $e0 $f0
    ret nc                                        ; $632b: $d0

    ldh a, [$b0]                                  ; $632c: $f0 $b0
    ld h, b                                       ; $632e: $60

jr_023_632f:
    ld h, b                                       ; $632f: $60
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    rlca                                          ; $6332: $07
    rlca                                          ; $6333: $07
    inc c                                         ; $6334: $0c
    rrca                                          ; $6335: $0f
    dec bc                                        ; $6336: $0b
    rrca                                          ; $6337: $0f
    rra                                           ; $6338: $1f
    rra                                           ; $6339: $1f
    rra                                           ; $633a: $1f
    rra                                           ; $633b: $1f
    rra                                           ; $633c: $1f
    rra                                           ; $633d: $1f
    cpl                                           ; $633e: $2f
    ccf                                           ; $633f: $3f
    ld a, a                                       ; $6340: $7f
    ld a, a                                       ; $6341: $7f
    ld a, a                                       ; $6342: $7f
    ld a, e                                       ; $6343: $7b
    jr c, jr_023_6375                             ; $6344: $38 $2f

    ld e, h                                       ; $6346: $5c
    ld a, a                                       ; $6347: $7f
    ld l, a                                       ; $6348: $6f
    ld l, a                                       ; $6349: $6f
    rrca                                          ; $634a: $0f
    rrca                                          ; $634b: $0f
    rlca                                          ; $634c: $07
    rlca                                          ; $634d: $07
    nop                                           ; $634e: $00
    nop                                           ; $634f: $00
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    ret nz                                        ; $6352: $c0

    ret nz                                        ; $6353: $c0

    ld h, b                                       ; $6354: $60
    ldh [$a0], a                                  ; $6355: $e0 $a0
    ldh [$f0], a                                  ; $6357: $e0 $f0
    ldh a, [$f0]                                  ; $6359: $f0 $f0
    ldh a, [$f0]                                  ; $635b: $f0 $f0
    ldh a, [$e8]                                  ; $635d: $f0 $e8
    ld hl, sp-$04                                 ; $635f: $f8 $fc
    db $fc                                        ; $6361: $fc
    db $fc                                        ; $6362: $fc
    cp h                                          ; $6363: $bc
    jr c, @-$06                                   ; $6364: $38 $f8

    ld h, b                                       ; $6366: $60
    ldh [$e0], a                                  ; $6367: $e0 $e0
    ldh [$e0], a                                  ; $6369: $e0 $e0
    ldh [$e0], a                                  ; $636b: $e0 $e0
    jr nz, jr_023_632f                            ; $636d: $20 $c0

    ret nz                                        ; $636f: $c0

    ld bc, $0301                                  ; $6370: $01 $01 $03
    inc bc                                        ; $6373: $03
    inc bc                                        ; $6374: $03

jr_023_6375:
    inc bc                                        ; $6375: $03
    rlca                                          ; $6376: $07
    rlca                                          ; $6377: $07
    rlca                                          ; $6378: $07
    rlca                                          ; $6379: $07
    rlca                                          ; $637a: $07
    rlca                                          ; $637b: $07
    dec b                                         ; $637c: $05
    rlca                                          ; $637d: $07
    rrca                                          ; $637e: $0f
    rrca                                          ; $637f: $0f
    dec c                                         ; $6380: $0d
    dec c                                         ; $6381: $0d
    ld [bc], a                                    ; $6382: $02
    inc bc                                        ; $6383: $03
    rlca                                          ; $6384: $07
    dec b                                         ; $6385: $05
    dec b                                         ; $6386: $05
    rlca                                          ; $6387: $07
    rlca                                          ; $6388: $07
    rlca                                          ; $6389: $07
    rrca                                          ; $638a: $0f
    rrca                                          ; $638b: $0f
    rrca                                          ; $638c: $0f
    dec bc                                        ; $638d: $0b
    ld b, $06                                     ; $638e: $06 $06
    ldh a, [$f0]                                  ; $6390: $f0 $f0
    ret z                                         ; $6392: $c8

    ld hl, sp-$24                                 ; $6393: $f8 $dc
    db $fc                                        ; $6395: $fc
    cp $fe                                        ; $6396: $fe $fe
    cp $fe                                        ; $6398: $fe $fe
    db $fc                                        ; $639a: $fc
    db $e4                                        ; $639b: $e4
    db $fc                                        ; $639c: $fc
    inc l                                         ; $639d: $2c
    db $fc                                        ; $639e: $fc
    inc c                                         ; $639f: $0c
    db $fc                                        ; $63a0: $fc
    add h                                         ; $63a1: $84
    ldh a, [$90]                                  ; $63a2: $f0 $90
    ld l, b                                       ; $63a4: $68
    ld hl, sp+$38                                 ; $63a5: $f8 $38
    ld hl, sp-$10                                 ; $63a7: $f8 $f0
    ldh a, [$f8]                                  ; $63a9: $f0 $f8
    add sp, -$08                                  ; $63ab: $e8 $f8
    ret c                                         ; $63ad: $d8

    ld [hl], b                                    ; $63ae: $70
    ld [hl], b                                    ; $63af: $70
    inc bc                                        ; $63b0: $03
    inc bc                                        ; $63b1: $03
    ld b, $07                                     ; $63b2: $06 $07
    dec b                                         ; $63b4: $05
    rlca                                          ; $63b5: $07
    rrca                                          ; $63b6: $0f
    rrca                                          ; $63b7: $0f
    rrca                                          ; $63b8: $0f
    rrca                                          ; $63b9: $0f
    rrca                                          ; $63ba: $0f
    inc c                                         ; $63bb: $0c
    rra                                           ; $63bc: $1f
    dec d                                         ; $63bd: $15
    ccf                                           ; $63be: $3f
    ld sp, $3c3f                                  ; $63bf: $31 $3f $3c
    ld e, a                                       ; $63c2: $5f
    ld l, h                                       ; $63c3: $6c

jr_023_63c4:
    dec sp                                        ; $63c4: $3b
    ccf                                           ; $63c5: $3f
    dec bc                                        ; $63c6: $0b
    ld c, $0f                                     ; $63c7: $0e $0f
    rrca                                          ; $63c9: $0f
    rrca                                          ; $63ca: $0f
    rrca                                          ; $63cb: $0f
    rrca                                          ; $63cc: $0f
    add hl, bc                                    ; $63cd: $09
    ld b, $06                                     ; $63ce: $06 $06
    ldh [$e0], a                                  ; $63d0: $e0 $e0
    jr nc, jr_023_63c4                            ; $63d2: $30 $f0

    ret nc                                        ; $63d4: $d0

    ldh a, [$f8]                                  ; $63d5: $f0 $f8
    ld a, b                                       ; $63d7: $78
    ld hl, sp+$78                                 ; $63d8: $f8 $78
    ld hl, sp+$18                                 ; $63da: $f8 $18
    db $fc                                        ; $63dc: $fc
    ld d, h                                       ; $63dd: $54
    cp $46                                        ; $63de: $fe $46
    cp $1e                                        ; $63e0: $fe $1e
    ret nc                                        ; $63e2: $d0

    ld [hl], b                                    ; $63e3: $70
    cp b                                          ; $63e4: $b8
    add sp, -$4c                                  ; $63e5: $e8 $b4
    db $fc                                        ; $63e7: $fc
    db $ec                                        ; $63e8: $ec
    db $ec                                        ; $63e9: $ec
    ldh [$e0], a                                  ; $63ea: $e0 $e0
    ret nz                                        ; $63ec: $c0

    ret nz                                        ; $63ed: $c0

    nop                                           ; $63ee: $00
    nop                                           ; $63ef: $00
    inc bc                                        ; $63f0: $03
    inc bc                                        ; $63f1: $03
    inc c                                         ; $63f2: $0c
    rrca                                          ; $63f3: $0f
    ld e, $1f                                     ; $63f4: $1e $1f
    rra                                           ; $63f6: $1f
    rra                                           ; $63f7: $1f
    rra                                           ; $63f8: $1f
    rra                                           ; $63f9: $1f
    rrca                                          ; $63fa: $0f
    add hl, bc                                    ; $63fb: $09
    rrca                                          ; $63fc: $0f
    dec c                                         ; $63fd: $0d
    rrca                                          ; $63fe: $0f
    inc c                                         ; $63ff: $0c
    rrca                                          ; $6400: $0f
    ld [$090f], sp                                ; $6401: $08 $0f $09
    rrca                                          ; $6404: $0f
    rrca                                          ; $6405: $0f
    rla                                           ; $6406: $17
    dec e                                         ; $6407: $1d
    rra                                           ; $6408: $1f
    rra                                           ; $6409: $1f
    rra                                           ; $640a: $1f
    rra                                           ; $640b: $1f
    rra                                           ; $640c: $1f
    rla                                           ; $640d: $17
    ld c, $0e                                     ; $640e: $0e $0e
    ldh [$e0], a                                  ; $6410: $e0 $e0
    ldh a, [$f0]                                  ; $6412: $f0 $f0
    ldh a, [$f0]                                  ; $6414: $f0 $f0
    ld hl, sp-$08                                 ; $6416: $f8 $f8
    ld hl, sp-$08                                 ; $6418: $f8 $f8
    ld hl, sp-$08                                 ; $641a: $f8 $f8
    add sp, $38                                   ; $641c: $e8 $38
    db $fc                                        ; $641e: $fc
    inc a                                         ; $641f: $3c
    db $ec                                        ; $6420: $ec
    ld l, h                                       ; $6421: $6c
    ld h, b                                       ; $6422: $60
    ldh [$50], a                                  ; $6423: $e0 $50
    ldh a, [rSVBK]                                ; $6425: $f0 $70
    ldh a, [$e0]                                  ; $6427: $f0 $e0
    ldh [$f0], a                                  ; $6429: $e0 $f0
    ret nc                                        ; $642b: $d0

    ldh a, [$b0]                                  ; $642c: $f0 $b0
    ld h, b                                       ; $642e: $60

jr_023_642f:
    ld h, b                                       ; $642f: $60
    inc bc                                        ; $6430: $03
    inc bc                                        ; $6431: $03
    ld b, $07                                     ; $6432: $06 $07
    dec b                                         ; $6434: $05
    rlca                                          ; $6435: $07
    rrca                                          ; $6436: $0f
    rrca                                          ; $6437: $0f
    rrca                                          ; $6438: $0f
    rrca                                          ; $6439: $0f
    rrca                                          ; $643a: $0f
    rrca                                          ; $643b: $0f
    rla                                           ; $643c: $17
    rra                                           ; $643d: $1f
    ccf                                           ; $643e: $3f
    ccf                                           ; $643f: $3f
    ccf                                           ; $6440: $3f
    dec a                                         ; $6441: $3d
    inc d                                         ; $6442: $14
    rra                                           ; $6443: $1f

jr_023_6444:
    jr c, jr_023_6475                             ; $6444: $38 $2f

    ld e, h                                       ; $6446: $5c
    ld a, a                                       ; $6447: $7f
    ld l, a                                       ; $6448: $6f
    ld l, a                                       ; $6449: $6f
    rrca                                          ; $644a: $0f
    rrca                                          ; $644b: $0f
    rlca                                          ; $644c: $07
    rlca                                          ; $644d: $07
    nop                                           ; $644e: $00
    nop                                           ; $644f: $00
    ldh [$e0], a                                  ; $6450: $e0 $e0
    jr nc, jr_023_6444                            ; $6452: $30 $f0

    ret nc                                        ; $6454: $d0

    ldh a, [$f8]                                  ; $6455: $f0 $f8
    ld hl, sp-$08                                 ; $6457: $f8 $f8
    ld hl, sp-$08                                 ; $6459: $f8 $f8
    ld hl, sp-$0c                                 ; $645b: $f8 $f4
    db $fc                                        ; $645d: $fc

jr_023_645e:
    cp $fe                                        ; $645e: $fe $fe
    cp $de                                        ; $6460: $fe $de
    ld [hl], h                                    ; $6462: $74
    db $ec                                        ; $6463: $ec
    jr c, jr_023_645e                             ; $6464: $38 $f8

    ld h, b                                       ; $6466: $60
    ldh [$e0], a                                  ; $6467: $e0 $e0
    ldh [$e0], a                                  ; $6469: $e0 $e0
    ldh [$e0], a                                  ; $646b: $e0 $e0
    jr nz, jr_023_642f                            ; $646d: $20 $c0

    ret nz                                        ; $646f: $c0

    rlca                                          ; $6470: $07
    rlca                                          ; $6471: $07
    rrca                                          ; $6472: $0f
    rrca                                          ; $6473: $0f

jr_023_6474:
    rrca                                          ; $6474: $0f

jr_023_6475:
    rrca                                          ; $6475: $0f
    rra                                           ; $6476: $1f
    rra                                           ; $6477: $1f
    rra                                           ; $6478: $1f
    rra                                           ; $6479: $1f
    rra                                           ; $647a: $1f
    rra                                           ; $647b: $1f
    rla                                           ; $647c: $17
    inc e                                         ; $647d: $1c
    ccf                                           ; $647e: $3f
    inc a                                         ; $647f: $3c
    scf                                           ; $6480: $37
    ld [hl], $02                                  ; $6481: $36 $02
    inc bc                                        ; $6483: $03
    rlca                                          ; $6484: $07
    dec b                                         ; $6485: $05
    dec b                                         ; $6486: $05
    rlca                                          ; $6487: $07
    rlca                                          ; $6488: $07
    rlca                                          ; $6489: $07
    rrca                                          ; $648a: $0f
    rrca                                          ; $648b: $0f
    rrca                                          ; $648c: $0f
    dec bc                                        ; $648d: $0b
    ld b, $06                                     ; $648e: $06 $06
    ret nz                                        ; $6490: $c0

    ret nz                                        ; $6491: $c0

    jr nz, jr_023_6474                            ; $6492: $20 $e0

    ld [hl], b                                    ; $6494: $70
    ldh a, [$f8]                                  ; $6495: $f0 $f8
    ld hl, sp-$08                                 ; $6497: $f8 $f8
    ld hl, sp-$10                                 ; $6499: $f8 $f0
    sub b                                         ; $649b: $90
    ldh a, [$b0]                                  ; $649c: $f0 $b0
    ldh a, [$30]                                  ; $649e: $f0 $30
    ldh a, [rNR10]                                ; $64a0: $f0 $10
    ldh a, [$90]                                  ; $64a2: $f0 $90
    ld l, b                                       ; $64a4: $68
    ld hl, sp+$38                                 ; $64a5: $f8 $38
    ld hl, sp-$10                                 ; $64a7: $f8 $f0
    ldh a, [$f8]                                  ; $64a9: $f0 $f8
    add sp, -$08                                  ; $64ab: $e8 $f8
    ret c                                         ; $64ad: $d8

    ld [hl], b                                    ; $64ae: $70
    ld [hl], b                                    ; $64af: $70
    rrca                                          ; $64b0: $0f
    rrca                                          ; $64b1: $0f
    jr jr_023_64d3                                ; $64b2: $18 $1f

    rla                                           ; $64b4: $17
    rra                                           ; $64b5: $1f
    ccf                                           ; $64b6: $3f
    dec a                                         ; $64b7: $3d
    ccf                                           ; $64b8: $3f
    dec a                                         ; $64b9: $3d
    ccf                                           ; $64ba: $3f
    jr nc, jr_023_653c                            ; $64bb: $30 $7f

    ld d, l                                       ; $64bd: $55
    rst $38                                       ; $64be: $ff
    push bc                                       ; $64bf: $c5
    rst $38                                       ; $64c0: $ff
    ldh a, [$5f]                                  ; $64c1: $f0 $5f
    ld l, h                                       ; $64c3: $6c
    dec sp                                        ; $64c4: $3b
    ccf                                           ; $64c5: $3f
    dec bc                                        ; $64c6: $0b
    ld c, $0f                                     ; $64c7: $0e $0f
    rrca                                          ; $64c9: $0f
    rrca                                          ; $64ca: $0f
    rrca                                          ; $64cb: $0f
    rrca                                          ; $64cc: $0f
    add hl, bc                                    ; $64cd: $09
    ld b, $06                                     ; $64ce: $06 $06
    add b                                         ; $64d0: $80
    add b                                         ; $64d1: $80
    ret nz                                        ; $64d2: $c0

jr_023_64d3:
    ret nz                                        ; $64d3: $c0

    ld b, b                                       ; $64d4: $40
    ret nz                                        ; $64d5: $c0

    ldh [$e0], a                                  ; $64d6: $e0 $e0
    ldh [$e0], a                                  ; $64d8: $e0 $e0
    ldh [$60], a                                  ; $64da: $e0 $60
    ldh a, [$50]                                  ; $64dc: $f0 $50
    ld hl, sp+$18                                 ; $64de: $f8 $18
    ld hl, sp+$78                                 ; $64e0: $f8 $78
    ret nc                                        ; $64e2: $d0

    ld [hl], b                                    ; $64e3: $70
    cp b                                          ; $64e4: $b8
    add sp, -$4c                                  ; $64e5: $e8 $b4
    db $fc                                        ; $64e7: $fc
    db $ec                                        ; $64e8: $ec
    db $ec                                        ; $64e9: $ec
    ldh [$e0], a                                  ; $64ea: $e0 $e0
    ret nz                                        ; $64ec: $c0

    ret nz                                        ; $64ed: $c0

    nop                                           ; $64ee: $00
    nop                                           ; $64ef: $00
    rrca                                          ; $64f0: $0f
    rrca                                          ; $64f1: $0f
    inc sp                                        ; $64f2: $33
    ccf                                           ; $64f3: $3f
    ld a, e                                       ; $64f4: $7b
    ld a, a                                       ; $64f5: $7f
    ld a, a                                       ; $64f6: $7f
    ld a, a                                       ; $64f7: $7f
    ld a, a                                       ; $64f8: $7f
    ld a, a                                       ; $64f9: $7f
    ccf                                           ; $64fa: $3f
    daa                                           ; $64fb: $27
    ccf                                           ; $64fc: $3f
    inc [hl]                                      ; $64fd: $34
    ccf                                           ; $64fe: $3f
    jr nc, jr_023_6540                            ; $64ff: $30 $3f

    ld hl, $090f                                  ; $6501: $21 $0f $09
    rrca                                          ; $6504: $0f
    rrca                                          ; $6505: $0f
    rla                                           ; $6506: $17
    dec e                                         ; $6507: $1d
    rra                                           ; $6508: $1f
    rra                                           ; $6509: $1f
    rra                                           ; $650a: $1f
    rra                                           ; $650b: $1f
    rra                                           ; $650c: $1f
    rla                                           ; $650d: $17
    ld c, $0e                                     ; $650e: $0e $0e
    add b                                         ; $6510: $80
    add b                                         ; $6511: $80
    ret nz                                        ; $6512: $c0

    ret nz                                        ; $6513: $c0

    ret nz                                        ; $6514: $c0

    ret nz                                        ; $6515: $c0

    ldh [$e0], a                                  ; $6516: $e0 $e0
    ldh [$e0], a                                  ; $6518: $e0 $e0
    ldh [$e0], a                                  ; $651a: $e0 $e0
    and b                                         ; $651c: $a0
    ldh [$f0], a                                  ; $651d: $e0 $f0
    ldh a, [$b0]                                  ; $651f: $f0 $b0
    or b                                          ; $6521: $b0
    ld h, b                                       ; $6522: $60
    ldh [$50], a                                  ; $6523: $e0 $50
    ldh a, [rSVBK]                                ; $6525: $f0 $70
    ldh a, [$e0]                                  ; $6527: $f0 $e0
    ldh [$f0], a                                  ; $6529: $e0 $f0
    ret nc                                        ; $652b: $d0

    ldh a, [$b0]                                  ; $652c: $f0 $b0
    ld h, b                                       ; $652e: $60

jr_023_652f:
    ld h, b                                       ; $652f: $60
    rrca                                          ; $6530: $0f
    rrca                                          ; $6531: $0f
    jr jr_023_6553                                ; $6532: $18 $1f

    rla                                           ; $6534: $17
    rra                                           ; $6535: $1f
    ccf                                           ; $6536: $3f
    ccf                                           ; $6537: $3f
    ccf                                           ; $6538: $3f
    ccf                                           ; $6539: $3f
    ccf                                           ; $653a: $3f
    ccf                                           ; $653b: $3f

jr_023_653c:
    ld e, a                                       ; $653c: $5f
    ld a, a                                       ; $653d: $7f
    rst $38                                       ; $653e: $ff
    rst $38                                       ; $653f: $ff

jr_023_6540:
    rst $38                                       ; $6540: $ff
    rst $30                                       ; $6541: $f7
    inc d                                         ; $6542: $14
    rra                                           ; $6543: $1f
    jr c, jr_023_6575                             ; $6544: $38 $2f

    ld e, h                                       ; $6546: $5c
    ld a, a                                       ; $6547: $7f
    ld l, a                                       ; $6548: $6f
    ld l, a                                       ; $6549: $6f
    rrca                                          ; $654a: $0f
    rrca                                          ; $654b: $0f
    rlca                                          ; $654c: $07
    rlca                                          ; $654d: $07
    nop                                           ; $654e: $00
    nop                                           ; $654f: $00
    add b                                         ; $6550: $80
    add b                                         ; $6551: $80
    ret nz                                        ; $6552: $c0

jr_023_6553:
    ret nz                                        ; $6553: $c0

    ld b, b                                       ; $6554: $40
    ret nz                                        ; $6555: $c0

    ldh [$e0], a                                  ; $6556: $e0 $e0
    ldh [$e0], a                                  ; $6558: $e0 $e0
    ldh [$e0], a                                  ; $655a: $e0 $e0
    ret nc                                        ; $655c: $d0

    ldh a, [$f8]                                  ; $655d: $f0 $f8
    ld hl, sp-$08                                 ; $655f: $f8 $f8
    ld a, b                                       ; $6561: $78
    ld [hl], h                                    ; $6562: $74
    db $ec                                        ; $6563: $ec
    jr c, @-$06                                   ; $6564: $38 $f8

    ld h, b                                       ; $6566: $60
    ldh [$e0], a                                  ; $6567: $e0 $e0
    ldh [$e0], a                                  ; $6569: $e0 $e0
    ldh [$e0], a                                  ; $656b: $e0 $e0
    jr nz, jr_023_652f                            ; $656d: $20 $c0

    ret nz                                        ; $656f: $c0

    nop                                           ; $6570: $00
    nop                                           ; $6571: $00
    inc bc                                        ; $6572: $03
    inc bc                                        ; $6573: $03
    inc bc                                        ; $6574: $03

jr_023_6575:
    inc bc                                        ; $6575: $03
    inc bc                                        ; $6576: $03
    inc bc                                        ; $6577: $03
    rlca                                          ; $6578: $07
    rlca                                          ; $6579: $07
    rlca                                          ; $657a: $07
    rlca                                          ; $657b: $07
    rlca                                          ; $657c: $07
    ld b, $0f                                     ; $657d: $06 $0f
    ld c, $0f                                     ; $657f: $0e $0f
    rrca                                          ; $6581: $0f
    ld [bc], a                                    ; $6582: $02
    inc bc                                        ; $6583: $03
    ld bc, $0303                                  ; $6584: $01 $03 $03
    inc bc                                        ; $6587: $03
    rlca                                          ; $6588: $07
    rlca                                          ; $6589: $07
    rlca                                          ; $658a: $07
    rlca                                          ; $658b: $07
    ld [bc], a                                    ; $658c: $02
    ld [bc], a                                    ; $658d: $02
    nop                                           ; $658e: $00
    nop                                           ; $658f: $00
    nop                                           ; $6590: $00
    nop                                           ; $6591: $00
    ret nz                                        ; $6592: $c0

    ret nz                                        ; $6593: $c0

    and b                                         ; $6594: $a0
    ldh [$b0], a                                  ; $6595: $e0 $b0
    ldh a, [$f8]                                  ; $6597: $f0 $f8
    ld hl, sp-$08                                 ; $6599: $f8 $f8
    ld hl, sp-$10                                 ; $659b: $f8 $f0
    ld [hl], b                                    ; $659d: $70
    ldh a, [$30]                                  ; $659e: $f0 $30
    ldh a, [rNR10]                                ; $65a0: $f0 $10
    ldh [$a0], a                                  ; $65a2: $e0 $a0
    jr nc, @-$0e                                  ; $65a4: $30 $f0

    ldh [$e0], a                                  ; $65a6: $e0 $e0
    ldh a, [$d0]                                  ; $65a8: $f0 $d0
    ldh a, [$f0]                                  ; $65aa: $f0 $f0
    ld h, b                                       ; $65ac: $60
    ld h, b                                       ; $65ad: $60
    nop                                           ; $65ae: $00
    nop                                           ; $65af: $00
    nop                                           ; $65b0: $00
    nop                                           ; $65b1: $00
    inc bc                                        ; $65b2: $03
    inc bc                                        ; $65b3: $03
    inc b                                         ; $65b4: $04
    rlca                                          ; $65b5: $07
    rlca                                          ; $65b6: $07
    rlca                                          ; $65b7: $07
    rrca                                          ; $65b8: $0f
    ld c, $0f                                     ; $65b9: $0e $0f
    ld c, $1f                                     ; $65bb: $0e $1f
    ld d, $3f                                     ; $65bd: $16 $3f
    ld [hl-], a                                   ; $65bf: $32
    ccf                                           ; $65c0: $3f
    inc a                                         ; $65c1: $3c
    cpl                                           ; $65c2: $2f
    inc [hl]                                      ; $65c3: $34
    rlca                                          ; $65c4: $07
    ld b, $07                                     ; $65c5: $06 $07
    rlca                                          ; $65c7: $07
    rlca                                          ; $65c8: $07
    rlca                                          ; $65c9: $07
    rlca                                          ; $65ca: $07
    dec b                                         ; $65cb: $05
    ld [bc], a                                    ; $65cc: $02
    ld [bc], a                                    ; $65cd: $02
    nop                                           ; $65ce: $00
    nop                                           ; $65cf: $00
    nop                                           ; $65d0: $00
    nop                                           ; $65d1: $00
    ret nz                                        ; $65d2: $c0

    ret nz                                        ; $65d3: $c0

    ld b, b                                       ; $65d4: $40
    ret nz                                        ; $65d5: $c0

    add b                                         ; $65d6: $80
    ret nz                                        ; $65d7: $c0

    ldh [$e0], a                                  ; $65d8: $e0 $e0
    ldh [$e0], a                                  ; $65da: $e0 $e0
    ldh a, [$90]                                  ; $65dc: $f0 $90
    ld hl, sp-$68                                 ; $65de: $f8 $98
    ld hl, sp+$38                                 ; $65e0: $f8 $38
    ldh [$60], a                                  ; $65e2: $e0 $60
    xor b                                         ; $65e4: $a8
    ld hl, sp-$28                                 ; $65e5: $f8 $d8
    ret c                                         ; $65e7: $d8

    ret nz                                        ; $65e8: $c0

    ret nz                                        ; $65e9: $c0

    ret nz                                        ; $65ea: $c0

    ret nz                                        ; $65eb: $c0

    nop                                           ; $65ec: $00
    nop                                           ; $65ed: $00
    nop                                           ; $65ee: $00
    nop                                           ; $65ef: $00
    nop                                           ; $65f0: $00
    nop                                           ; $65f1: $00
    inc bc                                        ; $65f2: $03
    inc bc                                        ; $65f3: $03
    dec c                                         ; $65f4: $0d
    rrca                                          ; $65f5: $0f
    dec e                                         ; $65f6: $1d
    rra                                           ; $65f7: $1f
    rra                                           ; $65f8: $1f
    rra                                           ; $65f9: $1f
    rra                                           ; $65fa: $1f
    rra                                           ; $65fb: $1f
    rrca                                          ; $65fc: $0f
    ld c, $0f                                     ; $65fd: $0e $0f
    inc c                                         ; $65ff: $0c
    rrca                                          ; $6600: $0f
    ld [$0507], sp                                ; $6601: $08 $07 $05
    dec bc                                        ; $6604: $0b
    dec c                                         ; $6605: $0d
    rrca                                          ; $6606: $0f
    rrca                                          ; $6607: $0f
    rrca                                          ; $6608: $0f
    rrca                                          ; $6609: $0f
    rrca                                          ; $660a: $0f
    dec bc                                        ; $660b: $0b
    ld b, $06                                     ; $660c: $06 $06
    nop                                           ; $660e: $00
    nop                                           ; $660f: $00
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00
    ret nz                                        ; $6612: $c0

    ret nz                                        ; $6613: $c0

    ret nz                                        ; $6614: $c0

    ret nz                                        ; $6615: $c0

    ret nz                                        ; $6616: $c0

    ret nz                                        ; $6617: $c0

    ldh [$e0], a                                  ; $6618: $e0 $e0
    ldh [$e0], a                                  ; $661a: $e0 $e0
    ldh [$60], a                                  ; $661c: $e0 $60
    ldh a, [rSVBK]                                ; $661e: $f0 $70
    ldh a, [$f0]                                  ; $6620: $f0 $f0
    ld b, b                                       ; $6622: $40
    ret nz                                        ; $6623: $c0

    ld h, b                                       ; $6624: $60
    ldh [$c0], a                                  ; $6625: $e0 $c0
    ret nz                                        ; $6627: $c0

    ldh [$e0], a                                  ; $6628: $e0 $e0
    ldh [$a0], a                                  ; $662a: $e0 $a0
    ld b, b                                       ; $662c: $40
    ld b, b                                       ; $662d: $40
    nop                                           ; $662e: $00
    nop                                           ; $662f: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    inc bc                                        ; $6632: $03
    inc bc                                        ; $6633: $03
    inc b                                         ; $6634: $04
    rlca                                          ; $6635: $07
    rlca                                          ; $6636: $07
    rlca                                          ; $6637: $07
    rrca                                          ; $6638: $0f
    rrca                                          ; $6639: $0f
    rrca                                          ; $663a: $0f
    rrca                                          ; $663b: $0f
    rla                                           ; $663c: $17
    rra                                           ; $663d: $1f
    ccf                                           ; $663e: $3f
    ccf                                           ; $663f: $3f
    ccf                                           ; $6640: $3f
    ccf                                           ; $6641: $3f
    ld [$2c0f], sp                                ; $6642: $08 $0f $2c
    ccf                                           ; $6645: $3f
    scf                                           ; $6646: $37
    scf                                           ; $6647: $37
    rlca                                          ; $6648: $07
    rlca                                          ; $6649: $07
    inc bc                                        ; $664a: $03
    inc bc                                        ; $664b: $03
    nop                                           ; $664c: $00
    nop                                           ; $664d: $00
    nop                                           ; $664e: $00
    nop                                           ; $664f: $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    ret nz                                        ; $6652: $c0

    ret nz                                        ; $6653: $c0

    ld b, b                                       ; $6654: $40
    ret nz                                        ; $6655: $c0

    add b                                         ; $6656: $80
    ret nz                                        ; $6657: $c0

    ldh [$e0], a                                  ; $6658: $e0 $e0
    ldh [$e0], a                                  ; $665a: $e0 $e0
    ret nc                                        ; $665c: $d0

    ldh a, [$f8]                                  ; $665d: $f0 $f8
    ld hl, sp-$08                                 ; $665f: $f8 $f8
    cp b                                          ; $6661: $b8
    ld l, b                                       ; $6662: $68
    ret c                                         ; $6663: $d8

    ld b, b                                       ; $6664: $40
    ret nz                                        ; $6665: $c0

    ret nz                                        ; $6666: $c0

    ret nz                                        ; $6667: $c0

    ret nz                                        ; $6668: $c0

    ret nz                                        ; $6669: $c0

    ret nz                                        ; $666a: $c0

    nop                                           ; $666b: $00
    ret nz                                        ; $666c: $c0

    ret nz                                        ; $666d: $c0

    nop                                           ; $666e: $00
    nop                                           ; $666f: $00

    db $82, $66, $85, $66

    adc e                                         ; $6674: $8b
    ld h, [hl]                                    ; $6675: $66
    adc [hl]                                      ; $6676: $8e
    ld h, [hl]                                    ; $6677: $66
    sbc c                                         ; $6678: $99
    ld h, [hl]                                    ; $6679: $66

    db $a0, $66

    xor b                                         ; $667c: $a8
    ld h, [hl]                                    ; $667d: $66
    cp h                                          ; $667e: $bc
    ld h, [hl]                                    ; $667f: $66
    ret z                                         ; $6680: $c8

    ld h, [hl]                                    ; $6681: $66
    nop                                           ; $6682: $00
    rst $38                                       ; $6683: $ff
    db $fd                                        ; $6684: $fd

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a                                    ; $668b: $02
    rst $38                                       ; $668c: $ff
    db $fd                                        ; $668d: $fd
    ld [bc], a                                    ; $668e: $02
    inc c                                         ; $668f: $0c
    inc bc                                        ; $6690: $03
    inc c                                         ; $6691: $0c
    inc b                                         ; $6692: $04
    jr jr_023_6697                                ; $6693: $18 $02

    inc c                                         ; $6695: $0c
    dec b                                         ; $6696: $05

jr_023_6697:
    inc c                                         ; $6697: $0c
    db $fd                                        ; $6698: $fd
    ld [bc], a                                    ; $6699: $02
    jr @+$05                                      ; $669a: $18 $03

    jr @+$04                                      ; $669c: $18 $02

    jr @-$01                                      ; $669e: $18 $fd

    db $00, $0a, $06, $1e, $00, $0a, $fe, $01

    nop                                           ; $66a8: $00
    ld a, [bc]                                    ; $66a9: $0a
    rlca                                          ; $66aa: $07
    ld a, [bc]                                    ; $66ab: $0a
    nop                                           ; $66ac: $00
    inc bc                                        ; $66ad: $03
    ld [$000a], sp                                ; $66ae: $08 $0a $00
    inc bc                                        ; $66b1: $03
    rlca                                          ; $66b2: $07
    ld a, [bc]                                    ; $66b3: $0a
    nop                                           ; $66b4: $00
    inc bc                                        ; $66b5: $03
    ld [$000a], sp                                ; $66b6: $08 $0a $00
    ld a, [bc]                                    ; $66b9: $0a
    cp $01                                        ; $66ba: $fe $01
    nop                                           ; $66bc: $00
    ld a, [bc]                                    ; $66bd: $0a
    add hl, bc                                    ; $66be: $09
    ld [$0800], sp                                ; $66bf: $08 $00 $08
    add hl, bc                                    ; $66c2: $09
    ld [$0a00], sp                                ; $66c3: $08 $00 $0a
    cp $01                                        ; $66c6: $fe $01
    ld [bc], a                                    ; $66c8: $02
    ld [de], a                                    ; $66c9: $12
    inc bc                                        ; $66ca: $03
    ld [de], a                                    ; $66cb: $12
    ld [bc], a                                    ; $66cc: $02
    ld e, $05                                     ; $66cd: $1e $05
    ld [de], a                                    ; $66cf: $12
    db $fd                                        ; $66d0: $fd

    db $05, $04, $d9, $66, $00, $73, $d9, $66, $00, $67, $00, $68, $00, $69, $00, $6a
    db $00, $6b, $00, $6c

    nop                                           ; $66e5: $00
    ld l, l                                       ; $66e6: $6d
    nop                                           ; $66e7: $00
    ld l, [hl]                                    ; $66e8: $6e
    nop                                           ; $66e9: $00
    ld l, a                                       ; $66ea: $6f
    nop                                           ; $66eb: $00
    ld [hl], b                                    ; $66ec: $70
    nop                                           ; $66ed: $00
    ld [hl], c                                    ; $66ee: $71
    nop                                           ; $66ef: $00
    ld [hl], d                                    ; $66f0: $72
    nop                                           ; $66f1: $00
    nop                                           ; $66f2: $00
    nop                                           ; $66f3: $00
    nop                                           ; $66f4: $00
    nop                                           ; $66f5: $00
    nop                                           ; $66f6: $00
    nop                                           ; $66f7: $00
    nop                                           ; $66f8: $00
    nop                                           ; $66f9: $00
    nop                                           ; $66fa: $00
    nop                                           ; $66fb: $00
    nop                                           ; $66fc: $00
    nop                                           ; $66fd: $00
    nop                                           ; $66fe: $00
    nop                                           ; $66ff: $00
    inc bc                                        ; $6700: $03
    inc bc                                        ; $6701: $03
    inc b                                         ; $6702: $04
    rlca                                          ; $6703: $07
    ld [$080f], sp                                ; $6704: $08 $0f $08
    rrca                                          ; $6707: $0f
    add hl, bc                                    ; $6708: $09
    rrca                                          ; $6709: $0f
    dec bc                                        ; $670a: $0b
    ld c, $0b                                     ; $670b: $0e $0b
    ld c, $05                                     ; $670d: $0e $05
    rlca                                          ; $670f: $07
    rlca                                          ; $6710: $07
    rlca                                          ; $6711: $07
    dec b                                         ; $6712: $05
    rlca                                          ; $6713: $07
    rrca                                          ; $6714: $0f

jr_023_6715:
    dec bc                                        ; $6715: $0b
    ld c, $0b                                     ; $6716: $0e $0b
    rlca                                          ; $6718: $07
    rlca                                          ; $6719: $07
    rrca                                          ; $671a: $0f
    rrca                                          ; $671b: $0f
    dec bc                                        ; $671c: $0b
    rrca                                          ; $671d: $0f
    ld b, $06                                     ; $671e: $06 $06
    ldh [$e0], a                                  ; $6720: $e0 $e0
    db $10                                        ; $6722: $10
    ldh a, [$28]                                  ; $6723: $f0 $28
    ld hl, sp+$78                                 ; $6725: $f8 $78
    ret c                                         ; $6727: $d8

    ld a, b                                       ; $6728: $78
    ret z                                         ; $6729: $c8

    ld hl, sp-$68                                 ; $672a: $f8 $98
    ld hl, sp+$18                                 ; $672c: $f8 $18
    ld hl, sp+$08                                 ; $672e: $f8 $08
    ld hl, sp+$08                                 ; $6730: $f8 $08
    ld hl, sp-$68                                 ; $6732: $f8 $98
    ld a, b                                       ; $6734: $78
    add sp, $30                                   ; $6735: $e8 $30
    ldh a, [$f0]                                  ; $6737: $f0 $f0
    ldh a, [$e8]                                  ; $6739: $f0 $e8
    jr c, jr_023_6715                             ; $673b: $38 $d8

    ld hl, sp-$10                                 ; $673d: $f8 $f0
    ldh a, [$03]                                  ; $673f: $f0 $03
    inc bc                                        ; $6741: $03
    inc b                                         ; $6742: $04
    rlca                                          ; $6743: $07

jr_023_6744:
    ld a, [bc]                                    ; $6744: $0a
    rrca                                          ; $6745: $0f
    rrca                                          ; $6746: $0f
    dec c                                         ; $6747: $0d
    rra                                           ; $6748: $1f
    jr jr_023_678a                                ; $6749: $18 $3f

    ld a, [hl+]                                   ; $674b: $2a
    ccf                                           ; $674c: $3f
    ld [hl+], a                                   ; $674d: $22
    rra                                           ; $674e: $1f
    jr jr_023_6770                                ; $674f: $18 $1f

    jr @+$41                                      ; $6751: $18 $3f

    inc l                                         ; $6753: $2c
    dec sp                                        ; $6754: $3b
    ccf                                           ; $6755: $3f
    ld l, [hl]                                    ; $6756: $6e
    ld l, a                                       ; $6757: $6f
    ld l, a                                       ; $6758: $6f
    ld l, c                                       ; $6759: $69
    rra                                           ; $675a: $1f
    ld d, $09                                     ; $675b: $16 $09
    rrca                                          ; $675d: $0f
    rlca                                          ; $675e: $07
    rlca                                          ; $675f: $07
    ret nz                                        ; $6760: $c0

jr_023_6761:
    ret nz                                        ; $6761: $c0

    jr nz, jr_023_6744                            ; $6762: $20 $e0

    ret nc                                        ; $6764: $d0

    ldh a, [$f0]                                  ; $6765: $f0 $f0

jr_023_6767:
    jr nc, jr_023_6761                            ; $6767: $30 $f8

    jr jr_023_6767                                ; $6769: $18 $fc

    ld d, h                                       ; $676b: $54
    db $fc                                        ; $676c: $fc
    ld b, h                                       ; $676d: $44
    ld hl, sp+$18                                 ; $676e: $f8 $18

jr_023_6770:
    ldh a, [rNR10]                                ; $6770: $f0 $10
    add sp, $38                                   ; $6772: $e8 $38
    call c, Call_000_3cf4                         ; $6774: $dc $f4 $3c
    db $f4                                        ; $6777: $f4
    ld hl, sp-$28                                 ; $6778: $f8 $d8
    ldh a, [$f0]                                  ; $677a: $f0 $f0
    ldh [$e0], a                                  ; $677c: $e0 $e0
    nop                                           ; $677e: $00
    nop                                           ; $677f: $00
    rlca                                          ; $6780: $07
    rlca                                          ; $6781: $07
    ld [$1c0f], sp                                ; $6782: $08 $0f $1c
    rra                                           ; $6785: $1f
    ld e, $13                                     ; $6786: $1e $13
    ld e, $13                                     ; $6788: $1e $13

jr_023_678a:
    rra                                           ; $678a: $1f
    add hl, de                                    ; $678b: $19
    rra                                           ; $678c: $1f
    jr jr_023_67ae                                ; $678d: $18 $1f

    db $10                                        ; $678f: $10
    rra                                           ; $6790: $1f
    ld de, $0b0e                                  ; $6791: $11 $0e $0b
    rrca                                          ; $6794: $0f
    dec c                                         ; $6795: $0d
    ld e, $13                                     ; $6796: $1e $13
    rrca                                          ; $6798: $0f
    rrca                                          ; $6799: $0f
    rra                                           ; $679a: $1f
    ld a, [de]                                    ; $679b: $1a
    rla                                           ; $679c: $17
    rra                                           ; $679d: $1f
    ld c, $0e                                     ; $679e: $0e $0e
    ret nz                                        ; $67a0: $c0

    ret nz                                        ; $67a1: $c0

    jr nz, @-$1e                                  ; $67a2: $20 $e0

    db $10                                        ; $67a4: $10
    ldh a, [rNR10]                                ; $67a5: $f0 $10
    ldh a, [$90]                                  ; $67a7: $f0 $90
    ldh a, [$d0]                                  ; $67a9: $f0 $d0
    ld [hl], b                                    ; $67ab: $70
    ret nc                                        ; $67ac: $d0

    ld [hl], b                                    ; $67ad: $70

jr_023_67ae:
    and b                                         ; $67ae: $a0
    ldh [$e0], a                                  ; $67af: $e0 $e0
    ldh [$60], a                                  ; $67b1: $e0 $60
    ldh [$30], a                                  ; $67b3: $e0 $30
    ldh a, [$30]                                  ; $67b5: $f0 $30
    ldh a, [$e0]                                  ; $67b7: $f0 $e0
    ldh [$d0], a                                  ; $67b9: $e0 $d0
    ld [hl], b                                    ; $67bb: $70
    or b                                          ; $67bc: $b0
    ldh a, [$e0]                                  ; $67bd: $f0 $e0
    ldh [$03], a                                  ; $67bf: $e0 $03
    inc bc                                        ; $67c1: $03
    inc b                                         ; $67c2: $04
    rlca                                          ; $67c3: $07

jr_023_67c4:
    ld [$080f], sp                                ; $67c4: $08 $0f $08
    rrca                                          ; $67c7: $0f
    jr jr_023_67e9                                ; $67c8: $18 $1f

    jr c, @+$31                                   ; $67ca: $38 $2f

    jr c, @+$31                                   ; $67cc: $38 $2f

    inc e                                         ; $67ce: $1c
    rla                                           ; $67cf: $17
    inc e                                         ; $67d0: $1c
    rra                                           ; $67d1: $1f
    dec sp                                        ; $67d2: $3b
    cpl                                           ; $67d3: $2f
    jr c, jr_023_6815                             ; $67d4: $38 $3f

    rrca                                          ; $67d6: $0f
    rrca                                          ; $67d7: $0f

jr_023_67d8:
    rrca                                          ; $67d8: $0f
    add hl, bc                                    ; $67d9: $09
    rra                                           ; $67da: $1f
    ld d, $09                                     ; $67db: $16 $09
    rrca                                          ; $67dd: $0f
    rlca                                          ; $67de: $07
    rlca                                          ; $67df: $07
    ret nz                                        ; $67e0: $c0

    ret nz                                        ; $67e1: $c0

jr_023_67e2:
    jr nz, jr_023_67c4                            ; $67e2: $20 $e0

    db $10                                        ; $67e4: $10
    ldh a, [rNR10]                                ; $67e5: $f0 $10
    ldh a, [rNR23]                                ; $67e7: $f0 $18

jr_023_67e9:
    ld hl, sp+$1c                                 ; $67e9: $f8 $1c
    db $f4                                        ; $67eb: $f4
    inc e                                         ; $67ec: $1c
    db $f4                                        ; $67ed: $f4
    jr c, jr_023_67d8                             ; $67ee: $38 $e8

    jr nc, jr_023_67e2                            ; $67f0: $30 $f0

    ret z                                         ; $67f2: $c8

    ld hl, sp+$1c                                 ; $67f3: $f8 $1c
    db $f4                                        ; $67f5: $f4
    db $fc                                        ; $67f6: $fc
    db $f4                                        ; $67f7: $f4
    cp $de                                        ; $67f8: $fe $de
    or $f6                                        ; $67fa: $f6 $f6
    ldh [$e0], a                                  ; $67fc: $e0 $e0
    nop                                           ; $67fe: $00
    nop                                           ; $67ff: $00
    inc bc                                        ; $6800: $03
    inc bc                                        ; $6801: $03
    inc b                                         ; $6802: $04
    rlca                                          ; $6803: $07
    ld [$080f], sp                                ; $6804: $08 $0f $08
    rrca                                          ; $6807: $0f
    add hl, bc                                    ; $6808: $09
    rrca                                          ; $6809: $0f
    dec bc                                        ; $680a: $0b
    ld c, $0b                                     ; $680b: $0e $0b
    ld c, $05                                     ; $680d: $0e $05
    rlca                                          ; $680f: $07
    rlca                                          ; $6810: $07
    rlca                                          ; $6811: $07
    ld b, $07                                     ; $6812: $06 $07
    inc c                                         ; $6814: $0c

jr_023_6815:
    rrca                                          ; $6815: $0f
    inc c                                         ; $6816: $0c
    rrca                                          ; $6817: $0f
    rlca                                          ; $6818: $07
    rlca                                          ; $6819: $07
    dec bc                                        ; $681a: $0b
    ld c, $0d                                     ; $681b: $0e $0d
    rrca                                          ; $681d: $0f
    rlca                                          ; $681e: $07
    rlca                                          ; $681f: $07
    ldh [$e0], a                                  ; $6820: $e0 $e0
    db $10                                        ; $6822: $10
    ldh a, [$28]                                  ; $6823: $f0 $28
    ld hl, sp+$78                                 ; $6825: $f8 $78
    ret c                                         ; $6827: $d8

    ld a, b                                       ; $6828: $78
    ret z                                         ; $6829: $c8

    ld hl, sp-$68                                 ; $682a: $f8 $98
    ld hl, sp+$18                                 ; $682c: $f8 $18
    ld hl, sp+$08                                 ; $682e: $f8 $08
    ei                                            ; $6830: $fb
    adc e                                         ; $6831: $8b
    ld [hl], e                                    ; $6832: $73
    db $d3                                        ; $6833: $d3
    db $f4                                        ; $6834: $f4
    or h                                          ; $6835: $b4
    ld a, b                                       ; $6836: $78
    ret z                                         ; $6837: $c8

    ldh a, [$f0]                                  ; $6838: $f0 $f0
    ld hl, sp+$58                                 ; $683a: $f8 $58
    add sp, -$08                                  ; $683c: $e8 $f8
    ld [hl], b                                    ; $683e: $70
    ld [hl], b                                    ; $683f: $70
    inc bc                                        ; $6840: $03
    inc bc                                        ; $6841: $03
    inc b                                         ; $6842: $04
    rlca                                          ; $6843: $07

jr_023_6844:
    ld a, [bc]                                    ; $6844: $0a
    rrca                                          ; $6845: $0f
    rrca                                          ; $6846: $0f
    dec c                                         ; $6847: $0d
    rra                                           ; $6848: $1f
    jr jr_023_688a                                ; $6849: $18 $3f

    ld a, [hl+]                                   ; $684b: $2a
    ccf                                           ; $684c: $3f
    ld [hl+], a                                   ; $684d: $22
    ccf                                           ; $684e: $3f
    jr c, jr_023_68c0                             ; $684f: $38 $6f

    ld l, b                                       ; $6851: $68
    ld [hl], a                                    ; $6852: $77
    ld a, h                                       ; $6853: $7c
    dec sp                                        ; $6854: $3b
    cpl                                           ; $6855: $2f
    inc a                                         ; $6856: $3c
    cpl                                           ; $6857: $2f
    rra                                           ; $6858: $1f
    dec de                                        ; $6859: $1b
    rrca                                          ; $685a: $0f
    rrca                                          ; $685b: $0f
    rlca                                          ; $685c: $07
    rlca                                          ; $685d: $07
    nop                                           ; $685e: $00
    nop                                           ; $685f: $00
    ret nz                                        ; $6860: $c0

jr_023_6861:
    ret nz                                        ; $6861: $c0

    jr nz, jr_023_6844                            ; $6862: $20 $e0

    ret nc                                        ; $6864: $d0

    ldh a, [$f0]                                  ; $6865: $f0 $f0

jr_023_6867:
    jr nc, jr_023_6861                            ; $6867: $30 $f8

    jr jr_023_6867                                ; $6869: $18 $fc

    ld d, h                                       ; $686b: $54
    db $fc                                        ; $686c: $fc
    ld b, h                                       ; $686d: $44
    ld hl, sp+$18                                 ; $686e: $f8 $18
    ld hl, sp+$18                                 ; $6870: $f8 $18
    db $fc                                        ; $6872: $fc
    inc [hl]                                      ; $6873: $34
    call c, Call_023_70fc                         ; $6874: $dc $fc $70
    ldh a, [$f0]                                  ; $6877: $f0 $f0
    sub b                                         ; $6879: $90
    ld hl, sp+$68                                 ; $687a: $f8 $68
    sub b                                         ; $687c: $90
    ldh a, [$e0]                                  ; $687d: $f0 $e0
    ldh [rTAC], a                                 ; $687f: $e0 $07
    rlca                                          ; $6881: $07
    ld [$1c0f], sp                                ; $6882: $08 $0f $1c
    rra                                           ; $6885: $1f
    ld e, $13                                     ; $6886: $1e $13
    ld e, $13                                     ; $6888: $1e $13

jr_023_688a:
    rra                                           ; $688a: $1f
    add hl, de                                    ; $688b: $19
    rra                                           ; $688c: $1f
    jr jr_023_68ae                                ; $688d: $18 $1f

    db $10                                        ; $688f: $10
    rst $18                                       ; $6890: $df
    ret nc                                        ; $6891: $d0

    rst $08                                       ; $6892: $cf
    ret                                           ; $6893: $c9


    ld a, $37                                     ; $6894: $3e $37
    inc e                                         ; $6896: $1c
    rra                                           ; $6897: $1f
    rrca                                          ; $6898: $0f
    rrca                                          ; $6899: $0f
    rla                                           ; $689a: $17
    inc e                                         ; $689b: $1c
    dec de                                        ; $689c: $1b
    ld e, $0f                                     ; $689d: $1e $0f
    rrca                                          ; $689f: $0f
    ret nz                                        ; $68a0: $c0

    ret nz                                        ; $68a1: $c0

    jr nz, @-$1e                                  ; $68a2: $20 $e0

    db $10                                        ; $68a4: $10
    ldh a, [rNR10]                                ; $68a5: $f0 $10
    ldh a, [$90]                                  ; $68a7: $f0 $90
    ldh a, [$d0]                                  ; $68a9: $f0 $d0
    ld [hl], b                                    ; $68ab: $70
    ret nc                                        ; $68ac: $d0

    ld [hl], b                                    ; $68ad: $70

jr_023_68ae:
    and b                                         ; $68ae: $a0
    ldh [$e0], a                                  ; $68af: $e0 $e0
    ldh [$a0], a                                  ; $68b1: $e0 $a0
    ldh [$f0], a                                  ; $68b3: $e0 $f0
    ret nc                                        ; $68b5: $d0

    ld [hl], b                                    ; $68b6: $70
    ret nc                                        ; $68b7: $d0

    ldh [$e0], a                                  ; $68b8: $e0 $e0
    ldh a, [rSVBK]                                ; $68ba: $f0 $70
    ret nc                                        ; $68bc: $d0

    ldh a, [$60]                                  ; $68bd: $f0 $60
    ld h, b                                       ; $68bf: $60

jr_023_68c0:
    inc bc                                        ; $68c0: $03
    inc bc                                        ; $68c1: $03
    inc b                                         ; $68c2: $04
    rlca                                          ; $68c3: $07

jr_023_68c4:
    ld [$080f], sp                                ; $68c4: $08 $0f $08
    rrca                                          ; $68c7: $0f
    jr jr_023_68e9                                ; $68c8: $18 $1f

    jr c, @+$31                                   ; $68ca: $38 $2f

    jr c, jr_023_68fd                             ; $68cc: $38 $2f

    inc e                                         ; $68ce: $1c
    rla                                           ; $68cf: $17
    inc c                                         ; $68d0: $0c
    rrca                                          ; $68d1: $0f
    inc de                                        ; $68d2: $13
    rra                                           ; $68d3: $1f
    jr c, jr_023_6905                             ; $68d4: $38 $2f

    ccf                                           ; $68d6: $3f
    cpl                                           ; $68d7: $2f
    rra                                           ; $68d8: $1f
    dec de                                        ; $68d9: $1b
    rrca                                          ; $68da: $0f
    rrca                                          ; $68db: $0f
    rlca                                          ; $68dc: $07
    rlca                                          ; $68dd: $07
    nop                                           ; $68de: $00
    nop                                           ; $68df: $00
    ret nz                                        ; $68e0: $c0

    ret nz                                        ; $68e1: $c0

    jr nz, jr_023_68c4                            ; $68e2: $20 $e0

    db $10                                        ; $68e4: $10
    ldh a, [rNR10]                                ; $68e5: $f0 $10
    ldh a, [rNR23]                                ; $68e7: $f0 $18

jr_023_68e9:
    ld hl, sp+$1c                                 ; $68e9: $f8 $1c
    db $f4                                        ; $68eb: $f4
    inc e                                         ; $68ec: $1c
    db $f4                                        ; $68ed: $f4
    ld a, $ee                                     ; $68ee: $3e $ee
    ld a, $fe                                     ; $68f0: $3e $fe
    call c, $1cf4                                 ; $68f2: $dc $f4 $1c
    db $fc                                        ; $68f5: $fc
    ldh a, [$f0]                                  ; $68f6: $f0 $f0
    ldh a, [$90]                                  ; $68f8: $f0 $90
    ld hl, sp+$68                                 ; $68fa: $f8 $68
    sub b                                         ; $68fc: $90

jr_023_68fd:
    ldh a, [$e0]                                  ; $68fd: $f0 $e0
    ldh [rSB], a                                  ; $68ff: $e0 $01
    ld bc, $0302                                  ; $6901: $01 $02 $03
    inc b                                         ; $6904: $04

jr_023_6905:
    rlca                                          ; $6905: $07
    ld [$080f], sp                                ; $6906: $08 $0f $08
    rrca                                          ; $6909: $0f
    add hl, bc                                    ; $690a: $09
    rrca                                          ; $690b: $0f
    dec bc                                        ; $690c: $0b
    ld c, $07                                     ; $690d: $0e $07
    ld b, $03                                     ; $690f: $06 $03
    inc bc                                        ; $6911: $03
    ld b, $07                                     ; $6912: $06 $07
    inc c                                         ; $6914: $0c
    rrca                                          ; $6915: $0f
    ld e, $17                                     ; $6916: $1e $17
    rra                                           ; $6918: $1f
    inc de                                        ; $6919: $13
    rrca                                          ; $691a: $0f
    add hl, bc                                    ; $691b: $09
    ld c, $0b                                     ; $691c: $0e $0b
    rlca                                          ; $691e: $07
    rlca                                          ; $691f: $07
    ldh [$e0], a                                  ; $6920: $e0 $e0
    db $10                                        ; $6922: $10
    ldh a, [$08]                                  ; $6923: $f0 $08
    ld hl, sp+$28                                 ; $6925: $f8 $28
    ld hl, sp+$78                                 ; $6927: $f8 $78
    ret c                                         ; $6929: $d8

    ld a, b                                       ; $692a: $78
    ret z                                         ; $692b: $c8

    ld hl, sp-$68                                 ; $692c: $f8 $98
    ld hl, sp+$18                                 ; $692e: $f8 $18
    ld hl, sp+$08                                 ; $6930: $f8 $08
    ldh a, [$90]                                  ; $6932: $f0 $90
    ld h, b                                       ; $6934: $60
    ldh [rLCDC], a                                ; $6935: $e0 $40
    ret nz                                        ; $6937: $c0

    ldh [$a0], a                                  ; $6938: $e0 $a0
    ld h, b                                       ; $693a: $60
    ld h, b                                       ; $693b: $60
    sub [hl]                                      ; $693c: $96
    sub [hl]                                      ; $693d: $96
    adc [hl]                                      ; $693e: $8e
    adc [hl]                                      ; $693f: $8e
    inc bc                                        ; $6940: $03
    inc bc                                        ; $6941: $03
    inc b                                         ; $6942: $04
    rlca                                          ; $6943: $07

jr_023_6944:
    ld [$090f], sp                                ; $6944: $08 $0f $09
    rrca                                          ; $6947: $0f
    rla                                           ; $6948: $17
    ld e, $0f                                     ; $6949: $1e $0f
    inc c                                         ; $694b: $0c
    rra                                           ; $694c: $1f
    dec d                                         ; $694d: $15
    rra                                           ; $694e: $1f
    ld de, $0c0f                                  ; $694f: $11 $0f $0c
    rrca                                          ; $6952: $0f
    ld c, $0b                                     ; $6953: $0e $0b
    rrca                                          ; $6955: $0f
    rlca                                          ; $6956: $07
    dec b                                         ; $6957: $05
    rlca                                          ; $6958: $07
    ld b, $07                                     ; $6959: $06 $07
    dec b                                         ; $695b: $05
    add hl, bc                                    ; $695c: $09
    rrca                                          ; $695d: $0f
    rrca                                          ; $695e: $0f
    rrca                                          ; $695f: $0f
    ret nz                                        ; $6960: $c0

    ret nz                                        ; $6961: $c0

    jr nz, jr_023_6944                            ; $6962: $20 $e0

    db $10                                        ; $6964: $10
    ldh a, [$50]                                  ; $6965: $f0 $50
    ldh a, [$f0]                                  ; $6967: $f0 $f0
    or b                                          ; $6969: $b0
    ldh a, [rNR10]                                ; $696a: $f0 $10
    ld hl, sp+$28                                 ; $696c: $f8 $28
    ld hl, sp+$28                                 ; $696e: $f8 $28
    ldh a, [rNR10]                                ; $6970: $f0 $10
    ldh a, [$30]                                  ; $6972: $f0 $30
    ret nc                                        ; $6974: $d0

    ldh a, [$f0]                                  ; $6975: $f0 $f0
    ret nc                                        ; $6977: $d0

    ldh [$a0], a                                  ; $6978: $e0 $a0
    ldh [$a0], a                                  ; $697a: $e0 $a0
    ret nc                                        ; $697c: $d0

    ldh a, [$f0]                                  ; $697d: $f0 $f0
    ldh a, [rTAC]                                 ; $697f: $f0 $07
    rlca                                          ; $6981: $07
    ld [$100f], sp                                ; $6982: $08 $0f $10
    rra                                           ; $6985: $1f

jr_023_6986:
    inc d                                         ; $6986: $14
    rra                                           ; $6987: $1f
    ld e, $1b                                     ; $6988: $1e $1b
    ld e, $13                                     ; $698a: $1e $13
    rra                                           ; $698c: $1f
    add hl, de                                    ; $698d: $19
    rra                                           ; $698e: $1f
    jr jr_023_69b0                                ; $698f: $18 $1f

    db $10                                        ; $6991: $10
    rrca                                          ; $6992: $0f
    add hl, bc                                    ; $6993: $09
    ld b, $07                                     ; $6994: $06 $07
    ld [bc], a                                    ; $6996: $02
    inc bc                                        ; $6997: $03
    rlca                                          ; $6998: $07
    dec b                                         ; $6999: $05
    ld b, $06                                     ; $699a: $06 $06
    ld l, c                                       ; $699c: $69
    ld l, c                                       ; $699d: $69
    ld [hl], c                                    ; $699e: $71
    ld [hl], c                                    ; $699f: $71
    add b                                         ; $69a0: $80
    add b                                         ; $69a1: $80
    ld b, b                                       ; $69a2: $40
    ret nz                                        ; $69a3: $c0

    jr nz, jr_023_6986                            ; $69a4: $20 $e0

    db $10                                        ; $69a6: $10
    ldh a, [rNR10]                                ; $69a7: $f0 $10
    ldh a, [$90]                                  ; $69a9: $f0 $90
    ldh a, [$d0]                                  ; $69ab: $f0 $d0
    ld [hl], b                                    ; $69ad: $70
    ldh [$60], a                                  ; $69ae: $e0 $60

jr_023_69b0:
    ret nz                                        ; $69b0: $c0

    ret nz                                        ; $69b1: $c0

    ld h, b                                       ; $69b2: $60
    ldh [$30], a                                  ; $69b3: $e0 $30
    ldh a, [$78]                                  ; $69b5: $f0 $78
    add sp, -$08                                  ; $69b7: $e8 $f8
    ret z                                         ; $69b9: $c8

    ldh a, [$90]                                  ; $69ba: $f0 $90
    ld [hl], b                                    ; $69bc: $70
    ret nc                                        ; $69bd: $d0

    ldh [$e0], a                                  ; $69be: $e0 $e0
    inc bc                                        ; $69c0: $03
    inc bc                                        ; $69c1: $03
    inc c                                         ; $69c2: $0c
    rrca                                          ; $69c3: $0f
    ld [$100f], sp                                ; $69c4: $08 $0f $10
    rra                                           ; $69c7: $1f
    db $10                                        ; $69c8: $10
    rra                                           ; $69c9: $1f
    jr c, jr_023_69fb                             ; $69ca: $38 $2f

    jr c, jr_023_69fd                             ; $69cc: $38 $2f

    inc e                                         ; $69ce: $1c
    rla                                           ; $69cf: $17
    dec bc                                        ; $69d0: $0b
    rrca                                          ; $69d1: $0f
    db $10                                        ; $69d2: $10
    rra                                           ; $69d3: $1f
    ld [$0f0f], sp                                ; $69d4: $08 $0f $0f
    rrca                                          ; $69d7: $0f
    rrca                                          ; $69d8: $0f
    add hl, bc                                    ; $69d9: $09
    rrca                                          ; $69da: $0f

jr_023_69db:
    dec bc                                        ; $69db: $0b
    inc de                                        ; $69dc: $13
    rra                                           ; $69dd: $1f
    rra                                           ; $69de: $1f
    rra                                           ; $69df: $1f
    add b                                         ; $69e0: $80
    add b                                         ; $69e1: $80
    ld b, b                                       ; $69e2: $40
    ret nz                                        ; $69e3: $c0

    jr nz, @-$1e                                  ; $69e4: $20 $e0

    db $10                                        ; $69e6: $10
    ldh a, [rNR10]                                ; $69e7: $f0 $10
    ldh a, [rNR10]                                ; $69e9: $f0 $10
    ldh a, [rNR41]                                ; $69eb: $f0 $20
    ldh [$60], a                                  ; $69ed: $e0 $60
    ldh [$a0], a                                  ; $69ef: $e0 $a0
    ldh [rNR10], a                                ; $69f1: $e0 $10
    ldh a, [rNR41]                                ; $69f3: $f0 $20
    ldh [$e0], a                                  ; $69f5: $e0 $e0
    ldh [$e0], a                                  ; $69f7: $e0 $e0
    jr nz, jr_023_69db                            ; $69f9: $20 $e0

jr_023_69fb:
    and b                                         ; $69fb: $a0
    sub b                                         ; $69fc: $90

jr_023_69fd:
    ldh a, [$f0]                                  ; $69fd: $f0 $f0
    ldh a, [rSB]                                  ; $69ff: $f0 $01
    ld bc, $0302                                  ; $6a01: $01 $02 $03
    inc b                                         ; $6a04: $04
    rlca                                          ; $6a05: $07
    ld [$080f], sp                                ; $6a06: $08 $0f $08
    rrca                                          ; $6a09: $0f
    add hl, bc                                    ; $6a0a: $09
    rrca                                          ; $6a0b: $0f
    dec bc                                        ; $6a0c: $0b
    ld c, $07                                     ; $6a0d: $0e $07
    ld b, $03                                     ; $6a0f: $06 $03
    inc bc                                        ; $6a11: $03
    inc b                                         ; $6a12: $04
    rlca                                          ; $6a13: $07
    ld c, $0f                                     ; $6a14: $0e $0f
    rra                                           ; $6a16: $1f
    dec e                                         ; $6a17: $1d
    rra                                           ; $6a18: $1f
    rra                                           ; $6a19: $1f
    rrca                                          ; $6a1a: $0f
    add hl, bc                                    ; $6a1b: $09
    ld c, $0b                                     ; $6a1c: $0e $0b
    rlca                                          ; $6a1e: $07
    rlca                                          ; $6a1f: $07
    ldh [$e0], a                                  ; $6a20: $e0 $e0
    db $10                                        ; $6a22: $10
    ldh a, [$08]                                  ; $6a23: $f0 $08
    ld hl, sp+$28                                 ; $6a25: $f8 $28
    ld hl, sp+$78                                 ; $6a27: $f8 $78
    ret c                                         ; $6a29: $d8

    ld a, b                                       ; $6a2a: $78
    ret z                                         ; $6a2b: $c8

    ld hl, sp-$68                                 ; $6a2c: $f8 $98
    ld hl, sp+$18                                 ; $6a2e: $f8 $18
    ld hl, sp+$08                                 ; $6a30: $f8 $08
    ldh a, [$90]                                  ; $6a32: $f0 $90
    ld h, b                                       ; $6a34: $60
    ldh [rLCDC], a                                ; $6a35: $e0 $40
    ret nz                                        ; $6a37: $c0

    add b                                         ; $6a38: $80
    add b                                         ; $6a39: $80
    nop                                           ; $6a3a: $00
    nop                                           ; $6a3b: $00
    add b                                         ; $6a3c: $80
    add b                                         ; $6a3d: $80
    add b                                         ; $6a3e: $80
    add b                                         ; $6a3f: $80
    inc bc                                        ; $6a40: $03
    inc bc                                        ; $6a41: $03
    inc b                                         ; $6a42: $04
    rlca                                          ; $6a43: $07

jr_023_6a44:
    ld [$090f], sp                                ; $6a44: $08 $0f $09
    rrca                                          ; $6a47: $0f
    rla                                           ; $6a48: $17
    ld e, $0f                                     ; $6a49: $1e $0f
    inc c                                         ; $6a4b: $0c
    rra                                           ; $6a4c: $1f
    dec d                                         ; $6a4d: $15
    rra                                           ; $6a4e: $1f
    ld de, $0c0f                                  ; $6a4f: $11 $0f $0c
    dec bc                                        ; $6a52: $0b
    ld c, $0f                                     ; $6a53: $0e $0f
    dec bc                                        ; $6a55: $0b
    rra                                           ; $6a56: $1f
    inc e                                         ; $6a57: $1c
    rra                                           ; $6a58: $1f
    rra                                           ; $6a59: $1f
    rlca                                          ; $6a5a: $07
    dec b                                         ; $6a5b: $05
    add hl, bc                                    ; $6a5c: $09
    rrca                                          ; $6a5d: $0f
    ld c, $0e                                     ; $6a5e: $0e $0e
    ret nz                                        ; $6a60: $c0

    ret nz                                        ; $6a61: $c0

    jr nz, jr_023_6a44                            ; $6a62: $20 $e0

    db $10                                        ; $6a64: $10
    ldh a, [$50]                                  ; $6a65: $f0 $50
    ldh a, [$f0]                                  ; $6a67: $f0 $f0
    or b                                          ; $6a69: $b0
    ldh a, [rNR10]                                ; $6a6a: $f0 $10
    ld hl, sp+$28                                 ; $6a6c: $f8 $28
    ld hl, sp+$28                                 ; $6a6e: $f8 $28
    ldh a, [rNR10]                                ; $6a70: $f0 $10
    ldh a, [$30]                                  ; $6a72: $f0 $30
    ret nc                                        ; $6a74: $d0

    ldh a, [$a0]                                  ; $6a75: $f0 $a0
    ldh [$e0], a                                  ; $6a77: $e0 $e0
    ldh [$e0], a                                  ; $6a79: $e0 $e0
    and b                                         ; $6a7b: $a0
    sub b                                         ; $6a7c: $90
    ldh a, [$f0]                                  ; $6a7d: $f0 $f0
    ldh a, [rTAC]                                 ; $6a7f: $f0 $07
    rlca                                          ; $6a81: $07
    ld [$100f], sp                                ; $6a82: $08 $0f $10
    rra                                           ; $6a85: $1f

jr_023_6a86:
    inc d                                         ; $6a86: $14
    rra                                           ; $6a87: $1f
    ld e, $1b                                     ; $6a88: $1e $1b
    ld e, $13                                     ; $6a8a: $1e $13
    rra                                           ; $6a8c: $1f
    add hl, de                                    ; $6a8d: $19
    rra                                           ; $6a8e: $1f
    jr jr_023_6ab0                                ; $6a8f: $18 $1f

    db $10                                        ; $6a91: $10
    rrca                                          ; $6a92: $0f
    add hl, bc                                    ; $6a93: $09
    ld b, $07                                     ; $6a94: $06 $07
    ld [bc], a                                    ; $6a96: $02
    inc bc                                        ; $6a97: $03
    ld bc, $0001                                  ; $6a98: $01 $01 $00
    nop                                           ; $6a9b: $00
    ld bc, $0101                                  ; $6a9c: $01 $01 $01
    ld bc, $8080                                  ; $6a9f: $01 $80 $80
    ld b, b                                       ; $6aa2: $40
    ret nz                                        ; $6aa3: $c0

    jr nz, jr_023_6a86                            ; $6aa4: $20 $e0

    db $10                                        ; $6aa6: $10
    ldh a, [rNR10]                                ; $6aa7: $f0 $10
    ldh a, [$90]                                  ; $6aa9: $f0 $90
    ldh a, [$d0]                                  ; $6aab: $f0 $d0
    ld [hl], b                                    ; $6aad: $70
    ldh [$60], a                                  ; $6aae: $e0 $60

jr_023_6ab0:
    ret nz                                        ; $6ab0: $c0

    ret nz                                        ; $6ab1: $c0

    ldh [$e0], a                                  ; $6ab2: $e0 $e0
    ldh a, [$f0]                                  ; $6ab4: $f0 $f0
    ld a, b                                       ; $6ab6: $78
    add sp, -$08                                  ; $6ab7: $e8 $f8
    ret z                                         ; $6ab9: $c8

    ldh a, [$90]                                  ; $6aba: $f0 $90
    ld [hl], b                                    ; $6abc: $70
    ret nc                                        ; $6abd: $d0

    ldh [$e0], a                                  ; $6abe: $e0 $e0
    inc bc                                        ; $6ac0: $03
    inc bc                                        ; $6ac1: $03
    inc c                                         ; $6ac2: $0c
    rrca                                          ; $6ac3: $0f
    ld [$100f], sp                                ; $6ac4: $08 $0f $10
    rra                                           ; $6ac7: $1f
    db $10                                        ; $6ac8: $10
    rra                                           ; $6ac9: $1f
    jr c, @+$31                                   ; $6aca: $38 $2f

    jr c, jr_023_6afd                             ; $6acc: $38 $2f

    inc e                                         ; $6ace: $1c
    rla                                           ; $6acf: $17
    dec bc                                        ; $6ad0: $0b
    rrca                                          ; $6ad1: $0f
    ld [$040f], sp                                ; $6ad2: $08 $0f $04
    rlca                                          ; $6ad5: $07
    rlca                                          ; $6ad6: $07
    rlca                                          ; $6ad7: $07
    rrca                                          ; $6ad8: $0f
    add hl, bc                                    ; $6ad9: $09
    rrca                                          ; $6ada: $0f
    dec bc                                        ; $6adb: $0b
    ld [de], a                                    ; $6adc: $12
    ld e, $1e                                     ; $6add: $1e $1e
    ld e, $80                                     ; $6adf: $1e $80
    add b                                         ; $6ae1: $80
    ld b, b                                       ; $6ae2: $40
    ret nz                                        ; $6ae3: $c0

    jr nz, @-$1e                                  ; $6ae4: $20 $e0

    db $10                                        ; $6ae6: $10
    ldh a, [rNR10]                                ; $6ae7: $f0 $10
    ldh a, [rNR10]                                ; $6ae9: $f0 $10
    ldh a, [rNR41]                                ; $6aeb: $f0 $20
    ldh [$60], a                                  ; $6aed: $e0 $60
    ldh [$a0], a                                  ; $6aef: $e0 $a0
    ldh [rNR10], a                                ; $6af1: $e0 $10
    ldh a, [$38]                                  ; $6af3: $f0 $38
    add sp, -$04                                  ; $6af5: $e8 $fc
    db $fc                                        ; $6af7: $fc
    db $ec                                        ; $6af8: $ec
    ld l, h                                       ; $6af9: $6c
    ldh [$a0], a                                  ; $6afa: $e0 $a0
    sub b                                         ; $6afc: $90

jr_023_6afd:
    ldh a, [$f0]                                  ; $6afd: $f0 $f0
    ldh a, [rSB]                                  ; $6aff: $f0 $01
    ld bc, $0302                                  ; $6b01: $01 $02 $03
    inc b                                         ; $6b04: $04
    rlca                                          ; $6b05: $07
    ld [$c80f], sp                                ; $6b06: $08 $0f $c8
    rst $08                                       ; $6b09: $cf
    ret                                           ; $6b0a: $c9


    rst $08                                       ; $6b0b: $cf
    ld c, e                                       ; $6b0c: $4b
    ld c, [hl]                                    ; $6b0d: $4e
    daa                                           ; $6b0e: $27
    ld h, $1b                                     ; $6b0f: $26 $1b
    dec de                                        ; $6b11: $1b
    dec e                                         ; $6b12: $1d
    rla                                           ; $6b13: $17
    add hl, bc                                    ; $6b14: $09
    rrca                                          ; $6b15: $0f
    ld e, $17                                     ; $6b16: $1e $17
    rra                                           ; $6b18: $1f
    inc de                                        ; $6b19: $13
    rrca                                          ; $6b1a: $0f
    add hl, bc                                    ; $6b1b: $09
    ld c, $0b                                     ; $6b1c: $0e $0b
    rlca                                          ; $6b1e: $07
    rlca                                          ; $6b1f: $07
    ldh [$e0], a                                  ; $6b20: $e0 $e0
    db $10                                        ; $6b22: $10
    ldh a, [$08]                                  ; $6b23: $f0 $08
    ld hl, sp+$28                                 ; $6b25: $f8 $28
    ld hl, sp+$78                                 ; $6b27: $f8 $78
    ret c                                         ; $6b29: $d8

    ld a, b                                       ; $6b2a: $78
    ret z                                         ; $6b2b: $c8

    ld hl, sp-$68                                 ; $6b2c: $f8 $98
    ld hl, sp+$18                                 ; $6b2e: $f8 $18
    ld hl, sp+$08                                 ; $6b30: $f8 $08
    ldh a, [$90]                                  ; $6b32: $f0 $90
    ld h, b                                       ; $6b34: $60
    ldh [$c0], a                                  ; $6b35: $e0 $c0
    ret nz                                        ; $6b37: $c0

    add b                                         ; $6b38: $80
    add b                                         ; $6b39: $80
    nop                                           ; $6b3a: $00
    nop                                           ; $6b3b: $00
    add b                                         ; $6b3c: $80
    add b                                         ; $6b3d: $80
    add b                                         ; $6b3e: $80
    add b                                         ; $6b3f: $80
    inc bc                                        ; $6b40: $03
    inc bc                                        ; $6b41: $03
    inc b                                         ; $6b42: $04
    rlca                                          ; $6b43: $07

jr_023_6b44:
    ld [$090f], sp                                ; $6b44: $08 $0f $09
    rrca                                          ; $6b47: $0f
    rla                                           ; $6b48: $17
    ld e, $cf                                     ; $6b49: $1e $cf
    call z, $d5df                                 ; $6b4b: $cc $df $d5
    ld e, a                                       ; $6b4e: $5f
    ld d, c                                       ; $6b4f: $51
    cpl                                           ; $6b50: $2f
    inc l                                         ; $6b51: $2c
    rra                                           ; $6b52: $1f
    ld d, $0f                                     ; $6b53: $16 $0f
    add hl, bc                                    ; $6b55: $09
    rrca                                          ; $6b56: $0f
    rrca                                          ; $6b57: $0f
    rlca                                          ; $6b58: $07
    rlca                                          ; $6b59: $07
    rlca                                          ; $6b5a: $07
    dec b                                         ; $6b5b: $05
    add hl, bc                                    ; $6b5c: $09
    rrca                                          ; $6b5d: $0f
    ld c, $0e                                     ; $6b5e: $0e $0e
    ret nz                                        ; $6b60: $c0

    ret nz                                        ; $6b61: $c0

    jr nz, jr_023_6b44                            ; $6b62: $20 $e0

    db $10                                        ; $6b64: $10
    ldh a, [$50]                                  ; $6b65: $f0 $50
    ldh a, [$f0]                                  ; $6b67: $f0 $f0
    or b                                          ; $6b69: $b0
    ldh a, [rNR10]                                ; $6b6a: $f0 $10
    ld hl, sp+$28                                 ; $6b6c: $f8 $28
    ld hl, sp+$28                                 ; $6b6e: $f8 $28
    ldh a, [rNR10]                                ; $6b70: $f0 $10
    ldh a, [$30]                                  ; $6b72: $f0 $30
    ret nc                                        ; $6b74: $d0

    ldh a, [$e0]                                  ; $6b75: $f0 $e0
    ldh [$e0], a                                  ; $6b77: $e0 $e0
    ldh [$e0], a                                  ; $6b79: $e0 $e0
    and b                                         ; $6b7b: $a0
    sub b                                         ; $6b7c: $90
    ldh a, [$f0]                                  ; $6b7d: $f0 $f0
    ldh a, [rTAC]                                 ; $6b7f: $f0 $07
    rlca                                          ; $6b81: $07
    ld [$100f], sp                                ; $6b82: $08 $0f $10
    rra                                           ; $6b85: $1f

jr_023_6b86:
    inc d                                         ; $6b86: $14
    rra                                           ; $6b87: $1f
    ld e, $1b                                     ; $6b88: $1e $1b
    ld e, $13                                     ; $6b8a: $1e $13
    rra                                           ; $6b8c: $1f
    add hl, de                                    ; $6b8d: $19
    rra                                           ; $6b8e: $1f
    jr jr_023_6bb0                                ; $6b8f: $18 $1f

    db $10                                        ; $6b91: $10
    rrca                                          ; $6b92: $0f
    add hl, bc                                    ; $6b93: $09
    dec b                                         ; $6b94: $05
    rlca                                          ; $6b95: $07
    ld [bc], a                                    ; $6b96: $02
    inc bc                                        ; $6b97: $03
    ld bc, $0001                                  ; $6b98: $01 $01 $00
    nop                                           ; $6b9b: $00
    ld bc, $0101                                  ; $6b9c: $01 $01 $01
    ld bc, $8080                                  ; $6b9f: $01 $80 $80
    ld b, b                                       ; $6ba2: $40
    ret nz                                        ; $6ba3: $c0

    jr nz, jr_023_6b86                            ; $6ba4: $20 $e0

    inc de                                        ; $6ba6: $13
    di                                            ; $6ba7: $f3
    inc de                                        ; $6ba8: $13
    di                                            ; $6ba9: $f3
    sub d                                         ; $6baa: $92
    ld a, [c]                                     ; $6bab: $f2
    call nc, $e874                                ; $6bac: $d4 $74 $e8
    ld l, b                                       ; $6baf: $68

jr_023_6bb0:
    ret nc                                        ; $6bb0: $d0

    ret nc                                        ; $6bb1: $d0

    ldh [$e0], a                                  ; $6bb2: $e0 $e0
    ldh a, [$f0]                                  ; $6bb4: $f0 $f0
    ld hl, sp-$18                                 ; $6bb6: $f8 $e8
    ld hl, sp-$38                                 ; $6bb8: $f8 $c8
    ldh a, [$90]                                  ; $6bba: $f0 $90
    ld [hl], b                                    ; $6bbc: $70
    ret nc                                        ; $6bbd: $d0

    ldh [$e0], a                                  ; $6bbe: $e0 $e0
    inc bc                                        ; $6bc0: $03
    inc bc                                        ; $6bc1: $03
    inc c                                         ; $6bc2: $0c
    rrca                                          ; $6bc3: $0f
    ld [$100f], sp                                ; $6bc4: $08 $0f $10
    rra                                           ; $6bc7: $1f
    db $10                                        ; $6bc8: $10
    rra                                           ; $6bc9: $1f
    jr c, @+$31                                   ; $6bca: $38 $2f

    jr c, jr_023_6bfd                             ; $6bcc: $38 $2f

    inc e                                         ; $6bce: $1c
    rla                                           ; $6bcf: $17
    dec bc                                        ; $6bd0: $0b
    rrca                                          ; $6bd1: $0f
    ld [$040f], sp                                ; $6bd2: $08 $0f $04
    rlca                                          ; $6bd5: $07
    rlca                                          ; $6bd6: $07
    rlca                                          ; $6bd7: $07
    rrca                                          ; $6bd8: $0f
    add hl, bc                                    ; $6bd9: $09
    rrca                                          ; $6bda: $0f
    dec bc                                        ; $6bdb: $0b
    ld [de], a                                    ; $6bdc: $12
    ld e, $1e                                     ; $6bdd: $1e $1e
    ld e, $80                                     ; $6bdf: $1e $80
    add b                                         ; $6be1: $80
    ld b, b                                       ; $6be2: $40
    ret nz                                        ; $6be3: $c0

    jr nz, @-$1e                                  ; $6be4: $20 $e0

    inc de                                        ; $6be6: $13
    di                                            ; $6be7: $f3
    inc de                                        ; $6be8: $13
    di                                            ; $6be9: $f3
    inc de                                        ; $6bea: $13
    di                                            ; $6beb: $f3
    ld h, $e6                                     ; $6bec: $26 $e6
    ld l, h                                       ; $6bee: $6c
    db $ec                                        ; $6bef: $ec
    sbc h                                         ; $6bf0: $9c
    db $f4                                        ; $6bf1: $f4
    ld [$30f8], sp                                ; $6bf2: $08 $f8 $30
    ldh a, [$e0]                                  ; $6bf5: $f0 $e0
    ldh [$e0], a                                  ; $6bf7: $e0 $e0
    ld h, b                                       ; $6bf9: $60
    ldh [$a0], a                                  ; $6bfa: $e0 $a0
    sub b                                         ; $6bfc: $90

jr_023_6bfd:
    ldh a, [$f0]                                  ; $6bfd: $f0 $f0
    ldh a, [rSB]                                  ; $6bff: $f0 $01
    ld bc, $0706                                  ; $6c01: $01 $06 $07

jr_023_6c04:
    inc b                                         ; $6c04: $04
    rlca                                          ; $6c05: $07
    ret z                                         ; $6c06: $c8

    rst $08                                       ; $6c07: $cf
    ret z                                         ; $6c08: $c8

    rst $08                                       ; $6c09: $cf
    ld c, b                                       ; $6c0a: $48
    ld c, a                                       ; $6c0b: $4f
    inc h                                         ; $6c0c: $24
    daa                                           ; $6c0d: $27
    dec de                                        ; $6c0e: $1b
    rra                                           ; $6c0f: $1f
    db $10                                        ; $6c10: $10
    rra                                           ; $6c11: $1f
    ld [$070f], sp                                ; $6c12: $08 $0f $07
    rlca                                          ; $6c15: $07

jr_023_6c16:
    rrca                                          ; $6c16: $0f
    ld [$0507], sp                                ; $6c17: $08 $07 $05
    dec bc                                        ; $6c1a: $0b
    rrca                                          ; $6c1b: $0f
    add hl, bc                                    ; $6c1c: $09
    rrca                                          ; $6c1d: $0f

jr_023_6c1e:
    ld b, $06                                     ; $6c1e: $06 $06
    ret nz                                        ; $6c20: $c0

    ret nz                                        ; $6c21: $c0

    jr nz, jr_023_6c04                            ; $6c22: $20 $e0

    db $10                                        ; $6c24: $10
    ldh a, [$08]                                  ; $6c25: $f0 $08
    ld hl, sp+$08                                 ; $6c27: $f8 $08
    ld hl, sp+$08                                 ; $6c29: $f8 $08
    ld hl, sp+$10                                 ; $6c2b: $f8 $10
    ldh a, [$30]                                  ; $6c2d: $f0 $30
    ldh a, [$c0]                                  ; $6c2f: $f0 $c0
    ret nz                                        ; $6c31: $c0

    jr nz, @-$1e                                  ; $6c32: $20 $e0

    jr nz, jr_023_6c16                            ; $6c34: $20 $e0

    ret nz                                        ; $6c36: $c0

    ret nz                                        ; $6c37: $c0

    ret nz                                        ; $6c38: $c0

    ld b, b                                       ; $6c39: $40
    ldh [$a0], a                                  ; $6c3a: $e0 $a0
    jr nz, jr_023_6c1e                            ; $6c3c: $20 $e0

    ldh [$e0], a                                  ; $6c3e: $e0 $e0
    ld bc, $0601                                  ; $6c40: $01 $01 $06
    rlca                                          ; $6c43: $07
    inc b                                         ; $6c44: $04
    rlca                                          ; $6c45: $07
    ld l, b                                       ; $6c46: $68
    ld l, a                                       ; $6c47: $6f
    ld l, c                                       ; $6c48: $69
    ld l, a                                       ; $6c49: $6f
    dec hl                                        ; $6c4a: $2b
    ld l, $17                                     ; $6c4b: $2e $17
    ld d, $0f                                     ; $6c4d: $16 $0f
    rrca                                          ; $6c4f: $0f
    rrca                                          ; $6c50: $0f
    dec bc                                        ; $6c51: $0b
    dec b                                         ; $6c52: $05
    rlca                                          ; $6c53: $07
    ld [bc], a                                    ; $6c54: $02
    inc bc                                        ; $6c55: $03
    inc bc                                        ; $6c56: $03
    inc bc                                        ; $6c57: $03
    rlca                                          ; $6c58: $07
    ld b, $0f                                     ; $6c59: $06 $0f
    add hl, bc                                    ; $6c5b: $09
    ld c, $0b                                     ; $6c5c: $0e $0b
    rlca                                          ; $6c5e: $07
    rlca                                          ; $6c5f: $07
    ldh [$e0], a                                  ; $6c60: $e0 $e0
    db $10                                        ; $6c62: $10
    ldh a, [$28]                                  ; $6c63: $f0 $28
    ld hl, sp+$78                                 ; $6c65: $f8 $78
    ret c                                         ; $6c67: $d8

    ld a, b                                       ; $6c68: $78
    ret z                                         ; $6c69: $c8

    ld hl, sp-$68                                 ; $6c6a: $f8 $98
    ld hl, sp+$18                                 ; $6c6c: $f8 $18
    ld hl, sp+$08                                 ; $6c6e: $f8 $08
    ldh a, [$90]                                  ; $6c70: $f0 $90
    ld h, b                                       ; $6c72: $60
    ldh [rNR41], a                                ; $6c73: $e0 $20
    ldh [rLCDC], a                                ; $6c75: $e0 $40
    ret nz                                        ; $6c77: $c0

    ret nz                                        ; $6c78: $c0

    ret nz                                        ; $6c79: $c0

    ldh [$a0], a                                  ; $6c7a: $e0 $a0
    sub b                                         ; $6c7c: $90
    ldh a, [rSVBK]                                ; $6c7d: $f0 $70
    ld [hl], b                                    ; $6c7f: $70
    rlca                                          ; $6c80: $07
    rlca                                          ; $6c81: $07
    ld [$150f], sp                                ; $6c82: $08 $0f $15
    rra                                           ; $6c85: $1f
    rra                                           ; $6c86: $1f
    ld a, [de]                                    ; $6c87: $1a
    rra                                           ; $6c88: $1f
    db $10                                        ; $6c89: $10
    rra                                           ; $6c8a: $1f
    inc d                                         ; $6c8b: $14
    rra                                           ; $6c8c: $1f
    inc d                                         ; $6c8d: $14
    rra                                           ; $6c8e: $1f
    db $10                                        ; $6c8f: $10
    rrca                                          ; $6c90: $0f
    ld [$0707], sp                                ; $6c91: $08 $07 $07
    dec b                                         ; $6c94: $05
    rlca                                          ; $6c95: $07
    ld b, $07                                     ; $6c96: $06 $07
    inc bc                                        ; $6c98: $03
    inc bc                                        ; $6c99: $03
    inc bc                                        ; $6c9a: $03
    ld [bc], a                                    ; $6c9b: $02
    ld [bc], a                                    ; $6c9c: $02
    inc bc                                        ; $6c9d: $03
    inc bc                                        ; $6c9e: $03
    inc bc                                        ; $6c9f: $03
    add b                                         ; $6ca0: $80
    add b                                         ; $6ca1: $80
    ld h, b                                       ; $6ca2: $60
    ldh [$a0], a                                  ; $6ca3: $e0 $a0
    ldh [$d6], a                                  ; $6ca5: $e0 $d6
    halt                                          ; $6ca7: $76
    or $36                                        ; $6ca8: $f6 $36
    or $96                                        ; $6caa: $f6 $96
    db $f4                                        ; $6cac: $f4
    sub h                                         ; $6cad: $94
    add sp, $28                                   ; $6cae: $e8 $28
    ldh a, [rSVBK]                                ; $6cb0: $f0 $70
    ldh a, [$d0]                                  ; $6cb2: $f0 $d0
    ldh [$a0], a                                  ; $6cb4: $e0 $a0
    ld h, b                                       ; $6cb6: $60
    ldh [$e0], a                                  ; $6cb7: $e0 $e0
    ldh [$c0], a                                  ; $6cb9: $e0 $c0
    ret nz                                        ; $6cbb: $c0

    ld b, b                                       ; $6cbc: $40
    ret nz                                        ; $6cbd: $c0

    ret nz                                        ; $6cbe: $c0

    ret nz                                        ; $6cbf: $c0

    rlca                                          ; $6cc0: $07
    rlca                                          ; $6cc1: $07
    ld [$100f], sp                                ; $6cc2: $08 $0f $10
    rra                                           ; $6cc5: $1f
    inc d                                         ; $6cc6: $14
    rra                                           ; $6cc7: $1f
    ld e, $1b                                     ; $6cc8: $1e $1b
    ld e, $13                                     ; $6cca: $1e $13
    rra                                           ; $6ccc: $1f
    add hl, de                                    ; $6ccd: $19
    rra                                           ; $6cce: $1f
    jr jr_023_6cf0                                ; $6ccf: $18 $1f

    db $10                                        ; $6cd1: $10
    rrca                                          ; $6cd2: $0f
    add hl, bc                                    ; $6cd3: $09
    ld b, $07                                     ; $6cd4: $06 $07
    inc b                                         ; $6cd6: $04
    rlca                                          ; $6cd7: $07
    rlca                                          ; $6cd8: $07
    dec b                                         ; $6cd9: $05
    rrca                                          ; $6cda: $0f
    add hl, bc                                    ; $6cdb: $09
    inc de                                        ; $6cdc: $13
    rra                                           ; $6cdd: $1f

jr_023_6cde:
    inc e                                         ; $6cde: $1c
    inc e                                         ; $6cdf: $1c
    add b                                         ; $6ce0: $80
    add b                                         ; $6ce1: $80
    ld h, b                                       ; $6ce2: $60
    ldh [rNR41], a                                ; $6ce3: $e0 $20
    ldh [rNR13], a                                ; $6ce5: $e0 $13
    di                                            ; $6ce7: $f3
    inc de                                        ; $6ce8: $13
    di                                            ; $6ce9: $f3
    sub e                                         ; $6cea: $93
    di                                            ; $6ceb: $f3

Call_023_6cec:
    jp nc, $f472                                  ; $6cec: $d2 $72 $f4

    ld [hl], h                                    ; $6cef: $74

jr_023_6cf0:
    cp b                                          ; $6cf0: $b8
    add sp, $10                                   ; $6cf1: $e8 $10
    ldh a, [$b0]                                  ; $6cf3: $f0 $b0
    ldh a, [$60]                                  ; $6cf5: $f0 $60
    ldh [$c0], a                                  ; $6cf7: $e0 $c0
    ret nz                                        ; $6cf9: $c0

    ret nz                                        ; $6cfa: $c0

    ld b, b                                       ; $6cfb: $40
    jr nz, jr_023_6cde                            ; $6cfc: $20 $e0

    ldh [$e0], a                                  ; $6cfe: $e0 $e0
    nop                                           ; $6d00: $00
    nop                                           ; $6d01: $00
    inc bc                                        ; $6d02: $03
    inc bc                                        ; $6d03: $03
    inc b                                         ; $6d04: $04
    rlca                                          ; $6d05: $07
    ld [$080f], sp                                ; $6d06: $08 $0f $08
    rrca                                          ; $6d09: $0f
    add hl, bc                                    ; $6d0a: $09
    rrca                                          ; $6d0b: $0f
    dec bc                                        ; $6d0c: $0b
    ld c, $0b                                     ; $6d0d: $0e $0b
    ld c, $05                                     ; $6d0f: $0e $05
    rlca                                          ; $6d11: $07
    rlca                                          ; $6d12: $07
    rlca                                          ; $6d13: $07
    rrca                                          ; $6d14: $0f

jr_023_6d15:
    dec bc                                        ; $6d15: $0b
    ld c, $0b                                     ; $6d16: $0e $0b
    rlca                                          ; $6d18: $07
    rlca                                          ; $6d19: $07
    rrca                                          ; $6d1a: $0f
    rrca                                          ; $6d1b: $0f
    dec bc                                        ; $6d1c: $0b
    rrca                                          ; $6d1d: $0f
    ld b, $06                                     ; $6d1e: $06 $06
    nop                                           ; $6d20: $00
    nop                                           ; $6d21: $00
    ldh [$e0], a                                  ; $6d22: $e0 $e0
    db $10                                        ; $6d24: $10
    ldh a, [$28]                                  ; $6d25: $f0 $28
    ld hl, sp+$78                                 ; $6d27: $f8 $78
    ret c                                         ; $6d29: $d8

    ld a, b                                       ; $6d2a: $78
    ret z                                         ; $6d2b: $c8

    ld hl, sp-$68                                 ; $6d2c: $f8 $98
    ld hl, sp+$18                                 ; $6d2e: $f8 $18
    ld hl, sp+$08                                 ; $6d30: $f8 $08
    ld hl, sp+$08                                 ; $6d32: $f8 $08
    ld a, b                                       ; $6d34: $78
    add sp, $30                                   ; $6d35: $e8 $30
    ldh a, [$f0]                                  ; $6d37: $f0 $f0
    ldh a, [$e8]                                  ; $6d39: $f0 $e8
    jr c, jr_023_6d15                             ; $6d3b: $38 $d8

    ld hl, sp-$10                                 ; $6d3d: $f8 $f0
    ldh a, [rP1]                                  ; $6d3f: $f0 $00
    nop                                           ; $6d41: $00
    inc bc                                        ; $6d42: $03
    inc bc                                        ; $6d43: $03
    inc b                                         ; $6d44: $04
    rlca                                          ; $6d45: $07

jr_023_6d46:
    ld a, [bc]                                    ; $6d46: $0a
    rrca                                          ; $6d47: $0f
    rrca                                          ; $6d48: $0f
    dec c                                         ; $6d49: $0d
    rra                                           ; $6d4a: $1f
    jr jr_023_6d8c                                ; $6d4b: $18 $3f

    ld a, [hl+]                                   ; $6d4d: $2a
    ccf                                           ; $6d4e: $3f
    ld [hl+], a                                   ; $6d4f: $22
    rra                                           ; $6d50: $1f
    jr jr_023_6d72                                ; $6d51: $18 $1f

    jr @+$3d                                      ; $6d53: $18 $3b

    ccf                                           ; $6d55: $3f
    ld l, [hl]                                    ; $6d56: $6e
    ld l, a                                       ; $6d57: $6f
    ld l, a                                       ; $6d58: $6f
    ld l, c                                       ; $6d59: $69
    rra                                           ; $6d5a: $1f
    ld d, $09                                     ; $6d5b: $16 $09
    rrca                                          ; $6d5d: $0f
    rlca                                          ; $6d5e: $07
    rlca                                          ; $6d5f: $07
    nop                                           ; $6d60: $00
    nop                                           ; $6d61: $00
    ret nz                                        ; $6d62: $c0

jr_023_6d63:
    ret nz                                        ; $6d63: $c0

    jr nz, jr_023_6d46                            ; $6d64: $20 $e0

    ret nc                                        ; $6d66: $d0

    ldh a, [$f0]                                  ; $6d67: $f0 $f0

jr_023_6d69:
    jr nc, jr_023_6d63                            ; $6d69: $30 $f8

    jr jr_023_6d69                                ; $6d6b: $18 $fc

    ld d, h                                       ; $6d6d: $54
    db $fc                                        ; $6d6e: $fc
    ld b, h                                       ; $6d6f: $44
    ld hl, sp+$18                                 ; $6d70: $f8 $18

jr_023_6d72:
    ldh a, [rNR10]                                ; $6d72: $f0 $10
    call c, Call_000_3cf4                         ; $6d74: $dc $f4 $3c
    db $f4                                        ; $6d77: $f4
    ld hl, sp-$28                                 ; $6d78: $f8 $d8
    ldh a, [$f0]                                  ; $6d7a: $f0 $f0
    ldh [$e0], a                                  ; $6d7c: $e0 $e0
    nop                                           ; $6d7e: $00
    nop                                           ; $6d7f: $00
    nop                                           ; $6d80: $00
    nop                                           ; $6d81: $00
    rlca                                          ; $6d82: $07
    rlca                                          ; $6d83: $07
    ld [$1c0f], sp                                ; $6d84: $08 $0f $1c
    rra                                           ; $6d87: $1f
    ld e, $13                                     ; $6d88: $1e $13
    ld e, $13                                     ; $6d8a: $1e $13

jr_023_6d8c:
    rra                                           ; $6d8c: $1f
    add hl, de                                    ; $6d8d: $19
    rra                                           ; $6d8e: $1f
    jr jr_023_6db0                                ; $6d8f: $18 $1f

    db $10                                        ; $6d91: $10
    rra                                           ; $6d92: $1f
    ld de, $0d0f                                  ; $6d93: $11 $0f $0d
    ld e, $13                                     ; $6d96: $1e $13
    rrca                                          ; $6d98: $0f
    rrca                                          ; $6d99: $0f
    rra                                           ; $6d9a: $1f
    ld a, [de]                                    ; $6d9b: $1a
    rla                                           ; $6d9c: $17
    rra                                           ; $6d9d: $1f
    ld c, $0e                                     ; $6d9e: $0e $0e
    nop                                           ; $6da0: $00
    nop                                           ; $6da1: $00
    ret nz                                        ; $6da2: $c0

    ret nz                                        ; $6da3: $c0

    jr nz, @-$1e                                  ; $6da4: $20 $e0

    db $10                                        ; $6da6: $10
    ldh a, [rNR10]                                ; $6da7: $f0 $10
    ldh a, [$90]                                  ; $6da9: $f0 $90
    ldh a, [$d0]                                  ; $6dab: $f0 $d0
    ld [hl], b                                    ; $6dad: $70
    ret nc                                        ; $6dae: $d0

    ld [hl], b                                    ; $6daf: $70

jr_023_6db0:
    and b                                         ; $6db0: $a0
    ldh [$e0], a                                  ; $6db1: $e0 $e0
    ldh [$30], a                                  ; $6db3: $e0 $30
    ldh a, [$30]                                  ; $6db5: $f0 $30
    ldh a, [$e0]                                  ; $6db7: $f0 $e0
    ldh [$d0], a                                  ; $6db9: $e0 $d0
    ld [hl], b                                    ; $6dbb: $70
    or b                                          ; $6dbc: $b0
    ldh a, [$e0]                                  ; $6dbd: $f0 $e0
    ldh [rP1], a                                  ; $6dbf: $e0 $00
    nop                                           ; $6dc1: $00
    inc bc                                        ; $6dc2: $03
    inc bc                                        ; $6dc3: $03
    inc b                                         ; $6dc4: $04
    rlca                                          ; $6dc5: $07

jr_023_6dc6:
    ld [$080f], sp                                ; $6dc6: $08 $0f $08
    rrca                                          ; $6dc9: $0f
    jr jr_023_6deb                                ; $6dca: $18 $1f

    jr c, @+$31                                   ; $6dcc: $38 $2f

    jr c, jr_023_6dff                             ; $6dce: $38 $2f

    inc e                                         ; $6dd0: $1c
    rla                                           ; $6dd1: $17
    inc e                                         ; $6dd2: $1c
    rra                                           ; $6dd3: $1f
    jr c, jr_023_6e15                             ; $6dd4: $38 $3f

    rrca                                          ; $6dd6: $0f
    rrca                                          ; $6dd7: $0f
    rrca                                          ; $6dd8: $0f
    add hl, bc                                    ; $6dd9: $09

jr_023_6dda:
    rra                                           ; $6dda: $1f
    ld d, $09                                     ; $6ddb: $16 $09
    rrca                                          ; $6ddd: $0f
    rlca                                          ; $6dde: $07
    rlca                                          ; $6ddf: $07
    nop                                           ; $6de0: $00
    nop                                           ; $6de1: $00
    ret nz                                        ; $6de2: $c0

    ret nz                                        ; $6de3: $c0

jr_023_6de4:
    jr nz, jr_023_6dc6                            ; $6de4: $20 $e0

    db $10                                        ; $6de6: $10
    ldh a, [rNR10]                                ; $6de7: $f0 $10
    ldh a, [rNR23]                                ; $6de9: $f0 $18

jr_023_6deb:
    ld hl, sp+$1c                                 ; $6deb: $f8 $1c
    db $f4                                        ; $6ded: $f4
    inc e                                         ; $6dee: $1c
    db $f4                                        ; $6def: $f4
    jr c, jr_023_6dda                             ; $6df0: $38 $e8

    jr nc, jr_023_6de4                            ; $6df2: $30 $f0

    inc e                                         ; $6df4: $1c
    db $f4                                        ; $6df5: $f4
    db $fc                                        ; $6df6: $fc
    db $f4                                        ; $6df7: $f4
    cp $de                                        ; $6df8: $fe $de
    or $f6                                        ; $6dfa: $f6 $f6
    ldh [$e0], a                                  ; $6dfc: $e0 $e0
    nop                                           ; $6dfe: $00

jr_023_6dff:
    nop                                           ; $6dff: $00
    ld bc, $0201                                  ; $6e00: $01 $01 $02
    inc bc                                        ; $6e03: $03
    inc b                                         ; $6e04: $04
    rlca                                          ; $6e05: $07
    inc b                                         ; $6e06: $04
    rlca                                          ; $6e07: $07
    inc b                                         ; $6e08: $04
    rlca                                          ; $6e09: $07
    dec b                                         ; $6e0a: $05
    rlca                                          ; $6e0b: $07
    dec b                                         ; $6e0c: $05
    rlca                                          ; $6e0d: $07
    ld [bc], a                                    ; $6e0e: $02
    inc bc                                        ; $6e0f: $03
    inc bc                                        ; $6e10: $03
    inc bc                                        ; $6e11: $03
    dec b                                         ; $6e12: $05
    rlca                                          ; $6e13: $07
    rrca                                          ; $6e14: $0f

jr_023_6e15:
    dec bc                                        ; $6e15: $0b
    ld c, $0b                                     ; $6e16: $0e $0b
    rlca                                          ; $6e18: $07
    rlca                                          ; $6e19: $07
    rrca                                          ; $6e1a: $0f
    rrca                                          ; $6e1b: $0f
    dec bc                                        ; $6e1c: $0b
    rrca                                          ; $6e1d: $0f
    ld b, $06                                     ; $6e1e: $06 $06
    ldh a, [$f0]                                  ; $6e20: $f0 $f0
    ld [$14f8], sp                                ; $6e22: $08 $f8 $14
    db $fc                                        ; $6e25: $fc
    inc a                                         ; $6e26: $3c
    db $ec                                        ; $6e27: $ec
    cp h                                          ; $6e28: $bc
    db $e4                                        ; $6e29: $e4
    db $fc                                        ; $6e2a: $fc
    ld c, h                                       ; $6e2b: $4c
    db $fc                                        ; $6e2c: $fc
    inc c                                         ; $6e2d: $0c
    db $fc                                        ; $6e2e: $fc
    add h                                         ; $6e2f: $84
    db $fc                                        ; $6e30: $fc
    add h                                         ; $6e31: $84
    ld hl, sp-$68                                 ; $6e32: $f8 $98
    ld a, b                                       ; $6e34: $78
    add sp, $30                                   ; $6e35: $e8 $30
    ldh a, [$f0]                                  ; $6e37: $f0 $f0
    ldh a, [$e8]                                  ; $6e39: $f0 $e8
    jr c, jr_023_6e15                             ; $6e3b: $38 $d8

    ld hl, sp-$10                                 ; $6e3d: $f8 $f0
    ldh a, [rSB]                                  ; $6e3f: $f0 $01
    ld bc, $0302                                  ; $6e41: $01 $02 $03
    dec b                                         ; $6e44: $05
    rlca                                          ; $6e45: $07
    rlca                                          ; $6e46: $07
    ld b, $0f                                     ; $6e47: $06 $0f
    inc c                                         ; $6e49: $0c
    rra                                           ; $6e4a: $1f
    dec d                                         ; $6e4b: $15
    rra                                           ; $6e4c: $1f
    ld de, $0c0f                                  ; $6e4d: $11 $0f $0c
    rrca                                          ; $6e50: $0f
    inc c                                         ; $6e51: $0c
    ccf                                           ; $6e52: $3f
    inc l                                         ; $6e53: $2c
    dec sp                                        ; $6e54: $3b
    ccf                                           ; $6e55: $3f
    ld l, [hl]                                    ; $6e56: $6e
    ld l, a                                       ; $6e57: $6f
    ld l, a                                       ; $6e58: $6f
    ld l, c                                       ; $6e59: $69
    rra                                           ; $6e5a: $1f
    ld d, $09                                     ; $6e5b: $16 $09
    rrca                                          ; $6e5d: $0f
    rlca                                          ; $6e5e: $07
    rlca                                          ; $6e5f: $07
    ldh [$e0], a                                  ; $6e60: $e0 $e0
    db $10                                        ; $6e62: $10
    ldh a, [rBCPS]                                ; $6e63: $f0 $68
    ld hl, sp-$08                                 ; $6e65: $f8 $f8
    sbc b                                         ; $6e67: $98
    db $fc                                        ; $6e68: $fc
    inc c                                         ; $6e69: $0c
    cp $2a                                        ; $6e6a: $fe $2a
    cp $22                                        ; $6e6c: $fe $22
    db $fc                                        ; $6e6e: $fc
    inc c                                         ; $6e6f: $0c
    ld hl, sp+$08                                 ; $6e70: $f8 $08
    add sp, $38                                   ; $6e72: $e8 $38
    call c, Call_000_3cf4                         ; $6e74: $dc $f4 $3c
    db $f4                                        ; $6e77: $f4
    ld hl, sp-$28                                 ; $6e78: $f8 $d8
    ldh a, [$f0]                                  ; $6e7a: $f0 $f0
    ldh [$e0], a                                  ; $6e7c: $e0 $e0
    nop                                           ; $6e7e: $00
    nop                                           ; $6e7f: $00
    inc bc                                        ; $6e80: $03
    inc bc                                        ; $6e81: $03
    inc b                                         ; $6e82: $04
    rlca                                          ; $6e83: $07
    ld c, $0f                                     ; $6e84: $0e $0f
    rrca                                          ; $6e86: $0f
    add hl, bc                                    ; $6e87: $09
    rrca                                          ; $6e88: $0f
    add hl, bc                                    ; $6e89: $09
    rrca                                          ; $6e8a: $0f
    inc c                                         ; $6e8b: $0c
    rrca                                          ; $6e8c: $0f
    inc c                                         ; $6e8d: $0c
    rrca                                          ; $6e8e: $0f
    ld [$080f], sp                                ; $6e8f: $08 $0f $08
    ld c, $0b                                     ; $6e92: $0e $0b
    rrca                                          ; $6e94: $0f
    dec c                                         ; $6e95: $0d
    ld e, $13                                     ; $6e96: $1e $13
    rrca                                          ; $6e98: $0f
    rrca                                          ; $6e99: $0f
    rra                                           ; $6e9a: $1f
    ld a, [de]                                    ; $6e9b: $1a
    rla                                           ; $6e9c: $17
    rra                                           ; $6e9d: $1f
    ld c, $0e                                     ; $6e9e: $0e $0e
    ldh [$e0], a                                  ; $6ea0: $e0 $e0
    db $10                                        ; $6ea2: $10
    ldh a, [$08]                                  ; $6ea3: $f0 $08
    ld hl, sp+$08                                 ; $6ea5: $f8 $08
    ld hl, sp+$48                                 ; $6ea7: $f8 $48
    ld hl, sp-$18                                 ; $6ea9: $f8 $e8
    cp b                                          ; $6eab: $b8
    add sp, $38                                   ; $6eac: $e8 $38
    ret nc                                        ; $6eae: $d0

    ld [hl], b                                    ; $6eaf: $70
    ldh a, [$f0]                                  ; $6eb0: $f0 $f0
    ld h, b                                       ; $6eb2: $60
    ldh [$30], a                                  ; $6eb3: $e0 $30
    ldh a, [$30]                                  ; $6eb5: $f0 $30
    ldh a, [$e0]                                  ; $6eb7: $f0 $e0
    ldh [$d0], a                                  ; $6eb9: $e0 $d0
    ld [hl], b                                    ; $6ebb: $70
    or b                                          ; $6ebc: $b0
    ldh a, [$e0]                                  ; $6ebd: $f0 $e0
    ldh [rSB], a                                  ; $6ebf: $e0 $01
    ld bc, $0302                                  ; $6ec1: $01 $02 $03
    inc b                                         ; $6ec4: $04
    rlca                                          ; $6ec5: $07
    inc b                                         ; $6ec6: $04
    rlca                                          ; $6ec7: $07
    inc c                                         ; $6ec8: $0c
    rrca                                          ; $6ec9: $0f
    inc e                                         ; $6eca: $1c
    rla                                           ; $6ecb: $17
    inc e                                         ; $6ecc: $1c
    rla                                           ; $6ecd: $17
    ld c, $0b                                     ; $6ece: $0e $0b
    ld c, $0f                                     ; $6ed0: $0e $0f
    dec sp                                        ; $6ed2: $3b
    cpl                                           ; $6ed3: $2f
    jr c, jr_023_6f15                             ; $6ed4: $38 $3f

    rrca                                          ; $6ed6: $0f
    rrca                                          ; $6ed7: $0f
    rrca                                          ; $6ed8: $0f
    add hl, bc                                    ; $6ed9: $09
    rra                                           ; $6eda: $1f
    ld d, $09                                     ; $6edb: $16 $09
    rrca                                          ; $6edd: $0f
    rlca                                          ; $6ede: $07
    rlca                                          ; $6edf: $07
    ldh [$e0], a                                  ; $6ee0: $e0 $e0
    db $10                                        ; $6ee2: $10
    ldh a, [$08]                                  ; $6ee3: $f0 $08
    ld hl, sp+$08                                 ; $6ee5: $f8 $08
    ld hl, sp+$0c                                 ; $6ee7: $f8 $0c
    db $fc                                        ; $6ee9: $fc

jr_023_6eea:
    ld c, $fa                                     ; $6eea: $0e $fa
    ld c, $fa                                     ; $6eec: $0e $fa
    inc e                                         ; $6eee: $1c
    db $f4                                        ; $6eef: $f4
    jr jr_023_6eea                                ; $6ef0: $18 $f8

    ret z                                         ; $6ef2: $c8

    ld hl, sp+$1c                                 ; $6ef3: $f8 $1c
    db $f4                                        ; $6ef5: $f4
    db $fc                                        ; $6ef6: $fc
    db $f4                                        ; $6ef7: $f4
    cp $de                                        ; $6ef8: $fe $de
    or $f6                                        ; $6efa: $f6 $f6
    ldh [$e0], a                                  ; $6efc: $e0 $e0
    nop                                           ; $6efe: $00
    nop                                           ; $6eff: $00
    rlca                                          ; $6f00: $07
    rlca                                          ; $6f01: $07
    ld [$100f], sp                                ; $6f02: $08 $0f $10
    rra                                           ; $6f05: $1f
    db $10                                        ; $6f06: $10
    rra                                           ; $6f07: $1f
    ld [de], a                                    ; $6f08: $12
    rra                                           ; $6f09: $1f
    rla                                           ; $6f0a: $17
    dec e                                         ; $6f0b: $1d
    rla                                           ; $6f0c: $17
    inc e                                         ; $6f0d: $1c
    dec bc                                        ; $6f0e: $0b
    ld c, $0f                                     ; $6f0f: $0e $0f
    ld c, $05                                     ; $6f11: $0e $05
    rlca                                          ; $6f13: $07
    rrca                                          ; $6f14: $0f

jr_023_6f15:
    dec bc                                        ; $6f15: $0b
    ld c, $0b                                     ; $6f16: $0e $0b
    rlca                                          ; $6f18: $07
    rlca                                          ; $6f19: $07
    rrca                                          ; $6f1a: $0f
    rrca                                          ; $6f1b: $0f
    dec bc                                        ; $6f1c: $0b
    rrca                                          ; $6f1d: $0f
    ld b, $06                                     ; $6f1e: $06 $06
    ret nz                                        ; $6f20: $c0

    ret nz                                        ; $6f21: $c0

    jr nz, @-$1e                                  ; $6f22: $20 $e0

    ld d, b                                       ; $6f24: $50
    ldh a, [$f0]                                  ; $6f25: $f0 $f0
    or b                                          ; $6f27: $b0
    ldh a, [$90]                                  ; $6f28: $f0 $90
    ldh a, [$30]                                  ; $6f2a: $f0 $30
    ldh a, [$30]                                  ; $6f2c: $f0 $30
    ldh a, [rNR10]                                ; $6f2e: $f0 $10
    ldh a, [rNR10]                                ; $6f30: $f0 $10
    ld hl, sp-$68                                 ; $6f32: $f8 $98
    ld a, b                                       ; $6f34: $78
    add sp, $30                                   ; $6f35: $e8 $30
    ldh a, [$f0]                                  ; $6f37: $f0 $f0
    ldh a, [$e8]                                  ; $6f39: $f0 $e8
    jr c, jr_023_6f15                             ; $6f3b: $38 $d8

    ld hl, sp-$10                                 ; $6f3d: $f8 $f0
    ldh a, [rTAC]                                 ; $6f3f: $f0 $07
    rlca                                          ; $6f41: $07
    ld [$150f], sp                                ; $6f42: $08 $0f $15
    rra                                           ; $6f45: $1f
    rra                                           ; $6f46: $1f
    ld a, [de]                                    ; $6f47: $1a
    ccf                                           ; $6f48: $3f
    jr nc, jr_023_6fca                            ; $6f49: $30 $7f

    ld d, h                                       ; $6f4b: $54
    ld a, a                                       ; $6f4c: $7f
    ld b, h                                       ; $6f4d: $44
    ccf                                           ; $6f4e: $3f
    jr nc, @+$41                                  ; $6f4f: $30 $3f

    jr nc, jr_023_6f92                            ; $6f51: $30 $3f

    inc l                                         ; $6f53: $2c
    dec sp                                        ; $6f54: $3b
    ccf                                           ; $6f55: $3f
    ld l, [hl]                                    ; $6f56: $6e
    ld l, a                                       ; $6f57: $6f
    ld l, a                                       ; $6f58: $6f
    ld l, c                                       ; $6f59: $69
    rra                                           ; $6f5a: $1f
    ld d, $09                                     ; $6f5b: $16 $09
    rrca                                          ; $6f5d: $0f
    rlca                                          ; $6f5e: $07
    rlca                                          ; $6f5f: $07
    add b                                         ; $6f60: $80
    add b                                         ; $6f61: $80
    ld b, b                                       ; $6f62: $40
    ret nz                                        ; $6f63: $c0

    and b                                         ; $6f64: $a0
    ldh [$e0], a                                  ; $6f65: $e0 $e0
    ld h, b                                       ; $6f67: $60
    ldh a, [$30]                                  ; $6f68: $f0 $30
    ld hl, sp-$58                                 ; $6f6a: $f8 $a8
    ld hl, sp-$78                                 ; $6f6c: $f8 $88
    ldh a, [$30]                                  ; $6f6e: $f0 $30
    ldh [rNR41], a                                ; $6f70: $e0 $20
    add sp, $38                                   ; $6f72: $e8 $38
    call c, Call_000_3cf4                         ; $6f74: $dc $f4 $3c
    db $f4                                        ; $6f77: $f4
    ld hl, sp-$28                                 ; $6f78: $f8 $d8
    ldh a, [$f0]                                  ; $6f7a: $f0 $f0
    ldh [$e0], a                                  ; $6f7c: $e0 $e0
    nop                                           ; $6f7e: $00
    nop                                           ; $6f7f: $00
    rrca                                          ; $6f80: $0f
    rrca                                          ; $6f81: $0f
    db $10                                        ; $6f82: $10
    rra                                           ; $6f83: $1f
    jr c, jr_023_6fc5                             ; $6f84: $38 $3f

jr_023_6f86:
    inc a                                         ; $6f86: $3c
    daa                                           ; $6f87: $27

jr_023_6f88:
    dec a                                         ; $6f88: $3d
    daa                                           ; $6f89: $27

jr_023_6f8a:
    ccf                                           ; $6f8a: $3f
    ld [hl-], a                                   ; $6f8b: $32
    ccf                                           ; $6f8c: $3f
    jr nc, jr_023_6fce                            ; $6f8d: $30 $3f

    ld hl, $233f                                  ; $6f8f: $21 $3f $23

jr_023_6f92:
    ld c, $0b                                     ; $6f92: $0e $0b
    rrca                                          ; $6f94: $0f
    dec c                                         ; $6f95: $0d
    ld e, $13                                     ; $6f96: $1e $13
    rrca                                          ; $6f98: $0f
    rrca                                          ; $6f99: $0f
    rra                                           ; $6f9a: $1f
    ld a, [de]                                    ; $6f9b: $1a
    rla                                           ; $6f9c: $17
    rra                                           ; $6f9d: $1f
    ld c, $0e                                     ; $6f9e: $0e $0e
    add b                                         ; $6fa0: $80
    add b                                         ; $6fa1: $80
    ld b, b                                       ; $6fa2: $40
    ret nz                                        ; $6fa3: $c0

    jr nz, jr_023_6f86                            ; $6fa4: $20 $e0

    jr nz, jr_023_6f88                            ; $6fa6: $20 $e0

    jr nz, jr_023_6f8a                            ; $6fa8: $20 $e0

    and b                                         ; $6faa: $a0
    ldh [$a0], a                                  ; $6fab: $e0 $a0
    ldh [rLCDC], a                                ; $6fad: $e0 $40
    ret nz                                        ; $6faf: $c0

    ret nz                                        ; $6fb0: $c0

    ret nz                                        ; $6fb1: $c0

    ld h, b                                       ; $6fb2: $60
    ldh [$30], a                                  ; $6fb3: $e0 $30
    ldh a, [$30]                                  ; $6fb5: $f0 $30
    ldh a, [$e0]                                  ; $6fb7: $f0 $e0
    ldh [$d0], a                                  ; $6fb9: $e0 $d0
    ld [hl], b                                    ; $6fbb: $70
    or b                                          ; $6fbc: $b0
    ldh a, [$e0]                                  ; $6fbd: $f0 $e0
    ldh [rTAC], a                                 ; $6fbf: $e0 $07
    rlca                                          ; $6fc1: $07
    ld [$100f], sp                                ; $6fc2: $08 $0f $10

jr_023_6fc5:
    rra                                           ; $6fc5: $1f

jr_023_6fc6:
    db $10                                        ; $6fc6: $10
    rra                                           ; $6fc7: $1f

jr_023_6fc8:
    jr nc, jr_023_7009                            ; $6fc8: $30 $3f

jr_023_6fca:
    ld [hl], b                                    ; $6fca: $70
    ld e, a                                       ; $6fcb: $5f
    ld [hl], b                                    ; $6fcc: $70
    ld e, a                                       ; $6fcd: $5f

jr_023_6fce:
    jr c, jr_023_6fff                             ; $6fce: $38 $2f

    jr c, jr_023_7011                             ; $6fd0: $38 $3f

    dec sp                                        ; $6fd2: $3b
    cpl                                           ; $6fd3: $2f

jr_023_6fd4:
    jr c, jr_023_7015                             ; $6fd4: $38 $3f

jr_023_6fd6:
    rrca                                          ; $6fd6: $0f
    rrca                                          ; $6fd7: $0f
    rrca                                          ; $6fd8: $0f
    add hl, bc                                    ; $6fd9: $09

jr_023_6fda:
    rra                                           ; $6fda: $1f
    ld d, $09                                     ; $6fdb: $16 $09
    rrca                                          ; $6fdd: $0f
    rlca                                          ; $6fde: $07
    rlca                                          ; $6fdf: $07
    add b                                         ; $6fe0: $80
    add b                                         ; $6fe1: $80
    ld b, b                                       ; $6fe2: $40
    ret nz                                        ; $6fe3: $c0

    jr nz, jr_023_6fc6                            ; $6fe4: $20 $e0

    jr nz, jr_023_6fc8                            ; $6fe6: $20 $e0

    jr nc, jr_023_6fda                            ; $6fe8: $30 $f0

    jr c, jr_023_6fd4                             ; $6fea: $38 $e8

    jr c, jr_023_6fd6                             ; $6fec: $38 $e8

    ld [hl], b                                    ; $6fee: $70
    ret nc                                        ; $6fef: $d0

    ld h, b                                       ; $6ff0: $60
    ldh [$c8], a                                  ; $6ff1: $e0 $c8
    ld hl, sp+$1c                                 ; $6ff3: $f8 $1c
    db $f4                                        ; $6ff5: $f4
    db $fc                                        ; $6ff6: $fc
    db $f4                                        ; $6ff7: $f4
    cp $de                                        ; $6ff8: $fe $de
    or $f6                                        ; $6ffa: $f6 $f6
    ldh [$e0], a                                  ; $6ffc: $e0 $e0
    nop                                           ; $6ffe: $00

jr_023_6fff:
    nop                                           ; $6fff: $00
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    inc bc                                        ; $7002: $03
    inc bc                                        ; $7003: $03
    nop                                           ; $7004: $00
    inc bc                                        ; $7005: $03

jr_023_7006:
    inc b                                         ; $7006: $04
    rlca                                          ; $7007: $07
    inc b                                         ; $7008: $04

jr_023_7009:
    rlca                                          ; $7009: $07
    dec b                                         ; $700a: $05
    rlca                                          ; $700b: $07
    rlca                                          ; $700c: $07
    ld b, $01                                     ; $700d: $06 $01
    inc bc                                        ; $700f: $03
    inc bc                                        ; $7010: $03

jr_023_7011:
    inc bc                                        ; $7011: $03
    ld bc, $0603                                  ; $7012: $01 $03 $06

jr_023_7015:
    rlca                                          ; $7015: $07

jr_023_7016:
    inc bc                                        ; $7016: $03
    inc bc                                        ; $7017: $03
    rlca                                          ; $7018: $07
    rlca                                          ; $7019: $07
    rlca                                          ; $701a: $07
    rlca                                          ; $701b: $07
    ld [bc], a                                    ; $701c: $02
    ld [bc], a                                    ; $701d: $02
    nop                                           ; $701e: $00
    nop                                           ; $701f: $00
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    ret nz                                        ; $7022: $c0

    ret nz                                        ; $7023: $c0

    jr nz, jr_023_7006                            ; $7024: $20 $e0

    db $10                                        ; $7026: $10
    ldh a, [rSVBK]                                ; $7027: $f0 $70
    ldh a, [rSVBK]                                ; $7029: $f0 $70

jr_023_702b:
    ret nc                                        ; $702b: $d0

    ldh a, [$30]                                  ; $702c: $f0 $30
    ldh a, [rNR10]                                ; $702e: $f0 $10
    ldh a, [rNR10]                                ; $7030: $f0 $10
    ldh a, [$b0]                                  ; $7032: $f0 $b0
    jr nz, jr_023_7016                            ; $7034: $20 $e0

    ldh [$e0], a                                  ; $7036: $e0 $e0
    ret nc                                        ; $7038: $d0

    jr nc, jr_023_702b                            ; $7039: $30 $f0

    ldh a, [$e0]                                  ; $703b: $f0 $e0
    ldh [rP1], a                                  ; $703d: $e0 $00
    nop                                           ; $703f: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    inc bc                                        ; $7042: $03
    inc bc                                        ; $7043: $03
    nop                                           ; $7044: $00
    inc bc                                        ; $7045: $03
    ld b, $07                                     ; $7046: $06 $07
    rlca                                          ; $7048: $07
    dec b                                         ; $7049: $05
    rrca                                          ; $704a: $0f
    inc c                                         ; $704b: $0c
    rra                                           ; $704c: $1f
    ld [de], a                                    ; $704d: $12
    rrca                                          ; $704e: $0f
    inc c                                         ; $704f: $0c
    rrca                                          ; $7050: $0f
    inc c                                         ; $7051: $0c
    rra                                           ; $7052: $1f
    inc d                                         ; $7053: $14
    ld [hl], $37                                  ; $7054: $36 $37
    scf                                           ; $7056: $37
    dec [hl]                                      ; $7057: $35
    rrca                                          ; $7058: $0f
    ld a, [bc]                                    ; $7059: $0a
    dec b                                         ; $705a: $05
    rlca                                          ; $705b: $07
    inc bc                                        ; $705c: $03
    inc bc                                        ; $705d: $03
    nop                                           ; $705e: $00
    nop                                           ; $705f: $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    ret nz                                        ; $7062: $c0

    ret nz                                        ; $7063: $c0

    nop                                           ; $7064: $00
    ret nz                                        ; $7065: $c0

    ldh [$e0], a                                  ; $7066: $e0 $e0
    ldh [rNR41], a                                ; $7068: $e0 $20
    ldh a, [$30]                                  ; $706a: $f0 $30
    ld hl, sp+$48                                 ; $706c: $f8 $48
    ldh a, [$30]                                  ; $706e: $f0 $30
    ldh [rNR41], a                                ; $7070: $e0 $20
    ret nc                                        ; $7072: $d0

    jr nc, jr_023_70ad                            ; $7073: $30 $38

    add sp, -$10                                  ; $7075: $e8 $f0
    ldh a, [$e0]                                  ; $7077: $f0 $e0
    ldh [$c0], a                                  ; $7079: $e0 $c0
    ret nz                                        ; $707b: $c0

    nop                                           ; $707c: $00
    nop                                           ; $707d: $00
    nop                                           ; $707e: $00
    nop                                           ; $707f: $00
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    inc bc                                        ; $7082: $03
    inc bc                                        ; $7083: $03
    inc b                                         ; $7084: $04
    rlca                                          ; $7085: $07
    inc c                                         ; $7086: $0c
    rrca                                          ; $7087: $0f

jr_023_7088:
    ld c, $0b                                     ; $7088: $0e $0b

jr_023_708a:
    ld c, $0b                                     ; $708a: $0e $0b
    rrca                                          ; $708c: $0f
    inc c                                         ; $708d: $0c
    rrca                                          ; $708e: $0f
    ld [$090f], sp                                ; $708f: $08 $0f $09
    ld b, $07                                     ; $7092: $06 $07
    ld c, $0b                                     ; $7094: $0e $0b

jr_023_7096:
    rlca                                          ; $7096: $07
    rlca                                          ; $7097: $07
    rrca                                          ; $7098: $0f
    ld c, $0b                                     ; $7099: $0e $0b
    rrca                                          ; $709b: $0f
    ld b, $06                                     ; $709c: $06 $06
    nop                                           ; $709e: $00
    nop                                           ; $709f: $00
    nop                                           ; $70a0: $00
    nop                                           ; $70a1: $00
    ret nz                                        ; $70a2: $c0

    ret nz                                        ; $70a3: $c0

    nop                                           ; $70a4: $00
    ret nz                                        ; $70a5: $c0

    jr nz, jr_023_7088                            ; $70a6: $20 $e0

    jr nz, jr_023_708a                            ; $70a8: $20 $e0

    and b                                         ; $70aa: $a0
    ldh [$e0], a                                  ; $70ab: $e0 $e0

jr_023_70ad:
    ld h, b                                       ; $70ad: $60
    add b                                         ; $70ae: $80
    ret nz                                        ; $70af: $c0

    ret nz                                        ; $70b0: $c0

    ret nz                                        ; $70b1: $c0

    ld b, b                                       ; $70b2: $40
    ret nz                                        ; $70b3: $c0

    jr nz, jr_023_7096                            ; $70b4: $20 $e0

    ret nz                                        ; $70b6: $c0

    ret nz                                        ; $70b7: $c0

    ldh [$60], a                                  ; $70b8: $e0 $60
    and b                                         ; $70ba: $a0
    ldh [$c0], a                                  ; $70bb: $e0 $c0
    ret nz                                        ; $70bd: $c0

    nop                                           ; $70be: $00
    nop                                           ; $70bf: $00

jr_023_70c0:
    nop                                           ; $70c0: $00
    nop                                           ; $70c1: $00
    inc bc                                        ; $70c2: $03
    inc bc                                        ; $70c3: $03
    nop                                           ; $70c4: $00
    inc bc                                        ; $70c5: $03
    inc b                                         ; $70c6: $04
    rlca                                          ; $70c7: $07

jr_023_70c8:
    inc b                                         ; $70c8: $04
    rlca                                          ; $70c9: $07

jr_023_70ca:
    inc c                                         ; $70ca: $0c
    rrca                                          ; $70cb: $0f
    inc e                                         ; $70cc: $1c
    rla                                           ; $70cd: $17
    inc c                                         ; $70ce: $0c
    dec bc                                        ; $70cf: $0b
    inc c                                         ; $70d0: $0c
    rrca                                          ; $70d1: $0f

jr_023_70d2:
    rra                                           ; $70d2: $1f
    rla                                           ; $70d3: $17
    rlca                                          ; $70d4: $07
    rlca                                          ; $70d5: $07

jr_023_70d6:
    rlca                                          ; $70d6: $07
    dec b                                         ; $70d7: $05
    rrca                                          ; $70d8: $0f
    ld a, [bc]                                    ; $70d9: $0a
    dec b                                         ; $70da: $05
    rlca                                          ; $70db: $07

jr_023_70dc:
    inc bc                                        ; $70dc: $03
    inc bc                                        ; $70dd: $03
    nop                                           ; $70de: $00
    nop                                           ; $70df: $00
    nop                                           ; $70e0: $00
    nop                                           ; $70e1: $00
    ret nz                                        ; $70e2: $c0

    ret nz                                        ; $70e3: $c0

    nop                                           ; $70e4: $00
    ret nz                                        ; $70e5: $c0

    jr nz, jr_023_70c8                            ; $70e6: $20 $e0

    jr nz, jr_023_70ca                            ; $70e8: $20 $e0

    jr nc, jr_023_70dc                            ; $70ea: $30 $f0

    jr c, jr_023_70d6                             ; $70ec: $38 $e8

    jr nc, jr_023_70c0                            ; $70ee: $30 $d0

    jr nz, jr_023_70d2                            ; $70f0: $20 $e0

    ret nc                                        ; $70f2: $d0

    ldh a, [$f8]                                  ; $70f3: $f0 $f8
    add sp, -$04                                  ; $70f5: $e8 $fc
    db $fc                                        ; $70f7: $fc
    db $ec                                        ; $70f8: $ec
    db $ec                                        ; $70f9: $ec
    ret nz                                        ; $70fa: $c0

    ret nz                                        ; $70fb: $c0

Call_023_70fc:
    nop                                           ; $70fc: $00
    nop                                           ; $70fd: $00
    nop                                           ; $70fe: $00
    nop                                           ; $70ff: $00
    nop                                           ; $7100: $00
    nop                                           ; $7101: $00
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    nop                                           ; $7104: $00
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00
    nop                                           ; $7107: $00
    nop                                           ; $7108: $00
    nop                                           ; $7109: $00
    nop                                           ; $710a: $00
    nop                                           ; $710b: $00
    nop                                           ; $710c: $00
    nop                                           ; $710d: $00
    nop                                           ; $710e: $00
    nop                                           ; $710f: $00
    nop                                           ; $7110: $00
    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    nop                                           ; $7113: $00
    nop                                           ; $7114: $00
    nop                                           ; $7115: $00
    nop                                           ; $7116: $00
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00
    nop                                           ; $7119: $00
    nop                                           ; $711a: $00
    nop                                           ; $711b: $00
    nop                                           ; $711c: $00
    nop                                           ; $711d: $00
    nop                                           ; $711e: $00
    nop                                           ; $711f: $00
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    nop                                           ; $712a: $00
    nop                                           ; $712b: $00
    nop                                           ; $712c: $00
    nop                                           ; $712d: $00
    nop                                           ; $712e: $00
    nop                                           ; $712f: $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    nop                                           ; $713a: $00
    nop                                           ; $713b: $00
    nop                                           ; $713c: $00
    nop                                           ; $713d: $00
    nop                                           ; $713e: $00
    nop                                           ; $713f: $00
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    nop                                           ; $714a: $00
    nop                                           ; $714b: $00
    nop                                           ; $714c: $00
    nop                                           ; $714d: $00
    nop                                           ; $714e: $00
    nop                                           ; $714f: $00
    nop                                           ; $7150: $00
    nop                                           ; $7151: $00
    nop                                           ; $7152: $00
    nop                                           ; $7153: $00
    nop                                           ; $7154: $00
    nop                                           ; $7155: $00
    nop                                           ; $7156: $00
    nop                                           ; $7157: $00
    nop                                           ; $7158: $00
    nop                                           ; $7159: $00
    nop                                           ; $715a: $00
    nop                                           ; $715b: $00
    nop                                           ; $715c: $00
    nop                                           ; $715d: $00
    nop                                           ; $715e: $00
    nop                                           ; $715f: $00
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    nop                                           ; $7164: $00
    nop                                           ; $7165: $00
    nop                                           ; $7166: $00
    nop                                           ; $7167: $00
    nop                                           ; $7168: $00
    nop                                           ; $7169: $00
    nop                                           ; $716a: $00
    nop                                           ; $716b: $00
    nop                                           ; $716c: $00
    nop                                           ; $716d: $00
    nop                                           ; $716e: $00
    nop                                           ; $716f: $00
    nop                                           ; $7170: $00
    nop                                           ; $7171: $00
    nop                                           ; $7172: $00
    nop                                           ; $7173: $00
    nop                                           ; $7174: $00
    nop                                           ; $7175: $00
    nop                                           ; $7176: $00
    nop                                           ; $7177: $00
    nop                                           ; $7178: $00
    nop                                           ; $7179: $00
    nop                                           ; $717a: $00
    nop                                           ; $717b: $00
    nop                                           ; $717c: $00
    nop                                           ; $717d: $00
    nop                                           ; $717e: $00
    nop                                           ; $717f: $00
    nop                                           ; $7180: $00
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    nop                                           ; $7183: $00
    nop                                           ; $7184: $00
    nop                                           ; $7185: $00
    nop                                           ; $7186: $00
    nop                                           ; $7187: $00
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    nop                                           ; $718a: $00
    nop                                           ; $718b: $00
    nop                                           ; $718c: $00
    nop                                           ; $718d: $00
    nop                                           ; $718e: $00
    nop                                           ; $718f: $00
    nop                                           ; $7190: $00
    nop                                           ; $7191: $00
    nop                                           ; $7192: $00
    nop                                           ; $7193: $00
    nop                                           ; $7194: $00
    nop                                           ; $7195: $00
    nop                                           ; $7196: $00
    nop                                           ; $7197: $00
    nop                                           ; $7198: $00
    nop                                           ; $7199: $00
    nop                                           ; $719a: $00
    nop                                           ; $719b: $00
    nop                                           ; $719c: $00
    nop                                           ; $719d: $00
    nop                                           ; $719e: $00
    nop                                           ; $719f: $00
    nop                                           ; $71a0: $00
    nop                                           ; $71a1: $00
    nop                                           ; $71a2: $00
    nop                                           ; $71a3: $00
    nop                                           ; $71a4: $00
    nop                                           ; $71a5: $00
    nop                                           ; $71a6: $00
    nop                                           ; $71a7: $00
    nop                                           ; $71a8: $00
    nop                                           ; $71a9: $00
    nop                                           ; $71aa: $00
    nop                                           ; $71ab: $00
    nop                                           ; $71ac: $00
    nop                                           ; $71ad: $00
    nop                                           ; $71ae: $00
    nop                                           ; $71af: $00
    nop                                           ; $71b0: $00
    nop                                           ; $71b1: $00
    nop                                           ; $71b2: $00
    nop                                           ; $71b3: $00
    nop                                           ; $71b4: $00
    nop                                           ; $71b5: $00
    nop                                           ; $71b6: $00
    nop                                           ; $71b7: $00
    nop                                           ; $71b8: $00
    nop                                           ; $71b9: $00
    nop                                           ; $71ba: $00
    nop                                           ; $71bb: $00
    nop                                           ; $71bc: $00
    nop                                           ; $71bd: $00
    nop                                           ; $71be: $00
    nop                                           ; $71bf: $00
    nop                                           ; $71c0: $00
    nop                                           ; $71c1: $00
    nop                                           ; $71c2: $00
    nop                                           ; $71c3: $00
    ld bc, $0201                                  ; $71c4: $01 $01 $02
    inc bc                                        ; $71c7: $03

jr_023_71c8:
    inc b                                         ; $71c8: $04
    rlca                                          ; $71c9: $07
    inc b                                         ; $71ca: $04
    rlca                                          ; $71cb: $07
    inc b                                         ; $71cc: $04
    rlca                                          ; $71cd: $07
    ld c, $0b                                     ; $71ce: $0e $0b
    ld c, $0f                                     ; $71d0: $0e $0f
    dec e                                         ; $71d2: $1d
    rla                                           ; $71d3: $17
    rrca                                          ; $71d4: $0f
    rrca                                          ; $71d5: $0f
    rlca                                          ; $71d6: $07
    inc b                                         ; $71d7: $04
    rrca                                          ; $71d8: $0f
    dec bc                                        ; $71d9: $0b
    inc b                                         ; $71da: $04
    rlca                                          ; $71db: $07
    inc bc                                        ; $71dc: $03
    inc bc                                        ; $71dd: $03
    nop                                           ; $71de: $00
    nop                                           ; $71df: $00
    nop                                           ; $71e0: $00
    nop                                           ; $71e1: $00
    nop                                           ; $71e2: $00
    nop                                           ; $71e3: $00
    ret nz                                        ; $71e4: $c0

    ret nz                                        ; $71e5: $c0

    jr nz, jr_023_71c8                            ; $71e6: $20 $e0

    db $10                                        ; $71e8: $10
    ldh a, [rNR10]                                ; $71e9: $f0 $10
    ldh a, [rNR10]                                ; $71eb: $f0 $10
    ldh a, [$38]                                  ; $71ed: $f0 $38
    add sp, $20                                   ; $71ef: $e8 $20
    ldh [$d0], a                                  ; $71f1: $e0 $d0
    ldh a, [$38]                                  ; $71f3: $f0 $38
    add sp, -$04                                  ; $71f5: $e8 $fc
    call c, Call_023_6cec                         ; $71f7: $dc $ec $6c
    ldh [$e0], a                                  ; $71fa: $e0 $e0
    nop                                           ; $71fc: $00
    nop                                           ; $71fd: $00
    nop                                           ; $71fe: $00
    nop                                           ; $71ff: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    nop                                           ; $720a: $00
    nop                                           ; $720b: $00
    nop                                           ; $720c: $00
    nop                                           ; $720d: $00
    nop                                           ; $720e: $00
    nop                                           ; $720f: $00
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    nop                                           ; $721a: $00
    nop                                           ; $721b: $00
    nop                                           ; $721c: $00
    nop                                           ; $721d: $00
    nop                                           ; $721e: $00
    nop                                           ; $721f: $00
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00
    nop                                           ; $7226: $00
    nop                                           ; $7227: $00
    nop                                           ; $7228: $00
    nop                                           ; $7229: $00
    nop                                           ; $722a: $00
    nop                                           ; $722b: $00
    nop                                           ; $722c: $00
    nop                                           ; $722d: $00
    nop                                           ; $722e: $00
    nop                                           ; $722f: $00
    nop                                           ; $7230: $00
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    nop                                           ; $7237: $00
    nop                                           ; $7238: $00
    nop                                           ; $7239: $00
    nop                                           ; $723a: $00
    nop                                           ; $723b: $00
    nop                                           ; $723c: $00
    nop                                           ; $723d: $00
    nop                                           ; $723e: $00
    nop                                           ; $723f: $00
    nop                                           ; $7240: $00
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00
    nop                                           ; $7245: $00
    nop                                           ; $7246: $00
    nop                                           ; $7247: $00
    nop                                           ; $7248: $00
    nop                                           ; $7249: $00
    nop                                           ; $724a: $00
    nop                                           ; $724b: $00
    nop                                           ; $724c: $00
    nop                                           ; $724d: $00
    nop                                           ; $724e: $00
    nop                                           ; $724f: $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    nop                                           ; $7253: $00
    nop                                           ; $7254: $00
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    nop                                           ; $7259: $00
    nop                                           ; $725a: $00
    nop                                           ; $725b: $00
    nop                                           ; $725c: $00
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    nop                                           ; $7266: $00
    nop                                           ; $7267: $00
    nop                                           ; $7268: $00
    nop                                           ; $7269: $00
    nop                                           ; $726a: $00
    nop                                           ; $726b: $00
    nop                                           ; $726c: $00
    nop                                           ; $726d: $00
    nop                                           ; $726e: $00
    nop                                           ; $726f: $00
    nop                                           ; $7270: $00
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    nop                                           ; $7273: $00
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    nop                                           ; $7279: $00
    nop                                           ; $727a: $00
    nop                                           ; $727b: $00
    nop                                           ; $727c: $00
    nop                                           ; $727d: $00
    nop                                           ; $727e: $00
    nop                                           ; $727f: $00
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    nop                                           ; $7284: $00
    nop                                           ; $7285: $00
    nop                                           ; $7286: $00
    nop                                           ; $7287: $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    nop                                           ; $728a: $00
    nop                                           ; $728b: $00
    nop                                           ; $728c: $00
    nop                                           ; $728d: $00
    nop                                           ; $728e: $00
    nop                                           ; $728f: $00
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    nop                                           ; $7299: $00
    nop                                           ; $729a: $00
    nop                                           ; $729b: $00
    nop                                           ; $729c: $00
    nop                                           ; $729d: $00
    nop                                           ; $729e: $00
    nop                                           ; $729f: $00
    nop                                           ; $72a0: $00
    nop                                           ; $72a1: $00
    nop                                           ; $72a2: $00
    nop                                           ; $72a3: $00
    nop                                           ; $72a4: $00
    nop                                           ; $72a5: $00
    nop                                           ; $72a6: $00
    nop                                           ; $72a7: $00
    nop                                           ; $72a8: $00
    nop                                           ; $72a9: $00
    nop                                           ; $72aa: $00
    nop                                           ; $72ab: $00
    nop                                           ; $72ac: $00
    nop                                           ; $72ad: $00
    nop                                           ; $72ae: $00
    nop                                           ; $72af: $00
    nop                                           ; $72b0: $00
    nop                                           ; $72b1: $00
    nop                                           ; $72b2: $00
    nop                                           ; $72b3: $00
    nop                                           ; $72b4: $00
    nop                                           ; $72b5: $00
    nop                                           ; $72b6: $00
    nop                                           ; $72b7: $00
    nop                                           ; $72b8: $00
    nop                                           ; $72b9: $00
    nop                                           ; $72ba: $00
    nop                                           ; $72bb: $00
    nop                                           ; $72bc: $00
    nop                                           ; $72bd: $00
    nop                                           ; $72be: $00
    nop                                           ; $72bf: $00
    nop                                           ; $72c0: $00
    nop                                           ; $72c1: $00
    nop                                           ; $72c2: $00
    nop                                           ; $72c3: $00
    ld bc, $0201                                  ; $72c4: $01 $01 $02
    inc bc                                        ; $72c7: $03

jr_023_72c8:
    inc b                                         ; $72c8: $04
    rlca                                          ; $72c9: $07
    inc b                                         ; $72ca: $04
    rlca                                          ; $72cb: $07
    inc b                                         ; $72cc: $04
    rlca                                          ; $72cd: $07
    ld c, $0b                                     ; $72ce: $0e $0b
    ld b, $07                                     ; $72d0: $06 $07
    dec b                                         ; $72d2: $05
    rlca                                          ; $72d3: $07
    ld c, $0b                                     ; $72d4: $0e $0b
    rrca                                          ; $72d6: $0f
    dec c                                         ; $72d7: $0d
    inc bc                                        ; $72d8: $03
    inc bc                                        ; $72d9: $03
    inc bc                                        ; $72da: $03
    inc bc                                        ; $72db: $03
    nop                                           ; $72dc: $00
    nop                                           ; $72dd: $00
    nop                                           ; $72de: $00
    nop                                           ; $72df: $00
    nop                                           ; $72e0: $00
    nop                                           ; $72e1: $00
    nop                                           ; $72e2: $00
    nop                                           ; $72e3: $00
    ret nz                                        ; $72e4: $c0

    ret nz                                        ; $72e5: $c0

    jr nz, jr_023_72c8                            ; $72e6: $20 $e0

    db $10                                        ; $72e8: $10
    ldh a, [rNR10]                                ; $72e9: $f0 $10
    ldh a, [rNR10]                                ; $72eb: $f0 $10
    ldh a, [$3c]                                  ; $72ed: $f0 $3c
    db $ec                                        ; $72ef: $ec
    inc a                                         ; $72f0: $3c
    db $fc                                        ; $72f1: $fc
    call c, Call_023_78f4                         ; $72f2: $dc $f4 $78
    ld hl, sp-$10                                 ; $72f5: $f8 $f0
    sub b                                         ; $72f7: $90
    ld hl, sp+$68                                 ; $72f8: $f8 $68
    sub b                                         ; $72fa: $90
    ldh a, [$60]                                  ; $72fb: $f0 $60
    ld h, b                                       ; $72fd: $60
    nop                                           ; $72fe: $00
    nop                                           ; $72ff: $00

    db $16, $73, $19, $73, $1f, $73, $22, $73

    dec l                                         ; $7308: $2d
    ld [hl], e                                    ; $7309: $73
    inc [hl]                                      ; $730a: $34
    ld [hl], e                                    ; $730b: $73
    inc a                                         ; $730c: $3c
    ld [hl], e                                    ; $730d: $73
    ld d, b                                       ; $730e: $50
    ld [hl], e                                    ; $730f: $73
    ld e, h                                       ; $7310: $5c
    ld [hl], e                                    ; $7311: $73
    ld d, $73                                     ; $7312: $16 $73
    ld h, l                                       ; $7314: $65
    ld [hl], e                                    ; $7315: $73
    nop                                           ; $7316: $00
    rst $38                                       ; $7317: $ff
    db $fd                                        ; $7318: $fd

    db $00, $1e, $01, $1e, $ff, $00, $02, $ff

    db $fd                                        ; $7321: $fd

    db $02, $0c, $03, $0c, $04, $18, $02, $0c, $05, $0c, $fd, $02

    jr @+$05                                      ; $732e: $18 $03

    jr jr_023_7334                                ; $7330: $18 $02

    jr @-$01                                      ; $7332: $18 $fd

jr_023_7334:
    nop                                           ; $7334: $00
    ld a, [bc]                                    ; $7335: $0a
    ld b, $1e                                     ; $7336: $06 $1e
    nop                                           ; $7338: $00
    ld a, [bc]                                    ; $7339: $0a
    cp $01                                        ; $733a: $fe $01
    nop                                           ; $733c: $00
    ld a, [bc]                                    ; $733d: $0a
    rlca                                          ; $733e: $07
    ld a, [bc]                                    ; $733f: $0a
    nop                                           ; $7340: $00
    inc bc                                        ; $7341: $03
    ld [$000a], sp                                ; $7342: $08 $0a $00
    inc bc                                        ; $7345: $03
    rlca                                          ; $7346: $07
    ld a, [bc]                                    ; $7347: $0a
    nop                                           ; $7348: $00
    inc bc                                        ; $7349: $03
    ld [$000a], sp                                ; $734a: $08 $0a $00
    ld a, [bc]                                    ; $734d: $0a
    cp $01                                        ; $734e: $fe $01
    nop                                           ; $7350: $00
    ld a, [bc]                                    ; $7351: $0a
    add hl, bc                                    ; $7352: $09
    ld [$0800], sp                                ; $7353: $08 $00 $08
    add hl, bc                                    ; $7356: $09
    ld [$0a00], sp                                ; $7357: $08 $00 $0a
    cp $01                                        ; $735a: $fe $01
    ld [bc], a                                    ; $735c: $02
    ld [de], a                                    ; $735d: $12
    inc bc                                        ; $735e: $03
    ld [de], a                                    ; $735f: $12
    ld [bc], a                                    ; $7360: $02
    ld e, $05                                     ; $7361: $1e $05
    ld [de], a                                    ; $7363: $12
    db $fd                                        ; $7364: $fd
    ld a, [bc]                                    ; $7365: $0a
    ld e, $0b                                     ; $7366: $1e $0b
    ld e, $ff                                     ; $7368: $1e $ff
    nop                                           ; $736a: $00

    db $63, $04, $7b, $73, $90, $79, $73, $73, $78, $3a, $ff, $6b, $80, $12, $00, $00
    db $90, $73, $90, $74

    sub b                                         ; $737f: $90
    ld [hl], h                                    ; $7380: $74
    sub b                                         ; $7381: $90
    ld [hl], h                                    ; $7382: $74
    sub b                                         ; $7383: $90
    ld [hl], h                                    ; $7384: $74
    sub b                                         ; $7385: $90
    ld [hl], h                                    ; $7386: $74
    sub b                                         ; $7387: $90
    ld [hl], l                                    ; $7388: $75
    sub b                                         ; $7389: $90
    halt                                          ; $738a: $76
    sub b                                         ; $738b: $90
    ld [hl], a                                    ; $738c: $77
    sub b                                         ; $738d: $90
    ld a, b                                       ; $738e: $78
    nop                                           ; $738f: $00
    ld bc, $0301                                  ; $7390: $01 $01 $03
    ld [bc], a                                    ; $7393: $02
    inc bc                                        ; $7394: $03
    inc bc                                        ; $7395: $03
    rlca                                          ; $7396: $07
    inc b                                         ; $7397: $04
    rlca                                          ; $7398: $07
    inc b                                         ; $7399: $04
    rlca                                          ; $739a: $07
    dec b                                         ; $739b: $05
    rlca                                          ; $739c: $07
    ld b, $07                                     ; $739d: $06 $07
    ld b, $07                                     ; $739f: $06 $07
    rlca                                          ; $73a1: $07
    ld [$1c0f], sp                                ; $73a2: $08 $0f $1c
    rla                                           ; $73a5: $17
    rra                                           ; $73a6: $1f
    rla                                           ; $73a7: $17
    rrca                                          ; $73a8: $0f
    inc c                                         ; $73a9: $0c
    rra                                           ; $73aa: $1f
    rra                                           ; $73ab: $1f
    rra                                           ; $73ac: $1f
    rla                                           ; $73ad: $17
    inc c                                         ; $73ae: $0c
    inc c                                         ; $73af: $0c
    add b                                         ; $73b0: $80
    add b                                         ; $73b1: $80
    ldh [$60], a                                  ; $73b2: $e0 $60
    ldh a, [$90]                                  ; $73b4: $f0 $90
    ld hl, sp+$08                                 ; $73b6: $f8 $08
    ld hl, sp+$18                                 ; $73b8: $f8 $18
    ld hl, sp+$08                                 ; $73ba: $f8 $08
    db $fc                                        ; $73bc: $fc
    sub h                                         ; $73bd: $94
    ld hl, sp+$28                                 ; $73be: $f8 $28
    ld hl, sp+$48                                 ; $73c0: $f8 $48
    ldh a, [$90]                                  ; $73c2: $f0 $90
    ldh [$a0], a                                  ; $73c4: $e0 $a0
    ldh [$e0], a                                  ; $73c6: $e0 $e0
    ret nz                                        ; $73c8: $c0

    ret nz                                        ; $73c9: $c0

    ldh [$a0], a                                  ; $73ca: $e0 $a0
    ldh [$e0], a                                  ; $73cc: $e0 $e0
    ret nz                                        ; $73ce: $c0

    ret nz                                        ; $73cf: $c0

    ld bc, $0301                                  ; $73d0: $01 $01 $03
    ld [bc], a                                    ; $73d3: $02
    rlca                                          ; $73d4: $07
    dec b                                         ; $73d5: $05
    rrca                                          ; $73d6: $0f
    ld [$0a0f], sp                                ; $73d7: $08 $0f $0a
    rra                                           ; $73da: $1f
    jr jr_023_741c                                ; $73db: $18 $3f

    ld a, [hl+]                                   ; $73dd: $2a
    ccf                                           ; $73de: $3f
    dec h                                         ; $73df: $25
    rra                                           ; $73e0: $1f
    jr jr_023_7422                                ; $73e1: $18 $3f

    inc l                                         ; $73e3: $2c
    dec sp                                        ; $73e4: $3b
    ld a, $6f                                     ; $73e5: $3e $6f
    ld l, a                                       ; $73e7: $6f
    ld l, a                                       ; $73e8: $6f
    ld l, b                                       ; $73e9: $68
    rrca                                          ; $73ea: $0f
    rrca                                          ; $73eb: $0f
    rrca                                          ; $73ec: $0f
    add hl, bc                                    ; $73ed: $09
    rlca                                          ; $73ee: $07
    rlca                                          ; $73ef: $07
    add b                                         ; $73f0: $80
    add b                                         ; $73f1: $80
    ret nz                                        ; $73f2: $c0

    ld b, b                                       ; $73f3: $40
    ldh [$a0], a                                  ; $73f4: $e0 $a0
    ldh a, [rNR10]                                ; $73f6: $f0 $10
    ldh a, [$50]                                  ; $73f8: $f0 $50
    ld hl, sp+$18                                 ; $73fa: $f8 $18
    db $fc                                        ; $73fc: $fc
    ld d, h                                       ; $73fd: $54
    db $fc                                        ; $73fe: $fc
    and h                                         ; $73ff: $a4
    ld hl, sp+$18                                 ; $7400: $f8 $18
    add sp, $38                                   ; $7402: $e8 $38
    call c, $fc74                                 ; $7404: $dc $74 $fc
    db $fc                                        ; $7407: $fc
    ldh a, [$90]                                  ; $7408: $f0 $90
    ldh a, [$f0]                                  ; $740a: $f0 $f0
    ldh [$e0], a                                  ; $740c: $e0 $e0
    nop                                           ; $740e: $00
    nop                                           ; $740f: $00
    ld bc, $0701                                  ; $7410: $01 $01 $07
    ld b, $0f                                     ; $7413: $06 $0f
    add hl, bc                                    ; $7415: $09
    rra                                           ; $7416: $1f
    db $10                                        ; $7417: $10
    rra                                           ; $7418: $1f
    jr jr_023_743a                                ; $7419: $18 $1f

    db $10                                        ; $741b: $10

jr_023_741c:
    ccf                                           ; $741c: $3f
    add hl, hl                                    ; $741d: $29
    rra                                           ; $741e: $1f
    inc d                                         ; $741f: $14
    rra                                           ; $7420: $1f
    ld [de], a                                    ; $7421: $12

jr_023_7422:
    rrca                                          ; $7422: $0f
    add hl, bc                                    ; $7423: $09
    rlca                                          ; $7424: $07
    dec b                                         ; $7425: $05
    rlca                                          ; $7426: $07
    rlca                                          ; $7427: $07
    inc bc                                        ; $7428: $03
    ld [bc], a                                    ; $7429: $02
    rlca                                          ; $742a: $07
    rlca                                          ; $742b: $07
    rlca                                          ; $742c: $07
    dec b                                         ; $742d: $05
    inc bc                                        ; $742e: $03
    inc bc                                        ; $742f: $03
    add b                                         ; $7430: $80
    add b                                         ; $7431: $80
    ret nz                                        ; $7432: $c0

    ld b, b                                       ; $7433: $40
    ret nz                                        ; $7434: $c0

    ret nz                                        ; $7435: $c0

    ldh [rNR41], a                                ; $7436: $e0 $20
    ldh [rNR41], a                                ; $7438: $e0 $20

jr_023_743a:
    ldh [$a0], a                                  ; $743a: $e0 $a0
    ldh [$60], a                                  ; $743c: $e0 $60
    ldh [$60], a                                  ; $743e: $e0 $60
    ldh [$e0], a                                  ; $7440: $e0 $e0
    sub b                                         ; $7442: $90
    ldh a, [$50]                                  ; $7443: $f0 $50
    ldh a, [$f0]                                  ; $7445: $f0 $f0
    ld [hl], b                                    ; $7447: $70
    ldh a, [$90]                                  ; $7448: $f0 $90
    ld hl, sp-$58                                 ; $744a: $f8 $a8
    ld hl, sp-$28                                 ; $744c: $f8 $d8
    jr nc, jr_023_7480                            ; $744e: $30 $30

    ld bc, $0301                                  ; $7450: $01 $01 $03
    ld [bc], a                                    ; $7453: $02
    rlca                                          ; $7454: $07
    ld b, $0f                                     ; $7455: $06 $0f
    add hl, bc                                    ; $7457: $09
    rrca                                          ; $7458: $0f
    ld [$181f], sp                                ; $7459: $08 $1f $18
    ccf                                           ; $745c: $3f
    jr z, @+$41                                   ; $745d: $28 $3f

    inc h                                         ; $745f: $24
    rra                                           ; $7460: $1f
    rra                                           ; $7461: $1f
    jr c, jr_023_7493                             ; $7462: $38 $2f

    jr c, jr_023_74a5                             ; $7464: $38 $3f

    inc c                                         ; $7466: $0c
    rrca                                          ; $7467: $0f
    rrca                                          ; $7468: $0f
    dec bc                                        ; $7469: $0b
    rrca                                          ; $746a: $0f
    rrca                                          ; $746b: $0f
    rrca                                          ; $746c: $0f
    add hl, bc                                    ; $746d: $09
    rlca                                          ; $746e: $07
    rlca                                          ; $746f: $07
    add b                                         ; $7470: $80
    add b                                         ; $7471: $80
    ret nz                                        ; $7472: $c0

    ld b, b                                       ; $7473: $40
    ldh [$60], a                                  ; $7474: $e0 $60
    ldh a, [$90]                                  ; $7476: $f0 $90
    ldh a, [rNR10]                                ; $7478: $f0 $10
    ld hl, sp+$18                                 ; $747a: $f8 $18

jr_023_747c:
    db $fc                                        ; $747c: $fc
    inc d                                         ; $747d: $14
    db $fc                                        ; $747e: $fc
    inc h                                         ; $747f: $24

jr_023_7480:
    ld hl, sp-$08                                 ; $7480: $f8 $f8
    jr z, jr_023_747c                             ; $7482: $28 $f8

    inc e                                         ; $7484: $1c
    db $f4                                        ; $7485: $f4
    inc a                                         ; $7486: $3c
    db $fc                                        ; $7487: $fc
    or $d6                                        ; $7488: $f6 $d6
    or $f6                                        ; $748a: $f6 $f6
    ldh [$e0], a                                  ; $748c: $e0 $e0
    nop                                           ; $748e: $00
    nop                                           ; $748f: $00
    ld bc, $0301                                  ; $7490: $01 $01 $03

jr_023_7493:
    ld [bc], a                                    ; $7493: $02
    inc bc                                        ; $7494: $03
    inc bc                                        ; $7495: $03
    rlca                                          ; $7496: $07
    inc b                                         ; $7497: $04
    rlca                                          ; $7498: $07
    inc b                                         ; $7499: $04
    rlca                                          ; $749a: $07
    dec b                                         ; $749b: $05
    rlca                                          ; $749c: $07
    ld b, $07                                     ; $749d: $06 $07
    ld b, $07                                     ; $749f: $06 $07
    rlca                                          ; $74a1: $07
    add hl, bc                                    ; $74a2: $09
    rrca                                          ; $74a3: $0f
    ld a, [bc]                                    ; $74a4: $0a

jr_023_74a5:
    rrca                                          ; $74a5: $0f
    rrca                                          ; $74a6: $0f
    ld c, $0f                                     ; $74a7: $0e $0f
    add hl, bc                                    ; $74a9: $09
    rra                                           ; $74aa: $1f
    dec d                                         ; $74ab: $15
    rra                                           ; $74ac: $1f
    dec de                                        ; $74ad: $1b
    inc c                                         ; $74ae: $0c
    inc c                                         ; $74af: $0c
    add b                                         ; $74b0: $80
    add b                                         ; $74b1: $80
    ldh [$60], a                                  ; $74b2: $e0 $60
    ldh a, [$90]                                  ; $74b4: $f0 $90
    ld hl, sp+$08                                 ; $74b6: $f8 $08
    ld hl, sp+$18                                 ; $74b8: $f8 $18
    ld hl, sp+$08                                 ; $74ba: $f8 $08
    db $fc                                        ; $74bc: $fc
    sub h                                         ; $74bd: $94
    ld hl, sp+$28                                 ; $74be: $f8 $28
    ld hl, sp+$48                                 ; $74c0: $f8 $48
    ldh a, [$90]                                  ; $74c2: $f0 $90
    ldh [$a0], a                                  ; $74c4: $e0 $a0
    ldh [$e0], a                                  ; $74c6: $e0 $e0
    ret nz                                        ; $74c8: $c0

    ld b, b                                       ; $74c9: $40
    ld hl, sp-$08                                 ; $74ca: $f8 $f8
    ld hl, sp-$48                                 ; $74cc: $f8 $b8
    ret nz                                        ; $74ce: $c0

    ret nz                                        ; $74cf: $c0

    ld bc, $0301                                  ; $74d0: $01 $01 $03
    ld [bc], a                                    ; $74d3: $02
    rlca                                          ; $74d4: $07
    dec b                                         ; $74d5: $05
    rrca                                          ; $74d6: $0f
    ld [$0a0f], sp                                ; $74d7: $08 $0f $0a
    rra                                           ; $74da: $1f
    jr jr_023_751c                                ; $74db: $18 $3f

    ld a, [hl+]                                   ; $74dd: $2a
    ccf                                           ; $74de: $3f
    dec h                                         ; $74df: $25
    rra                                           ; $74e0: $1f
    jr jr_023_74fa                                ; $74e1: $18 $17

    inc e                                         ; $74e3: $1c
    dec sp                                        ; $74e4: $3b
    ld l, $3f                                     ; $74e5: $2e $3f
    ccf                                           ; $74e7: $3f
    cpl                                           ; $74e8: $2f
    add hl, hl                                    ; $74e9: $29
    ld l, a                                       ; $74ea: $6f
    ld l, a                                       ; $74eb: $6f
    ld h, a                                       ; $74ec: $67
    ld h, a                                       ; $74ed: $67
    nop                                           ; $74ee: $00
    nop                                           ; $74ef: $00
    add b                                         ; $74f0: $80
    add b                                         ; $74f1: $80
    ret nz                                        ; $74f2: $c0

    ld b, b                                       ; $74f3: $40
    ldh [$a0], a                                  ; $74f4: $e0 $a0
    ldh a, [rNR10]                                ; $74f6: $f0 $10
    ldh a, [$50]                                  ; $74f8: $f0 $50

jr_023_74fa:
    ld hl, sp+$18                                 ; $74fa: $f8 $18
    db $fc                                        ; $74fc: $fc
    ld d, h                                       ; $74fd: $54
    db $fc                                        ; $74fe: $fc
    and h                                         ; $74ff: $a4
    ld hl, sp+$18                                 ; $7500: $f8 $18
    db $fc                                        ; $7502: $fc
    inc [hl]                                      ; $7503: $34
    call c, $f07c                                 ; $7504: $dc $7c $f0
    ldh a, [$f0]                                  ; $7507: $f0 $f0
    db $10                                        ; $7509: $10
    ldh a, [$f0]                                  ; $750a: $f0 $f0
    ldh a, [$90]                                  ; $750c: $f0 $90
    ldh [$e0], a                                  ; $750e: $e0 $e0
    ld bc, $0701                                  ; $7510: $01 $01 $07
    ld b, $0f                                     ; $7513: $06 $0f
    add hl, bc                                    ; $7515: $09
    rra                                           ; $7516: $1f
    db $10                                        ; $7517: $10
    rra                                           ; $7518: $1f
    jr jr_023_753a                                ; $7519: $18 $1f

    db $10                                        ; $751b: $10

jr_023_751c:
    ccf                                           ; $751c: $3f
    add hl, hl                                    ; $751d: $29
    rra                                           ; $751e: $1f
    inc d                                         ; $751f: $14
    rra                                           ; $7520: $1f
    ld [de], a                                    ; $7521: $12
    rrca                                          ; $7522: $0f
    add hl, bc                                    ; $7523: $09
    rlca                                          ; $7524: $07
    dec b                                         ; $7525: $05
    rlca                                          ; $7526: $07
    rlca                                          ; $7527: $07
    rlca                                          ; $7528: $07
    rlca                                          ; $7529: $07
    rra                                           ; $752a: $1f
    dec e                                         ; $752b: $1d
    rra                                           ; $752c: $1f
    ld e, $03                                     ; $752d: $1e $03
    inc bc                                        ; $752f: $03
    add b                                         ; $7530: $80
    add b                                         ; $7531: $80
    ret nz                                        ; $7532: $c0

    ld b, b                                       ; $7533: $40
    ret nz                                        ; $7534: $c0

    ret nz                                        ; $7535: $c0

    ldh [rNR41], a                                ; $7536: $e0 $20
    ldh [rNR41], a                                ; $7538: $e0 $20

jr_023_753a:
    ldh [$a0], a                                  ; $753a: $e0 $a0
    ldh [$60], a                                  ; $753c: $e0 $60
    ldh [$60], a                                  ; $753e: $e0 $60
    ldh [$e0], a                                  ; $7540: $e0 $e0
    db $10                                        ; $7542: $10

jr_023_7543:
    ldh a, [$38]                                  ; $7543: $f0 $38
    add sp, -$08                                  ; $7545: $e8 $f8
    add sp, -$10                                  ; $7547: $e8 $f0
    jr nc, jr_023_7543                            ; $7549: $30 $f8

    ld a, b                                       ; $754b: $78
    ld hl, sp-$18                                 ; $754c: $f8 $e8
    jr nc, jr_023_7580                            ; $754e: $30 $30

    ld bc, $0301                                  ; $7550: $01 $01 $03
    ld [bc], a                                    ; $7553: $02
    rlca                                          ; $7554: $07
    ld b, $0f                                     ; $7555: $06 $0f
    add hl, bc                                    ; $7557: $09
    rrca                                          ; $7558: $0f
    ld [$181f], sp                                ; $7559: $08 $1f $18
    ccf                                           ; $755c: $3f
    jr z, jr_023_759e                             ; $755d: $28 $3f

    inc h                                         ; $755f: $24
    rra                                           ; $7560: $1f
    rra                                           ; $7561: $1f
    inc d                                         ; $7562: $14
    rra                                           ; $7563: $1f
    jr c, jr_023_7595                             ; $7564: $38 $2f

    inc a                                         ; $7566: $3c
    ccf                                           ; $7567: $3f
    rrca                                          ; $7568: $0f
    dec bc                                        ; $7569: $0b
    rrca                                          ; $756a: $0f
    rrca                                          ; $756b: $0f
    rlca                                          ; $756c: $07
    rlca                                          ; $756d: $07
    nop                                           ; $756e: $00
    nop                                           ; $756f: $00
    add b                                         ; $7570: $80
    add b                                         ; $7571: $80
    ret nz                                        ; $7572: $c0

    ld b, b                                       ; $7573: $40
    ldh [$60], a                                  ; $7574: $e0 $60
    ldh a, [$90]                                  ; $7576: $f0 $90
    ldh a, [rNR10]                                ; $7578: $f0 $10
    ld hl, sp+$18                                 ; $757a: $f8 $18
    db $fc                                        ; $757c: $fc
    inc d                                         ; $757d: $14
    db $fc                                        ; $757e: $fc
    inc h                                         ; $757f: $24

jr_023_7580:
    ld hl, sp-$08                                 ; $7580: $f8 $f8
    inc e                                         ; $7582: $1c
    db $f4                                        ; $7583: $f4
    ld e, $fe                                     ; $7584: $1e $fe
    ld [hl], $f6                                  ; $7586: $36 $f6
    ldh a, [$d0]                                  ; $7588: $f0 $d0
    ldh a, [$f0]                                  ; $758a: $f0 $f0
    ldh a, [$90]                                  ; $758c: $f0 $90
    ldh [$e0], a                                  ; $758e: $e0 $e0
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00
    ld bc, $0301                                  ; $7592: $01 $01 $03

jr_023_7595:
    ld [bc], a                                    ; $7595: $02
    inc bc                                        ; $7596: $03
    inc bc                                        ; $7597: $03
    rlca                                          ; $7598: $07
    inc b                                         ; $7599: $04
    rlca                                          ; $759a: $07
    inc b                                         ; $759b: $04
    rlca                                          ; $759c: $07
    dec b                                         ; $759d: $05

jr_023_759e:
    rlca                                          ; $759e: $07
    ld b, $07                                     ; $759f: $06 $07
    ld b, $07                                     ; $75a1: $06 $07
    rlca                                          ; $75a3: $07
    inc e                                         ; $75a4: $1c
    rla                                           ; $75a5: $17
    rra                                           ; $75a6: $1f
    rla                                           ; $75a7: $17
    rrca                                          ; $75a8: $0f
    inc c                                         ; $75a9: $0c
    rra                                           ; $75aa: $1f
    rra                                           ; $75ab: $1f
    rra                                           ; $75ac: $1f
    rla                                           ; $75ad: $17
    inc c                                         ; $75ae: $0c
    inc c                                         ; $75af: $0c
    nop                                           ; $75b0: $00
    nop                                           ; $75b1: $00
    add b                                         ; $75b2: $80
    add b                                         ; $75b3: $80
    ldh [$60], a                                  ; $75b4: $e0 $60
    ldh a, [$90]                                  ; $75b6: $f0 $90
    ld hl, sp+$08                                 ; $75b8: $f8 $08
    ld hl, sp+$18                                 ; $75ba: $f8 $18
    ld hl, sp+$08                                 ; $75bc: $f8 $08
    db $fc                                        ; $75be: $fc
    sub h                                         ; $75bf: $94
    ld hl, sp+$28                                 ; $75c0: $f8 $28
    ld hl, sp+$48                                 ; $75c2: $f8 $48
    ldh [$a0], a                                  ; $75c4: $e0 $a0
    ldh [$e0], a                                  ; $75c6: $e0 $e0
    ret nz                                        ; $75c8: $c0

    ret nz                                        ; $75c9: $c0

    ldh [$a0], a                                  ; $75ca: $e0 $a0
    ldh [$e0], a                                  ; $75cc: $e0 $e0
    ret nz                                        ; $75ce: $c0

    ret nz                                        ; $75cf: $c0

    nop                                           ; $75d0: $00
    nop                                           ; $75d1: $00
    ld bc, $0301                                  ; $75d2: $01 $01 $03
    ld [bc], a                                    ; $75d5: $02
    rlca                                          ; $75d6: $07
    dec b                                         ; $75d7: $05
    rrca                                          ; $75d8: $0f
    ld [$0a0f], sp                                ; $75d9: $08 $0f $0a
    rra                                           ; $75dc: $1f
    jr jr_023_761e                                ; $75dd: $18 $3f

    ld a, [hl+]                                   ; $75df: $2a
    ccf                                           ; $75e0: $3f
    dec h                                         ; $75e1: $25
    rra                                           ; $75e2: $1f
    jr jr_023_7620                                ; $75e3: $18 $3b

    ld a, $6f                                     ; $75e5: $3e $6f
    ld l, a                                       ; $75e7: $6f
    ld l, a                                       ; $75e8: $6f
    ld l, b                                       ; $75e9: $68
    rrca                                          ; $75ea: $0f
    rrca                                          ; $75eb: $0f
    rrca                                          ; $75ec: $0f
    add hl, bc                                    ; $75ed: $09
    rlca                                          ; $75ee: $07
    rlca                                          ; $75ef: $07
    nop                                           ; $75f0: $00
    nop                                           ; $75f1: $00
    add b                                         ; $75f2: $80
    add b                                         ; $75f3: $80
    ret nz                                        ; $75f4: $c0

    ld b, b                                       ; $75f5: $40
    ldh [$a0], a                                  ; $75f6: $e0 $a0
    ldh a, [rNR10]                                ; $75f8: $f0 $10
    ldh a, [$50]                                  ; $75fa: $f0 $50
    ld hl, sp+$18                                 ; $75fc: $f8 $18
    db $fc                                        ; $75fe: $fc
    ld d, h                                       ; $75ff: $54
    db $fc                                        ; $7600: $fc
    and h                                         ; $7601: $a4
    ld hl, sp+$18                                 ; $7602: $f8 $18
    call c, $fc74                                 ; $7604: $dc $74 $fc
    db $fc                                        ; $7607: $fc
    ldh a, [$90]                                  ; $7608: $f0 $90
    ldh a, [$f0]                                  ; $760a: $f0 $f0
    ldh [$e0], a                                  ; $760c: $e0 $e0
    nop                                           ; $760e: $00
    nop                                           ; $760f: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    ld bc, $0701                                  ; $7612: $01 $01 $07
    ld b, $0f                                     ; $7615: $06 $0f
    add hl, bc                                    ; $7617: $09
    rra                                           ; $7618: $1f
    db $10                                        ; $7619: $10
    rra                                           ; $761a: $1f
    jr jr_023_763c                                ; $761b: $18 $1f

    db $10                                        ; $761d: $10

jr_023_761e:
    ccf                                           ; $761e: $3f
    add hl, hl                                    ; $761f: $29

jr_023_7620:
    rra                                           ; $7620: $1f
    inc d                                         ; $7621: $14
    rra                                           ; $7622: $1f
    ld [de], a                                    ; $7623: $12
    rlca                                          ; $7624: $07
    dec b                                         ; $7625: $05
    rlca                                          ; $7626: $07
    rlca                                          ; $7627: $07
    inc bc                                        ; $7628: $03
    ld [bc], a                                    ; $7629: $02
    rlca                                          ; $762a: $07
    rlca                                          ; $762b: $07
    rlca                                          ; $762c: $07
    dec b                                         ; $762d: $05
    inc bc                                        ; $762e: $03
    inc bc                                        ; $762f: $03
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    add b                                         ; $7632: $80
    add b                                         ; $7633: $80
    ret nz                                        ; $7634: $c0

    ld b, b                                       ; $7635: $40
    ret nz                                        ; $7636: $c0

    ret nz                                        ; $7637: $c0

    ldh [rNR41], a                                ; $7638: $e0 $20
    ldh [rNR41], a                                ; $763a: $e0 $20

jr_023_763c:
    ldh [$a0], a                                  ; $763c: $e0 $a0
    ldh [$60], a                                  ; $763e: $e0 $60
    ldh [$60], a                                  ; $7640: $e0 $60
    ldh [$e0], a                                  ; $7642: $e0 $e0
    ld d, b                                       ; $7644: $50
    ldh a, [$f0]                                  ; $7645: $f0 $f0
    ld [hl], b                                    ; $7647: $70
    ldh a, [$90]                                  ; $7648: $f0 $90
    ld hl, sp-$58                                 ; $764a: $f8 $a8
    ld hl, sp-$28                                 ; $764c: $f8 $d8
    jr nc, jr_023_7680                            ; $764e: $30 $30

    nop                                           ; $7650: $00
    nop                                           ; $7651: $00
    ld bc, $0301                                  ; $7652: $01 $01 $03
    ld [bc], a                                    ; $7655: $02
    rlca                                          ; $7656: $07
    ld b, $0f                                     ; $7657: $06 $0f
    add hl, bc                                    ; $7659: $09
    rrca                                          ; $765a: $0f
    ld [$181f], sp                                ; $765b: $08 $1f $18
    ccf                                           ; $765e: $3f
    jr z, jr_023_76a0                             ; $765f: $28 $3f

    inc h                                         ; $7661: $24
    rra                                           ; $7662: $1f
    rra                                           ; $7663: $1f
    jr c, jr_023_76a5                             ; $7664: $38 $3f

    inc c                                         ; $7666: $0c
    rrca                                          ; $7667: $0f
    rrca                                          ; $7668: $0f
    dec bc                                        ; $7669: $0b
    rrca                                          ; $766a: $0f
    rrca                                          ; $766b: $0f
    rrca                                          ; $766c: $0f
    add hl, bc                                    ; $766d: $09
    rlca                                          ; $766e: $07
    rlca                                          ; $766f: $07
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    add b                                         ; $7672: $80
    add b                                         ; $7673: $80
    ret nz                                        ; $7674: $c0

    ld b, b                                       ; $7675: $40
    ldh [$60], a                                  ; $7676: $e0 $60
    ldh a, [$90]                                  ; $7678: $f0 $90
    ldh a, [rNR10]                                ; $767a: $f0 $10
    ld hl, sp+$18                                 ; $767c: $f8 $18
    db $fc                                        ; $767e: $fc
    inc d                                         ; $767f: $14

jr_023_7680:
    db $fc                                        ; $7680: $fc
    inc h                                         ; $7681: $24
    ld hl, sp-$08                                 ; $7682: $f8 $f8
    inc e                                         ; $7684: $1c
    db $f4                                        ; $7685: $f4
    inc a                                         ; $7686: $3c
    db $fc                                        ; $7687: $fc
    or $d6                                        ; $7688: $f6 $d6
    or $f6                                        ; $768a: $f6 $f6
    ldh [$e0], a                                  ; $768c: $e0 $e0
    nop                                           ; $768e: $00
    nop                                           ; $768f: $00
    nop                                           ; $7690: $00
    nop                                           ; $7691: $00
    ld bc, $0101                                  ; $7692: $01 $01 $01
    ld bc, $0203                                  ; $7695: $01 $03 $02
    inc bc                                        ; $7698: $03
    ld [bc], a                                    ; $7699: $02
    inc bc                                        ; $769a: $03
    ld [bc], a                                    ; $769b: $02
    inc bc                                        ; $769c: $03
    inc bc                                        ; $769d: $03
    inc bc                                        ; $769e: $03
    inc bc                                        ; $769f: $03

jr_023_76a0:
    inc bc                                        ; $76a0: $03
    inc bc                                        ; $76a1: $03
    ld [$1c0f], sp                                ; $76a2: $08 $0f $1c

jr_023_76a5:
    rla                                           ; $76a5: $17
    rra                                           ; $76a6: $1f
    rla                                           ; $76a7: $17
    rrca                                          ; $76a8: $0f
    inc c                                         ; $76a9: $0c
    rra                                           ; $76aa: $1f
    rra                                           ; $76ab: $1f
    rra                                           ; $76ac: $1f
    rla                                           ; $76ad: $17
    inc c                                         ; $76ae: $0c
    inc c                                         ; $76af: $0c
    ret nz                                        ; $76b0: $c0

    ret nz                                        ; $76b1: $c0

    ldh a, [$30]                                  ; $76b2: $f0 $30
    ld hl, sp-$38                                 ; $76b4: $f8 $c8
    db $fc                                        ; $76b6: $fc
    inc b                                         ; $76b7: $04
    db $fc                                        ; $76b8: $fc
    inc c                                         ; $76b9: $0c
    db $fc                                        ; $76ba: $fc
    add h                                         ; $76bb: $84
    cp $4a                                        ; $76bc: $fe $4a
    db $fc                                        ; $76be: $fc
    inc d                                         ; $76bf: $14
    db $fc                                        ; $76c0: $fc
    and h                                         ; $76c1: $a4
    ldh a, [$90]                                  ; $76c2: $f0 $90
    ldh [$a0], a                                  ; $76c4: $e0 $a0
    ldh [$e0], a                                  ; $76c6: $e0 $e0
    ret nz                                        ; $76c8: $c0

    ret nz                                        ; $76c9: $c0

    ldh [$a0], a                                  ; $76ca: $e0 $a0
    ldh [$e0], a                                  ; $76cc: $e0 $e0
    ret nz                                        ; $76ce: $c0

    ret nz                                        ; $76cf: $c0

    nop                                           ; $76d0: $00
    nop                                           ; $76d1: $00
    ld bc, $0301                                  ; $76d2: $01 $01 $03
    ld [bc], a                                    ; $76d5: $02
    rlca                                          ; $76d6: $07
    inc b                                         ; $76d7: $04
    rlca                                          ; $76d8: $07
    dec b                                         ; $76d9: $05
    rrca                                          ; $76da: $0f
    inc c                                         ; $76db: $0c
    rra                                           ; $76dc: $1f
    dec d                                         ; $76dd: $15
    rra                                           ; $76de: $1f
    ld [de], a                                    ; $76df: $12
    rrca                                          ; $76e0: $0f
    inc c                                         ; $76e1: $0c
    ccf                                           ; $76e2: $3f
    inc l                                         ; $76e3: $2c
    dec sp                                        ; $76e4: $3b
    ld a, $6f                                     ; $76e5: $3e $6f
    ld l, a                                       ; $76e7: $6f
    ld l, a                                       ; $76e8: $6f
    ld l, b                                       ; $76e9: $68
    rrca                                          ; $76ea: $0f
    rrca                                          ; $76eb: $0f
    rrca                                          ; $76ec: $0f
    add hl, bc                                    ; $76ed: $09
    rlca                                          ; $76ee: $07
    rlca                                          ; $76ef: $07
    ret nz                                        ; $76f0: $c0

    ret nz                                        ; $76f1: $c0

    ldh [rNR41], a                                ; $76f2: $e0 $20
    ldh a, [$d0]                                  ; $76f4: $f0 $d0
    ld hl, sp+$08                                 ; $76f6: $f8 $08
    ld hl, sp+$28                                 ; $76f8: $f8 $28
    db $fc                                        ; $76fa: $fc
    inc c                                         ; $76fb: $0c
    cp $2a                                        ; $76fc: $fe $2a
    cp $d2                                        ; $76fe: $fe $d2
    db $fc                                        ; $7700: $fc
    inc c                                         ; $7701: $0c
    add sp, $38                                   ; $7702: $e8 $38
    call c, $fc74                                 ; $7704: $dc $74 $fc
    db $fc                                        ; $7707: $fc
    ldh a, [$90]                                  ; $7708: $f0 $90
    ldh a, [$f0]                                  ; $770a: $f0 $f0
    ldh [$e0], a                                  ; $770c: $e0 $e0
    nop                                           ; $770e: $00
    nop                                           ; $770f: $00
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    inc bc                                        ; $7712: $03
    inc bc                                        ; $7713: $03
    rlca                                          ; $7714: $07
    inc b                                         ; $7715: $04
    rrca                                          ; $7716: $0f
    ld [$0c0f], sp                                ; $7717: $08 $0f $0c
    rrca                                          ; $771a: $0f
    ld [$141f], sp                                ; $771b: $08 $1f $14
    rrca                                          ; $771e: $0f
    ld a, [bc]                                    ; $771f: $0a
    rrca                                          ; $7720: $0f
    add hl, bc                                    ; $7721: $09
    rrca                                          ; $7722: $0f
    add hl, bc                                    ; $7723: $09
    rlca                                          ; $7724: $07
    dec b                                         ; $7725: $05
    rlca                                          ; $7726: $07
    rlca                                          ; $7727: $07
    inc bc                                        ; $7728: $03
    ld [bc], a                                    ; $7729: $02
    rlca                                          ; $772a: $07
    rlca                                          ; $772b: $07
    rlca                                          ; $772c: $07
    dec b                                         ; $772d: $05
    inc bc                                        ; $772e: $03
    inc bc                                        ; $772f: $03
    ret nz                                        ; $7730: $c0

    ret nz                                        ; $7731: $c0

    ldh [rNR41], a                                ; $7732: $e0 $20
    ldh [$e0], a                                  ; $7734: $e0 $e0
    ldh a, [rNR10]                                ; $7736: $f0 $10
    ldh a, [rNR10]                                ; $7738: $f0 $10
    ldh a, [$50]                                  ; $773a: $f0 $50
    ldh a, [$b0]                                  ; $773c: $f0 $b0
    ldh a, [$30]                                  ; $773e: $f0 $30
    ldh a, [rSVBK]                                ; $7740: $f0 $70
    sub b                                         ; $7742: $90
    ldh a, [$50]                                  ; $7743: $f0 $50
    ldh a, [$f0]                                  ; $7745: $f0 $f0
    ld [hl], b                                    ; $7747: $70
    ldh a, [$90]                                  ; $7748: $f0 $90
    ld hl, sp-$58                                 ; $774a: $f8 $a8
    ld hl, sp-$28                                 ; $774c: $f8 $d8
    jr nc, jr_023_7780                            ; $774e: $30 $30

    nop                                           ; $7750: $00
    nop                                           ; $7751: $00
    ld bc, $0301                                  ; $7752: $01 $01 $03
    inc bc                                        ; $7755: $03
    rlca                                          ; $7756: $07
    inc b                                         ; $7757: $04
    rlca                                          ; $7758: $07
    inc b                                         ; $7759: $04
    rrca                                          ; $775a: $0f
    inc c                                         ; $775b: $0c
    rra                                           ; $775c: $1f
    inc d                                         ; $775d: $14
    rra                                           ; $775e: $1f
    ld [de], a                                    ; $775f: $12
    rrca                                          ; $7760: $0f
    rrca                                          ; $7761: $0f
    jr c, jr_023_7793                             ; $7762: $38 $2f

    jr c, jr_023_77a5                             ; $7764: $38 $3f

    inc c                                         ; $7766: $0c
    rrca                                          ; $7767: $0f
    rrca                                          ; $7768: $0f
    dec bc                                        ; $7769: $0b
    rrca                                          ; $776a: $0f
    rrca                                          ; $776b: $0f
    rrca                                          ; $776c: $0f
    add hl, bc                                    ; $776d: $09
    rlca                                          ; $776e: $07
    rlca                                          ; $776f: $07
    ret nz                                        ; $7770: $c0

    ret nz                                        ; $7771: $c0

    ldh [rNR41], a                                ; $7772: $e0 $20
    ldh a, [$30]                                  ; $7774: $f0 $30
    ld hl, sp-$38                                 ; $7776: $f8 $c8
    ld hl, sp+$08                                 ; $7778: $f8 $08
    db $fc                                        ; $777a: $fc
    inc c                                         ; $777b: $0c

jr_023_777c:
    cp $0a                                        ; $777c: $fe $0a
    cp $12                                        ; $777e: $fe $12

jr_023_7780:
    db $fc                                        ; $7780: $fc
    db $fc                                        ; $7781: $fc
    jr z, jr_023_777c                             ; $7782: $28 $f8

    inc e                                         ; $7784: $1c
    db $f4                                        ; $7785: $f4
    inc a                                         ; $7786: $3c
    db $fc                                        ; $7787: $fc
    or $d6                                        ; $7788: $f6 $d6
    or $f6                                        ; $778a: $f6 $f6
    ldh [$e0], a                                  ; $778c: $e0 $e0
    nop                                           ; $778e: $00
    nop                                           ; $778f: $00
    inc bc                                        ; $7790: $03
    inc bc                                        ; $7791: $03
    rlca                                          ; $7792: $07

jr_023_7793:
    inc b                                         ; $7793: $04
    rlca                                          ; $7794: $07
    rlca                                          ; $7795: $07
    rrca                                          ; $7796: $0f
    ld [$080f], sp                                ; $7797: $08 $0f $08
    rrca                                          ; $779a: $0f
    ld a, [bc]                                    ; $779b: $0a
    rrca                                          ; $779c: $0f
    dec c                                         ; $779d: $0d
    rrca                                          ; $779e: $0f
    inc c                                         ; $779f: $0c
    rrca                                          ; $77a0: $0f
    ld c, $08                                     ; $77a1: $0e $08
    rrca                                          ; $77a3: $0f
    inc e                                         ; $77a4: $1c

jr_023_77a5:
    rla                                           ; $77a5: $17
    rra                                           ; $77a6: $1f
    rla                                           ; $77a7: $17
    rrca                                          ; $77a8: $0f
    inc c                                         ; $77a9: $0c
    rra                                           ; $77aa: $1f
    rra                                           ; $77ab: $1f
    rra                                           ; $77ac: $1f
    rla                                           ; $77ad: $17
    inc c                                         ; $77ae: $0c
    inc c                                         ; $77af: $0c
    nop                                           ; $77b0: $00
    nop                                           ; $77b1: $00
    ret nz                                        ; $77b2: $c0

    ret nz                                        ; $77b3: $c0

    ldh [rNR41], a                                ; $77b4: $e0 $20
    ldh a, [rNR10]                                ; $77b6: $f0 $10
    ldh a, [$30]                                  ; $77b8: $f0 $30
    ldh a, [rNR10]                                ; $77ba: $f0 $10
    ld hl, sp+$28                                 ; $77bc: $f8 $28
    ldh a, [$50]                                  ; $77be: $f0 $50
    ldh a, [$90]                                  ; $77c0: $f0 $90
    ldh a, [$90]                                  ; $77c2: $f0 $90
    ldh [$a0], a                                  ; $77c4: $e0 $a0
    ldh [$e0], a                                  ; $77c6: $e0 $e0
    ret nz                                        ; $77c8: $c0

    ret nz                                        ; $77c9: $c0

    ldh [$a0], a                                  ; $77ca: $e0 $a0
    ldh [$e0], a                                  ; $77cc: $e0 $e0
    ret nz                                        ; $77ce: $c0

    ret nz                                        ; $77cf: $c0

    inc bc                                        ; $77d0: $03
    inc bc                                        ; $77d1: $03
    rlca                                          ; $77d2: $07
    inc b                                         ; $77d3: $04
    rrca                                          ; $77d4: $0f
    dec bc                                        ; $77d5: $0b
    rra                                           ; $77d6: $1f
    db $10                                        ; $77d7: $10
    rra                                           ; $77d8: $1f
    inc d                                         ; $77d9: $14
    ccf                                           ; $77da: $3f
    jr nc, @+$81                                  ; $77db: $30 $7f

    ld d, h                                       ; $77dd: $54
    ld a, a                                       ; $77de: $7f
    ld c, e                                       ; $77df: $4b
    ccf                                           ; $77e0: $3f
    jr nc, jr_023_7822                            ; $77e1: $30 $3f

    inc l                                         ; $77e3: $2c
    dec sp                                        ; $77e4: $3b
    ld a, $6f                                     ; $77e5: $3e $6f
    ld l, a                                       ; $77e7: $6f
    ld l, a                                       ; $77e8: $6f
    ld l, b                                       ; $77e9: $68
    rrca                                          ; $77ea: $0f
    rrca                                          ; $77eb: $0f
    rrca                                          ; $77ec: $0f
    add hl, bc                                    ; $77ed: $09
    rlca                                          ; $77ee: $07
    rlca                                          ; $77ef: $07
    nop                                           ; $77f0: $00
    nop                                           ; $77f1: $00
    add b                                         ; $77f2: $80
    add b                                         ; $77f3: $80
    ret nz                                        ; $77f4: $c0

    ld b, b                                       ; $77f5: $40
    ldh [rNR41], a                                ; $77f6: $e0 $20
    ldh [$a0], a                                  ; $77f8: $e0 $a0
    ldh a, [$30]                                  ; $77fa: $f0 $30
    ld hl, sp-$58                                 ; $77fc: $f8 $a8
    ld hl, sp+$48                                 ; $77fe: $f8 $48
    ldh a, [$30]                                  ; $7800: $f0 $30
    add sp, $38                                   ; $7802: $e8 $38
    call c, $fc74                                 ; $7804: $dc $74 $fc
    db $fc                                        ; $7807: $fc
    ldh a, [$90]                                  ; $7808: $f0 $90
    ldh a, [$f0]                                  ; $780a: $f0 $f0
    ldh [$e0], a                                  ; $780c: $e0 $e0
    nop                                           ; $780e: $00
    nop                                           ; $780f: $00
    inc bc                                        ; $7810: $03
    inc bc                                        ; $7811: $03
    rrca                                          ; $7812: $0f
    inc c                                         ; $7813: $0c
    rra                                           ; $7814: $1f
    inc de                                        ; $7815: $13
    ccf                                           ; $7816: $3f
    jr nz, jr_023_7858                            ; $7817: $20 $3f

    jr nc, jr_023_785a                            ; $7819: $30 $3f

    ld hl, $527f                                  ; $781b: $21 $7f $52
    ccf                                           ; $781e: $3f
    jr z, jr_023_7860                             ; $781f: $28 $3f

    dec h                                         ; $7821: $25

jr_023_7822:
    rrca                                          ; $7822: $0f
    add hl, bc                                    ; $7823: $09
    rlca                                          ; $7824: $07
    dec b                                         ; $7825: $05
    rlca                                          ; $7826: $07
    rlca                                          ; $7827: $07
    inc bc                                        ; $7828: $03
    ld [bc], a                                    ; $7829: $02
    rlca                                          ; $782a: $07
    rlca                                          ; $782b: $07
    rlca                                          ; $782c: $07
    dec b                                         ; $782d: $05
    inc bc                                        ; $782e: $03
    inc bc                                        ; $782f: $03
    nop                                           ; $7830: $00
    nop                                           ; $7831: $00
    add b                                         ; $7832: $80
    add b                                         ; $7833: $80
    add b                                         ; $7834: $80
    add b                                         ; $7835: $80
    ret nz                                        ; $7836: $c0

    ld b, b                                       ; $7837: $40
    ret nz                                        ; $7838: $c0

    ld b, b                                       ; $7839: $40
    ret nz                                        ; $783a: $c0

    ld b, b                                       ; $783b: $40
    ret nz                                        ; $783c: $c0

    ret nz                                        ; $783d: $c0

    ret nz                                        ; $783e: $c0

    ret nz                                        ; $783f: $c0

    ret nz                                        ; $7840: $c0

    ret nz                                        ; $7841: $c0

    sub b                                         ; $7842: $90
    ldh a, [$50]                                  ; $7843: $f0 $50
    ldh a, [$f0]                                  ; $7845: $f0 $f0
    ld [hl], b                                    ; $7847: $70
    ldh a, [$90]                                  ; $7848: $f0 $90
    ld hl, sp-$58                                 ; $784a: $f8 $a8
    ld hl, sp-$28                                 ; $784c: $f8 $d8
    jr nc, jr_023_7880                            ; $784e: $30 $30

    inc bc                                        ; $7850: $03
    inc bc                                        ; $7851: $03
    rlca                                          ; $7852: $07
    inc b                                         ; $7853: $04
    rrca                                          ; $7854: $0f
    inc c                                         ; $7855: $0c
    rra                                           ; $7856: $1f
    inc de                                        ; $7857: $13

jr_023_7858:
    rra                                           ; $7858: $1f
    db $10                                        ; $7859: $10

jr_023_785a:
    ccf                                           ; $785a: $3f
    jr nc, @+$81                                  ; $785b: $30 $7f

    ld d, b                                       ; $785d: $50
    ld a, a                                       ; $785e: $7f
    ld c, b                                       ; $785f: $48

jr_023_7860:
    ccf                                           ; $7860: $3f
    ccf                                           ; $7861: $3f
    jr c, @+$31                                   ; $7862: $38 $2f

    jr c, jr_023_78a5                             ; $7864: $38 $3f

    inc c                                         ; $7866: $0c
    rrca                                          ; $7867: $0f
    rrca                                          ; $7868: $0f
    dec bc                                        ; $7869: $0b
    rrca                                          ; $786a: $0f
    rrca                                          ; $786b: $0f
    rrca                                          ; $786c: $0f
    add hl, bc                                    ; $786d: $09
    rlca                                          ; $786e: $07
    rlca                                          ; $786f: $07
    nop                                           ; $7870: $00
    nop                                           ; $7871: $00
    add b                                         ; $7872: $80
    add b                                         ; $7873: $80
    ret nz                                        ; $7874: $c0

    ret nz                                        ; $7875: $c0

    ldh [rNR41], a                                ; $7876: $e0 $20
    ldh [rNR41], a                                ; $7878: $e0 $20
    ldh a, [$30]                                  ; $787a: $f0 $30

jr_023_787c:
    ld hl, sp+$28                                 ; $787c: $f8 $28
    ld hl, sp+$48                                 ; $787e: $f8 $48

jr_023_7880:
    ldh a, [$f0]                                  ; $7880: $f0 $f0
    jr z, jr_023_787c                             ; $7882: $28 $f8

    inc e                                         ; $7884: $1c
    db $f4                                        ; $7885: $f4
    inc a                                         ; $7886: $3c
    db $fc                                        ; $7887: $fc
    or $d6                                        ; $7888: $f6 $d6
    or $f6                                        ; $788a: $f6 $f6
    ldh [$e0], a                                  ; $788c: $e0 $e0
    nop                                           ; $788e: $00
    nop                                           ; $788f: $00
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    ld bc, $0301                                  ; $7892: $01 $01 $03
    ld [bc], a                                    ; $7895: $02
    inc bc                                        ; $7896: $03
    inc bc                                        ; $7897: $03
    inc bc                                        ; $7898: $03
    nop                                           ; $7899: $00
    inc bc                                        ; $789a: $03
    nop                                           ; $789b: $00
    inc bc                                        ; $789c: $03
    ld [bc], a                                    ; $789d: $02
    inc bc                                        ; $789e: $03
    ld [bc], a                                    ; $789f: $02
    inc bc                                        ; $78a0: $03
    inc bc                                        ; $78a1: $03
    inc b                                         ; $78a2: $04
    rlca                                          ; $78a3: $07
    rrca                                          ; $78a4: $0f

jr_023_78a5:
    dec bc                                        ; $78a5: $0b
    rlca                                          ; $78a6: $07
    inc b                                         ; $78a7: $04
    rrca                                          ; $78a8: $0f
    rrca                                          ; $78a9: $0f
    rrca                                          ; $78aa: $0f
    dec bc                                        ; $78ab: $0b
    inc b                                         ; $78ac: $04
    inc b                                         ; $78ad: $04
    nop                                           ; $78ae: $00
    nop                                           ; $78af: $00
    nop                                           ; $78b0: $00
    nop                                           ; $78b1: $00
    add b                                         ; $78b2: $80
    add b                                         ; $78b3: $80
    ret nz                                        ; $78b4: $c0

    ld b, b                                       ; $78b5: $40
    ldh [$a0], a                                  ; $78b6: $e0 $a0
    ldh a, [rNR10]                                ; $78b8: $f0 $10
    ldh a, [$30]                                  ; $78ba: $f0 $30
    ld hl, sp-$58                                 ; $78bc: $f8 $a8
    ldh a, [rNR10]                                ; $78be: $f0 $10
    ldh a, [$50]                                  ; $78c0: $f0 $50
    ldh [$a0], a                                  ; $78c2: $e0 $a0
    ret nz                                        ; $78c4: $c0

    ret nz                                        ; $78c5: $c0

    ret nz                                        ; $78c6: $c0

    ret nz                                        ; $78c7: $c0

    ret nz                                        ; $78c8: $c0

    add b                                         ; $78c9: $80
    ret nz                                        ; $78ca: $c0

    ret nz                                        ; $78cb: $c0

    ret nz                                        ; $78cc: $c0

    ret nz                                        ; $78cd: $c0

    nop                                           ; $78ce: $00
    nop                                           ; $78cf: $00
    nop                                           ; $78d0: $00
    nop                                           ; $78d1: $00
    ld bc, $0301                                  ; $78d2: $01 $01 $03
    ld [bc], a                                    ; $78d5: $02
    inc bc                                        ; $78d6: $03
    ld bc, $0407                                  ; $78d7: $01 $07 $04
    rlca                                          ; $78da: $07
    ld b, $1f                                     ; $78db: $06 $1f
    ld d, $1f                                     ; $78dd: $16 $1f
    ld de, $0c0f                                  ; $78df: $11 $0f $0c
    rra                                           ; $78e2: $1f
    inc d                                         ; $78e3: $14
    scf                                           ; $78e4: $37
    scf                                           ; $78e5: $37
    scf                                           ; $78e6: $37
    inc [hl]                                      ; $78e7: $34
    rlca                                          ; $78e8: $07
    rlca                                          ; $78e9: $07
    rlca                                          ; $78ea: $07
    dec b                                         ; $78eb: $05
    inc bc                                        ; $78ec: $03
    inc bc                                        ; $78ed: $03
    nop                                           ; $78ee: $00
    nop                                           ; $78ef: $00
    nop                                           ; $78f0: $00
    nop                                           ; $78f1: $00
    add b                                         ; $78f2: $80
    add b                                         ; $78f3: $80

Call_023_78f4:
    ret nz                                        ; $78f4: $c0

    ld b, b                                       ; $78f5: $40
    ret nz                                        ; $78f6: $c0

    add b                                         ; $78f7: $80

Call_023_78f8:
    ldh [rNR41], a                                ; $78f8: $e0 $20
    ldh [$60], a                                  ; $78fa: $e0 $60
    ld hl, sp+$68                                 ; $78fc: $f8 $68
    ld hl, sp-$78                                 ; $78fe: $f8 $88
    ldh a, [$30]                                  ; $7900: $f0 $30
    ret nc                                        ; $7902: $d0

    jr nc, @-$06                                  ; $7903: $30 $f8

    ld hl, sp-$20                                 ; $7905: $f8 $e0
    and b                                         ; $7907: $a0
    ldh [$e0], a                                  ; $7908: $e0 $e0
    ret nz                                        ; $790a: $c0

    ret nz                                        ; $790b: $c0

    nop                                           ; $790c: $00
    nop                                           ; $790d: $00
    nop                                           ; $790e: $00
    nop                                           ; $790f: $00
    nop                                           ; $7910: $00
    nop                                           ; $7911: $00
    ld bc, $0301                                  ; $7912: $01 $01 $03
    ld [bc], a                                    ; $7915: $02
    rlca                                          ; $7916: $07
    dec b                                         ; $7917: $05
    rrca                                          ; $7918: $0f
    ld [$0c0f], sp                                ; $7919: $08 $0f $0c
    rra                                           ; $791c: $1f
    dec d                                         ; $791d: $15
    rrca                                          ; $791e: $0f
    ld [$0a0f], sp                                ; $791f: $08 $0f $0a
    rlca                                          ; $7922: $07
    dec b                                         ; $7923: $05
    inc bc                                        ; $7924: $03
    inc bc                                        ; $7925: $03
    inc bc                                        ; $7926: $03
    ld [bc], a                                    ; $7927: $02
    inc bc                                        ; $7928: $03
    inc bc                                        ; $7929: $03
    inc bc                                        ; $792a: $03
    ld bc, $0303                                  ; $792b: $01 $03 $03
    nop                                           ; $792e: $00
    nop                                           ; $792f: $00
    nop                                           ; $7930: $00
    nop                                           ; $7931: $00
    add b                                         ; $7932: $80
    add b                                         ; $7933: $80
    ret nz                                        ; $7934: $c0

    ld b, b                                       ; $7935: $40
    ret nz                                        ; $7936: $c0

    ret nz                                        ; $7937: $c0

    ret nz                                        ; $7938: $c0

    nop                                           ; $7939: $00
    ret nz                                        ; $793a: $c0

    nop                                           ; $793b: $00
    ret nz                                        ; $793c: $c0

    ld b, b                                       ; $793d: $40
    ret nz                                        ; $793e: $c0

    ld b, b                                       ; $793f: $40
    ret nz                                        ; $7940: $c0

    ret nz                                        ; $7941: $c0

    and b                                         ; $7942: $a0
    ldh [$e0], a                                  ; $7943: $e0 $e0
    ld h, b                                       ; $7945: $60
    ldh [$a0], a                                  ; $7946: $e0 $a0
    ldh a, [$90]                                  ; $7948: $f0 $90
    ldh a, [$f0]                                  ; $794a: $f0 $f0
    jr nz, jr_023_796e                            ; $794c: $20 $20

    nop                                           ; $794e: $00
    nop                                           ; $794f: $00
    nop                                           ; $7950: $00
    nop                                           ; $7951: $00
    ld bc, $0301                                  ; $7952: $01 $01 $03
    ld [bc], a                                    ; $7955: $02
    inc bc                                        ; $7956: $03
    ld [bc], a                                    ; $7957: $02
    rlca                                          ; $7958: $07
    dec b                                         ; $7959: $05
    rlca                                          ; $795a: $07
    inc b                                         ; $795b: $04
    rra                                           ; $795c: $1f
    inc d                                         ; $795d: $14
    rra                                           ; $795e: $1f
    db $10                                        ; $795f: $10
    rrca                                          ; $7960: $0f
    rrca                                          ; $7961: $0f
    inc e                                         ; $7962: $1c
    rla                                           ; $7963: $17
    inc b                                         ; $7964: $04
    rlca                                          ; $7965: $07
    rlca                                          ; $7966: $07
    rlca                                          ; $7967: $07
    rlca                                          ; $7968: $07
    rlca                                          ; $7969: $07
    rlca                                          ; $796a: $07
    dec b                                         ; $796b: $05
    inc bc                                        ; $796c: $03
    inc bc                                        ; $796d: $03

jr_023_796e:
    nop                                           ; $796e: $00
    nop                                           ; $796f: $00
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    add b                                         ; $7972: $80
    add b                                         ; $7973: $80
    ret nz                                        ; $7974: $c0

    ld b, b                                       ; $7975: $40
    ret nz                                        ; $7976: $c0

    ld b, b                                       ; $7977: $40
    ldh [$a0], a                                  ; $7978: $e0 $a0
    ldh [rNR41], a                                ; $797a: $e0 $20
    ld hl, sp+$28                                 ; $797c: $f8 $28
    ld hl, sp+$08                                 ; $797e: $f8 $08
    ldh a, [$f0]                                  ; $7980: $f0 $f0
    db $10                                        ; $7982: $10
    ldh a, [$38]                                  ; $7983: $f0 $38
    ld hl, sp-$14                                 ; $7985: $f8 $ec
    db $ec                                        ; $7987: $ec
    db $ec                                        ; $7988: $ec
    db $ec                                        ; $7989: $ec
    ret nz                                        ; $798a: $c0

    ret nz                                        ; $798b: $c0

    nop                                           ; $798c: $00
    nop                                           ; $798d: $00
    nop                                           ; $798e: $00
    nop                                           ; $798f: $00

    db $a2, $79, $a5, $79

    xor e                                         ; $7994: $ab
    ld a, c                                       ; $7995: $79
    xor [hl]                                      ; $7996: $ae
    ld a, c                                       ; $7997: $79
    cp c                                          ; $7998: $b9
    ld a, c                                       ; $7999: $79
    ret nz                                        ; $799a: $c0

    ld a, c                                       ; $799b: $79
    ret z                                         ; $799c: $c8

    ld a, c                                       ; $799d: $79
    call c, $e879                                 ; $799e: $dc $79 $e8
    ld a, c                                       ; $79a1: $79
    nop                                           ; $79a2: $00
    rst $38                                       ; $79a3: $ff
    db $fd                                        ; $79a4: $fd

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a                                    ; $79ab: $02
    rst $38                                       ; $79ac: $ff
    db $fd                                        ; $79ad: $fd
    ld [bc], a                                    ; $79ae: $02
    inc c                                         ; $79af: $0c
    inc bc                                        ; $79b0: $03
    inc c                                         ; $79b1: $0c
    inc b                                         ; $79b2: $04
    jr jr_023_79b7                                ; $79b3: $18 $02

    inc c                                         ; $79b5: $0c
    dec b                                         ; $79b6: $05

jr_023_79b7:
    inc c                                         ; $79b7: $0c
    db $fd                                        ; $79b8: $fd
    ld [bc], a                                    ; $79b9: $02
    jr @+$05                                      ; $79ba: $18 $03

    jr jr_023_79c0                                ; $79bc: $18 $02

    jr @-$01                                      ; $79be: $18 $fd

jr_023_79c0:
    nop                                           ; $79c0: $00
    ld a, [bc]                                    ; $79c1: $0a
    ld b, $1e                                     ; $79c2: $06 $1e
    nop                                           ; $79c4: $00
    ld a, [bc]                                    ; $79c5: $0a
    cp $01                                        ; $79c6: $fe $01
    nop                                           ; $79c8: $00
    ld a, [bc]                                    ; $79c9: $0a
    rlca                                          ; $79ca: $07
    ld a, [bc]                                    ; $79cb: $0a
    nop                                           ; $79cc: $00
    inc bc                                        ; $79cd: $03
    ld [$000a], sp                                ; $79ce: $08 $0a $00
    inc bc                                        ; $79d1: $03
    rlca                                          ; $79d2: $07
    ld a, [bc]                                    ; $79d3: $0a
    nop                                           ; $79d4: $00
    inc bc                                        ; $79d5: $03
    ld [$000a], sp                                ; $79d6: $08 $0a $00
    ld a, [bc]                                    ; $79d9: $0a
    cp $01                                        ; $79da: $fe $01
    nop                                           ; $79dc: $00
    ld a, [bc]                                    ; $79dd: $0a
    add hl, bc                                    ; $79de: $09
    ld [$0800], sp                                ; $79df: $08 $00 $08
    add hl, bc                                    ; $79e2: $09
    ld [$0a00], sp                                ; $79e3: $08 $00 $0a
    cp $01                                        ; $79e6: $fe $01
    ld [bc], a                                    ; $79e8: $02
    ld [de], a                                    ; $79e9: $12
    inc bc                                        ; $79ea: $03
    ld [de], a                                    ; $79eb: $12
    ld [bc], a                                    ; $79ec: $02
    ld e, $05                                     ; $79ed: $1e $05
    ld [de], a                                    ; $79ef: $12
    db $fd                                        ; $79f0: $fd
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
