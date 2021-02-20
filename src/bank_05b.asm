; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05b", ROMX[$4000], BANK[$5b]

    inc e                                         ; $4000: $1c
    ld b, b                                       ; $4001: $40
    jp nz, $0844                                  ; $4002: $c2 $44 $08

    ld c, c                                       ; $4005: $49
    ld [hl], c                                    ; $4006: $71
    ld c, l                                       ; $4007: $4d
    db $dd                                        ; $4008: $dd
    ld d, c                                       ; $4009: $51
    ld h, d                                       ; $400a: $62
    ld d, [hl]                                    ; $400b: $56
    and l                                         ; $400c: $a5
    ld e, d                                       ; $400d: $5a
    ld a, h                                       ; $400e: $7c
    ld e, [hl]                                    ; $400f: $5e
    dec bc                                        ; $4010: $0b
    ld h, e                                       ; $4011: $63
    nop                                           ; $4012: $00
    ld l, b                                       ; $4013: $68
    ld h, d                                       ; $4014: $62
    ld l, h                                       ; $4015: $6c
    call $8370                                    ; $4016: $cd $70 $83
    ld [hl], l                                    ; $4019: $75
    ei                                            ; $401a: $fb
    ld a, c                                       ; $401b: $79
    inc h                                         ; $401c: $24
    ld b, b                                       ; $401d: $40
    ld d, h                                       ; $401e: $54
    ld b, b                                       ; $401f: $40
    cp c                                          ; $4020: $b9
    ld b, d                                       ; $4021: $42
    adc [hl]                                      ; $4022: $8e
    ld b, h                                       ; $4023: $44
    db $ec                                        ; $4024: $ec
    dec hl                                        ; $4025: $2b
    ld [hl+], a                                   ; $4026: $22
    dec sp                                        ; $4027: $3b
    ld b, b                                       ; $4028: $40
    ld [hl+], a                                   ; $4029: $22
    nop                                           ; $402a: $00
    add hl, bc                                    ; $402b: $09
    and l                                         ; $402c: $a5
    ld b, e                                       ; $402d: $43
    xor $37                                       ; $402e: $ee $37
    ld [hl+], a                                   ; $4030: $22
    dec sp                                        ; $4031: $3b
    ld b, b                                       ; $4032: $40
    ld [hl+], a                                   ; $4033: $22
    ccf                                           ; $4034: $3f
    ld a, a                                       ; $4035: $7f
    rla                                           ; $4036: $17
    ld e, [hl]                                    ; $4037: $5e
    ld de, $2249                                  ; $4038: $11 $49 $22
    dec sp                                        ; $403b: $3b
    ld [$0825], sp                                ; $403c: $08 $25 $08
    dec h                                         ; $403f: $25
    ld [$0825], sp                                ; $4040: $08 $25 $08
    dec h                                         ; $4043: $25
    ld [$0825], sp                                ; $4044: $08 $25 $08
    dec h                                         ; $4047: $25
    ld [$0825], sp                                ; $4048: $08 $25 $08
    dec h                                         ; $404b: $25
    ld [$0825], sp                                ; $404c: $08 $25 $08
    dec h                                         ; $404f: $25
    ld [$0825], sp                                ; $4050: $08 $25 $08
    dec h                                         ; $4053: $25
    ei                                            ; $4054: $fb
    inc l                                         ; $4055: $2c
    dec bc                                        ; $4056: $0b
    rst $38                                       ; $4057: $ff
    ld [c], a                                     ; $4058: $e2
    ld l, e                                       ; $4059: $6b
    ld l, e                                       ; $405a: $6b
    ld c, e                                       ; $405b: $4b
    ld c, e                                       ; $405c: $4b
    dec hl                                        ; $405d: $2b
    rst $38                                       ; $405e: $ff
    ld c, e                                       ; $405f: $4b
    ld c, e                                       ; $4060: $4b
    ld c, e                                       ; $4061: $4b
    dec bc                                        ; $4062: $0b
    dec hl                                        ; $4063: $2b
    dec bc                                        ; $4064: $0b
    ld c, e                                       ; $4065: $4b
    dec bc                                        ; $4066: $0b
    rla                                           ; $4067: $17
    inc c                                         ; $4068: $0c
    inc c                                         ; $4069: $0c
    ld c, h                                       ; $406a: $4c
    rst $38                                       ; $406b: $ff
    ldh [$0c], a                                  ; $406c: $e0 $0c
    ld sp, hl                                     ; $406e: $f9
    ldh [$fd], a                                  ; $406f: $e0 $fd
    ld [c], a                                     ; $4071: $e2
    ld hl, sp-$1d                                 ; $4072: $f8 $e3
    ld h, h                                       ; $4074: $64
    rst $30                                       ; $4075: $f7
    ld [c], a                                     ; $4076: $e2
    db $fc                                        ; $4077: $fc
    rst $28                                       ; $4078: $ef
    inc l                                         ; $4079: $2c
    cp a                                          ; $407a: $bf
    ld [c], a                                     ; $407b: $e2
    pop bc                                        ; $407c: $c1
    pop hl                                        ; $407d: $e1
    ld l, e                                       ; $407e: $6b
    dec hl                                        ; $407f: $2b

Jump_05b_4080:
    cp a                                          ; $4080: $bf
    pop hl                                        ; $4081: $e1
    cpl                                           ; $4082: $2f
    dec hl                                        ; $4083: $2b
    ld c, e                                       ; $4084: $4b
    dec bc                                        ; $4085: $0b
    ld c, e                                       ; $4086: $4b
    call Call_05b_4ce2                            ; $4087: $cd $e2 $4c
    db $fd                                        ; $408a: $fd
    and $b5                                       ; $408b: $e6 $b5
    db $e3                                        ; $408d: $e3
    or c                                          ; $408e: $b1
    ld c, h                                       ; $408f: $4c
    push de                                       ; $4090: $d5
    ldh [$bf], a                                  ; $4091: $e0 $bf

Call_05b_4093:
    push af                                       ; $4093: $f5
    add d                                         ; $4094: $82
    pop hl                                        ; $4095: $e1
    ld c, e                                       ; $4096: $4b
    ld l, e                                       ; $4097: $6b
    cp a                                          ; $4098: $bf
    pop hl                                        ; $4099: $e1
    dec bc                                        ; $409a: $0b
    ld hl, $7f4b                                  ; $409b: $21 $4b $7f
    ldh [$c0], a                                  ; $409e: $e0 $c0
    jp hl                                         ; $40a0: $e9


    cp c                                          ; $40a1: $b9
    ldh [$b2], a                                  ; $40a2: $e0 $b2
    db $e4                                        ; $40a4: $e4
    inc l                                         ; $40a5: $2c
    ret nz                                        ; $40a6: $c0

    di                                            ; $40a7: $f3
    ld a, [hl]                                    ; $40a8: $7e
    pop hl                                        ; $40a9: $e1
    inc c                                         ; $40aa: $0c
    pop bc                                        ; $40ab: $c1
    pop hl                                        ; $40ac: $e1
    cp a                                          ; $40ad: $bf
    db $e3                                        ; $40ae: $e3
    dec bc                                        ; $40af: $0b
    dec bc                                        ; $40b0: $0b
    ld a, a                                       ; $40b1: $7f

Call_05b_40b2:
    ldh [rWX], a                                  ; $40b2: $e0 $4b
    db $e4                                        ; $40b4: $e4
    ld a, [hl]                                    ; $40b5: $7e
    ld [c], a                                     ; $40b6: $e2
    db $fc                                        ; $40b7: $fc
    db $e3                                        ; $40b8: $e3
    nop                                           ; $40b9: $00
    ld l, $e1                                     ; $40ba: $2e $e1
    pop bc                                        ; $40bc: $c1
    db $f4                                        ; $40bd: $f4
    add hl, de                                    ; $40be: $19
    ldh [$fd], a                                  ; $40bf: $e0 $fd
    pop bc                                        ; $40c1: $c1
    ld b, l                                       ; $40c2: $45
    pop hl                                        ; $40c3: $e1
    inc b                                         ; $40c4: $04
    pop hl                                        ; $40c5: $e1
    cp a                                          ; $40c6: $bf
    ldh [rP1], a                                  ; $40c7: $e0 $00
    ldh [rP1], a                                  ; $40c9: $e0 $00
    ld b, $e0                                     ; $40cb: $06 $e0

jr_05b_40cd:
    add d                                         ; $40cd: $82
    db $e4                                        ; $40ce: $e4
    ld b, b                                       ; $40cf: $40
    add sp, $11                                   ; $40d0: $e8 $11
    db $e3                                        ; $40d2: $e3
    dec c                                         ; $40d3: $0d
    ldh [rTMA], a                                 ; $40d4: $e0 $06
    db $e4                                        ; $40d6: $e4
    ret nz                                        ; $40d7: $c0

    ld [$e0bf], a                                 ; $40d8: $ea $bf $e0
    inc b                                         ; $40db: $04
    ret nz                                        ; $40dc: $c0

    pop hl                                        ; $40dd: $e1
    cp a                                          ; $40de: $bf
    ldh [$2b], a                                  ; $40df: $e0 $2b
    nop                                           ; $40e1: $00
    db $e3                                        ; $40e2: $e3
    pop de                                        ; $40e3: $d1
    jp nz, $c6cb                                  ; $40e4: $c2 $cb $c6

    jr c, jr_05b_40cd                             ; $40e7: $38 $e4

    inc a                                         ; $40e9: $3c
    di                                            ; $40ea: $f3
    dec bc                                        ; $40eb: $0b
    ld l, e                                       ; $40ec: $6b
    ld l, e                                       ; $40ed: $6b
    ld a, [hl]                                    ; $40ee: $7e
    ld [c], a                                     ; $40ef: $e2
    ld l, e                                       ; $40f0: $6b
    ld hl, sp-$20                                 ; $40f1: $f8 $e0
    ld a, a                                       ; $40f3: $7f
    ld [c], a                                     ; $40f4: $e2
    sub [hl]                                      ; $40f5: $96
    add $7c                                       ; $40f6: $c6 $7c
    call nz, Call_05b_7f00                        ; $40f8: $c4 $00 $7f
    rst $00                                       ; $40fb: $c7
    cp l                                          ; $40fc: $bd
    pop de                                        ; $40fd: $d1
    ld b, e                                       ; $40fe: $43

Jump_05b_40ff:
    ret nz                                        ; $40ff: $c0

    ld a, a                                       ; $4100: $7f
    db $e4                                        ; $4101: $e4
    cp a                                          ; $4102: $bf
    pop hl                                        ; $4103: $e1
    ret nz                                        ; $4104: $c0

    ld [c], a                                     ; $4105: $e2
    ld d, b                                       ; $4106: $50
    jp $c5c0                                      ; $4107: $c3 $c0 $c5


jr_05b_410a:
    nop                                           ; $410a: $00
    ccf                                           ; $410b: $3f
    ld [$f0c2], a                                 ; $410c: $ea $c2 $f0
    add d                                         ; $410f: $82
    pop hl                                        ; $4110: $e1
    cp a                                          ; $4111: $bf
    jp nz, $e5bf                                  ; $4112: $c2 $bf $e5

    ld [bc], a                                    ; $4115: $02
    pop hl                                        ; $4116: $e1
    ld a, $c4                                     ; $4117: $3e $c4
    add c                                         ; $4119: $81
    pop bc                                        ; $411a: $c1
    ld [$c435], sp                                ; $411b: $08 $35 $c4
    jr nc, jr_05b_410a                            ; $411e: $30 $ea

    ld b, h                                       ; $4120: $44
    add sp, $6b                                   ; $4121: $e8 $6b
    ret z                                         ; $4123: $c8

    and c                                         ; $4124: $a1
    ret nz                                        ; $4125: $c0

    push hl                                       ; $4126: $e5
    or d                                          ; $4127: $b2
    and d                                         ; $4128: $a2
    ld b, a                                       ; $4129: $47
    db $e4                                        ; $412a: $e4
    nop                                           ; $412b: $00
    rst $38                                       ; $412c: $ff
    push hl                                       ; $412d: $e5
    ld [hl], l                                    ; $412e: $75
    add $c0                                       ; $412f: $c6 $c0
    ld a, [c]                                     ; $4131: $f2
    add h                                         ; $4132: $84
    push hl                                       ; $4133: $e5
    pop bc                                        ; $4134: $c1
    rst $20                                       ; $4135: $e7
    add b                                         ; $4136: $80
    pop bc                                        ; $4137: $c1
    adc $c6                                       ; $4138: $ce $c6
    adc c                                         ; $413a: $89
    and h                                         ; $413b: $a4
    nop                                           ; $413c: $00
    ld a, [c]                                     ; $413d: $f2
    add sp, -$46                                  ; $413e: $e8 $ba
    and d                                         ; $4140: $a2
    or l                                          ; $4141: $b5
    and [hl]                                      ; $4142: $a6
    ld b, l                                       ; $4143: $45
    db $e4                                        ; $4144: $e4
    ccf                                           ; $4145: $3f
    jp nz, $e4c1                                  ; $4146: $c2 $c1 $e4

    ret nz                                        ; $4149: $c0

    ld [c], a                                     ; $414a: $e2
    ld b, $c7                                     ; $414b: $06 $c7
    nop                                           ; $414d: $00
    ld a, [hl-]                                   ; $414e: $3a
    and h                                         ; $414f: $a4
    nop                                           ; $4150: $00
    push af                                       ; $4151: $f5
    push bc                                       ; $4152: $c5
    ld [c], a                                     ; $4153: $e2
    ld a, [bc]                                    ; $4154: $0a
    pop bc                                        ; $4155: $c1
    rst $38                                       ; $4156: $ff
    rst $20                                       ; $4157: $e7
    ld [de], a                                    ; $4158: $12
    and h                                         ; $4159: $a4
    ld b, h                                       ; $415a: $44
    and $40                                       ; $415b: $e6 $40
    rst $00                                       ; $415d: $c7
    nop                                           ; $415e: $00
    db $fc                                        ; $415f: $fc
    adc a                                         ; $4160: $8f
    db $10                                        ; $4161: $10
    and b                                         ; $4162: $a0
    jp z, Jump_05b_47a2                           ; $4163: $ca $a2 $47

    and c                                         ; $4166: $a1
    cp l                                          ; $4167: $bd
    push hl                                       ; $4168: $e5
    add c                                         ; $4169: $81
    and a                                         ; $416a: $a7
    ld a, l                                       ; $416b: $7d
    add $ad                                       ; $416c: $c6 $ad
    push hl                                       ; $416e: $e5
    inc a                                         ; $416f: $3c
    cp l                                          ; $4170: $bd
    and l                                         ; $4171: $a5
    inc sp                                        ; $4172: $33
    and [hl]                                      ; $4173: $a6
    dec hl                                        ; $4174: $2b
    dec hl                                        ; $4175: $2b
    dec hl                                        ; $4176: $2b
    ld l, e                                       ; $4177: $6b
    adc d                                         ; $4178: $8a
    and c                                         ; $4179: $a1
    ld a, $e1                                     ; $417a: $3e $e1
    nop                                           ; $417c: $00
    ld a, h                                       ; $417d: $7c
    push hl                                       ; $417e: $e5
    adc l                                         ; $417f: $8d
    add [hl]                                      ; $4180: $86
    ld b, c                                       ; $4181: $41
    and l                                         ; $4182: $a5
    ld a, a                                       ; $4183: $7f
    and [hl]                                      ; $4184: $a6
    ld a, e                                       ; $4185: $7b
    add l                                         ; $4186: $85
    ret nz                                        ; $4187: $c0

    rst $20                                       ; $4188: $e7
    rrca                                          ; $4189: $0f
    and b                                         ; $418a: $a0
    ld b, l                                       ; $418b: $45
    pop hl                                        ; $418c: $e1
    nop                                           ; $418d: $00
    add $a0                                       ; $418e: $c6 $a0
    cp [hl]                                       ; $4190: $be
    rst $20                                       ; $4191: $e7
    ld b, b                                       ; $4192: $40
    rst $20                                       ; $4193: $e7
    ret nz                                        ; $4194: $c0

    add sp, $70                                   ; $4195: $e8 $70
    and [hl]                                      ; $4197: $a6
    add c                                         ; $4198: $81
    ld [$e859], a                                 ; $4199: $ea $59 $e8
    ld d, c                                       ; $419c: $51
    and $00                                       ; $419d: $e6 $00
    ld c, h                                       ; $419f: $4c
    add a                                         ; $41a0: $87
    ld bc, $7c8d                                  ; $41a1: $01 $8d $7c
    and e                                         ; $41a4: $a3
    ret nz                                        ; $41a5: $c0

    ld [$77d5], a                                 ; $41a6: $ea $d5 $77
    ld bc, $bb90                                  ; $41a9: $01 $90 $bb
    ld [hl], e                                    ; $41ac: $73
    push de                                       ; $41ad: $d5
    ld [hl], h                                    ; $41ae: $74
    inc b                                         ; $41af: $04
    ld bc, $c297                                  ; $41b0: $01 $97 $c2
    pop bc                                        ; $41b3: $c1
    inc l                                         ; $41b4: $2c
    add b                                         ; $41b5: $80
    add a                                         ; $41b6: $87
    push de                                       ; $41b7: $d5
    ld [hl], e                                    ; $41b8: $73
    ld bc, $7a91                                  ; $41b9: $01 $91 $7a
    add a                                         ; $41bc: $87
    ret nz                                        ; $41bd: $c0

    and $00                                       ; $41be: $e6 $00
    push de                                       ; $41c0: $d5
    halt                                          ; $41c1: $76
    ld bc, $f992                                  ; $41c2: $01 $92 $f9
    ld h, a                                       ; $41c5: $67
    rst $38                                       ; $41c6: $ff
    ret z                                         ; $41c7: $c8

    push de                                       ; $41c8: $d5
    ld [hl], h                                    ; $41c9: $74
    ld bc, $be90                                  ; $41ca: $01 $90 $be
    add $bf                                       ; $41cd: $c6 $bf
    ret                                           ; $41cf: $c9


    nop                                           ; $41d0: $00
    push de                                       ; $41d1: $d5
    ld [hl], h                                    ; $41d2: $74
    ld bc, $7a91                                  ; $41d3: $01 $91 $7a
    add h                                         ; $41d6: $84
    cp b                                          ; $41d7: $b8
    ld d, c                                       ; $41d8: $51
    push de                                       ; $41d9: $d5
    ld l, [hl]                                    ; $41da: $6e
    ld bc, $3a92                                  ; $41db: $01 $92 $3a
    ld b, l                                       ; $41de: $45
    add b                                         ; $41df: $80
    and a                                         ; $41e0: $a7
    nop                                           ; $41e1: $00
    push de                                       ; $41e2: $d5
    halt                                          ; $41e3: $76
    ld bc, $fa92                                  ; $41e4: $01 $92 $fa
    add l                                         ; $41e7: $85
    ret nz                                        ; $41e8: $c0

    jp hl                                         ; $41e9: $e9


    push de                                       ; $41ea: $d5
    ld [hl], l                                    ; $41eb: $75
    ld bc, $b990                                  ; $41ec: $01 $90 $b9
    ld b, a                                       ; $41ef: $47
    ld b, a                                       ; $41f0: $47
    db $ec                                        ; $41f1: $ec
    nop                                           ; $41f2: $00

Call_05b_41f3:
    push de                                       ; $41f3: $d5
    ld [hl], d                                    ; $41f4: $72
    ld bc, $8090                                  ; $41f5: $01 $90 $80
    and $bf                                       ; $41f8: $e6 $bf
    xor [hl]                                      ; $41fa: $ae
    push de                                       ; $41fb: $d5
    ld l, [hl]                                    ; $41fc: $6e
    ld bc, $3993                                  ; $41fd: $01 $93 $39
    ld sp, $74d5                                  ; $4200: $31 $d5 $74
    nop                                           ; $4203: $00
    ld bc, $f992                                  ; $4204: $01 $92 $f9
    rrca                                          ; $4207: $0f
    push de                                       ; $4208: $d5
    ld [hl], l                                    ; $4209: $75
    ld bc, $7f91                                  ; $420a: $01 $91 $7f
    inc [hl]                                      ; $420d: $34
    push de                                       ; $420e: $d5
    ld [hl], d                                    ; $420f: $72
    ld bc, $7891                                  ; $4210: $01 $91 $78
    ld [hl], e                                    ; $4213: $73
    nop                                           ; $4214: $00
    push de                                       ; $4215: $d5
    ld [hl], e                                    ; $4216: $73
    ld bc, $3791                                  ; $4217: $01 $91 $37
    rlca                                          ; $421a: $07
    ld b, b                                       ; $421b: $40
    adc c                                         ; $421c: $89
    push de                                       ; $421d: $d5
    ld [hl], h                                    ; $421e: $74
    or $a8                                        ; $421f: $f6 $a8
    ld hl, sp+$4e                                 ; $4221: $f8 $4e
    ld [hl], h                                    ; $4223: $74
    dec bc                                        ; $4224: $0b
    nop                                           ; $4225: $00
    ld d, l                                       ; $4226: $55
    ld d, e                                       ; $4227: $53
    ld sp, hl                                     ; $4228: $f9
    ld l, c                                       ; $4229: $69
    ld hl, sp+$4d                                 ; $422a: $f8 $4d
    pop bc                                        ; $422c: $c1
    db $eb                                        ; $422d: $eb
    ld d, l                                       ; $422e: $55
    ld e, c                                       ; $422f: $59
    ld hl, sp+$53                                 ; $4230: $f8 $53
    jp nz, Jump_05b_5589                          ; $4232: $c2 $89 $55

    ld e, c                                       ; $4235: $59
    nop                                           ; $4236: $00
    ld hl, sp+$55                                 ; $4237: $f8 $55
    add b                                         ; $4239: $80
    rst $18                                       ; $423a: $df
    and l                                         ; $423b: $a5
    sbc c                                         ; $423c: $99
    ld b, d                                       ; $423d: $42
    adc d                                         ; $423e: $8a
    add b                                         ; $423f: $80
    sub $7a                                       ; $4240: $d6 $7a
    rla                                           ; $4242: $17
    ld [bc], a                                    ; $4243: $02
    adc e                                         ; $4244: $8b
    ld e, l                                       ; $4245: $5d
    or $00                                        ; $4246: $f6 $00
    ld a, d                                       ; $4248: $7a
    ld d, $ff                                     ; $4249: $16 $ff
    rst $38                                       ; $424b: $ff
    and l                                         ; $424c: $a5
    sbc e                                         ; $424d: $9b
    rst $38                                       ; $424e: $ff
    rst $38                                       ; $424f: $ff
    ld e, h                                       ; $4250: $5c
    add [hl]                                      ; $4251: $86
    and l                                         ; $4252: $a5
    sub e                                         ; $4253: $93
    rst $38                                       ; $4254: $ff
    rst $38                                       ; $4255: $ff
    dec h                                         ; $4256: $25
    rst $18                                       ; $4257: $df
    nop                                           ; $4258: $00
    add b                                         ; $4259: $80
    rst $38                                       ; $425a: $ff
    ld a, d                                       ; $425b: $7a
    rra                                           ; $425c: $1f
    ld b, b                                       ; $425d: $40
    rst $38                                       ; $425e: $ff
    dec h                                         ; $425f: $25
    call c, $ff40                                 ; $4260: $dc $40 $ff
    ld a, c                                       ; $4263: $79
    sub e                                         ; $4264: $93
    rst $38                                       ; $4265: $ff
    rst $38                                       ; $4266: $ff
    add d                                         ; $4267: $82
    cp a                                          ; $4268: $bf

Call_05b_4269:
    nop                                           ; $4269: $00
    rst $38                                       ; $426a: $ff
    rst $38                                       ; $426b: $ff
    ld [hl], e                                    ; $426c: $73
    ret                                           ; $426d: $c9


    adc [hl]                                      ; $426e: $8e
    adc e                                         ; $426f: $8b
    rst $38                                       ; $4270: $ff
    rst $38                                       ; $4271: $ff
    rst $38                                       ; $4272: $ff
    rst $38                                       ; $4273: $ff
    sub [hl]                                      ; $4274: $96
    rst $38                                       ; $4275: $ff
    rst $38                                       ; $4276: $ff
    rst $38                                       ; $4277: $ff
    ld [hl], e                                    ; $4278: $73
    inc [hl]                                      ; $4279: $34
    nop                                           ; $427a: $00
    rst $38                                       ; $427b: $ff
    rst $38                                       ; $427c: $ff
    rst $38                                       ; $427d: $ff
    rst $38                                       ; $427e: $ff
    rst $38                                       ; $427f: $ff
    rst $38                                       ; $4280: $ff
    scf                                           ; $4281: $37
    cp $dc                                        ; $4282: $fe $dc
    rst $38                                       ; $4284: $ff
    rst $38                                       ; $4285: $ff
    rst $38                                       ; $4286: $ff
    rst $38                                       ; $4287: $ff
    rst $38                                       ; $4288: $ff
    rst $38                                       ; $4289: $ff
    rst $38                                       ; $428a: $ff
    nop                                           ; $428b: $00
    rst $38                                       ; $428c: $ff
    rst $38                                       ; $428d: $ff
    rst $38                                       ; $428e: $ff
    rst $38                                       ; $428f: $ff
    rst $38                                       ; $4290: $ff
    rst $38                                       ; $4291: $ff
    rst $38                                       ; $4292: $ff
    rst $38                                       ; $4293: $ff
    rst $38                                       ; $4294: $ff
    rst $38                                       ; $4295: $ff
    rst $38                                       ; $4296: $ff
    rst $38                                       ; $4297: $ff
    rst $38                                       ; $4298: $ff
    rst $38                                       ; $4299: $ff
    rst $38                                       ; $429a: $ff
    rst $38                                       ; $429b: $ff
    nop                                           ; $429c: $00
    rst $38                                       ; $429d: $ff
    rst $38                                       ; $429e: $ff
    rst $38                                       ; $429f: $ff
    rst $38                                       ; $42a0: $ff
    rst $38                                       ; $42a1: $ff
    rst $38                                       ; $42a2: $ff
    rst $38                                       ; $42a3: $ff
    rst $38                                       ; $42a4: $ff
    rst $38                                       ; $42a5: $ff
    rst $38                                       ; $42a6: $ff

jr_05b_42a7:
    rst $38                                       ; $42a7: $ff
    rst $38                                       ; $42a8: $ff
    nop                                           ; $42a9: $00
    cp a                                          ; $42aa: $bf
    rst $38                                       ; $42ab: $ff
    rst $38                                       ; $42ac: $ff
    nop                                           ; $42ad: $00
    rst $38                                       ; $42ae: $ff
    rst $38                                       ; $42af: $ff
    rst $38                                       ; $42b0: $ff
    rst $38                                       ; $42b1: $ff
    rst $38                                       ; $42b2: $ff
    rst $38                                       ; $42b3: $ff
    ld e, e                                       ; $42b4: $5b
    ld [hl], e                                    ; $42b5: $73
    nop                                           ; $42b6: $00
    nop                                           ; $42b7: $00
    nop                                           ; $42b8: $00
    ei                                            ; $42b9: $fb
    add hl, hl                                    ; $42ba: $29
    ld sp, $e2ff                                  ; $42bb: $31 $ff $e2
    ld c, l                                       ; $42be: $4d
    ld a, [hl-]                                   ; $42bf: $3a
    ld d, h                                       ; $42c0: $54
    ld l, [hl]                                    ; $42c1: $6e
    ld a, c                                       ; $42c2: $79
    ld a, l                                       ; $42c3: $7d
    add b                                         ; $42c4: $80
    rst $38                                       ; $42c5: $ff
    ldh [$81], a                                  ; $42c6: $e0 $81
    ld sp, $5b5e                                  ; $42c8: $31 $5e $5b
    nop                                           ; $42cb: $00
    rst $38                                       ; $42cc: $ff
    rst $38                                       ; $42cd: $ff
    ld a, [$e6e7]                                 ; $42ce: $fa $e7 $e6
    daa                                           ; $42d1: $27
    cp a                                          ; $42d2: $bf

Jump_05b_42d3:
    ld [c], a                                     ; $42d3: $e2
    ld c, l                                       ; $42d4: $4d
    ld [hl-], a                                   ; $42d5: $32
    ld l, l                                       ; $42d6: $6d
    ld l, h                                       ; $42d7: $6c
    ld l, l                                       ; $42d8: $6d
    dec a                                         ; $42d9: $3d

jr_05b_42da:
    ld [hl], c                                    ; $42da: $71
    cp a                                          ; $42db: $bf
    pop hl                                        ; $42dc: $e1
    xor c                                         ; $42dd: $a9
    xor h                                         ; $42de: $ac
    ld sp, $ca5f                                  ; $42df: $31 $5f $ca
    rst $38                                       ; $42e2: $ff
    add sp, -$19                                  ; $42e3: $e8 $e7
    add hl, sp                                    ; $42e5: $39
    jr nz, jr_05b_42a7                            ; $42e6: $20 $bf

    pop hl                                        ; $42e8: $e1
    pop bc                                        ; $42e9: $c1
    ldh [rOCPS], a                                ; $42ea: $e0 $6a
    ld l, b                                       ; $42ec: $68
    ld l, d                                       ; $42ed: $6a
    cp a                                          ; $42ee: $bf
    db $e3                                        ; $42ef: $e3
    ld a, a                                       ; $42f0: $7f

jr_05b_42f1:
    ldh [$fc], a                                  ; $42f1: $e0 $fc
    jp z, $c0ff                                   ; $42f3: $ca $ff $c0

    add sp, $20                                   ; $42f6: $e8 $20
    ld d, $29                                     ; $42f8: $16 $29
    ld sp, $6d39                                  ; $42fa: $31 $39 $6d
    rrca                                          ; $42fd: $0f
    ld l, d                                       ; $42fe: $6a
    ld l, h                                       ; $42ff: $6c
    ld l, h                                       ; $4300: $6c
    ld l, h                                       ; $4301: $6c
    cp a                                          ; $4302: $bf
    db $e3                                        ; $4303: $e3
    ld a, a                                       ; $4304: $7f
    ldh [$ca], a                                  ; $4305: $e0 $ca
    rst $38                                       ; $4307: $ff
    ret nz                                        ; $4308: $c0

    jp hl                                         ; $4309: $e9


    rst $28                                       ; $430a: $ef
    jr nz, jr_05b_430d                            ; $430b: $20 $00

jr_05b_430d:
    ld sp, $c053                                  ; $430d: $31 $53 $c0
    ld [c], a                                     ; $4310: $e2
    ld l, c                                       ; $4311: $69
    ld l, e                                       ; $4312: $6b
    jr nc, @+$33                                  ; $4313: $30 $31

    add e                                         ; $4315: $83
    cp $c2                                        ; $4316: $fe $c2
    jp z, $c0ff                                   ; $4318: $ca $ff $c0

    db $ec                                        ; $431b: $ec
    ld d, d                                       ; $431c: $52
    ld l, l                                       ; $431d: $6d
    ld a, a                                       ; $431e: $7f
    pop hl                                        ; $431f: $e1
    ret nz                                        ; $4320: $c0

    ldh [$e3], a                                  ; $4321: $e0 $e3
    ld c, b                                       ; $4323: $48
    add h                                         ; $4324: $84
    cp $c1                                        ; $4325: $fe $c1
    jp z, Jump_05b_40ff                           ; $4327: $ca $ff $40

    jp hl                                         ; $432a: $e9


    ld a, [bc]                                    ; $432b: $0a
    dec bc                                        ; $432c: $0b
    ld c, c                                       ; $432d: $49
    dec sp                                        ; $432e: $3b
    ld c, b                                       ; $432f: $48
    jr nc, jr_05b_42f1                            ; $4330: $30 $bf

    pop hl                                        ; $4332: $e1
    ld l, d                                       ; $4333: $6a
    ld l, l                                       ; $4334: $6d
    ld l, l                                       ; $4335: $6d
    ld a, a                                       ; $4336: $7f
    db $e3                                        ; $4337: $e3
    jp z, $feff                                   ; $4338: $ca $ff $fe

    add sp, -$19                                  ; $433b: $e8 $e7
    ld a, [bc]                                    ; $433d: $0a
    dec bc                                        ; $433e: $0b
    ld sp, $3931                                  ; $433f: $31 $31 $39
    jr nc, jr_05b_4374                            ; $4342: $30 $30

    ld d, a                                       ; $4344: $57
    jr nc, jr_05b_43b2                            ; $4345: $30 $6b

    ld l, c                                       ; $4347: $69
    rst $38                                       ; $4348: $ff
    pop bc                                        ; $4349: $c1
    ld l, l                                       ; $434a: $6d
    ccf                                           ; $434b: $3f
    pop hl                                        ; $434c: $e1
    xor c                                         ; $434d: $a9
    jp z, Jump_05b_7eff                           ; $434e: $ca $ff $7e

    add sp, -$19                                  ; $4351: $e8 $e7
    ld sp, $4731                                  ; $4353: $31 $31 $47
    ld b, [hl]                                    ; $4356: $46
    ld b, d                                       ; $4357: $42
    jr nc, jr_05b_42da                            ; $4358: $30 $80

    ld [c], a                                     ; $435a: $e2
    db $e4                                        ; $435b: $e4
    cp [hl]                                       ; $435c: $be
    ret nz                                        ; $435d: $c0

    dec a                                         ; $435e: $3d
    jp nz, $ca80                                  ; $435f: $c2 $80 $ca

    rst $38                                       ; $4362: $ff
    add sp, -$19                                  ; $4363: $e8 $e7
    ld c, l                                       ; $4365: $4d
    ld b, [hl]                                    ; $4366: $46
    ld [hl], $2f                                  ; $4367: $36 $2f
    jr nc, jr_05b_43d8                            ; $4369: $30 $6d

    ld l, h                                       ; $436b: $6c
    ld l, h                                       ; $436c: $6c
    ld a, a                                       ; $436d: $7f
    jp nz, $c16c                                  ; $436e: $c2 $6c $c1

    db $e3                                        ; $4371: $e3
    ret nz                                        ; $4372: $c0

    rst $38                                       ; $4373: $ff

jr_05b_4374:
    adc b                                         ; $4374: $88
    jp hl                                         ; $4375: $e9


    add sp, $44                                   ; $4376: $e8 $44
    ldh [rDIV], a                                 ; $4378: $e0 $04
    ret nz                                        ; $437a: $c0

    ld l, b                                       ; $437b: $68
    pop bc                                        ; $437c: $c1
    jp hl                                         ; $437d: $e9


    ret nz                                        ; $437e: $c0

    rst $38                                       ; $437f: $ff
    jp hl                                         ; $4380: $e9


    add sp, $53                                   ; $4381: $e8 $53
    ld a, h                                       ; $4383: $7c
    pop bc                                        ; $4384: $c1
    ldh [rDIV], a                                 ; $4385: $e0 $04
    ret nz                                        ; $4387: $c0

    ld [hl], $6e                                  ; $4388: $36 $6e
    ld a, h                                       ; $438a: $7c
    ld a, l                                       ; $438b: $7d
    ld a, h                                       ; $438c: $7c
    pop bc                                        ; $438d: $c1
    db $e4                                        ; $438e: $e4
    db $f4                                        ; $438f: $f4
    ret nz                                        ; $4390: $c0

    rst $38                                       ; $4391: $ff
    jp hl                                         ; $4392: $e9


    add sp, $52                                   ; $4393: $e8 $52
    add $c2                                       ; $4395: $c6 $c2
    ld [hl-], a                                   ; $4397: $32
    ld b, a                                       ; $4398: $47
    ld [hl], b                                    ; $4399: $70
    xor d                                         ; $439a: $aa
    ldh a, [$c3]                                  ; $439b: $f0 $c3
    db $e4                                        ; $439d: $e4
    ret nz                                        ; $439e: $c0

    rst $38                                       ; $439f: $ff
    ld b, b                                       ; $43a0: $40
    db $ec                                        ; $43a1: $ec
    add [hl]                                      ; $43a2: $86
    ret nz                                        ; $43a3: $c0

    ld c, b                                       ; $43a4: $48
    ld c, c                                       ; $43a5: $49
    ld sp, $e331                                  ; $43a6: $31 $31 $e3
    xor e                                         ; $43a9: $ab
    ld e, b                                       ; $43aa: $58
    cp [hl]                                       ; $43ab: $be
    and $ca                                       ; $43ac: $e6 $ca
    rst $38                                       ; $43ae: $ff
    ret nz                                        ; $43af: $c0

    swap b                                        ; $43b0: $cb $30

jr_05b_43b2:
    add hl, sp                                    ; $43b2: $39
    ld sp, $31e3                                  ; $43b3: $31 $e3 $31
    ld h, d                                       ; $43b6: $62
    cp [hl]                                       ; $43b7: $be
    add sp, -$36                                  ; $43b8: $e8 $ca
    rst $38                                       ; $43ba: $ff
    ld b, b                                       ; $43bb: $40
    bit 0, [hl]                                   ; $43bc: $cb $46
    ld c, l                                       ; $43be: $4d
    ld sp, $600f                                  ; $43bf: $31 $0f $60
    ld e, e                                       ; $43c2: $5b
    ld e, h                                       ; $43c3: $5c
    ld e, l                                       ; $43c4: $5d
    ld a, h                                       ; $43c5: $7c
    and $ca                                       ; $43c6: $e6 $ca
    rst $38                                       ; $43c8: $ff
    rst $38                                       ; $43c9: $ff
    rst $38                                       ; $43ca: $ff
    rst $38                                       ; $43cb: $ff
    rst $38                                       ; $43cc: $ff
    nop                                           ; $43cd: $00
    rst $38                                       ; $43ce: $ff
    rst $38                                       ; $43cf: $ff
    rst $38                                       ; $43d0: $ff
    rst $38                                       ; $43d1: $ff
    rst $38                                       ; $43d2: $ff
    rst $38                                       ; $43d3: $ff
    rst $38                                       ; $43d4: $ff
    rst $38                                       ; $43d5: $ff
    rst $38                                       ; $43d6: $ff
    rst $38                                       ; $43d7: $ff

jr_05b_43d8:
    rst $38                                       ; $43d8: $ff
    rst $38                                       ; $43d9: $ff
    rst $38                                       ; $43da: $ff
    rst $38                                       ; $43db: $ff
    rst $38                                       ; $43dc: $ff
    rst $38                                       ; $43dd: $ff
    nop                                           ; $43de: $00
    rst $38                                       ; $43df: $ff
    rst $38                                       ; $43e0: $ff
    rst $38                                       ; $43e1: $ff
    rst $38                                       ; $43e2: $ff
    rst $38                                       ; $43e3: $ff
    rst $38                                       ; $43e4: $ff
    rst $38                                       ; $43e5: $ff
    rst $38                                       ; $43e6: $ff
    rst $38                                       ; $43e7: $ff
    rst $38                                       ; $43e8: $ff
    rst $38                                       ; $43e9: $ff
    rst $38                                       ; $43ea: $ff
    rst $38                                       ; $43eb: $ff
    rst $38                                       ; $43ec: $ff
    rst $38                                       ; $43ed: $ff
    rst $38                                       ; $43ee: $ff
    nop                                           ; $43ef: $00
    rst $38                                       ; $43f0: $ff
    rst $38                                       ; $43f1: $ff
    rst $38                                       ; $43f2: $ff
    rst $38                                       ; $43f3: $ff
    rst $38                                       ; $43f4: $ff
    rst $38                                       ; $43f5: $ff
    rst $38                                       ; $43f6: $ff
    rst $38                                       ; $43f7: $ff
    rst $38                                       ; $43f8: $ff
    rst $38                                       ; $43f9: $ff
    rst $38                                       ; $43fa: $ff
    rst $38                                       ; $43fb: $ff
    rst $38                                       ; $43fc: $ff
    rst $38                                       ; $43fd: $ff
    rst $38                                       ; $43fe: $ff
    rst $38                                       ; $43ff: $ff
    nop                                           ; $4400: $00
    rst $38                                       ; $4401: $ff
    rst $38                                       ; $4402: $ff
    rst $38                                       ; $4403: $ff
    rst $38                                       ; $4404: $ff
    rst $38                                       ; $4405: $ff
    rst $38                                       ; $4406: $ff
    rst $38                                       ; $4407: $ff
    rst $38                                       ; $4408: $ff
    rst $38                                       ; $4409: $ff
    rst $38                                       ; $440a: $ff
    rst $38                                       ; $440b: $ff
    rst $38                                       ; $440c: $ff
    rst $38                                       ; $440d: $ff
    rst $38                                       ; $440e: $ff
    rst $38                                       ; $440f: $ff
    rst $38                                       ; $4410: $ff
    nop                                           ; $4411: $00
    rst $38                                       ; $4412: $ff
    rst $38                                       ; $4413: $ff
    rst $38                                       ; $4414: $ff
    rst $38                                       ; $4415: $ff
    rst $38                                       ; $4416: $ff
    rst $38                                       ; $4417: $ff
    rst $38                                       ; $4418: $ff
    rst $38                                       ; $4419: $ff
    rst $38                                       ; $441a: $ff
    rst $38                                       ; $441b: $ff
    rst $38                                       ; $441c: $ff
    rst $38                                       ; $441d: $ff
    rst $38                                       ; $441e: $ff
    rst $38                                       ; $441f: $ff
    rst $38                                       ; $4420: $ff
    rst $38                                       ; $4421: $ff
    nop                                           ; $4422: $00
    rst $38                                       ; $4423: $ff
    rst $38                                       ; $4424: $ff
    rst $38                                       ; $4425: $ff
    rst $38                                       ; $4426: $ff
    rst $38                                       ; $4427: $ff
    rst $38                                       ; $4428: $ff
    rst $38                                       ; $4429: $ff
    rst $38                                       ; $442a: $ff
    rst $38                                       ; $442b: $ff
    rst $38                                       ; $442c: $ff
    rst $38                                       ; $442d: $ff
    rst $38                                       ; $442e: $ff
    rst $38                                       ; $442f: $ff
    rst $38                                       ; $4430: $ff
    rst $38                                       ; $4431: $ff
    rst $38                                       ; $4432: $ff
    nop                                           ; $4433: $00
    rst $38                                       ; $4434: $ff
    rst $38                                       ; $4435: $ff
    rst $38                                       ; $4436: $ff
    rst $38                                       ; $4437: $ff
    rst $38                                       ; $4438: $ff
    rst $38                                       ; $4439: $ff
    rst $38                                       ; $443a: $ff
    rst $38                                       ; $443b: $ff
    rst $38                                       ; $443c: $ff
    rst $38                                       ; $443d: $ff
    rst $38                                       ; $443e: $ff
    rst $38                                       ; $443f: $ff
    rst $38                                       ; $4440: $ff
    rst $38                                       ; $4441: $ff
    rst $38                                       ; $4442: $ff
    rst $38                                       ; $4443: $ff
    nop                                           ; $4444: $00
    rst $38                                       ; $4445: $ff
    rst $38                                       ; $4446: $ff
    rst $38                                       ; $4447: $ff
    rst $38                                       ; $4448: $ff
    rst $38                                       ; $4449: $ff
    rst $38                                       ; $444a: $ff
    rst $38                                       ; $444b: $ff
    rst $38                                       ; $444c: $ff
    rst $38                                       ; $444d: $ff
    rst $38                                       ; $444e: $ff
    rst $38                                       ; $444f: $ff
    rst $38                                       ; $4450: $ff
    rst $38                                       ; $4451: $ff
    rst $38                                       ; $4452: $ff
    rst $38                                       ; $4453: $ff
    rst $38                                       ; $4454: $ff
    nop                                           ; $4455: $00
    rst $38                                       ; $4456: $ff
    rst $38                                       ; $4457: $ff
    rst $38                                       ; $4458: $ff
    rst $38                                       ; $4459: $ff
    rst $38                                       ; $445a: $ff
    rst $38                                       ; $445b: $ff
    rst $38                                       ; $445c: $ff
    rst $38                                       ; $445d: $ff
    rst $38                                       ; $445e: $ff
    rst $38                                       ; $445f: $ff
    rst $38                                       ; $4460: $ff
    rst $38                                       ; $4461: $ff
    rst $38                                       ; $4462: $ff
    rst $38                                       ; $4463: $ff
    rst $38                                       ; $4464: $ff
    rst $38                                       ; $4465: $ff
    nop                                           ; $4466: $00
    rst $38                                       ; $4467: $ff
    rst $38                                       ; $4468: $ff
    rst $38                                       ; $4469: $ff
    rst $38                                       ; $446a: $ff
    rst $38                                       ; $446b: $ff
    rst $38                                       ; $446c: $ff
    rst $38                                       ; $446d: $ff
    rst $38                                       ; $446e: $ff
    rst $38                                       ; $446f: $ff
    rst $38                                       ; $4470: $ff
    rst $38                                       ; $4471: $ff
    rst $38                                       ; $4472: $ff
    rst $38                                       ; $4473: $ff
    rst $38                                       ; $4474: $ff
    rst $38                                       ; $4475: $ff
    rst $38                                       ; $4476: $ff
    nop                                           ; $4477: $00
    rst $38                                       ; $4478: $ff
    rst $38                                       ; $4479: $ff
    rst $38                                       ; $447a: $ff
    rst $38                                       ; $447b: $ff
    rst $38                                       ; $447c: $ff
    rst $38                                       ; $447d: $ff
    rst $38                                       ; $447e: $ff
    rst $38                                       ; $447f: $ff
    rst $38                                       ; $4480: $ff
    rst $38                                       ; $4481: $ff
    rst $38                                       ; $4482: $ff
    rst $38                                       ; $4483: $ff
    rst $38                                       ; $4484: $ff
    rst $38                                       ; $4485: $ff
    rst $38                                       ; $4486: $ff
    rst $38                                       ; $4487: $ff
    nop                                           ; $4488: $00
    rst $38                                       ; $4489: $ff
    di                                            ; $448a: $f3
    nop                                           ; $448b: $00
    nop                                           ; $448c: $00
    nop                                           ; $448d: $00
    and l                                         ; $448e: $a5
    nop                                           ; $448f: $00
    rst $38                                       ; $4490: $ff
    push hl                                       ; $4491: $e5
    ld [hl-], a                                   ; $4492: $32
    or $e6                                        ; $4493: $f6 $e6
    rst $30                                       ; $4495: $f7
    rst $20                                       ; $4496: $e7
    dec [hl]                                      ; $4497: $35
    db $ec                                        ; $4498: $ec
    xor $37                                       ; $4499: $ee $37
    db $ec                                        ; $449b: $ec
    jp c, $c7f0                                   ; $449c: $da $f0 $c7

    add sp, $33                                   ; $449f: $e8 $33
    ld sp, $f2e0                                  ; $44a1: $31 $e0 $f2
    ld [hl], $30                                  ; $44a4: $36 $30

Call_05b_44a6:
    scf                                           ; $44a6: $37
    cp a                                          ; $44a7: $bf
    ld h, $20                                     ; $44a8: $26 $20
    daa                                           ; $44aa: $27
    db $10                                        ; $44ab: $10
    ld d, $17                                     ; $44ac: $16 $17
    jp nz, Jump_000_34f6                          ; $44ae: $c2 $f6 $34

    rst $38                                       ; $44b1: $ff
    ld [hl], $32                                  ; $44b2: $36 $32
    jr nc, jr_05b_44ed                            ; $44b4: $30 $37

    ld sp, $3133                                  ; $44b6: $31 $33 $31
    inc sp                                        ; $44b9: $33
    nop                                           ; $44ba: $00
    and b                                         ; $44bb: $a0
    ei                                            ; $44bc: $fb
    rst $38                                       ; $44bd: $ff
    rst $28                                       ; $44be: $ef
    nop                                           ; $44bf: $00
    nop                                           ; $44c0: $00
    nop                                           ; $44c1: $00
    jp z, $fa44                                   ; $44c2: $ca $44 $fa

    ld b, h                                       ; $44c5: $44
    inc a                                         ; $44c6: $3c
    ld b, a                                       ; $44c7: $47
    call nc, $c048                                ; $44c8: $d4 $48 $c0
    rra                                           ; $44cb: $1f
    adc d                                         ; $44cc: $8a
    inc bc                                        ; $44cd: $03
    add b                                         ; $44ce: $80
    ld [bc], a                                    ; $44cf: $02
    ld h, b                                       ; $44d0: $60
    ld bc, $03ef                                  ; $44d1: $01 $ef $03
    db $f4                                        ; $44d4: $f4
    inc bc                                        ; $44d5: $03
    adc d                                         ; $44d6: $8a
    inc bc                                        ; $44d7: $03
    add b                                         ; $44d8: $80
    ld [bc], a                                    ; $44d9: $02
    rra                                           ; $44da: $1f
    ld [bc], a                                    ; $44db: $02
    ld c, e                                       ; $44dc: $4b
    ld c, $38                                     ; $44dd: $0e $38
    ld bc, $038a                                  ; $44df: $01 $8a $03
    ld [$0825], sp                                ; $44e2: $08 $25 $08
    dec h                                         ; $44e5: $25
    ld [$0825], sp                                ; $44e6: $08 $25 $08
    dec h                                         ; $44e9: $25
    ld [$0825], sp                                ; $44ea: $08 $25 $08

jr_05b_44ed:
    dec h                                         ; $44ed: $25
    ld [$0825], sp                                ; $44ee: $08 $25 $08
    dec h                                         ; $44f1: $25
    ld [$0825], sp                                ; $44f2: $08 $25 $08
    dec h                                         ; $44f5: $25
    ld [$0825], sp                                ; $44f6: $08 $25 $08
    dec h                                         ; $44f9: $25
    sub a                                         ; $44fa: $97
    dec hl                                        ; $44fb: $2b
    dec hl                                        ; $44fc: $2b
    dec bc                                        ; $44fd: $0b
    rst $38                                       ; $44fe: $ff

Jump_05b_44ff:
    ld [c], a                                     ; $44ff: $e2
    ld c, e                                       ; $4500: $4b
    cp $e5                                        ; $4501: $fe $e5
    rst $30                                       ; $4503: $f7
    ldh [$0c], a                                  ; $4504: $e0 $0c
    add $ff                                       ; $4506: $c6 $ff
    ld [c], a                                     ; $4508: $e2
    ld c, h                                       ; $4509: $4c
    ld c, h                                       ; $450a: $4c
    db $fd                                        ; $450b: $fd
    and $f5                                       ; $450c: $e6 $f5
    ldh [$f0], a                                  ; $450e: $e0 $f0
    ld [c], a                                     ; $4510: $e2
    inc l                                         ; $4511: $2c
    inc l                                         ; $4512: $2c
    daa                                           ; $4513: $27
    inc c                                         ; $4514: $0c
    inc c                                         ; $4515: $0c
    inc l                                         ; $4516: $2c
    cp $e0                                        ; $4517: $fe $e0
    rst $38                                       ; $4519: $ff
    add sp, $4b                                   ; $451a: $e8 $4b
    cp a                                          ; $451c: $bf
    db $e3                                        ; $451d: $e3
    cp d                                          ; $451e: $ba
    db $e3                                        ; $451f: $e3
    rrca                                          ; $4520: $0f
    dec hl                                        ; $4521: $2b
    dec hl                                        ; $4522: $2b
    dec hl                                        ; $4523: $2b
    ld c, e                                       ; $4524: $4b
    or l                                          ; $4525: $b5
    ldh [$d2], a                                  ; $4526: $e0 $d2
    pop hl                                        ; $4528: $e1
    ret nz                                        ; $4529: $c0

    rst $20                                       ; $452a: $e7
    cp c                                          ; $452b: $b9
    ldh [$a2], a                                  ; $452c: $e0 $a2
    or d                                          ; $452e: $b2
    db $e4                                        ; $452f: $e4
    inc l                                         ; $4530: $2c
    ret nz                                        ; $4531: $c0

    ld [c], a                                     ; $4532: $e2
    cp e                                          ; $4533: $bb
    pop hl                                        ; $4534: $e1
    cp [hl]                                       ; $4535: $be
    rst $20                                       ; $4536: $e7
    dec bc                                        ; $4537: $0b
    cp a                                          ; $4538: $bf
    pop hl                                        ; $4539: $e1
    dec hl                                        ; $453a: $2b
    inc bc                                        ; $453b: $03
    dec bc                                        ; $453c: $0b
    ld l, e                                       ; $453d: $6b
    ld a, h                                       ; $453e: $7c
    ld [c], a                                     ; $453f: $e2
    or $e0                                        ; $4540: $f6 $e0
    ret nz                                        ; $4542: $c0

    pop hl                                        ; $4543: $e1
    add e                                         ; $4544: $83
    db $e3                                        ; $4545: $e3
    db $fc                                        ; $4546: $fc
    db $eb                                        ; $4547: $eb
    ld [hl], b                                    ; $4548: $70
    pop hl                                        ; $4549: $e1
    nop                                           ; $454a: $00
    add $e2                                       ; $454b: $c6 $e2
    ret nz                                        ; $454d: $c0

    db $ed                                        ; $454e: $ed
    jp z, $c2e1                                   ; $454f: $ca $e1 $c2

    ld [c], a                                     ; $4552: $e2
    cp [hl]                                       ; $4553: $be
    db $e3                                        ; $4554: $e3
    ld a, a                                       ; $4555: $7f
    ldh [rLCDC], a                                ; $4556: $e0 $40
    db $e4                                        ; $4558: $e4
    ld e, d                                       ; $4559: $5a
    jp hl                                         ; $455a: $e9


    ld [hl], b                                    ; $455b: $70
    ld b, b                                       ; $455c: $40
    db $e4                                        ; $455d: $e4
    pop bc                                        ; $455e: $c1
    db $e3                                        ; $455f: $e3
    ret nz                                        ; $4560: $c0

    db $ec                                        ; $4561: $ec
    ld b, h                                       ; $4562: $44
    ld [c], a                                     ; $4563: $e2
    ld l, e                                       ; $4564: $6b
    ld l, e                                       ; $4565: $6b
    ld c, e                                       ; $4566: $4b
    rst $38                                       ; $4567: $ff
    ldh [rP1], a                                  ; $4568: $e0 $00
    ld hl, sp-$3e                                 ; $456a: $f8 $c2
    nop                                           ; $456c: $00
    db $e4                                        ; $456d: $e4
    add d                                         ; $456e: $82
    db $ec                                        ; $456f: $ec
    pop af                                        ; $4570: $f1
    jp nz, $eaa7                                  ; $4571: $c2 $a7 $ea

    ld sp, hl                                     ; $4574: $f9
    jp $e1c4                                      ; $4575: $c3 $c4 $e1


    pop bc                                        ; $4578: $c1
    pop hl                                        ; $4579: $e1
    nop                                           ; $457a: $00
    dec sp                                        ; $457b: $3b
    pop hl                                        ; $457c: $e1
    cp a                                          ; $457d: $bf
    pop hl                                        ; $457e: $e1
    add b                                         ; $457f: $80
    db $e4                                        ; $4580: $e4
    ld b, b                                       ; $4581: $40
    db $ed                                        ; $4582: $ed
    ccf                                           ; $4583: $3f
    db $e3                                        ; $4584: $e3
    add b                                         ; $4585: $80
    di                                            ; $4586: $f3
    cp [hl]                                       ; $4587: $be
    pop hl                                        ; $4588: $e1
    ld a, d                                       ; $4589: $7a
    pop bc                                        ; $458a: $c1
    add b                                         ; $458b: $80
    jp nz, Jump_000_00c4                          ; $458c: $c2 $c4 $00

    db $e4                                        ; $458f: $e4
    cp $ec                                        ; $4590: $fe $ec
    ccf                                           ; $4592: $3f
    push hl                                       ; $4593: $e5
    ret nz                                        ; $4594: $c0

    pop af                                        ; $4595: $f1
    add d                                         ; $4596: $82
    ldh [$7b], a                                  ; $4597: $e0 $7b
    jp Jump_000_002b                              ; $4599: $c3 $2b $00


    ld b, d                                       ; $459c: $42
    ret nz                                        ; $459d: $c0

    db $fc                                        ; $459e: $fc
    ldh [rIF], a                                  ; $459f: $e0 $0f
    db $e4                                        ; $45a1: $e4
    ld c, l                                       ; $45a2: $4d
    push hl                                       ; $45a3: $e5
    pop bc                                        ; $45a4: $c1
    jp nz, $ee41                                  ; $45a5: $c2 $41 $ee

    add hl, sp                                    ; $45a8: $39
    and $03                                       ; $45a9: $e6 $03
    ldh [$08], a                                  ; $45ab: $e0 $08
    ld c, b                                       ; $45ad: $48
    ret nz                                        ; $45ae: $c0

    ld b, b                                       ; $45af: $40
    call nz, $c1fd                                ; $45b0: $c4 $fd $c1
    dec bc                                        ; $45b3: $0b
    call z, $fbe5                                 ; $45b4: $cc $e5 $fb
    and [hl]                                      ; $45b7: $a6
    ld hl, sp-$19                                 ; $45b8: $f8 $e7
    cp l                                          ; $45ba: $bd
    ldh a, [rNR10]                                ; $45bb: $f0 $10
    ld [bc], a                                    ; $45bd: $02
    pop bc                                        ; $45be: $c1

jr_05b_45bf:
    pop bc                                        ; $45bf: $c1
    call nz, $c1f9                                ; $45c0: $c4 $f9 $c1
    ret nz                                        ; $45c3: $c0

    push bc                                       ; $45c4: $c5
    inc l                                         ; $45c5: $2c
    rst $08                                       ; $45c6: $cf
    add $0e                                       ; $45c7: $c6 $0e
    jp $f67f                                      ; $45c9: $c3 $7f $f6


    nop                                           ; $45cc: $00
    ret nz                                        ; $45cd: $c0

    db $f4                                        ; $45ce: $f4
    ret z                                         ; $45cf: $c8

    and d                                         ; $45d0: $a2
    add c                                         ; $45d1: $81
    db $e4                                        ; $45d2: $e4
    rst $38                                       ; $45d3: $ff
    and l                                         ; $45d4: $a5
    add e                                         ; $45d5: $83
    call $a4fe                                    ; $45d6: $cd $fe $a4
    add c                                         ; $45d9: $81
    ldh [rSTAT], a                                ; $45da: $e0 $41
    jp nz, Jump_05b_4b83                          ; $45dc: $c2 $83 $4b

    ld l, e                                       ; $45df: $6b
    cp c                                          ; $45e0: $b9
    and e                                         ; $45e1: $a3
    nop                                           ; $45e2: $00
    push hl                                       ; $45e3: $e5
    inc bc                                        ; $45e4: $03
    push bc                                       ; $45e5: $c5
    di                                            ; $45e6: $f3
    ret                                           ; $45e7: $c9


    ld bc, $6cee                                  ; $45e8: $01 $ee $6c
    ld de, $4a4c                                  ; $45eb: $11 $4c $4a
    and b                                         ; $45ee: $a0
    ld bc, $c1c3                                  ; $45ef: $01 $c3 $c1
    ld [c], a                                     ; $45f2: $e2
    ld l, e                                       ; $45f3: $6b
    nop                                           ; $45f4: $00
    and b                                         ; $45f5: $a0
    adc c                                         ; $45f6: $89
    and $05                                       ; $45f7: $e6 $05
    and d                                         ; $45f9: $a2
    jr @-$02                                      ; $45fa: $18 $fc

    db $e3                                        ; $45fc: $e3
    add b                                         ; $45fd: $80
    db $eb                                        ; $45fe: $eb
    ld a, [$2ca7]                                 ; $45ff: $fa $a7 $2c
    inc l                                         ; $4602: $2c
    ld a, [bc]                                    ; $4603: $0a
    and c                                         ; $4604: $a1
    pop bc                                        ; $4605: $c1
    and c                                         ; $4606: $a1
    ld a, d                                       ; $4607: $7a
    ldh [$80], a                                  ; $4608: $e0 $80
    or l                                          ; $460a: $b5
    add e                                         ; $460b: $83
    sub e                                         ; $460c: $93
    and l                                         ; $460d: $a5
    rst $00                                       ; $460e: $c7
    add e                                         ; $460f: $83
    db $fd                                        ; $4610: $fd
    and a                                         ; $4611: $a7
    ret nz                                        ; $4612: $c0

    and a                                         ; $4613: $a7
    ld a, d                                       ; $4614: $7a
    and a                                         ; $4615: $a7
    db $ec                                        ; $4616: $ec
    add b                                         ; $4617: $80
    ld c, h                                       ; $4618: $4c
    ld [bc], a                                    ; $4619: $02
    rst $00                                       ; $461a: $c7
    add c                                         ; $461b: $81
    ld l, e                                       ; $461c: $6b
    cp l                                          ; $461d: $bd
    ldh [$f5], a                                  ; $461e: $e0 $f5
    and e                                         ; $4620: $a3
    ret nz                                        ; $4621: $c0

    rst $20                                       ; $4622: $e7
    jp $8582                                      ; $4623: $c3 $82 $85


    ld a, [c]                                     ; $4626: $f2
    ret nz                                        ; $4627: $c0

    ld [$3e00], a                                 ; $4628: $ea $00 $3e
    ret nz                                        ; $462b: $c0

    add [hl]                                      ; $462c: $86
    add b                                         ; $462d: $80
    ld a, l                                       ; $462e: $7d
    add h                                         ; $462f: $84
    ret nz                                        ; $4630: $c0

    and d                                         ; $4631: $a2
    sbc h                                         ; $4632: $9c
    adc e                                         ; $4633: $8b
    dec c                                         ; $4634: $0d
    xor l                                         ; $4635: $ad
    ei                                            ; $4636: $fb
    adc d                                         ; $4637: $8a
    jr nz, jr_05b_45bf                            ; $4638: $20 $85

    nop                                           ; $463a: $00
    ld d, l                                       ; $463b: $55
    push hl                                       ; $463c: $e5
    inc de                                        ; $463d: $13
    add h                                         ; $463e: $84
    db $fd                                        ; $463f: $fd
    ei                                            ; $4640: $fb
    cp e                                          ; $4641: $bb
    adc l                                         ; $4642: $8d
    push de                                       ; $4643: $d5
    ld a, a                                       ; $4644: $7f
    xor l                                         ; $4645: $ad
    ei                                            ; $4646: $fb
    push de                                       ; $4647: $d5
    ld a, a                                       ; $4648: $7f
    ld [bc], a                                    ; $4649: $02
    xor $00                                       ; $464a: $ee $00
    ld a, c                                       ; $464c: $79
    ld h, a                                       ; $464d: $67
    push de                                       ; $464e: $d5
    ld a, a                                       ; $464f: $7f
    ret nz                                        ; $4650: $c0

    ei                                            ; $4651: $fb
    push de                                       ; $4652: $d5
    ld a, a                                       ; $4653: $7f
    rst $38                                       ; $4654: $ff
    db $dd                                        ; $4655: $dd
    push de                                       ; $4656: $d5
    ld a, [hl]                                    ; $4657: $7e
    cp a                                          ; $4658: $bf
    jp c, Jump_05b_7ad5                           ; $4659: $da $d5 $7a

    nop                                           ; $465c: $00
    ld bc, $d59d                                  ; $465d: $01 $9d $d5
    ld a, a                                       ; $4660: $7f
    ld bc, $7b8f                                  ; $4661: $01 $8f $7b
    ld b, e                                       ; $4664: $43
    add b                                         ; $4665: $80
    rst $20                                       ; $4666: $e7
    push de                                       ; $4667: $d5
    ld a, c                                       ; $4668: $79
    ld bc, $c091                                  ; $4669: $01 $91 $c0
    rst $28                                       ; $466c: $ef
    nop                                           ; $466d: $00
    push de                                       ; $466e: $d5
    ld a, d                                       ; $466f: $7a
    ld bc, $7090                                  ; $4670: $01 $90 $70
    xor h                                         ; $4673: $ac
    push de                                       ; $4674: $d5
    ld a, c                                       ; $4675: $79
    ld bc, $3092                                  ; $4676: $01 $92 $30
    xor h                                         ; $4679: $ac
    push de                                       ; $467a: $d5
    ld a, e                                       ; $467b: $7b
    ld bc, $0090                                  ; $467c: $01 $90 $00
    ld b, e                                       ; $467f: $43
    xor e                                         ; $4680: $ab
    push de                                       ; $4681: $d5
    ld a, c                                       ; $4682: $79
    ld bc, $0493                                  ; $4683: $01 $93 $04
    set 2, l                                      ; $4686: $cb $d5
    ld a, e                                       ; $4688: $7b
    ld bc, $0391                                  ; $4689: $01 $91 $03
    xor l                                         ; $468c: $ad
    push de                                       ; $468d: $d5
    ld a, c                                       ; $468e: $79
    nop                                           ; $468f: $00
    ld bc, $c092                                  ; $4690: $01 $92 $c0
    xor $d5                                       ; $4693: $ee $d5
    ld [hl], a                                    ; $4695: $77
    add hl, sp                                    ; $4696: $39
    or c                                          ; $4697: $b1
    inc a                                         ; $4698: $3c
    nop                                           ; $4699: $00
    dec sp                                        ; $469a: $3b
    dec b                                         ; $469b: $05
    push de                                       ; $469c: $d5
    ld a, l                                       ; $469d: $7d
    ld bc, $00bf                                  ; $469e: $01 $bf $00
    rst $38                                       ; $46a1: $ff
    rst $38                                       ; $46a2: $ff
    bit 2, c                                      ; $46a3: $cb $51
    db $db                                        ; $46a5: $db
    rst $38                                       ; $46a6: $ff
    add c                                         ; $46a7: $81
    rst $38                                       ; $46a8: $ff
    rst $38                                       ; $46a9: $ff
    rst $38                                       ; $46aa: $ff
    rst $38                                       ; $46ab: $ff
    rst $38                                       ; $46ac: $ff
    rst $38                                       ; $46ad: $ff
    rst $38                                       ; $46ae: $ff
    add b                                         ; $46af: $80
    db $fc                                        ; $46b0: $fc
    nop                                           ; $46b1: $00
    ld [hl], l                                    ; $46b2: $75
    rst $38                                       ; $46b3: $ff
    ld b, b                                       ; $46b4: $40
    rst $38                                       ; $46b5: $ff
    push hl                                       ; $46b6: $e5
    ld e, h                                       ; $46b7: $5c
    inc a                                         ; $46b8: $3c
    ld e, $ae                                     ; $46b9: $1e $ae
    or c                                          ; $46bb: $b1
    ld h, a                                       ; $46bc: $67
    sbc a                                         ; $46bd: $9f
    ld [hl], c                                    ; $46be: $71
    ld d, a                                       ; $46bf: $57
    ld a, [c]                                     ; $46c0: $f2
    inc hl                                        ; $46c1: $23
    nop                                           ; $46c2: $00
    inc a                                         ; $46c3: $3c
    rra                                           ; $46c4: $1f
    ret nz                                        ; $46c5: $c0

    or $aa                                        ; $46c6: $f6 $aa
    ld l, c                                       ; $46c8: $69
    inc a                                         ; $46c9: $3c
    ld d, $3f                                     ; $46ca: $16 $3f
    db $fd                                        ; $46cc: $fd
    inc a                                         ; $46cd: $3c
    rra                                           ; $46ce: $1f
    inc de                                        ; $46cf: $13
    add sp, -$50                                  ; $46d0: $e8 $b0
    cpl                                           ; $46d2: $2f
    nop                                           ; $46d3: $00
    inc a                                         ; $46d4: $3c
    rra                                           ; $46d5: $1f

Call_05b_46d6:
    di                                            ; $46d6: $f3
    ld b, e                                       ; $46d7: $43
    ld d, h                                       ; $46d8: $54
    jr nz, jr_05b_4733                            ; $46d9: $20 $58

    rrca                                          ; $46db: $0f
    ld c, e                                       ; $46dc: $4b
    ld [$153c], sp                                ; $46dd: $08 $3c $15
    add d                                         ; $46e0: $82
    ld b, [hl]                                    ; $46e1: $46
    ld e, b                                       ; $46e2: $58
    ld c, $00                                     ; $46e3: $0e $00
    di                                            ; $46e5: $f3
    db $eb                                        ; $46e6: $eb
    ld h, a                                       ; $46e7: $67
    sub [hl]                                      ; $46e8: $96
    add d                                         ; $46e9: $82
    ld l, l                                       ; $46ea: $6d
    xor c                                         ; $46eb: $a9
    xor h                                         ; $46ec: $ac
    ld h, a                                       ; $46ed: $67
    sbc a                                         ; $46ee: $9f
    ld [$ff86], sp                                ; $46ef: $08 $86 $ff
    rst $38                                       ; $46f2: $ff
    add l                                         ; $46f3: $85
    jr jr_05b_46f6                                ; $46f4: $18 $00

jr_05b_46f6:
    cp a                                          ; $46f6: $bf

Jump_05b_46f7:
    rst $38                                       ; $46f7: $ff
    ld d, l                                       ; $46f8: $55
    rst $18                                       ; $46f9: $df
    rst $38                                       ; $46fa: $ff
    rst $38                                       ; $46fb: $ff
    ret nz                                        ; $46fc: $c0

    rst $38                                       ; $46fd: $ff
    rst $38                                       ; $46fe: $ff
    rst $38                                       ; $46ff: $ff
    rst $38                                       ; $4700: $ff
    rst $38                                       ; $4701: $ff

Call_05b_4702:
    sbc e                                         ; $4702: $9b
    ld l, e                                       ; $4703: $6b
    call c, Call_000_00ff                         ; $4704: $dc $ff $00
    rst $38                                       ; $4707: $ff
    rst $38                                       ; $4708: $ff
    rst $38                                       ; $4709: $ff
    rst $38                                       ; $470a: $ff
    rst $38                                       ; $470b: $ff
    rst $38                                       ; $470c: $ff
    rst $38                                       ; $470d: $ff
    rst $38                                       ; $470e: $ff
    rst $38                                       ; $470f: $ff
    rst $38                                       ; $4710: $ff
    rst $38                                       ; $4711: $ff
    rst $38                                       ; $4712: $ff
    rst $38                                       ; $4713: $ff
    rst $38                                       ; $4714: $ff
    rst $38                                       ; $4715: $ff
    rst $38                                       ; $4716: $ff
    nop                                           ; $4717: $00
    rst $38                                       ; $4718: $ff
    rst $38                                       ; $4719: $ff
    rst $38                                       ; $471a: $ff
    rst $38                                       ; $471b: $ff
    rst $38                                       ; $471c: $ff
    rst $38                                       ; $471d: $ff
    rst $38                                       ; $471e: $ff
    rst $38                                       ; $471f: $ff
    rst $38                                       ; $4720: $ff
    rst $38                                       ; $4721: $ff
    rst $38                                       ; $4722: $ff
    rst $38                                       ; $4723: $ff
    rst $38                                       ; $4724: $ff
    rst $38                                       ; $4725: $ff
    rst $38                                       ; $4726: $ff
    rst $38                                       ; $4727: $ff
    nop                                           ; $4728: $00
    rst $38                                       ; $4729: $ff
    rst $38                                       ; $472a: $ff
    ld [hl], h                                    ; $472b: $74
    dec bc                                        ; $472c: $0b
    rst $38                                       ; $472d: $ff
    rst $38                                       ; $472e: $ff
    rst $38                                       ; $472f: $ff
    rst $38                                       ; $4730: $ff
    rst $38                                       ; $4731: $ff
    rst $38                                       ; $4732: $ff

jr_05b_4733:
    rst $38                                       ; $4733: $ff
    rst $38                                       ; $4734: $ff
    rst $38                                       ; $4735: $ff
    rst $38                                       ; $4736: $ff
    ld [hl], l                                    ; $4737: $75
    dec b                                         ; $4738: $05
    nop                                           ; $4739: $00
    nop                                           ; $473a: $00
    nop                                           ; $473b: $00
    sub a                                         ; $473c: $97
    ld [hl], b                                    ; $473d: $70
    xor [hl]                                      ; $473e: $ae
    add b                                         ; $473f: $80
    rst $38                                       ; $4740: $ff
    xor $00                                       ; $4741: $ee $00
    rst $38                                       ; $4743: $ff
    rst $38                                       ; $4744: $ff
    rst $20                                       ; $4745: $e7
    and $60                                       ; $4746: $e6 $60
    sub [hl]                                      ; $4748: $96
    cp a                                          ; $4749: $bf
    db $e3                                        ; $474a: $e3
    xor d                                         ; $474b: $aa
    and l                                         ; $474c: $a5
    rst $38                                       ; $474d: $ff
    ldh [$aa], a                                  ; $474e: $e0 $aa
    ret nz                                        ; $4750: $c0

    rst $38                                       ; $4751: $ff
    rst $28                                       ; $4752: $ef
    xor $5b                                       ; $4753: $ee $5b
    sbc $bf                                       ; $4755: $de $bf
    pop hl                                        ; $4757: $e1
    xor d                                         ; $4758: $aa
    ld e, b                                       ; $4759: $58
    xor e                                         ; $475a: $ab
    ld sp, $e0ff                                  ; $475b: $31 $ff $e0
    xor e                                         ; $475e: $ab
    ld e, b                                       ; $475f: $58
    nop                                           ; $4760: $00
    cp [hl]                                       ; $4761: $be
    db $e3                                        ; $4762: $e3
    jp z, $c0ff                                   ; $4763: $ca $ff $c0

    add sp, -$41                                  ; $4766: $e8 $bf
    ldh [$c2], a                                  ; $4768: $e0 $c2
    db $e3                                        ; $476a: $e3
    cp [hl]                                       ; $476b: $be
    db $e3                                        ; $476c: $e3
    ld sp, $cae1                                  ; $476d: $31 $e1 $ca
    rst $38                                       ; $4770: $ff
    or $c0                                        ; $4771: $f6 $c0
    jp hl                                         ; $4773: $e9


    ld e, e                                       ; $4774: $5b
    ld e, [hl]                                    ; $4775: $5e
    add h                                         ; $4776: $84
    ldh [rBGP], a                                 ; $4777: $e0 $47
    ld b, [hl]                                    ; $4779: $46
    ld d, l                                       ; $477a: $55
    ld d, h                                       ; $477b: $54
    bit 0, [hl]                                   ; $477c: $cb $46
    ld b, a                                       ; $477e: $47
    ld a, e                                       ; $477f: $7b
    ldh [$81], a                                  ; $4780: $e0 $81
    ret nz                                        ; $4782: $c0

    rst $38                                       ; $4783: $ff
    ret nz                                        ; $4784: $c0

    ldh a, [$3c]                                  ; $4785: $f0 $3c
    ld [hl], $fd                                  ; $4787: $36 $fd
    jr nc, @+$01                                  ; $4789: $30 $ff

    ldh [$36], a                                  ; $478b: $e0 $36
    inc a                                         ; $478d: $3c
    ld sp, $ac31                                  ; $478e: $31 $31 $ac
    xor c                                         ; $4791: $a9
    ld hl, sp-$40                                 ; $4792: $f8 $c0
    rst $38                                       ; $4794: $ff
    ld b, b                                       ; $4795: $40
    db $ec                                        ; $4796: $ec
    pop bc                                        ; $4797: $c1
    ldh [rSCY], a                                 ; $4798: $e0 $42
    ld l, d                                       ; $479a: $6a
    ld l, b                                       ; $479b: $68
    ld l, b                                       ; $479c: $68
    ld l, d                                       ; $479d: $6a
    add a                                         ; $479e: $87
    jr nc, jr_05b_47d1                            ; $479f: $30 $30

    ld b, d                                       ; $47a1: $42

Jump_05b_47a2:
    cp a                                          ; $47a2: $bf
    ldh [$7f], a                                  ; $47a3: $e0 $7f
    ldh [$ca], a                                  ; $47a5: $e0 $ca
    rst $38                                       ; $47a7: $ff
    ret nz                                        ; $47a8: $c0

    ret                                           ; $47a9: $c9


    ld sp, $31ff                                  ; $47aa: $31 $ff $31
    ld c, c                                       ; $47ad: $49
    ld c, b                                       ; $47ae: $48
    ld l, d                                       ; $47af: $6a
    ld l, l                                       ; $47b0: $6d
    ld l, h                                       ; $47b1: $6c
    ld l, h                                       ; $47b2: $6c
    ld l, l                                       ; $47b3: $6d
    add $bf                                       ; $47b4: $c6 $bf
    ldh [rOBP0], a                                ; $47b6: $e0 $48
    ld c, c                                       ; $47b8: $49
    ld a, a                                       ; $47b9: $7f
    pop hl                                        ; $47ba: $e1
    jp z, $e8ff                                   ; $47bb: $ca $ff $e8

    rst $20                                       ; $47be: $e7
    inc d                                         ; $47bf: $14
    add hl, hl                                    ; $47c0: $29

Jump_05b_47c1:
    sbc a                                         ; $47c1: $9f
    ld sp, $3931                                  ; $47c2: $31 $31 $39
    ld l, d                                       ; $47c5: $6a
    ld l, l                                       ; $47c6: $6d
    ret nz                                        ; $47c7: $c0

    pop hl                                        ; $47c8: $e1
    cp a                                          ; $47c9: $bf
    pop hl                                        ; $47ca: $e1
    add hl, sp                                    ; $47cb: $39
    rst $20                                       ; $47cc: $e7
    ld sp, $a031                                  ; $47cd: $31 $31 $a0
    ret nz                                        ; $47d0: $c0

jr_05b_47d1:
    rst $38                                       ; $47d1: $ff
    jp hl                                         ; $47d2: $e9


    add sp, $24                                   ; $47d3: $e8 $24
    nop                                           ; $47d5: $00
    ld sp, $31ff                                  ; $47d6: $31 $ff $31
    ld d, d                                       ; $47d9: $52
    ld l, c                                       ; $47da: $69
    ld l, e                                       ; $47db: $6b
    ld l, e                                       ; $47dc: $6b
    jr nc, jr_05b_480f                            ; $47dd: $30 $30

    ld l, e                                       ; $47df: $6b
    sbc a                                         ; $47e0: $9f

Jump_05b_47e1:
    ld l, e                                       ; $47e1: $6b
    ld l, c                                       ; $47e2: $69
    jr nc, jr_05b_4815                            ; $47e3: $30 $30

    ld d, d                                       ; $47e5: $52
    ret nz                                        ; $47e6: $c0

    rst $38                                       ; $47e7: $ff
    db $ec                                        ; $47e8: $ec
    db $eb                                        ; $47e9: $eb
    jr nz, jr_05b_481c                            ; $47ea: $20 $30

    ret nz                                        ; $47ec: $c0

    rst $38                                       ; $47ed: $ff
    ret nz                                        ; $47ee: $c0

    cp $40                                        ; $47ef: $fe $40
    rst $38                                       ; $47f1: $ff
    add b                                         ; $47f2: $80
    ld hl, sp+$28                                 ; $47f3: $f8 $28
    dec d                                         ; $47f5: $15
    ret nz                                        ; $47f6: $c0

    rst $18                                       ; $47f7: $df
    ret nz                                        ; $47f8: $c0

    ld a, [$1739]                                 ; $47f9: $fa $39 $17
    ld b, b                                       ; $47fc: $40
    rst $18                                       ; $47fd: $df
    nop                                           ; $47fe: $00
    ld sp, hl                                     ; $47ff: $f9
    jr nz, jr_05b_4818                            ; $4800: $20 $16

    dec d                                         ; $4802: $15
    ret nz                                        ; $4803: $c0

    cp a                                          ; $4804: $bf
    ret nz                                        ; $4805: $c0

    ld sp, hl                                     ; $4806: $f9
    inc c                                         ; $4807: $0c
    ld a, a                                       ; $4808: $7f
    pop hl                                        ; $4809: $e1
    ld b, b                                       ; $480a: $40
    and b                                         ; $480b: $a0
    ld d, h                                       ; $480c: $54
    ld d, l                                       ; $480d: $55
    ld b, b                                       ; $480e: $40

jr_05b_480f:
    cp a                                          ; $480f: $bf
    rst $38                                       ; $4810: $ff
    rst $38                                       ; $4811: $ff
    rst $38                                       ; $4812: $ff
    rst $38                                       ; $4813: $ff
    rst $38                                       ; $4814: $ff

jr_05b_4815:
    rst $38                                       ; $4815: $ff
    nop                                           ; $4816: $00
    rst $38                                       ; $4817: $ff

jr_05b_4818:
    rst $38                                       ; $4818: $ff
    rst $38                                       ; $4819: $ff
    rst $38                                       ; $481a: $ff
    rst $38                                       ; $481b: $ff

jr_05b_481c:
    rst $38                                       ; $481c: $ff
    rst $38                                       ; $481d: $ff
    rst $38                                       ; $481e: $ff
    rst $38                                       ; $481f: $ff
    rst $38                                       ; $4820: $ff
    rst $38                                       ; $4821: $ff
    rst $38                                       ; $4822: $ff
    rst $38                                       ; $4823: $ff
    rst $38                                       ; $4824: $ff
    rst $38                                       ; $4825: $ff
    rst $38                                       ; $4826: $ff
    nop                                           ; $4827: $00
    rst $38                                       ; $4828: $ff
    rst $38                                       ; $4829: $ff
    rst $38                                       ; $482a: $ff
    rst $38                                       ; $482b: $ff
    rst $38                                       ; $482c: $ff
    rst $38                                       ; $482d: $ff
    rst $38                                       ; $482e: $ff
    rst $38                                       ; $482f: $ff
    rst $38                                       ; $4830: $ff
    rst $38                                       ; $4831: $ff
    rst $38                                       ; $4832: $ff
    rst $38                                       ; $4833: $ff
    rst $38                                       ; $4834: $ff
    rst $38                                       ; $4835: $ff
    rst $38                                       ; $4836: $ff
    rst $38                                       ; $4837: $ff
    nop                                           ; $4838: $00
    rst $38                                       ; $4839: $ff
    rst $38                                       ; $483a: $ff
    rst $38                                       ; $483b: $ff
    rst $38                                       ; $483c: $ff
    rst $38                                       ; $483d: $ff
    rst $38                                       ; $483e: $ff
    rst $38                                       ; $483f: $ff
    rst $38                                       ; $4840: $ff
    rst $38                                       ; $4841: $ff
    rst $38                                       ; $4842: $ff
    rst $38                                       ; $4843: $ff
    rst $38                                       ; $4844: $ff
    rst $38                                       ; $4845: $ff
    rst $38                                       ; $4846: $ff
    rst $38                                       ; $4847: $ff
    rst $38                                       ; $4848: $ff
    nop                                           ; $4849: $00
    rst $38                                       ; $484a: $ff
    rst $38                                       ; $484b: $ff
    rst $38                                       ; $484c: $ff
    rst $38                                       ; $484d: $ff
    rst $38                                       ; $484e: $ff
    rst $38                                       ; $484f: $ff
    rst $38                                       ; $4850: $ff
    rst $38                                       ; $4851: $ff
    rst $38                                       ; $4852: $ff
    rst $38                                       ; $4853: $ff
    rst $38                                       ; $4854: $ff
    rst $38                                       ; $4855: $ff
    rst $38                                       ; $4856: $ff
    rst $38                                       ; $4857: $ff
    rst $38                                       ; $4858: $ff
    rst $38                                       ; $4859: $ff
    nop                                           ; $485a: $00
    rst $38                                       ; $485b: $ff
    rst $38                                       ; $485c: $ff
    rst $38                                       ; $485d: $ff
    rst $38                                       ; $485e: $ff
    rst $38                                       ; $485f: $ff
    rst $38                                       ; $4860: $ff
    rst $38                                       ; $4861: $ff
    rst $38                                       ; $4862: $ff
    rst $38                                       ; $4863: $ff
    rst $38                                       ; $4864: $ff
    rst $38                                       ; $4865: $ff
    rst $38                                       ; $4866: $ff
    rst $38                                       ; $4867: $ff
    rst $38                                       ; $4868: $ff
    rst $38                                       ; $4869: $ff
    rst $38                                       ; $486a: $ff
    nop                                           ; $486b: $00
    rst $38                                       ; $486c: $ff
    rst $38                                       ; $486d: $ff
    rst $38                                       ; $486e: $ff
    rst $38                                       ; $486f: $ff
    rst $38                                       ; $4870: $ff
    rst $38                                       ; $4871: $ff
    rst $38                                       ; $4872: $ff
    rst $38                                       ; $4873: $ff
    rst $38                                       ; $4874: $ff
    rst $38                                       ; $4875: $ff
    rst $38                                       ; $4876: $ff
    rst $38                                       ; $4877: $ff
    rst $38                                       ; $4878: $ff
    rst $38                                       ; $4879: $ff
    rst $38                                       ; $487a: $ff
    rst $38                                       ; $487b: $ff
    nop                                           ; $487c: $00
    rst $38                                       ; $487d: $ff
    rst $38                                       ; $487e: $ff
    rst $38                                       ; $487f: $ff
    rst $38                                       ; $4880: $ff
    rst $38                                       ; $4881: $ff
    rst $38                                       ; $4882: $ff
    rst $38                                       ; $4883: $ff
    rst $38                                       ; $4884: $ff
    rst $38                                       ; $4885: $ff
    rst $38                                       ; $4886: $ff
    rst $38                                       ; $4887: $ff
    rst $38                                       ; $4888: $ff
    rst $38                                       ; $4889: $ff
    rst $38                                       ; $488a: $ff
    rst $38                                       ; $488b: $ff
    rst $38                                       ; $488c: $ff
    nop                                           ; $488d: $00
    rst $38                                       ; $488e: $ff
    rst $38                                       ; $488f: $ff
    rst $38                                       ; $4890: $ff
    rst $38                                       ; $4891: $ff
    rst $38                                       ; $4892: $ff
    rst $38                                       ; $4893: $ff
    rst $38                                       ; $4894: $ff
    rst $38                                       ; $4895: $ff
    rst $38                                       ; $4896: $ff
    rst $38                                       ; $4897: $ff
    rst $38                                       ; $4898: $ff
    rst $38                                       ; $4899: $ff
    rst $38                                       ; $489a: $ff
    rst $38                                       ; $489b: $ff
    rst $38                                       ; $489c: $ff
    rst $38                                       ; $489d: $ff
    nop                                           ; $489e: $00
    rst $38                                       ; $489f: $ff
    rst $38                                       ; $48a0: $ff
    rst $38                                       ; $48a1: $ff
    rst $38                                       ; $48a2: $ff
    rst $38                                       ; $48a3: $ff
    rst $38                                       ; $48a4: $ff
    rst $38                                       ; $48a5: $ff
    rst $38                                       ; $48a6: $ff
    rst $38                                       ; $48a7: $ff
    rst $38                                       ; $48a8: $ff
    rst $38                                       ; $48a9: $ff
    rst $38                                       ; $48aa: $ff
    rst $38                                       ; $48ab: $ff
    rst $38                                       ; $48ac: $ff
    rst $38                                       ; $48ad: $ff
    rst $38                                       ; $48ae: $ff
    nop                                           ; $48af: $00
    rst $38                                       ; $48b0: $ff
    rst $38                                       ; $48b1: $ff
    rst $38                                       ; $48b2: $ff
    rst $38                                       ; $48b3: $ff
    rst $38                                       ; $48b4: $ff
    rst $38                                       ; $48b5: $ff
    rst $38                                       ; $48b6: $ff
    rst $38                                       ; $48b7: $ff
    rst $38                                       ; $48b8: $ff
    rst $38                                       ; $48b9: $ff
    rst $38                                       ; $48ba: $ff
    rst $38                                       ; $48bb: $ff
    rst $38                                       ; $48bc: $ff
    rst $38                                       ; $48bd: $ff
    rst $38                                       ; $48be: $ff
    rst $38                                       ; $48bf: $ff
    nop                                           ; $48c0: $00
    rst $38                                       ; $48c1: $ff
    rst $38                                       ; $48c2: $ff
    rst $38                                       ; $48c3: $ff
    rst $38                                       ; $48c4: $ff
    rst $38                                       ; $48c5: $ff
    rst $38                                       ; $48c6: $ff
    rst $38                                       ; $48c7: $ff
    rst $38                                       ; $48c8: $ff
    rst $38                                       ; $48c9: $ff
    rst $38                                       ; $48ca: $ff
    rst $38                                       ; $48cb: $ff
    rst $38                                       ; $48cc: $ff
    rst $38                                       ; $48cd: $ff
    rst $38                                       ; $48ce: $ff
    rst $38                                       ; $48cf: $ff
    db $fc                                        ; $48d0: $fc
    nop                                           ; $48d1: $00
    nop                                           ; $48d2: $00
    nop                                           ; $48d3: $00
    and l                                         ; $48d4: $a5
    nop                                           ; $48d5: $00
    rst $38                                       ; $48d6: $ff
    push hl                                       ; $48d7: $e5
    ld [hl-], a                                   ; $48d8: $32
    or $e6                                        ; $48d9: $f6 $e6
    rst $30                                       ; $48db: $f7
    rst $20                                       ; $48dc: $e7
    dec [hl]                                      ; $48dd: $35
    db $ec                                        ; $48de: $ec
    xor $37                                       ; $48df: $ee $37
    db $ec                                        ; $48e1: $ec
    jp c, $c7f0                                   ; $48e2: $da $f0 $c7

    add sp, $33                                   ; $48e5: $e8 $33
    ld sp, $f2e0                                  ; $48e7: $31 $e0 $f2
    ld [hl], $30                                  ; $48ea: $36 $30
    scf                                           ; $48ec: $37
    cp a                                          ; $48ed: $bf
    ld h, $20                                     ; $48ee: $26 $20
    daa                                           ; $48f0: $27
    db $10                                        ; $48f1: $10
    ld d, $17                                     ; $48f2: $16 $17
    jp nz, Jump_000_34f6                          ; $48f4: $c2 $f6 $34

    rst $38                                       ; $48f7: $ff
    ld [hl], $32                                  ; $48f8: $36 $32
    jr nc, jr_05b_4933                            ; $48fa: $30 $37

    ld sp, $3133                                  ; $48fc: $31 $33 $31
    inc sp                                        ; $48ff: $33
    nop                                           ; $4900: $00
    and b                                         ; $4901: $a0
    ei                                            ; $4902: $fb
    rst $38                                       ; $4903: $ff
    rst $28                                       ; $4904: $ef
    nop                                           ; $4905: $00
    nop                                           ; $4906: $00
    nop                                           ; $4907: $00
    db $10                                        ; $4908: $10
    ld c, c                                       ; $4909: $49
    ld b, b                                       ; $490a: $40
    ld c, c                                       ; $490b: $49
    adc h                                         ; $490c: $8c
    ld c, e                                       ; $490d: $4b
    dec a                                         ; $490e: $3d
    ld c, l                                       ; $490f: $4d
    ret nz                                        ; $4910: $c0

    rra                                           ; $4911: $1f
    adc d                                         ; $4912: $8a
    inc bc                                        ; $4913: $03
    add b                                         ; $4914: $80
    ld [bc], a                                    ; $4915: $02
    ld h, b                                       ; $4916: $60
    ld bc, $03ef                                  ; $4917: $01 $ef $03
    db $f4                                        ; $491a: $f4
    inc bc                                        ; $491b: $03
    adc d                                         ; $491c: $8a
    inc bc                                        ; $491d: $03
    add b                                         ; $491e: $80
    ld [bc], a                                    ; $491f: $02
    rra                                           ; $4920: $1f
    ld [bc], a                                    ; $4921: $02
    ld c, e                                       ; $4922: $4b
    ld c, $38                                     ; $4923: $0e $38
    ld bc, $038a                                  ; $4925: $01 $8a $03
    ld [$0825], sp                                ; $4928: $08 $25 $08
    dec h                                         ; $492b: $25
    ld [$0825], sp                                ; $492c: $08 $25 $08
    dec h                                         ; $492f: $25
    ld [$0825], sp                                ; $4930: $08 $25 $08

jr_05b_4933:
    dec h                                         ; $4933: $25
    ld [$0825], sp                                ; $4934: $08 $25 $08
    dec h                                         ; $4937: $25
    ld [$0825], sp                                ; $4938: $08 $25 $08
    dec h                                         ; $493b: $25
    ld [$0825], sp                                ; $493c: $08 $25 $08
    dec h                                         ; $493f: $25
    ld e, a                                       ; $4940: $5f
    ld c, d                                       ; $4941: $4a
    ld c, d                                       ; $4942: $4a
    ld c, d                                       ; $4943: $4a
    ld l, d                                       ; $4944: $6a
    dec bc                                        ; $4945: $0b
    rst $38                                       ; $4946: $ff
    push hl                                       ; $4947: $e5
    inc c                                         ; $4948: $0c
    rst $38                                       ; $4949: $ff
    and $63                                       ; $494a: $e6 $63
    ld c, h                                       ; $494c: $4c
    ld c, h                                       ; $494d: $4c
    db $fd                                        ; $494e: $fd
    and $f5                                       ; $494f: $e6 $f5
    ldh [$f0], a                                  ; $4951: $e0 $f0
    ld [c], a                                     ; $4953: $e2
    inc l                                         ; $4954: $2c
    inc l                                         ; $4955: $2c
    pop hl                                        ; $4956: $e1
    rst $20                                       ; $4957: $e7
    add h                                         ; $4958: $84
    rst $10                                       ; $4959: $d7
    rst $20                                       ; $495a: $e7
    pop bc                                        ; $495b: $c1
    jp hl                                         ; $495c: $e9


    dec bc                                        ; $495d: $0b
    db $d3                                        ; $495e: $d3
    db $e4                                        ; $495f: $e4
    ret nz                                        ; $4960: $c0

    add sp, -$47                                  ; $4961: $e8 $b9
    ldh [$b2], a                                  ; $4963: $e0 $b2
    db $e4                                        ; $4965: $e4
    inc l                                         ; $4966: $2c
    db $fc                                        ; $4967: $fc
    ret nz                                        ; $4968: $c0

    db $f4                                        ; $4969: $f4
    add d                                         ; $496a: $82
    ldh [rWX], a                                  ; $496b: $e0 $4b
    dec bc                                        ; $496d: $0b
    ld l, e                                       ; $496e: $6b
    ld l, e                                       ; $496f: $6b
    ld c, e                                       ; $4970: $4b
    ld c, e                                       ; $4971: $4b
    add c                                         ; $4972: $81
    dec hl                                        ; $4973: $2b
    cp [hl]                                       ; $4974: $be
    db $e4                                        ; $4975: $e4
    add d                                         ; $4976: $82
    pop hl                                        ; $4977: $e1
    ld a, a                                       ; $4978: $7f
    ld [c], a                                     ; $4979: $e2
    db $fc                                        ; $497a: $fc
    rst $20                                       ; $497b: $e7
    ld [hl], b                                    ; $497c: $70
    pop hl                                        ; $497d: $e1
    add c                                         ; $497e: $81
    di                                            ; $497f: $f3
    inc c                                         ; $4980: $0c
    ld a, a                                       ; $4981: $7f
    ld l, d                                       ; $4982: $6a
    dec bc                                        ; $4983: $0b
    ld l, e                                       ; $4984: $6b
    dec bc                                        ; $4985: $0b
    dec hl                                        ; $4986: $2b
    ld l, e                                       ; $4987: $6b
    ld l, e                                       ; $4988: $6b
    cp e                                          ; $4989: $bb
    ldh [$83], a                                  ; $498a: $e0 $83
    ld c, e                                       ; $498c: $4b
    ld c, e                                       ; $498d: $4b
    inc a                                         ; $498e: $3c
    db $ec                                        ; $498f: $ec
    inc [hl]                                      ; $4990: $34
    and $30                                       ; $4991: $e6 $30
    db $e3                                        ; $4993: $e3
    inc hl                                        ; $4994: $23
    ldh [$3e], a                                  ; $4995: $e0 $3e
    ldh a, [$0b]                                  ; $4997: $f0 $0b
    ld [hl], $c0                                  ; $4999: $36 $c0
    ldh [$0b], a                                  ; $499b: $e0 $0b
    ld l, e                                       ; $499d: $6b
    add h                                         ; $499e: $84
    ldh [$2b], a                                  ; $499f: $e0 $2b
    dec hl                                        ; $49a1: $2b
    cp a                                          ; $49a2: $bf
    db $e3                                        ; $49a3: $e3
    ld bc, $00e5                                  ; $49a4: $01 $e5 $00
    add d                                         ; $49a7: $82
    jp hl                                         ; $49a8: $e9


    pop af                                        ; $49a9: $f1
    jp nz, $c6e3                                  ; $49aa: $c2 $e3 $c6

    ld hl, sp-$3c                                 ; $49ad: $f8 $c4
    pop af                                        ; $49af: $f1
    jp $e0c7                                      ; $49b0: $c3 $c7 $e0


    cp l                                          ; $49b3: $bd
    ldh [$bf], a                                  ; $49b4: $e0 $bf
    pop hl                                        ; $49b6: $e1
    inc bc                                        ; $49b7: $03
    ld l, e                                       ; $49b8: $6b
    dec hl                                        ; $49b9: $2b
    ret nz                                        ; $49ba: $c0

    and $40                                       ; $49bb: $e6 $40
    db $ec                                        ; $49bd: $ec
    jr nc, @-$19                                  ; $49be: $30 $e5

    add b                                         ; $49c0: $80
    ldh [$b8], a                                  ; $49c1: $e0 $b8
    adc $c0                                       ; $49c3: $ce $c0
    ld [c], a                                     ; $49c5: $e2
    ld b, b                                       ; $49c6: $40
    ccf                                           ; $49c7: $3f
    ldh [$7e], a                                  ; $49c8: $e0 $7e
    pop hl                                        ; $49ca: $e1
    ld a, $e2                                     ; $49cb: $3e $e2
    add d                                         ; $49cd: $82
    jp $ebfe                                      ; $49ce: $c3 $fe $eb


    ccf                                           ; $49d1: $3f
    push hl                                       ; $49d2: $e5
    inc l                                         ; $49d3: $2c
    cp b                                          ; $49d4: $b8
    rst $08                                       ; $49d5: $cf
    ld c, $c0                                     ; $49d6: $0e $c0
    db $e3                                        ; $49d8: $e3
    dec hl                                        ; $49d9: $2b
    ld l, e                                       ; $49da: $6b
    dec hl                                        ; $49db: $2b
    cp a                                          ; $49dc: $bf
    ld [c], a                                     ; $49dd: $e2
    inc a                                         ; $49de: $3c
    ret z                                         ; $49df: $c8

    add l                                         ; $49e0: $85
    push bc                                       ; $49e1: $c5
    or d                                          ; $49e2: $b2
    pop bc                                        ; $49e3: $c1
    nop                                           ; $49e4: $00
    ld b, c                                       ; $49e5: $41
    rst $20                                       ; $49e6: $e7
    cp b                                          ; $49e7: $b8
    adc $c0                                       ; $49e8: $ce $c0
    db $e4                                        ; $49ea: $e4
    ld [bc], a                                    ; $49eb: $02
    pop hl                                        ; $49ec: $e1
    ld a, [$fce0]                                 ; $49ed: $fa $e0 $fc
    and [hl]                                      ; $49f0: $a6
    add hl, sp                                    ; $49f1: $39
    jp nz, $a3fb                                  ; $49f2: $c2 $fb $a3

    jr nz, @-$06                                  ; $49f5: $20 $f8

    rst $20                                       ; $49f7: $e7
    cp b                                          ; $49f8: $b8
    pop de                                        ; $49f9: $d1
    ret nz                                        ; $49fa: $c0

    and $ba                                       ; $49fb: $e6 $ba
    ld [c], a                                     ; $49fd: $e2
    cp h                                          ; $49fe: $bc
    and l                                         ; $49ff: $a5
    inc l                                         ; $4a00: $2c
    rst $08                                       ; $4a01: $cf
    add $09                                       ; $4a02: $c6 $09
    jp $c000                                      ; $4a04: $c3 $00 $c0


    push bc                                       ; $4a07: $c5
    cp b                                          ; $4a08: $b8
    jp z, $ee00                                   ; $4a09: $ca $00 $ee

    add b                                         ; $4a0c: $80
    rst $20                                       ; $4a0d: $e7
    ret z                                         ; $4a0e: $c8

    and d                                         ; $4a0f: $a2
    add c                                         ; $4a10: $81
    db $e4                                        ; $4a11: $e4
    rst $38                                       ; $4a12: $ff
    and l                                         ; $4a13: $a5
    ld a, a                                       ; $4a14: $7f
    add sp, $01                                   ; $4a15: $e8 $01
    inc l                                         ; $4a17: $2c
    ld [hl], $c7                                  ; $4a18: $36 $c7
    add b                                         ; $4a1a: $80
    pop bc                                        ; $4a1b: $c1
    ld b, c                                       ; $4a1c: $41
    ldh [$bf], a                                  ; $4a1d: $e0 $bf
    db $e4                                        ; $4a1f: $e4
    nop                                           ; $4a20: $00
    rst $08                                       ; $4a21: $cf
    ld l, a                                       ; $4a22: $6f
    and e                                         ; $4a23: $a3
    rst $38                                       ; $4a24: $ff
    ret                                           ; $4a25: $c9


    ld [bc], a                                    ; $4a26: $02
    ld hl, sp-$55                                 ; $4a27: $f8 $ab
    ld a, [hl+]                                   ; $4a29: $2a
    ret nz                                        ; $4a2a: $c0

    db $e3                                        ; $4a2b: $e3
    ld a, [hl]                                    ; $4a2c: $7e
    jp nz, $e200                                  ; $4a2d: $c2 $00 $e2

    ld c, h                                       ; $4a30: $4c
    and d                                         ; $4a31: $a2
    jp z, Jump_000_3dc4                           ; $4a32: $ca $c4 $3d

    and l                                         ; $4a35: $a5
    inc c                                         ; $4a36: $0c
    add b                                         ; $4a37: $80
    and $41                                       ; $4a38: $e6 $41
    xor $0c                                       ; $4a3a: $ee $0c
    ld a, [hl+]                                   ; $4a3c: $2a
    cp a                                          ; $4a3d: $bf
    add sp, $3e                                   ; $4a3e: $e8 $3e
    and d                                         ; $4a40: $a2
    dec b                                         ; $4a41: $05
    push hl                                       ; $4a42: $e5
    rst $00                                       ; $4a43: $c7
    add e                                         ; $4a44: $83
    ldh [$fd], a                                  ; $4a45: $e0 $fd
    and a                                         ; $4a47: $a7
    rst $20                                       ; $4a48: $e7
    add e                                         ; $4a49: $83
    ldh [$84], a                                  ; $4a4a: $e0 $84
    di                                            ; $4a4c: $f3
    add b                                         ; $4a4d: $80
    or d                                          ; $4a4e: $b2
    add h                                         ; $4a4f: $84
    ld a, [hl+]                                   ; $4a50: $2a
    ld a, [hl+]                                   ; $4a51: $2a
    ld a, [hl+]                                   ; $4a52: $2a
    inc b                                         ; $4a53: $04
    rlca                                          ; $4a54: $07
    and c                                         ; $4a55: $a1
    add e                                         ; $4a56: $83
    ret nz                                        ; $4a57: $c0

    ld l, e                                       ; $4a58: $6b
    ld a, c                                       ; $4a59: $79
    and d                                         ; $4a5a: $a2
    cp e                                          ; $4a5b: $bb
    add c                                         ; $4a5c: $81
    add d                                         ; $4a5d: $82
    push bc                                       ; $4a5e: $c5
    cp l                                          ; $4a5f: $bd
    xor c                                         ; $4a60: $a9
    dec hl                                        ; $4a61: $2b
    jp z, $c006                                   ; $4a62: $ca $06 $c0

    db $eb                                        ; $4a65: $eb
    ld a, [hl+]                                   ; $4a66: $2a
    ld c, e                                       ; $4a67: $4b
    jp nz, $ba84                                  ; $4a68: $c2 $84 $ba

    add b                                         ; $4a6b: $80
    ld a, a                                       ; $4a6c: $7f
    ld [c], a                                     ; $4a6d: $e2
    ld b, c                                       ; $4a6e: $41
    sbc c                                         ; $4a6f: $99
    rst $30                                       ; $4a70: $f7
    add h                                         ; $4a71: $84
    nop                                           ; $4a72: $00
    inc sp                                        ; $4a73: $33

jr_05b_4a74:
    add [hl]                                      ; $4a74: $86
    dec e                                         ; $4a75: $1d
    add l                                         ; $4a76: $85
    ld d, d                                       ; $4a77: $52
    push hl                                       ; $4a78: $e5
    ld c, c                                       ; $4a79: $49
    and $41                                       ; $4a7a: $e6 $41
    sub d                                         ; $4a7c: $92
    add b                                         ; $4a7d: $80
    add sp, -$2b                                  ; $4a7e: $e8 $d5
    ld a, a                                       ; $4a80: $7f
    ld b, c                                       ; $4a81: $41
    sub d                                         ; $4a82: $92
    nop                                           ; $4a83: $00
    inc sp                                        ; $4a84: $33
    add sp, -$6b                                  ; $4a85: $e8 $95
    ld l, h                                       ; $4a87: $6c
    push de                                       ; $4a88: $d5
    ld [hl], l                                    ; $4a89: $75
    ld b, c                                       ; $4a8a: $41
    adc e                                         ; $4a8b: $8b
    ld b, b                                       ; $4a8c: $40
    rst $20                                       ; $4a8d: $e7
    jr nc, jr_05b_4a74                            ; $4a8e: $30 $e4

    push de                                       ; $4a90: $d5
    ld [hl], l                                    ; $4a91: $75
    ld b, c                                       ; $4a92: $41
    sub [hl]                                      ; $4a93: $96
    nop                                           ; $4a94: $00
    ret nz                                        ; $4a95: $c0

    db $eb                                        ; $4a96: $eb
    push de                                       ; $4a97: $d5
    ld a, b                                       ; $4a98: $78
    ld b, c                                       ; $4a99: $41
    sub b                                         ; $4a9a: $90
    ret nz                                        ; $4a9b: $c0

    add sp, -$41                                  ; $4a9c: $e8 $bf
    ret z                                         ; $4a9e: $c8

    push de                                       ; $4a9f: $d5
    ld [hl], d                                    ; $4aa0: $72
    ld b, c                                       ; $4aa1: $41
    sub c                                         ; $4aa2: $91
    ret nz                                        ; $4aa3: $c0

    ldh a, [rP1]                                  ; $4aa4: $f0 $00
    push de                                       ; $4aa6: $d5
    halt                                          ; $4aa7: $76
    ld b, c                                       ; $4aa8: $41
    sub d                                         ; $4aa9: $92
    inc hl                                        ; $4aaa: $23
    ld [hl], b                                    ; $4aab: $70
    push de                                       ; $4aac: $d5
    ld [hl], l                                    ; $4aad: $75
    ld b, c                                       ; $4aae: $41
    sub d                                         ; $4aaf: $92
    ld b, b                                       ; $4ab0: $40
    ldh a, [$d5]                                  ; $4ab1: $f0 $d5
    ld [hl], l                                    ; $4ab3: $75
    ld b, c                                       ; $4ab4: $41
    sub c                                         ; $4ab5: $91
    nop                                           ; $4ab6: $00
    ret nz                                        ; $4ab7: $c0

    ld a, [c]                                     ; $4ab8: $f2
    push de                                       ; $4ab9: $d5
    ld [hl], h                                    ; $4aba: $74
    pop bc                                        ; $4abb: $c1
    ld sp, $67eb                                  ; $4abc: $31 $eb $67
    ld [hl], l                                    ; $4abf: $75

Jump_05b_4ac0:
    ret z                                         ; $4ac0: $c8

    push de                                       ; $4ac1: $d5
    ld a, b                                       ; $4ac2: $78
    add b                                         ; $4ac3: $80
    or c                                          ; $4ac4: $b1
    ret nz                                        ; $4ac5: $c0

    db $ed                                        ; $4ac6: $ed
    nop                                           ; $4ac7: $00
    push de                                       ; $4ac8: $d5
    ld a, e                                       ; $4ac9: $7b
    db $ec                                        ; $4aca: $ec
    xor [hl]                                      ; $4acb: $ae
    ld hl, sp+$35                                 ; $4acc: $f8 $35
    push de                                       ; $4ace: $d5
    ld [hl], b                                    ; $4acf: $70
    db $ec                                        ; $4ad0: $ec
    or l                                          ; $4ad1: $b5
    cp b                                          ; $4ad2: $b8
    ld a, [hl+]                                   ; $4ad3: $2a
    push de                                       ; $4ad4: $d5
    ld [hl], a                                    ; $4ad5: $77
    db $ec                                        ; $4ad6: $ec
    or d                                          ; $4ad7: $b2
    nop                                           ; $4ad8: $00
    ret nz                                        ; $4ad9: $c0

    ld l, [hl]                                    ; $4ada: $6e
    push de                                       ; $4adb: $d5
    ld [hl], a                                    ; $4adc: $77
    add b                                         ; $4add: $80
    or d                                          ; $4ade: $b2
    add b                                         ; $4adf: $80
    rst $28                                       ; $4ae0: $ef
    push de                                       ; $4ae1: $d5
    ld [hl], a                                    ; $4ae2: $77
    db $ec                                        ; $4ae3: $ec
    or h                                          ; $4ae4: $b4
    ret nz                                        ; $4ae5: $c0

    ld b, e                                       ; $4ae6: $43
    inc sp                                        ; $4ae7: $33
    stop                                          ; $4ae8: $10 $00
    db $eb                                        ; $4aea: $eb
    xor h                                         ; $4aeb: $ac
    add b                                         ; $4aec: $80
    cp b                                          ; $4aed: $b8
    pop bc                                        ; $4aee: $c1
    xor e                                         ; $4aef: $ab
    ld h, l                                       ; $4af0: $65
    or a                                          ; $4af1: $b7
    add b                                         ; $4af2: $80
    or l                                          ; $4af3: $b5
    pop bc                                        ; $4af4: $c1
    rst $38                                       ; $4af5: $ff
    add b                                         ; $4af6: $80
    cp e                                          ; $4af7: $bb
    ret nz                                        ; $4af8: $c0

    rst $38                                       ; $4af9: $ff
    nop                                           ; $4afa: $00
    ld l, l                                       ; $4afb: $6d
    and a                                         ; $4afc: $a7
    db $ec                                        ; $4afd: $ec
    xor e                                         ; $4afe: $ab
    rst $38                                       ; $4aff: $ff
    rst $38                                       ; $4b00: $ff
    db $ec                                        ; $4b01: $ec
    cp a                                          ; $4b02: $bf
    ld bc, $d56a                                  ; $4b03: $01 $6a $d5
    ld [hl], $ec                                  ; $4b06: $36 $ec
    ld a, [c]                                     ; $4b08: $f2
    ret nz                                        ; $4b09: $c0

    ldh a, [rP1]                                  ; $4b0a: $f0 $00
    push de                                       ; $4b0c: $d5
    dec [hl]                                      ; $4b0d: $35
    db $ec                                        ; $4b0e: $ec
    ld a, [c]                                     ; $4b0f: $f2
    ld hl, sp+$6f                                 ; $4b10: $f8 $6f
    nop                                           ; $4b12: $00
    reti                                          ; $4b13: $d9


    pop bc                                        ; $4b14: $c1
    ld l, $f9                                     ; $4b15: $2e $f9
    db $db                                        ; $4b17: $db
    ld a, [hl+]                                   ; $4b18: $2a
    pop de                                        ; $4b19: $d1
    rst $10                                       ; $4b1a: $d7
    ld [hl], d                                    ; $4b1b: $72
    nop                                           ; $4b1c: $00
    rst $38                                       ; $4b1d: $ff
    rst $38                                       ; $4b1e: $ff
    or b                                          ; $4b1f: $b0
    call c, $ffff                                 ; $4b20: $dc $ff $ff
    xor [hl]                                      ; $4b23: $ae
    or a                                          ; $4b24: $b7
    jp c, $80ff                                   ; $4b25: $da $ff $80

    rst $38                                       ; $4b28: $ff
    rst $38                                       ; $4b29: $ff
    rst $38                                       ; $4b2a: $ff

Jump_05b_4b2b:
    ret nz                                        ; $4b2b: $c0

    rst $38                                       ; $4b2c: $ff
    nop                                           ; $4b2d: $00
    sbc c                                         ; $4b2e: $99
    res 0, b                                      ; $4b2f: $cb $80
    adc d                                         ; $4b31: $8a
    di                                            ; $4b32: $f3
    db $eb                                        ; $4b33: $eb
    ld a, b                                       ; $4b34: $78
    pop de                                        ; $4b35: $d1
    add hl, de                                    ; $4b36: $19
    xor l                                         ; $4b37: $ad
    ld l, e                                       ; $4b38: $6b
    ld c, a                                       ; $4b39: $4f
    sbc l                                         ; $4b3a: $9d
    adc h                                         ; $4b3b: $8c
    adc [hl]                                      ; $4b3c: $8e
    sub [hl]                                      ; $4b3d: $96
    nop                                           ; $4b3e: $00
    dec c                                         ; $4b3f: $0d
    ld b, e                                       ; $4b40: $43
    rst $38                                       ; $4b41: $ff
    rst $38                                       ; $4b42: $ff
    ret nz                                        ; $4b43: $c0

    add hl, sp                                    ; $4b44: $39
    jp c, $efff                                   ; $4b45: $da $ff $ef

    rst $18                                       ; $4b48: $df
    rst $38                                       ; $4b49: $ff
    rst $38                                       ; $4b4a: $ff
    ret nz                                        ; $4b4b: $c0

    rst $38                                       ; $4b4c: $ff
    rst $38                                       ; $4b4d: $ff
    rst $38                                       ; $4b4e: $ff
    nop                                           ; $4b4f: $00
    rst $38                                       ; $4b50: $ff
    rst $38                                       ; $4b51: $ff
    ld e, e                                       ; $4b52: $5b
    adc c                                         ; $4b53: $89
    call c, $ffff                                 ; $4b54: $dc $ff $ff
    rst $38                                       ; $4b57: $ff
    rst $38                                       ; $4b58: $ff
    rst $38                                       ; $4b59: $ff
    rst $38                                       ; $4b5a: $ff
    rst $38                                       ; $4b5b: $ff
    rst $38                                       ; $4b5c: $ff
    rst $38                                       ; $4b5d: $ff
    rst $38                                       ; $4b5e: $ff
    rst $38                                       ; $4b5f: $ff
    nop                                           ; $4b60: $00
    rst $38                                       ; $4b61: $ff
    rst $38                                       ; $4b62: $ff
    rst $38                                       ; $4b63: $ff
    rst $38                                       ; $4b64: $ff
    rst $38                                       ; $4b65: $ff
    rst $38                                       ; $4b66: $ff
    rst $38                                       ; $4b67: $ff
    rst $38                                       ; $4b68: $ff
    rst $38                                       ; $4b69: $ff
    rst $38                                       ; $4b6a: $ff
    rst $38                                       ; $4b6b: $ff
    rst $38                                       ; $4b6c: $ff
    rst $38                                       ; $4b6d: $ff
    rst $38                                       ; $4b6e: $ff
    rst $38                                       ; $4b6f: $ff
    rst $38                                       ; $4b70: $ff
    nop                                           ; $4b71: $00
    rst $38                                       ; $4b72: $ff
    rst $38                                       ; $4b73: $ff
    rst $38                                       ; $4b74: $ff
    rst $38                                       ; $4b75: $ff
    rst $38                                       ; $4b76: $ff
    rst $38                                       ; $4b77: $ff
    rst $38                                       ; $4b78: $ff
    rst $38                                       ; $4b79: $ff
    ld [hl], h                                    ; $4b7a: $74
    add hl, bc                                    ; $4b7b: $09
    rst $38                                       ; $4b7c: $ff
    rst $38                                       ; $4b7d: $ff
    rst $38                                       ; $4b7e: $ff
    rst $38                                       ; $4b7f: $ff
    rst $38                                       ; $4b80: $ff
    rst $38                                       ; $4b81: $ff
    nop                                           ; $4b82: $00

Jump_05b_4b83:
    rst $38                                       ; $4b83: $ff
    rst $38                                       ; $4b84: $ff
    rst $38                                       ; $4b85: $ff
    rst $38                                       ; $4b86: $ff
    nop                                           ; $4b87: $00
    ld b, a                                       ; $4b88: $47
    nop                                           ; $4b89: $00
    nop                                           ; $4b8a: $00
    nop                                           ; $4b8b: $00
    rst $38                                       ; $4b8c: $ff
    ld c, [hl]                                    ; $4b8d: $4e
    ld c, [hl]                                    ; $4b8e: $4e
    ld c, [hl]                                    ; $4b8f: $4e
    adc h                                         ; $4b90: $8c
    ld e, e                                       ; $4b91: $5b
    ld e, e                                       ; $4b92: $5b
    ld e, h                                       ; $4b93: $5c
    ld e, l                                       ; $4b94: $5d
    ld e, l                                       ; $4b95: $5d
    ld sp, $e1ff                                  ; $4b96: $31 $ff $e1
    dec hl                                        ; $4b99: $2b
    inc l                                         ; $4b9a: $2c
    jr nz, @+$01                                  ; $4b9b: $20 $ff

    pop hl                                        ; $4b9d: $e1
    nop                                           ; $4b9e: $00
    rst $38                                       ; $4b9f: $ff
    rst $38                                       ; $4ba0: $ff
    ld hl, sp-$19                                 ; $4ba1: $f8 $e7
    and $c1                                       ; $4ba3: $e6 $c1
    pop hl                                        ; $4ba5: $e1
    jp nz, Jump_000_31e4                          ; $4ba6: $c2 $e4 $31

    ld sp, $1211                                  ; $4ba9: $31 $11 $12
    ld hl, $22f9                                  ; $4bac: $21 $f9 $22

jr_05b_4baf:
    ret nz                                        ; $4baf: $c0

    rst $38                                       ; $4bb0: $ff
    ret nz                                        ; $4bb1: $c0

    db $eb                                        ; $4bb2: $eb
    adc h                                         ; $4bb3: $8c
    ld e, e                                       ; $4bb4: $5b
    ld h, b                                       ; $4bb5: $60
    ld sp, $8f31                                  ; $4bb6: $31 $31 $8f
    ld b, a                                       ; $4bb9: $47
    ld b, [hl]                                    ; $4bba: $46
    ld b, [hl]                                    ; $4bbb: $46
    ld b, a                                       ; $4bbc: $47
    cp [hl]                                       ; $4bbd: $be
    push hl                                       ; $4bbe: $e5
    ret nz                                        ; $4bbf: $c0

    rst $38                                       ; $4bc0: $ff
    ld [$8ce9], a                                 ; $4bc1: $ea $e9 $8c
    rst $38                                       ; $4bc4: $ff
    ld e, e                                       ; $4bc5: $5b
    ld e, a                                       ; $4bc6: $5f
    ld sp, $463e                                  ; $4bc7: $31 $3e $46
    ld [hl], $6a                                  ; $4bca: $36 $6a
    jr nc, jr_05b_4baf                            ; $4bcc: $30 $e1

    ld [hl], $be                                  ; $4bce: $36 $be
    db $e4                                        ; $4bd0: $e4
    inc a                                         ; $4bd1: $3c
    ldh [$ca], a                                  ; $4bd2: $e0 $ca
    rst $38                                       ; $4bd4: $ff
    add sp, -$19                                  ; $4bd5: $e8 $e7
    ld e, e                                       ; $4bd7: $5b
    ld e, e                                       ; $4bd8: $5b
    ld e, [hl]                                    ; $4bd9: $5e
    rst $38                                       ; $4bda: $ff
    ld sp, $6d52                                  ; $4bdb: $31 $52 $6d
    jr nc, jr_05b_4c4d                            ; $4bde: $30 $6d

    ld l, d                                       ; $4be0: $6a

jr_05b_4be1:
    jr nc, jr_05b_4c13                            ; $4be1: $30 $30

    di                                            ; $4be3: $f3
    ld [hl], $37                                  ; $4be4: $36 $37
    ret nz                                        ; $4be6: $c0

    rst $38                                       ; $4be7: $ff
    ret nz                                        ; $4be8: $c0

    ldh a, [$61]                                  ; $4be9: $f0 $61
    ld sp, $6a53                                  ; $4beb: $31 $53 $6a
    jp nc, $e3bf                                  ; $4bee: $d2 $bf $e3

    add hl, sp                                    ; $4bf1: $39
    ret nz                                        ; $4bf2: $c0

    rst $38                                       ; $4bf3: $ff
    ret nz                                        ; $4bf4: $c0

    di                                            ; $4bf5: $f3
    jr nc, @-$3f                                  ; $4bf6: $30 $bf

    db $e3                                        ; $4bf8: $e3
    ld c, b                                       ; $4bf9: $48
    ld c, c                                       ; $4bfa: $49
    db $fc                                        ; $4bfb: $fc
    ret nz                                        ; $4bfc: $c0

    rst $38                                       ; $4bfd: $ff

jr_05b_4bfe:
    add b                                         ; $4bfe: $80
    pop af                                        ; $4bff: $f1
    ld d, d                                       ; $4c00: $52
    jr nc, jr_05b_4c69                            ; $4c01: $30 $66

    ld l, c                                       ; $4c03: $69
    jr nc, jr_05b_4c36                            ; $4c04: $30 $30

    ld b, e                                       ; $4c06: $43
    ld l, e                                       ; $4c07: $6b
    ld l, c                                       ; $4c08: $69
    ld a, a                                       ; $4c09: $7f
    ld [c], a                                     ; $4c0a: $e2
    ret nz                                        ; $4c0b: $c0

    rst $38                                       ; $4c0c: $ff
    ret nz                                        ; $4c0d: $c0

    ldh a, [$3f]                                  ; $4c0e: $f0 $3f
    db $e4                                        ; $4c10: $e4
    ld d, d                                       ; $4c11: $52
    ret nz                                        ; $4c12: $c0

jr_05b_4c13:
    rst $38                                       ; $4c13: $ff
    ld a, [$f200]                                 ; $4c14: $fa $00 $f2
    ld l, c                                       ; $4c17: $69
    add c                                         ; $4c18: $81
    ldh [rBCPD], a                                ; $4c19: $e0 $69
    ld h, [hl]                                    ; $4c1b: $66
    jr nc, jr_05b_4c4e                            ; $4c1c: $30 $30

    ld d, e                                       ; $4c1e: $53
    jr nc, jr_05b_4be1                            ; $4c1f: $30 $c0

    rst $38                                       ; $4c21: $ff
    add b                                         ; $4c22: $80
    ld a, [$ffc0]                                 ; $4c23: $fa $c0 $ff
    ld b, b                                       ; $4c26: $40
    jp nc, $3039                                  ; $4c27: $d2 $39 $30

    cp a                                          ; $4c2a: $bf
    call nz, $ff40                                ; $4c2b: $c4 $40 $ff
    sbc d                                         ; $4c2e: $9a
    rst $28                                       ; $4c2f: $ef
    xor $8e                                       ; $4c30: $ee $8e
    ret nz                                        ; $4c32: $c0

    and b                                         ; $4c33: $a0
    ld c, l                                       ; $4c34: $4d
    ld [hl-], a                                   ; $4c35: $32

jr_05b_4c36:
    cp a                                          ; $4c36: $bf
    db $e3                                        ; $4c37: $e3
    add b                                         ; $4c38: $80
    ld [c], a                                     ; $4c39: $e2
    rla                                           ; $4c3a: $17
    add hl, de                                    ; $4c3b: $19
    jr z, jr_05b_4bfe                             ; $4c3c: $28 $c0

    rst $38                                       ; $4c3e: $ff
    jp hl                                         ; $4c3f: $e9


    add sp, $4f                                   ; $4c40: $e8 $4f
    adc [hl]                                      ; $4c42: $8e
    cp a                                          ; $4c43: $bf
    and b                                         ; $4c44: $a0
    cp a                                          ; $4c45: $bf
    db $e4                                        ; $4c46: $e4
    rst $38                                       ; $4c47: $ff
    and d                                         ; $4c48: $a2
    di                                            ; $4c49: $f3
    dec d                                         ; $4c4a: $15
    ld d, $c0                                     ; $4c4b: $16 $c0

jr_05b_4c4d:
    rst $38                                       ; $4c4d: $ff

jr_05b_4c4e:
    ret nz                                        ; $4c4e: $c0

    jp hl                                         ; $4c4f: $e9


    ld c, a                                       ; $4c50: $4f
    adc [hl]                                      ; $4c51: $8e
    ld e, a                                       ; $4c52: $5f
    ld sp, $3177                                  ; $4c53: $31 $77 $31
    xor a                                         ; $4c56: $af
    ld [hl], c                                    ; $4c57: $71
    dec a                                         ; $4c58: $3d
    ldh [$30], a                                  ; $4c59: $e0 $30
    ld [hl], c                                    ; $4c5b: $71
    xor a                                         ; $4c5c: $af
    ld a, d                                       ; $4c5d: $7a
    add c                                         ; $4c5e: $81
    di                                            ; $4c5f: $f3
    rla                                           ; $4c60: $17
    jr z, @-$34                                   ; $4c61: $28 $ca

    rst $38                                       ; $4c63: $ff
    ret nz                                        ; $4c64: $c0

    jp hl                                         ; $4c65: $e9


    ld c, a                                       ; $4c66: $4f
    adc [hl]                                      ; $4c67: $8e
    ld h, b                                       ; $4c68: $60

jr_05b_4c69:
    ld [hl], b                                    ; $4c69: $70
    rst $38                                       ; $4c6a: $ff
    xor d                                         ; $4c6b: $aa
    ld a, c                                       ; $4c6c: $79
    ld l, [hl]                                    ; $4c6d: $6e
    ld d, h                                       ; $4c6e: $54
    ld d, l                                       ; $4c6f: $55
    ld l, [hl]                                    ; $4c70: $6e
    ld a, c                                       ; $4c71: $79
    xor d                                         ; $4c72: $aa
    ld bc, $7f70                                  ; $4c73: $01 $70 $7f
    ld [c], a                                     ; $4c76: $e2
    jp z, $ffff                                   ; $4c77: $ca $ff $ff

    rst $38                                       ; $4c7a: $ff
    rst $38                                       ; $4c7b: $ff
    rst $38                                       ; $4c7c: $ff
    rst $38                                       ; $4c7d: $ff
    rst $38                                       ; $4c7e: $ff
    rst $38                                       ; $4c7f: $ff
    rst $38                                       ; $4c80: $ff
    rst $38                                       ; $4c81: $ff
    rst $38                                       ; $4c82: $ff
    nop                                           ; $4c83: $00
    rst $38                                       ; $4c84: $ff
    rst $38                                       ; $4c85: $ff
    rst $38                                       ; $4c86: $ff
    rst $38                                       ; $4c87: $ff
    rst $38                                       ; $4c88: $ff
    rst $38                                       ; $4c89: $ff
    rst $38                                       ; $4c8a: $ff
    rst $38                                       ; $4c8b: $ff
    rst $38                                       ; $4c8c: $ff
    rst $38                                       ; $4c8d: $ff
    rst $38                                       ; $4c8e: $ff
    rst $38                                       ; $4c8f: $ff
    rst $38                                       ; $4c90: $ff
    rst $38                                       ; $4c91: $ff
    rst $38                                       ; $4c92: $ff
    rst $38                                       ; $4c93: $ff
    nop                                           ; $4c94: $00
    rst $38                                       ; $4c95: $ff
    rst $38                                       ; $4c96: $ff
    rst $38                                       ; $4c97: $ff
    rst $38                                       ; $4c98: $ff
    rst $38                                       ; $4c99: $ff
    rst $38                                       ; $4c9a: $ff
    rst $38                                       ; $4c9b: $ff
    rst $38                                       ; $4c9c: $ff
    rst $38                                       ; $4c9d: $ff
    rst $38                                       ; $4c9e: $ff
    rst $38                                       ; $4c9f: $ff
    rst $38                                       ; $4ca0: $ff
    rst $38                                       ; $4ca1: $ff
    rst $38                                       ; $4ca2: $ff
    rst $38                                       ; $4ca3: $ff
    rst $38                                       ; $4ca4: $ff
    nop                                           ; $4ca5: $00
    rst $38                                       ; $4ca6: $ff
    rst $38                                       ; $4ca7: $ff
    rst $38                                       ; $4ca8: $ff
    rst $38                                       ; $4ca9: $ff
    rst $38                                       ; $4caa: $ff
    rst $38                                       ; $4cab: $ff
    rst $38                                       ; $4cac: $ff
    rst $38                                       ; $4cad: $ff
    rst $38                                       ; $4cae: $ff
    rst $38                                       ; $4caf: $ff
    rst $38                                       ; $4cb0: $ff
    rst $38                                       ; $4cb1: $ff
    rst $38                                       ; $4cb2: $ff
    rst $38                                       ; $4cb3: $ff
    rst $38                                       ; $4cb4: $ff
    rst $38                                       ; $4cb5: $ff
    nop                                           ; $4cb6: $00
    rst $38                                       ; $4cb7: $ff
    rst $38                                       ; $4cb8: $ff
    rst $38                                       ; $4cb9: $ff
    rst $38                                       ; $4cba: $ff
    rst $38                                       ; $4cbb: $ff
    rst $38                                       ; $4cbc: $ff
    rst $38                                       ; $4cbd: $ff
    rst $38                                       ; $4cbe: $ff
    rst $38                                       ; $4cbf: $ff
    rst $38                                       ; $4cc0: $ff
    rst $38                                       ; $4cc1: $ff
    rst $38                                       ; $4cc2: $ff
    rst $38                                       ; $4cc3: $ff
    rst $38                                       ; $4cc4: $ff
    rst $38                                       ; $4cc5: $ff
    rst $38                                       ; $4cc6: $ff
    nop                                           ; $4cc7: $00
    rst $38                                       ; $4cc8: $ff
    rst $38                                       ; $4cc9: $ff
    rst $38                                       ; $4cca: $ff
    rst $38                                       ; $4ccb: $ff
    rst $38                                       ; $4ccc: $ff
    rst $38                                       ; $4ccd: $ff
    rst $38                                       ; $4cce: $ff
    rst $38                                       ; $4ccf: $ff
    rst $38                                       ; $4cd0: $ff
    rst $38                                       ; $4cd1: $ff
    rst $38                                       ; $4cd2: $ff
    rst $38                                       ; $4cd3: $ff
    rst $38                                       ; $4cd4: $ff
    rst $38                                       ; $4cd5: $ff
    rst $38                                       ; $4cd6: $ff
    rst $38                                       ; $4cd7: $ff
    nop                                           ; $4cd8: $00
    rst $38                                       ; $4cd9: $ff
    rst $38                                       ; $4cda: $ff
    rst $38                                       ; $4cdb: $ff
    rst $38                                       ; $4cdc: $ff
    rst $38                                       ; $4cdd: $ff
    rst $38                                       ; $4cde: $ff
    rst $38                                       ; $4cdf: $ff
    rst $38                                       ; $4ce0: $ff
    rst $38                                       ; $4ce1: $ff

Call_05b_4ce2:
    rst $38                                       ; $4ce2: $ff

Jump_05b_4ce3:
    rst $38                                       ; $4ce3: $ff
    rst $38                                       ; $4ce4: $ff
    rst $38                                       ; $4ce5: $ff
    rst $38                                       ; $4ce6: $ff
    rst $38                                       ; $4ce7: $ff
    rst $38                                       ; $4ce8: $ff
    nop                                           ; $4ce9: $00
    rst $38                                       ; $4cea: $ff
    rst $38                                       ; $4ceb: $ff
    rst $38                                       ; $4cec: $ff
    rst $38                                       ; $4ced: $ff
    rst $38                                       ; $4cee: $ff
    rst $38                                       ; $4cef: $ff
    rst $38                                       ; $4cf0: $ff
    rst $38                                       ; $4cf1: $ff
    rst $38                                       ; $4cf2: $ff
    rst $38                                       ; $4cf3: $ff
    rst $38                                       ; $4cf4: $ff
    rst $38                                       ; $4cf5: $ff
    rst $38                                       ; $4cf6: $ff
    rst $38                                       ; $4cf7: $ff
    rst $38                                       ; $4cf8: $ff
    rst $38                                       ; $4cf9: $ff
    nop                                           ; $4cfa: $00
    rst $38                                       ; $4cfb: $ff
    rst $38                                       ; $4cfc: $ff
    rst $38                                       ; $4cfd: $ff
    rst $38                                       ; $4cfe: $ff
    rst $38                                       ; $4cff: $ff
    rst $38                                       ; $4d00: $ff
    rst $38                                       ; $4d01: $ff
    rst $38                                       ; $4d02: $ff
    rst $38                                       ; $4d03: $ff
    rst $38                                       ; $4d04: $ff
    rst $38                                       ; $4d05: $ff
    rst $38                                       ; $4d06: $ff
    rst $38                                       ; $4d07: $ff
    rst $38                                       ; $4d08: $ff
    rst $38                                       ; $4d09: $ff
    rst $38                                       ; $4d0a: $ff
    nop                                           ; $4d0b: $00
    rst $38                                       ; $4d0c: $ff
    rst $38                                       ; $4d0d: $ff
    rst $38                                       ; $4d0e: $ff
    rst $38                                       ; $4d0f: $ff
    rst $38                                       ; $4d10: $ff
    rst $38                                       ; $4d11: $ff
    rst $38                                       ; $4d12: $ff
    rst $38                                       ; $4d13: $ff
    rst $38                                       ; $4d14: $ff
    rst $38                                       ; $4d15: $ff
    rst $38                                       ; $4d16: $ff
    rst $38                                       ; $4d17: $ff
    rst $38                                       ; $4d18: $ff
    rst $38                                       ; $4d19: $ff
    rst $38                                       ; $4d1a: $ff
    rst $38                                       ; $4d1b: $ff
    nop                                           ; $4d1c: $00
    rst $38                                       ; $4d1d: $ff
    rst $38                                       ; $4d1e: $ff
    rst $38                                       ; $4d1f: $ff
    rst $38                                       ; $4d20: $ff
    rst $38                                       ; $4d21: $ff
    rst $38                                       ; $4d22: $ff
    rst $38                                       ; $4d23: $ff
    rst $38                                       ; $4d24: $ff
    rst $38                                       ; $4d25: $ff
    rst $38                                       ; $4d26: $ff
    rst $38                                       ; $4d27: $ff
    rst $38                                       ; $4d28: $ff
    rst $38                                       ; $4d29: $ff
    rst $38                                       ; $4d2a: $ff
    rst $38                                       ; $4d2b: $ff
    rst $38                                       ; $4d2c: $ff
    nop                                           ; $4d2d: $00
    rst $38                                       ; $4d2e: $ff
    rst $38                                       ; $4d2f: $ff
    rst $38                                       ; $4d30: $ff
    rst $38                                       ; $4d31: $ff
    rst $38                                       ; $4d32: $ff
    rst $38                                       ; $4d33: $ff
    rst $38                                       ; $4d34: $ff
    rst $38                                       ; $4d35: $ff
    rst $38                                       ; $4d36: $ff
    rst $38                                       ; $4d37: $ff
    rst $38                                       ; $4d38: $ff
    di                                            ; $4d39: $f3
    nop                                           ; $4d3a: $00
    nop                                           ; $4d3b: $00
    nop                                           ; $4d3c: $00
    and l                                         ; $4d3d: $a5
    nop                                           ; $4d3e: $00
    rst $38                                       ; $4d3f: $ff
    push hl                                       ; $4d40: $e5
    ld [hl-], a                                   ; $4d41: $32
    or $e6                                        ; $4d42: $f6 $e6
    rst $30                                       ; $4d44: $f7
    rst $20                                       ; $4d45: $e7
    dec [hl]                                      ; $4d46: $35
    db $ec                                        ; $4d47: $ec
    xor $37                                       ; $4d48: $ee $37
    db $ec                                        ; $4d4a: $ec
    jp c, $c7f0                                   ; $4d4b: $da $f0 $c7

    add sp, $33                                   ; $4d4e: $e8 $33
    ld sp, $f2e0                                  ; $4d50: $31 $e0 $f2
    ld [hl], $30                                  ; $4d53: $36 $30
    scf                                           ; $4d55: $37
    cp a                                          ; $4d56: $bf
    ld h, $20                                     ; $4d57: $26 $20
    daa                                           ; $4d59: $27
    db $10                                        ; $4d5a: $10
    ld d, $17                                     ; $4d5b: $16 $17
    jp nz, Jump_000_34f6                          ; $4d5d: $c2 $f6 $34

    rst $38                                       ; $4d60: $ff
    ld [hl], $32                                  ; $4d61: $36 $32
    jr nc, jr_05b_4d9c                            ; $4d63: $30 $37

    ld sp, $3133                                  ; $4d65: $31 $33 $31
    inc sp                                        ; $4d68: $33
    nop                                           ; $4d69: $00
    and b                                         ; $4d6a: $a0
    ei                                            ; $4d6b: $fb
    rst $38                                       ; $4d6c: $ff
    rst $28                                       ; $4d6d: $ef
    nop                                           ; $4d6e: $00
    nop                                           ; $4d6f: $00
    nop                                           ; $4d70: $00
    ld a, c                                       ; $4d71: $79
    ld c, l                                       ; $4d72: $4d
    xor c                                         ; $4d73: $a9
    ld c, l                                       ; $4d74: $4d
    db $e4                                        ; $4d75: $e4
    ld c, a                                       ; $4d76: $4f
    xor c                                         ; $4d77: $a9
    ld d, c                                       ; $4d78: $51
    ret nz                                        ; $4d79: $c0

    rra                                           ; $4d7a: $1f
    adc d                                         ; $4d7b: $8a
    inc bc                                        ; $4d7c: $03
    add b                                         ; $4d7d: $80
    ld [bc], a                                    ; $4d7e: $02
    ld h, b                                       ; $4d7f: $60
    ld bc, $03ef                                  ; $4d80: $01 $ef $03
    db $f4                                        ; $4d83: $f4
    inc bc                                        ; $4d84: $03
    adc d                                         ; $4d85: $8a
    inc bc                                        ; $4d86: $03
    add b                                         ; $4d87: $80
    ld [bc], a                                    ; $4d88: $02
    rra                                           ; $4d89: $1f
    ld [bc], a                                    ; $4d8a: $02
    ld c, e                                       ; $4d8b: $4b
    ld c, $38                                     ; $4d8c: $0e $38
    ld bc, $038a                                  ; $4d8e: $01 $8a $03
    ld [$0825], sp                                ; $4d91: $08 $25 $08
    dec h                                         ; $4d94: $25
    ld [$0825], sp                                ; $4d95: $08 $25 $08
    dec h                                         ; $4d98: $25
    ld [$0825], sp                                ; $4d99: $08 $25 $08

jr_05b_4d9c:
    dec h                                         ; $4d9c: $25
    ld [$0825], sp                                ; $4d9d: $08 $25 $08
    dec h                                         ; $4da0: $25
    ld [$0825], sp                                ; $4da1: $08 $25 $08
    dec h                                         ; $4da4: $25
    ld [$0825], sp                                ; $4da5: $08 $25 $08
    dec h                                         ; $4da8: $25
    db $dd                                        ; $4da9: $dd
    dec bc                                        ; $4daa: $0b
    rst $38                                       ; $4dab: $ff
    ld [c], a                                     ; $4dac: $e2
    ld l, e                                       ; $4dad: $6b
    ld c, d                                       ; $4dae: $4a
    ld a, [bc]                                    ; $4daf: $0a
    rst $38                                       ; $4db0: $ff
    db $e4                                        ; $4db1: $e4
    ld l, d                                       ; $4db2: $6a
    ld l, d                                       ; $4db3: $6a
    rst $30                                       ; $4db4: $f7
    ld l, d                                       ; $4db5: $6a
    ld a, [bc]                                    ; $4db6: $0a
    inc c                                         ; $4db7: $0c
    rst $38                                       ; $4db8: $ff
    ld [c], a                                     ; $4db9: $e2
    ld c, h                                       ; $4dba: $4c
    ld c, h                                       ; $4dbb: $4c
    inc c                                         ; $4dbc: $0c
    ld c, h                                       ; $4dbd: $4c
    rlca                                          ; $4dbe: $07
    inc c                                         ; $4dbf: $0c
    inc c                                         ; $4dc0: $0c
    inc l                                         ; $4dc1: $2c
    di                                            ; $4dc2: $f3
    db $e3                                        ; $4dc3: $e3
    ldh a, [$f0]                                  ; $4dc4: $f0 $f0
    jp c, $c1e3                                   ; $4dc6: $da $e3 $c1

    db $e4                                        ; $4dc9: $e4
    ret nz                                        ; $4dca: $c0

    add sp, $01                                   ; $4dcb: $e8 $01
    ld a, [bc]                                    ; $4dcd: $0a
    ret nz                                        ; $4dce: $c0

    pop hl                                        ; $4dcf: $e1
    jp $c4e3                                      ; $4dd0: $c3 $e3 $c4


    rst $20                                       ; $4dd3: $e7
    push bc                                       ; $4dd4: $c5
    pop af                                        ; $4dd5: $f1
    ret nz                                        ; $4dd6: $c0

    and $c1                                       ; $4dd7: $e6 $c1
    ldh [$80], a                                  ; $4dd9: $e0 $80
    rst $20                                       ; $4ddb: $e7
    nop                                           ; $4ddc: $00
    ld [hl], a                                    ; $4ddd: $77
    ldh [$d0], a                                  ; $4dde: $e0 $d0
    pop hl                                        ; $4de0: $e1
    add c                                         ; $4de1: $81
    pop hl                                        ; $4de2: $e1
    ld a, b                                       ; $4de3: $78
    pop hl                                        ; $4de4: $e1
    set 6, d                                      ; $4de5: $cb $f2
    add b                                         ; $4de7: $80
    db $eb                                        ; $4de8: $eb
    pop bc                                        ; $4de9: $c1
    pop hl                                        ; $4dea: $e1
    ld b, b                                       ; $4deb: $40
    and $14                                       ; $4dec: $e6 $14
    jr c, @-$1d                                   ; $4dee: $38 $e1

    ld b, e                                       ; $4df0: $43
    push hl                                       ; $4df1: $e5
    inc l                                         ; $4df2: $2c
    ld b, e                                       ; $4df3: $43
    ldh [$2c], a                                  ; $4df4: $e0 $2c
    ld a, [$b5e2]                                 ; $4df6: $fa $e2 $b5
    jp hl                                         ; $4df9: $e9


    ldh a, [$e6]                                  ; $4dfa: $f0 $e6
    db $f4                                        ; $4dfc: $f4
    ld b, b                                       ; $4dfd: $40
    db $e4                                        ; $4dfe: $e4
    pop bc                                        ; $4dff: $c1
    ld [c], a                                     ; $4e00: $e2
    ld l, d                                       ; $4e01: $6a
    ei                                            ; $4e02: $fb
    pop bc                                        ; $4e03: $c1
    dec bc                                        ; $4e04: $0b
    dec bc                                        ; $4e05: $0b
    ld c, e                                       ; $4e06: $4b
    dec hl                                        ; $4e07: $2b
    ld [bc], a                                    ; $4e08: $02
    ret nz                                        ; $4e09: $c0

    add sp, $2c                                   ; $4e0a: $e8 $2c
    ret nz                                        ; $4e0c: $c0

    ld [c], a                                     ; $4e0d: $e2
    ld a, [$b5e2]                                 ; $4e0e: $fa $e2 $b5
    add sp, -$10                                  ; $4e11: $e8 $f0
    db $e3                                        ; $4e13: $e3
    ld h, [hl]                                    ; $4e14: $66
    and $c1                                       ; $4e15: $e6 $c1
    and $7f                                       ; $4e17: $e6 $7f
    ld l, e                                       ; $4e19: $6b
    ld l, e                                       ; $4e1a: $6b
    dec hl                                        ; $4e1b: $2b
    dec hl                                        ; $4e1c: $2b
    dec hl                                        ; $4e1d: $2b
    ld c, e                                       ; $4e1e: $4b
    ld c, e                                       ; $4e1f: $4b
    add b                                         ; $4e20: $80
    db $e3                                        ; $4e21: $e3
    and b                                         ; $4e22: $a0
    ld b, b                                       ; $4e23: $40
    ld [c], a                                     ; $4e24: $e2
    rst $00                                       ; $4e25: $c7
    db $e4                                        ; $4e26: $e4
    ld a, [$b5e6]                                 ; $4e27: $fa $e6 $b5
    db $e3                                        ; $4e2a: $e3
    add c                                         ; $4e2b: $81
    db $eb                                        ; $4e2c: $eb
    inc c                                         ; $4e2d: $0c
    add d                                         ; $4e2e: $82
    db $e3                                        ; $4e2f: $e3
    ld a, [bc]                                    ; $4e30: $0a
    ld [hl], a                                    ; $4e31: $77
    dec bc                                        ; $4e32: $0b
    ld c, e                                       ; $4e33: $4b
    dec bc                                        ; $4e34: $0b
    pop bc                                        ; $4e35: $c1
    ldh [$2b], a                                  ; $4e36: $e0 $2b
    dec hl                                        ; $4e38: $2b
    dec bc                                        ; $4e39: $0b
    ld b, b                                       ; $4e3a: $40
    jp hl                                         ; $4e3b: $e9


    nop                                           ; $4e3c: $00
    pop bc                                        ; $4e3d: $c1
    db $e3                                        ; $4e3e: $e3
    add c                                         ; $4e3f: $81
    push hl                                       ; $4e40: $e5
    or l                                          ; $4e41: $b5
    and $7e                                       ; $4e42: $e6 $7e
    jp z, $e443                                   ; $4e44: $ca $43 $e4

    pop bc                                        ; $4e47: $c1
    db $e4                                        ; $4e48: $e4
    ret nz                                        ; $4e49: $c0

    push hl                                       ; $4e4a: $e5
    ret nz                                        ; $4e4b: $c0

    pop bc                                        ; $4e4c: $c1
    jr nc, jr_05b_4ece                            ; $4e4d: $30 $7f

    jp z, $e7b5                                   ; $4e4f: $ca $b5 $e7

    ld b, b                                       ; $4e52: $40
    call z, $e404                                 ; $4e53: $cc $04 $e4
    ld c, e                                       ; $4e56: $4b
    dec hl                                        ; $4e57: $2b
    ld b, c                                       ; $4e58: $41
    pop hl                                        ; $4e59: $e1
    add b                                         ; $4e5a: $80
    db $eb                                        ; $4e5b: $eb
    add b                                         ; $4e5c: $80
    ccf                                           ; $4e5d: $3f
    pop bc                                        ; $4e5e: $c1
    ld bc, $34e4                                  ; $4e5f: $01 $e4 $34
    ret z                                         ; $4e62: $c8

    add b                                         ; $4e63: $80
    xor $04                                       ; $4e64: $ee $04
    pop hl                                        ; $4e66: $e1
    pop bc                                        ; $4e67: $c1
    ldh [rP1], a                                  ; $4e68: $e0 $00
    ld [c], a                                     ; $4e6a: $e2
    dec bc                                        ; $4e6b: $0b
    nop                                           ; $4e6c: $00
    ret nz                                        ; $4e6d: $c0

    ld hl, sp+$35                                 ; $4e6e: $f8 $35
    jp hl                                         ; $4e70: $e9


    ld b, b                                       ; $4e71: $40
    add sp, -$7e                                  ; $4e72: $e8 $82
    db $e4                                        ; $4e74: $e4
    rst $38                                       ; $4e75: $ff
    pop hl                                        ; $4e76: $e1
    ld [hl], h                                    ; $4e77: $74
    and c                                         ; $4e78: $a1
    ret nz                                        ; $4e79: $c0

    ret z                                         ; $4e7a: $c8

    ret nz                                        ; $4e7b: $c0

jr_05b_4e7c:
    xor d                                         ; $4e7c: $aa
    or b                                          ; $4e7d: $b0
    ld b, b                                       ; $4e7e: $40
    db $ec                                        ; $4e7f: $ec
    ld l, c                                       ; $4e80: $69
    and [hl]                                      ; $4e81: $a6
    push bc                                       ; $4e82: $c5
    ret nz                                        ; $4e83: $c0

    add l                                         ; $4e84: $85

jr_05b_4e85:
    ret nz                                        ; $4e85: $c0

    ld c, e                                       ; $4e86: $4b
    ld c, e                                       ; $4e87: $4b
    add b                                         ; $4e88: $80
    ldh [rWX], a                                  ; $4e89: $e0 $4b
    ld a, b                                       ; $4e8b: $78

jr_05b_4e8c:
    add c                                         ; $4e8c: $81
    ldh [$c0], a                                  ; $4e8d: $e0 $c0
    call $feff                                    ; $4e8f: $cd $ff $fe
    ld a, [hl+]                                   ; $4e92: $2a
    dec bc                                        ; $4e93: $0b
    dec hl                                        ; $4e94: $2b
    dec bc                                        ; $4e95: $0b
    ld c, c                                       ; $4e96: $49
    ret nz                                        ; $4e97: $c0

    inc e                                         ; $4e98: $1c
    cp a                                          ; $4e99: $bf
    ldh [rSCY], a                                 ; $4e9a: $e0 $42
    pop hl                                        ; $4e9c: $e1
    ld l, e                                       ; $4e9d: $6b
    ld a, [bc]                                    ; $4e9e: $0a
    ld a, [hl+]                                   ; $4e9f: $2a
    ret nz                                        ; $4ea0: $c0

    and [hl]                                      ; $4ea1: $a6
    cp a                                          ; $4ea2: $bf
    rst $38                                       ; $4ea3: $ff
    ret nz                                        ; $4ea4: $c0

    ld [c], a                                     ; $4ea5: $e2
    dec h                                         ; $4ea6: $25
    ld a, [hl+]                                   ; $4ea7: $2a
    ret nz                                        ; $4ea8: $c0

    db $e4                                        ; $4ea9: $e4
    ld c, e                                       ; $4eaa: $4b
    add c                                         ; $4eab: $81
    ldh [$c1], a                                  ; $4eac: $e0 $c1
    ldh [$2a], a                                  ; $4eae: $e0 $2a
    cp a                                          ; $4eb0: $bf
    ldh [rLCDC], a                                ; $4eb1: $e0 $40
    and h                                         ; $4eb3: $a4
    ld [$88ff], sp                                ; $4eb4: $08 $ff $88
    or l                                          ; $4eb7: $b5
    rst $30                                       ; $4eb8: $f7
    rst $08                                       ; $4eb9: $cf
    ldh [rWX], a                                  ; $4eba: $e0 $4b
    ret z                                         ; $4ebc: $c8

    and c                                         ; $4ebd: $a1
    pop bc                                        ; $4ebe: $c1
    and $bf                                       ; $4ebf: $e6 $bf
    ldh [$80], a                                  ; $4ec1: $e0 $80
    rst $28                                       ; $4ec3: $ef
    ld [$ee75], sp                                ; $4ec4: $08 $75 $ee
    dec hl                                        ; $4ec7: $2b
    and [hl]                                      ; $4ec8: $a6
    adc $e1                                       ; $4ec9: $ce $e1
    ld c, e                                       ; $4ecb: $4b
    ccf                                           ; $4ecc: $3f
    pop hl                                        ; $4ecd: $e1

jr_05b_4ece:
    ld b, e                                       ; $4ece: $43
    ld [c], a                                     ; $4ecf: $e2
    rst $38                                       ; $4ed0: $ff
    db $e3                                        ; $4ed1: $e3
    add e                                         ; $4ed2: $83
    ld [c], a                                     ; $4ed3: $e2
    nop                                           ; $4ed4: $00
    add b                                         ; $4ed5: $80
    ld a, [$a7f5]                                 ; $4ed6: $fa $f5 $a7
    rla                                           ; $4ed9: $17
    jp nz, $e3fb                                  ; $4eda: $c2 $fb $e3

    ld a, [de]                                    ; $4edd: $1a
    sbc b                                         ; $4ede: $98

Call_05b_4edf:
    ret nz                                        ; $4edf: $c0

    rst $28                                       ; $4ee0: $ef
    pop hl                                        ; $4ee1: $e1
    db $eb                                        ; $4ee2: $eb
    jr nz, jr_05b_4e7c                            ; $4ee3: $20 $97

    nop                                           ; $4ee5: $00
    ret nz                                        ; $4ee6: $c0

    rst $38                                       ; $4ee7: $ff
    ld d, l                                       ; $4ee8: $55
    pop de                                        ; $4ee9: $d1
    ld a, [bc]                                    ; $4eea: $0a
    sbc l                                         ; $4eeb: $9d
    push hl                                       ; $4eec: $e5
    xor e                                         ; $4eed: $ab
    push de                                       ; $4eee: $d5
    ld l, e                                       ; $4eef: $6b
    ld a, [bc]                                    ; $4ef0: $0a
    adc h                                         ; $4ef1: $8c
    ret nz                                        ; $4ef2: $c0

    ld [hl], d                                    ; $4ef3: $72
    add b                                         ; $4ef4: $80
    xor $00                                       ; $4ef5: $ee $00
    jr nz, jr_05b_4e85                            ; $4ef7: $20 $8c

    call nc, Call_05b_4093                        ; $4ef9: $d4 $93 $40
    rst $30                                       ; $4efc: $f7
    jr nz, jr_05b_4e8c                            ; $4efd: $20 $8d

    jp z, $bf85                                   ; $4eff: $ca $85 $bf

    ld c, b                                       ; $4f02: $48
    scf                                           ; $4f03: $37
    ld [hl], l                                    ; $4f04: $75
    push de                                       ; $4f05: $d5
    ld l, l                                       ; $4f06: $6d
    nop                                           ; $4f07: $00
    ld d, l                                       ; $4f08: $55
    sub a                                         ; $4f09: $97
    and h                                         ; $4f0a: $a4
    push de                                       ; $4f0b: $d5
    push de                                       ; $4f0c: $d5
    ld l, e                                       ; $4f0d: $6b
    dec d                                         ; $4f0e: $15
    adc $80                                       ; $4f0f: $ce $80
    rst $38                                       ; $4f11: $ff
    ld d, h                                       ; $4f12: $54
    ld c, d                                       ; $4f13: $4a
    sub l                                         ; $4f14: $95
    adc c                                         ; $4f15: $89
    cp a                                          ; $4f16: $bf
    ld c, c                                       ; $4f17: $49
    nop                                           ; $4f18: $00
    xor l                                         ; $4f19: $ad
    sub $15                                       ; $4f1a: $d6 $15
    sbc c                                         ; $4f1c: $99
    or l                                          ; $4f1d: $b5
    ret z                                         ; $4f1e: $c8

    ld h, c                                       ; $4f1f: $61
    db $f4                                        ; $4f20: $f4
    sub l                                         ; $4f21: $95
    ld l, [hl]                                    ; $4f22: $6e
    dec de                                        ; $4f23: $1b
    xor l                                         ; $4f24: $ad
    sub b                                         ; $4f25: $90
    ld b, l                                       ; $4f26: $45
    ld [hl], a                                    ; $4f27: $77
    ld h, h                                       ; $4f28: $64
    nop                                           ; $4f29: $00
    ld l, e                                       ; $4f2a: $6b
    adc [hl]                                      ; $4f2b: $8e
    push de                                       ; $4f2c: $d5
    ld l, l                                       ; $4f2d: $6d
    ld d, $af                                     ; $4f2e: $16 $af
    add c                                         ; $4f30: $81
    ld [$f380], a                                 ; $4f31: $ea $80 $f3
    ld d, l                                       ; $4f34: $55
    or e                                          ; $4f35: $b3
    rst $38                                       ; $4f36: $ff
    ld a, a                                       ; $4f37: $7f
    ret c                                         ; $4f38: $d8

    inc b                                         ; $4f39: $04
    nop                                           ; $4f3a: $00
    ld d, l                                       ; $4f3b: $55
    sub h                                         ; $4f3c: $94
    or l                                          ; $4f3d: $b5
    set 0, c                                      ; $4f3e: $cb $c1
    push de                                       ; $4f40: $d5
    push de                                       ; $4f41: $d5
    ld [hl], a                                    ; $4f42: $77
    ret nz                                        ; $4f43: $c0

    rst $38                                       ; $4f44: $ff
    add b                                         ; $4f45: $80
    ei                                            ; $4f46: $fb
    rst $38                                       ; $4f47: $ff
    rst $38                                       ; $4f48: $ff
    rrca                                          ; $4f49: $0f
    add d                                         ; $4f4a: $82
    nop                                           ; $4f4b: $00
    push de                                       ; $4f4c: $d5
    ld a, e                                       ; $4f4d: $7b
    add c                                         ; $4f4e: $81
    sbc a                                         ; $4f4f: $9f
    ld a, a                                       ; $4f50: $7f
    sub $b5                                       ; $4f51: $d6 $b5
    rst $38                                       ; $4f53: $ff
    add b                                         ; $4f54: $80
    db $e4                                        ; $4f55: $e4
    jp z, Jump_05b_767f                           ; $4f56: $ca $7f $76

    sub a                                         ; $4f59: $97
    ld h, h                                       ; $4f5a: $64
    db $fd                                        ; $4f5b: $fd
    nop                                           ; $4f5c: $00
    rst $38                                       ; $4f5d: $ff
    rst $38                                       ; $4f5e: $ff
    ret nz                                        ; $4f5f: $c0

    rst $38                                       ; $4f60: $ff
    rst $38                                       ; $4f61: $ff
    rst $38                                       ; $4f62: $ff
    ret nz                                        ; $4f63: $c0

    rst $38                                       ; $4f64: $ff
    rst $38                                       ; $4f65: $ff
    rst $38                                       ; $4f66: $ff
    rst $38                                       ; $4f67: $ff
    rst $38                                       ; $4f68: $ff
    rst $38                                       ; $4f69: $ff
    rst $38                                       ; $4f6a: $ff
    rst $38                                       ; $4f6b: $ff
    rst $38                                       ; $4f6c: $ff
    nop                                           ; $4f6d: $00
    ld c, d                                       ; $4f6e: $4a
    rst $38                                       ; $4f6f: $ff
    push bc                                       ; $4f70: $c5
    ld a, [de]                                    ; $4f71: $1a
    inc l                                         ; $4f72: $2c
    rst $30                                       ; $4f73: $f7
    call Call_05b_4702                            ; $4f74: $cd $02 $47
    inc bc                                        ; $4f77: $03
    db $db                                        ; $4f78: $db
    ei                                            ; $4f79: $fb
    and a                                         ; $4f7a: $a7
    ld e, e                                       ; $4f7b: $5b
    ld b, c                                       ; $4f7c: $41
    ld b, b                                       ; $4f7d: $40
    db $10                                        ; $4f7e: $10
    add h                                         ; $4f7f: $84
    ld e, c                                       ; $4f80: $59
    nop                                           ; $4f81: $00
    adc a                                         ; $4f82: $8f
    sbc d                                         ; $4f83: $9a
    rst $18                                       ; $4f84: $df
    jp nc, Jump_000_2cf9                          ; $4f85: $d2 $f9 $2c

    inc bc                                        ; $4f88: $03
    ld b, c                                       ; $4f89: $41
    ld a, l                                       ; $4f8a: $7d
    or a                                          ; $4f8b: $b7
    sub d                                         ; $4f8c: $92
    cp $00                                        ; $4f8d: $fe $00
    call nz, $c082                                ; $4f8f: $c4 $82 $c0
    db $fc                                        ; $4f92: $fc
    dec e                                         ; $4f93: $1d
    add h                                         ; $4f94: $84
    ld d, $b2                                     ; $4f95: $16 $b2
    add a                                         ; $4f97: $87
    db $fc                                        ; $4f98: $fc
    ld l, e                                       ; $4f99: $6b
    dec b                                         ; $4f9a: $05
    pop bc                                        ; $4f9b: $c1
    ld [hl], a                                    ; $4f9c: $77
    add l                                         ; $4f9d: $85
    cp $00                                        ; $4f9e: $fe $00
    add c                                         ; $4fa0: $81
    sbc a                                         ; $4fa1: $9f
    ret nz                                        ; $4fa2: $c0

    rst $38                                       ; $4fa3: $ff
    rst $28                                       ; $4fa4: $ef
    rst $18                                       ; $4fa5: $df
    rst $38                                       ; $4fa6: $ff
    rst $38                                       ; $4fa7: $ff
    ret nz                                        ; $4fa8: $c0

    rst $38                                       ; $4fa9: $ff
    rst $38                                       ; $4faa: $ff
    rst $38                                       ; $4fab: $ff
    rst $38                                       ; $4fac: $ff
    rst $38                                       ; $4fad: $ff
    rst $38                                       ; $4fae: $ff
    rst $38                                       ; $4faf: $ff
    nop                                           ; $4fb0: $00
    rst $38                                       ; $4fb1: $ff
    rst $38                                       ; $4fb2: $ff
    rst $38                                       ; $4fb3: $ff
    rst $38                                       ; $4fb4: $ff
    rst $38                                       ; $4fb5: $ff
    rst $38                                       ; $4fb6: $ff
    rst $38                                       ; $4fb7: $ff
    rst $38                                       ; $4fb8: $ff
    rst $38                                       ; $4fb9: $ff
    rst $38                                       ; $4fba: $ff
    rst $38                                       ; $4fbb: $ff
    rst $38                                       ; $4fbc: $ff
    rst $38                                       ; $4fbd: $ff
    rst $38                                       ; $4fbe: $ff
    rst $38                                       ; $4fbf: $ff
    rst $38                                       ; $4fc0: $ff
    nop                                           ; $4fc1: $00
    rst $38                                       ; $4fc2: $ff
    rst $38                                       ; $4fc3: $ff
    rst $38                                       ; $4fc4: $ff
    rst $38                                       ; $4fc5: $ff
    rst $38                                       ; $4fc6: $ff
    rst $38                                       ; $4fc7: $ff
    rst $38                                       ; $4fc8: $ff
    rst $38                                       ; $4fc9: $ff
    rst $38                                       ; $4fca: $ff
    rst $38                                       ; $4fcb: $ff
    rst $38                                       ; $4fcc: $ff
    rst $38                                       ; $4fcd: $ff
    rst $38                                       ; $4fce: $ff
    rst $38                                       ; $4fcf: $ff
    rst $38                                       ; $4fd0: $ff
    rst $38                                       ; $4fd1: $ff
    nop                                           ; $4fd2: $00
    rst $38                                       ; $4fd3: $ff
    rst $38                                       ; $4fd4: $ff
    ld a, a                                       ; $4fd5: $7f
    ccf                                           ; $4fd6: $3f
    rst $38                                       ; $4fd7: $ff
    rst $38                                       ; $4fd8: $ff
    rst $38                                       ; $4fd9: $ff
    rst $38                                       ; $4fda: $ff
    rst $38                                       ; $4fdb: $ff
    rst $38                                       ; $4fdc: $ff
    rst $38                                       ; $4fdd: $ff
    rst $38                                       ; $4fde: $ff
    rst $38                                       ; $4fdf: $ff
    rst $38                                       ; $4fe0: $ff
    nop                                           ; $4fe1: $00
    nop                                           ; $4fe2: $00
    nop                                           ; $4fe3: $00
    db $dd                                        ; $4fe4: $dd
    ld sp, $e2ff                                  ; $4fe5: $31 $ff $e2
    ld h, b                                       ; $4fe8: $60
    ld c, [hl]                                    ; $4fe9: $4e
    adc b                                         ; $4fea: $88
    rst $38                                       ; $4feb: $ff
    db $e4                                        ; $4fec: $e4
    ld c, [hl]                                    ; $4fed: $4e
    ld c, [hl]                                    ; $4fee: $4e
    add a                                         ; $4fef: $87
    ld c, [hl]                                    ; $4ff0: $4e
    cpl                                           ; $4ff1: $2f
    nop                                           ; $4ff2: $00
    rst $38                                       ; $4ff3: $ff
    rst $38                                       ; $4ff4: $ff
    rst $20                                       ; $4ff5: $e7
    and $c1                                       ; $4ff6: $e6 $c1
    db $e4                                        ; $4ff8: $e4
    ret nz                                        ; $4ff9: $c0

    add sp, $2f                                   ; $4ffa: $e8 $2f
    ld h, c                                       ; $4ffc: $61
    adc d                                         ; $4ffd: $8a
    jp z, $c0ff                                   ; $4ffe: $ca $ff $c0

    db $eb                                        ; $5001: $eb
    pop bc                                        ; $5002: $c1
    ldh [$80], a                                  ; $5003: $e0 $80
    rst $20                                       ; $5005: $e7
    cpl                                           ; $5006: $2f
    adc d                                         ; $5007: $8a
    ret nz                                        ; $5008: $c0

    rst $38                                       ; $5009: $ff
    add b                                         ; $500a: $80
    add b                                         ; $500b: $80
    db $eb                                        ; $500c: $eb
    pop bc                                        ; $500d: $c1
    pop hl                                        ; $500e: $e1
    ld b, b                                       ; $500f: $40
    and $c1                                       ; $5010: $e6 $c1
    ldh [$c0], a                                  ; $5012: $e0 $c0
    rst $38                                       ; $5014: $ff
    ld b, b                                       ; $5015: $40
    ld [$e2c1], a                                 ; $5016: $ea $c1 $e2
    adc h                                         ; $5019: $8c
    rst $38                                       ; $501a: $ff
    ld e, e                                       ; $501b: $5b
    ld e, h                                       ; $501c: $5c
    ld e, l                                       ; $501d: $5d
    sub a                                         ; $501e: $97
    ld d, [hl]                                    ; $501f: $56
    ld d, a                                       ; $5020: $57
    ld b, a                                       ; $5021: $47
    ld h, b                                       ; $5022: $60
    ldh a, [$c1]                                  ; $5023: $f0 $c1
    ldh [$c0], a                                  ; $5025: $e0 $c0
    rst $38                                       ; $5027: $ff
    nop                                           ; $5028: $00
    jp hl                                         ; $5029: $e9


    pop bc                                        ; $502a: $c1
    db $e4                                        ; $502b: $e4
    ld h, b                                       ; $502c: $60
    sub a                                         ; $502d: $97
    sub [hl]                                      ; $502e: $96
    sub h                                         ; $502f: $94
    adc a                                         ; $5030: $8f
    ld l, e                                       ; $5031: $6b
    ld l, c                                       ; $5032: $69
    ld [hl], $37                                  ; $5033: $36 $37
    ret nz                                        ; $5035: $c0

    rst $38                                       ; $5036: $ff
    db $ec                                        ; $5037: $ec
    db $eb                                        ; $5038: $eb
    add d                                         ; $5039: $82
    db $e3                                        ; $503a: $e3
    ld e, d                                       ; $503b: $5a
    rst $38                                       ; $503c: $ff
    ld h, b                                       ; $503d: $60
    sub l                                         ; $503e: $95
    add [hl]                                      ; $503f: $86
    sub h                                         ; $5040: $94
    ld l, e                                       ; $5041: $6b
    ld l, e                                       ; $5042: $6b
    ld l, e                                       ; $5043: $6b
    ld l, c                                       ; $5044: $69
    pop de                                        ; $5045: $d1
    ld d, b                                       ; $5046: $50
    ret nz                                        ; $5047: $c0

    rst $38                                       ; $5048: $ff
    db $ec                                        ; $5049: $ec
    db $eb                                        ; $504a: $eb
    add d                                         ; $504b: $82
    db $e4                                        ; $504c: $e4
    sub d                                         ; $504d: $92
    pop bc                                        ; $504e: $c1
    ld [c], a                                     ; $504f: $e2
    ld l, e                                       ; $5050: $6b
    ld l, c                                       ; $5051: $69
    pop af                                        ; $5052: $f1
    ld d, c                                       ; $5053: $51
    ret nz                                        ; $5054: $c0

    rst $38                                       ; $5055: $ff
    ret nz                                        ; $5056: $c0

    xor $43                                       ; $5057: $ee $43
    ldh [$31], a                                  ; $5059: $e0 $31
    sub b                                         ; $505b: $90
    sub h                                         ; $505c: $94
    ld h, a                                       ; $505d: $67
    ldh a, [$c0]                                  ; $505e: $f0 $c0
    ld [c], a                                     ; $5060: $e2
    add b                                         ; $5061: $80
    rst $38                                       ; $5062: $ff
    add b                                         ; $5063: $80
    xor $c1                                       ; $5064: $ee $c1
    pop hl                                        ; $5066: $e1
    sub l                                         ; $5067: $95
    sub h                                         ; $5068: $94
    ld l, l                                       ; $5069: $6d
    ld l, l                                       ; $506a: $6d
    or b                                          ; $506b: $b0
    cp a                                          ; $506c: $bf
    pop hl                                        ; $506d: $e1
    nop                                           ; $506e: $00
    rst $38                                       ; $506f: $ff
    ld b, b                                       ; $5070: $40
    xor $c1                                       ; $5071: $ee $c1
    db $e3                                        ; $5073: $e3
    ld h, a                                       ; $5074: $67
    ld l, l                                       ; $5075: $6d
    cp a                                          ; $5076: $bf
    ldh [rLY], a                                  ; $5077: $e0 $44
    rst $00                                       ; $5079: $c7
    ld b, l                                       ; $507a: $45
    ld b, a                                       ; $507b: $47
    ld e, [hl]                                    ; $507c: $5e
    ret nz                                        ; $507d: $c0

    rst $38                                       ; $507e: $ff
    db $ec                                        ; $507f: $ec
    db $eb                                        ; $5080: $eb
    push bc                                       ; $5081: $c5
    ret nz                                        ; $5082: $c0

    ld sp, $f737                                  ; $5083: $31 $37 $f7
    ld [hl], $6c                                  ; $5086: $36 $6c
    ld l, h                                       ; $5088: $6c
    cp a                                          ; $5089: $bf
    ldh [$94], a                                  ; $508a: $e0 $94
    sub d                                         ; $508c: $92
    ld sp, $f931                                  ; $508d: $31 $31 $f9
    ld e, a                                       ; $5090: $5f
    ret nz                                        ; $5091: $c0

    rst $38                                       ; $5092: $ff
    db $ec                                        ; $5093: $ec
    db $eb                                        ; $5094: $eb
    adc [hl]                                      ; $5095: $8e
    ld e, e                                       ; $5096: $5b
    ld e, [hl]                                    ; $5097: $5e
    ld sp, $dd51                                  ; $5098: $31 $51 $dd
    ld l, h                                       ; $509b: $6c
    rst $38                                       ; $509c: $ff
    ldh [$67], a                                  ; $509d: $e0 $67
    sub e                                         ; $509f: $93
    sub b                                         ; $50a0: $90
    ld hl, sp-$80                                 ; $50a1: $f8 $80
    adc [hl]                                      ; $50a3: $8e
    adc a                                         ; $50a4: $8f
    rst $20                                       ; $50a5: $e7
    ld c, a                                       ; $50a6: $4f
    ld c, a                                       ; $50a7: $4f
    ld c, a                                       ; $50a8: $4f
    jp z, $e8ff                                   ; $50a9: $ca $ff $e8

    rst $20                                       ; $50ac: $e7
    adc c                                         ; $50ad: $89
    adc [hl]                                      ; $50ae: $8e
    ld e, a                                       ; $50af: $5f
    or a                                          ; $50b0: $b7
    ld sp, $6850                                  ; $50b1: $31 $50 $68
    cp a                                          ; $50b4: $bf
    pop hl                                        ; $50b5: $e1
    sub c                                         ; $50b6: $91
    sub d                                         ; $50b7: $92
    pop bc                                        ; $50b8: $c1
    ldh [$89], a                                  ; $50b9: $e0 $89
    pop af                                        ; $50bb: $f1
    adc c                                         ; $50bc: $89
    cp a                                          ; $50bd: $bf
    ldh [$ca], a                                  ; $50be: $e0 $ca
    rst $38                                       ; $50c0: $ff
    ret nz                                        ; $50c1: $c0

    add sp, -$77                                  ; $50c2: $e8 $89
    adc [hl]                                      ; $50c4: $8e
    ld h, b                                       ; $50c5: $60
    scf                                           ; $50c6: $37
    ccf                                           ; $50c7: $3f
    ld [hl], $68                                  ; $50c8: $36 $68
    ld l, b                                       ; $50ca: $68
    ld l, b                                       ; $50cb: $68
    sub h                                         ; $50cc: $94
    sub l                                         ; $50cd: $95
    pop bc                                        ; $50ce: $c1
    ld [c], a                                     ; $50cf: $e2
    cp a                                          ; $50d0: $bf
    pop hl                                        ; $50d1: $e1
    ld hl, sp-$36                                 ; $50d2: $f8 $ca
    rst $38                                       ; $50d4: $ff
    ret nz                                        ; $50d5: $c0

    jp hl                                         ; $50d6: $e9


    cp a                                          ; $50d7: $bf
    ldh [rBGP], a                                 ; $50d8: $e0 $47
    ld d, [hl]                                    ; $50da: $56
    ld d, [hl]                                    ; $50db: $56
    ld d, a                                       ; $50dc: $57
    sub a                                         ; $50dd: $97
    nop                                           ; $50de: $00
    pop bc                                        ; $50df: $c1
    db $e4                                        ; $50e0: $e4
    ld a, [hl]                                    ; $50e1: $7e
    ldh [$ca], a                                  ; $50e2: $e0 $ca
    rst $38                                       ; $50e4: $ff
    rst $38                                       ; $50e5: $ff
    rst $38                                       ; $50e6: $ff
    rst $38                                       ; $50e7: $ff
    rst $38                                       ; $50e8: $ff
    rst $38                                       ; $50e9: $ff
    rst $38                                       ; $50ea: $ff
    rst $38                                       ; $50eb: $ff
    rst $38                                       ; $50ec: $ff
    rst $38                                       ; $50ed: $ff
    rst $38                                       ; $50ee: $ff
    nop                                           ; $50ef: $00
    rst $38                                       ; $50f0: $ff
    rst $38                                       ; $50f1: $ff
    rst $38                                       ; $50f2: $ff
    rst $38                                       ; $50f3: $ff
    rst $38                                       ; $50f4: $ff
    rst $38                                       ; $50f5: $ff
    rst $38                                       ; $50f6: $ff
    rst $38                                       ; $50f7: $ff
    rst $38                                       ; $50f8: $ff
    rst $38                                       ; $50f9: $ff
    rst $38                                       ; $50fa: $ff
    rst $38                                       ; $50fb: $ff
    rst $38                                       ; $50fc: $ff
    rst $38                                       ; $50fd: $ff
    rst $38                                       ; $50fe: $ff
    rst $38                                       ; $50ff: $ff
    nop                                           ; $5100: $00
    rst $38                                       ; $5101: $ff
    rst $38                                       ; $5102: $ff
    rst $38                                       ; $5103: $ff
    rst $38                                       ; $5104: $ff
    rst $38                                       ; $5105: $ff
    rst $38                                       ; $5106: $ff
    rst $38                                       ; $5107: $ff
    rst $38                                       ; $5108: $ff
    rst $38                                       ; $5109: $ff
    rst $38                                       ; $510a: $ff
    rst $38                                       ; $510b: $ff
    rst $38                                       ; $510c: $ff
    rst $38                                       ; $510d: $ff
    rst $38                                       ; $510e: $ff
    rst $38                                       ; $510f: $ff
    rst $38                                       ; $5110: $ff
    nop                                           ; $5111: $00
    rst $38                                       ; $5112: $ff
    rst $38                                       ; $5113: $ff
    rst $38                                       ; $5114: $ff
    rst $38                                       ; $5115: $ff
    rst $38                                       ; $5116: $ff
    rst $38                                       ; $5117: $ff
    rst $38                                       ; $5118: $ff
    rst $38                                       ; $5119: $ff
    rst $38                                       ; $511a: $ff
    rst $38                                       ; $511b: $ff
    rst $38                                       ; $511c: $ff
    rst $38                                       ; $511d: $ff
    rst $38                                       ; $511e: $ff
    rst $38                                       ; $511f: $ff
    rst $38                                       ; $5120: $ff
    rst $38                                       ; $5121: $ff
    nop                                           ; $5122: $00
    rst $38                                       ; $5123: $ff
    rst $38                                       ; $5124: $ff
    rst $38                                       ; $5125: $ff
    rst $38                                       ; $5126: $ff
    rst $38                                       ; $5127: $ff
    rst $38                                       ; $5128: $ff
    rst $38                                       ; $5129: $ff
    rst $38                                       ; $512a: $ff
    rst $38                                       ; $512b: $ff
    rst $38                                       ; $512c: $ff
    rst $38                                       ; $512d: $ff
    rst $38                                       ; $512e: $ff
    rst $38                                       ; $512f: $ff
    rst $38                                       ; $5130: $ff
    rst $38                                       ; $5131: $ff
    rst $38                                       ; $5132: $ff
    nop                                           ; $5133: $00
    rst $38                                       ; $5134: $ff
    rst $38                                       ; $5135: $ff
    rst $38                                       ; $5136: $ff
    rst $38                                       ; $5137: $ff
    rst $38                                       ; $5138: $ff
    rst $38                                       ; $5139: $ff
    rst $38                                       ; $513a: $ff
    rst $38                                       ; $513b: $ff
    rst $38                                       ; $513c: $ff
    rst $38                                       ; $513d: $ff
    rst $38                                       ; $513e: $ff
    rst $38                                       ; $513f: $ff
    rst $38                                       ; $5140: $ff
    rst $38                                       ; $5141: $ff
    rst $38                                       ; $5142: $ff
    rst $38                                       ; $5143: $ff
    nop                                           ; $5144: $00
    rst $38                                       ; $5145: $ff
    rst $38                                       ; $5146: $ff
    rst $38                                       ; $5147: $ff
    rst $38                                       ; $5148: $ff
    rst $38                                       ; $5149: $ff
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
    nop                                           ; $5155: $00
    rst $38                                       ; $5156: $ff
    rst $38                                       ; $5157: $ff
    rst $38                                       ; $5158: $ff
    rst $38                                       ; $5159: $ff
    rst $38                                       ; $515a: $ff
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
    nop                                           ; $5166: $00
    rst $38                                       ; $5167: $ff
    rst $38                                       ; $5168: $ff
    rst $38                                       ; $5169: $ff
    rst $38                                       ; $516a: $ff
    rst $38                                       ; $516b: $ff
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
    nop                                           ; $5177: $00
    rst $38                                       ; $5178: $ff
    rst $38                                       ; $5179: $ff
    rst $38                                       ; $517a: $ff
    rst $38                                       ; $517b: $ff
    rst $38                                       ; $517c: $ff
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
    nop                                           ; $5188: $00
    rst $38                                       ; $5189: $ff
    rst $38                                       ; $518a: $ff
    rst $38                                       ; $518b: $ff
    rst $38                                       ; $518c: $ff
    rst $38                                       ; $518d: $ff
    rst $38                                       ; $518e: $ff
    rst $38                                       ; $518f: $ff
    rst $38                                       ; $5190: $ff
    rst $38                                       ; $5191: $ff
    rst $38                                       ; $5192: $ff
    rst $38                                       ; $5193: $ff
    rst $38                                       ; $5194: $ff
    rst $38                                       ; $5195: $ff
    rst $38                                       ; $5196: $ff
    rst $38                                       ; $5197: $ff
    rst $38                                       ; $5198: $ff
    nop                                           ; $5199: $00
    rst $38                                       ; $519a: $ff
    rst $38                                       ; $519b: $ff
    rst $38                                       ; $519c: $ff
    rst $38                                       ; $519d: $ff
    rst $38                                       ; $519e: $ff
    rst $38                                       ; $519f: $ff
    rst $38                                       ; $51a0: $ff
    rst $38                                       ; $51a1: $ff
    rst $38                                       ; $51a2: $ff
    rst $38                                       ; $51a3: $ff
    rst $38                                       ; $51a4: $ff
    di                                            ; $51a5: $f3
    nop                                           ; $51a6: $00
    nop                                           ; $51a7: $00
    nop                                           ; $51a8: $00
    and l                                         ; $51a9: $a5
    nop                                           ; $51aa: $00
    rst $38                                       ; $51ab: $ff
    push hl                                       ; $51ac: $e5
    ld [hl-], a                                   ; $51ad: $32
    or $e6                                        ; $51ae: $f6 $e6
    rst $30                                       ; $51b0: $f7
    rst $20                                       ; $51b1: $e7
    dec [hl]                                      ; $51b2: $35
    db $ec                                        ; $51b3: $ec
    xor $37                                       ; $51b4: $ee $37
    db $ec                                        ; $51b6: $ec
    jp c, $c7f0                                   ; $51b7: $da $f0 $c7

    add sp, $33                                   ; $51ba: $e8 $33
    ld sp, $f2e0                                  ; $51bc: $31 $e0 $f2
    ld [hl], $30                                  ; $51bf: $36 $30
    scf                                           ; $51c1: $37
    cp a                                          ; $51c2: $bf
    ld h, $20                                     ; $51c3: $26 $20
    daa                                           ; $51c5: $27
    db $10                                        ; $51c6: $10
    ld d, $17                                     ; $51c7: $16 $17
    jp nz, Jump_000_34f6                          ; $51c9: $c2 $f6 $34

    rst $38                                       ; $51cc: $ff
    ld [hl], $32                                  ; $51cd: $36 $32
    jr nc, jr_05b_5208                            ; $51cf: $30 $37

    ld sp, $3133                                  ; $51d1: $31 $33 $31
    inc sp                                        ; $51d4: $33
    nop                                           ; $51d5: $00
    and b                                         ; $51d6: $a0
    ei                                            ; $51d7: $fb
    rst $38                                       ; $51d8: $ff
    rst $28                                       ; $51d9: $ef
    nop                                           ; $51da: $00
    nop                                           ; $51db: $00
    nop                                           ; $51dc: $00
    push hl                                       ; $51dd: $e5
    ld d, c                                       ; $51de: $51
    dec d                                         ; $51df: $15
    ld d, d                                       ; $51e0: $52
    ld a, l                                       ; $51e1: $7d
    ld d, h                                       ; $51e2: $54
    ld l, $56                                     ; $51e3: $2e $56
    ret nz                                        ; $51e5: $c0

    rra                                           ; $51e6: $1f
    adc d                                         ; $51e7: $8a
    inc bc                                        ; $51e8: $03
    add b                                         ; $51e9: $80
    ld [bc], a                                    ; $51ea: $02
    ld h, b                                       ; $51eb: $60
    ld bc, $03ef                                  ; $51ec: $01 $ef $03
    db $f4                                        ; $51ef: $f4
    inc bc                                        ; $51f0: $03
    adc d                                         ; $51f1: $8a
    inc bc                                        ; $51f2: $03
    add b                                         ; $51f3: $80
    ld [bc], a                                    ; $51f4: $02
    rra                                           ; $51f5: $1f
    ld [bc], a                                    ; $51f6: $02
    ld c, e                                       ; $51f7: $4b
    ld c, $38                                     ; $51f8: $0e $38
    ld bc, $038a                                  ; $51fa: $01 $8a $03
    ld [$0825], sp                                ; $51fd: $08 $25 $08
    dec h                                         ; $5200: $25
    ld [$0825], sp                                ; $5201: $08 $25 $08
    dec h                                         ; $5204: $25
    ld [$0825], sp                                ; $5205: $08 $25 $08

jr_05b_5208:
    dec h                                         ; $5208: $25
    ld [$0825], sp                                ; $5209: $08 $25 $08
    dec h                                         ; $520c: $25
    ld [$0825], sp                                ; $520d: $08 $25 $08
    dec h                                         ; $5210: $25
    ld [$0825], sp                                ; $5211: $08 $25 $08
    dec h                                         ; $5214: $25
    db $fd                                        ; $5215: $fd
    ld a, [bc]                                    ; $5216: $0a
    rst $38                                       ; $5217: $ff
    ldh [rWY], a                                  ; $5218: $e0 $4a
    ld c, d                                       ; $521a: $4a
    ld c, d                                       ; $521b: $4a
    ld l, d                                       ; $521c: $6a
    ld c, e                                       ; $521d: $4b
    ld c, e                                       ; $521e: $4b
    rst $38                                       ; $521f: $ff
    dec bc                                        ; $5220: $0b
    dec bc                                        ; $5221: $0b
    dec bc                                        ; $5222: $0b

Jump_05b_5223:
    dec hl                                        ; $5223: $2b
    dec hl                                        ; $5224: $2b
    ld c, e                                       ; $5225: $4b
    ld c, d                                       ; $5226: $4a
    ld l, d                                       ; $5227: $6a
    rst $30                                       ; $5228: $f7
    ld l, d                                       ; $5229: $6a
    ld l, d                                       ; $522a: $6a
    inc c                                         ; $522b: $0c
    rst $38                                       ; $522c: $ff
    ld [c], a                                     ; $522d: $e2
    ld c, h                                       ; $522e: $4c
    ld c, h                                       ; $522f: $4c
    inc c                                         ; $5230: $0c
    ld c, h                                       ; $5231: $4c
    ld [$e3f6], sp                                ; $5232: $08 $f6 $e3
    ld a, [$c0f9]                                 ; $5235: $fa $f9 $c0
    db $e3                                        ; $5238: $e3
    ld l, d                                       ; $5239: $6a
    jp nz, $fde1                                  ; $523a: $c2 $e1 $fd

    pop hl                                        ; $523d: $e1
    cp a                                          ; $523e: $bf
    ld [c], a                                     ; $523f: $e2
    pop bc                                        ; $5240: $c1
    db $e3                                        ; $5241: $e3
    ld b, h                                       ; $5242: $44
    cp [hl]                                       ; $5243: $be
    ld [c], a                                     ; $5244: $e2
    or l                                          ; $5245: $b5
    pop hl                                        ; $5246: $e1
    inc l                                         ; $5247: $2c
    cp d                                          ; $5248: $ba
    and $f6                                       ; $5249: $e6 $f6
    rst $20                                       ; $524b: $e7
    ret nz                                        ; $524c: $c0

    db $eb                                        ; $524d: $eb
    ld l, d                                       ; $524e: $6a
    jp nz, Jump_05b_47e1                          ; $524f: $c2 $e1 $47

    ld l, e                                       ; $5252: $6b
    ld l, e                                       ; $5253: $6b
    ld c, e                                       ; $5254: $4b
    ld a, e                                       ; $5255: $7b
    ldh [$7e], a                                  ; $5256: $e0 $7e
    pop hl                                        ; $5258: $e1
    add b                                         ; $5259: $80
    add sp, $2c                                   ; $525a: $e8 $2c
    jp $c1e0                                      ; $525c: $c3 $e0 $c1


    inc l                                         ; $525f: $2c
    cp $e3                                        ; $5260: $fe $e3
    or $e4                                        ; $5262: $f6 $e4
    cp b                                          ; $5264: $b8
    db $ec                                        ; $5265: $ec
    ld b, b                                       ; $5266: $40
    pop hl                                        ; $5267: $e1
    pop bc                                        ; $5268: $c1
    pop hl                                        ; $5269: $e1
    ld l, e                                       ; $526a: $6b
    ld l, e                                       ; $526b: $6b
    ld l, a                                       ; $526c: $6f
    ld l, e                                       ; $526d: $6b
    dec hl                                        ; $526e: $2b
    dec bc                                        ; $526f: $0b
    dec bc                                        ; $5270: $0b
    cp a                                          ; $5271: $bf
    pop hl                                        ; $5272: $e1
    dec bc                                        ; $5273: $0b
    ld c, d                                       ; $5274: $4a
    ld b, b                                       ; $5275: $40
    rst $20                                       ; $5276: $e7
    ld bc, $c02c                                  ; $5277: $01 $2c $c0
    ld [c], a                                     ; $527a: $e2
    rst $38                                       ; $527b: $ff
    db $e4                                        ; $527c: $e4
    or $e2                                        ; $527d: $f6 $e2
    cp b                                          ; $527f: $b8
    ld [$e017], a                                 ; $5280: $ea $17 $e0
    add a                                         ; $5283: $87
    pop hl                                        ; $5284: $e1
    add e                                         ; $5285: $83
    ld [c], a                                     ; $5286: $e2
    add hl, de                                    ; $5287: $19
    dec hl                                        ; $5288: $2b
    add $e0                                       ; $5289: $c6 $e0
    cp a                                          ; $528b: $bf
    ld [c], a                                     ; $528c: $e2
    ld c, e                                       ; $528d: $4b
    dec bc                                        ; $528e: $0b
    ld b, b                                       ; $528f: $40
    rst $20                                       ; $5290: $e7
    add c                                         ; $5291: $81
    pop hl                                        ; $5292: $e1
    ret nz                                        ; $5293: $c0

    push hl                                       ; $5294: $e5
    nop                                           ; $5295: $00
    or $e6                                        ; $5296: $f6 $e6
    cp b                                          ; $5298: $b8
    db $e3                                        ; $5299: $e3
    add hl, hl                                    ; $529a: $29
    db $e4                                        ; $529b: $e4
    ld c, b                                       ; $529c: $48
    db $e4                                        ; $529d: $e4
    pop bc                                        ; $529e: $c1
    ret nz                                        ; $529f: $c0

    add b                                         ; $52a0: $80
    pop hl                                        ; $52a1: $e1
    ld a, [hl]                                    ; $52a2: $7e
    ldh [$c0], a                                  ; $52a3: $e0 $c0
    push hl                                       ; $52a5: $e5
    nop                                           ; $52a6: $00
    ret nz                                        ; $52a7: $c0

    add $c2                                       ; $52a8: $c6 $c2
    and $f6                                       ; $52aa: $e6 $f6
    rst $20                                       ; $52ac: $e7
    ldh a, [$e4]                                  ; $52ad: $f0 $e4
    add b                                         ; $52af: $80
    ld [c], a                                     ; $52b0: $e2
    pop bc                                        ; $52b1: $c1
    rst $20                                       ; $52b2: $e7
    ret nz                                        ; $52b3: $c0

    ld [c], a                                     ; $52b4: $e2
    cp b                                          ; $52b5: $b8
    pop bc                                        ; $52b6: $c1
    and b                                         ; $52b7: $a0
    ret nz                                        ; $52b8: $c0

    add $7f                                       ; $52b9: $c6 $7f
    ret z                                         ; $52bb: $c8

    ld [hl], l                                    ; $52bc: $75
    ret                                           ; $52bd: $c9


    or b                                          ; $52be: $b0
    push hl                                       ; $52bf: $e5
    ld b, b                                       ; $52c0: $40
    ld [c], a                                     ; $52c1: $e2
    dec hl                                        ; $52c2: $2b
    add d                                         ; $52c3: $82
    ld [c], a                                     ; $52c4: $e2
    ld c, e                                       ; $52c5: $4b
    nop                                           ; $52c6: $00
    ld bc, $c0e2                                  ; $52c7: $01 $e2 $c0
    jp hl                                         ; $52ca: $e9


    ld b, b                                       ; $52cb: $40
    jp nz, $c13f                                  ; $52cc: $c2 $3f $c1

    ld bc, $f6e3                                  ; $52cf: $01 $e3 $f6
    push hl                                       ; $52d2: $e5
    dec l                                         ; $52d3: $2d
    call $e3c0                                    ; $52d4: $cd $c0 $e3
    add h                                         ; $52d7: $84
    nop                                           ; $52d8: $00
    ld [c], a                                     ; $52d9: $e2
    add c                                         ; $52da: $81
    push hl                                       ; $52db: $e5
    ld a, [bc]                                    ; $52dc: $0a
    ret nz                                        ; $52dd: $c0

    db $fd                                        ; $52de: $fd
    add b                                         ; $52df: $80
    ld [$e17f], a                                 ; $52e0: $ea $7f $e1
    pop bc                                        ; $52e3: $c1
    jp hl                                         ; $52e4: $e9


    ld l, e                                       ; $52e5: $6b
    ld hl, $800a                                  ; $52e6: $21 $0a $80
    jp $c700                                      ; $52e9: $c3 $00 $c7


    cp e                                          ; $52ec: $bb
    xor d                                         ; $52ed: $aa
    ret nz                                        ; $52ee: $c0

    ldh a, [$2b]                                  ; $52ef: $f0 $2b
    dec b                                         ; $52f1: $05
    ldh [$c1], a                                  ; $52f2: $e0 $c1
    jp hl                                         ; $52f4: $e9


    nop                                           ; $52f5: $00
    add b                                         ; $52f6: $80
    add sp, -$80                                  ; $52f7: $e8 $80
    cp a                                          ; $52f9: $bf
    ld c, h                                       ; $52fa: $4c
    jp nz, $e5fe                                  ; $52fb: $c2 $fe $e5

    cp h                                          ; $52fe: $bc
    and b                                         ; $52ff: $a0
    pop bc                                        ; $5300: $c1
    ldh [rLCDC], a                                ; $5301: $e0 $40
    rst $20                                       ; $5303: $e7
    ret nz                                        ; $5304: $c0

    call nc, Call_05b_6b08                        ; $5305: $d4 $08 $6b
    xor c                                         ; $5308: $a9
    nop                                           ; $5309: $00
    and c                                         ; $530a: $a1
    db $fc                                        ; $530b: $fc
    jp hl                                         ; $530c: $e9


    ld a, [hl+]                                   ; $530d: $2a
    rst $28                                       ; $530e: $ef
    add b                                         ; $530f: $80
    ld b, b                                       ; $5310: $40
    and a                                         ; $5311: $a7
    add b                                         ; $5312: $80
    rst $08                                       ; $5313: $cf
    ld l, l                                       ; $5314: $6d
    push hl                                       ; $5315: $e5
    ld [bc], a                                    ; $5316: $02
    dec hl                                        ; $5317: $2b
    and l                                         ; $5318: $a5
    ld a, [hl+]                                   ; $5319: $2a
    rst $38                                       ; $531a: $ff
    db $ec                                        ; $531b: $ec
    cp a                                          ; $531c: $bf
    pop hl                                        ; $531d: $e1
    rlca                                          ; $531e: $07
    and e                                         ; $531f: $a3
    add b                                         ; $5320: $80
    di                                            ; $5321: $f3
    ret nz                                        ; $5322: $c0

    and $ea                                       ; $5323: $e6 $ea
    add h                                         ; $5325: $84
    ret nz                                        ; $5326: $c0

    ret nz                                        ; $5327: $c0

    xor $7e                                       ; $5328: $ee $7e
    ldh [$87], a                                  ; $532a: $e0 $87
    ld [c], a                                     ; $532c: $e2
    add e                                         ; $532d: $83
    ldh [$80], a                                  ; $532e: $e0 $80
    ld a, [$f6c0]                                 ; $5330: $fa $c0 $f6
    ld a, [bc]                                    ; $5333: $0a
    ld a, [hl+]                                   ; $5334: $2a
    nop                                           ; $5335: $00
    ret nc                                        ; $5336: $d0

    and [hl]                                      ; $5337: $a6
    ld b, b                                       ; $5338: $40
    ld hl, sp-$58                                 ; $5339: $f8 $a8
    and [hl]                                      ; $533b: $a6
    sub [hl]                                      ; $533c: $96
    db $e3                                        ; $533d: $e3
    inc d                                         ; $533e: $14
    db $e3                                        ; $533f: $e3
    di                                            ; $5340: $f3
    jp hl                                         ; $5341: $e9


    add d                                         ; $5342: $82
    ld [$cb40], a                                 ; $5343: $ea $40 $cb
    nop                                           ; $5346: $00
    dec [hl]                                      ; $5347: $35
    adc [hl]                                      ; $5348: $8e
    ld d, l                                       ; $5349: $55
    ret                                           ; $534a: $c9


    ld c, c                                       ; $534b: $49
    call nc, $d580                                ; $534c: $d4 $80 $d5
    push de                                       ; $534f: $d5
    ld [hl], b                                    ; $5350: $70
    ret                                           ; $5351: $c9


    ld l, h                                       ; $5352: $6c
    pop bc                                        ; $5353: $c1
    ld h, e                                       ; $5354: $63
    or l                                          ; $5355: $b5
    ld l, l                                       ; $5356: $6d
    nop                                           ; $5357: $00
    or e                                          ; $5358: $b3
    ld l, d                                       ; $5359: $6a
    push de                                       ; $535a: $d5
    ld l, c                                       ; $535b: $69
    ret                                           ; $535c: $c9


    ld l, e                                       ; $535d: $6b
    pop bc                                        ; $535e: $c1
    ld h, e                                       ; $535f: $63
    nop                                           ; $5360: $00
    and d                                         ; $5361: $a2
    rlca                                          ; $5362: $07
    adc h                                         ; $5363: $8c
    ret nz                                        ; $5364: $c0

    db $ed                                        ; $5365: $ed
    push de                                       ; $5366: $d5
    ld h, l                                       ; $5367: $65
    nop                                           ; $5368: $00
    ret                                           ; $5369: $c9


    ld l, h                                       ; $536a: $6c
    ret nz                                        ; $536b: $c0

    add [hl]                                      ; $536c: $86
    ldh [$e6], a                                  ; $536d: $e0 $e6
    add c                                         ; $536f: $81
    ldh a, [$d5]                                  ; $5370: $f0 $d5
    ld l, c                                       ; $5372: $69
    ret                                           ; $5373: $c9


    ld l, e                                       ; $5374: $6b
    inc de                                        ; $5375: $13
    add [hl]                                      ; $5376: $86
    or l                                          ; $5377: $b5
    ld h, [hl]                                    ; $5378: $66
    nop                                           ; $5379: $00
    cp a                                          ; $537a: $bf
    pop de                                        ; $537b: $d1
    push de                                       ; $537c: $d5
    ld l, c                                       ; $537d: $69
    ret                                           ; $537e: $c9


    ld l, c                                       ; $537f: $69
    pop bc                                        ; $5380: $c1
    ld h, a                                       ; $5381: $67
    ld c, b                                       ; $5382: $48
    add e                                         ; $5383: $83
    ccf                                           ; $5384: $3f
    adc c                                         ; $5385: $89
    add b                                         ; $5386: $80
    db $ec                                        ; $5387: $ec
    push de                                       ; $5388: $d5
    ld l, d                                       ; $5389: $6a
    ld [bc], a                                    ; $538a: $02
    db $d3                                        ; $538b: $d3
    xor a                                         ; $538c: $af
    inc l                                         ; $538d: $2c
    ccf                                           ; $538e: $3f
    or [hl]                                       ; $538f: $b6
    push de                                       ; $5390: $d5
    ld l, l                                       ; $5391: $6d
    db $f4                                        ; $5392: $f4
    ld [$6793], a                                 ; $5393: $ea $93 $67
    db $ec                                        ; $5396: $ec
    ld [$8e2b], a                                 ; $5397: $ea $2b $8e
    nop                                           ; $539a: $00
    ret nz                                        ; $539b: $c0

    rst $38                                       ; $539c: $ff
    ld [hl], l                                    ; $539d: $75
    ld h, [hl]                                    ; $539e: $66
    ld b, c                                       ; $539f: $41
    pop de                                        ; $53a0: $d1
    push de                                       ; $53a1: $d5
    ld l, e                                       ; $53a2: $6b
    adc b                                         ; $53a3: $88
    cp d                                          ; $53a4: $ba
    cp a                                          ; $53a5: $bf
    or e                                          ; $53a6: $b3
    add b                                         ; $53a7: $80
    cp a                                          ; $53a8: $bf
    or l                                          ; $53a9: $b5
    ld a, d                                       ; $53aa: $7a
    nop                                           ; $53ab: $00
    push de                                       ; $53ac: $d5
    ld l, c                                       ; $53ad: $69
    db $f4                                        ; $53ae: $f4
    ld [$b007], a                                 ; $53af: $ea $07 $b0
    inc l                                         ; $53b2: $2c
    ld [hl], e                                    ; $53b3: $73
    push de                                       ; $53b4: $d5
    ld l, d                                       ; $53b5: $6a
    ld [$2b66], sp                                ; $53b6: $08 $66 $2b
    ld a, [c]                                     ; $53b9: $f2
    dec hl                                        ; $53ba: $2b
    ld l, e                                       ; $53bb: $6b
    nop                                           ; $53bc: $00
    push de                                       ; $53bd: $d5
    ld l, [hl]                                    ; $53be: $6e
    add b                                         ; $53bf: $80
    cp $c0                                        ; $53c0: $fe $c0
    db $ed                                        ; $53c2: $ed
    push de                                       ; $53c3: $d5
    ld l, h                                       ; $53c4: $6c
    db $f4                                        ; $53c5: $f4
    ld [$ff80], a                                 ; $53c6: $ea $80 $ff
    push de                                       ; $53c9: $d5
    ld [hl], b                                    ; $53ca: $70
    ld c, b                                       ; $53cb: $48
    ld b, a                                       ; $53cc: $47
    nop                                           ; $53cd: $00
    db $ec                                        ; $53ce: $ec
    ld a, [c]                                     ; $53cf: $f2
    add b                                         ; $53d0: $80
    di                                            ; $53d1: $f3
    ld [bc], a                                    ; $53d2: $02
    ldh a, [$94]                                  ; $53d3: $f0 $94
    rst $10                                       ; $53d5: $d7
    inc [hl]                                      ; $53d6: $34
    inc [hl]                                      ; $53d7: $34
    ld [de], a                                    ; $53d8: $12
    ld d, [hl]                                    ; $53d9: $56
    call c, $ffff                                 ; $53da: $dc $ff $ff
    rst $38                                       ; $53dd: $ff
    nop                                           ; $53de: $00
    rst $38                                       ; $53df: $ff
    rst $38                                       ; $53e0: $ff
    add hl, hl                                    ; $53e1: $29
    cp d                                          ; $53e2: $ba
    jp nc, $90ff                                  ; $53e3: $d2 $ff $90

    inc b                                         ; $53e6: $04
    dec [hl]                                      ; $53e7: $35
    rrc c                                         ; $53e8: $cb $09
    xor [hl]                                      ; $53ea: $ae
    or b                                          ; $53eb: $b0
    rst $30                                       ; $53ec: $f7
    sla [hl]                                      ; $53ed: $cb $26
    nop                                           ; $53ef: $00
    jp hl                                         ; $53f0: $e9


    sub h                                         ; $53f1: $94
    add b                                         ; $53f2: $80
    rst $38                                       ; $53f3: $ff
    ld b, [hl]                                    ; $53f4: $46
    ld b, [hl]                                    ; $53f5: $46
    rst $00                                       ; $53f6: $c7
    inc b                                         ; $53f7: $04
    cp [hl]                                       ; $53f8: $be
    dec c                                         ; $53f9: $0d
    xor [hl]                                      ; $53fa: $ae
    dec de                                        ; $53fb: $1b
    rst $38                                       ; $53fc: $ff
    inc h                                         ; $53fd: $24
    ld c, d                                       ; $53fe: $4a
    and $00                                       ; $53ff: $e6 $00
    cp [hl]                                       ; $5401: $be
    dec c                                         ; $5402: $0d
    ldh a, [$ef]                                  ; $5403: $f0 $ef
    ret nz                                        ; $5405: $c0

    db $fc                                        ; $5406: $fc
    cp [hl]                                       ; $5407: $be
    inc c                                         ; $5408: $0c
    ldh a, [$ee]                                  ; $5409: $f0 $ee
    ld d, $d4                                     ; $540b: $16 $d4
    ld c, d                                       ; $540d: $4a
    ld b, d                                       ; $540e: $42
    jp hl                                         ; $540f: $e9


    adc a                                         ; $5410: $8f
    nop                                           ; $5411: $00
    add b                                         ; $5412: $80
    push af                                       ; $5413: $f5
    sub c                                         ; $5414: $91
    or e                                          ; $5415: $b3
    jp hl                                         ; $5416: $e9


    sub b                                         ; $5417: $90
    xor [hl]                                      ; $5418: $ae
    dec c                                         ; $5419: $0d
    jr c, jr_05b_5421                             ; $541a: $38 $05

    add $20                                       ; $541c: $c6 $20
    dec d                                         ; $541e: $15
    ld [hl-], a                                   ; $541f: $32
    cp [hl]                                       ; $5420: $be

jr_05b_5421:
    ld [de], a                                    ; $5421: $12
    nop                                           ; $5422: $00
    db $ec                                        ; $5423: $ec
    ld c, $c8                                     ; $5424: $0e $c8
    inc b                                         ; $5426: $04
    jp hl                                         ; $5427: $e9


    pop af                                        ; $5428: $f1
    jp hl                                         ; $5429: $e9


    adc h                                         ; $542a: $8c
    xor [hl]                                      ; $542b: $ae
    inc de                                        ; $542c: $13
    rra                                           ; $542d: $1f
    call nc, $ae8d                                ; $542e: $d4 $8d $ae
    ld a, l                                       ; $5431: $7d
    or l                                          ; $5432: $b5
    nop                                           ; $5433: $00
    xor [hl]                                      ; $5434: $ae
    sbc $ca                                       ; $5435: $de $ca
    cp a                                          ; $5437: $bf
    cp a                                          ; $5438: $bf
    ld sp, hl                                     ; $5439: $f9
    and e                                         ; $543a: $a3
    cp $81                                        ; $543b: $fe $81
    rst $38                                       ; $543d: $ff
    ret nz                                        ; $543e: $c0

    rst $38                                       ; $543f: $ff
    rst $38                                       ; $5440: $ff
    rst $38                                       ; $5441: $ff
    rst $38                                       ; $5442: $ff
    rst $38                                       ; $5443: $ff
    nop                                           ; $5444: $00
    rst $38                                       ; $5445: $ff
    rst $38                                       ; $5446: $ff
    rst $38                                       ; $5447: $ff
    rst $38                                       ; $5448: $ff
    rst $38                                       ; $5449: $ff
    rst $38                                       ; $544a: $ff
    rst $38                                       ; $544b: $ff
    rst $38                                       ; $544c: $ff
    rst $38                                       ; $544d: $ff
    rst $38                                       ; $544e: $ff
    rst $38                                       ; $544f: $ff
    rst $38                                       ; $5450: $ff
    rst $38                                       ; $5451: $ff
    rst $38                                       ; $5452: $ff
    rst $38                                       ; $5453: $ff
    rst $38                                       ; $5454: $ff
    nop                                           ; $5455: $00
    rst $38                                       ; $5456: $ff
    rst $38                                       ; $5457: $ff
    rst $38                                       ; $5458: $ff
    rst $38                                       ; $5459: $ff
    rst $38                                       ; $545a: $ff
    rst $38                                       ; $545b: $ff
    rst $38                                       ; $545c: $ff
    rst $38                                       ; $545d: $ff
    rst $38                                       ; $545e: $ff
    rst $38                                       ; $545f: $ff
    rst $38                                       ; $5460: $ff
    rst $38                                       ; $5461: $ff
    rst $38                                       ; $5462: $ff
    rst $38                                       ; $5463: $ff
    rst $38                                       ; $5464: $ff
    rst $38                                       ; $5465: $ff
    nop                                           ; $5466: $00
    rst $38                                       ; $5467: $ff
    rst $38                                       ; $5468: $ff
    rst $38                                       ; $5469: $ff
    rst $38                                       ; $546a: $ff
    ld h, h                                       ; $546b: $64
    inc sp                                        ; $546c: $33
    db $dd                                        ; $546d: $dd
    rst $38                                       ; $546e: $ff
    rst $38                                       ; $546f: $ff
    rst $38                                       ; $5470: $ff
    rst $38                                       ; $5471: $ff
    rst $38                                       ; $5472: $ff
    rst $38                                       ; $5473: $ff
    rst $38                                       ; $5474: $ff
    rst $38                                       ; $5475: $ff
    rst $38                                       ; $5476: $ff
    nop                                           ; $5477: $00
    inc e                                         ; $5478: $1c
    sub c                                         ; $5479: $91
    nop                                           ; $547a: $00
    nop                                           ; $547b: $00
    nop                                           ; $547c: $00
    db $fd                                        ; $547d: $fd
    adc b                                         ; $547e: $88
    rst $38                                       ; $547f: $ff
    ldh [$4e], a                                  ; $5480: $e0 $4e
    ld c, [hl]                                    ; $5482: $4e
    ld c, [hl]                                    ; $5483: $4e
    adc h                                         ; $5484: $8c
    ld e, e                                       ; $5485: $5b
    ld e, e                                       ; $5486: $5b
    ld a, a                                       ; $5487: $7f
    ld e, h                                       ; $5488: $5c
    ld e, l                                       ; $5489: $5d
    ld sp, $5c5d                                  ; $548a: $31 $5d $5c
    ld e, e                                       ; $548d: $5b
    adc h                                         ; $548e: $8c
    di                                            ; $548f: $f3
    ldh [$91], a                                  ; $5490: $e0 $91
    nop                                           ; $5492: $00
    rst $38                                       ; $5493: $ff
    rst $38                                       ; $5494: $ff
    rst $20                                       ; $5495: $e7
    and $c0                                       ; $5496: $e6 $c0
    db $e3                                        ; $5498: $e3
    adc h                                         ; $5499: $8c
    jp nz, $ffe1                                  ; $549a: $c2 $e1 $ff

    pop hl                                        ; $549d: $e1
    ld h, b                                       ; $549e: $60
    add sp, -$41                                  ; $549f: $e8 $bf
    pop hl                                        ; $54a1: $e1
    jp z, $c0ff                                   ; $54a2: $ca $ff $c0

    db $ec                                        ; $54a5: $ec
    adc h                                         ; $54a6: $8c
    jp nz, Jump_05b_47e1                          ; $54a7: $c2 $e1 $47

    ld b, [hl]                                    ; $54aa: $46
    ld d, h                                       ; $54ab: $54
    ld h, e                                       ; $54ac: $63
    ld b, [hl]                                    ; $54ad: $46
    ld c, l                                       ; $54ae: $4d
    cp a                                          ; $54af: $bf
    ld [c], a                                     ; $54b0: $e2
    jp z, $80ff                                   ; $54b1: $ca $ff $80

    db $eb                                        ; $54b4: $eb
    adc h                                         ; $54b5: $8c
    ld h, b                                       ; $54b6: $60
    jp nz, Jump_000_1fe1                          ; $54b7: $c2 $e1 $1f

    ld [hl], $30                                  ; $54ba: $36 $30
    ld l, b                                       ; $54bc: $68
    ld l, b                                       ; $54bd: $68
    ld [hl-], a                                   ; $54be: $32
    cp a                                          ; $54bf: $bf
    ld [c], a                                     ; $54c0: $e2
    jp z, $e8ff                                   ; $54c1: $ca $ff $e8

    rst $20                                       ; $54c4: $e7
    ld a, a                                       ; $54c5: $7f
    ld h, d                                       ; $54c6: $62
    ld h, d                                       ; $54c7: $62
    ld h, d                                       ; $54c8: $62
    ld c, l                                       ; $54c9: $4d
    ld d, [hl]                                    ; $54ca: $56
    ld d, a                                       ; $54cb: $57
    ld d, [hl]                                    ; $54cc: $56
    jp nz, $dfe0                                  ; $54cd: $c2 $e0 $df

    jr nc, jr_05b_553c                            ; $54d0: $30 $6a

    ld l, b                                       ; $54d2: $68
    ld l, b                                       ; $54d3: $68
    ld l, d                                       ; $54d4: $6a
    cp a                                          ; $54d5: $bf
    ldh [$5f], a                                  ; $54d6: $e0 $5f
    ld e, e                                       ; $54d8: $5b
    db $fc                                        ; $54d9: $fc
    jp z, $e8ff                                   ; $54da: $ca $ff $e8

    rst $20                                       ; $54dd: $e7
    ld sp, $4d31                                  ; $54de: $31 $31 $4d
    ld [hl-], a                                   ; $54e1: $32
    ld h, l                                       ; $54e2: $65
    ld h, l                                       ; $54e3: $65
    rst $38                                       ; $54e4: $ff
    ld l, b                                       ; $54e5: $68
    ld l, b                                       ; $54e6: $68
    ld l, b                                       ; $54e7: $68
    jr nc, jr_05b_5553                            ; $54e8: $30 $69

    ld l, d                                       ; $54ea: $6a
    ld h, l                                       ; $54eb: $65
    ld h, l                                       ; $54ec: $65
    rra                                           ; $54ed: $1f
    ld l, d                                       ; $54ee: $6a
    jr nc, jr_05b_5541                            ; $54ef: $30 $50

    ld sp, $c05e                                  ; $54f1: $31 $5e $c0
    rst $38                                       ; $54f4: $ff
    ret nz                                        ; $54f5: $c0

    jp hl                                         ; $54f6: $e9


    pop bc                                        ; $54f7: $c1
    and $ff                                       ; $54f8: $e6 $ff
    ld l, c                                       ; $54fa: $69
    ld h, [hl]                                    ; $54fb: $66
    jr nc, jr_05b_5564                            ; $54fc: $30 $66

    ld l, c                                       ; $54fe: $69
    ld l, c                                       ; $54ff: $69
    ld d, b                                       ; $5500: $50
    ld sp, $6149                                  ; $5501: $31 $49 $61
    ret nz                                        ; $5504: $c0

    rst $38                                       ; $5505: $ff
    add b                                         ; $5506: $80
    jp hl                                         ; $5507: $e9


    ld d, b                                       ; $5508: $50
    pop bc                                        ; $5509: $c1
    rst $20                                       ; $550a: $e7
    ret nz                                        ; $550b: $c0

    pop hl                                        ; $550c: $e1
    ld d, c                                       ; $550d: $51
    add b                                         ; $550e: $80
    rst $38                                       ; $550f: $ff
    ld h, $40                                     ; $5510: $26 $40
    db $eb                                        ; $5512: $eb
    scf                                           ; $5513: $37
    ld b, d                                       ; $5514: $42
    pop bc                                        ; $5515: $c1
    jp hl                                         ; $5516: $e9


    nop                                           ; $5517: $00
    pop hl                                        ; $5518: $e1
    adc [hl]                                      ; $5519: $8e
    jp z, Jump_000_00ff                           ; $551a: $ca $ff $00

    jp hl                                         ; $551d: $e9


jr_05b_551e:
    sbc l                                         ; $551e: $9d
    add hl, sp                                    ; $551f: $39
    pop bc                                        ; $5520: $c1
    db $eb                                        ; $5521: $eb
    ld h, b                                       ; $5522: $60
    adc [hl]                                      ; $5523: $8e
    adc d                                         ; $5524: $8a
    jp z, $c0ff                                   ; $5525: $ca $ff $c0

    ret                                           ; $5528: $c9


    scf                                           ; $5529: $37
    adc a                                         ; $552a: $8f
    ld b, h                                       ; $552b: $44
    ld l, c                                       ; $552c: $69
    ld h, [hl]                                    ; $552d: $66
    ld h, [hl]                                    ; $552e: $66
    pop bc                                        ; $552f: $c1
    jp hl                                         ; $5530: $e9


    ret nz                                        ; $5531: $c0

    rst $38                                       ; $5532: $ff
    add b                                         ; $5533: $80
    jp z, $f931                                   ; $5534: $ca $31 $f9

    inc [hl]                                      ; $5537: $34
    ld b, b                                       ; $5538: $40
    ret nz                                        ; $5539: $c0

    db $fd                                        ; $553a: $fd
    pop hl                                        ; $553b: $e1

jr_05b_553c:
    ld d, [hl]                                    ; $553c: $56
    ld d, [hl]                                    ; $553d: $56
    ld c, l                                       ; $553e: $4d
    ld e, l                                       ; $553f: $5d
    ld e, h                                       ; $5540: $5c

jr_05b_5541:
    add sp, -$3f                                  ; $5541: $e8 $c1
    ldh [$c0], a                                  ; $5543: $e0 $c0
    rst $38                                       ; $5545: $ff
    jp hl                                         ; $5546: $e9


    add sp, $09                                   ; $5547: $e8 $09
    rst $38                                       ; $5549: $ff
    db $ec                                        ; $554a: $ec
    adc a                                         ; $554b: $8f
    ld c, a                                       ; $554c: $4f
    ld c, a                                       ; $554d: $4f
    add hl, hl                                    ; $554e: $29
    ld c, a                                       ; $554f: $4f
    jp z, $e8ff                                   ; $5550: $ca $ff $e8

jr_05b_5553:
    rst $20                                       ; $5553: $e7
    adc c                                         ; $5554: $89

Jump_05b_5555:
    rst $38                                       ; $5555: $ff
    db $ec                                        ; $5556: $ec
    ld c, a                                       ; $5557: $4f
    cp a                                          ; $5558: $bf
    ldh [$ca], a                                  ; $5559: $e0 $ca
    rst $38                                       ; $555b: $ff
    jr nc, jr_05b_551e                            ; $555c: $30 $c0

    ld hl, sp-$41                                 ; $555e: $f8 $bf
    ldh [$ca], a                                  ; $5560: $e0 $ca
    rst $38                                       ; $5562: $ff
    ret nz                                        ; $5563: $c0

jr_05b_5564:
    ld sp, hl                                     ; $5564: $f9
    ld c, a                                       ; $5565: $4f
    adc a                                         ; $5566: $8f
    jp z, $ffff                                   ; $5567: $ca $ff $ff

    rst $38                                       ; $556a: $ff
    nop                                           ; $556b: $00
    rst $38                                       ; $556c: $ff
    rst $38                                       ; $556d: $ff
    rst $38                                       ; $556e: $ff
    rst $38                                       ; $556f: $ff
    rst $38                                       ; $5570: $ff
    rst $38                                       ; $5571: $ff
    rst $38                                       ; $5572: $ff
    rst $38                                       ; $5573: $ff
    rst $38                                       ; $5574: $ff
    rst $38                                       ; $5575: $ff
    rst $38                                       ; $5576: $ff
    rst $38                                       ; $5577: $ff
    rst $38                                       ; $5578: $ff
    rst $38                                       ; $5579: $ff
    rst $38                                       ; $557a: $ff
    rst $38                                       ; $557b: $ff
    nop                                           ; $557c: $00
    rst $38                                       ; $557d: $ff
    rst $38                                       ; $557e: $ff
    rst $38                                       ; $557f: $ff
    rst $38                                       ; $5580: $ff
    rst $38                                       ; $5581: $ff
    rst $38                                       ; $5582: $ff
    rst $38                                       ; $5583: $ff
    rst $38                                       ; $5584: $ff
    rst $38                                       ; $5585: $ff
    rst $38                                       ; $5586: $ff
    rst $38                                       ; $5587: $ff
    rst $38                                       ; $5588: $ff

Jump_05b_5589:
    rst $38                                       ; $5589: $ff
    rst $38                                       ; $558a: $ff
    rst $38                                       ; $558b: $ff
    rst $38                                       ; $558c: $ff
    nop                                           ; $558d: $00
    rst $38                                       ; $558e: $ff
    rst $38                                       ; $558f: $ff
    rst $38                                       ; $5590: $ff
    rst $38                                       ; $5591: $ff
    rst $38                                       ; $5592: $ff
    rst $38                                       ; $5593: $ff
    rst $38                                       ; $5594: $ff
    rst $38                                       ; $5595: $ff
    rst $38                                       ; $5596: $ff
    rst $38                                       ; $5597: $ff
    rst $38                                       ; $5598: $ff
    rst $38                                       ; $5599: $ff
    rst $38                                       ; $559a: $ff
    rst $38                                       ; $559b: $ff
    rst $38                                       ; $559c: $ff
    rst $38                                       ; $559d: $ff
    nop                                           ; $559e: $00
    rst $38                                       ; $559f: $ff
    rst $38                                       ; $55a0: $ff
    rst $38                                       ; $55a1: $ff
    rst $38                                       ; $55a2: $ff
    rst $38                                       ; $55a3: $ff
    rst $38                                       ; $55a4: $ff
    rst $38                                       ; $55a5: $ff
    rst $38                                       ; $55a6: $ff
    rst $38                                       ; $55a7: $ff
    rst $38                                       ; $55a8: $ff
    rst $38                                       ; $55a9: $ff
    rst $38                                       ; $55aa: $ff
    rst $38                                       ; $55ab: $ff
    rst $38                                       ; $55ac: $ff
    rst $38                                       ; $55ad: $ff
    rst $38                                       ; $55ae: $ff
    nop                                           ; $55af: $00
    rst $38                                       ; $55b0: $ff
    rst $38                                       ; $55b1: $ff
    rst $38                                       ; $55b2: $ff
    rst $38                                       ; $55b3: $ff
    rst $38                                       ; $55b4: $ff
    rst $38                                       ; $55b5: $ff
    rst $38                                       ; $55b6: $ff
    rst $38                                       ; $55b7: $ff
    rst $38                                       ; $55b8: $ff
    rst $38                                       ; $55b9: $ff
    rst $38                                       ; $55ba: $ff
    rst $38                                       ; $55bb: $ff
    rst $38                                       ; $55bc: $ff
    rst $38                                       ; $55bd: $ff
    rst $38                                       ; $55be: $ff
    rst $38                                       ; $55bf: $ff
    nop                                           ; $55c0: $00
    rst $38                                       ; $55c1: $ff
    rst $38                                       ; $55c2: $ff
    rst $38                                       ; $55c3: $ff
    rst $38                                       ; $55c4: $ff
    rst $38                                       ; $55c5: $ff
    rst $38                                       ; $55c6: $ff
    rst $38                                       ; $55c7: $ff
    rst $38                                       ; $55c8: $ff
    rst $38                                       ; $55c9: $ff
    rst $38                                       ; $55ca: $ff
    rst $38                                       ; $55cb: $ff
    rst $38                                       ; $55cc: $ff
    rst $38                                       ; $55cd: $ff
    rst $38                                       ; $55ce: $ff
    rst $38                                       ; $55cf: $ff
    rst $38                                       ; $55d0: $ff
    nop                                           ; $55d1: $00
    rst $38                                       ; $55d2: $ff
    rst $38                                       ; $55d3: $ff
    rst $38                                       ; $55d4: $ff
    rst $38                                       ; $55d5: $ff
    rst $38                                       ; $55d6: $ff
    rst $38                                       ; $55d7: $ff
    rst $38                                       ; $55d8: $ff
    rst $38                                       ; $55d9: $ff
    rst $38                                       ; $55da: $ff
    rst $38                                       ; $55db: $ff
    rst $38                                       ; $55dc: $ff
    rst $38                                       ; $55dd: $ff
    rst $38                                       ; $55de: $ff
    rst $38                                       ; $55df: $ff
    rst $38                                       ; $55e0: $ff
    rst $38                                       ; $55e1: $ff
    nop                                           ; $55e2: $00
    rst $38                                       ; $55e3: $ff
    rst $38                                       ; $55e4: $ff
    rst $38                                       ; $55e5: $ff
    rst $38                                       ; $55e6: $ff
    rst $38                                       ; $55e7: $ff
    rst $38                                       ; $55e8: $ff
    rst $38                                       ; $55e9: $ff
    rst $38                                       ; $55ea: $ff
    rst $38                                       ; $55eb: $ff
    rst $38                                       ; $55ec: $ff
    rst $38                                       ; $55ed: $ff
    rst $38                                       ; $55ee: $ff
    rst $38                                       ; $55ef: $ff
    rst $38                                       ; $55f0: $ff
    rst $38                                       ; $55f1: $ff
    rst $38                                       ; $55f2: $ff
    nop                                           ; $55f3: $00
    rst $38                                       ; $55f4: $ff
    rst $38                                       ; $55f5: $ff
    rst $38                                       ; $55f6: $ff
    rst $38                                       ; $55f7: $ff
    rst $38                                       ; $55f8: $ff
    rst $38                                       ; $55f9: $ff
    rst $38                                       ; $55fa: $ff
    rst $38                                       ; $55fb: $ff
    rst $38                                       ; $55fc: $ff
    rst $38                                       ; $55fd: $ff
    rst $38                                       ; $55fe: $ff
    rst $38                                       ; $55ff: $ff
    rst $38                                       ; $5600: $ff
    rst $38                                       ; $5601: $ff
    rst $38                                       ; $5602: $ff
    rst $38                                       ; $5603: $ff
    nop                                           ; $5604: $00
    rst $38                                       ; $5605: $ff
    rst $38                                       ; $5606: $ff
    rst $38                                       ; $5607: $ff
    rst $38                                       ; $5608: $ff
    rst $38                                       ; $5609: $ff
    rst $38                                       ; $560a: $ff
    rst $38                                       ; $560b: $ff
    rst $38                                       ; $560c: $ff
    rst $38                                       ; $560d: $ff
    rst $38                                       ; $560e: $ff
    rst $38                                       ; $560f: $ff
    rst $38                                       ; $5610: $ff
    rst $38                                       ; $5611: $ff
    rst $38                                       ; $5612: $ff
    rst $38                                       ; $5613: $ff
    rst $38                                       ; $5614: $ff
    nop                                           ; $5615: $00
    rst $38                                       ; $5616: $ff
    rst $38                                       ; $5617: $ff
    rst $38                                       ; $5618: $ff
    rst $38                                       ; $5619: $ff
    rst $38                                       ; $561a: $ff
    rst $38                                       ; $561b: $ff
    rst $38                                       ; $561c: $ff
    rst $38                                       ; $561d: $ff
    rst $38                                       ; $561e: $ff
    rst $38                                       ; $561f: $ff
    rst $38                                       ; $5620: $ff
    rst $38                                       ; $5621: $ff
    rst $38                                       ; $5622: $ff
    rst $38                                       ; $5623: $ff
    rst $38                                       ; $5624: $ff
    rst $38                                       ; $5625: $ff
    nop                                           ; $5626: $00
    rst $38                                       ; $5627: $ff
    rst $38                                       ; $5628: $ff
    rst $38                                       ; $5629: $ff
    di                                            ; $562a: $f3
    nop                                           ; $562b: $00
    nop                                           ; $562c: $00
    nop                                           ; $562d: $00
    and l                                         ; $562e: $a5
    nop                                           ; $562f: $00
    rst $38                                       ; $5630: $ff
    push hl                                       ; $5631: $e5
    ld [hl-], a                                   ; $5632: $32
    or $e6                                        ; $5633: $f6 $e6
    rst $30                                       ; $5635: $f7
    rst $20                                       ; $5636: $e7
    dec [hl]                                      ; $5637: $35
    db $ec                                        ; $5638: $ec
    xor $37                                       ; $5639: $ee $37
    db $ec                                        ; $563b: $ec
    jp c, $c7f0                                   ; $563c: $da $f0 $c7

    add sp, $33                                   ; $563f: $e8 $33
    ld sp, $f2e0                                  ; $5641: $31 $e0 $f2
    ld [hl], $30                                  ; $5644: $36 $30
    scf                                           ; $5646: $37
    cp a                                          ; $5647: $bf
    ld h, $20                                     ; $5648: $26 $20
    daa                                           ; $564a: $27
    db $10                                        ; $564b: $10
    ld d, $17                                     ; $564c: $16 $17
    jp nz, Jump_000_34f6                          ; $564e: $c2 $f6 $34

    rst $38                                       ; $5651: $ff
    ld [hl], $32                                  ; $5652: $36 $32
    jr nc, jr_05b_568d                            ; $5654: $30 $37

    ld sp, $3133                                  ; $5656: $31 $33 $31
    inc sp                                        ; $5659: $33
    nop                                           ; $565a: $00
    and b                                         ; $565b: $a0
    ei                                            ; $565c: $fb
    rst $38                                       ; $565d: $ff
    rst $28                                       ; $565e: $ef
    nop                                           ; $565f: $00
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    ld l, d                                       ; $5662: $6a
    ld d, [hl]                                    ; $5663: $56
    sbc d                                         ; $5664: $9a
    ld d, [hl]                                    ; $5665: $56
    db $ed                                        ; $5666: $ed
    ld e, b                                       ; $5667: $58
    ld [hl], c                                    ; $5668: $71
    ld e, d                                       ; $5669: $5a
    ret nz                                        ; $566a: $c0

    rra                                           ; $566b: $1f
    adc d                                         ; $566c: $8a
    inc bc                                        ; $566d: $03
    add b                                         ; $566e: $80
    ld [bc], a                                    ; $566f: $02
    ld h, b                                       ; $5670: $60
    ld bc, $03ef                                  ; $5671: $01 $ef $03
    db $f4                                        ; $5674: $f4
    inc bc                                        ; $5675: $03
    adc d                                         ; $5676: $8a
    inc bc                                        ; $5677: $03
    add b                                         ; $5678: $80
    ld [bc], a                                    ; $5679: $02
    rra                                           ; $567a: $1f
    ld [bc], a                                    ; $567b: $02
    ld c, e                                       ; $567c: $4b
    ld c, $38                                     ; $567d: $0e $38
    ld bc, $038a                                  ; $567f: $01 $8a $03
    ld [$0825], sp                                ; $5682: $08 $25 $08
    dec h                                         ; $5685: $25
    ld [$0825], sp                                ; $5686: $08 $25 $08
    dec h                                         ; $5689: $25
    ld [$0825], sp                                ; $568a: $08 $25 $08

jr_05b_568d:
    dec h                                         ; $568d: $25
    ld [$0825], sp                                ; $568e: $08 $25 $08
    dec h                                         ; $5691: $25
    ld [$0825], sp                                ; $5692: $08 $25 $08
    dec h                                         ; $5695: $25
    ld [$0825], sp                                ; $5696: $08 $25 $08
    dec h                                         ; $5699: $25
    push af                                       ; $569a: $f5
    inc c                                         ; $569b: $0c
    rst $38                                       ; $569c: $ff
    ldh [$0b], a                                  ; $569d: $e0 $0b
    rst $38                                       ; $569f: $ff
    ldh [rWX], a                                  ; $56a0: $e0 $4b
    dec hl                                        ; $56a2: $2b
    dec hl                                        ; $56a3: $2b
    dec bc                                        ; $56a4: $0b
    sbc a                                         ; $56a5: $9f
    dec hl                                        ; $56a6: $2b
    dec bc                                        ; $56a7: $0b
    dec bc                                        ; $56a8: $0b
    ld l, e                                       ; $56a9: $6b
    dec bc                                        ; $56aa: $0b
    ld a, [$ece0]                                 ; $56ab: $fa $e0 $ec
    ldh [$4c], a                                  ; $56ae: $e0 $4c
    add b                                         ; $56b0: $80
    rst $38                                       ; $56b1: $ff
    ldh [$f9], a                                  ; $56b2: $e0 $f9
    pop hl                                        ; $56b4: $e1
    db $fd                                        ; $56b5: $fd
    ld [c], a                                     ; $56b6: $e2
    ld hl, sp-$1d                                 ; $56b7: $f8 $e3
    rst $30                                       ; $56b9: $f7
    db $eb                                        ; $56ba: $eb
    db $fc                                        ; $56bb: $fc
    jp hl                                         ; $56bc: $e9


    pop bc                                        ; $56bd: $c1
    db $e3                                        ; $56be: $e3
    dec hl                                        ; $56bf: $2b
    add h                                         ; $56c0: $84
    call nz, $bfe0                                ; $56c1: $c4 $e0 $bf
    ld [c], a                                     ; $56c4: $e2
    ld c, e                                       ; $56c5: $4b
    ldh [$e2], a                                  ; $56c6: $e0 $e2
    ret nz                                        ; $56c8: $c0

    ldh [$fd], a                                  ; $56c9: $e0 $fd
    push hl                                       ; $56cb: $e5
    or l                                          ; $56cc: $b5
    db $e3                                        ; $56cd: $e3
    ld c, h                                       ; $56ce: $4c
    rlca                                          ; $56cf: $07
    inc c                                         ; $56d0: $0c
    inc l                                         ; $56d1: $2c
    inc l                                         ; $56d2: $2c
    rst $30                                       ; $56d3: $f7
    and $c0                                       ; $56d4: $e6 $c0
    db $ec                                        ; $56d6: $ec
    pop bc                                        ; $56d7: $c1
    pop hl                                        ; $56d8: $e1
    ld a, h                                       ; $56d9: $7c
    ldh [$bf], a                                  ; $56da: $e0 $bf
    db $e3                                        ; $56dc: $e3
    adc b                                         ; $56dd: $88
    ret nz                                        ; $56de: $c0

    db $eb                                        ; $56df: $eb
    cp c                                          ; $56e0: $b9
    ldh [$b2], a                                  ; $56e1: $e0 $b2
    db $e4                                        ; $56e3: $e4
    inc l                                         ; $56e4: $2c
    ret                                           ; $56e5: $c9


    pop hl                                        ; $56e6: $e1
    rst $30                                       ; $56e7: $f7
    and $80                                       ; $56e8: $e6 $80
    jp hl                                         ; $56ea: $e9


    dec hl                                        ; $56eb: $2b
    nop                                           ; $56ec: $00
    add c                                         ; $56ed: $81
    pop hl                                        ; $56ee: $e1
    jp nz, Jump_05b_7ee0                          ; $56ef: $c2 $e0 $7e

    pop hl                                        ; $56f2: $e1
    ld a, $e0                                     ; $56f3: $3e $e0
    ld d, e                                       ; $56f5: $53
    db $e3                                        ; $56f6: $e3
    db $fc                                        ; $56f7: $fc
    ld [$e12e], a                                 ; $56f8: $ea $2e $e1
    pop bc                                        ; $56fb: $c1
    ld [c], a                                     ; $56fc: $e2
    db $ec                                        ; $56fd: $ec
    rst $30                                       ; $56fe: $f7

jr_05b_56ff:
    push hl                                       ; $56ff: $e5
    inc a                                         ; $5700: $3c
    add sp, $2c                                   ; $5701: $e8 $2c
    ld c, h                                       ; $5703: $4c
    dec b                                         ; $5704: $05
    ldh [rOCPD], a                                ; $5705: $e0 $6b
    dec hl                                        ; $5707: $2b
    ld c, e                                       ; $5708: $4b
    nop                                           ; $5709: $00
    add c                                         ; $570a: $81
    ldh [$fc], a                                  ; $570b: $e0 $fc
    ldh [$fb], a                                  ; $570d: $e0 $fb
    ret nz                                        ; $570f: $c0

    jr nz, jr_05b_56ff                            ; $5710: $20 $ed

    ld a, [hl]                                    ; $5712: $7e
    push hl                                       ; $5713: $e5
    rst $30                                       ; $5714: $f7
    add sp, -$37                                  ; $5715: $e8 $c9
    pop hl                                        ; $5717: $e1
    ret nz                                        ; $5718: $c0

    and $1d                                       ; $5719: $e6 $1d
    inc l                                         ; $571b: $2c
    push bc                                       ; $571c: $c5
    pop bc                                        ; $571d: $c1
    ld l, e                                       ; $571e: $6b
    ld c, e                                       ; $571f: $4b
    ld c, e                                       ; $5720: $4b
    inc b                                         ; $5721: $04
    pop hl                                        ; $5722: $e1
    ret nz                                        ; $5723: $c0

    push hl                                       ; $5724: $e5
    add d                                         ; $5725: $82
    db $ec                                        ; $5726: $ec
    ldh [$f1], a                                  ; $5727: $e0 $f1
    jp nz, $c6e8                                  ; $5729: $c2 $e8 $c6

    cp a                                          ; $572c: $bf
    set 5, c                                      ; $572d: $cb $e9
    ret nz                                        ; $572f: $c0

    add a                                         ; $5730: $87
    ret nz                                        ; $5731: $c0

    ld l, e                                       ; $5732: $6b
    ld c, e                                       ; $5733: $4b
    ld l, e                                       ; $5734: $6b
    ld h, c                                       ; $5735: $61
    ld l, e                                       ; $5736: $6b
    inc b                                         ; $5737: $04
    ldh [$80], a                                  ; $5738: $e0 $80
    db $e3                                        ; $573a: $e3
    ld b, b                                       ; $573b: $40
    db $ed                                        ; $573c: $ed
    ld a, a                                       ; $573d: $7f
    db $db                                        ; $573e: $db
    inc l                                         ; $573f: $2c
    inc l                                         ; $5740: $2c
    ld c, d                                       ; $5741: $4a
    ret nz                                        ; $5742: $c0

    ld b, b                                       ; $5743: $40
    add b                                         ; $5744: $80
    ldh [$7e], a                                  ; $5745: $e0 $7e
    ret nz                                        ; $5747: $c0

    ret nz                                        ; $5748: $c0

    and $fe                                       ; $5749: $e6 $fe
    db $ec                                        ; $574b: $ec
    ld l, [hl]                                    ; $574c: $6e
    add sp, $3f                                   ; $574d: $e8 $3f
    ret nc                                        ; $574f: $d0

    inc c                                         ; $5750: $0c
    ld bc, $80c0                                  ; $5751: $01 $c0 $80
    ret nz                                        ; $5754: $c0

    db $eb                                        ; $5755: $eb
    ld d, [hl]                                    ; $5756: $56
    add sp, -$04                                  ; $5757: $e8 $fc
    and d                                         ; $5759: $a2
    db $f4                                        ; $575a: $f4
    and $41                                       ; $575b: $e6 $41
    rst $28                                       ; $575d: $ef
    cp [hl]                                       ; $575e: $be
    and c                                         ; $575f: $a1
    jp nz, Jump_05b_6ba0                          ; $5760: $c2 $a0 $6b

    add c                                         ; $5763: $81
    dec bc                                        ; $5764: $0b
    cp $a1                                        ; $5765: $fe $a1
    ret nz                                        ; $5767: $c0

    rst $20                                       ; $5768: $e7
    cp l                                          ; $5769: $bd
    and $41                                       ; $576a: $e6 $41
    push bc                                       ; $576c: $c5
    rst $28                                       ; $576d: $ef
    ld [$ee81], a                                 ; $576e: $ea $81 $ee
    ld c, e                                       ; $5771: $4b
    ld a, [bc]                                    ; $5772: $0a
    ld a, h                                       ; $5773: $7c
    pop bc                                        ; $5774: $c1
    ld c, e                                       ; $5775: $4b
    ret nz                                        ; $5776: $c0

    rst $00                                       ; $5777: $c7
    inc l                                         ; $5778: $2c
    rst $08                                       ; $5779: $cf
    add $12                                       ; $577a: $c6 $12
    jp $ccc0                                      ; $577c: $c3 $c0 $cc


    cp a                                          ; $577f: $bf
    xor l                                         ; $5780: $ad
    add b                                         ; $5781: $80
    ld bc, $ffc0                                  ; $5782: $01 $c0 $ff
    db $e3                                        ; $5785: $e3
    add b                                         ; $5786: $80
    ret z                                         ; $5787: $c8

    ld a, a                                       ; $5788: $7f
    and l                                         ; $5789: $a5
    ld a, [hl-]                                   ; $578a: $3a
    and h                                         ; $578b: $a4
    ccf                                           ; $578c: $3f
    or a                                          ; $578d: $b7
    nop                                           ; $578e: $00
    and b                                         ; $578f: $a0
    dec hl                                        ; $5790: $2b
    nop                                           ; $5791: $00
    add b                                         ; $5792: $80
    ret nz                                        ; $5793: $c0

    ccf                                           ; $5794: $3f
    ret nz                                        ; $5795: $c0

    nop                                           ; $5796: $00
    push bc                                       ; $5797: $c5
    dec e                                         ; $5798: $1d
    xor c                                         ; $5799: $a9
    ld b, a                                       ; $579a: $47
    rst $20                                       ; $579b: $e7
    ld b, b                                       ; $579c: $40
    call nc, $e2c0                                ; $579d: $d4 $c0 $e2
    add b                                         ; $57a0: $80
    pop bc                                        ; $57a1: $c1
    nop                                           ; $57a2: $00
    pop bc                                        ; $57a3: $c1
    pop hl                                        ; $57a4: $e1
    ret nz                                        ; $57a5: $c0

    and d                                         ; $57a6: $a2
    adc c                                         ; $57a7: $89
    push hl                                       ; $57a8: $e5
    cp d                                          ; $57a9: $ba
    add d                                         ; $57aa: $82
    db $fc                                        ; $57ab: $fc
    db $e3                                        ; $57ac: $e3
    add h                                         ; $57ad: $84
    ret z                                         ; $57ae: $c8

    and [hl]                                      ; $57af: $a6
    add c                                         ; $57b0: $81
    dec a                                         ; $57b1: $3d
    xor d                                         ; $57b2: $aa
    nop                                           ; $57b3: $00
    add b                                         ; $57b4: $80
    add c                                         ; $57b5: $81
    cp a                                          ; $57b6: $bf
    ld [c], a                                     ; $57b7: $e2
    pop bc                                        ; $57b8: $c1
    db $e3                                        ; $57b9: $e3
    ld b, b                                       ; $57ba: $40

jr_05b_57bb:
    and h                                         ; $57bb: $a4
    ld a, h                                       ; $57bc: $7c
    add h                                         ; $57bd: $84
    push bc                                       ; $57be: $c5
    xor $c0                                       ; $57bf: $ee $c0
    di                                            ; $57c1: $f3
    cp $c1                                        ; $57c2: $fe $c1
    nop                                           ; $57c4: $00
    ld b, e                                       ; $57c5: $43
    add d                                         ; $57c6: $82
    ld [hl], a                                    ; $57c7: $77
    and b                                         ; $57c8: $a0
    ld c, h                                       ; $57c9: $4c
    rst $20                                       ; $57ca: $e7
    cp l                                          ; $57cb: $bd
    xor c                                         ; $57cc: $a9
    inc [hl]                                      ; $57cd: $34
    rst $20                                       ; $57ce: $e7
    ld c, h                                       ; $57cf: $4c
    and d                                         ; $57d0: $a2
    jr nz, jr_05b_57bb                            ; $57d1: $20 $e8

    dec d                                         ; $57d3: $15
    sub e                                         ; $57d4: $93
    nop                                           ; $57d5: $00
    ld hl, $51a7                                  ; $57d6: $21 $a7 $51
    add a                                         ; $57d9: $87
    inc c                                         ; $57da: $0c
    xor b                                         ; $57db: $a8
    sbc $cb                                       ; $57dc: $de $cb
    dec d                                         ; $57de: $15
    sub h                                         ; $57df: $94
    xor h                                         ; $57e0: $ac
    push af                                       ; $57e1: $f5
    and c                                         ; $57e2: $a1
    adc h                                         ; $57e3: $8c
    dec d                                         ; $57e4: $15
    sub c                                         ; $57e5: $91
    nop                                           ; $57e6: $00
    pop bc                                        ; $57e7: $c1
    ld [hl], c                                    ; $57e8: $71
    call z, $8089                                 ; $57e9: $cc $89 $80
    add l                                         ; $57ec: $85
    dec d                                         ; $57ed: $15
    sub l                                         ; $57ee: $95
    pop bc                                        ; $57ef: $c1
    ld [hl], c                                    ; $57f0: $71
    rst $38                                       ; $57f1: $ff
    ld h, l                                       ; $57f2: $65
    ret nz                                        ; $57f3: $c0

    jp hl                                         ; $57f4: $e9


    dec d                                         ; $57f5: $15
    sub [hl]                                      ; $57f6: $96
    nop                                           ; $57f7: $00
    pop bc                                        ; $57f8: $c1
    ld [hl], b                                    ; $57f9: $70
    ld l, e                                       ; $57fa: $6b
    and c                                         ; $57fb: $a1
    ld b, b                                       ; $57fc: $40
    rst $08                                       ; $57fd: $cf
    dec d                                         ; $57fe: $15
    sub [hl]                                      ; $57ff: $96
    pop bc                                        ; $5800: $c1
    ld l, [hl]                                    ; $5801: $6e
    or a                                          ; $5802: $b7
    add a                                         ; $5803: $87
    dec a                                         ; $5804: $3d
    ld h, a                                       ; $5805: $67
    dec d                                         ; $5806: $15
    sbc b                                         ; $5807: $98
    nop                                           ; $5808: $00
    pop bc                                        ; $5809: $c1
    ld [hl], b                                    ; $580a: $70
    ret nz                                        ; $580b: $c0

    adc a                                         ; $580c: $8f
    dec d                                         ; $580d: $15
    sbc c                                         ; $580e: $99
    pop bc                                        ; $580f: $c1
    ld l, a                                       ; $5810: $6f
    ret nz                                        ; $5811: $c0

    add [hl]                                      ; $5812: $86
    add b                                         ; $5813: $80
    rst $20                                       ; $5814: $e7
    dec d                                         ; $5815: $15
    sub l                                         ; $5816: $95
    pop bc                                        ; $5817: $c1
    ld [hl], b                                    ; $5818: $70
    nop                                           ; $5819: $00
    or $27                                        ; $581a: $f6 $27
    ret nz                                        ; $581c: $c0

    ld [$9715], a                                 ; $581d: $ea $15 $97
    pop bc                                        ; $5820: $c1
    ld l, h                                       ; $5821: $6c
    nop                                           ; $5822: $00
    ld [hl], h                                    ; $5823: $74
    dec d                                         ; $5824: $15
    sub l                                         ; $5825: $95
    pop bc                                        ; $5826: $c1
    ld l, a                                       ; $5827: $6f
    ld [hl-], a                                   ; $5828: $32
    xor e                                         ; $5829: $ab
    nop                                           ; $582a: $00
    xor [hl]                                      ; $582b: $ae
    jp hl                                         ; $582c: $e9


    dec d                                         ; $582d: $15
    adc [hl]                                      ; $582e: $8e
    pop bc                                        ; $582f: $c1
    ld [hl], d                                    ; $5830: $72
    nop                                           ; $5831: $00
    ld [hl], b                                    ; $5832: $70
    dec d                                         ; $5833: $15
    sub [hl]                                      ; $5834: $96
    pop bc                                        ; $5835: $c1
    ld [hl], c                                    ; $5836: $71
    inc b                                         ; $5837: $04
    cpl                                           ; $5838: $2f
    dec d                                         ; $5839: $15
    sub a                                         ; $583a: $97
    nop                                           ; $583b: $00
    pop bc                                        ; $583c: $c1
    ld [hl], c                                    ; $583d: $71
    adc h                                         ; $583e: $8c
    or b                                          ; $583f: $b0
    dec d                                         ; $5840: $15
    sub l                                         ; $5841: $95
    xor h                                         ; $5842: $ac
    ld sp, hl                                     ; $5843: $f9
    ret nz                                        ; $5844: $c0

    xor $15                                       ; $5845: $ee $15
    sub b                                         ; $5847: $90
    xor h                                         ; $5848: $ac
    ld a, [c]                                     ; $5849: $f2
    ret nz                                        ; $584a: $c0

    adc c                                         ; $584b: $89
    nop                                           ; $584c: $00
    scf                                           ; $584d: $37
    sub b                                         ; $584e: $90
    dec d                                         ; $584f: $15
    adc c                                         ; $5850: $89
    xor h                                         ; $5851: $ac
    db $f4                                        ; $5852: $f4
    add b                                         ; $5853: $80
    ld h, [hl]                                    ; $5854: $66
    ld sp, $2297                                  ; $5855: $31 $97 $22
    dec l                                         ; $5858: $2d
    push de                                       ; $5859: $d5
    adc h                                         ; $585a: $8c
    jp Jump_000_000b                              ; $585b: $c3 $0b $00


    rst $38                                       ; $585e: $ff
    rst $38                                       ; $585f: $ff
    ld d, l                                       ; $5860: $55
    ld a, [bc]                                    ; $5861: $0a
    ld [hl], a                                    ; $5862: $77
    ld l, [hl]                                    ; $5863: $6e
    ld d, l                                       ; $5864: $55
    ld [hl], $ff                                  ; $5865: $36 $ff
    rst $38                                       ; $5867: $ff

jr_05b_5868:
    ld b, b                                       ; $5868: $40
    cp h                                          ; $5869: $bc
    ld [hl], a                                    ; $586a: $77
    rst $38                                       ; $586b: $ff
    ld b, b                                       ; $586c: $40
    cp h                                          ; $586d: $bc
    nop                                           ; $586e: $00
    ld a, e                                       ; $586f: $7b
    dec d                                         ; $5870: $15
    sbc c                                         ; $5871: $99
    call z, Call_000_3955                         ; $5872: $cc $55 $39
    ld h, $ff                                     ; $5875: $26 $ff
    ld d, l                                       ; $5877: $55
    jr c, jr_05b_58a0                             ; $5878: $38 $26

    rst $38                                       ; $587a: $ff
    ld b, b                                       ; $587b: $40
    cp l                                          ; $587c: $bd
    ld h, [hl]                                    ; $587d: $66
    sub a                                         ; $587e: $97
    nop                                           ; $587f: $00
    ld b, b                                       ; $5880: $40
    cp a                                          ; $5881: $bf
    ld a, e                                       ; $5882: $7b
    add hl, de                                    ; $5883: $19
    ld b, b                                       ; $5884: $40
    cp a                                          ; $5885: $bf
    ld h, $fb                                     ; $5886: $26 $fb
    scf                                           ; $5888: $37
    or c                                          ; $5889: $b1
    ld d, l                                       ; $588a: $55
    dec l                                         ; $588b: $2d
    xor a                                         ; $588c: $af
    add $ba                                       ; $588d: $c6 $ba
    sbc a                                         ; $588f: $9f
    nop                                           ; $5890: $00
    ld l, c                                       ; $5891: $69
    scf                                           ; $5892: $37
    cp d                                          ; $5893: $ba
    sbc h                                         ; $5894: $9c
    ret nz                                        ; $5895: $c0

    rst $38                                       ; $5896: $ff
    ld h, $f3                                     ; $5897: $26 $f3
    ld b, c                                       ; $5899: $41
    db $d3                                        ; $589a: $d3
    add d                                         ; $589b: $82
    adc d                                         ; $589c: $8a
    call c, $cdac                                 ; $589d: $dc $ac $cd

jr_05b_58a0:
    xor h                                         ; $58a0: $ac
    nop                                           ; $58a1: $00
    ld e, e                                       ; $58a2: $5b
    adc h                                         ; $58a3: $8c
    rst $38                                       ; $58a4: $ff
    rst $38                                       ; $58a5: $ff
    add h                                         ; $58a6: $84
    jr jr_05b_5868                                ; $58a7: $18 $bf

    rst $38                                       ; $58a9: $ff
    dec de                                        ; $58aa: $1b
    rst $38                                       ; $58ab: $ff
    rst $38                                       ; $58ac: $ff
    rst $38                                       ; $58ad: $ff
    ret nz                                        ; $58ae: $c0

    rst $38                                       ; $58af: $ff
    rst $38                                       ; $58b0: $ff
    rst $38                                       ; $58b1: $ff
    nop                                           ; $58b2: $00
    rst $38                                       ; $58b3: $ff
    rst $38                                       ; $58b4: $ff
    and $b6                                       ; $58b5: $e6 $b6
    rst $38                                       ; $58b7: $ff
    rst $38                                       ; $58b8: $ff
    rst $38                                       ; $58b9: $ff
    rst $38                                       ; $58ba: $ff
    rst $38                                       ; $58bb: $ff
    rst $38                                       ; $58bc: $ff
    rst $38                                       ; $58bd: $ff
    rst $38                                       ; $58be: $ff
    rst $38                                       ; $58bf: $ff
    rst $38                                       ; $58c0: $ff
    rst $38                                       ; $58c1: $ff
    rst $38                                       ; $58c2: $ff
    nop                                           ; $58c3: $00
    rst $38                                       ; $58c4: $ff
    rst $38                                       ; $58c5: $ff
    rst $38                                       ; $58c6: $ff
    rst $38                                       ; $58c7: $ff
    rst $38                                       ; $58c8: $ff
    rst $38                                       ; $58c9: $ff
    rst $38                                       ; $58ca: $ff
    rst $38                                       ; $58cb: $ff
    rst $38                                       ; $58cc: $ff
    rst $38                                       ; $58cd: $ff
    rst $38                                       ; $58ce: $ff
    rst $38                                       ; $58cf: $ff
    rst $38                                       ; $58d0: $ff
    rst $38                                       ; $58d1: $ff
    rst $38                                       ; $58d2: $ff
    rst $38                                       ; $58d3: $ff
    nop                                           ; $58d4: $00
    rst $38                                       ; $58d5: $ff
    rst $38                                       ; $58d6: $ff
    rst $38                                       ; $58d7: $ff
    rst $38                                       ; $58d8: $ff
    rst $38                                       ; $58d9: $ff
    rst $38                                       ; $58da: $ff
    or $3f                                        ; $58db: $f6 $3f
    rst $38                                       ; $58dd: $ff
    rst $38                                       ; $58de: $ff
    rst $38                                       ; $58df: $ff
    rst $38                                       ; $58e0: $ff
    rst $38                                       ; $58e1: $ff

jr_05b_58e2:
    rst $38                                       ; $58e2: $ff
    rst $38                                       ; $58e3: $ff
    rst $38                                       ; $58e4: $ff
    nop                                           ; $58e5: $00
    rst $38                                       ; $58e6: $ff
    rst $38                                       ; $58e7: $ff
    ret nz                                        ; $58e8: $c0

    ld c, b                                       ; $58e9: $48
    nop                                           ; $58ea: $00
    nop                                           ; $58eb: $00
    nop                                           ; $58ec: $00
    rst $18                                       ; $58ed: $df
    jr nz, jr_05b_5910                            ; $58ee: $20 $20

    jr nz, jr_05b_58f2                            ; $58f0: $20 $00

jr_05b_58f2:
    ld sp, $e0ff                                  ; $58f2: $31 $ff $e0
    sub l                                         ; $58f5: $95
    add [hl]                                      ; $58f6: $86
    rst $38                                       ; $58f7: $ff
    add [hl]                                      ; $58f8: $86
    sbc b                                         ; $58f9: $98
    sbc b                                         ; $58fa: $98
    add [hl]                                      ; $58fb: $86
    add [hl]                                      ; $58fc: $86
    sub l                                         ; $58fd: $95
    ld sp, $8731                                  ; $58fe: $31 $31 $87

jr_05b_5901:
    ld h, b                                       ; $5901: $60
    ld e, e                                       ; $5902: $5b
    nop                                           ; $5903: $00
    rst $38                                       ; $5904: $ff
    rst $38                                       ; $5905: $ff
    rst $20                                       ; $5906: $e7
    and $c0                                       ; $5907: $e6 $c0
    db $e4                                        ; $5909: $e4
    pop bc                                        ; $590a: $c1
    ldh [$94], a                                  ; $590b: $e0 $94
    sub a                                         ; $590d: $97
    jr nc, jr_05b_597d                            ; $590e: $30 $6d

jr_05b_5910:
    sub h                                         ; $5910: $94
    cp a                                          ; $5911: $bf
    ld [c], a                                     ; $5912: $e2
    ld e, a                                       ; $5913: $5f
    jp z, $c0ff                                   ; $5914: $ca $ff $c0

    db $ed                                        ; $5917: $ed
    sub d                                         ; $5918: $92
    halt                                          ; $5919: $76
    pop bc                                        ; $591a: $c1
    ldh [$6c], a                                  ; $591b: $e0 $6c
    ld h, a                                       ; $591d: $67
    cp a                                          ; $591e: $bf
    ld [c], a                                     ; $591f: $e2
    sub d                                         ; $5920: $92
    ld sp, $ca5e                                  ; $5921: $31 $5e $ca
    rst $38                                       ; $5924: $ff
    ld a, [hl]                                    ; $5925: $7e

jr_05b_5926:
    add b                                         ; $5926: $80
    db $ed                                        ; $5927: $ed
    sub b                                         ; $5928: $90
    add [hl]                                      ; $5929: $86
    sub h                                         ; $592a: $94
    ld l, l                                       ; $592b: $6d
    jr nc, jr_05b_599b                            ; $592c: $30 $6d

    cp a                                          ; $592e: $bf
    ld [c], a                                     ; $592f: $e2
    rst $20                                       ; $5930: $e7
    sub b                                         ; $5931: $90
    ld sp, $ca31                                  ; $5932: $31 $31 $ca
    rst $38                                       ; $5935: $ff
    ld b, b                                       ; $5936: $40
    ld [$1528], a                                 ; $5937: $ea $28 $15
    ld sp, $90df                                  ; $593a: $31 $df $90
    sbc l                                         ; $593d: $9d
    jr nc, jr_05b_59ab                            ; $593e: $30 $6b

    jr nc, jr_05b_5901                            ; $5940: $30 $bf

    pop hl                                        ; $5942: $e1
    jr nc, jr_05b_58e2                            ; $5943: $30 $9d

    jp hl                                         ; $5945: $e9


    sbc l                                         ; $5946: $9d
    ret nz                                        ; $5947: $c0

    rst $38                                       ; $5948: $ff
    ret nz                                        ; $5949: $c0

    db $ed                                        ; $594a: $ed
    rla                                           ; $594b: $17
    ld b, b                                       ; $594c: $40
    ldh [$93], a                                  ; $594d: $e0 $93
    ld l, l                                       ; $594f: $6d
    ld l, h                                       ; $5950: $6c
    rst $08                                       ; $5951: $cf
    ld l, h                                       ; $5952: $6c
    jr nc, jr_05b_59c2                            ; $5953: $30 $6d

    ld h, [hl]                                    ; $5955: $66
    ret nz                                        ; $5956: $c0

    rst $38                                       ; $5957: $ff
    ret nz                                        ; $5958: $c0

    rst $08                                       ; $5959: $cf
    jr nz, jr_05b_5972                            ; $595a: $20 $16

    ld a, [hl]                                    ; $595c: $7e
    ld a, a                                       ; $595d: $7f
    ldh [$91], a                                  ; $595e: $e0 $91
    jr nc, jr_05b_59ca                            ; $5960: $30 $68

    ld l, d                                       ; $5962: $6a
    ld l, l                                       ; $5963: $6d
    jr nc, jr_05b_5926                            ; $5964: $30 $c0

    rst $38                                       ; $5966: $ff
    ld a, h                                       ; $5967: $7c
    ret nz                                        ; $5968: $c0

    pop af                                        ; $5969: $f1
    ld a, a                                       ; $596a: $7f
    pop hl                                        ; $596b: $e1
    sbc l                                         ; $596c: $9d
    jr nc, jr_05b_599f                            ; $596d: $30 $30

    jr nc, jr_05b_59da                            ; $596f: $30 $69

    ret nz                                        ; $5971: $c0

jr_05b_5972:
    rst $38                                       ; $5972: $ff
    sbc [hl]                                      ; $5973: $9e
    add b                                         ; $5974: $80
    ld a, [c]                                     ; $5975: $f2
    jr nz, jr_05b_5984                            ; $5976: $20 $0c

    ld sp, $c095                                  ; $5978: $31 $95 $c0
    rst $38                                       ; $597b: $ff
    ret nz                                        ; $597c: $c0

jr_05b_597d:
    ld hl, sp+$0d                                 ; $597d: $f8 $0d
    inc de                                        ; $597f: $13
    sub d                                         ; $5980: $92
    add [hl]                                      ; $5981: $86
    ld b, b                                       ; $5982: $40
    rst $38                                       ; $5983: $ff

jr_05b_5984:
    nop                                           ; $5984: $00
    rst $30                                       ; $5985: $f7
    ld [$c040], sp                                ; $5986: $08 $40 $c0
    ret nz                                        ; $5989: $c0

    ret nz                                        ; $598a: $c0

    ld a, $c0                                     ; $598b: $3e $c0
    inc a                                         ; $598d: $3c
    ret nz                                        ; $598e: $c0

    rst $38                                       ; $598f: $ff
    ret nz                                        ; $5990: $c0

    pop de                                        ; $5991: $d1
    dec d                                         ; $5992: $15
    ld sp, $9d9d                                  ; $5993: $31 $9d $9d
    ld b, c                                       ; $5996: $41
    ret nz                                        ; $5997: $c0

    ld b, b                                       ; $5998: $40
    rst $18                                       ; $5999: $df
    nop                                           ; $599a: $00

jr_05b_599b:
    ret nz                                        ; $599b: $c0

    cp a                                          ; $599c: $bf
    ret nz                                        ; $599d: $c0

    cp a                                          ; $599e: $bf

jr_05b_599f:
    ld b, b                                       ; $599f: $40
    cp a                                          ; $59a0: $bf
    ld b, b                                       ; $59a1: $40
    cp a                                          ; $59a2: $bf
    ret nz                                        ; $59a3: $c0

    sbc a                                         ; $59a4: $9f
    rst $38                                       ; $59a5: $ff
    rst $38                                       ; $59a6: $ff
    ret nz                                        ; $59a7: $c0

    db $eb                                        ; $59a8: $eb
    ld b, b                                       ; $59a9: $40
    sbc a                                         ; $59aa: $9f

jr_05b_59ab:
    nop                                           ; $59ab: $00
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
    nop                                           ; $59bc: $00
    rst $38                                       ; $59bd: $ff
    rst $38                                       ; $59be: $ff
    rst $38                                       ; $59bf: $ff
    rst $38                                       ; $59c0: $ff
    rst $38                                       ; $59c1: $ff

jr_05b_59c2:
    rst $38                                       ; $59c2: $ff
    rst $38                                       ; $59c3: $ff
    rst $38                                       ; $59c4: $ff
    rst $38                                       ; $59c5: $ff
    rst $38                                       ; $59c6: $ff
    rst $38                                       ; $59c7: $ff
    rst $38                                       ; $59c8: $ff
    rst $38                                       ; $59c9: $ff

jr_05b_59ca:
    rst $38                                       ; $59ca: $ff
    rst $38                                       ; $59cb: $ff
    rst $38                                       ; $59cc: $ff
    nop                                           ; $59cd: $00
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

jr_05b_59da:
    rst $38                                       ; $59da: $ff
    rst $38                                       ; $59db: $ff
    rst $38                                       ; $59dc: $ff
    rst $38                                       ; $59dd: $ff
    nop                                           ; $59de: $00
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
    nop                                           ; $59ef: $00
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
    nop                                           ; $5a00: $00
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
    nop                                           ; $5a11: $00
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
    nop                                           ; $5a22: $00
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
    nop                                           ; $5a33: $00
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
    nop                                           ; $5a44: $00
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
    nop                                           ; $5a55: $00
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
    ld [$ffff], sp                                ; $5a66: $08 $ff $ff
    rst $38                                       ; $5a69: $ff
    rst $38                                       ; $5a6a: $ff
    rst $38                                       ; $5a6b: $ff
    rst $38                                       ; $5a6c: $ff
    nop                                           ; $5a6d: $00
    nop                                           ; $5a6e: $00
    nop                                           ; $5a6f: $00
    nop                                           ; $5a70: $00
    and l                                         ; $5a71: $a5
    nop                                           ; $5a72: $00
    rst $38                                       ; $5a73: $ff
    push hl                                       ; $5a74: $e5
    ld [hl-], a                                   ; $5a75: $32
    or $e6                                        ; $5a76: $f6 $e6
    rst $30                                       ; $5a78: $f7
    rst $20                                       ; $5a79: $e7
    dec [hl]                                      ; $5a7a: $35
    db $ec                                        ; $5a7b: $ec
    xor $37                                       ; $5a7c: $ee $37
    db $ec                                        ; $5a7e: $ec
    jp c, $c7f0                                   ; $5a7f: $da $f0 $c7

    add sp, $33                                   ; $5a82: $e8 $33
    ld sp, $f2e0                                  ; $5a84: $31 $e0 $f2
    ld [hl], $30                                  ; $5a87: $36 $30
    scf                                           ; $5a89: $37
    cp a                                          ; $5a8a: $bf
    ld h, $20                                     ; $5a8b: $26 $20
    daa                                           ; $5a8d: $27
    db $10                                        ; $5a8e: $10
    ld d, $17                                     ; $5a8f: $16 $17
    jp nz, Jump_000_34f6                          ; $5a91: $c2 $f6 $34

    rst $38                                       ; $5a94: $ff
    ld [hl], $32                                  ; $5a95: $36 $32
    jr nc, jr_05b_5ad0                            ; $5a97: $30 $37

    ld sp, $3133                                  ; $5a99: $31 $33 $31
    inc sp                                        ; $5a9c: $33
    nop                                           ; $5a9d: $00
    and b                                         ; $5a9e: $a0
    ei                                            ; $5a9f: $fb
    rst $38                                       ; $5aa0: $ff
    rst $28                                       ; $5aa1: $ef
    nop                                           ; $5aa2: $00
    nop                                           ; $5aa3: $00
    nop                                           ; $5aa4: $00
    xor l                                         ; $5aa5: $ad
    ld e, d                                       ; $5aa6: $5a
    db $dd                                        ; $5aa7: $dd
    ld e, d                                       ; $5aa8: $5a
    or l                                          ; $5aa9: $b5
    ld e, h                                       ; $5aaa: $5c
    ld d, b                                       ; $5aab: $50
    ld e, [hl]                                    ; $5aac: $5e
    ret nz                                        ; $5aad: $c0

    rra                                           ; $5aae: $1f
    adc d                                         ; $5aaf: $8a
    inc bc                                        ; $5ab0: $03
    add b                                         ; $5ab1: $80
    ld [bc], a                                    ; $5ab2: $02
    ld h, b                                       ; $5ab3: $60
    ld bc, $03ef                                  ; $5ab4: $01 $ef $03
    db $f4                                        ; $5ab7: $f4
    inc bc                                        ; $5ab8: $03
    adc d                                         ; $5ab9: $8a
    inc bc                                        ; $5aba: $03
    add b                                         ; $5abb: $80
    ld [bc], a                                    ; $5abc: $02
    rra                                           ; $5abd: $1f
    ld a, l                                       ; $5abe: $7d
    rst $30                                       ; $5abf: $f7
    ld b, h                                       ; $5ac0: $44
    rrca                                          ; $5ac1: $0f
    ld bc, $038a                                  ; $5ac2: $01 $8a $03
    ld [$0825], sp                                ; $5ac5: $08 $25 $08
    dec h                                         ; $5ac8: $25
    ld [$0825], sp                                ; $5ac9: $08 $25 $08
    dec h                                         ; $5acc: $25
    ld [$0825], sp                                ; $5acd: $08 $25 $08

jr_05b_5ad0:
    dec h                                         ; $5ad0: $25
    ld [$0825], sp                                ; $5ad1: $08 $25 $08
    dec h                                         ; $5ad4: $25
    ld [$0825], sp                                ; $5ad5: $08 $25 $08
    dec h                                         ; $5ad8: $25
    ld [$0825], sp                                ; $5ad9: $08 $25 $08
    dec h                                         ; $5adc: $25
    xor l                                         ; $5add: $ad
    inc c                                         ; $5ade: $0c
    rst $38                                       ; $5adf: $ff
    di                                            ; $5ae0: $f3
    ld c, h                                       ; $5ae1: $4c
    ld c, h                                       ; $5ae2: $4c
    rst $20                                       ; $5ae3: $e7
    and $2c                                       ; $5ae4: $e6 $2c
    cp $e0                                        ; $5ae6: $fe $e0
    inc c                                         ; $5ae8: $0c
    rst $00                                       ; $5ae9: $c7
    inc l                                         ; $5aea: $2c
    inc l                                         ; $5aeb: $2c
    ld c, h                                       ; $5aec: $4c
    db $ec                                        ; $5aed: $ec
    ldh [$eb], a                                  ; $5aee: $e0 $eb
    rst $20                                       ; $5af0: $e7
    db $d3                                        ; $5af1: $d3
    db $eb                                        ; $5af2: $eb
    ld l, h                                       ; $5af3: $6c
    ld l, h                                       ; $5af4: $6c
    rrca                                          ; $5af5: $0f
    ld l, h                                       ; $5af6: $6c
    ld c, h                                       ; $5af7: $4c
    ld l, h                                       ; $5af8: $6c
    inc c                                         ; $5af9: $0c
    ld [c], a                                     ; $5afa: $e2
    db $f4                                        ; $5afb: $f4
    ret nz                                        ; $5afc: $c0

    db $e4                                        ; $5afd: $e4
    sub a                                         ; $5afe: $97
    db $f4                                        ; $5aff: $f4
    pop bc                                        ; $5b00: $c1
    ld [c], a                                     ; $5b01: $e2
    ld l, a                                       ; $5b02: $6f
    inc c                                         ; $5b03: $0c
    ld l, h                                       ; $5b04: $6c
    ld l, h                                       ; $5b05: $6c
    dec bc                                        ; $5b06: $0b
    rst $38                                       ; $5b07: $ff
    ldh [$4c], a                                  ; $5b08: $e0 $4c
    ld c, h                                       ; $5b0a: $4c
    sbc d                                         ; $5b0b: $9a
    ldh [rNR14], a                                ; $5b0c: $e0 $14
    ret nz                                        ; $5b0e: $c0

    db $f4                                        ; $5b0f: $f4
    pop bc                                        ; $5b10: $c1
    rst $30                                       ; $5b11: $f7
    inc c                                         ; $5b12: $0c
    jp nz, $4be2                                  ; $5b13: $c2 $e2 $4b

    rst $38                                       ; $5b16: $ff
    ldh [$be], a                                  ; $5b17: $e0 $be
    ld [c], a                                     ; $5b19: $e2
    pop af                                        ; $5b1a: $f1
    ldh [$f0], a                                  ; $5b1b: $e0 $f0
    dec [hl]                                      ; $5b1d: $35
    db $ec                                        ; $5b1e: $ec
    ld h, a                                       ; $5b1f: $67
    pop hl                                        ; $5b20: $e1
    ld b, [hl]                                    ; $5b21: $46
    db $f4                                        ; $5b22: $f4
    jp nz, Jump_05b_6be4                          ; $5b23: $c2 $e4 $6b

    ld l, e                                       ; $5b26: $6b
    ld c, e                                       ; $5b27: $4b
    dec hl                                        ; $5b28: $2b
    ret nz                                        ; $5b29: $c0

    ld a, a                                       ; $5b2a: $7f
    ldh [$bd], a                                  ; $5b2b: $e0 $bd
    pop hl                                        ; $5b2d: $e1
    rlca                                          ; $5b2e: $07
    db $e3                                        ; $5b2f: $e3
    sub c                                         ; $5b30: $91
    ld a, [$c6e8]                                 ; $5b31: $fa $e8 $c6
    call nz, Call_05b_6bc5                        ; $5b34: $c4 $c5 $6b
    ld l, e                                       ; $5b37: $6b
    ld bc, $416b                                  ; $5b38: $01 $6b $41
    pop hl                                        ; $5b3b: $e1
    cp [hl]                                       ; $5b3c: $be
    ld [c], a                                     ; $5b3d: $e2
    ld a, a                                       ; $5b3e: $7f
    pop hl                                        ; $5b3f: $e1
    ld d, c                                       ; $5b40: $51
    ld [$e127], a                                 ; $5b41: $ea $27 $e1
    ei                                            ; $5b44: $fb
    ldh [$b8], a                                  ; $5b45: $e0 $b8
    ret nz                                        ; $5b47: $c0

    ld b, b                                       ; $5b48: $40
    db $fc                                        ; $5b49: $fc
    pop hl                                        ; $5b4a: $e1
    ld b, d                                       ; $5b4b: $42
    pop af                                        ; $5b4c: $f1
    add c                                         ; $5b4d: $81
    ldh [$bf], a                                  ; $5b4e: $e0 $bf
    ldh [rSCY], a                                 ; $5b50: $e0 $42
    ldh [$7d], a                                  ; $5b52: $e0 $7d
    pop hl                                        ; $5b54: $e1
    dec bc                                        ; $5b55: $0b
    add a                                         ; $5b56: $87
    pop bc                                        ; $5b57: $c1
    add b                                         ; $5b58: $80
    pop bc                                        ; $5b59: $c1
    db $ec                                        ; $5b5a: $ec
    cp l                                          ; $5b5b: $bd
    ld [c], a                                     ; $5b5c: $e2
    ret nz                                        ; $5b5d: $c0

    rst $30                                       ; $5b5e: $f7
    pop bc                                        ; $5b5f: $c1
    pop hl                                        ; $5b60: $e1
    ld a, $e0                                     ; $5b61: $3e $e0
    ld a, a                                       ; $5b63: $7f
    db $e4                                        ; $5b64: $e4
    ld d, e                                       ; $5b65: $53
    ret nz                                        ; $5b66: $c0

    dec bc                                        ; $5b67: $0b
    ld de, $742c                                  ; $5b68: $11 $2c $74
    rst $00                                       ; $5b6b: $c7
    ret nz                                        ; $5b6c: $c0

    add sp, $38                                   ; $5b6d: $e8 $38
    push af                                       ; $5b6f: $f5
    dec hl                                        ; $5b70: $2b
    rst $38                                       ; $5b71: $ff
    ld [c], a                                     ; $5b72: $e2
    add b                                         ; $5b73: $80
    db $e3                                        ; $5b74: $e3
    ld d, a                                       ; $5b75: $57
    pop hl                                        ; $5b76: $e1
    ld bc, $fc0c                                  ; $5b77: $01 $0c $fc
    pop hl                                        ; $5b7a: $e1
    ld b, c                                       ; $5b7b: $41
    add sp, -$11                                  ; $5b7c: $e8 $ef
    push hl                                       ; $5b7e: $e5
    db $fd                                        ; $5b7f: $fd
    and d                                         ; $5b80: $a2
    ret nz                                        ; $5b81: $c0

    rst $30                                       ; $5b82: $f7
    cp a                                          ; $5b83: $bf
    db $e4                                        ; $5b84: $e4
    adc $a5                                       ; $5b85: $ce $a5
    ld e, b                                       ; $5b87: $58
    cp $aa                                        ; $5b88: $fe $aa
    jp $fda2                                      ; $5b8a: $c3 $a2 $fd


    or h                                          ; $5b8d: $b4
    ld c, h                                       ; $5b8e: $4c
    ld c, h                                       ; $5b8f: $4c
    ld a, a                                       ; $5b90: $7f
    pop hl                                        ; $5b91: $e1
    ld l, e                                       ; $5b92: $6b
    ld b, b                                       ; $5b93: $40
    jp nz, Jump_000_0b07                          ; $5b94: $c2 $07 $0b

    dec bc                                        ; $5b97: $0b
    ld l, h                                       ; $5b98: $6c
    ld b, d                                       ; $5b99: $42
    ret nz                                        ; $5b9a: $c0

    ret nz                                        ; $5b9b: $c0

    jp hl                                         ; $5b9c: $e9


    dec b                                         ; $5b9d: $05
    ld [c], a                                     ; $5b9e: $e2
    adc b                                         ; $5b9f: $88
    xor a                                         ; $5ba0: $af
    or c                                          ; $5ba1: $b1
    xor b                                         ; $5ba2: $a8
    ld bc, $3f2c                                  ; $5ba3: $01 $2c $3f
    ldh [$7f], a                                  ; $5ba6: $e0 $7f
    jp $a1fe                                      ; $5ba8: $c3 $fe $a1


    adc l                                         ; $5bab: $8d
    jp nz, $ed40                                  ; $5bac: $c2 $40 $ed

jr_05b_5baf:
    rst $00                                       ; $5baf: $c7
    di                                            ; $5bb0: $f3
    inc d                                         ; $5bb1: $14
    and [hl]                                      ; $5bb2: $a6
    inc de                                        ; $5bb3: $13
    inc l                                         ; $5bb4: $2c
    inc l                                         ; $5bb5: $2c
    sbc d                                         ; $5bb6: $9a
    rst $00                                       ; $5bb7: $c7
    jp $0ba1                                      ; $5bb8: $c3 $a1 $0b


    jr jr_05b_5baf                                ; $5bbb: $18 $f2

    or $b8                                        ; $5bbd: $f6 $b8
    cp [hl]                                       ; $5bbf: $be
    db $e4                                        ; $5bc0: $e4
    nop                                           ; $5bc1: $00
    add l                                         ; $5bc2: $85
    and l                                         ; $5bc3: $a5
    inc d                                         ; $5bc4: $14
    xor c                                         ; $5bc5: $a9
    ret nz                                        ; $5bc6: $c0

    jp $d801                                      ; $5bc7: $c3 $01 $d8


    cp e                                          ; $5bca: $bb
    rst $20                                       ; $5bcb: $e7
    ld sp, $c0a6                                  ; $5bcc: $31 $a6 $c0
    di                                            ; $5bcf: $f3
    ld b, c                                       ; $5bd0: $41
    push af                                       ; $5bd1: $f5
    nop                                           ; $5bd2: $00
    sub b                                         ; $5bd3: $90
    adc [hl]                                      ; $5bd4: $8e
    sub h                                         ; $5bd5: $94
    adc d                                         ; $5bd6: $8a
    nop                                           ; $5bd7: $00
    rst $20                                       ; $5bd8: $e7
    ld a, $82                                     ; $5bd9: $3e $82
    ld a, c                                       ; $5bdb: $79
    sub b                                         ; $5bdc: $90
    ld c, a                                       ; $5bdd: $4f
    and h                                         ; $5bde: $a4
    sbc e                                         ; $5bdf: $9b
    add e                                         ; $5be0: $83

jr_05b_5be1:
    ld b, d                                       ; $5be1: $42
    xor l                                         ; $5be2: $ad
    nop                                           ; $5be3: $00
    ld b, c                                       ; $5be4: $41
    and e                                         ; $5be5: $a3
    ld b, c                                       ; $5be6: $41
    reti                                          ; $5be7: $d9


    and l                                         ; $5be8: $a5
    sbc c                                         ; $5be9: $99
    or l                                          ; $5bea: $b5
    ld l, l                                       ; $5beb: $6d
    di                                            ; $5bec: $f3
    db $ec                                        ; $5bed: $ec
    rst $38                                       ; $5bee: $ff
    rst $38                                       ; $5bef: $ff
    rst $38                                       ; $5bf0: $ff
    rst $38                                       ; $5bf1: $ff
    rst $38                                       ; $5bf2: $ff
    rst $38                                       ; $5bf3: $ff
    nop                                           ; $5bf4: $00
    rst $38                                       ; $5bf5: $ff
    rst $38                                       ; $5bf6: $ff
    rst $38                                       ; $5bf7: $ff
    rst $38                                       ; $5bf8: $ff
    ld sp, hl                                     ; $5bf9: $f9
    ld a, a                                       ; $5bfa: $7f
    ldh [rIE], a                                  ; $5bfb: $e0 $ff
    xor c                                         ; $5bfd: $a9
    add c                                         ; $5bfe: $81
    add c                                         ; $5bff: $81
    push de                                       ; $5c00: $d5
    ret nz                                        ; $5c01: $c0

    rst $38                                       ; $5c02: $ff
    ret nz                                        ; $5c03: $c0

    push af                                       ; $5c04: $f5
    nop                                           ; $5c05: $00
    pop bc                                        ; $5c06: $c1
    rst $38                                       ; $5c07: $ff
    inc bc                                        ; $5c08: $03
    cp e                                          ; $5c09: $bb
    push de                                       ; $5c0a: $d5
    ld l, b                                       ; $5c0b: $68
    ld b, d                                       ; $5c0c: $42
    ld d, h                                       ; $5c0d: $54
    dec bc                                        ; $5c0e: $0b
    ld c, b                                       ; $5c0f: $48
    db $d3                                        ; $5c10: $d3
    db $fd                                        ; $5c11: $fd
    rst $38                                       ; $5c12: $ff
    rst $38                                       ; $5c13: $ff
    nop                                           ; $5c14: $00
    rst $38                                       ; $5c15: $ff
    nop                                           ; $5c16: $00
    ccf                                           ; $5c17: $3f
    rst $38                                       ; $5c18: $ff
    ret nz                                        ; $5c19: $c0

    rst $38                                       ; $5c1a: $ff
    ld e, c                                       ; $5c1b: $59
    ld d, e                                       ; $5c1c: $53
    ld e, l                                       ; $5c1d: $5d
    jr nz, jr_05b_5be1                            ; $5c1e: $20 $c1

    sbc a                                         ; $5c20: $9f
    or l                                          ; $5c21: $b5
    rst $38                                       ; $5c22: $ff
    ld hl, $01b9                                  ; $5c23: $21 $b9 $01
    cp a                                          ; $5c26: $bf
    nop                                           ; $5c27: $00
    sbc d                                         ; $5c28: $9a
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
    nop                                           ; $5c38: $00
    rst $38                                       ; $5c39: $ff
    rst $38                                       ; $5c3a: $ff
    rst $38                                       ; $5c3b: $ff
    rst $38                                       ; $5c3c: $ff
    rst $38                                       ; $5c3d: $ff
    rst $38                                       ; $5c3e: $ff
    dec hl                                        ; $5c3f: $2b
    rst $18                                       ; $5c40: $df
    rst $38                                       ; $5c41: $ff
    rst $38                                       ; $5c42: $ff
    rst $38                                       ; $5c43: $ff
    rst $38                                       ; $5c44: $ff
    rst $38                                       ; $5c45: $ff
    rst $38                                       ; $5c46: $ff
    ldh [$bb], a                                  ; $5c47: $e0 $bb
    nop                                           ; $5c49: $00
    ld [c], a                                     ; $5c4a: $e2
    cp a                                          ; $5c4b: $bf
    rst $38                                       ; $5c4c: $ff
    rst $38                                       ; $5c4d: $ff
    rst $38                                       ; $5c4e: $ff
    rst $38                                       ; $5c4f: $ff
    rst $38                                       ; $5c50: $ff
    rst $38                                       ; $5c51: $ff
    ld c, h                                       ; $5c52: $4c
    rst $38                                       ; $5c53: $ff
    db $dd                                        ; $5c54: $dd
    rst $38                                       ; $5c55: $ff
    rst $38                                       ; $5c56: $ff
    rst $38                                       ; $5c57: $ff
    rst $38                                       ; $5c58: $ff
    rst $38                                       ; $5c59: $ff
    nop                                           ; $5c5a: $00
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
    nop                                           ; $5c6b: $00
    rst $38                                       ; $5c6c: $ff
    rst $38                                       ; $5c6d: $ff
    rst $38                                       ; $5c6e: $ff
    rst $38                                       ; $5c6f: $ff
    rst $38                                       ; $5c70: $ff
    rst $38                                       ; $5c71: $ff
    rst $38                                       ; $5c72: $ff
    rst $38                                       ; $5c73: $ff
    ret nz                                        ; $5c74: $c0

    sbc a                                         ; $5c75: $9f
    rst $38                                       ; $5c76: $ff
    rst $38                                       ; $5c77: $ff
    rst $38                                       ; $5c78: $ff
    rst $38                                       ; $5c79: $ff
    rst $38                                       ; $5c7a: $ff
    rst $38                                       ; $5c7b: $ff
    nop                                           ; $5c7c: $00
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
    nop                                           ; $5c8d: $00
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
    nop                                           ; $5c9e: $00
    rst $38                                       ; $5c9f: $ff
    rst $38                                       ; $5ca0: $ff
    rst $38                                       ; $5ca1: $ff
    rst $38                                       ; $5ca2: $ff
    nop                                           ; $5ca3: $00
    cp a                                          ; $5ca4: $bf

jr_05b_5ca5:
    db $dd                                        ; $5ca5: $dd
    rst $38                                       ; $5ca6: $ff
    rst $38                                       ; $5ca7: $ff
    rst $38                                       ; $5ca8: $ff
    rst $38                                       ; $5ca9: $ff
    rst $38                                       ; $5caa: $ff
    rst $38                                       ; $5cab: $ff
    rst $38                                       ; $5cac: $ff
    rst $38                                       ; $5cad: $ff
    rst $38                                       ; $5cae: $ff
    nop                                           ; $5caf: $00
    rst $38                                       ; $5cb0: $ff
    pop af                                        ; $5cb1: $f1
    nop                                           ; $5cb2: $00
    nop                                           ; $5cb3: $00
    nop                                           ; $5cb4: $00
    pop af                                        ; $5cb5: $f1
    nop                                           ; $5cb6: $00
    rst $38                                       ; $5cb7: $ff
    rst $38                                       ; $5cb8: $ff
    rst $38                                       ; $5cb9: $ff
    rst $38                                       ; $5cba: $ff
    pop hl                                        ; $5cbb: $e1
    ldh [rNR31], a                                ; $5cbc: $e0 $1b
    add hl, de                                    ; $5cbe: $19
    inc e                                         ; $5cbf: $1c
    add hl, de                                    ; $5cc0: $19
    cp h                                          ; $5cc1: $bc
    jp c, $f5ff                                   ; $5cc2: $da $ff $f5

    db $f4                                        ; $5cc5: $f4
    ld bc, $1819                                  ; $5cc6: $01 $19 $18
    ld hl, $e0ff                                  ; $5cc9: $21 $ff $e0
    jr jr_05b_5ce1                                ; $5ccc: $18 $13

    add hl, de                                    ; $5cce: $19
    ld bc, $ffd4                                  ; $5ccf: $01 $d4 $ff
    jp nz, $8ef4                                  ; $5cd2: $c2 $f4 $8e

    rst $38                                       ; $5cd5: $ff
    ldh [$be], a                                  ; $5cd6: $e0 $be
    rst $38                                       ; $5cd8: $ff
    di                                            ; $5cd9: $f3
    ld a, [c]                                     ; $5cda: $f2
    rst $38                                       ; $5cdb: $ff
    rla                                           ; $5cdc: $17
    ld hl, $363d                                  ; $5cdd: $21 $3d $36
    ld b, h                                       ; $5ce0: $44

jr_05b_5ce1:
    adc b                                         ; $5ce1: $88
    adc h                                         ; $5ce2: $8c
    adc h                                         ; $5ce3: $8c
    ccf                                           ; $5ce4: $3f
    adc b                                         ; $5ce5: $88
    ld b, l                                       ; $5ce6: $45
    ld [hl], $3d                                  ; $5ce7: $36 $3d
    ld hl, $d009                                  ; $5ce9: $21 $09 $d0
    rst $38                                       ; $5cec: $ff
    ld b, e                                       ; $5ced: $43
    db $ed                                        ; $5cee: $ed
    rst $38                                       ; $5cef: $ff
    ld a, [bc]                                    ; $5cf0: $0a
    dec a                                         ; $5cf1: $3d
    ld [hl+], a                                   ; $5cf2: $22
    ld e, d                                       ; $5cf3: $5a
    jr nz, jr_05b_5d16                            ; $5cf4: $20 $20

    ld e, d                                       ; $5cf6: $5a
    ld e, l                                       ; $5cf7: $5d
    ld l, $ff                                     ; $5cf8: $2e $ff
    ldh [rNR43], a                                ; $5cfa: $e0 $22
    dec a                                         ; $5cfc: $3d
    ld [$ed7f], sp                                ; $5cfd: $08 $7f $ed
    sub b                                         ; $5d00: $90
    rst $38                                       ; $5d01: $ff
    ldh [$fb], a                                  ; $5d02: $e0 $fb
    ldh [$7c], a                                  ; $5d04: $e0 $7c
    or $e1                                        ; $5d06: $f6 $e1
    or h                                          ; $5d08: $b4
    di                                            ; $5d09: $f3
    add hl, bc                                    ; $5d0a: $09
    ld hl, $5d29                                  ; $5d0b: $21 $29 $5d
    ld e, l                                       ; $5d0e: $5d
    cp a                                          ; $5d0f: $bf
    push hl                                       ; $5d10: $e5
    rst $00                                       ; $5d11: $c7
    add hl, hl                                    ; $5d12: $29
    ld hl, $c117                                  ; $5d13: $21 $17 $c1

jr_05b_5d16:
    rst $28                                       ; $5d16: $ef
    cp l                                          ; $5d17: $bd
    ld [c], a                                     ; $5d18: $e2
    ret nz                                        ; $5d19: $c0

    or $08                                        ; $5d1a: $f6 $08
    add hl, sp                                    ; $5d1c: $39
    ld sp, hl                                     ; $5d1d: $f9
    jr c, jr_05b_5ca5                             ; $5d1e: $38 $85

    ldh [$7e], a                                  ; $5d20: $e0 $7e
    ldh [$59], a                                  ; $5d22: $e0 $59
    ld e, e                                       ; $5d24: $5b
    ld e, e                                       ; $5d25: $5b
    ld e, e                                       ; $5d26: $5b
    jr c, jr_05b_5d8c                             ; $5d27: $38 $63

    add hl, sp                                    ; $5d29: $39
    ld a, [bc]                                    ; $5d2a: $0a
    sub a                                         ; $5d2b: $97
    db $eb                                        ; $5d2c: $eb
    ret nz                                        ; $5d2d: $c0

    add sp, $35                                   ; $5d2e: $e8 $35
    db $f4                                        ; $5d30: $f4
    ld [$c841], sp                                ; $5d31: $08 $41 $c8
    ldh [$3b], a                                  ; $5d34: $e0 $3b
    ld e, e                                       ; $5d36: $5b
    ld e, c                                       ; $5d37: $59
    ret nz                                        ; $5d38: $c0

    db $e3                                        ; $5d39: $e3
    ld e, e                                       ; $5d3a: $5b
    ld b, c                                       ; $5d3b: $41
    ld [$eec0], sp                                ; $5d3c: $08 $c0 $ee
    ld b, [hl]                                    ; $5d3f: $46
    or $36                                        ; $5d40: $f6 $36
    ld b, b                                       ; $5d42: $40
    db $e4                                        ; $5d43: $e4
    add hl, sp                                    ; $5d44: $39
    jr c, @-$3e                                   ; $5d45: $38 $c0

    rst $20                                       ; $5d47: $e7
    jr c, jr_05b_5d83                             ; $5d48: $38 $39

    cp a                                          ; $5d4a: $bf
    rst $18                                       ; $5d4b: $df
    ret nz                                        ; $5d4c: $c0

    adc $bd                                       ; $5d4d: $ce $bd
    add hl, hl                                    ; $5d4f: $29
    ld b, a                                       ; $5d50: $47
    ldh [$89], a                                  ; $5d51: $e0 $89
    adc d                                         ; $5d53: $8a
    adc d                                         ; $5d54: $8a
    adc c                                         ; $5d55: $89
    ld b, b                                       ; $5d56: $40
    ldh [$29], a                                  ; $5d57: $e0 $29
    ld [hl], c                                    ; $5d59: $71
    ld a, [bc]                                    ; $5d5a: $0a
    ccf                                           ; $5d5b: $3f
    call z, $fa45                                 ; $5d5c: $cc $45 $fa
    ld b, b                                       ; $5d5f: $40
    call nz, Call_000_353d                        ; $5d60: $c4 $3d $35
    adc d                                         ; $5d63: $8a
    ld b, c                                       ; $5d64: $41
    ret nz                                        ; $5d65: $c0

    ld c, $3f                                     ; $5d66: $0e $3f
    ret nz                                        ; $5d68: $c0

    adc d                                         ; $5d69: $8a
    dec [hl]                                      ; $5d6a: $35
    dec a                                         ; $5d6b: $3d
    pop bc                                        ; $5d6c: $c1
    pop bc                                        ; $5d6d: $c1
    ld b, b                                       ; $5d6e: $40
    xor $c0                                       ; $5d6f: $ee $c0
    cp [hl]                                       ; $5d71: $be
    call nz, Call_000_00a1                        ; $5d72: $c4 $a1 $00
    cp h                                          ; $5d75: $bc
    and c                                         ; $5d76: $a1
    ret nz                                        ; $5d77: $c0

    and e                                         ; $5d78: $a3
    adc [hl]                                      ; $5d79: $8e
    cp $40                                        ; $5d7a: $fe $40
    cp a                                          ; $5d7c: $bf
    ret nz                                        ; $5d7d: $c0

    call z, $d801                                 ; $5d7e: $cc $01 $d8
    ret nz                                        ; $5d81: $c0

    sbc h                                         ; $5d82: $9c

jr_05b_5d83:
    ret nz                                        ; $5d83: $c0

    rst $20                                       ; $5d84: $e7
    nop                                           ; $5d85: $00
    rst $38                                       ; $5d86: $ff
    rst $38                                       ; $5d87: $ff
    ret nz                                        ; $5d88: $c0

    or $ff                                        ; $5d89: $f6 $ff
    rst $38                                       ; $5d8b: $ff

jr_05b_5d8c:
    ret nz                                        ; $5d8c: $c0

    ld sp, hl                                     ; $5d8d: $f9
    cp a                                          ; $5d8e: $bf
    rst $38                                       ; $5d8f: $ff
    rst $38                                       ; $5d90: $ff
    rst $38                                       ; $5d91: $ff
    rst $38                                       ; $5d92: $ff
    rst $38                                       ; $5d93: $ff
    rst $38                                       ; $5d94: $ff
    rst $38                                       ; $5d95: $ff
    nop                                           ; $5d96: $00
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
    ld [hl], l                                    ; $5da1: $75
    call nc, $ffdd                                ; $5da2: $d4 $dd $ff
    ret nz                                        ; $5da5: $c0

    rst $38                                       ; $5da6: $ff
    nop                                           ; $5da7: $00
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
    nop                                           ; $5db8: $00
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
    nop                                           ; $5dc9: $00
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
    nop                                           ; $5dda: $00
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
    nop                                           ; $5deb: $00
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
    nop                                           ; $5dfc: $00
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
    nop                                           ; $5e0d: $00
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
    nop                                           ; $5e1e: $00
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
    nop                                           ; $5e2f: $00
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
    nop                                           ; $5e40: $00
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
    di                                            ; $5e4c: $f3
    nop                                           ; $5e4d: $00
    nop                                           ; $5e4e: $00
    nop                                           ; $5e4f: $00
    call $ff00                                    ; $5e50: $cd $00 $ff
    jp hl                                         ; $5e53: $e9


    scf                                           ; $5e54: $37
    ld [hl-], a                                   ; $5e55: $32
    pop af                                        ; $5e56: $f1
    ld [$ffff], a                                 ; $5e57: $ea $ff $ff
    inc sp                                        ; $5e5a: $33
    ld sp, $dcfe                                  ; $5e5b: $31 $fe $dc
    ld a, [c]                                     ; $5e5e: $f2
    ld [hl], $30                                  ; $5e5f: $36 $30
    scf                                           ; $5e61: $37
    ld h, $20                                     ; $5e62: $26 $20
    daa                                           ; $5e64: $27
    db $10                                        ; $5e65: $10
    ei                                            ; $5e66: $fb
    ld d, $17                                     ; $5e67: $16 $17
    cp [hl]                                       ; $5e69: $be
    or $34                                        ; $5e6a: $f6 $34
    ld [hl], $32                                  ; $5e6c: $36 $32
    jr nc, jr_05b_5ea7                            ; $5e6e: $30 $37

    rrca                                          ; $5e70: $0f
    ld sp, $3133                                  ; $5e71: $31 $33 $31
    inc sp                                        ; $5e74: $33
    sbc h                                         ; $5e75: $9c
    rst $38                                       ; $5e76: $ff
    rst $38                                       ; $5e77: $ff
    ei                                            ; $5e78: $fb
    nop                                           ; $5e79: $00
    nop                                           ; $5e7a: $00
    nop                                           ; $5e7b: $00
    add h                                         ; $5e7c: $84
    ld e, [hl]                                    ; $5e7d: $5e
    or h                                          ; $5e7e: $b4
    ld e, [hl]                                    ; $5e7f: $5e
    ld e, $61                                     ; $5e80: $1e $61
    rst $10                                       ; $5e82: $d7
    ld h, d                                       ; $5e83: $62
    ret nz                                        ; $5e84: $c0

    rra                                           ; $5e85: $1f
    adc d                                         ; $5e86: $8a
    inc bc                                        ; $5e87: $03
    add b                                         ; $5e88: $80
    ld [bc], a                                    ; $5e89: $02
    ld h, b                                       ; $5e8a: $60
    ld bc, $03ef                                  ; $5e8b: $01 $ef $03
    db $f4                                        ; $5e8e: $f4
    inc bc                                        ; $5e8f: $03
    adc d                                         ; $5e90: $8a
    inc bc                                        ; $5e91: $03
    add b                                         ; $5e92: $80
    ld [bc], a                                    ; $5e93: $02
    rra                                           ; $5e94: $1f
    ld [bc], a                                    ; $5e95: $02
    ld c, e                                       ; $5e96: $4b
    ld c, $38                                     ; $5e97: $0e $38
    ld bc, $038a                                  ; $5e99: $01 $8a $03
    ld [$0825], sp                                ; $5e9c: $08 $25 $08
    dec h                                         ; $5e9f: $25
    ld [$0825], sp                                ; $5ea0: $08 $25 $08
    dec h                                         ; $5ea3: $25
    ld [$0825], sp                                ; $5ea4: $08 $25 $08

jr_05b_5ea7:
    dec h                                         ; $5ea7: $25
    ld [$0825], sp                                ; $5ea8: $08 $25 $08
    dec h                                         ; $5eab: $25
    ld [$0825], sp                                ; $5eac: $08 $25 $08
    dec h                                         ; $5eaf: $25
    ld [$0825], sp                                ; $5eb0: $08 $25 $08
    dec h                                         ; $5eb3: $25
    sbc a                                         ; $5eb4: $9f
    ld c, h                                       ; $5eb5: $4c
    ld c, h                                       ; $5eb6: $4c
    ld c, h                                       ; $5eb7: $4c
    inc c                                         ; $5eb8: $0c
    dec bc                                        ; $5eb9: $0b
    rst $38                                       ; $5eba: $ff
    db $e4                                        ; $5ebb: $e4
    db $f4                                        ; $5ebc: $f4
    ldh [$4c], a                                  ; $5ebd: $e0 $4c
    ld b, c                                       ; $5ebf: $41
    inc c                                         ; $5ec0: $0c
    rst $38                                       ; $5ec1: $ff
    push hl                                       ; $5ec2: $e5
    add sp, -$20                                  ; $5ec3: $e8 $e0
    db $fd                                        ; $5ec5: $fd
    ld [c], a                                     ; $5ec6: $e2
    ld sp, hl                                     ; $5ec7: $f9
    ldh [$f2], a                                  ; $5ec8: $e0 $f2
    db $e4                                        ; $5eca: $e4
    inc l                                         ; $5ecb: $2c
    ei                                            ; $5ecc: $fb
    ld [c], a                                     ; $5ecd: $e2
    nop                                           ; $5ece: $00
    rst $18                                       ; $5ecf: $df
    and $d9                                       ; $5ed0: $e6 $d9
    and $c1                                       ; $5ed2: $e6 $c1
    push hl                                       ; $5ed4: $e5
    cp [hl]                                       ; $5ed5: $be
    db $e4                                        ; $5ed6: $e4
    cp h                                          ; $5ed7: $bc
    pop hl                                        ; $5ed8: $e1
    db $fc                                        ; $5ed9: $fc
    xor $b0                                       ; $5eda: $ee $b0
    pop hl                                        ; $5edc: $e1
    push bc                                       ; $5edd: $c5
    ldh [$78], a                                  ; $5ede: $e0 $78
    ei                                            ; $5ee0: $fb
    ld [c], a                                     ; $5ee1: $e2
    ret nz                                        ; $5ee2: $c0

    db $eb                                        ; $5ee3: $eb
    add d                                         ; $5ee4: $82
    ld [c], a                                     ; $5ee5: $e2
    ld l, e                                       ; $5ee6: $6b
    ld l, e                                       ; $5ee7: $6b
    ld c, e                                       ; $5ee8: $4b
    ld c, e                                       ; $5ee9: $4b
    cp c                                          ; $5eea: $b9
    rst $20                                       ; $5eeb: $e7
    ret nz                                        ; $5eec: $c0

    sbc l                                         ; $5eed: $9d
    db $ec                                        ; $5eee: $ec
    pop bc                                        ; $5eef: $c1
    ld [c], a                                     ; $5ef0: $e2
    xor l                                         ; $5ef1: $ad
    ld [c], a                                     ; $5ef2: $e2
    ld l, e                                       ; $5ef3: $6b
    pop hl                                        ; $5ef4: $e1
    ld a, a                                       ; $5ef5: $7f
    db $ed                                        ; $5ef6: $ed
    jp nz, Jump_05b_6be2                          ; $5ef7: $c2 $e2 $6b

    dec hl                                        ; $5efa: $2b
    inc bc                                        ; $5efb: $03
    dec bc                                        ; $5efc: $0b
    ld c, e                                       ; $5efd: $4b
    cp [hl]                                       ; $5efe: $be
    rst $20                                       ; $5eff: $e7
    ld b, c                                       ; $5f00: $41
    db $e4                                        ; $5f01: $e4
    add d                                         ; $5f02: $82
    jp hl                                         ; $5f03: $e9


    ld sp, $3ae2                                  ; $5f04: $31 $e2 $3a
    db $e3                                        ; $5f07: $e3
    pop bc                                        ; $5f08: $c1
    pop af                                        ; $5f09: $f1
    daa                                           ; $5f0a: $27
    ld l, e                                       ; $5f0b: $6b
    dec hl                                        ; $5f0c: $2b
    dec hl                                        ; $5f0d: $2b
    ret nz                                        ; $5f0e: $c0

    ldh [$7d], a                                  ; $5f0f: $e0 $7d
    pop hl                                        ; $5f11: $e1
    dec hl                                        ; $5f12: $2b
    add b                                         ; $5f13: $80
    ld [c], a                                     ; $5f14: $e2
    inc a                                         ; $5f15: $3c
    db $ed                                        ; $5f16: $ed
    ld b, b                                       ; $5f17: $40
    ccf                                           ; $5f18: $3f
    db $e3                                        ; $5f19: $e3
    daa                                           ; $5f1a: $27
    db $e4                                        ; $5f1b: $e4
    db $fd                                        ; $5f1c: $fd
    call nz, $c3f6                                ; $5f1d: $c4 $f6 $c3
    ret nz                                        ; $5f20: $c0

    db $e4                                        ; $5f21: $e4
    jp nz, Jump_000_2be1                          ; $5f22: $c2 $e1 $2b

    call nz, Call_000_01e1                        ; $5f25: $c4 $e1 $01
    dec hl                                        ; $5f28: $2b
    rst $38                                       ; $5f29: $ff
    ldh [$d4], a                                  ; $5f2a: $e0 $d4
    ld [c], a                                     ; $5f2c: $e2
    db $fd                                        ; $5f2d: $fd
    db $eb                                        ; $5f2e: $eb
    ccf                                           ; $5f2f: $3f
    rst $20                                       ; $5f30: $e7
    sbc [hl]                                      ; $5f31: $9e
    rst $00                                       ; $5f32: $c7
    ld b, c                                       ; $5f33: $41
    db $e4                                        ; $5f34: $e4
    add c                                         ; $5f35: $81
    pop hl                                        ; $5f36: $e1
    nop                                           ; $5f37: $00
    ret nz                                        ; $5f38: $c0

    pop hl                                        ; $5f39: $e1
    push bc                                       ; $5f3a: $c5
    ldh [rPCM34], a                               ; $5f3b: $e0 $77
    pop bc                                        ; $5f3d: $c1
    ret nz                                        ; $5f3e: $c0

    db $e3                                        ; $5f3f: $e3
    ld a, [hl]                                    ; $5f40: $7e
    push bc                                       ; $5f41: $c5
    add l                                         ; $5f42: $85
    db $e4                                        ; $5f43: $e4
    ld b, c                                       ; $5f44: $41
    rst $20                                       ; $5f45: $e7
    push hl                                       ; $5f46: $e5
    db $e3                                        ; $5f47: $e3
    ld b, $c0                                     ; $5f48: $06 $c0
    db $eb                                        ; $5f4a: $eb
    dec hl                                        ; $5f4b: $2b
    dec hl                                        ; $5f4c: $2b
    dec a                                         ; $5f4d: $3d
    db $e3                                        ; $5f4e: $e3
    cp a                                          ; $5f4f: $bf
    push hl                                       ; $5f50: $e5
    call z, Call_000_3be4                         ; $5f51: $cc $e4 $3b
    add $33                                       ; $5f54: $c6 $33
    add $60                                       ; $5f56: $c6 $60
    xor l                                         ; $5f58: $ad
    push hl                                       ; $5f59: $e5
    pop bc                                        ; $5f5a: $c1
    jp z, $e14e                                   ; $5f5b: $ca $4e $e1

    push bc                                       ; $5f5e: $c5
    pop hl                                        ; $5f5f: $e1
    ret nz                                        ; $5f60: $c0

    push hl                                       ; $5f61: $e5
    ld l, e                                       ; $5f62: $6b
    ld l, e                                       ; $5f63: $6b
    ld [hl+], a                                   ; $5f64: $22
    ld [c], a                                     ; $5f65: $e2
    ld h, $d5                                     ; $5f66: $26 $d5
    and $2c                                       ; $5f68: $e6 $2c
    inc l                                         ; $5f6a: $2c
    inc c                                         ; $5f6b: $0c
    pop bc                                        ; $5f6c: $c1
    pop bc                                        ; $5f6d: $c1
    db $f4                                        ; $5f6e: $f4
    inc c                                         ; $5f6f: $0c
    ret z                                         ; $5f70: $c8

    db $e3                                        ; $5f71: $e3
    ld b, $e2                                     ; $5f72: $06 $e2
    nop                                           ; $5f74: $00
    ld a, [$74c3]                                 ; $5f75: $fa $c3 $74
    ret nz                                        ; $5f78: $c0

    ld b, e                                       ; $5f79: $43
    and $81                                       ; $5f7a: $e6 $81
    db $e4                                        ; $5f7c: $e4
    rst $38                                       ; $5f7d: $ff
    and l                                         ; $5f7e: $a5
    rst $20                                       ; $5f7f: $e7
    and e                                         ; $5f80: $a3
    cp [hl]                                       ; $5f81: $be
    xor e                                         ; $5f82: $ab
    sub b                                         ; $5f83: $90
    ret nz                                        ; $5f84: $c0

    ld [bc], a                                    ; $5f85: $02
    ld b, a                                       ; $5f86: $47
    push hl                                       ; $5f87: $e5
    dec bc                                        ; $5f88: $0b
    cp d                                          ; $5f89: $ba
    pop bc                                        ; $5f8a: $c1
    ld [hl], l                                    ; $5f8b: $75
    pop bc                                        ; $5f8c: $c1
    nop                                           ; $5f8d: $00
    db $e4                                        ; $5f8e: $e4
    ld [hl], a                                    ; $5f8f: $77
    and a                                         ; $5f90: $a7
    or b                                          ; $5f91: $b0
    ld [$a27e], a                                 ; $5f92: $ea $7e $a2
    ld [de], a                                    ; $5f95: $12
    ld a, c                                       ; $5f96: $79
    and [hl]                                      ; $5f97: $a6
    ld c, e                                       ; $5f98: $4b
    ld b, a                                       ; $5f99: $47
    rst $20                                       ; $5f9a: $e7
    db $fd                                        ; $5f9b: $fd
    and c                                         ; $5f9c: $a1
    ld c, e                                       ; $5f9d: $4b
    halt                                          ; $5f9e: $76
    pop bc                                        ; $5f9f: $c1
    ld d, $c3                                     ; $5fa0: $16 $c3
    db $10                                        ; $5fa2: $10
    jp nz, Jump_000_3d00                          ; $5fa3: $c2 $00 $3d

    and l                                         ; $5fa6: $a5
    ld b, b                                       ; $5fa7: $40
    rst $00                                       ; $5fa8: $c7
    add b                                         ; $5fa9: $80
    call $e97f                                    ; $5faa: $cd $7f $e9
    add b                                         ; $5fad: $80
    and [hl]                                      ; $5fae: $a6
    ld d, h                                       ; $5faf: $54
    push bc                                       ; $5fb0: $c5
    db $fd                                        ; $5fb1: $fd
    xor d                                         ; $5fb2: $aa
    db $ec                                        ; $5fb3: $ec
    rst $20                                       ; $5fb4: $e7
    ld [bc], a                                    ; $5fb5: $02
    add c                                         ; $5fb6: $81
    xor c                                         ; $5fb7: $a9
    ld a, [bc]                                    ; $5fb8: $0a
    ld b, a                                       ; $5fb9: $47
    and b                                         ; $5fba: $a0
    ret nz                                        ; $5fbb: $c0

    di                                            ; $5fbc: $f3
    adc $a7                                       ; $5fbd: $ce $a7
    dec bc                                        ; $5fbf: $0b
    ret                                           ; $5fc0: $c9


    ld hl, sp-$7e                                 ; $5fc1: $f8 $82
    xor h                                         ; $5fc3: $ac
    ret nz                                        ; $5fc4: $c0

    nop                                           ; $5fc5: $00
    or a                                          ; $5fc6: $b7
    add h                                         ; $5fc7: $84
    ld c, c                                       ; $5fc8: $49
    pop hl                                        ; $5fc9: $e1
    jp z, Jump_000_08a1                           ; $5fca: $ca $a1 $08

    xor d                                         ; $5fcd: $aa
    db $e3                                        ; $5fce: $e3
    push hl                                       ; $5fcf: $e5
    add b                                         ; $5fd0: $80
    push bc                                       ; $5fd1: $c5
    adc e                                         ; $5fd2: $8b
    adc c                                         ; $5fd3: $89
    ret nz                                        ; $5fd4: $c0

    db $ec                                        ; $5fd5: $ec
    ld bc, $bf0a                                  ; $5fd6: $01 $0a $bf
    db $e4                                        ; $5fd9: $e4
    ret z                                         ; $5fda: $c8

    adc l                                         ; $5fdb: $8d
    ld b, c                                       ; $5fdc: $41
    sub b                                         ; $5fdd: $90
    xor l                                         ; $5fde: $ad
    ld hl, sp-$2c                                 ; $5fdf: $f8 $d4
    ldh a, [rSTAT]                                ; $5fe1: $f0 $41
    sub c                                         ; $5fe3: $91

jr_05b_5fe4:
    ld l, l                                       ; $5fe4: $6d
    pop af                                        ; $5fe5: $f1
    nop                                           ; $5fe6: $00
    dec d                                         ; $5fe7: $15
    sub l                                         ; $5fe8: $95
    ld b, c                                       ; $5fe9: $41
    sub c                                         ; $5fea: $91
    inc sp                                        ; $5feb: $33
    add [hl]                                      ; $5fec: $86
    db $fd                                        ; $5fed: $fd
    rst $30                                       ; $5fee: $f7
    ld d, d                                       ; $5fef: $52
    and a                                         ; $5ff0: $a7
    ld b, c                                       ; $5ff1: $41
    adc a                                         ; $5ff2: $8f
    adc $65                                       ; $5ff3: $ce $65
    jp nz, Jump_000_01c1                          ; $5ff5: $c2 $c1 $01

    inc l                                         ; $5ff8: $2c
    rst $30                                       ; $5ff9: $f7
    ld h, a                                       ; $5ffa: $67
    call nc, Call_05b_41f3                        ; $5ffb: $d4 $f3 $41
    adc a                                         ; $5ffe: $8f
    xor h                                         ; $5fff: $ac
    add [hl]                                      ; $6000: $86
    ret nz                                        ; $6001: $c0

    ld [$9415], a                                 ; $6002: $ea $15 $94
    ld b, c                                       ; $6005: $41
    sub b                                         ; $6006: $90
    ld [bc], a                                    ; $6007: $02
    cp c                                          ; $6008: $b9
    and a                                         ; $6009: $a7
    ld c, h                                       ; $600a: $4c
    ld l, h                                       ; $600b: $6c
    ret z                                         ; $600c: $c8

    dec d                                         ; $600d: $15
    sbc b                                         ; $600e: $98
    ld b, c                                       ; $600f: $41
    adc h                                         ; $6010: $8c
    ld [hl], l                                    ; $6011: $75
    adc b                                         ; $6012: $88
    ret nz                                        ; $6013: $c0

    jp hl                                         ; $6014: $e9


    dec d                                         ; $6015: $15
    sub d                                         ; $6016: $92
    nop                                           ; $6017: $00
    ld b, c                                       ; $6018: $41
    sub c                                         ; $6019: $91
    cp c                                          ; $601a: $b9
    and [hl]                                      ; $601b: $a6
    cp h                                          ; $601c: $bc
    ld l, d                                       ; $601d: $6a
    dec d                                         ; $601e: $15
    sub e                                         ; $601f: $93
    ld b, c                                       ; $6020: $41
    sub c                                         ; $6021: $91
    adc l                                         ; $6022: $8d
    and l                                         ; $6023: $a5
    ccf                                           ; $6024: $3f
    db $e4                                        ; $6025: $e4
    sub d                                         ; $6026: $92
    and a                                         ; $6027: $a7
    nop                                           ; $6028: $00
    dec d                                         ; $6029: $15
    sub b                                         ; $602a: $90
    ld b, c                                       ; $602b: $41
    sub c                                         ; $602c: $91
    inc a                                         ; $602d: $3c
    xor d                                         ; $602e: $aa
    ld e, l                                       ; $602f: $5d
    xor b                                         ; $6030: $a8
    call nc, $80f2                                ; $6031: $d4 $f2 $80
    cp d                                          ; $6034: $ba
    ldh a, [$8a]                                  ; $6035: $f0 $8a
    dec d                                         ; $6037: $15
    sub e                                         ; $6038: $93
    nop                                           ; $6039: $00
    pop bc                                        ; $603a: $c1
    jr nc, jr_05b_5fe4                            ; $603b: $30 $a7

    inc h                                         ; $603d: $24
    inc a                                         ; $603e: $3c
    ld l, e                                       ; $603f: $6b
    dec d                                         ; $6040: $15
    sub h                                         ; $6041: $94
    xor h                                         ; $6042: $ac
    or d                                          ; $6043: $b2
    inc l                                         ; $6044: $2c
    add l                                         ; $6045: $85
    ret nz                                        ; $6046: $c0

    rl l                                          ; $6047: $cb $15
    sub d                                         ; $6049: $92
    nop                                           ; $604a: $00
    pop bc                                        ; $604b: $c1
    ld sp, $a67f                                  ; $604c: $31 $7f $a6
    ld a, a                                       ; $604f: $7f
    db $eb                                        ; $6050: $eb
    dec d                                         ; $6051: $15
    sub h                                         ; $6052: $94
    add b                                         ; $6053: $80
    or e                                          ; $6054: $b3
    db $f4                                        ; $6055: $f4
    db $ec                                        ; $6056: $ec
    dec d                                         ; $6057: $15
    sub [hl]                                      ; $6058: $96
    pop bc                                        ; $6059: $c1
    inc [hl]                                      ; $605a: $34
    nop                                           ; $605b: $00
    add b                                         ; $605c: $80
    ldh a, [$b6]                                  ; $605d: $f0 $b6
    sub a                                         ; $605f: $97
    add b                                         ; $6060: $80
    xor [hl]                                      ; $6061: $ae
    ld d, b                                       ; $6062: $50
    adc b                                         ; $6063: $88
    sbc [hl]                                      ; $6064: $9e
    ld l, d                                       ; $6065: $6a
    ld a, b                                       ; $6066: $78
    sub l                                         ; $6067: $95
    add b                                         ; $6068: $80
    or c                                          ; $6069: $b1
    ld a, c                                       ; $606a: $79
    inc b                                         ; $606b: $04
    nop                                           ; $606c: $00
    ld e, [hl]                                    ; $606d: $5e
    ld l, c                                       ; $606e: $69
    sub h                                         ; $606f: $94
    or d                                          ; $6070: $b2
    pop bc                                        ; $6071: $c1
    inc [hl]                                      ; $6072: $34
    push af                                       ; $6073: $f5
    ld b, l                                       ; $6074: $45
    add c                                         ; $6075: $81
    ld l, l                                       ; $6076: $6d
    push de                                       ; $6077: $d5
    ld l, $80                                     ; $6078: $2e $80
    or d                                          ; $607a: $b2
    ret                                           ; $607b: $c9


    ld b, a                                       ; $607c: $47
    nop                                           ; $607d: $00
    add d                                         ; $607e: $82
    xor b                                         ; $607f: $a8
    ret nz                                        ; $6080: $c0

    or h                                          ; $6081: $b4
    db $ec                                        ; $6082: $ec
    ld sp, hl                                     ; $6083: $f9
    pop bc                                        ; $6084: $c1
    adc d                                         ; $6085: $8a
    push de                                       ; $6086: $d5
    ld [hl], $ac                                  ; $6087: $36 $ac
    cp c                                          ; $6089: $b9
    ld [bc], a                                    ; $608a: $02
    xor d                                         ; $608b: $aa
    push de                                       ; $608c: $d5
    add hl, sp                                    ; $608d: $39
    nop                                           ; $608e: $00
    xor h                                         ; $608f: $ac
    xor c                                         ; $6090: $a9
    jp nc, $2ea5                                  ; $6091: $d2 $a5 $2e

    ld c, d                                       ; $6094: $4a
    push de                                       ; $6095: $d5
    scf                                           ; $6096: $37
    pop bc                                        ; $6097: $c1
    ld l, $07                                     ; $6098: $2e $07
    pop de                                        ; $609a: $d1
    push de                                       ; $609b: $d5
    add hl, sp                                    ; $609c: $39
    xor h                                         ; $609d: $ac
    xor [hl]                                      ; $609e: $ae
    nop                                           ; $609f: $00
    rst $20                                       ; $60a0: $e7
    adc l                                         ; $60a1: $8d
    rst $38                                       ; $60a2: $ff
    rst $38                                       ; $60a3: $ff
    xor l                                         ; $60a4: $ad
    or d                                          ; $60a5: $b2
    rst $38                                       ; $60a6: $ff
    rst $38                                       ; $60a7: $ff
    inc h                                         ; $60a8: $24
    ld d, [hl]                                    ; $60a9: $56
    ld a, a                                       ; $60aa: $7f
    rst $38                                       ; $60ab: $ff
    ld hl, sp+$68                                 ; $60ac: $f8 $68
    ld h, $dc                                     ; $60ae: $26 $dc
    nop                                           ; $60b0: $00
    di                                            ; $60b1: $f3
    ld d, b                                       ; $60b2: $50
    cpl                                           ; $60b3: $2f
    add hl, hl                                    ; $60b4: $29
    and $7f                                       ; $60b5: $e6 $7f
    scf                                           ; $60b7: $37
    jp Jump_05b_42d3                              ; $60b8: $c3 $d3 $42


    ld b, d                                       ; $60bb: $42
    call Call_05b_74f5                            ; $60bc: $cd $f5 $74
    ld b, b                                       ; $60bf: $40
    rst $28                                       ; $60c0: $ef
    nop                                           ; $60c1: $00
    sub $64                                       ; $60c2: $d6 $64
    ld [bc], a                                    ; $60c4: $02
    adc d                                         ; $60c5: $8a
    di                                            ; $60c6: $f3
    db $eb                                        ; $60c7: $eb
    ld h, $d0                                     ; $60c8: $26 $d0
    sbc b                                         ; $60ca: $98
    adc l                                         ; $60cb: $8d
    ld l, d                                       ; $60cc: $6a
    db $10                                        ; $60cd: $10
    ld e, l                                       ; $60ce: $5d
    inc c                                         ; $60cf: $0c
    ld h, $d1                                     ; $60d0: $26 $d1
    nop                                           ; $60d2: $00
    db $db                                        ; $60d3: $db
    and a                                         ; $60d4: $a7
    rst $38                                       ; $60d5: $ff
    rst $38                                       ; $60d6: $ff
    jp c, $bf78                                   ; $60d7: $da $78 $bf

    rst $38                                       ; $60da: $ff
    ld d, l                                       ; $60db: $55
    rst $18                                       ; $60dc: $df
    rst $38                                       ; $60dd: $ff
    rst $38                                       ; $60de: $ff
    ret nz                                        ; $60df: $c0

    rst $38                                       ; $60e0: $ff
    rst $38                                       ; $60e1: $ff
    rst $38                                       ; $60e2: $ff
    nop                                           ; $60e3: $00
    rst $38                                       ; $60e4: $ff
    rst $38                                       ; $60e5: $ff
    and $96                                       ; $60e6: $e6 $96
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
    nop                                           ; $60f4: $00
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
    nop                                           ; $6105: $00
    rst $38                                       ; $6106: $ff
    rst $38                                       ; $6107: $ff
    rst $38                                       ; $6108: $ff
    rst $38                                       ; $6109: $ff
    rst $38                                       ; $610a: $ff
    rst $38                                       ; $610b: $ff
    sbc c                                         ; $610c: $99
    or [hl]                                       ; $610d: $b6
    db $dd                                        ; $610e: $dd
    rst $38                                       ; $610f: $ff
    rst $38                                       ; $6110: $ff
    rst $38                                       ; $6111: $ff
    rst $38                                       ; $6112: $ff
    rst $38                                       ; $6113: $ff
    rst $38                                       ; $6114: $ff
    rst $38                                       ; $6115: $ff
    nop                                           ; $6116: $00
    rst $38                                       ; $6117: $ff
    rst $38                                       ; $6118: $ff
    rst $38                                       ; $6119: $ff
    pop af                                        ; $611a: $f1
    nop                                           ; $611b: $00
    nop                                           ; $611c: $00
    nop                                           ; $611d: $00
    rst $18                                       ; $611e: $df
    jr nz, @+$22                                  ; $611f: $20 $20

    jr nz, jr_05b_6132                            ; $6121: $20 $0f

    ld sp, $e4ff                                  ; $6123: $31 $ff $e4
    ld de, $9b12                                  ; $6126: $11 $12 $9b
    ld hl, $f022                                  ; $6129: $21 $22 $f0
    ldh [rNR41], a                                ; $612c: $e0 $20
    nop                                           ; $612e: $00
    rst $38                                       ; $612f: $ff
    rst $38                                       ; $6130: $ff
    rst $20                                       ; $6131: $e7

jr_05b_6132:
    and $20                                       ; $6132: $e6 $20
    di                                            ; $6134: $f3
    jr nz, jr_05b_6145                            ; $6135: $20 $0e

    pop bc                                        ; $6137: $c1
    push hl                                       ; $6138: $e5
    cp [hl]                                       ; $6139: $be

jr_05b_613a:
    ld [c], a                                     ; $613a: $e2
    daa                                           ; $613b: $27
    dec b                                         ; $613c: $05
    dec b                                         ; $613d: $05
    dec b                                         ; $613e: $05
    ld a, b                                       ; $613f: $78
    jp z, $c0ff                                   ; $6140: $ca $ff $c0

    add sp, -$7e                                  ; $6143: $e8 $82

jr_05b_6145:
    ld [c], a                                     ; $6145: $e2
    ld b, a                                       ; $6146: $47
    ld b, [hl]                                    ; $6147: $46
    ld b, [hl]                                    ; $6148: $46
    ld b, a                                       ; $6149: $47
    cp c                                          ; $614a: $b9
    rst $20                                       ; $614b: $e7
    ld hl, sp-$36                                 ; $614c: $f8 $ca
    rst $38                                       ; $614e: $ff
    add sp, -$19                                  ; $614f: $e8 $e7
    add d                                         ; $6151: $82
    pop hl                                        ; $6152: $e1
    ld c, l                                       ; $6153: $4d
    ld b, [hl]                                    ; $6154: $46
    ld [hl], $30                                  ; $6155: $36 $30
    jr nc, jr_05b_613a                            ; $6157: $30 $e1

    ld [hl], $be                                  ; $6159: $36 $be
    rst $20                                       ; $615b: $e7
    jp z, $e8ff                                   ; $615c: $ca $ff $e8

    rst $20                                       ; $615f: $e7
    pop bc                                        ; $6160: $c1
    pop hl                                        ; $6161: $e1
    ld [hl-], a                                   ; $6162: $32
    ld l, d                                       ; $6163: $6a
    ld l, l                                       ; $6164: $6d
    rst $38                                       ; $6165: $ff
    jr nc, @+$32                                  ; $6166: $30 $30

    ld l, l                                       ; $6168: $6d
    ld l, d                                       ; $6169: $6a
    ld [hl], $46                                  ; $616a: $36 $46
    ld d, a                                       ; $616c: $57
    ld d, a                                       ; $616d: $57
    sbc a                                         ; $616e: $9f
    ld d, a                                       ; $616f: $57
    or b                                          ; $6170: $b0
    and h                                         ; $6171: $a4
    and h                                         ; $6172: $a4
    and h                                         ; $6173: $a4
    jp z, $c0ff                                   ; $6174: $ca $ff $c0

    ld [$ff39], a                                 ; $6177: $ea $39 $ff
    ld l, c                                       ; $617a: $69
    ld l, d                                       ; $617b: $6a
    ld l, d                                       ; $617c: $6a
    ld l, b                                       ; $617d: $68
    ld l, b                                       ; $617e: $68
    ld l, d                                       ; $617f: $6a
    ld l, d                                       ; $6180: $6a
    jr nc, @+$01                                  ; $6181: $30 $ff

    jr nc, jr_05b_61ed                            ; $6183: $30 $68

    ld l, b                                       ; $6185: $68
    ld l, l                                       ; $6186: $6d
    ld [hl], c                                    ; $6187: $71
    ld a, c                                       ; $6188: $79
    add b                                         ; $6189: $80
    add b                                         ; $618a: $80
    inc c                                         ; $618b: $0c
    jp z, $80ff                                   ; $618c: $ca $ff $80

    jp hl                                         ; $618f: $e9


    ld c, c                                       ; $6190: $49
    ld c, b                                       ; $6191: $48
    ret nz                                        ; $6192: $c0

    db $e3                                        ; $6193: $e3
    ld a, [hl]                                    ; $6194: $7e
    ldh [$ba], a                                  ; $6195: $e0 $ba
    ldh [$bf], a                                  ; $6197: $e0 $bf
    pop hl                                        ; $6199: $e1
    ld a, h                                       ; $619a: $7c
    jp z, Jump_05b_40ff                           ; $619b: $ca $ff $40

    jp hl                                         ; $619e: $e9


    add hl, sp                                    ; $619f: $39
    ld l, c                                       ; $61a0: $69
    ld l, c                                       ; $61a1: $69
    ld l, c                                       ; $61a2: $69
    jr nc, @+$01                                  ; $61a3: $30 $ff

    ldh [$7d], a                                  ; $61a5: $e0 $7d
    ld l, e                                       ; $61a7: $6b
    ld sp, hl                                     ; $61a8: $f9
    pop hl                                        ; $61a9: $e1
    ld l, c                                       ; $61aa: $69
    ld l, c                                       ; $61ab: $69
    ld l, e                                       ; $61ac: $6b
    ld [hl], c                                    ; $61ad: $71
    ld a, c                                       ; $61ae: $79
    jp z, $28ff                                   ; $61af: $ca $ff $28

    ret nz                                        ; $61b2: $c0

jr_05b_61b3:
    rst $38                                       ; $61b3: $ff
    rst $38                                       ; $61b4: $ff
    rst $38                                       ; $61b5: $ff
    db $e4                                        ; $61b6: $e4
    db $e3                                        ; $61b7: $e3
    ld e, [hl]                                    ; $61b8: $5e
    ld b, b                                       ; $61b9: $40
    pop hl                                        ; $61ba: $e1
    ld l, c                                       ; $61bb: $69
    ld b, b                                       ; $61bc: $40
    rst $38                                       ; $61bd: $ff
    or $f5                                        ; $61be: $f6 $f5
    ld h, l                                       ; $61c0: $65
    ld e, a                                       ; $61c1: $5f
    ret nz                                        ; $61c2: $c0

    ret z                                         ; $61c3: $c8

    ld l, l                                       ; $61c4: $6d
    ret nz                                        ; $61c5: $c0

    rst $18                                       ; $61c6: $df
    rst $28                                       ; $61c7: $ef
    xor $5b                                       ; $61c8: $ee $5b
    ld e, [hl]                                    ; $61ca: $5e
    ld b, b                                       ; $61cb: $40
    jp nz, Jump_05b_6cff                          ; $61cc: $c2 $ff $6c

    ld l, h                                       ; $61cf: $6c
    ld l, l                                       ; $61d0: $6d
    ld l, d                                       ; $61d1: $6a
    ld [hl-], a                                   ; $61d2: $32
    ld d, [hl]                                    ; $61d3: $56
    ld d, a                                       ; $61d4: $57
    ld d, [hl]                                    ; $61d5: $56
    ld [hl], c                                    ; $61d6: $71
    ld d, [hl]                                    ; $61d7: $56
    ld b, b                                       ; $61d8: $40
    rst $18                                       ; $61d9: $df
    ret nz                                        ; $61da: $c0

    db $ec                                        ; $61db: $ec
    ld a, a                                       ; $61dc: $7f
    ldh [rKEY1], a                                ; $61dd: $e0 $4d
    ld [hl-], a                                   ; $61df: $32
    ld l, e                                       ; $61e0: $6b
    ld bc, $b3e0                                  ; $61e1: $01 $e0 $b3
    ld [hl-], a                                   ; $61e4: $32
    ld c, l                                       ; $61e5: $4d
    ret nz                                        ; $61e6: $c0

    cp a                                          ; $61e7: $bf
    add b                                         ; $61e8: $80
    ldh a, [$5a]                                  ; $61e9: $f0 $5a
    ld h, b                                       ; $61eb: $60
    cp [hl]                                       ; $61ec: $be

jr_05b_61ed:
    and c                                         ; $61ed: $a1
    jr nc, jr_05b_6221                            ; $61ee: $30 $31

    jr nc, jr_05b_61b3                            ; $61f0: $30 $c1

    rst $20                                       ; $61f2: $e7
    ret nz                                        ; $61f3: $c0

    rst $38                                       ; $61f4: $ff
    ld b, b                                       ; $61f5: $40
    jp hl                                         ; $61f6: $e9


    ld e, e                                       ; $61f7: $5b
    ld e, e                                       ; $61f8: $5b
    cp a                                          ; $61f9: $bf
    ld [c], a                                     ; $61fa: $e2
    add d                                         ; $61fb: $82
    pop hl                                        ; $61fc: $e1
    inc hl                                        ; $61fd: $23
    add hl, hl                                    ; $61fe: $29
    inc d                                         ; $61ff: $14

Call_05b_6200:
    rst $38                                       ; $6200: $ff
    db $e3                                        ; $6201: $e3
    jp z, $e8ff                                   ; $6202: $ca $ff $e8

    rst $20                                       ; $6205: $e7
    ld e, d                                       ; $6206: $5a
    cp a                                          ; $6207: $bf
    db $e4                                        ; $6208: $e4
    ld b, e                                       ; $6209: $43
    pop hl                                        ; $620a: $e1
    rlca                                          ; $620b: $07
    dec hl                                        ; $620c: $2b
    inc l                                         ; $620d: $2c
    inc h                                         ; $620e: $24
    rst $38                                       ; $620f: $ff
    ld [c], a                                     ; $6210: $e2
    jp z, $ffff                                   ; $6211: $ca $ff $ff

    rst $38                                       ; $6214: $ff
    rst $38                                       ; $6215: $ff
    rst $38                                       ; $6216: $ff
    rst $38                                       ; $6217: $ff
    rst $38                                       ; $6218: $ff
    nop                                           ; $6219: $00
    rst $38                                       ; $621a: $ff
    rst $38                                       ; $621b: $ff
    rst $38                                       ; $621c: $ff
    rst $38                                       ; $621d: $ff
    rst $38                                       ; $621e: $ff
    rst $38                                       ; $621f: $ff
    rst $38                                       ; $6220: $ff

jr_05b_6221:
    rst $38                                       ; $6221: $ff
    rst $38                                       ; $6222: $ff
    rst $38                                       ; $6223: $ff
    rst $38                                       ; $6224: $ff
    rst $38                                       ; $6225: $ff
    rst $38                                       ; $6226: $ff
    rst $38                                       ; $6227: $ff
    rst $38                                       ; $6228: $ff
    rst $38                                       ; $6229: $ff
    nop                                           ; $622a: $00
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
    nop                                           ; $623b: $00
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
    nop                                           ; $624c: $00
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
    nop                                           ; $625d: $00
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
    nop                                           ; $626e: $00
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
    nop                                           ; $627f: $00
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
    nop                                           ; $6290: $00
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
    nop                                           ; $62a1: $00
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
    nop                                           ; $62b2: $00
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
    nop                                           ; $62c3: $00
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
    di                                            ; $62d3: $f3
    nop                                           ; $62d4: $00
    nop                                           ; $62d5: $00
    nop                                           ; $62d6: $00
    and l                                         ; $62d7: $a5
    nop                                           ; $62d8: $00
    rst $38                                       ; $62d9: $ff
    push hl                                       ; $62da: $e5
    ld [hl-], a                                   ; $62db: $32
    or $e6                                        ; $62dc: $f6 $e6
    rst $30                                       ; $62de: $f7
    rst $20                                       ; $62df: $e7
    dec [hl]                                      ; $62e0: $35
    db $ec                                        ; $62e1: $ec
    xor $37                                       ; $62e2: $ee $37
    db $ec                                        ; $62e4: $ec
    jp c, $c7f0                                   ; $62e5: $da $f0 $c7

    add sp, $33                                   ; $62e8: $e8 $33
    ld sp, $f2e0                                  ; $62ea: $31 $e0 $f2
    ld [hl], $30                                  ; $62ed: $36 $30
    scf                                           ; $62ef: $37
    cp a                                          ; $62f0: $bf
    ld h, $20                                     ; $62f1: $26 $20
    daa                                           ; $62f3: $27
    db $10                                        ; $62f4: $10
    ld d, $17                                     ; $62f5: $16 $17
    jp nz, Jump_000_34f6                          ; $62f7: $c2 $f6 $34

    rst $38                                       ; $62fa: $ff
    ld [hl], $32                                  ; $62fb: $36 $32
    jr nc, jr_05b_6336                            ; $62fd: $30 $37

    ld sp, $3133                                  ; $62ff: $31 $33 $31
    inc sp                                        ; $6302: $33
    nop                                           ; $6303: $00
    and b                                         ; $6304: $a0
    ei                                            ; $6305: $fb
    rst $38                                       ; $6306: $ff
    rst $28                                       ; $6307: $ef
    nop                                           ; $6308: $00
    nop                                           ; $6309: $00
    nop                                           ; $630a: $00
    inc de                                        ; $630b: $13
    ld h, e                                       ; $630c: $63
    ld b, e                                       ; $630d: $43
    ld h, e                                       ; $630e: $63
    cp e                                          ; $630f: $bb
    ld h, l                                       ; $6310: $65
    call nc, $c067                                ; $6311: $d4 $67 $c0
    rra                                           ; $6314: $1f
    adc d                                         ; $6315: $8a
    inc bc                                        ; $6316: $03
    add b                                         ; $6317: $80
    ld [bc], a                                    ; $6318: $02
    ld h, b                                       ; $6319: $60
    ld bc, $03ef                                  ; $631a: $01 $ef $03
    db $f4                                        ; $631d: $f4
    inc bc                                        ; $631e: $03
    adc d                                         ; $631f: $8a
    inc bc                                        ; $6320: $03
    add b                                         ; $6321: $80
    ld [bc], a                                    ; $6322: $02
    rra                                           ; $6323: $1f
    ld a, l                                       ; $6324: $7d
    rst $30                                       ; $6325: $f7
    ld b, h                                       ; $6326: $44
    rrca                                          ; $6327: $0f
    ld bc, $038a                                  ; $6328: $01 $8a $03
    ld [$0825], sp                                ; $632b: $08 $25 $08
    dec h                                         ; $632e: $25
    ld [$0825], sp                                ; $632f: $08 $25 $08
    dec h                                         ; $6332: $25
    ld [$0825], sp                                ; $6333: $08 $25 $08

jr_05b_6336:
    dec h                                         ; $6336: $25
    ld [$0825], sp                                ; $6337: $08 $25 $08
    dec h                                         ; $633a: $25
    ld [$0825], sp                                ; $633b: $08 $25 $08
    dec h                                         ; $633e: $25
    ld [$0825], sp                                ; $633f: $08 $25 $08
    dec h                                         ; $6342: $25
    push af                                       ; $6343: $f5

jr_05b_6344:
    ld c, e                                       ; $6344: $4b
    rst $38                                       ; $6345: $ff
    pop hl                                        ; $6346: $e1
    dec bc                                        ; $6347: $0b
    rst $38                                       ; $6348: $ff
    rst $20                                       ; $6349: $e7
    ld c, h                                       ; $634a: $4c
    ld c, h                                       ; $634b: $4c
    inc c                                         ; $634c: $0c
    inc c                                         ; $634d: $0c
    rst $20                                       ; $634e: $e7
    inc c                                         ; $634f: $0c
    ld c, e                                       ; $6350: $4b
    ld c, h                                       ; $6351: $4c
    rst $38                                       ; $6352: $ff
    ldh [$f8], a                                  ; $6353: $e0 $f8
    ldh [$0c], a                                  ; $6355: $e0 $0c
    inc c                                         ; $6357: $0c
    dec bc                                        ; $6358: $0b
    rst $30                                       ; $6359: $f7
    dec bc                                        ; $635a: $0b
    inc c                                         ; $635b: $0c
    inc l                                         ; $635c: $2c
    cp $e0                                        ; $635d: $fe $e0
    inc c                                         ; $635f: $0c
    inc l                                         ; $6360: $2c
    inc l                                         ; $6361: $2c
    ld c, h                                       ; $6362: $4c
    pop af                                        ; $6363: $f1
    inc c                                         ; $6364: $0c
    db $ec                                        ; $6365: $ec
    push hl                                       ; $6366: $e5
    ei                                            ; $6367: $fb
    ld [$e4c2], a                                 ; $6368: $ea $c2 $e4
    ld l, e                                       ; $636b: $6b
    dec bc                                        ; $636c: $0b
    dec bc                                        ; $636d: $0b
    dec hl                                        ; $636e: $2b
    rlca                                          ; $636f: $07
    dec hl                                        ; $6370: $2b
    ld c, e                                       ; $6371: $4b
    dec hl                                        ; $6372: $2b
    rst $38                                       ; $6373: $ff
    pop hl                                        ; $6374: $e1
    cp [hl]                                       ; $6375: $be
    ldh [$ab], a                                  ; $6376: $e0 $ab
    ldh [$d6], a                                  ; $6378: $e0 $d6
    rst $20                                       ; $637a: $e7
    ret nz                                        ; $637b: $c0

    db $e4                                        ; $637c: $e4
    jr z, jr_05b_6344                             ; $637d: $28 $c5

    rst $28                                       ; $637f: $ef
    ret nz                                        ; $6380: $c0

    db $e4                                        ; $6381: $e4
    jp nz, Jump_05b_6be1                          ; $6382: $c2 $e1 $6b

    ret nz                                        ; $6385: $c0

    ldh [$0b], a                                  ; $6386: $e0 $0b
    ld [hl], l                                    ; $6388: $75
    pop hl                                        ; $6389: $e1
    cp [hl]                                       ; $638a: $be
    ldh [rNR21], a                                ; $638b: $e0 $16
    adc l                                         ; $638d: $8d
    ldh [$0b], a                                  ; $638e: $e0 $0b
    ld c, e                                       ; $6390: $4b
    db $fc                                        ; $6391: $fc
    ldh [$0b], a                                  ; $6392: $e0 $0b
    push bc                                       ; $6394: $c5
    pop hl                                        ; $6395: $e1
    ld [hl], d                                    ; $6396: $72
    ldh [$80], a                                  ; $6397: $e0 $80
    db $e3                                        ; $6399: $e3
    ld [hl-], a                                   ; $639a: $32
    pop bc                                        ; $639b: $c1
    db $f4                                        ; $639c: $f4
    inc c                                         ; $639d: $0c
    ld b, h                                       ; $639e: $44
    ldh [$c2], a                                  ; $639f: $e0 $c2
    ldh [rOCPD], a                                ; $63a1: $e0 $6b
    ld l, e                                       ; $63a3: $6b
    ret                                           ; $63a4: $c9


    ldh [$bd], a                                  ; $63a5: $e0 $bd
    db $e3                                        ; $63a7: $e3
    nop                                           ; $63a8: $00
    cp a                                          ; $63a9: $bf
    ldh [rOBP0], a                                ; $63aa: $e0 $48
    pop hl                                        ; $63ac: $e1
    sub b                                         ; $63ad: $90
    db $e3                                        ; $63ae: $e3
    adc d                                         ; $63af: $8a
    pop hl                                        ; $63b0: $e1
    ld b, a                                       ; $63b1: $47
    ldh [$fb], a                                  ; $63b2: $e0 $fb
    pop hl                                        ; $63b4: $e1
    add b                                         ; $63b5: $80
    db $f4                                        ; $63b6: $f4
    ld b, a                                       ; $63b7: $47
    ldh [$09], a                                  ; $63b8: $e0 $09
    ld l, e                                       ; $63ba: $6b
    add b                                         ; $63bb: $80
    pop hl                                        ; $63bc: $e1
    adc b                                         ; $63bd: $88
    pop hl                                        ; $63be: $e1
    dec bc                                        ; $63bf: $0b
    add h                                         ; $63c0: $84
    ldh [$c0], a                                  ; $63c1: $e0 $c0
    db $e4                                        ; $63c3: $e4
    ld b, h                                       ; $63c4: $44
    and $ff                                       ; $63c5: $e6 $ff
    rst $30                                       ; $63c7: $f7
    inc a                                         ; $63c8: $3c
    ld l, $e3                                     ; $63c9: $2e $e3
    jp Jump_000_2be1                              ; $63cb: $c3 $e1 $2b


    dec hl                                        ; $63ce: $2b
    ld l, e                                       ; $63cf: $6b
    ld l, e                                       ; $63d0: $6b
    ld b, e                                       ; $63d1: $43
    db $e3                                        ; $63d2: $e3
    dec sp                                        ; $63d3: $3b
    pop hl                                        ; $63d4: $e1
    inc b                                         ; $63d5: $04
    add b                                         ; $63d6: $80
    ldh [$c1], a                                  ; $63d7: $e0 $c1
    ret nz                                        ; $63d9: $c0

    ld c, e                                       ; $63da: $4b
    cp h                                          ; $63db: $bc
    push bc                                       ; $63dc: $c5
    and h                                         ; $63dd: $a4
    pop bc                                        ; $63de: $c1
    inc sp                                        ; $63df: $33
    db $e3                                        ; $63e0: $e3
    cpl                                           ; $63e1: $2f
    ld [c], a                                     ; $63e2: $e2
    cp [hl]                                       ; $63e3: $be
    call $0300                                    ; $63e4: $cd $00 $03
    pop hl                                        ; $63e7: $e1
    ret                                           ; $63e8: $c9


    ret nz                                        ; $63e9: $c0

    ret nz                                        ; $63ea: $c0

    pop hl                                        ; $63eb: $e1
    inc b                                         ; $63ec: $04
    ld [c], a                                     ; $63ed: $e2
    ld a, a                                       ; $63ee: $7f
    ldh [$80], a                                  ; $63ef: $e0 $80
    ld [c], a                                     ; $63f1: $e2
    ld bc, $7ee1                                  ; $63f2: $01 $e1 $7e
    call nz, Call_05b_6200                        ; $63f5: $c4 $00 $62
    jp nz, $f6c0                                  ; $63f8: $c2 $c0 $f6

    ld [bc], a                                    ; $63fb: $02
    pop hl                                        ; $63fc: $e1
    cp a                                          ; $63fd: $bf
    ret nz                                        ; $63fe: $c0

    push bc                                       ; $63ff: $c5
    jp nz, $c233                                  ; $6400: $c2 $33 $c2

    ld [hl-], a                                   ; $6403: $32
    ret nz                                        ; $6404: $c0

    ld a, [bc]                                    ; $6405: $0a
    pop hl                                        ; $6406: $e1
    nop                                           ; $6407: $00
    ret nz                                        ; $6408: $c0

    pop bc                                        ; $6409: $c1
    db $fc                                        ; $640a: $fc
    db $e3                                        ; $640b: $e3
    ret nz                                        ; $640c: $c0

    push hl                                       ; $640d: $e5
    ld a, [hl]                                    ; $640e: $7e
    jp nc, $e184                                  ; $640f: $d2 $84 $e1

    adc l                                         ; $6412: $8d
    ret nz                                        ; $6413: $c0

    ld a, e                                       ; $6414: $7b
    ld [c], a                                     ; $6415: $e2
    db $f4                                        ; $6416: $f4
    and l                                         ; $6417: $a5
    nop                                           ; $6418: $00
    ld d, h                                       ; $6419: $54
    add $4b                                       ; $641a: $c6 $4b
    pop bc                                        ; $641c: $c1
    cp b                                          ; $641d: $b8
    ld [c], a                                     ; $641e: $e2
    scf                                           ; $641f: $37
    jp $a1fd                                      ; $6420: $c3 $fd $a1


    ret nz                                        ; $6423: $c0

    xor $08                                       ; $6424: $ee $08
    ret nz                                        ; $6426: $c0

    add h                                         ; $6427: $84
    pop bc                                        ; $6428: $c1
    ld c, $c0                                     ; $6429: $0e $c0
    rst $20                                       ; $642b: $e7
    dec hl                                        ; $642c: $2b
    dec bc                                        ; $642d: $0b
    inc l                                         ; $642e: $2c
    ld bc, $fee8                                  ; $642f: $01 $e8 $fe
    and e                                         ; $6432: $a3
    jp $fda2                                      ; $6433: $c3 $a2 $fd


    or d                                          ; $6436: $b2
    db $10                                        ; $6437: $10
    call z, Call_000_02a2                         ; $6438: $cc $a2 $02
    pop bc                                        ; $643b: $c1
    db $fc                                        ; $643c: $fc
    and b                                         ; $643d: $a0
    ld [hl], l                                    ; $643e: $75
    and h                                         ; $643f: $a4
    dec hl                                        ; $6440: $2b
    sub b                                         ; $6441: $90
    and b                                         ; $6442: $a0
    ld bc, $f8e6                                  ; $6443: $01 $e6 $f8
    and d                                         ; $6446: $a2
    ret nc                                        ; $6447: $d0

    adc b                                         ; $6448: $88
    xor a                                         ; $6449: $af
    or c                                          ; $644a: $b1
    and [hl]                                      ; $644b: $a6
    sub c                                         ; $644c: $91

jr_05b_644d:
    ret nz                                        ; $644d: $c0

    ret nz                                        ; $644e: $c0

    db $e4                                        ; $644f: $e4
    ld c, e                                       ; $6450: $4b
    ret nz                                        ; $6451: $c0

    db $e3                                        ; $6452: $e3
    dec hl                                        ; $6453: $2b
    dec bc                                        ; $6454: $0b
    ld bc, $502a                                  ; $6455: $01 $2a $50
    and b                                         ; $6458: $a0
    ld bc, $b6e6                                  ; $6459: $01 $e6 $b6
    add sp, $2e                                   ; $645c: $e8 $2e
    jp nc, $c688                                  ; $645e: $d2 $88 $c6

    add d                                         ; $6461: $82
    push hl                                       ; $6462: $e5
    ld [hl], h                                    ; $6463: $74
    and b                                         ; $6464: $a0
    inc c                                         ; $6465: $0c
    ld a, [bc]                                    ; $6466: $0a
    reti                                          ; $6467: $d9


    cp $8d                                        ; $6468: $fe $8d
    ld a, [bc]                                    ; $646a: $0a
    ld a, [bc]                                    ; $646b: $0a
    dec c                                         ; $646c: $0d
    pop hl                                        ; $646d: $e1
    ld c, d                                       ; $646e: $4a
    and b                                         ; $646f: $a0
    cp $a0                                        ; $6470: $fe $a0
    cp [hl]                                       ; $6472: $be
    and c                                         ; $6473: $a1
    add b                                         ; $6474: $80
    ld [hl], l                                    ; $6475: $75
    and c                                         ; $6476: $a1
    inc d                                         ; $6477: $14
    xor d                                         ; $6478: $aa
    ld a, b                                       ; $6479: $78
    push bc                                       ; $647a: $c5
    ld bc, $15d3                                  ; $647b: $01 $d3 $15
    and b                                         ; $647e: $a0
    set 0, e                                      ; $647f: $cb $c3
    ld a, b                                       ; $6481: $78
    add b                                         ; $6482: $80
    ld l, e                                       ; $6483: $6b
    add [hl]                                      ; $6484: $86
    jp nz, Jump_05b_6be2                          ; $6485: $c2 $e2 $6b

    dec hl                                        ; $6488: $2b
    ld b, b                                       ; $6489: $40
    pop hl                                        ; $648a: $e1
    ret nz                                        ; $648b: $c0

    ldh a, [$6f]                                  ; $648c: $f0 $6f
    or e                                          ; $648e: $b3
    ld b, l                                       ; $648f: $45
    add b                                         ; $6490: $80
    ld a, [bc]                                    ; $6491: $0a
    ld [$81c5], sp                                ; $6492: $08 $c5 $81
    ld a, e                                       ; $6495: $7b
    add d                                         ; $6496: $82
    ld a, [hl-]                                   ; $6497: $3a
    and b                                         ; $6498: $a0
    ld a, [hl+]                                   ; $6499: $2a
    ld a, h                                       ; $649a: $7c
    add b                                         ; $649b: $80
    add b                                         ; $649c: $80
    xor $41                                       ; $649d: $ee $41
    rst $00                                       ; $649f: $c7
    ld a, a                                       ; $64a0: $7f
    or b                                          ; $64a1: $b0
    nop                                           ; $64a2: $00
    ld e, h                                       ; $64a3: $5c
    add d                                         ; $64a4: $82
    sbc e                                         ; $64a5: $9b
    add l                                         ; $64a6: $85
    ld e, c                                       ; $64a7: $59
    add d                                         ; $64a8: $82
    ld b, b                                       ; $64a9: $40
    db $ec                                        ; $64aa: $ec
    jr nc, jr_05b_644d                            ; $64ab: $30 $a0

    ld b, c                                       ; $64ad: $41
    sub $d5                                       ; $64ae: $d6 $d5
    ld h, a                                       ; $64b0: $67
    call z, Call_000_006a                         ; $64b1: $cc $6a $00
    sbc [hl]                                      ; $64b4: $9e
    rst $28                                       ; $64b5: $ef
    add $64                                       ; $64b6: $c6 $64
    cp l                                          ; $64b8: $bd
    ld l, [hl]                                    ; $64b9: $6e
    push de                                       ; $64ba: $d5
    ld h, [hl]                                    ; $64bb: $66
    call z, $bf6a                                 ; $64bc: $cc $6a $bf
    rst $30                                       ; $64bf: $f7
    ret nz                                        ; $64c0: $c0

    rst $08                                       ; $64c1: $cf
    and d                                         ; $64c2: $a2
    add l                                         ; $64c3: $85
    nop                                           ; $64c4: $00
    call z, Call_05b_7768                         ; $64c5: $cc $68 $77
    jp hl                                         ; $64c8: $e9


    dec l                                         ; $64c9: $2d
    ld h, b                                       ; $64ca: $60
    ld l, a                                       ; $64cb: $6f
    db $ed                                        ; $64cc: $ed
    ld a, [hl]                                    ; $64cd: $7e
    adc h                                         ; $64ce: $8c
    ld h, l                                       ; $64cf: $65
    ld h, l                                       ; $64d0: $65
    call z, Call_05b_7f68                         ; $64d1: $cc $68 $7f
    rst $38                                       ; $64d4: $ff
    ld [$7be8], sp                                ; $64d5: $08 $e8 $7b
    ld b, e                                       ; $64d8: $43
    ld h, [hl]                                    ; $64d9: $66
    add [hl]                                      ; $64da: $86
    ld h, d                                       ; $64db: $62
    ld c, h                                       ; $64dc: $4c
    nop                                           ; $64dd: $00
    sbc b                                         ; $64de: $98
    push de                                       ; $64df: $d5
    ld h, [hl]                                    ; $64e0: $66
    call z, Call_000_1469                         ; $64e1: $cc $69 $14
    call Call_000_3300                            ; $64e4: $cd $00 $33
    add d                                         ; $64e7: $82
    cp a                                          ; $64e8: $bf
    or h                                          ; $64e9: $b4
    push de                                       ; $64ea: $d5
    ld l, d                                       ; $64eb: $6a
    dec d                                         ; $64ec: $15
    or l                                          ; $64ed: $b5
    pop bc                                        ; $64ee: $c1
    ld sp, hl                                     ; $64ef: $f9
    push de                                       ; $64f0: $d5
    ld h, h                                       ; $64f1: $64
    call z, Call_05b_4269                         ; $64f2: $cc $69 $42
    adc d                                         ; $64f5: $8a
    nop                                           ; $64f6: $00
    ld sp, $2de5                                  ; $64f7: $31 $e5 $2d
    rst $20                                       ; $64fa: $e7
    ld a, [c]                                     ; $64fb: $f2
    ld d, a                                       ; $64fc: $57
    call z, $fc68                                 ; $64fd: $cc $68 $fc
    adc l                                         ; $6500: $8d
    rst $38                                       ; $6501: $ff
    inc [hl]                                      ; $6502: $34
    sub $46                                       ; $6503: $d6 $46
    call z, Call_000_0069                         ; $6505: $cc $69 $00
    ld b, d                                       ; $6508: $42
    add a                                         ; $6509: $87
    res 4, e                                      ; $650a: $cb $a3
    cp a                                          ; $650c: $bf
    sbc c                                         ; $650d: $99
    ld bc, $c0ff                                  ; $650e: $01 $ff $c0
    call c, Call_05b_46d6                         ; $6511: $dc $d6 $46
    call z, Call_000_0167                         ; $6514: $cc $67 $01
    db $ec                                        ; $6517: $ec
    nop                                           ; $6518: $00
    ccf                                           ; $6519: $3f
    ld a, [$bf4f]                                 ; $651a: $fa $4f $bf
    rst $30                                       ; $651d: $f7
    ld b, $c0                                     ; $651e: $06 $c0
    ld d, c                                       ; $6520: $51
    ret nz                                        ; $6521: $c0

    di                                            ; $6522: $f3
    ld bc, $c0ea                                  ; $6523: $01 $ea $c0
    ld e, d                                       ; $6526: $5a
    rst $38                                       ; $6527: $ff
    rst $38                                       ; $6528: $ff
    nop                                           ; $6529: $00
    add hl, sp                                    ; $652a: $39
    inc a                                         ; $652b: $3c
    rst $38                                       ; $652c: $ff
    rst $38                                       ; $652d: $ff
    ret nz                                        ; $652e: $c0

    rst $38                                       ; $652f: $ff
    db $fc                                        ; $6530: $fc
    ei                                            ; $6531: $fb
    dec bc                                        ; $6532: $0b
    rst $38                                       ; $6533: $ff
    rst $38                                       ; $6534: $ff
    rst $38                                       ; $6535: $ff
    rst $38                                       ; $6536: $ff
    rst $38                                       ; $6537: $ff
    or c                                          ; $6538: $b1
    call c, $e100                                 ; $6539: $dc $00 $e1
    rst $38                                       ; $653c: $ff
    ld d, e                                       ; $653d: $53
    rst $30                                       ; $653e: $f7
    ld bc, $94fc                                  ; $653f: $01 $fc $94
    jr z, jr_05b_6561                             ; $6542: $28 $1d

    or e                                          ; $6544: $b3
    ld e, [hl]                                    ; $6545: $5e
    rst $38                                       ; $6546: $ff
    sbc l                                         ; $6547: $9d
    ret z                                         ; $6548: $c8

    ld d, b                                       ; $6549: $50
    ld a, [hl+]                                   ; $654a: $2a
    nop                                           ; $654b: $00
    ld b, [hl]                                    ; $654c: $46
    db $fc                                        ; $654d: $fc
    ret nz                                        ; $654e: $c0

    adc c                                         ; $654f: $89
    ld d, e                                       ; $6550: $53
    ld a, [c]                                     ; $6551: $f2
    or a                                          ; $6552: $b7
    adc h                                         ; $6553: $8c
    ld bc, $53ff                                  ; $6554: $01 $ff $53
    rst $38                                       ; $6557: $ff
    db $db                                        ; $6558: $db
    xor $9c                                       ; $6559: $ee $9c
    rst $38                                       ; $655b: $ff
    nop                                           ; $655c: $00
    rst $38                                       ; $655d: $ff
    rst $38                                       ; $655e: $ff
    ld c, $ff                                     ; $655f: $0e $ff

jr_05b_6561:
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
    nop                                           ; $656d: $00
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
    db $e4                                        ; $657a: $e4
    ld a, a                                       ; $657b: $7f
    rst $38                                       ; $657c: $ff
    rst $38                                       ; $657d: $ff
    nop                                           ; $657e: $00
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
    nop                                           ; $658f: $00
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
    nop                                           ; $65a0: $00
    rst $38                                       ; $65a1: $ff
    rst $38                                       ; $65a2: $ff
    rst $38                                       ; $65a3: $ff
    rst $38                                       ; $65a4: $ff
    rst $38                                       ; $65a5: $ff
    rst $38                                       ; $65a6: $ff
    rst $38                                       ; $65a7: $ff
    rst $38                                       ; $65a8: $ff
    nop                                           ; $65a9: $00
    cp a                                          ; $65aa: $bf
    rst $38                                       ; $65ab: $ff
    rst $38                                       ; $65ac: $ff
    rst $38                                       ; $65ad: $ff
    rst $38                                       ; $65ae: $ff
    rst $38                                       ; $65af: $ff
    rst $38                                       ; $65b0: $ff
    nop                                           ; $65b1: $00
    rst $38                                       ; $65b2: $ff
    rst $38                                       ; $65b3: $ff
    rst $38                                       ; $65b4: $ff
    rst $38                                       ; $65b5: $ff
    rst $38                                       ; $65b6: $ff
    push hl                                       ; $65b7: $e5
    nop                                           ; $65b8: $00
    nop                                           ; $65b9: $00
    nop                                           ; $65ba: $00
    db $dd                                        ; $65bb: $dd
    ld c, e                                       ; $65bc: $4b
    rst $38                                       ; $65bd: $ff
    pop hl                                        ; $65be: $e1
    ld c, h                                       ; $65bf: $4c
    ld c, l                                       ; $65c0: $4d
    ld hl, $e5ff                                  ; $65c1: $21 $ff $e5
    jr @+$1b                                      ; $65c4: $18 $19

jr_05b_65c6:
    ld c, a                                       ; $65c6: $4f
    nop                                           ; $65c7: $00
    nop                                           ; $65c8: $00
    nop                                           ; $65c9: $00
    sub b                                         ; $65ca: $90
    db $fc                                        ; $65cb: $fc
    ldh [$fd], a                                  ; $65cc: $e0 $fd
    db $e3                                        ; $65ce: $e3
    sub b                                         ; $65cf: $90
    push af                                       ; $65d0: $f5
    rst $20                                       ; $65d1: $e7
    db $fc                                        ; $65d2: $fc
    rst $30                                       ; $65d3: $f7
    di                                            ; $65d4: $f3
    jp nz, Jump_000_37e4                          ; $65d5: $c2 $e4 $37

    ld b, [hl]                                    ; $65d8: $46
    ld b, a                                       ; $65d9: $47
    ld b, [hl]                                    ; $65da: $46
    ld b, [hl]                                    ; $65db: $46
    scf                                           ; $65dc: $37
    jp nc, $e5be                                  ; $65dd: $d2 $be $e5

    sub b                                         ; $65e0: $90
    ret                                           ; $65e1: $c9


    cp $c0                                        ; $65e2: $fe $c0
    add sp, $50                                   ; $65e4: $e8 $50
    jp nz, Jump_000_36e0                          ; $65e6: $c2 $e0 $36

    ld h, $3f                                     ; $65e9: $26 $3f

jr_05b_65eb:
    ld e, d                                       ; $65eb: $5a
    ld e, l                                       ; $65ec: $5d
    ld e, l                                       ; $65ed: $5d
    jr nz, jr_05b_6616                            ; $65ee: $20 $26

    ld [hl], $be                                  ; $65f0: $36 $be
    db $e3                                        ; $65f2: $e3
    ret nz                                        ; $65f3: $c0

    ld [c], a                                     ; $65f4: $e2
    call c, $ffbd                                 ; $65f5: $dc $bd $ff
    add b                                         ; $65f8: $80
    db $e3                                        ; $65f9: $e3
    ld d, b                                       ; $65fa: $50
    ld hl, $c23d                                  ; $65fb: $21 $3d $c2
    ldh [rNR41], a                                ; $65fe: $e0 $20
    jr nz, jr_05b_65c6                            ; $6600: $20 $c4

    cp a                                          ; $6602: $bf
    pop hl                                        ; $6603: $e1
    cp [hl]                                       ; $6604: $be
    ldh [$3d], a                                  ; $6605: $e0 $3d
    ret nz                                        ; $6607: $c0

    pop hl                                        ; $6608: $e1
    ld a, $e9                                     ; $6609: $3e $e9
    ld b, b                                       ; $660b: $40
    db $fc                                        ; $660c: $fc
    ld c, a                                       ; $660d: $4f
    ld hl, $21df                                  ; $660e: $21 $df $21
    add hl, hl                                    ; $6611: $29
    jr nz, jr_05b_6671                            ; $6612: $20 $5d

    ld e, l                                       ; $6614: $5d
    cp a                                          ; $6615: $bf

jr_05b_6616:
    ldh [$59], a                                  ; $6616: $e0 $59
    ld e, e                                       ; $6618: $5b
    rra                                           ; $6619: $1f
    ld e, e                                       ; $661a: $5b
    ld e, l                                       ; $661b: $5d
    ld e, h                                       ; $661c: $5c
    ld e, h                                       ; $661d: $5c
    add hl, hl                                    ; $661e: $29
    ret nz                                        ; $661f: $c0

    db $e3                                        ; $6620: $e3
    rst $38                                       ; $6621: $ff
    rst $38                                       ; $6622: $ff
    db $dd                                        ; $6623: $dd
    call nz, Call_05b_4edf                        ; $6624: $c4 $df $4e
    ld hl, $3839                                  ; $6627: $21 $39 $38
    jr nz, jr_05b_65eb                            ; $662a: $20 $bf

    ldh [$58], a                                  ; $662c: $e0 $58
    ld e, b                                       ; $662e: $58
    dec a                                         ; $662f: $3d
    ld e, l                                       ; $6630: $5d
    rst $38                                       ; $6631: $ff
    ldh [$58], a                                  ; $6632: $e0 $58
    ld e, b                                       ; $6634: $58
    jr c, jr_05b_6670                             ; $6635: $38 $39

    ret nz                                        ; $6637: $c0

    db $e3                                        ; $6638: $e3
    rst $00                                       ; $6639: $c7
    add $00                                       ; $663a: $c6 $00
    db $f4                                        ; $663c: $f4
    ret nz                                        ; $663d: $c0

    inc sp                                        ; $663e: $33
    db $e4                                        ; $663f: $e4
    or l                                          ; $6640: $b5

jr_05b_6641:
    jp nc, $e181                                  ; $6641: $d2 $81 $e1

    rst $38                                       ; $6644: $ff
    ldh [$86], a                                  ; $6645: $e0 $86
    ldh [$c0], a                                  ; $6647: $e0 $c0
    ldh [$7a], a                                  ; $6649: $e0 $7a
    pop hl                                        ; $664b: $e1
    jr nz, jr_05b_66cd                            ; $664c: $20 $7f

    ldh [$c0], a                                  ; $664e: $e0 $c0
    xor $b0                                       ; $6650: $ee $b0
    jp $f3c0                                      ; $6652: $c3 $c0 $f3


    add c                                         ; $6655: $81
    pop hl                                        ; $6656: $e1
    ld e, h                                       ; $6657: $5c
    db $fd                                        ; $6658: $fd
    ldh [$c0], a                                  ; $6659: $e0 $c0
    ldh [rP1], a                                  ; $665b: $e0 $00
    ld a, [$7fc2]                                 ; $665d: $fa $c2 $7f
    ldh [rSTAT], a                                ; $6660: $e0 $41
    jp nz, $c146                                  ; $6662: $c2 $46 $c1

    db $fc                                        ; $6665: $fc
    db $e3                                        ; $6666: $e3
    ret nz                                        ; $6667: $c0

    push hl                                       ; $6668: $e5
    ld b, b                                       ; $6669: $40
    di                                            ; $666a: $f3
    ld b, c                                       ; $666b: $41
    ldh [$bb], a                                  ; $666c: $e0 $bb
    ld e, l                                       ; $666e: $5d
    ld e, h                                       ; $666f: $5c

jr_05b_6670:
    push bc                                       ; $6670: $c5

jr_05b_6671:
    ret nz                                        ; $6671: $c0

    ld e, e                                       ; $6672: $5b
    ld e, e                                       ; $6673: $5b
    ld e, c                                       ; $6674: $59
    cp e                                          ; $6675: $bb
    jp nz, Jump_000_2338                          ; $6676: $c2 $38 $23

    add hl, sp                                    ; $6679: $39
    ld c, [hl]                                    ; $667a: $4e
    dec c                                         ; $667b: $0d
    jp z, $e2b8                                   ; $667c: $ca $b8 $e2

    ret nz                                        ; $667f: $c0

    reti                                          ; $6680: $d9


    add hl, hl                                    ; $6681: $29
    inc bc                                        ; $6682: $03
    ldh [rSCX], a                                 ; $6683: $e0 $43
    ret nz                                        ; $6685: $c0

    inc e                                         ; $6686: $1c
    ret nz                                        ; $6687: $c0

    pop hl                                        ; $6688: $e1
    dec sp                                        ; $6689: $3b
    pop bc                                        ; $668a: $c1
    add hl, hl                                    ; $668b: $29
    ld hl, $c84f                                  ; $668c: $21 $4f $c8
    cp a                                          ; $668f: $bf
    ret nz                                        ; $6690: $c0

    xor b                                         ; $6691: $a8
    ld a, a                                       ; $6692: $7f
    ldh [rNR42], a                                ; $6693: $e0 $21
    ld e, c                                       ; $6695: $59
    add h                                         ; $6696: $84
    pop bc                                        ; $6697: $c1
    cp h                                          ; $6698: $bc
    pop bc                                        ; $6699: $c1
    db $fc                                        ; $669a: $fc
    and b                                         ; $669b: $a0
    add c                                         ; $669c: $81
    ldh [rWX], a                                  ; $669d: $e0 $4b
    ret nz                                        ; $669f: $c0

    ld [$bc7e], a                                 ; $66a0: $ea $7e $bc
    ld hl, $7f4b                                  ; $66a3: $21 $4b $7f
    ldh [$c0], a                                  ; $66a6: $e0 $c0
    db $e3                                        ; $66a8: $e3
    add hl, sp                                    ; $66a9: $39
    db $e3                                        ; $66aa: $e3
    add c                                         ; $66ab: $81
    ldh [rWY], a                                  ; $66ac: $e0 $4a
    ld bc, $c0e9                                  ; $66ae: $01 $e9 $c0
    cp $c3                                        ; $66b1: $fe $c3
    ld c, e                                       ; $66b3: $4b
    ld d, b                                       ; $66b4: $50
    ret nz                                        ; $66b5: $c0

    and b                                         ; $66b6: $a0
    ret nz                                        ; $66b7: $c0

    ld [c], a                                     ; $66b8: $e2
    cp c                                          ; $66b9: $b9
    ret nz                                        ; $66ba: $c0

    ret nz                                        ; $66bb: $c0

    and b                                         ; $66bc: $a0
    ld d, b                                       ; $66bd: $50
    ld c, e                                       ; $66be: $4b
    jr jr_05b_6641                                ; $66bf: $18 $80

    pop hl                                        ; $66c1: $e1

Call_05b_66c2:
    rst $38                                       ; $66c2: $ff
    rst $38                                       ; $66c3: $ff
    db $dd                                        ; $66c4: $dd
    add h                                         ; $66c5: $84
    ld c, d                                       ; $66c6: $4a
    ld c, d                                       ; $66c7: $4a
    ccf                                           ; $66c8: $3f
    and b                                         ; $66c9: $a0
    ld b, b                                       ; $66ca: $40
    and b                                         ; $66cb: $a0
    ret nz                                        ; $66cc: $c0

jr_05b_66cd:
    pop hl                                        ; $66cd: $e1
    ret nz                                        ; $66ce: $c0

    ld b, b                                       ; $66cf: $40
    and c                                         ; $66d0: $a1
    pop bc                                        ; $66d1: $c1
    ldh [$c0], a                                  ; $66d2: $e0 $c0
    db $eb                                        ; $66d4: $eb
    ld [hl], a                                    ; $66d5: $77
    rst $20                                       ; $66d6: $e7
    ret nz                                        ; $66d7: $c0

    sub l                                         ; $66d8: $95
    add c                                         ; $66d9: $81
    add c                                         ; $66da: $81
    scf                                           ; $66db: $37
    ld b, [hl]                                    ; $66dc: $46
    ld e, $bf                                     ; $66dd: $1e $bf
    add b                                         ; $66df: $80
    scf                                           ; $66e0: $37
    ld hl, $4c4d                                  ; $66e1: $21 $4d $4c
    ld [hl], b                                    ; $66e4: $70
    add b                                         ; $66e5: $80
    ld b, b                                       ; $66e6: $40
    ld [c], a                                     ; $66e7: $e2
    ret nz                                        ; $66e8: $c0

    rst $28                                       ; $66e9: $ef
    ld [bc], a                                    ; $66ea: $02
    add b                                         ; $66eb: $80
    sub [hl]                                      ; $66ec: $96
    ld c, d                                       ; $66ed: $4a
    ccf                                           ; $66ee: $3f
    add l                                         ; $66ef: $85
    jp nz, $f3e1                                  ; $66f0: $c2 $e1 $f3

    ldh [$80], a                                  ; $66f3: $e0 $80
    rst $28                                       ; $66f5: $ef
    inc a                                         ; $66f6: $3c
    sbc c                                         ; $66f7: $99
    rra                                           ; $66f8: $1f
    sbc l                                         ; $66f9: $9d
    nop                                           ; $66fa: $00
    inc [hl]                                      ; $66fb: $34
    sbc h                                         ; $66fc: $9c
    ld e, b                                       ; $66fd: $58
    rst $00                                       ; $66fe: $c7
    adc [hl]                                      ; $66ff: $8e
    or $c0                                        ; $6700: $f6 $c0
    ei                                            ; $6702: $fb
    sbc [hl]                                      ; $6703: $9e
    ld h, l                                       ; $6704: $65
    call z, Call_05b_7c78                         ; $6705: $cc $78 $7c
    ld a, c                                       ; $6708: $79
    and d                                         ; $6709: $a2
    add a                                         ; $670a: $87
    nop                                           ; $670b: $00
    call z, Call_000_006f                         ; $670c: $cc $6f $00
    push bc                                       ; $670f: $c5
    ld a, $ff                                     ; $6710: $3e $ff
    ld e, b                                       ; $6712: $58
    db $fc                                        ; $6713: $fc
    inc sp                                        ; $6714: $33
    cp a                                          ; $6715: $bf
    set 1, [hl]                                   ; $6716: $cb $ce
    ldh a, [$f0]                                  ; $6718: $f0 $f0
    or l                                          ; $671a: $b5
    ld d, l                                       ; $671b: $55
    nop                                           ; $671c: $00
    push de                                       ; $671d: $d5
    ld l, b                                       ; $671e: $68
    or b                                          ; $671f: $b0
    ld a, [$ffc0]                                 ; $6720: $fa $c0 $ff
    cp [hl]                                       ; $6723: $be
    jp c, $f821                                   ; $6724: $da $21 $f8

    dec e                                         ; $6727: $1d
    add l                                         ; $6728: $85
    call z, $8167                                 ; $6729: $cc $67 $81
    rst $38                                       ; $672c: $ff
    nop                                           ; $672d: $00
    ld bc, $7cff                                  ; $672e: $01 $ff $7c
    cp a                                          ; $6731: $bf
    ld b, c                                       ; $6732: $41
    or $0b                                        ; $6733: $f6 $0b
    xor l                                         ; $6735: $ad
    nop                                           ; $6736: $00
    ld sp, hl                                     ; $6737: $f9
    ld bc, $c0ff                                  ; $6738: $01 $ff $c0
    rst $18                                       ; $673b: $df
    push de                                       ; $673c: $d5
    ld h, a                                       ; $673d: $67
    nop                                           ; $673e: $00
    ld d, [hl]                                    ; $673f: $56
    ld d, e                                       ; $6740: $53
    ld sp, $d07f                                  ; $6741: $31 $7f $d0
    cp a                                          ; $6744: $bf
    rst $38                                       ; $6745: $ff
    rst $38                                       ; $6746: $ff
    inc c                                         ; $6747: $0c
    sbc a                                         ; $6748: $9f
    rst $38                                       ; $6749: $ff
    rst $38                                       ; $674a: $ff
    rst $38                                       ; $674b: $ff
    rst $38                                       ; $674c: $ff
    rst $38                                       ; $674d: $ff
    rst $38                                       ; $674e: $ff
    nop                                           ; $674f: $00
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
    ld b, d                                       ; $675c: $42
    rst $18                                       ; $675d: $df
    sub [hl]                                      ; $675e: $96
    rst $18                                       ; $675f: $df
    nop                                           ; $6760: $00
    and b                                         ; $6761: $a0
    rst $38                                       ; $6762: $ff
    db $dd                                        ; $6763: $dd
    sbc a                                         ; $6764: $9f
    rst $38                                       ; $6765: $ff
    rst $38                                       ; $6766: $ff
    ld [hl], d                                    ; $6767: $72
    pop af                                        ; $6768: $f1
    ld h, l                                       ; $6769: $65
    rst $38                                       ; $676a: $ff
    and e                                         ; $676b: $a3
    sbc a                                         ; $676c: $9f
    ld bc, $9cff                                  ; $676d: $01 $ff $9c
    rst $38                                       ; $6770: $ff
    nop                                           ; $6771: $00
    ld bc, $bbff                                  ; $6772: $01 $ff $bb
    rst $38                                       ; $6775: $ff
    rst $38                                       ; $6776: $ff
    rst $38                                       ; $6777: $ff
    ld [hl], d                                    ; $6778: $72
    rst $38                                       ; $6779: $ff
    rst $38                                       ; $677a: $ff
    rst $38                                       ; $677b: $ff
    rst $38                                       ; $677c: $ff
    rst $38                                       ; $677d: $ff
    rst $38                                       ; $677e: $ff
    rst $38                                       ; $677f: $ff
    rst $38                                       ; $6780: $ff

Jump_05b_6781:
    rst $38                                       ; $6781: $ff
    nop                                           ; $6782: $00
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
    nop                                           ; $6793: $00
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
    nop                                           ; $67a4: $00
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
    nop                                           ; $67b5: $00
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
    jr nc, @+$01                                  ; $67c6: $30 $ff

    rst $38                                       ; $67c8: $ff
    rst $38                                       ; $67c9: $ff
    rst $38                                       ; $67ca: $ff
    rst $38                                       ; $67cb: $ff
    rst $38                                       ; $67cc: $ff
    rst $38                                       ; $67cd: $ff
    rst $38                                       ; $67ce: $ff
    nop                                           ; $67cf: $00
    nop                                           ; $67d0: $00
    nop                                           ; $67d1: $00
    nop                                           ; $67d2: $00
    nop                                           ; $67d3: $00
    call $ff00                                    ; $67d4: $cd $00 $ff
    jp hl                                         ; $67d7: $e9


    scf                                           ; $67d8: $37
    ld [hl-], a                                   ; $67d9: $32
    pop af                                        ; $67da: $f1
    ld [$ffff], a                                 ; $67db: $ea $ff $ff
    inc sp                                        ; $67de: $33
    ld sp, $dcfe                                  ; $67df: $31 $fe $dc
    ld a, [c]                                     ; $67e2: $f2
    ld [hl], $30                                  ; $67e3: $36 $30
    scf                                           ; $67e5: $37
    ld h, $20                                     ; $67e6: $26 $20
    daa                                           ; $67e8: $27
    db $10                                        ; $67e9: $10
    ei                                            ; $67ea: $fb
    ld d, $17                                     ; $67eb: $16 $17
    cp [hl]                                       ; $67ed: $be
    or $34                                        ; $67ee: $f6 $34
    ld [hl], $32                                  ; $67f0: $36 $32
    jr nc, jr_05b_682b                            ; $67f2: $30 $37

    rrca                                          ; $67f4: $0f
    ld sp, $3133                                  ; $67f5: $31 $33 $31
    inc sp                                        ; $67f8: $33
    sbc h                                         ; $67f9: $9c
    rst $38                                       ; $67fa: $ff
    rst $38                                       ; $67fb: $ff
    ei                                            ; $67fc: $fb
    nop                                           ; $67fd: $00
    nop                                           ; $67fe: $00
    nop                                           ; $67ff: $00
    ld [$3868], sp                                ; $6800: $08 $68 $38
    ld l, b                                       ; $6803: $68
    ld b, l                                       ; $6804: $45
    ld l, d                                       ; $6805: $6a
    ld l, $6c                                     ; $6806: $2e $6c
    ret nz                                        ; $6808: $c0

    rra                                           ; $6809: $1f
    adc d                                         ; $680a: $8a
    inc bc                                        ; $680b: $03
    add b                                         ; $680c: $80
    ld [bc], a                                    ; $680d: $02
    ld h, b                                       ; $680e: $60
    ld bc, $03ef                                  ; $680f: $01 $ef $03
    db $f4                                        ; $6812: $f4
    inc bc                                        ; $6813: $03
    adc d                                         ; $6814: $8a
    inc bc                                        ; $6815: $03
    add b                                         ; $6816: $80
    ld [bc], a                                    ; $6817: $02
    rra                                           ; $6818: $1f
    ld [bc], a                                    ; $6819: $02
    ld c, e                                       ; $681a: $4b
    ld c, $38                                     ; $681b: $0e $38
    ld bc, $038a                                  ; $681d: $01 $8a $03
    ld [$0825], sp                                ; $6820: $08 $25 $08
    dec h                                         ; $6823: $25
    ld [$0825], sp                                ; $6824: $08 $25 $08
    dec h                                         ; $6827: $25
    ld [$0825], sp                                ; $6828: $08 $25 $08

jr_05b_682b:
    dec h                                         ; $682b: $25
    ld [$0825], sp                                ; $682c: $08 $25 $08
    dec h                                         ; $682f: $25
    ld [$0825], sp                                ; $6830: $08 $25 $08
    dec h                                         ; $6833: $25
    ld [$0825], sp                                ; $6834: $08 $25 $08
    dec h                                         ; $6837: $25
    cp l                                          ; $6838: $bd
    ld a, [bc]                                    ; $6839: $0a
    rst $38                                       ; $683a: $ff
    add sp, $4a                                   ; $683b: $e8 $4a
    dec bc                                        ; $683d: $0b
    ld c, e                                       ; $683e: $4b
    dec bc                                        ; $683f: $0b
    rst $38                                       ; $6840: $ff
    pop hl                                        ; $6841: $e1
    inc c                                         ; $6842: $0c
    cp $ff                                        ; $6843: $fe $ff
    db $e3                                        ; $6845: $e3
    ld c, h                                       ; $6846: $4c
    ld c, h                                       ; $6847: $4c
    inc c                                         ; $6848: $0c
    ld c, h                                       ; $6849: $4c
    inc c                                         ; $684a: $0c
    inc c                                         ; $684b: $0c
    inc l                                         ; $684c: $2c
    ld [$e4f2], sp                                ; $684d: $08 $f2 $e4
    ld sp, hl                                     ; $6850: $f9
    db $f4                                        ; $6851: $f4
    ret nz                                        ; $6852: $c0

    jp hl                                         ; $6853: $e9


    ld l, d                                       ; $6854: $6a
    cp a                                          ; $6855: $bf
    db $e4                                        ; $6856: $e4
    jp $ffe7                                      ; $6857: $c3 $e7 $ff


    rst $38                                       ; $685a: $ff
    ret nz                                        ; $685b: $c0

    ld [$bf00], a                                 ; $685c: $ea $00 $bf
    pop hl                                        ; $685f: $e1
    rst $38                                       ; $6860: $ff
    ldh [$84], a                                  ; $6861: $e0 $84
    pop hl                                        ; $6863: $e1
    add c                                         ; $6864: $81
    ld [c], a                                     ; $6865: $e2
    ld [hl], a                                    ; $6866: $77
    pop hl                                        ; $6867: $e1
    add b                                         ; $6868: $80
    rst $38                                       ; $6869: $ff
    ret nz                                        ; $686a: $c0

    add sp, $7e                                   ; $686b: $e8 $7e
    ldh [$0a], a                                  ; $686d: $e0 $0a
    add b                                         ; $686f: $80
    jp hl                                         ; $6870: $e9


    inc l                                         ; $6871: $2c
    jp Jump_000_2ce0                              ; $6872: $c3 $e0 $2c


    ld a, [$b7e2]                                 ; $6875: $fa $e2 $b7
    pop hl                                        ; $6878: $e1
    or [hl]                                       ; $6879: $b6
    ld a, [c]                                     ; $687a: $f2
    rrca                                          ; $687b: $0f
    ld [c], a                                     ; $687c: $e2
    ld e, $0a                                     ; $687d: $1e $0a
    pop hl                                        ; $687f: $e1
    dec hl                                        ; $6880: $2b
    dec bc                                        ; $6881: $0b
    dec hl                                        ; $6882: $2b
    ld c, d                                       ; $6883: $4a
    cp a                                          ; $6884: $bf
    ldh [$f0], a                                  ; $6885: $e0 $f0
    pop bc                                        ; $6887: $c1
    inc bc                                        ; $6888: $03
    push hl                                       ; $6889: $e5
    pop bc                                        ; $688a: $c1
    inc l                                         ; $688b: $2c
    ret nz                                        ; $688c: $c0

    ld [c], a                                     ; $688d: $e2
    ld a, [$c0e2]                                 ; $688e: $fa $e2 $c0
    ldh a, [$67]                                  ; $6891: $f0 $67
    db $e3                                        ; $6893: $e3
    rst $00                                       ; $6894: $c7
    ldh [rOCPD], a                                ; $6895: $e0 $6b
    ld l, e                                       ; $6897: $6b
    nop                                           ; $6898: $00
    jp z, Jump_05b_47c1                           ; $6899: $ca $c1 $47

    ldh [$bf], a                                  ; $689c: $e0 $bf
    pop hl                                        ; $689e: $e1
    ret nz                                        ; $689f: $c0

    db $e4                                        ; $68a0: $e4
    ld b, b                                       ; $68a1: $40
    ld [c], a                                     ; $68a2: $e2
    add a                                         ; $68a3: $87
    ld [c], a                                     ; $68a4: $e2
    pop bc                                        ; $68a5: $c1
    push hl                                       ; $68a6: $e5
    scf                                           ; $68a7: $37
    db $f4                                        ; $68a8: $f4
    ld e, a                                       ; $68a9: $5f
    dec bc                                        ; $68aa: $0b
    ld l, e                                       ; $68ab: $6b
    dec bc                                        ; $68ac: $0b
    dec hl                                        ; $68ad: $2b
    dec hl                                        ; $68ae: $2b
    ld a, e                                       ; $68af: $7b
    db $e4                                        ; $68b0: $e4
    ld l, e                                       ; $68b1: $6b
    ld a, [hl]                                    ; $68b2: $7e
    ldh [$a8], a                                  ; $68b3: $e0 $a8
    add b                                         ; $68b5: $80
    jp hl                                         ; $68b6: $e9


    ld c, d                                       ; $68b7: $4a
    db $e3                                        ; $68b8: $e3
    ret nz                                        ; $68b9: $c0

    db $fd                                        ; $68ba: $fd
    dec hl                                        ; $68bb: $2b
    ret nz                                        ; $68bc: $c0

    push hl                                       ; $68bd: $e5
    ld l, e                                       ; $68be: $6b
    jp Jump_05b_4ac0                              ; $68bf: $c3 $c0 $4a


    jr z, @-$7e                                   ; $68c2: $28 $80

    add sp, $7f                                   ; $68c4: $e8 $7f
    rst $18                                       ; $68c6: $df
    rla                                           ; $68c7: $17
    ret nz                                        ; $68c8: $c0

    ld l, e                                       ; $68c9: $6b
    ret nz                                        ; $68ca: $c0

    rst $20                                       ; $68cb: $e7
    ld c, e                                       ; $68cc: $4b
    ld a, b                                       ; $68cd: $78
    ldh [$fc], a                                  ; $68ce: $e0 $fc
    pop hl                                        ; $68d0: $e1
    ld b, b                                       ; $68d1: $40
    ld b, b                                       ; $68d2: $40
    add $c0                                       ; $68d3: $c6 $c0
    pop hl                                        ; $68d5: $e1
    add b                                         ; $68d6: $80
    db $fd                                        ; $68d7: $fd
    add d                                         ; $68d8: $82
    ldh [$c0], a                                  ; $68d9: $e0 $c0
    and $ff                                       ; $68db: $e6 $ff
    db $e3                                        ; $68dd: $e3
    dec hl                                        ; $68de: $2b
    ret nz                                        ; $68df: $c0

    rst $38                                       ; $68e0: $ff
    nop                                           ; $68e1: $00
    ret nz                                        ; $68e2: $c0

    di                                            ; $68e3: $f3
    cp a                                          ; $68e4: $bf
    push hl                                       ; $68e5: $e5
    nop                                           ; $68e6: $00
    set 7, l                                      ; $68e7: $cb $fd
    db $fc                                        ; $68e9: $fc
    ret nz                                        ; $68ea: $c0

    db $f4                                        ; $68eb: $f4
    add b                                         ; $68ec: $80
    cp a                                          ; $68ed: $bf
    add b                                         ; $68ee: $80
    pop af                                        ; $68ef: $f1
    dec a                                         ; $68f0: $3d
    db $e3                                        ; $68f1: $e3
    ld bc, $032b                                  ; $68f2: $01 $2b $03
    and h                                         ; $68f5: $a4
    cp a                                          ; $68f6: $bf
    ld sp, hl                                     ; $68f7: $f9
    or e                                          ; $68f8: $b3
    and [hl]                                      ; $68f9: $a6
    ld b, d                                       ; $68fa: $42
    ret nz                                        ; $68fb: $c0

    cp a                                          ; $68fc: $bf
    rst $00                                       ; $68fd: $c7
    db $fd                                        ; $68fe: $fd
    jp $81c0                                      ; $68ff: $c3 $c0 $81


    nop                                           ; $6902: $00
    ld b, b                                       ; $6903: $40
    and d                                         ; $6904: $a2
    ld a, a                                       ; $6905: $7f
    rst $30                                       ; $6906: $f7
    db $eb                                        ; $6907: $eb
    and [hl]                                      ; $6908: $a6
    ret nz                                        ; $6909: $c0

    db $e3                                        ; $690a: $e3
    inc bc                                        ; $690b: $03
    jp nz, $e502                                  ; $690c: $c2 $02 $e5

    ret nz                                        ; $690f: $c0

    add [hl]                                      ; $6910: $86
    ccf                                           ; $6911: $3f
    ld hl, sp+$00                                 ; $6912: $f8 $00
    inc [hl]                                      ; $6914: $34
    and a                                         ; $6915: $a7
    ld b, a                                       ; $6916: $47
    and b                                         ; $6917: $a0
    pop bc                                        ; $6918: $c1
    and l                                         ; $6919: $a5
    or a                                          ; $691a: $b7
    and [hl]                                      ; $691b: $a6
    dec b                                         ; $691c: $05
    pop bc                                        ; $691d: $c1
    rst $38                                       ; $691e: $ff
    ld [c], a                                     ; $691f: $e2
    ret nz                                        ; $6920: $c0

    rst $38                                       ; $6921: $ff
    ld e, b                                       ; $6922: $58
    jp $9500                                      ; $6923: $c3 $00 $95


    add d                                         ; $6926: $82
    ld de, $fb83                                  ; $6927: $11 $83 $fb
    and $88                                       ; $692a: $e6 $88
    sbc h                                         ; $692c: $9c
    ld l, d                                       ; $692d: $6a
    adc e                                         ; $692e: $8b
    call nz, $c1e5                                ; $692f: $c4 $e5 $c1
    rst $20                                       ; $6932: $e7
    ld c, d                                       ; $6933: $4a
    sbc e                                         ; $6934: $9b
    nop                                           ; $6935: $00
    ld [hl], h                                    ; $6936: $74
    adc d                                         ; $6937: $8a
    ld d, l                                       ; $6938: $55
    call nz, $f780                                ; $6939: $c4 $80 $f7
    db $fd                                        ; $693c: $fd
    ld l, a                                       ; $693d: $6f
    inc [hl]                                      ; $693e: $34
    adc c                                         ; $693f: $89
    push de                                       ; $6940: $d5
    ld h, l                                       ; $6941: $65
    ld b, b                                       ; $6942: $40
    xor $0f                                       ; $6943: $ee $0f
    sub e                                         ; $6945: $93
    nop                                           ; $6946: $00
    ld b, e                                       ; $6947: $43
    ld hl, sp-$51                                 ; $6948: $f8 $af
    rst $20                                       ; $694a: $e7
    inc bc                                        ; $694b: $03
    ld h, b                                       ; $694c: $60
    add a                                         ; $694d: $87
    add a                                         ; $694e: $87
    ld a, l                                       ; $694f: $7d
    ld a, l                                       ; $6950: $7d
    push de                                       ; $6951: $d5
    ld h, d                                       ; $6952: $62
    halt                                          ; $6953: $76
    db $e3                                        ; $6954: $e3
    cp $e3                                        ; $6955: $fe $e3
    nop                                           ; $6957: $00
    ld b, b                                       ; $6958: $40
    ld h, d                                       ; $6959: $62
    dec e                                         ; $695a: $1d
    rst $00                                       ; $695b: $c7
    ld a, l                                       ; $695c: $7d
    ld h, a                                       ; $695d: $67
    xor h                                         ; $695e: $ac
    or d                                          ; $695f: $b2
    push de                                       ; $6960: $d5
    ld h, e                                       ; $6961: $63
    add b                                         ; $6962: $80
    pop af                                        ; $6963: $f1
    jp nc, $faa8                                  ; $6964: $d2 $a8 $fa

    ld b, h                                       ; $6967: $44
    ld b, b                                       ; $6968: $40
    xor h                                         ; $6969: $ac
    or d                                          ; $696a: $b2
    dec d                                         ; $696b: $15
    xor l                                         ; $696c: $ad
    ld a, a                                       ; $696d: $7f
    db $e4                                        ; $696e: $e4
    sub d                                         ; $696f: $92
    or b                                          ; $6970: $b0
    add b                                         ; $6971: $80
    or $90                                        ; $6972: $f6 $90
    ld b, d                                       ; $6974: $42
    ld [$e9ff], sp                                ; $6975: $08 $ff $e9
    nop                                           ; $6978: $00
    ld bc, $81e9                                  ; $6979: $01 $e9 $81
    jp hl                                         ; $697c: $e9


    add b                                         ; $697d: $80
    db $f4                                        ; $697e: $f4
    sub h                                         ; $697f: $94
    adc [hl]                                      ; $6980: $8e
    pop bc                                        ; $6981: $c1
    ret z                                         ; $6982: $c8

    rst $10                                       ; $6983: $d7
    xor h                                         ; $6984: $ac
    ret nz                                        ; $6985: $c0

    rst $38                                       ; $6986: $ff
    or l                                          ; $6987: $b5
    or $00                                        ; $6988: $f6 $00
    db $ed                                        ; $698a: $ed
    ld [hl], d                                    ; $698b: $72
    push de                                       ; $698c: $d5
    ld a, [hl]                                    ; $698d: $7e
    ld [hl], l                                    ; $698e: $75
    db $f4                                        ; $698f: $f4
    ret nz                                        ; $6990: $c0

    sub $ff                                       ; $6991: $d6 $ff
    rst $38                                       ; $6993: $ff
    inc l                                         ; $6994: $2c
    rst $28                                       ; $6995: $ef
    cp a                                          ; $6996: $bf
    rst $38                                       ; $6997: $ff
    sub $f6                                       ; $6998: $d6 $f6
    nop                                           ; $699a: $00
    push de                                       ; $699b: $d5
    ld a, h                                       ; $699c: $7c
    sub a                                         ; $699d: $97
    adc l                                         ; $699e: $8d
    cp a                                          ; $699f: $bf
    or b                                          ; $69a0: $b0
    add b                                         ; $69a1: $80
    rst $38                                       ; $69a2: $ff
    sub $f7                                       ; $69a3: $d6 $f7
    push de                                       ; $69a5: $d5
    ld a, [hl]                                    ; $69a6: $7e
    add d                                         ; $69a7: $82
    db $ec                                        ; $69a8: $ec
    sub $ee                                       ; $69a9: $d6 $ee
    nop                                           ; $69ab: $00
    jp nc, $c083                                  ; $69ac: $d2 $83 $c0

    rst $38                                       ; $69af: $ff
    rst $38                                       ; $69b0: $ff
    or h                                          ; $69b1: $b4
    add c                                         ; $69b2: $81
    ld h, [hl]                                    ; $69b3: $66
    rst $38                                       ; $69b4: $ff
    rst $38                                       ; $69b5: $ff
    xor l                                         ; $69b6: $ad
    ld d, d                                       ; $69b7: $52
    dec de                                        ; $69b8: $1b
    sbc a                                         ; $69b9: $9f
    rst $38                                       ; $69ba: $ff
    rst $38                                       ; $69bb: $ff
    nop                                           ; $69bc: $00
    ld e, [hl]                                    ; $69bd: $5e
    ld a, [hl]                                    ; $69be: $7e
    nop                                           ; $69bf: $00
    sbc a                                         ; $69c0: $9f
    sbc b                                         ; $69c1: $98
    cp a                                          ; $69c2: $bf
    sub e                                         ; $69c3: $93
    push bc                                       ; $69c4: $c5
    db $e4                                        ; $69c5: $e4
    adc [hl]                                      ; $69c6: $8e
    rst $08                                       ; $69c7: $cf
    ld d, h                                       ; $69c8: $54
    ld a, a                                       ; $69c9: $7f
    cpl                                           ; $69ca: $2f
    rla                                           ; $69cb: $17
    or l                                          ; $69cc: $b5
    nop                                           ; $69cd: $00
    sub l                                         ; $69ce: $95
    rrca                                          ; $69cf: $0f
    xor d                                         ; $69d0: $aa
    or h                                          ; $69d1: $b4
    rla                                           ; $69d2: $17
    or h                                          ; $69d3: $b4
    ret nz                                        ; $69d4: $c0

    ld a, [c]                                     ; $69d5: $f2
    call nc, Call_05b_40b2                        ; $69d6: $d4 $b2 $40
    ld [hl], a                                    ; $69d9: $77
    push de                                       ; $69da: $d5
    or e                                          ; $69db: $b3
    ld b, b                                       ; $69dc: $40
    ldh a, [rP1]                                  ; $69dd: $f0 $00
    ld b, b                                       ; $69df: $40
    ld a, a                                       ; $69e0: $7f
    call nc, Call_05b_6cb8                        ; $69e1: $d4 $b8 $6c
    inc de                                        ; $69e4: $13
    xor d                                         ; $69e5: $aa
    sub e                                         ; $69e6: $93
    ld d, [hl]                                    ; $69e7: $56
    or b                                          ; $69e8: $b0
    db $ec                                        ; $69e9: $ec
    inc de                                        ; $69ea: $13
    add b                                         ; $69eb: $80
    sbc a                                         ; $69ec: $9f
    ld b, b                                       ; $69ed: $40
    ld a, a                                       ; $69ee: $7f
    nop                                           ; $69ef: $00
    add b                                         ; $69f0: $80
    sbc a                                         ; $69f1: $9f
    jp nz, Jump_05b_5555                          ; $69f2: $c2 $55 $55

    inc e                                         ; $69f5: $1c
    xor b                                         ; $69f6: $a8
    db $e3                                        ; $69f7: $e3
    ldh [rNR41], a                                ; $69f8: $e0 $20
    inc a                                         ; $69fa: $3c
    halt                                          ; $69fb: $76
    add b                                         ; $69fc: $80
    sbc e                                         ; $69fd: $9b
    ld l, b                                       ; $69fe: $68
    cp $00                                        ; $69ff: $fe $00
    add b                                         ; $6a01: $80
    sbc h                                         ; $6a02: $9c

jr_05b_6a03:
    jr z, jr_05b_6a03                             ; $6a03: $28 $fe

    ret c                                         ; $6a05: $d8

    sbc a                                         ; $6a06: $9f
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
    nop                                           ; $6a11: $00
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
    nop                                           ; $6a22: $00
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
    nop                                           ; $6a33: $00
    rst $38                                       ; $6a34: $ff
    sub e                                         ; $6a35: $93
    db $dd                                        ; $6a36: $dd
    rst $38                                       ; $6a37: $ff
    rst $38                                       ; $6a38: $ff
    rst $38                                       ; $6a39: $ff
    rst $38                                       ; $6a3a: $ff
    rst $38                                       ; $6a3b: $ff
    rst $38                                       ; $6a3c: $ff
    rst $38                                       ; $6a3d: $ff
    rst $38                                       ; $6a3e: $ff
    rst $38                                       ; $6a3f: $ff
    nop                                           ; $6a40: $00
    sub c                                         ; $6a41: $91
    nop                                           ; $6a42: $00
    nop                                           ; $6a43: $00
    nop                                           ; $6a44: $00
    cp l                                          ; $6a45: $bd
    adc b                                         ; $6a46: $88
    rst $38                                       ; $6a47: $ff
    add sp, -$74                                  ; $6a48: $e8 $8c
    ld e, e                                       ; $6a4a: $5b
    ld h, b                                       ; $6a4b: $60
    ld sp, $e1ff                                  ; $6a4c: $31 $ff $e1
    nop                                           ; $6a4f: $00
    ld [$ffff], sp                                ; $6a50: $08 $ff $ff
    rst $20                                       ; $6a53: $e7
    and $c0                                       ; $6a54: $e6 $c0
    jp hl                                         ; $6a56: $e9


    ld c, [hl]                                    ; $6a57: $4e
    cp a                                          ; $6a58: $bf
    db $e4                                        ; $6a59: $e4
    jp z, $c0ff                                   ; $6a5a: $ca $ff $c0

    db $f4                                        ; $6a5d: $f4
    cp a                                          ; $6a5e: $bf
    pop hl                                        ; $6a5f: $e1
    rlca                                          ; $6a60: $07
    ld h, d                                       ; $6a61: $62
    ld h, d                                       ; $6a62: $62
    ld h, d                                       ; $6a63: $62
    jp z, $c0ff                                   ; $6a64: $ca $ff $c0

    push af                                       ; $6a67: $f5
    ld a, [hl]                                    ; $6a68: $7e
    ldh [rIE], a                                  ; $6a69: $e0 $ff
    ldh [$ca], a                                  ; $6a6b: $e0 $ca
    rst $38                                       ; $6a6d: $ff
    db $fc                                        ; $6a6e: $fc
    add sp, -$19                                  ; $6a6f: $e8 $e7
    sub c                                         ; $6a71: $91
    ldh [$62], a                                  ; $6a72: $e0 $62
    inc [hl]                                      ; $6a74: $34
    ld d, [hl]                                    ; $6a75: $56
    ld d, a                                       ; $6a76: $57
    ld d, [hl]                                    ; $6a77: $56
    ld d, [hl]                                    ; $6a78: $56
    rrca                                          ; $6a79: $0f
    inc [hl]                                      ; $6a7a: $34
    ld sp, $8c60                                  ; $6a7b: $31 $60 $8c
    cp a                                          ; $6a7e: $bf
    ldh [$f0], a                                  ; $6a7f: $e0 $f0
    pop bc                                        ; $6a81: $c1
    jp z, $e8ff                                   ; $6a82: $ca $ff $e8

    rst $20                                       ; $6a85: $e7
    rst $38                                       ; $6a86: $ff
    ld sp, $3e31                                  ; $6a87: $31 $31 $3e
    ld a, [hl-]                                   ; $6a8a: $3a
    ld b, h                                       ; $6a8b: $44
    ld l, h                                       ; $6a8c: $6c
    ld l, h                                       ; $6a8d: $6c
    ld l, h                                       ; $6a8e: $6c
    adc a                                         ; $6a8f: $8f
    ld l, l                                       ; $6a90: $6d
    ld b, h                                       ; $6a91: $44
    ld a, [hl-]                                   ; $6a92: $3a
    sub a                                         ; $6a93: $97
    cp a                                          ; $6a94: $bf
    pop hl                                        ; $6a95: $e1
    ret nz                                        ; $6a96: $c0

    rst $38                                       ; $6a97: $ff
    ret nz                                        ; $6a98: $c0

    db $ec                                        ; $6a99: $ec
    ld c, c                                       ; $6a9a: $49
    rst $38                                       ; $6a9b: $ff
    ld c, h                                       ; $6a9c: $4c
    ld l, l                                       ; $6a9d: $6d
    ld l, l                                       ; $6a9e: $6d
    ld l, h                                       ; $6a9f: $6c
    ld l, b                                       ; $6aa0: $68
    ld l, h                                       ; $6aa1: $6c
    ld l, l                                       ; $6aa2: $6d
    ld l, l                                       ; $6aa3: $6d
    ld b, a                                       ; $6aa4: $47
    ld l, l                                       ; $6aa5: $6d
    sub c                                         ; $6aa6: $91
    sub l                                         ; $6aa7: $95
    ld a, [hl]                                    ; $6aa8: $7e
    ldh [$c0], a                                  ; $6aa9: $e0 $c0
    rst $38                                       ; $6aab: $ff
    add b                                         ; $6aac: $80
    db $ec                                        ; $6aad: $ec
    add hl, sp                                    ; $6aae: $39
    add $e0                                       ; $6aaf: $c6 $e0
    rst $30                                       ; $6ab1: $f7
    ld l, b                                       ; $6ab2: $68
    ld h, l                                       ; $6ab3: $65
    ld l, b                                       ; $6ab4: $68
    ret nz                                        ; $6ab5: $c0

    ldh [$93], a                                  ; $6ab6: $e0 $93
    add [hl]                                      ; $6ab8: $86
    sub [hl]                                      ; $6ab9: $96
    sub a                                         ; $6aba: $97
    ld sp, hl                                     ; $6abb: $f9
    adc h                                         ; $6abc: $8c
    ret nz                                        ; $6abd: $c0

    rst $38                                       ; $6abe: $ff
    db $ec                                        ; $6abf: $ec
    db $eb                                        ; $6ac0: $eb
    ld c, c                                       ; $6ac1: $49
    ld c, b                                       ; $6ac2: $48
    ld l, l                                       ; $6ac3: $6d
    ld l, l                                       ; $6ac4: $6d
    ld l, d                                       ; $6ac5: $6a
    rst $38                                       ; $6ac6: $ff
    ld h, l                                       ; $6ac7: $65
    ld l, h                                       ; $6ac8: $6c
    ld h, l                                       ; $6ac9: $65
    ld l, d                                       ; $6aca: $6a
    ld l, d                                       ; $6acb: $6a
    ld l, l                                       ; $6acc: $6d
    ld l, h                                       ; $6acd: $6c
    sbc c                                         ; $6ace: $99
    ld c, a                                       ; $6acf: $4f
    sbc d                                         ; $6ad0: $9a
    sbc d                                         ; $6ad1: $9a
    ld a, [hl-]                                   ; $6ad2: $3a
    inc [hl]                                      ; $6ad3: $34
    add b                                         ; $6ad4: $80
    rst $18                                       ; $6ad5: $df
    db $eb                                        ; $6ad6: $eb
    ld [$c150], a                                 ; $6ad7: $ea $50 $c1
    ldh [$fd], a                                  ; $6ada: $e0 $fd
    ld h, a                                       ; $6adc: $67
    nop                                           ; $6add: $00
    ldh [$67], a                                  ; $6ade: $e0 $67

Jump_05b_6ae0:
    ld h, a                                       ; $6ae0: $67
    ld l, d                                       ; $6ae1: $6a
    ld l, h                                       ; $6ae2: $6c
    ld l, h                                       ; $6ae3: $6c
    ld l, b                                       ; $6ae4: $68
    sbc a                                         ; $6ae5: $9f
    ld h, l                                       ; $6ae6: $65
    ld h, l                                       ; $6ae7: $65
    ld b, h                                       ; $6ae8: $44
    ld b, l                                       ; $6ae9: $45
    inc [hl]                                      ; $6aea: $34
    nop                                           ; $6aeb: $00
    rst $18                                       ; $6aec: $df
    jp hl                                         ; $6aed: $e9


    add sp, $51                                   ; $6aee: $e8 $51
    ld [$e0c1], a                                 ; $6af0: $ea $c1 $e0
    ld l, l                                       ; $6af3: $6d
    ret nz                                        ; $6af4: $c0

    pop bc                                        ; $6af5: $c1
    ld l, l                                       ; $6af6: $6d
    cp a                                          ; $6af7: $bf
    db $e4                                        ; $6af8: $e4
    ld h, l                                       ; $6af9: $65
    ld b, h                                       ; $6afa: $44
    scf                                           ; $6afb: $37
    ret z                                         ; $6afc: $c8

    jp z, $c0ff                                   ; $6afd: $ca $ff $c0

    add sp, -$3f                                  ; $6b00: $e8 $c1
    ldh [$6d], a                                  ; $6b02: $e0 $6d
    jp z, $c0e0                                   ; $6b04: $ca $e0 $c0

    ret nz                                        ; $6b07: $c0

Call_05b_6b08:
    ld h, [hl]                                    ; $6b08: $66
    ld l, c                                       ; $6b09: $69
    sub d                                         ; $6b0a: $92
    cp a                                          ; $6b0b: $bf
    db $e3                                        ; $6b0c: $e3
    add hl, sp                                    ; $6b0d: $39
    jp z, Jump_000_00ff                           ; $6b0e: $ca $ff $00

    db $eb                                        ; $6b11: $eb
    ld h, a                                       ; $6b12: $67
    adc d                                         ; $6b13: $8a
    ldh [$ba], a                                  ; $6b14: $e0 $ba
    ldh [$66], a                                  ; $6b16: $e0 $66
    dec sp                                        ; $6b18: $3b
    ld l, c                                       ; $6b19: $69
    ld l, e                                       ; $6b1a: $6b
    dec a                                         ; $6b1b: $3d
    ldh [rBCPS], a                                ; $6b1c: $e0 $68
    ld h, l                                       ; $6b1e: $65
    ld d, e                                       ; $6b1f: $53
    jp z, $80ff                                   ; $6b20: $ca $ff $80

    jp z, Jump_05b_6781                           ; $6b23: $ca $81 $67

    ccf                                           ; $6b26: $3f
    ldh [$fb], a                                  ; $6b27: $e0 $fb
    pop hl                                        ; $6b29: $e1
    ret nz                                        ; $6b2a: $c0

Jump_05b_6b2b:
    ld [c], a                                     ; $6b2b: $e2
    ei                                            ; $6b2c: $fb
    ret nz                                        ; $6b2d: $c0

    add b                                         ; $6b2e: $80
    rst $38                                       ; $6b2f: $ff
    ret nz                                        ; $6b30: $c0

    xor c                                         ; $6b31: $a9
    scf                                           ; $6b32: $37
    ld a, a                                       ; $6b33: $7f
    ld [hl], $67                                  ; $6b34: $36 $67
    ld l, l                                       ; $6b36: $6d
    jr nc, jr_05b_6b69                            ; $6b37: $30 $30

    jr nc, jr_05b_6ba8                            ; $6b39: $30 $6d

    add e                                         ; $6b3b: $83
    ret nz                                        ; $6b3c: $c0

    sbc l                                         ; $6b3d: $9d
    sbc c                                         ; $6b3e: $99
    rst $30                                       ; $6b3f: $f7
    pop bc                                        ; $6b40: $c1
    ld l, h                                       ; $6b41: $6c
    ld [hl-], a                                   ; $6b42: $32
    ld c, l                                       ; $6b43: $4d
    jp z, $80ff                                   ; $6b44: $ca $ff $80

    xor c                                         ; $6b47: $a9
    ld b, a                                       ; $6b48: $47
    rst $38                                       ; $6b49: $ff
    ld b, [hl]                                    ; $6b4a: $46
    ld d, h                                       ; $6b4b: $54
    ld d, l                                       ; $6b4c: $55
    ld d, h                                       ; $6b4d: $54
    ld d, h                                       ; $6b4e: $54
    ld b, [hl]                                    ; $6b4f: $46
    sub a                                         ; $6b50: $97
    sbc [hl]                                      ; $6b51: $9e
    dec de                                        ; $6b52: $1b
    sbc [hl]                                      ; $6b53: $9e
    sub a                                         ; $6b54: $97
    or $e1                                        ; $6b55: $f6 $e1
    ld b, [hl]                                    ; $6b57: $46
    ld c, l                                       ; $6b58: $4d
    add b                                         ; $6b59: $80
    rst $18                                       ; $6b5a: $df
    rst $38                                       ; $6b5b: $ff
    rst $38                                       ; $6b5c: $ff
    rst $38                                       ; $6b5d: $ff
    rst $38                                       ; $6b5e: $ff
    nop                                           ; $6b5f: $00
    rst $38                                       ; $6b60: $ff
    rst $38                                       ; $6b61: $ff
    rst $38                                       ; $6b62: $ff
    rst $38                                       ; $6b63: $ff
    rst $38                                       ; $6b64: $ff
    rst $38                                       ; $6b65: $ff
    rst $38                                       ; $6b66: $ff
    rst $38                                       ; $6b67: $ff
    rst $38                                       ; $6b68: $ff

jr_05b_6b69:
    rst $38                                       ; $6b69: $ff
    rst $38                                       ; $6b6a: $ff
    rst $38                                       ; $6b6b: $ff
    rst $38                                       ; $6b6c: $ff
    rst $38                                       ; $6b6d: $ff
    rst $38                                       ; $6b6e: $ff
    rst $38                                       ; $6b6f: $ff
    ret nz                                        ; $6b70: $c0

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
    or $f5                                        ; $6b7b: $f6 $f5
    or e                                          ; $6b7d: $b3
    or h                                          ; $6b7e: $b4
    rst $38                                       ; $6b7f: $ff
    or l                                          ; $6b80: $b5
    or [hl]                                       ; $6b81: $b6
    or a                                          ; $6b82: $b7
    cp b                                          ; $6b83: $b8
    cp c                                          ; $6b84: $b9
    cp d                                          ; $6b85: $ba
    cp e                                          ; $6b86: $bb
    cp h                                          ; $6b87: $bc
    rlca                                          ; $6b88: $07
    cp l                                          ; $6b89: $bd
    cp [hl]                                       ; $6b8a: $be
    cp a                                          ; $6b8b: $bf
    pop de                                        ; $6b8c: $d1
    rst $38                                       ; $6b8d: $ff
    rst $38                                       ; $6b8e: $ff
    rst $38                                       ; $6b8f: $ff
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    rst $38                                       ; $6b92: $ff
    rst $38                                       ; $6b93: $ff
    rst $38                                       ; $6b94: $ff
    rst $38                                       ; $6b95: $ff
    nop                                           ; $6b96: $00
    rst $38                                       ; $6b97: $ff
    rst $38                                       ; $6b98: $ff
    rst $38                                       ; $6b99: $ff
    rst $38                                       ; $6b9a: $ff
    rst $38                                       ; $6b9b: $ff
    rst $38                                       ; $6b9c: $ff
    rst $38                                       ; $6b9d: $ff
    rst $38                                       ; $6b9e: $ff
    rst $38                                       ; $6b9f: $ff

Jump_05b_6ba0:
    rst $38                                       ; $6ba0: $ff
    rst $38                                       ; $6ba1: $ff
    rst $38                                       ; $6ba2: $ff
    rst $38                                       ; $6ba3: $ff
    rst $38                                       ; $6ba4: $ff
    rst $38                                       ; $6ba5: $ff
    rst $38                                       ; $6ba6: $ff
    nop                                           ; $6ba7: $00

jr_05b_6ba8:
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
    nop                                           ; $6bb8: $00
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

Call_05b_6bc5:
    rst $38                                       ; $6bc5: $ff
    rst $38                                       ; $6bc6: $ff
    rst $38                                       ; $6bc7: $ff
    rst $38                                       ; $6bc8: $ff
    nop                                           ; $6bc9: $00
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
    nop                                           ; $6bda: $00
    rst $38                                       ; $6bdb: $ff
    rst $38                                       ; $6bdc: $ff
    rst $38                                       ; $6bdd: $ff
    rst $38                                       ; $6bde: $ff
    rst $38                                       ; $6bdf: $ff
    rst $38                                       ; $6be0: $ff

Jump_05b_6be1:
    rst $38                                       ; $6be1: $ff

Jump_05b_6be2:
    rst $38                                       ; $6be2: $ff
    rst $38                                       ; $6be3: $ff

Jump_05b_6be4:
    rst $38                                       ; $6be4: $ff
    rst $38                                       ; $6be5: $ff
    rst $38                                       ; $6be6: $ff
    rst $38                                       ; $6be7: $ff
    rst $38                                       ; $6be8: $ff
    rst $38                                       ; $6be9: $ff
    rst $38                                       ; $6bea: $ff
    nop                                           ; $6beb: $00
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
    nop                                           ; $6bfc: $00
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
    nop                                           ; $6c0d: $00
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
    nop                                           ; $6c1e: $00
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
    pop af                                        ; $6c2a: $f1
    nop                                           ; $6c2b: $00
    nop                                           ; $6c2c: $00
    nop                                           ; $6c2d: $00
    and l                                         ; $6c2e: $a5
    nop                                           ; $6c2f: $00
    rst $38                                       ; $6c30: $ff
    push hl                                       ; $6c31: $e5
    ld [hl-], a                                   ; $6c32: $32
    or $e6                                        ; $6c33: $f6 $e6
    rst $30                                       ; $6c35: $f7
    rst $20                                       ; $6c36: $e7
    dec [hl]                                      ; $6c37: $35
    db $ec                                        ; $6c38: $ec
    xor $37                                       ; $6c39: $ee $37
    db $ec                                        ; $6c3b: $ec
    jp c, $c7f0                                   ; $6c3c: $da $f0 $c7

    add sp, $33                                   ; $6c3f: $e8 $33
    ld sp, $f2e0                                  ; $6c41: $31 $e0 $f2
    ld [hl], $30                                  ; $6c44: $36 $30
    scf                                           ; $6c46: $37
    cp a                                          ; $6c47: $bf
    ld h, $20                                     ; $6c48: $26 $20
    daa                                           ; $6c4a: $27
    db $10                                        ; $6c4b: $10
    ld d, $17                                     ; $6c4c: $16 $17
    jp nz, Jump_000_34f6                          ; $6c4e: $c2 $f6 $34

    rst $38                                       ; $6c51: $ff
    ld [hl], $32                                  ; $6c52: $36 $32
    jr nc, jr_05b_6c8d                            ; $6c54: $30 $37

    ld sp, $3133                                  ; $6c56: $31 $33 $31
    inc sp                                        ; $6c59: $33
    nop                                           ; $6c5a: $00
    and b                                         ; $6c5b: $a0
    ei                                            ; $6c5c: $fb
    rst $38                                       ; $6c5d: $ff
    rst $28                                       ; $6c5e: $ef
    nop                                           ; $6c5f: $00
    nop                                           ; $6c60: $00
    nop                                           ; $6c61: $00
    ld l, d                                       ; $6c62: $6a
    ld l, h                                       ; $6c63: $6c
    sbc d                                         ; $6c64: $9a
    ld l, h                                       ; $6c65: $6c
    add $6e                                       ; $6c66: $c6 $6e
    sbc c                                         ; $6c68: $99
    ld [hl], b                                    ; $6c69: $70
    ret nz                                        ; $6c6a: $c0

    rra                                           ; $6c6b: $1f

Jump_05b_6c6c:
    adc d                                         ; $6c6c: $8a
    inc bc                                        ; $6c6d: $03
    add b                                         ; $6c6e: $80
    ld [bc], a                                    ; $6c6f: $02
    ld h, b                                       ; $6c70: $60
    ld bc, $03ef                                  ; $6c71: $01 $ef $03
    db $f4                                        ; $6c74: $f4
    inc bc                                        ; $6c75: $03
    adc d                                         ; $6c76: $8a
    inc bc                                        ; $6c77: $03
    add b                                         ; $6c78: $80
    ld [bc], a                                    ; $6c79: $02
    rra                                           ; $6c7a: $1f
    ld [bc], a                                    ; $6c7b: $02
    ld c, e                                       ; $6c7c: $4b
    ld c, $38                                     ; $6c7d: $0e $38
    ld bc, $038a                                  ; $6c7f: $01 $8a $03
    ld [$0825], sp                                ; $6c82: $08 $25 $08
    dec h                                         ; $6c85: $25
    ld [$0825], sp                                ; $6c86: $08 $25 $08
    dec h                                         ; $6c89: $25
    ld [$0825], sp                                ; $6c8a: $08 $25 $08

jr_05b_6c8d:
    dec h                                         ; $6c8d: $25
    ld [$0825], sp                                ; $6c8e: $08 $25 $08
    dec h                                         ; $6c91: $25
    ld [$0825], sp                                ; $6c92: $08 $25 $08
    dec h                                         ; $6c95: $25
    ld [$0825], sp                                ; $6c96: $08 $25 $08
    dec h                                         ; $6c99: $25
    db $fd                                        ; $6c9a: $fd
    inc c                                         ; $6c9b: $0c
    rst $38                                       ; $6c9c: $ff
    db $e4                                        ; $6c9d: $e4
    dec bc                                        ; $6c9e: $0b
    dec bc                                        ; $6c9f: $0b
    dec hl                                        ; $6ca0: $2b
    dec bc                                        ; $6ca1: $0b
    dec bc                                        ; $6ca2: $0b
    ld a, [bc]                                    ; $6ca3: $0a
    adc l                                         ; $6ca4: $8d
    dec bc                                        ; $6ca5: $0b
    rst $38                                       ; $6ca6: $ff
    ldh [$0a], a                                  ; $6ca7: $e0 $0a
    dec bc                                        ; $6ca9: $0b
    db $ec                                        ; $6caa: $ec
    push hl                                       ; $6cab: $e5
    rst $38                                       ; $6cac: $ff
    rst $38                                       ; $6cad: $ff
    jp nz, Jump_05b_4ce3                          ; $6cae: $c2 $e3 $4c

    add e                                         ; $6cb1: $83
    ld c, h                                       ; $6cb2: $4c
    ld c, h                                       ; $6cb3: $4c
    ret nz                                        ; $6cb4: $c0

    ldh [$bf], a                                  ; $6cb5: $e0 $bf
    pop hl                                        ; $6cb7: $e1

Call_05b_6cb8:
    cp $e3                                        ; $6cb8: $fe $e3
    add sp, -$19                                  ; $6cba: $e8 $e7
    db $fd                                        ; $6cbc: $fd
    pop hl                                        ; $6cbd: $e1
    inc c                                         ; $6cbe: $0c
    add b                                         ; $6cbf: $80
    db $fd                                        ; $6cc0: $fd
    db $e3                                        ; $6cc1: $e3
    cp c                                          ; $6cc2: $b9
    ld hl, sp-$38                                 ; $6cc3: $f8 $c8
    push hl                                       ; $6cc5: $e5
    cp a                                          ; $6cc6: $bf
    push hl                                       ; $6cc7: $e5
    ret nz                                        ; $6cc8: $c0

    add sp, -$05                                  ; $6cc9: $e8 $fb
    db $e4                                        ; $6ccb: $e4
    or l                                          ; $6ccc: $b5
    ld sp, hl                                     ; $6ccd: $f9
    dec hl                                        ; $6cce: $2b
    ld c, $88                                     ; $6ccf: $0e $88
    and $0b                                       ; $6cd1: $e6 $0b
    dec hl                                        ; $6cd3: $2b
    ld a, [bc]                                    ; $6cd4: $0a
    ld a, h                                       ; $6cd5: $7c
    ld [c], a                                     ; $6cd6: $e2
    ld l, b                                       ; $6cd7: $68
    add sp, $7e                                   ; $6cd8: $e8 $7e
    pop hl                                        ; $6cda: $e1
    db $fc                                        ; $6cdb: $fc
    ld [c], a                                     ; $6cdc: $e2
    call c, $e7b5                                 ; $6cdd: $dc $b5 $e7
    add h                                         ; $6ce0: $84
    rst $28                                       ; $6ce1: $ef
    ld l, e                                       ; $6ce2: $6b
    ld l, e                                       ; $6ce3: $6b
    ld c, e                                       ; $6ce4: $4b
    rst $38                                       ; $6ce5: $ff
    ld [c], a                                     ; $6ce6: $e2
    dec hl                                        ; $6ce7: $2b
    dec bc                                        ; $6ce8: $0b
    ld h, b                                       ; $6ce9: $60
    or h                                          ; $6cea: $b4
    pop hl                                        ; $6ceb: $e1
    nop                                           ; $6cec: $00
    rst $20                                       ; $6ced: $e7
    ld b, e                                       ; $6cee: $43
    ld [c], a                                     ; $6cef: $e2
    db $fc                                        ; $6cf0: $fc
    db $e3                                        ; $6cf1: $e3
    or l                                          ; $6cf2: $b5
    add sp, $0c                                   ; $6cf3: $e8 $0c
    inc l                                         ; $6cf5: $2c
    call z, $bcc3                                 ; $6cf6: $cc $c3 $bc
    ld sp, hl                                     ; $6cf9: $f9
    db $e3                                        ; $6cfa: $e3
    pop bc                                        ; $6cfb: $c1
    ld [c], a                                     ; $6cfc: $e2
    dec hl                                        ; $6cfd: $2b
    ld l, e                                       ; $6cfe: $6b

Jump_05b_6cff:
    ld l, e                                       ; $6cff: $6b
    ld l, e                                       ; $6d00: $6b
    push bc                                       ; $6d01: $c5
    ret nz                                        ; $6d02: $c0

    ld c, e                                       ; $6d03: $4b
    ld h, c                                       ; $6d04: $61
    ld c, e                                       ; $6d05: $4b
    ld b, b                                       ; $6d06: $40
    rst $28                                       ; $6d07: $ef
    ret nz                                        ; $6d08: $c0

    and $b1                                       ; $6d09: $e6 $b1
    rst $20                                       ; $6d0b: $e7
    inc b                                         ; $6d0c: $04
    db $ed                                        ; $6d0d: $ed
    ld l, e                                       ; $6d0e: $6b
    ld c, e                                       ; $6d0f: $4b
    cp a                                          ; $6d10: $bf
    db $ec                                        ; $6d11: $ec
    sbc d                                         ; $6d12: $9a
    adc [hl]                                      ; $6d13: $8e
    jp z, $ff2c                                   ; $6d14: $ca $2c $ff

    ldh [$0c], a                                  ; $6d17: $e0 $0c
    inc l                                         ; $6d19: $2c
    ret nz                                        ; $6d1a: $c0

    ld hl, sp-$7c                                 ; $6d1b: $f8 $84
    ldh [rWX], a                                  ; $6d1d: $e0 $4b
    ld b, c                                       ; $6d1f: $41
    ld l, e                                       ; $6d20: $6b
    ld a, [$3de2]                                 ; $6d21: $fa $e2 $3d
    ld [c], a                                     ; $6d24: $e2
    ret nz                                        ; $6d25: $c0

    db $ed                                        ; $6d26: $ed
    or l                                          ; $6d27: $b5
    xor $c0                                       ; $6d28: $ee $c0
    rst $28                                       ; $6d2a: $ef
    ld c, e                                       ; $6d2b: $4b
    cp a                                          ; $6d2c: $bf

jr_05b_6d2d:
    db $e3                                        ; $6d2d: $e3
    jr nz, jr_05b_6d2d                            ; $6d2e: $20 $fd

    jp nz, $c13b                                  ; $6d30: $c2 $3b $c1

    inc h                                         ; $6d33: $24
    ldh [$cf], a                                  ; $6d34: $e0 $cf
    jp $ffff                                      ; $6d36: $c3 $ff $ff


    inc c                                         ; $6d39: $0c
    jp Jump_000_3fc0                              ; $6d3a: $c3 $c0 $3f


    pop hl                                        ; $6d3d: $e1
    nop                                           ; $6d3e: $00
    ld a, [hl]                                    ; $6d3f: $7e
    ldh [$bc], a                                  ; $6d40: $e0 $bc
    call nz, $a0b9                                ; $6d42: $c4 $b9 $a0
    db $ed                                        ; $6d45: $ed
    and h                                         ; $6d46: $a4
    rst $38                                       ; $6d47: $ff
    rst $38                                       ; $6d48: $ff
    ret nz                                        ; $6d49: $c0

    db $e4                                        ; $6d4a: $e4
    cp a                                          ; $6d4b: $bf
    ld [c], a                                     ; $6d4c: $e2

jr_05b_6d4d:
    jp nz, $82a1                                  ; $6d4d: $c2 $a1 $82

    ld a, a                                       ; $6d50: $7f
    ld [c], a                                     ; $6d51: $e2
    dec hl                                        ; $6d52: $2b
    add b                                         ; $6d53: $80
    cp h                                          ; $6d54: $bc
    add c                                         ; $6d55: $81
    jp nz, $e63a                                  ; $6d56: $c2 $3a $e6

    add [hl]                                      ; $6d59: $86
    ret nz                                        ; $6d5a: $c0

    cp a                                          ; $6d5b: $bf
    ld [c], a                                     ; $6d5c: $e2
    dec hl                                        ; $6d5d: $2b
    ret nz                                        ; $6d5e: $c0

    ld a, a                                       ; $6d5f: $7f
    ret nz                                        ; $6d60: $c0

    ld b, b                                       ; $6d61: $40
    ld [c], a                                     ; $6d62: $e2
    dec a                                         ; $6d63: $3d
    ldh [$8a], a                                  ; $6d64: $e0 $8a
    rst $38                                       ; $6d66: $ff
    jp nz, $44a9                                  ; $6d67: $c2 $a9 $44

    jp nz, Jump_05b_6b2b                          ; $6d6a: $c2 $2b $6b

    dec e                                         ; $6d6d: $1d
    dec hl                                        ; $6d6e: $2b
    ccf                                           ; $6d6f: $3f
    pop hl                                        ; $6d70: $e1
    dec bc                                        ; $6d71: $0b
    dec hl                                        ; $6d72: $2b
    ld c, e                                       ; $6d73: $4b
    or h                                          ; $6d74: $b4
    ret nz                                        ; $6d75: $c0

    jp z, Jump_05b_44ff                           ; $6d76: $ca $ff $44

    xor b                                         ; $6d79: $a8
    inc b                                         ; $6d7a: $04
    cp a                                          ; $6d7b: $bf
    ld [c], a                                     ; $6d7c: $e2
    rlca                                          ; $6d7d: $07
    jp $b82b                                      ; $6d7e: $c3 $2b $b8


    and c                                         ; $6d81: $a1
    or $a0                                        ; $6d82: $f6 $a0
    ld bc, $edbb                                  ; $6d84: $01 $bb $ed
    adc e                                         ; $6d87: $8b
    adc b                                         ; $6d88: $88
    add b                                         ; $6d89: $80
    add b                                         ; $6d8a: $80
    ld b, l                                       ; $6d8b: $45
    pop hl                                        ; $6d8c: $e1
    nop                                           ; $6d8d: $00
    and e                                         ; $6d8e: $a3
    ld b, d                                       ; $6d8f: $42
    ldh [$b7], a                                  ; $6d90: $e0 $b7
    and c                                         ; $6d92: $a1
    ld bc, $90af                                  ; $6d93: $01 $af $90
    adc l                                         ; $6d96: $8d
    call nz, $2b8a                                ; $6d97: $c4 $8a $2b
    nop                                           ; $6d9a: $00
    adc c                                         ; $6d9b: $89
    and h                                         ; $6d9c: $a4
    cp a                                          ; $6d9d: $bf
    ld [c], a                                     ; $6d9e: $e2
    ld a, b                                       ; $6d9f: $78
    and c                                         ; $6da0: $a1
    ld bc, $75af                                  ; $6da1: $01 $af $75
    adc c                                         ; $6da4: $89
    jr c, jr_05b_6d4d                             ; $6da5: $38 $a6

    ld e, h                                       ; $6da7: $5c
    add a                                         ; $6da8: $87
    reti                                          ; $6da9: $d9


    add h                                         ; $6daa: $84
    nop                                           ; $6dab: $00
    rla                                           ; $6dac: $17
    and [hl]                                      ; $6dad: $a6
    ld bc, $74ae                                  ; $6dae: $01 $ae $74
    ld [$b238], a                                 ; $6db1: $ea $38 $b2
    push hl                                       ; $6db4: $e5
    halt                                          ; $6db5: $76
    cp c                                          ; $6db6: $b9
    add l                                         ; $6db7: $85
    ld [hl], h                                    ; $6db8: $74
    ld [$fec0], a                                 ; $6db9: $ea $c0 $fe
    nop                                           ; $6dbc: $00
    ret z                                         ; $6dbd: $c8

    ld h, [hl]                                    ; $6dbe: $66
    ld c, h                                       ; $6dbf: $4c
    or c                                          ; $6dc0: $b1
    db $ed                                        ; $6dc1: $ed
    add e                                         ; $6dc2: $83
    scf                                           ; $6dc3: $37
    xor h                                         ; $6dc4: $ac
    db $db                                        ; $6dc5: $db
    reti                                          ; $6dc6: $d9


    ld [hl], l                                    ; $6dc7: $75
    ld [hl], d                                    ; $6dc8: $72
    ret nz                                        ; $6dc9: $c0

    ld a, [$cbdb]                                 ; $6dca: $fa $db $cb
    nop                                           ; $6dcd: $00
    ld [hl], h                                    ; $6dce: $74
    ret c                                         ; $6dcf: $d8

    rlca                                          ; $6dd0: $07
    db $fd                                        ; $6dd1: $fd
    ld [hl], h                                    ; $6dd2: $74
    ret nc                                        ; $6dd3: $d0

    rst $38                                       ; $6dd4: $ff
    rst $38                                       ; $6dd5: $ff
    cp b                                          ; $6dd6: $b8
    reti                                          ; $6dd7: $d9


    call nc, $9bff                                ; $6dd8: $d4 $ff $9b
    xor c                                         ; $6ddb: $a9
    add c                                         ; $6ddc: $81
    ld b, l                                       ; $6ddd: $45
    nop                                           ; $6dde: $00
    ret nz                                        ; $6ddf: $c0

    rst $38                                       ; $6de0: $ff
    sbc e                                         ; $6de1: $9b
    or h                                          ; $6de2: $b4
    call z, $c049                                 ; $6de3: $cc $49 $c0
    ld [hl], c                                    ; $6de6: $71
    push de                                       ; $6de7: $d5
    ld [hl], e                                    ; $6de8: $73
    add a                                         ; $6de9: $87
    xor c                                         ; $6dea: $a9
    inc c                                         ; $6deb: $0c
    db $fd                                        ; $6dec: $fd
    push de                                       ; $6ded: $d5
    ld [hl], e                                    ; $6dee: $73
    nop                                           ; $6def: $00
    ret z                                         ; $6df0: $c8

    ld c, h                                       ; $6df1: $4c
    rst $38                                       ; $6df2: $ff
    rst $38                                       ; $6df3: $ff
    db $d3                                        ; $6df4: $d3
    db $d3                                        ; $6df5: $d3
    ret nz                                        ; $6df6: $c0

    rst $38                                       ; $6df7: $ff
    db $d3                                        ; $6df8: $d3
    ld e, h                                       ; $6df9: $5c
    inc c                                         ; $6dfa: $0c
    ld a, [c]                                     ; $6dfb: $f2
    rst $10                                       ; $6dfc: $d7
    xor d                                         ; $6dfd: $aa
    rst $38                                       ; $6dfe: $ff
    rst $38                                       ; $6dff: $ff
    nop                                           ; $6e00: $00
    rst $38                                       ; $6e01: $ff
    rst $38                                       ; $6e02: $ff
    rst $38                                       ; $6e03: $ff
    rst $38                                       ; $6e04: $ff
    dec c                                         ; $6e05: $0d
    rst $38                                       ; $6e06: $ff
    inc d                                         ; $6e07: $14
    rst $38                                       ; $6e08: $ff
    dec c                                         ; $6e09: $0d
    rst $38                                       ; $6e0a: $ff
    inc d                                         ; $6e0b: $14
    push af                                       ; $6e0c: $f5
    ld a, e                                       ; $6e0d: $7b
    rlca                                          ; $6e0e: $07
    ld [hl], d                                    ; $6e0f: $72
    ld hl, $6c00                                  ; $6e10: $21 $00 $6c
    inc hl                                        ; $6e13: $23
    rst $38                                       ; $6e14: $ff
    rst $38                                       ; $6e15: $ff
    jp c, $b2cc                                   ; $6e16: $da $cc $b2

    ld [bc], a                                    ; $6e19: $02
    ld c, c                                       ; $6e1a: $49
    add d                                         ; $6e1b: $82
    pop bc                                        ; $6e1c: $c1
    jp hl                                         ; $6e1d: $e9


    sub l                                         ; $6e1e: $95
    ccf                                           ; $6e1f: $3f
    sbc d                                         ; $6e20: $9a
    add $00                                       ; $6e21: $c6 $00
    ld a, b                                       ; $6e23: $78
    ld bc, $06ed                                  ; $6e24: $01 $ed $06
    ret nz                                        ; $6e27: $c0

    cp h                                          ; $6e28: $bc
    swap b                                        ; $6e29: $cb $30
    rst $30                                       ; $6e2b: $f7
    add e                                         ; $6e2c: $83
    call nc, $9bff                                ; $6e2d: $d4 $ff $9b
    reti                                          ; $6e30: $d9


    rst $30                                       ; $6e31: $f7
    jp nz, Boot                                   ; $6e32: $c2 $00 $01

    db $fd                                        ; $6e35: $fd
    rra                                           ; $6e36: $1f
    ld b, b                                       ; $6e37: $40
    ld [$4097], a                                 ; $6e38: $ea $97 $40
    db $ec                                        ; $6e3b: $ec
    ld [hl], b                                    ; $6e3c: $70
    push af                                       ; $6e3d: $f5
    ld a, [hl+]                                   ; $6e3e: $2a
    ldh a, [rNR42]                                ; $6e3f: $f0 $21
    rst $18                                       ; $6e41: $df
    ld b, $71                                     ; $6e42: $06 $71
    nop                                           ; $6e44: $00
    ld l, d                                       ; $6e45: $6a
    adc h                                         ; $6e46: $8c
    cp l                                          ; $6e47: $bd
    cp a                                          ; $6e48: $bf
    jp c, Jump_05b_46f7                           ; $6e49: $da $f7 $46

    inc h                                         ; $6e4c: $24
    ret nz                                        ; $6e4d: $c0

    rst $38                                       ; $6e4e: $ff
    ld e, c                                       ; $6e4f: $59
    di                                            ; $6e50: $f3
    ld sp, hl                                     ; $6e51: $f9
    inc hl                                        ; $6e52: $23
    ld a, l                                       ; $6e53: $7d
    cp a                                          ; $6e54: $bf
    add b                                         ; $6e55: $80
    dec h                                         ; $6e56: $25
    ld d, d                                       ; $6e57: $52
    db $f4                                        ; $6e58: $f4
    dec b                                         ; $6e59: $05
    ld [$edcf], a                                 ; $6e5a: $ea $cf $ed
    db $db                                        ; $6e5d: $db
    ld c, l                                       ; $6e5e: $4d
    dec h                                         ; $6e5f: $25
    jr jr_05b_6e86                                ; $6e60: $18 $24

    cp a                                          ; $6e62: $bf
    adc $2c                                       ; $6e63: $ce $2c
    nop                                           ; $6e65: $00
    sbc h                                         ; $6e66: $9c
    ld hl, $bdbd                                  ; $6e67: $21 $bd $bd
    halt                                          ; $6e6a: $76
    inc bc                                        ; $6e6b: $03
    and h                                         ; $6e6c: $a4
    jp nc, Jump_000_04c8                          ; $6e6d: $d2 $c8 $04

    ld e, $7b                                     ; $6e70: $1e $7b
    rlca                                          ; $6e72: $07
    db $e3                                        ; $6e73: $e3
    add d                                         ; $6e74: $82
    ldh a, [rP1]                                  ; $6e75: $f0 $00
    ret nz                                        ; $6e77: $c0

    ld a, [hl]                                    ; $6e78: $7e
    adc [hl]                                      ; $6e79: $8e
    dec b                                         ; $6e7a: $05
    adc [hl]                                      ; $6e7b: $8e
    sub [hl]                                      ; $6e7c: $96
    add l                                         ; $6e7d: $85
    rst $38                                       ; $6e7e: $ff
    db $d3                                        ; $6e7f: $d3
    cp l                                          ; $6e80: $bd
    xor h                                         ; $6e81: $ac
    cp d                                          ; $6e82: $ba
    ret nz                                        ; $6e83: $c0

    rst $38                                       ; $6e84: $ff
    ld l, [hl]                                    ; $6e85: $6e

jr_05b_6e86:
    cp a                                          ; $6e86: $bf
    nop                                           ; $6e87: $00
    ret nz                                        ; $6e88: $c0

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
    nop                                           ; $6e98: $00
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
    nop                                           ; $6ea9: $00
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
    and [hl]                                      ; $6eb4: $a6
    dec [hl]                                      ; $6eb5: $35
    rst $38                                       ; $6eb6: $ff
    rst $38                                       ; $6eb7: $ff
    rst $38                                       ; $6eb8: $ff
    rst $38                                       ; $6eb9: $ff
    nop                                           ; $6eba: $00
    rst $38                                       ; $6ebb: $ff
    rst $38                                       ; $6ebc: $ff
    rst $38                                       ; $6ebd: $ff
    rst $38                                       ; $6ebe: $ff
    rst $38                                       ; $6ebf: $ff
    rst $38                                       ; $6ec0: $ff
    add e                                         ; $6ec1: $83
    ld c, [hl]                                    ; $6ec2: $4e
    nop                                           ; $6ec3: $00
    nop                                           ; $6ec4: $00
    nop                                           ; $6ec5: $00
    db $fd                                        ; $6ec6: $fd
    jr nz, @+$01                                  ; $6ec7: $20 $ff

    db $e3                                        ; $6ec9: $e3
    nop                                           ; $6eca: $00
    ld sp, $6031                                  ; $6ecb: $31 $31 $60
    ld e, e                                       ; $6ece: $5b
    ld e, e                                       ; $6ecf: $5b
    dec sp                                        ; $6ed0: $3b
    ld e, d                                       ; $6ed1: $5a
    ld e, e                                       ; $6ed2: $5b
    rst $38                                       ; $6ed3: $ff
    ldh [$5a], a                                  ; $6ed4: $e0 $5a
    ld e, e                                       ; $6ed6: $5b
    nop                                           ; $6ed7: $00
    rst $38                                       ; $6ed8: $ff
    rst $38                                       ; $6ed9: $ff
    rst $20                                       ; $6eda: $e7
    and $3e                                       ; $6edb: $e6 $3e
    ret nz                                        ; $6edd: $c0

    pop hl                                        ; $6ede: $e1
    dec b                                         ; $6edf: $05
    dec b                                         ; $6ee0: $05
    dec b                                         ; $6ee1: $05
    rrca                                          ; $6ee2: $0f
    ld sp, $e2bf                                  ; $6ee3: $31 $bf $e2
    cp $e3                                        ; $6ee6: $fe $e3
    inc c                                         ; $6ee8: $0c
    jp z, $c0ff                                   ; $6ee9: $ca $ff $c0

    jp hl                                         ; $6eec: $e9


    ld a, [bc]                                    ; $6eed: $0a
    dec bc                                        ; $6eee: $0b
    call nz, $fde0                                ; $6eef: $c4 $e0 $fd
    ld [c], a                                     ; $6ef2: $e2
    cp a                                          ; $6ef3: $bf
    push hl                                       ; $6ef4: $e5
    jp z, $80ff                                   ; $6ef5: $ca $ff $80

    add sp, -$19                                  ; $6ef8: $e8 $e7
    jp nz, Jump_05b_7ee7                          ; $6efa: $c2 $e7 $7e

    pop hl                                        ; $6efd: $e1
    ccf                                           ; $6efe: $3f
    ld [c], a                                     ; $6eff: $e2
    ret nz                                        ; $6f00: $c0

    rst $38                                       ; $6f01: $ff
    jp hl                                         ; $6f02: $e9


    add sp, -$7c                                  ; $6f03: $e8 $84
    pop hl                                        ; $6f05: $e1
    ld b, a                                       ; $6f06: $47
    rst $38                                       ; $6f07: $ff
    ld b, l                                       ; $6f08: $45
    ld d, h                                       ; $6f09: $54
    ld d, l                                       ; $6f0a: $55
    ld d, h                                       ; $6f0b: $54
    ld d, h                                       ; $6f0c: $54
    ld d, h                                       ; $6f0d: $54
    ld b, l                                       ; $6f0e: $45
    inc [hl]                                      ; $6f0f: $34
    rst $20                                       ; $6f10: $e7
    ld sp, $5c5d                                  ; $6f11: $31 $5d $5c
    nop                                           ; $6f14: $00
    rst $38                                       ; $6f15: $ff
    ret nz                                        ; $6f16: $c0

    xor $49                                       ; $6f17: $ee $49
    ld [hl], $30                                  ; $6f19: $36 $30
    rst $38                                       ; $6f1b: $ff
    ld h, a                                       ; $6f1c: $67
    ld l, d                                       ; $6f1d: $6a
    ld l, d                                       ; $6f1e: $6a
    jr nc, jr_05b_6f51                            ; $6f1f: $30 $30

    jr nc, jr_05b_6f55                            ; $6f21: $30 $32

jr_05b_6f23:
    ld c, l                                       ; $6f23: $4d
    rst $00                                       ; $6f24: $c7
    ld sp, $6231                                  ; $6f25: $31 $31 $62
    rst $38                                       ; $6f28: $ff
    ldh [$ca], a                                  ; $6f29: $e0 $ca
    rst $38                                       ; $6f2b: $ff
    add b                                         ; $6f2c: $80
    ld [$6539], a                                 ; $6f2d: $ea $39 $65
    pop hl                                        ; $6f30: $e1
    ld l, l                                       ; $6f31: $6d
    cp a                                          ; $6f32: $bf
    add sp, -$49                                  ; $6f33: $e8 $b7
    ret nz                                        ; $6f35: $c0

    jp z, Jump_05b_40ff                           ; $6f36: $ca $ff $40

    jp hl                                         ; $6f39: $e9


    ld c, c                                       ; $6f3a: $49
    ld c, b                                       ; $6f3b: $48
    ld l, d                                       ; $6f3c: $6a
    ld a, [hl]                                    ; $6f3d: $7e
    cp a                                          ; $6f3e: $bf
    db $e3                                        ; $6f3f: $e3
    ld l, b                                       ; $6f40: $68
    ld l, b                                       ; $6f41: $68
    ld l, b                                       ; $6f42: $68
    ld [hl-], a                                   ; $6f43: $32
    or b                                          ; $6f44: $b0
    and h                                         ; $6f45: $a4
    rst $38                                       ; $6f46: $ff
    ldh [$9c], a                                  ; $6f47: $e0 $9c
    jp z, Jump_000_00ff                           ; $6f49: $ca $ff $00

    jp hl                                         ; $6f4c: $e9


    add hl, sp                                    ; $6f4d: $39
    ld l, d                                       ; $6f4e: $6a
    ld h, l                                       ; $6f4f: $65
    cp a                                          ; $6f50: $bf

jr_05b_6f51:
    db $e3                                        ; $6f51: $e3
    ret nz                                        ; $6f52: $c0

    ldh [rBCPS], a                                ; $6f53: $e0 $68

jr_05b_6f55:
    sbc a                                         ; $6f55: $9f
    ld [hl], c                                    ; $6f56: $71
    ld a, c                                       ; $6f57: $79
    add b                                         ; $6f58: $80
    add b                                         ; $6f59: $80
    add b                                         ; $6f5a: $80
    jp z, $c0ff                                   ; $6f5b: $ca $ff $c0

    ret z                                         ; $6f5e: $c8

    ld c, c                                       ; $6f5f: $49
    dec bc                                        ; $6f60: $0b
    ld c, b                                       ; $6f61: $48
    jr nc, jr_05b_6f23                            ; $6f62: $30 $bf

    db $e3                                        ; $6f64: $e3
    ld h, l                                       ; $6f65: $65
    rst $38                                       ; $6f66: $ff
    ld [c], a                                     ; $6f67: $e2
    cp a                                          ; $6f68: $bf
    pop hl                                        ; $6f69: $e1
    jp z, $80ff                                   ; $6f6a: $ca $ff $80

    ret z                                         ; $6f6d: $c8

    jp hl                                         ; $6f6e: $e9


    add hl, sp                                    ; $6f6f: $39
    add $c0                                       ; $6f70: $c6 $c0
    ld a, [hl]                                    ; $6f72: $7e
    pop hl                                        ; $6f73: $e1
    ld l, c                                       ; $6f74: $69
    cp a                                          ; $6f75: $bf
    ret nz                                        ; $6f76: $c0

    ld l, l                                       ; $6f77: $6d
    ld l, d                                       ; $6f78: $6a
    ld h, a                                       ; $6f79: $67
    pop bc                                        ; $6f7a: $c1
    jr nc, jr_05b_6ffb                            ; $6f7b: $30 $7e

    ldh [$ca], a                                  ; $6f7d: $e0 $ca
    rst $38                                       ; $6f7f: $ff
    add sp, -$19                                  ; $6f80: $e8 $e7
    ld [bc], a                                    ; $6f82: $02
    ldh [$bf], a                                  ; $6f83: $e0 $bf
    ld [c], a                                     ; $6f85: $e2
    ld l, c                                       ; $6f86: $69
    ld h, a                                       ; $6f87: $67
    sbc [hl]                                      ; $6f88: $9e
    pop bc                                        ; $6f89: $c1
    db $e3                                        ; $6f8a: $e3
    jr nc, jr_05b_6ff7                            ; $6f8b: $30 $6a

    ld [hl], c                                    ; $6f8d: $71
    ld a, c                                       ; $6f8e: $79
    jp z, $e8ff                                   ; $6f8f: $ca $ff $e8

    rst $20                                       ; $6f92: $e7
    ld c, l                                       ; $6f93: $4d
    cp e                                          ; $6f94: $bb
    ld [hl-], a                                   ; $6f95: $32
    ld l, d                                       ; $6f96: $6a
    ld b, h                                       ; $6f97: $44
    pop bc                                        ; $6f98: $c1
    ld l, c                                       ; $6f99: $69
    ld h, a                                       ; $6f9a: $67
    ld l, c                                       ; $6f9b: $69
    pop bc                                        ; $6f9c: $c1
    db $e4                                        ; $6f9d: $e4
    ld l, d                                       ; $6f9e: $6a
    and e                                         ; $6f9f: $a3
    ld b, d                                       ; $6fa0: $42
    halt                                          ; $6fa1: $76
    jp z, $c0ff                                   ; $6fa2: $ca $ff $c0

    xor b                                         ; $6fa5: $a8
    cp a                                          ; $6fa6: $bf
    db $e3                                        ; $6fa7: $e3
    ld [hl], $be                                  ; $6fa8: $36 $be
    and c                                         ; $6faa: $a1
    ld [hl], $8e                                  ; $6fab: $36 $8e
    jp nz, Jump_05b_6ae0                          ; $6fad: $c2 $e0 $6a

    ld b, d                                       ; $6fb0: $42
    ld [hl], d                                    ; $6fb1: $72
    ld b, b                                       ; $6fb2: $40
    rst $38                                       ; $6fb3: $ff
    add b                                         ; $6fb4: $80
    xor d                                         ; $6fb5: $aa
    ld a, [hl]                                    ; $6fb6: $7e
    ldh [$36], a                                  ; $6fb7: $e0 $36
    dec de                                        ; $6fb9: $1b
    ld b, [hl]                                    ; $6fba: $46
    ld b, a                                       ; $6fbb: $47
    ld a, b                                       ; $6fbc: $78
    and d                                         ; $6fbd: $a2
    ld b, [hl]                                    ; $6fbe: $46
    ld [hl], $c1                                  ; $6fbf: $36 $c1
    pop hl                                        ; $6fc1: $e1
    ret nz                                        ; $6fc2: $c0

    rst $38                                       ; $6fc3: $ff
    ld b, b                                       ; $6fc4: $40
    xor e                                         ; $6fc5: $ab
    ld [hl], e                                    ; $6fc6: $73
    ld c, l                                       ; $6fc7: $4d
    ld d, [hl]                                    ; $6fc8: $56
    jp nz, Jump_05b_7ee2                          ; $6fc9: $c2 $e2 $7e

    add b                                         ; $6fcc: $80
    and a                                         ; $6fcd: $a7
    ld l, a                                       ; $6fce: $6f
    ld l, [hl]                                    ; $6fcf: $6e
    pop bc                                        ; $6fd0: $c1
    ldh [rP1], a                                  ; $6fd1: $e0 $00
    ret nz                                        ; $6fd3: $c0

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
    nop                                           ; $6fe3: $00
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
    nop                                           ; $6ff4: $00
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff

jr_05b_6ff7:
    rst $38                                       ; $6ff7: $ff
    rst $38                                       ; $6ff8: $ff
    rst $38                                       ; $6ff9: $ff
    rst $38                                       ; $6ffa: $ff

jr_05b_6ffb:
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
    nop                                           ; $7005: $00
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
    nop                                           ; $7016: $00
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
    nop                                           ; $7027: $00
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
    nop                                           ; $7038: $00
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
    nop                                           ; $7049: $00
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
    nop                                           ; $705a: $00
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
    nop                                           ; $706b: $00
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
    nop                                           ; $707c: $00
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
    nop                                           ; $708d: $00
    rst $38                                       ; $708e: $ff
    rst $38                                       ; $708f: $ff
    rst $38                                       ; $7090: $ff
    rst $38                                       ; $7091: $ff
    rst $38                                       ; $7092: $ff
    rst $38                                       ; $7093: $ff
    rst $38                                       ; $7094: $ff
    db $f4                                        ; $7095: $f4
    nop                                           ; $7096: $00
    nop                                           ; $7097: $00
    nop                                           ; $7098: $00
    and l                                         ; $7099: $a5
    nop                                           ; $709a: $00
    rst $38                                       ; $709b: $ff
    push hl                                       ; $709c: $e5
    ld [hl-], a                                   ; $709d: $32
    or $e6                                        ; $709e: $f6 $e6
    rst $30                                       ; $70a0: $f7
    rst $20                                       ; $70a1: $e7
    dec [hl]                                      ; $70a2: $35
    db $ec                                        ; $70a3: $ec
    xor $37                                       ; $70a4: $ee $37
    db $ec                                        ; $70a6: $ec
    jp c, $c7f0                                   ; $70a7: $da $f0 $c7

    add sp, $33                                   ; $70aa: $e8 $33
    ld sp, $f2e0                                  ; $70ac: $31 $e0 $f2
    ld [hl], $30                                  ; $70af: $36 $30
    scf                                           ; $70b1: $37
    cp a                                          ; $70b2: $bf
    ld h, $20                                     ; $70b3: $26 $20
    daa                                           ; $70b5: $27
    db $10                                        ; $70b6: $10
    ld d, $17                                     ; $70b7: $16 $17
    jp nz, Jump_000_34f6                          ; $70b9: $c2 $f6 $34

    rst $38                                       ; $70bc: $ff
    ld [hl], $32                                  ; $70bd: $36 $32
    jr nc, jr_05b_70f8                            ; $70bf: $30 $37

    ld sp, $3133                                  ; $70c1: $31 $33 $31
    inc sp                                        ; $70c4: $33
    nop                                           ; $70c5: $00
    and b                                         ; $70c6: $a0
    ei                                            ; $70c7: $fb
    rst $38                                       ; $70c8: $ff
    rst $28                                       ; $70c9: $ef
    nop                                           ; $70ca: $00
    nop                                           ; $70cb: $00
    nop                                           ; $70cc: $00
    push de                                       ; $70cd: $d5
    ld [hl], b                                    ; $70ce: $70
    dec b                                         ; $70cf: $05
    ld [hl], c                                    ; $70d0: $71
    ld a, c                                       ; $70d1: $79
    ld [hl], e                                    ; $70d2: $73
    ld c, a                                       ; $70d3: $4f
    ld [hl], l                                    ; $70d4: $75
    ret nz                                        ; $70d5: $c0

    rra                                           ; $70d6: $1f
    adc d                                         ; $70d7: $8a
    inc bc                                        ; $70d8: $03
    add b                                         ; $70d9: $80
    ld [bc], a                                    ; $70da: $02
    ld h, b                                       ; $70db: $60
    ld bc, $03ef                                  ; $70dc: $01 $ef $03
    db $f4                                        ; $70df: $f4
    inc bc                                        ; $70e0: $03
    adc d                                         ; $70e1: $8a
    inc bc                                        ; $70e2: $03
    add b                                         ; $70e3: $80
    ld [bc], a                                    ; $70e4: $02
    rra                                           ; $70e5: $1f
    ld [bc], a                                    ; $70e6: $02
    ld c, e                                       ; $70e7: $4b
    ld c, $38                                     ; $70e8: $0e $38
    ld bc, $038a                                  ; $70ea: $01 $8a $03
    ld [$0825], sp                                ; $70ed: $08 $25 $08
    dec h                                         ; $70f0: $25
    ld [$0825], sp                                ; $70f1: $08 $25 $08
    dec h                                         ; $70f4: $25
    ld [$0825], sp                                ; $70f5: $08 $25 $08

jr_05b_70f8:
    dec h                                         ; $70f8: $25
    ld [$0825], sp                                ; $70f9: $08 $25 $08
    dec h                                         ; $70fc: $25
    ld [$0825], sp                                ; $70fd: $08 $25 $08
    dec h                                         ; $7100: $25
    ld [$0825], sp                                ; $7101: $08 $25 $08
    dec h                                         ; $7104: $25
    ccf                                           ; $7105: $3f
    dec bc                                        ; $7106: $0b
    dec bc                                        ; $7107: $0b
    dec bc                                        ; $7108: $0b
    ld l, e                                       ; $7109: $6b
    dec bc                                        ; $710a: $0b
    ld c, e                                       ; $710b: $4b
    ld a, [$f7e0]                                 ; $710c: $fa $e0 $f7
    ldh [$b7], a                                  ; $710f: $e0 $b7
    ld c, h                                       ; $7111: $4c
    ld c, h                                       ; $7112: $4c
    inc c                                         ; $7113: $0c
    rst $38                                       ; $7114: $ff
    ldh [$0b], a                                  ; $7115: $e0 $0b
    dec bc                                        ; $7117: $0b
    ld a, [$0ce1]                                 ; $7118: $fa $e1 $0c
    ld bc, $f20c                                  ; $711b: $01 $0c $f2
    ldh [$fd], a                                  ; $711e: $e0 $fd
    push hl                                       ; $7120: $e5
    rst $20                                       ; $7121: $e7
    ld [c], a                                     ; $7122: $e2
    or $e3                                        ; $7123: $f6 $e3
    rst $20                                       ; $7125: $e7
    db $e3                                        ; $7126: $e3
    rst $38                                       ; $7127: $ff
    rst $20                                       ; $7128: $e7
    pop bc                                        ; $7129: $c1
    ldh [$2f], a                                  ; $712a: $e0 $2f
    ld l, e                                       ; $712c: $6b
    dec hl                                        ; $712d: $2b
    ld c, e                                       ; $712e: $4b
    ld c, e                                       ; $712f: $4b
    cp [hl]                                       ; $7130: $be
    ld [c], a                                     ; $7131: $e2
    inc l                                         ; $7132: $2c
    ret nz                                        ; $7133: $c0

    ld a, [c]                                     ; $7134: $f2
    cp c                                          ; $7135: $b9
    ldh [$e0], a                                  ; $7136: $e0 $e0
    or d                                          ; $7138: $b2
    db $e4                                        ; $7139: $e4
    ldh [$e2], a                                  ; $713a: $e0 $e2
    rst $30                                       ; $713c: $f7
    ld [c], a                                     ; $713d: $e2
    ret nz                                        ; $713e: $c0

    add sp, -$3f                                  ; $713f: $e8 $c1
    ldh [$2b], a                                  ; $7141: $e0 $2b
    dec bc                                        ; $7143: $0b
    dec bc                                        ; $7144: $0b
    nop                                           ; $7145: $00
    cp [hl]                                       ; $7146: $be
    db $e3                                        ; $7147: $e3
    ld a, a                                       ; $7148: $7f
    pop hl                                        ; $7149: $e1
    ld l, a                                       ; $714a: $6f
    ldh [$9c], a                                  ; $714b: $e0 $9c
    db $e4                                        ; $714d: $e4
    db $fc                                        ; $714e: $fc
    ld [$e170], a                                 ; $714f: $ea $70 $e1
    and b                                         ; $7152: $a0
    pop hl                                        ; $7153: $e1
    rst $30                                       ; $7154: $f7
    db $e3                                        ; $7155: $e3
    db $10                                        ; $7156: $10
    ld a, a                                       ; $7157: $7f
    rst $20                                       ; $7158: $e7
    pop bc                                        ; $7159: $c1
    db $e3                                        ; $715a: $e3
    ret nz                                        ; $715b: $c0

    pop hl                                        ; $715c: $e1
    ld a, h                                       ; $715d: $7c
    ldh [$2c], a                                  ; $715e: $e0 $2c
    ld a, $e0                                     ; $7160: $3e $e0
    ret nz                                        ; $7162: $c0

    db $e3                                        ; $7163: $e3
    db $fd                                        ; $7164: $fd
    db $ec                                        ; $7165: $ec
    ld h, h                                       ; $7166: $64
    ld c, c                                       ; $7167: $49
    and $40                                       ; $7168: $e6 $40
    xor $2b                                       ; $716a: $ee $2b
    pop bc                                        ; $716c: $c1
    push hl                                       ; $716d: $e5
    ld a, l                                       ; $716e: $7d
    db $e4                                        ; $716f: $e4
    dec bc                                        ; $7170: $0b
    ld l, h                                       ; $7171: $6c
    call $20e5                                    ; $7172: $cd $e5 $20
    add d                                         ; $7175: $82
    db $eb                                        ; $7176: $eb
    pop af                                        ; $7177: $f1
    jp nz, $e7f7                                  ; $7178: $c2 $f7 $e7

    rst $10                                       ; $717b: $d7
    ret nz                                        ; $717c: $c0

    dec sp                                        ; $717d: $3b
    db $e3                                        ; $717e: $e3
    dec bc                                        ; $717f: $0b
    ld b, d                                       ; $7180: $42
    and $be                                       ; $7181: $e6 $be
    ldh [rNR41], a                                ; $7183: $e0 $20
    halt                                          ; $7185: $76
    pop hl                                        ; $7186: $e1
    jp nz, $87f0                                  ; $7187: $c2 $f0 $87

    db $e4                                        ; $718a: $e4
    cp c                                          ; $718b: $b9
    call nz, $cbbf                                ; $718c: $c4 $bf $cb
    dec bc                                        ; $718f: $0b
    cp a                                          ; $7190: $bf
    ldh [$c1], a                                  ; $7191: $e0 $c1
    call nz, $fb00                                ; $7193: $c4 $00 $fb
    ret nz                                        ; $7196: $c0

    add c                                         ; $7197: $81
    and $8c                                       ; $7198: $e6 $8c
    pop bc                                        ; $719a: $c1
    db $fc                                        ; $719b: $fc
    ld [$e6ec], a                                 ; $719c: $ea $ec $e6
    ld a, a                                       ; $719f: $7f
    call z, $c040                                 ; $71a0: $cc $40 $c0
    cp a                                          ; $71a3: $bf
    ldh [rP1], a                                  ; $71a4: $e0 $00
    ld b, b                                       ; $71a6: $40
    jp $c138                                      ; $71a7: $c3 $38 $c1


    rrca                                          ; $71aa: $0f
    add sp, $56                                   ; $71ab: $e8 $56
    push hl                                       ; $71ad: $e5
    pop bc                                        ; $71ae: $c1
    jp nz, $e6f4                                  ; $71af: $c2 $f4 $e6

    ld b, c                                       ; $71b2: $41
    push hl                                       ; $71b3: $e5
    and $c5                                       ; $71b4: $e6 $c5
    nop                                           ; $71b6: $00
    inc b                                         ; $71b7: $04
    pop bc                                        ; $71b8: $c1
    ld [bc], a                                    ; $71b9: $02
    ld [c], a                                     ; $71ba: $e2
    or $c0                                        ; $71bb: $f6 $c0
    ld [hl], a                                    ; $71bd: $77
    ret nz                                        ; $71be: $c0

    inc hl                                        ; $71bf: $23
    call nz, $e40b                                ; $71c0: $c4 $0b $e4
    ei                                            ; $71c3: $fb
    and h                                         ; $71c4: $a4
    ld hl, sp-$19                                 ; $71c5: $f8 $e7
    nop                                           ; $71c7: $00
    rst $30                                       ; $71c8: $f7
    rst $20                                       ; $71c9: $e7
    ret nz                                        ; $71ca: $c0

    ld [$a1fd], a                                 ; $71cb: $ea $fd $a1
    dec sp                                        ; $71ce: $3b
    ret nz                                        ; $71cf: $c0

    scf                                           ; $71d0: $37
    ret nz                                        ; $71d1: $c0

    db $fc                                        ; $71d2: $fc
    and e                                         ; $71d3: $a3
    pop hl                                        ; $71d4: $e1

Jump_05b_71d5:
    pop bc                                        ; $71d5: $c1
    sub a                                         ; $71d6: $97
    and $43                                       ; $71d7: $e6 $43
    inc l                                         ; $71d9: $2c
    inc l                                         ; $71da: $2c
    db $10                                        ; $71db: $10
    pop bc                                        ; $71dc: $c1
    rst $38                                       ; $71dd: $ff
    and d                                         ; $71de: $a2
    rst $30                                       ; $71df: $f7
    and $66                                       ; $71e0: $e6 $66
    rst $00                                       ; $71e2: $c7
    ld c, h                                       ; $71e3: $4c
    add h                                         ; $71e4: $84
    and c                                         ; $71e5: $a1
    nop                                           ; $71e6: $00
    inc a                                         ; $71e7: $3c
    call nz, $c136                                ; $71e8: $c4 $36 $c1
    and d                                         ; $71eb: $a2
    and l                                         ; $71ec: $a5
    sub b                                         ; $71ed: $90
    jp $e381                                      ; $71ee: $c3 $81 $e3


    rst $38                                       ; $71f1: $ff
    and l                                         ; $71f2: $a5
    rst $30                                       ; $71f3: $f7
    and $ae                                       ; $71f4: $e6 $ae
    ld [c], a                                     ; $71f6: $e2
    ld [$e5c0], sp                                ; $71f7: $08 $c0 $e5
    ret nz                                        ; $71fa: $c0

    and b                                         ; $71fb: $a0
    cp l                                          ; $71fc: $bd
    and e                                         ; $71fd: $a3
    dec bc                                        ; $71fe: $0b
    or $a1                                        ; $71ff: $f6 $a1
    db $fc                                        ; $7201: $fc
    and c                                         ; $7202: $a1
    nop                                           ; $7203: $00
    db $e4                                        ; $7204: $e4
    ld [hl], $c8                                  ; $7205: $36 $c8
    inc b                                         ; $7207: $04
    ld a, $ec                                     ; $7208: $3e $ec
    sbc $a9                                       ; $720a: $de $a9
    dec bc                                        ; $720c: $0b
    ld b, c                                       ; $720d: $41
    and b                                         ; $720e: $a0
    ld a, l                                       ; $720f: $7d
    and b                                         ; $7210: $a0
    dec a                                         ; $7211: $3d
    and d                                         ; $7212: $a2
    rst $30                                       ; $7213: $f7
    add e                                         ; $7214: $83
    adc c                                         ; $7215: $89
    rst $20                                       ; $7216: $e7
    jr nz, @+$07                                  ; $7217: $20 $05

    and d                                         ; $7219: $a2
    db $fc                                        ; $721a: $fc
    db $e3                                        ; $721b: $e3
    ld l, h                                       ; $721c: $6c
    jp $e5f7                                      ; $721d: $c3 $f7 $e5


    ret nz                                        ; $7220: $c0

    db $ec                                        ; $7221: $ec
    ld c, e                                       ; $7222: $4b
    nop                                           ; $7223: $00
    ld [c], a                                     ; $7224: $e2
    ld a, $c3                                     ; $7225: $3e $c3
    nop                                           ; $7227: $00
    ld b, b                                       ; $7228: $40
    and [hl]                                      ; $7229: $a6
    rst $00                                       ; $722a: $c7
    add h                                         ; $722b: $84
    db $fd                                        ; $722c: $fd
    and a                                         ; $722d: $a7
    rst $30                                       ; $722e: $f7
    rst $20                                       ; $722f: $e7
    or $c0                                        ; $7230: $f6 $c0
    db $fc                                        ; $7232: $fc
    add [hl]                                      ; $7233: $86
    ld c, d                                       ; $7234: $4a
    ldh [rSCX], a                                 ; $7235: $e0 $43
    and d                                         ; $7237: $a2
    nop                                           ; $7238: $00
    ld a, [hl-]                                   ; $7239: $3a
    and h                                         ; $723a: $a4
    ret nz                                        ; $723b: $c0

    add sp, -$70                                  ; $723c: $e8 $90
    add e                                         ; $723e: $83
    cp l                                          ; $723f: $bd
    and [hl]                                      ; $7240: $a6
    inc [hl]                                      ; $7241: $34
    rst $20                                       ; $7242: $e7
    or [hl]                                       ; $7243: $b6
    pop bc                                        ; $7244: $c1
    ret nz                                        ; $7245: $c0

    jp hl                                         ; $7246: $e9


    push bc                                       ; $7247: $c5
    call nz, $fa02                                ; $7248: $c4 $02 $fa
    add h                                         ; $724b: $84
    dec bc                                        ; $724c: $0b
    adc [hl]                                      ; $724d: $8e
    call nz, $855a                                ; $724e: $c4 $5a $85
    add b                                         ; $7251: $80
    ret nz                                        ; $7252: $c0

    adc a                                         ; $7253: $8f
    add h                                         ; $7254: $84
    adc d                                         ; $7255: $8a
    rst $20                                       ; $7256: $e7
    cp a                                          ; $7257: $bf
    add $00                                       ; $7258: $c6 $00
    jr nz, @-$79                                  ; $725a: $20 $85

    ld d, l                                       ; $725c: $55
    push hl                                       ; $725d: $e5
    inc de                                        ; $725e: $13
    add h                                         ; $725f: $84
    nop                                           ; $7260: $00
    sub e                                         ; $7261: $93
    xor h                                         ; $7262: $ac
    jp hl                                         ; $7263: $e9


    and c                                         ; $7264: $a1
    adc d                                         ; $7265: $8a
    push de                                       ; $7266: $d5
    ldh a, [$c1]                                  ; $7267: $f0 $c1
    ld [hl], b                                    ; $7269: $70
    nop                                           ; $726a: $00
    ld a, [bc]                                    ; $726b: $0a
    ret z                                         ; $726c: $c8

    ld h, c                                       ; $726d: $61
    adc h                                         ; $726e: $8c
    push de                                       ; $726f: $d5
    ld l, a                                       ; $7270: $6f
    pop bc                                        ; $7271: $c1
    ld [hl], c                                    ; $7272: $71
    jp z, $ada8                                   ; $7273: $ca $a8 $ad

    and b                                         ; $7276: $a0
    ld a, $e8                                     ; $7277: $3e $e8
    push de                                       ; $7279: $d5
    ld [hl], b                                    ; $727a: $70
    nop                                           ; $727b: $00
    db $ec                                        ; $727c: $ec
    di                                            ; $727d: $f3
    ret nz                                        ; $727e: $c0

    pop af                                        ; $727f: $f1
    push de                                       ; $7280: $d5
    ld [hl], l                                    ; $7281: $75
    pop bc                                        ; $7282: $c1
    ld l, a                                       ; $7283: $6f
    rst $38                                       ; $7284: $ff
    xor b                                         ; $7285: $a8
    sbc [hl]                                      ; $7286: $9e
    jp z, Jump_05b_71d5                           ; $7287: $ca $d5 $71

    db $ec                                        ; $728a: $ec
    ld sp, hl                                     ; $728b: $f9
    nop                                           ; $728c: $00
    ret nz                                        ; $728d: $c0

    db $eb                                        ; $728e: $eb
    push de                                       ; $728f: $d5
    ld [hl], e                                    ; $7290: $73
    pop bc                                        ; $7291: $c1
    ld [hl], d                                    ; $7292: $72
    call nz, $d56c                                ; $7293: $c4 $6c $d5
    ld a, c                                       ; $7296: $79
    ld b, c                                       ; $7297: $41
    jp nc, $b1f6                                  ; $7298: $d2 $f6 $b1

    push de                                       ; $729b: $d5
    ld [hl], l                                    ; $729c: $75
    nop                                           ; $729d: $00
    ld l, h                                       ; $729e: $6c
    pop de                                        ; $729f: $d1
    xor h                                         ; $72a0: $ac
    xor d                                         ; $72a1: $aa
    and h                                         ; $72a2: $a4
    ld c, b                                       ; $72a3: $48
    push de                                       ; $72a4: $d5
    ld [hl], d                                    ; $72a5: $72
    ld b, c                                       ; $72a6: $41
    ld d, d                                       ; $72a7: $52
    adc h                                         ; $72a8: $8c
    jp nc, Jump_05b_71d5                          ; $72a9: $d2 $d5 $71

    add b                                         ; $72ac: $80
    jp nc, $c000                                  ; $72ad: $d2 $00 $c0

    db $f4                                        ; $72b0: $f4
    push de                                       ; $72b1: $d5
    ld [hl], c                                    ; $72b2: $71
    ld l, h                                       ; $72b3: $6c
    jp nc, $d60f                                  ; $72b4: $d2 $0f $d6

    push de                                       ; $72b7: $d5
    ld l, a                                       ; $72b8: $6f
    add b                                         ; $72b9: $80
    jp c, Jump_000_08fe                           ; $72ba: $da $fe $08

    push de                                       ; $72bd: $d5
    ld [hl], a                                    ; $72be: $77
    nop                                           ; $72bf: $00
    ld b, c                                       ; $72c0: $41
    ld d, c                                       ; $72c1: $51
    ld b, b                                       ; $72c2: $40
    db $d3                                        ; $72c3: $d3
    push de                                       ; $72c4: $d5
    ld [hl], e                                    ; $72c5: $73
    ld b, c                                       ; $72c6: $41
    ld d, b                                       ; $72c7: $50
    ld [hl], $87                                  ; $72c8: $36 $87
    ld hl, $d570                                  ; $72ca: $21 $70 $d5
    ld l, h                                       ; $72cd: $6c
    ld b, c                                       ; $72ce: $41
    ld d, e                                       ; $72cf: $53
    nop                                           ; $72d0: $00
    ld b, b                                       ; $72d1: $40
    adc [hl]                                      ; $72d2: $8e
    push de                                       ; $72d3: $d5
    halt                                          ; $72d4: $76
    ld l, h                                       ; $72d5: $6c
    db $db                                        ; $72d6: $db
    ld a, b                                       ; $72d7: $78
    ldh a, [$6c]                                  ; $72d8: $f0 $6c
    rst $18                                       ; $72da: $df
    ld l, h                                       ; $72db: $6c
    ld l, c                                       ; $72dc: $69
    pop bc                                        ; $72dd: $c1
    db $fc                                        ; $72de: $fc
    ld l, h                                       ; $72df: $6c
    call nc, $c000                                ; $72e0: $d4 $00 $c0
    rst $38                                       ; $72e3: $ff
    ld l, d                                       ; $72e4: $6a
    xor d                                         ; $72e5: $aa
    ld b, c                                       ; $72e6: $41
    ld c, h                                       ; $72e7: $4c
    cp h                                          ; $72e8: $bc
    cp c                                          ; $72e9: $b9
    dec a                                         ; $72ea: $3d
    ld a, [c]                                     ; $72eb: $f2
    ld b, c                                       ; $72ec: $41
    ld c, h                                       ; $72ed: $4c
    ld b, b                                       ; $72ee: $40
    ld b, l                                       ; $72ef: $45
    ld a, c                                       ; $72f0: $79
    ret                                           ; $72f1: $c9


    nop                                           ; $72f2: $00
    push de                                       ; $72f3: $d5
    dec [hl]                                      ; $72f4: $35
    ld b, c                                       ; $72f5: $41
    ld d, e                                       ; $72f6: $53
    ret nz                                        ; $72f7: $c0

    rst $28                                       ; $72f8: $ef
    nop                                           ; $72f9: $00
    ret c                                         ; $72fa: $d8

    ld b, c                                       ; $72fb: $41
    ld c, [hl]                                    ; $72fc: $4e
    db $fd                                        ; $72fd: $fd
    sub e                                         ; $72fe: $93
    sub h                                         ; $72ff: $94
    or $25                                        ; $7300: $f6 $25
    ld [hl], b                                    ; $7302: $70
    nop                                           ; $7303: $00
    jp nz, $d56f                                  ; $7304: $c2 $6f $d5

    dec [hl]                                      ; $7307: $35
    dec hl                                        ; $7308: $2b
    rst $10                                       ; $7309: $d7
    rst $38                                       ; $730a: $ff
    rst $38                                       ; $730b: $ff
    ld l, h                                       ; $730c: $6c
    reti                                          ; $730d: $d9


    ret nz                                        ; $730e: $c0

    rst $38                                       ; $730f: $ff
    add b                                         ; $7310: $80
    rst $38                                       ; $7311: $ff
    rst $38                                       ; $7312: $ff
    rst $38                                       ; $7313: $ff
    nop                                           ; $7314: $00
    ld e, h                                       ; $7315: $5c
    inc bc                                        ; $7316: $03
    ld h, a                                       ; $7317: $67
    sub $ff                                       ; $7318: $d6 $ff
    rst $38                                       ; $731a: $ff
    ld c, a                                       ; $731b: $4f
    and [hl]                                      ; $731c: $a6
    ld h, a                                       ; $731d: $67
    ret c                                         ; $731e: $d8

    sbc b                                         ; $731f: $98
    and $58                                       ; $7320: $e6 $58
    dec c                                         ; $7322: $0d
    di                                            ; $7323: $f3
    db $eb                                        ; $7324: $eb
    nop                                           ; $7325: $00
    ld h, a                                       ; $7326: $67
    db $db                                        ; $7327: $db
    rla                                           ; $7328: $17
    jp nc, $cf76                                  ; $7329: $d2 $76 $cf

    ld h, a                                       ; $732c: $67
    sub $51                                       ; $732d: $d6 $51
    ld b, $ff                                     ; $732f: $06 $ff
    rst $38                                       ; $7331: $ff
    dec de                                        ; $7332: $1b
    cp b                                          ; $7333: $b8
    rst $38                                       ; $7334: $ff
    rst $38                                       ; $7335: $ff
    nop                                           ; $7336: $00
    ld h, d                                       ; $7337: $62
    sbc e                                         ; $7338: $9b
    rst $38                                       ; $7339: $ff
    rst $38                                       ; $733a: $ff
    ret nz                                        ; $733b: $c0

    rst $38                                       ; $733c: $ff
    rst $38                                       ; $733d: $ff
    rst $38                                       ; $733e: $ff
    rst $38                                       ; $733f: $ff
    rst $38                                       ; $7340: $ff
    dec e                                         ; $7341: $1d
    ld [hl], d                                    ; $7342: $72
    rst $38                                       ; $7343: $ff
    rst $38                                       ; $7344: $ff
    rst $38                                       ; $7345: $ff
    rst $38                                       ; $7346: $ff
    nop                                           ; $7347: $00
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
    nop                                           ; $7358: $00
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
    sbc c                                         ; $7367: $99
    cp d                                          ; $7368: $ba
    nop                                           ; $7369: $00
    db $dd                                        ; $736a: $dd
    rst $38                                       ; $736b: $ff
    rst $38                                       ; $736c: $ff
    rst $38                                       ; $736d: $ff
    rst $38                                       ; $736e: $ff
    rst $38                                       ; $736f: $ff
    rst $38                                       ; $7370: $ff
    rst $38                                       ; $7371: $ff
    rst $38                                       ; $7372: $ff
    rst $38                                       ; $7373: $ff
    jp c, Jump_000_0091                           ; $7374: $da $91 $00

    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    ccf                                           ; $7379: $3f
    ld sp, $3131                                  ; $737a: $31 $31 $31
    ld c, l                                       ; $737d: $4d
    ld d, [hl]                                    ; $737e: $56
    ld b, a                                       ; $737f: $47
    ld a, [$f7e0]                                 ; $7380: $fa $e0 $f7
    ldh [rIE], a                                  ; $7383: $e0 $ff
    rla                                           ; $7385: $17
    jr z, jr_05b_73a8                             ; $7386: $28 $20

    jr nz, @+$22                                  ; $7388: $20 $20

    ld [$3131], sp                                ; $738a: $08 $31 $31
    pop af                                        ; $738d: $f1
    nop                                           ; $738e: $00
    rst $38                                       ; $738f: $ff
    rst $38                                       ; $7390: $ff
    rst $20                                       ; $7391: $e7
    and $c1                                       ; $7392: $e6 $c1
    ldh [$32], a                                  ; $7394: $e0 $32
    ld l, l                                       ; $7396: $6d
    ld [hl], $46                                  ; $7397: $36 $46
    ld d, $be                                     ; $7399: $16 $be
    ld [c], a                                     ; $739b: $e2
    dec d                                         ; $739c: $15
    ld d, $c0                                     ; $739d: $16 $c0
    ldh [$0d], a                                  ; $739f: $e0 $0d
    ret nz                                        ; $73a1: $c0

    rst $38                                       ; $73a2: $ff
    ret nz                                        ; $73a3: $c0

    ld [$e0c1], a                                 ; $73a4: $ea $c1 $e0
    daa                                           ; $73a7: $27

jr_05b_73a8:
    ld l, l                                       ; $73a8: $6d
    jr nc, @+$32                                  ; $73a9: $30 $30

    cp [hl]                                       ; $73ab: $be
    db $e3                                        ; $73ac: $e3
    ld a, a                                       ; $73ad: $7f
    ldh [$0c], a                                  ; $73ae: $e0 $0c
    ld l, a                                       ; $73b0: $6f
    ldh [$ca], a                                  ; $73b1: $e0 $ca
    rst $38                                       ; $73b3: $ff
    db $fc                                        ; $73b4: $fc
    add sp, -$19                                  ; $73b5: $e8 $e7
    pop bc                                        ; $73b7: $c1
    db $e3                                        ; $73b8: $e3
    jr nc, jr_05b_7425                            ; $73b9: $30 $6a

    ld l, d                                       ; $73bb: $6a
    ld [hl], $46                                  ; $73bc: $36 $46
    ld c, l                                       ; $73be: $4d
    rra                                           ; $73bf: $1f
    ld sp, $2715                                  ; $73c0: $31 $15 $27
    dec b                                         ; $73c3: $05
    dec d                                         ; $73c4: $15
    ret nz                                        ; $73c5: $c0

    rst $38                                       ; $73c6: $ff
    ret nz                                        ; $73c7: $c0

    db $ed                                        ; $73c8: $ed
    pop bc                                        ; $73c9: $c1
    ld [c], a                                     ; $73ca: $e2
    rst $18                                       ; $73cb: $df
    ld l, l                                       ; $73cc: $6d
    jr nc, @+$6d                                  ; $73cd: $30 $6b

    ld [hl-], a                                   ; $73cf: $32
    ld c, l                                       ; $73d0: $4d
    dec sp                                        ; $73d1: $3b
    ld [c], a                                     ; $73d2: $e2
    inc d                                         ; $73d3: $14
    inc d                                         ; $73d4: $14
    ld a, b                                       ; $73d5: $78
    jp z, Jump_05b_40ff                           ; $73d6: $ca $ff $40

    ld [$e3c1], a                                 ; $73d9: $ea $c1 $e3
    jr nc, @+$6d                                  ; $73dc: $30 $6b

    jr nc, jr_05b_7419                            ; $73de: $30 $39

    cp e                                          ; $73e0: $bb
    jp nz, Jump_000_24c3                          ; $73e1: $c2 $c3 $24

    inc h                                         ; $73e4: $24
    jp z, $c0ff                                   ; $73e5: $ca $ff $c0

    set 0, c                                      ; $73e8: $cb $c1
    ld [c], a                                     ; $73ea: $e2
    ret nz                                        ; $73eb: $c0

    ldh [rOBP0], a                                ; $73ec: $e0 $48
    ld c, c                                       ; $73ee: $49
    cp b                                          ; $73ef: $b8
    cp h                                          ; $73f0: $bc
    jp $ffca                                      ; $73f1: $c3 $ca $ff


    add b                                         ; $73f4: $80
    ret                                           ; $73f5: $c9


    ld sp, $4849                                  ; $73f6: $31 $49 $48
    cp $c1                                        ; $73f9: $fe $c1
    jr nc, jr_05b_7404                            ; $73fb: $30 $07

    ld l, l                                       ; $73fd: $6d
    ld l, h                                       ; $73fe: $6c
    ld l, h                                       ; $73ff: $6c
    ld a, a                                       ; $7400: $7f
    ldh [$3c], a                                  ; $7401: $e0 $3c
    pop bc                                        ; $7403: $c1

jr_05b_7404:
    jp z, $e8ff                                   ; $7404: $ca $ff $e8

    rst $20                                       ; $7407: $e7
    ret nc                                        ; $7408: $d0

    pop bc                                        ; $7409: $c1
    rst $30                                       ; $740a: $f7
    ld d, d                                       ; $740b: $52
    ld l, b                                       ; $740c: $68
    ld l, b                                       ; $740d: $68
    cp a                                          ; $740e: $bf
    ret nz                                        ; $740f: $c0

    ld l, b                                       ; $7410: $68
    ld l, b                                       ; $7411: $68
    ld l, b                                       ; $7412: $68
    ld d, d                                       ; $7413: $52
    ld hl, sp-$40                                 ; $7414: $f8 $c0
    rst $38                                       ; $7416: $ff
    xor $ed                                       ; $7417: $ee $ed

jr_05b_7419:
    ld d, b                                       ; $7419: $50
    pop bc                                        ; $741a: $c1
    ld d, d                                       ; $741b: $52
    ld l, h                                       ; $741c: $6c
    ld l, l                                       ; $741d: $6d
    ld l, c                                       ; $741e: $69
    ld l, d                                       ; $741f: $6a
    ld [c], a                                     ; $7420: $e2
    ld a, e                                       ; $7421: $7b
    pop bc                                        ; $7422: $c1
    ld d, e                                       ; $7423: $53
    ld b, b                                       ; $7424: $40

jr_05b_7425:
    rst $38                                       ; $7425: $ff
    xor $ed                                       ; $7426: $ee $ed
    ret nc                                        ; $7428: $d0

    and c                                         ; $7429: $a1
    ld d, e                                       ; $742a: $53
    jr nc, jr_05b_7498                            ; $742b: $30 $6b

    add l                                         ; $742d: $85
    ld l, c                                       ; $742e: $69
    inc a                                         ; $742f: $3c
    pop bc                                        ; $7430: $c1
    ld l, l                                       ; $7431: $6d
    add b                                         ; $7432: $80
    ldh [$7b], a                                  ; $7433: $e0 $7b
    and c                                         ; $7435: $a1
    jp z, $c0ff                                   ; $7436: $ca $ff $c0

    add sp, $08                                   ; $7439: $e8 $08
    rlca                                          ; $743b: $07
    ld sp, $83a7                                  ; $743c: $31 $a7 $83
    ret nz                                        ; $743f: $c0

    ld [c], a                                     ; $7440: $e2
    dec a                                         ; $7441: $3d
    ret nz                                        ; $7442: $c0

    add b                                         ; $7443: $80
    ldh [$fc], a                                  ; $7444: $e0 $fc
    and c                                         ; $7446: $a1
    jp z, Jump_000_3eff                           ; $7447: $ca $ff $3e

    add b                                         ; $744a: $80
    add sp, $00                                   ; $744b: $e8 $00
    ld sp, $79a1                                  ; $744d: $31 $a1 $79
    ld [hl], c                                    ; $7450: $71
    add b                                         ; $7451: $80
    ldh [$3d], a                                  ; $7452: $e0 $3d
    pop bc                                        ; $7454: $c1
    db $e3                                        ; $7455: $e3
    add e                                         ; $7456: $83
    ld [hl], b                                    ; $7457: $70
    rst $30                                       ; $7458: $f7
    add d                                         ; $7459: $82
    jp z, $c0ff                                   ; $745a: $ca $ff $c0

    db $eb                                        ; $745d: $eb
    add b                                         ; $745e: $80
    ld a, c                                       ; $745f: $79
    ld [hl], c                                    ; $7460: $71
    dec e                                         ; $7461: $1d
    ld l, c                                       ; $7462: $69
    cp $a1                                        ; $7463: $fe $a1
    ld c, b                                       ; $7465: $48
    halt                                          ; $7466: $76
    xor [hl]                                      ; $7467: $ae
    cp a                                          ; $7468: $bf
    ld [c], a                                     ; $7469: $e2
    jp z, $c0ff                                   ; $746a: $ca $ff $c0

    db $ec                                        ; $746d: $ec
    inc e                                         ; $746e: $1c
    cp a                                          ; $746f: $bf
    ldh [$3b], a                                  ; $7470: $e0 $3b
    and c                                         ; $7472: $a1
    add e                                         ; $7473: $83
    add b                                         ; $7474: $80
    add b                                         ; $7475: $80
    cp a                                          ; $7476: $bf
    ld [c], a                                     ; $7477: $e2
    jp z, $c0ff                                   ; $7478: $ca $ff $c0

    db $ed                                        ; $747b: $ed
    ld a, a                                       ; $747c: $7f
    add b                                         ; $747d: $80
    ld a, c                                       ; $747e: $79
    ld l, [hl]                                    ; $747f: $6e
    ld d, h                                       ; $7480: $54
    ld d, h                                       ; $7481: $54
    ld d, l                                       ; $7482: $55
    halt                                          ; $7483: $76
    rst $30                                       ; $7484: $f7
    ldh [rP1], a                                  ; $7485: $e0 $00
    ld a, [hl]                                    ; $7487: $7e
    pop hl                                        ; $7488: $e1
    jp z, $ffff                                   ; $7489: $ca $ff $ff

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
    nop                                           ; $7497: $00

jr_05b_7498:
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
    nop                                           ; $74a8: $00
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
    nop                                           ; $74b9: $00
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
    nop                                           ; $74ca: $00
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
    nop                                           ; $74db: $00
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
    nop                                           ; $74ec: $00
    rst $38                                       ; $74ed: $ff
    rst $38                                       ; $74ee: $ff
    rst $38                                       ; $74ef: $ff
    rst $38                                       ; $74f0: $ff
    rst $38                                       ; $74f1: $ff
    rst $38                                       ; $74f2: $ff
    rst $38                                       ; $74f3: $ff
    rst $38                                       ; $74f4: $ff

Call_05b_74f5:
    rst $38                                       ; $74f5: $ff
    rst $38                                       ; $74f6: $ff
    rst $38                                       ; $74f7: $ff
    rst $38                                       ; $74f8: $ff
    rst $38                                       ; $74f9: $ff
    rst $38                                       ; $74fa: $ff
    rst $38                                       ; $74fb: $ff
    rst $38                                       ; $74fc: $ff
    nop                                           ; $74fd: $00
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
    nop                                           ; $750e: $00
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
    nop                                           ; $751f: $00
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
    nop                                           ; $7530: $00
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
    nop                                           ; $7541: $00
    rst $38                                       ; $7542: $ff
    rst $38                                       ; $7543: $ff
    rst $38                                       ; $7544: $ff
    rst $38                                       ; $7545: $ff
    rst $38                                       ; $7546: $ff
    rst $38                                       ; $7547: $ff
    rst $38                                       ; $7548: $ff
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    di                                            ; $754b: $f3
    nop                                           ; $754c: $00
    nop                                           ; $754d: $00
    nop                                           ; $754e: $00
    and l                                         ; $754f: $a5
    nop                                           ; $7550: $00
    rst $38                                       ; $7551: $ff
    push hl                                       ; $7552: $e5
    ld [hl-], a                                   ; $7553: $32
    or $e6                                        ; $7554: $f6 $e6
    rst $30                                       ; $7556: $f7
    rst $20                                       ; $7557: $e7
    dec [hl]                                      ; $7558: $35
    db $ec                                        ; $7559: $ec
    xor $37                                       ; $755a: $ee $37
    db $ec                                        ; $755c: $ec
    jp c, $c7f0                                   ; $755d: $da $f0 $c7

    add sp, $33                                   ; $7560: $e8 $33
    ld sp, $f2e0                                  ; $7562: $31 $e0 $f2
    ld [hl], $30                                  ; $7565: $36 $30
    scf                                           ; $7567: $37
    cp a                                          ; $7568: $bf
    ld h, $20                                     ; $7569: $26 $20
    daa                                           ; $756b: $27
    db $10                                        ; $756c: $10
    ld d, $17                                     ; $756d: $16 $17
    jp nz, Jump_000_34f6                          ; $756f: $c2 $f6 $34

    rst $38                                       ; $7572: $ff
    ld [hl], $32                                  ; $7573: $36 $32
    jr nc, jr_05b_75ae                            ; $7575: $30 $37

    ld sp, $3133                                  ; $7577: $31 $33 $31
    inc sp                                        ; $757a: $33
    nop                                           ; $757b: $00
    and b                                         ; $757c: $a0
    ei                                            ; $757d: $fb
    rst $38                                       ; $757e: $ff
    rst $28                                       ; $757f: $ef
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    adc e                                         ; $7583: $8b
    ld [hl], l                                    ; $7584: $75
    cp e                                          ; $7585: $bb
    ld [hl], l                                    ; $7586: $75
    ldh a, [rPCM34]                               ; $7587: $f0 $77
    rst $00                                       ; $7589: $c7
    ld a, c                                       ; $758a: $79
    ret nz                                        ; $758b: $c0

    rra                                           ; $758c: $1f
    adc d                                         ; $758d: $8a
    inc bc                                        ; $758e: $03
    add b                                         ; $758f: $80
    ld [bc], a                                    ; $7590: $02
    ld h, b                                       ; $7591: $60
    ld bc, $03ef                                  ; $7592: $01 $ef $03
    db $f4                                        ; $7595: $f4
    inc bc                                        ; $7596: $03
    adc d                                         ; $7597: $8a
    inc bc                                        ; $7598: $03
    add b                                         ; $7599: $80
    ld [bc], a                                    ; $759a: $02
    rra                                           ; $759b: $1f
    ld [bc], a                                    ; $759c: $02
    ld c, e                                       ; $759d: $4b
    ld c, $38                                     ; $759e: $0e $38
    ld bc, $038a                                  ; $75a0: $01 $8a $03
    ld [$0825], sp                                ; $75a3: $08 $25 $08
    dec h                                         ; $75a6: $25
    ld [$0825], sp                                ; $75a7: $08 $25 $08
    dec h                                         ; $75aa: $25
    ld [$0825], sp                                ; $75ab: $08 $25 $08

jr_05b_75ae:
    dec h                                         ; $75ae: $25
    ld [$0825], sp                                ; $75af: $08 $25 $08
    dec h                                         ; $75b2: $25
    ld [$0825], sp                                ; $75b3: $08 $25 $08
    dec h                                         ; $75b6: $25
    ld [$0825], sp                                ; $75b7: $08 $25 $08
    dec h                                         ; $75ba: $25
    db $fd                                        ; $75bb: $fd
    inc c                                         ; $75bc: $0c
    rst $38                                       ; $75bd: $ff
    db $e4                                        ; $75be: $e4
    dec bc                                        ; $75bf: $0b
    dec bc                                        ; $75c0: $0b
    dec bc                                        ; $75c1: $0b
    ld l, e                                       ; $75c2: $6b
    dec bc                                        ; $75c3: $0b
    dec bc                                        ; $75c4: $0b
    ccf                                           ; $75c5: $3f
    ld c, e                                       ; $75c6: $4b
    dec bc                                        ; $75c7: $0b
    ld c, e                                       ; $75c8: $4b
    ld c, e                                       ; $75c9: $4b
    dec bc                                        ; $75ca: $0b
    dec bc                                        ; $75cb: $0b
    db $ec                                        ; $75cc: $ec
    push hl                                       ; $75cd: $e5
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
    or h                                          ; $75d0: $b4
    rst $20                                       ; $75d1: $e7
    and $c1                                       ; $75d2: $e6 $c1
    pop hl                                        ; $75d4: $e1
    ld l, e                                       ; $75d5: $6b
    jp nz, $4be2                                  ; $75d6: $c2 $e2 $4b

    ld a, [bc]                                    ; $75d9: $0a
    ret nz                                        ; $75da: $c0

    db $e3                                        ; $75db: $e3
    ld c, h                                       ; $75dc: $4c
    dec b                                         ; $75dd: $05
    ld c, h                                       ; $75de: $4c
    db $fd                                        ; $75df: $fd
    pop hl                                        ; $75e0: $e1
    inc c                                         ; $75e1: $0c
    db $fd                                        ; $75e2: $fd
    push hl                                       ; $75e3: $e5
    db $f4                                        ; $75e4: $f4
    db $e4                                        ; $75e5: $e4
    pop bc                                        ; $75e6: $c1
    rst $30                                       ; $75e7: $f7
    add c                                         ; $75e8: $81
    pop hl                                        ; $75e9: $e1
    ld sp, hl                                     ; $75ea: $f9
    pop hl                                        ; $75eb: $e1
    nop                                           ; $75ec: $00
    add b                                         ; $75ed: $80
    push hl                                       ; $75ee: $e5
    jp $bee1                                      ; $75ef: $c3 $e1 $be


    add sp, -$11                                  ; $75f2: $e8 $ef
    db $e4                                        ; $75f4: $e4
    halt                                          ; $75f5: $76
    di                                            ; $75f6: $f3
    ld c, h                                       ; $75f7: $4c
    ldh [$81], a                                  ; $75f8: $e0 $81
    ldh [rLY], a                                  ; $75fa: $e0 $44
    ldh [rSC], a                                  ; $75fc: $e0 $02
    rst $30                                       ; $75fe: $f7
    pop hl                                        ; $75ff: $e1
    dec hl                                        ; $7600: $2b
    add b                                         ; $7601: $80
    push hl                                       ; $7602: $e5
    ld a, [hl]                                    ; $7603: $7e
    ld [c], a                                     ; $7604: $e2
    ld a, d                                       ; $7605: $7a
    ld [c], a                                     ; $7606: $e2
    ld [hl], h                                    ; $7607: $74
    pop hl                                        ; $7608: $e1
    db $f4                                        ; $7609: $f4
    ld [c], a                                     ; $760a: $e2
    add d                                         ; $760b: $82
    rst $30                                       ; $760c: $f7
    jr nz, jr_05b_7611                            ; $760d: $20 $02

    ld [c], a                                     ; $760f: $e2
    cp b                                          ; $7610: $b8

jr_05b_7611:
    pop hl                                        ; $7611: $e1
    rst $30                                       ; $7612: $f7
    ret nz                                        ; $7613: $c0

    add b                                         ; $7614: $80
    and $3f                                       ; $7615: $e6 $3f
    di                                            ; $7617: $f3

jr_05b_7618:
    inc l                                         ; $7618: $2c
    call z, $f9c3                                 ; $7619: $cc $c3 $f9
    db $e4                                        ; $761c: $e4
    add h                                         ; $761d: $84
    ld b, d                                       ; $761e: $42
    push hl                                       ; $761f: $e5
    ret nz                                        ; $7620: $c0

    rst $20                                       ; $7621: $e7
    dec hl                                        ; $7622: $2b
    ret nz                                        ; $7623: $c0

    db $fc                                        ; $7624: $fc
    ld [bc], a                                    ; $7625: $02
    di                                            ; $7626: $f3
    add h                                         ; $7627: $84
    db $e4                                        ; $7628: $e4
    add d                                         ; $7629: $82
    sra h                                         ; $762a: $cb $2c
    ret nz                                        ; $762c: $c0

    rst $38                                       ; $762d: $ff
    and $f4                                       ; $762e: $e6 $f4
    db $e3                                        ; $7630: $e3
    add e                                         ; $7631: $83

jr_05b_7632:
    reti                                          ; $7632: $d9


    ld b, e                                       ; $7633: $43
    db $e3                                        ; $7634: $e3
    ld d, l                                       ; $7635: $55
    rst $18                                       ; $7636: $df
    rst $28                                       ; $7637: $ef
    xor $2c                                       ; $7638: $ee $2c
    ld c, h                                       ; $763a: $4c
    rlca                                          ; $763b: $07
    dec hl                                        ; $763c: $2b
    dec hl                                        ; $763d: $2b
    dec hl                                        ; $763e: $2b
    ld [bc], a                                    ; $763f: $02
    pop hl                                        ; $7640: $e1
    cp c                                          ; $7641: $b9
    pop bc                                        ; $7642: $c1
    add hl, bc                                    ; $7643: $09
    db $e3                                        ; $7644: $e3
    ld d, [hl]                                    ; $7645: $56
    rst $10                                       ; $7646: $d7
    cp a                                          ; $7647: $bf
    ld a, [c]                                     ; $7648: $f2
    ld h, b                                       ; $7649: $60
    ret nz                                        ; $764a: $c0

    ldh [$c5], a                                  ; $764b: $e0 $c5
    jp nz, $e4bf                                  ; $764d: $c2 $bf $e4

    ret nz                                        ; $7650: $c0

    rst $38                                       ; $7651: $ff
    ld a, a                                       ; $7652: $7f
    db $ed                                        ; $7653: $ed
    dec bc                                        ; $7654: $0b
    dec hl                                        ; $7655: $2b
    ld b, l                                       ; $7656: $45
    jp $8230                                      ; $7657: $c3 $30 $82


    and c                                         ; $765a: $a1
    jp $81fd                                      ; $765b: $c3 $fd $81


    jp nz, $caf6                                  ; $765e: $c2 $f6 $ca

    inc l                                         ; $7661: $2c
    inc l                                         ; $7662: $2c
    ret nz                                        ; $7663: $c0

    pop hl                                        ; $7664: $e1
    ld [bc], a                                    ; $7665: $02
    jp nz, $bf30                                  ; $7666: $c2 $30 $bf

    ld [c], a                                     ; $7669: $e2
    adc [hl]                                      ; $766a: $8e
    xor $34                                       ; $766b: $ee $34
    ret z                                         ; $766d: $c8

    ld b, c                                       ; $766e: $41
    or h                                          ; $766f: $b4
    dec hl                                        ; $7670: $2b
    dec hl                                        ; $7671: $2b
    cp [hl]                                       ; $7672: $be
    pop bc                                        ; $7673: $c1
    cp a                                          ; $7674: $bf
    pop hl                                        ; $7675: $e1
    nop                                           ; $7676: $00
    ld a, [hl]                                    ; $7677: $7e
    add $3f                                       ; $7678: $c6 $3f
    and a                                         ; $767a: $a7
    ld [hl], h                                    ; $767b: $74
    rst $00                                       ; $767c: $c7
    jr c, jr_05b_7632                             ; $767d: $38 $b3

Jump_05b_767f:
    ld c, b                                       ; $767f: $48
    and e                                         ; $7680: $a3
    cp a                                          ; $7681: $bf
    db $e3                                        ; $7682: $e3
    rst $30                                       ; $7683: $f7
    pop bc                                        ; $7684: $c1
    adc e                                         ; $7685: $8b
    rst $20                                       ; $7686: $e7
    and b                                         ; $7687: $a0
    ld c, e                                       ; $7688: $4b
    xor l                                         ; $7689: $ad
    inc l                                         ; $768a: $2c
    and l                                         ; $768b: $a5
    inc [hl]                                      ; $768c: $34
    set 1, e                                      ; $768d: $cb $cb
    and d                                         ; $768f: $a2
    ccf                                           ; $7690: $3f
    ld [c], a                                     ; $7691: $e2
    ld l, e                                       ; $7692: $6b
    ld hl, sp-$60                                 ; $7693: $f8 $a0
    ld c, e                                       ; $7695: $4b
    jr nc, jr_05b_7618                            ; $7696: $30 $80

    and $b5                                       ; $7698: $e6 $b5
    rst $08                                       ; $769a: $cf
    inc l                                         ; $769b: $2c
    and l                                         ; $769c: $a5
    ret nz                                        ; $769d: $c0

    ldh a, [$0b]                                  ; $769e: $f0 $0b
    ld c, e                                       ; $76a0: $4b
    inc a                                         ; $76a1: $3c
    ret nz                                        ; $76a2: $c0

    cp a                                          ; $76a3: $bf
    add d                                         ; $76a4: $82
    ld bc, $0b4b                                  ; $76a5: $01 $4b $0b
    rst $30                                       ; $76a8: $f7
    inc l                                         ; $76a9: $2c
    and l                                         ; $76aa: $a5
    or l                                          ; $76ab: $b5
    or l                                          ; $76ac: $b5
    jp c, $c091                                   ; $76ad: $da $91 $c0

    rst $38                                       ; $76b0: $ff
    ld h, l                                       ; $76b1: $65
    sub c                                         ; $76b2: $91
    ld bc, $0086                                  ; $76b3: $01 $86 $00
    ld b, l                                       ; $76b6: $45
    and c                                         ; $76b7: $a1
    add b                                         ; $76b8: $80
    jp z, $b038                                   ; $76b9: $ca $38 $b0

    dec h                                         ; $76bc: $25
    add l                                         ; $76bd: $85
    adc l                                         ; $76be: $8d
    ret z                                         ; $76bf: $c8

    jp nz, $40ca                                  ; $76c0: $c2 $ca $40

    adc $ef                                       ; $76c3: $ce $ef
    add c                                         ; $76c5: $81
    nop                                           ; $76c6: $00
    di                                            ; $76c7: $f3
    adc b                                         ; $76c8: $88
    dec h                                         ; $76c9: $25
    add l                                         ; $76ca: $85
    adc l                                         ; $76cb: $8d
    ret z                                         ; $76cc: $c8

    jp nz, $c0cf                                  ; $76cd: $c2 $cf $c0

    adc e                                         ; $76d0: $8b
    ret nz                                        ; $76d1: $c0

    db $ec                                        ; $76d2: $ec
    adc l                                         ; $76d3: $8d
    adc $cd                                       ; $76d4: $ce $cd
    or h                                          ; $76d6: $b4
    nop                                           ; $76d7: $00
    add hl, hl                                    ; $76d8: $29
    ld [$f140], a                                 ; $76d9: $ea $40 $f1
    inc c                                         ; $76dc: $0c
    add [hl]                                      ; $76dd: $86
    ret nz                                        ; $76de: $c0

    or $fe                                        ; $76df: $f6 $fe
    and l                                         ; $76e1: $a5
    add c                                         ; $76e2: $81
    pop de                                        ; $76e3: $d1
    ld e, b                                       ; $76e4: $58
    xor h                                         ; $76e5: $ac
    dec c                                         ; $76e6: $0d
    adc a                                         ; $76e7: $8f
    nop                                           ; $76e8: $00
    db $eb                                        ; $76e9: $eb
    or c                                          ; $76ea: $b1
    ld sp, $d88d                                  ; $76eb: $31 $8d $d8
    halt                                          ; $76ee: $76
    ld a, [hl+]                                   ; $76ef: $2a
    ld l, c                                       ; $76f0: $69
    or h                                          ; $76f1: $b4
    ld h, l                                       ; $76f2: $65
    ld d, h                                       ; $76f3: $54
    sbc a                                         ; $76f4: $9f
    rst $38                                       ; $76f5: $ff
    xor e                                         ; $76f6: $ab
    ret nz                                        ; $76f7: $c0

    push af                                       ; $76f8: $f5
    nop                                           ; $76f9: $00
    cp b                                          ; $76fa: $b8
    ld hl, sp+$64                                 ; $76fb: $f8 $64
    call nz, $fb5e                                ; $76fd: $c4 $5e $fb
    ret nz                                        ; $7700: $c0

    cp $ff                                        ; $7701: $fe $ff
    rst $38                                       ; $7703: $ff
    ret nz                                        ; $7704: $c0

    db $fc                                        ; $7705: $fc
    ld e, [hl]                                    ; $7706: $5e
    ld sp, hl                                     ; $7707: $f9
    ld d, h                                       ; $7708: $54
    dec h                                         ; $7709: $25
    nop                                           ; $770a: $00
    adc h                                         ; $770b: $8c
    ld [hl+], a                                   ; $770c: $22
    ld c, l                                       ; $770d: $4d
    ld b, l                                       ; $770e: $45
    add a                                         ; $770f: $87
    daa                                           ; $7710: $27
    ld [hl], h                                    ; $7711: $74
    inc h                                         ; $7712: $24
    ret nz                                        ; $7713: $c0

    ld sp, hl                                     ; $7714: $f9
    adc b                                         ; $7715: $88
    and a                                         ; $7716: $a7
    ld d, l                                       ; $7717: $55
    daa                                           ; $7718: $27
    xor c                                         ; $7719: $a9
    xor b                                         ; $771a: $a8
    nop                                           ; $771b: $00
    ld e, [hl]                                    ; $771c: $5e
    db $fc                                        ; $771d: $fc
    ld d, h                                       ; $771e: $54
    ld h, $5a                                     ; $771f: $26 $5a
    inc hl                                        ; $7721: $23
    ld c, c                                       ; $7722: $49
    ld h, $ce                                     ; $7723: $26 $ce
    inc d                                         ; $7725: $14
    ret nz                                        ; $7726: $c0

    sub c                                         ; $7727: $91
    ccf                                           ; $7728: $3f
    db $e4                                        ; $7729: $e4
    ld b, c                                       ; $772a: $41
    ld b, l                                       ; $772b: $45
    nop                                           ; $772c: $00
    ld a, l                                       ; $772d: $7d
    xor b                                         ; $772e: $a8
    ld l, h                                       ; $772f: $6c
    adc d                                         ; $7730: $8a
    ld [hl], b                                    ; $7731: $70
    add d                                         ; $7732: $82
    jp Jump_05b_4080                              ; $7733: $c3 $80 $40


    adc [hl]                                      ; $7736: $8e
    ret nz                                        ; $7737: $c0

    rst $38                                       ; $7738: $ff
    dec l                                         ; $7739: $2d
    ld [bc], a                                    ; $773a: $02
    ld [hl], l                                    ; $773b: $75
    scf                                           ; $773c: $37
    nop                                           ; $773d: $00
    ld d, h                                       ; $773e: $54
    jr z, jr_05b_7796                             ; $773f: $28 $55

    inc h                                         ; $7741: $24
    ld b, a                                       ; $7742: $47
    inc h                                         ; $7743: $24
    ld [hl], a                                    ; $7744: $77
    ld c, d                                       ; $7745: $4a
    rst $20                                       ; $7746: $e7
    push hl                                       ; $7747: $e5
    ld c, c                                       ; $7748: $49
    rst $18                                       ; $7749: $df
    ld b, a                                       ; $774a: $47
    adc a                                         ; $774b: $8f
    add hl, sp                                    ; $774c: $39
    ld [bc], a                                    ; $774d: $02
    nop                                           ; $774e: $00
    cp [hl]                                       ; $774f: $be
    ld l, h                                       ; $7750: $6c
    ld b, b                                       ; $7751: $40
    cp a                                          ; $7752: $bf
    inc bc                                        ; $7753: $03
    ld l, d                                       ; $7754: $6a
    db $fd                                        ; $7755: $fd
    ld l, $c0                                     ; $7756: $2e $c0
    rst $38                                       ; $7758: $ff
    inc l                                         ; $7759: $2c
    ld l, [hl]                                    ; $775a: $6e
    sbc [hl]                                      ; $775b: $9e
    sbc e                                         ; $775c: $9b
    ret nz                                        ; $775d: $c0

    rst $38                                       ; $775e: $ff
    nop                                           ; $775f: $00
    ld [hl], $14                                  ; $7760: $36 $14
    ret nc                                        ; $7762: $d0

    ld sp, $ee40                                  ; $7763: $31 $40 $ee
    pop hl                                        ; $7766: $e1
    ld sp, hl                                     ; $7767: $f9

Call_05b_7768:
    cp e                                          ; $7768: $bb
    and [hl]                                      ; $7769: $a6
    ld e, c                                       ; $776a: $59
    db $e4                                        ; $776b: $e4
    ld [$c02e], sp                                ; $776c: $08 $2e $c0
    push bc                                       ; $776f: $c5
    nop                                           ; $7770: $00
    push hl                                       ; $7771: $e5
    ld a, h                                       ; $7772: $7c
    pop bc                                        ; $7773: $c1
    and $c8                                       ; $7774: $e6 $c8
    ld c, l                                       ; $7776: $4d
    cp l                                          ; $7777: $bd
    ld a, [de]                                    ; $7778: $1a
    ret nz                                        ; $7779: $c0

    or $bc                                        ; $777a: $f6 $bc
    ld h, $65                                     ; $777c: $26 $65
    and l                                         ; $777e: $a5
    inc d                                         ; $777f: $14
    sbc $80                                       ; $7780: $de $80
    call $0723                                    ; $7782: $cd $23 $07
    inc l                                         ; $7785: $2c
    add b                                         ; $7786: $80
    push af                                       ; $7787: $f5
    db $f4                                        ; $7788: $f4
    ld d, h                                       ; $7789: $54
    jr z, @-$33                                   ; $778a: $28 $cb

    or h                                          ; $778c: $b4
    dec b                                         ; $778d: $05
    ld [de], a                                    ; $778e: $12
    rst $08                                       ; $778f: $cf
    inc l                                         ; $7790: $2c
    nop                                           ; $7791: $00
    ld e, l                                       ; $7792: $5d
    ld hl, $9f5f                                  ; $7793: $21 $5f $9f

jr_05b_7796:
    inc a                                         ; $7796: $3c
    and $c0                                       ; $7797: $e6 $c0
    or d                                          ; $7799: $b2
    cp e                                          ; $779a: $bb
    cp h                                          ; $779b: $bc
    ld l, $86                                     ; $779c: $2e $86
    ret c                                         ; $779e: $d8

    ld de, $ff87                                  ; $779f: $11 $87 $ff
    nop                                           ; $77a2: $00
    ret                                           ; $77a3: $c9


    add e                                         ; $77a4: $83
    ld c, [hl]                                    ; $77a5: $4e
    dec d                                         ; $77a6: $15
    add l                                         ; $77a7: $85
    cp $85                                        ; $77a8: $fe $85
    ld a, a                                       ; $77aa: $7f
    ret nz                                        ; $77ab: $c0

    rst $38                                       ; $77ac: $ff
    jp z, $ffbb                                   ; $77ad: $ca $bb $ff

    rst $38                                       ; $77b0: $ff
    ret nz                                        ; $77b1: $c0

    rst $38                                       ; $77b2: $ff
    nop                                           ; $77b3: $00
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
    nop                                           ; $77c4: $00
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
    nop                                           ; $77d5: $00
    rst $38                                       ; $77d6: $ff
    rst $38                                       ; $77d7: $ff
    rst $38                                       ; $77d8: $ff
    rst $38                                       ; $77d9: $ff
    rst $38                                       ; $77da: $ff
    rst $38                                       ; $77db: $ff
    rst $38                                       ; $77dc: $ff
    rst $38                                       ; $77dd: $ff
    ld [hl], h                                    ; $77de: $74
    ld e, $ff                                     ; $77df: $1e $ff
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    nop                                           ; $77e6: $00
    rst $38                                       ; $77e7: $ff
    rst $38                                       ; $77e8: $ff
    rst $38                                       ; $77e9: $ff
    rst $38                                       ; $77ea: $ff
    ld b, l                                       ; $77eb: $45
    ld b, d                                       ; $77ec: $42
    nop                                           ; $77ed: $00
    nop                                           ; $77ee: $00
    nop                                           ; $77ef: $00
    db $fd                                        ; $77f0: $fd
    jr nz, @+$01                                  ; $77f1: $20 $ff

    db $e3                                        ; $77f3: $e3
    ld c, $31                                     ; $77f4: $0e $31
    ld sp, $4d31                                  ; $77f6: $31 $31 $4d
    ld d, [hl]                                    ; $77f9: $56
    rst $38                                       ; $77fa: $ff
    ld d, [hl]                                    ; $77fb: $56
    ld b, a                                       ; $77fc: $47
    ld sp, $5b5e                                  ; $77fd: $31 $5e $5b
    ld e, e                                       ; $7800: $5b
    ld e, e                                       ; $7801: $5b
    nop                                           ; $7802: $00
    ld hl, sp-$01                                 ; $7803: $f8 $ff
    rst $38                                       ; $7805: $ff
    rst $20                                       ; $7806: $e7
    and $c1                                       ; $7807: $e6 $c1
    add sp, $32                                   ; $7809: $e8 $32
    jr nc, jr_05b_787a                            ; $780b: $30 $6d

    ld [hl], $37                                  ; $780d: $36 $37
    and a                                         ; $780f: $a7
    ld sp, $5a5f                                  ; $7810: $31 $5f $5a
    ret nz                                        ; $7813: $c0

    rst $38                                       ; $7814: $ff
    ret nz                                        ; $7815: $c0

    db $ed                                        ; $7816: $ed
    rrca                                          ; $7817: $0f
    add d                                         ; $7818: $82
    ldh [$31], a                                  ; $7819: $e0 $31
    ccf                                           ; $781b: $3f
    add hl, sp                                    ; $781c: $39
    ld l, e                                       ; $781d: $6b
    jr nc, jr_05b_788d                            ; $781e: $30 $6d

    ld l, l                                       ; $7820: $6d
    ld d, b                                       ; $7821: $50
    ld a, a                                       ; $7822: $7f
    pop hl                                        ; $7823: $e1
    jp z, $fcff                                   ; $7824: $ca $ff $fc

    add b                                         ; $7827: $80
    db $eb                                        ; $7828: $eb
    ld b, e                                       ; $7829: $43
    pop hl                                        ; $782a: $e1
    ld sp, $4849                                  ; $782b: $31 $49 $48
    ld l, e                                       ; $782e: $6b
    jr nc, @+$32                                  ; $782f: $30 $30

    sbc a                                         ; $7831: $9f
    jr nc, @+$52                                  ; $7832: $30 $50

    ld sp, $6031                                  ; $7834: $31 $31 $60
    ret nz                                        ; $7837: $c0

    rst $38                                       ; $7838: $ff
    ld b, b                                       ; $7839: $40
    db $eb                                        ; $783a: $eb
    nop                                           ; $783b: $00
    ld e, b                                       ; $783c: $58
    add d                                         ; $783d: $82
    pop hl                                        ; $783e: $e1
    add c                                         ; $783f: $81
    ldh [$c0], a                                  ; $7840: $e0 $c0
    ldh [rOBP0], a                                ; $7842: $e0 $48
    ld c, c                                       ; $7844: $49
    ld hl, sp-$40                                 ; $7845: $f8 $c0
    ld h, d                                       ; $7847: $62
    jp z, $feff                                   ; $7848: $ca $ff $fe

    ret nz                                        ; $784b: $c0

    rst $28                                       ; $784c: $ef
    ld c, c                                       ; $784d: $49
    ld c, b                                       ; $784e: $48
    ld l, d                                       ; $784f: $6a
    ld l, l                                       ; $7850: $6d
    jr nc, jr_05b_7883                            ; $7851: $30 $30

    add hl, sp                                    ; $7853: $39
    ld hl, sp-$4b                                 ; $7854: $f8 $b5
    ld [c], a                                     ; $7856: $e2
    jp z, $80ff                                   ; $7857: $ca $ff $80

    rst $28                                       ; $785a: $ef
    add hl, sp                                    ; $785b: $39
    jr nc, jr_05b_78c8                            ; $785c: $30 $6a

    ld l, l                                       ; $785e: $6d
    ld l, h                                       ; $785f: $6c
    and $81                                       ; $7860: $e6 $81
    ld [c], a                                     ; $7862: $e2
    ld de, $ca12                                  ; $7863: $11 $12 $ca
    rst $38                                       ; $7866: $ff
    ld b, b                                       ; $7867: $40
    xor $49                                       ; $7868: $ee $49
    ld c, b                                       ; $786a: $48
    jr nc, @-$07                                  ; $786b: $30 $f7

    jr nc, jr_05b_78d9                            ; $786d: $30 $6a

    ld l, b                                       ; $786f: $68
    add c                                         ; $7870: $81
    ldh [rNR11], a                                ; $7871: $e0 $11
    ld [de], a                                    ; $7873: $12
    ld hl, $7c22                                  ; $7874: $21 $22 $7c
    jp z, Jump_05b_40ff                           ; $7877: $ca $ff $40

jr_05b_787a:
    jp z, Jump_000_1528                           ; $787a: $ca $28 $15

    ld sp, $5031                                  ; $787d: $31 $31 $50
    ld b, d                                       ; $7880: $42
    pop hl                                        ; $7881: $e1
    ccf                                           ; $7882: $3f

jr_05b_7883:
    jr nc, jr_05b_78d6                            ; $7883: $30 $51

    ld sp, $2931                                  ; $7885: $31 $31 $29
    daa                                           ; $7888: $27
    rst $28                                       ; $7889: $ef
    ret nz                                        ; $788a: $c0

    rst $38                                       ; $788b: $ff
    rst $38                                       ; $788c: $ff

jr_05b_788d:
    cp $00                                        ; $788d: $fe $00
    jp z, Jump_000_3117                           ; $788f: $ca $17 $31

    ld sp, $3051                                  ; $7892: $31 $51 $30
    ld l, d                                       ; $7895: $6a
    ld l, h                                       ; $7896: $6c
    jp Jump_05b_6c6c                              ; $7897: $c3 $6c $6c


    ld bc, $bfe1                                  ; $789a: $01 $e1 $bf
    ldh [$ca], a                                  ; $789d: $e0 $ca
    rst $38                                       ; $789f: $ff
    ret nz                                        ; $78a0: $c0

    xor e                                         ; $78a1: $ab
    ld d, $15                                     ; $78a2: $16 $15
    cp $c0                                        ; $78a4: $fe $c0
    ldh [$30], a                                  ; $78a6: $e0 $30
    ld l, b                                       ; $78a8: $68
    ld l, b                                       ; $78a9: $68
    ld l, b                                       ; $78aa: $68
    ld b, d                                       ; $78ab: $42
    ld b, [hl]                                    ; $78ac: $46
    ld b, a                                       ; $78ad: $47
    sbc b                                         ; $78ae: $98
    ld a, [hl]                                    ; $78af: $7e
    pop hl                                        ; $78b0: $e1
    jp z, $80ff                                   ; $78b1: $ca $ff $80

    xor e                                         ; $78b4: $ab
    jr z, jr_05b_78ce                             ; $78b5: $28 $17

    ret nz                                        ; $78b7: $c0

    pop hl                                        ; $78b8: $e1
    cp $e1                                        ; $78b9: $fe $e1
    ld l, c                                       ; $78bb: $69
    ld h, l                                       ; $78bc: $65
    ld [hl], $3f                                  ; $78bd: $36 $3f
    ret nz                                        ; $78bf: $c0

    add hl, hl                                    ; $78c0: $29
    jp z, Jump_05b_40ff                           ; $78c1: $ca $ff $40

    xor e                                         ; $78c4: $ab
    ld b, $07                                     ; $78c5: $06 $07
    ld b, e                                       ; $78c7: $43

jr_05b_78c8:
    and b                                         ; $78c8: $a0
    adc e                                         ; $78c9: $8b
    ld l, l                                       ; $78ca: $6d
    ld l, d                                       ; $78cb: $6a
    ret nz                                        ; $78cc: $c0

    pop hl                                        ; $78cd: $e1

jr_05b_78ce:
    ld l, e                                       ; $78ce: $6b
    ld a, $c1                                     ; $78cf: $3e $c1
    jp z, $c0ff                                   ; $78d1: $ca $ff $c0

    xor a                                         ; $78d4: $af
    xor a                                         ; $78d5: $af

jr_05b_78d6:
    rst $38                                       ; $78d6: $ff
    ld [hl], c                                    ; $78d7: $71
    ld l, l                                       ; $78d8: $6d

jr_05b_78d9:
    ld l, d                                       ; $78d9: $6a
    ld l, b                                       ; $78da: $68
    ld l, b                                       ; $78db: $68
    ld l, d                                       ; $78dc: $6a
    ld l, e                                       ; $78dd: $6b
    ld d, e                                       ; $78de: $53
    cp c                                          ; $78df: $b9
    ld [hl], b                                    ; $78e0: $70
    ret nz                                        ; $78e1: $c0

    rst $38                                       ; $78e2: $ff
    add b                                         ; $78e3: $80
    or c                                          ; $78e4: $b1
    and c                                         ; $78e5: $a1
    ld a, c                                       ; $78e6: $79
    ld [hl], c                                    ; $78e7: $71
    cp a                                          ; $78e8: $bf
    ret nz                                        ; $78e9: $c0

    ld l, h                                       ; $78ea: $6c
    rst $08                                       ; $78eb: $cf
    ld [hl], $72                                  ; $78ec: $36 $72
    xor [hl]                                      ; $78ee: $ae
    ld [hl], b                                    ; $78ef: $70
    ret nz                                        ; $78f0: $c0

    rst $38                                       ; $78f1: $ff
    ret nz                                        ; $78f2: $c0

    pop af                                        ; $78f3: $f1
    add b                                         ; $78f4: $80
    ld a, c                                       ; $78f5: $79
    rst $38                                       ; $78f6: $ff
    ld l, [hl]                                    ; $78f7: $6e
    ld d, h                                       ; $78f8: $54
    ld d, l                                       ; $78f9: $55
    ld l, [hl]                                    ; $78fa: $6e
    ld l, a                                       ; $78fb: $6f
    add b                                         ; $78fc: $80
    add b                                         ; $78fd: $80
    xor [hl]                                      ; $78fe: $ae
    ld bc, $ca70                                  ; $78ff: $01 $70 $ca
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
    nop                                           ; $790f: $00
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
    nop                                           ; $7920: $00
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
    nop                                           ; $7931: $00
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
    nop                                           ; $7942: $00
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
    nop                                           ; $7953: $00
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
    nop                                           ; $7964: $00
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
    nop                                           ; $7975: $00
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
    nop                                           ; $7986: $00
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
    nop                                           ; $7997: $00
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
    nop                                           ; $79a8: $00
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
    nop                                           ; $79b9: $00
    rst $38                                       ; $79ba: $ff
    rst $38                                       ; $79bb: $ff
    rst $38                                       ; $79bc: $ff
    rst $38                                       ; $79bd: $ff
    rst $38                                       ; $79be: $ff
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    rst $38                                       ; $79c1: $ff
    rst $38                                       ; $79c2: $ff
    di                                            ; $79c3: $f3
    nop                                           ; $79c4: $00
    nop                                           ; $79c5: $00
    nop                                           ; $79c6: $00
    and l                                         ; $79c7: $a5
    nop                                           ; $79c8: $00
    rst $38                                       ; $79c9: $ff
    push hl                                       ; $79ca: $e5
    ld [hl-], a                                   ; $79cb: $32
    or $e6                                        ; $79cc: $f6 $e6
    rst $30                                       ; $79ce: $f7
    rst $20                                       ; $79cf: $e7
    dec [hl]                                      ; $79d0: $35
    db $ec                                        ; $79d1: $ec
    xor $37                                       ; $79d2: $ee $37
    db $ec                                        ; $79d4: $ec
    jp c, $c7f0                                   ; $79d5: $da $f0 $c7

    add sp, $33                                   ; $79d8: $e8 $33
    ld sp, $f2e0                                  ; $79da: $31 $e0 $f2
    ld [hl], $30                                  ; $79dd: $36 $30
    scf                                           ; $79df: $37
    cp a                                          ; $79e0: $bf
    ld h, $20                                     ; $79e1: $26 $20
    daa                                           ; $79e3: $27
    db $10                                        ; $79e4: $10
    ld d, $17                                     ; $79e5: $16 $17
    jp nz, Jump_000_34f6                          ; $79e7: $c2 $f6 $34

    rst $38                                       ; $79ea: $ff
    ld [hl], $32                                  ; $79eb: $36 $32
    jr nc, jr_05b_7a26                            ; $79ed: $30 $37

    ld sp, $3133                                  ; $79ef: $31 $33 $31
    inc sp                                        ; $79f2: $33
    nop                                           ; $79f3: $00
    and b                                         ; $79f4: $a0
    ei                                            ; $79f5: $fb
    rst $38                                       ; $79f6: $ff
    rst $28                                       ; $79f7: $ef
    nop                                           ; $79f8: $00
    nop                                           ; $79f9: $00
    nop                                           ; $79fa: $00
    inc bc                                        ; $79fb: $03
    ld a, d                                       ; $79fc: $7a
    inc sp                                        ; $79fd: $33
    ld a, d                                       ; $79fe: $7a
    halt                                          ; $79ff: $76
    ld a, h                                       ; $7a00: $7c
    ld c, d                                       ; $7a01: $4a
    ld a, [hl]                                    ; $7a02: $7e
    ld [$c503], a                                 ; $7a03: $ea $03 $c5
    ld b, $e2                                     ; $7a06: $06 $e2
    ld bc, $00a0                                  ; $7a08: $01 $a0 $00
    ld [$f003], a                                 ; $7a0b: $ea $03 $f0
    inc bc                                        ; $7a0e: $03
    push bc                                       ; $7a0f: $c5
    ld b, $e2                                     ; $7a10: $06 $e2
    ld bc, $023f                                  ; $7a12: $01 $3f $02
    xor e                                         ; $7a15: $ab
    nop                                           ; $7a16: $00
    inc sp                                        ; $7a17: $33
    ld bc, $06c5                                  ; $7a18: $01 $c5 $06
    ld [$0825], sp                                ; $7a1b: $08 $25 $08
    dec h                                         ; $7a1e: $25
    ld [$0825], sp                                ; $7a1f: $08 $25 $08
    dec h                                         ; $7a22: $25
    ld [$0825], sp                                ; $7a23: $08 $25 $08

jr_05b_7a26:
    dec h                                         ; $7a26: $25
    ld [$0825], sp                                ; $7a27: $08 $25 $08
    dec h                                         ; $7a2a: $25
    ld [$0825], sp                                ; $7a2b: $08 $25 $08
    dec h                                         ; $7a2e: $25
    ld [$0825], sp                                ; $7a2f: $08 $25 $08
    dec h                                         ; $7a32: $25
    db $dd                                        ; $7a33: $dd
    dec bc                                        ; $7a34: $0b
    rst $38                                       ; $7a35: $ff
    db $e3                                        ; $7a36: $e3
    ld l, e                                       ; $7a37: $6b
    ld l, e                                       ; $7a38: $6b
    ld c, e                                       ; $7a39: $4b
    rst $38                                       ; $7a3a: $ff
    ldh [$0b], a                                  ; $7a3b: $e0 $0b
    dec hl                                        ; $7a3d: $2b
    ccf                                           ; $7a3e: $3f
    dec bc                                        ; $7a3f: $0b
    ld c, d                                       ; $7a40: $4a
    ld a, [hl+]                                   ; $7a41: $2a
    ld a, [hl+]                                   ; $7a42: $2a
    ld a, [hl+]                                   ; $7a43: $2a
    inc c                                         ; $7a44: $0c
    rst $38                                       ; $7a45: $ff
    rst $38                                       ; $7a46: $ff
    rst $20                                       ; $7a47: $e7
    and $a0                                       ; $7a48: $e6 $a0
    pop bc                                        ; $7a4a: $c1
    push hl                                       ; $7a4b: $e5
    cp b                                          ; $7a4c: $b8
    pop hl                                        ; $7a4d: $e1
    cp a                                          ; $7a4e: $bf
    push hl                                       ; $7a4f: $e5
    jp z, $c0ff                                   ; $7a50: $ca $ff $c0

    db $ec                                        ; $7a53: $ec
    ld l, e                                       ; $7a54: $6b
    ret nz                                        ; $7a55: $c0

    pop hl                                        ; $7a56: $e1
    dec hl                                        ; $7a57: $2b
    inc c                                         ; $7a58: $0c
    cp a                                          ; $7a59: $bf
    and $ca                                       ; $7a5a: $e6 $ca
    rst $28                                       ; $7a5c: $ef
    inc l                                         ; $7a5d: $2c
    inc l                                         ; $7a5e: $2c
    add b                                         ; $7a5f: $80
    ld sp, hl                                     ; $7a60: $f9
    add d                                         ; $7a61: $82
    ldh [rLCDC], a                                ; $7a62: $e0 $40
    ldh [$7d], a                                  ; $7a64: $e0 $7d
    pop hl                                        ; $7a66: $e1
    ret nz                                        ; $7a67: $c0

    dec a                                         ; $7a68: $3d
    db $e3                                        ; $7a69: $e3
    adc $e2                                       ; $7a6a: $ce $e2
    ei                                            ; $7a6c: $fb
    db $e3                                        ; $7a6d: $e3
    cp $e1                                        ; $7a6e: $fe $e1
    ei                                            ; $7a70: $fb
    db $e3                                        ; $7a71: $e3
    ld [hl], l                                    ; $7a72: $75
    push af                                       ; $7a73: $f5
    inc l                                         ; $7a74: $2c
    inc l                                         ; $7a75: $2c
    rla                                           ; $7a76: $17
    dec bc                                        ; $7a77: $0b
    dec hl                                        ; $7a78: $2b
    dec hl                                        ; $7a79: $2b
    cp a                                          ; $7a7a: $bf
    ldh [rWX], a                                  ; $7a7b: $e0 $4b
    cp a                                          ; $7a7d: $bf
    db $e3                                        ; $7a7e: $e3
    ldh a, [$c1]                                  ; $7a7f: $f0 $c1
    jp nz, Jump_000_08e4                          ; $7a81: $c2 $e4 $08

    add b                                         ; $7a84: $80
    jp hl                                         ; $7a85: $e9


    di                                            ; $7a86: $f3
    ldh a, [$f9]                                  ; $7a87: $f0 $f9
    push hl                                       ; $7a89: $e5

jr_05b_7a8a:
    inc l                                         ; $7a8a: $2c
    ld b, l                                       ; $7a8b: $45
    ldh [$bf], a                                  ; $7a8c: $e0 $bf
    ldh [$c0], a                                  ; $7a8e: $e0 $c0
    ldh [$bc], a                                  ; $7a90: $e0 $bc
    db $e4                                        ; $7a92: $e4
    pop de                                        ; $7a93: $d1
    ld a, [bc]                                    ; $7a94: $0a
    ld d, b                                       ; $7a95: $50
    pop hl                                        ; $7a96: $e1
    adc [hl]                                      ; $7a97: $8e
    ld hl, sp+$24                                 ; $7a98: $f8 $24
    db $ed                                        ; $7a9a: $ed
    ld c, h                                       ; $7a9b: $4c
    cp a                                          ; $7a9c: $bf
    pop hl                                        ; $7a9d: $e1
    ld c, e                                       ; $7a9e: $4b
    ld c, e                                       ; $7a9f: $4b
    add hl, bc                                    ; $7aa0: $09
    dec hl                                        ; $7aa1: $2b
    ld a, h                                       ; $7aa2: $7c
    pop hl                                        ; $7aa3: $e1
    ei                                            ; $7aa4: $fb
    ret nz                                        ; $7aa5: $c0

    ld a, [bc]                                    ; $7aa6: $0a
    add b                                         ; $7aa7: $80
    pop hl                                        ; $7aa8: $e1
    ld b, c                                       ; $7aa9: $41
    db $e3                                        ; $7aaa: $e3
    rst $38                                       ; $7aab: $ff
    rst $20                                       ; $7aac: $e7
    ret nz                                        ; $7aad: $c0

    ld sp, hl                                     ; $7aae: $f9
    ld [$e07f], sp                                ; $7aaf: $08 $7f $e0
    dec a                                         ; $7ab2: $3d
    ldh [$c0], a                                  ; $7ab3: $e0 $c0
    pop bc                                        ; $7ab5: $c1
    dec bc                                        ; $7ab6: $0b
    ld a, c                                       ; $7ab7: $79
    ldh [$3d], a                                  ; $7ab8: $e0 $3d
    ldh [$c0], a                                  ; $7aba: $e0 $c0
    rst $38                                       ; $7abc: $ff
    and h                                         ; $7abd: $a4
    rlc [hl]                                      ; $7abe: $cb $06
    ld a, a                                       ; $7ac0: $7f
    ldh [$0b], a                                  ; $7ac1: $e0 $0b
    dec hl                                        ; $7ac3: $2b
    add l                                         ; $7ac4: $85
    pop hl                                        ; $7ac5: $e1
    jr c, jr_05b_7a8a                             ; $7ac6: $38 $c2

    ret nz                                        ; $7ac8: $c0

    pop hl                                        ; $7ac9: $e1
    adc d                                         ; $7aca: $8a
    push bc                                       ; $7acb: $c5
    pop bc                                        ; $7acc: $c1
    rst $38                                       ; $7acd: $ff
    ld bc, $7f4c                                  ; $7ace: $01 $4c $7f
    push hl                                       ; $7ad1: $e5
    ret nz                                        ; $7ad2: $c0

    pop bc                                        ; $7ad3: $c1
    cp d                                          ; $7ad4: $ba

Jump_05b_7ad5:
    and b                                         ; $7ad5: $a0
    ret nz                                        ; $7ad6: $c0

    jp nz, $e401                                  ; $7ad7: $c2 $01 $e4

    ret nz                                        ; $7ada: $c0

    rst $38                                       ; $7adb: $ff
    cp $cb                                        ; $7adc: $fe $cb
    ld h, b                                       ; $7ade: $60
    pop bc                                        ; $7adf: $c1
    db $e4                                        ; $7ae0: $e4
    ret nz                                        ; $7ae1: $c0

    and $4f                                       ; $7ae2: $e6 $4f
    call nc, $cf6f                                ; $7ae4: $d4 $6f $cf
    ld a, l                                       ; $7ae7: $7d
    jp nz, Jump_05b_4b2b                          ; $7ae8: $c2 $2b $4b

    add d                                         ; $7aeb: $82
    pop hl                                        ; $7aec: $e1
    adc b                                         ; $7aed: $88
    ld a, [$40c1]                                 ; $7aee: $fa $c1 $40
    ld sp, hl                                     ; $7af1: $f9
    or a                                          ; $7af2: $b7
    or c                                          ; $7af3: $b1
    ld c, h                                       ; $7af4: $4c
    ld a, [hl-]                                   ; $7af5: $3a
    and b                                         ; $7af6: $a0
    ret nz                                        ; $7af7: $c0

    ldh [$f5], a                                  ; $7af8: $e0 $f5
    add d                                         ; $7afa: $82
    dec hl                                        ; $7afb: $2b
    nop                                           ; $7afc: $00
    cp a                                          ; $7afd: $bf
    ret nz                                        ; $7afe: $c0

    nop                                           ; $7aff: $00
    pop af                                        ; $7b00: $f1
    ld l, $c1                                     ; $7b01: $2e $c1
    inc d                                         ; $7b03: $14
    ldh [rNR52], a                                ; $7b04: $e0 $26
    call nc, $e7c0                                ; $7b06: $d4 $c0 $e7
    add hl, sp                                    ; $7b09: $39
    ret nz                                        ; $7b0a: $c0

    ret nz                                        ; $7b0b: $c0

    db $f4                                        ; $7b0c: $f4
    nop                                           ; $7b0d: $00
    call nc, Call_05b_66c2                        ; $7b0e: $d4 $c2 $66
    ret z                                         ; $7b11: $c8

    ret nz                                        ; $7b12: $c0

    di                                            ; $7b13: $f3
    ld [hl], a                                    ; $7b14: $77
    pop bc                                        ; $7b15: $c1
    ret nz                                        ; $7b16: $c0

    rst $38                                       ; $7b17: $ff
    ret nz                                        ; $7b18: $c0

    ld hl, sp+$32                                 ; $7b19: $f8 $32
    and b                                         ; $7b1b: $a0
    ld c, h                                       ; $7b1c: $4c
    xor a                                         ; $7b1d: $af
    inc h                                         ; $7b1e: $24
    jr nc, @-$50                                  ; $7b1f: $30 $ae

jr_05b_7b21:
    xor a                                         ; $7b21: $af
    add [hl]                                      ; $7b22: $86
    ld c, h                                       ; $7b23: $4c
    dec hl                                        ; $7b24: $2b
    pop hl                                        ; $7b25: $e1
    ld hl, sp-$1d                                 ; $7b26: $f8 $e3
    ld c, h                                       ; $7b28: $4c
    rst $38                                       ; $7b29: $ff
    ldh [$fb], a                                  ; $7b2a: $e0 $fb
    db $e3                                        ; $7b2c: $e3
    nop                                           ; $7b2d: $00
    nop                                           ; $7b2e: $00
    adc $7d                                       ; $7b2f: $ce $7d
    and l                                         ; $7b31: $a5

jr_05b_7b32:
    ld hl, sp-$18                                 ; $7b32: $f8 $e8
    or e                                          ; $7b34: $b3
    ld [$d419], a                                 ; $7b35: $ea $19 $d4
    ret nz                                        ; $7b38: $c0

    or $da                                        ; $7b39: $f6 $da
    db $f4                                        ; $7b3b: $f4
    rst $00                                       ; $7b3c: $c7
    add h                                         ; $7b3d: $84
    nop                                           ; $7b3e: $00
    ld [de], a                                    ; $7b3f: $12
    add [hl]                                      ; $7b40: $86
    ld hl, sp-$1a                                 ; $7b41: $f8 $e6
    ld b, b                                       ; $7b43: $40
    pop af                                        ; $7b44: $f1
    db $ed                                        ; $7b45: $ed
    ld h, a                                       ; $7b46: $67
    ret nz                                        ; $7b47: $c0

    rst $38                                       ; $7b48: $ff
    ld h, a                                       ; $7b49: $67
    ldh a, [$ec]                                  ; $7b4a: $f0 $ec
    ld h, a                                       ; $7b4c: $67
    add b                                         ; $7b4d: $80
    rst $38                                       ; $7b4e: $ff
    nop                                           ; $7b4f: $00
    add b                                         ; $7b50: $80
    pop af                                        ; $7b51: $f1
    add c                                         ; $7b52: $81
    add sp, $65                                   ; $7b53: $e8 $65
    or [hl]                                       ; $7b55: $b6
    ret nz                                        ; $7b56: $c0

    rst $38                                       ; $7b57: $ff
    sbc b                                         ; $7b58: $98
    ret nc                                        ; $7b59: $d0

    ld de, $0a88                                  ; $7b5a: $11 $88 $0a
    ld h, e                                       ; $7b5d: $63
    ld a, $62                                     ; $7b5e: $3e $62
    nop                                           ; $7b60: $00
    ld [hl], d                                    ; $7b61: $72
    halt                                          ; $7b62: $76
    ret nz                                        ; $7b63: $c0

    rst $38                                       ; $7b64: $ff
    ld b, b                                       ; $7b65: $40
    cp $99                                        ; $7b66: $fe $99
    bit 0, b                                      ; $7b68: $cb $40
    pop af                                        ; $7b6a: $f1
    daa                                           ; $7b6b: $27
    pop de                                        ; $7b6c: $d1
    ret nz                                        ; $7b6d: $c0

    ldh a, [rHDMA5]                               ; $7b6e: $f0 $55
    sub d                                         ; $7b70: $92
    nop                                           ; $7b71: $00
    ld b, b                                       ; $7b72: $40
    jp nc, Jump_05b_5223                          ; $7b73: $d2 $23 $52

    add b                                         ; $7b76: $80
    rst $30                                       ; $7b77: $f7
    or b                                          ; $7b78: $b0
    ld c, l                                       ; $7b79: $4d
    ret nz                                        ; $7b7a: $c0

    rst $38                                       ; $7b7b: $ff
    ret nc                                        ; $7b7c: $d0

    ld l, l                                       ; $7b7d: $6d
    cp [hl]                                       ; $7b7e: $be
    ld e, d                                       ; $7b7f: $5a
    sbc c                                         ; $7b80: $99
    jp z, Jump_000_0400                           ; $7b81: $ca $00 $04

    ld e, d                                       ; $7b84: $5a
    ret nz                                        ; $7b85: $c0

    ld hl, sp-$80                                 ; $7b86: $f8 $80
    ld a, [$ffc0]                                 ; $7b88: $fa $c0 $ff
    sub $f6                                       ; $7b8b: $d6 $f6
    ret nz                                        ; $7b8d: $c0

    ei                                            ; $7b8e: $fb
    rst $20                                       ; $7b8f: $e7
    ld bc, $f980                                  ; $7b90: $01 $80 $f9
    nop                                           ; $7b93: $00
    rst $00                                       ; $7b94: $c7
    inc d                                         ; $7b95: $14
    xor a                                         ; $7b96: $af
    dec bc                                        ; $7b97: $0b
    xor l                                         ; $7b98: $ad
    ld c, d                                       ; $7b99: $4a
    inc b                                         ; $7b9a: $04
    jr nc, jr_05b_7b21                            ; $7b9b: $30 $84

    ld h, h                                       ; $7b9d: $64
    ret nz                                        ; $7b9e: $c0

    ld [hl], c                                    ; $7b9f: $71
    sbc d                                         ; $7ba0: $9a
    ld l, d                                       ; $7ba1: $6a
    ld l, d                                       ; $7ba2: $6a
    add c                                         ; $7ba3: $81
    db $10                                        ; $7ba4: $10
    ei                                            ; $7ba5: $fb
    or c                                          ; $7ba6: $b1
    sbc l                                         ; $7ba7: $9d
    jr nz, @-$26                                  ; $7ba8: $20 $d8

    jr nz, @-$01                                  ; $7baa: $20 $fd

    pop hl                                        ; $7bac: $e1
    ld c, h                                       ; $7bad: $4c
    sub d                                         ; $7bae: $92
    jr nz, jr_05b_7b32                            ; $7baf: $20 $81

    rst $28                                       ; $7bb1: $ef
    or l                                          ; $7bb2: $b5
    ld b, $00                                     ; $7bb3: $06 $00
    ld d, h                                       ; $7bb5: $54
    ld sp, $e1ac                                  ; $7bb6: $31 $ac $e1
    ret nz                                        ; $7bb9: $c0

    ldh [$57], a                                  ; $7bba: $e0 $57
    ld h, d                                       ; $7bbc: $62
    cp c                                          ; $7bbd: $b9
    db $e4                                        ; $7bbe: $e4
    ld b, c                                       ; $7bbf: $41
    ld a, [c]                                     ; $7bc0: $f2
    db $ed                                        ; $7bc1: $ed
    ld h, d                                       ; $7bc2: $62
    ld a, [hl]                                    ; $7bc3: $7e
    ld [c], a                                     ; $7bc4: $e2
    nop                                           ; $7bc5: $00
    jp nc, $138d                                  ; $7bc6: $d2 $8d $13

    ld l, c                                       ; $7bc9: $69
    jr c, @-$13                                   ; $7bca: $38 $eb

    ret nz                                        ; $7bcc: $c0

    pop af                                        ; $7bcd: $f1
    sub d                                         ; $7bce: $92
    ld [hl], c                                    ; $7bcf: $71
    ld bc, $3fe3                                  ; $7bd0: $01 $e3 $3f
    ld [c], a                                     ; $7bd3: $e2
    ld b, d                                       ; $7bd4: $42
    ld d, b                                       ; $7bd5: $50
    nop                                           ; $7bd6: $00
    db $ed                                        ; $7bd7: $ed
    ld c, a                                       ; $7bd8: $4f
    ret c                                         ; $7bd9: $d8

    db $10                                        ; $7bda: $10
    ccf                                           ; $7bdb: $3f
    rst $20                                       ; $7bdc: $e7
    ld a, [$5556]                                 ; $7bdd: $fa $56 $55
    jp hl                                         ; $7be0: $e9


    ld d, e                                       ; $7be1: $53
    ld c, h                                       ; $7be2: $4c
    ld h, d                                       ; $7be3: $62
    ld b, c                                       ; $7be4: $41
    ld b, c                                       ; $7be5: $41
    push af                                       ; $7be6: $f5
    nop                                           ; $7be7: $00
    ld [hl], $68                                  ; $7be8: $36 $68
    ret nz                                        ; $7bea: $c0

    rst $30                                       ; $7beb: $f7
    ld b, h                                       ; $7bec: $44
    db $e3                                        ; $7bed: $e3
    inc h                                         ; $7bee: $24
    ld b, a                                       ; $7bef: $47
    ld b, b                                       ; $7bf0: $40
    rst $38                                       ; $7bf1: $ff
    dec sp                                        ; $7bf2: $3b
    ld a, [c]                                     ; $7bf3: $f2
    ret nz                                        ; $7bf4: $c0

    db $db                                        ; $7bf5: $db
    or b                                          ; $7bf6: $b0
    ld b, $00                                     ; $7bf7: $06 $00
    ld d, d                                       ; $7bf9: $52
    ld [hl], b                                    ; $7bfa: $70
    rst $38                                       ; $7bfb: $ff
    and l                                         ; $7bfc: $a5
    scf                                           ; $7bfd: $37
    or [hl]                                       ; $7bfe: $b6
    ld a, [$d4a6]                                 ; $7bff: $fa $a6 $d4
    xor l                                         ; $7c02: $ad
    ld e, c                                       ; $7c03: $59
    daa                                           ; $7c04: $27
    rst $38                                       ; $7c05: $ff
    push de                                       ; $7c06: $d5
    ldh [$9a], a                                  ; $7c07: $e0 $9a
    nop                                           ; $7c09: $00
    add hl, hl                                    ; $7c0a: $29
    dec h                                         ; $7c0b: $25
    db $fc                                        ; $7c0c: $fc
    push bc                                       ; $7c0d: $c5
    dec de                                        ; $7c0e: $1b
    cp $12                                        ; $7c0f: $fe $12
    call nz, Call_05b_44a6                        ; $7c11: $c4 $a6 $44
    ldh a, [rSC]                                  ; $7c14: $f0 $02
    push bc                                       ; $7c16: $c5
    and $c0                                       ; $7c17: $e6 $c0
    rst $38                                       ; $7c19: $ff
    ld bc, $3f4c                                  ; $7c1a: $01 $4c $3f
    db $e3                                        ; $7c1d: $e3
    add [hl]                                      ; $7c1e: $86
    ret z                                         ; $7c1f: $c8

    ret nz                                        ; $7c20: $c0

    jp hl                                         ; $7c21: $e9


    add d                                         ; $7c22: $82
    rst $38                                       ; $7c23: $ff
    call nc, $d9a3                                ; $7c24: $d4 $a3 $d9
    adc l                                         ; $7c27: $8d
    rst $00                                       ; $7c28: $c7
    ld [de], a                                    ; $7c29: $12
    nop                                           ; $7c2a: $00
    cp d                                          ; $7c2b: $ba
    ld a, [$8f99]                                 ; $7c2c: $fa $99 $8f
    rst $38                                       ; $7c2f: $ff
    rst $38                                       ; $7c30: $ff
    push hl                                       ; $7c31: $e5
    daa                                           ; $7c32: $27
    ld d, h                                       ; $7c33: $54
    rst $38                                       ; $7c34: $ff
    sbc a                                         ; $7c35: $9f
    ld a, d                                       ; $7c36: $7a
    add hl, de                                    ; $7c37: $19
    or a                                          ; $7c38: $b7
    rst $38                                       ; $7c39: $ff
    rst $38                                       ; $7c3a: $ff
    nop                                           ; $7c3b: $00
    ret nz                                        ; $7c3c: $c0

    rst $38                                       ; $7c3d: $ff
    rst $38                                       ; $7c3e: $ff
    rst $38                                       ; $7c3f: $ff
    ld b, c                                       ; $7c40: $41
    rst $38                                       ; $7c41: $ff
    ret nz                                        ; $7c42: $c0

    rst $38                                       ; $7c43: $ff
    rst $38                                       ; $7c44: $ff
    rst $38                                       ; $7c45: $ff
    cp a                                          ; $7c46: $bf
    rst $38                                       ; $7c47: $ff
    rst $38                                       ; $7c48: $ff
    rst $38                                       ; $7c49: $ff
    rst $38                                       ; $7c4a: $ff
    rst $38                                       ; $7c4b: $ff
    nop                                           ; $7c4c: $00
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
    nop                                           ; $7c5d: $00
    rst $38                                       ; $7c5e: $ff
    rst $38                                       ; $7c5f: $ff
    rst $38                                       ; $7c60: $ff
    rst $38                                       ; $7c61: $ff
    rst $38                                       ; $7c62: $ff
    rst $38                                       ; $7c63: $ff
    rst $38                                       ; $7c64: $ff
    rst $38                                       ; $7c65: $ff
    ld h, c                                       ; $7c66: $61
    rra                                           ; $7c67: $1f
    rst $38                                       ; $7c68: $ff
    rst $38                                       ; $7c69: $ff
    rst $38                                       ; $7c6a: $ff
    rst $38                                       ; $7c6b: $ff
    rst $38                                       ; $7c6c: $ff
    rst $38                                       ; $7c6d: $ff

jr_05b_7c6e:
    nop                                           ; $7c6e: $00
    rst $38                                       ; $7c6f: $ff
    rst $38                                       ; $7c70: $ff
    inc a                                         ; $7c71: $3c
    ld sp, hl                                     ; $7c72: $f9
    nop                                           ; $7c73: $00
    nop                                           ; $7c74: $00
    nop                                           ; $7c75: $00
    db $fd                                        ; $7c76: $fd
    ld e, e                                       ; $7c77: $5b

Call_05b_7c78:
    rst $38                                       ; $7c78: $ff
    ldh [$5c], a                                  ; $7c79: $e0 $5c
    ld e, l                                       ; $7c7b: $5d
    ld sp, $3b4d                                  ; $7c7c: $31 $4d $3b
    ld d, l                                       ; $7c7f: $55
    rst $38                                       ; $7c80: $ff
    ld d, h                                       ; $7c81: $54
    dec sp                                        ; $7c82: $3b
    ld c, l                                       ; $7c83: $4d
    ld sp, $5b60                                  ; $7c84: $31 $60 $5b
    dec e                                         ; $7c87: $1d
    adc c                                         ; $7c88: $89
    rst $00                                       ; $7c89: $c7
    adc c                                         ; $7c8a: $89
    adc c                                         ; $7c8b: $89
    nop                                           ; $7c8c: $00
    rst $38                                       ; $7c8d: $ff
    rst $38                                       ; $7c8e: $ff
    rst $20                                       ; $7c8f: $e7
    and $c2                                       ; $7c90: $e6 $c2
    ld [c], a                                     ; $7c92: $e2
    ld sp, $8b4d                                  ; $7c93: $31 $4d $8b
    ld [hl-], a                                   ; $7c96: $32
    ld l, b                                       ; $7c97: $68
    rst $38                                       ; $7c98: $ff
    ldh [$32], a                                  ; $7c99: $e0 $32
    cp a                                          ; $7c9b: $bf
    db $e4                                        ; $7c9c: $e4
    jp z, $e8ff                                   ; $7c9d: $ca $ff $e8

    rst $20                                       ; $7ca0: $e7
    ld h, d                                       ; $7ca1: $62
    ei                                            ; $7ca2: $fb
    ld h, d                                       ; $7ca3: $62
    ld sp, $e1c1                                  ; $7ca4: $31 $c1 $e1
    ld l, d                                       ; $7ca7: $6a
    jr nc, jr_05b_7cc9                            ; $7ca8: $30 $1f

    rra                                           ; $7caa: $1f
    jr nc, jr_05b_7c6e                            ; $7cab: $30 $c1

    jr nc, jr_05b_7c6e                            ; $7cad: $30 $bf

    db $e4                                        ; $7caf: $e4
    jp z, $e8ff                                   ; $7cb0: $ca $ff $e8

    rst $20                                       ; $7cb3: $e7
    jp nz, $82e0                                  ; $7cb4: $c2 $e0 $82

    ldh [$30], a                                  ; $7cb7: $e0 $30
    ld l, l                                       ; $7cb9: $6d
    pop hl                                        ; $7cba: $e1
    ld l, d                                       ; $7cbb: $6a
    ret nz                                        ; $7cbc: $c0

    pop hl                                        ; $7cbd: $e1
    cp a                                          ; $7cbe: $bf
    db $e4                                        ; $7cbf: $e4
    jp z, $e8ff                                   ; $7cc0: $ca $ff $e8

    rst $20                                       ; $7cc3: $e7
    ld de, $1b11                                  ; $7cc4: $11 $11 $1b
    sbc $81                                       ; $7cc7: $de $81

jr_05b_7cc9:
    ld [c], a                                     ; $7cc9: $e2
    ld l, l                                       ; $7cca: $6d
    ld l, b                                       ; $7ccb: $68
    ld l, b                                       ; $7ccc: $68
    ld l, d                                       ; $7ccd: $6a
    cp a                                          ; $7cce: $bf
    ldh [$39], a                                  ; $7ccf: $e0 $39
    ld sp, $61e7                                  ; $7cd1: $31 $e7 $61
    ld e, e                                       ; $7cd4: $5b
    ld e, e                                       ; $7cd5: $5b
    jp z, $e8ff                                   ; $7cd6: $ca $ff $e8

    rst $20                                       ; $7cd9: $e7
    ld hl, $1722                                  ; $7cda: $21 $22 $17
    cp $40                                        ; $7cdd: $fe $40
    db $e3                                        ; $7cdf: $e3
    ld l, h                                       ; $7ce0: $6c
    ld l, h                                       ; $7ce1: $6c
    ld l, l                                       ; $7ce2: $6d
    ld l, d                                       ; $7ce3: $6a
    ld l, b                                       ; $7ce4: $68
    ld l, b                                       ; $7ce5: $68
    ld d, e                                       ; $7ce6: $53
    ld a, [c]                                     ; $7ce7: $f2
    ret nz                                        ; $7ce8: $c0

    ldh [$5a], a                                  ; $7ce9: $e0 $5a
    jp z, $e8ff                                   ; $7ceb: $ca $ff $e8

    rst $20                                       ; $7cee: $e7
    inc l                                         ; $7cef: $2c
    jr nz, jr_05b_7d08                            ; $7cf0: $20 $16

    dec d                                         ; $7cf2: $15
    cp $c0                                        ; $7cf3: $fe $c0
    jp $3030                                      ; $7cf5: $c3 $30 $30


    ld l, l                                       ; $7cf8: $6d
    ld l, h                                       ; $7cf9: $6c
    ld l, h                                       ; $7cfa: $6c
    ld d, d                                       ; $7cfb: $52
    ld sp, $6193                                  ; $7cfc: $31 $93 $61
    ld e, d                                       ; $7cff: $5a
    add b                                         ; $7d00: $80
    rst $38                                       ; $7d01: $ff
    ret nz                                        ; $7d02: $c0

    ld [$7f28], a                                 ; $7d03: $ea $28 $7f
    ldh [$fd], a                                  ; $7d06: $e0 $fd

jr_05b_7d08:
    pop bc                                        ; $7d08: $c1
    ld l, c                                       ; $7d09: $69
    ld a, $00                                     ; $7d0a: $3e $00
    ldh [$6d], a                                  ; $7d0c: $e0 $6d
    add e                                         ; $7d0e: $83
    scf                                           ; $7d0f: $37
    ld sp, $c05f                                  ; $7d10: $31 $5f $c0
    rst $38                                       ; $7d13: $ff
    jp hl                                         ; $7d14: $e9


    add sp, $77                                   ; $7d15: $e8 $77
    jr z, jr_05b_7d39                             ; $7d17: $28 $20

    jr z, jr_05b_7d9a                             ; $7d19: $28 $7f

    pop hl                                        ; $7d1b: $e1
    ld sp, $7150                                  ; $7d1c: $31 $50 $71
    ret nz                                        ; $7d1f: $c0

    pop hl                                        ; $7d20: $e1
    sbc a                                         ; $7d21: $9f
    ld [hl], c                                    ; $7d22: $71
    ld a, c                                       ; $7d23: $79
    ld d, c                                       ; $7d24: $51
    ld sp, $c05e                                  ; $7d25: $31 $5e $c0
    rst $38                                       ; $7d28: $ff
    jp hl                                         ; $7d29: $e9


    add sp, $20                                   ; $7d2a: $e8 $20
    cp l                                          ; $7d2c: $bd
    jr nz, jr_05b_7dae                            ; $7d2d: $20 $7f

    db $e3                                        ; $7d2f: $e3
    ld d, c                                       ; $7d30: $51
    ld a, c                                       ; $7d31: $79
    ld [hl], c                                    ; $7d32: $71
    ld l, d                                       ; $7d33: $6a
    pop bc                                        ; $7d34: $c1
    ldh [$80], a                                  ; $7d35: $e0 $80
    pop hl                                        ; $7d37: $e1
    ld d, b                                       ; $7d38: $50

jr_05b_7d39:
    cp a                                          ; $7d39: $bf
    ret nz                                        ; $7d3a: $c0

    jp z, $c0ff                                   ; $7d3b: $ca $ff $c0

    ld [$c2fe], a                                 ; $7d3e: $ea $fe $c2
    ld d, b                                       ; $7d41: $50
    add b                                         ; $7d42: $80
    ld a, c                                       ; $7d43: $79
    adc l                                         ; $7d44: $8d
    ld [hl], c                                    ; $7d45: $71
    pop bc                                        ; $7d46: $c1
    ldh [$80], a                                  ; $7d47: $e0 $80
    ld d, c                                       ; $7d49: $51
    ret nz                                        ; $7d4a: $c0

    rst $38                                       ; $7d4b: $ff
    ret nz                                        ; $7d4c: $c0

    xor $fe                                       ; $7d4d: $ee $fe
    pop bc                                        ; $7d4f: $c1
    ld d, c                                       ; $7d50: $51
    scf                                           ; $7d51: $37
    add b                                         ; $7d52: $80
    add b                                         ; $7d53: $80
    ld a, c                                       ; $7d54: $79
    pop bc                                        ; $7d55: $c1
    ldh [$80], a                                  ; $7d56: $e0 $80
    add c                                         ; $7d58: $81
    ret nz                                        ; $7d59: $c0

    rst $38                                       ; $7d5a: $ff
    add b                                         ; $7d5b: $80
    xor $e5                                       ; $7d5c: $ee $e5
    jr nz, @-$44                                  ; $7d5e: $20 $ba

    and b                                         ; $7d60: $a0
    ld d, b                                       ; $7d61: $50
    call nz, $fde0                                ; $7d62: $c4 $e0 $fd
    pop hl                                        ; $7d65: $e1
    add h                                         ; $7d66: $84
    ld c, l                                       ; $7d67: $4d
    ld sp, $5fe1                                  ; $7d68: $31 $e1 $5f
    jp z, $c0ff                                   ; $7d6b: $ca $ff $c0

    rst $28                                       ; $7d6e: $ef
    add b                                         ; $7d6f: $80
    ldh [$be], a                                  ; $7d70: $e0 $be
    db $e3                                        ; $7d72: $e3
    add c                                         ; $7d73: $81
    ld sp, $005e                                  ; $7d74: $31 $5e $00
    jp z, $80ff                                   ; $7d77: $ca $ff $80

    rst $30                                       ; $7d7a: $f7
    ld a, a                                       ; $7d7b: $7f
    pop hl                                        ; $7d7c: $e1
    jp z, $80ff                                   ; $7d7d: $ca $ff $80

    ld hl, sp-$02                                 ; $7d80: $f8 $fe
    ret nz                                        ; $7d82: $c0

    jp z, $ffff                                   ; $7d83: $ca $ff $ff

    rst $38                                       ; $7d86: $ff
    nop                                           ; $7d87: $00
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
    nop                                           ; $7d98: $00
    rst $38                                       ; $7d99: $ff

jr_05b_7d9a:
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
    nop                                           ; $7da9: $00
    rst $38                                       ; $7daa: $ff
    rst $38                                       ; $7dab: $ff
    rst $38                                       ; $7dac: $ff
    rst $38                                       ; $7dad: $ff

jr_05b_7dae:
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
    nop                                           ; $7dba: $00
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
    nop                                           ; $7dcb: $00
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
    nop                                           ; $7ddc: $00
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
    nop                                           ; $7ded: $00
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
    nop                                           ; $7dfe: $00
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
    nop                                           ; $7e0f: $00
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
    nop                                           ; $7e20: $00
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
    nop                                           ; $7e31: $00
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
    nop                                           ; $7e42: $00
    rst $38                                       ; $7e43: $ff
    rst $38                                       ; $7e44: $ff
    rst $38                                       ; $7e45: $ff
    di                                            ; $7e46: $f3
    nop                                           ; $7e47: $00
    nop                                           ; $7e48: $00
    nop                                           ; $7e49: $00
    and l                                         ; $7e4a: $a5
    nop                                           ; $7e4b: $00
    rst $38                                       ; $7e4c: $ff
    push hl                                       ; $7e4d: $e5
    ld [hl-], a                                   ; $7e4e: $32
    or $e6                                        ; $7e4f: $f6 $e6
    rst $30                                       ; $7e51: $f7
    rst $20                                       ; $7e52: $e7
    dec [hl]                                      ; $7e53: $35
    db $ec                                        ; $7e54: $ec
    xor $37                                       ; $7e55: $ee $37
    db $ec                                        ; $7e57: $ec
    jp c, $c7f0                                   ; $7e58: $da $f0 $c7

    add sp, $33                                   ; $7e5b: $e8 $33
    ld sp, $f2e0                                  ; $7e5d: $31 $e0 $f2
    ld [hl], $30                                  ; $7e60: $36 $30
    scf                                           ; $7e62: $37
    cp a                                          ; $7e63: $bf
    ld h, $20                                     ; $7e64: $26 $20
    daa                                           ; $7e66: $27
    db $10                                        ; $7e67: $10
    ld d, $17                                     ; $7e68: $16 $17
    jp nz, Jump_000_34f6                          ; $7e6a: $c2 $f6 $34

    rst $38                                       ; $7e6d: $ff
    ld [hl], $32                                  ; $7e6e: $36 $32
    jr nc, jr_05b_7ea9                            ; $7e70: $30 $37

    ld sp, $3133                                  ; $7e72: $31 $33 $31
    inc sp                                        ; $7e75: $33
    nop                                           ; $7e76: $00
    and b                                         ; $7e77: $a0
    ei                                            ; $7e78: $fb
    rst $38                                       ; $7e79: $ff
    rst $28                                       ; $7e7a: $ef
    nop                                           ; $7e7b: $00
    nop                                           ; $7e7c: $00
    nop                                           ; $7e7d: $00
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

jr_05b_7ea9:
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

Jump_05b_7ee0:
    rst $38                                       ; $7ee0: $ff
    rst $38                                       ; $7ee1: $ff

Jump_05b_7ee2:
    rst $38                                       ; $7ee2: $ff
    rst $38                                       ; $7ee3: $ff
    rst $38                                       ; $7ee4: $ff
    rst $38                                       ; $7ee5: $ff
    rst $38                                       ; $7ee6: $ff

Jump_05b_7ee7:
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

Jump_05b_7eff:
    rst $38                                       ; $7eff: $ff

Call_05b_7f00:
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

Call_05b_7f68:
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
