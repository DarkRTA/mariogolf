; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    db $10                                        ; $4000: $10
    ld b, b                                       ; $4001: $40
    ret nc                                        ; $4002: $d0

    ld b, [hl]                                    ; $4003: $46

    db $50, $4d

    ld d, b                                       ; $4006: $50
    ld d, h                                       ; $4007: $54
    db $10                                        ; $4008: $10
    ld e, h                                       ; $4009: $5c
    ldh a, [$62]                                  ; $400a: $f0 $62
    ret nc                                        ; $400c: $d0

    ld l, d                                       ; $400d: $6a
    ld d, b                                       ; $400e: $50
    ld [hl], d                                    ; $400f: $72
    jr nc, jr_014_4052                            ; $4010: $30 $40

    ret nc                                        ; $4012: $d0

    ld b, b                                       ; $4013: $40
    ld d, b                                       ; $4014: $50
    ld b, c                                       ; $4015: $41
    ret nc                                        ; $4016: $d0

    ld b, c                                       ; $4017: $41
    sub b                                         ; $4018: $90
    ld b, d                                       ; $4019: $42
    ld d, b                                       ; $401a: $50
    ld b, e                                       ; $401b: $43
    ldh a, [rSCX]                                 ; $401c: $f0 $43
    ld [hl], b                                    ; $401e: $70
    ld b, h                                       ; $401f: $44
    db $10                                        ; $4020: $10
    ld b, l                                       ; $4021: $45
    sub b                                         ; $4022: $90
    ld b, l                                       ; $4023: $45
    jr nc, jr_014_406c                            ; $4024: $30 $46

    nop                                           ; $4026: $00
    nop                                           ; $4027: $00
    nop                                           ; $4028: $00
    nop                                           ; $4029: $00
    nop                                           ; $402a: $00
    nop                                           ; $402b: $00
    nop                                           ; $402c: $00
    nop                                           ; $402d: $00
    nop                                           ; $402e: $00
    nop                                           ; $402f: $00
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    nop                                           ; $4034: $00
    nop                                           ; $4035: $00
    nop                                           ; $4036: $00
    nop                                           ; $4037: $00
    nop                                           ; $4038: $00
    nop                                           ; $4039: $00
    ld bc, $0201                                  ; $403a: $01 $01 $02
    inc bc                                        ; $403d: $03
    inc b                                         ; $403e: $04
    rlca                                          ; $403f: $07
    inc b                                         ; $4040: $04
    rlca                                          ; $4041: $07
    add hl, de                                    ; $4042: $19
    rra                                           ; $4043: $1f
    daa                                           ; $4044: $27
    ccf                                           ; $4045: $3f
    ld e, $1f                                     ; $4046: $1e $1f
    ld b, $07                                     ; $4048: $06 $07
    inc bc                                        ; $404a: $03
    inc bc                                        ; $404b: $03
    rlca                                          ; $404c: $07
    inc b                                         ; $404d: $04
    rlca                                          ; $404e: $07
    rlca                                          ; $404f: $07
    dec bc                                        ; $4050: $0b
    rrca                                          ; $4051: $0f

jr_014_4052:
    rla                                           ; $4052: $17
    rra                                           ; $4053: $1f
    rla                                           ; $4054: $17
    rra                                           ; $4055: $1f
    cpl                                           ; $4056: $2f
    ccf                                           ; $4057: $3f
    cpl                                           ; $4058: $2f
    ccf                                           ; $4059: $3f
    ccf                                           ; $405a: $3f
    ccf                                           ; $405b: $3f
    cpl                                           ; $405c: $2f
    ccf                                           ; $405d: $3f
    ld hl, $3c3f                                  ; $405e: $21 $3f $3c
    ccf                                           ; $4061: $3f
    inc de                                        ; $4062: $13
    rra                                           ; $4063: $1f
    rra                                           ; $4064: $1f
    rra                                           ; $4065: $1f
    rra                                           ; $4066: $1f
    inc de                                        ; $4067: $13
    rra                                           ; $4068: $1f
    rra                                           ; $4069: $1f
    halt                                          ; $406a: $76
    ld a, a                                       ; $406b: $7f

jr_014_406c:
    rst $38                                       ; $406c: $ff
    rst $38                                       ; $406d: $ff
    ld a, a                                       ; $406e: $7f
    ld a, a                                       ; $406f: $7f
    nop                                           ; $4070: $00
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00

jr_014_4074:
    nop                                           ; $4074: $00
    nop                                           ; $4075: $00
    ld b, $06                                     ; $4076: $06 $06
    ld a, a                                       ; $4078: $7f
    ld a, a                                       ; $4079: $7f
    adc a                                         ; $407a: $8f
    rst $38                                       ; $407b: $ff
    ld b, $fe                                     ; $407c: $06 $fe
    ld bc, $3fff                                  ; $407e: $01 $ff $3f
    rst $38                                       ; $4081: $ff
    pop af                                        ; $4082: $f1
    rst $38                                       ; $4083: $ff
    db $ed                                        ; $4084: $ed
    rst $38                                       ; $4085: $ff
    ld b, [hl]                                    ; $4086: $46
    ld a, [$f68e]                                 ; $4087: $fa $8e $f6
    ld bc, $82ff                                  ; $408a: $01 $ff $82
    cp $cc                                        ; $408d: $fe $cc
    ld [hl], h                                    ; $408f: $74
    ld hl, sp-$08                                 ; $4090: $f8 $f8
    jr nz, jr_014_4074                            ; $4092: $20 $e0

    ld [hl], b                                    ; $4094: $70
    ldh a, [$f0]                                  ; $4095: $f0 $f0
    ldh a, [$90]                                  ; $4097: $f0 $90
    ldh a, [$88]                                  ; $4099: $f0 $88
    ld hl, sp-$38                                 ; $409b: $f8 $c8
    ld hl, sp-$1c                                 ; $409d: $f8 $e4
    db $fc                                        ; $409f: $fc
    sub [hl]                                      ; $40a0: $96
    sbc [hl]                                      ; $40a1: $9e
    adc a                                         ; $40a2: $8f
    adc a                                         ; $40a3: $8f

jr_014_40a4:
    pop bc                                        ; $40a4: $c1
    pop bc                                        ; $40a5: $c1
    and b                                         ; $40a6: $a0
    ldh [$e0], a                                  ; $40a7: $e0 $e0
    ld h, b                                       ; $40a9: $60
    jr c, jr_014_40a4                             ; $40aa: $38 $f8

    rst $38                                       ; $40ac: $ff
    rst $38                                       ; $40ad: $ff
    ld hl, sp-$08                                 ; $40ae: $f8 $f8
    nop                                           ; $40b0: $00
    nop                                           ; $40b1: $00
    nop                                           ; $40b2: $00
    nop                                           ; $40b3: $00
    nop                                           ; $40b4: $00
    nop                                           ; $40b5: $00
    nop                                           ; $40b6: $00
    nop                                           ; $40b7: $00
    nop                                           ; $40b8: $00
    nop                                           ; $40b9: $00
    nop                                           ; $40ba: $00
    nop                                           ; $40bb: $00
    nop                                           ; $40bc: $00
    nop                                           ; $40bd: $00
    nop                                           ; $40be: $00
    nop                                           ; $40bf: $00
    nop                                           ; $40c0: $00
    nop                                           ; $40c1: $00
    nop                                           ; $40c2: $00
    nop                                           ; $40c3: $00
    add b                                         ; $40c4: $80
    add b                                         ; $40c5: $80
    adc $ce                                       ; $40c6: $ce $ce
    ld [hl], l                                    ; $40c8: $75
    ld a, e                                       ; $40c9: $7b
    ccf                                           ; $40ca: $3f
    ccf                                           ; $40cb: $3f
    cp $fe                                        ; $40cc: $fe $fe
    nop                                           ; $40ce: $00
    nop                                           ; $40cf: $00
    nop                                           ; $40d0: $00
    nop                                           ; $40d1: $00
    nop                                           ; $40d2: $00
    nop                                           ; $40d3: $00
    nop                                           ; $40d4: $00
    nop                                           ; $40d5: $00
    nop                                           ; $40d6: $00
    nop                                           ; $40d7: $00
    nop                                           ; $40d8: $00
    nop                                           ; $40d9: $00
    ld bc, $0201                                  ; $40da: $01 $01 $02
    inc bc                                        ; $40dd: $03
    inc b                                         ; $40de: $04
    rlca                                          ; $40df: $07
    inc b                                         ; $40e0: $04
    rlca                                          ; $40e1: $07
    add hl, de                                    ; $40e2: $19
    rra                                           ; $40e3: $1f
    daa                                           ; $40e4: $27
    ccf                                           ; $40e5: $3f
    ld e, $1f                                     ; $40e6: $1e $1f
    ld b, $07                                     ; $40e8: $06 $07
    inc bc                                        ; $40ea: $03
    inc bc                                        ; $40eb: $03
    rlca                                          ; $40ec: $07
    inc b                                         ; $40ed: $04
    rlca                                          ; $40ee: $07
    rlca                                          ; $40ef: $07
    dec bc                                        ; $40f0: $0b
    rrca                                          ; $40f1: $0f
    ld d, $1f                                     ; $40f2: $16 $1f
    ld d, $1f                                     ; $40f4: $16 $1f
    cpl                                           ; $40f6: $2f
    ccf                                           ; $40f7: $3f
    ld l, $3f                                     ; $40f8: $2e $3f
    ld a, $3f                                     ; $40fa: $3e $3f
    ld l, $3f                                     ; $40fc: $2e $3f
    ld hl, $3c3f                                  ; $40fe: $21 $3f $3c
    ccf                                           ; $4101: $3f
    inc de                                        ; $4102: $13
    rra                                           ; $4103: $1f
    rra                                           ; $4104: $1f
    rra                                           ; $4105: $1f
    rra                                           ; $4106: $1f
    inc de                                        ; $4107: $13
    rra                                           ; $4108: $1f
    rra                                           ; $4109: $1f
    halt                                          ; $410a: $76
    ld a, a                                       ; $410b: $7f
    rst $38                                       ; $410c: $ff
    rst $38                                       ; $410d: $ff
    ld a, a                                       ; $410e: $7f
    ld a, a                                       ; $410f: $7f
    nop                                           ; $4110: $00
    nop                                           ; $4111: $00
    nop                                           ; $4112: $00
    nop                                           ; $4113: $00
    nop                                           ; $4114: $00
    nop                                           ; $4115: $00
    ld b, $06                                     ; $4116: $06 $06
    ld a, a                                       ; $4118: $7f
    ld a, a                                       ; $4119: $7f
    adc a                                         ; $411a: $8f
    rst $38                                       ; $411b: $ff
    ld b, $fe                                     ; $411c: $06 $fe
    ld bc, $3fff                                  ; $411e: $01 $ff $3f
    rst $38                                       ; $4121: $ff
    pop af                                        ; $4122: $f1
    rst $38                                       ; $4123: $ff
    db $ed                                        ; $4124: $ed
    rst $38                                       ; $4125: $ff
    ld b, [hl]                                    ; $4126: $46
    ld a, [$f68e]                                 ; $4127: $fa $8e $f6
    ld bc, $82ff                                  ; $412a: $01 $ff $82
    cp $cc                                        ; $412d: $fe $cc
    ld [hl], h                                    ; $412f: $74
    ld hl, sp-$08                                 ; $4130: $f8 $f8
    ld h, b                                       ; $4132: $60
    ldh [$e0], a                                  ; $4133: $e0 $e0
    ldh [$e0], a                                  ; $4135: $e0 $e0
    ldh [$50], a                                  ; $4137: $e0 $50
    ldh a, [$50]                                  ; $4139: $f0 $50
    ldh a, [rNR41]                                ; $413b: $f0 $20
    ldh [rSVBK], a                                ; $413d: $e0 $70
    ldh a, [$d8]                                  ; $413f: $f0 $d8
    add sp, -$08                                  ; $4141: $e8 $f8
    ld hl, sp-$10                                 ; $4143: $f8 $f0
    ldh a, [$a0]                                  ; $4145: $f0 $a0
    ldh [$e0], a                                  ; $4147: $e0 $e0
    ld h, b                                       ; $4149: $60
    jr c, @-$06                                   ; $414a: $38 $f8

    db $fc                                        ; $414c: $fc
    db $fc                                        ; $414d: $fc
    ld hl, sp-$08                                 ; $414e: $f8 $f8
    nop                                           ; $4150: $00
    nop                                           ; $4151: $00
    nop                                           ; $4152: $00
    nop                                           ; $4153: $00
    nop                                           ; $4154: $00
    nop                                           ; $4155: $00
    nop                                           ; $4156: $00
    nop                                           ; $4157: $00
    nop                                           ; $4158: $00
    nop                                           ; $4159: $00
    inc bc                                        ; $415a: $03
    inc bc                                        ; $415b: $03
    inc b                                         ; $415c: $04
    rlca                                          ; $415d: $07
    ld [$080f], sp                                ; $415e: $08 $0f $08
    rrca                                          ; $4161: $0f
    inc sp                                        ; $4162: $33
    ccf                                           ; $4163: $3f
    ld c, a                                       ; $4164: $4f
    ld a, a                                       ; $4165: $7f
    inc a                                         ; $4166: $3c
    ccf                                           ; $4167: $3f
    dec c                                         ; $4168: $0d
    rrca                                          ; $4169: $0f
    ld b, $07                                     ; $416a: $06 $07
    rrca                                          ; $416c: $0f
    add hl, bc                                    ; $416d: $09
    rrca                                          ; $416e: $0f
    ld c, $77                                     ; $416f: $0e $77
    ld a, a                                       ; $4171: $7f
    ei                                            ; $4172: $fb
    cp a                                          ; $4173: $bf
    push de                                       ; $4174: $d5
    rst $38                                       ; $4175: $ff
    ld hl, sp-$09                                 ; $4176: $f8 $f7
    ld e, e                                       ; $4178: $5b
    ld [hl], a                                    ; $4179: $77
    ld a, a                                       ; $417a: $7f
    ld a, a                                       ; $417b: $7f
    ccf                                           ; $417c: $3f
    ccf                                           ; $417d: $3f
    daa                                           ; $417e: $27
    ccf                                           ; $417f: $3f
    dec a                                         ; $4180: $3d
    ccf                                           ; $4181: $3f
    inc de                                        ; $4182: $13
    rra                                           ; $4183: $1f
    rra                                           ; $4184: $1f
    rra                                           ; $4185: $1f
    rra                                           ; $4186: $1f
    inc de                                        ; $4187: $13
    rra                                           ; $4188: $1f
    rra                                           ; $4189: $1f
    halt                                          ; $418a: $76
    ld a, a                                       ; $418b: $7f
    rst $38                                       ; $418c: $ff
    rst $38                                       ; $418d: $ff
    ld a, a                                       ; $418e: $7f
    ld a, a                                       ; $418f: $7f
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    nop                                           ; $4194: $00
    nop                                           ; $4195: $00
    inc c                                         ; $4196: $0c
    inc c                                         ; $4197: $0c
    cp $fe                                        ; $4198: $fe $fe
    ld e, $fe                                     ; $419a: $1e $fe
    inc c                                         ; $419c: $0c
    db $fc                                        ; $419d: $fc
    ld [bc], a                                    ; $419e: $02
    cp $7e                                        ; $419f: $fe $7e
    cp $e2                                        ; $41a1: $fe $e2
    cp $da                                        ; $41a3: $fe $da
    cp $8c                                        ; $41a5: $fe $8c
    db $f4                                        ; $41a7: $f4
    inc e                                         ; $41a8: $1c
    db $ec                                        ; $41a9: $ec
    ld [bc], a                                    ; $41aa: $02
    cp $04                                        ; $41ab: $fe $04
    db $fc                                        ; $41ad: $fc
    sbc b                                         ; $41ae: $98
    add sp, -$10                                  ; $41af: $e8 $f0
    ldh a, [$e0]                                  ; $41b1: $f0 $e0
    ldh [$e0], a                                  ; $41b3: $e0 $e0
    ldh [$e0], a                                  ; $41b5: $e0 $e0
    ldh [$c0], a                                  ; $41b7: $e0 $c0
    ret nz                                        ; $41b9: $c0

    ret nz                                        ; $41ba: $c0

    ret nz                                        ; $41bb: $c0

    add b                                         ; $41bc: $80
    add b                                         ; $41bd: $80
    add b                                         ; $41be: $80
    add b                                         ; $41bf: $80
    add b                                         ; $41c0: $80
    add b                                         ; $41c1: $80
    add b                                         ; $41c2: $80
    add b                                         ; $41c3: $80

jr_014_41c4:
    ret nz                                        ; $41c4: $c0

    ret nz                                        ; $41c5: $c0

    and b                                         ; $41c6: $a0
    ldh [$e0], a                                  ; $41c7: $e0 $e0
    ld h, b                                       ; $41c9: $60
    jr c, jr_014_41c4                             ; $41ca: $38 $f8

    db $fc                                        ; $41cc: $fc
    db $fc                                        ; $41cd: $fc
    ld hl, sp-$08                                 ; $41ce: $f8 $f8
    nop                                           ; $41d0: $00
    nop                                           ; $41d1: $00
    nop                                           ; $41d2: $00
    nop                                           ; $41d3: $00
    nop                                           ; $41d4: $00
    nop                                           ; $41d5: $00
    nop                                           ; $41d6: $00
    nop                                           ; $41d7: $00
    nop                                           ; $41d8: $00
    nop                                           ; $41d9: $00
    nop                                           ; $41da: $00
    nop                                           ; $41db: $00
    nop                                           ; $41dc: $00
    nop                                           ; $41dd: $00
    nop                                           ; $41de: $00
    nop                                           ; $41df: $00
    nop                                           ; $41e0: $00
    nop                                           ; $41e1: $00
    nop                                           ; $41e2: $00
    nop                                           ; $41e3: $00
    nop                                           ; $41e4: $00
    nop                                           ; $41e5: $00
    nop                                           ; $41e6: $00
    nop                                           ; $41e7: $00
    nop                                           ; $41e8: $00
    nop                                           ; $41e9: $00
    ld bc, $0301                                  ; $41ea: $01 $01 $03
    ld [bc], a                                    ; $41ed: $02
    inc bc                                        ; $41ee: $03
    inc bc                                        ; $41ef: $03
    ld bc, $0001                                  ; $41f0: $01 $01 $00
    nop                                           ; $41f3: $00
    nop                                           ; $41f4: $00
    nop                                           ; $41f5: $00
    nop                                           ; $41f6: $00
    nop                                           ; $41f7: $00
    nop                                           ; $41f8: $00
    nop                                           ; $41f9: $00
    nop                                           ; $41fa: $00
    nop                                           ; $41fb: $00
    nop                                           ; $41fc: $00
    nop                                           ; $41fd: $00
    nop                                           ; $41fe: $00
    nop                                           ; $41ff: $00
    nop                                           ; $4200: $00
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
    nop                                           ; $4203: $00
    nop                                           ; $4204: $00
    nop                                           ; $4205: $00
    nop                                           ; $4206: $00
    nop                                           ; $4207: $00
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    nop                                           ; $420a: $00
    nop                                           ; $420b: $00
    nop                                           ; $420c: $00
    nop                                           ; $420d: $00
    nop                                           ; $420e: $00
    nop                                           ; $420f: $00
    nop                                           ; $4210: $00
    nop                                           ; $4211: $00
    nop                                           ; $4212: $00
    nop                                           ; $4213: $00
    nop                                           ; $4214: $00
    nop                                           ; $4215: $00
    nop                                           ; $4216: $00
    nop                                           ; $4217: $00
    nop                                           ; $4218: $00
    nop                                           ; $4219: $00
    inc bc                                        ; $421a: $03
    inc bc                                        ; $421b: $03
    inc b                                         ; $421c: $04
    rlca                                          ; $421d: $07
    ld [$080f], sp                                ; $421e: $08 $0f $08
    rrca                                          ; $4221: $0f
    inc sp                                        ; $4222: $33
    ccf                                           ; $4223: $3f
    ld c, a                                       ; $4224: $4f
    ld a, a                                       ; $4225: $7f
    inc a                                         ; $4226: $3c
    ccf                                           ; $4227: $3f
    dec c                                         ; $4228: $0d
    rrca                                          ; $4229: $0f
    add [hl]                                      ; $422a: $86
    add a                                         ; $422b: $87
    rst $08                                       ; $422c: $cf
    ret                                           ; $422d: $c9


    ld d, a                                       ; $422e: $57
    sbc $ef                                       ; $422f: $de $ef
    rst $38                                       ; $4231: $ff
    ld c, [hl]                                    ; $4232: $4e
    ld a, e                                       ; $4233: $7b
    cp a                                          ; $4234: $bf
    di                                            ; $4235: $f3
    cp a                                          ; $4236: $bf
    rst $38                                       ; $4237: $ff
    ld a, a                                       ; $4238: $7f
    ld a, a                                       ; $4239: $7f
    ccf                                           ; $423a: $3f
    ccf                                           ; $423b: $3f
    cpl                                           ; $423c: $2f
    ccf                                           ; $423d: $3f
    daa                                           ; $423e: $27
    ccf                                           ; $423f: $3f
    dec a                                         ; $4240: $3d
    ccf                                           ; $4241: $3f
    inc de                                        ; $4242: $13
    rra                                           ; $4243: $1f
    rra                                           ; $4244: $1f
    rra                                           ; $4245: $1f
    rra                                           ; $4246: $1f
    inc de                                        ; $4247: $13
    rra                                           ; $4248: $1f
    rra                                           ; $4249: $1f
    halt                                          ; $424a: $76
    ld a, a                                       ; $424b: $7f
    rst $38                                       ; $424c: $ff
    rst $38                                       ; $424d: $ff
    ld a, a                                       ; $424e: $7f
    ld a, a                                       ; $424f: $7f
    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    nop                                           ; $4253: $00
    nop                                           ; $4254: $00
    nop                                           ; $4255: $00
    inc c                                         ; $4256: $0c
    inc c                                         ; $4257: $0c
    cp $fe                                        ; $4258: $fe $fe
    ld e, $fe                                     ; $425a: $1e $fe
    inc c                                         ; $425c: $0c
    db $fc                                        ; $425d: $fc
    ld [bc], a                                    ; $425e: $02
    cp $7e                                        ; $425f: $fe $7e
    cp $e2                                        ; $4261: $fe $e2
    cp $da                                        ; $4263: $fe $da
    cp $8c                                        ; $4265: $fe $8c
    db $f4                                        ; $4267: $f4
    inc e                                         ; $4268: $1c
    db $ec                                        ; $4269: $ec
    ld [bc], a                                    ; $426a: $02
    cp $04                                        ; $426b: $fe $04
    db $fc                                        ; $426d: $fc
    sbc b                                         ; $426e: $98
    add sp, -$10                                  ; $426f: $e8 $f0
    ldh a, [$e0]                                  ; $4271: $f0 $e0
    ldh [rNR41], a                                ; $4273: $e0 $20
    ldh [rLCDC], a                                ; $4275: $e0 $40
    ret nz                                        ; $4277: $c0

    ret nz                                        ; $4278: $c0

    ret nz                                        ; $4279: $c0

    ret nz                                        ; $427a: $c0

    ret nz                                        ; $427b: $c0

    add b                                         ; $427c: $80
    add b                                         ; $427d: $80
    add b                                         ; $427e: $80
    add b                                         ; $427f: $80
    add b                                         ; $4280: $80
    add b                                         ; $4281: $80
    add b                                         ; $4282: $80
    add b                                         ; $4283: $80

jr_014_4284:
    ret nz                                        ; $4284: $c0

    ret nz                                        ; $4285: $c0

    and b                                         ; $4286: $a0
    ldh [$e0], a                                  ; $4287: $e0 $e0
    ld h, b                                       ; $4289: $60
    jr c, jr_014_4284                             ; $428a: $38 $f8

    db $fc                                        ; $428c: $fc
    db $fc                                        ; $428d: $fc
    ld hl, sp-$08                                 ; $428e: $f8 $f8
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00
    nop                                           ; $4293: $00
    nop                                           ; $4294: $00
    nop                                           ; $4295: $00
    nop                                           ; $4296: $00
    nop                                           ; $4297: $00
    nop                                           ; $4298: $00
    nop                                           ; $4299: $00
    nop                                           ; $429a: $00
    nop                                           ; $429b: $00
    ld b, $06                                     ; $429c: $06 $06
    rrca                                          ; $429e: $0f
    dec bc                                        ; $429f: $0b
    dec bc                                        ; $42a0: $0b
    rrca                                          ; $42a1: $0f
    rrca                                          ; $42a2: $0f
    rrca                                          ; $42a3: $0f
    ld b, $06                                     ; $42a4: $06 $06
    inc bc                                        ; $42a6: $03
    inc bc                                        ; $42a7: $03
    ld bc, $0001                                  ; $42a8: $01 $01 $00
    nop                                           ; $42ab: $00
    nop                                           ; $42ac: $00
    nop                                           ; $42ad: $00
    nop                                           ; $42ae: $00
    nop                                           ; $42af: $00
    ld bc, $0101                                  ; $42b0: $01 $01 $01
    ld bc, $0000                                  ; $42b3: $01 $00 $00
    nop                                           ; $42b6: $00
    nop                                           ; $42b7: $00
    nop                                           ; $42b8: $00
    nop                                           ; $42b9: $00
    nop                                           ; $42ba: $00
    nop                                           ; $42bb: $00
    nop                                           ; $42bc: $00
    nop                                           ; $42bd: $00
    nop                                           ; $42be: $00
    nop                                           ; $42bf: $00
    nop                                           ; $42c0: $00
    nop                                           ; $42c1: $00
    nop                                           ; $42c2: $00
    nop                                           ; $42c3: $00
    nop                                           ; $42c4: $00
    nop                                           ; $42c5: $00
    nop                                           ; $42c6: $00
    nop                                           ; $42c7: $00
    nop                                           ; $42c8: $00
    nop                                           ; $42c9: $00
    nop                                           ; $42ca: $00
    nop                                           ; $42cb: $00
    nop                                           ; $42cc: $00
    nop                                           ; $42cd: $00
    nop                                           ; $42ce: $00
    nop                                           ; $42cf: $00
    nop                                           ; $42d0: $00
    nop                                           ; $42d1: $00
    nop                                           ; $42d2: $00
    nop                                           ; $42d3: $00
    nop                                           ; $42d4: $00
    nop                                           ; $42d5: $00
    nop                                           ; $42d6: $00
    nop                                           ; $42d7: $00
    nop                                           ; $42d8: $00
    nop                                           ; $42d9: $00
    inc bc                                        ; $42da: $03
    inc bc                                        ; $42db: $03
    inc b                                         ; $42dc: $04
    rlca                                          ; $42dd: $07
    ld [$080f], sp                                ; $42de: $08 $0f $08
    rrca                                          ; $42e1: $0f
    inc sp                                        ; $42e2: $33
    ccf                                           ; $42e3: $3f
    ld c, a                                       ; $42e4: $4f
    ld a, a                                       ; $42e5: $7f
    inc a                                         ; $42e6: $3c
    ccf                                           ; $42e7: $3f
    db $ed                                        ; $42e8: $ed
    rst $28                                       ; $42e9: $ef
    sbc [hl]                                      ; $42ea: $9e
    rst $38                                       ; $42eb: $ff
    cp a                                          ; $42ec: $bf
    rst $20                                       ; $42ed: $e7
    ei                                            ; $42ee: $fb
    xor $31                                       ; $42ef: $ee $31
    rst $38                                       ; $42f1: $ff
    ld l, d                                       ; $42f2: $6a
    rst $38                                       ; $42f3: $ff
    rst $18                                       ; $42f4: $df
    rst $38                                       ; $42f5: $ff
    ld e, a                                       ; $42f6: $5f
    ld a, a                                       ; $42f7: $7f
    ld c, a                                       ; $42f8: $4f
    ld a, a                                       ; $42f9: $7f
    ccf                                           ; $42fa: $3f
    ccf                                           ; $42fb: $3f
    cpl                                           ; $42fc: $2f
    ccf                                           ; $42fd: $3f
    daa                                           ; $42fe: $27
    ccf                                           ; $42ff: $3f
    dec a                                         ; $4300: $3d
    ccf                                           ; $4301: $3f
    inc de                                        ; $4302: $13
    rra                                           ; $4303: $1f
    rra                                           ; $4304: $1f
    rra                                           ; $4305: $1f
    rra                                           ; $4306: $1f
    inc de                                        ; $4307: $13
    rra                                           ; $4308: $1f
    rra                                           ; $4309: $1f
    halt                                          ; $430a: $76
    ld a, a                                       ; $430b: $7f
    rst $38                                       ; $430c: $ff
    rst $38                                       ; $430d: $ff
    ld a, a                                       ; $430e: $7f
    ld a, a                                       ; $430f: $7f
    nop                                           ; $4310: $00
    nop                                           ; $4311: $00
    nop                                           ; $4312: $00
    nop                                           ; $4313: $00
    nop                                           ; $4314: $00
    nop                                           ; $4315: $00
    inc c                                         ; $4316: $0c
    inc c                                         ; $4317: $0c
    cp $fe                                        ; $4318: $fe $fe
    ld e, $fe                                     ; $431a: $1e $fe
    inc c                                         ; $431c: $0c
    db $fc                                        ; $431d: $fc
    ld [bc], a                                    ; $431e: $02
    cp $7e                                        ; $431f: $fe $7e
    cp $e2                                        ; $4321: $fe $e2
    cp $da                                        ; $4323: $fe $da
    cp $8c                                        ; $4325: $fe $8c
    db $f4                                        ; $4327: $f4
    inc e                                         ; $4328: $1c
    db $ec                                        ; $4329: $ec
    ld [bc], a                                    ; $432a: $02
    cp $04                                        ; $432b: $fe $04
    db $fc                                        ; $432d: $fc
    sbc b                                         ; $432e: $98
    add sp, -$10                                  ; $432f: $e8 $f0
    ldh a, [$60]                                  ; $4331: $f0 $60
    ldh [$a0], a                                  ; $4333: $e0 $a0
    ldh [rLCDC], a                                ; $4335: $e0 $40
    ret nz                                        ; $4337: $c0

    ret nz                                        ; $4338: $c0

    ret nz                                        ; $4339: $c0

    ret nz                                        ; $433a: $c0

    ret nz                                        ; $433b: $c0

    add b                                         ; $433c: $80
    add b                                         ; $433d: $80
    add b                                         ; $433e: $80
    add b                                         ; $433f: $80
    add b                                         ; $4340: $80
    add b                                         ; $4341: $80
    add b                                         ; $4342: $80
    add b                                         ; $4343: $80

jr_014_4344:
    ret nz                                        ; $4344: $c0

    ret nz                                        ; $4345: $c0

    and b                                         ; $4346: $a0
    ldh [$e0], a                                  ; $4347: $e0 $e0
    ld h, b                                       ; $4349: $60
    jr c, jr_014_4344                             ; $434a: $38 $f8

    db $fc                                        ; $434c: $fc
    db $fc                                        ; $434d: $fc
    ld hl, sp-$08                                 ; $434e: $f8 $f8
    nop                                           ; $4350: $00
    nop                                           ; $4351: $00
    nop                                           ; $4352: $00
    nop                                           ; $4353: $00
    nop                                           ; $4354: $00
    nop                                           ; $4355: $00
    nop                                           ; $4356: $00
    nop                                           ; $4357: $00
    nop                                           ; $4358: $00
    nop                                           ; $4359: $00
    nop                                           ; $435a: $00
    nop                                           ; $435b: $00
    ld bc, $0201                                  ; $435c: $01 $01 $02
    inc bc                                        ; $435f: $03
    inc b                                         ; $4360: $04
    rlca                                          ; $4361: $07
    inc b                                         ; $4362: $04
    rlca                                          ; $4363: $07
    add hl, de                                    ; $4364: $19
    rra                                           ; $4365: $1f
    daa                                           ; $4366: $27
    ccf                                           ; $4367: $3f
    ld e, $1f                                     ; $4368: $1e $1f
    ld b, $07                                     ; $436a: $06 $07
    inc bc                                        ; $436c: $03
    inc bc                                        ; $436d: $03
    rlca                                          ; $436e: $07
    inc b                                         ; $436f: $04
    dec bc                                        ; $4370: $0b
    rrca                                          ; $4371: $0f
    rla                                           ; $4372: $17
    rra                                           ; $4373: $1f
    cpl                                           ; $4374: $2f
    ccf                                           ; $4375: $3f
    ld l, $3f                                     ; $4376: $2e $3f
    ld e, [hl]                                    ; $4378: $5e
    ld a, a                                       ; $4379: $7f
    ld e, a                                       ; $437a: $5f
    ld a, a                                       ; $437b: $7f
    ccf                                           ; $437c: $3f
    ccf                                           ; $437d: $3f
    cpl                                           ; $437e: $2f
    ccf                                           ; $437f: $3f
    inc a                                         ; $4380: $3c
    ccf                                           ; $4381: $3f
    inc de                                        ; $4382: $13
    rra                                           ; $4383: $1f
    rrca                                          ; $4384: $0f
    rrca                                          ; $4385: $0f
    rrca                                          ; $4386: $0f
    inc c                                         ; $4387: $0c
    rrca                                          ; $4388: $0f
    rrca                                          ; $4389: $0f
    halt                                          ; $438a: $76
    ld a, a                                       ; $438b: $7f
    rst $38                                       ; $438c: $ff
    rst $38                                       ; $438d: $ff
    ld a, a                                       ; $438e: $7f
    ld a, a                                       ; $438f: $7f
    nop                                           ; $4390: $00
    nop                                           ; $4391: $00
    nop                                           ; $4392: $00
    nop                                           ; $4393: $00
    nop                                           ; $4394: $00
    nop                                           ; $4395: $00
    nop                                           ; $4396: $00
    nop                                           ; $4397: $00
    ld b, $06                                     ; $4398: $06 $06
    ld a, a                                       ; $439a: $7f
    ld a, a                                       ; $439b: $7f
    adc a                                         ; $439c: $8f
    rst $38                                       ; $439d: $ff
    ld b, $fe                                     ; $439e: $06 $fe
    ld bc, $3fff                                  ; $43a0: $01 $ff $3f
    rst $38                                       ; $43a3: $ff
    pop af                                        ; $43a4: $f1
    rst $38                                       ; $43a5: $ff
    db $ed                                        ; $43a6: $ed
    rst $38                                       ; $43a7: $ff
    ld b, [hl]                                    ; $43a8: $46
    ld a, [$f68e]                                 ; $43a9: $fa $8e $f6
    ld bc, $82ff                                  ; $43ac: $01 $ff $82
    cp $cc                                        ; $43af: $fe $cc
    ld [hl], h                                    ; $43b1: $74
    ld hl, sp-$08                                 ; $43b2: $f8 $f8
    ldh [$a0], a                                  ; $43b4: $e0 $a0
    ld d, b                                       ; $43b6: $50
    ldh a, [$e8]                                  ; $43b7: $f0 $e8
    ld hl, sp-$28                                 ; $43b9: $f8 $d8
    ld hl, sp-$74                                 ; $43bb: $f8 $8c
    db $fc                                        ; $43bd: $fc
    call nz, $b4fc                                ; $43be: $c4 $fc $b4
    cp h                                          ; $43c1: $bc
    adc [hl]                                      ; $43c2: $8e
    adc [hl]                                      ; $43c3: $8e

jr_014_43c4:
    jp $a1c3                                      ; $43c4: $c3 $c3 $a1


    pop hl                                        ; $43c7: $e1
    ldh [$60], a                                  ; $43c8: $e0 $60
    jr c, jr_014_43c4                             ; $43ca: $38 $f8

    rst $38                                       ; $43cc: $ff
    rst $38                                       ; $43cd: $ff
    ld hl, sp-$08                                 ; $43ce: $f8 $f8
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
    adc $ce                                       ; $43e6: $ce $ce
    ld [hl], l                                    ; $43e8: $75
    ld a, e                                       ; $43e9: $7b
    ccf                                           ; $43ea: $3f
    ccf                                           ; $43eb: $3f
    cp $fe                                        ; $43ec: $fe $fe
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
    inc bc                                        ; $43fa: $03
    inc bc                                        ; $43fb: $03
    inc b                                         ; $43fc: $04
    rlca                                          ; $43fd: $07
    inc b                                         ; $43fe: $04
    rlca                                          ; $43ff: $07
    ld [$080f], sp                                ; $4400: $08 $0f $08
    rrca                                          ; $4403: $0f
    inc d                                         ; $4404: $14
    rra                                           ; $4405: $1f
    inc de                                        ; $4406: $13
    rra                                           ; $4407: $1f
    ld [$0f0f], sp                                ; $4408: $08 $0f $0f
    rrca                                          ; $440b: $0f
    rra                                           ; $440c: $1f
    inc e                                         ; $440d: $1c
    rla                                           ; $440e: $17
    rra                                           ; $440f: $1f
    ld l, $3f                                     ; $4410: $2e $3f
    ld l, $3f                                     ; $4412: $2e $3f
    ld e, a                                       ; $4414: $5f
    ld a, a                                       ; $4415: $7f
    ld e, a                                       ; $4416: $5f
    ld a, a                                       ; $4417: $7f
    ld e, a                                       ; $4418: $5f
    ld a, a                                       ; $4419: $7f
    ld a, a                                       ; $441a: $7f
    ld a, a                                       ; $441b: $7f
    ld c, a                                       ; $441c: $4f
    ld a, a                                       ; $441d: $7f
    ld b, b                                       ; $441e: $40
    ld a, a                                       ; $441f: $7f
    jr c, jr_014_4461                             ; $4420: $38 $3f

    cpl                                           ; $4422: $2f
    ccf                                           ; $4423: $3f
    inc e                                         ; $4424: $1c
    rra                                           ; $4425: $1f
    rra                                           ; $4426: $1f
    ld d, $2e                                     ; $4427: $16 $2e
    ccf                                           ; $4429: $3f
    ld a, l                                       ; $442a: $7d
    ld a, a                                       ; $442b: $7f
    rst $38                                       ; $442c: $ff
    rst $38                                       ; $442d: $ff
    ld a, a                                       ; $442e: $7f
    ld a, a                                       ; $442f: $7f
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    inc c                                         ; $4436: $0c
    inc c                                         ; $4437: $0c
    cp $fe                                        ; $4438: $fe $fe
    ld c, $fe                                     ; $443a: $0e $fe
    inc b                                         ; $443c: $04
    db $fc                                        ; $443d: $fc
    ld [bc], a                                    ; $443e: $02
    cp $02                                        ; $443f: $fe $02
    cp $04                                        ; $4441: $fe $04
    db $fc                                        ; $4443: $fc
    inc e                                         ; $4444: $1c
    db $fc                                        ; $4445: $fc
    halt                                          ; $4446: $76
    cp $a2                                        ; $4447: $fe $a2
    cp $a4                                        ; $4449: $fe $a4
    db $fc                                        ; $444b: $fc
    ret z                                         ; $444c: $c8

    ld hl, sp-$0a                                 ; $444d: $f8 $f6
    or $67                                        ; $444f: $f6 $67
    push hl                                       ; $4451: $e5
    xor e                                         ; $4452: $ab
    rst $28                                       ; $4453: $ef
    cp $fe                                        ; $4454: $fe $fe
    ldh a, [$f0]                                  ; $4456: $f0 $f0
    ldh a, [$f0]                                  ; $4458: $f0 $f0
    ldh [$e0], a                                  ; $445a: $e0 $e0
    add b                                         ; $445c: $80
    add b                                         ; $445d: $80
    add b                                         ; $445e: $80
    add b                                         ; $445f: $80
    add b                                         ; $4460: $80

jr_014_4461:
    add b                                         ; $4461: $80
    add b                                         ; $4462: $80
    add b                                         ; $4463: $80
    ret nz                                        ; $4464: $c0

    ret nz                                        ; $4465: $c0

    ret nz                                        ; $4466: $c0

    ld b, b                                       ; $4467: $40
    ld b, b                                       ; $4468: $40
    ret nz                                        ; $4469: $c0

    cp b                                          ; $446a: $b8
    ld hl, sp-$04                                 ; $446b: $f8 $fc
    db $fc                                        ; $446d: $fc
    ld hl, sp-$08                                 ; $446e: $f8 $f8
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
    inc bc                                        ; $447a: $03
    inc bc                                        ; $447b: $03
    rlca                                          ; $447c: $07
    dec b                                         ; $447d: $05
    dec b                                         ; $447e: $05
    rlca                                          ; $447f: $07
    rlca                                          ; $4480: $07
    rlca                                          ; $4481: $07
    inc bc                                        ; $4482: $03
    inc bc                                        ; $4483: $03
    ld bc, $0001                                  ; $4484: $01 $01 $00
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
    inc bc                                        ; $4498: $03
    inc bc                                        ; $4499: $03
    inc b                                         ; $449a: $04
    rlca                                          ; $449b: $07
    adc b                                         ; $449c: $88
    adc a                                         ; $449d: $8f
    adc b                                         ; $449e: $88
    adc a                                         ; $449f: $8f
    sub b                                         ; $44a0: $90
    sbc a                                         ; $44a1: $9f
    db $10                                        ; $44a2: $10
    rra                                           ; $44a3: $1f
    sbc h                                         ; $44a4: $9c
    sbc a                                         ; $44a5: $9f
    db $d3                                        ; $44a6: $d3
    rst $18                                       ; $44a7: $df
    ld a, h                                       ; $44a8: $7c
    ld a, a                                       ; $44a9: $7f
    ld a, a                                       ; $44aa: $7f
    ld c, a                                       ; $44ab: $4f
    ld a, a                                       ; $44ac: $7f
    ld e, c                                       ; $44ad: $59
    daa                                           ; $44ae: $27
    ld a, $2f                                     ; $44af: $3e $2f
    ccf                                           ; $44b1: $3f
    cpl                                           ; $44b2: $2f
    ccf                                           ; $44b3: $3f
    ld e, a                                       ; $44b4: $5f
    ld a, a                                       ; $44b5: $7f
    ld e, a                                       ; $44b6: $5f
    ld a, a                                       ; $44b7: $7f
    ld e, a                                       ; $44b8: $5f
    ld a, a                                       ; $44b9: $7f
    ld a, a                                       ; $44ba: $7f
    ld a, a                                       ; $44bb: $7f
    ld c, a                                       ; $44bc: $4f
    ld a, a                                       ; $44bd: $7f
    ld d, b                                       ; $44be: $50
    ld a, a                                       ; $44bf: $7f
    jr c, jr_014_4501                             ; $44c0: $38 $3f

    daa                                           ; $44c2: $27
    ccf                                           ; $44c3: $3f
    inc e                                         ; $44c4: $1c
    rra                                           ; $44c5: $1f
    rra                                           ; $44c6: $1f
    ld d, $26                                     ; $44c7: $16 $26
    ccf                                           ; $44c9: $3f
    ld a, l                                       ; $44ca: $7d
    ld a, a                                       ; $44cb: $7f
    rst $38                                       ; $44cc: $ff
    rst $38                                       ; $44cd: $ff
    ld a, a                                       ; $44ce: $7f
    ld a, a                                       ; $44cf: $7f
    nop                                           ; $44d0: $00
    nop                                           ; $44d1: $00
    nop                                           ; $44d2: $00
    nop                                           ; $44d3: $00

jr_014_44d4:
    nop                                           ; $44d4: $00
    nop                                           ; $44d5: $00
    ld [hl], b                                    ; $44d6: $70
    ld [hl], b                                    ; $44d7: $70
    ld hl, sp-$08                                 ; $44d8: $f8 $f8
    jr jr_014_44d4                                ; $44da: $18 $f8

    ld [$04f8], sp                                ; $44dc: $08 $f8 $04
    db $fc                                        ; $44df: $fc
    inc b                                         ; $44e0: $04
    db $fc                                        ; $44e1: $fc
    inc b                                         ; $44e2: $04
    db $fc                                        ; $44e3: $fc
    ld [$d8f8], sp                                ; $44e4: $08 $f8 $d8
    ld hl, sp+$28                                 ; $44e7: $f8 $28
    ld hl, sp-$38                                 ; $44e9: $f8 $c8
    ld hl, sp-$70                                 ; $44eb: $f8 $90
    ldh a, [$f0]                                  ; $44ed: $f0 $f0
    ldh a, [$e0]                                  ; $44ef: $f0 $e0
    ldh [$e0], a                                  ; $44f1: $e0 $e0
    ldh [$e0], a                                  ; $44f3: $e0 $e0
    ldh [$c0], a                                  ; $44f5: $e0 $c0
    ret nz                                        ; $44f7: $c0

    ret nz                                        ; $44f8: $c0

    ret nz                                        ; $44f9: $c0

    add b                                         ; $44fa: $80
    add b                                         ; $44fb: $80
    add b                                         ; $44fc: $80
    add b                                         ; $44fd: $80
    add b                                         ; $44fe: $80
    add b                                         ; $44ff: $80
    add b                                         ; $4500: $80

jr_014_4501:
    add b                                         ; $4501: $80
    add b                                         ; $4502: $80
    add b                                         ; $4503: $80
    ret nz                                        ; $4504: $c0

    ret nz                                        ; $4505: $c0

    ret nz                                        ; $4506: $c0

    ld b, b                                       ; $4507: $40
    ld b, b                                       ; $4508: $40
    ret nz                                        ; $4509: $c0

    cp b                                          ; $450a: $b8
    ld hl, sp-$04                                 ; $450b: $f8 $fc
    db $fc                                        ; $450d: $fc
    ld hl, sp-$08                                 ; $450e: $f8 $f8
    nop                                           ; $4510: $00
    nop                                           ; $4511: $00
    nop                                           ; $4512: $00
    nop                                           ; $4513: $00
    nop                                           ; $4514: $00
    nop                                           ; $4515: $00
    ld bc, $0301                                  ; $4516: $01 $01 $03
    inc bc                                        ; $4519: $03
    inc c                                         ; $451a: $0c
    rrca                                          ; $451b: $0f
    ld [$300f], sp                                ; $451c: $08 $0f $30
    ccf                                           ; $451f: $3f
    ldh a, [$df]                                  ; $4520: $f0 $df
    ld hl, sp-$71                                 ; $4522: $f8 $8f
    ld [hl], h                                    ; $4524: $74
    ld e, a                                       ; $4525: $5f
    and d                                         ; $4526: $a2
    rst $38                                       ; $4527: $ff
    sub a                                         ; $4528: $97
    rst $38                                       ; $4529: $ff
    sbc [hl]                                      ; $452a: $9e
    ei                                            ; $452b: $fb
    xor a                                         ; $452c: $af
    db $fd                                        ; $452d: $fd
    ld e, a                                       ; $452e: $5f
    ld a, [hl]                                    ; $452f: $7e
    ld e, a                                       ; $4530: $5f
    ld a, a                                       ; $4531: $7f
    cpl                                           ; $4532: $2f
    ccf                                           ; $4533: $3f
    cpl                                           ; $4534: $2f
    ccf                                           ; $4535: $3f
    ld e, a                                       ; $4536: $5f
    ld a, a                                       ; $4537: $7f
    ld e, a                                       ; $4538: $5f
    ld a, a                                       ; $4539: $7f
    ld a, a                                       ; $453a: $7f
    ld a, a                                       ; $453b: $7f

jr_014_453c:
    ld b, a                                       ; $453c: $47
    ld a, a                                       ; $453d: $7f
    ld c, b                                       ; $453e: $48
    ld a, a                                       ; $453f: $7f
    inc a                                         ; $4540: $3c
    ccf                                           ; $4541: $3f
    daa                                           ; $4542: $27
    ccf                                           ; $4543: $3f
    inc e                                         ; $4544: $1c
    rra                                           ; $4545: $1f
    rra                                           ; $4546: $1f
    ld d, $25                                     ; $4547: $16 $25
    ccf                                           ; $4549: $3f
    ld a, a                                       ; $454a: $7f
    ld a, a                                       ; $454b: $7f
    rst $38                                       ; $454c: $ff
    rst $38                                       ; $454d: $ff
    ld a, a                                       ; $454e: $7f
    ld a, a                                       ; $454f: $7f
    nop                                           ; $4550: $00
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    ret nz                                        ; $4556: $c0

    ret nz                                        ; $4557: $c0

    ldh [$e0], a                                  ; $4558: $e0 $e0
    jr nz, jr_014_453c                            ; $455a: $20 $e0

    db $10                                        ; $455c: $10
    ldh a, [$08]                                  ; $455d: $f0 $08
    ld hl, sp+$08                                 ; $455f: $f8 $08
    ld hl, sp+$08                                 ; $4561: $f8 $08
    ld hl, sp+$18                                 ; $4563: $f8 $18
    ld hl, sp+$30                                 ; $4565: $f8 $30
    ldh a, [$d0]                                  ; $4567: $f0 $d0
    ldh a, [rNR41]                                ; $4569: $f0 $20
    ldh [$c0], a                                  ; $456b: $e0 $c0
    ret nz                                        ; $456d: $c0

    ldh a, [$f0]                                  ; $456e: $f0 $f0
    ret c                                         ; $4570: $d8

    add sp, -$08                                  ; $4571: $e8 $f8
    ld hl, sp-$10                                 ; $4573: $f8 $f0
    ldh a, [$80]                                  ; $4575: $f0 $80
    add b                                         ; $4577: $80
    add b                                         ; $4578: $80
    add b                                         ; $4579: $80
    add b                                         ; $457a: $80
    add b                                         ; $457b: $80
    add b                                         ; $457c: $80
    add b                                         ; $457d: $80
    add b                                         ; $457e: $80
    add b                                         ; $457f: $80
    add b                                         ; $4580: $80
    add b                                         ; $4581: $80
    add b                                         ; $4582: $80
    add b                                         ; $4583: $80
    ret nz                                        ; $4584: $c0

    ret nz                                        ; $4585: $c0

    ret nz                                        ; $4586: $c0

    ld b, b                                       ; $4587: $40
    and b                                         ; $4588: $a0
    ldh [$f8], a                                  ; $4589: $e0 $f8
    ld hl, sp-$04                                 ; $458b: $f8 $fc
    db $fc                                        ; $458d: $fc
    ld hl, sp-$08                                 ; $458e: $f8 $f8
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    nop                                           ; $4593: $00
    nop                                           ; $4594: $00
    nop                                           ; $4595: $00
    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    ld bc, $0201                                  ; $459a: $01 $01 $02
    inc bc                                        ; $459d: $03
    inc b                                         ; $459e: $04
    rlca                                          ; $459f: $07
    inc b                                         ; $45a0: $04
    rlca                                          ; $45a1: $07
    add hl, de                                    ; $45a2: $19
    rra                                           ; $45a3: $1f
    daa                                           ; $45a4: $27
    ccf                                           ; $45a5: $3f
    ld e, $1f                                     ; $45a6: $1e $1f
    ld b, $07                                     ; $45a8: $06 $07
    inc bc                                        ; $45aa: $03
    inc bc                                        ; $45ab: $03
    rlca                                          ; $45ac: $07
    inc b                                         ; $45ad: $04
    rlca                                          ; $45ae: $07
    rlca                                          ; $45af: $07
    dec bc                                        ; $45b0: $0b
    rrca                                          ; $45b1: $0f
    rla                                           ; $45b2: $17
    rra                                           ; $45b3: $1f
    rla                                           ; $45b4: $17
    rra                                           ; $45b5: $1f
    cpl                                           ; $45b6: $2f
    ccf                                           ; $45b7: $3f
    cpl                                           ; $45b8: $2f
    ccf                                           ; $45b9: $3f
    ccf                                           ; $45ba: $3f
    ccf                                           ; $45bb: $3f
    cpl                                           ; $45bc: $2f
    ccf                                           ; $45bd: $3f
    ld hl, $383f                                  ; $45be: $21 $3f $38
    ccf                                           ; $45c1: $3f
    ld de, $1f1f                                  ; $45c2: $11 $1f $1f
    rra                                           ; $45c5: $1f
    rra                                           ; $45c6: $1f
    inc de                                        ; $45c7: $13
    rra                                           ; $45c8: $1f
    rra                                           ; $45c9: $1f
    halt                                          ; $45ca: $76
    ld a, a                                       ; $45cb: $7f
    rst $38                                       ; $45cc: $ff
    rst $38                                       ; $45cd: $ff
    ld a, a                                       ; $45ce: $7f
    ld a, a                                       ; $45cf: $7f
    nop                                           ; $45d0: $00
    nop                                           ; $45d1: $00
    nop                                           ; $45d2: $00
    nop                                           ; $45d3: $00
    nop                                           ; $45d4: $00
    nop                                           ; $45d5: $00

jr_014_45d6:
    ld b, $06                                     ; $45d6: $06 $06
    ld a, a                                       ; $45d8: $7f
    ld a, a                                       ; $45d9: $7f
    adc a                                         ; $45da: $8f
    rst $38                                       ; $45db: $ff
    ld b, $fe                                     ; $45dc: $06 $fe
    ld bc, $3fff                                  ; $45de: $01 $ff $3f
    rst $38                                       ; $45e1: $ff
    pop af                                        ; $45e2: $f1
    rst $38                                       ; $45e3: $ff
    db $ed                                        ; $45e4: $ed
    rst $38                                       ; $45e5: $ff
    ld b, [hl]                                    ; $45e6: $46
    ld a, [$f68e]                                 ; $45e7: $fa $8e $f6
    ld bc, $82ff                                  ; $45ea: $01 $ff $82
    cp $cc                                        ; $45ed: $fe $cc
    ld [hl], h                                    ; $45ef: $74
    ld hl, sp-$48                                 ; $45f0: $f8 $b8
    ldh [$e0], a                                  ; $45f2: $e0 $e0
    jr nz, jr_014_45d6                            ; $45f4: $20 $e0

    ld [hl], b                                    ; $45f6: $70
    ldh a, [$f0]                                  ; $45f7: $f0 $f0
    ldh a, [$90]                                  ; $45f9: $f0 $90
    ldh a, [$88]                                  ; $45fb: $f0 $88
    ld hl, sp-$3c                                 ; $45fd: $f8 $c4
    db $fc                                        ; $45ff: $fc
    or h                                          ; $4600: $b4
    cp h                                          ; $4601: $bc
    adc [hl]                                      ; $4602: $8e
    adc [hl]                                      ; $4603: $8e

jr_014_4604:
    jp $a1c3                                      ; $4604: $c3 $c3 $a1


    pop hl                                        ; $4607: $e1
    ldh [$60], a                                  ; $4608: $e0 $60
    jr c, jr_014_4604                             ; $460a: $38 $f8

    rst $38                                       ; $460c: $ff
    rst $38                                       ; $460d: $ff
    ld hl, sp-$08                                 ; $460e: $f8 $f8
    nop                                           ; $4610: $00
    nop                                           ; $4611: $00
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    nop                                           ; $4614: $00
    nop                                           ; $4615: $00
    nop                                           ; $4616: $00
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    nop                                           ; $4619: $00
    nop                                           ; $461a: $00
    nop                                           ; $461b: $00
    nop                                           ; $461c: $00
    nop                                           ; $461d: $00
    nop                                           ; $461e: $00
    nop                                           ; $461f: $00
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00
    nop                                           ; $4622: $00
    nop                                           ; $4623: $00
    nop                                           ; $4624: $00
    nop                                           ; $4625: $00
    call z, $b6cc                                 ; $4626: $cc $cc $b6
    ld a, [$7e62]                                 ; $4629: $fa $62 $7e
    db $fc                                        ; $462c: $fc
    db $fc                                        ; $462d: $fc
    nop                                           ; $462e: $00
    nop                                           ; $462f: $00
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    nop                                           ; $4634: $00
    nop                                           ; $4635: $00
    nop                                           ; $4636: $00
    nop                                           ; $4637: $00
    nop                                           ; $4638: $00
    nop                                           ; $4639: $00
    nop                                           ; $463a: $00
    nop                                           ; $463b: $00
    ld bc, $0201                                  ; $463c: $01 $01 $02
    inc bc                                        ; $463f: $03
    inc b                                         ; $4640: $04
    rlca                                          ; $4641: $07
    inc b                                         ; $4642: $04
    rlca                                          ; $4643: $07
    add hl, de                                    ; $4644: $19
    rra                                           ; $4645: $1f
    daa                                           ; $4646: $27
    ccf                                           ; $4647: $3f
    ld e, $1f                                     ; $4648: $1e $1f
    ld b, $07                                     ; $464a: $06 $07
    inc bc                                        ; $464c: $03
    inc bc                                        ; $464d: $03
    rlca                                          ; $464e: $07
    inc b                                         ; $464f: $04
    dec bc                                        ; $4650: $0b
    rrca                                          ; $4651: $0f
    rla                                           ; $4652: $17
    rra                                           ; $4653: $1f
    inc d                                         ; $4654: $14
    rra                                           ; $4655: $1f
    dec l                                         ; $4656: $2d
    ccf                                           ; $4657: $3f
    cpl                                           ; $4658: $2f
    ccf                                           ; $4659: $3f
    cpl                                           ; $465a: $2f
    ccf                                           ; $465b: $3f
    ccf                                           ; $465c: $3f
    ccf                                           ; $465d: $3f
    daa                                           ; $465e: $27
    ccf                                           ; $465f: $3f
    jr c, jr_014_46a1                             ; $4660: $38 $3f

    ld de, $0f1f                                  ; $4662: $11 $1f $0f
    rrca                                          ; $4665: $0f
    rrca                                          ; $4666: $0f
    add hl, bc                                    ; $4667: $09
    ccf                                           ; $4668: $3f
    ccf                                           ; $4669: $3f
    ld a, e                                       ; $466a: $7b
    ld a, a                                       ; $466b: $7f
    rst $38                                       ; $466c: $ff
    rst $38                                       ; $466d: $ff
    ld a, a                                       ; $466e: $7f
    ld a, a                                       ; $466f: $7f
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00
    ld b, $06                                     ; $4678: $06 $06
    ld a, a                                       ; $467a: $7f
    ld a, a                                       ; $467b: $7f
    adc a                                         ; $467c: $8f
    rst $38                                       ; $467d: $ff
    ld b, $fe                                     ; $467e: $06 $fe
    ld bc, $3fff                                  ; $4680: $01 $ff $3f
    rst $38                                       ; $4683: $ff
    pop af                                        ; $4684: $f1
    rst $38                                       ; $4685: $ff
    db $ed                                        ; $4686: $ed
    rst $38                                       ; $4687: $ff
    ld b, [hl]                                    ; $4688: $46
    ld a, [$f68e]                                 ; $4689: $fa $8e $f6
    ld bc, $82ff                                  ; $468c: $01 $ff $82
    cp $cc                                        ; $468f: $fe $cc
    ld [hl], h                                    ; $4691: $74
    ld hl, sp-$48                                 ; $4692: $f8 $b8
    ldh [$e0], a                                  ; $4694: $e0 $e0
    ldh [$e0], a                                  ; $4696: $e0 $e0
    ldh [$e0], a                                  ; $4698: $e0 $e0
    ldh a, [$f0]                                  ; $469a: $f0 $f0
    ldh a, [$f0]                                  ; $469c: $f0 $f0
    ldh a, [$f0]                                  ; $469e: $f0 $f0
    adc b                                         ; $46a0: $88

jr_014_46a1:
    ld hl, sp-$3c                                 ; $46a1: $f8 $c4
    db $fc                                        ; $46a3: $fc

jr_014_46a4:
    or $fe                                        ; $46a4: $f6 $fe
    xor e                                         ; $46a6: $ab
    db $eb                                        ; $46a7: $eb
    ldh [$60], a                                  ; $46a8: $e0 $60
    jr c, jr_014_46a4                             ; $46aa: $38 $f8

    rst $38                                       ; $46ac: $ff
    rst $38                                       ; $46ad: $ff
    ld hl, sp-$08                                 ; $46ae: $f8 $f8
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
    call z, $b6cc                                 ; $46c6: $cc $cc $b6
    ld a, [$7e62]                                 ; $46c9: $fa $62 $7e
    db $fc                                        ; $46cc: $fc
    db $fc                                        ; $46cd: $fc
    nop                                           ; $46ce: $00
    nop                                           ; $46cf: $00
    ldh a, [rDMA]                                 ; $46d0: $f0 $46
    sub b                                         ; $46d2: $90
    ld b, a                                       ; $46d3: $47
    db $10                                        ; $46d4: $10
    ld c, b                                       ; $46d5: $48
    sub b                                         ; $46d6: $90
    ld c, b                                       ; $46d7: $48
    jr nc, @+$4b                                  ; $46d8: $30 $49

    ret nc                                        ; $46da: $d0

    ld c, c                                       ; $46db: $49
    ld [hl], b                                    ; $46dc: $70
    ld c, d                                       ; $46dd: $4a
    ldh a, [rWY]                                  ; $46de: $f0 $4a
    sub b                                         ; $46e0: $90
    ld c, e                                       ; $46e1: $4b
    db $10                                        ; $46e2: $10
    ld c, h                                       ; $46e3: $4c
    or b                                          ; $46e4: $b0
    ld c, h                                       ; $46e5: $4c
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
    ld bc, $0101                                  ; $46f6: $01 $01 $01
    ld bc, $0302                                  ; $46f9: $01 $02 $03
    inc bc                                        ; $46fc: $03
    inc bc                                        ; $46fd: $03
    ld e, $1f                                     ; $46fe: $1e $1f
    cpl                                           ; $4700: $2f
    ld a, [hl-]                                   ; $4701: $3a
    daa                                           ; $4702: $27
    ld a, $19                                     ; $4703: $3e $19
    add hl, de                                    ; $4705: $19
    inc bc                                        ; $4706: $03
    inc bc                                        ; $4707: $03
    inc b                                         ; $4708: $04
    rlca                                          ; $4709: $07
    add hl, bc                                    ; $470a: $09
    rrca                                          ; $470b: $0f
    add hl, bc                                    ; $470c: $09
    rrca                                          ; $470d: $0f
    ld [de], a                                    ; $470e: $12
    rra                                           ; $470f: $1f
    ld [de], a                                    ; $4710: $12
    rra                                           ; $4711: $1f
    ld [hl+], a                                   ; $4712: $22
    ccf                                           ; $4713: $3f
    ld a, [hl-]                                   ; $4714: $3a
    ccf                                           ; $4715: $3f
    ccf                                           ; $4716: $3f
    daa                                           ; $4717: $27
    ccf                                           ; $4718: $3f
    ld hl, $233f                                  ; $4719: $21 $3f $23
    rra                                           ; $471c: $1f
    ld de, $111f                                  ; $471d: $11 $1f $11
    rra                                           ; $4720: $1f
    ld de, $111f                                  ; $4721: $11 $1f $11
    ccf                                           ; $4724: $3f
    ld hl, $273e                                  ; $4725: $21 $3e $27
    ld a, e                                       ; $4728: $7b
    ld e, l                                       ; $4729: $5d
    ld h, b                                       ; $472a: $60
    ld a, a                                       ; $472b: $7f
    rst $38                                       ; $472c: $ff
    rst $38                                       ; $472d: $ff
    ld a, a                                       ; $472e: $7f
    ld a, a                                       ; $472f: $7f
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    ld [hl], h                                    ; $4732: $74
    ld [hl], h                                    ; $4733: $74

jr_014_4734:
    adc d                                         ; $4734: $8a
    cp $01                                        ; $4735: $fe $01
    rst $38                                       ; $4737: $ff
    dec e                                         ; $4738: $1d
    rst $38                                       ; $4739: $ff
    ld a, $e2                                     ; $473a: $3e $e2
    ld a, [$fec6]                                 ; $473c: $fa $c6 $fe
    ld a, [hl]                                    ; $473f: $7e
    or $9e                                        ; $4740: $f6 $9e
    ld a, a                                       ; $4742: $7f
    adc l                                         ; $4743: $8d
    rst $38                                       ; $4744: $ff
    inc bc                                        ; $4745: $03
    db $fc                                        ; $4746: $fc
    add h                                         ; $4747: $84
    ld hl, sp-$38                                 ; $4748: $f8 $c8
    ld [hl], b                                    ; $474a: $70
    ldh a, [$c0]                                  ; $474b: $f0 $c0
    ret nz                                        ; $474d: $c0

    ld b, b                                       ; $474e: $40
    ret nz                                        ; $474f: $c0

    ld b, b                                       ; $4750: $40
    ret nz                                        ; $4751: $c0

    jr nz, jr_014_4734                            ; $4752: $20 $e0

    ldh [$e0], a                                  ; $4754: $e0 $e0
    ldh [rNR41], a                                ; $4756: $e0 $20
    ldh a, [rNR10]                                ; $4758: $f0 $10
    ldh a, [$90]                                  ; $475a: $f0 $90
    ld hl, sp-$78                                 ; $475c: $f8 $88
    ld a, h                                       ; $475e: $7c
    ld l, h                                       ; $475f: $6c
    ld d, $16                                     ; $4760: $16 $16
    inc bc                                        ; $4762: $03
    inc bc                                        ; $4763: $03
    ld bc, $8001                                  ; $4764: $01 $01 $80
    add b                                         ; $4767: $80
    add b                                         ; $4768: $80
    add b                                         ; $4769: $80
    db $fc                                        ; $476a: $fc
    db $fc                                        ; $476b: $fc
    rst $38                                       ; $476c: $ff
    rst $38                                       ; $476d: $ff
    db $fc                                        ; $476e: $fc
    db $fc                                        ; $476f: $fc
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
    add b                                         ; $4784: $80
    add b                                         ; $4785: $80
    adc $ce                                       ; $4786: $ce $ce
    ld [hl], l                                    ; $4788: $75
    ld a, e                                       ; $4789: $7b
    ccf                                           ; $478a: $3f
    ccf                                           ; $478b: $3f
    cp $fe                                        ; $478c: $fe $fe
    nop                                           ; $478e: $00
    nop                                           ; $478f: $00
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    nop                                           ; $4793: $00
    nop                                           ; $4794: $00
    nop                                           ; $4795: $00
    ld bc, $0101                                  ; $4796: $01 $01 $01
    ld bc, $0302                                  ; $4799: $01 $02 $03
    inc bc                                        ; $479c: $03
    inc bc                                        ; $479d: $03
    ld e, $1f                                     ; $479e: $1e $1f
    cpl                                           ; $47a0: $2f
    ld a, [hl-]                                   ; $47a1: $3a
    daa                                           ; $47a2: $27
    ld a, $19                                     ; $47a3: $3e $19
    add hl, de                                    ; $47a5: $19
    inc bc                                        ; $47a6: $03
    inc bc                                        ; $47a7: $03
    inc b                                         ; $47a8: $04
    rlca                                          ; $47a9: $07
    add hl, bc                                    ; $47aa: $09
    rrca                                          ; $47ab: $0f
    ld a, [bc]                                    ; $47ac: $0a
    rrca                                          ; $47ad: $0f
    inc d                                         ; $47ae: $14
    rra                                           ; $47af: $1f
    inc d                                         ; $47b0: $14
    rra                                           ; $47b1: $1f
    dec h                                         ; $47b2: $25
    ccf                                           ; $47b3: $3f
    dec sp                                        ; $47b4: $3b
    ld a, $3f                                     ; $47b5: $3e $3f
    inc h                                         ; $47b7: $24
    ccf                                           ; $47b8: $3f
    ld [hl+], a                                   ; $47b9: $22
    ccf                                           ; $47ba: $3f
    inc hl                                        ; $47bb: $23
    rra                                           ; $47bc: $1f
    ld de, $111f                                  ; $47bd: $11 $1f $11
    rra                                           ; $47c0: $1f
    ld de, $111f                                  ; $47c1: $11 $1f $11
    ccf                                           ; $47c4: $3f
    ld hl, $273e                                  ; $47c5: $21 $3e $27
    ld a, e                                       ; $47c8: $7b
    ld e, l                                       ; $47c9: $5d
    ld h, b                                       ; $47ca: $60
    ld a, a                                       ; $47cb: $7f
    rst $38                                       ; $47cc: $ff
    rst $38                                       ; $47cd: $ff
    ld a, a                                       ; $47ce: $7f
    ld a, a                                       ; $47cf: $7f
    nop                                           ; $47d0: $00
    nop                                           ; $47d1: $00
    ld [hl], h                                    ; $47d2: $74
    ld [hl], h                                    ; $47d3: $74
    adc d                                         ; $47d4: $8a
    cp $01                                        ; $47d5: $fe $01
    rst $38                                       ; $47d7: $ff
    dec e                                         ; $47d8: $1d
    rst $38                                       ; $47d9: $ff
    ld a, $e2                                     ; $47da: $3e $e2
    ld a, [$fec6]                                 ; $47dc: $fa $c6 $fe
    ld a, [hl]                                    ; $47df: $7e
    or $9e                                        ; $47e0: $f6 $9e
    ld a, a                                       ; $47e2: $7f
    adc l                                         ; $47e3: $8d
    rst $38                                       ; $47e4: $ff
    inc bc                                        ; $47e5: $03
    db $fc                                        ; $47e6: $fc
    add h                                         ; $47e7: $84
    ld hl, sp-$38                                 ; $47e8: $f8 $c8
    ld [hl], b                                    ; $47ea: $70
    ldh a, [$a0]                                  ; $47eb: $f0 $a0
    ldh [$a0], a                                  ; $47ed: $e0 $a0
    ldh [$60], a                                  ; $47ef: $e0 $60
    ldh [$e0], a                                  ; $47f1: $e0 $e0
    ldh [$f0], a                                  ; $47f3: $e0 $f0
    ld d, b                                       ; $47f5: $50
    ldh a, [$50]                                  ; $47f6: $f0 $50
    ldh [rNR41], a                                ; $47f8: $e0 $20
    ldh [$60], a                                  ; $47fa: $e0 $60
    ld hl, sp+$78                                 ; $47fc: $f8 $78
    db $ec                                        ; $47fe: $ec
    db $fc                                        ; $47ff: $fc
    db $fc                                        ; $4800: $fc
    ld a, h                                       ; $4801: $7c
    ld hl, sp-$08                                 ; $4802: $f8 $f8
    add b                                         ; $4804: $80
    add b                                         ; $4805: $80
    add b                                         ; $4806: $80
    add b                                         ; $4807: $80
    add b                                         ; $4808: $80
    add b                                         ; $4809: $80
    db $fc                                        ; $480a: $fc
    db $fc                                        ; $480b: $fc
    cp $fe                                        ; $480c: $fe $fe
    db $fc                                        ; $480e: $fc
    db $fc                                        ; $480f: $fc
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    nop                                           ; $4813: $00
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    ld bc, $0101                                  ; $4816: $01 $01 $01
    ld bc, $0302                                  ; $4819: $01 $02 $03
    inc bc                                        ; $481c: $03
    inc bc                                        ; $481d: $03
    ld e, $1f                                     ; $481e: $1e $1f
    cpl                                           ; $4820: $2f
    ld a, [hl-]                                   ; $4821: $3a
    daa                                           ; $4822: $27
    ld a, $19                                     ; $4823: $3e $19
    add hl, de                                    ; $4825: $19
    inc bc                                        ; $4826: $03
    inc bc                                        ; $4827: $03
    dec b                                         ; $4828: $05
    rlca                                          ; $4829: $07
    jr c, jr_014_486b                             ; $482a: $38 $3f

    ld a, c                                       ; $482c: $79
    ld e, a                                       ; $482d: $5f
    ld e, [hl]                                    ; $482e: $5e
    ld a, a                                       ; $482f: $7f
    ld a, a                                       ; $4830: $7f
    ld a, c                                       ; $4831: $79
    ccf                                           ; $4832: $3f
    dec a                                         ; $4833: $3d
    ld a, $2f                                     ; $4834: $3e $2f
    ccf                                           ; $4836: $3f
    ld hl, $223f                                  ; $4837: $21 $3f $22
    ccf                                           ; $483a: $3f
    ld [hl+], a                                   ; $483b: $22
    rra                                           ; $483c: $1f
    ld de, $111f                                  ; $483d: $11 $1f $11
    rra                                           ; $4840: $1f
    ld de, $111f                                  ; $4841: $11 $1f $11
    ccf                                           ; $4844: $3f
    ld hl, $273e                                  ; $4845: $21 $3e $27
    ld a, e                                       ; $4848: $7b
    ld e, l                                       ; $4849: $5d
    ld h, b                                       ; $484a: $60
    ld a, a                                       ; $484b: $7f
    rst $38                                       ; $484c: $ff
    rst $38                                       ; $484d: $ff
    ld a, a                                       ; $484e: $7f
    ld a, a                                       ; $484f: $7f
    nop                                           ; $4850: $00
    nop                                           ; $4851: $00
    ld [hl], h                                    ; $4852: $74
    ld [hl], h                                    ; $4853: $74
    adc d                                         ; $4854: $8a
    cp $01                                        ; $4855: $fe $01
    rst $38                                       ; $4857: $ff
    dec e                                         ; $4858: $1d
    rst $38                                       ; $4859: $ff
    ld a, $e2                                     ; $485a: $3e $e2
    ld a, [$fec6]                                 ; $485c: $fa $c6 $fe
    ld a, [hl]                                    ; $485f: $7e
    or $9e                                        ; $4860: $f6 $9e
    ld a, a                                       ; $4862: $7f
    adc l                                         ; $4863: $8d
    rst $38                                       ; $4864: $ff
    inc bc                                        ; $4865: $03
    db $fc                                        ; $4866: $fc
    add h                                         ; $4867: $84
    ld a, b                                       ; $4868: $78
    ret z                                         ; $4869: $c8

    or b                                          ; $486a: $b0

jr_014_486b:
    ldh a, [$50]                                  ; $486b: $f0 $50
    ldh a, [$d0]                                  ; $486d: $f0 $d0
    ldh a, [$e0]                                  ; $486f: $f0 $e0
    ld h, b                                       ; $4871: $60
    ldh [rNR41], a                                ; $4872: $e0 $20
    ret nz                                        ; $4874: $c0

    ret nz                                        ; $4875: $c0

    add b                                         ; $4876: $80
    add b                                         ; $4877: $80
    add b                                         ; $4878: $80
    add b                                         ; $4879: $80
    add b                                         ; $487a: $80
    add b                                         ; $487b: $80
    ret nz                                        ; $487c: $c0

    ld b, b                                       ; $487d: $40
    ret nz                                        ; $487e: $c0

    ld b, b                                       ; $487f: $40
    add b                                         ; $4880: $80
    add b                                         ; $4881: $80
    add b                                         ; $4882: $80
    add b                                         ; $4883: $80
    add b                                         ; $4884: $80
    add b                                         ; $4885: $80
    add b                                         ; $4886: $80
    add b                                         ; $4887: $80
    add b                                         ; $4888: $80
    add b                                         ; $4889: $80
    db $fc                                        ; $488a: $fc
    db $fc                                        ; $488b: $fc
    cp $fe                                        ; $488c: $fe $fe
    db $fc                                        ; $488e: $fc
    db $fc                                        ; $488f: $fc
    nop                                           ; $4890: $00
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
    nop                                           ; $4893: $00
    nop                                           ; $4894: $00
    nop                                           ; $4895: $00
    nop                                           ; $4896: $00
    nop                                           ; $4897: $00
    nop                                           ; $4898: $00
    nop                                           ; $4899: $00
    nop                                           ; $489a: $00
    nop                                           ; $489b: $00
    inc bc                                        ; $489c: $03
    inc bc                                        ; $489d: $03
    rlca                                          ; $489e: $07
    dec b                                         ; $489f: $05
    dec b                                         ; $48a0: $05
    rlca                                          ; $48a1: $07
    rlca                                          ; $48a2: $07
    rlca                                          ; $48a3: $07
    inc bc                                        ; $48a4: $03
    inc bc                                        ; $48a5: $03
    nop                                           ; $48a6: $00
    nop                                           ; $48a7: $00
    nop                                           ; $48a8: $00
    nop                                           ; $48a9: $00
    nop                                           ; $48aa: $00
    nop                                           ; $48ab: $00
    nop                                           ; $48ac: $00
    nop                                           ; $48ad: $00
    nop                                           ; $48ae: $00
    nop                                           ; $48af: $00
    nop                                           ; $48b0: $00
    nop                                           ; $48b1: $00
    nop                                           ; $48b2: $00
    nop                                           ; $48b3: $00
    ld bc, $0201                                  ; $48b4: $01 $01 $02
    inc bc                                        ; $48b7: $03
    ld [bc], a                                    ; $48b8: $02
    inc bc                                        ; $48b9: $03
    inc b                                         ; $48ba: $04
    rlca                                          ; $48bb: $07
    rlca                                          ; $48bc: $07
    rlca                                          ; $48bd: $07
    xor l                                         ; $48be: $ad
    xor [hl]                                      ; $48bf: $ae
    rst $18                                       ; $48c0: $df
    push af                                       ; $48c1: $f5
    adc $fd                                       ; $48c2: $ce $fd
    or e                                          ; $48c4: $b3
    or d                                          ; $48c5: $b2
    push bc                                       ; $48c6: $c5
    rst $00                                       ; $48c7: $c7
    ld a, d                                       ; $48c8: $7a
    ld a, a                                       ; $48c9: $7f
    ld a, $27                                     ; $48ca: $3e $27
    ccf                                           ; $48cc: $3f
    dec [hl]                                      ; $48cd: $35
    ld a, a                                       ; $48ce: $7f
    ld l, h                                       ; $48cf: $6c
    ld a, e                                       ; $48d0: $7b
    ld c, a                                       ; $48d1: $4f
    ld a, b                                       ; $48d2: $78
    ld c, a                                       ; $48d3: $4f
    ld a, h                                       ; $48d4: $7c
    ld e, a                                       ; $48d5: $5f
    ccf                                           ; $48d6: $3f
    inc hl                                        ; $48d7: $23
    ccf                                           ; $48d8: $3f
    inc h                                         ; $48d9: $24
    ccf                                           ; $48da: $3f
    ld [hl+], a                                   ; $48db: $22
    ccf                                           ; $48dc: $3f
    ld [hl+], a                                   ; $48dd: $22
    rra                                           ; $48de: $1f
    ld de, $111f                                  ; $48df: $11 $1f $11
    rra                                           ; $48e2: $1f
    ld de, $213f                                  ; $48e3: $11 $3f $21
    ld a, $27                                     ; $48e6: $3e $27
    ld a, e                                       ; $48e8: $7b
    ld e, l                                       ; $48e9: $5d
    ld h, b                                       ; $48ea: $60
    ld a, a                                       ; $48eb: $7f
    rst $38                                       ; $48ec: $ff
    rst $38                                       ; $48ed: $ff
    ld a, a                                       ; $48ee: $7f
    ld a, a                                       ; $48ef: $7f
    nop                                           ; $48f0: $00
    nop                                           ; $48f1: $00
    add sp, -$18                                  ; $48f2: $e8 $e8
    inc d                                         ; $48f4: $14
    db $fc                                        ; $48f5: $fc
    ld [bc], a                                    ; $48f6: $02
    cp $3a                                        ; $48f7: $fe $3a
    cp $7c                                        ; $48f9: $fe $7c
    call nz, $8cf4                                ; $48fb: $c4 $f4 $8c
    db $fc                                        ; $48fe: $fc
    db $fc                                        ; $48ff: $fc
    db $ec                                        ; $4900: $ec
    inc a                                         ; $4901: $3c
    cp $1a                                        ; $4902: $fe $1a
    cp $06                                        ; $4904: $fe $06
    ld hl, sp+$08                                 ; $4906: $f8 $08
    ldh a, [$90]                                  ; $4908: $f0 $90
    ldh [$e0], a                                  ; $490a: $e0 $e0
    db $10                                        ; $490c: $10
    ldh a, [$90]                                  ; $490d: $f0 $90
    ldh a, [rNR41]                                ; $490f: $f0 $20
    ldh [$c0], a                                  ; $4911: $e0 $c0
    ret nz                                        ; $4913: $c0

    ret nz                                        ; $4914: $c0

    ret nz                                        ; $4915: $c0

    add b                                         ; $4916: $80
    add b                                         ; $4917: $80
    add b                                         ; $4918: $80
    add b                                         ; $4919: $80
    add b                                         ; $491a: $80
    add b                                         ; $491b: $80
    ret nz                                        ; $491c: $c0

    ld b, b                                       ; $491d: $40
    ret nz                                        ; $491e: $c0

    ld b, b                                       ; $491f: $40
    add b                                         ; $4920: $80
    add b                                         ; $4921: $80
    add b                                         ; $4922: $80
    add b                                         ; $4923: $80
    add b                                         ; $4924: $80
    add b                                         ; $4925: $80
    add b                                         ; $4926: $80
    add b                                         ; $4927: $80
    add b                                         ; $4928: $80
    add b                                         ; $4929: $80
    db $fc                                        ; $492a: $fc
    db $fc                                        ; $492b: $fc
    cp $fe                                        ; $492c: $fe $fe
    db $fc                                        ; $492e: $fc
    db $fc                                        ; $492f: $fc
    inc c                                         ; $4930: $0c
    inc c                                         ; $4931: $0c
    ld e, $16                                     ; $4932: $1e $16
    ld d, $1e                                     ; $4934: $16 $1e
    ld e, $1e                                     ; $4936: $1e $1e
    inc c                                         ; $4938: $0c
    inc c                                         ; $4939: $0c
    ld b, $06                                     ; $493a: $06 $06
    inc bc                                        ; $493c: $03
    inc bc                                        ; $493d: $03
    ld bc, $0001                                  ; $493e: $01 $01 $00
    nop                                           ; $4941: $00
    nop                                           ; $4942: $00
    nop                                           ; $4943: $00
    nop                                           ; $4944: $00
    nop                                           ; $4945: $00
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    nop                                           ; $4948: $00
    nop                                           ; $4949: $00
    ld bc, $0101                                  ; $494a: $01 $01 $01
    ld bc, $0000                                  ; $494d: $01 $00 $00
    nop                                           ; $4950: $00
    nop                                           ; $4951: $00
    nop                                           ; $4952: $00
    nop                                           ; $4953: $00
    ld bc, $0201                                  ; $4954: $01 $01 $02
    inc bc                                        ; $4957: $03
    ld [bc], a                                    ; $4958: $02
    inc bc                                        ; $4959: $03
    inc b                                         ; $495a: $04
    rlca                                          ; $495b: $07
    rlca                                          ; $495c: $07
    rlca                                          ; $495d: $07
    db $ed                                        ; $495e: $ed
    xor $ff                                       ; $495f: $ee $ff
    sub l                                         ; $4961: $95
    xor $bd                                       ; $4962: $ee $bd

jr_014_4964:
    ld b, a                                       ; $4964: $47
    ld a, [hl]                                    ; $4965: $7e
    rst $28                                       ; $4966: $ef
    cp a                                          ; $4967: $bf
    rst $38                                       ; $4968: $ff
    sbc c                                         ; $4969: $99
    rst $38                                       ; $496a: $ff
    jr jr_014_4964                                ; $496b: $18 $f7

    dec a                                         ; $496d: $3d
    db $e3                                        ; $496e: $e3
    cp a                                          ; $496f: $bf
    ld h, b                                       ; $4970: $60
    ld a, a                                       ; $4971: $7f
    jr nc, jr_014_49b3                            ; $4972: $30 $3f

    inc a                                         ; $4974: $3c
    cpl                                           ; $4975: $2f
    ccf                                           ; $4976: $3f
    inc hl                                        ; $4977: $23
    ccf                                           ; $4978: $3f
    inc h                                         ; $4979: $24
    ccf                                           ; $497a: $3f
    ld [hl+], a                                   ; $497b: $22
    ccf                                           ; $497c: $3f
    ld [hl+], a                                   ; $497d: $22
    rra                                           ; $497e: $1f
    ld de, $111f                                  ; $497f: $11 $1f $11
    rra                                           ; $4982: $1f
    ld de, $213f                                  ; $4983: $11 $3f $21
    ld a, $27                                     ; $4986: $3e $27
    ld a, e                                       ; $4988: $7b
    ld e, l                                       ; $4989: $5d
    ld h, b                                       ; $498a: $60
    ld a, a                                       ; $498b: $7f
    rst $38                                       ; $498c: $ff
    rst $38                                       ; $498d: $ff
    ld a, a                                       ; $498e: $7f
    ld a, a                                       ; $498f: $7f
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    add sp, -$18                                  ; $4992: $e8 $e8
    inc d                                         ; $4994: $14
    db $fc                                        ; $4995: $fc
    ld [bc], a                                    ; $4996: $02
    cp $3a                                        ; $4997: $fe $3a
    cp $7c                                        ; $4999: $fe $7c
    call nz, $8cf4                                ; $499b: $c4 $f4 $8c
    db $fc                                        ; $499e: $fc
    db $fc                                        ; $499f: $fc
    db $ec                                        ; $49a0: $ec
    inc a                                         ; $49a1: $3c
    cp $1a                                        ; $49a2: $fe $1a
    cp $06                                        ; $49a4: $fe $06
    ld hl, sp+$08                                 ; $49a6: $f8 $08
    ldh a, [$90]                                  ; $49a8: $f0 $90
    ldh [$e0], a                                  ; $49aa: $e0 $e0
    db $10                                        ; $49ac: $10
    ldh a, [rNR10]                                ; $49ad: $f0 $10
    ldh a, [$a0]                                  ; $49af: $f0 $a0
    ldh [rLCDC], a                                ; $49b1: $e0 $40

jr_014_49b3:
    ret nz                                        ; $49b3: $c0

    ret nz                                        ; $49b4: $c0

    ret nz                                        ; $49b5: $c0

    add b                                         ; $49b6: $80
    add b                                         ; $49b7: $80
    add b                                         ; $49b8: $80
    add b                                         ; $49b9: $80
    ret nz                                        ; $49ba: $c0

    ld b, b                                       ; $49bb: $40
    ret nz                                        ; $49bc: $c0

    ld b, b                                       ; $49bd: $40
    ret nz                                        ; $49be: $c0

    ld b, b                                       ; $49bf: $40
    ret nz                                        ; $49c0: $c0

    ld b, b                                       ; $49c1: $40
    add b                                         ; $49c2: $80
    add b                                         ; $49c3: $80
    add b                                         ; $49c4: $80
    add b                                         ; $49c5: $80
    add b                                         ; $49c6: $80
    add b                                         ; $49c7: $80
    add b                                         ; $49c8: $80
    add b                                         ; $49c9: $80
    db $fc                                        ; $49ca: $fc
    db $fc                                        ; $49cb: $fc
    cp $fe                                        ; $49cc: $fe $fe
    db $fc                                        ; $49ce: $fc
    db $fc                                        ; $49cf: $fc
    nop                                           ; $49d0: $00
    nop                                           ; $49d1: $00
    nop                                           ; $49d2: $00
    nop                                           ; $49d3: $00
    nop                                           ; $49d4: $00
    nop                                           ; $49d5: $00
    nop                                           ; $49d6: $00
    nop                                           ; $49d7: $00
    ld bc, $0101                                  ; $49d8: $01 $01 $01
    ld bc, $0302                                  ; $49db: $01 $02 $03
    inc bc                                        ; $49de: $03
    inc bc                                        ; $49df: $03
    ld e, $1f                                     ; $49e0: $1e $1f
    cpl                                           ; $49e2: $2f
    ld a, [hl-]                                   ; $49e3: $3a
    daa                                           ; $49e4: $27
    ld a, $19                                     ; $49e5: $3e $19
    add hl, de                                    ; $49e7: $19
    ld bc, $0201                                  ; $49e8: $01 $01 $02
    inc bc                                        ; $49eb: $03
    dec b                                         ; $49ec: $05
    rlca                                          ; $49ed: $07
    dec bc                                        ; $49ee: $0b
    rrca                                          ; $49ef: $0f
    ld c, $0f                                     ; $49f0: $0e $0f
    inc d                                         ; $49f2: $14
    rra                                           ; $49f3: $1f
    inc d                                         ; $49f4: $14
    rra                                           ; $49f5: $1f
    inc a                                         ; $49f6: $3c
    cpl                                           ; $49f7: $2f
    ld a, $27                                     ; $49f8: $3e $27
    ccf                                           ; $49fa: $3f
    inc hl                                        ; $49fb: $23
    rra                                           ; $49fc: $1f
    ld de, $111f                                  ; $49fd: $11 $1f $11
    rra                                           ; $4a00: $1f
    ld de, $111f                                  ; $4a01: $11 $1f $11
    ccf                                           ; $4a04: $3f
    ld hl, $273e                                  ; $4a05: $21 $3e $27
    ld a, e                                       ; $4a08: $7b
    ld e, l                                       ; $4a09: $5d
    ld h, b                                       ; $4a0a: $60
    ld a, a                                       ; $4a0b: $7f
    rst $38                                       ; $4a0c: $ff
    rst $38                                       ; $4a0d: $ff
    ld a, a                                       ; $4a0e: $7f
    ld a, a                                       ; $4a0f: $7f
    nop                                           ; $4a10: $00
    nop                                           ; $4a11: $00
    nop                                           ; $4a12: $00
    nop                                           ; $4a13: $00
    ld [hl], h                                    ; $4a14: $74
    ld [hl], h                                    ; $4a15: $74
    adc d                                         ; $4a16: $8a
    cp $01                                        ; $4a17: $fe $01
    rst $38                                       ; $4a19: $ff
    dec e                                         ; $4a1a: $1d
    rst $38                                       ; $4a1b: $ff
    ld a, $e2                                     ; $4a1c: $3e $e2
    ld a, [$fec6]                                 ; $4a1e: $fa $c6 $fe
    ld a, [hl]                                    ; $4a21: $7e
    or $9e                                        ; $4a22: $f6 $9e
    ld a, a                                       ; $4a24: $7f
    adc l                                         ; $4a25: $8d
    rst $38                                       ; $4a26: $ff
    inc bc                                        ; $4a27: $03
    db $fc                                        ; $4a28: $fc
    add h                                         ; $4a29: $84
    ld hl, sp-$38                                 ; $4a2a: $f8 $c8
    ld [hl], b                                    ; $4a2c: $70
    ldh a, [$c0]                                  ; $4a2d: $f0 $c0
    ret nz                                        ; $4a2f: $c0

    ret nz                                        ; $4a30: $c0

    ret nz                                        ; $4a31: $c0

    ldh [$e0], a                                  ; $4a32: $e0 $e0
    ld h, b                                       ; $4a34: $60
    ldh [$50], a                                  ; $4a35: $e0 $50
    ldh a, [$f8]                                  ; $4a37: $f0 $f8
    xor b                                         ; $4a39: $a8
    ld hl, sp+$18                                 ; $4a3a: $f8 $18
    ld hl, sp-$78                                 ; $4a3c: $f8 $88
    ld a, h                                       ; $4a3e: $7c
    ld b, h                                       ; $4a3f: $44
    ld a, $36                                     ; $4a40: $3e $36
    dec bc                                        ; $4a42: $0b
    dec bc                                        ; $4a43: $0b
    ld bc, $8001                                  ; $4a44: $01 $01 $80
    add b                                         ; $4a47: $80
    add b                                         ; $4a48: $80
    add b                                         ; $4a49: $80
    db $fc                                        ; $4a4a: $fc
    db $fc                                        ; $4a4b: $fc
    rst $38                                       ; $4a4c: $ff
    rst $38                                       ; $4a4d: $ff
    db $fc                                        ; $4a4e: $fc
    db $fc                                        ; $4a4f: $fc
    nop                                           ; $4a50: $00
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    nop                                           ; $4a53: $00
    nop                                           ; $4a54: $00
    nop                                           ; $4a55: $00
    nop                                           ; $4a56: $00
    nop                                           ; $4a57: $00
    nop                                           ; $4a58: $00
    nop                                           ; $4a59: $00
    nop                                           ; $4a5a: $00
    nop                                           ; $4a5b: $00
    nop                                           ; $4a5c: $00
    nop                                           ; $4a5d: $00
    nop                                           ; $4a5e: $00
    nop                                           ; $4a5f: $00
    nop                                           ; $4a60: $00
    nop                                           ; $4a61: $00
    nop                                           ; $4a62: $00
    nop                                           ; $4a63: $00
    add b                                         ; $4a64: $80
    add b                                         ; $4a65: $80
    adc $ce                                       ; $4a66: $ce $ce
    ld [hl], l                                    ; $4a68: $75
    ld a, e                                       ; $4a69: $7b
    ccf                                           ; $4a6a: $3f
    ccf                                           ; $4a6b: $3f
    cp $fe                                        ; $4a6c: $fe $fe
    nop                                           ; $4a6e: $00
    nop                                           ; $4a6f: $00
    nop                                           ; $4a70: $00
    nop                                           ; $4a71: $00
    nop                                           ; $4a72: $00
    nop                                           ; $4a73: $00
    ld bc, $0201                                  ; $4a74: $01 $01 $02
    inc bc                                        ; $4a77: $03
    ld [bc], a                                    ; $4a78: $02
    inc bc                                        ; $4a79: $03
    inc b                                         ; $4a7a: $04
    rlca                                          ; $4a7b: $07
    inc b                                         ; $4a7c: $04
    rlca                                          ; $4a7d: $07
    dec b                                         ; $4a7e: $05
    rlca                                          ; $4a7f: $07
    ld c, $0f                                     ; $4a80: $0e $0f
    rla                                           ; $4a82: $17
    dec e                                         ; $4a83: $1d
    inc de                                        ; $4a84: $13
    ld e, $0f                                     ; $4a85: $1e $0f
    rrca                                          ; $4a87: $0f
    inc b                                         ; $4a88: $04
    rlca                                          ; $4a89: $07
    dec bc                                        ; $4a8a: $0b
    rrca                                          ; $4a8b: $0f
    ld [$100f], sp                                ; $4a8c: $08 $0f $10
    rra                                           ; $4a8f: $1f
    db $10                                        ; $4a90: $10
    rra                                           ; $4a91: $1f
    jr nz, jr_014_4ad3                            ; $4a92: $20 $3f

    jr c, jr_014_4ad5                             ; $4a94: $38 $3f

    ld a, $27                                     ; $4a96: $3e $27
    ccf                                           ; $4a98: $3f
    ld hl, $283f                                  ; $4a99: $21 $3f $28
    rra                                           ; $4a9c: $1f
    inc d                                         ; $4a9d: $14
    rra                                           ; $4a9e: $1f
    inc d                                         ; $4a9f: $14
    rra                                           ; $4aa0: $1f
    ld d, $1f                                     ; $4aa1: $16 $1f
    inc d                                         ; $4aa3: $14
    ccf                                           ; $4aa4: $3f
    inc h                                         ; $4aa5: $24
    ccf                                           ; $4aa6: $3f
    jr c, jr_014_4ad8                             ; $4aa7: $38 $2f

    dec sp                                        ; $4aa9: $3b
    ld a, h                                       ; $4aaa: $7c
    ld a, a                                       ; $4aab: $7f
    rst $38                                       ; $4aac: $ff
    rst $38                                       ; $4aad: $ff
    ld a, a                                       ; $4aae: $7f
    ld a, a                                       ; $4aaf: $7f
    nop                                           ; $4ab0: $00
    nop                                           ; $4ab1: $00
    add sp, -$18                                  ; $4ab2: $e8 $e8
    inc d                                         ; $4ab4: $14
    db $fc                                        ; $4ab5: $fc
    ld [bc], a                                    ; $4ab6: $02
    cp $1a                                        ; $4ab7: $fe $1a
    cp $3c                                        ; $4ab9: $fe $3c
    db $f4                                        ; $4abb: $f4
    ld [hl], h                                    ; $4abc: $74
    call z, $fcfc                                 ; $4abd: $cc $fc $fc
    db $f4                                        ; $4ac0: $f4
    ld e, h                                       ; $4ac1: $5c
    ld a, h                                       ; $4ac2: $7c
    adc h                                         ; $4ac3: $8c
    cp h                                          ; $4ac4: $bc
    ld b, h                                       ; $4ac5: $44
    ld hl, sp+$08                                 ; $4ac6: $f8 $08
    ldh a, [$90]                                  ; $4ac8: $f0 $90
    ld h, b                                       ; $4aca: $60
    ldh [$cc], a                                  ; $4acb: $e0 $cc
    call z, $f63e                                 ; $4acd: $cc $3e $f6
    ld [hl], $fe                                  ; $4ad0: $36 $fe
    ld e, [hl]                                    ; $4ad2: $5e

jr_014_4ad3:
    cp $6c                                        ; $4ad3: $fe $6c

jr_014_4ad5:
    db $ec                                        ; $4ad5: $ec
    ret nz                                        ; $4ad6: $c0

    ret nz                                        ; $4ad7: $c0

jr_014_4ad8:
    add b                                         ; $4ad8: $80
    add b                                         ; $4ad9: $80
    add b                                         ; $4ada: $80
    add b                                         ; $4adb: $80
    ret nz                                        ; $4adc: $c0

    ld b, b                                       ; $4add: $40
    ret nz                                        ; $4ade: $c0

    ld b, b                                       ; $4adf: $40
    ldh [rNR41], a                                ; $4ae0: $e0 $20
    ldh [rNR41], a                                ; $4ae2: $e0 $20
    ret nz                                        ; $4ae4: $c0

    ld b, b                                       ; $4ae5: $40
    ret nz                                        ; $4ae6: $c0

    ret nz                                        ; $4ae7: $c0

    and b                                         ; $4ae8: $a0
    ld h, b                                       ; $4ae9: $60
    inc e                                         ; $4aea: $1c
    db $fc                                        ; $4aeb: $fc
    cp $fe                                        ; $4aec: $fe $fe
    db $fc                                        ; $4aee: $fc
    db $fc                                        ; $4aef: $fc
    nop                                           ; $4af0: $00
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    nop                                           ; $4af4: $00
    nop                                           ; $4af5: $00
    nop                                           ; $4af6: $00
    nop                                           ; $4af7: $00
    ld bc, $0301                                  ; $4af8: $01 $01 $03
    ld [bc], a                                    ; $4afb: $02
    ld [bc], a                                    ; $4afc: $02
    inc bc                                        ; $4afd: $03
    inc bc                                        ; $4afe: $03
    inc bc                                        ; $4aff: $03
    ld bc, $0001                                  ; $4b00: $01 $01 $00
    nop                                           ; $4b03: $00
    nop                                           ; $4b04: $00
    nop                                           ; $4b05: $00
    nop                                           ; $4b06: $00
    nop                                           ; $4b07: $00
    nop                                           ; $4b08: $00
    nop                                           ; $4b09: $00
    nop                                           ; $4b0a: $00
    nop                                           ; $4b0b: $00
    nop                                           ; $4b0c: $00
    nop                                           ; $4b0d: $00
    nop                                           ; $4b0e: $00
    nop                                           ; $4b0f: $00
    nop                                           ; $4b10: $00
    nop                                           ; $4b11: $00
    nop                                           ; $4b12: $00
    nop                                           ; $4b13: $00
    ld bc, $0201                                  ; $4b14: $01 $01 $02
    inc bc                                        ; $4b17: $03
    add d                                         ; $4b18: $82
    add e                                         ; $4b19: $83
    call nz, $c4c7                                ; $4b1a: $c4 $c7 $c4
    rst $00                                       ; $4b1d: $c7
    call nz, $83c7                                ; $4b1e: $c4 $c7 $83
    add e                                         ; $4b21: $83
    push bc                                       ; $4b22: $c5
    rst $00                                       ; $4b23: $c7
    ld h, h                                       ; $4b24: $64
    ld h, a                                       ; $4b25: $67
    ccf                                           ; $4b26: $3f
    ccf                                           ; $4b27: $3f
    inc d                                         ; $4b28: $14
    rra                                           ; $4b29: $1f
    inc hl                                        ; $4b2a: $23
    ccf                                           ; $4b2b: $3f
    db $10                                        ; $4b2c: $10
    rra                                           ; $4b2d: $1f
    db $10                                        ; $4b2e: $10
    rra                                           ; $4b2f: $1f
    db $10                                        ; $4b30: $10
    rra                                           ; $4b31: $1f
    jr nz, jr_014_4b73                            ; $4b32: $20 $3f

    inc a                                         ; $4b34: $3c
    ccf                                           ; $4b35: $3f
    ccf                                           ; $4b36: $3f
    inc hl                                        ; $4b37: $23
    ccf                                           ; $4b38: $3f
    jr nz, jr_014_4b7a                            ; $4b39: $20 $3f

    inc l                                         ; $4b3b: $2c
    ccf                                           ; $4b3c: $3f
    inc h                                         ; $4b3d: $24
    ccf                                           ; $4b3e: $3f
    ld [hl+], a                                   ; $4b3f: $22
    ccf                                           ; $4b40: $3f
    ld [hl+], a                                   ; $4b41: $22
    ccf                                           ; $4b42: $3f
    ld [hl+], a                                   ; $4b43: $22
    ccf                                           ; $4b44: $3f
    ld h, $7f                                     ; $4b45: $26 $7f
    ld e, h                                       ; $4b47: $5c
    ld h, a                                       ; $4b48: $67
    ld a, l                                       ; $4b49: $7d
    ld a, [hl]                                    ; $4b4a: $7e
    ld a, a                                       ; $4b4b: $7f
    rst $38                                       ; $4b4c: $ff
    rst $38                                       ; $4b4d: $ff
    ld a, a                                       ; $4b4e: $7f
    ld a, a                                       ; $4b4f: $7f
    nop                                           ; $4b50: $00
    nop                                           ; $4b51: $00
    add sp, -$18                                  ; $4b52: $e8 $e8
    inc d                                         ; $4b54: $14
    db $fc                                        ; $4b55: $fc
    ld [bc], a                                    ; $4b56: $02
    cp $1a                                        ; $4b57: $fe $1a
    cp $1c                                        ; $4b59: $fe $1c
    db $f4                                        ; $4b5b: $f4
    inc [hl]                                      ; $4b5c: $34
    db $ec                                        ; $4b5d: $ec
    ld a, h                                       ; $4b5e: $7c
    db $fc                                        ; $4b5f: $fc
    cp h                                          ; $4b60: $bc
    db $ec                                        ; $4b61: $ec
    db $fc                                        ; $4b62: $fc
    ld b, h                                       ; $4b63: $44
    db $fc                                        ; $4b64: $fc
    and h                                         ; $4b65: $a4
    ret c                                         ; $4b66: $d8

    xor b                                         ; $4b67: $a8
    ldh a, [$d0]                                  ; $4b68: $f0 $d0
    ld h, b                                       ; $4b6a: $60
    ldh [$90], a                                  ; $4b6b: $e0 $90
    ldh a, [rNR10]                                ; $4b6d: $f0 $10
    ldh a, [rNR41]                                ; $4b6f: $f0 $20
    ldh [rLCDC], a                                ; $4b71: $e0 $40

jr_014_4b73:
    ret nz                                        ; $4b73: $c0

    ld b, b                                       ; $4b74: $40
    ret nz                                        ; $4b75: $c0

    add b                                         ; $4b76: $80
    add b                                         ; $4b77: $80
    add b                                         ; $4b78: $80
    add b                                         ; $4b79: $80

jr_014_4b7a:
    add b                                         ; $4b7a: $80
    add b                                         ; $4b7b: $80
    ret nz                                        ; $4b7c: $c0

    ld b, b                                       ; $4b7d: $40
    ret nz                                        ; $4b7e: $c0

    ld b, b                                       ; $4b7f: $40
    ret nz                                        ; $4b80: $c0

    ld b, b                                       ; $4b81: $40
    ldh [rNR41], a                                ; $4b82: $e0 $20
    ldh [rNR41], a                                ; $4b84: $e0 $20
    ldh [rNR41], a                                ; $4b86: $e0 $20
    ret nc                                        ; $4b88: $d0

    ldh a, [$9c]                                  ; $4b89: $f0 $9c
    ld a, h                                       ; $4b8b: $7c
    cp $fe                                        ; $4b8c: $fe $fe
    db $fc                                        ; $4b8e: $fc
    db $fc                                        ; $4b8f: $fc
    nop                                           ; $4b90: $00
    nop                                           ; $4b91: $00
    ld bc, $0201                                  ; $4b92: $01 $01 $02
    inc bc                                        ; $4b95: $03
    inc b                                         ; $4b96: $04
    rlca                                          ; $4b97: $07
    inc b                                         ; $4b98: $04
    rlca                                          ; $4b99: $07
    jr c, jr_014_4bdb                             ; $4b9a: $38 $3f

    ld c, b                                       ; $4b9c: $48
    ld a, a                                       ; $4b9d: $7f
    ld e, h                                       ; $4b9e: $5c
    ld a, a                                       ; $4b9f: $7f
    cp $b3                                        ; $4ba0: $fe $b3
    rst $38                                       ; $4ba2: $ff
    sub c                                         ; $4ba3: $91
    rst $38                                       ; $4ba4: $ff
    sbc e                                         ; $4ba5: $9b
    rst $20                                       ; $4ba6: $e7
    cp a                                          ; $4ba7: $bf
    ld b, l                                       ; $4ba8: $45
    ld a, a                                       ; $4ba9: $7f
    ld [hl+], a                                   ; $4baa: $22
    ccf                                           ; $4bab: $3f
    ld de, $101f                                  ; $4bac: $11 $1f $10
    rra                                           ; $4baf: $1f
    db $10                                        ; $4bb0: $10
    rra                                           ; $4bb1: $1f
    db $10                                        ; $4bb2: $10
    rra                                           ; $4bb3: $1f
    inc e                                         ; $4bb4: $1c
    rra                                           ; $4bb5: $1f
    ccf                                           ; $4bb6: $3f
    inc hl                                        ; $4bb7: $23
    ccf                                           ; $4bb8: $3f
    jr nz, jr_014_4bfa                            ; $4bb9: $20 $3f

    inc h                                         ; $4bbb: $24
    ccf                                           ; $4bbc: $3f
    ld [hl+], a                                   ; $4bbd: $22
    ccf                                           ; $4bbe: $3f
    ld [hl+], a                                   ; $4bbf: $22
    ccf                                           ; $4bc0: $3f
    ld [hl+], a                                   ; $4bc1: $22
    ccf                                           ; $4bc2: $3f
    ld [hl+], a                                   ; $4bc3: $22
    ccf                                           ; $4bc4: $3f
    ld h, $7f                                     ; $4bc5: $26 $7f
    ld e, l                                       ; $4bc7: $5d
    ld h, d                                       ; $4bc8: $62
    ld a, a                                       ; $4bc9: $7f
    ld a, [hl]                                    ; $4bca: $7e
    ld a, a                                       ; $4bcb: $7f
    rst $38                                       ; $4bcc: $ff
    rst $38                                       ; $4bcd: $ff

jr_014_4bce:
    ld a, a                                       ; $4bce: $7f
    ld a, a                                       ; $4bcf: $7f
    nop                                           ; $4bd0: $00
    nop                                           ; $4bd1: $00
    ldh [$e0], a                                  ; $4bd2: $e0 $e0

jr_014_4bd4:
    jr jr_014_4bce                                ; $4bd4: $18 $f8

    ld [$04f8], sp                                ; $4bd6: $08 $f8 $04
    db $fc                                        ; $4bd9: $fc
    inc b                                         ; $4bda: $04

jr_014_4bdb:
    db $fc                                        ; $4bdb: $fc
    inc b                                         ; $4bdc: $04
    db $fc                                        ; $4bdd: $fc
    ld [$e8f8], sp                                ; $4bde: $08 $f8 $e8
    ld hl, sp+$1c                                 ; $4be1: $f8 $1c
    db $f4                                        ; $4be3: $f4
    sbc h                                         ; $4be4: $9c
    db $f4                                        ; $4be5: $f4
    ld hl, sp+$68                                 ; $4be6: $f8 $68
    or $b6                                        ; $4be8: $f6 $b6
    ld a, l                                       ; $4bea: $7d
    rst $18                                       ; $4beb: $df
    cp a                                          ; $4bec: $bf
    ei                                            ; $4bed: $fb
    rra                                           ; $4bee: $1f
    rst $38                                       ; $4bef: $ff
    ld l, $ee                                     ; $4bf0: $2e $ee
    jr nz, jr_014_4bd4                            ; $4bf2: $20 $e0

    ld b, b                                       ; $4bf4: $40
    ret nz                                        ; $4bf5: $c0

    ret nz                                        ; $4bf6: $c0

    ret nz                                        ; $4bf7: $c0

    ret nz                                        ; $4bf8: $c0

    ld b, b                                       ; $4bf9: $40

jr_014_4bfa:
    ret nz                                        ; $4bfa: $c0

    ld b, b                                       ; $4bfb: $40
    ret nz                                        ; $4bfc: $c0

    ld b, b                                       ; $4bfd: $40
    ldh [rNR41], a                                ; $4bfe: $e0 $20
    ldh [rNR41], a                                ; $4c00: $e0 $20
    ldh [rNR41], a                                ; $4c02: $e0 $20
    ldh a, [$30]                                  ; $4c04: $f0 $30
    ldh a, [$d0]                                  ; $4c06: $f0 $d0
    or b                                          ; $4c08: $b0
    ld [hl], b                                    ; $4c09: $70
    call c, $fefc                                 ; $4c0a: $dc $fc $fe
    cp $fc                                        ; $4c0d: $fe $fc
    db $fc                                        ; $4c0f: $fc
    nop                                           ; $4c10: $00
    nop                                           ; $4c11: $00
    nop                                           ; $4c12: $00
    nop                                           ; $4c13: $00
    nop                                           ; $4c14: $00
    nop                                           ; $4c15: $00
    ld bc, $0101                                  ; $4c16: $01 $01 $01
    ld bc, $0302                                  ; $4c19: $01 $02 $03
    inc bc                                        ; $4c1c: $03
    inc bc                                        ; $4c1d: $03
    ld e, $1f                                     ; $4c1e: $1e $1f
    cpl                                           ; $4c20: $2f
    ld a, [hl-]                                   ; $4c21: $3a
    daa                                           ; $4c22: $27
    ld a, $19                                     ; $4c23: $3e $19
    add hl, de                                    ; $4c25: $19
    inc bc                                        ; $4c26: $03
    inc bc                                        ; $4c27: $03
    inc b                                         ; $4c28: $04
    rlca                                          ; $4c29: $07
    add hl, bc                                    ; $4c2a: $09
    rrca                                          ; $4c2b: $0f
    add hl, bc                                    ; $4c2c: $09
    rrca                                          ; $4c2d: $0f
    ld [de], a                                    ; $4c2e: $12
    rra                                           ; $4c2f: $1f
    ld [de], a                                    ; $4c30: $12
    rra                                           ; $4c31: $1f
    ld [hl+], a                                   ; $4c32: $22
    ccf                                           ; $4c33: $3f
    ld a, [hl-]                                   ; $4c34: $3a
    ccf                                           ; $4c35: $3f
    ccf                                           ; $4c36: $3f
    daa                                           ; $4c37: $27
    ccf                                           ; $4c38: $3f
    ld hl, $233f                                  ; $4c39: $21 $3f $23
    rra                                           ; $4c3c: $1f
    ld de, $111f                                  ; $4c3d: $11 $1f $11
    rra                                           ; $4c40: $1f
    ld de, $111f                                  ; $4c41: $11 $1f $11
    ccf                                           ; $4c44: $3f
    ld hl, $273e                                  ; $4c45: $21 $3e $27
    ld a, e                                       ; $4c48: $7b
    ld e, l                                       ; $4c49: $5d
    ld h, b                                       ; $4c4a: $60
    ld a, a                                       ; $4c4b: $7f
    rst $38                                       ; $4c4c: $ff
    rst $38                                       ; $4c4d: $ff
    ld a, a                                       ; $4c4e: $7f
    ld a, a                                       ; $4c4f: $7f
    nop                                           ; $4c50: $00
    nop                                           ; $4c51: $00
    ld [hl], h                                    ; $4c52: $74
    ld [hl], h                                    ; $4c53: $74

jr_014_4c54:
    adc d                                         ; $4c54: $8a
    cp $01                                        ; $4c55: $fe $01
    rst $38                                       ; $4c57: $ff
    dec e                                         ; $4c58: $1d
    rst $38                                       ; $4c59: $ff
    ld a, $e2                                     ; $4c5a: $3e $e2
    ld a, [$fec6]                                 ; $4c5c: $fa $c6 $fe
    ld a, [hl]                                    ; $4c5f: $7e
    or $9e                                        ; $4c60: $f6 $9e
    ld a, a                                       ; $4c62: $7f
    adc l                                         ; $4c63: $8d
    rst $38                                       ; $4c64: $ff
    inc bc                                        ; $4c65: $03
    db $fc                                        ; $4c66: $fc
    add h                                         ; $4c67: $84
    ld hl, sp-$38                                 ; $4c68: $f8 $c8
    ld [hl], b                                    ; $4c6a: $70
    ldh a, [$c0]                                  ; $4c6b: $f0 $c0
    ret nz                                        ; $4c6d: $c0

    ld b, b                                       ; $4c6e: $40
    ret nz                                        ; $4c6f: $c0

    ld b, b                                       ; $4c70: $40
    ret nz                                        ; $4c71: $c0

    jr nz, jr_014_4c54                            ; $4c72: $20 $e0

    ldh [$e0], a                                  ; $4c74: $e0 $e0
    ldh [rNR41], a                                ; $4c76: $e0 $20
    ldh a, [rNR10]                                ; $4c78: $f0 $10
    ldh a, [$90]                                  ; $4c7a: $f0 $90
    ld hl, sp-$78                                 ; $4c7c: $f8 $88
    ld a, h                                       ; $4c7e: $7c
    ld l, h                                       ; $4c7f: $6c
    ld d, $16                                     ; $4c80: $16 $16
    inc bc                                        ; $4c82: $03
    inc bc                                        ; $4c83: $03
    ld bc, $8001                                  ; $4c84: $01 $01 $80
    add b                                         ; $4c87: $80
    add b                                         ; $4c88: $80
    add b                                         ; $4c89: $80
    db $fc                                        ; $4c8a: $fc
    db $fc                                        ; $4c8b: $fc
    rst $38                                       ; $4c8c: $ff
    rst $38                                       ; $4c8d: $ff
    db $fc                                        ; $4c8e: $fc
    db $fc                                        ; $4c8f: $fc
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
    add b                                         ; $4ca4: $80
    add b                                         ; $4ca5: $80
    xor $ee                                       ; $4ca6: $ee $ee
    ld e, e                                       ; $4ca8: $5b
    ld a, l                                       ; $4ca9: $7d
    ld sp, $fe3f                                  ; $4caa: $31 $3f $fe
    cp $00                                        ; $4cad: $fe $00
    nop                                           ; $4caf: $00
    nop                                           ; $4cb0: $00
    nop                                           ; $4cb1: $00
    nop                                           ; $4cb2: $00
    nop                                           ; $4cb3: $00
    nop                                           ; $4cb4: $00
    nop                                           ; $4cb5: $00
    nop                                           ; $4cb6: $00
    nop                                           ; $4cb7: $00
    ld bc, $0101                                  ; $4cb8: $01 $01 $01
    ld bc, $0302                                  ; $4cbb: $01 $02 $03
    inc bc                                        ; $4cbe: $03
    inc bc                                        ; $4cbf: $03
    ld e, $1f                                     ; $4cc0: $1e $1f
    cpl                                           ; $4cc2: $2f
    ld a, [hl-]                                   ; $4cc3: $3a
    daa                                           ; $4cc4: $27
    ld a, $19                                     ; $4cc5: $3e $19
    add hl, de                                    ; $4cc7: $19
    ld bc, $0201                                  ; $4cc8: $01 $01 $02
    inc bc                                        ; $4ccb: $03
    dec b                                         ; $4ccc: $05
    rlca                                          ; $4ccd: $07
    dec bc                                        ; $4cce: $0b
    rrca                                          ; $4ccf: $0f
    ld c, $0f                                     ; $4cd0: $0e $0f
    inc d                                         ; $4cd2: $14
    rra                                           ; $4cd3: $1f
    inc d                                         ; $4cd4: $14
    rra                                           ; $4cd5: $1f
    inc a                                         ; $4cd6: $3c
    cpl                                           ; $4cd7: $2f
    ld a, $27                                     ; $4cd8: $3e $27
    ccf                                           ; $4cda: $3f
    inc hl                                        ; $4cdb: $23
    rra                                           ; $4cdc: $1f
    ld de, $111f                                  ; $4cdd: $11 $1f $11
    rra                                           ; $4ce0: $1f
    ld de, $111f                                  ; $4ce1: $11 $1f $11
    ccf                                           ; $4ce4: $3f
    ld hl, $273e                                  ; $4ce5: $21 $3e $27
    ld a, e                                       ; $4ce8: $7b
    ld e, l                                       ; $4ce9: $5d
    ld h, b                                       ; $4cea: $60
    ld a, a                                       ; $4ceb: $7f
    rst $38                                       ; $4cec: $ff
    rst $38                                       ; $4ced: $ff
    ld a, a                                       ; $4cee: $7f
    ld a, a                                       ; $4cef: $7f
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    nop                                           ; $4cf2: $00
    nop                                           ; $4cf3: $00
    ld [hl], h                                    ; $4cf4: $74
    ld [hl], h                                    ; $4cf5: $74
    adc d                                         ; $4cf6: $8a
    cp $01                                        ; $4cf7: $fe $01
    rst $38                                       ; $4cf9: $ff
    dec e                                         ; $4cfa: $1d
    rst $38                                       ; $4cfb: $ff
    ld a, $e2                                     ; $4cfc: $3e $e2
    ld a, [$fec6]                                 ; $4cfe: $fa $c6 $fe
    ld a, [hl]                                    ; $4d01: $7e
    or $9e                                        ; $4d02: $f6 $9e
    ld a, a                                       ; $4d04: $7f
    adc l                                         ; $4d05: $8d
    rst $38                                       ; $4d06: $ff
    inc bc                                        ; $4d07: $03
    db $fc                                        ; $4d08: $fc
    add h                                         ; $4d09: $84
    ld hl, sp-$38                                 ; $4d0a: $f8 $c8
    ld [hl], b                                    ; $4d0c: $70
    ldh a, [$c0]                                  ; $4d0d: $f0 $c0
    ret nz                                        ; $4d0f: $c0

    ret nz                                        ; $4d10: $c0

    ret nz                                        ; $4d11: $c0

    ldh [$e0], a                                  ; $4d12: $e0 $e0
    ld h, b                                       ; $4d14: $60
    ldh [$50], a                                  ; $4d15: $e0 $50
    ldh a, [$f8]                                  ; $4d17: $f0 $f8
    xor b                                         ; $4d19: $a8
    ld hl, sp+$18                                 ; $4d1a: $f8 $18
    ld hl, sp-$78                                 ; $4d1c: $f8 $88
    ld a, h                                       ; $4d1e: $7c
    ld b, h                                       ; $4d1f: $44
    ld a, $36                                     ; $4d20: $3e $36
    dec bc                                        ; $4d22: $0b
    dec bc                                        ; $4d23: $0b
    ld bc, $8001                                  ; $4d24: $01 $01 $80
    add b                                         ; $4d27: $80
    add b                                         ; $4d28: $80
    add b                                         ; $4d29: $80
    db $fc                                        ; $4d2a: $fc
    db $fc                                        ; $4d2b: $fc
    rst $38                                       ; $4d2c: $ff
    rst $38                                       ; $4d2d: $ff
    db $fc                                        ; $4d2e: $fc
    db $fc                                        ; $4d2f: $fc
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
    nop                                           ; $4d41: $00
    nop                                           ; $4d42: $00
    nop                                           ; $4d43: $00
    add b                                         ; $4d44: $80
    add b                                         ; $4d45: $80
    xor $ee                                       ; $4d46: $ee $ee
    ld e, e                                       ; $4d48: $5b
    ld a, l                                       ; $4d49: $7d
    ld sp, $fe3f                                  ; $4d4a: $31 $3f $fe
    cp $00                                        ; $4d4d: $fe $00
    nop                                           ; $4d4f: $00

    db $70, $4d, $10, $4e, $90, $4e, $10, $4f, $d0, $4f, $70, $50, $30, $51, $d0, $51
    db $70, $52, $f0, $52, $90, $53

    nop                                           ; $4d66: $00
    nop                                           ; $4d67: $00
    nop                                           ; $4d68: $00
    nop                                           ; $4d69: $00
    nop                                           ; $4d6a: $00
    nop                                           ; $4d6b: $00
    nop                                           ; $4d6c: $00
    nop                                           ; $4d6d: $00
    nop                                           ; $4d6e: $00
    nop                                           ; $4d6f: $00
    nop                                           ; $4d70: $00
    nop                                           ; $4d71: $00
    nop                                           ; $4d72: $00
    nop                                           ; $4d73: $00
    nop                                           ; $4d74: $00
    nop                                           ; $4d75: $00
    nop                                           ; $4d76: $00
    nop                                           ; $4d77: $00
    ld bc, $0601                                  ; $4d78: $01 $01 $06
    rlca                                          ; $4d7b: $07
    inc b                                         ; $4d7c: $04
    rlca                                          ; $4d7d: $07
    ld [$080f], sp                                ; $4d7e: $08 $0f $08
    rrca                                          ; $4d81: $0f
    rlca                                          ; $4d82: $07
    rlca                                          ; $4d83: $07
    inc b                                         ; $4d84: $04
    rlca                                          ; $4d85: $07
    dec b                                         ; $4d86: $05
    rlca                                          ; $4d87: $07
    inc bc                                        ; $4d88: $03
    ld [bc], a                                    ; $4d89: $02
    inc bc                                        ; $4d8a: $03
    ld [bc], a                                    ; $4d8b: $02
    ld bc, $0101                                  ; $4d8c: $01 $01 $01
    ld bc, $0101                                  ; $4d8f: $01 $01 $01
    inc bc                                        ; $4d92: $03
    ld [bc], a                                    ; $4d93: $02
    inc bc                                        ; $4d94: $03
    ld [bc], a                                    ; $4d95: $02
    rlca                                          ; $4d96: $07
    inc b                                         ; $4d97: $04
    rlca                                          ; $4d98: $07
    ld b, $09                                     ; $4d99: $06 $09
    rrca                                          ; $4d9b: $0f
    ld [$070f], sp                                ; $4d9c: $08 $0f $07
    rlca                                          ; $4d9f: $07
    inc bc                                        ; $4da0: $03
    ld [bc], a                                    ; $4da1: $02
    rlca                                          ; $4da2: $07
    inc b                                         ; $4da3: $04
    rlca                                          ; $4da4: $07
    rlca                                          ; $4da5: $07
    rlca                                          ; $4da6: $07
    inc b                                         ; $4da7: $04
    rlca                                          ; $4da8: $07
    rlca                                          ; $4da9: $07
    dec sp                                        ; $4daa: $3b
    ccf                                           ; $4dab: $3f
    ld a, a                                       ; $4dac: $7f
    ld a, a                                       ; $4dad: $7f
    ccf                                           ; $4dae: $3f
    ccf                                           ; $4daf: $3f
    nop                                           ; $4db0: $00
    nop                                           ; $4db1: $00
    nop                                           ; $4db2: $00
    nop                                           ; $4db3: $00
    nop                                           ; $4db4: $00
    nop                                           ; $4db5: $00
    nop                                           ; $4db6: $00
    nop                                           ; $4db7: $00
    add b                                         ; $4db8: $80
    add b                                         ; $4db9: $80
    ld [hl], b                                    ; $4dba: $70
    ldh a, [rOBP0]                                ; $4dbb: $f0 $48
    ld hl, sp+$4c                                 ; $4dbd: $f8 $4c
    db $fc                                        ; $4dbf: $fc
    sbc [hl]                                      ; $4dc0: $9e
    ld a, [c]                                     ; $4dc1: $f2
    ld a, $e6                                     ; $4dc2: $3e $e6
    ld a, $e2                                     ; $4dc4: $3e $e2
    cp [hl]                                       ; $4dc6: $be
    and $ff                                       ; $4dc7: $e6 $ff
    ld b, l                                       ; $4dc9: $45
    rst $38                                       ; $4dca: $ff
    add c                                         ; $4dcb: $81
    cp $02                                        ; $4dcc: $fe $02
    db $fc                                        ; $4dce: $fc
    call nz, Call_000_38f8                        ; $4dcf: $c4 $f8 $38
    ldh a, [rSVBK]                                ; $4dd2: $f0 $70
    ldh a, [$90]                                  ; $4dd4: $f0 $90
    ld hl, sp-$78                                 ; $4dd6: $f8 $88
    ld hl, sp-$48                                 ; $4dd8: $f8 $b8
    ld hl, sp-$38                                 ; $4dda: $f8 $c8
    ld a, h                                       ; $4ddc: $7c
    call nz, $e43c                                ; $4ddd: $c4 $3c $e4
    cp $e2                                        ; $4de0: $fe $e2
    rst $18                                       ; $4de2: $df
    ld e, e                                       ; $4de3: $5b
    push hl                                       ; $4de4: $e5
    push hl                                       ; $4de5: $e5
    ret nc                                        ; $4de6: $d0

    ldh a, [$f0]                                  ; $4de7: $f0 $f0
    or b                                          ; $4de9: $b0
    ld e, $fe                                     ; $4dea: $1e $fe
    rst $38                                       ; $4dec: $ff
    rst $38                                       ; $4ded: $ff
    cp $fe                                        ; $4dee: $fe $fe
    nop                                           ; $4df0: $00
    nop                                           ; $4df1: $00
    nop                                           ; $4df2: $00
    nop                                           ; $4df3: $00
    nop                                           ; $4df4: $00
    nop                                           ; $4df5: $00
    nop                                           ; $4df6: $00
    nop                                           ; $4df7: $00
    nop                                           ; $4df8: $00
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    nop                                           ; $4dfb: $00
    nop                                           ; $4dfc: $00
    nop                                           ; $4dfd: $00
    nop                                           ; $4dfe: $00
    nop                                           ; $4dff: $00
    nop                                           ; $4e00: $00
    nop                                           ; $4e01: $00
    nop                                           ; $4e02: $00
    nop                                           ; $4e03: $00
    add b                                         ; $4e04: $80
    add b                                         ; $4e05: $80
    adc $ce                                       ; $4e06: $ce $ce
    ld [hl], l                                    ; $4e08: $75
    ld a, e                                       ; $4e09: $7b
    ccf                                           ; $4e0a: $3f
    ccf                                           ; $4e0b: $3f
    cp $fe                                        ; $4e0c: $fe $fe
    nop                                           ; $4e0e: $00
    nop                                           ; $4e0f: $00
    nop                                           ; $4e10: $00
    nop                                           ; $4e11: $00
    nop                                           ; $4e12: $00
    nop                                           ; $4e13: $00
    nop                                           ; $4e14: $00
    nop                                           ; $4e15: $00
    nop                                           ; $4e16: $00
    nop                                           ; $4e17: $00
    ld bc, $0601                                  ; $4e18: $01 $01 $06
    rlca                                          ; $4e1b: $07
    inc b                                         ; $4e1c: $04
    rlca                                          ; $4e1d: $07
    ld [$080f], sp                                ; $4e1e: $08 $0f $08
    rrca                                          ; $4e21: $0f
    rlca                                          ; $4e22: $07
    rlca                                          ; $4e23: $07
    inc b                                         ; $4e24: $04
    rlca                                          ; $4e25: $07
    dec b                                         ; $4e26: $05
    rlca                                          ; $4e27: $07
    inc bc                                        ; $4e28: $03
    ld [bc], a                                    ; $4e29: $02
    inc bc                                        ; $4e2a: $03
    ld [bc], a                                    ; $4e2b: $02
    ld bc, $0101                                  ; $4e2c: $01 $01 $01
    ld bc, $0101                                  ; $4e2f: $01 $01 $01
    inc bc                                        ; $4e32: $03
    ld [bc], a                                    ; $4e33: $02
    inc bc                                        ; $4e34: $03
    inc bc                                        ; $4e35: $03
    rlca                                          ; $4e36: $07
    ld b, $07                                     ; $4e37: $06 $07
    rlca                                          ; $4e39: $07
    add hl, bc                                    ; $4e3a: $09
    rrca                                          ; $4e3b: $0f
    add hl, bc                                    ; $4e3c: $09
    rrca                                          ; $4e3d: $0f
    rlca                                          ; $4e3e: $07
    rlca                                          ; $4e3f: $07
    inc bc                                        ; $4e40: $03
    ld [bc], a                                    ; $4e41: $02
    rlca                                          ; $4e42: $07
    inc b                                         ; $4e43: $04
    rlca                                          ; $4e44: $07
    rlca                                          ; $4e45: $07
    rlca                                          ; $4e46: $07
    inc b                                         ; $4e47: $04
    rlca                                          ; $4e48: $07
    rlca                                          ; $4e49: $07
    dec sp                                        ; $4e4a: $3b
    ccf                                           ; $4e4b: $3f
    ld a, a                                       ; $4e4c: $7f
    ld a, a                                       ; $4e4d: $7f
    ccf                                           ; $4e4e: $3f
    ccf                                           ; $4e4f: $3f
    nop                                           ; $4e50: $00
    nop                                           ; $4e51: $00
    nop                                           ; $4e52: $00
    nop                                           ; $4e53: $00
    nop                                           ; $4e54: $00
    nop                                           ; $4e55: $00
    nop                                           ; $4e56: $00
    nop                                           ; $4e57: $00
    add b                                         ; $4e58: $80
    add b                                         ; $4e59: $80
    ld [hl], b                                    ; $4e5a: $70
    ldh a, [rOBP0]                                ; $4e5b: $f0 $48
    ld hl, sp+$4c                                 ; $4e5d: $f8 $4c
    db $fc                                        ; $4e5f: $fc
    sbc [hl]                                      ; $4e60: $9e
    ld a, [c]                                     ; $4e61: $f2
    ld a, $e6                                     ; $4e62: $3e $e6
    ld a, $e2                                     ; $4e64: $3e $e2
    cp [hl]                                       ; $4e66: $be
    and $ff                                       ; $4e67: $e6 $ff
    ld b, l                                       ; $4e69: $45
    rst $38                                       ; $4e6a: $ff
    add c                                         ; $4e6b: $81
    cp $02                                        ; $4e6c: $fe $02
    db $fc                                        ; $4e6e: $fc
    call nz, Call_000_38f8                        ; $4e6f: $c4 $f8 $38
    ldh a, [$f0]                                  ; $4e72: $f0 $f0
    ld hl, sp+$28                                 ; $4e74: $f8 $28
    ld hl, sp+$28                                 ; $4e76: $f8 $28
    ld hl, sp+$68                                 ; $4e78: $f8 $68
    ldh a, [$b0]                                  ; $4e7a: $f0 $b0
    ldh a, [rNR10]                                ; $4e7c: $f0 $10
    ld hl, sp-$48                                 ; $4e7e: $f8 $b8
    db $ec                                        ; $4e80: $ec
    db $f4                                        ; $4e81: $f4
    db $fc                                        ; $4e82: $fc
    ld a, h                                       ; $4e83: $7c
    ld hl, sp-$08                                 ; $4e84: $f8 $f8
    ret nc                                        ; $4e86: $d0

    ldh a, [$f0]                                  ; $4e87: $f0 $f0
    or b                                          ; $4e89: $b0
    ld e, $fe                                     ; $4e8a: $1e $fe
    rst $38                                       ; $4e8c: $ff
    rst $38                                       ; $4e8d: $ff
    cp $fe                                        ; $4e8e: $fe $fe
    nop                                           ; $4e90: $00
    nop                                           ; $4e91: $00
    nop                                           ; $4e92: $00
    nop                                           ; $4e93: $00
    nop                                           ; $4e94: $00
    nop                                           ; $4e95: $00
    nop                                           ; $4e96: $00
    nop                                           ; $4e97: $00
    ld bc, $0601                                  ; $4e98: $01 $01 $06
    rlca                                          ; $4e9b: $07
    inc b                                         ; $4e9c: $04
    rlca                                          ; $4e9d: $07
    ld [$080f], sp                                ; $4e9e: $08 $0f $08
    rrca                                          ; $4ea1: $0f
    rlca                                          ; $4ea2: $07
    rlca                                          ; $4ea3: $07
    inc b                                         ; $4ea4: $04
    rlca                                          ; $4ea5: $07
    dec b                                         ; $4ea6: $05
    rlca                                          ; $4ea7: $07
    inc bc                                        ; $4ea8: $03
    ld [bc], a                                    ; $4ea9: $02
    inc bc                                        ; $4eaa: $03
    ld [bc], a                                    ; $4eab: $02
    ld bc, $0101                                  ; $4eac: $01 $01 $01
    ld bc, $1b1b                                  ; $4eaf: $01 $1b $1b
    cpl                                           ; $4eb2: $2f
    ld a, $3f                                     ; $4eb3: $3e $3f
    cpl                                           ; $4eb5: $2f
    dec a                                         ; $4eb6: $3d
    ccf                                           ; $4eb7: $3f
    rra                                           ; $4eb8: $1f
    ld a, [de]                                    ; $4eb9: $1a
    dec c                                         ; $4eba: $0d
    rrca                                          ; $4ebb: $0f
    add hl, bc                                    ; $4ebc: $09
    rrca                                          ; $4ebd: $0f
    rlca                                          ; $4ebe: $07
    rlca                                          ; $4ebf: $07
    inc bc                                        ; $4ec0: $03
    ld [bc], a                                    ; $4ec1: $02
    rlca                                          ; $4ec2: $07
    inc b                                         ; $4ec3: $04
    rlca                                          ; $4ec4: $07
    rlca                                          ; $4ec5: $07
    rlca                                          ; $4ec6: $07
    inc b                                         ; $4ec7: $04
    rlca                                          ; $4ec8: $07
    rlca                                          ; $4ec9: $07
    dec sp                                        ; $4eca: $3b
    ccf                                           ; $4ecb: $3f
    ld a, a                                       ; $4ecc: $7f
    ld a, a                                       ; $4ecd: $7f
    ccf                                           ; $4ece: $3f
    ccf                                           ; $4ecf: $3f
    nop                                           ; $4ed0: $00
    nop                                           ; $4ed1: $00
    nop                                           ; $4ed2: $00
    nop                                           ; $4ed3: $00
    nop                                           ; $4ed4: $00
    nop                                           ; $4ed5: $00
    nop                                           ; $4ed6: $00
    nop                                           ; $4ed7: $00
    add b                                         ; $4ed8: $80
    add b                                         ; $4ed9: $80
    ld [hl], b                                    ; $4eda: $70
    ldh a, [rOBP0]                                ; $4edb: $f0 $48
    ld hl, sp+$4c                                 ; $4edd: $f8 $4c
    db $fc                                        ; $4edf: $fc
    sbc [hl]                                      ; $4ee0: $9e
    ld a, [c]                                     ; $4ee1: $f2
    ld a, $e6                                     ; $4ee2: $3e $e6
    ld a, $e2                                     ; $4ee4: $3e $e2
    cp [hl]                                       ; $4ee6: $be
    and $ff                                       ; $4ee7: $e6 $ff
    ld b, l                                       ; $4ee9: $45
    rst $38                                       ; $4eea: $ff
    add c                                         ; $4eeb: $81
    cp $02                                        ; $4eec: $fe $02
    db $fc                                        ; $4eee: $fc
    call nz, Call_000_38f8                        ; $4eef: $c4 $f8 $38
    ldh a, [$f0]                                  ; $4ef2: $f0 $f0
    ld hl, sp+$48                                 ; $4ef4: $f8 $48
    ld hl, sp-$58                                 ; $4ef6: $f8 $a8
    ldh a, [$50]                                  ; $4ef8: $f0 $50
    ldh [$60], a                                  ; $4efa: $e0 $60
    and b                                         ; $4efc: $a0
    ldh [rNR41], a                                ; $4efd: $e0 $20
    ldh [$f0], a                                  ; $4eff: $e0 $f0
    ldh a, [$f0]                                  ; $4f01: $f0 $f0
    ld d, b                                       ; $4f03: $50
    ldh [$e0], a                                  ; $4f04: $e0 $e0
    ret nc                                        ; $4f06: $d0

    ldh a, [$f0]                                  ; $4f07: $f0 $f0
    or b                                          ; $4f09: $b0
    ld e, $fe                                     ; $4f0a: $1e $fe
    rst $38                                       ; $4f0c: $ff
    rst $38                                       ; $4f0d: $ff
    cp $fe                                        ; $4f0e: $fe $fe
    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    nop                                           ; $4f12: $00
    nop                                           ; $4f13: $00
    nop                                           ; $4f14: $00
    nop                                           ; $4f15: $00
    nop                                           ; $4f16: $00
    nop                                           ; $4f17: $00
    nop                                           ; $4f18: $00
    nop                                           ; $4f19: $00
    nop                                           ; $4f1a: $00
    nop                                           ; $4f1b: $00
    nop                                           ; $4f1c: $00
    nop                                           ; $4f1d: $00
    nop                                           ; $4f1e: $00
    nop                                           ; $4f1f: $00
    nop                                           ; $4f20: $00
    nop                                           ; $4f21: $00
    nop                                           ; $4f22: $00
    nop                                           ; $4f23: $00
    nop                                           ; $4f24: $00
    nop                                           ; $4f25: $00
    nop                                           ; $4f26: $00
    nop                                           ; $4f27: $00
    nop                                           ; $4f28: $00
    nop                                           ; $4f29: $00
    nop                                           ; $4f2a: $00
    nop                                           ; $4f2b: $00
    ld bc, $0101                                  ; $4f2c: $01 $01 $01
    ld bc, $0101                                  ; $4f2f: $01 $01 $01
    nop                                           ; $4f32: $00
    nop                                           ; $4f33: $00
    nop                                           ; $4f34: $00
    nop                                           ; $4f35: $00
    nop                                           ; $4f36: $00
    nop                                           ; $4f37: $00
    nop                                           ; $4f38: $00
    nop                                           ; $4f39: $00
    nop                                           ; $4f3a: $00
    nop                                           ; $4f3b: $00
    nop                                           ; $4f3c: $00
    nop                                           ; $4f3d: $00
    nop                                           ; $4f3e: $00
    nop                                           ; $4f3f: $00
    nop                                           ; $4f40: $00
    nop                                           ; $4f41: $00
    nop                                           ; $4f42: $00
    nop                                           ; $4f43: $00
    nop                                           ; $4f44: $00
    nop                                           ; $4f45: $00
    nop                                           ; $4f46: $00
    nop                                           ; $4f47: $00
    nop                                           ; $4f48: $00
    nop                                           ; $4f49: $00
    nop                                           ; $4f4a: $00
    nop                                           ; $4f4b: $00
    nop                                           ; $4f4c: $00
    nop                                           ; $4f4d: $00
    nop                                           ; $4f4e: $00
    nop                                           ; $4f4f: $00
    nop                                           ; $4f50: $00
    nop                                           ; $4f51: $00
    nop                                           ; $4f52: $00
    nop                                           ; $4f53: $00
    nop                                           ; $4f54: $00
    nop                                           ; $4f55: $00
    nop                                           ; $4f56: $00
    nop                                           ; $4f57: $00
    inc bc                                        ; $4f58: $03
    inc bc                                        ; $4f59: $03
    inc c                                         ; $4f5a: $0c
    rrca                                          ; $4f5b: $0f
    ld [$100f], sp                                ; $4f5c: $08 $0f $10
    rra                                           ; $4f5f: $1f
    ld de, $0e1f                                  ; $4f60: $11 $1f $0e
    rrca                                          ; $4f63: $0f
    ld [$0b0f], sp                                ; $4f64: $08 $0f $0b
    rrca                                          ; $4f67: $0f
    rlca                                          ; $4f68: $07
    inc b                                         ; $4f69: $04
    rst $00                                       ; $4f6a: $c7
    push bc                                       ; $4f6b: $c5
    ld h, e                                       ; $4f6c: $63
    ld [c], a                                     ; $4f6d: $e2
    db $e3                                        ; $4f6e: $e3
    ld h, e                                       ; $4f6f: $63
    rst $20                                       ; $4f70: $e7
    and $ff                                       ; $4f71: $e6 $ff
    db $fd                                        ; $4f73: $fd
    rra                                           ; $4f74: $1f
    dec de                                        ; $4f75: $1b
    dec e                                         ; $4f76: $1d
    ld d, $0b                                     ; $4f77: $16 $0b
    rrca                                          ; $4f79: $0f
    dec c                                         ; $4f7a: $0d
    rrca                                          ; $4f7b: $0f
    ld [$070f], sp                                ; $4f7c: $08 $0f $07
    rlca                                          ; $4f7f: $07
    inc bc                                        ; $4f80: $03
    ld [bc], a                                    ; $4f81: $02
    rlca                                          ; $4f82: $07
    inc b                                         ; $4f83: $04
    rlca                                          ; $4f84: $07
    rlca                                          ; $4f85: $07
    rlca                                          ; $4f86: $07
    inc b                                         ; $4f87: $04
    rlca                                          ; $4f88: $07
    rlca                                          ; $4f89: $07
    dec sp                                        ; $4f8a: $3b
    ccf                                           ; $4f8b: $3f
    ld a, a                                       ; $4f8c: $7f
    ld a, a                                       ; $4f8d: $7f
    ccf                                           ; $4f8e: $3f
    ccf                                           ; $4f8f: $3f
    nop                                           ; $4f90: $00
    nop                                           ; $4f91: $00
    nop                                           ; $4f92: $00
    nop                                           ; $4f93: $00
    nop                                           ; $4f94: $00
    nop                                           ; $4f95: $00
    nop                                           ; $4f96: $00
    nop                                           ; $4f97: $00
    nop                                           ; $4f98: $00
    nop                                           ; $4f99: $00
    ldh [$e0], a                                  ; $4f9a: $e0 $e0
    sub b                                         ; $4f9c: $90
    ldh a, [$98]                                  ; $4f9d: $f0 $98
    ld hl, sp+$3c                                 ; $4f9f: $f8 $3c
    db $e4                                        ; $4fa1: $e4
    ld a, h                                       ; $4fa2: $7c
    call z, $c47c                                 ; $4fa3: $cc $7c $c4
    ld a, h                                       ; $4fa6: $7c
    call z, $8afe                                 ; $4fa7: $cc $fe $8a
    cp $02                                        ; $4faa: $fe $02
    db $fc                                        ; $4fac: $fc
    inc b                                         ; $4fad: $04
    ld hl, sp-$78                                 ; $4fae: $f8 $88
    ldh a, [rSVBK]                                ; $4fb0: $f0 $70
    ldh [$e0], a                                  ; $4fb2: $e0 $e0
    ldh a, [$90]                                  ; $4fb4: $f0 $90
    ldh a, [$d0]                                  ; $4fb6: $f0 $d0
    ldh [rNR41], a                                ; $4fb8: $e0 $20
    ldh [$e0], a                                  ; $4fba: $e0 $e0
    jr nz, @-$1e                                  ; $4fbc: $20 $e0

    jr nz, @-$1e                                  ; $4fbe: $20 $e0

    ldh a, [$f0]                                  ; $4fc0: $f0 $f0
    ldh a, [$50]                                  ; $4fc2: $f0 $50
    ldh [$e0], a                                  ; $4fc4: $e0 $e0
    ret nc                                        ; $4fc6: $d0

    ldh a, [$f0]                                  ; $4fc7: $f0 $f0
    or b                                          ; $4fc9: $b0
    ld e, $fe                                     ; $4fca: $1e $fe
    rst $38                                       ; $4fcc: $ff
    rst $38                                       ; $4fcd: $ff
    cp $fe                                        ; $4fce: $fe $fe
    nop                                           ; $4fd0: $00
    nop                                           ; $4fd1: $00
    nop                                           ; $4fd2: $00
    nop                                           ; $4fd3: $00
    nop                                           ; $4fd4: $00
    nop                                           ; $4fd5: $00
    nop                                           ; $4fd6: $00
    nop                                           ; $4fd7: $00
    nop                                           ; $4fd8: $00
    nop                                           ; $4fd9: $00
    nop                                           ; $4fda: $00
    nop                                           ; $4fdb: $00
    nop                                           ; $4fdc: $00
    nop                                           ; $4fdd: $00
    ld bc, $0301                                  ; $4fde: $01 $01 $03
    ld [bc], a                                    ; $4fe1: $02
    ld [bc], a                                    ; $4fe2: $02
    inc bc                                        ; $4fe3: $03
    inc bc                                        ; $4fe4: $03
    inc bc                                        ; $4fe5: $03
    ld bc, $0001                                  ; $4fe6: $01 $01 $00
    nop                                           ; $4fe9: $00
    nop                                           ; $4fea: $00
    nop                                           ; $4feb: $00
    nop                                           ; $4fec: $00
    nop                                           ; $4fed: $00
    nop                                           ; $4fee: $00
    nop                                           ; $4fef: $00
    nop                                           ; $4ff0: $00
    nop                                           ; $4ff1: $00
    nop                                           ; $4ff2: $00
    nop                                           ; $4ff3: $00
    nop                                           ; $4ff4: $00
    nop                                           ; $4ff5: $00
    nop                                           ; $4ff6: $00
    nop                                           ; $4ff7: $00
    inc bc                                        ; $4ff8: $03
    inc bc                                        ; $4ff9: $03
    inc c                                         ; $4ffa: $0c
    rrca                                          ; $4ffb: $0f
    ld [$900f], sp                                ; $4ffc: $08 $0f $90
    sbc a                                         ; $4fff: $9f
    pop de                                        ; $5000: $d1
    rst $18                                       ; $5001: $df
    adc $cf                                       ; $5002: $ce $cf
    ret z                                         ; $5004: $c8

    rst $08                                       ; $5005: $cf
    adc e                                         ; $5006: $8b
    adc a                                         ; $5007: $8f
    rst $00                                       ; $5008: $c7
    call nz, $6567                                ; $5009: $c4 $67 $65
    ccf                                           ; $500c: $3f
    ld a, $13                                     ; $500d: $3e $13
    rra                                           ; $500f: $1f
    rla                                           ; $5010: $17
    inc e                                         ; $5011: $1c
    ccf                                           ; $5012: $3f
    inc l                                         ; $5013: $2c
    ccf                                           ; $5014: $3f
    ld a, [hl+]                                   ; $5015: $2a
    rra                                           ; $5016: $1f
    add hl, de                                    ; $5017: $19
    rrca                                          ; $5018: $0f
    ld c, $09                                     ; $5019: $0e $09
    rrca                                          ; $501b: $0f
    ld [$070f], sp                                ; $501c: $08 $0f $07
    rlca                                          ; $501f: $07
    inc bc                                        ; $5020: $03
    ld [bc], a                                    ; $5021: $02
    rlca                                          ; $5022: $07
    inc b                                         ; $5023: $04
    rlca                                          ; $5024: $07
    rlca                                          ; $5025: $07
    rlca                                          ; $5026: $07
    inc b                                         ; $5027: $04
    rlca                                          ; $5028: $07
    rlca                                          ; $5029: $07
    dec sp                                        ; $502a: $3b
    ccf                                           ; $502b: $3f
    ld a, a                                       ; $502c: $7f
    ld a, a                                       ; $502d: $7f
    ccf                                           ; $502e: $3f
    ccf                                           ; $502f: $3f
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    nop                                           ; $5034: $00
    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    nop                                           ; $5037: $00
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    ldh [$e0], a                                  ; $503a: $e0 $e0
    sub b                                         ; $503c: $90
    ldh a, [$98]                                  ; $503d: $f0 $98
    ld hl, sp+$3c                                 ; $503f: $f8 $3c
    db $e4                                        ; $5041: $e4
    ld a, h                                       ; $5042: $7c
    call z, $c47c                                 ; $5043: $cc $7c $c4
    ld a, h                                       ; $5046: $7c
    call z, $8afe                                 ; $5047: $cc $fe $8a
    cp $02                                        ; $504a: $fe $02
    db $fc                                        ; $504c: $fc
    inc b                                         ; $504d: $04
    ld hl, sp-$78                                 ; $504e: $f8 $88
    ldh a, [$f0]                                  ; $5050: $f0 $f0
    ldh [$60], a                                  ; $5052: $e0 $60
    ldh a, [$90]                                  ; $5054: $f0 $90
    ldh a, [rNR10]                                ; $5056: $f0 $10
    ldh a, [$b0]                                  ; $5058: $f0 $b0
    ldh [$e0], a                                  ; $505a: $e0 $e0
    jr nz, @-$1e                                  ; $505c: $20 $e0

    jr nz, @-$1e                                  ; $505e: $20 $e0

    ldh a, [$d0]                                  ; $5060: $f0 $d0
    ldh a, [$50]                                  ; $5062: $f0 $50
    ldh [$e0], a                                  ; $5064: $e0 $e0
    ret nc                                        ; $5066: $d0

    ldh a, [$f0]                                  ; $5067: $f0 $f0
    or b                                          ; $5069: $b0
    ld e, $fe                                     ; $506a: $1e $fe
    rst $38                                       ; $506c: $ff
    rst $38                                       ; $506d: $ff
    cp $fe                                        ; $506e: $fe $fe
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    nop                                           ; $5077: $00
    nop                                           ; $5078: $00
    nop                                           ; $5079: $00
    nop                                           ; $507a: $00
    nop                                           ; $507b: $00
    inc bc                                        ; $507c: $03
    inc bc                                        ; $507d: $03
    ld [bc], a                                    ; $507e: $02
    inc bc                                        ; $507f: $03
    inc b                                         ; $5080: $04
    rlca                                          ; $5081: $07
    inc b                                         ; $5082: $04
    rlca                                          ; $5083: $07
    inc bc                                        ; $5084: $03
    inc bc                                        ; $5085: $03
    ld [bc], a                                    ; $5086: $02
    inc bc                                        ; $5087: $03
    ld [bc], a                                    ; $5088: $02
    inc bc                                        ; $5089: $03
    ld bc, $0101                                  ; $508a: $01 $01 $01
    ld bc, $0000                                  ; $508d: $01 $00 $00
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    ld bc, $0301                                  ; $5092: $01 $01 $03
    ld [bc], a                                    ; $5095: $02
    rlca                                          ; $5096: $07
    ld b, $07                                     ; $5097: $06 $07
    inc b                                         ; $5099: $04
    dec bc                                        ; $509a: $0b
    rrca                                          ; $509b: $0f
    ld [$040f], sp                                ; $509c: $08 $0f $04
    rlca                                          ; $509f: $07
    inc bc                                        ; $50a0: $03
    inc bc                                        ; $50a1: $03
    ld bc, $0301                                  ; $50a2: $01 $01 $03
    inc bc                                        ; $50a5: $03
    rlca                                          ; $50a6: $07
    ld b, $07                                     ; $50a7: $06 $07
    rlca                                          ; $50a9: $07
    dec sp                                        ; $50aa: $3b
    ccf                                           ; $50ab: $3f
    ld a, a                                       ; $50ac: $7f
    ld a, a                                       ; $50ad: $7f
    ccf                                           ; $50ae: $3f
    ccf                                           ; $50af: $3f
    nop                                           ; $50b0: $00
    nop                                           ; $50b1: $00
    nop                                           ; $50b2: $00
    nop                                           ; $50b3: $00
    nop                                           ; $50b4: $00
    nop                                           ; $50b5: $00

jr_014_50b6:
    nop                                           ; $50b6: $00
    nop                                           ; $50b7: $00
    nop                                           ; $50b8: $00
    nop                                           ; $50b9: $00
    ret nz                                        ; $50ba: $c0

    ret nz                                        ; $50bb: $c0

    jr c, jr_014_50b6                             ; $50bc: $38 $f8

    inc h                                         ; $50be: $24
    db $fc                                        ; $50bf: $fc
    ld [hl+], a                                   ; $50c0: $22
    cp $47                                        ; $50c1: $fe $47
    db $fd                                        ; $50c3: $fd
    adc a                                         ; $50c4: $8f
    ei                                            ; $50c5: $fb
    rra                                           ; $50c6: $1f
    pop af                                        ; $50c7: $f1
    rst $18                                       ; $50c8: $df
    di                                            ; $50c9: $f3
    rst $38                                       ; $50ca: $ff
    ld [hl+], a                                   ; $50cb: $22
    rst $38                                       ; $50cc: $ff
    ld b, b                                       ; $50cd: $40
    rst $38                                       ; $50ce: $ff
    add c                                         ; $50cf: $81
    cp $e2                                        ; $50d0: $fe $e2
    db $fc                                        ; $50d2: $fc
    sbc h                                         ; $50d3: $9c
    ldh a, [rSVBK]                                ; $50d4: $f0 $70
    ldh a, [$50]                                  ; $50d6: $f0 $50
    ld hl, sp-$78                                 ; $50d8: $f8 $88
    ld hl, sp-$78                                 ; $50da: $f8 $88
    ld hl, sp-$28                                 ; $50dc: $f8 $d8
    ld a, h                                       ; $50de: $7c
    db $e4                                        ; $50df: $e4
    cp $e2                                        ; $50e0: $fe $e2
    cp $32                                        ; $50e2: $fe $32
    rst $38                                       ; $50e4: $ff
    sbc e                                         ; $50e5: $9b
    push af                                       ; $50e6: $f5
    push de                                       ; $50e7: $d5
    ldh a, [$b0]                                  ; $50e8: $f0 $b0
    ld e, $fe                                     ; $50ea: $1e $fe
    rst $38                                       ; $50ec: $ff
    rst $38                                       ; $50ed: $ff
    cp $fe                                        ; $50ee: $fe $fe
    nop                                           ; $50f0: $00
    nop                                           ; $50f1: $00
    nop                                           ; $50f2: $00
    nop                                           ; $50f3: $00
    nop                                           ; $50f4: $00
    nop                                           ; $50f5: $00
    nop                                           ; $50f6: $00
    nop                                           ; $50f7: $00
    nop                                           ; $50f8: $00
    nop                                           ; $50f9: $00
    nop                                           ; $50fa: $00
    nop                                           ; $50fb: $00
    nop                                           ; $50fc: $00
    nop                                           ; $50fd: $00
    nop                                           ; $50fe: $00
    nop                                           ; $50ff: $00
    nop                                           ; $5100: $00
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    nop                                           ; $5104: $00
    nop                                           ; $5105: $00
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    nop                                           ; $5109: $00
    add b                                         ; $510a: $80
    add b                                         ; $510b: $80
    add b                                         ; $510c: $80
    add b                                         ; $510d: $80
    nop                                           ; $510e: $00
    nop                                           ; $510f: $00
    nop                                           ; $5110: $00
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00
    nop                                           ; $511a: $00
    nop                                           ; $511b: $00
    nop                                           ; $511c: $00
    nop                                           ; $511d: $00
    nop                                           ; $511e: $00
    nop                                           ; $511f: $00
    nop                                           ; $5120: $00
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    nop                                           ; $5123: $00
    nop                                           ; $5124: $00
    nop                                           ; $5125: $00
    adc $ce                                       ; $5126: $ce $ce
    ld [hl], l                                    ; $5128: $75
    ld a, e                                       ; $5129: $7b
    ccf                                           ; $512a: $3f
    ccf                                           ; $512b: $3f
    cp $fe                                        ; $512c: $fe $fe
    nop                                           ; $512e: $00
    nop                                           ; $512f: $00
    nop                                           ; $5130: $00
    nop                                           ; $5131: $00
    nop                                           ; $5132: $00
    nop                                           ; $5133: $00
    nop                                           ; $5134: $00
    nop                                           ; $5135: $00
    nop                                           ; $5136: $00
    nop                                           ; $5137: $00
    ld bc, $0201                                  ; $5138: $01 $01 $02
    inc bc                                        ; $513b: $03
    inc b                                         ; $513c: $04
    rlca                                          ; $513d: $07
    dec b                                         ; $513e: $05
    rlca                                          ; $513f: $07
    inc bc                                        ; $5140: $03
    inc bc                                        ; $5141: $03
    inc b                                         ; $5142: $04
    rlca                                          ; $5143: $07
    inc b                                         ; $5144: $04
    rlca                                          ; $5145: $07
    inc b                                         ; $5146: $04
    rlca                                          ; $5147: $07
    inc b                                         ; $5148: $04
    rlca                                          ; $5149: $07
    ld [bc], a                                    ; $514a: $02
    inc bc                                        ; $514b: $03
    ld bc, $0001                                  ; $514c: $01 $01 $00
    nop                                           ; $514f: $00
    ld bc, $0301                                  ; $5150: $01 $01 $03
    ld [bc], a                                    ; $5153: $02
    rlca                                          ; $5154: $07
    inc b                                         ; $5155: $04
    rlca                                          ; $5156: $07
    inc b                                         ; $5157: $04
    dec bc                                        ; $5158: $0b
    rrca                                          ; $5159: $0f
    ld [$040f], sp                                ; $515a: $08 $0f $04
    rlca                                          ; $515d: $07
    inc bc                                        ; $515e: $03
    inc bc                                        ; $515f: $03
    inc bc                                        ; $5160: $03
    inc bc                                        ; $5161: $03
    rlca                                          ; $5162: $07
    rlca                                          ; $5163: $07
    rlca                                          ; $5164: $07
    dec b                                         ; $5165: $05
    rlca                                          ; $5166: $07
    rlca                                          ; $5167: $07
    dec b                                         ; $5168: $05
    rlca                                          ; $5169: $07
    dec sp                                        ; $516a: $3b
    ccf                                           ; $516b: $3f
    ld a, a                                       ; $516c: $7f
    ld a, a                                       ; $516d: $7f
    ccf                                           ; $516e: $3f
    ccf                                           ; $516f: $3f
    nop                                           ; $5170: $00
    nop                                           ; $5171: $00
    nop                                           ; $5172: $00
    nop                                           ; $5173: $00
    nop                                           ; $5174: $00
    nop                                           ; $5175: $00
    nop                                           ; $5176: $00
    nop                                           ; $5177: $00
    add b                                         ; $5178: $80
    add b                                         ; $5179: $80
    ld [hl], b                                    ; $517a: $70
    ldh a, [$88]                                  ; $517b: $f0 $88
    ld hl, sp+$0c                                 ; $517d: $f8 $0c
    db $fc                                        ; $517f: $fc
    ld a, [bc]                                    ; $5180: $0a
    cp $92                                        ; $5181: $fe $92
    cp $66                                        ; $5183: $fe $66
    cp $0e                                        ; $5185: $fe $0e
    ld a, [$f96f]                                 ; $5187: $fa $6f $f9
    rst $38                                       ; $518a: $ff
    sub c                                         ; $518b: $91
    cp $a2                                        ; $518c: $fe $a2
    db $fc                                        ; $518e: $fc
    db $e4                                        ; $518f: $e4
    ld sp, hl                                     ; $5190: $f9
    add hl, sp                                    ; $5191: $39
    di                                            ; $5192: $f3
    jp nc, Jump_000_2bfa                          ; $5193: $d2 $fa $2b

    rst $38                                       ; $5196: $ff
    ld d, a                                       ; $5197: $57
    db $fc                                        ; $5198: $fc
    inc h                                         ; $5199: $24
    ret c                                         ; $519a: $d8

    ld hl, sp+$20                                 ; $519b: $f8 $20
    ldh [$e0], a                                  ; $519d: $e0 $e0
    ldh [$e0], a                                  ; $519f: $e0 $e0
    ldh [$e0], a                                  ; $51a1: $e0 $e0
    jr nz, @-$0e                                  ; $51a3: $20 $f0

    sub b                                         ; $51a5: $90
    ldh a, [$f0]                                  ; $51a6: $f0 $f0
    ldh a, [$b0]                                  ; $51a8: $f0 $b0
    ld e, $fe                                     ; $51aa: $1e $fe
    rst $38                                       ; $51ac: $ff
    rst $38                                       ; $51ad: $ff
    cp $fe                                        ; $51ae: $fe $fe
    add b                                         ; $51b0: $80
    add b                                         ; $51b1: $80
    ret nz                                        ; $51b2: $c0

    ret nz                                        ; $51b3: $c0

    ret nz                                        ; $51b4: $c0

    ret nz                                        ; $51b5: $c0

    add b                                         ; $51b6: $80
    add b                                         ; $51b7: $80
    nop                                           ; $51b8: $00
    nop                                           ; $51b9: $00
    nop                                           ; $51ba: $00
    nop                                           ; $51bb: $00
    nop                                           ; $51bc: $00
    nop                                           ; $51bd: $00
    nop                                           ; $51be: $00
    nop                                           ; $51bf: $00
    nop                                           ; $51c0: $00
    nop                                           ; $51c1: $00
    nop                                           ; $51c2: $00
    nop                                           ; $51c3: $00
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
    nop                                           ; $51ce: $00
    nop                                           ; $51cf: $00
    nop                                           ; $51d0: $00
    nop                                           ; $51d1: $00
    nop                                           ; $51d2: $00
    nop                                           ; $51d3: $00
    nop                                           ; $51d4: $00
    nop                                           ; $51d5: $00
    nop                                           ; $51d6: $00
    nop                                           ; $51d7: $00
    nop                                           ; $51d8: $00
    nop                                           ; $51d9: $00
    nop                                           ; $51da: $00
    nop                                           ; $51db: $00
    nop                                           ; $51dc: $00
    nop                                           ; $51dd: $00
    ld bc, $0301                                  ; $51de: $01 $01 $03
    ld [bc], a                                    ; $51e1: $02
    ld [bc], a                                    ; $51e2: $02
    inc bc                                        ; $51e3: $03
    inc bc                                        ; $51e4: $03
    inc bc                                        ; $51e5: $03
    ld bc, $0001                                  ; $51e6: $01 $01 $00
    nop                                           ; $51e9: $00
    nop                                           ; $51ea: $00
    nop                                           ; $51eb: $00
    nop                                           ; $51ec: $00
    nop                                           ; $51ed: $00
    nop                                           ; $51ee: $00
    nop                                           ; $51ef: $00
    nop                                           ; $51f0: $00
    nop                                           ; $51f1: $00
    nop                                           ; $51f2: $00
    nop                                           ; $51f3: $00
    nop                                           ; $51f4: $00
    nop                                           ; $51f5: $00
    nop                                           ; $51f6: $00
    nop                                           ; $51f7: $00
    inc bc                                        ; $51f8: $03
    inc bc                                        ; $51f9: $03
    inc b                                         ; $51fa: $04
    rlca                                          ; $51fb: $07
    dec bc                                        ; $51fc: $0b
    rrca                                          ; $51fd: $0f
    adc h                                         ; $51fe: $8c
    adc a                                         ; $51ff: $8f
    call nz, $c8c7                                ; $5200: $c4 $c7 $c8
    rst $08                                       ; $5203: $cf
    ret z                                         ; $5204: $c8

    rst $08                                       ; $5205: $cf
    ret z                                         ; $5206: $c8

    rst $08                                       ; $5207: $cf
    ld h, h                                       ; $5208: $64
    ld h, a                                       ; $5209: $67
    ld [hl-], a                                   ; $520a: $32
    inc sp                                        ; $520b: $33
    rra                                           ; $520c: $1f
    dec e                                         ; $520d: $1d
    rrca                                          ; $520e: $0f
    ld a, [bc]                                    ; $520f: $0a
    rra                                           ; $5210: $1f
    dec d                                         ; $5211: $15
    rra                                           ; $5212: $1f
    inc d                                         ; $5213: $14
    rrca                                          ; $5214: $0f
    ld [$080f], sp                                ; $5215: $08 $0f $08
    rlca                                          ; $5218: $07
    rrca                                          ; $5219: $0f
    ld [$0a0f], sp                                ; $521a: $08 $0f $0a
    rrca                                          ; $521d: $0f
    rlca                                          ; $521e: $07
    rlca                                          ; $521f: $07
    rlca                                          ; $5220: $07
    rlca                                          ; $5221: $07
    rlca                                          ; $5222: $07
    dec b                                         ; $5223: $05
    rlca                                          ; $5224: $07
    dec b                                         ; $5225: $05
    rlca                                          ; $5226: $07
    rlca                                          ; $5227: $07
    dec b                                         ; $5228: $05
    rlca                                          ; $5229: $07
    dec sp                                        ; $522a: $3b
    ccf                                           ; $522b: $3f
    ld a, a                                       ; $522c: $7f
    ld a, a                                       ; $522d: $7f
    ccf                                           ; $522e: $3f
    ccf                                           ; $522f: $3f
    nop                                           ; $5230: $00
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    nop                                           ; $5233: $00
    nop                                           ; $5234: $00
    nop                                           ; $5235: $00
    nop                                           ; $5236: $00
    nop                                           ; $5237: $00
    nop                                           ; $5238: $00
    nop                                           ; $5239: $00
    call c, Call_000_22dc                         ; $523a: $dc $dc $22
    cp $22                                        ; $523d: $fe $22
    cp $12                                        ; $523f: $fe $12
    cp $0c                                        ; $5241: $fe $0c
    db $fc                                        ; $5243: $fc
    inc b                                         ; $5244: $04
    db $fc                                        ; $5245: $fc
    inc b                                         ; $5246: $04
    db $fc                                        ; $5247: $fc
    inc c                                         ; $5248: $0c
    db $fc                                        ; $5249: $fc
    inc e                                         ; $524a: $1c
    db $f4                                        ; $524b: $f4
    cp b                                          ; $524c: $b8
    add sp, -$10                                  ; $524d: $e8 $f0
    ld [hl], b                                    ; $524f: $70
    ld hl, sp-$28                                 ; $5250: $f8 $d8
    ld hl, sp+$08                                 ; $5252: $f8 $08
    ldh a, [rNR10]                                ; $5254: $f0 $10
    ldh a, [rNR10]                                ; $5256: $f0 $10
    ldh [rNR41], a                                ; $5258: $e0 $20
    ldh [$e0], a                                  ; $525a: $e0 $e0
    jr nz, @-$1e                                  ; $525c: $20 $e0

    ldh [$e0], a                                  ; $525e: $e0 $e0
    ldh [$a0], a                                  ; $5260: $e0 $a0
    ldh a, [rNR10]                                ; $5262: $f0 $10
    ldh a, [$90]                                  ; $5264: $f0 $90
    ldh a, [$f0]                                  ; $5266: $f0 $f0
    ldh a, [$b0]                                  ; $5268: $f0 $b0
    ld e, $fe                                     ; $526a: $1e $fe
    rst $38                                       ; $526c: $ff
    rst $38                                       ; $526d: $ff
    cp $fe                                        ; $526e: $fe $fe
    nop                                           ; $5270: $00
    nop                                           ; $5271: $00
    nop                                           ; $5272: $00
    nop                                           ; $5273: $00
    nop                                           ; $5274: $00
    nop                                           ; $5275: $00
    nop                                           ; $5276: $00
    nop                                           ; $5277: $00
    inc c                                         ; $5278: $0c
    inc c                                         ; $5279: $0c
    inc de                                        ; $527a: $13
    rra                                           ; $527b: $1f
    ld [hl+], a                                   ; $527c: $22
    ccf                                           ; $527d: $3f
    inc h                                         ; $527e: $24
    ccf                                           ; $527f: $3f
    jr jr_014_52a1                                ; $5280: $18 $1f

    inc d                                         ; $5282: $14
    rra                                           ; $5283: $1f
    ld [hl+], a                                   ; $5284: $22
    ccf                                           ; $5285: $3f
    ld [hl], a                                    ; $5286: $77
    ld e, l                                       ; $5287: $5d
    ld a, a                                       ; $5288: $7f
    ld c, b                                       ; $5289: $48
    ld a, a                                       ; $528a: $7f
    ld c, l                                       ; $528b: $4d
    ld a, a                                       ; $528c: $7f
    ld e, e                                       ; $528d: $5b
    ccf                                           ; $528e: $3f
    inc h                                         ; $528f: $24
    rra                                           ; $5290: $1f
    inc de                                        ; $5291: $13
    rra                                           ; $5292: $1f
    db $10                                        ; $5293: $10
    rrca                                          ; $5294: $0f
    ld [$080f], sp                                ; $5295: $08 $0f $08
    rlca                                          ; $5298: $07
    rrca                                          ; $5299: $0f
    ld [$0a0f], sp                                ; $529a: $08 $0f $0a
    rrca                                          ; $529d: $0f
    rlca                                          ; $529e: $07
    rlca                                          ; $529f: $07
    rlca                                          ; $52a0: $07

jr_014_52a1:
    rlca                                          ; $52a1: $07
    rlca                                          ; $52a2: $07
    dec b                                         ; $52a3: $05
    rlca                                          ; $52a4: $07
    dec b                                         ; $52a5: $05
    rlca                                          ; $52a6: $07
    rlca                                          ; $52a7: $07
    dec b                                         ; $52a8: $05
    rlca                                          ; $52a9: $07
    ccf                                           ; $52aa: $3f
    ccf                                           ; $52ab: $3f
    ld a, a                                       ; $52ac: $7f
    ld a, a                                       ; $52ad: $7f
    ccf                                           ; $52ae: $3f
    ccf                                           ; $52af: $3f
    nop                                           ; $52b0: $00
    nop                                           ; $52b1: $00
    nop                                           ; $52b2: $00
    nop                                           ; $52b3: $00
    nop                                           ; $52b4: $00
    nop                                           ; $52b5: $00
    nop                                           ; $52b6: $00
    nop                                           ; $52b7: $00
    inc c                                         ; $52b8: $0c
    inc c                                         ; $52b9: $0c
    jp nc, Jump_000_31de                          ; $52ba: $d2 $de $31

    rst $38                                       ; $52bd: $ff
    ld de, $0eff                                  ; $52be: $11 $ff $0e
    cp $04                                        ; $52c1: $fe $04
    db $fc                                        ; $52c3: $fc
    inc b                                         ; $52c4: $04
    db $fc                                        ; $52c5: $fc
    ld [$88f8], sp                                ; $52c6: $08 $f8 $88
    ld hl, sp-$30                                 ; $52c9: $f8 $d0
    ld [hl], b                                    ; $52cb: $70
    db $fc                                        ; $52cc: $fc
    cp h                                          ; $52cd: $bc
    ld a, [$fe6e]                                 ; $52ce: $fa $6e $fe
    cp d                                          ; $52d1: $ba
    db $fc                                        ; $52d2: $fc
    inc e                                         ; $52d3: $1c
    ldh [rNR41], a                                ; $52d4: $e0 $20
    ldh [rNR41], a                                ; $52d6: $e0 $20
    ret nz                                        ; $52d8: $c0

    ldh [rNR41], a                                ; $52d9: $e0 $20
    ldh [rNR41], a                                ; $52db: $e0 $20
    ldh [$e0], a                                  ; $52dd: $e0 $e0
    ldh [$e0], a                                  ; $52df: $e0 $e0
    and b                                         ; $52e1: $a0
    ldh a, [rNR10]                                ; $52e2: $f0 $10
    ldh a, [$90]                                  ; $52e4: $f0 $90
    ldh a, [$f0]                                  ; $52e6: $f0 $f0
    sbc b                                         ; $52e8: $98
    ld hl, sp+$6e                                 ; $52e9: $f8 $6e
    cp $ff                                        ; $52eb: $fe $ff
    rst $38                                       ; $52ed: $ff
    cp $fe                                        ; $52ee: $fe $fe
    nop                                           ; $52f0: $00
    nop                                           ; $52f1: $00
    nop                                           ; $52f2: $00
    nop                                           ; $52f3: $00
    nop                                           ; $52f4: $00
    nop                                           ; $52f5: $00
    nop                                           ; $52f6: $00
    nop                                           ; $52f7: $00
    ld bc, $0601                                  ; $52f8: $01 $01 $06
    rlca                                          ; $52fb: $07
    inc b                                         ; $52fc: $04
    rlca                                          ; $52fd: $07
    ld [$080f], sp                                ; $52fe: $08 $0f $08
    rrca                                          ; $5301: $0f
    rlca                                          ; $5302: $07
    rlca                                          ; $5303: $07
    inc b                                         ; $5304: $04
    rlca                                          ; $5305: $07
    dec b                                         ; $5306: $05
    rlca                                          ; $5307: $07
    inc bc                                        ; $5308: $03
    ld [bc], a                                    ; $5309: $02
    inc bc                                        ; $530a: $03
    ld [bc], a                                    ; $530b: $02
    ld bc, $0101                                  ; $530c: $01 $01 $01
    ld bc, $0101                                  ; $530f: $01 $01 $01
    inc bc                                        ; $5312: $03
    ld [bc], a                                    ; $5313: $02
    inc bc                                        ; $5314: $03
    ld [bc], a                                    ; $5315: $02
    rlca                                          ; $5316: $07
    inc b                                         ; $5317: $04
    rlca                                          ; $5318: $07
    ld b, $09                                     ; $5319: $06 $09
    rrca                                          ; $531b: $0f
    ld [$070f], sp                                ; $531c: $08 $0f $07
    rlca                                          ; $531f: $07
    inc bc                                        ; $5320: $03
    ld [bc], a                                    ; $5321: $02
    rlca                                          ; $5322: $07
    inc b                                         ; $5323: $04
    rlca                                          ; $5324: $07
    rlca                                          ; $5325: $07
    rlca                                          ; $5326: $07
    inc b                                         ; $5327: $04
    rlca                                          ; $5328: $07
    rlca                                          ; $5329: $07
    ld a, [hl-]                                   ; $532a: $3a
    ccf                                           ; $532b: $3f
    ld a, a                                       ; $532c: $7f
    ld a, a                                       ; $532d: $7f
    ccf                                           ; $532e: $3f
    ccf                                           ; $532f: $3f
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    add b                                         ; $5338: $80
    add b                                         ; $5339: $80
    ld [hl], b                                    ; $533a: $70
    ldh a, [rOBP0]                                ; $533b: $f0 $48
    ld hl, sp+$4c                                 ; $533d: $f8 $4c
    db $fc                                        ; $533f: $fc
    sbc [hl]                                      ; $5340: $9e
    ld a, [c]                                     ; $5341: $f2
    ld a, $e6                                     ; $5342: $3e $e6
    ld a, $e2                                     ; $5344: $3e $e2
    cp [hl]                                       ; $5346: $be
    and $ff                                       ; $5347: $e6 $ff
    ld b, l                                       ; $5349: $45
    rst $38                                       ; $534a: $ff
    add c                                         ; $534b: $81
    cp $02                                        ; $534c: $fe $02
    db $fc                                        ; $534e: $fc
    call nz, Call_000_38f8                        ; $534f: $c4 $f8 $38
    ldh a, [$f0]                                  ; $5352: $f0 $f0
    ldh a, [$90]                                  ; $5354: $f0 $90
    ld hl, sp-$78                                 ; $5356: $f8 $88
    ld hl, sp-$48                                 ; $5358: $f8 $b8
    ld hl, sp-$38                                 ; $535a: $f8 $c8
    ld a, h                                       ; $535c: $7c
    call nz, $e43c                                ; $535d: $c4 $3c $e4
    cp $e2                                        ; $5360: $fe $e2
    sbc $5a                                       ; $5362: $de $5a
    rst $20                                       ; $5364: $e7
    rst $20                                       ; $5365: $e7
    pop de                                        ; $5366: $d1
    pop af                                        ; $5367: $f1
    ldh a, [$b0]                                  ; $5368: $f0 $b0
    ld e, $fe                                     ; $536a: $1e $fe
    rst $38                                       ; $536c: $ff
    rst $38                                       ; $536d: $ff
    cp $fe                                        ; $536e: $fe $fe
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    nop                                           ; $5372: $00
    nop                                           ; $5373: $00
    nop                                           ; $5374: $00
    nop                                           ; $5375: $00
    nop                                           ; $5376: $00
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
    nop                                           ; $5379: $00
    nop                                           ; $537a: $00
    nop                                           ; $537b: $00
    nop                                           ; $537c: $00
    nop                                           ; $537d: $00
    nop                                           ; $537e: $00
    nop                                           ; $537f: $00
    nop                                           ; $5380: $00
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    nop                                           ; $5384: $00
    nop                                           ; $5385: $00
    call c, $b6dc                                 ; $5386: $dc $dc $b6
    ld a, [$7e62]                                 ; $5389: $fa $62 $7e
    db $fc                                        ; $538c: $fc
    db $fc                                        ; $538d: $fc
    nop                                           ; $538e: $00
    nop                                           ; $538f: $00
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    nop                                           ; $5394: $00
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    nop                                           ; $5397: $00
    nop                                           ; $5398: $00
    nop                                           ; $5399: $00
    nop                                           ; $539a: $00
    nop                                           ; $539b: $00
    inc bc                                        ; $539c: $03
    inc bc                                        ; $539d: $03
    ld [bc], a                                    ; $539e: $02
    inc bc                                        ; $539f: $03
    inc b                                         ; $53a0: $04
    rlca                                          ; $53a1: $07
    inc b                                         ; $53a2: $04
    rlca                                          ; $53a3: $07
    inc bc                                        ; $53a4: $03
    inc bc                                        ; $53a5: $03
    ld [bc], a                                    ; $53a6: $02
    inc bc                                        ; $53a7: $03
    ld [bc], a                                    ; $53a8: $02
    inc bc                                        ; $53a9: $03
    ld bc, $0101                                  ; $53aa: $01 $01 $01
    ld bc, $0000                                  ; $53ad: $01 $00 $00
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    ld bc, $0301                                  ; $53b2: $01 $01 $03
    ld [bc], a                                    ; $53b5: $02
    inc bc                                        ; $53b6: $03
    ld [bc], a                                    ; $53b7: $02
    rlca                                          ; $53b8: $07
    inc b                                         ; $53b9: $04
    dec bc                                        ; $53ba: $0b
    ld c, $09                                     ; $53bb: $0e $09
    rrca                                          ; $53bd: $0f
    inc b                                         ; $53be: $04
    rlca                                          ; $53bf: $07
    inc bc                                        ; $53c0: $03
    inc bc                                        ; $53c1: $03
    rlca                                          ; $53c2: $07
    inc b                                         ; $53c3: $04
    rlca                                          ; $53c4: $07
    rlca                                          ; $53c5: $07
    rlca                                          ; $53c6: $07
    inc b                                         ; $53c7: $04
    rlca                                          ; $53c8: $07
    rlca                                          ; $53c9: $07
    ld a, [hl-]                                   ; $53ca: $3a
    ccf                                           ; $53cb: $3f
    ld a, a                                       ; $53cc: $7f
    ld a, a                                       ; $53cd: $7f
    ccf                                           ; $53ce: $3f
    ccf                                           ; $53cf: $3f
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    nop                                           ; $53d2: $00
    nop                                           ; $53d3: $00
    nop                                           ; $53d4: $00
    nop                                           ; $53d5: $00

jr_014_53d6:
    nop                                           ; $53d6: $00
    nop                                           ; $53d7: $00
    nop                                           ; $53d8: $00
    nop                                           ; $53d9: $00
    ret nz                                        ; $53da: $c0

    ret nz                                        ; $53db: $c0

    jr c, jr_014_53d6                             ; $53dc: $38 $f8

    inc h                                         ; $53de: $24
    db $fc                                        ; $53df: $fc
    ld h, $fe                                     ; $53e0: $26 $fe
    ld c, a                                       ; $53e2: $4f
    ld sp, hl                                     ; $53e3: $f9
    sbc a                                         ; $53e4: $9f
    di                                            ; $53e5: $f3
    rra                                           ; $53e6: $1f
    pop af                                        ; $53e7: $f1
    rst $18                                       ; $53e8: $df
    di                                            ; $53e9: $f3
    rst $38                                       ; $53ea: $ff
    ld [hl+], a                                   ; $53eb: $22
    rst $38                                       ; $53ec: $ff
    ld b, b                                       ; $53ed: $40
    rst $38                                       ; $53ee: $ff
    add c                                         ; $53ef: $81
    cp $e2                                        ; $53f0: $fe $e2
    db $fc                                        ; $53f2: $fc
    sbc h                                         ; $53f3: $9c
    ldh a, [rSVBK]                                ; $53f4: $f0 $70
    ldh a, [$d0]                                  ; $53f6: $f0 $d0
    ld hl, sp-$78                                 ; $53f8: $f8 $88
    ld hl, sp-$68                                 ; $53fa: $f8 $98
    ld hl, sp-$18                                 ; $53fc: $f8 $e8
    ld a, h                                       ; $53fe: $7c
    call nz, $e2fe                                ; $53ff: $c4 $fe $e2
    cp $a2                                        ; $5402: $fe $a2
    rst $38                                       ; $5404: $ff
    ei                                            ; $5405: $fb
    push de                                       ; $5406: $d5
    push af                                       ; $5407: $f5
    ld hl, sp-$48                                 ; $5408: $f8 $b8
    ld e, $fe                                     ; $540a: $1e $fe
    rst $38                                       ; $540c: $ff
    rst $38                                       ; $540d: $ff
    cp $fe                                        ; $540e: $fe $fe
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    nop                                           ; $5413: $00
    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    nop                                           ; $5416: $00
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    nop                                           ; $5419: $00
    nop                                           ; $541a: $00
    nop                                           ; $541b: $00
    nop                                           ; $541c: $00
    nop                                           ; $541d: $00
    nop                                           ; $541e: $00
    nop                                           ; $541f: $00
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    add b                                         ; $542a: $80
    add b                                         ; $542b: $80
    add b                                         ; $542c: $80
    add b                                         ; $542d: $80
    nop                                           ; $542e: $00
    nop                                           ; $542f: $00
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    nop                                           ; $5434: $00
    nop                                           ; $5435: $00
    nop                                           ; $5436: $00
    nop                                           ; $5437: $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    nop                                           ; $543a: $00
    nop                                           ; $543b: $00
    nop                                           ; $543c: $00
    nop                                           ; $543d: $00
    nop                                           ; $543e: $00
    nop                                           ; $543f: $00
    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    call c, $b6dc                                 ; $5446: $dc $dc $b6
    ld a, [$7e62]                                 ; $5449: $fa $62 $7e
    db $fc                                        ; $544c: $fc
    db $fc                                        ; $544d: $fc
    nop                                           ; $544e: $00
    nop                                           ; $544f: $00
    ld [hl], b                                    ; $5450: $70
    ld d, h                                       ; $5451: $54
    jr nc, jr_014_54a9                            ; $5452: $30 $55

    ret nc                                        ; $5454: $d0

    ld d, l                                       ; $5455: $55
    ld [hl], b                                    ; $5456: $70
    ld d, [hl]                                    ; $5457: $56
    jr nc, jr_014_54b1                            ; $5458: $30 $57

    ldh a, [$57]                                  ; $545a: $f0 $57
    or b                                          ; $545c: $b0
    ld e, b                                       ; $545d: $58
    ld d, b                                       ; $545e: $50
    ld e, c                                       ; $545f: $59
    db $10                                        ; $5460: $10
    ld e, d                                       ; $5461: $5a
    sub b                                         ; $5462: $90
    ld e, d                                       ; $5463: $5a
    ld d, b                                       ; $5464: $50
    ld e, e                                       ; $5465: $5b
    nop                                           ; $5466: $00
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    nop                                           ; $546a: $00
    nop                                           ; $546b: $00
    nop                                           ; $546c: $00
    nop                                           ; $546d: $00
    nop                                           ; $546e: $00
    nop                                           ; $546f: $00
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    nop                                           ; $5474: $00
    nop                                           ; $5475: $00
    nop                                           ; $5476: $00
    nop                                           ; $5477: $00
    ld [bc], a                                    ; $5478: $02
    ld [bc], a                                    ; $5479: $02
    dec b                                         ; $547a: $05
    rlca                                          ; $547b: $07
    inc b                                         ; $547c: $04
    rlca                                          ; $547d: $07
    inc b                                         ; $547e: $04
    rlca                                          ; $547f: $07
    ld [bc], a                                    ; $5480: $02
    inc bc                                        ; $5481: $03
    ld [bc], a                                    ; $5482: $02
    inc bc                                        ; $5483: $03
    ld bc, $0001                                  ; $5484: $01 $01 $00
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    ld bc, $0201                                  ; $548a: $01 $01 $02
    inc bc                                        ; $548d: $03
    ld [bc], a                                    ; $548e: $02
    inc bc                                        ; $548f: $03
    inc b                                         ; $5490: $04
    rlca                                          ; $5491: $07
    ld b, $07                                     ; $5492: $06 $07
    add hl, bc                                    ; $5494: $09
    rrca                                          ; $5495: $0f
    ld [$080f], sp                                ; $5496: $08 $0f $08
    rrca                                          ; $5499: $0f
    rlca                                          ; $549a: $07
    rlca                                          ; $549b: $07
    rlca                                          ; $549c: $07
    inc b                                         ; $549d: $04
    inc bc                                        ; $549e: $03
    ld [bc], a                                    ; $549f: $02
    inc bc                                        ; $54a0: $03
    ld [bc], a                                    ; $54a1: $02
    inc bc                                        ; $54a2: $03
    ld [bc], a                                    ; $54a3: $02
    inc bc                                        ; $54a4: $03
    inc bc                                        ; $54a5: $03
    rlca                                          ; $54a6: $07
    inc b                                         ; $54a7: $04
    rlca                                          ; $54a8: $07

jr_014_54a9:
    inc b                                         ; $54a9: $04
    rra                                           ; $54aa: $1f
    rra                                           ; $54ab: $1f
    inc a                                         ; $54ac: $3c
    ccf                                           ; $54ad: $3f
    rra                                           ; $54ae: $1f
    rra                                           ; $54af: $1f
    nop                                           ; $54b0: $00

jr_014_54b1:
    nop                                           ; $54b1: $00
    inc e                                         ; $54b2: $1c
    inc e                                         ; $54b3: $1c
    inc hl                                        ; $54b4: $23
    ccf                                           ; $54b5: $3f
    ld b, b                                       ; $54b6: $40
    ld a, a                                       ; $54b7: $7f
    ld h, e                                       ; $54b8: $63
    ld a, a                                       ; $54b9: $7f
    rst $38                                       ; $54ba: $ff
    call c, $e93f                                 ; $54bb: $dc $3f $e9
    rra                                           ; $54be: $1f
    db $fc                                        ; $54bf: $fc
    cpl                                           ; $54c0: $2f
    ei                                            ; $54c1: $fb
    ld a, a                                       ; $54c2: $7f
    sub $7f                                       ; $54c3: $d6 $7f
    push bc                                       ; $54c5: $c5
    rst $38                                       ; $54c6: $ff
    pop bc                                        ; $54c7: $c1
    cp [hl]                                       ; $54c8: $be
    ld [c], a                                     ; $54c9: $e2
    ld a, h                                       ; $54ca: $7c
    db $fc                                        ; $54cb: $fc
    ldh [$a0], a                                  ; $54cc: $e0 $a0
    ld [hl], b                                    ; $54ce: $70
    sub b                                         ; $54cf: $90
    ldh a, [$90]                                  ; $54d0: $f0 $90
    ld hl, sp-$78                                 ; $54d2: $f8 $88
    ld hl, sp-$08                                 ; $54d4: $f8 $f8
    ld a, b                                       ; $54d6: $78
    ret z                                         ; $54d7: $c8

    ld a, h                                       ; $54d8: $7c
    call nz, $e4fc                                ; $54d9: $c4 $fc $e4
    cp [hl]                                       ; $54dc: $be
    and d                                         ; $54dd: $a2
    sbc $5a                                       ; $54de: $de $5a
    rst $00                                       ; $54e0: $c7
    ld b, a                                       ; $54e1: $47
    add c                                         ; $54e2: $81
    add c                                         ; $54e3: $81
    add b                                         ; $54e4: $80
    add b                                         ; $54e5: $80
    ldh [$e0], a                                  ; $54e6: $e0 $e0
    ret nc                                        ; $54e8: $d0

    ldh a, [$7c]                                  ; $54e9: $f0 $7c
    cp h                                          ; $54eb: $bc
    rra                                           ; $54ec: $1f
    rst $38                                       ; $54ed: $ff
    db $fc                                        ; $54ee: $fc
    db $fc                                        ; $54ef: $fc
    nop                                           ; $54f0: $00
    nop                                           ; $54f1: $00
    nop                                           ; $54f2: $00
    nop                                           ; $54f3: $00
    nop                                           ; $54f4: $00
    nop                                           ; $54f5: $00
    add b                                         ; $54f6: $80
    add b                                         ; $54f7: $80
    add b                                         ; $54f8: $80
    add b                                         ; $54f9: $80
    ret nz                                        ; $54fa: $c0

    ld b, b                                       ; $54fb: $40

Call_014_54fc:
    ret nz                                        ; $54fc: $c0

    ret nz                                        ; $54fd: $c0

    ret nz                                        ; $54fe: $c0

    ld b, b                                       ; $54ff: $40
    ldh [rNR41], a                                ; $5500: $e0 $20
    ldh [$e0], a                                  ; $5502: $e0 $e0
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
    add b                                         ; $5522: $80
    add b                                         ; $5523: $80
    ret nz                                        ; $5524: $c0

    ret nz                                        ; $5525: $c0

    ld l, [hl]                                    ; $5526: $6e
    ld l, [hl]                                    ; $5527: $6e
    dec [hl]                                      ; $5528: $35
    dec sp                                        ; $5529: $3b
    rra                                           ; $552a: $1f
    rra                                           ; $552b: $1f
    cp $fe                                        ; $552c: $fe $fe
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
    ld [bc], a                                    ; $5538: $02
    ld [bc], a                                    ; $5539: $02
    dec b                                         ; $553a: $05
    rlca                                          ; $553b: $07
    inc b                                         ; $553c: $04
    rlca                                          ; $553d: $07
    inc b                                         ; $553e: $04
    rlca                                          ; $553f: $07
    ld [bc], a                                    ; $5540: $02
    inc bc                                        ; $5541: $03
    ld [bc], a                                    ; $5542: $02
    inc bc                                        ; $5543: $03
    ld bc, $0001                                  ; $5544: $01 $01 $00
    nop                                           ; $5547: $00
    nop                                           ; $5548: $00
    nop                                           ; $5549: $00
    ld bc, $0201                                  ; $554a: $01 $01 $02
    inc bc                                        ; $554d: $03
    inc bc                                        ; $554e: $03
    inc bc                                        ; $554f: $03
    rlca                                          ; $5550: $07
    ld b, $07                                     ; $5551: $06 $07
    ld b, $0b                                     ; $5553: $06 $0b
    ld c, $09                                     ; $5555: $0e $09
    rrca                                          ; $5557: $0f
    add hl, bc                                    ; $5558: $09
    rrca                                          ; $5559: $0f
    rlca                                          ; $555a: $07
    rlca                                          ; $555b: $07
    rlca                                          ; $555c: $07
    inc b                                         ; $555d: $04
    inc bc                                        ; $555e: $03
    ld [bc], a                                    ; $555f: $02
    inc bc                                        ; $5560: $03
    ld [bc], a                                    ; $5561: $02
    inc bc                                        ; $5562: $03
    ld [bc], a                                    ; $5563: $02
    inc bc                                        ; $5564: $03
    inc bc                                        ; $5565: $03
    rlca                                          ; $5566: $07
    inc b                                         ; $5567: $04
    rlca                                          ; $5568: $07
    inc b                                         ; $5569: $04
    rra                                           ; $556a: $1f
    rra                                           ; $556b: $1f
    inc a                                         ; $556c: $3c
    ccf                                           ; $556d: $3f
    rra                                           ; $556e: $1f
    rra                                           ; $556f: $1f
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    inc e                                         ; $5572: $1c
    inc e                                         ; $5573: $1c
    inc hl                                        ; $5574: $23
    ccf                                           ; $5575: $3f
    ld b, b                                       ; $5576: $40
    ld a, a                                       ; $5577: $7f
    ld h, e                                       ; $5578: $63
    ld a, a                                       ; $5579: $7f
    rst $38                                       ; $557a: $ff
    call c, $e93f                                 ; $557b: $dc $3f $e9
    rra                                           ; $557e: $1f
    db $fc                                        ; $557f: $fc
    cpl                                           ; $5580: $2f
    ei                                            ; $5581: $fb
    ld a, a                                       ; $5582: $7f
    sub $7f                                       ; $5583: $d6 $7f
    push bc                                       ; $5585: $c5
    rst $38                                       ; $5586: $ff
    pop bc                                        ; $5587: $c1
    cp [hl]                                       ; $5588: $be
    ld [c], a                                     ; $5589: $e2
    ld a, h                                       ; $558a: $7c

jr_014_558b:
    db $fc                                        ; $558b: $fc
    or b                                          ; $558c: $b0

jr_014_558d:
    ldh a, [$d0]                                  ; $558d: $f0 $d0
    ld [hl], b                                    ; $558f: $70
    ret nc                                        ; $5590: $d0

    jr nc, jr_014_558b                            ; $5591: $30 $f8

    jr z, jr_014_558d                             ; $5593: $28 $f8

    ld l, b                                       ; $5595: $68
    add sp, -$48                                  ; $5596: $e8 $b8
    add sp, $38                                   ; $5598: $e8 $38
    ldh a, [$90]                                  ; $559a: $f0 $90
    ldh a, [$90]                                  ; $559c: $f0 $90
    cp $7e                                        ; $559e: $fe $7e
    rst $10                                       ; $55a0: $d7
    ld e, e                                       ; $55a1: $5b
    sbc a                                         ; $55a2: $9f
    sbc a                                         ; $55a3: $9f
    adc [hl]                                      ; $55a4: $8e
    adc [hl]                                      ; $55a5: $8e
    ldh [$e0], a                                  ; $55a6: $e0 $e0
    ret nc                                        ; $55a8: $d0

    ldh a, [$7c]                                  ; $55a9: $f0 $7c
    cp h                                          ; $55ab: $bc
    ld e, $fe                                     ; $55ac: $1e $fe
    db $fc                                        ; $55ae: $fc
    db $fc                                        ; $55af: $fc
    nop                                           ; $55b0: $00
    nop                                           ; $55b1: $00
    nop                                           ; $55b2: $00
    nop                                           ; $55b3: $00
    nop                                           ; $55b4: $00
    nop                                           ; $55b5: $00
    add b                                         ; $55b6: $80
    add b                                         ; $55b7: $80
    add b                                         ; $55b8: $80
    add b                                         ; $55b9: $80
    ret nz                                        ; $55ba: $c0

    ld b, b                                       ; $55bb: $40
    ret nz                                        ; $55bc: $c0

    ret nz                                        ; $55bd: $c0

    ret nz                                        ; $55be: $c0

    ld b, b                                       ; $55bf: $40
    ldh [rNR41], a                                ; $55c0: $e0 $20
    ldh [$e0], a                                  ; $55c2: $e0 $e0
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
    ld [bc], a                                    ; $55d8: $02
    ld [bc], a                                    ; $55d9: $02
    dec b                                         ; $55da: $05
    rlca                                          ; $55db: $07
    inc b                                         ; $55dc: $04
    rlca                                          ; $55dd: $07
    inc b                                         ; $55de: $04
    rlca                                          ; $55df: $07
    ld [bc], a                                    ; $55e0: $02
    inc bc                                        ; $55e1: $03
    ld [bc], a                                    ; $55e2: $02
    inc bc                                        ; $55e3: $03
    ld bc, $0001                                  ; $55e4: $01 $01 $00
    nop                                           ; $55e7: $00
    inc sp                                        ; $55e8: $33
    inc sp                                        ; $55e9: $33
    ld a, h                                       ; $55ea: $7c
    ld e, a                                       ; $55eb: $5f
    ld e, l                                       ; $55ec: $5d
    ld a, a                                       ; $55ed: $7f
    ld a, a                                       ; $55ee: $7f
    ld a, e                                       ; $55ef: $7b
    inc e                                         ; $55f0: $1c
    rla                                           ; $55f1: $17
    inc c                                         ; $55f2: $0c
    rrca                                          ; $55f3: $0f
    inc de                                        ; $55f4: $13
    rra                                           ; $55f5: $1f
    ld de, $081f                                  ; $55f6: $11 $1f $08
    rrca                                          ; $55f9: $0f
    dec bc                                        ; $55fa: $0b
    rrca                                          ; $55fb: $0f
    rlca                                          ; $55fc: $07
    inc b                                         ; $55fd: $04
    inc bc                                        ; $55fe: $03
    ld [bc], a                                    ; $55ff: $02
    inc bc                                        ; $5600: $03
    ld [bc], a                                    ; $5601: $02
    inc bc                                        ; $5602: $03
    ld [bc], a                                    ; $5603: $02
    inc bc                                        ; $5604: $03
    inc bc                                        ; $5605: $03
    rlca                                          ; $5606: $07
    inc b                                         ; $5607: $04
    rlca                                          ; $5608: $07
    inc b                                         ; $5609: $04
    rra                                           ; $560a: $1f
    rra                                           ; $560b: $1f
    inc a                                         ; $560c: $3c
    ccf                                           ; $560d: $3f
    rra                                           ; $560e: $1f
    rra                                           ; $560f: $1f
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    inc e                                         ; $5612: $1c
    inc e                                         ; $5613: $1c
    inc hl                                        ; $5614: $23
    ccf                                           ; $5615: $3f
    ld b, b                                       ; $5616: $40
    ld a, a                                       ; $5617: $7f

jr_014_5618:
    ld h, e                                       ; $5618: $63
    ld a, a                                       ; $5619: $7f
    rst $38                                       ; $561a: $ff
    call c, $e93f                                 ; $561b: $dc $3f $e9
    rra                                           ; $561e: $1f
    db $fc                                        ; $561f: $fc
    cpl                                           ; $5620: $2f
    ei                                            ; $5621: $fb
    ld a, a                                       ; $5622: $7f
    sub $7f                                       ; $5623: $d6 $7f
    push bc                                       ; $5625: $c5
    rst $38                                       ; $5626: $ff
    pop bc                                        ; $5627: $c1
    ld a, $e2                                     ; $5628: $3e $e2
    db $fc                                        ; $562a: $fc
    db $fc                                        ; $562b: $fc
    ldh a, [$50]                                  ; $562c: $f0 $50
    ldh a, [$90]                                  ; $562e: $f0 $90
    ldh a, [$90]                                  ; $5630: $f0 $90
    ldh [$a0], a                                  ; $5632: $e0 $a0
    ldh [$e0], a                                  ; $5634: $e0 $e0
    jr nz, jr_014_5618                            ; $5636: $20 $e0

    and b                                         ; $5638: $a0
    ldh [$e0], a                                  ; $5639: $e0 $e0
    ldh [$e0], a                                  ; $563b: $e0 $e0
    and b                                         ; $563d: $a0
    ldh [$60], a                                  ; $563e: $e0 $60
    ldh [$60], a                                  ; $5640: $e0 $60
    ldh [$a0], a                                  ; $5642: $e0 $a0
    ret nz                                        ; $5644: $c0

    ret nz                                        ; $5645: $c0

    ldh [$e0], a                                  ; $5646: $e0 $e0
    ret nc                                        ; $5648: $d0

    ldh a, [$7c]                                  ; $5649: $f0 $7c
    cp h                                          ; $564b: $bc
    ld e, $fe                                     ; $564c: $1e $fe
    db $fc                                        ; $564e: $fc
    db $fc                                        ; $564f: $fc
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    nop                                           ; $5655: $00
    add b                                         ; $5656: $80
    add b                                         ; $5657: $80
    add b                                         ; $5658: $80
    add b                                         ; $5659: $80
    ret nz                                        ; $565a: $c0

    ld b, b                                       ; $565b: $40
    ret nz                                        ; $565c: $c0

    ret nz                                        ; $565d: $c0

    ret nz                                        ; $565e: $c0

    ld b, b                                       ; $565f: $40
    ldh [rNR41], a                                ; $5660: $e0 $20
    ldh [$e0], a                                  ; $5662: $e0 $e0
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
    ld bc, $0301                                  ; $567c: $01 $01 $03
    ld [bc], a                                    ; $567f: $02
    ld [bc], a                                    ; $5680: $02
    inc bc                                        ; $5681: $03
    inc bc                                        ; $5682: $03
    inc bc                                        ; $5683: $03
    ld bc, $0001                                  ; $5684: $01 $01 $00
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
    inc b                                         ; $5698: $04
    inc b                                         ; $5699: $04
    dec bc                                        ; $569a: $0b
    rrca                                          ; $569b: $0f
    adc b                                         ; $569c: $88
    adc a                                         ; $569d: $8f
    ret z                                         ; $569e: $c8

    rst $08                                       ; $569f: $cf
    call nz, $c4c7                                ; $56a0: $c4 $c7 $c4
    rst $00                                       ; $56a3: $c7
    add d                                         ; $56a4: $82
    add e                                         ; $56a5: $83
    db $d3                                        ; $56a6: $d3
    db $d3                                        ; $56a7: $d3
    ld a, [hl]                                    ; $56a8: $7e
    ld l, a                                       ; $56a9: $6f
    ld a, a                                       ; $56aa: $7f
    ld b, l                                       ; $56ab: $45
    ld a, [hl-]                                   ; $56ac: $3a
    cpl                                           ; $56ad: $2f
    ld [hl], c                                    ; $56ae: $71
    ld e, a                                       ; $56af: $5f
    dec sp                                        ; $56b0: $3b
    ld l, $1f                                     ; $56b1: $2e $1f
    inc e                                         ; $56b3: $1c
    inc de                                        ; $56b4: $13
    rra                                           ; $56b5: $1f
    ld de, $081f                                  ; $56b6: $11 $1f $08
    rrca                                          ; $56b9: $0f
    dec bc                                        ; $56ba: $0b
    rrca                                          ; $56bb: $0f
    rlca                                          ; $56bc: $07
    inc b                                         ; $56bd: $04
    inc bc                                        ; $56be: $03
    ld [bc], a                                    ; $56bf: $02
    inc bc                                        ; $56c0: $03
    ld [bc], a                                    ; $56c1: $02
    inc bc                                        ; $56c2: $03
    ld [bc], a                                    ; $56c3: $02
    inc bc                                        ; $56c4: $03
    inc bc                                        ; $56c5: $03
    rlca                                          ; $56c6: $07
    inc b                                         ; $56c7: $04
    rlca                                          ; $56c8: $07
    inc b                                         ; $56c9: $04
    rra                                           ; $56ca: $1f
    rra                                           ; $56cb: $1f
    inc a                                         ; $56cc: $3c
    ccf                                           ; $56cd: $3f
    rra                                           ; $56ce: $1f
    rra                                           ; $56cf: $1f
    nop                                           ; $56d0: $00
    nop                                           ; $56d1: $00
    jr c, jr_014_570c                             ; $56d2: $38 $38

    ld b, [hl]                                    ; $56d4: $46
    ld a, [hl]                                    ; $56d5: $7e
    add c                                         ; $56d6: $81
    rst $38                                       ; $56d7: $ff
    rst $00                                       ; $56d8: $c7
    rst $38                                       ; $56d9: $ff
    rst $38                                       ; $56da: $ff
    cp b                                          ; $56db: $b8
    ld a, a                                       ; $56dc: $7f
    db $d3                                        ; $56dd: $d3
    ccf                                           ; $56de: $3f
    ld hl, sp+$5f                                 ; $56df: $f8 $5f
    or $ff                                        ; $56e1: $f6 $ff
    xor l                                         ; $56e3: $ad
    cp $8a                                        ; $56e4: $fe $8a
    cp $82                                        ; $56e6: $fe $82
    ld a, h                                       ; $56e8: $7c
    call nz, $f8f8                                ; $56e9: $c4 $f8 $f8
    ldh a, [$90]                                  ; $56ec: $f0 $90
    ldh a, [rNR10]                                ; $56ee: $f0 $10
    ldh [$a0], a                                  ; $56f0: $e0 $a0
    ret nz                                        ; $56f2: $c0

    ld b, b                                       ; $56f3: $40
    and b                                         ; $56f4: $a0
    ldh [rNR41], a                                ; $56f5: $e0 $20
    ldh [$a0], a                                  ; $56f7: $e0 $a0
    ldh [$e0], a                                  ; $56f9: $e0 $e0
    ldh [$e0], a                                  ; $56fb: $e0 $e0
    and b                                         ; $56fd: $a0
    ldh a, [$50]                                  ; $56fe: $f0 $50
    ldh a, [$50]                                  ; $5700: $f0 $50
    ldh [$a0], a                                  ; $5702: $e0 $a0
    ret nz                                        ; $5704: $c0

    ret nz                                        ; $5705: $c0

    ldh [$e0], a                                  ; $5706: $e0 $e0
    ret nc                                        ; $5708: $d0

    ldh a, [$7c]                                  ; $5709: $f0 $7c
    cp h                                          ; $570b: $bc

jr_014_570c:
    ld e, $fe                                     ; $570c: $1e $fe
    db $fc                                        ; $570e: $fc
    db $fc                                        ; $570f: $fc
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
    add b                                         ; $571a: $80
    add b                                         ; $571b: $80
    add b                                         ; $571c: $80
    add b                                         ; $571d: $80
    add b                                         ; $571e: $80
    add b                                         ; $571f: $80
    ret nz                                        ; $5720: $c0

    ld b, b                                       ; $5721: $40
    ret nz                                        ; $5722: $c0

    ret nz                                        ; $5723: $c0

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
    inc bc                                        ; $5734: $03
    inc bc                                        ; $5735: $03
    rlca                                          ; $5736: $07
    dec b                                         ; $5737: $05
    dec b                                         ; $5738: $05
    rlca                                          ; $5739: $07
    rlca                                          ; $573a: $07
    rlca                                          ; $573b: $07
    inc bc                                        ; $573c: $03
    inc bc                                        ; $573d: $03
    ld bc, $0001                                  ; $573e: $01 $01 $00
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
    add b                                         ; $5756: $80
    add b                                         ; $5757: $80
    add h                                         ; $5758: $84
    add h                                         ; $5759: $84
    adc e                                         ; $575a: $8b
    adc a                                         ; $575b: $8f
    ld [$880f], sp                                ; $575c: $08 $0f $88
    adc a                                         ; $575f: $8f
    call nz, $74c7                                ; $5760: $c4 $c7 $74
    ld [hl], a                                    ; $5763: $77
    ld a, [hl]                                    ; $5764: $7e
    ld c, a                                       ; $5765: $4f
    ld [hl], e                                    ; $5766: $73
    ld e, a                                       ; $5767: $5f
    scf                                           ; $5768: $37
    dec a                                         ; $5769: $3d
    ld a, $2b                                     ; $576a: $3e $2b
    ld a, a                                       ; $576c: $7f
    ld c, l                                       ; $576d: $4d
    ld a, e                                       ; $576e: $7b
    ld e, [hl]                                    ; $576f: $5e
    ld sp, $1c3f                                  ; $5770: $31 $3f $1c
    rra                                           ; $5773: $1f
    inc de                                        ; $5774: $13
    rra                                           ; $5775: $1f
    ld de, $081f                                  ; $5776: $11 $1f $08
    rrca                                          ; $5779: $0f
    dec bc                                        ; $577a: $0b
    rrca                                          ; $577b: $0f
    rlca                                          ; $577c: $07
    inc b                                         ; $577d: $04
    inc bc                                        ; $577e: $03
    ld [bc], a                                    ; $577f: $02
    inc bc                                        ; $5780: $03
    ld [bc], a                                    ; $5781: $02
    inc bc                                        ; $5782: $03
    ld [bc], a                                    ; $5783: $02
    inc bc                                        ; $5784: $03
    inc bc                                        ; $5785: $03
    rlca                                          ; $5786: $07
    inc b                                         ; $5787: $04
    rlca                                          ; $5788: $07
    inc b                                         ; $5789: $04
    rra                                           ; $578a: $1f
    rra                                           ; $578b: $1f
    inc a                                         ; $578c: $3c
    ccf                                           ; $578d: $3f
    rra                                           ; $578e: $1f
    rra                                           ; $578f: $1f
    nop                                           ; $5790: $00
    nop                                           ; $5791: $00
    jr c, jr_014_57cc                             ; $5792: $38 $38

    ld b, [hl]                                    ; $5794: $46
    ld a, [hl]                                    ; $5795: $7e
    add c                                         ; $5796: $81
    rst $38                                       ; $5797: $ff
    rst $00                                       ; $5798: $c7
    rst $38                                       ; $5799: $ff
    rst $38                                       ; $579a: $ff
    cp b                                          ; $579b: $b8
    ld a, a                                       ; $579c: $7f
    db $d3                                        ; $579d: $d3
    ccf                                           ; $579e: $3f
    ld hl, sp+$5f                                 ; $579f: $f8 $5f
    or $ff                                        ; $57a1: $f6 $ff
    xor l                                         ; $57a3: $ad
    cp $8a                                        ; $57a4: $fe $8a
    cp $82                                        ; $57a6: $fe $82
    ld a, h                                       ; $57a8: $7c
    call nz, $f8f8                                ; $57a9: $c4 $f8 $f8
    ldh a, [rNR10]                                ; $57ac: $f0 $10
    ldh [rNR41], a                                ; $57ae: $e0 $20
    ret nz                                        ; $57b0: $c0

    ret nz                                        ; $57b1: $c0

    ld b, b                                       ; $57b2: $40
    ret nz                                        ; $57b3: $c0

    and b                                         ; $57b4: $a0
    ldh [rNR41], a                                ; $57b5: $e0 $20
    ldh [$a0], a                                  ; $57b7: $e0 $a0
    ldh [$e0], a                                  ; $57b9: $e0 $e0
    ldh [$e0], a                                  ; $57bb: $e0 $e0
    and b                                         ; $57bd: $a0
    ldh a, [$50]                                  ; $57be: $f0 $50
    ldh a, [$50]                                  ; $57c0: $f0 $50
    ldh [$a0], a                                  ; $57c2: $e0 $a0
    ret nz                                        ; $57c4: $c0

    ret nz                                        ; $57c5: $c0

    ldh [$e0], a                                  ; $57c6: $e0 $e0
    ret nc                                        ; $57c8: $d0

    ldh a, [$7c]                                  ; $57c9: $f0 $7c
    cp h                                          ; $57cb: $bc

jr_014_57cc:
    ld e, $fe                                     ; $57cc: $1e $fe
    db $fc                                        ; $57ce: $fc
    db $fc                                        ; $57cf: $fc
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
    add b                                         ; $57da: $80
    add b                                         ; $57db: $80
    add b                                         ; $57dc: $80
    add b                                         ; $57dd: $80
    add b                                         ; $57de: $80
    add b                                         ; $57df: $80
    ret nz                                        ; $57e0: $c0

    ld b, b                                       ; $57e1: $40
    ret nz                                        ; $57e2: $c0

    ret nz                                        ; $57e3: $c0

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
    ld [bc], a                                    ; $57fa: $02
    ld [bc], a                                    ; $57fb: $02
    dec b                                         ; $57fc: $05
    rlca                                          ; $57fd: $07
    inc b                                         ; $57fe: $04
    rlca                                          ; $57ff: $07
    inc b                                         ; $5800: $04
    rlca                                          ; $5801: $07
    ld [bc], a                                    ; $5802: $02
    inc bc                                        ; $5803: $03
    ld [bc], a                                    ; $5804: $02
    inc bc                                        ; $5805: $03
    ld bc, $0001                                  ; $5806: $01 $01 $00
    nop                                           ; $5809: $00
    ld bc, $0201                                  ; $580a: $01 $01 $02
    inc bc                                        ; $580d: $03
    ld [bc], a                                    ; $580e: $02
    inc bc                                        ; $580f: $03
    inc b                                         ; $5810: $04
    rlca                                          ; $5811: $07
    ld b, $07                                     ; $5812: $06 $07
    add hl, bc                                    ; $5814: $09
    rrca                                          ; $5815: $0f
    ld [$080f], sp                                ; $5816: $08 $0f $08
    rrca                                          ; $5819: $0f
    rlca                                          ; $581a: $07
    rlca                                          ; $581b: $07
    inc bc                                        ; $581c: $03
    ld [bc], a                                    ; $581d: $02
    inc bc                                        ; $581e: $03
    inc bc                                        ; $581f: $03
    inc bc                                        ; $5820: $03
    inc bc                                        ; $5821: $03
    inc bc                                        ; $5822: $03
    ld [bc], a                                    ; $5823: $02
    rlca                                          ; $5824: $07
    dec b                                         ; $5825: $05
    rlca                                          ; $5826: $07
    rlca                                          ; $5827: $07
    rlca                                          ; $5828: $07
    rlca                                          ; $5829: $07
    rra                                           ; $582a: $1f
    rra                                           ; $582b: $1f
    inc a                                         ; $582c: $3c
    ccf                                           ; $582d: $3f
    rra                                           ; $582e: $1f
    rra                                           ; $582f: $1f
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    nop                                           ; $5833: $00
    inc e                                         ; $5834: $1c
    inc e                                         ; $5835: $1c
    inc hl                                        ; $5836: $23
    ccf                                           ; $5837: $3f
    ld b, b                                       ; $5838: $40
    ld a, a                                       ; $5839: $7f
    ld h, e                                       ; $583a: $63
    ld a, a                                       ; $583b: $7f
    rst $38                                       ; $583c: $ff
    call c, $e93f                                 ; $583d: $dc $3f $e9
    rra                                           ; $5840: $1f
    db $fc                                        ; $5841: $fc
    cpl                                           ; $5842: $2f
    ei                                            ; $5843: $fb
    ld a, a                                       ; $5844: $7f
    sub $7f                                       ; $5845: $d6 $7f
    push bc                                       ; $5847: $c5
    rst $38                                       ; $5848: $ff
    pop bc                                        ; $5849: $c1
    cp [hl]                                       ; $584a: $be
    ld [c], a                                     ; $584b: $e2
    db $fc                                        ; $584c: $fc
    db $fc                                        ; $584d: $fc
    ld [hl], b                                    ; $584e: $70
    sub b                                         ; $584f: $90
    ldh a, [$90]                                  ; $5850: $f0 $90
    ld hl, sp-$78                                 ; $5852: $f8 $88
    ld hl, sp-$08                                 ; $5854: $f8 $f8
    ld a, b                                       ; $5856: $78
    ret z                                         ; $5857: $c8

    ld a, h                                       ; $5858: $7c
    call nz, $e4fc                                ; $5859: $c4 $fc $e4
    cp $22                                        ; $585c: $fe $22
    cp $12                                        ; $585e: $fe $12
    rst $38                                       ; $5860: $ff
    sbc a                                         ; $5861: $9f
    pop hl                                        ; $5862: $e1
    and c                                         ; $5863: $a1
    ldh [$e0], a                                  ; $5864: $e0 $e0
    ldh [rNR41], a                                ; $5866: $e0 $20
    ret nc                                        ; $5868: $d0

    ldh a, [$7c]                                  ; $5869: $f0 $7c
    cp h                                          ; $586b: $bc
    rra                                           ; $586c: $1f
    rst $38                                       ; $586d: $ff
    db $fc                                        ; $586e: $fc
    db $fc                                        ; $586f: $fc
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    nop                                           ; $5874: $00
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    add b                                         ; $5878: $80
    add b                                         ; $5879: $80
    add b                                         ; $587a: $80
    add b                                         ; $587b: $80
    ret nz                                        ; $587c: $c0

    ld b, b                                       ; $587d: $40
    ret nz                                        ; $587e: $c0

    ret nz                                        ; $587f: $c0

    ret nz                                        ; $5880: $c0

    ld b, b                                       ; $5881: $40
    ldh [rNR41], a                                ; $5882: $e0 $20
    ldh [$e0], a                                  ; $5884: $e0 $e0
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    nop                                           ; $588a: $00
    nop                                           ; $588b: $00
    nop                                           ; $588c: $00
    nop                                           ; $588d: $00
    nop                                           ; $588e: $00
    nop                                           ; $588f: $00
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    nop                                           ; $5892: $00
    nop                                           ; $5893: $00
    nop                                           ; $5894: $00
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589a: $00
    nop                                           ; $589b: $00
    nop                                           ; $589c: $00
    nop                                           ; $589d: $00
    nop                                           ; $589e: $00
    nop                                           ; $589f: $00
    nop                                           ; $58a0: $00
    nop                                           ; $58a1: $00
    add b                                         ; $58a2: $80
    add b                                         ; $58a3: $80
    ret nz                                        ; $58a4: $c0

    ret nz                                        ; $58a5: $c0

    ld l, [hl]                                    ; $58a6: $6e
    ld l, [hl]                                    ; $58a7: $6e
    dec [hl]                                      ; $58a8: $35
    dec sp                                        ; $58a9: $3b
    rra                                           ; $58aa: $1f
    rra                                           ; $58ab: $1f
    cp $fe                                        ; $58ac: $fe $fe
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    nop                                           ; $58b0: $00
    nop                                           ; $58b1: $00
    nop                                           ; $58b2: $00
    nop                                           ; $58b3: $00
    nop                                           ; $58b4: $00
    nop                                           ; $58b5: $00
    nop                                           ; $58b6: $00
    nop                                           ; $58b7: $00
    ld bc, $0701                                  ; $58b8: $01 $01 $07
    rlca                                          ; $58bb: $07
    add hl, bc                                    ; $58bc: $09
    rrca                                          ; $58bd: $0f
    ld [$040f], sp                                ; $58be: $08 $0f $04
    rlca                                          ; $58c1: $07
    inc b                                         ; $58c2: $04
    rlca                                          ; $58c3: $07
    ld [bc], a                                    ; $58c4: $02
    inc bc                                        ; $58c5: $03
    ld bc, $0101                                  ; $58c6: $01 $01 $01
    ld bc, $0302                                  ; $58c9: $01 $02 $03
    inc b                                         ; $58cc: $04
    rlca                                          ; $58cd: $07
    inc b                                         ; $58ce: $04
    rlca                                          ; $58cf: $07
    ld [$0e0f], sp                                ; $58d0: $08 $0f $0e
    rrca                                          ; $58d3: $0f
    add hl, bc                                    ; $58d4: $09
    rrca                                          ; $58d5: $0f
    ld [$0a0f], sp                                ; $58d6: $08 $0f $0a
    rrca                                          ; $58d9: $0f
    rlca                                          ; $58da: $07
    rlca                                          ; $58db: $07
    rlca                                          ; $58dc: $07
    dec b                                         ; $58dd: $05
    rlca                                          ; $58de: $07
    dec b                                         ; $58df: $05
    inc bc                                        ; $58e0: $03
    ld [bc], a                                    ; $58e1: $02
    inc bc                                        ; $58e2: $03
    ld [bc], a                                    ; $58e3: $02
    rlca                                          ; $58e4: $07
    dec b                                         ; $58e5: $05
    rlca                                          ; $58e6: $07
    rlca                                          ; $58e7: $07
    dec bc                                        ; $58e8: $0b
    rrca                                          ; $58e9: $0f
    rra                                           ; $58ea: $1f
    rra                                           ; $58eb: $1f
    inc a                                         ; $58ec: $3c
    ccf                                           ; $58ed: $3f
    rra                                           ; $58ee: $1f
    rra                                           ; $58ef: $1f
    nop                                           ; $58f0: $00
    nop                                           ; $58f1: $00
    jr c, jr_014_592c                             ; $58f2: $38 $38

    add $fe                                       ; $58f4: $c6 $fe
    add c                                         ; $58f6: $81
    rst $38                                       ; $58f7: $ff
    inc bc                                        ; $58f8: $03
    rst $38                                       ; $58f9: $ff

jr_014_58fa:
    adc a                                         ; $58fa: $8f
    db $fd                                        ; $58fb: $fd
    rst $38                                       ; $58fc: $ff
    ld [hl], b                                    ; $58fd: $70
    rst $38                                       ; $58fe: $ff
    sbc c                                         ; $58ff: $99
    ld h, a                                       ; $5900: $67
    cp $0f                                        ; $5901: $fe $0f
    ei                                            ; $5903: $fb
    ld a, $f2                                     ; $5904: $3e $f2
    cp $c2                                        ; $5906: $fe $c2
    db $fc                                        ; $5908: $fc
    inc h                                         ; $5909: $24
    ld hl, sp-$08                                 ; $590a: $f8 $f8
    db $10                                        ; $590c: $10
    ldh a, [$3b]                                  ; $590d: $f0 $3b
    db $eb                                        ; $590f: $eb

jr_014_5910:
    ld a, a                                       ; $5910: $7f
    call $cf7d                                    ; $5911: $cd $7d $cf
    cp $f6                                        ; $5914: $fe $f6
    jr c, jr_014_5910                             ; $5916: $38 $f8

    jr nz, jr_014_58fa                            ; $5918: $20 $e0

    ldh [$e0], a                                  ; $591a: $e0 $e0
    ldh [rNR41], a                                ; $591c: $e0 $20
    ldh [rNR41], a                                ; $591e: $e0 $20
    ldh a, [$90]                                  ; $5920: $f0 $90
    ldh a, [$90]                                  ; $5922: $f0 $90
    ldh a, [rSVBK]                                ; $5924: $f0 $70
    ldh [rNR41], a                                ; $5926: $e0 $20
    ldh a, [$f0]                                  ; $5928: $f0 $f0
    ld a, h                                       ; $592a: $7c
    cp h                                          ; $592b: $bc

jr_014_592c:
    ld e, $fe                                     ; $592c: $1e $fe
    db $fc                                        ; $592e: $fc
    db $fc                                        ; $592f: $fc
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    nop                                           ; $5934: $00
    nop                                           ; $5935: $00
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    add b                                         ; $593a: $80
    add b                                         ; $593b: $80
    add b                                         ; $593c: $80
    add b                                         ; $593d: $80
    add b                                         ; $593e: $80
    add b                                         ; $593f: $80
    ret nz                                        ; $5940: $c0

    ld b, b                                       ; $5941: $40
    add b                                         ; $5942: $80
    add b                                         ; $5943: $80
    nop                                           ; $5944: $00
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00
    nop                                           ; $594a: $00
    nop                                           ; $594b: $00
    nop                                           ; $594c: $00
    nop                                           ; $594d: $00
    nop                                           ; $594e: $00
    nop                                           ; $594f: $00
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    nop                                           ; $5953: $00
    ld bc, $0301                                  ; $5954: $01 $01 $03
    ld [bc], a                                    ; $5957: $02
    ld [bc], a                                    ; $5958: $02
    inc bc                                        ; $5959: $03
    inc bc                                        ; $595a: $03
    inc bc                                        ; $595b: $03
    ld bc, $0001                                  ; $595c: $01 $01 $00
    nop                                           ; $595f: $00
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    nop                                           ; $596a: $00
    nop                                           ; $596b: $00
    nop                                           ; $596c: $00
    nop                                           ; $596d: $00
    nop                                           ; $596e: $00
    nop                                           ; $596f: $00
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    nop                                           ; $5973: $00
    add b                                         ; $5974: $80
    add b                                         ; $5975: $80
    pop bc                                        ; $5976: $c1
    pop bc                                        ; $5977: $c1
    pop bc                                        ; $5978: $c1
    pop bc                                        ; $5979: $c1
    rst $00                                       ; $597a: $c7
    rst $00                                       ; $597b: $c7
    adc c                                         ; $597c: $89
    adc a                                         ; $597d: $8f
    ret z                                         ; $597e: $c8

    rst $08                                       ; $597f: $cf
    ld l, b                                       ; $5980: $68
    ld l, a                                       ; $5981: $6f
    inc [hl]                                      ; $5982: $34
    scf                                           ; $5983: $37
    ld e, $1f                                     ; $5984: $1e $1f
    rra                                           ; $5986: $1f
    inc de                                        ; $5987: $13
    ld e, $17                                     ; $5988: $1e $17
    add hl, de                                    ; $598a: $19
    rra                                           ; $598b: $1f
    db $10                                        ; $598c: $10
    rra                                           ; $598d: $1f
    ld [$080f], sp                                ; $598e: $08 $0f $08
    rrca                                          ; $5991: $0f
    ld c, $0f                                     ; $5992: $0e $0f
    add hl, bc                                    ; $5994: $09
    rrca                                          ; $5995: $0f
    ld [$0a0f], sp                                ; $5996: $08 $0f $0a
    rrca                                          ; $5999: $0f
    rlca                                          ; $599a: $07
    rlca                                          ; $599b: $07
    rlca                                          ; $599c: $07
    dec b                                         ; $599d: $05
    rlca                                          ; $599e: $07
    dec b                                         ; $599f: $05
    rlca                                          ; $59a0: $07
    ld b, $07                                     ; $59a1: $06 $07
    ld b, $07                                     ; $59a3: $06 $07
    dec b                                         ; $59a5: $05
    rlca                                          ; $59a6: $07
    rlca                                          ; $59a7: $07
    add hl, bc                                    ; $59a8: $09
    rrca                                          ; $59a9: $0f
    rra                                           ; $59aa: $1f
    rra                                           ; $59ab: $1f
    ld a, $3f                                     ; $59ac: $3e $3f
    rra                                           ; $59ae: $1f
    rra                                           ; $59af: $1f
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00
    jr nc, jr_014_59e4                            ; $59b2: $30 $30

    call z, $02fc                                 ; $59b4: $cc $fc $02
    cp $06                                        ; $59b7: $fe $06
    cp $8f                                        ; $59b9: $fe $8f
    db $fd                                        ; $59bb: $fd
    rst $38                                       ; $59bc: $ff
    ld a, c                                       ; $59bd: $79
    rst $38                                       ; $59be: $ff

jr_014_59bf:
    call z, $fb3f                                 ; $59bf: $cc $3f $fb
    ld b, $fe                                     ; $59c2: $06 $fe
    ld c, $fa                                     ; $59c4: $0e $fa
    adc $fa                                       ; $59c6: $ce $fa
    inc a                                         ; $59c8: $3c
    db $f4                                        ; $59c9: $f4
    ret c                                         ; $59ca: $d8

    ld hl, sp+$08                                 ; $59cb: $f8 $08
    ld hl, sp+$10                                 ; $59cd: $f8 $10
    ldh a, [rNR10]                                ; $59cf: $f0 $10

jr_014_59d1:
    ldh a, [rNR41]                                ; $59d1: $f0 $20
    ldh [$e0], a                                  ; $59d3: $e0 $e0
    ldh [rNR41], a                                ; $59d5: $e0 $20
    ldh [rNR41], a                                ; $59d7: $e0 $20
    ldh [$e0], a                                  ; $59d9: $e0 $e0
    ldh [$e0], a                                  ; $59db: $e0 $e0
    jr nz, jr_014_59bf                            ; $59dd: $20 $e0

    jr nz, jr_014_59d1                            ; $59df: $20 $f0

    sub b                                         ; $59e1: $90
    ldh a, [$90]                                  ; $59e2: $f0 $90

jr_014_59e4:
    ldh a, [$f0]                                  ; $59e4: $f0 $f0
    ldh a, [$90]                                  ; $59e6: $f0 $90
    ldh a, [$f0]                                  ; $59e8: $f0 $f0
    cp h                                          ; $59ea: $bc
    call c, $fe0e                                 ; $59eb: $dc $0e $fe
    db $fc                                        ; $59ee: $fc
    db $fc                                        ; $59ef: $fc
    nop                                           ; $59f0: $00
    nop                                           ; $59f1: $00
    nop                                           ; $59f2: $00
    nop                                           ; $59f3: $00
    nop                                           ; $59f4: $00
    nop                                           ; $59f5: $00
    nop                                           ; $59f6: $00
    nop                                           ; $59f7: $00
    nop                                           ; $59f8: $00
    nop                                           ; $59f9: $00
    nop                                           ; $59fa: $00
    nop                                           ; $59fb: $00
    nop                                           ; $59fc: $00
    nop                                           ; $59fd: $00
    add b                                         ; $59fe: $80
    add b                                         ; $59ff: $80
    nop                                           ; $5a00: $00
    nop                                           ; $5a01: $00
    nop                                           ; $5a02: $00
    nop                                           ; $5a03: $00
    nop                                           ; $5a04: $00
    nop                                           ; $5a05: $00
    nop                                           ; $5a06: $00
    nop                                           ; $5a07: $00
    nop                                           ; $5a08: $00
    nop                                           ; $5a09: $00
    nop                                           ; $5a0a: $00
    nop                                           ; $5a0b: $00
    nop                                           ; $5a0c: $00
    nop                                           ; $5a0d: $00
    nop                                           ; $5a0e: $00
    nop                                           ; $5a0f: $00
    nop                                           ; $5a10: $00
    nop                                           ; $5a11: $00
    ld bc, $0201                                  ; $5a12: $01 $01 $02
    inc bc                                        ; $5a15: $03
    inc b                                         ; $5a16: $04
    rlca                                          ; $5a17: $07
    inc e                                         ; $5a18: $1c
    rra                                           ; $5a19: $1f
    ld l, $3b                                     ; $5a1a: $2e $3b
    ld b, a                                       ; $5a1c: $47
    ld a, l                                       ; $5a1d: $7d
    rst $28                                       ; $5a1e: $ef
    cp [hl]                                       ; $5a1f: $be
    rst $38                                       ; $5a20: $ff
    sbc c                                         ; $5a21: $99
    ld a, a                                       ; $5a22: $7f
    ld c, c                                       ; $5a23: $49
    ld a, a                                       ; $5a24: $7f
    ld b, a                                       ; $5a25: $47
    dec a                                         ; $5a26: $3d
    daa                                           ; $5a27: $27
    ld a, [hl-]                                   ; $5a28: $3a
    cpl                                           ; $5a29: $2f
    ld de, $101f                                  ; $5a2a: $11 $1f $10
    rra                                           ; $5a2d: $1f
    ld [$080f], sp                                ; $5a2e: $08 $0f $08
    rrca                                          ; $5a31: $0f
    rrca                                          ; $5a32: $0f
    rrca                                          ; $5a33: $0f
    ld [$080f], sp                                ; $5a34: $08 $0f $08
    rrca                                          ; $5a37: $0f
    add hl, bc                                    ; $5a38: $09
    rrca                                          ; $5a39: $0f
    rlca                                          ; $5a3a: $07
    rlca                                          ; $5a3b: $07
    rlca                                          ; $5a3c: $07
    dec b                                         ; $5a3d: $05
    rlca                                          ; $5a3e: $07
    dec b                                         ; $5a3f: $05
    rlca                                          ; $5a40: $07
    dec b                                         ; $5a41: $05
    rlca                                          ; $5a42: $07
    rlca                                          ; $5a43: $07
    rlca                                          ; $5a44: $07
    dec b                                         ; $5a45: $05
    rlca                                          ; $5a46: $07
    rlca                                          ; $5a47: $07
    add hl, bc                                    ; $5a48: $09
    rrca                                          ; $5a49: $0f
    rra                                           ; $5a4a: $1f
    rra                                           ; $5a4b: $1f
    ccf                                           ; $5a4c: $3f
    ccf                                           ; $5a4d: $3f
    rra                                           ; $5a4e: $1f
    rra                                           ; $5a4f: $1f
    nop                                           ; $5a50: $00
    nop                                           ; $5a51: $00

jr_014_5a52:
    ldh [$e0], a                                  ; $5a52: $e0 $e0

jr_014_5a54:
    db $10                                        ; $5a54: $10
    ldh a, [$08]                                  ; $5a55: $f0 $08
    ld hl, sp+$08                                 ; $5a57: $f8 $08
    ld hl, sp+$1c                                 ; $5a59: $f8 $1c
    db $f4                                        ; $5a5b: $f4
    cp $ee                                        ; $5a5c: $fe $ee
    push af                                       ; $5a5e: $f5
    ccf                                           ; $5a5f: $3f
    jp nz, $84fe                                  ; $5a60: $c2 $fe $84

    db $fc                                        ; $5a63: $fc
    ret z                                         ; $5a64: $c8

    ld a, b                                       ; $5a65: $78
    ldh a, [$b0]                                  ; $5a66: $f0 $b0
    cp $de                                        ; $5a68: $fe $de
    ld a, e                                       ; $5a6a: $7b
    db $fd                                        ; $5a6b: $fd
    ccf                                           ; $5a6c: $3f
    rst $38                                       ; $5a6d: $ff
    ld e, $fe                                     ; $5a6e: $1e $fe
    jr nz, jr_014_5a52                            ; $5a70: $20 $e0

    jr nz, jr_014_5a54                            ; $5a72: $20 $e0

    ldh [$e0], a                                  ; $5a74: $e0 $e0
    jr nz, @-$1e                                  ; $5a76: $20 $e0

    jr nz, @-$1e                                  ; $5a78: $20 $e0

    ldh [$e0], a                                  ; $5a7a: $e0 $e0
    ldh [rNR41], a                                ; $5a7c: $e0 $20
    ldh [rNR41], a                                ; $5a7e: $e0 $20
    ldh [$e0], a                                  ; $5a80: $e0 $e0
    ldh a, [$90]                                  ; $5a82: $f0 $90
    ldh a, [$f0]                                  ; $5a84: $f0 $f0
    cp b                                          ; $5a86: $b8
    ret c                                         ; $5a87: $d8

    xor b                                         ; $5a88: $a8
    ld hl, sp-$04                                 ; $5a89: $f8 $fc
    db $fc                                        ; $5a8b: $fc
    cp $fe                                        ; $5a8c: $fe $fe
    db $fc                                        ; $5a8e: $fc
    db $fc                                        ; $5a8f: $fc
    nop                                           ; $5a90: $00
    nop                                           ; $5a91: $00
    nop                                           ; $5a92: $00
    nop                                           ; $5a93: $00
    nop                                           ; $5a94: $00
    nop                                           ; $5a95: $00
    nop                                           ; $5a96: $00
    nop                                           ; $5a97: $00
    ld [bc], a                                    ; $5a98: $02
    ld [bc], a                                    ; $5a99: $02
    dec b                                         ; $5a9a: $05
    rlca                                          ; $5a9b: $07
    inc b                                         ; $5a9c: $04
    rlca                                          ; $5a9d: $07
    inc b                                         ; $5a9e: $04
    rlca                                          ; $5a9f: $07
    ld [bc], a                                    ; $5aa0: $02
    inc bc                                        ; $5aa1: $03
    ld [bc], a                                    ; $5aa2: $02
    inc bc                                        ; $5aa3: $03
    ld bc, $0001                                  ; $5aa4: $01 $01 $00
    nop                                           ; $5aa7: $00
    nop                                           ; $5aa8: $00
    nop                                           ; $5aa9: $00
    ld bc, $0201                                  ; $5aaa: $01 $01 $02
    inc bc                                        ; $5aad: $03
    ld [bc], a                                    ; $5aae: $02
    inc bc                                        ; $5aaf: $03
    inc b                                         ; $5ab0: $04
    rlca                                          ; $5ab1: $07
    ld b, $07                                     ; $5ab2: $06 $07
    add hl, bc                                    ; $5ab4: $09
    rrca                                          ; $5ab5: $0f
    ld [$080f], sp                                ; $5ab6: $08 $0f $08
    rrca                                          ; $5ab9: $0f
    rlca                                          ; $5aba: $07
    rlca                                          ; $5abb: $07
    rlca                                          ; $5abc: $07
    inc b                                         ; $5abd: $04
    inc bc                                        ; $5abe: $03
    ld [bc], a                                    ; $5abf: $02
    inc bc                                        ; $5ac0: $03
    ld [bc], a                                    ; $5ac1: $02
    inc bc                                        ; $5ac2: $03
    ld [bc], a                                    ; $5ac3: $02
    inc bc                                        ; $5ac4: $03
    inc bc                                        ; $5ac5: $03
    rlca                                          ; $5ac6: $07
    inc b                                         ; $5ac7: $04
    rlca                                          ; $5ac8: $07
    inc b                                         ; $5ac9: $04
    rra                                           ; $5aca: $1f
    rra                                           ; $5acb: $1f
    inc a                                         ; $5acc: $3c
    ccf                                           ; $5acd: $3f
    rra                                           ; $5ace: $1f
    rra                                           ; $5acf: $1f
    nop                                           ; $5ad0: $00
    nop                                           ; $5ad1: $00
    inc e                                         ; $5ad2: $1c
    inc e                                         ; $5ad3: $1c
    inc hl                                        ; $5ad4: $23
    ccf                                           ; $5ad5: $3f
    ld b, b                                       ; $5ad6: $40
    ld a, a                                       ; $5ad7: $7f
    ld h, e                                       ; $5ad8: $63
    ld a, a                                       ; $5ad9: $7f
    rst $38                                       ; $5ada: $ff
    call c, $e93f                                 ; $5adb: $dc $3f $e9
    rra                                           ; $5ade: $1f
    db $fc                                        ; $5adf: $fc
    cpl                                           ; $5ae0: $2f
    ei                                            ; $5ae1: $fb
    ld a, a                                       ; $5ae2: $7f
    sub $7f                                       ; $5ae3: $d6 $7f
    push bc                                       ; $5ae5: $c5
    rst $38                                       ; $5ae6: $ff
    pop bc                                        ; $5ae7: $c1
    cp [hl]                                       ; $5ae8: $be
    ld [c], a                                     ; $5ae9: $e2
    ld a, h                                       ; $5aea: $7c
    db $fc                                        ; $5aeb: $fc
    ldh [$a0], a                                  ; $5aec: $e0 $a0
    ld [hl], b                                    ; $5aee: $70
    sub b                                         ; $5aef: $90
    ldh a, [$90]                                  ; $5af0: $f0 $90
    ld hl, sp-$78                                 ; $5af2: $f8 $88
    ld hl, sp-$08                                 ; $5af4: $f8 $f8
    ld a, b                                       ; $5af6: $78
    ret z                                         ; $5af7: $c8

    ld a, h                                       ; $5af8: $7c
    call nz, $e4fc                                ; $5af9: $c4 $fc $e4
    cp [hl]                                       ; $5afc: $be
    and d                                         ; $5afd: $a2
    sbc $5a                                       ; $5afe: $de $5a
    rst $00                                       ; $5b00: $c7
    ld b, a                                       ; $5b01: $47
    add c                                         ; $5b02: $81
    add c                                         ; $5b03: $81
    add b                                         ; $5b04: $80
    add b                                         ; $5b05: $80
    ldh [$e0], a                                  ; $5b06: $e0 $e0
    ret nc                                        ; $5b08: $d0

    ldh a, [$7c]                                  ; $5b09: $f0 $7c
    cp h                                          ; $5b0b: $bc
    rra                                           ; $5b0c: $1f
    rst $38                                       ; $5b0d: $ff
    db $fc                                        ; $5b0e: $fc
    db $fc                                        ; $5b0f: $fc
    nop                                           ; $5b10: $00
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    nop                                           ; $5b13: $00
    nop                                           ; $5b14: $00
    nop                                           ; $5b15: $00
    add b                                         ; $5b16: $80
    add b                                         ; $5b17: $80
    add b                                         ; $5b18: $80
    add b                                         ; $5b19: $80
    ret nz                                        ; $5b1a: $c0

    ld b, b                                       ; $5b1b: $40
    ret nz                                        ; $5b1c: $c0

    ret nz                                        ; $5b1d: $c0

    ret nz                                        ; $5b1e: $c0

    ld b, b                                       ; $5b1f: $40
    ldh [rNR41], a                                ; $5b20: $e0 $20
    ldh [$e0], a                                  ; $5b22: $e0 $e0
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00
    nop                                           ; $5b26: $00
    nop                                           ; $5b27: $00
    nop                                           ; $5b28: $00
    nop                                           ; $5b29: $00
    nop                                           ; $5b2a: $00
    nop                                           ; $5b2b: $00
    nop                                           ; $5b2c: $00
    nop                                           ; $5b2d: $00
    nop                                           ; $5b2e: $00
    nop                                           ; $5b2f: $00
    nop                                           ; $5b30: $00
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00
    nop                                           ; $5b33: $00
    nop                                           ; $5b34: $00
    nop                                           ; $5b35: $00
    nop                                           ; $5b36: $00
    nop                                           ; $5b37: $00
    nop                                           ; $5b38: $00
    nop                                           ; $5b39: $00
    nop                                           ; $5b3a: $00
    nop                                           ; $5b3b: $00
    nop                                           ; $5b3c: $00
    nop                                           ; $5b3d: $00
    nop                                           ; $5b3e: $00
    nop                                           ; $5b3f: $00
    nop                                           ; $5b40: $00
    nop                                           ; $5b41: $00
    add b                                         ; $5b42: $80
    add b                                         ; $5b43: $80
    ret nz                                        ; $5b44: $c0

    ret nz                                        ; $5b45: $c0

    ld l, [hl]                                    ; $5b46: $6e
    ld l, [hl]                                    ; $5b47: $6e
    ld e, e                                       ; $5b48: $5b
    ld a, l                                       ; $5b49: $7d
    ld sp, $fe3f                                  ; $5b4a: $31 $3f $fe
    cp $00                                        ; $5b4d: $fe $00
    nop                                           ; $5b4f: $00
    nop                                           ; $5b50: $00
    nop                                           ; $5b51: $00
    nop                                           ; $5b52: $00
    nop                                           ; $5b53: $00
    nop                                           ; $5b54: $00
    nop                                           ; $5b55: $00
    nop                                           ; $5b56: $00
    nop                                           ; $5b57: $00
    nop                                           ; $5b58: $00
    nop                                           ; $5b59: $00
    ld [bc], a                                    ; $5b5a: $02
    ld [bc], a                                    ; $5b5b: $02
    dec b                                         ; $5b5c: $05
    rlca                                          ; $5b5d: $07
    inc b                                         ; $5b5e: $04
    rlca                                          ; $5b5f: $07
    inc b                                         ; $5b60: $04
    rlca                                          ; $5b61: $07
    ld [bc], a                                    ; $5b62: $02
    inc bc                                        ; $5b63: $03
    ld [bc], a                                    ; $5b64: $02
    inc bc                                        ; $5b65: $03
    ld bc, $0001                                  ; $5b66: $01 $01 $00
    nop                                           ; $5b69: $00
    ld bc, $0201                                  ; $5b6a: $01 $01 $02
    inc bc                                        ; $5b6d: $03
    ld [bc], a                                    ; $5b6e: $02
    inc bc                                        ; $5b6f: $03
    inc b                                         ; $5b70: $04
    rlca                                          ; $5b71: $07
    ld b, $07                                     ; $5b72: $06 $07
    add hl, bc                                    ; $5b74: $09
    rrca                                          ; $5b75: $0f
    ld [$080f], sp                                ; $5b76: $08 $0f $08
    rrca                                          ; $5b79: $0f
    rlca                                          ; $5b7a: $07
    rlca                                          ; $5b7b: $07
    inc bc                                        ; $5b7c: $03
    ld [bc], a                                    ; $5b7d: $02
    inc bc                                        ; $5b7e: $03
    inc bc                                        ; $5b7f: $03
    inc bc                                        ; $5b80: $03
    inc bc                                        ; $5b81: $03
    inc bc                                        ; $5b82: $03
    ld [bc], a                                    ; $5b83: $02
    rlca                                          ; $5b84: $07
    dec b                                         ; $5b85: $05
    rlca                                          ; $5b86: $07
    rlca                                          ; $5b87: $07
    rlca                                          ; $5b88: $07
    rlca                                          ; $5b89: $07
    rra                                           ; $5b8a: $1f
    rra                                           ; $5b8b: $1f
    inc a                                         ; $5b8c: $3c
    ccf                                           ; $5b8d: $3f
    rra                                           ; $5b8e: $1f
    rra                                           ; $5b8f: $1f
    nop                                           ; $5b90: $00
    nop                                           ; $5b91: $00
    nop                                           ; $5b92: $00
    nop                                           ; $5b93: $00
    inc e                                         ; $5b94: $1c
    inc e                                         ; $5b95: $1c
    inc hl                                        ; $5b96: $23
    ccf                                           ; $5b97: $3f
    ld b, b                                       ; $5b98: $40
    ld a, a                                       ; $5b99: $7f
    ld h, e                                       ; $5b9a: $63
    ld a, a                                       ; $5b9b: $7f
    rst $38                                       ; $5b9c: $ff
    call c, $e93f                                 ; $5b9d: $dc $3f $e9
    rra                                           ; $5ba0: $1f
    db $fc                                        ; $5ba1: $fc
    cpl                                           ; $5ba2: $2f
    ei                                            ; $5ba3: $fb
    ld a, a                                       ; $5ba4: $7f
    sub $7f                                       ; $5ba5: $d6 $7f
    push bc                                       ; $5ba7: $c5
    rst $38                                       ; $5ba8: $ff
    pop bc                                        ; $5ba9: $c1
    cp [hl]                                       ; $5baa: $be
    ld [c], a                                     ; $5bab: $e2
    db $fc                                        ; $5bac: $fc
    db $fc                                        ; $5bad: $fc
    ld [hl], b                                    ; $5bae: $70
    sub b                                         ; $5baf: $90
    ldh a, [$90]                                  ; $5bb0: $f0 $90
    ld hl, sp-$78                                 ; $5bb2: $f8 $88
    ld hl, sp-$08                                 ; $5bb4: $f8 $f8
    ld a, b                                       ; $5bb6: $78
    ret z                                         ; $5bb7: $c8

    ld a, h                                       ; $5bb8: $7c
    call nz, $e4fc                                ; $5bb9: $c4 $fc $e4
    cp $22                                        ; $5bbc: $fe $22
    cp $12                                        ; $5bbe: $fe $12
    rst $38                                       ; $5bc0: $ff
    sbc a                                         ; $5bc1: $9f
    pop hl                                        ; $5bc2: $e1
    and c                                         ; $5bc3: $a1
    ldh [$e0], a                                  ; $5bc4: $e0 $e0
    ldh [rNR41], a                                ; $5bc6: $e0 $20
    ret nc                                        ; $5bc8: $d0

    ldh a, [$7c]                                  ; $5bc9: $f0 $7c
    cp h                                          ; $5bcb: $bc
    rra                                           ; $5bcc: $1f
    rst $38                                       ; $5bcd: $ff
    db $fc                                        ; $5bce: $fc
    db $fc                                        ; $5bcf: $fc
    nop                                           ; $5bd0: $00
    nop                                           ; $5bd1: $00
    nop                                           ; $5bd2: $00
    nop                                           ; $5bd3: $00
    nop                                           ; $5bd4: $00
    nop                                           ; $5bd5: $00
    nop                                           ; $5bd6: $00
    nop                                           ; $5bd7: $00
    add b                                         ; $5bd8: $80
    add b                                         ; $5bd9: $80
    add b                                         ; $5bda: $80
    add b                                         ; $5bdb: $80
    ret nz                                        ; $5bdc: $c0

    ld b, b                                       ; $5bdd: $40
    ret nz                                        ; $5bde: $c0

    ret nz                                        ; $5bdf: $c0

    ret nz                                        ; $5be0: $c0

    ld b, b                                       ; $5be1: $40
    ldh [rNR41], a                                ; $5be2: $e0 $20
    ldh [$e0], a                                  ; $5be4: $e0 $e0
    nop                                           ; $5be6: $00
    nop                                           ; $5be7: $00
    nop                                           ; $5be8: $00
    nop                                           ; $5be9: $00
    nop                                           ; $5bea: $00
    nop                                           ; $5beb: $00
    nop                                           ; $5bec: $00
    nop                                           ; $5bed: $00
    nop                                           ; $5bee: $00
    nop                                           ; $5bef: $00
    nop                                           ; $5bf0: $00
    nop                                           ; $5bf1: $00
    nop                                           ; $5bf2: $00
    nop                                           ; $5bf3: $00
    nop                                           ; $5bf4: $00
    nop                                           ; $5bf5: $00
    nop                                           ; $5bf6: $00
    nop                                           ; $5bf7: $00
    nop                                           ; $5bf8: $00
    nop                                           ; $5bf9: $00
    nop                                           ; $5bfa: $00
    nop                                           ; $5bfb: $00
    nop                                           ; $5bfc: $00
    nop                                           ; $5bfd: $00
    nop                                           ; $5bfe: $00
    nop                                           ; $5bff: $00
    nop                                           ; $5c00: $00
    nop                                           ; $5c01: $00
    add b                                         ; $5c02: $80
    add b                                         ; $5c03: $80
    ret nz                                        ; $5c04: $c0

    ret nz                                        ; $5c05: $c0

    ld l, [hl]                                    ; $5c06: $6e
    ld l, [hl]                                    ; $5c07: $6e
    ld e, e                                       ; $5c08: $5b
    ld a, l                                       ; $5c09: $7d
    ld sp, $fe3f                                  ; $5c0a: $31 $3f $fe
    cp $00                                        ; $5c0d: $fe $00
    nop                                           ; $5c0f: $00
    jr nc, jr_014_5c6e                            ; $5c10: $30 $5c

    ret nc                                        ; $5c12: $d0

    ld e, h                                       ; $5c13: $5c
    ld d, b                                       ; $5c14: $50
    ld e, l                                       ; $5c15: $5d
    ldh a, [$5d]                                  ; $5c16: $f0 $5d
    or b                                          ; $5c18: $b0
    ld e, [hl]                                    ; $5c19: $5e
    ld d, b                                       ; $5c1a: $50
    ld e, a                                       ; $5c1b: $5f
    ldh a, [$5f]                                  ; $5c1c: $f0 $5f
    ld [hl], b                                    ; $5c1e: $70
    ld h, b                                       ; $5c1f: $60
    db $10                                        ; $5c20: $10
    ld h, c                                       ; $5c21: $61
    or b                                          ; $5c22: $b0
    ld h, c                                       ; $5c23: $61
    ld d, b                                       ; $5c24: $50
    ld h, d                                       ; $5c25: $62
    nop                                           ; $5c26: $00
    nop                                           ; $5c27: $00
    nop                                           ; $5c28: $00
    nop                                           ; $5c29: $00
    nop                                           ; $5c2a: $00
    nop                                           ; $5c2b: $00
    nop                                           ; $5c2c: $00
    nop                                           ; $5c2d: $00
    nop                                           ; $5c2e: $00
    nop                                           ; $5c2f: $00
    nop                                           ; $5c30: $00
    nop                                           ; $5c31: $00
    nop                                           ; $5c32: $00
    nop                                           ; $5c33: $00
    ld bc, $0201                                  ; $5c34: $01 $01 $02
    inc bc                                        ; $5c37: $03
    inc b                                         ; $5c38: $04
    rlca                                          ; $5c39: $07
    inc b                                         ; $5c3a: $04
    rlca                                          ; $5c3b: $07
    inc b                                         ; $5c3c: $04
    rlca                                          ; $5c3d: $07
    ld [bc], a                                    ; $5c3e: $02
    inc bc                                        ; $5c3f: $03
    inc bc                                        ; $5c40: $03
    inc bc                                        ; $5c41: $03
    rlca                                          ; $5c42: $07
    inc b                                         ; $5c43: $04
    rlca                                          ; $5c44: $07
    dec b                                         ; $5c45: $05
    inc bc                                        ; $5c46: $03
    ld [bc], a                                    ; $5c47: $02
    inc bc                                        ; $5c48: $03
    inc bc                                        ; $5c49: $03
    rlca                                          ; $5c4a: $07
    ld b, $09                                     ; $5c4b: $06 $09
    rrca                                          ; $5c4d: $0f
    ld [de], a                                    ; $5c4e: $12
    rra                                           ; $5c4f: $1f
    ld [hl+], a                                   ; $5c50: $22
    ccf                                           ; $5c51: $3f
    ld [hl+], a                                   ; $5c52: $22
    ccf                                           ; $5c53: $3f
    ld sp, $7d3f                                  ; $5c54: $31 $3f $7d
    ld c, a                                       ; $5c57: $4f
    ld a, a                                       ; $5c58: $7f
    ld b, e                                       ; $5c59: $43
    ld a, [hl]                                    ; $5c5a: $7e
    ld b, [hl]                                    ; $5c5b: $46
    ld a, $22                                     ; $5c5c: $3e $22
    ld a, $22                                     ; $5c5e: $3e $22
    ld a, $22                                     ; $5c60: $3e $22
    ld a, [hl]                                    ; $5c62: $7e
    ld b, [hl]                                    ; $5c63: $46
    ld a, a                                       ; $5c64: $7f
    ld b, e                                       ; $5c65: $43
    ld a, [hl]                                    ; $5c66: $7e
    ld h, a                                       ; $5c67: $67
    ld a, e                                       ; $5c68: $7b
    ld e, l                                       ; $5c69: $5d
    ld l, b                                       ; $5c6a: $68
    ld a, a                                       ; $5c6b: $7f
    rst $38                                       ; $5c6c: $ff
    rst $38                                       ; $5c6d: $ff

jr_014_5c6e:
    ld a, a                                       ; $5c6e: $7f
    ld a, a                                       ; $5c6f: $7f
    nop                                           ; $5c70: $00
    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00
    nop                                           ; $5c73: $00

jr_014_5c74:
    ldh a, [$f0]                                  ; $5c74: $f0 $f0
    inc c                                         ; $5c76: $0c
    db $fc                                        ; $5c77: $fc
    ld [hl-], a                                   ; $5c78: $32
    cp $7a                                        ; $5c79: $fe $7a
    adc $fc                                       ; $5c7b: $ce $fc
    add h                                         ; $5c7d: $84
    db $fc                                        ; $5c7e: $fc
    adc h                                         ; $5c7f: $8c
    db $fc                                        ; $5c80: $fc
    db $fc                                        ; $5c81: $fc
    db $fc                                        ; $5c82: $fc
    sub h                                         ; $5c83: $94
    cp $0a                                        ; $5c84: $fe $0a
    cp $02                                        ; $5c86: $fe $02
    db $fc                                        ; $5c88: $fc
    inc c                                         ; $5c89: $0c
    ldh a, [$90]                                  ; $5c8a: $f0 $90
    ldh [$e0], a                                  ; $5c8c: $e0 $e0
    ld b, b                                       ; $5c8e: $40
    ret nz                                        ; $5c8f: $c0

    ld b, b                                       ; $5c90: $40
    ret nz                                        ; $5c91: $c0

    jr nz, jr_014_5c74                            ; $5c92: $20 $e0

    ldh [$e0], a                                  ; $5c94: $e0 $e0
    ldh [rNR41], a                                ; $5c96: $e0 $20
    ldh a, [rNR10]                                ; $5c98: $f0 $10
    ldh a, [$90]                                  ; $5c9a: $f0 $90
    ld hl, sp-$78                                 ; $5c9c: $f8 $88
    ld a, h                                       ; $5c9e: $7c
    ld l, h                                       ; $5c9f: $6c
    ld e, $1e                                     ; $5ca0: $1e $1e
    inc bc                                        ; $5ca2: $03
    inc bc                                        ; $5ca3: $03
    ld bc, $8001                                  ; $5ca4: $01 $01 $80
    add b                                         ; $5ca7: $80
    add b                                         ; $5ca8: $80
    add b                                         ; $5ca9: $80
    db $fc                                        ; $5caa: $fc
    db $fc                                        ; $5cab: $fc
    rst $38                                       ; $5cac: $ff
    rst $38                                       ; $5cad: $ff
    db $fc                                        ; $5cae: $fc
    db $fc                                        ; $5caf: $fc
    nop                                           ; $5cb0: $00
    nop                                           ; $5cb1: $00
    nop                                           ; $5cb2: $00
    nop                                           ; $5cb3: $00
    nop                                           ; $5cb4: $00
    nop                                           ; $5cb5: $00
    nop                                           ; $5cb6: $00
    nop                                           ; $5cb7: $00
    nop                                           ; $5cb8: $00
    nop                                           ; $5cb9: $00
    nop                                           ; $5cba: $00
    nop                                           ; $5cbb: $00
    nop                                           ; $5cbc: $00
    nop                                           ; $5cbd: $00
    nop                                           ; $5cbe: $00
    nop                                           ; $5cbf: $00
    nop                                           ; $5cc0: $00
    nop                                           ; $5cc1: $00
    nop                                           ; $5cc2: $00
    nop                                           ; $5cc3: $00
    add b                                         ; $5cc4: $80
    add b                                         ; $5cc5: $80
    adc $ce                                       ; $5cc6: $ce $ce
    ld [hl], l                                    ; $5cc8: $75
    ld a, e                                       ; $5cc9: $7b
    ccf                                           ; $5cca: $3f
    ccf                                           ; $5ccb: $3f
    cp $fe                                        ; $5ccc: $fe $fe
    nop                                           ; $5cce: $00
    nop                                           ; $5ccf: $00
    nop                                           ; $5cd0: $00
    nop                                           ; $5cd1: $00
    nop                                           ; $5cd2: $00
    nop                                           ; $5cd3: $00
    ld bc, $0201                                  ; $5cd4: $01 $01 $02
    inc bc                                        ; $5cd7: $03
    inc b                                         ; $5cd8: $04
    rlca                                          ; $5cd9: $07
    inc b                                         ; $5cda: $04
    rlca                                          ; $5cdb: $07
    inc b                                         ; $5cdc: $04
    rlca                                          ; $5cdd: $07
    ld [bc], a                                    ; $5cde: $02
    inc bc                                        ; $5cdf: $03
    inc bc                                        ; $5ce0: $03
    inc bc                                        ; $5ce1: $03
    rlca                                          ; $5ce2: $07
    inc b                                         ; $5ce3: $04
    rlca                                          ; $5ce4: $07
    dec b                                         ; $5ce5: $05
    inc bc                                        ; $5ce6: $03
    ld [bc], a                                    ; $5ce7: $02
    inc bc                                        ; $5ce8: $03
    inc bc                                        ; $5ce9: $03
    rlca                                          ; $5cea: $07
    ld b, $09                                     ; $5ceb: $06 $09
    rrca                                          ; $5ced: $0f
    add hl, de                                    ; $5cee: $19
    rra                                           ; $5cef: $1f
    add hl, hl                                    ; $5cf0: $29
    ccf                                           ; $5cf1: $3f
    cpl                                           ; $5cf2: $2f
    ccf                                           ; $5cf3: $3f
    ccf                                           ; $5cf4: $3f
    add hl, sp                                    ; $5cf5: $39
    ld a, a                                       ; $5cf6: $7f
    ld c, b                                       ; $5cf7: $48
    ld a, a                                       ; $5cf8: $7f
    ld b, h                                       ; $5cf9: $44
    ld a, a                                       ; $5cfa: $7f
    ld b, [hl]                                    ; $5cfb: $46
    ccf                                           ; $5cfc: $3f
    inc hl                                        ; $5cfd: $23
    ccf                                           ; $5cfe: $3f
    inc hl                                        ; $5cff: $23
    ccf                                           ; $5d00: $3f
    ld [hl+], a                                   ; $5d01: $22
    ld a, a                                       ; $5d02: $7f
    ld b, a                                       ; $5d03: $47
    ld a, a                                       ; $5d04: $7f
    ld b, e                                       ; $5d05: $43
    ld a, [hl]                                    ; $5d06: $7e
    ld h, a                                       ; $5d07: $67
    ld a, e                                       ; $5d08: $7b
    ld e, l                                       ; $5d09: $5d
    ld l, b                                       ; $5d0a: $68
    ld a, a                                       ; $5d0b: $7f
    rst $38                                       ; $5d0c: $ff
    rst $38                                       ; $5d0d: $ff
    ld a, a                                       ; $5d0e: $7f
    ld a, a                                       ; $5d0f: $7f
    nop                                           ; $5d10: $00
    nop                                           ; $5d11: $00
    nop                                           ; $5d12: $00
    nop                                           ; $5d13: $00
    ldh a, [$f0]                                  ; $5d14: $f0 $f0
    inc c                                         ; $5d16: $0c
    db $fc                                        ; $5d17: $fc
    ld [hl-], a                                   ; $5d18: $32
    cp $7a                                        ; $5d19: $fe $7a
    adc $fc                                       ; $5d1b: $ce $fc
    add h                                         ; $5d1d: $84
    db $fc                                        ; $5d1e: $fc
    adc h                                         ; $5d1f: $8c
    db $fc                                        ; $5d20: $fc
    db $fc                                        ; $5d21: $fc
    db $fc                                        ; $5d22: $fc
    sub h                                         ; $5d23: $94
    cp $0a                                        ; $5d24: $fe $0a
    cp $02                                        ; $5d26: $fe $02
    db $fc                                        ; $5d28: $fc
    inc c                                         ; $5d29: $0c
    ldh a, [$90]                                  ; $5d2a: $f0 $90
    ldh [$60], a                                  ; $5d2c: $e0 $60
    ret nz                                        ; $5d2e: $c0

    ret nz                                        ; $5d2f: $c0

    ld b, b                                       ; $5d30: $40
    ret nz                                        ; $5d31: $c0

    ld b, b                                       ; $5d32: $40
    ret nz                                        ; $5d33: $c0

    ldh [$a0], a                                  ; $5d34: $e0 $a0
    ldh [$e0], a                                  ; $5d36: $e0 $e0
    ret nc                                        ; $5d38: $d0

    ld [hl], b                                    ; $5d39: $70
    ldh a, [$30]                                  ; $5d3a: $f0 $30
    ld hl, sp+$78                                 ; $5d3c: $f8 $78
    call nc, $fc6c                                ; $5d3e: $d4 $6c $fc
    db $fc                                        ; $5d41: $fc
    jr c, jr_014_5d7c                             ; $5d42: $38 $38

    nop                                           ; $5d44: $00
    nop                                           ; $5d45: $00
    add b                                         ; $5d46: $80
    add b                                         ; $5d47: $80
    add b                                         ; $5d48: $80
    add b                                         ; $5d49: $80
    db $fc                                        ; $5d4a: $fc
    db $fc                                        ; $5d4b: $fc
    cp $fe                                        ; $5d4c: $fe $fe
    db $fc                                        ; $5d4e: $fc
    db $fc                                        ; $5d4f: $fc
    nop                                           ; $5d50: $00
    nop                                           ; $5d51: $00
    nop                                           ; $5d52: $00
    nop                                           ; $5d53: $00
    nop                                           ; $5d54: $00
    nop                                           ; $5d55: $00
    nop                                           ; $5d56: $00
    nop                                           ; $5d57: $00
    nop                                           ; $5d58: $00
    nop                                           ; $5d59: $00
    nop                                           ; $5d5a: $00
    nop                                           ; $5d5b: $00
    nop                                           ; $5d5c: $00
    nop                                           ; $5d5d: $00
    nop                                           ; $5d5e: $00
    nop                                           ; $5d5f: $00
    nop                                           ; $5d60: $00
    nop                                           ; $5d61: $00
    nop                                           ; $5d62: $00
    nop                                           ; $5d63: $00
    ld bc, $0101                                  ; $5d64: $01 $01 $01
    ld bc, $0101                                  ; $5d67: $01 $01 $01
    nop                                           ; $5d6a: $00
    nop                                           ; $5d6b: $00
    nop                                           ; $5d6c: $00
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    nop                                           ; $5d6f: $00
    nop                                           ; $5d70: $00
    nop                                           ; $5d71: $00
    nop                                           ; $5d72: $00
    nop                                           ; $5d73: $00
    ld bc, $0201                                  ; $5d74: $01 $01 $02
    inc bc                                        ; $5d77: $03
    inc b                                         ; $5d78: $04
    rlca                                          ; $5d79: $07
    inc b                                         ; $5d7a: $04
    rlca                                          ; $5d7b: $07

jr_014_5d7c:
    inc b                                         ; $5d7c: $04
    rlca                                          ; $5d7d: $07
    ld [bc], a                                    ; $5d7e: $02
    inc bc                                        ; $5d7f: $03
    inc bc                                        ; $5d80: $03
    inc bc                                        ; $5d81: $03
    rst $00                                       ; $5d82: $c7
    call nz, Call_014_65e7                        ; $5d83: $c4 $e7 $65
    ld h, e                                       ; $5d86: $63
    ld [c], a                                     ; $5d87: $e2
    ld l, a                                       ; $5d88: $6f
    rst $28                                       ; $5d89: $ef
    di                                            ; $5d8a: $f3
    cp $63                                        ; $5d8b: $fe $63
    ld a, a                                       ; $5d8d: $7f
    ld a, $3f                                     ; $5d8e: $3e $3f
    ld a, [hl]                                    ; $5d90: $7e
    ld d, e                                       ; $5d91: $53
    ld a, a                                       ; $5d92: $7f
    ld l, c                                       ; $5d93: $69
    ld a, [hl]                                    ; $5d94: $7e
    ld [hl], e                                    ; $5d95: $73
    ld a, h                                       ; $5d96: $7c
    ld c, a                                       ; $5d97: $4f
    ld a, [hl]                                    ; $5d98: $7e
    ld b, a                                       ; $5d99: $47
    ld a, a                                       ; $5d9a: $7f
    ld b, a                                       ; $5d9b: $47
    ccf                                           ; $5d9c: $3f
    dec h                                         ; $5d9d: $25
    ccf                                           ; $5d9e: $3f
    ld [hl+], a                                   ; $5d9f: $22
    ccf                                           ; $5da0: $3f
    ld [hl+], a                                   ; $5da1: $22
    ld a, a                                       ; $5da2: $7f
    ld b, a                                       ; $5da3: $47
    ld a, a                                       ; $5da4: $7f
    ld b, e                                       ; $5da5: $43
    ld a, [hl]                                    ; $5da6: $7e
    ld h, a                                       ; $5da7: $67
    ld a, e                                       ; $5da8: $7b
    ld e, l                                       ; $5da9: $5d
    ld l, b                                       ; $5daa: $68
    ld a, a                                       ; $5dab: $7f
    rst $38                                       ; $5dac: $ff
    rst $38                                       ; $5dad: $ff
    ld a, a                                       ; $5dae: $7f
    ld a, a                                       ; $5daf: $7f
    nop                                           ; $5db0: $00
    nop                                           ; $5db1: $00
    nop                                           ; $5db2: $00
    nop                                           ; $5db3: $00
    ldh a, [$f0]                                  ; $5db4: $f0 $f0
    inc c                                         ; $5db6: $0c
    db $fc                                        ; $5db7: $fc
    ld [hl-], a                                   ; $5db8: $32
    cp $7a                                        ; $5db9: $fe $7a
    adc $fc                                       ; $5dbb: $ce $fc
    add h                                         ; $5dbd: $84
    db $fc                                        ; $5dbe: $fc
    adc h                                         ; $5dbf: $8c
    db $fc                                        ; $5dc0: $fc
    db $fc                                        ; $5dc1: $fc
    db $fc                                        ; $5dc2: $fc
    sub h                                         ; $5dc3: $94
    cp $0a                                        ; $5dc4: $fe $0a
    cp $02                                        ; $5dc6: $fe $02
    db $fc                                        ; $5dc8: $fc
    inc c                                         ; $5dc9: $0c
    ldh a, [$90]                                  ; $5dca: $f0 $90
    ldh [$e0], a                                  ; $5dcc: $e0 $e0
    and b                                         ; $5dce: $a0
    ldh [$d0], a                                  ; $5dcf: $e0 $d0
    ldh a, [$d0]                                  ; $5dd1: $f0 $d0
    ld [hl], b                                    ; $5dd3: $70
    ldh [$a0], a                                  ; $5dd4: $e0 $a0
    ld h, b                                       ; $5dd6: $60
    ldh [$c0], a                                  ; $5dd7: $e0 $c0
    ret nz                                        ; $5dd9: $c0

    add b                                         ; $5dda: $80
    add b                                         ; $5ddb: $80
    nop                                           ; $5ddc: $00
    nop                                           ; $5ddd: $00
    add b                                         ; $5dde: $80
    add b                                         ; $5ddf: $80
    add b                                         ; $5de0: $80
    add b                                         ; $5de1: $80
    nop                                           ; $5de2: $00
    nop                                           ; $5de3: $00
    nop                                           ; $5de4: $00
    nop                                           ; $5de5: $00
    add b                                         ; $5de6: $80
    add b                                         ; $5de7: $80
    add b                                         ; $5de8: $80
    add b                                         ; $5de9: $80
    db $fc                                        ; $5dea: $fc
    db $fc                                        ; $5deb: $fc
    cp $fe                                        ; $5dec: $fe $fe
    db $fc                                        ; $5dee: $fc
    db $fc                                        ; $5def: $fc
    nop                                           ; $5df0: $00
    nop                                           ; $5df1: $00
    nop                                           ; $5df2: $00
    nop                                           ; $5df3: $00
    nop                                           ; $5df4: $00
    nop                                           ; $5df5: $00
    nop                                           ; $5df6: $00
    nop                                           ; $5df7: $00
    nop                                           ; $5df8: $00
    nop                                           ; $5df9: $00
    ld b, $06                                     ; $5dfa: $06 $06
    ld c, $0a                                     ; $5dfc: $0e $0a
    ld a, [bc]                                    ; $5dfe: $0a
    ld c, $0e                                     ; $5dff: $0e $0e
    ld c, $06                                     ; $5e01: $0e $06
    ld b, $03                                     ; $5e03: $06 $03
    inc bc                                        ; $5e05: $03
    ld bc, $0001                                  ; $5e06: $01 $01 $00
    nop                                           ; $5e09: $00
    nop                                           ; $5e0a: $00
    nop                                           ; $5e0b: $00
    nop                                           ; $5e0c: $00
    nop                                           ; $5e0d: $00
    ld bc, $0101                                  ; $5e0e: $01 $01 $01
    ld bc, $0000                                  ; $5e11: $01 $00 $00
    nop                                           ; $5e14: $00
    nop                                           ; $5e15: $00
    nop                                           ; $5e16: $00
    nop                                           ; $5e17: $00
    nop                                           ; $5e18: $00
    nop                                           ; $5e19: $00
    nop                                           ; $5e1a: $00
    nop                                           ; $5e1b: $00
    nop                                           ; $5e1c: $00
    nop                                           ; $5e1d: $00
    nop                                           ; $5e1e: $00
    nop                                           ; $5e1f: $00
    nop                                           ; $5e20: $00
    nop                                           ; $5e21: $00
    nop                                           ; $5e22: $00
    nop                                           ; $5e23: $00
    nop                                           ; $5e24: $00
    nop                                           ; $5e25: $00
    nop                                           ; $5e26: $00
    nop                                           ; $5e27: $00
    nop                                           ; $5e28: $00
    nop                                           ; $5e29: $00
    nop                                           ; $5e2a: $00
    nop                                           ; $5e2b: $00
    nop                                           ; $5e2c: $00
    nop                                           ; $5e2d: $00
    nop                                           ; $5e2e: $00
    nop                                           ; $5e2f: $00
    nop                                           ; $5e30: $00
    nop                                           ; $5e31: $00
    nop                                           ; $5e32: $00
    nop                                           ; $5e33: $00
    inc bc                                        ; $5e34: $03
    inc bc                                        ; $5e35: $03
    inc b                                         ; $5e36: $04
    rlca                                          ; $5e37: $07
    ld [$080f], sp                                ; $5e38: $08 $0f $08
    rrca                                          ; $5e3b: $0f
    add hl, bc                                    ; $5e3c: $09
    rrca                                          ; $5e3d: $0f
    dec b                                         ; $5e3e: $05
    rlca                                          ; $5e3f: $07
    rlca                                          ; $5e40: $07
    rlca                                          ; $5e41: $07
    rrca                                          ; $5e42: $0f
    add hl, bc                                    ; $5e43: $09
    rrca                                          ; $5e44: $0f
    ld a, [bc]                                    ; $5e45: $0a
    rst $20                                       ; $5e46: $e7
    db $e4                                        ; $5e47: $e4
    rst $38                                       ; $5e48: $ff
    jp c, $cdff                                   ; $5e49: $da $ff $cd

    or $9f                                        ; $5e4c: $f6 $9f
    db $e3                                        ; $5e4e: $e3
    ld a, a                                       ; $5e4f: $7f
    di                                            ; $5e50: $f3
    ld a, $cf                                     ; $5e51: $3e $cf
    db $fc                                        ; $5e53: $fc
    ld [hl], e                                    ; $5e54: $73
    ld a, [hl]                                    ; $5e55: $7e
    ld a, a                                       ; $5e56: $7f
    ld c, a                                       ; $5e57: $4f
    ld a, a                                       ; $5e58: $7f
    ld b, e                                       ; $5e59: $43
    ld a, a                                       ; $5e5a: $7f
    ld b, l                                       ; $5e5b: $45
    ld a, a                                       ; $5e5c: $7f
    ld b, h                                       ; $5e5d: $44
    ccf                                           ; $5e5e: $3f
    ld [hl+], a                                   ; $5e5f: $22
    ccf                                           ; $5e60: $3f
    ld [hl+], a                                   ; $5e61: $22
    ld a, a                                       ; $5e62: $7f
    ld b, a                                       ; $5e63: $47
    ld a, a                                       ; $5e64: $7f
    ld b, e                                       ; $5e65: $43
    ld a, [hl]                                    ; $5e66: $7e
    ld h, a                                       ; $5e67: $67
    ld a, e                                       ; $5e68: $7b
    ld e, l                                       ; $5e69: $5d
    ld l, b                                       ; $5e6a: $68
    ld a, a                                       ; $5e6b: $7f
    rst $38                                       ; $5e6c: $ff
    rst $38                                       ; $5e6d: $ff
    ld a, a                                       ; $5e6e: $7f
    ld a, a                                       ; $5e6f: $7f

jr_014_5e70:
    nop                                           ; $5e70: $00
    nop                                           ; $5e71: $00
    nop                                           ; $5e72: $00
    nop                                           ; $5e73: $00
    ldh [$e0], a                                  ; $5e74: $e0 $e0
    jr jr_014_5e70                                ; $5e76: $18 $f8

    ld h, h                                       ; $5e78: $64
    db $fc                                        ; $5e79: $fc
    db $f4                                        ; $5e7a: $f4
    sbc h                                         ; $5e7b: $9c
    ld hl, sp+$08                                 ; $5e7c: $f8 $08
    ld hl, sp+$18                                 ; $5e7e: $f8 $18
    ld hl, sp-$08                                 ; $5e80: $f8 $f8
    ld hl, sp+$28                                 ; $5e82: $f8 $28
    db $fc                                        ; $5e84: $fc
    inc d                                         ; $5e85: $14
    db $fc                                        ; $5e86: $fc
    inc b                                         ; $5e87: $04
    ld hl, sp+$18                                 ; $5e88: $f8 $18
    ldh [rNR41], a                                ; $5e8a: $e0 $20
    ret nz                                        ; $5e8c: $c0

    ret nz                                        ; $5e8d: $c0

    and b                                         ; $5e8e: $a0
    ldh [$e0], a                                  ; $5e8f: $e0 $e0
    ld h, b                                       ; $5e91: $60
    ldh [$60], a                                  ; $5e92: $e0 $60
    ret nz                                        ; $5e94: $c0

    ret nz                                        ; $5e95: $c0

    nop                                           ; $5e96: $00
    nop                                           ; $5e97: $00
    nop                                           ; $5e98: $00
    nop                                           ; $5e99: $00
    nop                                           ; $5e9a: $00
    nop                                           ; $5e9b: $00
    add b                                         ; $5e9c: $80
    add b                                         ; $5e9d: $80
    add b                                         ; $5e9e: $80
    add b                                         ; $5e9f: $80
    add b                                         ; $5ea0: $80
    add b                                         ; $5ea1: $80
    nop                                           ; $5ea2: $00
    nop                                           ; $5ea3: $00
    nop                                           ; $5ea4: $00
    nop                                           ; $5ea5: $00
    add b                                         ; $5ea6: $80
    add b                                         ; $5ea7: $80
    add b                                         ; $5ea8: $80
    add b                                         ; $5ea9: $80
    db $fc                                        ; $5eaa: $fc
    db $fc                                        ; $5eab: $fc
    cp $fe                                        ; $5eac: $fe $fe
    db $fc                                        ; $5eae: $fc
    db $fc                                        ; $5eaf: $fc
    nop                                           ; $5eb0: $00
    nop                                           ; $5eb1: $00
    jr @+$1a                                      ; $5eb2: $18 $18

    jr c, jr_014_5ede                             ; $5eb4: $38 $28

    jr z, jr_014_5ef0                             ; $5eb6: $28 $38

    jr c, jr_014_5ef2                             ; $5eb8: $38 $38

    jr jr_014_5ed4                                ; $5eba: $18 $18

    inc c                                         ; $5ebc: $0c
    inc c                                         ; $5ebd: $0c
    ld b, $06                                     ; $5ebe: $06 $06
    inc bc                                        ; $5ec0: $03
    inc bc                                        ; $5ec1: $03
    ld bc, $0101                                  ; $5ec2: $01 $01 $01
    ld bc, $0101                                  ; $5ec5: $01 $01 $01
    nop                                           ; $5ec8: $00
    nop                                           ; $5ec9: $00
    ld bc, $0101                                  ; $5eca: $01 $01 $01
    ld bc, $0101                                  ; $5ecd: $01 $01 $01
    nop                                           ; $5ed0: $00
    nop                                           ; $5ed1: $00
    nop                                           ; $5ed2: $00
    nop                                           ; $5ed3: $00

jr_014_5ed4:
    inc bc                                        ; $5ed4: $03
    inc bc                                        ; $5ed5: $03
    inc b                                         ; $5ed6: $04
    rlca                                          ; $5ed7: $07
    ld [$080f], sp                                ; $5ed8: $08 $0f $08
    rrca                                          ; $5edb: $0f
    add hl, bc                                    ; $5edc: $09
    rrca                                          ; $5edd: $0f

jr_014_5ede:
    dec b                                         ; $5ede: $05
    rlca                                          ; $5edf: $07
    rlca                                          ; $5ee0: $07
    rlca                                          ; $5ee1: $07
    rst $08                                       ; $5ee2: $cf
    ret                                           ; $5ee3: $c9


    rst $28                                       ; $5ee4: $ef
    xor d                                         ; $5ee5: $aa
    rst $30                                       ; $5ee6: $f7
    inc d                                         ; $5ee7: $14
    db $eb                                        ; $5ee8: $eb
    cp [hl]                                       ; $5ee9: $be
    rst $00                                       ; $5eea: $c7
    ld a, a                                       ; $5eeb: $7f
    rst $30                                       ; $5eec: $f7
    inc a                                         ; $5eed: $3c
    rst $28                                       ; $5eee: $ef
    inc a                                         ; $5eef: $3c

jr_014_5ef0:
    rst $20                                       ; $5ef0: $e7
    cp [hl]                                       ; $5ef1: $be

jr_014_5ef2:
    ld h, c                                       ; $5ef2: $61
    ld a, a                                       ; $5ef3: $7f
    ld [hl], b                                    ; $5ef4: $70
    ld a, a                                       ; $5ef5: $7f
    ld a, h                                       ; $5ef6: $7c
    ld c, a                                       ; $5ef7: $4f
    ld a, a                                       ; $5ef8: $7f
    ld b, e                                       ; $5ef9: $43
    ld a, a                                       ; $5efa: $7f
    ld c, l                                       ; $5efb: $4d
    ld a, a                                       ; $5efc: $7f
    ld b, h                                       ; $5efd: $44
    ccf                                           ; $5efe: $3f
    ld [hl+], a                                   ; $5eff: $22
    ccf                                           ; $5f00: $3f
    ld [hl+], a                                   ; $5f01: $22
    ld a, a                                       ; $5f02: $7f
    ld b, a                                       ; $5f03: $47
    ld a, a                                       ; $5f04: $7f
    ld b, e                                       ; $5f05: $43
    ld a, [hl]                                    ; $5f06: $7e
    ld h, a                                       ; $5f07: $67
    ld a, e                                       ; $5f08: $7b
    ld e, l                                       ; $5f09: $5d
    ld l, b                                       ; $5f0a: $68
    ld a, a                                       ; $5f0b: $7f
    rst $38                                       ; $5f0c: $ff
    rst $38                                       ; $5f0d: $ff
    ld a, a                                       ; $5f0e: $7f
    ld a, a                                       ; $5f0f: $7f

jr_014_5f10:
    nop                                           ; $5f10: $00
    nop                                           ; $5f11: $00
    nop                                           ; $5f12: $00
    nop                                           ; $5f13: $00
    ldh [$e0], a                                  ; $5f14: $e0 $e0
    jr jr_014_5f10                                ; $5f16: $18 $f8

    ld h, h                                       ; $5f18: $64
    db $fc                                        ; $5f19: $fc
    db $f4                                        ; $5f1a: $f4
    sbc h                                         ; $5f1b: $9c
    ld hl, sp+$08                                 ; $5f1c: $f8 $08
    ld hl, sp+$18                                 ; $5f1e: $f8 $18
    ld hl, sp-$08                                 ; $5f20: $f8 $f8
    ld hl, sp+$28                                 ; $5f22: $f8 $28
    db $fc                                        ; $5f24: $fc
    inc d                                         ; $5f25: $14
    db $fc                                        ; $5f26: $fc
    inc b                                         ; $5f27: $04
    ld hl, sp+$18                                 ; $5f28: $f8 $18
    ldh [rNR41], a                                ; $5f2a: $e0 $20
    ret nz                                        ; $5f2c: $c0

    ret nz                                        ; $5f2d: $c0

    ldh [$60], a                                  ; $5f2e: $e0 $60
    and b                                         ; $5f30: $a0
    ldh [$a0], a                                  ; $5f31: $e0 $a0
    ldh [$c0], a                                  ; $5f33: $e0 $c0
    ret nz                                        ; $5f35: $c0

    add b                                         ; $5f36: $80
    add b                                         ; $5f37: $80
    nop                                           ; $5f38: $00
    nop                                           ; $5f39: $00
    nop                                           ; $5f3a: $00
    nop                                           ; $5f3b: $00
    add b                                         ; $5f3c: $80
    add b                                         ; $5f3d: $80
    add b                                         ; $5f3e: $80
    add b                                         ; $5f3f: $80
    add b                                         ; $5f40: $80
    add b                                         ; $5f41: $80
    nop                                           ; $5f42: $00
    nop                                           ; $5f43: $00
    nop                                           ; $5f44: $00
    nop                                           ; $5f45: $00
    add b                                         ; $5f46: $80
    add b                                         ; $5f47: $80
    add b                                         ; $5f48: $80
    add b                                         ; $5f49: $80
    db $fc                                        ; $5f4a: $fc
    db $fc                                        ; $5f4b: $fc
    cp $fe                                        ; $5f4c: $fe $fe
    db $fc                                        ; $5f4e: $fc
    db $fc                                        ; $5f4f: $fc
    nop                                           ; $5f50: $00
    nop                                           ; $5f51: $00
    nop                                           ; $5f52: $00
    nop                                           ; $5f53: $00
    nop                                           ; $5f54: $00
    nop                                           ; $5f55: $00
    ld bc, $0201                                  ; $5f56: $01 $01 $02
    inc bc                                        ; $5f59: $03
    inc b                                         ; $5f5a: $04
    rlca                                          ; $5f5b: $07
    inc b                                         ; $5f5c: $04
    rlca                                          ; $5f5d: $07
    inc b                                         ; $5f5e: $04
    rlca                                          ; $5f5f: $07
    ld [bc], a                                    ; $5f60: $02
    inc bc                                        ; $5f61: $03
    inc bc                                        ; $5f62: $03
    inc bc                                        ; $5f63: $03
    rlca                                          ; $5f64: $07
    inc b                                         ; $5f65: $04
    rlca                                          ; $5f66: $07
    dec b                                         ; $5f67: $05
    inc bc                                        ; $5f68: $03
    ld [bc], a                                    ; $5f69: $02
    rlca                                          ; $5f6a: $07
    dec b                                         ; $5f6b: $05
    dec bc                                        ; $5f6c: $0b
    ld c, $11                                     ; $5f6d: $0e $11
    rra                                           ; $5f6f: $1f
    jr nz, jr_014_5fb1                            ; $5f70: $20 $3f

    ld [hl+], a                                   ; $5f72: $22
    ccf                                           ; $5f73: $3f
    inc hl                                        ; $5f74: $23
    ccf                                           ; $5f75: $3f
    ld a, e                                       ; $5f76: $7b
    ld e, [hl]                                    ; $5f77: $5e
    ld a, a                                       ; $5f78: $7f
    ld b, [hl]                                    ; $5f79: $46
    ld a, a                                       ; $5f7a: $7f
    ld d, c                                       ; $5f7b: $51
    ccf                                           ; $5f7c: $3f
    jr z, @+$41                                   ; $5f7d: $28 $3f

    jr z, jr_014_5fc0                             ; $5f7f: $28 $3f

    inc l                                         ; $5f81: $2c
    ccf                                           ; $5f82: $3f
    jr z, jr_014_5fc4                             ; $5f83: $28 $3f

    jr nc, jr_014_5fc6                            ; $5f85: $30 $3f

    ccf                                           ; $5f87: $3f
    ld a, [hl+]                                   ; $5f88: $2a
    dec a                                         ; $5f89: $3d
    ld a, [hl]                                    ; $5f8a: $7e
    ld a, a                                       ; $5f8b: $7f
    rst $38                                       ; $5f8c: $ff
    rst $38                                       ; $5f8d: $ff
    ld a, a                                       ; $5f8e: $7f
    ld a, a                                       ; $5f8f: $7f
    nop                                           ; $5f90: $00
    nop                                           ; $5f91: $00
    nop                                           ; $5f92: $00
    nop                                           ; $5f93: $00
    nop                                           ; $5f94: $00
    nop                                           ; $5f95: $00
    ldh a, [$f0]                                  ; $5f96: $f0 $f0
    inc c                                         ; $5f98: $0c
    db $fc                                        ; $5f99: $fc
    ld [hl-], a                                   ; $5f9a: $32
    cp $7a                                        ; $5f9b: $fe $7a
    adc $7c                                       ; $5f9d: $ce $7c
    call nz, $8cfc                                ; $5f9f: $c4 $fc $8c
    db $fc                                        ; $5fa2: $fc
    db $fc                                        ; $5fa3: $fc
    db $fc                                        ; $5fa4: $fc
    sub h                                         ; $5fa5: $94
    cp $0a                                        ; $5fa6: $fe $0a
    cp $02                                        ; $5fa8: $fe $02
    db $fc                                        ; $5faa: $fc
    inc c                                         ; $5fab: $0c
    ldh a, [$90]                                  ; $5fac: $f0 $90
    ldh [$e0], a                                  ; $5fae: $e0 $e0
    ld b, b                                       ; $5fb0: $40

jr_014_5fb1:
    ret nz                                        ; $5fb1: $c0

    ld h, b                                       ; $5fb2: $60
    ldh [$f0], a                                  ; $5fb3: $e0 $f0
    ret nc                                        ; $5fb5: $d0

    ld hl, sp+$48                                 ; $5fb6: $f8 $48
    db $f4                                        ; $5fb8: $f4
    inc a                                         ; $5fb9: $3c
    db $fc                                        ; $5fba: $fc
    inc c                                         ; $5fbb: $0c
    db $fc                                        ; $5fbc: $fc
    call nz, Call_014_64fc                        ; $5fbd: $c4 $fc $64

jr_014_5fc0:
    sbc $56                                       ; $5fc0: $de $56
    adc e                                         ; $5fc2: $8b
    adc e                                         ; $5fc3: $8b

jr_014_5fc4:
    add c                                         ; $5fc4: $81
    add c                                         ; $5fc5: $81

jr_014_5fc6:
    ld b, b                                       ; $5fc6: $40
    ret nz                                        ; $5fc7: $c0

    ret nz                                        ; $5fc8: $c0

    ret nz                                        ; $5fc9: $c0

    ld a, h                                       ; $5fca: $7c
    db $fc                                        ; $5fcb: $fc
    rst $38                                       ; $5fcc: $ff
    rst $38                                       ; $5fcd: $ff
    db $fc                                        ; $5fce: $fc
    db $fc                                        ; $5fcf: $fc
    nop                                           ; $5fd0: $00
    nop                                           ; $5fd1: $00
    nop                                           ; $5fd2: $00
    nop                                           ; $5fd3: $00
    nop                                           ; $5fd4: $00
    nop                                           ; $5fd5: $00
    nop                                           ; $5fd6: $00
    nop                                           ; $5fd7: $00
    nop                                           ; $5fd8: $00
    nop                                           ; $5fd9: $00
    nop                                           ; $5fda: $00
    nop                                           ; $5fdb: $00
    nop                                           ; $5fdc: $00
    nop                                           ; $5fdd: $00
    nop                                           ; $5fde: $00
    nop                                           ; $5fdf: $00
    nop                                           ; $5fe0: $00
    nop                                           ; $5fe1: $00
    nop                                           ; $5fe2: $00
    nop                                           ; $5fe3: $00
    add b                                         ; $5fe4: $80
    add b                                         ; $5fe5: $80
    adc $ce                                       ; $5fe6: $ce $ce
    ld [hl], l                                    ; $5fe8: $75
    ld a, e                                       ; $5fe9: $7b
    ccf                                           ; $5fea: $3f
    ccf                                           ; $5feb: $3f
    cp $fe                                        ; $5fec: $fe $fe
    nop                                           ; $5fee: $00
    nop                                           ; $5fef: $00
    nop                                           ; $5ff0: $00
    nop                                           ; $5ff1: $00
    nop                                           ; $5ff2: $00
    nop                                           ; $5ff3: $00
    nop                                           ; $5ff4: $00
    nop                                           ; $5ff5: $00
    ld bc, $0201                                  ; $5ff6: $01 $01 $02
    inc bc                                        ; $5ff9: $03
    inc b                                         ; $5ffa: $04
    rlca                                          ; $5ffb: $07
    inc b                                         ; $5ffc: $04
    rlca                                          ; $5ffd: $07
    inc b                                         ; $5ffe: $04
    rlca                                          ; $5fff: $07
    inc b                                         ; $6000: $04
    rlca                                          ; $6001: $07
    ld [bc], a                                    ; $6002: $02
    inc bc                                        ; $6003: $03
    rlca                                          ; $6004: $07
    dec b                                         ; $6005: $05
    rlca                                          ; $6006: $07
    dec b                                         ; $6007: $05
    inc bc                                        ; $6008: $03
    inc bc                                        ; $6009: $03
    rlca                                          ; $600a: $07
    ld b, $09                                     ; $600b: $06 $09
    rrca                                          ; $600d: $0f
    db $10                                        ; $600e: $10
    rra                                           ; $600f: $1f
    db $10                                        ; $6010: $10
    rra                                           ; $6011: $1f
    jr nz, jr_014_6053                            ; $6012: $20 $3f

    jr nz, jr_014_6055                            ; $6014: $20 $3f

    ld a, b                                       ; $6016: $78
    ld e, a                                       ; $6017: $5f
    ld a, a                                       ; $6018: $7f
    ld b, a                                       ; $6019: $47
    ld a, a                                       ; $601a: $7f
    ld d, b                                       ; $601b: $50
    ccf                                           ; $601c: $3f
    jr z, jr_014_605e                             ; $601d: $28 $3f

    inc l                                         ; $601f: $2c
    ccf                                           ; $6020: $3f
    jr z, jr_014_6062                             ; $6021: $28 $3f

    jr z, jr_014_6064                             ; $6023: $28 $3f

    jr nc, jr_014_6066                            ; $6025: $30 $3f

    ccf                                           ; $6027: $3f
    ld a, [hl+]                                   ; $6028: $2a
    dec a                                         ; $6029: $3d
    ld a, [hl]                                    ; $602a: $7e
    ld a, a                                       ; $602b: $7f
    rst $38                                       ; $602c: $ff
    rst $38                                       ; $602d: $ff
    ld a, a                                       ; $602e: $7f
    ld a, a                                       ; $602f: $7f
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00

jr_014_6032:
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    ldh [$e0], a                                  ; $6036: $e0 $e0
    jr jr_014_6032                                ; $6038: $18 $f8

    inc b                                         ; $603a: $04
    db $fc                                        ; $603b: $fc
    ld [bc], a                                    ; $603c: $02
    cp $1a                                        ; $603d: $fe $1a
    cp $3c                                        ; $603f: $fe $3c
    db $e4                                        ; $6041: $e4
    ld a, $e6                                     ; $6042: $3e $e6
    ld a, $fe                                     ; $6044: $3e $fe
    db $fc                                        ; $6046: $fc
    call nc, Call_014_54fc                        ; $6047: $d4 $fc $54
    ld hl, sp-$58                                 ; $604a: $f8 $a8
    ldh a, [$50]                                  ; $604c: $f0 $50
    ldh [$e0], a                                  ; $604e: $e0 $e0
    db $10                                        ; $6050: $10
    ldh a, [rNR10]                                ; $6051: $f0 $10

jr_014_6053:
    ldh a, [$b0]                                  ; $6053: $f0 $b0

jr_014_6055:
    ldh a, [$f6]                                  ; $6055: $f0 $f6
    sub $fd                                       ; $6057: $d6 $fd
    adc e                                         ; $6059: $8b
    rst $38                                       ; $605a: $ff
    rst $08                                       ; $605b: $cf
    cp $7e                                        ; $605c: $fe $7e

jr_014_605e:
    ret nz                                        ; $605e: $c0

    ld b, b                                       ; $605f: $40
    ret nz                                        ; $6060: $c0

    ld b, b                                       ; $6061: $40

jr_014_6062:
    add b                                         ; $6062: $80
    add b                                         ; $6063: $80

jr_014_6064:
    add b                                         ; $6064: $80
    add b                                         ; $6065: $80

jr_014_6066:
    ld b, b                                       ; $6066: $40
    ret nz                                        ; $6067: $c0

    ret nz                                        ; $6068: $c0

    ret nz                                        ; $6069: $c0

    ld a, h                                       ; $606a: $7c
    db $fc                                        ; $606b: $fc
    cp $fe                                        ; $606c: $fe $fe
    db $fc                                        ; $606e: $fc
    db $fc                                        ; $606f: $fc
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    nop                                           ; $6073: $00
    ld b, $06                                     ; $6074: $06 $06
    ld c, $0e                                     ; $6076: $0e $0e
    ld c, $0a                                     ; $6078: $0e $0a
    ld a, [bc]                                    ; $607a: $0a
    ld c, $06                                     ; $607b: $0e $06
    ld b, $03                                     ; $607d: $06 $03
    inc bc                                        ; $607f: $03
    ld bc, $0001                                  ; $6080: $01 $01 $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    nop                                           ; $608a: $00
    nop                                           ; $608b: $00
    nop                                           ; $608c: $00
    nop                                           ; $608d: $00
    nop                                           ; $608e: $00
    nop                                           ; $608f: $00
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    nop                                           ; $6096: $00
    nop                                           ; $6097: $00
    nop                                           ; $6098: $00
    nop                                           ; $6099: $00
    ld bc, $0101                                  ; $609a: $01 $01 $01
    ld bc, $0101                                  ; $609d: $01 $01 $01
    add c                                         ; $60a0: $81
    add c                                         ; $60a1: $81
    jp Jump_014_63c2                              ; $60a2: $c3 $c2 $63


    ld h, d                                       ; $60a5: $62
    inc sp                                        ; $60a6: $33
    inc sp                                        ; $60a7: $33
    ccf                                           ; $60a8: $3f
    ld l, $19                                     ; $60a9: $2e $19
    rra                                           ; $60ab: $1f
    db $10                                        ; $60ac: $10
    rra                                           ; $60ad: $1f
    db $10                                        ; $60ae: $10
    rra                                           ; $60af: $1f
    db $10                                        ; $60b0: $10
    rra                                           ; $60b1: $1f
    jr nz, jr_014_60f3                            ; $60b2: $20 $3f

    jr nc, jr_014_60f5                            ; $60b4: $30 $3f

    ld a, h                                       ; $60b6: $7c
    ld c, a                                       ; $60b7: $4f
    ld a, a                                       ; $60b8: $7f
    ld b, e                                       ; $60b9: $43
    ld a, a                                       ; $60ba: $7f
    ld c, b                                       ; $60bb: $48
    ccf                                           ; $60bc: $3f
    jr z, jr_014_60fe                             ; $60bd: $28 $3f

    ld h, $3f                                     ; $60bf: $26 $3f
    inc h                                         ; $60c1: $24
    ccf                                           ; $60c2: $3f
    jr z, jr_014_6104                             ; $60c3: $28 $3f

    ld l, $7b                                     ; $60c5: $2e $7b
    ld e, l                                       ; $60c7: $5d
    ld l, [hl]                                    ; $60c8: $6e
    ld a, a                                       ; $60c9: $7f
    ld a, a                                       ; $60ca: $7f
    ld a, a                                       ; $60cb: $7f
    rst $38                                       ; $60cc: $ff
    rst $38                                       ; $60cd: $ff
    ld a, a                                       ; $60ce: $7f
    ld a, a                                       ; $60cf: $7f
    nop                                           ; $60d0: $00
    nop                                           ; $60d1: $00
    nop                                           ; $60d2: $00
    nop                                           ; $60d3: $00
    nop                                           ; $60d4: $00
    nop                                           ; $60d5: $00
    jr c, jr_014_6110                             ; $60d6: $38 $38

    call nz, $02fc                                ; $60d8: $c4 $fc $02
    cp $01                                        ; $60db: $fe $01
    rst $38                                       ; $60dd: $ff
    ld bc, $01ff                                  ; $60de: $01 $ff $01
    rst $38                                       ; $60e1: $ff
    add c                                         ; $60e2: $81
    rst $38                                       ; $60e3: $ff
    adc [hl]                                      ; $60e4: $8e
    cp $fe                                        ; $60e5: $fe $fe
    ld [hl], d                                    ; $60e7: $72
    db $fc                                        ; $60e8: $fc
    sub h                                         ; $60e9: $94
    ld hl, sp+$58                                 ; $60ea: $f8 $58
    ldh a, [$f0]                                  ; $60ec: $f0 $f0
    db $10                                        ; $60ee: $10
    ldh a, [rNR10]                                ; $60ef: $f0 $10
    ldh a, [rNR41]                                ; $60f1: $f0 $20

jr_014_60f3:
    ldh [rLCDC], a                                ; $60f3: $e0 $40

jr_014_60f5:
    ret nz                                        ; $60f5: $c0

    add b                                         ; $60f6: $80
    add b                                         ; $60f7: $80
    add b                                         ; $60f8: $80
    add b                                         ; $60f9: $80
    add b                                         ; $60fa: $80
    add b                                         ; $60fb: $80
    add b                                         ; $60fc: $80
    add b                                         ; $60fd: $80

jr_014_60fe:
    ret nz                                        ; $60fe: $c0

    ld b, b                                       ; $60ff: $40
    ret nz                                        ; $6100: $c0

    ld b, b                                       ; $6101: $40
    add b                                         ; $6102: $80
    add b                                         ; $6103: $80

jr_014_6104:
    add b                                         ; $6104: $80
    add b                                         ; $6105: $80
    add b                                         ; $6106: $80
    add b                                         ; $6107: $80
    ret nz                                        ; $6108: $c0

    ret nz                                        ; $6109: $c0

    ld a, h                                       ; $610a: $7c
    db $fc                                        ; $610b: $fc
    cp $fe                                        ; $610c: $fe $fe
    db $fc                                        ; $610e: $fc
    db $fc                                        ; $610f: $fc

jr_014_6110:
    nop                                           ; $6110: $00
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    nop                                           ; $6113: $00
    nop                                           ; $6114: $00
    nop                                           ; $6115: $00
    nop                                           ; $6116: $00
    nop                                           ; $6117: $00
    nop                                           ; $6118: $00
    nop                                           ; $6119: $00
    nop                                           ; $611a: $00
    nop                                           ; $611b: $00
    nop                                           ; $611c: $00
    nop                                           ; $611d: $00
    ld bc, $0101                                  ; $611e: $01 $01 $01
    ld bc, $0203                                  ; $6121: $01 $03 $02
    inc bc                                        ; $6124: $03
    ld [bc], a                                    ; $6125: $02
    ld bc, $0001                                  ; $6126: $01 $01 $00
    nop                                           ; $6129: $00
    nop                                           ; $612a: $00
    nop                                           ; $612b: $00
    nop                                           ; $612c: $00
    nop                                           ; $612d: $00
    nop                                           ; $612e: $00
    nop                                           ; $612f: $00
    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    nop                                           ; $6132: $00
    nop                                           ; $6133: $00
    ld bc, $3201                                  ; $6134: $01 $01 $32
    inc sp                                        ; $6137: $33
    ld c, h                                       ; $6138: $4c
    ld a, a                                       ; $6139: $7f
    adc h                                         ; $613a: $8c
    rst $38                                       ; $613b: $ff
    sbc $f3                                       ; $613c: $de $f3
    cp $77                                        ; $613e: $fe $77
    xor $2f                                       ; $6140: $ee $2f
    rst $38                                       ; $6142: $ff
    ld [hl], a                                    ; $6143: $77
    rst $38                                       ; $6144: $ff
    dec e                                         ; $6145: $1d
    rst $28                                       ; $6146: $ef
    ccf                                           ; $6147: $3f
    rst $00                                       ; $6148: $c7
    db $fc                                        ; $6149: $fc
    ld b, e                                       ; $614a: $43
    ld a, a                                       ; $614b: $7f
    jr nc, @+$41                                  ; $614c: $30 $3f

    jr nz, @+$41                                  ; $614e: $20 $3f

    jr nz, jr_014_6191                            ; $6150: $20 $3f

    jr nz, @+$41                                  ; $6152: $20 $3f

    jr nc, jr_014_6195                            ; $6154: $30 $3f

    ld a, a                                       ; $6156: $7f
    ld c, a                                       ; $6157: $4f
    ld a, a                                       ; $6158: $7f
    ld b, b                                       ; $6159: $40
    ld a, a                                       ; $615a: $7f
    ld b, b                                       ; $615b: $40
    ccf                                           ; $615c: $3f
    ld l, $3f                                     ; $615d: $2e $3f
    inc h                                         ; $615f: $24
    ccf                                           ; $6160: $3f
    inc h                                         ; $6161: $24
    ccf                                           ; $6162: $3f
    inc h                                         ; $6163: $24
    ccf                                           ; $6164: $3f
    dec hl                                        ; $6165: $2b
    ld a, l                                       ; $6166: $7d
    ld e, [hl]                                    ; $6167: $5e

jr_014_6168:
    ld l, l                                       ; $6168: $6d
    ld a, a                                       ; $6169: $7f
    ld a, a                                       ; $616a: $7f
    ld a, a                                       ; $616b: $7f
    rst $38                                       ; $616c: $ff
    rst $38                                       ; $616d: $ff
    ld a, a                                       ; $616e: $7f
    ld a, a                                       ; $616f: $7f
    nop                                           ; $6170: $00
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    nop                                           ; $6173: $00
    ret nz                                        ; $6174: $c0

    ret nz                                        ; $6175: $c0

    jr nc, jr_014_6168                            ; $6176: $30 $f0

    ld [$08f8], sp                                ; $6178: $08 $f8 $08
    ld hl, sp+$08                                 ; $617b: $f8 $08
    ld hl, sp+$08                                 ; $617d: $f8 $08
    ld hl, sp+$18                                 ; $617f: $f8 $18
    ld hl, sp+$38                                 ; $6181: $f8 $38
    add sp, -$10                                  ; $6183: $e8 $f0
    ret nc                                        ; $6185: $d0

    ldh [$e0], a                                  ; $6186: $e0 $e0

jr_014_6188:
    ret nz                                        ; $6188: $c0

    ret nz                                        ; $6189: $c0

    ldh [$e0], a                                  ; $618a: $e0 $e0
    jr nc, @-$0e                                  ; $618c: $30 $f0

    jr c, jr_014_6188                             ; $618e: $38 $f8

    ld e, h                                       ; $6190: $5c

jr_014_6191:
    call nc, $de56                                ; $6191: $d4 $56 $de
    sbc [hl]                                      ; $6194: $9e

jr_014_6195:
    sbc [hl]                                      ; $6195: $9e
    adc h                                         ; $6196: $8c
    adc h                                         ; $6197: $8c
    add b                                         ; $6198: $80
    add b                                         ; $6199: $80
    add b                                         ; $619a: $80
    add b                                         ; $619b: $80
    ret nz                                        ; $619c: $c0

    ld b, b                                       ; $619d: $40
    ret nz                                        ; $619e: $c0

    ld b, b                                       ; $619f: $40
    ret nz                                        ; $61a0: $c0

    ld b, b                                       ; $61a1: $40
    ret nz                                        ; $61a2: $c0

    ret nz                                        ; $61a3: $c0

    ret nz                                        ; $61a4: $c0

    ld b, b                                       ; $61a5: $40
    ret nz                                        ; $61a6: $c0

    ret nz                                        ; $61a7: $c0

    ld b, b                                       ; $61a8: $40
    ret nz                                        ; $61a9: $c0

    cp h                                          ; $61aa: $bc
    db $fc                                        ; $61ab: $fc
    cp $fe                                        ; $61ac: $fe $fe
    db $fc                                        ; $61ae: $fc
    db $fc                                        ; $61af: $fc
    nop                                           ; $61b0: $00
    nop                                           ; $61b1: $00
    nop                                           ; $61b2: $00
    nop                                           ; $61b3: $00
    ld bc, $0201                                  ; $61b4: $01 $01 $02
    inc bc                                        ; $61b7: $03
    inc b                                         ; $61b8: $04
    rlca                                          ; $61b9: $07
    inc b                                         ; $61ba: $04
    rlca                                          ; $61bb: $07
    inc b                                         ; $61bc: $04
    rlca                                          ; $61bd: $07
    ld [bc], a                                    ; $61be: $02
    inc bc                                        ; $61bf: $03
    inc bc                                        ; $61c0: $03
    inc bc                                        ; $61c1: $03

Jump_014_61c2:
    rlca                                          ; $61c2: $07
    inc b                                         ; $61c3: $04
    rlca                                          ; $61c4: $07
    dec b                                         ; $61c5: $05
    inc bc                                        ; $61c6: $03
    ld [bc], a                                    ; $61c7: $02
    inc bc                                        ; $61c8: $03
    inc bc                                        ; $61c9: $03
    rlca                                          ; $61ca: $07
    ld b, $09                                     ; $61cb: $06 $09
    rrca                                          ; $61cd: $0f
    ld [de], a                                    ; $61ce: $12
    rra                                           ; $61cf: $1f
    ld [hl+], a                                   ; $61d0: $22
    ccf                                           ; $61d1: $3f
    ld [hl+], a                                   ; $61d2: $22
    ccf                                           ; $61d3: $3f
    ld sp, $7d3f                                  ; $61d4: $31 $3f $7d
    ld c, a                                       ; $61d7: $4f
    ld a, a                                       ; $61d8: $7f
    ld b, e                                       ; $61d9: $43
    ld a, [hl]                                    ; $61da: $7e
    ld b, [hl]                                    ; $61db: $46
    ld a, $22                                     ; $61dc: $3e $22
    ld a, $22                                     ; $61de: $3e $22
    ld a, $22                                     ; $61e0: $3e $22
    ld a, [hl]                                    ; $61e2: $7e
    ld b, [hl]                                    ; $61e3: $46
    ld a, a                                       ; $61e4: $7f
    ld b, e                                       ; $61e5: $43
    ld a, [hl]                                    ; $61e6: $7e
    ld h, a                                       ; $61e7: $67
    ld a, e                                       ; $61e8: $7b
    ld e, l                                       ; $61e9: $5d
    ld l, b                                       ; $61ea: $68
    ld a, a                                       ; $61eb: $7f
    rst $38                                       ; $61ec: $ff
    rst $38                                       ; $61ed: $ff
    ld a, a                                       ; $61ee: $7f
    ld a, a                                       ; $61ef: $7f
    nop                                           ; $61f0: $00
    nop                                           ; $61f1: $00
    nop                                           ; $61f2: $00
    nop                                           ; $61f3: $00

jr_014_61f4:
    ldh a, [$f0]                                  ; $61f4: $f0 $f0
    inc c                                         ; $61f6: $0c
    db $fc                                        ; $61f7: $fc
    ld [hl-], a                                   ; $61f8: $32
    cp $7a                                        ; $61f9: $fe $7a
    adc $fc                                       ; $61fb: $ce $fc
    add h                                         ; $61fd: $84
    db $fc                                        ; $61fe: $fc
    adc h                                         ; $61ff: $8c
    db $fc                                        ; $6200: $fc
    db $fc                                        ; $6201: $fc
    db $fc                                        ; $6202: $fc
    sub h                                         ; $6203: $94
    cp $0a                                        ; $6204: $fe $0a
    cp $02                                        ; $6206: $fe $02
    db $fc                                        ; $6208: $fc
    inc c                                         ; $6209: $0c
    ldh a, [$90]                                  ; $620a: $f0 $90
    ldh [$e0], a                                  ; $620c: $e0 $e0
    ld b, b                                       ; $620e: $40
    ret nz                                        ; $620f: $c0

    ld b, b                                       ; $6210: $40
    ret nz                                        ; $6211: $c0

    jr nz, jr_014_61f4                            ; $6212: $20 $e0

    ldh [$e0], a                                  ; $6214: $e0 $e0
    ldh [rNR41], a                                ; $6216: $e0 $20
    ldh a, [rNR10]                                ; $6218: $f0 $10
    ldh a, [$90]                                  ; $621a: $f0 $90
    ld hl, sp-$78                                 ; $621c: $f8 $88
    ld a, b                                       ; $621e: $78
    ld l, b                                       ; $621f: $68
    inc e                                         ; $6220: $1c
    inc e                                         ; $6221: $1c
    ld b, $06                                     ; $6222: $06 $06
    inc bc                                        ; $6224: $03
    inc bc                                        ; $6225: $03
    add c                                         ; $6226: $81
    add c                                         ; $6227: $81
    add b                                         ; $6228: $80
    add b                                         ; $6229: $80
    db $fc                                        ; $622a: $fc
    db $fc                                        ; $622b: $fc
    rst $38                                       ; $622c: $ff
    rst $38                                       ; $622d: $ff
    db $fc                                        ; $622e: $fc
    db $fc                                        ; $622f: $fc
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00
    nop                                           ; $6232: $00
    nop                                           ; $6233: $00
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    nop                                           ; $623a: $00
    nop                                           ; $623b: $00
    nop                                           ; $623c: $00
    nop                                           ; $623d: $00
    nop                                           ; $623e: $00
    nop                                           ; $623f: $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    nop                                           ; $6244: $00
    nop                                           ; $6245: $00
    call z, $b6cc                                 ; $6246: $cc $cc $b6
    ld a, [$7e62]                                 ; $6249: $fa $62 $7e
    db $fc                                        ; $624c: $fc
    db $fc                                        ; $624d: $fc
    nop                                           ; $624e: $00
    nop                                           ; $624f: $00
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    nop                                           ; $6253: $00
    nop                                           ; $6254: $00
    nop                                           ; $6255: $00
    ld bc, $0201                                  ; $6256: $01 $01 $02
    inc bc                                        ; $6259: $03
    inc b                                         ; $625a: $04
    rlca                                          ; $625b: $07
    inc b                                         ; $625c: $04
    rlca                                          ; $625d: $07
    inc b                                         ; $625e: $04
    rlca                                          ; $625f: $07
    ld [bc], a                                    ; $6260: $02
    inc bc                                        ; $6261: $03
    inc bc                                        ; $6262: $03
    inc bc                                        ; $6263: $03
    rlca                                          ; $6264: $07
    inc b                                         ; $6265: $04
    rlca                                          ; $6266: $07
    dec b                                         ; $6267: $05
    inc bc                                        ; $6268: $03
    ld [bc], a                                    ; $6269: $02
    rlca                                          ; $626a: $07
    dec b                                         ; $626b: $05
    dec bc                                        ; $626c: $0b
    ld c, $11                                     ; $626d: $0e $11
    rra                                           ; $626f: $1f
    jr nz, jr_014_62b1                            ; $6270: $20 $3f

    ld [hl+], a                                   ; $6272: $22
    ccf                                           ; $6273: $3f
    inc hl                                        ; $6274: $23
    ccf                                           ; $6275: $3f
    ld a, e                                       ; $6276: $7b
    ld e, [hl]                                    ; $6277: $5e
    ld a, a                                       ; $6278: $7f
    ld b, [hl]                                    ; $6279: $46
    ld a, a                                       ; $627a: $7f
    ld d, c                                       ; $627b: $51
    ccf                                           ; $627c: $3f
    jr z, @+$41                                   ; $627d: $28 $3f

    inc h                                         ; $627f: $24
    ccf                                           ; $6280: $3f
    jr z, @+$41                                   ; $6281: $28 $3f

    jr z, jr_014_62c4                             ; $6283: $28 $3f

    jr nc, jr_014_62c6                            ; $6285: $30 $3f

    ccf                                           ; $6287: $3f
    ld a, [hl+]                                   ; $6288: $2a
    dec a                                         ; $6289: $3d
    ld a, [hl]                                    ; $628a: $7e
    ld a, a                                       ; $628b: $7f
    rst $38                                       ; $628c: $ff
    rst $38                                       ; $628d: $ff
    ld a, a                                       ; $628e: $7f
    ld a, a                                       ; $628f: $7f
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    ldh a, [$f0]                                  ; $6296: $f0 $f0
    inc c                                         ; $6298: $0c
    db $fc                                        ; $6299: $fc
    ld [hl-], a                                   ; $629a: $32
    cp $7a                                        ; $629b: $fe $7a
    adc $7c                                       ; $629d: $ce $7c
    call nz, $8cfc                                ; $629f: $c4 $fc $8c
    db $fc                                        ; $62a2: $fc
    db $fc                                        ; $62a3: $fc
    db $fc                                        ; $62a4: $fc
    sub h                                         ; $62a5: $94
    cp $0a                                        ; $62a6: $fe $0a
    cp $02                                        ; $62a8: $fe $02
    db $fc                                        ; $62aa: $fc
    inc c                                         ; $62ab: $0c
    ldh a, [$90]                                  ; $62ac: $f0 $90
    ldh [$e0], a                                  ; $62ae: $e0 $e0
    ld b, b                                       ; $62b0: $40

jr_014_62b1:
    ret nz                                        ; $62b1: $c0

    ld h, b                                       ; $62b2: $60
    ldh [$f0], a                                  ; $62b3: $e0 $f0
    ret nc                                        ; $62b5: $d0

    ld hl, sp+$48                                 ; $62b6: $f8 $48
    db $f4                                        ; $62b8: $f4
    inc a                                         ; $62b9: $3c
    db $fc                                        ; $62ba: $fc
    inc c                                         ; $62bb: $0c
    db $fc                                        ; $62bc: $fc
    call nz, Call_014_64fc                        ; $62bd: $c4 $fc $64
    call c, $8e54                                 ; $62c0: $dc $54 $8e
    adc [hl]                                      ; $62c3: $8e

jr_014_62c4:
    add e                                         ; $62c4: $83
    add e                                         ; $62c5: $83

jr_014_62c6:
    ld b, c                                       ; $62c6: $41
    pop bc                                        ; $62c7: $c1
    ret nz                                        ; $62c8: $c0

    ret nz                                        ; $62c9: $c0

    ld a, h                                       ; $62ca: $7c
    db $fc                                        ; $62cb: $fc
    rst $38                                       ; $62cc: $ff
    rst $38                                       ; $62cd: $ff
    db $fc                                        ; $62ce: $fc
    db $fc                                        ; $62cf: $fc
    nop                                           ; $62d0: $00
    nop                                           ; $62d1: $00
    nop                                           ; $62d2: $00
    nop                                           ; $62d3: $00
    nop                                           ; $62d4: $00
    nop                                           ; $62d5: $00
    nop                                           ; $62d6: $00
    nop                                           ; $62d7: $00
    nop                                           ; $62d8: $00
    nop                                           ; $62d9: $00
    nop                                           ; $62da: $00
    nop                                           ; $62db: $00
    nop                                           ; $62dc: $00
    nop                                           ; $62dd: $00
    nop                                           ; $62de: $00
    nop                                           ; $62df: $00
    nop                                           ; $62e0: $00
    nop                                           ; $62e1: $00
    nop                                           ; $62e2: $00
    nop                                           ; $62e3: $00
    nop                                           ; $62e4: $00
    nop                                           ; $62e5: $00
    call z, $b6cc                                 ; $62e6: $cc $cc $b6
    ld a, [$7e62]                                 ; $62e9: $fa $62 $7e
    db $fc                                        ; $62ec: $fc
    db $fc                                        ; $62ed: $fc
    nop                                           ; $62ee: $00
    nop                                           ; $62ef: $00
    db $10                                        ; $62f0: $10
    ld h, e                                       ; $62f1: $63
    ret nc                                        ; $62f2: $d0

    ld h, e                                       ; $62f3: $63
    ld [hl], b                                    ; $62f4: $70
    ld h, h                                       ; $62f5: $64
    db $10                                        ; $62f6: $10
    ld h, l                                       ; $62f7: $65
    or b                                          ; $62f8: $b0
    ld h, l                                       ; $62f9: $65
    ld [hl], b                                    ; $62fa: $70
    ld h, [hl]                                    ; $62fb: $66
    jr nc, jr_014_6365                            ; $62fc: $30 $67

    ldh a, [$67]                                  ; $62fe: $f0 $67
    or b                                          ; $6300: $b0
    ld l, b                                       ; $6301: $68
    ld d, b                                       ; $6302: $50
    ld l, c                                       ; $6303: $69
    db $10                                        ; $6304: $10
    ld l, d                                       ; $6305: $6a
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    nop                                           ; $6308: $00
    nop                                           ; $6309: $00
    nop                                           ; $630a: $00
    nop                                           ; $630b: $00
    nop                                           ; $630c: $00
    nop                                           ; $630d: $00
    nop                                           ; $630e: $00
    nop                                           ; $630f: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    ld bc, $0101                                  ; $631a: $01 $01 $01
    ld bc, $0101                                  ; $631d: $01 $01 $01
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    nop                                           ; $6324: $00
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    nop                                           ; $6327: $00
    nop                                           ; $6328: $00
    nop                                           ; $6329: $00
    nop                                           ; $632a: $00
    nop                                           ; $632b: $00
    ld bc, $0201                                  ; $632c: $01 $01 $02
    inc bc                                        ; $632f: $03
    ld [bc], a                                    ; $6330: $02
    inc bc                                        ; $6331: $03
    rlca                                          ; $6332: $07
    rlca                                          ; $6333: $07
    rrca                                          ; $6334: $0f
    rrca                                          ; $6335: $0f
    rla                                           ; $6336: $17
    rra                                           ; $6337: $1f
    ld de, $0c1f                                  ; $6338: $11 $1f $0c
    rrca                                          ; $633b: $0f
    inc bc                                        ; $633c: $03
    inc bc                                        ; $633d: $03
    inc bc                                        ; $633e: $03
    ld [bc], a                                    ; $633f: $02
    inc bc                                        ; $6340: $03
    ld [bc], a                                    ; $6341: $02
    rlca                                          ; $6342: $07
    inc b                                         ; $6343: $04
    rlca                                          ; $6344: $07
    inc b                                         ; $6345: $04
    rlca                                          ; $6346: $07
    rlca                                          ; $6347: $07
    rlca                                          ; $6348: $07
    inc b                                         ; $6349: $04
    rra                                           ; $634a: $1f
    rra                                           ; $634b: $1f
    inc a                                         ; $634c: $3c
    ccf                                           ; $634d: $3f
    rra                                           ; $634e: $1f
    rra                                           ; $634f: $1f
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00
    inc e                                         ; $6354: $1c
    inc e                                         ; $6355: $1c
    ld h, e                                       ; $6356: $63
    ld a, a                                       ; $6357: $7f
    add b                                         ; $6358: $80
    rst $38                                       ; $6359: $ff
    jr @+$01                                      ; $635a: $18 $ff

    inc e                                         ; $635c: $1c
    rst $30                                       ; $635d: $f7
    rrca                                          ; $635e: $0f
    rst $38                                       ; $635f: $ff
    xor a                                         ; $6360: $af
    ld hl, sp-$01                                 ; $6361: $f8 $ff
    sub $7f                                       ; $6363: $d6 $7f

jr_014_6365:
    ld b, l                                       ; $6365: $45
    ld a, a                                       ; $6366: $7f
    ld h, c                                       ; $6367: $61
    ld a, a                                       ; $6368: $7f
    ld d, e                                       ; $6369: $53
    cp h                                          ; $636a: $bc
    db $ec                                        ; $636b: $ec
    ld [hl], b                                    ; $636c: $70
    ldh a, [$f0]                                  ; $636d: $f0 $f0
    sub b                                         ; $636f: $90
    ldh a, [$90]                                  ; $6370: $f0 $90
    ldh a, [$90]                                  ; $6372: $f0 $90
    ld hl, sp-$38                                 ; $6374: $f8 $c8
    ld hl, sp-$38                                 ; $6376: $f8 $c8
    db $fc                                        ; $6378: $fc
    db $e4                                        ; $6379: $e4
    ld a, h                                       ; $637a: $7c
    call nz, $f4fc                                ; $637b: $c4 $fc $f4
    adc $4e                                       ; $637e: $ce $4e

jr_014_6380:
    jp $8143                                      ; $6380: $c3 $43 $81


    add c                                         ; $6383: $81
    add b                                         ; $6384: $80
    add b                                         ; $6385: $80
    ldh [$e0], a                                  ; $6386: $e0 $e0
    ret nc                                        ; $6388: $d0

    ldh a, [$7c]                                  ; $6389: $f0 $7c
    cp h                                          ; $638b: $bc
    rra                                           ; $638c: $1f
    rst $38                                       ; $638d: $ff
    db $fc                                        ; $638e: $fc
    db $fc                                        ; $638f: $fc
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    nop                                           ; $6396: $00
    nop                                           ; $6397: $00
    add b                                         ; $6398: $80
    add b                                         ; $6399: $80
    ld b, b                                       ; $639a: $40
    ret nz                                        ; $639b: $c0

    ld b, b                                       ; $639c: $40
    ret nz                                        ; $639d: $c0

    jr nz, jr_014_6380                            ; $639e: $20 $e0

    and b                                         ; $63a0: $a0
    ldh [$a0], a                                  ; $63a1: $e0 $a0
    ldh [rNR41], a                                ; $63a3: $e0 $20
    ldh [rLCDC], a                                ; $63a5: $e0 $40
    ret nz                                        ; $63a7: $c0

    add b                                         ; $63a8: $80
    add b                                         ; $63a9: $80
    add b                                         ; $63aa: $80
    add b                                         ; $63ab: $80
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

Jump_014_63c2:
    add b                                         ; $63c2: $80
    add b                                         ; $63c3: $80
    ret nz                                        ; $63c4: $c0

    ret nz                                        ; $63c5: $c0

    ld l, [hl]                                    ; $63c6: $6e
    ld l, [hl]                                    ; $63c7: $6e
    dec [hl]                                      ; $63c8: $35
    dec sp                                        ; $63c9: $3b
    rra                                           ; $63ca: $1f
    rra                                           ; $63cb: $1f
    cp $fe                                        ; $63cc: $fe $fe
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
    ld bc, $0101                                  ; $63da: $01 $01 $01
    ld bc, $0101                                  ; $63dd: $01 $01 $01
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
    ld bc, $0301                                  ; $63ea: $01 $01 $03
    ld [bc], a                                    ; $63ed: $02
    inc bc                                        ; $63ee: $03
    ld [bc], a                                    ; $63ef: $02
    inc bc                                        ; $63f0: $03
    ld [bc], a                                    ; $63f1: $02
    rlca                                          ; $63f2: $07
    ld b, $09                                     ; $63f3: $06 $09
    rrca                                          ; $63f5: $0f
    ld de, $101f                                  ; $63f6: $11 $1f $10
    rra                                           ; $63f9: $1f
    ld c, $0f                                     ; $63fa: $0e $0f
    inc bc                                        ; $63fc: $03
    inc bc                                        ; $63fd: $03
    inc bc                                        ; $63fe: $03
    ld [bc], a                                    ; $63ff: $02
    inc bc                                        ; $6400: $03
    ld [bc], a                                    ; $6401: $02
    rlca                                          ; $6402: $07
    inc b                                         ; $6403: $04
    rlca                                          ; $6404: $07
    inc b                                         ; $6405: $04
    rlca                                          ; $6406: $07
    rlca                                          ; $6407: $07
    rlca                                          ; $6408: $07
    inc b                                         ; $6409: $04
    rra                                           ; $640a: $1f
    rra                                           ; $640b: $1f
    inc a                                         ; $640c: $3c
    ccf                                           ; $640d: $3f
    rra                                           ; $640e: $1f
    rra                                           ; $640f: $1f
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    inc e                                         ; $6414: $1c
    inc e                                         ; $6415: $1c
    ld h, e                                       ; $6416: $63
    ld a, a                                       ; $6417: $7f
    add b                                         ; $6418: $80
    rst $38                                       ; $6419: $ff
    jr @+$01                                      ; $641a: $18 $ff

    inc e                                         ; $641c: $1c
    rst $30                                       ; $641d: $f7
    rrca                                          ; $641e: $0f
    rst $38                                       ; $641f: $ff
    xor a                                         ; $6420: $af
    ld hl, sp-$01                                 ; $6421: $f8 $ff
    sub $7f                                       ; $6423: $d6 $7f
    ld b, l                                       ; $6425: $45
    ld a, a                                       ; $6426: $7f
    ld h, c                                       ; $6427: $61
    rst $38                                       ; $6428: $ff
    db $d3                                        ; $6429: $d3
    cp h                                          ; $642a: $bc
    db $ec                                        ; $642b: $ec
    ret c                                         ; $642c: $d8

    ld a, b                                       ; $642d: $78
    call c, $dc74                                 ; $642e: $dc $74 $dc
    ld [hl], h                                    ; $6431: $74
    call c, $fc74                                 ; $6432: $dc $74 $fc
    inc [hl]                                      ; $6435: $34
    db $fc                                        ; $6436: $fc
    inc a                                         ; $6437: $3c
    db $f4                                        ; $6438: $f4
    sbc h                                         ; $6439: $9c
    ld a, h                                       ; $643a: $7c
    call z, $dcfc                                 ; $643b: $cc $fc $dc
    cp $6e                                        ; $643e: $fe $6e

jr_014_6440:
    db $fd                                        ; $6440: $fd
    ld a, e                                       ; $6441: $7b
    rst $08                                       ; $6442: $cf
    rst $08                                       ; $6443: $cf
    add [hl]                                      ; $6444: $86
    add [hl]                                      ; $6445: $86
    ldh [$e0], a                                  ; $6446: $e0 $e0
    ret nc                                        ; $6448: $d0

    ldh a, [$7c]                                  ; $6449: $f0 $7c
    cp h                                          ; $644b: $bc
    ld e, $fe                                     ; $644c: $1e $fe
    db $fc                                        ; $644e: $fc
    db $fc                                        ; $644f: $fc
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    nop                                           ; $6452: $00
    nop                                           ; $6453: $00
    nop                                           ; $6454: $00
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    add b                                         ; $6458: $80
    add b                                         ; $6459: $80
    ld b, b                                       ; $645a: $40
    ret nz                                        ; $645b: $c0

    ld b, b                                       ; $645c: $40
    ret nz                                        ; $645d: $c0

    jr nz, jr_014_6440                            ; $645e: $20 $e0

    and b                                         ; $6460: $a0
    ldh [$a0], a                                  ; $6461: $e0 $a0
    ldh [rNR41], a                                ; $6463: $e0 $20
    ldh [rLCDC], a                                ; $6465: $e0 $40
    ret nz                                        ; $6467: $c0

    add b                                         ; $6468: $80
    add b                                         ; $6469: $80
    add b                                         ; $646a: $80
    add b                                         ; $646b: $80
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
    ld bc, $0101                                  ; $647a: $01 $01 $01
    ld bc, $0101                                  ; $647d: $01 $01 $01
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    ld [$1708], sp                                ; $6486: $08 $08 $17
    rra                                           ; $6489: $1f
    rra                                           ; $648a: $1f
    inc d                                         ; $648b: $14
    rla                                           ; $648c: $17
    dec e                                         ; $648d: $1d
    rra                                           ; $648e: $1f
    dec e                                         ; $648f: $1d
    rrca                                          ; $6490: $0f
    ld c, $07                                     ; $6491: $0e $07
    rlca                                          ; $6493: $07
    rrca                                          ; $6494: $0f
    ld c, $11                                     ; $6495: $0e $11
    rra                                           ; $6497: $1f
    ld [$060f], sp                                ; $6498: $08 $0f $06
    rlca                                          ; $649b: $07
    rlca                                          ; $649c: $07
    dec b                                         ; $649d: $05
    inc bc                                        ; $649e: $03
    ld [bc], a                                    ; $649f: $02
    inc bc                                        ; $64a0: $03
    ld [bc], a                                    ; $64a1: $02
    rlca                                          ; $64a2: $07
    inc b                                         ; $64a3: $04
    rlca                                          ; $64a4: $07
    inc b                                         ; $64a5: $04
    rlca                                          ; $64a6: $07
    rlca                                          ; $64a7: $07
    rlca                                          ; $64a8: $07
    inc b                                         ; $64a9: $04
    rra                                           ; $64aa: $1f
    rra                                           ; $64ab: $1f
    inc a                                         ; $64ac: $3c
    ccf                                           ; $64ad: $3f
    rra                                           ; $64ae: $1f
    rra                                           ; $64af: $1f
    nop                                           ; $64b0: $00
    nop                                           ; $64b1: $00
    nop                                           ; $64b2: $00
    nop                                           ; $64b3: $00
    inc e                                         ; $64b4: $1c
    inc e                                         ; $64b5: $1c
    ld h, e                                       ; $64b6: $63
    ld a, a                                       ; $64b7: $7f
    add b                                         ; $64b8: $80
    rst $38                                       ; $64b9: $ff
    jr @+$01                                      ; $64ba: $18 $ff

    inc e                                         ; $64bc: $1c
    rst $30                                       ; $64bd: $f7
    rrca                                          ; $64be: $0f
    rst $38                                       ; $64bf: $ff
    xor a                                         ; $64c0: $af
    ld hl, sp-$01                                 ; $64c1: $f8 $ff
    sub $7f                                       ; $64c3: $d6 $7f
    ld b, l                                       ; $64c5: $45

jr_014_64c6:
    ld a, a                                       ; $64c6: $7f
    ld h, c                                       ; $64c7: $61
    rst $38                                       ; $64c8: $ff
    db $d3                                        ; $64c9: $d3
    cp h                                          ; $64ca: $bc
    db $ec                                        ; $64cb: $ec
    jr jr_014_64c6                                ; $64cc: $18 $f8

    inc e                                         ; $64ce: $1c
    db $f4                                        ; $64cf: $f4
    cp h                                          ; $64d0: $bc
    db $e4                                        ; $64d1: $e4
    ld hl, sp+$78                                 ; $64d2: $f8 $78
    ret nc                                        ; $64d4: $d0

    ld [hl], b                                    ; $64d5: $70
    sub b                                         ; $64d6: $90
    ldh a, [rBCPS]                                ; $64d7: $f0 $68
    ld hl, sp+$10                                 ; $64d9: $f8 $10
    ldh a, [$f0]                                  ; $64db: $f0 $f0
    ldh a, [$f0]                                  ; $64dd: $f0 $f0
    ld d, b                                       ; $64df: $50

jr_014_64e0:
    ldh a, [$50]                                  ; $64e0: $f0 $50
    ldh [$a0], a                                  ; $64e2: $e0 $a0
    ret nz                                        ; $64e4: $c0

    ret nz                                        ; $64e5: $c0

    ldh [$e0], a                                  ; $64e6: $e0 $e0
    ret nc                                        ; $64e8: $d0

    ldh a, [$7c]                                  ; $64e9: $f0 $7c
    cp h                                          ; $64eb: $bc
    ld e, $fe                                     ; $64ec: $1e $fe
    db $fc                                        ; $64ee: $fc
    db $fc                                        ; $64ef: $fc
    nop                                           ; $64f0: $00
    nop                                           ; $64f1: $00
    nop                                           ; $64f2: $00
    nop                                           ; $64f3: $00
    nop                                           ; $64f4: $00
    nop                                           ; $64f5: $00
    nop                                           ; $64f6: $00
    nop                                           ; $64f7: $00
    add b                                         ; $64f8: $80
    add b                                         ; $64f9: $80
    ld b, b                                       ; $64fa: $40
    ret nz                                        ; $64fb: $c0

Call_014_64fc:
    ld b, b                                       ; $64fc: $40
    ret nz                                        ; $64fd: $c0

    jr nz, jr_014_64e0                            ; $64fe: $20 $e0

    and b                                         ; $6500: $a0
    ldh [$a0], a                                  ; $6501: $e0 $a0
    ldh [rNR41], a                                ; $6503: $e0 $20
    ldh [rLCDC], a                                ; $6505: $e0 $40
    ret nz                                        ; $6507: $c0

    add b                                         ; $6508: $80
    add b                                         ; $6509: $80
    add b                                         ; $650a: $80
    add b                                         ; $650b: $80
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
    ld bc, $0201                                  ; $6518: $01 $01 $02
    inc bc                                        ; $651b: $03
    ld b, d                                       ; $651c: $42
    ld b, e                                       ; $651d: $43
    and d                                         ; $651e: $a2
    db $e3                                        ; $651f: $e3
    pop hl                                        ; $6520: $e1
    and c                                         ; $6521: $a1
    and c                                         ; $6522: $a1
    pop hl                                        ; $6523: $e1
    ldh [$e0], a                                  ; $6524: $e0 $e0
    ld [hl], e                                    ; $6526: $73
    ld [hl], e                                    ; $6527: $73
    rra                                           ; $6528: $1f
    dec e                                         ; $6529: $1d
    rrca                                          ; $652a: $0f
    rrca                                          ; $652b: $0f
    rlca                                          ; $652c: $07
    ld b, $0f                                     ; $652d: $06 $0f
    add hl, bc                                    ; $652f: $09
    rrca                                          ; $6530: $0f
    add hl, bc                                    ; $6531: $09
    rlca                                          ; $6532: $07
    ld b, $0b                                     ; $6533: $06 $0b
    ld c, $11                                     ; $6535: $0e $11
    rra                                           ; $6537: $1f
    ld [$060f], sp                                ; $6538: $08 $0f $06
    rlca                                          ; $653b: $07
    rlca                                          ; $653c: $07
    dec b                                         ; $653d: $05
    inc bc                                        ; $653e: $03
    ld [bc], a                                    ; $653f: $02
    inc bc                                        ; $6540: $03
    ld [bc], a                                    ; $6541: $02
    rlca                                          ; $6542: $07
    inc b                                         ; $6543: $04
    rlca                                          ; $6544: $07
    inc b                                         ; $6545: $04
    rlca                                          ; $6546: $07
    rlca                                          ; $6547: $07
    rlca                                          ; $6548: $07
    inc b                                         ; $6549: $04
    rra                                           ; $654a: $1f
    rra                                           ; $654b: $1f
    inc a                                         ; $654c: $3c

jr_014_654d:
    ccf                                           ; $654d: $3f
    rra                                           ; $654e: $1f
    rra                                           ; $654f: $1f
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    jr c, jr_014_658e                             ; $6554: $38 $38

    add $fe                                       ; $6556: $c6 $fe
    ld bc, $30ff                                  ; $6558: $01 $ff $30
    rst $38                                       ; $655b: $ff
    jr c, jr_014_654d                             ; $655c: $38 $ef

    ld e, $ff                                     ; $655e: $1e $ff
    ld e, a                                       ; $6560: $5f
    pop af                                        ; $6561: $f1
    rst $38                                       ; $6562: $ff
    xor l                                         ; $6563: $ad
    cp $8b                                        ; $6564: $fe $8b
    cp $c3                                        ; $6566: $fe $c3
    rst $38                                       ; $6568: $ff
    and a                                         ; $6569: $a7
    ld sp, hl                                     ; $656a: $f9
    ld e, c                                       ; $656b: $59
    db $fc                                        ; $656c: $fc
    ld [hl], h                                    ; $656d: $74
    sbc h                                         ; $656e: $9c
    db $f4                                        ; $656f: $f4
    inc e                                         ; $6570: $1c
    db $f4                                        ; $6571: $f4
    cp b                                          ; $6572: $b8
    ld hl, sp-$08                                 ; $6573: $f8 $f8
    ld l, b                                       ; $6575: $68
    ld hl, sp-$68                                 ; $6576: $f8 $98
    ld l, b                                       ; $6578: $68
    ld hl, sp+$10                                 ; $6579: $f8 $10
    ldh a, [$f0]                                  ; $657b: $f0 $f0
    ldh a, [$f0]                                  ; $657d: $f0 $f0
    ld d, b                                       ; $657f: $50
    ldh a, [$50]                                  ; $6580: $f0 $50
    ldh [$a0], a                                  ; $6582: $e0 $a0
    ret nz                                        ; $6584: $c0

    ret nz                                        ; $6585: $c0

    ldh [$e0], a                                  ; $6586: $e0 $e0
    ret nc                                        ; $6588: $d0

    ldh a, [$7c]                                  ; $6589: $f0 $7c
    cp h                                          ; $658b: $bc
    ld e, $fe                                     ; $658c: $1e $fe

jr_014_658e:
    db $fc                                        ; $658e: $fc
    db $fc                                        ; $658f: $fc
    nop                                           ; $6590: $00
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    nop                                           ; $6595: $00
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    add b                                         ; $659a: $80
    add b                                         ; $659b: $80
    add b                                         ; $659c: $80
    add b                                         ; $659d: $80
    ld b, b                                       ; $659e: $40
    ret nz                                        ; $659f: $c0

    ld b, b                                       ; $65a0: $40
    ret nz                                        ; $65a1: $c0

    ld b, b                                       ; $65a2: $40
    ret nz                                        ; $65a3: $c0

    ld b, b                                       ; $65a4: $40
    ret nz                                        ; $65a5: $c0

    add b                                         ; $65a6: $80
    add b                                         ; $65a7: $80
    nop                                           ; $65a8: $00
    nop                                           ; $65a9: $00
    nop                                           ; $65aa: $00
    nop                                           ; $65ab: $00
    nop                                           ; $65ac: $00
    nop                                           ; $65ad: $00
    nop                                           ; $65ae: $00
    nop                                           ; $65af: $00
    nop                                           ; $65b0: $00
    nop                                           ; $65b1: $00
    nop                                           ; $65b2: $00
    nop                                           ; $65b3: $00
    ld bc, $0201                                  ; $65b4: $01 $01 $02
    inc bc                                        ; $65b7: $03
    inc bc                                        ; $65b8: $03
    ld [bc], a                                    ; $65b9: $02
    ld [bc], a                                    ; $65ba: $02
    inc bc                                        ; $65bb: $03
    inc bc                                        ; $65bc: $03
    inc bc                                        ; $65bd: $03
    ld bc, $0001                                  ; $65be: $01 $01 $00
    nop                                           ; $65c1: $00
    nop                                           ; $65c2: $00
    nop                                           ; $65c3: $00
    nop                                           ; $65c4: $00
    nop                                           ; $65c5: $00
    nop                                           ; $65c6: $00
    nop                                           ; $65c7: $00
    nop                                           ; $65c8: $00
    nop                                           ; $65c9: $00
    nop                                           ; $65ca: $00
    nop                                           ; $65cb: $00
    nop                                           ; $65cc: $00
    nop                                           ; $65cd: $00
    nop                                           ; $65ce: $00
    nop                                           ; $65cf: $00
    nop                                           ; $65d0: $00
    nop                                           ; $65d1: $00
    nop                                           ; $65d2: $00
    nop                                           ; $65d3: $00
    nop                                           ; $65d4: $00
    nop                                           ; $65d5: $00
    add b                                         ; $65d6: $80
    add b                                         ; $65d7: $80
    add c                                         ; $65d8: $81
    add c                                         ; $65d9: $81
    add d                                         ; $65da: $82
    add e                                         ; $65db: $83
    add d                                         ; $65dc: $82
    add e                                         ; $65dd: $83
    add d                                         ; $65de: $82
    add e                                         ; $65df: $83
    pop bc                                        ; $65e0: $c1
    pop bc                                        ; $65e1: $c1
    ld h, c                                       ; $65e2: $61
    ld h, c                                       ; $65e3: $61
    scf                                           ; $65e4: $37
    scf                                           ; $65e5: $37
    rra                                           ; $65e6: $1f

Call_014_65e7:
    add hl, de                                    ; $65e7: $19
    ld c, $0b                                     ; $65e8: $0e $0b
    ld c, $0f                                     ; $65ea: $0e $0f
    rrca                                          ; $65ec: $0f
    add hl, bc                                    ; $65ed: $09
    ld e, $13                                     ; $65ee: $1e $13
    rra                                           ; $65f0: $1f
    inc de                                        ; $65f1: $13
    rrca                                          ; $65f2: $0f
    rrca                                          ; $65f3: $0f
    rlca                                          ; $65f4: $07
    rlca                                          ; $65f5: $07
    add hl, bc                                    ; $65f6: $09
    rrca                                          ; $65f7: $0f
    ld [$060f], sp                                ; $65f8: $08 $0f $06
    rlca                                          ; $65fb: $07
    rlca                                          ; $65fc: $07
    dec b                                         ; $65fd: $05
    rlca                                          ; $65fe: $07
    inc b                                         ; $65ff: $04
    rlca                                          ; $6600: $07
    ld b, $07                                     ; $6601: $06 $07
    inc b                                         ; $6603: $04
    rlca                                          ; $6604: $07
    inc b                                         ; $6605: $04
    rlca                                          ; $6606: $07
    rlca                                          ; $6607: $07
    rlca                                          ; $6608: $07
    inc b                                         ; $6609: $04
    rra                                           ; $660a: $1f
    rra                                           ; $660b: $1f
    inc a                                         ; $660c: $3c

jr_014_660d:
    ccf                                           ; $660d: $3f
    rra                                           ; $660e: $1f
    rra                                           ; $660f: $1f
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00
    nop                                           ; $6612: $00
    nop                                           ; $6613: $00
    jr c, jr_014_664e                             ; $6614: $38 $38

    add $fe                                       ; $6616: $c6 $fe
    ld bc, $30ff                                  ; $6618: $01 $ff $30
    rst $38                                       ; $661b: $ff
    jr c, jr_014_660d                             ; $661c: $38 $ef

    ld e, $ff                                     ; $661e: $1e $ff
    ld e, a                                       ; $6620: $5f
    pop af                                        ; $6621: $f1
    rst $38                                       ; $6622: $ff
    xor l                                         ; $6623: $ad
    cp $8b                                        ; $6624: $fe $8b
    cp $c3                                        ; $6626: $fe $c3
    ccf                                           ; $6628: $3f
    rst $20                                       ; $6629: $e7
    cp c                                          ; $662a: $b9
    ld sp, hl                                     ; $662b: $f9
    ld hl, sp-$38                                 ; $662c: $f8 $c8
    ld a, h                                       ; $662e: $7c
    call nz, $e4bc                                ; $662f: $c4 $bc $e4
    ld hl, sp-$08                                 ; $6632: $f8 $f8
    ldh a, [$f0]                                  ; $6634: $f0 $f0
    add sp, -$08                                  ; $6636: $e8 $f8
    ret z                                         ; $6638: $c8

    ld hl, sp+$10                                 ; $6639: $f8 $10
    ldh a, [$f0]                                  ; $663b: $f0 $f0
    ldh a, [$f0]                                  ; $663d: $f0 $f0
    ld d, b                                       ; $663f: $50
    ldh a, [$90]                                  ; $6640: $f0 $90
    ldh [$a0], a                                  ; $6642: $e0 $a0
    ret nz                                        ; $6644: $c0

    ret nz                                        ; $6645: $c0

    ldh [$e0], a                                  ; $6646: $e0 $e0
    ret nc                                        ; $6648: $d0

    ldh a, [$7c]                                  ; $6649: $f0 $7c
    cp h                                          ; $664b: $bc
    ld e, $fe                                     ; $664c: $1e $fe

jr_014_664e:
    db $fc                                        ; $664e: $fc
    db $fc                                        ; $664f: $fc
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    add b                                         ; $665a: $80
    add b                                         ; $665b: $80
    add b                                         ; $665c: $80
    add b                                         ; $665d: $80
    ld b, b                                       ; $665e: $40
    ret nz                                        ; $665f: $c0

    ld b, b                                       ; $6660: $40
    ret nz                                        ; $6661: $c0

    ld b, b                                       ; $6662: $40
    ret nz                                        ; $6663: $c0

    ld b, b                                       ; $6664: $40
    ret nz                                        ; $6665: $c0

    add b                                         ; $6666: $80
    add b                                         ; $6667: $80
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    nop                                           ; $666a: $00
    nop                                           ; $666b: $00
    nop                                           ; $666c: $00
    nop                                           ; $666d: $00
    nop                                           ; $666e: $00
    nop                                           ; $666f: $00
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    nop                                           ; $6676: $00
    nop                                           ; $6677: $00
    nop                                           ; $6678: $00
    nop                                           ; $6679: $00
    nop                                           ; $667a: $00
    nop                                           ; $667b: $00
    ld bc, $0101                                  ; $667c: $01 $01 $01
    ld bc, $0101                                  ; $667f: $01 $01 $01
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    nop                                           ; $6686: $00
    nop                                           ; $6687: $00
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    nop                                           ; $668a: $00
    nop                                           ; $668b: $00
    ld bc, $0201                                  ; $668c: $01 $01 $02
    inc bc                                        ; $668f: $03
    ld [bc], a                                    ; $6690: $02
    inc bc                                        ; $6691: $03
    rlca                                          ; $6692: $07
    rlca                                          ; $6693: $07
    rrca                                          ; $6694: $0f
    rrca                                          ; $6695: $0f
    inc de                                        ; $6696: $13
    rra                                           ; $6697: $1f
    add hl, bc                                    ; $6698: $09
    rrca                                          ; $6699: $0f
    inc c                                         ; $669a: $0c
    rrca                                          ; $669b: $0f
    rrca                                          ; $669c: $0f
    dec bc                                        ; $669d: $0b
    rrca                                          ; $669e: $0f
    ld a, [bc]                                    ; $669f: $0a
    rlca                                          ; $66a0: $07
    dec b                                         ; $66a1: $05
    rlca                                          ; $66a2: $07
    ld b, $07                                     ; $66a3: $06 $07
    ld b, $07                                     ; $66a5: $06 $07
    dec b                                         ; $66a7: $05
    rlca                                          ; $66a8: $07
    ld b, $1d                                     ; $66a9: $06 $1d
    rra                                           ; $66ab: $1f
    ld a, $3f                                     ; $66ac: $3e $3f
    rra                                           ; $66ae: $1f
    rra                                           ; $66af: $1f
    nop                                           ; $66b0: $00
    nop                                           ; $66b1: $00
    nop                                           ; $66b2: $00
    nop                                           ; $66b3: $00
    nop                                           ; $66b4: $00
    nop                                           ; $66b5: $00
    inc e                                         ; $66b6: $1c
    inc e                                         ; $66b7: $1c
    ld h, e                                       ; $66b8: $63
    ld a, a                                       ; $66b9: $7f
    add b                                         ; $66ba: $80
    rst $38                                       ; $66bb: $ff
    jr @+$01                                      ; $66bc: $18 $ff

    inc e                                         ; $66be: $1c
    rst $30                                       ; $66bf: $f7

jr_014_66c0:
    rrca                                          ; $66c0: $0f
    rst $38                                       ; $66c1: $ff
    xor a                                         ; $66c2: $af
    ld hl, sp-$01                                 ; $66c3: $f8 $ff
    sub $7f                                       ; $66c5: $d6 $7f
    ld b, l                                       ; $66c7: $45
    ld a, a                                       ; $66c8: $7f
    ld h, c                                       ; $66c9: $61
    rst $38                                       ; $66ca: $ff
    db $d3                                        ; $66cb: $d3
    inc a                                         ; $66cc: $3c
    db $fc                                        ; $66cd: $fc
    jr nc, jr_014_66c0                            ; $66ce: $30 $f0

    ld a, b                                       ; $66d0: $78
    ret z                                         ; $66d1: $c8

    ld a, b                                       ; $66d2: $78
    ret z                                         ; $66d3: $c8

    db $fc                                        ; $66d4: $fc
    sub h                                         ; $66d5: $94
    db $fc                                        ; $66d6: $fc
    sub h                                         ; $66d7: $94
    ld a, [$7e8e]                                 ; $66d8: $fa $8e $7e
    sub $fe                                       ; $66db: $d6 $fe
    ld a, [c]                                     ; $66dd: $f2
    xor $2a                                       ; $66de: $ee $2a
    rst $20                                       ; $66e0: $e7
    daa                                           ; $66e1: $27

jr_014_66e2:
    pop bc                                        ; $66e2: $c1
    ld b, c                                       ; $66e3: $41
    ret nz                                        ; $66e4: $c0

    ld b, b                                       ; $66e5: $40
    ldh [$e0], a                                  ; $66e6: $e0 $e0
    ret nc                                        ; $66e8: $d0

    ld [hl], b                                    ; $66e9: $70
    db $fc                                        ; $66ea: $fc
    cp h                                          ; $66eb: $bc
    rra                                           ; $66ec: $1f
    rst $38                                       ; $66ed: $ff
    db $fc                                        ; $66ee: $fc
    db $fc                                        ; $66ef: $fc
    nop                                           ; $66f0: $00
    nop                                           ; $66f1: $00
    nop                                           ; $66f2: $00
    nop                                           ; $66f3: $00
    nop                                           ; $66f4: $00
    nop                                           ; $66f5: $00
    nop                                           ; $66f6: $00
    nop                                           ; $66f7: $00
    nop                                           ; $66f8: $00
    nop                                           ; $66f9: $00
    add b                                         ; $66fa: $80
    add b                                         ; $66fb: $80
    ld b, b                                       ; $66fc: $40
    ret nz                                        ; $66fd: $c0

    ld b, b                                       ; $66fe: $40
    ret nz                                        ; $66ff: $c0

    jr nz, jr_014_66e2                            ; $6700: $20 $e0

    and b                                         ; $6702: $a0
    ldh [$a0], a                                  ; $6703: $e0 $a0
    ldh [rNR41], a                                ; $6705: $e0 $20
    ldh [rLCDC], a                                ; $6707: $e0 $40
    ret nz                                        ; $6709: $c0

    add b                                         ; $670a: $80
    add b                                         ; $670b: $80
    add b                                         ; $670c: $80
    add b                                         ; $670d: $80
    nop                                           ; $670e: $00
    nop                                           ; $670f: $00
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    nop                                           ; $6715: $00
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    nop                                           ; $671a: $00
    nop                                           ; $671b: $00
    nop                                           ; $671c: $00
    nop                                           ; $671d: $00
    nop                                           ; $671e: $00
    nop                                           ; $671f: $00
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    add b                                         ; $6722: $80
    add b                                         ; $6723: $80
    ret nz                                        ; $6724: $c0

    ret nz                                        ; $6725: $c0

    ld l, [hl]                                    ; $6726: $6e
    ld l, [hl]                                    ; $6727: $6e
    dec [hl]                                      ; $6728: $35
    dec sp                                        ; $6729: $3b
    rra                                           ; $672a: $1f
    rra                                           ; $672b: $1f
    cp $fe                                        ; $672c: $fe $fe
    nop                                           ; $672e: $00
    nop                                           ; $672f: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    nop                                           ; $6735: $00
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    nop                                           ; $673a: $00
    nop                                           ; $673b: $00
    nop                                           ; $673c: $00
    nop                                           ; $673d: $00
    ld bc, $0101                                  ; $673e: $01 $01 $01
    ld bc, $0000                                  ; $6741: $01 $00 $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    ld bc, $0301                                  ; $674a: $01 $01 $03
    ld [bc], a                                    ; $674d: $02
    inc bc                                        ; $674e: $03
    inc bc                                        ; $674f: $03
    ld [bc], a                                    ; $6750: $02
    inc bc                                        ; $6751: $03
    rlca                                          ; $6752: $07
    rlca                                          ; $6753: $07
    rrca                                          ; $6754: $0f
    rrca                                          ; $6755: $0f
    inc de                                        ; $6756: $13
    rra                                           ; $6757: $1f
    ld [$0c0f], sp                                ; $6758: $08 $0f $0c
    rrca                                          ; $675b: $0f
    rrca                                          ; $675c: $0f
    dec bc                                        ; $675d: $0b
    rrca                                          ; $675e: $0f
    add hl, bc                                    ; $675f: $09
    rlca                                          ; $6760: $07
    dec b                                         ; $6761: $05
    rlca                                          ; $6762: $07
    ld b, $07                                     ; $6763: $06 $07
    ld b, $07                                     ; $6765: $06 $07
    dec b                                         ; $6767: $05
    rlca                                          ; $6768: $07
    ld b, $1d                                     ; $6769: $06 $1d
    rra                                           ; $676b: $1f
    ld a, $3f                                     ; $676c: $3e $3f
    rra                                           ; $676e: $1f
    rra                                           ; $676f: $1f
    nop                                           ; $6770: $00
    nop                                           ; $6771: $00
    nop                                           ; $6772: $00
    nop                                           ; $6773: $00
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    inc e                                         ; $6776: $1c
    inc e                                         ; $6777: $1c
    ld h, e                                       ; $6778: $63
    ld a, a                                       ; $6779: $7f
    add b                                         ; $677a: $80
    rst $38                                       ; $677b: $ff
    add b                                         ; $677c: $80
    rst $38                                       ; $677d: $ff
    ld [bc], a                                    ; $677e: $02
    rst $38                                       ; $677f: $ff
    rlca                                          ; $6780: $07
    db $fd                                        ; $6781: $fd
    add d                                         ; $6782: $82
    rst $38                                       ; $6783: $ff
    add a                                         ; $6784: $87
    rst $38                                       ; $6785: $ff
    ld c, a                                       ; $6786: $4f
    ld a, d                                       ; $6787: $7a
    ld a, a                                       ; $6788: $7f
    ld a, c                                       ; $6789: $79
    rst $38                                       ; $678a: $ff
    pop hl                                        ; $678b: $e1
    sbc [hl]                                      ; $678c: $9e
    cp $08                                        ; $678d: $fe $08
    ld hl, sp+$1c                                 ; $678f: $f8 $1c
    db $f4                                        ; $6791: $f4
    cp h                                          ; $6792: $bc
    db $e4                                        ; $6793: $e4
    db $fc                                        ; $6794: $fc
    db $e4                                        ; $6795: $e4
    db $fc                                        ; $6796: $fc
    db $f4                                        ; $6797: $f4
    rst $38                                       ; $6798: $ff
    rst $30                                       ; $6799: $f7
    ld e, $fd                                     ; $679a: $1e $fd
    rst $20                                       ; $679c: $e7
    rst $20                                       ; $679d: $e7
    db $e3                                        ; $679e: $e3
    inc hl                                        ; $679f: $23
    ldh [rNR41], a                                ; $67a0: $e0 $20

jr_014_67a2:
    ret nz                                        ; $67a2: $c0

    ld b, b                                       ; $67a3: $40
    ret nz                                        ; $67a4: $c0

    ld b, b                                       ; $67a5: $40
    ldh [$e0], a                                  ; $67a6: $e0 $e0
    ret nc                                        ; $67a8: $d0

    ld [hl], b                                    ; $67a9: $70
    db $fc                                        ; $67aa: $fc
    cp h                                          ; $67ab: $bc
    ld e, $fe                                     ; $67ac: $1e $fe
    db $fc                                        ; $67ae: $fc
    db $fc                                        ; $67af: $fc
    nop                                           ; $67b0: $00
    nop                                           ; $67b1: $00
    nop                                           ; $67b2: $00
    nop                                           ; $67b3: $00
    nop                                           ; $67b4: $00
    nop                                           ; $67b5: $00
    nop                                           ; $67b6: $00
    nop                                           ; $67b7: $00
    nop                                           ; $67b8: $00
    nop                                           ; $67b9: $00
    add b                                         ; $67ba: $80
    add b                                         ; $67bb: $80
    ld b, b                                       ; $67bc: $40
    ret nz                                        ; $67bd: $c0

    ld b, b                                       ; $67be: $40
    ret nz                                        ; $67bf: $c0

    jr nz, jr_014_67a2                            ; $67c0: $20 $e0

    and b                                         ; $67c2: $a0
    ldh [$a0], a                                  ; $67c3: $e0 $a0
    ldh [$c0], a                                  ; $67c5: $e0 $c0
    ret nz                                        ; $67c7: $c0

    add b                                         ; $67c8: $80
    add b                                         ; $67c9: $80
    nop                                           ; $67ca: $00
    nop                                           ; $67cb: $00
    nop                                           ; $67cc: $00
    nop                                           ; $67cd: $00
    nop                                           ; $67ce: $00
    nop                                           ; $67cf: $00
    nop                                           ; $67d0: $00
    nop                                           ; $67d1: $00
    nop                                           ; $67d2: $00
    nop                                           ; $67d3: $00
    nop                                           ; $67d4: $00
    nop                                           ; $67d5: $00
    nop                                           ; $67d6: $00
    nop                                           ; $67d7: $00
    nop                                           ; $67d8: $00
    nop                                           ; $67d9: $00
    add b                                         ; $67da: $80
    add b                                         ; $67db: $80
    add b                                         ; $67dc: $80
    add b                                         ; $67dd: $80
    nop                                           ; $67de: $00
    nop                                           ; $67df: $00
    nop                                           ; $67e0: $00
    nop                                           ; $67e1: $00
    nop                                           ; $67e2: $00
    nop                                           ; $67e3: $00
    nop                                           ; $67e4: $00
    nop                                           ; $67e5: $00
    nop                                           ; $67e6: $00
    nop                                           ; $67e7: $00
    nop                                           ; $67e8: $00
    nop                                           ; $67e9: $00
    nop                                           ; $67ea: $00
    nop                                           ; $67eb: $00
    nop                                           ; $67ec: $00
    nop                                           ; $67ed: $00
    nop                                           ; $67ee: $00
    nop                                           ; $67ef: $00
    nop                                           ; $67f0: $00
    nop                                           ; $67f1: $00
    nop                                           ; $67f2: $00
    nop                                           ; $67f3: $00
    nop                                           ; $67f4: $00
    nop                                           ; $67f5: $00
    nop                                           ; $67f6: $00
    nop                                           ; $67f7: $00
    nop                                           ; $67f8: $00
    nop                                           ; $67f9: $00
    nop                                           ; $67fa: $00
    nop                                           ; $67fb: $00
    ld bc, $0101                                  ; $67fc: $01 $01 $01
    ld bc, $0101                                  ; $67ff: $01 $01 $01
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    nop                                           ; $680a: $00
    nop                                           ; $680b: $00
    nop                                           ; $680c: $00
    nop                                           ; $680d: $00
    nop                                           ; $680e: $00
    nop                                           ; $680f: $00
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    nop                                           ; $6812: $00
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    nop                                           ; $6818: $00
    nop                                           ; $6819: $00
    ret nz                                        ; $681a: $c0

    ret nz                                        ; $681b: $c0

    ret nz                                        ; $681c: $c0

    ld b, b                                       ; $681d: $40
    ld b, c                                       ; $681e: $41
    pop bc                                        ; $681f: $c1
    pop bc                                        ; $6820: $c1
    pop bc                                        ; $6821: $c1
    ret nz                                        ; $6822: $c0

    ret nz                                        ; $6823: $c0

    ld h, b                                       ; $6824: $60
    ld h, b                                       ; $6825: $60
    jr nc, jr_014_6858                            ; $6826: $30 $30

    rra                                           ; $6828: $1f
    rra                                           ; $6829: $1f
    rrca                                          ; $682a: $0f
    ld a, [bc]                                    ; $682b: $0a
    rlca                                          ; $682c: $07
    dec b                                         ; $682d: $05
    rlca                                          ; $682e: $07
    dec b                                         ; $682f: $05
    inc bc                                        ; $6830: $03
    inc bc                                        ; $6831: $03
    rlca                                          ; $6832: $07
    inc b                                         ; $6833: $04
    rrca                                          ; $6834: $0f
    ld c, $11                                     ; $6835: $0e $11
    rra                                           ; $6837: $1f
    db $10                                        ; $6838: $10
    rra                                           ; $6839: $1f
    inc c                                         ; $683a: $0c
    rrca                                          ; $683b: $0f
    rrca                                          ; $683c: $0f
    dec bc                                        ; $683d: $0b
    rlca                                          ; $683e: $07
    dec b                                         ; $683f: $05
    rlca                                          ; $6840: $07
    dec b                                         ; $6841: $05
    rlca                                          ; $6842: $07
    dec b                                         ; $6843: $05
    rlca                                          ; $6844: $07
    rlca                                          ; $6845: $07
    rlca                                          ; $6846: $07
    ld b, $07                                     ; $6847: $06 $07
    rlca                                          ; $6849: $07
    ld e, $1f                                     ; $684a: $1e $1f
    ccf                                           ; $684c: $3f
    ccf                                           ; $684d: $3f
    rra                                           ; $684e: $1f
    rra                                           ; $684f: $1f
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    nop                                           ; $6855: $00
    inc e                                         ; $6856: $1c
    inc e                                         ; $6857: $1c

jr_014_6858:
    ld h, e                                       ; $6858: $63
    ld a, a                                       ; $6859: $7f
    add b                                         ; $685a: $80
    rst $38                                       ; $685b: $ff
    add b                                         ; $685c: $80
    rst $38                                       ; $685d: $ff
    ld bc, $03ff                                  ; $685e: $01 $ff $03

jr_014_6861:
    cp $81                                        ; $6861: $fe $81
    rst $38                                       ; $6863: $ff
    add c                                         ; $6864: $81
    rst $38                                       ; $6865: $ff
    ld h, a                                       ; $6866: $67
    ld a, [hl]                                    ; $6867: $7e
    rst $38                                       ; $6868: $ff
    ret c                                         ; $6869: $d8

    cp a                                          ; $686a: $bf
    db $e3                                        ; $686b: $e3
    inc e                                         ; $686c: $1c
    db $fc                                        ; $686d: $fc
    inc c                                         ; $686e: $0c
    db $fc                                        ; $686f: $fc
    inc e                                         ; $6870: $1c
    db $f4                                        ; $6871: $f4
    ld hl, sp-$18                                 ; $6872: $f8 $e8
    ldh a, [$30]                                  ; $6874: $f0 $30
    ldh [$a0], a                                  ; $6876: $e0 $a0
    ld h, b                                       ; $6878: $60
    ldh [rNR10], a                                ; $6879: $e0 $10
    ldh a, [$e0]                                  ; $687b: $f0 $e0
    ldh [$e0], a                                  ; $687d: $e0 $e0
    jr nz, jr_014_6861                            ; $687f: $20 $e0

    and b                                         ; $6881: $a0
    ldh [rNR41], a                                ; $6882: $e0 $20
    ret nz                                        ; $6884: $c0

    ret nz                                        ; $6885: $c0

    ret nz                                        ; $6886: $c0

    ld b, b                                       ; $6887: $40
    ret nz                                        ; $6888: $c0

    ret nz                                        ; $6889: $c0

    cp h                                          ; $688a: $bc
    ld a, h                                       ; $688b: $7c
    sbc [hl]                                      ; $688c: $9e
    cp $fc                                        ; $688d: $fe $fc
    db $fc                                        ; $688f: $fc
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    add b                                         ; $689a: $80
    add b                                         ; $689b: $80
    ld b, b                                       ; $689c: $40
    ret nz                                        ; $689d: $c0

    ld b, b                                       ; $689e: $40
    ret nz                                        ; $689f: $c0

    and b                                         ; $68a0: $a0
    ldh [rNR41], a                                ; $68a1: $e0 $20
    ldh [$c0], a                                  ; $68a3: $e0 $c0
    ret nz                                        ; $68a5: $c0

    add b                                         ; $68a6: $80
    add b                                         ; $68a7: $80
    add b                                         ; $68a8: $80
    add b                                         ; $68a9: $80
    nop                                           ; $68aa: $00
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    nop                                           ; $68ae: $00
    nop                                           ; $68af: $00
    nop                                           ; $68b0: $00
    nop                                           ; $68b1: $00
    nop                                           ; $68b2: $00
    nop                                           ; $68b3: $00
    nop                                           ; $68b4: $00
    nop                                           ; $68b5: $00
    nop                                           ; $68b6: $00
    nop                                           ; $68b7: $00
    ld bc, $0d01                                  ; $68b8: $01 $01 $0d
    dec c                                         ; $68bb: $0d
    inc de                                        ; $68bc: $13
    rra                                           ; $68bd: $1f
    inc hl                                        ; $68be: $23
    ld a, $37                                     ; $68bf: $3e $37
    inc a                                         ; $68c1: $3c
    ld a, a                                       ; $68c2: $7f
    ld c, h                                       ; $68c3: $4c
    ld a, a                                       ; $68c4: $7f
    ld c, a                                       ; $68c5: $4f
    rst $30                                       ; $68c6: $f7
    sub h                                         ; $68c7: $94
    rst $38                                       ; $68c8: $ff
    adc [hl]                                      ; $68c9: $8e
    ld a, a                                       ; $68ca: $7f
    ld b, c                                       ; $68cb: $41
    ld a, $33                                     ; $68cc: $3e $33
    inc c                                         ; $68ce: $0c
    rrca                                          ; $68cf: $0f
    ld b, $07                                     ; $68d0: $06 $07
    rlca                                          ; $68d2: $07
    rlca                                          ; $68d3: $07
    rlca                                          ; $68d4: $07
    rlca                                          ; $68d5: $07
    dec bc                                        ; $68d6: $0b
    rrca                                          ; $68d7: $0f
    db $10                                        ; $68d8: $10
    rra                                           ; $68d9: $1f
    db $10                                        ; $68da: $10
    rra                                           ; $68db: $1f
    rrca                                          ; $68dc: $0f
    rrca                                          ; $68dd: $0f
    rrca                                          ; $68de: $0f
    add hl, bc                                    ; $68df: $09
    rrca                                          ; $68e0: $0f
    add hl, bc                                    ; $68e1: $09
    rlca                                          ; $68e2: $07
    dec b                                         ; $68e3: $05
    rlca                                          ; $68e4: $07
    rlca                                          ; $68e5: $07
    rlca                                          ; $68e6: $07
    dec b                                         ; $68e7: $05
    rlca                                          ; $68e8: $07
    rlca                                          ; $68e9: $07
    dec e                                         ; $68ea: $1d
    rra                                           ; $68eb: $1f
    ccf                                           ; $68ec: $3f
    ccf                                           ; $68ed: $3f
    rra                                           ; $68ee: $1f
    rra                                           ; $68ef: $1f
    nop                                           ; $68f0: $00
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    nop                                           ; $68f3: $00
    jr c, jr_014_692e                             ; $68f4: $38 $38

    call nz, $02fc                                ; $68f6: $c4 $fc $02
    cp $03                                        ; $68f9: $fe $03
    rst $38                                       ; $68fb: $ff
    nop                                           ; $68fc: $00
    rst $38                                       ; $68fd: $ff
    add b                                         ; $68fe: $80
    rst $38                                       ; $68ff: $ff
    ret nz                                        ; $6900: $c0

    ld a, a                                       ; $6901: $7f
    jp $c7ff                                      ; $6902: $c3 $ff $c7


    db $fd                                        ; $6905: $fd
    rst $28                                       ; $6906: $ef
    ld sp, hl                                     ; $6907: $f9
    cp $be                                        ; $6908: $fe $be
    ld hl, sp-$28                                 ; $690a: $f8 $d8
    inc a                                         ; $690c: $3c
    db $fc                                        ; $690d: $fc
    ld c, $fa                                     ; $690e: $0e $fa
    dec de                                        ; $6910: $1b
    rst $38                                       ; $6911: $ff
    rst $28                                       ; $6912: $ef
    rst $28                                       ; $6913: $ef
    and $e6                                       ; $6914: $e6 $e6
    ldh [$e0], a                                  ; $6916: $e0 $e0
    ret nc                                        ; $6918: $d0

    ldh a, [rNR10]                                ; $6919: $f0 $10
    ldh a, [$90]                                  ; $691b: $f0 $90
    ldh a, [$e0]                                  ; $691d: $f0 $e0
    ld h, b                                       ; $691f: $60
    ldh [rNR41], a                                ; $6920: $e0 $20
    ldh [$e0], a                                  ; $6922: $e0 $e0
    ldh [rNR41], a                                ; $6924: $e0 $20
    ldh [$e0], a                                  ; $6926: $e0 $e0
    and b                                         ; $6928: $a0
    ld h, b                                       ; $6929: $60
    ld e, h                                       ; $692a: $5c
    db $fc                                        ; $692b: $fc
    sbc $fe                                       ; $692c: $de $fe

jr_014_692e:
    db $fc                                        ; $692e: $fc
    db $fc                                        ; $692f: $fc
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00
    nop                                           ; $693a: $00
    nop                                           ; $693b: $00
    add b                                         ; $693c: $80
    add b                                         ; $693d: $80
    add b                                         ; $693e: $80
    add b                                         ; $693f: $80
    add b                                         ; $6940: $80
    add b                                         ; $6941: $80
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    nop                                           ; $6948: $00
    nop                                           ; $6949: $00
    nop                                           ; $694a: $00
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    nop                                           ; $694d: $00
    nop                                           ; $694e: $00
    nop                                           ; $694f: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    ld bc, $0101                                  ; $695a: $01 $01 $01
    ld bc, $0101                                  ; $695d: $01 $01 $01
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    nop                                           ; $696a: $00
    nop                                           ; $696b: $00
    ld bc, $0201                                  ; $696c: $01 $01 $02
    inc bc                                        ; $696f: $03
    ld [bc], a                                    ; $6970: $02
    inc bc                                        ; $6971: $03
    rlca                                          ; $6972: $07
    rlca                                          ; $6973: $07
    rrca                                          ; $6974: $0f
    rrca                                          ; $6975: $0f
    rla                                           ; $6976: $17
    rra                                           ; $6977: $1f
    ld de, $0c1f                                  ; $6978: $11 $1f $0c
    rrca                                          ; $697b: $0f
    inc bc                                        ; $697c: $03
    inc bc                                        ; $697d: $03
    inc bc                                        ; $697e: $03
    ld [bc], a                                    ; $697f: $02
    inc bc                                        ; $6980: $03
    ld [bc], a                                    ; $6981: $02
    rlca                                          ; $6982: $07
    inc b                                         ; $6983: $04
    rlca                                          ; $6984: $07
    inc b                                         ; $6985: $04
    rlca                                          ; $6986: $07
    rlca                                          ; $6987: $07
    rlca                                          ; $6988: $07
    inc b                                         ; $6989: $04
    rra                                           ; $698a: $1f
    rra                                           ; $698b: $1f
    inc a                                         ; $698c: $3c
    ccf                                           ; $698d: $3f
    rra                                           ; $698e: $1f
    rra                                           ; $698f: $1f
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    inc e                                         ; $6994: $1c
    inc e                                         ; $6995: $1c
    ld h, e                                       ; $6996: $63
    ld a, a                                       ; $6997: $7f
    add b                                         ; $6998: $80
    rst $38                                       ; $6999: $ff
    jr @+$01                                      ; $699a: $18 $ff

    inc e                                         ; $699c: $1c
    rst $30                                       ; $699d: $f7
    rrca                                          ; $699e: $0f
    rst $38                                       ; $699f: $ff
    xor a                                         ; $69a0: $af
    ld hl, sp-$01                                 ; $69a1: $f8 $ff
    sub $7f                                       ; $69a3: $d6 $7f
    ld b, l                                       ; $69a5: $45
    ld a, a                                       ; $69a6: $7f
    ld h, c                                       ; $69a7: $61
    ld a, a                                       ; $69a8: $7f
    ld d, e                                       ; $69a9: $53
    cp h                                          ; $69aa: $bc
    db $ec                                        ; $69ab: $ec
    ld [hl], b                                    ; $69ac: $70
    ldh a, [$f0]                                  ; $69ad: $f0 $f0
    sub b                                         ; $69af: $90
    ldh a, [$90]                                  ; $69b0: $f0 $90
    ldh a, [$90]                                  ; $69b2: $f0 $90
    ld hl, sp-$38                                 ; $69b4: $f8 $c8
    ld hl, sp-$38                                 ; $69b6: $f8 $c8
    ld hl, sp-$18                                 ; $69b8: $f8 $e8
    ld a, h                                       ; $69ba: $7c
    call nz, $e4fc                                ; $69bb: $c4 $fc $e4
    call c, $ce54                                 ; $69be: $dc $54 $ce
    ld c, [hl]                                    ; $69c1: $4e
    add e                                         ; $69c2: $83
    add e                                         ; $69c3: $83
    add c                                         ; $69c4: $81
    add c                                         ; $69c5: $81
    ldh [$e0], a                                  ; $69c6: $e0 $e0
    ret nc                                        ; $69c8: $d0

    ldh a, [$7c]                                  ; $69c9: $f0 $7c
    cp h                                          ; $69cb: $bc
    rra                                           ; $69cc: $1f
    rst $38                                       ; $69cd: $ff
    db $fc                                        ; $69ce: $fc
    db $fc                                        ; $69cf: $fc
    nop                                           ; $69d0: $00
    nop                                           ; $69d1: $00
    nop                                           ; $69d2: $00
    nop                                           ; $69d3: $00
    nop                                           ; $69d4: $00
    nop                                           ; $69d5: $00
    nop                                           ; $69d6: $00
    nop                                           ; $69d7: $00
    add b                                         ; $69d8: $80
    add b                                         ; $69d9: $80
    ld b, b                                       ; $69da: $40
    ret nz                                        ; $69db: $c0

    ld b, b                                       ; $69dc: $40
    ret nz                                        ; $69dd: $c0

    jr nz, @-$1e                                  ; $69de: $20 $e0

    and b                                         ; $69e0: $a0
    ldh [$a0], a                                  ; $69e1: $e0 $a0
    ldh [rNR41], a                                ; $69e3: $e0 $20
    ldh [rLCDC], a                                ; $69e5: $e0 $40
    ret nz                                        ; $69e7: $c0

    add b                                         ; $69e8: $80
    add b                                         ; $69e9: $80
    add b                                         ; $69ea: $80
    add b                                         ; $69eb: $80
    nop                                           ; $69ec: $00
    nop                                           ; $69ed: $00
    nop                                           ; $69ee: $00
    nop                                           ; $69ef: $00
    nop                                           ; $69f0: $00
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    nop                                           ; $69f3: $00
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
    nop                                           ; $69fe: $00
    nop                                           ; $69ff: $00
    nop                                           ; $6a00: $00
    nop                                           ; $6a01: $00
    nop                                           ; $6a02: $00
    nop                                           ; $6a03: $00
    add b                                         ; $6a04: $80
    add b                                         ; $6a05: $80
    call z, $b6cc                                 ; $6a06: $cc $cc $b6
    ld a, [$7e62]                                 ; $6a09: $fa $62 $7e
    db $fc                                        ; $6a0c: $fc
    db $fc                                        ; $6a0d: $fc
    nop                                           ; $6a0e: $00
    nop                                           ; $6a0f: $00
    nop                                           ; $6a10: $00
    nop                                           ; $6a11: $00
    nop                                           ; $6a12: $00
    nop                                           ; $6a13: $00
    nop                                           ; $6a14: $00
    nop                                           ; $6a15: $00
    nop                                           ; $6a16: $00
    nop                                           ; $6a17: $00
    nop                                           ; $6a18: $00
    nop                                           ; $6a19: $00
    nop                                           ; $6a1a: $00
    nop                                           ; $6a1b: $00
    ld bc, $0101                                  ; $6a1c: $01 $01 $01
    ld bc, $0101                                  ; $6a1f: $01 $01 $01
    nop                                           ; $6a22: $00
    nop                                           ; $6a23: $00
    nop                                           ; $6a24: $00
    nop                                           ; $6a25: $00
    nop                                           ; $6a26: $00
    nop                                           ; $6a27: $00
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    nop                                           ; $6a2a: $00
    nop                                           ; $6a2b: $00
    ld bc, $0201                                  ; $6a2c: $01 $01 $02
    inc bc                                        ; $6a2f: $03
    ld [bc], a                                    ; $6a30: $02
    inc bc                                        ; $6a31: $03
    rlca                                          ; $6a32: $07
    rlca                                          ; $6a33: $07
    rrca                                          ; $6a34: $0f
    rrca                                          ; $6a35: $0f
    inc de                                        ; $6a36: $13
    rra                                           ; $6a37: $1f
    add hl, bc                                    ; $6a38: $09
    rrca                                          ; $6a39: $0f
    inc c                                         ; $6a3a: $0c
    rrca                                          ; $6a3b: $0f
    rrca                                          ; $6a3c: $0f
    dec bc                                        ; $6a3d: $0b
    rrca                                          ; $6a3e: $0f
    ld a, [bc]                                    ; $6a3f: $0a
    rlca                                          ; $6a40: $07
    dec b                                         ; $6a41: $05
    rlca                                          ; $6a42: $07
    ld b, $07                                     ; $6a43: $06 $07
    ld b, $07                                     ; $6a45: $06 $07
    dec b                                         ; $6a47: $05
    rlca                                          ; $6a48: $07
    ld b, $1d                                     ; $6a49: $06 $1d
    rra                                           ; $6a4b: $1f
    ld a, $3f                                     ; $6a4c: $3e $3f
    rra                                           ; $6a4e: $1f
    rra                                           ; $6a4f: $1f
    nop                                           ; $6a50: $00
    nop                                           ; $6a51: $00
    nop                                           ; $6a52: $00
    nop                                           ; $6a53: $00
    nop                                           ; $6a54: $00
    nop                                           ; $6a55: $00
    inc e                                         ; $6a56: $1c
    inc e                                         ; $6a57: $1c
    ld h, e                                       ; $6a58: $63
    ld a, a                                       ; $6a59: $7f
    add b                                         ; $6a5a: $80
    rst $38                                       ; $6a5b: $ff
    jr @+$01                                      ; $6a5c: $18 $ff

    inc e                                         ; $6a5e: $1c
    rst $30                                       ; $6a5f: $f7

jr_014_6a60:
    rrca                                          ; $6a60: $0f
    rst $38                                       ; $6a61: $ff
    xor a                                         ; $6a62: $af
    ld hl, sp-$01                                 ; $6a63: $f8 $ff
    sub $7f                                       ; $6a65: $d6 $7f
    ld b, l                                       ; $6a67: $45
    ld a, a                                       ; $6a68: $7f
    ld h, c                                       ; $6a69: $61
    rst $38                                       ; $6a6a: $ff
    db $d3                                        ; $6a6b: $d3
    inc a                                         ; $6a6c: $3c
    db $fc                                        ; $6a6d: $fc
    jr nc, jr_014_6a60                            ; $6a6e: $30 $f0

    ld a, b                                       ; $6a70: $78
    ret z                                         ; $6a71: $c8

    ld a, b                                       ; $6a72: $78
    ret z                                         ; $6a73: $c8

    db $fc                                        ; $6a74: $fc
    sub h                                         ; $6a75: $94
    db $fc                                        ; $6a76: $fc
    sub h                                         ; $6a77: $94
    ld a, [$7e8e]                                 ; $6a78: $fa $8e $7e
    add $fe                                       ; $6a7b: $c6 $fe
    ld a, [c]                                     ; $6a7d: $f2
    cp $32                                        ; $6a7e: $fe $32
    xor $2a                                       ; $6a80: $ee $2a

jr_014_6a82:
    rst $00                                       ; $6a82: $c7
    ld b, a                                       ; $6a83: $47
    pop bc                                        ; $6a84: $c1
    ld b, c                                       ; $6a85: $41
    ldh [$e0], a                                  ; $6a86: $e0 $e0
    ret nc                                        ; $6a88: $d0

    ld [hl], b                                    ; $6a89: $70
    db $fc                                        ; $6a8a: $fc
    cp h                                          ; $6a8b: $bc
    rra                                           ; $6a8c: $1f
    rst $38                                       ; $6a8d: $ff
    db $fc                                        ; $6a8e: $fc
    db $fc                                        ; $6a8f: $fc
    nop                                           ; $6a90: $00
    nop                                           ; $6a91: $00
    nop                                           ; $6a92: $00
    nop                                           ; $6a93: $00
    nop                                           ; $6a94: $00
    nop                                           ; $6a95: $00
    nop                                           ; $6a96: $00
    nop                                           ; $6a97: $00
    nop                                           ; $6a98: $00
    nop                                           ; $6a99: $00
    add b                                         ; $6a9a: $80
    add b                                         ; $6a9b: $80
    ld b, b                                       ; $6a9c: $40
    ret nz                                        ; $6a9d: $c0

    ld b, b                                       ; $6a9e: $40
    ret nz                                        ; $6a9f: $c0

    jr nz, jr_014_6a82                            ; $6aa0: $20 $e0

    and b                                         ; $6aa2: $a0
    ldh [$a0], a                                  ; $6aa3: $e0 $a0
    ldh [rNR41], a                                ; $6aa5: $e0 $20
    ldh [rLCDC], a                                ; $6aa7: $e0 $40
    ret nz                                        ; $6aa9: $c0

    add b                                         ; $6aaa: $80
    add b                                         ; $6aab: $80
    add b                                         ; $6aac: $80
    add b                                         ; $6aad: $80
    nop                                           ; $6aae: $00
    nop                                           ; $6aaf: $00
    nop                                           ; $6ab0: $00
    nop                                           ; $6ab1: $00
    nop                                           ; $6ab2: $00
    nop                                           ; $6ab3: $00
    nop                                           ; $6ab4: $00
    nop                                           ; $6ab5: $00
    nop                                           ; $6ab6: $00
    nop                                           ; $6ab7: $00
    nop                                           ; $6ab8: $00
    nop                                           ; $6ab9: $00
    nop                                           ; $6aba: $00
    nop                                           ; $6abb: $00
    nop                                           ; $6abc: $00
    nop                                           ; $6abd: $00
    nop                                           ; $6abe: $00
    nop                                           ; $6abf: $00
    nop                                           ; $6ac0: $00
    nop                                           ; $6ac1: $00
    nop                                           ; $6ac2: $00
    nop                                           ; $6ac3: $00
    add b                                         ; $6ac4: $80
    add b                                         ; $6ac5: $80
    call z, $b6cc                                 ; $6ac6: $cc $cc $b6
    ld a, [$7e62]                                 ; $6ac9: $fa $62 $7e
    db $fc                                        ; $6acc: $fc
    db $fc                                        ; $6acd: $fc
    nop                                           ; $6ace: $00
    nop                                           ; $6acf: $00
    ldh a, [rOCPS]                                ; $6ad0: $f0 $6a
    or b                                          ; $6ad2: $b0
    ld l, e                                       ; $6ad3: $6b
    ld d, b                                       ; $6ad4: $50
    ld l, h                                       ; $6ad5: $6c
    ldh a, [$6c]                                  ; $6ad6: $f0 $6c
    sub b                                         ; $6ad8: $90
    ld l, l                                       ; $6ad9: $6d
    jr nc, jr_014_6b4a                            ; $6ada: $30 $6e

    ldh a, [$6e]                                  ; $6adc: $f0 $6e
    sub b                                         ; $6ade: $90
    ld l, a                                       ; $6adf: $6f
    jr nc, jr_014_6b52                            ; $6ae0: $30 $70

    ret nc                                        ; $6ae2: $d0

    ld [hl], b                                    ; $6ae3: $70
    sub b                                         ; $6ae4: $90
    ld [hl], c                                    ; $6ae5: $71
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
    nop                                           ; $6af0: $00
    nop                                           ; $6af1: $00
    nop                                           ; $6af2: $00
    nop                                           ; $6af3: $00
    nop                                           ; $6af4: $00
    nop                                           ; $6af5: $00
    nop                                           ; $6af6: $00
    nop                                           ; $6af7: $00
    nop                                           ; $6af8: $00
    nop                                           ; $6af9: $00
    nop                                           ; $6afa: $00
    nop                                           ; $6afb: $00
    nop                                           ; $6afc: $00
    nop                                           ; $6afd: $00
    nop                                           ; $6afe: $00
    nop                                           ; $6aff: $00
    ld bc, $0301                                  ; $6b00: $01 $01 $03
    inc bc                                        ; $6b03: $03
    rrca                                          ; $6b04: $0f
    inc c                                         ; $6b05: $0c
    rra                                           ; $6b06: $1f
    ld de, $233e                                  ; $6b07: $11 $3e $23
    ld a, h                                       ; $6b0a: $7c
    ld b, a                                       ; $6b0b: $47
    ld a, h                                       ; $6b0c: $7c
    ld b, a                                       ; $6b0d: $47
    db $fc                                        ; $6b0e: $fc
    add a                                         ; $6b0f: $87
    cp $83                                        ; $6b10: $fe $83
    rst $38                                       ; $6b12: $ff
    pop bc                                        ; $6b13: $c1
    cp a                                          ; $6b14: $bf
    ldh [$9f], a                                  ; $6b15: $e0 $9f
    ld sp, hl                                     ; $6b17: $f9
    ld c, [hl]                                    ; $6b18: $4e
    ld a, [hl]                                    ; $6b19: $7e
    ld e, [hl]                                    ; $6b1a: $5e
    ld a, [hl]                                    ; $6b1b: $7e
    cpl                                           ; $6b1c: $2f
    ccf                                           ; $6b1d: $3f
    cpl                                           ; $6b1e: $2f
    ccf                                           ; $6b1f: $3f
    daa                                           ; $6b20: $27
    ccf                                           ; $6b21: $3f
    ld l, $3e                                     ; $6b22: $2e $3e
    ld e, a                                       ; $6b24: $5f
    ld a, a                                       ; $6b25: $7f
    ld e, [hl]                                    ; $6b26: $5e
    ld a, a                                       ; $6b27: $7f
    ld [hl], e                                    ; $6b28: $73
    ld a, l                                       ; $6b29: $7d
    ld h, b                                       ; $6b2a: $60
    ld a, a                                       ; $6b2b: $7f
    rst $38                                       ; $6b2c: $ff
    rst $38                                       ; $6b2d: $ff
    ld a, a                                       ; $6b2e: $7f
    ld a, a                                       ; $6b2f: $7f
    nop                                           ; $6b30: $00
    nop                                           ; $6b31: $00
    ld h, b                                       ; $6b32: $60
    ld h, b                                       ; $6b33: $60
    ldh [$e0], a                                  ; $6b34: $e0 $e0
    ld [hl], b                                    ; $6b36: $70
    ld d, b                                       ; $6b37: $50
    jr c, jr_014_6b72                             ; $6b38: $38 $38

    ld b, h                                       ; $6b3a: $44
    ld a, h                                       ; $6b3b: $7c
    add d                                         ; $6b3c: $82
    cp $86                                        ; $6b3d: $fe $86
    cp $03                                        ; $6b3f: $fe $03
    db $fd                                        ; $6b41: $fd
    ld h, a                                       ; $6b42: $67
    ei                                            ; $6b43: $fb
    sub b                                         ; $6b44: $90
    rst $38                                       ; $6b45: $ff
    and d                                         ; $6b46: $a2
    rst $38                                       ; $6b47: $ff
    ld b, c                                       ; $6b48: $41
    rst $38                                       ; $6b49: $ff

jr_014_6b4a:
    daa                                           ; $6b4a: $27
    rst $38                                       ; $6b4b: $ff
    ld [de], a                                    ; $6b4c: $12
    cp $12                                        ; $6b4d: $fe $12
    cp $1c                                        ; $6b4f: $fe $1c
    db $fc                                        ; $6b51: $fc

jr_014_6b52:
    ld [$c8f8], sp                                ; $6b52: $08 $f8 $c8
    ld hl, sp-$7c                                 ; $6b55: $f8 $84
    db $fc                                        ; $6b57: $fc
    ld b, h                                       ; $6b58: $44
    ld a, h                                       ; $6b59: $7c
    ld b, h                                       ; $6b5a: $44
    ld a, h                                       ; $6b5b: $7c
    ld [hl+], a                                   ; $6b5c: $22
    ld a, $1a                                     ; $6b5d: $3e $1a
    ld e, $06                                     ; $6b5f: $1e $06
    ld b, $03                                     ; $6b61: $06 $03
    inc bc                                        ; $6b63: $03
    ld bc, $8001                                  ; $6b64: $01 $01 $80
    add b                                         ; $6b67: $80
    add b                                         ; $6b68: $80
    add b                                         ; $6b69: $80
    db $fc                                        ; $6b6a: $fc
    db $fc                                        ; $6b6b: $fc
    rst $38                                       ; $6b6c: $ff
    rst $38                                       ; $6b6d: $ff
    db $fc                                        ; $6b6e: $fc
    db $fc                                        ; $6b6f: $fc
    nop                                           ; $6b70: $00
    nop                                           ; $6b71: $00

jr_014_6b72:
    nop                                           ; $6b72: $00
    nop                                           ; $6b73: $00
    nop                                           ; $6b74: $00
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
    nop                                           ; $6b80: $00
    nop                                           ; $6b81: $00
    nop                                           ; $6b82: $00
    nop                                           ; $6b83: $00
    add b                                         ; $6b84: $80
    add b                                         ; $6b85: $80
    add b                                         ; $6b86: $80
    add b                                         ; $6b87: $80
    nop                                           ; $6b88: $00
    nop                                           ; $6b89: $00
    nop                                           ; $6b8a: $00
    nop                                           ; $6b8b: $00
    nop                                           ; $6b8c: $00
    nop                                           ; $6b8d: $00
    nop                                           ; $6b8e: $00
    nop                                           ; $6b8f: $00
    nop                                           ; $6b90: $00
    nop                                           ; $6b91: $00
    nop                                           ; $6b92: $00
    nop                                           ; $6b93: $00
    nop                                           ; $6b94: $00
    nop                                           ; $6b95: $00
    nop                                           ; $6b96: $00
    nop                                           ; $6b97: $00
    nop                                           ; $6b98: $00
    nop                                           ; $6b99: $00
    nop                                           ; $6b9a: $00
    nop                                           ; $6b9b: $00
    nop                                           ; $6b9c: $00
    nop                                           ; $6b9d: $00
    nop                                           ; $6b9e: $00
    nop                                           ; $6b9f: $00
    nop                                           ; $6ba0: $00
    nop                                           ; $6ba1: $00
    nop                                           ; $6ba2: $00
    nop                                           ; $6ba3: $00
    add b                                         ; $6ba4: $80
    add b                                         ; $6ba5: $80
    adc $ce                                       ; $6ba6: $ce $ce
    ld [hl], l                                    ; $6ba8: $75
    ld a, e                                       ; $6ba9: $7b
    ccf                                           ; $6baa: $3f
    ccf                                           ; $6bab: $3f
    cp $fe                                        ; $6bac: $fe $fe
    nop                                           ; $6bae: $00
    nop                                           ; $6baf: $00
    nop                                           ; $6bb0: $00
    nop                                           ; $6bb1: $00
    nop                                           ; $6bb2: $00
    nop                                           ; $6bb3: $00
    nop                                           ; $6bb4: $00
    nop                                           ; $6bb5: $00
    nop                                           ; $6bb6: $00
    nop                                           ; $6bb7: $00
    nop                                           ; $6bb8: $00
    nop                                           ; $6bb9: $00
    nop                                           ; $6bba: $00
    nop                                           ; $6bbb: $00
    nop                                           ; $6bbc: $00
    nop                                           ; $6bbd: $00
    nop                                           ; $6bbe: $00
    nop                                           ; $6bbf: $00
    rlca                                          ; $6bc0: $07
    rlca                                          ; $6bc1: $07
    rra                                           ; $6bc2: $1f
    add hl, de                                    ; $6bc3: $19
    daa                                           ; $6bc4: $27
    ld a, $23                                     ; $6bc5: $3e $23
    ld a, $41                                     ; $6bc7: $3e $41
    ld a, a                                       ; $6bc9: $7f
    ld b, c                                       ; $6bca: $41
    ld a, a                                       ; $6bcb: $7f
    pop hl                                        ; $6bcc: $e1
    cp a                                          ; $6bcd: $bf
    pop af                                        ; $6bce: $f1
    sbc a                                         ; $6bcf: $9f
    ldh a, [$9f]                                  ; $6bd0: $f0 $9f
    ld hl, sp-$31                                 ; $6bd2: $f8 $cf
    cp b                                          ; $6bd4: $b8
    rst $28                                       ; $6bd5: $ef
    sbc [hl]                                      ; $6bd6: $9e
    rst $30                                       ; $6bd7: $f7
    ld c, a                                       ; $6bd8: $4f
    ld a, a                                       ; $6bd9: $7f
    ld e, [hl]                                    ; $6bda: $5e
    ld a, a                                       ; $6bdb: $7f
    ld l, $3f                                     ; $6bdc: $2e $3f
    cpl                                           ; $6bde: $2f
    ccf                                           ; $6bdf: $3f
    daa                                           ; $6be0: $27
    ccf                                           ; $6be1: $3f
    ld l, $3e                                     ; $6be2: $2e $3e
    ld e, a                                       ; $6be4: $5f
    ld a, a                                       ; $6be5: $7f
    ld e, [hl]                                    ; $6be6: $5e
    ld a, a                                       ; $6be7: $7f
    ld [hl], e                                    ; $6be8: $73
    ld a, l                                       ; $6be9: $7d
    ld h, b                                       ; $6bea: $60
    ld a, a                                       ; $6beb: $7f
    rst $38                                       ; $6bec: $ff
    rst $38                                       ; $6bed: $ff
    ld a, a                                       ; $6bee: $7f
    ld a, a                                       ; $6bef: $7f
    nop                                           ; $6bf0: $00
    nop                                           ; $6bf1: $00
    ld h, b                                       ; $6bf2: $60
    ld h, b                                       ; $6bf3: $60
    ldh [$e0], a                                  ; $6bf4: $e0 $e0
    ld [hl], b                                    ; $6bf6: $70
    ld d, b                                       ; $6bf7: $50
    jr c, jr_014_6c32                             ; $6bf8: $38 $38

    ld b, h                                       ; $6bfa: $44
    ld a, h                                       ; $6bfb: $7c
    add d                                         ; $6bfc: $82
    cp $86                                        ; $6bfd: $fe $86
    cp $03                                        ; $6bff: $fe $03
    db $fd                                        ; $6c01: $fd
    ld h, a                                       ; $6c02: $67
    ei                                            ; $6c03: $fb
    sub b                                         ; $6c04: $90
    rst $38                                       ; $6c05: $ff
    and d                                         ; $6c06: $a2
    rst $38                                       ; $6c07: $ff
    pop bc                                        ; $6c08: $c1
    ld a, a                                       ; $6c09: $7f
    rst $20                                       ; $6c0a: $e7
    ld a, a                                       ; $6c0b: $7f
    jp nc, $f27e                                  ; $6c0c: $d2 $7e $f2

    ld a, $ec                                     ; $6c0f: $3e $ec
    cp h                                          ; $6c11: $bc
    ld b, h                                       ; $6c12: $44
    db $fc                                        ; $6c13: $fc
    ld b, h                                       ; $6c14: $44
    db $fc                                        ; $6c15: $fc
    ld c, b                                       ; $6c16: $48
    ld hl, sp+$38                                 ; $6c17: $f8 $38
    ld hl, sp+$78                                 ; $6c19: $f8 $78
    add sp, $78                                   ; $6c1b: $e8 $78
    add sp, -$50                                  ; $6c1d: $e8 $b0
    ldh a, [$fe]                                  ; $6c1f: $f0 $fe
    cp $17                                        ; $6c21: $fe $17
    dec de                                        ; $6c23: $1b
    rra                                           ; $6c24: $1f
    rra                                           ; $6c25: $1f
    adc [hl]                                      ; $6c26: $8e
    adc [hl]                                      ; $6c27: $8e
    add b                                         ; $6c28: $80
    add b                                         ; $6c29: $80
    db $fc                                        ; $6c2a: $fc
    db $fc                                        ; $6c2b: $fc
    rst $38                                       ; $6c2c: $ff
    rst $38                                       ; $6c2d: $ff
    db $fc                                        ; $6c2e: $fc
    db $fc                                        ; $6c2f: $fc
    nop                                           ; $6c30: $00
    nop                                           ; $6c31: $00

jr_014_6c32:
    nop                                           ; $6c32: $00
    nop                                           ; $6c33: $00
    nop                                           ; $6c34: $00
    nop                                           ; $6c35: $00
    nop                                           ; $6c36: $00
    nop                                           ; $6c37: $00
    nop                                           ; $6c38: $00
    nop                                           ; $6c39: $00
    nop                                           ; $6c3a: $00
    nop                                           ; $6c3b: $00
    nop                                           ; $6c3c: $00
    nop                                           ; $6c3d: $00
    nop                                           ; $6c3e: $00
    nop                                           ; $6c3f: $00
    nop                                           ; $6c40: $00
    nop                                           ; $6c41: $00
    nop                                           ; $6c42: $00
    nop                                           ; $6c43: $00
    add b                                         ; $6c44: $80
    add b                                         ; $6c45: $80
    add b                                         ; $6c46: $80
    add b                                         ; $6c47: $80
    nop                                           ; $6c48: $00
    nop                                           ; $6c49: $00
    nop                                           ; $6c4a: $00
    nop                                           ; $6c4b: $00
    nop                                           ; $6c4c: $00
    nop                                           ; $6c4d: $00
    nop                                           ; $6c4e: $00
    nop                                           ; $6c4f: $00
    nop                                           ; $6c50: $00
    nop                                           ; $6c51: $00
    nop                                           ; $6c52: $00
    nop                                           ; $6c53: $00
    nop                                           ; $6c54: $00
    nop                                           ; $6c55: $00
    nop                                           ; $6c56: $00
    nop                                           ; $6c57: $00
    nop                                           ; $6c58: $00
    nop                                           ; $6c59: $00
    nop                                           ; $6c5a: $00
    nop                                           ; $6c5b: $00
    nop                                           ; $6c5c: $00
    nop                                           ; $6c5d: $00
    nop                                           ; $6c5e: $00
    nop                                           ; $6c5f: $00
    inc bc                                        ; $6c60: $03
    inc bc                                        ; $6c61: $03
    ccf                                           ; $6c62: $3f
    dec a                                         ; $6c63: $3d
    ld b, a                                       ; $6c64: $47
    ld a, l                                       ; $6c65: $7d
    add a                                         ; $6c66: $87
    db $fd                                        ; $6c67: $fd
    add e                                         ; $6c68: $83
    cp $83                                        ; $6c69: $fe $83
    cp $c1                                        ; $6c6b: $fe $c1
    rst $38                                       ; $6c6d: $ff
    and $bf                                       ; $6c6e: $e6 $bf
    cp $9f                                        ; $6c70: $fe $9f
    cp $db                                        ; $6c72: $fe $db
    cp e                                          ; $6c74: $bb
    rst $28                                       ; $6c75: $ef
    sbc a                                         ; $6c76: $9f
    rst $38                                       ; $6c77: $ff
    ld b, h                                       ; $6c78: $44
    ld a, a                                       ; $6c79: $7f
    ld e, [hl]                                    ; $6c7a: $5e
    ld a, a                                       ; $6c7b: $7f
    cpl                                           ; $6c7c: $2f
    ccf                                           ; $6c7d: $3f
    cpl                                           ; $6c7e: $2f
    ccf                                           ; $6c7f: $3f
    daa                                           ; $6c80: $27
    ccf                                           ; $6c81: $3f
    ld e, a                                       ; $6c82: $5f
    ld a, a                                       ; $6c83: $7f
    ld e, a                                       ; $6c84: $5f
    ld a, a                                       ; $6c85: $7f
    ld e, [hl]                                    ; $6c86: $5e
    ld a, a                                       ; $6c87: $7f
    ld [hl], e                                    ; $6c88: $73
    ld a, l                                       ; $6c89: $7d
    ld h, b                                       ; $6c8a: $60
    ld a, a                                       ; $6c8b: $7f
    rst $38                                       ; $6c8c: $ff
    rst $38                                       ; $6c8d: $ff
    ld a, a                                       ; $6c8e: $7f
    ld a, a                                       ; $6c8f: $7f
    nop                                           ; $6c90: $00
    nop                                           ; $6c91: $00
    ld h, b                                       ; $6c92: $60
    ld h, b                                       ; $6c93: $60
    ldh [$e0], a                                  ; $6c94: $e0 $e0
    ld [hl], b                                    ; $6c96: $70
    ld d, b                                       ; $6c97: $50
    jr c, jr_014_6cd2                             ; $6c98: $38 $38

    ld b, h                                       ; $6c9a: $44
    ld a, h                                       ; $6c9b: $7c
    add d                                         ; $6c9c: $82
    cp $86                                        ; $6c9d: $fe $86
    cp $03                                        ; $6c9f: $fe $03
    db $fd                                        ; $6ca1: $fd
    ld h, a                                       ; $6ca2: $67
    ei                                            ; $6ca3: $fb
    sub b                                         ; $6ca4: $90
    rst $38                                       ; $6ca5: $ff
    and d                                         ; $6ca6: $a2
    rst $38                                       ; $6ca7: $ff
    pop bc                                        ; $6ca8: $c1
    rst $38                                       ; $6ca9: $ff
    and a                                         ; $6caa: $a7
    rst $38                                       ; $6cab: $ff
    jp nc, $f27e                                  ; $6cac: $d2 $7e $f2

    cp [hl]                                       ; $6caf: $be
    db $ec                                        ; $6cb0: $ec
    db $fc                                        ; $6cb1: $fc
    ld b, h                                       ; $6cb2: $44
    db $fc                                        ; $6cb3: $fc
    ld h, h                                       ; $6cb4: $64
    db $fc                                        ; $6cb5: $fc
    ld a, b                                       ; $6cb6: $78
    ret c                                         ; $6cb7: $d8

    ld a, b                                       ; $6cb8: $78
    ret z                                         ; $6cb9: $c8

    ldh a, [$90]                                  ; $6cba: $f0 $90
    ldh [$e0], a                                  ; $6cbc: $e0 $e0
    add b                                         ; $6cbe: $80
    add b                                         ; $6cbf: $80
    nop                                           ; $6cc0: $00
    nop                                           ; $6cc1: $00
    nop                                           ; $6cc2: $00
    nop                                           ; $6cc3: $00
    nop                                           ; $6cc4: $00
    nop                                           ; $6cc5: $00
    add b                                         ; $6cc6: $80
    add b                                         ; $6cc7: $80
    add b                                         ; $6cc8: $80
    add b                                         ; $6cc9: $80
    db $fc                                        ; $6cca: $fc
    db $fc                                        ; $6ccb: $fc
    cp $fe                                        ; $6ccc: $fe $fe
    db $fc                                        ; $6cce: $fc
    db $fc                                        ; $6ccf: $fc
    nop                                           ; $6cd0: $00
    nop                                           ; $6cd1: $00

jr_014_6cd2:
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
    add b                                         ; $6ce4: $80
    add b                                         ; $6ce5: $80
    add b                                         ; $6ce6: $80
    add b                                         ; $6ce7: $80
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
    ld bc, $0101                                  ; $6d02: $01 $01 $01
    ld bc, $0101                                  ; $6d05: $01 $01 $01
    ld bc, $0101                                  ; $6d08: $01 $01 $01
    ld bc, $0101                                  ; $6d0b: $01 $01 $01
    ld bc, $0001                                  ; $6d0e: $01 $01 $00
    nop                                           ; $6d11: $00
    nop                                           ; $6d12: $00
    nop                                           ; $6d13: $00
    ld bc, $0001                                  ; $6d14: $01 $01 $00
    nop                                           ; $6d17: $00
    nop                                           ; $6d18: $00
    nop                                           ; $6d19: $00
    nop                                           ; $6d1a: $00
    nop                                           ; $6d1b: $00
    ld bc, $0101                                  ; $6d1c: $01 $01 $01
    ld bc, $c3c2                                  ; $6d1f: $01 $c2 $c3
    ld a, [hl]                                    ; $6d22: $7e
    rst $38                                       ; $6d23: $ff
    rst $00                                       ; $6d24: $c7
    ld a, l                                       ; $6d25: $7d
    ld b, a                                       ; $6d26: $47
    db $fd                                        ; $6d27: $fd
    rst $28                                       ; $6d28: $ef
    ld sp, hl                                     ; $6d29: $f9
    ccf                                           ; $6d2a: $3f
    ld sp, hl                                     ; $6d2b: $f9
    rra                                           ; $6d2c: $1f
    db $fc                                        ; $6d2d: $fc
    dec de                                        ; $6d2e: $1b
    cp $ab                                        ; $6d2f: $fe $ab
    rst $38                                       ; $6d31: $ff
    rst $20                                       ; $6d32: $e7
    db $fc                                        ; $6d33: $fc
    cp a                                          ; $6d34: $bf
    ld hl, sp-$71                                 ; $6d35: $f8 $8f
    db $fc                                        ; $6d37: $fc
    ld e, a                                       ; $6d38: $5f
    ld a, a                                       ; $6d39: $7f
    ld c, a                                       ; $6d3a: $4f
    ld a, a                                       ; $6d3b: $7f
    cpl                                           ; $6d3c: $2f
    ccf                                           ; $6d3d: $3f
    cpl                                           ; $6d3e: $2f
    ccf                                           ; $6d3f: $3f
    daa                                           ; $6d40: $27
    ccf                                           ; $6d41: $3f
    ld e, a                                       ; $6d42: $5f
    ld a, a                                       ; $6d43: $7f
    ld e, a                                       ; $6d44: $5f
    ld a, a                                       ; $6d45: $7f
    ld e, [hl]                                    ; $6d46: $5e
    ld a, a                                       ; $6d47: $7f
    ld [hl], e                                    ; $6d48: $73
    ld a, l                                       ; $6d49: $7d
    ld h, b                                       ; $6d4a: $60
    ld a, a                                       ; $6d4b: $7f
    rst $38                                       ; $6d4c: $ff
    rst $38                                       ; $6d4d: $ff
    ld a, a                                       ; $6d4e: $7f
    ld a, a                                       ; $6d4f: $7f
    nop                                           ; $6d50: $00
    nop                                           ; $6d51: $00
    ret nz                                        ; $6d52: $c0

    ret nz                                        ; $6d53: $c0

    ret nz                                        ; $6d54: $c0

    ret nz                                        ; $6d55: $c0

    ldh [$a0], a                                  ; $6d56: $e0 $a0
    ld [hl], b                                    ; $6d58: $70
    ld [hl], b                                    ; $6d59: $70
    adc b                                         ; $6d5a: $88
    ld hl, sp+$04                                 ; $6d5b: $f8 $04
    db $fc                                        ; $6d5d: $fc
    inc c                                         ; $6d5e: $0c
    db $fc                                        ; $6d5f: $fc
    ld b, $fa                                     ; $6d60: $06 $fa
    adc $f6                                       ; $6d62: $ce $f6
    ld hl, $45ff                                  ; $6d64: $21 $ff $45
    rst $38                                       ; $6d67: $ff
    add d                                         ; $6d68: $82
    cp $4e                                        ; $6d69: $fe $4e
    cp $e4                                        ; $6d6b: $fe $e4
    db $fc                                        ; $6d6d: $fc
    call c, $847c                                 ; $6d6e: $dc $7c $84
    db $fc                                        ; $6d71: $fc
    adc b                                         ; $6d72: $88
    ld hl, sp-$38                                 ; $6d73: $f8 $c8
    ld a, b                                       ; $6d75: $78
    ldh a, [rSVBK]                                ; $6d76: $f0 $70
    add b                                         ; $6d78: $80
    add b                                         ; $6d79: $80
    add b                                         ; $6d7a: $80
    add b                                         ; $6d7b: $80
    add b                                         ; $6d7c: $80
    add b                                         ; $6d7d: $80
    add b                                         ; $6d7e: $80
    add b                                         ; $6d7f: $80
    nop                                           ; $6d80: $00
    nop                                           ; $6d81: $00
    nop                                           ; $6d82: $00
    nop                                           ; $6d83: $00
    nop                                           ; $6d84: $00
    nop                                           ; $6d85: $00
    add b                                         ; $6d86: $80
    add b                                         ; $6d87: $80
    add b                                         ; $6d88: $80
    add b                                         ; $6d89: $80
    db $fc                                        ; $6d8a: $fc
    db $fc                                        ; $6d8b: $fc
    cp $fe                                        ; $6d8c: $fe $fe
    db $fc                                        ; $6d8e: $fc
    db $fc                                        ; $6d8f: $fc
    ld [bc], a                                    ; $6d90: $02
    ld [bc], a                                    ; $6d91: $02
    rlca                                          ; $6d92: $07
    dec b                                         ; $6d93: $05
    dec b                                         ; $6d94: $05
    rlca                                          ; $6d95: $07
    rlca                                          ; $6d96: $07
    rlca                                          ; $6d97: $07
    inc bc                                        ; $6d98: $03
    inc bc                                        ; $6d99: $03
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
    ld bc, $0101                                  ; $6da6: $01 $01 $01
    ld bc, $0101                                  ; $6da9: $01 $01 $01
    nop                                           ; $6dac: $00
    nop                                           ; $6dad: $00
    nop                                           ; $6dae: $00
    nop                                           ; $6daf: $00
    nop                                           ; $6db0: $00
    nop                                           ; $6db1: $00
    nop                                           ; $6db2: $00
    nop                                           ; $6db3: $00
    ld bc, $0001                                  ; $6db4: $01 $01 $00
    nop                                           ; $6db7: $00
    add b                                         ; $6db8: $80
    add b                                         ; $6db9: $80
    ret nz                                        ; $6dba: $c0

    ret nz                                        ; $6dbb: $c0

    ld h, c                                       ; $6dbc: $61
    ld h, c                                       ; $6dbd: $61
    ld d, c                                       ; $6dbe: $51
    ld [hl], c                                    ; $6dbf: $71
    ld c, d                                       ; $6dc0: $4a
    ld a, e                                       ; $6dc1: $7b
    ld b, [hl]                                    ; $6dc2: $46
    ld a, a                                       ; $6dc3: $7f
    xor a                                         ; $6dc4: $af
    ld sp, hl                                     ; $6dc5: $f9
    rra                                           ; $6dc6: $1f
    ld hl, sp+$0f                                 ; $6dc7: $f8 $0f
    ld a, [$f71f]                                 ; $6dc9: $fa $1f $f7
    cp $e3                                        ; $6dcc: $fe $e3
    cp $83                                        ; $6dce: $fe $83
    rst $38                                       ; $6dd0: $ff
    pop bc                                        ; $6dd1: $c1
    rst $38                                       ; $6dd2: $ff
    pop hl                                        ; $6dd3: $e1
    sbc a                                         ; $6dd4: $9f
    ldh a, [$8f]                                  ; $6dd5: $f0 $8f
    ld sp, hl                                     ; $6dd7: $f9
    sub a                                         ; $6dd8: $97
    rst $38                                       ; $6dd9: $ff
    ld e, a                                       ; $6dda: $5f
    ld a, a                                       ; $6ddb: $7f
    ld e, a                                       ; $6ddc: $5f
    ld a, a                                       ; $6ddd: $7f
    ld e, a                                       ; $6dde: $5f
    ld a, a                                       ; $6ddf: $7f
    ld c, a                                       ; $6de0: $4f
    ld a, a                                       ; $6de1: $7f
    ld e, a                                       ; $6de2: $5f
    ld a, a                                       ; $6de3: $7f
    ld e, a                                       ; $6de4: $5f
    ld a, a                                       ; $6de5: $7f
    ld e, [hl]                                    ; $6de6: $5e
    ld a, a                                       ; $6de7: $7f
    ld [hl], e                                    ; $6de8: $73
    ld a, l                                       ; $6de9: $7d
    ld h, b                                       ; $6dea: $60
    ld a, a                                       ; $6deb: $7f
    rst $38                                       ; $6dec: $ff
    rst $38                                       ; $6ded: $ff
    ld a, a                                       ; $6dee: $7f
    ld a, a                                       ; $6def: $7f
    nop                                           ; $6df0: $00
    nop                                           ; $6df1: $00
    ret nz                                        ; $6df2: $c0

    ret nz                                        ; $6df3: $c0

    ret nz                                        ; $6df4: $c0

    ret nz                                        ; $6df5: $c0

    ldh [$a0], a                                  ; $6df6: $e0 $a0
    ld [hl], b                                    ; $6df8: $70
    ld [hl], b                                    ; $6df9: $70
    adc b                                         ; $6dfa: $88
    ld hl, sp+$04                                 ; $6dfb: $f8 $04
    db $fc                                        ; $6dfd: $fc
    inc c                                         ; $6dfe: $0c
    db $fc                                        ; $6dff: $fc
    ld b, $fa                                     ; $6e00: $06 $fa
    adc $f6                                       ; $6e02: $ce $f6
    ld hl, $85ff                                  ; $6e04: $21 $ff $85
    rst $38                                       ; $6e07: $ff
    jp nz, $2efe                                  ; $6e08: $c2 $fe $2e

    cp $14                                        ; $6e0b: $fe $14
    db $fc                                        ; $6e0d: $fc
    inc d                                         ; $6e0e: $14
    db $fc                                        ; $6e0f: $fc
    jr @-$06                                      ; $6e10: $18 $f8

    db $10                                        ; $6e12: $10
    ldh a, [$e0]                                  ; $6e13: $f0 $e0
    ldh [$80], a                                  ; $6e15: $e0 $80
    add b                                         ; $6e17: $80
    nop                                           ; $6e18: $00
    nop                                           ; $6e19: $00
    nop                                           ; $6e1a: $00
    nop                                           ; $6e1b: $00
    add b                                         ; $6e1c: $80
    add b                                         ; $6e1d: $80
    add b                                         ; $6e1e: $80
    add b                                         ; $6e1f: $80
    add b                                         ; $6e20: $80
    add b                                         ; $6e21: $80
    nop                                           ; $6e22: $00
    nop                                           ; $6e23: $00
    nop                                           ; $6e24: $00
    nop                                           ; $6e25: $00
    add b                                         ; $6e26: $80
    add b                                         ; $6e27: $80
    add b                                         ; $6e28: $80
    add b                                         ; $6e29: $80
    db $fc                                        ; $6e2a: $fc
    db $fc                                        ; $6e2b: $fc
    cp $fe                                        ; $6e2c: $fe $fe
    db $fc                                        ; $6e2e: $fc
    db $fc                                        ; $6e2f: $fc
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
    ld bc, $0301                                  ; $6e40: $01 $01 $03
    inc bc                                        ; $6e43: $03
    rrca                                          ; $6e44: $0f
    dec c                                         ; $6e45: $0d
    rra                                           ; $6e46: $1f
    db $10                                        ; $6e47: $10
    ccf                                           ; $6e48: $3f
    jr nz, jr_014_6eca                            ; $6e49: $20 $7f

    ld b, c                                       ; $6e4b: $41
    ld a, [hl]                                    ; $6e4c: $7e
    ld b, e                                       ; $6e4d: $43
    db $fc                                        ; $6e4e: $fc
    add a                                         ; $6e4f: $87
    db $fc                                        ; $6e50: $fc
    add a                                         ; $6e51: $87
    db $fc                                        ; $6e52: $fc
    rst $00                                       ; $6e53: $c7
    cp [hl]                                       ; $6e54: $be
    di                                            ; $6e55: $f3
    adc [hl]                                      ; $6e56: $8e
    rst $38                                       ; $6e57: $ff
    ld b, d                                       ; $6e58: $42
    ld a, a                                       ; $6e59: $7f
    ld e, e                                       ; $6e5a: $5b
    ld a, a                                       ; $6e5b: $7f
    dec hl                                        ; $6e5c: $2b
    ccf                                           ; $6e5d: $3f
    dec a                                         ; $6e5e: $3d
    ccf                                           ; $6e5f: $3f
    dec e                                         ; $6e60: $1d
    rra                                           ; $6e61: $1f
    dec de                                        ; $6e62: $1b
    rra                                           ; $6e63: $1f
    dec sp                                        ; $6e64: $3b
    ccf                                           ; $6e65: $3f
    ccf                                           ; $6e66: $3f
    ccf                                           ; $6e67: $3f
    ld sp, $7c3e                                  ; $6e68: $31 $3e $7c
    ld a, a                                       ; $6e6b: $7f
    rst $38                                       ; $6e6c: $ff
    rst $38                                       ; $6e6d: $ff
    ld a, a                                       ; $6e6e: $7f
    ld a, a                                       ; $6e6f: $7f
    nop                                           ; $6e70: $00
    nop                                           ; $6e71: $00
    nop                                           ; $6e72: $00
    nop                                           ; $6e73: $00
    ld h, b                                       ; $6e74: $60
    ld h, b                                       ; $6e75: $60
    ldh [$e0], a                                  ; $6e76: $e0 $e0
    ld [hl], b                                    ; $6e78: $70
    ld d, b                                       ; $6e79: $50
    jr c, jr_014_6eb4                             ; $6e7a: $38 $38

    ld b, h                                       ; $6e7c: $44
    ld a, h                                       ; $6e7d: $7c
    add d                                         ; $6e7e: $82
    cp $06                                        ; $6e7f: $fe $06
    cp $03                                        ; $6e81: $fe $03
    db $fd                                        ; $6e83: $fd
    rla                                           ; $6e84: $17
    ei                                            ; $6e85: $fb
    xor b                                         ; $6e86: $a8
    rst $38                                       ; $6e87: $ff
    pop af                                        ; $6e88: $f1
    ld a, a                                       ; $6e89: $7f
    pop hl                                        ; $6e8a: $e1
    rst $38                                       ; $6e8b: $ff
    daa                                           ; $6e8c: $27
    rst $38                                       ; $6e8d: $ff
    ld [de], a                                    ; $6e8e: $12
    cp $12                                        ; $6e8f: $fe $12
    cp $1c                                        ; $6e91: $fe $1c
    db $fc                                        ; $6e93: $fc
    inc h                                         ; $6e94: $24
    db $fc                                        ; $6e95: $fc
    inc [hl]                                      ; $6e96: $34
    db $fc                                        ; $6e97: $fc
    ld c, $fa                                     ; $6e98: $0e $fa
    ld b, $fe                                     ; $6e9a: $06 $fe
    add $fe                                       ; $6e9c: $c6 $fe
    ld [c], a                                     ; $6e9e: $e2
    cp $da                                        ; $6e9f: $fe $da
    sbc $c7                                       ; $6ea1: $de $c7
    rst $00                                       ; $6ea3: $c7
    add c                                         ; $6ea4: $81
    add c                                         ; $6ea5: $81
    ld b, b                                       ; $6ea6: $40
    ret nz                                        ; $6ea7: $c0

    ret nz                                        ; $6ea8: $c0

    ret nz                                        ; $6ea9: $c0

    ld a, h                                       ; $6eaa: $7c
    db $fc                                        ; $6eab: $fc
    rst $38                                       ; $6eac: $ff
    rst $38                                       ; $6ead: $ff
    db $fc                                        ; $6eae: $fc
    db $fc                                        ; $6eaf: $fc
    nop                                           ; $6eb0: $00
    nop                                           ; $6eb1: $00
    nop                                           ; $6eb2: $00
    nop                                           ; $6eb3: $00

jr_014_6eb4:
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
    add b                                         ; $6ec6: $80
    add b                                         ; $6ec7: $80
    add b                                         ; $6ec8: $80
    add b                                         ; $6ec9: $80

jr_014_6eca:
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
    add b                                         ; $6ee4: $80
    add b                                         ; $6ee5: $80
    adc $ce                                       ; $6ee6: $ce $ce
    ld [hl], l                                    ; $6ee8: $75
    ld a, e                                       ; $6ee9: $7b
    ccf                                           ; $6eea: $3f
    ccf                                           ; $6eeb: $3f
    cp $fe                                        ; $6eec: $fe $fe
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
    ld bc, $0f01                                  ; $6f00: $01 $01 $0f
    rrca                                          ; $6f03: $0f
    rla                                           ; $6f04: $17
    dec e                                         ; $6f05: $1d
    rra                                           ; $6f06: $1f
    jr jr_014_6f48                                ; $6f07: $18 $3f

    jr nz, jr_014_6f4a                            ; $6f09: $20 $3f

    jr nz, jr_014_6f8c                            ; $6f0b: $20 $7f

    ld b, b                                       ; $6f0d: $40
    ld a, a                                       ; $6f0e: $7f
    ld b, b                                       ; $6f0f: $40
    rst $38                                       ; $6f10: $ff
    add c                                         ; $6f11: $81
    rst $38                                       ; $6f12: $ff
    pop bc                                        ; $6f13: $c1
    cp a                                          ; $6f14: $bf
    ldh a, [$8f]                                  ; $6f15: $f0 $8f
    rst $38                                       ; $6f17: $ff
    ld b, e                                       ; $6f18: $43
    ld a, a                                       ; $6f19: $7f
    ld e, e                                       ; $6f1a: $5b
    ld a, a                                       ; $6f1b: $7f
    dec l                                         ; $6f1c: $2d
    ccf                                           ; $6f1d: $3f
    cpl                                           ; $6f1e: $2f
    ccf                                           ; $6f1f: $3f
    dec a                                         ; $6f20: $3d
    ccf                                           ; $6f21: $3f
    dec sp                                        ; $6f22: $3b
    ccf                                           ; $6f23: $3f
    dec sp                                        ; $6f24: $3b
    ccf                                           ; $6f25: $3f
    ccf                                           ; $6f26: $3f
    ccf                                           ; $6f27: $3f
    add hl, hl                                    ; $6f28: $29
    ld a, $7e                                     ; $6f29: $3e $7e
    ld a, a                                       ; $6f2b: $7f
    rst $38                                       ; $6f2c: $ff
    rst $38                                       ; $6f2d: $ff
    ld a, a                                       ; $6f2e: $7f
    ld a, a                                       ; $6f2f: $7f
    nop                                           ; $6f30: $00
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    nop                                           ; $6f33: $00
    jr nc, jr_014_6f66                            ; $6f34: $30 $30

    ld [hl], b                                    ; $6f36: $70
    ld [hl], b                                    ; $6f37: $70
    jr c, jr_014_6f62                             ; $6f38: $38 $28

    jr c, jr_014_6f74                             ; $6f3a: $38 $38

    ld e, h                                       ; $6f3c: $5c
    ld a, h                                       ; $6f3d: $7c
    add d                                         ; $6f3e: $82
    cp $02                                        ; $6f3f: $fe $02
    cp $01                                        ; $6f41: $fe $01
    rst $38                                       ; $6f43: $ff
    add hl, bc                                    ; $6f44: $09
    rst $38                                       ; $6f45: $ff
    sub l                                         ; $6f46: $95
    rst $38                                       ; $6f47: $ff

jr_014_6f48:
    reti                                          ; $6f48: $d9


    ld a, a                                       ; $6f49: $7f

jr_014_6f4a:
    ld a, [c]                                     ; $6f4a: $f2
    ld a, $f2                                     ; $6f4b: $3e $f2
    ld a, [hl]                                    ; $6f4d: $7e
    adc h                                         ; $6f4e: $8c
    db $fc                                        ; $6f4f: $fc
    ld [$08f8], sp                                ; $6f50: $08 $f8 $08
    ld hl, sp-$78                                 ; $6f53: $f8 $88
    ld hl, sp-$7c                                 ; $6f55: $f8 $84
    db $fc                                        ; $6f57: $fc
    call nz, $ebfc                                ; $6f58: $c4 $fc $eb
    ei                                            ; $6f5b: $fb
    sbc $dd                                       ; $6f5c: $de $dd
    rst $08                                       ; $6f5e: $cf
    rst $08                                       ; $6f5f: $cf
    rst $00                                       ; $6f60: $c7
    rst $00                                       ; $6f61: $c7

jr_014_6f62:
    add b                                         ; $6f62: $80
    add b                                         ; $6f63: $80
    add b                                         ; $6f64: $80
    add b                                         ; $6f65: $80

jr_014_6f66:
    ld b, b                                       ; $6f66: $40
    ret nz                                        ; $6f67: $c0

    ret nz                                        ; $6f68: $c0

    ret nz                                        ; $6f69: $c0

    ld a, h                                       ; $6f6a: $7c
    db $fc                                        ; $6f6b: $fc
    cp $fe                                        ; $6f6c: $fe $fe
    db $fc                                        ; $6f6e: $fc
    db $fc                                        ; $6f6f: $fc
    nop                                           ; $6f70: $00
    nop                                           ; $6f71: $00
    nop                                           ; $6f72: $00
    nop                                           ; $6f73: $00

jr_014_6f74:
    nop                                           ; $6f74: $00
    nop                                           ; $6f75: $00
    nop                                           ; $6f76: $00
    nop                                           ; $6f77: $00
    nop                                           ; $6f78: $00
    nop                                           ; $6f79: $00
    nop                                           ; $6f7a: $00
    nop                                           ; $6f7b: $00
    add b                                         ; $6f7c: $80
    add b                                         ; $6f7d: $80
    add b                                         ; $6f7e: $80
    add b                                         ; $6f7f: $80
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

jr_014_6f8c:
    nop                                           ; $6f8c: $00
    nop                                           ; $6f8d: $00
    nop                                           ; $6f8e: $00
    nop                                           ; $6f8f: $00
    inc b                                         ; $6f90: $04
    inc b                                         ; $6f91: $04
    ld c, $0a                                     ; $6f92: $0e $0a
    ld a, [bc]                                    ; $6f94: $0a
    ld c, $0e                                     ; $6f95: $0e $0e
    ld c, $06                                     ; $6f97: $0e $06
    ld b, $03                                     ; $6f99: $06 $03
    inc bc                                        ; $6f9b: $03
    ld bc, $0001                                  ; $6f9c: $01 $01 $00
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
    add b                                         ; $6fbc: $80
    add b                                         ; $6fbd: $80
    db $fd                                        ; $6fbe: $fd
    db $fd                                        ; $6fbf: $fd
    ld d, e                                       ; $6fc0: $53
    ld a, a                                       ; $6fc1: $7f
    ld h, a                                       ; $6fc2: $67
    ld a, l                                       ; $6fc3: $7d
    add a                                         ; $6fc4: $87
    db $fc                                        ; $6fc5: $fc
    sbc a                                         ; $6fc6: $9f
    ld hl, sp+$7f                                 ; $6fc7: $f8 $7f
    ld h, b                                       ; $6fc9: $60
    ld a, a                                       ; $6fca: $7f
    ld b, b                                       ; $6fcb: $40
    ld a, a                                       ; $6fcc: $7f
    ld b, b                                       ; $6fcd: $40
    ld a, a                                       ; $6fce: $7f
    ld b, b                                       ; $6fcf: $40
    rst $38                                       ; $6fd0: $ff
    add b                                         ; $6fd1: $80
    rst $38                                       ; $6fd2: $ff
    ret nz                                        ; $6fd3: $c0

    cp a                                          ; $6fd4: $bf
    ldh a, [$8f]                                  ; $6fd5: $f0 $8f
    rst $38                                       ; $6fd7: $ff
    ld d, e                                       ; $6fd8: $53
    ld a, a                                       ; $6fd9: $7f
    ld a, e                                       ; $6fda: $7b
    ld a, a                                       ; $6fdb: $7f
    ld e, l                                       ; $6fdc: $5d
    ld a, a                                       ; $6fdd: $7f
    ld e, a                                       ; $6fde: $5f
    ld a, a                                       ; $6fdf: $7f
    dec l                                         ; $6fe0: $2d
    ccf                                           ; $6fe1: $3f
    dec l                                         ; $6fe2: $2d
    ccf                                           ; $6fe3: $3f
    cpl                                           ; $6fe4: $2f
    ccf                                           ; $6fe5: $3f
    dec a                                         ; $6fe6: $3d
    ld a, $27                                     ; $6fe7: $3e $27
    ccf                                           ; $6fe9: $3f
    ld a, a                                       ; $6fea: $7f
    ld a, a                                       ; $6feb: $7f
    rst $38                                       ; $6fec: $ff
    rst $38                                       ; $6fed: $ff
    ld a, a                                       ; $6fee: $7f
    ld a, a                                       ; $6fef: $7f
    nop                                           ; $6ff0: $00
    nop                                           ; $6ff1: $00
    nop                                           ; $6ff2: $00
    nop                                           ; $6ff3: $00
    jr jr_014_700e                                ; $6ff4: $18 $18

    jr c, jr_014_7030                             ; $6ff6: $38 $38

    jr jr_014_7012                                ; $6ff8: $18 $18

    ld a, h                                       ; $6ffa: $7c
    ld [hl], h                                    ; $6ffb: $74
    sbc h                                         ; $6ffc: $9c
    db $fc                                        ; $6ffd: $fc
    ld [bc], a                                    ; $6ffe: $02
    cp $02                                        ; $6fff: $fe $02
    cp $02                                        ; $7001: $fe $02
    cp $86                                        ; $7003: $fe $86
    cp $c2                                        ; $7005: $fe $c2
    ld a, [hl]                                    ; $7007: $7e
    db $f4                                        ; $7008: $f4
    inc a                                         ; $7009: $3c
    db $fc                                        ; $700a: $fc
    inc e                                         ; $700b: $1c
    add sp, $38                                   ; $700c: $e8 $38

jr_014_700e:
    ret z                                         ; $700e: $c8

    ld a, b                                       ; $700f: $78
    ret z                                         ; $7010: $c8

    ld a, b                                       ; $7011: $78

jr_014_7012:
    ldh a, [rSVBK]                                ; $7012: $f0 $70
    add b                                         ; $7014: $80
    add b                                         ; $7015: $80
    add b                                         ; $7016: $80
    add b                                         ; $7017: $80
    add b                                         ; $7018: $80
    add b                                         ; $7019: $80
    add b                                         ; $701a: $80
    add b                                         ; $701b: $80
    add b                                         ; $701c: $80
    add b                                         ; $701d: $80
    ret nz                                        ; $701e: $c0

    ret nz                                        ; $701f: $c0

    ret nz                                        ; $7020: $c0

    ret nz                                        ; $7021: $c0

    ret nz                                        ; $7022: $c0

    ret nz                                        ; $7023: $c0

    ret nz                                        ; $7024: $c0

    ret nz                                        ; $7025: $c0

    ret nz                                        ; $7026: $c0

    ret nz                                        ; $7027: $c0

    ld h, b                                       ; $7028: $60
    ldh [$bc], a                                  ; $7029: $e0 $bc
    db $fc                                        ; $702b: $fc
    cp $fe                                        ; $702c: $fe $fe
    db $fc                                        ; $702e: $fc
    db $fc                                        ; $702f: $fc

jr_014_7030:
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
    ld bc, $0201                                  ; $703a: $01 $01 $02
    inc bc                                        ; $703d: $03
    inc b                                         ; $703e: $04
    rlca                                          ; $703f: $07
    inc b                                         ; $7040: $04
    rlca                                          ; $7041: $07
    ld [bc], a                                    ; $7042: $02
    inc bc                                        ; $7043: $03
    ld [bc], a                                    ; $7044: $02
    inc bc                                        ; $7045: $03
    ld bc, $0001                                  ; $7046: $01 $01 $00
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
    jr c, jr_014_708e                             ; $7054: $38 $38

    ld a, h                                       ; $7056: $7c
    ld b, h                                       ; $7057: $44
    rst $38                                       ; $7058: $ff
    rst $08                                       ; $7059: $cf
    ld sp, $13ff                                  ; $705a: $31 $ff $13
    rst $38                                       ; $705d: $ff
    ccf                                           ; $705e: $3f
    rst $38                                       ; $705f: $ff
    ld c, h                                       ; $7060: $4c
    rst $38                                       ; $7061: $ff
    ld b, $ff                                     ; $7062: $06 $ff
    rrca                                          ; $7064: $0f
    ld sp, hl                                     ; $7065: $f9
    rrca                                          ; $7066: $0f
    ld hl, sp-$61                                 ; $7067: $f8 $9f
    ldh a, [$7f]                                  ; $7069: $f0 $7f
    ld h, b                                       ; $706b: $60
    ld a, a                                       ; $706c: $7f
    ld b, b                                       ; $706d: $40
    ld a, a                                       ; $706e: $7f
    ld b, b                                       ; $706f: $40
    ld a, a                                       ; $7070: $7f
    ld b, b                                       ; $7071: $40
    ld a, a                                       ; $7072: $7f
    ld h, b                                       ; $7073: $60
    ld e, a                                       ; $7074: $5f
    ld a, a                                       ; $7075: $7f
    ld b, e                                       ; $7076: $43
    ld a, a                                       ; $7077: $7f
    ld c, a                                       ; $7078: $4f
    ld a, a                                       ; $7079: $7f
    ld l, a                                       ; $707a: $6f
    ld a, a                                       ; $707b: $7f
    ld l, a                                       ; $707c: $6f
    ld a, a                                       ; $707d: $7f
    ccf                                           ; $707e: $3f
    ccf                                           ; $707f: $3f
    ld l, $3f                                     ; $7080: $2e $3f
    ld l, $3f                                     ; $7082: $2e $3f
    cpl                                           ; $7084: $2f
    ccf                                           ; $7085: $3f
    ld a, $3f                                     ; $7086: $3e $3f
    daa                                           ; $7088: $27
    ccf                                           ; $7089: $3f
    ld a, a                                       ; $708a: $7f
    ld a, a                                       ; $708b: $7f
    rst $38                                       ; $708c: $ff
    rst $38                                       ; $708d: $ff

jr_014_708e:
    ld a, a                                       ; $708e: $7f
    ld a, a                                       ; $708f: $7f
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    ld h, b                                       ; $7092: $60
    ld h, b                                       ; $7093: $60
    ld [hl], b                                    ; $7094: $70
    ld [hl], b                                    ; $7095: $70
    ldh [$e0], a                                  ; $7096: $e0 $e0
    ldh [$a0], a                                  ; $7098: $e0 $a0
    ldh [$e0], a                                  ; $709a: $e0 $e0
    ld h, b                                       ; $709c: $60
    ldh [$90], a                                  ; $709d: $e0 $90
    ldh a, [$d0]                                  ; $709f: $f0 $d0
    ldh a, [rBCPS]                                ; $70a1: $f0 $68
    ld hl, sp+$38                                 ; $70a3: $f8 $38
    ld hl, sp-$04                                 ; $70a5: $f8 $fc
    db $fc                                        ; $70a7: $fc
    ld [$ef3e], a                                 ; $70a8: $ea $3e $ef
    dec a                                         ; $70ab: $3d
    rst $28                                       ; $70ac: $ef
    ccf                                           ; $70ad: $3f
    di                                            ; $70ae: $f3
    inc sp                                        ; $70af: $33
    ret nz                                        ; $70b0: $c0

    ld b, b                                       ; $70b1: $40
    add b                                         ; $70b2: $80
    add b                                         ; $70b3: $80
    add b                                         ; $70b4: $80
    add b                                         ; $70b5: $80
    add b                                         ; $70b6: $80
    add b                                         ; $70b7: $80
    add b                                         ; $70b8: $80
    add b                                         ; $70b9: $80
    add b                                         ; $70ba: $80
    add b                                         ; $70bb: $80
    ret nz                                        ; $70bc: $c0

    ret nz                                        ; $70bd: $c0

    ret nz                                        ; $70be: $c0

    ret nz                                        ; $70bf: $c0

    ret nz                                        ; $70c0: $c0

    ret nz                                        ; $70c1: $c0

    ret nz                                        ; $70c2: $c0

    ret nz                                        ; $70c3: $c0

    ret nz                                        ; $70c4: $c0

    ret nz                                        ; $70c5: $c0

    ret nz                                        ; $70c6: $c0

    ld b, b                                       ; $70c7: $40
    and b                                         ; $70c8: $a0
    ldh [$bc], a                                  ; $70c9: $e0 $bc
    db $fc                                        ; $70cb: $fc
    cp $fe                                        ; $70cc: $fe $fe
    db $fc                                        ; $70ce: $fc
    db $fc                                        ; $70cf: $fc
    nop                                           ; $70d0: $00
    nop                                           ; $70d1: $00
    nop                                           ; $70d2: $00
    nop                                           ; $70d3: $00
    nop                                           ; $70d4: $00
    nop                                           ; $70d5: $00
    nop                                           ; $70d6: $00
    nop                                           ; $70d7: $00
    nop                                           ; $70d8: $00
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    nop                                           ; $70db: $00
    nop                                           ; $70dc: $00
    nop                                           ; $70dd: $00
    nop                                           ; $70de: $00
    nop                                           ; $70df: $00
    ld bc, $0301                                  ; $70e0: $01 $01 $03
    inc bc                                        ; $70e3: $03
    rrca                                          ; $70e4: $0f
    inc c                                         ; $70e5: $0c
    rra                                           ; $70e6: $1f
    ld de, $233e                                  ; $70e7: $11 $3e $23
    ld a, h                                       ; $70ea: $7c
    ld b, a                                       ; $70eb: $47
    ld a, h                                       ; $70ec: $7c
    ld b, a                                       ; $70ed: $47
    db $fc                                        ; $70ee: $fc
    add a                                         ; $70ef: $87
    cp $83                                        ; $70f0: $fe $83
    rst $38                                       ; $70f2: $ff
    pop bc                                        ; $70f3: $c1
    cp a                                          ; $70f4: $bf
    ldh [$9f], a                                  ; $70f5: $e0 $9f
    ld sp, hl                                     ; $70f7: $f9
    ld c, [hl]                                    ; $70f8: $4e
    ld a, [hl]                                    ; $70f9: $7e
    ld e, [hl]                                    ; $70fa: $5e
    ld a, [hl]                                    ; $70fb: $7e
    cpl                                           ; $70fc: $2f
    ccf                                           ; $70fd: $3f
    cpl                                           ; $70fe: $2f
    ccf                                           ; $70ff: $3f
    daa                                           ; $7100: $27
    ccf                                           ; $7101: $3f
    ld l, $3e                                     ; $7102: $2e $3e
    ld e, a                                       ; $7104: $5f
    ld a, a                                       ; $7105: $7f
    ld e, [hl]                                    ; $7106: $5e
    ld a, a                                       ; $7107: $7f
    ld [hl], e                                    ; $7108: $73
    ld a, l                                       ; $7109: $7d
    ld h, b                                       ; $710a: $60
    ld a, a                                       ; $710b: $7f
    rst $38                                       ; $710c: $ff
    rst $38                                       ; $710d: $ff
    ld a, a                                       ; $710e: $7f
    ld a, a                                       ; $710f: $7f
    nop                                           ; $7110: $00
    nop                                           ; $7111: $00
    ld h, b                                       ; $7112: $60
    ld h, b                                       ; $7113: $60
    ldh [$e0], a                                  ; $7114: $e0 $e0
    ld [hl], b                                    ; $7116: $70
    ld d, b                                       ; $7117: $50
    jr c, jr_014_7152                             ; $7118: $38 $38

    ld b, h                                       ; $711a: $44
    ld a, h                                       ; $711b: $7c
    add d                                         ; $711c: $82
    cp $86                                        ; $711d: $fe $86
    cp $03                                        ; $711f: $fe $03
    db $fd                                        ; $7121: $fd
    ld h, a                                       ; $7122: $67
    ei                                            ; $7123: $fb
    sub b                                         ; $7124: $90
    rst $38                                       ; $7125: $ff
    and d                                         ; $7126: $a2
    rst $38                                       ; $7127: $ff
    ld b, c                                       ; $7128: $41
    rst $38                                       ; $7129: $ff
    daa                                           ; $712a: $27
    rst $38                                       ; $712b: $ff
    ld [de], a                                    ; $712c: $12
    cp $12                                        ; $712d: $fe $12
    cp $1c                                        ; $712f: $fe $1c
    db $fc                                        ; $7131: $fc
    ld [$c8f8], sp                                ; $7132: $08 $f8 $c8
    ld hl, sp-$7c                                 ; $7135: $f8 $84
    db $fc                                        ; $7137: $fc
    ld b, h                                       ; $7138: $44
    ld a, h                                       ; $7139: $7c
    ld b, h                                       ; $713a: $44
    ld a, h                                       ; $713b: $7c
    ld [hl+], a                                   ; $713c: $22
    ld a, $1a                                     ; $713d: $3e $1a
    ld e, $06                                     ; $713f: $1e $06
    ld b, $03                                     ; $7141: $06 $03
    inc bc                                        ; $7143: $03
    ld bc, $8001                                  ; $7144: $01 $01 $80
    add b                                         ; $7147: $80
    add b                                         ; $7148: $80
    add b                                         ; $7149: $80
    db $fc                                        ; $714a: $fc
    db $fc                                        ; $714b: $fc
    rst $38                                       ; $714c: $ff
    rst $38                                       ; $714d: $ff
    db $fc                                        ; $714e: $fc
    db $fc                                        ; $714f: $fc
    nop                                           ; $7150: $00
    nop                                           ; $7151: $00

jr_014_7152:
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
    add b                                         ; $7164: $80
    add b                                         ; $7165: $80
    add b                                         ; $7166: $80
    add b                                         ; $7167: $80
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
    add b                                         ; $7184: $80
    add b                                         ; $7185: $80
    call z, $b6cc                                 ; $7186: $cc $cc $b6
    ld a, [$7e62]                                 ; $7189: $fa $62 $7e
    db $fc                                        ; $718c: $fc
    db $fc                                        ; $718d: $fc
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
    ld bc, $0301                                  ; $71a0: $01 $01 $03
    inc bc                                        ; $71a3: $03
    rrca                                          ; $71a4: $0f
    dec c                                         ; $71a5: $0d
    rra                                           ; $71a6: $1f
    db $10                                        ; $71a7: $10
    ccf                                           ; $71a8: $3f
    jr nz, jr_014_722a                            ; $71a9: $20 $7f

    ld b, c                                       ; $71ab: $41
    ld a, [hl]                                    ; $71ac: $7e
    ld b, e                                       ; $71ad: $43
    db $fc                                        ; $71ae: $fc
    add a                                         ; $71af: $87
    db $fc                                        ; $71b0: $fc
    add a                                         ; $71b1: $87
    db $fc                                        ; $71b2: $fc
    rst $00                                       ; $71b3: $c7
    cp [hl]                                       ; $71b4: $be
    di                                            ; $71b5: $f3
    adc [hl]                                      ; $71b6: $8e
    rst $38                                       ; $71b7: $ff
    ld b, d                                       ; $71b8: $42
    ld a, a                                       ; $71b9: $7f
    ld e, e                                       ; $71ba: $5b
    ld a, a                                       ; $71bb: $7f
    dec hl                                        ; $71bc: $2b
    ccf                                           ; $71bd: $3f
    dec a                                         ; $71be: $3d
    ccf                                           ; $71bf: $3f
    dec a                                         ; $71c0: $3d
    ccf                                           ; $71c1: $3f
    dec sp                                        ; $71c2: $3b
    ccf                                           ; $71c3: $3f
    dec sp                                        ; $71c4: $3b
    ccf                                           ; $71c5: $3f
    ccf                                           ; $71c6: $3f
    ccf                                           ; $71c7: $3f
    ld sp, $7c3e                                  ; $71c8: $31 $3e $7c
    ld a, a                                       ; $71cb: $7f
    rst $38                                       ; $71cc: $ff
    rst $38                                       ; $71cd: $ff
    ld a, a                                       ; $71ce: $7f
    ld a, a                                       ; $71cf: $7f
    nop                                           ; $71d0: $00
    nop                                           ; $71d1: $00
    nop                                           ; $71d2: $00
    nop                                           ; $71d3: $00
    ld h, b                                       ; $71d4: $60
    ld h, b                                       ; $71d5: $60
    ldh [$e0], a                                  ; $71d6: $e0 $e0
    ld [hl], b                                    ; $71d8: $70
    ld d, b                                       ; $71d9: $50
    jr c, jr_014_7214                             ; $71da: $38 $38

    ld b, h                                       ; $71dc: $44
    ld a, h                                       ; $71dd: $7c
    add d                                         ; $71de: $82
    cp $06                                        ; $71df: $fe $06
    cp $03                                        ; $71e1: $fe $03
    db $fd                                        ; $71e3: $fd
    rla                                           ; $71e4: $17
    ei                                            ; $71e5: $fb
    xor b                                         ; $71e6: $a8
    rst $38                                       ; $71e7: $ff
    pop af                                        ; $71e8: $f1
    ld a, a                                       ; $71e9: $7f
    pop hl                                        ; $71ea: $e1
    rst $38                                       ; $71eb: $ff
    daa                                           ; $71ec: $27
    rst $38                                       ; $71ed: $ff
    ld [de], a                                    ; $71ee: $12
    cp $12                                        ; $71ef: $fe $12
    cp $1c                                        ; $71f1: $fe $1c
    db $fc                                        ; $71f3: $fc
    inc h                                         ; $71f4: $24
    db $fc                                        ; $71f5: $fc
    inc [hl]                                      ; $71f6: $34
    db $fc                                        ; $71f7: $fc
    ld c, $fa                                     ; $71f8: $0e $fa
    ld b, $fe                                     ; $71fa: $06 $fe
    add $fe                                       ; $71fc: $c6 $fe
    ld [c], a                                     ; $71fe: $e2
    cp $da                                        ; $71ff: $fe $da
    sbc $87                                       ; $7201: $de $87
    add a                                         ; $7203: $87
    add c                                         ; $7204: $81
    add c                                         ; $7205: $81
    ld b, b                                       ; $7206: $40
    ret nz                                        ; $7207: $c0

    ret nz                                        ; $7208: $c0

    ret nz                                        ; $7209: $c0

    ld a, h                                       ; $720a: $7c
    db $fc                                        ; $720b: $fc
    rst $38                                       ; $720c: $ff
    rst $38                                       ; $720d: $ff
    db $fc                                        ; $720e: $fc
    db $fc                                        ; $720f: $fc
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00

jr_014_7214:
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
    add b                                         ; $7226: $80
    add b                                         ; $7227: $80
    add b                                         ; $7228: $80
    add b                                         ; $7229: $80

jr_014_722a:
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
    add b                                         ; $7244: $80
    add b                                         ; $7245: $80
    call z, $b6cc                                 ; $7246: $cc $cc $b6
    ld a, [$7e62]                                 ; $7249: $fa $62 $7e
    db $fc                                        ; $724c: $fc
    db $fc                                        ; $724d: $fc
    nop                                           ; $724e: $00
    nop                                           ; $724f: $00
    ld [hl], b                                    ; $7250: $70
    ld [hl], d                                    ; $7251: $72
    jr nc, jr_014_72c7                            ; $7252: $30 $73

    ret nc                                        ; $7254: $d0

    ld [hl], e                                    ; $7255: $73
    ld [hl], b                                    ; $7256: $70
    ld [hl], h                                    ; $7257: $74
    jr nc, @+$77                                  ; $7258: $30 $75

    ldh a, [$75]                                  ; $725a: $f0 $75
    or b                                          ; $725c: $b0
    halt                                          ; $725d: $76
    ld [hl], b                                    ; $725e: $70
    ld [hl], a                                    ; $725f: $77
    jr nc, jr_014_72da                            ; $7260: $30 $78

    ret nc                                        ; $7262: $d0

    ld a, b                                       ; $7263: $78
    sub b                                         ; $7264: $90
    ld a, c                                       ; $7265: $79
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
    inc bc                                        ; $7278: $03
    inc bc                                        ; $7279: $03
    ld [bc], a                                    ; $727a: $02
    inc bc                                        ; $727b: $03
    ld bc, $0001                                  ; $727c: $01 $01 $00
    nop                                           ; $727f: $00
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    ld bc, $0101                                  ; $7282: $01 $01 $01
    ld bc, $0000                                  ; $7285: $01 $00 $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    ld bc, $0301                                  ; $728a: $01 $01 $03
    inc bc                                        ; $728d: $03
    rlca                                          ; $728e: $07
    inc b                                         ; $728f: $04
    rrca                                          ; $7290: $0f
    ld [$111f], sp                                ; $7291: $08 $1f $11
    rra                                           ; $7294: $1f
    add hl, de                                    ; $7295: $19
    daa                                           ; $7296: $27
    ld a, $21                                     ; $7297: $3e $21
    ccf                                           ; $7299: $3f
    jr nz, @+$41                                  ; $729a: $20 $3f

    ld de, $101f                                  ; $729c: $11 $1f $10
    rra                                           ; $729f: $1f
    ld [$0f0f], sp                                ; $72a0: $08 $0f $0f
    rrca                                          ; $72a3: $0f
    rra                                           ; $72a4: $1f
    ld de, $131f                                  ; $72a5: $11 $1f $13
    dec e                                         ; $72a8: $1d
    ld e, $34                                     ; $72a9: $1e $34
    ccf                                           ; $72ab: $3f
    ld a, a                                       ; $72ac: $7f
    ld a, a                                       ; $72ad: $7f
    ccf                                           ; $72ae: $3f
    ccf                                           ; $72af: $3f
    nop                                           ; $72b0: $00
    nop                                           ; $72b1: $00
    nop                                           ; $72b2: $00
    nop                                           ; $72b3: $00
    jr jr_014_72ce                                ; $72b4: $18 $18

    daa                                           ; $72b6: $27
    ccf                                           ; $72b7: $3f
    ldh [rIE], a                                  ; $72b8: $e0 $ff
    ld a, b                                       ; $72ba: $78
    rst $18                                       ; $72bb: $df
    ccf                                           ; $72bc: $3f
    rst $20                                       ; $72bd: $e7
    sbc a                                         ; $72be: $9f
    ld hl, sp-$19                                 ; $72bf: $f8 $e7
    rst $38                                       ; $72c1: $ff
    ld hl, sp+$3f                                 ; $72c2: $f8 $3f
    rst $38                                       ; $72c4: $ff
    ld d, a                                       ; $72c5: $57
    rst $38                                       ; $72c6: $ff

jr_014_72c7:
    add l                                         ; $72c7: $85
    rst $38                                       ; $72c8: $ff
    pop bc                                        ; $72c9: $c1
    ld a, a                                       ; $72ca: $7f
    jp $e4bc                                      ; $72cb: $c3 $bc $e4


jr_014_72ce:
    ld hl, sp+$78                                 ; $72ce: $f8 $78
    ldh a, [$b0]                                  ; $72d0: $f0 $b0
    ldh a, [rNR10]                                ; $72d2: $f0 $10
    ldh a, [rNR10]                                ; $72d4: $f0 $10
    ldh a, [$f0]                                  ; $72d6: $f0 $f0
    ldh a, [$90]                                  ; $72d8: $f0 $90

jr_014_72da:
    ld hl, sp-$78                                 ; $72da: $f8 $88
    ld a, h                                       ; $72dc: $7c
    call nz, $c4fc                                ; $72dd: $c4 $fc $c4
    cp [hl]                                       ; $72e0: $be
    or [hl]                                       ; $72e1: $b6
    adc a                                         ; $72e2: $8f
    adc a                                         ; $72e3: $8f

jr_014_72e4:
    add c                                         ; $72e4: $81
    add c                                         ; $72e5: $81
    ld b, b                                       ; $72e6: $40
    ret nz                                        ; $72e7: $c0

    ret nz                                        ; $72e8: $c0

    ret nz                                        ; $72e9: $c0

    ld a, h                                       ; $72ea: $7c
    db $fc                                        ; $72eb: $fc
    rst $38                                       ; $72ec: $ff
    rst $38                                       ; $72ed: $ff
    db $fc                                        ; $72ee: $fc
    db $fc                                        ; $72ef: $fc
    nop                                           ; $72f0: $00
    nop                                           ; $72f1: $00
    nop                                           ; $72f2: $00
    nop                                           ; $72f3: $00
    nop                                           ; $72f4: $00
    nop                                           ; $72f5: $00
    nop                                           ; $72f6: $00
    nop                                           ; $72f7: $00
    add b                                         ; $72f8: $80
    add b                                         ; $72f9: $80
    add b                                         ; $72fa: $80
    add b                                         ; $72fb: $80
    add b                                         ; $72fc: $80
    add b                                         ; $72fd: $80
    add b                                         ; $72fe: $80
    add b                                         ; $72ff: $80
    ret nz                                        ; $7300: $c0

    ret nz                                        ; $7301: $c0

    jr nz, jr_014_72e4                            ; $7302: $20 $e0

    ldh [$e0], a                                  ; $7304: $e0 $e0
    nop                                           ; $7306: $00
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    nop                                           ; $7309: $00
    nop                                           ; $730a: $00
    nop                                           ; $730b: $00
    nop                                           ; $730c: $00
    nop                                           ; $730d: $00
    nop                                           ; $730e: $00
    nop                                           ; $730f: $00
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    nop                                           ; $7317: $00
    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    nop                                           ; $731a: $00
    nop                                           ; $731b: $00
    nop                                           ; $731c: $00
    nop                                           ; $731d: $00
    nop                                           ; $731e: $00
    nop                                           ; $731f: $00
    nop                                           ; $7320: $00
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    add b                                         ; $7324: $80
    add b                                         ; $7325: $80
    adc $ce                                       ; $7326: $ce $ce
    ld [hl], l                                    ; $7328: $75
    ld a, e                                       ; $7329: $7b
    ccf                                           ; $732a: $3f
    ccf                                           ; $732b: $3f
    cp $fe                                        ; $732c: $fe $fe
    nop                                           ; $732e: $00
    nop                                           ; $732f: $00
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    nop                                           ; $7332: $00
    nop                                           ; $7333: $00
    nop                                           ; $7334: $00
    nop                                           ; $7335: $00
    nop                                           ; $7336: $00
    nop                                           ; $7337: $00
    inc bc                                        ; $7338: $03
    inc bc                                        ; $7339: $03
    ld [bc], a                                    ; $733a: $02
    inc bc                                        ; $733b: $03
    ld bc, $0001                                  ; $733c: $01 $01 $00
    nop                                           ; $733f: $00
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    ld bc, $0101                                  ; $7342: $01 $01 $01
    ld bc, $0000                                  ; $7345: $01 $00 $00
    nop                                           ; $7348: $00
    nop                                           ; $7349: $00
    ld bc, $0301                                  ; $734a: $01 $01 $03
    inc bc                                        ; $734d: $03
    rlca                                          ; $734e: $07
    dec b                                         ; $734f: $05
    rrca                                          ; $7350: $0f
    ld a, [bc]                                    ; $7351: $0a
    rra                                           ; $7352: $1f
    ld [de], a                                    ; $7353: $12
    rra                                           ; $7354: $1f
    dec de                                        ; $7355: $1b
    daa                                           ; $7356: $27
    ld a, $23                                     ; $7357: $3e $23
    ld a, $21                                     ; $7359: $3e $21
    ccf                                           ; $735b: $3f
    db $10                                        ; $735c: $10
    rra                                           ; $735d: $1f
    db $10                                        ; $735e: $10
    rra                                           ; $735f: $1f
    ld [$0f0f], sp                                ; $7360: $08 $0f $0f
    rrca                                          ; $7363: $0f
    rra                                           ; $7364: $1f
    ld de, $131f                                  ; $7365: $11 $1f $13
    dec e                                         ; $7368: $1d
    ld e, $34                                     ; $7369: $1e $34
    ccf                                           ; $736b: $3f
    ld a, a                                       ; $736c: $7f
    ld a, a                                       ; $736d: $7f
    ccf                                           ; $736e: $3f
    ccf                                           ; $736f: $3f
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    nop                                           ; $7373: $00
    jr jr_014_738e                                ; $7374: $18 $18

    daa                                           ; $7376: $27
    ccf                                           ; $7377: $3f
    ldh [rIE], a                                  ; $7378: $e0 $ff
    ld a, b                                       ; $737a: $78
    rst $18                                       ; $737b: $df
    ccf                                           ; $737c: $3f
    rst $20                                       ; $737d: $e7
    sbc a                                         ; $737e: $9f
    ld hl, sp-$19                                 ; $737f: $f8 $e7
    rst $38                                       ; $7381: $ff
    ld hl, sp+$3f                                 ; $7382: $f8 $3f
    rst $38                                       ; $7384: $ff
    ld d, a                                       ; $7385: $57
    rst $38                                       ; $7386: $ff
    add l                                         ; $7387: $85
    rst $38                                       ; $7388: $ff
    pop bc                                        ; $7389: $c1
    ld a, a                                       ; $738a: $7f
    jp $e4bc                                      ; $738b: $c3 $bc $e4


jr_014_738e:
    ld hl, sp+$78                                 ; $738e: $f8 $78
    db $fc                                        ; $7390: $fc
    inc [hl]                                      ; $7391: $34
    db $fc                                        ; $7392: $fc
    inc h                                         ; $7393: $24
    ld hl, sp-$08                                 ; $7394: $f8 $f8
    ld hl, sp+$68                                 ; $7396: $f8 $68
    ld hl, sp+$28                                 ; $7398: $f8 $28
    ld hl, sp+$18                                 ; $739a: $f8 $18
    add sp, -$48                                  ; $739c: $e8 $b8
    db $fc                                        ; $739e: $fc
    sbc h                                         ; $739f: $9c
    cp $de                                        ; $73a0: $fe $de
    cp l                                          ; $73a2: $bd
    cp e                                          ; $73a3: $bb

jr_014_73a4:
    adc a                                         ; $73a4: $8f
    adc a                                         ; $73a5: $8f
    ld b, [hl]                                    ; $73a6: $46
    add $c0                                       ; $73a7: $c6 $c0
    ret nz                                        ; $73a9: $c0

    ld a, h                                       ; $73aa: $7c
    db $fc                                        ; $73ab: $fc
    cp $fe                                        ; $73ac: $fe $fe
    db $fc                                        ; $73ae: $fc
    db $fc                                        ; $73af: $fc
    nop                                           ; $73b0: $00
    nop                                           ; $73b1: $00
    nop                                           ; $73b2: $00
    nop                                           ; $73b3: $00
    nop                                           ; $73b4: $00
    nop                                           ; $73b5: $00
    nop                                           ; $73b6: $00
    nop                                           ; $73b7: $00
    add b                                         ; $73b8: $80
    add b                                         ; $73b9: $80
    add b                                         ; $73ba: $80
    add b                                         ; $73bb: $80
    add b                                         ; $73bc: $80
    add b                                         ; $73bd: $80
    add b                                         ; $73be: $80
    add b                                         ; $73bf: $80
    ret nz                                        ; $73c0: $c0

    ret nz                                        ; $73c1: $c0

    jr nz, jr_014_73a4                            ; $73c2: $20 $e0

    ldh [$e0], a                                  ; $73c4: $e0 $e0
    nop                                           ; $73c6: $00
    nop                                           ; $73c7: $00
    nop                                           ; $73c8: $00
    nop                                           ; $73c9: $00
    nop                                           ; $73ca: $00
    nop                                           ; $73cb: $00
    nop                                           ; $73cc: $00
    nop                                           ; $73cd: $00
    nop                                           ; $73ce: $00
    nop                                           ; $73cf: $00
    nop                                           ; $73d0: $00
    nop                                           ; $73d1: $00
    nop                                           ; $73d2: $00
    nop                                           ; $73d3: $00
    nop                                           ; $73d4: $00
    nop                                           ; $73d5: $00
    nop                                           ; $73d6: $00
    nop                                           ; $73d7: $00
    inc bc                                        ; $73d8: $03
    inc bc                                        ; $73d9: $03
    ld [bc], a                                    ; $73da: $02
    inc bc                                        ; $73db: $03
    ld bc, $0001                                  ; $73dc: $01 $01 $00
    nop                                           ; $73df: $00
    nop                                           ; $73e0: $00
    nop                                           ; $73e1: $00
    ld bc, $0101                                  ; $73e2: $01 $01 $01
    ld bc, $0000                                  ; $73e5: $01 $00 $00
    nop                                           ; $73e8: $00
    nop                                           ; $73e9: $00
    inc bc                                        ; $73ea: $03
    inc bc                                        ; $73eb: $03
    rlca                                          ; $73ec: $07
    inc b                                         ; $73ed: $04
    rrca                                          ; $73ee: $0f
    ld [$1b1f], sp                                ; $73ef: $08 $1f $1b
    rra                                           ; $73f2: $1f
    inc d                                         ; $73f3: $14
    rra                                           ; $73f4: $1f
    ld e, $2b                                     ; $73f5: $1e $2b
    ccf                                           ; $73f7: $3f
    cpl                                           ; $73f8: $2f
    dec sp                                        ; $73f9: $3b
    dec hl                                        ; $73fa: $2b
    ld a, $17                                     ; $73fb: $3e $17
    rra                                           ; $73fd: $1f
    inc de                                        ; $73fe: $13
    rra                                           ; $73ff: $1f
    add hl, bc                                    ; $7400: $09
    rrca                                          ; $7401: $0f
    rrca                                          ; $7402: $0f
    rrca                                          ; $7403: $0f
    rra                                           ; $7404: $1f
    ld de, $131f                                  ; $7405: $11 $1f $13
    dec e                                         ; $7408: $1d
    ld e, $34                                     ; $7409: $1e $34
    ccf                                           ; $740b: $3f
    ld a, a                                       ; $740c: $7f
    ld a, a                                       ; $740d: $7f
    ccf                                           ; $740e: $3f
    ccf                                           ; $740f: $3f
    nop                                           ; $7410: $00
    nop                                           ; $7411: $00
    nop                                           ; $7412: $00
    nop                                           ; $7413: $00
    jr jr_014_742e                                ; $7414: $18 $18

    daa                                           ; $7416: $27
    ccf                                           ; $7417: $3f
    ldh [rIE], a                                  ; $7418: $e0 $ff
    ld a, b                                       ; $741a: $78
    rst $18                                       ; $741b: $df
    ccf                                           ; $741c: $3f
    rst $20                                       ; $741d: $e7
    sbc a                                         ; $741e: $9f
    ld hl, sp-$19                                 ; $741f: $f8 $e7
    rst $38                                       ; $7421: $ff
    ld hl, sp+$3f                                 ; $7422: $f8 $3f
    rst $38                                       ; $7424: $ff
    ld d, a                                       ; $7425: $57
    rst $38                                       ; $7426: $ff
    add l                                         ; $7427: $85
    rst $38                                       ; $7428: $ff
    pop bc                                        ; $7429: $c1
    ld a, a                                       ; $742a: $7f
    jp $e4fc                                      ; $742b: $c3 $fc $e4


jr_014_742e:
    ld hl, sp+$78                                 ; $742e: $f8 $78
    ld hl, sp-$58                                 ; $7430: $f8 $a8
    db $fc                                        ; $7432: $fc
    and h                                         ; $7433: $a4
    db $fc                                        ; $7434: $fc
    or h                                          ; $7435: $b4
    db $fc                                        ; $7436: $fc
    ld l, h                                       ; $7437: $6c
    ld hl, sp+$68                                 ; $7438: $f8 $68
    ret nc                                        ; $743a: $d0

    ldh a, [$d0]                                  ; $743b: $f0 $d0
    ld [hl], b                                    ; $743d: $70
    ldh [$e0], a                                  ; $743e: $e0 $e0
    ld b, b                                       ; $7440: $40
    ret nz                                        ; $7441: $c0

    add b                                         ; $7442: $80
    add b                                         ; $7443: $80

jr_014_7444:
    add b                                         ; $7444: $80
    add b                                         ; $7445: $80
    ld b, b                                       ; $7446: $40
    ret nz                                        ; $7447: $c0

    ret nz                                        ; $7448: $c0

    ret nz                                        ; $7449: $c0

    ld a, h                                       ; $744a: $7c
    db $fc                                        ; $744b: $fc
    cp $fe                                        ; $744c: $fe $fe
    db $fc                                        ; $744e: $fc
    db $fc                                        ; $744f: $fc
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    nop                                           ; $7456: $00
    nop                                           ; $7457: $00
    add b                                         ; $7458: $80
    add b                                         ; $7459: $80
    add b                                         ; $745a: $80
    add b                                         ; $745b: $80
    add b                                         ; $745c: $80
    add b                                         ; $745d: $80
    add b                                         ; $745e: $80
    add b                                         ; $745f: $80
    ret nz                                        ; $7460: $c0

    ret nz                                        ; $7461: $c0

    jr nz, jr_014_7444                            ; $7462: $20 $e0

    ldh [$e0], a                                  ; $7464: $e0 $e0
    nop                                           ; $7466: $00
    nop                                           ; $7467: $00
    nop                                           ; $7468: $00
    nop                                           ; $7469: $00
    nop                                           ; $746a: $00
    nop                                           ; $746b: $00
    nop                                           ; $746c: $00
    nop                                           ; $746d: $00
    nop                                           ; $746e: $00
    nop                                           ; $746f: $00
    nop                                           ; $7470: $00
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
    nop                                           ; $7473: $00
    nop                                           ; $7474: $00
    nop                                           ; $7475: $00
    nop                                           ; $7476: $00
    nop                                           ; $7477: $00
    nop                                           ; $7478: $00
    nop                                           ; $7479: $00
    nop                                           ; $747a: $00
    nop                                           ; $747b: $00
    nop                                           ; $747c: $00
    nop                                           ; $747d: $00
    ld bc, $0201                                  ; $747e: $01 $01 $02
    inc bc                                        ; $7481: $03
    inc bc                                        ; $7482: $03
    ld [bc], a                                    ; $7483: $02
    ld [bc], a                                    ; $7484: $02
    inc bc                                        ; $7485: $03
    inc bc                                        ; $7486: $03
    inc bc                                        ; $7487: $03
    ld bc, $0001                                  ; $7488: $01 $01 $00
    nop                                           ; $748b: $00
    nop                                           ; $748c: $00
    nop                                           ; $748d: $00
    nop                                           ; $748e: $00
    nop                                           ; $748f: $00
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    nop                                           ; $7493: $00
    nop                                           ; $7494: $00
    nop                                           ; $7495: $00
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    rlca                                          ; $7498: $07
    rlca                                          ; $7499: $07
    inc b                                         ; $749a: $04
    rlca                                          ; $749b: $07
    ld [bc], a                                    ; $749c: $02
    inc bc                                        ; $749d: $03
    ld bc, $8101                                  ; $749e: $01 $01 $81
    add c                                         ; $74a1: $81
    add e                                         ; $74a2: $83
    add d                                         ; $74a3: $82
    add e                                         ; $74a4: $83
    add d                                         ; $74a5: $82
    add c                                         ; $74a6: $81
    add c                                         ; $74a7: $81
    pop bc                                        ; $74a8: $c1
    pop bc                                        ; $74a9: $c1
    ld h, [hl]                                    ; $74aa: $66
    ld h, a                                       ; $74ab: $67
    ccf                                           ; $74ac: $3f
    add hl, sp                                    ; $74ad: $39
    rra                                           ; $74ae: $1f
    ld e, $3f                                     ; $74af: $1e $3f
    ld sp, $517f                                  ; $74b1: $31 $7f $51
    ld a, [hl]                                    ; $74b4: $7e
    ld l, e                                       ; $74b5: $6b
    ld a, $3f                                     ; $74b6: $3e $3f
    inc hl                                        ; $74b8: $23
    ccf                                           ; $74b9: $3f
    inc hl                                        ; $74ba: $23
    ccf                                           ; $74bb: $3f
    ld de, $101f                                  ; $74bc: $11 $1f $10
    rra                                           ; $74bf: $1f
    ld [$0f0f], sp                                ; $74c0: $08 $0f $0f
    rrca                                          ; $74c3: $0f
    rra                                           ; $74c4: $1f
    ld de, $131f                                  ; $74c5: $11 $1f $13
    dec e                                         ; $74c8: $1d
    ld e, $34                                     ; $74c9: $1e $34
    ccf                                           ; $74cb: $3f
    ld a, a                                       ; $74cc: $7f
    ld a, a                                       ; $74cd: $7f
    ccf                                           ; $74ce: $3f
    ccf                                           ; $74cf: $3f
    nop                                           ; $74d0: $00
    nop                                           ; $74d1: $00
    nop                                           ; $74d2: $00
    nop                                           ; $74d3: $00
    jr nc, jr_014_7506                            ; $74d4: $30 $30

    ld c, [hl]                                    ; $74d6: $4e
    ld a, [hl]                                    ; $74d7: $7e
    pop bc                                        ; $74d8: $c1
    rst $38                                       ; $74d9: $ff
    pop af                                        ; $74da: $f1
    cp a                                          ; $74db: $bf
    ld a, a                                       ; $74dc: $7f
    rst $08                                       ; $74dd: $cf

jr_014_74de:
    ccf                                           ; $74de: $3f
    pop af                                        ; $74df: $f1
    rst $08                                       ; $74e0: $cf
    rst $38                                       ; $74e1: $ff
    ldh a, [$7f]                                  ; $74e2: $f0 $7f
    rst $38                                       ; $74e4: $ff
    xor a                                         ; $74e5: $af
    cp $0a                                        ; $74e6: $fe $0a
    cp $82                                        ; $74e8: $fe $82
    cp $86                                        ; $74ea: $fe $86

jr_014_74ec:
    ld a, b                                       ; $74ec: $78
    ret z                                         ; $74ed: $c8

    or b                                          ; $74ee: $b0
    ldh a, [$f8]                                  ; $74ef: $f0 $f8
    ret z                                         ; $74f1: $c8

    jr c, jr_014_74ec                             ; $74f2: $38 $f8

    jr c, jr_014_74de                             ; $74f4: $38 $e8

    ld [hl], b                                    ; $74f6: $70
    ret nc                                        ; $74f7: $d0

    ldh [$e0], a                                  ; $74f8: $e0 $e0
    ld b, b                                       ; $74fa: $40
    ret nz                                        ; $74fb: $c0

    ld b, b                                       ; $74fc: $40
    ret nz                                        ; $74fd: $c0

    and b                                         ; $74fe: $a0
    ldh [$a0], a                                  ; $74ff: $e0 $a0
    ldh [$c0], a                                  ; $7501: $e0 $c0
    ret nz                                        ; $7503: $c0

    add b                                         ; $7504: $80
    add b                                         ; $7505: $80

jr_014_7506:
    ld b, b                                       ; $7506: $40
    ret nz                                        ; $7507: $c0

    ret nz                                        ; $7508: $c0

    ret nz                                        ; $7509: $c0

    ld a, h                                       ; $750a: $7c
    db $fc                                        ; $750b: $fc
    cp $fe                                        ; $750c: $fe $fe
    db $fc                                        ; $750e: $fc
    db $fc                                        ; $750f: $fc
    nop                                           ; $7510: $00
    nop                                           ; $7511: $00
    nop                                           ; $7512: $00
    nop                                           ; $7513: $00
    nop                                           ; $7514: $00
    nop                                           ; $7515: $00
    nop                                           ; $7516: $00
    nop                                           ; $7517: $00
    nop                                           ; $7518: $00
    nop                                           ; $7519: $00
    nop                                           ; $751a: $00
    nop                                           ; $751b: $00
    nop                                           ; $751c: $00
    nop                                           ; $751d: $00
    nop                                           ; $751e: $00
    nop                                           ; $751f: $00
    add b                                         ; $7520: $80
    add b                                         ; $7521: $80
    ld b, b                                       ; $7522: $40
    ret nz                                        ; $7523: $c0

    ret nz                                        ; $7524: $c0

    ret nz                                        ; $7525: $c0

    nop                                           ; $7526: $00
    nop                                           ; $7527: $00
    nop                                           ; $7528: $00
    nop                                           ; $7529: $00
    nop                                           ; $752a: $00
    nop                                           ; $752b: $00
    nop                                           ; $752c: $00
    nop                                           ; $752d: $00
    nop                                           ; $752e: $00
    nop                                           ; $752f: $00
    nop                                           ; $7530: $00
    nop                                           ; $7531: $00
    ld [$1408], sp                                ; $7532: $08 $08 $14
    inc e                                         ; $7535: $1c
    inc e                                         ; $7536: $1c
    inc d                                         ; $7537: $14
    inc d                                         ; $7538: $14
    inc e                                         ; $7539: $1c
    inc e                                         ; $753a: $1c
    inc e                                         ; $753b: $1c
    inc c                                         ; $753c: $0c
    inc c                                         ; $753d: $0c
    ld b, $06                                     ; $753e: $06 $06
    inc bc                                        ; $7540: $03
    inc bc                                        ; $7541: $03
    ld bc, $0001                                  ; $7542: $01 $01 $00
    nop                                           ; $7545: $00
    nop                                           ; $7546: $00
    nop                                           ; $7547: $00
    nop                                           ; $7548: $00
    nop                                           ; $7549: $00
    nop                                           ; $754a: $00
    nop                                           ; $754b: $00
    nop                                           ; $754c: $00
    nop                                           ; $754d: $00
    nop                                           ; $754e: $00
    nop                                           ; $754f: $00
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    nop                                           ; $7553: $00
    nop                                           ; $7554: $00
    nop                                           ; $7555: $00
    nop                                           ; $7556: $00
    nop                                           ; $7557: $00
    rlca                                          ; $7558: $07
    rlca                                          ; $7559: $07
    inc b                                         ; $755a: $04
    rlca                                          ; $755b: $07
    ld [bc], a                                    ; $755c: $02
    inc bc                                        ; $755d: $03
    ld bc, $0101                                  ; $755e: $01 $01 $01
    ld bc, $8283                                  ; $7561: $01 $83 $82
    di                                            ; $7564: $f3
    ld a, [c]                                     ; $7565: $f2
    ld a, c                                       ; $7566: $79
    ld c, c                                       ; $7567: $49
    ld a, a                                       ; $7568: $7f
    ld b, a                                       ; $7569: $47
    ld a, d                                       ; $756a: $7a
    ld l, a                                       ; $756b: $6f
    ld [hl], c                                    ; $756c: $71
    ld e, a                                       ; $756d: $5f
    ld sp, hl                                     ; $756e: $f9
    adc a                                         ; $756f: $8f
    rst $38                                       ; $7570: $ff
    sbc [hl]                                      ; $7571: $9e
    ld a, a                                       ; $7572: $7f
    ld [hl], c                                    ; $7573: $71
    ccf                                           ; $7574: $3f
    jr c, jr_014_759e                             ; $7575: $38 $27

    ld a, $21                                     ; $7577: $3e $21
    ccf                                           ; $7579: $3f
    inc hl                                        ; $757a: $23
    ccf                                           ; $757b: $3f
    ld de, $101f                                  ; $757c: $11 $1f $10
    rra                                           ; $757f: $1f
    ld [$0f0f], sp                                ; $7580: $08 $0f $0f
    rrca                                          ; $7583: $0f
    rra                                           ; $7584: $1f
    ld de, $131f                                  ; $7585: $11 $1f $13
    dec e                                         ; $7588: $1d
    ld e, $34                                     ; $7589: $1e $34
    ccf                                           ; $758b: $3f
    ld a, a                                       ; $758c: $7f
    ld a, a                                       ; $758d: $7f
    ccf                                           ; $758e: $3f
    ccf                                           ; $758f: $3f
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    nop                                           ; $7593: $00
    jr nc, jr_014_75c6                            ; $7594: $30 $30

    ld c, [hl]                                    ; $7596: $4e
    ld a, [hl]                                    ; $7597: $7e
    pop bc                                        ; $7598: $c1
    rst $38                                       ; $7599: $ff
    pop af                                        ; $759a: $f1
    cp a                                          ; $759b: $bf
    ld a, a                                       ; $759c: $7f
    rst $08                                       ; $759d: $cf

jr_014_759e:
    ccf                                           ; $759e: $3f
    pop af                                        ; $759f: $f1
    rst $08                                       ; $75a0: $cf
    rst $38                                       ; $75a1: $ff
    ldh a, [$7f]                                  ; $75a2: $f0 $7f
    rst $38                                       ; $75a4: $ff
    xor a                                         ; $75a5: $af
    cp $0a                                        ; $75a6: $fe $0a
    cp $82                                        ; $75a8: $fe $82
    cp $86                                        ; $75aa: $fe $86
    ld hl, sp-$38                                 ; $75ac: $f8 $c8
    ldh a, [$30]                                  ; $75ae: $f0 $30
    ld hl, sp+$28                                 ; $75b0: $f8 $28
    ld hl, sp+$28                                 ; $75b2: $f8 $28
    ldh a, [$d0]                                  ; $75b4: $f0 $d0
    ldh [$60], a                                  ; $75b6: $e0 $60
    ret nz                                        ; $75b8: $c0

    ret nz                                        ; $75b9: $c0

    ld b, b                                       ; $75ba: $40
    ret nz                                        ; $75bb: $c0

    jr nz, jr_014_759e                            ; $75bc: $20 $e0

    and b                                         ; $75be: $a0
    ldh [$a0], a                                  ; $75bf: $e0 $a0
    ldh [$c0], a                                  ; $75c1: $e0 $c0
    ret nz                                        ; $75c3: $c0

    add b                                         ; $75c4: $80
    add b                                         ; $75c5: $80

jr_014_75c6:
    ld b, b                                       ; $75c6: $40
    ret nz                                        ; $75c7: $c0

    ret nz                                        ; $75c8: $c0

    ret nz                                        ; $75c9: $c0

    ld a, h                                       ; $75ca: $7c
    db $fc                                        ; $75cb: $fc
    cp $fe                                        ; $75cc: $fe $fe
    db $fc                                        ; $75ce: $fc
    db $fc                                        ; $75cf: $fc
    nop                                           ; $75d0: $00
    nop                                           ; $75d1: $00
    nop                                           ; $75d2: $00
    nop                                           ; $75d3: $00
    nop                                           ; $75d4: $00
    nop                                           ; $75d5: $00
    nop                                           ; $75d6: $00
    nop                                           ; $75d7: $00
    nop                                           ; $75d8: $00
    nop                                           ; $75d9: $00
    nop                                           ; $75da: $00
    nop                                           ; $75db: $00
    nop                                           ; $75dc: $00
    nop                                           ; $75dd: $00
    nop                                           ; $75de: $00
    nop                                           ; $75df: $00
    add b                                         ; $75e0: $80
    add b                                         ; $75e1: $80
    ld b, b                                       ; $75e2: $40
    ret nz                                        ; $75e3: $c0

    ret nz                                        ; $75e4: $c0

    ret nz                                        ; $75e5: $c0

    nop                                           ; $75e6: $00
    nop                                           ; $75e7: $00
    nop                                           ; $75e8: $00
    nop                                           ; $75e9: $00
    nop                                           ; $75ea: $00
    nop                                           ; $75eb: $00
    nop                                           ; $75ec: $00
    nop                                           ; $75ed: $00
    nop                                           ; $75ee: $00
    nop                                           ; $75ef: $00
    nop                                           ; $75f0: $00
    nop                                           ; $75f1: $00
    nop                                           ; $75f2: $00
    nop                                           ; $75f3: $00
    nop                                           ; $75f4: $00
    nop                                           ; $75f5: $00
    nop                                           ; $75f6: $00
    nop                                           ; $75f7: $00
    nop                                           ; $75f8: $00
    nop                                           ; $75f9: $00
    inc bc                                        ; $75fa: $03
    inc bc                                        ; $75fb: $03
    ld [bc], a                                    ; $75fc: $02
    inc bc                                        ; $75fd: $03
    ld bc, $0001                                  ; $75fe: $01 $01 $00
    nop                                           ; $7601: $00
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    ld bc, $0101                                  ; $7604: $01 $01 $01
    ld bc, $0000                                  ; $7607: $01 $00 $00
    nop                                           ; $760a: $00
    nop                                           ; $760b: $00
    inc bc                                        ; $760c: $03
    inc bc                                        ; $760d: $03
    rlca                                          ; $760e: $07
    inc b                                         ; $760f: $04
    rrca                                          ; $7610: $0f
    ld [$101f], sp                                ; $7611: $08 $1f $10
    rra                                           ; $7614: $1f
    ld de, $3d2f                                  ; $7615: $11 $2f $3d
    inc hl                                        ; $7618: $23
    ccf                                           ; $7619: $3f
    add hl, hl                                    ; $761a: $29
    ccf                                           ; $761b: $3f
    jr z, jr_014_765d                             ; $761c: $28 $3f

    inc d                                         ; $761e: $14
    rra                                           ; $761f: $1f
    ld d, $1f                                     ; $7620: $16 $1f
    rrca                                          ; $7622: $0f
    dec c                                         ; $7623: $0d
    rrca                                          ; $7624: $0f
    inc c                                         ; $7625: $0c
    rrca                                          ; $7626: $0f
    rrca                                          ; $7627: $0f
    ld a, [bc]                                    ; $7628: $0a
    rrca                                          ; $7629: $0f
    ccf                                           ; $762a: $3f
    ccf                                           ; $762b: $3f
    ld a, a                                       ; $762c: $7f
    ld a, a                                       ; $762d: $7f
    ccf                                           ; $762e: $3f
    ccf                                           ; $762f: $3f
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    nop                                           ; $7633: $00
    nop                                           ; $7634: $00
    nop                                           ; $7635: $00
    jr jr_014_7650                                ; $7636: $18 $18

    daa                                           ; $7638: $27
    ccf                                           ; $7639: $3f
    ldh [rIE], a                                  ; $763a: $e0 $ff
    ld a, b                                       ; $763c: $78
    rst $18                                       ; $763d: $df
    ccf                                           ; $763e: $3f
    rst $20                                       ; $763f: $e7
    sbc a                                         ; $7640: $9f
    ld hl, sp-$19                                 ; $7641: $f8 $e7
    rst $38                                       ; $7643: $ff
    ld hl, sp+$3f                                 ; $7644: $f8 $3f
    rst $38                                       ; $7646: $ff
    ld d, a                                       ; $7647: $57
    rst $38                                       ; $7648: $ff
    add l                                         ; $7649: $85
    rst $38                                       ; $764a: $ff
    pop bc                                        ; $764b: $c1
    ld a, a                                       ; $764c: $7f
    jp $e4bc                                      ; $764d: $c3 $bc $e4


jr_014_7650:
    ld hl, sp-$08                                 ; $7650: $f8 $f8
    ldh a, [$b0]                                  ; $7652: $f0 $b0
    ldh a, [rNR10]                                ; $7654: $f0 $10
    ld hl, sp+$28                                 ; $7656: $f8 $28
    ld hl, sp-$08                                 ; $7658: $f8 $f8
    db $fc                                        ; $765a: $fc
    inc d                                         ; $765b: $14
    db $fc                                        ; $765c: $fc

jr_014_765d:
    adc h                                         ; $765d: $8c
    cp $c2                                        ; $765e: $fe $c2
    ld a, [hl]                                    ; $7660: $7e
    ld [c], a                                     ; $7661: $e2
    rst $18                                       ; $7662: $df
    db $db                                        ; $7663: $db
    rst $00                                       ; $7664: $c7
    rst $00                                       ; $7665: $c7

jr_014_7666:
    and b                                         ; $7666: $a0
    ldh [$e0], a                                  ; $7667: $e0 $e0
    ld h, b                                       ; $7669: $60
    inc a                                         ; $766a: $3c
    db $fc                                        ; $766b: $fc
    rst $38                                       ; $766c: $ff
    rst $38                                       ; $766d: $ff
    db $fc                                        ; $766e: $fc
    db $fc                                        ; $766f: $fc
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    nop                                           ; $7672: $00
    nop                                           ; $7673: $00
    nop                                           ; $7674: $00
    nop                                           ; $7675: $00
    nop                                           ; $7676: $00
    nop                                           ; $7677: $00
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    add b                                         ; $767a: $80
    add b                                         ; $767b: $80
    add b                                         ; $767c: $80
    add b                                         ; $767d: $80
    add b                                         ; $767e: $80
    add b                                         ; $767f: $80
    add b                                         ; $7680: $80
    add b                                         ; $7681: $80
    ret nz                                        ; $7682: $c0

    ret nz                                        ; $7683: $c0

    jr nz, jr_014_7666                            ; $7684: $20 $e0

    ldh [$e0], a                                  ; $7686: $e0 $e0
    nop                                           ; $7688: $00
    nop                                           ; $7689: $00
    nop                                           ; $768a: $00
    nop                                           ; $768b: $00
    nop                                           ; $768c: $00
    nop                                           ; $768d: $00
    nop                                           ; $768e: $00
    nop                                           ; $768f: $00
    nop                                           ; $7690: $00
    nop                                           ; $7691: $00
    nop                                           ; $7692: $00
    nop                                           ; $7693: $00
    nop                                           ; $7694: $00
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    nop                                           ; $7698: $00
    nop                                           ; $7699: $00
    nop                                           ; $769a: $00
    nop                                           ; $769b: $00
    nop                                           ; $769c: $00
    nop                                           ; $769d: $00
    nop                                           ; $769e: $00
    nop                                           ; $769f: $00
    nop                                           ; $76a0: $00
    nop                                           ; $76a1: $00
    nop                                           ; $76a2: $00
    nop                                           ; $76a3: $00
    add b                                         ; $76a4: $80
    add b                                         ; $76a5: $80
    adc $ce                                       ; $76a6: $ce $ce
    ld [hl], l                                    ; $76a8: $75
    ld a, e                                       ; $76a9: $7b
    ccf                                           ; $76aa: $3f
    ccf                                           ; $76ab: $3f
    cp $fe                                        ; $76ac: $fe $fe
    nop                                           ; $76ae: $00
    nop                                           ; $76af: $00
    nop                                           ; $76b0: $00
    nop                                           ; $76b1: $00
    nop                                           ; $76b2: $00
    nop                                           ; $76b3: $00
    nop                                           ; $76b4: $00
    nop                                           ; $76b5: $00
    nop                                           ; $76b6: $00
    nop                                           ; $76b7: $00
    nop                                           ; $76b8: $00
    nop                                           ; $76b9: $00
    ld bc, $0101                                  ; $76ba: $01 $01 $01
    ld bc, $0101                                  ; $76bd: $01 $01 $01
    nop                                           ; $76c0: $00
    nop                                           ; $76c1: $00
    nop                                           ; $76c2: $00
    nop                                           ; $76c3: $00
    nop                                           ; $76c4: $00
    nop                                           ; $76c5: $00
    nop                                           ; $76c6: $00
    nop                                           ; $76c7: $00
    nop                                           ; $76c8: $00
    nop                                           ; $76c9: $00
    inc bc                                        ; $76ca: $03
    inc bc                                        ; $76cb: $03
    rlca                                          ; $76cc: $07
    dec b                                         ; $76cd: $05
    rrca                                          ; $76ce: $0f
    ld [$080f], sp                                ; $76cf: $08 $0f $08
    rra                                           ; $76d2: $1f
    db $10                                        ; $76d3: $10
    rra                                           ; $76d4: $1f
    db $10                                        ; $76d5: $10
    cpl                                           ; $76d6: $2f
    inc a                                         ; $76d7: $3c
    inc hl                                        ; $76d8: $23
    ccf                                           ; $76d9: $3f
    jr z, @+$41                                   ; $76da: $28 $3f

    jr z, jr_014_771d                             ; $76dc: $28 $3f

    inc d                                         ; $76de: $14
    rra                                           ; $76df: $1f
    ld [de], a                                    ; $76e0: $12
    rra                                           ; $76e1: $1f
    rrca                                          ; $76e2: $0f
    rrca                                          ; $76e3: $0f
    dec bc                                        ; $76e4: $0b
    ld c, $0f                                     ; $76e5: $0e $0f
    rrca                                          ; $76e7: $0f
    dec c                                         ; $76e8: $0d
    ld c, $3f                                     ; $76e9: $0e $3f
    ccf                                           ; $76eb: $3f
    ld a, a                                       ; $76ec: $7f
    ld a, a                                       ; $76ed: $7f
    ccf                                           ; $76ee: $3f
    ccf                                           ; $76ef: $3f
    nop                                           ; $76f0: $00
    nop                                           ; $76f1: $00
    nop                                           ; $76f2: $00
    nop                                           ; $76f3: $00
    nop                                           ; $76f4: $00
    nop                                           ; $76f5: $00
    inc e                                         ; $76f6: $1c
    inc e                                         ; $76f7: $1c
    inc hl                                        ; $76f8: $23
    ccf                                           ; $76f9: $3f
    ldh [rIE], a                                  ; $76fa: $e0 $ff
    ld [hl], b                                    ; $76fc: $70
    rst $18                                       ; $76fd: $df
    inc a                                         ; $76fe: $3c
    rst $28                                       ; $76ff: $ef
    sbc a                                         ; $7700: $9f
    di                                            ; $7701: $f3
    rst $08                                       ; $7702: $cf
    db $fc                                        ; $7703: $fc
    di                                            ; $7704: $f3
    rst $38                                       ; $7705: $ff
    db $fc                                        ; $7706: $fc
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    rst $28                                       ; $7709: $ef
    rst $38                                       ; $770a: $ff
    xor c                                         ; $770b: $a9
    ld a, [hl]                                    ; $770c: $7e
    jp nz, $e4bc                                  ; $770d: $c2 $bc $e4

    ld hl, sp+$78                                 ; $7710: $f8 $78
    ldh a, [$30]                                  ; $7712: $f0 $30
    ld hl, sp+$48                                 ; $7714: $f8 $48
    ld hl, sp+$48                                 ; $7716: $f8 $48
    ld hl, sp-$68                                 ; $7718: $f8 $98
    ld hl, sp-$18                                 ; $771a: $f8 $e8
    ld a, e                                       ; $771c: $7b

jr_014_771d:
    srl [hl]                                      ; $771d: $cb $3e
    db $fd                                        ; $771f: $fd
    cpl                                           ; $7720: $2f
    rst $28                                       ; $7721: $ef
    and a                                         ; $7722: $a7
    rst $20                                       ; $7723: $e7
    ret nz                                        ; $7724: $c0

    ld b, b                                       ; $7725: $40
    and b                                         ; $7726: $a0
    ldh [$60], a                                  ; $7727: $e0 $60
    ldh [$3c], a                                  ; $7729: $e0 $3c
    db $fc                                        ; $772b: $fc
    cp $fe                                        ; $772c: $fe $fe
    db $fc                                        ; $772e: $fc
    db $fc                                        ; $772f: $fc
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    nop                                           ; $7734: $00
    nop                                           ; $7735: $00
    nop                                           ; $7736: $00
    nop                                           ; $7737: $00
    nop                                           ; $7738: $00
    nop                                           ; $7739: $00
    add b                                         ; $773a: $80
    add b                                         ; $773b: $80
    add b                                         ; $773c: $80
    add b                                         ; $773d: $80
    ld b, b                                       ; $773e: $40
    ret nz                                        ; $773f: $c0

    ret nz                                        ; $7740: $c0

    ret nz                                        ; $7741: $c0

    ret nz                                        ; $7742: $c0

    ld b, b                                       ; $7743: $40
    ldh [$e0], a                                  ; $7744: $e0 $e0
    jr nz, @-$1e                                  ; $7746: $20 $e0

    ret nz                                        ; $7748: $c0

    ret nz                                        ; $7749: $c0

    nop                                           ; $774a: $00
    nop                                           ; $774b: $00
    nop                                           ; $774c: $00
    nop                                           ; $774d: $00
    nop                                           ; $774e: $00
    nop                                           ; $774f: $00
    nop                                           ; $7750: $00
    nop                                           ; $7751: $00
    nop                                           ; $7752: $00
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    nop                                           ; $775a: $00
    nop                                           ; $775b: $00
    nop                                           ; $775c: $00
    nop                                           ; $775d: $00
    add b                                         ; $775e: $80
    add b                                         ; $775f: $80
    add b                                         ; $7760: $80
    add b                                         ; $7761: $80
    nop                                           ; $7762: $00
    nop                                           ; $7763: $00
    nop                                           ; $7764: $00
    nop                                           ; $7765: $00
    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    nop                                           ; $776a: $00
    nop                                           ; $776b: $00
    nop                                           ; $776c: $00
    nop                                           ; $776d: $00
    nop                                           ; $776e: $00
    nop                                           ; $776f: $00
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    nop                                           ; $7773: $00
    nop                                           ; $7774: $00
    nop                                           ; $7775: $00
    ld [$1c08], sp                                ; $7776: $08 $08 $1c
    inc d                                         ; $7779: $14
    inc d                                         ; $777a: $14
    inc e                                         ; $777b: $1c
    inc e                                         ; $777c: $1c
    inc e                                         ; $777d: $1c
    ld c, $0e                                     ; $777e: $0e $0e
    inc bc                                        ; $7780: $03
    inc bc                                        ; $7781: $03
    ld bc, $0001                                  ; $7782: $01 $01 $00
    nop                                           ; $7785: $00
    nop                                           ; $7786: $00
    nop                                           ; $7787: $00
    nop                                           ; $7788: $00
    nop                                           ; $7789: $00
    nop                                           ; $778a: $00
    nop                                           ; $778b: $00
    nop                                           ; $778c: $00
    nop                                           ; $778d: $00
    nop                                           ; $778e: $00
    nop                                           ; $778f: $00
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    nop                                           ; $7792: $00
    nop                                           ; $7793: $00
    nop                                           ; $7794: $00
    nop                                           ; $7795: $00
    nop                                           ; $7796: $00
    nop                                           ; $7797: $00
    nop                                           ; $7798: $00
    nop                                           ; $7799: $00
    ld bc, $0101                                  ; $779a: $01 $01 $01
    ld bc, $0000                                  ; $779d: $01 $00 $00
    ld bc, $8301                                  ; $77a0: $01 $01 $83
    add d                                         ; $77a3: $82
    jp Jump_014_61c2                              ; $77a4: $c3 $c2 $61


    ld h, c                                       ; $77a7: $61
    ld sp, $3f31                                  ; $77a8: $31 $31 $3f
    cpl                                           ; $77ab: $2f
    rra                                           ; $77ac: $1f
    add hl, de                                    ; $77ad: $19
    rra                                           ; $77ae: $1f
    db $10                                        ; $77af: $10
    rrca                                          ; $77b0: $0f
    ld [$101f], sp                                ; $77b1: $08 $1f $10
    rra                                           ; $77b4: $1f
    jr jr_014_77de                                ; $77b5: $18 $27

    ld a, $21                                     ; $77b7: $3e $21
    ccf                                           ; $77b9: $3f
    inc h                                         ; $77ba: $24
    ccf                                           ; $77bb: $3f
    inc l                                         ; $77bc: $2c
    ccf                                           ; $77bd: $3f
    ld [de], a                                    ; $77be: $12
    rra                                           ; $77bf: $1f
    inc de                                        ; $77c0: $13
    rra                                           ; $77c1: $1f
    rrca                                          ; $77c2: $0f
    rrca                                          ; $77c3: $0f
    dec c                                         ; $77c4: $0d
    dec bc                                        ; $77c5: $0b
    ld c, $0f                                     ; $77c6: $0e $0f
    dec bc                                        ; $77c8: $0b
    rrca                                          ; $77c9: $0f
    ccf                                           ; $77ca: $3f
    ccf                                           ; $77cb: $3f
    ld a, a                                       ; $77cc: $7f

jr_014_77cd:
    ld a, a                                       ; $77cd: $7f
    ccf                                           ; $77ce: $3f
    ccf                                           ; $77cf: $3f
    nop                                           ; $77d0: $00
    nop                                           ; $77d1: $00
    nop                                           ; $77d2: $00
    nop                                           ; $77d3: $00
    nop                                           ; $77d4: $00
    nop                                           ; $77d5: $00
    inc e                                         ; $77d6: $1c
    inc e                                         ; $77d7: $1c
    db $e3                                        ; $77d8: $e3
    rst $38                                       ; $77d9: $ff
    ld [hl], b                                    ; $77da: $70
    rst $18                                       ; $77db: $df

jr_014_77dc:
    jr c, jr_014_77cd                             ; $77dc: $38 $ef

jr_014_77de:
    sbc [hl]                                      ; $77de: $9e
    rst $30                                       ; $77df: $f7
    rst $08                                       ; $77e0: $cf
    ld sp, hl                                     ; $77e1: $f9
    rst $20                                       ; $77e2: $e7
    cp $f9                                        ; $77e3: $fe $f9

jr_014_77e5:
    rst $38                                       ; $77e5: $ff
    cp $7f                                        ; $77e6: $fe $7f
    rst $38                                       ; $77e8: $ff
    ccf                                           ; $77e9: $3f
    rst $38                                       ; $77ea: $ff
    add l                                         ; $77eb: $85
    ld a, [hl]                                    ; $77ec: $7e
    ld [$fc9c], a                                 ; $77ed: $ea $9c $fc
    ldh a, [rSVBK]                                ; $77f0: $f0 $70
    ld hl, sp+$08                                 ; $77f2: $f8 $08
    ld hl, sp+$28                                 ; $77f4: $f8 $28
    ldh a, [$30]                                  ; $77f6: $f0 $30
    ldh [$e0], a                                  ; $77f8: $e0 $e0
    jr nz, jr_014_77dc                            ; $77fa: $20 $e0

    jr nz, jr_014_77de                            ; $77fc: $20 $e0

    db $10                                        ; $77fe: $10
    ldh a, [$d0]                                  ; $77ff: $f0 $d0
    ldh a, [$f0]                                  ; $7801: $f0 $f0
    jr nc, jr_014_77e5                            ; $7803: $30 $e0

    ldh [$a0], a                                  ; $7805: $e0 $a0
    ld h, b                                       ; $7807: $60
    and b                                         ; $7808: $a0
    ldh [$dc], a                                  ; $7809: $e0 $dc
    db $fc                                        ; $780b: $fc
    cp $fe                                        ; $780c: $fe $fe
    db $fc                                        ; $780e: $fc
    db $fc                                        ; $780f: $fc
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    nop                                           ; $7813: $00
    nop                                           ; $7814: $00
    nop                                           ; $7815: $00
    nop                                           ; $7816: $00
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    add b                                         ; $781a: $80
    add b                                         ; $781b: $80
    ld b, b                                       ; $781c: $40
    ret nz                                        ; $781d: $c0

    ld b, b                                       ; $781e: $40
    ret nz                                        ; $781f: $c0

    ret nz                                        ; $7820: $c0

    ret nz                                        ; $7821: $c0

    ret nz                                        ; $7822: $c0

    ld b, b                                       ; $7823: $40
    and b                                         ; $7824: $a0
    ldh [rNR41], a                                ; $7825: $e0 $20
    ldh [$c0], a                                  ; $7827: $e0 $c0
    ret nz                                        ; $7829: $c0

    nop                                           ; $782a: $00
    nop                                           ; $782b: $00
    nop                                           ; $782c: $00
    nop                                           ; $782d: $00
    nop                                           ; $782e: $00
    nop                                           ; $782f: $00
    nop                                           ; $7830: $00
    nop                                           ; $7831: $00
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    nop                                           ; $7834: $00
    nop                                           ; $7835: $00
    nop                                           ; $7836: $00
    nop                                           ; $7837: $00
    nop                                           ; $7838: $00
    nop                                           ; $7839: $00
    nop                                           ; $783a: $00
    nop                                           ; $783b: $00
    nop                                           ; $783c: $00
    nop                                           ; $783d: $00
    nop                                           ; $783e: $00
    nop                                           ; $783f: $00
    nop                                           ; $7840: $00
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00
    nop                                           ; $7843: $00
    ld bc, $0101                                  ; $7844: $01 $01 $01
    ld bc, $0101                                  ; $7847: $01 $01 $01
    nop                                           ; $784a: $00
    nop                                           ; $784b: $00
    nop                                           ; $784c: $00
    nop                                           ; $784d: $00
    nop                                           ; $784e: $00
    nop                                           ; $784f: $00
    nop                                           ; $7850: $00
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    nop                                           ; $7853: $00
    ld bc, $0201                                  ; $7854: $01 $01 $02
    inc bc                                        ; $7857: $03
    inc [hl]                                      ; $7858: $34
    scf                                           ; $7859: $37
    ld c, a                                       ; $785a: $4f
    ld a, a                                       ; $785b: $7f
    ld b, a                                       ; $785c: $47
    ld a, h                                       ; $785d: $7c
    ld c, a                                       ; $785e: $4f
    ld a, d                                       ; $785f: $7a
    rst $38                                       ; $7860: $ff
    or c                                          ; $7861: $b1
    rst $38                                       ; $7862: $ff
    sub c                                         ; $7863: $91
    rst $38                                       ; $7864: $ff
    dec sp                                        ; $7865: $3b
    rst $38                                       ; $7866: $ff
    scf                                           ; $7867: $37
    rst $38                                       ; $7868: $ff
    dec e                                         ; $7869: $1d
    rst $38                                       ; $786a: $ff
    xor a                                         ; $786b: $af
    ld a, h                                       ; $786c: $7c
    ld b, a                                       ; $786d: $47
    ccf                                           ; $786e: $3f
    inc hl                                        ; $786f: $23
    rra                                           ; $7870: $1f
    db $10                                        ; $7871: $10
    rra                                           ; $7872: $1f
    db $10                                        ; $7873: $10
    rra                                           ; $7874: $1f

jr_014_7875:
    db $10                                        ; $7875: $10
    rra                                           ; $7876: $1f
    jr jr_014_7890                                ; $7877: $18 $17

    rra                                           ; $7879: $1f
    db $10                                        ; $787a: $10
    rra                                           ; $787b: $1f
    inc de                                        ; $787c: $13
    rra                                           ; $787d: $1f
    ld de, $111f                                  ; $787e: $11 $1f $11
    rra                                           ; $7881: $1f
    rrca                                          ; $7882: $0f
    rrca                                          ; $7883: $0f
    rrca                                          ; $7884: $0f
    add hl, bc                                    ; $7885: $09
    rrca                                          ; $7886: $0f
    rrca                                          ; $7887: $0f
    add hl, bc                                    ; $7888: $09
    rrca                                          ; $7889: $0f
    ccf                                           ; $788a: $3f
    ccf                                           ; $788b: $3f
    ld a, a                                       ; $788c: $7f
    ld a, a                                       ; $788d: $7f
    ccf                                           ; $788e: $3f
    ccf                                           ; $788f: $3f

jr_014_7890:
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    nop                                           ; $7892: $00
    nop                                           ; $7893: $00
    ldh [$e0], a                                  ; $7894: $e0 $e0
    jr jr_014_7890                                ; $7896: $18 $f8

    inc b                                         ; $7898: $04
    db $fc                                        ; $7899: $fc
    inc c                                         ; $789a: $0c
    db $fc                                        ; $789b: $fc
    cp $f6                                        ; $789c: $fe $f6
    ld sp, hl                                     ; $789e: $f9
    rrca                                          ; $789f: $0f
    pop af                                        ; $78a0: $f1
    rst $38                                       ; $78a1: $ff
    ld [bc], a                                    ; $78a2: $02
    cp $fc                                        ; $78a3: $fe $fc
    db $fc                                        ; $78a5: $fc
    db $fc                                        ; $78a6: $fc
    db $e4                                        ; $78a7: $e4
    ld hl, sp-$28                                 ; $78a8: $f8 $d8
    ldh [$a0], a                                  ; $78aa: $e0 $a0
    ret nz                                        ; $78ac: $c0

    ret nz                                        ; $78ad: $c0

    ld h, b                                       ; $78ae: $60

jr_014_78af:
    ldh [$f0], a                                  ; $78af: $e0 $f0
    ldh a, [$f8]                                  ; $78b1: $f0 $f8
    jr z, @-$16                                   ; $78b3: $28 $e8

    jr c, jr_014_78af                             ; $78b5: $38 $f8

    jr c, @-$0e                                   ; $78b7: $38 $f0

    ldh a, [$08]                                  ; $78b9: $f0 $08
    ld hl, sp-$78                                 ; $78bb: $f8 $88
    ld hl, sp+$08                                 ; $78bd: $f8 $08
    ld hl, sp-$30                                 ; $78bf: $f8 $d0
    ldh a, [$f0]                                  ; $78c1: $f0 $f0
    jr nc, jr_014_7875                            ; $78c3: $30 $b0

    ld [hl], b                                    ; $78c5: $70
    ret nc                                        ; $78c6: $d0

    ldh a, [$d0]                                  ; $78c7: $f0 $d0
    ldh a, [$fc]                                  ; $78c9: $f0 $fc
    db $fc                                        ; $78cb: $fc
    cp $fe                                        ; $78cc: $fe $fe
    db $fc                                        ; $78ce: $fc
    db $fc                                        ; $78cf: $fc
    nop                                           ; $78d0: $00
    nop                                           ; $78d1: $00
    nop                                           ; $78d2: $00
    nop                                           ; $78d3: $00
    nop                                           ; $78d4: $00
    nop                                           ; $78d5: $00
    nop                                           ; $78d6: $00
    nop                                           ; $78d7: $00
    inc bc                                        ; $78d8: $03
    inc bc                                        ; $78d9: $03
    ld [bc], a                                    ; $78da: $02
    inc bc                                        ; $78db: $03
    ld bc, $0001                                  ; $78dc: $01 $01 $00
    nop                                           ; $78df: $00
    nop                                           ; $78e0: $00
    nop                                           ; $78e1: $00
    ld bc, $0101                                  ; $78e2: $01 $01 $01
    ld bc, $0000                                  ; $78e5: $01 $00 $00
    nop                                           ; $78e8: $00
    nop                                           ; $78e9: $00
    ld bc, $0301                                  ; $78ea: $01 $01 $03
    inc bc                                        ; $78ed: $03
    rlca                                          ; $78ee: $07
    inc b                                         ; $78ef: $04
    rrca                                          ; $78f0: $0f
    ld [$111f], sp                                ; $78f1: $08 $1f $11
    rra                                           ; $78f4: $1f
    add hl, de                                    ; $78f5: $19
    daa                                           ; $78f6: $27
    ld a, $21                                     ; $78f7: $3e $21
    ccf                                           ; $78f9: $3f
    jr nz, @+$41                                  ; $78fa: $20 $3f

    ld de, $101f                                  ; $78fc: $11 $1f $10
    rra                                           ; $78ff: $1f
    add hl, bc                                    ; $7900: $09
    rrca                                          ; $7901: $0f
    rrca                                          ; $7902: $0f
    ld c, $0f                                     ; $7903: $0e $0f
    add hl, bc                                    ; $7905: $09
    rrca                                          ; $7906: $0f
    add hl, bc                                    ; $7907: $09
    ld c, $0f                                     ; $7908: $0e $0f
    ld a, [hl-]                                   ; $790a: $3a
    ccf                                           ; $790b: $3f
    ld a, a                                       ; $790c: $7f
    ld a, a                                       ; $790d: $7f
    ccf                                           ; $790e: $3f
    ccf                                           ; $790f: $3f
    nop                                           ; $7910: $00
    nop                                           ; $7911: $00
    nop                                           ; $7912: $00
    nop                                           ; $7913: $00
    jr jr_014_792e                                ; $7914: $18 $18

    daa                                           ; $7916: $27
    ccf                                           ; $7917: $3f
    ldh [rIE], a                                  ; $7918: $e0 $ff
    ld a, b                                       ; $791a: $78
    rst $18                                       ; $791b: $df
    ccf                                           ; $791c: $3f
    rst $20                                       ; $791d: $e7
    sbc a                                         ; $791e: $9f
    ld hl, sp-$19                                 ; $791f: $f8 $e7
    rst $38                                       ; $7921: $ff
    ld hl, sp+$3f                                 ; $7922: $f8 $3f
    rst $38                                       ; $7924: $ff
    ld d, a                                       ; $7925: $57
    rst $38                                       ; $7926: $ff
    add l                                         ; $7927: $85
    rst $38                                       ; $7928: $ff
    pop bc                                        ; $7929: $c1
    ld a, a                                       ; $792a: $7f
    jp $e4bc                                      ; $792b: $c3 $bc $e4


jr_014_792e:
    ld hl, sp+$78                                 ; $792e: $f8 $78
    ldh a, [$b0]                                  ; $7930: $f0 $b0
    ldh a, [rNR10]                                ; $7932: $f0 $10
    ldh a, [rNR10]                                ; $7934: $f0 $10
    ldh a, [$f0]                                  ; $7936: $f0 $f0
    ldh a, [$90]                                  ; $7938: $f0 $90
    ld hl, sp-$78                                 ; $793a: $f8 $88
    ld a, h                                       ; $793c: $7c
    call nz, $c4fc                                ; $793d: $c4 $fc $c4
    cp h                                          ; $7940: $bc
    or h                                          ; $7941: $b4
    adc [hl]                                      ; $7942: $8e
    adc [hl]                                      ; $7943: $8e

jr_014_7944:
    jp $a1c3                                      ; $7944: $c3 $c3 $a1


    pop hl                                        ; $7947: $e1
    ldh [$60], a                                  ; $7948: $e0 $60
    inc a                                         ; $794a: $3c
    db $fc                                        ; $794b: $fc
    rst $38                                       ; $794c: $ff
    rst $38                                       ; $794d: $ff
    db $fc                                        ; $794e: $fc
    db $fc                                        ; $794f: $fc
    nop                                           ; $7950: $00
    nop                                           ; $7951: $00
    nop                                           ; $7952: $00
    nop                                           ; $7953: $00
    nop                                           ; $7954: $00
    nop                                           ; $7955: $00
    nop                                           ; $7956: $00
    nop                                           ; $7957: $00
    add b                                         ; $7958: $80
    add b                                         ; $7959: $80
    add b                                         ; $795a: $80
    add b                                         ; $795b: $80
    add b                                         ; $795c: $80
    add b                                         ; $795d: $80
    add b                                         ; $795e: $80
    add b                                         ; $795f: $80
    ret nz                                        ; $7960: $c0

    ret nz                                        ; $7961: $c0

    jr nz, jr_014_7944                            ; $7962: $20 $e0

    ldh [$e0], a                                  ; $7964: $e0 $e0
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    nop                                           ; $7968: $00
    nop                                           ; $7969: $00
    nop                                           ; $796a: $00
    nop                                           ; $796b: $00
    nop                                           ; $796c: $00
    nop                                           ; $796d: $00
    nop                                           ; $796e: $00
    nop                                           ; $796f: $00
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    nop                                           ; $7973: $00
    nop                                           ; $7974: $00
    nop                                           ; $7975: $00
    nop                                           ; $7976: $00
    nop                                           ; $7977: $00
    nop                                           ; $7978: $00
    nop                                           ; $7979: $00
    nop                                           ; $797a: $00
    nop                                           ; $797b: $00
    nop                                           ; $797c: $00
    nop                                           ; $797d: $00
    nop                                           ; $797e: $00
    nop                                           ; $797f: $00
    nop                                           ; $7980: $00
    nop                                           ; $7981: $00
    nop                                           ; $7982: $00
    nop                                           ; $7983: $00
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    call z, $b6cc                                 ; $7986: $cc $cc $b6
    ld a, [$7e62]                                 ; $7989: $fa $62 $7e
    db $fc                                        ; $798c: $fc
    db $fc                                        ; $798d: $fc
    nop                                           ; $798e: $00
    nop                                           ; $798f: $00
    nop                                           ; $7990: $00
    nop                                           ; $7991: $00
    nop                                           ; $7992: $00
    nop                                           ; $7993: $00
    nop                                           ; $7994: $00
    nop                                           ; $7995: $00
    nop                                           ; $7996: $00
    nop                                           ; $7997: $00
    nop                                           ; $7998: $00
    nop                                           ; $7999: $00
    inc bc                                        ; $799a: $03
    inc bc                                        ; $799b: $03
    ld [bc], a                                    ; $799c: $02
    inc bc                                        ; $799d: $03
    ld bc, $0001                                  ; $799e: $01 $01 $00
    nop                                           ; $79a1: $00
    nop                                           ; $79a2: $00
    nop                                           ; $79a3: $00
    ld bc, $0101                                  ; $79a4: $01 $01 $01
    ld bc, $0000                                  ; $79a7: $01 $00 $00
    nop                                           ; $79aa: $00
    nop                                           ; $79ab: $00
    inc bc                                        ; $79ac: $03
    inc bc                                        ; $79ad: $03
    rlca                                          ; $79ae: $07
    inc b                                         ; $79af: $04
    rrca                                          ; $79b0: $0f
    ld [$101f], sp                                ; $79b1: $08 $1f $10
    rra                                           ; $79b4: $1f
    ld de, $3d2f                                  ; $79b5: $11 $2f $3d
    inc hl                                        ; $79b8: $23
    ccf                                           ; $79b9: $3f
    add hl, hl                                    ; $79ba: $29
    ccf                                           ; $79bb: $3f
    jr z, jr_014_79fd                             ; $79bc: $28 $3f

    inc d                                         ; $79be: $14
    rra                                           ; $79bf: $1f
    ld d, $1f                                     ; $79c0: $16 $1f
    rrca                                          ; $79c2: $0f
    dec c                                         ; $79c3: $0d
    rrca                                          ; $79c4: $0f
    inc c                                         ; $79c5: $0c
    rrca                                          ; $79c6: $0f
    rrca                                          ; $79c7: $0f
    ld a, [bc]                                    ; $79c8: $0a
    rrca                                          ; $79c9: $0f
    ccf                                           ; $79ca: $3f
    ccf                                           ; $79cb: $3f
    ld a, a                                       ; $79cc: $7f
    ld a, a                                       ; $79cd: $7f
    ccf                                           ; $79ce: $3f
    ccf                                           ; $79cf: $3f
    nop                                           ; $79d0: $00
    nop                                           ; $79d1: $00
    nop                                           ; $79d2: $00
    nop                                           ; $79d3: $00
    nop                                           ; $79d4: $00
    nop                                           ; $79d5: $00
    jr jr_014_79f0                                ; $79d6: $18 $18

    daa                                           ; $79d8: $27
    ccf                                           ; $79d9: $3f
    ldh [rIE], a                                  ; $79da: $e0 $ff
    ld a, b                                       ; $79dc: $78
    rst $18                                       ; $79dd: $df
    ccf                                           ; $79de: $3f
    rst $20                                       ; $79df: $e7
    sbc a                                         ; $79e0: $9f
    ld hl, sp-$19                                 ; $79e1: $f8 $e7
    rst $38                                       ; $79e3: $ff
    ld hl, sp+$3f                                 ; $79e4: $f8 $3f
    rst $38                                       ; $79e6: $ff
    ld d, a                                       ; $79e7: $57
    rst $38                                       ; $79e8: $ff
    add l                                         ; $79e9: $85
    rst $38                                       ; $79ea: $ff
    pop bc                                        ; $79eb: $c1
    ld a, a                                       ; $79ec: $7f
    jp $e4bc                                      ; $79ed: $c3 $bc $e4


jr_014_79f0:
    ld hl, sp-$08                                 ; $79f0: $f8 $f8
    ldh a, [$b0]                                  ; $79f2: $f0 $b0
    ldh a, [rNR10]                                ; $79f4: $f0 $10
    ld hl, sp+$28                                 ; $79f6: $f8 $28
    ld hl, sp-$08                                 ; $79f8: $f8 $f8
    db $fc                                        ; $79fa: $fc
    inc d                                         ; $79fb: $14
    db $fc                                        ; $79fc: $fc

jr_014_79fd:
    adc h                                         ; $79fd: $8c
    cp $c2                                        ; $79fe: $fe $c2
    ld a, [hl]                                    ; $7a00: $7e
    ld [c], a                                     ; $7a01: $e2
    sbc $da                                       ; $7a02: $de $da
    rst $00                                       ; $7a04: $c7
    rst $00                                       ; $7a05: $c7

jr_014_7a06:
    and c                                         ; $7a06: $a1
    pop hl                                        ; $7a07: $e1
    ldh [$60], a                                  ; $7a08: $e0 $60
    inc a                                         ; $7a0a: $3c
    db $fc                                        ; $7a0b: $fc
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    db $fc                                        ; $7a0e: $fc
    db $fc                                        ; $7a0f: $fc
    nop                                           ; $7a10: $00
    nop                                           ; $7a11: $00
    nop                                           ; $7a12: $00
    nop                                           ; $7a13: $00
    nop                                           ; $7a14: $00
    nop                                           ; $7a15: $00
    nop                                           ; $7a16: $00
    nop                                           ; $7a17: $00
    nop                                           ; $7a18: $00
    nop                                           ; $7a19: $00
    add b                                         ; $7a1a: $80
    add b                                         ; $7a1b: $80
    add b                                         ; $7a1c: $80
    add b                                         ; $7a1d: $80
    add b                                         ; $7a1e: $80
    add b                                         ; $7a1f: $80
    add b                                         ; $7a20: $80
    add b                                         ; $7a21: $80
    ret nz                                        ; $7a22: $c0

    ret nz                                        ; $7a23: $c0

    jr nz, jr_014_7a06                            ; $7a24: $20 $e0

    ldh [$e0], a                                  ; $7a26: $e0 $e0
    nop                                           ; $7a28: $00
    nop                                           ; $7a29: $00
    nop                                           ; $7a2a: $00
    nop                                           ; $7a2b: $00
    nop                                           ; $7a2c: $00
    nop                                           ; $7a2d: $00
    nop                                           ; $7a2e: $00
    nop                                           ; $7a2f: $00
    nop                                           ; $7a30: $00
    nop                                           ; $7a31: $00
    nop                                           ; $7a32: $00
    nop                                           ; $7a33: $00
    nop                                           ; $7a34: $00
    nop                                           ; $7a35: $00
    nop                                           ; $7a36: $00
    nop                                           ; $7a37: $00
    nop                                           ; $7a38: $00
    nop                                           ; $7a39: $00
    nop                                           ; $7a3a: $00
    nop                                           ; $7a3b: $00
    nop                                           ; $7a3c: $00
    nop                                           ; $7a3d: $00
    nop                                           ; $7a3e: $00
    nop                                           ; $7a3f: $00
    nop                                           ; $7a40: $00
    nop                                           ; $7a41: $00
    nop                                           ; $7a42: $00
    nop                                           ; $7a43: $00
    nop                                           ; $7a44: $00
    nop                                           ; $7a45: $00
    call z, $b6cc                                 ; $7a46: $cc $cc $b6
    ld a, [$7e62]                                 ; $7a49: $fa $62 $7e
    db $fc                                        ; $7a4c: $fc
    db $fc                                        ; $7a4d: $fc
    nop                                           ; $7a4e: $00
    nop                                           ; $7a4f: $00
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
