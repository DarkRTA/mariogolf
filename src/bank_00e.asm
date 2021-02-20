; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    db $d6, $43

    ld [hl], c                                    ; $4002: $71
    ld a, b                                       ; $4003: $78
    add a                                         ; $4004: $87
    ld a, b                                       ; $4005: $78
    or h                                          ; $4006: $b4
    ld a, b                                       ; $4007: $78
    db $10                                        ; $4008: $10
    ld [$0000], sp                                ; $4009: $08 $00 $00
    db $10                                        ; $400c: $10
    db $10                                        ; $400d: $10
    ld [bc], a                                    ; $400e: $02
    nop                                           ; $400f: $00
    db $10                                        ; $4010: $10
    jr jr_00e_4017                                ; $4011: $18 $04

    nop                                           ; $4013: $00
    db $10                                        ; $4014: $10
    jr nz, jr_00e_401d                            ; $4015: $20 $06

jr_00e_4017:
    nop                                           ; $4017: $00
    db $10                                        ; $4018: $10
    jr z, jr_00e_4023                             ; $4019: $28 $08

    nop                                           ; $401b: $00
    add b                                         ; $401c: $80

jr_00e_401d:
    db $10                                        ; $401d: $10
    ld [$0000], sp                                ; $401e: $08 $00 $00
    db $10                                        ; $4021: $10
    db $10                                        ; $4022: $10

jr_00e_4023:
    ld [bc], a                                    ; $4023: $02
    nop                                           ; $4024: $00
    db $10                                        ; $4025: $10
    jr jr_00e_402c                                ; $4026: $18 $04

    nop                                           ; $4028: $00
    db $10                                        ; $4029: $10
    jr nz, jr_00e_4032                            ; $402a: $20 $06

jr_00e_402c:
    nop                                           ; $402c: $00
    db $10                                        ; $402d: $10
    jr z, @+$0a                                   ; $402e: $28 $08

    nop                                           ; $4030: $00
    db $10                                        ; $4031: $10

jr_00e_4032:
    jr nc, jr_00e_403e                            ; $4032: $30 $0a

    nop                                           ; $4034: $00
    add b                                         ; $4035: $80
    db $10                                        ; $4036: $10
    ld [$0000], sp                                ; $4037: $08 $00 $00
    db $10                                        ; $403a: $10
    db $10                                        ; $403b: $10
    ld [bc], a                                    ; $403c: $02
    nop                                           ; $403d: $00

jr_00e_403e:
    db $10                                        ; $403e: $10
    jr jr_00e_4045                                ; $403f: $18 $04

    nop                                           ; $4041: $00
    db $10                                        ; $4042: $10
    jr nz, jr_00e_404b                            ; $4043: $20 $06

jr_00e_4045:
    nop                                           ; $4045: $00
    db $10                                        ; $4046: $10
    jr z, jr_00e_4051                             ; $4047: $28 $08

    nop                                           ; $4049: $00
    add b                                         ; $404a: $80

jr_00e_404b:
    nop                                           ; $404b: $00
    nop                                           ; $404c: $00
    nop                                           ; $404d: $00
    nop                                           ; $404e: $00
    nop                                           ; $404f: $00
    nop                                           ; $4050: $00

jr_00e_4051:
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    nop                                           ; $4053: $00
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    ld a, a                                       ; $4056: $7f
    ld a, a                                       ; $4057: $7f
    sbc c                                         ; $4058: $99
    and $bf                                       ; $4059: $e6 $bf
    reti                                          ; $405b: $d9


    rst $38                                       ; $405c: $ff
    and e                                         ; $405d: $a3
    rst $38                                       ; $405e: $ff
    or d                                          ; $405f: $b2
    cp a                                          ; $4060: $bf
    jp c, $baff                                   ; $4061: $da $ff $ba

    ei                                            ; $4064: $fb
    or l                                          ; $4065: $b5
    or c                                          ; $4066: $b1
    adc $00                                       ; $4067: $ce $00
    ld a, a                                       ; $4069: $7f
    ccf                                           ; $406a: $3f
    nop                                           ; $406b: $00
    nop                                           ; $406c: $00
    nop                                           ; $406d: $00
    nop                                           ; $406e: $00
    nop                                           ; $406f: $00
    nop                                           ; $4070: $00
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    nop                                           ; $4075: $00
    rst $38                                       ; $4076: $ff
    rst $38                                       ; $4077: $ff
    sub e                                         ; $4078: $93
    ld l, h                                       ; $4079: $6c
    rst $38                                       ; $407a: $ff
    sub e                                         ; $407b: $93
    rst $38                                       ; $407c: $ff
    cp d                                          ; $407d: $ba
    rst $38                                       ; $407e: $ff
    dec hl                                        ; $407f: $2b
    ld a, a                                       ; $4080: $7f
    xor e                                         ; $4081: $ab
    rst $38                                       ; $4082: $ff
    ld a, [hl-]                                   ; $4083: $3a
    rst $38                                       ; $4084: $ff
    sub d                                         ; $4085: $92
    sub d                                         ; $4086: $92
    ld l, l                                       ; $4087: $6d
    nop                                           ; $4088: $00
    rst $38                                       ; $4089: $ff
    rst $38                                       ; $408a: $ff
    nop                                           ; $408b: $00
    nop                                           ; $408c: $00
    nop                                           ; $408d: $00
    nop                                           ; $408e: $00
    nop                                           ; $408f: $00
    nop                                           ; $4090: $00
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    nop                                           ; $4093: $00
    nop                                           ; $4094: $00
    nop                                           ; $4095: $00
    rst $38                                       ; $4096: $ff
    rst $38                                       ; $4097: $ff
    or e                                          ; $4098: $b3
    ld c, h                                       ; $4099: $4c
    rst $38                                       ; $409a: $ff
    or e                                          ; $409b: $b3
    rst $38                                       ; $409c: $ff
    or a                                          ; $409d: $b7
    rst $38                                       ; $409e: $ff
    and h                                         ; $409f: $a4
    cp $35                                        ; $40a0: $fe $35
    rst $38                                       ; $40a2: $ff
    and h                                         ; $40a3: $a4
    rst $38                                       ; $40a4: $ff
    or e                                          ; $40a5: $b3
    or a                                          ; $40a6: $b7
    ld c, b                                       ; $40a7: $48
    nop                                           ; $40a8: $00
    rst $38                                       ; $40a9: $ff
    rst $38                                       ; $40aa: $ff
    nop                                           ; $40ab: $00

jr_00e_40ac:
    nop                                           ; $40ac: $00
    nop                                           ; $40ad: $00
    nop                                           ; $40ae: $00
    nop                                           ; $40af: $00
    nop                                           ; $40b0: $00
    nop                                           ; $40b1: $00
    ld bc, $0101                                  ; $40b2: $01 $01 $01
    ld bc, $fffe                                  ; $40b5: $01 $fe $ff
    scf                                           ; $40b8: $37
    ret z                                         ; $40b9: $c8

    rst $38                                       ; $40ba: $ff
    scf                                           ; $40bb: $37
    rst $38                                       ; $40bc: $ff
    ld [hl], l                                    ; $40bd: $75
    rst $38                                       ; $40be: $ff
    ld d, a                                       ; $40bf: $57
    rst $38                                       ; $40c0: $ff
    halt                                          ; $40c1: $76
    rst $38                                       ; $40c2: $ff
    ld d, l                                       ; $40c3: $55
    rst $38                                       ; $40c4: $ff
    ld d, l                                       ; $40c5: $55
    ld d, l                                       ; $40c6: $55
    xor d                                         ; $40c7: $aa
    nop                                           ; $40c8: $00
    rst $38                                       ; $40c9: $ff

jr_00e_40ca:
    cp $01                                        ; $40ca: $fe $01
    nop                                           ; $40cc: $00
    ld bc, $0000                                  ; $40cd: $01 $00 $00
    nop                                           ; $40d0: $00
    nop                                           ; $40d1: $00
    add b                                         ; $40d2: $80
    add b                                         ; $40d3: $80
    nop                                           ; $40d4: $00
    ret nz                                        ; $40d5: $c0

    nop                                           ; $40d6: $00
    ldh [$60], a                                  ; $40d7: $e0 $60
    sub b                                         ; $40d9: $90
    ldh a, [rBCPS]                                ; $40da: $f0 $68
    ld hl, sp+$74                                 ; $40dc: $f8 $74
    ld hl, sp+$56                                 ; $40de: $f8 $56
    ld sp, hl                                     ; $40e0: $f9
    ld d, [hl]                                    ; $40e1: $56
    ei                                            ; $40e2: $fb
    ld [hl], h                                    ; $40e3: $74
    or $68                                        ; $40e4: $f6 $68
    ld l, h                                       ; $40e6: $6c
    sub b                                         ; $40e7: $90
    jr jr_00e_40ca                                ; $40e8: $18 $e0

    jr nc, jr_00e_40ac                            ; $40ea: $30 $c0

    ld h, b                                       ; $40ec: $60
    add b                                         ; $40ed: $80
    ret nz                                        ; $40ee: $c0

    nop                                           ; $40ef: $00
    nop                                           ; $40f0: $00
    nop                                           ; $40f1: $00
    inc bc                                        ; $40f2: $03
    inc bc                                        ; $40f3: $03
    inc b                                         ; $40f4: $04
    rlca                                          ; $40f5: $07
    ld [$190f], sp                                ; $40f6: $08 $0f $19
    ld d, $3f                                     ; $40f9: $16 $3f
    add hl, hl                                    ; $40fb: $29
    ld e, a                                       ; $40fc: $5f
    ld l, c                                       ; $40fd: $69
    sbc a                                         ; $40fe: $9f
    jp hl                                         ; $40ff: $e9


    sbc a                                         ; $4100: $9f
    jp hl                                         ; $4101: $e9


    rra                                           ; $4102: $1f
    ld l, l                                       ; $4103: $6d
    rra                                           ; $4104: $1f
    dec l                                         ; $4105: $2d
    dec c                                         ; $4106: $0d
    ld [de], a                                    ; $4107: $12
    nop                                           ; $4108: $00
    rrca                                          ; $4109: $0f
    nop                                           ; $410a: $00
    rlca                                          ; $410b: $07
    nop                                           ; $410c: $00
    inc bc                                        ; $410d: $03
    ld bc, $0000                                  ; $410e: $01 $00 $00
    nop                                           ; $4111: $00
    nop                                           ; $4112: $00
    nop                                           ; $4113: $00
    add b                                         ; $4114: $80
    nop                                           ; $4115: $00
    rst $38                                       ; $4116: $ff
    rst $38                                       ; $4117: $ff
    sbc e                                         ; $4118: $9b
    ld h, h                                       ; $4119: $64
    rst $38                                       ; $411a: $ff
    sbc e                                         ; $411b: $9b
    rst $38                                       ; $411c: $ff
    cp e                                          ; $411d: $bb
    rst $38                                       ; $411e: $ff
    ld a, [hl+]                                   ; $411f: $2a
    rst $38                                       ; $4120: $ff
    cp d                                          ; $4121: $ba
    rst $38                                       ; $4122: $ff
    dec sp                                        ; $4123: $3b
    rst $38                                       ; $4124: $ff
    xor e                                         ; $4125: $ab
    xor e                                         ; $4126: $ab
    ld d, h                                       ; $4127: $54
    nop                                           ; $4128: $00
    rst $38                                       ; $4129: $ff
    rst $38                                       ; $412a: $ff
    nop                                           ; $412b: $00
    add b                                         ; $412c: $80
    nop                                           ; $412d: $00
    add b                                         ; $412e: $80
    nop                                           ; $412f: $00
    nop                                           ; $4130: $00
    nop                                           ; $4131: $00
    nop                                           ; $4132: $00
    nop                                           ; $4133: $00
    nop                                           ; $4134: $00
    nop                                           ; $4135: $00
    rst $38                                       ; $4136: $ff
    rst $38                                       ; $4137: $ff
    scf                                           ; $4138: $37
    ret z                                         ; $4139: $c8

    rst $38                                       ; $413a: $ff
    scf                                           ; $413b: $37
    rst $38                                       ; $413c: $ff
    or l                                          ; $413d: $b5
    rst $38                                       ; $413e: $ff
    and a                                         ; $413f: $a7
    rst $38                                       ; $4140: $ff

Jump_00e_4141:
    or [hl]                                       ; $4141: $b6
    rst $38                                       ; $4142: $ff
    and l                                         ; $4143: $a5
    rst $38                                       ; $4144: $ff
    dec [hl]                                      ; $4145: $35
    dec [hl]                                      ; $4146: $35
    jp z, $ff00                                   ; $4147: $ca $00 $ff

    rst $38                                       ; $414a: $ff
    nop                                           ; $414b: $00
    nop                                           ; $414c: $00
    nop                                           ; $414d: $00
    nop                                           ; $414e: $00
    nop                                           ; $414f: $00
    nop                                           ; $4150: $00
    nop                                           ; $4151: $00
    nop                                           ; $4152: $00
    nop                                           ; $4153: $00
    nop                                           ; $4154: $00
    nop                                           ; $4155: $00
    rst $38                                       ; $4156: $ff
    rst $38                                       ; $4157: $ff
    ld [hl], d                                    ; $4158: $72
    adc l                                         ; $4159: $8d
    rst $38                                       ; $415a: $ff
    ld [hl], d                                    ; $415b: $72
    rst $38                                       ; $415c: $ff
    ld d, a                                       ; $415d: $57
    rst $38                                       ; $415e: $ff
    ld [hl], l                                    ; $415f: $75
    rst $38                                       ; $4160: $ff
    ld h, l                                       ; $4161: $65
    rst $38                                       ; $4162: $ff
    ld d, a                                       ; $4163: $57
    rst $38                                       ; $4164: $ff
    ld [hl], d                                    ; $4165: $72
    ld [hl], d                                    ; $4166: $72
    adc l                                         ; $4167: $8d
    nop                                           ; $4168: $00
    rst $38                                       ; $4169: $ff
    rst $38                                       ; $416a: $ff
    nop                                           ; $416b: $00
    nop                                           ; $416c: $00
    nop                                           ; $416d: $00
    nop                                           ; $416e: $00
    nop                                           ; $416f: $00
    nop                                           ; $4170: $00
    nop                                           ; $4171: $00
    nop                                           ; $4172: $00
    nop                                           ; $4173: $00
    nop                                           ; $4174: $00
    nop                                           ; $4175: $00
    rst $38                                       ; $4176: $ff
    rst $38                                       ; $4177: $ff
    scf                                           ; $4178: $37
    ret z                                         ; $4179: $c8

    ld a, a                                       ; $417a: $7f
    or a                                          ; $417b: $b7
    rst $38                                       ; $417c: $ff
    ld [hl], l                                    ; $417d: $75
    rst $38                                       ; $417e: $ff
    ld d, a                                       ; $417f: $57
    rst $38                                       ; $4180: $ff
    halt                                          ; $4181: $76
    rst $38                                       ; $4182: $ff
    ld d, l                                       ; $4183: $55
    rst $38                                       ; $4184: $ff
    ld d, l                                       ; $4185: $55
    ld d, l                                       ; $4186: $55
    xor d                                         ; $4187: $aa
    nop                                           ; $4188: $00
    rst $38                                       ; $4189: $ff

jr_00e_418a:
    rst $38                                       ; $418a: $ff
    nop                                           ; $418b: $00
    nop                                           ; $418c: $00
    nop                                           ; $418d: $00
    nop                                           ; $418e: $00
    nop                                           ; $418f: $00
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    nop                                           ; $4194: $00
    nop                                           ; $4195: $00
    ldh [$e0], a                                  ; $4196: $e0 $e0
    ld h, b                                       ; $4198: $60
    sub b                                         ; $4199: $90
    ld hl, sp+$60                                 ; $419a: $f8 $60
    ld hl, sp+$70                                 ; $419c: $f8 $70
    ld hl, sp+$50                                 ; $419e: $f8 $50
    ld hl, sp+$50                                 ; $41a0: $f8 $50
    ld hl, sp+$70                                 ; $41a2: $f8 $70
    ld hl, sp+$60                                 ; $41a4: $f8 $60
    ld l, b                                       ; $41a6: $68
    sub b                                         ; $41a7: $90
    jr jr_00e_418a                                ; $41a8: $18 $e0

    ldh a, [rP1]                                  ; $41aa: $f0 $00
    nop                                           ; $41ac: $00
    nop                                           ; $41ad: $00
    nop                                           ; $41ae: $00

Jump_00e_41af:
    nop                                           ; $41af: $00
    nop                                           ; $41b0: $00
    nop                                           ; $41b1: $00
    inc bc                                        ; $41b2: $03
    inc bc                                        ; $41b3: $03
    inc b                                         ; $41b4: $04
    rlca                                          ; $41b5: $07
    ld [$140f], sp                                ; $41b6: $08 $0f $14
    dec de                                        ; $41b9: $1b
    cpl                                           ; $41ba: $2f
    inc [hl]                                      ; $41bb: $34
    ld c, a                                       ; $41bc: $4f
    ld [hl], h                                    ; $41bd: $74
    adc a                                         ; $41be: $8f
    db $f4                                        ; $41bf: $f4
    adc a                                         ; $41c0: $8f
    db $f4                                        ; $41c1: $f4
    rrca                                          ; $41c2: $0f
    ld [hl], l                                    ; $41c3: $75
    rlca                                          ; $41c4: $07
    dec sp                                        ; $41c5: $3b
    inc bc                                        ; $41c6: $03
    inc e                                         ; $41c7: $1c
    nop                                           ; $41c8: $00
    rrca                                          ; $41c9: $0f
    nop                                           ; $41ca: $00
    rlca                                          ; $41cb: $07
    nop                                           ; $41cc: $00
    inc bc                                        ; $41cd: $03
    ld bc, $0000                                  ; $41ce: $01 $00 $00
    nop                                           ; $41d1: $00
    nop                                           ; $41d2: $00
    nop                                           ; $41d3: $00
    add b                                         ; $41d4: $80
    nop                                           ; $41d5: $00
    rst $38                                       ; $41d6: $ff
    rst $38                                       ; $41d7: $ff
    adc $31                                       ; $41d8: $ce $31
    rst $38                                       ; $41da: $ff
    adc $fe                                       ; $41db: $ce $fe
    reti                                          ; $41dd: $d9


    cp $d9                                        ; $41de: $fe $d9
    rst $38                                       ; $41e0: $ff
    adc $ff                                       ; $41e1: $ce $ff
    add [hl]                                      ; $41e3: $86
    cp $3d                                        ; $41e4: $fe $3d
    inc a                                         ; $41e6: $3c
    jp $ff00                                      ; $41e7: $c3 $00 $ff


    rst $38                                       ; $41ea: $ff
    nop                                           ; $41eb: $00
    add b                                         ; $41ec: $80
    nop                                           ; $41ed: $00
    add b                                         ; $41ee: $80
    nop                                           ; $41ef: $00
    nop                                           ; $41f0: $00
    nop                                           ; $41f1: $00
    nop                                           ; $41f2: $00
    nop                                           ; $41f3: $00
    nop                                           ; $41f4: $00
    nop                                           ; $41f5: $00
    rst $38                                       ; $41f6: $ff
    rst $38                                       ; $41f7: $ff
    add hl, sp                                    ; $41f8: $39
    add $7f                                       ; $41f9: $c6 $7f
    cp c                                          ; $41fb: $b9
    ld a, a                                       ; $41fc: $7f
    xor e                                         ; $41fd: $ab
    ld a, a                                       ; $41fe: $7f
    cp d                                          ; $41ff: $ba
    ld a, a                                       ; $4200: $7f
    or d                                          ; $4201: $b2
    ld a, a                                       ; $4202: $7f
    xor e                                         ; $4203: $ab
    rst $38                                       ; $4204: $ff
    add hl, sp                                    ; $4205: $39
    add hl, sp                                    ; $4206: $39
    add $00                                       ; $4207: $c6 $00
    rst $38                                       ; $4209: $ff
    rst $38                                       ; $420a: $ff
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
    rst $38                                       ; $4216: $ff
    rst $38                                       ; $4217: $ff
    dec de                                        ; $4218: $1b
    db $e4                                        ; $4219: $e4
    cp a                                          ; $421a: $bf
    ld e, e                                       ; $421b: $5b
    rst $38                                       ; $421c: $ff
    cp d                                          ; $421d: $ba
    rst $38                                       ; $421e: $ff
    xor e                                         ; $421f: $ab
    rst $38                                       ; $4220: $ff
    cp e                                          ; $4221: $bb
    rst $38                                       ; $4222: $ff
    xor d                                         ; $4223: $aa
    rst $38                                       ; $4224: $ff
    ld a, [hl+]                                   ; $4225: $2a
    ld a, [hl+]                                   ; $4226: $2a
    push de                                       ; $4227: $d5
    nop                                           ; $4228: $00
    rst $38                                       ; $4229: $ff
    rst $38                                       ; $422a: $ff
    nop                                           ; $422b: $00
    nop                                           ; $422c: $00
    nop                                           ; $422d: $00
    nop                                           ; $422e: $00
    nop                                           ; $422f: $00
    nop                                           ; $4230: $00
    nop                                           ; $4231: $00
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    nop                                           ; $4234: $00
    nop                                           ; $4235: $00
    db $fc                                        ; $4236: $fc
    db $fc                                        ; $4237: $fc
    or b                                          ; $4238: $b0
    ld c, [hl]                                    ; $4239: $4e
    ld sp, hl                                     ; $423a: $f9
    or [hl]                                       ; $423b: $b6
    db $fd                                        ; $423c: $fd
    cp d                                          ; $423d: $ba
    db $fd                                        ; $423e: $fd
    xor d                                         ; $423f: $aa
    db $fd                                        ; $4240: $fd
    ld a, [hl+]                                   ; $4241: $2a
    db $fd                                        ; $4242: $fd

jr_00e_4243:
    cp d                                          ; $4243: $ba
    ld sp, hl                                     ; $4244: $f9
    or [hl]                                       ; $4245: $b6
    or c                                          ; $4246: $b1
    ld c, [hl]                                    ; $4247: $4e
    inc bc                                        ; $4248: $03
    db $fc                                        ; $4249: $fc
    cp $00                                        ; $424a: $fe $00
    nop                                           ; $424c: $00
    nop                                           ; $424d: $00
    nop                                           ; $424e: $00
    nop                                           ; $424f: $00
    nop                                           ; $4250: $00
    jr jr_00e_426b                                ; $4251: $18 $18

    inc h                                         ; $4253: $24
    inc a                                         ; $4254: $3c
    ld b, d                                       ; $4255: $42
    ld a, [hl]                                    ; $4256: $7e
    add c                                         ; $4257: $81
    ld a, [hl]                                    ; $4258: $7e
    add c                                         ; $4259: $81
    jr jr_00e_4243                                ; $425a: $18 $e7

    jr jr_00e_4282                                ; $425c: $18 $24

    nop                                           ; $425e: $00
    inc a                                         ; $425f: $3c
    nop                                           ; $4260: $00
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    nop                                           ; $4263: $00
    nop                                           ; $4264: $00
    nop                                           ; $4265: $00
    nop                                           ; $4266: $00
    nop                                           ; $4267: $00
    nop                                           ; $4268: $00
    nop                                           ; $4269: $00
    nop                                           ; $426a: $00

jr_00e_426b:
    nop                                           ; $426b: $00
    nop                                           ; $426c: $00
    nop                                           ; $426d: $00
    nop                                           ; $426e: $00
    nop                                           ; $426f: $00
    nop                                           ; $4270: $00
    inc a                                         ; $4271: $3c
    jr @+$3e                                      ; $4272: $18 $3c

    jr @+$01                                      ; $4274: $18 $ff

    ld a, [hl]                                    ; $4276: $7e
    rst $38                                       ; $4277: $ff
    ld a, [hl]                                    ; $4278: $7e
    rst $38                                       ; $4279: $ff
    inc a                                         ; $427a: $3c
    ld a, [hl]                                    ; $427b: $7e
    jr @+$3e                                      ; $427c: $18 $3c

    nop                                           ; $427e: $00
    jr jr_00e_4281                                ; $427f: $18 $00

jr_00e_4281:
    nop                                           ; $4281: $00

jr_00e_4282:
    nop                                           ; $4282: $00
    nop                                           ; $4283: $00
    nop                                           ; $4284: $00
    nop                                           ; $4285: $00
    nop                                           ; $4286: $00
    nop                                           ; $4287: $00
    nop                                           ; $4288: $00
    nop                                           ; $4289: $00
    nop                                           ; $428a: $00
    nop                                           ; $428b: $00
    nop                                           ; $428c: $00
    nop                                           ; $428d: $00
    nop                                           ; $428e: $00
    nop                                           ; $428f: $00
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    jr c, @+$1e                                   ; $4292: $38 $1c

    ld [hl], h                                    ; $4294: $74
    ld a, [hl-]                                   ; $4295: $3a
    ld [hl], h                                    ; $4296: $74
    ld c, d                                       ; $4297: $4a
    ld l, h                                       ; $4298: $6c
    ld [de], a                                    ; $4299: $12
    jr c, @+$48                                   ; $429a: $38 $46

    nop                                           ; $429c: $00
    inc a                                         ; $429d: $3c
    nop                                           ; $429e: $00
    nop                                           ; $429f: $00
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

    db $ff, $7f, $1f, $12, $00, $00, $80, $7d, $80, $7d, $00, $00, $82, $02, $ff, $27
    db $1f, $12, $ff, $7f, $00, $00, $80, $7d, $1f, $12, $ff, $7f, $00, $00, $1f, $00
    db $c0, $03, $60, $fd, $00, $7f, $00, $00, $1f, $04, $60, $82, $e0, $2b, $00, $00
    db $e0, $03, $9f, $00, $ff, $7f, $e0, $7c, $eb, $0a, $ff, $03, $fd, $00, $ff, $7f

Call_00e_42f0:
    ld a, $00                                     ; $42f0: $3e $00
    ldh [rVBK], a                                 ; $42f2: $e0 $4f
    ld hl, $4050                                  ; $42f4: $21 $50 $40
    ld de, $8000                                  ; $42f7: $11 $00 $80
    ld c, $20                                     ; $42fa: $0e $20
    call Call_000_2096                            ; $42fc: $cd $96 $20
    ld hl, $4250                                  ; $42ff: $21 $50 $42
    ld de, $8200                                  ; $4302: $11 $00 $82
    ld c, $04                                     ; $4305: $0e $04
    call Call_000_2096                            ; $4307: $cd $96 $20
    ld hl, $4290                                  ; $430a: $21 $90 $42
    ld de, $8300                                  ; $430d: $11 $00 $83
    ld c, $02                                     ; $4310: $0e $02
    call Call_000_2096                            ; $4312: $cd $96 $20
    ld hl, $42b0                                  ; $4315: $21 $b0 $42
    ld de, $0808                                  ; $4318: $11 $08 $08
    call Call_000_05a8                            ; $431b: $cd $a8 $05
    ld hl, $c878                                  ; $431e: $21 $78 $c8
    ld a, [hl+]                                   ; $4321: $2a
    cp $01                                        ; $4322: $fe $01
    jr z, jr_00e_4346                             ; $4324: $28 $20

    ld a, [$c899]                                 ; $4326: $fa $99 $c8
    ld c, a                                       ; $4329: $4f
    ld a, [$c890]                                 ; $432a: $fa $90 $c8
    ld b, $0a                                     ; $432d: $06 $0a
    ld de, $8400                                  ; $432f: $11 $00 $84
    rst $18                                       ; $4332: $df

    db $40, $12

    ld a, [$c8d9]                                 ; $4335: $fa $d9 $c8
    ld c, a                                       ; $4338: $4f
    ld a, [$c8d0]                                 ; $4339: $fa $d0 $c8
    ld b, $0b                                     ; $433c: $06 $0b
    ld de, $8440                                  ; $433e: $11 $40 $84
    rst $18                                       ; $4341: $df

    db $40, $12

    jr jr_00e_4372                                ; $4344: $18 $2c

jr_00e_4346:
    ld c, $00                                     ; $4346: $0e $00
    ld a, [hl+]                                   ; $4348: $2a
    ld b, $0a                                     ; $4349: $06 $0a
    ld de, $8400                                  ; $434b: $11 $00 $84
    rst $18                                       ; $434e: $df
    ld b, b                                       ; $434f: $40
    ld [de], a                                    ; $4350: $12
    ld c, $00                                     ; $4351: $0e $00
    ld a, [hl+]                                   ; $4353: $2a
    ld b, $0b                                     ; $4354: $06 $0b
    ld de, $8440                                  ; $4356: $11 $40 $84
    rst $18                                       ; $4359: $df
    ld b, b                                       ; $435a: $40
    ld [de], a                                    ; $435b: $12
    ld c, $00                                     ; $435c: $0e $00
    ld a, [hl+]                                   ; $435e: $2a
    ld b, $0c                                     ; $435f: $06 $0c
    ld de, $8480                                  ; $4361: $11 $80 $84
    rst $18                                       ; $4364: $df
    ld b, b                                       ; $4365: $40
    ld [de], a                                    ; $4366: $12
    ld c, $00                                     ; $4367: $0e $00
    ld a, [hl+]                                   ; $4369: $2a
    ld b, $0d                                     ; $436a: $06 $0d
    ld de, $84c0                                  ; $436c: $11 $c0 $84
    rst $18                                       ; $436f: $df
    ld b, b                                       ; $4370: $40
    ld [de], a                                    ; $4371: $12

jr_00e_4372:
    ret                                           ; $4372: $c9


Call_00e_4373:
    call Call_000_23b6                            ; $4373: $cd $b6 $23
    call Call_000_2e3b                            ; $4376: $cd $3b $2e
    ld a, [$c837]                                 ; $4379: $fa $37 $c8
    ld b, a                                       ; $437c: $47
    and a                                         ; $437d: $a7
    jr z, jr_00e_4387                             ; $437e: $28 $07

    ld a, [$c4bd]                                 ; $4380: $fa $bd $c4
    and a                                         ; $4383: $a7
    jr nz, jr_00e_4387                            ; $4384: $20 $01

    dec b                                         ; $4386: $05

jr_00e_4387:
    ld a, b                                       ; $4387: $78
    ld [$c4be], a                                 ; $4388: $ea $be $c4
    ld a, [$c4be]                                 ; $438b: $fa $be $c4
    cp $0a                                        ; $438e: $fe $0a
    jr nc, jr_00e_439b                            ; $4390: $30 $09

    ld [$c480], a                                 ; $4392: $ea $80 $c4
    xor a                                         ; $4395: $af
    ld [$c481], a                                 ; $4396: $ea $81 $c4
    jr jr_00e_43a5                                ; $4399: $18 $0a

jr_00e_439b:
    sub $09                                       ; $439b: $d6 $09
    ld [$c481], a                                 ; $439d: $ea $81 $c4
    ld a, $09                                     ; $43a0: $3e $09
    ld [$c480], a                                 ; $43a2: $ea $80 $c4

jr_00e_43a5:
    xor a                                         ; $43a5: $af
    ldh [$b9], a                                  ; $43a6: $e0 $b9
    ldh [$b8], a                                  ; $43a8: $e0 $b8
    ld a, $90                                     ; $43aa: $3e $90
    ldh [rWY], a                                  ; $43ac: $e0 $4a
    xor a                                         ; $43ae: $af
    ldh [$8b], a                                  ; $43af: $e0 $8b
    ldh [$8a], a                                  ; $43b1: $e0 $8a
    xor a                                         ; $43b3: $af
    ld [$c320], a                                 ; $43b4: $ea $20 $c3
    ld [$c321], a                                 ; $43b7: $ea $21 $c3
    ld [$c322], a                                 ; $43ba: $ea $22 $c3
    ld [$c323], a                                 ; $43bd: $ea $23 $c3
    xor a                                         ; $43c0: $af
    ld [$c329], a                                 ; $43c1: $ea $29 $c3
    ld [$c32a], a                                 ; $43c4: $ea $2a $c3
    ld a, $3f                                     ; $43c7: $3e $3f
    ld [$c32b], a                                 ; $43c9: $ea $2b $c3
    ld [$c32c], a                                 ; $43cc: $ea $2c $c3
    call Call_000_2683                            ; $43cf: $cd $83 $26
    xor a                                         ; $43d2: $af
    ldh [$bc], a                                  ; $43d3: $e0 $bc
    ret                                           ; $43d5: $c9


    push af                                       ; $43d6: $f5
    push bc                                       ; $43d7: $c5
    push de                                       ; $43d8: $d5
    push hl                                       ; $43d9: $e5
    ldh a, [$96]                                  ; $43da: $f0 $96
    push af                                       ; $43dc: $f5
    ld c, $00                                     ; $43dd: $0e $00
    ld a, [$c834]                                 ; $43df: $fa $34 $c8
    cp $01                                        ; $43e2: $fe $01
    jr z, jr_00e_43fa                             ; $43e4: $28 $14

    ld c, $01                                     ; $43e6: $0e $01
    ld a, [$c834]                                 ; $43e8: $fa $34 $c8
    cp $02                                        ; $43eb: $fe $02
    jr z, jr_00e_43fa                             ; $43ed: $28 $0b

    ld c, $02                                     ; $43ef: $0e $02
    ld a, [$c8d0]                                 ; $43f1: $fa $d0 $c8
    cp $ff                                        ; $43f4: $fe $ff
    jr z, jr_00e_43fa                             ; $43f6: $28 $02

    ld c, $03                                     ; $43f8: $0e $03

jr_00e_43fa:
    ld b, $00                                     ; $43fa: $06 $00

jr_00e_43fc:
    ld a, c                                       ; $43fc: $79
    add a                                         ; $43fd: $87
    add b                                         ; $43fe: $80
    add a                                         ; $43ff: $87
    add $22                                       ; $4400: $c6 $22
    ld l, a                                       ; $4402: $6f
    adc $44                                       ; $4403: $ce $44
    sub l                                         ; $4405: $95
    ld h, a                                       ; $4406: $67
    ld a, [hl+]                                   ; $4407: $2a
    ld h, [hl]                                    ; $4408: $66
    ld l, a                                       ; $4409: $6f
    push bc                                       ; $440a: $c5
    call Call_000_0699                            ; $440b: $cd $99 $06
    pop bc                                        ; $440e: $c1
    and a                                         ; $440f: $a7
    jr z, jr_00e_4418                             ; $4410: $28 $06

    ld a, b                                       ; $4412: $78
    xor $01                                       ; $4413: $ee $01
    ld b, a                                       ; $4415: $47
    jr jr_00e_43fc                                ; $4416: $18 $e4

jr_00e_4418:
    pop af                                        ; $4418: $f1
    ldh [$96], a                                  ; $4419: $e0 $96
    ldh [rSVBK], a                                ; $441b: $e0 $70
    pop hl                                        ; $441d: $e1
    pop de                                        ; $441e: $d1
    pop bc                                        ; $441f: $c1
    pop af                                        ; $4420: $f1
    ret                                           ; $4421: $c9


    add hl, bc                                    ; $4422: $09
    ld d, d                                       ; $4423: $52
    ld a, d                                       ; $4424: $7a
    ld l, h                                       ; $4425: $6c
    ld [hl-], a                                   ; $4426: $32
    ld b, h                                       ; $4427: $44
    cpl                                           ; $4428: $2f
    halt                                          ; $4429: $76

    db $7a, $6c

    ld a, d                                       ; $442c: $7a
    ld l, h                                       ; $442d: $6c
    ld [hl], $44                                  ; $442e: $36 $44
    sbc c                                         ; $4430: $99
    ld [hl], c                                    ; $4431: $71
    rst $18                                       ; $4432: $df
    nop                                           ; $4433: $00
    ld a, $c9                                     ; $4434: $3e $c9
    rst $18                                       ; $4436: $df
    ld [bc], a                                    ; $4437: $02
    ld a, $c9                                     ; $4438: $3e $c9

Call_00e_443a:
    ldh a, [$90]                                  ; $443a: $f0 $90
    bit 6, a                                      ; $443c: $cb $77
    jr z, jr_00e_4456                             ; $443e: $28 $16

    ld hl, $c322                                  ; $4440: $21 $22 $c3
    ld a, [hl+]                                   ; $4443: $2a
    ld h, [hl]                                    ; $4444: $66
    ld l, a                                       ; $4445: $6f
    ld de, $ff80                                  ; $4446: $11 $80 $ff
    add hl, de                                    ; $4449: $19
    bit 7, h                                      ; $444a: $cb $7c
    jr nz, jr_00e_4456                            ; $444c: $20 $08

    ld a, l                                       ; $444e: $7d
    ld [$c322], a                                 ; $444f: $ea $22 $c3
    ld a, h                                       ; $4452: $7c
    ld [$c323], a                                 ; $4453: $ea $23 $c3

jr_00e_4456:
    ldh a, [$90]                                  ; $4456: $f0 $90
    bit 7, a                                      ; $4458: $cb $7f
    jr z, jr_00e_4478                             ; $445a: $28 $1c

    ld hl, $c322                                  ; $445c: $21 $22 $c3
    ld a, [hl+]                                   ; $445f: $2a
    ld h, [hl]                                    ; $4460: $66
    ld l, a                                       ; $4461: $6f
    ld de, $0080                                  ; $4462: $11 $80 $00
    add hl, de                                    ; $4465: $19
    ld a, [$c32c]                                 ; $4466: $fa $2c $c3
    sub $12                                       ; $4469: $d6 $12
    ld e, a                                       ; $446b: $5f
    ld a, h                                       ; $446c: $7c
    cp e                                          ; $446d: $bb
    jr nc, jr_00e_4478                            ; $446e: $30 $08

    ld a, l                                       ; $4470: $7d
    ld [$c322], a                                 ; $4471: $ea $22 $c3
    ld a, h                                       ; $4474: $7c
    ld [$c323], a                                 ; $4475: $ea $23 $c3

jr_00e_4478:
    rst $18                                       ; $4478: $df

    db $3c, $04

    ret                                           ; $447b: $c9


Call_00e_447c:
    push af                                       ; $447c: $f5
    push af                                       ; $447d: $f5
    ld a, $03                                     ; $447e: $3e $03
    ldh [$96], a                                  ; $4480: $e0 $96
    ldh [rSVBK], a                                ; $4482: $e0 $70
    pop af                                        ; $4484: $f1
    ld [de], a                                    ; $4485: $12
    ld a, $02                                     ; $4486: $3e $02
    ldh [$96], a                                  ; $4488: $e0 $96
    ldh [rSVBK], a                                ; $448a: $e0 $70
    ld a, $00                                     ; $448c: $3e $00
    ld [de], a                                    ; $448e: $12
    inc de                                        ; $448f: $13
    pop af                                        ; $4490: $f1
    ret                                           ; $4491: $c9


Call_00e_4492:
    push af                                       ; $4492: $f5
    push hl                                       ; $4493: $e5

jr_00e_4494:
    ld a, $03                                     ; $4494: $3e $03
    ldh [$96], a                                  ; $4496: $e0 $96
    ldh [rSVBK], a                                ; $4498: $e0 $70
    ld a, [hl+]                                   ; $449a: $2a
    and a                                         ; $449b: $a7
    jr z, jr_00e_44ab                             ; $449c: $28 $0d

    ld [de], a                                    ; $449e: $12
    ld a, $02                                     ; $449f: $3e $02
    ldh [$96], a                                  ; $44a1: $e0 $96
    ldh [rSVBK], a                                ; $44a3: $e0 $70
    ld a, $00                                     ; $44a5: $3e $00
    ld [de], a                                    ; $44a7: $12
    inc de                                        ; $44a8: $13
    jr jr_00e_4494                                ; $44a9: $18 $e9

jr_00e_44ab:
    pop hl                                        ; $44ab: $e1
    pop af                                        ; $44ac: $f1
    ret                                           ; $44ad: $c9


    dec hl                                        ; $44ae: $2b
    dec hl                                        ; $44af: $2b
    ld a, [hl+]                                   ; $44b0: $2a
    inc hl                                        ; $44b1: $23
    cp $a0                                        ; $44b2: $fe $a0
    jr nc, jr_00e_44b8                            ; $44b4: $30 $02

    add $20                                       ; $44b6: $c6 $20

jr_00e_44b8:
    add $30                                       ; $44b8: $c6 $30
    dec de                                        ; $44ba: $1b
    ld [de], a                                    ; $44bb: $12
    ld a, $02                                     ; $44bc: $3e $02
    ldh [$96], a                                  ; $44be: $e0 $96
    ldh [rSVBK], a                                ; $44c0: $e0 $70
    ld a, $08                                     ; $44c2: $3e $08
    ld [de], a                                    ; $44c4: $12
    inc de                                        ; $44c5: $13
    jr jr_00e_4494                                ; $44c6: $18 $cc

    dec hl                                        ; $44c8: $2b
    dec hl                                        ; $44c9: $2b
    ld a, [hl+]                                   ; $44ca: $2a
    inc hl                                        ; $44cb: $23
    cp $a0                                        ; $44cc: $fe $a0
    jr nc, jr_00e_44d2                            ; $44ce: $30 $02

    add $20                                       ; $44d0: $c6 $20

jr_00e_44d2:
    add $2b                                       ; $44d2: $c6 $2b
    dec de                                        ; $44d4: $1b
    ld [de], a                                    ; $44d5: $12
    ld a, $02                                     ; $44d6: $3e $02
    ldh [$96], a                                  ; $44d8: $e0 $96
    ldh [rSVBK], a                                ; $44da: $e0 $70
    ld a, $08                                     ; $44dc: $3e $08
    ld [de], a                                    ; $44de: $12
    inc de                                        ; $44df: $13
    jr jr_00e_4494                                ; $44e0: $18 $b2

    push af                                       ; $44e2: $f5
    push hl                                       ; $44e3: $e5
    ld a, $06                                     ; $44e4: $3e $06
    add e                                         ; $44e6: $83
    ld e, a                                       ; $44e7: $5f
    jr nc, jr_00e_44eb                            ; $44e8: $30 $01

    inc d                                         ; $44ea: $14

jr_00e_44eb:
    ld a, [hl+]                                   ; $44eb: $2a
    and a                                         ; $44ec: $a7
    jr z, jr_00e_44f2                             ; $44ed: $28 $03

    dec de                                        ; $44ef: $1b
    jr jr_00e_44eb                                ; $44f0: $18 $f9

jr_00e_44f2:
    pop hl                                        ; $44f2: $e1
    pop af                                        ; $44f3: $f1
    call Call_00e_4492                            ; $44f4: $cd $92 $44
    ret                                           ; $44f7: $c9


Call_00e_44f8:
    push bc                                       ; $44f8: $c5
    push hl                                       ; $44f9: $e5
    ld c, l                                       ; $44fa: $4d
    ld b, h                                       ; $44fb: $44

Call_00e_44fc:
    add sp, -$20                                  ; $44fc: $e8 $e0
    ld hl, sp+$00                                 ; $44fe: $f8 $00
    push hl                                       ; $4500: $e5
    push de                                       ; $4501: $d5
    ld e, l                                       ; $4502: $5d
    ld d, h                                       ; $4503: $54
    ld l, c                                       ; $4504: $69
    ld h, b                                       ; $4505: $60
    rst $18                                       ; $4506: $df
    ld e, h                                       ; $4507: $5c
    dec b                                         ; $4508: $05
    pop de                                        ; $4509: $d1
    pop hl                                        ; $450a: $e1
    call Call_00e_4492                            ; $450b: $cd $92 $44
    add sp, $20                                   ; $450e: $e8 $20
    pop hl                                        ; $4510: $e1
    pop bc                                        ; $4511: $c1
    ret                                           ; $4512: $c9


Call_00e_4513:
    push af                                       ; $4513: $f5
    push bc                                       ; $4514: $c5
    push hl                                       ; $4515: $e5
    ld c, l                                       ; $4516: $4d
    ld b, h                                       ; $4517: $44
    add sp, -$0a                                  ; $4518: $e8 $f6
    ld hl, sp+$00                                 ; $451a: $f8 $00
    push de                                       ; $451c: $d5
    ld e, l                                       ; $451d: $5d
    ld d, h                                       ; $451e: $54
    ld l, c                                       ; $451f: $69
    ld h, b                                       ; $4520: $60
    ld c, e                                       ; $4521: $4b
    ld b, d                                       ; $4522: $42
    call Call_000_21f0                            ; $4523: $cd $f0 $21
    ld l, c                                       ; $4526: $69
    ld h, b                                       ; $4527: $60
    pop de                                        ; $4528: $d1
    call Call_00e_4492                            ; $4529: $cd $92 $44
    add sp, $0a                                   ; $452c: $e8 $0a
    pop hl                                        ; $452e: $e1
    pop bc                                        ; $452f: $c1
    pop af                                        ; $4530: $f1
    ret                                           ; $4531: $c9


Call_00e_4532:
    push af                                       ; $4532: $f5
    push hl                                       ; $4533: $e5
    and $1f                                       ; $4534: $e6 $1f
    add a                                         ; $4536: $87
    ld hl, $454a                                  ; $4537: $21 $4a $45
    add l                                         ; $453a: $85
    ld l, a                                       ; $453b: $6f
    jr nc, jr_00e_453f                            ; $453c: $30 $01

    inc h                                         ; $453e: $24

jr_00e_453f:
    ld a, [hl+]                                   ; $453f: $2a
    call Call_00e_447c                            ; $4540: $cd $7c $44
    ld a, [hl+]                                   ; $4543: $2a
    call Call_00e_447c                            ; $4544: $cd $7c $44
    pop hl                                        ; $4547: $e1
    pop af                                        ; $4548: $f1
    ret                                           ; $4549: $c9


    jr nz, jr_00e_457c                            ; $454a: $20 $30

    db $20, $31, $20, $32, $20, $33, $20, $34, $20, $35

    jr nz, @+$38                                  ; $4556: $20 $36

    db $20, $37

    jr nz, jr_00e_4594                            ; $455a: $20 $38

    jr nz, jr_00e_4597                            ; $455c: $20 $39

    ld sp, $3130                                  ; $455e: $31 $30 $31
    ld sp, $3231                                  ; $4561: $31 $31 $32
    ld sp, $3133                                  ; $4564: $31 $33 $31
    inc [hl]                                      ; $4567: $34
    ld sp, $3135                                  ; $4568: $31 $35 $31
    ld [hl], $31                                  ; $456b: $36 $31
    scf                                           ; $456d: $37
    ld sp, $3138                                  ; $456e: $31 $38 $31
    add hl, sp                                    ; $4571: $39
    ld [hl-], a                                   ; $4572: $32
    jr nc, @+$34                                  ; $4573: $30 $32

    ld sp, $3232                                  ; $4575: $31 $32 $32
    ld [hl-], a                                   ; $4578: $32
    inc sp                                        ; $4579: $33
    ld [hl-], a                                   ; $457a: $32
    inc [hl]                                      ; $457b: $34

jr_00e_457c:
    ld [hl-], a                                   ; $457c: $32
    dec [hl]                                      ; $457d: $35
    ld [hl-], a                                   ; $457e: $32
    ld [hl], $32                                  ; $457f: $36 $32
    scf                                           ; $4581: $37
    ld [hl-], a                                   ; $4582: $32
    jr c, @+$34                                   ; $4583: $38 $32

    add hl, sp                                    ; $4585: $39
    inc sp                                        ; $4586: $33
    jr nc, jr_00e_45bc                            ; $4587: $30 $33

    db $31                                        ; $4589: $31

Call_00e_458a:
    push af                                       ; $458a: $f5
    push bc                                       ; $458b: $c5
    push hl                                       ; $458c: $e5
    add sp, -$0a                                  ; $458d: $e8 $f6
    ld hl, sp+$00                                 ; $458f: $f8 $00
    push de                                       ; $4591: $d5
    push hl                                       ; $4592: $e5
    ld e, l                                       ; $4593: $5d

jr_00e_4594:
    ld d, h                                       ; $4594: $54
    add $36                                       ; $4595: $c6 $36

jr_00e_4597:
    ld h, $00                                     ; $4597: $26 $00
    ld l, a                                       ; $4599: $6f
    ld bc, $ffca                                  ; $459a: $01 $ca $ff
    add hl, bc                                    ; $459d: $09
    ld c, l                                       ; $459e: $4d
    ld b, h                                       ; $459f: $44
    ld a, $03                                     ; $45a0: $3e $03
    call Call_000_21f0                            ; $45a2: $cd $f0 $21
    pop hl                                        ; $45a5: $e1
    bit 7, b                                      ; $45a6: $cb $78
    jr nz, jr_00e_45c3                            ; $45a8: $20 $19

    ld a, b                                       ; $45aa: $78
    or c                                          ; $45ab: $b1
    jr z, jr_00e_45bf                             ; $45ac: $28 $11

    cp $64                                        ; $45ae: $fe $64
    jr nc, jr_00e_45c3                            ; $45b0: $30 $11

    push hl                                       ; $45b2: $e5

jr_00e_45b3:
    ld a, [hl+]                                   ; $45b3: $2a
    cp $20                                        ; $45b4: $fe $20
    jr z, jr_00e_45b3                             ; $45b6: $28 $fb

    dec hl                                        ; $45b8: $2b
    dec hl                                        ; $45b9: $2b
    ld [hl], $2b                                  ; $45ba: $36 $2b

jr_00e_45bc:
    pop hl                                        ; $45bc: $e1
    jr jr_00e_45c3                                ; $45bd: $18 $04

jr_00e_45bf:
    inc hl                                        ; $45bf: $23
    ld [hl], $2e                                  ; $45c0: $36 $2e
    dec hl                                        ; $45c2: $2b

jr_00e_45c3:
    pop de                                        ; $45c3: $d1
    call Call_00e_4492                            ; $45c4: $cd $92 $44
    add sp, $0a                                   ; $45c7: $e8 $0a
    pop hl                                        ; $45c9: $e1
    pop bc                                        ; $45ca: $c1
    pop af                                        ; $45cb: $f1
    ret                                           ; $45cc: $c9


    push af                                       ; $45cd: $f5
    push bc                                       ; $45ce: $c5
    push hl                                       ; $45cf: $e5

jr_00e_45d0:
    ld a, $03                                     ; $45d0: $3e $03
    ldh [$96], a                                  ; $45d2: $e0 $96
    ldh [rSVBK], a                                ; $45d4: $e0 $70
    ld [hl], $20                                  ; $45d6: $36 $20
    ld a, $02                                     ; $45d8: $3e $02
    ldh [$96], a                                  ; $45da: $e0 $96
    ldh [rSVBK], a                                ; $45dc: $e0 $70
    ld a, $00                                     ; $45de: $3e $00
    ld [hl+], a                                   ; $45e0: $22
    dec b                                         ; $45e1: $05
    jr nz, jr_00e_45d0                            ; $45e2: $20 $ec

    pop hl                                        ; $45e4: $e1
    pop bc                                        ; $45e5: $c1
    pop af                                        ; $45e6: $f1
    ret                                           ; $45e7: $c9


Call_00e_45e8:
    push af                                       ; $45e8: $f5
    push bc                                       ; $45e9: $c5
    push de                                       ; $45ea: $d5
    push hl                                       ; $45eb: $e5
    ld e, l                                       ; $45ec: $5d
    ld d, h                                       ; $45ed: $54
    and a                                         ; $45ee: $a7
    jr z, jr_00e_4623                             ; $45ef: $28 $32

    bit 7, a                                      ; $45f1: $cb $7f
    jr z, jr_00e_4616                             ; $45f3: $28 $21

    cp $ff                                        ; $45f5: $fe $ff
    jr z, jr_00e_4623                             ; $45f7: $28 $2a

    push af                                       ; $45f9: $f5
    ld hl, $4633                                  ; $45fa: $21 $33 $46
    ld a, [$c836]                                 ; $45fd: $fa $36 $c8
    add a                                         ; $4600: $87
    add l                                         ; $4601: $85
    ld l, a                                       ; $4602: $6f
    jr nc, jr_00e_4606                            ; $4603: $30 $01

    inc h                                         ; $4605: $24

jr_00e_4606:
    ld a, [hl+]                                   ; $4606: $2a
    ld h, [hl]                                    ; $4607: $66
    ld l, a                                       ; $4608: $6f
    pop af                                        ; $4609: $f1
    and $7f                                       ; $460a: $e6 $7f
    add l                                         ; $460c: $85
    ld l, a                                       ; $460d: $6f
    jr nc, jr_00e_4611                            ; $460e: $30 $01

    inc h                                         ; $4610: $24

jr_00e_4611:
    rst $18                                       ; $4611: $df
    ld e, h                                       ; $4612: $5c
    dec b                                         ; $4613: $05
    jr jr_00e_462e                                ; $4614: $18 $18

jr_00e_4616:
    ld hl, $0053                                  ; $4616: $21 $53 $00
    add l                                         ; $4619: $85
    ld l, a                                       ; $461a: $6f
    jr nc, jr_00e_461e                            ; $461b: $30 $01

    inc h                                         ; $461d: $24

jr_00e_461e:
    rst $18                                       ; $461e: $df
    ld e, h                                       ; $461f: $5c
    dec b                                         ; $4620: $05
    jr jr_00e_462e                                ; $4621: $18 $0b

jr_00e_4623:
    push bc                                       ; $4623: $c5
    ld hl, $c800                                  ; $4624: $21 $00 $c8
    ld bc, $000b                                  ; $4627: $01 $0b $00
    call Call_000_03d3                            ; $462a: $cd $d3 $03
    pop bc                                        ; $462d: $c1

jr_00e_462e:
    pop hl                                        ; $462e: $e1
    pop de                                        ; $462f: $d1
    pop bc                                        ; $4630: $c1
    pop af                                        ; $4631: $f1
    ret                                           ; $4632: $c9


    add [hl]                                      ; $4633: $86
    nop                                           ; $4634: $00
    add [hl]                                      ; $4635: $86
    nop                                           ; $4636: $00
    and c                                         ; $4637: $a1
    nop                                           ; $4638: $00
    cp h                                          ; $4639: $bc
    nop                                           ; $463a: $00
    rst $10                                       ; $463b: $d7
    nop                                           ; $463c: $00
    ld a, [c]                                     ; $463d: $f2
    nop                                           ; $463e: $00
    add [hl]                                      ; $463f: $86
    nop                                           ; $4640: $00
    add [hl]                                      ; $4641: $86
    nop                                           ; $4642: $00

Call_00e_4643:
    push bc                                       ; $4643: $c5
    push hl                                       ; $4644: $e5
    ld hl, $c322                                  ; $4645: $21 $22 $c3
    ld a, [hl+]                                   ; $4648: $2a
    ld b, [hl]                                    ; $4649: $46
    ld c, a                                       ; $464a: $4f
    ld h, e                                       ; $464b: $63
    ld l, $00                                     ; $464c: $2e $00
    ld a, l                                       ; $464e: $7d
    sub c                                         ; $464f: $91
    ld l, a                                       ; $4650: $6f
    ld a, h                                       ; $4651: $7c
    sbc b                                         ; $4652: $98
    ld h, a                                       ; $4653: $67
    ld a, h                                       ; $4654: $7c
    inc a                                         ; $4655: $3c
    inc a                                         ; $4656: $3c
    cp $14                                        ; $4657: $fe $14
    jp nc, Jump_00e_467a                          ; $4659: $d2 $7a $46

    add hl, hl                                    ; $465c: $29
    add hl, hl                                    ; $465d: $29
    add hl, hl                                    ; $465e: $29
    ld e, h                                       ; $465f: $5c
    ld a, d                                       ; $4660: $7a
    add a                                         ; $4661: $87
    add a                                         ; $4662: $87
    add a                                         ; $4663: $87
    ld d, a                                       ; $4664: $57
    ldh a, [$8c]                                  ; $4665: $f0 $8c
    and $3f                                       ; $4667: $e6 $3f
    ld hl, $467d                                  ; $4669: $21 $7d $46
    add l                                         ; $466c: $85
    ld l, a                                       ; $466d: $6f
    jr nc, jr_00e_4671                            ; $466e: $30 $01

    inc h                                         ; $4670: $24

jr_00e_4671:
    ld a, [hl]                                    ; $4671: $7e
    add d                                         ; $4672: $82
    ld d, a                                       ; $4673: $57
    pop hl                                        ; $4674: $e1
    pop bc                                        ; $4675: $c1
    call Call_000_26ea                            ; $4676: $cd $ea $26
    ret                                           ; $4679: $c9


Jump_00e_467a:
    pop hl                                        ; $467a: $e1
    pop bc                                        ; $467b: $c1
    ret                                           ; $467c: $c9


    nop                                           ; $467d: $00
    nop                                           ; $467e: $00
    nop                                           ; $467f: $00
    ld bc, $0101                                  ; $4680: $01 $01 $01
    ld [bc], a                                    ; $4683: $02
    ld [bc], a                                    ; $4684: $02
    ld [bc], a                                    ; $4685: $02
    inc bc                                        ; $4686: $03
    inc bc                                        ; $4687: $03
    inc bc                                        ; $4688: $03
    inc bc                                        ; $4689: $03
    inc bc                                        ; $468a: $03
    inc bc                                        ; $468b: $03
    inc bc                                        ; $468c: $03
    inc bc                                        ; $468d: $03
    inc bc                                        ; $468e: $03
    inc bc                                        ; $468f: $03
    inc bc                                        ; $4690: $03
    inc bc                                        ; $4691: $03
    inc bc                                        ; $4692: $03
    inc bc                                        ; $4693: $03
    inc bc                                        ; $4694: $03
    ld [bc], a                                    ; $4695: $02
    ld [bc], a                                    ; $4696: $02
    ld [bc], a                                    ; $4697: $02
    ld bc, $0101                                  ; $4698: $01 $01 $01
    nop                                           ; $469b: $00
    nop                                           ; $469c: $00
    nop                                           ; $469d: $00
    nop                                           ; $469e: $00
    nop                                           ; $469f: $00
    rst $38                                       ; $46a0: $ff
    rst $38                                       ; $46a1: $ff
    rst $38                                       ; $46a2: $ff
    cp $fe                                        ; $46a3: $fe $fe
    cp $fd                                        ; $46a5: $fe $fd
    db $fd                                        ; $46a7: $fd
    db $fd                                        ; $46a8: $fd
    db $fd                                        ; $46a9: $fd
    db $fd                                        ; $46aa: $fd
    db $fd                                        ; $46ab: $fd
    db $fd                                        ; $46ac: $fd
    db $fd                                        ; $46ad: $fd
    db $fd                                        ; $46ae: $fd
    db $fd                                        ; $46af: $fd
    db $fd                                        ; $46b0: $fd
    db $fd                                        ; $46b1: $fd
    db $fd                                        ; $46b2: $fd
    db $fd                                        ; $46b3: $fd
    db $fd                                        ; $46b4: $fd
    cp $fe                                        ; $46b5: $fe $fe
    cp $ff                                        ; $46b7: $fe $ff
    rst $38                                       ; $46b9: $ff
    rst $38                                       ; $46ba: $ff
    nop                                           ; $46bb: $00
    nop                                           ; $46bc: $00
    nop                                           ; $46bd: $00
    nop                                           ; $46be: $00
    nop                                           ; $46bf: $00
    nop                                           ; $46c0: $00
    nop                                           ; $46c1: $00
    nop                                           ; $46c2: $00
    nop                                           ; $46c3: $00
    rst $38                                       ; $46c4: $ff
    nop                                           ; $46c5: $00
    nop                                           ; $46c6: $00
    nop                                           ; $46c7: $00
    nop                                           ; $46c8: $00
    nop                                           ; $46c9: $00
    nop                                           ; $46ca: $00
    nop                                           ; $46cb: $00
    rst $38                                       ; $46cc: $ff

Call_00e_46cd:
jr_00e_46cd:
    push bc                                       ; $46cd: $c5
    call Call_00e_46eb                            ; $46ce: $cd $eb $46
    call Call_00e_46eb                            ; $46d1: $cd $eb $46
    call Call_00e_46eb                            ; $46d4: $cd $eb $46
    call Call_00e_46eb                            ; $46d7: $cd $eb $46
    call Call_00e_46eb                            ; $46da: $cd $eb $46
    call Call_00e_46eb                            ; $46dd: $cd $eb $46
    call Call_00e_46eb                            ; $46e0: $cd $eb $46
    call Call_00e_46eb                            ; $46e3: $cd $eb $46
    pop bc                                        ; $46e6: $c1
    dec c                                         ; $46e7: $0d
    jr nz, jr_00e_46cd                            ; $46e8: $20 $e3

    ret                                           ; $46ea: $c9


Call_00e_46eb:
    ld a, [de]                                    ; $46eb: $1a
    ld c, a                                       ; $46ec: $4f
    inc de                                        ; $46ed: $13
    ld a, [de]                                    ; $46ee: $1a
    ld b, a                                       ; $46ef: $47
    inc de                                        ; $46f0: $13
    push de                                       ; $46f1: $d5
    ld a, b                                       ; $46f2: $78
    ld d, a                                       ; $46f3: $57
    cpl                                           ; $46f4: $2f
    ld e, a                                       ; $46f5: $5f
    ld a, d                                       ; $46f6: $7a
    and b                                         ; $46f7: $a0
    ld b, a                                       ; $46f8: $47
    ld a, d                                       ; $46f9: $7a
    and c                                         ; $46fa: $a1
    ld c, a                                       ; $46fb: $4f
    ld a, [hl]                                    ; $46fc: $7e
    and e                                         ; $46fd: $a3
    or c                                          ; $46fe: $b1
    ld [hl+], a                                   ; $46ff: $22
    ld a, [hl]                                    ; $4700: $7e
    and e                                         ; $4701: $a3
    or b                                          ; $4702: $b0
    ld [hl+], a                                   ; $4703: $22
    pop de                                        ; $4704: $d1
    ret                                           ; $4705: $c9


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
    rst $38                                       ; $4710: $ff
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00
    nop                                           ; $4713: $00
    ld a, a                                       ; $4714: $7f
    nop                                           ; $4715: $00
    ret nz                                        ; $4716: $c0

    nop                                           ; $4717: $00
    add b                                         ; $4718: $80
    rst $38                                       ; $4719: $ff
    inc c                                         ; $471a: $0c
    sbc [hl]                                      ; $471b: $9e
    ld a, [de]                                    ; $471c: $1a
    or e                                          ; $471d: $b3

jr_00e_471e:
    dec sp                                        ; $471e: $3b
    and a                                         ; $471f: $a7
    dec [hl]                                      ; $4720: $35
    and a                                         ; $4721: $a7
    ld a, [$e0f0]                                 ; $4722: $fa $f0 $e0
    rst $38                                       ; $4725: $ff
    db $ec                                        ; $4726: $ec
    ldh [rP1], a                                  ; $4727: $e0 $00
    ld [hl], c                                    ; $4729: $71
    ei                                            ; $472a: $fb
    xor e                                         ; $472b: $ab
    adc [hl]                                      ; $472c: $8e
    rst $28                                       ; $472d: $ef
    ld c, l                                       ; $472e: $4d
    inc e                                         ; $472f: $1c
    ei                                            ; $4730: $fb
    jr c, @-$0e                                   ; $4731: $38 $f0

    push hl                                       ; $4733: $e5
    inc e                                         ; $4734: $1c
    cp [hl]                                       ; $4735: $be
    cp d                                          ; $4736: $ba
    rst $18                                       ; $4737: $df
    db $e3                                        ; $4738: $e3
    ld e, l                                       ; $4739: $5d
    ld b, c                                       ; $473a: $41
    ld l, l                                       ; $473b: $6d
    ld c, c                                       ; $473c: $49
    ldh [$e5], a                                  ; $473d: $e0 $e5
    ld [hl], a                                    ; $473f: $77
    rst $38                                       ; $4740: $ff
    cp a                                          ; $4741: $bf
    xor d                                         ; $4742: $aa
    adc b                                         ; $4743: $88
    ld c, a                                       ; $4744: $4f
    jr @-$07                                      ; $4745: $18 $f7

    ld [hl-], a                                   ; $4747: $32
    ret nc                                        ; $4748: $d0

    push hl                                       ; $4749: $e5
    ld c, $7f                                     ; $474a: $0e $7f
    sbc a                                         ; $474c: $9f
    sub l                                         ; $474d: $95
    pop af                                        ; $474e: $f1
    ld l, [hl]                                    ; $474f: $6e
    ld h, b                                       ; $4750: $60
    halt                                          ; $4751: $76
    ld h, h                                       ; $4752: $64
    ret nz                                        ; $4753: $c0

    push hl                                       ; $4754: $e5
    rst $38                                       ; $4755: $ff
    jr nc, jr_00e_47d1                            ; $4756: $30 $79

    ld c, c                                       ; $4758: $49
    rst $08                                       ; $4759: $cf
    or [hl]                                       ; $475a: $b6
    add [hl]                                      ; $475b: $86
    push de                                       ; $475c: $d5
    add h                                         ; $475d: $84
    cp $b0                                        ; $475e: $fe $b0
    push hl                                       ; $4760: $e5
    adc [hl]                                      ; $4761: $8e
    rst $18                                       ; $4762: $df
    push de                                       ; $4763: $d5
    ld [hl], c                                    ; $4764: $71
    xor [hl]                                      ; $4765: $ae
    jr nz, jr_00e_471e                            ; $4766: $20 $b6

    db $fd                                        ; $4768: $fd
    inc h                                         ; $4769: $24
    sub b                                         ; $476a: $90
    ldh [$fe], a                                  ; $476b: $e0 $fe
    ld bc, $0102                                  ; $476d: $01 $02 $01
    nop                                           ; $4770: $00
    add hl, sp                                    ; $4771: $39
    ld a, a                                       ; $4772: $7f
    ld a, h                                       ; $4773: $7c
    ld [hl], l                                    ; $4774: $75
    add $bb                                       ; $4775: $c6 $bb
    add d                                         ; $4777: $82
    db $db                                        ; $4778: $db
    sub d                                         ; $4779: $92
    sub h                                         ; $477a: $94
    pop hl                                        ; $477b: $e1
    xor [hl]                                      ; $477c: $ae
    db $fc                                        ; $477d: $fc
    jp hl                                         ; $477e: $e9


    ldh a, [rIF]                                  ; $477f: $f0 $0f
    pop af                                        ; $4781: $f1
    cp $e0                                        ; $4782: $fe $e0
    di                                            ; $4784: $f3
    ld a, [$03e0]                                 ; $4785: $fa $e0 $03
    cp [hl]                                       ; $4788: $be
    or $e0                                        ; $4789: $f6 $e0
    ldh a, [rIF]                                  ; $478b: $f0 $0f
    sbc a                                         ; $478d: $9f
    ldh a, [$bf]                                  ; $478e: $f0 $bf
    cp $e0                                        ; $4790: $fe $e0
    rst $38                                       ; $4792: $ff
    ld a, [$e0fa]                                 ; $4793: $fa $fa $e0
    ldh a, [$f6]                                  ; $4796: $f0 $f6
    ld [c], a                                     ; $4798: $e2
    rrca                                          ; $4799: $0f
    nop                                           ; $479a: $00
    cp $f1                                        ; $479b: $fe $f1
    cp $f7                                        ; $479d: $fe $f7
    pop af                                        ; $479f: $f1
    db $fc                                        ; $47a0: $fc
    di                                            ; $47a1: $f3
    db $fc                                        ; $47a2: $fc
    db $e3                                        ; $47a3: $e3
    rst $38                                       ; $47a4: $ff
    ldh a, [$60]                                  ; $47a5: $f0 $60
    sub b                                         ; $47a7: $90
    cp a                                          ; $47a8: $bf
    ld c, a                                       ; $47a9: $4f
    cp a                                          ; $47aa: $bf
    ld c, a                                       ; $47ab: $4f
    cp a                                          ; $47ac: $bf
    rrca                                          ; $47ad: $0f
    rst $38                                       ; $47ae: $ff
    db $fc                                        ; $47af: $fc
    db $e3                                        ; $47b0: $e3
    ld c, a                                       ; $47b1: $4f
    scf                                           ; $47b2: $37
    cp a                                          ; $47b3: $bf
    rst $38                                       ; $47b4: $ff
    ldh a, [$e0]                                  ; $47b5: $f0 $e0
    db $eb                                        ; $47b7: $eb
    ld l, a                                       ; $47b8: $6f
    sbc a                                         ; $47b9: $9f
    ldh [$ed], a                                  ; $47ba: $e0 $ed
    cp $e1                                        ; $47bc: $fe $e1
    ei                                            ; $47be: $fb
    db $fc                                        ; $47bf: $fc
    di                                            ; $47c0: $f3
    db $fc                                        ; $47c1: $fc
    db $e3                                        ; $47c2: $e3
    rst $38                                       ; $47c3: $ff
    ldh a, [$35]                                  ; $47c4: $f0 $35
    and l                                         ; $47c6: $a5
    dec [hl]                                      ; $47c7: $35
    rst $38                                       ; $47c8: $ff
    rst $28                                       ; $47c9: $ef
    ld e, [hl]                                    ; $47ca: $5e
    adc $7b                                       ; $47cb: $ce $7b
    jp nz, $c642                                  ; $47cd: $c2 $42 $c6

    ccf                                           ; $47d0: $3f

jr_00e_47d1:
    rst $38                                       ; $47d1: $ff
    rst $38                                       ; $47d2: $ff
    nop                                           ; $47d3: $00
    ret nz                                        ; $47d4: $c0

    ld a, a                                       ; $47d5: $7f
    nop                                           ; $47d6: $00
    rst $18                                       ; $47d7: $df
    ld a, [de]                                    ; $47d8: $1a
    sub a                                         ; $47d9: $97
    rst $38                                       ; $47da: $ff
    jr nc, @+$01                                  ; $47db: $30 $ff

    ld [hl], b                                    ; $47dd: $70
    db $db                                        ; $47de: $db
    ld [de], a                                    ; $47df: $12
    ld [de], a                                    ; $47e0: $12
    ld [hl], $ed                                  ; $47e1: $36 $ed
    cp $f8                                        ; $47e3: $fe $f8
    ret nz                                        ; $47e5: $c0

    rst $38                                       ; $47e6: $ff
    nop                                           ; $47e7: $00
    ld a, l                                       ; $47e8: $7d
    ld e, c                                       ; $47e9: $59
    ld a, l                                       ; $47ea: $7d
    ld e, e                                       ; $47eb: $5b
    ld a, d                                       ; $47ec: $7a
    cp a                                          ; $47ed: $bf
    ld d, d                                       ; $47ee: $52
    ld a, e                                       ; $47ef: $7b
    ld b, [hl]                                    ; $47f0: $46
    ld b, [hl]                                    ; $47f1: $46
    adc $b9                                       ; $47f2: $ce $b9
    ldh a, [$e2]                                  ; $47f4: $f0 $e2
    rst $18                                       ; $47f6: $df

jr_00e_47f7:
    rst $28                                       ; $47f7: $ef
    db $10                                        ; $47f8: $10
    sbc [hl]                                      ; $47f9: $9e
    jr nc, jr_00e_47f7                            ; $47fa: $30 $fb

    ldh [$e8], a                                  ; $47fc: $e0 $e8
    ld e, l                                       ; $47fe: $5d
    pop bc                                        ; $47ff: $c1
    ei                                            ; $4800: $fb
    rst $38                                       ; $4801: $ff
    jp $c96d                                      ; $4802: $c3 $6d $c9


    ld a, l                                       ; $4805: $7d
    ld b, e                                       ; $4806: $43
    ld b, d                                       ; $4807: $42
    rst $00                                       ; $4808: $c7
    cp h                                          ; $4809: $bc
    db $fd                                        ; $480a: $fd
    cp $c5                                        ; $480b: $fe $c5
    pop bc                                        ; $480d: $c1
    ld [hl], a                                    ; $480e: $77
    dec l                                         ; $480f: $2d
    ei                                            ; $4810: $fb
    jr z, @+$01                                   ; $4811: $28 $ff

    ld [$6ddf], sp                                ; $4813: $08 $df $6d
    add hl, de                                    ; $4816: $19
    sbc c                                         ; $4817: $99
    sbc e                                         ; $4818: $9b
    ld h, [hl]                                    ; $4819: $66
    ret nz                                        ; $481a: $c0

    ld [c], a                                     ; $481b: $e2
    cp [hl]                                       ; $481c: $be
    ld hl, $bdff                                  ; $481d: $21 $ff $bd
    ld hl, $21b6                                  ; $4820: $21 $b6 $21
    or [hl]                                       ; $4823: $b6
    inc h                                         ; $4824: $24
    inc h                                         ; $4825: $24
    ld l, l                                       ; $4826: $6d
    db $fd                                        ; $4827: $fd
    db $db                                        ; $4828: $db
    or b                                          ; $4829: $b0
    ld [c], a                                     ; $482a: $e2
    ei                                            ; $482b: $fb
    or d                                          ; $482c: $b2
    ei                                            ; $482d: $fb
    or [hl]                                       ; $482e: $b6
    push af                                       ; $482f: $f5
    and [hl]                                      ; $4830: $a6
    rst $38                                       ; $4831: $ff
    push af                                       ; $4832: $f5
    adc h                                         ; $4833: $8c
    adc c                                         ; $4834: $89
    sbc h                                         ; $4835: $9c
    ld [hl], c                                    ; $4836: $71
    ld hl, sp+$03                                 ; $4837: $f8 $03
    nop                                           ; $4839: $00
    ldh a, [$cd]                                  ; $483a: $f0 $cd
    ldh [rP1], a                                  ; $483c: $e0 $00
    ldh a, [rTMA]                                 ; $483e: $f0 $06
    pop hl                                        ; $4840: $e1
    ld a, [$03c1]                                 ; $4841: $fa $c1 $03
    rrca                                          ; $4844: $0f
    rst $30                                       ; $4845: $f7
    rrca                                          ; $4846: $0f
    adc d                                         ; $4847: $8a
    ld d, b                                       ; $4848: $50
    pop hl                                        ; $4849: $e1
    or b                                          ; $484a: $b0
    cp $c4                                        ; $484b: $fe $c4
    or b                                          ; $484d: $b0
    ld b, h                                       ; $484e: $44
    ld [c], a                                     ; $484f: $e2
    ld [bc], a                                    ; $4850: $02
    db $e3                                        ; $4851: $e3
    ld a, [$0cc1]                                 ; $4852: $fa $c1 $0c
    db $e3                                        ; $4855: $e3
    inc bc                                        ; $4856: $03
    ld hl, sp-$21                                 ; $4857: $f8 $df
    ldh [$08], a                                  ; $4859: $e0 $08
    db $e3                                        ; $485b: $e3
    cp $c1                                        ; $485c: $fe $c1
    ld b, b                                       ; $485e: $40
    or b                                          ; $485f: $b0
    rrca                                          ; $4860: $0f
    add c                                         ; $4861: $81
    rst $38                                       ; $4862: $ff
    nop                                           ; $4863: $00
    db $e3                                        ; $4864: $e3
    sbc $c5                                       ; $4865: $de $c5

jr_00e_4867:
    ldh [$eb], a                                  ; $4867: $e0 $eb
    ret c                                         ; $4869: $d8

    pop bc                                        ; $486a: $c1
    ld [$fee5], sp                                ; $486b: $08 $e5 $fe
    jp Jump_000_01f8                              ; $486e: $c3 $f8 $01


    rst $30                                       ; $4871: $f7
    add b                                         ; $4872: $80
    call nz, $c20c                                ; $4873: $c4 $0c $c2
    ld hl, sp-$18                                 ; $4876: $f8 $e8
    rst $38                                       ; $4878: $ff
    rst $38                                       ; $4879: $ff
    rst $38                                       ; $487a: $ff
    rst $38                                       ; $487b: $ff
    rst $38                                       ; $487c: $ff
    rst $38                                       ; $487d: $ff
    pop af                                        ; $487e: $f1
    ldh a, [$57]                                  ; $487f: $f0 $57
    ldh a, [rIF]                                  ; $4881: $f0 $0f
    ld bc, $c002                                  ; $4883: $01 $02 $c0
    ld bc, $e0fa                                  ; $4886: $01 $fa $e0
    pop af                                        ; $4889: $f1
    or $e0                                        ; $488a: $f6 $e0
    add hl, bc                                    ; $488c: $09
    nop                                           ; $488d: $00
    nop                                           ; $488e: $00
    ret nz                                        ; $488f: $c0

    ld a, [bc]                                    ; $4890: $0a
    pop hl                                        ; $4891: $e1
    or b                                          ; $4892: $b0
    ld [bc], a                                    ; $4893: $02
    ret nz                                        ; $4894: $c0

    ld hl, sp-$3f                                 ; $4895: $f8 $c1
    cp $c1                                        ; $4897: $fe $c1
    ld [$7ee1], sp                                ; $4899: $08 $e1 $7e
    db $fc                                        ; $489c: $fc
    and c                                         ; $489d: $a1
    ld c, $01                                     ; $489e: $0e $01
    cp $f1                                        ; $48a0: $fe $f1
    rrca                                          ; $48a2: $0f
    nop                                           ; $48a3: $00
    jr nz, jr_00e_4867                            ; $48a4: $20 $c1

    inc sp                                        ; $48a6: $33
    nop                                           ; $48a7: $00
    ldh a, [$fe]                                  ; $48a8: $f0 $fe
    and c                                         ; $48aa: $a1
    ld a, [$40e1]                                 ; $48ab: $fa $e1 $40
    or b                                          ; $48ae: $b0
    sbc [hl]                                      ; $48af: $9e
    rst $38                                       ; $48b0: $ff
    rst $38                                       ; $48b1: $ff
    rst $38                                       ; $48b2: $ff
    xor h                                         ; $48b3: $ac
    rst $38                                       ; $48b4: $ff
    rst $38                                       ; $48b5: $ff
    ei                                            ; $48b6: $fb
    ld a, [$0003]                                 ; $48b7: $fa $03 $00
    jp z, Jump_000_1f81                           ; $48ba: $ca $81 $1f

    and [hl]                                      ; $48bd: $a6
    add b                                         ; $48be: $80
    ccf                                           ; $48bf: $3f
    ld [$80a4], a                                 ; $48c0: $ea $a4 $80
    scf                                           ; $48c3: $37
    ldh a, [$e0]                                  ; $48c4: $f0 $e0
    rra                                           ; $48c6: $1f
    db $ec                                        ; $48c7: $ec
    ldh [$03], a                                  ; $48c8: $e0 $03
    nop                                           ; $48ca: $00
    rlca                                          ; $48cb: $07
    xor [hl]                                      ; $48cc: $ae
    and [hl]                                      ; $48cd: $a6
    add b                                         ; $48ce: $80
    rst $38                                       ; $48cf: $ff
    nop                                           ; $48d0: $00
    ld bc, $e2f0                                  ; $48d1: $01 $f0 $e2
    db $e3                                        ; $48d4: $e3
    ld a, [c]                                     ; $48d5: $f2
    ldh [$33], a                                  ; $48d6: $e0 $33
    ei                                            ; $48d8: $fb
    nop                                           ; $48d9: $00
    rst $08                                       ; $48da: $cf
    call nc, $67e0                                ; $48db: $d4 $e0 $67
    nop                                           ; $48de: $00
    sbc e                                         ; $48df: $9b
    nop                                           ; $48e0: $00
    daa                                           ; $48e1: $27
    ld e, e                                       ; $48e2: $5b
    nop                                           ; $48e3: $00
    jp $e4ec                                      ; $48e4: $c3 $ec $e4


    rst $38                                       ; $48e7: $ff
    nop                                           ; $48e8: $00
    nop                                           ; $48e9: $00
    ldh [$03], a                                  ; $48ea: $e0 $03
    nop                                           ; $48ec: $00
    ld [c], a                                     ; $48ed: $e2
    ld c, $f8                                     ; $48ee: $0e $f8
    pop hl                                        ; $48f0: $e1
    rlca                                          ; $48f1: $07
    rrca                                          ; $48f2: $0f
    ldh a, [rDIV]                                 ; $48f3: $f0 $04
    ld [c], a                                     ; $48f5: $e2
    ld b, $e1                                     ; $48f6: $06 $e1
    or $e3                                        ; $48f8: $f6 $e3
    nop                                           ; $48fa: $00
    and c                                         ; $48fb: $a1
    rst $28                                       ; $48fc: $ef
    inc c                                         ; $48fd: $0c
    inc bc                                        ; $48fe: $03
    ld c, $01                                     ; $48ff: $0e $01
    ld [bc], a                                    ; $4901: $02
    pop hl                                        ; $4902: $e1
    inc c                                         ; $4903: $0c
    inc bc                                        ; $4904: $03
    ld [$073d], sp                                ; $4905: $08 $3d $07
    inc b                                         ; $4908: $04
    pop hl                                        ; $4909: $e1
    nop                                           ; $490a: $00
    ldh a, [rLCDC]                                ; $490b: $f0 $40
    or b                                          ; $490d: $b0
    inc b                                         ; $490e: $04
    pop bc                                        ; $490f: $c1
    ld [bc], a                                    ; $4910: $02

jr_00e_4911:
    ldh [rNR24], a                                ; $4911: $e0 $19
    ldh a, [$61]                                  ; $4913: $f0 $61
    rst $38                                       ; $4915: $ff
    adc [hl]                                      ; $4916: $8e
    adc h                                         ; $4917: $8c
    rst $38                                       ; $4918: $ff
    rst $38                                       ; $4919: $ff
    ld l, d                                       ; $491a: $6a
    pop hl                                        ; $491b: $e1
    ld h, [hl]                                    ; $491c: $66
    ldh [$f8], a                                  ; $491d: $e0 $f8
    db $e3                                        ; $491f: $e3
    cp $ff                                        ; $4920: $fe $ff
    xor $f8                                       ; $4922: $ee $f8
    rst $38                                       ; $4924: $ff
    ldh [$fc], a                                  ; $4925: $e0 $fc

jr_00e_4927:
    jp $88f7                                      ; $4927: $c3 $f7 $88


    rst $38                                       ; $492a: $ff
    ldh a, [$8f]                                  ; $492b: $f0 $8f
    rst $18                                       ; $492d: $df
    jr nz, jr_00e_4911                            ; $492e: $20 $e1

    ld e, $80                                     ; $4930: $1e $80
    ld a, a                                       ; $4932: $7f
    rst $38                                       ; $4933: $ff
    rst $38                                       ; $4934: $ff
    rra                                           ; $4935: $1f
    rst $38                                       ; $4936: $ff
    rlca                                          ; $4937: $07
    adc a                                         ; $4938: $8f
    ld [hl], e                                    ; $4939: $73
    ld a, c                                       ; $493a: $79
    add a                                         ; $493b: $87
    cp a                                          ; $493c: $bf
    add l                                         ; $493d: $85
    ld a, e                                       ; $493e: $7b
    ld hl, sp+$07                                 ; $493f: $f8 $07
    inc b                                         ; $4941: $04
    ei                                            ; $4942: $fb
    jr nc, jr_00e_4927                            ; $4943: $30 $e2

    add e                                         ; $4945: $83
    dec hl                                        ; $4946: $2b
    nop                                           ; $4947: $00
    sbc a                                         ; $4948: $9f
    db $fc                                        ; $4949: $fc
    ldh [$87], a                                  ; $494a: $e0 $87
    ld hl, sp-$20                                 ; $494c: $f8 $e0
    adc a                                         ; $494e: $8f
    db $f4                                        ; $494f: $f4
    ldh [$c3], a                                  ; $4950: $e0 $c3
    ld h, c                                       ; $4952: $61
    push af                                       ; $4953: $f5

jr_00e_4954:
    add hl, sp                                    ; $4954: $39
    nop                                           ; $4955: $00
    db $e4                                        ; $4956: $e4
    cpl                                           ; $4957: $2f
    and d                                         ; $4958: $a2
    ld h, b                                       ; $4959: $60
    ld sp, $0e00                                  ; $495a: $31 $00 $0e
    nop                                           ; $495d: $00
    push af                                       ; $495e: $f5
    pop af                                        ; $495f: $f1
    sbc d                                         ; $4960: $9a
    ld h, b                                       ; $4961: $60

jr_00e_4962:
    ld [hl], e                                    ; $4962: $73
    and [hl]                                      ; $4963: $a6
    ld h, d                                       ; $4964: $62
    rst $38                                       ; $4965: $ff
    nop                                           ; $4966: $00
    inc e                                         ; $4967: $1c
    nop                                           ; $4968: $00
    dec d                                         ; $4969: $15
    inc hl                                        ; $496a: $23
    adc h                                         ; $496b: $8c
    ld h, b                                       ; $496c: $60
    ld hl, sp-$0e                                 ; $496d: $f8 $f2
    ret nz                                        ; $496f: $c0

    jr c, jr_00e_4962                             ; $4970: $38 $f0

    jp nz, $63ff                                  ; $4972: $c2 $ff $63

    ld [c], a                                     ; $4975: $e2
    pop hl                                        ; $4976: $e1
    ld d, l                                       ; $4977: $55
    pop af                                        ; $4978: $f1
    sub $e0                                       ; $4979: $d6 $e0
    ld sp, $62f0                                  ; $497b: $31 $f0 $62
    jr c, jr_00e_4954                             ; $497e: $38 $d4

    ret nz                                        ; $4980: $c0

    ld hl, sp+$66                                 ; $4981: $f8 $66
    ld h, b                                       ; $4983: $60
    rst $30                                       ; $4984: $f7
    inc hl                                        ; $4985: $23
    nop                                           ; $4986: $00
    inc e                                         ; $4987: $1c
    ld h, e                                       ; $4988: $63
    db $e4                                        ; $4989: $e4
    nop                                           ; $498a: $00
    rst $38                                       ; $498b: $ff
    rlca                                          ; $498c: $07
    ld hl, sp-$21                                 ; $498d: $f8 $df
    jr @-$0d                                      ; $498f: $18 $f1

    ld sp, $4ece                                  ; $4991: $31 $ce $4e
    ldh a, [$e6]                                  ; $4994: $f0 $e6
    ret nz                                        ; $4996: $c0

    cp a                                          ; $4997: $bf
    rra                                           ; $4998: $1f

jr_00e_4999:
    or b                                          ; $4999: $b0
    rst $08                                       ; $499a: $cf
    ret z                                         ; $499b: $c8

    daa                                           ; $499c: $27
    inc h                                         ; $499d: $24
    ldh [$e6], a                                  ; $499e: $e0 $e6
    ret c                                         ; $49a0: $d8

    db $e4                                        ; $49a1: $e4

jr_00e_49a2:
    rst $38                                       ; $49a2: $ff
    rst $38                                       ; $49a3: $ff
    cp [hl]                                       ; $49a4: $be
    adc l                                         ; $49a5: $8d
    adc [hl]                                      ; $49a6: $8e
    ld h, c                                       ; $49a7: $61
    nop                                           ; $49a8: $00
    adc [hl]                                      ; $49a9: $8e
    nop                                           ; $49aa: $00
    ld [hl], b                                    ; $49ab: $70
    ld b, b                                       ; $49ac: $40
    ldh [$38], a                                  ; $49ad: $e0 $38
    xor d                                         ; $49af: $aa
    ld a, d                                       ; $49b0: $7a
    ret nz                                        ; $49b1: $c0

    inc e                                         ; $49b2: $1c
    ldh a, [rLCDC]                                ; $49b3: $f0 $40
    jp $c040                                      ; $49b5: $c3 $40 $c0


    ld b, $4c                                     ; $49b8: $06 $4c
    ldh [$09], a                                  ; $49ba: $e0 $09

jr_00e_49bc:
    rst $28                                       ; $49bc: $ef
    nop                                           ; $49bd: $00
    and $00                                       ; $49be: $e6 $00
    jr jr_00e_49a2                                ; $49c0: $18 $e0

    ld b, b                                       ; $49c2: $40
    jr nz, jr_00e_49c5                            ; $49c3: $20 $00

jr_00e_49c5:
    sbc b                                         ; $49c5: $98
    xor a                                         ; $49c6: $af
    nop                                           ; $49c7: $00
    ld b, a                                       ; $49c8: $47
    nop                                           ; $49c9: $00
    jr nc, jr_00e_49bc                            ; $49ca: $30 $f0

    ldh [$c6], a                                  ; $49cc: $e0 $c6
    ld a, [$00e0]                                 ; $49ce: $fa $e0 $00
    xor e                                         ; $49d1: $ab
    nop                                           ; $49d2: $00
    rrca                                          ; $49d3: $0f
    db $f4                                        ; $49d4: $f4
    ldh [$ce], a                                  ; $49d5: $e0 $ce
    jr c, jr_00e_4999                             ; $49d7: $38 $c0

    db $fc                                        ; $49d9: $fc
    ld d, $c0                                     ; $49da: $16 $c0
    ld [hl], b                                    ; $49dc: $70
    cp $c0                                        ; $49dd: $fe $c0

jr_00e_49df:
    ld b, b                                       ; $49df: $40
    ld h, l                                       ; $49e0: $65
    nop                                           ; $49e1: $00
    adc c                                         ; $49e2: $89
    nop                                           ; $49e3: $00
    ld [hl-], a                                   ; $49e4: $32

jr_00e_49e5:
    nop                                           ; $49e5: $00
    call nz, $d0ea                                ; $49e6: $c4 $ea $d0
    ld [c], a                                     ; $49e9: $e2
    ld [$40b0], sp                                ; $49ea: $08 $b0 $40
    inc a                                         ; $49ed: $3c
    cp $a0                                        ; $49ee: $fe $a0
    ld h, h                                       ; $49f0: $64
    nop                                           ; $49f1: $00
    sub e                                         ; $49f2: $93
    ret nz                                        ; $49f3: $c0

    ld a, [hl-]                                   ; $49f4: $3a
    ld [c], a                                     ; $49f5: $e2
    ld [hl], b                                    ; $49f6: $70
    push bc                                       ; $49f7: $c5
    jr nz, jr_00e_49df                            ; $49f8: $20 $e5

    sbc b                                         ; $49fa: $98
    add e                                         ; $49fb: $83
    jr nz, jr_00e_49e5                            ; $49fc: $20 $e7

    ld c, a                                       ; $49fe: $4f
    cp $fc                                        ; $49ff: $fe $fc
    ld a, h                                       ; $4a01: $7c
    rst $38                                       ; $4a02: $ff
    and e                                         ; $4a03: $a3
    cp a                                          ; $4a04: $bf
    reti                                          ; $4a05: $d9


    ei                                            ; $4a06: $fb
    cp h                                          ; $4a07: $bc
    db $fd                                        ; $4a08: $fd
    cp a                                          ; $4a09: $bf
    cp a                                          ; $4a0a: $bf
    rst $38                                       ; $4a0b: $ff
    db $ec                                        ; $4a0c: $ec
    rst $38                                       ; $4a0d: $ff
    pop de                                        ; $4a0e: $d1
    ld a, a                                       ; $4a0f: $7f
    db $ec                                        ; $4a10: $ec

jr_00e_4a11:
    ccf                                           ; $4a11: $3f
    rra                                           ; $4a12: $1f
    ld e, $ff                                     ; $4a13: $1e $ff

jr_00e_4a15:
    inc de                                        ; $4a15: $13
    inc de                                        ; $4a16: $13
    and e                                         ; $4a17: $a3
    and e                                         ; $4a18: $a3
    ld h, l                                       ; $4a19: $65
    push hl                                       ; $4a1a: $e5
    dec e                                         ; $4a1b: $1d
    db $fd                                        ; $4a1c: $fd
    rst $38                                       ; $4a1d: $ff
    jp Jump_000_39ff                              ; $4a1e: $c3 $ff $39


    db $fd                                        ; $4a21: $fd
    ld b, a                                       ; $4a22: $47
    rst $30                                       ; $4a23: $f7
    rst $38                                       ; $4a24: $ff
    ldh [rIE], a                                  ; $4a25: $e0 $ff
    ccf                                           ; $4a27: $3f
    jr c, jr_00e_4a11                             ; $4a28: $38 $e7

    db $e4                                        ; $4a2a: $e4
    scf                                           ; $4a2b: $37
    ld [hl], $5d                                  ; $4a2c: $36 $5d
    ld e, a                                       ; $4a2e: $5f
    ccf                                           ; $4a2f: $3f
    adc e                                         ; $4a30: $8b
    adc a                                         ; $4a31: $8f
    di                                            ; $4a32: $f3
    ld a, [$7607]                                 ; $4a33: $fa $07 $76
    ld de, $8eff                                  ; $4a36: $11 $ff $8e
    ld c, h                                       ; $4a39: $4c
    rst $18                                       ; $4a3a: $df
    pop hl                                        ; $4a3b: $e1
    nop                                           ; $4a3c: $00
    ld e, $00                                     ; $4a3d: $1e $00
    ld h, b                                       ; $4a3f: $60
    ld a, $c0                                     ; $4a40: $3e $c0
    jr nz, jr_00e_4a44                            ; $4a42: $20 $00

jr_00e_4a44:
    ld [hl], a                                    ; $4a44: $77
    ld c, a                                       ; $4a45: $4f
    nop                                           ; $4a46: $00
    add b                                         ; $4a47: $80
    inc b                                         ; $4a48: $04
    ld b, b                                       ; $4a49: $40
    pop hl                                        ; $4a4a: $e1
    nop                                           ; $4a4b: $00
    inc c                                         ; $4a4c: $0c
    cp d                                          ; $4a4d: $ba
    and b                                         ; $4a4e: $a0
    rst $10                                       ; $4a4f: $d7
    rlca                                          ; $4a50: $07
    nop                                           ; $4a51: $00
    ld a, b                                       ; $4a52: $78
    jr z, jr_00e_4a15                             ; $4a53: $28 $c0

    inc a                                         ; $4a55: $3c
    db $f4                                        ; $4a56: $f4
    jr nz, @-$31                                  ; $4a57: $20 $cd

    nop                                           ; $4a59: $00
    ld d, l                                       ; $4a5a: $55
    ld [bc], a                                    ; $4a5b: $02
    ld d, $e0                                     ; $4a5c: $16 $e0
    ld bc, $6255                                  ; $4a5e: $01 $55 $62
    ld a, a                                       ; $4a61: $7f
    db $e4                                        ; $4a62: $e4
    jr nz, @-$78                                  ; $4a63: $20 $86

    ld [hl+], a                                   ; $4a65: $22
    ret nz                                        ; $4a66: $c0

    ld d, l                                       ; $4a67: $55
    ld b, b                                       ; $4a68: $40
    ld c, $c0                                     ; $4a69: $0e $c0
    ld h, b                                       ; $4a6b: $60
    ld [de], a                                    ; $4a6c: $12
    ret nz                                        ; $4a6d: $c0

    jr nc, jr_00e_4a44                            ; $4a6e: $30 $d4

jr_00e_4a70:
    jr nz, jr_00e_4aa5                            ; $4a70: $20 $33

    ld b, $e0                                     ; $4a72: $06 $e0
    dec d                                         ; $4a74: $15
    jr c, jr_00e_4a79                             ; $4a75: $38 $02

    ret nz                                        ; $4a77: $c0

    ld [hl], b                                    ; $4a78: $70

jr_00e_4a79:
    ld c, h                                       ; $4a79: $4c
    jp nz, $c2ff                                  ; $4a7a: $c2 $ff $c2

    ldh [$c0], a                                  ; $4a7d: $e0 $c0
    pop bc                                        ; $4a7f: $c1
    ldh a, [$e1]                                  ; $4a80: $f0 $e1
    ld sp, $1a0c                                  ; $4a82: $31 $0c $1a
    and b                                         ; $4a85: $a0
    ld l, a                                       ; $4a86: $6f
    rst $18                                       ; $4a87: $df
    db $fd                                        ; $4a88: $fd
    db $fc                                        ; $4a89: $fc
    rrca                                          ; $4a8a: $0f
    ccf                                           ; $4a8b: $3f
    cp d                                          ; $4a8c: $ba
    jp nz, $e170                                  ; $4a8d: $c2 $70 $e1

    jp nz, $2068                                  ; $4a90: $c2 $68 $20

    and $71                                       ; $4a93: $e6 $71
    and b                                         ; $4a95: $a0
    ld h, b                                       ; $4a96: $60
    jr nz, @+$72                                  ; $4a97: $20 $70

    db $e3                                        ; $4a99: $e3
    ld e, b                                       ; $4a9a: $58
    jr nz, jr_00e_4b00                            ; $4a9b: $20 $63

    rst $30                                       ; $4a9d: $f7
    ld [de], a                                    ; $4a9e: $12
    rst $18                                       ; $4a9f: $df
    and b                                         ; $4aa0: $a0
    nop                                           ; $4aa1: $00
    ld [hl], b                                    ; $4aa2: $70
    db $e4                                        ; $4aa3: $e4
    ld c, b                                       ; $4aa4: $48

jr_00e_4aa5:
    jr nz, @-$62                                  ; $4aa5: $20 $9c

    xor a                                         ; $4aa7: $af
    ld c, a                                       ; $4aa8: $4f
    rst $38                                       ; $4aa9: $ff
    rst $38                                       ; $4aaa: $ff
    rst $38                                       ; $4aab: $ff
    rst $38                                       ; $4aac: $ff
    ldh a, [rIE]                                  ; $4aad: $f0 $ff
    rst $38                                       ; $4aaf: $ff
    rst $38                                       ; $4ab0: $ff
    rst $38                                       ; $4ab1: $ff
    rra                                           ; $4ab2: $1f
    or $16                                        ; $4ab3: $f6 $16
    add e                                         ; $4ab5: $83
    add c                                         ; $4ab6: $81
    rrca                                          ; $4ab7: $0f
    inc de                                        ; $4ab8: $13
    rrca                                          ; $4ab9: $0f
    rst $18                                       ; $4aba: $df
    ld sp, $600f                                  ; $4abb: $31 $0f $60
    rrca                                          ; $4abe: $0f
    sub b                                         ; $4abf: $90
    ld [de], a                                    ; $4ac0: $12
    ld b, b                                       ; $4ac1: $40
    or h                                          ; $4ac2: $b4
    ldh a, [rIE]                                  ; $4ac3: $f0 $ff
    ld hl, sp-$10                                 ; $4ac5: $f8 $f0
    cp c                                          ; $4ac7: $b9
    ldh a, [$f3]                                  ; $4ac8: $f0 $f3
    ldh a, [$b3]                                  ; $4aca: $f0 $b3
    ldh a, [rSTAT]                                ; $4acc: $f0 $41
    or a                                          ; $4ace: $b7
    jr nc, jr_00e_4a70                            ; $4acf: $30 $9f

    rst $38                                       ; $4ad1: $ff
    rst $38                                       ; $4ad2: $ff
    rst $38                                       ; $4ad3: $ff
    rst $38                                       ; $4ad4: $ff
    nop                                           ; $4ad5: $00
    jp $0148                                      ; $4ad6: $c3 $48 $01


    ld bc, $037b                                  ; $4ad9: $01 $7b $03
    ret nz                                        ; $4adc: $c0

    sub b                                         ; $4add: $90
    rst $00                                       ; $4ade: $c7
    ld a, e                                       ; $4adf: $7b
    and e                                         ; $4ae0: $a3
    sub b                                         ; $4ae1: $90
    rst $00                                       ; $4ae2: $c7
    ld d, b                                       ; $4ae3: $50
    ld [bc], a                                    ; $4ae4: $02
    sub b                                         ; $4ae5: $90
    call $e7c0                                    ; $4ae6: $cd $c0 $e7
    nop                                           ; $4ae9: $00
    nop                                           ; $4aea: $00
    sub a                                         ; $4aeb: $97
    pop bc                                        ; $4aec: $c1
    nop                                           ; $4aed: $00
    ld [hl], a                                    ; $4aee: $77
    inc e                                         ; $4aef: $1c
    ld h, b                                       ; $4af0: $60
    ld a, b                                       ; $4af1: $78
    jr @+$62                                      ; $4af2: $18 $60

    call nz, $12e0                                ; $4af4: $c4 $e0 $12
    sbc l                                         ; $4af7: $9d
    ccf                                           ; $4af8: $3f
    ld l, [hl]                                    ; $4af9: $6e
    ld h, b                                       ; $4afa: $60
    ldh [rP1], a                                  ; $4afb: $e0 $00
    ret nz                                        ; $4afd: $c0

    ld a, [c]                                     ; $4afe: $f2

Jump_00e_4aff:
    ld b, b                                       ; $4aff: $40

jr_00e_4b00:
    and h                                         ; $4b00: $a4
    and c                                         ; $4b01: $a1
    nop                                           ; $4b02: $00
    rst $38                                       ; $4b03: $ff
    ld h, h                                       ; $4b04: $64
    cp $ff                                        ; $4b05: $fe $ff
    ld bc, $00ff                                  ; $4b07: $01 $ff $00
    rst $00                                       ; $4b0a: $c7

jr_00e_4b0b:
    jr c, jr_00e_4b0b                             ; $4b0b: $38 $fe

    dec a                                         ; $4b0d: $3d

jr_00e_4b0e:
    ret nz                                        ; $4b0e: $c0

    inc bc                                        ; $4b0f: $03
    inc bc                                        ; $4b10: $03
    db $fc                                        ; $4b11: $fc
    db $fc                                        ; $4b12: $fc
    inc bc                                        ; $4b13: $03
    halt                                          ; $4b14: $76
    ld sp, hl                                     ; $4b15: $f9
    ld d, l                                       ; $4b16: $55
    ld h, b                                       ; $4b17: $60

jr_00e_4b18:
    inc d                                         ; $4b18: $14
    jr nz, jr_00e_4b0e                            ; $4b19: $20 $f3

    db $10                                        ; $4b1b: $10
    inc h                                         ; $4b1c: $24
    di                                            ; $4b1d: $f3
    db $10                                        ; $4b1e: $10
    jr nz, jr_00e_4b18                            ; $4b1f: $20 $f7

    ld d, $22                                     ; $4b21: $16 $22
    ldh [rNR10], a                                ; $4b23: $e0 $10
    inc hl                                        ; $4b25: $23
    ld a, [bc]                                    ; $4b26: $0a
    ld hl, $ff43                                  ; $4b27: $21 $43 $ff
    rst $38                                       ; $4b2a: $ff
    rst $38                                       ; $4b2b: $ff
    ld a, [$01f9]                                 ; $4b2c: $fa $f9 $01
    inc bc                                        ; $4b2f: $03
    inc bc                                        ; $4b30: $03
    db $fd                                        ; $4b31: $fd
    ld [bc], a                                    ; $4b32: $02
    db $fc                                        ; $4b33: $fc
    ldh [rTAC], a                                 ; $4b34: $e0 $07
    rlca                                          ; $4b36: $07
    inc b                                         ; $4b37: $04
    rlca                                          ; $4b38: $07
    inc b                                         ; $4b39: $04
    inc bc                                        ; $4b3a: $03
    db $fd                                        ; $4b3b: $fd
    rlca                                          ; $4b3c: $07
    ld e, a                                       ; $4b3d: $5f
    ld b, b                                       ; $4b3e: $40
    add hl, de                                    ; $4b3f: $19
    rst $38                                       ; $4b40: $ff
    pop af                                        ; $4b41: $f1
    rst $38                                       ; $4b42: $ff
    ld l, [hl]                                    ; $4b43: $6e
    rst $38                                       ; $4b44: $ff
    rst $38                                       ; $4b45: $ff
    xor [hl]                                      ; $4b46: $ae
    rst $38                                       ; $4b47: $ff
    ld [hl+], a                                   ; $4b48: $22
    rst $18                                       ; $4b49: $df
    ld [hl], e                                    ; $4b4a: $73
    adc h                                         ; $4b4b: $8c
    rst $18                                       ; $4b4c: $df
    rst $38                                       ; $4b4d: $ff
    rst $38                                       ; $4b4e: $ff
    nop                                           ; $4b4f: $00
    rst $30                                       ; $4b50: $f7
    sbc h                                         ; $4b51: $9c
    rst $38                                       ; $4b52: $ff
    ld [$ebff], sp                                ; $4b53: $08 $ff $eb
    rst $38                                       ; $4b56: $ff
    rst $38                                       ; $4b57: $ff
    add sp, -$01                                  ; $4b58: $e8 $ff
    dec de                                        ; $4b5a: $1b
    rst $28                                       ; $4b5b: $ef
    dec sp                                        ; $4b5c: $3b
    call nz, $ffef                                ; $4b5d: $c4 $ef $ff
    rst $38                                       ; $4b60: $ff
    nop                                           ; $4b61: $00
    cp $62                                        ; $4b62: $fe $62
    db $fc                                        ; $4b64: $fc
    ld e, [hl]                                    ; $4b65: $5e
    db $fc                                        ; $4b66: $fc
    ld b, h                                       ; $4b67: $44
    ld hl, sp+$7f                                 ; $4b68: $f8 $7f
    call c, Call_00e_44fc                         ; $4b6a: $dc $fc $44
    db $fc                                        ; $4b6d: $fc
    ld b, h                                       ; $4b6e: $44
    cp b                                          ; $4b6f: $b8
    db $fc                                        ; $4b70: $fc
    ld hl, $2fad                                  ; $4b71: $21 $ad $2f
    rst $38                                       ; $4b74: $ff
    nop                                           ; $4b75: $00
    ccf                                           ; $4b76: $3f
    dec l                                         ; $4b77: $2d
    cp $e0                                        ; $4b78: $fe $e0
    ld hl, $e0fe                                  ; $4b7a: $21 $fe $e0
    ld hl, sp-$20                                 ; $4b7d: $f8 $e0
    ei                                            ; $4b7f: $fb
    ld [de], a                                    ; $4b80: $12
    ccf                                           ; $4b81: $3f
    ret nc                                        ; $4b82: $d0

    ldh [$9a], a                                  ; $4b83: $e0 $9a
    cp $0a                                        ; $4b85: $fe $0a
    cp $6b                                        ; $4b87: $fe $6b
    db $db                                        ; $4b89: $db
    rst $38                                       ; $4b8a: $ff
    ld l, e                                       ; $4b8b: $6b
    cp d                                          ; $4b8c: $ba
    ldh [$98], a                                  ; $4b8d: $e0 $98
    ld h, a                                       ; $4b8f: $67
    sub l                                         ; $4b90: $95
    ld b, b                                       ; $4b91: $40
    ld sp, hl                                     ; $4b92: $f9
    adc b                                         ; $4b93: $88
    xor a                                         ; $4b94: $af
    ld sp, hl                                     ; $4b95: $f9
    adc b                                         ; $4b96: $88
    pop af                                        ; $4b97: $f1
    cp b                                          ; $4b98: $b8
    db $fc                                        ; $4b99: $fc
    db $e3                                        ; $4b9a: $e3
    ld [hl], c                                    ; $4b9b: $71
    inc sp                                        ; $4b9c: $33
    and b                                         ; $4b9d: $a0
    jr nz, @-$40                                  ; $4b9e: $20 $be

    ld a, [bc]                                    ; $4ba0: $0a
    ret nz                                        ; $4ba1: $c0

    sub e                                         ; $4ba2: $93
    rrca                                          ; $4ba3: $0f
    sub c                                         ; $4ba4: $91
    rrca                                          ; $4ba5: $0f
    pop de                                        ; $4ba6: $d1
    cp $e0                                        ; $4ba7: $fe $e0
    pop af                                        ; $4ba9: $f1
    ld c, a                                       ; $4baa: $4f
    rrca                                          ; $4bab: $0f
    ldh a, [rIF]                                  ; $4bac: $f0 $0f
    sub [hl]                                      ; $4bae: $96
    ld a, [bc]                                    ; $4baf: $0a
    ret nz                                        ; $4bb0: $c0

    ld b, $c1                                     ; $4bb1: $06 $c1
    ld sp, hl                                     ; $4bb3: $f9
    cp $e0                                        ; $4bb4: $fe $e0
    ld h, l                                       ; $4bb6: $65
    cp l                                          ; $4bb7: $bd
    cp $e0                                        ; $4bb8: $fe $e0
    ldh a, [$e0]                                  ; $4bba: $f0 $e0
    call nz, $e3fc                                ; $4bbc: $c4 $fc $e3
    rst $30                                       ; $4bbf: $f7
    rrca                                          ; $4bc0: $0f
    db $e4                                        ; $4bc1: $e4
    ret                                           ; $4bc2: $c9


    ld [hl], h                                    ; $4bc3: $74
    ldh [$c1], a                                  ; $4bc4: $e0 $c1
    ld b, c                                       ; $4bc6: $41
    ld b, b                                       ; $4bc7: $40
    db $fc                                        ; $4bc8: $fc
    ld e, h                                       ; $4bc9: $5c
    ld b, b                                       ; $4bca: $40
    ld hl, sp-$02                                 ; $4bcb: $f8 $fe
    pop af                                        ; $4bcd: $f1
    ld a, [hl+]                                   ; $4bce: $2a
    inc b                                         ; $4bcf: $04
    ld l, d                                       ; $4bd0: $6a
    sbc l                                         ; $4bd1: $9d
    ld h, b                                       ; $4bd2: $60
    db $e3                                        ; $4bd3: $e3
    jp z, $2040                                   ; $4bd4: $ca $40 $20

    ld b, h                                       ; $4bd7: $44
    ldh [$fb], a                                  ; $4bd8: $e0 $fb
    inc b                                         ; $4bda: $04
    ld [hl+], a                                   ; $4bdb: $22
    ld b, b                                       ; $4bdc: $40
    or $90                                        ; $4bdd: $f6 $90
    jp z, Jump_000_01fe                           ; $4bdf: $ca $fe $01

    ld de, $7f40                                  ; $4be2: $11 $40 $7f
    rst $38                                       ; $4be5: $ff
    ccf                                           ; $4be6: $3f
    rst $18                                       ; $4be7: $df
    ld a, a                                       ; $4be8: $7f
    ccf                                           ; $4be9: $3f
    rra                                           ; $4bea: $1f
    rst $38                                       ; $4beb: $ff
    rst $08                                       ; $4bec: $cf
    ccf                                           ; $4bed: $3f
    rst $08                                       ; $4bee: $cf
    ccf                                           ; $4bef: $3f
    jp z, $cc00                                   ; $4bf0: $ca $00 $cc

    nop                                           ; $4bf3: $00
    add a                                         ; $4bf4: $87
    inc d                                         ; $4bf5: $14
    ret nz                                        ; $4bf6: $c0

    ld a, [hl-]                                   ; $4bf7: $3a
    ld a, a                                       ; $4bf8: $7f
    nop                                           ; $4bf9: $00
    adc b                                         ; $4bfa: $88
    inc b                                         ; $4bfb: $04
    ret nz                                        ; $4bfc: $c0

    inc e                                         ; $4bfd: $1c
    ccf                                           ; $4bfe: $3f
    call nz, $8800                                ; $4bff: $c4 $00 $88
    db $f4                                        ; $4c02: $f4
    and b                                         ; $4c03: $a0
    ld h, [hl]                                    ; $4c04: $66
    nop                                           ; $4c05: $00
    adc c                                         ; $4c06: $89
    jr nz, @-$3b                                  ; $4c07: $20 $c3

    ret nz                                        ; $4c09: $c0

    ld [$fe74], a                                 ; $4c0a: $ea $74 $fe
    ld b, $c0                                     ; $4c0d: $06 $c0
    db $eb                                        ; $4c0f: $eb
    ld e, h                                       ; $4c10: $5c
    cp $c0                                        ; $4c11: $fe $c0
    db $eb                                        ; $4c13: $eb
    ld hl, sp+$20                                 ; $4c14: $f8 $20
    ret nz                                        ; $4c16: $c0

    ld [$a300], a                                 ; $4c17: $ea $00 $a3
    db $10                                        ; $4c1a: $10
    dec [hl]                                      ; $4c1b: $35
    ld de, $fab8                                  ; $4c1c: $11 $b8 $fa
    ret nz                                        ; $4c1f: $c0

    nop                                           ; $4c20: $00
    jp hl                                         ; $4c21: $e9


    ldh [$c1], a                                  ; $4c22: $e0 $c1
    sbc a                                         ; $4c24: $9f
    ld b, $e6                                     ; $4c25: $06 $e6
    jp c, $dea1                                   ; $4c27: $da $a1 $de

    and b                                         ; $4c2a: $a0
    cp [hl]                                       ; $4c2b: $be
    ld c, [hl]                                    ; $4c2c: $4e
    daa                                           ; $4c2d: $27
    db $fc                                        ; $4c2e: $fc
    db $fd                                        ; $4c2f: $fd
    ld a, [c]                                     ; $4c30: $f2
    di                                            ; $4c31: $f3
    adc h                                         ; $4c32: $8c
    ccf                                           ; $4c33: $3f
    ld [hl+], a                                   ; $4c34: $22
    rst $20                                       ; $4c35: $e7
    rst $38                                       ; $4c36: $ff
    di                                            ; $4c37: $f3
    adc a                                         ; $4c38: $8f
    and a                                         ; $4c39: $a7
    ld e, a                                       ; $4c3a: $5f
    rst $08                                       ; $4c3b: $cf
    ccf                                           ; $4c3c: $3f
    sbc a                                         ; $4c3d: $9f
    ld a, a                                       ; $4c3e: $7f
    push hl                                       ; $4c3f: $e5
    adc a                                         ; $4c40: $8f
    ld c, [hl]                                    ; $4c41: $4e

jr_00e_4c42:
    ld h, b                                       ; $4c42: $60
    adc $2a                                       ; $4c43: $ce $2a

jr_00e_4c45:
    dec h                                         ; $4c45: $25
    sub c                                         ; $4c46: $91
    inc hl                                        ; $4c47: $23
    rst $38                                       ; $4c48: $ff
    rrca                                          ; $4c49: $0f
    rst $38                                       ; $4c4a: $ff
    db $fd                                        ; $4c4b: $fd
    ld [hl], b                                    ; $4c4c: $70
    ldh a, [$e8]                                  ; $4c4d: $f0 $e8
    ld a, a                                       ; $4c4f: $7f
    push bc                                       ; $4c50: $c5
    rst $38                                       ; $4c51: $ff
    add l                                         ; $4c52: $85
    rst $38                                       ; $4c53: $ff
    or l                                          ; $4c54: $b5
    rst $38                                       ; $4c55: $ff
    rst $38                                       ; $4c56: $ff
    adc l                                         ; $4c57: $8d
    rst $30                                       ; $4c58: $f7
    cp h                                          ; $4c59: $bc
    rst $20                                       ; $4c5a: $e7
    or h                                          ; $4c5b: $b4
    ld b, e                                       ; $4c5c: $43
    rst $20                                       ; $4c5d: $e7
    cp $40                                        ; $4c5e: $fe $40
    ret nz                                        ; $4c60: $c0

    ld h, e                                       ; $4c61: $63
    ld a, a                                       ; $4c62: $7f
    ld b, e                                       ; $4c63: $43
    ld a, a                                       ; $4c64: $7f
    jp c, $c2ff                                   ; $4c65: $da $ff $c2

    rst $18                                       ; $4c68: $df
    rst $38                                       ; $4c69: $ff
    ld e, d                                       ; $4c6a: $5a
    rst $38                                       ; $4c6b: $ff
    ld e, e                                       ; $4c6c: $5b
    and h                                         ; $4c6d: $a4
    db $ed                                        ; $4c6e: $ed
    ld bc, $fe99                                  ; $4c6f: $01 $99 $fe
    rst $38                                       ; $4c72: $ff
    rla                                           ; $4c73: $17
    rst $38                                       ; $4c74: $ff
    pop af                                        ; $4c75: $f1
    cp $f7                                        ; $4c76: $fe $f7
    rst $38                                       ; $4c78: $ff
    ld sp, $53ff                                  ; $4c79: $31 $ff $53
    ld sp, $ddce                                  ; $4c7c: $31 $ce $dd
    nop                                           ; $4c7f: $00
    jr nz, jr_00e_4c42                            ; $4c80: $20 $c0

    dec h                                         ; $4c82: $25
    jr nz, jr_00e_4c45                            ; $4c83: $20 $c0

    add hl, hl                                    ; $4c85: $29

jr_00e_4c86:
    jr nz, @-$38                                  ; $4c86: $20 $c6

    rst $38                                       ; $4c88: $ff
    adc e                                         ; $4c89: $8b
    rst $38                                       ; $4c8a: $ff
    add hl, bc                                    ; $4c8b: $09
    rst $38                                       ; $4c8c: $ff
    ld l, b                                       ; $4c8d: $68
    rst $38                                       ; $4c8e: $ff
    ld a, [bc]                                    ; $4c8f: $0a
    rst $38                                       ; $4c90: $ff
    rst $18                                       ; $4c91: $df
    ld l, e                                       ; $4c92: $6b
    cp $6b                                        ; $4c93: $fe $6b
    sub h                                         ; $4c95: $94
    cp $e0                                        ; $4c96: $fe $e0
    and b                                         ; $4c98: $a0
    and d                                         ; $4c99: $a2
    cp $ff                                        ; $4c9a: $fe $ff
    ld [hl+], a                                   ; $4c9c: $22
    db $fc                                        ; $4c9d: $fc
    ld l, $fe                                     ; $4c9e: $2e $fe
    and d                                         ; $4ca0: $a2
    db $fc                                        ; $4ca1: $fc
    xor [hl]                                      ; $4ca2: $ae
    cp $c3                                        ; $4ca3: $fe $c3
    and d                                         ; $4ca5: $a2
    ld e, h                                       ; $4ca6: $5c
    ldh a, [$e0]                                  ; $4ca7: $f0 $e0

jr_00e_4ca9:
    ldh [$ad], a                                  ; $4ca9: $e0 $ad
    ldh a, [$ee]                                  ; $4cab: $f0 $ee
    inc b                                         ; $4cad: $04
    ret nz                                        ; $4cae: $c0

    sub e                                         ; $4caf: $93
    rrca                                          ; $4cb0: $0f
    rst $18                                       ; $4cb1: $df
    or c                                          ; $4cb2: $b1
    rrca                                          ; $4cb3: $0f
    or e                                          ; $4cb4: $b3
    rrca                                          ; $4cb5: $0f
    ld [hl], c                                    ; $4cb6: $71
    cp $e0                                        ; $4cb7: $fe $e0
    ldh a, [rIF]                                  ; $4cb9: $f0 $0f
    ld d, l                                       ; $4cbb: $55
    sub e                                         ; $4cbc: $93
    ld a, [bc]                                    ; $4cbd: $0a
    add b                                         ; $4cbe: $80
    rst $30                                       ; $4cbf: $f7
    ld [$f780], sp                                ; $4cc0: $08 $80 $f7
    jr nz, jr_00e_4ca9                            ; $4cc3: $20 $e4

    ldh a, [$0c]                                  ; $4cc5: $f0 $0c
    ldh [$e5], a                                  ; $4cc7: $e0 $e5
    ldh a, [$de]                                  ; $4cc9: $f0 $de
    add b                                         ; $4ccb: $80
    rst $38                                       ; $4ccc: $ff
    ld h, h                                       ; $4ccd: $64
    and c                                         ; $4cce: $a1
    and b                                         ; $4ccf: $a0
    and c                                         ; $4cd0: $a1
    ldh a, [$3f]                                  ; $4cd1: $f0 $3f
    ldh a, [$f5]                                  ; $4cd3: $f0 $f5
    ld a, a                                       ; $4cd5: $7f
    ld [$e0c1], sp                                ; $4cd6: $08 $c1 $e0
    ld c, c                                       ; $4cd9: $49
    inc bc                                        ; $4cda: $03
    ld a, $c1                                     ; $4cdb: $3e $c1
    adc b                                         ; $4cdd: $88
    ld [hl], a                                    ; $4cde: $77
    sbc a                                         ; $4cdf: $9f
    cp $01                                        ; $4ce0: $fe $01
    add a                                         ; $4ce2: $87
    ld a, b                                       ; $4ce3: $78
    cp $90                                        ; $4ce4: $fe $90
    add b                                         ; $4ce6: $80
    jr nz, @-$1d                                  ; $4ce7: $20 $e1

    rrca                                          ; $4ce9: $0f
    rst $38                                       ; $4cea: $ff
    ldh a, [$1f]                                  ; $4ceb: $f0 $1f
    ldh [$3f], a                                  ; $4ced: $e0 $3f
    ret nz                                        ; $4cef: $c0

    ldh [$1f], a                                  ; $4cf0: $e0 $1f
    ld a, a                                       ; $4cf2: $7f
    db $f4                                        ; $4cf3: $f4
    inc [hl]                                      ; $4cf4: $34
    ld b, b                                       ; $4cf5: $40
    ldh a, [$1f]                                  ; $4cf6: $f0 $1f
    nop                                           ; $4cf8: $00
    ld l, l                                       ; $4cf9: $6d
    jr nz, jr_00e_4c86                            ; $4cfa: $20 $8a

    nop                                           ; $4cfc: $00
    rst $38                                       ; $4cfd: $ff
    ld b, c                                       ; $4cfe: $41
    rst $38                                       ; $4cff: $ff
    rst $18                                       ; $4d00: $df
    ld a, e                                       ; $4d01: $7b
    sbc $42                                       ; $4d02: $de $42
    xor $4a                                       ; $4d04: $ee $4a
    ld e, [hl]                                    ; $4d06: $5e
    inc b                                         ; $4d07: $04
    rst $38                                       ; $4d08: $ff
    dec l                                         ; $4d09: $2d
    rst $38                                       ; $4d0a: $ff
    xor $00                                       ; $4d0b: $ee $00
    ld a, d                                       ; $4d0d: $7a
    ld d, b                                       ; $4d0e: $50
    ld a, [hl]                                    ; $4d0f: $7e
    jr nc, @+$01                                  ; $4d10: $30 $ff

    rst $20                                       ; $4d12: $e7
    ld a, c                                       ; $4d13: $79
    add $42                                       ; $4d14: $c6 $42
    add $42                                       ; $4d16: $c6 $42

jr_00e_4d18:
    ld a, [hl]                                    ; $4d18: $7e
    ld b, $ff                                     ; $4d19: $06 $ff
    inc a                                         ; $4d1b: $3c
    rst $38                                       ; $4d1c: $ff
    ld a, $00                                     ; $4d1d: $3e $00
    rra                                           ; $4d1f: $1f
    dec d                                         ; $4d20: $15
    rra                                           ; $4d21: $1f
    ld bc, $5fff                                  ; $4d22: $01 $ff $5f
    xor e                                         ; $4d25: $ab
    xor d                                         ; $4d26: $aa
    jr nz, jr_00e_4d18                            ; $4d27: $20 $ef

    ld b, l                                       ; $4d29: $45
    ld [hl], l                                    ; $4d2a: $75
    ld b, l                                       ; $4d2b: $45
    rst $38                                       ; $4d2c: $ff
    ld a, [de]                                    ; $4d2d: $1a
    rst $38                                       ; $4d2e: $ff
    ld c, $00                                     ; $4d2f: $0e $00
    rrca                                          ; $4d31: $0f
    dec b                                         ; $4d32: $05
    cpl                                           ; $4d33: $2f
    ld bc, $77ff                                  ; $4d34: $01 $ff $77
    xor a                                         ; $4d37: $af
    add sp, $60                                   ; $4d38: $e8 $60
    ld b, [hl]                                    ; $4d3a: $46
    ld b, b                                       ; $4d3b: $40
    inc bc                                        ; $4d3c: $03
    inc bc                                        ; $4d3d: $03
    db $fd                                        ; $4d3e: $fd
    nop                                           ; $4d3f: $00
    ldh a, [$e0]                                  ; $4d40: $f0 $e0
    sbc e                                         ; $4d42: $9b
    ld bc, $41cf                                  ; $4d43: $01 $cf $41
    rst $18                                       ; $4d46: $df
    ld h, c                                       ; $4d47: $61
    ld a, a                                       ; $4d48: $7f
    rst $18                                       ; $4d49: $df
    ld b, e                                       ; $4d4a: $43
    cp $5a                                        ; $4d4b: $fe $5a
    ld a, [hl]                                    ; $4d4d: $7e
    inc h                                         ; $4d4e: $24
    dec a                                         ; $4d4f: $3d
    adc a                                         ; $4d50: $8f
    xor $ff                                       ; $4d51: $ee $ff
    dec h                                         ; $4d53: $25
    nop                                           ; $4d54: $00
    ld a, [hl-]                                   ; $4d55: $3a
    db $10                                        ; $4d56: $10
    push af                                       ; $4d57: $f5
    ld bc, $b57a                                  ; $4d58: $01 $7a $b5
    rst $38                                       ; $4d5b: $ff
    ld l, l                                       ; $4d5c: $6d
    dec h                                         ; $4d5d: $25
    xor h                                         ; $4d5e: $ac
    inc h                                         ; $4d5f: $24
    ld [hl], h                                    ; $4d60: $74
    ld b, h                                       ; $4d61: $44
    jr @+$01                                      ; $4d62: $18 $ff

    rst $38                                       ; $4d64: $ff
    ld a, [hl+]                                   ; $4d65: $2a
    nop                                           ; $4d66: $00
    ld a, a                                       ; $4d67: $7f
    dec b                                         ; $4d68: $05
    dec a                                         ; $4d69: $3d
    dec l                                         ; $4d6a: $2d
    ld a, [hl]                                    ; $4d6b: $7e
    add c                                         ; $4d6c: $81
    rst $38                                       ; $4d6d: $ff
    ccf                                           ; $4d6e: $3f
    scf                                           ; $4d6f: $37
    ld b, d                                       ; $4d70: $42
    ld [bc], a                                    ; $4d71: $02
    inc a                                         ; $4d72: $3c
    nop                                           ; $4d73: $00
    ld e, $ff                                     ; $4d74: $1e $ff
    rst $38                                       ; $4d76: $ff
    ld a, [bc]                                    ; $4d77: $0a
    nop                                           ; $4d78: $00
    ld e, $04                                     ; $4d79: $1e $04
    jr z, @+$0a                                   ; $4d7b: $28 $08

    ld d, b                                       ; $4d7d: $50
    cp a                                          ; $4d7e: $bf
    rst $10                                       ; $4d7f: $d7
    jr nz, jr_00e_4d82                            ; $4d80: $20 $00

jr_00e_4d82:
    db $10                                        ; $4d82: $10
    jp Jump_000_0400                              ; $4d83: $c3 $00 $04


    ldh a, [$e0]                                  ; $4d86: $f0 $e0
    adc a                                         ; $4d88: $8f
    dec b                                         ; $4d89: $05
    rst $38                                       ; $4d8a: $ff
    rst $38                                       ; $4d8b: $ff
    ld b, c                                       ; $4d8c: $41
    rst $08                                       ; $4d8d: $cf
    ld [hl], a                                    ; $4d8e: $77
    call z, $cc44                                 ; $4d8f: $cc $44 $cc
    ld b, h                                       ; $4d92: $44
    cp a                                          ; $4d93: $bf
    ld e, b                                       ; $4d94: $58
    ld [$ff28], sp                                ; $4d95: $08 $28 $ff
    ld c, $04                                     ; $4d98: $0e $04
    ret nc                                        ; $4d9a: $d0

    ldh [$39], a                                  ; $4d9b: $e0 $39
    rst $38                                       ; $4d9d: $ff
    ld [bc], a                                    ; $4d9e: $02
    rst $38                                       ; $4d9f: $ff
    ld b, b                                       ; $4da0: $40
    nop                                           ; $4da1: $00
    and b                                         ; $4da2: $a0
    jr nz, jr_00e_4e23                            ; $4da3: $20 $7e

    nop                                           ; $4da5: $00
    db $fd                                        ; $4da6: $fd
    ccf                                           ; $4da7: $3f
    ret nz                                        ; $4da8: $c0

    pop hl                                        ; $4da9: $e1
    ld bc, $2f3f                                  ; $4daa: $01 $3f $2f
    ld [$44f7], sp                                ; $4dad: $08 $f7 $44
    rst $38                                       ; $4db0: $ff
    inc b                                         ; $4db1: $04
    ld b, b                                       ; $4db2: $40
    nop                                           ; $4db3: $00
    ld a, h                                       ; $4db4: $7c
    ld b, b                                       ; $4db5: $40
    rra                                           ; $4db6: $1f
    rst $38                                       ; $4db7: $ff
    ld c, d                                       ; $4db8: $4a
    rst $38                                       ; $4db9: $ff
    nop                                           ; $4dba: $00
    ld l, a                                       ; $4dbb: $6f
    dec h                                         ; $4dbc: $25
    ld h, l                                       ; $4dbd: $65
    dec h                                         ; $4dbe: $25
    ld h, d                                       ; $4dbf: $62
    cp l                                          ; $4dc0: $bd
    ld h, e                                       ; $4dc1: $63
    cp a                                          ; $4dc2: $bf
    ld hl, $2165                                  ; $4dc3: $21 $65 $21
    ld a, [hl-]                                   ; $4dc6: $3a
    ld [bc], a                                    ; $4dc7: $02
    inc e                                         ; $4dc8: $1c
    or b                                          ; $4dc9: $b0
    ldh [rIE], a                                  ; $4dca: $e0 $ff
    rst $38                                       ; $4dcc: $ff
    ld bc, $777f                                  ; $4dcd: $01 $7f $77
    inc a                                         ; $4dd0: $3c
    rst $00                                       ; $4dd1: $c7
    inc a                                         ; $4dd2: $3c
    inc d                                         ; $4dd3: $14
    inc a                                         ; $4dd4: $3c
    rst $08                                       ; $4dd5: $cf
    inc b                                         ; $4dd6: $04
    inc e                                         ; $4dd7: $1c
    inc c                                         ; $4dd8: $0c
    ld [$e2e0], sp                                ; $4dd9: $08 $e0 $e2
    xor $e0                                       ; $4ddc: $ee $e0
    or a                                          ; $4dde: $b7
    ld l, b                                       ; $4ddf: $68
    rst $30                                       ; $4de0: $f7
    jr nz, jr_00e_4e43                            ; $4de1: $20 $60

    jr nz, @-$6e                                  ; $4de3: $20 $90

    pop hl                                        ; $4de5: $e1
    ld c, d                                       ; $4de6: $4a
    nop                                           ; $4de7: $00
    ld a, a                                       ; $4de8: $7f
    dec h                                         ; $4de9: $25
    rst $18                                       ; $4dea: $df
    db $fd                                        ; $4deb: $fd
    ld bc, $dffe                                  ; $4dec: $01 $fe $df
    ld h, b                                       ; $4def: $60
    ldh a, [$e0]                                  ; $4df0: $f0 $e0
    jr c, jr_00e_4df4                             ; $4df2: $38 $00

jr_00e_4df4:
    db $fd                                        ; $4df4: $fd
    inc e                                         ; $4df5: $1c
    ldh a, [$e1]                                  ; $4df6: $f0 $e1
    dec b                                         ; $4df8: $05
    db $fd                                        ; $4df9: $fd
    dec a                                         ; $4dfa: $3d
    ld a, [hl]                                    ; $4dfb: $7e
    and c                                         ; $4dfc: $a1
    xor a                                         ; $4dfd: $af
    cp a                                          ; $4dfe: $bf
    cpl                                           ; $4dff: $2f
    ldh [rLCDC], a                                ; $4e00: $e0 $40
    sbc $40                                       ; $4e02: $de $40
    ld c, a                                       ; $4e04: $4f
    ld h, b                                       ; $4e05: $60
    ld [c], a                                     ; $4e06: $e2
    dec [hl]                                      ; $4e07: $35
    rst $38                                       ; $4e08: $ff
    dec d                                         ; $4e09: $15
    ld a, h                                       ; $4e0a: $7c
    add e                                         ; $4e0b: $83
    ld a, [hl]                                    ; $4e0c: $7e
    inc a                                         ; $4e0d: $3c
    inc hl                                        ; $4e0e: $23
    ld hl, $fd3f                                  ; $4e0f: $21 $3f $fd
    inc bc                                        ; $4e12: $03
    ld h, b                                       ; $4e13: $60
    pop hl                                        ; $4e14: $e1
    ccf                                           ; $4e15: $3f
    dec b                                         ; $4e16: $05
    rst $18                                       ; $4e17: $df
    dec de                                        ; $4e18: $1b
    ld h, e                                       ; $4e19: $63
    db $fd                                        ; $4e1a: $fd
    rst $28                                       ; $4e1b: $ef
    inc bc                                        ; $4e1c: $03
    ld bc, $0105                                  ; $4e1d: $01 $05 $01
    and b                                         ; $4e20: $a0
    and $67                                       ; $4e21: $e6 $67

jr_00e_4e23:
    inc l                                         ; $4e23: $2c
    rst $18                                       ; $4e24: $df
    ei                                            ; $4e25: $fb
    ld d, b                                       ; $4e26: $50
    db $10                                        ; $4e27: $10
    or b                                          ; $4e28: $b0
    push hl                                       ; $4e29: $e5
    cpl                                           ; $4e2a: $2f
    dec b                                         ; $4e2b: $05
    dec [hl]                                      ; $4e2c: $35
    dec b                                         ; $4e2d: $05
    ld e, b                                       ; $4e2e: $58
    rst $38                                       ; $4e2f: $ff

jr_00e_4e30:
    cp a                                          ; $4e30: $bf
    and b                                         ; $4e31: $a0
    jr nz, jr_00e_4df4                            ; $4e32: $20 $c0

    ld b, b                                       ; $4e34: $40
    ld a, h                                       ; $4e35: $7c
    nop                                           ; $4e36: $00
    ld a, $a0                                     ; $4e37: $3e $a0
    adc a                                         ; $4e39: $8f
    rst $18                                       ; $4e3a: $df
    rst $38                                       ; $4e3b: $ff
    rst $38                                       ; $4e3c: $ff
    ld e, [hl]                                    ; $4e3d: $5e
    ld a, [bc]                                    ; $4e3e: $0a
    ldh a, [$c3]                                  ; $4e3f: $f0 $c3

jr_00e_4e41:
    ld h, b                                       ; $4e41: $60
    rst $00                                       ; $4e42: $c7

jr_00e_4e43:
    ld [$c0b0], a                                 ; $4e43: $ea $b0 $c0
    ld [hl], h                                    ; $4e46: $74
    ld e, a                                       ; $4e47: $5f
    jr nc, jr_00e_4e30                            ; $4e48: $30 $e6

    ld a, c                                       ; $4e4a: $79
    rst $00                                       ; $4e4b: $c7
    ld b, e                                       ; $4e4c: $43
    ld h, b                                       ; $4e4d: $60
    jp $603a                                      ; $4e4e: $c3 $3a $60


    ret nz                                        ; $4e51: $c0

    rst $10                                       ; $4e52: $d7
    dec d                                         ; $4e53: $15
    dec b                                         ; $4e54: $05
    ld e, h                                       ; $4e55: $5c
    ld h, b                                       ; $4e56: $60
    add $0a                                       ; $4e57: $c6 $0a
    ld h, b                                       ; $4e59: $60
    ret nz                                        ; $4e5a: $c0

    dec h                                         ; $4e5b: $25
    dec b                                         ; $4e5c: $05
    db $fd                                        ; $4e5d: $fd
    ld [hl], b                                    ; $4e5e: $70
    ld h, b                                       ; $4e5f: $60
    add $0a                                       ; $4e60: $c6 $0a
    nop                                           ; $4e62: $00
    sbc a                                         ; $4e63: $9f
    ld bc, $4bcf                                  ; $4e64: $01 $cf $4b
    rst $28                                       ; $4e67: $ef
    sbc $61                                       ; $4e68: $de $61
    sbc $42                                       ; $4e6a: $de $42
    ld h, b                                       ; $4e6c: $60
    db $d3                                        ; $4e6d: $d3
    ld c, $00                                     ; $4e6e: $0e $00
    ld c, a                                       ; $4e70: $4f
    rst $38                                       ; $4e71: $ff
    dec b                                         ; $4e72: $05
    ld l, a                                       ; $4e73: $6f
    ld hl, $bb67                                  ; $4e74: $21 $67 $bb
    and $62                                       ; $4e77: $e6 $62
    jp Jump_00e_41af                              ; $4e79: $c3 $af $41


    jp Jump_00e_4141                              ; $4e7c: $c3 $41 $41


    jr nz, jr_00e_4e41                            ; $4e7f: $20 $c0

    adc e                                         ; $4e81: $8b
    jr nc, @-$3e                                  ; $4e82: $30 $c0

    rst $38                                       ; $4e84: $ff
    rst $18                                       ; $4e85: $df
    rlca                                          ; $4e86: $07
    ld hl, sp+$78                                 ; $4e87: $f8 $78
    ret nz                                        ; $4e89: $c0

    ld b, b                                       ; $4e8a: $40
    sub b                                         ; $4e8b: $90
    pop bc                                        ; $4e8c: $c1
    ld c, $00                                     ; $4e8d: $0e $00
    ld [hl], e                                    ; $4e8f: $73
    dec bc                                        ; $4e90: $0b
    ld bc, $c0ae                                  ; $4e91: $01 $ae $c0
    nop                                           ; $4e94: $00
    ld [c], a                                     ; $4e95: $e2
    ld a, d                                       ; $4e96: $7a
    ld [bc], a                                    ; $4e97: $02
    inc a                                         ; $4e98: $3c
    ldh a, [$e2]                                  ; $4e99: $f0 $e2
    rst $38                                       ; $4e9b: $ff
    cpl                                           ; $4e9c: $2f
    ld bc, $af57                                  ; $4e9d: $01 $57 $af
    xor b                                         ; $4ea0: $a8
    jr nz, @+$46                                  ; $4ea1: $20 $44

    ld b, b                                       ; $4ea3: $40
    rst $38                                       ; $4ea4: $ff
    ld [bc], a                                    ; $4ea5: $02
    nop                                           ; $4ea6: $00
    ld bc, $1eff                                  ; $4ea7: $01 $ff $1e
    nop                                           ; $4eaa: $00
    ei                                            ; $4eab: $fb
    ld bc, $7fff                                  ; $4eac: $01 $ff $7f
    ld h, c                                       ; $4eaf: $61

jr_00e_4eb0:
    ld e, a                                       ; $4eb0: $5f
    xor a                                         ; $4eb1: $af
    ld a, h                                       ; $4eb2: $7c
    jr z, jr_00e_4eb0                             ; $4eb3: $28 $fb

    ld l, c                                       ; $4eb5: $69
    sub a                                         ; $4eb6: $97
    db $db                                        ; $4eb7: $db
    ld c, c                                       ; $4eb8: $49
    ld c, c                                       ; $4eb9: $49
    nop                                           ; $4eba: $00
    xor $2a                                       ; $4ebb: $ee $2a
    ldh [$c0], a                                  ; $4ebd: $e0 $c0
    ld l, [hl]                                    ; $4ebf: $6e
    ret nz                                        ; $4ec0: $c0

    db $dd                                        ; $4ec1: $dd
    ld a, a                                       ; $4ec2: $7f

jr_00e_4ec3:
    ld [hl], e                                    ; $4ec3: $73
    ld sp, $2163                                  ; $4ec4: $31 $63 $21
    rst $28                                       ; $4ec7: $ef
    ld h, c                                       ; $4ec8: $61
    ld b, a                                       ; $4ec9: $47
    nop                                           ; $4eca: $00
    ret nz                                        ; $4ecb: $c0

    cp $f0                                        ; $4ecc: $fe $f0
    ldh [$03], a                                  ; $4ece: $e0 $03
    ld a, [hl]                                    ; $4ed0: $7e
    rst $28                                       ; $4ed1: $ef
    cp $00                                        ; $4ed2: $fe $00
    ld a, a                                       ; $4ed4: $7f
    ld [hl], a                                    ; $4ed5: $77
    ei                                            ; $4ed6: $fb
    inc c                                         ; $4ed7: $0c
    inc b                                         ; $4ed8: $04
    db $10                                        ; $4ed9: $10
    pop bc                                        ; $4eda: $c1
    ccf                                           ; $4edb: $3f
    dec d                                         ; $4edc: $15
    ccf                                           ; $4edd: $3f

jr_00e_4ede:
    ld bc, $7f7f                                  ; $4ede: $01 $7f $7f
    cp l                                          ; $4ee1: $bd
    db $e3                                        ; $4ee2: $e3
    ld h, c                                       ; $4ee3: $61
    ld b, a                                       ; $4ee4: $47
    ld b, e                                       ; $4ee5: $43
    ld a, $06                                     ; $4ee6: $3e $06
    ld b, b                                       ; $4ee8: $40
    pop bc                                        ; $4ee9: $c1
    di                                            ; $4eea: $f3
    cpl                                           ; $4eeb: $2f
    dec b                                         ; $4eec: $05
    ldh a, [$e0]                                  ; $4eed: $f0 $e0
    ld [hl], b                                    ; $4eef: $70
    ldh [$0e], a                                  ; $4ef0: $e0 $0e
    ld b, $3c                                     ; $4ef2: $06 $3c
    inc c                                         ; $4ef4: $0c
    ret                                           ; $4ef5: $c9


    jr jr_00e_4f28                                ; $4ef6: $18 $30

    ld [c], a                                     ; $4ef8: $e2
    add b                                         ; $4ef9: $80
    db $e3                                        ; $4efa: $e3
    inc bc                                        ; $4efb: $03
    ld a, b                                       ; $4efc: $78
    pop hl                                        ; $4efd: $e1
    jr nc, jr_00e_4ec3                            ; $4efe: $30 $c3

    nop                                           ; $4f00: $00
    ld a, a                                       ; $4f01: $7f
    rst $18                                       ; $4f02: $df
    cp e                                          ; $4f03: $bb
    ld h, [hl]                                    ; $4f04: $66
    ld [hl+], a                                   ; $4f05: $22
    ld h, $22                                     ; $4f06: $26 $22
    ret nc                                        ; $4f08: $d0

    db $e3                                        ; $4f09: $e3
    rst $28                                       ; $4f0a: $ef
    dec b                                         ; $4f0b: $05
    rst $38                                       ; $4f0c: $ff
    ld [hl], l                                    ; $4f0d: $75
    ld [hl], l                                    ; $4f0e: $75
    ld [c], a                                     ; $4f0f: $e2
    dec e                                         ; $4f10: $1d
    ld [hl], e                                    ; $4f11: $73
    ld [hl], c                                    ; $4f12: $71
    rlca                                          ; $4f13: $07
    inc bc                                        ; $4f14: $03
    rst $30                                       ; $4f15: $f7
    cp $06                                        ; $4f16: $fe $06
    ld a, h                                       ; $4f18: $7c
    ret nc                                        ; $4f19: $d0

    db $e3                                        ; $4f1a: $e3
    inc bc                                        ; $4f1b: $03
    ld a, [hl]                                    ; $4f1c: $7e
    rst $30                                       ; $4f1d: $f7
    inc e                                         ; $4f1e: $1c
    cp a                                          ; $4f1f: $bf
    inc c                                         ; $4f20: $0c
    jr c, jr_00e_4f33                             ; $4f21: $38 $10

    or $30                                        ; $4f23: $f6 $30
    ld h, e                                       ; $4f25: $63
    nop                                           ; $4f26: $00
    push bc                                       ; $4f27: $c5

jr_00e_4f28:
    cp l                                          ; $4f28: $bd
    rst $08                                       ; $4f29: $cf
    ld h, a                                       ; $4f2a: $67
    inc hl                                        ; $4f2b: $23
    ld h, d                                       ; $4f2c: $62
    ld [hl+], a                                   ; $4f2d: $22
    inc [hl]                                      ; $4f2e: $34
    and b                                         ; $4f2f: $a0
    and b                                         ; $4f30: $a0
    and d                                         ; $4f31: $a2
    push bc                                       ; $4f32: $c5

jr_00e_4f33:
    ld b, l                                       ; $4f33: $45
    ccf                                           ; $4f34: $3f
    ld b, d                                       ; $4f35: $42
    cp l                                          ; $4f36: $bd
    inc bc                                        ; $4f37: $03
    ld bc, $0307                                  ; $4f38: $01 $07 $03
    jr nz, jr_00e_4ede                            ; $4f3b: $20 $a1

    sub b                                         ; $4f3d: $90
    db $e4                                        ; $4f3e: $e4
    sbc a                                         ; $4f3f: $9f
    cp l                                          ; $4f40: $bd
    rst $38                                       ; $4f41: $ff
    ld b, c                                       ; $4f42: $41
    ld e, [hl]                                    ; $4f43: $5e
    ld e, d                                       ; $4f44: $5a
    adc $a0                                       ; $4f45: $ce $a0
    ret nz                                        ; $4f47: $c0

    pop bc                                        ; $4f48: $c1
    ld bc, $7fef                                  ; $4f49: $01 $ef $7f
    rlca                                          ; $4f4c: $07
    inc a                                         ; $4f4d: $3c
    rst $30                                       ; $4f4e: $f7
    ld h, b                                       ; $4f4f: $60
    pop hl                                        ; $4f50: $e1
    ld a, h                                       ; $4f51: $7c
    inc c                                         ; $4f52: $0c

jr_00e_4f53:
    jr c, jr_00e_4f53                             ; $4f53: $38 $fe

    ld h, b                                       ; $4f55: $60
    and b                                         ; $4f56: $a0
    xor a                                         ; $4f57: $af
    dec b                                         ; $4f58: $05
    push af                                       ; $4f59: $f5
    ld d, l                                       ; $4f5a: $55
    ld a, [c]                                     ; $4f5b: $f2
    ld e, l                                       ; $4f5c: $5d
    ld d, e                                       ; $4f5d: $53
    reti                                          ; $4f5e: $d9


    ld d, c                                       ; $4f5f: $51
    and b                                         ; $4f60: $a0
    push hl                                       ; $4f61: $e5
    add b                                         ; $4f62: $80
    and b                                         ; $4f63: $a0
    ccf                                           ; $4f64: $3f
    cp $9c                                        ; $4f65: $fe $9c
    and b                                         ; $4f67: $a0
    inc e                                         ; $4f68: $1c
    inc c                                         ; $4f69: $0c
    rst $30                                       ; $4f6a: $f7
    ld a, b                                       ; $4f6b: $78
    jr jr_00e_4f9e                                ; $4f6c: $18 $30

    add b                                         ; $4f6e: $80
    and e                                         ; $4f6f: $a3
    dec b                                         ; $4f70: $05
    ld a, h                                       ; $4f71: $7c
    and e                                         ; $4f72: $a3
    ld l, [hl]                                    ; $4f73: $6e
    push bc                                       ; $4f74: $c5
    ld l, $ae                                     ; $4f75: $2e $ae
    and c                                         ; $4f77: $a1
    jr nz, jr_00e_4f7a                            ; $4f78: $20 $00

jr_00e_4f7a:
    rst $18                                       ; $4f7a: $df
    rst $38                                       ; $4f7b: $ff
    rst $38                                       ; $4f7c: $ff
    nop                                           ; $4f7d: $00
    call z, Call_000_054f                         ; $4f7e: $cc $4f $05
    rst $20                                       ; $4f81: $e7
    ld h, l                                       ; $4f82: $65
    dec h                                         ; $4f83: $25
    ld h, h                                       ; $4f84: $64
    ld h, b                                       ; $4f85: $60
    add $e0                                       ; $4f86: $c6 $e0
    add c                                         ; $4f88: $81
    call $f641                                    ; $4f89: $cd $41 $f6
    and c                                         ; $4f8c: $a1
    rrca                                          ; $4f8d: $0f
    ld h, b                                       ; $4f8e: $60
    push bc                                       ; $4f8f: $c5
    ldh [$c7], a                                  ; $4f90: $e0 $c7
    ld h, b                                       ; $4f92: $60
    jp $c300                                      ; $4f93: $c3 $00 $c3


    ld d, b                                       ; $4f96: $50
    ld h, b                                       ; $4f97: $60
    add $0a                                       ; $4f98: $c6 $0a
    ei                                            ; $4f9a: $fb
    nop                                           ; $4f9b: $00
    rra                                           ; $4f9c: $1f
    add b                                         ; $4f9d: $80

jr_00e_4f9e:
    pop bc                                        ; $4f9e: $c1
    rst $28                                       ; $4f9f: $ef
    ld e, h                                       ; $4fa0: $5c
    ld [$287a], sp                                ; $4fa1: $08 $7a $28
    nop                                           ; $4fa4: $00
    ld h, b                                       ; $4fa5: $60
    pop de                                        ; $4fa6: $d1
    nop                                           ; $4fa7: $00
    nop                                           ; $4fa8: $00
    nop                                           ; $4fa9: $00
    rra                                           ; $4faa: $1f
    ld [de], a                                    ; $4fab: $12
    rst $38                                       ; $4fac: $ff
    ld c, a                                       ; $4fad: $4f
    or $00                                        ; $4fae: $f6 $00
    nop                                           ; $4fb0: $00
    nop                                           ; $4fb1: $00
    rra                                           ; $4fb2: $1f
    ld [de], a                                    ; $4fb3: $12
    rst $38                                       ; $4fb4: $ff
    inc bc                                        ; $4fb5: $03
    or $00                                        ; $4fb6: $f6 $00
    nop                                           ; $4fb8: $00
    nop                                           ; $4fb9: $00
    ret z                                         ; $4fba: $c8

    ld [de], a                                    ; $4fbb: $12
    ldh [rNR24], a                                ; $4fbc: $e0 $19
    rra                                           ; $4fbe: $1f
    ld [de], a                                    ; $4fbf: $12
    or $00                                        ; $4fc0: $f6 $00
    ld c, e                                       ; $4fc2: $4b
    inc bc                                        ; $4fc3: $03
    ret z                                         ; $4fc4: $c8

    ld [de], a                                    ; $4fc5: $12
    rra                                           ; $4fc6: $1f
    ld [de], a                                    ; $4fc7: $12
    or $00                                        ; $4fc8: $f6 $00
    ld a, [c]                                     ; $4fca: $f2
    inc bc                                        ; $4fcb: $03
    ld c, e                                       ; $4fcc: $4b
    inc bc                                        ; $4fcd: $03
    rra                                           ; $4fce: $1f
    ld [de], a                                    ; $4fcf: $12
    or $00                                        ; $4fd0: $f6 $00
    ld [bc], a                                    ; $4fd2: $02
    inc bc                                        ; $4fd3: $03
    add b                                         ; $4fd4: $80
    ld a, l                                       ; $4fd5: $7d
    rst $38                                       ; $4fd6: $ff
    ld c, a                                       ; $4fd7: $4f
    ld [c], a                                     ; $4fd8: $e2
    nop                                           ; $4fd9: $00
    add b                                         ; $4fda: $80
    ld a, [hl]                                    ; $4fdb: $7e
    rra                                           ; $4fdc: $1f
    ld [de], a                                    ; $4fdd: $12
    or $00                                        ; $4fde: $f6 $00
    add b                                         ; $4fe0: $80
    ld a, l                                       ; $4fe1: $7d
    adc [hl]                                      ; $4fe2: $8e
    ld a, a                                       ; $4fe3: $7f
    add b                                         ; $4fe4: $80
    ld a, [hl]                                    ; $4fe5: $7e
    rra                                           ; $4fe6: $1f
    ld [de], a                                    ; $4fe7: $12
    or $00                                        ; $4fe8: $f6 $00
    push hl                                       ; $4fea: $e5
    ld b, c                                       ; $4feb: $41
    rst $38                                       ; $4fec: $ff
    ldh a, [rP1]                                  ; $4fed: $f0 $00
    rst $38                                       ; $4fef: $ff
    rst $38                                       ; $4ff0: $ff
    rst $20                                       ; $4ff1: $e7
    and $9c                                       ; $4ff2: $e6 $9c
    nop                                           ; $4ff4: $00
    ld bc, $027f                                  ; $4ff5: $01 $7f $02
    inc bc                                        ; $4ff8: $03
    inc b                                         ; $4ff9: $04
    dec b                                         ; $4ffa: $05
    ld b, $07                                     ; $4ffb: $06 $07
    ld b, e                                       ; $4ffd: $43
    or [hl]                                       ; $4ffe: $b6
    ldh [$e7], a                                  ; $4fff: $e0 $e7
    ld c, d                                       ; $5001: $4a
    ld c, e                                       ; $5002: $4b
    ld c, h                                       ; $5003: $4c
    ret nz                                        ; $5004: $c0

    rst $38                                       ; $5005: $ff
    db $ec                                        ; $5006: $ec
    db $eb                                        ; $5007: $eb
    rrca                                          ; $5008: $0f
    db $10                                        ; $5009: $10
    ld de, $127f                                  ; $500a: $11 $7f $12
    inc de                                        ; $500d: $13
    inc d                                         ; $500e: $14
    dec d                                         ; $500f: $15
    ld d, $17                                     ; $5010: $16 $17
    scf                                           ; $5012: $37
    halt                                          ; $5013: $76
    ldh [$9f], a                                  ; $5014: $e0 $9f
    ld e, d                                       ; $5016: $5a
    ld e, e                                       ; $5017: $5b
    ld e, h                                       ; $5018: $5c
    xor h                                         ; $5019: $ac
    xor l                                         ; $501a: $ad
    ret nz                                        ; $501b: $c0

    rst $38                                       ; $501c: $ff
    ld [$1fe9], a                                 ; $501d: $ea $e9 $1f
    rst $38                                       ; $5020: $ff
    and b                                         ; $5021: $a0
    and c                                         ; $5022: $a1
    and d                                         ; $5023: $a2
    and [hl]                                      ; $5024: $a6
    and e                                         ; $5025: $a3
    and h                                         ; $5026: $a4
    and l                                         ; $5027: $a5
    and [hl]                                      ; $5028: $a6
    rst $38                                       ; $5029: $ff
    and [hl]                                      ; $502a: $a6
    add h                                         ; $502b: $84
    add h                                         ; $502c: $84
    add b                                         ; $502d: $80
    ld l, d                                       ; $502e: $6a
    ld l, e                                       ; $502f: $6b
    ld l, h                                       ; $5030: $6c
    add l                                         ; $5031: $85
    rst $20                                       ; $5032: $e7
    add [hl]                                      ; $5033: $86
    add a                                         ; $5034: $87
    sbc a                                         ; $5035: $9f
    jp z, $e8ff                                   ; $5036: $ca $ff $e8

    rst $20                                       ; $5039: $e7
    dec c                                         ; $503a: $0d
    or b                                          ; $503b: $b0
    or c                                          ; $503c: $b1
    rst $38                                       ; $503d: $ff
    or d                                          ; $503e: $b2
    or [hl]                                       ; $503f: $b6
    or e                                          ; $5040: $b3
    or h                                          ; $5041: $b4
    or l                                          ; $5042: $b5
    or [hl]                                       ; $5043: $b6
    or [hl]                                       ; $5044: $b6
    or [hl]                                       ; $5045: $b6
    rst $38                                       ; $5046: $ff
    sub h                                         ; $5047: $94
    sub b                                         ; $5048: $90
    sub c                                         ; $5049: $91
    sub d                                         ; $504a: $92
    sub e                                         ; $504b: $93
    sub l                                         ; $504c: $95
    sub [hl]                                      ; $504d: $96
    sub a                                         ; $504e: $97
    ld a, c                                       ; $504f: $79
    ld c, $ca                                     ; $5050: $0e $ca
    rst $38                                       ; $5052: $ff
    add sp, -$19                                  ; $5053: $e8 $e7
    dec e                                         ; $5055: $1d
    jr nz, jr_00e_5058                            ; $5056: $20 $00

jr_00e_5058:
    jr nz, @+$01                                  ; $5058: $20 $ff

    db $ec                                        ; $505a: $ec
    ld bc, $ca1e                                  ; $505b: $01 $1e $ca
    rst $38                                       ; $505e: $ff
    add b                                         ; $505f: $80
    add sp, -$40                                  ; $5060: $e8 $c0
    rst $28                                       ; $5062: $ef
    add b                                         ; $5063: $80
    rst $38                                       ; $5064: $ff
    add b                                         ; $5065: $80
    rst $38                                       ; $5066: $ff
    rst $38                                       ; $5067: $ff
    rst $38                                       ; $5068: $ff
    add b                                         ; $5069: $80
    rst $38                                       ; $506a: $ff
    nop                                           ; $506b: $00
    rst $38                                       ; $506c: $ff
    rst $38                                       ; $506d: $ff
    add b                                         ; $506e: $80
    rst $38                                       ; $506f: $ff
    add b                                         ; $5070: $80
    rst $38                                       ; $5071: $ff
    add b                                         ; $5072: $80
    rst $38                                       ; $5073: $ff
    add b                                         ; $5074: $80
    rst $38                                       ; $5075: $ff
    add b                                         ; $5076: $80
    rst $38                                       ; $5077: $ff
    add b                                         ; $5078: $80
    rst $38                                       ; $5079: $ff
    add b                                         ; $507a: $80
    rst $38                                       ; $507b: $ff
    ld [bc], a                                    ; $507c: $02
    add b                                         ; $507d: $80
    di                                            ; $507e: $f3
    nop                                           ; $507f: $00
    add b                                         ; $5080: $80
    rst $38                                       ; $5081: $ff
    add b                                         ; $5082: $80
    cp d                                          ; $5083: $ba
    ret nz                                        ; $5084: $c0

    rst $28                                       ; $5085: $ef
    add b                                         ; $5086: $80
    rst $38                                       ; $5087: $ff
    add b                                         ; $5088: $80
    rst $38                                       ; $5089: $ff
    rst $38                                       ; $508a: $ff
    rst $38                                       ; $508b: $ff
    ld c, d                                       ; $508c: $4a
    push hl                                       ; $508d: $e5
    db $e4                                        ; $508e: $e4
    dec bc                                        ; $508f: $0b
    ret nz                                        ; $5090: $c0

    rst $28                                       ; $5091: $ef
    inc c                                         ; $5092: $0c
    jp z, $e8ff                                   ; $5093: $ca $ff $e8

    rst $20                                       ; $5096: $e7
    dec de                                        ; $5097: $1b
    add b                                         ; $5098: $80
    rst $28                                       ; $5099: $ef
    add hl, hl                                    ; $509a: $29
    inc e                                         ; $509b: $1c
    jp z, $e8ff                                   ; $509c: $ca $ff $e8

    rst $20                                       ; $509f: $e7
    dec hl                                        ; $50a0: $2b
    ld b, b                                       ; $50a1: $40
    rst $28                                       ; $50a2: $ef
    inc l                                         ; $50a3: $2c
    jp z, $e8ff                                   ; $50a4: $ca $ff $e8

    rst $20                                       ; $50a7: $e7
    and l                                         ; $50a8: $a5
    dec sp                                        ; $50a9: $3b
    nop                                           ; $50aa: $00
    rst $28                                       ; $50ab: $ef
    inc a                                         ; $50ac: $3c
    jp z, $e8ff                                   ; $50ad: $ca $ff $e8

    rst $20                                       ; $50b0: $e7
    add hl, bc                                    ; $50b1: $09
    ret nz                                        ; $50b2: $c0

    rst $08                                       ; $50b3: $cf
    ld a, [bc]                                    ; $50b4: $0a
    sub h                                         ; $50b5: $94
    jp z, $e8ff                                   ; $50b6: $ca $ff $e8

    rst $20                                       ; $50b9: $e7
    add hl, de                                    ; $50ba: $19
    add b                                         ; $50bb: $80
    rst $08                                       ; $50bc: $cf
    ld a, [de]                                    ; $50bd: $1a
    jp z, $e8ff                                   ; $50be: $ca $ff $e8

    rst $20                                       ; $50c1: $e7
    add hl, hl                                    ; $50c2: $29
    ld d, d                                       ; $50c3: $52
    ld b, b                                       ; $50c4: $40
    rst $08                                       ; $50c5: $cf
    ld a, [hl+]                                   ; $50c6: $2a
    jp z, $e8ff                                   ; $50c7: $ca $ff $e8

    rst $20                                       ; $50ca: $e7
    add hl, sp                                    ; $50cb: $39
    nop                                           ; $50cc: $00
    rst $08                                       ; $50cd: $cf
    ld a, [hl-]                                   ; $50ce: $3a
    jp z, Jump_00e_4aff                           ; $50cf: $ca $ff $4a

    add sp, -$19                                  ; $50d2: $e8 $e7
    ld a, b                                       ; $50d4: $78
    ret nz                                        ; $50d5: $c0

    xor a                                         ; $50d6: $af
    ld a, c                                       ; $50d7: $79
    jp z, $e8ff                                   ; $50d8: $ca $ff $e8

    rst $20                                       ; $50db: $e7
    adc b                                         ; $50dc: $88
    add b                                         ; $50dd: $80
    xor a                                         ; $50de: $af
    add hl, hl                                    ; $50df: $29
    adc c                                         ; $50e0: $89
    jp z, $e8ff                                   ; $50e1: $ca $ff $e8

    rst $20                                       ; $50e4: $e7
    sbc b                                         ; $50e5: $98
    ld b, b                                       ; $50e6: $40
    xor a                                         ; $50e7: $af
    sbc c                                         ; $50e8: $99
    jp z, $e8ff                                   ; $50e9: $ca $ff $e8

    rst $20                                       ; $50ec: $e7
    and l                                         ; $50ed: $a5
    xor b                                         ; $50ee: $a8
    nop                                           ; $50ef: $00
    xor a                                         ; $50f0: $af
    xor c                                         ; $50f1: $a9
    jp z, $e8ff                                   ; $50f2: $ca $ff $e8

    rst $20                                       ; $50f5: $e7
    cp b                                          ; $50f6: $b8
    ret nz                                        ; $50f7: $c0

    adc a                                         ; $50f8: $8f
    cp c                                          ; $50f9: $b9
    inc d                                         ; $50fa: $14
    jp z, $e8ff                                   ; $50fb: $ca $ff $e8

    rst $20                                       ; $50fe: $e7
    sbc d                                         ; $50ff: $9a
    add b                                         ; $5100: $80
    adc a                                         ; $5101: $8f
    sbc e                                         ; $5102: $9b
    jp z, $ecf0                                   ; $5103: $ca $f0 $ec

    pop af                                        ; $5106: $f1
    and e                                         ; $5107: $a3
    ld [c], a                                     ; $5108: $e2
    dec b                                         ; $5109: $05
    xor d                                         ; $510a: $aa
    ld b, b                                       ; $510b: $40
    adc a                                         ; $510c: $8f
    xor e                                         ; $510d: $ab
    adc d                                         ; $510e: $8a
    ldh a, [$ec]                                  ; $510f: $f0 $ec
    pop af                                        ; $5111: $f1
    add b                                         ; $5112: $80
    rst $38                                       ; $5113: $ff
    add b                                         ; $5114: $80
    rst $38                                       ; $5115: $ff
    add b                                         ; $5116: $80
    rst $38                                       ; $5117: $ff
    ld l, $80                                     ; $5118: $2e $80
    db $fc                                        ; $511a: $fc
    cp d                                          ; $511b: $ba
    xor [hl]                                      ; $511c: $ae
    xor a                                         ; $511d: $af
    cp $ed                                        ; $511e: $fe $ed
    cp e                                          ; $5120: $bb
    jp z, $ecd0                                   ; $5121: $ca $d0 $ec

    pop af                                        ; $5124: $f1
    nop                                           ; $5125: $00
    rst $38                                       ; $5126: $ff
    rst $38                                       ; $5127: $ff
    rst $38                                       ; $5128: $ff
    rst $38                                       ; $5129: $ff
    rst $38                                       ; $512a: $ff
    rst $38                                       ; $512b: $ff
    nop                                           ; $512c: $00
    ld e, h                                       ; $512d: $5c
    nop                                           ; $512e: $00
    nop                                           ; $512f: $00
    nop                                           ; $5130: $00
    add l                                         ; $5131: $85
    ld c, $ff                                     ; $5132: $0e $ff
    ldh a, [$09]                                  ; $5134: $f0 $09
    rst $38                                       ; $5136: $ff
    rst $38                                       ; $5137: $ff
    rst $20                                       ; $5138: $e7
    and $d3                                       ; $5139: $e6 $d3
    and $b7                                       ; $513b: $e6 $b7
    pop hl                                        ; $513d: $e1
    dec c                                         ; $513e: $0d
    ld e, e                                       ; $513f: $5b
    dec c                                         ; $5140: $0d
    dec c                                         ; $5141: $0d
    ret nz                                        ; $5142: $c0

    ldh a, [rOBP1]                                ; $5143: $f0 $49
    ld c, c                                       ; $5145: $49
    cp c                                          ; $5146: $b9
    ld [$c029], a                                 ; $5147: $ea $29 $c0
    di                                            ; $514a: $f3
    ld de, $c008                                  ; $514b: $11 $08 $c0
    or $80                                        ; $514e: $f6 $80
    rst $38                                       ; $5150: $ff
    reti                                          ; $5151: $d9


    add sp, $08                                   ; $5152: $e8 $08
    cp b                                          ; $5154: $b8
    ldh [$80], a                                  ; $5155: $e0 $80
    xor $7f                                       ; $5157: $ee $7f
    pop hl                                        ; $5159: $e1
    ld b, c                                       ; $515a: $41
    add hl, hl                                    ; $515b: $29
    rst $38                                       ; $515c: $ff
    ld [c], a                                     ; $515d: $e2
    ret nz                                        ; $515e: $c0

    cp $2d                                        ; $515f: $fe $2d
    rst $20                                       ; $5161: $e7
    call nc, Call_000_00ef                        ; $5162: $d4 $ef $00
    ld a, [c]                                     ; $5165: $f2
    ld [$e08d], sp                                ; $5166: $08 $8d $e0
    nop                                           ; $5169: $00
    cp $eb                                        ; $516a: $fe $eb
    ld b, b                                       ; $516c: $40
    rst $38                                       ; $516d: $ff
    ret nz                                        ; $516e: $c0

    rst $38                                       ; $516f: $ff
    rst $38                                       ; $5170: $ff
    rst $38                                       ; $5171: $ff
    ret nz                                        ; $5172: $c0

    rst $38                                       ; $5173: $ff
    rst $38                                       ; $5174: $ff
    rst $38                                       ; $5175: $ff
    ret nz                                        ; $5176: $c0

    rst $38                                       ; $5177: $ff
    ret nz                                        ; $5178: $c0

    rst $38                                       ; $5179: $ff
    nop                                           ; $517a: $00
    ret nz                                        ; $517b: $c0

    rst $38                                       ; $517c: $ff
    ret nz                                        ; $517d: $c0

    rst $38                                       ; $517e: $ff
    ret nz                                        ; $517f: $c0

    rst $38                                       ; $5180: $ff
    ret nz                                        ; $5181: $c0

    rst $38                                       ; $5182: $ff
    ret nz                                        ; $5183: $c0

    rst $38                                       ; $5184: $ff
    ret nz                                        ; $5185: $c0

    rst $38                                       ; $5186: $ff
    ret nz                                        ; $5187: $c0

    rst $38                                       ; $5188: $ff
    nop                                           ; $5189: $00
    or c                                          ; $518a: $b1
    nop                                           ; $518b: $00
    ret nz                                        ; $518c: $c0

    rst $38                                       ; $518d: $ff
    ret nz                                        ; $518e: $c0

    rst $38                                       ; $518f: $ff
    ret nz                                        ; $5190: $c0

    rst $38                                       ; $5191: $ff
    ret nz                                        ; $5192: $c0

    rst $38                                       ; $5193: $ff
    ret nz                                        ; $5194: $c0

    rst $38                                       ; $5195: $ff
    ret nz                                        ; $5196: $c0

    rst $38                                       ; $5197: $ff
    ret nz                                        ; $5198: $c0

    rst $38                                       ; $5199: $ff
    ret nz                                        ; $519a: $c0

    rst $38                                       ; $519b: $ff
    ld b, b                                       ; $519c: $40
    ret nz                                        ; $519d: $c0

    rst $38                                       ; $519e: $ff
    ret nz                                        ; $519f: $c0

    rst $38                                       ; $51a0: $ff
    rst $38                                       ; $51a1: $ff
    rst $38                                       ; $51a2: $ff
    ret nz                                        ; $51a3: $c0

    rst $38                                       ; $51a4: $ff
    rst $38                                       ; $51a5: $ff
    rst $38                                       ; $51a6: $ff
    pop hl                                        ; $51a7: $e1
    ldh [rIF], a                                  ; $51a8: $e0 $0f
    ret nz                                        ; $51aa: $c0

    rst $28                                       ; $51ab: $ef
    nop                                           ; $51ac: $00
    db $ed                                        ; $51ad: $ed
    ldh [rIE], a                                  ; $51ae: $e0 $ff
    rst $38                                       ; $51b0: $ff
    ret nz                                        ; $51b1: $c0

    rst $38                                       ; $51b2: $ff
    rst $38                                       ; $51b3: $ff
    rst $38                                       ; $51b4: $ff
    ret nz                                        ; $51b5: $c0

    rst $38                                       ; $51b6: $ff
    rst $38                                       ; $51b7: $ff
    rst $38                                       ; $51b8: $ff
    ret nz                                        ; $51b9: $c0

    rst $38                                       ; $51ba: $ff
    db $fc                                        ; $51bb: $fc
    ei                                            ; $51bc: $fb
    dec b                                         ; $51bd: $05
    inc c                                         ; $51be: $0c
    ret nz                                        ; $51bf: $c0

    rst $08                                       ; $51c0: $cf
    dec bc                                        ; $51c1: $0b
    jp z, $c0ff                                   ; $51c2: $ca $ff $c0

    rst $38                                       ; $51c5: $ff
    rst $38                                       ; $51c6: $ff
    rst $38                                       ; $51c7: $ff
    db $e4                                        ; $51c8: $e4
    db $e3                                        ; $51c9: $e3
    db $d3                                        ; $51ca: $d3
    ldh [rDIV], a                                 ; $51cb: $e0 $04
    ret nz                                        ; $51cd: $c0

    rst $38                                       ; $51ce: $ff
    ld sp, hl                                     ; $51cf: $f9
    ld hl, sp+$0a                                 ; $51d0: $f8 $0a
    ret nz                                        ; $51d2: $c0

    rst $38                                       ; $51d3: $ff
    ret nz                                        ; $51d4: $c0

    rst $38                                       ; $51d5: $ff
    ret nz                                        ; $51d6: $c0

    rst $38                                       ; $51d7: $ff
    ret nz                                        ; $51d8: $c0

    rst $38                                       ; $51d9: $ff
    ld a, d                                       ; $51da: $7a
    and a                                         ; $51db: $a7
    nop                                           ; $51dc: $00
    xor l                                         ; $51dd: $ad
    ldh [$d9], a                                  ; $51de: $e0 $d9
    pop af                                        ; $51e0: $f1
    ret nz                                        ; $51e1: $c0

    rst $38                                       ; $51e2: $ff
    ret nz                                        ; $51e3: $c0

    rst $38                                       ; $51e4: $ff
    ret nz                                        ; $51e5: $c0

    rst $38                                       ; $51e6: $ff
    ret nz                                        ; $51e7: $c0

    or $fa                                        ; $51e8: $f6 $fa
    nop                                           ; $51ea: $00
    db $fd                                        ; $51eb: $fd
    ld [$c008], a                                 ; $51ec: $ea $08 $c0
    rst $38                                       ; $51ef: $ff
    add b                                         ; $51f0: $80
    ld hl, sp-$41                                 ; $51f1: $f8 $bf
    rst $20                                       ; $51f3: $e7
    ld a, [bc]                                    ; $51f4: $0a
    rst $38                                       ; $51f5: $ff
    ldh a, [$80]                                  ; $51f6: $f0 $80
    rst $38                                       ; $51f8: $ff
    add b                                         ; $51f9: $80
    rst $20                                       ; $51fa: $e7
    rst $38                                       ; $51fb: $ff
    rst $38                                       ; $51fc: $ff
    nop                                           ; $51fd: $00
    rst $38                                       ; $51fe: $ff
    rst $38                                       ; $51ff: $ff
    ld hl, sp-$09                                 ; $5200: $f8 $f7
    sbc d                                         ; $5202: $9a
    pop af                                        ; $5203: $f1
    add [hl]                                      ; $5204: $86
    db $eb                                        ; $5205: $eb
    nop                                           ; $5206: $00
    nop                                           ; $5207: $00
    nop                                           ; $5208: $00
    call Call_00e_4373                            ; $5209: $cd $73 $43
    call Call_00e_5230                            ; $520c: $cd $30 $52
    ld a, $01                                     ; $520f: $3e $01
    ld hl, $5348                                  ; $5211: $21 $48 $53
    call Call_000_23e8                            ; $5214: $cd $e8 $23

jr_00e_5217:
    ld b, $00                                     ; $5217: $06 $00
    ldh a, [$94]                                  ; $5219: $f0 $94
    and $0b                                       ; $521b: $e6 $0b
    jr nz, jr_00e_522c                            ; $521d: $20 $0d

    ld b, $01                                     ; $521f: $06 $01
    ldh a, [$94]                                  ; $5221: $f0 $94
    and $10                                       ; $5223: $e6 $10
    jr nz, jr_00e_522c                            ; $5225: $20 $05

    call Call_000_2e3b                            ; $5227: $cd $3b $2e
    jr jr_00e_5217                                ; $522a: $18 $eb

jr_00e_522c:
    rst $08                                       ; $522c: $cf
    ld e, h                                       ; $522d: $5c
    ld a, b                                       ; $522e: $78
    ret                                           ; $522f: $c9


Call_00e_5230:
    call Call_000_0341                            ; $5230: $cd $41 $03
    ld a, $01                                     ; $5233: $3e $01
    ldh [$96], a                                  ; $5235: $e0 $96
    ldh [rSVBK], a                                ; $5237: $e0 $70
    ld hl, $0c10                                  ; $5239: $21 $10 $0c
    ld de, $d200                                  ; $523c: $11 $00 $d2
    call Call_000_0234                            ; $523f: $cd $34 $02
    ld a, $00                                     ; $5242: $3e $00
    ldh [rVBK], a                                 ; $5244: $e0 $4f
    ld hl, $d200                                  ; $5246: $21 $00 $d2
    ld de, $9200                                  ; $5249: $11 $00 $92
    ld c, $20                                     ; $524c: $0e $20
    call Call_000_2096                            ; $524e: $cd $96 $20
    ld hl, $d800                                  ; $5251: $21 $00 $d8
    ld de, $8800                                  ; $5254: $11 $00 $88
    ld c, $80                                     ; $5257: $0e $80
    call Call_000_2096                            ; $5259: $cd $96 $20
    ld a, $01                                     ; $525c: $3e $01
    ldh [$96], a                                  ; $525e: $e0 $96
    ldh [rSVBK], a                                ; $5260: $e0 $70
    ld hl, $4710                                  ; $5262: $21 $10 $47
    ld de, $d000                                  ; $5265: $11 $00 $d0
    call Call_000_1f2f                            ; $5268: $cd $2f $1f
    ld a, $01                                     ; $526b: $3e $01
    ldh [rVBK], a                                 ; $526d: $e0 $4f
    ld hl, $d000                                  ; $526f: $21 $00 $d0
    ld de, $9000                                  ; $5272: $11 $00 $90
    ld c, $80                                     ; $5275: $0e $80
    call Call_000_2096                            ; $5277: $cd $96 $20
    ld hl, $d800                                  ; $527a: $21 $00 $d8
    ld de, $8800                                  ; $527d: $11 $00 $88
    ld c, $80                                     ; $5280: $0e $80
    call Call_000_2096                            ; $5282: $cd $96 $20
    ld a, $02                                     ; $5285: $3e $02
    ldh [$96], a                                  ; $5287: $e0 $96
    ldh [rSVBK], a                                ; $5289: $e0 $70
    ld hl, $5131                                  ; $528b: $21 $31 $51
    ld de, $d000                                  ; $528e: $11 $00 $d0
    call Call_000_1f2f                            ; $5291: $cd $2f $1f
    ld a, $03                                     ; $5294: $3e $03
    ldh [$96], a                                  ; $5296: $e0 $96
    ldh [rSVBK], a                                ; $5298: $e0 $70
    ld hl, $4fea                                  ; $529a: $21 $ea $4f
    ld de, $d000                                  ; $529d: $11 $00 $d0
    call Call_000_1f2f                            ; $52a0: $cd $2f $1f
    call Call_00e_5309                            ; $52a3: $cd $09 $53
    ld hl, $4faa                                  ; $52a6: $21 $aa $4f
    ld de, $0008                                  ; $52a9: $11 $08 $00
    call Call_000_05a8                            ; $52ac: $cd $a8 $05
    call Call_00e_42f0                            ; $52af: $cd $f0 $42
    ld a, $01                                     ; $52b2: $3e $01
    ldh [$96], a                                  ; $52b4: $e0 $96
    ldh [rSVBK], a                                ; $52b6: $e0 $70
    ld b, $a8                                     ; $52b8: $06 $a8
    ld de, $d400                                  ; $52ba: $11 $00 $d4

jr_00e_52bd:
    ld hl, $46bd                                  ; $52bd: $21 $bd $46
    ld c, $01                                     ; $52c0: $0e $01
    call Call_000_03eb                            ; $52c2: $cd $eb $03
    dec b                                         ; $52c5: $05
    jr nz, jr_00e_52bd                            ; $52c6: $20 $f5

    call Call_00e_5448                            ; $52c8: $cd $48 $54
    ld a, $01                                     ; $52cb: $3e $01
    ldh [$96], a                                  ; $52cd: $e0 $96
    ldh [rSVBK], a                                ; $52cf: $e0 $70
    ld a, $00                                     ; $52d1: $3e $00
    ldh [rVBK], a                                 ; $52d3: $e0 $4f
    ld hl, $d400                                  ; $52d5: $21 $00 $d4
    ld de, $9400                                  ; $52d8: $11 $00 $94
    ld c, $40                                     ; $52db: $0e $40
    call Call_000_2096                            ; $52dd: $cd $96 $20
    ld hl, $d800                                  ; $52e0: $21 $00 $d8
    ld de, $8800                                  ; $52e3: $11 $00 $88
    ld c, $68                                     ; $52e6: $0e $68
    call Call_000_2096                            ; $52e8: $cd $96 $20
    ld a, [$c482]                                 ; $52eb: $fa $82 $c4
    inc a                                         ; $52ee: $3c
    cp $0d                                        ; $52ef: $fe $0d
    jr c, jr_00e_52f8                             ; $52f1: $38 $05

    ld a, $10                                     ; $52f3: $3e $10
    ld [$c323], a                                 ; $52f5: $ea $23 $c3

jr_00e_52f8:
    ld a, $22                                     ; $52f8: $3e $22
    ld [$c32c], a                                 ; $52fa: $ea $2c $c3
    ld a, $01                                     ; $52fd: $3e $01
    rst $18                                       ; $52ff: $df
    inc b                                         ; $5300: $04
    dec bc                                        ; $5301: $0b
    rst $18                                       ; $5302: $df
    inc a                                         ; $5303: $3c
    inc b                                         ; $5304: $04
    call Call_000_0371                            ; $5305: $cd $71 $03
    ret                                           ; $5308: $c9


Call_00e_5309:
    ld a, $03                                     ; $5309: $3e $03
    ldh [$96], a                                  ; $530b: $e0 $96
    ldh [rSVBK], a                                ; $530d: $e0 $70
    ld hl, $d146                                  ; $530f: $21 $46 $d1
    ld a, $40                                     ; $5312: $3e $40
    ld c, $1c                                     ; $5314: $0e $1c

jr_00e_5316:
    push hl                                       ; $5316: $e5
    ld [hl+], a                                   ; $5317: $22
    inc a                                         ; $5318: $3c
    ld [hl+], a                                   ; $5319: $22
    inc a                                         ; $531a: $3c
    ld [hl+], a                                   ; $531b: $22
    inc a                                         ; $531c: $3c
    ld [hl+], a                                   ; $531d: $22
    inc a                                         ; $531e: $3c
    ld [hl+], a                                   ; $531f: $22
    inc a                                         ; $5320: $3c
    ld [hl+], a                                   ; $5321: $22
    inc a                                         ; $5322: $3c
    pop hl                                        ; $5323: $e1
    ld de, $0040                                  ; $5324: $11 $40 $00
    add hl, de                                    ; $5327: $19
    dec c                                         ; $5328: $0d
    jr nz, jr_00e_5316                            ; $5329: $20 $eb

    ld a, $02                                     ; $532b: $3e $02
    ldh [$96], a                                  ; $532d: $e0 $96
    ldh [rSVBK], a                                ; $532f: $e0 $70
    ld hl, $d146                                  ; $5331: $21 $46 $d1
    ld a, $00                                     ; $5334: $3e $00
    ld c, $1c                                     ; $5336: $0e $1c

jr_00e_5338:
    push hl                                       ; $5338: $e5
    ld [hl+], a                                   ; $5339: $22
    ld [hl+], a                                   ; $533a: $22
    ld [hl+], a                                   ; $533b: $22
    ld [hl+], a                                   ; $533c: $22
    ld [hl+], a                                   ; $533d: $22
    ld [hl+], a                                   ; $533e: $22
    pop hl                                        ; $533f: $e1
    ld de, $0040                                  ; $5340: $11 $40 $00
    add hl, de                                    ; $5343: $19
    dec c                                         ; $5344: $0d
    jr nz, jr_00e_5338                            ; $5345: $20 $f1

    ret                                           ; $5347: $c9


    call Call_00e_443a                            ; $5348: $cd $3a $44
    ld a, [$c482]                                 ; $534b: $fa $82 $c4
    add $06                                       ; $534e: $c6 $06
    ld d, a                                       ; $5350: $57
    ld e, $60                                     ; $5351: $1e $60
    ld hl, $0500                                  ; $5353: $21 $00 $05
    ld bc, $0240                                  ; $5356: $01 $40 $02
    call Call_000_27b4                            ; $5359: $cd $b4 $27
    ld hl, $4008                                  ; $535c: $21 $08 $40
    ld de, $0d00                                  ; $535f: $11 $00 $0d
    ld bc, $0100                                  ; $5362: $01 $00 $01
    call Call_00e_4643                            ; $5365: $cd $43 $46
    ld a, [$c4be]                                 ; $5368: $fa $be $c4
    and a                                         ; $536b: $a7
    jr z, jr_00e_539f                             ; $536c: $28 $31

    ld hl, $c483                                  ; $536e: $21 $83 $c4
    ld a, [$c875]                                 ; $5371: $fa $75 $c8
    cp [hl]                                       ; $5374: $be
    jr z, jr_00e_539f                             ; $5375: $28 $28

    ld a, [$c482]                                 ; $5377: $fa $82 $c4
    add $05                                       ; $537a: $c6 $05
    ld d, a                                       ; $537c: $57
    ldh a, [$8c]                                  ; $537d: $f0 $8c
    and $0f                                       ; $537f: $e6 $0f
    add $0a                                       ; $5381: $c6 $0a
    add a                                         ; $5383: $87
    add a                                         ; $5384: $87
    add a                                         ; $5385: $87
    ld e, a                                       ; $5386: $5f
    ld bc, $0620                                  ; $5387: $01 $20 $06
    ld hl, $c483                                  ; $538a: $21 $83 $c4
    ld a, [$c875]                                 ; $538d: $fa $75 $c8
    cp [hl]                                       ; $5390: $be
    jr nc, jr_00e_5399                            ; $5391: $30 $06

    ld a, e                                       ; $5393: $7b
    cpl                                           ; $5394: $2f
    ld e, a                                       ; $5395: $5f
    ld bc, $0622                                  ; $5396: $01 $22 $06

jr_00e_5399:
    ld hl, $0080                                  ; $5399: $21 $80 $00
    call Call_000_27fa                            ; $539c: $cd $fa $27

jr_00e_539f:
    ret                                           ; $539f: $c9


    jr nz, @+$22                                  ; $53a0: $20 $20

    ld b, d                                       ; $53a2: $42
    ld h, e                                       ; $53a3: $63
    ld [hl-], a                                   ; $53a4: $32
    nop                                           ; $53a5: $00

Call_00e_53a6:
    ld a, $00                                     ; $53a6: $3e $00
    ld [$c485], a                                 ; $53a8: $ea $85 $c4
    ld a, $d4                                     ; $53ab: $3e $d4
    ld [$c486], a                                 ; $53ad: $ea $86 $c4
    ld c, l                                       ; $53b0: $4d
    ld b, h                                       ; $53b1: $44
    ld de, $d141                                  ; $53b2: $11 $41 $d1

Jump_00e_53b5:
    ld a, [bc]                                    ; $53b5: $0a
    cp $96                                        ; $53b6: $fe $96
    jp z, Jump_00e_5447                           ; $53b8: $ca $47 $54

    push de                                       ; $53bb: $d5
    ld hl, $0003                                  ; $53bc: $21 $03 $00
    add hl, bc                                    ; $53bf: $09
    ld a, [hl]                                    ; $53c0: $7e
    and $7f                                       ; $53c1: $e6 $7f
    inc a                                         ; $53c3: $3c
    call Call_00e_4532                            ; $53c4: $cd $32 $45
    ld hl, $0003                                  ; $53c7: $21 $03 $00
    add hl, bc                                    ; $53ca: $09
    bit 7, [hl]                                   ; $53cb: $cb $7e
    jr z, jr_00e_53d5                             ; $53cd: $28 $06

    ld a, $2f                                     ; $53cf: $3e $2f
    call Call_00e_447c                            ; $53d1: $cd $7c $44
    dec de                                        ; $53d4: $1b

jr_00e_53d5:
    inc de                                        ; $53d5: $13
    inc de                                        ; $53d6: $13
    push bc                                       ; $53d7: $c5
    push de                                       ; $53d8: $d5
    ld hl, $0002                                  ; $53d9: $21 $02 $00
    add hl, bc                                    ; $53dc: $09
    ld a, [hl]                                    ; $53dd: $7e
    ld hl, $c490                                  ; $53de: $21 $90 $c4
    call Call_00e_45e8                            ; $53e1: $cd $e8 $45
    ld a, $01                                     ; $53e4: $3e $01
    ldh [$96], a                                  ; $53e6: $e0 $96
    ldh [rSVBK], a                                ; $53e8: $e0 $70
    ld hl, $d200                                  ; $53ea: $21 $00 $d2
    ld c, $06                                     ; $53ed: $0e $06
    call Call_000_03a7                            ; $53ef: $cd $a7 $03
    ld hl, $c490                                  ; $53f2: $21 $90 $c4
    ld de, $d200                                  ; $53f5: $11 $00 $d2
    rst $18                                       ; $53f8: $df
    ld h, $03                                     ; $53f9: $26 $03
    ld hl, $c485                                  ; $53fb: $21 $85 $c4
    ld a, [hl+]                                   ; $53fe: $2a
    ld h, [hl]                                    ; $53ff: $66
    ld l, a                                       ; $5400: $6f
    ld de, $d200                                  ; $5401: $11 $00 $d2
    ld c, $06                                     ; $5404: $0e $06
    call Call_00e_46cd                            ; $5406: $cd $cd $46
    ld a, l                                       ; $5409: $7d
    ld [$c485], a                                 ; $540a: $ea $85 $c4
    ld a, h                                       ; $540d: $7c
    ld [$c486], a                                 ; $540e: $ea $86 $c4
    pop de                                        ; $5411: $d1
    pop bc                                        ; $5412: $c1
    ld a, $06                                     ; $5413: $3e $06
    add e                                         ; $5415: $83
    ld e, a                                       ; $5416: $5f
    jr nc, jr_00e_541a                            ; $5417: $30 $01

    inc d                                         ; $5419: $14

jr_00e_541a:
    inc de                                        ; $541a: $13
    ld hl, $0000                                  ; $541b: $21 $00 $00
    add hl, bc                                    ; $541e: $09
    ld a, [hl]                                    ; $541f: $7e
    call Call_00e_458a                            ; $5420: $cd $8a $45
    inc de                                        ; $5423: $13
    ld hl, $0001                                  ; $5424: $21 $01 $00
    add hl, bc                                    ; $5427: $09
    ld a, [hl]                                    ; $5428: $7e
    and a                                         ; $5429: $a7
    jr z, jr_00e_5431                             ; $542a: $28 $05

    call Call_00e_4532                            ; $542c: $cd $32 $45
    jr jr_00e_5437                                ; $542f: $18 $06

jr_00e_5431:
    inc de                                        ; $5431: $13
    ld a, $2d                                     ; $5432: $3e $2d
    call Call_00e_447c                            ; $5434: $cd $7c $44

jr_00e_5437:
    pop de                                        ; $5437: $d1
    ld hl, $0040                                  ; $5438: $21 $40 $00
    add hl, de                                    ; $543b: $19
    ld e, l                                       ; $543c: $5d
    ld d, h                                       ; $543d: $54
    ld hl, $0004                                  ; $543e: $21 $04 $00
    add hl, bc                                    ; $5441: $09
    ld c, l                                       ; $5442: $4d
    ld b, h                                       ; $5443: $44
    jp Jump_00e_53b5                              ; $5444: $c3 $b5 $53


Jump_00e_5447:
    ret                                           ; $5447: $c9


Call_00e_5448:
    call Call_00e_78b4                            ; $5448: $cd $b4 $78
    ld a, $06                                     ; $544b: $3e $06
    ldh [$96], a                                  ; $544d: $e0 $96
    ldh [rSVBK], a                                ; $544f: $e0 $70
    ld hl, $d800                                  ; $5451: $21 $00 $d8
    ld de, $c600                                  ; $5454: $11 $00 $c6
    ld bc, $0074                                  ; $5457: $01 $74 $00
    call Call_000_03d3                            ; $545a: $cd $d3 $03
    ld hl, $c600                                  ; $545d: $21 $00 $c6
    call Call_00e_53a6                            ; $5460: $cd $a6 $53
    ld hl, $c600                                  ; $5463: $21 $00 $c6
    call Call_00e_7871                            ; $5466: $cd $71 $78
    ld [$c482], a                                 ; $5469: $ea $82 $c4
    call Call_00e_7887                            ; $546c: $cd $87 $78
    ld [$c483], a                                 ; $546f: $ea $83 $c4
    ret                                           ; $5472: $c9


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

    db $fd, $00, $ff, $eb, $ff, $3c, $3c, $5a, $66, $7e, $df, $42, $5a, $66, $5a, $66
    db $f6, $e1, $3c, $ff, $ff, $6c, $6c, $fe, $92, $fe, $da, $da, $b6, $fb, $fc, $fc
    db $e0, $e3, $24, $24, $7e, $5a, $ff, $d7, $81, $7e, $5a, $fa, $e3, $24, $f0, $e2
    db $bf, $c1, $ff, $ff, $9b, $bd, $c3, $ff, $d9, $fd, $83, $ff, $7e, $ff, $73, $73
    db $af, $dd, $fd, $ab, $ff, $aa, $d6, $75, $6b, $ef, $d5, $d5, $bb, $ff, $6e, $ff
    db $70, $70, $a8, $d8, $fb, $ab, $ff, $6f, $5d, $dd, $ab, $ea, $b6, $be, $ca, $ff
    db $74, $ff, $60, $60, $f0, $90, $f0, $d0, $ef, $d0, $b0, $e0, $e0, $90, $e3, $1c
    db $1c, $2c, $f7, $34, $38, $28, $fe, $e3, $2c, $34, $18, $ff, $bf, $38, $38, $34
    db $2c, $1c, $14, $fe, $e3, $34, $ff, $2c, $18, $ff, $c3, $c3, $e7, $a5, $7e, $ef
    db $5a, $3c, $24, $3c, $88, $e0, $e7, $a5, $42, $7e, $60, $e0, $3c, $24, $ff, $e7
    db $ff, $81, $fe, $e0, $f5, $e7, $ea, $e0, $ff, $40, $e3, $30, $30, $78, $48, $df
    db $78, $68, $68, $58, $30, $f0, $e2, $ff, $ff, $c0, $e0, $e2, $e4, $e1, $30, $e0
    db $d2, $e2, $d4, $e0, $ea, $e2, $ff, $03, $ff, $02, $07, $05, $0d, $0b, $1a, $16
    db $34, $ff, $2c, $68, $58, $50, $70, $60, $ff, $7e, $fd, $7e, $46, $e0, $99, $ef
    db $91, $f7, $89, $ff, $ef, $99, $bd, $c3, $7e, $00, $e0, $5c, $64, $7c, $a7, $44
    db $7c, $64, $90, $e0, $f8, $c0, $3c, $e0, $e4, $f7, $9f, $f9, $b9, $c7, $ef, $9f
    db $08, $e0, $d0, $e2, $f7, $df, $99, $7e, $62, $ff, $f9, $d0, $e3, $3e, $3e, $ff
    db $5e, $62, $be, $c2, $fe, $92, $ff, $93, $e6, $6c, $e0, $f3, $0c, $85, $e0, $64
    db $e0, $9f, $fd, $83, $56, $e0, $e5, $7e, $7e, $e2, $e0, $9e, $f0, $e0, $99, $a0
    db $e3, $7e, $64, $e1, $f5, $fb, $2e, $32, $3a, $26, $2c, $e1, $e1, $18, $80, $e4
    db $7c, $e1, $d0, $e5, $f4, $e3, $bf, $c1, $7f, $6d, $79, $70, $e1, $00, $00, $0e
    db $e1, $3c, $3c, $f8, $e4, $26, $10, $e0, $18, $18, $f0, $e1, $ee, $c0, $34, $e0
    db $c1, $36, $e3, $ff, $68, $58, $34, $2c, $1a, $16, $0e, $0e, $f1, $00, $f0, $c0
    db $18, $e3, $12, $e3, $00, $ff, $58, $68, $ff, $2c, $34, $16, $1a, $16, $1a, $2c
    db $34, $df, $58, $68, $70, $70, $00, $10, $e4, $eb, $f7, $fc, $ac, $e1, $20, $c1
    db $3c, $3c, $62, $5e, $df, $b9, $ff, $b3, $ed, $af, $f5, $bd, $db, $72, $4e, $9e
    db $f0, $e1, $5a, $66, $bd, $db, $52, $e1, $9c, $c0, $99, $ff, $e7, $ff, $fc, $fc
    db $fa, $86, $fe, $9a, $ae, $40, $e3, $fd, $83, $fe, $e0, $e5, $9f, $d2, $c0, $db
    db $ec, $e0, $a1, $e0, $e1, $fd, $9b, $e2, $e2, $9b, $fa, $86, $fd, $fc, $00, $e2
    db $fe, $9e, $fe, $82, $fc, $9c, $63, $fe, $9e, $78, $e5, $f0, $e3, $08, $c0, $90
    db $f0, $a0, $e4, $fe, $e4, $e0, $91, $bf, $d9, $5b, $65, $3f, $ff, $d3, $e7, $e7
    db $94, $e5, $de, $c1, $e7, $70, $c0, $7e, $42, $e3, $7e, $66, $10, $c2, $78, $a0
    db $d0, $c3, $ff, $f3, $7e, $ff, $72, $fe, $92, $ba, $c6, $54, $6c, $38, $ff, $ff
    db $ee, $ee, $f7, $99, $ed, $93, $fa, $ff, $86, $fa, $86, $ed, $93, $f7, $99, $ee
    db $87, $ff, $f0, $f0, $a8, $e2, $a4, $e0, $6c, $e0, $0c, $c0, $f7, $ff, $f7, $eb
    db $9d, $f7, $89, $eb, $95, $f7, $bf, $9d, $ff, $9d, $f7, $95, $62, $a0, $e2, $ef
    db $07, $99, $f7, $89, $1e, $c0, $a0, $e2, $20, $e7, $40, $eb, $42, $e2, $99, $9c
    db $60, $e5, $02, $e1, $bd, $db, $60, $e1, $e0, $e9, $ff, $7b, $99, $e6, $d0, $a4
    db $b6, $ce, $6d, $73, $30, $c7, $c0, $76, $a2, $fe, $e3, $00, $c1, $36, $e2, $e0
    db $c5, $f0, $e5, $a5, $db, $f2, $aa, $81, $3c, $60, $e0, $68, $e0, $9d, $ab, $d5
    db $bf, $bf, $c1, $75, $4b, $7e, $4a, $34, $00, $e2, $bd, $29, $c3, $90, $81, $78
    db $a1, $e7, $f0, $c4, $a5, $a4, $c1, $b0, $e5, $ff, $81, $6d, $73, $3a, $26, $5c
    db $64, $b7, $69, $cf, $2c, $a1, $f2, $a2, $2c, $ce, $81, $3c, $2c, $00, $a1, $ff
    db $d6, $ba, $ba, $d6, $54, $6c, $fe, $82, $ab, $fe, $ee, $fc, $e1, $38, $e0, $e3
    db $34, $be, $81, $3c, $79, $34, $e0, $81, $d2, $a1, $7e, $5a, $66, $66, $20, $85
    db $f8, $15, $88, $f0, $82, $e0, $8d, $3c, $3c, $7a, $46, $3d, $ff, $3b, $5f, $61
    db $bf, $d9, $ff, $99, $7f, $ff, $41, $3f, $ff, $e0, $e0, $f0, $90, $fc, $f1, $9c
    db $1c, $c3, $2a, $c0, $70, $a2, $5e, $62, $bf, $d9, $ff, $f6, $96, $bf, $d9, $5e
    db $62, $3c, $ff, $3f, $07, $07, $0f, $09, $3f, $39, $d0, $e7, $50, $a1, $ee, $be
    db $a2, $81, $be, $de, $e0, $e1, $0f, $0f, $17, $5f, $19, $2f, $37, $fe, $e6, $5e
    db $e0, $e6, $50, $81, $ef, $3f, $3f, $5b, $65, $a4, $e3, $3d, $3b, $7a, $b3, $46
    db $3c, $a0, $ea, $90, $a1, $78, $78, $36, $80, $48, $e6, $fa, $e4, $48, $78, $10
    db $e3, $fe, $81, $24, $f4, $ec, $f7, $e8, $98, $70, $10, $c0, $f6, $96, $ff, $99
    db $2f, $fb, $87, $fe, $8e, $70, $c1, $f7, $d0, $e5, $fc, $e5, $1c, $f0, $62, $6c
    db $a2, $83, $ff, $a9, $fe, $e0, $e0, $60, $3e, $a0, $0f, $a6, $fd, $83, $ef, $a0
    db $a4, $60, $e6, $40, $a9, $62, $80, $d6, $00, $c5, $3f, $3f, $04, $e0, $c1, $80
    db $80, $d9, $5f, $ef, $61, $3f, $39, $0f, $b0, $83, $91, $f7, $8f, $db, $e8, $98
    db $40, $a3, $00, $00, $de, $e2, $df, $ff, $37, $81, $fd, $fb, $10, $a1, $3c, $3c
    db $58, $a2, $4e, $a0, $1f, $3e, $26, $2e, $32, $1e, $70, $60, $2e, $a4, $be, $e3
    db $c2, $f0, $e4, $bd, $02, $c3, $10, $80, $62, $62, $66, $e0, $fd, $ab, $df, $fe
    db $82, $7a, $56, $2c, $e0, $e5, $c3, $7e, $c2, $00, $c2, $f7, $f0, $84, $82, $e1
    db $e0, $c3, $32, $63, $7d, $73, $c7, $5a, $66, $bf, $00, $c2, $50, $4c, $f3, $f2
    db $18, $00, $ef, $1c, $04, $0c, $0c, $30, $47, $bd, $db, $e7, $e7, $bd, $e7, $a5
    db $50, $83, $90, $ad, $40, $00, $78, $ff, $00, $fc, $3c, $7e, $20, $af, $2f, $e0
    db $ff, $40, $de, $40, $4f, $ff, $20, $00, $7c, $ff, $00, $3e, $1e, $7c, $00, $7e
    db $3c, $23, $f7, $21, $3f, $03, $30, $e1, $3c, $00, $de, $1c, $ff, $63, $61, $03
    db $01, $05, $01, $3a, $02, $fd, $1c, $90, $40, $fe, $00, $7f, $67, $2c, $0c, $7f
    db $50, $10, $60, $20, $3c, $00, $1e, $c0, $e0, $ff, $2c, $00, $36, $06, $58, $18
    db $a0, $20, $f3, $c0, $40, $c6, $e0, $b0, $e0, $6c, $00, $f6, $34, $ff, $67, $23
    db $fe, $62, $ee, $4a, $5a, $40, $fd, $0d, $60, $40, $9c, $00, $ce, $4c, $c1, $41
    db $ff, $c0, $40, $e0, $40, $5e, $00, $2f, $ff, $ff, $10, $00, $58, $08, $7c, $20
    db $7e, $0c, $7f, $ff, $59, $fb, $51, $7f, $32, $27, $90, $e0, $ff, $fc, $10, $7e
    db $4c, $3b, $19, $77, $11, $df, $fb, $51, $77, $52, $13, $30, $40, $38, $00, $ff
    db $7c, $28, $fa, $68, $db, $49, $fb, $59, $ff, $77, $33, $22, $ff, $04, $00, $be
    db $00, $ff, $df, $5b, $c6, $42, $de, $42, $ee, $4a, $ff, $5e, $04, $2d, $ff, $e0
    db $00, $74, $50, $ff, $76, $30, $e7, $63, $c6, $42, $c6, $42, $ff, $7e, $06, $3c
    db $ff, $30, $00, $18, $10, $ff, $14, $04, $5c, $08, $aa, $20, $ef, $45, $f7, $75
    db $45, $1a, $f0, $22, $20, $00, $70, $20, $ff, $e8, $60, $46, $40, $03, $03, $00
    db $ff, $ff, $1e, $00, $8f, $0b, $de, $40, $cf, $4b, $7f, $de, $42, $fe, $5a, $7e
    db $24, $2d, $80, $e0, $ef, $fc, $00, $7e, $6e, $fc, $e0, $0e, $f8, $60, $ff, $7c
    db $18, $32, $ff, $78, $00, $3c, $2c, $ff, $1c, $08, $7e, $02, $be, $18, $f7, $53
    db $f7, $5a, $12, $24, $00, $e0, $74, $00, $3a, $18, $ff, $71, $11, $b2, $10, $73
    db $11, $3d, $01, $fd, $1e, $50, $e2, $78, $20, $6c, $08, $b2, $10, $df, $f3, $51
    db $5d, $11, $26, $e0, $c0, $3c, $00, $ff, $fe, $1e, $7c, $40, $fe, $1e, $72, $50
    db $ff, $3f, $23, $0e, $ff, $48, $00, $7c, $20, $ff, $ee, $0c, $73, $51, $37, $13
    db $12, $02, $df, $18, $08, $08, $ff, $08, $10, $e0, $ee, $44, $ff, $ff, $35, $ff
    db $55, $5d, $41, $1e, $0e, $fd, $08, $10, $e0, $1c, $00, $1e, $0e, $18, $08, $d7
    db $78, $08, $b8, $ba, $e0, $32, $50, $e2, $2c, $0c, $fc, $a0, $c3, $a0, $e1, $44
    db $00, $66, $22, $66, $22, $ff, $26, $02, $16, $12, $0e, $06, $3c, $0c, $f9, $18
    db $70, $e2, $6e, $c0, $78, $62, $40, $77, $23, $f7, $3e, $06, $1c, $e0, $c7, $13
    db $f6, $52, $72, $7b, $50, $11, $e0, $e6, $42, $40, $07, $03, $e0, $e5, $ff, $76
    db $44, $3b, $19, $73, $11, $f3, $51, $f7, $75, $51, $12, $a0, $c0, $18, $08, $28
    db $08, $7d, $30, $9a, $c0, $7a, $28, $ad, $21, $46, $e0, $02, $bf, $0a, $00, $0f
    db $05, $05, $05, $00, $85, $0e, $1e, $f2, $e0, $0f, $01, $07, $07, $f0, $6d, $df
    db $65, $fe, $eb, $f0, $ef, $ed, $ff, $ed, $a0, $bd, $d2, $a0, $7d, $ff, $01, $7f
    db $9f, $7d, $03, $01, $07, $03, $50, $c1, $60, $82, $00, $ff, $7e, $5a, $3e, $06
    db $3c, $1c, $70, $30, $fd, $20, $40, $02, $04, $00, $1e, $06, $fc, $0c, $f3, $78
    db $68, $c0, $c1, $40, $c3, $fc, $00, $fe, $7a, $f2, $20, $c0, $46, $90, $a1, $23
    db $a1, $f8, $00, $7c, $5c, $d3, $30, $10, $46, $c0, $40, $62, $08, $3c, $c1, $66
    db $3c, $cf, $14, $fc, $34, $64, $d0, $e6, $ae, $e0, $16, $34, $3b, $14, $10, $d0
    db $e7, $74, $1c, $0c, $d0, $e5, $f2, $e1, $f3, $fc, $04, $fc, $e2, $00, $64, $a4
    db $00, $f6, $52, $23, $7e, $76, $8c, $e0, $f0, $46, $2a, $a0, $7f, $01, $e1, $50
    db $e1, $ef, $13, $01, $1d, $01, $4c, $c1, $38, $18, $10, $7e, $80, $a0, $06, $02
    db $0a, $02, $f4, $04, $62, $e1, $7a, $20, $c1, $10, $00, $a0, $ff, $7d, $43, $41
    db $30, $e1, $6a, $60, $c1, $00, $d0, $81, $2e, $e4, $e1, $18, $08, $e6, $80, $fc
    db $00, $c0, $e0, $81, $3c, $14, $3c, $14, $7c, $34, $e7, $ec, $64, $44, $40, $c0
    db $d0, $80, $5d, $33, $11, $7f, $73, $31, $63, $21, $ef, $61, $47, $30, $c1, $bc
    db $80, $a0, $d4, $e2, $77, $0c, $04, $04, $20, $c0, $3e, $7f, $00, $7f, $3d, $e3
    db $61, $43, $41, $30, $c5, $3e, $f0, $e0, $3b, $e6, $62, $46, $42, $f0, $a3, $90
    db $82, $a0, $c2, $c0, $fe, $e1, $b8, $c0, $d0, $a2, $7e, $80, $3b, $cc, $a0, $22
    db $fe, $80, $e3, $e2, $00, $73, $71, $e3, $01, $73, $9f, $71, $07, $03, $fe, $06
    db $20, $e1, $20, $a0, $7a, $ff, $0e, $06, $1c, $0c, $38, $10, $f6, $30, $ed, $63
    db $20, $80, $60, $20, $4e, $80, $3d, $67, $23, $df, $62, $22, $3e, $00, $1f, $00
    db $40, $82, $00, $3f, $c3, $41, $43, $01, $23, $21, $70, $c3, $80, $e1, $ff, $5f
    db $1d, $b3, $01, $5f, $51, $07, $03, $d6, $20, $81, $0c, $00, $aa, $80, $34, $62
    db $e3, $7c, $0c, $fd, $38, $d0, $20, $a2, $00, $f3, $51, $f3, $51, $d1, $53, $e0
    db $e0, $a0, $e1, $e2, $60, $3e, $44, $e3, $1c, $0c, $d7, $78, $18, $30, $a0, $e2
    db $60, $fc, $80, $6e, $2e, $36, $f8, $e0, $20, $20, $00, $a0, $0c, $04, $e0, $e9
    db $e0, $c2, $a9, $3e, $9c, $c6, $60, $e4, $2e, $60, $e6, $10, $90, $61, $36, $ff
    db $1c, $04, $fc, $08, $7a, $68, $19, $09, $e1, $08, $90, $c2, $fe, $e1, $3e, $e1
    db $c0, $e3, $48, $00, $64, $ff, $20, $66, $22, $e2, $60, $c3, $41, $c3, $fb, $41
    db $41, $40, $20, $80, $00, $ce, $40, $f7, $7f, $07, $f8, $78, $c0, $40, $7e, $00
    db $90, $21, $de, $e0, $c5, $05, $01, $7a, $02, $a0, $a3, $20, $00, $ff, $50, $00
    db $a8, $20, $44, $40, $02, $00, $dd, $01, $50, $c2, $7f, $6f, $5c, $f2, $80, $fb
    db $69, $d7, $db, $49, $49, $b0, $c4, $47, $c4, $81, $0c, $08, $ff, $00, $04, $ff
    db $f0, $00, $7c, $70, $7e, $ff, $1e, $38, $20, $1c, $1c, $e0, $00, $7c, $f3, $60
    db $0e, $60, $60, $c2, $80, $10, $58, $10, $64, $fe, $ca, $c0, $ff, $7d, $41, $ff
    db $02, $00, $03, $ef, $01, $25, $01, $16, $fc, $a0, $34, $00, $da, $17, $1a, $60
    db $ff, $c2, $60, $3e, $fc, $e1, $12, $e1, $00, $61, $7e, $40, $c1, $ff, $1d, $7d
    db $69, $1a, $0a, $06, $e1, $35, $04, $f0, $a3, $3a, $cc, $a1, $0e, $06, $10, $e3
    db $5a, $e0, $ff, $3d, $3f, $01, $1f, $1d, $03, $01, $7f, $43, $01, $3f, $c0, $c5
    db $f0, $82, $20, $81, $00, $84, $22, $0e, $e1, $fc, $00, $81, $90, $62, $28, $78
    db $28, $7a, $28, $ff, $ef, $6b, $de, $46, $4c, $a0, $c3, $20, $62, $20, $3f, $67
    db $23, $7e, $26, $7c, $1c, $70, $c1, $80, $a1, $06, $f4, $c1, $c3, $41, $f0, $a1
    db $f0, $e3, $70, $a9, $f0, $a1, $d0, $a1, $80, $f0, $a5, $e3, $25, $fa, $68, $d0
    db $20, $fa, $6a, $ad, $37, $e0, $6d, $ff, $bf, $00, $37, $00, $83, $00, $af, $fc
    db $e0, $9f, $fa, $f8, $e0, $87, $c0, $6d, $ff, $00, $02, $03, $0f, $df, $1d, $1f
    db $10, $1f, $10, $fa, $e0, $15, $0a, $fe, $91, $a0, $01, $03, $83, $c2, $fb, $7e
    db $ff, $7f, $46, $ff, $c4, $ff, $7c, $83, $c7, $f0, $e0, $ff, $80, $c1, $e0, $e1
    db $b0, $f1, $b8, $f9, $ef, $88, $f1, $98, $61, $b1, $00, $ff, $92, $bb, $ff, $d6
    db $d7, $ee, $bf, $ee, $bb, $ee, $bb, $bb, $ff, $80, $af, $61, $10, $ff, $d6, $fe
    db $e0, $11, $bc, $fa, $e0, $92, $62, $f8, $8f, $fc, $b7, $fe, $e1, $f8, $b9, $8f
    db $d3, $e1, $f4, $00, $84, $ff, $b5, $fe, $e0, $84, $77, $ff, $bd, $e7, $d0, $e3
    db $21, $ff, $ad, $fe, $e0, $b9, $23, $fa, $e0, $62, $63, $88, $ff, $db, $fe, $e2
    db $d8, $5d, $ff, $b0, $e3, $44, $ff, $6d, $fe, $e0, $6c, $fa, $e0, $fe, $b0, $e3
    db $2f, $f8, $af, $f8, $af, $fe, $2f, $77, $fe, $a3, $fe, $32, $62, $00, $00, $03
    db $c2, $02, $f7, $03, $00, $06, $f1, $44, $c1, $00, $40, $00, $5d, $c0, $1b, $e0
    db $60, $00, $30, $e1, $42, $c7, $b0, $20, $5f, $23, $00, $e1, $00, $42, $d1, $44
    db $c0, $e0, $e0, $e9, $40, $7a, $a0, $d2, $44, $85, $70, $e2, $85, $ff, $bc, $de
    db $70, $e4, $a2, $ff, $b7, $fd, $fe, $e1, $37, $fd, $fe, $d2, $42, $28, $fc, $7d
    db $d7, $7f, $da, $77, $ff, $de, $7f, $da, $3d, $e7, $18, $bc, $ff, $df, $00, $03
    db $07, $47, $ed, $15, $e0, $19, $ff, $ef, $95, $ff, $b4, $5b, $31, $02, $2c, $7e
    db $7e, $bf, $db, $f7, $dd, $ff, $4d, $be, $e0, $e2, $08, $4a, $22, $60, $3c, $1e
    db $60, $18, $82, $e0, $61, $43, $3c, $e0, $40, $45, $34, $ba, $20, $0c, $d8, $40
    db $f0, $e3, $e2, $e1, $7c, $52, $45, $b7, $d8, $ff, $9b, $12, $e2, $8b, $fe, $80
    db $e2, $c0, $75, $7f, $fe, $e3, $80, $52, $45, $84, $ff, $f5, $62, $e1, $bc, $58
    db $e0, $60, $e2, $e0, $3f, $e0, $bf, $fe, $e0, $3f, $01, $c0, $32, $44, $00, $00

    nop                                           ; $5e50: $00

    db $ff, $00, $00, $00, $7f, $00, $c0, $03, $87, $ff, $05, $8c, $0b, $98, $16, $90
    db $14, $91, $fe, $f0, $e0, $ff, $00, $00, $ce, $ff, $b5, $31, $bf, $2d, $21, $79
    db $e3, $f7, $ce, $f0, $e3, $71, $ff, $fb, $aa, $8e, $77, $04, $f6, $04, $96, $fd
    db $24, $e0, $e3, $e3, $f7, $d5, $1c, $eb, $08, $ef, $ee, $c8, $ed, $89, $d0, $e3
    db $c3, $e7, $a5, $7f, $2c, $ab, $28, $2e, $78, $dd, $f1, $c0, $e3, $ff, $9c, $fe
    db $6a, $63, $5d, $41, $7d, $c1, $fd, $a5, $e0, $e4, $78, $fd, $b5, $87, $fb, $02
    db $ef, $bb, $32, $bb, $22, $90, $e0, $fe, $01, $02, $ff, $f1, $f8, $69, $0c, $f5
    db $04, $35, $44, $73, $55, $64, $80, $e0, $fd, $ea, $f0, $0f, $f1, $fe, $e0, $f5
    db $f3, $fa, $e0, $03, $f6, $e0, $f0, $0f, $9f, $f0, $d5, $bf, $fe, $e0, $ff, $fa
    db $e0, $f0, $f6, $e2, $0f, $00, $bf, $fe, $f1, $fe, $f1, $fc, $f3, $fc, $e3, $ff
    db $ff, $f0, $60, $90, $4f, $bf, $4f, $bf, $0f, $bd, $ff, $fc, $e3, $4f, $bf, $ff
    db $f0, $e0, $eb, $6f, $d9, $9f, $e0, $ed, $fe, $e1, $fc, $f3, $fc, $e3, $ff, $f0
    db $ff, $0e, $98, $07, $8c, $1f, $b8, $3e, $a1, $ff, $21, $a3, $1e, $bf, $00, $c0
    db $7f, $00, $ff, $eb, $ce, $6b, $4e, $77, $c6, $da, $c2, $ef, $23, $e7, $1c, $3f
    db $f5, $c1, $37, $64, $77, $ff, $64, $d6, $24, $f6, $0c, $0c, $1d, $f3, $fe, $e8
    db $c0, $ff, $00, $cf, $18, $9e, $38, $cd, $bf, $99, $ef, $88, $88, $b8, $77, $f0
    db $e2, $ba, $ff, $33, $3a, $73, $dd, $f1, $56, $50, $48, $f7, $d9, $87, $cf, $c5
    db $c1, $ed, $99, $fd, $81, $7f, $e5, $81, $dd, $99, $99, $bb, $66, $d0, $e2, $ff
    db $f3, $06, $e7, $0e, $b3, $26, $bb, $22, $f7, $22, $6e, $dd, $c0, $e2, $75, $64
    db $75, $4c, $ff, $e9, $0c, $e9, $18, $11, $38, $e1, $f0, $ff, $03, $00, $fe, $00
    db $7e, $7e, $bd, $c3, $ff, $ff, $99, $ff, $99, $bf, $c1, $7f, $79, $8f, $bd, $c3
    db $7e, $ff, $00, $e1, $06, $e1, $fa, $c1, $03, $57, $0f, $f7, $0f, $50, $e1, $b0
    db $fe, $c4, $b0, $44, $e2, $1c, $02, $e3, $fa, $c1, $0c, $03, $f8, $df, $e0, $08
    db $e3, $fe, $c1, $0f, $40, $b0, $0f, $ff, $00, $e3, $de, $c5, $e0, $eb, $d8, $c1
    db $ec, $08, $e5, $fe, $c3, $f8, $f7, $80, $e3, $ef, $91, $f7, $f7, $89, $ff, $99
    db $80, $e1, $3c, $3c, $5c, $64, $ff, $7c, $44, $7c, $64, $3c, $24, $7e, $66, $ef
    db $7e, $42, $3c, $ff, $60, $e3, $f7, $f9, $b9, $bf, $c7, $ef, $9f, $ff, $81, $7e
    db $f0, $e2, $f7, $df, $99, $7e, $62, $ff, $f9, $d0, $e3, $3e, $3e, $ff, $5e, $62
    db $be, $c2, $fe, $92, $ff, $93, $bf, $ff, $81, $ff, $f3, $0c, $ff, $ff, $e0, $81
    db $6f, $ff, $9f, $fd, $83, $e0, $e5, $7e, $7e, $e2, $e0, $e1, $9e, $f0, $e0, $1c
    db $e0, $20, $e1, $e0, $e1, $f5, $fb, $2e, $ff, $32, $3a, $26, $3c, $24, $3c, $24
    db $18, $a8, $a0, $e4, $fc, $c3, $00, $e3, $01, $02, $c0, $01, $fa, $e0, $f1, $12
    db $f6, $e0, $00, $00, $c0, $0a, $e1, $b0, $02, $c0, $f8, $c1, $fe, $c1, $fc, $08
    db $e1, $fc, $a1, $0e, $01, $fe, $f1, $0f, $00, $e6, $20, $c1, $00, $f0, $fe, $a1
    db $fa, $e1, $40, $b0, $ef, $7f, $1f, $cf, $3f, $cf, $3f, $0f, $ff, $fc, $e3, $ef
    db $cf, $3f, $0c, $03, $ad, $c0, $00, $0c, $03, $ff, $0f, $00, $ff, $f0, $0c, $03
    db $08, $07, $ff, $c0, $30, $cf, $3f, $00, $f0, $c0, $30, $fb, $80, $70, $f8, $e1
    db $00, $f0, $06, $4f, $0f, $ff, $49, $0f, $4d, $07, $4d, $07, $45, $07, $ff, $45
    db $02, $47, $3f, $00, $e0, $f0, $f0, $f7, $10, $f0, $50, $fe, $e0, $10, $e0, $70
    db $80, $ff, $c0, $ff, $00, $0e, $5f, $1f, $51, $1f, $ff, $55, $1f, $5d, $0f, $5b
    db $1f, $51, $0e, $71, $5f, $e0, $ef, $d2, $80, $fe, $ec, $03, $ff, $38, $ec, $e0
    db $7d, $1f, $e8, $e0, $3f, $ff, $7f, $ff, $37, $f0, $e0, $dd, $1f, $ec, $e0, $03
    db $ff, $07, $e4, $c1, $ff, $01, $ba, $f0, $e2, $e3, $f2, $e0, $33, $ff, $cf, $d4
    db $e0, $67, $bf, $ff, $9b, $ff, $27, $ff, $c3, $ec, $e4, $ff, $cb, $ff, $00, $00
    db $e0, $03, $00, $e2, $f8, $e1, $07, $0f, $e1, $f0, $04, $e2, $06, $e1, $f6, $e3
    db $00, $a1, $0c, $03, $0e, $f1, $01, $02, $e1, $30, $e1, $04, $e1, $00, $f0, $40
    db $b0, $1e, $04, $c1, $40, $b0, $00, $f0, $08, $e5, $fe, $c3, $c1, $a0, $ca, $bc
    db $80, $f0, $b0, $80, $f0, $b0, $80, $f4, $e1, $1f, $f0, $55, $3f, $fe, $e0, $ff
    db $fa, $e0, $70, $f6, $e2, $00, $8c, $e1, $f8, $3c, $e2, $f8, $e3, $ff, $ee, $f8
    db $ff, $e0, $fc, $c3, $ff, $f7, $88, $f0, $8f, $df, $20, $e1, $1e, $fb, $80, $7f
    db $27, $e0, $07, $8f, $73, $79, $87, $7f, $85, $7b, $f8, $07, $04, $fb, $00, $30
    db $e0, $57, $83, $ff, $9f, $fc, $e0, $87, $f8, $e0, $8f, $f4, $e0, $ea, $f0, $c1
    db $39, $00, $e4, $2f, $e4, $c0, $31, $ff, $0e, $eb, $ff, $f1, $dc, $c0, $73, $a4
    db $e4, $1c, $ff, $23, $8a, $ce, $c0, $f8, $f2, $c0, $38, $f0, $c2, $c0, $c3, $e2
    db $e1, $f1, $aa, $d6, $e0, $31, $b2, $c2, $38, $d4, $c0, $f8, $a8, $c0, $23, $f8
    db $d2, $e0, $a1, $ce, $4b, $c0, $e1, $1f, $c0, $3f, $ec, $f1, $7f, $fe, $e1, $70
    db $e0, $41, $60, $1f, $00, $8f, $80, $ff, $87, $80, $e7, $e4, $9f, $fc, $cf, $f8
    db $ff, $ff, $ff, $8f, $f8, $9f, $f0, $9f, $f7, $df, $9e, $f7, $9f, $f0, $8f, $f2
    db $e0, $ff, $ff, $ff, $f7, $dd, $f7, $5d, $f7, $5d, $ef, $5d, $ef, $ff, $41, $be
    db $e3, $61, $a1, $fc, $07, $fc, $cf, $07, $f8, $df, $70, $fe, $e2, $04, $e1, $61
    db $ff, $57, $8e, $ff, $70, $40, $e0, $38, $7a, $c0, $1c, $32, $c0, $f5, $c3, $40
    db $c0, $06, $4c, $e0, $09, $ff, $e6, $ff, $fd, $18, $22, $c0, $20, $ff, $98, $ff
    db $47, $ff, $d5, $30, $f0, $e0, $c6, $fa, $e0, $00, $90, $80, $30, $ff, $d5, $ce
    db $38, $c0, $fc, $16, $c0, $70, $02, $c0, $65, $ff, $5f, $89, $ff, $32, $ff, $c4
    db $d0, $e2, $08, $f2, $a0, $25, $3c, $fe, $a0, $64, $f1, $80, $3a, $e1, $f0, $20
    db $ec, $94, $c3, $e0, $20, $e7, $83, $c6, $b9, $a6, $f0, $4d, $a1, $ad, $91, $7f
    db $c2, $ff, $3e, $fc, $3c, $e3, $67, $b7, $d9, $77, $ff, $98, $7f, $90, $ff, $b9
    db $3f, $30, $1f, $ff, $10, $df, $d0, $0f, $08, $ef, $e8, $bf, $a7, $b8, $9f, $98
    db $22, $60, $79, $80, $80, $fe, $e4, $81, $fe, $32, $c3, $19, $ef, $b8, $ed, $ba
    db $ee, $bb, $6f, $ef, $bb, $fe, $1b, $61, $81, $e0, $bf, $fe, $e0, $ef, $3f, $e0
    db $3f, $60, $f8, $e0, $ff, $ff, $e1, $ef, $ff, $1e, $ff, $60, $3e, $c0, $20, $ff
    db $4f, $74, $c8, $e0, $f0, $e1, $0c, $dd, $40, $07, $ff, $78, $28, $c0, $dd, $3c
    db $32, $80, $cd, $ff, $02, $16, $e0, $01, $ff, $55, $fe, $18, $a0, $7f, $22, $80
    db $86, $22, $c0, $40, $0e, $c0, $55, $60, $12, $c0, $30, $12, $80, $33, $06, $e0
    db $38, $02, $c0, $45, $70, $4c, $c2, $ff, $c2, $e0, $c0, $c1, $f0, $e1, $0c, $1a
    db $a0, $dc, $30, $a0, $1f, $41, $fc, $00, $01, $15, $60, $3f, $00, $7f, $60, $00
    db $40, $00, $86, $00, $39, $fa, $e0, $fd, $9f, $f4, $e0, $fc, $00, $02, $01, $00
    db $80, $cd, $c0, $fe, $e9, $00, $bf, $01, $ee, $df, $21, $f8, $00, $bd, $07, $f4
    db $e5, $7f, $ff, $0f, $7f, $5e, $20, $0c, $6b, $00, $03, $b0, $e3, $fc, $0f, $40
    db $00, $f7, $de, $e0, $fe, $d4, $e4, $ff, $ff, $bf, $e1, $bd, $e3, $9f, $ed, $f6
    db $fe, $e1, $9d, $f7, $8d, $82, $e1, $fd, $23, $ff, $ff, $d7, $bf, $d6, $ff, $16
    db $ff, $36, $fe, $61, $61, $5c, $f7, $fc, $b7, $fc, $57, $fe, $1f, $17, $ff, $11
    db $fd, $d3, $90, $80, $70, $e7, $60, $e0, $bf, $0f, $5f, $00, $e1, $00, $1e, $58
    db $e0, $9f, $5b, $00, $20, $f8, $01, $06, $8f, $f0, $e0, $0c, $d8, $60, $f7, $07
    db $00, $78, $50, $e1, $f1, $f8, $00, $cd, $9b, $00, $02, $30, $e7, $09, $5f, $30
    db $e8, $c8, $00, $32, $9c, $b0, $e7, $0a, $e1, $02, $39, $7c, $0e, $e0, $fe, $e8
    db $3f, $e0, $f7, $c0, $fe, $e7, $00, $41, $10, $81, $0e, $81, $81, $0f, $13, $bf
    db $0f, $31, $0f, $60, $0f, $90, $12, $40, $b4, $ff, $f0, $f8, $f0, $b9, $f0, $f3
    db $f0, $b3, $63, $f0, $b7, $0f, $80, $42, $83, $fc, $e3, $f7, $0f, $42, $85, $f6
    db $3c, $83, $ff, $f0, $d0, $b6, $01, $fe, $02, $fc, $f7, $04, $fc, $04, $61, $66
    db $e0, $1f, $18, $07, $57, $04, $03, $02, $90, $b0, $03, $60, $c2, $1e, $83, $a4
    db $9a, $00, $e5, $00, $50, $c1, $03, $47, $00, $e8, $28, $00, $91, $c9, $fb, $00
    db $e8, $f0, $e0, $7b, $c0, $c9, $30, $c0, $c1, $e0, $80, $3b, $03, $50, $c2, $e0
    db $c3, $00, $c7, $e0, $c3, $5b, $c1, $00, $c6, $39, $4b, $7c, $60, $14, $20, $f3
    db $10, $24, $20, $e1, $f7, $16, $22, $f0, $10, $23, $0a, $21, $f0, $b2, $f0, $f7
    db $00, $f8, $0b, $f8, $ff, $0d, $f8, $0c, $f8, $0d, $ff, $3f, $c1, $fd, $79, $40
    db $40, $ff, $41, $c1, $20, $e0, $10, $fd, $70, $fe, $e1, $e0, $e0, $3c, $3c, $07
    db $07, $fe, $51, $40, $f0, $cf, $cc, $47, $46, $23, $23, $bf, $03, $03, $07, $07
    db $9f, $9e, $c2, $cd, $07, $df, $4c, $0f, $48, $0f, $4b, $fe, $e0, $48, $07, $fb
    db $4c, $03, $f0, $20, $fb, $6a, $fb, $2a, $fb, $ff, $aa, $ff, $a4, $ff, $31, $ce
    db $7b, $84, $7d, $ce, $13, $40, $84, $ff, $85, $ff, $bd, $fa, $e0, $ef, $bc, $ff
    db $85, $7a, $51, $40, $e1, $30, $f1, $d5, $90, $fe, $e0, $10, $f8, $e1, $63, $75
    db $a0, $1f, $56, $92, $fe, $e0, $50, $fe, $e0, $f8, $e0, $09, $d0, $20, $bf, $80
    db $85, $7b, $ff, $b5, $fe, $e0, $84, $ff, $cc, $33, $21, $40, $ff, $7d, $44, $7d
    db $44, $79, $dc, $fd, $c4, $ff, $f9, $5c, $fd, $44, $bb, $fc, $fe, $00, $7d, $20
    db $0a, $c0, $93, $0f, $91, $0f, $d1, $fe, $e0, $a5, $f1, $60, $40, $96, $0a, $c0
    db $06, $c1, $f9, $fe, $e0, $bd, $32, $fe, $e0, $f0, $e0, $c4, $fc, $e3, $f7, $0f
    db $e4, $c9, $e0, $c1, $9c, $2f, $61, $5c, $40, $f8, $fe, $f1, $2a, $04, $59, $c0
    db $e3, $7e, $39, $60, $20, $df, $ff, $00, $fb, $04, $22, $40, $ef, $01, $ff, $00
    db $c7, $6f, $20, $fc, $03, $03, $f7, $fc, $fc, $03, $20, $42, $7f, $ff, $3f, $df
    db $03, $3f, $1f, $da, $24, $50, $cb, $00, $a0, $50, $ca, $00, $a0, $50, $ca, $18
    db $00, $a0, $20, $a7, $30, $80, $07, $4f, $d0, $8b, $e0, $a0, $d0, $85, $02, $70
    db $82, $7d, $2f, $61, $a0, $a3, $f0, $82, $c0, $e8, $d0, $82, $4e, $80, $22, $10
    db $38, $b8, $fa, $c0, $00, $e9, $e0, $c1, $9f, $06, $e6, $da, $a1, $7c, $de, $a0
    db $4e, $27, $fc, $fd, $f2, $f3, $8c, $9b, $02, $ff, $e7, $f3, $8f, $a7, $5f, $cf
    db $3f, $9f, $43, $7f, $8f, $d4, $60, $4b, $c1, $95, $27, $40, $41, $70, $f0, $e8
    db $fc, $56, $c3, $4e, $c2, $57, $08, $5c, $3f, $00, $8f, $f7, $d9, $df, $71, $2d
    db $40, $61, $ff, $c1, $7f, $ff, $dd, $22, $77, $ff, $00, $f9, $0c, $fd, $15, $64
    db $fe, $e0, $04, $f8, $e1, $9b, $50, $c0, $e2, $a5, $da, $a1, $fb, $04, $4e, $e0
    db $a4, $2a, $ff, $2e, $ff, $60, $f7, $9f, $f1, $0e, $0b, $21, $82, $ff, $82, $fd
    db $be, $8f, $40, $b8, $a8, $38, $a8, $10, $88, $c0, $f9, $ff, $08, $f9, $08, $f1
    db $b8, $e1, $b0, $e1, $1f, $a0, $e1, $a0, $43, $e0, $10, $80, $21, $6d, $04, $c0
    db $7f, $93, $0f, $b1, $0f, $b3, $0f, $71, $fe, $e0, $57, $f0, $0f, $93, $0a, $80
    db $f7, $08, $80, $f7, $20, $e4, $50, $40, $05, $a1, $40, $f6, $02, $42, $01, $7f
    db $08, $c1, $e0, $d0, $24, $97, $c1, $00, $77, $a2, $40, $78, $9e, $40, $80, $63
    db $f0, $2f, $00, $e0, $00, $c0, $ed, $00, $80, $80, $64, $ff, $fc, $ff, $0e, $00
    db $8a, $00, $ff, $41, $df, $7b, $ff, $de, $42, $ee, $4a, $5e, $04, $2d, $ff, $ff
    db $ee, $00, $7a, $50, $7e, $30, $e7, $79, $ff, $c6, $42, $c6, $42, $7e, $06, $3c
    db $ff, $ff, $3e, $00, $1f, $15, $1f, $01, $5f, $ab, $ff, $aa, $20, $ef, $45, $75
    db $45, $1a, $ff, $ff, $0e, $00, $0f, $05, $2f, $01, $77, $af, $df, $e8, $60, $46
    db $40, $03, $b0, $a0, $0e, $00, $ff, $9b, $01, $cf, $41, $df, $61, $df, $43, $df
    db $fe, $5a, $7e, $24, $3d, $3f, $2e, $25, $00, $ff, $3a, $10, $f5, $01, $7a, $b5
    db $6d, $25, $ff, $ac, $24, $74, $44, $18, $ff, $2a, $00, $ff, $7f, $05, $3d, $2d
    db $7e, $81, $3f, $37, $ff, $42, $02, $3c, $00, $1e, $ff, $0a, $00, $ff, $1e, $04
    db $28, $08, $50, $bf, $20, $00, $df, $10, $00, $08, $00, $04, $f0, $e0, $8f, $05
    db $ff, $ff, $41, $cf, $77, $cc, $44, $cc, $44, $bf, $58, $08, $28, $ff, $0e, $04
    db $d0, $e0, $39, $ff, $02, $ff, $40, $00, $a0, $20, $7e, $00, $fd, $3f, $c0, $e1
    db $01, $3f, $2f, $08, $f7, $44, $ff, $04, $40, $00, $7c, $40, $1f, $ff, $4a, $ff
    db $00, $6f, $25, $65, $25, $62, $bd, $63, $bf, $21, $65, $21, $3a, $02, $1c, $b0
    db $e0, $ff, $ff, $01, $7f, $77, $3c, $c7, $3c, $14, $3c, $cf, $04, $1c, $0c, $08
    db $e0, $e2, $ee, $e0, $b7, $68, $f7, $20, $60, $20, $90, $e1, $4a, $00, $7f, $25
    db $df, $fd, $01, $fe, $df, $60, $f0, $e0, $38, $00, $fd, $1c, $f0, $e1, $05, $fd
    db $3d, $7e, $a1, $af, $bf, $2f, $e0, $40, $de, $40, $4f, $60, $e2, $35, $ff, $15
    db $7c, $83, $7e, $3c, $23, $21, $3f, $fd, $03, $60, $e1, $3f, $05, $df, $1b, $63
    db $fd, $ef, $03, $01, $05, $01, $a0, $e6, $67, $2c, $df, $fb, $50, $10, $b0, $e5
    db $2f, $05, $35, $05, $58, $ff, $bf, $a0, $20, $c0, $40, $7c, $00, $3e, $a0, $3f
    db $0f, $ff, $ff, $5d, $da, $f0, $c3, $60, $c7, $ea, $b0, $c0, $74, $5f, $30, $e6
    db $79, $c7, $43, $60, $c3, $3a, $60, $c0, $d7, $15, $05, $5c, $60, $c6, $0a, $60
    db $c0, $25, $05, $fd, $70, $60, $c6, $0a, $00, $9f, $01, $cf, $4b, $ef, $de, $61
    db $de, $42, $60, $d3, $0e, $00, $4f, $ff, $05, $6f, $21, $67, $bb, $e6, $62, $c3
    db $af, $41, $c3, $41, $41, $30, $c0, $8b, $30, $c0, $ff, $df, $07, $f8, $78, $c0
    db $40, $90, $c1, $0e, $00, $73, $0b, $01, $ae, $c0, $00, $e2, $7a, $02, $3c, $f0
    db $e2, $ff, $2f, $01, $57, $af, $a8, $20, $44, $40, $ff, $02, $00, $01, $ff, $1e
    db $00, $fb, $01, $ff, $7f, $61, $5f, $af, $7c, $28, $fb, $69, $97, $db, $49, $49
    db $00, $ee, $2a, $e0, $c0, $6e, $c0, $dd, $7f, $73, $31, $63, $21, $ef, $61, $47
    db $00, $c0, $fe, $f0, $e0, $03, $7e, $ef, $fe, $00, $7f, $77, $fb, $0c, $04, $10
    db $c1, $3f, $15, $3f, $01, $7f, $7f, $bd, $e3, $61, $47, $43, $3e, $06, $40, $c1
    db $f3, $2f, $05, $f0, $e0, $70, $e0, $0e, $06, $3c, $0c, $c9, $18, $30, $e2, $80
    db $e3, $03, $78, $e1, $30, $c3, $00, $7f, $df, $bb, $66, $22, $26, $22, $d0, $e3
    db $ef, $05, $ff, $75, $75, $e2, $1d, $73, $71, $07, $03, $f7, $fe, $06, $7c, $d0
    db $e3, $03, $7e, $f7, $1c, $bf, $0c, $38, $10, $f6, $30, $63, $00, $c5, $bd, $cf
    db $67, $23, $62, $22, $34, $a0, $a0, $a2, $c5, $45, $3f, $42, $bd, $03, $01, $07
    db $03, $20, $a1, $90, $e4, $9f, $bd, $ff, $41, $5e, $5a, $ce, $a0, $c0, $c1, $01
    db $ef, $7f, $07, $3c, $f7, $60, $e1, $7c, $0c, $38, $fe, $b0, $a0, $af, $05, $f5
    db $55, $f2, $5d, $53, $d9, $51, $a0, $e5, $80, $a0, $3f, $fe, $9c, $a0, $1c, $0c
    db $f7, $78, $18, $30, $80, $a3, $05, $7c, $a3, $6e, $c5, $2e, $ae, $a1, $20, $00
    db $df, $ff, $ff, $00, $cc, $4f, $05, $e7, $65, $25, $64, $60, $c6, $e0, $81, $cd
    db $41, $f6, $a1, $0f, $60, $c5, $e0, $c7, $60, $c3, $00, $c3, $50, $60, $c6, $0a
    db $fb, $00, $1f, $80, $c1, $ef, $5c, $08, $7a, $28, $00, $60, $d1, $00, $00

    nop                                           ; $68e0: $00

    db $eb, $0a, $ff, $4f, $88, $01, $00, $00, $1f, $12, $ff, $03, $f6, $00, $49, $00
    db $c8, $12, $e0, $19, $1f, $12, $f6, $00, $4b, $03, $c8, $12, $1f, $12, $f6, $00
    db $f2, $03, $4b, $03, $1f, $12, $f6, $00, $ff, $00, $80, $7d, $ff, $67, $6a, $00
    db $80, $7e, $1f, $12, $f6, $00, $80, $7d, $8e, $7f, $80, $7e, $1f, $12, $f6, $00
    db $c9, $41, $ff, $ff, $f7, $f6, $00, $ff, $e0, $da, $e1, $4a, $4a, $ff, $4a, $4b
    db $4c, $42, $00, $01, $02, $03, $3f, $04, $05, $06, $07, $9e, $9f, $ec, $ff, $d8
    db $e3, $fe, $c0, $e3, $ac, $ad, $5a, $4a, $4a, $5b, $5c, $ff, $45, $10, $11, $12
    db $13, $14, $15, $16, $c7, $17, $55, $2d, $ec, $ff, $d8, $e3, $80, $e1, $9c, $85
    db $ff, $bc, $bd, $a0, $a1, $a2, $6b, $6c, $a7, $ff, $67, $a3, $a4, $a5, $a6, $81
    db $82, $83, $7b, $84, $3d, $ec, $e7, $a7, $a7, $67, $66, $fb, $e0, $f3, $a7, $67
    db $ec, $f2, $40, $e1, $0f, $95, $96, $97, $ff, $b0, $b1, $b2, $76, $90, $b7, $77
    db $b3, $ff, $b4, $b5, $b6, $91, $92, $93, $94, $2d, $fe, $ec, $e4, $30, $31, $b7
    db $b7, $b7, $77, $32, $f1, $33, $fa, $e1, $ec, $f2, $00, $e1, $1d, $69, $69, $21
    db $27, $68, $69, $69, $fd, $e0, $fc, $e6, $1e, $ec, $e8, $fa, $e5, $bc, $ec, $f2
    db $c0, $c1, $0d, $69, $69, $22, $c0, $ec, $0e, $10, $ec, $e8, $ba, $e5, $ec, $f2
    db $80, $e4, $23, $80, $f0, $ec, $e5, $80, $e9, $04, $ec, $ee, $80, $e4, $24, $80
    db $f0, $ec, $e5, $80, $e9, $ec, $ee, $00, $e4, $41, $25, $00, $f0, $ec, $e5, $00
    db $e9, $ec, $ee, $00, $e4, $26, $00, $f0, $10, $ec, $e5, $00, $e9, $ec, $ee, $80
    db $c4, $27, $80, $d0, $ec, $e5, $80, $c9, $bc, $ec, $ee, $40, $a1, $0b, $69, $69
    db $28, $40, $cc, $0c, $f0, $ec, $e8, $3a, $c5, $ec, $f2, $00, $a1, $1b, $69, $69
    db $18, $c2, $00, $cc, $1c, $ec, $e8, $fa, $a5, $ec, $f2, $c0, $81, $2b, $4d, $cb
    db $4e, $4f, $c0, $ac, $2c, $ec, $e8, $ba, $a5, $2c, $2b, $3f, $73, $74, $75, $70
    db $71, $72, $32, $a3, $2c, $a3, $25, $2c, $80, $81, $2e, $e8, $e6, $00, $a6, $2f
    db $ec, $e7, $00, $a6, $2b, $2f, $2e, $2c, $af, $2f, $40, $81, $3e, $00, $a4, $16
    db $a0, $f2, $00, $a5, $3f, $ec, $e4, $00, $a9, $3f, $3e, $69, $21, $95, $20, $2c
    db $ac, $3f, $00, $81, $19, $e8, $e7, $fc, $85, $1a, $50, $ec, $e8, $fa, $85, $ec
    db $e1, $ec, $8d, $1a, $c0, $61, $29, $e8, $e7, $42, $bc, $85, $2a, $ec, $e8, $ba
    db $85, $ec, $e1, $ec, $8d, $2a, $80, $61, $09, $39, $e8, $e7, $7c, $85, $3a, $ec
    db $e8, $7a, $85, $ec, $e1, $ec, $8d, $25, $3a, $40, $61, $78, $e8, $e7, $3c, $85
    db $79, $ec, $e8, $3a, $85, $94, $ec, $e1, $ec, $8d, $79, $00, $61, $88, $e8, $e7
    db $fc, $65, $89, $50, $ec, $e8, $fa, $65, $ec, $e1, $ec, $8d, $89, $c0, $41, $98
    db $e8, $e7, $42, $bc, $65, $99, $ec, $e8, $ba, $65, $ec, $e1, $ec, $8d, $99, $80
    db $41, $09, $a8, $e8, $e7, $7c, $65, $a9, $ec, $e8, $7a, $65, $ec, $e1, $ec, $8d
    db $25, $a9, $40, $41, $b8, $e8, $e7, $3c, $65, $b9, $ec, $e8, $3a, $65, $94, $ec
    db $e1, $ec, $8d, $b9, $00, $41, $9a, $e8, $e7, $fc, $45, $9b, $fc, $ec, $e8, $fa
    db $45, $9b, $9a, $60, $61, $62, $63, $eb, $64, $65, $fa, $e9, $9b, $c0, $21, $aa
    db $5d, $5e, $e5, $5f, $c0, $4c, $ab, $ec, $e8, $ba, $45, $ab, $aa, $6d, $53, $6e
    db $6f, $ec, $ed, $80, $21, $7a, $a8, $ef, $7b, $ec, $f1, $17, $ba, $ae, $af, $fe
    db $ed, $bb, $80, $e2, $a8, $e7, $80, $e7, $00, $94, $f4, $fc, $f1, $a8, $f1, $94
    db $f5, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $34, $ea, $68, $69, $20, $21
    db $22, $23, $24, $1f, $25, $26, $27, $28, $18, $d2, $ff, $ff, $ff, $ff, $ff, $e2
    db $b5, $ca, $41, $ff, $ff, $e3, $e2, $c0, $f9, $4a, $4b, $4c, $ff, $41, $41, $42
    db $00, $01, $02, $03, $04, $1f, $05, $06, $07, $9e, $9f, $ec, $f1, $40, $d5, $00
    db $00

    nop                                           ; $6b92: $00

    db $49, $0e, $ff, $ff, $f7, $f6, $09, $ff, $e0, $da, $e1, $0d, $ff, $e1, $a0, $f2
    db $e2, $ee, $e5, $ec, $ff, $c6, $e1, $c0, $ea, $0a, $c0, $e5, $0a, $00, $c0, $e7
    db $ec, $fc, $80, $e2, $89, $e5, $f8, $e7, $67, $e3, $ec, $ff, $c0, $ff, $2e, $c0
    db $ff, $09, $0e, $08, $ff, $ee, $0e, $ec, $ff, $d8, $e3, $00, $c0, $ff, $c0, $ff
    db $d4, $ff, $c0, $ff, $d4, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $00, $c0, $ff, $c0
    db $ff, $c0, $ff, $c0, $ff, $ec, $ff, $c0, $ff, $ec, $ff, $c0, $ff, $50, $ac, $ea
    db $40, $bf, $40, $bf, $c0, $f0, $0f, $d4, $ef, $0f, $ec, $f2, $00, $58, $ef, $c5
    db $e2, $e8, $f1, $ec, $ff, $c0, $ff, $ec, $ff, $c0, $ff, $c0, $ff, $17, $09, $09
    db $0c, $80, $cf, $0c, $ec, $ff, $d8, $e3, $c0, $ff, $0a, $c0, $ff, $0b, $00, $cf
    db $0b, $ec, $ff, $d8, $e3, $d2, $42, $c0, $af, $01, $0a, $ec, $ff, $d8, $e3, $c0
    db $ff, $c0, $ff, $d4, $ff, $ac, $e4, $fe, $f0, $00, $c0, $ff, $80, $ff, $a7, $f2
    db $ff, $ff, $80, $ff, $14, $f0, $fc, $f1, $9a, $ff, $00, $94, $e7, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $e1, $6a, $80, $69, $d2, $ff, $c0, $ff, $ff, $ff, $ff
    db $67, $6c, $ff, $ff, $e2, $e1, $c0, $f9, $0d, $0d, $01, $0d, $de, $e8, $b4, $e3
    db $ec, $ed, $80, $f5, $00, $00

    nop                                           ; $6c79: $00

    call Call_00e_4373                            ; $6c7a: $cd $73 $43
    call Call_00e_6ca8                            ; $6c7d: $cd $a8 $6c
    ld a, $01                                     ; $6c80: $3e $01
    ld hl, $6d47                                  ; $6c82: $21 $47 $6d
    call Call_000_23e8                            ; $6c85: $cd $e8 $23

jr_00e_6c88:
    ld b, $00                                     ; $6c88: $06 $00
    ldh a, [$94]                                  ; $6c8a: $f0 $94
    and $0b                                       ; $6c8c: $e6 $0b
    jr nz, jr_00e_6ca4                            ; $6c8e: $20 $14

    ld a, [$c834]                                 ; $6c90: $fa $34 $c8
    cp $03                                        ; $6c93: $fe $03
    jr z, jr_00e_6c9f                             ; $6c95: $28 $08

    ld b, $01                                     ; $6c97: $06 $01
    ldh a, [$94]                                  ; $6c99: $f0 $94
    and $20                                       ; $6c9b: $e6 $20
    jr nz, jr_00e_6ca4                            ; $6c9d: $20 $05

jr_00e_6c9f:
    call Call_000_2e3b                            ; $6c9f: $cd $3b $2e
    jr jr_00e_6c88                                ; $6ca2: $18 $e4

jr_00e_6ca4:
    rst $08                                       ; $6ca4: $cf

    db $5c

    ld a, b                                       ; $6ca6: $78
    ret                                           ; $6ca7: $c9


Call_00e_6ca8:
    call Call_000_0341                            ; $6ca8: $cd $41 $03
    ld a, $01                                     ; $6cab: $3e $01
    ldh [$96], a                                  ; $6cad: $e0 $96
    ldh [rSVBK], a                                ; $6caf: $e0 $70
    ld hl, $5480                                  ; $6cb1: $21 $80 $54
    ld de, $d200                                  ; $6cb4: $11 $00 $d2
    call Call_000_1f2f                            ; $6cb7: $cd $2f $1f
    ld a, $00                                     ; $6cba: $3e $00
    ldh [rVBK], a                                 ; $6cbc: $e0 $4f
    ld hl, $d200                                  ; $6cbe: $21 $00 $d2
    ld de, $9200                                  ; $6cc1: $11 $00 $92
    ld c, $60                                     ; $6cc4: $0e $60
    call Call_000_2096                            ; $6cc6: $cd $96 $20
    ld hl, $d800                                  ; $6cc9: $21 $00 $d8
    ld de, $8800                                  ; $6ccc: $11 $00 $88
    ld c, $80                                     ; $6ccf: $0e $80
    call Call_000_2096                            ; $6cd1: $cd $96 $20
    ld a, $01                                     ; $6cd4: $3e $01
    ldh [$96], a                                  ; $6cd6: $e0 $96
    ldh [rSVBK], a                                ; $6cd8: $e0 $70
    ld hl, $5e51                                  ; $6cda: $21 $51 $5e
    ld de, $d000                                  ; $6cdd: $11 $00 $d0
    call Call_000_1f2f                            ; $6ce0: $cd $2f $1f
    ld a, $01                                     ; $6ce3: $3e $01
    ldh [rVBK], a                                 ; $6ce5: $e0 $4f
    ld hl, $d000                                  ; $6ce7: $21 $00 $d0
    ld de, $9000                                  ; $6cea: $11 $00 $90
    ld c, $80                                     ; $6ced: $0e $80
    call Call_000_2096                            ; $6cef: $cd $96 $20
    ld hl, $d800                                  ; $6cf2: $21 $00 $d8
    ld de, $8800                                  ; $6cf5: $11 $00 $88
    ld c, $40                                     ; $6cf8: $0e $40
    call Call_000_2096                            ; $6cfa: $cd $96 $20
    ld a, $02                                     ; $6cfd: $3e $02
    ldh [$96], a                                  ; $6cff: $e0 $96
    ldh [rSVBK], a                                ; $6d01: $e0 $70
    ld hl, $6b93                                  ; $6d03: $21 $93 $6b
    ld de, $d000                                  ; $6d06: $11 $00 $d0
    call Call_000_1f2f                            ; $6d09: $cd $2f $1f
    ld a, $03                                     ; $6d0c: $3e $03
    ldh [$96], a                                  ; $6d0e: $e0 $96
    ldh [rSVBK], a                                ; $6d10: $e0 $70
    ld hl, $6921                                  ; $6d12: $21 $21 $69
    ld de, $d000                                  ; $6d15: $11 $00 $d0
    call Call_000_1f2f                            ; $6d18: $cd $2f $1f
    ld hl, $68e1                                  ; $6d1b: $21 $e1 $68
    ld de, $0008                                  ; $6d1e: $11 $08 $00
    call Call_000_05a8                            ; $6d21: $cd $a8 $05
    call Call_00e_42f0                            ; $6d24: $cd $f0 $42
    call Call_00e_6e61                            ; $6d27: $cd $61 $6e
    ld a, [$c837]                                 ; $6d2a: $fa $37 $c8
    cp $0a                                        ; $6d2d: $fe $0a
    jr c, jr_00e_6d36                             ; $6d2f: $38 $05

    ld a, $0c                                     ; $6d31: $3e $0c
    ld [$c323], a                                 ; $6d33: $ea $23 $c3

jr_00e_6d36:
    ld a, $1e                                     ; $6d36: $3e $1e
    ld [$c32c], a                                 ; $6d38: $ea $2c $c3
    ld a, $01                                     ; $6d3b: $3e $01
    rst $18                                       ; $6d3d: $df

    db $04, $0b

    rst $18                                       ; $6d40: $df

    db $3c, $04

    call Call_000_0371                            ; $6d43: $cd $71 $03
    ret                                           ; $6d46: $c9


    call Call_00e_443a                            ; $6d47: $cd $3a $44
    ld de, $0500                                  ; $6d4a: $11 $00 $05
    ld hl, $0900                                  ; $6d4d: $21 $00 $09
    ld bc, $0240                                  ; $6d50: $01 $40 $02
    call Call_000_27b4                            ; $6d53: $cd $b4 $27
    ld de, $1100                                  ; $6d56: $11 $00 $11
    ld hl, $0900                                  ; $6d59: $21 $00 $09
    ld bc, $0240                                  ; $6d5c: $01 $40 $02
    call Call_000_27b4                            ; $6d5f: $cd $b4 $27
    ld a, [$c834]                                 ; $6d62: $fa $34 $c8
    cp $03                                        ; $6d65: $fe $03
    jr z, jr_00e_6d9d                             ; $6d67: $28 $34

    ld hl, $401d                                  ; $6d69: $21 $1d $40
    ld de, $0100                                  ; $6d6c: $11 $00 $01
    ld bc, $010a                                  ; $6d6f: $01 $0a $01
    call Call_00e_4643                            ; $6d72: $cd $43 $46
    ld de, $0580                                  ; $6d75: $11 $80 $05
    ld l, $01                                     ; $6d78: $2e $01
    ld h, $12                                     ; $6d7a: $26 $12

jr_00e_6d7c:
    push hl                                       ; $6d7c: $e5
    ld a, [$c836]                                 ; $6d7d: $fa $36 $c8
    ld h, a                                       ; $6d80: $67
    rst $18                                       ; $6d81: $df
    ld c, h                                       ; $6d82: $4c
    ld [bc], a                                    ; $6d83: $02
    jr z, jr_00e_6d8f                             ; $6d84: $28 $09

    ld hl, $0180                                  ; $6d86: $21 $80 $01
    ld bc, $0730                                  ; $6d89: $01 $30 $07
    call Call_000_27fa                            ; $6d8c: $cd $fa $27

jr_00e_6d8f:
    pop hl                                        ; $6d8f: $e1
    inc d                                         ; $6d90: $14
    ld a, l                                       ; $6d91: $7d
    cp $09                                        ; $6d92: $fe $09
    jr nz, jr_00e_6d99                            ; $6d94: $20 $03

    inc d                                         ; $6d96: $14
    inc d                                         ; $6d97: $14
    inc d                                         ; $6d98: $14

jr_00e_6d99:
    inc l                                         ; $6d99: $2c
    dec h                                         ; $6d9a: $25
    jr nz, jr_00e_6d7c                            ; $6d9b: $20 $df

jr_00e_6d9d:
    ret                                           ; $6d9d: $c9


Call_00e_6d9e:
    ld h, $09                                     ; $6d9e: $26 $09

jr_00e_6da0:
    push hl                                       ; $6da0: $e5
    push de                                       ; $6da1: $d5
    ld a, [$c836]                                 ; $6da2: $fa $36 $c8
    ld h, a                                       ; $6da5: $67
    rst $18                                       ; $6da6: $df

    db $0c, $13

    call Call_00e_4532                            ; $6da9: $cd $32 $45
    pop de                                        ; $6dac: $d1
    pop hl                                        ; $6dad: $e1
    ld a, $40                                     ; $6dae: $3e $40
    add e                                         ; $6db0: $83
    ld e, a                                       ; $6db1: $5f
    jr nc, jr_00e_6db5                            ; $6db2: $30 $01

    inc d                                         ; $6db4: $14

jr_00e_6db5:
    inc l                                         ; $6db5: $2c
    dec h                                         ; $6db6: $25
    jr nz, jr_00e_6da0                            ; $6db7: $20 $e7

    ret                                           ; $6db9: $c9


Call_00e_6dba:
    inc h                                         ; $6dba: $24
    dec h                                         ; $6dbb: $25
    ret z                                         ; $6dbc: $c8

jr_00e_6dbd:
    push hl                                       ; $6dbd: $e5
    push de                                       ; $6dbe: $d5
    ld a, [bc]                                    ; $6dbf: $0a
    and $0f                                       ; $6dc0: $e6 $0f
    call Call_00e_4532                            ; $6dc2: $cd $32 $45
    inc de                                        ; $6dc5: $13
    inc de                                        ; $6dc6: $13
    ld a, [bc]                                    ; $6dc7: $0a
    swap a                                        ; $6dc8: $cb $37
    and $0f                                       ; $6dca: $e6 $0f
    call Call_00e_4532                            ; $6dcc: $cd $32 $45
    inc de                                        ; $6dcf: $13
    ld a, [$c836]                                 ; $6dd0: $fa $36 $c8
    ld h, a                                       ; $6dd3: $67
    rst $18                                       ; $6dd4: $df

    db $0c, $13

    ld h, a                                       ; $6dd7: $67
    ld a, [bc]                                    ; $6dd8: $0a
    and $0f                                       ; $6dd9: $e6 $0f
    sub h                                         ; $6ddb: $94
    call Call_00e_458a                            ; $6ddc: $cd $8a $45
    pop de                                        ; $6ddf: $d1
    pop hl                                        ; $6de0: $e1
    ld a, $40                                     ; $6de1: $3e $40
    add e                                         ; $6de3: $83
    ld e, a                                       ; $6de4: $5f
    jr nc, jr_00e_6de8                            ; $6de5: $30 $01

    inc d                                         ; $6de7: $14

jr_00e_6de8:
    inc bc                                        ; $6de8: $03
    inc l                                         ; $6de9: $2c
    dec h                                         ; $6dea: $25
    jr nz, jr_00e_6dbd                            ; $6deb: $20 $d0

    ret                                           ; $6ded: $c9


Call_00e_6dee:
    push de                                       ; $6dee: $d5
    ld c, $00                                     ; $6def: $0e $00

jr_00e_6df1:
    push hl                                       ; $6df1: $e5
    ld a, [$c836]                                 ; $6df2: $fa $36 $c8
    ld h, a                                       ; $6df5: $67
    rst $18                                       ; $6df6: $df

    db $0c, $13

    add c                                         ; $6df9: $81
    ld c, a                                       ; $6dfa: $4f
    pop hl                                        ; $6dfb: $e1
    inc l                                         ; $6dfc: $2c
    dec h                                         ; $6dfd: $25
    jr nz, jr_00e_6df1                            ; $6dfe: $20 $f1

    pop de                                        ; $6e00: $d1
    ld h, $00                                     ; $6e01: $26 $00
    ld l, c                                       ; $6e03: $69
    ld a, $02                                     ; $6e04: $3e $02
    call Call_00e_4513                            ; $6e06: $cd $13 $45
    ret                                           ; $6e09: $c9


Call_00e_6e0a:
    inc h                                         ; $6e0a: $24
    dec h                                         ; $6e0b: $25
    ret z                                         ; $6e0c: $c8

    push hl                                       ; $6e0d: $e5
    push de                                       ; $6e0e: $d5
    ld e, c                                       ; $6e0f: $59
    ld d, b                                       ; $6e10: $50
    ld bc, $0000                                  ; $6e11: $01 $00 $00

jr_00e_6e14:
    ld a, [de]                                    ; $6e14: $1a
    and $0f                                       ; $6e15: $e6 $0f
    add b                                         ; $6e17: $80
    ld b, a                                       ; $6e18: $47
    ld a, [de]                                    ; $6e19: $1a
    swap a                                        ; $6e1a: $cb $37
    and $0f                                       ; $6e1c: $e6 $0f
    add c                                         ; $6e1e: $81
    ld c, a                                       ; $6e1f: $4f
    inc de                                        ; $6e20: $13
    dec h                                         ; $6e21: $25
    jr nz, jr_00e_6e14                            ; $6e22: $20 $f0

    pop de                                        ; $6e24: $d1
    ld h, $00                                     ; $6e25: $26 $00
    ld l, b                                       ; $6e27: $68
    ld a, $03                                     ; $6e28: $3e $03
    call Call_00e_4513                            ; $6e2a: $cd $13 $45
    inc de                                        ; $6e2d: $13
    inc de                                        ; $6e2e: $13
    ld h, $00                                     ; $6e2f: $26 $00
    ld l, c                                       ; $6e31: $69
    ld a, $02                                     ; $6e32: $3e $02
    call Call_00e_4513                            ; $6e34: $cd $13 $45
    pop hl                                        ; $6e37: $e1
    ld c, $00                                     ; $6e38: $0e $00

jr_00e_6e3a:
    push hl                                       ; $6e3a: $e5
    ld a, [$c836]                                 ; $6e3b: $fa $36 $c8
    ld h, a                                       ; $6e3e: $67
    rst $18                                       ; $6e3f: $df

    db $0c, $13

    add c                                         ; $6e42: $81
    ld c, a                                       ; $6e43: $4f
    pop hl                                        ; $6e44: $e1
    inc l                                         ; $6e45: $2c
    dec h                                         ; $6e46: $25
    jr nz, jr_00e_6e3a                            ; $6e47: $20 $f1

    inc de                                        ; $6e49: $13
    ld a, b                                       ; $6e4a: $78
    sub c                                         ; $6e4b: $91
    call Call_00e_458a                            ; $6e4c: $cd $8a $45
    ret                                           ; $6e4f: $c9


    ld a, [$c4be]                                 ; $6e50: $fa $be $c4
    ld l, a                                       ; $6e53: $6f
    ld de, $c8ac                                  ; $6e54: $11 $ac $c8
    call Call_00e_6edb                            ; $6e57: $cd $db $6e
    ld de, $d708                                  ; $6e5a: $11 $08 $d7
    call Call_00e_458a                            ; $6e5d: $cd $8a $45
    ret                                           ; $6e60: $c9


Call_00e_6e61:
    ld de, $d145                                  ; $6e61: $11 $45 $d1
    ld l, $01                                     ; $6e64: $2e $01
    call Call_00e_6d9e                            ; $6e66: $cd $9e $6d
    ld de, $d445                                  ; $6e69: $11 $45 $d4
    ld l, $0a                                     ; $6e6c: $2e $0a
    call Call_00e_6d9e                            ; $6e6e: $cd $9e $6d
    ld a, [$c480]                                 ; $6e71: $fa $80 $c4
    ld h, a                                       ; $6e74: $67
    ld bc, $c8ac                                  ; $6e75: $01 $ac $c8
    ld de, $d149                                  ; $6e78: $11 $49 $d1
    ld l, $01                                     ; $6e7b: $2e $01
    call Call_00e_6dba                            ; $6e7d: $cd $ba $6d
    ld a, [$c481]                                 ; $6e80: $fa $81 $c4
    ld h, a                                       ; $6e83: $67
    ld bc, $c8b5                                  ; $6e84: $01 $b5 $c8
    ld de, $d449                                  ; $6e87: $11 $49 $d4
    ld l, $0a                                     ; $6e8a: $2e $0a
    call Call_00e_6dba                            ; $6e8c: $cd $ba $6d
    ld de, $d385                                  ; $6e8f: $11 $85 $d3
    ld l, $01                                     ; $6e92: $2e $01
    ld h, $09                                     ; $6e94: $26 $09
    call Call_00e_6dee                            ; $6e96: $cd $ee $6d
    ld de, $d685                                  ; $6e99: $11 $85 $d6
    ld l, $0a                                     ; $6e9c: $2e $0a
    ld h, $09                                     ; $6e9e: $26 $09
    call Call_00e_6dee                            ; $6ea0: $cd $ee $6d
    ld de, $d705                                  ; $6ea3: $11 $05 $d7
    ld l, $01                                     ; $6ea6: $2e $01
    ld h, $12                                     ; $6ea8: $26 $12
    call Call_00e_6dee                            ; $6eaa: $cd $ee $6d
    ld a, [$c480]                                 ; $6ead: $fa $80 $c4
    ld h, a                                       ; $6eb0: $67
    ld bc, $c8ac                                  ; $6eb1: $01 $ac $c8
    ld de, $d388                                  ; $6eb4: $11 $88 $d3
    ld l, $01                                     ; $6eb7: $2e $01
    call Call_00e_6e0a                            ; $6eb9: $cd $0a $6e
    ld a, [$c481]                                 ; $6ebc: $fa $81 $c4
    ld h, a                                       ; $6ebf: $67
    ld bc, $c8b5                                  ; $6ec0: $01 $b5 $c8
    ld de, $d688                                  ; $6ec3: $11 $88 $d6
    ld l, $0a                                     ; $6ec6: $2e $0a
    call Call_00e_6e0a                            ; $6ec8: $cd $0a $6e
    ld a, [$c4be]                                 ; $6ecb: $fa $be $c4
    ld h, a                                       ; $6ece: $67
    ld bc, $c8ac                                  ; $6ecf: $01 $ac $c8
    ld de, $d708                                  ; $6ed2: $11 $08 $d7
    ld l, $01                                     ; $6ed5: $2e $01
    call Call_00e_6e0a                            ; $6ed7: $cd $0a $6e
    ret                                           ; $6eda: $c9


Call_00e_6edb:
    xor a                                         ; $6edb: $af
    inc l                                         ; $6edc: $2c
    dec l                                         ; $6edd: $2d
    ret z                                         ; $6ede: $c8

    push bc                                       ; $6edf: $c5
    push de                                       ; $6ee0: $d5
    push hl                                       ; $6ee1: $e5
    ld b, $00                                     ; $6ee2: $06 $00
    ld c, l                                       ; $6ee4: $4d
    ld a, [$c836]                                 ; $6ee5: $fa $36 $c8
    ld h, a                                       ; $6ee8: $67
    ld l, $01                                     ; $6ee9: $2e $01

jr_00e_6eeb:
    push hl                                       ; $6eeb: $e5
    rst $18                                       ; $6eec: $df
    inc c                                         ; $6eed: $0c
    inc de                                        ; $6eee: $13
    ld h, a                                       ; $6eef: $67
    ld a, [de]                                    ; $6ef0: $1a
    and $0f                                       ; $6ef1: $e6 $0f
    sub h                                         ; $6ef3: $94
    add b                                         ; $6ef4: $80
    ld b, a                                       ; $6ef5: $47
    pop hl                                        ; $6ef6: $e1
    inc de                                        ; $6ef7: $13
    inc l                                         ; $6ef8: $2c
    dec c                                         ; $6ef9: $0d
    jr nz, jr_00e_6eeb                            ; $6efa: $20 $ef

    pop hl                                        ; $6efc: $e1
    pop de                                        ; $6efd: $d1
    pop bc                                        ; $6efe: $c1
    ret                                           ; $6eff: $c9


    ret                                           ; $6f00: $c9


    ld b, c                                       ; $6f01: $41
    rst $38                                       ; $6f02: $ff
    rst $38                                       ; $6f03: $ff
    db $e3                                        ; $6f04: $e3
    ld [c], a                                     ; $6f05: $e2
    nop                                           ; $6f06: $00
    rst $38                                       ; $6f07: $ff
    db $f4                                        ; $6f08: $f4
    add $e1                                       ; $6f09: $c6 $e1
    ld c, d                                       ; $6f0b: $4a
    ld c, d                                       ; $6f0c: $4a
    rst $38                                       ; $6f0d: $ff
    ld c, d                                       ; $6f0e: $4a
    ld c, e                                       ; $6f0f: $4b
    ld c, h                                       ; $6f10: $4c
    ld b, d                                       ; $6f11: $42
    nop                                           ; $6f12: $00
    ld bc, $0302                                  ; $6f13: $01 $02 $03
    ccf                                           ; $6f16: $3f
    inc b                                         ; $6f17: $04
    dec b                                         ; $6f18: $05
    ld b, $07                                     ; $6f19: $06 $07
    sbc [hl]                                      ; $6f1b: $9e
    sbc a                                         ; $6f1c: $9f
    db $ec                                        ; $6f1d: $ec
    pop af                                        ; $6f1e: $f1
    ret nz                                        ; $6f1f: $c0

    rst $30                                       ; $6f20: $f7
    rst $38                                       ; $6f21: $ff
    xor h                                         ; $6f22: $ac
    xor l                                         ; $6f23: $ad
    ld e, d                                       ; $6f24: $5a
    ld c, d                                       ; $6f25: $4a
    ld c, d                                       ; $6f26: $4a
    ld e, e                                       ; $6f27: $5b
    ld e, h                                       ; $6f28: $5c
    ld b, l                                       ; $6f29: $45
    rst $38                                       ; $6f2a: $ff
    db $10                                        ; $6f2b: $10
    ld de, $1312                                  ; $6f2c: $11 $12 $13
    inc d                                         ; $6f2f: $14
    dec d                                         ; $6f30: $15
    ld d, $17                                     ; $6f31: $16 $17
    di                                            ; $6f33: $f3
    ld d, l                                       ; $6f34: $55
    dec l                                         ; $6f35: $2d
    db $ec                                        ; $6f36: $ec
    pop af                                        ; $6f37: $f1
    add b                                         ; $6f38: $80
    push af                                       ; $6f39: $f5
    sbc h                                         ; $6f3a: $9c
    add l                                         ; $6f3b: $85
    cp h                                          ; $6f3c: $bc
    cp l                                          ; $6f3d: $bd
    rst $38                                       ; $6f3e: $ff
    and b                                         ; $6f3f: $a0
    and c                                         ; $6f40: $a1
    and d                                         ; $6f41: $a2
    ld l, e                                       ; $6f42: $6b
    ld l, h                                       ; $6f43: $6c
    and a                                         ; $6f44: $a7
    and a                                         ; $6f45: $a7
    and a                                         ; $6f46: $a7
    dec sp                                        ; $6f47: $3b
    ld h, a                                       ; $6f48: $67
    ld h, [hl]                                    ; $6f49: $66
    ei                                            ; $6f4a: $fb
    ldh [$a7], a                                  ; $6f4b: $e0 $a7
    ld h, a                                       ; $6f4d: $67
    dec a                                         ; $6f4e: $3d
    db $ec                                        ; $6f4f: $ec
    pop af                                        ; $6f50: $f1
    ld b, b                                       ; $6f51: $40
    push af                                       ; $6f52: $f5
    rst $38                                       ; $6f53: $ff
    rrca                                          ; $6f54: $0f
    sub l                                         ; $6f55: $95
    sub [hl]                                      ; $6f56: $96
    sub a                                         ; $6f57: $97
    or b                                          ; $6f58: $b0
    or c                                          ; $6f59: $b1
    or d                                          ; $6f5a: $b2
    jr nc, jr_00e_6fdc                            ; $6f5b: $30 $7f

    ld sp, $b7b7                                  ; $6f5d: $31 $b7 $b7
    or a                                          ; $6f60: $b7
    ld [hl], a                                    ; $6f61: $77
    ld [hl-], a                                   ; $6f62: $32
    inc sp                                        ; $6f63: $33
    ld a, [$f9e1]                                 ; $6f64: $fa $e1 $f9
    dec l                                         ; $6f67: $2d
    db $ec                                        ; $6f68: $ec
    pop af                                        ; $6f69: $f1
    nop                                           ; $6f6a: $00
    push af                                       ; $6f6b: $f5
    dec e                                         ; $6f6c: $1d
    ld l, c                                       ; $6f6d: $69
    ld l, c                                       ; $6f6e: $69
    ld hl, $2368                                  ; $6f6f: $21 $68 $23
    ld l, c                                       ; $6f72: $69
    ld l, c                                       ; $6f73: $69
    db $fd                                        ; $6f74: $fd
    ldh [$fe], a                                  ; $6f75: $e0 $fe
    ldh [$fa], a                                  ; $6f77: $e0 $fa
    db $e3                                        ; $6f79: $e3
    ld e, $ec                                     ; $6f7a: $1e $ec
    pop af                                        ; $6f7c: $f1
    ret nz                                        ; $6f7d: $c0

    push de                                       ; $6f7e: $d5
    cpl                                           ; $6f7f: $2f
    dec c                                         ; $6f80: $0d
    ld l, c                                       ; $6f81: $69
    ld l, c                                       ; $6f82: $69
    ld [hl+], a                                   ; $6f83: $22
    ret nz                                        ; $6f84: $c0

    db $ec                                        ; $6f85: $ec
    ld c, $ec                                     ; $6f86: $0e $ec
    pop af                                        ; $6f88: $f1
    add b                                         ; $6f89: $80
    ld hl, sp+$11                                 ; $6f8a: $f8 $11
    inc hl                                        ; $6f8c: $23
    add b                                         ; $6f8d: $80
    ldh a, [$ec]                                  ; $6f8e: $f0 $ec
    xor $80                                       ; $6f90: $ee $80
    ld hl, sp+$24                                 ; $6f92: $f8 $24
    add b                                         ; $6f94: $80
    ldh a, [$ec]                                  ; $6f95: $f0 $ec
    xor $00                                       ; $6f97: $ee $00
    ld hl, sp+$11                                 ; $6f99: $f8 $11
    dec h                                         ; $6f9b: $25
    nop                                           ; $6f9c: $00
    ldh a, [$ec]                                  ; $6f9d: $f0 $ec
    xor $00                                       ; $6f9f: $ee $00
    ld hl, sp+$26                                 ; $6fa1: $f8 $26
    nop                                           ; $6fa3: $00
    ldh a, [$ec]                                  ; $6fa4: $f0 $ec
    xor $80                                       ; $6fa6: $ee $80

jr_00e_6fa8:
    ret c                                         ; $6fa8: $d8

    pop af                                        ; $6fa9: $f1
    daa                                           ; $6faa: $27
    add b                                         ; $6fab: $80
    ret nc                                        ; $6fac: $d0

    db $ec                                        ; $6fad: $ec
    xor $40                                       ; $6fae: $ee $40
    or l                                          ; $6fb0: $b5
    dec bc                                        ; $6fb1: $0b
    ld l, c                                       ; $6fb2: $69
    ld l, c                                       ; $6fb3: $69

jr_00e_6fb4:
    jr z, jr_00e_6fa8                             ; $6fb4: $28 $f2

    ld b, b                                       ; $6fb6: $40
    call z, $ec0c                                 ; $6fb7: $cc $0c $ec
    pop af                                        ; $6fba: $f1
    nop                                           ; $6fbb: $00
    or l                                          ; $6fbc: $b5
    dec de                                        ; $6fbd: $1b
    ld l, c                                       ; $6fbe: $69
    ld l, c                                       ; $6fbf: $69
    jr jr_00e_6fb4                                ; $6fc0: $18 $f2

    nop                                           ; $6fc2: $00
    call z, $ec1c                                 ; $6fc3: $cc $1c $ec
    pop af                                        ; $6fc6: $f1
    ret nz                                        ; $6fc7: $c0

    sub l                                         ; $6fc8: $95
    dec hl                                        ; $6fc9: $2b
    ld c, l                                       ; $6fca: $4d
    ld c, [hl]                                    ; $6fcb: $4e
    ld c, a                                       ; $6fcc: $4f
    cp $c0                                        ; $6fcd: $fe $c0
    xor h                                         ; $6fcf: $ac
    inc l                                         ; $6fd0: $2c
    dec hl                                        ; $6fd1: $2b
    ld [hl], e                                    ; $6fd2: $73
    ld [hl], h                                    ; $6fd3: $74
    ld [hl], l                                    ; $6fd4: $75
    ld [hl], b                                    ; $6fd5: $70
    ld [hl], c                                    ; $6fd6: $71
    xor c                                         ; $6fd7: $a9
    ld [hl], d                                    ; $6fd8: $72
    ld [hl-], a                                   ; $6fd9: $32
    and e                                         ; $6fda: $a3
    inc l                                         ; $6fdb: $2c

jr_00e_6fdc:
    and e                                         ; $6fdc: $a3
    inc l                                         ; $6fdd: $2c
    add b                                         ; $6fde: $80
    sub l                                         ; $6fdf: $95
    ld l, $d4                                     ; $6fe0: $2e $d4
    rst $28                                       ; $6fe2: $ef
    cpl                                           ; $6fe3: $2f
    push de                                       ; $6fe4: $d5
    ld l, $2c                                     ; $6fe5: $2e $2c
    xor a                                         ; $6fe7: $af
    cpl                                           ; $6fe8: $2f
    ld b, b                                       ; $6fe9: $40
    sub l                                         ; $6fea: $95
    ld a, $00                                     ; $6feb: $3e $00
    xor a                                         ; $6fed: $af
    ccf                                           ; $6fee: $3f
    ld a, $57                                     ; $6fef: $3e $57
    ld l, c                                       ; $6ff1: $69
    ld hl, $2c20                                  ; $6ff2: $21 $20 $2c
    xor h                                         ; $6ff5: $ac
    ccf                                           ; $6ff6: $3f
    nop                                           ; $6ff7: $00
    sub l                                         ; $6ff8: $95
    add hl, de                                    ; $6ff9: $19
    call nc, $a9ef                                ; $6ffa: $d4 $ef $a9
    ld a, [de]                                    ; $6ffd: $1a
    db $ec                                        ; $6ffe: $ec
    ldh [$ec], a                                  ; $6fff: $e0 $ec
    adc l                                         ; $7001: $8d
    ld a, [de]                                    ; $7002: $1a
    ret nz                                        ; $7003: $c0

    ld [hl], l                                    ; $7004: $75
    add hl, hl                                    ; $7005: $29
    call nc, Call_000_2aef                        ; $7006: $d4 $ef $2a
    ld d, h                                       ; $7009: $54
    db $ec                                        ; $700a: $ec
    ldh [$ec], a                                  ; $700b: $e0 $ec
    adc l                                         ; $700d: $8d
    ld a, [hl+]                                   ; $700e: $2a
    add b                                         ; $700f: $80
    ld [hl], l                                    ; $7010: $75
    add hl, sp                                    ; $7011: $39
    call nc, Call_000_3aef                        ; $7012: $d4 $ef $3a
    db $ec                                        ; $7015: $ec
    ldh [$2a], a                                  ; $7016: $e0 $2a
    db $ec                                        ; $7018: $ec
    adc l                                         ; $7019: $8d
    ld a, [hl-]                                   ; $701a: $3a
    ld b, b                                       ; $701b: $40
    ld [hl], l                                    ; $701c: $75
    ld a, b                                       ; $701d: $78
    call nc, Call_00e_79ef                        ; $701e: $d4 $ef $79
    db $ec                                        ; $7021: $ec
    ldh [$ec], a                                  ; $7022: $e0 $ec
    adc l                                         ; $7024: $8d
    sub l                                         ; $7025: $95
    ld a, c                                       ; $7026: $79
    nop                                           ; $7027: $00
    ld [hl], l                                    ; $7028: $75
    adc b                                         ; $7029: $88
    call nc, $89ef                                ; $702a: $d4 $ef $89
    db $ec                                        ; $702d: $ec
    ldh [$ec], a                                  ; $702e: $e0 $ec
    adc l                                         ; $7030: $8d
    adc c                                         ; $7031: $89
    ld c, d                                       ; $7032: $4a
    ret nz                                        ; $7033: $c0

    ld d, l                                       ; $7034: $55
    sbc b                                         ; $7035: $98
    call nc, $99ef                                ; $7036: $d4 $ef $99
    db $ec                                        ; $7039: $ec
    ldh [$ec], a                                  ; $703a: $e0 $ec
    adc l                                         ; $703c: $8d
    sbc c                                         ; $703d: $99
    add b                                         ; $703e: $80
    ld d, l                                       ; $703f: $55
    and l                                         ; $7040: $a5
    xor b                                         ; $7041: $a8
    call nc, $a9ef                                ; $7042: $d4 $ef $a9
    db $ec                                        ; $7045: $ec
    ldh [$ec], a                                  ; $7046: $e0 $ec
    adc l                                         ; $7048: $8d
    xor c                                         ; $7049: $a9
    ld b, b                                       ; $704a: $40
    ld d, l                                       ; $704b: $55
    cp b                                          ; $704c: $b8
    ld d, d                                       ; $704d: $52
    call nc, $b9ef                                ; $704e: $d4 $ef $b9
    db $ec                                        ; $7051: $ec
    ldh [$ec], a                                  ; $7052: $e0 $ec
    adc l                                         ; $7054: $8d
    cp c                                          ; $7055: $b9
    nop                                           ; $7056: $00
    ld d, l                                       ; $7057: $55
    sbc d                                         ; $7058: $9a
    call nc, $ffef                                ; $7059: $d4 $ef $ff
    sbc e                                         ; $705c: $9b
    sbc d                                         ; $705d: $9a
    ld h, b                                       ; $705e: $60
    ld h, c                                       ; $705f: $61
    ld h, d                                       ; $7060: $62
    ld h, e                                       ; $7061: $63
    ld h, h                                       ; $7062: $64
    ld h, l                                       ; $7063: $65
    ld a, d                                       ; $7064: $7a
    ld a, [$9be9]                                 ; $7065: $fa $e9 $9b
    ret nz                                        ; $7068: $c0

    dec [hl]                                      ; $7069: $35
    xor d                                         ; $706a: $aa
    ld e, l                                       ; $706b: $5d
    ld e, [hl]                                    ; $706c: $5e
    ld e, a                                       ; $706d: $5f
    ret nz                                        ; $706e: $c0

    ld c, h                                       ; $706f: $4c
    sbc a                                         ; $7070: $9f
    xor e                                         ; $7071: $ab
    xor d                                         ; $7072: $aa
    ld l, l                                       ; $7073: $6d
    ld l, [hl]                                    ; $7074: $6e
    ld l, a                                       ; $7075: $6f
    db $ec                                        ; $7076: $ec
    db $ed                                        ; $7077: $ed
    add b                                         ; $7078: $80
    dec [hl]                                      ; $7079: $35
    ld a, d                                       ; $707a: $7a
    ld e, [hl]                                    ; $707b: $5e
    sub h                                         ; $707c: $94
    rst $28                                       ; $707d: $ef
    ld a, e                                       ; $707e: $7b
    cp d                                          ; $707f: $ba
    xor [hl]                                      ; $7080: $ae
    xor a                                         ; $7081: $af
    cp $ed                                        ; $7082: $fe $ed
    cp e                                          ; $7084: $bb
    add b                                         ; $7085: $80
    or $00                                        ; $7086: $f6 $00
    sub h                                         ; $7088: $94
    rst $38                                       ; $7089: $ff
    ei                                            ; $708a: $fb
    ld a, [$ff94]                                 ; $708b: $fa $94 $ff
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
    db $10                                        ; $7098: $10
    rst $38                                       ; $7099: $ff
    rst $38                                       ; $709a: $ff
    rst $38                                       ; $709b: $ff
    rst $38                                       ; $709c: $ff
    rst $38                                       ; $709d: $ff
    rst $38                                       ; $709e: $ff
    halt                                          ; $709f: $76
    ld l, e                                       ; $70a0: $6b
    ld b, c                                       ; $70a1: $41
    rst $38                                       ; $70a2: $ff
    ldh a, [$ca]                                  ; $70a3: $f0 $ca
    rst $38                                       ; $70a5: $ff
    ret nz                                        ; $70a6: $c0

    db $eb                                        ; $70a7: $eb
    rst $38                                       ; $70a8: $ff
    ld c, d                                       ; $70a9: $4a
    ld c, e                                       ; $70aa: $4b
    ld c, h                                       ; $70ab: $4c
    ld b, c                                       ; $70ac: $41
    ld b, c                                       ; $70ad: $41
    ld b, d                                       ; $70ae: $42
    nop                                           ; $70af: $00
    ld bc, $02ff                                  ; $70b0: $01 $ff $02
    inc bc                                        ; $70b3: $03
    inc b                                         ; $70b4: $04
    dec b                                         ; $70b5: $05
    ld b, $07                                     ; $70b6: $06 $07
    sbc [hl]                                      ; $70b8: $9e
    sbc a                                         ; $70b9: $9f
    nop                                           ; $70ba: $00
    jp z, $f2ff                                   ; $70bb: $ca $ff $f2

    ld b, a                                       ; $70be: $47
    nop                                           ; $70bf: $00
    nop                                           ; $70c0: $00
    nop                                           ; $70c1: $00
    ld c, c                                       ; $70c2: $49
    ld c, $ff                                     ; $70c3: $0e $ff
    rst $38                                       ; $70c5: $ff
    db $e3                                        ; $70c6: $e3
    ld [c], a                                     ; $70c7: $e2
    add hl, bc                                    ; $70c8: $09
    rst $38                                       ; $70c9: $ff
    db $f4                                        ; $70ca: $f4
    add $e1                                       ; $70cb: $c6 $e1
    dec c                                         ; $70cd: $0d
    rst $38                                       ; $70ce: $ff
    pop hl                                        ; $70cf: $e1
    ld d, b                                       ; $70d0: $50
    sbc $e6                                       ; $70d1: $de $e6
    or h                                          ; $70d3: $b4
    db $e3                                        ; $70d4: $e3
    db $ec                                        ; $70d5: $ec
    db $ed                                        ; $70d6: $ed
    ret nz                                        ; $70d7: $c0

    cp $0a                                        ; $70d8: $fe $0a
    sbc [hl]                                      ; $70da: $9e
    push hl                                       ; $70db: $e5
    ld a, [bc]                                    ; $70dc: $0a
    ret nz                                        ; $70dd: $c0

    rst $20                                       ; $70de: $e7
    add b                                         ; $70df: $80
    db $ec                                        ; $70e0: $ec
    add sp, -$80                                  ; $70e1: $e8 $80
    or $6d                                        ; $70e3: $f6 $6d
    pop af                                        ; $70e5: $f1
    reti                                          ; $70e6: $d9


    rst $38                                       ; $70e7: $ff
    ret nz                                        ; $70e8: $c0

    rst $38                                       ; $70e9: $ff
    ret nz                                        ; $70ea: $c0

    rst $38                                       ; $70eb: $ff
    nop                                           ; $70ec: $00
    db $e3                                        ; $70ed: $e3
    ld [$ff02], sp                                ; $70ee: $08 $02 $ff
    xor $0e                                       ; $70f1: $ee $0e
    db $ec                                        ; $70f3: $ec
    pop af                                        ; $70f4: $f1
    ret nz                                        ; $70f5: $c0

    rst $38                                       ; $70f6: $ff
    ret nz                                        ; $70f7: $c0

    rst $38                                       ; $70f8: $ff
    ret nz                                        ; $70f9: $c0

    rst $38                                       ; $70fa: $ff
    ret nz                                        ; $70fb: $c0

    rst $38                                       ; $70fc: $ff
    ret nz                                        ; $70fd: $c0

    rst $38                                       ; $70fe: $ff
    nop                                           ; $70ff: $00
    ret nz                                        ; $7100: $c0

    rst $38                                       ; $7101: $ff
    ret nz                                        ; $7102: $c0

    rst $38                                       ; $7103: $ff
    ret nz                                        ; $7104: $c0

    rst $38                                       ; $7105: $ff
    ret nz                                        ; $7106: $c0

    rst $38                                       ; $7107: $ff
    ret nz                                        ; $7108: $c0

    rst $38                                       ; $7109: $ff
    ret nz                                        ; $710a: $c0

    rst $38                                       ; $710b: $ff
    ret nz                                        ; $710c: $c0

    rst $38                                       ; $710d: $ff
    ret nz                                        ; $710e: $c0

    rst $38                                       ; $710f: $ff
    nop                                           ; $7110: $00
    ret nz                                        ; $7111: $c0

    rst $38                                       ; $7112: $ff
    ret nz                                        ; $7113: $c0

    rst $38                                       ; $7114: $ff
    ret nz                                        ; $7115: $c0

    rst $38                                       ; $7116: $ff
    ret nz                                        ; $7117: $c0

    ld [$bf80], a                                 ; $7118: $ea $80 $bf
    ld b, b                                       ; $711b: $40
    cp a                                          ; $711c: $bf
    ret nz                                        ; $711d: $c0

    rst $38                                       ; $711e: $ff
    dec l                                         ; $711f: $2d
    add d                                         ; $7120: $82
    dec b                                         ; $7121: $05
    rrca                                          ; $7122: $0f
    db $ed                                        ; $7123: $ed
    ldh a, [rIF]                                  ; $7124: $f0 $0f
    inc l                                         ; $7126: $2c
    rst $28                                       ; $7127: $ef
    reti                                          ; $7128: $d9


    ldh a, [$c0]                                  ; $7129: $f0 $c0
    db $e4                                        ; $712b: $e4
    call nc, $c0f0                                ; $712c: $d4 $f0 $c0
    rst $38                                       ; $712f: $ff
    ld [hl], b                                    ; $7130: $70
    ret nz                                        ; $7131: $c0

    rst $38                                       ; $7132: $ff
    ret nz                                        ; $7133: $c0

    rst $38                                       ; $7134: $ff
    ret nz                                        ; $7135: $c0

    rst $38                                       ; $7136: $ff
    ret nz                                        ; $7137: $c0

    rst $38                                       ; $7138: $ff
    add hl, bc                                    ; $7139: $09
    add hl, bc                                    ; $713a: $09
    inc c                                         ; $713b: $0c
    ld b, b                                       ; $713c: $40
    rst $08                                       ; $713d: $cf
    and c                                         ; $713e: $a1
    inc c                                         ; $713f: $0c
    db $ec                                        ; $7140: $ec
    pop af                                        ; $7141: $f1
    ret nz                                        ; $7142: $c0

    rst $38                                       ; $7143: $ff
    ret nz                                        ; $7144: $c0

    rst $38                                       ; $7145: $ff
    cp h                                          ; $7146: $bc
    ld d, c                                       ; $7147: $51
    dec bc                                        ; $7148: $0b
    ret nz                                        ; $7149: $c0

    xor a                                         ; $714a: $af
    dec bc                                        ; $714b: $0b
    inc d                                         ; $714c: $14
    db $ec                                        ; $714d: $ec
    pop af                                        ; $714e: $f1
    add b                                         ; $714f: $80
    ld d, l                                       ; $7150: $55
    ld a, [bc]                                    ; $7151: $0a
    add b                                         ; $7152: $80
    xor a                                         ; $7153: $af
    ld a, [bc]                                    ; $7154: $0a
    db $ec                                        ; $7155: $ec
    pop af                                        ; $7156: $f1
    ret nz                                        ; $7157: $c0

    rst $38                                       ; $7158: $ff
    ret nz                                        ; $7159: $c0

    rst $38                                       ; $715a: $ff
    nop                                           ; $715b: $00
    ret nz                                        ; $715c: $c0

    rst $38                                       ; $715d: $ff
    ret nz                                        ; $715e: $c0

    db $e4                                        ; $715f: $e4
    cp $f0                                        ; $7160: $fe $f0
    ret nz                                        ; $7162: $c0

    rst $38                                       ; $7163: $ff
    add b                                         ; $7164: $80
    rst $38                                       ; $7165: $ff
    ret nz                                        ; $7166: $c0

    ld a, [c]                                     ; $7167: $f2
    rst $38                                       ; $7168: $ff
    rst $38                                       ; $7169: $ff
    add b                                         ; $716a: $80
    rst $38                                       ; $716b: $ff
    nop                                           ; $716c: $00
    sub h                                         ; $716d: $94
    rst $38                                       ; $716e: $ff
    rst $30                                       ; $716f: $f7
    or $94                                        ; $7170: $f6 $94
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
    add b                                         ; $717d: $80
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    rst $38                                       ; $7180: $ff
    rst $38                                       ; $7181: $ff
    rst $38                                       ; $7182: $ff
    rst $38                                       ; $7183: $ff
    ld d, e                                       ; $7184: $53
    ld l, l                                       ; $7185: $6d
    cp $ef                                        ; $7186: $fe $ef
    jp z, $c0ff                                   ; $7188: $ca $ff $c0

    db $eb                                        ; $718b: $eb
    dec c                                         ; $718c: $0d
    inc bc                                        ; $718d: $03
    dec c                                         ; $718e: $0d
    dec c                                         ; $718f: $0d
    jp z, $c0e8                                   ; $7190: $ca $e8 $c0

    rst $38                                       ; $7193: $ff
    ret nz                                        ; $7194: $c0

    ld c, c                                       ; $7195: $49
    nop                                           ; $7196: $00
    nop                                           ; $7197: $00
    nop                                           ; $7198: $00
    call Call_00e_4373                            ; $7199: $cd $73 $43
    call Call_00e_71c0                            ; $719c: $cd $c0 $71
    ld a, $01                                     ; $719f: $3e $01
    ld hl, $725f                                  ; $71a1: $21 $5f $72
    call Call_000_23e8                            ; $71a4: $cd $e8 $23

jr_00e_71a7:
    ld b, $00                                     ; $71a7: $06 $00
    ldh a, [$94]                                  ; $71a9: $f0 $94
    and $0b                                       ; $71ab: $e6 $0b
    jr nz, jr_00e_71bc                            ; $71ad: $20 $0d

    ld b, $01                                     ; $71af: $06 $01
    ldh a, [$94]                                  ; $71b1: $f0 $94
    and $20                                       ; $71b3: $e6 $20
    jr nz, jr_00e_71bc                            ; $71b5: $20 $05

    call Call_000_2e3b                            ; $71b7: $cd $3b $2e
    jr jr_00e_71a7                                ; $71ba: $18 $eb

jr_00e_71bc:
    rst $08                                       ; $71bc: $cf
    ld e, h                                       ; $71bd: $5c
    ld a, b                                       ; $71be: $78
    ret                                           ; $71bf: $c9


Call_00e_71c0:
    call Call_000_0341                            ; $71c0: $cd $41 $03
    ld a, $01                                     ; $71c3: $3e $01
    ldh [$96], a                                  ; $71c5: $e0 $96
    ldh [rSVBK], a                                ; $71c7: $e0 $70
    ld hl, $5480                                  ; $71c9: $21 $80 $54
    ld de, $d200                                  ; $71cc: $11 $00 $d2
    call Call_000_1f2f                            ; $71cf: $cd $2f $1f
    ld a, $00                                     ; $71d2: $3e $00
    ldh [rVBK], a                                 ; $71d4: $e0 $4f
    ld hl, $d200                                  ; $71d6: $21 $00 $d2
    ld de, $9200                                  ; $71d9: $11 $00 $92
    ld c, $60                                     ; $71dc: $0e $60
    call Call_000_2096                            ; $71de: $cd $96 $20
    ld hl, $d800                                  ; $71e1: $21 $00 $d8
    ld de, $8800                                  ; $71e4: $11 $00 $88
    ld c, $80                                     ; $71e7: $0e $80
    call Call_000_2096                            ; $71e9: $cd $96 $20
    ld a, $01                                     ; $71ec: $3e $01
    ldh [$96], a                                  ; $71ee: $e0 $96
    ldh [rSVBK], a                                ; $71f0: $e0 $70
    ld hl, $5e51                                  ; $71f2: $21 $51 $5e
    ld de, $d000                                  ; $71f5: $11 $00 $d0
    call Call_000_1f2f                            ; $71f8: $cd $2f $1f
    ld a, $01                                     ; $71fb: $3e $01
    ldh [rVBK], a                                 ; $71fd: $e0 $4f
    ld hl, $d000                                  ; $71ff: $21 $00 $d0
    ld de, $9000                                  ; $7202: $11 $00 $90
    ld c, $80                                     ; $7205: $0e $80
    call Call_000_2096                            ; $7207: $cd $96 $20
    ld hl, $d800                                  ; $720a: $21 $00 $d8
    ld de, $8800                                  ; $720d: $11 $00 $88
    ld c, $40                                     ; $7210: $0e $40
    call Call_000_2096                            ; $7212: $cd $96 $20
    ld a, $02                                     ; $7215: $3e $02
    ldh [$96], a                                  ; $7217: $e0 $96
    ldh [rSVBK], a                                ; $7219: $e0 $70
    ld hl, $70c2                                  ; $721b: $21 $c2 $70
    ld de, $d000                                  ; $721e: $11 $00 $d0
    call Call_000_1f2f                            ; $7221: $cd $2f $1f
    ld a, $03                                     ; $7224: $3e $03
    ldh [$96], a                                  ; $7226: $e0 $96
    ldh [rSVBK], a                                ; $7228: $e0 $70
    ld hl, $6f00                                  ; $722a: $21 $00 $6f
    ld de, $d000                                  ; $722d: $11 $00 $d0
    call Call_000_1f2f                            ; $7230: $cd $2f $1f
    ld hl, $68e1                                  ; $7233: $21 $e1 $68
    ld de, $0008                                  ; $7236: $11 $08 $00
    call Call_000_05a8                            ; $7239: $cd $a8 $05
    call Call_00e_42f0                            ; $723c: $cd $f0 $42
    call Call_00e_7377                            ; $723f: $cd $77 $73
    ld a, [$c837]                                 ; $7242: $fa $37 $c8
    cp $0a                                        ; $7245: $fe $0a
    jr c, jr_00e_724e                             ; $7247: $38 $05

    ld a, $0c                                     ; $7249: $3e $0c
    ld [$c323], a                                 ; $724b: $ea $23 $c3

jr_00e_724e:
    ld a, $1e                                     ; $724e: $3e $1e
    ld [$c32c], a                                 ; $7250: $ea $2c $c3
    ld a, $01                                     ; $7253: $3e $01
    rst $18                                       ; $7255: $df
    inc b                                         ; $7256: $04
    dec bc                                        ; $7257: $0b
    rst $18                                       ; $7258: $df
    inc a                                         ; $7259: $3c
    inc b                                         ; $725a: $04
    call Call_000_0371                            ; $725b: $cd $71 $03
    ret                                           ; $725e: $c9


    call Call_00e_443a                            ; $725f: $cd $3a $44
    ld hl, $4036                                  ; $7262: $21 $36 $40
    ld de, $0100                                  ; $7265: $11 $00 $01
    ld bc, $0116                                  ; $7268: $01 $16 $01
    call Call_00e_4643                            ; $726b: $cd $43 $46
    ld a, [$c878]                                 ; $726e: $fa $78 $c8
    cp $01                                        ; $7271: $fe $01
    jr z, jr_00e_729b                             ; $7273: $28 $26

    ld de, $0500                                  ; $7275: $11 $00 $05
    ld hl, $0a80                                  ; $7278: $21 $80 $0a
    ld bc, $0240                                  ; $727b: $01 $40 $02
    call Call_000_27b4                            ; $727e: $cd $b4 $27
    ld de, $1100                                  ; $7281: $11 $00 $11
    call Call_000_27b4                            ; $7284: $cd $b4 $27
    ld de, $0500                                  ; $7287: $11 $00 $05
    ld hl, $1080                                  ; $728a: $21 $80 $10
    ld bc, $0344                                  ; $728d: $01 $44 $03
    call Call_000_27b4                            ; $7290: $cd $b4 $27
    ld de, $1100                                  ; $7293: $11 $00 $11
    call Call_000_27b4                            ; $7296: $cd $b4 $27
    jr jr_00e_72e3                                ; $7299: $18 $48

jr_00e_729b:
    ld de, $0500                                  ; $729b: $11 $00 $05
    ld hl, $09c0                                  ; $729e: $21 $c0 $09
    ld bc, $0240                                  ; $72a1: $01 $40 $02
    call Call_000_27b4                            ; $72a4: $cd $b4 $27
    ld de, $1100                                  ; $72a7: $11 $00 $11
    call Call_000_27b4                            ; $72aa: $cd $b4 $27
    ld de, $0500                                  ; $72ad: $11 $00 $05
    ld hl, $0bc0                                  ; $72b0: $21 $c0 $0b
    ld bc, $0344                                  ; $72b3: $01 $44 $03
    call Call_000_27b4                            ; $72b6: $cd $b4 $27
    ld de, $1100                                  ; $72b9: $11 $00 $11
    call Call_000_27b4                            ; $72bc: $cd $b4 $27
    ld de, $0500                                  ; $72bf: $11 $00 $05
    ld hl, $0fc0                                  ; $72c2: $21 $c0 $0f
    ld bc, $0448                                  ; $72c5: $01 $48 $04
    call Call_000_27b4                            ; $72c8: $cd $b4 $27
    ld de, $1100                                  ; $72cb: $11 $00 $11
    call Call_000_27b4                            ; $72ce: $cd $b4 $27
    ld de, $0500                                  ; $72d1: $11 $00 $05
    ld hl, $11c0                                  ; $72d4: $21 $c0 $11
    ld bc, $054c                                  ; $72d7: $01 $4c $05
    call Call_000_27b4                            ; $72da: $cd $b4 $27
    ld de, $1100                                  ; $72dd: $11 $00 $11
    call Call_000_27b4                            ; $72e0: $cd $b4 $27

jr_00e_72e3:
    ret                                           ; $72e3: $c9


Call_00e_72e4:
    inc h                                         ; $72e4: $24
    dec h                                         ; $72e5: $25
    ret z                                         ; $72e6: $c8

jr_00e_72e7:
    push hl                                       ; $72e7: $e5
    push de                                       ; $72e8: $d5
    ld a, l                                       ; $72e9: $7d
    dec a                                         ; $72ea: $3d
    add $ac                                       ; $72eb: $c6 $ac
    ld c, a                                       ; $72ed: $4f
    adc $c8                                       ; $72ee: $ce $c8
    sub c                                         ; $72f0: $91
    ld b, a                                       ; $72f1: $47
    ld a, [bc]                                    ; $72f2: $0a
    and $0f                                       ; $72f3: $e6 $0f
    call Call_00e_4532                            ; $72f5: $cd $32 $45
    inc de                                        ; $72f8: $13
    inc de                                        ; $72f9: $13
    inc de                                        ; $72fa: $13
    inc de                                        ; $72fb: $13
    ld a, l                                       ; $72fc: $7d
    dec a                                         ; $72fd: $3d
    add $ec                                       ; $72fe: $c6 $ec
    ld c, a                                       ; $7300: $4f
    adc $c8                                       ; $7301: $ce $c8
    sub c                                         ; $7303: $91
    ld b, a                                       ; $7304: $47
    ld a, [bc]                                    ; $7305: $0a
    and $0f                                       ; $7306: $e6 $0f
    call Call_00e_4532                            ; $7308: $cd $32 $45
    pop de                                        ; $730b: $d1
    pop hl                                        ; $730c: $e1
    ld a, $40                                     ; $730d: $3e $40
    add e                                         ; $730f: $83
    ld e, a                                       ; $7310: $5f
    jr nc, jr_00e_7314                            ; $7311: $30 $01

    inc d                                         ; $7313: $14

jr_00e_7314:
    inc bc                                        ; $7314: $03
    inc l                                         ; $7315: $2c
    dec h                                         ; $7316: $25
    jr nz, jr_00e_72e7                            ; $7317: $20 $ce

    ret                                           ; $7319: $c9


Call_00e_731a:
    inc h                                         ; $731a: $24
    dec h                                         ; $731b: $25
    ret z                                         ; $731c: $c8

    push de                                       ; $731d: $d5
    ld bc, $0000                                  ; $731e: $01 $00 $00

jr_00e_7321:
    ld a, l                                       ; $7321: $7d
    dec a                                         ; $7322: $3d
    add $ac                                       ; $7323: $c6 $ac
    ld e, a                                       ; $7325: $5f
    adc $c8                                       ; $7326: $ce $c8
    sub e                                         ; $7328: $93
    ld d, a                                       ; $7329: $57
    ld a, [de]                                    ; $732a: $1a
    and $0f                                       ; $732b: $e6 $0f
    add b                                         ; $732d: $80
    ld b, a                                       ; $732e: $47
    ld a, l                                       ; $732f: $7d
    dec a                                         ; $7330: $3d
    add $ec                                       ; $7331: $c6 $ec
    ld e, a                                       ; $7333: $5f
    adc $c8                                       ; $7334: $ce $c8
    sub e                                         ; $7336: $93
    ld d, a                                       ; $7337: $57
    ld a, [de]                                    ; $7338: $1a
    and $0f                                       ; $7339: $e6 $0f
    add c                                         ; $733b: $81
    ld c, a                                       ; $733c: $4f
    inc l                                         ; $733d: $2c
    dec h                                         ; $733e: $25
    jr nz, jr_00e_7321                            ; $733f: $20 $e0

    pop de                                        ; $7341: $d1
    ld h, $00                                     ; $7342: $26 $00
    ld l, b                                       ; $7344: $68
    ld a, $03                                     ; $7345: $3e $03
    call Call_00e_4513                            ; $7347: $cd $13 $45
    inc de                                        ; $734a: $13
    inc de                                        ; $734b: $13
    inc de                                        ; $734c: $13
    ld h, $00                                     ; $734d: $26 $00
    ld l, c                                       ; $734f: $69
    ld a, $03                                     ; $7350: $3e $03
    call Call_00e_4513                            ; $7352: $cd $13 $45
    ret                                           ; $7355: $c9


    ld a, [$c4be]                                 ; $7356: $fa $be $c4
    ld l, a                                       ; $7359: $6f
    ld de, $c8ac                                  ; $735a: $11 $ac $c8
    call Call_00e_6edb                            ; $735d: $cd $db $6e
    ld de, $d708                                  ; $7360: $11 $08 $d7
    call Call_00e_458a                            ; $7363: $cd $8a $45
    ld a, [$c4be]                                 ; $7366: $fa $be $c4
    ld l, a                                       ; $7369: $6f
    ld de, $c8ec                                  ; $736a: $11 $ec $c8
    call Call_00e_6edb                            ; $736d: $cd $db $6e
    ld de, $d70e                                  ; $7370: $11 $0e $d7
    call Call_00e_458a                            ; $7373: $cd $8a $45
    ret                                           ; $7376: $c9


Call_00e_7377:
    ld de, $d145                                  ; $7377: $11 $45 $d1
    ld l, $01                                     ; $737a: $2e $01
    call Call_00e_6d9e                            ; $737c: $cd $9e $6d
    ld de, $d445                                  ; $737f: $11 $45 $d4
    ld l, $0a                                     ; $7382: $2e $0a
    call Call_00e_6d9e                            ; $7384: $cd $9e $6d
    ld a, [$c480]                                 ; $7387: $fa $80 $c4
    ld h, a                                       ; $738a: $67
    ld de, $d149                                  ; $738b: $11 $49 $d1
    ld l, $01                                     ; $738e: $2e $01
    call Call_00e_72e4                            ; $7390: $cd $e4 $72
    ld a, [$c481]                                 ; $7393: $fa $81 $c4
    ld h, a                                       ; $7396: $67
    ld de, $d449                                  ; $7397: $11 $49 $d4
    ld l, $0a                                     ; $739a: $2e $0a
    call Call_00e_72e4                            ; $739c: $cd $e4 $72
    ld de, $d385                                  ; $739f: $11 $85 $d3
    ld l, $01                                     ; $73a2: $2e $01
    ld h, $09                                     ; $73a4: $26 $09
    call Call_00e_6dee                            ; $73a6: $cd $ee $6d
    ld de, $d685                                  ; $73a9: $11 $85 $d6
    ld l, $0a                                     ; $73ac: $2e $0a
    ld h, $09                                     ; $73ae: $26 $09
    call Call_00e_6dee                            ; $73b0: $cd $ee $6d
    ld de, $d705                                  ; $73b3: $11 $05 $d7
    ld l, $01                                     ; $73b6: $2e $01
    ld h, $12                                     ; $73b8: $26 $12
    call Call_00e_6dee                            ; $73ba: $cd $ee $6d
    ld a, [$c480]                                 ; $73bd: $fa $80 $c4
    ld h, a                                       ; $73c0: $67
    ld de, $d388                                  ; $73c1: $11 $88 $d3
    ld l, $01                                     ; $73c4: $2e $01
    call Call_00e_731a                            ; $73c6: $cd $1a $73
    ld a, [$c481]                                 ; $73c9: $fa $81 $c4
    ld h, a                                       ; $73cc: $67
    ld de, $d688                                  ; $73cd: $11 $88 $d6
    ld l, $0a                                     ; $73d0: $2e $0a
    call Call_00e_731a                            ; $73d2: $cd $1a $73
    ld a, [$c4be]                                 ; $73d5: $fa $be $c4
    ld h, a                                       ; $73d8: $67
    ld de, $d708                                  ; $73d9: $11 $08 $d7
    ld l, $01                                     ; $73dc: $2e $01
    call Call_00e_731a                            ; $73de: $cd $1a $73
    ret                                           ; $73e1: $c9


    nop                                           ; $73e2: $00
    nop                                           ; $73e3: $00
    nop                                           ; $73e4: $00
    nop                                           ; $73e5: $00
    nop                                           ; $73e6: $00
    nop                                           ; $73e7: $00
    nop                                           ; $73e8: $00
    nop                                           ; $73e9: $00
    nop                                           ; $73ea: $00
    nop                                           ; $73eb: $00
    nop                                           ; $73ec: $00
    nop                                           ; $73ed: $00
    nop                                           ; $73ee: $00
    nop                                           ; $73ef: $00
    push bc                                       ; $73f0: $c5
    ld b, c                                       ; $73f1: $41
    rst $38                                       ; $73f2: $ff
    ldh a, [rP1]                                  ; $73f3: $f0 $00
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $20                                       ; $73f7: $e7
    and $c0                                       ; $73f8: $e6 $c0
    pop hl                                        ; $73fa: $e1
    ld c, d                                       ; $73fb: $4a
    ld c, d                                       ; $73fc: $4a
    rst $38                                       ; $73fd: $ff
    ld c, d                                       ; $73fe: $4a
    ld c, e                                       ; $73ff: $4b
    ld c, h                                       ; $7400: $4c
    ld b, d                                       ; $7401: $42
    nop                                           ; $7402: $00
    ld bc, $0302                                  ; $7403: $01 $02 $03
    ccf                                           ; $7406: $3f
    inc b                                         ; $7407: $04
    dec b                                         ; $7408: $05
    ld b, $07                                     ; $7409: $06 $07
    sbc [hl]                                      ; $740b: $9e
    sbc a                                         ; $740c: $9f
    jp z, $c0ff                                   ; $740d: $ca $ff $c0

    jp hl                                         ; $7410: $e9


    rst $38                                       ; $7411: $ff
    xor h                                         ; $7412: $ac
    xor l                                         ; $7413: $ad
    ld e, d                                       ; $7414: $5a
    ld c, d                                       ; $7415: $4a
    ld c, d                                       ; $7416: $4a
    ld e, e                                       ; $7417: $5b
    ld e, h                                       ; $7418: $5c
    ld b, l                                       ; $7419: $45
    rst $38                                       ; $741a: $ff
    db $10                                        ; $741b: $10
    ld de, $1312                                  ; $741c: $11 $12 $13
    inc d                                         ; $741f: $14
    dec d                                         ; $7420: $15
    ld d, $17                                     ; $7421: $16 $17
    di                                            ; $7423: $f3
    ld d, l                                       ; $7424: $55
    dec l                                         ; $7425: $2d
    jp z, $e8ff                                   ; $7426: $ca $ff $e8

    rst $20                                       ; $7429: $e7
    sbc h                                         ; $742a: $9c
    add l                                         ; $742b: $85
    cp h                                          ; $742c: $bc
    cp l                                          ; $742d: $bd
    rst $38                                       ; $742e: $ff
    and b                                         ; $742f: $a0
    and c                                         ; $7430: $a1
    and d                                         ; $7431: $a2
    ld l, e                                       ; $7432: $6b
    ld l, h                                       ; $7433: $6c
    and a                                         ; $7434: $a7
    and a                                         ; $7435: $a7
    and a                                         ; $7436: $a7
    dec sp                                        ; $7437: $3b
    ld h, a                                       ; $7438: $67
    ld h, [hl]                                    ; $7439: $66
    ei                                            ; $743a: $fb
    ldh [$a7], a                                  ; $743b: $e0 $a7
    ld h, a                                       ; $743d: $67
    dec a                                         ; $743e: $3d
    jp z, $e8ff                                   ; $743f: $ca $ff $e8

    rst $20                                       ; $7442: $e7
    rst $38                                       ; $7443: $ff
    rrca                                          ; $7444: $0f
    sub l                                         ; $7445: $95
    sub [hl]                                      ; $7446: $96
    sub a                                         ; $7447: $97
    or b                                          ; $7448: $b0
    or c                                          ; $7449: $b1
    or d                                          ; $744a: $b2
    jr nc, @+$81                                  ; $744b: $30 $7f

    ld sp, $b7b7                                  ; $744d: $31 $b7 $b7
    or a                                          ; $7450: $b7
    ld [hl], a                                    ; $7451: $77
    ld [hl-], a                                   ; $7452: $32
    inc sp                                        ; $7453: $33
    ld a, [$fce1]                                 ; $7454: $fa $e1 $fc
    add b                                         ; $7457: $80
    rst $38                                       ; $7458: $ff
    jp hl                                         ; $7459: $e9


    add sp, $1d                                   ; $745a: $e8 $1d
    ld l, c                                       ; $745c: $69
    ld l, c                                       ; $745d: $69
    ld hl, $6968                                  ; $745e: $21 $68 $69
    sub c                                         ; $7461: $91
    ld l, c                                       ; $7462: $69
    db $fd                                        ; $7463: $fd
    ldh [$fe], a                                  ; $7464: $e0 $fe
    ldh [$fa], a                                  ; $7466: $e0 $fa
    db $e3                                        ; $7468: $e3
    ld e, $ca                                     ; $7469: $1e $ca
    rst $38                                       ; $746b: $ff
    add sp, -$19                                  ; $746c: $e8 $e7
    dec c                                         ; $746e: $0d
    sub a                                         ; $746f: $97
    ld l, c                                       ; $7470: $69
    ld l, c                                       ; $7471: $69
    ld [hl+], a                                   ; $7472: $22
    ret nz                                        ; $7473: $c0

    db $ec                                        ; $7474: $ec
    ld c, $ca                                     ; $7475: $0e $ca
    rst $38                                       ; $7477: $ff
    add b                                         ; $7478: $80
    ld [$2423], a                                 ; $7479: $ea $23 $24
    add b                                         ; $747c: $80
    rst $38                                       ; $747d: $ff
    add b                                         ; $747e: $80
    ld a, [$8024]                                 ; $747f: $fa $24 $80
    rst $38                                       ; $7482: $ff
    nop                                           ; $7483: $00
    ld a, [$8025]                                 ; $7484: $fa $25 $80
    rst $38                                       ; $7487: $ff
    nop                                           ; $7488: $00
    ld a, [$26c9]                                 ; $7489: $fa $c9 $26
    add b                                         ; $748c: $80
    rst $38                                       ; $748d: $ff
    add b                                         ; $748e: $80
    jp c, $8027                                   ; $748f: $da $27 $80

    rst $38                                       ; $7492: $ff
    ld hl, sp-$09                                 ; $7493: $f8 $f7
    dec bc                                        ; $7495: $0b
    ld l, c                                       ; $7496: $69
    bit 5, c                                      ; $7497: $cb $69
    jr z, @-$3e                                   ; $7499: $28 $c0

    db $ec                                        ; $749b: $ec
    inc c                                         ; $749c: $0c
    jp z, $e8ff                                   ; $749d: $ca $ff $e8

    rst $20                                       ; $74a0: $e7
    dec de                                        ; $74a1: $1b
    ld l, c                                       ; $74a2: $69
    bit 5, c                                      ; $74a3: $cb $69
    jr @-$7e                                      ; $74a5: $18 $80

    db $ec                                        ; $74a7: $ec
    inc e                                         ; $74a8: $1c
    jp z, $e8ff                                   ; $74a9: $ca $ff $e8

    rst $20                                       ; $74ac: $e7
    dec hl                                        ; $74ad: $2b
    ld [hl], e                                    ; $74ae: $73
    sbc a                                         ; $74af: $9f
    ld [hl], h                                    ; $74b0: $74
    ld [hl], l                                    ; $74b1: $75
    ld [hl], b                                    ; $74b2: $70
    ld [hl], c                                    ; $74b3: $71
    ld [hl], d                                    ; $74b4: $72
    ld b, [hl]                                    ; $74b5: $46
    and e                                         ; $74b6: $a3
    ld b, b                                       ; $74b7: $40
    and e                                         ; $74b8: $a3
    inc l                                         ; $74b9: $2c
    sub h                                         ; $74ba: $94
    jp z, $e8ff                                   ; $74bb: $ca $ff $e8

    rst $20                                       ; $74be: $e7
    ld l, $40                                     ; $74bf: $2e $40
    xor a                                         ; $74c1: $af
    cpl                                           ; $74c2: $2f
    jp z, $e8ff                                   ; $74c3: $ca $ff $e8

    rst $20                                       ; $74c6: $e7
    ld a, $97                                     ; $74c7: $3e $97
    ld l, c                                       ; $74c9: $69
    ld hl, $c020                                  ; $74ca: $21 $20 $c0
    call z, $ca3f                                 ; $74cd: $cc $3f $ca
    rst $38                                       ; $74d0: $ff
    add sp, -$19                                  ; $74d1: $e8 $e7
    add hl, de                                    ; $74d3: $19
    bit 5, c                                      ; $74d4: $cb $69
    ld hl, $ad00                                  ; $74d6: $21 $00 $ad
    ld a, [de]                                    ; $74d9: $1a
    jp z, $e8ff                                   ; $74da: $ca $ff $e8

    rst $20                                       ; $74dd: $e7
    add hl, hl                                    ; $74de: $29
    ld l, c                                       ; $74df: $69
    push hl                                       ; $74e0: $e5
    ld hl, $ad00                                  ; $74e1: $21 $00 $ad
    ld a, [hl+]                                   ; $74e4: $2a
    jp z, $e8ff                                   ; $74e5: $ca $ff $e8

    rst $20                                       ; $74e8: $e7
    add hl, sp                                    ; $74e9: $39
    ld l, c                                       ; $74ea: $69
    ld hl, $0072                                  ; $74eb: $21 $72 $00
    xor l                                         ; $74ee: $ad
    ld a, [hl-]                                   ; $74ef: $3a
    jp z, $e8ff                                   ; $74f0: $ca $ff $e8

    rst $20                                       ; $74f3: $e7
    ld a, b                                       ; $74f4: $78
    ld l, c                                       ; $74f5: $69
    ld hl, $ad00                                  ; $74f6: $21 $00 $ad
    cp c                                          ; $74f9: $b9
    ld a, c                                       ; $74fa: $79
    jp z, $e8ff                                   ; $74fb: $ca $ff $e8

    rst $20                                       ; $74fe: $e7
    adc b                                         ; $74ff: $88
    ld l, c                                       ; $7500: $69
    ld hl, $ad00                                  ; $7501: $21 $00 $ad
    adc c                                         ; $7504: $89
    ld e, h                                       ; $7505: $5c
    jp z, $e8ff                                   ; $7506: $ca $ff $e8

    rst $20                                       ; $7509: $e7
    sbc b                                         ; $750a: $98
    ld l, c                                       ; $750b: $69
    ld hl, $ad00                                  ; $750c: $21 $00 $ad
    sbc c                                         ; $750f: $99
    jp z, Jump_000_2eff                           ; $7510: $ca $ff $2e

    add sp, -$19                                  ; $7513: $e8 $e7
    xor b                                         ; $7515: $a8
    ld l, c                                       ; $7516: $69
    ld hl, $ad00                                  ; $7517: $21 $00 $ad
    xor c                                         ; $751a: $a9
    jp z, $e8ff                                   ; $751b: $ca $ff $e8

    rst $20                                       ; $751e: $e7
    sub a                                         ; $751f: $97
    cp b                                          ; $7520: $b8
    ld l, c                                       ; $7521: $69
    ld hl, $ad00                                  ; $7522: $21 $00 $ad
    cp c                                          ; $7525: $b9
    jp z, $e8ff                                   ; $7526: $ca $ff $e8

    rst $20                                       ; $7529: $e7
    sbc d                                         ; $752a: $9a
    cp a                                          ; $752b: $bf
    ld h, b                                       ; $752c: $60
    ld h, c                                       ; $752d: $61
    ld h, d                                       ; $752e: $62
    ld h, e                                       ; $752f: $63
    ld h, h                                       ; $7530: $64
    ld h, l                                       ; $7531: $65
    ld a, [$9be9]                                 ; $7532: $fa $e9 $9b
    cp h                                          ; $7535: $bc
    jp z, $e8ff                                   ; $7536: $ca $ff $e8

    rst $20                                       ; $7539: $e7
    xor d                                         ; $753a: $aa
    ld l, l                                       ; $753b: $6d
    ld l, [hl]                                    ; $753c: $6e
    ld l, a                                       ; $753d: $6f
    ld b, b                                       ; $753e: $40
    adc h                                         ; $753f: $8c
    xor e                                         ; $7540: $ab
    ld e, h                                       ; $7541: $5c
    jp z, $e8ff                                   ; $7542: $ca $ff $e8

    rst $20                                       ; $7545: $e7
    cp d                                          ; $7546: $ba
    xor [hl]                                      ; $7547: $ae
    xor a                                         ; $7548: $af
    cp $ed                                        ; $7549: $fe $ed
    cp e                                          ; $754b: $bb
    jp z, Jump_000_00ff                           ; $754c: $ca $ff $00

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
    nop                                           ; $755f: $00
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
    ld [$00e9], a                                 ; $756e: $ea $e9 $00
    nop                                           ; $7571: $00
    nop                                           ; $7572: $00
    ld b, l                                       ; $7573: $45
    ld c, $ff                                     ; $7574: $0e $ff
    ldh a, [$09]                                  ; $7576: $f0 $09
    rst $38                                       ; $7578: $ff
    rst $38                                       ; $7579: $ff
    rst $20                                       ; $757a: $e7
    and $c0                                       ; $757b: $e6 $c0
    pop hl                                        ; $757d: $e1
    dec c                                         ; $757e: $0d
    rst $38                                       ; $757f: $ff
    pop hl                                        ; $7580: $e1
    jr z, @-$34                                   ; $7581: $28 $ca

    and $c0                                       ; $7583: $e6 $c0
    rst $38                                       ; $7585: $ff
    ret nz                                        ; $7586: $c0

    ld a, [c]                                     ; $7587: $f2
    ld a, [bc]                                    ; $7588: $0a
    call nc, $0ae5                                ; $7589: $d4 $e5 $0a
    ret nz                                        ; $758c: $c0

    rst $38                                       ; $758d: $ff
    add b                                         ; $758e: $80
    jp hl                                         ; $758f: $e9


    db $10                                        ; $7590: $10
    db $ed                                        ; $7591: $ed
    rst $38                                       ; $7592: $ff
    ret nz                                        ; $7593: $c0

    rst $38                                       ; $7594: $ff
    ret nz                                        ; $7595: $c0

    rst $38                                       ; $7596: $ff
    ld b, b                                       ; $7597: $40
    rst $30                                       ; $7598: $f7
    ld [$eeff], sp                                ; $7599: $08 $ff $ee
    ret nz                                        ; $759c: $c0

    rst $38                                       ; $759d: $ff
    ret nz                                        ; $759e: $c0

    rst $38                                       ; $759f: $ff
    nop                                           ; $75a0: $00
    rst $38                                       ; $75a1: $ff
    rst $38                                       ; $75a2: $ff
    ret nz                                        ; $75a3: $c0

    rst $38                                       ; $75a4: $ff
    rst $38                                       ; $75a5: $ff
    rst $38                                       ; $75a6: $ff
    ret nz                                        ; $75a7: $c0

    rst $38                                       ; $75a8: $ff
    ret nz                                        ; $75a9: $c0

    rst $38                                       ; $75aa: $ff
    ret nz                                        ; $75ab: $c0

    rst $38                                       ; $75ac: $ff
    ret nz                                        ; $75ad: $c0

    rst $38                                       ; $75ae: $ff
    ret nz                                        ; $75af: $c0

    rst $38                                       ; $75b0: $ff
    nop                                           ; $75b1: $00
    ret nz                                        ; $75b2: $c0

    rst $38                                       ; $75b3: $ff
    ret nz                                        ; $75b4: $c0

    rst $38                                       ; $75b5: $ff
    ret nz                                        ; $75b6: $c0

    rst $38                                       ; $75b7: $ff
    ret nz                                        ; $75b8: $c0

    rst $38                                       ; $75b9: $ff
    ret nz                                        ; $75ba: $c0

    rst $38                                       ; $75bb: $ff
    ret nz                                        ; $75bc: $c0

    rst $38                                       ; $75bd: $ff
    add b                                         ; $75be: $80
    cp a                                          ; $75bf: $bf
    rst $38                                       ; $75c0: $ff
    rst $38                                       ; $75c1: $ff
    jr z, @-$3e                                   ; $75c2: $28 $c0

    rst $38                                       ; $75c4: $ff
    rst $38                                       ; $75c5: $ff
    rst $38                                       ; $75c6: $ff
    db $e3                                        ; $75c7: $e3
    ld [c], a                                     ; $75c8: $e2
    rrca                                          ; $75c9: $0f
    ld b, b                                       ; $75ca: $40
    rst $28                                       ; $75cb: $ef
    rrca                                          ; $75cc: $0f
    jp z, $c0ff                                   ; $75cd: $ca $ff $c0

    rst $38                                       ; $75d0: $ff
    and b                                         ; $75d1: $a0
    rst $38                                       ; $75d2: $ff
    rst $38                                       ; $75d3: $ff
    ret nz                                        ; $75d4: $c0

    rst $38                                       ; $75d5: $ff
    rst $38                                       ; $75d6: $ff
    rst $38                                       ; $75d7: $ff
    ret nz                                        ; $75d8: $c0

    rst $38                                       ; $75d9: $ff
    cp $fd                                        ; $75da: $fe $fd
    inc c                                         ; $75dc: $0c
    ld b, b                                       ; $75dd: $40
    rst $08                                       ; $75de: $cf
    inc c                                         ; $75df: $0c
    ld d, b                                       ; $75e0: $50
    jp z, $c0ff                                   ; $75e1: $ca $ff $c0

    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    db $e4                                        ; $75e7: $e4
    db $e3                                        ; $75e8: $e3
    dec bc                                        ; $75e9: $0b
    ret nz                                        ; $75ea: $c0

    xor a                                         ; $75eb: $af
    dec bc                                        ; $75ec: $0b
    jp z, Jump_000_02ff                           ; $75ed: $ca $ff $02

    add sp, -$19                                  ; $75f0: $e8 $e7
    ld a, [bc]                                    ; $75f2: $0a
    add b                                         ; $75f3: $80
    xor a                                         ; $75f4: $af
    or [hl]                                       ; $75f5: $b6
    ld b, [hl]                                    ; $75f6: $46
    rst $38                                       ; $75f7: $ff
    rst $38                                       ; $75f8: $ff
    ret nz                                        ; $75f9: $c0

    rst $38                                       ; $75fa: $ff
    ret nz                                        ; $75fb: $c0

    cp $ff                                        ; $75fc: $fe $ff
    ldh a, [rP1]                                  ; $75fe: $f0 $00
    jp z, $80ff                                   ; $7600: $ca $ff $80

    rst $38                                       ; $7603: $ff
    rst $38                                       ; $7604: $ff
    rst $38                                       ; $7605: $ff
    add b                                         ; $7606: $80
    rst $38                                       ; $7607: $ff
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
    rst $38                                       ; $760b: $ff
    rst $38                                       ; $760c: $ff
    rst $38                                       ; $760d: $ff
    rst $38                                       ; $760e: $ff
    rst $38                                       ; $760f: $ff
    nop                                           ; $7610: $00
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
    nop                                           ; $7621: $00
    rst $38                                       ; $7622: $ff
    rst $38                                       ; $7623: $ff
    rst $38                                       ; $7624: $ff
    rst $38                                       ; $7625: $ff
    rst $38                                       ; $7626: $ff
    rst $38                                       ; $7627: $ff
    rst $38                                       ; $7628: $ff
    rst $38                                       ; $7629: $ff
    ret nz                                        ; $762a: $c0

    ld b, c                                       ; $762b: $41
    nop                                           ; $762c: $00
    nop                                           ; $762d: $00
    nop                                           ; $762e: $00
    call Call_00e_4373                            ; $762f: $cd $73 $43
    call Call_00e_7656                            ; $7632: $cd $56 $76
    ld a, $01                                     ; $7635: $3e $01
    ld hl, $76f5                                  ; $7637: $21 $f5 $76
    call Call_000_23e8                            ; $763a: $cd $e8 $23

jr_00e_763d:
    ld b, $00                                     ; $763d: $06 $00
    ldh a, [$94]                                  ; $763f: $f0 $94
    and $0b                                       ; $7641: $e6 $0b
    jr nz, jr_00e_7652                            ; $7643: $20 $0d

    ld b, $01                                     ; $7645: $06 $01
    ldh a, [$94]                                  ; $7647: $f0 $94
    and $20                                       ; $7649: $e6 $20
    jr nz, jr_00e_7652                            ; $764b: $20 $05

    call Call_000_2e3b                            ; $764d: $cd $3b $2e
    jr jr_00e_763d                                ; $7650: $18 $eb

jr_00e_7652:
    rst $08                                       ; $7652: $cf
    ld e, h                                       ; $7653: $5c
    ld a, b                                       ; $7654: $78
    ret                                           ; $7655: $c9


Call_00e_7656:
    call Call_000_0341                            ; $7656: $cd $41 $03
    ld a, $01                                     ; $7659: $3e $01
    ldh [$96], a                                  ; $765b: $e0 $96
    ldh [rSVBK], a                                ; $765d: $e0 $70
    ld hl, $5480                                  ; $765f: $21 $80 $54
    ld de, $d200                                  ; $7662: $11 $00 $d2
    call Call_000_1f2f                            ; $7665: $cd $2f $1f
    ld a, $00                                     ; $7668: $3e $00
    ldh [rVBK], a                                 ; $766a: $e0 $4f
    ld hl, $d200                                  ; $766c: $21 $00 $d2
    ld de, $9200                                  ; $766f: $11 $00 $92
    ld c, $60                                     ; $7672: $0e $60
    call Call_000_2096                            ; $7674: $cd $96 $20
    ld hl, $d800                                  ; $7677: $21 $00 $d8
    ld de, $8800                                  ; $767a: $11 $00 $88
    ld c, $80                                     ; $767d: $0e $80
    call Call_000_2096                            ; $767f: $cd $96 $20
    ld a, $01                                     ; $7682: $3e $01
    ldh [$96], a                                  ; $7684: $e0 $96
    ldh [rSVBK], a                                ; $7686: $e0 $70
    ld hl, $5e51                                  ; $7688: $21 $51 $5e
    ld de, $d000                                  ; $768b: $11 $00 $d0
    call Call_000_1f2f                            ; $768e: $cd $2f $1f
    ld a, $01                                     ; $7691: $3e $01
    ldh [rVBK], a                                 ; $7693: $e0 $4f
    ld hl, $d000                                  ; $7695: $21 $00 $d0
    ld de, $9000                                  ; $7698: $11 $00 $90
    ld c, $80                                     ; $769b: $0e $80
    call Call_000_2096                            ; $769d: $cd $96 $20
    ld hl, $d800                                  ; $76a0: $21 $00 $d8
    ld de, $8800                                  ; $76a3: $11 $00 $88
    ld c, $80                                     ; $76a6: $0e $80
    call Call_000_2096                            ; $76a8: $cd $96 $20
    ld a, $02                                     ; $76ab: $3e $02
    ldh [$96], a                                  ; $76ad: $e0 $96
    ldh [rSVBK], a                                ; $76af: $e0 $70
    ld hl, $7573                                  ; $76b1: $21 $73 $75
    ld de, $d000                                  ; $76b4: $11 $00 $d0
    call Call_000_1f2f                            ; $76b7: $cd $2f $1f
    ld a, $03                                     ; $76ba: $3e $03
    ldh [$96], a                                  ; $76bc: $e0 $96
    ldh [rSVBK], a                                ; $76be: $e0 $70
    ld hl, $73f0                                  ; $76c0: $21 $f0 $73
    ld de, $d000                                  ; $76c3: $11 $00 $d0
    call Call_000_1f2f                            ; $76c6: $cd $2f $1f
    ld hl, $68e1                                  ; $76c9: $21 $e1 $68
    ld de, $0008                                  ; $76cc: $11 $08 $00
    call Call_000_05a8                            ; $76cf: $cd $a8 $05
    call Call_00e_42f0                            ; $76d2: $cd $f0 $42
    call Call_00e_7850                            ; $76d5: $cd $50 $78
    ld a, [$c837]                                 ; $76d8: $fa $37 $c8
    cp $0a                                        ; $76db: $fe $0a
    jr c, jr_00e_76e4                             ; $76dd: $38 $05

    ld a, $0a                                     ; $76df: $3e $0a
    ld [$c323], a                                 ; $76e1: $ea $23 $c3

jr_00e_76e4:
    ld a, $1c                                     ; $76e4: $3e $1c
    ld [$c32c], a                                 ; $76e6: $ea $2c $c3
    ld a, $01                                     ; $76e9: $3e $01
    rst $18                                       ; $76eb: $df
    inc b                                         ; $76ec: $04
    dec bc                                        ; $76ed: $0b
    rst $18                                       ; $76ee: $df
    inc a                                         ; $76ef: $3c
    inc b                                         ; $76f0: $04
    call Call_000_0371                            ; $76f1: $cd $71 $03
    ret                                           ; $76f4: $c9


    call Call_00e_443a                            ; $76f5: $cd $3a $44
    ld hl, $4036                                  ; $76f8: $21 $36 $40
    ld de, $0100                                  ; $76fb: $11 $00 $01
    ld bc, $0116                                  ; $76fe: $01 $16 $01
    call Call_00e_4643                            ; $7701: $cd $43 $46
    ld a, [$c878]                                 ; $7704: $fa $78 $c8
    cp $01                                        ; $7707: $fe $01
    jr z, jr_00e_7731                             ; $7709: $28 $26

    ld de, $0500                                  ; $770b: $11 $00 $05
    ld hl, $0a80                                  ; $770e: $21 $80 $0a
    ld bc, $0240                                  ; $7711: $01 $40 $02
    call Call_000_27b4                            ; $7714: $cd $b4 $27
    ld de, $1000                                  ; $7717: $11 $00 $10
    call Call_000_27b4                            ; $771a: $cd $b4 $27
    ld de, $0500                                  ; $771d: $11 $00 $05
    ld hl, $1080                                  ; $7720: $21 $80 $10
    ld bc, $0344                                  ; $7723: $01 $44 $03
    call Call_000_27b4                            ; $7726: $cd $b4 $27
    ld de, $1000                                  ; $7729: $11 $00 $10
    call Call_000_27b4                            ; $772c: $cd $b4 $27
    jr jr_00e_7779                                ; $772f: $18 $48

jr_00e_7731:
    ld de, $0500                                  ; $7731: $11 $00 $05
    ld hl, $09c0                                  ; $7734: $21 $c0 $09
    ld bc, $0240                                  ; $7737: $01 $40 $02
    call Call_000_27b4                            ; $773a: $cd $b4 $27
    ld de, $1000                                  ; $773d: $11 $00 $10
    call Call_000_27b4                            ; $7740: $cd $b4 $27
    ld de, $0500                                  ; $7743: $11 $00 $05
    ld hl, $0bc0                                  ; $7746: $21 $c0 $0b
    ld bc, $0344                                  ; $7749: $01 $44 $03
    call Call_000_27b4                            ; $774c: $cd $b4 $27
    ld de, $1000                                  ; $774f: $11 $00 $10
    call Call_000_27b4                            ; $7752: $cd $b4 $27
    ld de, $0500                                  ; $7755: $11 $00 $05
    ld hl, $0fc0                                  ; $7758: $21 $c0 $0f
    ld bc, $0448                                  ; $775b: $01 $48 $04
    call Call_000_27b4                            ; $775e: $cd $b4 $27
    ld de, $1000                                  ; $7761: $11 $00 $10
    call Call_000_27b4                            ; $7764: $cd $b4 $27
    ld de, $0500                                  ; $7767: $11 $00 $05
    ld hl, $11c0                                  ; $776a: $21 $c0 $11
    ld bc, $054c                                  ; $776d: $01 $4c $05
    call Call_000_27b4                            ; $7770: $cd $b4 $27
    ld de, $1000                                  ; $7773: $11 $00 $10
    call Call_000_27b4                            ; $7776: $cd $b4 $27

jr_00e_7779:
    ret                                           ; $7779: $c9


Call_00e_777a:
    ld hl, $c484                                  ; $777a: $21 $84 $c4
    xor a                                         ; $777d: $af
    ld [hl+], a                                   ; $777e: $22
    ld de, $d14a                                  ; $777f: $11 $4a $d1
    ld a, [$c4be]                                 ; $7782: $fa $be $c4
    and a                                         ; $7785: $a7
    jr z, jr_00e_7803                             ; $7786: $28 $7b

    ld h, a                                       ; $7788: $67
    ld l, $01                                     ; $7789: $2e $01

jr_00e_778b:
    push hl                                       ; $778b: $e5
    push de                                       ; $778c: $d5
    ld a, l                                       ; $778d: $7d
    dec a                                         ; $778e: $3d
    add $ac                                       ; $778f: $c6 $ac
    ld c, a                                       ; $7791: $4f
    adc $c8                                       ; $7792: $ce $c8
    sub c                                         ; $7794: $91
    ld b, a                                       ; $7795: $47
    ld a, [bc]                                    ; $7796: $0a
    and $0f                                       ; $7797: $e6 $0f
    ld h, a                                       ; $7799: $67
    ld a, l                                       ; $779a: $7d
    dec a                                         ; $779b: $3d
    add $ec                                       ; $779c: $c6 $ec
    ld c, a                                       ; $779e: $4f
    adc $c8                                       ; $779f: $ce $c8
    sub c                                         ; $77a1: $91
    ld b, a                                       ; $77a2: $47
    ld a, [bc]                                    ; $77a3: $0a
    and $0f                                       ; $77a4: $e6 $0f
    cp h                                          ; $77a6: $bc
    jr c, jr_00e_77d5                             ; $77a7: $38 $2c

    jr nz, jr_00e_77be                            ; $77a9: $20 $13

    ld a, $7d                                     ; $77ab: $3e $7d
    call Call_00e_447c                            ; $77ad: $cd $7c $44
    ld a, $05                                     ; $77b0: $3e $05
    add e                                         ; $77b2: $83
    ld e, a                                       ; $77b3: $5f
    jr nc, jr_00e_77b7                            ; $77b4: $30 $01

    inc d                                         ; $77b6: $14

jr_00e_77b7:
    ld a, $7d                                     ; $77b7: $3e $7d
    call Call_00e_447c                            ; $77b9: $cd $7c $44
    jr jr_00e_77ea                                ; $77bc: $18 $2c

jr_00e_77be:
    ld hl, $c484                                  ; $77be: $21 $84 $c4
    inc [hl]                                      ; $77c1: $34
    ld a, $7e                                     ; $77c2: $3e $7e
    call Call_00e_447c                            ; $77c4: $cd $7c $44
    ld a, $05                                     ; $77c7: $3e $05
    add e                                         ; $77c9: $83
    ld e, a                                       ; $77ca: $5f
    jr nc, jr_00e_77ce                            ; $77cb: $30 $01

    inc d                                         ; $77cd: $14

jr_00e_77ce:
    ld a, $7f                                     ; $77ce: $3e $7f
    call Call_00e_447c                            ; $77d0: $cd $7c $44
    jr jr_00e_77ea                                ; $77d3: $18 $15

jr_00e_77d5:
    ld hl, $c484                                  ; $77d5: $21 $84 $c4
    dec [hl]                                      ; $77d8: $35
    ld a, $7f                                     ; $77d9: $3e $7f
    call Call_00e_447c                            ; $77db: $cd $7c $44
    ld a, $05                                     ; $77de: $3e $05
    add e                                         ; $77e0: $83
    ld e, a                                       ; $77e1: $5f
    jr nc, jr_00e_77e5                            ; $77e2: $30 $01

    inc d                                         ; $77e4: $14

jr_00e_77e5:
    ld a, $7e                                     ; $77e5: $3e $7e
    call Call_00e_447c                            ; $77e7: $cd $7c $44

jr_00e_77ea:
    pop de                                        ; $77ea: $d1
    ld a, $40                                     ; $77eb: $3e $40
    add e                                         ; $77ed: $83
    ld e, a                                       ; $77ee: $5f
    jr nc, jr_00e_77f2                            ; $77ef: $30 $01

    inc d                                         ; $77f1: $14

jr_00e_77f2:
    pop hl                                        ; $77f2: $e1
    ld a, l                                       ; $77f3: $7d
    cp $09                                        ; $77f4: $fe $09
    jr nz, jr_00e_77ff                            ; $77f6: $20 $07

    ld a, $80                                     ; $77f8: $3e $80
    add e                                         ; $77fa: $83
    ld e, a                                       ; $77fb: $5f
    jr nc, jr_00e_77ff                            ; $77fc: $30 $01

    inc d                                         ; $77fe: $14

jr_00e_77ff:
    inc l                                         ; $77ff: $2c
    dec h                                         ; $7800: $25
    jr nz, jr_00e_778b                            ; $7801: $20 $88

jr_00e_7803:
    ret                                           ; $7803: $c9


Call_00e_7804:
    ld de, $d687                                  ; $7804: $11 $87 $d6
    ld a, [$c484]                                 ; $7807: $fa $84 $c4
    and a                                         ; $780a: $a7
    jr z, jr_00e_783f                             ; $780b: $28 $32

    bit 7, a                                      ; $780d: $cb $7f
    jr nz, jr_00e_7827                            ; $780f: $20 $16

    inc de                                        ; $7811: $13
    inc de                                        ; $7812: $13
    call Call_00e_4532                            ; $7813: $cd $32 $45
    ld hl, $0120                                  ; $7816: $21 $20 $01
    call Call_00e_44f8                            ; $7819: $cd $f8 $44
    call Call_00e_4532                            ; $781c: $cd $32 $45
    ld hl, $0122                                  ; $781f: $21 $22 $01
    call Call_00e_44f8                            ; $7822: $cd $f8 $44
    jr jr_00e_784f                                ; $7825: $18 $28

jr_00e_7827:
    cpl                                           ; $7827: $2f
    inc a                                         ; $7828: $3c
    call Call_00e_4532                            ; $7829: $cd $32 $45
    ld hl, $0122                                  ; $782c: $21 $22 $01
    call Call_00e_44f8                            ; $782f: $cd $f8 $44
    inc de                                        ; $7832: $13
    inc de                                        ; $7833: $13
    call Call_00e_4532                            ; $7834: $cd $32 $45
    ld hl, $0120                                  ; $7837: $21 $20 $01
    call Call_00e_44f8                            ; $783a: $cd $f8 $44
    jr jr_00e_784f                                ; $783d: $18 $10

jr_00e_783f:
    inc de                                        ; $783f: $13
    inc de                                        ; $7840: $13
    ld hl, $0121                                  ; $7841: $21 $21 $01
    call Call_00e_44f8                            ; $7844: $cd $f8 $44
    inc de                                        ; $7847: $13
    inc de                                        ; $7848: $13
    ld hl, $0121                                  ; $7849: $21 $21 $01
    call Call_00e_44f8                            ; $784c: $cd $f8 $44

jr_00e_784f:
    ret                                           ; $784f: $c9


Call_00e_7850:
    ld de, $d145                                  ; $7850: $11 $45 $d1
    ld l, $01                                     ; $7853: $2e $01
    call Call_00e_6d9e                            ; $7855: $cd $9e $6d
    ld de, $d405                                  ; $7858: $11 $05 $d4
    ld l, $0a                                     ; $785b: $2e $0a
    call Call_00e_6d9e                            ; $785d: $cd $9e $6d
    ld de, $d685                                  ; $7860: $11 $85 $d6
    ld l, $01                                     ; $7863: $2e $01
    ld h, $12                                     ; $7865: $26 $12
    call Call_00e_6dee                            ; $7867: $cd $ee $6d
    call Call_00e_777a                            ; $786a: $cd $7a $77
    call Call_00e_7804                            ; $786d: $cd $04 $78
    ret                                           ; $7870: $c9


Call_00e_7871:
    push bc                                       ; $7871: $c5
    push hl                                       ; $7872: $e5
    ld c, $00                                     ; $7873: $0e $00

jr_00e_7875:
    ld a, [hl+]                                   ; $7875: $2a
    cp $96                                        ; $7876: $fe $96
    jr z, jr_00e_7883                             ; $7878: $28 $09

    inc hl                                        ; $787a: $23
    ld a, [hl+]                                   ; $787b: $2a
    inc hl                                        ; $787c: $23
    and a                                         ; $787d: $a7
    jr z, jr_00e_7883                             ; $787e: $28 $03

    inc c                                         ; $7880: $0c
    jr jr_00e_7875                                ; $7881: $18 $f2

jr_00e_7883:
    ld a, c                                       ; $7883: $79
    pop hl                                        ; $7884: $e1
    pop bc                                        ; $7885: $c1
    ret                                           ; $7886: $c9


Call_00e_7887:
    call Call_00e_788d                            ; $7887: $cd $8d $78
    and $7f                                       ; $788a: $e6 $7f
    ret                                           ; $788c: $c9


Call_00e_788d:
    push bc                                       ; $788d: $c5
    push hl                                       ; $788e: $e5
    ldh a, [$96]                                  ; $788f: $f0 $96
    push af                                       ; $7891: $f5
    ld a, $06                                     ; $7892: $3e $06
    ldh [$96], a                                  ; $7894: $e0 $96
    ldh [rSVBK], a                                ; $7896: $e0 $70
    ld hl, $d800                                  ; $7898: $21 $00 $d8
    ld c, $00                                     ; $789b: $0e $00

jr_00e_789d:
    ld a, [hl+]                                   ; $789d: $2a
    cp $96                                        ; $789e: $fe $96
    jr z, jr_00e_78ab                             ; $78a0: $28 $09

    inc hl                                        ; $78a2: $23
    ld a, [hl+]                                   ; $78a3: $2a
    ld b, a                                       ; $78a4: $47
    ld a, [hl+]                                   ; $78a5: $2a
    ld c, a                                       ; $78a6: $4f
    ld a, b                                       ; $78a7: $78
    and a                                         ; $78a8: $a7
    jr nz, jr_00e_789d                            ; $78a9: $20 $f2

jr_00e_78ab:
    pop af                                        ; $78ab: $f1
    ldh [$96], a                                  ; $78ac: $e0 $96
    ldh [rSVBK], a                                ; $78ae: $e0 $70
    ld a, c                                       ; $78b0: $79
    pop hl                                        ; $78b1: $e1
    pop bc                                        ; $78b2: $c1
    ret                                           ; $78b3: $c9


Call_00e_78b4:
    push af                                       ; $78b4: $f5
    push bc                                       ; $78b5: $c5
    push de                                       ; $78b6: $d5
    push hl                                       ; $78b7: $e5
    ldh a, [$96]                                  ; $78b8: $f0 $96
    push af                                       ; $78ba: $f5
    ld a, [$c837]                                 ; $78bb: $fa $37 $c8
    ld b, a                                       ; $78be: $47
    and a                                         ; $78bf: $a7
    jr z, jr_00e_78c9                             ; $78c0: $28 $07

    ld a, [$c4bd]                                 ; $78c2: $fa $bd $c4
    and a                                         ; $78c5: $a7
    jr nz, jr_00e_78c9                            ; $78c6: $20 $01

    dec b                                         ; $78c8: $05

jr_00e_78c9:
    ld a, b                                       ; $78c9: $78
    ld [$c4be], a                                 ; $78ca: $ea $be $c4
    ld a, $06                                     ; $78cd: $3e $06
    ldh [$96], a                                  ; $78cf: $e0 $96
    ldh [rSVBK], a                                ; $78d1: $e0 $70
    add sp, -$74                                  ; $78d3: $e8 $8c
    ld hl, sp+$00                                 ; $78d5: $f8 $00
    ld e, l                                       ; $78d7: $5d
    ld d, h                                       ; $78d8: $54
    ld hl, $d800                                  ; $78d9: $21 $00 $d8
    rst $18                                       ; $78dc: $df
    ld [bc], a                                    ; $78dd: $02
    inc a                                         ; $78de: $3c
    ld hl, $d800                                  ; $78df: $21 $00 $d8
    push de                                       ; $78e2: $d5
    call Call_00e_790a                            ; $78e3: $cd $0a $79
    pop hl                                        ; $78e6: $e1
    push hl                                       ; $78e7: $e5
    call Call_00e_7950                            ; $78e8: $cd $50 $79
    pop hl                                        ; $78eb: $e1
    ld de, $d800                                  ; $78ec: $11 $00 $d8
    call Call_00e_79bd                            ; $78ef: $cd $bd $79
    ld hl, $d800                                  ; $78f2: $21 $00 $d8
    call Call_00e_7a1c                            ; $78f5: $cd $1c $7a
    ld hl, $d800                                  ; $78f8: $21 $00 $d8
    call Call_00e_7a36                            ; $78fb: $cd $36 $7a
    add sp, $74                                   ; $78fe: $e8 $74
    pop af                                        ; $7900: $f1
    ldh [$96], a                                  ; $7901: $e0 $96
    ldh [rSVBK], a                                ; $7903: $e0 $70
    pop hl                                        ; $7905: $e1
    pop de                                        ; $7906: $d1
    pop bc                                        ; $7907: $c1
    pop af                                        ; $7908: $f1
    ret                                           ; $7909: $c9


Call_00e_790a:
    ld c, $1c                                     ; $790a: $0e $1c
    ld a, $37                                     ; $790c: $3e $37
    add l                                         ; $790e: $85
    ld l, a                                       ; $790f: $6f
    jr nc, jr_00e_7913                            ; $7910: $30 $01

    inc h                                         ; $7912: $24

jr_00e_7913:
    ld a, [hl-]                                   ; $7913: $3a
    ld [de], a                                    ; $7914: $12
    inc de                                        ; $7915: $13
    ld a, [hl-]                                   ; $7916: $3a
    ld [de], a                                    ; $7917: $12
    inc de                                        ; $7918: $13
    ld a, c                                       ; $7919: $79
    cp $1c                                        ; $791a: $fe $1c
    jr z, jr_00e_7928                             ; $791c: $28 $0a

    cp $1b                                        ; $791e: $fe $1b
    jr z, jr_00e_7941                             ; $7920: $28 $1f

    ld a, $80                                     ; $7922: $3e $80
    ld [de], a                                    ; $7924: $12
    inc de                                        ; $7925: $13
    jr jr_00e_7948                                ; $7926: $18 $20

jr_00e_7928:
    push de                                       ; $7928: $d5
    push hl                                       ; $7929: $e5
    ld a, [$c4be]                                 ; $792a: $fa $be $c4
    ld l, a                                       ; $792d: $6f
    ld de, $c8ac                                  ; $792e: $11 $ac $c8
    call Call_00e_6edb                            ; $7931: $cd $db $6e
    pop hl                                        ; $7934: $e1
    pop de                                        ; $7935: $d1
    dec de                                        ; $7936: $1b
    dec de                                        ; $7937: $1b
    ld [de], a                                    ; $7938: $12
    inc de                                        ; $7939: $13
    inc de                                        ; $793a: $13
    ld a, $00                                     ; $793b: $3e $00
    ld [de], a                                    ; $793d: $12
    inc de                                        ; $793e: $13
    jr jr_00e_7948                                ; $793f: $18 $07

jr_00e_7941:
    ld a, [$c836]                                 ; $7941: $fa $36 $c8
    add $03                                       ; $7944: $c6 $03
    ld [de], a                                    ; $7946: $12
    inc de                                        ; $7947: $13

jr_00e_7948:
    inc de                                        ; $7948: $13
    dec c                                         ; $7949: $0d
    jr nz, jr_00e_7913                            ; $794a: $20 $c7

    ld a, $96                                     ; $794c: $3e $96
    ld [de], a                                    ; $794e: $12
    ret                                           ; $794f: $c9


Call_00e_7950:
    ldh a, [$96]                                  ; $7950: $f0 $96
    push af                                       ; $7952: $f5
    ld a, $05                                     ; $7953: $3e $05
    ldh [$96], a                                  ; $7955: $e0 $96
    ldh [rSVBK], a                                ; $7957: $e0 $70
    push hl                                       ; $7959: $e5
    ld a, [$c810]                                 ; $795a: $fa $10 $c8
    ld hl, $0043                                  ; $795d: $21 $43 $00
    add l                                         ; $7960: $85
    ld l, a                                       ; $7961: $6f
    jr nc, jr_00e_7965                            ; $7962: $30 $01

    inc h                                         ; $7964: $24

jr_00e_7965:
    ld de, $df00                                  ; $7965: $11 $00 $df
    rst $18                                       ; $7968: $df
    ld e, h                                       ; $7969: $5c
    dec b                                         ; $796a: $05
    pop hl                                        ; $796b: $e1
    ld bc, $0000                                  ; $796c: $01 $00 $00
    ld c, $00                                     ; $796f: $0e $00

jr_00e_7971:
    ld a, [hl]                                    ; $7971: $7e
    cp $96                                        ; $7972: $fe $96
    jr z, jr_00e_79b7                             ; $7974: $28 $41

    inc hl                                        ; $7976: $23
    inc hl                                        ; $7977: $23
    ld a, [hl+]                                   ; $7978: $2a
    inc hl                                        ; $7979: $23
    cp $80                                        ; $797a: $fe $80
    jr nz, jr_00e_7971                            ; $797c: $20 $f3

    push hl                                       ; $797e: $e5
    ld hl, $4633                                  ; $797f: $21 $33 $46
    ld a, [$c836]                                 ; $7982: $fa $36 $c8
    add a                                         ; $7985: $87
    add l                                         ; $7986: $85
    ld l, a                                       ; $7987: $6f
    jr nc, jr_00e_798b                            ; $7988: $30 $01

    inc h                                         ; $798a: $24

jr_00e_798b:
    ld a, [hl+]                                   ; $798b: $2a
    ld h, [hl]                                    ; $798c: $66
    ld l, a                                       ; $798d: $6f
    ld a, b                                       ; $798e: $78
    add l                                         ; $798f: $85
    ld l, a                                       ; $7990: $6f
    jr nc, jr_00e_7994                            ; $7991: $30 $01

    inc h                                         ; $7993: $24

jr_00e_7994:
    ld de, $df10                                  ; $7994: $11 $10 $df
    rst $18                                       ; $7997: $df
    ld e, h                                       ; $7998: $5c
    dec b                                         ; $7999: $05
    ld hl, $df00                                  ; $799a: $21 $00 $df
    ld de, $df10                                  ; $799d: $11 $10 $df

jr_00e_79a0:
    ld a, [de]                                    ; $79a0: $1a
    cp [hl]                                       ; $79a1: $be
    jr nz, jr_00e_79ab                            ; $79a2: $20 $07

    inc hl                                        ; $79a4: $23
    inc de                                        ; $79a5: $13
    cp $00                                        ; $79a6: $fe $00
    jr nz, jr_00e_79a0                            ; $79a8: $20 $f6

    inc c                                         ; $79aa: $0c

jr_00e_79ab:
    pop hl                                        ; $79ab: $e1
    ld a, c                                       ; $79ac: $79
    or $80                                        ; $79ad: $f6 $80
    dec hl                                        ; $79af: $2b
    dec hl                                        ; $79b0: $2b
    ld [hl+], a                                   ; $79b1: $22
    inc hl                                        ; $79b2: $23
    inc c                                         ; $79b3: $0c
    inc b                                         ; $79b4: $04
    jr jr_00e_7971                                ; $79b5: $18 $ba

jr_00e_79b7:
    pop af                                        ; $79b7: $f1
    ldh [$96], a                                  ; $79b8: $e0 $96
    ldh [rSVBK], a                                ; $79ba: $e0 $70
    ret                                           ; $79bc: $c9


Call_00e_79bd:
    ld a, h                                       ; $79bd: $7c
    ld h, d                                       ; $79be: $62
    ld d, a                                       ; $79bf: $57
    ld a, l                                       ; $79c0: $7d
    ld l, e                                       ; $79c1: $6b
    ld e, a                                       ; $79c2: $5f
    ld [hl], $96                                  ; $79c3: $36 $96

jr_00e_79c5:
    ld a, [de]                                    ; $79c5: $1a
    cp $96                                        ; $79c6: $fe $96
    jr z, jr_00e_7a1b                             ; $79c8: $28 $51

    push hl                                       ; $79ca: $e5

jr_00e_79cb:
    ld a, [hl]                                    ; $79cb: $7e
    cp $96                                        ; $79cc: $fe $96
    jr z, jr_00e_7a0b                             ; $79ce: $28 $3b

    ld a, [hl]                                    ; $79d0: $7e
    add $36                                       ; $79d1: $c6 $36
    ld b, a                                       ; $79d3: $47
    ld a, [de]                                    ; $79d4: $1a
    add $36                                       ; $79d5: $c6 $36
    cp b                                          ; $79d7: $b8
    jr c, jr_00e_79f5                             ; $79d8: $38 $1b

    jr z, jr_00e_79e2                             ; $79da: $28 $06

    inc hl                                        ; $79dc: $23
    inc hl                                        ; $79dd: $23
    inc hl                                        ; $79de: $23
    inc hl                                        ; $79df: $23
    jr jr_00e_79cb                                ; $79e0: $18 $e9

jr_00e_79e2:
    inc hl                                        ; $79e2: $23
    inc hl                                        ; $79e3: $23
    ld b, [hl]                                    ; $79e4: $46
    dec hl                                        ; $79e5: $2b
    dec hl                                        ; $79e6: $2b
    inc de                                        ; $79e7: $13
    inc de                                        ; $79e8: $13
    ld a, [de]                                    ; $79e9: $1a
    dec de                                        ; $79ea: $1b
    dec de                                        ; $79eb: $1b
    cp b                                          ; $79ec: $b8
    jr c, jr_00e_79f5                             ; $79ed: $38 $06

Call_00e_79ef:
    inc hl                                        ; $79ef: $23
    inc hl                                        ; $79f0: $23
    inc hl                                        ; $79f1: $23
    inc hl                                        ; $79f2: $23
    jr jr_00e_79cb                                ; $79f3: $18 $d6

jr_00e_79f5:
    push de                                       ; $79f5: $d5
    ld a, [de]                                    ; $79f6: $1a
    ld b, [hl]                                    ; $79f7: $46
    ld [hl+], a                                   ; $79f8: $22
    ld a, b                                       ; $79f9: $78
    ld [de], a                                    ; $79fa: $12
    inc de                                        ; $79fb: $13
    ld a, [de]                                    ; $79fc: $1a
    ld b, [hl]                                    ; $79fd: $46
    ld [hl+], a                                   ; $79fe: $22
    ld a, b                                       ; $79ff: $78
    ld [de], a                                    ; $7a00: $12
    inc de                                        ; $7a01: $13
    ld a, [de]                                    ; $7a02: $1a
    ld b, [hl]                                    ; $7a03: $46
    ld [hl+], a                                   ; $7a04: $22
    ld a, b                                       ; $7a05: $78
    ld [de], a                                    ; $7a06: $12
    inc hl                                        ; $7a07: $23
    pop de                                        ; $7a08: $d1
    jr jr_00e_79cb                                ; $7a09: $18 $c0

jr_00e_7a0b:
    ld a, [de]                                    ; $7a0b: $1a
    inc de                                        ; $7a0c: $13
    ld [hl+], a                                   ; $7a0d: $22
    ld a, [de]                                    ; $7a0e: $1a
    inc de                                        ; $7a0f: $13
    ld [hl+], a                                   ; $7a10: $22
    ld a, [de]                                    ; $7a11: $1a
    inc de                                        ; $7a12: $13
    ld [hl+], a                                   ; $7a13: $22
    inc de                                        ; $7a14: $13
    inc hl                                        ; $7a15: $23
    ld [hl], $96                                  ; $7a16: $36 $96
    pop hl                                        ; $7a18: $e1
    jr jr_00e_79c5                                ; $7a19: $18 $aa

jr_00e_7a1b:
    ret                                           ; $7a1b: $c9


Call_00e_7a1c:
    ld c, $00                                     ; $7a1c: $0e $00
    ld d, $00                                     ; $7a1e: $16 $00
    ld e, $9d                                     ; $7a20: $1e $9d

jr_00e_7a22:
    ld a, [hl]                                    ; $7a22: $7e
    cp $96                                        ; $7a23: $fe $96
    jr z, jr_00e_7a35                             ; $7a25: $28 $0e

    ld a, [hl]                                    ; $7a27: $7e
    cp e                                          ; $7a28: $bb
    jr z, jr_00e_7a2d                             ; $7a29: $28 $02

    ld d, c                                       ; $7a2b: $51
    ld e, a                                       ; $7a2c: $5f

jr_00e_7a2d:
    inc hl                                        ; $7a2d: $23
    inc hl                                        ; $7a2e: $23
    inc hl                                        ; $7a2f: $23
    ld a, d                                       ; $7a30: $7a
    ld [hl+], a                                   ; $7a31: $22
    inc c                                         ; $7a32: $0c
    jr jr_00e_7a22                                ; $7a33: $18 $ed

jr_00e_7a35:
    ret                                           ; $7a35: $c9


Call_00e_7a36:
    ld e, l                                       ; $7a36: $5d
    ld d, h                                       ; $7a37: $54
    inc hl                                        ; $7a38: $23
    inc hl                                        ; $7a39: $23
    inc hl                                        ; $7a3a: $23
    inc hl                                        ; $7a3b: $23

jr_00e_7a3c:
    ld a, [hl+]                                   ; $7a3c: $2a
    cp $96                                        ; $7a3d: $fe $96
    jr z, jr_00e_7a58                             ; $7a3f: $28 $17

    inc de                                        ; $7a41: $13
    inc de                                        ; $7a42: $13
    inc de                                        ; $7a43: $13
    ld a, [de]                                    ; $7a44: $1a
    and $7f                                       ; $7a45: $e6 $7f
    ld b, a                                       ; $7a47: $47
    inc hl                                        ; $7a48: $23
    inc hl                                        ; $7a49: $23
    ld a, [hl]                                    ; $7a4a: $7e
    and $7f                                       ; $7a4b: $e6 $7f
    cp b                                          ; $7a4d: $b8
    jr nz, jr_00e_7a54                            ; $7a4e: $20 $04

    or $80                                        ; $7a50: $f6 $80
    ld [de], a                                    ; $7a52: $12
    ld [hl], a                                    ; $7a53: $77

jr_00e_7a54:
    inc hl                                        ; $7a54: $23
    inc de                                        ; $7a55: $13
    jr jr_00e_7a3c                                ; $7a56: $18 $e4

jr_00e_7a58:
    ret                                           ; $7a58: $c9


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
